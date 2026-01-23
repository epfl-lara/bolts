; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!605150 () Bool)

(assert start!605150)

(declare-fun b!5964539 () Bool)

(assert (=> b!5964539 true))

(assert (=> b!5964539 true))

(declare-fun lambda!325851 () Int)

(declare-fun lambda!325850 () Int)

(assert (=> b!5964539 (not (= lambda!325851 lambda!325850))))

(assert (=> b!5964539 true))

(assert (=> b!5964539 true))

(declare-fun b!5964534 () Bool)

(assert (=> b!5964534 true))

(declare-fun b!5964515 () Bool)

(declare-fun e!3647990 () Bool)

(declare-fun tp!1659051 () Bool)

(declare-fun tp!1659055 () Bool)

(assert (=> b!5964515 (= e!3647990 (and tp!1659051 tp!1659055))))

(declare-fun b!5964516 () Bool)

(declare-fun res!2495292 () Bool)

(declare-fun e!3647985 () Bool)

(assert (=> b!5964516 (=> res!2495292 e!3647985)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32276 0))(
  ( (C!32277 (val!25840 Int)) )
))
(declare-datatypes ((Regex!16003 0))(
  ( (ElementMatch!16003 (c!1062498 C!32276)) (Concat!24848 (regOne!32518 Regex!16003) (regTwo!32518 Regex!16003)) (EmptyExpr!16003) (Star!16003 (reg!16332 Regex!16003)) (EmptyLang!16003) (Union!16003 (regOne!32519 Regex!16003) (regTwo!32519 Regex!16003)) )
))
(declare-datatypes ((List!64308 0))(
  ( (Nil!64184) (Cons!64184 (h!70632 Regex!16003) (t!377723 List!64308)) )
))
(declare-datatypes ((Context!10774 0))(
  ( (Context!10775 (exprs!5887 List!64308)) )
))
(declare-fun lt!2315402 () (InoxSet Context!10774))

(declare-fun lt!2315400 () (InoxSet Context!10774))

(declare-fun lt!2315411 () (InoxSet Context!10774))

(declare-fun lt!2315392 () (InoxSet Context!10774))

(declare-fun lt!2315398 () (InoxSet Context!10774))

(assert (=> b!5964516 (= res!2495292 (or (not (= lt!2315398 ((_ map or) lt!2315392 lt!2315400))) (not (= lt!2315398 lt!2315402)) (not (= lt!2315398 lt!2315411))))))

(declare-fun b!5964517 () Bool)

(declare-fun tp_is_empty!41259 () Bool)

(assert (=> b!5964517 (= e!3647990 tp_is_empty!41259)))

(declare-fun b!5964518 () Bool)

(declare-fun res!2495304 () Bool)

(declare-fun e!3647989 () Bool)

(assert (=> b!5964518 (=> res!2495304 e!3647989)))

(declare-datatypes ((List!64309 0))(
  ( (Nil!64185) (Cons!64185 (h!70633 Context!10774) (t!377724 List!64309)) )
))
(declare-fun zl!343 () List!64309)

(declare-fun isEmpty!36073 (List!64309) Bool)

(assert (=> b!5964518 (= res!2495304 (not (isEmpty!36073 (t!377724 zl!343))))))

(declare-fun b!5964519 () Bool)

(declare-fun e!3647998 () Bool)

(declare-fun tp!1659052 () Bool)

(assert (=> b!5964519 (= e!3647998 tp!1659052)))

(declare-fun b!5964520 () Bool)

(declare-fun tp!1659056 () Bool)

(assert (=> b!5964520 (= e!3647990 tp!1659056)))

(declare-fun b!5964521 () Bool)

(declare-fun e!3647984 () Bool)

(declare-fun lt!2315394 () Regex!16003)

(declare-fun validRegex!7739 (Regex!16003) Bool)

(assert (=> b!5964521 (= e!3647984 (validRegex!7739 lt!2315394))))

(declare-fun res!2495300 () Bool)

(declare-fun e!3647986 () Bool)

(assert (=> start!605150 (=> (not res!2495300) (not e!3647986))))

(declare-fun r!7292 () Regex!16003)

(assert (=> start!605150 (= res!2495300 (validRegex!7739 r!7292))))

(assert (=> start!605150 e!3647986))

(assert (=> start!605150 e!3647990))

(declare-fun condSetEmpty!40541 () Bool)

(declare-fun z!1189 () (InoxSet Context!10774))

(assert (=> start!605150 (= condSetEmpty!40541 (= z!1189 ((as const (Array Context!10774 Bool)) false)))))

(declare-fun setRes!40541 () Bool)

(assert (=> start!605150 setRes!40541))

(declare-fun e!3647995 () Bool)

(assert (=> start!605150 e!3647995))

(declare-fun e!3647993 () Bool)

(assert (=> start!605150 e!3647993))

(declare-fun b!5964522 () Bool)

(declare-fun res!2495297 () Bool)

(declare-fun e!3647987 () Bool)

(assert (=> b!5964522 (=> res!2495297 e!3647987)))

(declare-fun lt!2315396 () Context!10774)

(declare-fun lt!2315406 () Int)

(declare-fun contextDepth!151 (Context!10774) Int)

(assert (=> b!5964522 (= res!2495297 (>= (contextDepth!151 lt!2315396) lt!2315406))))

(declare-fun setIsEmpty!40541 () Bool)

(assert (=> setIsEmpty!40541 setRes!40541))

(declare-fun b!5964523 () Bool)

(declare-fun e!3647992 () Bool)

(declare-fun tp!1659047 () Bool)

(assert (=> b!5964523 (= e!3647992 tp!1659047)))

(declare-fun b!5964524 () Bool)

(declare-fun res!2495301 () Bool)

(assert (=> b!5964524 (=> res!2495301 e!3647985)))

(declare-fun lt!2315416 () (InoxSet Context!10774))

(declare-datatypes ((List!64310 0))(
  ( (Nil!64186) (Cons!64186 (h!70634 C!32276) (t!377725 List!64310)) )
))
(declare-fun s!2326 () List!64310)

(declare-fun matchZipper!2039 ((InoxSet Context!10774) List!64310) Bool)

(declare-fun derivationStepZipper!1984 ((InoxSet Context!10774) C!32276) (InoxSet Context!10774))

(assert (=> b!5964524 (= res!2495301 (not (= (matchZipper!2039 lt!2315416 s!2326) (matchZipper!2039 (derivationStepZipper!1984 lt!2315416 (h!70634 s!2326)) (t!377725 s!2326)))))))

(declare-fun b!5964525 () Bool)

(declare-fun tp!1659054 () Bool)

(assert (=> b!5964525 (= e!3647993 (and tp_is_empty!41259 tp!1659054))))

(declare-fun b!5964526 () Bool)

(declare-fun res!2495288 () Bool)

(assert (=> b!5964526 (=> res!2495288 e!3647987)))

(declare-fun lt!2315403 () Int)

(declare-fun zipperDepth!252 (List!64309) Int)

(assert (=> b!5964526 (= res!2495288 (>= (zipperDepth!252 (Cons!64185 lt!2315396 Nil!64185)) lt!2315403))))

(declare-fun b!5964527 () Bool)

(declare-fun e!3647988 () Bool)

(declare-fun e!3648000 () Bool)

(assert (=> b!5964527 (= e!3647988 e!3648000)))

(declare-fun res!2495289 () Bool)

(assert (=> b!5964527 (=> res!2495289 e!3648000)))

(assert (=> b!5964527 (= res!2495289 (not (= lt!2315411 lt!2315402)))))

(declare-fun lt!2315414 () (InoxSet Context!10774))

(assert (=> b!5964527 (= lt!2315402 ((_ map or) lt!2315392 lt!2315414))))

(declare-fun b!5964528 () Bool)

(declare-fun res!2495299 () Bool)

(assert (=> b!5964528 (=> (not res!2495299) (not e!3647986))))

(declare-fun toList!9787 ((InoxSet Context!10774)) List!64309)

(assert (=> b!5964528 (= res!2495299 (= (toList!9787 z!1189) zl!343))))

(declare-fun b!5964529 () Bool)

(declare-fun e!3647997 () Bool)

(assert (=> b!5964529 (= e!3647985 e!3647997)))

(declare-fun res!2495294 () Bool)

(assert (=> b!5964529 (=> res!2495294 e!3647997)))

(declare-fun lt!2315413 () Int)

(assert (=> b!5964529 (= res!2495294 (>= lt!2315413 lt!2315406))))

(declare-fun lt!2315404 () Context!10774)

(assert (=> b!5964529 (= lt!2315406 (contextDepth!151 lt!2315404))))

(declare-fun lt!2315408 () Context!10774)

(assert (=> b!5964529 (= lt!2315413 (contextDepth!151 lt!2315408))))

(declare-fun b!5964530 () Bool)

(assert (=> b!5964530 (= e!3647986 (not e!3647989))))

(declare-fun res!2495293 () Bool)

(assert (=> b!5964530 (=> res!2495293 e!3647989)))

(get-info :version)

(assert (=> b!5964530 (= res!2495293 (not ((_ is Cons!64185) zl!343)))))

(declare-fun lt!2315412 () Bool)

(declare-fun matchRSpec!3104 (Regex!16003 List!64310) Bool)

(assert (=> b!5964530 (= lt!2315412 (matchRSpec!3104 r!7292 s!2326))))

(declare-fun matchR!8186 (Regex!16003 List!64310) Bool)

(assert (=> b!5964530 (= lt!2315412 (matchR!8186 r!7292 s!2326))))

(declare-datatypes ((Unit!157277 0))(
  ( (Unit!157278) )
))
(declare-fun lt!2315418 () Unit!157277)

(declare-fun mainMatchTheorem!3104 (Regex!16003 List!64310) Unit!157277)

(assert (=> b!5964530 (= lt!2315418 (mainMatchTheorem!3104 r!7292 s!2326))))

(declare-fun tp!1659050 () Bool)

(declare-fun b!5964531 () Bool)

(declare-fun inv!83254 (Context!10774) Bool)

(assert (=> b!5964531 (= e!3647995 (and (inv!83254 (h!70633 zl!343)) e!3647992 tp!1659050))))

(declare-fun b!5964532 () Bool)

(declare-fun res!2495296 () Bool)

(assert (=> b!5964532 (=> res!2495296 e!3647985)))

(declare-fun lt!2315393 () (InoxSet Context!10774))

(assert (=> b!5964532 (= res!2495296 (not (= (matchZipper!2039 lt!2315393 s!2326) (matchZipper!2039 (derivationStepZipper!1984 lt!2315393 (h!70634 s!2326)) (t!377725 s!2326)))))))

(declare-fun b!5964533 () Bool)

(declare-fun res!2495286 () Bool)

(assert (=> b!5964533 (=> res!2495286 e!3647989)))

(assert (=> b!5964533 (= res!2495286 (or ((_ is EmptyExpr!16003) r!7292) ((_ is EmptyLang!16003) r!7292) ((_ is ElementMatch!16003) r!7292) ((_ is Union!16003) r!7292) (not ((_ is Concat!24848) r!7292))))))

(declare-fun e!3647994 () Bool)

(declare-fun e!3647991 () Bool)

(assert (=> b!5964534 (= e!3647994 e!3647991)))

(declare-fun res!2495291 () Bool)

(assert (=> b!5964534 (=> res!2495291 e!3647991)))

(declare-fun lt!2315401 () (InoxSet Context!10774))

(assert (=> b!5964534 (= res!2495291 (not (= lt!2315411 lt!2315401)))))

(declare-fun lambda!325852 () Int)

(declare-fun flatMap!1516 ((InoxSet Context!10774) Int) (InoxSet Context!10774))

(declare-fun derivationStepZipperUp!1179 (Context!10774 C!32276) (InoxSet Context!10774))

(assert (=> b!5964534 (= (flatMap!1516 z!1189 lambda!325852) (derivationStepZipperUp!1179 (h!70633 zl!343) (h!70634 s!2326)))))

(declare-fun lt!2315409 () Unit!157277)

(declare-fun lemmaFlatMapOnSingletonSet!1042 ((InoxSet Context!10774) Context!10774 Int) Unit!157277)

(assert (=> b!5964534 (= lt!2315409 (lemmaFlatMapOnSingletonSet!1042 z!1189 (h!70633 zl!343) lambda!325852))))

(declare-fun b!5964535 () Bool)

(declare-fun res!2495308 () Bool)

(assert (=> b!5964535 (=> res!2495308 e!3647989)))

(assert (=> b!5964535 (= res!2495308 (not ((_ is Cons!64184) (exprs!5887 (h!70633 zl!343)))))))

(declare-fun b!5964536 () Bool)

(declare-fun tp!1659053 () Bool)

(declare-fun tp!1659048 () Bool)

(assert (=> b!5964536 (= e!3647990 (and tp!1659053 tp!1659048))))

(declare-fun b!5964537 () Bool)

(declare-fun res!2495285 () Bool)

(assert (=> b!5964537 (=> (not res!2495285) (not e!3647986))))

(declare-fun unfocusZipper!1745 (List!64309) Regex!16003)

(assert (=> b!5964537 (= res!2495285 (= r!7292 (unfocusZipper!1745 zl!343)))))

(declare-fun b!5964538 () Bool)

(declare-fun e!3647999 () Bool)

(assert (=> b!5964538 (= e!3647999 e!3647994)))

(declare-fun res!2495307 () Bool)

(assert (=> b!5964538 (=> res!2495307 e!3647994)))

(declare-fun lt!2315399 () (InoxSet Context!10774))

(assert (=> b!5964538 (= res!2495307 (not (= lt!2315399 lt!2315401)))))

(declare-fun lt!2315387 () Context!10774)

(declare-fun derivationStepZipperDown!1253 (Regex!16003 Context!10774 C!32276) (InoxSet Context!10774))

(assert (=> b!5964538 (= lt!2315401 (derivationStepZipperDown!1253 r!7292 lt!2315387 (h!70634 s!2326)))))

(assert (=> b!5964538 (= lt!2315387 (Context!10775 Nil!64184))))

(assert (=> b!5964538 (= lt!2315399 (derivationStepZipperUp!1179 lt!2315404 (h!70634 s!2326)))))

(assert (=> b!5964538 (= lt!2315404 (Context!10775 (Cons!64184 r!7292 Nil!64184)))))

(assert (=> b!5964538 (= lt!2315411 (derivationStepZipper!1984 z!1189 (h!70634 s!2326)))))

(assert (=> b!5964539 (= e!3647989 e!3647999)))

(declare-fun res!2495295 () Bool)

(assert (=> b!5964539 (=> res!2495295 e!3647999)))

(declare-fun lt!2315390 () Bool)

(assert (=> b!5964539 (= res!2495295 (or (not (= lt!2315412 lt!2315390)) ((_ is Nil!64186) s!2326)))))

(declare-fun Exists!3073 (Int) Bool)

(assert (=> b!5964539 (= (Exists!3073 lambda!325850) (Exists!3073 lambda!325851))))

(declare-fun lt!2315397 () Unit!157277)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1610 (Regex!16003 Regex!16003 List!64310) Unit!157277)

(assert (=> b!5964539 (= lt!2315397 (lemmaExistCutMatchRandMatchRSpecEquivalent!1610 (regOne!32518 r!7292) (regTwo!32518 r!7292) s!2326))))

(assert (=> b!5964539 (= lt!2315390 (Exists!3073 lambda!325850))))

(declare-datatypes ((tuple2!65964 0))(
  ( (tuple2!65965 (_1!36285 List!64310) (_2!36285 List!64310)) )
))
(declare-datatypes ((Option!15894 0))(
  ( (None!15893) (Some!15893 (v!51998 tuple2!65964)) )
))
(declare-fun isDefined!12597 (Option!15894) Bool)

(declare-fun findConcatSeparation!2308 (Regex!16003 Regex!16003 List!64310 List!64310 List!64310) Option!15894)

(assert (=> b!5964539 (= lt!2315390 (isDefined!12597 (findConcatSeparation!2308 (regOne!32518 r!7292) (regTwo!32518 r!7292) Nil!64186 s!2326 s!2326)))))

(declare-fun lt!2315395 () Unit!157277)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2072 (Regex!16003 Regex!16003 List!64310) Unit!157277)

(assert (=> b!5964539 (= lt!2315395 (lemmaFindConcatSeparationEquivalentToExists!2072 (regOne!32518 r!7292) (regTwo!32518 r!7292) s!2326))))

(declare-fun b!5964540 () Bool)

(assert (=> b!5964540 (= e!3647991 e!3647988)))

(declare-fun res!2495290 () Bool)

(assert (=> b!5964540 (=> res!2495290 e!3647988)))

(declare-fun nullable!5998 (Regex!16003) Bool)

(assert (=> b!5964540 (= res!2495290 (not (nullable!5998 (regOne!32518 r!7292))))))

(assert (=> b!5964540 (= lt!2315414 (derivationStepZipperDown!1253 (regTwo!32518 r!7292) lt!2315387 (h!70634 s!2326)))))

(assert (=> b!5964540 (= lt!2315392 (derivationStepZipperDown!1253 (regOne!32518 r!7292) lt!2315396 (h!70634 s!2326)))))

(assert (=> b!5964540 (= (flatMap!1516 lt!2315416 lambda!325852) (derivationStepZipperUp!1179 lt!2315396 (h!70634 s!2326)))))

(declare-fun lt!2315410 () Unit!157277)

(assert (=> b!5964540 (= lt!2315410 (lemmaFlatMapOnSingletonSet!1042 lt!2315416 lt!2315396 lambda!325852))))

(assert (=> b!5964540 (= (flatMap!1516 lt!2315393 lambda!325852) (derivationStepZipperUp!1179 lt!2315408 (h!70634 s!2326)))))

(declare-fun lt!2315415 () Unit!157277)

(assert (=> b!5964540 (= lt!2315415 (lemmaFlatMapOnSingletonSet!1042 lt!2315393 lt!2315408 lambda!325852))))

(assert (=> b!5964540 (= lt!2315400 (derivationStepZipperUp!1179 lt!2315396 (h!70634 s!2326)))))

(assert (=> b!5964540 (= lt!2315398 (derivationStepZipperUp!1179 lt!2315408 (h!70634 s!2326)))))

(assert (=> b!5964540 (= lt!2315416 (store ((as const (Array Context!10774 Bool)) false) lt!2315396 true))))

(declare-fun lt!2315417 () List!64308)

(assert (=> b!5964540 (= lt!2315396 (Context!10775 lt!2315417))))

(assert (=> b!5964540 (= lt!2315393 (store ((as const (Array Context!10774 Bool)) false) lt!2315408 true))))

(assert (=> b!5964540 (= lt!2315408 (Context!10775 (Cons!64184 (regOne!32518 r!7292) lt!2315417)))))

(assert (=> b!5964540 (= lt!2315417 (Cons!64184 (regTwo!32518 r!7292) Nil!64184))))

(declare-fun setNonEmpty!40541 () Bool)

(declare-fun setElem!40541 () Context!10774)

(declare-fun tp!1659049 () Bool)

(assert (=> setNonEmpty!40541 (= setRes!40541 (and tp!1659049 (inv!83254 setElem!40541) e!3647998))))

(declare-fun setRest!40541 () (InoxSet Context!10774))

(assert (=> setNonEmpty!40541 (= z!1189 ((_ map or) (store ((as const (Array Context!10774 Bool)) false) setElem!40541 true) setRest!40541))))

(declare-fun b!5964541 () Bool)

(assert (=> b!5964541 (= e!3647997 e!3647987)))

(declare-fun res!2495303 () Bool)

(assert (=> b!5964541 (=> res!2495303 e!3647987)))

(declare-fun lt!2315388 () Int)

(assert (=> b!5964541 (= res!2495303 (>= lt!2315388 lt!2315403))))

(assert (=> b!5964541 (= lt!2315403 (zipperDepth!252 (Cons!64185 lt!2315404 Nil!64185)))))

(assert (=> b!5964541 (= lt!2315388 (zipperDepth!252 (Cons!64185 lt!2315408 Nil!64185)))))

(declare-fun b!5964542 () Bool)

(declare-fun res!2495302 () Bool)

(assert (=> b!5964542 (=> res!2495302 e!3647989)))

(declare-fun generalisedConcat!1600 (List!64308) Regex!16003)

(assert (=> b!5964542 (= res!2495302 (not (= r!7292 (generalisedConcat!1600 (exprs!5887 (h!70633 zl!343))))))))

(declare-fun b!5964543 () Bool)

(declare-fun res!2495305 () Bool)

(assert (=> b!5964543 (=> res!2495305 e!3647999)))

(declare-fun isEmpty!36074 (List!64308) Bool)

(assert (=> b!5964543 (= res!2495305 (not (isEmpty!36074 (t!377723 (exprs!5887 (h!70633 zl!343))))))))

(declare-fun b!5964544 () Bool)

(assert (=> b!5964544 (= e!3647987 e!3647984)))

(declare-fun res!2495298 () Bool)

(assert (=> b!5964544 (=> res!2495298 e!3647984)))

(declare-fun regexDepth!260 (Regex!16003) Int)

(assert (=> b!5964544 (= res!2495298 (not (= (regexDepth!260 r!7292) (regexDepth!260 lt!2315394))))))

(assert (=> b!5964544 (= lt!2315394 (Concat!24848 (regOne!32518 r!7292) (regTwo!32518 r!7292)))))

(declare-fun b!5964545 () Bool)

(declare-fun e!3647996 () Bool)

(assert (=> b!5964545 (= e!3647996 (matchZipper!2039 lt!2315414 (t!377725 s!2326)))))

(declare-fun b!5964546 () Bool)

(assert (=> b!5964546 (= e!3648000 e!3647985)))

(declare-fun res!2495284 () Bool)

(assert (=> b!5964546 (=> res!2495284 e!3647985)))

(declare-fun lt!2315389 () Bool)

(assert (=> b!5964546 (= res!2495284 (not (= lt!2315389 (matchZipper!2039 lt!2315411 (t!377725 s!2326)))))))

(declare-fun lt!2315407 () Bool)

(assert (=> b!5964546 (= lt!2315407 lt!2315389)))

(assert (=> b!5964546 (= lt!2315389 e!3647996)))

(declare-fun res!2495306 () Bool)

(assert (=> b!5964546 (=> res!2495306 e!3647996)))

(declare-fun lt!2315405 () Bool)

(assert (=> b!5964546 (= res!2495306 lt!2315405)))

(assert (=> b!5964546 (= lt!2315407 (matchZipper!2039 lt!2315402 (t!377725 s!2326)))))

(assert (=> b!5964546 (= lt!2315405 (matchZipper!2039 lt!2315392 (t!377725 s!2326)))))

(declare-fun lt!2315391 () Unit!157277)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!870 ((InoxSet Context!10774) (InoxSet Context!10774) List!64310) Unit!157277)

(assert (=> b!5964546 (= lt!2315391 (lemmaZipperConcatMatchesSameAsBothZippers!870 lt!2315392 lt!2315414 (t!377725 s!2326)))))

(declare-fun b!5964547 () Bool)

(declare-fun res!2495287 () Bool)

(assert (=> b!5964547 (=> res!2495287 e!3647989)))

(declare-fun generalisedUnion!1847 (List!64308) Regex!16003)

(declare-fun unfocusZipperList!1424 (List!64309) List!64308)

(assert (=> b!5964547 (= res!2495287 (not (= r!7292 (generalisedUnion!1847 (unfocusZipperList!1424 zl!343)))))))

(assert (= (and start!605150 res!2495300) b!5964528))

(assert (= (and b!5964528 res!2495299) b!5964537))

(assert (= (and b!5964537 res!2495285) b!5964530))

(assert (= (and b!5964530 (not res!2495293)) b!5964518))

(assert (= (and b!5964518 (not res!2495304)) b!5964542))

(assert (= (and b!5964542 (not res!2495302)) b!5964535))

(assert (= (and b!5964535 (not res!2495308)) b!5964547))

(assert (= (and b!5964547 (not res!2495287)) b!5964533))

(assert (= (and b!5964533 (not res!2495286)) b!5964539))

(assert (= (and b!5964539 (not res!2495295)) b!5964543))

(assert (= (and b!5964543 (not res!2495305)) b!5964538))

(assert (= (and b!5964538 (not res!2495307)) b!5964534))

(assert (= (and b!5964534 (not res!2495291)) b!5964540))

(assert (= (and b!5964540 (not res!2495290)) b!5964527))

(assert (= (and b!5964527 (not res!2495289)) b!5964546))

(assert (= (and b!5964546 (not res!2495306)) b!5964545))

(assert (= (and b!5964546 (not res!2495284)) b!5964516))

(assert (= (and b!5964516 (not res!2495292)) b!5964532))

(assert (= (and b!5964532 (not res!2495296)) b!5964524))

(assert (= (and b!5964524 (not res!2495301)) b!5964529))

(assert (= (and b!5964529 (not res!2495294)) b!5964541))

(assert (= (and b!5964541 (not res!2495303)) b!5964522))

(assert (= (and b!5964522 (not res!2495297)) b!5964526))

(assert (= (and b!5964526 (not res!2495288)) b!5964544))

(assert (= (and b!5964544 (not res!2495298)) b!5964521))

(assert (= (and start!605150 ((_ is ElementMatch!16003) r!7292)) b!5964517))

(assert (= (and start!605150 ((_ is Concat!24848) r!7292)) b!5964515))

(assert (= (and start!605150 ((_ is Star!16003) r!7292)) b!5964520))

(assert (= (and start!605150 ((_ is Union!16003) r!7292)) b!5964536))

(assert (= (and start!605150 condSetEmpty!40541) setIsEmpty!40541))

(assert (= (and start!605150 (not condSetEmpty!40541)) setNonEmpty!40541))

(assert (= setNonEmpty!40541 b!5964519))

(assert (= b!5964531 b!5964523))

(assert (= (and start!605150 ((_ is Cons!64185) zl!343)) b!5964531))

(assert (= (and start!605150 ((_ is Cons!64186) s!2326)) b!5964525))

(declare-fun m!6850372 () Bool)

(assert (=> b!5964539 m!6850372))

(declare-fun m!6850374 () Bool)

(assert (=> b!5964539 m!6850374))

(declare-fun m!6850376 () Bool)

(assert (=> b!5964539 m!6850376))

(assert (=> b!5964539 m!6850372))

(declare-fun m!6850378 () Bool)

(assert (=> b!5964539 m!6850378))

(declare-fun m!6850380 () Bool)

(assert (=> b!5964539 m!6850380))

(assert (=> b!5964539 m!6850374))

(declare-fun m!6850382 () Bool)

(assert (=> b!5964539 m!6850382))

(declare-fun m!6850384 () Bool)

(assert (=> b!5964545 m!6850384))

(declare-fun m!6850386 () Bool)

(assert (=> b!5964541 m!6850386))

(declare-fun m!6850388 () Bool)

(assert (=> b!5964541 m!6850388))

(declare-fun m!6850390 () Bool)

(assert (=> b!5964532 m!6850390))

(declare-fun m!6850392 () Bool)

(assert (=> b!5964532 m!6850392))

(assert (=> b!5964532 m!6850392))

(declare-fun m!6850394 () Bool)

(assert (=> b!5964532 m!6850394))

(declare-fun m!6850396 () Bool)

(assert (=> b!5964534 m!6850396))

(declare-fun m!6850398 () Bool)

(assert (=> b!5964534 m!6850398))

(declare-fun m!6850400 () Bool)

(assert (=> b!5964534 m!6850400))

(declare-fun m!6850402 () Bool)

(assert (=> b!5964530 m!6850402))

(declare-fun m!6850404 () Bool)

(assert (=> b!5964530 m!6850404))

(declare-fun m!6850406 () Bool)

(assert (=> b!5964530 m!6850406))

(declare-fun m!6850408 () Bool)

(assert (=> b!5964531 m!6850408))

(declare-fun m!6850410 () Bool)

(assert (=> b!5964537 m!6850410))

(declare-fun m!6850412 () Bool)

(assert (=> b!5964547 m!6850412))

(assert (=> b!5964547 m!6850412))

(declare-fun m!6850414 () Bool)

(assert (=> b!5964547 m!6850414))

(declare-fun m!6850416 () Bool)

(assert (=> b!5964543 m!6850416))

(declare-fun m!6850418 () Bool)

(assert (=> b!5964521 m!6850418))

(declare-fun m!6850420 () Bool)

(assert (=> b!5964524 m!6850420))

(declare-fun m!6850422 () Bool)

(assert (=> b!5964524 m!6850422))

(assert (=> b!5964524 m!6850422))

(declare-fun m!6850424 () Bool)

(assert (=> b!5964524 m!6850424))

(declare-fun m!6850426 () Bool)

(assert (=> b!5964522 m!6850426))

(declare-fun m!6850428 () Bool)

(assert (=> b!5964546 m!6850428))

(declare-fun m!6850430 () Bool)

(assert (=> b!5964546 m!6850430))

(declare-fun m!6850432 () Bool)

(assert (=> b!5964546 m!6850432))

(declare-fun m!6850434 () Bool)

(assert (=> b!5964546 m!6850434))

(declare-fun m!6850436 () Bool)

(assert (=> b!5964540 m!6850436))

(declare-fun m!6850438 () Bool)

(assert (=> b!5964540 m!6850438))

(declare-fun m!6850440 () Bool)

(assert (=> b!5964540 m!6850440))

(declare-fun m!6850442 () Bool)

(assert (=> b!5964540 m!6850442))

(declare-fun m!6850444 () Bool)

(assert (=> b!5964540 m!6850444))

(declare-fun m!6850446 () Bool)

(assert (=> b!5964540 m!6850446))

(declare-fun m!6850448 () Bool)

(assert (=> b!5964540 m!6850448))

(declare-fun m!6850450 () Bool)

(assert (=> b!5964540 m!6850450))

(declare-fun m!6850452 () Bool)

(assert (=> b!5964540 m!6850452))

(declare-fun m!6850454 () Bool)

(assert (=> b!5964540 m!6850454))

(declare-fun m!6850456 () Bool)

(assert (=> b!5964540 m!6850456))

(declare-fun m!6850458 () Bool)

(assert (=> b!5964544 m!6850458))

(declare-fun m!6850460 () Bool)

(assert (=> b!5964544 m!6850460))

(declare-fun m!6850462 () Bool)

(assert (=> b!5964529 m!6850462))

(declare-fun m!6850464 () Bool)

(assert (=> b!5964529 m!6850464))

(declare-fun m!6850466 () Bool)

(assert (=> b!5964542 m!6850466))

(declare-fun m!6850468 () Bool)

(assert (=> setNonEmpty!40541 m!6850468))

(declare-fun m!6850470 () Bool)

(assert (=> start!605150 m!6850470))

(declare-fun m!6850472 () Bool)

(assert (=> b!5964518 m!6850472))

(declare-fun m!6850474 () Bool)

(assert (=> b!5964528 m!6850474))

(declare-fun m!6850476 () Bool)

(assert (=> b!5964526 m!6850476))

(declare-fun m!6850478 () Bool)

(assert (=> b!5964538 m!6850478))

(declare-fun m!6850480 () Bool)

(assert (=> b!5964538 m!6850480))

(declare-fun m!6850482 () Bool)

(assert (=> b!5964538 m!6850482))

(check-sat (not b!5964532) (not b!5964525) (not b!5964530) (not b!5964537) (not b!5964519) (not b!5964522) (not b!5964534) (not b!5964521) (not start!605150) (not b!5964538) (not b!5964546) (not b!5964543) (not b!5964518) (not b!5964523) (not b!5964515) (not b!5964524) (not b!5964540) (not b!5964541) (not setNonEmpty!40541) (not b!5964536) (not b!5964542) (not b!5964547) (not b!5964520) (not b!5964531) (not b!5964545) (not b!5964539) (not b!5964529) (not b!5964528) (not b!5964526) tp_is_empty!41259 (not b!5964544))
(check-sat)
