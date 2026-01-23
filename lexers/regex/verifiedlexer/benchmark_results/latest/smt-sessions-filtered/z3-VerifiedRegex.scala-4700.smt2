; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243732 () Bool)

(assert start!243732)

(declare-fun b!2495655 () Bool)

(declare-fun e!1583587 () Bool)

(declare-fun tp!799350 () Bool)

(declare-fun tp!799349 () Bool)

(assert (=> b!2495655 (= e!1583587 (and tp!799350 tp!799349))))

(declare-fun b!2495656 () Bool)

(declare-fun res!1055509 () Bool)

(declare-fun e!1583588 () Bool)

(assert (=> b!2495656 (=> (not res!1055509) (not e!1583588))))

(declare-datatypes ((C!14908 0))(
  ( (C!14909 (val!9106 Int)) )
))
(declare-datatypes ((Regex!7375 0))(
  ( (ElementMatch!7375 (c!396863 C!14908)) (Concat!12071 (regOne!15262 Regex!7375) (regTwo!15262 Regex!7375)) (EmptyExpr!7375) (Star!7375 (reg!7704 Regex!7375)) (EmptyLang!7375) (Union!7375 (regOne!15263 Regex!7375) (regTwo!15263 Regex!7375)) )
))
(declare-fun lt!894597 () Regex!7375)

(declare-datatypes ((List!29440 0))(
  ( (Nil!29340) (Cons!29340 (h!34760 C!14908) (t!211139 List!29440)) )
))
(declare-fun tl!4068 () List!29440)

(declare-fun nullable!2292 (Regex!7375) Bool)

(declare-fun derivative!70 (Regex!7375 List!29440) Regex!7375)

(assert (=> b!2495656 (= res!1055509 (not (nullable!2292 (derivative!70 lt!894597 tl!4068))))))

(declare-fun b!2495657 () Bool)

(declare-fun e!1583584 () Bool)

(declare-fun e!1583590 () Bool)

(assert (=> b!2495657 (= e!1583584 e!1583590)))

(declare-fun res!1055506 () Bool)

(assert (=> b!2495657 (=> (not res!1055506) (not e!1583590))))

(declare-fun lt!894595 () Regex!7375)

(assert (=> b!2495657 (= res!1055506 (nullable!2292 lt!894595))))

(declare-fun lt!894596 () Regex!7375)

(assert (=> b!2495657 (= lt!894595 (derivative!70 lt!894596 tl!4068))))

(declare-fun r!27340 () Regex!7375)

(declare-fun c!14016 () C!14908)

(declare-fun derivativeStep!1944 (Regex!7375 C!14908) Regex!7375)

(assert (=> b!2495657 (= lt!894596 (derivativeStep!1944 r!27340 c!14016))))

(declare-fun res!1055511 () Bool)

(assert (=> start!243732 (=> (not res!1055511) (not e!1583584))))

(declare-fun validRegex!3001 (Regex!7375) Bool)

(assert (=> start!243732 (= res!1055511 (validRegex!3001 r!27340))))

(assert (=> start!243732 e!1583584))

(assert (=> start!243732 e!1583587))

(declare-fun tp_is_empty!12605 () Bool)

(assert (=> start!243732 tp_is_empty!12605))

(declare-fun e!1583589 () Bool)

(assert (=> start!243732 e!1583589))

(declare-fun b!2495658 () Bool)

(declare-fun tp!799352 () Bool)

(declare-fun tp!799351 () Bool)

(assert (=> b!2495658 (= e!1583587 (and tp!799352 tp!799351))))

(declare-fun b!2495659 () Bool)

(declare-fun e!1583586 () Bool)

(declare-fun e!1583585 () Bool)

(assert (=> b!2495659 (= e!1583586 e!1583585)))

(declare-fun res!1055510 () Bool)

(assert (=> b!2495659 (=> res!1055510 e!1583585)))

(assert (=> b!2495659 (= res!1055510 (not (validRegex!3001 lt!894597)))))

(declare-fun lt!894600 () Regex!7375)

(declare-datatypes ((tuple2!29368 0))(
  ( (tuple2!29369 (_1!17226 List!29440) (_2!17226 List!29440)) )
))
(declare-datatypes ((Option!5804 0))(
  ( (None!5803) (Some!5803 (v!31734 tuple2!29368)) )
))
(declare-fun isDefined!4626 (Option!5804) Bool)

(declare-fun findConcatSeparation!826 (Regex!7375 Regex!7375 List!29440 List!29440 List!29440) Option!5804)

(assert (=> b!2495659 (isDefined!4626 (findConcatSeparation!826 lt!894597 lt!894600 Nil!29340 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43019 0))(
  ( (Unit!43020) )
))
(declare-fun lt!894598 () Unit!43019)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!108 (Regex!7375 Regex!7375 List!29440) Unit!43019)

(assert (=> b!2495659 (= lt!894598 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!108 lt!894597 lt!894600 tl!4068))))

(declare-fun b!2495660 () Bool)

(declare-fun tp!799354 () Bool)

(assert (=> b!2495660 (= e!1583587 tp!799354)))

(declare-fun b!2495661 () Bool)

(assert (=> b!2495661 (= e!1583588 (not e!1583586))))

(declare-fun res!1055512 () Bool)

(assert (=> b!2495661 (=> res!1055512 e!1583586)))

(declare-fun lt!894599 () Bool)

(assert (=> b!2495661 (= res!1055512 (not lt!894599))))

(declare-fun matchR!3384 (Regex!7375 List!29440) Bool)

(assert (=> b!2495661 (= lt!894599 (matchR!3384 lt!894595 Nil!29340))))

(assert (=> b!2495661 (= lt!894599 (matchR!3384 lt!894596 tl!4068))))

(declare-fun lt!894594 () Unit!43019)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!30 (Regex!7375 List!29440) Unit!43019)

(assert (=> b!2495661 (= lt!894594 (lemmaMatchRIsSameAsWholeDerivativeAndNil!30 lt!894596 tl!4068))))

(declare-fun b!2495662 () Bool)

(assert (=> b!2495662 (= e!1583585 (validRegex!3001 lt!894600))))

(declare-fun b!2495663 () Bool)

(declare-fun tp!799353 () Bool)

(assert (=> b!2495663 (= e!1583589 (and tp_is_empty!12605 tp!799353))))

(declare-fun b!2495664 () Bool)

(declare-fun res!1055507 () Bool)

(assert (=> b!2495664 (=> (not res!1055507) (not e!1583590))))

(get-info :version)

(assert (=> b!2495664 (= res!1055507 (and (not ((_ is EmptyExpr!7375) r!27340)) (not ((_ is EmptyLang!7375) r!27340)) (not ((_ is ElementMatch!7375) r!27340)) (not ((_ is Union!7375) r!27340)) ((_ is Star!7375) r!27340)))))

(declare-fun b!2495665 () Bool)

(assert (=> b!2495665 (= e!1583587 tp_is_empty!12605)))

(declare-fun b!2495666 () Bool)

(assert (=> b!2495666 (= e!1583590 e!1583588)))

(declare-fun res!1055508 () Bool)

(assert (=> b!2495666 (=> (not res!1055508) (not e!1583588))))

(assert (=> b!2495666 (= res!1055508 (= lt!894596 (Concat!12071 lt!894597 lt!894600)))))

(assert (=> b!2495666 (= lt!894600 (Star!7375 (reg!7704 r!27340)))))

(assert (=> b!2495666 (= lt!894597 (derivativeStep!1944 (reg!7704 r!27340) c!14016))))

(assert (= (and start!243732 res!1055511) b!2495657))

(assert (= (and b!2495657 res!1055506) b!2495664))

(assert (= (and b!2495664 res!1055507) b!2495666))

(assert (= (and b!2495666 res!1055508) b!2495656))

(assert (= (and b!2495656 res!1055509) b!2495661))

(assert (= (and b!2495661 (not res!1055512)) b!2495659))

(assert (= (and b!2495659 (not res!1055510)) b!2495662))

(assert (= (and start!243732 ((_ is ElementMatch!7375) r!27340)) b!2495665))

(assert (= (and start!243732 ((_ is Concat!12071) r!27340)) b!2495655))

(assert (= (and start!243732 ((_ is Star!7375) r!27340)) b!2495660))

(assert (= (and start!243732 ((_ is Union!7375) r!27340)) b!2495658))

(assert (= (and start!243732 ((_ is Cons!29340) tl!4068)) b!2495663))

(declare-fun m!2860275 () Bool)

(assert (=> b!2495656 m!2860275))

(assert (=> b!2495656 m!2860275))

(declare-fun m!2860277 () Bool)

(assert (=> b!2495656 m!2860277))

(declare-fun m!2860279 () Bool)

(assert (=> b!2495661 m!2860279))

(declare-fun m!2860281 () Bool)

(assert (=> b!2495661 m!2860281))

(declare-fun m!2860283 () Bool)

(assert (=> b!2495661 m!2860283))

(declare-fun m!2860285 () Bool)

(assert (=> b!2495659 m!2860285))

(declare-fun m!2860287 () Bool)

(assert (=> b!2495659 m!2860287))

(assert (=> b!2495659 m!2860287))

(declare-fun m!2860289 () Bool)

(assert (=> b!2495659 m!2860289))

(declare-fun m!2860291 () Bool)

(assert (=> b!2495659 m!2860291))

(declare-fun m!2860293 () Bool)

(assert (=> start!243732 m!2860293))

(declare-fun m!2860295 () Bool)

(assert (=> b!2495657 m!2860295))

(declare-fun m!2860297 () Bool)

(assert (=> b!2495657 m!2860297))

(declare-fun m!2860299 () Bool)

(assert (=> b!2495657 m!2860299))

(declare-fun m!2860301 () Bool)

(assert (=> b!2495662 m!2860301))

(declare-fun m!2860303 () Bool)

(assert (=> b!2495666 m!2860303))

(check-sat (not b!2495663) (not b!2495660) (not start!243732) (not b!2495658) (not b!2495655) (not b!2495657) (not b!2495661) (not b!2495666) (not b!2495659) tp_is_empty!12605 (not b!2495656) (not b!2495662))
(check-sat)
