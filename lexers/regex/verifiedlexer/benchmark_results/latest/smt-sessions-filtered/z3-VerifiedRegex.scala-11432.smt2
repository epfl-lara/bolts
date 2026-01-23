; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!616082 () Bool)

(assert start!616082)

(declare-fun b!6171469 () Bool)

(assert (=> b!6171469 true))

(assert (=> b!6171469 true))

(declare-fun lambda!336830 () Int)

(declare-fun lambda!336829 () Int)

(assert (=> b!6171469 (not (= lambda!336830 lambda!336829))))

(assert (=> b!6171469 true))

(assert (=> b!6171469 true))

(declare-fun b!6171493 () Bool)

(assert (=> b!6171493 true))

(declare-fun b!6171461 () Bool)

(declare-fun res!2554548 () Bool)

(declare-fun e!3759404 () Bool)

(assert (=> b!6171461 (=> res!2554548 e!3759404)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32492 0))(
  ( (C!32493 (val!25948 Int)) )
))
(declare-datatypes ((Regex!16111 0))(
  ( (ElementMatch!16111 (c!1112104 C!32492)) (Concat!24956 (regOne!32734 Regex!16111) (regTwo!32734 Regex!16111)) (EmptyExpr!16111) (Star!16111 (reg!16440 Regex!16111)) (EmptyLang!16111) (Union!16111 (regOne!32735 Regex!16111) (regTwo!32735 Regex!16111)) )
))
(declare-datatypes ((List!64632 0))(
  ( (Nil!64508) (Cons!64508 (h!70956 Regex!16111) (t!378134 List!64632)) )
))
(declare-datatypes ((Context!10990 0))(
  ( (Context!10991 (exprs!5995 List!64632)) )
))
(declare-fun lt!2337307 () (InoxSet Context!10990))

(declare-datatypes ((List!64633 0))(
  ( (Nil!64509) (Cons!64509 (h!70957 Context!10990) (t!378135 List!64633)) )
))
(declare-fun lt!2337299 () List!64633)

(declare-fun toList!9895 ((InoxSet Context!10990)) List!64633)

(assert (=> b!6171461 (= res!2554548 (not (= (toList!9895 lt!2337307) lt!2337299)))))

(declare-fun b!6171462 () Bool)

(declare-fun lt!2337293 () Regex!16111)

(declare-fun unfocusZipper!1853 (List!64633) Regex!16111)

(assert (=> b!6171462 (= e!3759404 (= lt!2337293 (unfocusZipper!1853 lt!2337299)))))

(declare-fun b!6171463 () Bool)

(declare-fun e!3759402 () Bool)

(declare-fun tp!1723250 () Bool)

(declare-fun tp!1723245 () Bool)

(assert (=> b!6171463 (= e!3759402 (and tp!1723250 tp!1723245))))

(declare-fun setIsEmpty!41834 () Bool)

(declare-fun setRes!41834 () Bool)

(assert (=> setIsEmpty!41834 setRes!41834))

(declare-fun b!6171464 () Bool)

(declare-datatypes ((Unit!157667 0))(
  ( (Unit!157668) )
))
(declare-fun e!3759401 () Unit!157667)

(declare-fun Unit!157669 () Unit!157667)

(assert (=> b!6171464 (= e!3759401 Unit!157669)))

(declare-fun lt!2337289 () (InoxSet Context!10990))

(declare-datatypes ((List!64634 0))(
  ( (Nil!64510) (Cons!64510 (h!70958 C!32492) (t!378136 List!64634)) )
))
(declare-fun s!2326 () List!64634)

(declare-fun lt!2337311 () Unit!157667)

(declare-fun lt!2337288 () (InoxSet Context!10990))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!942 ((InoxSet Context!10990) (InoxSet Context!10990) List!64634) Unit!157667)

(assert (=> b!6171464 (= lt!2337311 (lemmaZipperConcatMatchesSameAsBothZippers!942 lt!2337289 lt!2337288 (t!378136 s!2326)))))

(declare-fun res!2554539 () Bool)

(declare-fun matchZipper!2123 ((InoxSet Context!10990) List!64634) Bool)

(assert (=> b!6171464 (= res!2554539 (matchZipper!2123 lt!2337289 (t!378136 s!2326)))))

(declare-fun e!3759411 () Bool)

(assert (=> b!6171464 (=> res!2554539 e!3759411)))

(assert (=> b!6171464 (= (matchZipper!2123 ((_ map or) lt!2337289 lt!2337288) (t!378136 s!2326)) e!3759411)))

(declare-fun b!6171466 () Bool)

(declare-fun e!3759396 () Unit!157667)

(declare-fun Unit!157670 () Unit!157667)

(assert (=> b!6171466 (= e!3759396 Unit!157670)))

(declare-fun lt!2337296 () (InoxSet Context!10990))

(declare-fun lt!2337287 () Unit!157667)

(assert (=> b!6171466 (= lt!2337287 (lemmaZipperConcatMatchesSameAsBothZippers!942 lt!2337296 lt!2337288 (t!378136 s!2326)))))

(declare-fun res!2554554 () Bool)

(declare-fun lt!2337292 () Bool)

(assert (=> b!6171466 (= res!2554554 lt!2337292)))

(declare-fun e!3759408 () Bool)

(assert (=> b!6171466 (=> res!2554554 e!3759408)))

(assert (=> b!6171466 (= (matchZipper!2123 ((_ map or) lt!2337296 lt!2337288) (t!378136 s!2326)) e!3759408)))

(declare-fun b!6171467 () Bool)

(declare-fun res!2554546 () Bool)

(declare-fun e!3759395 () Bool)

(assert (=> b!6171467 (=> res!2554546 e!3759395)))

(declare-fun r!7292 () Regex!16111)

(declare-fun lt!2337301 () Regex!16111)

(declare-fun zl!343 () List!64633)

(assert (=> b!6171467 (= res!2554546 (or (not (= lt!2337301 r!7292)) (not (= (exprs!5995 (h!70957 zl!343)) (Cons!64508 (regOne!32734 r!7292) (t!378134 (exprs!5995 (h!70957 zl!343))))))))))

(declare-fun b!6171468 () Bool)

(declare-fun e!3759400 () Bool)

(declare-fun lt!2337291 () (InoxSet Context!10990))

(assert (=> b!6171468 (= e!3759400 (matchZipper!2123 lt!2337291 s!2326))))

(declare-fun e!3759409 () Bool)

(declare-fun e!3759399 () Bool)

(assert (=> b!6171469 (= e!3759409 e!3759399)))

(declare-fun res!2554552 () Bool)

(assert (=> b!6171469 (=> res!2554552 e!3759399)))

(declare-fun lt!2337295 () Bool)

(declare-fun lt!2337290 () Bool)

(get-info :version)

(assert (=> b!6171469 (= res!2554552 (or (not (= lt!2337290 lt!2337295)) ((_ is Nil!64510) s!2326)))))

(declare-fun Exists!3181 (Int) Bool)

(assert (=> b!6171469 (= (Exists!3181 lambda!336829) (Exists!3181 lambda!336830))))

(declare-fun lt!2337300 () Unit!157667)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1718 (Regex!16111 Regex!16111 List!64634) Unit!157667)

(assert (=> b!6171469 (= lt!2337300 (lemmaExistCutMatchRandMatchRSpecEquivalent!1718 (regOne!32734 r!7292) (regTwo!32734 r!7292) s!2326))))

(assert (=> b!6171469 (= lt!2337295 (Exists!3181 lambda!336829))))

(declare-datatypes ((tuple2!66180 0))(
  ( (tuple2!66181 (_1!36393 List!64634) (_2!36393 List!64634)) )
))
(declare-datatypes ((Option!16002 0))(
  ( (None!16001) (Some!16001 (v!52142 tuple2!66180)) )
))
(declare-fun isDefined!12705 (Option!16002) Bool)

(declare-fun findConcatSeparation!2416 (Regex!16111 Regex!16111 List!64634 List!64634 List!64634) Option!16002)

(assert (=> b!6171469 (= lt!2337295 (isDefined!12705 (findConcatSeparation!2416 (regOne!32734 r!7292) (regTwo!32734 r!7292) Nil!64510 s!2326 s!2326)))))

(declare-fun lt!2337304 () Unit!157667)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2180 (Regex!16111 Regex!16111 List!64634) Unit!157667)

(assert (=> b!6171469 (= lt!2337304 (lemmaFindConcatSeparationEquivalentToExists!2180 (regOne!32734 r!7292) (regTwo!32734 r!7292) s!2326))))

(declare-fun b!6171470 () Bool)

(declare-fun e!3759392 () Unit!157667)

(declare-fun Unit!157671 () Unit!157667)

(assert (=> b!6171470 (= e!3759392 Unit!157671)))

(declare-fun b!6171471 () Bool)

(declare-fun res!2554544 () Bool)

(assert (=> b!6171471 (=> res!2554544 e!3759409)))

(declare-fun isEmpty!36484 (List!64633) Bool)

(assert (=> b!6171471 (= res!2554544 (not (isEmpty!36484 (t!378135 zl!343))))))

(declare-fun b!6171472 () Bool)

(assert (=> b!6171472 (= e!3759411 (matchZipper!2123 lt!2337288 (t!378136 s!2326)))))

(declare-fun b!6171473 () Bool)

(declare-fun e!3759405 () Bool)

(declare-fun e!3759412 () Bool)

(assert (=> b!6171473 (= e!3759405 e!3759412)))

(declare-fun res!2554534 () Bool)

(assert (=> b!6171473 (=> (not res!2554534) (not e!3759412))))

(assert (=> b!6171473 (= res!2554534 (= r!7292 lt!2337301))))

(assert (=> b!6171473 (= lt!2337301 (unfocusZipper!1853 zl!343))))

(declare-fun b!6171474 () Bool)

(declare-fun e!3759394 () Bool)

(declare-fun tp!1723244 () Bool)

(assert (=> b!6171474 (= e!3759394 tp!1723244)))

(declare-fun b!6171475 () Bool)

(assert (=> b!6171475 (= e!3759412 (not e!3759409))))

(declare-fun res!2554541 () Bool)

(assert (=> b!6171475 (=> res!2554541 e!3759409)))

(assert (=> b!6171475 (= res!2554541 (not ((_ is Cons!64509) zl!343)))))

(declare-fun matchRSpec!3212 (Regex!16111 List!64634) Bool)

(assert (=> b!6171475 (= lt!2337290 (matchRSpec!3212 r!7292 s!2326))))

(declare-fun matchR!8294 (Regex!16111 List!64634) Bool)

(assert (=> b!6171475 (= lt!2337290 (matchR!8294 r!7292 s!2326))))

(declare-fun lt!2337303 () Unit!157667)

(declare-fun mainMatchTheorem!3212 (Regex!16111 List!64634) Unit!157667)

(assert (=> b!6171475 (= lt!2337303 (mainMatchTheorem!3212 r!7292 s!2326))))

(declare-fun b!6171476 () Bool)

(declare-fun e!3759398 () Bool)

(assert (=> b!6171476 (= e!3759395 e!3759398)))

(declare-fun res!2554556 () Bool)

(assert (=> b!6171476 (=> res!2554556 e!3759398)))

(declare-fun lt!2337281 () Int)

(declare-fun lt!2337297 () Int)

(assert (=> b!6171476 (= res!2554556 (>= lt!2337281 lt!2337297))))

(declare-fun zipperDepthTotal!294 (List!64633) Int)

(assert (=> b!6171476 (= lt!2337297 (zipperDepthTotal!294 zl!343))))

(assert (=> b!6171476 (= lt!2337281 (zipperDepthTotal!294 lt!2337299))))

(declare-fun lt!2337309 () Context!10990)

(assert (=> b!6171476 (= lt!2337299 (Cons!64509 lt!2337309 Nil!64509))))

(declare-fun b!6171477 () Bool)

(declare-fun res!2554557 () Bool)

(assert (=> b!6171477 (=> res!2554557 e!3759409)))

(assert (=> b!6171477 (= res!2554557 (not ((_ is Cons!64508) (exprs!5995 (h!70957 zl!343)))))))

(declare-fun b!6171478 () Bool)

(declare-fun e!3759415 () Bool)

(declare-fun tp!1723247 () Bool)

(assert (=> b!6171478 (= e!3759415 tp!1723247)))

(declare-fun b!6171479 () Bool)

(declare-fun res!2554538 () Bool)

(assert (=> b!6171479 (=> res!2554538 e!3759398)))

(declare-fun lt!2337306 () Context!10990)

(assert (=> b!6171479 (= res!2554538 (>= (zipperDepthTotal!294 (Cons!64509 lt!2337306 Nil!64509)) lt!2337297))))

(declare-fun b!6171480 () Bool)

(declare-fun res!2554555 () Bool)

(assert (=> b!6171480 (=> (not res!2554555) (not e!3759405))))

(declare-fun z!1189 () (InoxSet Context!10990))

(assert (=> b!6171480 (= res!2554555 (= (toList!9895 z!1189) zl!343))))

(declare-fun b!6171481 () Bool)

(declare-fun e!3759410 () Bool)

(assert (=> b!6171481 (= e!3759410 (not (matchZipper!2123 lt!2337289 (t!378136 s!2326))))))

(declare-fun res!2554542 () Bool)

(assert (=> start!616082 (=> (not res!2554542) (not e!3759405))))

(declare-fun validRegex!7847 (Regex!16111) Bool)

(assert (=> start!616082 (= res!2554542 (validRegex!7847 r!7292))))

(assert (=> start!616082 e!3759405))

(assert (=> start!616082 e!3759402))

(declare-fun condSetEmpty!41834 () Bool)

(assert (=> start!616082 (= condSetEmpty!41834 (= z!1189 ((as const (Array Context!10990 Bool)) false)))))

(assert (=> start!616082 setRes!41834))

(declare-fun e!3759397 () Bool)

(assert (=> start!616082 e!3759397))

(declare-fun e!3759393 () Bool)

(assert (=> start!616082 e!3759393))

(declare-fun b!6171465 () Bool)

(declare-fun res!2554558 () Bool)

(assert (=> b!6171465 (=> res!2554558 e!3759399)))

(declare-fun isEmpty!36485 (List!64632) Bool)

(assert (=> b!6171465 (= res!2554558 (isEmpty!36485 (t!378134 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun b!6171482 () Bool)

(declare-fun e!3759413 () Bool)

(assert (=> b!6171482 (= e!3759413 (matchZipper!2123 lt!2337288 (t!378136 s!2326)))))

(declare-fun b!6171483 () Bool)

(declare-fun tp_is_empty!41475 () Bool)

(assert (=> b!6171483 (= e!3759402 tp_is_empty!41475)))

(declare-fun b!6171484 () Bool)

(declare-fun e!3759414 () Bool)

(assert (=> b!6171484 (= e!3759414 e!3759395)))

(declare-fun res!2554553 () Bool)

(assert (=> b!6171484 (=> res!2554553 e!3759395)))

(assert (=> b!6171484 (= res!2554553 (not (= (matchZipper!2123 z!1189 s!2326) e!3759400)))))

(declare-fun res!2554540 () Bool)

(assert (=> b!6171484 (=> res!2554540 e!3759400)))

(assert (=> b!6171484 (= res!2554540 (matchZipper!2123 lt!2337307 s!2326))))

(declare-fun lt!2337308 () Unit!157667)

(assert (=> b!6171484 (= lt!2337308 e!3759401)))

(declare-fun c!1112101 () Bool)

(declare-fun nullable!6104 (Regex!16111) Bool)

(assert (=> b!6171484 (= c!1112101 (nullable!6104 (regTwo!32735 (regOne!32734 r!7292))))))

(declare-fun lambda!336831 () Int)

(declare-fun flatMap!1616 ((InoxSet Context!10990) Int) (InoxSet Context!10990))

(declare-fun derivationStepZipperUp!1285 (Context!10990 C!32492) (InoxSet Context!10990))

(assert (=> b!6171484 (= (flatMap!1616 lt!2337291 lambda!336831) (derivationStepZipperUp!1285 lt!2337306 (h!70958 s!2326)))))

(declare-fun lt!2337302 () Unit!157667)

(declare-fun lemmaFlatMapOnSingletonSet!1142 ((InoxSet Context!10990) Context!10990 Int) Unit!157667)

(assert (=> b!6171484 (= lt!2337302 (lemmaFlatMapOnSingletonSet!1142 lt!2337291 lt!2337306 lambda!336831))))

(declare-fun lt!2337294 () (InoxSet Context!10990))

(assert (=> b!6171484 (= lt!2337294 (derivationStepZipperUp!1285 lt!2337306 (h!70958 s!2326)))))

(declare-fun lt!2337298 () Unit!157667)

(assert (=> b!6171484 (= lt!2337298 e!3759396)))

(declare-fun c!1112102 () Bool)

(assert (=> b!6171484 (= c!1112102 (nullable!6104 (regOne!32735 (regOne!32734 r!7292))))))

(assert (=> b!6171484 (= (flatMap!1616 lt!2337307 lambda!336831) (derivationStepZipperUp!1285 lt!2337309 (h!70958 s!2326)))))

(declare-fun lt!2337283 () Unit!157667)

(assert (=> b!6171484 (= lt!2337283 (lemmaFlatMapOnSingletonSet!1142 lt!2337307 lt!2337309 lambda!336831))))

(declare-fun lt!2337312 () (InoxSet Context!10990))

(assert (=> b!6171484 (= lt!2337312 (derivationStepZipperUp!1285 lt!2337309 (h!70958 s!2326)))))

(assert (=> b!6171484 (= lt!2337291 (store ((as const (Array Context!10990 Bool)) false) lt!2337306 true))))

(assert (=> b!6171484 (= lt!2337306 (Context!10991 (Cons!64508 (regTwo!32735 (regOne!32734 r!7292)) (t!378134 (exprs!5995 (h!70957 zl!343))))))))

(assert (=> b!6171484 (= lt!2337307 (store ((as const (Array Context!10990 Bool)) false) lt!2337309 true))))

(declare-fun lt!2337305 () List!64632)

(assert (=> b!6171484 (= lt!2337309 (Context!10991 lt!2337305))))

(assert (=> b!6171484 (= lt!2337305 (Cons!64508 (regOne!32735 (regOne!32734 r!7292)) (t!378134 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun b!6171485 () Bool)

(assert (=> b!6171485 (= e!3759408 (matchZipper!2123 lt!2337288 (t!378136 s!2326)))))

(declare-fun b!6171486 () Bool)

(declare-fun tp!1723243 () Bool)

(declare-fun tp!1723241 () Bool)

(assert (=> b!6171486 (= e!3759402 (and tp!1723243 tp!1723241))))

(declare-fun b!6171487 () Bool)

(declare-fun Unit!157672 () Unit!157667)

(assert (=> b!6171487 (= e!3759396 Unit!157672)))

(declare-fun b!6171488 () Bool)

(declare-fun res!2554551 () Bool)

(assert (=> b!6171488 (=> res!2554551 e!3759409)))

(declare-fun generalisedConcat!1708 (List!64632) Regex!16111)

(assert (=> b!6171488 (= res!2554551 (not (= r!7292 (generalisedConcat!1708 (exprs!5995 (h!70957 zl!343))))))))

(declare-fun b!6171489 () Bool)

(declare-fun Unit!157673 () Unit!157667)

(assert (=> b!6171489 (= e!3759401 Unit!157673)))

(declare-fun tp!1723249 () Bool)

(declare-fun b!6171490 () Bool)

(declare-fun inv!83524 (Context!10990) Bool)

(assert (=> b!6171490 (= e!3759397 (and (inv!83524 (h!70957 zl!343)) e!3759394 tp!1723249))))

(declare-fun b!6171491 () Bool)

(declare-fun tp!1723242 () Bool)

(assert (=> b!6171491 (= e!3759402 tp!1723242)))

(declare-fun b!6171492 () Bool)

(assert (=> b!6171492 (= e!3759398 e!3759404)))

(declare-fun res!2554545 () Bool)

(assert (=> b!6171492 (=> res!2554545 e!3759404)))

(assert (=> b!6171492 (= res!2554545 (not (validRegex!7847 lt!2337293)))))

(assert (=> b!6171492 (= lt!2337293 (generalisedConcat!1708 lt!2337305))))

(declare-fun e!3759406 () Bool)

(assert (=> b!6171493 (= e!3759399 e!3759406)))

(declare-fun res!2554535 () Bool)

(assert (=> b!6171493 (=> res!2554535 e!3759406)))

(assert (=> b!6171493 (= res!2554535 (or (and ((_ is ElementMatch!16111) (regOne!32734 r!7292)) (= (c!1112104 (regOne!32734 r!7292)) (h!70958 s!2326))) (not ((_ is Union!16111) (regOne!32734 r!7292)))))))

(declare-fun lt!2337314 () Unit!157667)

(assert (=> b!6171493 (= lt!2337314 e!3759392)))

(declare-fun c!1112103 () Bool)

(assert (=> b!6171493 (= c!1112103 (nullable!6104 (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(assert (=> b!6171493 (= (flatMap!1616 z!1189 lambda!336831) (derivationStepZipperUp!1285 (h!70957 zl!343) (h!70958 s!2326)))))

(declare-fun lt!2337280 () Unit!157667)

(assert (=> b!6171493 (= lt!2337280 (lemmaFlatMapOnSingletonSet!1142 z!1189 (h!70957 zl!343) lambda!336831))))

(declare-fun lt!2337313 () Context!10990)

(assert (=> b!6171493 (= lt!2337288 (derivationStepZipperUp!1285 lt!2337313 (h!70958 s!2326)))))

(declare-fun lt!2337282 () (InoxSet Context!10990))

(declare-fun derivationStepZipperDown!1359 (Regex!16111 Context!10990 C!32492) (InoxSet Context!10990))

(assert (=> b!6171493 (= lt!2337282 (derivationStepZipperDown!1359 (h!70956 (exprs!5995 (h!70957 zl!343))) lt!2337313 (h!70958 s!2326)))))

(assert (=> b!6171493 (= lt!2337313 (Context!10991 (t!378134 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun lt!2337286 () (InoxSet Context!10990))

(assert (=> b!6171493 (= lt!2337286 (derivationStepZipperUp!1285 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343))))) (h!70958 s!2326)))))

(declare-fun b!6171494 () Bool)

(declare-fun tp!1723248 () Bool)

(assert (=> b!6171494 (= e!3759393 (and tp_is_empty!41475 tp!1723248))))

(declare-fun b!6171495 () Bool)

(declare-fun e!3759403 () Bool)

(assert (=> b!6171495 (= e!3759403 e!3759414)))

(declare-fun res!2554543 () Bool)

(assert (=> b!6171495 (=> res!2554543 e!3759414)))

(assert (=> b!6171495 (= res!2554543 e!3759410)))

(declare-fun res!2554549 () Bool)

(assert (=> b!6171495 (=> (not res!2554549) (not e!3759410))))

(assert (=> b!6171495 (= res!2554549 (not (= (matchZipper!2123 lt!2337282 (t!378136 s!2326)) lt!2337292)))))

(declare-fun lt!2337284 () (InoxSet Context!10990))

(declare-fun e!3759407 () Bool)

(assert (=> b!6171495 (= (matchZipper!2123 lt!2337284 (t!378136 s!2326)) e!3759407)))

(declare-fun res!2554547 () Bool)

(assert (=> b!6171495 (=> res!2554547 e!3759407)))

(assert (=> b!6171495 (= res!2554547 lt!2337292)))

(assert (=> b!6171495 (= lt!2337292 (matchZipper!2123 lt!2337296 (t!378136 s!2326)))))

(declare-fun lt!2337285 () Unit!157667)

(assert (=> b!6171495 (= lt!2337285 (lemmaZipperConcatMatchesSameAsBothZippers!942 lt!2337296 lt!2337289 (t!378136 s!2326)))))

(declare-fun b!6171496 () Bool)

(declare-fun res!2554536 () Bool)

(assert (=> b!6171496 (=> res!2554536 e!3759409)))

(declare-fun generalisedUnion!1955 (List!64632) Regex!16111)

(declare-fun unfocusZipperList!1532 (List!64633) List!64632)

(assert (=> b!6171496 (= res!2554536 (not (= r!7292 (generalisedUnion!1955 (unfocusZipperList!1532 zl!343)))))))

(declare-fun b!6171497 () Bool)

(assert (=> b!6171497 (= e!3759406 e!3759403)))

(declare-fun res!2554550 () Bool)

(assert (=> b!6171497 (=> res!2554550 e!3759403)))

(assert (=> b!6171497 (= res!2554550 (not (= lt!2337282 lt!2337284)))))

(assert (=> b!6171497 (= lt!2337284 ((_ map or) lt!2337296 lt!2337289))))

(assert (=> b!6171497 (= lt!2337289 (derivationStepZipperDown!1359 (regTwo!32735 (regOne!32734 r!7292)) lt!2337313 (h!70958 s!2326)))))

(assert (=> b!6171497 (= lt!2337296 (derivationStepZipperDown!1359 (regOne!32735 (regOne!32734 r!7292)) lt!2337313 (h!70958 s!2326)))))

(declare-fun b!6171498 () Bool)

(declare-fun res!2554537 () Bool)

(assert (=> b!6171498 (=> res!2554537 e!3759409)))

(assert (=> b!6171498 (= res!2554537 (or ((_ is EmptyExpr!16111) r!7292) ((_ is EmptyLang!16111) r!7292) ((_ is ElementMatch!16111) r!7292) ((_ is Union!16111) r!7292) (not ((_ is Concat!24956) r!7292))))))

(declare-fun tp!1723246 () Bool)

(declare-fun setElem!41834 () Context!10990)

(declare-fun setNonEmpty!41834 () Bool)

(assert (=> setNonEmpty!41834 (= setRes!41834 (and tp!1723246 (inv!83524 setElem!41834) e!3759415))))

(declare-fun setRest!41834 () (InoxSet Context!10990))

(assert (=> setNonEmpty!41834 (= z!1189 ((_ map or) (store ((as const (Array Context!10990 Bool)) false) setElem!41834 true) setRest!41834))))

(declare-fun b!6171499 () Bool)

(declare-fun Unit!157674 () Unit!157667)

(assert (=> b!6171499 (= e!3759392 Unit!157674)))

(declare-fun lt!2337310 () Unit!157667)

(assert (=> b!6171499 (= lt!2337310 (lemmaZipperConcatMatchesSameAsBothZippers!942 lt!2337282 lt!2337288 (t!378136 s!2326)))))

(declare-fun res!2554559 () Bool)

(assert (=> b!6171499 (= res!2554559 (matchZipper!2123 lt!2337282 (t!378136 s!2326)))))

(assert (=> b!6171499 (=> res!2554559 e!3759413)))

(assert (=> b!6171499 (= (matchZipper!2123 ((_ map or) lt!2337282 lt!2337288) (t!378136 s!2326)) e!3759413)))

(declare-fun b!6171500 () Bool)

(assert (=> b!6171500 (= e!3759407 (matchZipper!2123 lt!2337289 (t!378136 s!2326)))))

(assert (= (and start!616082 res!2554542) b!6171480))

(assert (= (and b!6171480 res!2554555) b!6171473))

(assert (= (and b!6171473 res!2554534) b!6171475))

(assert (= (and b!6171475 (not res!2554541)) b!6171471))

(assert (= (and b!6171471 (not res!2554544)) b!6171488))

(assert (= (and b!6171488 (not res!2554551)) b!6171477))

(assert (= (and b!6171477 (not res!2554557)) b!6171496))

(assert (= (and b!6171496 (not res!2554536)) b!6171498))

(assert (= (and b!6171498 (not res!2554537)) b!6171469))

(assert (= (and b!6171469 (not res!2554552)) b!6171465))

(assert (= (and b!6171465 (not res!2554558)) b!6171493))

(assert (= (and b!6171493 c!1112103) b!6171499))

(assert (= (and b!6171493 (not c!1112103)) b!6171470))

(assert (= (and b!6171499 (not res!2554559)) b!6171482))

(assert (= (and b!6171493 (not res!2554535)) b!6171497))

(assert (= (and b!6171497 (not res!2554550)) b!6171495))

(assert (= (and b!6171495 (not res!2554547)) b!6171500))

(assert (= (and b!6171495 res!2554549) b!6171481))

(assert (= (and b!6171495 (not res!2554543)) b!6171484))

(assert (= (and b!6171484 c!1112102) b!6171466))

(assert (= (and b!6171484 (not c!1112102)) b!6171487))

(assert (= (and b!6171466 (not res!2554554)) b!6171485))

(assert (= (and b!6171484 c!1112101) b!6171464))

(assert (= (and b!6171484 (not c!1112101)) b!6171489))

(assert (= (and b!6171464 (not res!2554539)) b!6171472))

(assert (= (and b!6171484 (not res!2554540)) b!6171468))

(assert (= (and b!6171484 (not res!2554553)) b!6171467))

(assert (= (and b!6171467 (not res!2554546)) b!6171476))

(assert (= (and b!6171476 (not res!2554556)) b!6171479))

(assert (= (and b!6171479 (not res!2554538)) b!6171492))

(assert (= (and b!6171492 (not res!2554545)) b!6171461))

(assert (= (and b!6171461 (not res!2554548)) b!6171462))

(assert (= (and start!616082 ((_ is ElementMatch!16111) r!7292)) b!6171483))

(assert (= (and start!616082 ((_ is Concat!24956) r!7292)) b!6171486))

(assert (= (and start!616082 ((_ is Star!16111) r!7292)) b!6171491))

(assert (= (and start!616082 ((_ is Union!16111) r!7292)) b!6171463))

(assert (= (and start!616082 condSetEmpty!41834) setIsEmpty!41834))

(assert (= (and start!616082 (not condSetEmpty!41834)) setNonEmpty!41834))

(assert (= setNonEmpty!41834 b!6171478))

(assert (= b!6171490 b!6171474))

(assert (= (and start!616082 ((_ is Cons!64509) zl!343)) b!6171490))

(assert (= (and start!616082 ((_ is Cons!64510) s!2326)) b!6171494))

(declare-fun m!7007946 () Bool)

(assert (=> b!6171462 m!7007946))

(declare-fun m!7007948 () Bool)

(assert (=> b!6171482 m!7007948))

(declare-fun m!7007950 () Bool)

(assert (=> b!6171461 m!7007950))

(declare-fun m!7007952 () Bool)

(assert (=> b!6171496 m!7007952))

(assert (=> b!6171496 m!7007952))

(declare-fun m!7007954 () Bool)

(assert (=> b!6171496 m!7007954))

(declare-fun m!7007956 () Bool)

(assert (=> b!6171495 m!7007956))

(declare-fun m!7007958 () Bool)

(assert (=> b!6171495 m!7007958))

(declare-fun m!7007960 () Bool)

(assert (=> b!6171495 m!7007960))

(declare-fun m!7007962 () Bool)

(assert (=> b!6171495 m!7007962))

(declare-fun m!7007964 () Bool)

(assert (=> b!6171468 m!7007964))

(declare-fun m!7007966 () Bool)

(assert (=> b!6171479 m!7007966))

(declare-fun m!7007968 () Bool)

(assert (=> b!6171473 m!7007968))

(assert (=> b!6171485 m!7007948))

(declare-fun m!7007970 () Bool)

(assert (=> b!6171464 m!7007970))

(declare-fun m!7007972 () Bool)

(assert (=> b!6171464 m!7007972))

(declare-fun m!7007974 () Bool)

(assert (=> b!6171464 m!7007974))

(declare-fun m!7007976 () Bool)

(assert (=> b!6171465 m!7007976))

(declare-fun m!7007978 () Bool)

(assert (=> b!6171488 m!7007978))

(declare-fun m!7007980 () Bool)

(assert (=> b!6171492 m!7007980))

(declare-fun m!7007982 () Bool)

(assert (=> b!6171492 m!7007982))

(declare-fun m!7007984 () Bool)

(assert (=> b!6171476 m!7007984))

(declare-fun m!7007986 () Bool)

(assert (=> b!6171476 m!7007986))

(declare-fun m!7007988 () Bool)

(assert (=> b!6171484 m!7007988))

(declare-fun m!7007990 () Bool)

(assert (=> b!6171484 m!7007990))

(declare-fun m!7007992 () Bool)

(assert (=> b!6171484 m!7007992))

(declare-fun m!7007994 () Bool)

(assert (=> b!6171484 m!7007994))

(declare-fun m!7007996 () Bool)

(assert (=> b!6171484 m!7007996))

(declare-fun m!7007998 () Bool)

(assert (=> b!6171484 m!7007998))

(declare-fun m!7008000 () Bool)

(assert (=> b!6171484 m!7008000))

(declare-fun m!7008002 () Bool)

(assert (=> b!6171484 m!7008002))

(declare-fun m!7008004 () Bool)

(assert (=> b!6171484 m!7008004))

(declare-fun m!7008006 () Bool)

(assert (=> b!6171484 m!7008006))

(declare-fun m!7008008 () Bool)

(assert (=> b!6171484 m!7008008))

(declare-fun m!7008010 () Bool)

(assert (=> b!6171484 m!7008010))

(declare-fun m!7008012 () Bool)

(assert (=> b!6171499 m!7008012))

(assert (=> b!6171499 m!7007956))

(declare-fun m!7008014 () Bool)

(assert (=> b!6171499 m!7008014))

(declare-fun m!7008016 () Bool)

(assert (=> b!6171466 m!7008016))

(declare-fun m!7008018 () Bool)

(assert (=> b!6171466 m!7008018))

(declare-fun m!7008020 () Bool)

(assert (=> b!6171497 m!7008020))

(declare-fun m!7008022 () Bool)

(assert (=> b!6171497 m!7008022))

(assert (=> b!6171481 m!7007972))

(declare-fun m!7008024 () Bool)

(assert (=> setNonEmpty!41834 m!7008024))

(declare-fun m!7008026 () Bool)

(assert (=> b!6171490 m!7008026))

(declare-fun m!7008028 () Bool)

(assert (=> b!6171493 m!7008028))

(declare-fun m!7008030 () Bool)

(assert (=> b!6171493 m!7008030))

(declare-fun m!7008032 () Bool)

(assert (=> b!6171493 m!7008032))

(declare-fun m!7008034 () Bool)

(assert (=> b!6171493 m!7008034))

(declare-fun m!7008036 () Bool)

(assert (=> b!6171493 m!7008036))

(declare-fun m!7008038 () Bool)

(assert (=> b!6171493 m!7008038))

(declare-fun m!7008040 () Bool)

(assert (=> b!6171493 m!7008040))

(declare-fun m!7008042 () Bool)

(assert (=> b!6171471 m!7008042))

(declare-fun m!7008044 () Bool)

(assert (=> b!6171469 m!7008044))

(declare-fun m!7008046 () Bool)

(assert (=> b!6171469 m!7008046))

(declare-fun m!7008048 () Bool)

(assert (=> b!6171469 m!7008048))

(declare-fun m!7008050 () Bool)

(assert (=> b!6171469 m!7008050))

(assert (=> b!6171469 m!7008048))

(declare-fun m!7008052 () Bool)

(assert (=> b!6171469 m!7008052))

(assert (=> b!6171469 m!7008044))

(declare-fun m!7008054 () Bool)

(assert (=> b!6171469 m!7008054))

(declare-fun m!7008056 () Bool)

(assert (=> start!616082 m!7008056))

(assert (=> b!6171472 m!7007948))

(declare-fun m!7008058 () Bool)

(assert (=> b!6171475 m!7008058))

(declare-fun m!7008060 () Bool)

(assert (=> b!6171475 m!7008060))

(declare-fun m!7008062 () Bool)

(assert (=> b!6171475 m!7008062))

(assert (=> b!6171500 m!7007972))

(declare-fun m!7008064 () Bool)

(assert (=> b!6171480 m!7008064))

(check-sat (not b!6171488) (not b!6171472) (not setNonEmpty!41834) (not b!6171469) (not b!6171481) (not b!6171484) (not b!6171463) (not b!6171482) tp_is_empty!41475 (not b!6171485) (not b!6171473) (not start!616082) (not b!6171494) (not b!6171492) (not b!6171493) (not b!6171490) (not b!6171496) (not b!6171474) (not b!6171465) (not b!6171499) (not b!6171464) (not b!6171497) (not b!6171475) (not b!6171500) (not b!6171476) (not b!6171495) (not b!6171479) (not b!6171491) (not b!6171462) (not b!6171480) (not b!6171478) (not b!6171466) (not b!6171486) (not b!6171471) (not b!6171468) (not b!6171461))
(check-sat)
(get-model)

(declare-fun d!1934315 () Bool)

(declare-fun e!3759418 () Bool)

(assert (=> d!1934315 e!3759418))

(declare-fun res!2554562 () Bool)

(assert (=> d!1934315 (=> (not res!2554562) (not e!3759418))))

(declare-fun lt!2337317 () List!64633)

(declare-fun noDuplicate!1956 (List!64633) Bool)

(assert (=> d!1934315 (= res!2554562 (noDuplicate!1956 lt!2337317))))

(declare-fun choose!45868 ((InoxSet Context!10990)) List!64633)

(assert (=> d!1934315 (= lt!2337317 (choose!45868 z!1189))))

(assert (=> d!1934315 (= (toList!9895 z!1189) lt!2337317)))

(declare-fun b!6171509 () Bool)

(declare-fun content!12039 (List!64633) (InoxSet Context!10990))

(assert (=> b!6171509 (= e!3759418 (= (content!12039 lt!2337317) z!1189))))

(assert (= (and d!1934315 res!2554562) b!6171509))

(declare-fun m!7008066 () Bool)

(assert (=> d!1934315 m!7008066))

(declare-fun m!7008068 () Bool)

(assert (=> d!1934315 m!7008068))

(declare-fun m!7008070 () Bool)

(assert (=> b!6171509 m!7008070))

(assert (=> b!6171480 d!1934315))

(declare-fun d!1934317 () Bool)

(declare-fun c!1112107 () Bool)

(declare-fun isEmpty!36488 (List!64634) Bool)

(assert (=> d!1934317 (= c!1112107 (isEmpty!36488 (t!378136 s!2326)))))

(declare-fun e!3759421 () Bool)

(assert (=> d!1934317 (= (matchZipper!2123 lt!2337289 (t!378136 s!2326)) e!3759421)))

(declare-fun b!6171514 () Bool)

(declare-fun nullableZipper!1892 ((InoxSet Context!10990)) Bool)

(assert (=> b!6171514 (= e!3759421 (nullableZipper!1892 lt!2337289))))

(declare-fun b!6171515 () Bool)

(declare-fun derivationStepZipper!2084 ((InoxSet Context!10990) C!32492) (InoxSet Context!10990))

(declare-fun head!12742 (List!64634) C!32492)

(declare-fun tail!11827 (List!64634) List!64634)

(assert (=> b!6171515 (= e!3759421 (matchZipper!2123 (derivationStepZipper!2084 lt!2337289 (head!12742 (t!378136 s!2326))) (tail!11827 (t!378136 s!2326))))))

(assert (= (and d!1934317 c!1112107) b!6171514))

(assert (= (and d!1934317 (not c!1112107)) b!6171515))

(declare-fun m!7008072 () Bool)

(assert (=> d!1934317 m!7008072))

(declare-fun m!7008074 () Bool)

(assert (=> b!6171514 m!7008074))

(declare-fun m!7008076 () Bool)

(assert (=> b!6171515 m!7008076))

(assert (=> b!6171515 m!7008076))

(declare-fun m!7008078 () Bool)

(assert (=> b!6171515 m!7008078))

(declare-fun m!7008080 () Bool)

(assert (=> b!6171515 m!7008080))

(assert (=> b!6171515 m!7008078))

(assert (=> b!6171515 m!7008080))

(declare-fun m!7008082 () Bool)

(assert (=> b!6171515 m!7008082))

(assert (=> b!6171500 d!1934317))

(declare-fun d!1934319 () Bool)

(declare-fun lt!2337320 () Int)

(assert (=> d!1934319 (>= lt!2337320 0)))

(declare-fun e!3759424 () Int)

(assert (=> d!1934319 (= lt!2337320 e!3759424)))

(declare-fun c!1112110 () Bool)

(assert (=> d!1934319 (= c!1112110 ((_ is Cons!64509) (Cons!64509 lt!2337306 Nil!64509)))))

(assert (=> d!1934319 (= (zipperDepthTotal!294 (Cons!64509 lt!2337306 Nil!64509)) lt!2337320)))

(declare-fun b!6171520 () Bool)

(declare-fun contextDepthTotal!270 (Context!10990) Int)

(assert (=> b!6171520 (= e!3759424 (+ (contextDepthTotal!270 (h!70957 (Cons!64509 lt!2337306 Nil!64509))) (zipperDepthTotal!294 (t!378135 (Cons!64509 lt!2337306 Nil!64509)))))))

(declare-fun b!6171521 () Bool)

(assert (=> b!6171521 (= e!3759424 0)))

(assert (= (and d!1934319 c!1112110) b!6171520))

(assert (= (and d!1934319 (not c!1112110)) b!6171521))

(declare-fun m!7008084 () Bool)

(assert (=> b!6171520 m!7008084))

(declare-fun m!7008086 () Bool)

(assert (=> b!6171520 m!7008086))

(assert (=> b!6171479 d!1934319))

(declare-fun e!3759430 () Bool)

(declare-fun d!1934321 () Bool)

(assert (=> d!1934321 (= (matchZipper!2123 ((_ map or) lt!2337282 lt!2337288) (t!378136 s!2326)) e!3759430)))

(declare-fun res!2554568 () Bool)

(assert (=> d!1934321 (=> res!2554568 e!3759430)))

(assert (=> d!1934321 (= res!2554568 (matchZipper!2123 lt!2337282 (t!378136 s!2326)))))

(declare-fun lt!2337326 () Unit!157667)

(declare-fun choose!45870 ((InoxSet Context!10990) (InoxSet Context!10990) List!64634) Unit!157667)

(assert (=> d!1934321 (= lt!2337326 (choose!45870 lt!2337282 lt!2337288 (t!378136 s!2326)))))

(assert (=> d!1934321 (= (lemmaZipperConcatMatchesSameAsBothZippers!942 lt!2337282 lt!2337288 (t!378136 s!2326)) lt!2337326)))

(declare-fun b!6171527 () Bool)

(assert (=> b!6171527 (= e!3759430 (matchZipper!2123 lt!2337288 (t!378136 s!2326)))))

(assert (= (and d!1934321 (not res!2554568)) b!6171527))

(assert (=> d!1934321 m!7008014))

(assert (=> d!1934321 m!7007956))

(declare-fun m!7008090 () Bool)

(assert (=> d!1934321 m!7008090))

(assert (=> b!6171527 m!7007948))

(assert (=> b!6171499 d!1934321))

(declare-fun d!1934327 () Bool)

(declare-fun c!1112111 () Bool)

(assert (=> d!1934327 (= c!1112111 (isEmpty!36488 (t!378136 s!2326)))))

(declare-fun e!3759431 () Bool)

(assert (=> d!1934327 (= (matchZipper!2123 lt!2337282 (t!378136 s!2326)) e!3759431)))

(declare-fun b!6171528 () Bool)

(assert (=> b!6171528 (= e!3759431 (nullableZipper!1892 lt!2337282))))

(declare-fun b!6171529 () Bool)

(assert (=> b!6171529 (= e!3759431 (matchZipper!2123 (derivationStepZipper!2084 lt!2337282 (head!12742 (t!378136 s!2326))) (tail!11827 (t!378136 s!2326))))))

(assert (= (and d!1934327 c!1112111) b!6171528))

(assert (= (and d!1934327 (not c!1112111)) b!6171529))

(assert (=> d!1934327 m!7008072))

(declare-fun m!7008092 () Bool)

(assert (=> b!6171528 m!7008092))

(assert (=> b!6171529 m!7008076))

(assert (=> b!6171529 m!7008076))

(declare-fun m!7008094 () Bool)

(assert (=> b!6171529 m!7008094))

(assert (=> b!6171529 m!7008080))

(assert (=> b!6171529 m!7008094))

(assert (=> b!6171529 m!7008080))

(declare-fun m!7008096 () Bool)

(assert (=> b!6171529 m!7008096))

(assert (=> b!6171499 d!1934327))

(declare-fun d!1934329 () Bool)

(declare-fun c!1112112 () Bool)

(assert (=> d!1934329 (= c!1112112 (isEmpty!36488 (t!378136 s!2326)))))

(declare-fun e!3759432 () Bool)

(assert (=> d!1934329 (= (matchZipper!2123 ((_ map or) lt!2337282 lt!2337288) (t!378136 s!2326)) e!3759432)))

(declare-fun b!6171530 () Bool)

(assert (=> b!6171530 (= e!3759432 (nullableZipper!1892 ((_ map or) lt!2337282 lt!2337288)))))

(declare-fun b!6171531 () Bool)

(assert (=> b!6171531 (= e!3759432 (matchZipper!2123 (derivationStepZipper!2084 ((_ map or) lt!2337282 lt!2337288) (head!12742 (t!378136 s!2326))) (tail!11827 (t!378136 s!2326))))))

(assert (= (and d!1934329 c!1112112) b!6171530))

(assert (= (and d!1934329 (not c!1112112)) b!6171531))

(assert (=> d!1934329 m!7008072))

(declare-fun m!7008098 () Bool)

(assert (=> b!6171530 m!7008098))

(assert (=> b!6171531 m!7008076))

(assert (=> b!6171531 m!7008076))

(declare-fun m!7008100 () Bool)

(assert (=> b!6171531 m!7008100))

(assert (=> b!6171531 m!7008080))

(assert (=> b!6171531 m!7008100))

(assert (=> b!6171531 m!7008080))

(declare-fun m!7008102 () Bool)

(assert (=> b!6171531 m!7008102))

(assert (=> b!6171499 d!1934329))

(declare-fun bm!514778 () Bool)

(declare-fun call!514785 () Bool)

(declare-fun call!514783 () Bool)

(assert (=> bm!514778 (= call!514785 call!514783)))

(declare-fun b!6171574 () Bool)

(declare-fun e!3759465 () Bool)

(declare-fun e!3759466 () Bool)

(assert (=> b!6171574 (= e!3759465 e!3759466)))

(declare-fun c!1112124 () Bool)

(assert (=> b!6171574 (= c!1112124 ((_ is Star!16111) r!7292))))

(declare-fun b!6171575 () Bool)

(declare-fun res!2554590 () Bool)

(declare-fun e!3759461 () Bool)

(assert (=> b!6171575 (=> res!2554590 e!3759461)))

(assert (=> b!6171575 (= res!2554590 (not ((_ is Concat!24956) r!7292)))))

(declare-fun e!3759460 () Bool)

(assert (=> b!6171575 (= e!3759460 e!3759461)))

(declare-fun b!6171576 () Bool)

(assert (=> b!6171576 (= e!3759466 e!3759460)))

(declare-fun c!1112125 () Bool)

(assert (=> b!6171576 (= c!1112125 ((_ is Union!16111) r!7292))))

(declare-fun b!6171577 () Bool)

(declare-fun e!3759462 () Bool)

(assert (=> b!6171577 (= e!3759462 call!514785)))

(declare-fun b!6171578 () Bool)

(declare-fun e!3759463 () Bool)

(assert (=> b!6171578 (= e!3759463 call!514783)))

(declare-fun b!6171579 () Bool)

(assert (=> b!6171579 (= e!3759461 e!3759462)))

(declare-fun res!2554592 () Bool)

(assert (=> b!6171579 (=> (not res!2554592) (not e!3759462))))

(declare-fun call!514784 () Bool)

(assert (=> b!6171579 (= res!2554592 call!514784)))

(declare-fun b!6171580 () Bool)

(declare-fun res!2554589 () Bool)

(declare-fun e!3759464 () Bool)

(assert (=> b!6171580 (=> (not res!2554589) (not e!3759464))))

(assert (=> b!6171580 (= res!2554589 call!514784)))

(assert (=> b!6171580 (= e!3759460 e!3759464)))

(declare-fun b!6171581 () Bool)

(assert (=> b!6171581 (= e!3759466 e!3759463)))

(declare-fun res!2554591 () Bool)

(assert (=> b!6171581 (= res!2554591 (not (nullable!6104 (reg!16440 r!7292))))))

(assert (=> b!6171581 (=> (not res!2554591) (not e!3759463))))

(declare-fun bm!514780 () Bool)

(assert (=> bm!514780 (= call!514783 (validRegex!7847 (ite c!1112124 (reg!16440 r!7292) (ite c!1112125 (regTwo!32735 r!7292) (regTwo!32734 r!7292)))))))

(declare-fun b!6171582 () Bool)

(assert (=> b!6171582 (= e!3759464 call!514785)))

(declare-fun bm!514779 () Bool)

(assert (=> bm!514779 (= call!514784 (validRegex!7847 (ite c!1112125 (regOne!32735 r!7292) (regOne!32734 r!7292))))))

(declare-fun d!1934331 () Bool)

(declare-fun res!2554593 () Bool)

(assert (=> d!1934331 (=> res!2554593 e!3759465)))

(assert (=> d!1934331 (= res!2554593 ((_ is ElementMatch!16111) r!7292))))

(assert (=> d!1934331 (= (validRegex!7847 r!7292) e!3759465)))

(assert (= (and d!1934331 (not res!2554593)) b!6171574))

(assert (= (and b!6171574 c!1112124) b!6171581))

(assert (= (and b!6171574 (not c!1112124)) b!6171576))

(assert (= (and b!6171581 res!2554591) b!6171578))

(assert (= (and b!6171576 c!1112125) b!6171580))

(assert (= (and b!6171576 (not c!1112125)) b!6171575))

(assert (= (and b!6171580 res!2554589) b!6171582))

(assert (= (and b!6171575 (not res!2554590)) b!6171579))

(assert (= (and b!6171579 res!2554592) b!6171577))

(assert (= (or b!6171582 b!6171577) bm!514778))

(assert (= (or b!6171580 b!6171579) bm!514779))

(assert (= (or b!6171578 bm!514778) bm!514780))

(declare-fun m!7008116 () Bool)

(assert (=> b!6171581 m!7008116))

(declare-fun m!7008118 () Bool)

(assert (=> bm!514780 m!7008118))

(declare-fun m!7008120 () Bool)

(assert (=> bm!514779 m!7008120))

(assert (=> start!616082 d!1934331))

(declare-fun d!1934335 () Bool)

(declare-fun lt!2337338 () Regex!16111)

(assert (=> d!1934335 (validRegex!7847 lt!2337338)))

(assert (=> d!1934335 (= lt!2337338 (generalisedUnion!1955 (unfocusZipperList!1532 lt!2337299)))))

(assert (=> d!1934335 (= (unfocusZipper!1853 lt!2337299) lt!2337338)))

(declare-fun bs!1530392 () Bool)

(assert (= bs!1530392 d!1934335))

(declare-fun m!7008150 () Bool)

(assert (=> bs!1530392 m!7008150))

(declare-fun m!7008152 () Bool)

(assert (=> bs!1530392 m!7008152))

(assert (=> bs!1530392 m!7008152))

(declare-fun m!7008154 () Bool)

(assert (=> bs!1530392 m!7008154))

(assert (=> b!6171462 d!1934335))

(declare-fun d!1934343 () Bool)

(declare-fun c!1112128 () Bool)

(assert (=> d!1934343 (= c!1112128 (isEmpty!36488 (t!378136 s!2326)))))

(declare-fun e!3759472 () Bool)

(assert (=> d!1934343 (= (matchZipper!2123 lt!2337288 (t!378136 s!2326)) e!3759472)))

(declare-fun b!6171592 () Bool)

(assert (=> b!6171592 (= e!3759472 (nullableZipper!1892 lt!2337288))))

(declare-fun b!6171593 () Bool)

(assert (=> b!6171593 (= e!3759472 (matchZipper!2123 (derivationStepZipper!2084 lt!2337288 (head!12742 (t!378136 s!2326))) (tail!11827 (t!378136 s!2326))))))

(assert (= (and d!1934343 c!1112128) b!6171592))

(assert (= (and d!1934343 (not c!1112128)) b!6171593))

(assert (=> d!1934343 m!7008072))

(declare-fun m!7008156 () Bool)

(assert (=> b!6171592 m!7008156))

(assert (=> b!6171593 m!7008076))

(assert (=> b!6171593 m!7008076))

(declare-fun m!7008158 () Bool)

(assert (=> b!6171593 m!7008158))

(assert (=> b!6171593 m!7008080))

(assert (=> b!6171593 m!7008158))

(assert (=> b!6171593 m!7008080))

(declare-fun m!7008160 () Bool)

(assert (=> b!6171593 m!7008160))

(assert (=> b!6171482 d!1934343))

(declare-fun d!1934345 () Bool)

(declare-fun e!3759473 () Bool)

(assert (=> d!1934345 e!3759473))

(declare-fun res!2554599 () Bool)

(assert (=> d!1934345 (=> (not res!2554599) (not e!3759473))))

(declare-fun lt!2337341 () List!64633)

(assert (=> d!1934345 (= res!2554599 (noDuplicate!1956 lt!2337341))))

(assert (=> d!1934345 (= lt!2337341 (choose!45868 lt!2337307))))

(assert (=> d!1934345 (= (toList!9895 lt!2337307) lt!2337341)))

(declare-fun b!6171594 () Bool)

(assert (=> b!6171594 (= e!3759473 (= (content!12039 lt!2337341) lt!2337307))))

(assert (= (and d!1934345 res!2554599) b!6171594))

(declare-fun m!7008162 () Bool)

(assert (=> d!1934345 m!7008162))

(declare-fun m!7008164 () Bool)

(assert (=> d!1934345 m!7008164))

(declare-fun m!7008166 () Bool)

(assert (=> b!6171594 m!7008166))

(assert (=> b!6171461 d!1934345))

(assert (=> b!6171481 d!1934317))

(declare-fun e!3759474 () Bool)

(declare-fun d!1934347 () Bool)

(assert (=> d!1934347 (= (matchZipper!2123 ((_ map or) lt!2337289 lt!2337288) (t!378136 s!2326)) e!3759474)))

(declare-fun res!2554600 () Bool)

(assert (=> d!1934347 (=> res!2554600 e!3759474)))

(assert (=> d!1934347 (= res!2554600 (matchZipper!2123 lt!2337289 (t!378136 s!2326)))))

(declare-fun lt!2337342 () Unit!157667)

(assert (=> d!1934347 (= lt!2337342 (choose!45870 lt!2337289 lt!2337288 (t!378136 s!2326)))))

(assert (=> d!1934347 (= (lemmaZipperConcatMatchesSameAsBothZippers!942 lt!2337289 lt!2337288 (t!378136 s!2326)) lt!2337342)))

(declare-fun b!6171595 () Bool)

(assert (=> b!6171595 (= e!3759474 (matchZipper!2123 lt!2337288 (t!378136 s!2326)))))

(assert (= (and d!1934347 (not res!2554600)) b!6171595))

(assert (=> d!1934347 m!7007974))

(assert (=> d!1934347 m!7007972))

(declare-fun m!7008168 () Bool)

(assert (=> d!1934347 m!7008168))

(assert (=> b!6171595 m!7007948))

(assert (=> b!6171464 d!1934347))

(assert (=> b!6171464 d!1934317))

(declare-fun d!1934349 () Bool)

(declare-fun c!1112129 () Bool)

(assert (=> d!1934349 (= c!1112129 (isEmpty!36488 (t!378136 s!2326)))))

(declare-fun e!3759477 () Bool)

(assert (=> d!1934349 (= (matchZipper!2123 ((_ map or) lt!2337289 lt!2337288) (t!378136 s!2326)) e!3759477)))

(declare-fun b!6171600 () Bool)

(assert (=> b!6171600 (= e!3759477 (nullableZipper!1892 ((_ map or) lt!2337289 lt!2337288)))))

(declare-fun b!6171601 () Bool)

(assert (=> b!6171601 (= e!3759477 (matchZipper!2123 (derivationStepZipper!2084 ((_ map or) lt!2337289 lt!2337288) (head!12742 (t!378136 s!2326))) (tail!11827 (t!378136 s!2326))))))

(assert (= (and d!1934349 c!1112129) b!6171600))

(assert (= (and d!1934349 (not c!1112129)) b!6171601))

(assert (=> d!1934349 m!7008072))

(declare-fun m!7008170 () Bool)

(assert (=> b!6171600 m!7008170))

(assert (=> b!6171601 m!7008076))

(assert (=> b!6171601 m!7008076))

(declare-fun m!7008172 () Bool)

(assert (=> b!6171601 m!7008172))

(assert (=> b!6171601 m!7008080))

(assert (=> b!6171601 m!7008172))

(assert (=> b!6171601 m!7008080))

(declare-fun m!7008174 () Bool)

(assert (=> b!6171601 m!7008174))

(assert (=> b!6171464 d!1934349))

(assert (=> b!6171485 d!1934343))

(declare-fun d!1934351 () Bool)

(declare-fun dynLambda!25439 (Int Context!10990) (InoxSet Context!10990))

(assert (=> d!1934351 (= (flatMap!1616 lt!2337307 lambda!336831) (dynLambda!25439 lambda!336831 lt!2337309))))

(declare-fun lt!2337346 () Unit!157667)

(declare-fun choose!45873 ((InoxSet Context!10990) Context!10990 Int) Unit!157667)

(assert (=> d!1934351 (= lt!2337346 (choose!45873 lt!2337307 lt!2337309 lambda!336831))))

(assert (=> d!1934351 (= lt!2337307 (store ((as const (Array Context!10990 Bool)) false) lt!2337309 true))))

(assert (=> d!1934351 (= (lemmaFlatMapOnSingletonSet!1142 lt!2337307 lt!2337309 lambda!336831) lt!2337346)))

(declare-fun b_lambda!234901 () Bool)

(assert (=> (not b_lambda!234901) (not d!1934351)))

(declare-fun bs!1530395 () Bool)

(assert (= bs!1530395 d!1934351))

(assert (=> bs!1530395 m!7008000))

(declare-fun m!7008180 () Bool)

(assert (=> bs!1530395 m!7008180))

(declare-fun m!7008182 () Bool)

(assert (=> bs!1530395 m!7008182))

(assert (=> bs!1530395 m!7007990))

(assert (=> b!6171484 d!1934351))

(declare-fun d!1934355 () Bool)

(declare-fun c!1112130 () Bool)

(assert (=> d!1934355 (= c!1112130 (isEmpty!36488 s!2326))))

(declare-fun e!3759478 () Bool)

(assert (=> d!1934355 (= (matchZipper!2123 z!1189 s!2326) e!3759478)))

(declare-fun b!6171602 () Bool)

(assert (=> b!6171602 (= e!3759478 (nullableZipper!1892 z!1189))))

(declare-fun b!6171603 () Bool)

(assert (=> b!6171603 (= e!3759478 (matchZipper!2123 (derivationStepZipper!2084 z!1189 (head!12742 s!2326)) (tail!11827 s!2326)))))

(assert (= (and d!1934355 c!1112130) b!6171602))

(assert (= (and d!1934355 (not c!1112130)) b!6171603))

(declare-fun m!7008184 () Bool)

(assert (=> d!1934355 m!7008184))

(declare-fun m!7008186 () Bool)

(assert (=> b!6171602 m!7008186))

(declare-fun m!7008188 () Bool)

(assert (=> b!6171603 m!7008188))

(assert (=> b!6171603 m!7008188))

(declare-fun m!7008190 () Bool)

(assert (=> b!6171603 m!7008190))

(declare-fun m!7008192 () Bool)

(assert (=> b!6171603 m!7008192))

(assert (=> b!6171603 m!7008190))

(assert (=> b!6171603 m!7008192))

(declare-fun m!7008194 () Bool)

(assert (=> b!6171603 m!7008194))

(assert (=> b!6171484 d!1934355))

(declare-fun b!6171622 () Bool)

(declare-fun e!3759490 () (InoxSet Context!10990))

(assert (=> b!6171622 (= e!3759490 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6171623 () Bool)

(declare-fun e!3759489 () Bool)

(assert (=> b!6171623 (= e!3759489 (nullable!6104 (h!70956 (exprs!5995 lt!2337306))))))

(declare-fun b!6171624 () Bool)

(declare-fun call!514788 () (InoxSet Context!10990))

(assert (=> b!6171624 (= e!3759490 call!514788)))

(declare-fun b!6171625 () Bool)

(declare-fun e!3759491 () (InoxSet Context!10990))

(assert (=> b!6171625 (= e!3759491 ((_ map or) call!514788 (derivationStepZipperUp!1285 (Context!10991 (t!378134 (exprs!5995 lt!2337306))) (h!70958 s!2326))))))

(declare-fun b!6171626 () Bool)

(assert (=> b!6171626 (= e!3759491 e!3759490)))

(declare-fun c!1112135 () Bool)

(assert (=> b!6171626 (= c!1112135 ((_ is Cons!64508) (exprs!5995 lt!2337306)))))

(declare-fun bm!514783 () Bool)

(assert (=> bm!514783 (= call!514788 (derivationStepZipperDown!1359 (h!70956 (exprs!5995 lt!2337306)) (Context!10991 (t!378134 (exprs!5995 lt!2337306))) (h!70958 s!2326)))))

(declare-fun d!1934357 () Bool)

(declare-fun c!1112136 () Bool)

(assert (=> d!1934357 (= c!1112136 e!3759489)))

(declare-fun res!2554615 () Bool)

(assert (=> d!1934357 (=> (not res!2554615) (not e!3759489))))

(assert (=> d!1934357 (= res!2554615 ((_ is Cons!64508) (exprs!5995 lt!2337306)))))

(assert (=> d!1934357 (= (derivationStepZipperUp!1285 lt!2337306 (h!70958 s!2326)) e!3759491)))

(assert (= (and d!1934357 res!2554615) b!6171623))

(assert (= (and d!1934357 c!1112136) b!6171625))

(assert (= (and d!1934357 (not c!1112136)) b!6171626))

(assert (= (and b!6171626 c!1112135) b!6171624))

(assert (= (and b!6171626 (not c!1112135)) b!6171622))

(assert (= (or b!6171625 b!6171624) bm!514783))

(declare-fun m!7008204 () Bool)

(assert (=> b!6171623 m!7008204))

(declare-fun m!7008206 () Bool)

(assert (=> b!6171625 m!7008206))

(declare-fun m!7008208 () Bool)

(assert (=> bm!514783 m!7008208))

(assert (=> b!6171484 d!1934357))

(declare-fun d!1934363 () Bool)

(declare-fun choose!45874 ((InoxSet Context!10990) Int) (InoxSet Context!10990))

(assert (=> d!1934363 (= (flatMap!1616 lt!2337307 lambda!336831) (choose!45874 lt!2337307 lambda!336831))))

(declare-fun bs!1530400 () Bool)

(assert (= bs!1530400 d!1934363))

(declare-fun m!7008210 () Bool)

(assert (=> bs!1530400 m!7008210))

(assert (=> b!6171484 d!1934363))

(declare-fun d!1934365 () Bool)

(assert (=> d!1934365 (= (flatMap!1616 lt!2337291 lambda!336831) (choose!45874 lt!2337291 lambda!336831))))

(declare-fun bs!1530401 () Bool)

(assert (= bs!1530401 d!1934365))

(declare-fun m!7008212 () Bool)

(assert (=> bs!1530401 m!7008212))

(assert (=> b!6171484 d!1934365))

(declare-fun b!6171655 () Bool)

(declare-fun e!3759509 () (InoxSet Context!10990))

(assert (=> b!6171655 (= e!3759509 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6171656 () Bool)

(declare-fun e!3759508 () Bool)

(assert (=> b!6171656 (= e!3759508 (nullable!6104 (h!70956 (exprs!5995 lt!2337309))))))

(declare-fun b!6171657 () Bool)

(declare-fun call!514789 () (InoxSet Context!10990))

(assert (=> b!6171657 (= e!3759509 call!514789)))

(declare-fun b!6171658 () Bool)

(declare-fun e!3759510 () (InoxSet Context!10990))

(assert (=> b!6171658 (= e!3759510 ((_ map or) call!514789 (derivationStepZipperUp!1285 (Context!10991 (t!378134 (exprs!5995 lt!2337309))) (h!70958 s!2326))))))

(declare-fun b!6171659 () Bool)

(assert (=> b!6171659 (= e!3759510 e!3759509)))

(declare-fun c!1112145 () Bool)

(assert (=> b!6171659 (= c!1112145 ((_ is Cons!64508) (exprs!5995 lt!2337309)))))

(declare-fun bm!514784 () Bool)

(assert (=> bm!514784 (= call!514789 (derivationStepZipperDown!1359 (h!70956 (exprs!5995 lt!2337309)) (Context!10991 (t!378134 (exprs!5995 lt!2337309))) (h!70958 s!2326)))))

(declare-fun d!1934367 () Bool)

(declare-fun c!1112146 () Bool)

(assert (=> d!1934367 (= c!1112146 e!3759508)))

(declare-fun res!2554628 () Bool)

(assert (=> d!1934367 (=> (not res!2554628) (not e!3759508))))

(assert (=> d!1934367 (= res!2554628 ((_ is Cons!64508) (exprs!5995 lt!2337309)))))

(assert (=> d!1934367 (= (derivationStepZipperUp!1285 lt!2337309 (h!70958 s!2326)) e!3759510)))

(assert (= (and d!1934367 res!2554628) b!6171656))

(assert (= (and d!1934367 c!1112146) b!6171658))

(assert (= (and d!1934367 (not c!1112146)) b!6171659))

(assert (= (and b!6171659 c!1112145) b!6171657))

(assert (= (and b!6171659 (not c!1112145)) b!6171655))

(assert (= (or b!6171658 b!6171657) bm!514784))

(declare-fun m!7008214 () Bool)

(assert (=> b!6171656 m!7008214))

(declare-fun m!7008216 () Bool)

(assert (=> b!6171658 m!7008216))

(declare-fun m!7008218 () Bool)

(assert (=> bm!514784 m!7008218))

(assert (=> b!6171484 d!1934367))

(declare-fun d!1934369 () Bool)

(assert (=> d!1934369 (= (flatMap!1616 lt!2337291 lambda!336831) (dynLambda!25439 lambda!336831 lt!2337306))))

(declare-fun lt!2337350 () Unit!157667)

(assert (=> d!1934369 (= lt!2337350 (choose!45873 lt!2337291 lt!2337306 lambda!336831))))

(assert (=> d!1934369 (= lt!2337291 (store ((as const (Array Context!10990 Bool)) false) lt!2337306 true))))

(assert (=> d!1934369 (= (lemmaFlatMapOnSingletonSet!1142 lt!2337291 lt!2337306 lambda!336831) lt!2337350)))

(declare-fun b_lambda!234903 () Bool)

(assert (=> (not b_lambda!234903) (not d!1934369)))

(declare-fun bs!1530402 () Bool)

(assert (= bs!1530402 d!1934369))

(assert (=> bs!1530402 m!7007996))

(declare-fun m!7008220 () Bool)

(assert (=> bs!1530402 m!7008220))

(declare-fun m!7008222 () Bool)

(assert (=> bs!1530402 m!7008222))

(assert (=> bs!1530402 m!7007994))

(assert (=> b!6171484 d!1934369))

(declare-fun d!1934371 () Bool)

(declare-fun nullableFct!2068 (Regex!16111) Bool)

(assert (=> d!1934371 (= (nullable!6104 (regOne!32735 (regOne!32734 r!7292))) (nullableFct!2068 (regOne!32735 (regOne!32734 r!7292))))))

(declare-fun bs!1530403 () Bool)

(assert (= bs!1530403 d!1934371))

(declare-fun m!7008224 () Bool)

(assert (=> bs!1530403 m!7008224))

(assert (=> b!6171484 d!1934371))

(declare-fun d!1934373 () Bool)

(declare-fun c!1112147 () Bool)

(assert (=> d!1934373 (= c!1112147 (isEmpty!36488 s!2326))))

(declare-fun e!3759513 () Bool)

(assert (=> d!1934373 (= (matchZipper!2123 lt!2337307 s!2326) e!3759513)))

(declare-fun b!6171664 () Bool)

(assert (=> b!6171664 (= e!3759513 (nullableZipper!1892 lt!2337307))))

(declare-fun b!6171665 () Bool)

(assert (=> b!6171665 (= e!3759513 (matchZipper!2123 (derivationStepZipper!2084 lt!2337307 (head!12742 s!2326)) (tail!11827 s!2326)))))

(assert (= (and d!1934373 c!1112147) b!6171664))

(assert (= (and d!1934373 (not c!1112147)) b!6171665))

(assert (=> d!1934373 m!7008184))

(declare-fun m!7008226 () Bool)

(assert (=> b!6171664 m!7008226))

(assert (=> b!6171665 m!7008188))

(assert (=> b!6171665 m!7008188))

(declare-fun m!7008228 () Bool)

(assert (=> b!6171665 m!7008228))

(assert (=> b!6171665 m!7008192))

(assert (=> b!6171665 m!7008228))

(assert (=> b!6171665 m!7008192))

(declare-fun m!7008230 () Bool)

(assert (=> b!6171665 m!7008230))

(assert (=> b!6171484 d!1934373))

(declare-fun d!1934375 () Bool)

(assert (=> d!1934375 (= (nullable!6104 (regTwo!32735 (regOne!32734 r!7292))) (nullableFct!2068 (regTwo!32735 (regOne!32734 r!7292))))))

(declare-fun bs!1530404 () Bool)

(assert (= bs!1530404 d!1934375))

(declare-fun m!7008232 () Bool)

(assert (=> bs!1530404 m!7008232))

(assert (=> b!6171484 d!1934375))

(declare-fun b!6171739 () Bool)

(declare-fun e!3759554 () Regex!16111)

(declare-fun e!3759559 () Regex!16111)

(assert (=> b!6171739 (= e!3759554 e!3759559)))

(declare-fun c!1112172 () Bool)

(assert (=> b!6171739 (= c!1112172 ((_ is Cons!64508) (exprs!5995 (h!70957 zl!343))))))

(declare-fun d!1934377 () Bool)

(declare-fun e!3759558 () Bool)

(assert (=> d!1934377 e!3759558))

(declare-fun res!2554665 () Bool)

(assert (=> d!1934377 (=> (not res!2554665) (not e!3759558))))

(declare-fun lt!2337358 () Regex!16111)

(assert (=> d!1934377 (= res!2554665 (validRegex!7847 lt!2337358))))

(assert (=> d!1934377 (= lt!2337358 e!3759554)))

(declare-fun c!1112169 () Bool)

(declare-fun e!3759557 () Bool)

(assert (=> d!1934377 (= c!1112169 e!3759557)))

(declare-fun res!2554664 () Bool)

(assert (=> d!1934377 (=> (not res!2554664) (not e!3759557))))

(assert (=> d!1934377 (= res!2554664 ((_ is Cons!64508) (exprs!5995 (h!70957 zl!343))))))

(declare-fun lambda!336849 () Int)

(declare-fun forall!15231 (List!64632 Int) Bool)

(assert (=> d!1934377 (forall!15231 (exprs!5995 (h!70957 zl!343)) lambda!336849)))

(assert (=> d!1934377 (= (generalisedConcat!1708 (exprs!5995 (h!70957 zl!343))) lt!2337358)))

(declare-fun b!6171740 () Bool)

(assert (=> b!6171740 (= e!3759557 (isEmpty!36485 (t!378134 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun b!6171741 () Bool)

(declare-fun e!3759556 () Bool)

(declare-fun e!3759555 () Bool)

(assert (=> b!6171741 (= e!3759556 e!3759555)))

(declare-fun c!1112171 () Bool)

(declare-fun tail!11828 (List!64632) List!64632)

(assert (=> b!6171741 (= c!1112171 (isEmpty!36485 (tail!11828 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun b!6171742 () Bool)

(assert (=> b!6171742 (= e!3759558 e!3759556)))

(declare-fun c!1112170 () Bool)

(assert (=> b!6171742 (= c!1112170 (isEmpty!36485 (exprs!5995 (h!70957 zl!343))))))

(declare-fun b!6171743 () Bool)

(assert (=> b!6171743 (= e!3759559 EmptyExpr!16111)))

(declare-fun b!6171744 () Bool)

(assert (=> b!6171744 (= e!3759554 (h!70956 (exprs!5995 (h!70957 zl!343))))))

(declare-fun b!6171745 () Bool)

(assert (=> b!6171745 (= e!3759559 (Concat!24956 (h!70956 (exprs!5995 (h!70957 zl!343))) (generalisedConcat!1708 (t!378134 (exprs!5995 (h!70957 zl!343))))))))

(declare-fun b!6171746 () Bool)

(declare-fun isConcat!1050 (Regex!16111) Bool)

(assert (=> b!6171746 (= e!3759555 (isConcat!1050 lt!2337358))))

(declare-fun b!6171747 () Bool)

(declare-fun head!12743 (List!64632) Regex!16111)

(assert (=> b!6171747 (= e!3759555 (= lt!2337358 (head!12743 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun b!6171748 () Bool)

(declare-fun isEmptyExpr!1527 (Regex!16111) Bool)

(assert (=> b!6171748 (= e!3759556 (isEmptyExpr!1527 lt!2337358))))

(assert (= (and d!1934377 res!2554664) b!6171740))

(assert (= (and d!1934377 c!1112169) b!6171744))

(assert (= (and d!1934377 (not c!1112169)) b!6171739))

(assert (= (and b!6171739 c!1112172) b!6171745))

(assert (= (and b!6171739 (not c!1112172)) b!6171743))

(assert (= (and d!1934377 res!2554665) b!6171742))

(assert (= (and b!6171742 c!1112170) b!6171748))

(assert (= (and b!6171742 (not c!1112170)) b!6171741))

(assert (= (and b!6171741 c!1112171) b!6171747))

(assert (= (and b!6171741 (not c!1112171)) b!6171746))

(declare-fun m!7008256 () Bool)

(assert (=> b!6171742 m!7008256))

(declare-fun m!7008258 () Bool)

(assert (=> b!6171748 m!7008258))

(declare-fun m!7008260 () Bool)

(assert (=> b!6171745 m!7008260))

(declare-fun m!7008262 () Bool)

(assert (=> d!1934377 m!7008262))

(declare-fun m!7008264 () Bool)

(assert (=> d!1934377 m!7008264))

(declare-fun m!7008266 () Bool)

(assert (=> b!6171746 m!7008266))

(declare-fun m!7008268 () Bool)

(assert (=> b!6171741 m!7008268))

(assert (=> b!6171741 m!7008268))

(declare-fun m!7008270 () Bool)

(assert (=> b!6171741 m!7008270))

(declare-fun m!7008272 () Bool)

(assert (=> b!6171747 m!7008272))

(assert (=> b!6171740 m!7007976))

(assert (=> b!6171488 d!1934377))

(declare-fun e!3759562 () Bool)

(declare-fun d!1934385 () Bool)

(assert (=> d!1934385 (= (matchZipper!2123 ((_ map or) lt!2337296 lt!2337288) (t!378136 s!2326)) e!3759562)))

(declare-fun res!2554666 () Bool)

(assert (=> d!1934385 (=> res!2554666 e!3759562)))

(assert (=> d!1934385 (= res!2554666 (matchZipper!2123 lt!2337296 (t!378136 s!2326)))))

(declare-fun lt!2337362 () Unit!157667)

(assert (=> d!1934385 (= lt!2337362 (choose!45870 lt!2337296 lt!2337288 (t!378136 s!2326)))))

(assert (=> d!1934385 (= (lemmaZipperConcatMatchesSameAsBothZippers!942 lt!2337296 lt!2337288 (t!378136 s!2326)) lt!2337362)))

(declare-fun b!6171753 () Bool)

(assert (=> b!6171753 (= e!3759562 (matchZipper!2123 lt!2337288 (t!378136 s!2326)))))

(assert (= (and d!1934385 (not res!2554666)) b!6171753))

(assert (=> d!1934385 m!7008018))

(assert (=> d!1934385 m!7007960))

(declare-fun m!7008280 () Bool)

(assert (=> d!1934385 m!7008280))

(assert (=> b!6171753 m!7007948))

(assert (=> b!6171466 d!1934385))

(declare-fun d!1934391 () Bool)

(declare-fun c!1112178 () Bool)

(assert (=> d!1934391 (= c!1112178 (isEmpty!36488 (t!378136 s!2326)))))

(declare-fun e!3759566 () Bool)

(assert (=> d!1934391 (= (matchZipper!2123 ((_ map or) lt!2337296 lt!2337288) (t!378136 s!2326)) e!3759566)))

(declare-fun b!6171760 () Bool)

(assert (=> b!6171760 (= e!3759566 (nullableZipper!1892 ((_ map or) lt!2337296 lt!2337288)))))

(declare-fun b!6171761 () Bool)

(assert (=> b!6171761 (= e!3759566 (matchZipper!2123 (derivationStepZipper!2084 ((_ map or) lt!2337296 lt!2337288) (head!12742 (t!378136 s!2326))) (tail!11827 (t!378136 s!2326))))))

(assert (= (and d!1934391 c!1112178) b!6171760))

(assert (= (and d!1934391 (not c!1112178)) b!6171761))

(assert (=> d!1934391 m!7008072))

(declare-fun m!7008288 () Bool)

(assert (=> b!6171760 m!7008288))

(assert (=> b!6171761 m!7008076))

(assert (=> b!6171761 m!7008076))

(declare-fun m!7008290 () Bool)

(assert (=> b!6171761 m!7008290))

(assert (=> b!6171761 m!7008080))

(assert (=> b!6171761 m!7008290))

(assert (=> b!6171761 m!7008080))

(declare-fun m!7008292 () Bool)

(assert (=> b!6171761 m!7008292))

(assert (=> b!6171466 d!1934391))

(declare-fun d!1934397 () Bool)

(assert (=> d!1934397 (= (isEmpty!36485 (t!378134 (exprs!5995 (h!70957 zl!343)))) ((_ is Nil!64508) (t!378134 (exprs!5995 (h!70957 zl!343)))))))

(assert (=> b!6171465 d!1934397))

(declare-fun b!6171867 () Bool)

(declare-fun res!2554695 () Bool)

(declare-fun e!3759628 () Bool)

(assert (=> b!6171867 (=> (not res!2554695) (not e!3759628))))

(declare-fun lt!2337383 () Option!16002)

(declare-fun get!22268 (Option!16002) tuple2!66180)

(assert (=> b!6171867 (= res!2554695 (matchR!8294 (regTwo!32734 r!7292) (_2!36393 (get!22268 lt!2337383))))))

(declare-fun b!6171868 () Bool)

(declare-fun e!3759629 () Bool)

(assert (=> b!6171868 (= e!3759629 (matchR!8294 (regTwo!32734 r!7292) s!2326))))

(declare-fun b!6171870 () Bool)

(declare-fun res!2554694 () Bool)

(assert (=> b!6171870 (=> (not res!2554694) (not e!3759628))))

(assert (=> b!6171870 (= res!2554694 (matchR!8294 (regOne!32734 r!7292) (_1!36393 (get!22268 lt!2337383))))))

(declare-fun b!6171871 () Bool)

(declare-fun e!3759631 () Option!16002)

(declare-fun e!3759632 () Option!16002)

(assert (=> b!6171871 (= e!3759631 e!3759632)))

(declare-fun c!1112220 () Bool)

(assert (=> b!6171871 (= c!1112220 ((_ is Nil!64510) s!2326))))

(declare-fun b!6171872 () Bool)

(declare-fun lt!2337384 () Unit!157667)

(declare-fun lt!2337382 () Unit!157667)

(assert (=> b!6171872 (= lt!2337384 lt!2337382)))

(declare-fun ++!14197 (List!64634 List!64634) List!64634)

(assert (=> b!6171872 (= (++!14197 (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) Nil!64510)) (t!378136 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2292 (List!64634 C!32492 List!64634 List!64634) Unit!157667)

(assert (=> b!6171872 (= lt!2337382 (lemmaMoveElementToOtherListKeepsConcatEq!2292 Nil!64510 (h!70958 s!2326) (t!378136 s!2326) s!2326))))

(assert (=> b!6171872 (= e!3759632 (findConcatSeparation!2416 (regOne!32734 r!7292) (regTwo!32734 r!7292) (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) Nil!64510)) (t!378136 s!2326) s!2326))))

(declare-fun b!6171873 () Bool)

(assert (=> b!6171873 (= e!3759631 (Some!16001 (tuple2!66181 Nil!64510 s!2326)))))

(declare-fun b!6171869 () Bool)

(declare-fun e!3759630 () Bool)

(assert (=> b!6171869 (= e!3759630 (not (isDefined!12705 lt!2337383)))))

(declare-fun d!1934401 () Bool)

(assert (=> d!1934401 e!3759630))

(declare-fun res!2554696 () Bool)

(assert (=> d!1934401 (=> res!2554696 e!3759630)))

(assert (=> d!1934401 (= res!2554696 e!3759628)))

(declare-fun res!2554693 () Bool)

(assert (=> d!1934401 (=> (not res!2554693) (not e!3759628))))

(assert (=> d!1934401 (= res!2554693 (isDefined!12705 lt!2337383))))

(assert (=> d!1934401 (= lt!2337383 e!3759631)))

(declare-fun c!1112219 () Bool)

(assert (=> d!1934401 (= c!1112219 e!3759629)))

(declare-fun res!2554692 () Bool)

(assert (=> d!1934401 (=> (not res!2554692) (not e!3759629))))

(assert (=> d!1934401 (= res!2554692 (matchR!8294 (regOne!32734 r!7292) Nil!64510))))

(assert (=> d!1934401 (validRegex!7847 (regOne!32734 r!7292))))

(assert (=> d!1934401 (= (findConcatSeparation!2416 (regOne!32734 r!7292) (regTwo!32734 r!7292) Nil!64510 s!2326 s!2326) lt!2337383)))

(declare-fun b!6171874 () Bool)

(assert (=> b!6171874 (= e!3759632 None!16001)))

(declare-fun b!6171875 () Bool)

(assert (=> b!6171875 (= e!3759628 (= (++!14197 (_1!36393 (get!22268 lt!2337383)) (_2!36393 (get!22268 lt!2337383))) s!2326))))

(assert (= (and d!1934401 res!2554692) b!6171868))

(assert (= (and d!1934401 c!1112219) b!6171873))

(assert (= (and d!1934401 (not c!1112219)) b!6171871))

(assert (= (and b!6171871 c!1112220) b!6171874))

(assert (= (and b!6171871 (not c!1112220)) b!6171872))

(assert (= (and d!1934401 res!2554693) b!6171870))

(assert (= (and b!6171870 res!2554694) b!6171867))

(assert (= (and b!6171867 res!2554695) b!6171875))

(assert (= (and d!1934401 (not res!2554696)) b!6171869))

(declare-fun m!7008414 () Bool)

(assert (=> b!6171872 m!7008414))

(assert (=> b!6171872 m!7008414))

(declare-fun m!7008416 () Bool)

(assert (=> b!6171872 m!7008416))

(declare-fun m!7008418 () Bool)

(assert (=> b!6171872 m!7008418))

(assert (=> b!6171872 m!7008414))

(declare-fun m!7008420 () Bool)

(assert (=> b!6171872 m!7008420))

(declare-fun m!7008422 () Bool)

(assert (=> b!6171870 m!7008422))

(declare-fun m!7008424 () Bool)

(assert (=> b!6171870 m!7008424))

(assert (=> b!6171875 m!7008422))

(declare-fun m!7008426 () Bool)

(assert (=> b!6171875 m!7008426))

(declare-fun m!7008428 () Bool)

(assert (=> d!1934401 m!7008428))

(declare-fun m!7008430 () Bool)

(assert (=> d!1934401 m!7008430))

(declare-fun m!7008432 () Bool)

(assert (=> d!1934401 m!7008432))

(assert (=> b!6171869 m!7008428))

(assert (=> b!6171867 m!7008422))

(declare-fun m!7008434 () Bool)

(assert (=> b!6171867 m!7008434))

(declare-fun m!7008436 () Bool)

(assert (=> b!6171868 m!7008436))

(assert (=> b!6171469 d!1934401))

(declare-fun d!1934453 () Bool)

(declare-fun choose!45875 (Int) Bool)

(assert (=> d!1934453 (= (Exists!3181 lambda!336830) (choose!45875 lambda!336830))))

(declare-fun bs!1530423 () Bool)

(assert (= bs!1530423 d!1934453))

(declare-fun m!7008438 () Bool)

(assert (=> bs!1530423 m!7008438))

(assert (=> b!6171469 d!1934453))

(declare-fun d!1934455 () Bool)

(assert (=> d!1934455 (= (Exists!3181 lambda!336829) (choose!45875 lambda!336829))))

(declare-fun bs!1530424 () Bool)

(assert (= bs!1530424 d!1934455))

(declare-fun m!7008440 () Bool)

(assert (=> bs!1530424 m!7008440))

(assert (=> b!6171469 d!1934455))

(declare-fun bs!1530428 () Bool)

(declare-fun d!1934457 () Bool)

(assert (= bs!1530428 (and d!1934457 b!6171469)))

(declare-fun lambda!336859 () Int)

(assert (=> bs!1530428 (= lambda!336859 lambda!336829)))

(assert (=> bs!1530428 (not (= lambda!336859 lambda!336830))))

(assert (=> d!1934457 true))

(assert (=> d!1934457 true))

(assert (=> d!1934457 true))

(assert (=> d!1934457 (= (isDefined!12705 (findConcatSeparation!2416 (regOne!32734 r!7292) (regTwo!32734 r!7292) Nil!64510 s!2326 s!2326)) (Exists!3181 lambda!336859))))

(declare-fun lt!2337391 () Unit!157667)

(declare-fun choose!45876 (Regex!16111 Regex!16111 List!64634) Unit!157667)

(assert (=> d!1934457 (= lt!2337391 (choose!45876 (regOne!32734 r!7292) (regTwo!32734 r!7292) s!2326))))

(assert (=> d!1934457 (validRegex!7847 (regOne!32734 r!7292))))

(assert (=> d!1934457 (= (lemmaFindConcatSeparationEquivalentToExists!2180 (regOne!32734 r!7292) (regTwo!32734 r!7292) s!2326) lt!2337391)))

(declare-fun bs!1530429 () Bool)

(assert (= bs!1530429 d!1934457))

(declare-fun m!7008506 () Bool)

(assert (=> bs!1530429 m!7008506))

(assert (=> bs!1530429 m!7008432))

(declare-fun m!7008508 () Bool)

(assert (=> bs!1530429 m!7008508))

(assert (=> bs!1530429 m!7008044))

(assert (=> bs!1530429 m!7008044))

(assert (=> bs!1530429 m!7008046))

(assert (=> b!6171469 d!1934457))

(declare-fun bs!1530445 () Bool)

(declare-fun d!1934475 () Bool)

(assert (= bs!1530445 (and d!1934475 b!6171469)))

(declare-fun lambda!336871 () Int)

(assert (=> bs!1530445 (= lambda!336871 lambda!336829)))

(assert (=> bs!1530445 (not (= lambda!336871 lambda!336830))))

(declare-fun bs!1530446 () Bool)

(assert (= bs!1530446 (and d!1934475 d!1934457)))

(assert (=> bs!1530446 (= lambda!336871 lambda!336859)))

(assert (=> d!1934475 true))

(assert (=> d!1934475 true))

(assert (=> d!1934475 true))

(declare-fun lambda!336872 () Int)

(assert (=> bs!1530445 (not (= lambda!336872 lambda!336829))))

(assert (=> bs!1530445 (= lambda!336872 lambda!336830)))

(assert (=> bs!1530446 (not (= lambda!336872 lambda!336859))))

(declare-fun bs!1530447 () Bool)

(assert (= bs!1530447 d!1934475))

(assert (=> bs!1530447 (not (= lambda!336872 lambda!336871))))

(assert (=> d!1934475 true))

(assert (=> d!1934475 true))

(assert (=> d!1934475 true))

(assert (=> d!1934475 (= (Exists!3181 lambda!336871) (Exists!3181 lambda!336872))))

(declare-fun lt!2337405 () Unit!157667)

(declare-fun choose!45877 (Regex!16111 Regex!16111 List!64634) Unit!157667)

(assert (=> d!1934475 (= lt!2337405 (choose!45877 (regOne!32734 r!7292) (regTwo!32734 r!7292) s!2326))))

(assert (=> d!1934475 (validRegex!7847 (regOne!32734 r!7292))))

(assert (=> d!1934475 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1718 (regOne!32734 r!7292) (regTwo!32734 r!7292) s!2326) lt!2337405)))

(declare-fun m!7008574 () Bool)

(assert (=> bs!1530447 m!7008574))

(declare-fun m!7008576 () Bool)

(assert (=> bs!1530447 m!7008576))

(declare-fun m!7008578 () Bool)

(assert (=> bs!1530447 m!7008578))

(assert (=> bs!1530447 m!7008432))

(assert (=> b!6171469 d!1934475))

(declare-fun d!1934493 () Bool)

(declare-fun isEmpty!36489 (Option!16002) Bool)

(assert (=> d!1934493 (= (isDefined!12705 (findConcatSeparation!2416 (regOne!32734 r!7292) (regTwo!32734 r!7292) Nil!64510 s!2326 s!2326)) (not (isEmpty!36489 (findConcatSeparation!2416 (regOne!32734 r!7292) (regTwo!32734 r!7292) Nil!64510 s!2326 s!2326))))))

(declare-fun bs!1530448 () Bool)

(assert (= bs!1530448 d!1934493))

(assert (=> bs!1530448 m!7008044))

(declare-fun m!7008580 () Bool)

(assert (=> bs!1530448 m!7008580))

(assert (=> b!6171469 d!1934493))

(declare-fun bs!1530452 () Bool)

(declare-fun d!1934495 () Bool)

(assert (= bs!1530452 (and d!1934495 d!1934377)))

(declare-fun lambda!336875 () Int)

(assert (=> bs!1530452 (= lambda!336875 lambda!336849)))

(assert (=> d!1934495 (= (inv!83524 (h!70957 zl!343)) (forall!15231 (exprs!5995 (h!70957 zl!343)) lambda!336875))))

(declare-fun bs!1530453 () Bool)

(assert (= bs!1530453 d!1934495))

(declare-fun m!7008584 () Bool)

(assert (=> bs!1530453 m!7008584))

(assert (=> b!6171490 d!1934495))

(declare-fun d!1934503 () Bool)

(declare-fun c!1112273 () Bool)

(assert (=> d!1934503 (= c!1112273 (isEmpty!36488 s!2326))))

(declare-fun e!3759752 () Bool)

(assert (=> d!1934503 (= (matchZipper!2123 lt!2337291 s!2326) e!3759752)))

(declare-fun b!6172084 () Bool)

(assert (=> b!6172084 (= e!3759752 (nullableZipper!1892 lt!2337291))))

(declare-fun b!6172085 () Bool)

(assert (=> b!6172085 (= e!3759752 (matchZipper!2123 (derivationStepZipper!2084 lt!2337291 (head!12742 s!2326)) (tail!11827 s!2326)))))

(assert (= (and d!1934503 c!1112273) b!6172084))

(assert (= (and d!1934503 (not c!1112273)) b!6172085))

(assert (=> d!1934503 m!7008184))

(declare-fun m!7008586 () Bool)

(assert (=> b!6172084 m!7008586))

(assert (=> b!6172085 m!7008188))

(assert (=> b!6172085 m!7008188))

(declare-fun m!7008588 () Bool)

(assert (=> b!6172085 m!7008588))

(assert (=> b!6172085 m!7008192))

(assert (=> b!6172085 m!7008588))

(assert (=> b!6172085 m!7008192))

(declare-fun m!7008590 () Bool)

(assert (=> b!6172085 m!7008590))

(assert (=> b!6171468 d!1934503))

(assert (=> b!6171472 d!1934343))

(declare-fun d!1934505 () Bool)

(assert (=> d!1934505 (= (flatMap!1616 z!1189 lambda!336831) (dynLambda!25439 lambda!336831 (h!70957 zl!343)))))

(declare-fun lt!2337407 () Unit!157667)

(assert (=> d!1934505 (= lt!2337407 (choose!45873 z!1189 (h!70957 zl!343) lambda!336831))))

(assert (=> d!1934505 (= z!1189 (store ((as const (Array Context!10990 Bool)) false) (h!70957 zl!343) true))))

(assert (=> d!1934505 (= (lemmaFlatMapOnSingletonSet!1142 z!1189 (h!70957 zl!343) lambda!336831) lt!2337407)))

(declare-fun b_lambda!234917 () Bool)

(assert (=> (not b_lambda!234917) (not d!1934505)))

(declare-fun bs!1530454 () Bool)

(assert (= bs!1530454 d!1934505))

(assert (=> bs!1530454 m!7008032))

(declare-fun m!7008592 () Bool)

(assert (=> bs!1530454 m!7008592))

(declare-fun m!7008594 () Bool)

(assert (=> bs!1530454 m!7008594))

(declare-fun m!7008596 () Bool)

(assert (=> bs!1530454 m!7008596))

(assert (=> b!6171493 d!1934505))

(declare-fun d!1934507 () Bool)

(assert (=> d!1934507 (= (nullable!6104 (h!70956 (exprs!5995 (h!70957 zl!343)))) (nullableFct!2068 (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun bs!1530455 () Bool)

(assert (= bs!1530455 d!1934507))

(declare-fun m!7008598 () Bool)

(assert (=> bs!1530455 m!7008598))

(assert (=> b!6171493 d!1934507))

(declare-fun b!6172086 () Bool)

(declare-fun e!3759754 () (InoxSet Context!10990))

(assert (=> b!6172086 (= e!3759754 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172087 () Bool)

(declare-fun e!3759753 () Bool)

(assert (=> b!6172087 (= e!3759753 (nullable!6104 (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))))))

(declare-fun b!6172088 () Bool)

(declare-fun call!514848 () (InoxSet Context!10990))

(assert (=> b!6172088 (= e!3759754 call!514848)))

(declare-fun e!3759755 () (InoxSet Context!10990))

(declare-fun b!6172089 () Bool)

(assert (=> b!6172089 (= e!3759755 ((_ map or) call!514848 (derivationStepZipperUp!1285 (Context!10991 (t!378134 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))) (h!70958 s!2326))))))

(declare-fun b!6172090 () Bool)

(assert (=> b!6172090 (= e!3759755 e!3759754)))

(declare-fun c!1112274 () Bool)

(assert (=> b!6172090 (= c!1112274 ((_ is Cons!64508) (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343))))))))))

(declare-fun bm!514843 () Bool)

(assert (=> bm!514843 (= call!514848 (derivationStepZipperDown!1359 (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343))))))) (Context!10991 (t!378134 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))) (h!70958 s!2326)))))

(declare-fun d!1934509 () Bool)

(declare-fun c!1112275 () Bool)

(assert (=> d!1934509 (= c!1112275 e!3759753)))

(declare-fun res!2554747 () Bool)

(assert (=> d!1934509 (=> (not res!2554747) (not e!3759753))))

(assert (=> d!1934509 (= res!2554747 ((_ is Cons!64508) (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343))))))))))

(assert (=> d!1934509 (= (derivationStepZipperUp!1285 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343))))) (h!70958 s!2326)) e!3759755)))

(assert (= (and d!1934509 res!2554747) b!6172087))

(assert (= (and d!1934509 c!1112275) b!6172089))

(assert (= (and d!1934509 (not c!1112275)) b!6172090))

(assert (= (and b!6172090 c!1112274) b!6172088))

(assert (= (and b!6172090 (not c!1112274)) b!6172086))

(assert (= (or b!6172089 b!6172088) bm!514843))

(declare-fun m!7008600 () Bool)

(assert (=> b!6172087 m!7008600))

(declare-fun m!7008602 () Bool)

(assert (=> b!6172089 m!7008602))

(declare-fun m!7008604 () Bool)

(assert (=> bm!514843 m!7008604))

(assert (=> b!6171493 d!1934509))

(declare-fun d!1934511 () Bool)

(assert (=> d!1934511 (= (flatMap!1616 z!1189 lambda!336831) (choose!45874 z!1189 lambda!336831))))

(declare-fun bs!1530456 () Bool)

(assert (= bs!1530456 d!1934511))

(declare-fun m!7008606 () Bool)

(assert (=> bs!1530456 m!7008606))

(assert (=> b!6171493 d!1934511))

(declare-fun b!6172091 () Bool)

(declare-fun e!3759757 () (InoxSet Context!10990))

(assert (=> b!6172091 (= e!3759757 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172092 () Bool)

(declare-fun e!3759756 () Bool)

(assert (=> b!6172092 (= e!3759756 (nullable!6104 (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun b!6172093 () Bool)

(declare-fun call!514849 () (InoxSet Context!10990))

(assert (=> b!6172093 (= e!3759757 call!514849)))

(declare-fun b!6172094 () Bool)

(declare-fun e!3759758 () (InoxSet Context!10990))

(assert (=> b!6172094 (= e!3759758 ((_ map or) call!514849 (derivationStepZipperUp!1285 (Context!10991 (t!378134 (exprs!5995 (h!70957 zl!343)))) (h!70958 s!2326))))))

(declare-fun b!6172095 () Bool)

(assert (=> b!6172095 (= e!3759758 e!3759757)))

(declare-fun c!1112276 () Bool)

(assert (=> b!6172095 (= c!1112276 ((_ is Cons!64508) (exprs!5995 (h!70957 zl!343))))))

(declare-fun bm!514844 () Bool)

(assert (=> bm!514844 (= call!514849 (derivationStepZipperDown!1359 (h!70956 (exprs!5995 (h!70957 zl!343))) (Context!10991 (t!378134 (exprs!5995 (h!70957 zl!343)))) (h!70958 s!2326)))))

(declare-fun d!1934513 () Bool)

(declare-fun c!1112277 () Bool)

(assert (=> d!1934513 (= c!1112277 e!3759756)))

(declare-fun res!2554748 () Bool)

(assert (=> d!1934513 (=> (not res!2554748) (not e!3759756))))

(assert (=> d!1934513 (= res!2554748 ((_ is Cons!64508) (exprs!5995 (h!70957 zl!343))))))

(assert (=> d!1934513 (= (derivationStepZipperUp!1285 (h!70957 zl!343) (h!70958 s!2326)) e!3759758)))

(assert (= (and d!1934513 res!2554748) b!6172092))

(assert (= (and d!1934513 c!1112277) b!6172094))

(assert (= (and d!1934513 (not c!1112277)) b!6172095))

(assert (= (and b!6172095 c!1112276) b!6172093))

(assert (= (and b!6172095 (not c!1112276)) b!6172091))

(assert (= (or b!6172094 b!6172093) bm!514844))

(assert (=> b!6172092 m!7008036))

(declare-fun m!7008608 () Bool)

(assert (=> b!6172094 m!7008608))

(declare-fun m!7008610 () Bool)

(assert (=> bm!514844 m!7008610))

(assert (=> b!6171493 d!1934513))

(declare-fun b!6172118 () Bool)

(declare-fun e!3759775 () Bool)

(assert (=> b!6172118 (= e!3759775 (nullable!6104 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343))))))))

(declare-fun b!6172119 () Bool)

(declare-fun c!1112291 () Bool)

(assert (=> b!6172119 (= c!1112291 ((_ is Star!16111) (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun e!3759776 () (InoxSet Context!10990))

(declare-fun e!3759773 () (InoxSet Context!10990))

(assert (=> b!6172119 (= e!3759776 e!3759773)))

(declare-fun bm!514857 () Bool)

(declare-fun call!514865 () List!64632)

(declare-fun call!514864 () (InoxSet Context!10990))

(declare-fun c!1112292 () Bool)

(declare-fun c!1112288 () Bool)

(declare-fun c!1112290 () Bool)

(assert (=> bm!514857 (= call!514864 (derivationStepZipperDown!1359 (ite c!1112292 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112288 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112290 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343))))))) (ite (or c!1112292 c!1112288) lt!2337313 (Context!10991 call!514865)) (h!70958 s!2326)))))

(declare-fun b!6172120 () Bool)

(declare-fun call!514863 () (InoxSet Context!10990))

(assert (=> b!6172120 (= e!3759773 call!514863)))

(declare-fun b!6172121 () Bool)

(declare-fun e!3759774 () (InoxSet Context!10990))

(assert (=> b!6172121 (= e!3759774 e!3759776)))

(assert (=> b!6172121 (= c!1112290 ((_ is Concat!24956) (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun bm!514858 () Bool)

(declare-fun call!514862 () List!64632)

(assert (=> bm!514858 (= call!514865 call!514862)))

(declare-fun d!1934515 () Bool)

(declare-fun c!1112289 () Bool)

(assert (=> d!1934515 (= c!1112289 (and ((_ is ElementMatch!16111) (h!70956 (exprs!5995 (h!70957 zl!343)))) (= (c!1112104 (h!70956 (exprs!5995 (h!70957 zl!343)))) (h!70958 s!2326))))))

(declare-fun e!3759772 () (InoxSet Context!10990))

(assert (=> d!1934515 (= (derivationStepZipperDown!1359 (h!70956 (exprs!5995 (h!70957 zl!343))) lt!2337313 (h!70958 s!2326)) e!3759772)))

(declare-fun bm!514859 () Bool)

(declare-fun $colon$colon!1988 (List!64632 Regex!16111) List!64632)

(assert (=> bm!514859 (= call!514862 ($colon$colon!1988 (exprs!5995 lt!2337313) (ite (or c!1112288 c!1112290) (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (h!70956 (exprs!5995 (h!70957 zl!343))))))))

(declare-fun b!6172122 () Bool)

(assert (=> b!6172122 (= e!3759772 (store ((as const (Array Context!10990 Bool)) false) lt!2337313 true))))

(declare-fun b!6172123 () Bool)

(declare-fun e!3759771 () (InoxSet Context!10990))

(declare-fun call!514866 () (InoxSet Context!10990))

(assert (=> b!6172123 (= e!3759771 ((_ map or) call!514866 call!514864))))

(declare-fun bm!514860 () Bool)

(declare-fun call!514867 () (InoxSet Context!10990))

(assert (=> bm!514860 (= call!514863 call!514867)))

(declare-fun bm!514861 () Bool)

(assert (=> bm!514861 (= call!514867 call!514864)))

(declare-fun b!6172124 () Bool)

(assert (=> b!6172124 (= e!3759776 call!514863)))

(declare-fun bm!514862 () Bool)

(assert (=> bm!514862 (= call!514866 (derivationStepZipperDown!1359 (ite c!1112292 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343))))) (ite c!1112292 lt!2337313 (Context!10991 call!514862)) (h!70958 s!2326)))))

(declare-fun b!6172125 () Bool)

(assert (=> b!6172125 (= e!3759773 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172126 () Bool)

(assert (=> b!6172126 (= c!1112288 e!3759775)))

(declare-fun res!2554751 () Bool)

(assert (=> b!6172126 (=> (not res!2554751) (not e!3759775))))

(assert (=> b!6172126 (= res!2554751 ((_ is Concat!24956) (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(assert (=> b!6172126 (= e!3759771 e!3759774)))

(declare-fun b!6172127 () Bool)

(assert (=> b!6172127 (= e!3759772 e!3759771)))

(assert (=> b!6172127 (= c!1112292 ((_ is Union!16111) (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun b!6172128 () Bool)

(assert (=> b!6172128 (= e!3759774 ((_ map or) call!514866 call!514867))))

(assert (= (and d!1934515 c!1112289) b!6172122))

(assert (= (and d!1934515 (not c!1112289)) b!6172127))

(assert (= (and b!6172127 c!1112292) b!6172123))

(assert (= (and b!6172127 (not c!1112292)) b!6172126))

(assert (= (and b!6172126 res!2554751) b!6172118))

(assert (= (and b!6172126 c!1112288) b!6172128))

(assert (= (and b!6172126 (not c!1112288)) b!6172121))

(assert (= (and b!6172121 c!1112290) b!6172124))

(assert (= (and b!6172121 (not c!1112290)) b!6172119))

(assert (= (and b!6172119 c!1112291) b!6172120))

(assert (= (and b!6172119 (not c!1112291)) b!6172125))

(assert (= (or b!6172124 b!6172120) bm!514858))

(assert (= (or b!6172124 b!6172120) bm!514860))

(assert (= (or b!6172128 bm!514858) bm!514859))

(assert (= (or b!6172128 bm!514860) bm!514861))

(assert (= (or b!6172123 bm!514861) bm!514857))

(assert (= (or b!6172123 b!6172128) bm!514862))

(declare-fun m!7008612 () Bool)

(assert (=> b!6172122 m!7008612))

(declare-fun m!7008614 () Bool)

(assert (=> bm!514859 m!7008614))

(declare-fun m!7008616 () Bool)

(assert (=> bm!514862 m!7008616))

(declare-fun m!7008618 () Bool)

(assert (=> bm!514857 m!7008618))

(declare-fun m!7008620 () Bool)

(assert (=> b!6172118 m!7008620))

(assert (=> b!6171493 d!1934515))

(declare-fun b!6172129 () Bool)

(declare-fun e!3759778 () (InoxSet Context!10990))

(assert (=> b!6172129 (= e!3759778 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172130 () Bool)

(declare-fun e!3759777 () Bool)

(assert (=> b!6172130 (= e!3759777 (nullable!6104 (h!70956 (exprs!5995 lt!2337313))))))

(declare-fun b!6172131 () Bool)

(declare-fun call!514868 () (InoxSet Context!10990))

(assert (=> b!6172131 (= e!3759778 call!514868)))

(declare-fun b!6172132 () Bool)

(declare-fun e!3759779 () (InoxSet Context!10990))

(assert (=> b!6172132 (= e!3759779 ((_ map or) call!514868 (derivationStepZipperUp!1285 (Context!10991 (t!378134 (exprs!5995 lt!2337313))) (h!70958 s!2326))))))

(declare-fun b!6172133 () Bool)

(assert (=> b!6172133 (= e!3759779 e!3759778)))

(declare-fun c!1112293 () Bool)

(assert (=> b!6172133 (= c!1112293 ((_ is Cons!64508) (exprs!5995 lt!2337313)))))

(declare-fun bm!514863 () Bool)

(assert (=> bm!514863 (= call!514868 (derivationStepZipperDown!1359 (h!70956 (exprs!5995 lt!2337313)) (Context!10991 (t!378134 (exprs!5995 lt!2337313))) (h!70958 s!2326)))))

(declare-fun d!1934517 () Bool)

(declare-fun c!1112294 () Bool)

(assert (=> d!1934517 (= c!1112294 e!3759777)))

(declare-fun res!2554752 () Bool)

(assert (=> d!1934517 (=> (not res!2554752) (not e!3759777))))

(assert (=> d!1934517 (= res!2554752 ((_ is Cons!64508) (exprs!5995 lt!2337313)))))

(assert (=> d!1934517 (= (derivationStepZipperUp!1285 lt!2337313 (h!70958 s!2326)) e!3759779)))

(assert (= (and d!1934517 res!2554752) b!6172130))

(assert (= (and d!1934517 c!1112294) b!6172132))

(assert (= (and d!1934517 (not c!1112294)) b!6172133))

(assert (= (and b!6172133 c!1112293) b!6172131))

(assert (= (and b!6172133 (not c!1112293)) b!6172129))

(assert (= (or b!6172132 b!6172131) bm!514863))

(declare-fun m!7008622 () Bool)

(assert (=> b!6172130 m!7008622))

(declare-fun m!7008624 () Bool)

(assert (=> b!6172132 m!7008624))

(declare-fun m!7008626 () Bool)

(assert (=> bm!514863 m!7008626))

(assert (=> b!6171493 d!1934517))

(declare-fun d!1934519 () Bool)

(assert (=> d!1934519 (= (isEmpty!36484 (t!378135 zl!343)) ((_ is Nil!64509) (t!378135 zl!343)))))

(assert (=> b!6171471 d!1934519))

(declare-fun bm!514864 () Bool)

(declare-fun call!514871 () Bool)

(declare-fun call!514869 () Bool)

(assert (=> bm!514864 (= call!514871 call!514869)))

(declare-fun b!6172134 () Bool)

(declare-fun e!3759785 () Bool)

(declare-fun e!3759786 () Bool)

(assert (=> b!6172134 (= e!3759785 e!3759786)))

(declare-fun c!1112295 () Bool)

(assert (=> b!6172134 (= c!1112295 ((_ is Star!16111) lt!2337293))))

(declare-fun b!6172135 () Bool)

(declare-fun res!2554754 () Bool)

(declare-fun e!3759781 () Bool)

(assert (=> b!6172135 (=> res!2554754 e!3759781)))

(assert (=> b!6172135 (= res!2554754 (not ((_ is Concat!24956) lt!2337293)))))

(declare-fun e!3759780 () Bool)

(assert (=> b!6172135 (= e!3759780 e!3759781)))

(declare-fun b!6172136 () Bool)

(assert (=> b!6172136 (= e!3759786 e!3759780)))

(declare-fun c!1112296 () Bool)

(assert (=> b!6172136 (= c!1112296 ((_ is Union!16111) lt!2337293))))

(declare-fun b!6172137 () Bool)

(declare-fun e!3759782 () Bool)

(assert (=> b!6172137 (= e!3759782 call!514871)))

(declare-fun b!6172138 () Bool)

(declare-fun e!3759783 () Bool)

(assert (=> b!6172138 (= e!3759783 call!514869)))

(declare-fun b!6172139 () Bool)

(assert (=> b!6172139 (= e!3759781 e!3759782)))

(declare-fun res!2554756 () Bool)

(assert (=> b!6172139 (=> (not res!2554756) (not e!3759782))))

(declare-fun call!514870 () Bool)

(assert (=> b!6172139 (= res!2554756 call!514870)))

(declare-fun b!6172140 () Bool)

(declare-fun res!2554753 () Bool)

(declare-fun e!3759784 () Bool)

(assert (=> b!6172140 (=> (not res!2554753) (not e!3759784))))

(assert (=> b!6172140 (= res!2554753 call!514870)))

(assert (=> b!6172140 (= e!3759780 e!3759784)))

(declare-fun b!6172141 () Bool)

(assert (=> b!6172141 (= e!3759786 e!3759783)))

(declare-fun res!2554755 () Bool)

(assert (=> b!6172141 (= res!2554755 (not (nullable!6104 (reg!16440 lt!2337293))))))

(assert (=> b!6172141 (=> (not res!2554755) (not e!3759783))))

(declare-fun bm!514866 () Bool)

(assert (=> bm!514866 (= call!514869 (validRegex!7847 (ite c!1112295 (reg!16440 lt!2337293) (ite c!1112296 (regTwo!32735 lt!2337293) (regTwo!32734 lt!2337293)))))))

(declare-fun b!6172142 () Bool)

(assert (=> b!6172142 (= e!3759784 call!514871)))

(declare-fun bm!514865 () Bool)

(assert (=> bm!514865 (= call!514870 (validRegex!7847 (ite c!1112296 (regOne!32735 lt!2337293) (regOne!32734 lt!2337293))))))

(declare-fun d!1934521 () Bool)

(declare-fun res!2554757 () Bool)

(assert (=> d!1934521 (=> res!2554757 e!3759785)))

(assert (=> d!1934521 (= res!2554757 ((_ is ElementMatch!16111) lt!2337293))))

(assert (=> d!1934521 (= (validRegex!7847 lt!2337293) e!3759785)))

(assert (= (and d!1934521 (not res!2554757)) b!6172134))

(assert (= (and b!6172134 c!1112295) b!6172141))

(assert (= (and b!6172134 (not c!1112295)) b!6172136))

(assert (= (and b!6172141 res!2554755) b!6172138))

(assert (= (and b!6172136 c!1112296) b!6172140))

(assert (= (and b!6172136 (not c!1112296)) b!6172135))

(assert (= (and b!6172140 res!2554753) b!6172142))

(assert (= (and b!6172135 (not res!2554754)) b!6172139))

(assert (= (and b!6172139 res!2554756) b!6172137))

(assert (= (or b!6172142 b!6172137) bm!514864))

(assert (= (or b!6172140 b!6172139) bm!514865))

(assert (= (or b!6172138 bm!514864) bm!514866))

(declare-fun m!7008628 () Bool)

(assert (=> b!6172141 m!7008628))

(declare-fun m!7008630 () Bool)

(assert (=> bm!514866 m!7008630))

(declare-fun m!7008632 () Bool)

(assert (=> bm!514865 m!7008632))

(assert (=> b!6171492 d!1934521))

(declare-fun bs!1530457 () Bool)

(declare-fun d!1934523 () Bool)

(assert (= bs!1530457 (and d!1934523 d!1934377)))

(declare-fun lambda!336876 () Int)

(assert (=> bs!1530457 (= lambda!336876 lambda!336849)))

(declare-fun bs!1530458 () Bool)

(assert (= bs!1530458 (and d!1934523 d!1934495)))

(assert (=> bs!1530458 (= lambda!336876 lambda!336875)))

(declare-fun b!6172143 () Bool)

(declare-fun e!3759787 () Regex!16111)

(declare-fun e!3759792 () Regex!16111)

(assert (=> b!6172143 (= e!3759787 e!3759792)))

(declare-fun c!1112300 () Bool)

(assert (=> b!6172143 (= c!1112300 ((_ is Cons!64508) lt!2337305))))

(declare-fun e!3759791 () Bool)

(assert (=> d!1934523 e!3759791))

(declare-fun res!2554759 () Bool)

(assert (=> d!1934523 (=> (not res!2554759) (not e!3759791))))

(declare-fun lt!2337408 () Regex!16111)

(assert (=> d!1934523 (= res!2554759 (validRegex!7847 lt!2337408))))

(assert (=> d!1934523 (= lt!2337408 e!3759787)))

(declare-fun c!1112297 () Bool)

(declare-fun e!3759790 () Bool)

(assert (=> d!1934523 (= c!1112297 e!3759790)))

(declare-fun res!2554758 () Bool)

(assert (=> d!1934523 (=> (not res!2554758) (not e!3759790))))

(assert (=> d!1934523 (= res!2554758 ((_ is Cons!64508) lt!2337305))))

(assert (=> d!1934523 (forall!15231 lt!2337305 lambda!336876)))

(assert (=> d!1934523 (= (generalisedConcat!1708 lt!2337305) lt!2337408)))

(declare-fun b!6172144 () Bool)

(assert (=> b!6172144 (= e!3759790 (isEmpty!36485 (t!378134 lt!2337305)))))

(declare-fun b!6172145 () Bool)

(declare-fun e!3759789 () Bool)

(declare-fun e!3759788 () Bool)

(assert (=> b!6172145 (= e!3759789 e!3759788)))

(declare-fun c!1112299 () Bool)

(assert (=> b!6172145 (= c!1112299 (isEmpty!36485 (tail!11828 lt!2337305)))))

(declare-fun b!6172146 () Bool)

(assert (=> b!6172146 (= e!3759791 e!3759789)))

(declare-fun c!1112298 () Bool)

(assert (=> b!6172146 (= c!1112298 (isEmpty!36485 lt!2337305))))

(declare-fun b!6172147 () Bool)

(assert (=> b!6172147 (= e!3759792 EmptyExpr!16111)))

(declare-fun b!6172148 () Bool)

(assert (=> b!6172148 (= e!3759787 (h!70956 lt!2337305))))

(declare-fun b!6172149 () Bool)

(assert (=> b!6172149 (= e!3759792 (Concat!24956 (h!70956 lt!2337305) (generalisedConcat!1708 (t!378134 lt!2337305))))))

(declare-fun b!6172150 () Bool)

(assert (=> b!6172150 (= e!3759788 (isConcat!1050 lt!2337408))))

(declare-fun b!6172151 () Bool)

(assert (=> b!6172151 (= e!3759788 (= lt!2337408 (head!12743 lt!2337305)))))

(declare-fun b!6172152 () Bool)

(assert (=> b!6172152 (= e!3759789 (isEmptyExpr!1527 lt!2337408))))

(assert (= (and d!1934523 res!2554758) b!6172144))

(assert (= (and d!1934523 c!1112297) b!6172148))

(assert (= (and d!1934523 (not c!1112297)) b!6172143))

(assert (= (and b!6172143 c!1112300) b!6172149))

(assert (= (and b!6172143 (not c!1112300)) b!6172147))

(assert (= (and d!1934523 res!2554759) b!6172146))

(assert (= (and b!6172146 c!1112298) b!6172152))

(assert (= (and b!6172146 (not c!1112298)) b!6172145))

(assert (= (and b!6172145 c!1112299) b!6172151))

(assert (= (and b!6172145 (not c!1112299)) b!6172150))

(declare-fun m!7008634 () Bool)

(assert (=> b!6172146 m!7008634))

(declare-fun m!7008636 () Bool)

(assert (=> b!6172152 m!7008636))

(declare-fun m!7008638 () Bool)

(assert (=> b!6172149 m!7008638))

(declare-fun m!7008640 () Bool)

(assert (=> d!1934523 m!7008640))

(declare-fun m!7008642 () Bool)

(assert (=> d!1934523 m!7008642))

(declare-fun m!7008644 () Bool)

(assert (=> b!6172150 m!7008644))

(declare-fun m!7008646 () Bool)

(assert (=> b!6172145 m!7008646))

(assert (=> b!6172145 m!7008646))

(declare-fun m!7008648 () Bool)

(assert (=> b!6172145 m!7008648))

(declare-fun m!7008650 () Bool)

(assert (=> b!6172151 m!7008650))

(declare-fun m!7008652 () Bool)

(assert (=> b!6172144 m!7008652))

(assert (=> b!6171492 d!1934523))

(declare-fun bs!1530459 () Bool)

(declare-fun b!6172193 () Bool)

(assert (= bs!1530459 (and b!6172193 b!6171469)))

(declare-fun lambda!336881 () Int)

(assert (=> bs!1530459 (not (= lambda!336881 lambda!336830))))

(declare-fun bs!1530460 () Bool)

(assert (= bs!1530460 (and b!6172193 d!1934475)))

(assert (=> bs!1530460 (not (= lambda!336881 lambda!336871))))

(assert (=> bs!1530460 (not (= lambda!336881 lambda!336872))))

(assert (=> bs!1530459 (not (= lambda!336881 lambda!336829))))

(declare-fun bs!1530461 () Bool)

(assert (= bs!1530461 (and b!6172193 d!1934457)))

(assert (=> bs!1530461 (not (= lambda!336881 lambda!336859))))

(assert (=> b!6172193 true))

(assert (=> b!6172193 true))

(declare-fun bs!1530462 () Bool)

(declare-fun b!6172186 () Bool)

(assert (= bs!1530462 (and b!6172186 b!6172193)))

(declare-fun lambda!336882 () Int)

(assert (=> bs!1530462 (not (= lambda!336882 lambda!336881))))

(declare-fun bs!1530463 () Bool)

(assert (= bs!1530463 (and b!6172186 b!6171469)))

(assert (=> bs!1530463 (= lambda!336882 lambda!336830)))

(declare-fun bs!1530464 () Bool)

(assert (= bs!1530464 (and b!6172186 d!1934475)))

(assert (=> bs!1530464 (not (= lambda!336882 lambda!336871))))

(assert (=> bs!1530464 (= lambda!336882 lambda!336872)))

(assert (=> bs!1530463 (not (= lambda!336882 lambda!336829))))

(declare-fun bs!1530465 () Bool)

(assert (= bs!1530465 (and b!6172186 d!1934457)))

(assert (=> bs!1530465 (not (= lambda!336882 lambda!336859))))

(assert (=> b!6172186 true))

(assert (=> b!6172186 true))

(declare-fun b!6172185 () Bool)

(declare-fun e!3759815 () Bool)

(declare-fun e!3759813 () Bool)

(assert (=> b!6172185 (= e!3759815 e!3759813)))

(declare-fun res!2554776 () Bool)

(assert (=> b!6172185 (= res!2554776 (matchRSpec!3212 (regOne!32735 r!7292) s!2326))))

(assert (=> b!6172185 (=> res!2554776 e!3759813)))

(declare-fun e!3759817 () Bool)

(declare-fun call!514876 () Bool)

(assert (=> b!6172186 (= e!3759817 call!514876)))

(declare-fun d!1934525 () Bool)

(declare-fun c!1112310 () Bool)

(assert (=> d!1934525 (= c!1112310 ((_ is EmptyExpr!16111) r!7292))))

(declare-fun e!3759811 () Bool)

(assert (=> d!1934525 (= (matchRSpec!3212 r!7292 s!2326) e!3759811)))

(declare-fun b!6172187 () Bool)

(declare-fun call!514877 () Bool)

(assert (=> b!6172187 (= e!3759811 call!514877)))

(declare-fun b!6172188 () Bool)

(declare-fun c!1112312 () Bool)

(assert (=> b!6172188 (= c!1112312 ((_ is ElementMatch!16111) r!7292))))

(declare-fun e!3759812 () Bool)

(declare-fun e!3759816 () Bool)

(assert (=> b!6172188 (= e!3759812 e!3759816)))

(declare-fun b!6172189 () Bool)

(assert (=> b!6172189 (= e!3759811 e!3759812)))

(declare-fun res!2554778 () Bool)

(assert (=> b!6172189 (= res!2554778 (not ((_ is EmptyLang!16111) r!7292)))))

(assert (=> b!6172189 (=> (not res!2554778) (not e!3759812))))

(declare-fun b!6172190 () Bool)

(declare-fun c!1112309 () Bool)

(assert (=> b!6172190 (= c!1112309 ((_ is Union!16111) r!7292))))

(assert (=> b!6172190 (= e!3759816 e!3759815)))

(declare-fun b!6172191 () Bool)

(assert (=> b!6172191 (= e!3759813 (matchRSpec!3212 (regTwo!32735 r!7292) s!2326))))

(declare-fun bm!514871 () Bool)

(assert (=> bm!514871 (= call!514877 (isEmpty!36488 s!2326))))

(declare-fun b!6172192 () Bool)

(assert (=> b!6172192 (= e!3759815 e!3759817)))

(declare-fun c!1112311 () Bool)

(assert (=> b!6172192 (= c!1112311 ((_ is Star!16111) r!7292))))

(declare-fun e!3759814 () Bool)

(assert (=> b!6172193 (= e!3759814 call!514876)))

(declare-fun b!6172194 () Bool)

(declare-fun res!2554777 () Bool)

(assert (=> b!6172194 (=> res!2554777 e!3759814)))

(assert (=> b!6172194 (= res!2554777 call!514877)))

(assert (=> b!6172194 (= e!3759817 e!3759814)))

(declare-fun bm!514872 () Bool)

(assert (=> bm!514872 (= call!514876 (Exists!3181 (ite c!1112311 lambda!336881 lambda!336882)))))

(declare-fun b!6172195 () Bool)

(assert (=> b!6172195 (= e!3759816 (= s!2326 (Cons!64510 (c!1112104 r!7292) Nil!64510)))))

(assert (= (and d!1934525 c!1112310) b!6172187))

(assert (= (and d!1934525 (not c!1112310)) b!6172189))

(assert (= (and b!6172189 res!2554778) b!6172188))

(assert (= (and b!6172188 c!1112312) b!6172195))

(assert (= (and b!6172188 (not c!1112312)) b!6172190))

(assert (= (and b!6172190 c!1112309) b!6172185))

(assert (= (and b!6172190 (not c!1112309)) b!6172192))

(assert (= (and b!6172185 (not res!2554776)) b!6172191))

(assert (= (and b!6172192 c!1112311) b!6172194))

(assert (= (and b!6172192 (not c!1112311)) b!6172186))

(assert (= (and b!6172194 (not res!2554777)) b!6172193))

(assert (= (or b!6172193 b!6172186) bm!514872))

(assert (= (or b!6172187 b!6172194) bm!514871))

(declare-fun m!7008654 () Bool)

(assert (=> b!6172185 m!7008654))

(declare-fun m!7008656 () Bool)

(assert (=> b!6172191 m!7008656))

(assert (=> bm!514871 m!7008184))

(declare-fun m!7008658 () Bool)

(assert (=> bm!514872 m!7008658))

(assert (=> b!6171475 d!1934525))

(declare-fun b!6172224 () Bool)

(declare-fun e!3759835 () Bool)

(declare-fun lt!2337411 () Bool)

(assert (=> b!6172224 (= e!3759835 (not lt!2337411))))

(declare-fun b!6172225 () Bool)

(declare-fun e!3759837 () Bool)

(declare-fun derivativeStep!4830 (Regex!16111 C!32492) Regex!16111)

(assert (=> b!6172225 (= e!3759837 (matchR!8294 (derivativeStep!4830 r!7292 (head!12742 s!2326)) (tail!11827 s!2326)))))

(declare-fun b!6172226 () Bool)

(declare-fun res!2554798 () Bool)

(declare-fun e!3759834 () Bool)

(assert (=> b!6172226 (=> res!2554798 e!3759834)))

(declare-fun e!3759836 () Bool)

(assert (=> b!6172226 (= res!2554798 e!3759836)))

(declare-fun res!2554800 () Bool)

(assert (=> b!6172226 (=> (not res!2554800) (not e!3759836))))

(assert (=> b!6172226 (= res!2554800 lt!2337411)))

(declare-fun b!6172227 () Bool)

(declare-fun e!3759833 () Bool)

(declare-fun call!514880 () Bool)

(assert (=> b!6172227 (= e!3759833 (= lt!2337411 call!514880))))

(declare-fun bm!514875 () Bool)

(assert (=> bm!514875 (= call!514880 (isEmpty!36488 s!2326))))

(declare-fun b!6172228 () Bool)

(assert (=> b!6172228 (= e!3759833 e!3759835)))

(declare-fun c!1112320 () Bool)

(assert (=> b!6172228 (= c!1112320 ((_ is EmptyLang!16111) r!7292))))

(declare-fun b!6172229 () Bool)

(declare-fun res!2554802 () Bool)

(assert (=> b!6172229 (=> res!2554802 e!3759834)))

(assert (=> b!6172229 (= res!2554802 (not ((_ is ElementMatch!16111) r!7292)))))

(assert (=> b!6172229 (= e!3759835 e!3759834)))

(declare-fun b!6172230 () Bool)

(declare-fun e!3759832 () Bool)

(assert (=> b!6172230 (= e!3759834 e!3759832)))

(declare-fun res!2554795 () Bool)

(assert (=> b!6172230 (=> (not res!2554795) (not e!3759832))))

(assert (=> b!6172230 (= res!2554795 (not lt!2337411))))

(declare-fun d!1934527 () Bool)

(assert (=> d!1934527 e!3759833))

(declare-fun c!1112321 () Bool)

(assert (=> d!1934527 (= c!1112321 ((_ is EmptyExpr!16111) r!7292))))

(assert (=> d!1934527 (= lt!2337411 e!3759837)))

(declare-fun c!1112319 () Bool)

(assert (=> d!1934527 (= c!1112319 (isEmpty!36488 s!2326))))

(assert (=> d!1934527 (validRegex!7847 r!7292)))

(assert (=> d!1934527 (= (matchR!8294 r!7292 s!2326) lt!2337411)))

(declare-fun b!6172231 () Bool)

(declare-fun res!2554796 () Bool)

(assert (=> b!6172231 (=> (not res!2554796) (not e!3759836))))

(assert (=> b!6172231 (= res!2554796 (not call!514880))))

(declare-fun b!6172232 () Bool)

(declare-fun res!2554801 () Bool)

(assert (=> b!6172232 (=> (not res!2554801) (not e!3759836))))

(assert (=> b!6172232 (= res!2554801 (isEmpty!36488 (tail!11827 s!2326)))))

(declare-fun b!6172233 () Bool)

(assert (=> b!6172233 (= e!3759836 (= (head!12742 s!2326) (c!1112104 r!7292)))))

(declare-fun b!6172234 () Bool)

(declare-fun e!3759838 () Bool)

(assert (=> b!6172234 (= e!3759832 e!3759838)))

(declare-fun res!2554797 () Bool)

(assert (=> b!6172234 (=> res!2554797 e!3759838)))

(assert (=> b!6172234 (= res!2554797 call!514880)))

(declare-fun b!6172235 () Bool)

(assert (=> b!6172235 (= e!3759838 (not (= (head!12742 s!2326) (c!1112104 r!7292))))))

(declare-fun b!6172236 () Bool)

(assert (=> b!6172236 (= e!3759837 (nullable!6104 r!7292))))

(declare-fun b!6172237 () Bool)

(declare-fun res!2554799 () Bool)

(assert (=> b!6172237 (=> res!2554799 e!3759838)))

(assert (=> b!6172237 (= res!2554799 (not (isEmpty!36488 (tail!11827 s!2326))))))

(assert (= (and d!1934527 c!1112319) b!6172236))

(assert (= (and d!1934527 (not c!1112319)) b!6172225))

(assert (= (and d!1934527 c!1112321) b!6172227))

(assert (= (and d!1934527 (not c!1112321)) b!6172228))

(assert (= (and b!6172228 c!1112320) b!6172224))

(assert (= (and b!6172228 (not c!1112320)) b!6172229))

(assert (= (and b!6172229 (not res!2554802)) b!6172226))

(assert (= (and b!6172226 res!2554800) b!6172231))

(assert (= (and b!6172231 res!2554796) b!6172232))

(assert (= (and b!6172232 res!2554801) b!6172233))

(assert (= (and b!6172226 (not res!2554798)) b!6172230))

(assert (= (and b!6172230 res!2554795) b!6172234))

(assert (= (and b!6172234 (not res!2554797)) b!6172237))

(assert (= (and b!6172237 (not res!2554799)) b!6172235))

(assert (= (or b!6172227 b!6172231 b!6172234) bm!514875))

(assert (=> b!6172233 m!7008188))

(assert (=> d!1934527 m!7008184))

(assert (=> d!1934527 m!7008056))

(declare-fun m!7008660 () Bool)

(assert (=> b!6172236 m!7008660))

(assert (=> b!6172237 m!7008192))

(assert (=> b!6172237 m!7008192))

(declare-fun m!7008662 () Bool)

(assert (=> b!6172237 m!7008662))

(assert (=> bm!514875 m!7008184))

(assert (=> b!6172232 m!7008192))

(assert (=> b!6172232 m!7008192))

(assert (=> b!6172232 m!7008662))

(assert (=> b!6172225 m!7008188))

(assert (=> b!6172225 m!7008188))

(declare-fun m!7008664 () Bool)

(assert (=> b!6172225 m!7008664))

(assert (=> b!6172225 m!7008192))

(assert (=> b!6172225 m!7008664))

(assert (=> b!6172225 m!7008192))

(declare-fun m!7008666 () Bool)

(assert (=> b!6172225 m!7008666))

(assert (=> b!6172235 m!7008188))

(assert (=> b!6171475 d!1934527))

(declare-fun d!1934529 () Bool)

(assert (=> d!1934529 (= (matchR!8294 r!7292 s!2326) (matchRSpec!3212 r!7292 s!2326))))

(declare-fun lt!2337414 () Unit!157667)

(declare-fun choose!45878 (Regex!16111 List!64634) Unit!157667)

(assert (=> d!1934529 (= lt!2337414 (choose!45878 r!7292 s!2326))))

(assert (=> d!1934529 (validRegex!7847 r!7292)))

(assert (=> d!1934529 (= (mainMatchTheorem!3212 r!7292 s!2326) lt!2337414)))

(declare-fun bs!1530466 () Bool)

(assert (= bs!1530466 d!1934529))

(assert (=> bs!1530466 m!7008060))

(assert (=> bs!1530466 m!7008058))

(declare-fun m!7008668 () Bool)

(assert (=> bs!1530466 m!7008668))

(assert (=> bs!1530466 m!7008056))

(assert (=> b!6171475 d!1934529))

(declare-fun bs!1530467 () Bool)

(declare-fun d!1934531 () Bool)

(assert (= bs!1530467 (and d!1934531 d!1934377)))

(declare-fun lambda!336885 () Int)

(assert (=> bs!1530467 (= lambda!336885 lambda!336849)))

(declare-fun bs!1530468 () Bool)

(assert (= bs!1530468 (and d!1934531 d!1934495)))

(assert (=> bs!1530468 (= lambda!336885 lambda!336875)))

(declare-fun bs!1530469 () Bool)

(assert (= bs!1530469 (and d!1934531 d!1934523)))

(assert (=> bs!1530469 (= lambda!336885 lambda!336876)))

(declare-fun b!6172258 () Bool)

(declare-fun e!3759851 () Bool)

(assert (=> b!6172258 (= e!3759851 (isEmpty!36485 (t!378134 (unfocusZipperList!1532 zl!343))))))

(declare-fun b!6172259 () Bool)

(declare-fun e!3759853 () Regex!16111)

(declare-fun e!3759852 () Regex!16111)

(assert (=> b!6172259 (= e!3759853 e!3759852)))

(declare-fun c!1112330 () Bool)

(assert (=> b!6172259 (= c!1112330 ((_ is Cons!64508) (unfocusZipperList!1532 zl!343)))))

(declare-fun b!6172260 () Bool)

(declare-fun e!3759855 () Bool)

(declare-fun lt!2337417 () Regex!16111)

(declare-fun isEmptyLang!1537 (Regex!16111) Bool)

(assert (=> b!6172260 (= e!3759855 (isEmptyLang!1537 lt!2337417))))

(declare-fun b!6172261 () Bool)

(declare-fun e!3759854 () Bool)

(assert (=> b!6172261 (= e!3759854 e!3759855)))

(declare-fun c!1112332 () Bool)

(assert (=> b!6172261 (= c!1112332 (isEmpty!36485 (unfocusZipperList!1532 zl!343)))))

(declare-fun b!6172262 () Bool)

(assert (=> b!6172262 (= e!3759852 EmptyLang!16111)))

(declare-fun b!6172263 () Bool)

(declare-fun e!3759856 () Bool)

(assert (=> b!6172263 (= e!3759855 e!3759856)))

(declare-fun c!1112331 () Bool)

(assert (=> b!6172263 (= c!1112331 (isEmpty!36485 (tail!11828 (unfocusZipperList!1532 zl!343))))))

(assert (=> d!1934531 e!3759854))

(declare-fun res!2554808 () Bool)

(assert (=> d!1934531 (=> (not res!2554808) (not e!3759854))))

(assert (=> d!1934531 (= res!2554808 (validRegex!7847 lt!2337417))))

(assert (=> d!1934531 (= lt!2337417 e!3759853)))

(declare-fun c!1112333 () Bool)

(assert (=> d!1934531 (= c!1112333 e!3759851)))

(declare-fun res!2554807 () Bool)

(assert (=> d!1934531 (=> (not res!2554807) (not e!3759851))))

(assert (=> d!1934531 (= res!2554807 ((_ is Cons!64508) (unfocusZipperList!1532 zl!343)))))

(assert (=> d!1934531 (forall!15231 (unfocusZipperList!1532 zl!343) lambda!336885)))

(assert (=> d!1934531 (= (generalisedUnion!1955 (unfocusZipperList!1532 zl!343)) lt!2337417)))

(declare-fun b!6172264 () Bool)

(assert (=> b!6172264 (= e!3759856 (= lt!2337417 (head!12743 (unfocusZipperList!1532 zl!343))))))

(declare-fun b!6172265 () Bool)

(declare-fun isUnion!968 (Regex!16111) Bool)

(assert (=> b!6172265 (= e!3759856 (isUnion!968 lt!2337417))))

(declare-fun b!6172266 () Bool)

(assert (=> b!6172266 (= e!3759853 (h!70956 (unfocusZipperList!1532 zl!343)))))

(declare-fun b!6172267 () Bool)

(assert (=> b!6172267 (= e!3759852 (Union!16111 (h!70956 (unfocusZipperList!1532 zl!343)) (generalisedUnion!1955 (t!378134 (unfocusZipperList!1532 zl!343)))))))

(assert (= (and d!1934531 res!2554807) b!6172258))

(assert (= (and d!1934531 c!1112333) b!6172266))

(assert (= (and d!1934531 (not c!1112333)) b!6172259))

(assert (= (and b!6172259 c!1112330) b!6172267))

(assert (= (and b!6172259 (not c!1112330)) b!6172262))

(assert (= (and d!1934531 res!2554808) b!6172261))

(assert (= (and b!6172261 c!1112332) b!6172260))

(assert (= (and b!6172261 (not c!1112332)) b!6172263))

(assert (= (and b!6172263 c!1112331) b!6172264))

(assert (= (and b!6172263 (not c!1112331)) b!6172265))

(declare-fun m!7008670 () Bool)

(assert (=> b!6172260 m!7008670))

(assert (=> b!6172263 m!7007952))

(declare-fun m!7008672 () Bool)

(assert (=> b!6172263 m!7008672))

(assert (=> b!6172263 m!7008672))

(declare-fun m!7008674 () Bool)

(assert (=> b!6172263 m!7008674))

(declare-fun m!7008676 () Bool)

(assert (=> b!6172267 m!7008676))

(assert (=> b!6172261 m!7007952))

(declare-fun m!7008678 () Bool)

(assert (=> b!6172261 m!7008678))

(declare-fun m!7008680 () Bool)

(assert (=> b!6172265 m!7008680))

(declare-fun m!7008682 () Bool)

(assert (=> b!6172258 m!7008682))

(assert (=> b!6172264 m!7007952))

(declare-fun m!7008684 () Bool)

(assert (=> b!6172264 m!7008684))

(declare-fun m!7008686 () Bool)

(assert (=> d!1934531 m!7008686))

(assert (=> d!1934531 m!7007952))

(declare-fun m!7008688 () Bool)

(assert (=> d!1934531 m!7008688))

(assert (=> b!6171496 d!1934531))

(declare-fun bs!1530470 () Bool)

(declare-fun d!1934533 () Bool)

(assert (= bs!1530470 (and d!1934533 d!1934377)))

(declare-fun lambda!336888 () Int)

(assert (=> bs!1530470 (= lambda!336888 lambda!336849)))

(declare-fun bs!1530471 () Bool)

(assert (= bs!1530471 (and d!1934533 d!1934495)))

(assert (=> bs!1530471 (= lambda!336888 lambda!336875)))

(declare-fun bs!1530472 () Bool)

(assert (= bs!1530472 (and d!1934533 d!1934523)))

(assert (=> bs!1530472 (= lambda!336888 lambda!336876)))

(declare-fun bs!1530473 () Bool)

(assert (= bs!1530473 (and d!1934533 d!1934531)))

(assert (=> bs!1530473 (= lambda!336888 lambda!336885)))

(declare-fun lt!2337420 () List!64632)

(assert (=> d!1934533 (forall!15231 lt!2337420 lambda!336888)))

(declare-fun e!3759859 () List!64632)

(assert (=> d!1934533 (= lt!2337420 e!3759859)))

(declare-fun c!1112336 () Bool)

(assert (=> d!1934533 (= c!1112336 ((_ is Cons!64509) zl!343))))

(assert (=> d!1934533 (= (unfocusZipperList!1532 zl!343) lt!2337420)))

(declare-fun b!6172272 () Bool)

(assert (=> b!6172272 (= e!3759859 (Cons!64508 (generalisedConcat!1708 (exprs!5995 (h!70957 zl!343))) (unfocusZipperList!1532 (t!378135 zl!343))))))

(declare-fun b!6172273 () Bool)

(assert (=> b!6172273 (= e!3759859 Nil!64508)))

(assert (= (and d!1934533 c!1112336) b!6172272))

(assert (= (and d!1934533 (not c!1112336)) b!6172273))

(declare-fun m!7008690 () Bool)

(assert (=> d!1934533 m!7008690))

(assert (=> b!6172272 m!7007978))

(declare-fun m!7008692 () Bool)

(assert (=> b!6172272 m!7008692))

(assert (=> b!6171496 d!1934533))

(assert (=> b!6171495 d!1934327))

(declare-fun d!1934535 () Bool)

(declare-fun c!1112337 () Bool)

(assert (=> d!1934535 (= c!1112337 (isEmpty!36488 (t!378136 s!2326)))))

(declare-fun e!3759860 () Bool)

(assert (=> d!1934535 (= (matchZipper!2123 lt!2337284 (t!378136 s!2326)) e!3759860)))

(declare-fun b!6172274 () Bool)

(assert (=> b!6172274 (= e!3759860 (nullableZipper!1892 lt!2337284))))

(declare-fun b!6172275 () Bool)

(assert (=> b!6172275 (= e!3759860 (matchZipper!2123 (derivationStepZipper!2084 lt!2337284 (head!12742 (t!378136 s!2326))) (tail!11827 (t!378136 s!2326))))))

(assert (= (and d!1934535 c!1112337) b!6172274))

(assert (= (and d!1934535 (not c!1112337)) b!6172275))

(assert (=> d!1934535 m!7008072))

(declare-fun m!7008694 () Bool)

(assert (=> b!6172274 m!7008694))

(assert (=> b!6172275 m!7008076))

(assert (=> b!6172275 m!7008076))

(declare-fun m!7008696 () Bool)

(assert (=> b!6172275 m!7008696))

(assert (=> b!6172275 m!7008080))

(assert (=> b!6172275 m!7008696))

(assert (=> b!6172275 m!7008080))

(declare-fun m!7008698 () Bool)

(assert (=> b!6172275 m!7008698))

(assert (=> b!6171495 d!1934535))

(declare-fun d!1934537 () Bool)

(declare-fun c!1112338 () Bool)

(assert (=> d!1934537 (= c!1112338 (isEmpty!36488 (t!378136 s!2326)))))

(declare-fun e!3759861 () Bool)

(assert (=> d!1934537 (= (matchZipper!2123 lt!2337296 (t!378136 s!2326)) e!3759861)))

(declare-fun b!6172276 () Bool)

(assert (=> b!6172276 (= e!3759861 (nullableZipper!1892 lt!2337296))))

(declare-fun b!6172277 () Bool)

(assert (=> b!6172277 (= e!3759861 (matchZipper!2123 (derivationStepZipper!2084 lt!2337296 (head!12742 (t!378136 s!2326))) (tail!11827 (t!378136 s!2326))))))

(assert (= (and d!1934537 c!1112338) b!6172276))

(assert (= (and d!1934537 (not c!1112338)) b!6172277))

(assert (=> d!1934537 m!7008072))

(declare-fun m!7008700 () Bool)

(assert (=> b!6172276 m!7008700))

(assert (=> b!6172277 m!7008076))

(assert (=> b!6172277 m!7008076))

(declare-fun m!7008702 () Bool)

(assert (=> b!6172277 m!7008702))

(assert (=> b!6172277 m!7008080))

(assert (=> b!6172277 m!7008702))

(assert (=> b!6172277 m!7008080))

(declare-fun m!7008704 () Bool)

(assert (=> b!6172277 m!7008704))

(assert (=> b!6171495 d!1934537))

(declare-fun d!1934539 () Bool)

(declare-fun e!3759862 () Bool)

(assert (=> d!1934539 (= (matchZipper!2123 ((_ map or) lt!2337296 lt!2337289) (t!378136 s!2326)) e!3759862)))

(declare-fun res!2554809 () Bool)

(assert (=> d!1934539 (=> res!2554809 e!3759862)))

(assert (=> d!1934539 (= res!2554809 (matchZipper!2123 lt!2337296 (t!378136 s!2326)))))

(declare-fun lt!2337421 () Unit!157667)

(assert (=> d!1934539 (= lt!2337421 (choose!45870 lt!2337296 lt!2337289 (t!378136 s!2326)))))

(assert (=> d!1934539 (= (lemmaZipperConcatMatchesSameAsBothZippers!942 lt!2337296 lt!2337289 (t!378136 s!2326)) lt!2337421)))

(declare-fun b!6172278 () Bool)

(assert (=> b!6172278 (= e!3759862 (matchZipper!2123 lt!2337289 (t!378136 s!2326)))))

(assert (= (and d!1934539 (not res!2554809)) b!6172278))

(declare-fun m!7008706 () Bool)

(assert (=> d!1934539 m!7008706))

(assert (=> d!1934539 m!7007960))

(declare-fun m!7008708 () Bool)

(assert (=> d!1934539 m!7008708))

(assert (=> b!6172278 m!7007972))

(assert (=> b!6171495 d!1934539))

(declare-fun d!1934541 () Bool)

(declare-fun lt!2337422 () Regex!16111)

(assert (=> d!1934541 (validRegex!7847 lt!2337422)))

(assert (=> d!1934541 (= lt!2337422 (generalisedUnion!1955 (unfocusZipperList!1532 zl!343)))))

(assert (=> d!1934541 (= (unfocusZipper!1853 zl!343) lt!2337422)))

(declare-fun bs!1530474 () Bool)

(assert (= bs!1530474 d!1934541))

(declare-fun m!7008710 () Bool)

(assert (=> bs!1530474 m!7008710))

(assert (=> bs!1530474 m!7007952))

(assert (=> bs!1530474 m!7007952))

(assert (=> bs!1530474 m!7007954))

(assert (=> b!6171473 d!1934541))

(declare-fun bs!1530475 () Bool)

(declare-fun d!1934543 () Bool)

(assert (= bs!1530475 (and d!1934543 d!1934377)))

(declare-fun lambda!336889 () Int)

(assert (=> bs!1530475 (= lambda!336889 lambda!336849)))

(declare-fun bs!1530476 () Bool)

(assert (= bs!1530476 (and d!1934543 d!1934531)))

(assert (=> bs!1530476 (= lambda!336889 lambda!336885)))

(declare-fun bs!1530477 () Bool)

(assert (= bs!1530477 (and d!1934543 d!1934495)))

(assert (=> bs!1530477 (= lambda!336889 lambda!336875)))

(declare-fun bs!1530478 () Bool)

(assert (= bs!1530478 (and d!1934543 d!1934523)))

(assert (=> bs!1530478 (= lambda!336889 lambda!336876)))

(declare-fun bs!1530479 () Bool)

(assert (= bs!1530479 (and d!1934543 d!1934533)))

(assert (=> bs!1530479 (= lambda!336889 lambda!336888)))

(assert (=> d!1934543 (= (inv!83524 setElem!41834) (forall!15231 (exprs!5995 setElem!41834) lambda!336889))))

(declare-fun bs!1530480 () Bool)

(assert (= bs!1530480 d!1934543))

(declare-fun m!7008712 () Bool)

(assert (=> bs!1530480 m!7008712))

(assert (=> setNonEmpty!41834 d!1934543))

(declare-fun d!1934545 () Bool)

(declare-fun lt!2337423 () Int)

(assert (=> d!1934545 (>= lt!2337423 0)))

(declare-fun e!3759863 () Int)

(assert (=> d!1934545 (= lt!2337423 e!3759863)))

(declare-fun c!1112339 () Bool)

(assert (=> d!1934545 (= c!1112339 ((_ is Cons!64509) zl!343))))

(assert (=> d!1934545 (= (zipperDepthTotal!294 zl!343) lt!2337423)))

(declare-fun b!6172279 () Bool)

(assert (=> b!6172279 (= e!3759863 (+ (contextDepthTotal!270 (h!70957 zl!343)) (zipperDepthTotal!294 (t!378135 zl!343))))))

(declare-fun b!6172280 () Bool)

(assert (=> b!6172280 (= e!3759863 0)))

(assert (= (and d!1934545 c!1112339) b!6172279))

(assert (= (and d!1934545 (not c!1112339)) b!6172280))

(declare-fun m!7008714 () Bool)

(assert (=> b!6172279 m!7008714))

(declare-fun m!7008716 () Bool)

(assert (=> b!6172279 m!7008716))

(assert (=> b!6171476 d!1934545))

(declare-fun d!1934547 () Bool)

(declare-fun lt!2337424 () Int)

(assert (=> d!1934547 (>= lt!2337424 0)))

(declare-fun e!3759864 () Int)

(assert (=> d!1934547 (= lt!2337424 e!3759864)))

(declare-fun c!1112340 () Bool)

(assert (=> d!1934547 (= c!1112340 ((_ is Cons!64509) lt!2337299))))

(assert (=> d!1934547 (= (zipperDepthTotal!294 lt!2337299) lt!2337424)))

(declare-fun b!6172281 () Bool)

(assert (=> b!6172281 (= e!3759864 (+ (contextDepthTotal!270 (h!70957 lt!2337299)) (zipperDepthTotal!294 (t!378135 lt!2337299))))))

(declare-fun b!6172282 () Bool)

(assert (=> b!6172282 (= e!3759864 0)))

(assert (= (and d!1934547 c!1112340) b!6172281))

(assert (= (and d!1934547 (not c!1112340)) b!6172282))

(declare-fun m!7008718 () Bool)

(assert (=> b!6172281 m!7008718))

(declare-fun m!7008720 () Bool)

(assert (=> b!6172281 m!7008720))

(assert (=> b!6171476 d!1934547))

(declare-fun b!6172283 () Bool)

(declare-fun e!3759869 () Bool)

(assert (=> b!6172283 (= e!3759869 (nullable!6104 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292)))))))

(declare-fun b!6172284 () Bool)

(declare-fun c!1112344 () Bool)

(assert (=> b!6172284 (= c!1112344 ((_ is Star!16111) (regTwo!32735 (regOne!32734 r!7292))))))

(declare-fun e!3759870 () (InoxSet Context!10990))

(declare-fun e!3759867 () (InoxSet Context!10990))

(assert (=> b!6172284 (= e!3759870 e!3759867)))

(declare-fun bm!514876 () Bool)

(declare-fun call!514883 () (InoxSet Context!10990))

(declare-fun call!514884 () List!64632)

(declare-fun c!1112345 () Bool)

(declare-fun c!1112341 () Bool)

(declare-fun c!1112343 () Bool)

(assert (=> bm!514876 (= call!514883 (derivationStepZipperDown!1359 (ite c!1112345 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112341 (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112343 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))) (reg!16440 (regTwo!32735 (regOne!32734 r!7292)))))) (ite (or c!1112345 c!1112341) lt!2337313 (Context!10991 call!514884)) (h!70958 s!2326)))))

(declare-fun b!6172285 () Bool)

(declare-fun call!514882 () (InoxSet Context!10990))

(assert (=> b!6172285 (= e!3759867 call!514882)))

(declare-fun b!6172286 () Bool)

(declare-fun e!3759868 () (InoxSet Context!10990))

(assert (=> b!6172286 (= e!3759868 e!3759870)))

(assert (=> b!6172286 (= c!1112343 ((_ is Concat!24956) (regTwo!32735 (regOne!32734 r!7292))))))

(declare-fun bm!514877 () Bool)

(declare-fun call!514881 () List!64632)

(assert (=> bm!514877 (= call!514884 call!514881)))

(declare-fun d!1934549 () Bool)

(declare-fun c!1112342 () Bool)

(assert (=> d!1934549 (= c!1112342 (and ((_ is ElementMatch!16111) (regTwo!32735 (regOne!32734 r!7292))) (= (c!1112104 (regTwo!32735 (regOne!32734 r!7292))) (h!70958 s!2326))))))

(declare-fun e!3759866 () (InoxSet Context!10990))

(assert (=> d!1934549 (= (derivationStepZipperDown!1359 (regTwo!32735 (regOne!32734 r!7292)) lt!2337313 (h!70958 s!2326)) e!3759866)))

(declare-fun bm!514878 () Bool)

(assert (=> bm!514878 (= call!514881 ($colon$colon!1988 (exprs!5995 lt!2337313) (ite (or c!1112341 c!1112343) (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (regTwo!32735 (regOne!32734 r!7292)))))))

(declare-fun b!6172287 () Bool)

(assert (=> b!6172287 (= e!3759866 (store ((as const (Array Context!10990 Bool)) false) lt!2337313 true))))

(declare-fun b!6172288 () Bool)

(declare-fun e!3759865 () (InoxSet Context!10990))

(declare-fun call!514885 () (InoxSet Context!10990))

(assert (=> b!6172288 (= e!3759865 ((_ map or) call!514885 call!514883))))

(declare-fun bm!514879 () Bool)

(declare-fun call!514886 () (InoxSet Context!10990))

(assert (=> bm!514879 (= call!514882 call!514886)))

(declare-fun bm!514880 () Bool)

(assert (=> bm!514880 (= call!514886 call!514883)))

(declare-fun b!6172289 () Bool)

(assert (=> b!6172289 (= e!3759870 call!514882)))

(declare-fun bm!514881 () Bool)

(assert (=> bm!514881 (= call!514885 (derivationStepZipperDown!1359 (ite c!1112345 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292)))) (ite c!1112345 lt!2337313 (Context!10991 call!514881)) (h!70958 s!2326)))))

(declare-fun b!6172290 () Bool)

(assert (=> b!6172290 (= e!3759867 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172291 () Bool)

(assert (=> b!6172291 (= c!1112341 e!3759869)))

(declare-fun res!2554810 () Bool)

(assert (=> b!6172291 (=> (not res!2554810) (not e!3759869))))

(assert (=> b!6172291 (= res!2554810 ((_ is Concat!24956) (regTwo!32735 (regOne!32734 r!7292))))))

(assert (=> b!6172291 (= e!3759865 e!3759868)))

(declare-fun b!6172292 () Bool)

(assert (=> b!6172292 (= e!3759866 e!3759865)))

(assert (=> b!6172292 (= c!1112345 ((_ is Union!16111) (regTwo!32735 (regOne!32734 r!7292))))))

(declare-fun b!6172293 () Bool)

(assert (=> b!6172293 (= e!3759868 ((_ map or) call!514885 call!514886))))

(assert (= (and d!1934549 c!1112342) b!6172287))

(assert (= (and d!1934549 (not c!1112342)) b!6172292))

(assert (= (and b!6172292 c!1112345) b!6172288))

(assert (= (and b!6172292 (not c!1112345)) b!6172291))

(assert (= (and b!6172291 res!2554810) b!6172283))

(assert (= (and b!6172291 c!1112341) b!6172293))

(assert (= (and b!6172291 (not c!1112341)) b!6172286))

(assert (= (and b!6172286 c!1112343) b!6172289))

(assert (= (and b!6172286 (not c!1112343)) b!6172284))

(assert (= (and b!6172284 c!1112344) b!6172285))

(assert (= (and b!6172284 (not c!1112344)) b!6172290))

(assert (= (or b!6172289 b!6172285) bm!514877))

(assert (= (or b!6172289 b!6172285) bm!514879))

(assert (= (or b!6172293 bm!514877) bm!514878))

(assert (= (or b!6172293 bm!514879) bm!514880))

(assert (= (or b!6172288 bm!514880) bm!514876))

(assert (= (or b!6172288 b!6172293) bm!514881))

(assert (=> b!6172287 m!7008612))

(declare-fun m!7008722 () Bool)

(assert (=> bm!514878 m!7008722))

(declare-fun m!7008724 () Bool)

(assert (=> bm!514881 m!7008724))

(declare-fun m!7008726 () Bool)

(assert (=> bm!514876 m!7008726))

(declare-fun m!7008728 () Bool)

(assert (=> b!6172283 m!7008728))

(assert (=> b!6171497 d!1934549))

(declare-fun b!6172294 () Bool)

(declare-fun e!3759875 () Bool)

(assert (=> b!6172294 (= e!3759875 (nullable!6104 (regOne!32734 (regOne!32735 (regOne!32734 r!7292)))))))

(declare-fun b!6172295 () Bool)

(declare-fun c!1112349 () Bool)

(assert (=> b!6172295 (= c!1112349 ((_ is Star!16111) (regOne!32735 (regOne!32734 r!7292))))))

(declare-fun e!3759876 () (InoxSet Context!10990))

(declare-fun e!3759873 () (InoxSet Context!10990))

(assert (=> b!6172295 (= e!3759876 e!3759873)))

(declare-fun call!514890 () List!64632)

(declare-fun call!514889 () (InoxSet Context!10990))

(declare-fun c!1112348 () Bool)

(declare-fun bm!514882 () Bool)

(declare-fun c!1112346 () Bool)

(declare-fun c!1112350 () Bool)

(assert (=> bm!514882 (= call!514889 (derivationStepZipperDown!1359 (ite c!1112350 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112346 (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112348 (regOne!32734 (regOne!32735 (regOne!32734 r!7292))) (reg!16440 (regOne!32735 (regOne!32734 r!7292)))))) (ite (or c!1112350 c!1112346) lt!2337313 (Context!10991 call!514890)) (h!70958 s!2326)))))

(declare-fun b!6172296 () Bool)

(declare-fun call!514888 () (InoxSet Context!10990))

(assert (=> b!6172296 (= e!3759873 call!514888)))

(declare-fun b!6172297 () Bool)

(declare-fun e!3759874 () (InoxSet Context!10990))

(assert (=> b!6172297 (= e!3759874 e!3759876)))

(assert (=> b!6172297 (= c!1112348 ((_ is Concat!24956) (regOne!32735 (regOne!32734 r!7292))))))

(declare-fun bm!514883 () Bool)

(declare-fun call!514887 () List!64632)

(assert (=> bm!514883 (= call!514890 call!514887)))

(declare-fun d!1934551 () Bool)

(declare-fun c!1112347 () Bool)

(assert (=> d!1934551 (= c!1112347 (and ((_ is ElementMatch!16111) (regOne!32735 (regOne!32734 r!7292))) (= (c!1112104 (regOne!32735 (regOne!32734 r!7292))) (h!70958 s!2326))))))

(declare-fun e!3759872 () (InoxSet Context!10990))

(assert (=> d!1934551 (= (derivationStepZipperDown!1359 (regOne!32735 (regOne!32734 r!7292)) lt!2337313 (h!70958 s!2326)) e!3759872)))

(declare-fun bm!514884 () Bool)

(assert (=> bm!514884 (= call!514887 ($colon$colon!1988 (exprs!5995 lt!2337313) (ite (or c!1112346 c!1112348) (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (regOne!32735 (regOne!32734 r!7292)))))))

(declare-fun b!6172298 () Bool)

(assert (=> b!6172298 (= e!3759872 (store ((as const (Array Context!10990 Bool)) false) lt!2337313 true))))

(declare-fun b!6172299 () Bool)

(declare-fun e!3759871 () (InoxSet Context!10990))

(declare-fun call!514891 () (InoxSet Context!10990))

(assert (=> b!6172299 (= e!3759871 ((_ map or) call!514891 call!514889))))

(declare-fun bm!514885 () Bool)

(declare-fun call!514892 () (InoxSet Context!10990))

(assert (=> bm!514885 (= call!514888 call!514892)))

(declare-fun bm!514886 () Bool)

(assert (=> bm!514886 (= call!514892 call!514889)))

(declare-fun b!6172300 () Bool)

(assert (=> b!6172300 (= e!3759876 call!514888)))

(declare-fun bm!514887 () Bool)

(assert (=> bm!514887 (= call!514891 (derivationStepZipperDown!1359 (ite c!1112350 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292)))) (ite c!1112350 lt!2337313 (Context!10991 call!514887)) (h!70958 s!2326)))))

(declare-fun b!6172301 () Bool)

(assert (=> b!6172301 (= e!3759873 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172302 () Bool)

(assert (=> b!6172302 (= c!1112346 e!3759875)))

(declare-fun res!2554811 () Bool)

(assert (=> b!6172302 (=> (not res!2554811) (not e!3759875))))

(assert (=> b!6172302 (= res!2554811 ((_ is Concat!24956) (regOne!32735 (regOne!32734 r!7292))))))

(assert (=> b!6172302 (= e!3759871 e!3759874)))

(declare-fun b!6172303 () Bool)

(assert (=> b!6172303 (= e!3759872 e!3759871)))

(assert (=> b!6172303 (= c!1112350 ((_ is Union!16111) (regOne!32735 (regOne!32734 r!7292))))))

(declare-fun b!6172304 () Bool)

(assert (=> b!6172304 (= e!3759874 ((_ map or) call!514891 call!514892))))

(assert (= (and d!1934551 c!1112347) b!6172298))

(assert (= (and d!1934551 (not c!1112347)) b!6172303))

(assert (= (and b!6172303 c!1112350) b!6172299))

(assert (= (and b!6172303 (not c!1112350)) b!6172302))

(assert (= (and b!6172302 res!2554811) b!6172294))

(assert (= (and b!6172302 c!1112346) b!6172304))

(assert (= (and b!6172302 (not c!1112346)) b!6172297))

(assert (= (and b!6172297 c!1112348) b!6172300))

(assert (= (and b!6172297 (not c!1112348)) b!6172295))

(assert (= (and b!6172295 c!1112349) b!6172296))

(assert (= (and b!6172295 (not c!1112349)) b!6172301))

(assert (= (or b!6172300 b!6172296) bm!514883))

(assert (= (or b!6172300 b!6172296) bm!514885))

(assert (= (or b!6172304 bm!514883) bm!514884))

(assert (= (or b!6172304 bm!514885) bm!514886))

(assert (= (or b!6172299 bm!514886) bm!514882))

(assert (= (or b!6172299 b!6172304) bm!514887))

(assert (=> b!6172298 m!7008612))

(declare-fun m!7008730 () Bool)

(assert (=> bm!514884 m!7008730))

(declare-fun m!7008732 () Bool)

(assert (=> bm!514887 m!7008732))

(declare-fun m!7008734 () Bool)

(assert (=> bm!514882 m!7008734))

(declare-fun m!7008736 () Bool)

(assert (=> b!6172294 m!7008736))

(assert (=> b!6171497 d!1934551))

(declare-fun e!3759879 () Bool)

(assert (=> b!6171491 (= tp!1723242 e!3759879)))

(declare-fun b!6172317 () Bool)

(declare-fun tp!1723322 () Bool)

(assert (=> b!6172317 (= e!3759879 tp!1723322)))

(declare-fun b!6172316 () Bool)

(declare-fun tp!1723319 () Bool)

(declare-fun tp!1723323 () Bool)

(assert (=> b!6172316 (= e!3759879 (and tp!1723319 tp!1723323))))

(declare-fun b!6172318 () Bool)

(declare-fun tp!1723320 () Bool)

(declare-fun tp!1723321 () Bool)

(assert (=> b!6172318 (= e!3759879 (and tp!1723320 tp!1723321))))

(declare-fun b!6172315 () Bool)

(assert (=> b!6172315 (= e!3759879 tp_is_empty!41475)))

(assert (= (and b!6171491 ((_ is ElementMatch!16111) (reg!16440 r!7292))) b!6172315))

(assert (= (and b!6171491 ((_ is Concat!24956) (reg!16440 r!7292))) b!6172316))

(assert (= (and b!6171491 ((_ is Star!16111) (reg!16440 r!7292))) b!6172317))

(assert (= (and b!6171491 ((_ is Union!16111) (reg!16440 r!7292))) b!6172318))

(declare-fun b!6172326 () Bool)

(declare-fun e!3759885 () Bool)

(declare-fun tp!1723328 () Bool)

(assert (=> b!6172326 (= e!3759885 tp!1723328)))

(declare-fun e!3759884 () Bool)

(declare-fun b!6172325 () Bool)

(declare-fun tp!1723329 () Bool)

(assert (=> b!6172325 (= e!3759884 (and (inv!83524 (h!70957 (t!378135 zl!343))) e!3759885 tp!1723329))))

(assert (=> b!6171490 (= tp!1723249 e!3759884)))

(assert (= b!6172325 b!6172326))

(assert (= (and b!6171490 ((_ is Cons!64509) (t!378135 zl!343))) b!6172325))

(declare-fun m!7008738 () Bool)

(assert (=> b!6172325 m!7008738))

(declare-fun b!6172331 () Bool)

(declare-fun e!3759888 () Bool)

(declare-fun tp!1723334 () Bool)

(declare-fun tp!1723335 () Bool)

(assert (=> b!6172331 (= e!3759888 (and tp!1723334 tp!1723335))))

(assert (=> b!6171474 (= tp!1723244 e!3759888)))

(assert (= (and b!6171474 ((_ is Cons!64508) (exprs!5995 (h!70957 zl!343)))) b!6172331))

(declare-fun b!6172336 () Bool)

(declare-fun e!3759891 () Bool)

(declare-fun tp!1723338 () Bool)

(assert (=> b!6172336 (= e!3759891 (and tp_is_empty!41475 tp!1723338))))

(assert (=> b!6171494 (= tp!1723248 e!3759891)))

(assert (= (and b!6171494 ((_ is Cons!64510) (t!378136 s!2326))) b!6172336))

(declare-fun e!3759892 () Bool)

(assert (=> b!6171463 (= tp!1723250 e!3759892)))

(declare-fun b!6172339 () Bool)

(declare-fun tp!1723342 () Bool)

(assert (=> b!6172339 (= e!3759892 tp!1723342)))

(declare-fun b!6172338 () Bool)

(declare-fun tp!1723339 () Bool)

(declare-fun tp!1723343 () Bool)

(assert (=> b!6172338 (= e!3759892 (and tp!1723339 tp!1723343))))

(declare-fun b!6172340 () Bool)

(declare-fun tp!1723340 () Bool)

(declare-fun tp!1723341 () Bool)

(assert (=> b!6172340 (= e!3759892 (and tp!1723340 tp!1723341))))

(declare-fun b!6172337 () Bool)

(assert (=> b!6172337 (= e!3759892 tp_is_empty!41475)))

(assert (= (and b!6171463 ((_ is ElementMatch!16111) (regOne!32735 r!7292))) b!6172337))

(assert (= (and b!6171463 ((_ is Concat!24956) (regOne!32735 r!7292))) b!6172338))

(assert (= (and b!6171463 ((_ is Star!16111) (regOne!32735 r!7292))) b!6172339))

(assert (= (and b!6171463 ((_ is Union!16111) (regOne!32735 r!7292))) b!6172340))

(declare-fun e!3759893 () Bool)

(assert (=> b!6171463 (= tp!1723245 e!3759893)))

(declare-fun b!6172343 () Bool)

(declare-fun tp!1723347 () Bool)

(assert (=> b!6172343 (= e!3759893 tp!1723347)))

(declare-fun b!6172342 () Bool)

(declare-fun tp!1723344 () Bool)

(declare-fun tp!1723348 () Bool)

(assert (=> b!6172342 (= e!3759893 (and tp!1723344 tp!1723348))))

(declare-fun b!6172344 () Bool)

(declare-fun tp!1723345 () Bool)

(declare-fun tp!1723346 () Bool)

(assert (=> b!6172344 (= e!3759893 (and tp!1723345 tp!1723346))))

(declare-fun b!6172341 () Bool)

(assert (=> b!6172341 (= e!3759893 tp_is_empty!41475)))

(assert (= (and b!6171463 ((_ is ElementMatch!16111) (regTwo!32735 r!7292))) b!6172341))

(assert (= (and b!6171463 ((_ is Concat!24956) (regTwo!32735 r!7292))) b!6172342))

(assert (= (and b!6171463 ((_ is Star!16111) (regTwo!32735 r!7292))) b!6172343))

(assert (= (and b!6171463 ((_ is Union!16111) (regTwo!32735 r!7292))) b!6172344))

(declare-fun b!6172345 () Bool)

(declare-fun e!3759894 () Bool)

(declare-fun tp!1723349 () Bool)

(declare-fun tp!1723350 () Bool)

(assert (=> b!6172345 (= e!3759894 (and tp!1723349 tp!1723350))))

(assert (=> b!6171478 (= tp!1723247 e!3759894)))

(assert (= (and b!6171478 ((_ is Cons!64508) (exprs!5995 setElem!41834))) b!6172345))

(declare-fun condSetEmpty!41840 () Bool)

(assert (=> setNonEmpty!41834 (= condSetEmpty!41840 (= setRest!41834 ((as const (Array Context!10990 Bool)) false)))))

(declare-fun setRes!41840 () Bool)

(assert (=> setNonEmpty!41834 (= tp!1723246 setRes!41840)))

(declare-fun setIsEmpty!41840 () Bool)

(assert (=> setIsEmpty!41840 setRes!41840))

(declare-fun e!3759897 () Bool)

(declare-fun setNonEmpty!41840 () Bool)

(declare-fun setElem!41840 () Context!10990)

(declare-fun tp!1723355 () Bool)

(assert (=> setNonEmpty!41840 (= setRes!41840 (and tp!1723355 (inv!83524 setElem!41840) e!3759897))))

(declare-fun setRest!41840 () (InoxSet Context!10990))

(assert (=> setNonEmpty!41840 (= setRest!41834 ((_ map or) (store ((as const (Array Context!10990 Bool)) false) setElem!41840 true) setRest!41840))))

(declare-fun b!6172350 () Bool)

(declare-fun tp!1723356 () Bool)

(assert (=> b!6172350 (= e!3759897 tp!1723356)))

(assert (= (and setNonEmpty!41834 condSetEmpty!41840) setIsEmpty!41840))

(assert (= (and setNonEmpty!41834 (not condSetEmpty!41840)) setNonEmpty!41840))

(assert (= setNonEmpty!41840 b!6172350))

(declare-fun m!7008740 () Bool)

(assert (=> setNonEmpty!41840 m!7008740))

(declare-fun e!3759898 () Bool)

(assert (=> b!6171486 (= tp!1723243 e!3759898)))

(declare-fun b!6172353 () Bool)

(declare-fun tp!1723360 () Bool)

(assert (=> b!6172353 (= e!3759898 tp!1723360)))

(declare-fun b!6172352 () Bool)

(declare-fun tp!1723357 () Bool)

(declare-fun tp!1723361 () Bool)

(assert (=> b!6172352 (= e!3759898 (and tp!1723357 tp!1723361))))

(declare-fun b!6172354 () Bool)

(declare-fun tp!1723358 () Bool)

(declare-fun tp!1723359 () Bool)

(assert (=> b!6172354 (= e!3759898 (and tp!1723358 tp!1723359))))

(declare-fun b!6172351 () Bool)

(assert (=> b!6172351 (= e!3759898 tp_is_empty!41475)))

(assert (= (and b!6171486 ((_ is ElementMatch!16111) (regOne!32734 r!7292))) b!6172351))

(assert (= (and b!6171486 ((_ is Concat!24956) (regOne!32734 r!7292))) b!6172352))

(assert (= (and b!6171486 ((_ is Star!16111) (regOne!32734 r!7292))) b!6172353))

(assert (= (and b!6171486 ((_ is Union!16111) (regOne!32734 r!7292))) b!6172354))

(declare-fun e!3759899 () Bool)

(assert (=> b!6171486 (= tp!1723241 e!3759899)))

(declare-fun b!6172357 () Bool)

(declare-fun tp!1723365 () Bool)

(assert (=> b!6172357 (= e!3759899 tp!1723365)))

(declare-fun b!6172356 () Bool)

(declare-fun tp!1723362 () Bool)

(declare-fun tp!1723366 () Bool)

(assert (=> b!6172356 (= e!3759899 (and tp!1723362 tp!1723366))))

(declare-fun b!6172358 () Bool)

(declare-fun tp!1723363 () Bool)

(declare-fun tp!1723364 () Bool)

(assert (=> b!6172358 (= e!3759899 (and tp!1723363 tp!1723364))))

(declare-fun b!6172355 () Bool)

(assert (=> b!6172355 (= e!3759899 tp_is_empty!41475)))

(assert (= (and b!6171486 ((_ is ElementMatch!16111) (regTwo!32734 r!7292))) b!6172355))

(assert (= (and b!6171486 ((_ is Concat!24956) (regTwo!32734 r!7292))) b!6172356))

(assert (= (and b!6171486 ((_ is Star!16111) (regTwo!32734 r!7292))) b!6172357))

(assert (= (and b!6171486 ((_ is Union!16111) (regTwo!32734 r!7292))) b!6172358))

(declare-fun b_lambda!234919 () Bool)

(assert (= b_lambda!234917 (or b!6171493 b_lambda!234919)))

(declare-fun bs!1530481 () Bool)

(declare-fun d!1934553 () Bool)

(assert (= bs!1530481 (and d!1934553 b!6171493)))

(assert (=> bs!1530481 (= (dynLambda!25439 lambda!336831 (h!70957 zl!343)) (derivationStepZipperUp!1285 (h!70957 zl!343) (h!70958 s!2326)))))

(assert (=> bs!1530481 m!7008030))

(assert (=> d!1934505 d!1934553))

(declare-fun b_lambda!234921 () Bool)

(assert (= b_lambda!234903 (or b!6171493 b_lambda!234921)))

(declare-fun bs!1530482 () Bool)

(declare-fun d!1934555 () Bool)

(assert (= bs!1530482 (and d!1934555 b!6171493)))

(assert (=> bs!1530482 (= (dynLambda!25439 lambda!336831 lt!2337306) (derivationStepZipperUp!1285 lt!2337306 (h!70958 s!2326)))))

(assert (=> bs!1530482 m!7008002))

(assert (=> d!1934369 d!1934555))

(declare-fun b_lambda!234923 () Bool)

(assert (= b_lambda!234901 (or b!6171493 b_lambda!234923)))

(declare-fun bs!1530483 () Bool)

(declare-fun d!1934557 () Bool)

(assert (= bs!1530483 (and d!1934557 b!6171493)))

(assert (=> bs!1530483 (= (dynLambda!25439 lambda!336831 lt!2337309) (derivationStepZipperUp!1285 lt!2337309 (h!70958 s!2326)))))

(assert (=> bs!1530483 m!7008006))

(assert (=> d!1934351 d!1934557))

(check-sat (not b!6171529) (not b!6172092) (not b!6172118) (not b!6172345) (not d!1934315) (not b!6171658) (not d!1934493) (not b!6172294) (not b!6171593) (not b!6171581) (not b!6172278) (not b!6172350) (not d!1934351) (not b!6171753) (not d!1934505) (not d!1934317) (not bm!514865) (not d!1934541) (not d!1934349) (not b!6171530) (not b!6172185) (not d!1934347) (not d!1934369) (not b!6171592) (not bs!1530483) (not bm!514887) (not b!6171528) (not b_lambda!234923) (not d!1934373) (not b!6171665) (not b!6171603) (not bm!514843) (not d!1934475) (not b!6172343) (not bm!514779) (not b!6171742) (not d!1934503) (not d!1934529) (not d!1934543) (not b!6172258) (not b!6171509) (not d!1934327) (not b!6171740) (not d!1934365) (not d!1934385) (not b!6172260) (not d!1934321) (not b!6172236) (not b!6171746) (not d!1934401) (not bm!514844) (not bm!514876) (not bm!514780) (not b!6172275) (not b!6172233) (not d!1934363) (not b!6172232) (not b!6172146) (not b!6172132) (not b!6172338) (not b!6171600) (not b!6171520) (not b_lambda!234919) (not b!6172277) (not b!6172316) (not b!6172089) (not d!1934391) (not d!1934523) (not b!6172344) (not bm!514857) (not d!1934377) (not b!6171594) (not b!6172267) (not b!6171747) (not b!6171601) (not b!6172331) (not bm!514881) (not b!6172352) (not b!6171872) (not bm!514882) (not b!6172237) (not b!6172263) (not d!1934355) (not b!6172150) (not bm!514871) (not b!6172141) (not b!6171514) (not d!1934453) (not b!6172191) (not b!6172087) (not b!6171741) (not b!6171745) (not d!1934457) (not bm!514866) (not d!1934329) (not b!6172325) (not bm!514878) (not b!6172272) (not b!6171664) (not b!6172274) (not bm!514784) (not d!1934371) (not b!6172130) (not b!6172342) (not bs!1530481) (not b!6171623) (not d!1934345) (not d!1934335) (not b!6171602) (not b!6172357) (not bs!1530482) (not b!6172152) (not b!6172326) (not d!1934455) (not b!6171531) (not b!6171761) (not b!6171875) (not b!6171760) (not b!6172151) (not b!6172356) (not bm!514863) (not b!6171656) (not b_lambda!234921) (not bm!514875) (not b!6171748) (not b!6171869) (not bm!514783) (not b!6172225) (not b!6172281) (not b!6171527) (not b!6172235) (not d!1934531) (not b!6172336) (not d!1934507) (not d!1934535) (not b!6172353) (not b!6172084) (not b!6171870) (not b!6171625) (not bm!514872) (not b!6172276) tp_is_empty!41475 (not d!1934533) (not b!6172265) (not b!6172358) (not b!6171868) (not bm!514862) (not b!6172149) (not d!1934539) (not bm!514859) (not d!1934527) (not b!6172085) (not bm!514884) (not b!6172283) (not b!6172144) (not d!1934537) (not d!1934495) (not b!6171867) (not b!6171595) (not b!6172317) (not b!6172279) (not b!6172318) (not d!1934343) (not b!6172339) (not b!6172264) (not b!6172354) (not b!6172094) (not b!6172145) (not d!1934511) (not setNonEmpty!41840) (not b!6172261) (not b!6171515) (not d!1934375) (not b!6172340))
(check-sat)
(get-model)

(declare-fun d!1934559 () Bool)

(assert (=> d!1934559 (= (isEmpty!36488 s!2326) ((_ is Nil!64510) s!2326))))

(assert (=> bm!514875 d!1934559))

(declare-fun bs!1530484 () Bool)

(declare-fun d!1934561 () Bool)

(assert (= bs!1530484 (and d!1934561 d!1934377)))

(declare-fun lambda!336890 () Int)

(assert (=> bs!1530484 (= lambda!336890 lambda!336849)))

(declare-fun bs!1530485 () Bool)

(assert (= bs!1530485 (and d!1934561 d!1934531)))

(assert (=> bs!1530485 (= lambda!336890 lambda!336885)))

(declare-fun bs!1530486 () Bool)

(assert (= bs!1530486 (and d!1934561 d!1934543)))

(assert (=> bs!1530486 (= lambda!336890 lambda!336889)))

(declare-fun bs!1530487 () Bool)

(assert (= bs!1530487 (and d!1934561 d!1934495)))

(assert (=> bs!1530487 (= lambda!336890 lambda!336875)))

(declare-fun bs!1530488 () Bool)

(assert (= bs!1530488 (and d!1934561 d!1934523)))

(assert (=> bs!1530488 (= lambda!336890 lambda!336876)))

(declare-fun bs!1530489 () Bool)

(assert (= bs!1530489 (and d!1934561 d!1934533)))

(assert (=> bs!1530489 (= lambda!336890 lambda!336888)))

(declare-fun b!6172359 () Bool)

(declare-fun e!3759900 () Regex!16111)

(declare-fun e!3759905 () Regex!16111)

(assert (=> b!6172359 (= e!3759900 e!3759905)))

(declare-fun c!1112354 () Bool)

(assert (=> b!6172359 (= c!1112354 ((_ is Cons!64508) (t!378134 lt!2337305)))))

(declare-fun e!3759904 () Bool)

(assert (=> d!1934561 e!3759904))

(declare-fun res!2554813 () Bool)

(assert (=> d!1934561 (=> (not res!2554813) (not e!3759904))))

(declare-fun lt!2337425 () Regex!16111)

(assert (=> d!1934561 (= res!2554813 (validRegex!7847 lt!2337425))))

(assert (=> d!1934561 (= lt!2337425 e!3759900)))

(declare-fun c!1112351 () Bool)

(declare-fun e!3759903 () Bool)

(assert (=> d!1934561 (= c!1112351 e!3759903)))

(declare-fun res!2554812 () Bool)

(assert (=> d!1934561 (=> (not res!2554812) (not e!3759903))))

(assert (=> d!1934561 (= res!2554812 ((_ is Cons!64508) (t!378134 lt!2337305)))))

(assert (=> d!1934561 (forall!15231 (t!378134 lt!2337305) lambda!336890)))

(assert (=> d!1934561 (= (generalisedConcat!1708 (t!378134 lt!2337305)) lt!2337425)))

(declare-fun b!6172360 () Bool)

(assert (=> b!6172360 (= e!3759903 (isEmpty!36485 (t!378134 (t!378134 lt!2337305))))))

(declare-fun b!6172361 () Bool)

(declare-fun e!3759902 () Bool)

(declare-fun e!3759901 () Bool)

(assert (=> b!6172361 (= e!3759902 e!3759901)))

(declare-fun c!1112353 () Bool)

(assert (=> b!6172361 (= c!1112353 (isEmpty!36485 (tail!11828 (t!378134 lt!2337305))))))

(declare-fun b!6172362 () Bool)

(assert (=> b!6172362 (= e!3759904 e!3759902)))

(declare-fun c!1112352 () Bool)

(assert (=> b!6172362 (= c!1112352 (isEmpty!36485 (t!378134 lt!2337305)))))

(declare-fun b!6172363 () Bool)

(assert (=> b!6172363 (= e!3759905 EmptyExpr!16111)))

(declare-fun b!6172364 () Bool)

(assert (=> b!6172364 (= e!3759900 (h!70956 (t!378134 lt!2337305)))))

(declare-fun b!6172365 () Bool)

(assert (=> b!6172365 (= e!3759905 (Concat!24956 (h!70956 (t!378134 lt!2337305)) (generalisedConcat!1708 (t!378134 (t!378134 lt!2337305)))))))

(declare-fun b!6172366 () Bool)

(assert (=> b!6172366 (= e!3759901 (isConcat!1050 lt!2337425))))

(declare-fun b!6172367 () Bool)

(assert (=> b!6172367 (= e!3759901 (= lt!2337425 (head!12743 (t!378134 lt!2337305))))))

(declare-fun b!6172368 () Bool)

(assert (=> b!6172368 (= e!3759902 (isEmptyExpr!1527 lt!2337425))))

(assert (= (and d!1934561 res!2554812) b!6172360))

(assert (= (and d!1934561 c!1112351) b!6172364))

(assert (= (and d!1934561 (not c!1112351)) b!6172359))

(assert (= (and b!6172359 c!1112354) b!6172365))

(assert (= (and b!6172359 (not c!1112354)) b!6172363))

(assert (= (and d!1934561 res!2554813) b!6172362))

(assert (= (and b!6172362 c!1112352) b!6172368))

(assert (= (and b!6172362 (not c!1112352)) b!6172361))

(assert (= (and b!6172361 c!1112353) b!6172367))

(assert (= (and b!6172361 (not c!1112353)) b!6172366))

(assert (=> b!6172362 m!7008652))

(declare-fun m!7008742 () Bool)

(assert (=> b!6172368 m!7008742))

(declare-fun m!7008744 () Bool)

(assert (=> b!6172365 m!7008744))

(declare-fun m!7008746 () Bool)

(assert (=> d!1934561 m!7008746))

(declare-fun m!7008748 () Bool)

(assert (=> d!1934561 m!7008748))

(declare-fun m!7008750 () Bool)

(assert (=> b!6172366 m!7008750))

(declare-fun m!7008752 () Bool)

(assert (=> b!6172361 m!7008752))

(assert (=> b!6172361 m!7008752))

(declare-fun m!7008754 () Bool)

(assert (=> b!6172361 m!7008754))

(declare-fun m!7008756 () Bool)

(assert (=> b!6172367 m!7008756))

(declare-fun m!7008758 () Bool)

(assert (=> b!6172360 m!7008758))

(assert (=> b!6172149 d!1934561))

(declare-fun d!1934563 () Bool)

(assert (=> d!1934563 (= (isDefined!12705 lt!2337383) (not (isEmpty!36489 lt!2337383)))))

(declare-fun bs!1530490 () Bool)

(assert (= bs!1530490 d!1934563))

(declare-fun m!7008760 () Bool)

(assert (=> bs!1530490 m!7008760))

(assert (=> d!1934401 d!1934563))

(declare-fun b!6172369 () Bool)

(declare-fun e!3759909 () Bool)

(declare-fun lt!2337426 () Bool)

(assert (=> b!6172369 (= e!3759909 (not lt!2337426))))

(declare-fun b!6172370 () Bool)

(declare-fun e!3759911 () Bool)

(assert (=> b!6172370 (= e!3759911 (matchR!8294 (derivativeStep!4830 (regOne!32734 r!7292) (head!12742 Nil!64510)) (tail!11827 Nil!64510)))))

(declare-fun b!6172371 () Bool)

(declare-fun res!2554817 () Bool)

(declare-fun e!3759908 () Bool)

(assert (=> b!6172371 (=> res!2554817 e!3759908)))

(declare-fun e!3759910 () Bool)

(assert (=> b!6172371 (= res!2554817 e!3759910)))

(declare-fun res!2554819 () Bool)

(assert (=> b!6172371 (=> (not res!2554819) (not e!3759910))))

(assert (=> b!6172371 (= res!2554819 lt!2337426)))

(declare-fun b!6172372 () Bool)

(declare-fun e!3759907 () Bool)

(declare-fun call!514893 () Bool)

(assert (=> b!6172372 (= e!3759907 (= lt!2337426 call!514893))))

(declare-fun bm!514888 () Bool)

(assert (=> bm!514888 (= call!514893 (isEmpty!36488 Nil!64510))))

(declare-fun b!6172373 () Bool)

(assert (=> b!6172373 (= e!3759907 e!3759909)))

(declare-fun c!1112356 () Bool)

(assert (=> b!6172373 (= c!1112356 ((_ is EmptyLang!16111) (regOne!32734 r!7292)))))

(declare-fun b!6172374 () Bool)

(declare-fun res!2554821 () Bool)

(assert (=> b!6172374 (=> res!2554821 e!3759908)))

(assert (=> b!6172374 (= res!2554821 (not ((_ is ElementMatch!16111) (regOne!32734 r!7292))))))

(assert (=> b!6172374 (= e!3759909 e!3759908)))

(declare-fun b!6172375 () Bool)

(declare-fun e!3759906 () Bool)

(assert (=> b!6172375 (= e!3759908 e!3759906)))

(declare-fun res!2554814 () Bool)

(assert (=> b!6172375 (=> (not res!2554814) (not e!3759906))))

(assert (=> b!6172375 (= res!2554814 (not lt!2337426))))

(declare-fun d!1934565 () Bool)

(assert (=> d!1934565 e!3759907))

(declare-fun c!1112357 () Bool)

(assert (=> d!1934565 (= c!1112357 ((_ is EmptyExpr!16111) (regOne!32734 r!7292)))))

(assert (=> d!1934565 (= lt!2337426 e!3759911)))

(declare-fun c!1112355 () Bool)

(assert (=> d!1934565 (= c!1112355 (isEmpty!36488 Nil!64510))))

(assert (=> d!1934565 (validRegex!7847 (regOne!32734 r!7292))))

(assert (=> d!1934565 (= (matchR!8294 (regOne!32734 r!7292) Nil!64510) lt!2337426)))

(declare-fun b!6172376 () Bool)

(declare-fun res!2554815 () Bool)

(assert (=> b!6172376 (=> (not res!2554815) (not e!3759910))))

(assert (=> b!6172376 (= res!2554815 (not call!514893))))

(declare-fun b!6172377 () Bool)

(declare-fun res!2554820 () Bool)

(assert (=> b!6172377 (=> (not res!2554820) (not e!3759910))))

(assert (=> b!6172377 (= res!2554820 (isEmpty!36488 (tail!11827 Nil!64510)))))

(declare-fun b!6172378 () Bool)

(assert (=> b!6172378 (= e!3759910 (= (head!12742 Nil!64510) (c!1112104 (regOne!32734 r!7292))))))

(declare-fun b!6172379 () Bool)

(declare-fun e!3759912 () Bool)

(assert (=> b!6172379 (= e!3759906 e!3759912)))

(declare-fun res!2554816 () Bool)

(assert (=> b!6172379 (=> res!2554816 e!3759912)))

(assert (=> b!6172379 (= res!2554816 call!514893)))

(declare-fun b!6172380 () Bool)

(assert (=> b!6172380 (= e!3759912 (not (= (head!12742 Nil!64510) (c!1112104 (regOne!32734 r!7292)))))))

(declare-fun b!6172381 () Bool)

(assert (=> b!6172381 (= e!3759911 (nullable!6104 (regOne!32734 r!7292)))))

(declare-fun b!6172382 () Bool)

(declare-fun res!2554818 () Bool)

(assert (=> b!6172382 (=> res!2554818 e!3759912)))

(assert (=> b!6172382 (= res!2554818 (not (isEmpty!36488 (tail!11827 Nil!64510))))))

(assert (= (and d!1934565 c!1112355) b!6172381))

(assert (= (and d!1934565 (not c!1112355)) b!6172370))

(assert (= (and d!1934565 c!1112357) b!6172372))

(assert (= (and d!1934565 (not c!1112357)) b!6172373))

(assert (= (and b!6172373 c!1112356) b!6172369))

(assert (= (and b!6172373 (not c!1112356)) b!6172374))

(assert (= (and b!6172374 (not res!2554821)) b!6172371))

(assert (= (and b!6172371 res!2554819) b!6172376))

(assert (= (and b!6172376 res!2554815) b!6172377))

(assert (= (and b!6172377 res!2554820) b!6172378))

(assert (= (and b!6172371 (not res!2554817)) b!6172375))

(assert (= (and b!6172375 res!2554814) b!6172379))

(assert (= (and b!6172379 (not res!2554816)) b!6172382))

(assert (= (and b!6172382 (not res!2554818)) b!6172380))

(assert (= (or b!6172372 b!6172376 b!6172379) bm!514888))

(declare-fun m!7008762 () Bool)

(assert (=> b!6172378 m!7008762))

(declare-fun m!7008764 () Bool)

(assert (=> d!1934565 m!7008764))

(assert (=> d!1934565 m!7008432))

(declare-fun m!7008766 () Bool)

(assert (=> b!6172381 m!7008766))

(declare-fun m!7008768 () Bool)

(assert (=> b!6172382 m!7008768))

(assert (=> b!6172382 m!7008768))

(declare-fun m!7008770 () Bool)

(assert (=> b!6172382 m!7008770))

(assert (=> bm!514888 m!7008764))

(assert (=> b!6172377 m!7008768))

(assert (=> b!6172377 m!7008768))

(assert (=> b!6172377 m!7008770))

(assert (=> b!6172370 m!7008762))

(assert (=> b!6172370 m!7008762))

(declare-fun m!7008772 () Bool)

(assert (=> b!6172370 m!7008772))

(assert (=> b!6172370 m!7008768))

(assert (=> b!6172370 m!7008772))

(assert (=> b!6172370 m!7008768))

(declare-fun m!7008774 () Bool)

(assert (=> b!6172370 m!7008774))

(assert (=> b!6172380 m!7008762))

(assert (=> d!1934401 d!1934565))

(declare-fun bm!514889 () Bool)

(declare-fun call!514896 () Bool)

(declare-fun call!514894 () Bool)

(assert (=> bm!514889 (= call!514896 call!514894)))

(declare-fun b!6172383 () Bool)

(declare-fun e!3759918 () Bool)

(declare-fun e!3759919 () Bool)

(assert (=> b!6172383 (= e!3759918 e!3759919)))

(declare-fun c!1112358 () Bool)

(assert (=> b!6172383 (= c!1112358 ((_ is Star!16111) (regOne!32734 r!7292)))))

(declare-fun b!6172384 () Bool)

(declare-fun res!2554823 () Bool)

(declare-fun e!3759914 () Bool)

(assert (=> b!6172384 (=> res!2554823 e!3759914)))

(assert (=> b!6172384 (= res!2554823 (not ((_ is Concat!24956) (regOne!32734 r!7292))))))

(declare-fun e!3759913 () Bool)

(assert (=> b!6172384 (= e!3759913 e!3759914)))

(declare-fun b!6172385 () Bool)

(assert (=> b!6172385 (= e!3759919 e!3759913)))

(declare-fun c!1112359 () Bool)

(assert (=> b!6172385 (= c!1112359 ((_ is Union!16111) (regOne!32734 r!7292)))))

(declare-fun b!6172386 () Bool)

(declare-fun e!3759915 () Bool)

(assert (=> b!6172386 (= e!3759915 call!514896)))

(declare-fun b!6172387 () Bool)

(declare-fun e!3759916 () Bool)

(assert (=> b!6172387 (= e!3759916 call!514894)))

(declare-fun b!6172388 () Bool)

(assert (=> b!6172388 (= e!3759914 e!3759915)))

(declare-fun res!2554825 () Bool)

(assert (=> b!6172388 (=> (not res!2554825) (not e!3759915))))

(declare-fun call!514895 () Bool)

(assert (=> b!6172388 (= res!2554825 call!514895)))

(declare-fun b!6172389 () Bool)

(declare-fun res!2554822 () Bool)

(declare-fun e!3759917 () Bool)

(assert (=> b!6172389 (=> (not res!2554822) (not e!3759917))))

(assert (=> b!6172389 (= res!2554822 call!514895)))

(assert (=> b!6172389 (= e!3759913 e!3759917)))

(declare-fun b!6172390 () Bool)

(assert (=> b!6172390 (= e!3759919 e!3759916)))

(declare-fun res!2554824 () Bool)

(assert (=> b!6172390 (= res!2554824 (not (nullable!6104 (reg!16440 (regOne!32734 r!7292)))))))

(assert (=> b!6172390 (=> (not res!2554824) (not e!3759916))))

(declare-fun bm!514891 () Bool)

(assert (=> bm!514891 (= call!514894 (validRegex!7847 (ite c!1112358 (reg!16440 (regOne!32734 r!7292)) (ite c!1112359 (regTwo!32735 (regOne!32734 r!7292)) (regTwo!32734 (regOne!32734 r!7292))))))))

(declare-fun b!6172391 () Bool)

(assert (=> b!6172391 (= e!3759917 call!514896)))

(declare-fun bm!514890 () Bool)

(assert (=> bm!514890 (= call!514895 (validRegex!7847 (ite c!1112359 (regOne!32735 (regOne!32734 r!7292)) (regOne!32734 (regOne!32734 r!7292)))))))

(declare-fun d!1934567 () Bool)

(declare-fun res!2554826 () Bool)

(assert (=> d!1934567 (=> res!2554826 e!3759918)))

(assert (=> d!1934567 (= res!2554826 ((_ is ElementMatch!16111) (regOne!32734 r!7292)))))

(assert (=> d!1934567 (= (validRegex!7847 (regOne!32734 r!7292)) e!3759918)))

(assert (= (and d!1934567 (not res!2554826)) b!6172383))

(assert (= (and b!6172383 c!1112358) b!6172390))

(assert (= (and b!6172383 (not c!1112358)) b!6172385))

(assert (= (and b!6172390 res!2554824) b!6172387))

(assert (= (and b!6172385 c!1112359) b!6172389))

(assert (= (and b!6172385 (not c!1112359)) b!6172384))

(assert (= (and b!6172389 res!2554822) b!6172391))

(assert (= (and b!6172384 (not res!2554823)) b!6172388))

(assert (= (and b!6172388 res!2554825) b!6172386))

(assert (= (or b!6172391 b!6172386) bm!514889))

(assert (= (or b!6172389 b!6172388) bm!514890))

(assert (= (or b!6172387 bm!514889) bm!514891))

(declare-fun m!7008776 () Bool)

(assert (=> b!6172390 m!7008776))

(declare-fun m!7008778 () Bool)

(assert (=> bm!514891 m!7008778))

(declare-fun m!7008780 () Bool)

(assert (=> bm!514890 m!7008780))

(assert (=> d!1934401 d!1934567))

(declare-fun b!6172392 () Bool)

(declare-fun e!3759924 () Bool)

(assert (=> b!6172392 (= e!3759924 (nullable!6104 (regOne!32734 (ite c!1112350 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292)))))))))

(declare-fun b!6172393 () Bool)

(declare-fun c!1112363 () Bool)

(assert (=> b!6172393 (= c!1112363 ((_ is Star!16111) (ite c!1112350 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292))))))))

(declare-fun e!3759925 () (InoxSet Context!10990))

(declare-fun e!3759922 () (InoxSet Context!10990))

(assert (=> b!6172393 (= e!3759925 e!3759922)))

(declare-fun call!514900 () List!64632)

(declare-fun c!1112364 () Bool)

(declare-fun c!1112360 () Bool)

(declare-fun call!514899 () (InoxSet Context!10990))

(declare-fun bm!514892 () Bool)

(declare-fun c!1112362 () Bool)

(assert (=> bm!514892 (= call!514899 (derivationStepZipperDown!1359 (ite c!1112364 (regTwo!32735 (ite c!1112350 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292))))) (ite c!1112360 (regTwo!32734 (ite c!1112350 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292))))) (ite c!1112362 (regOne!32734 (ite c!1112350 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292))))) (reg!16440 (ite c!1112350 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292)))))))) (ite (or c!1112364 c!1112360) (ite c!1112350 lt!2337313 (Context!10991 call!514887)) (Context!10991 call!514900)) (h!70958 s!2326)))))

(declare-fun b!6172394 () Bool)

(declare-fun call!514898 () (InoxSet Context!10990))

(assert (=> b!6172394 (= e!3759922 call!514898)))

(declare-fun b!6172395 () Bool)

(declare-fun e!3759923 () (InoxSet Context!10990))

(assert (=> b!6172395 (= e!3759923 e!3759925)))

(assert (=> b!6172395 (= c!1112362 ((_ is Concat!24956) (ite c!1112350 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292))))))))

(declare-fun bm!514893 () Bool)

(declare-fun call!514897 () List!64632)

(assert (=> bm!514893 (= call!514900 call!514897)))

(declare-fun c!1112361 () Bool)

(declare-fun d!1934569 () Bool)

(assert (=> d!1934569 (= c!1112361 (and ((_ is ElementMatch!16111) (ite c!1112350 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292))))) (= (c!1112104 (ite c!1112350 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292))))) (h!70958 s!2326))))))

(declare-fun e!3759921 () (InoxSet Context!10990))

(assert (=> d!1934569 (= (derivationStepZipperDown!1359 (ite c!1112350 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292)))) (ite c!1112350 lt!2337313 (Context!10991 call!514887)) (h!70958 s!2326)) e!3759921)))

(declare-fun bm!514894 () Bool)

(assert (=> bm!514894 (= call!514897 ($colon$colon!1988 (exprs!5995 (ite c!1112350 lt!2337313 (Context!10991 call!514887))) (ite (or c!1112360 c!1112362) (regTwo!32734 (ite c!1112350 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292))))) (ite c!1112350 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292)))))))))

(declare-fun b!6172396 () Bool)

(assert (=> b!6172396 (= e!3759921 (store ((as const (Array Context!10990 Bool)) false) (ite c!1112350 lt!2337313 (Context!10991 call!514887)) true))))

(declare-fun b!6172397 () Bool)

(declare-fun e!3759920 () (InoxSet Context!10990))

(declare-fun call!514901 () (InoxSet Context!10990))

(assert (=> b!6172397 (= e!3759920 ((_ map or) call!514901 call!514899))))

(declare-fun bm!514895 () Bool)

(declare-fun call!514902 () (InoxSet Context!10990))

(assert (=> bm!514895 (= call!514898 call!514902)))

(declare-fun bm!514896 () Bool)

(assert (=> bm!514896 (= call!514902 call!514899)))

(declare-fun b!6172398 () Bool)

(assert (=> b!6172398 (= e!3759925 call!514898)))

(declare-fun bm!514897 () Bool)

(assert (=> bm!514897 (= call!514901 (derivationStepZipperDown!1359 (ite c!1112364 (regOne!32735 (ite c!1112350 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292))))) (regOne!32734 (ite c!1112350 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292)))))) (ite c!1112364 (ite c!1112350 lt!2337313 (Context!10991 call!514887)) (Context!10991 call!514897)) (h!70958 s!2326)))))

(declare-fun b!6172399 () Bool)

(assert (=> b!6172399 (= e!3759922 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172400 () Bool)

(assert (=> b!6172400 (= c!1112360 e!3759924)))

(declare-fun res!2554827 () Bool)

(assert (=> b!6172400 (=> (not res!2554827) (not e!3759924))))

(assert (=> b!6172400 (= res!2554827 ((_ is Concat!24956) (ite c!1112350 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292))))))))

(assert (=> b!6172400 (= e!3759920 e!3759923)))

(declare-fun b!6172401 () Bool)

(assert (=> b!6172401 (= e!3759921 e!3759920)))

(assert (=> b!6172401 (= c!1112364 ((_ is Union!16111) (ite c!1112350 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292))))))))

(declare-fun b!6172402 () Bool)

(assert (=> b!6172402 (= e!3759923 ((_ map or) call!514901 call!514902))))

(assert (= (and d!1934569 c!1112361) b!6172396))

(assert (= (and d!1934569 (not c!1112361)) b!6172401))

(assert (= (and b!6172401 c!1112364) b!6172397))

(assert (= (and b!6172401 (not c!1112364)) b!6172400))

(assert (= (and b!6172400 res!2554827) b!6172392))

(assert (= (and b!6172400 c!1112360) b!6172402))

(assert (= (and b!6172400 (not c!1112360)) b!6172395))

(assert (= (and b!6172395 c!1112362) b!6172398))

(assert (= (and b!6172395 (not c!1112362)) b!6172393))

(assert (= (and b!6172393 c!1112363) b!6172394))

(assert (= (and b!6172393 (not c!1112363)) b!6172399))

(assert (= (or b!6172398 b!6172394) bm!514893))

(assert (= (or b!6172398 b!6172394) bm!514895))

(assert (= (or b!6172402 bm!514893) bm!514894))

(assert (= (or b!6172402 bm!514895) bm!514896))

(assert (= (or b!6172397 bm!514896) bm!514892))

(assert (= (or b!6172397 b!6172402) bm!514897))

(declare-fun m!7008782 () Bool)

(assert (=> b!6172396 m!7008782))

(declare-fun m!7008784 () Bool)

(assert (=> bm!514894 m!7008784))

(declare-fun m!7008786 () Bool)

(assert (=> bm!514897 m!7008786))

(declare-fun m!7008788 () Bool)

(assert (=> bm!514892 m!7008788))

(declare-fun m!7008790 () Bool)

(assert (=> b!6172392 m!7008790))

(assert (=> bm!514887 d!1934569))

(declare-fun d!1934571 () Bool)

(declare-fun c!1112365 () Bool)

(assert (=> d!1934571 (= c!1112365 (isEmpty!36488 (t!378136 s!2326)))))

(declare-fun e!3759926 () Bool)

(assert (=> d!1934571 (= (matchZipper!2123 ((_ map or) lt!2337296 lt!2337289) (t!378136 s!2326)) e!3759926)))

(declare-fun b!6172403 () Bool)

(assert (=> b!6172403 (= e!3759926 (nullableZipper!1892 ((_ map or) lt!2337296 lt!2337289)))))

(declare-fun b!6172404 () Bool)

(assert (=> b!6172404 (= e!3759926 (matchZipper!2123 (derivationStepZipper!2084 ((_ map or) lt!2337296 lt!2337289) (head!12742 (t!378136 s!2326))) (tail!11827 (t!378136 s!2326))))))

(assert (= (and d!1934571 c!1112365) b!6172403))

(assert (= (and d!1934571 (not c!1112365)) b!6172404))

(assert (=> d!1934571 m!7008072))

(declare-fun m!7008792 () Bool)

(assert (=> b!6172403 m!7008792))

(assert (=> b!6172404 m!7008076))

(assert (=> b!6172404 m!7008076))

(declare-fun m!7008794 () Bool)

(assert (=> b!6172404 m!7008794))

(assert (=> b!6172404 m!7008080))

(assert (=> b!6172404 m!7008794))

(assert (=> b!6172404 m!7008080))

(declare-fun m!7008796 () Bool)

(assert (=> b!6172404 m!7008796))

(assert (=> d!1934539 d!1934571))

(assert (=> d!1934539 d!1934537))

(declare-fun d!1934573 () Bool)

(declare-fun e!3759929 () Bool)

(assert (=> d!1934573 (= (matchZipper!2123 ((_ map or) lt!2337296 lt!2337289) (t!378136 s!2326)) e!3759929)))

(declare-fun res!2554830 () Bool)

(assert (=> d!1934573 (=> res!2554830 e!3759929)))

(assert (=> d!1934573 (= res!2554830 (matchZipper!2123 lt!2337296 (t!378136 s!2326)))))

(assert (=> d!1934573 true))

(declare-fun _$48!1767 () Unit!157667)

(assert (=> d!1934573 (= (choose!45870 lt!2337296 lt!2337289 (t!378136 s!2326)) _$48!1767)))

(declare-fun b!6172407 () Bool)

(assert (=> b!6172407 (= e!3759929 (matchZipper!2123 lt!2337289 (t!378136 s!2326)))))

(assert (= (and d!1934573 (not res!2554830)) b!6172407))

(assert (=> d!1934573 m!7008706))

(assert (=> d!1934573 m!7007960))

(assert (=> b!6172407 m!7007972))

(assert (=> d!1934539 d!1934573))

(declare-fun d!1934575 () Bool)

(declare-fun c!1112366 () Bool)

(assert (=> d!1934575 (= c!1112366 (isEmpty!36488 (tail!11827 (t!378136 s!2326))))))

(declare-fun e!3759930 () Bool)

(assert (=> d!1934575 (= (matchZipper!2123 (derivationStepZipper!2084 ((_ map or) lt!2337289 lt!2337288) (head!12742 (t!378136 s!2326))) (tail!11827 (t!378136 s!2326))) e!3759930)))

(declare-fun b!6172408 () Bool)

(assert (=> b!6172408 (= e!3759930 (nullableZipper!1892 (derivationStepZipper!2084 ((_ map or) lt!2337289 lt!2337288) (head!12742 (t!378136 s!2326)))))))

(declare-fun b!6172409 () Bool)

(assert (=> b!6172409 (= e!3759930 (matchZipper!2123 (derivationStepZipper!2084 (derivationStepZipper!2084 ((_ map or) lt!2337289 lt!2337288) (head!12742 (t!378136 s!2326))) (head!12742 (tail!11827 (t!378136 s!2326)))) (tail!11827 (tail!11827 (t!378136 s!2326)))))))

(assert (= (and d!1934575 c!1112366) b!6172408))

(assert (= (and d!1934575 (not c!1112366)) b!6172409))

(assert (=> d!1934575 m!7008080))

(declare-fun m!7008798 () Bool)

(assert (=> d!1934575 m!7008798))

(assert (=> b!6172408 m!7008172))

(declare-fun m!7008800 () Bool)

(assert (=> b!6172408 m!7008800))

(assert (=> b!6172409 m!7008080))

(declare-fun m!7008802 () Bool)

(assert (=> b!6172409 m!7008802))

(assert (=> b!6172409 m!7008172))

(assert (=> b!6172409 m!7008802))

(declare-fun m!7008804 () Bool)

(assert (=> b!6172409 m!7008804))

(assert (=> b!6172409 m!7008080))

(declare-fun m!7008806 () Bool)

(assert (=> b!6172409 m!7008806))

(assert (=> b!6172409 m!7008804))

(assert (=> b!6172409 m!7008806))

(declare-fun m!7008808 () Bool)

(assert (=> b!6172409 m!7008808))

(assert (=> b!6171601 d!1934575))

(declare-fun bs!1530491 () Bool)

(declare-fun d!1934577 () Bool)

(assert (= bs!1530491 (and d!1934577 b!6171493)))

(declare-fun lambda!336893 () Int)

(assert (=> bs!1530491 (= (= (head!12742 (t!378136 s!2326)) (h!70958 s!2326)) (= lambda!336893 lambda!336831))))

(assert (=> d!1934577 true))

(assert (=> d!1934577 (= (derivationStepZipper!2084 ((_ map or) lt!2337289 lt!2337288) (head!12742 (t!378136 s!2326))) (flatMap!1616 ((_ map or) lt!2337289 lt!2337288) lambda!336893))))

(declare-fun bs!1530492 () Bool)

(assert (= bs!1530492 d!1934577))

(declare-fun m!7008810 () Bool)

(assert (=> bs!1530492 m!7008810))

(assert (=> b!6171601 d!1934577))

(declare-fun d!1934579 () Bool)

(assert (=> d!1934579 (= (head!12742 (t!378136 s!2326)) (h!70958 (t!378136 s!2326)))))

(assert (=> b!6171601 d!1934579))

(declare-fun d!1934581 () Bool)

(assert (=> d!1934581 (= (tail!11827 (t!378136 s!2326)) (t!378136 (t!378136 s!2326)))))

(assert (=> b!6171601 d!1934581))

(declare-fun d!1934583 () Bool)

(declare-fun lambda!336896 () Int)

(declare-fun exists!2455 ((InoxSet Context!10990) Int) Bool)

(assert (=> d!1934583 (= (nullableZipper!1892 lt!2337284) (exists!2455 lt!2337284 lambda!336896))))

(declare-fun bs!1530493 () Bool)

(assert (= bs!1530493 d!1934583))

(declare-fun m!7008812 () Bool)

(assert (=> bs!1530493 m!7008812))

(assert (=> b!6172274 d!1934583))

(declare-fun bm!514898 () Bool)

(declare-fun call!514905 () Bool)

(declare-fun call!514903 () Bool)

(assert (=> bm!514898 (= call!514905 call!514903)))

(declare-fun b!6172412 () Bool)

(declare-fun e!3759936 () Bool)

(declare-fun e!3759937 () Bool)

(assert (=> b!6172412 (= e!3759936 e!3759937)))

(declare-fun c!1112371 () Bool)

(assert (=> b!6172412 (= c!1112371 ((_ is Star!16111) (ite c!1112124 (reg!16440 r!7292) (ite c!1112125 (regTwo!32735 r!7292) (regTwo!32734 r!7292)))))))

(declare-fun b!6172413 () Bool)

(declare-fun res!2554832 () Bool)

(declare-fun e!3759932 () Bool)

(assert (=> b!6172413 (=> res!2554832 e!3759932)))

(assert (=> b!6172413 (= res!2554832 (not ((_ is Concat!24956) (ite c!1112124 (reg!16440 r!7292) (ite c!1112125 (regTwo!32735 r!7292) (regTwo!32734 r!7292))))))))

(declare-fun e!3759931 () Bool)

(assert (=> b!6172413 (= e!3759931 e!3759932)))

(declare-fun b!6172414 () Bool)

(assert (=> b!6172414 (= e!3759937 e!3759931)))

(declare-fun c!1112372 () Bool)

(assert (=> b!6172414 (= c!1112372 ((_ is Union!16111) (ite c!1112124 (reg!16440 r!7292) (ite c!1112125 (regTwo!32735 r!7292) (regTwo!32734 r!7292)))))))

(declare-fun b!6172415 () Bool)

(declare-fun e!3759933 () Bool)

(assert (=> b!6172415 (= e!3759933 call!514905)))

(declare-fun b!6172416 () Bool)

(declare-fun e!3759934 () Bool)

(assert (=> b!6172416 (= e!3759934 call!514903)))

(declare-fun b!6172417 () Bool)

(assert (=> b!6172417 (= e!3759932 e!3759933)))

(declare-fun res!2554834 () Bool)

(assert (=> b!6172417 (=> (not res!2554834) (not e!3759933))))

(declare-fun call!514904 () Bool)

(assert (=> b!6172417 (= res!2554834 call!514904)))

(declare-fun b!6172418 () Bool)

(declare-fun res!2554831 () Bool)

(declare-fun e!3759935 () Bool)

(assert (=> b!6172418 (=> (not res!2554831) (not e!3759935))))

(assert (=> b!6172418 (= res!2554831 call!514904)))

(assert (=> b!6172418 (= e!3759931 e!3759935)))

(declare-fun b!6172419 () Bool)

(assert (=> b!6172419 (= e!3759937 e!3759934)))

(declare-fun res!2554833 () Bool)

(assert (=> b!6172419 (= res!2554833 (not (nullable!6104 (reg!16440 (ite c!1112124 (reg!16440 r!7292) (ite c!1112125 (regTwo!32735 r!7292) (regTwo!32734 r!7292)))))))))

(assert (=> b!6172419 (=> (not res!2554833) (not e!3759934))))

(declare-fun bm!514900 () Bool)

(assert (=> bm!514900 (= call!514903 (validRegex!7847 (ite c!1112371 (reg!16440 (ite c!1112124 (reg!16440 r!7292) (ite c!1112125 (regTwo!32735 r!7292) (regTwo!32734 r!7292)))) (ite c!1112372 (regTwo!32735 (ite c!1112124 (reg!16440 r!7292) (ite c!1112125 (regTwo!32735 r!7292) (regTwo!32734 r!7292)))) (regTwo!32734 (ite c!1112124 (reg!16440 r!7292) (ite c!1112125 (regTwo!32735 r!7292) (regTwo!32734 r!7292))))))))))

(declare-fun b!6172420 () Bool)

(assert (=> b!6172420 (= e!3759935 call!514905)))

(declare-fun bm!514899 () Bool)

(assert (=> bm!514899 (= call!514904 (validRegex!7847 (ite c!1112372 (regOne!32735 (ite c!1112124 (reg!16440 r!7292) (ite c!1112125 (regTwo!32735 r!7292) (regTwo!32734 r!7292)))) (regOne!32734 (ite c!1112124 (reg!16440 r!7292) (ite c!1112125 (regTwo!32735 r!7292) (regTwo!32734 r!7292)))))))))

(declare-fun d!1934585 () Bool)

(declare-fun res!2554835 () Bool)

(assert (=> d!1934585 (=> res!2554835 e!3759936)))

(assert (=> d!1934585 (= res!2554835 ((_ is ElementMatch!16111) (ite c!1112124 (reg!16440 r!7292) (ite c!1112125 (regTwo!32735 r!7292) (regTwo!32734 r!7292)))))))

(assert (=> d!1934585 (= (validRegex!7847 (ite c!1112124 (reg!16440 r!7292) (ite c!1112125 (regTwo!32735 r!7292) (regTwo!32734 r!7292)))) e!3759936)))

(assert (= (and d!1934585 (not res!2554835)) b!6172412))

(assert (= (and b!6172412 c!1112371) b!6172419))

(assert (= (and b!6172412 (not c!1112371)) b!6172414))

(assert (= (and b!6172419 res!2554833) b!6172416))

(assert (= (and b!6172414 c!1112372) b!6172418))

(assert (= (and b!6172414 (not c!1112372)) b!6172413))

(assert (= (and b!6172418 res!2554831) b!6172420))

(assert (= (and b!6172413 (not res!2554832)) b!6172417))

(assert (= (and b!6172417 res!2554834) b!6172415))

(assert (= (or b!6172420 b!6172415) bm!514898))

(assert (= (or b!6172418 b!6172417) bm!514899))

(assert (= (or b!6172416 bm!514898) bm!514900))

(declare-fun m!7008814 () Bool)

(assert (=> b!6172419 m!7008814))

(declare-fun m!7008816 () Bool)

(assert (=> bm!514900 m!7008816))

(declare-fun m!7008818 () Bool)

(assert (=> bm!514899 m!7008818))

(assert (=> bm!514780 d!1934585))

(assert (=> d!1934457 d!1934401))

(declare-fun d!1934587 () Bool)

(assert (=> d!1934587 (= (Exists!3181 lambda!336859) (choose!45875 lambda!336859))))

(declare-fun bs!1530494 () Bool)

(assert (= bs!1530494 d!1934587))

(declare-fun m!7008820 () Bool)

(assert (=> bs!1530494 m!7008820))

(assert (=> d!1934457 d!1934587))

(assert (=> d!1934457 d!1934567))

(assert (=> d!1934457 d!1934493))

(declare-fun bs!1530495 () Bool)

(declare-fun d!1934589 () Bool)

(assert (= bs!1530495 (and d!1934589 b!6172193)))

(declare-fun lambda!336899 () Int)

(assert (=> bs!1530495 (not (= lambda!336899 lambda!336881))))

(declare-fun bs!1530496 () Bool)

(assert (= bs!1530496 (and d!1934589 b!6171469)))

(assert (=> bs!1530496 (not (= lambda!336899 lambda!336830))))

(declare-fun bs!1530497 () Bool)

(assert (= bs!1530497 (and d!1934589 d!1934475)))

(assert (=> bs!1530497 (= lambda!336899 lambda!336871)))

(assert (=> bs!1530497 (not (= lambda!336899 lambda!336872))))

(declare-fun bs!1530498 () Bool)

(assert (= bs!1530498 (and d!1934589 b!6172186)))

(assert (=> bs!1530498 (not (= lambda!336899 lambda!336882))))

(assert (=> bs!1530496 (= lambda!336899 lambda!336829)))

(declare-fun bs!1530499 () Bool)

(assert (= bs!1530499 (and d!1934589 d!1934457)))

(assert (=> bs!1530499 (= lambda!336899 lambda!336859)))

(assert (=> d!1934589 true))

(assert (=> d!1934589 true))

(assert (=> d!1934589 true))

(assert (=> d!1934589 (= (isDefined!12705 (findConcatSeparation!2416 (regOne!32734 r!7292) (regTwo!32734 r!7292) Nil!64510 s!2326 s!2326)) (Exists!3181 lambda!336899))))

(assert (=> d!1934589 true))

(declare-fun _$89!2302 () Unit!157667)

(assert (=> d!1934589 (= (choose!45876 (regOne!32734 r!7292) (regTwo!32734 r!7292) s!2326) _$89!2302)))

(declare-fun bs!1530500 () Bool)

(assert (= bs!1530500 d!1934589))

(assert (=> bs!1530500 m!7008044))

(assert (=> bs!1530500 m!7008044))

(assert (=> bs!1530500 m!7008046))

(declare-fun m!7008822 () Bool)

(assert (=> bs!1530500 m!7008822))

(assert (=> d!1934457 d!1934589))

(declare-fun bs!1530501 () Bool)

(declare-fun d!1934591 () Bool)

(assert (= bs!1530501 (and d!1934591 d!1934377)))

(declare-fun lambda!336900 () Int)

(assert (=> bs!1530501 (= lambda!336900 lambda!336849)))

(declare-fun bs!1530502 () Bool)

(assert (= bs!1530502 (and d!1934591 d!1934561)))

(assert (=> bs!1530502 (= lambda!336900 lambda!336890)))

(declare-fun bs!1530503 () Bool)

(assert (= bs!1530503 (and d!1934591 d!1934531)))

(assert (=> bs!1530503 (= lambda!336900 lambda!336885)))

(declare-fun bs!1530504 () Bool)

(assert (= bs!1530504 (and d!1934591 d!1934543)))

(assert (=> bs!1530504 (= lambda!336900 lambda!336889)))

(declare-fun bs!1530505 () Bool)

(assert (= bs!1530505 (and d!1934591 d!1934495)))

(assert (=> bs!1530505 (= lambda!336900 lambda!336875)))

(declare-fun bs!1530506 () Bool)

(assert (= bs!1530506 (and d!1934591 d!1934523)))

(assert (=> bs!1530506 (= lambda!336900 lambda!336876)))

(declare-fun bs!1530507 () Bool)

(assert (= bs!1530507 (and d!1934591 d!1934533)))

(assert (=> bs!1530507 (= lambda!336900 lambda!336888)))

(declare-fun b!6172425 () Bool)

(declare-fun e!3759940 () Bool)

(assert (=> b!6172425 (= e!3759940 (isEmpty!36485 (t!378134 (t!378134 (unfocusZipperList!1532 zl!343)))))))

(declare-fun b!6172426 () Bool)

(declare-fun e!3759942 () Regex!16111)

(declare-fun e!3759941 () Regex!16111)

(assert (=> b!6172426 (= e!3759942 e!3759941)))

(declare-fun c!1112373 () Bool)

(assert (=> b!6172426 (= c!1112373 ((_ is Cons!64508) (t!378134 (unfocusZipperList!1532 zl!343))))))

(declare-fun b!6172427 () Bool)

(declare-fun e!3759944 () Bool)

(declare-fun lt!2337427 () Regex!16111)

(assert (=> b!6172427 (= e!3759944 (isEmptyLang!1537 lt!2337427))))

(declare-fun b!6172428 () Bool)

(declare-fun e!3759943 () Bool)

(assert (=> b!6172428 (= e!3759943 e!3759944)))

(declare-fun c!1112375 () Bool)

(assert (=> b!6172428 (= c!1112375 (isEmpty!36485 (t!378134 (unfocusZipperList!1532 zl!343))))))

(declare-fun b!6172429 () Bool)

(assert (=> b!6172429 (= e!3759941 EmptyLang!16111)))

(declare-fun b!6172430 () Bool)

(declare-fun e!3759945 () Bool)

(assert (=> b!6172430 (= e!3759944 e!3759945)))

(declare-fun c!1112374 () Bool)

(assert (=> b!6172430 (= c!1112374 (isEmpty!36485 (tail!11828 (t!378134 (unfocusZipperList!1532 zl!343)))))))

(assert (=> d!1934591 e!3759943))

(declare-fun res!2554841 () Bool)

(assert (=> d!1934591 (=> (not res!2554841) (not e!3759943))))

(assert (=> d!1934591 (= res!2554841 (validRegex!7847 lt!2337427))))

(assert (=> d!1934591 (= lt!2337427 e!3759942)))

(declare-fun c!1112376 () Bool)

(assert (=> d!1934591 (= c!1112376 e!3759940)))

(declare-fun res!2554840 () Bool)

(assert (=> d!1934591 (=> (not res!2554840) (not e!3759940))))

(assert (=> d!1934591 (= res!2554840 ((_ is Cons!64508) (t!378134 (unfocusZipperList!1532 zl!343))))))

(assert (=> d!1934591 (forall!15231 (t!378134 (unfocusZipperList!1532 zl!343)) lambda!336900)))

(assert (=> d!1934591 (= (generalisedUnion!1955 (t!378134 (unfocusZipperList!1532 zl!343))) lt!2337427)))

(declare-fun b!6172431 () Bool)

(assert (=> b!6172431 (= e!3759945 (= lt!2337427 (head!12743 (t!378134 (unfocusZipperList!1532 zl!343)))))))

(declare-fun b!6172432 () Bool)

(assert (=> b!6172432 (= e!3759945 (isUnion!968 lt!2337427))))

(declare-fun b!6172433 () Bool)

(assert (=> b!6172433 (= e!3759942 (h!70956 (t!378134 (unfocusZipperList!1532 zl!343))))))

(declare-fun b!6172434 () Bool)

(assert (=> b!6172434 (= e!3759941 (Union!16111 (h!70956 (t!378134 (unfocusZipperList!1532 zl!343))) (generalisedUnion!1955 (t!378134 (t!378134 (unfocusZipperList!1532 zl!343))))))))

(assert (= (and d!1934591 res!2554840) b!6172425))

(assert (= (and d!1934591 c!1112376) b!6172433))

(assert (= (and d!1934591 (not c!1112376)) b!6172426))

(assert (= (and b!6172426 c!1112373) b!6172434))

(assert (= (and b!6172426 (not c!1112373)) b!6172429))

(assert (= (and d!1934591 res!2554841) b!6172428))

(assert (= (and b!6172428 c!1112375) b!6172427))

(assert (= (and b!6172428 (not c!1112375)) b!6172430))

(assert (= (and b!6172430 c!1112374) b!6172431))

(assert (= (and b!6172430 (not c!1112374)) b!6172432))

(declare-fun m!7008824 () Bool)

(assert (=> b!6172427 m!7008824))

(declare-fun m!7008826 () Bool)

(assert (=> b!6172430 m!7008826))

(assert (=> b!6172430 m!7008826))

(declare-fun m!7008828 () Bool)

(assert (=> b!6172430 m!7008828))

(declare-fun m!7008830 () Bool)

(assert (=> b!6172434 m!7008830))

(assert (=> b!6172428 m!7008682))

(declare-fun m!7008832 () Bool)

(assert (=> b!6172432 m!7008832))

(declare-fun m!7008834 () Bool)

(assert (=> b!6172425 m!7008834))

(declare-fun m!7008836 () Bool)

(assert (=> b!6172431 m!7008836))

(declare-fun m!7008838 () Bool)

(assert (=> d!1934591 m!7008838))

(declare-fun m!7008840 () Bool)

(assert (=> d!1934591 m!7008840))

(assert (=> b!6172267 d!1934591))

(assert (=> b!6172278 d!1934317))

(assert (=> bm!514871 d!1934559))

(declare-fun d!1934593 () Bool)

(assert (=> d!1934593 (= (nullable!6104 (h!70956 (exprs!5995 lt!2337306))) (nullableFct!2068 (h!70956 (exprs!5995 lt!2337306))))))

(declare-fun bs!1530508 () Bool)

(assert (= bs!1530508 d!1934593))

(declare-fun m!7008842 () Bool)

(assert (=> bs!1530508 m!7008842))

(assert (=> b!6171623 d!1934593))

(declare-fun bs!1530509 () Bool)

(declare-fun d!1934595 () Bool)

(assert (= bs!1530509 (and d!1934595 d!1934377)))

(declare-fun lambda!336901 () Int)

(assert (=> bs!1530509 (= lambda!336901 lambda!336849)))

(declare-fun bs!1530510 () Bool)

(assert (= bs!1530510 (and d!1934595 d!1934561)))

(assert (=> bs!1530510 (= lambda!336901 lambda!336890)))

(declare-fun bs!1530511 () Bool)

(assert (= bs!1530511 (and d!1934595 d!1934531)))

(assert (=> bs!1530511 (= lambda!336901 lambda!336885)))

(declare-fun bs!1530512 () Bool)

(assert (= bs!1530512 (and d!1934595 d!1934543)))

(assert (=> bs!1530512 (= lambda!336901 lambda!336889)))

(declare-fun bs!1530513 () Bool)

(assert (= bs!1530513 (and d!1934595 d!1934495)))

(assert (=> bs!1530513 (= lambda!336901 lambda!336875)))

(declare-fun bs!1530514 () Bool)

(assert (= bs!1530514 (and d!1934595 d!1934533)))

(assert (=> bs!1530514 (= lambda!336901 lambda!336888)))

(declare-fun bs!1530515 () Bool)

(assert (= bs!1530515 (and d!1934595 d!1934523)))

(assert (=> bs!1530515 (= lambda!336901 lambda!336876)))

(declare-fun bs!1530516 () Bool)

(assert (= bs!1530516 (and d!1934595 d!1934591)))

(assert (=> bs!1530516 (= lambda!336901 lambda!336900)))

(assert (=> d!1934595 (= (inv!83524 (h!70957 (t!378135 zl!343))) (forall!15231 (exprs!5995 (h!70957 (t!378135 zl!343))) lambda!336901))))

(declare-fun bs!1530517 () Bool)

(assert (= bs!1530517 d!1934595))

(declare-fun m!7008844 () Bool)

(assert (=> bs!1530517 m!7008844))

(assert (=> b!6172325 d!1934595))

(declare-fun b!6172435 () Bool)

(declare-fun e!3759950 () Bool)

(assert (=> b!6172435 (= e!3759950 (nullable!6104 (regOne!32734 (h!70956 (exprs!5995 lt!2337306)))))))

(declare-fun b!6172436 () Bool)

(declare-fun c!1112380 () Bool)

(assert (=> b!6172436 (= c!1112380 ((_ is Star!16111) (h!70956 (exprs!5995 lt!2337306))))))

(declare-fun e!3759951 () (InoxSet Context!10990))

(declare-fun e!3759948 () (InoxSet Context!10990))

(assert (=> b!6172436 (= e!3759951 e!3759948)))

(declare-fun c!1112381 () Bool)

(declare-fun call!514909 () List!64632)

(declare-fun bm!514901 () Bool)

(declare-fun c!1112377 () Bool)

(declare-fun call!514908 () (InoxSet Context!10990))

(declare-fun c!1112379 () Bool)

(assert (=> bm!514901 (= call!514908 (derivationStepZipperDown!1359 (ite c!1112381 (regTwo!32735 (h!70956 (exprs!5995 lt!2337306))) (ite c!1112377 (regTwo!32734 (h!70956 (exprs!5995 lt!2337306))) (ite c!1112379 (regOne!32734 (h!70956 (exprs!5995 lt!2337306))) (reg!16440 (h!70956 (exprs!5995 lt!2337306)))))) (ite (or c!1112381 c!1112377) (Context!10991 (t!378134 (exprs!5995 lt!2337306))) (Context!10991 call!514909)) (h!70958 s!2326)))))

(declare-fun b!6172437 () Bool)

(declare-fun call!514907 () (InoxSet Context!10990))

(assert (=> b!6172437 (= e!3759948 call!514907)))

(declare-fun b!6172438 () Bool)

(declare-fun e!3759949 () (InoxSet Context!10990))

(assert (=> b!6172438 (= e!3759949 e!3759951)))

(assert (=> b!6172438 (= c!1112379 ((_ is Concat!24956) (h!70956 (exprs!5995 lt!2337306))))))

(declare-fun bm!514902 () Bool)

(declare-fun call!514906 () List!64632)

(assert (=> bm!514902 (= call!514909 call!514906)))

(declare-fun d!1934597 () Bool)

(declare-fun c!1112378 () Bool)

(assert (=> d!1934597 (= c!1112378 (and ((_ is ElementMatch!16111) (h!70956 (exprs!5995 lt!2337306))) (= (c!1112104 (h!70956 (exprs!5995 lt!2337306))) (h!70958 s!2326))))))

(declare-fun e!3759947 () (InoxSet Context!10990))

(assert (=> d!1934597 (= (derivationStepZipperDown!1359 (h!70956 (exprs!5995 lt!2337306)) (Context!10991 (t!378134 (exprs!5995 lt!2337306))) (h!70958 s!2326)) e!3759947)))

(declare-fun bm!514903 () Bool)

(assert (=> bm!514903 (= call!514906 ($colon$colon!1988 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337306)))) (ite (or c!1112377 c!1112379) (regTwo!32734 (h!70956 (exprs!5995 lt!2337306))) (h!70956 (exprs!5995 lt!2337306)))))))

(declare-fun b!6172439 () Bool)

(assert (=> b!6172439 (= e!3759947 (store ((as const (Array Context!10990 Bool)) false) (Context!10991 (t!378134 (exprs!5995 lt!2337306))) true))))

(declare-fun b!6172440 () Bool)

(declare-fun e!3759946 () (InoxSet Context!10990))

(declare-fun call!514910 () (InoxSet Context!10990))

(assert (=> b!6172440 (= e!3759946 ((_ map or) call!514910 call!514908))))

(declare-fun bm!514904 () Bool)

(declare-fun call!514911 () (InoxSet Context!10990))

(assert (=> bm!514904 (= call!514907 call!514911)))

(declare-fun bm!514905 () Bool)

(assert (=> bm!514905 (= call!514911 call!514908)))

(declare-fun b!6172441 () Bool)

(assert (=> b!6172441 (= e!3759951 call!514907)))

(declare-fun bm!514906 () Bool)

(assert (=> bm!514906 (= call!514910 (derivationStepZipperDown!1359 (ite c!1112381 (regOne!32735 (h!70956 (exprs!5995 lt!2337306))) (regOne!32734 (h!70956 (exprs!5995 lt!2337306)))) (ite c!1112381 (Context!10991 (t!378134 (exprs!5995 lt!2337306))) (Context!10991 call!514906)) (h!70958 s!2326)))))

(declare-fun b!6172442 () Bool)

(assert (=> b!6172442 (= e!3759948 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172443 () Bool)

(assert (=> b!6172443 (= c!1112377 e!3759950)))

(declare-fun res!2554842 () Bool)

(assert (=> b!6172443 (=> (not res!2554842) (not e!3759950))))

(assert (=> b!6172443 (= res!2554842 ((_ is Concat!24956) (h!70956 (exprs!5995 lt!2337306))))))

(assert (=> b!6172443 (= e!3759946 e!3759949)))

(declare-fun b!6172444 () Bool)

(assert (=> b!6172444 (= e!3759947 e!3759946)))

(assert (=> b!6172444 (= c!1112381 ((_ is Union!16111) (h!70956 (exprs!5995 lt!2337306))))))

(declare-fun b!6172445 () Bool)

(assert (=> b!6172445 (= e!3759949 ((_ map or) call!514910 call!514911))))

(assert (= (and d!1934597 c!1112378) b!6172439))

(assert (= (and d!1934597 (not c!1112378)) b!6172444))

(assert (= (and b!6172444 c!1112381) b!6172440))

(assert (= (and b!6172444 (not c!1112381)) b!6172443))

(assert (= (and b!6172443 res!2554842) b!6172435))

(assert (= (and b!6172443 c!1112377) b!6172445))

(assert (= (and b!6172443 (not c!1112377)) b!6172438))

(assert (= (and b!6172438 c!1112379) b!6172441))

(assert (= (and b!6172438 (not c!1112379)) b!6172436))

(assert (= (and b!6172436 c!1112380) b!6172437))

(assert (= (and b!6172436 (not c!1112380)) b!6172442))

(assert (= (or b!6172441 b!6172437) bm!514902))

(assert (= (or b!6172441 b!6172437) bm!514904))

(assert (= (or b!6172445 bm!514902) bm!514903))

(assert (= (or b!6172445 bm!514904) bm!514905))

(assert (= (or b!6172440 bm!514905) bm!514901))

(assert (= (or b!6172440 b!6172445) bm!514906))

(declare-fun m!7008846 () Bool)

(assert (=> b!6172439 m!7008846))

(declare-fun m!7008848 () Bool)

(assert (=> bm!514903 m!7008848))

(declare-fun m!7008850 () Bool)

(assert (=> bm!514906 m!7008850))

(declare-fun m!7008852 () Bool)

(assert (=> bm!514901 m!7008852))

(declare-fun m!7008854 () Bool)

(assert (=> b!6172435 m!7008854))

(assert (=> bm!514783 d!1934597))

(declare-fun d!1934599 () Bool)

(assert (=> d!1934599 (= (head!12742 s!2326) (h!70958 s!2326))))

(assert (=> b!6172235 d!1934599))

(declare-fun b!6172446 () Bool)

(declare-fun e!3759955 () Bool)

(declare-fun lt!2337428 () Bool)

(assert (=> b!6172446 (= e!3759955 (not lt!2337428))))

(declare-fun b!6172447 () Bool)

(declare-fun e!3759957 () Bool)

(assert (=> b!6172447 (= e!3759957 (matchR!8294 (derivativeStep!4830 (regTwo!32734 r!7292) (head!12742 s!2326)) (tail!11827 s!2326)))))

(declare-fun b!6172448 () Bool)

(declare-fun res!2554846 () Bool)

(declare-fun e!3759954 () Bool)

(assert (=> b!6172448 (=> res!2554846 e!3759954)))

(declare-fun e!3759956 () Bool)

(assert (=> b!6172448 (= res!2554846 e!3759956)))

(declare-fun res!2554848 () Bool)

(assert (=> b!6172448 (=> (not res!2554848) (not e!3759956))))

(assert (=> b!6172448 (= res!2554848 lt!2337428)))

(declare-fun b!6172449 () Bool)

(declare-fun e!3759953 () Bool)

(declare-fun call!514912 () Bool)

(assert (=> b!6172449 (= e!3759953 (= lt!2337428 call!514912))))

(declare-fun bm!514907 () Bool)

(assert (=> bm!514907 (= call!514912 (isEmpty!36488 s!2326))))

(declare-fun b!6172450 () Bool)

(assert (=> b!6172450 (= e!3759953 e!3759955)))

(declare-fun c!1112383 () Bool)

(assert (=> b!6172450 (= c!1112383 ((_ is EmptyLang!16111) (regTwo!32734 r!7292)))))

(declare-fun b!6172451 () Bool)

(declare-fun res!2554850 () Bool)

(assert (=> b!6172451 (=> res!2554850 e!3759954)))

(assert (=> b!6172451 (= res!2554850 (not ((_ is ElementMatch!16111) (regTwo!32734 r!7292))))))

(assert (=> b!6172451 (= e!3759955 e!3759954)))

(declare-fun b!6172452 () Bool)

(declare-fun e!3759952 () Bool)

(assert (=> b!6172452 (= e!3759954 e!3759952)))

(declare-fun res!2554843 () Bool)

(assert (=> b!6172452 (=> (not res!2554843) (not e!3759952))))

(assert (=> b!6172452 (= res!2554843 (not lt!2337428))))

(declare-fun d!1934601 () Bool)

(assert (=> d!1934601 e!3759953))

(declare-fun c!1112384 () Bool)

(assert (=> d!1934601 (= c!1112384 ((_ is EmptyExpr!16111) (regTwo!32734 r!7292)))))

(assert (=> d!1934601 (= lt!2337428 e!3759957)))

(declare-fun c!1112382 () Bool)

(assert (=> d!1934601 (= c!1112382 (isEmpty!36488 s!2326))))

(assert (=> d!1934601 (validRegex!7847 (regTwo!32734 r!7292))))

(assert (=> d!1934601 (= (matchR!8294 (regTwo!32734 r!7292) s!2326) lt!2337428)))

(declare-fun b!6172453 () Bool)

(declare-fun res!2554844 () Bool)

(assert (=> b!6172453 (=> (not res!2554844) (not e!3759956))))

(assert (=> b!6172453 (= res!2554844 (not call!514912))))

(declare-fun b!6172454 () Bool)

(declare-fun res!2554849 () Bool)

(assert (=> b!6172454 (=> (not res!2554849) (not e!3759956))))

(assert (=> b!6172454 (= res!2554849 (isEmpty!36488 (tail!11827 s!2326)))))

(declare-fun b!6172455 () Bool)

(assert (=> b!6172455 (= e!3759956 (= (head!12742 s!2326) (c!1112104 (regTwo!32734 r!7292))))))

(declare-fun b!6172456 () Bool)

(declare-fun e!3759958 () Bool)

(assert (=> b!6172456 (= e!3759952 e!3759958)))

(declare-fun res!2554845 () Bool)

(assert (=> b!6172456 (=> res!2554845 e!3759958)))

(assert (=> b!6172456 (= res!2554845 call!514912)))

(declare-fun b!6172457 () Bool)

(assert (=> b!6172457 (= e!3759958 (not (= (head!12742 s!2326) (c!1112104 (regTwo!32734 r!7292)))))))

(declare-fun b!6172458 () Bool)

(assert (=> b!6172458 (= e!3759957 (nullable!6104 (regTwo!32734 r!7292)))))

(declare-fun b!6172459 () Bool)

(declare-fun res!2554847 () Bool)

(assert (=> b!6172459 (=> res!2554847 e!3759958)))

(assert (=> b!6172459 (= res!2554847 (not (isEmpty!36488 (tail!11827 s!2326))))))

(assert (= (and d!1934601 c!1112382) b!6172458))

(assert (= (and d!1934601 (not c!1112382)) b!6172447))

(assert (= (and d!1934601 c!1112384) b!6172449))

(assert (= (and d!1934601 (not c!1112384)) b!6172450))

(assert (= (and b!6172450 c!1112383) b!6172446))

(assert (= (and b!6172450 (not c!1112383)) b!6172451))

(assert (= (and b!6172451 (not res!2554850)) b!6172448))

(assert (= (and b!6172448 res!2554848) b!6172453))

(assert (= (and b!6172453 res!2554844) b!6172454))

(assert (= (and b!6172454 res!2554849) b!6172455))

(assert (= (and b!6172448 (not res!2554846)) b!6172452))

(assert (= (and b!6172452 res!2554843) b!6172456))

(assert (= (and b!6172456 (not res!2554845)) b!6172459))

(assert (= (and b!6172459 (not res!2554847)) b!6172457))

(assert (= (or b!6172449 b!6172453 b!6172456) bm!514907))

(assert (=> b!6172455 m!7008188))

(assert (=> d!1934601 m!7008184))

(declare-fun m!7008856 () Bool)

(assert (=> d!1934601 m!7008856))

(declare-fun m!7008858 () Bool)

(assert (=> b!6172458 m!7008858))

(assert (=> b!6172459 m!7008192))

(assert (=> b!6172459 m!7008192))

(assert (=> b!6172459 m!7008662))

(assert (=> bm!514907 m!7008184))

(assert (=> b!6172454 m!7008192))

(assert (=> b!6172454 m!7008192))

(assert (=> b!6172454 m!7008662))

(assert (=> b!6172447 m!7008188))

(assert (=> b!6172447 m!7008188))

(declare-fun m!7008860 () Bool)

(assert (=> b!6172447 m!7008860))

(assert (=> b!6172447 m!7008192))

(assert (=> b!6172447 m!7008860))

(assert (=> b!6172447 m!7008192))

(declare-fun m!7008862 () Bool)

(assert (=> b!6172447 m!7008862))

(assert (=> b!6172457 m!7008188))

(assert (=> b!6171868 d!1934601))

(declare-fun b!6172460 () Bool)

(declare-fun e!3759960 () (InoxSet Context!10990))

(assert (=> b!6172460 (= e!3759960 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172461 () Bool)

(declare-fun e!3759959 () Bool)

(assert (=> b!6172461 (= e!3759959 (nullable!6104 (h!70956 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343))))))))))))))

(declare-fun b!6172462 () Bool)

(declare-fun call!514913 () (InoxSet Context!10990))

(assert (=> b!6172462 (= e!3759960 call!514913)))

(declare-fun e!3759961 () (InoxSet Context!10990))

(declare-fun b!6172463 () Bool)

(assert (=> b!6172463 (= e!3759961 ((_ map or) call!514913 (derivationStepZipperUp!1285 (Context!10991 (t!378134 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343))))))))))) (h!70958 s!2326))))))

(declare-fun b!6172464 () Bool)

(assert (=> b!6172464 (= e!3759961 e!3759960)))

(declare-fun c!1112385 () Bool)

(assert (=> b!6172464 (= c!1112385 ((_ is Cons!64508) (exprs!5995 (Context!10991 (t!378134 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))))))))

(declare-fun bm!514908 () Bool)

(assert (=> bm!514908 (= call!514913 (derivationStepZipperDown!1359 (h!70956 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))))) (Context!10991 (t!378134 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343))))))))))) (h!70958 s!2326)))))

(declare-fun d!1934603 () Bool)

(declare-fun c!1112386 () Bool)

(assert (=> d!1934603 (= c!1112386 e!3759959)))

(declare-fun res!2554851 () Bool)

(assert (=> d!1934603 (=> (not res!2554851) (not e!3759959))))

(assert (=> d!1934603 (= res!2554851 ((_ is Cons!64508) (exprs!5995 (Context!10991 (t!378134 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))))))))

(assert (=> d!1934603 (= (derivationStepZipperUp!1285 (Context!10991 (t!378134 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))) (h!70958 s!2326)) e!3759961)))

(assert (= (and d!1934603 res!2554851) b!6172461))

(assert (= (and d!1934603 c!1112386) b!6172463))

(assert (= (and d!1934603 (not c!1112386)) b!6172464))

(assert (= (and b!6172464 c!1112385) b!6172462))

(assert (= (and b!6172464 (not c!1112385)) b!6172460))

(assert (= (or b!6172463 b!6172462) bm!514908))

(declare-fun m!7008864 () Bool)

(assert (=> b!6172461 m!7008864))

(declare-fun m!7008866 () Bool)

(assert (=> b!6172463 m!7008866))

(declare-fun m!7008868 () Bool)

(assert (=> bm!514908 m!7008868))

(assert (=> b!6172089 d!1934603))

(declare-fun bm!514909 () Bool)

(declare-fun call!514916 () Bool)

(declare-fun call!514914 () Bool)

(assert (=> bm!514909 (= call!514916 call!514914)))

(declare-fun b!6172465 () Bool)

(declare-fun e!3759967 () Bool)

(declare-fun e!3759968 () Bool)

(assert (=> b!6172465 (= e!3759967 e!3759968)))

(declare-fun c!1112387 () Bool)

(assert (=> b!6172465 (= c!1112387 ((_ is Star!16111) (ite c!1112296 (regOne!32735 lt!2337293) (regOne!32734 lt!2337293))))))

(declare-fun b!6172466 () Bool)

(declare-fun res!2554853 () Bool)

(declare-fun e!3759963 () Bool)

(assert (=> b!6172466 (=> res!2554853 e!3759963)))

(assert (=> b!6172466 (= res!2554853 (not ((_ is Concat!24956) (ite c!1112296 (regOne!32735 lt!2337293) (regOne!32734 lt!2337293)))))))

(declare-fun e!3759962 () Bool)

(assert (=> b!6172466 (= e!3759962 e!3759963)))

(declare-fun b!6172467 () Bool)

(assert (=> b!6172467 (= e!3759968 e!3759962)))

(declare-fun c!1112388 () Bool)

(assert (=> b!6172467 (= c!1112388 ((_ is Union!16111) (ite c!1112296 (regOne!32735 lt!2337293) (regOne!32734 lt!2337293))))))

(declare-fun b!6172468 () Bool)

(declare-fun e!3759964 () Bool)

(assert (=> b!6172468 (= e!3759964 call!514916)))

(declare-fun b!6172469 () Bool)

(declare-fun e!3759965 () Bool)

(assert (=> b!6172469 (= e!3759965 call!514914)))

(declare-fun b!6172470 () Bool)

(assert (=> b!6172470 (= e!3759963 e!3759964)))

(declare-fun res!2554855 () Bool)

(assert (=> b!6172470 (=> (not res!2554855) (not e!3759964))))

(declare-fun call!514915 () Bool)

(assert (=> b!6172470 (= res!2554855 call!514915)))

(declare-fun b!6172471 () Bool)

(declare-fun res!2554852 () Bool)

(declare-fun e!3759966 () Bool)

(assert (=> b!6172471 (=> (not res!2554852) (not e!3759966))))

(assert (=> b!6172471 (= res!2554852 call!514915)))

(assert (=> b!6172471 (= e!3759962 e!3759966)))

(declare-fun b!6172472 () Bool)

(assert (=> b!6172472 (= e!3759968 e!3759965)))

(declare-fun res!2554854 () Bool)

(assert (=> b!6172472 (= res!2554854 (not (nullable!6104 (reg!16440 (ite c!1112296 (regOne!32735 lt!2337293) (regOne!32734 lt!2337293))))))))

(assert (=> b!6172472 (=> (not res!2554854) (not e!3759965))))

(declare-fun bm!514911 () Bool)

(assert (=> bm!514911 (= call!514914 (validRegex!7847 (ite c!1112387 (reg!16440 (ite c!1112296 (regOne!32735 lt!2337293) (regOne!32734 lt!2337293))) (ite c!1112388 (regTwo!32735 (ite c!1112296 (regOne!32735 lt!2337293) (regOne!32734 lt!2337293))) (regTwo!32734 (ite c!1112296 (regOne!32735 lt!2337293) (regOne!32734 lt!2337293)))))))))

(declare-fun b!6172473 () Bool)

(assert (=> b!6172473 (= e!3759966 call!514916)))

(declare-fun bm!514910 () Bool)

(assert (=> bm!514910 (= call!514915 (validRegex!7847 (ite c!1112388 (regOne!32735 (ite c!1112296 (regOne!32735 lt!2337293) (regOne!32734 lt!2337293))) (regOne!32734 (ite c!1112296 (regOne!32735 lt!2337293) (regOne!32734 lt!2337293))))))))

(declare-fun d!1934605 () Bool)

(declare-fun res!2554856 () Bool)

(assert (=> d!1934605 (=> res!2554856 e!3759967)))

(assert (=> d!1934605 (= res!2554856 ((_ is ElementMatch!16111) (ite c!1112296 (regOne!32735 lt!2337293) (regOne!32734 lt!2337293))))))

(assert (=> d!1934605 (= (validRegex!7847 (ite c!1112296 (regOne!32735 lt!2337293) (regOne!32734 lt!2337293))) e!3759967)))

(assert (= (and d!1934605 (not res!2554856)) b!6172465))

(assert (= (and b!6172465 c!1112387) b!6172472))

(assert (= (and b!6172465 (not c!1112387)) b!6172467))

(assert (= (and b!6172472 res!2554854) b!6172469))

(assert (= (and b!6172467 c!1112388) b!6172471))

(assert (= (and b!6172467 (not c!1112388)) b!6172466))

(assert (= (and b!6172471 res!2554852) b!6172473))

(assert (= (and b!6172466 (not res!2554853)) b!6172470))

(assert (= (and b!6172470 res!2554855) b!6172468))

(assert (= (or b!6172473 b!6172468) bm!514909))

(assert (= (or b!6172471 b!6172470) bm!514910))

(assert (= (or b!6172469 bm!514909) bm!514911))

(declare-fun m!7008870 () Bool)

(assert (=> b!6172472 m!7008870))

(declare-fun m!7008872 () Bool)

(assert (=> bm!514911 m!7008872))

(declare-fun m!7008874 () Bool)

(assert (=> bm!514910 m!7008874))

(assert (=> bm!514865 d!1934605))

(assert (=> d!1934351 d!1934363))

(declare-fun d!1934607 () Bool)

(assert (=> d!1934607 (= (flatMap!1616 lt!2337307 lambda!336831) (dynLambda!25439 lambda!336831 lt!2337309))))

(assert (=> d!1934607 true))

(declare-fun _$13!3137 () Unit!157667)

(assert (=> d!1934607 (= (choose!45873 lt!2337307 lt!2337309 lambda!336831) _$13!3137)))

(declare-fun b_lambda!234925 () Bool)

(assert (=> (not b_lambda!234925) (not d!1934607)))

(declare-fun bs!1530518 () Bool)

(assert (= bs!1530518 d!1934607))

(assert (=> bs!1530518 m!7008000))

(assert (=> bs!1530518 m!7008180))

(assert (=> d!1934351 d!1934607))

(declare-fun b!6172474 () Bool)

(declare-fun e!3759973 () Bool)

(assert (=> b!6172474 (= e!3759973 (nullable!6104 (regOne!32734 (ite c!1112345 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112341 (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112343 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))) (reg!16440 (regTwo!32735 (regOne!32734 r!7292)))))))))))

(declare-fun b!6172475 () Bool)

(declare-fun c!1112392 () Bool)

(assert (=> b!6172475 (= c!1112392 ((_ is Star!16111) (ite c!1112345 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112341 (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112343 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))) (reg!16440 (regTwo!32735 (regOne!32734 r!7292))))))))))

(declare-fun e!3759974 () (InoxSet Context!10990))

(declare-fun e!3759971 () (InoxSet Context!10990))

(assert (=> b!6172475 (= e!3759974 e!3759971)))

(declare-fun call!514919 () (InoxSet Context!10990))

(declare-fun c!1112391 () Bool)

(declare-fun c!1112393 () Bool)

(declare-fun c!1112389 () Bool)

(declare-fun call!514920 () List!64632)

(declare-fun bm!514912 () Bool)

(assert (=> bm!514912 (= call!514919 (derivationStepZipperDown!1359 (ite c!1112393 (regTwo!32735 (ite c!1112345 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112341 (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112343 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))) (reg!16440 (regTwo!32735 (regOne!32734 r!7292))))))) (ite c!1112389 (regTwo!32734 (ite c!1112345 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112341 (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112343 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))) (reg!16440 (regTwo!32735 (regOne!32734 r!7292))))))) (ite c!1112391 (regOne!32734 (ite c!1112345 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112341 (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112343 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))) (reg!16440 (regTwo!32735 (regOne!32734 r!7292))))))) (reg!16440 (ite c!1112345 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112341 (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112343 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))) (reg!16440 (regTwo!32735 (regOne!32734 r!7292)))))))))) (ite (or c!1112393 c!1112389) (ite (or c!1112345 c!1112341) lt!2337313 (Context!10991 call!514884)) (Context!10991 call!514920)) (h!70958 s!2326)))))

(declare-fun b!6172476 () Bool)

(declare-fun call!514918 () (InoxSet Context!10990))

(assert (=> b!6172476 (= e!3759971 call!514918)))

(declare-fun b!6172477 () Bool)

(declare-fun e!3759972 () (InoxSet Context!10990))

(assert (=> b!6172477 (= e!3759972 e!3759974)))

(assert (=> b!6172477 (= c!1112391 ((_ is Concat!24956) (ite c!1112345 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112341 (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112343 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))) (reg!16440 (regTwo!32735 (regOne!32734 r!7292))))))))))

(declare-fun bm!514913 () Bool)

(declare-fun call!514917 () List!64632)

(assert (=> bm!514913 (= call!514920 call!514917)))

(declare-fun d!1934609 () Bool)

(declare-fun c!1112390 () Bool)

(assert (=> d!1934609 (= c!1112390 (and ((_ is ElementMatch!16111) (ite c!1112345 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112341 (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112343 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))) (reg!16440 (regTwo!32735 (regOne!32734 r!7292))))))) (= (c!1112104 (ite c!1112345 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112341 (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112343 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))) (reg!16440 (regTwo!32735 (regOne!32734 r!7292))))))) (h!70958 s!2326))))))

(declare-fun e!3759970 () (InoxSet Context!10990))

(assert (=> d!1934609 (= (derivationStepZipperDown!1359 (ite c!1112345 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112341 (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112343 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))) (reg!16440 (regTwo!32735 (regOne!32734 r!7292)))))) (ite (or c!1112345 c!1112341) lt!2337313 (Context!10991 call!514884)) (h!70958 s!2326)) e!3759970)))

(declare-fun bm!514914 () Bool)

(assert (=> bm!514914 (= call!514917 ($colon$colon!1988 (exprs!5995 (ite (or c!1112345 c!1112341) lt!2337313 (Context!10991 call!514884))) (ite (or c!1112389 c!1112391) (regTwo!32734 (ite c!1112345 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112341 (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112343 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))) (reg!16440 (regTwo!32735 (regOne!32734 r!7292))))))) (ite c!1112345 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112341 (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112343 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))) (reg!16440 (regTwo!32735 (regOne!32734 r!7292)))))))))))

(declare-fun b!6172478 () Bool)

(assert (=> b!6172478 (= e!3759970 (store ((as const (Array Context!10990 Bool)) false) (ite (or c!1112345 c!1112341) lt!2337313 (Context!10991 call!514884)) true))))

(declare-fun b!6172479 () Bool)

(declare-fun e!3759969 () (InoxSet Context!10990))

(declare-fun call!514921 () (InoxSet Context!10990))

(assert (=> b!6172479 (= e!3759969 ((_ map or) call!514921 call!514919))))

(declare-fun bm!514915 () Bool)

(declare-fun call!514922 () (InoxSet Context!10990))

(assert (=> bm!514915 (= call!514918 call!514922)))

(declare-fun bm!514916 () Bool)

(assert (=> bm!514916 (= call!514922 call!514919)))

(declare-fun b!6172480 () Bool)

(assert (=> b!6172480 (= e!3759974 call!514918)))

(declare-fun bm!514917 () Bool)

(assert (=> bm!514917 (= call!514921 (derivationStepZipperDown!1359 (ite c!1112393 (regOne!32735 (ite c!1112345 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112341 (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112343 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))) (reg!16440 (regTwo!32735 (regOne!32734 r!7292))))))) (regOne!32734 (ite c!1112345 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112341 (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112343 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))) (reg!16440 (regTwo!32735 (regOne!32734 r!7292)))))))) (ite c!1112393 (ite (or c!1112345 c!1112341) lt!2337313 (Context!10991 call!514884)) (Context!10991 call!514917)) (h!70958 s!2326)))))

(declare-fun b!6172481 () Bool)

(assert (=> b!6172481 (= e!3759971 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172482 () Bool)

(assert (=> b!6172482 (= c!1112389 e!3759973)))

(declare-fun res!2554857 () Bool)

(assert (=> b!6172482 (=> (not res!2554857) (not e!3759973))))

(assert (=> b!6172482 (= res!2554857 ((_ is Concat!24956) (ite c!1112345 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112341 (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112343 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))) (reg!16440 (regTwo!32735 (regOne!32734 r!7292))))))))))

(assert (=> b!6172482 (= e!3759969 e!3759972)))

(declare-fun b!6172483 () Bool)

(assert (=> b!6172483 (= e!3759970 e!3759969)))

(assert (=> b!6172483 (= c!1112393 ((_ is Union!16111) (ite c!1112345 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112341 (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (ite c!1112343 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))) (reg!16440 (regTwo!32735 (regOne!32734 r!7292))))))))))

(declare-fun b!6172484 () Bool)

(assert (=> b!6172484 (= e!3759972 ((_ map or) call!514921 call!514922))))

(assert (= (and d!1934609 c!1112390) b!6172478))

(assert (= (and d!1934609 (not c!1112390)) b!6172483))

(assert (= (and b!6172483 c!1112393) b!6172479))

(assert (= (and b!6172483 (not c!1112393)) b!6172482))

(assert (= (and b!6172482 res!2554857) b!6172474))

(assert (= (and b!6172482 c!1112389) b!6172484))

(assert (= (and b!6172482 (not c!1112389)) b!6172477))

(assert (= (and b!6172477 c!1112391) b!6172480))

(assert (= (and b!6172477 (not c!1112391)) b!6172475))

(assert (= (and b!6172475 c!1112392) b!6172476))

(assert (= (and b!6172475 (not c!1112392)) b!6172481))

(assert (= (or b!6172480 b!6172476) bm!514913))

(assert (= (or b!6172480 b!6172476) bm!514915))

(assert (= (or b!6172484 bm!514913) bm!514914))

(assert (= (or b!6172484 bm!514915) bm!514916))

(assert (= (or b!6172479 bm!514916) bm!514912))

(assert (= (or b!6172479 b!6172484) bm!514917))

(declare-fun m!7008876 () Bool)

(assert (=> b!6172478 m!7008876))

(declare-fun m!7008878 () Bool)

(assert (=> bm!514914 m!7008878))

(declare-fun m!7008880 () Bool)

(assert (=> bm!514917 m!7008880))

(declare-fun m!7008882 () Bool)

(assert (=> bm!514912 m!7008882))

(declare-fun m!7008884 () Bool)

(assert (=> b!6172474 m!7008884))

(assert (=> bm!514876 d!1934609))

(declare-fun d!1934611 () Bool)

(assert (=> d!1934611 (= (isEmpty!36485 (tail!11828 (exprs!5995 (h!70957 zl!343)))) ((_ is Nil!64508) (tail!11828 (exprs!5995 (h!70957 zl!343)))))))

(assert (=> b!6171741 d!1934611))

(declare-fun d!1934613 () Bool)

(assert (=> d!1934613 (= (tail!11828 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343))))))

(assert (=> b!6171741 d!1934613))

(declare-fun d!1934615 () Bool)

(assert (=> d!1934615 (= (Exists!3181 (ite c!1112311 lambda!336881 lambda!336882)) (choose!45875 (ite c!1112311 lambda!336881 lambda!336882)))))

(declare-fun bs!1530519 () Bool)

(assert (= bs!1530519 d!1934615))

(declare-fun m!7008886 () Bool)

(assert (=> bs!1530519 m!7008886))

(assert (=> bm!514872 d!1934615))

(declare-fun d!1934617 () Bool)

(assert (=> d!1934617 (= (isEmpty!36489 (findConcatSeparation!2416 (regOne!32734 r!7292) (regTwo!32734 r!7292) Nil!64510 s!2326 s!2326)) (not ((_ is Some!16001) (findConcatSeparation!2416 (regOne!32734 r!7292) (regTwo!32734 r!7292) Nil!64510 s!2326 s!2326))))))

(assert (=> d!1934493 d!1934617))

(declare-fun bs!1530520 () Bool)

(declare-fun d!1934619 () Bool)

(assert (= bs!1530520 (and d!1934619 d!1934377)))

(declare-fun lambda!336902 () Int)

(assert (=> bs!1530520 (= lambda!336902 lambda!336849)))

(declare-fun bs!1530521 () Bool)

(assert (= bs!1530521 (and d!1934619 d!1934561)))

(assert (=> bs!1530521 (= lambda!336902 lambda!336890)))

(declare-fun bs!1530522 () Bool)

(assert (= bs!1530522 (and d!1934619 d!1934531)))

(assert (=> bs!1530522 (= lambda!336902 lambda!336885)))

(declare-fun bs!1530523 () Bool)

(assert (= bs!1530523 (and d!1934619 d!1934543)))

(assert (=> bs!1530523 (= lambda!336902 lambda!336889)))

(declare-fun bs!1530524 () Bool)

(assert (= bs!1530524 (and d!1934619 d!1934495)))

(assert (=> bs!1530524 (= lambda!336902 lambda!336875)))

(declare-fun bs!1530525 () Bool)

(assert (= bs!1530525 (and d!1934619 d!1934533)))

(assert (=> bs!1530525 (= lambda!336902 lambda!336888)))

(declare-fun bs!1530526 () Bool)

(assert (= bs!1530526 (and d!1934619 d!1934595)))

(assert (=> bs!1530526 (= lambda!336902 lambda!336901)))

(declare-fun bs!1530527 () Bool)

(assert (= bs!1530527 (and d!1934619 d!1934523)))

(assert (=> bs!1530527 (= lambda!336902 lambda!336876)))

(declare-fun bs!1530528 () Bool)

(assert (= bs!1530528 (and d!1934619 d!1934591)))

(assert (=> bs!1530528 (= lambda!336902 lambda!336900)))

(declare-fun b!6172485 () Bool)

(declare-fun e!3759975 () Regex!16111)

(declare-fun e!3759980 () Regex!16111)

(assert (=> b!6172485 (= e!3759975 e!3759980)))

(declare-fun c!1112397 () Bool)

(assert (=> b!6172485 (= c!1112397 ((_ is Cons!64508) (t!378134 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun e!3759979 () Bool)

(assert (=> d!1934619 e!3759979))

(declare-fun res!2554859 () Bool)

(assert (=> d!1934619 (=> (not res!2554859) (not e!3759979))))

(declare-fun lt!2337429 () Regex!16111)

(assert (=> d!1934619 (= res!2554859 (validRegex!7847 lt!2337429))))

(assert (=> d!1934619 (= lt!2337429 e!3759975)))

(declare-fun c!1112394 () Bool)

(declare-fun e!3759978 () Bool)

(assert (=> d!1934619 (= c!1112394 e!3759978)))

(declare-fun res!2554858 () Bool)

(assert (=> d!1934619 (=> (not res!2554858) (not e!3759978))))

(assert (=> d!1934619 (= res!2554858 ((_ is Cons!64508) (t!378134 (exprs!5995 (h!70957 zl!343)))))))

(assert (=> d!1934619 (forall!15231 (t!378134 (exprs!5995 (h!70957 zl!343))) lambda!336902)))

(assert (=> d!1934619 (= (generalisedConcat!1708 (t!378134 (exprs!5995 (h!70957 zl!343)))) lt!2337429)))

(declare-fun b!6172486 () Bool)

(assert (=> b!6172486 (= e!3759978 (isEmpty!36485 (t!378134 (t!378134 (exprs!5995 (h!70957 zl!343))))))))

(declare-fun b!6172487 () Bool)

(declare-fun e!3759977 () Bool)

(declare-fun e!3759976 () Bool)

(assert (=> b!6172487 (= e!3759977 e!3759976)))

(declare-fun c!1112396 () Bool)

(assert (=> b!6172487 (= c!1112396 (isEmpty!36485 (tail!11828 (t!378134 (exprs!5995 (h!70957 zl!343))))))))

(declare-fun b!6172488 () Bool)

(assert (=> b!6172488 (= e!3759979 e!3759977)))

(declare-fun c!1112395 () Bool)

(assert (=> b!6172488 (= c!1112395 (isEmpty!36485 (t!378134 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun b!6172489 () Bool)

(assert (=> b!6172489 (= e!3759980 EmptyExpr!16111)))

(declare-fun b!6172490 () Bool)

(assert (=> b!6172490 (= e!3759975 (h!70956 (t!378134 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun b!6172491 () Bool)

(assert (=> b!6172491 (= e!3759980 (Concat!24956 (h!70956 (t!378134 (exprs!5995 (h!70957 zl!343)))) (generalisedConcat!1708 (t!378134 (t!378134 (exprs!5995 (h!70957 zl!343)))))))))

(declare-fun b!6172492 () Bool)

(assert (=> b!6172492 (= e!3759976 (isConcat!1050 lt!2337429))))

(declare-fun b!6172493 () Bool)

(assert (=> b!6172493 (= e!3759976 (= lt!2337429 (head!12743 (t!378134 (exprs!5995 (h!70957 zl!343))))))))

(declare-fun b!6172494 () Bool)

(assert (=> b!6172494 (= e!3759977 (isEmptyExpr!1527 lt!2337429))))

(assert (= (and d!1934619 res!2554858) b!6172486))

(assert (= (and d!1934619 c!1112394) b!6172490))

(assert (= (and d!1934619 (not c!1112394)) b!6172485))

(assert (= (and b!6172485 c!1112397) b!6172491))

(assert (= (and b!6172485 (not c!1112397)) b!6172489))

(assert (= (and d!1934619 res!2554859) b!6172488))

(assert (= (and b!6172488 c!1112395) b!6172494))

(assert (= (and b!6172488 (not c!1112395)) b!6172487))

(assert (= (and b!6172487 c!1112396) b!6172493))

(assert (= (and b!6172487 (not c!1112396)) b!6172492))

(assert (=> b!6172488 m!7007976))

(declare-fun m!7008888 () Bool)

(assert (=> b!6172494 m!7008888))

(declare-fun m!7008890 () Bool)

(assert (=> b!6172491 m!7008890))

(declare-fun m!7008892 () Bool)

(assert (=> d!1934619 m!7008892))

(declare-fun m!7008894 () Bool)

(assert (=> d!1934619 m!7008894))

(declare-fun m!7008896 () Bool)

(assert (=> b!6172492 m!7008896))

(declare-fun m!7008898 () Bool)

(assert (=> b!6172487 m!7008898))

(assert (=> b!6172487 m!7008898))

(declare-fun m!7008900 () Bool)

(assert (=> b!6172487 m!7008900))

(declare-fun m!7008902 () Bool)

(assert (=> b!6172493 m!7008902))

(declare-fun m!7008904 () Bool)

(assert (=> b!6172486 m!7008904))

(assert (=> b!6171745 d!1934619))

(declare-fun bs!1530529 () Bool)

(declare-fun d!1934621 () Bool)

(assert (= bs!1530529 (and d!1934621 d!1934583)))

(declare-fun lambda!336903 () Int)

(assert (=> bs!1530529 (= lambda!336903 lambda!336896)))

(assert (=> d!1934621 (= (nullableZipper!1892 lt!2337296) (exists!2455 lt!2337296 lambda!336903))))

(declare-fun bs!1530530 () Bool)

(assert (= bs!1530530 d!1934621))

(declare-fun m!7008906 () Bool)

(assert (=> bs!1530530 m!7008906))

(assert (=> b!6172276 d!1934621))

(assert (=> bs!1530483 d!1934367))

(declare-fun d!1934623 () Bool)

(assert (=> d!1934623 (= ($colon$colon!1988 (exprs!5995 lt!2337313) (ite (or c!1112341 c!1112343) (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (regTwo!32735 (regOne!32734 r!7292)))) (Cons!64508 (ite (or c!1112341 c!1112343) (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))) (regTwo!32735 (regOne!32734 r!7292))) (exprs!5995 lt!2337313)))))

(assert (=> bm!514878 d!1934623))

(assert (=> b!6172092 d!1934507))

(assert (=> b!6171527 d!1934343))

(declare-fun bm!514918 () Bool)

(declare-fun call!514925 () Bool)

(declare-fun call!514923 () Bool)

(assert (=> bm!514918 (= call!514925 call!514923)))

(declare-fun b!6172495 () Bool)

(declare-fun e!3759986 () Bool)

(declare-fun e!3759987 () Bool)

(assert (=> b!6172495 (= e!3759986 e!3759987)))

(declare-fun c!1112398 () Bool)

(assert (=> b!6172495 (= c!1112398 ((_ is Star!16111) lt!2337338))))

(declare-fun b!6172496 () Bool)

(declare-fun res!2554861 () Bool)

(declare-fun e!3759982 () Bool)

(assert (=> b!6172496 (=> res!2554861 e!3759982)))

(assert (=> b!6172496 (= res!2554861 (not ((_ is Concat!24956) lt!2337338)))))

(declare-fun e!3759981 () Bool)

(assert (=> b!6172496 (= e!3759981 e!3759982)))

(declare-fun b!6172497 () Bool)

(assert (=> b!6172497 (= e!3759987 e!3759981)))

(declare-fun c!1112399 () Bool)

(assert (=> b!6172497 (= c!1112399 ((_ is Union!16111) lt!2337338))))

(declare-fun b!6172498 () Bool)

(declare-fun e!3759983 () Bool)

(assert (=> b!6172498 (= e!3759983 call!514925)))

(declare-fun b!6172499 () Bool)

(declare-fun e!3759984 () Bool)

(assert (=> b!6172499 (= e!3759984 call!514923)))

(declare-fun b!6172500 () Bool)

(assert (=> b!6172500 (= e!3759982 e!3759983)))

(declare-fun res!2554863 () Bool)

(assert (=> b!6172500 (=> (not res!2554863) (not e!3759983))))

(declare-fun call!514924 () Bool)

(assert (=> b!6172500 (= res!2554863 call!514924)))

(declare-fun b!6172501 () Bool)

(declare-fun res!2554860 () Bool)

(declare-fun e!3759985 () Bool)

(assert (=> b!6172501 (=> (not res!2554860) (not e!3759985))))

(assert (=> b!6172501 (= res!2554860 call!514924)))

(assert (=> b!6172501 (= e!3759981 e!3759985)))

(declare-fun b!6172502 () Bool)

(assert (=> b!6172502 (= e!3759987 e!3759984)))

(declare-fun res!2554862 () Bool)

(assert (=> b!6172502 (= res!2554862 (not (nullable!6104 (reg!16440 lt!2337338))))))

(assert (=> b!6172502 (=> (not res!2554862) (not e!3759984))))

(declare-fun bm!514920 () Bool)

(assert (=> bm!514920 (= call!514923 (validRegex!7847 (ite c!1112398 (reg!16440 lt!2337338) (ite c!1112399 (regTwo!32735 lt!2337338) (regTwo!32734 lt!2337338)))))))

(declare-fun b!6172503 () Bool)

(assert (=> b!6172503 (= e!3759985 call!514925)))

(declare-fun bm!514919 () Bool)

(assert (=> bm!514919 (= call!514924 (validRegex!7847 (ite c!1112399 (regOne!32735 lt!2337338) (regOne!32734 lt!2337338))))))

(declare-fun d!1934625 () Bool)

(declare-fun res!2554864 () Bool)

(assert (=> d!1934625 (=> res!2554864 e!3759986)))

(assert (=> d!1934625 (= res!2554864 ((_ is ElementMatch!16111) lt!2337338))))

(assert (=> d!1934625 (= (validRegex!7847 lt!2337338) e!3759986)))

(assert (= (and d!1934625 (not res!2554864)) b!6172495))

(assert (= (and b!6172495 c!1112398) b!6172502))

(assert (= (and b!6172495 (not c!1112398)) b!6172497))

(assert (= (and b!6172502 res!2554862) b!6172499))

(assert (= (and b!6172497 c!1112399) b!6172501))

(assert (= (and b!6172497 (not c!1112399)) b!6172496))

(assert (= (and b!6172501 res!2554860) b!6172503))

(assert (= (and b!6172496 (not res!2554861)) b!6172500))

(assert (= (and b!6172500 res!2554863) b!6172498))

(assert (= (or b!6172503 b!6172498) bm!514918))

(assert (= (or b!6172501 b!6172500) bm!514919))

(assert (= (or b!6172499 bm!514918) bm!514920))

(declare-fun m!7008908 () Bool)

(assert (=> b!6172502 m!7008908))

(declare-fun m!7008910 () Bool)

(assert (=> bm!514920 m!7008910))

(declare-fun m!7008912 () Bool)

(assert (=> bm!514919 m!7008912))

(assert (=> d!1934335 d!1934625))

(declare-fun bs!1530531 () Bool)

(declare-fun d!1934627 () Bool)

(assert (= bs!1530531 (and d!1934627 d!1934377)))

(declare-fun lambda!336904 () Int)

(assert (=> bs!1530531 (= lambda!336904 lambda!336849)))

(declare-fun bs!1530532 () Bool)

(assert (= bs!1530532 (and d!1934627 d!1934561)))

(assert (=> bs!1530532 (= lambda!336904 lambda!336890)))

(declare-fun bs!1530533 () Bool)

(assert (= bs!1530533 (and d!1934627 d!1934531)))

(assert (=> bs!1530533 (= lambda!336904 lambda!336885)))

(declare-fun bs!1530534 () Bool)

(assert (= bs!1530534 (and d!1934627 d!1934543)))

(assert (=> bs!1530534 (= lambda!336904 lambda!336889)))

(declare-fun bs!1530535 () Bool)

(assert (= bs!1530535 (and d!1934627 d!1934619)))

(assert (=> bs!1530535 (= lambda!336904 lambda!336902)))

(declare-fun bs!1530536 () Bool)

(assert (= bs!1530536 (and d!1934627 d!1934495)))

(assert (=> bs!1530536 (= lambda!336904 lambda!336875)))

(declare-fun bs!1530537 () Bool)

(assert (= bs!1530537 (and d!1934627 d!1934533)))

(assert (=> bs!1530537 (= lambda!336904 lambda!336888)))

(declare-fun bs!1530538 () Bool)

(assert (= bs!1530538 (and d!1934627 d!1934595)))

(assert (=> bs!1530538 (= lambda!336904 lambda!336901)))

(declare-fun bs!1530539 () Bool)

(assert (= bs!1530539 (and d!1934627 d!1934523)))

(assert (=> bs!1530539 (= lambda!336904 lambda!336876)))

(declare-fun bs!1530540 () Bool)

(assert (= bs!1530540 (and d!1934627 d!1934591)))

(assert (=> bs!1530540 (= lambda!336904 lambda!336900)))

(declare-fun b!6172504 () Bool)

(declare-fun e!3759988 () Bool)

(assert (=> b!6172504 (= e!3759988 (isEmpty!36485 (t!378134 (unfocusZipperList!1532 lt!2337299))))))

(declare-fun b!6172505 () Bool)

(declare-fun e!3759990 () Regex!16111)

(declare-fun e!3759989 () Regex!16111)

(assert (=> b!6172505 (= e!3759990 e!3759989)))

(declare-fun c!1112400 () Bool)

(assert (=> b!6172505 (= c!1112400 ((_ is Cons!64508) (unfocusZipperList!1532 lt!2337299)))))

(declare-fun b!6172506 () Bool)

(declare-fun e!3759992 () Bool)

(declare-fun lt!2337430 () Regex!16111)

(assert (=> b!6172506 (= e!3759992 (isEmptyLang!1537 lt!2337430))))

(declare-fun b!6172507 () Bool)

(declare-fun e!3759991 () Bool)

(assert (=> b!6172507 (= e!3759991 e!3759992)))

(declare-fun c!1112402 () Bool)

(assert (=> b!6172507 (= c!1112402 (isEmpty!36485 (unfocusZipperList!1532 lt!2337299)))))

(declare-fun b!6172508 () Bool)

(assert (=> b!6172508 (= e!3759989 EmptyLang!16111)))

(declare-fun b!6172509 () Bool)

(declare-fun e!3759993 () Bool)

(assert (=> b!6172509 (= e!3759992 e!3759993)))

(declare-fun c!1112401 () Bool)

(assert (=> b!6172509 (= c!1112401 (isEmpty!36485 (tail!11828 (unfocusZipperList!1532 lt!2337299))))))

(assert (=> d!1934627 e!3759991))

(declare-fun res!2554866 () Bool)

(assert (=> d!1934627 (=> (not res!2554866) (not e!3759991))))

(assert (=> d!1934627 (= res!2554866 (validRegex!7847 lt!2337430))))

(assert (=> d!1934627 (= lt!2337430 e!3759990)))

(declare-fun c!1112403 () Bool)

(assert (=> d!1934627 (= c!1112403 e!3759988)))

(declare-fun res!2554865 () Bool)

(assert (=> d!1934627 (=> (not res!2554865) (not e!3759988))))

(assert (=> d!1934627 (= res!2554865 ((_ is Cons!64508) (unfocusZipperList!1532 lt!2337299)))))

(assert (=> d!1934627 (forall!15231 (unfocusZipperList!1532 lt!2337299) lambda!336904)))

(assert (=> d!1934627 (= (generalisedUnion!1955 (unfocusZipperList!1532 lt!2337299)) lt!2337430)))

(declare-fun b!6172510 () Bool)

(assert (=> b!6172510 (= e!3759993 (= lt!2337430 (head!12743 (unfocusZipperList!1532 lt!2337299))))))

(declare-fun b!6172511 () Bool)

(assert (=> b!6172511 (= e!3759993 (isUnion!968 lt!2337430))))

(declare-fun b!6172512 () Bool)

(assert (=> b!6172512 (= e!3759990 (h!70956 (unfocusZipperList!1532 lt!2337299)))))

(declare-fun b!6172513 () Bool)

(assert (=> b!6172513 (= e!3759989 (Union!16111 (h!70956 (unfocusZipperList!1532 lt!2337299)) (generalisedUnion!1955 (t!378134 (unfocusZipperList!1532 lt!2337299)))))))

(assert (= (and d!1934627 res!2554865) b!6172504))

(assert (= (and d!1934627 c!1112403) b!6172512))

(assert (= (and d!1934627 (not c!1112403)) b!6172505))

(assert (= (and b!6172505 c!1112400) b!6172513))

(assert (= (and b!6172505 (not c!1112400)) b!6172508))

(assert (= (and d!1934627 res!2554866) b!6172507))

(assert (= (and b!6172507 c!1112402) b!6172506))

(assert (= (and b!6172507 (not c!1112402)) b!6172509))

(assert (= (and b!6172509 c!1112401) b!6172510))

(assert (= (and b!6172509 (not c!1112401)) b!6172511))

(declare-fun m!7008914 () Bool)

(assert (=> b!6172506 m!7008914))

(assert (=> b!6172509 m!7008152))

(declare-fun m!7008916 () Bool)

(assert (=> b!6172509 m!7008916))

(assert (=> b!6172509 m!7008916))

(declare-fun m!7008918 () Bool)

(assert (=> b!6172509 m!7008918))

(declare-fun m!7008920 () Bool)

(assert (=> b!6172513 m!7008920))

(assert (=> b!6172507 m!7008152))

(declare-fun m!7008922 () Bool)

(assert (=> b!6172507 m!7008922))

(declare-fun m!7008924 () Bool)

(assert (=> b!6172511 m!7008924))

(declare-fun m!7008926 () Bool)

(assert (=> b!6172504 m!7008926))

(assert (=> b!6172510 m!7008152))

(declare-fun m!7008928 () Bool)

(assert (=> b!6172510 m!7008928))

(declare-fun m!7008930 () Bool)

(assert (=> d!1934627 m!7008930))

(assert (=> d!1934627 m!7008152))

(declare-fun m!7008932 () Bool)

(assert (=> d!1934627 m!7008932))

(assert (=> d!1934335 d!1934627))

(declare-fun bs!1530541 () Bool)

(declare-fun d!1934629 () Bool)

(assert (= bs!1530541 (and d!1934629 d!1934377)))

(declare-fun lambda!336905 () Int)

(assert (=> bs!1530541 (= lambda!336905 lambda!336849)))

(declare-fun bs!1530542 () Bool)

(assert (= bs!1530542 (and d!1934629 d!1934561)))

(assert (=> bs!1530542 (= lambda!336905 lambda!336890)))

(declare-fun bs!1530543 () Bool)

(assert (= bs!1530543 (and d!1934629 d!1934531)))

(assert (=> bs!1530543 (= lambda!336905 lambda!336885)))

(declare-fun bs!1530544 () Bool)

(assert (= bs!1530544 (and d!1934629 d!1934543)))

(assert (=> bs!1530544 (= lambda!336905 lambda!336889)))

(declare-fun bs!1530545 () Bool)

(assert (= bs!1530545 (and d!1934629 d!1934619)))

(assert (=> bs!1530545 (= lambda!336905 lambda!336902)))

(declare-fun bs!1530546 () Bool)

(assert (= bs!1530546 (and d!1934629 d!1934627)))

(assert (=> bs!1530546 (= lambda!336905 lambda!336904)))

(declare-fun bs!1530547 () Bool)

(assert (= bs!1530547 (and d!1934629 d!1934495)))

(assert (=> bs!1530547 (= lambda!336905 lambda!336875)))

(declare-fun bs!1530548 () Bool)

(assert (= bs!1530548 (and d!1934629 d!1934533)))

(assert (=> bs!1530548 (= lambda!336905 lambda!336888)))

(declare-fun bs!1530549 () Bool)

(assert (= bs!1530549 (and d!1934629 d!1934595)))

(assert (=> bs!1530549 (= lambda!336905 lambda!336901)))

(declare-fun bs!1530550 () Bool)

(assert (= bs!1530550 (and d!1934629 d!1934523)))

(assert (=> bs!1530550 (= lambda!336905 lambda!336876)))

(declare-fun bs!1530551 () Bool)

(assert (= bs!1530551 (and d!1934629 d!1934591)))

(assert (=> bs!1530551 (= lambda!336905 lambda!336900)))

(declare-fun lt!2337431 () List!64632)

(assert (=> d!1934629 (forall!15231 lt!2337431 lambda!336905)))

(declare-fun e!3759994 () List!64632)

(assert (=> d!1934629 (= lt!2337431 e!3759994)))

(declare-fun c!1112404 () Bool)

(assert (=> d!1934629 (= c!1112404 ((_ is Cons!64509) lt!2337299))))

(assert (=> d!1934629 (= (unfocusZipperList!1532 lt!2337299) lt!2337431)))

(declare-fun b!6172514 () Bool)

(assert (=> b!6172514 (= e!3759994 (Cons!64508 (generalisedConcat!1708 (exprs!5995 (h!70957 lt!2337299))) (unfocusZipperList!1532 (t!378135 lt!2337299))))))

(declare-fun b!6172515 () Bool)

(assert (=> b!6172515 (= e!3759994 Nil!64508)))

(assert (= (and d!1934629 c!1112404) b!6172514))

(assert (= (and d!1934629 (not c!1112404)) b!6172515))

(declare-fun m!7008934 () Bool)

(assert (=> d!1934629 m!7008934))

(declare-fun m!7008936 () Bool)

(assert (=> b!6172514 m!7008936))

(declare-fun m!7008938 () Bool)

(assert (=> b!6172514 m!7008938))

(assert (=> d!1934335 d!1934629))

(declare-fun d!1934631 () Bool)

(declare-fun e!3760000 () Bool)

(assert (=> d!1934631 e!3760000))

(declare-fun res!2554871 () Bool)

(assert (=> d!1934631 (=> (not res!2554871) (not e!3760000))))

(declare-fun lt!2337434 () List!64634)

(declare-fun content!12041 (List!64634) (InoxSet C!32492))

(assert (=> d!1934631 (= res!2554871 (= (content!12041 lt!2337434) ((_ map or) (content!12041 (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) Nil!64510))) (content!12041 (t!378136 s!2326)))))))

(declare-fun e!3759999 () List!64634)

(assert (=> d!1934631 (= lt!2337434 e!3759999)))

(declare-fun c!1112407 () Bool)

(assert (=> d!1934631 (= c!1112407 ((_ is Nil!64510) (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) Nil!64510))))))

(assert (=> d!1934631 (= (++!14197 (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) Nil!64510)) (t!378136 s!2326)) lt!2337434)))

(declare-fun b!6172526 () Bool)

(declare-fun res!2554872 () Bool)

(assert (=> b!6172526 (=> (not res!2554872) (not e!3760000))))

(declare-fun size!40249 (List!64634) Int)

(assert (=> b!6172526 (= res!2554872 (= (size!40249 lt!2337434) (+ (size!40249 (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) Nil!64510))) (size!40249 (t!378136 s!2326)))))))

(declare-fun b!6172525 () Bool)

(assert (=> b!6172525 (= e!3759999 (Cons!64510 (h!70958 (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) Nil!64510))) (++!14197 (t!378136 (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) Nil!64510))) (t!378136 s!2326))))))

(declare-fun b!6172524 () Bool)

(assert (=> b!6172524 (= e!3759999 (t!378136 s!2326))))

(declare-fun b!6172527 () Bool)

(assert (=> b!6172527 (= e!3760000 (or (not (= (t!378136 s!2326) Nil!64510)) (= lt!2337434 (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) Nil!64510)))))))

(assert (= (and d!1934631 c!1112407) b!6172524))

(assert (= (and d!1934631 (not c!1112407)) b!6172525))

(assert (= (and d!1934631 res!2554871) b!6172526))

(assert (= (and b!6172526 res!2554872) b!6172527))

(declare-fun m!7008940 () Bool)

(assert (=> d!1934631 m!7008940))

(assert (=> d!1934631 m!7008414))

(declare-fun m!7008942 () Bool)

(assert (=> d!1934631 m!7008942))

(declare-fun m!7008944 () Bool)

(assert (=> d!1934631 m!7008944))

(declare-fun m!7008946 () Bool)

(assert (=> b!6172526 m!7008946))

(assert (=> b!6172526 m!7008414))

(declare-fun m!7008948 () Bool)

(assert (=> b!6172526 m!7008948))

(declare-fun m!7008950 () Bool)

(assert (=> b!6172526 m!7008950))

(declare-fun m!7008952 () Bool)

(assert (=> b!6172525 m!7008952))

(assert (=> b!6171872 d!1934631))

(declare-fun d!1934633 () Bool)

(declare-fun e!3760002 () Bool)

(assert (=> d!1934633 e!3760002))

(declare-fun res!2554873 () Bool)

(assert (=> d!1934633 (=> (not res!2554873) (not e!3760002))))

(declare-fun lt!2337435 () List!64634)

(assert (=> d!1934633 (= res!2554873 (= (content!12041 lt!2337435) ((_ map or) (content!12041 Nil!64510) (content!12041 (Cons!64510 (h!70958 s!2326) Nil!64510)))))))

(declare-fun e!3760001 () List!64634)

(assert (=> d!1934633 (= lt!2337435 e!3760001)))

(declare-fun c!1112408 () Bool)

(assert (=> d!1934633 (= c!1112408 ((_ is Nil!64510) Nil!64510))))

(assert (=> d!1934633 (= (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) Nil!64510)) lt!2337435)))

(declare-fun b!6172530 () Bool)

(declare-fun res!2554874 () Bool)

(assert (=> b!6172530 (=> (not res!2554874) (not e!3760002))))

(assert (=> b!6172530 (= res!2554874 (= (size!40249 lt!2337435) (+ (size!40249 Nil!64510) (size!40249 (Cons!64510 (h!70958 s!2326) Nil!64510)))))))

(declare-fun b!6172529 () Bool)

(assert (=> b!6172529 (= e!3760001 (Cons!64510 (h!70958 Nil!64510) (++!14197 (t!378136 Nil!64510) (Cons!64510 (h!70958 s!2326) Nil!64510))))))

(declare-fun b!6172528 () Bool)

(assert (=> b!6172528 (= e!3760001 (Cons!64510 (h!70958 s!2326) Nil!64510))))

(declare-fun b!6172531 () Bool)

(assert (=> b!6172531 (= e!3760002 (or (not (= (Cons!64510 (h!70958 s!2326) Nil!64510) Nil!64510)) (= lt!2337435 Nil!64510)))))

(assert (= (and d!1934633 c!1112408) b!6172528))

(assert (= (and d!1934633 (not c!1112408)) b!6172529))

(assert (= (and d!1934633 res!2554873) b!6172530))

(assert (= (and b!6172530 res!2554874) b!6172531))

(declare-fun m!7008954 () Bool)

(assert (=> d!1934633 m!7008954))

(declare-fun m!7008956 () Bool)

(assert (=> d!1934633 m!7008956))

(declare-fun m!7008958 () Bool)

(assert (=> d!1934633 m!7008958))

(declare-fun m!7008960 () Bool)

(assert (=> b!6172530 m!7008960))

(declare-fun m!7008962 () Bool)

(assert (=> b!6172530 m!7008962))

(declare-fun m!7008964 () Bool)

(assert (=> b!6172530 m!7008964))

(declare-fun m!7008966 () Bool)

(assert (=> b!6172529 m!7008966))

(assert (=> b!6171872 d!1934633))

(declare-fun d!1934635 () Bool)

(assert (=> d!1934635 (= (++!14197 (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) Nil!64510)) (t!378136 s!2326)) s!2326)))

(declare-fun lt!2337438 () Unit!157667)

(declare-fun choose!45879 (List!64634 C!32492 List!64634 List!64634) Unit!157667)

(assert (=> d!1934635 (= lt!2337438 (choose!45879 Nil!64510 (h!70958 s!2326) (t!378136 s!2326) s!2326))))

(assert (=> d!1934635 (= (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) (t!378136 s!2326))) s!2326)))

(assert (=> d!1934635 (= (lemmaMoveElementToOtherListKeepsConcatEq!2292 Nil!64510 (h!70958 s!2326) (t!378136 s!2326) s!2326) lt!2337438)))

(declare-fun bs!1530552 () Bool)

(assert (= bs!1530552 d!1934635))

(assert (=> bs!1530552 m!7008414))

(assert (=> bs!1530552 m!7008414))

(assert (=> bs!1530552 m!7008416))

(declare-fun m!7008968 () Bool)

(assert (=> bs!1530552 m!7008968))

(declare-fun m!7008970 () Bool)

(assert (=> bs!1530552 m!7008970))

(assert (=> b!6171872 d!1934635))

(declare-fun b!6172532 () Bool)

(declare-fun res!2554878 () Bool)

(declare-fun e!3760003 () Bool)

(assert (=> b!6172532 (=> (not res!2554878) (not e!3760003))))

(declare-fun lt!2337440 () Option!16002)

(assert (=> b!6172532 (= res!2554878 (matchR!8294 (regTwo!32734 r!7292) (_2!36393 (get!22268 lt!2337440))))))

(declare-fun b!6172533 () Bool)

(declare-fun e!3760004 () Bool)

(assert (=> b!6172533 (= e!3760004 (matchR!8294 (regTwo!32734 r!7292) (t!378136 s!2326)))))

(declare-fun b!6172535 () Bool)

(declare-fun res!2554877 () Bool)

(assert (=> b!6172535 (=> (not res!2554877) (not e!3760003))))

(assert (=> b!6172535 (= res!2554877 (matchR!8294 (regOne!32734 r!7292) (_1!36393 (get!22268 lt!2337440))))))

(declare-fun b!6172536 () Bool)

(declare-fun e!3760006 () Option!16002)

(declare-fun e!3760007 () Option!16002)

(assert (=> b!6172536 (= e!3760006 e!3760007)))

(declare-fun c!1112410 () Bool)

(assert (=> b!6172536 (= c!1112410 ((_ is Nil!64510) (t!378136 s!2326)))))

(declare-fun b!6172537 () Bool)

(declare-fun lt!2337441 () Unit!157667)

(declare-fun lt!2337439 () Unit!157667)

(assert (=> b!6172537 (= lt!2337441 lt!2337439)))

(assert (=> b!6172537 (= (++!14197 (++!14197 (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) Nil!64510)) (Cons!64510 (h!70958 (t!378136 s!2326)) Nil!64510)) (t!378136 (t!378136 s!2326))) s!2326)))

(assert (=> b!6172537 (= lt!2337439 (lemmaMoveElementToOtherListKeepsConcatEq!2292 (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) Nil!64510)) (h!70958 (t!378136 s!2326)) (t!378136 (t!378136 s!2326)) s!2326))))

(assert (=> b!6172537 (= e!3760007 (findConcatSeparation!2416 (regOne!32734 r!7292) (regTwo!32734 r!7292) (++!14197 (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) Nil!64510)) (Cons!64510 (h!70958 (t!378136 s!2326)) Nil!64510)) (t!378136 (t!378136 s!2326)) s!2326))))

(declare-fun b!6172538 () Bool)

(assert (=> b!6172538 (= e!3760006 (Some!16001 (tuple2!66181 (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) Nil!64510)) (t!378136 s!2326))))))

(declare-fun b!6172534 () Bool)

(declare-fun e!3760005 () Bool)

(assert (=> b!6172534 (= e!3760005 (not (isDefined!12705 lt!2337440)))))

(declare-fun d!1934637 () Bool)

(assert (=> d!1934637 e!3760005))

(declare-fun res!2554879 () Bool)

(assert (=> d!1934637 (=> res!2554879 e!3760005)))

(assert (=> d!1934637 (= res!2554879 e!3760003)))

(declare-fun res!2554876 () Bool)

(assert (=> d!1934637 (=> (not res!2554876) (not e!3760003))))

(assert (=> d!1934637 (= res!2554876 (isDefined!12705 lt!2337440))))

(assert (=> d!1934637 (= lt!2337440 e!3760006)))

(declare-fun c!1112409 () Bool)

(assert (=> d!1934637 (= c!1112409 e!3760004)))

(declare-fun res!2554875 () Bool)

(assert (=> d!1934637 (=> (not res!2554875) (not e!3760004))))

(assert (=> d!1934637 (= res!2554875 (matchR!8294 (regOne!32734 r!7292) (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) Nil!64510))))))

(assert (=> d!1934637 (validRegex!7847 (regOne!32734 r!7292))))

(assert (=> d!1934637 (= (findConcatSeparation!2416 (regOne!32734 r!7292) (regTwo!32734 r!7292) (++!14197 Nil!64510 (Cons!64510 (h!70958 s!2326) Nil!64510)) (t!378136 s!2326) s!2326) lt!2337440)))

(declare-fun b!6172539 () Bool)

(assert (=> b!6172539 (= e!3760007 None!16001)))

(declare-fun b!6172540 () Bool)

(assert (=> b!6172540 (= e!3760003 (= (++!14197 (_1!36393 (get!22268 lt!2337440)) (_2!36393 (get!22268 lt!2337440))) s!2326))))

(assert (= (and d!1934637 res!2554875) b!6172533))

(assert (= (and d!1934637 c!1112409) b!6172538))

(assert (= (and d!1934637 (not c!1112409)) b!6172536))

(assert (= (and b!6172536 c!1112410) b!6172539))

(assert (= (and b!6172536 (not c!1112410)) b!6172537))

(assert (= (and d!1934637 res!2554876) b!6172535))

(assert (= (and b!6172535 res!2554877) b!6172532))

(assert (= (and b!6172532 res!2554878) b!6172540))

(assert (= (and d!1934637 (not res!2554879)) b!6172534))

(assert (=> b!6172537 m!7008414))

(declare-fun m!7008972 () Bool)

(assert (=> b!6172537 m!7008972))

(assert (=> b!6172537 m!7008972))

(declare-fun m!7008974 () Bool)

(assert (=> b!6172537 m!7008974))

(assert (=> b!6172537 m!7008414))

(declare-fun m!7008976 () Bool)

(assert (=> b!6172537 m!7008976))

(assert (=> b!6172537 m!7008972))

(declare-fun m!7008978 () Bool)

(assert (=> b!6172537 m!7008978))

(declare-fun m!7008980 () Bool)

(assert (=> b!6172535 m!7008980))

(declare-fun m!7008982 () Bool)

(assert (=> b!6172535 m!7008982))

(assert (=> b!6172540 m!7008980))

(declare-fun m!7008984 () Bool)

(assert (=> b!6172540 m!7008984))

(declare-fun m!7008986 () Bool)

(assert (=> d!1934637 m!7008986))

(assert (=> d!1934637 m!7008414))

(declare-fun m!7008988 () Bool)

(assert (=> d!1934637 m!7008988))

(assert (=> d!1934637 m!7008432))

(assert (=> b!6172534 m!7008986))

(assert (=> b!6172532 m!7008980))

(declare-fun m!7008990 () Bool)

(assert (=> b!6172532 m!7008990))

(declare-fun m!7008992 () Bool)

(assert (=> b!6172533 m!7008992))

(assert (=> b!6171872 d!1934637))

(declare-fun d!1934639 () Bool)

(assert (=> d!1934639 (= (nullable!6104 (reg!16440 lt!2337293)) (nullableFct!2068 (reg!16440 lt!2337293)))))

(declare-fun bs!1530553 () Bool)

(assert (= bs!1530553 d!1934639))

(declare-fun m!7008994 () Bool)

(assert (=> bs!1530553 m!7008994))

(assert (=> b!6172141 d!1934639))

(declare-fun b!6172541 () Bool)

(declare-fun e!3760012 () Bool)

(assert (=> b!6172541 (= e!3760012 (nullable!6104 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343))))))))

(declare-fun b!6172542 () Bool)

(declare-fun c!1112414 () Bool)

(assert (=> b!6172542 (= c!1112414 ((_ is Star!16111) (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun e!3760013 () (InoxSet Context!10990))

(declare-fun e!3760010 () (InoxSet Context!10990))

(assert (=> b!6172542 (= e!3760013 e!3760010)))

(declare-fun call!514929 () List!64632)

(declare-fun bm!514921 () Bool)

(declare-fun call!514928 () (InoxSet Context!10990))

(declare-fun c!1112413 () Bool)

(declare-fun c!1112411 () Bool)

(declare-fun c!1112415 () Bool)

(assert (=> bm!514921 (= call!514928 (derivationStepZipperDown!1359 (ite c!1112415 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112411 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112413 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343))))))) (ite (or c!1112415 c!1112411) (Context!10991 (t!378134 (exprs!5995 (h!70957 zl!343)))) (Context!10991 call!514929)) (h!70958 s!2326)))))

(declare-fun b!6172543 () Bool)

(declare-fun call!514927 () (InoxSet Context!10990))

(assert (=> b!6172543 (= e!3760010 call!514927)))

(declare-fun b!6172544 () Bool)

(declare-fun e!3760011 () (InoxSet Context!10990))

(assert (=> b!6172544 (= e!3760011 e!3760013)))

(assert (=> b!6172544 (= c!1112413 ((_ is Concat!24956) (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun bm!514922 () Bool)

(declare-fun call!514926 () List!64632)

(assert (=> bm!514922 (= call!514929 call!514926)))

(declare-fun d!1934641 () Bool)

(declare-fun c!1112412 () Bool)

(assert (=> d!1934641 (= c!1112412 (and ((_ is ElementMatch!16111) (h!70956 (exprs!5995 (h!70957 zl!343)))) (= (c!1112104 (h!70956 (exprs!5995 (h!70957 zl!343)))) (h!70958 s!2326))))))

(declare-fun e!3760009 () (InoxSet Context!10990))

(assert (=> d!1934641 (= (derivationStepZipperDown!1359 (h!70956 (exprs!5995 (h!70957 zl!343))) (Context!10991 (t!378134 (exprs!5995 (h!70957 zl!343)))) (h!70958 s!2326)) e!3760009)))

(declare-fun bm!514923 () Bool)

(assert (=> bm!514923 (= call!514926 ($colon$colon!1988 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 (h!70957 zl!343))))) (ite (or c!1112411 c!1112413) (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (h!70956 (exprs!5995 (h!70957 zl!343))))))))

(declare-fun b!6172545 () Bool)

(assert (=> b!6172545 (= e!3760009 (store ((as const (Array Context!10990 Bool)) false) (Context!10991 (t!378134 (exprs!5995 (h!70957 zl!343)))) true))))

(declare-fun b!6172546 () Bool)

(declare-fun e!3760008 () (InoxSet Context!10990))

(declare-fun call!514930 () (InoxSet Context!10990))

(assert (=> b!6172546 (= e!3760008 ((_ map or) call!514930 call!514928))))

(declare-fun bm!514924 () Bool)

(declare-fun call!514931 () (InoxSet Context!10990))

(assert (=> bm!514924 (= call!514927 call!514931)))

(declare-fun bm!514925 () Bool)

(assert (=> bm!514925 (= call!514931 call!514928)))

(declare-fun b!6172547 () Bool)

(assert (=> b!6172547 (= e!3760013 call!514927)))

(declare-fun bm!514926 () Bool)

(assert (=> bm!514926 (= call!514930 (derivationStepZipperDown!1359 (ite c!1112415 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343))))) (ite c!1112415 (Context!10991 (t!378134 (exprs!5995 (h!70957 zl!343)))) (Context!10991 call!514926)) (h!70958 s!2326)))))

(declare-fun b!6172548 () Bool)

(assert (=> b!6172548 (= e!3760010 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172549 () Bool)

(assert (=> b!6172549 (= c!1112411 e!3760012)))

(declare-fun res!2554880 () Bool)

(assert (=> b!6172549 (=> (not res!2554880) (not e!3760012))))

(assert (=> b!6172549 (= res!2554880 ((_ is Concat!24956) (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(assert (=> b!6172549 (= e!3760008 e!3760011)))

(declare-fun b!6172550 () Bool)

(assert (=> b!6172550 (= e!3760009 e!3760008)))

(assert (=> b!6172550 (= c!1112415 ((_ is Union!16111) (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun b!6172551 () Bool)

(assert (=> b!6172551 (= e!3760011 ((_ map or) call!514930 call!514931))))

(assert (= (and d!1934641 c!1112412) b!6172545))

(assert (= (and d!1934641 (not c!1112412)) b!6172550))

(assert (= (and b!6172550 c!1112415) b!6172546))

(assert (= (and b!6172550 (not c!1112415)) b!6172549))

(assert (= (and b!6172549 res!2554880) b!6172541))

(assert (= (and b!6172549 c!1112411) b!6172551))

(assert (= (and b!6172549 (not c!1112411)) b!6172544))

(assert (= (and b!6172544 c!1112413) b!6172547))

(assert (= (and b!6172544 (not c!1112413)) b!6172542))

(assert (= (and b!6172542 c!1112414) b!6172543))

(assert (= (and b!6172542 (not c!1112414)) b!6172548))

(assert (= (or b!6172547 b!6172543) bm!514922))

(assert (= (or b!6172547 b!6172543) bm!514924))

(assert (= (or b!6172551 bm!514922) bm!514923))

(assert (= (or b!6172551 bm!514924) bm!514925))

(assert (= (or b!6172546 bm!514925) bm!514921))

(assert (= (or b!6172546 b!6172551) bm!514926))

(declare-fun m!7008996 () Bool)

(assert (=> b!6172545 m!7008996))

(declare-fun m!7008998 () Bool)

(assert (=> bm!514923 m!7008998))

(declare-fun m!7009000 () Bool)

(assert (=> bm!514926 m!7009000))

(declare-fun m!7009002 () Bool)

(assert (=> bm!514921 m!7009002))

(assert (=> b!6172541 m!7008620))

(assert (=> bm!514844 d!1934641))

(declare-fun d!1934643 () Bool)

(assert (=> d!1934643 (= (isEmpty!36488 (t!378136 s!2326)) ((_ is Nil!64510) (t!378136 s!2326)))))

(assert (=> d!1934327 d!1934643))

(declare-fun d!1934645 () Bool)

(assert (=> d!1934645 (= (isEmpty!36485 (t!378134 lt!2337305)) ((_ is Nil!64508) (t!378134 lt!2337305)))))

(assert (=> b!6172144 d!1934645))

(declare-fun d!1934647 () Bool)

(assert (=> d!1934647 true))

(declare-fun setRes!41843 () Bool)

(assert (=> d!1934647 setRes!41843))

(declare-fun condSetEmpty!41843 () Bool)

(declare-fun res!2554883 () (InoxSet Context!10990))

(assert (=> d!1934647 (= condSetEmpty!41843 (= res!2554883 ((as const (Array Context!10990 Bool)) false)))))

(assert (=> d!1934647 (= (choose!45874 lt!2337291 lambda!336831) res!2554883)))

(declare-fun setIsEmpty!41843 () Bool)

(assert (=> setIsEmpty!41843 setRes!41843))

(declare-fun setNonEmpty!41843 () Bool)

(declare-fun setElem!41843 () Context!10990)

(declare-fun e!3760016 () Bool)

(declare-fun tp!1723372 () Bool)

(assert (=> setNonEmpty!41843 (= setRes!41843 (and tp!1723372 (inv!83524 setElem!41843) e!3760016))))

(declare-fun setRest!41843 () (InoxSet Context!10990))

(assert (=> setNonEmpty!41843 (= res!2554883 ((_ map or) (store ((as const (Array Context!10990 Bool)) false) setElem!41843 true) setRest!41843))))

(declare-fun b!6172554 () Bool)

(declare-fun tp!1723371 () Bool)

(assert (=> b!6172554 (= e!3760016 tp!1723371)))

(assert (= (and d!1934647 condSetEmpty!41843) setIsEmpty!41843))

(assert (= (and d!1934647 (not condSetEmpty!41843)) setNonEmpty!41843))

(assert (= setNonEmpty!41843 b!6172554))

(declare-fun m!7009004 () Bool)

(assert (=> setNonEmpty!41843 m!7009004))

(assert (=> d!1934365 d!1934647))

(declare-fun d!1934649 () Bool)

(assert (=> d!1934649 (= (isEmpty!36485 (t!378134 (unfocusZipperList!1532 zl!343))) ((_ is Nil!64508) (t!378134 (unfocusZipperList!1532 zl!343))))))

(assert (=> b!6172258 d!1934649))

(declare-fun bs!1530554 () Bool)

(declare-fun d!1934651 () Bool)

(assert (= bs!1530554 (and d!1934651 d!1934377)))

(declare-fun lambda!336906 () Int)

(assert (=> bs!1530554 (= lambda!336906 lambda!336849)))

(declare-fun bs!1530555 () Bool)

(assert (= bs!1530555 (and d!1934651 d!1934561)))

(assert (=> bs!1530555 (= lambda!336906 lambda!336890)))

(declare-fun bs!1530556 () Bool)

(assert (= bs!1530556 (and d!1934651 d!1934531)))

(assert (=> bs!1530556 (= lambda!336906 lambda!336885)))

(declare-fun bs!1530557 () Bool)

(assert (= bs!1530557 (and d!1934651 d!1934543)))

(assert (=> bs!1530557 (= lambda!336906 lambda!336889)))

(declare-fun bs!1530558 () Bool)

(assert (= bs!1530558 (and d!1934651 d!1934619)))

(assert (=> bs!1530558 (= lambda!336906 lambda!336902)))

(declare-fun bs!1530559 () Bool)

(assert (= bs!1530559 (and d!1934651 d!1934627)))

(assert (=> bs!1530559 (= lambda!336906 lambda!336904)))

(declare-fun bs!1530560 () Bool)

(assert (= bs!1530560 (and d!1934651 d!1934495)))

(assert (=> bs!1530560 (= lambda!336906 lambda!336875)))

(declare-fun bs!1530561 () Bool)

(assert (= bs!1530561 (and d!1934651 d!1934629)))

(assert (=> bs!1530561 (= lambda!336906 lambda!336905)))

(declare-fun bs!1530562 () Bool)

(assert (= bs!1530562 (and d!1934651 d!1934533)))

(assert (=> bs!1530562 (= lambda!336906 lambda!336888)))

(declare-fun bs!1530563 () Bool)

(assert (= bs!1530563 (and d!1934651 d!1934595)))

(assert (=> bs!1530563 (= lambda!336906 lambda!336901)))

(declare-fun bs!1530564 () Bool)

(assert (= bs!1530564 (and d!1934651 d!1934523)))

(assert (=> bs!1530564 (= lambda!336906 lambda!336876)))

(declare-fun bs!1530565 () Bool)

(assert (= bs!1530565 (and d!1934651 d!1934591)))

(assert (=> bs!1530565 (= lambda!336906 lambda!336900)))

(assert (=> d!1934651 (= (inv!83524 setElem!41840) (forall!15231 (exprs!5995 setElem!41840) lambda!336906))))

(declare-fun bs!1530566 () Bool)

(assert (= bs!1530566 d!1934651))

(declare-fun m!7009006 () Bool)

(assert (=> bs!1530566 m!7009006))

(assert (=> setNonEmpty!41840 d!1934651))

(declare-fun bs!1530567 () Bool)

(declare-fun d!1934653 () Bool)

(assert (= bs!1530567 (and d!1934653 d!1934583)))

(declare-fun lambda!336907 () Int)

(assert (=> bs!1530567 (= lambda!336907 lambda!336896)))

(declare-fun bs!1530568 () Bool)

(assert (= bs!1530568 (and d!1934653 d!1934621)))

(assert (=> bs!1530568 (= lambda!336907 lambda!336903)))

(assert (=> d!1934653 (= (nullableZipper!1892 ((_ map or) lt!2337289 lt!2337288)) (exists!2455 ((_ map or) lt!2337289 lt!2337288) lambda!336907))))

(declare-fun bs!1530569 () Bool)

(assert (= bs!1530569 d!1934653))

(declare-fun m!7009008 () Bool)

(assert (=> bs!1530569 m!7009008))

(assert (=> b!6171600 d!1934653))

(declare-fun bm!514927 () Bool)

(declare-fun call!514934 () Bool)

(declare-fun call!514932 () Bool)

(assert (=> bm!514927 (= call!514934 call!514932)))

(declare-fun b!6172555 () Bool)

(declare-fun e!3760022 () Bool)

(declare-fun e!3760023 () Bool)

(assert (=> b!6172555 (= e!3760022 e!3760023)))

(declare-fun c!1112416 () Bool)

(assert (=> b!6172555 (= c!1112416 ((_ is Star!16111) (ite c!1112125 (regOne!32735 r!7292) (regOne!32734 r!7292))))))

(declare-fun b!6172556 () Bool)

(declare-fun res!2554885 () Bool)

(declare-fun e!3760018 () Bool)

(assert (=> b!6172556 (=> res!2554885 e!3760018)))

(assert (=> b!6172556 (= res!2554885 (not ((_ is Concat!24956) (ite c!1112125 (regOne!32735 r!7292) (regOne!32734 r!7292)))))))

(declare-fun e!3760017 () Bool)

(assert (=> b!6172556 (= e!3760017 e!3760018)))

(declare-fun b!6172557 () Bool)

(assert (=> b!6172557 (= e!3760023 e!3760017)))

(declare-fun c!1112417 () Bool)

(assert (=> b!6172557 (= c!1112417 ((_ is Union!16111) (ite c!1112125 (regOne!32735 r!7292) (regOne!32734 r!7292))))))

(declare-fun b!6172558 () Bool)

(declare-fun e!3760019 () Bool)

(assert (=> b!6172558 (= e!3760019 call!514934)))

(declare-fun b!6172559 () Bool)

(declare-fun e!3760020 () Bool)

(assert (=> b!6172559 (= e!3760020 call!514932)))

(declare-fun b!6172560 () Bool)

(assert (=> b!6172560 (= e!3760018 e!3760019)))

(declare-fun res!2554887 () Bool)

(assert (=> b!6172560 (=> (not res!2554887) (not e!3760019))))

(declare-fun call!514933 () Bool)

(assert (=> b!6172560 (= res!2554887 call!514933)))

(declare-fun b!6172561 () Bool)

(declare-fun res!2554884 () Bool)

(declare-fun e!3760021 () Bool)

(assert (=> b!6172561 (=> (not res!2554884) (not e!3760021))))

(assert (=> b!6172561 (= res!2554884 call!514933)))

(assert (=> b!6172561 (= e!3760017 e!3760021)))

(declare-fun b!6172562 () Bool)

(assert (=> b!6172562 (= e!3760023 e!3760020)))

(declare-fun res!2554886 () Bool)

(assert (=> b!6172562 (= res!2554886 (not (nullable!6104 (reg!16440 (ite c!1112125 (regOne!32735 r!7292) (regOne!32734 r!7292))))))))

(assert (=> b!6172562 (=> (not res!2554886) (not e!3760020))))

(declare-fun bm!514929 () Bool)

(assert (=> bm!514929 (= call!514932 (validRegex!7847 (ite c!1112416 (reg!16440 (ite c!1112125 (regOne!32735 r!7292) (regOne!32734 r!7292))) (ite c!1112417 (regTwo!32735 (ite c!1112125 (regOne!32735 r!7292) (regOne!32734 r!7292))) (regTwo!32734 (ite c!1112125 (regOne!32735 r!7292) (regOne!32734 r!7292)))))))))

(declare-fun b!6172563 () Bool)

(assert (=> b!6172563 (= e!3760021 call!514934)))

(declare-fun bm!514928 () Bool)

(assert (=> bm!514928 (= call!514933 (validRegex!7847 (ite c!1112417 (regOne!32735 (ite c!1112125 (regOne!32735 r!7292) (regOne!32734 r!7292))) (regOne!32734 (ite c!1112125 (regOne!32735 r!7292) (regOne!32734 r!7292))))))))

(declare-fun d!1934655 () Bool)

(declare-fun res!2554888 () Bool)

(assert (=> d!1934655 (=> res!2554888 e!3760022)))

(assert (=> d!1934655 (= res!2554888 ((_ is ElementMatch!16111) (ite c!1112125 (regOne!32735 r!7292) (regOne!32734 r!7292))))))

(assert (=> d!1934655 (= (validRegex!7847 (ite c!1112125 (regOne!32735 r!7292) (regOne!32734 r!7292))) e!3760022)))

(assert (= (and d!1934655 (not res!2554888)) b!6172555))

(assert (= (and b!6172555 c!1112416) b!6172562))

(assert (= (and b!6172555 (not c!1112416)) b!6172557))

(assert (= (and b!6172562 res!2554886) b!6172559))

(assert (= (and b!6172557 c!1112417) b!6172561))

(assert (= (and b!6172557 (not c!1112417)) b!6172556))

(assert (= (and b!6172561 res!2554884) b!6172563))

(assert (= (and b!6172556 (not res!2554885)) b!6172560))

(assert (= (and b!6172560 res!2554887) b!6172558))

(assert (= (or b!6172563 b!6172558) bm!514927))

(assert (= (or b!6172561 b!6172560) bm!514928))

(assert (= (or b!6172559 bm!514927) bm!514929))

(declare-fun m!7009010 () Bool)

(assert (=> b!6172562 m!7009010))

(declare-fun m!7009012 () Bool)

(assert (=> bm!514929 m!7009012))

(declare-fun m!7009014 () Bool)

(assert (=> bm!514928 m!7009014))

(assert (=> bm!514779 d!1934655))

(declare-fun b!6172564 () Bool)

(declare-fun e!3760028 () Bool)

(assert (=> b!6172564 (= e!3760028 (nullable!6104 (regOne!32734 (ite c!1112292 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112288 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112290 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343))))))))))))

(declare-fun c!1112421 () Bool)

(declare-fun b!6172565 () Bool)

(assert (=> b!6172565 (= c!1112421 ((_ is Star!16111) (ite c!1112292 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112288 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112290 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343)))))))))))

(declare-fun e!3760029 () (InoxSet Context!10990))

(declare-fun e!3760026 () (InoxSet Context!10990))

(assert (=> b!6172565 (= e!3760029 e!3760026)))

(declare-fun bm!514930 () Bool)

(declare-fun call!514937 () (InoxSet Context!10990))

(declare-fun c!1112420 () Bool)

(declare-fun call!514938 () List!64632)

(declare-fun c!1112422 () Bool)

(declare-fun c!1112418 () Bool)

(assert (=> bm!514930 (= call!514937 (derivationStepZipperDown!1359 (ite c!1112422 (regTwo!32735 (ite c!1112292 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112288 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112290 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343)))))))) (ite c!1112418 (regTwo!32734 (ite c!1112292 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112288 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112290 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343)))))))) (ite c!1112420 (regOne!32734 (ite c!1112292 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112288 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112290 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343)))))))) (reg!16440 (ite c!1112292 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112288 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112290 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343))))))))))) (ite (or c!1112422 c!1112418) (ite (or c!1112292 c!1112288) lt!2337313 (Context!10991 call!514865)) (Context!10991 call!514938)) (h!70958 s!2326)))))

(declare-fun b!6172566 () Bool)

(declare-fun call!514936 () (InoxSet Context!10990))

(assert (=> b!6172566 (= e!3760026 call!514936)))

(declare-fun b!6172567 () Bool)

(declare-fun e!3760027 () (InoxSet Context!10990))

(assert (=> b!6172567 (= e!3760027 e!3760029)))

(assert (=> b!6172567 (= c!1112420 ((_ is Concat!24956) (ite c!1112292 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112288 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112290 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343)))))))))))

(declare-fun bm!514931 () Bool)

(declare-fun call!514935 () List!64632)

(assert (=> bm!514931 (= call!514938 call!514935)))

(declare-fun c!1112419 () Bool)

(declare-fun d!1934657 () Bool)

(assert (=> d!1934657 (= c!1112419 (and ((_ is ElementMatch!16111) (ite c!1112292 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112288 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112290 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343)))))))) (= (c!1112104 (ite c!1112292 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112288 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112290 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343)))))))) (h!70958 s!2326))))))

(declare-fun e!3760025 () (InoxSet Context!10990))

(assert (=> d!1934657 (= (derivationStepZipperDown!1359 (ite c!1112292 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112288 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112290 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343))))))) (ite (or c!1112292 c!1112288) lt!2337313 (Context!10991 call!514865)) (h!70958 s!2326)) e!3760025)))

(declare-fun bm!514932 () Bool)

(assert (=> bm!514932 (= call!514935 ($colon$colon!1988 (exprs!5995 (ite (or c!1112292 c!1112288) lt!2337313 (Context!10991 call!514865))) (ite (or c!1112418 c!1112420) (regTwo!32734 (ite c!1112292 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112288 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112290 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343)))))))) (ite c!1112292 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112288 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112290 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343))))))))))))

(declare-fun b!6172568 () Bool)

(assert (=> b!6172568 (= e!3760025 (store ((as const (Array Context!10990 Bool)) false) (ite (or c!1112292 c!1112288) lt!2337313 (Context!10991 call!514865)) true))))

(declare-fun b!6172569 () Bool)

(declare-fun e!3760024 () (InoxSet Context!10990))

(declare-fun call!514939 () (InoxSet Context!10990))

(assert (=> b!6172569 (= e!3760024 ((_ map or) call!514939 call!514937))))

(declare-fun bm!514933 () Bool)

(declare-fun call!514940 () (InoxSet Context!10990))

(assert (=> bm!514933 (= call!514936 call!514940)))

(declare-fun bm!514934 () Bool)

(assert (=> bm!514934 (= call!514940 call!514937)))

(declare-fun b!6172570 () Bool)

(assert (=> b!6172570 (= e!3760029 call!514936)))

(declare-fun bm!514935 () Bool)

(assert (=> bm!514935 (= call!514939 (derivationStepZipperDown!1359 (ite c!1112422 (regOne!32735 (ite c!1112292 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112288 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112290 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343)))))))) (regOne!32734 (ite c!1112292 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112288 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112290 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343))))))))) (ite c!1112422 (ite (or c!1112292 c!1112288) lt!2337313 (Context!10991 call!514865)) (Context!10991 call!514935)) (h!70958 s!2326)))))

(declare-fun b!6172571 () Bool)

(assert (=> b!6172571 (= e!3760026 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172572 () Bool)

(assert (=> b!6172572 (= c!1112418 e!3760028)))

(declare-fun res!2554889 () Bool)

(assert (=> b!6172572 (=> (not res!2554889) (not e!3760028))))

(assert (=> b!6172572 (= res!2554889 ((_ is Concat!24956) (ite c!1112292 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112288 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112290 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343)))))))))))

(assert (=> b!6172572 (= e!3760024 e!3760027)))

(declare-fun b!6172573 () Bool)

(assert (=> b!6172573 (= e!3760025 e!3760024)))

(assert (=> b!6172573 (= c!1112422 ((_ is Union!16111) (ite c!1112292 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112288 (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (ite c!1112290 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (reg!16440 (h!70956 (exprs!5995 (h!70957 zl!343)))))))))))

(declare-fun b!6172574 () Bool)

(assert (=> b!6172574 (= e!3760027 ((_ map or) call!514939 call!514940))))

(assert (= (and d!1934657 c!1112419) b!6172568))

(assert (= (and d!1934657 (not c!1112419)) b!6172573))

(assert (= (and b!6172573 c!1112422) b!6172569))

(assert (= (and b!6172573 (not c!1112422)) b!6172572))

(assert (= (and b!6172572 res!2554889) b!6172564))

(assert (= (and b!6172572 c!1112418) b!6172574))

(assert (= (and b!6172572 (not c!1112418)) b!6172567))

(assert (= (and b!6172567 c!1112420) b!6172570))

(assert (= (and b!6172567 (not c!1112420)) b!6172565))

(assert (= (and b!6172565 c!1112421) b!6172566))

(assert (= (and b!6172565 (not c!1112421)) b!6172571))

(assert (= (or b!6172570 b!6172566) bm!514931))

(assert (= (or b!6172570 b!6172566) bm!514933))

(assert (= (or b!6172574 bm!514931) bm!514932))

(assert (= (or b!6172574 bm!514933) bm!514934))

(assert (= (or b!6172569 bm!514934) bm!514930))

(assert (= (or b!6172569 b!6172574) bm!514935))

(declare-fun m!7009016 () Bool)

(assert (=> b!6172568 m!7009016))

(declare-fun m!7009018 () Bool)

(assert (=> bm!514932 m!7009018))

(declare-fun m!7009020 () Bool)

(assert (=> bm!514935 m!7009020))

(declare-fun m!7009022 () Bool)

(assert (=> bm!514930 m!7009022))

(declare-fun m!7009024 () Bool)

(assert (=> b!6172564 m!7009024))

(assert (=> bm!514857 d!1934657))

(declare-fun d!1934659 () Bool)

(assert (=> d!1934659 (= (nullable!6104 (reg!16440 r!7292)) (nullableFct!2068 (reg!16440 r!7292)))))

(declare-fun bs!1530570 () Bool)

(assert (= bs!1530570 d!1934659))

(declare-fun m!7009026 () Bool)

(assert (=> bs!1530570 m!7009026))

(assert (=> b!6171581 d!1934659))

(declare-fun d!1934661 () Bool)

(assert (=> d!1934661 (= ($colon$colon!1988 (exprs!5995 lt!2337313) (ite (or c!1112288 c!1112290) (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (h!70956 (exprs!5995 (h!70957 zl!343))))) (Cons!64508 (ite (or c!1112288 c!1112290) (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))) (h!70956 (exprs!5995 (h!70957 zl!343)))) (exprs!5995 lt!2337313)))))

(assert (=> bm!514859 d!1934661))

(assert (=> d!1934529 d!1934527))

(assert (=> d!1934529 d!1934525))

(declare-fun d!1934663 () Bool)

(assert (=> d!1934663 (= (matchR!8294 r!7292 s!2326) (matchRSpec!3212 r!7292 s!2326))))

(assert (=> d!1934663 true))

(declare-fun _$88!4740 () Unit!157667)

(assert (=> d!1934663 (= (choose!45878 r!7292 s!2326) _$88!4740)))

(declare-fun bs!1530571 () Bool)

(assert (= bs!1530571 d!1934663))

(assert (=> bs!1530571 m!7008060))

(assert (=> bs!1530571 m!7008058))

(assert (=> d!1934529 d!1934663))

(assert (=> d!1934529 d!1934331))

(declare-fun d!1934665 () Bool)

(declare-fun c!1112423 () Bool)

(assert (=> d!1934665 (= c!1112423 (isEmpty!36488 (tail!11827 (t!378136 s!2326))))))

(declare-fun e!3760030 () Bool)

(assert (=> d!1934665 (= (matchZipper!2123 (derivationStepZipper!2084 lt!2337282 (head!12742 (t!378136 s!2326))) (tail!11827 (t!378136 s!2326))) e!3760030)))

(declare-fun b!6172575 () Bool)

(assert (=> b!6172575 (= e!3760030 (nullableZipper!1892 (derivationStepZipper!2084 lt!2337282 (head!12742 (t!378136 s!2326)))))))

(declare-fun b!6172576 () Bool)

(assert (=> b!6172576 (= e!3760030 (matchZipper!2123 (derivationStepZipper!2084 (derivationStepZipper!2084 lt!2337282 (head!12742 (t!378136 s!2326))) (head!12742 (tail!11827 (t!378136 s!2326)))) (tail!11827 (tail!11827 (t!378136 s!2326)))))))

(assert (= (and d!1934665 c!1112423) b!6172575))

(assert (= (and d!1934665 (not c!1112423)) b!6172576))

(assert (=> d!1934665 m!7008080))

(assert (=> d!1934665 m!7008798))

(assert (=> b!6172575 m!7008094))

(declare-fun m!7009028 () Bool)

(assert (=> b!6172575 m!7009028))

(assert (=> b!6172576 m!7008080))

(assert (=> b!6172576 m!7008802))

(assert (=> b!6172576 m!7008094))

(assert (=> b!6172576 m!7008802))

(declare-fun m!7009030 () Bool)

(assert (=> b!6172576 m!7009030))

(assert (=> b!6172576 m!7008080))

(assert (=> b!6172576 m!7008806))

(assert (=> b!6172576 m!7009030))

(assert (=> b!6172576 m!7008806))

(declare-fun m!7009032 () Bool)

(assert (=> b!6172576 m!7009032))

(assert (=> b!6171529 d!1934665))

(declare-fun bs!1530572 () Bool)

(declare-fun d!1934667 () Bool)

(assert (= bs!1530572 (and d!1934667 b!6171493)))

(declare-fun lambda!336908 () Int)

(assert (=> bs!1530572 (= (= (head!12742 (t!378136 s!2326)) (h!70958 s!2326)) (= lambda!336908 lambda!336831))))

(declare-fun bs!1530573 () Bool)

(assert (= bs!1530573 (and d!1934667 d!1934577)))

(assert (=> bs!1530573 (= lambda!336908 lambda!336893)))

(assert (=> d!1934667 true))

(assert (=> d!1934667 (= (derivationStepZipper!2084 lt!2337282 (head!12742 (t!378136 s!2326))) (flatMap!1616 lt!2337282 lambda!336908))))

(declare-fun bs!1530574 () Bool)

(assert (= bs!1530574 d!1934667))

(declare-fun m!7009034 () Bool)

(assert (=> bs!1530574 m!7009034))

(assert (=> b!6171529 d!1934667))

(assert (=> b!6171529 d!1934579))

(assert (=> b!6171529 d!1934581))

(declare-fun d!1934669 () Bool)

(declare-fun res!2554894 () Bool)

(declare-fun e!3760035 () Bool)

(assert (=> d!1934669 (=> res!2554894 e!3760035)))

(assert (=> d!1934669 (= res!2554894 ((_ is Nil!64509) lt!2337341))))

(assert (=> d!1934669 (= (noDuplicate!1956 lt!2337341) e!3760035)))

(declare-fun b!6172581 () Bool)

(declare-fun e!3760036 () Bool)

(assert (=> b!6172581 (= e!3760035 e!3760036)))

(declare-fun res!2554895 () Bool)

(assert (=> b!6172581 (=> (not res!2554895) (not e!3760036))))

(declare-fun contains!20067 (List!64633 Context!10990) Bool)

(assert (=> b!6172581 (= res!2554895 (not (contains!20067 (t!378135 lt!2337341) (h!70957 lt!2337341))))))

(declare-fun b!6172582 () Bool)

(assert (=> b!6172582 (= e!3760036 (noDuplicate!1956 (t!378135 lt!2337341)))))

(assert (= (and d!1934669 (not res!2554894)) b!6172581))

(assert (= (and b!6172581 res!2554895) b!6172582))

(declare-fun m!7009036 () Bool)

(assert (=> b!6172581 m!7009036))

(declare-fun m!7009038 () Bool)

(assert (=> b!6172582 m!7009038))

(assert (=> d!1934345 d!1934669))

(declare-fun d!1934671 () Bool)

(declare-fun e!3760044 () Bool)

(assert (=> d!1934671 e!3760044))

(declare-fun res!2554900 () Bool)

(assert (=> d!1934671 (=> (not res!2554900) (not e!3760044))))

(declare-fun res!2554901 () List!64633)

(assert (=> d!1934671 (= res!2554900 (noDuplicate!1956 res!2554901))))

(declare-fun e!3760045 () Bool)

(assert (=> d!1934671 e!3760045))

(assert (=> d!1934671 (= (choose!45868 lt!2337307) res!2554901)))

(declare-fun b!6172590 () Bool)

(declare-fun e!3760043 () Bool)

(declare-fun tp!1723377 () Bool)

(assert (=> b!6172590 (= e!3760043 tp!1723377)))

(declare-fun b!6172589 () Bool)

(declare-fun tp!1723378 () Bool)

(assert (=> b!6172589 (= e!3760045 (and (inv!83524 (h!70957 res!2554901)) e!3760043 tp!1723378))))

(declare-fun b!6172591 () Bool)

(assert (=> b!6172591 (= e!3760044 (= (content!12039 res!2554901) lt!2337307))))

(assert (= b!6172589 b!6172590))

(assert (= (and d!1934671 ((_ is Cons!64509) res!2554901)) b!6172589))

(assert (= (and d!1934671 res!2554900) b!6172591))

(declare-fun m!7009040 () Bool)

(assert (=> d!1934671 m!7009040))

(declare-fun m!7009042 () Bool)

(assert (=> b!6172589 m!7009042))

(declare-fun m!7009044 () Bool)

(assert (=> b!6172591 m!7009044))

(assert (=> d!1934345 d!1934671))

(declare-fun d!1934673 () Bool)

(assert (=> d!1934673 (= (isEmptyExpr!1527 lt!2337408) ((_ is EmptyExpr!16111) lt!2337408))))

(assert (=> b!6172152 d!1934673))

(assert (=> d!1934343 d!1934643))

(declare-fun d!1934675 () Bool)

(declare-fun c!1112426 () Bool)

(assert (=> d!1934675 (= c!1112426 ((_ is Nil!64509) lt!2337317))))

(declare-fun e!3760048 () (InoxSet Context!10990))

(assert (=> d!1934675 (= (content!12039 lt!2337317) e!3760048)))

(declare-fun b!6172596 () Bool)

(assert (=> b!6172596 (= e!3760048 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172597 () Bool)

(assert (=> b!6172597 (= e!3760048 ((_ map or) (store ((as const (Array Context!10990 Bool)) false) (h!70957 lt!2337317) true) (content!12039 (t!378135 lt!2337317))))))

(assert (= (and d!1934675 c!1112426) b!6172596))

(assert (= (and d!1934675 (not c!1112426)) b!6172597))

(declare-fun m!7009046 () Bool)

(assert (=> b!6172597 m!7009046))

(declare-fun m!7009048 () Bool)

(assert (=> b!6172597 m!7009048))

(assert (=> b!6171509 d!1934675))

(declare-fun bs!1530575 () Bool)

(declare-fun b!6172606 () Bool)

(assert (= bs!1530575 (and b!6172606 b!6172193)))

(declare-fun lambda!336909 () Int)

(assert (=> bs!1530575 (= (and (= (reg!16440 (regTwo!32735 r!7292)) (reg!16440 r!7292)) (= (regTwo!32735 r!7292) r!7292)) (= lambda!336909 lambda!336881))))

(declare-fun bs!1530576 () Bool)

(assert (= bs!1530576 (and b!6172606 d!1934589)))

(assert (=> bs!1530576 (not (= lambda!336909 lambda!336899))))

(declare-fun bs!1530577 () Bool)

(assert (= bs!1530577 (and b!6172606 b!6171469)))

(assert (=> bs!1530577 (not (= lambda!336909 lambda!336830))))

(declare-fun bs!1530578 () Bool)

(assert (= bs!1530578 (and b!6172606 d!1934475)))

(assert (=> bs!1530578 (not (= lambda!336909 lambda!336871))))

(assert (=> bs!1530578 (not (= lambda!336909 lambda!336872))))

(declare-fun bs!1530579 () Bool)

(assert (= bs!1530579 (and b!6172606 b!6172186)))

(assert (=> bs!1530579 (not (= lambda!336909 lambda!336882))))

(assert (=> bs!1530577 (not (= lambda!336909 lambda!336829))))

(declare-fun bs!1530580 () Bool)

(assert (= bs!1530580 (and b!6172606 d!1934457)))

(assert (=> bs!1530580 (not (= lambda!336909 lambda!336859))))

(assert (=> b!6172606 true))

(assert (=> b!6172606 true))

(declare-fun bs!1530581 () Bool)

(declare-fun b!6172599 () Bool)

(assert (= bs!1530581 (and b!6172599 b!6172193)))

(declare-fun lambda!336910 () Int)

(assert (=> bs!1530581 (not (= lambda!336910 lambda!336881))))

(declare-fun bs!1530582 () Bool)

(assert (= bs!1530582 (and b!6172599 b!6171469)))

(assert (=> bs!1530582 (= (and (= (regOne!32734 (regTwo!32735 r!7292)) (regOne!32734 r!7292)) (= (regTwo!32734 (regTwo!32735 r!7292)) (regTwo!32734 r!7292))) (= lambda!336910 lambda!336830))))

(declare-fun bs!1530583 () Bool)

(assert (= bs!1530583 (and b!6172599 d!1934475)))

(assert (=> bs!1530583 (not (= lambda!336910 lambda!336871))))

(assert (=> bs!1530583 (= (and (= (regOne!32734 (regTwo!32735 r!7292)) (regOne!32734 r!7292)) (= (regTwo!32734 (regTwo!32735 r!7292)) (regTwo!32734 r!7292))) (= lambda!336910 lambda!336872))))

(declare-fun bs!1530584 () Bool)

(assert (= bs!1530584 (and b!6172599 b!6172186)))

(assert (=> bs!1530584 (= (and (= (regOne!32734 (regTwo!32735 r!7292)) (regOne!32734 r!7292)) (= (regTwo!32734 (regTwo!32735 r!7292)) (regTwo!32734 r!7292))) (= lambda!336910 lambda!336882))))

(assert (=> bs!1530582 (not (= lambda!336910 lambda!336829))))

(declare-fun bs!1530585 () Bool)

(assert (= bs!1530585 (and b!6172599 d!1934457)))

(assert (=> bs!1530585 (not (= lambda!336910 lambda!336859))))

(declare-fun bs!1530586 () Bool)

(assert (= bs!1530586 (and b!6172599 d!1934589)))

(assert (=> bs!1530586 (not (= lambda!336910 lambda!336899))))

(declare-fun bs!1530587 () Bool)

(assert (= bs!1530587 (and b!6172599 b!6172606)))

(assert (=> bs!1530587 (not (= lambda!336910 lambda!336909))))

(assert (=> b!6172599 true))

(assert (=> b!6172599 true))

(declare-fun b!6172598 () Bool)

(declare-fun e!3760053 () Bool)

(declare-fun e!3760051 () Bool)

(assert (=> b!6172598 (= e!3760053 e!3760051)))

(declare-fun res!2554902 () Bool)

(assert (=> b!6172598 (= res!2554902 (matchRSpec!3212 (regOne!32735 (regTwo!32735 r!7292)) s!2326))))

(assert (=> b!6172598 (=> res!2554902 e!3760051)))

(declare-fun e!3760055 () Bool)

(declare-fun call!514941 () Bool)

(assert (=> b!6172599 (= e!3760055 call!514941)))

(declare-fun d!1934677 () Bool)

(declare-fun c!1112428 () Bool)

(assert (=> d!1934677 (= c!1112428 ((_ is EmptyExpr!16111) (regTwo!32735 r!7292)))))

(declare-fun e!3760049 () Bool)

(assert (=> d!1934677 (= (matchRSpec!3212 (regTwo!32735 r!7292) s!2326) e!3760049)))

(declare-fun b!6172600 () Bool)

(declare-fun call!514942 () Bool)

(assert (=> b!6172600 (= e!3760049 call!514942)))

(declare-fun b!6172601 () Bool)

(declare-fun c!1112430 () Bool)

(assert (=> b!6172601 (= c!1112430 ((_ is ElementMatch!16111) (regTwo!32735 r!7292)))))

(declare-fun e!3760050 () Bool)

(declare-fun e!3760054 () Bool)

(assert (=> b!6172601 (= e!3760050 e!3760054)))

(declare-fun b!6172602 () Bool)

(assert (=> b!6172602 (= e!3760049 e!3760050)))

(declare-fun res!2554904 () Bool)

(assert (=> b!6172602 (= res!2554904 (not ((_ is EmptyLang!16111) (regTwo!32735 r!7292))))))

(assert (=> b!6172602 (=> (not res!2554904) (not e!3760050))))

(declare-fun b!6172603 () Bool)

(declare-fun c!1112427 () Bool)

(assert (=> b!6172603 (= c!1112427 ((_ is Union!16111) (regTwo!32735 r!7292)))))

(assert (=> b!6172603 (= e!3760054 e!3760053)))

(declare-fun b!6172604 () Bool)

(assert (=> b!6172604 (= e!3760051 (matchRSpec!3212 (regTwo!32735 (regTwo!32735 r!7292)) s!2326))))

(declare-fun bm!514936 () Bool)

(assert (=> bm!514936 (= call!514942 (isEmpty!36488 s!2326))))

(declare-fun b!6172605 () Bool)

(assert (=> b!6172605 (= e!3760053 e!3760055)))

(declare-fun c!1112429 () Bool)

(assert (=> b!6172605 (= c!1112429 ((_ is Star!16111) (regTwo!32735 r!7292)))))

(declare-fun e!3760052 () Bool)

(assert (=> b!6172606 (= e!3760052 call!514941)))

(declare-fun b!6172607 () Bool)

(declare-fun res!2554903 () Bool)

(assert (=> b!6172607 (=> res!2554903 e!3760052)))

(assert (=> b!6172607 (= res!2554903 call!514942)))

(assert (=> b!6172607 (= e!3760055 e!3760052)))

(declare-fun bm!514937 () Bool)

(assert (=> bm!514937 (= call!514941 (Exists!3181 (ite c!1112429 lambda!336909 lambda!336910)))))

(declare-fun b!6172608 () Bool)

(assert (=> b!6172608 (= e!3760054 (= s!2326 (Cons!64510 (c!1112104 (regTwo!32735 r!7292)) Nil!64510)))))

(assert (= (and d!1934677 c!1112428) b!6172600))

(assert (= (and d!1934677 (not c!1112428)) b!6172602))

(assert (= (and b!6172602 res!2554904) b!6172601))

(assert (= (and b!6172601 c!1112430) b!6172608))

(assert (= (and b!6172601 (not c!1112430)) b!6172603))

(assert (= (and b!6172603 c!1112427) b!6172598))

(assert (= (and b!6172603 (not c!1112427)) b!6172605))

(assert (= (and b!6172598 (not res!2554902)) b!6172604))

(assert (= (and b!6172605 c!1112429) b!6172607))

(assert (= (and b!6172605 (not c!1112429)) b!6172599))

(assert (= (and b!6172607 (not res!2554903)) b!6172606))

(assert (= (or b!6172606 b!6172599) bm!514937))

(assert (= (or b!6172600 b!6172607) bm!514936))

(declare-fun m!7009050 () Bool)

(assert (=> b!6172598 m!7009050))

(declare-fun m!7009052 () Bool)

(assert (=> b!6172604 m!7009052))

(assert (=> bm!514936 m!7008184))

(declare-fun m!7009054 () Bool)

(assert (=> bm!514937 m!7009054))

(assert (=> b!6172191 d!1934677))

(assert (=> b!6171740 d!1934397))

(declare-fun d!1934679 () Bool)

(declare-fun lt!2337444 () Int)

(assert (=> d!1934679 (>= lt!2337444 0)))

(declare-fun e!3760058 () Int)

(assert (=> d!1934679 (= lt!2337444 e!3760058)))

(declare-fun c!1112434 () Bool)

(assert (=> d!1934679 (= c!1112434 ((_ is Cons!64508) (exprs!5995 (h!70957 (Cons!64509 lt!2337306 Nil!64509)))))))

(assert (=> d!1934679 (= (contextDepthTotal!270 (h!70957 (Cons!64509 lt!2337306 Nil!64509))) lt!2337444)))

(declare-fun b!6172613 () Bool)

(declare-fun regexDepthTotal!132 (Regex!16111) Int)

(assert (=> b!6172613 (= e!3760058 (+ (regexDepthTotal!132 (h!70956 (exprs!5995 (h!70957 (Cons!64509 lt!2337306 Nil!64509))))) (contextDepthTotal!270 (Context!10991 (t!378134 (exprs!5995 (h!70957 (Cons!64509 lt!2337306 Nil!64509))))))))))

(declare-fun b!6172614 () Bool)

(assert (=> b!6172614 (= e!3760058 1)))

(assert (= (and d!1934679 c!1112434) b!6172613))

(assert (= (and d!1934679 (not c!1112434)) b!6172614))

(declare-fun m!7009056 () Bool)

(assert (=> b!6172613 m!7009056))

(declare-fun m!7009058 () Bool)

(assert (=> b!6172613 m!7009058))

(assert (=> b!6171520 d!1934679))

(declare-fun d!1934681 () Bool)

(declare-fun lt!2337445 () Int)

(assert (=> d!1934681 (>= lt!2337445 0)))

(declare-fun e!3760059 () Int)

(assert (=> d!1934681 (= lt!2337445 e!3760059)))

(declare-fun c!1112435 () Bool)

(assert (=> d!1934681 (= c!1112435 ((_ is Cons!64509) (t!378135 (Cons!64509 lt!2337306 Nil!64509))))))

(assert (=> d!1934681 (= (zipperDepthTotal!294 (t!378135 (Cons!64509 lt!2337306 Nil!64509))) lt!2337445)))

(declare-fun b!6172615 () Bool)

(assert (=> b!6172615 (= e!3760059 (+ (contextDepthTotal!270 (h!70957 (t!378135 (Cons!64509 lt!2337306 Nil!64509)))) (zipperDepthTotal!294 (t!378135 (t!378135 (Cons!64509 lt!2337306 Nil!64509))))))))

(declare-fun b!6172616 () Bool)

(assert (=> b!6172616 (= e!3760059 0)))

(assert (= (and d!1934681 c!1112435) b!6172615))

(assert (= (and d!1934681 (not c!1112435)) b!6172616))

(declare-fun m!7009060 () Bool)

(assert (=> b!6172615 m!7009060))

(declare-fun m!7009062 () Bool)

(assert (=> b!6172615 m!7009062))

(assert (=> b!6171520 d!1934681))

(declare-fun b!6172617 () Bool)

(declare-fun e!3760063 () Bool)

(declare-fun lt!2337446 () Bool)

(assert (=> b!6172617 (= e!3760063 (not lt!2337446))))

(declare-fun b!6172618 () Bool)

(declare-fun e!3760065 () Bool)

(assert (=> b!6172618 (= e!3760065 (matchR!8294 (derivativeStep!4830 (regTwo!32734 r!7292) (head!12742 (_2!36393 (get!22268 lt!2337383)))) (tail!11827 (_2!36393 (get!22268 lt!2337383)))))))

(declare-fun b!6172619 () Bool)

(declare-fun res!2554908 () Bool)

(declare-fun e!3760062 () Bool)

(assert (=> b!6172619 (=> res!2554908 e!3760062)))

(declare-fun e!3760064 () Bool)

(assert (=> b!6172619 (= res!2554908 e!3760064)))

(declare-fun res!2554910 () Bool)

(assert (=> b!6172619 (=> (not res!2554910) (not e!3760064))))

(assert (=> b!6172619 (= res!2554910 lt!2337446)))

(declare-fun b!6172620 () Bool)

(declare-fun e!3760061 () Bool)

(declare-fun call!514943 () Bool)

(assert (=> b!6172620 (= e!3760061 (= lt!2337446 call!514943))))

(declare-fun bm!514938 () Bool)

(assert (=> bm!514938 (= call!514943 (isEmpty!36488 (_2!36393 (get!22268 lt!2337383))))))

(declare-fun b!6172621 () Bool)

(assert (=> b!6172621 (= e!3760061 e!3760063)))

(declare-fun c!1112437 () Bool)

(assert (=> b!6172621 (= c!1112437 ((_ is EmptyLang!16111) (regTwo!32734 r!7292)))))

(declare-fun b!6172622 () Bool)

(declare-fun res!2554912 () Bool)

(assert (=> b!6172622 (=> res!2554912 e!3760062)))

(assert (=> b!6172622 (= res!2554912 (not ((_ is ElementMatch!16111) (regTwo!32734 r!7292))))))

(assert (=> b!6172622 (= e!3760063 e!3760062)))

(declare-fun b!6172623 () Bool)

(declare-fun e!3760060 () Bool)

(assert (=> b!6172623 (= e!3760062 e!3760060)))

(declare-fun res!2554905 () Bool)

(assert (=> b!6172623 (=> (not res!2554905) (not e!3760060))))

(assert (=> b!6172623 (= res!2554905 (not lt!2337446))))

(declare-fun d!1934683 () Bool)

(assert (=> d!1934683 e!3760061))

(declare-fun c!1112438 () Bool)

(assert (=> d!1934683 (= c!1112438 ((_ is EmptyExpr!16111) (regTwo!32734 r!7292)))))

(assert (=> d!1934683 (= lt!2337446 e!3760065)))

(declare-fun c!1112436 () Bool)

(assert (=> d!1934683 (= c!1112436 (isEmpty!36488 (_2!36393 (get!22268 lt!2337383))))))

(assert (=> d!1934683 (validRegex!7847 (regTwo!32734 r!7292))))

(assert (=> d!1934683 (= (matchR!8294 (regTwo!32734 r!7292) (_2!36393 (get!22268 lt!2337383))) lt!2337446)))

(declare-fun b!6172624 () Bool)

(declare-fun res!2554906 () Bool)

(assert (=> b!6172624 (=> (not res!2554906) (not e!3760064))))

(assert (=> b!6172624 (= res!2554906 (not call!514943))))

(declare-fun b!6172625 () Bool)

(declare-fun res!2554911 () Bool)

(assert (=> b!6172625 (=> (not res!2554911) (not e!3760064))))

(assert (=> b!6172625 (= res!2554911 (isEmpty!36488 (tail!11827 (_2!36393 (get!22268 lt!2337383)))))))

(declare-fun b!6172626 () Bool)

(assert (=> b!6172626 (= e!3760064 (= (head!12742 (_2!36393 (get!22268 lt!2337383))) (c!1112104 (regTwo!32734 r!7292))))))

(declare-fun b!6172627 () Bool)

(declare-fun e!3760066 () Bool)

(assert (=> b!6172627 (= e!3760060 e!3760066)))

(declare-fun res!2554907 () Bool)

(assert (=> b!6172627 (=> res!2554907 e!3760066)))

(assert (=> b!6172627 (= res!2554907 call!514943)))

(declare-fun b!6172628 () Bool)

(assert (=> b!6172628 (= e!3760066 (not (= (head!12742 (_2!36393 (get!22268 lt!2337383))) (c!1112104 (regTwo!32734 r!7292)))))))

(declare-fun b!6172629 () Bool)

(assert (=> b!6172629 (= e!3760065 (nullable!6104 (regTwo!32734 r!7292)))))

(declare-fun b!6172630 () Bool)

(declare-fun res!2554909 () Bool)

(assert (=> b!6172630 (=> res!2554909 e!3760066)))

(assert (=> b!6172630 (= res!2554909 (not (isEmpty!36488 (tail!11827 (_2!36393 (get!22268 lt!2337383))))))))

(assert (= (and d!1934683 c!1112436) b!6172629))

(assert (= (and d!1934683 (not c!1112436)) b!6172618))

(assert (= (and d!1934683 c!1112438) b!6172620))

(assert (= (and d!1934683 (not c!1112438)) b!6172621))

(assert (= (and b!6172621 c!1112437) b!6172617))

(assert (= (and b!6172621 (not c!1112437)) b!6172622))

(assert (= (and b!6172622 (not res!2554912)) b!6172619))

(assert (= (and b!6172619 res!2554910) b!6172624))

(assert (= (and b!6172624 res!2554906) b!6172625))

(assert (= (and b!6172625 res!2554911) b!6172626))

(assert (= (and b!6172619 (not res!2554908)) b!6172623))

(assert (= (and b!6172623 res!2554905) b!6172627))

(assert (= (and b!6172627 (not res!2554907)) b!6172630))

(assert (= (and b!6172630 (not res!2554909)) b!6172628))

(assert (= (or b!6172620 b!6172624 b!6172627) bm!514938))

(declare-fun m!7009064 () Bool)

(assert (=> b!6172626 m!7009064))

(declare-fun m!7009066 () Bool)

(assert (=> d!1934683 m!7009066))

(assert (=> d!1934683 m!7008856))

(assert (=> b!6172629 m!7008858))

(declare-fun m!7009068 () Bool)

(assert (=> b!6172630 m!7009068))

(assert (=> b!6172630 m!7009068))

(declare-fun m!7009070 () Bool)

(assert (=> b!6172630 m!7009070))

(assert (=> bm!514938 m!7009066))

(assert (=> b!6172625 m!7009068))

(assert (=> b!6172625 m!7009068))

(assert (=> b!6172625 m!7009070))

(assert (=> b!6172618 m!7009064))

(assert (=> b!6172618 m!7009064))

(declare-fun m!7009072 () Bool)

(assert (=> b!6172618 m!7009072))

(assert (=> b!6172618 m!7009068))

(assert (=> b!6172618 m!7009072))

(assert (=> b!6172618 m!7009068))

(declare-fun m!7009074 () Bool)

(assert (=> b!6172618 m!7009074))

(assert (=> b!6172628 m!7009064))

(assert (=> b!6171867 d!1934683))

(declare-fun d!1934685 () Bool)

(assert (=> d!1934685 (= (get!22268 lt!2337383) (v!52142 lt!2337383))))

(assert (=> b!6171867 d!1934685))

(assert (=> d!1934329 d!1934643))

(declare-fun d!1934687 () Bool)

(declare-fun c!1112439 () Bool)

(assert (=> d!1934687 (= c!1112439 ((_ is Nil!64509) lt!2337341))))

(declare-fun e!3760067 () (InoxSet Context!10990))

(assert (=> d!1934687 (= (content!12039 lt!2337341) e!3760067)))

(declare-fun b!6172631 () Bool)

(assert (=> b!6172631 (= e!3760067 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172632 () Bool)

(assert (=> b!6172632 (= e!3760067 ((_ map or) (store ((as const (Array Context!10990 Bool)) false) (h!70957 lt!2337341) true) (content!12039 (t!378135 lt!2337341))))))

(assert (= (and d!1934687 c!1112439) b!6172631))

(assert (= (and d!1934687 (not c!1112439)) b!6172632))

(declare-fun m!7009076 () Bool)

(assert (=> b!6172632 m!7009076))

(declare-fun m!7009078 () Bool)

(assert (=> b!6172632 m!7009078))

(assert (=> b!6171594 d!1934687))

(declare-fun d!1934689 () Bool)

(declare-fun c!1112440 () Bool)

(assert (=> d!1934689 (= c!1112440 (isEmpty!36488 (tail!11827 (t!378136 s!2326))))))

(declare-fun e!3760068 () Bool)

(assert (=> d!1934689 (= (matchZipper!2123 (derivationStepZipper!2084 lt!2337288 (head!12742 (t!378136 s!2326))) (tail!11827 (t!378136 s!2326))) e!3760068)))

(declare-fun b!6172633 () Bool)

(assert (=> b!6172633 (= e!3760068 (nullableZipper!1892 (derivationStepZipper!2084 lt!2337288 (head!12742 (t!378136 s!2326)))))))

(declare-fun b!6172634 () Bool)

(assert (=> b!6172634 (= e!3760068 (matchZipper!2123 (derivationStepZipper!2084 (derivationStepZipper!2084 lt!2337288 (head!12742 (t!378136 s!2326))) (head!12742 (tail!11827 (t!378136 s!2326)))) (tail!11827 (tail!11827 (t!378136 s!2326)))))))

(assert (= (and d!1934689 c!1112440) b!6172633))

(assert (= (and d!1934689 (not c!1112440)) b!6172634))

(assert (=> d!1934689 m!7008080))

(assert (=> d!1934689 m!7008798))

(assert (=> b!6172633 m!7008158))

(declare-fun m!7009080 () Bool)

(assert (=> b!6172633 m!7009080))

(assert (=> b!6172634 m!7008080))

(assert (=> b!6172634 m!7008802))

(assert (=> b!6172634 m!7008158))

(assert (=> b!6172634 m!7008802))

(declare-fun m!7009082 () Bool)

(assert (=> b!6172634 m!7009082))

(assert (=> b!6172634 m!7008080))

(assert (=> b!6172634 m!7008806))

(assert (=> b!6172634 m!7009082))

(assert (=> b!6172634 m!7008806))

(declare-fun m!7009084 () Bool)

(assert (=> b!6172634 m!7009084))

(assert (=> b!6171593 d!1934689))

(declare-fun bs!1530588 () Bool)

(declare-fun d!1934691 () Bool)

(assert (= bs!1530588 (and d!1934691 b!6171493)))

(declare-fun lambda!336911 () Int)

(assert (=> bs!1530588 (= (= (head!12742 (t!378136 s!2326)) (h!70958 s!2326)) (= lambda!336911 lambda!336831))))

(declare-fun bs!1530589 () Bool)

(assert (= bs!1530589 (and d!1934691 d!1934577)))

(assert (=> bs!1530589 (= lambda!336911 lambda!336893)))

(declare-fun bs!1530590 () Bool)

(assert (= bs!1530590 (and d!1934691 d!1934667)))

(assert (=> bs!1530590 (= lambda!336911 lambda!336908)))

(assert (=> d!1934691 true))

(assert (=> d!1934691 (= (derivationStepZipper!2084 lt!2337288 (head!12742 (t!378136 s!2326))) (flatMap!1616 lt!2337288 lambda!336911))))

(declare-fun bs!1530591 () Bool)

(assert (= bs!1530591 d!1934691))

(declare-fun m!7009086 () Bool)

(assert (=> bs!1530591 m!7009086))

(assert (=> b!6171593 d!1934691))

(assert (=> b!6171593 d!1934579))

(assert (=> b!6171593 d!1934581))

(declare-fun bm!514939 () Bool)

(declare-fun call!514946 () Bool)

(declare-fun call!514944 () Bool)

(assert (=> bm!514939 (= call!514946 call!514944)))

(declare-fun b!6172635 () Bool)

(declare-fun e!3760074 () Bool)

(declare-fun e!3760075 () Bool)

(assert (=> b!6172635 (= e!3760074 e!3760075)))

(declare-fun c!1112441 () Bool)

(assert (=> b!6172635 (= c!1112441 ((_ is Star!16111) lt!2337417))))

(declare-fun b!6172636 () Bool)

(declare-fun res!2554914 () Bool)

(declare-fun e!3760070 () Bool)

(assert (=> b!6172636 (=> res!2554914 e!3760070)))

(assert (=> b!6172636 (= res!2554914 (not ((_ is Concat!24956) lt!2337417)))))

(declare-fun e!3760069 () Bool)

(assert (=> b!6172636 (= e!3760069 e!3760070)))

(declare-fun b!6172637 () Bool)

(assert (=> b!6172637 (= e!3760075 e!3760069)))

(declare-fun c!1112442 () Bool)

(assert (=> b!6172637 (= c!1112442 ((_ is Union!16111) lt!2337417))))

(declare-fun b!6172638 () Bool)

(declare-fun e!3760071 () Bool)

(assert (=> b!6172638 (= e!3760071 call!514946)))

(declare-fun b!6172639 () Bool)

(declare-fun e!3760072 () Bool)

(assert (=> b!6172639 (= e!3760072 call!514944)))

(declare-fun b!6172640 () Bool)

(assert (=> b!6172640 (= e!3760070 e!3760071)))

(declare-fun res!2554916 () Bool)

(assert (=> b!6172640 (=> (not res!2554916) (not e!3760071))))

(declare-fun call!514945 () Bool)

(assert (=> b!6172640 (= res!2554916 call!514945)))

(declare-fun b!6172641 () Bool)

(declare-fun res!2554913 () Bool)

(declare-fun e!3760073 () Bool)

(assert (=> b!6172641 (=> (not res!2554913) (not e!3760073))))

(assert (=> b!6172641 (= res!2554913 call!514945)))

(assert (=> b!6172641 (= e!3760069 e!3760073)))

(declare-fun b!6172642 () Bool)

(assert (=> b!6172642 (= e!3760075 e!3760072)))

(declare-fun res!2554915 () Bool)

(assert (=> b!6172642 (= res!2554915 (not (nullable!6104 (reg!16440 lt!2337417))))))

(assert (=> b!6172642 (=> (not res!2554915) (not e!3760072))))

(declare-fun bm!514941 () Bool)

(assert (=> bm!514941 (= call!514944 (validRegex!7847 (ite c!1112441 (reg!16440 lt!2337417) (ite c!1112442 (regTwo!32735 lt!2337417) (regTwo!32734 lt!2337417)))))))

(declare-fun b!6172643 () Bool)

(assert (=> b!6172643 (= e!3760073 call!514946)))

(declare-fun bm!514940 () Bool)

(assert (=> bm!514940 (= call!514945 (validRegex!7847 (ite c!1112442 (regOne!32735 lt!2337417) (regOne!32734 lt!2337417))))))

(declare-fun d!1934693 () Bool)

(declare-fun res!2554917 () Bool)

(assert (=> d!1934693 (=> res!2554917 e!3760074)))

(assert (=> d!1934693 (= res!2554917 ((_ is ElementMatch!16111) lt!2337417))))

(assert (=> d!1934693 (= (validRegex!7847 lt!2337417) e!3760074)))

(assert (= (and d!1934693 (not res!2554917)) b!6172635))

(assert (= (and b!6172635 c!1112441) b!6172642))

(assert (= (and b!6172635 (not c!1112441)) b!6172637))

(assert (= (and b!6172642 res!2554915) b!6172639))

(assert (= (and b!6172637 c!1112442) b!6172641))

(assert (= (and b!6172637 (not c!1112442)) b!6172636))

(assert (= (and b!6172641 res!2554913) b!6172643))

(assert (= (and b!6172636 (not res!2554914)) b!6172640))

(assert (= (and b!6172640 res!2554916) b!6172638))

(assert (= (or b!6172643 b!6172638) bm!514939))

(assert (= (or b!6172641 b!6172640) bm!514940))

(assert (= (or b!6172639 bm!514939) bm!514941))

(declare-fun m!7009088 () Bool)

(assert (=> b!6172642 m!7009088))

(declare-fun m!7009090 () Bool)

(assert (=> bm!514941 m!7009090))

(declare-fun m!7009092 () Bool)

(assert (=> bm!514940 m!7009092))

(assert (=> d!1934531 d!1934693))

(declare-fun d!1934695 () Bool)

(declare-fun res!2554922 () Bool)

(declare-fun e!3760080 () Bool)

(assert (=> d!1934695 (=> res!2554922 e!3760080)))

(assert (=> d!1934695 (= res!2554922 ((_ is Nil!64508) (unfocusZipperList!1532 zl!343)))))

(assert (=> d!1934695 (= (forall!15231 (unfocusZipperList!1532 zl!343) lambda!336885) e!3760080)))

(declare-fun b!6172648 () Bool)

(declare-fun e!3760081 () Bool)

(assert (=> b!6172648 (= e!3760080 e!3760081)))

(declare-fun res!2554923 () Bool)

(assert (=> b!6172648 (=> (not res!2554923) (not e!3760081))))

(declare-fun dynLambda!25440 (Int Regex!16111) Bool)

(assert (=> b!6172648 (= res!2554923 (dynLambda!25440 lambda!336885 (h!70956 (unfocusZipperList!1532 zl!343))))))

(declare-fun b!6172649 () Bool)

(assert (=> b!6172649 (= e!3760081 (forall!15231 (t!378134 (unfocusZipperList!1532 zl!343)) lambda!336885))))

(assert (= (and d!1934695 (not res!2554922)) b!6172648))

(assert (= (and b!6172648 res!2554923) b!6172649))

(declare-fun b_lambda!234927 () Bool)

(assert (=> (not b_lambda!234927) (not b!6172648)))

(declare-fun m!7009094 () Bool)

(assert (=> b!6172648 m!7009094))

(declare-fun m!7009096 () Bool)

(assert (=> b!6172649 m!7009096))

(assert (=> d!1934531 d!1934695))

(declare-fun b!6172650 () Bool)

(declare-fun e!3760086 () Bool)

(assert (=> b!6172650 (= e!3760086 (nullable!6104 (regOne!32734 (ite c!1112350 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112346 (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112348 (regOne!32734 (regOne!32735 (regOne!32734 r!7292))) (reg!16440 (regOne!32735 (regOne!32734 r!7292)))))))))))

(declare-fun c!1112446 () Bool)

(declare-fun b!6172651 () Bool)

(assert (=> b!6172651 (= c!1112446 ((_ is Star!16111) (ite c!1112350 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112346 (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112348 (regOne!32734 (regOne!32735 (regOne!32734 r!7292))) (reg!16440 (regOne!32735 (regOne!32734 r!7292))))))))))

(declare-fun e!3760087 () (InoxSet Context!10990))

(declare-fun e!3760084 () (InoxSet Context!10990))

(assert (=> b!6172651 (= e!3760087 e!3760084)))

(declare-fun c!1112445 () Bool)

(declare-fun call!514950 () List!64632)

(declare-fun bm!514942 () Bool)

(declare-fun c!1112443 () Bool)

(declare-fun c!1112447 () Bool)

(declare-fun call!514949 () (InoxSet Context!10990))

(assert (=> bm!514942 (= call!514949 (derivationStepZipperDown!1359 (ite c!1112447 (regTwo!32735 (ite c!1112350 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112346 (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112348 (regOne!32734 (regOne!32735 (regOne!32734 r!7292))) (reg!16440 (regOne!32735 (regOne!32734 r!7292))))))) (ite c!1112443 (regTwo!32734 (ite c!1112350 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112346 (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112348 (regOne!32734 (regOne!32735 (regOne!32734 r!7292))) (reg!16440 (regOne!32735 (regOne!32734 r!7292))))))) (ite c!1112445 (regOne!32734 (ite c!1112350 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112346 (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112348 (regOne!32734 (regOne!32735 (regOne!32734 r!7292))) (reg!16440 (regOne!32735 (regOne!32734 r!7292))))))) (reg!16440 (ite c!1112350 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112346 (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112348 (regOne!32734 (regOne!32735 (regOne!32734 r!7292))) (reg!16440 (regOne!32735 (regOne!32734 r!7292)))))))))) (ite (or c!1112447 c!1112443) (ite (or c!1112350 c!1112346) lt!2337313 (Context!10991 call!514890)) (Context!10991 call!514950)) (h!70958 s!2326)))))

(declare-fun b!6172652 () Bool)

(declare-fun call!514948 () (InoxSet Context!10990))

(assert (=> b!6172652 (= e!3760084 call!514948)))

(declare-fun b!6172653 () Bool)

(declare-fun e!3760085 () (InoxSet Context!10990))

(assert (=> b!6172653 (= e!3760085 e!3760087)))

(assert (=> b!6172653 (= c!1112445 ((_ is Concat!24956) (ite c!1112350 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112346 (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112348 (regOne!32734 (regOne!32735 (regOne!32734 r!7292))) (reg!16440 (regOne!32735 (regOne!32734 r!7292))))))))))

(declare-fun bm!514943 () Bool)

(declare-fun call!514947 () List!64632)

(assert (=> bm!514943 (= call!514950 call!514947)))

(declare-fun c!1112444 () Bool)

(declare-fun d!1934697 () Bool)

(assert (=> d!1934697 (= c!1112444 (and ((_ is ElementMatch!16111) (ite c!1112350 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112346 (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112348 (regOne!32734 (regOne!32735 (regOne!32734 r!7292))) (reg!16440 (regOne!32735 (regOne!32734 r!7292))))))) (= (c!1112104 (ite c!1112350 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112346 (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112348 (regOne!32734 (regOne!32735 (regOne!32734 r!7292))) (reg!16440 (regOne!32735 (regOne!32734 r!7292))))))) (h!70958 s!2326))))))

(declare-fun e!3760083 () (InoxSet Context!10990))

(assert (=> d!1934697 (= (derivationStepZipperDown!1359 (ite c!1112350 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112346 (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112348 (regOne!32734 (regOne!32735 (regOne!32734 r!7292))) (reg!16440 (regOne!32735 (regOne!32734 r!7292)))))) (ite (or c!1112350 c!1112346) lt!2337313 (Context!10991 call!514890)) (h!70958 s!2326)) e!3760083)))

(declare-fun bm!514944 () Bool)

(assert (=> bm!514944 (= call!514947 ($colon$colon!1988 (exprs!5995 (ite (or c!1112350 c!1112346) lt!2337313 (Context!10991 call!514890))) (ite (or c!1112443 c!1112445) (regTwo!32734 (ite c!1112350 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112346 (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112348 (regOne!32734 (regOne!32735 (regOne!32734 r!7292))) (reg!16440 (regOne!32735 (regOne!32734 r!7292))))))) (ite c!1112350 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112346 (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112348 (regOne!32734 (regOne!32735 (regOne!32734 r!7292))) (reg!16440 (regOne!32735 (regOne!32734 r!7292)))))))))))

(declare-fun b!6172654 () Bool)

(assert (=> b!6172654 (= e!3760083 (store ((as const (Array Context!10990 Bool)) false) (ite (or c!1112350 c!1112346) lt!2337313 (Context!10991 call!514890)) true))))

(declare-fun b!6172655 () Bool)

(declare-fun e!3760082 () (InoxSet Context!10990))

(declare-fun call!514951 () (InoxSet Context!10990))

(assert (=> b!6172655 (= e!3760082 ((_ map or) call!514951 call!514949))))

(declare-fun bm!514945 () Bool)

(declare-fun call!514952 () (InoxSet Context!10990))

(assert (=> bm!514945 (= call!514948 call!514952)))

(declare-fun bm!514946 () Bool)

(assert (=> bm!514946 (= call!514952 call!514949)))

(declare-fun b!6172656 () Bool)

(assert (=> b!6172656 (= e!3760087 call!514948)))

(declare-fun bm!514947 () Bool)

(assert (=> bm!514947 (= call!514951 (derivationStepZipperDown!1359 (ite c!1112447 (regOne!32735 (ite c!1112350 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112346 (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112348 (regOne!32734 (regOne!32735 (regOne!32734 r!7292))) (reg!16440 (regOne!32735 (regOne!32734 r!7292))))))) (regOne!32734 (ite c!1112350 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112346 (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112348 (regOne!32734 (regOne!32735 (regOne!32734 r!7292))) (reg!16440 (regOne!32735 (regOne!32734 r!7292)))))))) (ite c!1112447 (ite (or c!1112350 c!1112346) lt!2337313 (Context!10991 call!514890)) (Context!10991 call!514947)) (h!70958 s!2326)))))

(declare-fun b!6172657 () Bool)

(assert (=> b!6172657 (= e!3760084 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172658 () Bool)

(assert (=> b!6172658 (= c!1112443 e!3760086)))

(declare-fun res!2554924 () Bool)

(assert (=> b!6172658 (=> (not res!2554924) (not e!3760086))))

(assert (=> b!6172658 (= res!2554924 ((_ is Concat!24956) (ite c!1112350 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112346 (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112348 (regOne!32734 (regOne!32735 (regOne!32734 r!7292))) (reg!16440 (regOne!32735 (regOne!32734 r!7292))))))))))

(assert (=> b!6172658 (= e!3760082 e!3760085)))

(declare-fun b!6172659 () Bool)

(assert (=> b!6172659 (= e!3760083 e!3760082)))

(assert (=> b!6172659 (= c!1112447 ((_ is Union!16111) (ite c!1112350 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112346 (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (ite c!1112348 (regOne!32734 (regOne!32735 (regOne!32734 r!7292))) (reg!16440 (regOne!32735 (regOne!32734 r!7292))))))))))

(declare-fun b!6172660 () Bool)

(assert (=> b!6172660 (= e!3760085 ((_ map or) call!514951 call!514952))))

(assert (= (and d!1934697 c!1112444) b!6172654))

(assert (= (and d!1934697 (not c!1112444)) b!6172659))

(assert (= (and b!6172659 c!1112447) b!6172655))

(assert (= (and b!6172659 (not c!1112447)) b!6172658))

(assert (= (and b!6172658 res!2554924) b!6172650))

(assert (= (and b!6172658 c!1112443) b!6172660))

(assert (= (and b!6172658 (not c!1112443)) b!6172653))

(assert (= (and b!6172653 c!1112445) b!6172656))

(assert (= (and b!6172653 (not c!1112445)) b!6172651))

(assert (= (and b!6172651 c!1112446) b!6172652))

(assert (= (and b!6172651 (not c!1112446)) b!6172657))

(assert (= (or b!6172656 b!6172652) bm!514943))

(assert (= (or b!6172656 b!6172652) bm!514945))

(assert (= (or b!6172660 bm!514943) bm!514944))

(assert (= (or b!6172660 bm!514945) bm!514946))

(assert (= (or b!6172655 bm!514946) bm!514942))

(assert (= (or b!6172655 b!6172660) bm!514947))

(declare-fun m!7009098 () Bool)

(assert (=> b!6172654 m!7009098))

(declare-fun m!7009100 () Bool)

(assert (=> bm!514944 m!7009100))

(declare-fun m!7009102 () Bool)

(assert (=> bm!514947 m!7009102))

(declare-fun m!7009104 () Bool)

(assert (=> bm!514942 m!7009104))

(declare-fun m!7009106 () Bool)

(assert (=> b!6172650 m!7009106))

(assert (=> bm!514882 d!1934697))

(declare-fun d!1934699 () Bool)

(declare-fun c!1112448 () Bool)

(assert (=> d!1934699 (= c!1112448 (isEmpty!36488 (tail!11827 (t!378136 s!2326))))))

(declare-fun e!3760088 () Bool)

(assert (=> d!1934699 (= (matchZipper!2123 (derivationStepZipper!2084 ((_ map or) lt!2337282 lt!2337288) (head!12742 (t!378136 s!2326))) (tail!11827 (t!378136 s!2326))) e!3760088)))

(declare-fun b!6172661 () Bool)

(assert (=> b!6172661 (= e!3760088 (nullableZipper!1892 (derivationStepZipper!2084 ((_ map or) lt!2337282 lt!2337288) (head!12742 (t!378136 s!2326)))))))

(declare-fun b!6172662 () Bool)

(assert (=> b!6172662 (= e!3760088 (matchZipper!2123 (derivationStepZipper!2084 (derivationStepZipper!2084 ((_ map or) lt!2337282 lt!2337288) (head!12742 (t!378136 s!2326))) (head!12742 (tail!11827 (t!378136 s!2326)))) (tail!11827 (tail!11827 (t!378136 s!2326)))))))

(assert (= (and d!1934699 c!1112448) b!6172661))

(assert (= (and d!1934699 (not c!1112448)) b!6172662))

(assert (=> d!1934699 m!7008080))

(assert (=> d!1934699 m!7008798))

(assert (=> b!6172661 m!7008100))

(declare-fun m!7009108 () Bool)

(assert (=> b!6172661 m!7009108))

(assert (=> b!6172662 m!7008080))

(assert (=> b!6172662 m!7008802))

(assert (=> b!6172662 m!7008100))

(assert (=> b!6172662 m!7008802))

(declare-fun m!7009110 () Bool)

(assert (=> b!6172662 m!7009110))

(assert (=> b!6172662 m!7008080))

(assert (=> b!6172662 m!7008806))

(assert (=> b!6172662 m!7009110))

(assert (=> b!6172662 m!7008806))

(declare-fun m!7009112 () Bool)

(assert (=> b!6172662 m!7009112))

(assert (=> b!6171531 d!1934699))

(declare-fun bs!1530592 () Bool)

(declare-fun d!1934701 () Bool)

(assert (= bs!1530592 (and d!1934701 b!6171493)))

(declare-fun lambda!336912 () Int)

(assert (=> bs!1530592 (= (= (head!12742 (t!378136 s!2326)) (h!70958 s!2326)) (= lambda!336912 lambda!336831))))

(declare-fun bs!1530593 () Bool)

(assert (= bs!1530593 (and d!1934701 d!1934577)))

(assert (=> bs!1530593 (= lambda!336912 lambda!336893)))

(declare-fun bs!1530594 () Bool)

(assert (= bs!1530594 (and d!1934701 d!1934667)))

(assert (=> bs!1530594 (= lambda!336912 lambda!336908)))

(declare-fun bs!1530595 () Bool)

(assert (= bs!1530595 (and d!1934701 d!1934691)))

(assert (=> bs!1530595 (= lambda!336912 lambda!336911)))

(assert (=> d!1934701 true))

(assert (=> d!1934701 (= (derivationStepZipper!2084 ((_ map or) lt!2337282 lt!2337288) (head!12742 (t!378136 s!2326))) (flatMap!1616 ((_ map or) lt!2337282 lt!2337288) lambda!336912))))

(declare-fun bs!1530596 () Bool)

(assert (= bs!1530596 d!1934701))

(declare-fun m!7009114 () Bool)

(assert (=> bs!1530596 m!7009114))

(assert (=> b!6171531 d!1934701))

(assert (=> b!6171531 d!1934579))

(assert (=> b!6171531 d!1934581))

(declare-fun b!6172663 () Bool)

(declare-fun e!3760090 () (InoxSet Context!10990))

(assert (=> b!6172663 (= e!3760090 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172664 () Bool)

(declare-fun e!3760089 () Bool)

(assert (=> b!6172664 (= e!3760089 (nullable!6104 (h!70956 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337309)))))))))

(declare-fun b!6172665 () Bool)

(declare-fun call!514953 () (InoxSet Context!10990))

(assert (=> b!6172665 (= e!3760090 call!514953)))

(declare-fun b!6172666 () Bool)

(declare-fun e!3760091 () (InoxSet Context!10990))

(assert (=> b!6172666 (= e!3760091 ((_ map or) call!514953 (derivationStepZipperUp!1285 (Context!10991 (t!378134 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337309)))))) (h!70958 s!2326))))))

(declare-fun b!6172667 () Bool)

(assert (=> b!6172667 (= e!3760091 e!3760090)))

(declare-fun c!1112449 () Bool)

(assert (=> b!6172667 (= c!1112449 ((_ is Cons!64508) (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337309))))))))

(declare-fun bm!514948 () Bool)

(assert (=> bm!514948 (= call!514953 (derivationStepZipperDown!1359 (h!70956 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337309))))) (Context!10991 (t!378134 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337309)))))) (h!70958 s!2326)))))

(declare-fun d!1934703 () Bool)

(declare-fun c!1112450 () Bool)

(assert (=> d!1934703 (= c!1112450 e!3760089)))

(declare-fun res!2554925 () Bool)

(assert (=> d!1934703 (=> (not res!2554925) (not e!3760089))))

(assert (=> d!1934703 (= res!2554925 ((_ is Cons!64508) (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337309))))))))

(assert (=> d!1934703 (= (derivationStepZipperUp!1285 (Context!10991 (t!378134 (exprs!5995 lt!2337309))) (h!70958 s!2326)) e!3760091)))

(assert (= (and d!1934703 res!2554925) b!6172664))

(assert (= (and d!1934703 c!1112450) b!6172666))

(assert (= (and d!1934703 (not c!1112450)) b!6172667))

(assert (= (and b!6172667 c!1112449) b!6172665))

(assert (= (and b!6172667 (not c!1112449)) b!6172663))

(assert (= (or b!6172666 b!6172665) bm!514948))

(declare-fun m!7009116 () Bool)

(assert (=> b!6172664 m!7009116))

(declare-fun m!7009118 () Bool)

(assert (=> b!6172666 m!7009118))

(declare-fun m!7009120 () Bool)

(assert (=> bm!514948 m!7009120))

(assert (=> b!6171658 d!1934703))

(declare-fun d!1934705 () Bool)

(declare-fun lt!2337447 () Int)

(assert (=> d!1934705 (>= lt!2337447 0)))

(declare-fun e!3760092 () Int)

(assert (=> d!1934705 (= lt!2337447 e!3760092)))

(declare-fun c!1112451 () Bool)

(assert (=> d!1934705 (= c!1112451 ((_ is Cons!64508) (exprs!5995 (h!70957 zl!343))))))

(assert (=> d!1934705 (= (contextDepthTotal!270 (h!70957 zl!343)) lt!2337447)))

(declare-fun b!6172668 () Bool)

(assert (=> b!6172668 (= e!3760092 (+ (regexDepthTotal!132 (h!70956 (exprs!5995 (h!70957 zl!343)))) (contextDepthTotal!270 (Context!10991 (t!378134 (exprs!5995 (h!70957 zl!343)))))))))

(declare-fun b!6172669 () Bool)

(assert (=> b!6172669 (= e!3760092 1)))

(assert (= (and d!1934705 c!1112451) b!6172668))

(assert (= (and d!1934705 (not c!1112451)) b!6172669))

(declare-fun m!7009122 () Bool)

(assert (=> b!6172668 m!7009122))

(declare-fun m!7009124 () Bool)

(assert (=> b!6172668 m!7009124))

(assert (=> b!6172279 d!1934705))

(declare-fun d!1934707 () Bool)

(declare-fun lt!2337448 () Int)

(assert (=> d!1934707 (>= lt!2337448 0)))

(declare-fun e!3760093 () Int)

(assert (=> d!1934707 (= lt!2337448 e!3760093)))

(declare-fun c!1112452 () Bool)

(assert (=> d!1934707 (= c!1112452 ((_ is Cons!64509) (t!378135 zl!343)))))

(assert (=> d!1934707 (= (zipperDepthTotal!294 (t!378135 zl!343)) lt!2337448)))

(declare-fun b!6172670 () Bool)

(assert (=> b!6172670 (= e!3760093 (+ (contextDepthTotal!270 (h!70957 (t!378135 zl!343))) (zipperDepthTotal!294 (t!378135 (t!378135 zl!343)))))))

(declare-fun b!6172671 () Bool)

(assert (=> b!6172671 (= e!3760093 0)))

(assert (= (and d!1934707 c!1112452) b!6172670))

(assert (= (and d!1934707 (not c!1112452)) b!6172671))

(declare-fun m!7009126 () Bool)

(assert (=> b!6172670 m!7009126))

(declare-fun m!7009128 () Bool)

(assert (=> b!6172670 m!7009128))

(assert (=> b!6172279 d!1934707))

(assert (=> d!1934317 d!1934643))

(declare-fun bm!514949 () Bool)

(declare-fun call!514956 () Bool)

(declare-fun call!514954 () Bool)

(assert (=> bm!514949 (= call!514956 call!514954)))

(declare-fun b!6172672 () Bool)

(declare-fun e!3760099 () Bool)

(declare-fun e!3760100 () Bool)

(assert (=> b!6172672 (= e!3760099 e!3760100)))

(declare-fun c!1112453 () Bool)

(assert (=> b!6172672 (= c!1112453 ((_ is Star!16111) lt!2337422))))

(declare-fun b!6172673 () Bool)

(declare-fun res!2554927 () Bool)

(declare-fun e!3760095 () Bool)

(assert (=> b!6172673 (=> res!2554927 e!3760095)))

(assert (=> b!6172673 (= res!2554927 (not ((_ is Concat!24956) lt!2337422)))))

(declare-fun e!3760094 () Bool)

(assert (=> b!6172673 (= e!3760094 e!3760095)))

(declare-fun b!6172674 () Bool)

(assert (=> b!6172674 (= e!3760100 e!3760094)))

(declare-fun c!1112454 () Bool)

(assert (=> b!6172674 (= c!1112454 ((_ is Union!16111) lt!2337422))))

(declare-fun b!6172675 () Bool)

(declare-fun e!3760096 () Bool)

(assert (=> b!6172675 (= e!3760096 call!514956)))

(declare-fun b!6172676 () Bool)

(declare-fun e!3760097 () Bool)

(assert (=> b!6172676 (= e!3760097 call!514954)))

(declare-fun b!6172677 () Bool)

(assert (=> b!6172677 (= e!3760095 e!3760096)))

(declare-fun res!2554929 () Bool)

(assert (=> b!6172677 (=> (not res!2554929) (not e!3760096))))

(declare-fun call!514955 () Bool)

(assert (=> b!6172677 (= res!2554929 call!514955)))

(declare-fun b!6172678 () Bool)

(declare-fun res!2554926 () Bool)

(declare-fun e!3760098 () Bool)

(assert (=> b!6172678 (=> (not res!2554926) (not e!3760098))))

(assert (=> b!6172678 (= res!2554926 call!514955)))

(assert (=> b!6172678 (= e!3760094 e!3760098)))

(declare-fun b!6172679 () Bool)

(assert (=> b!6172679 (= e!3760100 e!3760097)))

(declare-fun res!2554928 () Bool)

(assert (=> b!6172679 (= res!2554928 (not (nullable!6104 (reg!16440 lt!2337422))))))

(assert (=> b!6172679 (=> (not res!2554928) (not e!3760097))))

(declare-fun bm!514951 () Bool)

(assert (=> bm!514951 (= call!514954 (validRegex!7847 (ite c!1112453 (reg!16440 lt!2337422) (ite c!1112454 (regTwo!32735 lt!2337422) (regTwo!32734 lt!2337422)))))))

(declare-fun b!6172680 () Bool)

(assert (=> b!6172680 (= e!3760098 call!514956)))

(declare-fun bm!514950 () Bool)

(assert (=> bm!514950 (= call!514955 (validRegex!7847 (ite c!1112454 (regOne!32735 lt!2337422) (regOne!32734 lt!2337422))))))

(declare-fun d!1934709 () Bool)

(declare-fun res!2554930 () Bool)

(assert (=> d!1934709 (=> res!2554930 e!3760099)))

(assert (=> d!1934709 (= res!2554930 ((_ is ElementMatch!16111) lt!2337422))))

(assert (=> d!1934709 (= (validRegex!7847 lt!2337422) e!3760099)))

(assert (= (and d!1934709 (not res!2554930)) b!6172672))

(assert (= (and b!6172672 c!1112453) b!6172679))

(assert (= (and b!6172672 (not c!1112453)) b!6172674))

(assert (= (and b!6172679 res!2554928) b!6172676))

(assert (= (and b!6172674 c!1112454) b!6172678))

(assert (= (and b!6172674 (not c!1112454)) b!6172673))

(assert (= (and b!6172678 res!2554926) b!6172680))

(assert (= (and b!6172673 (not res!2554927)) b!6172677))

(assert (= (and b!6172677 res!2554929) b!6172675))

(assert (= (or b!6172680 b!6172675) bm!514949))

(assert (= (or b!6172678 b!6172677) bm!514950))

(assert (= (or b!6172676 bm!514949) bm!514951))

(declare-fun m!7009130 () Bool)

(assert (=> b!6172679 m!7009130))

(declare-fun m!7009132 () Bool)

(assert (=> bm!514951 m!7009132))

(declare-fun m!7009134 () Bool)

(assert (=> bm!514950 m!7009134))

(assert (=> d!1934541 d!1934709))

(assert (=> d!1934541 d!1934531))

(assert (=> d!1934541 d!1934533))

(declare-fun d!1934711 () Bool)

(assert (=> d!1934711 (= (Exists!3181 lambda!336871) (choose!45875 lambda!336871))))

(declare-fun bs!1530597 () Bool)

(assert (= bs!1530597 d!1934711))

(declare-fun m!7009136 () Bool)

(assert (=> bs!1530597 m!7009136))

(assert (=> d!1934475 d!1934711))

(declare-fun d!1934713 () Bool)

(assert (=> d!1934713 (= (Exists!3181 lambda!336872) (choose!45875 lambda!336872))))

(declare-fun bs!1530598 () Bool)

(assert (= bs!1530598 d!1934713))

(declare-fun m!7009138 () Bool)

(assert (=> bs!1530598 m!7009138))

(assert (=> d!1934475 d!1934713))

(declare-fun bs!1530599 () Bool)

(declare-fun d!1934715 () Bool)

(assert (= bs!1530599 (and d!1934715 b!6172193)))

(declare-fun lambda!336917 () Int)

(assert (=> bs!1530599 (not (= lambda!336917 lambda!336881))))

(declare-fun bs!1530600 () Bool)

(assert (= bs!1530600 (and d!1934715 b!6171469)))

(assert (=> bs!1530600 (not (= lambda!336917 lambda!336830))))

(declare-fun bs!1530601 () Bool)

(assert (= bs!1530601 (and d!1934715 b!6172599)))

(assert (=> bs!1530601 (not (= lambda!336917 lambda!336910))))

(declare-fun bs!1530602 () Bool)

(assert (= bs!1530602 (and d!1934715 d!1934475)))

(assert (=> bs!1530602 (= lambda!336917 lambda!336871)))

(assert (=> bs!1530602 (not (= lambda!336917 lambda!336872))))

(declare-fun bs!1530603 () Bool)

(assert (= bs!1530603 (and d!1934715 b!6172186)))

(assert (=> bs!1530603 (not (= lambda!336917 lambda!336882))))

(assert (=> bs!1530600 (= lambda!336917 lambda!336829)))

(declare-fun bs!1530604 () Bool)

(assert (= bs!1530604 (and d!1934715 d!1934457)))

(assert (=> bs!1530604 (= lambda!336917 lambda!336859)))

(declare-fun bs!1530605 () Bool)

(assert (= bs!1530605 (and d!1934715 d!1934589)))

(assert (=> bs!1530605 (= lambda!336917 lambda!336899)))

(declare-fun bs!1530606 () Bool)

(assert (= bs!1530606 (and d!1934715 b!6172606)))

(assert (=> bs!1530606 (not (= lambda!336917 lambda!336909))))

(assert (=> d!1934715 true))

(assert (=> d!1934715 true))

(assert (=> d!1934715 true))

(declare-fun lambda!336918 () Int)

(assert (=> bs!1530599 (not (= lambda!336918 lambda!336881))))

(assert (=> bs!1530600 (= lambda!336918 lambda!336830)))

(assert (=> bs!1530601 (= (and (= (regOne!32734 r!7292) (regOne!32734 (regTwo!32735 r!7292))) (= (regTwo!32734 r!7292) (regTwo!32734 (regTwo!32735 r!7292)))) (= lambda!336918 lambda!336910))))

(assert (=> bs!1530602 (not (= lambda!336918 lambda!336871))))

(declare-fun bs!1530607 () Bool)

(assert (= bs!1530607 d!1934715))

(assert (=> bs!1530607 (not (= lambda!336918 lambda!336917))))

(assert (=> bs!1530602 (= lambda!336918 lambda!336872)))

(assert (=> bs!1530603 (= lambda!336918 lambda!336882)))

(assert (=> bs!1530600 (not (= lambda!336918 lambda!336829))))

(assert (=> bs!1530604 (not (= lambda!336918 lambda!336859))))

(assert (=> bs!1530605 (not (= lambda!336918 lambda!336899))))

(assert (=> bs!1530606 (not (= lambda!336918 lambda!336909))))

(assert (=> d!1934715 true))

(assert (=> d!1934715 true))

(assert (=> d!1934715 true))

(assert (=> d!1934715 (= (Exists!3181 lambda!336917) (Exists!3181 lambda!336918))))

(assert (=> d!1934715 true))

(declare-fun _$90!1926 () Unit!157667)

(assert (=> d!1934715 (= (choose!45877 (regOne!32734 r!7292) (regTwo!32734 r!7292) s!2326) _$90!1926)))

(declare-fun m!7009140 () Bool)

(assert (=> bs!1530607 m!7009140))

(declare-fun m!7009142 () Bool)

(assert (=> bs!1530607 m!7009142))

(assert (=> d!1934475 d!1934715))

(assert (=> d!1934475 d!1934567))

(declare-fun d!1934717 () Bool)

(assert (=> d!1934717 (= ($colon$colon!1988 (exprs!5995 lt!2337313) (ite (or c!1112346 c!1112348) (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (regOne!32735 (regOne!32734 r!7292)))) (Cons!64508 (ite (or c!1112346 c!1112348) (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))) (regOne!32735 (regOne!32734 r!7292))) (exprs!5995 lt!2337313)))))

(assert (=> bm!514884 d!1934717))

(declare-fun b!6172689 () Bool)

(declare-fun e!3760106 () (InoxSet Context!10990))

(assert (=> b!6172689 (= e!3760106 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172690 () Bool)

(declare-fun e!3760105 () Bool)

(assert (=> b!6172690 (= e!3760105 (nullable!6104 (h!70956 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337313)))))))))

(declare-fun b!6172691 () Bool)

(declare-fun call!514957 () (InoxSet Context!10990))

(assert (=> b!6172691 (= e!3760106 call!514957)))

(declare-fun e!3760107 () (InoxSet Context!10990))

(declare-fun b!6172692 () Bool)

(assert (=> b!6172692 (= e!3760107 ((_ map or) call!514957 (derivationStepZipperUp!1285 (Context!10991 (t!378134 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337313)))))) (h!70958 s!2326))))))

(declare-fun b!6172693 () Bool)

(assert (=> b!6172693 (= e!3760107 e!3760106)))

(declare-fun c!1112455 () Bool)

(assert (=> b!6172693 (= c!1112455 ((_ is Cons!64508) (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337313))))))))

(declare-fun bm!514952 () Bool)

(assert (=> bm!514952 (= call!514957 (derivationStepZipperDown!1359 (h!70956 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337313))))) (Context!10991 (t!378134 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337313)))))) (h!70958 s!2326)))))

(declare-fun d!1934719 () Bool)

(declare-fun c!1112456 () Bool)

(assert (=> d!1934719 (= c!1112456 e!3760105)))

(declare-fun res!2554939 () Bool)

(assert (=> d!1934719 (=> (not res!2554939) (not e!3760105))))

(assert (=> d!1934719 (= res!2554939 ((_ is Cons!64508) (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337313))))))))

(assert (=> d!1934719 (= (derivationStepZipperUp!1285 (Context!10991 (t!378134 (exprs!5995 lt!2337313))) (h!70958 s!2326)) e!3760107)))

(assert (= (and d!1934719 res!2554939) b!6172690))

(assert (= (and d!1934719 c!1112456) b!6172692))

(assert (= (and d!1934719 (not c!1112456)) b!6172693))

(assert (= (and b!6172693 c!1112455) b!6172691))

(assert (= (and b!6172693 (not c!1112455)) b!6172689))

(assert (= (or b!6172692 b!6172691) bm!514952))

(declare-fun m!7009144 () Bool)

(assert (=> b!6172690 m!7009144))

(declare-fun m!7009146 () Bool)

(assert (=> b!6172692 m!7009146))

(declare-fun m!7009148 () Bool)

(assert (=> bm!514952 m!7009148))

(assert (=> b!6172132 d!1934719))

(declare-fun d!1934721 () Bool)

(assert (=> d!1934721 (= (isEmptyExpr!1527 lt!2337358) ((_ is EmptyExpr!16111) lt!2337358))))

(assert (=> b!6171748 d!1934721))

(declare-fun d!1934723 () Bool)

(declare-fun res!2554940 () Bool)

(declare-fun e!3760108 () Bool)

(assert (=> d!1934723 (=> res!2554940 e!3760108)))

(assert (=> d!1934723 (= res!2554940 ((_ is Nil!64508) (exprs!5995 (h!70957 zl!343))))))

(assert (=> d!1934723 (= (forall!15231 (exprs!5995 (h!70957 zl!343)) lambda!336875) e!3760108)))

(declare-fun b!6172694 () Bool)

(declare-fun e!3760109 () Bool)

(assert (=> b!6172694 (= e!3760108 e!3760109)))

(declare-fun res!2554941 () Bool)

(assert (=> b!6172694 (=> (not res!2554941) (not e!3760109))))

(assert (=> b!6172694 (= res!2554941 (dynLambda!25440 lambda!336875 (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun b!6172695 () Bool)

(assert (=> b!6172695 (= e!3760109 (forall!15231 (t!378134 (exprs!5995 (h!70957 zl!343))) lambda!336875))))

(assert (= (and d!1934723 (not res!2554940)) b!6172694))

(assert (= (and b!6172694 res!2554941) b!6172695))

(declare-fun b_lambda!234929 () Bool)

(assert (=> (not b_lambda!234929) (not b!6172694)))

(declare-fun m!7009150 () Bool)

(assert (=> b!6172694 m!7009150))

(declare-fun m!7009152 () Bool)

(assert (=> b!6172695 m!7009152))

(assert (=> d!1934495 d!1934723))

(declare-fun d!1934725 () Bool)

(declare-fun e!3760111 () Bool)

(assert (=> d!1934725 e!3760111))

(declare-fun res!2554942 () Bool)

(assert (=> d!1934725 (=> (not res!2554942) (not e!3760111))))

(declare-fun lt!2337449 () List!64634)

(assert (=> d!1934725 (= res!2554942 (= (content!12041 lt!2337449) ((_ map or) (content!12041 (_1!36393 (get!22268 lt!2337383))) (content!12041 (_2!36393 (get!22268 lt!2337383))))))))

(declare-fun e!3760110 () List!64634)

(assert (=> d!1934725 (= lt!2337449 e!3760110)))

(declare-fun c!1112457 () Bool)

(assert (=> d!1934725 (= c!1112457 ((_ is Nil!64510) (_1!36393 (get!22268 lt!2337383))))))

(assert (=> d!1934725 (= (++!14197 (_1!36393 (get!22268 lt!2337383)) (_2!36393 (get!22268 lt!2337383))) lt!2337449)))

(declare-fun b!6172698 () Bool)

(declare-fun res!2554943 () Bool)

(assert (=> b!6172698 (=> (not res!2554943) (not e!3760111))))

(assert (=> b!6172698 (= res!2554943 (= (size!40249 lt!2337449) (+ (size!40249 (_1!36393 (get!22268 lt!2337383))) (size!40249 (_2!36393 (get!22268 lt!2337383))))))))

(declare-fun b!6172697 () Bool)

(assert (=> b!6172697 (= e!3760110 (Cons!64510 (h!70958 (_1!36393 (get!22268 lt!2337383))) (++!14197 (t!378136 (_1!36393 (get!22268 lt!2337383))) (_2!36393 (get!22268 lt!2337383)))))))

(declare-fun b!6172696 () Bool)

(assert (=> b!6172696 (= e!3760110 (_2!36393 (get!22268 lt!2337383)))))

(declare-fun b!6172699 () Bool)

(assert (=> b!6172699 (= e!3760111 (or (not (= (_2!36393 (get!22268 lt!2337383)) Nil!64510)) (= lt!2337449 (_1!36393 (get!22268 lt!2337383)))))))

(assert (= (and d!1934725 c!1112457) b!6172696))

(assert (= (and d!1934725 (not c!1112457)) b!6172697))

(assert (= (and d!1934725 res!2554942) b!6172698))

(assert (= (and b!6172698 res!2554943) b!6172699))

(declare-fun m!7009154 () Bool)

(assert (=> d!1934725 m!7009154))

(declare-fun m!7009156 () Bool)

(assert (=> d!1934725 m!7009156))

(declare-fun m!7009158 () Bool)

(assert (=> d!1934725 m!7009158))

(declare-fun m!7009160 () Bool)

(assert (=> b!6172698 m!7009160))

(declare-fun m!7009162 () Bool)

(assert (=> b!6172698 m!7009162))

(declare-fun m!7009164 () Bool)

(assert (=> b!6172698 m!7009164))

(declare-fun m!7009166 () Bool)

(assert (=> b!6172697 m!7009166))

(assert (=> b!6171875 d!1934725))

(assert (=> b!6171875 d!1934685))

(assert (=> d!1934347 d!1934349))

(assert (=> d!1934347 d!1934317))

(declare-fun d!1934727 () Bool)

(declare-fun e!3760112 () Bool)

(assert (=> d!1934727 (= (matchZipper!2123 ((_ map or) lt!2337289 lt!2337288) (t!378136 s!2326)) e!3760112)))

(declare-fun res!2554944 () Bool)

(assert (=> d!1934727 (=> res!2554944 e!3760112)))

(assert (=> d!1934727 (= res!2554944 (matchZipper!2123 lt!2337289 (t!378136 s!2326)))))

(assert (=> d!1934727 true))

(declare-fun _$48!1768 () Unit!157667)

(assert (=> d!1934727 (= (choose!45870 lt!2337289 lt!2337288 (t!378136 s!2326)) _$48!1768)))

(declare-fun b!6172700 () Bool)

(assert (=> b!6172700 (= e!3760112 (matchZipper!2123 lt!2337288 (t!378136 s!2326)))))

(assert (= (and d!1934727 (not res!2554944)) b!6172700))

(assert (=> d!1934727 m!7007974))

(assert (=> d!1934727 m!7007972))

(assert (=> b!6172700 m!7007948))

(assert (=> d!1934347 d!1934727))

(declare-fun bs!1530608 () Bool)

(declare-fun d!1934729 () Bool)

(assert (= bs!1530608 (and d!1934729 d!1934583)))

(declare-fun lambda!336919 () Int)

(assert (=> bs!1530608 (= lambda!336919 lambda!336896)))

(declare-fun bs!1530609 () Bool)

(assert (= bs!1530609 (and d!1934729 d!1934621)))

(assert (=> bs!1530609 (= lambda!336919 lambda!336903)))

(declare-fun bs!1530610 () Bool)

(assert (= bs!1530610 (and d!1934729 d!1934653)))

(assert (=> bs!1530610 (= lambda!336919 lambda!336907)))

(assert (=> d!1934729 (= (nullableZipper!1892 lt!2337282) (exists!2455 lt!2337282 lambda!336919))))

(declare-fun bs!1530611 () Bool)

(assert (= bs!1530611 d!1934729))

(declare-fun m!7009168 () Bool)

(assert (=> bs!1530611 m!7009168))

(assert (=> b!6171528 d!1934729))

(assert (=> b!6171595 d!1934343))

(declare-fun d!1934731 () Bool)

(assert (=> d!1934731 true))

(declare-fun setRes!41844 () Bool)

(assert (=> d!1934731 setRes!41844))

(declare-fun condSetEmpty!41844 () Bool)

(declare-fun res!2554945 () (InoxSet Context!10990))

(assert (=> d!1934731 (= condSetEmpty!41844 (= res!2554945 ((as const (Array Context!10990 Bool)) false)))))

(assert (=> d!1934731 (= (choose!45874 z!1189 lambda!336831) res!2554945)))

(declare-fun setIsEmpty!41844 () Bool)

(assert (=> setIsEmpty!41844 setRes!41844))

(declare-fun tp!1723380 () Bool)

(declare-fun e!3760113 () Bool)

(declare-fun setNonEmpty!41844 () Bool)

(declare-fun setElem!41844 () Context!10990)

(assert (=> setNonEmpty!41844 (= setRes!41844 (and tp!1723380 (inv!83524 setElem!41844) e!3760113))))

(declare-fun setRest!41844 () (InoxSet Context!10990))

(assert (=> setNonEmpty!41844 (= res!2554945 ((_ map or) (store ((as const (Array Context!10990 Bool)) false) setElem!41844 true) setRest!41844))))

(declare-fun b!6172701 () Bool)

(declare-fun tp!1723379 () Bool)

(assert (=> b!6172701 (= e!3760113 tp!1723379)))

(assert (= (and d!1934731 condSetEmpty!41844) setIsEmpty!41844))

(assert (= (and d!1934731 (not condSetEmpty!41844)) setNonEmpty!41844))

(assert (= setNonEmpty!41844 b!6172701))

(declare-fun m!7009170 () Bool)

(assert (=> setNonEmpty!41844 m!7009170))

(assert (=> d!1934511 d!1934731))

(declare-fun d!1934733 () Bool)

(assert (=> d!1934733 (= (isEmpty!36485 (unfocusZipperList!1532 zl!343)) ((_ is Nil!64508) (unfocusZipperList!1532 zl!343)))))

(assert (=> b!6172261 d!1934733))

(declare-fun d!1934735 () Bool)

(assert (=> d!1934735 true))

(assert (=> d!1934735 true))

(declare-fun res!2554948 () Bool)

(assert (=> d!1934735 (= (choose!45875 lambda!336830) res!2554948)))

(assert (=> d!1934453 d!1934735))

(assert (=> d!1934369 d!1934365))

(declare-fun d!1934737 () Bool)

(assert (=> d!1934737 (= (flatMap!1616 lt!2337291 lambda!336831) (dynLambda!25439 lambda!336831 lt!2337306))))

(assert (=> d!1934737 true))

(declare-fun _$13!3138 () Unit!157667)

(assert (=> d!1934737 (= (choose!45873 lt!2337291 lt!2337306 lambda!336831) _$13!3138)))

(declare-fun b_lambda!234931 () Bool)

(assert (=> (not b_lambda!234931) (not d!1934737)))

(declare-fun bs!1530612 () Bool)

(assert (= bs!1530612 d!1934737))

(assert (=> bs!1530612 m!7007996))

(assert (=> bs!1530612 m!7008220))

(assert (=> d!1934369 d!1934737))

(declare-fun d!1934739 () Bool)

(assert (=> d!1934739 (= (isUnion!968 lt!2337417) ((_ is Union!16111) lt!2337417))))

(assert (=> b!6172265 d!1934739))

(declare-fun d!1934741 () Bool)

(assert (=> d!1934741 (= (head!12743 lt!2337305) (h!70956 lt!2337305))))

(assert (=> b!6172151 d!1934741))

(declare-fun d!1934743 () Bool)

(assert (=> d!1934743 true))

(declare-fun setRes!41845 () Bool)

(assert (=> d!1934743 setRes!41845))

(declare-fun condSetEmpty!41845 () Bool)

(declare-fun res!2554949 () (InoxSet Context!10990))

(assert (=> d!1934743 (= condSetEmpty!41845 (= res!2554949 ((as const (Array Context!10990 Bool)) false)))))

(assert (=> d!1934743 (= (choose!45874 lt!2337307 lambda!336831) res!2554949)))

(declare-fun setIsEmpty!41845 () Bool)

(assert (=> setIsEmpty!41845 setRes!41845))

(declare-fun tp!1723382 () Bool)

(declare-fun setNonEmpty!41845 () Bool)

(declare-fun e!3760114 () Bool)

(declare-fun setElem!41845 () Context!10990)

(assert (=> setNonEmpty!41845 (= setRes!41845 (and tp!1723382 (inv!83524 setElem!41845) e!3760114))))

(declare-fun setRest!41845 () (InoxSet Context!10990))

(assert (=> setNonEmpty!41845 (= res!2554949 ((_ map or) (store ((as const (Array Context!10990 Bool)) false) setElem!41845 true) setRest!41845))))

(declare-fun b!6172702 () Bool)

(declare-fun tp!1723381 () Bool)

(assert (=> b!6172702 (= e!3760114 tp!1723381)))

(assert (= (and d!1934743 condSetEmpty!41845) setIsEmpty!41845))

(assert (= (and d!1934743 (not condSetEmpty!41845)) setNonEmpty!41845))

(assert (= setNonEmpty!41845 b!6172702))

(declare-fun m!7009172 () Bool)

(assert (=> setNonEmpty!41845 m!7009172))

(assert (=> d!1934363 d!1934743))

(declare-fun bs!1530613 () Bool)

(declare-fun d!1934745 () Bool)

(assert (= bs!1530613 (and d!1934745 d!1934583)))

(declare-fun lambda!336920 () Int)

(assert (=> bs!1530613 (= lambda!336920 lambda!336896)))

(declare-fun bs!1530614 () Bool)

(assert (= bs!1530614 (and d!1934745 d!1934621)))

(assert (=> bs!1530614 (= lambda!336920 lambda!336903)))

(declare-fun bs!1530615 () Bool)

(assert (= bs!1530615 (and d!1934745 d!1934653)))

(assert (=> bs!1530615 (= lambda!336920 lambda!336907)))

(declare-fun bs!1530616 () Bool)

(assert (= bs!1530616 (and d!1934745 d!1934729)))

(assert (=> bs!1530616 (= lambda!336920 lambda!336919)))

(assert (=> d!1934745 (= (nullableZipper!1892 lt!2337288) (exists!2455 lt!2337288 lambda!336920))))

(declare-fun bs!1530617 () Bool)

(assert (= bs!1530617 d!1934745))

(declare-fun m!7009174 () Bool)

(assert (=> bs!1530617 m!7009174))

(assert (=> b!6171592 d!1934745))

(assert (=> b!6172233 d!1934599))

(declare-fun d!1934747 () Bool)

(assert (=> d!1934747 (= (nullable!6104 (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))) (nullableFct!2068 (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))))))

(declare-fun bs!1530618 () Bool)

(assert (= bs!1530618 d!1934747))

(declare-fun m!7009176 () Bool)

(assert (=> bs!1530618 m!7009176))

(assert (=> b!6172087 d!1934747))

(assert (=> bs!1530481 d!1934513))

(declare-fun d!1934749 () Bool)

(assert (=> d!1934749 (= (nullable!6104 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292)))) (nullableFct!2068 (regOne!32734 (regTwo!32735 (regOne!32734 r!7292)))))))

(declare-fun bs!1530619 () Bool)

(assert (= bs!1530619 d!1934749))

(declare-fun m!7009178 () Bool)

(assert (=> bs!1530619 m!7009178))

(assert (=> b!6172283 d!1934749))

(declare-fun d!1934751 () Bool)

(declare-fun res!2554963 () Bool)

(declare-fun e!3760130 () Bool)

(assert (=> d!1934751 (=> res!2554963 e!3760130)))

(assert (=> d!1934751 (= res!2554963 ((_ is EmptyExpr!16111) (regOne!32735 (regOne!32734 r!7292))))))

(assert (=> d!1934751 (= (nullableFct!2068 (regOne!32735 (regOne!32734 r!7292))) e!3760130)))

(declare-fun b!6172717 () Bool)

(declare-fun e!3760131 () Bool)

(declare-fun call!514962 () Bool)

(assert (=> b!6172717 (= e!3760131 call!514962)))

(declare-fun b!6172718 () Bool)

(declare-fun e!3760127 () Bool)

(declare-fun e!3760129 () Bool)

(assert (=> b!6172718 (= e!3760127 e!3760129)))

(declare-fun res!2554964 () Bool)

(assert (=> b!6172718 (=> res!2554964 e!3760129)))

(assert (=> b!6172718 (= res!2554964 ((_ is Star!16111) (regOne!32735 (regOne!32734 r!7292))))))

(declare-fun bm!514957 () Bool)

(declare-fun c!1112460 () Bool)

(assert (=> bm!514957 (= call!514962 (nullable!6104 (ite c!1112460 (regTwo!32735 (regOne!32735 (regOne!32734 r!7292))) (regTwo!32734 (regOne!32735 (regOne!32734 r!7292))))))))

(declare-fun b!6172719 () Bool)

(declare-fun e!3760128 () Bool)

(declare-fun e!3760132 () Bool)

(assert (=> b!6172719 (= e!3760128 e!3760132)))

(declare-fun res!2554960 () Bool)

(declare-fun call!514963 () Bool)

(assert (=> b!6172719 (= res!2554960 call!514963)))

(assert (=> b!6172719 (=> (not res!2554960) (not e!3760132))))

(declare-fun b!6172720 () Bool)

(assert (=> b!6172720 (= e!3760132 call!514962)))

(declare-fun b!6172721 () Bool)

(assert (=> b!6172721 (= e!3760129 e!3760128)))

(assert (=> b!6172721 (= c!1112460 ((_ is Union!16111) (regOne!32735 (regOne!32734 r!7292))))))

(declare-fun b!6172722 () Bool)

(assert (=> b!6172722 (= e!3760128 e!3760131)))

(declare-fun res!2554961 () Bool)

(assert (=> b!6172722 (= res!2554961 call!514963)))

(assert (=> b!6172722 (=> res!2554961 e!3760131)))

(declare-fun bm!514958 () Bool)

(assert (=> bm!514958 (= call!514963 (nullable!6104 (ite c!1112460 (regOne!32735 (regOne!32735 (regOne!32734 r!7292))) (regOne!32734 (regOne!32735 (regOne!32734 r!7292))))))))

(declare-fun b!6172723 () Bool)

(assert (=> b!6172723 (= e!3760130 e!3760127)))

(declare-fun res!2554962 () Bool)

(assert (=> b!6172723 (=> (not res!2554962) (not e!3760127))))

(assert (=> b!6172723 (= res!2554962 (and (not ((_ is EmptyLang!16111) (regOne!32735 (regOne!32734 r!7292)))) (not ((_ is ElementMatch!16111) (regOne!32735 (regOne!32734 r!7292))))))))

(assert (= (and d!1934751 (not res!2554963)) b!6172723))

(assert (= (and b!6172723 res!2554962) b!6172718))

(assert (= (and b!6172718 (not res!2554964)) b!6172721))

(assert (= (and b!6172721 c!1112460) b!6172722))

(assert (= (and b!6172721 (not c!1112460)) b!6172719))

(assert (= (and b!6172722 (not res!2554961)) b!6172717))

(assert (= (and b!6172719 res!2554960) b!6172720))

(assert (= (or b!6172717 b!6172720) bm!514957))

(assert (= (or b!6172722 b!6172719) bm!514958))

(declare-fun m!7009180 () Bool)

(assert (=> bm!514957 m!7009180))

(declare-fun m!7009182 () Bool)

(assert (=> bm!514958 m!7009182))

(assert (=> d!1934371 d!1934751))

(declare-fun d!1934753 () Bool)

(declare-fun c!1112461 () Bool)

(assert (=> d!1934753 (= c!1112461 (isEmpty!36488 (tail!11827 (t!378136 s!2326))))))

(declare-fun e!3760133 () Bool)

(assert (=> d!1934753 (= (matchZipper!2123 (derivationStepZipper!2084 lt!2337289 (head!12742 (t!378136 s!2326))) (tail!11827 (t!378136 s!2326))) e!3760133)))

(declare-fun b!6172724 () Bool)

(assert (=> b!6172724 (= e!3760133 (nullableZipper!1892 (derivationStepZipper!2084 lt!2337289 (head!12742 (t!378136 s!2326)))))))

(declare-fun b!6172725 () Bool)

(assert (=> b!6172725 (= e!3760133 (matchZipper!2123 (derivationStepZipper!2084 (derivationStepZipper!2084 lt!2337289 (head!12742 (t!378136 s!2326))) (head!12742 (tail!11827 (t!378136 s!2326)))) (tail!11827 (tail!11827 (t!378136 s!2326)))))))

(assert (= (and d!1934753 c!1112461) b!6172724))

(assert (= (and d!1934753 (not c!1112461)) b!6172725))

(assert (=> d!1934753 m!7008080))

(assert (=> d!1934753 m!7008798))

(assert (=> b!6172724 m!7008078))

(declare-fun m!7009184 () Bool)

(assert (=> b!6172724 m!7009184))

(assert (=> b!6172725 m!7008080))

(assert (=> b!6172725 m!7008802))

(assert (=> b!6172725 m!7008078))

(assert (=> b!6172725 m!7008802))

(declare-fun m!7009186 () Bool)

(assert (=> b!6172725 m!7009186))

(assert (=> b!6172725 m!7008080))

(assert (=> b!6172725 m!7008806))

(assert (=> b!6172725 m!7009186))

(assert (=> b!6172725 m!7008806))

(declare-fun m!7009188 () Bool)

(assert (=> b!6172725 m!7009188))

(assert (=> b!6171515 d!1934753))

(declare-fun bs!1530620 () Bool)

(declare-fun d!1934755 () Bool)

(assert (= bs!1530620 (and d!1934755 d!1934701)))

(declare-fun lambda!336921 () Int)

(assert (=> bs!1530620 (= lambda!336921 lambda!336912)))

(declare-fun bs!1530621 () Bool)

(assert (= bs!1530621 (and d!1934755 d!1934577)))

(assert (=> bs!1530621 (= lambda!336921 lambda!336893)))

(declare-fun bs!1530622 () Bool)

(assert (= bs!1530622 (and d!1934755 d!1934691)))

(assert (=> bs!1530622 (= lambda!336921 lambda!336911)))

(declare-fun bs!1530623 () Bool)

(assert (= bs!1530623 (and d!1934755 b!6171493)))

(assert (=> bs!1530623 (= (= (head!12742 (t!378136 s!2326)) (h!70958 s!2326)) (= lambda!336921 lambda!336831))))

(declare-fun bs!1530624 () Bool)

(assert (= bs!1530624 (and d!1934755 d!1934667)))

(assert (=> bs!1530624 (= lambda!336921 lambda!336908)))

(assert (=> d!1934755 true))

(assert (=> d!1934755 (= (derivationStepZipper!2084 lt!2337289 (head!12742 (t!378136 s!2326))) (flatMap!1616 lt!2337289 lambda!336921))))

(declare-fun bs!1530625 () Bool)

(assert (= bs!1530625 d!1934755))

(declare-fun m!7009190 () Bool)

(assert (=> bs!1530625 m!7009190))

(assert (=> b!6171515 d!1934755))

(assert (=> b!6171515 d!1934579))

(assert (=> b!6171515 d!1934581))

(declare-fun b!6172726 () Bool)

(declare-fun e!3760135 () (InoxSet Context!10990))

(assert (=> b!6172726 (= e!3760135 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172727 () Bool)

(declare-fun e!3760134 () Bool)

(assert (=> b!6172727 (= e!3760134 (nullable!6104 (h!70956 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337306)))))))))

(declare-fun b!6172728 () Bool)

(declare-fun call!514964 () (InoxSet Context!10990))

(assert (=> b!6172728 (= e!3760135 call!514964)))

(declare-fun e!3760136 () (InoxSet Context!10990))

(declare-fun b!6172729 () Bool)

(assert (=> b!6172729 (= e!3760136 ((_ map or) call!514964 (derivationStepZipperUp!1285 (Context!10991 (t!378134 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337306)))))) (h!70958 s!2326))))))

(declare-fun b!6172730 () Bool)

(assert (=> b!6172730 (= e!3760136 e!3760135)))

(declare-fun c!1112462 () Bool)

(assert (=> b!6172730 (= c!1112462 ((_ is Cons!64508) (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337306))))))))

(declare-fun bm!514959 () Bool)

(assert (=> bm!514959 (= call!514964 (derivationStepZipperDown!1359 (h!70956 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337306))))) (Context!10991 (t!378134 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337306)))))) (h!70958 s!2326)))))

(declare-fun d!1934757 () Bool)

(declare-fun c!1112463 () Bool)

(assert (=> d!1934757 (= c!1112463 e!3760134)))

(declare-fun res!2554965 () Bool)

(assert (=> d!1934757 (=> (not res!2554965) (not e!3760134))))

(assert (=> d!1934757 (= res!2554965 ((_ is Cons!64508) (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337306))))))))

(assert (=> d!1934757 (= (derivationStepZipperUp!1285 (Context!10991 (t!378134 (exprs!5995 lt!2337306))) (h!70958 s!2326)) e!3760136)))

(assert (= (and d!1934757 res!2554965) b!6172727))

(assert (= (and d!1934757 c!1112463) b!6172729))

(assert (= (and d!1934757 (not c!1112463)) b!6172730))

(assert (= (and b!6172730 c!1112462) b!6172728))

(assert (= (and b!6172730 (not c!1112462)) b!6172726))

(assert (= (or b!6172729 b!6172728) bm!514959))

(declare-fun m!7009192 () Bool)

(assert (=> b!6172727 m!7009192))

(declare-fun m!7009194 () Bool)

(assert (=> b!6172729 m!7009194))

(declare-fun m!7009196 () Bool)

(assert (=> bm!514959 m!7009196))

(assert (=> b!6171625 d!1934757))

(assert (=> d!1934391 d!1934643))

(assert (=> b!6172272 d!1934377))

(declare-fun bs!1530626 () Bool)

(declare-fun d!1934759 () Bool)

(assert (= bs!1530626 (and d!1934759 d!1934377)))

(declare-fun lambda!336922 () Int)

(assert (=> bs!1530626 (= lambda!336922 lambda!336849)))

(declare-fun bs!1530627 () Bool)

(assert (= bs!1530627 (and d!1934759 d!1934561)))

(assert (=> bs!1530627 (= lambda!336922 lambda!336890)))

(declare-fun bs!1530628 () Bool)

(assert (= bs!1530628 (and d!1934759 d!1934531)))

(assert (=> bs!1530628 (= lambda!336922 lambda!336885)))

(declare-fun bs!1530629 () Bool)

(assert (= bs!1530629 (and d!1934759 d!1934543)))

(assert (=> bs!1530629 (= lambda!336922 lambda!336889)))

(declare-fun bs!1530630 () Bool)

(assert (= bs!1530630 (and d!1934759 d!1934619)))

(assert (=> bs!1530630 (= lambda!336922 lambda!336902)))

(declare-fun bs!1530631 () Bool)

(assert (= bs!1530631 (and d!1934759 d!1934627)))

(assert (=> bs!1530631 (= lambda!336922 lambda!336904)))

(declare-fun bs!1530632 () Bool)

(assert (= bs!1530632 (and d!1934759 d!1934495)))

(assert (=> bs!1530632 (= lambda!336922 lambda!336875)))

(declare-fun bs!1530633 () Bool)

(assert (= bs!1530633 (and d!1934759 d!1934629)))

(assert (=> bs!1530633 (= lambda!336922 lambda!336905)))

(declare-fun bs!1530634 () Bool)

(assert (= bs!1530634 (and d!1934759 d!1934651)))

(assert (=> bs!1530634 (= lambda!336922 lambda!336906)))

(declare-fun bs!1530635 () Bool)

(assert (= bs!1530635 (and d!1934759 d!1934533)))

(assert (=> bs!1530635 (= lambda!336922 lambda!336888)))

(declare-fun bs!1530636 () Bool)

(assert (= bs!1530636 (and d!1934759 d!1934595)))

(assert (=> bs!1530636 (= lambda!336922 lambda!336901)))

(declare-fun bs!1530637 () Bool)

(assert (= bs!1530637 (and d!1934759 d!1934523)))

(assert (=> bs!1530637 (= lambda!336922 lambda!336876)))

(declare-fun bs!1530638 () Bool)

(assert (= bs!1530638 (and d!1934759 d!1934591)))

(assert (=> bs!1530638 (= lambda!336922 lambda!336900)))

(declare-fun lt!2337450 () List!64632)

(assert (=> d!1934759 (forall!15231 lt!2337450 lambda!336922)))

(declare-fun e!3760137 () List!64632)

(assert (=> d!1934759 (= lt!2337450 e!3760137)))

(declare-fun c!1112464 () Bool)

(assert (=> d!1934759 (= c!1112464 ((_ is Cons!64509) (t!378135 zl!343)))))

(assert (=> d!1934759 (= (unfocusZipperList!1532 (t!378135 zl!343)) lt!2337450)))

(declare-fun b!6172731 () Bool)

(assert (=> b!6172731 (= e!3760137 (Cons!64508 (generalisedConcat!1708 (exprs!5995 (h!70957 (t!378135 zl!343)))) (unfocusZipperList!1532 (t!378135 (t!378135 zl!343)))))))

(declare-fun b!6172732 () Bool)

(assert (=> b!6172732 (= e!3760137 Nil!64508)))

(assert (= (and d!1934759 c!1112464) b!6172731))

(assert (= (and d!1934759 (not c!1112464)) b!6172732))

(declare-fun m!7009198 () Bool)

(assert (=> d!1934759 m!7009198))

(declare-fun m!7009200 () Bool)

(assert (=> b!6172731 m!7009200))

(declare-fun m!7009202 () Bool)

(assert (=> b!6172731 m!7009202))

(assert (=> b!6172272 d!1934759))

(assert (=> d!1934527 d!1934559))

(assert (=> d!1934527 d!1934331))

(assert (=> d!1934503 d!1934559))

(declare-fun d!1934761 () Bool)

(declare-fun c!1112465 () Bool)

(assert (=> d!1934761 (= c!1112465 (isEmpty!36488 (tail!11827 (t!378136 s!2326))))))

(declare-fun e!3760138 () Bool)

(assert (=> d!1934761 (= (matchZipper!2123 (derivationStepZipper!2084 ((_ map or) lt!2337296 lt!2337288) (head!12742 (t!378136 s!2326))) (tail!11827 (t!378136 s!2326))) e!3760138)))

(declare-fun b!6172733 () Bool)

(assert (=> b!6172733 (= e!3760138 (nullableZipper!1892 (derivationStepZipper!2084 ((_ map or) lt!2337296 lt!2337288) (head!12742 (t!378136 s!2326)))))))

(declare-fun b!6172734 () Bool)

(assert (=> b!6172734 (= e!3760138 (matchZipper!2123 (derivationStepZipper!2084 (derivationStepZipper!2084 ((_ map or) lt!2337296 lt!2337288) (head!12742 (t!378136 s!2326))) (head!12742 (tail!11827 (t!378136 s!2326)))) (tail!11827 (tail!11827 (t!378136 s!2326)))))))

(assert (= (and d!1934761 c!1112465) b!6172733))

(assert (= (and d!1934761 (not c!1112465)) b!6172734))

(assert (=> d!1934761 m!7008080))

(assert (=> d!1934761 m!7008798))

(assert (=> b!6172733 m!7008290))

(declare-fun m!7009204 () Bool)

(assert (=> b!6172733 m!7009204))

(assert (=> b!6172734 m!7008080))

(assert (=> b!6172734 m!7008802))

(assert (=> b!6172734 m!7008290))

(assert (=> b!6172734 m!7008802))

(declare-fun m!7009206 () Bool)

(assert (=> b!6172734 m!7009206))

(assert (=> b!6172734 m!7008080))

(assert (=> b!6172734 m!7008806))

(assert (=> b!6172734 m!7009206))

(assert (=> b!6172734 m!7008806))

(declare-fun m!7009208 () Bool)

(assert (=> b!6172734 m!7009208))

(assert (=> b!6171761 d!1934761))

(declare-fun bs!1530639 () Bool)

(declare-fun d!1934763 () Bool)

(assert (= bs!1530639 (and d!1934763 d!1934701)))

(declare-fun lambda!336923 () Int)

(assert (=> bs!1530639 (= lambda!336923 lambda!336912)))

(declare-fun bs!1530640 () Bool)

(assert (= bs!1530640 (and d!1934763 d!1934577)))

(assert (=> bs!1530640 (= lambda!336923 lambda!336893)))

(declare-fun bs!1530641 () Bool)

(assert (= bs!1530641 (and d!1934763 d!1934691)))

(assert (=> bs!1530641 (= lambda!336923 lambda!336911)))

(declare-fun bs!1530642 () Bool)

(assert (= bs!1530642 (and d!1934763 d!1934755)))

(assert (=> bs!1530642 (= lambda!336923 lambda!336921)))

(declare-fun bs!1530643 () Bool)

(assert (= bs!1530643 (and d!1934763 b!6171493)))

(assert (=> bs!1530643 (= (= (head!12742 (t!378136 s!2326)) (h!70958 s!2326)) (= lambda!336923 lambda!336831))))

(declare-fun bs!1530644 () Bool)

(assert (= bs!1530644 (and d!1934763 d!1934667)))

(assert (=> bs!1530644 (= lambda!336923 lambda!336908)))

(assert (=> d!1934763 true))

(assert (=> d!1934763 (= (derivationStepZipper!2084 ((_ map or) lt!2337296 lt!2337288) (head!12742 (t!378136 s!2326))) (flatMap!1616 ((_ map or) lt!2337296 lt!2337288) lambda!336923))))

(declare-fun bs!1530645 () Bool)

(assert (= bs!1530645 d!1934763))

(declare-fun m!7009210 () Bool)

(assert (=> bs!1530645 m!7009210))

(assert (=> b!6171761 d!1934763))

(assert (=> b!6171761 d!1934579))

(assert (=> b!6171761 d!1934581))

(declare-fun bs!1530646 () Bool)

(declare-fun d!1934765 () Bool)

(assert (= bs!1530646 (and d!1934765 d!1934729)))

(declare-fun lambda!336924 () Int)

(assert (=> bs!1530646 (= lambda!336924 lambda!336919)))

(declare-fun bs!1530647 () Bool)

(assert (= bs!1530647 (and d!1934765 d!1934745)))

(assert (=> bs!1530647 (= lambda!336924 lambda!336920)))

(declare-fun bs!1530648 () Bool)

(assert (= bs!1530648 (and d!1934765 d!1934621)))

(assert (=> bs!1530648 (= lambda!336924 lambda!336903)))

(declare-fun bs!1530649 () Bool)

(assert (= bs!1530649 (and d!1934765 d!1934583)))

(assert (=> bs!1530649 (= lambda!336924 lambda!336896)))

(declare-fun bs!1530650 () Bool)

(assert (= bs!1530650 (and d!1934765 d!1934653)))

(assert (=> bs!1530650 (= lambda!336924 lambda!336907)))

(assert (=> d!1934765 (= (nullableZipper!1892 ((_ map or) lt!2337282 lt!2337288)) (exists!2455 ((_ map or) lt!2337282 lt!2337288) lambda!336924))))

(declare-fun bs!1530651 () Bool)

(assert (= bs!1530651 d!1934765))

(declare-fun m!7009212 () Bool)

(assert (=> bs!1530651 m!7009212))

(assert (=> b!6171530 d!1934765))

(declare-fun d!1934767 () Bool)

(assert (=> d!1934767 (= (isEmpty!36488 (tail!11827 s!2326)) ((_ is Nil!64510) (tail!11827 s!2326)))))

(assert (=> b!6172237 d!1934767))

(declare-fun d!1934769 () Bool)

(assert (=> d!1934769 (= (tail!11827 s!2326) (t!378136 s!2326))))

(assert (=> b!6172237 d!1934769))

(declare-fun b!6172735 () Bool)

(declare-fun e!3760142 () Bool)

(declare-fun lt!2337451 () Bool)

(assert (=> b!6172735 (= e!3760142 (not lt!2337451))))

(declare-fun b!6172736 () Bool)

(declare-fun e!3760144 () Bool)

(assert (=> b!6172736 (= e!3760144 (matchR!8294 (derivativeStep!4830 (regOne!32734 r!7292) (head!12742 (_1!36393 (get!22268 lt!2337383)))) (tail!11827 (_1!36393 (get!22268 lt!2337383)))))))

(declare-fun b!6172737 () Bool)

(declare-fun res!2554969 () Bool)

(declare-fun e!3760141 () Bool)

(assert (=> b!6172737 (=> res!2554969 e!3760141)))

(declare-fun e!3760143 () Bool)

(assert (=> b!6172737 (= res!2554969 e!3760143)))

(declare-fun res!2554971 () Bool)

(assert (=> b!6172737 (=> (not res!2554971) (not e!3760143))))

(assert (=> b!6172737 (= res!2554971 lt!2337451)))

(declare-fun b!6172738 () Bool)

(declare-fun e!3760140 () Bool)

(declare-fun call!514965 () Bool)

(assert (=> b!6172738 (= e!3760140 (= lt!2337451 call!514965))))

(declare-fun bm!514960 () Bool)

(assert (=> bm!514960 (= call!514965 (isEmpty!36488 (_1!36393 (get!22268 lt!2337383))))))

(declare-fun b!6172739 () Bool)

(assert (=> b!6172739 (= e!3760140 e!3760142)))

(declare-fun c!1112467 () Bool)

(assert (=> b!6172739 (= c!1112467 ((_ is EmptyLang!16111) (regOne!32734 r!7292)))))

(declare-fun b!6172740 () Bool)

(declare-fun res!2554973 () Bool)

(assert (=> b!6172740 (=> res!2554973 e!3760141)))

(assert (=> b!6172740 (= res!2554973 (not ((_ is ElementMatch!16111) (regOne!32734 r!7292))))))

(assert (=> b!6172740 (= e!3760142 e!3760141)))

(declare-fun b!6172741 () Bool)

(declare-fun e!3760139 () Bool)

(assert (=> b!6172741 (= e!3760141 e!3760139)))

(declare-fun res!2554966 () Bool)

(assert (=> b!6172741 (=> (not res!2554966) (not e!3760139))))

(assert (=> b!6172741 (= res!2554966 (not lt!2337451))))

(declare-fun d!1934771 () Bool)

(assert (=> d!1934771 e!3760140))

(declare-fun c!1112468 () Bool)

(assert (=> d!1934771 (= c!1112468 ((_ is EmptyExpr!16111) (regOne!32734 r!7292)))))

(assert (=> d!1934771 (= lt!2337451 e!3760144)))

(declare-fun c!1112466 () Bool)

(assert (=> d!1934771 (= c!1112466 (isEmpty!36488 (_1!36393 (get!22268 lt!2337383))))))

(assert (=> d!1934771 (validRegex!7847 (regOne!32734 r!7292))))

(assert (=> d!1934771 (= (matchR!8294 (regOne!32734 r!7292) (_1!36393 (get!22268 lt!2337383))) lt!2337451)))

(declare-fun b!6172742 () Bool)

(declare-fun res!2554967 () Bool)

(assert (=> b!6172742 (=> (not res!2554967) (not e!3760143))))

(assert (=> b!6172742 (= res!2554967 (not call!514965))))

(declare-fun b!6172743 () Bool)

(declare-fun res!2554972 () Bool)

(assert (=> b!6172743 (=> (not res!2554972) (not e!3760143))))

(assert (=> b!6172743 (= res!2554972 (isEmpty!36488 (tail!11827 (_1!36393 (get!22268 lt!2337383)))))))

(declare-fun b!6172744 () Bool)

(assert (=> b!6172744 (= e!3760143 (= (head!12742 (_1!36393 (get!22268 lt!2337383))) (c!1112104 (regOne!32734 r!7292))))))

(declare-fun b!6172745 () Bool)

(declare-fun e!3760145 () Bool)

(assert (=> b!6172745 (= e!3760139 e!3760145)))

(declare-fun res!2554968 () Bool)

(assert (=> b!6172745 (=> res!2554968 e!3760145)))

(assert (=> b!6172745 (= res!2554968 call!514965)))

(declare-fun b!6172746 () Bool)

(assert (=> b!6172746 (= e!3760145 (not (= (head!12742 (_1!36393 (get!22268 lt!2337383))) (c!1112104 (regOne!32734 r!7292)))))))

(declare-fun b!6172747 () Bool)

(assert (=> b!6172747 (= e!3760144 (nullable!6104 (regOne!32734 r!7292)))))

(declare-fun b!6172748 () Bool)

(declare-fun res!2554970 () Bool)

(assert (=> b!6172748 (=> res!2554970 e!3760145)))

(assert (=> b!6172748 (= res!2554970 (not (isEmpty!36488 (tail!11827 (_1!36393 (get!22268 lt!2337383))))))))

(assert (= (and d!1934771 c!1112466) b!6172747))

(assert (= (and d!1934771 (not c!1112466)) b!6172736))

(assert (= (and d!1934771 c!1112468) b!6172738))

(assert (= (and d!1934771 (not c!1112468)) b!6172739))

(assert (= (and b!6172739 c!1112467) b!6172735))

(assert (= (and b!6172739 (not c!1112467)) b!6172740))

(assert (= (and b!6172740 (not res!2554973)) b!6172737))

(assert (= (and b!6172737 res!2554971) b!6172742))

(assert (= (and b!6172742 res!2554967) b!6172743))

(assert (= (and b!6172743 res!2554972) b!6172744))

(assert (= (and b!6172737 (not res!2554969)) b!6172741))

(assert (= (and b!6172741 res!2554966) b!6172745))

(assert (= (and b!6172745 (not res!2554968)) b!6172748))

(assert (= (and b!6172748 (not res!2554970)) b!6172746))

(assert (= (or b!6172738 b!6172742 b!6172745) bm!514960))

(declare-fun m!7009214 () Bool)

(assert (=> b!6172744 m!7009214))

(declare-fun m!7009216 () Bool)

(assert (=> d!1934771 m!7009216))

(assert (=> d!1934771 m!7008432))

(assert (=> b!6172747 m!7008766))

(declare-fun m!7009218 () Bool)

(assert (=> b!6172748 m!7009218))

(assert (=> b!6172748 m!7009218))

(declare-fun m!7009220 () Bool)

(assert (=> b!6172748 m!7009220))

(assert (=> bm!514960 m!7009216))

(assert (=> b!6172743 m!7009218))

(assert (=> b!6172743 m!7009218))

(assert (=> b!6172743 m!7009220))

(assert (=> b!6172736 m!7009214))

(assert (=> b!6172736 m!7009214))

(declare-fun m!7009222 () Bool)

(assert (=> b!6172736 m!7009222))

(assert (=> b!6172736 m!7009218))

(assert (=> b!6172736 m!7009222))

(assert (=> b!6172736 m!7009218))

(declare-fun m!7009224 () Bool)

(assert (=> b!6172736 m!7009224))

(assert (=> b!6172746 m!7009214))

(assert (=> b!6171870 d!1934771))

(assert (=> b!6171870 d!1934685))

(declare-fun b!6172749 () Bool)

(declare-fun e!3760150 () Bool)

(assert (=> b!6172749 (= e!3760150 (nullable!6104 (regOne!32734 (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343))))))))))))

(declare-fun b!6172750 () Bool)

(declare-fun c!1112472 () Bool)

(assert (=> b!6172750 (= c!1112472 ((_ is Star!16111) (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))))))

(declare-fun e!3760151 () (InoxSet Context!10990))

(declare-fun e!3760148 () (InoxSet Context!10990))

(assert (=> b!6172750 (= e!3760151 e!3760148)))

(declare-fun call!514968 () (InoxSet Context!10990))

(declare-fun bm!514961 () Bool)

(declare-fun c!1112469 () Bool)

(declare-fun c!1112471 () Bool)

(declare-fun call!514969 () List!64632)

(declare-fun c!1112473 () Bool)

(assert (=> bm!514961 (= call!514968 (derivationStepZipperDown!1359 (ite c!1112473 (regTwo!32735 (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))) (ite c!1112469 (regTwo!32734 (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))) (ite c!1112471 (regOne!32734 (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))) (reg!16440 (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343))))))))))) (ite (or c!1112473 c!1112469) (Context!10991 (t!378134 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))) (Context!10991 call!514969)) (h!70958 s!2326)))))

(declare-fun b!6172751 () Bool)

(declare-fun call!514967 () (InoxSet Context!10990))

(assert (=> b!6172751 (= e!3760148 call!514967)))

(declare-fun b!6172752 () Bool)

(declare-fun e!3760149 () (InoxSet Context!10990))

(assert (=> b!6172752 (= e!3760149 e!3760151)))

(assert (=> b!6172752 (= c!1112471 ((_ is Concat!24956) (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))))))

(declare-fun bm!514962 () Bool)

(declare-fun call!514966 () List!64632)

(assert (=> bm!514962 (= call!514969 call!514966)))

(declare-fun d!1934773 () Bool)

(declare-fun c!1112470 () Bool)

(assert (=> d!1934773 (= c!1112470 (and ((_ is ElementMatch!16111) (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))) (= (c!1112104 (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))) (h!70958 s!2326))))))

(declare-fun e!3760147 () (InoxSet Context!10990))

(assert (=> d!1934773 (= (derivationStepZipperDown!1359 (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343))))))) (Context!10991 (t!378134 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))) (h!70958 s!2326)) e!3760147)))

(declare-fun bm!514963 () Bool)

(assert (=> bm!514963 (= call!514966 ($colon$colon!1988 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343))))))))) (ite (or c!1112469 c!1112471) (regTwo!32734 (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))) (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343))))))))))))

(declare-fun b!6172753 () Bool)

(assert (=> b!6172753 (= e!3760147 (store ((as const (Array Context!10990 Bool)) false) (Context!10991 (t!378134 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))) true))))

(declare-fun b!6172754 () Bool)

(declare-fun e!3760146 () (InoxSet Context!10990))

(declare-fun call!514970 () (InoxSet Context!10990))

(assert (=> b!6172754 (= e!3760146 ((_ map or) call!514970 call!514968))))

(declare-fun bm!514964 () Bool)

(declare-fun call!514971 () (InoxSet Context!10990))

(assert (=> bm!514964 (= call!514967 call!514971)))

(declare-fun bm!514965 () Bool)

(assert (=> bm!514965 (= call!514971 call!514968)))

(declare-fun b!6172755 () Bool)

(assert (=> b!6172755 (= e!3760151 call!514967)))

(declare-fun bm!514966 () Bool)

(assert (=> bm!514966 (= call!514970 (derivationStepZipperDown!1359 (ite c!1112473 (regOne!32735 (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))) (regOne!32734 (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343))))))))) (ite c!1112473 (Context!10991 (t!378134 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))) (Context!10991 call!514966)) (h!70958 s!2326)))))

(declare-fun b!6172756 () Bool)

(assert (=> b!6172756 (= e!3760148 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172757 () Bool)

(assert (=> b!6172757 (= c!1112469 e!3760150)))

(declare-fun res!2554974 () Bool)

(assert (=> b!6172757 (=> (not res!2554974) (not e!3760150))))

(assert (=> b!6172757 (= res!2554974 ((_ is Concat!24956) (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))))))

(assert (=> b!6172757 (= e!3760146 e!3760149)))

(declare-fun b!6172758 () Bool)

(assert (=> b!6172758 (= e!3760147 e!3760146)))

(assert (=> b!6172758 (= c!1112473 ((_ is Union!16111) (h!70956 (exprs!5995 (Context!10991 (Cons!64508 (h!70956 (exprs!5995 (h!70957 zl!343))) (t!378134 (exprs!5995 (h!70957 zl!343)))))))))))

(declare-fun b!6172759 () Bool)

(assert (=> b!6172759 (= e!3760149 ((_ map or) call!514970 call!514971))))

(assert (= (and d!1934773 c!1112470) b!6172753))

(assert (= (and d!1934773 (not c!1112470)) b!6172758))

(assert (= (and b!6172758 c!1112473) b!6172754))

(assert (= (and b!6172758 (not c!1112473)) b!6172757))

(assert (= (and b!6172757 res!2554974) b!6172749))

(assert (= (and b!6172757 c!1112469) b!6172759))

(assert (= (and b!6172757 (not c!1112469)) b!6172752))

(assert (= (and b!6172752 c!1112471) b!6172755))

(assert (= (and b!6172752 (not c!1112471)) b!6172750))

(assert (= (and b!6172750 c!1112472) b!6172751))

(assert (= (and b!6172750 (not c!1112472)) b!6172756))

(assert (= (or b!6172755 b!6172751) bm!514962))

(assert (= (or b!6172755 b!6172751) bm!514964))

(assert (= (or b!6172759 bm!514962) bm!514963))

(assert (= (or b!6172759 bm!514964) bm!514965))

(assert (= (or b!6172754 bm!514965) bm!514961))

(assert (= (or b!6172754 b!6172759) bm!514966))

(declare-fun m!7009226 () Bool)

(assert (=> b!6172753 m!7009226))

(declare-fun m!7009228 () Bool)

(assert (=> bm!514963 m!7009228))

(declare-fun m!7009230 () Bool)

(assert (=> bm!514966 m!7009230))

(declare-fun m!7009232 () Bool)

(assert (=> bm!514961 m!7009232))

(declare-fun m!7009234 () Bool)

(assert (=> b!6172749 m!7009234))

(assert (=> bm!514843 d!1934773))

(declare-fun b!6172760 () Bool)

(declare-fun e!3760153 () (InoxSet Context!10990))

(assert (=> b!6172760 (= e!3760153 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172761 () Bool)

(declare-fun e!3760152 () Bool)

(assert (=> b!6172761 (= e!3760152 (nullable!6104 (h!70956 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 (h!70957 zl!343))))))))))

(declare-fun b!6172762 () Bool)

(declare-fun call!514972 () (InoxSet Context!10990))

(assert (=> b!6172762 (= e!3760153 call!514972)))

(declare-fun b!6172763 () Bool)

(declare-fun e!3760154 () (InoxSet Context!10990))

(assert (=> b!6172763 (= e!3760154 ((_ map or) call!514972 (derivationStepZipperUp!1285 (Context!10991 (t!378134 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 (h!70957 zl!343))))))) (h!70958 s!2326))))))

(declare-fun b!6172764 () Bool)

(assert (=> b!6172764 (= e!3760154 e!3760153)))

(declare-fun c!1112474 () Bool)

(assert (=> b!6172764 (= c!1112474 ((_ is Cons!64508) (exprs!5995 (Context!10991 (t!378134 (exprs!5995 (h!70957 zl!343)))))))))

(declare-fun bm!514967 () Bool)

(assert (=> bm!514967 (= call!514972 (derivationStepZipperDown!1359 (h!70956 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 (h!70957 zl!343)))))) (Context!10991 (t!378134 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 (h!70957 zl!343))))))) (h!70958 s!2326)))))

(declare-fun d!1934775 () Bool)

(declare-fun c!1112475 () Bool)

(assert (=> d!1934775 (= c!1112475 e!3760152)))

(declare-fun res!2554975 () Bool)

(assert (=> d!1934775 (=> (not res!2554975) (not e!3760152))))

(assert (=> d!1934775 (= res!2554975 ((_ is Cons!64508) (exprs!5995 (Context!10991 (t!378134 (exprs!5995 (h!70957 zl!343)))))))))

(assert (=> d!1934775 (= (derivationStepZipperUp!1285 (Context!10991 (t!378134 (exprs!5995 (h!70957 zl!343)))) (h!70958 s!2326)) e!3760154)))

(assert (= (and d!1934775 res!2554975) b!6172761))

(assert (= (and d!1934775 c!1112475) b!6172763))

(assert (= (and d!1934775 (not c!1112475)) b!6172764))

(assert (= (and b!6172764 c!1112474) b!6172762))

(assert (= (and b!6172764 (not c!1112474)) b!6172760))

(assert (= (or b!6172763 b!6172762) bm!514967))

(declare-fun m!7009236 () Bool)

(assert (=> b!6172761 m!7009236))

(declare-fun m!7009238 () Bool)

(assert (=> b!6172763 m!7009238))

(declare-fun m!7009240 () Bool)

(assert (=> bm!514967 m!7009240))

(assert (=> b!6172094 d!1934775))

(assert (=> d!1934355 d!1934559))

(declare-fun d!1934777 () Bool)

(declare-fun c!1112476 () Bool)

(assert (=> d!1934777 (= c!1112476 (isEmpty!36488 (tail!11827 s!2326)))))

(declare-fun e!3760155 () Bool)

(assert (=> d!1934777 (= (matchZipper!2123 (derivationStepZipper!2084 z!1189 (head!12742 s!2326)) (tail!11827 s!2326)) e!3760155)))

(declare-fun b!6172765 () Bool)

(assert (=> b!6172765 (= e!3760155 (nullableZipper!1892 (derivationStepZipper!2084 z!1189 (head!12742 s!2326))))))

(declare-fun b!6172766 () Bool)

(assert (=> b!6172766 (= e!3760155 (matchZipper!2123 (derivationStepZipper!2084 (derivationStepZipper!2084 z!1189 (head!12742 s!2326)) (head!12742 (tail!11827 s!2326))) (tail!11827 (tail!11827 s!2326))))))

(assert (= (and d!1934777 c!1112476) b!6172765))

(assert (= (and d!1934777 (not c!1112476)) b!6172766))

(assert (=> d!1934777 m!7008192))

(assert (=> d!1934777 m!7008662))

(assert (=> b!6172765 m!7008190))

(declare-fun m!7009242 () Bool)

(assert (=> b!6172765 m!7009242))

(assert (=> b!6172766 m!7008192))

(declare-fun m!7009244 () Bool)

(assert (=> b!6172766 m!7009244))

(assert (=> b!6172766 m!7008190))

(assert (=> b!6172766 m!7009244))

(declare-fun m!7009246 () Bool)

(assert (=> b!6172766 m!7009246))

(assert (=> b!6172766 m!7008192))

(declare-fun m!7009248 () Bool)

(assert (=> b!6172766 m!7009248))

(assert (=> b!6172766 m!7009246))

(assert (=> b!6172766 m!7009248))

(declare-fun m!7009250 () Bool)

(assert (=> b!6172766 m!7009250))

(assert (=> b!6171603 d!1934777))

(declare-fun bs!1530652 () Bool)

(declare-fun d!1934779 () Bool)

(assert (= bs!1530652 (and d!1934779 d!1934701)))

(declare-fun lambda!336925 () Int)

(assert (=> bs!1530652 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336925 lambda!336912))))

(declare-fun bs!1530653 () Bool)

(assert (= bs!1530653 (and d!1934779 d!1934577)))

(assert (=> bs!1530653 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336925 lambda!336893))))

(declare-fun bs!1530654 () Bool)

(assert (= bs!1530654 (and d!1934779 d!1934691)))

(assert (=> bs!1530654 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336925 lambda!336911))))

(declare-fun bs!1530655 () Bool)

(assert (= bs!1530655 (and d!1934779 d!1934763)))

(assert (=> bs!1530655 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336925 lambda!336923))))

(declare-fun bs!1530656 () Bool)

(assert (= bs!1530656 (and d!1934779 d!1934755)))

(assert (=> bs!1530656 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336925 lambda!336921))))

(declare-fun bs!1530657 () Bool)

(assert (= bs!1530657 (and d!1934779 b!6171493)))

(assert (=> bs!1530657 (= (= (head!12742 s!2326) (h!70958 s!2326)) (= lambda!336925 lambda!336831))))

(declare-fun bs!1530658 () Bool)

(assert (= bs!1530658 (and d!1934779 d!1934667)))

(assert (=> bs!1530658 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336925 lambda!336908))))

(assert (=> d!1934779 true))

(assert (=> d!1934779 (= (derivationStepZipper!2084 z!1189 (head!12742 s!2326)) (flatMap!1616 z!1189 lambda!336925))))

(declare-fun bs!1530659 () Bool)

(assert (= bs!1530659 d!1934779))

(declare-fun m!7009252 () Bool)

(assert (=> bs!1530659 m!7009252))

(assert (=> b!6171603 d!1934779))

(assert (=> b!6171603 d!1934599))

(assert (=> b!6171603 d!1934769))

(declare-fun d!1934781 () Bool)

(assert (=> d!1934781 true))

(assert (=> d!1934781 true))

(declare-fun res!2554976 () Bool)

(assert (=> d!1934781 (= (choose!45875 lambda!336829) res!2554976)))

(assert (=> d!1934455 d!1934781))

(declare-fun d!1934783 () Bool)

(assert (=> d!1934783 (= (nullable!6104 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343))))) (nullableFct!2068 (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343))))))))

(declare-fun bs!1530660 () Bool)

(assert (= bs!1530660 d!1934783))

(declare-fun m!7009254 () Bool)

(assert (=> bs!1530660 m!7009254))

(assert (=> b!6172118 d!1934783))

(declare-fun d!1934785 () Bool)

(assert (=> d!1934785 (= (head!12743 (exprs!5995 (h!70957 zl!343))) (h!70956 (exprs!5995 (h!70957 zl!343))))))

(assert (=> b!6171747 d!1934785))

(declare-fun bm!514968 () Bool)

(declare-fun call!514975 () Bool)

(declare-fun call!514973 () Bool)

(assert (=> bm!514968 (= call!514975 call!514973)))

(declare-fun b!6172767 () Bool)

(declare-fun e!3760161 () Bool)

(declare-fun e!3760162 () Bool)

(assert (=> b!6172767 (= e!3760161 e!3760162)))

(declare-fun c!1112477 () Bool)

(assert (=> b!6172767 (= c!1112477 ((_ is Star!16111) lt!2337358))))

(declare-fun b!6172768 () Bool)

(declare-fun res!2554978 () Bool)

(declare-fun e!3760157 () Bool)

(assert (=> b!6172768 (=> res!2554978 e!3760157)))

(assert (=> b!6172768 (= res!2554978 (not ((_ is Concat!24956) lt!2337358)))))

(declare-fun e!3760156 () Bool)

(assert (=> b!6172768 (= e!3760156 e!3760157)))

(declare-fun b!6172769 () Bool)

(assert (=> b!6172769 (= e!3760162 e!3760156)))

(declare-fun c!1112478 () Bool)

(assert (=> b!6172769 (= c!1112478 ((_ is Union!16111) lt!2337358))))

(declare-fun b!6172770 () Bool)

(declare-fun e!3760158 () Bool)

(assert (=> b!6172770 (= e!3760158 call!514975)))

(declare-fun b!6172771 () Bool)

(declare-fun e!3760159 () Bool)

(assert (=> b!6172771 (= e!3760159 call!514973)))

(declare-fun b!6172772 () Bool)

(assert (=> b!6172772 (= e!3760157 e!3760158)))

(declare-fun res!2554980 () Bool)

(assert (=> b!6172772 (=> (not res!2554980) (not e!3760158))))

(declare-fun call!514974 () Bool)

(assert (=> b!6172772 (= res!2554980 call!514974)))

(declare-fun b!6172773 () Bool)

(declare-fun res!2554977 () Bool)

(declare-fun e!3760160 () Bool)

(assert (=> b!6172773 (=> (not res!2554977) (not e!3760160))))

(assert (=> b!6172773 (= res!2554977 call!514974)))

(assert (=> b!6172773 (= e!3760156 e!3760160)))

(declare-fun b!6172774 () Bool)

(assert (=> b!6172774 (= e!3760162 e!3760159)))

(declare-fun res!2554979 () Bool)

(assert (=> b!6172774 (= res!2554979 (not (nullable!6104 (reg!16440 lt!2337358))))))

(assert (=> b!6172774 (=> (not res!2554979) (not e!3760159))))

(declare-fun bm!514970 () Bool)

(assert (=> bm!514970 (= call!514973 (validRegex!7847 (ite c!1112477 (reg!16440 lt!2337358) (ite c!1112478 (regTwo!32735 lt!2337358) (regTwo!32734 lt!2337358)))))))

(declare-fun b!6172775 () Bool)

(assert (=> b!6172775 (= e!3760160 call!514975)))

(declare-fun bm!514969 () Bool)

(assert (=> bm!514969 (= call!514974 (validRegex!7847 (ite c!1112478 (regOne!32735 lt!2337358) (regOne!32734 lt!2337358))))))

(declare-fun d!1934787 () Bool)

(declare-fun res!2554981 () Bool)

(assert (=> d!1934787 (=> res!2554981 e!3760161)))

(assert (=> d!1934787 (= res!2554981 ((_ is ElementMatch!16111) lt!2337358))))

(assert (=> d!1934787 (= (validRegex!7847 lt!2337358) e!3760161)))

(assert (= (and d!1934787 (not res!2554981)) b!6172767))

(assert (= (and b!6172767 c!1112477) b!6172774))

(assert (= (and b!6172767 (not c!1112477)) b!6172769))

(assert (= (and b!6172774 res!2554979) b!6172771))

(assert (= (and b!6172769 c!1112478) b!6172773))

(assert (= (and b!6172769 (not c!1112478)) b!6172768))

(assert (= (and b!6172773 res!2554977) b!6172775))

(assert (= (and b!6172768 (not res!2554978)) b!6172772))

(assert (= (and b!6172772 res!2554980) b!6172770))

(assert (= (or b!6172775 b!6172770) bm!514968))

(assert (= (or b!6172773 b!6172772) bm!514969))

(assert (= (or b!6172771 bm!514968) bm!514970))

(declare-fun m!7009256 () Bool)

(assert (=> b!6172774 m!7009256))

(declare-fun m!7009258 () Bool)

(assert (=> bm!514970 m!7009258))

(declare-fun m!7009260 () Bool)

(assert (=> bm!514969 m!7009260))

(assert (=> d!1934377 d!1934787))

(declare-fun d!1934789 () Bool)

(declare-fun res!2554982 () Bool)

(declare-fun e!3760163 () Bool)

(assert (=> d!1934789 (=> res!2554982 e!3760163)))

(assert (=> d!1934789 (= res!2554982 ((_ is Nil!64508) (exprs!5995 (h!70957 zl!343))))))

(assert (=> d!1934789 (= (forall!15231 (exprs!5995 (h!70957 zl!343)) lambda!336849) e!3760163)))

(declare-fun b!6172776 () Bool)

(declare-fun e!3760164 () Bool)

(assert (=> b!6172776 (= e!3760163 e!3760164)))

(declare-fun res!2554983 () Bool)

(assert (=> b!6172776 (=> (not res!2554983) (not e!3760164))))

(assert (=> b!6172776 (= res!2554983 (dynLambda!25440 lambda!336849 (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun b!6172777 () Bool)

(assert (=> b!6172777 (= e!3760164 (forall!15231 (t!378134 (exprs!5995 (h!70957 zl!343))) lambda!336849))))

(assert (= (and d!1934789 (not res!2554982)) b!6172776))

(assert (= (and b!6172776 res!2554983) b!6172777))

(declare-fun b_lambda!234933 () Bool)

(assert (=> (not b_lambda!234933) (not b!6172776)))

(declare-fun m!7009262 () Bool)

(assert (=> b!6172776 m!7009262))

(declare-fun m!7009264 () Bool)

(assert (=> b!6172777 m!7009264))

(assert (=> d!1934377 d!1934789))

(declare-fun d!1934791 () Bool)

(assert (=> d!1934791 (= (isEmptyLang!1537 lt!2337417) ((_ is EmptyLang!16111) lt!2337417))))

(assert (=> b!6172260 d!1934791))

(assert (=> d!1934373 d!1934559))

(assert (=> d!1934321 d!1934329))

(assert (=> d!1934321 d!1934327))

(declare-fun d!1934793 () Bool)

(declare-fun e!3760165 () Bool)

(assert (=> d!1934793 (= (matchZipper!2123 ((_ map or) lt!2337282 lt!2337288) (t!378136 s!2326)) e!3760165)))

(declare-fun res!2554984 () Bool)

(assert (=> d!1934793 (=> res!2554984 e!3760165)))

(assert (=> d!1934793 (= res!2554984 (matchZipper!2123 lt!2337282 (t!378136 s!2326)))))

(assert (=> d!1934793 true))

(declare-fun _$48!1769 () Unit!157667)

(assert (=> d!1934793 (= (choose!45870 lt!2337282 lt!2337288 (t!378136 s!2326)) _$48!1769)))

(declare-fun b!6172778 () Bool)

(assert (=> b!6172778 (= e!3760165 (matchZipper!2123 lt!2337288 (t!378136 s!2326)))))

(assert (= (and d!1934793 (not res!2554984)) b!6172778))

(assert (=> d!1934793 m!7008014))

(assert (=> d!1934793 m!7007956))

(assert (=> b!6172778 m!7007948))

(assert (=> d!1934321 d!1934793))

(declare-fun d!1934795 () Bool)

(declare-fun c!1112479 () Bool)

(assert (=> d!1934795 (= c!1112479 (isEmpty!36488 (tail!11827 s!2326)))))

(declare-fun e!3760166 () Bool)

(assert (=> d!1934795 (= (matchZipper!2123 (derivationStepZipper!2084 lt!2337291 (head!12742 s!2326)) (tail!11827 s!2326)) e!3760166)))

(declare-fun b!6172779 () Bool)

(assert (=> b!6172779 (= e!3760166 (nullableZipper!1892 (derivationStepZipper!2084 lt!2337291 (head!12742 s!2326))))))

(declare-fun b!6172780 () Bool)

(assert (=> b!6172780 (= e!3760166 (matchZipper!2123 (derivationStepZipper!2084 (derivationStepZipper!2084 lt!2337291 (head!12742 s!2326)) (head!12742 (tail!11827 s!2326))) (tail!11827 (tail!11827 s!2326))))))

(assert (= (and d!1934795 c!1112479) b!6172779))

(assert (= (and d!1934795 (not c!1112479)) b!6172780))

(assert (=> d!1934795 m!7008192))

(assert (=> d!1934795 m!7008662))

(assert (=> b!6172779 m!7008588))

(declare-fun m!7009266 () Bool)

(assert (=> b!6172779 m!7009266))

(assert (=> b!6172780 m!7008192))

(assert (=> b!6172780 m!7009244))

(assert (=> b!6172780 m!7008588))

(assert (=> b!6172780 m!7009244))

(declare-fun m!7009268 () Bool)

(assert (=> b!6172780 m!7009268))

(assert (=> b!6172780 m!7008192))

(assert (=> b!6172780 m!7009248))

(assert (=> b!6172780 m!7009268))

(assert (=> b!6172780 m!7009248))

(declare-fun m!7009270 () Bool)

(assert (=> b!6172780 m!7009270))

(assert (=> b!6172085 d!1934795))

(declare-fun bs!1530661 () Bool)

(declare-fun d!1934797 () Bool)

(assert (= bs!1530661 (and d!1934797 d!1934701)))

(declare-fun lambda!336926 () Int)

(assert (=> bs!1530661 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336926 lambda!336912))))

(declare-fun bs!1530662 () Bool)

(assert (= bs!1530662 (and d!1934797 d!1934577)))

(assert (=> bs!1530662 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336926 lambda!336893))))

(declare-fun bs!1530663 () Bool)

(assert (= bs!1530663 (and d!1934797 d!1934779)))

(assert (=> bs!1530663 (= lambda!336926 lambda!336925)))

(declare-fun bs!1530664 () Bool)

(assert (= bs!1530664 (and d!1934797 d!1934691)))

(assert (=> bs!1530664 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336926 lambda!336911))))

(declare-fun bs!1530665 () Bool)

(assert (= bs!1530665 (and d!1934797 d!1934763)))

(assert (=> bs!1530665 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336926 lambda!336923))))

(declare-fun bs!1530666 () Bool)

(assert (= bs!1530666 (and d!1934797 d!1934755)))

(assert (=> bs!1530666 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336926 lambda!336921))))

(declare-fun bs!1530667 () Bool)

(assert (= bs!1530667 (and d!1934797 b!6171493)))

(assert (=> bs!1530667 (= (= (head!12742 s!2326) (h!70958 s!2326)) (= lambda!336926 lambda!336831))))

(declare-fun bs!1530668 () Bool)

(assert (= bs!1530668 (and d!1934797 d!1934667)))

(assert (=> bs!1530668 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336926 lambda!336908))))

(assert (=> d!1934797 true))

(assert (=> d!1934797 (= (derivationStepZipper!2084 lt!2337291 (head!12742 s!2326)) (flatMap!1616 lt!2337291 lambda!336926))))

(declare-fun bs!1530669 () Bool)

(assert (= bs!1530669 d!1934797))

(declare-fun m!7009272 () Bool)

(assert (=> bs!1530669 m!7009272))

(assert (=> b!6172085 d!1934797))

(assert (=> b!6172085 d!1934599))

(assert (=> b!6172085 d!1934769))

(declare-fun d!1934799 () Bool)

(assert (=> d!1934799 (= (isEmpty!36485 lt!2337305) ((_ is Nil!64508) lt!2337305))))

(assert (=> b!6172146 d!1934799))

(declare-fun b!6172781 () Bool)

(declare-fun e!3760171 () Bool)

(assert (=> b!6172781 (= e!3760171 (nullable!6104 (regOne!32734 (ite c!1112345 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292)))))))))

(declare-fun b!6172782 () Bool)

(declare-fun c!1112483 () Bool)

(assert (=> b!6172782 (= c!1112483 ((_ is Star!16111) (ite c!1112345 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))))))))

(declare-fun e!3760172 () (InoxSet Context!10990))

(declare-fun e!3760169 () (InoxSet Context!10990))

(assert (=> b!6172782 (= e!3760172 e!3760169)))

(declare-fun c!1112482 () Bool)

(declare-fun call!514979 () List!64632)

(declare-fun bm!514971 () Bool)

(declare-fun c!1112484 () Bool)

(declare-fun call!514978 () (InoxSet Context!10990))

(declare-fun c!1112480 () Bool)

(assert (=> bm!514971 (= call!514978 (derivationStepZipperDown!1359 (ite c!1112484 (regTwo!32735 (ite c!1112345 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))))) (ite c!1112480 (regTwo!32734 (ite c!1112345 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))))) (ite c!1112482 (regOne!32734 (ite c!1112345 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))))) (reg!16440 (ite c!1112345 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292)))))))) (ite (or c!1112484 c!1112480) (ite c!1112345 lt!2337313 (Context!10991 call!514881)) (Context!10991 call!514979)) (h!70958 s!2326)))))

(declare-fun b!6172783 () Bool)

(declare-fun call!514977 () (InoxSet Context!10990))

(assert (=> b!6172783 (= e!3760169 call!514977)))

(declare-fun b!6172784 () Bool)

(declare-fun e!3760170 () (InoxSet Context!10990))

(assert (=> b!6172784 (= e!3760170 e!3760172)))

(assert (=> b!6172784 (= c!1112482 ((_ is Concat!24956) (ite c!1112345 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))))))))

(declare-fun bm!514972 () Bool)

(declare-fun call!514976 () List!64632)

(assert (=> bm!514972 (= call!514979 call!514976)))

(declare-fun d!1934801 () Bool)

(declare-fun c!1112481 () Bool)

(assert (=> d!1934801 (= c!1112481 (and ((_ is ElementMatch!16111) (ite c!1112345 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))))) (= (c!1112104 (ite c!1112345 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))))) (h!70958 s!2326))))))

(declare-fun e!3760168 () (InoxSet Context!10990))

(assert (=> d!1934801 (= (derivationStepZipperDown!1359 (ite c!1112345 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292)))) (ite c!1112345 lt!2337313 (Context!10991 call!514881)) (h!70958 s!2326)) e!3760168)))

(declare-fun bm!514973 () Bool)

(assert (=> bm!514973 (= call!514976 ($colon$colon!1988 (exprs!5995 (ite c!1112345 lt!2337313 (Context!10991 call!514881))) (ite (or c!1112480 c!1112482) (regTwo!32734 (ite c!1112345 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))))) (ite c!1112345 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292)))))))))

(declare-fun b!6172785 () Bool)

(assert (=> b!6172785 (= e!3760168 (store ((as const (Array Context!10990 Bool)) false) (ite c!1112345 lt!2337313 (Context!10991 call!514881)) true))))

(declare-fun b!6172786 () Bool)

(declare-fun e!3760167 () (InoxSet Context!10990))

(declare-fun call!514980 () (InoxSet Context!10990))

(assert (=> b!6172786 (= e!3760167 ((_ map or) call!514980 call!514978))))

(declare-fun bm!514974 () Bool)

(declare-fun call!514981 () (InoxSet Context!10990))

(assert (=> bm!514974 (= call!514977 call!514981)))

(declare-fun bm!514975 () Bool)

(assert (=> bm!514975 (= call!514981 call!514978)))

(declare-fun b!6172787 () Bool)

(assert (=> b!6172787 (= e!3760172 call!514977)))

(declare-fun bm!514976 () Bool)

(assert (=> bm!514976 (= call!514980 (derivationStepZipperDown!1359 (ite c!1112484 (regOne!32735 (ite c!1112345 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))))) (regOne!32734 (ite c!1112345 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292)))))) (ite c!1112484 (ite c!1112345 lt!2337313 (Context!10991 call!514881)) (Context!10991 call!514976)) (h!70958 s!2326)))))

(declare-fun b!6172788 () Bool)

(assert (=> b!6172788 (= e!3760169 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172789 () Bool)

(assert (=> b!6172789 (= c!1112480 e!3760171)))

(declare-fun res!2554985 () Bool)

(assert (=> b!6172789 (=> (not res!2554985) (not e!3760171))))

(assert (=> b!6172789 (= res!2554985 ((_ is Concat!24956) (ite c!1112345 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))))))))

(assert (=> b!6172789 (= e!3760167 e!3760170)))

(declare-fun b!6172790 () Bool)

(assert (=> b!6172790 (= e!3760168 e!3760167)))

(assert (=> b!6172790 (= c!1112484 ((_ is Union!16111) (ite c!1112345 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))))))))

(declare-fun b!6172791 () Bool)

(assert (=> b!6172791 (= e!3760170 ((_ map or) call!514980 call!514981))))

(assert (= (and d!1934801 c!1112481) b!6172785))

(assert (= (and d!1934801 (not c!1112481)) b!6172790))

(assert (= (and b!6172790 c!1112484) b!6172786))

(assert (= (and b!6172790 (not c!1112484)) b!6172789))

(assert (= (and b!6172789 res!2554985) b!6172781))

(assert (= (and b!6172789 c!1112480) b!6172791))

(assert (= (and b!6172789 (not c!1112480)) b!6172784))

(assert (= (and b!6172784 c!1112482) b!6172787))

(assert (= (and b!6172784 (not c!1112482)) b!6172782))

(assert (= (and b!6172782 c!1112483) b!6172783))

(assert (= (and b!6172782 (not c!1112483)) b!6172788))

(assert (= (or b!6172787 b!6172783) bm!514972))

(assert (= (or b!6172787 b!6172783) bm!514974))

(assert (= (or b!6172791 bm!514972) bm!514973))

(assert (= (or b!6172791 bm!514974) bm!514975))

(assert (= (or b!6172786 bm!514975) bm!514971))

(assert (= (or b!6172786 b!6172791) bm!514976))

(declare-fun m!7009274 () Bool)

(assert (=> b!6172785 m!7009274))

(declare-fun m!7009276 () Bool)

(assert (=> bm!514973 m!7009276))

(declare-fun m!7009278 () Bool)

(assert (=> bm!514976 m!7009278))

(declare-fun m!7009280 () Bool)

(assert (=> bm!514971 m!7009280))

(declare-fun m!7009282 () Bool)

(assert (=> b!6172781 m!7009282))

(assert (=> bm!514881 d!1934801))

(assert (=> d!1934535 d!1934643))

(declare-fun b!6172792 () Bool)

(declare-fun e!3760176 () Bool)

(declare-fun lt!2337452 () Bool)

(assert (=> b!6172792 (= e!3760176 (not lt!2337452))))

(declare-fun b!6172793 () Bool)

(declare-fun e!3760178 () Bool)

(assert (=> b!6172793 (= e!3760178 (matchR!8294 (derivativeStep!4830 (derivativeStep!4830 r!7292 (head!12742 s!2326)) (head!12742 (tail!11827 s!2326))) (tail!11827 (tail!11827 s!2326))))))

(declare-fun b!6172794 () Bool)

(declare-fun res!2554989 () Bool)

(declare-fun e!3760175 () Bool)

(assert (=> b!6172794 (=> res!2554989 e!3760175)))

(declare-fun e!3760177 () Bool)

(assert (=> b!6172794 (= res!2554989 e!3760177)))

(declare-fun res!2554991 () Bool)

(assert (=> b!6172794 (=> (not res!2554991) (not e!3760177))))

(assert (=> b!6172794 (= res!2554991 lt!2337452)))

(declare-fun b!6172795 () Bool)

(declare-fun e!3760174 () Bool)

(declare-fun call!514982 () Bool)

(assert (=> b!6172795 (= e!3760174 (= lt!2337452 call!514982))))

(declare-fun bm!514977 () Bool)

(assert (=> bm!514977 (= call!514982 (isEmpty!36488 (tail!11827 s!2326)))))

(declare-fun b!6172796 () Bool)

(assert (=> b!6172796 (= e!3760174 e!3760176)))

(declare-fun c!1112486 () Bool)

(assert (=> b!6172796 (= c!1112486 ((_ is EmptyLang!16111) (derivativeStep!4830 r!7292 (head!12742 s!2326))))))

(declare-fun b!6172797 () Bool)

(declare-fun res!2554993 () Bool)

(assert (=> b!6172797 (=> res!2554993 e!3760175)))

(assert (=> b!6172797 (= res!2554993 (not ((_ is ElementMatch!16111) (derivativeStep!4830 r!7292 (head!12742 s!2326)))))))

(assert (=> b!6172797 (= e!3760176 e!3760175)))

(declare-fun b!6172798 () Bool)

(declare-fun e!3760173 () Bool)

(assert (=> b!6172798 (= e!3760175 e!3760173)))

(declare-fun res!2554986 () Bool)

(assert (=> b!6172798 (=> (not res!2554986) (not e!3760173))))

(assert (=> b!6172798 (= res!2554986 (not lt!2337452))))

(declare-fun d!1934803 () Bool)

(assert (=> d!1934803 e!3760174))

(declare-fun c!1112487 () Bool)

(assert (=> d!1934803 (= c!1112487 ((_ is EmptyExpr!16111) (derivativeStep!4830 r!7292 (head!12742 s!2326))))))

(assert (=> d!1934803 (= lt!2337452 e!3760178)))

(declare-fun c!1112485 () Bool)

(assert (=> d!1934803 (= c!1112485 (isEmpty!36488 (tail!11827 s!2326)))))

(assert (=> d!1934803 (validRegex!7847 (derivativeStep!4830 r!7292 (head!12742 s!2326)))))

(assert (=> d!1934803 (= (matchR!8294 (derivativeStep!4830 r!7292 (head!12742 s!2326)) (tail!11827 s!2326)) lt!2337452)))

(declare-fun b!6172799 () Bool)

(declare-fun res!2554987 () Bool)

(assert (=> b!6172799 (=> (not res!2554987) (not e!3760177))))

(assert (=> b!6172799 (= res!2554987 (not call!514982))))

(declare-fun b!6172800 () Bool)

(declare-fun res!2554992 () Bool)

(assert (=> b!6172800 (=> (not res!2554992) (not e!3760177))))

(assert (=> b!6172800 (= res!2554992 (isEmpty!36488 (tail!11827 (tail!11827 s!2326))))))

(declare-fun b!6172801 () Bool)

(assert (=> b!6172801 (= e!3760177 (= (head!12742 (tail!11827 s!2326)) (c!1112104 (derivativeStep!4830 r!7292 (head!12742 s!2326)))))))

(declare-fun b!6172802 () Bool)

(declare-fun e!3760179 () Bool)

(assert (=> b!6172802 (= e!3760173 e!3760179)))

(declare-fun res!2554988 () Bool)

(assert (=> b!6172802 (=> res!2554988 e!3760179)))

(assert (=> b!6172802 (= res!2554988 call!514982)))

(declare-fun b!6172803 () Bool)

(assert (=> b!6172803 (= e!3760179 (not (= (head!12742 (tail!11827 s!2326)) (c!1112104 (derivativeStep!4830 r!7292 (head!12742 s!2326))))))))

(declare-fun b!6172804 () Bool)

(assert (=> b!6172804 (= e!3760178 (nullable!6104 (derivativeStep!4830 r!7292 (head!12742 s!2326))))))

(declare-fun b!6172805 () Bool)

(declare-fun res!2554990 () Bool)

(assert (=> b!6172805 (=> res!2554990 e!3760179)))

(assert (=> b!6172805 (= res!2554990 (not (isEmpty!36488 (tail!11827 (tail!11827 s!2326)))))))

(assert (= (and d!1934803 c!1112485) b!6172804))

(assert (= (and d!1934803 (not c!1112485)) b!6172793))

(assert (= (and d!1934803 c!1112487) b!6172795))

(assert (= (and d!1934803 (not c!1112487)) b!6172796))

(assert (= (and b!6172796 c!1112486) b!6172792))

(assert (= (and b!6172796 (not c!1112486)) b!6172797))

(assert (= (and b!6172797 (not res!2554993)) b!6172794))

(assert (= (and b!6172794 res!2554991) b!6172799))

(assert (= (and b!6172799 res!2554987) b!6172800))

(assert (= (and b!6172800 res!2554992) b!6172801))

(assert (= (and b!6172794 (not res!2554989)) b!6172798))

(assert (= (and b!6172798 res!2554986) b!6172802))

(assert (= (and b!6172802 (not res!2554988)) b!6172805))

(assert (= (and b!6172805 (not res!2554990)) b!6172803))

(assert (= (or b!6172795 b!6172799 b!6172802) bm!514977))

(assert (=> b!6172801 m!7008192))

(assert (=> b!6172801 m!7009244))

(assert (=> d!1934803 m!7008192))

(assert (=> d!1934803 m!7008662))

(assert (=> d!1934803 m!7008664))

(declare-fun m!7009284 () Bool)

(assert (=> d!1934803 m!7009284))

(assert (=> b!6172804 m!7008664))

(declare-fun m!7009286 () Bool)

(assert (=> b!6172804 m!7009286))

(assert (=> b!6172805 m!7008192))

(assert (=> b!6172805 m!7009248))

(assert (=> b!6172805 m!7009248))

(declare-fun m!7009288 () Bool)

(assert (=> b!6172805 m!7009288))

(assert (=> bm!514977 m!7008192))

(assert (=> bm!514977 m!7008662))

(assert (=> b!6172800 m!7008192))

(assert (=> b!6172800 m!7009248))

(assert (=> b!6172800 m!7009248))

(assert (=> b!6172800 m!7009288))

(assert (=> b!6172793 m!7008192))

(assert (=> b!6172793 m!7009244))

(assert (=> b!6172793 m!7008664))

(assert (=> b!6172793 m!7009244))

(declare-fun m!7009290 () Bool)

(assert (=> b!6172793 m!7009290))

(assert (=> b!6172793 m!7008192))

(assert (=> b!6172793 m!7009248))

(assert (=> b!6172793 m!7009290))

(assert (=> b!6172793 m!7009248))

(declare-fun m!7009292 () Bool)

(assert (=> b!6172793 m!7009292))

(assert (=> b!6172803 m!7008192))

(assert (=> b!6172803 m!7009244))

(assert (=> b!6172225 d!1934803))

(declare-fun bm!514986 () Bool)

(declare-fun call!514992 () Regex!16111)

(declare-fun call!514994 () Regex!16111)

(assert (=> bm!514986 (= call!514992 call!514994)))

(declare-fun b!6172826 () Bool)

(declare-fun e!3760193 () Regex!16111)

(declare-fun e!3760191 () Regex!16111)

(assert (=> b!6172826 (= e!3760193 e!3760191)))

(declare-fun c!1112500 () Bool)

(assert (=> b!6172826 (= c!1112500 ((_ is ElementMatch!16111) r!7292))))

(declare-fun b!6172827 () Bool)

(assert (=> b!6172827 (= e!3760193 EmptyLang!16111)))

(declare-fun c!1112498 () Bool)

(declare-fun bm!514987 () Bool)

(declare-fun c!1112501 () Bool)

(assert (=> bm!514987 (= call!514994 (derivativeStep!4830 (ite c!1112498 (regTwo!32735 r!7292) (ite c!1112501 (reg!16440 r!7292) (regOne!32734 r!7292))) (head!12742 s!2326)))))

(declare-fun b!6172828 () Bool)

(declare-fun e!3760192 () Regex!16111)

(declare-fun call!514993 () Regex!16111)

(assert (=> b!6172828 (= e!3760192 (Union!16111 call!514993 call!514994))))

(declare-fun e!3760194 () Regex!16111)

(declare-fun b!6172829 () Bool)

(declare-fun call!514991 () Regex!16111)

(assert (=> b!6172829 (= e!3760194 (Union!16111 (Concat!24956 call!514992 (regTwo!32734 r!7292)) call!514991))))

(declare-fun bm!514988 () Bool)

(assert (=> bm!514988 (= call!514991 call!514993)))

(declare-fun b!6172830 () Bool)

(assert (=> b!6172830 (= e!3760191 (ite (= (head!12742 s!2326) (c!1112104 r!7292)) EmptyExpr!16111 EmptyLang!16111))))

(declare-fun b!6172831 () Bool)

(assert (=> b!6172831 (= e!3760194 (Union!16111 (Concat!24956 call!514991 (regTwo!32734 r!7292)) EmptyLang!16111))))

(declare-fun bm!514989 () Bool)

(declare-fun c!1112499 () Bool)

(assert (=> bm!514989 (= call!514993 (derivativeStep!4830 (ite c!1112498 (regOne!32735 r!7292) (ite c!1112499 (regTwo!32734 r!7292) (regOne!32734 r!7292))) (head!12742 s!2326)))))

(declare-fun b!6172832 () Bool)

(assert (=> b!6172832 (= c!1112498 ((_ is Union!16111) r!7292))))

(assert (=> b!6172832 (= e!3760191 e!3760192)))

(declare-fun b!6172833 () Bool)

(assert (=> b!6172833 (= c!1112499 (nullable!6104 (regOne!32734 r!7292)))))

(declare-fun e!3760190 () Regex!16111)

(assert (=> b!6172833 (= e!3760190 e!3760194)))

(declare-fun b!6172834 () Bool)

(assert (=> b!6172834 (= e!3760190 (Concat!24956 call!514992 r!7292))))

(declare-fun b!6172835 () Bool)

(assert (=> b!6172835 (= e!3760192 e!3760190)))

(assert (=> b!6172835 (= c!1112501 ((_ is Star!16111) r!7292))))

(declare-fun d!1934805 () Bool)

(declare-fun lt!2337455 () Regex!16111)

(assert (=> d!1934805 (validRegex!7847 lt!2337455)))

(assert (=> d!1934805 (= lt!2337455 e!3760193)))

(declare-fun c!1112502 () Bool)

(assert (=> d!1934805 (= c!1112502 (or ((_ is EmptyExpr!16111) r!7292) ((_ is EmptyLang!16111) r!7292)))))

(assert (=> d!1934805 (validRegex!7847 r!7292)))

(assert (=> d!1934805 (= (derivativeStep!4830 r!7292 (head!12742 s!2326)) lt!2337455)))

(assert (= (and d!1934805 c!1112502) b!6172827))

(assert (= (and d!1934805 (not c!1112502)) b!6172826))

(assert (= (and b!6172826 c!1112500) b!6172830))

(assert (= (and b!6172826 (not c!1112500)) b!6172832))

(assert (= (and b!6172832 c!1112498) b!6172828))

(assert (= (and b!6172832 (not c!1112498)) b!6172835))

(assert (= (and b!6172835 c!1112501) b!6172834))

(assert (= (and b!6172835 (not c!1112501)) b!6172833))

(assert (= (and b!6172833 c!1112499) b!6172829))

(assert (= (and b!6172833 (not c!1112499)) b!6172831))

(assert (= (or b!6172829 b!6172831) bm!514988))

(assert (= (or b!6172834 b!6172829) bm!514986))

(assert (= (or b!6172828 bm!514986) bm!514987))

(assert (= (or b!6172828 bm!514988) bm!514989))

(assert (=> bm!514987 m!7008188))

(declare-fun m!7009294 () Bool)

(assert (=> bm!514987 m!7009294))

(assert (=> bm!514989 m!7008188))

(declare-fun m!7009296 () Bool)

(assert (=> bm!514989 m!7009296))

(assert (=> b!6172833 m!7008766))

(declare-fun m!7009298 () Bool)

(assert (=> d!1934805 m!7009298))

(assert (=> d!1934805 m!7008056))

(assert (=> b!6172225 d!1934805))

(assert (=> b!6172225 d!1934599))

(assert (=> b!6172225 d!1934769))

(declare-fun bs!1530670 () Bool)

(declare-fun b!6172844 () Bool)

(assert (= bs!1530670 (and b!6172844 d!1934715)))

(declare-fun lambda!336927 () Int)

(assert (=> bs!1530670 (not (= lambda!336927 lambda!336918))))

(declare-fun bs!1530671 () Bool)

(assert (= bs!1530671 (and b!6172844 b!6172193)))

(assert (=> bs!1530671 (= (and (= (reg!16440 (regOne!32735 r!7292)) (reg!16440 r!7292)) (= (regOne!32735 r!7292) r!7292)) (= lambda!336927 lambda!336881))))

(declare-fun bs!1530672 () Bool)

(assert (= bs!1530672 (and b!6172844 b!6171469)))

(assert (=> bs!1530672 (not (= lambda!336927 lambda!336830))))

(declare-fun bs!1530673 () Bool)

(assert (= bs!1530673 (and b!6172844 b!6172599)))

(assert (=> bs!1530673 (not (= lambda!336927 lambda!336910))))

(declare-fun bs!1530674 () Bool)

(assert (= bs!1530674 (and b!6172844 d!1934475)))

(assert (=> bs!1530674 (not (= lambda!336927 lambda!336871))))

(assert (=> bs!1530670 (not (= lambda!336927 lambda!336917))))

(assert (=> bs!1530674 (not (= lambda!336927 lambda!336872))))

(declare-fun bs!1530675 () Bool)

(assert (= bs!1530675 (and b!6172844 b!6172186)))

(assert (=> bs!1530675 (not (= lambda!336927 lambda!336882))))

(assert (=> bs!1530672 (not (= lambda!336927 lambda!336829))))

(declare-fun bs!1530676 () Bool)

(assert (= bs!1530676 (and b!6172844 d!1934457)))

(assert (=> bs!1530676 (not (= lambda!336927 lambda!336859))))

(declare-fun bs!1530677 () Bool)

(assert (= bs!1530677 (and b!6172844 d!1934589)))

(assert (=> bs!1530677 (not (= lambda!336927 lambda!336899))))

(declare-fun bs!1530678 () Bool)

(assert (= bs!1530678 (and b!6172844 b!6172606)))

(assert (=> bs!1530678 (= (and (= (reg!16440 (regOne!32735 r!7292)) (reg!16440 (regTwo!32735 r!7292))) (= (regOne!32735 r!7292) (regTwo!32735 r!7292))) (= lambda!336927 lambda!336909))))

(assert (=> b!6172844 true))

(assert (=> b!6172844 true))

(declare-fun bs!1530679 () Bool)

(declare-fun b!6172837 () Bool)

(assert (= bs!1530679 (and b!6172837 d!1934715)))

(declare-fun lambda!336928 () Int)

(assert (=> bs!1530679 (= (and (= (regOne!32734 (regOne!32735 r!7292)) (regOne!32734 r!7292)) (= (regTwo!32734 (regOne!32735 r!7292)) (regTwo!32734 r!7292))) (= lambda!336928 lambda!336918))))

(declare-fun bs!1530680 () Bool)

(assert (= bs!1530680 (and b!6172837 b!6172193)))

(assert (=> bs!1530680 (not (= lambda!336928 lambda!336881))))

(declare-fun bs!1530681 () Bool)

(assert (= bs!1530681 (and b!6172837 b!6171469)))

(assert (=> bs!1530681 (= (and (= (regOne!32734 (regOne!32735 r!7292)) (regOne!32734 r!7292)) (= (regTwo!32734 (regOne!32735 r!7292)) (regTwo!32734 r!7292))) (= lambda!336928 lambda!336830))))

(declare-fun bs!1530682 () Bool)

(assert (= bs!1530682 (and b!6172837 b!6172599)))

(assert (=> bs!1530682 (= (and (= (regOne!32734 (regOne!32735 r!7292)) (regOne!32734 (regTwo!32735 r!7292))) (= (regTwo!32734 (regOne!32735 r!7292)) (regTwo!32734 (regTwo!32735 r!7292)))) (= lambda!336928 lambda!336910))))

(declare-fun bs!1530683 () Bool)

(assert (= bs!1530683 (and b!6172837 d!1934475)))

(assert (=> bs!1530683 (not (= lambda!336928 lambda!336871))))

(assert (=> bs!1530679 (not (= lambda!336928 lambda!336917))))

(assert (=> bs!1530683 (= (and (= (regOne!32734 (regOne!32735 r!7292)) (regOne!32734 r!7292)) (= (regTwo!32734 (regOne!32735 r!7292)) (regTwo!32734 r!7292))) (= lambda!336928 lambda!336872))))

(declare-fun bs!1530684 () Bool)

(assert (= bs!1530684 (and b!6172837 b!6172186)))

(assert (=> bs!1530684 (= (and (= (regOne!32734 (regOne!32735 r!7292)) (regOne!32734 r!7292)) (= (regTwo!32734 (regOne!32735 r!7292)) (regTwo!32734 r!7292))) (= lambda!336928 lambda!336882))))

(declare-fun bs!1530685 () Bool)

(assert (= bs!1530685 (and b!6172837 b!6172844)))

(assert (=> bs!1530685 (not (= lambda!336928 lambda!336927))))

(assert (=> bs!1530681 (not (= lambda!336928 lambda!336829))))

(declare-fun bs!1530686 () Bool)

(assert (= bs!1530686 (and b!6172837 d!1934457)))

(assert (=> bs!1530686 (not (= lambda!336928 lambda!336859))))

(declare-fun bs!1530687 () Bool)

(assert (= bs!1530687 (and b!6172837 d!1934589)))

(assert (=> bs!1530687 (not (= lambda!336928 lambda!336899))))

(declare-fun bs!1530688 () Bool)

(assert (= bs!1530688 (and b!6172837 b!6172606)))

(assert (=> bs!1530688 (not (= lambda!336928 lambda!336909))))

(assert (=> b!6172837 true))

(assert (=> b!6172837 true))

(declare-fun b!6172836 () Bool)

(declare-fun e!3760199 () Bool)

(declare-fun e!3760197 () Bool)

(assert (=> b!6172836 (= e!3760199 e!3760197)))

(declare-fun res!2554994 () Bool)

(assert (=> b!6172836 (= res!2554994 (matchRSpec!3212 (regOne!32735 (regOne!32735 r!7292)) s!2326))))

(assert (=> b!6172836 (=> res!2554994 e!3760197)))

(declare-fun e!3760201 () Bool)

(declare-fun call!514995 () Bool)

(assert (=> b!6172837 (= e!3760201 call!514995)))

(declare-fun d!1934807 () Bool)

(declare-fun c!1112504 () Bool)

(assert (=> d!1934807 (= c!1112504 ((_ is EmptyExpr!16111) (regOne!32735 r!7292)))))

(declare-fun e!3760195 () Bool)

(assert (=> d!1934807 (= (matchRSpec!3212 (regOne!32735 r!7292) s!2326) e!3760195)))

(declare-fun b!6172838 () Bool)

(declare-fun call!514996 () Bool)

(assert (=> b!6172838 (= e!3760195 call!514996)))

(declare-fun b!6172839 () Bool)

(declare-fun c!1112506 () Bool)

(assert (=> b!6172839 (= c!1112506 ((_ is ElementMatch!16111) (regOne!32735 r!7292)))))

(declare-fun e!3760196 () Bool)

(declare-fun e!3760200 () Bool)

(assert (=> b!6172839 (= e!3760196 e!3760200)))

(declare-fun b!6172840 () Bool)

(assert (=> b!6172840 (= e!3760195 e!3760196)))

(declare-fun res!2554996 () Bool)

(assert (=> b!6172840 (= res!2554996 (not ((_ is EmptyLang!16111) (regOne!32735 r!7292))))))

(assert (=> b!6172840 (=> (not res!2554996) (not e!3760196))))

(declare-fun b!6172841 () Bool)

(declare-fun c!1112503 () Bool)

(assert (=> b!6172841 (= c!1112503 ((_ is Union!16111) (regOne!32735 r!7292)))))

(assert (=> b!6172841 (= e!3760200 e!3760199)))

(declare-fun b!6172842 () Bool)

(assert (=> b!6172842 (= e!3760197 (matchRSpec!3212 (regTwo!32735 (regOne!32735 r!7292)) s!2326))))

(declare-fun bm!514990 () Bool)

(assert (=> bm!514990 (= call!514996 (isEmpty!36488 s!2326))))

(declare-fun b!6172843 () Bool)

(assert (=> b!6172843 (= e!3760199 e!3760201)))

(declare-fun c!1112505 () Bool)

(assert (=> b!6172843 (= c!1112505 ((_ is Star!16111) (regOne!32735 r!7292)))))

(declare-fun e!3760198 () Bool)

(assert (=> b!6172844 (= e!3760198 call!514995)))

(declare-fun b!6172845 () Bool)

(declare-fun res!2554995 () Bool)

(assert (=> b!6172845 (=> res!2554995 e!3760198)))

(assert (=> b!6172845 (= res!2554995 call!514996)))

(assert (=> b!6172845 (= e!3760201 e!3760198)))

(declare-fun bm!514991 () Bool)

(assert (=> bm!514991 (= call!514995 (Exists!3181 (ite c!1112505 lambda!336927 lambda!336928)))))

(declare-fun b!6172846 () Bool)

(assert (=> b!6172846 (= e!3760200 (= s!2326 (Cons!64510 (c!1112104 (regOne!32735 r!7292)) Nil!64510)))))

(assert (= (and d!1934807 c!1112504) b!6172838))

(assert (= (and d!1934807 (not c!1112504)) b!6172840))

(assert (= (and b!6172840 res!2554996) b!6172839))

(assert (= (and b!6172839 c!1112506) b!6172846))

(assert (= (and b!6172839 (not c!1112506)) b!6172841))

(assert (= (and b!6172841 c!1112503) b!6172836))

(assert (= (and b!6172841 (not c!1112503)) b!6172843))

(assert (= (and b!6172836 (not res!2554994)) b!6172842))

(assert (= (and b!6172843 c!1112505) b!6172845))

(assert (= (and b!6172843 (not c!1112505)) b!6172837))

(assert (= (and b!6172845 (not res!2554995)) b!6172844))

(assert (= (or b!6172844 b!6172837) bm!514991))

(assert (= (or b!6172838 b!6172845) bm!514990))

(declare-fun m!7009300 () Bool)

(assert (=> b!6172836 m!7009300))

(declare-fun m!7009302 () Bool)

(assert (=> b!6172842 m!7009302))

(assert (=> bm!514990 m!7008184))

(declare-fun m!7009304 () Bool)

(assert (=> bm!514991 m!7009304))

(assert (=> b!6172185 d!1934807))

(declare-fun d!1934809 () Bool)

(assert (=> d!1934809 (= (head!12743 (unfocusZipperList!1532 zl!343)) (h!70956 (unfocusZipperList!1532 zl!343)))))

(assert (=> b!6172264 d!1934809))

(declare-fun d!1934811 () Bool)

(declare-fun c!1112507 () Bool)

(assert (=> d!1934811 (= c!1112507 (isEmpty!36488 (tail!11827 s!2326)))))

(declare-fun e!3760202 () Bool)

(assert (=> d!1934811 (= (matchZipper!2123 (derivationStepZipper!2084 lt!2337307 (head!12742 s!2326)) (tail!11827 s!2326)) e!3760202)))

(declare-fun b!6172847 () Bool)

(assert (=> b!6172847 (= e!3760202 (nullableZipper!1892 (derivationStepZipper!2084 lt!2337307 (head!12742 s!2326))))))

(declare-fun b!6172848 () Bool)

(assert (=> b!6172848 (= e!3760202 (matchZipper!2123 (derivationStepZipper!2084 (derivationStepZipper!2084 lt!2337307 (head!12742 s!2326)) (head!12742 (tail!11827 s!2326))) (tail!11827 (tail!11827 s!2326))))))

(assert (= (and d!1934811 c!1112507) b!6172847))

(assert (= (and d!1934811 (not c!1112507)) b!6172848))

(assert (=> d!1934811 m!7008192))

(assert (=> d!1934811 m!7008662))

(assert (=> b!6172847 m!7008228))

(declare-fun m!7009306 () Bool)

(assert (=> b!6172847 m!7009306))

(assert (=> b!6172848 m!7008192))

(assert (=> b!6172848 m!7009244))

(assert (=> b!6172848 m!7008228))

(assert (=> b!6172848 m!7009244))

(declare-fun m!7009308 () Bool)

(assert (=> b!6172848 m!7009308))

(assert (=> b!6172848 m!7008192))

(assert (=> b!6172848 m!7009248))

(assert (=> b!6172848 m!7009308))

(assert (=> b!6172848 m!7009248))

(declare-fun m!7009310 () Bool)

(assert (=> b!6172848 m!7009310))

(assert (=> b!6171665 d!1934811))

(declare-fun bs!1530689 () Bool)

(declare-fun d!1934813 () Bool)

(assert (= bs!1530689 (and d!1934813 d!1934701)))

(declare-fun lambda!336929 () Int)

(assert (=> bs!1530689 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336929 lambda!336912))))

(declare-fun bs!1530690 () Bool)

(assert (= bs!1530690 (and d!1934813 d!1934577)))

(assert (=> bs!1530690 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336929 lambda!336893))))

(declare-fun bs!1530691 () Bool)

(assert (= bs!1530691 (and d!1934813 d!1934779)))

(assert (=> bs!1530691 (= lambda!336929 lambda!336925)))

(declare-fun bs!1530692 () Bool)

(assert (= bs!1530692 (and d!1934813 d!1934691)))

(assert (=> bs!1530692 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336929 lambda!336911))))

(declare-fun bs!1530693 () Bool)

(assert (= bs!1530693 (and d!1934813 d!1934763)))

(assert (=> bs!1530693 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336929 lambda!336923))))

(declare-fun bs!1530694 () Bool)

(assert (= bs!1530694 (and d!1934813 d!1934755)))

(assert (=> bs!1530694 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336929 lambda!336921))))

(declare-fun bs!1530695 () Bool)

(assert (= bs!1530695 (and d!1934813 b!6171493)))

(assert (=> bs!1530695 (= (= (head!12742 s!2326) (h!70958 s!2326)) (= lambda!336929 lambda!336831))))

(declare-fun bs!1530696 () Bool)

(assert (= bs!1530696 (and d!1934813 d!1934797)))

(assert (=> bs!1530696 (= lambda!336929 lambda!336926)))

(declare-fun bs!1530697 () Bool)

(assert (= bs!1530697 (and d!1934813 d!1934667)))

(assert (=> bs!1530697 (= (= (head!12742 s!2326) (head!12742 (t!378136 s!2326))) (= lambda!336929 lambda!336908))))

(assert (=> d!1934813 true))

(assert (=> d!1934813 (= (derivationStepZipper!2084 lt!2337307 (head!12742 s!2326)) (flatMap!1616 lt!2337307 lambda!336929))))

(declare-fun bs!1530698 () Bool)

(assert (= bs!1530698 d!1934813))

(declare-fun m!7009312 () Bool)

(assert (=> bs!1530698 m!7009312))

(assert (=> b!6171665 d!1934813))

(assert (=> b!6171665 d!1934599))

(assert (=> b!6171665 d!1934769))

(declare-fun d!1934815 () Bool)

(declare-fun lt!2337456 () Int)

(assert (=> d!1934815 (>= lt!2337456 0)))

(declare-fun e!3760203 () Int)

(assert (=> d!1934815 (= lt!2337456 e!3760203)))

(declare-fun c!1112508 () Bool)

(assert (=> d!1934815 (= c!1112508 ((_ is Cons!64508) (exprs!5995 (h!70957 lt!2337299))))))

(assert (=> d!1934815 (= (contextDepthTotal!270 (h!70957 lt!2337299)) lt!2337456)))

(declare-fun b!6172849 () Bool)

(assert (=> b!6172849 (= e!3760203 (+ (regexDepthTotal!132 (h!70956 (exprs!5995 (h!70957 lt!2337299)))) (contextDepthTotal!270 (Context!10991 (t!378134 (exprs!5995 (h!70957 lt!2337299)))))))))

(declare-fun b!6172850 () Bool)

(assert (=> b!6172850 (= e!3760203 1)))

(assert (= (and d!1934815 c!1112508) b!6172849))

(assert (= (and d!1934815 (not c!1112508)) b!6172850))

(declare-fun m!7009314 () Bool)

(assert (=> b!6172849 m!7009314))

(declare-fun m!7009316 () Bool)

(assert (=> b!6172849 m!7009316))

(assert (=> b!6172281 d!1934815))

(declare-fun d!1934817 () Bool)

(declare-fun lt!2337457 () Int)

(assert (=> d!1934817 (>= lt!2337457 0)))

(declare-fun e!3760204 () Int)

(assert (=> d!1934817 (= lt!2337457 e!3760204)))

(declare-fun c!1112509 () Bool)

(assert (=> d!1934817 (= c!1112509 ((_ is Cons!64509) (t!378135 lt!2337299)))))

(assert (=> d!1934817 (= (zipperDepthTotal!294 (t!378135 lt!2337299)) lt!2337457)))

(declare-fun b!6172851 () Bool)

(assert (=> b!6172851 (= e!3760204 (+ (contextDepthTotal!270 (h!70957 (t!378135 lt!2337299))) (zipperDepthTotal!294 (t!378135 (t!378135 lt!2337299)))))))

(declare-fun b!6172852 () Bool)

(assert (=> b!6172852 (= e!3760204 0)))

(assert (= (and d!1934817 c!1112509) b!6172851))

(assert (= (and d!1934817 (not c!1112509)) b!6172852))

(declare-fun m!7009318 () Bool)

(assert (=> b!6172851 m!7009318))

(declare-fun m!7009320 () Bool)

(assert (=> b!6172851 m!7009320))

(assert (=> b!6172281 d!1934817))

(declare-fun d!1934819 () Bool)

(assert (=> d!1934819 (= (isConcat!1050 lt!2337408) ((_ is Concat!24956) lt!2337408))))

(assert (=> b!6172150 d!1934819))

(assert (=> d!1934505 d!1934511))

(declare-fun d!1934821 () Bool)

(assert (=> d!1934821 (= (flatMap!1616 z!1189 lambda!336831) (dynLambda!25439 lambda!336831 (h!70957 zl!343)))))

(assert (=> d!1934821 true))

(declare-fun _$13!3139 () Unit!157667)

(assert (=> d!1934821 (= (choose!45873 z!1189 (h!70957 zl!343) lambda!336831) _$13!3139)))

(declare-fun b_lambda!234935 () Bool)

(assert (=> (not b_lambda!234935) (not d!1934821)))

(declare-fun bs!1530699 () Bool)

(assert (= bs!1530699 d!1934821))

(assert (=> bs!1530699 m!7008032))

(assert (=> bs!1530699 m!7008592))

(assert (=> d!1934505 d!1934821))

(declare-fun bm!514992 () Bool)

(declare-fun call!514999 () Bool)

(declare-fun call!514997 () Bool)

(assert (=> bm!514992 (= call!514999 call!514997)))

(declare-fun b!6172853 () Bool)

(declare-fun e!3760210 () Bool)

(declare-fun e!3760211 () Bool)

(assert (=> b!6172853 (= e!3760210 e!3760211)))

(declare-fun c!1112510 () Bool)

(assert (=> b!6172853 (= c!1112510 ((_ is Star!16111) lt!2337408))))

(declare-fun b!6172854 () Bool)

(declare-fun res!2554998 () Bool)

(declare-fun e!3760206 () Bool)

(assert (=> b!6172854 (=> res!2554998 e!3760206)))

(assert (=> b!6172854 (= res!2554998 (not ((_ is Concat!24956) lt!2337408)))))

(declare-fun e!3760205 () Bool)

(assert (=> b!6172854 (= e!3760205 e!3760206)))

(declare-fun b!6172855 () Bool)

(assert (=> b!6172855 (= e!3760211 e!3760205)))

(declare-fun c!1112511 () Bool)

(assert (=> b!6172855 (= c!1112511 ((_ is Union!16111) lt!2337408))))

(declare-fun b!6172856 () Bool)

(declare-fun e!3760207 () Bool)

(assert (=> b!6172856 (= e!3760207 call!514999)))

(declare-fun b!6172857 () Bool)

(declare-fun e!3760208 () Bool)

(assert (=> b!6172857 (= e!3760208 call!514997)))

(declare-fun b!6172858 () Bool)

(assert (=> b!6172858 (= e!3760206 e!3760207)))

(declare-fun res!2555000 () Bool)

(assert (=> b!6172858 (=> (not res!2555000) (not e!3760207))))

(declare-fun call!514998 () Bool)

(assert (=> b!6172858 (= res!2555000 call!514998)))

(declare-fun b!6172859 () Bool)

(declare-fun res!2554997 () Bool)

(declare-fun e!3760209 () Bool)

(assert (=> b!6172859 (=> (not res!2554997) (not e!3760209))))

(assert (=> b!6172859 (= res!2554997 call!514998)))

(assert (=> b!6172859 (= e!3760205 e!3760209)))

(declare-fun b!6172860 () Bool)

(assert (=> b!6172860 (= e!3760211 e!3760208)))

(declare-fun res!2554999 () Bool)

(assert (=> b!6172860 (= res!2554999 (not (nullable!6104 (reg!16440 lt!2337408))))))

(assert (=> b!6172860 (=> (not res!2554999) (not e!3760208))))

(declare-fun bm!514994 () Bool)

(assert (=> bm!514994 (= call!514997 (validRegex!7847 (ite c!1112510 (reg!16440 lt!2337408) (ite c!1112511 (regTwo!32735 lt!2337408) (regTwo!32734 lt!2337408)))))))

(declare-fun b!6172861 () Bool)

(assert (=> b!6172861 (= e!3760209 call!514999)))

(declare-fun bm!514993 () Bool)

(assert (=> bm!514993 (= call!514998 (validRegex!7847 (ite c!1112511 (regOne!32735 lt!2337408) (regOne!32734 lt!2337408))))))

(declare-fun d!1934823 () Bool)

(declare-fun res!2555001 () Bool)

(assert (=> d!1934823 (=> res!2555001 e!3760210)))

(assert (=> d!1934823 (= res!2555001 ((_ is ElementMatch!16111) lt!2337408))))

(assert (=> d!1934823 (= (validRegex!7847 lt!2337408) e!3760210)))

(assert (= (and d!1934823 (not res!2555001)) b!6172853))

(assert (= (and b!6172853 c!1112510) b!6172860))

(assert (= (and b!6172853 (not c!1112510)) b!6172855))

(assert (= (and b!6172860 res!2554999) b!6172857))

(assert (= (and b!6172855 c!1112511) b!6172859))

(assert (= (and b!6172855 (not c!1112511)) b!6172854))

(assert (= (and b!6172859 res!2554997) b!6172861))

(assert (= (and b!6172854 (not res!2554998)) b!6172858))

(assert (= (and b!6172858 res!2555000) b!6172856))

(assert (= (or b!6172861 b!6172856) bm!514992))

(assert (= (or b!6172859 b!6172858) bm!514993))

(assert (= (or b!6172857 bm!514992) bm!514994))

(declare-fun m!7009322 () Bool)

(assert (=> b!6172860 m!7009322))

(declare-fun m!7009324 () Bool)

(assert (=> bm!514994 m!7009324))

(declare-fun m!7009326 () Bool)

(assert (=> bm!514993 m!7009326))

(assert (=> d!1934523 d!1934823))

(declare-fun d!1934825 () Bool)

(declare-fun res!2555002 () Bool)

(declare-fun e!3760212 () Bool)

(assert (=> d!1934825 (=> res!2555002 e!3760212)))

(assert (=> d!1934825 (= res!2555002 ((_ is Nil!64508) lt!2337305))))

(assert (=> d!1934825 (= (forall!15231 lt!2337305 lambda!336876) e!3760212)))

(declare-fun b!6172862 () Bool)

(declare-fun e!3760213 () Bool)

(assert (=> b!6172862 (= e!3760212 e!3760213)))

(declare-fun res!2555003 () Bool)

(assert (=> b!6172862 (=> (not res!2555003) (not e!3760213))))

(assert (=> b!6172862 (= res!2555003 (dynLambda!25440 lambda!336876 (h!70956 lt!2337305)))))

(declare-fun b!6172863 () Bool)

(assert (=> b!6172863 (= e!3760213 (forall!15231 (t!378134 lt!2337305) lambda!336876))))

(assert (= (and d!1934825 (not res!2555002)) b!6172862))

(assert (= (and b!6172862 res!2555003) b!6172863))

(declare-fun b_lambda!234937 () Bool)

(assert (=> (not b_lambda!234937) (not b!6172862)))

(declare-fun m!7009328 () Bool)

(assert (=> b!6172862 m!7009328))

(declare-fun m!7009330 () Bool)

(assert (=> b!6172863 m!7009330))

(assert (=> d!1934523 d!1934825))

(declare-fun d!1934827 () Bool)

(declare-fun c!1112512 () Bool)

(assert (=> d!1934827 (= c!1112512 (isEmpty!36488 (tail!11827 (t!378136 s!2326))))))

(declare-fun e!3760214 () Bool)

(assert (=> d!1934827 (= (matchZipper!2123 (derivationStepZipper!2084 lt!2337284 (head!12742 (t!378136 s!2326))) (tail!11827 (t!378136 s!2326))) e!3760214)))

(declare-fun b!6172864 () Bool)

(assert (=> b!6172864 (= e!3760214 (nullableZipper!1892 (derivationStepZipper!2084 lt!2337284 (head!12742 (t!378136 s!2326)))))))

(declare-fun b!6172865 () Bool)

(assert (=> b!6172865 (= e!3760214 (matchZipper!2123 (derivationStepZipper!2084 (derivationStepZipper!2084 lt!2337284 (head!12742 (t!378136 s!2326))) (head!12742 (tail!11827 (t!378136 s!2326)))) (tail!11827 (tail!11827 (t!378136 s!2326)))))))

(assert (= (and d!1934827 c!1112512) b!6172864))

(assert (= (and d!1934827 (not c!1112512)) b!6172865))

(assert (=> d!1934827 m!7008080))

(assert (=> d!1934827 m!7008798))

(assert (=> b!6172864 m!7008696))

(declare-fun m!7009332 () Bool)

(assert (=> b!6172864 m!7009332))

(assert (=> b!6172865 m!7008080))

(assert (=> b!6172865 m!7008802))

(assert (=> b!6172865 m!7008696))

(assert (=> b!6172865 m!7008802))

(declare-fun m!7009334 () Bool)

(assert (=> b!6172865 m!7009334))

(assert (=> b!6172865 m!7008080))

(assert (=> b!6172865 m!7008806))

(assert (=> b!6172865 m!7009334))

(assert (=> b!6172865 m!7008806))

(declare-fun m!7009336 () Bool)

(assert (=> b!6172865 m!7009336))

(assert (=> b!6172275 d!1934827))

(declare-fun bs!1530700 () Bool)

(declare-fun d!1934829 () Bool)

(assert (= bs!1530700 (and d!1934829 d!1934701)))

(declare-fun lambda!336930 () Int)

(assert (=> bs!1530700 (= lambda!336930 lambda!336912)))

(declare-fun bs!1530701 () Bool)

(assert (= bs!1530701 (and d!1934829 d!1934577)))

(assert (=> bs!1530701 (= lambda!336930 lambda!336893)))

(declare-fun bs!1530702 () Bool)

(assert (= bs!1530702 (and d!1934829 d!1934779)))

(assert (=> bs!1530702 (= (= (head!12742 (t!378136 s!2326)) (head!12742 s!2326)) (= lambda!336930 lambda!336925))))

(declare-fun bs!1530703 () Bool)

(assert (= bs!1530703 (and d!1934829 d!1934813)))

(assert (=> bs!1530703 (= (= (head!12742 (t!378136 s!2326)) (head!12742 s!2326)) (= lambda!336930 lambda!336929))))

(declare-fun bs!1530704 () Bool)

(assert (= bs!1530704 (and d!1934829 d!1934691)))

(assert (=> bs!1530704 (= lambda!336930 lambda!336911)))

(declare-fun bs!1530705 () Bool)

(assert (= bs!1530705 (and d!1934829 d!1934763)))

(assert (=> bs!1530705 (= lambda!336930 lambda!336923)))

(declare-fun bs!1530706 () Bool)

(assert (= bs!1530706 (and d!1934829 d!1934755)))

(assert (=> bs!1530706 (= lambda!336930 lambda!336921)))

(declare-fun bs!1530707 () Bool)

(assert (= bs!1530707 (and d!1934829 b!6171493)))

(assert (=> bs!1530707 (= (= (head!12742 (t!378136 s!2326)) (h!70958 s!2326)) (= lambda!336930 lambda!336831))))

(declare-fun bs!1530708 () Bool)

(assert (= bs!1530708 (and d!1934829 d!1934797)))

(assert (=> bs!1530708 (= (= (head!12742 (t!378136 s!2326)) (head!12742 s!2326)) (= lambda!336930 lambda!336926))))

(declare-fun bs!1530709 () Bool)

(assert (= bs!1530709 (and d!1934829 d!1934667)))

(assert (=> bs!1530709 (= lambda!336930 lambda!336908)))

(assert (=> d!1934829 true))

(assert (=> d!1934829 (= (derivationStepZipper!2084 lt!2337284 (head!12742 (t!378136 s!2326))) (flatMap!1616 lt!2337284 lambda!336930))))

(declare-fun bs!1530710 () Bool)

(assert (= bs!1530710 d!1934829))

(declare-fun m!7009338 () Bool)

(assert (=> bs!1530710 m!7009338))

(assert (=> b!6172275 d!1934829))

(assert (=> b!6172275 d!1934579))

(assert (=> b!6172275 d!1934581))

(assert (=> b!6172232 d!1934767))

(assert (=> b!6172232 d!1934769))

(declare-fun d!1934831 () Bool)

(assert (=> d!1934831 (= (nullable!6104 (h!70956 (exprs!5995 lt!2337309))) (nullableFct!2068 (h!70956 (exprs!5995 lt!2337309))))))

(declare-fun bs!1530711 () Bool)

(assert (= bs!1530711 d!1934831))

(declare-fun m!7009340 () Bool)

(assert (=> bs!1530711 m!7009340))

(assert (=> b!6171656 d!1934831))

(assert (=> b!6171869 d!1934563))

(declare-fun d!1934833 () Bool)

(assert (=> d!1934833 (= (nullable!6104 r!7292) (nullableFct!2068 r!7292))))

(declare-fun bs!1530712 () Bool)

(assert (= bs!1530712 d!1934833))

(declare-fun m!7009342 () Bool)

(assert (=> bs!1530712 m!7009342))

(assert (=> b!6172236 d!1934833))

(assert (=> bs!1530482 d!1934357))

(declare-fun b!6172866 () Bool)

(declare-fun e!3760219 () Bool)

(assert (=> b!6172866 (= e!3760219 (nullable!6104 (regOne!32734 (ite c!1112292 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343))))))))))

(declare-fun b!6172867 () Bool)

(declare-fun c!1112516 () Bool)

(assert (=> b!6172867 (= c!1112516 ((_ is Star!16111) (ite c!1112292 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))))))))

(declare-fun e!3760220 () (InoxSet Context!10990))

(declare-fun e!3760217 () (InoxSet Context!10990))

(assert (=> b!6172867 (= e!3760220 e!3760217)))

(declare-fun bm!514995 () Bool)

(declare-fun call!515003 () List!64632)

(declare-fun c!1112513 () Bool)

(declare-fun call!515002 () (InoxSet Context!10990))

(declare-fun c!1112517 () Bool)

(declare-fun c!1112515 () Bool)

(assert (=> bm!514995 (= call!515002 (derivationStepZipperDown!1359 (ite c!1112517 (regTwo!32735 (ite c!1112292 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))))) (ite c!1112513 (regTwo!32734 (ite c!1112292 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))))) (ite c!1112515 (regOne!32734 (ite c!1112292 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))))) (reg!16440 (ite c!1112292 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343))))))))) (ite (or c!1112517 c!1112513) (ite c!1112292 lt!2337313 (Context!10991 call!514862)) (Context!10991 call!515003)) (h!70958 s!2326)))))

(declare-fun b!6172868 () Bool)

(declare-fun call!515001 () (InoxSet Context!10990))

(assert (=> b!6172868 (= e!3760217 call!515001)))

(declare-fun b!6172869 () Bool)

(declare-fun e!3760218 () (InoxSet Context!10990))

(assert (=> b!6172869 (= e!3760218 e!3760220)))

(assert (=> b!6172869 (= c!1112515 ((_ is Concat!24956) (ite c!1112292 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))))))))

(declare-fun bm!514996 () Bool)

(declare-fun call!515000 () List!64632)

(assert (=> bm!514996 (= call!515003 call!515000)))

(declare-fun c!1112514 () Bool)

(declare-fun d!1934835 () Bool)

(assert (=> d!1934835 (= c!1112514 (and ((_ is ElementMatch!16111) (ite c!1112292 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))))) (= (c!1112104 (ite c!1112292 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))))) (h!70958 s!2326))))))

(declare-fun e!3760216 () (InoxSet Context!10990))

(assert (=> d!1934835 (= (derivationStepZipperDown!1359 (ite c!1112292 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343))))) (ite c!1112292 lt!2337313 (Context!10991 call!514862)) (h!70958 s!2326)) e!3760216)))

(declare-fun bm!514997 () Bool)

(assert (=> bm!514997 (= call!515000 ($colon$colon!1988 (exprs!5995 (ite c!1112292 lt!2337313 (Context!10991 call!514862))) (ite (or c!1112513 c!1112515) (regTwo!32734 (ite c!1112292 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))))) (ite c!1112292 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343))))))))))

(declare-fun b!6172870 () Bool)

(assert (=> b!6172870 (= e!3760216 (store ((as const (Array Context!10990 Bool)) false) (ite c!1112292 lt!2337313 (Context!10991 call!514862)) true))))

(declare-fun b!6172871 () Bool)

(declare-fun e!3760215 () (InoxSet Context!10990))

(declare-fun call!515004 () (InoxSet Context!10990))

(assert (=> b!6172871 (= e!3760215 ((_ map or) call!515004 call!515002))))

(declare-fun bm!514998 () Bool)

(declare-fun call!515005 () (InoxSet Context!10990))

(assert (=> bm!514998 (= call!515001 call!515005)))

(declare-fun bm!514999 () Bool)

(assert (=> bm!514999 (= call!515005 call!515002)))

(declare-fun b!6172872 () Bool)

(assert (=> b!6172872 (= e!3760220 call!515001)))

(declare-fun bm!515000 () Bool)

(assert (=> bm!515000 (= call!515004 (derivationStepZipperDown!1359 (ite c!1112517 (regOne!32735 (ite c!1112292 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))))) (regOne!32734 (ite c!1112292 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343))))))) (ite c!1112517 (ite c!1112292 lt!2337313 (Context!10991 call!514862)) (Context!10991 call!515000)) (h!70958 s!2326)))))

(declare-fun b!6172873 () Bool)

(assert (=> b!6172873 (= e!3760217 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172874 () Bool)

(assert (=> b!6172874 (= c!1112513 e!3760219)))

(declare-fun res!2555004 () Bool)

(assert (=> b!6172874 (=> (not res!2555004) (not e!3760219))))

(assert (=> b!6172874 (= res!2555004 ((_ is Concat!24956) (ite c!1112292 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))))))))

(assert (=> b!6172874 (= e!3760215 e!3760218)))

(declare-fun b!6172875 () Bool)

(assert (=> b!6172875 (= e!3760216 e!3760215)))

(assert (=> b!6172875 (= c!1112517 ((_ is Union!16111) (ite c!1112292 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))))))))

(declare-fun b!6172876 () Bool)

(assert (=> b!6172876 (= e!3760218 ((_ map or) call!515004 call!515005))))

(assert (= (and d!1934835 c!1112514) b!6172870))

(assert (= (and d!1934835 (not c!1112514)) b!6172875))

(assert (= (and b!6172875 c!1112517) b!6172871))

(assert (= (and b!6172875 (not c!1112517)) b!6172874))

(assert (= (and b!6172874 res!2555004) b!6172866))

(assert (= (and b!6172874 c!1112513) b!6172876))

(assert (= (and b!6172874 (not c!1112513)) b!6172869))

(assert (= (and b!6172869 c!1112515) b!6172872))

(assert (= (and b!6172869 (not c!1112515)) b!6172867))

(assert (= (and b!6172867 c!1112516) b!6172868))

(assert (= (and b!6172867 (not c!1112516)) b!6172873))

(assert (= (or b!6172872 b!6172868) bm!514996))

(assert (= (or b!6172872 b!6172868) bm!514998))

(assert (= (or b!6172876 bm!514996) bm!514997))

(assert (= (or b!6172876 bm!514998) bm!514999))

(assert (= (or b!6172871 bm!514999) bm!514995))

(assert (= (or b!6172871 b!6172876) bm!515000))

(declare-fun m!7009344 () Bool)

(assert (=> b!6172870 m!7009344))

(declare-fun m!7009346 () Bool)

(assert (=> bm!514997 m!7009346))

(declare-fun m!7009348 () Bool)

(assert (=> bm!515000 m!7009348))

(declare-fun m!7009350 () Bool)

(assert (=> bm!514995 m!7009350))

(declare-fun m!7009352 () Bool)

(assert (=> b!6172866 m!7009352))

(assert (=> bm!514862 d!1934835))

(declare-fun d!1934837 () Bool)

(declare-fun res!2555005 () Bool)

(declare-fun e!3760221 () Bool)

(assert (=> d!1934837 (=> res!2555005 e!3760221)))

(assert (=> d!1934837 (= res!2555005 ((_ is Nil!64508) lt!2337420))))

(assert (=> d!1934837 (= (forall!15231 lt!2337420 lambda!336888) e!3760221)))

(declare-fun b!6172877 () Bool)

(declare-fun e!3760222 () Bool)

(assert (=> b!6172877 (= e!3760221 e!3760222)))

(declare-fun res!2555006 () Bool)

(assert (=> b!6172877 (=> (not res!2555006) (not e!3760222))))

(assert (=> b!6172877 (= res!2555006 (dynLambda!25440 lambda!336888 (h!70956 lt!2337420)))))

(declare-fun b!6172878 () Bool)

(assert (=> b!6172878 (= e!3760222 (forall!15231 (t!378134 lt!2337420) lambda!336888))))

(assert (= (and d!1934837 (not res!2555005)) b!6172877))

(assert (= (and b!6172877 res!2555006) b!6172878))

(declare-fun b_lambda!234939 () Bool)

(assert (=> (not b_lambda!234939) (not b!6172877)))

(declare-fun m!7009354 () Bool)

(assert (=> b!6172877 m!7009354))

(declare-fun m!7009356 () Bool)

(assert (=> b!6172878 m!7009356))

(assert (=> d!1934533 d!1934837))

(declare-fun bs!1530713 () Bool)

(declare-fun d!1934839 () Bool)

(assert (= bs!1530713 (and d!1934839 d!1934729)))

(declare-fun lambda!336931 () Int)

(assert (=> bs!1530713 (= lambda!336931 lambda!336919)))

(declare-fun bs!1530714 () Bool)

(assert (= bs!1530714 (and d!1934839 d!1934745)))

(assert (=> bs!1530714 (= lambda!336931 lambda!336920)))

(declare-fun bs!1530715 () Bool)

(assert (= bs!1530715 (and d!1934839 d!1934583)))

(assert (=> bs!1530715 (= lambda!336931 lambda!336896)))

(declare-fun bs!1530716 () Bool)

(assert (= bs!1530716 (and d!1934839 d!1934653)))

(assert (=> bs!1530716 (= lambda!336931 lambda!336907)))

(declare-fun bs!1530717 () Bool)

(assert (= bs!1530717 (and d!1934839 d!1934765)))

(assert (=> bs!1530717 (= lambda!336931 lambda!336924)))

(declare-fun bs!1530718 () Bool)

(assert (= bs!1530718 (and d!1934839 d!1934621)))

(assert (=> bs!1530718 (= lambda!336931 lambda!336903)))

(assert (=> d!1934839 (= (nullableZipper!1892 lt!2337289) (exists!2455 lt!2337289 lambda!336931))))

(declare-fun bs!1530719 () Bool)

(assert (= bs!1530719 d!1934839))

(declare-fun m!7009358 () Bool)

(assert (=> bs!1530719 m!7009358))

(assert (=> b!6171514 d!1934839))

(declare-fun d!1934841 () Bool)

(assert (=> d!1934841 (= (nullable!6104 (regOne!32734 (regOne!32735 (regOne!32734 r!7292)))) (nullableFct!2068 (regOne!32734 (regOne!32735 (regOne!32734 r!7292)))))))

(declare-fun bs!1530720 () Bool)

(assert (= bs!1530720 d!1934841))

(declare-fun m!7009360 () Bool)

(assert (=> bs!1530720 m!7009360))

(assert (=> b!6172294 d!1934841))

(declare-fun d!1934843 () Bool)

(declare-fun res!2555007 () Bool)

(declare-fun e!3760223 () Bool)

(assert (=> d!1934843 (=> res!2555007 e!3760223)))

(assert (=> d!1934843 (= res!2555007 ((_ is Nil!64509) lt!2337317))))

(assert (=> d!1934843 (= (noDuplicate!1956 lt!2337317) e!3760223)))

(declare-fun b!6172879 () Bool)

(declare-fun e!3760224 () Bool)

(assert (=> b!6172879 (= e!3760223 e!3760224)))

(declare-fun res!2555008 () Bool)

(assert (=> b!6172879 (=> (not res!2555008) (not e!3760224))))

(assert (=> b!6172879 (= res!2555008 (not (contains!20067 (t!378135 lt!2337317) (h!70957 lt!2337317))))))

(declare-fun b!6172880 () Bool)

(assert (=> b!6172880 (= e!3760224 (noDuplicate!1956 (t!378135 lt!2337317)))))

(assert (= (and d!1934843 (not res!2555007)) b!6172879))

(assert (= (and b!6172879 res!2555008) b!6172880))

(declare-fun m!7009362 () Bool)

(assert (=> b!6172879 m!7009362))

(declare-fun m!7009364 () Bool)

(assert (=> b!6172880 m!7009364))

(assert (=> d!1934315 d!1934843))

(declare-fun d!1934845 () Bool)

(declare-fun e!3760226 () Bool)

(assert (=> d!1934845 e!3760226))

(declare-fun res!2555009 () Bool)

(assert (=> d!1934845 (=> (not res!2555009) (not e!3760226))))

(declare-fun res!2555010 () List!64633)

(assert (=> d!1934845 (= res!2555009 (noDuplicate!1956 res!2555010))))

(declare-fun e!3760227 () Bool)

(assert (=> d!1934845 e!3760227))

(assert (=> d!1934845 (= (choose!45868 z!1189) res!2555010)))

(declare-fun b!6172882 () Bool)

(declare-fun e!3760225 () Bool)

(declare-fun tp!1723383 () Bool)

(assert (=> b!6172882 (= e!3760225 tp!1723383)))

(declare-fun tp!1723384 () Bool)

(declare-fun b!6172881 () Bool)

(assert (=> b!6172881 (= e!3760227 (and (inv!83524 (h!70957 res!2555010)) e!3760225 tp!1723384))))

(declare-fun b!6172883 () Bool)

(assert (=> b!6172883 (= e!3760226 (= (content!12039 res!2555010) z!1189))))

(assert (= b!6172881 b!6172882))

(assert (= (and d!1934845 ((_ is Cons!64509) res!2555010)) b!6172881))

(assert (= (and d!1934845 res!2555009) b!6172883))

(declare-fun m!7009366 () Bool)

(assert (=> d!1934845 m!7009366))

(declare-fun m!7009368 () Bool)

(assert (=> b!6172881 m!7009368))

(declare-fun m!7009370 () Bool)

(assert (=> b!6172883 m!7009370))

(assert (=> d!1934315 d!1934845))

(declare-fun d!1934847 () Bool)

(assert (=> d!1934847 (= (nullable!6104 (h!70956 (exprs!5995 lt!2337313))) (nullableFct!2068 (h!70956 (exprs!5995 lt!2337313))))))

(declare-fun bs!1530721 () Bool)

(assert (= bs!1530721 d!1934847))

(declare-fun m!7009372 () Bool)

(assert (=> bs!1530721 m!7009372))

(assert (=> b!6172130 d!1934847))

(declare-fun d!1934849 () Bool)

(assert (=> d!1934849 (= (isEmpty!36485 (exprs!5995 (h!70957 zl!343))) ((_ is Nil!64508) (exprs!5995 (h!70957 zl!343))))))

(assert (=> b!6171742 d!1934849))

(declare-fun d!1934851 () Bool)

(declare-fun res!2555014 () Bool)

(declare-fun e!3760231 () Bool)

(assert (=> d!1934851 (=> res!2555014 e!3760231)))

(assert (=> d!1934851 (= res!2555014 ((_ is EmptyExpr!16111) (regTwo!32735 (regOne!32734 r!7292))))))

(assert (=> d!1934851 (= (nullableFct!2068 (regTwo!32735 (regOne!32734 r!7292))) e!3760231)))

(declare-fun b!6172884 () Bool)

(declare-fun e!3760232 () Bool)

(declare-fun call!515006 () Bool)

(assert (=> b!6172884 (= e!3760232 call!515006)))

(declare-fun b!6172885 () Bool)

(declare-fun e!3760228 () Bool)

(declare-fun e!3760230 () Bool)

(assert (=> b!6172885 (= e!3760228 e!3760230)))

(declare-fun res!2555015 () Bool)

(assert (=> b!6172885 (=> res!2555015 e!3760230)))

(assert (=> b!6172885 (= res!2555015 ((_ is Star!16111) (regTwo!32735 (regOne!32734 r!7292))))))

(declare-fun bm!515001 () Bool)

(declare-fun c!1112518 () Bool)

(assert (=> bm!515001 (= call!515006 (nullable!6104 (ite c!1112518 (regTwo!32735 (regTwo!32735 (regOne!32734 r!7292))) (regTwo!32734 (regTwo!32735 (regOne!32734 r!7292))))))))

(declare-fun b!6172886 () Bool)

(declare-fun e!3760229 () Bool)

(declare-fun e!3760233 () Bool)

(assert (=> b!6172886 (= e!3760229 e!3760233)))

(declare-fun res!2555011 () Bool)

(declare-fun call!515007 () Bool)

(assert (=> b!6172886 (= res!2555011 call!515007)))

(assert (=> b!6172886 (=> (not res!2555011) (not e!3760233))))

(declare-fun b!6172887 () Bool)

(assert (=> b!6172887 (= e!3760233 call!515006)))

(declare-fun b!6172888 () Bool)

(assert (=> b!6172888 (= e!3760230 e!3760229)))

(assert (=> b!6172888 (= c!1112518 ((_ is Union!16111) (regTwo!32735 (regOne!32734 r!7292))))))

(declare-fun b!6172889 () Bool)

(assert (=> b!6172889 (= e!3760229 e!3760232)))

(declare-fun res!2555012 () Bool)

(assert (=> b!6172889 (= res!2555012 call!515007)))

(assert (=> b!6172889 (=> res!2555012 e!3760232)))

(declare-fun bm!515002 () Bool)

(assert (=> bm!515002 (= call!515007 (nullable!6104 (ite c!1112518 (regOne!32735 (regTwo!32735 (regOne!32734 r!7292))) (regOne!32734 (regTwo!32735 (regOne!32734 r!7292))))))))

(declare-fun b!6172890 () Bool)

(assert (=> b!6172890 (= e!3760231 e!3760228)))

(declare-fun res!2555013 () Bool)

(assert (=> b!6172890 (=> (not res!2555013) (not e!3760228))))

(assert (=> b!6172890 (= res!2555013 (and (not ((_ is EmptyLang!16111) (regTwo!32735 (regOne!32734 r!7292)))) (not ((_ is ElementMatch!16111) (regTwo!32735 (regOne!32734 r!7292))))))))

(assert (= (and d!1934851 (not res!2555014)) b!6172890))

(assert (= (and b!6172890 res!2555013) b!6172885))

(assert (= (and b!6172885 (not res!2555015)) b!6172888))

(assert (= (and b!6172888 c!1112518) b!6172889))

(assert (= (and b!6172888 (not c!1112518)) b!6172886))

(assert (= (and b!6172889 (not res!2555012)) b!6172884))

(assert (= (and b!6172886 res!2555011) b!6172887))

(assert (= (or b!6172884 b!6172887) bm!515001))

(assert (= (or b!6172889 b!6172886) bm!515002))

(declare-fun m!7009374 () Bool)

(assert (=> bm!515001 m!7009374))

(declare-fun m!7009376 () Bool)

(assert (=> bm!515002 m!7009376))

(assert (=> d!1934375 d!1934851))

(declare-fun bs!1530722 () Bool)

(declare-fun d!1934853 () Bool)

(assert (= bs!1530722 (and d!1934853 d!1934729)))

(declare-fun lambda!336932 () Int)

(assert (=> bs!1530722 (= lambda!336932 lambda!336919)))

(declare-fun bs!1530723 () Bool)

(assert (= bs!1530723 (and d!1934853 d!1934745)))

(assert (=> bs!1530723 (= lambda!336932 lambda!336920)))

(declare-fun bs!1530724 () Bool)

(assert (= bs!1530724 (and d!1934853 d!1934839)))

(assert (=> bs!1530724 (= lambda!336932 lambda!336931)))

(declare-fun bs!1530725 () Bool)

(assert (= bs!1530725 (and d!1934853 d!1934583)))

(assert (=> bs!1530725 (= lambda!336932 lambda!336896)))

(declare-fun bs!1530726 () Bool)

(assert (= bs!1530726 (and d!1934853 d!1934653)))

(assert (=> bs!1530726 (= lambda!336932 lambda!336907)))

(declare-fun bs!1530727 () Bool)

(assert (= bs!1530727 (and d!1934853 d!1934765)))

(assert (=> bs!1530727 (= lambda!336932 lambda!336924)))

(declare-fun bs!1530728 () Bool)

(assert (= bs!1530728 (and d!1934853 d!1934621)))

(assert (=> bs!1530728 (= lambda!336932 lambda!336903)))

(assert (=> d!1934853 (= (nullableZipper!1892 ((_ map or) lt!2337296 lt!2337288)) (exists!2455 ((_ map or) lt!2337296 lt!2337288) lambda!336932))))

(declare-fun bs!1530729 () Bool)

(assert (= bs!1530729 d!1934853))

(declare-fun m!7009378 () Bool)

(assert (=> bs!1530729 m!7009378))

(assert (=> b!6171760 d!1934853))

(assert (=> d!1934537 d!1934643))

(assert (=> d!1934385 d!1934391))

(assert (=> d!1934385 d!1934537))

(declare-fun e!3760234 () Bool)

(declare-fun d!1934855 () Bool)

(assert (=> d!1934855 (= (matchZipper!2123 ((_ map or) lt!2337296 lt!2337288) (t!378136 s!2326)) e!3760234)))

(declare-fun res!2555016 () Bool)

(assert (=> d!1934855 (=> res!2555016 e!3760234)))

(assert (=> d!1934855 (= res!2555016 (matchZipper!2123 lt!2337296 (t!378136 s!2326)))))

(assert (=> d!1934855 true))

(declare-fun _$48!1770 () Unit!157667)

(assert (=> d!1934855 (= (choose!45870 lt!2337296 lt!2337288 (t!378136 s!2326)) _$48!1770)))

(declare-fun b!6172891 () Bool)

(assert (=> b!6172891 (= e!3760234 (matchZipper!2123 lt!2337288 (t!378136 s!2326)))))

(assert (= (and d!1934855 (not res!2555016)) b!6172891))

(assert (=> d!1934855 m!7008018))

(assert (=> d!1934855 m!7007960))

(assert (=> b!6172891 m!7007948))

(assert (=> d!1934385 d!1934855))

(declare-fun d!1934857 () Bool)

(declare-fun res!2555020 () Bool)

(declare-fun e!3760238 () Bool)

(assert (=> d!1934857 (=> res!2555020 e!3760238)))

(assert (=> d!1934857 (= res!2555020 ((_ is EmptyExpr!16111) (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(assert (=> d!1934857 (= (nullableFct!2068 (h!70956 (exprs!5995 (h!70957 zl!343)))) e!3760238)))

(declare-fun b!6172892 () Bool)

(declare-fun e!3760239 () Bool)

(declare-fun call!515008 () Bool)

(assert (=> b!6172892 (= e!3760239 call!515008)))

(declare-fun b!6172893 () Bool)

(declare-fun e!3760235 () Bool)

(declare-fun e!3760237 () Bool)

(assert (=> b!6172893 (= e!3760235 e!3760237)))

(declare-fun res!2555021 () Bool)

(assert (=> b!6172893 (=> res!2555021 e!3760237)))

(assert (=> b!6172893 (= res!2555021 ((_ is Star!16111) (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun bm!515003 () Bool)

(declare-fun c!1112519 () Bool)

(assert (=> bm!515003 (= call!515008 (nullable!6104 (ite c!1112519 (regTwo!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regTwo!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))))))))

(declare-fun b!6172894 () Bool)

(declare-fun e!3760236 () Bool)

(declare-fun e!3760240 () Bool)

(assert (=> b!6172894 (= e!3760236 e!3760240)))

(declare-fun res!2555017 () Bool)

(declare-fun call!515009 () Bool)

(assert (=> b!6172894 (= res!2555017 call!515009)))

(assert (=> b!6172894 (=> (not res!2555017) (not e!3760240))))

(declare-fun b!6172895 () Bool)

(assert (=> b!6172895 (= e!3760240 call!515008)))

(declare-fun b!6172896 () Bool)

(assert (=> b!6172896 (= e!3760237 e!3760236)))

(assert (=> b!6172896 (= c!1112519 ((_ is Union!16111) (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun b!6172897 () Bool)

(assert (=> b!6172897 (= e!3760236 e!3760239)))

(declare-fun res!2555018 () Bool)

(assert (=> b!6172897 (= res!2555018 call!515009)))

(assert (=> b!6172897 (=> res!2555018 e!3760239)))

(declare-fun bm!515004 () Bool)

(assert (=> bm!515004 (= call!515009 (nullable!6104 (ite c!1112519 (regOne!32735 (h!70956 (exprs!5995 (h!70957 zl!343)))) (regOne!32734 (h!70956 (exprs!5995 (h!70957 zl!343)))))))))

(declare-fun b!6172898 () Bool)

(assert (=> b!6172898 (= e!3760238 e!3760235)))

(declare-fun res!2555019 () Bool)

(assert (=> b!6172898 (=> (not res!2555019) (not e!3760235))))

(assert (=> b!6172898 (= res!2555019 (and (not ((_ is EmptyLang!16111) (h!70956 (exprs!5995 (h!70957 zl!343))))) (not ((_ is ElementMatch!16111) (h!70956 (exprs!5995 (h!70957 zl!343)))))))))

(assert (= (and d!1934857 (not res!2555020)) b!6172898))

(assert (= (and b!6172898 res!2555019) b!6172893))

(assert (= (and b!6172893 (not res!2555021)) b!6172896))

(assert (= (and b!6172896 c!1112519) b!6172897))

(assert (= (and b!6172896 (not c!1112519)) b!6172894))

(assert (= (and b!6172897 (not res!2555018)) b!6172892))

(assert (= (and b!6172894 res!2555017) b!6172895))

(assert (= (or b!6172892 b!6172895) bm!515003))

(assert (= (or b!6172897 b!6172894) bm!515004))

(declare-fun m!7009380 () Bool)

(assert (=> bm!515003 m!7009380))

(declare-fun m!7009382 () Bool)

(assert (=> bm!515004 m!7009382))

(assert (=> d!1934507 d!1934857))

(declare-fun bs!1530730 () Bool)

(declare-fun d!1934859 () Bool)

(assert (= bs!1530730 (and d!1934859 d!1934729)))

(declare-fun lambda!336933 () Int)

(assert (=> bs!1530730 (= lambda!336933 lambda!336919)))

(declare-fun bs!1530731 () Bool)

(assert (= bs!1530731 (and d!1934859 d!1934853)))

(assert (=> bs!1530731 (= lambda!336933 lambda!336932)))

(declare-fun bs!1530732 () Bool)

(assert (= bs!1530732 (and d!1934859 d!1934745)))

(assert (=> bs!1530732 (= lambda!336933 lambda!336920)))

(declare-fun bs!1530733 () Bool)

(assert (= bs!1530733 (and d!1934859 d!1934839)))

(assert (=> bs!1530733 (= lambda!336933 lambda!336931)))

(declare-fun bs!1530734 () Bool)

(assert (= bs!1530734 (and d!1934859 d!1934583)))

(assert (=> bs!1530734 (= lambda!336933 lambda!336896)))

(declare-fun bs!1530735 () Bool)

(assert (= bs!1530735 (and d!1934859 d!1934653)))

(assert (=> bs!1530735 (= lambda!336933 lambda!336907)))

(declare-fun bs!1530736 () Bool)

(assert (= bs!1530736 (and d!1934859 d!1934765)))

(assert (=> bs!1530736 (= lambda!336933 lambda!336924)))

(declare-fun bs!1530737 () Bool)

(assert (= bs!1530737 (and d!1934859 d!1934621)))

(assert (=> bs!1530737 (= lambda!336933 lambda!336903)))

(assert (=> d!1934859 (= (nullableZipper!1892 lt!2337291) (exists!2455 lt!2337291 lambda!336933))))

(declare-fun bs!1530738 () Bool)

(assert (= bs!1530738 d!1934859))

(declare-fun m!7009384 () Bool)

(assert (=> bs!1530738 m!7009384))

(assert (=> b!6172084 d!1934859))

(declare-fun bm!515005 () Bool)

(declare-fun call!515012 () Bool)

(declare-fun call!515010 () Bool)

(assert (=> bm!515005 (= call!515012 call!515010)))

(declare-fun b!6172899 () Bool)

(declare-fun e!3760246 () Bool)

(declare-fun e!3760247 () Bool)

(assert (=> b!6172899 (= e!3760246 e!3760247)))

(declare-fun c!1112520 () Bool)

(assert (=> b!6172899 (= c!1112520 ((_ is Star!16111) (ite c!1112295 (reg!16440 lt!2337293) (ite c!1112296 (regTwo!32735 lt!2337293) (regTwo!32734 lt!2337293)))))))

(declare-fun b!6172900 () Bool)

(declare-fun res!2555023 () Bool)

(declare-fun e!3760242 () Bool)

(assert (=> b!6172900 (=> res!2555023 e!3760242)))

(assert (=> b!6172900 (= res!2555023 (not ((_ is Concat!24956) (ite c!1112295 (reg!16440 lt!2337293) (ite c!1112296 (regTwo!32735 lt!2337293) (regTwo!32734 lt!2337293))))))))

(declare-fun e!3760241 () Bool)

(assert (=> b!6172900 (= e!3760241 e!3760242)))

(declare-fun b!6172901 () Bool)

(assert (=> b!6172901 (= e!3760247 e!3760241)))

(declare-fun c!1112521 () Bool)

(assert (=> b!6172901 (= c!1112521 ((_ is Union!16111) (ite c!1112295 (reg!16440 lt!2337293) (ite c!1112296 (regTwo!32735 lt!2337293) (regTwo!32734 lt!2337293)))))))

(declare-fun b!6172902 () Bool)

(declare-fun e!3760243 () Bool)

(assert (=> b!6172902 (= e!3760243 call!515012)))

(declare-fun b!6172903 () Bool)

(declare-fun e!3760244 () Bool)

(assert (=> b!6172903 (= e!3760244 call!515010)))

(declare-fun b!6172904 () Bool)

(assert (=> b!6172904 (= e!3760242 e!3760243)))

(declare-fun res!2555025 () Bool)

(assert (=> b!6172904 (=> (not res!2555025) (not e!3760243))))

(declare-fun call!515011 () Bool)

(assert (=> b!6172904 (= res!2555025 call!515011)))

(declare-fun b!6172905 () Bool)

(declare-fun res!2555022 () Bool)

(declare-fun e!3760245 () Bool)

(assert (=> b!6172905 (=> (not res!2555022) (not e!3760245))))

(assert (=> b!6172905 (= res!2555022 call!515011)))

(assert (=> b!6172905 (= e!3760241 e!3760245)))

(declare-fun b!6172906 () Bool)

(assert (=> b!6172906 (= e!3760247 e!3760244)))

(declare-fun res!2555024 () Bool)

(assert (=> b!6172906 (= res!2555024 (not (nullable!6104 (reg!16440 (ite c!1112295 (reg!16440 lt!2337293) (ite c!1112296 (regTwo!32735 lt!2337293) (regTwo!32734 lt!2337293)))))))))

(assert (=> b!6172906 (=> (not res!2555024) (not e!3760244))))

(declare-fun bm!515007 () Bool)

(assert (=> bm!515007 (= call!515010 (validRegex!7847 (ite c!1112520 (reg!16440 (ite c!1112295 (reg!16440 lt!2337293) (ite c!1112296 (regTwo!32735 lt!2337293) (regTwo!32734 lt!2337293)))) (ite c!1112521 (regTwo!32735 (ite c!1112295 (reg!16440 lt!2337293) (ite c!1112296 (regTwo!32735 lt!2337293) (regTwo!32734 lt!2337293)))) (regTwo!32734 (ite c!1112295 (reg!16440 lt!2337293) (ite c!1112296 (regTwo!32735 lt!2337293) (regTwo!32734 lt!2337293))))))))))

(declare-fun b!6172907 () Bool)

(assert (=> b!6172907 (= e!3760245 call!515012)))

(declare-fun bm!515006 () Bool)

(assert (=> bm!515006 (= call!515011 (validRegex!7847 (ite c!1112521 (regOne!32735 (ite c!1112295 (reg!16440 lt!2337293) (ite c!1112296 (regTwo!32735 lt!2337293) (regTwo!32734 lt!2337293)))) (regOne!32734 (ite c!1112295 (reg!16440 lt!2337293) (ite c!1112296 (regTwo!32735 lt!2337293) (regTwo!32734 lt!2337293)))))))))

(declare-fun d!1934861 () Bool)

(declare-fun res!2555026 () Bool)

(assert (=> d!1934861 (=> res!2555026 e!3760246)))

(assert (=> d!1934861 (= res!2555026 ((_ is ElementMatch!16111) (ite c!1112295 (reg!16440 lt!2337293) (ite c!1112296 (regTwo!32735 lt!2337293) (regTwo!32734 lt!2337293)))))))

(assert (=> d!1934861 (= (validRegex!7847 (ite c!1112295 (reg!16440 lt!2337293) (ite c!1112296 (regTwo!32735 lt!2337293) (regTwo!32734 lt!2337293)))) e!3760246)))

(assert (= (and d!1934861 (not res!2555026)) b!6172899))

(assert (= (and b!6172899 c!1112520) b!6172906))

(assert (= (and b!6172899 (not c!1112520)) b!6172901))

(assert (= (and b!6172906 res!2555024) b!6172903))

(assert (= (and b!6172901 c!1112521) b!6172905))

(assert (= (and b!6172901 (not c!1112521)) b!6172900))

(assert (= (and b!6172905 res!2555022) b!6172907))

(assert (= (and b!6172900 (not res!2555023)) b!6172904))

(assert (= (and b!6172904 res!2555025) b!6172902))

(assert (= (or b!6172907 b!6172902) bm!515005))

(assert (= (or b!6172905 b!6172904) bm!515006))

(assert (= (or b!6172903 bm!515005) bm!515007))

(declare-fun m!7009386 () Bool)

(assert (=> b!6172906 m!7009386))

(declare-fun m!7009388 () Bool)

(assert (=> bm!515007 m!7009388))

(declare-fun m!7009390 () Bool)

(assert (=> bm!515006 m!7009390))

(assert (=> bm!514866 d!1934861))

(declare-fun d!1934863 () Bool)

(declare-fun c!1112522 () Bool)

(assert (=> d!1934863 (= c!1112522 (isEmpty!36488 (tail!11827 (t!378136 s!2326))))))

(declare-fun e!3760248 () Bool)

(assert (=> d!1934863 (= (matchZipper!2123 (derivationStepZipper!2084 lt!2337296 (head!12742 (t!378136 s!2326))) (tail!11827 (t!378136 s!2326))) e!3760248)))

(declare-fun b!6172908 () Bool)

(assert (=> b!6172908 (= e!3760248 (nullableZipper!1892 (derivationStepZipper!2084 lt!2337296 (head!12742 (t!378136 s!2326)))))))

(declare-fun b!6172909 () Bool)

(assert (=> b!6172909 (= e!3760248 (matchZipper!2123 (derivationStepZipper!2084 (derivationStepZipper!2084 lt!2337296 (head!12742 (t!378136 s!2326))) (head!12742 (tail!11827 (t!378136 s!2326)))) (tail!11827 (tail!11827 (t!378136 s!2326)))))))

(assert (= (and d!1934863 c!1112522) b!6172908))

(assert (= (and d!1934863 (not c!1112522)) b!6172909))

(assert (=> d!1934863 m!7008080))

(assert (=> d!1934863 m!7008798))

(assert (=> b!6172908 m!7008702))

(declare-fun m!7009392 () Bool)

(assert (=> b!6172908 m!7009392))

(assert (=> b!6172909 m!7008080))

(assert (=> b!6172909 m!7008802))

(assert (=> b!6172909 m!7008702))

(assert (=> b!6172909 m!7008802))

(declare-fun m!7009394 () Bool)

(assert (=> b!6172909 m!7009394))

(assert (=> b!6172909 m!7008080))

(assert (=> b!6172909 m!7008806))

(assert (=> b!6172909 m!7009394))

(assert (=> b!6172909 m!7008806))

(declare-fun m!7009396 () Bool)

(assert (=> b!6172909 m!7009396))

(assert (=> b!6172277 d!1934863))

(declare-fun bs!1530739 () Bool)

(declare-fun d!1934865 () Bool)

(assert (= bs!1530739 (and d!1934865 d!1934701)))

(declare-fun lambda!336934 () Int)

(assert (=> bs!1530739 (= lambda!336934 lambda!336912)))

(declare-fun bs!1530740 () Bool)

(assert (= bs!1530740 (and d!1934865 d!1934577)))

(assert (=> bs!1530740 (= lambda!336934 lambda!336893)))

(declare-fun bs!1530741 () Bool)

(assert (= bs!1530741 (and d!1934865 d!1934779)))

(assert (=> bs!1530741 (= (= (head!12742 (t!378136 s!2326)) (head!12742 s!2326)) (= lambda!336934 lambda!336925))))

(declare-fun bs!1530742 () Bool)

(assert (= bs!1530742 (and d!1934865 d!1934813)))

(assert (=> bs!1530742 (= (= (head!12742 (t!378136 s!2326)) (head!12742 s!2326)) (= lambda!336934 lambda!336929))))

(declare-fun bs!1530743 () Bool)

(assert (= bs!1530743 (and d!1934865 d!1934691)))

(assert (=> bs!1530743 (= lambda!336934 lambda!336911)))

(declare-fun bs!1530744 () Bool)

(assert (= bs!1530744 (and d!1934865 d!1934829)))

(assert (=> bs!1530744 (= lambda!336934 lambda!336930)))

(declare-fun bs!1530745 () Bool)

(assert (= bs!1530745 (and d!1934865 d!1934763)))

(assert (=> bs!1530745 (= lambda!336934 lambda!336923)))

(declare-fun bs!1530746 () Bool)

(assert (= bs!1530746 (and d!1934865 d!1934755)))

(assert (=> bs!1530746 (= lambda!336934 lambda!336921)))

(declare-fun bs!1530747 () Bool)

(assert (= bs!1530747 (and d!1934865 b!6171493)))

(assert (=> bs!1530747 (= (= (head!12742 (t!378136 s!2326)) (h!70958 s!2326)) (= lambda!336934 lambda!336831))))

(declare-fun bs!1530748 () Bool)

(assert (= bs!1530748 (and d!1934865 d!1934797)))

(assert (=> bs!1530748 (= (= (head!12742 (t!378136 s!2326)) (head!12742 s!2326)) (= lambda!336934 lambda!336926))))

(declare-fun bs!1530749 () Bool)

(assert (= bs!1530749 (and d!1934865 d!1934667)))

(assert (=> bs!1530749 (= lambda!336934 lambda!336908)))

(assert (=> d!1934865 true))

(assert (=> d!1934865 (= (derivationStepZipper!2084 lt!2337296 (head!12742 (t!378136 s!2326))) (flatMap!1616 lt!2337296 lambda!336934))))

(declare-fun bs!1530750 () Bool)

(assert (= bs!1530750 d!1934865))

(declare-fun m!7009398 () Bool)

(assert (=> bs!1530750 m!7009398))

(assert (=> b!6172277 d!1934865))

(assert (=> b!6172277 d!1934579))

(assert (=> b!6172277 d!1934581))

(declare-fun b!6172910 () Bool)

(declare-fun e!3760253 () Bool)

(assert (=> b!6172910 (= e!3760253 (nullable!6104 (regOne!32734 (h!70956 (exprs!5995 lt!2337309)))))))

(declare-fun b!6172911 () Bool)

(declare-fun c!1112526 () Bool)

(assert (=> b!6172911 (= c!1112526 ((_ is Star!16111) (h!70956 (exprs!5995 lt!2337309))))))

(declare-fun e!3760254 () (InoxSet Context!10990))

(declare-fun e!3760251 () (InoxSet Context!10990))

(assert (=> b!6172911 (= e!3760254 e!3760251)))

(declare-fun c!1112525 () Bool)

(declare-fun bm!515008 () Bool)

(declare-fun call!515015 () (InoxSet Context!10990))

(declare-fun c!1112523 () Bool)

(declare-fun c!1112527 () Bool)

(declare-fun call!515016 () List!64632)

(assert (=> bm!515008 (= call!515015 (derivationStepZipperDown!1359 (ite c!1112527 (regTwo!32735 (h!70956 (exprs!5995 lt!2337309))) (ite c!1112523 (regTwo!32734 (h!70956 (exprs!5995 lt!2337309))) (ite c!1112525 (regOne!32734 (h!70956 (exprs!5995 lt!2337309))) (reg!16440 (h!70956 (exprs!5995 lt!2337309)))))) (ite (or c!1112527 c!1112523) (Context!10991 (t!378134 (exprs!5995 lt!2337309))) (Context!10991 call!515016)) (h!70958 s!2326)))))

(declare-fun b!6172912 () Bool)

(declare-fun call!515014 () (InoxSet Context!10990))

(assert (=> b!6172912 (= e!3760251 call!515014)))

(declare-fun b!6172913 () Bool)

(declare-fun e!3760252 () (InoxSet Context!10990))

(assert (=> b!6172913 (= e!3760252 e!3760254)))

(assert (=> b!6172913 (= c!1112525 ((_ is Concat!24956) (h!70956 (exprs!5995 lt!2337309))))))

(declare-fun bm!515009 () Bool)

(declare-fun call!515013 () List!64632)

(assert (=> bm!515009 (= call!515016 call!515013)))

(declare-fun d!1934867 () Bool)

(declare-fun c!1112524 () Bool)

(assert (=> d!1934867 (= c!1112524 (and ((_ is ElementMatch!16111) (h!70956 (exprs!5995 lt!2337309))) (= (c!1112104 (h!70956 (exprs!5995 lt!2337309))) (h!70958 s!2326))))))

(declare-fun e!3760250 () (InoxSet Context!10990))

(assert (=> d!1934867 (= (derivationStepZipperDown!1359 (h!70956 (exprs!5995 lt!2337309)) (Context!10991 (t!378134 (exprs!5995 lt!2337309))) (h!70958 s!2326)) e!3760250)))

(declare-fun bm!515010 () Bool)

(assert (=> bm!515010 (= call!515013 ($colon$colon!1988 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337309)))) (ite (or c!1112523 c!1112525) (regTwo!32734 (h!70956 (exprs!5995 lt!2337309))) (h!70956 (exprs!5995 lt!2337309)))))))

(declare-fun b!6172914 () Bool)

(assert (=> b!6172914 (= e!3760250 (store ((as const (Array Context!10990 Bool)) false) (Context!10991 (t!378134 (exprs!5995 lt!2337309))) true))))

(declare-fun b!6172915 () Bool)

(declare-fun e!3760249 () (InoxSet Context!10990))

(declare-fun call!515017 () (InoxSet Context!10990))

(assert (=> b!6172915 (= e!3760249 ((_ map or) call!515017 call!515015))))

(declare-fun bm!515011 () Bool)

(declare-fun call!515018 () (InoxSet Context!10990))

(assert (=> bm!515011 (= call!515014 call!515018)))

(declare-fun bm!515012 () Bool)

(assert (=> bm!515012 (= call!515018 call!515015)))

(declare-fun b!6172916 () Bool)

(assert (=> b!6172916 (= e!3760254 call!515014)))

(declare-fun bm!515013 () Bool)

(assert (=> bm!515013 (= call!515017 (derivationStepZipperDown!1359 (ite c!1112527 (regOne!32735 (h!70956 (exprs!5995 lt!2337309))) (regOne!32734 (h!70956 (exprs!5995 lt!2337309)))) (ite c!1112527 (Context!10991 (t!378134 (exprs!5995 lt!2337309))) (Context!10991 call!515013)) (h!70958 s!2326)))))

(declare-fun b!6172917 () Bool)

(assert (=> b!6172917 (= e!3760251 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172918 () Bool)

(assert (=> b!6172918 (= c!1112523 e!3760253)))

(declare-fun res!2555027 () Bool)

(assert (=> b!6172918 (=> (not res!2555027) (not e!3760253))))

(assert (=> b!6172918 (= res!2555027 ((_ is Concat!24956) (h!70956 (exprs!5995 lt!2337309))))))

(assert (=> b!6172918 (= e!3760249 e!3760252)))

(declare-fun b!6172919 () Bool)

(assert (=> b!6172919 (= e!3760250 e!3760249)))

(assert (=> b!6172919 (= c!1112527 ((_ is Union!16111) (h!70956 (exprs!5995 lt!2337309))))))

(declare-fun b!6172920 () Bool)

(assert (=> b!6172920 (= e!3760252 ((_ map or) call!515017 call!515018))))

(assert (= (and d!1934867 c!1112524) b!6172914))

(assert (= (and d!1934867 (not c!1112524)) b!6172919))

(assert (= (and b!6172919 c!1112527) b!6172915))

(assert (= (and b!6172919 (not c!1112527)) b!6172918))

(assert (= (and b!6172918 res!2555027) b!6172910))

(assert (= (and b!6172918 c!1112523) b!6172920))

(assert (= (and b!6172918 (not c!1112523)) b!6172913))

(assert (= (and b!6172913 c!1112525) b!6172916))

(assert (= (and b!6172913 (not c!1112525)) b!6172911))

(assert (= (and b!6172911 c!1112526) b!6172912))

(assert (= (and b!6172911 (not c!1112526)) b!6172917))

(assert (= (or b!6172916 b!6172912) bm!515009))

(assert (= (or b!6172916 b!6172912) bm!515011))

(assert (= (or b!6172920 bm!515009) bm!515010))

(assert (= (or b!6172920 bm!515011) bm!515012))

(assert (= (or b!6172915 bm!515012) bm!515008))

(assert (= (or b!6172915 b!6172920) bm!515013))

(declare-fun m!7009400 () Bool)

(assert (=> b!6172914 m!7009400))

(declare-fun m!7009402 () Bool)

(assert (=> bm!515010 m!7009402))

(declare-fun m!7009404 () Bool)

(assert (=> bm!515013 m!7009404))

(declare-fun m!7009406 () Bool)

(assert (=> bm!515008 m!7009406))

(declare-fun m!7009408 () Bool)

(assert (=> b!6172910 m!7009408))

(assert (=> bm!514784 d!1934867))

(assert (=> d!1934349 d!1934643))

(declare-fun b!6172921 () Bool)

(declare-fun e!3760259 () Bool)

(assert (=> b!6172921 (= e!3760259 (nullable!6104 (regOne!32734 (h!70956 (exprs!5995 lt!2337313)))))))

(declare-fun b!6172922 () Bool)

(declare-fun c!1112531 () Bool)

(assert (=> b!6172922 (= c!1112531 ((_ is Star!16111) (h!70956 (exprs!5995 lt!2337313))))))

(declare-fun e!3760260 () (InoxSet Context!10990))

(declare-fun e!3760257 () (InoxSet Context!10990))

(assert (=> b!6172922 (= e!3760260 e!3760257)))

(declare-fun c!1112528 () Bool)

(declare-fun call!515021 () (InoxSet Context!10990))

(declare-fun c!1112530 () Bool)

(declare-fun bm!515014 () Bool)

(declare-fun call!515022 () List!64632)

(declare-fun c!1112532 () Bool)

(assert (=> bm!515014 (= call!515021 (derivationStepZipperDown!1359 (ite c!1112532 (regTwo!32735 (h!70956 (exprs!5995 lt!2337313))) (ite c!1112528 (regTwo!32734 (h!70956 (exprs!5995 lt!2337313))) (ite c!1112530 (regOne!32734 (h!70956 (exprs!5995 lt!2337313))) (reg!16440 (h!70956 (exprs!5995 lt!2337313)))))) (ite (or c!1112532 c!1112528) (Context!10991 (t!378134 (exprs!5995 lt!2337313))) (Context!10991 call!515022)) (h!70958 s!2326)))))

(declare-fun b!6172923 () Bool)

(declare-fun call!515020 () (InoxSet Context!10990))

(assert (=> b!6172923 (= e!3760257 call!515020)))

(declare-fun b!6172924 () Bool)

(declare-fun e!3760258 () (InoxSet Context!10990))

(assert (=> b!6172924 (= e!3760258 e!3760260)))

(assert (=> b!6172924 (= c!1112530 ((_ is Concat!24956) (h!70956 (exprs!5995 lt!2337313))))))

(declare-fun bm!515015 () Bool)

(declare-fun call!515019 () List!64632)

(assert (=> bm!515015 (= call!515022 call!515019)))

(declare-fun d!1934869 () Bool)

(declare-fun c!1112529 () Bool)

(assert (=> d!1934869 (= c!1112529 (and ((_ is ElementMatch!16111) (h!70956 (exprs!5995 lt!2337313))) (= (c!1112104 (h!70956 (exprs!5995 lt!2337313))) (h!70958 s!2326))))))

(declare-fun e!3760256 () (InoxSet Context!10990))

(assert (=> d!1934869 (= (derivationStepZipperDown!1359 (h!70956 (exprs!5995 lt!2337313)) (Context!10991 (t!378134 (exprs!5995 lt!2337313))) (h!70958 s!2326)) e!3760256)))

(declare-fun bm!515016 () Bool)

(assert (=> bm!515016 (= call!515019 ($colon$colon!1988 (exprs!5995 (Context!10991 (t!378134 (exprs!5995 lt!2337313)))) (ite (or c!1112528 c!1112530) (regTwo!32734 (h!70956 (exprs!5995 lt!2337313))) (h!70956 (exprs!5995 lt!2337313)))))))

(declare-fun b!6172925 () Bool)

(assert (=> b!6172925 (= e!3760256 (store ((as const (Array Context!10990 Bool)) false) (Context!10991 (t!378134 (exprs!5995 lt!2337313))) true))))

(declare-fun b!6172926 () Bool)

(declare-fun e!3760255 () (InoxSet Context!10990))

(declare-fun call!515023 () (InoxSet Context!10990))

(assert (=> b!6172926 (= e!3760255 ((_ map or) call!515023 call!515021))))

(declare-fun bm!515017 () Bool)

(declare-fun call!515024 () (InoxSet Context!10990))

(assert (=> bm!515017 (= call!515020 call!515024)))

(declare-fun bm!515018 () Bool)

(assert (=> bm!515018 (= call!515024 call!515021)))

(declare-fun b!6172927 () Bool)

(assert (=> b!6172927 (= e!3760260 call!515020)))

(declare-fun bm!515019 () Bool)

(assert (=> bm!515019 (= call!515023 (derivationStepZipperDown!1359 (ite c!1112532 (regOne!32735 (h!70956 (exprs!5995 lt!2337313))) (regOne!32734 (h!70956 (exprs!5995 lt!2337313)))) (ite c!1112532 (Context!10991 (t!378134 (exprs!5995 lt!2337313))) (Context!10991 call!515019)) (h!70958 s!2326)))))

(declare-fun b!6172928 () Bool)

(assert (=> b!6172928 (= e!3760257 ((as const (Array Context!10990 Bool)) false))))

(declare-fun b!6172929 () Bool)

(assert (=> b!6172929 (= c!1112528 e!3760259)))

(declare-fun res!2555028 () Bool)

(assert (=> b!6172929 (=> (not res!2555028) (not e!3760259))))

(assert (=> b!6172929 (= res!2555028 ((_ is Concat!24956) (h!70956 (exprs!5995 lt!2337313))))))

(assert (=> b!6172929 (= e!3760255 e!3760258)))

(declare-fun b!6172930 () Bool)

(assert (=> b!6172930 (= e!3760256 e!3760255)))

(assert (=> b!6172930 (= c!1112532 ((_ is Union!16111) (h!70956 (exprs!5995 lt!2337313))))))

(declare-fun b!6172931 () Bool)

(assert (=> b!6172931 (= e!3760258 ((_ map or) call!515023 call!515024))))

(assert (= (and d!1934869 c!1112529) b!6172925))

(assert (= (and d!1934869 (not c!1112529)) b!6172930))

(assert (= (and b!6172930 c!1112532) b!6172926))

(assert (= (and b!6172930 (not c!1112532)) b!6172929))

(assert (= (and b!6172929 res!2555028) b!6172921))

(assert (= (and b!6172929 c!1112528) b!6172931))

(assert (= (and b!6172929 (not c!1112528)) b!6172924))

(assert (= (and b!6172924 c!1112530) b!6172927))

(assert (= (and b!6172924 (not c!1112530)) b!6172922))

(assert (= (and b!6172922 c!1112531) b!6172923))

(assert (= (and b!6172922 (not c!1112531)) b!6172928))

(assert (= (or b!6172927 b!6172923) bm!515015))

(assert (= (or b!6172927 b!6172923) bm!515017))

(assert (= (or b!6172931 bm!515015) bm!515016))

(assert (= (or b!6172931 bm!515017) bm!515018))

(assert (= (or b!6172926 bm!515018) bm!515014))

(assert (= (or b!6172926 b!6172931) bm!515019))

(declare-fun m!7009410 () Bool)

(assert (=> b!6172925 m!7009410))

(declare-fun m!7009412 () Bool)

(assert (=> bm!515016 m!7009412))

(declare-fun m!7009414 () Bool)

(assert (=> bm!515019 m!7009414))

(declare-fun m!7009416 () Bool)

(assert (=> bm!515014 m!7009416))

(declare-fun m!7009418 () Bool)

(assert (=> b!6172921 m!7009418))

(assert (=> bm!514863 d!1934869))

(declare-fun bs!1530751 () Bool)

(declare-fun d!1934871 () Bool)

(assert (= bs!1530751 (and d!1934871 d!1934729)))

(declare-fun lambda!336935 () Int)

(assert (=> bs!1530751 (= lambda!336935 lambda!336919)))

(declare-fun bs!1530752 () Bool)

(assert (= bs!1530752 (and d!1934871 d!1934859)))

(assert (=> bs!1530752 (= lambda!336935 lambda!336933)))

(declare-fun bs!1530753 () Bool)

(assert (= bs!1530753 (and d!1934871 d!1934853)))

(assert (=> bs!1530753 (= lambda!336935 lambda!336932)))

(declare-fun bs!1530754 () Bool)

(assert (= bs!1530754 (and d!1934871 d!1934745)))

(assert (=> bs!1530754 (= lambda!336935 lambda!336920)))

(declare-fun bs!1530755 () Bool)

(assert (= bs!1530755 (and d!1934871 d!1934839)))

(assert (=> bs!1530755 (= lambda!336935 lambda!336931)))

(declare-fun bs!1530756 () Bool)

(assert (= bs!1530756 (and d!1934871 d!1934583)))

(assert (=> bs!1530756 (= lambda!336935 lambda!336896)))

(declare-fun bs!1530757 () Bool)

(assert (= bs!1530757 (and d!1934871 d!1934653)))

(assert (=> bs!1530757 (= lambda!336935 lambda!336907)))

(declare-fun bs!1530758 () Bool)

(assert (= bs!1530758 (and d!1934871 d!1934765)))

(assert (=> bs!1530758 (= lambda!336935 lambda!336924)))

(declare-fun bs!1530759 () Bool)

(assert (= bs!1530759 (and d!1934871 d!1934621)))

(assert (=> bs!1530759 (= lambda!336935 lambda!336903)))

(assert (=> d!1934871 (= (nullableZipper!1892 z!1189) (exists!2455 z!1189 lambda!336935))))

(declare-fun bs!1530760 () Bool)

(assert (= bs!1530760 d!1934871))

(declare-fun m!7009420 () Bool)

(assert (=> bs!1530760 m!7009420))

(assert (=> b!6171602 d!1934871))

(declare-fun d!1934873 () Bool)

(assert (=> d!1934873 (= (isConcat!1050 lt!2337358) ((_ is Concat!24956) lt!2337358))))

(assert (=> b!6171746 d!1934873))

(declare-fun bs!1530761 () Bool)

(declare-fun d!1934875 () Bool)

(assert (= bs!1530761 (and d!1934875 d!1934729)))

(declare-fun lambda!336936 () Int)

(assert (=> bs!1530761 (= lambda!336936 lambda!336919)))

(declare-fun bs!1530762 () Bool)

(assert (= bs!1530762 (and d!1934875 d!1934859)))

(assert (=> bs!1530762 (= lambda!336936 lambda!336933)))

(declare-fun bs!1530763 () Bool)

(assert (= bs!1530763 (and d!1934875 d!1934745)))

(assert (=> bs!1530763 (= lambda!336936 lambda!336920)))

(declare-fun bs!1530764 () Bool)

(assert (= bs!1530764 (and d!1934875 d!1934839)))

(assert (=> bs!1530764 (= lambda!336936 lambda!336931)))

(declare-fun bs!1530765 () Bool)

(assert (= bs!1530765 (and d!1934875 d!1934583)))

(assert (=> bs!1530765 (= lambda!336936 lambda!336896)))

(declare-fun bs!1530766 () Bool)

(assert (= bs!1530766 (and d!1934875 d!1934653)))

(assert (=> bs!1530766 (= lambda!336936 lambda!336907)))

(declare-fun bs!1530767 () Bool)

(assert (= bs!1530767 (and d!1934875 d!1934871)))

(assert (=> bs!1530767 (= lambda!336936 lambda!336935)))

(declare-fun bs!1530768 () Bool)

(assert (= bs!1530768 (and d!1934875 d!1934853)))

(assert (=> bs!1530768 (= lambda!336936 lambda!336932)))

(declare-fun bs!1530769 () Bool)

(assert (= bs!1530769 (and d!1934875 d!1934765)))

(assert (=> bs!1530769 (= lambda!336936 lambda!336924)))

(declare-fun bs!1530770 () Bool)

(assert (= bs!1530770 (and d!1934875 d!1934621)))

(assert (=> bs!1530770 (= lambda!336936 lambda!336903)))

(assert (=> d!1934875 (= (nullableZipper!1892 lt!2337307) (exists!2455 lt!2337307 lambda!336936))))

(declare-fun bs!1530771 () Bool)

(assert (= bs!1530771 d!1934875))

(declare-fun m!7009422 () Bool)

(assert (=> bs!1530771 m!7009422))

(assert (=> b!6171664 d!1934875))

(declare-fun d!1934877 () Bool)

(declare-fun res!2555029 () Bool)

(declare-fun e!3760261 () Bool)

(assert (=> d!1934877 (=> res!2555029 e!3760261)))

(assert (=> d!1934877 (= res!2555029 ((_ is Nil!64508) (exprs!5995 setElem!41834)))))

(assert (=> d!1934877 (= (forall!15231 (exprs!5995 setElem!41834) lambda!336889) e!3760261)))

(declare-fun b!6172932 () Bool)

(declare-fun e!3760262 () Bool)

(assert (=> b!6172932 (= e!3760261 e!3760262)))

(declare-fun res!2555030 () Bool)

(assert (=> b!6172932 (=> (not res!2555030) (not e!3760262))))

(assert (=> b!6172932 (= res!2555030 (dynLambda!25440 lambda!336889 (h!70956 (exprs!5995 setElem!41834))))))

(declare-fun b!6172933 () Bool)

(assert (=> b!6172933 (= e!3760262 (forall!15231 (t!378134 (exprs!5995 setElem!41834)) lambda!336889))))

(assert (= (and d!1934877 (not res!2555029)) b!6172932))

(assert (= (and b!6172932 res!2555030) b!6172933))

(declare-fun b_lambda!234941 () Bool)

(assert (=> (not b_lambda!234941) (not b!6172932)))

(declare-fun m!7009424 () Bool)

(assert (=> b!6172932 m!7009424))

(declare-fun m!7009426 () Bool)

(assert (=> b!6172933 m!7009426))

(assert (=> d!1934543 d!1934877))

(declare-fun d!1934879 () Bool)

(assert (=> d!1934879 (= (isEmpty!36485 (tail!11828 (unfocusZipperList!1532 zl!343))) ((_ is Nil!64508) (tail!11828 (unfocusZipperList!1532 zl!343))))))

(assert (=> b!6172263 d!1934879))

(declare-fun d!1934881 () Bool)

(assert (=> d!1934881 (= (tail!11828 (unfocusZipperList!1532 zl!343)) (t!378134 (unfocusZipperList!1532 zl!343)))))

(assert (=> b!6172263 d!1934881))

(assert (=> b!6171753 d!1934343))

(declare-fun d!1934883 () Bool)

(assert (=> d!1934883 (= (isEmpty!36485 (tail!11828 lt!2337305)) ((_ is Nil!64508) (tail!11828 lt!2337305)))))

(assert (=> b!6172145 d!1934883))

(declare-fun d!1934885 () Bool)

(assert (=> d!1934885 (= (tail!11828 lt!2337305) (t!378134 lt!2337305))))

(assert (=> b!6172145 d!1934885))

(declare-fun b!6172934 () Bool)

(declare-fun e!3760263 () Bool)

(declare-fun tp!1723385 () Bool)

(assert (=> b!6172934 (= e!3760263 (and tp_is_empty!41475 tp!1723385))))

(assert (=> b!6172336 (= tp!1723338 e!3760263)))

(assert (= (and b!6172336 ((_ is Cons!64510) (t!378136 (t!378136 s!2326)))) b!6172934))

(declare-fun e!3760264 () Bool)

(assert (=> b!6172316 (= tp!1723319 e!3760264)))

(declare-fun b!6172937 () Bool)

(declare-fun tp!1723389 () Bool)

(assert (=> b!6172937 (= e!3760264 tp!1723389)))

(declare-fun b!6172936 () Bool)

(declare-fun tp!1723386 () Bool)

(declare-fun tp!1723390 () Bool)

(assert (=> b!6172936 (= e!3760264 (and tp!1723386 tp!1723390))))

(declare-fun b!6172938 () Bool)

(declare-fun tp!1723387 () Bool)

(declare-fun tp!1723388 () Bool)

(assert (=> b!6172938 (= e!3760264 (and tp!1723387 tp!1723388))))

(declare-fun b!6172935 () Bool)

(assert (=> b!6172935 (= e!3760264 tp_is_empty!41475)))

(assert (= (and b!6172316 ((_ is ElementMatch!16111) (regOne!32734 (reg!16440 r!7292)))) b!6172935))

(assert (= (and b!6172316 ((_ is Concat!24956) (regOne!32734 (reg!16440 r!7292)))) b!6172936))

(assert (= (and b!6172316 ((_ is Star!16111) (regOne!32734 (reg!16440 r!7292)))) b!6172937))

(assert (= (and b!6172316 ((_ is Union!16111) (regOne!32734 (reg!16440 r!7292)))) b!6172938))

(declare-fun e!3760265 () Bool)

(assert (=> b!6172316 (= tp!1723323 e!3760265)))

(declare-fun b!6172941 () Bool)

(declare-fun tp!1723394 () Bool)

(assert (=> b!6172941 (= e!3760265 tp!1723394)))

(declare-fun b!6172940 () Bool)

(declare-fun tp!1723391 () Bool)

(declare-fun tp!1723395 () Bool)

(assert (=> b!6172940 (= e!3760265 (and tp!1723391 tp!1723395))))

(declare-fun b!6172942 () Bool)

(declare-fun tp!1723392 () Bool)

(declare-fun tp!1723393 () Bool)

(assert (=> b!6172942 (= e!3760265 (and tp!1723392 tp!1723393))))

(declare-fun b!6172939 () Bool)

(assert (=> b!6172939 (= e!3760265 tp_is_empty!41475)))

(assert (= (and b!6172316 ((_ is ElementMatch!16111) (regTwo!32734 (reg!16440 r!7292)))) b!6172939))

(assert (= (and b!6172316 ((_ is Concat!24956) (regTwo!32734 (reg!16440 r!7292)))) b!6172940))

(assert (= (and b!6172316 ((_ is Star!16111) (regTwo!32734 (reg!16440 r!7292)))) b!6172941))

(assert (= (and b!6172316 ((_ is Union!16111) (regTwo!32734 (reg!16440 r!7292)))) b!6172942))

(declare-fun e!3760266 () Bool)

(assert (=> b!6172345 (= tp!1723349 e!3760266)))

(declare-fun b!6172945 () Bool)

(declare-fun tp!1723399 () Bool)

(assert (=> b!6172945 (= e!3760266 tp!1723399)))

(declare-fun b!6172944 () Bool)

(declare-fun tp!1723396 () Bool)

(declare-fun tp!1723400 () Bool)

(assert (=> b!6172944 (= e!3760266 (and tp!1723396 tp!1723400))))

(declare-fun b!6172946 () Bool)

(declare-fun tp!1723397 () Bool)

(declare-fun tp!1723398 () Bool)

(assert (=> b!6172946 (= e!3760266 (and tp!1723397 tp!1723398))))

(declare-fun b!6172943 () Bool)

(assert (=> b!6172943 (= e!3760266 tp_is_empty!41475)))

(assert (= (and b!6172345 ((_ is ElementMatch!16111) (h!70956 (exprs!5995 setElem!41834)))) b!6172943))

(assert (= (and b!6172345 ((_ is Concat!24956) (h!70956 (exprs!5995 setElem!41834)))) b!6172944))

(assert (= (and b!6172345 ((_ is Star!16111) (h!70956 (exprs!5995 setElem!41834)))) b!6172945))

(assert (= (and b!6172345 ((_ is Union!16111) (h!70956 (exprs!5995 setElem!41834)))) b!6172946))

(declare-fun b!6172947 () Bool)

(declare-fun e!3760267 () Bool)

(declare-fun tp!1723401 () Bool)

(declare-fun tp!1723402 () Bool)

(assert (=> b!6172947 (= e!3760267 (and tp!1723401 tp!1723402))))

(assert (=> b!6172345 (= tp!1723350 e!3760267)))

(assert (= (and b!6172345 ((_ is Cons!64508) (t!378134 (exprs!5995 setElem!41834)))) b!6172947))

(declare-fun e!3760268 () Bool)

(assert (=> b!6172317 (= tp!1723322 e!3760268)))

(declare-fun b!6172950 () Bool)

(declare-fun tp!1723406 () Bool)

(assert (=> b!6172950 (= e!3760268 tp!1723406)))

(declare-fun b!6172949 () Bool)

(declare-fun tp!1723403 () Bool)

(declare-fun tp!1723407 () Bool)

(assert (=> b!6172949 (= e!3760268 (and tp!1723403 tp!1723407))))

(declare-fun b!6172951 () Bool)

(declare-fun tp!1723404 () Bool)

(declare-fun tp!1723405 () Bool)

(assert (=> b!6172951 (= e!3760268 (and tp!1723404 tp!1723405))))

(declare-fun b!6172948 () Bool)

(assert (=> b!6172948 (= e!3760268 tp_is_empty!41475)))

(assert (= (and b!6172317 ((_ is ElementMatch!16111) (reg!16440 (reg!16440 r!7292)))) b!6172948))

(assert (= (and b!6172317 ((_ is Concat!24956) (reg!16440 (reg!16440 r!7292)))) b!6172949))

(assert (= (and b!6172317 ((_ is Star!16111) (reg!16440 (reg!16440 r!7292)))) b!6172950))

(assert (= (and b!6172317 ((_ is Union!16111) (reg!16440 (reg!16440 r!7292)))) b!6172951))

(declare-fun e!3760269 () Bool)

(assert (=> b!6172318 (= tp!1723320 e!3760269)))

(declare-fun b!6172954 () Bool)

(declare-fun tp!1723411 () Bool)

(assert (=> b!6172954 (= e!3760269 tp!1723411)))

(declare-fun b!6172953 () Bool)

(declare-fun tp!1723408 () Bool)

(declare-fun tp!1723412 () Bool)

(assert (=> b!6172953 (= e!3760269 (and tp!1723408 tp!1723412))))

(declare-fun b!6172955 () Bool)

(declare-fun tp!1723409 () Bool)

(declare-fun tp!1723410 () Bool)

(assert (=> b!6172955 (= e!3760269 (and tp!1723409 tp!1723410))))

(declare-fun b!6172952 () Bool)

(assert (=> b!6172952 (= e!3760269 tp_is_empty!41475)))

(assert (= (and b!6172318 ((_ is ElementMatch!16111) (regOne!32735 (reg!16440 r!7292)))) b!6172952))

(assert (= (and b!6172318 ((_ is Concat!24956) (regOne!32735 (reg!16440 r!7292)))) b!6172953))

(assert (= (and b!6172318 ((_ is Star!16111) (regOne!32735 (reg!16440 r!7292)))) b!6172954))

(assert (= (and b!6172318 ((_ is Union!16111) (regOne!32735 (reg!16440 r!7292)))) b!6172955))

(declare-fun e!3760270 () Bool)

(assert (=> b!6172318 (= tp!1723321 e!3760270)))

(declare-fun b!6172958 () Bool)

(declare-fun tp!1723416 () Bool)

(assert (=> b!6172958 (= e!3760270 tp!1723416)))

(declare-fun b!6172957 () Bool)

(declare-fun tp!1723413 () Bool)

(declare-fun tp!1723417 () Bool)

(assert (=> b!6172957 (= e!3760270 (and tp!1723413 tp!1723417))))

(declare-fun b!6172959 () Bool)

(declare-fun tp!1723414 () Bool)

(declare-fun tp!1723415 () Bool)

(assert (=> b!6172959 (= e!3760270 (and tp!1723414 tp!1723415))))

(declare-fun b!6172956 () Bool)

(assert (=> b!6172956 (= e!3760270 tp_is_empty!41475)))

(assert (= (and b!6172318 ((_ is ElementMatch!16111) (regTwo!32735 (reg!16440 r!7292)))) b!6172956))

(assert (= (and b!6172318 ((_ is Concat!24956) (regTwo!32735 (reg!16440 r!7292)))) b!6172957))

(assert (= (and b!6172318 ((_ is Star!16111) (regTwo!32735 (reg!16440 r!7292)))) b!6172958))

(assert (= (and b!6172318 ((_ is Union!16111) (regTwo!32735 (reg!16440 r!7292)))) b!6172959))

(declare-fun e!3760271 () Bool)

(assert (=> b!6172352 (= tp!1723357 e!3760271)))

(declare-fun b!6172962 () Bool)

(declare-fun tp!1723421 () Bool)

(assert (=> b!6172962 (= e!3760271 tp!1723421)))

(declare-fun b!6172961 () Bool)

(declare-fun tp!1723418 () Bool)

(declare-fun tp!1723422 () Bool)

(assert (=> b!6172961 (= e!3760271 (and tp!1723418 tp!1723422))))

(declare-fun b!6172963 () Bool)

(declare-fun tp!1723419 () Bool)

(declare-fun tp!1723420 () Bool)

(assert (=> b!6172963 (= e!3760271 (and tp!1723419 tp!1723420))))

(declare-fun b!6172960 () Bool)

(assert (=> b!6172960 (= e!3760271 tp_is_empty!41475)))

(assert (= (and b!6172352 ((_ is ElementMatch!16111) (regOne!32734 (regOne!32734 r!7292)))) b!6172960))

(assert (= (and b!6172352 ((_ is Concat!24956) (regOne!32734 (regOne!32734 r!7292)))) b!6172961))

(assert (= (and b!6172352 ((_ is Star!16111) (regOne!32734 (regOne!32734 r!7292)))) b!6172962))

(assert (= (and b!6172352 ((_ is Union!16111) (regOne!32734 (regOne!32734 r!7292)))) b!6172963))

(declare-fun e!3760272 () Bool)

(assert (=> b!6172352 (= tp!1723361 e!3760272)))

(declare-fun b!6172966 () Bool)

(declare-fun tp!1723426 () Bool)

(assert (=> b!6172966 (= e!3760272 tp!1723426)))

(declare-fun b!6172965 () Bool)

(declare-fun tp!1723423 () Bool)

(declare-fun tp!1723427 () Bool)

(assert (=> b!6172965 (= e!3760272 (and tp!1723423 tp!1723427))))

(declare-fun b!6172967 () Bool)

(declare-fun tp!1723424 () Bool)

(declare-fun tp!1723425 () Bool)

(assert (=> b!6172967 (= e!3760272 (and tp!1723424 tp!1723425))))

(declare-fun b!6172964 () Bool)

(assert (=> b!6172964 (= e!3760272 tp_is_empty!41475)))

(assert (= (and b!6172352 ((_ is ElementMatch!16111) (regTwo!32734 (regOne!32734 r!7292)))) b!6172964))

(assert (= (and b!6172352 ((_ is Concat!24956) (regTwo!32734 (regOne!32734 r!7292)))) b!6172965))

(assert (= (and b!6172352 ((_ is Star!16111) (regTwo!32734 (regOne!32734 r!7292)))) b!6172966))

(assert (= (and b!6172352 ((_ is Union!16111) (regTwo!32734 (regOne!32734 r!7292)))) b!6172967))

(declare-fun b!6172969 () Bool)

(declare-fun e!3760274 () Bool)

(declare-fun tp!1723428 () Bool)

(assert (=> b!6172969 (= e!3760274 tp!1723428)))

(declare-fun tp!1723429 () Bool)

(declare-fun e!3760273 () Bool)

(declare-fun b!6172968 () Bool)

(assert (=> b!6172968 (= e!3760273 (and (inv!83524 (h!70957 (t!378135 (t!378135 zl!343)))) e!3760274 tp!1723429))))

(assert (=> b!6172325 (= tp!1723329 e!3760273)))

(assert (= b!6172968 b!6172969))

(assert (= (and b!6172325 ((_ is Cons!64509) (t!378135 (t!378135 zl!343)))) b!6172968))

(declare-fun m!7009428 () Bool)

(assert (=> b!6172968 m!7009428))

(declare-fun e!3760275 () Bool)

(assert (=> b!6172331 (= tp!1723334 e!3760275)))

(declare-fun b!6172972 () Bool)

(declare-fun tp!1723433 () Bool)

(assert (=> b!6172972 (= e!3760275 tp!1723433)))

(declare-fun b!6172971 () Bool)

(declare-fun tp!1723430 () Bool)

(declare-fun tp!1723434 () Bool)

(assert (=> b!6172971 (= e!3760275 (and tp!1723430 tp!1723434))))

(declare-fun b!6172973 () Bool)

(declare-fun tp!1723431 () Bool)

(declare-fun tp!1723432 () Bool)

(assert (=> b!6172973 (= e!3760275 (and tp!1723431 tp!1723432))))

(declare-fun b!6172970 () Bool)

(assert (=> b!6172970 (= e!3760275 tp_is_empty!41475)))

(assert (= (and b!6172331 ((_ is ElementMatch!16111) (h!70956 (exprs!5995 (h!70957 zl!343))))) b!6172970))

(assert (= (and b!6172331 ((_ is Concat!24956) (h!70956 (exprs!5995 (h!70957 zl!343))))) b!6172971))

(assert (= (and b!6172331 ((_ is Star!16111) (h!70956 (exprs!5995 (h!70957 zl!343))))) b!6172972))

(assert (= (and b!6172331 ((_ is Union!16111) (h!70956 (exprs!5995 (h!70957 zl!343))))) b!6172973))

(declare-fun b!6172974 () Bool)

(declare-fun e!3760276 () Bool)

(declare-fun tp!1723435 () Bool)

(declare-fun tp!1723436 () Bool)

(assert (=> b!6172974 (= e!3760276 (and tp!1723435 tp!1723436))))

(assert (=> b!6172331 (= tp!1723335 e!3760276)))

(assert (= (and b!6172331 ((_ is Cons!64508) (t!378134 (exprs!5995 (h!70957 zl!343))))) b!6172974))

(declare-fun e!3760277 () Bool)

(assert (=> b!6172353 (= tp!1723360 e!3760277)))

(declare-fun b!6172977 () Bool)

(declare-fun tp!1723440 () Bool)

(assert (=> b!6172977 (= e!3760277 tp!1723440)))

(declare-fun b!6172976 () Bool)

(declare-fun tp!1723437 () Bool)

(declare-fun tp!1723441 () Bool)

(assert (=> b!6172976 (= e!3760277 (and tp!1723437 tp!1723441))))

(declare-fun b!6172978 () Bool)

(declare-fun tp!1723438 () Bool)

(declare-fun tp!1723439 () Bool)

(assert (=> b!6172978 (= e!3760277 (and tp!1723438 tp!1723439))))

(declare-fun b!6172975 () Bool)

(assert (=> b!6172975 (= e!3760277 tp_is_empty!41475)))

(assert (= (and b!6172353 ((_ is ElementMatch!16111) (reg!16440 (regOne!32734 r!7292)))) b!6172975))

(assert (= (and b!6172353 ((_ is Concat!24956) (reg!16440 (regOne!32734 r!7292)))) b!6172976))

(assert (= (and b!6172353 ((_ is Star!16111) (reg!16440 (regOne!32734 r!7292)))) b!6172977))

(assert (= (and b!6172353 ((_ is Union!16111) (reg!16440 (regOne!32734 r!7292)))) b!6172978))

(declare-fun e!3760278 () Bool)

(assert (=> b!6172338 (= tp!1723339 e!3760278)))

(declare-fun b!6172981 () Bool)

(declare-fun tp!1723445 () Bool)

(assert (=> b!6172981 (= e!3760278 tp!1723445)))

(declare-fun b!6172980 () Bool)

(declare-fun tp!1723442 () Bool)

(declare-fun tp!1723446 () Bool)

(assert (=> b!6172980 (= e!3760278 (and tp!1723442 tp!1723446))))

(declare-fun b!6172982 () Bool)

(declare-fun tp!1723443 () Bool)

(declare-fun tp!1723444 () Bool)

(assert (=> b!6172982 (= e!3760278 (and tp!1723443 tp!1723444))))

(declare-fun b!6172979 () Bool)

(assert (=> b!6172979 (= e!3760278 tp_is_empty!41475)))

(assert (= (and b!6172338 ((_ is ElementMatch!16111) (regOne!32734 (regOne!32735 r!7292)))) b!6172979))

(assert (= (and b!6172338 ((_ is Concat!24956) (regOne!32734 (regOne!32735 r!7292)))) b!6172980))

(assert (= (and b!6172338 ((_ is Star!16111) (regOne!32734 (regOne!32735 r!7292)))) b!6172981))

(assert (= (and b!6172338 ((_ is Union!16111) (regOne!32734 (regOne!32735 r!7292)))) b!6172982))

(declare-fun e!3760279 () Bool)

(assert (=> b!6172338 (= tp!1723343 e!3760279)))

(declare-fun b!6172985 () Bool)

(declare-fun tp!1723450 () Bool)

(assert (=> b!6172985 (= e!3760279 tp!1723450)))

(declare-fun b!6172984 () Bool)

(declare-fun tp!1723447 () Bool)

(declare-fun tp!1723451 () Bool)

(assert (=> b!6172984 (= e!3760279 (and tp!1723447 tp!1723451))))

(declare-fun b!6172986 () Bool)

(declare-fun tp!1723448 () Bool)

(declare-fun tp!1723449 () Bool)

(assert (=> b!6172986 (= e!3760279 (and tp!1723448 tp!1723449))))

(declare-fun b!6172983 () Bool)

(assert (=> b!6172983 (= e!3760279 tp_is_empty!41475)))

(assert (= (and b!6172338 ((_ is ElementMatch!16111) (regTwo!32734 (regOne!32735 r!7292)))) b!6172983))

(assert (= (and b!6172338 ((_ is Concat!24956) (regTwo!32734 (regOne!32735 r!7292)))) b!6172984))

(assert (= (and b!6172338 ((_ is Star!16111) (regTwo!32734 (regOne!32735 r!7292)))) b!6172985))

(assert (= (and b!6172338 ((_ is Union!16111) (regTwo!32734 (regOne!32735 r!7292)))) b!6172986))

(declare-fun b!6172987 () Bool)

(declare-fun e!3760280 () Bool)

(declare-fun tp!1723452 () Bool)

(declare-fun tp!1723453 () Bool)

(assert (=> b!6172987 (= e!3760280 (and tp!1723452 tp!1723453))))

(assert (=> b!6172326 (= tp!1723328 e!3760280)))

(assert (= (and b!6172326 ((_ is Cons!64508) (exprs!5995 (h!70957 (t!378135 zl!343))))) b!6172987))

(declare-fun e!3760281 () Bool)

(assert (=> b!6172354 (= tp!1723358 e!3760281)))

(declare-fun b!6172990 () Bool)

(declare-fun tp!1723457 () Bool)

(assert (=> b!6172990 (= e!3760281 tp!1723457)))

(declare-fun b!6172989 () Bool)

(declare-fun tp!1723454 () Bool)

(declare-fun tp!1723458 () Bool)

(assert (=> b!6172989 (= e!3760281 (and tp!1723454 tp!1723458))))

(declare-fun b!6172991 () Bool)

(declare-fun tp!1723455 () Bool)

(declare-fun tp!1723456 () Bool)

(assert (=> b!6172991 (= e!3760281 (and tp!1723455 tp!1723456))))

(declare-fun b!6172988 () Bool)

(assert (=> b!6172988 (= e!3760281 tp_is_empty!41475)))

(assert (= (and b!6172354 ((_ is ElementMatch!16111) (regOne!32735 (regOne!32734 r!7292)))) b!6172988))

(assert (= (and b!6172354 ((_ is Concat!24956) (regOne!32735 (regOne!32734 r!7292)))) b!6172989))

(assert (= (and b!6172354 ((_ is Star!16111) (regOne!32735 (regOne!32734 r!7292)))) b!6172990))

(assert (= (and b!6172354 ((_ is Union!16111) (regOne!32735 (regOne!32734 r!7292)))) b!6172991))

(declare-fun e!3760282 () Bool)

(assert (=> b!6172354 (= tp!1723359 e!3760282)))

(declare-fun b!6172994 () Bool)

(declare-fun tp!1723462 () Bool)

(assert (=> b!6172994 (= e!3760282 tp!1723462)))

(declare-fun b!6172993 () Bool)

(declare-fun tp!1723459 () Bool)

(declare-fun tp!1723463 () Bool)

(assert (=> b!6172993 (= e!3760282 (and tp!1723459 tp!1723463))))

(declare-fun b!6172995 () Bool)

(declare-fun tp!1723460 () Bool)

(declare-fun tp!1723461 () Bool)

(assert (=> b!6172995 (= e!3760282 (and tp!1723460 tp!1723461))))

(declare-fun b!6172992 () Bool)

(assert (=> b!6172992 (= e!3760282 tp_is_empty!41475)))

(assert (= (and b!6172354 ((_ is ElementMatch!16111) (regTwo!32735 (regOne!32734 r!7292)))) b!6172992))

(assert (= (and b!6172354 ((_ is Concat!24956) (regTwo!32735 (regOne!32734 r!7292)))) b!6172993))

(assert (= (and b!6172354 ((_ is Star!16111) (regTwo!32735 (regOne!32734 r!7292)))) b!6172994))

(assert (= (and b!6172354 ((_ is Union!16111) (regTwo!32735 (regOne!32734 r!7292)))) b!6172995))

(declare-fun e!3760283 () Bool)

(assert (=> b!6172339 (= tp!1723342 e!3760283)))

(declare-fun b!6172998 () Bool)

(declare-fun tp!1723467 () Bool)

(assert (=> b!6172998 (= e!3760283 tp!1723467)))

(declare-fun b!6172997 () Bool)

(declare-fun tp!1723464 () Bool)

(declare-fun tp!1723468 () Bool)

(assert (=> b!6172997 (= e!3760283 (and tp!1723464 tp!1723468))))

(declare-fun b!6172999 () Bool)

(declare-fun tp!1723465 () Bool)

(declare-fun tp!1723466 () Bool)

(assert (=> b!6172999 (= e!3760283 (and tp!1723465 tp!1723466))))

(declare-fun b!6172996 () Bool)

(assert (=> b!6172996 (= e!3760283 tp_is_empty!41475)))

(assert (= (and b!6172339 ((_ is ElementMatch!16111) (reg!16440 (regOne!32735 r!7292)))) b!6172996))

(assert (= (and b!6172339 ((_ is Concat!24956) (reg!16440 (regOne!32735 r!7292)))) b!6172997))

(assert (= (and b!6172339 ((_ is Star!16111) (reg!16440 (regOne!32735 r!7292)))) b!6172998))

(assert (= (and b!6172339 ((_ is Union!16111) (reg!16440 (regOne!32735 r!7292)))) b!6172999))

(declare-fun e!3760284 () Bool)

(assert (=> b!6172340 (= tp!1723340 e!3760284)))

(declare-fun b!6173002 () Bool)

(declare-fun tp!1723472 () Bool)

(assert (=> b!6173002 (= e!3760284 tp!1723472)))

(declare-fun b!6173001 () Bool)

(declare-fun tp!1723469 () Bool)

(declare-fun tp!1723473 () Bool)

(assert (=> b!6173001 (= e!3760284 (and tp!1723469 tp!1723473))))

(declare-fun b!6173003 () Bool)

(declare-fun tp!1723470 () Bool)

(declare-fun tp!1723471 () Bool)

(assert (=> b!6173003 (= e!3760284 (and tp!1723470 tp!1723471))))

(declare-fun b!6173000 () Bool)

(assert (=> b!6173000 (= e!3760284 tp_is_empty!41475)))

(assert (= (and b!6172340 ((_ is ElementMatch!16111) (regOne!32735 (regOne!32735 r!7292)))) b!6173000))

(assert (= (and b!6172340 ((_ is Concat!24956) (regOne!32735 (regOne!32735 r!7292)))) b!6173001))

(assert (= (and b!6172340 ((_ is Star!16111) (regOne!32735 (regOne!32735 r!7292)))) b!6173002))

(assert (= (and b!6172340 ((_ is Union!16111) (regOne!32735 (regOne!32735 r!7292)))) b!6173003))

(declare-fun e!3760285 () Bool)

(assert (=> b!6172340 (= tp!1723341 e!3760285)))

(declare-fun b!6173006 () Bool)

(declare-fun tp!1723477 () Bool)

(assert (=> b!6173006 (= e!3760285 tp!1723477)))

(declare-fun b!6173005 () Bool)

(declare-fun tp!1723474 () Bool)

(declare-fun tp!1723478 () Bool)

(assert (=> b!6173005 (= e!3760285 (and tp!1723474 tp!1723478))))

(declare-fun b!6173007 () Bool)

(declare-fun tp!1723475 () Bool)

(declare-fun tp!1723476 () Bool)

(assert (=> b!6173007 (= e!3760285 (and tp!1723475 tp!1723476))))

(declare-fun b!6173004 () Bool)

(assert (=> b!6173004 (= e!3760285 tp_is_empty!41475)))

(assert (= (and b!6172340 ((_ is ElementMatch!16111) (regTwo!32735 (regOne!32735 r!7292)))) b!6173004))

(assert (= (and b!6172340 ((_ is Concat!24956) (regTwo!32735 (regOne!32735 r!7292)))) b!6173005))

(assert (= (and b!6172340 ((_ is Star!16111) (regTwo!32735 (regOne!32735 r!7292)))) b!6173006))

(assert (= (and b!6172340 ((_ is Union!16111) (regTwo!32735 (regOne!32735 r!7292)))) b!6173007))

(declare-fun condSetEmpty!41846 () Bool)

(assert (=> setNonEmpty!41840 (= condSetEmpty!41846 (= setRest!41840 ((as const (Array Context!10990 Bool)) false)))))

(declare-fun setRes!41846 () Bool)

(assert (=> setNonEmpty!41840 (= tp!1723355 setRes!41846)))

(declare-fun setIsEmpty!41846 () Bool)

(assert (=> setIsEmpty!41846 setRes!41846))

(declare-fun setNonEmpty!41846 () Bool)

(declare-fun setElem!41846 () Context!10990)

(declare-fun tp!1723479 () Bool)

(declare-fun e!3760286 () Bool)

(assert (=> setNonEmpty!41846 (= setRes!41846 (and tp!1723479 (inv!83524 setElem!41846) e!3760286))))

(declare-fun setRest!41846 () (InoxSet Context!10990))

(assert (=> setNonEmpty!41846 (= setRest!41840 ((_ map or) (store ((as const (Array Context!10990 Bool)) false) setElem!41846 true) setRest!41846))))

(declare-fun b!6173008 () Bool)

(declare-fun tp!1723480 () Bool)

(assert (=> b!6173008 (= e!3760286 tp!1723480)))

(assert (= (and setNonEmpty!41840 condSetEmpty!41846) setIsEmpty!41846))

(assert (= (and setNonEmpty!41840 (not condSetEmpty!41846)) setNonEmpty!41846))

(assert (= setNonEmpty!41846 b!6173008))

(declare-fun m!7009430 () Bool)

(assert (=> setNonEmpty!41846 m!7009430))

(declare-fun e!3760287 () Bool)

(assert (=> b!6172356 (= tp!1723362 e!3760287)))

(declare-fun b!6173011 () Bool)

(declare-fun tp!1723484 () Bool)

(assert (=> b!6173011 (= e!3760287 tp!1723484)))

(declare-fun b!6173010 () Bool)

(declare-fun tp!1723481 () Bool)

(declare-fun tp!1723485 () Bool)

(assert (=> b!6173010 (= e!3760287 (and tp!1723481 tp!1723485))))

(declare-fun b!6173012 () Bool)

(declare-fun tp!1723482 () Bool)

(declare-fun tp!1723483 () Bool)

(assert (=> b!6173012 (= e!3760287 (and tp!1723482 tp!1723483))))

(declare-fun b!6173009 () Bool)

(assert (=> b!6173009 (= e!3760287 tp_is_empty!41475)))

(assert (= (and b!6172356 ((_ is ElementMatch!16111) (regOne!32734 (regTwo!32734 r!7292)))) b!6173009))

(assert (= (and b!6172356 ((_ is Concat!24956) (regOne!32734 (regTwo!32734 r!7292)))) b!6173010))

(assert (= (and b!6172356 ((_ is Star!16111) (regOne!32734 (regTwo!32734 r!7292)))) b!6173011))

(assert (= (and b!6172356 ((_ is Union!16111) (regOne!32734 (regTwo!32734 r!7292)))) b!6173012))

(declare-fun e!3760288 () Bool)

(assert (=> b!6172356 (= tp!1723366 e!3760288)))

(declare-fun b!6173015 () Bool)

(declare-fun tp!1723489 () Bool)

(assert (=> b!6173015 (= e!3760288 tp!1723489)))

(declare-fun b!6173014 () Bool)

(declare-fun tp!1723486 () Bool)

(declare-fun tp!1723490 () Bool)

(assert (=> b!6173014 (= e!3760288 (and tp!1723486 tp!1723490))))

(declare-fun b!6173016 () Bool)

(declare-fun tp!1723487 () Bool)

(declare-fun tp!1723488 () Bool)

(assert (=> b!6173016 (= e!3760288 (and tp!1723487 tp!1723488))))

(declare-fun b!6173013 () Bool)

(assert (=> b!6173013 (= e!3760288 tp_is_empty!41475)))

(assert (= (and b!6172356 ((_ is ElementMatch!16111) (regTwo!32734 (regTwo!32734 r!7292)))) b!6173013))

(assert (= (and b!6172356 ((_ is Concat!24956) (regTwo!32734 (regTwo!32734 r!7292)))) b!6173014))

(assert (= (and b!6172356 ((_ is Star!16111) (regTwo!32734 (regTwo!32734 r!7292)))) b!6173015))

(assert (= (and b!6172356 ((_ is Union!16111) (regTwo!32734 (regTwo!32734 r!7292)))) b!6173016))

(declare-fun e!3760289 () Bool)

(assert (=> b!6172358 (= tp!1723363 e!3760289)))

(declare-fun b!6173019 () Bool)

(declare-fun tp!1723494 () Bool)

(assert (=> b!6173019 (= e!3760289 tp!1723494)))

(declare-fun b!6173018 () Bool)

(declare-fun tp!1723491 () Bool)

(declare-fun tp!1723495 () Bool)

(assert (=> b!6173018 (= e!3760289 (and tp!1723491 tp!1723495))))

(declare-fun b!6173020 () Bool)

(declare-fun tp!1723492 () Bool)

(declare-fun tp!1723493 () Bool)

(assert (=> b!6173020 (= e!3760289 (and tp!1723492 tp!1723493))))

(declare-fun b!6173017 () Bool)

(assert (=> b!6173017 (= e!3760289 tp_is_empty!41475)))

(assert (= (and b!6172358 ((_ is ElementMatch!16111) (regOne!32735 (regTwo!32734 r!7292)))) b!6173017))

(assert (= (and b!6172358 ((_ is Concat!24956) (regOne!32735 (regTwo!32734 r!7292)))) b!6173018))

(assert (= (and b!6172358 ((_ is Star!16111) (regOne!32735 (regTwo!32734 r!7292)))) b!6173019))

(assert (= (and b!6172358 ((_ is Union!16111) (regOne!32735 (regTwo!32734 r!7292)))) b!6173020))

(declare-fun e!3760290 () Bool)

(assert (=> b!6172358 (= tp!1723364 e!3760290)))

(declare-fun b!6173023 () Bool)

(declare-fun tp!1723499 () Bool)

(assert (=> b!6173023 (= e!3760290 tp!1723499)))

(declare-fun b!6173022 () Bool)

(declare-fun tp!1723496 () Bool)

(declare-fun tp!1723500 () Bool)

(assert (=> b!6173022 (= e!3760290 (and tp!1723496 tp!1723500))))

(declare-fun b!6173024 () Bool)

(declare-fun tp!1723497 () Bool)

(declare-fun tp!1723498 () Bool)

(assert (=> b!6173024 (= e!3760290 (and tp!1723497 tp!1723498))))

(declare-fun b!6173021 () Bool)

(assert (=> b!6173021 (= e!3760290 tp_is_empty!41475)))

(assert (= (and b!6172358 ((_ is ElementMatch!16111) (regTwo!32735 (regTwo!32734 r!7292)))) b!6173021))

(assert (= (and b!6172358 ((_ is Concat!24956) (regTwo!32735 (regTwo!32734 r!7292)))) b!6173022))

(assert (= (and b!6172358 ((_ is Star!16111) (regTwo!32735 (regTwo!32734 r!7292)))) b!6173023))

(assert (= (and b!6172358 ((_ is Union!16111) (regTwo!32735 (regTwo!32734 r!7292)))) b!6173024))

(declare-fun e!3760291 () Bool)

(assert (=> b!6172343 (= tp!1723347 e!3760291)))

(declare-fun b!6173027 () Bool)

(declare-fun tp!1723504 () Bool)

(assert (=> b!6173027 (= e!3760291 tp!1723504)))

(declare-fun b!6173026 () Bool)

(declare-fun tp!1723501 () Bool)

(declare-fun tp!1723505 () Bool)

(assert (=> b!6173026 (= e!3760291 (and tp!1723501 tp!1723505))))

(declare-fun b!6173028 () Bool)

(declare-fun tp!1723502 () Bool)

(declare-fun tp!1723503 () Bool)

(assert (=> b!6173028 (= e!3760291 (and tp!1723502 tp!1723503))))

(declare-fun b!6173025 () Bool)

(assert (=> b!6173025 (= e!3760291 tp_is_empty!41475)))

(assert (= (and b!6172343 ((_ is ElementMatch!16111) (reg!16440 (regTwo!32735 r!7292)))) b!6173025))

(assert (= (and b!6172343 ((_ is Concat!24956) (reg!16440 (regTwo!32735 r!7292)))) b!6173026))

(assert (= (and b!6172343 ((_ is Star!16111) (reg!16440 (regTwo!32735 r!7292)))) b!6173027))

(assert (= (and b!6172343 ((_ is Union!16111) (reg!16440 (regTwo!32735 r!7292)))) b!6173028))

(declare-fun b!6173029 () Bool)

(declare-fun e!3760292 () Bool)

(declare-fun tp!1723506 () Bool)

(declare-fun tp!1723507 () Bool)

(assert (=> b!6173029 (= e!3760292 (and tp!1723506 tp!1723507))))

(assert (=> b!6172350 (= tp!1723356 e!3760292)))

(assert (= (and b!6172350 ((_ is Cons!64508) (exprs!5995 setElem!41840))) b!6173029))

(declare-fun e!3760293 () Bool)

(assert (=> b!6172357 (= tp!1723365 e!3760293)))

(declare-fun b!6173032 () Bool)

(declare-fun tp!1723511 () Bool)

(assert (=> b!6173032 (= e!3760293 tp!1723511)))

(declare-fun b!6173031 () Bool)

(declare-fun tp!1723508 () Bool)

(declare-fun tp!1723512 () Bool)

(assert (=> b!6173031 (= e!3760293 (and tp!1723508 tp!1723512))))

(declare-fun b!6173033 () Bool)

(declare-fun tp!1723509 () Bool)

(declare-fun tp!1723510 () Bool)

(assert (=> b!6173033 (= e!3760293 (and tp!1723509 tp!1723510))))

(declare-fun b!6173030 () Bool)

(assert (=> b!6173030 (= e!3760293 tp_is_empty!41475)))

(assert (= (and b!6172357 ((_ is ElementMatch!16111) (reg!16440 (regTwo!32734 r!7292)))) b!6173030))

(assert (= (and b!6172357 ((_ is Concat!24956) (reg!16440 (regTwo!32734 r!7292)))) b!6173031))

(assert (= (and b!6172357 ((_ is Star!16111) (reg!16440 (regTwo!32734 r!7292)))) b!6173032))

(assert (= (and b!6172357 ((_ is Union!16111) (reg!16440 (regTwo!32734 r!7292)))) b!6173033))

(declare-fun e!3760294 () Bool)

(assert (=> b!6172342 (= tp!1723344 e!3760294)))

(declare-fun b!6173036 () Bool)

(declare-fun tp!1723516 () Bool)

(assert (=> b!6173036 (= e!3760294 tp!1723516)))

(declare-fun b!6173035 () Bool)

(declare-fun tp!1723513 () Bool)

(declare-fun tp!1723517 () Bool)

(assert (=> b!6173035 (= e!3760294 (and tp!1723513 tp!1723517))))

(declare-fun b!6173037 () Bool)

(declare-fun tp!1723514 () Bool)

(declare-fun tp!1723515 () Bool)

(assert (=> b!6173037 (= e!3760294 (and tp!1723514 tp!1723515))))

(declare-fun b!6173034 () Bool)

(assert (=> b!6173034 (= e!3760294 tp_is_empty!41475)))

(assert (= (and b!6172342 ((_ is ElementMatch!16111) (regOne!32734 (regTwo!32735 r!7292)))) b!6173034))

(assert (= (and b!6172342 ((_ is Concat!24956) (regOne!32734 (regTwo!32735 r!7292)))) b!6173035))

(assert (= (and b!6172342 ((_ is Star!16111) (regOne!32734 (regTwo!32735 r!7292)))) b!6173036))

(assert (= (and b!6172342 ((_ is Union!16111) (regOne!32734 (regTwo!32735 r!7292)))) b!6173037))

(declare-fun e!3760295 () Bool)

(assert (=> b!6172342 (= tp!1723348 e!3760295)))

(declare-fun b!6173040 () Bool)

(declare-fun tp!1723521 () Bool)

(assert (=> b!6173040 (= e!3760295 tp!1723521)))

(declare-fun b!6173039 () Bool)

(declare-fun tp!1723518 () Bool)

(declare-fun tp!1723522 () Bool)

(assert (=> b!6173039 (= e!3760295 (and tp!1723518 tp!1723522))))

(declare-fun b!6173041 () Bool)

(declare-fun tp!1723519 () Bool)

(declare-fun tp!1723520 () Bool)

(assert (=> b!6173041 (= e!3760295 (and tp!1723519 tp!1723520))))

(declare-fun b!6173038 () Bool)

(assert (=> b!6173038 (= e!3760295 tp_is_empty!41475)))

(assert (= (and b!6172342 ((_ is ElementMatch!16111) (regTwo!32734 (regTwo!32735 r!7292)))) b!6173038))

(assert (= (and b!6172342 ((_ is Concat!24956) (regTwo!32734 (regTwo!32735 r!7292)))) b!6173039))

(assert (= (and b!6172342 ((_ is Star!16111) (regTwo!32734 (regTwo!32735 r!7292)))) b!6173040))

(assert (= (and b!6172342 ((_ is Union!16111) (regTwo!32734 (regTwo!32735 r!7292)))) b!6173041))

(declare-fun e!3760296 () Bool)

(assert (=> b!6172344 (= tp!1723345 e!3760296)))

(declare-fun b!6173044 () Bool)

(declare-fun tp!1723526 () Bool)

(assert (=> b!6173044 (= e!3760296 tp!1723526)))

(declare-fun b!6173043 () Bool)

(declare-fun tp!1723523 () Bool)

(declare-fun tp!1723527 () Bool)

(assert (=> b!6173043 (= e!3760296 (and tp!1723523 tp!1723527))))

(declare-fun b!6173045 () Bool)

(declare-fun tp!1723524 () Bool)

(declare-fun tp!1723525 () Bool)

(assert (=> b!6173045 (= e!3760296 (and tp!1723524 tp!1723525))))

(declare-fun b!6173042 () Bool)

(assert (=> b!6173042 (= e!3760296 tp_is_empty!41475)))

(assert (= (and b!6172344 ((_ is ElementMatch!16111) (regOne!32735 (regTwo!32735 r!7292)))) b!6173042))

(assert (= (and b!6172344 ((_ is Concat!24956) (regOne!32735 (regTwo!32735 r!7292)))) b!6173043))

(assert (= (and b!6172344 ((_ is Star!16111) (regOne!32735 (regTwo!32735 r!7292)))) b!6173044))

(assert (= (and b!6172344 ((_ is Union!16111) (regOne!32735 (regTwo!32735 r!7292)))) b!6173045))

(declare-fun e!3760297 () Bool)

(assert (=> b!6172344 (= tp!1723346 e!3760297)))

(declare-fun b!6173048 () Bool)

(declare-fun tp!1723531 () Bool)

(assert (=> b!6173048 (= e!3760297 tp!1723531)))

(declare-fun b!6173047 () Bool)

(declare-fun tp!1723528 () Bool)

(declare-fun tp!1723532 () Bool)

(assert (=> b!6173047 (= e!3760297 (and tp!1723528 tp!1723532))))

(declare-fun b!6173049 () Bool)

(declare-fun tp!1723529 () Bool)

(declare-fun tp!1723530 () Bool)

(assert (=> b!6173049 (= e!3760297 (and tp!1723529 tp!1723530))))

(declare-fun b!6173046 () Bool)

(assert (=> b!6173046 (= e!3760297 tp_is_empty!41475)))

(assert (= (and b!6172344 ((_ is ElementMatch!16111) (regTwo!32735 (regTwo!32735 r!7292)))) b!6173046))

(assert (= (and b!6172344 ((_ is Concat!24956) (regTwo!32735 (regTwo!32735 r!7292)))) b!6173047))

(assert (= (and b!6172344 ((_ is Star!16111) (regTwo!32735 (regTwo!32735 r!7292)))) b!6173048))

(assert (= (and b!6172344 ((_ is Union!16111) (regTwo!32735 (regTwo!32735 r!7292)))) b!6173049))

(declare-fun b_lambda!234943 () Bool)

(assert (= b_lambda!234933 (or d!1934377 b_lambda!234943)))

(declare-fun bs!1530772 () Bool)

(declare-fun d!1934887 () Bool)

(assert (= bs!1530772 (and d!1934887 d!1934377)))

(assert (=> bs!1530772 (= (dynLambda!25440 lambda!336849 (h!70956 (exprs!5995 (h!70957 zl!343)))) (validRegex!7847 (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(declare-fun m!7009432 () Bool)

(assert (=> bs!1530772 m!7009432))

(assert (=> b!6172776 d!1934887))

(declare-fun b_lambda!234945 () Bool)

(assert (= b_lambda!234937 (or d!1934523 b_lambda!234945)))

(declare-fun bs!1530773 () Bool)

(declare-fun d!1934889 () Bool)

(assert (= bs!1530773 (and d!1934889 d!1934523)))

(assert (=> bs!1530773 (= (dynLambda!25440 lambda!336876 (h!70956 lt!2337305)) (validRegex!7847 (h!70956 lt!2337305)))))

(declare-fun m!7009434 () Bool)

(assert (=> bs!1530773 m!7009434))

(assert (=> b!6172862 d!1934889))

(declare-fun b_lambda!234947 () Bool)

(assert (= b_lambda!234931 (or b!6171493 b_lambda!234947)))

(assert (=> d!1934737 d!1934555))

(declare-fun b_lambda!234949 () Bool)

(assert (= b_lambda!234935 (or b!6171493 b_lambda!234949)))

(assert (=> d!1934821 d!1934553))

(declare-fun b_lambda!234951 () Bool)

(assert (= b_lambda!234929 (or d!1934495 b_lambda!234951)))

(declare-fun bs!1530774 () Bool)

(declare-fun d!1934891 () Bool)

(assert (= bs!1530774 (and d!1934891 d!1934495)))

(assert (=> bs!1530774 (= (dynLambda!25440 lambda!336875 (h!70956 (exprs!5995 (h!70957 zl!343)))) (validRegex!7847 (h!70956 (exprs!5995 (h!70957 zl!343)))))))

(assert (=> bs!1530774 m!7009432))

(assert (=> b!6172694 d!1934891))

(declare-fun b_lambda!234953 () Bool)

(assert (= b_lambda!234927 (or d!1934531 b_lambda!234953)))

(declare-fun bs!1530775 () Bool)

(declare-fun d!1934893 () Bool)

(assert (= bs!1530775 (and d!1934893 d!1934531)))

(assert (=> bs!1530775 (= (dynLambda!25440 lambda!336885 (h!70956 (unfocusZipperList!1532 zl!343))) (validRegex!7847 (h!70956 (unfocusZipperList!1532 zl!343))))))

(declare-fun m!7009436 () Bool)

(assert (=> bs!1530775 m!7009436))

(assert (=> b!6172648 d!1934893))

(declare-fun b_lambda!234955 () Bool)

(assert (= b_lambda!234925 (or b!6171493 b_lambda!234955)))

(assert (=> d!1934607 d!1934557))

(declare-fun b_lambda!234957 () Bool)

(assert (= b_lambda!234941 (or d!1934543 b_lambda!234957)))

(declare-fun bs!1530776 () Bool)

(declare-fun d!1934895 () Bool)

(assert (= bs!1530776 (and d!1934895 d!1934543)))

(assert (=> bs!1530776 (= (dynLambda!25440 lambda!336889 (h!70956 (exprs!5995 setElem!41834))) (validRegex!7847 (h!70956 (exprs!5995 setElem!41834))))))

(declare-fun m!7009438 () Bool)

(assert (=> bs!1530776 m!7009438))

(assert (=> b!6172932 d!1934895))

(declare-fun b_lambda!234959 () Bool)

(assert (= b_lambda!234939 (or d!1934533 b_lambda!234959)))

(declare-fun bs!1530777 () Bool)

(declare-fun d!1934897 () Bool)

(assert (= bs!1530777 (and d!1934897 d!1934533)))

(assert (=> bs!1530777 (= (dynLambda!25440 lambda!336888 (h!70956 lt!2337420)) (validRegex!7847 (h!70956 lt!2337420)))))

(declare-fun m!7009440 () Bool)

(assert (=> bs!1530777 m!7009440))

(assert (=> b!6172877 d!1934897))

(check-sat (not bm!514919) (not b_lambda!234953) (not b!6172360) (not b!6172961) (not b!6172866) (not b!6172408) (not b!6172535) (not bs!1530772) (not b!6172541) (not d!1934845) (not b!6172744) (not b!6172997) (not b!6172370) (not d!1934563) (not setNonEmpty!41846) (not bm!514891) (not bm!514944) (not d!1934855) (not b!6172628) (not bm!514990) (not bm!515010) (not d!1934607) (not bm!515002) (not b!6172883) (not d!1934587) (not d!1934577) (not b!6172697) (not b!6172906) (not b!6172864) (not b!6172514) (not b!6172980) (not b!6172529) (not d!1934659) (not b!6172833) (not b!6173020) (not b!6172629) (not b!6172937) (not d!1934651) (not b!6172525) (not b!6172949) (not bm!514959) (not d!1934763) (not bm!514951) (not d!1934827) (not b!6172938) (not b!6172533) (not b!6172626) (not b_lambda!234943) (not b!6172940) (not d!1934745) (not b!6172613) (not d!1934729) (not b!6172779) (not bm!514969) (not d!1934595) (not b!6172987) (not b!6173029) (not bm!514960) (not d!1934795) (not b!6173012) (not d!1934653) (not b!6173028) (not b!6172781) (not d!1934583) (not b!6172999) (not d!1934699) (not bm!514903) (not b!6172492) (not b!6172432) (not b!6172366) (not b!6172670) (not b!6172878) (not b_lambda!234923) (not b!6172865) (not bs!1530775) (not d!1934779) (not b!6172910) (not bm!515000) (not b!6173047) (not d!1934725) (not b!6172487) (not b!6173043) (not b!6172984) (not b!6172486) (not b!6172881) (not bm!514899) (not b!6173031) (not bm!514926) (not b!6173011) (not b!6172978) (not b!6172692) (not d!1934761) (not d!1934591) (not bm!514890) (not d!1934765) (not b!6172974) (not b!6172986) (not d!1934637) (not bm!514966) (not b!6172380) (not d!1934805) (not bm!514894) (not d!1934829) (not bm!514900) (not bm!515004) (not b!6172909) (not b!6172382) (not bm!514991) (not b_lambda!234945) (not b!6172962) (not b!6172941) (not b!6172777) (not bm!514977) (not b!6172727) (not b!6172690) (not d!1934747) (not b!6173005) (not d!1934797) (not b!6172804) (not b!6172743) (not b!6172991) (not b!6172447) (not b!6172746) (not bm!515006) (not b!6172679) (not b!6172891) (not b!6172780) (not b!6173023) (not b!6172981) (not d!1934771) (not b!6172493) (not b!6172425) (not b!6172582) (not b!6172933) (not d!1934863) (not b!6172880) (not d!1934631) (not b!6172510) (not d!1934571) (not d!1934753) (not bm!514976) (not b!6172957) (not d!1934871) (not b!6172982) (not d!1934621) (not bm!515014) (not b!6173002) (not b!6173015) (not b!6172847) (not b!6172367) (not bm!515016) (not b!6172532) (not bm!514901) (not b!6172649) (not b!6172454) (not d!1934749) (not b!6172945) (not b!6172736) (not b!6172748) (not d!1934683) (not b!6172494) (not b!6172362) (not b!6172976) (not bm!515003) (not bm!514993) (not b!6172747) (not b!6172805) (not bm!514897) (not b!6172365) (not b_lambda!234919) (not b!6173008) (not b!6172765) (not bm!514957) (not b!6173035) (not b!6172407) (not b!6172590) (not b!6173026) (not b!6172958) (not b!6172633) (not b!6173006) (not setNonEmpty!41845) (not b!6172778) (not d!1934689) (not b!6172702) (not b!6172801) (not b!6172998) (not d!1934589) (not b!6172502) (not b!6172459) (not bs!1530774) (not d!1934715) (not b!6172848) (not b!6172967) (not d!1934811) (not b!6172650) (not b!6173016) (not bm!514888) (not b!6172404) (not d!1934727) (not d!1934635) (not bm!514987) (not bm!515013) (not b!6173033) (not b!6172534) (not d!1934663) (not b!6172936) (not bm!515001) (not b!6172934) (not b!6172985) (not b!6172725) (not b!6172634) (not d!1934633) (not b!6172849) (not bm!514952) (not b!6172457) (not b!6172947) (not b!6172581) (not b!6172851) (not b!6172879) (not bm!514958) (not b!6172729) (not d!1934671) (not b!6172554) (not b!6172953) (not b_lambda!234959) (not b!6172625) (not b!6172946) (not bm!514942) (not d!1934875) (not d!1934691) (not b!6172973) (not d!1934713) (not b!6173045) (not b!6173014) (not b_lambda!234951) (not b!6172668) (not b!6172800) (not b!6172589) (not b!6172724) (not b!6172860) (not b!6172513) (not bm!514911) (not d!1934593) (not d!1934783) (not b!6172749) (not b!6172576) (not bm!514914) (not d!1934759) (not b!6172766) (not bm!514961) (not b!6172921) (not b!6173032) (not d!1934619) (not bm!514940) (not b!6173040) (not bm!514930) (not b!6172575) (not b!6172761) (not d!1934667) (not b!6173010) (not bm!514963) (not bs!1530773) (not b!6172506) (not b!6172966) (not b!6172378) (not b!6172615) (not b!6172361) (not d!1934777) (not b!6172662) (not b!6172564) (not bm!514906) (not b!6172434) (not b!6172763) (not bm!514907) (not b!6172698) (not b!6172435) (not d!1934833) (not b!6172491) (not b_lambda!234955) (not bm!514967) (not b!6172942) (not bm!514941) (not b!6172990) (not b!6172472) (not b!6172381) (not b!6172526) (not b!6172971) (not b!6172965) (not d!1934865) (not bm!514995) (not b!6172836) (not d!1934841) (not b_lambda!234921) (not b!6173037) (not b!6172695) (not b!6173024) (not b!6172774) (not b!6172701) (not b!6172507) (not b!6172604) (not bm!514971) (not b!6172989) (not d!1934755) (not bm!514920) (not b!6172642) (not b!6173039) (not d!1934573) (not b!6172428) (not b_lambda!234949) (not bm!514892) (not setNonEmpty!41843) (not bm!514929) (not b!6173019) (not b!6172403) (not bm!514935) (not d!1934803) (not b!6172950) (not b!6172968) (not d!1934839) (not b!6172488) (not b!6172458) (not bm!514947) (not b!6172632) (not b!6172390) (not bm!514938) (not d!1934627) (not d!1934575) (not bm!514928) (not d!1934853) (not b!6172661) (not bm!514973) (not d!1934639) (not b!6172993) (not b!6172959) (not bm!514912) (not bm!514932) (not b!6172511) (not bm!514948) (not b!6172951) (not setNonEmpty!41844) (not d!1934561) (not bm!514937) (not bm!514917) (not d!1934601) (not b!6172733) (not b!6172474) tp_is_empty!41475 (not b!6172377) (not bm!514910) (not d!1934859) (not b!6172591) (not b!6172431) (not b!6172842) (not b!6172562) (not b!6173049) (not b!6172455) (not b!6173036) (not d!1934711) (not b!6172530) (not bm!514994) (not b!6172863) (not b!6172734) (not d!1934737) (not bm!514997) (not b!6173048) (not b!6172368) (not bs!1530776) (not b!6173027) (not b!6172908) (not b!6172509) (not b!6172664) (not d!1934615) (not b!6173018) (not b!6172537) (not d!1934831) (not b!6173001) (not b!6172731) (not b!6172969) (not bm!514923) (not b!6172461) (not b!6172977) (not bm!515008) (not b!6173022) (not bm!514989) (not b!6172419) (not bm!514908) (not b!6172944) (not b!6172803) (not d!1934813) (not b!6173003) (not b_lambda!234947) (not bm!514970) (not d!1934565) (not b!6172955) (not b!6172504) (not b!6172972) (not d!1934665) (not b!6172463) (not b!6173041) (not d!1934821) (not b!6172618) (not b_lambda!234957) (not d!1934701) (not b!6172597) (not b!6172954) (not bs!1530777) (not b!6172963) (not b!6172598) (not bm!514921) (not d!1934793) (not b!6172427) (not d!1934629) (not b!6173007) (not b!6172994) (not bm!514950) (not b!6173044) (not b!6172630) (not b!6172409) (not b!6172540) (not b!6172666) (not b!6172995) (not bm!515019) (not b!6172700) (not d!1934847) (not b!6172882) (not bm!514936) (not b!6172430) (not b!6172793) (not bm!515007) (not b!6172392))
(check-sat)
