; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!244850 () Bool)

(assert start!244850)

(declare-fun b!2510495 () Bool)

(declare-fun e!1591105 () Bool)

(declare-fun tp_is_empty!12775 () Bool)

(declare-fun tp!802932 () Bool)

(assert (=> b!2510495 (= e!1591105 (and tp_is_empty!12775 tp!802932))))

(declare-fun b!2510496 () Bool)

(declare-fun e!1591106 () Bool)

(declare-datatypes ((C!15078 0))(
  ( (C!15079 (val!9191 Int)) )
))
(declare-datatypes ((List!29525 0))(
  ( (Nil!29425) (Cons!29425 (h!34845 C!15078) (t!211224 List!29525)) )
))
(declare-fun tl!4068 () List!29525)

(declare-datatypes ((Regex!7460 0))(
  ( (ElementMatch!7460 (c!399904 C!15078)) (Concat!12156 (regOne!15432 Regex!7460) (regTwo!15432 Regex!7460)) (EmptyExpr!7460) (Star!7460 (reg!7789 Regex!7460)) (EmptyLang!7460) (Union!7460 (regOne!15433 Regex!7460) (regTwo!15433 Regex!7460)) )
))
(declare-fun matchR!3459 (Regex!7460 List!29525) Bool)

(assert (=> b!2510496 (= e!1591106 (matchR!3459 EmptyLang!7460 tl!4068))))

(declare-fun b!2510497 () Bool)

(declare-fun e!1591107 () Bool)

(assert (=> b!2510497 (= e!1591107 tp_is_empty!12775)))

(declare-fun b!2510498 () Bool)

(declare-fun res!1061273 () Bool)

(declare-fun e!1591108 () Bool)

(assert (=> b!2510498 (=> (not res!1061273) (not e!1591108))))

(declare-fun r!27340 () Regex!7460)

(assert (=> b!2510498 (= res!1061273 (and (not (is-EmptyExpr!7460 r!27340)) (not (is-EmptyLang!7460 r!27340)) (not (is-ElementMatch!7460 r!27340)) (not (is-Union!7460 r!27340)) (not (is-Star!7460 r!27340))))))

(declare-fun b!2510499 () Bool)

(declare-fun res!1061269 () Bool)

(assert (=> b!2510499 (=> (not res!1061269) (not e!1591108))))

(declare-fun nullable!2377 (Regex!7460) Bool)

(assert (=> b!2510499 (= res!1061269 (not (nullable!2377 (regOne!15432 r!27340))))))

(declare-fun res!1061271 () Bool)

(assert (=> start!244850 (=> (not res!1061271) (not e!1591108))))

(declare-fun validRegex!3086 (Regex!7460) Bool)

(assert (=> start!244850 (= res!1061271 (validRegex!3086 r!27340))))

(assert (=> start!244850 e!1591108))

(assert (=> start!244850 e!1591107))

(assert (=> start!244850 tp_is_empty!12775))

(assert (=> start!244850 e!1591105))

(declare-fun b!2510500 () Bool)

(declare-fun tp!802933 () Bool)

(declare-fun tp!802936 () Bool)

(assert (=> b!2510500 (= e!1591107 (and tp!802933 tp!802936))))

(declare-fun b!2510501 () Bool)

(assert (=> b!2510501 (= e!1591108 (not true))))

(declare-fun derivative!155 (Regex!7460 List!29525) Regex!7460)

(assert (=> b!2510501 (= (derivative!155 EmptyLang!7460 tl!4068) EmptyLang!7460)))

(declare-datatypes ((Unit!43169 0))(
  ( (Unit!43170) )
))
(declare-fun lt!897582 () Unit!43169)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!7 (Regex!7460 List!29525) Unit!43169)

(assert (=> b!2510501 (= lt!897582 (lemmaEmptyLangDerivativeIsAFixPoint!7 EmptyLang!7460 tl!4068))))

(assert (=> b!2510501 e!1591106))

(declare-fun res!1061272 () Bool)

(assert (=> b!2510501 (=> res!1061272 e!1591106)))

(declare-fun lt!897579 () Regex!7460)

(assert (=> b!2510501 (= res!1061272 (matchR!3459 lt!897579 tl!4068))))

(declare-fun lt!897580 () Unit!43169)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!147 (Regex!7460 Regex!7460 List!29525) Unit!43169)

(assert (=> b!2510501 (= lt!897580 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!147 lt!897579 EmptyLang!7460 tl!4068))))

(declare-fun lt!897581 () Regex!7460)

(assert (=> b!2510501 (= (matchR!3459 lt!897581 tl!4068) (matchR!3459 (derivative!155 lt!897581 tl!4068) Nil!29425))))

(declare-fun lt!897583 () Unit!43169)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!105 (Regex!7460 List!29525) Unit!43169)

(assert (=> b!2510501 (= lt!897583 (lemmaMatchRIsSameAsWholeDerivativeAndNil!105 lt!897581 tl!4068))))

(assert (=> b!2510501 (= lt!897581 (Union!7460 lt!897579 EmptyLang!7460))))

(declare-fun c!14016 () C!15078)

(declare-fun derivativeStep!2029 (Regex!7460 C!15078) Regex!7460)

(assert (=> b!2510501 (= lt!897579 (Concat!12156 (derivativeStep!2029 (regOne!15432 r!27340) c!14016) (regTwo!15432 r!27340)))))

(declare-fun b!2510502 () Bool)

(declare-fun tp!802935 () Bool)

(declare-fun tp!802931 () Bool)

(assert (=> b!2510502 (= e!1591107 (and tp!802935 tp!802931))))

(declare-fun b!2510503 () Bool)

(declare-fun tp!802934 () Bool)

(assert (=> b!2510503 (= e!1591107 tp!802934)))

(declare-fun b!2510504 () Bool)

(declare-fun res!1061270 () Bool)

(assert (=> b!2510504 (=> (not res!1061270) (not e!1591108))))

(assert (=> b!2510504 (= res!1061270 (nullable!2377 (derivative!155 (derivativeStep!2029 r!27340 c!14016) tl!4068)))))

(assert (= (and start!244850 res!1061271) b!2510504))

(assert (= (and b!2510504 res!1061270) b!2510498))

(assert (= (and b!2510498 res!1061273) b!2510499))

(assert (= (and b!2510499 res!1061269) b!2510501))

(assert (= (and b!2510501 (not res!1061272)) b!2510496))

(assert (= (and start!244850 (is-ElementMatch!7460 r!27340)) b!2510497))

(assert (= (and start!244850 (is-Concat!12156 r!27340)) b!2510500))

(assert (= (and start!244850 (is-Star!7460 r!27340)) b!2510503))

(assert (= (and start!244850 (is-Union!7460 r!27340)) b!2510502))

(assert (= (and start!244850 (is-Cons!29425 tl!4068)) b!2510495))

(declare-fun m!2869349 () Bool)

(assert (=> start!244850 m!2869349))

(declare-fun m!2869351 () Bool)

(assert (=> b!2510499 m!2869351))

(declare-fun m!2869353 () Bool)

(assert (=> b!2510496 m!2869353))

(declare-fun m!2869355 () Bool)

(assert (=> b!2510501 m!2869355))

(declare-fun m!2869357 () Bool)

(assert (=> b!2510501 m!2869357))

(declare-fun m!2869359 () Bool)

(assert (=> b!2510501 m!2869359))

(declare-fun m!2869361 () Bool)

(assert (=> b!2510501 m!2869361))

(declare-fun m!2869363 () Bool)

(assert (=> b!2510501 m!2869363))

(declare-fun m!2869365 () Bool)

(assert (=> b!2510501 m!2869365))

(declare-fun m!2869367 () Bool)

(assert (=> b!2510501 m!2869367))

(declare-fun m!2869369 () Bool)

(assert (=> b!2510501 m!2869369))

(declare-fun m!2869371 () Bool)

(assert (=> b!2510501 m!2869371))

(assert (=> b!2510501 m!2869365))

(declare-fun m!2869373 () Bool)

(assert (=> b!2510504 m!2869373))

(assert (=> b!2510504 m!2869373))

(declare-fun m!2869375 () Bool)

(assert (=> b!2510504 m!2869375))

(assert (=> b!2510504 m!2869375))

(declare-fun m!2869377 () Bool)

(assert (=> b!2510504 m!2869377))

(push 1)

(assert (not b!2510502))

(assert (not b!2510503))

(assert (not b!2510496))

(assert (not b!2510499))

(assert (not b!2510501))

(assert (not b!2510495))

(assert tp_is_empty!12775)

(assert (not b!2510500))

(assert (not start!244850))

(assert (not b!2510504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

