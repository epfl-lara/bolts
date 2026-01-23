; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!287262 () Bool)

(assert start!287262)

(declare-fun b!2968342 () Bool)

(declare-fun e!1867864 () Bool)

(declare-fun tp_is_empty!16055 () Bool)

(assert (=> b!2968342 (= e!1867864 tp_is_empty!16055)))

(declare-fun b!2968343 () Bool)

(declare-fun tp!946688 () Bool)

(assert (=> b!2968343 (= e!1867864 tp!946688)))

(declare-fun b!2968344 () Bool)

(declare-fun e!1867866 () Bool)

(declare-fun e!1867865 () Bool)

(assert (=> b!2968344 (= e!1867866 (not e!1867865))))

(declare-fun res!1224289 () Bool)

(assert (=> b!2968344 (=> res!1224289 e!1867865)))

(declare-fun lt!1035698 () Bool)

(declare-datatypes ((C!18678 0))(
  ( (C!18679 (val!11375 Int)) )
))
(declare-datatypes ((Regex!9246 0))(
  ( (ElementMatch!9246 (c!486882 C!18678)) (Concat!14567 (regOne!19004 Regex!9246) (regTwo!19004 Regex!9246)) (EmptyExpr!9246) (Star!9246 (reg!9575 Regex!9246)) (EmptyLang!9246) (Union!9246 (regOne!19005 Regex!9246) (regTwo!19005 Regex!9246)) )
))
(declare-fun r!17423 () Regex!9246)

(assert (=> b!2968344 (= res!1224289 (or lt!1035698 (is-Concat!14567 r!17423) (is-Union!9246 r!17423) (not (is-Star!9246 r!17423))))))

(declare-datatypes ((List!35111 0))(
  ( (Nil!34987) (Cons!34987 (h!40407 C!18678) (t!234176 List!35111)) )
))
(declare-fun s!11993 () List!35111)

(declare-fun matchRSpec!1383 (Regex!9246 List!35111) Bool)

(assert (=> b!2968344 (= lt!1035698 (matchRSpec!1383 r!17423 s!11993))))

(declare-fun matchR!4128 (Regex!9246 List!35111) Bool)

(assert (=> b!2968344 (= lt!1035698 (matchR!4128 r!17423 s!11993))))

(declare-datatypes ((Unit!48871 0))(
  ( (Unit!48872) )
))
(declare-fun lt!1035697 () Unit!48871)

(declare-fun mainMatchTheorem!1383 (Regex!9246 List!35111) Unit!48871)

(assert (=> b!2968344 (= lt!1035697 (mainMatchTheorem!1383 r!17423 s!11993))))

(declare-fun b!2968345 () Bool)

(declare-fun tp!946689 () Bool)

(declare-fun tp!946690 () Bool)

(assert (=> b!2968345 (= e!1867864 (and tp!946689 tp!946690))))

(declare-fun b!2968346 () Bool)

(declare-fun tp!946686 () Bool)

(declare-fun tp!946687 () Bool)

(assert (=> b!2968346 (= e!1867864 (and tp!946686 tp!946687))))

(declare-fun res!1224290 () Bool)

(assert (=> start!287262 (=> (not res!1224290) (not e!1867866))))

(declare-fun validRegex!3979 (Regex!9246) Bool)

(assert (=> start!287262 (= res!1224290 (validRegex!3979 r!17423))))

(assert (=> start!287262 e!1867866))

(assert (=> start!287262 e!1867864))

(declare-fun e!1867867 () Bool)

(assert (=> start!287262 e!1867867))

(declare-fun b!2968347 () Bool)

(declare-fun res!1224291 () Bool)

(assert (=> b!2968347 (=> res!1224291 e!1867865)))

(declare-fun isEmptyLang!360 (Regex!9246) Bool)

(declare-fun simplify!247 (Regex!9246) Regex!9246)

(assert (=> b!2968347 (= res!1224291 (not (isEmptyLang!360 (simplify!247 (reg!9575 r!17423)))))))

(declare-fun b!2968348 () Bool)

(declare-fun tp!946691 () Bool)

(assert (=> b!2968348 (= e!1867867 (and tp_is_empty!16055 tp!946691))))

(declare-fun b!2968349 () Bool)

(assert (=> b!2968349 (= e!1867865 true)))

(assert (= (and start!287262 res!1224290) b!2968344))

(assert (= (and b!2968344 (not res!1224289)) b!2968347))

(assert (= (and b!2968347 (not res!1224291)) b!2968349))

(assert (= (and start!287262 (is-ElementMatch!9246 r!17423)) b!2968342))

(assert (= (and start!287262 (is-Concat!14567 r!17423)) b!2968346))

(assert (= (and start!287262 (is-Star!9246 r!17423)) b!2968343))

(assert (= (and start!287262 (is-Union!9246 r!17423)) b!2968345))

(assert (= (and start!287262 (is-Cons!34987 s!11993)) b!2968348))

(declare-fun m!3337321 () Bool)

(assert (=> b!2968344 m!3337321))

(declare-fun m!3337323 () Bool)

(assert (=> b!2968344 m!3337323))

(declare-fun m!3337325 () Bool)

(assert (=> b!2968344 m!3337325))

(declare-fun m!3337327 () Bool)

(assert (=> start!287262 m!3337327))

(declare-fun m!3337329 () Bool)

(assert (=> b!2968347 m!3337329))

(assert (=> b!2968347 m!3337329))

(declare-fun m!3337331 () Bool)

(assert (=> b!2968347 m!3337331))

(push 1)

(assert (not b!2968347))

(assert (not b!2968345))

(assert (not b!2968346))

(assert (not b!2968348))

(assert (not b!2968344))

(assert (not start!287262))

(assert tp_is_empty!16055)

(assert (not b!2968343))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

