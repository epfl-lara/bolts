; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!743048 () Bool)

(assert start!743048)

(declare-fun b!7847303 () Bool)

(declare-fun e!4639138 () Bool)

(declare-fun tp!2323583 () Bool)

(declare-fun tp!2323576 () Bool)

(assert (=> b!7847303 (= e!4639138 (and tp!2323583 tp!2323576))))

(declare-fun b!7847304 () Bool)

(declare-fun tp!2323581 () Bool)

(declare-fun tp!2323579 () Bool)

(assert (=> b!7847304 (= e!4639138 (and tp!2323581 tp!2323579))))

(declare-fun b!7847305 () Bool)

(declare-fun e!4639141 () Bool)

(declare-fun e!4639136 () Bool)

(assert (=> b!7847305 (= e!4639141 (not e!4639136))))

(declare-fun res!3120758 () Bool)

(assert (=> b!7847305 (=> res!3120758 e!4639136)))

(declare-datatypes ((C!42466 0))(
  ( (C!42467 (val!31695 Int)) )
))
(declare-datatypes ((Regex!21070 0))(
  ( (ElementMatch!21070 (c!1442372 C!42466)) (Concat!29915 (regOne!42652 Regex!21070) (regTwo!42652 Regex!21070)) (EmptyExpr!21070) (Star!21070 (reg!21399 Regex!21070)) (EmptyLang!21070) (Union!21070 (regOne!42653 Regex!21070) (regTwo!42653 Regex!21070)) )
))
(declare-fun r1!6227 () Regex!21070)

(declare-fun nullable!9344 (Regex!21070) Bool)

(assert (=> b!7847305 (= res!3120758 (nullable!9344 r1!6227))))

(declare-fun lt!2679305 () Regex!21070)

(declare-datatypes ((List!73929 0))(
  ( (Nil!73805) (Cons!73805 (h!80253 C!42466) (t!388664 List!73929)) )
))
(declare-fun s1!4084 () List!73929)

(declare-fun s2!3706 () List!73929)

(declare-fun matchR!10506 (Regex!21070 List!73929) Bool)

(declare-fun ++!18080 (List!73929 List!73929) List!73929)

(assert (=> b!7847305 (matchR!10506 lt!2679305 (++!18080 (t!388664 s1!4084) s2!3706))))

(declare-fun lt!2679304 () Regex!21070)

(declare-fun r2!6165 () Regex!21070)

(assert (=> b!7847305 (= lt!2679305 (Concat!29915 lt!2679304 r2!6165))))

(declare-datatypes ((Unit!168886 0))(
  ( (Unit!168887) )
))
(declare-fun lt!2679306 () Unit!168886)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!441 (Regex!21070 Regex!21070 List!73929 List!73929) Unit!168886)

(assert (=> b!7847305 (= lt!2679306 (lemmaTwoRegexMatchThenConcatMatchesConcatString!441 lt!2679304 r2!6165 (t!388664 s1!4084) s2!3706))))

(declare-fun derivativeStep!6307 (Regex!21070 C!42466) Regex!21070)

(assert (=> b!7847305 (= lt!2679304 (derivativeStep!6307 r1!6227 (h!80253 s1!4084)))))

(declare-fun res!3120763 () Bool)

(assert (=> start!743048 (=> (not res!3120763) (not e!4639141))))

(declare-fun validRegex!11480 (Regex!21070) Bool)

(assert (=> start!743048 (= res!3120763 (validRegex!11480 r1!6227))))

(assert (=> start!743048 e!4639141))

(assert (=> start!743048 e!4639138))

(declare-fun e!4639140 () Bool)

(assert (=> start!743048 e!4639140))

(declare-fun e!4639139 () Bool)

(assert (=> start!743048 e!4639139))

(declare-fun e!4639137 () Bool)

(assert (=> start!743048 e!4639137))

(declare-fun b!7847306 () Bool)

(declare-fun tp_is_empty!52539 () Bool)

(assert (=> b!7847306 (= e!4639138 tp_is_empty!52539)))

(declare-fun b!7847307 () Bool)

(declare-fun res!3120762 () Bool)

(assert (=> b!7847307 (=> (not res!3120762) (not e!4639141))))

(assert (=> b!7847307 (= res!3120762 (validRegex!11480 r2!6165))))

(declare-fun b!7847308 () Bool)

(declare-fun tp!2323577 () Bool)

(assert (=> b!7847308 (= e!4639139 (and tp_is_empty!52539 tp!2323577))))

(declare-fun b!7847309 () Bool)

(declare-fun tp!2323580 () Bool)

(assert (=> b!7847309 (= e!4639140 tp!2323580)))

(declare-fun b!7847310 () Bool)

(assert (=> b!7847310 (= e!4639140 tp_is_empty!52539)))

(declare-fun b!7847311 () Bool)

(declare-fun tp!2323578 () Bool)

(assert (=> b!7847311 (= e!4639137 (and tp_is_empty!52539 tp!2323578))))

(declare-fun b!7847312 () Bool)

(declare-fun tp!2323575 () Bool)

(declare-fun tp!2323582 () Bool)

(assert (=> b!7847312 (= e!4639140 (and tp!2323575 tp!2323582))))

(declare-fun b!7847313 () Bool)

(declare-fun res!3120761 () Bool)

(assert (=> b!7847313 (=> (not res!3120761) (not e!4639141))))

(assert (=> b!7847313 (= res!3120761 (matchR!10506 r1!6227 s1!4084))))

(declare-fun b!7847314 () Bool)

(declare-fun res!3120757 () Bool)

(assert (=> b!7847314 (=> res!3120757 e!4639136)))

(assert (=> b!7847314 (= res!3120757 (not (= (derivativeStep!6307 (Concat!29915 r1!6227 r2!6165) (h!80253 s1!4084)) (Union!21070 lt!2679305 EmptyLang!21070))))))

(declare-fun b!7847315 () Bool)

(declare-fun tp!2323584 () Bool)

(declare-fun tp!2323574 () Bool)

(assert (=> b!7847315 (= e!4639140 (and tp!2323584 tp!2323574))))

(declare-fun b!7847316 () Bool)

(declare-fun res!3120760 () Bool)

(assert (=> b!7847316 (=> (not res!3120760) (not e!4639141))))

(assert (=> b!7847316 (= res!3120760 (is-Cons!73805 s1!4084))))

(declare-fun b!7847317 () Bool)

(assert (=> b!7847317 (= e!4639136 true)))

(declare-fun b!7847318 () Bool)

(declare-fun tp!2323573 () Bool)

(assert (=> b!7847318 (= e!4639138 tp!2323573)))

(declare-fun b!7847319 () Bool)

(declare-fun res!3120759 () Bool)

(assert (=> b!7847319 (=> (not res!3120759) (not e!4639141))))

(assert (=> b!7847319 (= res!3120759 (matchR!10506 r2!6165 s2!3706))))

(assert (= (and start!743048 res!3120763) b!7847307))

(assert (= (and b!7847307 res!3120762) b!7847313))

(assert (= (and b!7847313 res!3120761) b!7847319))

(assert (= (and b!7847319 res!3120759) b!7847316))

(assert (= (and b!7847316 res!3120760) b!7847305))

(assert (= (and b!7847305 (not res!3120758)) b!7847314))

(assert (= (and b!7847314 (not res!3120757)) b!7847317))

(assert (= (and start!743048 (is-ElementMatch!21070 r1!6227)) b!7847306))

(assert (= (and start!743048 (is-Concat!29915 r1!6227)) b!7847303))

(assert (= (and start!743048 (is-Star!21070 r1!6227)) b!7847318))

(assert (= (and start!743048 (is-Union!21070 r1!6227)) b!7847304))

(assert (= (and start!743048 (is-ElementMatch!21070 r2!6165)) b!7847310))

(assert (= (and start!743048 (is-Concat!29915 r2!6165)) b!7847315))

(assert (= (and start!743048 (is-Star!21070 r2!6165)) b!7847309))

(assert (= (and start!743048 (is-Union!21070 r2!6165)) b!7847312))

(assert (= (and start!743048 (is-Cons!73805 s1!4084)) b!7847308))

(assert (= (and start!743048 (is-Cons!73805 s2!3706)) b!7847311))

(declare-fun m!8256524 () Bool)

(assert (=> b!7847314 m!8256524))

(declare-fun m!8256526 () Bool)

(assert (=> b!7847305 m!8256526))

(declare-fun m!8256528 () Bool)

(assert (=> b!7847305 m!8256528))

(declare-fun m!8256530 () Bool)

(assert (=> b!7847305 m!8256530))

(declare-fun m!8256532 () Bool)

(assert (=> b!7847305 m!8256532))

(declare-fun m!8256534 () Bool)

(assert (=> b!7847305 m!8256534))

(assert (=> b!7847305 m!8256526))

(declare-fun m!8256536 () Bool)

(assert (=> b!7847313 m!8256536))

(declare-fun m!8256538 () Bool)

(assert (=> b!7847319 m!8256538))

(declare-fun m!8256540 () Bool)

(assert (=> start!743048 m!8256540))

(declare-fun m!8256542 () Bool)

(assert (=> b!7847307 m!8256542))

(push 1)

(assert (not b!7847303))

(assert (not b!7847312))

(assert (not b!7847313))

(assert (not b!7847314))

(assert (not b!7847319))

(assert (not b!7847309))

(assert (not b!7847304))

(assert tp_is_empty!52539)

(assert (not b!7847308))

(assert (not b!7847318))

(assert (not b!7847307))

(assert (not b!7847311))

(assert (not b!7847315))

(assert (not b!7847305))

(assert (not start!743048))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

