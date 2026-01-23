; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281426 () Bool)

(assert start!281426)

(declare-fun b!2882381 () Bool)

(declare-fun e!1823365 () Bool)

(declare-fun tp!924449 () Bool)

(assert (=> b!2882381 (= e!1823365 tp!924449)))

(declare-fun res!1194257 () Bool)

(declare-fun e!1823363 () Bool)

(assert (=> start!281426 (=> (not res!1194257) (not e!1823363))))

(declare-datatypes ((C!17724 0))(
  ( (C!17725 (val!10896 Int)) )
))
(declare-datatypes ((Regex!8771 0))(
  ( (ElementMatch!8771 (c!468252 C!17724)) (Concat!14092 (regOne!18054 Regex!8771) (regTwo!18054 Regex!8771)) (EmptyExpr!8771) (Star!8771 (reg!9100 Regex!8771)) (EmptyLang!8771) (Union!8771 (regOne!18055 Regex!8771) (regTwo!18055 Regex!8771)) )
))
(declare-fun r!23079 () Regex!8771)

(declare-fun validRegex!3544 (Regex!8771) Bool)

(assert (=> start!281426 (= res!1194257 (validRegex!3544 r!23079))))

(assert (=> start!281426 e!1823363))

(assert (=> start!281426 e!1823365))

(declare-fun b!2882382 () Bool)

(declare-fun res!1194254 () Bool)

(declare-fun e!1823364 () Bool)

(assert (=> b!2882382 (=> (not res!1194254) (not e!1823364))))

(get-info :version)

(assert (=> b!2882382 (= res!1194254 (and (not ((_ is EmptyExpr!8771) r!23079)) (not ((_ is EmptyLang!8771) r!23079)) (not ((_ is ElementMatch!8771) r!23079)) (not ((_ is Star!8771) r!23079)) ((_ is Union!8771) r!23079)))))

(declare-fun b!2882383 () Bool)

(declare-fun tp!924448 () Bool)

(declare-fun tp!924445 () Bool)

(assert (=> b!2882383 (= e!1823365 (and tp!924448 tp!924445))))

(declare-fun b!2882384 () Bool)

(declare-fun tp!924446 () Bool)

(declare-fun tp!924447 () Bool)

(assert (=> b!2882384 (= e!1823365 (and tp!924446 tp!924447))))

(declare-fun b!2882385 () Bool)

(declare-fun tp_is_empty!15129 () Bool)

(assert (=> b!2882385 (= e!1823365 tp_is_empty!15129)))

(declare-fun b!2882386 () Bool)

(declare-fun e!1823362 () Bool)

(assert (=> b!2882386 (= e!1823364 e!1823362)))

(declare-fun res!1194256 () Bool)

(assert (=> b!2882386 (=> (not res!1194256) (not e!1823362))))

(declare-datatypes ((List!34572 0))(
  ( (Nil!34448) (Cons!34448 (h!39868 C!17724) (t!233615 List!34572)) )
))
(declare-datatypes ((Option!6444 0))(
  ( (None!6443) (Some!6443 (v!34569 List!34572)) )
))
(declare-fun lt!1020034 () Option!6444)

(assert (=> b!2882386 (= res!1194256 ((_ is Some!6443) lt!1020034))))

(declare-fun getLanguageWitness!478 (Regex!8771) Option!6444)

(assert (=> b!2882386 (= lt!1020034 (getLanguageWitness!478 (regOne!18055 r!23079)))))

(declare-fun b!2882387 () Bool)

(assert (=> b!2882387 (= e!1823362 (not true))))

(declare-fun lt!1020031 () Bool)

(declare-fun lt!1020032 () Regex!8771)

(declare-fun lt!1020030 () Option!6444)

(declare-fun matchR!3759 (Regex!8771 List!34572) Bool)

(declare-fun get!10377 (Option!6444) List!34572)

(assert (=> b!2882387 (= lt!1020031 (matchR!3759 lt!1020032 (get!10377 lt!1020030)))))

(assert (=> b!2882387 (matchR!3759 lt!1020032 (v!34569 lt!1020034))))

(assert (=> b!2882387 (= lt!1020032 (Union!8771 (regOne!18055 r!23079) (regTwo!18055 r!23079)))))

(declare-datatypes ((Unit!48023 0))(
  ( (Unit!48024) )
))
(declare-fun lt!1020033 () Unit!48023)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!34 (Regex!8771 Regex!8771 List!34572) Unit!48023)

(assert (=> b!2882387 (= lt!1020033 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!34 (regOne!18055 r!23079) (regTwo!18055 r!23079) (v!34569 lt!1020034)))))

(assert (=> b!2882387 (matchR!3759 (regOne!18055 r!23079) (get!10377 lt!1020034))))

(declare-fun lt!1020029 () Unit!48023)

(declare-fun lemmaGetWitnessMatches!66 (Regex!8771) Unit!48023)

(assert (=> b!2882387 (= lt!1020029 (lemmaGetWitnessMatches!66 (regOne!18055 r!23079)))))

(declare-fun b!2882388 () Bool)

(assert (=> b!2882388 (= e!1823363 e!1823364)))

(declare-fun res!1194255 () Bool)

(assert (=> b!2882388 (=> (not res!1194255) (not e!1823364))))

(declare-fun isDefined!5008 (Option!6444) Bool)

(assert (=> b!2882388 (= res!1194255 (isDefined!5008 lt!1020030))))

(assert (=> b!2882388 (= lt!1020030 (getLanguageWitness!478 r!23079))))

(assert (= (and start!281426 res!1194257) b!2882388))

(assert (= (and b!2882388 res!1194255) b!2882382))

(assert (= (and b!2882382 res!1194254) b!2882386))

(assert (= (and b!2882386 res!1194256) b!2882387))

(assert (= (and start!281426 ((_ is ElementMatch!8771) r!23079)) b!2882385))

(assert (= (and start!281426 ((_ is Concat!14092) r!23079)) b!2882383))

(assert (= (and start!281426 ((_ is Star!8771) r!23079)) b!2882381))

(assert (= (and start!281426 ((_ is Union!8771) r!23079)) b!2882384))

(declare-fun m!3299445 () Bool)

(assert (=> start!281426 m!3299445))

(declare-fun m!3299447 () Bool)

(assert (=> b!2882386 m!3299447))

(declare-fun m!3299449 () Bool)

(assert (=> b!2882387 m!3299449))

(declare-fun m!3299451 () Bool)

(assert (=> b!2882387 m!3299451))

(declare-fun m!3299453 () Bool)

(assert (=> b!2882387 m!3299453))

(declare-fun m!3299455 () Bool)

(assert (=> b!2882387 m!3299455))

(declare-fun m!3299457 () Bool)

(assert (=> b!2882387 m!3299457))

(declare-fun m!3299459 () Bool)

(assert (=> b!2882387 m!3299459))

(assert (=> b!2882387 m!3299455))

(assert (=> b!2882387 m!3299449))

(declare-fun m!3299461 () Bool)

(assert (=> b!2882387 m!3299461))

(declare-fun m!3299463 () Bool)

(assert (=> b!2882388 m!3299463))

(declare-fun m!3299465 () Bool)

(assert (=> b!2882388 m!3299465))

(check-sat (not start!281426) (not b!2882381) (not b!2882383) (not b!2882387) (not b!2882386) tp_is_empty!15129 (not b!2882388) (not b!2882384))
(check-sat)
