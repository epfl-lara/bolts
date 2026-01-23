; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!281536 () Bool)

(assert start!281536)

(declare-fun b!2884067 () Bool)

(declare-fun e!1824091 () Bool)

(declare-fun tp_is_empty!15191 () Bool)

(assert (=> b!2884067 (= e!1824091 tp_is_empty!15191)))

(declare-fun b!2884068 () Bool)

(declare-fun tp!925052 () Bool)

(assert (=> b!2884068 (= e!1824091 tp!925052)))

(declare-fun b!2884069 () Bool)

(declare-fun tp!925051 () Bool)

(declare-fun tp!925053 () Bool)

(assert (=> b!2884069 (= e!1824091 (and tp!925051 tp!925053))))

(declare-fun b!2884070 () Bool)

(declare-fun res!1194957 () Bool)

(declare-fun e!1824090 () Bool)

(assert (=> b!2884070 (=> (not res!1194957) (not e!1824090))))

(declare-datatypes ((C!17786 0))(
  ( (C!17787 (val!10927 Int)) )
))
(declare-datatypes ((Regex!8802 0))(
  ( (ElementMatch!8802 (c!468529 C!17786)) (Concat!14123 (regOne!18116 Regex!8802) (regTwo!18116 Regex!8802)) (EmptyExpr!8802) (Star!8802 (reg!9131 Regex!8802)) (EmptyLang!8802) (Union!8802 (regOne!18117 Regex!8802) (regTwo!18117 Regex!8802)) )
))
(declare-fun r!23079 () Regex!8802)

(declare-datatypes ((List!34603 0))(
  ( (Nil!34479) (Cons!34479 (h!39899 C!17786) (t!233646 List!34603)) )
))
(declare-datatypes ((Option!6475 0))(
  ( (None!6474) (Some!6474 (v!34600 List!34603)) )
))
(declare-fun isDefined!5039 (Option!6475) Bool)

(declare-fun getLanguageWitness!509 (Regex!8802) Option!6475)

(assert (=> b!2884070 (= res!1194957 (isDefined!5039 (getLanguageWitness!509 r!23079)))))

(declare-fun res!1194956 () Bool)

(assert (=> start!281536 (=> (not res!1194956) (not e!1824090))))

(declare-fun validRegex!3575 (Regex!8802) Bool)

(assert (=> start!281536 (= res!1194956 (validRegex!3575 r!23079))))

(assert (=> start!281536 e!1824090))

(assert (=> start!281536 e!1824091))

(declare-fun b!2884071 () Bool)

(declare-fun tp!925054 () Bool)

(declare-fun tp!925050 () Bool)

(assert (=> b!2884071 (= e!1824091 (and tp!925054 tp!925050))))

(declare-fun b!2884072 () Bool)

(assert (=> b!2884072 (= e!1824090 false)))

(declare-fun lt!1020395 () Option!6475)

(assert (=> b!2884072 (= lt!1020395 (getLanguageWitness!509 (regOne!18116 r!23079)))))

(declare-fun b!2884073 () Bool)

(declare-fun res!1194958 () Bool)

(assert (=> b!2884073 (=> (not res!1194958) (not e!1824090))))

(assert (=> b!2884073 (= res!1194958 (and (not (is-EmptyExpr!8802 r!23079)) (not (is-EmptyLang!8802 r!23079)) (not (is-ElementMatch!8802 r!23079)) (not (is-Star!8802 r!23079)) (not (is-Union!8802 r!23079))))))

(assert (= (and start!281536 res!1194956) b!2884070))

(assert (= (and b!2884070 res!1194957) b!2884073))

(assert (= (and b!2884073 res!1194958) b!2884072))

(assert (= (and start!281536 (is-ElementMatch!8802 r!23079)) b!2884067))

(assert (= (and start!281536 (is-Concat!14123 r!23079)) b!2884071))

(assert (= (and start!281536 (is-Star!8802 r!23079)) b!2884068))

(assert (= (and start!281536 (is-Union!8802 r!23079)) b!2884069))

(declare-fun m!3300387 () Bool)

(assert (=> b!2884070 m!3300387))

(assert (=> b!2884070 m!3300387))

(declare-fun m!3300389 () Bool)

(assert (=> b!2884070 m!3300389))

(declare-fun m!3300391 () Bool)

(assert (=> start!281536 m!3300391))

(declare-fun m!3300393 () Bool)

(assert (=> b!2884072 m!3300393))

(push 1)

(assert (not start!281536))

(assert (not b!2884070))

(assert (not b!2884071))

(assert (not b!2884068))

(assert (not b!2884072))

(assert (not b!2884069))

(assert tp_is_empty!15191)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

