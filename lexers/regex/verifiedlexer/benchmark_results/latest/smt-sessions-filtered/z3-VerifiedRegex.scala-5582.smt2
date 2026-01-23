; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279832 () Bool)

(assert start!279832)

(declare-fun b!2867308 () Bool)

(declare-fun res!1190265 () Bool)

(declare-fun e!1815132 () Bool)

(assert (=> b!2867308 (=> (not res!1190265) (not e!1815132))))

(declare-datatypes ((C!17620 0))(
  ( (C!17621 (val!10844 Int)) )
))
(declare-datatypes ((Regex!8719 0))(
  ( (ElementMatch!8719 (c!463156 C!17620)) (Concat!14040 (regOne!17950 Regex!8719) (regTwo!17950 Regex!8719)) (EmptyExpr!8719) (Star!8719 (reg!9048 Regex!8719)) (EmptyLang!8719) (Union!8719 (regOne!17951 Regex!8719) (regTwo!17951 Regex!8719)) )
))
(declare-datatypes ((List!34466 0))(
  ( (Nil!34342) (Cons!34342 (h!39762 Regex!8719) (t!233509 List!34466)) )
))
(declare-datatypes ((Context!5358 0))(
  ( (Context!5359 (exprs!3179 List!34466)) )
))
(declare-fun c!7184 () Context!5358)

(get-info :version)

(assert (=> b!2867308 (= res!1190265 ((_ is Cons!34342) (exprs!3179 c!7184)))))

(declare-fun res!1190264 () Bool)

(assert (=> start!279832 (=> (not res!1190264) (not e!1815132))))

(declare-fun lostCause!811 (Context!5358) Bool)

(assert (=> start!279832 (= res!1190264 (not (lostCause!811 c!7184)))))

(assert (=> start!279832 e!1815132))

(declare-fun e!1815129 () Bool)

(declare-fun inv!46384 (Context!5358) Bool)

(assert (=> start!279832 (and (inv!46384 c!7184) e!1815129)))

(declare-fun b!2867309 () Bool)

(declare-fun e!1815133 () Bool)

(declare-fun e!1815130 () Bool)

(assert (=> b!2867309 (= e!1815133 (not e!1815130))))

(declare-fun res!1190267 () Bool)

(assert (=> b!2867309 (=> res!1190267 e!1815130)))

(declare-datatypes ((List!34467 0))(
  ( (Nil!34343) (Cons!34343 (h!39763 C!17620) (t!233510 List!34467)) )
))
(declare-datatypes ((Option!6396 0))(
  ( (None!6395) (Some!6395 (v!34517 List!34467)) )
))
(declare-fun lt!1017283 () Option!6396)

(declare-fun matchR!3727 (Regex!8719 List!34467) Bool)

(assert (=> b!2867309 (= res!1190267 (not (matchR!3727 (h!39762 (exprs!3179 c!7184)) (v!34517 lt!1017283))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!1017279 () (InoxSet Context!5358))

(declare-fun lt!1017285 () Option!6396)

(declare-fun matchZipper!475 ((InoxSet Context!5358) List!34467) Bool)

(declare-fun get!10313 (Option!6396) List!34467)

(assert (=> b!2867309 (matchZipper!475 lt!1017279 (get!10313 lt!1017285))))

(declare-fun lt!1017284 () Context!5358)

(assert (=> b!2867309 (= lt!1017279 (store ((as const (Array Context!5358 Bool)) false) lt!1017284 true))))

(declare-datatypes ((Unit!47955 0))(
  ( (Unit!47956) )
))
(declare-fun lt!1017277 () Unit!47955)

(declare-fun lemmaGetWitnessMatchesContext!32 (Context!5358) Unit!47955)

(assert (=> b!2867309 (= lt!1017277 (lemmaGetWitnessMatchesContext!32 lt!1017284))))

(assert (=> b!2867309 (matchR!3727 (h!39762 (exprs!3179 c!7184)) (get!10313 lt!1017283))))

(declare-fun lt!1017281 () Unit!47955)

(declare-fun lemmaGetWitnessMatches!34 (Regex!8719) Unit!47955)

(assert (=> b!2867309 (= lt!1017281 (lemmaGetWitnessMatches!34 (h!39762 (exprs!3179 c!7184))))))

(declare-fun b!2867310 () Bool)

(declare-fun tp!923040 () Bool)

(assert (=> b!2867310 (= e!1815129 tp!923040)))

(declare-fun b!2867311 () Bool)

(assert (=> b!2867311 (= e!1815130 (matchZipper!475 lt!1017279 (v!34517 lt!1017285)))))

(declare-fun lt!1017278 () (InoxSet Context!5358))

(assert (=> b!2867311 (matchZipper!475 lt!1017278 (v!34517 lt!1017283))))

(declare-fun lt!1017282 () Context!5358)

(declare-fun lt!1017280 () Unit!47955)

(declare-datatypes ((List!34468 0))(
  ( (Nil!34344) (Cons!34344 (h!39764 Context!5358) (t!233511 List!34468)) )
))
(declare-fun theoremZipperRegexEquiv!115 ((InoxSet Context!5358) List!34468 Regex!8719 List!34467) Unit!47955)

(assert (=> b!2867311 (= lt!1017280 (theoremZipperRegexEquiv!115 lt!1017278 (Cons!34344 lt!1017282 Nil!34344) (h!39762 (exprs!3179 c!7184)) (v!34517 lt!1017283)))))

(assert (=> b!2867311 (= lt!1017278 (store ((as const (Array Context!5358 Bool)) false) lt!1017282 true))))

(assert (=> b!2867311 (= lt!1017282 (Context!5359 (Cons!34342 (h!39762 (exprs!3179 c!7184)) Nil!34342)))))

(declare-fun b!2867312 () Bool)

(declare-fun e!1815131 () Bool)

(assert (=> b!2867312 (= e!1815132 e!1815131)))

(declare-fun res!1190263 () Bool)

(assert (=> b!2867312 (=> (not res!1190263) (not e!1815131))))

(assert (=> b!2867312 (= res!1190263 ((_ is Some!6395) lt!1017283))))

(declare-fun getLanguageWitness!395 (Regex!8719) Option!6396)

(assert (=> b!2867312 (= lt!1017283 (getLanguageWitness!395 (h!39762 (exprs!3179 c!7184))))))

(declare-fun b!2867313 () Bool)

(assert (=> b!2867313 (= e!1815131 e!1815133)))

(declare-fun res!1190266 () Bool)

(assert (=> b!2867313 (=> (not res!1190266) (not e!1815133))))

(assert (=> b!2867313 (= res!1190266 ((_ is Some!6395) lt!1017285))))

(declare-fun getLanguageWitness!396 (Context!5358) Option!6396)

(assert (=> b!2867313 (= lt!1017285 (getLanguageWitness!396 lt!1017284))))

(assert (=> b!2867313 (= lt!1017284 (Context!5359 (t!233509 (exprs!3179 c!7184))))))

(assert (= (and start!279832 res!1190264) b!2867308))

(assert (= (and b!2867308 res!1190265) b!2867312))

(assert (= (and b!2867312 res!1190263) b!2867313))

(assert (= (and b!2867313 res!1190266) b!2867309))

(assert (= (and b!2867309 (not res!1190267)) b!2867311))

(assert (= start!279832 b!2867310))

(declare-fun m!3287399 () Bool)

(assert (=> start!279832 m!3287399))

(declare-fun m!3287401 () Bool)

(assert (=> start!279832 m!3287401))

(declare-fun m!3287403 () Bool)

(assert (=> b!2867312 m!3287403))

(declare-fun m!3287405 () Bool)

(assert (=> b!2867313 m!3287405))

(declare-fun m!3287407 () Bool)

(assert (=> b!2867311 m!3287407))

(declare-fun m!3287409 () Bool)

(assert (=> b!2867311 m!3287409))

(declare-fun m!3287411 () Bool)

(assert (=> b!2867311 m!3287411))

(declare-fun m!3287413 () Bool)

(assert (=> b!2867311 m!3287413))

(declare-fun m!3287415 () Bool)

(assert (=> b!2867309 m!3287415))

(declare-fun m!3287417 () Bool)

(assert (=> b!2867309 m!3287417))

(declare-fun m!3287419 () Bool)

(assert (=> b!2867309 m!3287419))

(assert (=> b!2867309 m!3287417))

(declare-fun m!3287421 () Bool)

(assert (=> b!2867309 m!3287421))

(declare-fun m!3287423 () Bool)

(assert (=> b!2867309 m!3287423))

(declare-fun m!3287425 () Bool)

(assert (=> b!2867309 m!3287425))

(declare-fun m!3287427 () Bool)

(assert (=> b!2867309 m!3287427))

(assert (=> b!2867309 m!3287427))

(declare-fun m!3287429 () Bool)

(assert (=> b!2867309 m!3287429))

(check-sat (not b!2867311) (not b!2867312) (not b!2867313) (not start!279832) (not b!2867309) (not b!2867310))
(check-sat)
(get-model)

(declare-fun d!828903 () Bool)

(declare-fun lambda!106878 () Int)

(declare-fun exists!1138 (List!34466 Int) Bool)

(assert (=> d!828903 (= (lostCause!811 c!7184) (exists!1138 (exprs!3179 c!7184) lambda!106878))))

(declare-fun bs!521682 () Bool)

(assert (= bs!521682 d!828903))

(declare-fun m!3287479 () Bool)

(assert (=> bs!521682 m!3287479))

(assert (=> start!279832 d!828903))

(declare-fun bs!521683 () Bool)

(declare-fun d!828921 () Bool)

(assert (= bs!521683 (and d!828921 d!828903)))

(declare-fun lambda!106881 () Int)

(assert (=> bs!521683 (not (= lambda!106881 lambda!106878))))

(declare-fun forall!7065 (List!34466 Int) Bool)

(assert (=> d!828921 (= (inv!46384 c!7184) (forall!7065 (exprs!3179 c!7184) lambda!106881))))

(declare-fun bs!521684 () Bool)

(assert (= bs!521684 d!828921))

(declare-fun m!3287481 () Bool)

(assert (=> bs!521684 m!3287481))

(assert (=> start!279832 d!828921))

(declare-fun b!2867462 () Bool)

(declare-fun e!1815209 () Option!6396)

(declare-fun e!1815215 () Option!6396)

(assert (=> b!2867462 (= e!1815209 e!1815215)))

(declare-fun c!463224 () Bool)

(assert (=> b!2867462 (= c!463224 ((_ is EmptyLang!8719) (h!39762 (exprs!3179 c!7184))))))

(declare-fun b!2867463 () Bool)

(declare-fun e!1815212 () Option!6396)

(declare-fun e!1815208 () Option!6396)

(assert (=> b!2867463 (= e!1815212 e!1815208)))

(declare-fun c!463228 () Bool)

(assert (=> b!2867463 (= c!463228 ((_ is Star!8719) (h!39762 (exprs!3179 c!7184))))))

(declare-fun b!2867464 () Bool)

(assert (=> b!2867464 (= e!1815209 (Some!6395 Nil!34343))))

(declare-fun b!2867465 () Bool)

(assert (=> b!2867465 (= e!1815215 None!6395)))

(declare-fun d!828923 () Bool)

(declare-fun c!463222 () Bool)

(assert (=> d!828923 (= c!463222 ((_ is EmptyExpr!8719) (h!39762 (exprs!3179 c!7184))))))

(assert (=> d!828923 (= (getLanguageWitness!395 (h!39762 (exprs!3179 c!7184))) e!1815209)))

(declare-fun b!2867466 () Bool)

(declare-fun c!463223 () Bool)

(declare-fun lt!1017318 () Option!6396)

(assert (=> b!2867466 (= c!463223 ((_ is Some!6395) lt!1017318))))

(declare-fun call!184992 () Option!6396)

(assert (=> b!2867466 (= lt!1017318 call!184992)))

(declare-fun e!1815213 () Option!6396)

(declare-fun e!1815210 () Option!6396)

(assert (=> b!2867466 (= e!1815213 e!1815210)))

(declare-fun b!2867467 () Bool)

(declare-fun e!1815214 () Option!6396)

(declare-fun e!1815211 () Option!6396)

(assert (=> b!2867467 (= e!1815214 e!1815211)))

(declare-fun lt!1017319 () Option!6396)

(declare-fun call!184993 () Option!6396)

(assert (=> b!2867467 (= lt!1017319 call!184993)))

(declare-fun c!463227 () Bool)

(assert (=> b!2867467 (= c!463227 ((_ is Some!6395) lt!1017319))))

(declare-fun b!2867468 () Bool)

(assert (=> b!2867468 (= e!1815211 lt!1017319)))

(declare-fun b!2867469 () Bool)

(assert (=> b!2867469 (= e!1815214 e!1815213)))

(declare-fun lt!1017320 () Option!6396)

(assert (=> b!2867469 (= lt!1017320 call!184993)))

(declare-fun c!463225 () Bool)

(assert (=> b!2867469 (= c!463225 ((_ is Some!6395) lt!1017320))))

(declare-fun bm!184987 () Bool)

(declare-fun c!463226 () Bool)

(assert (=> bm!184987 (= call!184992 (getLanguageWitness!395 (ite c!463226 (regTwo!17951 (h!39762 (exprs!3179 c!7184))) (regTwo!17950 (h!39762 (exprs!3179 c!7184))))))))

(declare-fun b!2867470 () Bool)

(declare-fun c!463221 () Bool)

(assert (=> b!2867470 (= c!463221 ((_ is ElementMatch!8719) (h!39762 (exprs!3179 c!7184))))))

(assert (=> b!2867470 (= e!1815215 e!1815212)))

(declare-fun b!2867471 () Bool)

(assert (=> b!2867471 (= e!1815210 None!6395)))

(declare-fun b!2867472 () Bool)

(declare-fun ++!8158 (List!34467 List!34467) List!34467)

(assert (=> b!2867472 (= e!1815210 (Some!6395 (++!8158 (v!34517 lt!1017320) (v!34517 lt!1017318))))))

(declare-fun b!2867473 () Bool)

(assert (=> b!2867473 (= c!463226 ((_ is Union!8719) (h!39762 (exprs!3179 c!7184))))))

(assert (=> b!2867473 (= e!1815208 e!1815214)))

(declare-fun b!2867474 () Bool)

(assert (=> b!2867474 (= e!1815211 call!184992)))

(declare-fun b!2867475 () Bool)

(assert (=> b!2867475 (= e!1815208 (Some!6395 Nil!34343))))

(declare-fun b!2867476 () Bool)

(assert (=> b!2867476 (= e!1815213 None!6395)))

(declare-fun b!2867477 () Bool)

(assert (=> b!2867477 (= e!1815212 (Some!6395 (Cons!34343 (c!463156 (h!39762 (exprs!3179 c!7184))) Nil!34343)))))

(declare-fun bm!184988 () Bool)

(assert (=> bm!184988 (= call!184993 (getLanguageWitness!395 (ite c!463226 (regOne!17951 (h!39762 (exprs!3179 c!7184))) (regOne!17950 (h!39762 (exprs!3179 c!7184))))))))

(assert (= (and d!828923 c!463222) b!2867464))

(assert (= (and d!828923 (not c!463222)) b!2867462))

(assert (= (and b!2867462 c!463224) b!2867465))

(assert (= (and b!2867462 (not c!463224)) b!2867470))

(assert (= (and b!2867470 c!463221) b!2867477))

(assert (= (and b!2867470 (not c!463221)) b!2867463))

(assert (= (and b!2867463 c!463228) b!2867475))

(assert (= (and b!2867463 (not c!463228)) b!2867473))

(assert (= (and b!2867473 c!463226) b!2867467))

(assert (= (and b!2867473 (not c!463226)) b!2867469))

(assert (= (and b!2867467 c!463227) b!2867468))

(assert (= (and b!2867467 (not c!463227)) b!2867474))

(assert (= (and b!2867469 c!463225) b!2867466))

(assert (= (and b!2867469 (not c!463225)) b!2867476))

(assert (= (and b!2867466 c!463223) b!2867472))

(assert (= (and b!2867466 (not c!463223)) b!2867471))

(assert (= (or b!2867474 b!2867466) bm!184987))

(assert (= (or b!2867467 b!2867469) bm!184988))

(declare-fun m!3287505 () Bool)

(assert (=> bm!184987 m!3287505))

(declare-fun m!3287507 () Bool)

(assert (=> b!2867472 m!3287507))

(declare-fun m!3287509 () Bool)

(assert (=> bm!184988 m!3287509))

(assert (=> b!2867312 d!828923))

(declare-fun d!828929 () Bool)

(declare-fun c!463235 () Bool)

(declare-fun isEmpty!18692 (List!34467) Bool)

(assert (=> d!828929 (= c!463235 (isEmpty!18692 (v!34517 lt!1017285)))))

(declare-fun e!1815226 () Bool)

(assert (=> d!828929 (= (matchZipper!475 lt!1017279 (v!34517 lt!1017285)) e!1815226)))

(declare-fun b!2867498 () Bool)

(declare-fun nullableZipper!711 ((InoxSet Context!5358)) Bool)

(assert (=> b!2867498 (= e!1815226 (nullableZipper!711 lt!1017279))))

(declare-fun b!2867499 () Bool)

(declare-fun derivationStepZipper!467 ((InoxSet Context!5358) C!17620) (InoxSet Context!5358))

(declare-fun head!6332 (List!34467) C!17620)

(declare-fun tail!4557 (List!34467) List!34467)

(assert (=> b!2867499 (= e!1815226 (matchZipper!475 (derivationStepZipper!467 lt!1017279 (head!6332 (v!34517 lt!1017285))) (tail!4557 (v!34517 lt!1017285))))))

(assert (= (and d!828929 c!463235) b!2867498))

(assert (= (and d!828929 (not c!463235)) b!2867499))

(declare-fun m!3287527 () Bool)

(assert (=> d!828929 m!3287527))

(declare-fun m!3287529 () Bool)

(assert (=> b!2867498 m!3287529))

(declare-fun m!3287531 () Bool)

(assert (=> b!2867499 m!3287531))

(assert (=> b!2867499 m!3287531))

(declare-fun m!3287533 () Bool)

(assert (=> b!2867499 m!3287533))

(declare-fun m!3287535 () Bool)

(assert (=> b!2867499 m!3287535))

(assert (=> b!2867499 m!3287533))

(assert (=> b!2867499 m!3287535))

(declare-fun m!3287537 () Bool)

(assert (=> b!2867499 m!3287537))

(assert (=> b!2867311 d!828929))

(declare-fun d!828939 () Bool)

(declare-fun c!463236 () Bool)

(assert (=> d!828939 (= c!463236 (isEmpty!18692 (v!34517 lt!1017283)))))

(declare-fun e!1815227 () Bool)

(assert (=> d!828939 (= (matchZipper!475 lt!1017278 (v!34517 lt!1017283)) e!1815227)))

(declare-fun b!2867500 () Bool)

(assert (=> b!2867500 (= e!1815227 (nullableZipper!711 lt!1017278))))

(declare-fun b!2867501 () Bool)

(assert (=> b!2867501 (= e!1815227 (matchZipper!475 (derivationStepZipper!467 lt!1017278 (head!6332 (v!34517 lt!1017283))) (tail!4557 (v!34517 lt!1017283))))))

(assert (= (and d!828939 c!463236) b!2867500))

(assert (= (and d!828939 (not c!463236)) b!2867501))

(declare-fun m!3287539 () Bool)

(assert (=> d!828939 m!3287539))

(declare-fun m!3287541 () Bool)

(assert (=> b!2867500 m!3287541))

(declare-fun m!3287543 () Bool)

(assert (=> b!2867501 m!3287543))

(assert (=> b!2867501 m!3287543))

(declare-fun m!3287545 () Bool)

(assert (=> b!2867501 m!3287545))

(declare-fun m!3287547 () Bool)

(assert (=> b!2867501 m!3287547))

(assert (=> b!2867501 m!3287545))

(assert (=> b!2867501 m!3287547))

(declare-fun m!3287549 () Bool)

(assert (=> b!2867501 m!3287549))

(assert (=> b!2867311 d!828939))

(declare-fun d!828941 () Bool)

(assert (=> d!828941 (= (matchR!3727 (h!39762 (exprs!3179 c!7184)) (v!34517 lt!1017283)) (matchZipper!475 lt!1017278 (v!34517 lt!1017283)))))

(declare-fun lt!1017328 () Unit!47955)

(declare-fun choose!16962 ((InoxSet Context!5358) List!34468 Regex!8719 List!34467) Unit!47955)

(assert (=> d!828941 (= lt!1017328 (choose!16962 lt!1017278 (Cons!34344 lt!1017282 Nil!34344) (h!39762 (exprs!3179 c!7184)) (v!34517 lt!1017283)))))

(declare-fun validRegex!3500 (Regex!8719) Bool)

(assert (=> d!828941 (validRegex!3500 (h!39762 (exprs!3179 c!7184)))))

(assert (=> d!828941 (= (theoremZipperRegexEquiv!115 lt!1017278 (Cons!34344 lt!1017282 Nil!34344) (h!39762 (exprs!3179 c!7184)) (v!34517 lt!1017283)) lt!1017328)))

(declare-fun bs!521687 () Bool)

(assert (= bs!521687 d!828941))

(assert (=> bs!521687 m!3287415))

(assert (=> bs!521687 m!3287409))

(declare-fun m!3287557 () Bool)

(assert (=> bs!521687 m!3287557))

(declare-fun m!3287559 () Bool)

(assert (=> bs!521687 m!3287559))

(assert (=> b!2867311 d!828941))

(declare-fun bs!521688 () Bool)

(declare-fun d!828943 () Bool)

(assert (= bs!521688 (and d!828943 d!828903)))

(declare-fun lambda!106884 () Int)

(assert (=> bs!521688 (= lambda!106884 lambda!106878)))

(declare-fun bs!521689 () Bool)

(assert (= bs!521689 (and d!828943 d!828921)))

(assert (=> bs!521689 (not (= lambda!106884 lambda!106881))))

(declare-fun b!2867519 () Bool)

(declare-fun e!1815237 () Option!6396)

(assert (=> b!2867519 (= e!1815237 None!6395)))

(declare-fun b!2867520 () Bool)

(declare-fun c!463245 () Bool)

(declare-fun lt!1017336 () Option!6396)

(assert (=> b!2867520 (= c!463245 ((_ is Some!6395) lt!1017336))))

(assert (=> b!2867520 (= lt!1017336 (getLanguageWitness!396 (Context!5359 (t!233509 (exprs!3179 lt!1017284)))))))

(declare-fun e!1815238 () Option!6396)

(assert (=> b!2867520 (= e!1815238 e!1815237)))

(declare-fun b!2867521 () Bool)

(declare-fun e!1815239 () Option!6396)

(assert (=> b!2867521 (= e!1815239 (Some!6395 Nil!34343))))

(declare-fun b!2867522 () Bool)

(assert (=> b!2867522 (= e!1815239 e!1815238)))

(declare-fun lt!1017335 () Option!6396)

(assert (=> b!2867522 (= lt!1017335 (getLanguageWitness!395 (h!39762 (exprs!3179 lt!1017284))))))

(declare-fun c!463246 () Bool)

(assert (=> b!2867522 (= c!463246 ((_ is Some!6395) lt!1017335))))

(declare-fun b!2867523 () Bool)

(assert (=> b!2867523 (= e!1815238 None!6395)))

(declare-fun lt!1017337 () Option!6396)

(declare-fun isEmpty!18693 (Option!6396) Bool)

(assert (=> d!828943 (= (isEmpty!18693 lt!1017337) (exists!1138 (exprs!3179 lt!1017284) lambda!106884))))

(assert (=> d!828943 (= lt!1017337 e!1815239)))

(declare-fun c!463244 () Bool)

(assert (=> d!828943 (= c!463244 ((_ is Cons!34342) (exprs!3179 lt!1017284)))))

(assert (=> d!828943 (= (getLanguageWitness!396 lt!1017284) lt!1017337)))

(declare-fun b!2867524 () Bool)

(assert (=> b!2867524 (= e!1815237 (Some!6395 (++!8158 (v!34517 lt!1017335) (v!34517 lt!1017336))))))

(assert (= (and d!828943 c!463244) b!2867522))

(assert (= (and d!828943 (not c!463244)) b!2867521))

(assert (= (and b!2867522 c!463246) b!2867520))

(assert (= (and b!2867522 (not c!463246)) b!2867523))

(assert (= (and b!2867520 c!463245) b!2867524))

(assert (= (and b!2867520 (not c!463245)) b!2867519))

(declare-fun m!3287561 () Bool)

(assert (=> b!2867520 m!3287561))

(declare-fun m!3287563 () Bool)

(assert (=> b!2867522 m!3287563))

(declare-fun m!3287565 () Bool)

(assert (=> d!828943 m!3287565))

(declare-fun m!3287567 () Bool)

(assert (=> d!828943 m!3287567))

(declare-fun m!3287569 () Bool)

(assert (=> b!2867524 m!3287569))

(assert (=> b!2867313 d!828943))

(declare-fun d!828945 () Bool)

(assert (=> d!828945 (= (get!10313 lt!1017285) (v!34517 lt!1017285))))

(assert (=> b!2867309 d!828945))

(declare-fun b!2867553 () Bool)

(declare-fun res!1190320 () Bool)

(declare-fun e!1815255 () Bool)

(assert (=> b!2867553 (=> (not res!1190320) (not e!1815255))))

(declare-fun call!184997 () Bool)

(assert (=> b!2867553 (= res!1190320 (not call!184997))))

(declare-fun b!2867554 () Bool)

(declare-fun e!1815260 () Bool)

(assert (=> b!2867554 (= e!1815260 (not (= (head!6332 (v!34517 lt!1017283)) (c!463156 (h!39762 (exprs!3179 c!7184))))))))

(declare-fun b!2867555 () Bool)

(declare-fun e!1815258 () Bool)

(declare-fun nullable!2673 (Regex!8719) Bool)

(assert (=> b!2867555 (= e!1815258 (nullable!2673 (h!39762 (exprs!3179 c!7184))))))

(declare-fun d!828947 () Bool)

(declare-fun e!1815257 () Bool)

(assert (=> d!828947 e!1815257))

(declare-fun c!463255 () Bool)

(assert (=> d!828947 (= c!463255 ((_ is EmptyExpr!8719) (h!39762 (exprs!3179 c!7184))))))

(declare-fun lt!1017340 () Bool)

(assert (=> d!828947 (= lt!1017340 e!1815258)))

(declare-fun c!463253 () Bool)

(assert (=> d!828947 (= c!463253 (isEmpty!18692 (v!34517 lt!1017283)))))

(assert (=> d!828947 (validRegex!3500 (h!39762 (exprs!3179 c!7184)))))

(assert (=> d!828947 (= (matchR!3727 (h!39762 (exprs!3179 c!7184)) (v!34517 lt!1017283)) lt!1017340)))

(declare-fun b!2867556 () Bool)

(assert (=> b!2867556 (= e!1815255 (= (head!6332 (v!34517 lt!1017283)) (c!463156 (h!39762 (exprs!3179 c!7184)))))))

(declare-fun bm!184992 () Bool)

(assert (=> bm!184992 (= call!184997 (isEmpty!18692 (v!34517 lt!1017283)))))

(declare-fun b!2867557 () Bool)

(declare-fun e!1815254 () Bool)

(declare-fun e!1815256 () Bool)

(assert (=> b!2867557 (= e!1815254 e!1815256)))

(declare-fun res!1190321 () Bool)

(assert (=> b!2867557 (=> (not res!1190321) (not e!1815256))))

(assert (=> b!2867557 (= res!1190321 (not lt!1017340))))

(declare-fun b!2867558 () Bool)

(declare-fun e!1815259 () Bool)

(assert (=> b!2867558 (= e!1815257 e!1815259)))

(declare-fun c!463254 () Bool)

(assert (=> b!2867558 (= c!463254 ((_ is EmptyLang!8719) (h!39762 (exprs!3179 c!7184))))))

(declare-fun b!2867559 () Bool)

(declare-fun res!1190316 () Bool)

(assert (=> b!2867559 (=> res!1190316 e!1815254)))

(assert (=> b!2867559 (= res!1190316 (not ((_ is ElementMatch!8719) (h!39762 (exprs!3179 c!7184)))))))

(assert (=> b!2867559 (= e!1815259 e!1815254)))

(declare-fun b!2867560 () Bool)

(assert (=> b!2867560 (= e!1815256 e!1815260)))

(declare-fun res!1190322 () Bool)

(assert (=> b!2867560 (=> res!1190322 e!1815260)))

(assert (=> b!2867560 (= res!1190322 call!184997)))

(declare-fun b!2867561 () Bool)

(declare-fun derivativeStep!2310 (Regex!8719 C!17620) Regex!8719)

(assert (=> b!2867561 (= e!1815258 (matchR!3727 (derivativeStep!2310 (h!39762 (exprs!3179 c!7184)) (head!6332 (v!34517 lt!1017283))) (tail!4557 (v!34517 lt!1017283))))))

(declare-fun b!2867562 () Bool)

(assert (=> b!2867562 (= e!1815259 (not lt!1017340))))

(declare-fun b!2867563 () Bool)

(assert (=> b!2867563 (= e!1815257 (= lt!1017340 call!184997))))

(declare-fun b!2867564 () Bool)

(declare-fun res!1190323 () Bool)

(assert (=> b!2867564 (=> (not res!1190323) (not e!1815255))))

(assert (=> b!2867564 (= res!1190323 (isEmpty!18692 (tail!4557 (v!34517 lt!1017283))))))

(declare-fun b!2867565 () Bool)

(declare-fun res!1190317 () Bool)

(assert (=> b!2867565 (=> res!1190317 e!1815260)))

(assert (=> b!2867565 (= res!1190317 (not (isEmpty!18692 (tail!4557 (v!34517 lt!1017283)))))))

(declare-fun b!2867566 () Bool)

(declare-fun res!1190319 () Bool)

(assert (=> b!2867566 (=> res!1190319 e!1815254)))

(assert (=> b!2867566 (= res!1190319 e!1815255)))

(declare-fun res!1190318 () Bool)

(assert (=> b!2867566 (=> (not res!1190318) (not e!1815255))))

(assert (=> b!2867566 (= res!1190318 lt!1017340)))

(assert (= (and d!828947 c!463253) b!2867555))

(assert (= (and d!828947 (not c!463253)) b!2867561))

(assert (= (and d!828947 c!463255) b!2867563))

(assert (= (and d!828947 (not c!463255)) b!2867558))

(assert (= (and b!2867558 c!463254) b!2867562))

(assert (= (and b!2867558 (not c!463254)) b!2867559))

(assert (= (and b!2867559 (not res!1190316)) b!2867566))

(assert (= (and b!2867566 res!1190318) b!2867553))

(assert (= (and b!2867553 res!1190320) b!2867564))

(assert (= (and b!2867564 res!1190323) b!2867556))

(assert (= (and b!2867566 (not res!1190319)) b!2867557))

(assert (= (and b!2867557 res!1190321) b!2867560))

(assert (= (and b!2867560 (not res!1190322)) b!2867565))

(assert (= (and b!2867565 (not res!1190317)) b!2867554))

(assert (= (or b!2867563 b!2867553 b!2867560) bm!184992))

(assert (=> bm!184992 m!3287539))

(assert (=> b!2867554 m!3287543))

(assert (=> b!2867565 m!3287547))

(assert (=> b!2867565 m!3287547))

(declare-fun m!3287571 () Bool)

(assert (=> b!2867565 m!3287571))

(assert (=> b!2867564 m!3287547))

(assert (=> b!2867564 m!3287547))

(assert (=> b!2867564 m!3287571))

(assert (=> d!828947 m!3287539))

(assert (=> d!828947 m!3287559))

(assert (=> b!2867561 m!3287543))

(assert (=> b!2867561 m!3287543))

(declare-fun m!3287573 () Bool)

(assert (=> b!2867561 m!3287573))

(assert (=> b!2867561 m!3287547))

(assert (=> b!2867561 m!3287573))

(assert (=> b!2867561 m!3287547))

(declare-fun m!3287575 () Bool)

(assert (=> b!2867561 m!3287575))

(declare-fun m!3287577 () Bool)

(assert (=> b!2867555 m!3287577))

(assert (=> b!2867556 m!3287543))

(assert (=> b!2867309 d!828947))

(declare-fun d!828949 () Bool)

(declare-fun c!463256 () Bool)

(assert (=> d!828949 (= c!463256 (isEmpty!18692 (get!10313 lt!1017285)))))

(declare-fun e!1815261 () Bool)

(assert (=> d!828949 (= (matchZipper!475 lt!1017279 (get!10313 lt!1017285)) e!1815261)))

(declare-fun b!2867567 () Bool)

(assert (=> b!2867567 (= e!1815261 (nullableZipper!711 lt!1017279))))

(declare-fun b!2867568 () Bool)

(assert (=> b!2867568 (= e!1815261 (matchZipper!475 (derivationStepZipper!467 lt!1017279 (head!6332 (get!10313 lt!1017285))) (tail!4557 (get!10313 lt!1017285))))))

(assert (= (and d!828949 c!463256) b!2867567))

(assert (= (and d!828949 (not c!463256)) b!2867568))

(assert (=> d!828949 m!3287427))

(declare-fun m!3287579 () Bool)

(assert (=> d!828949 m!3287579))

(assert (=> b!2867567 m!3287529))

(assert (=> b!2867568 m!3287427))

(declare-fun m!3287581 () Bool)

(assert (=> b!2867568 m!3287581))

(assert (=> b!2867568 m!3287581))

(declare-fun m!3287583 () Bool)

(assert (=> b!2867568 m!3287583))

(assert (=> b!2867568 m!3287427))

(declare-fun m!3287585 () Bool)

(assert (=> b!2867568 m!3287585))

(assert (=> b!2867568 m!3287583))

(assert (=> b!2867568 m!3287585))

(declare-fun m!3287587 () Bool)

(assert (=> b!2867568 m!3287587))

(assert (=> b!2867309 d!828949))

(declare-fun d!828951 () Bool)

(assert (=> d!828951 (matchR!3727 (h!39762 (exprs!3179 c!7184)) (get!10313 (getLanguageWitness!395 (h!39762 (exprs!3179 c!7184)))))))

(declare-fun lt!1017343 () Unit!47955)

(declare-fun choose!16964 (Regex!8719) Unit!47955)

(assert (=> d!828951 (= lt!1017343 (choose!16964 (h!39762 (exprs!3179 c!7184))))))

(assert (=> d!828951 (validRegex!3500 (h!39762 (exprs!3179 c!7184)))))

(assert (=> d!828951 (= (lemmaGetWitnessMatches!34 (h!39762 (exprs!3179 c!7184))) lt!1017343)))

(declare-fun bs!521690 () Bool)

(assert (= bs!521690 d!828951))

(declare-fun m!3287589 () Bool)

(assert (=> bs!521690 m!3287589))

(assert (=> bs!521690 m!3287403))

(declare-fun m!3287591 () Bool)

(assert (=> bs!521690 m!3287591))

(assert (=> bs!521690 m!3287591))

(declare-fun m!3287593 () Bool)

(assert (=> bs!521690 m!3287593))

(assert (=> bs!521690 m!3287403))

(assert (=> bs!521690 m!3287559))

(assert (=> b!2867309 d!828951))

(declare-fun b!2867569 () Bool)

(declare-fun res!1190328 () Bool)

(declare-fun e!1815263 () Bool)

(assert (=> b!2867569 (=> (not res!1190328) (not e!1815263))))

(declare-fun call!184998 () Bool)

(assert (=> b!2867569 (= res!1190328 (not call!184998))))

(declare-fun b!2867570 () Bool)

(declare-fun e!1815268 () Bool)

(assert (=> b!2867570 (= e!1815268 (not (= (head!6332 (get!10313 lt!1017283)) (c!463156 (h!39762 (exprs!3179 c!7184))))))))

(declare-fun b!2867571 () Bool)

(declare-fun e!1815266 () Bool)

(assert (=> b!2867571 (= e!1815266 (nullable!2673 (h!39762 (exprs!3179 c!7184))))))

(declare-fun d!828953 () Bool)

(declare-fun e!1815265 () Bool)

(assert (=> d!828953 e!1815265))

(declare-fun c!463259 () Bool)

(assert (=> d!828953 (= c!463259 ((_ is EmptyExpr!8719) (h!39762 (exprs!3179 c!7184))))))

(declare-fun lt!1017344 () Bool)

(assert (=> d!828953 (= lt!1017344 e!1815266)))

(declare-fun c!463257 () Bool)

(assert (=> d!828953 (= c!463257 (isEmpty!18692 (get!10313 lt!1017283)))))

(assert (=> d!828953 (validRegex!3500 (h!39762 (exprs!3179 c!7184)))))

(assert (=> d!828953 (= (matchR!3727 (h!39762 (exprs!3179 c!7184)) (get!10313 lt!1017283)) lt!1017344)))

(declare-fun b!2867572 () Bool)

(assert (=> b!2867572 (= e!1815263 (= (head!6332 (get!10313 lt!1017283)) (c!463156 (h!39762 (exprs!3179 c!7184)))))))

(declare-fun bm!184993 () Bool)

(assert (=> bm!184993 (= call!184998 (isEmpty!18692 (get!10313 lt!1017283)))))

(declare-fun b!2867573 () Bool)

(declare-fun e!1815262 () Bool)

(declare-fun e!1815264 () Bool)

(assert (=> b!2867573 (= e!1815262 e!1815264)))

(declare-fun res!1190329 () Bool)

(assert (=> b!2867573 (=> (not res!1190329) (not e!1815264))))

(assert (=> b!2867573 (= res!1190329 (not lt!1017344))))

(declare-fun b!2867574 () Bool)

(declare-fun e!1815267 () Bool)

(assert (=> b!2867574 (= e!1815265 e!1815267)))

(declare-fun c!463258 () Bool)

(assert (=> b!2867574 (= c!463258 ((_ is EmptyLang!8719) (h!39762 (exprs!3179 c!7184))))))

(declare-fun b!2867575 () Bool)

(declare-fun res!1190324 () Bool)

(assert (=> b!2867575 (=> res!1190324 e!1815262)))

(assert (=> b!2867575 (= res!1190324 (not ((_ is ElementMatch!8719) (h!39762 (exprs!3179 c!7184)))))))

(assert (=> b!2867575 (= e!1815267 e!1815262)))

(declare-fun b!2867576 () Bool)

(assert (=> b!2867576 (= e!1815264 e!1815268)))

(declare-fun res!1190330 () Bool)

(assert (=> b!2867576 (=> res!1190330 e!1815268)))

(assert (=> b!2867576 (= res!1190330 call!184998)))

(declare-fun b!2867577 () Bool)

(assert (=> b!2867577 (= e!1815266 (matchR!3727 (derivativeStep!2310 (h!39762 (exprs!3179 c!7184)) (head!6332 (get!10313 lt!1017283))) (tail!4557 (get!10313 lt!1017283))))))

(declare-fun b!2867578 () Bool)

(assert (=> b!2867578 (= e!1815267 (not lt!1017344))))

(declare-fun b!2867579 () Bool)

(assert (=> b!2867579 (= e!1815265 (= lt!1017344 call!184998))))

(declare-fun b!2867580 () Bool)

(declare-fun res!1190331 () Bool)

(assert (=> b!2867580 (=> (not res!1190331) (not e!1815263))))

(assert (=> b!2867580 (= res!1190331 (isEmpty!18692 (tail!4557 (get!10313 lt!1017283))))))

(declare-fun b!2867581 () Bool)

(declare-fun res!1190325 () Bool)

(assert (=> b!2867581 (=> res!1190325 e!1815268)))

(assert (=> b!2867581 (= res!1190325 (not (isEmpty!18692 (tail!4557 (get!10313 lt!1017283)))))))

(declare-fun b!2867582 () Bool)

(declare-fun res!1190327 () Bool)

(assert (=> b!2867582 (=> res!1190327 e!1815262)))

(assert (=> b!2867582 (= res!1190327 e!1815263)))

(declare-fun res!1190326 () Bool)

(assert (=> b!2867582 (=> (not res!1190326) (not e!1815263))))

(assert (=> b!2867582 (= res!1190326 lt!1017344)))

(assert (= (and d!828953 c!463257) b!2867571))

(assert (= (and d!828953 (not c!463257)) b!2867577))

(assert (= (and d!828953 c!463259) b!2867579))

(assert (= (and d!828953 (not c!463259)) b!2867574))

(assert (= (and b!2867574 c!463258) b!2867578))

(assert (= (and b!2867574 (not c!463258)) b!2867575))

(assert (= (and b!2867575 (not res!1190324)) b!2867582))

(assert (= (and b!2867582 res!1190326) b!2867569))

(assert (= (and b!2867569 res!1190328) b!2867580))

(assert (= (and b!2867580 res!1190331) b!2867572))

(assert (= (and b!2867582 (not res!1190327)) b!2867573))

(assert (= (and b!2867573 res!1190329) b!2867576))

(assert (= (and b!2867576 (not res!1190330)) b!2867581))

(assert (= (and b!2867581 (not res!1190325)) b!2867570))

(assert (= (or b!2867579 b!2867569 b!2867576) bm!184993))

(assert (=> bm!184993 m!3287417))

(declare-fun m!3287595 () Bool)

(assert (=> bm!184993 m!3287595))

(assert (=> b!2867570 m!3287417))

(declare-fun m!3287597 () Bool)

(assert (=> b!2867570 m!3287597))

(assert (=> b!2867581 m!3287417))

(declare-fun m!3287599 () Bool)

(assert (=> b!2867581 m!3287599))

(assert (=> b!2867581 m!3287599))

(declare-fun m!3287601 () Bool)

(assert (=> b!2867581 m!3287601))

(assert (=> b!2867580 m!3287417))

(assert (=> b!2867580 m!3287599))

(assert (=> b!2867580 m!3287599))

(assert (=> b!2867580 m!3287601))

(assert (=> d!828953 m!3287417))

(assert (=> d!828953 m!3287595))

(assert (=> d!828953 m!3287559))

(assert (=> b!2867577 m!3287417))

(assert (=> b!2867577 m!3287597))

(assert (=> b!2867577 m!3287597))

(declare-fun m!3287603 () Bool)

(assert (=> b!2867577 m!3287603))

(assert (=> b!2867577 m!3287417))

(assert (=> b!2867577 m!3287599))

(assert (=> b!2867577 m!3287603))

(assert (=> b!2867577 m!3287599))

(declare-fun m!3287605 () Bool)

(assert (=> b!2867577 m!3287605))

(assert (=> b!2867571 m!3287577))

(assert (=> b!2867572 m!3287417))

(assert (=> b!2867572 m!3287597))

(assert (=> b!2867309 d!828953))

(declare-fun d!828955 () Bool)

(assert (=> d!828955 (= (get!10313 lt!1017283) (v!34517 lt!1017283))))

(assert (=> b!2867309 d!828955))

(declare-fun d!828957 () Bool)

(assert (=> d!828957 (matchZipper!475 (store ((as const (Array Context!5358 Bool)) false) lt!1017284 true) (get!10313 (getLanguageWitness!396 lt!1017284)))))

(declare-fun lt!1017347 () Unit!47955)

(declare-fun choose!16965 (Context!5358) Unit!47955)

(assert (=> d!828957 (= lt!1017347 (choose!16965 lt!1017284))))

(assert (=> d!828957 (not (lostCause!811 lt!1017284))))

(assert (=> d!828957 (= (lemmaGetWitnessMatchesContext!32 lt!1017284) lt!1017347)))

(declare-fun bs!521691 () Bool)

(assert (= bs!521691 d!828957))

(assert (=> bs!521691 m!3287423))

(assert (=> bs!521691 m!3287405))

(declare-fun m!3287607 () Bool)

(assert (=> bs!521691 m!3287607))

(assert (=> bs!521691 m!3287423))

(declare-fun m!3287609 () Bool)

(assert (=> bs!521691 m!3287609))

(declare-fun m!3287611 () Bool)

(assert (=> bs!521691 m!3287611))

(assert (=> bs!521691 m!3287405))

(assert (=> bs!521691 m!3287609))

(declare-fun m!3287613 () Bool)

(assert (=> bs!521691 m!3287613))

(assert (=> b!2867309 d!828957))

(declare-fun b!2867587 () Bool)

(declare-fun e!1815271 () Bool)

(declare-fun tp!923051 () Bool)

(declare-fun tp!923052 () Bool)

(assert (=> b!2867587 (= e!1815271 (and tp!923051 tp!923052))))

(assert (=> b!2867310 (= tp!923040 e!1815271)))

(assert (= (and b!2867310 ((_ is Cons!34342) (exprs!3179 c!7184))) b!2867587))

(check-sat (not d!828943) (not b!2867567) (not b!2867498) (not d!828903) (not b!2867564) (not bm!184992) (not d!828951) (not b!2867581) (not b!2867522) (not b!2867587) (not d!828947) (not b!2867580) (not b!2867499) (not d!828941) (not d!828949) (not d!828929) (not b!2867524) (not b!2867577) (not d!828957) (not bm!184988) (not bm!184987) (not b!2867570) (not b!2867555) (not b!2867572) (not b!2867501) (not b!2867556) (not b!2867565) (not bm!184993) (not d!828953) (not b!2867571) (not b!2867500) (not d!828921) (not b!2867472) (not b!2867554) (not d!828939) (not b!2867568) (not b!2867561) (not b!2867520))
(check-sat)
