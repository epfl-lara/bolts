; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!585768 () Bool)

(assert start!585768)

(declare-fun b!5673404 () Bool)

(assert (=> b!5673404 true))

(assert (=> b!5673404 true))

(declare-fun lambda!305402 () Int)

(declare-fun lambda!305401 () Int)

(assert (=> b!5673404 (not (= lambda!305402 lambda!305401))))

(assert (=> b!5673404 true))

(assert (=> b!5673404 true))

(declare-fun b!5673396 () Bool)

(assert (=> b!5673396 true))

(declare-fun bs!1322824 () Bool)

(declare-fun b!5673417 () Bool)

(assert (= bs!1322824 (and b!5673417 b!5673404)))

(declare-datatypes ((C!31588 0))(
  ( (C!31589 (val!25496 Int)) )
))
(declare-datatypes ((Regex!15659 0))(
  ( (ElementMatch!15659 (c!998035 C!31588)) (Concat!24504 (regOne!31830 Regex!15659) (regTwo!31830 Regex!15659)) (EmptyExpr!15659) (Star!15659 (reg!15988 Regex!15659)) (EmptyLang!15659) (Union!15659 (regOne!31831 Regex!15659) (regTwo!31831 Regex!15659)) )
))
(declare-fun r!7292 () Regex!15659)

(declare-fun lambda!305404 () Int)

(declare-fun lt!2268680 () Regex!15659)

(assert (=> bs!1322824 (= (and (= (regOne!31830 (regOne!31830 r!7292)) (regOne!31830 r!7292)) (= lt!2268680 (regTwo!31830 r!7292))) (= lambda!305404 lambda!305401))))

(assert (=> bs!1322824 (not (= lambda!305404 lambda!305402))))

(assert (=> b!5673417 true))

(assert (=> b!5673417 true))

(assert (=> b!5673417 true))

(declare-fun lambda!305405 () Int)

(assert (=> bs!1322824 (not (= lambda!305405 lambda!305401))))

(assert (=> bs!1322824 (= (and (= (regOne!31830 (regOne!31830 r!7292)) (regOne!31830 r!7292)) (= lt!2268680 (regTwo!31830 r!7292))) (= lambda!305405 lambda!305402))))

(assert (=> b!5673417 (not (= lambda!305405 lambda!305404))))

(assert (=> b!5673417 true))

(assert (=> b!5673417 true))

(assert (=> b!5673417 true))

(declare-fun lambda!305406 () Int)

(declare-fun lt!2268675 () Regex!15659)

(assert (=> bs!1322824 (= (and (= (regTwo!31830 (regOne!31830 r!7292)) (regOne!31830 r!7292)) (= lt!2268675 (regTwo!31830 r!7292))) (= lambda!305406 lambda!305401))))

(assert (=> bs!1322824 (not (= lambda!305406 lambda!305402))))

(assert (=> b!5673417 (= (and (= (regTwo!31830 (regOne!31830 r!7292)) (regOne!31830 (regOne!31830 r!7292))) (= lt!2268675 lt!2268680)) (= lambda!305406 lambda!305404))))

(assert (=> b!5673417 (not (= lambda!305406 lambda!305405))))

(assert (=> b!5673417 true))

(assert (=> b!5673417 true))

(assert (=> b!5673417 true))

(declare-fun lambda!305407 () Int)

(assert (=> b!5673417 (not (= lambda!305407 lambda!305404))))

(assert (=> bs!1322824 (= (and (= (regTwo!31830 (regOne!31830 r!7292)) (regOne!31830 r!7292)) (= lt!2268675 (regTwo!31830 r!7292))) (= lambda!305407 lambda!305402))))

(assert (=> b!5673417 (not (= lambda!305407 lambda!305406))))

(assert (=> bs!1322824 (not (= lambda!305407 lambda!305401))))

(assert (=> b!5673417 (= (and (= (regTwo!31830 (regOne!31830 r!7292)) (regOne!31830 (regOne!31830 r!7292))) (= lt!2268675 lt!2268680)) (= lambda!305407 lambda!305405))))

(assert (=> b!5673417 true))

(assert (=> b!5673417 true))

(assert (=> b!5673417 true))

(declare-fun b!5673384 () Bool)

(declare-fun res!2397377 () Bool)

(declare-fun e!3492359 () Bool)

(assert (=> b!5673384 (=> res!2397377 e!3492359)))

(declare-datatypes ((List!63276 0))(
  ( (Nil!63152) (Cons!63152 (h!69600 Regex!15659) (t!376584 List!63276)) )
))
(declare-datatypes ((Context!10086 0))(
  ( (Context!10087 (exprs!5543 List!63276)) )
))
(declare-fun lt!2268670 () Context!10086)

(declare-datatypes ((List!63277 0))(
  ( (Nil!63153) (Cons!63153 (h!69601 Context!10086) (t!376585 List!63277)) )
))
(declare-fun zl!343 () List!63277)

(declare-fun contextDepthTotal!234 (Context!10086) Int)

(assert (=> b!5673384 (= res!2397377 (>= (contextDepthTotal!234 lt!2268670) (contextDepthTotal!234 (h!69601 zl!343))))))

(declare-fun b!5673385 () Bool)

(declare-fun e!3492364 () Bool)

(assert (=> b!5673385 (= e!3492364 e!3492359)))

(declare-fun res!2397386 () Bool)

(assert (=> b!5673385 (=> res!2397386 e!3492359)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2268671 () (InoxSet Context!10086))

(declare-fun lt!2268687 () (InoxSet Context!10086))

(assert (=> b!5673385 (= res!2397386 (not (= lt!2268671 lt!2268687)))))

(declare-fun lt!2268691 () (InoxSet Context!10086))

(declare-datatypes ((List!63278 0))(
  ( (Nil!63154) (Cons!63154 (h!69602 C!31588) (t!376586 List!63278)) )
))
(declare-fun s!2326 () List!63278)

(declare-fun lambda!305403 () Int)

(declare-fun flatMap!1272 ((InoxSet Context!10086) Int) (InoxSet Context!10086))

(declare-fun derivationStepZipperUp!927 (Context!10086 C!31588) (InoxSet Context!10086))

(assert (=> b!5673385 (= (flatMap!1272 lt!2268691 lambda!305403) (derivationStepZipperUp!927 lt!2268670 (h!69602 s!2326)))))

(declare-datatypes ((Unit!156168 0))(
  ( (Unit!156169) )
))
(declare-fun lt!2268677 () Unit!156168)

(declare-fun lemmaFlatMapOnSingletonSet!804 ((InoxSet Context!10086) Context!10086 Int) Unit!156168)

(assert (=> b!5673385 (= lt!2268677 (lemmaFlatMapOnSingletonSet!804 lt!2268691 lt!2268670 lambda!305403))))

(declare-fun lt!2268682 () (InoxSet Context!10086))

(assert (=> b!5673385 (= lt!2268682 (derivationStepZipperUp!927 lt!2268670 (h!69602 s!2326)))))

(declare-fun derivationStepZipper!1744 ((InoxSet Context!10086) C!31588) (InoxSet Context!10086))

(assert (=> b!5673385 (= lt!2268671 (derivationStepZipper!1744 lt!2268691 (h!69602 s!2326)))))

(assert (=> b!5673385 (= lt!2268691 (store ((as const (Array Context!10086 Bool)) false) lt!2268670 true))))

(declare-fun lt!2268676 () List!63276)

(assert (=> b!5673385 (= lt!2268670 (Context!10087 lt!2268676))))

(declare-fun lt!2268673 () List!63276)

(assert (=> b!5673385 (= lt!2268676 (Cons!63152 (regOne!31830 (regOne!31830 r!7292)) lt!2268673))))

(declare-fun b!5673386 () Bool)

(declare-fun e!3492358 () Bool)

(declare-fun e!3492356 () Bool)

(assert (=> b!5673386 (= e!3492358 e!3492356)))

(declare-fun res!2397378 () Bool)

(assert (=> b!5673386 (=> res!2397378 e!3492356)))

(declare-fun lt!2268672 () (InoxSet Context!10086))

(assert (=> b!5673386 (= res!2397378 (not (= lt!2268672 lt!2268687)))))

(declare-fun derivationStepZipperDown!1001 (Regex!15659 Context!10086 C!31588) (InoxSet Context!10086))

(assert (=> b!5673386 (= lt!2268687 (derivationStepZipperDown!1001 (regOne!31830 (regOne!31830 r!7292)) (Context!10087 lt!2268673) (h!69602 s!2326)))))

(assert (=> b!5673386 (= lt!2268673 (Cons!63152 (regTwo!31830 (regOne!31830 r!7292)) (t!376584 (exprs!5543 (h!69601 zl!343)))))))

(declare-fun b!5673387 () Bool)

(declare-fun res!2397388 () Bool)

(assert (=> b!5673387 (=> res!2397388 e!3492359)))

(assert (=> b!5673387 (= res!2397388 (not (= (exprs!5543 (h!69601 zl!343)) (Cons!63152 (Concat!24504 (regOne!31830 (regOne!31830 r!7292)) (regTwo!31830 (regOne!31830 r!7292))) (t!376584 (exprs!5543 (h!69601 zl!343)))))))))

(declare-fun b!5673388 () Bool)

(declare-fun e!3492362 () Unit!156168)

(declare-fun Unit!156170 () Unit!156168)

(assert (=> b!5673388 (= e!3492362 Unit!156170)))

(declare-fun lt!2268664 () Unit!156168)

(declare-fun lt!2268685 () (InoxSet Context!10086))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!684 ((InoxSet Context!10086) (InoxSet Context!10086) List!63278) Unit!156168)

(assert (=> b!5673388 (= lt!2268664 (lemmaZipperConcatMatchesSameAsBothZippers!684 lt!2268672 lt!2268685 (t!376586 s!2326)))))

(declare-fun res!2397387 () Bool)

(declare-fun matchZipper!1797 ((InoxSet Context!10086) List!63278) Bool)

(assert (=> b!5673388 (= res!2397387 (matchZipper!1797 lt!2268672 (t!376586 s!2326)))))

(declare-fun e!3492368 () Bool)

(assert (=> b!5673388 (=> res!2397387 e!3492368)))

(assert (=> b!5673388 (= (matchZipper!1797 ((_ map or) lt!2268672 lt!2268685) (t!376586 s!2326)) e!3492368)))

(declare-fun b!5673389 () Bool)

(declare-fun e!3492363 () Bool)

(declare-fun tp!1573571 () Bool)

(declare-fun tp!1573576 () Bool)

(assert (=> b!5673389 (= e!3492363 (and tp!1573571 tp!1573576))))

(declare-fun b!5673390 () Bool)

(declare-fun tp!1573575 () Bool)

(declare-fun tp!1573569 () Bool)

(assert (=> b!5673390 (= e!3492363 (and tp!1573575 tp!1573569))))

(declare-fun b!5673391 () Bool)

(declare-fun e!3492353 () Bool)

(declare-fun nullable!5691 (Regex!15659) Bool)

(assert (=> b!5673391 (= e!3492353 (nullable!5691 (regOne!31830 (regOne!31830 r!7292))))))

(declare-fun b!5673392 () Bool)

(declare-fun res!2397385 () Bool)

(assert (=> b!5673392 (=> res!2397385 e!3492358)))

(assert (=> b!5673392 (= res!2397385 e!3492353)))

(declare-fun res!2397374 () Bool)

(assert (=> b!5673392 (=> (not res!2397374) (not e!3492353))))

(get-info :version)

(assert (=> b!5673392 (= res!2397374 ((_ is Concat!24504) (regOne!31830 r!7292)))))

(declare-fun b!5673393 () Bool)

(declare-fun e!3492367 () Bool)

(declare-fun e!3492354 () Bool)

(assert (=> b!5673393 (= e!3492367 (not e!3492354))))

(declare-fun res!2397382 () Bool)

(assert (=> b!5673393 (=> res!2397382 e!3492354)))

(assert (=> b!5673393 (= res!2397382 (not ((_ is Cons!63153) zl!343)))))

(declare-fun lt!2268695 () Bool)

(declare-fun matchRSpec!2762 (Regex!15659 List!63278) Bool)

(assert (=> b!5673393 (= lt!2268695 (matchRSpec!2762 r!7292 s!2326))))

(declare-fun matchR!7844 (Regex!15659 List!63278) Bool)

(assert (=> b!5673393 (= lt!2268695 (matchR!7844 r!7292 s!2326))))

(declare-fun lt!2268688 () Unit!156168)

(declare-fun mainMatchTheorem!2762 (Regex!15659 List!63278) Unit!156168)

(assert (=> b!5673393 (= lt!2268688 (mainMatchTheorem!2762 r!7292 s!2326))))

(declare-fun b!5673394 () Bool)

(declare-fun res!2397391 () Bool)

(declare-fun e!3492366 () Bool)

(assert (=> b!5673394 (=> res!2397391 e!3492366)))

(declare-fun isEmpty!35005 (List!63276) Bool)

(assert (=> b!5673394 (= res!2397391 (isEmpty!35005 (t!376584 (exprs!5543 (h!69601 zl!343)))))))

(declare-fun setRes!37917 () Bool)

(declare-fun setElem!37917 () Context!10086)

(declare-fun setNonEmpty!37917 () Bool)

(declare-fun tp!1573577 () Bool)

(declare-fun e!3492360 () Bool)

(declare-fun inv!82394 (Context!10086) Bool)

(assert (=> setNonEmpty!37917 (= setRes!37917 (and tp!1573577 (inv!82394 setElem!37917) e!3492360))))

(declare-fun z!1189 () (InoxSet Context!10086))

(declare-fun setRest!37917 () (InoxSet Context!10086))

(assert (=> setNonEmpty!37917 (= z!1189 ((_ map or) (store ((as const (Array Context!10086 Bool)) false) setElem!37917 true) setRest!37917))))

(declare-fun b!5673395 () Bool)

(declare-fun e!3492365 () Bool)

(declare-fun tp!1573572 () Bool)

(assert (=> b!5673395 (= e!3492365 tp!1573572)))

(assert (=> b!5673396 (= e!3492366 e!3492358)))

(declare-fun res!2397372 () Bool)

(assert (=> b!5673396 (=> res!2397372 e!3492358)))

(assert (=> b!5673396 (= res!2397372 (or (and ((_ is ElementMatch!15659) (regOne!31830 r!7292)) (= (c!998035 (regOne!31830 r!7292)) (h!69602 s!2326))) ((_ is Union!15659) (regOne!31830 r!7292))))))

(declare-fun lt!2268693 () Unit!156168)

(assert (=> b!5673396 (= lt!2268693 e!3492362)))

(declare-fun c!998034 () Bool)

(assert (=> b!5673396 (= c!998034 (nullable!5691 (h!69600 (exprs!5543 (h!69601 zl!343)))))))

(assert (=> b!5673396 (= (flatMap!1272 z!1189 lambda!305403) (derivationStepZipperUp!927 (h!69601 zl!343) (h!69602 s!2326)))))

(declare-fun lt!2268690 () Unit!156168)

(assert (=> b!5673396 (= lt!2268690 (lemmaFlatMapOnSingletonSet!804 z!1189 (h!69601 zl!343) lambda!305403))))

(declare-fun lt!2268684 () Context!10086)

(assert (=> b!5673396 (= lt!2268685 (derivationStepZipperUp!927 lt!2268684 (h!69602 s!2326)))))

(assert (=> b!5673396 (= lt!2268672 (derivationStepZipperDown!1001 (h!69600 (exprs!5543 (h!69601 zl!343))) lt!2268684 (h!69602 s!2326)))))

(assert (=> b!5673396 (= lt!2268684 (Context!10087 (t!376584 (exprs!5543 (h!69601 zl!343)))))))

(declare-fun lt!2268683 () (InoxSet Context!10086))

(assert (=> b!5673396 (= lt!2268683 (derivationStepZipperUp!927 (Context!10087 (Cons!63152 (h!69600 (exprs!5543 (h!69601 zl!343))) (t!376584 (exprs!5543 (h!69601 zl!343))))) (h!69602 s!2326)))))

(declare-fun setIsEmpty!37917 () Bool)

(assert (=> setIsEmpty!37917 setRes!37917))

(declare-fun b!5673397 () Bool)

(declare-fun e!3492357 () Bool)

(declare-fun tp_is_empty!40571 () Bool)

(declare-fun tp!1573573 () Bool)

(assert (=> b!5673397 (= e!3492357 (and tp_is_empty!40571 tp!1573573))))

(declare-fun b!5673398 () Bool)

(declare-fun res!2397381 () Bool)

(assert (=> b!5673398 (=> (not res!2397381) (not e!3492367))))

(declare-fun toList!9443 ((InoxSet Context!10086)) List!63277)

(assert (=> b!5673398 (= res!2397381 (= (toList!9443 z!1189) zl!343))))

(declare-fun b!5673399 () Bool)

(declare-fun e!3492361 () Bool)

(assert (=> b!5673399 (= e!3492359 e!3492361)))

(declare-fun res!2397375 () Bool)

(assert (=> b!5673399 (=> res!2397375 e!3492361)))

(declare-fun lt!2268668 () List!63277)

(declare-fun zipperDepthTotal!256 (List!63277) Int)

(assert (=> b!5673399 (= res!2397375 (>= (zipperDepthTotal!256 lt!2268668) (zipperDepthTotal!256 zl!343)))))

(assert (=> b!5673399 (= lt!2268668 (Cons!63153 lt!2268670 Nil!63153))))

(declare-fun b!5673400 () Bool)

(declare-fun res!2397371 () Bool)

(assert (=> b!5673400 (=> res!2397371 e!3492358)))

(assert (=> b!5673400 (= res!2397371 (not ((_ is Concat!24504) (regOne!31830 r!7292))))))

(declare-fun b!5673401 () Bool)

(declare-fun Unit!156171 () Unit!156168)

(assert (=> b!5673401 (= e!3492362 Unit!156171)))

(declare-fun b!5673402 () Bool)

(declare-fun tp!1573578 () Bool)

(assert (=> b!5673402 (= e!3492363 tp!1573578)))

(declare-fun b!5673403 () Bool)

(declare-fun res!2397390 () Bool)

(assert (=> b!5673403 (=> res!2397390 e!3492354)))

(assert (=> b!5673403 (= res!2397390 (not ((_ is Cons!63152) (exprs!5543 (h!69601 zl!343)))))))

(assert (=> b!5673404 (= e!3492354 e!3492366)))

(declare-fun res!2397370 () Bool)

(assert (=> b!5673404 (=> res!2397370 e!3492366)))

(declare-fun lt!2268694 () Bool)

(assert (=> b!5673404 (= res!2397370 (or (not (= lt!2268695 lt!2268694)) ((_ is Nil!63154) s!2326)))))

(declare-fun Exists!2759 (Int) Bool)

(assert (=> b!5673404 (= (Exists!2759 lambda!305401) (Exists!2759 lambda!305402))))

(declare-fun lt!2268666 () Unit!156168)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1388 (Regex!15659 Regex!15659 List!63278) Unit!156168)

(assert (=> b!5673404 (= lt!2268666 (lemmaExistCutMatchRandMatchRSpecEquivalent!1388 (regOne!31830 r!7292) (regTwo!31830 r!7292) s!2326))))

(assert (=> b!5673404 (= lt!2268694 (Exists!2759 lambda!305401))))

(declare-datatypes ((tuple2!65512 0))(
  ( (tuple2!65513 (_1!36059 List!63278) (_2!36059 List!63278)) )
))
(declare-datatypes ((Option!15668 0))(
  ( (None!15667) (Some!15667 (v!51716 tuple2!65512)) )
))
(declare-fun isDefined!12371 (Option!15668) Bool)

(declare-fun findConcatSeparation!2082 (Regex!15659 Regex!15659 List!63278 List!63278 List!63278) Option!15668)

(assert (=> b!5673404 (= lt!2268694 (isDefined!12371 (findConcatSeparation!2082 (regOne!31830 r!7292) (regTwo!31830 r!7292) Nil!63154 s!2326 s!2326)))))

(declare-fun lt!2268689 () Unit!156168)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1846 (Regex!15659 Regex!15659 List!63278) Unit!156168)

(assert (=> b!5673404 (= lt!2268689 (lemmaFindConcatSeparationEquivalentToExists!1846 (regOne!31830 r!7292) (regTwo!31830 r!7292) s!2326))))

(declare-fun b!5673405 () Bool)

(assert (=> b!5673405 (= e!3492356 e!3492364)))

(declare-fun res!2397383 () Bool)

(assert (=> b!5673405 (=> res!2397383 e!3492364)))

(declare-fun lt!2268681 () Bool)

(assert (=> b!5673405 (= res!2397383 (not (= lt!2268681 (matchZipper!1797 lt!2268687 (t!376586 s!2326)))))))

(assert (=> b!5673405 (= lt!2268681 (matchZipper!1797 lt!2268672 (t!376586 s!2326)))))

(declare-fun b!5673406 () Bool)

(declare-fun res!2397380 () Bool)

(assert (=> b!5673406 (=> res!2397380 e!3492359)))

(assert (=> b!5673406 (= res!2397380 (not (= lt!2268681 (matchZipper!1797 lt!2268671 (t!376586 s!2326)))))))

(declare-fun tp!1573570 () Bool)

(declare-fun e!3492355 () Bool)

(declare-fun b!5673407 () Bool)

(assert (=> b!5673407 (= e!3492355 (and (inv!82394 (h!69601 zl!343)) e!3492365 tp!1573570))))

(declare-fun b!5673408 () Bool)

(declare-fun res!2397373 () Bool)

(assert (=> b!5673408 (=> res!2397373 e!3492354)))

(assert (=> b!5673408 (= res!2397373 (or ((_ is EmptyExpr!15659) r!7292) ((_ is EmptyLang!15659) r!7292) ((_ is ElementMatch!15659) r!7292) ((_ is Union!15659) r!7292) (not ((_ is Concat!24504) r!7292))))))

(declare-fun b!5673409 () Bool)

(declare-fun res!2397379 () Bool)

(assert (=> b!5673409 (=> res!2397379 e!3492361)))

(declare-fun zipperDepth!222 (List!63277) Int)

(assert (=> b!5673409 (= res!2397379 (> (zipperDepth!222 lt!2268668) (zipperDepth!222 zl!343)))))

(declare-fun b!5673410 () Bool)

(assert (=> b!5673410 (= e!3492363 tp_is_empty!40571)))

(declare-fun b!5673411 () Bool)

(declare-fun res!2397389 () Bool)

(assert (=> b!5673411 (=> res!2397389 e!3492354)))

(declare-fun generalisedUnion!1522 (List!63276) Regex!15659)

(declare-fun unfocusZipperList!1087 (List!63277) List!63276)

(assert (=> b!5673411 (= res!2397389 (not (= r!7292 (generalisedUnion!1522 (unfocusZipperList!1087 zl!343)))))))

(declare-fun b!5673412 () Bool)

(assert (=> b!5673412 (= e!3492368 (matchZipper!1797 lt!2268685 (t!376586 s!2326)))))

(declare-fun b!5673413 () Bool)

(declare-fun tp!1573574 () Bool)

(assert (=> b!5673413 (= e!3492360 tp!1573574)))

(declare-fun b!5673414 () Bool)

(declare-fun res!2397368 () Bool)

(assert (=> b!5673414 (=> (not res!2397368) (not e!3492367))))

(declare-fun unfocusZipper!1401 (List!63277) Regex!15659)

(assert (=> b!5673414 (= res!2397368 (= r!7292 (unfocusZipper!1401 zl!343)))))

(declare-fun b!5673415 () Bool)

(declare-fun res!2397376 () Bool)

(assert (=> b!5673415 (=> res!2397376 e!3492354)))

(declare-fun generalisedConcat!1274 (List!63276) Regex!15659)

(assert (=> b!5673415 (= res!2397376 (not (= r!7292 (generalisedConcat!1274 (exprs!5543 (h!69601 zl!343))))))))

(declare-fun res!2397369 () Bool)

(assert (=> start!585768 (=> (not res!2397369) (not e!3492367))))

(declare-fun validRegex!7395 (Regex!15659) Bool)

(assert (=> start!585768 (= res!2397369 (validRegex!7395 r!7292))))

(assert (=> start!585768 e!3492367))

(assert (=> start!585768 e!3492363))

(declare-fun condSetEmpty!37917 () Bool)

(assert (=> start!585768 (= condSetEmpty!37917 (= z!1189 ((as const (Array Context!10086 Bool)) false)))))

(assert (=> start!585768 setRes!37917))

(assert (=> start!585768 e!3492355))

(assert (=> start!585768 e!3492357))

(declare-fun b!5673416 () Bool)

(declare-fun res!2397384 () Bool)

(assert (=> b!5673416 (=> res!2397384 e!3492354)))

(declare-fun isEmpty!35006 (List!63277) Bool)

(assert (=> b!5673416 (= res!2397384 (not (isEmpty!35006 (t!376585 zl!343))))))

(declare-fun lt!2268667 () Bool)

(declare-fun lt!2268674 () Bool)

(declare-fun lt!2268669 () Bool)

(assert (=> b!5673417 (= e!3492361 (or (not (= lt!2268674 lt!2268669)) (= lt!2268674 lt!2268667)))))

(assert (=> b!5673417 (= lt!2268674 (matchZipper!1797 z!1189 s!2326))))

(assert (=> b!5673417 (= (Exists!2759 lambda!305406) (Exists!2759 lambda!305407))))

(declare-fun lt!2268692 () Unit!156168)

(assert (=> b!5673417 (= lt!2268692 (lemmaExistCutMatchRandMatchRSpecEquivalent!1388 (regTwo!31830 (regOne!31830 r!7292)) lt!2268675 s!2326))))

(assert (=> b!5673417 (= (isDefined!12371 (findConcatSeparation!2082 (regTwo!31830 (regOne!31830 r!7292)) lt!2268675 Nil!63154 s!2326 s!2326)) (Exists!2759 lambda!305406))))

(declare-fun lt!2268678 () Unit!156168)

(assert (=> b!5673417 (= lt!2268678 (lemmaFindConcatSeparationEquivalentToExists!1846 (regTwo!31830 (regOne!31830 r!7292)) lt!2268675 s!2326))))

(assert (=> b!5673417 (= lt!2268675 (generalisedConcat!1274 (t!376584 (exprs!5543 (h!69601 zl!343)))))))

(assert (=> b!5673417 (= (matchR!7844 lt!2268680 s!2326) (matchRSpec!2762 lt!2268680 s!2326))))

(declare-fun lt!2268696 () Unit!156168)

(assert (=> b!5673417 (= lt!2268696 (mainMatchTheorem!2762 lt!2268680 s!2326))))

(assert (=> b!5673417 (= (Exists!2759 lambda!305404) (Exists!2759 lambda!305405))))

(declare-fun lt!2268665 () Unit!156168)

(assert (=> b!5673417 (= lt!2268665 (lemmaExistCutMatchRandMatchRSpecEquivalent!1388 (regOne!31830 (regOne!31830 r!7292)) lt!2268680 s!2326))))

(assert (=> b!5673417 (= (isDefined!12371 (findConcatSeparation!2082 (regOne!31830 (regOne!31830 r!7292)) lt!2268680 Nil!63154 s!2326 s!2326)) (Exists!2759 lambda!305404))))

(declare-fun lt!2268679 () Unit!156168)

(assert (=> b!5673417 (= lt!2268679 (lemmaFindConcatSeparationEquivalentToExists!1846 (regOne!31830 (regOne!31830 r!7292)) lt!2268680 s!2326))))

(assert (=> b!5673417 (= lt!2268680 (generalisedConcat!1274 lt!2268673))))

(declare-fun lt!2268662 () Regex!15659)

(assert (=> b!5673417 (= lt!2268667 (matchRSpec!2762 lt!2268662 s!2326))))

(declare-fun lt!2268663 () Unit!156168)

(assert (=> b!5673417 (= lt!2268663 (mainMatchTheorem!2762 lt!2268662 s!2326))))

(assert (=> b!5673417 (= lt!2268667 lt!2268669)))

(assert (=> b!5673417 (= lt!2268669 (matchZipper!1797 lt!2268691 s!2326))))

(assert (=> b!5673417 (= lt!2268667 (matchR!7844 lt!2268662 s!2326))))

(declare-fun lt!2268686 () Unit!156168)

(declare-fun theoremZipperRegexEquiv!639 ((InoxSet Context!10086) List!63277 Regex!15659 List!63278) Unit!156168)

(assert (=> b!5673417 (= lt!2268686 (theoremZipperRegexEquiv!639 lt!2268691 lt!2268668 lt!2268662 s!2326))))

(assert (=> b!5673417 (= lt!2268662 (generalisedConcat!1274 lt!2268676))))

(assert (= (and start!585768 res!2397369) b!5673398))

(assert (= (and b!5673398 res!2397381) b!5673414))

(assert (= (and b!5673414 res!2397368) b!5673393))

(assert (= (and b!5673393 (not res!2397382)) b!5673416))

(assert (= (and b!5673416 (not res!2397384)) b!5673415))

(assert (= (and b!5673415 (not res!2397376)) b!5673403))

(assert (= (and b!5673403 (not res!2397390)) b!5673411))

(assert (= (and b!5673411 (not res!2397389)) b!5673408))

(assert (= (and b!5673408 (not res!2397373)) b!5673404))

(assert (= (and b!5673404 (not res!2397370)) b!5673394))

(assert (= (and b!5673394 (not res!2397391)) b!5673396))

(assert (= (and b!5673396 c!998034) b!5673388))

(assert (= (and b!5673396 (not c!998034)) b!5673401))

(assert (= (and b!5673388 (not res!2397387)) b!5673412))

(assert (= (and b!5673396 (not res!2397372)) b!5673392))

(assert (= (and b!5673392 res!2397374) b!5673391))

(assert (= (and b!5673392 (not res!2397385)) b!5673400))

(assert (= (and b!5673400 (not res!2397371)) b!5673386))

(assert (= (and b!5673386 (not res!2397378)) b!5673405))

(assert (= (and b!5673405 (not res!2397383)) b!5673385))

(assert (= (and b!5673385 (not res!2397386)) b!5673406))

(assert (= (and b!5673406 (not res!2397380)) b!5673387))

(assert (= (and b!5673387 (not res!2397388)) b!5673384))

(assert (= (and b!5673384 (not res!2397377)) b!5673399))

(assert (= (and b!5673399 (not res!2397375)) b!5673409))

(assert (= (and b!5673409 (not res!2397379)) b!5673417))

(assert (= (and start!585768 ((_ is ElementMatch!15659) r!7292)) b!5673410))

(assert (= (and start!585768 ((_ is Concat!24504) r!7292)) b!5673390))

(assert (= (and start!585768 ((_ is Star!15659) r!7292)) b!5673402))

(assert (= (and start!585768 ((_ is Union!15659) r!7292)) b!5673389))

(assert (= (and start!585768 condSetEmpty!37917) setIsEmpty!37917))

(assert (= (and start!585768 (not condSetEmpty!37917)) setNonEmpty!37917))

(assert (= setNonEmpty!37917 b!5673413))

(assert (= b!5673407 b!5673395))

(assert (= (and start!585768 ((_ is Cons!63153) zl!343)) b!5673407))

(assert (= (and start!585768 ((_ is Cons!63154) s!2326)) b!5673397))

(declare-fun m!6634392 () Bool)

(assert (=> b!5673391 m!6634392))

(declare-fun m!6634394 () Bool)

(assert (=> b!5673388 m!6634394))

(declare-fun m!6634396 () Bool)

(assert (=> b!5673388 m!6634396))

(declare-fun m!6634398 () Bool)

(assert (=> b!5673388 m!6634398))

(declare-fun m!6634400 () Bool)

(assert (=> b!5673407 m!6634400))

(declare-fun m!6634402 () Bool)

(assert (=> b!5673404 m!6634402))

(declare-fun m!6634404 () Bool)

(assert (=> b!5673404 m!6634404))

(declare-fun m!6634406 () Bool)

(assert (=> b!5673404 m!6634406))

(assert (=> b!5673404 m!6634402))

(declare-fun m!6634408 () Bool)

(assert (=> b!5673404 m!6634408))

(declare-fun m!6634410 () Bool)

(assert (=> b!5673404 m!6634410))

(assert (=> b!5673404 m!6634404))

(declare-fun m!6634412 () Bool)

(assert (=> b!5673404 m!6634412))

(declare-fun m!6634414 () Bool)

(assert (=> b!5673417 m!6634414))

(declare-fun m!6634416 () Bool)

(assert (=> b!5673417 m!6634416))

(declare-fun m!6634418 () Bool)

(assert (=> b!5673417 m!6634418))

(declare-fun m!6634420 () Bool)

(assert (=> b!5673417 m!6634420))

(declare-fun m!6634422 () Bool)

(assert (=> b!5673417 m!6634422))

(declare-fun m!6634424 () Bool)

(assert (=> b!5673417 m!6634424))

(declare-fun m!6634426 () Bool)

(assert (=> b!5673417 m!6634426))

(declare-fun m!6634428 () Bool)

(assert (=> b!5673417 m!6634428))

(declare-fun m!6634430 () Bool)

(assert (=> b!5673417 m!6634430))

(declare-fun m!6634432 () Bool)

(assert (=> b!5673417 m!6634432))

(assert (=> b!5673417 m!6634422))

(declare-fun m!6634434 () Bool)

(assert (=> b!5673417 m!6634434))

(declare-fun m!6634436 () Bool)

(assert (=> b!5673417 m!6634436))

(declare-fun m!6634438 () Bool)

(assert (=> b!5673417 m!6634438))

(declare-fun m!6634440 () Bool)

(assert (=> b!5673417 m!6634440))

(declare-fun m!6634442 () Bool)

(assert (=> b!5673417 m!6634442))

(declare-fun m!6634444 () Bool)

(assert (=> b!5673417 m!6634444))

(declare-fun m!6634446 () Bool)

(assert (=> b!5673417 m!6634446))

(assert (=> b!5673417 m!6634414))

(declare-fun m!6634448 () Bool)

(assert (=> b!5673417 m!6634448))

(declare-fun m!6634450 () Bool)

(assert (=> b!5673417 m!6634450))

(assert (=> b!5673417 m!6634416))

(declare-fun m!6634452 () Bool)

(assert (=> b!5673417 m!6634452))

(declare-fun m!6634454 () Bool)

(assert (=> b!5673417 m!6634454))

(declare-fun m!6634456 () Bool)

(assert (=> b!5673417 m!6634456))

(assert (=> b!5673417 m!6634452))

(declare-fun m!6634458 () Bool)

(assert (=> b!5673417 m!6634458))

(declare-fun m!6634460 () Bool)

(assert (=> b!5673417 m!6634460))

(declare-fun m!6634462 () Bool)

(assert (=> b!5673393 m!6634462))

(declare-fun m!6634464 () Bool)

(assert (=> b!5673393 m!6634464))

(declare-fun m!6634466 () Bool)

(assert (=> b!5673393 m!6634466))

(declare-fun m!6634468 () Bool)

(assert (=> start!585768 m!6634468))

(declare-fun m!6634470 () Bool)

(assert (=> b!5673412 m!6634470))

(declare-fun m!6634472 () Bool)

(assert (=> b!5673386 m!6634472))

(declare-fun m!6634474 () Bool)

(assert (=> b!5673399 m!6634474))

(declare-fun m!6634476 () Bool)

(assert (=> b!5673399 m!6634476))

(declare-fun m!6634478 () Bool)

(assert (=> b!5673398 m!6634478))

(declare-fun m!6634480 () Bool)

(assert (=> b!5673384 m!6634480))

(declare-fun m!6634482 () Bool)

(assert (=> b!5673384 m!6634482))

(declare-fun m!6634484 () Bool)

(assert (=> b!5673414 m!6634484))

(declare-fun m!6634486 () Bool)

(assert (=> b!5673396 m!6634486))

(declare-fun m!6634488 () Bool)

(assert (=> b!5673396 m!6634488))

(declare-fun m!6634490 () Bool)

(assert (=> b!5673396 m!6634490))

(declare-fun m!6634492 () Bool)

(assert (=> b!5673396 m!6634492))

(declare-fun m!6634494 () Bool)

(assert (=> b!5673396 m!6634494))

(declare-fun m!6634496 () Bool)

(assert (=> b!5673396 m!6634496))

(declare-fun m!6634498 () Bool)

(assert (=> b!5673396 m!6634498))

(declare-fun m!6634500 () Bool)

(assert (=> b!5673406 m!6634500))

(declare-fun m!6634502 () Bool)

(assert (=> b!5673405 m!6634502))

(assert (=> b!5673405 m!6634396))

(declare-fun m!6634504 () Bool)

(assert (=> b!5673394 m!6634504))

(declare-fun m!6634506 () Bool)

(assert (=> b!5673385 m!6634506))

(declare-fun m!6634508 () Bool)

(assert (=> b!5673385 m!6634508))

(declare-fun m!6634510 () Bool)

(assert (=> b!5673385 m!6634510))

(declare-fun m!6634512 () Bool)

(assert (=> b!5673385 m!6634512))

(declare-fun m!6634514 () Bool)

(assert (=> b!5673385 m!6634514))

(declare-fun m!6634516 () Bool)

(assert (=> b!5673416 m!6634516))

(declare-fun m!6634518 () Bool)

(assert (=> b!5673411 m!6634518))

(assert (=> b!5673411 m!6634518))

(declare-fun m!6634520 () Bool)

(assert (=> b!5673411 m!6634520))

(declare-fun m!6634522 () Bool)

(assert (=> b!5673409 m!6634522))

(declare-fun m!6634524 () Bool)

(assert (=> b!5673409 m!6634524))

(declare-fun m!6634526 () Bool)

(assert (=> setNonEmpty!37917 m!6634526))

(declare-fun m!6634528 () Bool)

(assert (=> b!5673415 m!6634528))

(check-sat (not b!5673417) (not b!5673402) (not b!5673407) (not b!5673395) (not b!5673413) (not b!5673390) (not b!5673414) (not b!5673389) (not b!5673388) (not b!5673398) (not b!5673394) (not b!5673412) (not b!5673385) (not b!5673396) (not setNonEmpty!37917) (not b!5673399) (not b!5673404) (not start!585768) (not b!5673416) tp_is_empty!40571 (not b!5673405) (not b!5673384) (not b!5673409) (not b!5673397) (not b!5673406) (not b!5673386) (not b!5673411) (not b!5673393) (not b!5673391) (not b!5673415))
(check-sat)
