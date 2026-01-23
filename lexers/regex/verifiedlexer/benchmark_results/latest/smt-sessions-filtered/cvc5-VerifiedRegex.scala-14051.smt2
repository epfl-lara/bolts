; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!741752 () Bool)

(assert start!741752)

(declare-fun b!7810438 () Bool)

(declare-fun e!4622824 () Bool)

(declare-fun tp!2301473 () Bool)

(assert (=> b!7810438 (= e!4622824 tp!2301473)))

(declare-fun b!7810439 () Bool)

(declare-fun e!4622827 () Bool)

(declare-fun tp_is_empty!52147 () Bool)

(declare-fun tp!2301468 () Bool)

(assert (=> b!7810439 (= e!4622827 (and tp_is_empty!52147 tp!2301468))))

(declare-fun b!7810440 () Bool)

(declare-fun tp!2301471 () Bool)

(declare-fun tp!2301470 () Bool)

(assert (=> b!7810440 (= e!4622824 (and tp!2301471 tp!2301470))))

(declare-fun b!7810441 () Bool)

(declare-fun e!4622826 () Bool)

(declare-fun tp!2301464 () Bool)

(declare-fun tp!2301466 () Bool)

(assert (=> b!7810441 (= e!4622826 (and tp!2301464 tp!2301466))))

(declare-fun b!7810443 () Bool)

(declare-fun tp!2301472 () Bool)

(declare-fun tp!2301467 () Bool)

(assert (=> b!7810443 (= e!4622826 (and tp!2301472 tp!2301467))))

(declare-fun b!7810444 () Bool)

(assert (=> b!7810444 (= e!4622826 tp_is_empty!52147)))

(declare-fun b!7810445 () Bool)

(declare-fun tp!2301469 () Bool)

(declare-fun tp!2301474 () Bool)

(assert (=> b!7810445 (= e!4622824 (and tp!2301469 tp!2301474))))

(declare-fun b!7810446 () Bool)

(declare-fun res!3110321 () Bool)

(declare-fun e!4622825 () Bool)

(assert (=> b!7810446 (=> (not res!3110321) (not e!4622825))))

(declare-datatypes ((C!42118 0))(
  ( (C!42119 (val!31499 Int)) )
))
(declare-datatypes ((Regex!20896 0))(
  ( (ElementMatch!20896 (c!1438203 C!42118)) (Concat!29741 (regOne!42304 Regex!20896) (regTwo!42304 Regex!20896)) (EmptyExpr!20896) (Star!20896 (reg!21225 Regex!20896)) (EmptyLang!20896) (Union!20896 (regOne!42305 Regex!20896) (regTwo!42305 Regex!20896)) )
))
(declare-fun r2!6144 () Regex!20896)

(declare-fun validRegex!11310 (Regex!20896) Bool)

(assert (=> b!7810446 (= res!3110321 (validRegex!11310 r2!6144))))

(declare-fun b!7810447 () Bool)

(assert (=> b!7810447 (= e!4622824 tp_is_empty!52147)))

(declare-fun b!7810448 () Bool)

(assert (=> b!7810448 (= e!4622825 false)))

(declare-datatypes ((List!73733 0))(
  ( (Nil!73609) (Cons!73609 (h!80057 C!42118) (t!388468 List!73733)) )
))
(declare-fun s!14225 () List!73733)

(declare-fun lt!2675773 () Bool)

(declare-fun r1!6206 () Regex!20896)

(declare-fun matchR!10354 (Regex!20896 List!73733) Bool)

(assert (=> b!7810448 (= lt!2675773 (matchR!10354 (Union!20896 r1!6206 r2!6144) s!14225))))

(declare-fun b!7810442 () Bool)

(declare-fun tp!2301465 () Bool)

(assert (=> b!7810442 (= e!4622826 tp!2301465)))

(declare-fun res!3110322 () Bool)

(assert (=> start!741752 (=> (not res!3110322) (not e!4622825))))

(assert (=> start!741752 (= res!3110322 (validRegex!11310 r1!6206))))

(assert (=> start!741752 e!4622825))

(assert (=> start!741752 e!4622824))

(assert (=> start!741752 e!4622826))

(assert (=> start!741752 e!4622827))

(assert (= (and start!741752 res!3110322) b!7810446))

(assert (= (and b!7810446 res!3110321) b!7810448))

(assert (= (and start!741752 (is-ElementMatch!20896 r1!6206)) b!7810447))

(assert (= (and start!741752 (is-Concat!29741 r1!6206)) b!7810440))

(assert (= (and start!741752 (is-Star!20896 r1!6206)) b!7810438))

(assert (= (and start!741752 (is-Union!20896 r1!6206)) b!7810445))

(assert (= (and start!741752 (is-ElementMatch!20896 r2!6144)) b!7810444))

(assert (= (and start!741752 (is-Concat!29741 r2!6144)) b!7810443))

(assert (= (and start!741752 (is-Star!20896 r2!6144)) b!7810442))

(assert (= (and start!741752 (is-Union!20896 r2!6144)) b!7810441))

(assert (= (and start!741752 (is-Cons!73609 s!14225)) b!7810439))

(declare-fun m!8241770 () Bool)

(assert (=> b!7810446 m!8241770))

(declare-fun m!8241772 () Bool)

(assert (=> b!7810448 m!8241772))

(declare-fun m!8241774 () Bool)

(assert (=> start!741752 m!8241774))

(push 1)

(assert (not b!7810441))

(assert (not start!741752))

(assert (not b!7810443))

(assert (not b!7810440))

(assert (not b!7810439))

(assert (not b!7810448))

(assert (not b!7810446))

(assert tp_is_empty!52147)

(assert (not b!7810442))

(assert (not b!7810445))

(assert (not b!7810438))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

