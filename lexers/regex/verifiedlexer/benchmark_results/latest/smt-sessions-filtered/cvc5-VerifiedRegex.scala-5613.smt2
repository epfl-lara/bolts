; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!281444 () Bool)

(assert start!281444)

(declare-fun b!2882605 () Bool)

(declare-fun res!1194372 () Bool)

(declare-fun e!1823426 () Bool)

(assert (=> b!2882605 (=> (not res!1194372) (not e!1823426))))

(declare-datatypes ((C!17742 0))(
  ( (C!17743 (val!10905 Int)) )
))
(declare-datatypes ((Regex!8780 0))(
  ( (ElementMatch!8780 (c!468261 C!17742)) (Concat!14101 (regOne!18072 Regex!8780) (regTwo!18072 Regex!8780)) (EmptyExpr!8780) (Star!8780 (reg!9109 Regex!8780)) (EmptyLang!8780) (Union!8780 (regOne!18073 Regex!8780) (regTwo!18073 Regex!8780)) )
))
(declare-fun r!23079 () Regex!8780)

(declare-datatypes ((List!34581 0))(
  ( (Nil!34457) (Cons!34457 (h!39877 C!17742) (t!233624 List!34581)) )
))
(declare-datatypes ((Option!6453 0))(
  ( (None!6452) (Some!6452 (v!34578 List!34581)) )
))
(declare-fun isDefined!5017 (Option!6453) Bool)

(declare-fun getLanguageWitness!487 (Regex!8780) Option!6453)

(assert (=> b!2882605 (= res!1194372 (isDefined!5017 (getLanguageWitness!487 r!23079)))))

(declare-fun b!2882606 () Bool)

(declare-fun e!1823427 () Bool)

(declare-fun tp_is_empty!15147 () Bool)

(assert (=> b!2882606 (= e!1823427 tp_is_empty!15147)))

(declare-fun b!2882607 () Bool)

(declare-fun tp!924583 () Bool)

(declare-fun tp!924584 () Bool)

(assert (=> b!2882607 (= e!1823427 (and tp!924583 tp!924584))))

(declare-fun res!1194370 () Bool)

(assert (=> start!281444 (=> (not res!1194370) (not e!1823426))))

(declare-fun validRegex!3553 (Regex!8780) Bool)

(assert (=> start!281444 (= res!1194370 (validRegex!3553 r!23079))))

(assert (=> start!281444 e!1823426))

(assert (=> start!281444 e!1823427))

(declare-fun b!2882608 () Bool)

(declare-fun tp!924582 () Bool)

(declare-fun tp!924581 () Bool)

(assert (=> b!2882608 (= e!1823427 (and tp!924582 tp!924581))))

(declare-fun b!2882609 () Bool)

(declare-fun res!1194371 () Bool)

(assert (=> b!2882609 (=> (not res!1194371) (not e!1823426))))

(assert (=> b!2882609 (= res!1194371 (not (is-Some!6452 (getLanguageWitness!487 (regOne!18073 r!23079)))))))

(declare-fun b!2882610 () Bool)

(declare-fun e!1823428 () Bool)

(assert (=> b!2882610 (= e!1823428 true)))

(declare-fun lt!1020098 () List!34581)

(declare-fun matchR!3766 (Regex!8780 List!34581) Bool)

(assert (=> b!2882610 (matchR!3766 (Union!8780 (regTwo!18073 r!23079) (regOne!18073 r!23079)) lt!1020098)))

(declare-datatypes ((Unit!48037 0))(
  ( (Unit!48038) )
))
(declare-fun lt!1020100 () Unit!48037)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!37 (Regex!8780 Regex!8780 List!34581) Unit!48037)

(assert (=> b!2882610 (= lt!1020100 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!37 (regTwo!18073 r!23079) (regOne!18073 r!23079) lt!1020098))))

(declare-fun b!2882611 () Bool)

(assert (=> b!2882611 (= e!1823426 (not e!1823428))))

(declare-fun res!1194374 () Bool)

(assert (=> b!2882611 (=> res!1194374 e!1823428)))

(declare-fun lt!1020099 () Option!6453)

(assert (=> b!2882611 (= res!1194374 (not (isDefined!5017 lt!1020099)))))

(assert (=> b!2882611 (matchR!3766 (regTwo!18073 r!23079) lt!1020098)))

(declare-fun get!10389 (Option!6453) List!34581)

(assert (=> b!2882611 (= lt!1020098 (get!10389 lt!1020099))))

(declare-fun lt!1020097 () Unit!48037)

(declare-fun lemmaGetWitnessMatches!73 (Regex!8780) Unit!48037)

(assert (=> b!2882611 (= lt!1020097 (lemmaGetWitnessMatches!73 (regTwo!18073 r!23079)))))

(assert (=> b!2882611 (= lt!1020099 (getLanguageWitness!487 (regTwo!18073 r!23079)))))

(declare-fun b!2882612 () Bool)

(declare-fun tp!924580 () Bool)

(assert (=> b!2882612 (= e!1823427 tp!924580)))

(declare-fun b!2882613 () Bool)

(declare-fun res!1194373 () Bool)

(assert (=> b!2882613 (=> (not res!1194373) (not e!1823426))))

(assert (=> b!2882613 (= res!1194373 (and (not (is-EmptyExpr!8780 r!23079)) (not (is-EmptyLang!8780 r!23079)) (not (is-ElementMatch!8780 r!23079)) (not (is-Star!8780 r!23079)) (is-Union!8780 r!23079)))))

(assert (= (and start!281444 res!1194370) b!2882605))

(assert (= (and b!2882605 res!1194372) b!2882613))

(assert (= (and b!2882613 res!1194373) b!2882609))

(assert (= (and b!2882609 res!1194371) b!2882611))

(assert (= (and b!2882611 (not res!1194374)) b!2882610))

(assert (= (and start!281444 (is-ElementMatch!8780 r!23079)) b!2882606))

(assert (= (and start!281444 (is-Concat!14101 r!23079)) b!2882607))

(assert (= (and start!281444 (is-Star!8780 r!23079)) b!2882612))

(assert (= (and start!281444 (is-Union!8780 r!23079)) b!2882608))

(declare-fun m!3299595 () Bool)

(assert (=> b!2882609 m!3299595))

(declare-fun m!3299597 () Bool)

(assert (=> b!2882611 m!3299597))

(declare-fun m!3299599 () Bool)

(assert (=> b!2882611 m!3299599))

(declare-fun m!3299601 () Bool)

(assert (=> b!2882611 m!3299601))

(declare-fun m!3299603 () Bool)

(assert (=> b!2882611 m!3299603))

(declare-fun m!3299605 () Bool)

(assert (=> b!2882611 m!3299605))

(declare-fun m!3299607 () Bool)

(assert (=> b!2882605 m!3299607))

(assert (=> b!2882605 m!3299607))

(declare-fun m!3299609 () Bool)

(assert (=> b!2882605 m!3299609))

(declare-fun m!3299611 () Bool)

(assert (=> b!2882610 m!3299611))

(declare-fun m!3299613 () Bool)

(assert (=> b!2882610 m!3299613))

(declare-fun m!3299615 () Bool)

(assert (=> start!281444 m!3299615))

(push 1)

(assert (not b!2882605))

(assert (not b!2882611))

(assert (not b!2882609))

(assert (not b!2882607))

(assert (not b!2882612))

(assert (not start!281444))

(assert tp_is_empty!15147)

(assert (not b!2882610))

(assert (not b!2882608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

