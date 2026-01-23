; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732830 () Bool)

(assert start!732830)

(declare-fun b!7599367 () Bool)

(assert (=> b!7599367 true))

(assert (=> b!7599367 true))

(assert (=> b!7599367 true))

(declare-fun b!7599364 () Bool)

(declare-fun e!4521463 () Bool)

(declare-fun lambda!467458 () Int)

(declare-fun Exists!4348 (Int) Bool)

(assert (=> b!7599364 (= e!4521463 (not (Exists!4348 lambda!467458)))))

(declare-fun b!7599365 () Bool)

(declare-fun e!4521462 () Bool)

(declare-fun tp!2215076 () Bool)

(declare-fun tp!2215068 () Bool)

(assert (=> b!7599365 (= e!4521462 (and tp!2215076 tp!2215068))))

(declare-fun b!7599366 () Bool)

(declare-fun e!4521460 () Bool)

(declare-fun tp_is_empty!50595 () Bool)

(declare-fun tp!2215074 () Bool)

(assert (=> b!7599366 (= e!4521460 (and tp_is_empty!50595 tp!2215074))))

(declare-fun res!3042798 () Bool)

(assert (=> b!7599367 (=> (not res!3042798) (not e!4521463))))

(assert (=> b!7599367 (= res!3042798 (Exists!4348 lambda!467458))))

(declare-fun b!7599368 () Bool)

(declare-fun tp!2215067 () Bool)

(assert (=> b!7599368 (= e!4521462 tp!2215067)))

(declare-fun b!7599369 () Bool)

(declare-fun e!4521461 () Bool)

(assert (=> b!7599369 (= e!4521461 tp_is_empty!50595)))

(declare-fun b!7599370 () Bool)

(declare-fun tp!2215066 () Bool)

(assert (=> b!7599370 (= e!4521461 tp!2215066)))

(declare-fun b!7599371 () Bool)

(declare-fun res!3042799 () Bool)

(assert (=> b!7599371 (=> (not res!3042799) (not e!4521463))))

(declare-datatypes ((C!40566 0))(
  ( (C!40567 (val!30723 Int)) )
))
(declare-datatypes ((Regex!20120 0))(
  ( (ElementMatch!20120 (c!1402209 C!40566)) (Concat!28965 (regOne!40752 Regex!20120) (regTwo!40752 Regex!20120)) (EmptyExpr!20120) (Star!20120 (reg!20449 Regex!20120)) (EmptyLang!20120) (Union!20120 (regOne!40753 Regex!20120) (regTwo!40753 Regex!20120)) )
))
(declare-fun r2!3249 () Regex!20120)

(declare-fun validRegex!10548 (Regex!20120) Bool)

(assert (=> b!7599371 (= res!3042799 (validRegex!10548 r2!3249))))

(declare-fun b!7599372 () Bool)

(declare-fun tp!2215075 () Bool)

(declare-fun tp!2215072 () Bool)

(assert (=> b!7599372 (= e!4521462 (and tp!2215075 tp!2215072))))

(declare-fun res!3042797 () Bool)

(assert (=> start!732830 (=> (not res!3042797) (not e!4521463))))

(declare-fun r1!3349 () Regex!20120)

(assert (=> start!732830 (= res!3042797 (validRegex!10548 r1!3349))))

(assert (=> start!732830 e!4521463))

(assert (=> start!732830 e!4521462))

(assert (=> start!732830 e!4521461))

(assert (=> start!732830 e!4521460))

(declare-fun b!7599373 () Bool)

(assert (=> b!7599373 (= e!4521462 tp_is_empty!50595)))

(declare-fun b!7599374 () Bool)

(declare-fun tp!2215069 () Bool)

(declare-fun tp!2215073 () Bool)

(assert (=> b!7599374 (= e!4521461 (and tp!2215069 tp!2215073))))

(declare-fun b!7599375 () Bool)

(declare-fun tp!2215070 () Bool)

(declare-fun tp!2215071 () Bool)

(assert (=> b!7599375 (= e!4521461 (and tp!2215070 tp!2215071))))

(assert (= (and start!732830 res!3042797) b!7599371))

(assert (= (and b!7599371 res!3042799) b!7599367))

(assert (= (and b!7599367 res!3042798) b!7599364))

(assert (= (and start!732830 (is-ElementMatch!20120 r1!3349)) b!7599373))

(assert (= (and start!732830 (is-Concat!28965 r1!3349)) b!7599372))

(assert (= (and start!732830 (is-Star!20120 r1!3349)) b!7599368))

(assert (= (and start!732830 (is-Union!20120 r1!3349)) b!7599365))

(assert (= (and start!732830 (is-ElementMatch!20120 r2!3249)) b!7599369))

(assert (= (and start!732830 (is-Concat!28965 r2!3249)) b!7599374))

(assert (= (and start!732830 (is-Star!20120 r2!3249)) b!7599370))

(assert (= (and start!732830 (is-Union!20120 r2!3249)) b!7599375))

(declare-datatypes ((List!73003 0))(
  ( (Nil!72879) (Cons!72879 (h!79327 C!40566) (t!387738 List!73003)) )
))
(declare-fun s!10235 () List!73003)

(assert (= (and start!732830 (is-Cons!72879 s!10235)) b!7599366))

(declare-fun m!8144598 () Bool)

(assert (=> b!7599364 m!8144598))

(assert (=> b!7599367 m!8144598))

(declare-fun m!8144600 () Bool)

(assert (=> b!7599371 m!8144600))

(declare-fun m!8144602 () Bool)

(assert (=> start!732830 m!8144602))

(push 1)

(assert (not start!732830))

(assert (not b!7599365))

(assert (not b!7599374))

(assert (not b!7599366))

(assert tp_is_empty!50595)

(assert (not b!7599364))

(assert (not b!7599372))

(assert (not b!7599371))

(assert (not b!7599370))

(assert (not b!7599367))

(assert (not b!7599375))

(assert (not b!7599368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

