; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279588 () Bool)

(assert start!279588)

(declare-fun b!2865726 () Bool)

(declare-fun res!1189718 () Bool)

(declare-fun e!1814225 () Bool)

(assert (=> b!2865726 (=> (not res!1189718) (not e!1814225))))

(declare-datatypes ((C!17566 0))(
  ( (C!17567 (val!10817 Int)) )
))
(declare-datatypes ((Regex!8692 0))(
  ( (ElementMatch!8692 (c!462665 C!17566)) (Concat!14013 (regOne!17896 Regex!8692) (regTwo!17896 Regex!8692)) (EmptyExpr!8692) (Star!8692 (reg!9021 Regex!8692)) (EmptyLang!8692) (Union!8692 (regOne!17897 Regex!8692) (regTwo!17897 Regex!8692)) )
))
(declare-datatypes ((List!34405 0))(
  ( (Nil!34281) (Cons!34281 (h!39701 Regex!8692) (t!233448 List!34405)) )
))
(declare-datatypes ((Context!5304 0))(
  ( (Context!5305 (exprs!3152 List!34405)) )
))
(declare-fun c!7184 () Context!5304)

(assert (=> b!2865726 (= res!1189718 (is-Cons!34281 (exprs!3152 c!7184)))))

(declare-fun b!2865727 () Bool)

(declare-fun e!1814226 () Bool)

(assert (=> b!2865727 (= e!1814226 (not true))))

(declare-fun lt!1016609 () Bool)

(declare-fun lt!1016606 () Context!5304)

(declare-fun lostCause!784 (Context!5304) Bool)

(assert (=> b!2865727 (= lt!1016609 (lostCause!784 lt!1016606))))

(declare-datatypes ((List!34406 0))(
  ( (Nil!34282) (Cons!34282 (h!39702 C!17566) (t!233449 List!34406)) )
))
(declare-datatypes ((Option!6371 0))(
  ( (None!6370) (Some!6370 (v!34492 List!34406)) )
))
(declare-fun lt!1016608 () Option!6371)

(declare-fun matchR!3712 (Regex!8692 List!34406) Bool)

(declare-fun get!10285 (Option!6371) List!34406)

(assert (=> b!2865727 (matchR!3712 (h!39701 (exprs!3152 c!7184)) (get!10285 lt!1016608))))

(declare-datatypes ((Unit!47921 0))(
  ( (Unit!47922) )
))
(declare-fun lt!1016607 () Unit!47921)

(declare-fun lemmaGetWitnessMatches!19 (Regex!8692) Unit!47921)

(assert (=> b!2865727 (= lt!1016607 (lemmaGetWitnessMatches!19 (h!39701 (exprs!3152 c!7184))))))

(declare-fun b!2865729 () Bool)

(declare-fun e!1814223 () Bool)

(assert (=> b!2865729 (= e!1814223 e!1814226)))

(declare-fun res!1189717 () Bool)

(assert (=> b!2865729 (=> (not res!1189717) (not e!1814226))))

(declare-fun getLanguageWitness!348 (Context!5304) Option!6371)

(assert (=> b!2865729 (= res!1189717 (is-Some!6370 (getLanguageWitness!348 lt!1016606)))))

(assert (=> b!2865729 (= lt!1016606 (Context!5305 (t!233448 (exprs!3152 c!7184))))))

(declare-fun b!2865730 () Bool)

(assert (=> b!2865730 (= e!1814225 e!1814223)))

(declare-fun res!1189716 () Bool)

(assert (=> b!2865730 (=> (not res!1189716) (not e!1814223))))

(assert (=> b!2865730 (= res!1189716 (is-Some!6370 lt!1016608))))

(declare-fun getLanguageWitness!349 (Regex!8692) Option!6371)

(assert (=> b!2865730 (= lt!1016608 (getLanguageWitness!349 (h!39701 (exprs!3152 c!7184))))))

(declare-fun b!2865728 () Bool)

(declare-fun e!1814224 () Bool)

(declare-fun tp!922887 () Bool)

(assert (=> b!2865728 (= e!1814224 tp!922887)))

(declare-fun res!1189719 () Bool)

(assert (=> start!279588 (=> (not res!1189719) (not e!1814225))))

(assert (=> start!279588 (= res!1189719 (not (lostCause!784 c!7184)))))

(assert (=> start!279588 e!1814225))

(declare-fun inv!46318 (Context!5304) Bool)

(assert (=> start!279588 (and (inv!46318 c!7184) e!1814224)))

(assert (= (and start!279588 res!1189719) b!2865726))

(assert (= (and b!2865726 res!1189718) b!2865730))

(assert (= (and b!2865730 res!1189716) b!2865729))

(assert (= (and b!2865729 res!1189717) b!2865727))

(assert (= start!279588 b!2865728))

(declare-fun m!3286125 () Bool)

(assert (=> b!2865727 m!3286125))

(declare-fun m!3286127 () Bool)

(assert (=> b!2865727 m!3286127))

(assert (=> b!2865727 m!3286127))

(declare-fun m!3286129 () Bool)

(assert (=> b!2865727 m!3286129))

(declare-fun m!3286131 () Bool)

(assert (=> b!2865727 m!3286131))

(declare-fun m!3286133 () Bool)

(assert (=> b!2865729 m!3286133))

(declare-fun m!3286135 () Bool)

(assert (=> b!2865730 m!3286135))

(declare-fun m!3286137 () Bool)

(assert (=> start!279588 m!3286137))

(declare-fun m!3286139 () Bool)

(assert (=> start!279588 m!3286139))

(push 1)

(assert (not b!2865729))

(assert (not b!2865727))

(assert (not b!2865728))

(assert (not start!279588))

(assert (not b!2865730))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

