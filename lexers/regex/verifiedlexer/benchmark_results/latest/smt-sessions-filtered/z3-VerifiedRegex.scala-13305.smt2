; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723270 () Bool)

(assert start!723270)

(declare-fun b!7448310 () Bool)

(declare-fun e!4446559 () Bool)

(declare-fun tp!2157487 () Bool)

(declare-fun tp!2157485 () Bool)

(assert (=> b!7448310 (= e!4446559 (and tp!2157487 tp!2157485))))

(assert (=> start!723270 false))

(declare-fun e!4446558 () Bool)

(assert (=> start!723270 e!4446558))

(declare-fun e!4446560 () Bool)

(assert (=> start!723270 e!4446560))

(assert (=> start!723270 e!4446559))

(declare-fun b!7448311 () Bool)

(declare-fun tp!2157498 () Bool)

(declare-fun tp!2157489 () Bool)

(assert (=> b!7448311 (= e!4446558 (and tp!2157498 tp!2157489))))

(declare-fun b!7448312 () Bool)

(declare-fun tp_is_empty!49235 () Bool)

(assert (=> b!7448312 (= e!4446559 tp_is_empty!49235)))

(declare-fun b!7448313 () Bool)

(declare-fun tp!2157496 () Bool)

(assert (=> b!7448313 (= e!4446558 tp!2157496)))

(declare-fun b!7448314 () Bool)

(declare-fun tp!2157486 () Bool)

(assert (=> b!7448314 (= e!4446559 tp!2157486)))

(declare-fun b!7448315 () Bool)

(declare-fun tp!2157495 () Bool)

(declare-fun tp!2157494 () Bool)

(assert (=> b!7448315 (= e!4446560 (and tp!2157495 tp!2157494))))

(declare-fun b!7448316 () Bool)

(declare-fun tp!2157499 () Bool)

(declare-fun tp!2157493 () Bool)

(assert (=> b!7448316 (= e!4446558 (and tp!2157499 tp!2157493))))

(declare-fun b!7448317 () Bool)

(declare-fun tp!2157488 () Bool)

(declare-fun tp!2157497 () Bool)

(assert (=> b!7448317 (= e!4446560 (and tp!2157488 tp!2157497))))

(declare-fun b!7448318 () Bool)

(assert (=> b!7448318 (= e!4446558 tp_is_empty!49235)))

(declare-fun b!7448319 () Bool)

(assert (=> b!7448319 (= e!4446560 tp_is_empty!49235)))

(declare-fun b!7448320 () Bool)

(declare-fun tp!2157492 () Bool)

(assert (=> b!7448320 (= e!4446560 tp!2157492)))

(declare-fun b!7448321 () Bool)

(declare-fun tp!2157490 () Bool)

(declare-fun tp!2157491 () Bool)

(assert (=> b!7448321 (= e!4446559 (and tp!2157490 tp!2157491))))

(declare-datatypes ((C!39220 0))(
  ( (C!39221 (val!30008 Int)) )
))
(declare-datatypes ((Regex!19473 0))(
  ( (ElementMatch!19473 (c!1377550 C!39220)) (Concat!28318 (regOne!39458 Regex!19473) (regTwo!39458 Regex!19473)) (EmptyExpr!19473) (Star!19473 (reg!19802 Regex!19473)) (EmptyLang!19473) (Union!19473 (regOne!39459 Regex!19473) (regTwo!39459 Regex!19473)) )
))
(declare-fun r1!5845 () Regex!19473)

(get-info :version)

(assert (= (and start!723270 ((_ is ElementMatch!19473) r1!5845)) b!7448318))

(assert (= (and start!723270 ((_ is Concat!28318) r1!5845)) b!7448316))

(assert (= (and start!723270 ((_ is Star!19473) r1!5845)) b!7448313))

(assert (= (and start!723270 ((_ is Union!19473) r1!5845)) b!7448311))

(declare-fun r2!5783 () Regex!19473)

(assert (= (and start!723270 ((_ is ElementMatch!19473) r2!5783)) b!7448319))

(assert (= (and start!723270 ((_ is Concat!28318) r2!5783)) b!7448315))

(assert (= (and start!723270 ((_ is Star!19473) r2!5783)) b!7448320))

(assert (= (and start!723270 ((_ is Union!19473) r2!5783)) b!7448317))

(declare-fun rTail!78 () Regex!19473)

(assert (= (and start!723270 ((_ is ElementMatch!19473) rTail!78)) b!7448312))

(assert (= (and start!723270 ((_ is Concat!28318) rTail!78)) b!7448310))

(assert (= (and start!723270 ((_ is Star!19473) rTail!78)) b!7448314))

(assert (= (and start!723270 ((_ is Union!19473) rTail!78)) b!7448321))

(check-sat (not b!7448321) tp_is_empty!49235 (not b!7448311) (not b!7448317) (not b!7448313) (not b!7448315) (not b!7448320) (not b!7448314) (not b!7448310) (not b!7448316))
(check-sat)
