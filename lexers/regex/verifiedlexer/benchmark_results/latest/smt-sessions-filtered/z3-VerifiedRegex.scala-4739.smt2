; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244740 () Bool)

(assert start!244740)

(declare-fun b!2509013 () Bool)

(declare-fun res!1060714 () Bool)

(declare-fun e!1590350 () Bool)

(assert (=> b!2509013 (=> (not res!1060714) (not e!1590350))))

(declare-datatypes ((C!15064 0))(
  ( (C!15065 (val!9184 Int)) )
))
(declare-datatypes ((List!29518 0))(
  ( (Nil!29418) (Cons!29418 (h!34838 C!15064) (t!211217 List!29518)) )
))
(declare-fun tl!4068 () List!29518)

(declare-datatypes ((Regex!7453 0))(
  ( (ElementMatch!7453 (c!399591 C!15064)) (Concat!12149 (regOne!15418 Regex!7453) (regTwo!15418 Regex!7453)) (EmptyExpr!7453) (Star!7453 (reg!7782 Regex!7453)) (EmptyLang!7453) (Union!7453 (regOne!15419 Regex!7453) (regTwo!15419 Regex!7453)) )
))
(declare-fun r!27340 () Regex!7453)

(declare-fun c!14016 () C!15064)

(declare-fun nullable!2370 (Regex!7453) Bool)

(declare-fun derivative!148 (Regex!7453 List!29518) Regex!7453)

(declare-fun derivativeStep!2022 (Regex!7453 C!15064) Regex!7453)

(assert (=> b!2509013 (= res!1060714 (nullable!2370 (derivative!148 (derivativeStep!2022 r!27340 c!14016) tl!4068)))))

(declare-fun b!2509014 () Bool)

(declare-fun e!1590351 () Bool)

(declare-fun tp!802581 () Bool)

(assert (=> b!2509014 (= e!1590351 tp!802581)))

(declare-fun res!1060718 () Bool)

(assert (=> start!244740 (=> (not res!1060718) (not e!1590350))))

(declare-fun validRegex!3079 (Regex!7453) Bool)

(assert (=> start!244740 (= res!1060718 (validRegex!3079 r!27340))))

(assert (=> start!244740 e!1590350))

(assert (=> start!244740 e!1590351))

(declare-fun tp_is_empty!12761 () Bool)

(assert (=> start!244740 tp_is_empty!12761))

(declare-fun e!1590352 () Bool)

(assert (=> start!244740 e!1590352))

(declare-fun b!2509015 () Bool)

(declare-fun res!1060715 () Bool)

(assert (=> b!2509015 (=> (not res!1060715) (not e!1590350))))

(assert (=> b!2509015 (= res!1060715 (not (nullable!2370 (regOne!15418 r!27340))))))

(declare-fun b!2509016 () Bool)

(assert (=> b!2509016 (= e!1590351 tp_is_empty!12761)))

(declare-fun b!2509017 () Bool)

(assert (=> b!2509017 (= e!1590350 (not true))))

(declare-fun e!1590349 () Bool)

(assert (=> b!2509017 e!1590349))

(declare-fun res!1060717 () Bool)

(assert (=> b!2509017 (=> res!1060717 e!1590349)))

(declare-fun lt!897328 () Regex!7453)

(declare-fun matchR!3452 (Regex!7453 List!29518) Bool)

(assert (=> b!2509017 (= res!1060717 (matchR!3452 lt!897328 tl!4068))))

(declare-datatypes ((Unit!43155 0))(
  ( (Unit!43156) )
))
(declare-fun lt!897327 () Unit!43155)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!140 (Regex!7453 Regex!7453 List!29518) Unit!43155)

(assert (=> b!2509017 (= lt!897327 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!140 lt!897328 EmptyLang!7453 tl!4068))))

(declare-fun lt!897325 () Regex!7453)

(assert (=> b!2509017 (= (matchR!3452 lt!897325 tl!4068) (matchR!3452 (derivative!148 lt!897325 tl!4068) Nil!29418))))

(declare-fun lt!897326 () Unit!43155)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!98 (Regex!7453 List!29518) Unit!43155)

(assert (=> b!2509017 (= lt!897326 (lemmaMatchRIsSameAsWholeDerivativeAndNil!98 lt!897325 tl!4068))))

(assert (=> b!2509017 (= lt!897325 (Union!7453 lt!897328 EmptyLang!7453))))

(assert (=> b!2509017 (= lt!897328 (Concat!12149 (derivativeStep!2022 (regOne!15418 r!27340) c!14016) (regTwo!15418 r!27340)))))

(declare-fun b!2509018 () Bool)

(declare-fun res!1060716 () Bool)

(assert (=> b!2509018 (=> (not res!1060716) (not e!1590350))))

(get-info :version)

(assert (=> b!2509018 (= res!1060716 (and (not ((_ is EmptyExpr!7453) r!27340)) (not ((_ is EmptyLang!7453) r!27340)) (not ((_ is ElementMatch!7453) r!27340)) (not ((_ is Union!7453) r!27340)) (not ((_ is Star!7453) r!27340))))))

(declare-fun b!2509019 () Bool)

(declare-fun tp!802577 () Bool)

(declare-fun tp!802579 () Bool)

(assert (=> b!2509019 (= e!1590351 (and tp!802577 tp!802579))))

(declare-fun b!2509020 () Bool)

(declare-fun tp!802578 () Bool)

(assert (=> b!2509020 (= e!1590352 (and tp_is_empty!12761 tp!802578))))

(declare-fun b!2509021 () Bool)

(assert (=> b!2509021 (= e!1590349 (matchR!3452 EmptyLang!7453 tl!4068))))

(declare-fun b!2509022 () Bool)

(declare-fun tp!802582 () Bool)

(declare-fun tp!802580 () Bool)

(assert (=> b!2509022 (= e!1590351 (and tp!802582 tp!802580))))

(assert (= (and start!244740 res!1060718) b!2509013))

(assert (= (and b!2509013 res!1060714) b!2509018))

(assert (= (and b!2509018 res!1060716) b!2509015))

(assert (= (and b!2509015 res!1060715) b!2509017))

(assert (= (and b!2509017 (not res!1060717)) b!2509021))

(assert (= (and start!244740 ((_ is ElementMatch!7453) r!27340)) b!2509016))

(assert (= (and start!244740 ((_ is Concat!12149) r!27340)) b!2509022))

(assert (= (and start!244740 ((_ is Star!7453) r!27340)) b!2509014))

(assert (= (and start!244740 ((_ is Union!7453) r!27340)) b!2509019))

(assert (= (and start!244740 ((_ is Cons!29418) tl!4068)) b!2509020))

(declare-fun m!2868507 () Bool)

(assert (=> b!2509015 m!2868507))

(declare-fun m!2868509 () Bool)

(assert (=> start!244740 m!2868509))

(declare-fun m!2868511 () Bool)

(assert (=> b!2509021 m!2868511))

(declare-fun m!2868513 () Bool)

(assert (=> b!2509017 m!2868513))

(declare-fun m!2868515 () Bool)

(assert (=> b!2509017 m!2868515))

(declare-fun m!2868517 () Bool)

(assert (=> b!2509017 m!2868517))

(declare-fun m!2868519 () Bool)

(assert (=> b!2509017 m!2868519))

(declare-fun m!2868521 () Bool)

(assert (=> b!2509017 m!2868521))

(declare-fun m!2868523 () Bool)

(assert (=> b!2509017 m!2868523))

(assert (=> b!2509017 m!2868521))

(declare-fun m!2868525 () Bool)

(assert (=> b!2509017 m!2868525))

(declare-fun m!2868527 () Bool)

(assert (=> b!2509013 m!2868527))

(assert (=> b!2509013 m!2868527))

(declare-fun m!2868529 () Bool)

(assert (=> b!2509013 m!2868529))

(assert (=> b!2509013 m!2868529))

(declare-fun m!2868531 () Bool)

(assert (=> b!2509013 m!2868531))

(check-sat (not b!2509022) (not b!2509020) (not b!2509021) (not b!2509017) (not b!2509013) (not start!244740) (not b!2509014) (not b!2509015) (not b!2509019) tp_is_empty!12761)
(check-sat)
