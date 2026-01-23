; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244640 () Bool)

(assert start!244640)

(declare-fun b!2507538 () Bool)

(declare-fun e!1589649 () Bool)

(declare-fun e!1589645 () Bool)

(assert (=> b!2507538 (= e!1589649 e!1589645)))

(declare-fun res!1060198 () Bool)

(assert (=> b!2507538 (=> res!1060198 e!1589645)))

(declare-datatypes ((C!15032 0))(
  ( (C!15033 (val!9168 Int)) )
))
(declare-datatypes ((List!29502 0))(
  ( (Nil!29402) (Cons!29402 (h!34822 C!15032) (t!211201 List!29502)) )
))
(declare-datatypes ((tuple2!29452 0))(
  ( (tuple2!29453 (_1!17268 List!29502) (_2!17268 List!29502)) )
))
(declare-fun lt!897076 () tuple2!29452)

(declare-fun tl!4068 () List!29502)

(declare-fun ++!7197 (List!29502 List!29502) List!29502)

(assert (=> b!2507538 (= res!1060198 (not (= (++!7197 (_1!17268 lt!897076) (_2!17268 lt!897076)) tl!4068)))))

(declare-datatypes ((Option!5846 0))(
  ( (None!5845) (Some!5845 (v!31776 tuple2!29452)) )
))
(declare-fun lt!897077 () Option!5846)

(declare-fun get!9145 (Option!5846) tuple2!29452)

(assert (=> b!2507538 (= lt!897076 (get!9145 lt!897077))))

(declare-fun isDefined!4668 (Option!5846) Bool)

(assert (=> b!2507538 (isDefined!4668 lt!897077)))

(declare-datatypes ((Regex!7437 0))(
  ( (ElementMatch!7437 (c!399325 C!15032)) (Concat!12133 (regOne!15386 Regex!7437) (regTwo!15386 Regex!7437)) (EmptyExpr!7437) (Star!7437 (reg!7766 Regex!7437)) (EmptyLang!7437) (Union!7437 (regOne!15387 Regex!7437) (regTwo!15387 Regex!7437)) )
))
(declare-fun r!27340 () Regex!7437)

(declare-fun lt!897080 () Regex!7437)

(declare-fun findConcatSeparation!868 (Regex!7437 Regex!7437 List!29502 List!29502 List!29502) Option!5846)

(assert (=> b!2507538 (= lt!897077 (findConcatSeparation!868 lt!897080 (regTwo!15386 r!27340) Nil!29402 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43131 0))(
  ( (Unit!43132) )
))
(declare-fun lt!897082 () Unit!43131)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!150 (Regex!7437 Regex!7437 List!29502) Unit!43131)

(assert (=> b!2507538 (= lt!897082 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!150 lt!897080 (regTwo!15386 r!27340) tl!4068))))

(declare-fun b!2507539 () Bool)

(declare-fun res!1060191 () Bool)

(assert (=> b!2507539 (=> res!1060191 e!1589645)))

(declare-fun matchR!3440 (Regex!7437 List!29502) Bool)

(assert (=> b!2507539 (= res!1060191 (not (matchR!3440 lt!897080 (_1!17268 lt!897076))))))

(declare-fun b!2507541 () Bool)

(declare-fun res!1060195 () Bool)

(assert (=> b!2507541 (=> res!1060195 e!1589645)))

(assert (=> b!2507541 (= res!1060195 (not (matchR!3440 (regTwo!15386 r!27340) (_2!17268 lt!897076))))))

(declare-fun b!2507542 () Bool)

(declare-fun e!1589650 () Bool)

(declare-fun tp!802066 () Bool)

(assert (=> b!2507542 (= e!1589650 tp!802066)))

(declare-fun b!2507543 () Bool)

(declare-fun e!1589648 () Bool)

(declare-fun tp_is_empty!12729 () Bool)

(declare-fun tp!802064 () Bool)

(assert (=> b!2507543 (= e!1589648 (and tp_is_empty!12729 tp!802064))))

(declare-fun b!2507544 () Bool)

(assert (=> b!2507544 (= e!1589650 tp_is_empty!12729)))

(declare-fun b!2507545 () Bool)

(declare-fun res!1060194 () Bool)

(declare-fun e!1589647 () Bool)

(assert (=> b!2507545 (=> (not res!1060194) (not e!1589647))))

(get-info :version)

(assert (=> b!2507545 (= res!1060194 (and (not ((_ is EmptyExpr!7437) r!27340)) (not ((_ is EmptyLang!7437) r!27340)) (not ((_ is ElementMatch!7437) r!27340)) (not ((_ is Union!7437) r!27340)) (not ((_ is Star!7437) r!27340))))))

(declare-fun b!2507546 () Bool)

(declare-fun tp!802062 () Bool)

(declare-fun tp!802061 () Bool)

(assert (=> b!2507546 (= e!1589650 (and tp!802062 tp!802061))))

(declare-fun b!2507547 () Bool)

(declare-fun tp!802063 () Bool)

(declare-fun tp!802065 () Bool)

(assert (=> b!2507547 (= e!1589650 (and tp!802063 tp!802065))))

(declare-fun b!2507548 () Bool)

(declare-fun e!1589646 () Bool)

(declare-fun lt!897072 () Regex!7437)

(assert (=> b!2507548 (= e!1589646 (matchR!3440 lt!897072 tl!4068))))

(declare-fun b!2507540 () Bool)

(assert (=> b!2507540 (= e!1589647 (not e!1589649))))

(declare-fun res!1060196 () Bool)

(assert (=> b!2507540 (=> res!1060196 e!1589649)))

(declare-fun lt!897078 () Bool)

(assert (=> b!2507540 (= res!1060196 (not lt!897078))))

(assert (=> b!2507540 e!1589646))

(declare-fun res!1060197 () Bool)

(assert (=> b!2507540 (=> res!1060197 e!1589646)))

(assert (=> b!2507540 (= res!1060197 lt!897078)))

(declare-fun lt!897081 () Regex!7437)

(assert (=> b!2507540 (= lt!897078 (matchR!3440 lt!897081 tl!4068))))

(declare-fun lt!897075 () Unit!43131)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!132 (Regex!7437 Regex!7437 List!29502) Unit!43131)

(assert (=> b!2507540 (= lt!897075 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!132 lt!897081 lt!897072 tl!4068))))

(declare-fun lt!897079 () Regex!7437)

(declare-fun derivative!132 (Regex!7437 List!29502) Regex!7437)

(assert (=> b!2507540 (= (matchR!3440 lt!897079 tl!4068) (matchR!3440 (derivative!132 lt!897079 tl!4068) Nil!29402))))

(declare-fun lt!897073 () Unit!43131)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!86 (Regex!7437 List!29502) Unit!43131)

(assert (=> b!2507540 (= lt!897073 (lemmaMatchRIsSameAsWholeDerivativeAndNil!86 lt!897079 tl!4068))))

(assert (=> b!2507540 (= lt!897079 (Union!7437 lt!897081 lt!897072))))

(declare-fun c!14016 () C!15032)

(declare-fun derivativeStep!2006 (Regex!7437 C!15032) Regex!7437)

(assert (=> b!2507540 (= lt!897072 (derivativeStep!2006 (regTwo!15386 r!27340) c!14016))))

(assert (=> b!2507540 (= lt!897081 (Concat!12133 lt!897080 (regTwo!15386 r!27340)))))

(assert (=> b!2507540 (= lt!897080 (derivativeStep!2006 (regOne!15386 r!27340) c!14016))))

(declare-fun res!1060189 () Bool)

(assert (=> start!244640 (=> (not res!1060189) (not e!1589647))))

(declare-fun validRegex!3063 (Regex!7437) Bool)

(assert (=> start!244640 (= res!1060189 (validRegex!3063 r!27340))))

(assert (=> start!244640 e!1589647))

(assert (=> start!244640 e!1589650))

(assert (=> start!244640 tp_is_empty!12729))

(assert (=> start!244640 e!1589648))

(declare-fun b!2507549 () Bool)

(declare-fun res!1060190 () Bool)

(assert (=> b!2507549 (=> res!1060190 e!1589645)))

(assert (=> b!2507549 (= res!1060190 (not (matchR!3440 (regOne!15386 r!27340) (Cons!29402 c!14016 (_1!17268 lt!897076)))))))

(declare-fun b!2507550 () Bool)

(declare-fun res!1060193 () Bool)

(assert (=> b!2507550 (=> (not res!1060193) (not e!1589647))))

(declare-fun nullable!2354 (Regex!7437) Bool)

(assert (=> b!2507550 (= res!1060193 (nullable!2354 (regOne!15386 r!27340)))))

(declare-fun b!2507551 () Bool)

(assert (=> b!2507551 (= e!1589645 true)))

(assert (=> b!2507551 (matchR!3440 (derivative!132 lt!897080 (_1!17268 lt!897076)) Nil!29402)))

(declare-fun lt!897074 () Unit!43131)

(assert (=> b!2507551 (= lt!897074 (lemmaMatchRIsSameAsWholeDerivativeAndNil!86 lt!897080 (_1!17268 lt!897076)))))

(declare-fun b!2507552 () Bool)

(declare-fun res!1060192 () Bool)

(assert (=> b!2507552 (=> (not res!1060192) (not e!1589647))))

(assert (=> b!2507552 (= res!1060192 (nullable!2354 (derivative!132 (derivativeStep!2006 r!27340 c!14016) tl!4068)))))

(assert (= (and start!244640 res!1060189) b!2507552))

(assert (= (and b!2507552 res!1060192) b!2507545))

(assert (= (and b!2507545 res!1060194) b!2507550))

(assert (= (and b!2507550 res!1060193) b!2507540))

(assert (= (and b!2507540 (not res!1060197)) b!2507548))

(assert (= (and b!2507540 (not res!1060196)) b!2507538))

(assert (= (and b!2507538 (not res!1060198)) b!2507539))

(assert (= (and b!2507539 (not res!1060191)) b!2507541))

(assert (= (and b!2507541 (not res!1060195)) b!2507549))

(assert (= (and b!2507549 (not res!1060190)) b!2507551))

(assert (= (and start!244640 ((_ is ElementMatch!7437) r!27340)) b!2507544))

(assert (= (and start!244640 ((_ is Concat!12133) r!27340)) b!2507546))

(assert (= (and start!244640 ((_ is Star!7437) r!27340)) b!2507542))

(assert (= (and start!244640 ((_ is Union!7437) r!27340)) b!2507547))

(assert (= (and start!244640 ((_ is Cons!29402) tl!4068)) b!2507543))

(declare-fun m!2867683 () Bool)

(assert (=> b!2507551 m!2867683))

(assert (=> b!2507551 m!2867683))

(declare-fun m!2867685 () Bool)

(assert (=> b!2507551 m!2867685))

(declare-fun m!2867687 () Bool)

(assert (=> b!2507551 m!2867687))

(declare-fun m!2867689 () Bool)

(assert (=> b!2507550 m!2867689))

(declare-fun m!2867691 () Bool)

(assert (=> b!2507539 m!2867691))

(declare-fun m!2867693 () Bool)

(assert (=> b!2507538 m!2867693))

(declare-fun m!2867695 () Bool)

(assert (=> b!2507538 m!2867695))

(declare-fun m!2867697 () Bool)

(assert (=> b!2507538 m!2867697))

(declare-fun m!2867699 () Bool)

(assert (=> b!2507538 m!2867699))

(declare-fun m!2867701 () Bool)

(assert (=> b!2507538 m!2867701))

(declare-fun m!2867703 () Bool)

(assert (=> b!2507548 m!2867703))

(declare-fun m!2867705 () Bool)

(assert (=> b!2507549 m!2867705))

(declare-fun m!2867707 () Bool)

(assert (=> start!244640 m!2867707))

(declare-fun m!2867709 () Bool)

(assert (=> b!2507552 m!2867709))

(assert (=> b!2507552 m!2867709))

(declare-fun m!2867711 () Bool)

(assert (=> b!2507552 m!2867711))

(assert (=> b!2507552 m!2867711))

(declare-fun m!2867713 () Bool)

(assert (=> b!2507552 m!2867713))

(declare-fun m!2867715 () Bool)

(assert (=> b!2507540 m!2867715))

(assert (=> b!2507540 m!2867715))

(declare-fun m!2867717 () Bool)

(assert (=> b!2507540 m!2867717))

(declare-fun m!2867719 () Bool)

(assert (=> b!2507540 m!2867719))

(declare-fun m!2867721 () Bool)

(assert (=> b!2507540 m!2867721))

(declare-fun m!2867723 () Bool)

(assert (=> b!2507540 m!2867723))

(declare-fun m!2867725 () Bool)

(assert (=> b!2507540 m!2867725))

(declare-fun m!2867727 () Bool)

(assert (=> b!2507540 m!2867727))

(declare-fun m!2867729 () Bool)

(assert (=> b!2507540 m!2867729))

(declare-fun m!2867731 () Bool)

(assert (=> b!2507541 m!2867731))

(check-sat (not b!2507543) (not b!2507552) (not start!244640) (not b!2507549) (not b!2507540) (not b!2507546) (not b!2507551) tp_is_empty!12729 (not b!2507538) (not b!2507541) (not b!2507548) (not b!2507542) (not b!2507547) (not b!2507550) (not b!2507539))
(check-sat)
