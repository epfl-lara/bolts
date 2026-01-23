; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!734328 () Bool)

(assert start!734328)

(declare-fun b!7624442 () Bool)

(assert (=> b!7624442 true))

(assert (=> b!7624442 true))

(declare-fun bs!1943604 () Bool)

(declare-fun b!7624438 () Bool)

(assert (= bs!1943604 (and b!7624438 b!7624442)))

(declare-fun lambda!468633 () Int)

(declare-fun lambda!468632 () Int)

(assert (=> bs!1943604 (not (= lambda!468633 lambda!468632))))

(assert (=> b!7624438 true))

(assert (=> b!7624438 true))

(declare-fun res!3052896 () Bool)

(declare-fun e!4533362 () Bool)

(assert (=> b!7624438 (=> res!3052896 e!4533362)))

(declare-fun Exists!4489 (Int) Bool)

(assert (=> b!7624438 (= res!3052896 (not (Exists!4489 lambda!468633)))))

(declare-fun b!7624439 () Bool)

(declare-fun e!4533364 () Bool)

(declare-fun tp!2226050 () Bool)

(declare-fun tp!2226045 () Bool)

(assert (=> b!7624439 (= e!4533364 (and tp!2226050 tp!2226045))))

(declare-fun b!7624440 () Bool)

(declare-datatypes ((Unit!167572 0))(
  ( (Unit!167573) )
))
(declare-fun e!4533365 () Unit!167572)

(declare-fun Unit!167574 () Unit!167572)

(assert (=> b!7624440 (= e!4533365 Unit!167574)))

(declare-fun b!7624441 () Bool)

(declare-fun e!4533363 () Bool)

(assert (=> b!7624441 (= e!4533363 e!4533362)))

(declare-fun res!3052890 () Bool)

(assert (=> b!7624441 (=> res!3052890 e!4533362)))

(assert (=> b!7624441 (= res!3052890 (Exists!4489 lambda!468632))))

(declare-fun lt!2657538 () Unit!167572)

(assert (=> b!7624441 (= lt!2657538 e!4533365)))

(declare-fun c!1405017 () Bool)

(declare-datatypes ((C!40992 0))(
  ( (C!40993 (val!30936 Int)) )
))
(declare-datatypes ((Regex!20333 0))(
  ( (ElementMatch!20333 (c!1405018 C!40992)) (Concat!29178 (regOne!41178 Regex!20333) (regTwo!41178 Regex!20333)) (EmptyExpr!20333) (Star!20333 (reg!20662 Regex!20333)) (EmptyLang!20333) (Union!20333 (regOne!41179 Regex!20333) (regTwo!41179 Regex!20333)) )
))
(declare-fun r!14126 () Regex!20333)

(declare-datatypes ((List!73186 0))(
  ( (Nil!73062) (Cons!73062 (h!79510 C!40992) (t!387921 List!73186)) )
))
(declare-fun s!9605 () List!73186)

(declare-fun matchR!9840 (Regex!20333 List!73186) Bool)

(assert (=> b!7624441 (= c!1405017 (matchR!9840 r!14126 s!9605))))

(declare-fun e!4533360 () Bool)

(assert (=> b!7624442 (= e!4533360 (not e!4533363))))

(declare-fun res!3052892 () Bool)

(assert (=> b!7624442 (=> res!3052892 e!4533363)))

(declare-fun lt!2657541 () Bool)

(assert (=> b!7624442 (= res!3052892 lt!2657541)))

(assert (=> b!7624442 (= lt!2657541 (Exists!4489 lambda!468632))))

(declare-datatypes ((tuple2!69228 0))(
  ( (tuple2!69229 (_1!37917 List!73186) (_2!37917 List!73186)) )
))
(declare-datatypes ((Option!17408 0))(
  ( (None!17407) (Some!17407 (v!54542 tuple2!69228)) )
))
(declare-fun isDefined!14024 (Option!17408) Bool)

(declare-fun findConcatSeparation!3438 (Regex!20333 Regex!20333 List!73186 List!73186 List!73186) Option!17408)

(assert (=> b!7624442 (= lt!2657541 (isDefined!14024 (findConcatSeparation!3438 (reg!20662 r!14126) r!14126 Nil!73062 s!9605 s!9605)))))

(declare-fun lt!2657542 () Unit!167572)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3196 (Regex!20333 Regex!20333 List!73186) Unit!167572)

(assert (=> b!7624442 (= lt!2657542 (lemmaFindConcatSeparationEquivalentToExists!3196 (reg!20662 r!14126) r!14126 s!9605))))

(declare-fun b!7624443 () Bool)

(declare-fun res!3052895 () Bool)

(assert (=> b!7624443 (=> res!3052895 e!4533362)))

(declare-fun cut!11 () tuple2!69228)

(declare-fun matchRSpec!4520 (Regex!20333 List!73186) Bool)

(assert (=> b!7624443 (= res!3052895 (not (matchRSpec!4520 (reg!20662 r!14126) (_1!37917 cut!11))))))

(declare-fun b!7624444 () Bool)

(declare-fun tp!2226044 () Bool)

(declare-fun tp!2226049 () Bool)

(assert (=> b!7624444 (= e!4533364 (and tp!2226044 tp!2226049))))

(declare-fun b!7624445 () Bool)

(declare-fun tp!2226047 () Bool)

(assert (=> b!7624445 (= e!4533364 tp!2226047)))

(declare-fun res!3052893 () Bool)

(assert (=> start!734328 (=> (not res!3052893) (not e!4533360))))

(declare-fun validRegex!10753 (Regex!20333) Bool)

(assert (=> start!734328 (= res!3052893 (validRegex!10753 r!14126))))

(assert (=> start!734328 e!4533360))

(assert (=> start!734328 e!4533364))

(declare-fun e!4533361 () Bool)

(assert (=> start!734328 e!4533361))

(declare-fun e!4533367 () Bool)

(declare-fun e!4533366 () Bool)

(assert (=> start!734328 (and e!4533367 e!4533366)))

(declare-fun b!7624446 () Bool)

(declare-fun tp_is_empty!51021 () Bool)

(assert (=> b!7624446 (= e!4533364 tp_is_empty!51021)))

(declare-fun b!7624447 () Bool)

(declare-fun tp!2226046 () Bool)

(assert (=> b!7624447 (= e!4533367 (and tp_is_empty!51021 tp!2226046))))

(declare-fun b!7624448 () Bool)

(declare-fun tp!2226048 () Bool)

(assert (=> b!7624448 (= e!4533366 (and tp_is_empty!51021 tp!2226048))))

(declare-fun b!7624449 () Bool)

(assert (=> b!7624449 (= e!4533362 (validRegex!10753 r!14126))))

(declare-fun b!7624450 () Bool)

(declare-fun Unit!167575 () Unit!167572)

(assert (=> b!7624450 (= e!4533365 Unit!167575)))

(declare-fun lt!2657540 () Unit!167572)

(declare-fun lemmaStarAppConcat!14 (Regex!20333 List!73186) Unit!167572)

(assert (=> b!7624450 (= lt!2657540 (lemmaStarAppConcat!14 (reg!20662 r!14126) s!9605))))

(assert (=> b!7624450 (matchR!9840 (Concat!29178 (reg!20662 r!14126) r!14126) s!9605)))

(declare-fun lt!2657539 () Unit!167572)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!246 (Regex!20333 Regex!20333 List!73186) Unit!167572)

(assert (=> b!7624450 (= lt!2657539 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!246 (reg!20662 r!14126) r!14126 s!9605))))

(assert (=> b!7624450 false))

(declare-fun b!7624451 () Bool)

(declare-fun tp!2226051 () Bool)

(assert (=> b!7624451 (= e!4533361 (and tp_is_empty!51021 tp!2226051))))

(declare-fun b!7624452 () Bool)

(declare-fun res!3052894 () Bool)

(assert (=> b!7624452 (=> (not res!3052894) (not e!4533360))))

(get-info :version)

(assert (=> b!7624452 (= res!3052894 (and (not ((_ is EmptyExpr!20333) r!14126)) (not ((_ is EmptyLang!20333) r!14126)) (not ((_ is ElementMatch!20333) r!14126)) (not ((_ is Union!20333) r!14126)) ((_ is Star!20333) r!14126)))))

(declare-fun b!7624453 () Bool)

(declare-fun res!3052891 () Bool)

(assert (=> b!7624453 (=> res!3052891 e!4533362)))

(declare-fun ++!17639 (List!73186 List!73186) List!73186)

(assert (=> b!7624453 (= res!3052891 (not (= (++!17639 (_1!37917 cut!11) (_2!37917 cut!11)) s!9605)))))

(declare-fun b!7624454 () Bool)

(declare-fun res!3052889 () Bool)

(assert (=> b!7624454 (=> (not res!3052889) (not e!4533360))))

(declare-fun isEmpty!41690 (List!73186) Bool)

(assert (=> b!7624454 (= res!3052889 (not (isEmpty!41690 s!9605)))))

(declare-fun b!7624455 () Bool)

(declare-fun res!3052888 () Bool)

(assert (=> b!7624455 (=> res!3052888 e!4533362)))

(assert (=> b!7624455 (= res!3052888 (isEmpty!41690 (_1!37917 cut!11)))))

(assert (= (and start!734328 res!3052893) b!7624452))

(assert (= (and b!7624452 res!3052894) b!7624454))

(assert (= (and b!7624454 res!3052889) b!7624442))

(assert (= (and b!7624442 (not res!3052892)) b!7624441))

(assert (= (and b!7624441 c!1405017) b!7624450))

(assert (= (and b!7624441 (not c!1405017)) b!7624440))

(assert (= (and b!7624441 (not res!3052890)) b!7624438))

(assert (= (and b!7624438 (not res!3052896)) b!7624453))

(assert (= (and b!7624453 (not res!3052891)) b!7624455))

(assert (= (and b!7624455 (not res!3052888)) b!7624443))

(assert (= (and b!7624443 (not res!3052895)) b!7624449))

(assert (= (and start!734328 ((_ is ElementMatch!20333) r!14126)) b!7624446))

(assert (= (and start!734328 ((_ is Concat!29178) r!14126)) b!7624444))

(assert (= (and start!734328 ((_ is Star!20333) r!14126)) b!7624445))

(assert (= (and start!734328 ((_ is Union!20333) r!14126)) b!7624439))

(assert (= (and start!734328 ((_ is Cons!73062) s!9605)) b!7624451))

(assert (= (and start!734328 ((_ is Cons!73062) (_1!37917 cut!11))) b!7624447))

(assert (= (and start!734328 ((_ is Cons!73062) (_2!37917 cut!11))) b!7624448))

(declare-fun m!8154686 () Bool)

(assert (=> b!7624441 m!8154686))

(declare-fun m!8154688 () Bool)

(assert (=> b!7624441 m!8154688))

(declare-fun m!8154690 () Bool)

(assert (=> b!7624455 m!8154690))

(declare-fun m!8154692 () Bool)

(assert (=> b!7624454 m!8154692))

(declare-fun m!8154694 () Bool)

(assert (=> b!7624453 m!8154694))

(declare-fun m!8154696 () Bool)

(assert (=> b!7624449 m!8154696))

(declare-fun m!8154698 () Bool)

(assert (=> b!7624438 m!8154698))

(assert (=> b!7624442 m!8154686))

(declare-fun m!8154700 () Bool)

(assert (=> b!7624442 m!8154700))

(assert (=> b!7624442 m!8154700))

(declare-fun m!8154702 () Bool)

(assert (=> b!7624442 m!8154702))

(declare-fun m!8154704 () Bool)

(assert (=> b!7624442 m!8154704))

(assert (=> start!734328 m!8154696))

(declare-fun m!8154706 () Bool)

(assert (=> b!7624450 m!8154706))

(declare-fun m!8154708 () Bool)

(assert (=> b!7624450 m!8154708))

(declare-fun m!8154710 () Bool)

(assert (=> b!7624450 m!8154710))

(declare-fun m!8154712 () Bool)

(assert (=> b!7624443 m!8154712))

(check-sat (not b!7624448) (not start!734328) (not b!7624449) (not b!7624447) (not b!7624443) tp_is_empty!51021 (not b!7624444) (not b!7624439) (not b!7624453) (not b!7624450) (not b!7624438) (not b!7624445) (not b!7624455) (not b!7624451) (not b!7624454) (not b!7624442) (not b!7624441))
(check-sat)
