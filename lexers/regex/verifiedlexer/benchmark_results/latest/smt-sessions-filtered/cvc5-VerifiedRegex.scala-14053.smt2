; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!741760 () Bool)

(assert start!741760)

(declare-fun b!7810590 () Bool)

(declare-fun e!4622875 () Bool)

(declare-fun e!4622876 () Bool)

(assert (=> b!7810590 (= e!4622875 e!4622876)))

(declare-fun res!3110365 () Bool)

(assert (=> b!7810590 (=> (not res!3110365) (not e!4622876))))

(declare-datatypes ((C!42126 0))(
  ( (C!42127 (val!31503 Int)) )
))
(declare-datatypes ((Regex!20900 0))(
  ( (ElementMatch!20900 (c!1438207 C!42126)) (Concat!29745 (regOne!42312 Regex!20900) (regTwo!42312 Regex!20900)) (EmptyExpr!20900) (Star!20900 (reg!21229 Regex!20900)) (EmptyLang!20900) (Union!20900 (regOne!42313 Regex!20900) (regTwo!42313 Regex!20900)) )
))
(declare-fun lt!2675789 () Regex!20900)

(declare-fun validRegex!11314 (Regex!20900) Bool)

(assert (=> b!7810590 (= res!3110365 (validRegex!11314 lt!2675789))))

(declare-fun lt!2675790 () Regex!20900)

(declare-fun r2!6144 () Regex!20900)

(declare-datatypes ((List!73737 0))(
  ( (Nil!73613) (Cons!73613 (h!80061 C!42126) (t!388472 List!73737)) )
))
(declare-fun s!14225 () List!73737)

(declare-fun derivativeStep!6233 (Regex!20900 C!42126) Regex!20900)

(assert (=> b!7810590 (= lt!2675790 (derivativeStep!6233 r2!6144 (h!80061 s!14225)))))

(declare-fun r1!6206 () Regex!20900)

(assert (=> b!7810590 (= lt!2675789 (derivativeStep!6233 r1!6206 (h!80061 s!14225)))))

(declare-fun b!7810591 () Bool)

(declare-fun e!4622878 () Bool)

(declare-fun tp!2301602 () Bool)

(declare-fun tp!2301597 () Bool)

(assert (=> b!7810591 (= e!4622878 (and tp!2301602 tp!2301597))))

(declare-fun b!7810593 () Bool)

(declare-fun e!4622877 () Bool)

(declare-fun tp!2301605 () Bool)

(declare-fun tp!2301600 () Bool)

(assert (=> b!7810593 (= e!4622877 (and tp!2301605 tp!2301600))))

(declare-fun b!7810594 () Bool)

(declare-fun tp!2301599 () Bool)

(assert (=> b!7810594 (= e!4622877 tp!2301599)))

(declare-fun b!7810595 () Bool)

(declare-fun res!3110370 () Bool)

(assert (=> b!7810595 (=> (not res!3110370) (not e!4622876))))

(assert (=> b!7810595 (= res!3110370 (validRegex!11314 lt!2675790))))

(declare-fun b!7810596 () Bool)

(declare-fun res!3110368 () Bool)

(assert (=> b!7810596 (=> (not res!3110368) (not e!4622875))))

(declare-fun matchR!10358 (Regex!20900 List!73737) Bool)

(assert (=> b!7810596 (= res!3110368 (matchR!10358 (Union!20900 r1!6206 r2!6144) s!14225))))

(declare-fun b!7810597 () Bool)

(declare-fun tp!2301603 () Bool)

(assert (=> b!7810597 (= e!4622878 tp!2301603)))

(declare-fun b!7810598 () Bool)

(declare-fun tp!2301601 () Bool)

(declare-fun tp!2301598 () Bool)

(assert (=> b!7810598 (= e!4622878 (and tp!2301601 tp!2301598))))

(declare-fun b!7810599 () Bool)

(declare-fun e!4622874 () Bool)

(declare-fun tp_is_empty!52155 () Bool)

(declare-fun tp!2301604 () Bool)

(assert (=> b!7810599 (= e!4622874 (and tp_is_empty!52155 tp!2301604))))

(declare-fun b!7810600 () Bool)

(declare-fun tp!2301606 () Bool)

(declare-fun tp!2301596 () Bool)

(assert (=> b!7810600 (= e!4622877 (and tp!2301606 tp!2301596))))

(declare-fun b!7810601 () Bool)

(declare-fun res!3110366 () Bool)

(assert (=> b!7810601 (=> (not res!3110366) (not e!4622875))))

(assert (=> b!7810601 (= res!3110366 (is-Cons!73613 s!14225))))

(declare-fun b!7810602 () Bool)

(assert (=> b!7810602 (= e!4622878 tp_is_empty!52155)))

(declare-fun b!7810603 () Bool)

(assert (=> b!7810603 (= e!4622877 tp_is_empty!52155)))

(declare-fun b!7810604 () Bool)

(declare-fun res!3110367 () Bool)

(assert (=> b!7810604 (=> (not res!3110367) (not e!4622875))))

(assert (=> b!7810604 (= res!3110367 (validRegex!11314 r2!6144))))

(declare-fun res!3110369 () Bool)

(assert (=> start!741760 (=> (not res!3110369) (not e!4622875))))

(assert (=> start!741760 (= res!3110369 (validRegex!11314 r1!6206))))

(assert (=> start!741760 e!4622875))

(assert (=> start!741760 e!4622878))

(assert (=> start!741760 e!4622877))

(assert (=> start!741760 e!4622874))

(declare-fun b!7810592 () Bool)

(assert (=> b!7810592 (= e!4622876 false)))

(declare-fun lt!2675791 () Bool)

(assert (=> b!7810592 (= lt!2675791 (matchR!10358 (Union!20900 lt!2675789 lt!2675790) (t!388472 s!14225)))))

(assert (= (and start!741760 res!3110369) b!7810604))

(assert (= (and b!7810604 res!3110367) b!7810596))

(assert (= (and b!7810596 res!3110368) b!7810601))

(assert (= (and b!7810601 res!3110366) b!7810590))

(assert (= (and b!7810590 res!3110365) b!7810595))

(assert (= (and b!7810595 res!3110370) b!7810592))

(assert (= (and start!741760 (is-ElementMatch!20900 r1!6206)) b!7810602))

(assert (= (and start!741760 (is-Concat!29745 r1!6206)) b!7810598))

(assert (= (and start!741760 (is-Star!20900 r1!6206)) b!7810597))

(assert (= (and start!741760 (is-Union!20900 r1!6206)) b!7810591))

(assert (= (and start!741760 (is-ElementMatch!20900 r2!6144)) b!7810603))

(assert (= (and start!741760 (is-Concat!29745 r2!6144)) b!7810600))

(assert (= (and start!741760 (is-Star!20900 r2!6144)) b!7810594))

(assert (= (and start!741760 (is-Union!20900 r2!6144)) b!7810593))

(assert (= (and start!741760 (is-Cons!73613 s!14225)) b!7810599))

(declare-fun m!8241798 () Bool)

(assert (=> b!7810596 m!8241798))

(declare-fun m!8241800 () Bool)

(assert (=> start!741760 m!8241800))

(declare-fun m!8241802 () Bool)

(assert (=> b!7810595 m!8241802))

(declare-fun m!8241804 () Bool)

(assert (=> b!7810590 m!8241804))

(declare-fun m!8241806 () Bool)

(assert (=> b!7810590 m!8241806))

(declare-fun m!8241808 () Bool)

(assert (=> b!7810590 m!8241808))

(declare-fun m!8241810 () Bool)

(assert (=> b!7810604 m!8241810))

(declare-fun m!8241812 () Bool)

(assert (=> b!7810592 m!8241812))

(push 1)

(assert (not b!7810598))

(assert (not b!7810600))

(assert (not b!7810593))

(assert (not b!7810592))

(assert (not b!7810599))

(assert (not b!7810604))

(assert (not b!7810596))

(assert (not b!7810590))

(assert tp_is_empty!52155)

(assert (not b!7810594))

(assert (not b!7810597))

(assert (not b!7810591))

(assert (not b!7810595))

(assert (not start!741760))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

