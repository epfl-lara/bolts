; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279828 () Bool)

(assert start!279828)

(declare-fun b!2867272 () Bool)

(declare-fun res!1190234 () Bool)

(declare-fun e!1815102 () Bool)

(assert (=> b!2867272 (=> (not res!1190234) (not e!1815102))))

(declare-datatypes ((C!17616 0))(
  ( (C!17617 (val!10842 Int)) )
))
(declare-datatypes ((Regex!8717 0))(
  ( (ElementMatch!8717 (c!463154 C!17616)) (Concat!14038 (regOne!17946 Regex!8717) (regTwo!17946 Regex!8717)) (EmptyExpr!8717) (Star!8717 (reg!9046 Regex!8717)) (EmptyLang!8717) (Union!8717 (regOne!17947 Regex!8717) (regTwo!17947 Regex!8717)) )
))
(declare-datatypes ((List!34460 0))(
  ( (Nil!34336) (Cons!34336 (h!39756 Regex!8717) (t!233503 List!34460)) )
))
(declare-datatypes ((Context!5354 0))(
  ( (Context!5355 (exprs!3177 List!34460)) )
))
(declare-fun c!7184 () Context!5354)

(get-info :version)

(assert (=> b!2867272 (= res!1190234 ((_ is Cons!34336) (exprs!3177 c!7184)))))

(declare-fun b!2867273 () Bool)

(declare-fun e!1815103 () Bool)

(declare-fun e!1815100 () Bool)

(assert (=> b!2867273 (= e!1815103 (not e!1815100))))

(declare-fun res!1190235 () Bool)

(assert (=> b!2867273 (=> res!1190235 e!1815100)))

(declare-datatypes ((List!34461 0))(
  ( (Nil!34337) (Cons!34337 (h!39757 C!17616) (t!233504 List!34461)) )
))
(declare-datatypes ((Option!6394 0))(
  ( (None!6393) (Some!6393 (v!34515 List!34461)) )
))
(declare-fun lt!1017231 () Option!6394)

(declare-fun matchR!3725 (Regex!8717 List!34461) Bool)

(assert (=> b!2867273 (= res!1190235 (not (matchR!3725 (h!39756 (exprs!3177 c!7184)) (v!34515 lt!1017231))))))

(declare-fun lt!1017228 () Context!5354)

(declare-fun lt!1017227 () Option!6394)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!473 ((InoxSet Context!5354) List!34461) Bool)

(declare-fun get!10310 (Option!6394) List!34461)

(assert (=> b!2867273 (matchZipper!473 (store ((as const (Array Context!5354 Bool)) false) lt!1017228 true) (get!10310 lt!1017227))))

(declare-datatypes ((Unit!47951 0))(
  ( (Unit!47952) )
))
(declare-fun lt!1017226 () Unit!47951)

(declare-fun lemmaGetWitnessMatchesContext!30 (Context!5354) Unit!47951)

(assert (=> b!2867273 (= lt!1017226 (lemmaGetWitnessMatchesContext!30 lt!1017228))))

(assert (=> b!2867273 (matchR!3725 (h!39756 (exprs!3177 c!7184)) (get!10310 lt!1017231))))

(declare-fun lt!1017225 () Unit!47951)

(declare-fun lemmaGetWitnessMatches!32 (Regex!8717) Unit!47951)

(assert (=> b!2867273 (= lt!1017225 (lemmaGetWitnessMatches!32 (h!39756 (exprs!3177 c!7184))))))

(declare-fun b!2867274 () Bool)

(declare-fun e!1815101 () Bool)

(assert (=> b!2867274 (= e!1815102 e!1815101)))

(declare-fun res!1190233 () Bool)

(assert (=> b!2867274 (=> (not res!1190233) (not e!1815101))))

(assert (=> b!2867274 (= res!1190233 ((_ is Some!6393) lt!1017231))))

(declare-fun getLanguageWitness!391 (Regex!8717) Option!6394)

(assert (=> b!2867274 (= lt!1017231 (getLanguageWitness!391 (h!39756 (exprs!3177 c!7184))))))

(declare-fun res!1190236 () Bool)

(assert (=> start!279828 (=> (not res!1190236) (not e!1815102))))

(declare-fun lostCause!809 (Context!5354) Bool)

(assert (=> start!279828 (= res!1190236 (not (lostCause!809 c!7184)))))

(assert (=> start!279828 e!1815102))

(declare-fun e!1815099 () Bool)

(declare-fun inv!46379 (Context!5354) Bool)

(assert (=> start!279828 (and (inv!46379 c!7184) e!1815099)))

(declare-fun b!2867275 () Bool)

(assert (=> b!2867275 (= e!1815101 e!1815103)))

(declare-fun res!1190237 () Bool)

(assert (=> b!2867275 (=> (not res!1190237) (not e!1815103))))

(assert (=> b!2867275 (= res!1190237 ((_ is Some!6393) lt!1017227))))

(declare-fun getLanguageWitness!392 (Context!5354) Option!6394)

(assert (=> b!2867275 (= lt!1017227 (getLanguageWitness!392 lt!1017228))))

(assert (=> b!2867275 (= lt!1017228 (Context!5355 (t!233503 (exprs!3177 c!7184))))))

(declare-fun b!2867276 () Bool)

(declare-fun tp!923034 () Bool)

(assert (=> b!2867276 (= e!1815099 tp!923034)))

(declare-fun b!2867277 () Bool)

(assert (=> b!2867277 (= e!1815100 true)))

(declare-fun lt!1017224 () (InoxSet Context!5354))

(assert (=> b!2867277 (matchZipper!473 lt!1017224 (v!34515 lt!1017231))))

(declare-fun lt!1017229 () Context!5354)

(declare-fun lt!1017230 () Unit!47951)

(declare-datatypes ((List!34462 0))(
  ( (Nil!34338) (Cons!34338 (h!39758 Context!5354) (t!233505 List!34462)) )
))
(declare-fun theoremZipperRegexEquiv!113 ((InoxSet Context!5354) List!34462 Regex!8717 List!34461) Unit!47951)

(assert (=> b!2867277 (= lt!1017230 (theoremZipperRegexEquiv!113 lt!1017224 (Cons!34338 lt!1017229 Nil!34338) (h!39756 (exprs!3177 c!7184)) (v!34515 lt!1017231)))))

(assert (=> b!2867277 (= lt!1017224 (store ((as const (Array Context!5354 Bool)) false) lt!1017229 true))))

(assert (=> b!2867277 (= lt!1017229 (Context!5355 (Cons!34336 (h!39756 (exprs!3177 c!7184)) Nil!34336)))))

(assert (= (and start!279828 res!1190236) b!2867272))

(assert (= (and b!2867272 res!1190234) b!2867274))

(assert (= (and b!2867274 res!1190233) b!2867275))

(assert (= (and b!2867275 res!1190237) b!2867273))

(assert (= (and b!2867273 (not res!1190235)) b!2867277))

(assert (= start!279828 b!2867276))

(declare-fun m!3287337 () Bool)

(assert (=> start!279828 m!3287337))

(declare-fun m!3287339 () Bool)

(assert (=> start!279828 m!3287339))

(declare-fun m!3287341 () Bool)

(assert (=> b!2867274 m!3287341))

(declare-fun m!3287343 () Bool)

(assert (=> b!2867277 m!3287343))

(declare-fun m!3287345 () Bool)

(assert (=> b!2867277 m!3287345))

(declare-fun m!3287347 () Bool)

(assert (=> b!2867277 m!3287347))

(declare-fun m!3287349 () Bool)

(assert (=> b!2867275 m!3287349))

(declare-fun m!3287351 () Bool)

(assert (=> b!2867273 m!3287351))

(declare-fun m!3287353 () Bool)

(assert (=> b!2867273 m!3287353))

(declare-fun m!3287355 () Bool)

(assert (=> b!2867273 m!3287355))

(declare-fun m!3287357 () Bool)

(assert (=> b!2867273 m!3287357))

(declare-fun m!3287359 () Bool)

(assert (=> b!2867273 m!3287359))

(declare-fun m!3287361 () Bool)

(assert (=> b!2867273 m!3287361))

(assert (=> b!2867273 m!3287351))

(declare-fun m!3287363 () Bool)

(assert (=> b!2867273 m!3287363))

(assert (=> b!2867273 m!3287359))

(assert (=> b!2867273 m!3287361))

(declare-fun m!3287365 () Bool)

(assert (=> b!2867273 m!3287365))

(check-sat (not start!279828) (not b!2867275) (not b!2867277) (not b!2867276) (not b!2867274) (not b!2867273))
(check-sat)
