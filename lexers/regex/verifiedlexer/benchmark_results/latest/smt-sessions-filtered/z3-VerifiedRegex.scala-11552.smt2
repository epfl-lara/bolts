; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!636446 () Bool)

(assert start!636446)

(declare-fun b!6466354 () Bool)

(assert (=> b!6466354 true))

(assert (=> b!6466354 true))

(declare-fun lambda!357538 () Int)

(declare-fun lambda!357537 () Int)

(assert (=> b!6466354 (not (= lambda!357538 lambda!357537))))

(assert (=> b!6466354 true))

(assert (=> b!6466354 true))

(declare-fun b!6466347 () Bool)

(assert (=> b!6466347 true))

(declare-fun bs!1636707 () Bool)

(declare-fun b!6466352 () Bool)

(assert (= bs!1636707 (and b!6466352 b!6466354)))

(declare-datatypes ((C!32972 0))(
  ( (C!32973 (val!26188 Int)) )
))
(declare-datatypes ((Regex!16351 0))(
  ( (ElementMatch!16351 (c!1183593 C!32972)) (Concat!25196 (regOne!33214 Regex!16351) (regTwo!33214 Regex!16351)) (EmptyExpr!16351) (Star!16351 (reg!16680 Regex!16351)) (EmptyLang!16351) (Union!16351 (regOne!33215 Regex!16351) (regTwo!33215 Regex!16351)) )
))
(declare-fun lt!2384303 () Regex!16351)

(declare-fun lambda!357540 () Int)

(declare-fun r!7292 () Regex!16351)

(assert (=> bs!1636707 (= (= lt!2384303 (regOne!33214 r!7292)) (= lambda!357540 lambda!357537))))

(assert (=> bs!1636707 (not (= lambda!357540 lambda!357538))))

(assert (=> b!6466352 true))

(assert (=> b!6466352 true))

(assert (=> b!6466352 true))

(declare-fun lambda!357541 () Int)

(assert (=> bs!1636707 (not (= lambda!357541 lambda!357537))))

(assert (=> bs!1636707 (= (= lt!2384303 (regOne!33214 r!7292)) (= lambda!357541 lambda!357538))))

(assert (=> b!6466352 (not (= lambda!357541 lambda!357540))))

(assert (=> b!6466352 true))

(assert (=> b!6466352 true))

(assert (=> b!6466352 true))

(declare-fun bs!1636708 () Bool)

(declare-fun b!6466353 () Bool)

(assert (= bs!1636708 (and b!6466353 b!6466354)))

(declare-datatypes ((List!65352 0))(
  ( (Nil!65228) (Cons!65228 (h!71676 C!32972) (t!378974 List!65352)) )
))
(declare-datatypes ((tuple2!66660 0))(
  ( (tuple2!66661 (_1!36633 List!65352) (_2!36633 List!65352)) )
))
(declare-fun lt!2384295 () tuple2!66660)

(declare-fun s!2326 () List!65352)

(declare-fun lambda!357542 () Int)

(assert (=> bs!1636708 (= (and (= (_1!36633 lt!2384295) s!2326) (= (reg!16680 (regOne!33214 r!7292)) (regOne!33214 r!7292)) (= lt!2384303 (regTwo!33214 r!7292))) (= lambda!357542 lambda!357537))))

(assert (=> bs!1636708 (not (= lambda!357542 lambda!357538))))

(declare-fun bs!1636709 () Bool)

(assert (= bs!1636709 (and b!6466353 b!6466352)))

(assert (=> bs!1636709 (= (and (= (_1!36633 lt!2384295) s!2326) (= (reg!16680 (regOne!33214 r!7292)) lt!2384303) (= lt!2384303 (regTwo!33214 r!7292))) (= lambda!357542 lambda!357540))))

(assert (=> bs!1636709 (not (= lambda!357542 lambda!357541))))

(assert (=> b!6466353 true))

(assert (=> b!6466353 true))

(assert (=> b!6466353 true))

(declare-fun lambda!357543 () Int)

(assert (=> bs!1636709 (not (= lambda!357543 lambda!357541))))

(assert (=> bs!1636709 (not (= lambda!357543 lambda!357540))))

(assert (=> b!6466353 (not (= lambda!357543 lambda!357542))))

(assert (=> bs!1636708 (not (= lambda!357543 lambda!357537))))

(assert (=> bs!1636708 (not (= lambda!357543 lambda!357538))))

(assert (=> b!6466353 true))

(assert (=> b!6466353 true))

(assert (=> b!6466353 true))

(declare-fun lambda!357544 () Int)

(assert (=> bs!1636709 (= (and (= (_1!36633 lt!2384295) s!2326) (= (reg!16680 (regOne!33214 r!7292)) lt!2384303) (= lt!2384303 (regTwo!33214 r!7292))) (= lambda!357544 lambda!357541))))

(assert (=> bs!1636709 (not (= lambda!357544 lambda!357540))))

(assert (=> b!6466353 (not (= lambda!357544 lambda!357542))))

(assert (=> b!6466353 (not (= lambda!357544 lambda!357543))))

(assert (=> bs!1636708 (not (= lambda!357544 lambda!357537))))

(assert (=> bs!1636708 (= (and (= (_1!36633 lt!2384295) s!2326) (= (reg!16680 (regOne!33214 r!7292)) (regOne!33214 r!7292)) (= lt!2384303 (regTwo!33214 r!7292))) (= lambda!357544 lambda!357538))))

(assert (=> b!6466353 true))

(assert (=> b!6466353 true))

(assert (=> b!6466353 true))

(declare-fun b!6466336 () Bool)

(declare-fun e!3920306 () Bool)

(declare-fun tp_is_empty!41955 () Bool)

(declare-fun tp!1792863 () Bool)

(assert (=> b!6466336 (= e!3920306 (and tp_is_empty!41955 tp!1792863))))

(declare-fun b!6466337 () Bool)

(declare-fun e!3920291 () Bool)

(declare-fun e!3920297 () Bool)

(assert (=> b!6466337 (= e!3920291 e!3920297)))

(declare-fun res!2655768 () Bool)

(assert (=> b!6466337 (=> res!2655768 e!3920297)))

(declare-datatypes ((List!65353 0))(
  ( (Nil!65229) (Cons!65229 (h!71677 Regex!16351) (t!378975 List!65353)) )
))
(declare-datatypes ((Context!11470 0))(
  ( (Context!11471 (exprs!6235 List!65353)) )
))
(declare-fun lt!2384324 () Context!11470)

(declare-fun lt!2384304 () Regex!16351)

(declare-datatypes ((List!65354 0))(
  ( (Nil!65230) (Cons!65230 (h!71678 Context!11470) (t!378976 List!65354)) )
))
(declare-fun unfocusZipper!2093 (List!65354) Regex!16351)

(assert (=> b!6466337 (= res!2655768 (not (= (unfocusZipper!2093 (Cons!65230 lt!2384324 Nil!65230)) lt!2384304)))))

(declare-fun lt!2384312 () Regex!16351)

(assert (=> b!6466337 (= lt!2384304 (Concat!25196 (reg!16680 (regOne!33214 r!7292)) lt!2384312))))

(declare-fun b!6466338 () Bool)

(declare-fun e!3920295 () Bool)

(declare-fun tp!1792862 () Bool)

(assert (=> b!6466338 (= e!3920295 tp!1792862)))

(declare-fun b!6466339 () Bool)

(declare-fun e!3920298 () Bool)

(declare-fun tp!1792864 () Bool)

(assert (=> b!6466339 (= e!3920298 tp!1792864)))

(declare-fun b!6466340 () Bool)

(declare-fun res!2655754 () Bool)

(declare-fun e!3920283 () Bool)

(assert (=> b!6466340 (=> res!2655754 e!3920283)))

(declare-fun zl!343 () List!65354)

(declare-fun isEmpty!37408 (List!65353) Bool)

(assert (=> b!6466340 (= res!2655754 (isEmpty!37408 (t!378975 (exprs!6235 (h!71678 zl!343)))))))

(declare-fun b!6466341 () Bool)

(declare-fun res!2655758 () Bool)

(declare-fun e!3920299 () Bool)

(assert (=> b!6466341 (=> res!2655758 e!3920299)))

(get-info :version)

(assert (=> b!6466341 (= res!2655758 (not ((_ is Cons!65229) (exprs!6235 (h!71678 zl!343)))))))

(declare-fun b!6466342 () Bool)

(declare-fun e!3920303 () Bool)

(assert (=> b!6466342 (= e!3920303 e!3920291)))

(declare-fun res!2655752 () Bool)

(assert (=> b!6466342 (=> res!2655752 e!3920291)))

(assert (=> b!6466342 (= res!2655752 (not (= r!7292 lt!2384312)))))

(assert (=> b!6466342 (= lt!2384312 (Concat!25196 lt!2384303 (regTwo!33214 r!7292)))))

(declare-fun b!6466343 () Bool)

(declare-fun e!3920289 () Bool)

(declare-fun e!3920286 () Bool)

(assert (=> b!6466343 (= e!3920289 e!3920286)))

(declare-fun res!2655772 () Bool)

(assert (=> b!6466343 (=> res!2655772 e!3920286)))

(declare-fun lt!2384329 () List!65352)

(assert (=> b!6466343 (= res!2655772 (not (= lt!2384329 s!2326)))))

(declare-fun lt!2384297 () tuple2!66660)

(declare-fun lt!2384290 () List!65352)

(declare-fun ++!14419 (List!65352 List!65352) List!65352)

(assert (=> b!6466343 (= lt!2384329 (++!14419 (_1!36633 lt!2384297) lt!2384290))))

(declare-fun lt!2384315 () List!65352)

(assert (=> b!6466343 (= lt!2384329 (++!14419 lt!2384315 (_2!36633 lt!2384295)))))

(assert (=> b!6466343 (= lt!2384290 (++!14419 (_2!36633 lt!2384297) (_2!36633 lt!2384295)))))

(declare-datatypes ((Unit!158735 0))(
  ( (Unit!158736) )
))
(declare-fun lt!2384317 () Unit!158735)

(declare-fun lemmaConcatAssociativity!2922 (List!65352 List!65352 List!65352) Unit!158735)

(assert (=> b!6466343 (= lt!2384317 (lemmaConcatAssociativity!2922 (_1!36633 lt!2384297) (_2!36633 lt!2384297) (_2!36633 lt!2384295)))))

(declare-fun b!6466344 () Bool)

(declare-fun tp!1792859 () Bool)

(declare-fun tp!1792868 () Bool)

(assert (=> b!6466344 (= e!3920298 (and tp!1792859 tp!1792868))))

(declare-fun tp!1792865 () Bool)

(declare-fun e!3920285 () Bool)

(declare-fun b!6466345 () Bool)

(declare-fun inv!84124 (Context!11470) Bool)

(assert (=> b!6466345 (= e!3920285 (and (inv!84124 (h!71678 zl!343)) e!3920295 tp!1792865))))

(declare-fun b!6466346 () Bool)

(declare-fun e!3920292 () Bool)

(declare-fun e!3920284 () Bool)

(assert (=> b!6466346 (= e!3920292 e!3920284)))

(declare-fun res!2655766 () Bool)

(assert (=> b!6466346 (=> res!2655766 e!3920284)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2384320 () (InoxSet Context!11470))

(declare-fun lt!2384285 () (InoxSet Context!11470))

(assert (=> b!6466346 (= res!2655766 (not (= lt!2384320 lt!2384285)))))

(declare-fun lt!2384299 () Context!11470)

(declare-fun derivationStepZipperDown!1599 (Regex!16351 Context!11470 C!32972) (InoxSet Context!11470))

(assert (=> b!6466346 (= lt!2384285 (derivationStepZipperDown!1599 (reg!16680 (regOne!33214 r!7292)) lt!2384299 (h!71676 s!2326)))))

(declare-fun lt!2384334 () List!65353)

(assert (=> b!6466346 (= lt!2384299 (Context!11471 lt!2384334))))

(assert (=> b!6466346 (= lt!2384334 (Cons!65229 lt!2384303 (t!378975 (exprs!6235 (h!71678 zl!343)))))))

(assert (=> b!6466346 (= lt!2384303 (Star!16351 (reg!16680 (regOne!33214 r!7292))))))

(assert (=> b!6466347 (= e!3920283 e!3920292)))

(declare-fun res!2655748 () Bool)

(assert (=> b!6466347 (=> res!2655748 e!3920292)))

(assert (=> b!6466347 (= res!2655748 (or (and ((_ is ElementMatch!16351) (regOne!33214 r!7292)) (= (c!1183593 (regOne!33214 r!7292)) (h!71676 s!2326))) ((_ is Union!16351) (regOne!33214 r!7292))))))

(declare-fun lt!2384298 () Unit!158735)

(declare-fun e!3920305 () Unit!158735)

(assert (=> b!6466347 (= lt!2384298 e!3920305)))

(declare-fun c!1183592 () Bool)

(declare-fun nullable!6344 (Regex!16351) Bool)

(assert (=> b!6466347 (= c!1183592 (nullable!6344 (h!71677 (exprs!6235 (h!71678 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!11470))

(declare-fun lambda!357539 () Int)

(declare-fun flatMap!1856 ((InoxSet Context!11470) Int) (InoxSet Context!11470))

(declare-fun derivationStepZipperUp!1525 (Context!11470 C!32972) (InoxSet Context!11470))

(assert (=> b!6466347 (= (flatMap!1856 z!1189 lambda!357539) (derivationStepZipperUp!1525 (h!71678 zl!343) (h!71676 s!2326)))))

(declare-fun lt!2384322 () Unit!158735)

(declare-fun lemmaFlatMapOnSingletonSet!1382 ((InoxSet Context!11470) Context!11470 Int) Unit!158735)

(assert (=> b!6466347 (= lt!2384322 (lemmaFlatMapOnSingletonSet!1382 z!1189 (h!71678 zl!343) lambda!357539))))

(declare-fun lt!2384333 () (InoxSet Context!11470))

(declare-fun lt!2384294 () Context!11470)

(assert (=> b!6466347 (= lt!2384333 (derivationStepZipperUp!1525 lt!2384294 (h!71676 s!2326)))))

(assert (=> b!6466347 (= lt!2384320 (derivationStepZipperDown!1599 (h!71677 (exprs!6235 (h!71678 zl!343))) lt!2384294 (h!71676 s!2326)))))

(assert (=> b!6466347 (= lt!2384294 (Context!11471 (t!378975 (exprs!6235 (h!71678 zl!343)))))))

(declare-fun lt!2384302 () (InoxSet Context!11470))

(assert (=> b!6466347 (= lt!2384302 (derivationStepZipperUp!1525 (Context!11471 (Cons!65229 (h!71677 (exprs!6235 (h!71678 zl!343))) (t!378975 (exprs!6235 (h!71678 zl!343))))) (h!71676 s!2326)))))

(declare-fun b!6466348 () Bool)

(declare-fun res!2655760 () Bool)

(declare-fun e!3920288 () Bool)

(assert (=> b!6466348 (=> (not res!2655760) (not e!3920288))))

(declare-fun toList!10135 ((InoxSet Context!11470)) List!65354)

(assert (=> b!6466348 (= res!2655760 (= (toList!10135 z!1189) zl!343))))

(declare-fun b!6466349 () Bool)

(declare-fun e!3920293 () Bool)

(declare-fun lt!2384318 () Bool)

(declare-fun lt!2384301 () Bool)

(assert (=> b!6466349 (= e!3920293 (or (not lt!2384318) lt!2384301))))

(declare-fun b!6466350 () Bool)

(declare-fun res!2655746 () Bool)

(assert (=> b!6466350 (=> res!2655746 e!3920286)))

(declare-fun matchR!8534 (Regex!16351 List!65352) Bool)

(assert (=> b!6466350 (= res!2655746 (not (matchR!8534 (reg!16680 (regOne!33214 r!7292)) (_1!36633 lt!2384297))))))

(declare-fun setRes!44069 () Bool)

(declare-fun setNonEmpty!44069 () Bool)

(declare-fun setElem!44069 () Context!11470)

(declare-fun tp!1792866 () Bool)

(declare-fun e!3920287 () Bool)

(assert (=> setNonEmpty!44069 (= setRes!44069 (and tp!1792866 (inv!84124 setElem!44069) e!3920287))))

(declare-fun setRest!44069 () (InoxSet Context!11470))

(assert (=> setNonEmpty!44069 (= z!1189 ((_ map or) (store ((as const (Array Context!11470 Bool)) false) setElem!44069 true) setRest!44069))))

(declare-fun b!6466351 () Bool)

(declare-fun tp!1792861 () Bool)

(assert (=> b!6466351 (= e!3920287 tp!1792861)))

(declare-fun e!3920300 () Bool)

(declare-fun e!3920302 () Bool)

(assert (=> b!6466352 (= e!3920300 e!3920302)))

(declare-fun res!2655778 () Bool)

(assert (=> b!6466352 (=> res!2655778 e!3920302)))

(assert (=> b!6466352 (= res!2655778 (not (= (++!14419 (_1!36633 lt!2384295) (_2!36633 lt!2384295)) s!2326)))))

(declare-datatypes ((Option!16242 0))(
  ( (None!16241) (Some!16241 (v!52418 tuple2!66660)) )
))
(declare-fun lt!2384308 () Option!16242)

(declare-fun get!22610 (Option!16242) tuple2!66660)

(assert (=> b!6466352 (= lt!2384295 (get!22610 lt!2384308))))

(declare-fun Exists!3421 (Int) Bool)

(assert (=> b!6466352 (= (Exists!3421 lambda!357540) (Exists!3421 lambda!357541))))

(declare-fun lt!2384335 () Unit!158735)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1958 (Regex!16351 Regex!16351 List!65352) Unit!158735)

(assert (=> b!6466352 (= lt!2384335 (lemmaExistCutMatchRandMatchRSpecEquivalent!1958 lt!2384303 (regTwo!33214 r!7292) s!2326))))

(declare-fun isDefined!12945 (Option!16242) Bool)

(assert (=> b!6466352 (= (isDefined!12945 lt!2384308) (Exists!3421 lambda!357540))))

(declare-fun findConcatSeparation!2656 (Regex!16351 Regex!16351 List!65352 List!65352 List!65352) Option!16242)

(assert (=> b!6466352 (= lt!2384308 (findConcatSeparation!2656 lt!2384303 (regTwo!33214 r!7292) Nil!65228 s!2326 s!2326))))

(declare-fun lt!2384300 () Unit!158735)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2420 (Regex!16351 Regex!16351 List!65352) Unit!158735)

(assert (=> b!6466352 (= lt!2384300 (lemmaFindConcatSeparationEquivalentToExists!2420 lt!2384303 (regTwo!33214 r!7292) s!2326))))

(assert (=> b!6466353 (= e!3920302 e!3920289)))

(declare-fun res!2655770 () Bool)

(assert (=> b!6466353 (=> res!2655770 e!3920289)))

(assert (=> b!6466353 (= res!2655770 (not (= (_1!36633 lt!2384295) lt!2384315)))))

(assert (=> b!6466353 (= lt!2384315 (++!14419 (_1!36633 lt!2384297) (_2!36633 lt!2384297)))))

(declare-fun lt!2384306 () Option!16242)

(assert (=> b!6466353 (= lt!2384297 (get!22610 lt!2384306))))

(assert (=> b!6466353 (= (Exists!3421 lambda!357542) (Exists!3421 lambda!357544))))

(declare-fun lt!2384296 () Unit!158735)

(assert (=> b!6466353 (= lt!2384296 (lemmaExistCutMatchRandMatchRSpecEquivalent!1958 (reg!16680 (regOne!33214 r!7292)) lt!2384303 (_1!36633 lt!2384295)))))

(assert (=> b!6466353 (= (Exists!3421 lambda!357542) (Exists!3421 lambda!357543))))

(declare-fun lt!2384289 () Unit!158735)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!642 (Regex!16351 List!65352) Unit!158735)

(assert (=> b!6466353 (= lt!2384289 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!642 (reg!16680 (regOne!33214 r!7292)) (_1!36633 lt!2384295)))))

(assert (=> b!6466353 (= (isDefined!12945 lt!2384306) (Exists!3421 lambda!357542))))

(assert (=> b!6466353 (= lt!2384306 (findConcatSeparation!2656 (reg!16680 (regOne!33214 r!7292)) lt!2384303 Nil!65228 (_1!36633 lt!2384295) (_1!36633 lt!2384295)))))

(declare-fun lt!2384332 () Unit!158735)

(assert (=> b!6466353 (= lt!2384332 (lemmaFindConcatSeparationEquivalentToExists!2420 (reg!16680 (regOne!33214 r!7292)) lt!2384303 (_1!36633 lt!2384295)))))

(declare-fun matchRSpec!3452 (Regex!16351 List!65352) Bool)

(assert (=> b!6466353 (matchRSpec!3452 lt!2384303 (_1!36633 lt!2384295))))

(declare-fun lt!2384323 () Unit!158735)

(declare-fun mainMatchTheorem!3452 (Regex!16351 List!65352) Unit!158735)

(assert (=> b!6466353 (= lt!2384323 (mainMatchTheorem!3452 lt!2384303 (_1!36633 lt!2384295)))))

(assert (=> b!6466354 (= e!3920299 e!3920283)))

(declare-fun res!2655769 () Bool)

(assert (=> b!6466354 (=> res!2655769 e!3920283)))

(declare-fun lt!2384326 () Bool)

(assert (=> b!6466354 (= res!2655769 (or (not (= lt!2384318 lt!2384326)) ((_ is Nil!65228) s!2326)))))

(assert (=> b!6466354 (= (Exists!3421 lambda!357537) (Exists!3421 lambda!357538))))

(declare-fun lt!2384310 () Unit!158735)

(assert (=> b!6466354 (= lt!2384310 (lemmaExistCutMatchRandMatchRSpecEquivalent!1958 (regOne!33214 r!7292) (regTwo!33214 r!7292) s!2326))))

(assert (=> b!6466354 (= lt!2384326 (Exists!3421 lambda!357537))))

(assert (=> b!6466354 (= lt!2384326 (isDefined!12945 (findConcatSeparation!2656 (regOne!33214 r!7292) (regTwo!33214 r!7292) Nil!65228 s!2326 s!2326)))))

(declare-fun lt!2384305 () Unit!158735)

(assert (=> b!6466354 (= lt!2384305 (lemmaFindConcatSeparationEquivalentToExists!2420 (regOne!33214 r!7292) (regTwo!33214 r!7292) s!2326))))

(declare-fun b!6466355 () Bool)

(declare-fun Unit!158737 () Unit!158735)

(assert (=> b!6466355 (= e!3920305 Unit!158737)))

(declare-fun b!6466356 () Bool)

(declare-fun e!3920301 () Bool)

(assert (=> b!6466356 (= e!3920301 (not e!3920299))))

(declare-fun res!2655756 () Bool)

(assert (=> b!6466356 (=> res!2655756 e!3920299)))

(assert (=> b!6466356 (= res!2655756 (not ((_ is Cons!65230) zl!343)))))

(assert (=> b!6466356 (= lt!2384318 lt!2384301)))

(assert (=> b!6466356 (= lt!2384301 (matchRSpec!3452 r!7292 s!2326))))

(assert (=> b!6466356 (= lt!2384318 (matchR!8534 r!7292 s!2326))))

(declare-fun lt!2384284 () Unit!158735)

(assert (=> b!6466356 (= lt!2384284 (mainMatchTheorem!3452 r!7292 s!2326))))

(declare-fun b!6466357 () Bool)

(declare-fun e!3920282 () Bool)

(assert (=> b!6466357 (= e!3920282 (nullable!6344 (regOne!33214 (regOne!33214 r!7292))))))

(declare-fun b!6466358 () Bool)

(assert (=> b!6466358 (= e!3920298 tp_is_empty!41955)))

(declare-fun b!6466359 () Bool)

(assert (=> b!6466359 (= e!3920288 e!3920301)))

(declare-fun res!2655774 () Bool)

(assert (=> b!6466359 (=> (not res!2655774) (not e!3920301))))

(declare-fun lt!2384291 () Regex!16351)

(assert (=> b!6466359 (= res!2655774 (= r!7292 lt!2384291))))

(assert (=> b!6466359 (= lt!2384291 (unfocusZipper!2093 zl!343))))

(declare-fun b!6466360 () Bool)

(declare-fun res!2655759 () Bool)

(declare-fun e!3920290 () Bool)

(assert (=> b!6466360 (=> res!2655759 e!3920290)))

(declare-fun lt!2384313 () (InoxSet Context!11470))

(declare-fun lt!2384314 () List!65354)

(assert (=> b!6466360 (= res!2655759 (not (= (toList!10135 lt!2384313) lt!2384314)))))

(declare-fun b!6466361 () Bool)

(declare-fun e!3920294 () Bool)

(declare-fun matchZipper!2363 ((InoxSet Context!11470) List!65352) Bool)

(assert (=> b!6466361 (= e!3920294 (matchZipper!2363 lt!2384333 (t!378974 s!2326)))))

(declare-fun b!6466362 () Bool)

(declare-fun res!2655764 () Bool)

(assert (=> b!6466362 (=> res!2655764 e!3920303)))

(declare-fun lt!2384311 () (InoxSet Context!11470))

(declare-fun lt!2384319 () (InoxSet Context!11470))

(assert (=> b!6466362 (= res!2655764 (not (= (matchZipper!2363 lt!2384311 s!2326) (matchZipper!2363 lt!2384319 (t!378974 s!2326)))))))

(declare-fun b!6466363 () Bool)

(declare-fun res!2655771 () Bool)

(assert (=> b!6466363 (=> res!2655771 e!3920299)))

(declare-fun generalisedUnion!2195 (List!65353) Regex!16351)

(declare-fun unfocusZipperList!1772 (List!65354) List!65353)

(assert (=> b!6466363 (= res!2655771 (not (= r!7292 (generalisedUnion!2195 (unfocusZipperList!1772 zl!343)))))))

(declare-fun b!6466364 () Bool)

(declare-fun res!2655753 () Bool)

(assert (=> b!6466364 (=> res!2655753 e!3920292)))

(assert (=> b!6466364 (= res!2655753 e!3920282)))

(declare-fun res!2655767 () Bool)

(assert (=> b!6466364 (=> (not res!2655767) (not e!3920282))))

(assert (=> b!6466364 (= res!2655767 ((_ is Concat!25196) (regOne!33214 r!7292)))))

(declare-fun b!6466365 () Bool)

(declare-fun res!2655750 () Bool)

(assert (=> b!6466365 (=> res!2655750 e!3920299)))

(declare-fun isEmpty!37409 (List!65354) Bool)

(assert (=> b!6466365 (= res!2655750 (not (isEmpty!37409 (t!378976 zl!343))))))

(declare-fun b!6466366 () Bool)

(declare-fun res!2655777 () Bool)

(assert (=> b!6466366 (=> res!2655777 e!3920299)))

(assert (=> b!6466366 (= res!2655777 (or ((_ is EmptyExpr!16351) r!7292) ((_ is EmptyLang!16351) r!7292) ((_ is ElementMatch!16351) r!7292) ((_ is Union!16351) r!7292) (not ((_ is Concat!25196) r!7292))))))

(declare-fun b!6466367 () Bool)

(declare-fun e!3920304 () Bool)

(assert (=> b!6466367 (= e!3920304 e!3920300)))

(declare-fun res!2655745 () Bool)

(assert (=> b!6466367 (=> res!2655745 e!3920300)))

(assert (=> b!6466367 (= res!2655745 (not lt!2384318))))

(assert (=> b!6466367 e!3920293))

(declare-fun res!2655775 () Bool)

(assert (=> b!6466367 (=> (not res!2655775) (not e!3920293))))

(assert (=> b!6466367 (= res!2655775 (= (matchR!8534 lt!2384304 s!2326) (matchRSpec!3452 lt!2384304 s!2326)))))

(declare-fun lt!2384293 () Unit!158735)

(assert (=> b!6466367 (= lt!2384293 (mainMatchTheorem!3452 lt!2384304 s!2326))))

(declare-fun b!6466368 () Bool)

(declare-fun res!2655755 () Bool)

(assert (=> b!6466368 (=> res!2655755 e!3920302)))

(declare-fun isEmpty!37410 (List!65352) Bool)

(assert (=> b!6466368 (= res!2655755 (isEmpty!37410 (_1!36633 lt!2384295)))))

(declare-fun b!6466369 () Bool)

(declare-fun res!2655765 () Bool)

(assert (=> b!6466369 (=> res!2655765 e!3920299)))

(declare-fun generalisedConcat!1948 (List!65353) Regex!16351)

(assert (=> b!6466369 (= res!2655765 (not (= r!7292 (generalisedConcat!1948 (exprs!6235 (h!71678 zl!343))))))))

(declare-fun b!6466370 () Bool)

(declare-fun lt!2384321 () Regex!16351)

(assert (=> b!6466370 (= e!3920290 (= lt!2384312 lt!2384321))))

(declare-fun b!6466371 () Bool)

(assert (=> b!6466371 (= e!3920286 e!3920290)))

(declare-fun res!2655776 () Bool)

(assert (=> b!6466371 (=> res!2655776 e!3920290)))

(declare-fun validRegex!8087 (Regex!16351) Bool)

(assert (=> b!6466371 (= res!2655776 (not (validRegex!8087 lt!2384312)))))

(declare-fun lt!2384292 () (InoxSet Context!11470))

(assert (=> b!6466371 (matchZipper!2363 lt!2384292 (_1!36633 lt!2384297))))

(declare-fun lt!2384325 () Unit!158735)

(declare-fun lt!2384288 () List!65354)

(declare-fun theoremZipperRegexEquiv!817 ((InoxSet Context!11470) List!65354 Regex!16351 List!65352) Unit!158735)

(assert (=> b!6466371 (= lt!2384325 (theoremZipperRegexEquiv!817 lt!2384292 lt!2384288 (reg!16680 (regOne!33214 r!7292)) (_1!36633 lt!2384297)))))

(assert (=> b!6466371 (matchR!8534 lt!2384312 lt!2384290)))

(declare-fun lt!2384307 () Unit!158735)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!314 (Regex!16351 Regex!16351 List!65352 List!65352) Unit!158735)

(assert (=> b!6466371 (= lt!2384307 (lemmaTwoRegexMatchThenConcatMatchesConcatString!314 lt!2384303 (regTwo!33214 r!7292) (_2!36633 lt!2384297) (_2!36633 lt!2384295)))))

(assert (=> b!6466371 (matchR!8534 lt!2384303 lt!2384315)))

(declare-fun lt!2384336 () Unit!158735)

(declare-fun lemmaStarApp!128 (Regex!16351 List!65352 List!65352) Unit!158735)

(assert (=> b!6466371 (= lt!2384336 (lemmaStarApp!128 (reg!16680 (regOne!33214 r!7292)) (_1!36633 lt!2384297) (_2!36633 lt!2384297)))))

(declare-fun res!2655763 () Bool)

(assert (=> start!636446 (=> (not res!2655763) (not e!3920288))))

(assert (=> start!636446 (= res!2655763 (validRegex!8087 r!7292))))

(assert (=> start!636446 e!3920288))

(assert (=> start!636446 e!3920298))

(declare-fun condSetEmpty!44069 () Bool)

(assert (=> start!636446 (= condSetEmpty!44069 (= z!1189 ((as const (Array Context!11470 Bool)) false)))))

(assert (=> start!636446 setRes!44069))

(assert (=> start!636446 e!3920285))

(assert (=> start!636446 e!3920306))

(declare-fun b!6466372 () Bool)

(declare-fun res!2655751 () Bool)

(assert (=> b!6466372 (=> res!2655751 e!3920302)))

(assert (=> b!6466372 (= res!2655751 (not (matchR!8534 (regTwo!33214 r!7292) (_2!36633 lt!2384295))))))

(declare-fun setIsEmpty!44069 () Bool)

(assert (=> setIsEmpty!44069 setRes!44069))

(declare-fun b!6466373 () Bool)

(declare-fun Unit!158738 () Unit!158735)

(assert (=> b!6466373 (= e!3920305 Unit!158738)))

(declare-fun lt!2384316 () Unit!158735)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1182 ((InoxSet Context!11470) (InoxSet Context!11470) List!65352) Unit!158735)

(assert (=> b!6466373 (= lt!2384316 (lemmaZipperConcatMatchesSameAsBothZippers!1182 lt!2384320 lt!2384333 (t!378974 s!2326)))))

(declare-fun res!2655773 () Bool)

(assert (=> b!6466373 (= res!2655773 (matchZipper!2363 lt!2384320 (t!378974 s!2326)))))

(assert (=> b!6466373 (=> res!2655773 e!3920294)))

(assert (=> b!6466373 (= (matchZipper!2363 ((_ map or) lt!2384320 lt!2384333) (t!378974 s!2326)) e!3920294)))

(declare-fun b!6466374 () Bool)

(assert (=> b!6466374 (= e!3920284 e!3920303)))

(declare-fun res!2655757 () Bool)

(assert (=> b!6466374 (=> res!2655757 e!3920303)))

(assert (=> b!6466374 (= res!2655757 (not (= lt!2384319 lt!2384285)))))

(assert (=> b!6466374 (= (flatMap!1856 lt!2384311 lambda!357539) (derivationStepZipperUp!1525 lt!2384324 (h!71676 s!2326)))))

(declare-fun lt!2384327 () Unit!158735)

(assert (=> b!6466374 (= lt!2384327 (lemmaFlatMapOnSingletonSet!1382 lt!2384311 lt!2384324 lambda!357539))))

(declare-fun lt!2384330 () (InoxSet Context!11470))

(assert (=> b!6466374 (= lt!2384330 (derivationStepZipperUp!1525 lt!2384324 (h!71676 s!2326)))))

(declare-fun derivationStepZipper!2317 ((InoxSet Context!11470) C!32972) (InoxSet Context!11470))

(assert (=> b!6466374 (= lt!2384319 (derivationStepZipper!2317 lt!2384311 (h!71676 s!2326)))))

(assert (=> b!6466374 (= lt!2384311 (store ((as const (Array Context!11470 Bool)) false) lt!2384324 true))))

(assert (=> b!6466374 (= lt!2384324 (Context!11471 (Cons!65229 (reg!16680 (regOne!33214 r!7292)) lt!2384334)))))

(declare-fun b!6466375 () Bool)

(declare-fun res!2655743 () Bool)

(assert (=> b!6466375 (=> res!2655743 e!3920292)))

(assert (=> b!6466375 (= res!2655743 (or ((_ is Concat!25196) (regOne!33214 r!7292)) (not ((_ is Star!16351) (regOne!33214 r!7292)))))))

(declare-fun b!6466376 () Bool)

(declare-fun res!2655749 () Bool)

(assert (=> b!6466376 (=> res!2655749 e!3920303)))

(assert (=> b!6466376 (= res!2655749 (not (= lt!2384291 r!7292)))))

(declare-fun b!6466377 () Bool)

(declare-fun res!2655744 () Bool)

(assert (=> b!6466377 (=> res!2655744 e!3920302)))

(assert (=> b!6466377 (= res!2655744 (not (matchR!8534 lt!2384303 (_1!36633 lt!2384295))))))

(declare-fun b!6466378 () Bool)

(declare-fun e!3920296 () Bool)

(assert (=> b!6466378 (= e!3920297 e!3920296)))

(declare-fun res!2655762 () Bool)

(assert (=> b!6466378 (=> res!2655762 e!3920296)))

(assert (=> b!6466378 (= res!2655762 (not (= (unfocusZipper!2093 lt!2384288) (reg!16680 (regOne!33214 r!7292)))))))

(declare-fun lt!2384309 () Context!11470)

(assert (=> b!6466378 (= lt!2384288 (Cons!65230 lt!2384309 Nil!65230))))

(assert (=> b!6466378 (= (flatMap!1856 lt!2384313 lambda!357539) (derivationStepZipperUp!1525 lt!2384299 (h!71676 s!2326)))))

(declare-fun lt!2384328 () Unit!158735)

(assert (=> b!6466378 (= lt!2384328 (lemmaFlatMapOnSingletonSet!1382 lt!2384313 lt!2384299 lambda!357539))))

(assert (=> b!6466378 (= (flatMap!1856 lt!2384292 lambda!357539) (derivationStepZipperUp!1525 lt!2384309 (h!71676 s!2326)))))

(declare-fun lt!2384287 () Unit!158735)

(assert (=> b!6466378 (= lt!2384287 (lemmaFlatMapOnSingletonSet!1382 lt!2384292 lt!2384309 lambda!357539))))

(declare-fun lt!2384331 () (InoxSet Context!11470))

(assert (=> b!6466378 (= lt!2384331 (derivationStepZipperUp!1525 lt!2384299 (h!71676 s!2326)))))

(declare-fun lt!2384286 () (InoxSet Context!11470))

(assert (=> b!6466378 (= lt!2384286 (derivationStepZipperUp!1525 lt!2384309 (h!71676 s!2326)))))

(assert (=> b!6466378 (= lt!2384313 (store ((as const (Array Context!11470 Bool)) false) lt!2384299 true))))

(assert (=> b!6466378 (= lt!2384292 (store ((as const (Array Context!11470 Bool)) false) lt!2384309 true))))

(assert (=> b!6466378 (= lt!2384309 (Context!11471 (Cons!65229 (reg!16680 (regOne!33214 r!7292)) Nil!65229)))))

(declare-fun b!6466379 () Bool)

(assert (=> b!6466379 (= e!3920296 e!3920304)))

(declare-fun res!2655747 () Bool)

(assert (=> b!6466379 (=> res!2655747 e!3920304)))

(assert (=> b!6466379 (= res!2655747 (not (= lt!2384321 lt!2384312)))))

(assert (=> b!6466379 (= lt!2384321 (unfocusZipper!2093 lt!2384314))))

(assert (=> b!6466379 (= lt!2384314 (Cons!65230 lt!2384299 Nil!65230))))

(declare-fun b!6466380 () Bool)

(declare-fun res!2655761 () Bool)

(assert (=> b!6466380 (=> res!2655761 e!3920286)))

(assert (=> b!6466380 (= res!2655761 (not (matchR!8534 lt!2384303 (_2!36633 lt!2384297))))))

(declare-fun b!6466381 () Bool)

(declare-fun tp!1792860 () Bool)

(declare-fun tp!1792867 () Bool)

(assert (=> b!6466381 (= e!3920298 (and tp!1792860 tp!1792867))))

(assert (= (and start!636446 res!2655763) b!6466348))

(assert (= (and b!6466348 res!2655760) b!6466359))

(assert (= (and b!6466359 res!2655774) b!6466356))

(assert (= (and b!6466356 (not res!2655756)) b!6466365))

(assert (= (and b!6466365 (not res!2655750)) b!6466369))

(assert (= (and b!6466369 (not res!2655765)) b!6466341))

(assert (= (and b!6466341 (not res!2655758)) b!6466363))

(assert (= (and b!6466363 (not res!2655771)) b!6466366))

(assert (= (and b!6466366 (not res!2655777)) b!6466354))

(assert (= (and b!6466354 (not res!2655769)) b!6466340))

(assert (= (and b!6466340 (not res!2655754)) b!6466347))

(assert (= (and b!6466347 c!1183592) b!6466373))

(assert (= (and b!6466347 (not c!1183592)) b!6466355))

(assert (= (and b!6466373 (not res!2655773)) b!6466361))

(assert (= (and b!6466347 (not res!2655748)) b!6466364))

(assert (= (and b!6466364 res!2655767) b!6466357))

(assert (= (and b!6466364 (not res!2655753)) b!6466375))

(assert (= (and b!6466375 (not res!2655743)) b!6466346))

(assert (= (and b!6466346 (not res!2655766)) b!6466374))

(assert (= (and b!6466374 (not res!2655757)) b!6466362))

(assert (= (and b!6466362 (not res!2655764)) b!6466376))

(assert (= (and b!6466376 (not res!2655749)) b!6466342))

(assert (= (and b!6466342 (not res!2655752)) b!6466337))

(assert (= (and b!6466337 (not res!2655768)) b!6466378))

(assert (= (and b!6466378 (not res!2655762)) b!6466379))

(assert (= (and b!6466379 (not res!2655747)) b!6466367))

(assert (= (and b!6466367 res!2655775) b!6466349))

(assert (= (and b!6466367 (not res!2655745)) b!6466352))

(assert (= (and b!6466352 (not res!2655778)) b!6466377))

(assert (= (and b!6466377 (not res!2655744)) b!6466372))

(assert (= (and b!6466372 (not res!2655751)) b!6466368))

(assert (= (and b!6466368 (not res!2655755)) b!6466353))

(assert (= (and b!6466353 (not res!2655770)) b!6466343))

(assert (= (and b!6466343 (not res!2655772)) b!6466350))

(assert (= (and b!6466350 (not res!2655746)) b!6466380))

(assert (= (and b!6466380 (not res!2655761)) b!6466371))

(assert (= (and b!6466371 (not res!2655776)) b!6466360))

(assert (= (and b!6466360 (not res!2655759)) b!6466370))

(assert (= (and start!636446 ((_ is ElementMatch!16351) r!7292)) b!6466358))

(assert (= (and start!636446 ((_ is Concat!25196) r!7292)) b!6466344))

(assert (= (and start!636446 ((_ is Star!16351) r!7292)) b!6466339))

(assert (= (and start!636446 ((_ is Union!16351) r!7292)) b!6466381))

(assert (= (and start!636446 condSetEmpty!44069) setIsEmpty!44069))

(assert (= (and start!636446 (not condSetEmpty!44069)) setNonEmpty!44069))

(assert (= setNonEmpty!44069 b!6466351))

(assert (= b!6466345 b!6466338))

(assert (= (and start!636446 ((_ is Cons!65230) zl!343)) b!6466345))

(assert (= (and start!636446 ((_ is Cons!65228) s!2326)) b!6466336))

(declare-fun m!7255238 () Bool)

(assert (=> b!6466340 m!7255238))

(declare-fun m!7255240 () Bool)

(assert (=> b!6466378 m!7255240))

(declare-fun m!7255242 () Bool)

(assert (=> b!6466378 m!7255242))

(declare-fun m!7255244 () Bool)

(assert (=> b!6466378 m!7255244))

(declare-fun m!7255246 () Bool)

(assert (=> b!6466378 m!7255246))

(declare-fun m!7255248 () Bool)

(assert (=> b!6466378 m!7255248))

(declare-fun m!7255250 () Bool)

(assert (=> b!6466378 m!7255250))

(declare-fun m!7255252 () Bool)

(assert (=> b!6466378 m!7255252))

(declare-fun m!7255254 () Bool)

(assert (=> b!6466378 m!7255254))

(declare-fun m!7255256 () Bool)

(assert (=> b!6466378 m!7255256))

(declare-fun m!7255258 () Bool)

(assert (=> b!6466372 m!7255258))

(declare-fun m!7255260 () Bool)

(assert (=> b!6466368 m!7255260))

(declare-fun m!7255262 () Bool)

(assert (=> b!6466362 m!7255262))

(declare-fun m!7255264 () Bool)

(assert (=> b!6466362 m!7255264))

(declare-fun m!7255266 () Bool)

(assert (=> b!6466367 m!7255266))

(declare-fun m!7255268 () Bool)

(assert (=> b!6466367 m!7255268))

(declare-fun m!7255270 () Bool)

(assert (=> b!6466367 m!7255270))

(declare-fun m!7255272 () Bool)

(assert (=> b!6466353 m!7255272))

(declare-fun m!7255274 () Bool)

(assert (=> b!6466353 m!7255274))

(declare-fun m!7255276 () Bool)

(assert (=> b!6466353 m!7255276))

(declare-fun m!7255278 () Bool)

(assert (=> b!6466353 m!7255278))

(declare-fun m!7255280 () Bool)

(assert (=> b!6466353 m!7255280))

(declare-fun m!7255282 () Bool)

(assert (=> b!6466353 m!7255282))

(declare-fun m!7255284 () Bool)

(assert (=> b!6466353 m!7255284))

(declare-fun m!7255286 () Bool)

(assert (=> b!6466353 m!7255286))

(assert (=> b!6466353 m!7255274))

(declare-fun m!7255288 () Bool)

(assert (=> b!6466353 m!7255288))

(assert (=> b!6466353 m!7255274))

(declare-fun m!7255290 () Bool)

(assert (=> b!6466353 m!7255290))

(declare-fun m!7255292 () Bool)

(assert (=> b!6466353 m!7255292))

(declare-fun m!7255294 () Bool)

(assert (=> b!6466353 m!7255294))

(declare-fun m!7255296 () Bool)

(assert (=> b!6466352 m!7255296))

(declare-fun m!7255298 () Bool)

(assert (=> b!6466352 m!7255298))

(declare-fun m!7255300 () Bool)

(assert (=> b!6466352 m!7255300))

(declare-fun m!7255302 () Bool)

(assert (=> b!6466352 m!7255302))

(declare-fun m!7255304 () Bool)

(assert (=> b!6466352 m!7255304))

(assert (=> b!6466352 m!7255296))

(declare-fun m!7255306 () Bool)

(assert (=> b!6466352 m!7255306))

(declare-fun m!7255308 () Bool)

(assert (=> b!6466352 m!7255308))

(declare-fun m!7255310 () Bool)

(assert (=> b!6466352 m!7255310))

(declare-fun m!7255312 () Bool)

(assert (=> b!6466354 m!7255312))

(declare-fun m!7255314 () Bool)

(assert (=> b!6466354 m!7255314))

(declare-fun m!7255316 () Bool)

(assert (=> b!6466354 m!7255316))

(assert (=> b!6466354 m!7255312))

(assert (=> b!6466354 m!7255314))

(declare-fun m!7255318 () Bool)

(assert (=> b!6466354 m!7255318))

(declare-fun m!7255320 () Bool)

(assert (=> b!6466354 m!7255320))

(declare-fun m!7255322 () Bool)

(assert (=> b!6466354 m!7255322))

(declare-fun m!7255324 () Bool)

(assert (=> b!6466348 m!7255324))

(declare-fun m!7255326 () Bool)

(assert (=> b!6466377 m!7255326))

(declare-fun m!7255328 () Bool)

(assert (=> setNonEmpty!44069 m!7255328))

(declare-fun m!7255330 () Bool)

(assert (=> b!6466363 m!7255330))

(assert (=> b!6466363 m!7255330))

(declare-fun m!7255332 () Bool)

(assert (=> b!6466363 m!7255332))

(declare-fun m!7255334 () Bool)

(assert (=> b!6466379 m!7255334))

(declare-fun m!7255336 () Bool)

(assert (=> b!6466337 m!7255336))

(declare-fun m!7255338 () Bool)

(assert (=> b!6466359 m!7255338))

(declare-fun m!7255340 () Bool)

(assert (=> b!6466345 m!7255340))

(declare-fun m!7255342 () Bool)

(assert (=> b!6466361 m!7255342))

(declare-fun m!7255344 () Bool)

(assert (=> b!6466343 m!7255344))

(declare-fun m!7255346 () Bool)

(assert (=> b!6466343 m!7255346))

(declare-fun m!7255348 () Bool)

(assert (=> b!6466343 m!7255348))

(declare-fun m!7255350 () Bool)

(assert (=> b!6466343 m!7255350))

(declare-fun m!7255352 () Bool)

(assert (=> b!6466347 m!7255352))

(declare-fun m!7255354 () Bool)

(assert (=> b!6466347 m!7255354))

(declare-fun m!7255356 () Bool)

(assert (=> b!6466347 m!7255356))

(declare-fun m!7255358 () Bool)

(assert (=> b!6466347 m!7255358))

(declare-fun m!7255360 () Bool)

(assert (=> b!6466347 m!7255360))

(declare-fun m!7255362 () Bool)

(assert (=> b!6466347 m!7255362))

(declare-fun m!7255364 () Bool)

(assert (=> b!6466347 m!7255364))

(declare-fun m!7255366 () Bool)

(assert (=> b!6466380 m!7255366))

(declare-fun m!7255368 () Bool)

(assert (=> b!6466373 m!7255368))

(declare-fun m!7255370 () Bool)

(assert (=> b!6466373 m!7255370))

(declare-fun m!7255372 () Bool)

(assert (=> b!6466373 m!7255372))

(declare-fun m!7255374 () Bool)

(assert (=> b!6466357 m!7255374))

(declare-fun m!7255376 () Bool)

(assert (=> b!6466360 m!7255376))

(declare-fun m!7255378 () Bool)

(assert (=> b!6466346 m!7255378))

(declare-fun m!7255380 () Bool)

(assert (=> b!6466350 m!7255380))

(declare-fun m!7255382 () Bool)

(assert (=> start!636446 m!7255382))

(declare-fun m!7255384 () Bool)

(assert (=> b!6466365 m!7255384))

(declare-fun m!7255386 () Bool)

(assert (=> b!6466369 m!7255386))

(declare-fun m!7255388 () Bool)

(assert (=> b!6466356 m!7255388))

(declare-fun m!7255390 () Bool)

(assert (=> b!6466356 m!7255390))

(declare-fun m!7255392 () Bool)

(assert (=> b!6466356 m!7255392))

(declare-fun m!7255394 () Bool)

(assert (=> b!6466374 m!7255394))

(declare-fun m!7255396 () Bool)

(assert (=> b!6466374 m!7255396))

(declare-fun m!7255398 () Bool)

(assert (=> b!6466374 m!7255398))

(declare-fun m!7255400 () Bool)

(assert (=> b!6466374 m!7255400))

(declare-fun m!7255402 () Bool)

(assert (=> b!6466374 m!7255402))

(declare-fun m!7255404 () Bool)

(assert (=> b!6466371 m!7255404))

(declare-fun m!7255406 () Bool)

(assert (=> b!6466371 m!7255406))

(declare-fun m!7255408 () Bool)

(assert (=> b!6466371 m!7255408))

(declare-fun m!7255410 () Bool)

(assert (=> b!6466371 m!7255410))

(declare-fun m!7255412 () Bool)

(assert (=> b!6466371 m!7255412))

(declare-fun m!7255414 () Bool)

(assert (=> b!6466371 m!7255414))

(declare-fun m!7255416 () Bool)

(assert (=> b!6466371 m!7255416))

(check-sat (not b!6466339) (not b!6466353) (not b!6466346) (not b!6466361) (not b!6466380) (not b!6466347) (not b!6466378) (not b!6466343) (not b!6466367) (not b!6466373) (not b!6466354) (not b!6466365) (not b!6466350) (not b!6466338) (not b!6466372) (not b!6466374) (not b!6466357) (not b!6466362) (not b!6466360) (not b!6466351) (not b!6466377) (not b!6466381) (not b!6466348) (not b!6466379) (not b!6466371) (not start!636446) (not b!6466369) tp_is_empty!41955 (not b!6466368) (not b!6466344) (not b!6466337) (not b!6466340) (not b!6466345) (not b!6466352) (not b!6466356) (not setNonEmpty!44069) (not b!6466359) (not b!6466363) (not b!6466336))
(check-sat)
