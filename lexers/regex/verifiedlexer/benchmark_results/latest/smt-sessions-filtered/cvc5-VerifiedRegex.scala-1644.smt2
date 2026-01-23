; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!83452 () Bool)

(assert start!83452)

(declare-fun b!933380 () Bool)

(declare-fun e!606432 () Bool)

(declare-fun tp!289662 () Bool)

(declare-fun tp!289658 () Bool)

(assert (=> b!933380 (= e!606432 (and tp!289662 tp!289658))))

(declare-fun b!933381 () Bool)

(declare-fun tp!289661 () Bool)

(assert (=> b!933381 (= e!606432 tp!289661)))

(declare-fun b!933382 () Bool)

(declare-fun tp!289659 () Bool)

(declare-fun tp!289660 () Bool)

(assert (=> b!933382 (= e!606432 (and tp!289659 tp!289660))))

(declare-fun res!423839 () Bool)

(declare-fun e!606430 () Bool)

(assert (=> start!83452 (=> (not res!423839) (not e!606430))))

(declare-datatypes ((C!5662 0))(
  ( (C!5663 (val!3079 Int)) )
))
(declare-datatypes ((Regex!2546 0))(
  ( (ElementMatch!2546 (c!151795 C!5662)) (Concat!4379 (regOne!5604 Regex!2546) (regTwo!5604 Regex!2546)) (EmptyExpr!2546) (Star!2546 (reg!2875 Regex!2546)) (EmptyLang!2546) (Union!2546 (regOne!5605 Regex!2546) (regTwo!5605 Regex!2546)) )
))
(declare-fun r!15766 () Regex!2546)

(declare-fun validRegex!1015 (Regex!2546) Bool)

(assert (=> start!83452 (= res!423839 (validRegex!1015 r!15766))))

(assert (=> start!83452 e!606430))

(assert (=> start!83452 e!606432))

(declare-fun e!606431 () Bool)

(assert (=> start!83452 e!606431))

(declare-fun b!933383 () Bool)

(declare-fun tp_is_empty!4735 () Bool)

(declare-fun tp!289657 () Bool)

(assert (=> b!933383 (= e!606431 (and tp_is_empty!4735 tp!289657))))

(declare-fun b!933384 () Bool)

(assert (=> b!933384 (= e!606430 (not true))))

(declare-datatypes ((List!9776 0))(
  ( (Nil!9760) (Cons!9760 (h!15161 C!5662) (t!100822 List!9776)) )
))
(declare-fun s!10566 () List!9776)

(declare-fun matchR!1084 (Regex!2546 List!9776) Bool)

(declare-fun matchRSpec!347 (Regex!2546 List!9776) Bool)

(assert (=> b!933384 (= (matchR!1084 r!15766 s!10566) (matchRSpec!347 r!15766 s!10566))))

(declare-datatypes ((Unit!14711 0))(
  ( (Unit!14712) )
))
(declare-fun lt!340814 () Unit!14711)

(declare-fun mainMatchTheorem!347 (Regex!2546 List!9776) Unit!14711)

(assert (=> b!933384 (= lt!340814 (mainMatchTheorem!347 r!15766 s!10566))))

(declare-fun b!933385 () Bool)

(assert (=> b!933385 (= e!606432 tp_is_empty!4735)))

(assert (= (and start!83452 res!423839) b!933384))

(assert (= (and start!83452 (is-ElementMatch!2546 r!15766)) b!933385))

(assert (= (and start!83452 (is-Concat!4379 r!15766)) b!933380))

(assert (= (and start!83452 (is-Star!2546 r!15766)) b!933381))

(assert (= (and start!83452 (is-Union!2546 r!15766)) b!933382))

(assert (= (and start!83452 (is-Cons!9760 s!10566)) b!933383))

(declare-fun m!1154341 () Bool)

(assert (=> start!83452 m!1154341))

(declare-fun m!1154343 () Bool)

(assert (=> b!933384 m!1154343))

(declare-fun m!1154345 () Bool)

(assert (=> b!933384 m!1154345))

(declare-fun m!1154347 () Bool)

(assert (=> b!933384 m!1154347))

(push 1)

(assert (not b!933381))

(assert (not b!933383))

(assert (not start!83452))

(assert (not b!933382))

(assert tp_is_empty!4735)

(assert (not b!933384))

(assert (not b!933380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

