; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279728 () Bool)

(assert start!279728)

(declare-fun res!1190061 () Bool)

(declare-fun e!1814782 () Bool)

(assert (=> start!279728 (=> (not res!1190061) (not e!1814782))))

(declare-datatypes ((C!17590 0))(
  ( (C!17591 (val!10829 Int)) )
))
(declare-datatypes ((Regex!8704 0))(
  ( (ElementMatch!8704 (c!462971 C!17590)) (Concat!14025 (regOne!17920 Regex!8704) (regTwo!17920 Regex!8704)) (EmptyExpr!8704) (Star!8704 (reg!9033 Regex!8704)) (EmptyLang!8704) (Union!8704 (regOne!17921 Regex!8704) (regTwo!17921 Regex!8704)) )
))
(declare-datatypes ((List!34435 0))(
  ( (Nil!34311) (Cons!34311 (h!39731 Regex!8704) (t!233478 List!34435)) )
))
(declare-datatypes ((Context!5328 0))(
  ( (Context!5329 (exprs!3164 List!34435)) )
))
(declare-fun c!7184 () Context!5328)

(declare-fun lostCause!796 (Context!5328) Bool)

(assert (=> start!279728 (= res!1190061 (not (lostCause!796 c!7184)))))

(assert (=> start!279728 e!1814782))

(declare-fun e!1814783 () Bool)

(declare-fun inv!46348 (Context!5328) Bool)

(assert (=> start!279728 (and (inv!46348 c!7184) e!1814783)))

(declare-fun b!2866706 () Bool)

(declare-fun res!1190060 () Bool)

(assert (=> b!2866706 (=> (not res!1190060) (not e!1814782))))

(assert (=> b!2866706 (= res!1190060 (is-Cons!34311 (exprs!3164 c!7184)))))

(declare-fun b!2866707 () Bool)

(declare-fun res!1190062 () Bool)

(assert (=> b!2866707 (=> (not res!1190062) (not e!1814782))))

(declare-datatypes ((List!34436 0))(
  ( (Nil!34312) (Cons!34312 (h!39732 C!17590) (t!233479 List!34436)) )
))
(declare-datatypes ((Option!6383 0))(
  ( (None!6382) (Some!6382 (v!34504 List!34436)) )
))
(declare-fun getLanguageWitness!372 (Regex!8704) Option!6383)

(assert (=> b!2866707 (= res!1190062 (is-Some!6382 (getLanguageWitness!372 (h!39731 (exprs!3164 c!7184)))))))

(declare-fun b!2866709 () Bool)

(declare-fun tp!922959 () Bool)

(assert (=> b!2866709 (= e!1814783 tp!922959)))

(declare-fun b!2866708 () Bool)

(assert (=> b!2866708 (= e!1814782 false)))

(declare-fun lt!1017019 () Option!6383)

(declare-fun getLanguageWitness!373 (Context!5328) Option!6383)

(assert (=> b!2866708 (= lt!1017019 (getLanguageWitness!373 (Context!5329 (t!233478 (exprs!3164 c!7184)))))))

(assert (= (and start!279728 res!1190061) b!2866706))

(assert (= (and b!2866706 res!1190060) b!2866707))

(assert (= (and b!2866707 res!1190062) b!2866708))

(assert (= start!279728 b!2866709))

(declare-fun m!3286947 () Bool)

(assert (=> start!279728 m!3286947))

(declare-fun m!3286949 () Bool)

(assert (=> start!279728 m!3286949))

(declare-fun m!3286951 () Bool)

(assert (=> b!2866707 m!3286951))

(declare-fun m!3286953 () Bool)

(assert (=> b!2866708 m!3286953))

(push 1)

(assert (not b!2866708))

(assert (not start!279728))

(assert (not b!2866707))

(assert (not b!2866709))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

