; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243576 () Bool)

(assert start!243576)

(declare-fun b!2493567 () Bool)

(declare-fun e!1582502 () Bool)

(declare-fun tp!798726 () Bool)

(declare-fun tp!798724 () Bool)

(assert (=> b!2493567 (= e!1582502 (and tp!798726 tp!798724))))

(declare-fun b!2493568 () Bool)

(declare-fun res!1054723 () Bool)

(declare-fun e!1582504 () Bool)

(assert (=> b!2493568 (=> (not res!1054723) (not e!1582504))))

(declare-datatypes ((C!14872 0))(
  ( (C!14873 (val!9088 Int)) )
))
(declare-datatypes ((Regex!7357 0))(
  ( (ElementMatch!7357 (c!396469 C!14872)) (Concat!12053 (regOne!15226 Regex!7357) (regTwo!15226 Regex!7357)) (EmptyExpr!7357) (Star!7357 (reg!7686 Regex!7357)) (EmptyLang!7357) (Union!7357 (regOne!15227 Regex!7357) (regTwo!15227 Regex!7357)) )
))
(declare-fun lt!894149 () Regex!7357)

(declare-datatypes ((List!29422 0))(
  ( (Nil!29322) (Cons!29322 (h!34742 C!14872) (t!211121 List!29422)) )
))
(declare-fun tl!4068 () List!29422)

(declare-fun nullable!2274 (Regex!7357) Bool)

(declare-fun derivative!52 (Regex!7357 List!29422) Regex!7357)

(assert (=> b!2493568 (= res!1054723 (nullable!2274 (derivative!52 lt!894149 tl!4068)))))

(declare-fun b!2493569 () Bool)

(declare-fun e!1582503 () Bool)

(assert (=> b!2493569 (= e!1582503 e!1582504)))

(declare-fun res!1054720 () Bool)

(assert (=> b!2493569 (=> (not res!1054720) (not e!1582504))))

(declare-fun lt!894150 () Regex!7357)

(declare-fun r!27340 () Regex!7357)

(assert (=> b!2493569 (= res!1054720 (= lt!894150 (Concat!12053 lt!894149 (Star!7357 (reg!7686 r!27340)))))))

(declare-fun c!14016 () C!14872)

(declare-fun derivativeStep!1926 (Regex!7357 C!14872) Regex!7357)

(assert (=> b!2493569 (= lt!894149 (derivativeStep!1926 (reg!7686 r!27340) c!14016))))

(declare-fun b!2493571 () Bool)

(assert (=> b!2493571 (= e!1582504 false)))

(declare-fun b!2493572 () Bool)

(declare-fun e!1582500 () Bool)

(declare-fun tp_is_empty!12569 () Bool)

(declare-fun tp!798721 () Bool)

(assert (=> b!2493572 (= e!1582500 (and tp_is_empty!12569 tp!798721))))

(declare-fun b!2493573 () Bool)

(declare-fun tp!798725 () Bool)

(assert (=> b!2493573 (= e!1582502 tp!798725)))

(declare-fun b!2493574 () Bool)

(assert (=> b!2493574 (= e!1582502 tp_is_empty!12569)))

(declare-fun res!1054724 () Bool)

(declare-fun e!1582501 () Bool)

(assert (=> start!243576 (=> (not res!1054724) (not e!1582501))))

(declare-fun validRegex!2983 (Regex!7357) Bool)

(assert (=> start!243576 (= res!1054724 (validRegex!2983 r!27340))))

(assert (=> start!243576 e!1582501))

(assert (=> start!243576 e!1582502))

(assert (=> start!243576 tp_is_empty!12569))

(assert (=> start!243576 e!1582500))

(declare-fun b!2493570 () Bool)

(assert (=> b!2493570 (= e!1582501 e!1582503)))

(declare-fun res!1054721 () Bool)

(assert (=> b!2493570 (=> (not res!1054721) (not e!1582503))))

(assert (=> b!2493570 (= res!1054721 (nullable!2274 (derivative!52 lt!894150 tl!4068)))))

(assert (=> b!2493570 (= lt!894150 (derivativeStep!1926 r!27340 c!14016))))

(declare-fun b!2493575 () Bool)

(declare-fun tp!798722 () Bool)

(declare-fun tp!798723 () Bool)

(assert (=> b!2493575 (= e!1582502 (and tp!798722 tp!798723))))

(declare-fun b!2493576 () Bool)

(declare-fun res!1054722 () Bool)

(assert (=> b!2493576 (=> (not res!1054722) (not e!1582503))))

(get-info :version)

(assert (=> b!2493576 (= res!1054722 (and (not ((_ is EmptyExpr!7357) r!27340)) (not ((_ is EmptyLang!7357) r!27340)) (not ((_ is ElementMatch!7357) r!27340)) (not ((_ is Union!7357) r!27340)) ((_ is Star!7357) r!27340)))))

(assert (= (and start!243576 res!1054724) b!2493570))

(assert (= (and b!2493570 res!1054721) b!2493576))

(assert (= (and b!2493576 res!1054722) b!2493569))

(assert (= (and b!2493569 res!1054720) b!2493568))

(assert (= (and b!2493568 res!1054723) b!2493571))

(assert (= (and start!243576 ((_ is ElementMatch!7357) r!27340)) b!2493574))

(assert (= (and start!243576 ((_ is Concat!12053) r!27340)) b!2493567))

(assert (= (and start!243576 ((_ is Star!7357) r!27340)) b!2493573))

(assert (= (and start!243576 ((_ is Union!7357) r!27340)) b!2493575))

(assert (= (and start!243576 ((_ is Cons!29322) tl!4068)) b!2493572))

(declare-fun m!2859139 () Bool)

(assert (=> b!2493568 m!2859139))

(assert (=> b!2493568 m!2859139))

(declare-fun m!2859141 () Bool)

(assert (=> b!2493568 m!2859141))

(declare-fun m!2859143 () Bool)

(assert (=> b!2493569 m!2859143))

(declare-fun m!2859145 () Bool)

(assert (=> start!243576 m!2859145))

(declare-fun m!2859147 () Bool)

(assert (=> b!2493570 m!2859147))

(assert (=> b!2493570 m!2859147))

(declare-fun m!2859149 () Bool)

(assert (=> b!2493570 m!2859149))

(declare-fun m!2859151 () Bool)

(assert (=> b!2493570 m!2859151))

(check-sat tp_is_empty!12569 (not b!2493572) (not start!243576) (not b!2493569) (not b!2493573) (not b!2493570) (not b!2493568) (not b!2493567) (not b!2493575))
(check-sat)
