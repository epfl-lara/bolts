; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742492 () Bool)

(assert start!742492)

(declare-fun b!7838286 () Bool)

(declare-fun e!4634766 () Bool)

(declare-fun tp!2319042 () Bool)

(assert (=> b!7838286 (= e!4634766 tp!2319042)))

(declare-fun b!7838287 () Bool)

(declare-fun tp_is_empty!52339 () Bool)

(assert (=> b!7838287 (= e!4634766 tp_is_empty!52339)))

(declare-fun b!7838288 () Bool)

(declare-fun e!4634764 () Bool)

(declare-fun tp!2319047 () Bool)

(declare-fun tp!2319044 () Bool)

(assert (=> b!7838288 (= e!4634764 (and tp!2319047 tp!2319044))))

(declare-fun b!7838289 () Bool)

(assert (=> b!7838289 (= e!4634764 tp_is_empty!52339)))

(declare-fun b!7838290 () Bool)

(declare-fun tp!2319051 () Bool)

(declare-fun tp!2319052 () Bool)

(assert (=> b!7838290 (= e!4634766 (and tp!2319051 tp!2319052))))

(declare-fun b!7838291 () Bool)

(declare-fun e!4634765 () Bool)

(declare-fun tp!2319040 () Bool)

(assert (=> b!7838291 (= e!4634765 (and tp_is_empty!52339 tp!2319040))))

(declare-fun b!7838292 () Bool)

(declare-fun tp!2319050 () Bool)

(declare-fun tp!2319045 () Bool)

(assert (=> b!7838292 (= e!4634764 (and tp!2319050 tp!2319045))))

(declare-fun b!7838293 () Bool)

(declare-fun tp!2319043 () Bool)

(declare-fun tp!2319049 () Bool)

(assert (=> b!7838293 (= e!4634766 (and tp!2319043 tp!2319049))))

(declare-fun b!7838294 () Bool)

(declare-fun res!3117563 () Bool)

(declare-fun e!4634768 () Bool)

(assert (=> b!7838294 (=> (not res!3117563) (not e!4634768))))

(declare-datatypes ((C!42310 0))(
  ( (C!42311 (val!31595 Int)) )
))
(declare-datatypes ((List!73829 0))(
  ( (Nil!73705) (Cons!73705 (h!80153 C!42310) (t!388564 List!73829)) )
))
(declare-fun s1!2717 () List!73829)

(declare-fun s!10212 () List!73829)

(declare-fun s2!2463 () List!73829)

(declare-fun ++!18026 (List!73829 List!73829) List!73829)

(assert (=> b!7838294 (= res!3117563 (= (++!18026 s1!2717 s2!2463) s!10212))))

(declare-fun b!7838295 () Bool)

(declare-fun res!3117561 () Bool)

(assert (=> b!7838295 (=> (not res!3117561) (not e!4634768))))

(declare-datatypes ((Regex!20992 0))(
  ( (ElementMatch!20992 (c!1441373 C!42310)) (Concat!29837 (regOne!42496 Regex!20992) (regTwo!42496 Regex!20992)) (EmptyExpr!20992) (Star!20992 (reg!21321 Regex!20992)) (EmptyLang!20992) (Union!20992 (regOne!42497 Regex!20992) (regTwo!42497 Regex!20992)) )
))
(declare-fun r2!3226 () Regex!20992)

(declare-fun validRegex!11406 (Regex!20992) Bool)

(assert (=> b!7838295 (= res!3117561 (validRegex!11406 r2!3226))))

(declare-fun b!7838296 () Bool)

(declare-fun e!4634769 () Bool)

(declare-fun tp!2319041 () Bool)

(assert (=> b!7838296 (= e!4634769 (and tp_is_empty!52339 tp!2319041))))

(declare-fun res!3117562 () Bool)

(assert (=> start!742492 (=> (not res!3117562) (not e!4634768))))

(declare-fun r1!3326 () Regex!20992)

(assert (=> start!742492 (= res!3117562 (validRegex!11406 r1!3326))))

(assert (=> start!742492 e!4634768))

(assert (=> start!742492 e!4634765))

(assert (=> start!742492 e!4634764))

(declare-fun e!4634767 () Bool)

(assert (=> start!742492 e!4634767))

(assert (=> start!742492 e!4634766))

(assert (=> start!742492 e!4634769))

(declare-fun b!7838297 () Bool)

(declare-fun tp!2319046 () Bool)

(assert (=> b!7838297 (= e!4634767 (and tp_is_empty!52339 tp!2319046))))

(declare-fun b!7838298 () Bool)

(assert (=> b!7838298 (= e!4634768 false)))

(declare-fun lt!2678223 () Bool)

(declare-fun matchR!10448 (Regex!20992 List!73829) Bool)

(assert (=> b!7838298 (= lt!2678223 (matchR!10448 r1!3326 s1!2717))))

(declare-fun b!7838299 () Bool)

(declare-fun tp!2319048 () Bool)

(assert (=> b!7838299 (= e!4634764 tp!2319048)))

(assert (= (and start!742492 res!3117562) b!7838295))

(assert (= (and b!7838295 res!3117561) b!7838294))

(assert (= (and b!7838294 res!3117563) b!7838298))

(assert (= (and start!742492 (is-Cons!73705 s1!2717)) b!7838291))

(assert (= (and start!742492 (is-ElementMatch!20992 r1!3326)) b!7838289))

(assert (= (and start!742492 (is-Concat!29837 r1!3326)) b!7838288))

(assert (= (and start!742492 (is-Star!20992 r1!3326)) b!7838299))

(assert (= (and start!742492 (is-Union!20992 r1!3326)) b!7838292))

(assert (= (and start!742492 (is-Cons!73705 s!10212)) b!7838297))

(assert (= (and start!742492 (is-ElementMatch!20992 r2!3226)) b!7838287))

(assert (= (and start!742492 (is-Concat!29837 r2!3226)) b!7838293))

(assert (= (and start!742492 (is-Star!20992 r2!3226)) b!7838286))

(assert (= (and start!742492 (is-Union!20992 r2!3226)) b!7838290))

(assert (= (and start!742492 (is-Cons!73705 s2!2463)) b!7838296))

(declare-fun m!8252602 () Bool)

(assert (=> b!7838294 m!8252602))

(declare-fun m!8252604 () Bool)

(assert (=> b!7838295 m!8252604))

(declare-fun m!8252606 () Bool)

(assert (=> start!742492 m!8252606))

(declare-fun m!8252608 () Bool)

(assert (=> b!7838298 m!8252608))

(push 1)

(assert (not b!7838292))

(assert (not b!7838298))

(assert tp_is_empty!52339)

(assert (not b!7838288))

(assert (not b!7838290))

(assert (not b!7838291))

(assert (not b!7838297))

(assert (not b!7838295))

(assert (not b!7838296))

(assert (not start!742492))

(assert (not b!7838294))

(assert (not b!7838293))

(assert (not b!7838299))

(assert (not b!7838286))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

