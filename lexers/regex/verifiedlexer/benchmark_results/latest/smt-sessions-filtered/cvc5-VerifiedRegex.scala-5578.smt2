; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279754 () Bool)

(assert start!279754)

(declare-fun lt!1017058 () Bool)

(declare-datatypes ((C!17602 0))(
  ( (C!17603 (val!10835 Int)) )
))
(declare-datatypes ((Regex!8710 0))(
  ( (ElementMatch!8710 (c!463021 C!17602)) (Concat!14031 (regOne!17932 Regex!8710) (regTwo!17932 Regex!8710)) (EmptyExpr!8710) (Star!8710 (reg!9039 Regex!8710)) (EmptyLang!8710) (Union!8710 (regOne!17933 Regex!8710) (regTwo!17933 Regex!8710)) )
))
(declare-datatypes ((List!34447 0))(
  ( (Nil!34323) (Cons!34323 (h!39743 Regex!8710) (t!233490 List!34447)) )
))
(declare-datatypes ((Context!5340 0))(
  ( (Context!5341 (exprs!3170 List!34447)) )
))
(declare-fun c!7184 () Context!5340)

(declare-fun lostCause!802 (Context!5340) Bool)

(assert (=> start!279754 (= lt!1017058 (lostCause!802 c!7184))))

(assert (=> start!279754 false))

(declare-fun e!1814864 () Bool)

(declare-fun inv!46363 (Context!5340) Bool)

(assert (=> start!279754 (and (inv!46363 c!7184) e!1814864)))

(declare-fun b!2866860 () Bool)

(declare-fun tp!922989 () Bool)

(assert (=> b!2866860 (= e!1814864 tp!922989)))

(assert (= start!279754 b!2866860))

(declare-fun m!3287017 () Bool)

(assert (=> start!279754 m!3287017))

(declare-fun m!3287019 () Bool)

(assert (=> start!279754 m!3287019))

(push 1)

(assert (not start!279754))

(assert (not b!2866860))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

