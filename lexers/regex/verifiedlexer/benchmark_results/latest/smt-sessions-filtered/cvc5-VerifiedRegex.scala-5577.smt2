; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279750 () Bool)

(assert start!279750)

(declare-fun res!1190094 () Bool)

(declare-fun e!1814854 () Bool)

(assert (=> start!279750 (=> (not res!1190094) (not e!1814854))))

(declare-datatypes ((C!17598 0))(
  ( (C!17599 (val!10833 Int)) )
))
(declare-datatypes ((Regex!8708 0))(
  ( (ElementMatch!8708 (c!463019 C!17598)) (Concat!14029 (regOne!17928 Regex!8708) (regTwo!17928 Regex!8708)) (EmptyExpr!8708) (Star!8708 (reg!9037 Regex!8708)) (EmptyLang!8708) (Union!8708 (regOne!17929 Regex!8708) (regTwo!17929 Regex!8708)) )
))
(declare-datatypes ((List!34443 0))(
  ( (Nil!34319) (Cons!34319 (h!39739 Regex!8708) (t!233486 List!34443)) )
))
(declare-datatypes ((Context!5336 0))(
  ( (Context!5337 (exprs!3168 List!34443)) )
))
(declare-fun c!7184 () Context!5336)

(declare-fun lostCause!800 (Context!5336) Bool)

(assert (=> start!279750 (= res!1190094 (not (lostCause!800 c!7184)))))

(assert (=> start!279750 e!1814854))

(declare-fun e!1814855 () Bool)

(declare-fun inv!46358 (Context!5336) Bool)

(assert (=> start!279750 (and (inv!46358 c!7184) e!1814855)))

(declare-fun b!2866846 () Bool)

(declare-fun res!1190095 () Bool)

(assert (=> b!2866846 (=> (not res!1190095) (not e!1814854))))

(assert (=> b!2866846 (= res!1190095 (is-Cons!34319 (exprs!3168 c!7184)))))

(declare-fun b!2866847 () Bool)

(assert (=> b!2866847 (= e!1814854 false)))

(declare-datatypes ((List!34444 0))(
  ( (Nil!34320) (Cons!34320 (h!39740 C!17598) (t!233487 List!34444)) )
))
(declare-datatypes ((Option!6387 0))(
  ( (None!6386) (Some!6386 (v!34508 List!34444)) )
))
(declare-fun lt!1017052 () Option!6387)

(declare-fun getLanguageWitness!380 (Regex!8708) Option!6387)

(assert (=> b!2866847 (= lt!1017052 (getLanguageWitness!380 (h!39739 (exprs!3168 c!7184))))))

(declare-fun b!2866848 () Bool)

(declare-fun tp!922983 () Bool)

(assert (=> b!2866848 (= e!1814855 tp!922983)))

(assert (= (and start!279750 res!1190094) b!2866846))

(assert (= (and b!2866846 res!1190095) b!2866847))

(assert (= start!279750 b!2866848))

(declare-fun m!3287005 () Bool)

(assert (=> start!279750 m!3287005))

(declare-fun m!3287007 () Bool)

(assert (=> start!279750 m!3287007))

(declare-fun m!3287009 () Bool)

(assert (=> b!2866847 m!3287009))

(push 1)

(assert (not start!279750))

(assert (not b!2866847))

(assert (not b!2866848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

