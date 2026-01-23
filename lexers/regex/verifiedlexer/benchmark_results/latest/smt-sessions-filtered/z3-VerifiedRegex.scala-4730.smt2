; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244636 () Bool)

(assert start!244636)

(declare-fun b!2507448 () Bool)

(declare-fun res!1060133 () Bool)

(declare-fun e!1589611 () Bool)

(assert (=> b!2507448 (=> (not res!1060133) (not e!1589611))))

(declare-datatypes ((C!15028 0))(
  ( (C!15029 (val!9166 Int)) )
))
(declare-datatypes ((Regex!7435 0))(
  ( (ElementMatch!7435 (c!399323 C!15028)) (Concat!12131 (regOne!15382 Regex!7435) (regTwo!15382 Regex!7435)) (EmptyExpr!7435) (Star!7435 (reg!7764 Regex!7435)) (EmptyLang!7435) (Union!7435 (regOne!15383 Regex!7435) (regTwo!15383 Regex!7435)) )
))
(declare-fun r!27340 () Regex!7435)

(get-info :version)

(assert (=> b!2507448 (= res!1060133 (and (not ((_ is EmptyExpr!7435) r!27340)) (not ((_ is EmptyLang!7435) r!27340)) (not ((_ is ElementMatch!7435) r!27340)) (not ((_ is Union!7435) r!27340)) (not ((_ is Star!7435) r!27340))))))

(declare-fun b!2507449 () Bool)

(declare-fun res!1060134 () Bool)

(declare-fun e!1589609 () Bool)

(assert (=> b!2507449 (=> res!1060134 e!1589609)))

(declare-datatypes ((List!29500 0))(
  ( (Nil!29400) (Cons!29400 (h!34820 C!15028) (t!211199 List!29500)) )
))
(declare-datatypes ((tuple2!29448 0))(
  ( (tuple2!29449 (_1!17266 List!29500) (_2!17266 List!29500)) )
))
(declare-fun lt!897015 () tuple2!29448)

(declare-fun matchR!3438 (Regex!7435 List!29500) Bool)

(assert (=> b!2507449 (= res!1060134 (not (matchR!3438 (regTwo!15382 r!27340) (_2!17266 lt!897015))))))

(declare-fun b!2507450 () Bool)

(declare-fun res!1060136 () Bool)

(assert (=> b!2507450 (=> res!1060136 e!1589609)))

(declare-fun lt!897013 () Regex!7435)

(assert (=> b!2507450 (= res!1060136 (not (matchR!3438 lt!897013 (_1!17266 lt!897015))))))

(declare-fun b!2507451 () Bool)

(declare-fun res!1060131 () Bool)

(assert (=> b!2507451 (=> res!1060131 e!1589609)))

(declare-fun c!14016 () C!15028)

(assert (=> b!2507451 (= res!1060131 (not (matchR!3438 (regOne!15382 r!27340) (Cons!29400 c!14016 (_1!17266 lt!897015)))))))

(declare-fun b!2507452 () Bool)

(declare-fun e!1589610 () Bool)

(assert (=> b!2507452 (= e!1589611 (not e!1589610))))

(declare-fun res!1060138 () Bool)

(assert (=> b!2507452 (=> res!1060138 e!1589610)))

(declare-fun lt!897008 () Bool)

(assert (=> b!2507452 (= res!1060138 (not lt!897008))))

(declare-fun e!1589613 () Bool)

(assert (=> b!2507452 e!1589613))

(declare-fun res!1060135 () Bool)

(assert (=> b!2507452 (=> res!1060135 e!1589613)))

(assert (=> b!2507452 (= res!1060135 lt!897008)))

(declare-fun lt!897009 () Regex!7435)

(declare-fun tl!4068 () List!29500)

(assert (=> b!2507452 (= lt!897008 (matchR!3438 lt!897009 tl!4068))))

(declare-datatypes ((Unit!43127 0))(
  ( (Unit!43128) )
))
(declare-fun lt!897016 () Unit!43127)

(declare-fun lt!897007 () Regex!7435)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!130 (Regex!7435 Regex!7435 List!29500) Unit!43127)

(assert (=> b!2507452 (= lt!897016 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!130 lt!897009 lt!897007 tl!4068))))

(declare-fun lt!897014 () Regex!7435)

(declare-fun derivative!130 (Regex!7435 List!29500) Regex!7435)

(assert (=> b!2507452 (= (matchR!3438 lt!897014 tl!4068) (matchR!3438 (derivative!130 lt!897014 tl!4068) Nil!29400))))

(declare-fun lt!897011 () Unit!43127)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!84 (Regex!7435 List!29500) Unit!43127)

(assert (=> b!2507452 (= lt!897011 (lemmaMatchRIsSameAsWholeDerivativeAndNil!84 lt!897014 tl!4068))))

(assert (=> b!2507452 (= lt!897014 (Union!7435 lt!897009 lt!897007))))

(declare-fun derivativeStep!2004 (Regex!7435 C!15028) Regex!7435)

(assert (=> b!2507452 (= lt!897007 (derivativeStep!2004 (regTwo!15382 r!27340) c!14016))))

(assert (=> b!2507452 (= lt!897009 (Concat!12131 lt!897013 (regTwo!15382 r!27340)))))

(assert (=> b!2507452 (= lt!897013 (derivativeStep!2004 (regOne!15382 r!27340) c!14016))))

(declare-fun b!2507453 () Bool)

(declare-fun e!1589614 () Bool)

(declare-fun tp!802027 () Bool)

(declare-fun tp!802030 () Bool)

(assert (=> b!2507453 (= e!1589614 (and tp!802027 tp!802030))))

(declare-fun b!2507454 () Bool)

(declare-fun tp_is_empty!12725 () Bool)

(assert (=> b!2507454 (= e!1589614 tp_is_empty!12725)))

(declare-fun b!2507456 () Bool)

(assert (=> b!2507456 (= e!1589613 (matchR!3438 lt!897007 tl!4068))))

(declare-fun b!2507457 () Bool)

(assert (=> b!2507457 (= e!1589610 e!1589609)))

(declare-fun res!1060129 () Bool)

(assert (=> b!2507457 (=> res!1060129 e!1589609)))

(declare-fun ++!7195 (List!29500 List!29500) List!29500)

(assert (=> b!2507457 (= res!1060129 (not (= (++!7195 (_1!17266 lt!897015) (_2!17266 lt!897015)) tl!4068)))))

(declare-datatypes ((Option!5844 0))(
  ( (None!5843) (Some!5843 (v!31774 tuple2!29448)) )
))
(declare-fun lt!897012 () Option!5844)

(declare-fun get!9142 (Option!5844) tuple2!29448)

(assert (=> b!2507457 (= lt!897015 (get!9142 lt!897012))))

(declare-fun isDefined!4666 (Option!5844) Bool)

(assert (=> b!2507457 (isDefined!4666 lt!897012)))

(declare-fun findConcatSeparation!866 (Regex!7435 Regex!7435 List!29500 List!29500 List!29500) Option!5844)

(assert (=> b!2507457 (= lt!897012 (findConcatSeparation!866 lt!897013 (regTwo!15382 r!27340) Nil!29400 tl!4068 tl!4068))))

(declare-fun lt!897010 () Unit!43127)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!148 (Regex!7435 Regex!7435 List!29500) Unit!43127)

(assert (=> b!2507457 (= lt!897010 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!148 lt!897013 (regTwo!15382 r!27340) tl!4068))))

(declare-fun b!2507458 () Bool)

(declare-fun tp!802028 () Bool)

(assert (=> b!2507458 (= e!1589614 tp!802028)))

(declare-fun res!1060132 () Bool)

(assert (=> start!244636 (=> (not res!1060132) (not e!1589611))))

(declare-fun validRegex!3061 (Regex!7435) Bool)

(assert (=> start!244636 (= res!1060132 (validRegex!3061 r!27340))))

(assert (=> start!244636 e!1589611))

(assert (=> start!244636 e!1589614))

(assert (=> start!244636 tp_is_empty!12725))

(declare-fun e!1589612 () Bool)

(assert (=> start!244636 e!1589612))

(declare-fun b!2507455 () Bool)

(declare-fun tp!802025 () Bool)

(assert (=> b!2507455 (= e!1589612 (and tp_is_empty!12725 tp!802025))))

(declare-fun b!2507459 () Bool)

(declare-fun res!1060137 () Bool)

(assert (=> b!2507459 (=> (not res!1060137) (not e!1589611))))

(declare-fun nullable!2352 (Regex!7435) Bool)

(assert (=> b!2507459 (= res!1060137 (nullable!2352 (regOne!15382 r!27340)))))

(declare-fun b!2507460 () Bool)

(assert (=> b!2507460 (= e!1589609 true)))

(declare-fun b!2507461 () Bool)

(declare-fun res!1060130 () Bool)

(assert (=> b!2507461 (=> (not res!1060130) (not e!1589611))))

(assert (=> b!2507461 (= res!1060130 (nullable!2352 (derivative!130 (derivativeStep!2004 r!27340 c!14016) tl!4068)))))

(declare-fun b!2507462 () Bool)

(declare-fun tp!802029 () Bool)

(declare-fun tp!802026 () Bool)

(assert (=> b!2507462 (= e!1589614 (and tp!802029 tp!802026))))

(assert (= (and start!244636 res!1060132) b!2507461))

(assert (= (and b!2507461 res!1060130) b!2507448))

(assert (= (and b!2507448 res!1060133) b!2507459))

(assert (= (and b!2507459 res!1060137) b!2507452))

(assert (= (and b!2507452 (not res!1060135)) b!2507456))

(assert (= (and b!2507452 (not res!1060138)) b!2507457))

(assert (= (and b!2507457 (not res!1060129)) b!2507450))

(assert (= (and b!2507450 (not res!1060136)) b!2507449))

(assert (= (and b!2507449 (not res!1060134)) b!2507451))

(assert (= (and b!2507451 (not res!1060131)) b!2507460))

(assert (= (and start!244636 ((_ is ElementMatch!7435) r!27340)) b!2507454))

(assert (= (and start!244636 ((_ is Concat!12131) r!27340)) b!2507453))

(assert (= (and start!244636 ((_ is Star!7435) r!27340)) b!2507458))

(assert (= (and start!244636 ((_ is Union!7435) r!27340)) b!2507462))

(assert (= (and start!244636 ((_ is Cons!29400) tl!4068)) b!2507455))

(declare-fun m!2867589 () Bool)

(assert (=> b!2507451 m!2867589))

(declare-fun m!2867591 () Bool)

(assert (=> b!2507461 m!2867591))

(assert (=> b!2507461 m!2867591))

(declare-fun m!2867593 () Bool)

(assert (=> b!2507461 m!2867593))

(assert (=> b!2507461 m!2867593))

(declare-fun m!2867595 () Bool)

(assert (=> b!2507461 m!2867595))

(declare-fun m!2867597 () Bool)

(assert (=> b!2507457 m!2867597))

(declare-fun m!2867599 () Bool)

(assert (=> b!2507457 m!2867599))

(declare-fun m!2867601 () Bool)

(assert (=> b!2507457 m!2867601))

(declare-fun m!2867603 () Bool)

(assert (=> b!2507457 m!2867603))

(declare-fun m!2867605 () Bool)

(assert (=> b!2507457 m!2867605))

(declare-fun m!2867607 () Bool)

(assert (=> b!2507450 m!2867607))

(declare-fun m!2867609 () Bool)

(assert (=> b!2507449 m!2867609))

(declare-fun m!2867611 () Bool)

(assert (=> start!244636 m!2867611))

(declare-fun m!2867613 () Bool)

(assert (=> b!2507456 m!2867613))

(declare-fun m!2867615 () Bool)

(assert (=> b!2507459 m!2867615))

(declare-fun m!2867617 () Bool)

(assert (=> b!2507452 m!2867617))

(declare-fun m!2867619 () Bool)

(assert (=> b!2507452 m!2867619))

(declare-fun m!2867621 () Bool)

(assert (=> b!2507452 m!2867621))

(declare-fun m!2867623 () Bool)

(assert (=> b!2507452 m!2867623))

(declare-fun m!2867625 () Bool)

(assert (=> b!2507452 m!2867625))

(declare-fun m!2867627 () Bool)

(assert (=> b!2507452 m!2867627))

(declare-fun m!2867629 () Bool)

(assert (=> b!2507452 m!2867629))

(assert (=> b!2507452 m!2867627))

(declare-fun m!2867631 () Bool)

(assert (=> b!2507452 m!2867631))

(check-sat (not b!2507449) (not b!2507459) (not b!2507452) (not b!2507462) (not b!2507458) (not b!2507456) (not b!2507461) tp_is_empty!12725 (not b!2507451) (not b!2507455) (not b!2507450) (not b!2507453) (not start!244636) (not b!2507457))
(check-sat)
