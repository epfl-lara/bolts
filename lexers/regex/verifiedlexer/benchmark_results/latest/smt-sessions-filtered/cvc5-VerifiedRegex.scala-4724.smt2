; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!244370 () Bool)

(assert start!244370)

(declare-fun b!2504185 () Bool)

(declare-fun e!1587939 () Bool)

(declare-fun tp!801413 () Bool)

(declare-fun tp!801416 () Bool)

(assert (=> b!2504185 (= e!1587939 (and tp!801413 tp!801416))))

(declare-fun b!2504186 () Bool)

(declare-fun tp_is_empty!12699 () Bool)

(assert (=> b!2504186 (= e!1587939 tp_is_empty!12699)))

(declare-fun b!2504187 () Bool)

(declare-fun res!1058763 () Bool)

(declare-fun e!1587935 () Bool)

(assert (=> b!2504187 (=> (not res!1058763) (not e!1587935))))

(declare-datatypes ((C!15002 0))(
  ( (C!15003 (val!9153 Int)) )
))
(declare-datatypes ((Regex!7422 0))(
  ( (ElementMatch!7422 (c!398634 C!15002)) (Concat!12118 (regOne!15356 Regex!7422) (regTwo!15356 Regex!7422)) (EmptyExpr!7422) (Star!7422 (reg!7751 Regex!7422)) (EmptyLang!7422) (Union!7422 (regOne!15357 Regex!7422) (regTwo!15357 Regex!7422)) )
))
(declare-fun r!27340 () Regex!7422)

(declare-fun nullable!2339 (Regex!7422) Bool)

(assert (=> b!2504187 (= res!1058763 (nullable!2339 (regOne!15356 r!27340)))))

(declare-fun b!2504188 () Bool)

(declare-fun e!1587936 () Bool)

(assert (=> b!2504188 (= e!1587935 (not e!1587936))))

(declare-fun res!1058765 () Bool)

(assert (=> b!2504188 (=> res!1058765 e!1587936)))

(declare-fun lt!896258 () Bool)

(assert (=> b!2504188 (= res!1058765 (not lt!896258))))

(declare-fun e!1587937 () Bool)

(assert (=> b!2504188 e!1587937))

(declare-fun res!1058767 () Bool)

(assert (=> b!2504188 (=> res!1058767 e!1587937)))

(assert (=> b!2504188 (= res!1058767 lt!896258)))

(declare-fun lt!896260 () Regex!7422)

(declare-datatypes ((List!29487 0))(
  ( (Nil!29387) (Cons!29387 (h!34807 C!15002) (t!211186 List!29487)) )
))
(declare-fun tl!4068 () List!29487)

(declare-fun matchR!3425 (Regex!7422 List!29487) Bool)

(assert (=> b!2504188 (= lt!896258 (matchR!3425 lt!896260 tl!4068))))

(declare-fun lt!896257 () Regex!7422)

(declare-datatypes ((Unit!43101 0))(
  ( (Unit!43102) )
))
(declare-fun lt!896259 () Unit!43101)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!117 (Regex!7422 Regex!7422 List!29487) Unit!43101)

(assert (=> b!2504188 (= lt!896259 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!117 lt!896260 lt!896257 tl!4068))))

(declare-fun lt!896254 () Regex!7422)

(declare-fun derivative!117 (Regex!7422 List!29487) Regex!7422)

(assert (=> b!2504188 (= (matchR!3425 lt!896254 tl!4068) (matchR!3425 (derivative!117 lt!896254 tl!4068) Nil!29387))))

(declare-fun lt!896253 () Unit!43101)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!71 (Regex!7422 List!29487) Unit!43101)

(assert (=> b!2504188 (= lt!896253 (lemmaMatchRIsSameAsWholeDerivativeAndNil!71 lt!896254 tl!4068))))

(assert (=> b!2504188 (= lt!896254 (Union!7422 lt!896260 lt!896257))))

(declare-fun c!14016 () C!15002)

(declare-fun derivativeStep!1991 (Regex!7422 C!15002) Regex!7422)

(assert (=> b!2504188 (= lt!896257 (derivativeStep!1991 (regTwo!15356 r!27340) c!14016))))

(declare-fun lt!896255 () Regex!7422)

(assert (=> b!2504188 (= lt!896260 (Concat!12118 lt!896255 (regTwo!15356 r!27340)))))

(assert (=> b!2504188 (= lt!896255 (derivativeStep!1991 (regOne!15356 r!27340) c!14016))))

(declare-fun b!2504189 () Bool)

(declare-fun res!1058764 () Bool)

(assert (=> b!2504189 (=> (not res!1058764) (not e!1587935))))

(assert (=> b!2504189 (= res!1058764 (nullable!2339 (derivative!117 (derivativeStep!1991 r!27340 c!14016) tl!4068)))))

(declare-fun res!1058766 () Bool)

(assert (=> start!244370 (=> (not res!1058766) (not e!1587935))))

(declare-fun validRegex!3048 (Regex!7422) Bool)

(assert (=> start!244370 (= res!1058766 (validRegex!3048 r!27340))))

(assert (=> start!244370 e!1587935))

(assert (=> start!244370 e!1587939))

(assert (=> start!244370 tp_is_empty!12699))

(declare-fun e!1587938 () Bool)

(assert (=> start!244370 e!1587938))

(declare-fun b!2504190 () Bool)

(declare-fun tp!801414 () Bool)

(assert (=> b!2504190 (= e!1587938 (and tp_is_empty!12699 tp!801414))))

(declare-fun b!2504191 () Bool)

(declare-fun res!1058768 () Bool)

(assert (=> b!2504191 (=> (not res!1058768) (not e!1587935))))

(assert (=> b!2504191 (= res!1058768 (and (not (is-EmptyExpr!7422 r!27340)) (not (is-EmptyLang!7422 r!27340)) (not (is-ElementMatch!7422 r!27340)) (not (is-Union!7422 r!27340)) (not (is-Star!7422 r!27340))))))

(declare-fun b!2504192 () Bool)

(declare-fun tp!801412 () Bool)

(declare-fun tp!801415 () Bool)

(assert (=> b!2504192 (= e!1587939 (and tp!801412 tp!801415))))

(declare-fun b!2504193 () Bool)

(declare-fun tp!801411 () Bool)

(assert (=> b!2504193 (= e!1587939 tp!801411)))

(declare-fun b!2504194 () Bool)

(assert (=> b!2504194 (= e!1587937 (matchR!3425 lt!896257 tl!4068))))

(declare-fun b!2504195 () Bool)

(assert (=> b!2504195 (= e!1587936 true)))

(declare-datatypes ((tuple2!29422 0))(
  ( (tuple2!29423 (_1!17253 List!29487) (_2!17253 List!29487)) )
))
(declare-datatypes ((Option!5831 0))(
  ( (None!5830) (Some!5830 (v!31761 tuple2!29422)) )
))
(declare-fun isDefined!4653 (Option!5831) Bool)

(declare-fun findConcatSeparation!853 (Regex!7422 Regex!7422 List!29487 List!29487 List!29487) Option!5831)

(assert (=> b!2504195 (isDefined!4653 (findConcatSeparation!853 lt!896255 (regTwo!15356 r!27340) Nil!29387 tl!4068 tl!4068))))

(declare-fun lt!896256 () Unit!43101)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!135 (Regex!7422 Regex!7422 List!29487) Unit!43101)

(assert (=> b!2504195 (= lt!896256 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!135 lt!896255 (regTwo!15356 r!27340) tl!4068))))

(assert (= (and start!244370 res!1058766) b!2504189))

(assert (= (and b!2504189 res!1058764) b!2504191))

(assert (= (and b!2504191 res!1058768) b!2504187))

(assert (= (and b!2504187 res!1058763) b!2504188))

(assert (= (and b!2504188 (not res!1058767)) b!2504194))

(assert (= (and b!2504188 (not res!1058765)) b!2504195))

(assert (= (and start!244370 (is-ElementMatch!7422 r!27340)) b!2504186))

(assert (= (and start!244370 (is-Concat!12118 r!27340)) b!2504185))

(assert (= (and start!244370 (is-Star!7422 r!27340)) b!2504193))

(assert (= (and start!244370 (is-Union!7422 r!27340)) b!2504192))

(assert (= (and start!244370 (is-Cons!29387 tl!4068)) b!2504190))

(declare-fun m!2865389 () Bool)

(assert (=> b!2504187 m!2865389))

(declare-fun m!2865391 () Bool)

(assert (=> b!2504194 m!2865391))

(declare-fun m!2865393 () Bool)

(assert (=> b!2504195 m!2865393))

(assert (=> b!2504195 m!2865393))

(declare-fun m!2865395 () Bool)

(assert (=> b!2504195 m!2865395))

(declare-fun m!2865397 () Bool)

(assert (=> b!2504195 m!2865397))

(declare-fun m!2865399 () Bool)

(assert (=> b!2504188 m!2865399))

(declare-fun m!2865401 () Bool)

(assert (=> b!2504188 m!2865401))

(declare-fun m!2865403 () Bool)

(assert (=> b!2504188 m!2865403))

(declare-fun m!2865405 () Bool)

(assert (=> b!2504188 m!2865405))

(declare-fun m!2865407 () Bool)

(assert (=> b!2504188 m!2865407))

(assert (=> b!2504188 m!2865407))

(declare-fun m!2865409 () Bool)

(assert (=> b!2504188 m!2865409))

(declare-fun m!2865411 () Bool)

(assert (=> b!2504188 m!2865411))

(declare-fun m!2865413 () Bool)

(assert (=> b!2504188 m!2865413))

(declare-fun m!2865415 () Bool)

(assert (=> b!2504189 m!2865415))

(assert (=> b!2504189 m!2865415))

(declare-fun m!2865417 () Bool)

(assert (=> b!2504189 m!2865417))

(assert (=> b!2504189 m!2865417))

(declare-fun m!2865419 () Bool)

(assert (=> b!2504189 m!2865419))

(declare-fun m!2865421 () Bool)

(assert (=> start!244370 m!2865421))

(push 1)

(assert (not b!2504192))

(assert (not b!2504193))

(assert (not b!2504188))

(assert (not b!2504189))

(assert (not b!2504190))

(assert tp_is_empty!12699)

(assert (not start!244370))

(assert (not b!2504195))

(assert (not b!2504194))

(assert (not b!2504187))

(assert (not b!2504185))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

