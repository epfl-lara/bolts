; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73606 () Bool)

(assert start!73606)

(declare-fun b!822449 () Bool)

(declare-fun res!379494 () Bool)

(declare-fun e!543338 () Bool)

(assert (=> b!822449 (=> (not res!379494) (not e!543338))))

(declare-datatypes ((C!4644 0))(
  ( (C!4645 (val!2570 Int)) )
))
(declare-datatypes ((Regex!2037 0))(
  ( (ElementMatch!2037 (c!133314 C!4644)) (Concat!3768 (regOne!4586 Regex!2037) (regTwo!4586 Regex!2037)) (EmptyExpr!2037) (Star!2037 (reg!2366 Regex!2037)) (EmptyLang!2037) (Union!2037 (regOne!4587 Regex!2037) (regTwo!4587 Regex!2037)) )
))
(declare-fun r!27177 () Regex!2037)

(declare-fun c!13916 () C!4644)

(declare-datatypes ((List!8863 0))(
  ( (Nil!8847) (Cons!8847 (h!14248 C!4644) (t!93155 List!8863)) )
))
(declare-fun contains!1628 (List!8863 C!4644) Bool)

(declare-fun firstChars!8 (Regex!2037) List!8863)

(assert (=> b!822449 (= res!379494 (contains!1628 (firstChars!8 (regOne!4586 r!27177)) c!13916))))

(declare-fun b!822450 () Bool)

(declare-fun e!543339 () Bool)

(declare-fun tp!256970 () Bool)

(declare-fun tp!256973 () Bool)

(assert (=> b!822450 (= e!543339 (and tp!256970 tp!256973))))

(declare-fun b!822451 () Bool)

(assert (=> b!822451 (= e!543338 false)))

(declare-fun b!822452 () Bool)

(declare-fun res!379496 () Bool)

(assert (=> b!822452 (=> (not res!379496) (not e!543338))))

(declare-fun nullable!488 (Regex!2037) Bool)

(assert (=> b!822452 (= res!379496 (nullable!488 (regOne!4586 r!27177)))))

(declare-fun b!822454 () Bool)

(declare-fun tp_is_empty!3797 () Bool)

(assert (=> b!822454 (= e!543339 tp_is_empty!3797)))

(declare-fun b!822455 () Bool)

(declare-fun tp!256972 () Bool)

(assert (=> b!822455 (= e!543339 tp!256972)))

(declare-fun b!822456 () Bool)

(declare-fun res!379497 () Bool)

(assert (=> b!822456 (=> (not res!379497) (not e!543338))))

(get-info :version)

(assert (=> b!822456 (= res!379497 (and (not ((_ is EmptyExpr!2037) r!27177)) (not ((_ is EmptyLang!2037) r!27177)) (not ((_ is ElementMatch!2037) r!27177)) (not ((_ is Star!2037) r!27177)) (not ((_ is Union!2037) r!27177))))))

(declare-fun b!822457 () Bool)

(declare-fun res!379495 () Bool)

(assert (=> b!822457 (=> (not res!379495) (not e!543338))))

(assert (=> b!822457 (= res!379495 (contains!1628 (firstChars!8 r!27177) c!13916))))

(declare-fun b!822453 () Bool)

(declare-fun tp!256974 () Bool)

(declare-fun tp!256971 () Bool)

(assert (=> b!822453 (= e!543339 (and tp!256974 tp!256971))))

(declare-fun res!379493 () Bool)

(assert (=> start!73606 (=> (not res!379493) (not e!543338))))

(declare-fun validRegex!590 (Regex!2037) Bool)

(assert (=> start!73606 (= res!379493 (validRegex!590 r!27177))))

(assert (=> start!73606 e!543338))

(assert (=> start!73606 e!543339))

(assert (=> start!73606 tp_is_empty!3797))

(assert (= (and start!73606 res!379493) b!822457))

(assert (= (and b!822457 res!379495) b!822456))

(assert (= (and b!822456 res!379497) b!822452))

(assert (= (and b!822452 res!379496) b!822449))

(assert (= (and b!822449 res!379494) b!822451))

(assert (= (and start!73606 ((_ is ElementMatch!2037) r!27177)) b!822454))

(assert (= (and start!73606 ((_ is Concat!3768) r!27177)) b!822453))

(assert (= (and start!73606 ((_ is Star!2037) r!27177)) b!822455))

(assert (= (and start!73606 ((_ is Union!2037) r!27177)) b!822450))

(declare-fun m!1063617 () Bool)

(assert (=> b!822449 m!1063617))

(assert (=> b!822449 m!1063617))

(declare-fun m!1063619 () Bool)

(assert (=> b!822449 m!1063619))

(declare-fun m!1063621 () Bool)

(assert (=> b!822452 m!1063621))

(declare-fun m!1063623 () Bool)

(assert (=> b!822457 m!1063623))

(assert (=> b!822457 m!1063623))

(declare-fun m!1063625 () Bool)

(assert (=> b!822457 m!1063625))

(declare-fun m!1063627 () Bool)

(assert (=> start!73606 m!1063627))

(check-sat (not b!822452) (not b!822449) (not b!822457) (not b!822453) (not b!822450) tp_is_empty!3797 (not b!822455) (not start!73606))
(check-sat)
