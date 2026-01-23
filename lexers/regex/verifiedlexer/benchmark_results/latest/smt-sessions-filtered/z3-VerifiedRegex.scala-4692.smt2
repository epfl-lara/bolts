; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243580 () Bool)

(assert start!243580)

(declare-fun b!2493622 () Bool)

(declare-fun e!1582531 () Bool)

(declare-fun tp_is_empty!12573 () Bool)

(assert (=> b!2493622 (= e!1582531 tp_is_empty!12573)))

(declare-fun b!2493623 () Bool)

(declare-fun tp!798760 () Bool)

(declare-fun tp!798759 () Bool)

(assert (=> b!2493623 (= e!1582531 (and tp!798760 tp!798759))))

(declare-fun b!2493624 () Bool)

(declare-fun e!1582530 () Bool)

(declare-fun tp!798758 () Bool)

(assert (=> b!2493624 (= e!1582530 (and tp_is_empty!12573 tp!798758))))

(declare-fun b!2493625 () Bool)

(declare-fun e!1582532 () Bool)

(assert (=> b!2493625 (= e!1582532 false)))

(declare-fun lt!894167 () Bool)

(declare-datatypes ((C!14876 0))(
  ( (C!14877 (val!9090 Int)) )
))
(declare-datatypes ((Regex!7359 0))(
  ( (ElementMatch!7359 (c!396471 C!14876)) (Concat!12055 (regOne!15230 Regex!7359) (regTwo!15230 Regex!7359)) (EmptyExpr!7359) (Star!7359 (reg!7688 Regex!7359)) (EmptyLang!7359) (Union!7359 (regOne!15231 Regex!7359) (regTwo!15231 Regex!7359)) )
))
(declare-fun lt!894166 () Regex!7359)

(declare-datatypes ((List!29424 0))(
  ( (Nil!29324) (Cons!29324 (h!34744 C!14876) (t!211123 List!29424)) )
))
(declare-fun tl!4068 () List!29424)

(declare-fun nullable!2276 (Regex!7359) Bool)

(declare-fun derivative!54 (Regex!7359 List!29424) Regex!7359)

(assert (=> b!2493625 (= lt!894167 (nullable!2276 (derivative!54 lt!894166 tl!4068)))))

(declare-fun b!2493626 () Bool)

(declare-fun e!1582534 () Bool)

(declare-fun e!1582533 () Bool)

(assert (=> b!2493626 (= e!1582534 e!1582533)))

(declare-fun res!1054747 () Bool)

(assert (=> b!2493626 (=> (not res!1054747) (not e!1582533))))

(declare-fun lt!894168 () Regex!7359)

(assert (=> b!2493626 (= res!1054747 (nullable!2276 (derivative!54 lt!894168 tl!4068)))))

(declare-fun r!27340 () Regex!7359)

(declare-fun c!14016 () C!14876)

(declare-fun derivativeStep!1928 (Regex!7359 C!14876) Regex!7359)

(assert (=> b!2493626 (= lt!894168 (derivativeStep!1928 r!27340 c!14016))))

(declare-fun b!2493627 () Bool)

(declare-fun tp!798762 () Bool)

(assert (=> b!2493627 (= e!1582531 tp!798762)))

(declare-fun b!2493628 () Bool)

(declare-fun tp!798757 () Bool)

(declare-fun tp!798761 () Bool)

(assert (=> b!2493628 (= e!1582531 (and tp!798757 tp!798761))))

(declare-fun b!2493629 () Bool)

(declare-fun res!1054746 () Bool)

(assert (=> b!2493629 (=> (not res!1054746) (not e!1582533))))

(get-info :version)

(assert (=> b!2493629 (= res!1054746 (and (not ((_ is EmptyExpr!7359) r!27340)) (not ((_ is EmptyLang!7359) r!27340)) (not ((_ is ElementMatch!7359) r!27340)) (not ((_ is Union!7359) r!27340)) ((_ is Star!7359) r!27340)))))

(declare-fun b!2493630 () Bool)

(assert (=> b!2493630 (= e!1582533 e!1582532)))

(declare-fun res!1054745 () Bool)

(assert (=> b!2493630 (=> (not res!1054745) (not e!1582532))))

(assert (=> b!2493630 (= res!1054745 (= lt!894168 (Concat!12055 lt!894166 (Star!7359 (reg!7688 r!27340)))))))

(assert (=> b!2493630 (= lt!894166 (derivativeStep!1928 (reg!7688 r!27340) c!14016))))

(declare-fun res!1054748 () Bool)

(assert (=> start!243580 (=> (not res!1054748) (not e!1582534))))

(declare-fun validRegex!2985 (Regex!7359) Bool)

(assert (=> start!243580 (= res!1054748 (validRegex!2985 r!27340))))

(assert (=> start!243580 e!1582534))

(assert (=> start!243580 e!1582531))

(assert (=> start!243580 tp_is_empty!12573))

(assert (=> start!243580 e!1582530))

(assert (= (and start!243580 res!1054748) b!2493626))

(assert (= (and b!2493626 res!1054747) b!2493629))

(assert (= (and b!2493629 res!1054746) b!2493630))

(assert (= (and b!2493630 res!1054745) b!2493625))

(assert (= (and start!243580 ((_ is ElementMatch!7359) r!27340)) b!2493622))

(assert (= (and start!243580 ((_ is Concat!12055) r!27340)) b!2493623))

(assert (= (and start!243580 ((_ is Star!7359) r!27340)) b!2493627))

(assert (= (and start!243580 ((_ is Union!7359) r!27340)) b!2493628))

(assert (= (and start!243580 ((_ is Cons!29324) tl!4068)) b!2493624))

(declare-fun m!2859167 () Bool)

(assert (=> b!2493625 m!2859167))

(assert (=> b!2493625 m!2859167))

(declare-fun m!2859169 () Bool)

(assert (=> b!2493625 m!2859169))

(declare-fun m!2859171 () Bool)

(assert (=> b!2493626 m!2859171))

(assert (=> b!2493626 m!2859171))

(declare-fun m!2859173 () Bool)

(assert (=> b!2493626 m!2859173))

(declare-fun m!2859175 () Bool)

(assert (=> b!2493626 m!2859175))

(declare-fun m!2859177 () Bool)

(assert (=> b!2493630 m!2859177))

(declare-fun m!2859179 () Bool)

(assert (=> start!243580 m!2859179))

(check-sat (not start!243580) (not b!2493628) (not b!2493630) tp_is_empty!12573 (not b!2493627) (not b!2493626) (not b!2493625) (not b!2493624) (not b!2493623))
(check-sat)
