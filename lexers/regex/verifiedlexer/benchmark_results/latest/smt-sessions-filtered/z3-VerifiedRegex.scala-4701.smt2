; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243736 () Bool)

(assert start!243736)

(declare-fun b!2495732 () Bool)

(declare-fun e!1583629 () Bool)

(declare-fun tp!799387 () Bool)

(declare-fun tp!799388 () Bool)

(assert (=> b!2495732 (= e!1583629 (and tp!799387 tp!799388))))

(declare-fun b!2495733 () Bool)

(declare-fun e!1583632 () Bool)

(declare-fun e!1583626 () Bool)

(assert (=> b!2495733 (= e!1583632 e!1583626)))

(declare-fun res!1055556 () Bool)

(assert (=> b!2495733 (=> res!1055556 e!1583626)))

(declare-datatypes ((C!14912 0))(
  ( (C!14913 (val!9108 Int)) )
))
(declare-datatypes ((Regex!7377 0))(
  ( (ElementMatch!7377 (c!396865 C!14912)) (Concat!12073 (regOne!15266 Regex!7377) (regTwo!15266 Regex!7377)) (EmptyExpr!7377) (Star!7377 (reg!7706 Regex!7377)) (EmptyLang!7377) (Union!7377 (regOne!15267 Regex!7377) (regTwo!15267 Regex!7377)) )
))
(declare-fun lt!894638 () Regex!7377)

(declare-fun validRegex!3003 (Regex!7377) Bool)

(assert (=> b!2495733 (= res!1055556 (not (validRegex!3003 lt!894638)))))

(declare-fun lt!894640 () Regex!7377)

(declare-datatypes ((List!29442 0))(
  ( (Nil!29342) (Cons!29342 (h!34762 C!14912) (t!211141 List!29442)) )
))
(declare-fun tl!4068 () List!29442)

(declare-datatypes ((tuple2!29372 0))(
  ( (tuple2!29373 (_1!17228 List!29442) (_2!17228 List!29442)) )
))
(declare-datatypes ((Option!5806 0))(
  ( (None!5805) (Some!5805 (v!31736 tuple2!29372)) )
))
(declare-fun isDefined!4628 (Option!5806) Bool)

(declare-fun findConcatSeparation!828 (Regex!7377 Regex!7377 List!29442 List!29442 List!29442) Option!5806)

(assert (=> b!2495733 (isDefined!4628 (findConcatSeparation!828 lt!894638 lt!894640 Nil!29342 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43023 0))(
  ( (Unit!43024) )
))
(declare-fun lt!894636 () Unit!43023)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!110 (Regex!7377 Regex!7377 List!29442) Unit!43023)

(assert (=> b!2495733 (= lt!894636 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!110 lt!894638 lt!894640 tl!4068))))

(declare-fun b!2495734 () Bool)

(declare-fun tp!799389 () Bool)

(assert (=> b!2495734 (= e!1583629 tp!799389)))

(declare-fun b!2495735 () Bool)

(declare-fun e!1583628 () Bool)

(declare-fun e!1583630 () Bool)

(assert (=> b!2495735 (= e!1583628 e!1583630)))

(declare-fun res!1055560 () Bool)

(assert (=> b!2495735 (=> (not res!1055560) (not e!1583630))))

(declare-fun lt!894641 () Regex!7377)

(declare-fun nullable!2294 (Regex!7377) Bool)

(assert (=> b!2495735 (= res!1055560 (nullable!2294 lt!894641))))

(declare-fun lt!894642 () Regex!7377)

(declare-fun derivative!72 (Regex!7377 List!29442) Regex!7377)

(assert (=> b!2495735 (= lt!894641 (derivative!72 lt!894642 tl!4068))))

(declare-fun r!27340 () Regex!7377)

(declare-fun c!14016 () C!14912)

(declare-fun derivativeStep!1946 (Regex!7377 C!14912) Regex!7377)

(assert (=> b!2495735 (= lt!894642 (derivativeStep!1946 r!27340 c!14016))))

(declare-fun b!2495736 () Bool)

(declare-fun tp_is_empty!12609 () Bool)

(assert (=> b!2495736 (= e!1583629 tp_is_empty!12609)))

(declare-fun res!1055557 () Bool)

(assert (=> start!243736 (=> (not res!1055557) (not e!1583628))))

(assert (=> start!243736 (= res!1055557 (validRegex!3003 r!27340))))

(assert (=> start!243736 e!1583628))

(assert (=> start!243736 e!1583629))

(assert (=> start!243736 tp_is_empty!12609))

(declare-fun e!1583631 () Bool)

(assert (=> start!243736 e!1583631))

(declare-fun b!2495737 () Bool)

(declare-fun e!1583627 () Bool)

(assert (=> b!2495737 (= e!1583630 e!1583627)))

(declare-fun res!1055558 () Bool)

(assert (=> b!2495737 (=> (not res!1055558) (not e!1583627))))

(assert (=> b!2495737 (= res!1055558 (= lt!894642 (Concat!12073 lt!894638 lt!894640)))))

(assert (=> b!2495737 (= lt!894640 (Star!7377 (reg!7706 r!27340)))))

(assert (=> b!2495737 (= lt!894638 (derivativeStep!1946 (reg!7706 r!27340) c!14016))))

(declare-fun b!2495738 () Bool)

(assert (=> b!2495738 (= e!1583627 (not e!1583632))))

(declare-fun res!1055554 () Bool)

(assert (=> b!2495738 (=> res!1055554 e!1583632)))

(declare-fun lt!894639 () Bool)

(assert (=> b!2495738 (= res!1055554 (not lt!894639))))

(declare-fun matchR!3386 (Regex!7377 List!29442) Bool)

(assert (=> b!2495738 (= lt!894639 (matchR!3386 lt!894641 Nil!29342))))

(assert (=> b!2495738 (= lt!894639 (matchR!3386 lt!894642 tl!4068))))

(declare-fun lt!894637 () Unit!43023)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!32 (Regex!7377 List!29442) Unit!43023)

(assert (=> b!2495738 (= lt!894637 (lemmaMatchRIsSameAsWholeDerivativeAndNil!32 lt!894642 tl!4068))))

(declare-fun b!2495739 () Bool)

(declare-fun tp!799386 () Bool)

(declare-fun tp!799385 () Bool)

(assert (=> b!2495739 (= e!1583629 (and tp!799386 tp!799385))))

(declare-fun b!2495740 () Bool)

(declare-fun res!1055553 () Bool)

(assert (=> b!2495740 (=> (not res!1055553) (not e!1583630))))

(get-info :version)

(assert (=> b!2495740 (= res!1055553 (and (not ((_ is EmptyExpr!7377) r!27340)) (not ((_ is EmptyLang!7377) r!27340)) (not ((_ is ElementMatch!7377) r!27340)) (not ((_ is Union!7377) r!27340)) ((_ is Star!7377) r!27340)))))

(declare-fun b!2495741 () Bool)

(declare-fun res!1055555 () Bool)

(assert (=> b!2495741 (=> (not res!1055555) (not e!1583627))))

(assert (=> b!2495741 (= res!1055555 (not (nullable!2294 (derivative!72 lt!894638 tl!4068))))))

(declare-fun b!2495742 () Bool)

(declare-fun ++!7161 (List!29442 List!29442) List!29442)

(assert (=> b!2495742 (= e!1583626 (= (++!7161 Nil!29342 tl!4068) tl!4068))))

(declare-fun b!2495743 () Bool)

(declare-fun res!1055559 () Bool)

(assert (=> b!2495743 (=> res!1055559 e!1583626)))

(assert (=> b!2495743 (= res!1055559 (not (validRegex!3003 lt!894640)))))

(declare-fun b!2495744 () Bool)

(declare-fun tp!799390 () Bool)

(assert (=> b!2495744 (= e!1583631 (and tp_is_empty!12609 tp!799390))))

(assert (= (and start!243736 res!1055557) b!2495735))

(assert (= (and b!2495735 res!1055560) b!2495740))

(assert (= (and b!2495740 res!1055553) b!2495737))

(assert (= (and b!2495737 res!1055558) b!2495741))

(assert (= (and b!2495741 res!1055555) b!2495738))

(assert (= (and b!2495738 (not res!1055554)) b!2495733))

(assert (= (and b!2495733 (not res!1055556)) b!2495743))

(assert (= (and b!2495743 (not res!1055559)) b!2495742))

(assert (= (and start!243736 ((_ is ElementMatch!7377) r!27340)) b!2495736))

(assert (= (and start!243736 ((_ is Concat!12073) r!27340)) b!2495739))

(assert (= (and start!243736 ((_ is Star!7377) r!27340)) b!2495734))

(assert (= (and start!243736 ((_ is Union!7377) r!27340)) b!2495732))

(assert (= (and start!243736 ((_ is Cons!29342) tl!4068)) b!2495744))

(declare-fun m!2860337 () Bool)

(assert (=> b!2495738 m!2860337))

(declare-fun m!2860339 () Bool)

(assert (=> b!2495738 m!2860339))

(declare-fun m!2860341 () Bool)

(assert (=> b!2495738 m!2860341))

(declare-fun m!2860343 () Bool)

(assert (=> b!2495743 m!2860343))

(declare-fun m!2860345 () Bool)

(assert (=> start!243736 m!2860345))

(declare-fun m!2860347 () Bool)

(assert (=> b!2495742 m!2860347))

(declare-fun m!2860349 () Bool)

(assert (=> b!2495733 m!2860349))

(declare-fun m!2860351 () Bool)

(assert (=> b!2495733 m!2860351))

(assert (=> b!2495733 m!2860351))

(declare-fun m!2860353 () Bool)

(assert (=> b!2495733 m!2860353))

(declare-fun m!2860355 () Bool)

(assert (=> b!2495733 m!2860355))

(declare-fun m!2860357 () Bool)

(assert (=> b!2495735 m!2860357))

(declare-fun m!2860359 () Bool)

(assert (=> b!2495735 m!2860359))

(declare-fun m!2860361 () Bool)

(assert (=> b!2495735 m!2860361))

(declare-fun m!2860363 () Bool)

(assert (=> b!2495741 m!2860363))

(assert (=> b!2495741 m!2860363))

(declare-fun m!2860365 () Bool)

(assert (=> b!2495741 m!2860365))

(declare-fun m!2860367 () Bool)

(assert (=> b!2495737 m!2860367))

(check-sat (not b!2495743) (not b!2495738) (not b!2495732) (not b!2495734) (not start!243736) (not b!2495744) (not b!2495739) (not b!2495733) (not b!2495741) (not b!2495742) (not b!2495735) tp_is_empty!12609 (not b!2495737))
(check-sat)
(get-model)

(declare-fun d!714834 () Bool)

(declare-fun nullableFct!574 (Regex!7377) Bool)

(assert (=> d!714834 (= (nullable!2294 lt!894641) (nullableFct!574 lt!894641))))

(declare-fun bs!468460 () Bool)

(assert (= bs!468460 d!714834))

(declare-fun m!2860369 () Bool)

(assert (=> bs!468460 m!2860369))

(assert (=> b!2495735 d!714834))

(declare-fun d!714836 () Bool)

(declare-fun lt!894645 () Regex!7377)

(assert (=> d!714836 (validRegex!3003 lt!894645)))

(declare-fun e!1583635 () Regex!7377)

(assert (=> d!714836 (= lt!894645 e!1583635)))

(declare-fun c!396868 () Bool)

(assert (=> d!714836 (= c!396868 ((_ is Cons!29342) tl!4068))))

(assert (=> d!714836 (validRegex!3003 lt!894642)))

(assert (=> d!714836 (= (derivative!72 lt!894642 tl!4068) lt!894645)))

(declare-fun b!2495749 () Bool)

(assert (=> b!2495749 (= e!1583635 (derivative!72 (derivativeStep!1946 lt!894642 (h!34762 tl!4068)) (t!211141 tl!4068)))))

(declare-fun b!2495750 () Bool)

(assert (=> b!2495750 (= e!1583635 lt!894642)))

(assert (= (and d!714836 c!396868) b!2495749))

(assert (= (and d!714836 (not c!396868)) b!2495750))

(declare-fun m!2860371 () Bool)

(assert (=> d!714836 m!2860371))

(declare-fun m!2860373 () Bool)

(assert (=> d!714836 m!2860373))

(declare-fun m!2860375 () Bool)

(assert (=> b!2495749 m!2860375))

(assert (=> b!2495749 m!2860375))

(declare-fun m!2860377 () Bool)

(assert (=> b!2495749 m!2860377))

(assert (=> b!2495735 d!714836))

(declare-fun b!2495771 () Bool)

(declare-fun e!1583647 () Regex!7377)

(declare-fun call!153794 () Regex!7377)

(assert (=> b!2495771 (= e!1583647 (Union!7377 (Concat!12073 call!153794 (regTwo!15266 r!27340)) EmptyLang!7377))))

(declare-fun b!2495772 () Bool)

(declare-fun c!396881 () Bool)

(assert (=> b!2495772 (= c!396881 (nullable!2294 (regOne!15266 r!27340)))))

(declare-fun e!1583646 () Regex!7377)

(assert (=> b!2495772 (= e!1583646 e!1583647)))

(declare-fun b!2495773 () Bool)

(declare-fun call!153795 () Regex!7377)

(assert (=> b!2495773 (= e!1583647 (Union!7377 (Concat!12073 call!153794 (regTwo!15266 r!27340)) call!153795))))

(declare-fun b!2495774 () Bool)

(declare-fun e!1583649 () Regex!7377)

(declare-fun call!153796 () Regex!7377)

(assert (=> b!2495774 (= e!1583649 (Union!7377 call!153795 call!153796))))

(declare-fun b!2495776 () Bool)

(declare-fun e!1583648 () Regex!7377)

(declare-fun e!1583650 () Regex!7377)

(assert (=> b!2495776 (= e!1583648 e!1583650)))

(declare-fun c!396883 () Bool)

(assert (=> b!2495776 (= c!396883 ((_ is ElementMatch!7377) r!27340))))

(declare-fun bm!153789 () Bool)

(declare-fun call!153797 () Regex!7377)

(assert (=> bm!153789 (= call!153794 call!153797)))

(declare-fun b!2495777 () Bool)

(assert (=> b!2495777 (= e!1583646 (Concat!12073 call!153797 r!27340))))

(declare-fun b!2495778 () Bool)

(assert (=> b!2495778 (= e!1583649 e!1583646)))

(declare-fun c!396879 () Bool)

(assert (=> b!2495778 (= c!396879 ((_ is Star!7377) r!27340))))

(declare-fun c!396882 () Bool)

(declare-fun bm!153790 () Bool)

(assert (=> bm!153790 (= call!153796 (derivativeStep!1946 (ite c!396882 (regTwo!15267 r!27340) (ite c!396879 (reg!7706 r!27340) (regOne!15266 r!27340))) c!14016))))

(declare-fun b!2495779 () Bool)

(assert (=> b!2495779 (= e!1583650 (ite (= c!14016 (c!396865 r!27340)) EmptyExpr!7377 EmptyLang!7377))))

(declare-fun bm!153791 () Bool)

(assert (=> bm!153791 (= call!153795 (derivativeStep!1946 (ite c!396882 (regOne!15267 r!27340) (regTwo!15266 r!27340)) c!14016))))

(declare-fun d!714838 () Bool)

(declare-fun lt!894648 () Regex!7377)

(assert (=> d!714838 (validRegex!3003 lt!894648)))

(assert (=> d!714838 (= lt!894648 e!1583648)))

(declare-fun c!396880 () Bool)

(assert (=> d!714838 (= c!396880 (or ((_ is EmptyExpr!7377) r!27340) ((_ is EmptyLang!7377) r!27340)))))

(assert (=> d!714838 (validRegex!3003 r!27340)))

(assert (=> d!714838 (= (derivativeStep!1946 r!27340 c!14016) lt!894648)))

(declare-fun b!2495775 () Bool)

(assert (=> b!2495775 (= c!396882 ((_ is Union!7377) r!27340))))

(assert (=> b!2495775 (= e!1583650 e!1583649)))

(declare-fun b!2495780 () Bool)

(assert (=> b!2495780 (= e!1583648 EmptyLang!7377)))

(declare-fun bm!153792 () Bool)

(assert (=> bm!153792 (= call!153797 call!153796)))

(assert (= (and d!714838 c!396880) b!2495780))

(assert (= (and d!714838 (not c!396880)) b!2495776))

(assert (= (and b!2495776 c!396883) b!2495779))

(assert (= (and b!2495776 (not c!396883)) b!2495775))

(assert (= (and b!2495775 c!396882) b!2495774))

(assert (= (and b!2495775 (not c!396882)) b!2495778))

(assert (= (and b!2495778 c!396879) b!2495777))

(assert (= (and b!2495778 (not c!396879)) b!2495772))

(assert (= (and b!2495772 c!396881) b!2495773))

(assert (= (and b!2495772 (not c!396881)) b!2495771))

(assert (= (or b!2495773 b!2495771) bm!153789))

(assert (= (or b!2495777 bm!153789) bm!153792))

(assert (= (or b!2495774 bm!153792) bm!153790))

(assert (= (or b!2495774 b!2495773) bm!153791))

(declare-fun m!2860379 () Bool)

(assert (=> b!2495772 m!2860379))

(declare-fun m!2860381 () Bool)

(assert (=> bm!153790 m!2860381))

(declare-fun m!2860383 () Bool)

(assert (=> bm!153791 m!2860383))

(declare-fun m!2860385 () Bool)

(assert (=> d!714838 m!2860385))

(assert (=> d!714838 m!2860345))

(assert (=> b!2495735 d!714838))

(declare-fun d!714842 () Bool)

(assert (=> d!714842 (= (nullable!2294 (derivative!72 lt!894638 tl!4068)) (nullableFct!574 (derivative!72 lt!894638 tl!4068)))))

(declare-fun bs!468461 () Bool)

(assert (= bs!468461 d!714842))

(assert (=> bs!468461 m!2860363))

(declare-fun m!2860387 () Bool)

(assert (=> bs!468461 m!2860387))

(assert (=> b!2495741 d!714842))

(declare-fun d!714844 () Bool)

(declare-fun lt!894649 () Regex!7377)

(assert (=> d!714844 (validRegex!3003 lt!894649)))

(declare-fun e!1583665 () Regex!7377)

(assert (=> d!714844 (= lt!894649 e!1583665)))

(declare-fun c!396888 () Bool)

(assert (=> d!714844 (= c!396888 ((_ is Cons!29342) tl!4068))))

(assert (=> d!714844 (validRegex!3003 lt!894638)))

(assert (=> d!714844 (= (derivative!72 lt!894638 tl!4068) lt!894649)))

(declare-fun b!2495799 () Bool)

(assert (=> b!2495799 (= e!1583665 (derivative!72 (derivativeStep!1946 lt!894638 (h!34762 tl!4068)) (t!211141 tl!4068)))))

(declare-fun b!2495800 () Bool)

(assert (=> b!2495800 (= e!1583665 lt!894638)))

(assert (= (and d!714844 c!396888) b!2495799))

(assert (= (and d!714844 (not c!396888)) b!2495800))

(declare-fun m!2860389 () Bool)

(assert (=> d!714844 m!2860389))

(assert (=> d!714844 m!2860349))

(declare-fun m!2860391 () Bool)

(assert (=> b!2495799 m!2860391))

(assert (=> b!2495799 m!2860391))

(declare-fun m!2860393 () Bool)

(assert (=> b!2495799 m!2860393))

(assert (=> b!2495741 d!714844))

(declare-fun b!2495810 () Bool)

(declare-fun e!1583671 () List!29442)

(assert (=> b!2495810 (= e!1583671 (Cons!29342 (h!34762 Nil!29342) (++!7161 (t!211141 Nil!29342) tl!4068)))))

(declare-fun b!2495812 () Bool)

(declare-fun e!1583670 () Bool)

(declare-fun lt!894652 () List!29442)

(assert (=> b!2495812 (= e!1583670 (or (not (= tl!4068 Nil!29342)) (= lt!894652 Nil!29342)))))

(declare-fun d!714846 () Bool)

(assert (=> d!714846 e!1583670))

(declare-fun res!1055575 () Bool)

(assert (=> d!714846 (=> (not res!1055575) (not e!1583670))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3993 (List!29442) (InoxSet C!14912))

(assert (=> d!714846 (= res!1055575 (= (content!3993 lt!894652) ((_ map or) (content!3993 Nil!29342) (content!3993 tl!4068))))))

(assert (=> d!714846 (= lt!894652 e!1583671)))

(declare-fun c!396891 () Bool)

(assert (=> d!714846 (= c!396891 ((_ is Nil!29342) Nil!29342))))

(assert (=> d!714846 (= (++!7161 Nil!29342 tl!4068) lt!894652)))

(declare-fun b!2495811 () Bool)

(declare-fun res!1055576 () Bool)

(assert (=> b!2495811 (=> (not res!1055576) (not e!1583670))))

(declare-fun size!22877 (List!29442) Int)

(assert (=> b!2495811 (= res!1055576 (= (size!22877 lt!894652) (+ (size!22877 Nil!29342) (size!22877 tl!4068))))))

(declare-fun b!2495809 () Bool)

(assert (=> b!2495809 (= e!1583671 tl!4068)))

(assert (= (and d!714846 c!396891) b!2495809))

(assert (= (and d!714846 (not c!396891)) b!2495810))

(assert (= (and d!714846 res!1055575) b!2495811))

(assert (= (and b!2495811 res!1055576) b!2495812))

(declare-fun m!2860395 () Bool)

(assert (=> b!2495810 m!2860395))

(declare-fun m!2860397 () Bool)

(assert (=> d!714846 m!2860397))

(declare-fun m!2860399 () Bool)

(assert (=> d!714846 m!2860399))

(declare-fun m!2860401 () Bool)

(assert (=> d!714846 m!2860401))

(declare-fun m!2860403 () Bool)

(assert (=> b!2495811 m!2860403))

(declare-fun m!2860405 () Bool)

(assert (=> b!2495811 m!2860405))

(declare-fun m!2860407 () Bool)

(assert (=> b!2495811 m!2860407))

(assert (=> b!2495742 d!714846))

(declare-fun bm!153811 () Bool)

(declare-fun call!153816 () Bool)

(declare-fun call!153818 () Bool)

(assert (=> bm!153811 (= call!153816 call!153818)))

(declare-fun b!2495849 () Bool)

(declare-fun e!1583700 () Bool)

(declare-fun call!153817 () Bool)

(assert (=> b!2495849 (= e!1583700 call!153817)))

(declare-fun b!2495850 () Bool)

(declare-fun e!1583701 () Bool)

(declare-fun e!1583706 () Bool)

(assert (=> b!2495850 (= e!1583701 e!1583706)))

(declare-fun res!1055600 () Bool)

(assert (=> b!2495850 (= res!1055600 (not (nullable!2294 (reg!7706 r!27340))))))

(assert (=> b!2495850 (=> (not res!1055600) (not e!1583706))))

(declare-fun d!714848 () Bool)

(declare-fun res!1055601 () Bool)

(declare-fun e!1583703 () Bool)

(assert (=> d!714848 (=> res!1055601 e!1583703)))

(assert (=> d!714848 (= res!1055601 ((_ is ElementMatch!7377) r!27340))))

(assert (=> d!714848 (= (validRegex!3003 r!27340) e!1583703)))

(declare-fun b!2495851 () Bool)

(declare-fun res!1055597 () Bool)

(declare-fun e!1583705 () Bool)

(assert (=> b!2495851 (=> (not res!1055597) (not e!1583705))))

(assert (=> b!2495851 (= res!1055597 call!153817)))

(declare-fun e!1583704 () Bool)

(assert (=> b!2495851 (= e!1583704 e!1583705)))

(declare-fun b!2495852 () Bool)

(assert (=> b!2495852 (= e!1583703 e!1583701)))

(declare-fun c!396900 () Bool)

(assert (=> b!2495852 (= c!396900 ((_ is Star!7377) r!27340))))

(declare-fun bm!153812 () Bool)

(declare-fun c!396901 () Bool)

(assert (=> bm!153812 (= call!153817 (validRegex!3003 (ite c!396901 (regOne!15267 r!27340) (regTwo!15266 r!27340))))))

(declare-fun b!2495853 () Bool)

(assert (=> b!2495853 (= e!1583705 call!153816)))

(declare-fun b!2495854 () Bool)

(assert (=> b!2495854 (= e!1583701 e!1583704)))

(assert (=> b!2495854 (= c!396901 ((_ is Union!7377) r!27340))))

(declare-fun b!2495855 () Bool)

(declare-fun res!1055598 () Bool)

(declare-fun e!1583702 () Bool)

(assert (=> b!2495855 (=> res!1055598 e!1583702)))

(assert (=> b!2495855 (= res!1055598 (not ((_ is Concat!12073) r!27340)))))

(assert (=> b!2495855 (= e!1583704 e!1583702)))

(declare-fun b!2495856 () Bool)

(assert (=> b!2495856 (= e!1583702 e!1583700)))

(declare-fun res!1055599 () Bool)

(assert (=> b!2495856 (=> (not res!1055599) (not e!1583700))))

(assert (=> b!2495856 (= res!1055599 call!153816)))

(declare-fun bm!153813 () Bool)

(assert (=> bm!153813 (= call!153818 (validRegex!3003 (ite c!396900 (reg!7706 r!27340) (ite c!396901 (regTwo!15267 r!27340) (regOne!15266 r!27340)))))))

(declare-fun b!2495857 () Bool)

(assert (=> b!2495857 (= e!1583706 call!153818)))

(assert (= (and d!714848 (not res!1055601)) b!2495852))

(assert (= (and b!2495852 c!396900) b!2495850))

(assert (= (and b!2495852 (not c!396900)) b!2495854))

(assert (= (and b!2495850 res!1055600) b!2495857))

(assert (= (and b!2495854 c!396901) b!2495851))

(assert (= (and b!2495854 (not c!396901)) b!2495855))

(assert (= (and b!2495851 res!1055597) b!2495853))

(assert (= (and b!2495855 (not res!1055598)) b!2495856))

(assert (= (and b!2495856 res!1055599) b!2495849))

(assert (= (or b!2495851 b!2495849) bm!153812))

(assert (= (or b!2495853 b!2495856) bm!153811))

(assert (= (or b!2495857 bm!153811) bm!153813))

(declare-fun m!2860421 () Bool)

(assert (=> b!2495850 m!2860421))

(declare-fun m!2860423 () Bool)

(assert (=> bm!153812 m!2860423))

(declare-fun m!2860425 () Bool)

(assert (=> bm!153813 m!2860425))

(assert (=> start!243736 d!714848))

(declare-fun b!2495858 () Bool)

(declare-fun e!1583708 () Regex!7377)

(declare-fun call!153819 () Regex!7377)

(assert (=> b!2495858 (= e!1583708 (Union!7377 (Concat!12073 call!153819 (regTwo!15266 (reg!7706 r!27340))) EmptyLang!7377))))

(declare-fun b!2495859 () Bool)

(declare-fun c!396904 () Bool)

(assert (=> b!2495859 (= c!396904 (nullable!2294 (regOne!15266 (reg!7706 r!27340))))))

(declare-fun e!1583707 () Regex!7377)

(assert (=> b!2495859 (= e!1583707 e!1583708)))

(declare-fun call!153820 () Regex!7377)

(declare-fun b!2495860 () Bool)

(assert (=> b!2495860 (= e!1583708 (Union!7377 (Concat!12073 call!153819 (regTwo!15266 (reg!7706 r!27340))) call!153820))))

(declare-fun b!2495861 () Bool)

(declare-fun e!1583710 () Regex!7377)

(declare-fun call!153821 () Regex!7377)

(assert (=> b!2495861 (= e!1583710 (Union!7377 call!153820 call!153821))))

(declare-fun b!2495863 () Bool)

(declare-fun e!1583709 () Regex!7377)

(declare-fun e!1583711 () Regex!7377)

(assert (=> b!2495863 (= e!1583709 e!1583711)))

(declare-fun c!396906 () Bool)

(assert (=> b!2495863 (= c!396906 ((_ is ElementMatch!7377) (reg!7706 r!27340)))))

(declare-fun bm!153814 () Bool)

(declare-fun call!153822 () Regex!7377)

(assert (=> bm!153814 (= call!153819 call!153822)))

(declare-fun b!2495864 () Bool)

(assert (=> b!2495864 (= e!1583707 (Concat!12073 call!153822 (reg!7706 r!27340)))))

(declare-fun b!2495865 () Bool)

(assert (=> b!2495865 (= e!1583710 e!1583707)))

(declare-fun c!396902 () Bool)

(assert (=> b!2495865 (= c!396902 ((_ is Star!7377) (reg!7706 r!27340)))))

(declare-fun c!396905 () Bool)

(declare-fun bm!153815 () Bool)

(assert (=> bm!153815 (= call!153821 (derivativeStep!1946 (ite c!396905 (regTwo!15267 (reg!7706 r!27340)) (ite c!396902 (reg!7706 (reg!7706 r!27340)) (regOne!15266 (reg!7706 r!27340)))) c!14016))))

(declare-fun b!2495866 () Bool)

(assert (=> b!2495866 (= e!1583711 (ite (= c!14016 (c!396865 (reg!7706 r!27340))) EmptyExpr!7377 EmptyLang!7377))))

(declare-fun bm!153816 () Bool)

(assert (=> bm!153816 (= call!153820 (derivativeStep!1946 (ite c!396905 (regOne!15267 (reg!7706 r!27340)) (regTwo!15266 (reg!7706 r!27340))) c!14016))))

(declare-fun d!714854 () Bool)

(declare-fun lt!894653 () Regex!7377)

(assert (=> d!714854 (validRegex!3003 lt!894653)))

(assert (=> d!714854 (= lt!894653 e!1583709)))

(declare-fun c!396903 () Bool)

(assert (=> d!714854 (= c!396903 (or ((_ is EmptyExpr!7377) (reg!7706 r!27340)) ((_ is EmptyLang!7377) (reg!7706 r!27340))))))

(assert (=> d!714854 (validRegex!3003 (reg!7706 r!27340))))

(assert (=> d!714854 (= (derivativeStep!1946 (reg!7706 r!27340) c!14016) lt!894653)))

(declare-fun b!2495862 () Bool)

(assert (=> b!2495862 (= c!396905 ((_ is Union!7377) (reg!7706 r!27340)))))

(assert (=> b!2495862 (= e!1583711 e!1583710)))

(declare-fun b!2495867 () Bool)

(assert (=> b!2495867 (= e!1583709 EmptyLang!7377)))

(declare-fun bm!153817 () Bool)

(assert (=> bm!153817 (= call!153822 call!153821)))

(assert (= (and d!714854 c!396903) b!2495867))

(assert (= (and d!714854 (not c!396903)) b!2495863))

(assert (= (and b!2495863 c!396906) b!2495866))

(assert (= (and b!2495863 (not c!396906)) b!2495862))

(assert (= (and b!2495862 c!396905) b!2495861))

(assert (= (and b!2495862 (not c!396905)) b!2495865))

(assert (= (and b!2495865 c!396902) b!2495864))

(assert (= (and b!2495865 (not c!396902)) b!2495859))

(assert (= (and b!2495859 c!396904) b!2495860))

(assert (= (and b!2495859 (not c!396904)) b!2495858))

(assert (= (or b!2495860 b!2495858) bm!153814))

(assert (= (or b!2495864 bm!153814) bm!153817))

(assert (= (or b!2495861 bm!153817) bm!153815))

(assert (= (or b!2495861 b!2495860) bm!153816))

(declare-fun m!2860427 () Bool)

(assert (=> b!2495859 m!2860427))

(declare-fun m!2860429 () Bool)

(assert (=> bm!153815 m!2860429))

(declare-fun m!2860431 () Bool)

(assert (=> bm!153816 m!2860431))

(declare-fun m!2860433 () Bool)

(assert (=> d!714854 m!2860433))

(declare-fun m!2860435 () Bool)

(assert (=> d!714854 m!2860435))

(assert (=> b!2495737 d!714854))

(declare-fun bm!153820 () Bool)

(declare-fun call!153825 () Bool)

(declare-fun isEmpty!16808 (List!29442) Bool)

(assert (=> bm!153820 (= call!153825 (isEmpty!16808 Nil!29342))))

(declare-fun b!2495902 () Bool)

(declare-fun e!1583734 () Bool)

(declare-fun e!1583732 () Bool)

(assert (=> b!2495902 (= e!1583734 e!1583732)))

(declare-fun res!1055619 () Bool)

(assert (=> b!2495902 (=> res!1055619 e!1583732)))

(assert (=> b!2495902 (= res!1055619 call!153825)))

(declare-fun b!2495903 () Bool)

(declare-fun res!1055618 () Bool)

(assert (=> b!2495903 (=> res!1055618 e!1583732)))

(declare-fun tail!3958 (List!29442) List!29442)

(assert (=> b!2495903 (= res!1055618 (not (isEmpty!16808 (tail!3958 Nil!29342))))))

(declare-fun b!2495904 () Bool)

(declare-fun e!1583731 () Bool)

(declare-fun head!5681 (List!29442) C!14912)

(assert (=> b!2495904 (= e!1583731 (= (head!5681 Nil!29342) (c!396865 lt!894641)))))

(declare-fun b!2495905 () Bool)

(declare-fun e!1583733 () Bool)

(declare-fun lt!894659 () Bool)

(assert (=> b!2495905 (= e!1583733 (not lt!894659))))

(declare-fun b!2495906 () Bool)

(declare-fun res!1055622 () Bool)

(assert (=> b!2495906 (=> (not res!1055622) (not e!1583731))))

(assert (=> b!2495906 (= res!1055622 (not call!153825))))

(declare-fun b!2495907 () Bool)

(declare-fun e!1583729 () Bool)

(assert (=> b!2495907 (= e!1583729 (matchR!3386 (derivativeStep!1946 lt!894641 (head!5681 Nil!29342)) (tail!3958 Nil!29342)))))

(declare-fun b!2495908 () Bool)

(assert (=> b!2495908 (= e!1583732 (not (= (head!5681 Nil!29342) (c!396865 lt!894641))))))

(declare-fun b!2495909 () Bool)

(assert (=> b!2495909 (= e!1583729 (nullable!2294 lt!894641))))

(declare-fun b!2495911 () Bool)

(declare-fun e!1583730 () Bool)

(assert (=> b!2495911 (= e!1583730 e!1583733)))

(declare-fun c!396916 () Bool)

(assert (=> b!2495911 (= c!396916 ((_ is EmptyLang!7377) lt!894641))))

(declare-fun b!2495912 () Bool)

(declare-fun e!1583735 () Bool)

(assert (=> b!2495912 (= e!1583735 e!1583734)))

(declare-fun res!1055624 () Bool)

(assert (=> b!2495912 (=> (not res!1055624) (not e!1583734))))

(assert (=> b!2495912 (= res!1055624 (not lt!894659))))

(declare-fun b!2495913 () Bool)

(declare-fun res!1055625 () Bool)

(assert (=> b!2495913 (=> res!1055625 e!1583735)))

(assert (=> b!2495913 (= res!1055625 e!1583731)))

(declare-fun res!1055623 () Bool)

(assert (=> b!2495913 (=> (not res!1055623) (not e!1583731))))

(assert (=> b!2495913 (= res!1055623 lt!894659)))

(declare-fun b!2495914 () Bool)

(assert (=> b!2495914 (= e!1583730 (= lt!894659 call!153825))))

(declare-fun b!2495915 () Bool)

(declare-fun res!1055621 () Bool)

(assert (=> b!2495915 (=> (not res!1055621) (not e!1583731))))

(assert (=> b!2495915 (= res!1055621 (isEmpty!16808 (tail!3958 Nil!29342)))))

(declare-fun b!2495910 () Bool)

(declare-fun res!1055620 () Bool)

(assert (=> b!2495910 (=> res!1055620 e!1583735)))

(assert (=> b!2495910 (= res!1055620 (not ((_ is ElementMatch!7377) lt!894641)))))

(assert (=> b!2495910 (= e!1583733 e!1583735)))

(declare-fun d!714856 () Bool)

(assert (=> d!714856 e!1583730))

(declare-fun c!396918 () Bool)

(assert (=> d!714856 (= c!396918 ((_ is EmptyExpr!7377) lt!894641))))

(assert (=> d!714856 (= lt!894659 e!1583729)))

(declare-fun c!396917 () Bool)

(assert (=> d!714856 (= c!396917 (isEmpty!16808 Nil!29342))))

(assert (=> d!714856 (validRegex!3003 lt!894641)))

(assert (=> d!714856 (= (matchR!3386 lt!894641 Nil!29342) lt!894659)))

(assert (= (and d!714856 c!396917) b!2495909))

(assert (= (and d!714856 (not c!396917)) b!2495907))

(assert (= (and d!714856 c!396918) b!2495914))

(assert (= (and d!714856 (not c!396918)) b!2495911))

(assert (= (and b!2495911 c!396916) b!2495905))

(assert (= (and b!2495911 (not c!396916)) b!2495910))

(assert (= (and b!2495910 (not res!1055620)) b!2495913))

(assert (= (and b!2495913 res!1055623) b!2495906))

(assert (= (and b!2495906 res!1055622) b!2495915))

(assert (= (and b!2495915 res!1055621) b!2495904))

(assert (= (and b!2495913 (not res!1055625)) b!2495912))

(assert (= (and b!2495912 res!1055624) b!2495902))

(assert (= (and b!2495902 (not res!1055619)) b!2495903))

(assert (= (and b!2495903 (not res!1055618)) b!2495908))

(assert (= (or b!2495914 b!2495902 b!2495906) bm!153820))

(declare-fun m!2860445 () Bool)

(assert (=> b!2495907 m!2860445))

(assert (=> b!2495907 m!2860445))

(declare-fun m!2860447 () Bool)

(assert (=> b!2495907 m!2860447))

(declare-fun m!2860449 () Bool)

(assert (=> b!2495907 m!2860449))

(assert (=> b!2495907 m!2860447))

(assert (=> b!2495907 m!2860449))

(declare-fun m!2860451 () Bool)

(assert (=> b!2495907 m!2860451))

(assert (=> b!2495903 m!2860449))

(assert (=> b!2495903 m!2860449))

(declare-fun m!2860453 () Bool)

(assert (=> b!2495903 m!2860453))

(assert (=> b!2495908 m!2860445))

(assert (=> b!2495909 m!2860357))

(declare-fun m!2860455 () Bool)

(assert (=> d!714856 m!2860455))

(declare-fun m!2860457 () Bool)

(assert (=> d!714856 m!2860457))

(assert (=> bm!153820 m!2860455))

(assert (=> b!2495915 m!2860449))

(assert (=> b!2495915 m!2860449))

(assert (=> b!2495915 m!2860453))

(assert (=> b!2495904 m!2860445))

(assert (=> b!2495738 d!714856))

(declare-fun bm!153821 () Bool)

(declare-fun call!153826 () Bool)

(assert (=> bm!153821 (= call!153826 (isEmpty!16808 tl!4068))))

(declare-fun b!2495916 () Bool)

(declare-fun e!1583741 () Bool)

(declare-fun e!1583739 () Bool)

(assert (=> b!2495916 (= e!1583741 e!1583739)))

(declare-fun res!1055627 () Bool)

(assert (=> b!2495916 (=> res!1055627 e!1583739)))

(assert (=> b!2495916 (= res!1055627 call!153826)))

(declare-fun b!2495917 () Bool)

(declare-fun res!1055626 () Bool)

(assert (=> b!2495917 (=> res!1055626 e!1583739)))

(assert (=> b!2495917 (= res!1055626 (not (isEmpty!16808 (tail!3958 tl!4068))))))

(declare-fun b!2495918 () Bool)

(declare-fun e!1583738 () Bool)

(assert (=> b!2495918 (= e!1583738 (= (head!5681 tl!4068) (c!396865 lt!894642)))))

(declare-fun b!2495919 () Bool)

(declare-fun e!1583740 () Bool)

(declare-fun lt!894660 () Bool)

(assert (=> b!2495919 (= e!1583740 (not lt!894660))))

(declare-fun b!2495920 () Bool)

(declare-fun res!1055630 () Bool)

(assert (=> b!2495920 (=> (not res!1055630) (not e!1583738))))

(assert (=> b!2495920 (= res!1055630 (not call!153826))))

(declare-fun b!2495921 () Bool)

(declare-fun e!1583736 () Bool)

(assert (=> b!2495921 (= e!1583736 (matchR!3386 (derivativeStep!1946 lt!894642 (head!5681 tl!4068)) (tail!3958 tl!4068)))))

(declare-fun b!2495922 () Bool)

(assert (=> b!2495922 (= e!1583739 (not (= (head!5681 tl!4068) (c!396865 lt!894642))))))

(declare-fun b!2495923 () Bool)

(assert (=> b!2495923 (= e!1583736 (nullable!2294 lt!894642))))

(declare-fun b!2495925 () Bool)

(declare-fun e!1583737 () Bool)

(assert (=> b!2495925 (= e!1583737 e!1583740)))

(declare-fun c!396919 () Bool)

(assert (=> b!2495925 (= c!396919 ((_ is EmptyLang!7377) lt!894642))))

(declare-fun b!2495926 () Bool)

(declare-fun e!1583742 () Bool)

(assert (=> b!2495926 (= e!1583742 e!1583741)))

(declare-fun res!1055632 () Bool)

(assert (=> b!2495926 (=> (not res!1055632) (not e!1583741))))

(assert (=> b!2495926 (= res!1055632 (not lt!894660))))

(declare-fun b!2495927 () Bool)

(declare-fun res!1055633 () Bool)

(assert (=> b!2495927 (=> res!1055633 e!1583742)))

(assert (=> b!2495927 (= res!1055633 e!1583738)))

(declare-fun res!1055631 () Bool)

(assert (=> b!2495927 (=> (not res!1055631) (not e!1583738))))

(assert (=> b!2495927 (= res!1055631 lt!894660)))

(declare-fun b!2495928 () Bool)

(assert (=> b!2495928 (= e!1583737 (= lt!894660 call!153826))))

(declare-fun b!2495929 () Bool)

(declare-fun res!1055629 () Bool)

(assert (=> b!2495929 (=> (not res!1055629) (not e!1583738))))

(assert (=> b!2495929 (= res!1055629 (isEmpty!16808 (tail!3958 tl!4068)))))

(declare-fun b!2495924 () Bool)

(declare-fun res!1055628 () Bool)

(assert (=> b!2495924 (=> res!1055628 e!1583742)))

(assert (=> b!2495924 (= res!1055628 (not ((_ is ElementMatch!7377) lt!894642)))))

(assert (=> b!2495924 (= e!1583740 e!1583742)))

(declare-fun d!714862 () Bool)

(assert (=> d!714862 e!1583737))

(declare-fun c!396921 () Bool)

(assert (=> d!714862 (= c!396921 ((_ is EmptyExpr!7377) lt!894642))))

(assert (=> d!714862 (= lt!894660 e!1583736)))

(declare-fun c!396920 () Bool)

(assert (=> d!714862 (= c!396920 (isEmpty!16808 tl!4068))))

(assert (=> d!714862 (validRegex!3003 lt!894642)))

(assert (=> d!714862 (= (matchR!3386 lt!894642 tl!4068) lt!894660)))

(assert (= (and d!714862 c!396920) b!2495923))

(assert (= (and d!714862 (not c!396920)) b!2495921))

(assert (= (and d!714862 c!396921) b!2495928))

(assert (= (and d!714862 (not c!396921)) b!2495925))

(assert (= (and b!2495925 c!396919) b!2495919))

(assert (= (and b!2495925 (not c!396919)) b!2495924))

(assert (= (and b!2495924 (not res!1055628)) b!2495927))

(assert (= (and b!2495927 res!1055631) b!2495920))

(assert (= (and b!2495920 res!1055630) b!2495929))

(assert (= (and b!2495929 res!1055629) b!2495918))

(assert (= (and b!2495927 (not res!1055633)) b!2495926))

(assert (= (and b!2495926 res!1055632) b!2495916))

(assert (= (and b!2495916 (not res!1055627)) b!2495917))

(assert (= (and b!2495917 (not res!1055626)) b!2495922))

(assert (= (or b!2495928 b!2495916 b!2495920) bm!153821))

(declare-fun m!2860459 () Bool)

(assert (=> b!2495921 m!2860459))

(assert (=> b!2495921 m!2860459))

(declare-fun m!2860461 () Bool)

(assert (=> b!2495921 m!2860461))

(declare-fun m!2860463 () Bool)

(assert (=> b!2495921 m!2860463))

(assert (=> b!2495921 m!2860461))

(assert (=> b!2495921 m!2860463))

(declare-fun m!2860465 () Bool)

(assert (=> b!2495921 m!2860465))

(assert (=> b!2495917 m!2860463))

(assert (=> b!2495917 m!2860463))

(declare-fun m!2860467 () Bool)

(assert (=> b!2495917 m!2860467))

(assert (=> b!2495922 m!2860459))

(declare-fun m!2860469 () Bool)

(assert (=> b!2495923 m!2860469))

(declare-fun m!2860471 () Bool)

(assert (=> d!714862 m!2860471))

(assert (=> d!714862 m!2860373))

(assert (=> bm!153821 m!2860471))

(assert (=> b!2495929 m!2860463))

(assert (=> b!2495929 m!2860463))

(assert (=> b!2495929 m!2860467))

(assert (=> b!2495918 m!2860459))

(assert (=> b!2495738 d!714862))

(declare-fun d!714864 () Bool)

(assert (=> d!714864 (= (matchR!3386 lt!894642 tl!4068) (matchR!3386 (derivative!72 lt!894642 tl!4068) Nil!29342))))

(declare-fun lt!894665 () Unit!43023)

(declare-fun choose!14742 (Regex!7377 List!29442) Unit!43023)

(assert (=> d!714864 (= lt!894665 (choose!14742 lt!894642 tl!4068))))

(assert (=> d!714864 (validRegex!3003 lt!894642)))

(assert (=> d!714864 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!32 lt!894642 tl!4068) lt!894665)))

(declare-fun bs!468463 () Bool)

(assert (= bs!468463 d!714864))

(assert (=> bs!468463 m!2860359))

(declare-fun m!2860473 () Bool)

(assert (=> bs!468463 m!2860473))

(assert (=> bs!468463 m!2860359))

(assert (=> bs!468463 m!2860339))

(assert (=> bs!468463 m!2860373))

(declare-fun m!2860475 () Bool)

(assert (=> bs!468463 m!2860475))

(assert (=> b!2495738 d!714864))

(declare-fun bm!153822 () Bool)

(declare-fun call!153827 () Bool)

(declare-fun call!153829 () Bool)

(assert (=> bm!153822 (= call!153827 call!153829)))

(declare-fun b!2495938 () Bool)

(declare-fun e!1583747 () Bool)

(declare-fun call!153828 () Bool)

(assert (=> b!2495938 (= e!1583747 call!153828)))

(declare-fun b!2495939 () Bool)

(declare-fun e!1583748 () Bool)

(declare-fun e!1583753 () Bool)

(assert (=> b!2495939 (= e!1583748 e!1583753)))

(declare-fun res!1055641 () Bool)

(assert (=> b!2495939 (= res!1055641 (not (nullable!2294 (reg!7706 lt!894640))))))

(assert (=> b!2495939 (=> (not res!1055641) (not e!1583753))))

(declare-fun d!714866 () Bool)

(declare-fun res!1055642 () Bool)

(declare-fun e!1583750 () Bool)

(assert (=> d!714866 (=> res!1055642 e!1583750)))

(assert (=> d!714866 (= res!1055642 ((_ is ElementMatch!7377) lt!894640))))

(assert (=> d!714866 (= (validRegex!3003 lt!894640) e!1583750)))

(declare-fun b!2495940 () Bool)

(declare-fun res!1055638 () Bool)

(declare-fun e!1583752 () Bool)

(assert (=> b!2495940 (=> (not res!1055638) (not e!1583752))))

(assert (=> b!2495940 (= res!1055638 call!153828)))

(declare-fun e!1583751 () Bool)

(assert (=> b!2495940 (= e!1583751 e!1583752)))

(declare-fun b!2495941 () Bool)

(assert (=> b!2495941 (= e!1583750 e!1583748)))

(declare-fun c!396924 () Bool)

(assert (=> b!2495941 (= c!396924 ((_ is Star!7377) lt!894640))))

(declare-fun bm!153823 () Bool)

(declare-fun c!396925 () Bool)

(assert (=> bm!153823 (= call!153828 (validRegex!3003 (ite c!396925 (regOne!15267 lt!894640) (regTwo!15266 lt!894640))))))

(declare-fun b!2495942 () Bool)

(assert (=> b!2495942 (= e!1583752 call!153827)))

(declare-fun b!2495943 () Bool)

(assert (=> b!2495943 (= e!1583748 e!1583751)))

(assert (=> b!2495943 (= c!396925 ((_ is Union!7377) lt!894640))))

(declare-fun b!2495944 () Bool)

(declare-fun res!1055639 () Bool)

(declare-fun e!1583749 () Bool)

(assert (=> b!2495944 (=> res!1055639 e!1583749)))

(assert (=> b!2495944 (= res!1055639 (not ((_ is Concat!12073) lt!894640)))))

(assert (=> b!2495944 (= e!1583751 e!1583749)))

(declare-fun b!2495945 () Bool)

(assert (=> b!2495945 (= e!1583749 e!1583747)))

(declare-fun res!1055640 () Bool)

(assert (=> b!2495945 (=> (not res!1055640) (not e!1583747))))

(assert (=> b!2495945 (= res!1055640 call!153827)))

(declare-fun bm!153824 () Bool)

(assert (=> bm!153824 (= call!153829 (validRegex!3003 (ite c!396924 (reg!7706 lt!894640) (ite c!396925 (regTwo!15267 lt!894640) (regOne!15266 lt!894640)))))))

(declare-fun b!2495946 () Bool)

(assert (=> b!2495946 (= e!1583753 call!153829)))

(assert (= (and d!714866 (not res!1055642)) b!2495941))

(assert (= (and b!2495941 c!396924) b!2495939))

(assert (= (and b!2495941 (not c!396924)) b!2495943))

(assert (= (and b!2495939 res!1055641) b!2495946))

(assert (= (and b!2495943 c!396925) b!2495940))

(assert (= (and b!2495943 (not c!396925)) b!2495944))

(assert (= (and b!2495940 res!1055638) b!2495942))

(assert (= (and b!2495944 (not res!1055639)) b!2495945))

(assert (= (and b!2495945 res!1055640) b!2495938))

(assert (= (or b!2495940 b!2495938) bm!153823))

(assert (= (or b!2495942 b!2495945) bm!153822))

(assert (= (or b!2495946 bm!153822) bm!153824))

(declare-fun m!2860477 () Bool)

(assert (=> b!2495939 m!2860477))

(declare-fun m!2860479 () Bool)

(assert (=> bm!153823 m!2860479))

(declare-fun m!2860481 () Bool)

(assert (=> bm!153824 m!2860481))

(assert (=> b!2495743 d!714866))

(declare-fun bm!153825 () Bool)

(declare-fun call!153830 () Bool)

(declare-fun call!153832 () Bool)

(assert (=> bm!153825 (= call!153830 call!153832)))

(declare-fun b!2495947 () Bool)

(declare-fun e!1583754 () Bool)

(declare-fun call!153831 () Bool)

(assert (=> b!2495947 (= e!1583754 call!153831)))

(declare-fun b!2495948 () Bool)

(declare-fun e!1583755 () Bool)

(declare-fun e!1583760 () Bool)

(assert (=> b!2495948 (= e!1583755 e!1583760)))

(declare-fun res!1055646 () Bool)

(assert (=> b!2495948 (= res!1055646 (not (nullable!2294 (reg!7706 lt!894638))))))

(assert (=> b!2495948 (=> (not res!1055646) (not e!1583760))))

(declare-fun d!714868 () Bool)

(declare-fun res!1055647 () Bool)

(declare-fun e!1583757 () Bool)

(assert (=> d!714868 (=> res!1055647 e!1583757)))

(assert (=> d!714868 (= res!1055647 ((_ is ElementMatch!7377) lt!894638))))

(assert (=> d!714868 (= (validRegex!3003 lt!894638) e!1583757)))

(declare-fun b!2495949 () Bool)

(declare-fun res!1055643 () Bool)

(declare-fun e!1583759 () Bool)

(assert (=> b!2495949 (=> (not res!1055643) (not e!1583759))))

(assert (=> b!2495949 (= res!1055643 call!153831)))

(declare-fun e!1583758 () Bool)

(assert (=> b!2495949 (= e!1583758 e!1583759)))

(declare-fun b!2495950 () Bool)

(assert (=> b!2495950 (= e!1583757 e!1583755)))

(declare-fun c!396926 () Bool)

(assert (=> b!2495950 (= c!396926 ((_ is Star!7377) lt!894638))))

(declare-fun bm!153826 () Bool)

(declare-fun c!396927 () Bool)

(assert (=> bm!153826 (= call!153831 (validRegex!3003 (ite c!396927 (regOne!15267 lt!894638) (regTwo!15266 lt!894638))))))

(declare-fun b!2495951 () Bool)

(assert (=> b!2495951 (= e!1583759 call!153830)))

(declare-fun b!2495952 () Bool)

(assert (=> b!2495952 (= e!1583755 e!1583758)))

(assert (=> b!2495952 (= c!396927 ((_ is Union!7377) lt!894638))))

(declare-fun b!2495953 () Bool)

(declare-fun res!1055644 () Bool)

(declare-fun e!1583756 () Bool)

(assert (=> b!2495953 (=> res!1055644 e!1583756)))

(assert (=> b!2495953 (= res!1055644 (not ((_ is Concat!12073) lt!894638)))))

(assert (=> b!2495953 (= e!1583758 e!1583756)))

(declare-fun b!2495954 () Bool)

(assert (=> b!2495954 (= e!1583756 e!1583754)))

(declare-fun res!1055645 () Bool)

(assert (=> b!2495954 (=> (not res!1055645) (not e!1583754))))

(assert (=> b!2495954 (= res!1055645 call!153830)))

(declare-fun bm!153827 () Bool)

(assert (=> bm!153827 (= call!153832 (validRegex!3003 (ite c!396926 (reg!7706 lt!894638) (ite c!396927 (regTwo!15267 lt!894638) (regOne!15266 lt!894638)))))))

(declare-fun b!2495955 () Bool)

(assert (=> b!2495955 (= e!1583760 call!153832)))

(assert (= (and d!714868 (not res!1055647)) b!2495950))

(assert (= (and b!2495950 c!396926) b!2495948))

(assert (= (and b!2495950 (not c!396926)) b!2495952))

(assert (= (and b!2495948 res!1055646) b!2495955))

(assert (= (and b!2495952 c!396927) b!2495949))

(assert (= (and b!2495952 (not c!396927)) b!2495953))

(assert (= (and b!2495949 res!1055643) b!2495951))

(assert (= (and b!2495953 (not res!1055644)) b!2495954))

(assert (= (and b!2495954 res!1055645) b!2495947))

(assert (= (or b!2495949 b!2495947) bm!153826))

(assert (= (or b!2495951 b!2495954) bm!153825))

(assert (= (or b!2495955 bm!153825) bm!153827))

(declare-fun m!2860483 () Bool)

(assert (=> b!2495948 m!2860483))

(declare-fun m!2860485 () Bool)

(assert (=> bm!153826 m!2860485))

(declare-fun m!2860487 () Bool)

(assert (=> bm!153827 m!2860487))

(assert (=> b!2495733 d!714868))

(declare-fun d!714870 () Bool)

(declare-fun isEmpty!16809 (Option!5806) Bool)

(assert (=> d!714870 (= (isDefined!4628 (findConcatSeparation!828 lt!894638 lt!894640 Nil!29342 tl!4068 tl!4068)) (not (isEmpty!16809 (findConcatSeparation!828 lt!894638 lt!894640 Nil!29342 tl!4068 tl!4068))))))

(declare-fun bs!468464 () Bool)

(assert (= bs!468464 d!714870))

(assert (=> bs!468464 m!2860351))

(declare-fun m!2860489 () Bool)

(assert (=> bs!468464 m!2860489))

(assert (=> b!2495733 d!714870))

(declare-fun b!2496006 () Bool)

(declare-fun e!1583788 () Bool)

(declare-fun lt!894676 () Option!5806)

(declare-fun get!9079 (Option!5806) tuple2!29372)

(assert (=> b!2496006 (= e!1583788 (= (++!7161 (_1!17228 (get!9079 lt!894676)) (_2!17228 (get!9079 lt!894676))) tl!4068))))

(declare-fun b!2496007 () Bool)

(declare-fun e!1583789 () Option!5806)

(assert (=> b!2496007 (= e!1583789 (Some!5805 (tuple2!29373 Nil!29342 tl!4068)))))

(declare-fun d!714872 () Bool)

(declare-fun e!1583790 () Bool)

(assert (=> d!714872 e!1583790))

(declare-fun res!1055678 () Bool)

(assert (=> d!714872 (=> res!1055678 e!1583790)))

(assert (=> d!714872 (= res!1055678 e!1583788)))

(declare-fun res!1055676 () Bool)

(assert (=> d!714872 (=> (not res!1055676) (not e!1583788))))

(assert (=> d!714872 (= res!1055676 (isDefined!4628 lt!894676))))

(assert (=> d!714872 (= lt!894676 e!1583789)))

(declare-fun c!396940 () Bool)

(declare-fun e!1583787 () Bool)

(assert (=> d!714872 (= c!396940 e!1583787)))

(declare-fun res!1055679 () Bool)

(assert (=> d!714872 (=> (not res!1055679) (not e!1583787))))

(assert (=> d!714872 (= res!1055679 (matchR!3386 lt!894638 Nil!29342))))

(assert (=> d!714872 (validRegex!3003 lt!894638)))

(assert (=> d!714872 (= (findConcatSeparation!828 lt!894638 lt!894640 Nil!29342 tl!4068 tl!4068) lt!894676)))

(declare-fun b!2496008 () Bool)

(declare-fun e!1583791 () Option!5806)

(assert (=> b!2496008 (= e!1583791 None!5805)))

(declare-fun b!2496009 () Bool)

(declare-fun lt!894677 () Unit!43023)

(declare-fun lt!894675 () Unit!43023)

(assert (=> b!2496009 (= lt!894677 lt!894675)))

(assert (=> b!2496009 (= (++!7161 (++!7161 Nil!29342 (Cons!29342 (h!34762 tl!4068) Nil!29342)) (t!211141 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!718 (List!29442 C!14912 List!29442 List!29442) Unit!43023)

(assert (=> b!2496009 (= lt!894675 (lemmaMoveElementToOtherListKeepsConcatEq!718 Nil!29342 (h!34762 tl!4068) (t!211141 tl!4068) tl!4068))))

(assert (=> b!2496009 (= e!1583791 (findConcatSeparation!828 lt!894638 lt!894640 (++!7161 Nil!29342 (Cons!29342 (h!34762 tl!4068) Nil!29342)) (t!211141 tl!4068) tl!4068))))

(declare-fun b!2496010 () Bool)

(declare-fun res!1055680 () Bool)

(assert (=> b!2496010 (=> (not res!1055680) (not e!1583788))))

(assert (=> b!2496010 (= res!1055680 (matchR!3386 lt!894638 (_1!17228 (get!9079 lt!894676))))))

(declare-fun b!2496011 () Bool)

(assert (=> b!2496011 (= e!1583787 (matchR!3386 lt!894640 tl!4068))))

(declare-fun b!2496012 () Bool)

(assert (=> b!2496012 (= e!1583790 (not (isDefined!4628 lt!894676)))))

(declare-fun b!2496013 () Bool)

(declare-fun res!1055677 () Bool)

(assert (=> b!2496013 (=> (not res!1055677) (not e!1583788))))

(assert (=> b!2496013 (= res!1055677 (matchR!3386 lt!894640 (_2!17228 (get!9079 lt!894676))))))

(declare-fun b!2496014 () Bool)

(assert (=> b!2496014 (= e!1583789 e!1583791)))

(declare-fun c!396939 () Bool)

(assert (=> b!2496014 (= c!396939 ((_ is Nil!29342) tl!4068))))

(assert (= (and d!714872 res!1055679) b!2496011))

(assert (= (and d!714872 c!396940) b!2496007))

(assert (= (and d!714872 (not c!396940)) b!2496014))

(assert (= (and b!2496014 c!396939) b!2496008))

(assert (= (and b!2496014 (not c!396939)) b!2496009))

(assert (= (and d!714872 res!1055676) b!2496010))

(assert (= (and b!2496010 res!1055680) b!2496013))

(assert (= (and b!2496013 res!1055677) b!2496006))

(assert (= (and d!714872 (not res!1055678)) b!2496012))

(declare-fun m!2860505 () Bool)

(assert (=> b!2496013 m!2860505))

(declare-fun m!2860507 () Bool)

(assert (=> b!2496013 m!2860507))

(assert (=> b!2496010 m!2860505))

(declare-fun m!2860509 () Bool)

(assert (=> b!2496010 m!2860509))

(assert (=> b!2496006 m!2860505))

(declare-fun m!2860511 () Bool)

(assert (=> b!2496006 m!2860511))

(declare-fun m!2860513 () Bool)

(assert (=> b!2496011 m!2860513))

(declare-fun m!2860515 () Bool)

(assert (=> d!714872 m!2860515))

(declare-fun m!2860517 () Bool)

(assert (=> d!714872 m!2860517))

(assert (=> d!714872 m!2860349))

(assert (=> b!2496012 m!2860515))

(declare-fun m!2860519 () Bool)

(assert (=> b!2496009 m!2860519))

(assert (=> b!2496009 m!2860519))

(declare-fun m!2860521 () Bool)

(assert (=> b!2496009 m!2860521))

(declare-fun m!2860523 () Bool)

(assert (=> b!2496009 m!2860523))

(assert (=> b!2496009 m!2860519))

(declare-fun m!2860525 () Bool)

(assert (=> b!2496009 m!2860525))

(assert (=> b!2495733 d!714872))

(declare-fun d!714876 () Bool)

(assert (=> d!714876 (isDefined!4628 (findConcatSeparation!828 lt!894638 lt!894640 Nil!29342 tl!4068 tl!4068))))

(declare-fun lt!894680 () Unit!43023)

(declare-fun choose!14743 (Regex!7377 Regex!7377 List!29442) Unit!43023)

(assert (=> d!714876 (= lt!894680 (choose!14743 lt!894638 lt!894640 tl!4068))))

(assert (=> d!714876 (validRegex!3003 lt!894638)))

(assert (=> d!714876 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!110 lt!894638 lt!894640 tl!4068) lt!894680)))

(declare-fun bs!468465 () Bool)

(assert (= bs!468465 d!714876))

(assert (=> bs!468465 m!2860351))

(assert (=> bs!468465 m!2860351))

(assert (=> bs!468465 m!2860353))

(declare-fun m!2860527 () Bool)

(assert (=> bs!468465 m!2860527))

(assert (=> bs!468465 m!2860349))

(assert (=> b!2495733 d!714876))

(declare-fun e!1583794 () Bool)

(assert (=> b!2495734 (= tp!799389 e!1583794)))

(declare-fun b!2496025 () Bool)

(assert (=> b!2496025 (= e!1583794 tp_is_empty!12609)))

(declare-fun b!2496027 () Bool)

(declare-fun tp!799402 () Bool)

(assert (=> b!2496027 (= e!1583794 tp!799402)))

(declare-fun b!2496028 () Bool)

(declare-fun tp!799405 () Bool)

(declare-fun tp!799404 () Bool)

(assert (=> b!2496028 (= e!1583794 (and tp!799405 tp!799404))))

(declare-fun b!2496026 () Bool)

(declare-fun tp!799403 () Bool)

(declare-fun tp!799401 () Bool)

(assert (=> b!2496026 (= e!1583794 (and tp!799403 tp!799401))))

(assert (= (and b!2495734 ((_ is ElementMatch!7377) (reg!7706 r!27340))) b!2496025))

(assert (= (and b!2495734 ((_ is Concat!12073) (reg!7706 r!27340))) b!2496026))

(assert (= (and b!2495734 ((_ is Star!7377) (reg!7706 r!27340))) b!2496027))

(assert (= (and b!2495734 ((_ is Union!7377) (reg!7706 r!27340))) b!2496028))

(declare-fun e!1583795 () Bool)

(assert (=> b!2495739 (= tp!799386 e!1583795)))

(declare-fun b!2496029 () Bool)

(assert (=> b!2496029 (= e!1583795 tp_is_empty!12609)))

(declare-fun b!2496031 () Bool)

(declare-fun tp!799407 () Bool)

(assert (=> b!2496031 (= e!1583795 tp!799407)))

(declare-fun b!2496032 () Bool)

(declare-fun tp!799410 () Bool)

(declare-fun tp!799409 () Bool)

(assert (=> b!2496032 (= e!1583795 (and tp!799410 tp!799409))))

(declare-fun b!2496030 () Bool)

(declare-fun tp!799408 () Bool)

(declare-fun tp!799406 () Bool)

(assert (=> b!2496030 (= e!1583795 (and tp!799408 tp!799406))))

(assert (= (and b!2495739 ((_ is ElementMatch!7377) (regOne!15266 r!27340))) b!2496029))

(assert (= (and b!2495739 ((_ is Concat!12073) (regOne!15266 r!27340))) b!2496030))

(assert (= (and b!2495739 ((_ is Star!7377) (regOne!15266 r!27340))) b!2496031))

(assert (= (and b!2495739 ((_ is Union!7377) (regOne!15266 r!27340))) b!2496032))

(declare-fun e!1583796 () Bool)

(assert (=> b!2495739 (= tp!799385 e!1583796)))

(declare-fun b!2496033 () Bool)

(assert (=> b!2496033 (= e!1583796 tp_is_empty!12609)))

(declare-fun b!2496035 () Bool)

(declare-fun tp!799412 () Bool)

(assert (=> b!2496035 (= e!1583796 tp!799412)))

(declare-fun b!2496036 () Bool)

(declare-fun tp!799415 () Bool)

(declare-fun tp!799414 () Bool)

(assert (=> b!2496036 (= e!1583796 (and tp!799415 tp!799414))))

(declare-fun b!2496034 () Bool)

(declare-fun tp!799413 () Bool)

(declare-fun tp!799411 () Bool)

(assert (=> b!2496034 (= e!1583796 (and tp!799413 tp!799411))))

(assert (= (and b!2495739 ((_ is ElementMatch!7377) (regTwo!15266 r!27340))) b!2496033))

(assert (= (and b!2495739 ((_ is Concat!12073) (regTwo!15266 r!27340))) b!2496034))

(assert (= (and b!2495739 ((_ is Star!7377) (regTwo!15266 r!27340))) b!2496035))

(assert (= (and b!2495739 ((_ is Union!7377) (regTwo!15266 r!27340))) b!2496036))

(declare-fun e!1583797 () Bool)

(assert (=> b!2495732 (= tp!799387 e!1583797)))

(declare-fun b!2496037 () Bool)

(assert (=> b!2496037 (= e!1583797 tp_is_empty!12609)))

(declare-fun b!2496039 () Bool)

(declare-fun tp!799417 () Bool)

(assert (=> b!2496039 (= e!1583797 tp!799417)))

(declare-fun b!2496040 () Bool)

(declare-fun tp!799420 () Bool)

(declare-fun tp!799419 () Bool)

(assert (=> b!2496040 (= e!1583797 (and tp!799420 tp!799419))))

(declare-fun b!2496038 () Bool)

(declare-fun tp!799418 () Bool)

(declare-fun tp!799416 () Bool)

(assert (=> b!2496038 (= e!1583797 (and tp!799418 tp!799416))))

(assert (= (and b!2495732 ((_ is ElementMatch!7377) (regOne!15267 r!27340))) b!2496037))

(assert (= (and b!2495732 ((_ is Concat!12073) (regOne!15267 r!27340))) b!2496038))

(assert (= (and b!2495732 ((_ is Star!7377) (regOne!15267 r!27340))) b!2496039))

(assert (= (and b!2495732 ((_ is Union!7377) (regOne!15267 r!27340))) b!2496040))

(declare-fun e!1583798 () Bool)

(assert (=> b!2495732 (= tp!799388 e!1583798)))

(declare-fun b!2496041 () Bool)

(assert (=> b!2496041 (= e!1583798 tp_is_empty!12609)))

(declare-fun b!2496043 () Bool)

(declare-fun tp!799422 () Bool)

(assert (=> b!2496043 (= e!1583798 tp!799422)))

(declare-fun b!2496044 () Bool)

(declare-fun tp!799425 () Bool)

(declare-fun tp!799424 () Bool)

(assert (=> b!2496044 (= e!1583798 (and tp!799425 tp!799424))))

(declare-fun b!2496042 () Bool)

(declare-fun tp!799423 () Bool)

(declare-fun tp!799421 () Bool)

(assert (=> b!2496042 (= e!1583798 (and tp!799423 tp!799421))))

(assert (= (and b!2495732 ((_ is ElementMatch!7377) (regTwo!15267 r!27340))) b!2496041))

(assert (= (and b!2495732 ((_ is Concat!12073) (regTwo!15267 r!27340))) b!2496042))

(assert (= (and b!2495732 ((_ is Star!7377) (regTwo!15267 r!27340))) b!2496043))

(assert (= (and b!2495732 ((_ is Union!7377) (regTwo!15267 r!27340))) b!2496044))

(declare-fun b!2496049 () Bool)

(declare-fun e!1583801 () Bool)

(declare-fun tp!799428 () Bool)

(assert (=> b!2496049 (= e!1583801 (and tp_is_empty!12609 tp!799428))))

(assert (=> b!2495744 (= tp!799390 e!1583801)))

(assert (= (and b!2495744 ((_ is Cons!29342) (t!211141 tl!4068))) b!2496049))

(check-sat (not b!2495921) (not b!2495772) (not d!714862) (not b!2496035) (not b!2496044) (not bm!153815) (not b!2496026) (not b!2496039) (not b!2495850) (not b!2496040) (not b!2495810) (not d!714876) (not bm!153827) (not bm!153813) (not d!714838) (not b!2495749) (not bm!153816) (not b!2495859) (not b!2495918) (not b!2496034) (not bm!153821) (not d!714834) (not bm!153823) (not b!2496031) (not b!2496036) (not d!714836) (not d!714872) (not b!2495929) (not b!2496038) (not b!2495948) (not b!2496011) (not b!2495904) (not b!2496027) (not d!714870) (not b!2495903) (not d!714842) (not bm!153790) (not d!714854) (not b!2496032) (not d!714844) (not b!2495923) (not b!2495799) (not bm!153791) (not b!2495811) (not b!2496043) (not b!2495907) tp_is_empty!12609 (not bm!153824) (not b!2496006) (not b!2495909) (not bm!153812) (not b!2495917) (not d!714864) (not b!2496049) (not d!714856) (not b!2496030) (not b!2496012) (not b!2496028) (not bm!153826) (not b!2495922) (not d!714846) (not b!2496013) (not b!2495915) (not b!2496042) (not b!2495939) (not b!2496009) (not bm!153820) (not b!2495908) (not b!2496010))
(check-sat)
