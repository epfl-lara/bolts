; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549994 () Bool)

(assert start!549994)

(declare-fun b!5198384 () Bool)

(assert (=> b!5198384 true))

(assert (=> b!5198384 true))

(declare-fun lambda!260270 () Int)

(declare-fun lambda!260269 () Int)

(assert (=> b!5198384 (not (= lambda!260270 lambda!260269))))

(assert (=> b!5198384 true))

(assert (=> b!5198384 true))

(declare-fun b!5198393 () Bool)

(assert (=> b!5198393 true))

(declare-fun setIsEmpty!32932 () Bool)

(declare-fun setRes!32932 () Bool)

(assert (=> setIsEmpty!32932 setRes!32932))

(declare-fun b!5198371 () Bool)

(declare-fun res!2208294 () Bool)

(declare-fun e!3237276 () Bool)

(assert (=> b!5198371 (=> res!2208294 e!3237276)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29808 0))(
  ( (C!29809 (val!24606 Int)) )
))
(declare-datatypes ((Regex!14769 0))(
  ( (ElementMatch!14769 (c!895980 C!29808)) (Concat!23614 (regOne!30050 Regex!14769) (regTwo!30050 Regex!14769)) (EmptyExpr!14769) (Star!14769 (reg!15098 Regex!14769)) (EmptyLang!14769) (Union!14769 (regOne!30051 Regex!14769) (regTwo!30051 Regex!14769)) )
))
(declare-datatypes ((List!60606 0))(
  ( (Nil!60482) (Cons!60482 (h!66930 Regex!14769) (t!373759 List!60606)) )
))
(declare-datatypes ((Context!8306 0))(
  ( (Context!8307 (exprs!4653 List!60606)) )
))
(declare-fun lt!2139751 () (InoxSet Context!8306))

(declare-datatypes ((List!60607 0))(
  ( (Nil!60483) (Cons!60483 (h!66931 Context!8306) (t!373760 List!60607)) )
))
(declare-fun lt!2139772 () List!60607)

(declare-fun toList!8553 ((InoxSet Context!8306)) List!60607)

(assert (=> b!5198371 (= res!2208294 (not (= (toList!8553 lt!2139751) lt!2139772)))))

(declare-fun b!5198372 () Bool)

(declare-fun e!3237271 () Bool)

(declare-fun tp_is_empty!38791 () Bool)

(declare-fun tp!1458190 () Bool)

(assert (=> b!5198372 (= e!3237271 (and tp_is_empty!38791 tp!1458190))))

(declare-fun b!5198373 () Bool)

(declare-fun res!2208320 () Bool)

(declare-fun e!3237270 () Bool)

(assert (=> b!5198373 (=> res!2208320 e!3237270)))

(declare-fun zl!343 () List!60607)

(declare-fun isEmpty!32398 (List!60607) Bool)

(assert (=> b!5198373 (= res!2208320 (not (isEmpty!32398 (t!373760 zl!343))))))

(declare-fun b!5198374 () Bool)

(declare-fun res!2208313 () Bool)

(assert (=> b!5198374 (=> res!2208313 e!3237270)))

(get-info :version)

(assert (=> b!5198374 (= res!2208313 (not ((_ is Cons!60482) (exprs!4653 (h!66931 zl!343)))))))

(declare-fun b!5198375 () Bool)

(declare-fun res!2208311 () Bool)

(declare-fun e!3237280 () Bool)

(assert (=> b!5198375 (=> (not res!2208311) (not e!3237280))))

(declare-fun z!1189 () (InoxSet Context!8306))

(assert (=> b!5198375 (= res!2208311 (= (toList!8553 z!1189) zl!343))))

(declare-fun res!2208304 () Bool)

(assert (=> start!549994 (=> (not res!2208304) (not e!3237280))))

(declare-fun r!7292 () Regex!14769)

(declare-fun validRegex!6505 (Regex!14769) Bool)

(assert (=> start!549994 (= res!2208304 (validRegex!6505 r!7292))))

(assert (=> start!549994 e!3237280))

(declare-fun e!3237284 () Bool)

(assert (=> start!549994 e!3237284))

(declare-fun condSetEmpty!32932 () Bool)

(assert (=> start!549994 (= condSetEmpty!32932 (= z!1189 ((as const (Array Context!8306 Bool)) false)))))

(assert (=> start!549994 setRes!32932))

(declare-fun e!3237283 () Bool)

(assert (=> start!549994 e!3237283))

(assert (=> start!549994 e!3237271))

(declare-fun b!5198376 () Bool)

(assert (=> b!5198376 (= e!3237284 tp_is_empty!38791)))

(declare-fun b!5198377 () Bool)

(declare-fun res!2208314 () Bool)

(declare-fun e!3237275 () Bool)

(assert (=> b!5198377 (=> res!2208314 e!3237275)))

(declare-fun lt!2139765 () Context!8306)

(declare-fun lt!2139762 () Int)

(declare-fun contextDepth!4 (Context!8306) Int)

(assert (=> b!5198377 (= res!2208314 (>= (contextDepth!4 lt!2139765) lt!2139762))))

(declare-fun b!5198378 () Bool)

(assert (=> b!5198378 (= e!3237276 true)))

(declare-fun lt!2139748 () Regex!14769)

(declare-fun unfocusZipper!511 (List!60607) Regex!14769)

(assert (=> b!5198378 (= lt!2139748 (unfocusZipper!511 lt!2139772))))

(declare-fun b!5198379 () Bool)

(declare-fun e!3237282 () Bool)

(declare-fun e!3237279 () Bool)

(assert (=> b!5198379 (= e!3237282 e!3237279)))

(declare-fun res!2208303 () Bool)

(assert (=> b!5198379 (=> res!2208303 e!3237279)))

(declare-fun lt!2139752 () Int)

(assert (=> b!5198379 (= res!2208303 (>= lt!2139752 lt!2139762))))

(declare-fun lt!2139758 () Context!8306)

(assert (=> b!5198379 (= lt!2139762 (contextDepth!4 lt!2139758))))

(declare-fun lt!2139759 () Context!8306)

(assert (=> b!5198379 (= lt!2139752 (contextDepth!4 lt!2139759))))

(declare-fun b!5198380 () Bool)

(declare-fun tp!1458189 () Bool)

(assert (=> b!5198380 (= e!3237284 tp!1458189)))

(declare-fun b!5198381 () Bool)

(declare-fun res!2208297 () Bool)

(assert (=> b!5198381 (=> (not res!2208297) (not e!3237280))))

(assert (=> b!5198381 (= res!2208297 (= r!7292 (unfocusZipper!511 zl!343)))))

(declare-fun setNonEmpty!32932 () Bool)

(declare-fun e!3237274 () Bool)

(declare-fun setElem!32932 () Context!8306)

(declare-fun tp!1458192 () Bool)

(declare-fun inv!80169 (Context!8306) Bool)

(assert (=> setNonEmpty!32932 (= setRes!32932 (and tp!1458192 (inv!80169 setElem!32932) e!3237274))))

(declare-fun setRest!32932 () (InoxSet Context!8306))

(assert (=> setNonEmpty!32932 (= z!1189 ((_ map or) (store ((as const (Array Context!8306 Bool)) false) setElem!32932 true) setRest!32932))))

(declare-fun b!5198382 () Bool)

(declare-fun e!3237273 () Bool)

(assert (=> b!5198382 (= e!3237275 e!3237273)))

(declare-fun res!2208319 () Bool)

(assert (=> b!5198382 (=> res!2208319 e!3237273)))

(declare-fun lt!2139773 () Int)

(declare-fun zipperDepth!4 (List!60607) Int)

(assert (=> b!5198382 (= res!2208319 (>= (zipperDepth!4 lt!2139772) lt!2139773))))

(assert (=> b!5198382 (= lt!2139772 (Cons!60483 lt!2139765 Nil!60483))))

(declare-fun b!5198383 () Bool)

(declare-fun res!2208317 () Bool)

(declare-fun e!3237268 () Bool)

(assert (=> b!5198383 (=> res!2208317 e!3237268)))

(declare-fun lt!2139761 () (InoxSet Context!8306))

(declare-fun lt!2139763 () (InoxSet Context!8306))

(declare-fun lt!2139764 () (InoxSet Context!8306))

(declare-fun lt!2139780 () (InoxSet Context!8306))

(declare-fun lt!2139782 () (InoxSet Context!8306))

(assert (=> b!5198383 (= res!2208317 (or (not (= lt!2139782 ((_ map or) lt!2139780 lt!2139764))) (not (= lt!2139782 lt!2139761)) (not (= lt!2139782 lt!2139763))))))

(declare-fun e!3237269 () Bool)

(assert (=> b!5198384 (= e!3237270 e!3237269)))

(declare-fun res!2208295 () Bool)

(assert (=> b!5198384 (=> res!2208295 e!3237269)))

(declare-datatypes ((List!60608 0))(
  ( (Nil!60484) (Cons!60484 (h!66932 C!29808) (t!373761 List!60608)) )
))
(declare-fun s!2326 () List!60608)

(declare-fun lt!2139769 () Bool)

(declare-fun lt!2139781 () Bool)

(assert (=> b!5198384 (= res!2208295 (or (not (= lt!2139769 lt!2139781)) ((_ is Nil!60484) s!2326)))))

(declare-fun Exists!1950 (Int) Bool)

(assert (=> b!5198384 (= (Exists!1950 lambda!260269) (Exists!1950 lambda!260270))))

(declare-datatypes ((Unit!152372 0))(
  ( (Unit!152373) )
))
(declare-fun lt!2139756 () Unit!152372)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!604 (Regex!14769 Regex!14769 List!60608) Unit!152372)

(assert (=> b!5198384 (= lt!2139756 (lemmaExistCutMatchRandMatchRSpecEquivalent!604 (regOne!30050 r!7292) (regTwo!30050 r!7292) s!2326))))

(assert (=> b!5198384 (= lt!2139781 (Exists!1950 lambda!260269))))

(declare-datatypes ((tuple2!63936 0))(
  ( (tuple2!63937 (_1!35271 List!60608) (_2!35271 List!60608)) )
))
(declare-datatypes ((Option!14880 0))(
  ( (None!14879) (Some!14879 (v!50908 tuple2!63936)) )
))
(declare-fun isDefined!11583 (Option!14880) Bool)

(declare-fun findConcatSeparation!1294 (Regex!14769 Regex!14769 List!60608 List!60608 List!60608) Option!14880)

(assert (=> b!5198384 (= lt!2139781 (isDefined!11583 (findConcatSeparation!1294 (regOne!30050 r!7292) (regTwo!30050 r!7292) Nil!60484 s!2326 s!2326)))))

(declare-fun lt!2139779 () Unit!152372)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1058 (Regex!14769 Regex!14769 List!60608) Unit!152372)

(assert (=> b!5198384 (= lt!2139779 (lemmaFindConcatSeparationEquivalentToExists!1058 (regOne!30050 r!7292) (regTwo!30050 r!7292) s!2326))))

(declare-fun b!5198385 () Bool)

(declare-fun e!3237272 () Bool)

(declare-fun tp!1458193 () Bool)

(assert (=> b!5198385 (= e!3237272 tp!1458193)))

(declare-fun b!5198386 () Bool)

(assert (=> b!5198386 (= e!3237268 e!3237282)))

(declare-fun res!2208312 () Bool)

(assert (=> b!5198386 (=> res!2208312 e!3237282)))

(declare-fun lt!2139766 () Bool)

(declare-fun lt!2139776 () (InoxSet Context!8306))

(declare-fun matchZipper!1021 ((InoxSet Context!8306) List!60608) Bool)

(declare-fun derivationStepZipper!1049 ((InoxSet Context!8306) C!29808) (InoxSet Context!8306))

(assert (=> b!5198386 (= res!2208312 (not (= lt!2139766 (matchZipper!1021 (derivationStepZipper!1049 lt!2139776 (h!66932 s!2326)) (t!373761 s!2326)))))))

(assert (=> b!5198386 (= lt!2139766 (matchZipper!1021 lt!2139776 s!2326))))

(declare-fun b!5198387 () Bool)

(declare-fun res!2208308 () Bool)

(assert (=> b!5198387 (=> res!2208308 e!3237270)))

(declare-fun generalisedUnion!698 (List!60606) Regex!14769)

(declare-fun unfocusZipperList!211 (List!60607) List!60606)

(assert (=> b!5198387 (= res!2208308 (not (= r!7292 (generalisedUnion!698 (unfocusZipperList!211 zl!343)))))))

(declare-fun b!5198388 () Bool)

(declare-fun tp!1458188 () Bool)

(assert (=> b!5198388 (= e!3237274 tp!1458188)))

(declare-fun b!5198389 () Bool)

(assert (=> b!5198389 (= e!3237280 (not e!3237270))))

(declare-fun res!2208309 () Bool)

(assert (=> b!5198389 (=> res!2208309 e!3237270)))

(assert (=> b!5198389 (= res!2208309 (not ((_ is Cons!60483) zl!343)))))

(declare-fun matchRSpec!1872 (Regex!14769 List!60608) Bool)

(assert (=> b!5198389 (= lt!2139769 (matchRSpec!1872 r!7292 s!2326))))

(declare-fun matchR!6954 (Regex!14769 List!60608) Bool)

(assert (=> b!5198389 (= lt!2139769 (matchR!6954 r!7292 s!2326))))

(declare-fun lt!2139755 () Unit!152372)

(declare-fun mainMatchTheorem!1872 (Regex!14769 List!60608) Unit!152372)

(assert (=> b!5198389 (= lt!2139755 (mainMatchTheorem!1872 r!7292 s!2326))))

(declare-fun b!5198390 () Bool)

(declare-fun e!3237287 () Bool)

(assert (=> b!5198390 (= e!3237269 e!3237287)))

(declare-fun res!2208306 () Bool)

(assert (=> b!5198390 (=> res!2208306 e!3237287)))

(declare-fun lt!2139753 () (InoxSet Context!8306))

(declare-fun lt!2139771 () (InoxSet Context!8306))

(assert (=> b!5198390 (= res!2208306 (not (= lt!2139753 lt!2139771)))))

(declare-fun lt!2139750 () Context!8306)

(declare-fun derivationStepZipperDown!218 (Regex!14769 Context!8306 C!29808) (InoxSet Context!8306))

(assert (=> b!5198390 (= lt!2139771 (derivationStepZipperDown!218 r!7292 lt!2139750 (h!66932 s!2326)))))

(assert (=> b!5198390 (= lt!2139750 (Context!8307 Nil!60482))))

(declare-fun derivationStepZipperUp!141 (Context!8306 C!29808) (InoxSet Context!8306))

(assert (=> b!5198390 (= lt!2139753 (derivationStepZipperUp!141 lt!2139758 (h!66932 s!2326)))))

(assert (=> b!5198390 (= lt!2139758 (Context!8307 (Cons!60482 r!7292 Nil!60482)))))

(assert (=> b!5198390 (= lt!2139763 (derivationStepZipper!1049 z!1189 (h!66932 s!2326)))))

(declare-fun b!5198391 () Bool)

(declare-fun tp!1458187 () Bool)

(declare-fun tp!1458186 () Bool)

(assert (=> b!5198391 (= e!3237284 (and tp!1458187 tp!1458186))))

(declare-fun b!5198392 () Bool)

(declare-fun res!2208310 () Bool)

(assert (=> b!5198392 (=> res!2208310 e!3237270)))

(assert (=> b!5198392 (= res!2208310 (or ((_ is EmptyExpr!14769) r!7292) ((_ is EmptyLang!14769) r!7292) ((_ is ElementMatch!14769) r!7292) ((_ is Union!14769) r!7292) (not ((_ is Concat!23614) r!7292))))))

(declare-fun e!3237281 () Bool)

(assert (=> b!5198393 (= e!3237287 e!3237281)))

(declare-fun res!2208316 () Bool)

(assert (=> b!5198393 (=> res!2208316 e!3237281)))

(assert (=> b!5198393 (= res!2208316 (not (= lt!2139763 lt!2139771)))))

(declare-fun lambda!260271 () Int)

(declare-fun flatMap!500 ((InoxSet Context!8306) Int) (InoxSet Context!8306))

(assert (=> b!5198393 (= (flatMap!500 z!1189 lambda!260271) (derivationStepZipperUp!141 (h!66931 zl!343) (h!66932 s!2326)))))

(declare-fun lt!2139775 () Unit!152372)

(declare-fun lemmaFlatMapOnSingletonSet!32 ((InoxSet Context!8306) Context!8306 Int) Unit!152372)

(assert (=> b!5198393 (= lt!2139775 (lemmaFlatMapOnSingletonSet!32 z!1189 (h!66931 zl!343) lambda!260271))))

(declare-fun b!5198394 () Bool)

(declare-fun e!3237278 () Bool)

(assert (=> b!5198394 (= e!3237278 e!3237276)))

(declare-fun res!2208315 () Bool)

(assert (=> b!5198394 (=> res!2208315 e!3237276)))

(assert (=> b!5198394 (= res!2208315 (not (validRegex!6505 (regTwo!30050 r!7292))))))

(declare-fun lt!2139768 () Regex!14769)

(assert (=> b!5198394 (= (matchR!6954 lt!2139768 s!2326) lt!2139766)))

(declare-fun lt!2139774 () Unit!152372)

(declare-fun lt!2139778 () List!60607)

(declare-fun theoremZipperRegexEquiv!249 ((InoxSet Context!8306) List!60607 Regex!14769 List!60608) Unit!152372)

(assert (=> b!5198394 (= lt!2139774 (theoremZipperRegexEquiv!249 lt!2139776 lt!2139778 lt!2139768 s!2326))))

(declare-fun tp!1458185 () Bool)

(declare-fun b!5198395 () Bool)

(assert (=> b!5198395 (= e!3237283 (and (inv!80169 (h!66931 zl!343)) e!3237272 tp!1458185))))

(declare-fun b!5198396 () Bool)

(assert (=> b!5198396 (= e!3237273 e!3237278)))

(declare-fun res!2208298 () Bool)

(assert (=> b!5198396 (=> res!2208298 e!3237278)))

(declare-fun regexDepth!149 (Regex!14769) Int)

(assert (=> b!5198396 (= res!2208298 (not (= (regexDepth!149 r!7292) (regexDepth!149 lt!2139768))))))

(assert (=> b!5198396 (= lt!2139768 (Concat!23614 (regOne!30050 r!7292) (regTwo!30050 r!7292)))))

(declare-fun b!5198397 () Bool)

(declare-fun e!3237285 () Bool)

(assert (=> b!5198397 (= e!3237285 e!3237268)))

(declare-fun res!2208305 () Bool)

(assert (=> b!5198397 (=> res!2208305 e!3237268)))

(declare-fun lt!2139754 () Bool)

(assert (=> b!5198397 (= res!2208305 (not (= lt!2139754 (matchZipper!1021 lt!2139763 (t!373761 s!2326)))))))

(declare-fun lt!2139777 () Bool)

(assert (=> b!5198397 (= lt!2139777 lt!2139754)))

(declare-fun e!3237286 () Bool)

(assert (=> b!5198397 (= lt!2139754 e!3237286)))

(declare-fun res!2208307 () Bool)

(assert (=> b!5198397 (=> res!2208307 e!3237286)))

(declare-fun lt!2139757 () Bool)

(assert (=> b!5198397 (= res!2208307 lt!2139757)))

(assert (=> b!5198397 (= lt!2139777 (matchZipper!1021 lt!2139761 (t!373761 s!2326)))))

(assert (=> b!5198397 (= lt!2139757 (matchZipper!1021 lt!2139780 (t!373761 s!2326)))))

(declare-fun lt!2139760 () (InoxSet Context!8306))

(declare-fun lt!2139749 () Unit!152372)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!18 ((InoxSet Context!8306) (InoxSet Context!8306) List!60608) Unit!152372)

(assert (=> b!5198397 (= lt!2139749 (lemmaZipperConcatMatchesSameAsBothZippers!18 lt!2139780 lt!2139760 (t!373761 s!2326)))))

(declare-fun b!5198398 () Bool)

(assert (=> b!5198398 (= e!3237279 e!3237275)))

(declare-fun res!2208299 () Bool)

(assert (=> b!5198398 (=> res!2208299 e!3237275)))

(declare-fun lt!2139770 () Int)

(assert (=> b!5198398 (= res!2208299 (>= lt!2139770 lt!2139773))))

(assert (=> b!5198398 (= lt!2139773 (zipperDepth!4 (Cons!60483 lt!2139758 Nil!60483)))))

(assert (=> b!5198398 (= lt!2139770 (zipperDepth!4 lt!2139778))))

(assert (=> b!5198398 (= lt!2139778 (Cons!60483 lt!2139759 Nil!60483))))

(declare-fun b!5198399 () Bool)

(declare-fun e!3237277 () Bool)

(assert (=> b!5198399 (= e!3237277 e!3237285)))

(declare-fun res!2208296 () Bool)

(assert (=> b!5198399 (=> res!2208296 e!3237285)))

(assert (=> b!5198399 (= res!2208296 (not (= lt!2139763 lt!2139761)))))

(assert (=> b!5198399 (= lt!2139761 ((_ map or) lt!2139780 lt!2139760))))

(declare-fun b!5198400 () Bool)

(declare-fun res!2208300 () Bool)

(assert (=> b!5198400 (=> res!2208300 e!3237282)))

(assert (=> b!5198400 (= res!2208300 (not (= (matchZipper!1021 lt!2139751 s!2326) (matchZipper!1021 (derivationStepZipper!1049 lt!2139751 (h!66932 s!2326)) (t!373761 s!2326)))))))

(declare-fun b!5198401 () Bool)

(declare-fun res!2208302 () Bool)

(assert (=> b!5198401 (=> res!2208302 e!3237269)))

(declare-fun isEmpty!32399 (List!60606) Bool)

(assert (=> b!5198401 (= res!2208302 (not (isEmpty!32399 (t!373759 (exprs!4653 (h!66931 zl!343))))))))

(declare-fun b!5198402 () Bool)

(declare-fun tp!1458184 () Bool)

(declare-fun tp!1458191 () Bool)

(assert (=> b!5198402 (= e!3237284 (and tp!1458184 tp!1458191))))

(declare-fun b!5198403 () Bool)

(declare-fun res!2208301 () Bool)

(assert (=> b!5198403 (=> res!2208301 e!3237270)))

(declare-fun generalisedConcat!438 (List!60606) Regex!14769)

(assert (=> b!5198403 (= res!2208301 (not (= r!7292 (generalisedConcat!438 (exprs!4653 (h!66931 zl!343))))))))

(declare-fun b!5198404 () Bool)

(assert (=> b!5198404 (= e!3237286 (matchZipper!1021 lt!2139760 (t!373761 s!2326)))))

(declare-fun b!5198405 () Bool)

(assert (=> b!5198405 (= e!3237281 e!3237277)))

(declare-fun res!2208318 () Bool)

(assert (=> b!5198405 (=> res!2208318 e!3237277)))

(declare-fun nullable!4940 (Regex!14769) Bool)

(assert (=> b!5198405 (= res!2208318 (not (nullable!4940 (regOne!30050 r!7292))))))

(assert (=> b!5198405 (= lt!2139760 (derivationStepZipperDown!218 (regTwo!30050 r!7292) lt!2139750 (h!66932 s!2326)))))

(assert (=> b!5198405 (= lt!2139780 (derivationStepZipperDown!218 (regOne!30050 r!7292) lt!2139765 (h!66932 s!2326)))))

(assert (=> b!5198405 (= (flatMap!500 lt!2139751 lambda!260271) (derivationStepZipperUp!141 lt!2139765 (h!66932 s!2326)))))

(declare-fun lt!2139747 () Unit!152372)

(assert (=> b!5198405 (= lt!2139747 (lemmaFlatMapOnSingletonSet!32 lt!2139751 lt!2139765 lambda!260271))))

(assert (=> b!5198405 (= (flatMap!500 lt!2139776 lambda!260271) (derivationStepZipperUp!141 lt!2139759 (h!66932 s!2326)))))

(declare-fun lt!2139783 () Unit!152372)

(assert (=> b!5198405 (= lt!2139783 (lemmaFlatMapOnSingletonSet!32 lt!2139776 lt!2139759 lambda!260271))))

(assert (=> b!5198405 (= lt!2139764 (derivationStepZipperUp!141 lt!2139765 (h!66932 s!2326)))))

(assert (=> b!5198405 (= lt!2139782 (derivationStepZipperUp!141 lt!2139759 (h!66932 s!2326)))))

(assert (=> b!5198405 (= lt!2139751 (store ((as const (Array Context!8306 Bool)) false) lt!2139765 true))))

(declare-fun lt!2139767 () List!60606)

(assert (=> b!5198405 (= lt!2139765 (Context!8307 lt!2139767))))

(assert (=> b!5198405 (= lt!2139776 (store ((as const (Array Context!8306 Bool)) false) lt!2139759 true))))

(assert (=> b!5198405 (= lt!2139759 (Context!8307 (Cons!60482 (regOne!30050 r!7292) lt!2139767)))))

(assert (=> b!5198405 (= lt!2139767 (Cons!60482 (regTwo!30050 r!7292) Nil!60482))))

(assert (= (and start!549994 res!2208304) b!5198375))

(assert (= (and b!5198375 res!2208311) b!5198381))

(assert (= (and b!5198381 res!2208297) b!5198389))

(assert (= (and b!5198389 (not res!2208309)) b!5198373))

(assert (= (and b!5198373 (not res!2208320)) b!5198403))

(assert (= (and b!5198403 (not res!2208301)) b!5198374))

(assert (= (and b!5198374 (not res!2208313)) b!5198387))

(assert (= (and b!5198387 (not res!2208308)) b!5198392))

(assert (= (and b!5198392 (not res!2208310)) b!5198384))

(assert (= (and b!5198384 (not res!2208295)) b!5198401))

(assert (= (and b!5198401 (not res!2208302)) b!5198390))

(assert (= (and b!5198390 (not res!2208306)) b!5198393))

(assert (= (and b!5198393 (not res!2208316)) b!5198405))

(assert (= (and b!5198405 (not res!2208318)) b!5198399))

(assert (= (and b!5198399 (not res!2208296)) b!5198397))

(assert (= (and b!5198397 (not res!2208307)) b!5198404))

(assert (= (and b!5198397 (not res!2208305)) b!5198383))

(assert (= (and b!5198383 (not res!2208317)) b!5198386))

(assert (= (and b!5198386 (not res!2208312)) b!5198400))

(assert (= (and b!5198400 (not res!2208300)) b!5198379))

(assert (= (and b!5198379 (not res!2208303)) b!5198398))

(assert (= (and b!5198398 (not res!2208299)) b!5198377))

(assert (= (and b!5198377 (not res!2208314)) b!5198382))

(assert (= (and b!5198382 (not res!2208319)) b!5198396))

(assert (= (and b!5198396 (not res!2208298)) b!5198394))

(assert (= (and b!5198394 (not res!2208315)) b!5198371))

(assert (= (and b!5198371 (not res!2208294)) b!5198378))

(assert (= (and start!549994 ((_ is ElementMatch!14769) r!7292)) b!5198376))

(assert (= (and start!549994 ((_ is Concat!23614) r!7292)) b!5198391))

(assert (= (and start!549994 ((_ is Star!14769) r!7292)) b!5198380))

(assert (= (and start!549994 ((_ is Union!14769) r!7292)) b!5198402))

(assert (= (and start!549994 condSetEmpty!32932) setIsEmpty!32932))

(assert (= (and start!549994 (not condSetEmpty!32932)) setNonEmpty!32932))

(assert (= setNonEmpty!32932 b!5198388))

(assert (= b!5198395 b!5198385))

(assert (= (and start!549994 ((_ is Cons!60483) zl!343)) b!5198395))

(assert (= (and start!549994 ((_ is Cons!60484) s!2326)) b!5198372))

(declare-fun m!6251654 () Bool)

(assert (=> b!5198403 m!6251654))

(declare-fun m!6251656 () Bool)

(assert (=> b!5198394 m!6251656))

(declare-fun m!6251658 () Bool)

(assert (=> b!5198394 m!6251658))

(declare-fun m!6251660 () Bool)

(assert (=> b!5198394 m!6251660))

(declare-fun m!6251662 () Bool)

(assert (=> b!5198373 m!6251662))

(declare-fun m!6251664 () Bool)

(assert (=> b!5198404 m!6251664))

(declare-fun m!6251666 () Bool)

(assert (=> b!5198400 m!6251666))

(declare-fun m!6251668 () Bool)

(assert (=> b!5198400 m!6251668))

(assert (=> b!5198400 m!6251668))

(declare-fun m!6251670 () Bool)

(assert (=> b!5198400 m!6251670))

(declare-fun m!6251672 () Bool)

(assert (=> b!5198390 m!6251672))

(declare-fun m!6251674 () Bool)

(assert (=> b!5198390 m!6251674))

(declare-fun m!6251676 () Bool)

(assert (=> b!5198390 m!6251676))

(declare-fun m!6251678 () Bool)

(assert (=> b!5198389 m!6251678))

(declare-fun m!6251680 () Bool)

(assert (=> b!5198389 m!6251680))

(declare-fun m!6251682 () Bool)

(assert (=> b!5198389 m!6251682))

(declare-fun m!6251684 () Bool)

(assert (=> b!5198405 m!6251684))

(declare-fun m!6251686 () Bool)

(assert (=> b!5198405 m!6251686))

(declare-fun m!6251688 () Bool)

(assert (=> b!5198405 m!6251688))

(declare-fun m!6251690 () Bool)

(assert (=> b!5198405 m!6251690))

(declare-fun m!6251692 () Bool)

(assert (=> b!5198405 m!6251692))

(declare-fun m!6251694 () Bool)

(assert (=> b!5198405 m!6251694))

(declare-fun m!6251696 () Bool)

(assert (=> b!5198405 m!6251696))

(declare-fun m!6251698 () Bool)

(assert (=> b!5198405 m!6251698))

(declare-fun m!6251700 () Bool)

(assert (=> b!5198405 m!6251700))

(declare-fun m!6251702 () Bool)

(assert (=> b!5198405 m!6251702))

(declare-fun m!6251704 () Bool)

(assert (=> b!5198405 m!6251704))

(declare-fun m!6251706 () Bool)

(assert (=> b!5198397 m!6251706))

(declare-fun m!6251708 () Bool)

(assert (=> b!5198397 m!6251708))

(declare-fun m!6251710 () Bool)

(assert (=> b!5198397 m!6251710))

(declare-fun m!6251712 () Bool)

(assert (=> b!5198397 m!6251712))

(declare-fun m!6251714 () Bool)

(assert (=> b!5198387 m!6251714))

(assert (=> b!5198387 m!6251714))

(declare-fun m!6251716 () Bool)

(assert (=> b!5198387 m!6251716))

(declare-fun m!6251718 () Bool)

(assert (=> b!5198401 m!6251718))

(declare-fun m!6251720 () Bool)

(assert (=> b!5198379 m!6251720))

(declare-fun m!6251722 () Bool)

(assert (=> b!5198379 m!6251722))

(declare-fun m!6251724 () Bool)

(assert (=> b!5198384 m!6251724))

(assert (=> b!5198384 m!6251724))

(declare-fun m!6251726 () Bool)

(assert (=> b!5198384 m!6251726))

(declare-fun m!6251728 () Bool)

(assert (=> b!5198384 m!6251728))

(declare-fun m!6251730 () Bool)

(assert (=> b!5198384 m!6251730))

(declare-fun m!6251732 () Bool)

(assert (=> b!5198384 m!6251732))

(assert (=> b!5198384 m!6251726))

(declare-fun m!6251734 () Bool)

(assert (=> b!5198384 m!6251734))

(declare-fun m!6251736 () Bool)

(assert (=> b!5198398 m!6251736))

(declare-fun m!6251738 () Bool)

(assert (=> b!5198398 m!6251738))

(declare-fun m!6251740 () Bool)

(assert (=> b!5198381 m!6251740))

(declare-fun m!6251742 () Bool)

(assert (=> b!5198386 m!6251742))

(assert (=> b!5198386 m!6251742))

(declare-fun m!6251744 () Bool)

(assert (=> b!5198386 m!6251744))

(declare-fun m!6251746 () Bool)

(assert (=> b!5198386 m!6251746))

(declare-fun m!6251748 () Bool)

(assert (=> b!5198382 m!6251748))

(declare-fun m!6251750 () Bool)

(assert (=> setNonEmpty!32932 m!6251750))

(declare-fun m!6251752 () Bool)

(assert (=> start!549994 m!6251752))

(declare-fun m!6251754 () Bool)

(assert (=> b!5198378 m!6251754))

(declare-fun m!6251756 () Bool)

(assert (=> b!5198375 m!6251756))

(declare-fun m!6251758 () Bool)

(assert (=> b!5198371 m!6251758))

(declare-fun m!6251760 () Bool)

(assert (=> b!5198395 m!6251760))

(declare-fun m!6251762 () Bool)

(assert (=> b!5198393 m!6251762))

(declare-fun m!6251764 () Bool)

(assert (=> b!5198393 m!6251764))

(declare-fun m!6251766 () Bool)

(assert (=> b!5198393 m!6251766))

(declare-fun m!6251768 () Bool)

(assert (=> b!5198377 m!6251768))

(declare-fun m!6251770 () Bool)

(assert (=> b!5198396 m!6251770))

(declare-fun m!6251772 () Bool)

(assert (=> b!5198396 m!6251772))

(check-sat (not b!5198380) (not b!5198371) (not b!5198398) (not setNonEmpty!32932) (not b!5198402) (not b!5198397) (not b!5198379) (not b!5198385) (not b!5198372) (not b!5198378) (not b!5198400) (not b!5198389) (not b!5198373) (not b!5198403) (not b!5198394) (not b!5198404) (not b!5198401) tp_is_empty!38791 (not start!549994) (not b!5198387) (not b!5198386) (not b!5198391) (not b!5198382) (not b!5198375) (not b!5198384) (not b!5198396) (not b!5198377) (not b!5198393) (not b!5198388) (not b!5198381) (not b!5198390) (not b!5198395) (not b!5198405))
(check-sat)
