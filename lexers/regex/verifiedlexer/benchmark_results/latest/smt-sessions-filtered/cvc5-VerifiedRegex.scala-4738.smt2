; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!244734 () Bool)

(assert start!244734)

(declare-fun b!2508927 () Bool)

(declare-fun e!1590319 () Bool)

(declare-fun tp!802525 () Bool)

(assert (=> b!2508927 (= e!1590319 tp!802525)))

(declare-fun b!2508928 () Bool)

(declare-fun tp!802524 () Bool)

(declare-fun tp!802523 () Bool)

(assert (=> b!2508928 (= e!1590319 (and tp!802524 tp!802523))))

(declare-fun b!2508929 () Bool)

(declare-fun e!1590318 () Bool)

(declare-fun tp_is_empty!12755 () Bool)

(declare-fun tp!802526 () Bool)

(assert (=> b!2508929 (= e!1590318 (and tp_is_empty!12755 tp!802526))))

(declare-fun b!2508930 () Bool)

(declare-fun tp!802527 () Bool)

(declare-fun tp!802528 () Bool)

(assert (=> b!2508930 (= e!1590319 (and tp!802527 tp!802528))))

(declare-fun b!2508931 () Bool)

(declare-fun res!1060675 () Bool)

(declare-fun e!1590317 () Bool)

(assert (=> b!2508931 (=> (not res!1060675) (not e!1590317))))

(declare-datatypes ((C!15058 0))(
  ( (C!15059 (val!9181 Int)) )
))
(declare-datatypes ((Regex!7450 0))(
  ( (ElementMatch!7450 (c!399588 C!15058)) (Concat!12146 (regOne!15412 Regex!7450) (regTwo!15412 Regex!7450)) (EmptyExpr!7450) (Star!7450 (reg!7779 Regex!7450)) (EmptyLang!7450) (Union!7450 (regOne!15413 Regex!7450) (regTwo!15413 Regex!7450)) )
))
(declare-fun r!27340 () Regex!7450)

(declare-fun nullable!2367 (Regex!7450) Bool)

(assert (=> b!2508931 (= res!1060675 (not (nullable!2367 (regOne!15412 r!27340))))))

(declare-fun b!2508932 () Bool)

(declare-fun res!1060673 () Bool)

(assert (=> b!2508932 (=> (not res!1060673) (not e!1590317))))

(declare-datatypes ((List!29515 0))(
  ( (Nil!29415) (Cons!29415 (h!34835 C!15058) (t!211214 List!29515)) )
))
(declare-fun tl!4068 () List!29515)

(declare-fun c!14016 () C!15058)

(declare-fun derivative!145 (Regex!7450 List!29515) Regex!7450)

(declare-fun derivativeStep!2019 (Regex!7450 C!15058) Regex!7450)

(assert (=> b!2508932 (= res!1060673 (nullable!2367 (derivative!145 (derivativeStep!2019 r!27340 c!14016) tl!4068)))))

(declare-fun b!2508933 () Bool)

(declare-fun res!1060674 () Bool)

(assert (=> b!2508933 (=> (not res!1060674) (not e!1590317))))

(assert (=> b!2508933 (= res!1060674 (and (not (is-EmptyExpr!7450 r!27340)) (not (is-EmptyLang!7450 r!27340)) (not (is-ElementMatch!7450 r!27340)) (not (is-Union!7450 r!27340)) (not (is-Star!7450 r!27340))))))

(declare-fun res!1060676 () Bool)

(assert (=> start!244734 (=> (not res!1060676) (not e!1590317))))

(declare-fun validRegex!3076 (Regex!7450) Bool)

(assert (=> start!244734 (= res!1060676 (validRegex!3076 r!27340))))

(assert (=> start!244734 e!1590317))

(assert (=> start!244734 e!1590319))

(assert (=> start!244734 tp_is_empty!12755))

(assert (=> start!244734 e!1590318))

(declare-fun b!2508934 () Bool)

(assert (=> b!2508934 (= e!1590319 tp_is_empty!12755)))

(declare-fun b!2508935 () Bool)

(assert (=> b!2508935 (= e!1590317 (not true))))

(declare-fun lt!897298 () Regex!7450)

(declare-fun matchR!3449 (Regex!7450 List!29515) Bool)

(assert (=> b!2508935 (= (matchR!3449 lt!897298 tl!4068) (matchR!3449 (derivative!145 lt!897298 tl!4068) Nil!29415))))

(declare-datatypes ((Unit!43149 0))(
  ( (Unit!43150) )
))
(declare-fun lt!897297 () Unit!43149)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!95 (Regex!7450 List!29515) Unit!43149)

(assert (=> b!2508935 (= lt!897297 (lemmaMatchRIsSameAsWholeDerivativeAndNil!95 lt!897298 tl!4068))))

(assert (=> b!2508935 (= lt!897298 (Union!7450 (Concat!12146 (derivativeStep!2019 (regOne!15412 r!27340) c!14016) (regTwo!15412 r!27340)) EmptyLang!7450))))

(assert (= (and start!244734 res!1060676) b!2508932))

(assert (= (and b!2508932 res!1060673) b!2508933))

(assert (= (and b!2508933 res!1060674) b!2508931))

(assert (= (and b!2508931 res!1060675) b!2508935))

(assert (= (and start!244734 (is-ElementMatch!7450 r!27340)) b!2508934))

(assert (= (and start!244734 (is-Concat!12146 r!27340)) b!2508930))

(assert (= (and start!244734 (is-Star!7450 r!27340)) b!2508927))

(assert (= (and start!244734 (is-Union!7450 r!27340)) b!2508928))

(assert (= (and start!244734 (is-Cons!29415 tl!4068)) b!2508929))

(declare-fun m!2868441 () Bool)

(assert (=> b!2508931 m!2868441))

(declare-fun m!2868443 () Bool)

(assert (=> b!2508932 m!2868443))

(assert (=> b!2508932 m!2868443))

(declare-fun m!2868445 () Bool)

(assert (=> b!2508932 m!2868445))

(assert (=> b!2508932 m!2868445))

(declare-fun m!2868447 () Bool)

(assert (=> b!2508932 m!2868447))

(declare-fun m!2868449 () Bool)

(assert (=> start!244734 m!2868449))

(declare-fun m!2868451 () Bool)

(assert (=> b!2508935 m!2868451))

(declare-fun m!2868453 () Bool)

(assert (=> b!2508935 m!2868453))

(declare-fun m!2868455 () Bool)

(assert (=> b!2508935 m!2868455))

(declare-fun m!2868457 () Bool)

(assert (=> b!2508935 m!2868457))

(assert (=> b!2508935 m!2868453))

(declare-fun m!2868459 () Bool)

(assert (=> b!2508935 m!2868459))

(push 1)

(assert tp_is_empty!12755)

(assert (not b!2508928))

(assert (not b!2508931))

(assert (not b!2508932))

(assert (not start!244734))

(assert (not b!2508930))

(assert (not b!2508935))

(assert (not b!2508929))

(assert (not b!2508927))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

