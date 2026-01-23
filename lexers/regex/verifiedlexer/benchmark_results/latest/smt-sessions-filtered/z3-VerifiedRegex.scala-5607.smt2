; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281422 () Bool)

(assert start!281422)

(declare-fun b!2882333 () Bool)

(declare-fun e!1823341 () Bool)

(declare-fun tp!924416 () Bool)

(assert (=> b!2882333 (= e!1823341 tp!924416)))

(declare-fun b!2882334 () Bool)

(declare-fun res!1194233 () Bool)

(declare-fun e!1823340 () Bool)

(assert (=> b!2882334 (=> (not res!1194233) (not e!1823340))))

(declare-datatypes ((C!17720 0))(
  ( (C!17721 (val!10894 Int)) )
))
(declare-datatypes ((Regex!8769 0))(
  ( (ElementMatch!8769 (c!468250 C!17720)) (Concat!14090 (regOne!18050 Regex!8769) (regTwo!18050 Regex!8769)) (EmptyExpr!8769) (Star!8769 (reg!9098 Regex!8769)) (EmptyLang!8769) (Union!8769 (regOne!18051 Regex!8769) (regTwo!18051 Regex!8769)) )
))
(declare-fun r!23079 () Regex!8769)

(get-info :version)

(assert (=> b!2882334 (= res!1194233 (and (not ((_ is EmptyExpr!8769) r!23079)) (not ((_ is EmptyLang!8769) r!23079)) (not ((_ is ElementMatch!8769) r!23079)) (not ((_ is Star!8769) r!23079)) ((_ is Union!8769) r!23079)))))

(declare-fun b!2882335 () Bool)

(declare-fun tp_is_empty!15125 () Bool)

(assert (=> b!2882335 (= e!1823341 tp_is_empty!15125)))

(declare-fun b!2882337 () Bool)

(declare-fun tp!924419 () Bool)

(declare-fun tp!924415 () Bool)

(assert (=> b!2882337 (= e!1823341 (and tp!924419 tp!924415))))

(declare-fun b!2882338 () Bool)

(declare-fun e!1823339 () Bool)

(declare-fun validRegex!3542 (Regex!8769) Bool)

(assert (=> b!2882338 (= e!1823339 (not (validRegex!3542 r!23079)))))

(declare-datatypes ((List!34570 0))(
  ( (Nil!34446) (Cons!34446 (h!39866 C!17720) (t!233613 List!34570)) )
))
(declare-datatypes ((Option!6442 0))(
  ( (None!6441) (Some!6441 (v!34567 List!34570)) )
))
(declare-fun lt!1019996 () Option!6442)

(declare-fun matchR!3757 (Regex!8769 List!34570) Bool)

(assert (=> b!2882338 (matchR!3757 r!23079 (v!34567 lt!1019996))))

(declare-datatypes ((Unit!48019 0))(
  ( (Unit!48020) )
))
(declare-fun lt!1019997 () Unit!48019)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!32 (Regex!8769 Regex!8769 List!34570) Unit!48019)

(assert (=> b!2882338 (= lt!1019997 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!32 (regOne!18051 r!23079) (regTwo!18051 r!23079) (v!34567 lt!1019996)))))

(declare-fun get!10374 (Option!6442) List!34570)

(assert (=> b!2882338 (matchR!3757 (regOne!18051 r!23079) (get!10374 lt!1019996))))

(declare-fun lt!1019998 () Unit!48019)

(declare-fun lemmaGetWitnessMatches!64 (Regex!8769) Unit!48019)

(assert (=> b!2882338 (= lt!1019998 (lemmaGetWitnessMatches!64 (regOne!18051 r!23079)))))

(declare-fun res!1194230 () Bool)

(assert (=> start!281422 (=> (not res!1194230) (not e!1823340))))

(assert (=> start!281422 (= res!1194230 (validRegex!3542 r!23079))))

(assert (=> start!281422 e!1823340))

(assert (=> start!281422 e!1823341))

(declare-fun b!2882336 () Bool)

(declare-fun tp!924418 () Bool)

(declare-fun tp!924417 () Bool)

(assert (=> b!2882336 (= e!1823341 (and tp!924418 tp!924417))))

(declare-fun b!2882339 () Bool)

(declare-fun res!1194232 () Bool)

(assert (=> b!2882339 (=> (not res!1194232) (not e!1823340))))

(declare-fun isDefined!5006 (Option!6442) Bool)

(declare-fun getLanguageWitness!476 (Regex!8769) Option!6442)

(assert (=> b!2882339 (= res!1194232 (isDefined!5006 (getLanguageWitness!476 r!23079)))))

(declare-fun b!2882340 () Bool)

(assert (=> b!2882340 (= e!1823340 e!1823339)))

(declare-fun res!1194231 () Bool)

(assert (=> b!2882340 (=> (not res!1194231) (not e!1823339))))

(assert (=> b!2882340 (= res!1194231 ((_ is Some!6441) lt!1019996))))

(assert (=> b!2882340 (= lt!1019996 (getLanguageWitness!476 (regOne!18051 r!23079)))))

(assert (= (and start!281422 res!1194230) b!2882339))

(assert (= (and b!2882339 res!1194232) b!2882334))

(assert (= (and b!2882334 res!1194233) b!2882340))

(assert (= (and b!2882340 res!1194231) b!2882338))

(assert (= (and start!281422 ((_ is ElementMatch!8769) r!23079)) b!2882335))

(assert (= (and start!281422 ((_ is Concat!14090) r!23079)) b!2882336))

(assert (= (and start!281422 ((_ is Star!8769) r!23079)) b!2882333))

(assert (= (and start!281422 ((_ is Union!8769) r!23079)) b!2882337))

(declare-fun m!3299405 () Bool)

(assert (=> b!2882338 m!3299405))

(declare-fun m!3299407 () Bool)

(assert (=> b!2882338 m!3299407))

(declare-fun m!3299409 () Bool)

(assert (=> b!2882338 m!3299409))

(declare-fun m!3299411 () Bool)

(assert (=> b!2882338 m!3299411))

(assert (=> b!2882338 m!3299409))

(declare-fun m!3299413 () Bool)

(assert (=> b!2882338 m!3299413))

(declare-fun m!3299415 () Bool)

(assert (=> b!2882338 m!3299415))

(assert (=> start!281422 m!3299407))

(declare-fun m!3299417 () Bool)

(assert (=> b!2882339 m!3299417))

(assert (=> b!2882339 m!3299417))

(declare-fun m!3299419 () Bool)

(assert (=> b!2882339 m!3299419))

(declare-fun m!3299421 () Bool)

(assert (=> b!2882340 m!3299421))

(check-sat (not b!2882338) (not start!281422) (not b!2882340) (not b!2882337) (not b!2882333) (not b!2882339) tp_is_empty!15125 (not b!2882336))
(check-sat)
