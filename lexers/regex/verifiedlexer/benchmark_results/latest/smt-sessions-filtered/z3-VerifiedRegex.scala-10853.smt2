; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!559422 () Bool)

(assert start!559422)

(declare-fun b!5304035 () Bool)

(assert (=> b!5304035 true))

(assert (=> b!5304035 true))

(declare-fun lambda!269687 () Int)

(declare-fun lambda!269686 () Int)

(assert (=> b!5304035 (not (= lambda!269687 lambda!269686))))

(assert (=> b!5304035 true))

(assert (=> b!5304035 true))

(declare-fun b!5304055 () Bool)

(assert (=> b!5304055 true))

(declare-fun bs!1229878 () Bool)

(declare-fun b!5304045 () Bool)

(assert (= bs!1229878 (and b!5304045 b!5304035)))

(declare-datatypes ((C!30176 0))(
  ( (C!30177 (val!24790 Int)) )
))
(declare-datatypes ((Regex!14953 0))(
  ( (ElementMatch!14953 (c!920805 C!30176)) (Concat!23798 (regOne!30418 Regex!14953) (regTwo!30418 Regex!14953)) (EmptyExpr!14953) (Star!14953 (reg!15282 Regex!14953)) (EmptyLang!14953) (Union!14953 (regOne!30419 Regex!14953) (regTwo!30419 Regex!14953)) )
))
(declare-fun r!7292 () Regex!14953)

(declare-fun lambda!269689 () Int)

(declare-fun lt!2167594 () Regex!14953)

(assert (=> bs!1229878 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167594 (regTwo!30418 r!7292))) (= lambda!269689 lambda!269686))))

(assert (=> bs!1229878 (not (= lambda!269689 lambda!269687))))

(assert (=> b!5304045 true))

(assert (=> b!5304045 true))

(assert (=> b!5304045 true))

(declare-fun lambda!269690 () Int)

(assert (=> bs!1229878 (not (= lambda!269690 lambda!269686))))

(assert (=> bs!1229878 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167594 (regTwo!30418 r!7292))) (= lambda!269690 lambda!269687))))

(assert (=> b!5304045 (not (= lambda!269690 lambda!269689))))

(assert (=> b!5304045 true))

(assert (=> b!5304045 true))

(assert (=> b!5304045 true))

(declare-fun lt!2167578 () Regex!14953)

(declare-fun lambda!269691 () Int)

(assert (=> bs!1229878 (= (and (= (regTwo!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167578 (regTwo!30418 r!7292))) (= lambda!269691 lambda!269686))))

(assert (=> bs!1229878 (not (= lambda!269691 lambda!269687))))

(assert (=> b!5304045 (= (and (= (regTwo!30418 (regOne!30418 r!7292)) (regOne!30418 (regOne!30418 r!7292))) (= lt!2167578 lt!2167594)) (= lambda!269691 lambda!269689))))

(assert (=> b!5304045 (not (= lambda!269691 lambda!269690))))

(assert (=> b!5304045 true))

(assert (=> b!5304045 true))

(assert (=> b!5304045 true))

(declare-fun lambda!269692 () Int)

(assert (=> b!5304045 (= (and (= (regTwo!30418 (regOne!30418 r!7292)) (regOne!30418 (regOne!30418 r!7292))) (= lt!2167578 lt!2167594)) (= lambda!269692 lambda!269690))))

(assert (=> bs!1229878 (= (and (= (regTwo!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167578 (regTwo!30418 r!7292))) (= lambda!269692 lambda!269687))))

(assert (=> b!5304045 (not (= lambda!269692 lambda!269691))))

(assert (=> b!5304045 (not (= lambda!269692 lambda!269689))))

(assert (=> bs!1229878 (not (= lambda!269692 lambda!269686))))

(assert (=> b!5304045 true))

(assert (=> b!5304045 true))

(assert (=> b!5304045 true))

(declare-fun b!5304029 () Bool)

(declare-fun e!3296431 () Bool)

(declare-fun tp_is_empty!39159 () Bool)

(declare-fun tp!1478746 () Bool)

(assert (=> b!5304029 (= e!3296431 (and tp_is_empty!39159 tp!1478746))))

(declare-fun b!5304030 () Bool)

(declare-fun res!2250030 () Bool)

(declare-fun e!3296436 () Bool)

(assert (=> b!5304030 (=> res!2250030 e!3296436)))

(declare-datatypes ((List!61158 0))(
  ( (Nil!61034) (Cons!61034 (h!67482 Regex!14953) (t!374363 List!61158)) )
))
(declare-datatypes ((Context!8674 0))(
  ( (Context!8675 (exprs!4837 List!61158)) )
))
(declare-datatypes ((List!61159 0))(
  ( (Nil!61035) (Cons!61035 (h!67483 Context!8674) (t!374364 List!61159)) )
))
(declare-fun zl!343 () List!61159)

(declare-fun generalisedConcat!622 (List!61158) Regex!14953)

(assert (=> b!5304030 (= res!2250030 (not (= r!7292 (generalisedConcat!622 (exprs!4837 (h!67483 zl!343))))))))

(declare-fun b!5304031 () Bool)

(declare-fun res!2250035 () Bool)

(assert (=> b!5304031 (=> res!2250035 e!3296436)))

(get-info :version)

(assert (=> b!5304031 (= res!2250035 (not ((_ is Cons!61034) (exprs!4837 (h!67483 zl!343)))))))

(declare-fun b!5304032 () Bool)

(declare-fun e!3296441 () Bool)

(declare-fun e!3296421 () Bool)

(assert (=> b!5304032 (= e!3296441 e!3296421)))

(declare-fun res!2250044 () Bool)

(assert (=> b!5304032 (=> res!2250044 e!3296421)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2167604 () (InoxSet Context!8674))

(declare-fun lt!2167576 () (InoxSet Context!8674))

(assert (=> b!5304032 (= res!2250044 (not (= lt!2167604 lt!2167576)))))

(declare-fun lt!2167580 () (InoxSet Context!8674))

(declare-fun lt!2167596 () (InoxSet Context!8674))

(assert (=> b!5304032 (= lt!2167576 ((_ map or) lt!2167580 lt!2167596))))

(declare-fun lt!2167572 () Context!8674)

(declare-datatypes ((List!61160 0))(
  ( (Nil!61036) (Cons!61036 (h!67484 C!30176) (t!374365 List!61160)) )
))
(declare-fun s!2326 () List!61160)

(declare-fun derivationStepZipperDown!401 (Regex!14953 Context!8674 C!30176) (InoxSet Context!8674))

(assert (=> b!5304032 (= lt!2167596 (derivationStepZipperDown!401 (regTwo!30418 (regOne!30418 r!7292)) lt!2167572 (h!67484 s!2326)))))

(declare-fun lt!2167597 () Context!8674)

(assert (=> b!5304032 (= lt!2167580 (derivationStepZipperDown!401 (regOne!30418 (regOne!30418 r!7292)) lt!2167597 (h!67484 s!2326)))))

(declare-fun lt!2167605 () List!61158)

(assert (=> b!5304032 (= lt!2167597 (Context!8675 lt!2167605))))

(assert (=> b!5304032 (= lt!2167605 (Cons!61034 (regTwo!30418 (regOne!30418 r!7292)) (t!374363 (exprs!4837 (h!67483 zl!343)))))))

(declare-fun b!5304033 () Bool)

(declare-fun e!3296432 () Bool)

(declare-fun e!3296429 () Bool)

(assert (=> b!5304033 (= e!3296432 e!3296429)))

(declare-fun res!2250037 () Bool)

(assert (=> b!5304033 (=> res!2250037 e!3296429)))

(declare-fun lt!2167587 () (InoxSet Context!8674))

(declare-fun lt!2167575 () (InoxSet Context!8674))

(assert (=> b!5304033 (= res!2250037 (not (= lt!2167587 lt!2167575)))))

(declare-fun lt!2167588 () (InoxSet Context!8674))

(assert (=> b!5304033 (= lt!2167575 ((_ map or) lt!2167580 lt!2167588))))

(declare-fun derivationStepZipperUp!325 (Context!8674 C!30176) (InoxSet Context!8674))

(assert (=> b!5304033 (= lt!2167588 (derivationStepZipperUp!325 lt!2167597 (h!67484 s!2326)))))

(declare-fun lt!2167590 () (InoxSet Context!8674))

(declare-fun lt!2167592 () Context!8674)

(declare-fun lambda!269688 () Int)

(declare-fun flatMap!680 ((InoxSet Context!8674) Int) (InoxSet Context!8674))

(assert (=> b!5304033 (= (flatMap!680 lt!2167590 lambda!269688) (derivationStepZipperUp!325 lt!2167592 (h!67484 s!2326)))))

(declare-datatypes ((Unit!153330 0))(
  ( (Unit!153331) )
))
(declare-fun lt!2167610 () Unit!153330)

(declare-fun lemmaFlatMapOnSingletonSet!212 ((InoxSet Context!8674) Context!8674 Int) Unit!153330)

(assert (=> b!5304033 (= lt!2167610 (lemmaFlatMapOnSingletonSet!212 lt!2167590 lt!2167592 lambda!269688))))

(declare-fun lt!2167589 () (InoxSet Context!8674))

(assert (=> b!5304033 (= lt!2167589 (derivationStepZipperUp!325 lt!2167592 (h!67484 s!2326)))))

(declare-fun derivationStepZipper!1196 ((InoxSet Context!8674) C!30176) (InoxSet Context!8674))

(assert (=> b!5304033 (= lt!2167587 (derivationStepZipper!1196 lt!2167590 (h!67484 s!2326)))))

(declare-fun lt!2167614 () (InoxSet Context!8674))

(assert (=> b!5304033 (= lt!2167614 (store ((as const (Array Context!8674 Bool)) false) lt!2167597 true))))

(assert (=> b!5304033 (= lt!2167590 (store ((as const (Array Context!8674 Bool)) false) lt!2167592 true))))

(declare-fun lt!2167581 () List!61158)

(assert (=> b!5304033 (= lt!2167592 (Context!8675 lt!2167581))))

(assert (=> b!5304033 (= lt!2167581 (Cons!61034 (regOne!30418 (regOne!30418 r!7292)) lt!2167605))))

(declare-fun b!5304034 () Bool)

(declare-fun e!3296430 () Bool)

(assert (=> b!5304034 (= e!3296430 tp_is_empty!39159)))

(declare-fun e!3296428 () Bool)

(assert (=> b!5304035 (= e!3296436 e!3296428)))

(declare-fun res!2250034 () Bool)

(assert (=> b!5304035 (=> res!2250034 e!3296428)))

(declare-fun lt!2167616 () Bool)

(declare-fun lt!2167573 () Bool)

(assert (=> b!5304035 (= res!2250034 (or (not (= lt!2167616 lt!2167573)) ((_ is Nil!61036) s!2326)))))

(declare-fun Exists!2134 (Int) Bool)

(assert (=> b!5304035 (= (Exists!2134 lambda!269686) (Exists!2134 lambda!269687))))

(declare-fun lt!2167608 () Unit!153330)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!788 (Regex!14953 Regex!14953 List!61160) Unit!153330)

(assert (=> b!5304035 (= lt!2167608 (lemmaExistCutMatchRandMatchRSpecEquivalent!788 (regOne!30418 r!7292) (regTwo!30418 r!7292) s!2326))))

(assert (=> b!5304035 (= lt!2167573 (Exists!2134 lambda!269686))))

(declare-datatypes ((tuple2!64304 0))(
  ( (tuple2!64305 (_1!35455 List!61160) (_2!35455 List!61160)) )
))
(declare-datatypes ((Option!15064 0))(
  ( (None!15063) (Some!15063 (v!51092 tuple2!64304)) )
))
(declare-fun isDefined!11767 (Option!15064) Bool)

(declare-fun findConcatSeparation!1478 (Regex!14953 Regex!14953 List!61160 List!61160 List!61160) Option!15064)

(assert (=> b!5304035 (= lt!2167573 (isDefined!11767 (findConcatSeparation!1478 (regOne!30418 r!7292) (regTwo!30418 r!7292) Nil!61036 s!2326 s!2326)))))

(declare-fun lt!2167583 () Unit!153330)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1242 (Regex!14953 Regex!14953 List!61160) Unit!153330)

(assert (=> b!5304035 (= lt!2167583 (lemmaFindConcatSeparationEquivalentToExists!1242 (regOne!30418 r!7292) (regTwo!30418 r!7292) s!2326))))

(declare-fun b!5304036 () Bool)

(declare-fun e!3296422 () Bool)

(declare-fun lt!2167574 () (InoxSet Context!8674))

(declare-fun matchZipper!1197 ((InoxSet Context!8674) List!61160) Bool)

(assert (=> b!5304036 (= e!3296422 (matchZipper!1197 lt!2167574 (t!374365 s!2326)))))

(declare-fun b!5304037 () Bool)

(declare-fun e!3296425 () Bool)

(assert (=> b!5304037 (= e!3296425 (not (matchZipper!1197 lt!2167596 (t!374365 s!2326))))))

(declare-fun b!5304038 () Bool)

(declare-fun e!3296439 () Bool)

(declare-fun tp!1478750 () Bool)

(assert (=> b!5304038 (= e!3296439 tp!1478750)))

(declare-fun b!5304039 () Bool)

(declare-fun res!2250036 () Bool)

(declare-fun e!3296426 () Bool)

(assert (=> b!5304039 (=> (not res!2250036) (not e!3296426))))

(declare-fun unfocusZipper!695 (List!61159) Regex!14953)

(assert (=> b!5304039 (= res!2250036 (= r!7292 (unfocusZipper!695 zl!343)))))

(declare-fun b!5304040 () Bool)

(declare-fun e!3296440 () Bool)

(declare-fun lambda!269693 () Int)

(declare-fun forall!14365 (List!61158 Int) Bool)

(assert (=> b!5304040 (= e!3296440 (forall!14365 (t!374363 (exprs!4837 (h!67483 zl!343))) lambda!269693))))

(declare-fun res!2250051 () Bool)

(assert (=> start!559422 (=> (not res!2250051) (not e!3296426))))

(declare-fun validRegex!6689 (Regex!14953) Bool)

(assert (=> start!559422 (= res!2250051 (validRegex!6689 r!7292))))

(assert (=> start!559422 e!3296426))

(assert (=> start!559422 e!3296430))

(declare-fun condSetEmpty!34091 () Bool)

(declare-fun z!1189 () (InoxSet Context!8674))

(assert (=> start!559422 (= condSetEmpty!34091 (= z!1189 ((as const (Array Context!8674 Bool)) false)))))

(declare-fun setRes!34091 () Bool)

(assert (=> start!559422 setRes!34091))

(declare-fun e!3296435 () Bool)

(assert (=> start!559422 e!3296435))

(assert (=> start!559422 e!3296431))

(declare-fun b!5304041 () Bool)

(declare-fun e!3296433 () Unit!153330)

(declare-fun Unit!153332 () Unit!153330)

(assert (=> b!5304041 (= e!3296433 Unit!153332)))

(declare-fun lt!2167569 () Unit!153330)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!190 ((InoxSet Context!8674) (InoxSet Context!8674) List!61160) Unit!153330)

(assert (=> b!5304041 (= lt!2167569 (lemmaZipperConcatMatchesSameAsBothZippers!190 lt!2167604 lt!2167574 (t!374365 s!2326)))))

(declare-fun res!2250042 () Bool)

(assert (=> b!5304041 (= res!2250042 (matchZipper!1197 lt!2167604 (t!374365 s!2326)))))

(assert (=> b!5304041 (=> res!2250042 e!3296422)))

(assert (=> b!5304041 (= (matchZipper!1197 ((_ map or) lt!2167604 lt!2167574) (t!374365 s!2326)) e!3296422)))

(declare-fun b!5304042 () Bool)

(declare-fun res!2250045 () Bool)

(assert (=> b!5304042 (=> res!2250045 e!3296441)))

(declare-fun nullable!5122 (Regex!14953) Bool)

(assert (=> b!5304042 (= res!2250045 (not (nullable!5122 (regOne!30418 (regOne!30418 r!7292)))))))

(declare-fun setIsEmpty!34091 () Bool)

(assert (=> setIsEmpty!34091 setRes!34091))

(declare-fun b!5304043 () Bool)

(declare-fun res!2250039 () Bool)

(assert (=> b!5304043 (=> res!2250039 e!3296436)))

(assert (=> b!5304043 (= res!2250039 (or ((_ is EmptyExpr!14953) r!7292) ((_ is EmptyLang!14953) r!7292) ((_ is ElementMatch!14953) r!7292) ((_ is Union!14953) r!7292) (not ((_ is Concat!23798) r!7292))))))

(declare-fun b!5304044 () Bool)

(declare-fun e!3296434 () Bool)

(assert (=> b!5304044 (= e!3296434 (matchZipper!1197 lt!2167596 (t!374365 s!2326)))))

(declare-fun e!3296423 () Bool)

(assert (=> b!5304045 (= e!3296423 e!3296440)))

(declare-fun res!2250048 () Bool)

(assert (=> b!5304045 (=> res!2250048 e!3296440)))

(declare-fun lt!2167606 () Bool)

(declare-fun lt!2167584 () Bool)

(declare-fun lt!2167585 () Bool)

(declare-fun lt!2167593 () Bool)

(declare-fun lt!2167579 () Bool)

(assert (=> b!5304045 (= res!2250048 (or (not (= lt!2167585 (or lt!2167584 lt!2167593))) (not (= lt!2167585 (or lt!2167579 lt!2167606)))))))

(assert (=> b!5304045 (= lt!2167585 (matchZipper!1197 z!1189 s!2326))))

(assert (=> b!5304045 (= (Exists!2134 lambda!269691) (Exists!2134 lambda!269692))))

(declare-fun lt!2167611 () Unit!153330)

(assert (=> b!5304045 (= lt!2167611 (lemmaExistCutMatchRandMatchRSpecEquivalent!788 (regTwo!30418 (regOne!30418 r!7292)) lt!2167578 s!2326))))

(assert (=> b!5304045 (= (isDefined!11767 (findConcatSeparation!1478 (regTwo!30418 (regOne!30418 r!7292)) lt!2167578 Nil!61036 s!2326 s!2326)) (Exists!2134 lambda!269691))))

(declare-fun lt!2167595 () Unit!153330)

(assert (=> b!5304045 (= lt!2167595 (lemmaFindConcatSeparationEquivalentToExists!1242 (regTwo!30418 (regOne!30418 r!7292)) lt!2167578 s!2326))))

(assert (=> b!5304045 (= lt!2167578 (generalisedConcat!622 (t!374363 (exprs!4837 (h!67483 zl!343)))))))

(declare-fun matchRSpec!2056 (Regex!14953 List!61160) Bool)

(assert (=> b!5304045 (= lt!2167606 (matchRSpec!2056 lt!2167594 s!2326))))

(declare-fun lt!2167601 () Unit!153330)

(declare-fun mainMatchTheorem!2056 (Regex!14953 List!61160) Unit!153330)

(assert (=> b!5304045 (= lt!2167601 (mainMatchTheorem!2056 lt!2167594 s!2326))))

(assert (=> b!5304045 (= (Exists!2134 lambda!269689) (Exists!2134 lambda!269690))))

(declare-fun lt!2167571 () Unit!153330)

(assert (=> b!5304045 (= lt!2167571 (lemmaExistCutMatchRandMatchRSpecEquivalent!788 (regOne!30418 (regOne!30418 r!7292)) lt!2167594 s!2326))))

(assert (=> b!5304045 (= (isDefined!11767 (findConcatSeparation!1478 (regOne!30418 (regOne!30418 r!7292)) lt!2167594 Nil!61036 s!2326 s!2326)) (Exists!2134 lambda!269689))))

(declare-fun lt!2167612 () Unit!153330)

(assert (=> b!5304045 (= lt!2167612 (lemmaFindConcatSeparationEquivalentToExists!1242 (regOne!30418 (regOne!30418 r!7292)) lt!2167594 s!2326))))

(declare-fun lt!2167609 () Regex!14953)

(assert (=> b!5304045 (= lt!2167579 (matchRSpec!2056 lt!2167609 s!2326))))

(declare-fun lt!2167607 () Unit!153330)

(assert (=> b!5304045 (= lt!2167607 (mainMatchTheorem!2056 lt!2167609 s!2326))))

(assert (=> b!5304045 (= lt!2167606 lt!2167593)))

(assert (=> b!5304045 (= lt!2167593 (matchZipper!1197 lt!2167614 s!2326))))

(declare-fun matchR!7138 (Regex!14953 List!61160) Bool)

(assert (=> b!5304045 (= lt!2167606 (matchR!7138 lt!2167594 s!2326))))

(declare-fun lt!2167570 () Unit!153330)

(declare-fun theoremZipperRegexEquiv!363 ((InoxSet Context!8674) List!61159 Regex!14953 List!61160) Unit!153330)

(assert (=> b!5304045 (= lt!2167570 (theoremZipperRegexEquiv!363 lt!2167614 (Cons!61035 lt!2167597 Nil!61035) lt!2167594 s!2326))))

(assert (=> b!5304045 (= lt!2167594 (generalisedConcat!622 lt!2167605))))

(assert (=> b!5304045 (= lt!2167579 lt!2167584)))

(assert (=> b!5304045 (= lt!2167584 (matchZipper!1197 lt!2167590 s!2326))))

(assert (=> b!5304045 (= lt!2167579 (matchR!7138 lt!2167609 s!2326))))

(declare-fun lt!2167600 () List!61159)

(declare-fun lt!2167602 () Unit!153330)

(assert (=> b!5304045 (= lt!2167602 (theoremZipperRegexEquiv!363 lt!2167590 lt!2167600 lt!2167609 s!2326))))

(assert (=> b!5304045 (= lt!2167609 (generalisedConcat!622 lt!2167581))))

(declare-fun b!5304046 () Bool)

(declare-fun res!2250028 () Bool)

(assert (=> b!5304046 (=> res!2250028 e!3296436)))

(declare-fun isEmpty!32991 (List!61159) Bool)

(assert (=> b!5304046 (= res!2250028 (not (isEmpty!32991 (t!374364 zl!343))))))

(declare-fun b!5304047 () Bool)

(declare-fun e!3296442 () Bool)

(assert (=> b!5304047 (= e!3296442 (matchZipper!1197 lt!2167588 (t!374365 s!2326)))))

(declare-fun b!5304048 () Bool)

(declare-fun res!2250043 () Bool)

(assert (=> b!5304048 (=> res!2250043 e!3296423)))

(declare-fun zipperDepth!70 (List!61159) Int)

(assert (=> b!5304048 (= res!2250043 (> (zipperDepth!70 lt!2167600) (zipperDepth!70 zl!343)))))

(declare-fun tp!1478749 () Bool)

(declare-fun setNonEmpty!34091 () Bool)

(declare-fun setElem!34091 () Context!8674)

(declare-fun inv!80629 (Context!8674) Bool)

(assert (=> setNonEmpty!34091 (= setRes!34091 (and tp!1478749 (inv!80629 setElem!34091) e!3296439))))

(declare-fun setRest!34091 () (InoxSet Context!8674))

(assert (=> setNonEmpty!34091 (= z!1189 ((_ map or) (store ((as const (Array Context!8674 Bool)) false) setElem!34091 true) setRest!34091))))

(declare-fun b!5304049 () Bool)

(assert (=> b!5304049 (= e!3296421 e!3296432)))

(declare-fun res!2250025 () Bool)

(assert (=> b!5304049 (=> res!2250025 e!3296432)))

(assert (=> b!5304049 (= res!2250025 e!3296425)))

(declare-fun res!2250027 () Bool)

(assert (=> b!5304049 (=> (not res!2250027) (not e!3296425))))

(declare-fun lt!2167568 () Bool)

(declare-fun lt!2167603 () Bool)

(assert (=> b!5304049 (= res!2250027 (not (= lt!2167568 lt!2167603)))))

(assert (=> b!5304049 (= lt!2167568 (matchZipper!1197 lt!2167604 (t!374365 s!2326)))))

(assert (=> b!5304049 (= (matchZipper!1197 lt!2167576 (t!374365 s!2326)) e!3296434)))

(declare-fun res!2250052 () Bool)

(assert (=> b!5304049 (=> res!2250052 e!3296434)))

(assert (=> b!5304049 (= res!2250052 lt!2167603)))

(assert (=> b!5304049 (= lt!2167603 (matchZipper!1197 lt!2167580 (t!374365 s!2326)))))

(declare-fun lt!2167598 () Unit!153330)

(assert (=> b!5304049 (= lt!2167598 (lemmaZipperConcatMatchesSameAsBothZippers!190 lt!2167580 lt!2167596 (t!374365 s!2326)))))

(declare-fun b!5304050 () Bool)

(declare-fun res!2250050 () Bool)

(assert (=> b!5304050 (=> (not res!2250050) (not e!3296426))))

(declare-fun toList!8737 ((InoxSet Context!8674)) List!61159)

(assert (=> b!5304050 (= res!2250050 (= (toList!8737 z!1189) zl!343))))

(declare-fun b!5304051 () Bool)

(declare-fun e!3296438 () Bool)

(declare-fun e!3296427 () Bool)

(assert (=> b!5304051 (= e!3296438 e!3296427)))

(declare-fun res!2250032 () Bool)

(assert (=> b!5304051 (=> res!2250032 e!3296427)))

(declare-fun lt!2167599 () Regex!14953)

(assert (=> b!5304051 (= res!2250032 (not (= (exprs!4837 (h!67483 zl!343)) (Cons!61034 lt!2167599 (t!374363 (exprs!4837 (h!67483 zl!343)))))))))

(assert (=> b!5304051 (= lt!2167599 (Concat!23798 (regOne!30418 (regOne!30418 r!7292)) (regTwo!30418 (regOne!30418 r!7292))))))

(declare-fun b!5304052 () Bool)

(declare-fun res!2250046 () Bool)

(assert (=> b!5304052 (=> res!2250046 e!3296427)))

(declare-fun contextDepthTotal!94 (Context!8674) Int)

(assert (=> b!5304052 (= res!2250046 (>= (contextDepthTotal!94 lt!2167592) (contextDepthTotal!94 (h!67483 zl!343))))))

(declare-fun b!5304053 () Bool)

(declare-fun tp!1478745 () Bool)

(declare-fun tp!1478753 () Bool)

(assert (=> b!5304053 (= e!3296430 (and tp!1478745 tp!1478753))))

(declare-fun b!5304054 () Bool)

(declare-fun e!3296437 () Bool)

(declare-fun tp!1478744 () Bool)

(assert (=> b!5304054 (= e!3296437 tp!1478744)))

(assert (=> b!5304055 (= e!3296428 e!3296441)))

(declare-fun res!2250026 () Bool)

(assert (=> b!5304055 (=> res!2250026 e!3296441)))

(assert (=> b!5304055 (= res!2250026 (or (and ((_ is ElementMatch!14953) (regOne!30418 r!7292)) (= (c!920805 (regOne!30418 r!7292)) (h!67484 s!2326))) ((_ is Union!14953) (regOne!30418 r!7292)) (not ((_ is Concat!23798) (regOne!30418 r!7292)))))))

(declare-fun lt!2167613 () Unit!153330)

(assert (=> b!5304055 (= lt!2167613 e!3296433)))

(declare-fun c!920804 () Bool)

(assert (=> b!5304055 (= c!920804 (nullable!5122 (h!67482 (exprs!4837 (h!67483 zl!343)))))))

(assert (=> b!5304055 (= (flatMap!680 z!1189 lambda!269688) (derivationStepZipperUp!325 (h!67483 zl!343) (h!67484 s!2326)))))

(declare-fun lt!2167615 () Unit!153330)

(assert (=> b!5304055 (= lt!2167615 (lemmaFlatMapOnSingletonSet!212 z!1189 (h!67483 zl!343) lambda!269688))))

(assert (=> b!5304055 (= lt!2167574 (derivationStepZipperUp!325 lt!2167572 (h!67484 s!2326)))))

(assert (=> b!5304055 (= lt!2167604 (derivationStepZipperDown!401 (h!67482 (exprs!4837 (h!67483 zl!343))) lt!2167572 (h!67484 s!2326)))))

(assert (=> b!5304055 (= lt!2167572 (Context!8675 (t!374363 (exprs!4837 (h!67483 zl!343)))))))

(declare-fun lt!2167577 () (InoxSet Context!8674))

(assert (=> b!5304055 (= lt!2167577 (derivationStepZipperUp!325 (Context!8675 (Cons!61034 (h!67482 (exprs!4837 (h!67483 zl!343))) (t!374363 (exprs!4837 (h!67483 zl!343))))) (h!67484 s!2326)))))

(declare-fun b!5304056 () Bool)

(declare-fun Unit!153333 () Unit!153330)

(assert (=> b!5304056 (= e!3296433 Unit!153333)))

(declare-fun b!5304057 () Bool)

(assert (=> b!5304057 (= e!3296427 e!3296423)))

(declare-fun res!2250031 () Bool)

(assert (=> b!5304057 (=> res!2250031 e!3296423)))

(declare-fun zipperDepthTotal!114 (List!61159) Int)

(assert (=> b!5304057 (= res!2250031 (>= (zipperDepthTotal!114 lt!2167600) (zipperDepthTotal!114 zl!343)))))

(assert (=> b!5304057 (= lt!2167600 (Cons!61035 lt!2167592 Nil!61035))))

(declare-fun b!5304058 () Bool)

(declare-fun res!2250049 () Bool)

(assert (=> b!5304058 (=> res!2250049 e!3296428)))

(declare-fun isEmpty!32992 (List!61158) Bool)

(assert (=> b!5304058 (= res!2250049 (isEmpty!32992 (t!374363 (exprs!4837 (h!67483 zl!343)))))))

(declare-fun b!5304059 () Bool)

(declare-fun tp!1478751 () Bool)

(assert (=> b!5304059 (= e!3296430 tp!1478751)))

(declare-fun b!5304060 () Bool)

(assert (=> b!5304060 (= e!3296429 e!3296438)))

(declare-fun res!2250033 () Bool)

(assert (=> b!5304060 (=> res!2250033 e!3296438)))

(declare-fun e!3296424 () Bool)

(assert (=> b!5304060 (= res!2250033 e!3296424)))

(declare-fun res!2250038 () Bool)

(assert (=> b!5304060 (=> (not res!2250038) (not e!3296424))))

(assert (=> b!5304060 (= res!2250038 (not (= lt!2167568 (matchZipper!1197 lt!2167587 (t!374365 s!2326)))))))

(assert (=> b!5304060 (= (matchZipper!1197 lt!2167575 (t!374365 s!2326)) e!3296442)))

(declare-fun res!2250047 () Bool)

(assert (=> b!5304060 (=> res!2250047 e!3296442)))

(assert (=> b!5304060 (= res!2250047 lt!2167603)))

(declare-fun lt!2167586 () Unit!153330)

(assert (=> b!5304060 (= lt!2167586 (lemmaZipperConcatMatchesSameAsBothZippers!190 lt!2167580 lt!2167588 (t!374365 s!2326)))))

(assert (=> b!5304060 (= (flatMap!680 lt!2167614 lambda!269688) (derivationStepZipperUp!325 lt!2167597 (h!67484 s!2326)))))

(declare-fun lt!2167582 () Unit!153330)

(assert (=> b!5304060 (= lt!2167582 (lemmaFlatMapOnSingletonSet!212 lt!2167614 lt!2167597 lambda!269688))))

(declare-fun b!5304061 () Bool)

(declare-fun res!2250041 () Bool)

(assert (=> b!5304061 (=> res!2250041 e!3296440)))

(assert (=> b!5304061 (= res!2250041 (not (= lt!2167616 (matchR!7138 (Concat!23798 (regOne!30418 r!7292) (regTwo!30418 r!7292)) s!2326))))))

(declare-fun tp!1478747 () Bool)

(declare-fun b!5304062 () Bool)

(assert (=> b!5304062 (= e!3296435 (and (inv!80629 (h!67483 zl!343)) e!3296437 tp!1478747))))

(declare-fun b!5304063 () Bool)

(assert (=> b!5304063 (= e!3296426 (not e!3296436))))

(declare-fun res!2250053 () Bool)

(assert (=> b!5304063 (=> res!2250053 e!3296436)))

(assert (=> b!5304063 (= res!2250053 (not ((_ is Cons!61035) zl!343)))))

(assert (=> b!5304063 (= lt!2167616 (matchRSpec!2056 r!7292 s!2326))))

(assert (=> b!5304063 (= lt!2167616 (matchR!7138 r!7292 s!2326))))

(declare-fun lt!2167591 () Unit!153330)

(assert (=> b!5304063 (= lt!2167591 (mainMatchTheorem!2056 r!7292 s!2326))))

(declare-fun b!5304064 () Bool)

(declare-fun res!2250040 () Bool)

(assert (=> b!5304064 (=> res!2250040 e!3296436)))

(declare-fun generalisedUnion!882 (List!61158) Regex!14953)

(declare-fun unfocusZipperList!395 (List!61159) List!61158)

(assert (=> b!5304064 (= res!2250040 (not (= r!7292 (generalisedUnion!882 (unfocusZipperList!395 zl!343)))))))

(declare-fun b!5304065 () Bool)

(assert (=> b!5304065 (= e!3296424 (not (matchZipper!1197 (derivationStepZipper!1196 lt!2167614 (h!67484 s!2326)) (t!374365 s!2326))))))

(declare-fun b!5304066 () Bool)

(declare-fun res!2250029 () Bool)

(assert (=> b!5304066 (=> res!2250029 e!3296440)))

(assert (=> b!5304066 (= res!2250029 (not (= lt!2167616 (matchR!7138 (Concat!23798 lt!2167599 (regTwo!30418 r!7292)) s!2326))))))

(declare-fun b!5304067 () Bool)

(declare-fun tp!1478748 () Bool)

(declare-fun tp!1478752 () Bool)

(assert (=> b!5304067 (= e!3296430 (and tp!1478748 tp!1478752))))

(assert (= (and start!559422 res!2250051) b!5304050))

(assert (= (and b!5304050 res!2250050) b!5304039))

(assert (= (and b!5304039 res!2250036) b!5304063))

(assert (= (and b!5304063 (not res!2250053)) b!5304046))

(assert (= (and b!5304046 (not res!2250028)) b!5304030))

(assert (= (and b!5304030 (not res!2250030)) b!5304031))

(assert (= (and b!5304031 (not res!2250035)) b!5304064))

(assert (= (and b!5304064 (not res!2250040)) b!5304043))

(assert (= (and b!5304043 (not res!2250039)) b!5304035))

(assert (= (and b!5304035 (not res!2250034)) b!5304058))

(assert (= (and b!5304058 (not res!2250049)) b!5304055))

(assert (= (and b!5304055 c!920804) b!5304041))

(assert (= (and b!5304055 (not c!920804)) b!5304056))

(assert (= (and b!5304041 (not res!2250042)) b!5304036))

(assert (= (and b!5304055 (not res!2250026)) b!5304042))

(assert (= (and b!5304042 (not res!2250045)) b!5304032))

(assert (= (and b!5304032 (not res!2250044)) b!5304049))

(assert (= (and b!5304049 (not res!2250052)) b!5304044))

(assert (= (and b!5304049 res!2250027) b!5304037))

(assert (= (and b!5304049 (not res!2250025)) b!5304033))

(assert (= (and b!5304033 (not res!2250037)) b!5304060))

(assert (= (and b!5304060 (not res!2250047)) b!5304047))

(assert (= (and b!5304060 res!2250038) b!5304065))

(assert (= (and b!5304060 (not res!2250033)) b!5304051))

(assert (= (and b!5304051 (not res!2250032)) b!5304052))

(assert (= (and b!5304052 (not res!2250046)) b!5304057))

(assert (= (and b!5304057 (not res!2250031)) b!5304048))

(assert (= (and b!5304048 (not res!2250043)) b!5304045))

(assert (= (and b!5304045 (not res!2250048)) b!5304061))

(assert (= (and b!5304061 (not res!2250041)) b!5304066))

(assert (= (and b!5304066 (not res!2250029)) b!5304040))

(assert (= (and start!559422 ((_ is ElementMatch!14953) r!7292)) b!5304034))

(assert (= (and start!559422 ((_ is Concat!23798) r!7292)) b!5304067))

(assert (= (and start!559422 ((_ is Star!14953) r!7292)) b!5304059))

(assert (= (and start!559422 ((_ is Union!14953) r!7292)) b!5304053))

(assert (= (and start!559422 condSetEmpty!34091) setIsEmpty!34091))

(assert (= (and start!559422 (not condSetEmpty!34091)) setNonEmpty!34091))

(assert (= setNonEmpty!34091 b!5304038))

(assert (= b!5304062 b!5304054))

(assert (= (and start!559422 ((_ is Cons!61035) zl!343)) b!5304062))

(assert (= (and start!559422 ((_ is Cons!61036) s!2326)) b!5304029))

(declare-fun m!6341350 () Bool)

(assert (=> b!5304042 m!6341350))

(declare-fun m!6341352 () Bool)

(assert (=> b!5304048 m!6341352))

(declare-fun m!6341354 () Bool)

(assert (=> b!5304048 m!6341354))

(declare-fun m!6341356 () Bool)

(assert (=> b!5304032 m!6341356))

(declare-fun m!6341358 () Bool)

(assert (=> b!5304032 m!6341358))

(declare-fun m!6341360 () Bool)

(assert (=> b!5304066 m!6341360))

(declare-fun m!6341362 () Bool)

(assert (=> b!5304047 m!6341362))

(declare-fun m!6341364 () Bool)

(assert (=> b!5304058 m!6341364))

(declare-fun m!6341366 () Bool)

(assert (=> b!5304064 m!6341366))

(assert (=> b!5304064 m!6341366))

(declare-fun m!6341368 () Bool)

(assert (=> b!5304064 m!6341368))

(declare-fun m!6341370 () Bool)

(assert (=> b!5304065 m!6341370))

(assert (=> b!5304065 m!6341370))

(declare-fun m!6341372 () Bool)

(assert (=> b!5304065 m!6341372))

(declare-fun m!6341374 () Bool)

(assert (=> b!5304041 m!6341374))

(declare-fun m!6341376 () Bool)

(assert (=> b!5304041 m!6341376))

(declare-fun m!6341378 () Bool)

(assert (=> b!5304041 m!6341378))

(declare-fun m!6341380 () Bool)

(assert (=> b!5304045 m!6341380))

(declare-fun m!6341382 () Bool)

(assert (=> b!5304045 m!6341382))

(declare-fun m!6341384 () Bool)

(assert (=> b!5304045 m!6341384))

(declare-fun m!6341386 () Bool)

(assert (=> b!5304045 m!6341386))

(declare-fun m!6341388 () Bool)

(assert (=> b!5304045 m!6341388))

(declare-fun m!6341390 () Bool)

(assert (=> b!5304045 m!6341390))

(declare-fun m!6341392 () Bool)

(assert (=> b!5304045 m!6341392))

(assert (=> b!5304045 m!6341384))

(declare-fun m!6341394 () Bool)

(assert (=> b!5304045 m!6341394))

(declare-fun m!6341396 () Bool)

(assert (=> b!5304045 m!6341396))

(declare-fun m!6341398 () Bool)

(assert (=> b!5304045 m!6341398))

(declare-fun m!6341400 () Bool)

(assert (=> b!5304045 m!6341400))

(declare-fun m!6341402 () Bool)

(assert (=> b!5304045 m!6341402))

(declare-fun m!6341404 () Bool)

(assert (=> b!5304045 m!6341404))

(declare-fun m!6341406 () Bool)

(assert (=> b!5304045 m!6341406))

(declare-fun m!6341408 () Bool)

(assert (=> b!5304045 m!6341408))

(declare-fun m!6341410 () Bool)

(assert (=> b!5304045 m!6341410))

(declare-fun m!6341412 () Bool)

(assert (=> b!5304045 m!6341412))

(declare-fun m!6341414 () Bool)

(assert (=> b!5304045 m!6341414))

(declare-fun m!6341416 () Bool)

(assert (=> b!5304045 m!6341416))

(declare-fun m!6341418 () Bool)

(assert (=> b!5304045 m!6341418))

(declare-fun m!6341420 () Bool)

(assert (=> b!5304045 m!6341420))

(assert (=> b!5304045 m!6341416))

(declare-fun m!6341422 () Bool)

(assert (=> b!5304045 m!6341422))

(assert (=> b!5304045 m!6341382))

(declare-fun m!6341424 () Bool)

(assert (=> b!5304045 m!6341424))

(declare-fun m!6341426 () Bool)

(assert (=> b!5304045 m!6341426))

(declare-fun m!6341428 () Bool)

(assert (=> b!5304045 m!6341428))

(assert (=> b!5304045 m!6341406))

(declare-fun m!6341430 () Bool)

(assert (=> b!5304045 m!6341430))

(declare-fun m!6341432 () Bool)

(assert (=> b!5304060 m!6341432))

(declare-fun m!6341434 () Bool)

(assert (=> b!5304060 m!6341434))

(declare-fun m!6341436 () Bool)

(assert (=> b!5304060 m!6341436))

(declare-fun m!6341438 () Bool)

(assert (=> b!5304060 m!6341438))

(declare-fun m!6341440 () Bool)

(assert (=> b!5304060 m!6341440))

(declare-fun m!6341442 () Bool)

(assert (=> b!5304060 m!6341442))

(declare-fun m!6341444 () Bool)

(assert (=> setNonEmpty!34091 m!6341444))

(declare-fun m!6341446 () Bool)

(assert (=> b!5304063 m!6341446))

(declare-fun m!6341448 () Bool)

(assert (=> b!5304063 m!6341448))

(declare-fun m!6341450 () Bool)

(assert (=> b!5304063 m!6341450))

(declare-fun m!6341452 () Bool)

(assert (=> b!5304039 m!6341452))

(declare-fun m!6341454 () Bool)

(assert (=> b!5304035 m!6341454))

(declare-fun m!6341456 () Bool)

(assert (=> b!5304035 m!6341456))

(declare-fun m!6341458 () Bool)

(assert (=> b!5304035 m!6341458))

(declare-fun m!6341460 () Bool)

(assert (=> b!5304035 m!6341460))

(declare-fun m!6341462 () Bool)

(assert (=> b!5304035 m!6341462))

(assert (=> b!5304035 m!6341454))

(assert (=> b!5304035 m!6341458))

(declare-fun m!6341464 () Bool)

(assert (=> b!5304035 m!6341464))

(declare-fun m!6341466 () Bool)

(assert (=> b!5304037 m!6341466))

(declare-fun m!6341468 () Bool)

(assert (=> b!5304052 m!6341468))

(declare-fun m!6341470 () Bool)

(assert (=> b!5304052 m!6341470))

(declare-fun m!6341472 () Bool)

(assert (=> b!5304061 m!6341472))

(declare-fun m!6341474 () Bool)

(assert (=> b!5304062 m!6341474))

(declare-fun m!6341476 () Bool)

(assert (=> b!5304046 m!6341476))

(declare-fun m!6341478 () Bool)

(assert (=> b!5304033 m!6341478))

(assert (=> b!5304033 m!6341436))

(declare-fun m!6341480 () Bool)

(assert (=> b!5304033 m!6341480))

(declare-fun m!6341482 () Bool)

(assert (=> b!5304033 m!6341482))

(declare-fun m!6341484 () Bool)

(assert (=> b!5304033 m!6341484))

(declare-fun m!6341486 () Bool)

(assert (=> b!5304033 m!6341486))

(declare-fun m!6341488 () Bool)

(assert (=> b!5304033 m!6341488))

(declare-fun m!6341490 () Bool)

(assert (=> b!5304030 m!6341490))

(declare-fun m!6341492 () Bool)

(assert (=> b!5304040 m!6341492))

(declare-fun m!6341494 () Bool)

(assert (=> b!5304055 m!6341494))

(declare-fun m!6341496 () Bool)

(assert (=> b!5304055 m!6341496))

(declare-fun m!6341498 () Bool)

(assert (=> b!5304055 m!6341498))

(declare-fun m!6341500 () Bool)

(assert (=> b!5304055 m!6341500))

(declare-fun m!6341502 () Bool)

(assert (=> b!5304055 m!6341502))

(declare-fun m!6341504 () Bool)

(assert (=> b!5304055 m!6341504))

(declare-fun m!6341506 () Bool)

(assert (=> b!5304055 m!6341506))

(declare-fun m!6341508 () Bool)

(assert (=> b!5304057 m!6341508))

(declare-fun m!6341510 () Bool)

(assert (=> b!5304057 m!6341510))

(declare-fun m!6341512 () Bool)

(assert (=> start!559422 m!6341512))

(declare-fun m!6341514 () Bool)

(assert (=> b!5304050 m!6341514))

(declare-fun m!6341516 () Bool)

(assert (=> b!5304036 m!6341516))

(assert (=> b!5304044 m!6341466))

(assert (=> b!5304049 m!6341376))

(declare-fun m!6341518 () Bool)

(assert (=> b!5304049 m!6341518))

(declare-fun m!6341520 () Bool)

(assert (=> b!5304049 m!6341520))

(declare-fun m!6341522 () Bool)

(assert (=> b!5304049 m!6341522))

(check-sat (not b!5304054) (not b!5304045) (not b!5304039) (not b!5304057) (not b!5304041) (not b!5304042) (not b!5304061) (not b!5304029) (not b!5304050) (not b!5304049) (not b!5304038) (not b!5304059) (not setNonEmpty!34091) (not b!5304033) (not b!5304067) (not b!5304047) (not b!5304058) (not b!5304046) tp_is_empty!39159 (not b!5304035) (not b!5304060) (not b!5304044) (not b!5304052) (not b!5304066) (not b!5304048) (not start!559422) (not b!5304036) (not b!5304053) (not b!5304063) (not b!5304030) (not b!5304032) (not b!5304040) (not b!5304055) (not b!5304037) (not b!5304062) (not b!5304064) (not b!5304065))
(check-sat)
(get-model)

(declare-fun d!1705146 () Bool)

(declare-fun lt!2167712 () Int)

(assert (=> d!1705146 (>= lt!2167712 0)))

(declare-fun e!3296761 () Int)

(assert (=> d!1705146 (= lt!2167712 e!3296761)))

(declare-fun c!920979 () Bool)

(assert (=> d!1705146 (= c!920979 ((_ is Cons!61035) lt!2167600))))

(assert (=> d!1705146 (= (zipperDepthTotal!114 lt!2167600) lt!2167712)))

(declare-fun b!5304641 () Bool)

(assert (=> b!5304641 (= e!3296761 (+ (contextDepthTotal!94 (h!67483 lt!2167600)) (zipperDepthTotal!114 (t!374364 lt!2167600))))))

(declare-fun b!5304642 () Bool)

(assert (=> b!5304642 (= e!3296761 0)))

(assert (= (and d!1705146 c!920979) b!5304641))

(assert (= (and d!1705146 (not c!920979)) b!5304642))

(declare-fun m!6342044 () Bool)

(assert (=> b!5304641 m!6342044))

(declare-fun m!6342046 () Bool)

(assert (=> b!5304641 m!6342046))

(assert (=> b!5304057 d!1705146))

(declare-fun d!1705148 () Bool)

(declare-fun lt!2167713 () Int)

(assert (=> d!1705148 (>= lt!2167713 0)))

(declare-fun e!3296762 () Int)

(assert (=> d!1705148 (= lt!2167713 e!3296762)))

(declare-fun c!920980 () Bool)

(assert (=> d!1705148 (= c!920980 ((_ is Cons!61035) zl!343))))

(assert (=> d!1705148 (= (zipperDepthTotal!114 zl!343) lt!2167713)))

(declare-fun b!5304643 () Bool)

(assert (=> b!5304643 (= e!3296762 (+ (contextDepthTotal!94 (h!67483 zl!343)) (zipperDepthTotal!114 (t!374364 zl!343))))))

(declare-fun b!5304644 () Bool)

(assert (=> b!5304644 (= e!3296762 0)))

(assert (= (and d!1705148 c!920980) b!5304643))

(assert (= (and d!1705148 (not c!920980)) b!5304644))

(assert (=> b!5304643 m!6341470))

(declare-fun m!6342048 () Bool)

(assert (=> b!5304643 m!6342048))

(assert (=> b!5304057 d!1705148))

(declare-fun d!1705150 () Bool)

(declare-fun c!920983 () Bool)

(declare-fun isEmpty!32995 (List!61160) Bool)

(assert (=> d!1705150 (= c!920983 (isEmpty!32995 (t!374365 s!2326)))))

(declare-fun e!3296765 () Bool)

(assert (=> d!1705150 (= (matchZipper!1197 lt!2167596 (t!374365 s!2326)) e!3296765)))

(declare-fun b!5304649 () Bool)

(declare-fun nullableZipper!1326 ((InoxSet Context!8674)) Bool)

(assert (=> b!5304649 (= e!3296765 (nullableZipper!1326 lt!2167596))))

(declare-fun b!5304650 () Bool)

(declare-fun head!11370 (List!61160) C!30176)

(declare-fun tail!10467 (List!61160) List!61160)

(assert (=> b!5304650 (= e!3296765 (matchZipper!1197 (derivationStepZipper!1196 lt!2167596 (head!11370 (t!374365 s!2326))) (tail!10467 (t!374365 s!2326))))))

(assert (= (and d!1705150 c!920983) b!5304649))

(assert (= (and d!1705150 (not c!920983)) b!5304650))

(declare-fun m!6342050 () Bool)

(assert (=> d!1705150 m!6342050))

(declare-fun m!6342052 () Bool)

(assert (=> b!5304649 m!6342052))

(declare-fun m!6342054 () Bool)

(assert (=> b!5304650 m!6342054))

(assert (=> b!5304650 m!6342054))

(declare-fun m!6342056 () Bool)

(assert (=> b!5304650 m!6342056))

(declare-fun m!6342058 () Bool)

(assert (=> b!5304650 m!6342058))

(assert (=> b!5304650 m!6342056))

(assert (=> b!5304650 m!6342058))

(declare-fun m!6342060 () Bool)

(assert (=> b!5304650 m!6342060))

(assert (=> b!5304037 d!1705150))

(declare-fun d!1705152 () Bool)

(declare-fun lt!2167716 () Regex!14953)

(assert (=> d!1705152 (validRegex!6689 lt!2167716)))

(assert (=> d!1705152 (= lt!2167716 (generalisedUnion!882 (unfocusZipperList!395 zl!343)))))

(assert (=> d!1705152 (= (unfocusZipper!695 zl!343) lt!2167716)))

(declare-fun bs!1230051 () Bool)

(assert (= bs!1230051 d!1705152))

(declare-fun m!6342062 () Bool)

(assert (=> bs!1230051 m!6342062))

(assert (=> bs!1230051 m!6341366))

(assert (=> bs!1230051 m!6341366))

(assert (=> bs!1230051 m!6341368))

(assert (=> b!5304039 d!1705152))

(declare-fun d!1705154 () Bool)

(assert (=> d!1705154 (= (isEmpty!32992 (t!374363 (exprs!4837 (h!67483 zl!343)))) ((_ is Nil!61034) (t!374363 (exprs!4837 (h!67483 zl!343)))))))

(assert (=> b!5304058 d!1705154))

(declare-fun b!5304669 () Bool)

(declare-fun e!3296780 () Option!15064)

(assert (=> b!5304669 (= e!3296780 None!15063)))

(declare-fun b!5304670 () Bool)

(declare-fun res!2250245 () Bool)

(declare-fun e!3296779 () Bool)

(assert (=> b!5304670 (=> (not res!2250245) (not e!3296779))))

(declare-fun lt!2167725 () Option!15064)

(declare-fun get!20988 (Option!15064) tuple2!64304)

(assert (=> b!5304670 (= res!2250245 (matchR!7138 (regTwo!30418 r!7292) (_2!35455 (get!20988 lt!2167725))))))

(declare-fun b!5304671 () Bool)

(declare-fun e!3296776 () Bool)

(assert (=> b!5304671 (= e!3296776 (matchR!7138 (regTwo!30418 r!7292) s!2326))))

(declare-fun b!5304673 () Bool)

(declare-fun lt!2167723 () Unit!153330)

(declare-fun lt!2167724 () Unit!153330)

(assert (=> b!5304673 (= lt!2167723 lt!2167724)))

(declare-fun ++!13306 (List!61160 List!61160) List!61160)

(assert (=> b!5304673 (= (++!13306 (++!13306 Nil!61036 (Cons!61036 (h!67484 s!2326) Nil!61036)) (t!374365 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1721 (List!61160 C!30176 List!61160 List!61160) Unit!153330)

(assert (=> b!5304673 (= lt!2167724 (lemmaMoveElementToOtherListKeepsConcatEq!1721 Nil!61036 (h!67484 s!2326) (t!374365 s!2326) s!2326))))

(assert (=> b!5304673 (= e!3296780 (findConcatSeparation!1478 (regOne!30418 r!7292) (regTwo!30418 r!7292) (++!13306 Nil!61036 (Cons!61036 (h!67484 s!2326) Nil!61036)) (t!374365 s!2326) s!2326))))

(declare-fun b!5304674 () Bool)

(declare-fun e!3296777 () Option!15064)

(assert (=> b!5304674 (= e!3296777 e!3296780)))

(declare-fun c!920988 () Bool)

(assert (=> b!5304674 (= c!920988 ((_ is Nil!61036) s!2326))))

(declare-fun b!5304675 () Bool)

(assert (=> b!5304675 (= e!3296777 (Some!15063 (tuple2!64305 Nil!61036 s!2326)))))

(declare-fun b!5304676 () Bool)

(declare-fun res!2250249 () Bool)

(assert (=> b!5304676 (=> (not res!2250249) (not e!3296779))))

(assert (=> b!5304676 (= res!2250249 (matchR!7138 (regOne!30418 r!7292) (_1!35455 (get!20988 lt!2167725))))))

(declare-fun b!5304677 () Bool)

(assert (=> b!5304677 (= e!3296779 (= (++!13306 (_1!35455 (get!20988 lt!2167725)) (_2!35455 (get!20988 lt!2167725))) s!2326))))

(declare-fun b!5304672 () Bool)

(declare-fun e!3296778 () Bool)

(assert (=> b!5304672 (= e!3296778 (not (isDefined!11767 lt!2167725)))))

(declare-fun d!1705156 () Bool)

(assert (=> d!1705156 e!3296778))

(declare-fun res!2250248 () Bool)

(assert (=> d!1705156 (=> res!2250248 e!3296778)))

(assert (=> d!1705156 (= res!2250248 e!3296779)))

(declare-fun res!2250246 () Bool)

(assert (=> d!1705156 (=> (not res!2250246) (not e!3296779))))

(assert (=> d!1705156 (= res!2250246 (isDefined!11767 lt!2167725))))

(assert (=> d!1705156 (= lt!2167725 e!3296777)))

(declare-fun c!920989 () Bool)

(assert (=> d!1705156 (= c!920989 e!3296776)))

(declare-fun res!2250247 () Bool)

(assert (=> d!1705156 (=> (not res!2250247) (not e!3296776))))

(assert (=> d!1705156 (= res!2250247 (matchR!7138 (regOne!30418 r!7292) Nil!61036))))

(assert (=> d!1705156 (validRegex!6689 (regOne!30418 r!7292))))

(assert (=> d!1705156 (= (findConcatSeparation!1478 (regOne!30418 r!7292) (regTwo!30418 r!7292) Nil!61036 s!2326 s!2326) lt!2167725)))

(assert (= (and d!1705156 res!2250247) b!5304671))

(assert (= (and d!1705156 c!920989) b!5304675))

(assert (= (and d!1705156 (not c!920989)) b!5304674))

(assert (= (and b!5304674 c!920988) b!5304669))

(assert (= (and b!5304674 (not c!920988)) b!5304673))

(assert (= (and d!1705156 res!2250246) b!5304676))

(assert (= (and b!5304676 res!2250249) b!5304670))

(assert (= (and b!5304670 res!2250245) b!5304677))

(assert (= (and d!1705156 (not res!2250248)) b!5304672))

(declare-fun m!6342064 () Bool)

(assert (=> b!5304671 m!6342064))

(declare-fun m!6342066 () Bool)

(assert (=> b!5304677 m!6342066))

(declare-fun m!6342068 () Bool)

(assert (=> b!5304677 m!6342068))

(declare-fun m!6342070 () Bool)

(assert (=> b!5304673 m!6342070))

(assert (=> b!5304673 m!6342070))

(declare-fun m!6342072 () Bool)

(assert (=> b!5304673 m!6342072))

(declare-fun m!6342074 () Bool)

(assert (=> b!5304673 m!6342074))

(assert (=> b!5304673 m!6342070))

(declare-fun m!6342076 () Bool)

(assert (=> b!5304673 m!6342076))

(assert (=> b!5304676 m!6342066))

(declare-fun m!6342078 () Bool)

(assert (=> b!5304676 m!6342078))

(declare-fun m!6342080 () Bool)

(assert (=> b!5304672 m!6342080))

(assert (=> d!1705156 m!6342080))

(declare-fun m!6342082 () Bool)

(assert (=> d!1705156 m!6342082))

(declare-fun m!6342084 () Bool)

(assert (=> d!1705156 m!6342084))

(assert (=> b!5304670 m!6342066))

(declare-fun m!6342086 () Bool)

(assert (=> b!5304670 m!6342086))

(assert (=> b!5304035 d!1705156))

(declare-fun d!1705158 () Bool)

(declare-fun choose!39653 (Int) Bool)

(assert (=> d!1705158 (= (Exists!2134 lambda!269686) (choose!39653 lambda!269686))))

(declare-fun bs!1230052 () Bool)

(assert (= bs!1230052 d!1705158))

(declare-fun m!6342088 () Bool)

(assert (=> bs!1230052 m!6342088))

(assert (=> b!5304035 d!1705158))

(declare-fun bs!1230053 () Bool)

(declare-fun d!1705160 () Bool)

(assert (= bs!1230053 (and d!1705160 b!5304045)))

(declare-fun lambda!269755 () Int)

(assert (=> bs!1230053 (not (= lambda!269755 lambda!269690))))

(declare-fun bs!1230054 () Bool)

(assert (= bs!1230054 (and d!1705160 b!5304035)))

(assert (=> bs!1230054 (not (= lambda!269755 lambda!269687))))

(assert (=> bs!1230053 (= (and (= (regOne!30418 r!7292) (regTwo!30418 (regOne!30418 r!7292))) (= (regTwo!30418 r!7292) lt!2167578)) (= lambda!269755 lambda!269691))))

(assert (=> bs!1230053 (= (and (= (regOne!30418 r!7292) (regOne!30418 (regOne!30418 r!7292))) (= (regTwo!30418 r!7292) lt!2167594)) (= lambda!269755 lambda!269689))))

(assert (=> bs!1230053 (not (= lambda!269755 lambda!269692))))

(assert (=> bs!1230054 (= lambda!269755 lambda!269686)))

(assert (=> d!1705160 true))

(assert (=> d!1705160 true))

(assert (=> d!1705160 true))

(declare-fun lambda!269756 () Int)

(assert (=> bs!1230053 (= (and (= (regOne!30418 r!7292) (regOne!30418 (regOne!30418 r!7292))) (= (regTwo!30418 r!7292) lt!2167594)) (= lambda!269756 lambda!269690))))

(assert (=> bs!1230054 (= lambda!269756 lambda!269687)))

(assert (=> bs!1230053 (not (= lambda!269756 lambda!269689))))

(assert (=> bs!1230053 (= (and (= (regOne!30418 r!7292) (regTwo!30418 (regOne!30418 r!7292))) (= (regTwo!30418 r!7292) lt!2167578)) (= lambda!269756 lambda!269692))))

(assert (=> bs!1230054 (not (= lambda!269756 lambda!269686))))

(declare-fun bs!1230055 () Bool)

(assert (= bs!1230055 d!1705160))

(assert (=> bs!1230055 (not (= lambda!269756 lambda!269755))))

(assert (=> bs!1230053 (not (= lambda!269756 lambda!269691))))

(assert (=> d!1705160 true))

(assert (=> d!1705160 true))

(assert (=> d!1705160 true))

(assert (=> d!1705160 (= (Exists!2134 lambda!269755) (Exists!2134 lambda!269756))))

(declare-fun lt!2167728 () Unit!153330)

(declare-fun choose!39654 (Regex!14953 Regex!14953 List!61160) Unit!153330)

(assert (=> d!1705160 (= lt!2167728 (choose!39654 (regOne!30418 r!7292) (regTwo!30418 r!7292) s!2326))))

(assert (=> d!1705160 (validRegex!6689 (regOne!30418 r!7292))))

(assert (=> d!1705160 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!788 (regOne!30418 r!7292) (regTwo!30418 r!7292) s!2326) lt!2167728)))

(declare-fun m!6342090 () Bool)

(assert (=> bs!1230055 m!6342090))

(declare-fun m!6342092 () Bool)

(assert (=> bs!1230055 m!6342092))

(declare-fun m!6342094 () Bool)

(assert (=> bs!1230055 m!6342094))

(assert (=> bs!1230055 m!6342084))

(assert (=> b!5304035 d!1705160))

(declare-fun d!1705162 () Bool)

(declare-fun isEmpty!32996 (Option!15064) Bool)

(assert (=> d!1705162 (= (isDefined!11767 (findConcatSeparation!1478 (regOne!30418 r!7292) (regTwo!30418 r!7292) Nil!61036 s!2326 s!2326)) (not (isEmpty!32996 (findConcatSeparation!1478 (regOne!30418 r!7292) (regTwo!30418 r!7292) Nil!61036 s!2326 s!2326))))))

(declare-fun bs!1230056 () Bool)

(assert (= bs!1230056 d!1705162))

(assert (=> bs!1230056 m!6341458))

(declare-fun m!6342096 () Bool)

(assert (=> bs!1230056 m!6342096))

(assert (=> b!5304035 d!1705162))

(declare-fun bs!1230057 () Bool)

(declare-fun d!1705164 () Bool)

(assert (= bs!1230057 (and d!1705164 b!5304045)))

(declare-fun lambda!269759 () Int)

(assert (=> bs!1230057 (not (= lambda!269759 lambda!269690))))

(declare-fun bs!1230058 () Bool)

(assert (= bs!1230058 (and d!1705164 d!1705160)))

(assert (=> bs!1230058 (not (= lambda!269759 lambda!269756))))

(declare-fun bs!1230059 () Bool)

(assert (= bs!1230059 (and d!1705164 b!5304035)))

(assert (=> bs!1230059 (not (= lambda!269759 lambda!269687))))

(assert (=> bs!1230057 (= (and (= (regOne!30418 r!7292) (regOne!30418 (regOne!30418 r!7292))) (= (regTwo!30418 r!7292) lt!2167594)) (= lambda!269759 lambda!269689))))

(assert (=> bs!1230057 (not (= lambda!269759 lambda!269692))))

(assert (=> bs!1230059 (= lambda!269759 lambda!269686)))

(assert (=> bs!1230058 (= lambda!269759 lambda!269755)))

(assert (=> bs!1230057 (= (and (= (regOne!30418 r!7292) (regTwo!30418 (regOne!30418 r!7292))) (= (regTwo!30418 r!7292) lt!2167578)) (= lambda!269759 lambda!269691))))

(assert (=> d!1705164 true))

(assert (=> d!1705164 true))

(assert (=> d!1705164 true))

(assert (=> d!1705164 (= (isDefined!11767 (findConcatSeparation!1478 (regOne!30418 r!7292) (regTwo!30418 r!7292) Nil!61036 s!2326 s!2326)) (Exists!2134 lambda!269759))))

(declare-fun lt!2167731 () Unit!153330)

(declare-fun choose!39655 (Regex!14953 Regex!14953 List!61160) Unit!153330)

(assert (=> d!1705164 (= lt!2167731 (choose!39655 (regOne!30418 r!7292) (regTwo!30418 r!7292) s!2326))))

(assert (=> d!1705164 (validRegex!6689 (regOne!30418 r!7292))))

(assert (=> d!1705164 (= (lemmaFindConcatSeparationEquivalentToExists!1242 (regOne!30418 r!7292) (regTwo!30418 r!7292) s!2326) lt!2167731)))

(declare-fun bs!1230060 () Bool)

(assert (= bs!1230060 d!1705164))

(assert (=> bs!1230060 m!6341458))

(assert (=> bs!1230060 m!6342084))

(assert (=> bs!1230060 m!6341458))

(assert (=> bs!1230060 m!6341460))

(declare-fun m!6342098 () Bool)

(assert (=> bs!1230060 m!6342098))

(declare-fun m!6342100 () Bool)

(assert (=> bs!1230060 m!6342100))

(assert (=> b!5304035 d!1705164))

(declare-fun d!1705166 () Bool)

(assert (=> d!1705166 (= (Exists!2134 lambda!269687) (choose!39653 lambda!269687))))

(declare-fun bs!1230061 () Bool)

(assert (= bs!1230061 d!1705166))

(declare-fun m!6342102 () Bool)

(assert (=> bs!1230061 m!6342102))

(assert (=> b!5304035 d!1705166))

(declare-fun d!1705168 () Bool)

(declare-fun c!920990 () Bool)

(assert (=> d!1705168 (= c!920990 (isEmpty!32995 (t!374365 s!2326)))))

(declare-fun e!3296787 () Bool)

(assert (=> d!1705168 (= (matchZipper!1197 lt!2167574 (t!374365 s!2326)) e!3296787)))

(declare-fun b!5304690 () Bool)

(assert (=> b!5304690 (= e!3296787 (nullableZipper!1326 lt!2167574))))

(declare-fun b!5304691 () Bool)

(assert (=> b!5304691 (= e!3296787 (matchZipper!1197 (derivationStepZipper!1196 lt!2167574 (head!11370 (t!374365 s!2326))) (tail!10467 (t!374365 s!2326))))))

(assert (= (and d!1705168 c!920990) b!5304690))

(assert (= (and d!1705168 (not c!920990)) b!5304691))

(assert (=> d!1705168 m!6342050))

(declare-fun m!6342104 () Bool)

(assert (=> b!5304690 m!6342104))

(assert (=> b!5304691 m!6342054))

(assert (=> b!5304691 m!6342054))

(declare-fun m!6342106 () Bool)

(assert (=> b!5304691 m!6342106))

(assert (=> b!5304691 m!6342058))

(assert (=> b!5304691 m!6342106))

(assert (=> b!5304691 m!6342058))

(declare-fun m!6342108 () Bool)

(assert (=> b!5304691 m!6342108))

(assert (=> b!5304036 d!1705168))

(declare-fun d!1705170 () Bool)

(declare-fun dynLambda!24124 (Int Context!8674) (InoxSet Context!8674))

(assert (=> d!1705170 (= (flatMap!680 z!1189 lambda!269688) (dynLambda!24124 lambda!269688 (h!67483 zl!343)))))

(declare-fun lt!2167734 () Unit!153330)

(declare-fun choose!39656 ((InoxSet Context!8674) Context!8674 Int) Unit!153330)

(assert (=> d!1705170 (= lt!2167734 (choose!39656 z!1189 (h!67483 zl!343) lambda!269688))))

(assert (=> d!1705170 (= z!1189 (store ((as const (Array Context!8674 Bool)) false) (h!67483 zl!343) true))))

(assert (=> d!1705170 (= (lemmaFlatMapOnSingletonSet!212 z!1189 (h!67483 zl!343) lambda!269688) lt!2167734)))

(declare-fun b_lambda!204301 () Bool)

(assert (=> (not b_lambda!204301) (not d!1705170)))

(declare-fun bs!1230062 () Bool)

(assert (= bs!1230062 d!1705170))

(assert (=> bs!1230062 m!6341506))

(declare-fun m!6342110 () Bool)

(assert (=> bs!1230062 m!6342110))

(declare-fun m!6342112 () Bool)

(assert (=> bs!1230062 m!6342112))

(declare-fun m!6342114 () Bool)

(assert (=> bs!1230062 m!6342114))

(assert (=> b!5304055 d!1705170))

(declare-fun b!5304702 () Bool)

(declare-fun e!3296796 () (InoxSet Context!8674))

(assert (=> b!5304702 (= e!3296796 ((as const (Array Context!8674 Bool)) false))))

(declare-fun b!5304703 () Bool)

(declare-fun e!3296794 () Bool)

(assert (=> b!5304703 (= e!3296794 (nullable!5122 (h!67482 (exprs!4837 lt!2167572))))))

(declare-fun d!1705172 () Bool)

(declare-fun c!920996 () Bool)

(assert (=> d!1705172 (= c!920996 e!3296794)))

(declare-fun res!2250264 () Bool)

(assert (=> d!1705172 (=> (not res!2250264) (not e!3296794))))

(assert (=> d!1705172 (= res!2250264 ((_ is Cons!61034) (exprs!4837 lt!2167572)))))

(declare-fun e!3296795 () (InoxSet Context!8674))

(assert (=> d!1705172 (= (derivationStepZipperUp!325 lt!2167572 (h!67484 s!2326)) e!3296795)))

(declare-fun b!5304704 () Bool)

(declare-fun call!378146 () (InoxSet Context!8674))

(assert (=> b!5304704 (= e!3296795 ((_ map or) call!378146 (derivationStepZipperUp!325 (Context!8675 (t!374363 (exprs!4837 lt!2167572))) (h!67484 s!2326))))))

(declare-fun b!5304705 () Bool)

(assert (=> b!5304705 (= e!3296796 call!378146)))

(declare-fun bm!378141 () Bool)

(assert (=> bm!378141 (= call!378146 (derivationStepZipperDown!401 (h!67482 (exprs!4837 lt!2167572)) (Context!8675 (t!374363 (exprs!4837 lt!2167572))) (h!67484 s!2326)))))

(declare-fun b!5304706 () Bool)

(assert (=> b!5304706 (= e!3296795 e!3296796)))

(declare-fun c!920995 () Bool)

(assert (=> b!5304706 (= c!920995 ((_ is Cons!61034) (exprs!4837 lt!2167572)))))

(assert (= (and d!1705172 res!2250264) b!5304703))

(assert (= (and d!1705172 c!920996) b!5304704))

(assert (= (and d!1705172 (not c!920996)) b!5304706))

(assert (= (and b!5304706 c!920995) b!5304705))

(assert (= (and b!5304706 (not c!920995)) b!5304702))

(assert (= (or b!5304704 b!5304705) bm!378141))

(declare-fun m!6342116 () Bool)

(assert (=> b!5304703 m!6342116))

(declare-fun m!6342118 () Bool)

(assert (=> b!5304704 m!6342118))

(declare-fun m!6342120 () Bool)

(assert (=> bm!378141 m!6342120))

(assert (=> b!5304055 d!1705172))

(declare-fun d!1705174 () Bool)

(declare-fun nullableFct!1478 (Regex!14953) Bool)

(assert (=> d!1705174 (= (nullable!5122 (h!67482 (exprs!4837 (h!67483 zl!343)))) (nullableFct!1478 (h!67482 (exprs!4837 (h!67483 zl!343)))))))

(declare-fun bs!1230063 () Bool)

(assert (= bs!1230063 d!1705174))

(declare-fun m!6342122 () Bool)

(assert (=> bs!1230063 m!6342122))

(assert (=> b!5304055 d!1705174))

(declare-fun b!5304707 () Bool)

(declare-fun e!3296799 () (InoxSet Context!8674))

(assert (=> b!5304707 (= e!3296799 ((as const (Array Context!8674 Bool)) false))))

(declare-fun b!5304708 () Bool)

(declare-fun e!3296797 () Bool)

(assert (=> b!5304708 (= e!3296797 (nullable!5122 (h!67482 (exprs!4837 (Context!8675 (Cons!61034 (h!67482 (exprs!4837 (h!67483 zl!343))) (t!374363 (exprs!4837 (h!67483 zl!343)))))))))))

(declare-fun d!1705176 () Bool)

(declare-fun c!920998 () Bool)

(assert (=> d!1705176 (= c!920998 e!3296797)))

(declare-fun res!2250265 () Bool)

(assert (=> d!1705176 (=> (not res!2250265) (not e!3296797))))

(assert (=> d!1705176 (= res!2250265 ((_ is Cons!61034) (exprs!4837 (Context!8675 (Cons!61034 (h!67482 (exprs!4837 (h!67483 zl!343))) (t!374363 (exprs!4837 (h!67483 zl!343))))))))))

(declare-fun e!3296798 () (InoxSet Context!8674))

(assert (=> d!1705176 (= (derivationStepZipperUp!325 (Context!8675 (Cons!61034 (h!67482 (exprs!4837 (h!67483 zl!343))) (t!374363 (exprs!4837 (h!67483 zl!343))))) (h!67484 s!2326)) e!3296798)))

(declare-fun call!378147 () (InoxSet Context!8674))

(declare-fun b!5304709 () Bool)

(assert (=> b!5304709 (= e!3296798 ((_ map or) call!378147 (derivationStepZipperUp!325 (Context!8675 (t!374363 (exprs!4837 (Context!8675 (Cons!61034 (h!67482 (exprs!4837 (h!67483 zl!343))) (t!374363 (exprs!4837 (h!67483 zl!343)))))))) (h!67484 s!2326))))))

(declare-fun b!5304710 () Bool)

(assert (=> b!5304710 (= e!3296799 call!378147)))

(declare-fun bm!378142 () Bool)

(assert (=> bm!378142 (= call!378147 (derivationStepZipperDown!401 (h!67482 (exprs!4837 (Context!8675 (Cons!61034 (h!67482 (exprs!4837 (h!67483 zl!343))) (t!374363 (exprs!4837 (h!67483 zl!343))))))) (Context!8675 (t!374363 (exprs!4837 (Context!8675 (Cons!61034 (h!67482 (exprs!4837 (h!67483 zl!343))) (t!374363 (exprs!4837 (h!67483 zl!343)))))))) (h!67484 s!2326)))))

(declare-fun b!5304711 () Bool)

(assert (=> b!5304711 (= e!3296798 e!3296799)))

(declare-fun c!920997 () Bool)

(assert (=> b!5304711 (= c!920997 ((_ is Cons!61034) (exprs!4837 (Context!8675 (Cons!61034 (h!67482 (exprs!4837 (h!67483 zl!343))) (t!374363 (exprs!4837 (h!67483 zl!343))))))))))

(assert (= (and d!1705176 res!2250265) b!5304708))

(assert (= (and d!1705176 c!920998) b!5304709))

(assert (= (and d!1705176 (not c!920998)) b!5304711))

(assert (= (and b!5304711 c!920997) b!5304710))

(assert (= (and b!5304711 (not c!920997)) b!5304707))

(assert (= (or b!5304709 b!5304710) bm!378142))

(declare-fun m!6342124 () Bool)

(assert (=> b!5304708 m!6342124))

(declare-fun m!6342126 () Bool)

(assert (=> b!5304709 m!6342126))

(declare-fun m!6342128 () Bool)

(assert (=> bm!378142 m!6342128))

(assert (=> b!5304055 d!1705176))

(declare-fun d!1705178 () Bool)

(declare-fun choose!39657 ((InoxSet Context!8674) Int) (InoxSet Context!8674))

(assert (=> d!1705178 (= (flatMap!680 z!1189 lambda!269688) (choose!39657 z!1189 lambda!269688))))

(declare-fun bs!1230064 () Bool)

(assert (= bs!1230064 d!1705178))

(declare-fun m!6342130 () Bool)

(assert (=> bs!1230064 m!6342130))

(assert (=> b!5304055 d!1705178))

(declare-fun b!5304712 () Bool)

(declare-fun e!3296802 () (InoxSet Context!8674))

(assert (=> b!5304712 (= e!3296802 ((as const (Array Context!8674 Bool)) false))))

(declare-fun b!5304713 () Bool)

(declare-fun e!3296800 () Bool)

(assert (=> b!5304713 (= e!3296800 (nullable!5122 (h!67482 (exprs!4837 (h!67483 zl!343)))))))

(declare-fun d!1705180 () Bool)

(declare-fun c!921000 () Bool)

(assert (=> d!1705180 (= c!921000 e!3296800)))

(declare-fun res!2250266 () Bool)

(assert (=> d!1705180 (=> (not res!2250266) (not e!3296800))))

(assert (=> d!1705180 (= res!2250266 ((_ is Cons!61034) (exprs!4837 (h!67483 zl!343))))))

(declare-fun e!3296801 () (InoxSet Context!8674))

(assert (=> d!1705180 (= (derivationStepZipperUp!325 (h!67483 zl!343) (h!67484 s!2326)) e!3296801)))

(declare-fun b!5304714 () Bool)

(declare-fun call!378148 () (InoxSet Context!8674))

(assert (=> b!5304714 (= e!3296801 ((_ map or) call!378148 (derivationStepZipperUp!325 (Context!8675 (t!374363 (exprs!4837 (h!67483 zl!343)))) (h!67484 s!2326))))))

(declare-fun b!5304715 () Bool)

(assert (=> b!5304715 (= e!3296802 call!378148)))

(declare-fun bm!378143 () Bool)

(assert (=> bm!378143 (= call!378148 (derivationStepZipperDown!401 (h!67482 (exprs!4837 (h!67483 zl!343))) (Context!8675 (t!374363 (exprs!4837 (h!67483 zl!343)))) (h!67484 s!2326)))))

(declare-fun b!5304716 () Bool)

(assert (=> b!5304716 (= e!3296801 e!3296802)))

(declare-fun c!920999 () Bool)

(assert (=> b!5304716 (= c!920999 ((_ is Cons!61034) (exprs!4837 (h!67483 zl!343))))))

(assert (= (and d!1705180 res!2250266) b!5304713))

(assert (= (and d!1705180 c!921000) b!5304714))

(assert (= (and d!1705180 (not c!921000)) b!5304716))

(assert (= (and b!5304716 c!920999) b!5304715))

(assert (= (and b!5304716 (not c!920999)) b!5304712))

(assert (= (or b!5304714 b!5304715) bm!378143))

(assert (=> b!5304713 m!6341502))

(declare-fun m!6342132 () Bool)

(assert (=> b!5304714 m!6342132))

(declare-fun m!6342134 () Bool)

(assert (=> bm!378143 m!6342134))

(assert (=> b!5304055 d!1705180))

(declare-fun b!5304739 () Bool)

(declare-fun c!921014 () Bool)

(declare-fun e!3296820 () Bool)

(assert (=> b!5304739 (= c!921014 e!3296820)))

(declare-fun res!2250269 () Bool)

(assert (=> b!5304739 (=> (not res!2250269) (not e!3296820))))

(assert (=> b!5304739 (= res!2250269 ((_ is Concat!23798) (h!67482 (exprs!4837 (h!67483 zl!343)))))))

(declare-fun e!3296816 () (InoxSet Context!8674))

(declare-fun e!3296815 () (InoxSet Context!8674))

(assert (=> b!5304739 (= e!3296816 e!3296815)))

(declare-fun b!5304741 () Bool)

(declare-fun e!3296817 () (InoxSet Context!8674))

(assert (=> b!5304741 (= e!3296817 (store ((as const (Array Context!8674 Bool)) false) lt!2167572 true))))

(declare-fun b!5304742 () Bool)

(declare-fun e!3296818 () (InoxSet Context!8674))

(declare-fun call!378163 () (InoxSet Context!8674))

(assert (=> b!5304742 (= e!3296818 call!378163)))

(declare-fun bm!378156 () Bool)

(declare-fun call!378166 () (InoxSet Context!8674))

(declare-fun call!378162 () (InoxSet Context!8674))

(assert (=> bm!378156 (= call!378166 call!378162)))

(declare-fun bm!378157 () Bool)

(declare-fun call!378164 () List!61158)

(declare-fun call!378165 () List!61158)

(assert (=> bm!378157 (= call!378164 call!378165)))

(declare-fun bm!378158 () Bool)

(assert (=> bm!378158 (= call!378163 call!378166)))

(declare-fun call!378161 () (InoxSet Context!8674))

(declare-fun c!921015 () Bool)

(declare-fun bm!378159 () Bool)

(assert (=> bm!378159 (= call!378161 (derivationStepZipperDown!401 (ite c!921015 (regTwo!30419 (h!67482 (exprs!4837 (h!67483 zl!343)))) (regOne!30418 (h!67482 (exprs!4837 (h!67483 zl!343))))) (ite c!921015 lt!2167572 (Context!8675 call!378165)) (h!67484 s!2326)))))

(declare-fun b!5304743 () Bool)

(declare-fun e!3296819 () (InoxSet Context!8674))

(assert (=> b!5304743 (= e!3296815 e!3296819)))

(declare-fun c!921012 () Bool)

(assert (=> b!5304743 (= c!921012 ((_ is Concat!23798) (h!67482 (exprs!4837 (h!67483 zl!343)))))))

(declare-fun b!5304744 () Bool)

(assert (=> b!5304744 (= e!3296819 call!378163)))

(declare-fun bm!378160 () Bool)

(declare-fun $colon$colon!1375 (List!61158 Regex!14953) List!61158)

(assert (=> bm!378160 (= call!378165 ($colon$colon!1375 (exprs!4837 lt!2167572) (ite (or c!921014 c!921012) (regTwo!30418 (h!67482 (exprs!4837 (h!67483 zl!343)))) (h!67482 (exprs!4837 (h!67483 zl!343))))))))

(declare-fun b!5304745 () Bool)

(assert (=> b!5304745 (= e!3296818 ((as const (Array Context!8674 Bool)) false))))

(declare-fun b!5304746 () Bool)

(assert (=> b!5304746 (= e!3296817 e!3296816)))

(assert (=> b!5304746 (= c!921015 ((_ is Union!14953) (h!67482 (exprs!4837 (h!67483 zl!343)))))))

(declare-fun b!5304740 () Bool)

(assert (=> b!5304740 (= e!3296815 ((_ map or) call!378161 call!378166))))

(declare-fun d!1705182 () Bool)

(declare-fun c!921011 () Bool)

(assert (=> d!1705182 (= c!921011 (and ((_ is ElementMatch!14953) (h!67482 (exprs!4837 (h!67483 zl!343)))) (= (c!920805 (h!67482 (exprs!4837 (h!67483 zl!343)))) (h!67484 s!2326))))))

(assert (=> d!1705182 (= (derivationStepZipperDown!401 (h!67482 (exprs!4837 (h!67483 zl!343))) lt!2167572 (h!67484 s!2326)) e!3296817)))

(declare-fun bm!378161 () Bool)

(assert (=> bm!378161 (= call!378162 (derivationStepZipperDown!401 (ite c!921015 (regOne!30419 (h!67482 (exprs!4837 (h!67483 zl!343)))) (ite c!921014 (regTwo!30418 (h!67482 (exprs!4837 (h!67483 zl!343)))) (ite c!921012 (regOne!30418 (h!67482 (exprs!4837 (h!67483 zl!343)))) (reg!15282 (h!67482 (exprs!4837 (h!67483 zl!343))))))) (ite (or c!921015 c!921014) lt!2167572 (Context!8675 call!378164)) (h!67484 s!2326)))))

(declare-fun b!5304747 () Bool)

(assert (=> b!5304747 (= e!3296820 (nullable!5122 (regOne!30418 (h!67482 (exprs!4837 (h!67483 zl!343))))))))

(declare-fun b!5304748 () Bool)

(assert (=> b!5304748 (= e!3296816 ((_ map or) call!378162 call!378161))))

(declare-fun b!5304749 () Bool)

(declare-fun c!921013 () Bool)

(assert (=> b!5304749 (= c!921013 ((_ is Star!14953) (h!67482 (exprs!4837 (h!67483 zl!343)))))))

(assert (=> b!5304749 (= e!3296819 e!3296818)))

(assert (= (and d!1705182 c!921011) b!5304741))

(assert (= (and d!1705182 (not c!921011)) b!5304746))

(assert (= (and b!5304746 c!921015) b!5304748))

(assert (= (and b!5304746 (not c!921015)) b!5304739))

(assert (= (and b!5304739 res!2250269) b!5304747))

(assert (= (and b!5304739 c!921014) b!5304740))

(assert (= (and b!5304739 (not c!921014)) b!5304743))

(assert (= (and b!5304743 c!921012) b!5304744))

(assert (= (and b!5304743 (not c!921012)) b!5304749))

(assert (= (and b!5304749 c!921013) b!5304742))

(assert (= (and b!5304749 (not c!921013)) b!5304745))

(assert (= (or b!5304744 b!5304742) bm!378157))

(assert (= (or b!5304744 b!5304742) bm!378158))

(assert (= (or b!5304740 bm!378157) bm!378160))

(assert (= (or b!5304740 bm!378158) bm!378156))

(assert (= (or b!5304748 b!5304740) bm!378159))

(assert (= (or b!5304748 bm!378156) bm!378161))

(declare-fun m!6342136 () Bool)

(assert (=> bm!378161 m!6342136))

(declare-fun m!6342138 () Bool)

(assert (=> b!5304747 m!6342138))

(declare-fun m!6342140 () Bool)

(assert (=> b!5304741 m!6342140))

(declare-fun m!6342142 () Bool)

(assert (=> bm!378159 m!6342142))

(declare-fun m!6342144 () Bool)

(assert (=> bm!378160 m!6342144))

(assert (=> b!5304055 d!1705182))

(declare-fun bs!1230065 () Bool)

(declare-fun d!1705184 () Bool)

(assert (= bs!1230065 (and d!1705184 b!5304040)))

(declare-fun lambda!269762 () Int)

(assert (=> bs!1230065 (= lambda!269762 lambda!269693)))

(assert (=> d!1705184 (= (inv!80629 (h!67483 zl!343)) (forall!14365 (exprs!4837 (h!67483 zl!343)) lambda!269762))))

(declare-fun bs!1230066 () Bool)

(assert (= bs!1230066 d!1705184))

(declare-fun m!6342146 () Bool)

(assert (=> bs!1230066 m!6342146))

(assert (=> b!5304062 d!1705184))

(declare-fun bs!1230067 () Bool)

(declare-fun d!1705186 () Bool)

(assert (= bs!1230067 (and d!1705186 b!5304040)))

(declare-fun lambda!269765 () Int)

(assert (=> bs!1230067 (= lambda!269765 lambda!269693)))

(declare-fun bs!1230068 () Bool)

(assert (= bs!1230068 (and d!1705186 d!1705184)))

(assert (=> bs!1230068 (= lambda!269765 lambda!269762)))

(declare-fun b!5304770 () Bool)

(declare-fun e!3296833 () Bool)

(declare-fun lt!2167737 () Regex!14953)

(declare-fun head!11371 (List!61158) Regex!14953)

(assert (=> b!5304770 (= e!3296833 (= lt!2167737 (head!11371 (unfocusZipperList!395 zl!343))))))

(declare-fun b!5304771 () Bool)

(declare-fun e!3296836 () Bool)

(assert (=> b!5304771 (= e!3296836 e!3296833)))

(declare-fun c!921026 () Bool)

(declare-fun tail!10468 (List!61158) List!61158)

(assert (=> b!5304771 (= c!921026 (isEmpty!32992 (tail!10468 (unfocusZipperList!395 zl!343))))))

(declare-fun b!5304772 () Bool)

(declare-fun e!3296835 () Regex!14953)

(declare-fun e!3296834 () Regex!14953)

(assert (=> b!5304772 (= e!3296835 e!3296834)))

(declare-fun c!921027 () Bool)

(assert (=> b!5304772 (= c!921027 ((_ is Cons!61034) (unfocusZipperList!395 zl!343)))))

(declare-fun b!5304773 () Bool)

(declare-fun isUnion!301 (Regex!14953) Bool)

(assert (=> b!5304773 (= e!3296833 (isUnion!301 lt!2167737))))

(declare-fun e!3296838 () Bool)

(assert (=> d!1705186 e!3296838))

(declare-fun res!2250275 () Bool)

(assert (=> d!1705186 (=> (not res!2250275) (not e!3296838))))

(assert (=> d!1705186 (= res!2250275 (validRegex!6689 lt!2167737))))

(assert (=> d!1705186 (= lt!2167737 e!3296835)))

(declare-fun c!921024 () Bool)

(declare-fun e!3296837 () Bool)

(assert (=> d!1705186 (= c!921024 e!3296837)))

(declare-fun res!2250274 () Bool)

(assert (=> d!1705186 (=> (not res!2250274) (not e!3296837))))

(assert (=> d!1705186 (= res!2250274 ((_ is Cons!61034) (unfocusZipperList!395 zl!343)))))

(assert (=> d!1705186 (forall!14365 (unfocusZipperList!395 zl!343) lambda!269765)))

(assert (=> d!1705186 (= (generalisedUnion!882 (unfocusZipperList!395 zl!343)) lt!2167737)))

(declare-fun b!5304774 () Bool)

(assert (=> b!5304774 (= e!3296838 e!3296836)))

(declare-fun c!921025 () Bool)

(assert (=> b!5304774 (= c!921025 (isEmpty!32992 (unfocusZipperList!395 zl!343)))))

(declare-fun b!5304775 () Bool)

(assert (=> b!5304775 (= e!3296834 (Union!14953 (h!67482 (unfocusZipperList!395 zl!343)) (generalisedUnion!882 (t!374363 (unfocusZipperList!395 zl!343)))))))

(declare-fun b!5304776 () Bool)

(assert (=> b!5304776 (= e!3296837 (isEmpty!32992 (t!374363 (unfocusZipperList!395 zl!343))))))

(declare-fun b!5304777 () Bool)

(assert (=> b!5304777 (= e!3296835 (h!67482 (unfocusZipperList!395 zl!343)))))

(declare-fun b!5304778 () Bool)

(assert (=> b!5304778 (= e!3296834 EmptyLang!14953)))

(declare-fun b!5304779 () Bool)

(declare-fun isEmptyLang!869 (Regex!14953) Bool)

(assert (=> b!5304779 (= e!3296836 (isEmptyLang!869 lt!2167737))))

(assert (= (and d!1705186 res!2250274) b!5304776))

(assert (= (and d!1705186 c!921024) b!5304777))

(assert (= (and d!1705186 (not c!921024)) b!5304772))

(assert (= (and b!5304772 c!921027) b!5304775))

(assert (= (and b!5304772 (not c!921027)) b!5304778))

(assert (= (and d!1705186 res!2250275) b!5304774))

(assert (= (and b!5304774 c!921025) b!5304779))

(assert (= (and b!5304774 (not c!921025)) b!5304771))

(assert (= (and b!5304771 c!921026) b!5304770))

(assert (= (and b!5304771 (not c!921026)) b!5304773))

(assert (=> b!5304771 m!6341366))

(declare-fun m!6342148 () Bool)

(assert (=> b!5304771 m!6342148))

(assert (=> b!5304771 m!6342148))

(declare-fun m!6342150 () Bool)

(assert (=> b!5304771 m!6342150))

(declare-fun m!6342152 () Bool)

(assert (=> d!1705186 m!6342152))

(assert (=> d!1705186 m!6341366))

(declare-fun m!6342154 () Bool)

(assert (=> d!1705186 m!6342154))

(assert (=> b!5304774 m!6341366))

(declare-fun m!6342156 () Bool)

(assert (=> b!5304774 m!6342156))

(declare-fun m!6342158 () Bool)

(assert (=> b!5304773 m!6342158))

(assert (=> b!5304770 m!6341366))

(declare-fun m!6342160 () Bool)

(assert (=> b!5304770 m!6342160))

(declare-fun m!6342162 () Bool)

(assert (=> b!5304779 m!6342162))

(declare-fun m!6342164 () Bool)

(assert (=> b!5304775 m!6342164))

(declare-fun m!6342166 () Bool)

(assert (=> b!5304776 m!6342166))

(assert (=> b!5304064 d!1705186))

(declare-fun bs!1230069 () Bool)

(declare-fun d!1705188 () Bool)

(assert (= bs!1230069 (and d!1705188 b!5304040)))

(declare-fun lambda!269768 () Int)

(assert (=> bs!1230069 (= lambda!269768 lambda!269693)))

(declare-fun bs!1230070 () Bool)

(assert (= bs!1230070 (and d!1705188 d!1705184)))

(assert (=> bs!1230070 (= lambda!269768 lambda!269762)))

(declare-fun bs!1230071 () Bool)

(assert (= bs!1230071 (and d!1705188 d!1705186)))

(assert (=> bs!1230071 (= lambda!269768 lambda!269765)))

(declare-fun lt!2167740 () List!61158)

(assert (=> d!1705188 (forall!14365 lt!2167740 lambda!269768)))

(declare-fun e!3296841 () List!61158)

(assert (=> d!1705188 (= lt!2167740 e!3296841)))

(declare-fun c!921030 () Bool)

(assert (=> d!1705188 (= c!921030 ((_ is Cons!61035) zl!343))))

(assert (=> d!1705188 (= (unfocusZipperList!395 zl!343) lt!2167740)))

(declare-fun b!5304784 () Bool)

(assert (=> b!5304784 (= e!3296841 (Cons!61034 (generalisedConcat!622 (exprs!4837 (h!67483 zl!343))) (unfocusZipperList!395 (t!374364 zl!343))))))

(declare-fun b!5304785 () Bool)

(assert (=> b!5304785 (= e!3296841 Nil!61034)))

(assert (= (and d!1705188 c!921030) b!5304784))

(assert (= (and d!1705188 (not c!921030)) b!5304785))

(declare-fun m!6342168 () Bool)

(assert (=> d!1705188 m!6342168))

(assert (=> b!5304784 m!6341490))

(declare-fun m!6342170 () Bool)

(assert (=> b!5304784 m!6342170))

(assert (=> b!5304064 d!1705188))

(declare-fun bs!1230072 () Bool)

(declare-fun b!5304828 () Bool)

(assert (= bs!1230072 (and b!5304828 b!5304045)))

(declare-fun lambda!269773 () Int)

(assert (=> bs!1230072 (not (= lambda!269773 lambda!269690))))

(declare-fun bs!1230073 () Bool)

(assert (= bs!1230073 (and b!5304828 d!1705160)))

(assert (=> bs!1230073 (not (= lambda!269773 lambda!269756))))

(declare-fun bs!1230074 () Bool)

(assert (= bs!1230074 (and b!5304828 b!5304035)))

(assert (=> bs!1230074 (not (= lambda!269773 lambda!269687))))

(assert (=> bs!1230072 (not (= lambda!269773 lambda!269692))))

(assert (=> bs!1230074 (not (= lambda!269773 lambda!269686))))

(assert (=> bs!1230073 (not (= lambda!269773 lambda!269755))))

(assert (=> bs!1230072 (not (= lambda!269773 lambda!269691))))

(declare-fun bs!1230075 () Bool)

(assert (= bs!1230075 (and b!5304828 d!1705164)))

(assert (=> bs!1230075 (not (= lambda!269773 lambda!269759))))

(assert (=> bs!1230072 (not (= lambda!269773 lambda!269689))))

(assert (=> b!5304828 true))

(assert (=> b!5304828 true))

(declare-fun bs!1230076 () Bool)

(declare-fun b!5304819 () Bool)

(assert (= bs!1230076 (and b!5304819 b!5304045)))

(declare-fun lambda!269774 () Int)

(assert (=> bs!1230076 (= (and (= (regOne!30418 r!7292) (regOne!30418 (regOne!30418 r!7292))) (= (regTwo!30418 r!7292) lt!2167594)) (= lambda!269774 lambda!269690))))

(declare-fun bs!1230077 () Bool)

(assert (= bs!1230077 (and b!5304819 d!1705160)))

(assert (=> bs!1230077 (= lambda!269774 lambda!269756)))

(declare-fun bs!1230078 () Bool)

(assert (= bs!1230078 (and b!5304819 b!5304035)))

(assert (=> bs!1230078 (= lambda!269774 lambda!269687)))

(assert (=> bs!1230078 (not (= lambda!269774 lambda!269686))))

(assert (=> bs!1230077 (not (= lambda!269774 lambda!269755))))

(assert (=> bs!1230076 (not (= lambda!269774 lambda!269691))))

(declare-fun bs!1230079 () Bool)

(assert (= bs!1230079 (and b!5304819 d!1705164)))

(assert (=> bs!1230079 (not (= lambda!269774 lambda!269759))))

(assert (=> bs!1230076 (not (= lambda!269774 lambda!269689))))

(assert (=> bs!1230076 (= (and (= (regOne!30418 r!7292) (regTwo!30418 (regOne!30418 r!7292))) (= (regTwo!30418 r!7292) lt!2167578)) (= lambda!269774 lambda!269692))))

(declare-fun bs!1230080 () Bool)

(assert (= bs!1230080 (and b!5304819 b!5304828)))

(assert (=> bs!1230080 (not (= lambda!269774 lambda!269773))))

(assert (=> b!5304819 true))

(assert (=> b!5304819 true))

(declare-fun d!1705190 () Bool)

(declare-fun c!921039 () Bool)

(assert (=> d!1705190 (= c!921039 ((_ is EmptyExpr!14953) r!7292))))

(declare-fun e!3296863 () Bool)

(assert (=> d!1705190 (= (matchRSpec!2056 r!7292 s!2326) e!3296863)))

(declare-fun b!5304818 () Bool)

(declare-fun e!3296864 () Bool)

(declare-fun e!3296865 () Bool)

(assert (=> b!5304818 (= e!3296864 e!3296865)))

(declare-fun c!921040 () Bool)

(assert (=> b!5304818 (= c!921040 ((_ is Star!14953) r!7292))))

(declare-fun call!378172 () Bool)

(declare-fun bm!378166 () Bool)

(assert (=> bm!378166 (= call!378172 (Exists!2134 (ite c!921040 lambda!269773 lambda!269774)))))

(assert (=> b!5304819 (= e!3296865 call!378172)))

(declare-fun b!5304820 () Bool)

(declare-fun e!3296861 () Bool)

(assert (=> b!5304820 (= e!3296863 e!3296861)))

(declare-fun res!2250293 () Bool)

(assert (=> b!5304820 (= res!2250293 (not ((_ is EmptyLang!14953) r!7292)))))

(assert (=> b!5304820 (=> (not res!2250293) (not e!3296861))))

(declare-fun b!5304821 () Bool)

(declare-fun c!921041 () Bool)

(assert (=> b!5304821 (= c!921041 ((_ is Union!14953) r!7292))))

(declare-fun e!3296862 () Bool)

(assert (=> b!5304821 (= e!3296862 e!3296864)))

(declare-fun b!5304822 () Bool)

(declare-fun c!921042 () Bool)

(assert (=> b!5304822 (= c!921042 ((_ is ElementMatch!14953) r!7292))))

(assert (=> b!5304822 (= e!3296861 e!3296862)))

(declare-fun b!5304823 () Bool)

(assert (=> b!5304823 (= e!3296862 (= s!2326 (Cons!61036 (c!920805 r!7292) Nil!61036)))))

(declare-fun b!5304824 () Bool)

(declare-fun e!3296860 () Bool)

(assert (=> b!5304824 (= e!3296860 (matchRSpec!2056 (regTwo!30419 r!7292) s!2326))))

(declare-fun b!5304825 () Bool)

(declare-fun res!2250292 () Bool)

(declare-fun e!3296866 () Bool)

(assert (=> b!5304825 (=> res!2250292 e!3296866)))

(declare-fun call!378171 () Bool)

(assert (=> b!5304825 (= res!2250292 call!378171)))

(assert (=> b!5304825 (= e!3296865 e!3296866)))

(declare-fun b!5304826 () Bool)

(assert (=> b!5304826 (= e!3296863 call!378171)))

(declare-fun b!5304827 () Bool)

(assert (=> b!5304827 (= e!3296864 e!3296860)))

(declare-fun res!2250294 () Bool)

(assert (=> b!5304827 (= res!2250294 (matchRSpec!2056 (regOne!30419 r!7292) s!2326))))

(assert (=> b!5304827 (=> res!2250294 e!3296860)))

(declare-fun bm!378167 () Bool)

(assert (=> bm!378167 (= call!378171 (isEmpty!32995 s!2326))))

(assert (=> b!5304828 (= e!3296866 call!378172)))

(assert (= (and d!1705190 c!921039) b!5304826))

(assert (= (and d!1705190 (not c!921039)) b!5304820))

(assert (= (and b!5304820 res!2250293) b!5304822))

(assert (= (and b!5304822 c!921042) b!5304823))

(assert (= (and b!5304822 (not c!921042)) b!5304821))

(assert (= (and b!5304821 c!921041) b!5304827))

(assert (= (and b!5304821 (not c!921041)) b!5304818))

(assert (= (and b!5304827 (not res!2250294)) b!5304824))

(assert (= (and b!5304818 c!921040) b!5304825))

(assert (= (and b!5304818 (not c!921040)) b!5304819))

(assert (= (and b!5304825 (not res!2250292)) b!5304828))

(assert (= (or b!5304828 b!5304819) bm!378166))

(assert (= (or b!5304826 b!5304825) bm!378167))

(declare-fun m!6342172 () Bool)

(assert (=> bm!378166 m!6342172))

(declare-fun m!6342174 () Bool)

(assert (=> b!5304824 m!6342174))

(declare-fun m!6342176 () Bool)

(assert (=> b!5304827 m!6342176))

(declare-fun m!6342178 () Bool)

(assert (=> bm!378167 m!6342178))

(assert (=> b!5304063 d!1705190))

(declare-fun b!5304857 () Bool)

(declare-fun res!2250314 () Bool)

(declare-fun e!3296881 () Bool)

(assert (=> b!5304857 (=> res!2250314 e!3296881)))

(assert (=> b!5304857 (= res!2250314 (not (isEmpty!32995 (tail!10467 s!2326))))))

(declare-fun d!1705192 () Bool)

(declare-fun e!3296886 () Bool)

(assert (=> d!1705192 e!3296886))

(declare-fun c!921049 () Bool)

(assert (=> d!1705192 (= c!921049 ((_ is EmptyExpr!14953) r!7292))))

(declare-fun lt!2167743 () Bool)

(declare-fun e!3296887 () Bool)

(assert (=> d!1705192 (= lt!2167743 e!3296887)))

(declare-fun c!921051 () Bool)

(assert (=> d!1705192 (= c!921051 (isEmpty!32995 s!2326))))

(assert (=> d!1705192 (validRegex!6689 r!7292)))

(assert (=> d!1705192 (= (matchR!7138 r!7292 s!2326) lt!2167743)))

(declare-fun b!5304858 () Bool)

(declare-fun e!3296883 () Bool)

(assert (=> b!5304858 (= e!3296886 e!3296883)))

(declare-fun c!921050 () Bool)

(assert (=> b!5304858 (= c!921050 ((_ is EmptyLang!14953) r!7292))))

(declare-fun b!5304859 () Bool)

(assert (=> b!5304859 (= e!3296881 (not (= (head!11370 s!2326) (c!920805 r!7292))))))

(declare-fun b!5304860 () Bool)

(declare-fun call!378175 () Bool)

(assert (=> b!5304860 (= e!3296886 (= lt!2167743 call!378175))))

(declare-fun b!5304861 () Bool)

(declare-fun res!2250318 () Bool)

(declare-fun e!3296882 () Bool)

(assert (=> b!5304861 (=> (not res!2250318) (not e!3296882))))

(assert (=> b!5304861 (= res!2250318 (isEmpty!32995 (tail!10467 s!2326)))))

(declare-fun b!5304862 () Bool)

(declare-fun e!3296885 () Bool)

(declare-fun e!3296884 () Bool)

(assert (=> b!5304862 (= e!3296885 e!3296884)))

(declare-fun res!2250313 () Bool)

(assert (=> b!5304862 (=> (not res!2250313) (not e!3296884))))

(assert (=> b!5304862 (= res!2250313 (not lt!2167743))))

(declare-fun b!5304863 () Bool)

(declare-fun res!2250315 () Bool)

(assert (=> b!5304863 (=> (not res!2250315) (not e!3296882))))

(assert (=> b!5304863 (= res!2250315 (not call!378175))))

(declare-fun b!5304864 () Bool)

(assert (=> b!5304864 (= e!3296882 (= (head!11370 s!2326) (c!920805 r!7292)))))

(declare-fun b!5304865 () Bool)

(declare-fun res!2250311 () Bool)

(assert (=> b!5304865 (=> res!2250311 e!3296885)))

(assert (=> b!5304865 (= res!2250311 (not ((_ is ElementMatch!14953) r!7292)))))

(assert (=> b!5304865 (= e!3296883 e!3296885)))

(declare-fun bm!378170 () Bool)

(assert (=> bm!378170 (= call!378175 (isEmpty!32995 s!2326))))

(declare-fun b!5304866 () Bool)

(assert (=> b!5304866 (= e!3296887 (nullable!5122 r!7292))))

(declare-fun b!5304867 () Bool)

(assert (=> b!5304867 (= e!3296883 (not lt!2167743))))

(declare-fun b!5304868 () Bool)

(declare-fun derivativeStep!4147 (Regex!14953 C!30176) Regex!14953)

(assert (=> b!5304868 (= e!3296887 (matchR!7138 (derivativeStep!4147 r!7292 (head!11370 s!2326)) (tail!10467 s!2326)))))

(declare-fun b!5304869 () Bool)

(declare-fun res!2250316 () Bool)

(assert (=> b!5304869 (=> res!2250316 e!3296885)))

(assert (=> b!5304869 (= res!2250316 e!3296882)))

(declare-fun res!2250312 () Bool)

(assert (=> b!5304869 (=> (not res!2250312) (not e!3296882))))

(assert (=> b!5304869 (= res!2250312 lt!2167743)))

(declare-fun b!5304870 () Bool)

(assert (=> b!5304870 (= e!3296884 e!3296881)))

(declare-fun res!2250317 () Bool)

(assert (=> b!5304870 (=> res!2250317 e!3296881)))

(assert (=> b!5304870 (= res!2250317 call!378175)))

(assert (= (and d!1705192 c!921051) b!5304866))

(assert (= (and d!1705192 (not c!921051)) b!5304868))

(assert (= (and d!1705192 c!921049) b!5304860))

(assert (= (and d!1705192 (not c!921049)) b!5304858))

(assert (= (and b!5304858 c!921050) b!5304867))

(assert (= (and b!5304858 (not c!921050)) b!5304865))

(assert (= (and b!5304865 (not res!2250311)) b!5304869))

(assert (= (and b!5304869 res!2250312) b!5304863))

(assert (= (and b!5304863 res!2250315) b!5304861))

(assert (= (and b!5304861 res!2250318) b!5304864))

(assert (= (and b!5304869 (not res!2250316)) b!5304862))

(assert (= (and b!5304862 res!2250313) b!5304870))

(assert (= (and b!5304870 (not res!2250317)) b!5304857))

(assert (= (and b!5304857 (not res!2250314)) b!5304859))

(assert (= (or b!5304860 b!5304863 b!5304870) bm!378170))

(declare-fun m!6342180 () Bool)

(assert (=> b!5304864 m!6342180))

(assert (=> b!5304859 m!6342180))

(declare-fun m!6342182 () Bool)

(assert (=> b!5304866 m!6342182))

(assert (=> bm!378170 m!6342178))

(declare-fun m!6342184 () Bool)

(assert (=> b!5304857 m!6342184))

(assert (=> b!5304857 m!6342184))

(declare-fun m!6342186 () Bool)

(assert (=> b!5304857 m!6342186))

(assert (=> d!1705192 m!6342178))

(assert (=> d!1705192 m!6341512))

(assert (=> b!5304861 m!6342184))

(assert (=> b!5304861 m!6342184))

(assert (=> b!5304861 m!6342186))

(assert (=> b!5304868 m!6342180))

(assert (=> b!5304868 m!6342180))

(declare-fun m!6342188 () Bool)

(assert (=> b!5304868 m!6342188))

(assert (=> b!5304868 m!6342184))

(assert (=> b!5304868 m!6342188))

(assert (=> b!5304868 m!6342184))

(declare-fun m!6342190 () Bool)

(assert (=> b!5304868 m!6342190))

(assert (=> b!5304063 d!1705192))

(declare-fun d!1705194 () Bool)

(assert (=> d!1705194 (= (matchR!7138 r!7292 s!2326) (matchRSpec!2056 r!7292 s!2326))))

(declare-fun lt!2167746 () Unit!153330)

(declare-fun choose!39659 (Regex!14953 List!61160) Unit!153330)

(assert (=> d!1705194 (= lt!2167746 (choose!39659 r!7292 s!2326))))

(assert (=> d!1705194 (validRegex!6689 r!7292)))

(assert (=> d!1705194 (= (mainMatchTheorem!2056 r!7292 s!2326) lt!2167746)))

(declare-fun bs!1230081 () Bool)

(assert (= bs!1230081 d!1705194))

(assert (=> bs!1230081 m!6341448))

(assert (=> bs!1230081 m!6341446))

(declare-fun m!6342192 () Bool)

(assert (=> bs!1230081 m!6342192))

(assert (=> bs!1230081 m!6341512))

(assert (=> b!5304063 d!1705194))

(declare-fun e!3296890 () Bool)

(declare-fun d!1705196 () Bool)

(assert (=> d!1705196 (= (matchZipper!1197 ((_ map or) lt!2167580 lt!2167588) (t!374365 s!2326)) e!3296890)))

(declare-fun res!2250321 () Bool)

(assert (=> d!1705196 (=> res!2250321 e!3296890)))

(assert (=> d!1705196 (= res!2250321 (matchZipper!1197 lt!2167580 (t!374365 s!2326)))))

(declare-fun lt!2167749 () Unit!153330)

(declare-fun choose!39660 ((InoxSet Context!8674) (InoxSet Context!8674) List!61160) Unit!153330)

(assert (=> d!1705196 (= lt!2167749 (choose!39660 lt!2167580 lt!2167588 (t!374365 s!2326)))))

(assert (=> d!1705196 (= (lemmaZipperConcatMatchesSameAsBothZippers!190 lt!2167580 lt!2167588 (t!374365 s!2326)) lt!2167749)))

(declare-fun b!5304873 () Bool)

(assert (=> b!5304873 (= e!3296890 (matchZipper!1197 lt!2167588 (t!374365 s!2326)))))

(assert (= (and d!1705196 (not res!2250321)) b!5304873))

(declare-fun m!6342194 () Bool)

(assert (=> d!1705196 m!6342194))

(assert (=> d!1705196 m!6341520))

(declare-fun m!6342196 () Bool)

(assert (=> d!1705196 m!6342196))

(assert (=> b!5304873 m!6341362))

(assert (=> b!5304060 d!1705196))

(declare-fun d!1705198 () Bool)

(assert (=> d!1705198 (= (flatMap!680 lt!2167614 lambda!269688) (choose!39657 lt!2167614 lambda!269688))))

(declare-fun bs!1230082 () Bool)

(assert (= bs!1230082 d!1705198))

(declare-fun m!6342198 () Bool)

(assert (=> bs!1230082 m!6342198))

(assert (=> b!5304060 d!1705198))

(declare-fun b!5304874 () Bool)

(declare-fun e!3296893 () (InoxSet Context!8674))

(assert (=> b!5304874 (= e!3296893 ((as const (Array Context!8674 Bool)) false))))

(declare-fun b!5304875 () Bool)

(declare-fun e!3296891 () Bool)

(assert (=> b!5304875 (= e!3296891 (nullable!5122 (h!67482 (exprs!4837 lt!2167597))))))

(declare-fun d!1705200 () Bool)

(declare-fun c!921053 () Bool)

(assert (=> d!1705200 (= c!921053 e!3296891)))

(declare-fun res!2250322 () Bool)

(assert (=> d!1705200 (=> (not res!2250322) (not e!3296891))))

(assert (=> d!1705200 (= res!2250322 ((_ is Cons!61034) (exprs!4837 lt!2167597)))))

(declare-fun e!3296892 () (InoxSet Context!8674))

(assert (=> d!1705200 (= (derivationStepZipperUp!325 lt!2167597 (h!67484 s!2326)) e!3296892)))

(declare-fun b!5304876 () Bool)

(declare-fun call!378176 () (InoxSet Context!8674))

(assert (=> b!5304876 (= e!3296892 ((_ map or) call!378176 (derivationStepZipperUp!325 (Context!8675 (t!374363 (exprs!4837 lt!2167597))) (h!67484 s!2326))))))

(declare-fun b!5304877 () Bool)

(assert (=> b!5304877 (= e!3296893 call!378176)))

(declare-fun bm!378171 () Bool)

(assert (=> bm!378171 (= call!378176 (derivationStepZipperDown!401 (h!67482 (exprs!4837 lt!2167597)) (Context!8675 (t!374363 (exprs!4837 lt!2167597))) (h!67484 s!2326)))))

(declare-fun b!5304878 () Bool)

(assert (=> b!5304878 (= e!3296892 e!3296893)))

(declare-fun c!921052 () Bool)

(assert (=> b!5304878 (= c!921052 ((_ is Cons!61034) (exprs!4837 lt!2167597)))))

(assert (= (and d!1705200 res!2250322) b!5304875))

(assert (= (and d!1705200 c!921053) b!5304876))

(assert (= (and d!1705200 (not c!921053)) b!5304878))

(assert (= (and b!5304878 c!921052) b!5304877))

(assert (= (and b!5304878 (not c!921052)) b!5304874))

(assert (= (or b!5304876 b!5304877) bm!378171))

(declare-fun m!6342200 () Bool)

(assert (=> b!5304875 m!6342200))

(declare-fun m!6342202 () Bool)

(assert (=> b!5304876 m!6342202))

(declare-fun m!6342204 () Bool)

(assert (=> bm!378171 m!6342204))

(assert (=> b!5304060 d!1705200))

(declare-fun d!1705202 () Bool)

(declare-fun c!921054 () Bool)

(assert (=> d!1705202 (= c!921054 (isEmpty!32995 (t!374365 s!2326)))))

(declare-fun e!3296894 () Bool)

(assert (=> d!1705202 (= (matchZipper!1197 lt!2167587 (t!374365 s!2326)) e!3296894)))

(declare-fun b!5304879 () Bool)

(assert (=> b!5304879 (= e!3296894 (nullableZipper!1326 lt!2167587))))

(declare-fun b!5304880 () Bool)

(assert (=> b!5304880 (= e!3296894 (matchZipper!1197 (derivationStepZipper!1196 lt!2167587 (head!11370 (t!374365 s!2326))) (tail!10467 (t!374365 s!2326))))))

(assert (= (and d!1705202 c!921054) b!5304879))

(assert (= (and d!1705202 (not c!921054)) b!5304880))

(assert (=> d!1705202 m!6342050))

(declare-fun m!6342206 () Bool)

(assert (=> b!5304879 m!6342206))

(assert (=> b!5304880 m!6342054))

(assert (=> b!5304880 m!6342054))

(declare-fun m!6342208 () Bool)

(assert (=> b!5304880 m!6342208))

(assert (=> b!5304880 m!6342058))

(assert (=> b!5304880 m!6342208))

(assert (=> b!5304880 m!6342058))

(declare-fun m!6342210 () Bool)

(assert (=> b!5304880 m!6342210))

(assert (=> b!5304060 d!1705202))

(declare-fun d!1705204 () Bool)

(declare-fun c!921055 () Bool)

(assert (=> d!1705204 (= c!921055 (isEmpty!32995 (t!374365 s!2326)))))

(declare-fun e!3296895 () Bool)

(assert (=> d!1705204 (= (matchZipper!1197 lt!2167575 (t!374365 s!2326)) e!3296895)))

(declare-fun b!5304881 () Bool)

(assert (=> b!5304881 (= e!3296895 (nullableZipper!1326 lt!2167575))))

(declare-fun b!5304882 () Bool)

(assert (=> b!5304882 (= e!3296895 (matchZipper!1197 (derivationStepZipper!1196 lt!2167575 (head!11370 (t!374365 s!2326))) (tail!10467 (t!374365 s!2326))))))

(assert (= (and d!1705204 c!921055) b!5304881))

(assert (= (and d!1705204 (not c!921055)) b!5304882))

(assert (=> d!1705204 m!6342050))

(declare-fun m!6342212 () Bool)

(assert (=> b!5304881 m!6342212))

(assert (=> b!5304882 m!6342054))

(assert (=> b!5304882 m!6342054))

(declare-fun m!6342214 () Bool)

(assert (=> b!5304882 m!6342214))

(assert (=> b!5304882 m!6342058))

(assert (=> b!5304882 m!6342214))

(assert (=> b!5304882 m!6342058))

(declare-fun m!6342216 () Bool)

(assert (=> b!5304882 m!6342216))

(assert (=> b!5304060 d!1705204))

(declare-fun d!1705206 () Bool)

(assert (=> d!1705206 (= (flatMap!680 lt!2167614 lambda!269688) (dynLambda!24124 lambda!269688 lt!2167597))))

(declare-fun lt!2167750 () Unit!153330)

(assert (=> d!1705206 (= lt!2167750 (choose!39656 lt!2167614 lt!2167597 lambda!269688))))

(assert (=> d!1705206 (= lt!2167614 (store ((as const (Array Context!8674 Bool)) false) lt!2167597 true))))

(assert (=> d!1705206 (= (lemmaFlatMapOnSingletonSet!212 lt!2167614 lt!2167597 lambda!269688) lt!2167750)))

(declare-fun b_lambda!204303 () Bool)

(assert (=> (not b_lambda!204303) (not d!1705206)))

(declare-fun bs!1230083 () Bool)

(assert (= bs!1230083 d!1705206))

(assert (=> bs!1230083 m!6341442))

(declare-fun m!6342218 () Bool)

(assert (=> bs!1230083 m!6342218))

(declare-fun m!6342220 () Bool)

(assert (=> bs!1230083 m!6342220))

(assert (=> bs!1230083 m!6341480))

(assert (=> b!5304060 d!1705206))

(declare-fun d!1705208 () Bool)

(declare-fun res!2250327 () Bool)

(declare-fun e!3296900 () Bool)

(assert (=> d!1705208 (=> res!2250327 e!3296900)))

(assert (=> d!1705208 (= res!2250327 ((_ is Nil!61034) (t!374363 (exprs!4837 (h!67483 zl!343)))))))

(assert (=> d!1705208 (= (forall!14365 (t!374363 (exprs!4837 (h!67483 zl!343))) lambda!269693) e!3296900)))

(declare-fun b!5304887 () Bool)

(declare-fun e!3296901 () Bool)

(assert (=> b!5304887 (= e!3296900 e!3296901)))

(declare-fun res!2250328 () Bool)

(assert (=> b!5304887 (=> (not res!2250328) (not e!3296901))))

(declare-fun dynLambda!24125 (Int Regex!14953) Bool)

(assert (=> b!5304887 (= res!2250328 (dynLambda!24125 lambda!269693 (h!67482 (t!374363 (exprs!4837 (h!67483 zl!343))))))))

(declare-fun b!5304888 () Bool)

(assert (=> b!5304888 (= e!3296901 (forall!14365 (t!374363 (t!374363 (exprs!4837 (h!67483 zl!343)))) lambda!269693))))

(assert (= (and d!1705208 (not res!2250327)) b!5304887))

(assert (= (and b!5304887 res!2250328) b!5304888))

(declare-fun b_lambda!204305 () Bool)

(assert (=> (not b_lambda!204305) (not b!5304887)))

(declare-fun m!6342222 () Bool)

(assert (=> b!5304887 m!6342222))

(declare-fun m!6342224 () Bool)

(assert (=> b!5304888 m!6342224))

(assert (=> b!5304040 d!1705208))

(declare-fun d!1705210 () Bool)

(assert (=> d!1705210 (= (nullable!5122 (regOne!30418 (regOne!30418 r!7292))) (nullableFct!1478 (regOne!30418 (regOne!30418 r!7292))))))

(declare-fun bs!1230084 () Bool)

(assert (= bs!1230084 d!1705210))

(declare-fun m!6342226 () Bool)

(assert (=> bs!1230084 m!6342226))

(assert (=> b!5304042 d!1705210))

(declare-fun b!5304889 () Bool)

(declare-fun res!2250332 () Bool)

(declare-fun e!3296902 () Bool)

(assert (=> b!5304889 (=> res!2250332 e!3296902)))

(assert (=> b!5304889 (= res!2250332 (not (isEmpty!32995 (tail!10467 s!2326))))))

(declare-fun d!1705212 () Bool)

(declare-fun e!3296907 () Bool)

(assert (=> d!1705212 e!3296907))

(declare-fun c!921056 () Bool)

(assert (=> d!1705212 (= c!921056 ((_ is EmptyExpr!14953) (Concat!23798 (regOne!30418 r!7292) (regTwo!30418 r!7292))))))

(declare-fun lt!2167751 () Bool)

(declare-fun e!3296908 () Bool)

(assert (=> d!1705212 (= lt!2167751 e!3296908)))

(declare-fun c!921058 () Bool)

(assert (=> d!1705212 (= c!921058 (isEmpty!32995 s!2326))))

(assert (=> d!1705212 (validRegex!6689 (Concat!23798 (regOne!30418 r!7292) (regTwo!30418 r!7292)))))

(assert (=> d!1705212 (= (matchR!7138 (Concat!23798 (regOne!30418 r!7292) (regTwo!30418 r!7292)) s!2326) lt!2167751)))

(declare-fun b!5304890 () Bool)

(declare-fun e!3296904 () Bool)

(assert (=> b!5304890 (= e!3296907 e!3296904)))

(declare-fun c!921057 () Bool)

(assert (=> b!5304890 (= c!921057 ((_ is EmptyLang!14953) (Concat!23798 (regOne!30418 r!7292) (regTwo!30418 r!7292))))))

(declare-fun b!5304891 () Bool)

(assert (=> b!5304891 (= e!3296902 (not (= (head!11370 s!2326) (c!920805 (Concat!23798 (regOne!30418 r!7292) (regTwo!30418 r!7292))))))))

(declare-fun b!5304892 () Bool)

(declare-fun call!378177 () Bool)

(assert (=> b!5304892 (= e!3296907 (= lt!2167751 call!378177))))

(declare-fun b!5304893 () Bool)

(declare-fun res!2250336 () Bool)

(declare-fun e!3296903 () Bool)

(assert (=> b!5304893 (=> (not res!2250336) (not e!3296903))))

(assert (=> b!5304893 (= res!2250336 (isEmpty!32995 (tail!10467 s!2326)))))

(declare-fun b!5304894 () Bool)

(declare-fun e!3296906 () Bool)

(declare-fun e!3296905 () Bool)

(assert (=> b!5304894 (= e!3296906 e!3296905)))

(declare-fun res!2250331 () Bool)

(assert (=> b!5304894 (=> (not res!2250331) (not e!3296905))))

(assert (=> b!5304894 (= res!2250331 (not lt!2167751))))

(declare-fun b!5304895 () Bool)

(declare-fun res!2250333 () Bool)

(assert (=> b!5304895 (=> (not res!2250333) (not e!3296903))))

(assert (=> b!5304895 (= res!2250333 (not call!378177))))

(declare-fun b!5304896 () Bool)

(assert (=> b!5304896 (= e!3296903 (= (head!11370 s!2326) (c!920805 (Concat!23798 (regOne!30418 r!7292) (regTwo!30418 r!7292)))))))

(declare-fun b!5304897 () Bool)

(declare-fun res!2250329 () Bool)

(assert (=> b!5304897 (=> res!2250329 e!3296906)))

(assert (=> b!5304897 (= res!2250329 (not ((_ is ElementMatch!14953) (Concat!23798 (regOne!30418 r!7292) (regTwo!30418 r!7292)))))))

(assert (=> b!5304897 (= e!3296904 e!3296906)))

(declare-fun bm!378172 () Bool)

(assert (=> bm!378172 (= call!378177 (isEmpty!32995 s!2326))))

(declare-fun b!5304898 () Bool)

(assert (=> b!5304898 (= e!3296908 (nullable!5122 (Concat!23798 (regOne!30418 r!7292) (regTwo!30418 r!7292))))))

(declare-fun b!5304899 () Bool)

(assert (=> b!5304899 (= e!3296904 (not lt!2167751))))

(declare-fun b!5304900 () Bool)

(assert (=> b!5304900 (= e!3296908 (matchR!7138 (derivativeStep!4147 (Concat!23798 (regOne!30418 r!7292) (regTwo!30418 r!7292)) (head!11370 s!2326)) (tail!10467 s!2326)))))

(declare-fun b!5304901 () Bool)

(declare-fun res!2250334 () Bool)

(assert (=> b!5304901 (=> res!2250334 e!3296906)))

(assert (=> b!5304901 (= res!2250334 e!3296903)))

(declare-fun res!2250330 () Bool)

(assert (=> b!5304901 (=> (not res!2250330) (not e!3296903))))

(assert (=> b!5304901 (= res!2250330 lt!2167751)))

(declare-fun b!5304902 () Bool)

(assert (=> b!5304902 (= e!3296905 e!3296902)))

(declare-fun res!2250335 () Bool)

(assert (=> b!5304902 (=> res!2250335 e!3296902)))

(assert (=> b!5304902 (= res!2250335 call!378177)))

(assert (= (and d!1705212 c!921058) b!5304898))

(assert (= (and d!1705212 (not c!921058)) b!5304900))

(assert (= (and d!1705212 c!921056) b!5304892))

(assert (= (and d!1705212 (not c!921056)) b!5304890))

(assert (= (and b!5304890 c!921057) b!5304899))

(assert (= (and b!5304890 (not c!921057)) b!5304897))

(assert (= (and b!5304897 (not res!2250329)) b!5304901))

(assert (= (and b!5304901 res!2250330) b!5304895))

(assert (= (and b!5304895 res!2250333) b!5304893))

(assert (= (and b!5304893 res!2250336) b!5304896))

(assert (= (and b!5304901 (not res!2250334)) b!5304894))

(assert (= (and b!5304894 res!2250331) b!5304902))

(assert (= (and b!5304902 (not res!2250335)) b!5304889))

(assert (= (and b!5304889 (not res!2250332)) b!5304891))

(assert (= (or b!5304892 b!5304895 b!5304902) bm!378172))

(assert (=> b!5304896 m!6342180))

(assert (=> b!5304891 m!6342180))

(declare-fun m!6342228 () Bool)

(assert (=> b!5304898 m!6342228))

(assert (=> bm!378172 m!6342178))

(assert (=> b!5304889 m!6342184))

(assert (=> b!5304889 m!6342184))

(assert (=> b!5304889 m!6342186))

(assert (=> d!1705212 m!6342178))

(declare-fun m!6342230 () Bool)

(assert (=> d!1705212 m!6342230))

(assert (=> b!5304893 m!6342184))

(assert (=> b!5304893 m!6342184))

(assert (=> b!5304893 m!6342186))

(assert (=> b!5304900 m!6342180))

(assert (=> b!5304900 m!6342180))

(declare-fun m!6342232 () Bool)

(assert (=> b!5304900 m!6342232))

(assert (=> b!5304900 m!6342184))

(assert (=> b!5304900 m!6342232))

(assert (=> b!5304900 m!6342184))

(declare-fun m!6342234 () Bool)

(assert (=> b!5304900 m!6342234))

(assert (=> b!5304061 d!1705212))

(declare-fun e!3296909 () Bool)

(declare-fun d!1705214 () Bool)

(assert (=> d!1705214 (= (matchZipper!1197 ((_ map or) lt!2167604 lt!2167574) (t!374365 s!2326)) e!3296909)))

(declare-fun res!2250337 () Bool)

(assert (=> d!1705214 (=> res!2250337 e!3296909)))

(assert (=> d!1705214 (= res!2250337 (matchZipper!1197 lt!2167604 (t!374365 s!2326)))))

(declare-fun lt!2167752 () Unit!153330)

(assert (=> d!1705214 (= lt!2167752 (choose!39660 lt!2167604 lt!2167574 (t!374365 s!2326)))))

(assert (=> d!1705214 (= (lemmaZipperConcatMatchesSameAsBothZippers!190 lt!2167604 lt!2167574 (t!374365 s!2326)) lt!2167752)))

(declare-fun b!5304903 () Bool)

(assert (=> b!5304903 (= e!3296909 (matchZipper!1197 lt!2167574 (t!374365 s!2326)))))

(assert (= (and d!1705214 (not res!2250337)) b!5304903))

(assert (=> d!1705214 m!6341378))

(assert (=> d!1705214 m!6341376))

(declare-fun m!6342236 () Bool)

(assert (=> d!1705214 m!6342236))

(assert (=> b!5304903 m!6341516))

(assert (=> b!5304041 d!1705214))

(declare-fun d!1705216 () Bool)

(declare-fun c!921059 () Bool)

(assert (=> d!1705216 (= c!921059 (isEmpty!32995 (t!374365 s!2326)))))

(declare-fun e!3296910 () Bool)

(assert (=> d!1705216 (= (matchZipper!1197 lt!2167604 (t!374365 s!2326)) e!3296910)))

(declare-fun b!5304904 () Bool)

(assert (=> b!5304904 (= e!3296910 (nullableZipper!1326 lt!2167604))))

(declare-fun b!5304905 () Bool)

(assert (=> b!5304905 (= e!3296910 (matchZipper!1197 (derivationStepZipper!1196 lt!2167604 (head!11370 (t!374365 s!2326))) (tail!10467 (t!374365 s!2326))))))

(assert (= (and d!1705216 c!921059) b!5304904))

(assert (= (and d!1705216 (not c!921059)) b!5304905))

(assert (=> d!1705216 m!6342050))

(declare-fun m!6342238 () Bool)

(assert (=> b!5304904 m!6342238))

(assert (=> b!5304905 m!6342054))

(assert (=> b!5304905 m!6342054))

(declare-fun m!6342240 () Bool)

(assert (=> b!5304905 m!6342240))

(assert (=> b!5304905 m!6342058))

(assert (=> b!5304905 m!6342240))

(assert (=> b!5304905 m!6342058))

(declare-fun m!6342242 () Bool)

(assert (=> b!5304905 m!6342242))

(assert (=> b!5304041 d!1705216))

(declare-fun d!1705218 () Bool)

(declare-fun c!921060 () Bool)

(assert (=> d!1705218 (= c!921060 (isEmpty!32995 (t!374365 s!2326)))))

(declare-fun e!3296911 () Bool)

(assert (=> d!1705218 (= (matchZipper!1197 ((_ map or) lt!2167604 lt!2167574) (t!374365 s!2326)) e!3296911)))

(declare-fun b!5304906 () Bool)

(assert (=> b!5304906 (= e!3296911 (nullableZipper!1326 ((_ map or) lt!2167604 lt!2167574)))))

(declare-fun b!5304907 () Bool)

(assert (=> b!5304907 (= e!3296911 (matchZipper!1197 (derivationStepZipper!1196 ((_ map or) lt!2167604 lt!2167574) (head!11370 (t!374365 s!2326))) (tail!10467 (t!374365 s!2326))))))

(assert (= (and d!1705218 c!921060) b!5304906))

(assert (= (and d!1705218 (not c!921060)) b!5304907))

(assert (=> d!1705218 m!6342050))

(declare-fun m!6342244 () Bool)

(assert (=> b!5304906 m!6342244))

(assert (=> b!5304907 m!6342054))

(assert (=> b!5304907 m!6342054))

(declare-fun m!6342246 () Bool)

(assert (=> b!5304907 m!6342246))

(assert (=> b!5304907 m!6342058))

(assert (=> b!5304907 m!6342246))

(assert (=> b!5304907 m!6342058))

(declare-fun m!6342248 () Bool)

(assert (=> b!5304907 m!6342248))

(assert (=> b!5304041 d!1705218))

(declare-fun d!1705220 () Bool)

(declare-fun c!921061 () Bool)

(assert (=> d!1705220 (= c!921061 (isEmpty!32995 (t!374365 s!2326)))))

(declare-fun e!3296912 () Bool)

(assert (=> d!1705220 (= (matchZipper!1197 lt!2167588 (t!374365 s!2326)) e!3296912)))

(declare-fun b!5304908 () Bool)

(assert (=> b!5304908 (= e!3296912 (nullableZipper!1326 lt!2167588))))

(declare-fun b!5304909 () Bool)

(assert (=> b!5304909 (= e!3296912 (matchZipper!1197 (derivationStepZipper!1196 lt!2167588 (head!11370 (t!374365 s!2326))) (tail!10467 (t!374365 s!2326))))))

(assert (= (and d!1705220 c!921061) b!5304908))

(assert (= (and d!1705220 (not c!921061)) b!5304909))

(assert (=> d!1705220 m!6342050))

(declare-fun m!6342250 () Bool)

(assert (=> b!5304908 m!6342250))

(assert (=> b!5304909 m!6342054))

(assert (=> b!5304909 m!6342054))

(declare-fun m!6342252 () Bool)

(assert (=> b!5304909 m!6342252))

(assert (=> b!5304909 m!6342058))

(assert (=> b!5304909 m!6342252))

(assert (=> b!5304909 m!6342058))

(declare-fun m!6342254 () Bool)

(assert (=> b!5304909 m!6342254))

(assert (=> b!5304047 d!1705220))

(declare-fun bs!1230085 () Bool)

(declare-fun d!1705222 () Bool)

(assert (= bs!1230085 (and d!1705222 b!5304040)))

(declare-fun lambda!269775 () Int)

(assert (=> bs!1230085 (= lambda!269775 lambda!269693)))

(declare-fun bs!1230086 () Bool)

(assert (= bs!1230086 (and d!1705222 d!1705184)))

(assert (=> bs!1230086 (= lambda!269775 lambda!269762)))

(declare-fun bs!1230087 () Bool)

(assert (= bs!1230087 (and d!1705222 d!1705186)))

(assert (=> bs!1230087 (= lambda!269775 lambda!269765)))

(declare-fun bs!1230088 () Bool)

(assert (= bs!1230088 (and d!1705222 d!1705188)))

(assert (=> bs!1230088 (= lambda!269775 lambda!269768)))

(assert (=> d!1705222 (= (inv!80629 setElem!34091) (forall!14365 (exprs!4837 setElem!34091) lambda!269775))))

(declare-fun bs!1230089 () Bool)

(assert (= bs!1230089 d!1705222))

(declare-fun m!6342256 () Bool)

(assert (=> bs!1230089 m!6342256))

(assert (=> setNonEmpty!34091 d!1705222))

(declare-fun b!5304916 () Bool)

(assert (=> b!5304916 true))

(declare-fun bs!1230090 () Bool)

(declare-fun b!5304918 () Bool)

(assert (= bs!1230090 (and b!5304918 b!5304916)))

(declare-fun lambda!269784 () Int)

(declare-fun lambda!269783 () Int)

(declare-fun lt!2167761 () Int)

(declare-fun lt!2167762 () Int)

(assert (=> bs!1230090 (= (= lt!2167761 lt!2167762) (= lambda!269784 lambda!269783))))

(assert (=> b!5304918 true))

(declare-fun d!1705224 () Bool)

(declare-fun e!3296918 () Bool)

(assert (=> d!1705224 e!3296918))

(declare-fun res!2250340 () Bool)

(assert (=> d!1705224 (=> (not res!2250340) (not e!3296918))))

(assert (=> d!1705224 (= res!2250340 (>= lt!2167761 0))))

(declare-fun e!3296917 () Int)

(assert (=> d!1705224 (= lt!2167761 e!3296917)))

(declare-fun c!921070 () Bool)

(assert (=> d!1705224 (= c!921070 ((_ is Cons!61035) lt!2167600))))

(assert (=> d!1705224 (= (zipperDepth!70 lt!2167600) lt!2167761)))

(assert (=> b!5304916 (= e!3296917 lt!2167762)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!38 (Context!8674) Int)

(assert (=> b!5304916 (= lt!2167762 (maxBigInt!0 (contextDepth!38 (h!67483 lt!2167600)) (zipperDepth!70 (t!374364 lt!2167600))))))

(declare-fun lt!2167764 () Unit!153330)

(declare-fun lambda!269782 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!32 (List!61159 Int Int Int) Unit!153330)

(assert (=> b!5304916 (= lt!2167764 (lemmaForallContextDepthBiggerThanTransitive!32 (t!374364 lt!2167600) lt!2167762 (zipperDepth!70 (t!374364 lt!2167600)) lambda!269782))))

(declare-fun forall!14367 (List!61159 Int) Bool)

(assert (=> b!5304916 (forall!14367 (t!374364 lt!2167600) lambda!269783)))

(declare-fun lt!2167763 () Unit!153330)

(assert (=> b!5304916 (= lt!2167763 lt!2167764)))

(declare-fun b!5304917 () Bool)

(assert (=> b!5304917 (= e!3296917 0)))

(assert (=> b!5304918 (= e!3296918 (forall!14367 lt!2167600 lambda!269784))))

(assert (= (and d!1705224 c!921070) b!5304916))

(assert (= (and d!1705224 (not c!921070)) b!5304917))

(assert (= (and d!1705224 res!2250340) b!5304918))

(declare-fun m!6342258 () Bool)

(assert (=> b!5304916 m!6342258))

(declare-fun m!6342260 () Bool)

(assert (=> b!5304916 m!6342260))

(declare-fun m!6342262 () Bool)

(assert (=> b!5304916 m!6342262))

(assert (=> b!5304916 m!6342260))

(assert (=> b!5304916 m!6342258))

(declare-fun m!6342264 () Bool)

(assert (=> b!5304916 m!6342264))

(assert (=> b!5304916 m!6342260))

(declare-fun m!6342266 () Bool)

(assert (=> b!5304916 m!6342266))

(declare-fun m!6342268 () Bool)

(assert (=> b!5304918 m!6342268))

(assert (=> b!5304048 d!1705224))

(declare-fun bs!1230091 () Bool)

(declare-fun b!5304921 () Bool)

(assert (= bs!1230091 (and b!5304921 b!5304916)))

(declare-fun lambda!269785 () Int)

(assert (=> bs!1230091 (= lambda!269785 lambda!269782)))

(declare-fun lambda!269786 () Int)

(declare-fun lt!2167766 () Int)

(assert (=> bs!1230091 (= (= lt!2167766 lt!2167762) (= lambda!269786 lambda!269783))))

(declare-fun bs!1230092 () Bool)

(assert (= bs!1230092 (and b!5304921 b!5304918)))

(assert (=> bs!1230092 (= (= lt!2167766 lt!2167761) (= lambda!269786 lambda!269784))))

(assert (=> b!5304921 true))

(declare-fun bs!1230093 () Bool)

(declare-fun b!5304923 () Bool)

(assert (= bs!1230093 (and b!5304923 b!5304916)))

(declare-fun lambda!269787 () Int)

(declare-fun lt!2167765 () Int)

(assert (=> bs!1230093 (= (= lt!2167765 lt!2167762) (= lambda!269787 lambda!269783))))

(declare-fun bs!1230094 () Bool)

(assert (= bs!1230094 (and b!5304923 b!5304918)))

(assert (=> bs!1230094 (= (= lt!2167765 lt!2167761) (= lambda!269787 lambda!269784))))

(declare-fun bs!1230095 () Bool)

(assert (= bs!1230095 (and b!5304923 b!5304921)))

(assert (=> bs!1230095 (= (= lt!2167765 lt!2167766) (= lambda!269787 lambda!269786))))

(assert (=> b!5304923 true))

(declare-fun d!1705226 () Bool)

(declare-fun e!3296920 () Bool)

(assert (=> d!1705226 e!3296920))

(declare-fun res!2250341 () Bool)

(assert (=> d!1705226 (=> (not res!2250341) (not e!3296920))))

(assert (=> d!1705226 (= res!2250341 (>= lt!2167765 0))))

(declare-fun e!3296919 () Int)

(assert (=> d!1705226 (= lt!2167765 e!3296919)))

(declare-fun c!921071 () Bool)

(assert (=> d!1705226 (= c!921071 ((_ is Cons!61035) zl!343))))

(assert (=> d!1705226 (= (zipperDepth!70 zl!343) lt!2167765)))

(assert (=> b!5304921 (= e!3296919 lt!2167766)))

(assert (=> b!5304921 (= lt!2167766 (maxBigInt!0 (contextDepth!38 (h!67483 zl!343)) (zipperDepth!70 (t!374364 zl!343))))))

(declare-fun lt!2167768 () Unit!153330)

(assert (=> b!5304921 (= lt!2167768 (lemmaForallContextDepthBiggerThanTransitive!32 (t!374364 zl!343) lt!2167766 (zipperDepth!70 (t!374364 zl!343)) lambda!269785))))

(assert (=> b!5304921 (forall!14367 (t!374364 zl!343) lambda!269786)))

(declare-fun lt!2167767 () Unit!153330)

(assert (=> b!5304921 (= lt!2167767 lt!2167768)))

(declare-fun b!5304922 () Bool)

(assert (=> b!5304922 (= e!3296919 0)))

(assert (=> b!5304923 (= e!3296920 (forall!14367 zl!343 lambda!269787))))

(assert (= (and d!1705226 c!921071) b!5304921))

(assert (= (and d!1705226 (not c!921071)) b!5304922))

(assert (= (and d!1705226 res!2250341) b!5304923))

(declare-fun m!6342270 () Bool)

(assert (=> b!5304921 m!6342270))

(declare-fun m!6342272 () Bool)

(assert (=> b!5304921 m!6342272))

(declare-fun m!6342274 () Bool)

(assert (=> b!5304921 m!6342274))

(assert (=> b!5304921 m!6342272))

(assert (=> b!5304921 m!6342270))

(declare-fun m!6342276 () Bool)

(assert (=> b!5304921 m!6342276))

(assert (=> b!5304921 m!6342272))

(declare-fun m!6342278 () Bool)

(assert (=> b!5304921 m!6342278))

(declare-fun m!6342280 () Bool)

(assert (=> b!5304923 m!6342280))

(assert (=> b!5304048 d!1705226))

(declare-fun d!1705228 () Bool)

(assert (=> d!1705228 (= (matchR!7138 lt!2167609 s!2326) (matchRSpec!2056 lt!2167609 s!2326))))

(declare-fun lt!2167769 () Unit!153330)

(assert (=> d!1705228 (= lt!2167769 (choose!39659 lt!2167609 s!2326))))

(assert (=> d!1705228 (validRegex!6689 lt!2167609)))

(assert (=> d!1705228 (= (mainMatchTheorem!2056 lt!2167609 s!2326) lt!2167769)))

(declare-fun bs!1230096 () Bool)

(assert (= bs!1230096 d!1705228))

(assert (=> bs!1230096 m!6341420))

(assert (=> bs!1230096 m!6341402))

(declare-fun m!6342282 () Bool)

(assert (=> bs!1230096 m!6342282))

(declare-fun m!6342284 () Bool)

(assert (=> bs!1230096 m!6342284))

(assert (=> b!5304045 d!1705228))

(declare-fun bs!1230097 () Bool)

(declare-fun d!1705230 () Bool)

(assert (= bs!1230097 (and d!1705230 d!1705186)))

(declare-fun lambda!269790 () Int)

(assert (=> bs!1230097 (= lambda!269790 lambda!269765)))

(declare-fun bs!1230098 () Bool)

(assert (= bs!1230098 (and d!1705230 d!1705184)))

(assert (=> bs!1230098 (= lambda!269790 lambda!269762)))

(declare-fun bs!1230099 () Bool)

(assert (= bs!1230099 (and d!1705230 d!1705188)))

(assert (=> bs!1230099 (= lambda!269790 lambda!269768)))

(declare-fun bs!1230100 () Bool)

(assert (= bs!1230100 (and d!1705230 b!5304040)))

(assert (=> bs!1230100 (= lambda!269790 lambda!269693)))

(declare-fun bs!1230101 () Bool)

(assert (= bs!1230101 (and d!1705230 d!1705222)))

(assert (=> bs!1230101 (= lambda!269790 lambda!269775)))

(declare-fun b!5304944 () Bool)

(declare-fun e!3296936 () Regex!14953)

(assert (=> b!5304944 (= e!3296936 (Concat!23798 (h!67482 (t!374363 (exprs!4837 (h!67483 zl!343)))) (generalisedConcat!622 (t!374363 (t!374363 (exprs!4837 (h!67483 zl!343)))))))))

(declare-fun b!5304945 () Bool)

(declare-fun e!3296934 () Bool)

(declare-fun lt!2167772 () Regex!14953)

(declare-fun isEmptyExpr!861 (Regex!14953) Bool)

(assert (=> b!5304945 (= e!3296934 (isEmptyExpr!861 lt!2167772))))

(declare-fun b!5304946 () Bool)

(assert (=> b!5304946 (= e!3296936 EmptyExpr!14953)))

(declare-fun b!5304947 () Bool)

(declare-fun e!3296933 () Bool)

(assert (=> b!5304947 (= e!3296933 (isEmpty!32992 (t!374363 (t!374363 (exprs!4837 (h!67483 zl!343))))))))

(declare-fun e!3296935 () Bool)

(assert (=> d!1705230 e!3296935))

(declare-fun res!2250347 () Bool)

(assert (=> d!1705230 (=> (not res!2250347) (not e!3296935))))

(assert (=> d!1705230 (= res!2250347 (validRegex!6689 lt!2167772))))

(declare-fun e!3296937 () Regex!14953)

(assert (=> d!1705230 (= lt!2167772 e!3296937)))

(declare-fun c!921083 () Bool)

(assert (=> d!1705230 (= c!921083 e!3296933)))

(declare-fun res!2250346 () Bool)

(assert (=> d!1705230 (=> (not res!2250346) (not e!3296933))))

(assert (=> d!1705230 (= res!2250346 ((_ is Cons!61034) (t!374363 (exprs!4837 (h!67483 zl!343)))))))

(assert (=> d!1705230 (forall!14365 (t!374363 (exprs!4837 (h!67483 zl!343))) lambda!269790)))

(assert (=> d!1705230 (= (generalisedConcat!622 (t!374363 (exprs!4837 (h!67483 zl!343)))) lt!2167772)))

(declare-fun b!5304948 () Bool)

(declare-fun e!3296938 () Bool)

(assert (=> b!5304948 (= e!3296934 e!3296938)))

(declare-fun c!921081 () Bool)

(assert (=> b!5304948 (= c!921081 (isEmpty!32992 (tail!10468 (t!374363 (exprs!4837 (h!67483 zl!343))))))))

(declare-fun b!5304949 () Bool)

(assert (=> b!5304949 (= e!3296937 e!3296936)))

(declare-fun c!921080 () Bool)

(assert (=> b!5304949 (= c!921080 ((_ is Cons!61034) (t!374363 (exprs!4837 (h!67483 zl!343)))))))

(declare-fun b!5304950 () Bool)

(assert (=> b!5304950 (= e!3296935 e!3296934)))

(declare-fun c!921082 () Bool)

(assert (=> b!5304950 (= c!921082 (isEmpty!32992 (t!374363 (exprs!4837 (h!67483 zl!343)))))))

(declare-fun b!5304951 () Bool)

(declare-fun isConcat!384 (Regex!14953) Bool)

(assert (=> b!5304951 (= e!3296938 (isConcat!384 lt!2167772))))

(declare-fun b!5304952 () Bool)

(assert (=> b!5304952 (= e!3296938 (= lt!2167772 (head!11371 (t!374363 (exprs!4837 (h!67483 zl!343))))))))

(declare-fun b!5304953 () Bool)

(assert (=> b!5304953 (= e!3296937 (h!67482 (t!374363 (exprs!4837 (h!67483 zl!343)))))))

(assert (= (and d!1705230 res!2250346) b!5304947))

(assert (= (and d!1705230 c!921083) b!5304953))

(assert (= (and d!1705230 (not c!921083)) b!5304949))

(assert (= (and b!5304949 c!921080) b!5304944))

(assert (= (and b!5304949 (not c!921080)) b!5304946))

(assert (= (and d!1705230 res!2250347) b!5304950))

(assert (= (and b!5304950 c!921082) b!5304945))

(assert (= (and b!5304950 (not c!921082)) b!5304948))

(assert (= (and b!5304948 c!921081) b!5304952))

(assert (= (and b!5304948 (not c!921081)) b!5304951))

(declare-fun m!6342286 () Bool)

(assert (=> b!5304945 m!6342286))

(declare-fun m!6342288 () Bool)

(assert (=> d!1705230 m!6342288))

(declare-fun m!6342290 () Bool)

(assert (=> d!1705230 m!6342290))

(declare-fun m!6342292 () Bool)

(assert (=> b!5304947 m!6342292))

(declare-fun m!6342294 () Bool)

(assert (=> b!5304952 m!6342294))

(declare-fun m!6342296 () Bool)

(assert (=> b!5304944 m!6342296))

(declare-fun m!6342298 () Bool)

(assert (=> b!5304951 m!6342298))

(declare-fun m!6342300 () Bool)

(assert (=> b!5304948 m!6342300))

(assert (=> b!5304948 m!6342300))

(declare-fun m!6342302 () Bool)

(assert (=> b!5304948 m!6342302))

(assert (=> b!5304950 m!6341364))

(assert (=> b!5304045 d!1705230))

(declare-fun bs!1230102 () Bool)

(declare-fun d!1705232 () Bool)

(assert (= bs!1230102 (and d!1705232 b!5304045)))

(declare-fun lambda!269791 () Int)

(assert (=> bs!1230102 (not (= lambda!269791 lambda!269690))))

(declare-fun bs!1230103 () Bool)

(assert (= bs!1230103 (and d!1705232 d!1705160)))

(assert (=> bs!1230103 (not (= lambda!269791 lambda!269756))))

(declare-fun bs!1230104 () Bool)

(assert (= bs!1230104 (and d!1705232 b!5304819)))

(assert (=> bs!1230104 (not (= lambda!269791 lambda!269774))))

(declare-fun bs!1230105 () Bool)

(assert (= bs!1230105 (and d!1705232 b!5304035)))

(assert (=> bs!1230105 (not (= lambda!269791 lambda!269687))))

(assert (=> bs!1230105 (= (and (= (regTwo!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167578 (regTwo!30418 r!7292))) (= lambda!269791 lambda!269686))))

(assert (=> bs!1230103 (= (and (= (regTwo!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167578 (regTwo!30418 r!7292))) (= lambda!269791 lambda!269755))))

(assert (=> bs!1230102 (= lambda!269791 lambda!269691)))

(declare-fun bs!1230106 () Bool)

(assert (= bs!1230106 (and d!1705232 d!1705164)))

(assert (=> bs!1230106 (= (and (= (regTwo!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167578 (regTwo!30418 r!7292))) (= lambda!269791 lambda!269759))))

(assert (=> bs!1230102 (= (and (= (regTwo!30418 (regOne!30418 r!7292)) (regOne!30418 (regOne!30418 r!7292))) (= lt!2167578 lt!2167594)) (= lambda!269791 lambda!269689))))

(assert (=> bs!1230102 (not (= lambda!269791 lambda!269692))))

(declare-fun bs!1230107 () Bool)

(assert (= bs!1230107 (and d!1705232 b!5304828)))

(assert (=> bs!1230107 (not (= lambda!269791 lambda!269773))))

(assert (=> d!1705232 true))

(assert (=> d!1705232 true))

(assert (=> d!1705232 true))

(declare-fun lambda!269792 () Int)

(assert (=> bs!1230102 (= (and (= (regTwo!30418 (regOne!30418 r!7292)) (regOne!30418 (regOne!30418 r!7292))) (= lt!2167578 lt!2167594)) (= lambda!269792 lambda!269690))))

(assert (=> bs!1230103 (= (and (= (regTwo!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167578 (regTwo!30418 r!7292))) (= lambda!269792 lambda!269756))))

(assert (=> bs!1230104 (= (and (= (regTwo!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167578 (regTwo!30418 r!7292))) (= lambda!269792 lambda!269774))))

(assert (=> bs!1230105 (= (and (= (regTwo!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167578 (regTwo!30418 r!7292))) (= lambda!269792 lambda!269687))))

(assert (=> bs!1230105 (not (= lambda!269792 lambda!269686))))

(assert (=> bs!1230103 (not (= lambda!269792 lambda!269755))))

(assert (=> bs!1230102 (not (= lambda!269792 lambda!269691))))

(declare-fun bs!1230108 () Bool)

(assert (= bs!1230108 d!1705232))

(assert (=> bs!1230108 (not (= lambda!269792 lambda!269791))))

(assert (=> bs!1230106 (not (= lambda!269792 lambda!269759))))

(assert (=> bs!1230102 (not (= lambda!269792 lambda!269689))))

(assert (=> bs!1230102 (= lambda!269792 lambda!269692)))

(assert (=> bs!1230107 (not (= lambda!269792 lambda!269773))))

(assert (=> d!1705232 true))

(assert (=> d!1705232 true))

(assert (=> d!1705232 true))

(assert (=> d!1705232 (= (Exists!2134 lambda!269791) (Exists!2134 lambda!269792))))

(declare-fun lt!2167773 () Unit!153330)

(assert (=> d!1705232 (= lt!2167773 (choose!39654 (regTwo!30418 (regOne!30418 r!7292)) lt!2167578 s!2326))))

(assert (=> d!1705232 (validRegex!6689 (regTwo!30418 (regOne!30418 r!7292)))))

(assert (=> d!1705232 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!788 (regTwo!30418 (regOne!30418 r!7292)) lt!2167578 s!2326) lt!2167773)))

(declare-fun m!6342304 () Bool)

(assert (=> bs!1230108 m!6342304))

(declare-fun m!6342306 () Bool)

(assert (=> bs!1230108 m!6342306))

(declare-fun m!6342308 () Bool)

(assert (=> bs!1230108 m!6342308))

(declare-fun m!6342310 () Bool)

(assert (=> bs!1230108 m!6342310))

(assert (=> b!5304045 d!1705232))

(declare-fun d!1705234 () Bool)

(assert (=> d!1705234 (= (Exists!2134 lambda!269689) (choose!39653 lambda!269689))))

(declare-fun bs!1230109 () Bool)

(assert (= bs!1230109 d!1705234))

(declare-fun m!6342312 () Bool)

(assert (=> bs!1230109 m!6342312))

(assert (=> b!5304045 d!1705234))

(declare-fun d!1705236 () Bool)

(assert (=> d!1705236 (= (Exists!2134 lambda!269690) (choose!39653 lambda!269690))))

(declare-fun bs!1230110 () Bool)

(assert (= bs!1230110 d!1705236))

(declare-fun m!6342314 () Bool)

(assert (=> bs!1230110 m!6342314))

(assert (=> b!5304045 d!1705236))

(declare-fun bs!1230111 () Bool)

(declare-fun d!1705238 () Bool)

(assert (= bs!1230111 (and d!1705238 b!5304045)))

(declare-fun lambda!269793 () Int)

(assert (=> bs!1230111 (not (= lambda!269793 lambda!269690))))

(declare-fun bs!1230112 () Bool)

(assert (= bs!1230112 (and d!1705238 b!5304819)))

(assert (=> bs!1230112 (not (= lambda!269793 lambda!269774))))

(declare-fun bs!1230113 () Bool)

(assert (= bs!1230113 (and d!1705238 b!5304035)))

(assert (=> bs!1230113 (not (= lambda!269793 lambda!269687))))

(assert (=> bs!1230113 (= (and (= (regTwo!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167578 (regTwo!30418 r!7292))) (= lambda!269793 lambda!269686))))

(declare-fun bs!1230114 () Bool)

(assert (= bs!1230114 (and d!1705238 d!1705160)))

(assert (=> bs!1230114 (not (= lambda!269793 lambda!269756))))

(declare-fun bs!1230115 () Bool)

(assert (= bs!1230115 (and d!1705238 d!1705232)))

(assert (=> bs!1230115 (not (= lambda!269793 lambda!269792))))

(assert (=> bs!1230114 (= (and (= (regTwo!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167578 (regTwo!30418 r!7292))) (= lambda!269793 lambda!269755))))

(assert (=> bs!1230111 (= lambda!269793 lambda!269691)))

(assert (=> bs!1230115 (= lambda!269793 lambda!269791)))

(declare-fun bs!1230116 () Bool)

(assert (= bs!1230116 (and d!1705238 d!1705164)))

(assert (=> bs!1230116 (= (and (= (regTwo!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167578 (regTwo!30418 r!7292))) (= lambda!269793 lambda!269759))))

(assert (=> bs!1230111 (= (and (= (regTwo!30418 (regOne!30418 r!7292)) (regOne!30418 (regOne!30418 r!7292))) (= lt!2167578 lt!2167594)) (= lambda!269793 lambda!269689))))

(assert (=> bs!1230111 (not (= lambda!269793 lambda!269692))))

(declare-fun bs!1230117 () Bool)

(assert (= bs!1230117 (and d!1705238 b!5304828)))

(assert (=> bs!1230117 (not (= lambda!269793 lambda!269773))))

(assert (=> d!1705238 true))

(assert (=> d!1705238 true))

(assert (=> d!1705238 true))

(assert (=> d!1705238 (= (isDefined!11767 (findConcatSeparation!1478 (regTwo!30418 (regOne!30418 r!7292)) lt!2167578 Nil!61036 s!2326 s!2326)) (Exists!2134 lambda!269793))))

(declare-fun lt!2167774 () Unit!153330)

(assert (=> d!1705238 (= lt!2167774 (choose!39655 (regTwo!30418 (regOne!30418 r!7292)) lt!2167578 s!2326))))

(assert (=> d!1705238 (validRegex!6689 (regTwo!30418 (regOne!30418 r!7292)))))

(assert (=> d!1705238 (= (lemmaFindConcatSeparationEquivalentToExists!1242 (regTwo!30418 (regOne!30418 r!7292)) lt!2167578 s!2326) lt!2167774)))

(declare-fun bs!1230118 () Bool)

(assert (= bs!1230118 d!1705238))

(assert (=> bs!1230118 m!6341406))

(assert (=> bs!1230118 m!6342310))

(assert (=> bs!1230118 m!6341406))

(assert (=> bs!1230118 m!6341408))

(declare-fun m!6342316 () Bool)

(assert (=> bs!1230118 m!6342316))

(declare-fun m!6342318 () Bool)

(assert (=> bs!1230118 m!6342318))

(assert (=> b!5304045 d!1705238))

(declare-fun d!1705240 () Bool)

(assert (=> d!1705240 (= (matchR!7138 lt!2167594 s!2326) (matchRSpec!2056 lt!2167594 s!2326))))

(declare-fun lt!2167775 () Unit!153330)

(assert (=> d!1705240 (= lt!2167775 (choose!39659 lt!2167594 s!2326))))

(assert (=> d!1705240 (validRegex!6689 lt!2167594)))

(assert (=> d!1705240 (= (mainMatchTheorem!2056 lt!2167594 s!2326) lt!2167775)))

(declare-fun bs!1230119 () Bool)

(assert (= bs!1230119 d!1705240))

(assert (=> bs!1230119 m!6341424))

(assert (=> bs!1230119 m!6341428))

(declare-fun m!6342320 () Bool)

(assert (=> bs!1230119 m!6342320))

(declare-fun m!6342322 () Bool)

(assert (=> bs!1230119 m!6342322))

(assert (=> b!5304045 d!1705240))

(declare-fun d!1705242 () Bool)

(assert (=> d!1705242 (= (matchR!7138 lt!2167609 s!2326) (matchZipper!1197 lt!2167590 s!2326))))

(declare-fun lt!2167778 () Unit!153330)

(declare-fun choose!39661 ((InoxSet Context!8674) List!61159 Regex!14953 List!61160) Unit!153330)

(assert (=> d!1705242 (= lt!2167778 (choose!39661 lt!2167590 lt!2167600 lt!2167609 s!2326))))

(assert (=> d!1705242 (validRegex!6689 lt!2167609)))

(assert (=> d!1705242 (= (theoremZipperRegexEquiv!363 lt!2167590 lt!2167600 lt!2167609 s!2326) lt!2167778)))

(declare-fun bs!1230120 () Bool)

(assert (= bs!1230120 d!1705242))

(assert (=> bs!1230120 m!6341420))

(assert (=> bs!1230120 m!6341404))

(declare-fun m!6342324 () Bool)

(assert (=> bs!1230120 m!6342324))

(assert (=> bs!1230120 m!6342284))

(assert (=> b!5304045 d!1705242))

(declare-fun d!1705244 () Bool)

(declare-fun c!921084 () Bool)

(assert (=> d!1705244 (= c!921084 (isEmpty!32995 s!2326))))

(declare-fun e!3296939 () Bool)

(assert (=> d!1705244 (= (matchZipper!1197 lt!2167614 s!2326) e!3296939)))

(declare-fun b!5304954 () Bool)

(assert (=> b!5304954 (= e!3296939 (nullableZipper!1326 lt!2167614))))

(declare-fun b!5304955 () Bool)

(assert (=> b!5304955 (= e!3296939 (matchZipper!1197 (derivationStepZipper!1196 lt!2167614 (head!11370 s!2326)) (tail!10467 s!2326)))))

(assert (= (and d!1705244 c!921084) b!5304954))

(assert (= (and d!1705244 (not c!921084)) b!5304955))

(assert (=> d!1705244 m!6342178))

(declare-fun m!6342326 () Bool)

(assert (=> b!5304954 m!6342326))

(assert (=> b!5304955 m!6342180))

(assert (=> b!5304955 m!6342180))

(declare-fun m!6342328 () Bool)

(assert (=> b!5304955 m!6342328))

(assert (=> b!5304955 m!6342184))

(assert (=> b!5304955 m!6342328))

(assert (=> b!5304955 m!6342184))

(declare-fun m!6342330 () Bool)

(assert (=> b!5304955 m!6342330))

(assert (=> b!5304045 d!1705244))

(declare-fun b!5304956 () Bool)

(declare-fun res!2250351 () Bool)

(declare-fun e!3296940 () Bool)

(assert (=> b!5304956 (=> res!2250351 e!3296940)))

(assert (=> b!5304956 (= res!2250351 (not (isEmpty!32995 (tail!10467 s!2326))))))

(declare-fun d!1705246 () Bool)

(declare-fun e!3296945 () Bool)

(assert (=> d!1705246 e!3296945))

(declare-fun c!921085 () Bool)

(assert (=> d!1705246 (= c!921085 ((_ is EmptyExpr!14953) lt!2167609))))

(declare-fun lt!2167779 () Bool)

(declare-fun e!3296946 () Bool)

(assert (=> d!1705246 (= lt!2167779 e!3296946)))

(declare-fun c!921087 () Bool)

(assert (=> d!1705246 (= c!921087 (isEmpty!32995 s!2326))))

(assert (=> d!1705246 (validRegex!6689 lt!2167609)))

(assert (=> d!1705246 (= (matchR!7138 lt!2167609 s!2326) lt!2167779)))

(declare-fun b!5304957 () Bool)

(declare-fun e!3296942 () Bool)

(assert (=> b!5304957 (= e!3296945 e!3296942)))

(declare-fun c!921086 () Bool)

(assert (=> b!5304957 (= c!921086 ((_ is EmptyLang!14953) lt!2167609))))

(declare-fun b!5304958 () Bool)

(assert (=> b!5304958 (= e!3296940 (not (= (head!11370 s!2326) (c!920805 lt!2167609))))))

(declare-fun b!5304959 () Bool)

(declare-fun call!378178 () Bool)

(assert (=> b!5304959 (= e!3296945 (= lt!2167779 call!378178))))

(declare-fun b!5304960 () Bool)

(declare-fun res!2250355 () Bool)

(declare-fun e!3296941 () Bool)

(assert (=> b!5304960 (=> (not res!2250355) (not e!3296941))))

(assert (=> b!5304960 (= res!2250355 (isEmpty!32995 (tail!10467 s!2326)))))

(declare-fun b!5304961 () Bool)

(declare-fun e!3296944 () Bool)

(declare-fun e!3296943 () Bool)

(assert (=> b!5304961 (= e!3296944 e!3296943)))

(declare-fun res!2250350 () Bool)

(assert (=> b!5304961 (=> (not res!2250350) (not e!3296943))))

(assert (=> b!5304961 (= res!2250350 (not lt!2167779))))

(declare-fun b!5304962 () Bool)

(declare-fun res!2250352 () Bool)

(assert (=> b!5304962 (=> (not res!2250352) (not e!3296941))))

(assert (=> b!5304962 (= res!2250352 (not call!378178))))

(declare-fun b!5304963 () Bool)

(assert (=> b!5304963 (= e!3296941 (= (head!11370 s!2326) (c!920805 lt!2167609)))))

(declare-fun b!5304964 () Bool)

(declare-fun res!2250348 () Bool)

(assert (=> b!5304964 (=> res!2250348 e!3296944)))

(assert (=> b!5304964 (= res!2250348 (not ((_ is ElementMatch!14953) lt!2167609)))))

(assert (=> b!5304964 (= e!3296942 e!3296944)))

(declare-fun bm!378173 () Bool)

(assert (=> bm!378173 (= call!378178 (isEmpty!32995 s!2326))))

(declare-fun b!5304965 () Bool)

(assert (=> b!5304965 (= e!3296946 (nullable!5122 lt!2167609))))

(declare-fun b!5304966 () Bool)

(assert (=> b!5304966 (= e!3296942 (not lt!2167779))))

(declare-fun b!5304967 () Bool)

(assert (=> b!5304967 (= e!3296946 (matchR!7138 (derivativeStep!4147 lt!2167609 (head!11370 s!2326)) (tail!10467 s!2326)))))

(declare-fun b!5304968 () Bool)

(declare-fun res!2250353 () Bool)

(assert (=> b!5304968 (=> res!2250353 e!3296944)))

(assert (=> b!5304968 (= res!2250353 e!3296941)))

(declare-fun res!2250349 () Bool)

(assert (=> b!5304968 (=> (not res!2250349) (not e!3296941))))

(assert (=> b!5304968 (= res!2250349 lt!2167779)))

(declare-fun b!5304969 () Bool)

(assert (=> b!5304969 (= e!3296943 e!3296940)))

(declare-fun res!2250354 () Bool)

(assert (=> b!5304969 (=> res!2250354 e!3296940)))

(assert (=> b!5304969 (= res!2250354 call!378178)))

(assert (= (and d!1705246 c!921087) b!5304965))

(assert (= (and d!1705246 (not c!921087)) b!5304967))

(assert (= (and d!1705246 c!921085) b!5304959))

(assert (= (and d!1705246 (not c!921085)) b!5304957))

(assert (= (and b!5304957 c!921086) b!5304966))

(assert (= (and b!5304957 (not c!921086)) b!5304964))

(assert (= (and b!5304964 (not res!2250348)) b!5304968))

(assert (= (and b!5304968 res!2250349) b!5304962))

(assert (= (and b!5304962 res!2250352) b!5304960))

(assert (= (and b!5304960 res!2250355) b!5304963))

(assert (= (and b!5304968 (not res!2250353)) b!5304961))

(assert (= (and b!5304961 res!2250350) b!5304969))

(assert (= (and b!5304969 (not res!2250354)) b!5304956))

(assert (= (and b!5304956 (not res!2250351)) b!5304958))

(assert (= (or b!5304959 b!5304962 b!5304969) bm!378173))

(assert (=> b!5304963 m!6342180))

(assert (=> b!5304958 m!6342180))

(declare-fun m!6342332 () Bool)

(assert (=> b!5304965 m!6342332))

(assert (=> bm!378173 m!6342178))

(assert (=> b!5304956 m!6342184))

(assert (=> b!5304956 m!6342184))

(assert (=> b!5304956 m!6342186))

(assert (=> d!1705246 m!6342178))

(assert (=> d!1705246 m!6342284))

(assert (=> b!5304960 m!6342184))

(assert (=> b!5304960 m!6342184))

(assert (=> b!5304960 m!6342186))

(assert (=> b!5304967 m!6342180))

(assert (=> b!5304967 m!6342180))

(declare-fun m!6342334 () Bool)

(assert (=> b!5304967 m!6342334))

(assert (=> b!5304967 m!6342184))

(assert (=> b!5304967 m!6342334))

(assert (=> b!5304967 m!6342184))

(declare-fun m!6342336 () Bool)

(assert (=> b!5304967 m!6342336))

(assert (=> b!5304045 d!1705246))

(declare-fun b!5304970 () Bool)

(declare-fun e!3296951 () Option!15064)

(assert (=> b!5304970 (= e!3296951 None!15063)))

(declare-fun b!5304971 () Bool)

(declare-fun res!2250356 () Bool)

(declare-fun e!3296950 () Bool)

(assert (=> b!5304971 (=> (not res!2250356) (not e!3296950))))

(declare-fun lt!2167782 () Option!15064)

(assert (=> b!5304971 (= res!2250356 (matchR!7138 lt!2167578 (_2!35455 (get!20988 lt!2167782))))))

(declare-fun b!5304972 () Bool)

(declare-fun e!3296947 () Bool)

(assert (=> b!5304972 (= e!3296947 (matchR!7138 lt!2167578 s!2326))))

(declare-fun b!5304974 () Bool)

(declare-fun lt!2167780 () Unit!153330)

(declare-fun lt!2167781 () Unit!153330)

(assert (=> b!5304974 (= lt!2167780 lt!2167781)))

(assert (=> b!5304974 (= (++!13306 (++!13306 Nil!61036 (Cons!61036 (h!67484 s!2326) Nil!61036)) (t!374365 s!2326)) s!2326)))

(assert (=> b!5304974 (= lt!2167781 (lemmaMoveElementToOtherListKeepsConcatEq!1721 Nil!61036 (h!67484 s!2326) (t!374365 s!2326) s!2326))))

(assert (=> b!5304974 (= e!3296951 (findConcatSeparation!1478 (regTwo!30418 (regOne!30418 r!7292)) lt!2167578 (++!13306 Nil!61036 (Cons!61036 (h!67484 s!2326) Nil!61036)) (t!374365 s!2326) s!2326))))

(declare-fun b!5304975 () Bool)

(declare-fun e!3296948 () Option!15064)

(assert (=> b!5304975 (= e!3296948 e!3296951)))

(declare-fun c!921088 () Bool)

(assert (=> b!5304975 (= c!921088 ((_ is Nil!61036) s!2326))))

(declare-fun b!5304976 () Bool)

(assert (=> b!5304976 (= e!3296948 (Some!15063 (tuple2!64305 Nil!61036 s!2326)))))

(declare-fun b!5304977 () Bool)

(declare-fun res!2250360 () Bool)

(assert (=> b!5304977 (=> (not res!2250360) (not e!3296950))))

(assert (=> b!5304977 (= res!2250360 (matchR!7138 (regTwo!30418 (regOne!30418 r!7292)) (_1!35455 (get!20988 lt!2167782))))))

(declare-fun b!5304978 () Bool)

(assert (=> b!5304978 (= e!3296950 (= (++!13306 (_1!35455 (get!20988 lt!2167782)) (_2!35455 (get!20988 lt!2167782))) s!2326))))

(declare-fun b!5304973 () Bool)

(declare-fun e!3296949 () Bool)

(assert (=> b!5304973 (= e!3296949 (not (isDefined!11767 lt!2167782)))))

(declare-fun d!1705248 () Bool)

(assert (=> d!1705248 e!3296949))

(declare-fun res!2250359 () Bool)

(assert (=> d!1705248 (=> res!2250359 e!3296949)))

(assert (=> d!1705248 (= res!2250359 e!3296950)))

(declare-fun res!2250357 () Bool)

(assert (=> d!1705248 (=> (not res!2250357) (not e!3296950))))

(assert (=> d!1705248 (= res!2250357 (isDefined!11767 lt!2167782))))

(assert (=> d!1705248 (= lt!2167782 e!3296948)))

(declare-fun c!921089 () Bool)

(assert (=> d!1705248 (= c!921089 e!3296947)))

(declare-fun res!2250358 () Bool)

(assert (=> d!1705248 (=> (not res!2250358) (not e!3296947))))

(assert (=> d!1705248 (= res!2250358 (matchR!7138 (regTwo!30418 (regOne!30418 r!7292)) Nil!61036))))

(assert (=> d!1705248 (validRegex!6689 (regTwo!30418 (regOne!30418 r!7292)))))

(assert (=> d!1705248 (= (findConcatSeparation!1478 (regTwo!30418 (regOne!30418 r!7292)) lt!2167578 Nil!61036 s!2326 s!2326) lt!2167782)))

(assert (= (and d!1705248 res!2250358) b!5304972))

(assert (= (and d!1705248 c!921089) b!5304976))

(assert (= (and d!1705248 (not c!921089)) b!5304975))

(assert (= (and b!5304975 c!921088) b!5304970))

(assert (= (and b!5304975 (not c!921088)) b!5304974))

(assert (= (and d!1705248 res!2250357) b!5304977))

(assert (= (and b!5304977 res!2250360) b!5304971))

(assert (= (and b!5304971 res!2250356) b!5304978))

(assert (= (and d!1705248 (not res!2250359)) b!5304973))

(declare-fun m!6342338 () Bool)

(assert (=> b!5304972 m!6342338))

(declare-fun m!6342340 () Bool)

(assert (=> b!5304978 m!6342340))

(declare-fun m!6342342 () Bool)

(assert (=> b!5304978 m!6342342))

(assert (=> b!5304974 m!6342070))

(assert (=> b!5304974 m!6342070))

(assert (=> b!5304974 m!6342072))

(assert (=> b!5304974 m!6342074))

(assert (=> b!5304974 m!6342070))

(declare-fun m!6342344 () Bool)

(assert (=> b!5304974 m!6342344))

(assert (=> b!5304977 m!6342340))

(declare-fun m!6342346 () Bool)

(assert (=> b!5304977 m!6342346))

(declare-fun m!6342348 () Bool)

(assert (=> b!5304973 m!6342348))

(assert (=> d!1705248 m!6342348))

(declare-fun m!6342350 () Bool)

(assert (=> d!1705248 m!6342350))

(assert (=> d!1705248 m!6342310))

(assert (=> b!5304971 m!6342340))

(declare-fun m!6342352 () Bool)

(assert (=> b!5304971 m!6342352))

(assert (=> b!5304045 d!1705248))

(declare-fun d!1705250 () Bool)

(assert (=> d!1705250 (= (isDefined!11767 (findConcatSeparation!1478 (regOne!30418 (regOne!30418 r!7292)) lt!2167594 Nil!61036 s!2326 s!2326)) (not (isEmpty!32996 (findConcatSeparation!1478 (regOne!30418 (regOne!30418 r!7292)) lt!2167594 Nil!61036 s!2326 s!2326))))))

(declare-fun bs!1230121 () Bool)

(assert (= bs!1230121 d!1705250))

(assert (=> bs!1230121 m!6341384))

(declare-fun m!6342354 () Bool)

(assert (=> bs!1230121 m!6342354))

(assert (=> b!5304045 d!1705250))

(declare-fun b!5304979 () Bool)

(declare-fun res!2250364 () Bool)

(declare-fun e!3296952 () Bool)

(assert (=> b!5304979 (=> res!2250364 e!3296952)))

(assert (=> b!5304979 (= res!2250364 (not (isEmpty!32995 (tail!10467 s!2326))))))

(declare-fun d!1705252 () Bool)

(declare-fun e!3296957 () Bool)

(assert (=> d!1705252 e!3296957))

(declare-fun c!921090 () Bool)

(assert (=> d!1705252 (= c!921090 ((_ is EmptyExpr!14953) lt!2167594))))

(declare-fun lt!2167783 () Bool)

(declare-fun e!3296958 () Bool)

(assert (=> d!1705252 (= lt!2167783 e!3296958)))

(declare-fun c!921092 () Bool)

(assert (=> d!1705252 (= c!921092 (isEmpty!32995 s!2326))))

(assert (=> d!1705252 (validRegex!6689 lt!2167594)))

(assert (=> d!1705252 (= (matchR!7138 lt!2167594 s!2326) lt!2167783)))

(declare-fun b!5304980 () Bool)

(declare-fun e!3296954 () Bool)

(assert (=> b!5304980 (= e!3296957 e!3296954)))

(declare-fun c!921091 () Bool)

(assert (=> b!5304980 (= c!921091 ((_ is EmptyLang!14953) lt!2167594))))

(declare-fun b!5304981 () Bool)

(assert (=> b!5304981 (= e!3296952 (not (= (head!11370 s!2326) (c!920805 lt!2167594))))))

(declare-fun b!5304982 () Bool)

(declare-fun call!378179 () Bool)

(assert (=> b!5304982 (= e!3296957 (= lt!2167783 call!378179))))

(declare-fun b!5304983 () Bool)

(declare-fun res!2250368 () Bool)

(declare-fun e!3296953 () Bool)

(assert (=> b!5304983 (=> (not res!2250368) (not e!3296953))))

(assert (=> b!5304983 (= res!2250368 (isEmpty!32995 (tail!10467 s!2326)))))

(declare-fun b!5304984 () Bool)

(declare-fun e!3296956 () Bool)

(declare-fun e!3296955 () Bool)

(assert (=> b!5304984 (= e!3296956 e!3296955)))

(declare-fun res!2250363 () Bool)

(assert (=> b!5304984 (=> (not res!2250363) (not e!3296955))))

(assert (=> b!5304984 (= res!2250363 (not lt!2167783))))

(declare-fun b!5304985 () Bool)

(declare-fun res!2250365 () Bool)

(assert (=> b!5304985 (=> (not res!2250365) (not e!3296953))))

(assert (=> b!5304985 (= res!2250365 (not call!378179))))

(declare-fun b!5304986 () Bool)

(assert (=> b!5304986 (= e!3296953 (= (head!11370 s!2326) (c!920805 lt!2167594)))))

(declare-fun b!5304987 () Bool)

(declare-fun res!2250361 () Bool)

(assert (=> b!5304987 (=> res!2250361 e!3296956)))

(assert (=> b!5304987 (= res!2250361 (not ((_ is ElementMatch!14953) lt!2167594)))))

(assert (=> b!5304987 (= e!3296954 e!3296956)))

(declare-fun bm!378174 () Bool)

(assert (=> bm!378174 (= call!378179 (isEmpty!32995 s!2326))))

(declare-fun b!5304988 () Bool)

(assert (=> b!5304988 (= e!3296958 (nullable!5122 lt!2167594))))

(declare-fun b!5304989 () Bool)

(assert (=> b!5304989 (= e!3296954 (not lt!2167783))))

(declare-fun b!5304990 () Bool)

(assert (=> b!5304990 (= e!3296958 (matchR!7138 (derivativeStep!4147 lt!2167594 (head!11370 s!2326)) (tail!10467 s!2326)))))

(declare-fun b!5304991 () Bool)

(declare-fun res!2250366 () Bool)

(assert (=> b!5304991 (=> res!2250366 e!3296956)))

(assert (=> b!5304991 (= res!2250366 e!3296953)))

(declare-fun res!2250362 () Bool)

(assert (=> b!5304991 (=> (not res!2250362) (not e!3296953))))

(assert (=> b!5304991 (= res!2250362 lt!2167783)))

(declare-fun b!5304992 () Bool)

(assert (=> b!5304992 (= e!3296955 e!3296952)))

(declare-fun res!2250367 () Bool)

(assert (=> b!5304992 (=> res!2250367 e!3296952)))

(assert (=> b!5304992 (= res!2250367 call!378179)))

(assert (= (and d!1705252 c!921092) b!5304988))

(assert (= (and d!1705252 (not c!921092)) b!5304990))

(assert (= (and d!1705252 c!921090) b!5304982))

(assert (= (and d!1705252 (not c!921090)) b!5304980))

(assert (= (and b!5304980 c!921091) b!5304989))

(assert (= (and b!5304980 (not c!921091)) b!5304987))

(assert (= (and b!5304987 (not res!2250361)) b!5304991))

(assert (= (and b!5304991 res!2250362) b!5304985))

(assert (= (and b!5304985 res!2250365) b!5304983))

(assert (= (and b!5304983 res!2250368) b!5304986))

(assert (= (and b!5304991 (not res!2250366)) b!5304984))

(assert (= (and b!5304984 res!2250363) b!5304992))

(assert (= (and b!5304992 (not res!2250367)) b!5304979))

(assert (= (and b!5304979 (not res!2250364)) b!5304981))

(assert (= (or b!5304982 b!5304985 b!5304992) bm!378174))

(assert (=> b!5304986 m!6342180))

(assert (=> b!5304981 m!6342180))

(declare-fun m!6342356 () Bool)

(assert (=> b!5304988 m!6342356))

(assert (=> bm!378174 m!6342178))

(assert (=> b!5304979 m!6342184))

(assert (=> b!5304979 m!6342184))

(assert (=> b!5304979 m!6342186))

(assert (=> d!1705252 m!6342178))

(assert (=> d!1705252 m!6342322))

(assert (=> b!5304983 m!6342184))

(assert (=> b!5304983 m!6342184))

(assert (=> b!5304983 m!6342186))

(assert (=> b!5304990 m!6342180))

(assert (=> b!5304990 m!6342180))

(declare-fun m!6342358 () Bool)

(assert (=> b!5304990 m!6342358))

(assert (=> b!5304990 m!6342184))

(assert (=> b!5304990 m!6342358))

(assert (=> b!5304990 m!6342184))

(declare-fun m!6342360 () Bool)

(assert (=> b!5304990 m!6342360))

(assert (=> b!5304045 d!1705252))

(declare-fun bs!1230122 () Bool)

(declare-fun d!1705254 () Bool)

(assert (= bs!1230122 (and d!1705254 d!1705186)))

(declare-fun lambda!269794 () Int)

(assert (=> bs!1230122 (= lambda!269794 lambda!269765)))

(declare-fun bs!1230123 () Bool)

(assert (= bs!1230123 (and d!1705254 d!1705184)))

(assert (=> bs!1230123 (= lambda!269794 lambda!269762)))

(declare-fun bs!1230124 () Bool)

(assert (= bs!1230124 (and d!1705254 d!1705230)))

(assert (=> bs!1230124 (= lambda!269794 lambda!269790)))

(declare-fun bs!1230125 () Bool)

(assert (= bs!1230125 (and d!1705254 d!1705188)))

(assert (=> bs!1230125 (= lambda!269794 lambda!269768)))

(declare-fun bs!1230126 () Bool)

(assert (= bs!1230126 (and d!1705254 b!5304040)))

(assert (=> bs!1230126 (= lambda!269794 lambda!269693)))

(declare-fun bs!1230127 () Bool)

(assert (= bs!1230127 (and d!1705254 d!1705222)))

(assert (=> bs!1230127 (= lambda!269794 lambda!269775)))

(declare-fun b!5304993 () Bool)

(declare-fun e!3296962 () Regex!14953)

(assert (=> b!5304993 (= e!3296962 (Concat!23798 (h!67482 lt!2167605) (generalisedConcat!622 (t!374363 lt!2167605))))))

(declare-fun b!5304994 () Bool)

(declare-fun e!3296960 () Bool)

(declare-fun lt!2167784 () Regex!14953)

(assert (=> b!5304994 (= e!3296960 (isEmptyExpr!861 lt!2167784))))

(declare-fun b!5304995 () Bool)

(assert (=> b!5304995 (= e!3296962 EmptyExpr!14953)))

(declare-fun b!5304996 () Bool)

(declare-fun e!3296959 () Bool)

(assert (=> b!5304996 (= e!3296959 (isEmpty!32992 (t!374363 lt!2167605)))))

(declare-fun e!3296961 () Bool)

(assert (=> d!1705254 e!3296961))

(declare-fun res!2250370 () Bool)

(assert (=> d!1705254 (=> (not res!2250370) (not e!3296961))))

(assert (=> d!1705254 (= res!2250370 (validRegex!6689 lt!2167784))))

(declare-fun e!3296963 () Regex!14953)

(assert (=> d!1705254 (= lt!2167784 e!3296963)))

(declare-fun c!921096 () Bool)

(assert (=> d!1705254 (= c!921096 e!3296959)))

(declare-fun res!2250369 () Bool)

(assert (=> d!1705254 (=> (not res!2250369) (not e!3296959))))

(assert (=> d!1705254 (= res!2250369 ((_ is Cons!61034) lt!2167605))))

(assert (=> d!1705254 (forall!14365 lt!2167605 lambda!269794)))

(assert (=> d!1705254 (= (generalisedConcat!622 lt!2167605) lt!2167784)))

(declare-fun b!5304997 () Bool)

(declare-fun e!3296964 () Bool)

(assert (=> b!5304997 (= e!3296960 e!3296964)))

(declare-fun c!921094 () Bool)

(assert (=> b!5304997 (= c!921094 (isEmpty!32992 (tail!10468 lt!2167605)))))

(declare-fun b!5304998 () Bool)

(assert (=> b!5304998 (= e!3296963 e!3296962)))

(declare-fun c!921093 () Bool)

(assert (=> b!5304998 (= c!921093 ((_ is Cons!61034) lt!2167605))))

(declare-fun b!5304999 () Bool)

(assert (=> b!5304999 (= e!3296961 e!3296960)))

(declare-fun c!921095 () Bool)

(assert (=> b!5304999 (= c!921095 (isEmpty!32992 lt!2167605))))

(declare-fun b!5305000 () Bool)

(assert (=> b!5305000 (= e!3296964 (isConcat!384 lt!2167784))))

(declare-fun b!5305001 () Bool)

(assert (=> b!5305001 (= e!3296964 (= lt!2167784 (head!11371 lt!2167605)))))

(declare-fun b!5305002 () Bool)

(assert (=> b!5305002 (= e!3296963 (h!67482 lt!2167605))))

(assert (= (and d!1705254 res!2250369) b!5304996))

(assert (= (and d!1705254 c!921096) b!5305002))

(assert (= (and d!1705254 (not c!921096)) b!5304998))

(assert (= (and b!5304998 c!921093) b!5304993))

(assert (= (and b!5304998 (not c!921093)) b!5304995))

(assert (= (and d!1705254 res!2250370) b!5304999))

(assert (= (and b!5304999 c!921095) b!5304994))

(assert (= (and b!5304999 (not c!921095)) b!5304997))

(assert (= (and b!5304997 c!921094) b!5305001))

(assert (= (and b!5304997 (not c!921094)) b!5305000))

(declare-fun m!6342362 () Bool)

(assert (=> b!5304994 m!6342362))

(declare-fun m!6342364 () Bool)

(assert (=> d!1705254 m!6342364))

(declare-fun m!6342366 () Bool)

(assert (=> d!1705254 m!6342366))

(declare-fun m!6342368 () Bool)

(assert (=> b!5304996 m!6342368))

(declare-fun m!6342370 () Bool)

(assert (=> b!5305001 m!6342370))

(declare-fun m!6342372 () Bool)

(assert (=> b!5304993 m!6342372))

(declare-fun m!6342374 () Bool)

(assert (=> b!5305000 m!6342374))

(declare-fun m!6342376 () Bool)

(assert (=> b!5304997 m!6342376))

(assert (=> b!5304997 m!6342376))

(declare-fun m!6342378 () Bool)

(assert (=> b!5304997 m!6342378))

(declare-fun m!6342380 () Bool)

(assert (=> b!5304999 m!6342380))

(assert (=> b!5304045 d!1705254))

(declare-fun d!1705256 () Bool)

(declare-fun c!921097 () Bool)

(assert (=> d!1705256 (= c!921097 (isEmpty!32995 s!2326))))

(declare-fun e!3296965 () Bool)

(assert (=> d!1705256 (= (matchZipper!1197 z!1189 s!2326) e!3296965)))

(declare-fun b!5305003 () Bool)

(assert (=> b!5305003 (= e!3296965 (nullableZipper!1326 z!1189))))

(declare-fun b!5305004 () Bool)

(assert (=> b!5305004 (= e!3296965 (matchZipper!1197 (derivationStepZipper!1196 z!1189 (head!11370 s!2326)) (tail!10467 s!2326)))))

(assert (= (and d!1705256 c!921097) b!5305003))

(assert (= (and d!1705256 (not c!921097)) b!5305004))

(assert (=> d!1705256 m!6342178))

(declare-fun m!6342382 () Bool)

(assert (=> b!5305003 m!6342382))

(assert (=> b!5305004 m!6342180))

(assert (=> b!5305004 m!6342180))

(declare-fun m!6342384 () Bool)

(assert (=> b!5305004 m!6342384))

(assert (=> b!5305004 m!6342184))

(assert (=> b!5305004 m!6342384))

(assert (=> b!5305004 m!6342184))

(declare-fun m!6342386 () Bool)

(assert (=> b!5305004 m!6342386))

(assert (=> b!5304045 d!1705256))

(declare-fun d!1705258 () Bool)

(assert (=> d!1705258 (= (isDefined!11767 (findConcatSeparation!1478 (regTwo!30418 (regOne!30418 r!7292)) lt!2167578 Nil!61036 s!2326 s!2326)) (not (isEmpty!32996 (findConcatSeparation!1478 (regTwo!30418 (regOne!30418 r!7292)) lt!2167578 Nil!61036 s!2326 s!2326))))))

(declare-fun bs!1230128 () Bool)

(assert (= bs!1230128 d!1705258))

(assert (=> bs!1230128 m!6341406))

(declare-fun m!6342388 () Bool)

(assert (=> bs!1230128 m!6342388))

(assert (=> b!5304045 d!1705258))

(declare-fun d!1705260 () Bool)

(assert (=> d!1705260 (= (matchR!7138 lt!2167594 s!2326) (matchZipper!1197 lt!2167614 s!2326))))

(declare-fun lt!2167785 () Unit!153330)

(assert (=> d!1705260 (= lt!2167785 (choose!39661 lt!2167614 (Cons!61035 lt!2167597 Nil!61035) lt!2167594 s!2326))))

(assert (=> d!1705260 (validRegex!6689 lt!2167594)))

(assert (=> d!1705260 (= (theoremZipperRegexEquiv!363 lt!2167614 (Cons!61035 lt!2167597 Nil!61035) lt!2167594 s!2326) lt!2167785)))

(declare-fun bs!1230129 () Bool)

(assert (= bs!1230129 d!1705260))

(assert (=> bs!1230129 m!6341424))

(assert (=> bs!1230129 m!6341414))

(declare-fun m!6342390 () Bool)

(assert (=> bs!1230129 m!6342390))

(assert (=> bs!1230129 m!6342322))

(assert (=> b!5304045 d!1705260))

(declare-fun b!5305005 () Bool)

(declare-fun e!3296970 () Option!15064)

(assert (=> b!5305005 (= e!3296970 None!15063)))

(declare-fun b!5305006 () Bool)

(declare-fun res!2250371 () Bool)

(declare-fun e!3296969 () Bool)

(assert (=> b!5305006 (=> (not res!2250371) (not e!3296969))))

(declare-fun lt!2167788 () Option!15064)

(assert (=> b!5305006 (= res!2250371 (matchR!7138 lt!2167594 (_2!35455 (get!20988 lt!2167788))))))

(declare-fun b!5305007 () Bool)

(declare-fun e!3296966 () Bool)

(assert (=> b!5305007 (= e!3296966 (matchR!7138 lt!2167594 s!2326))))

(declare-fun b!5305009 () Bool)

(declare-fun lt!2167786 () Unit!153330)

(declare-fun lt!2167787 () Unit!153330)

(assert (=> b!5305009 (= lt!2167786 lt!2167787)))

(assert (=> b!5305009 (= (++!13306 (++!13306 Nil!61036 (Cons!61036 (h!67484 s!2326) Nil!61036)) (t!374365 s!2326)) s!2326)))

(assert (=> b!5305009 (= lt!2167787 (lemmaMoveElementToOtherListKeepsConcatEq!1721 Nil!61036 (h!67484 s!2326) (t!374365 s!2326) s!2326))))

(assert (=> b!5305009 (= e!3296970 (findConcatSeparation!1478 (regOne!30418 (regOne!30418 r!7292)) lt!2167594 (++!13306 Nil!61036 (Cons!61036 (h!67484 s!2326) Nil!61036)) (t!374365 s!2326) s!2326))))

(declare-fun b!5305010 () Bool)

(declare-fun e!3296967 () Option!15064)

(assert (=> b!5305010 (= e!3296967 e!3296970)))

(declare-fun c!921098 () Bool)

(assert (=> b!5305010 (= c!921098 ((_ is Nil!61036) s!2326))))

(declare-fun b!5305011 () Bool)

(assert (=> b!5305011 (= e!3296967 (Some!15063 (tuple2!64305 Nil!61036 s!2326)))))

(declare-fun b!5305012 () Bool)

(declare-fun res!2250375 () Bool)

(assert (=> b!5305012 (=> (not res!2250375) (not e!3296969))))

(assert (=> b!5305012 (= res!2250375 (matchR!7138 (regOne!30418 (regOne!30418 r!7292)) (_1!35455 (get!20988 lt!2167788))))))

(declare-fun b!5305013 () Bool)

(assert (=> b!5305013 (= e!3296969 (= (++!13306 (_1!35455 (get!20988 lt!2167788)) (_2!35455 (get!20988 lt!2167788))) s!2326))))

(declare-fun b!5305008 () Bool)

(declare-fun e!3296968 () Bool)

(assert (=> b!5305008 (= e!3296968 (not (isDefined!11767 lt!2167788)))))

(declare-fun d!1705262 () Bool)

(assert (=> d!1705262 e!3296968))

(declare-fun res!2250374 () Bool)

(assert (=> d!1705262 (=> res!2250374 e!3296968)))

(assert (=> d!1705262 (= res!2250374 e!3296969)))

(declare-fun res!2250372 () Bool)

(assert (=> d!1705262 (=> (not res!2250372) (not e!3296969))))

(assert (=> d!1705262 (= res!2250372 (isDefined!11767 lt!2167788))))

(assert (=> d!1705262 (= lt!2167788 e!3296967)))

(declare-fun c!921099 () Bool)

(assert (=> d!1705262 (= c!921099 e!3296966)))

(declare-fun res!2250373 () Bool)

(assert (=> d!1705262 (=> (not res!2250373) (not e!3296966))))

(assert (=> d!1705262 (= res!2250373 (matchR!7138 (regOne!30418 (regOne!30418 r!7292)) Nil!61036))))

(assert (=> d!1705262 (validRegex!6689 (regOne!30418 (regOne!30418 r!7292)))))

(assert (=> d!1705262 (= (findConcatSeparation!1478 (regOne!30418 (regOne!30418 r!7292)) lt!2167594 Nil!61036 s!2326 s!2326) lt!2167788)))

(assert (= (and d!1705262 res!2250373) b!5305007))

(assert (= (and d!1705262 c!921099) b!5305011))

(assert (= (and d!1705262 (not c!921099)) b!5305010))

(assert (= (and b!5305010 c!921098) b!5305005))

(assert (= (and b!5305010 (not c!921098)) b!5305009))

(assert (= (and d!1705262 res!2250372) b!5305012))

(assert (= (and b!5305012 res!2250375) b!5305006))

(assert (= (and b!5305006 res!2250371) b!5305013))

(assert (= (and d!1705262 (not res!2250374)) b!5305008))

(assert (=> b!5305007 m!6341424))

(declare-fun m!6342392 () Bool)

(assert (=> b!5305013 m!6342392))

(declare-fun m!6342394 () Bool)

(assert (=> b!5305013 m!6342394))

(assert (=> b!5305009 m!6342070))

(assert (=> b!5305009 m!6342070))

(assert (=> b!5305009 m!6342072))

(assert (=> b!5305009 m!6342074))

(assert (=> b!5305009 m!6342070))

(declare-fun m!6342396 () Bool)

(assert (=> b!5305009 m!6342396))

(assert (=> b!5305012 m!6342392))

(declare-fun m!6342398 () Bool)

(assert (=> b!5305012 m!6342398))

(declare-fun m!6342400 () Bool)

(assert (=> b!5305008 m!6342400))

(assert (=> d!1705262 m!6342400))

(declare-fun m!6342402 () Bool)

(assert (=> d!1705262 m!6342402))

(declare-fun m!6342404 () Bool)

(assert (=> d!1705262 m!6342404))

(assert (=> b!5305006 m!6342392))

(declare-fun m!6342406 () Bool)

(assert (=> b!5305006 m!6342406))

(assert (=> b!5304045 d!1705262))

(declare-fun d!1705264 () Bool)

(declare-fun c!921100 () Bool)

(assert (=> d!1705264 (= c!921100 (isEmpty!32995 s!2326))))

(declare-fun e!3296971 () Bool)

(assert (=> d!1705264 (= (matchZipper!1197 lt!2167590 s!2326) e!3296971)))

(declare-fun b!5305014 () Bool)

(assert (=> b!5305014 (= e!3296971 (nullableZipper!1326 lt!2167590))))

(declare-fun b!5305015 () Bool)

(assert (=> b!5305015 (= e!3296971 (matchZipper!1197 (derivationStepZipper!1196 lt!2167590 (head!11370 s!2326)) (tail!10467 s!2326)))))

(assert (= (and d!1705264 c!921100) b!5305014))

(assert (= (and d!1705264 (not c!921100)) b!5305015))

(assert (=> d!1705264 m!6342178))

(declare-fun m!6342408 () Bool)

(assert (=> b!5305014 m!6342408))

(assert (=> b!5305015 m!6342180))

(assert (=> b!5305015 m!6342180))

(declare-fun m!6342410 () Bool)

(assert (=> b!5305015 m!6342410))

(assert (=> b!5305015 m!6342184))

(assert (=> b!5305015 m!6342410))

(assert (=> b!5305015 m!6342184))

(declare-fun m!6342412 () Bool)

(assert (=> b!5305015 m!6342412))

(assert (=> b!5304045 d!1705264))

(declare-fun d!1705266 () Bool)

(assert (=> d!1705266 (= (Exists!2134 lambda!269691) (choose!39653 lambda!269691))))

(declare-fun bs!1230130 () Bool)

(assert (= bs!1230130 d!1705266))

(declare-fun m!6342414 () Bool)

(assert (=> bs!1230130 m!6342414))

(assert (=> b!5304045 d!1705266))

(declare-fun bs!1230131 () Bool)

(declare-fun d!1705268 () Bool)

(assert (= bs!1230131 (and d!1705268 b!5304045)))

(declare-fun lambda!269795 () Int)

(assert (=> bs!1230131 (not (= lambda!269795 lambda!269690))))

(declare-fun bs!1230132 () Bool)

(assert (= bs!1230132 (and d!1705268 b!5304819)))

(assert (=> bs!1230132 (not (= lambda!269795 lambda!269774))))

(declare-fun bs!1230133 () Bool)

(assert (= bs!1230133 (and d!1705268 b!5304035)))

(assert (=> bs!1230133 (not (= lambda!269795 lambda!269687))))

(declare-fun bs!1230134 () Bool)

(assert (= bs!1230134 (and d!1705268 d!1705238)))

(assert (=> bs!1230134 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regTwo!30418 (regOne!30418 r!7292))) (= lt!2167594 lt!2167578)) (= lambda!269795 lambda!269793))))

(assert (=> bs!1230133 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167594 (regTwo!30418 r!7292))) (= lambda!269795 lambda!269686))))

(declare-fun bs!1230135 () Bool)

(assert (= bs!1230135 (and d!1705268 d!1705160)))

(assert (=> bs!1230135 (not (= lambda!269795 lambda!269756))))

(declare-fun bs!1230136 () Bool)

(assert (= bs!1230136 (and d!1705268 d!1705232)))

(assert (=> bs!1230136 (not (= lambda!269795 lambda!269792))))

(assert (=> bs!1230135 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167594 (regTwo!30418 r!7292))) (= lambda!269795 lambda!269755))))

(assert (=> bs!1230131 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regTwo!30418 (regOne!30418 r!7292))) (= lt!2167594 lt!2167578)) (= lambda!269795 lambda!269691))))

(assert (=> bs!1230136 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regTwo!30418 (regOne!30418 r!7292))) (= lt!2167594 lt!2167578)) (= lambda!269795 lambda!269791))))

(declare-fun bs!1230137 () Bool)

(assert (= bs!1230137 (and d!1705268 d!1705164)))

(assert (=> bs!1230137 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167594 (regTwo!30418 r!7292))) (= lambda!269795 lambda!269759))))

(assert (=> bs!1230131 (= lambda!269795 lambda!269689)))

(assert (=> bs!1230131 (not (= lambda!269795 lambda!269692))))

(declare-fun bs!1230138 () Bool)

(assert (= bs!1230138 (and d!1705268 b!5304828)))

(assert (=> bs!1230138 (not (= lambda!269795 lambda!269773))))

(assert (=> d!1705268 true))

(assert (=> d!1705268 true))

(assert (=> d!1705268 true))

(declare-fun lambda!269796 () Int)

(assert (=> bs!1230131 (= lambda!269796 lambda!269690)))

(assert (=> bs!1230132 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167594 (regTwo!30418 r!7292))) (= lambda!269796 lambda!269774))))

(declare-fun bs!1230139 () Bool)

(assert (= bs!1230139 d!1705268))

(assert (=> bs!1230139 (not (= lambda!269796 lambda!269795))))

(assert (=> bs!1230133 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167594 (regTwo!30418 r!7292))) (= lambda!269796 lambda!269687))))

(assert (=> bs!1230134 (not (= lambda!269796 lambda!269793))))

(assert (=> bs!1230133 (not (= lambda!269796 lambda!269686))))

(assert (=> bs!1230135 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167594 (regTwo!30418 r!7292))) (= lambda!269796 lambda!269756))))

(assert (=> bs!1230136 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regTwo!30418 (regOne!30418 r!7292))) (= lt!2167594 lt!2167578)) (= lambda!269796 lambda!269792))))

(assert (=> bs!1230135 (not (= lambda!269796 lambda!269755))))

(assert (=> bs!1230131 (not (= lambda!269796 lambda!269691))))

(assert (=> bs!1230136 (not (= lambda!269796 lambda!269791))))

(assert (=> bs!1230137 (not (= lambda!269796 lambda!269759))))

(assert (=> bs!1230131 (not (= lambda!269796 lambda!269689))))

(assert (=> bs!1230131 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regTwo!30418 (regOne!30418 r!7292))) (= lt!2167594 lt!2167578)) (= lambda!269796 lambda!269692))))

(assert (=> bs!1230138 (not (= lambda!269796 lambda!269773))))

(assert (=> d!1705268 true))

(assert (=> d!1705268 true))

(assert (=> d!1705268 true))

(assert (=> d!1705268 (= (Exists!2134 lambda!269795) (Exists!2134 lambda!269796))))

(declare-fun lt!2167789 () Unit!153330)

(assert (=> d!1705268 (= lt!2167789 (choose!39654 (regOne!30418 (regOne!30418 r!7292)) lt!2167594 s!2326))))

(assert (=> d!1705268 (validRegex!6689 (regOne!30418 (regOne!30418 r!7292)))))

(assert (=> d!1705268 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!788 (regOne!30418 (regOne!30418 r!7292)) lt!2167594 s!2326) lt!2167789)))

(declare-fun m!6342416 () Bool)

(assert (=> bs!1230139 m!6342416))

(declare-fun m!6342418 () Bool)

(assert (=> bs!1230139 m!6342418))

(declare-fun m!6342420 () Bool)

(assert (=> bs!1230139 m!6342420))

(assert (=> bs!1230139 m!6342404))

(assert (=> b!5304045 d!1705268))

(declare-fun d!1705270 () Bool)

(assert (=> d!1705270 (= (Exists!2134 lambda!269692) (choose!39653 lambda!269692))))

(declare-fun bs!1230140 () Bool)

(assert (= bs!1230140 d!1705270))

(declare-fun m!6342422 () Bool)

(assert (=> bs!1230140 m!6342422))

(assert (=> b!5304045 d!1705270))

(declare-fun bs!1230141 () Bool)

(declare-fun b!5305026 () Bool)

(assert (= bs!1230141 (and b!5305026 b!5304045)))

(declare-fun lambda!269797 () Int)

(assert (=> bs!1230141 (not (= lambda!269797 lambda!269690))))

(declare-fun bs!1230142 () Bool)

(assert (= bs!1230142 (and b!5305026 b!5304819)))

(assert (=> bs!1230142 (not (= lambda!269797 lambda!269774))))

(declare-fun bs!1230143 () Bool)

(assert (= bs!1230143 (and b!5305026 d!1705268)))

(assert (=> bs!1230143 (not (= lambda!269797 lambda!269795))))

(declare-fun bs!1230144 () Bool)

(assert (= bs!1230144 (and b!5305026 b!5304035)))

(assert (=> bs!1230144 (not (= lambda!269797 lambda!269687))))

(declare-fun bs!1230145 () Bool)

(assert (= bs!1230145 (and b!5305026 d!1705238)))

(assert (=> bs!1230145 (not (= lambda!269797 lambda!269793))))

(assert (=> bs!1230143 (not (= lambda!269797 lambda!269796))))

(assert (=> bs!1230144 (not (= lambda!269797 lambda!269686))))

(declare-fun bs!1230146 () Bool)

(assert (= bs!1230146 (and b!5305026 d!1705160)))

(assert (=> bs!1230146 (not (= lambda!269797 lambda!269756))))

(declare-fun bs!1230147 () Bool)

(assert (= bs!1230147 (and b!5305026 d!1705232)))

(assert (=> bs!1230147 (not (= lambda!269797 lambda!269792))))

(assert (=> bs!1230146 (not (= lambda!269797 lambda!269755))))

(assert (=> bs!1230141 (not (= lambda!269797 lambda!269691))))

(assert (=> bs!1230147 (not (= lambda!269797 lambda!269791))))

(declare-fun bs!1230148 () Bool)

(assert (= bs!1230148 (and b!5305026 d!1705164)))

(assert (=> bs!1230148 (not (= lambda!269797 lambda!269759))))

(assert (=> bs!1230141 (not (= lambda!269797 lambda!269689))))

(assert (=> bs!1230141 (not (= lambda!269797 lambda!269692))))

(declare-fun bs!1230149 () Bool)

(assert (= bs!1230149 (and b!5305026 b!5304828)))

(assert (=> bs!1230149 (= (and (= (reg!15282 lt!2167594) (reg!15282 r!7292)) (= lt!2167594 r!7292)) (= lambda!269797 lambda!269773))))

(assert (=> b!5305026 true))

(assert (=> b!5305026 true))

(declare-fun bs!1230150 () Bool)

(declare-fun b!5305017 () Bool)

(assert (= bs!1230150 (and b!5305017 b!5305026)))

(declare-fun lambda!269798 () Int)

(assert (=> bs!1230150 (not (= lambda!269798 lambda!269797))))

(declare-fun bs!1230151 () Bool)

(assert (= bs!1230151 (and b!5305017 b!5304045)))

(assert (=> bs!1230151 (= (and (= (regOne!30418 lt!2167594) (regOne!30418 (regOne!30418 r!7292))) (= (regTwo!30418 lt!2167594) lt!2167594)) (= lambda!269798 lambda!269690))))

(declare-fun bs!1230152 () Bool)

(assert (= bs!1230152 (and b!5305017 b!5304819)))

(assert (=> bs!1230152 (= (and (= (regOne!30418 lt!2167594) (regOne!30418 r!7292)) (= (regTwo!30418 lt!2167594) (regTwo!30418 r!7292))) (= lambda!269798 lambda!269774))))

(declare-fun bs!1230153 () Bool)

(assert (= bs!1230153 (and b!5305017 d!1705268)))

(assert (=> bs!1230153 (not (= lambda!269798 lambda!269795))))

(declare-fun bs!1230154 () Bool)

(assert (= bs!1230154 (and b!5305017 b!5304035)))

(assert (=> bs!1230154 (= (and (= (regOne!30418 lt!2167594) (regOne!30418 r!7292)) (= (regTwo!30418 lt!2167594) (regTwo!30418 r!7292))) (= lambda!269798 lambda!269687))))

(declare-fun bs!1230155 () Bool)

(assert (= bs!1230155 (and b!5305017 d!1705238)))

(assert (=> bs!1230155 (not (= lambda!269798 lambda!269793))))

(assert (=> bs!1230153 (= (and (= (regOne!30418 lt!2167594) (regOne!30418 (regOne!30418 r!7292))) (= (regTwo!30418 lt!2167594) lt!2167594)) (= lambda!269798 lambda!269796))))

(assert (=> bs!1230154 (not (= lambda!269798 lambda!269686))))

(declare-fun bs!1230156 () Bool)

(assert (= bs!1230156 (and b!5305017 d!1705160)))

(assert (=> bs!1230156 (= (and (= (regOne!30418 lt!2167594) (regOne!30418 r!7292)) (= (regTwo!30418 lt!2167594) (regTwo!30418 r!7292))) (= lambda!269798 lambda!269756))))

(declare-fun bs!1230157 () Bool)

(assert (= bs!1230157 (and b!5305017 d!1705232)))

(assert (=> bs!1230157 (= (and (= (regOne!30418 lt!2167594) (regTwo!30418 (regOne!30418 r!7292))) (= (regTwo!30418 lt!2167594) lt!2167578)) (= lambda!269798 lambda!269792))))

(assert (=> bs!1230156 (not (= lambda!269798 lambda!269755))))

(assert (=> bs!1230151 (not (= lambda!269798 lambda!269691))))

(assert (=> bs!1230157 (not (= lambda!269798 lambda!269791))))

(declare-fun bs!1230158 () Bool)

(assert (= bs!1230158 (and b!5305017 d!1705164)))

(assert (=> bs!1230158 (not (= lambda!269798 lambda!269759))))

(assert (=> bs!1230151 (not (= lambda!269798 lambda!269689))))

(assert (=> bs!1230151 (= (and (= (regOne!30418 lt!2167594) (regTwo!30418 (regOne!30418 r!7292))) (= (regTwo!30418 lt!2167594) lt!2167578)) (= lambda!269798 lambda!269692))))

(declare-fun bs!1230159 () Bool)

(assert (= bs!1230159 (and b!5305017 b!5304828)))

(assert (=> bs!1230159 (not (= lambda!269798 lambda!269773))))

(assert (=> b!5305017 true))

(assert (=> b!5305017 true))

(declare-fun d!1705272 () Bool)

(declare-fun c!921101 () Bool)

(assert (=> d!1705272 (= c!921101 ((_ is EmptyExpr!14953) lt!2167594))))

(declare-fun e!3296975 () Bool)

(assert (=> d!1705272 (= (matchRSpec!2056 lt!2167594 s!2326) e!3296975)))

(declare-fun b!5305016 () Bool)

(declare-fun e!3296976 () Bool)

(declare-fun e!3296977 () Bool)

(assert (=> b!5305016 (= e!3296976 e!3296977)))

(declare-fun c!921102 () Bool)

(assert (=> b!5305016 (= c!921102 ((_ is Star!14953) lt!2167594))))

(declare-fun bm!378175 () Bool)

(declare-fun call!378181 () Bool)

(assert (=> bm!378175 (= call!378181 (Exists!2134 (ite c!921102 lambda!269797 lambda!269798)))))

(assert (=> b!5305017 (= e!3296977 call!378181)))

(declare-fun b!5305018 () Bool)

(declare-fun e!3296973 () Bool)

(assert (=> b!5305018 (= e!3296975 e!3296973)))

(declare-fun res!2250377 () Bool)

(assert (=> b!5305018 (= res!2250377 (not ((_ is EmptyLang!14953) lt!2167594)))))

(assert (=> b!5305018 (=> (not res!2250377) (not e!3296973))))

(declare-fun b!5305019 () Bool)

(declare-fun c!921103 () Bool)

(assert (=> b!5305019 (= c!921103 ((_ is Union!14953) lt!2167594))))

(declare-fun e!3296974 () Bool)

(assert (=> b!5305019 (= e!3296974 e!3296976)))

(declare-fun b!5305020 () Bool)

(declare-fun c!921104 () Bool)

(assert (=> b!5305020 (= c!921104 ((_ is ElementMatch!14953) lt!2167594))))

(assert (=> b!5305020 (= e!3296973 e!3296974)))

(declare-fun b!5305021 () Bool)

(assert (=> b!5305021 (= e!3296974 (= s!2326 (Cons!61036 (c!920805 lt!2167594) Nil!61036)))))

(declare-fun b!5305022 () Bool)

(declare-fun e!3296972 () Bool)

(assert (=> b!5305022 (= e!3296972 (matchRSpec!2056 (regTwo!30419 lt!2167594) s!2326))))

(declare-fun b!5305023 () Bool)

(declare-fun res!2250376 () Bool)

(declare-fun e!3296978 () Bool)

(assert (=> b!5305023 (=> res!2250376 e!3296978)))

(declare-fun call!378180 () Bool)

(assert (=> b!5305023 (= res!2250376 call!378180)))

(assert (=> b!5305023 (= e!3296977 e!3296978)))

(declare-fun b!5305024 () Bool)

(assert (=> b!5305024 (= e!3296975 call!378180)))

(declare-fun b!5305025 () Bool)

(assert (=> b!5305025 (= e!3296976 e!3296972)))

(declare-fun res!2250378 () Bool)

(assert (=> b!5305025 (= res!2250378 (matchRSpec!2056 (regOne!30419 lt!2167594) s!2326))))

(assert (=> b!5305025 (=> res!2250378 e!3296972)))

(declare-fun bm!378176 () Bool)

(assert (=> bm!378176 (= call!378180 (isEmpty!32995 s!2326))))

(assert (=> b!5305026 (= e!3296978 call!378181)))

(assert (= (and d!1705272 c!921101) b!5305024))

(assert (= (and d!1705272 (not c!921101)) b!5305018))

(assert (= (and b!5305018 res!2250377) b!5305020))

(assert (= (and b!5305020 c!921104) b!5305021))

(assert (= (and b!5305020 (not c!921104)) b!5305019))

(assert (= (and b!5305019 c!921103) b!5305025))

(assert (= (and b!5305019 (not c!921103)) b!5305016))

(assert (= (and b!5305025 (not res!2250378)) b!5305022))

(assert (= (and b!5305016 c!921102) b!5305023))

(assert (= (and b!5305016 (not c!921102)) b!5305017))

(assert (= (and b!5305023 (not res!2250376)) b!5305026))

(assert (= (or b!5305026 b!5305017) bm!378175))

(assert (= (or b!5305024 b!5305023) bm!378176))

(declare-fun m!6342424 () Bool)

(assert (=> bm!378175 m!6342424))

(declare-fun m!6342426 () Bool)

(assert (=> b!5305022 m!6342426))

(declare-fun m!6342428 () Bool)

(assert (=> b!5305025 m!6342428))

(assert (=> bm!378176 m!6342178))

(assert (=> b!5304045 d!1705272))

(declare-fun bs!1230160 () Bool)

(declare-fun d!1705274 () Bool)

(assert (= bs!1230160 (and d!1705274 b!5305026)))

(declare-fun lambda!269799 () Int)

(assert (=> bs!1230160 (not (= lambda!269799 lambda!269797))))

(declare-fun bs!1230161 () Bool)

(assert (= bs!1230161 (and d!1705274 b!5304045)))

(assert (=> bs!1230161 (not (= lambda!269799 lambda!269690))))

(declare-fun bs!1230162 () Bool)

(assert (= bs!1230162 (and d!1705274 b!5305017)))

(assert (=> bs!1230162 (not (= lambda!269799 lambda!269798))))

(declare-fun bs!1230163 () Bool)

(assert (= bs!1230163 (and d!1705274 b!5304819)))

(assert (=> bs!1230163 (not (= lambda!269799 lambda!269774))))

(declare-fun bs!1230164 () Bool)

(assert (= bs!1230164 (and d!1705274 d!1705268)))

(assert (=> bs!1230164 (= lambda!269799 lambda!269795)))

(declare-fun bs!1230165 () Bool)

(assert (= bs!1230165 (and d!1705274 b!5304035)))

(assert (=> bs!1230165 (not (= lambda!269799 lambda!269687))))

(declare-fun bs!1230166 () Bool)

(assert (= bs!1230166 (and d!1705274 d!1705238)))

(assert (=> bs!1230166 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regTwo!30418 (regOne!30418 r!7292))) (= lt!2167594 lt!2167578)) (= lambda!269799 lambda!269793))))

(assert (=> bs!1230164 (not (= lambda!269799 lambda!269796))))

(assert (=> bs!1230165 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167594 (regTwo!30418 r!7292))) (= lambda!269799 lambda!269686))))

(declare-fun bs!1230167 () Bool)

(assert (= bs!1230167 (and d!1705274 d!1705160)))

(assert (=> bs!1230167 (not (= lambda!269799 lambda!269756))))

(declare-fun bs!1230168 () Bool)

(assert (= bs!1230168 (and d!1705274 d!1705232)))

(assert (=> bs!1230168 (not (= lambda!269799 lambda!269792))))

(assert (=> bs!1230167 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167594 (regTwo!30418 r!7292))) (= lambda!269799 lambda!269755))))

(assert (=> bs!1230161 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regTwo!30418 (regOne!30418 r!7292))) (= lt!2167594 lt!2167578)) (= lambda!269799 lambda!269691))))

(assert (=> bs!1230168 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regTwo!30418 (regOne!30418 r!7292))) (= lt!2167594 lt!2167578)) (= lambda!269799 lambda!269791))))

(declare-fun bs!1230169 () Bool)

(assert (= bs!1230169 (and d!1705274 d!1705164)))

(assert (=> bs!1230169 (= (and (= (regOne!30418 (regOne!30418 r!7292)) (regOne!30418 r!7292)) (= lt!2167594 (regTwo!30418 r!7292))) (= lambda!269799 lambda!269759))))

(assert (=> bs!1230161 (= lambda!269799 lambda!269689)))

(assert (=> bs!1230161 (not (= lambda!269799 lambda!269692))))

(declare-fun bs!1230170 () Bool)

(assert (= bs!1230170 (and d!1705274 b!5304828)))

(assert (=> bs!1230170 (not (= lambda!269799 lambda!269773))))

(assert (=> d!1705274 true))

(assert (=> d!1705274 true))

(assert (=> d!1705274 true))

(assert (=> d!1705274 (= (isDefined!11767 (findConcatSeparation!1478 (regOne!30418 (regOne!30418 r!7292)) lt!2167594 Nil!61036 s!2326 s!2326)) (Exists!2134 lambda!269799))))

(declare-fun lt!2167790 () Unit!153330)

(assert (=> d!1705274 (= lt!2167790 (choose!39655 (regOne!30418 (regOne!30418 r!7292)) lt!2167594 s!2326))))

(assert (=> d!1705274 (validRegex!6689 (regOne!30418 (regOne!30418 r!7292)))))

(assert (=> d!1705274 (= (lemmaFindConcatSeparationEquivalentToExists!1242 (regOne!30418 (regOne!30418 r!7292)) lt!2167594 s!2326) lt!2167790)))

(declare-fun bs!1230171 () Bool)

(assert (= bs!1230171 d!1705274))

(assert (=> bs!1230171 m!6341384))

(assert (=> bs!1230171 m!6342404))

(assert (=> bs!1230171 m!6341384))

(assert (=> bs!1230171 m!6341386))

(declare-fun m!6342430 () Bool)

(assert (=> bs!1230171 m!6342430))

(declare-fun m!6342432 () Bool)

(assert (=> bs!1230171 m!6342432))

(assert (=> b!5304045 d!1705274))

(declare-fun bs!1230172 () Bool)

(declare-fun d!1705276 () Bool)

(assert (= bs!1230172 (and d!1705276 d!1705186)))

(declare-fun lambda!269800 () Int)

(assert (=> bs!1230172 (= lambda!269800 lambda!269765)))

(declare-fun bs!1230173 () Bool)

(assert (= bs!1230173 (and d!1705276 d!1705184)))

(assert (=> bs!1230173 (= lambda!269800 lambda!269762)))

(declare-fun bs!1230174 () Bool)

(assert (= bs!1230174 (and d!1705276 d!1705230)))

(assert (=> bs!1230174 (= lambda!269800 lambda!269790)))

(declare-fun bs!1230175 () Bool)

(assert (= bs!1230175 (and d!1705276 d!1705254)))

(assert (=> bs!1230175 (= lambda!269800 lambda!269794)))

(declare-fun bs!1230176 () Bool)

(assert (= bs!1230176 (and d!1705276 d!1705188)))

(assert (=> bs!1230176 (= lambda!269800 lambda!269768)))

(declare-fun bs!1230177 () Bool)

(assert (= bs!1230177 (and d!1705276 b!5304040)))

(assert (=> bs!1230177 (= lambda!269800 lambda!269693)))

(declare-fun bs!1230178 () Bool)

(assert (= bs!1230178 (and d!1705276 d!1705222)))

(assert (=> bs!1230178 (= lambda!269800 lambda!269775)))

(declare-fun b!5305027 () Bool)

(declare-fun e!3296982 () Regex!14953)

(assert (=> b!5305027 (= e!3296982 (Concat!23798 (h!67482 lt!2167581) (generalisedConcat!622 (t!374363 lt!2167581))))))

(declare-fun b!5305028 () Bool)

(declare-fun e!3296980 () Bool)

(declare-fun lt!2167791 () Regex!14953)

(assert (=> b!5305028 (= e!3296980 (isEmptyExpr!861 lt!2167791))))

(declare-fun b!5305029 () Bool)

(assert (=> b!5305029 (= e!3296982 EmptyExpr!14953)))

(declare-fun b!5305030 () Bool)

(declare-fun e!3296979 () Bool)

(assert (=> b!5305030 (= e!3296979 (isEmpty!32992 (t!374363 lt!2167581)))))

(declare-fun e!3296981 () Bool)

(assert (=> d!1705276 e!3296981))

(declare-fun res!2250380 () Bool)

(assert (=> d!1705276 (=> (not res!2250380) (not e!3296981))))

(assert (=> d!1705276 (= res!2250380 (validRegex!6689 lt!2167791))))

(declare-fun e!3296983 () Regex!14953)

(assert (=> d!1705276 (= lt!2167791 e!3296983)))

(declare-fun c!921108 () Bool)

(assert (=> d!1705276 (= c!921108 e!3296979)))

(declare-fun res!2250379 () Bool)

(assert (=> d!1705276 (=> (not res!2250379) (not e!3296979))))

(assert (=> d!1705276 (= res!2250379 ((_ is Cons!61034) lt!2167581))))

(assert (=> d!1705276 (forall!14365 lt!2167581 lambda!269800)))

(assert (=> d!1705276 (= (generalisedConcat!622 lt!2167581) lt!2167791)))

(declare-fun b!5305031 () Bool)

(declare-fun e!3296984 () Bool)

(assert (=> b!5305031 (= e!3296980 e!3296984)))

(declare-fun c!921106 () Bool)

(assert (=> b!5305031 (= c!921106 (isEmpty!32992 (tail!10468 lt!2167581)))))

(declare-fun b!5305032 () Bool)

(assert (=> b!5305032 (= e!3296983 e!3296982)))

(declare-fun c!921105 () Bool)

(assert (=> b!5305032 (= c!921105 ((_ is Cons!61034) lt!2167581))))

(declare-fun b!5305033 () Bool)

(assert (=> b!5305033 (= e!3296981 e!3296980)))

(declare-fun c!921107 () Bool)

(assert (=> b!5305033 (= c!921107 (isEmpty!32992 lt!2167581))))

(declare-fun b!5305034 () Bool)

(assert (=> b!5305034 (= e!3296984 (isConcat!384 lt!2167791))))

(declare-fun b!5305035 () Bool)

(assert (=> b!5305035 (= e!3296984 (= lt!2167791 (head!11371 lt!2167581)))))

(declare-fun b!5305036 () Bool)

(assert (=> b!5305036 (= e!3296983 (h!67482 lt!2167581))))

(assert (= (and d!1705276 res!2250379) b!5305030))

(assert (= (and d!1705276 c!921108) b!5305036))

(assert (= (and d!1705276 (not c!921108)) b!5305032))

(assert (= (and b!5305032 c!921105) b!5305027))

(assert (= (and b!5305032 (not c!921105)) b!5305029))

(assert (= (and d!1705276 res!2250380) b!5305033))

(assert (= (and b!5305033 c!921107) b!5305028))

(assert (= (and b!5305033 (not c!921107)) b!5305031))

(assert (= (and b!5305031 c!921106) b!5305035))

(assert (= (and b!5305031 (not c!921106)) b!5305034))

(declare-fun m!6342434 () Bool)

(assert (=> b!5305028 m!6342434))

(declare-fun m!6342436 () Bool)

(assert (=> d!1705276 m!6342436))

(declare-fun m!6342438 () Bool)

(assert (=> d!1705276 m!6342438))

(declare-fun m!6342440 () Bool)

(assert (=> b!5305030 m!6342440))

(declare-fun m!6342442 () Bool)

(assert (=> b!5305035 m!6342442))

(declare-fun m!6342444 () Bool)

(assert (=> b!5305027 m!6342444))

(declare-fun m!6342446 () Bool)

(assert (=> b!5305034 m!6342446))

(declare-fun m!6342448 () Bool)

(assert (=> b!5305031 m!6342448))

(assert (=> b!5305031 m!6342448))

(declare-fun m!6342450 () Bool)

(assert (=> b!5305031 m!6342450))

(declare-fun m!6342452 () Bool)

(assert (=> b!5305033 m!6342452))

(assert (=> b!5304045 d!1705276))

(declare-fun bs!1230179 () Bool)

(declare-fun b!5305047 () Bool)

(assert (= bs!1230179 (and b!5305047 b!5305026)))

(declare-fun lambda!269801 () Int)

(assert (=> bs!1230179 (= (and (= (reg!15282 lt!2167609) (reg!15282 lt!2167594)) (= lt!2167609 lt!2167594)) (= lambda!269801 lambda!269797))))

(declare-fun bs!1230180 () Bool)

(assert (= bs!1230180 (and b!5305047 b!5304045)))

(assert (=> bs!1230180 (not (= lambda!269801 lambda!269690))))

(declare-fun bs!1230181 () Bool)

(assert (= bs!1230181 (and b!5305047 b!5305017)))

(assert (=> bs!1230181 (not (= lambda!269801 lambda!269798))))

(declare-fun bs!1230182 () Bool)

(assert (= bs!1230182 (and b!5305047 b!5304819)))

(assert (=> bs!1230182 (not (= lambda!269801 lambda!269774))))

(declare-fun bs!1230183 () Bool)

(assert (= bs!1230183 (and b!5305047 d!1705268)))

(assert (=> bs!1230183 (not (= lambda!269801 lambda!269795))))

(declare-fun bs!1230184 () Bool)

(assert (= bs!1230184 (and b!5305047 b!5304035)))

(assert (=> bs!1230184 (not (= lambda!269801 lambda!269687))))

(declare-fun bs!1230185 () Bool)

(assert (= bs!1230185 (and b!5305047 d!1705238)))

(assert (=> bs!1230185 (not (= lambda!269801 lambda!269793))))

(assert (=> bs!1230183 (not (= lambda!269801 lambda!269796))))

(assert (=> bs!1230184 (not (= lambda!269801 lambda!269686))))

(declare-fun bs!1230186 () Bool)

(assert (= bs!1230186 (and b!5305047 d!1705160)))

(assert (=> bs!1230186 (not (= lambda!269801 lambda!269756))))

(declare-fun bs!1230187 () Bool)

(assert (= bs!1230187 (and b!5305047 d!1705232)))

(assert (=> bs!1230187 (not (= lambda!269801 lambda!269792))))

(declare-fun bs!1230188 () Bool)

(assert (= bs!1230188 (and b!5305047 d!1705274)))

(assert (=> bs!1230188 (not (= lambda!269801 lambda!269799))))

(assert (=> bs!1230186 (not (= lambda!269801 lambda!269755))))

(assert (=> bs!1230180 (not (= lambda!269801 lambda!269691))))

(assert (=> bs!1230187 (not (= lambda!269801 lambda!269791))))

(declare-fun bs!1230189 () Bool)

(assert (= bs!1230189 (and b!5305047 d!1705164)))

(assert (=> bs!1230189 (not (= lambda!269801 lambda!269759))))

(assert (=> bs!1230180 (not (= lambda!269801 lambda!269689))))

(assert (=> bs!1230180 (not (= lambda!269801 lambda!269692))))

(declare-fun bs!1230190 () Bool)

(assert (= bs!1230190 (and b!5305047 b!5304828)))

(assert (=> bs!1230190 (= (and (= (reg!15282 lt!2167609) (reg!15282 r!7292)) (= lt!2167609 r!7292)) (= lambda!269801 lambda!269773))))

(assert (=> b!5305047 true))

(assert (=> b!5305047 true))

(declare-fun bs!1230191 () Bool)

(declare-fun b!5305038 () Bool)

(assert (= bs!1230191 (and b!5305038 b!5305026)))

(declare-fun lambda!269802 () Int)

(assert (=> bs!1230191 (not (= lambda!269802 lambda!269797))))

(declare-fun bs!1230192 () Bool)

(assert (= bs!1230192 (and b!5305038 b!5304045)))

(assert (=> bs!1230192 (= (and (= (regOne!30418 lt!2167609) (regOne!30418 (regOne!30418 r!7292))) (= (regTwo!30418 lt!2167609) lt!2167594)) (= lambda!269802 lambda!269690))))

(declare-fun bs!1230193 () Bool)

(assert (= bs!1230193 (and b!5305038 b!5305017)))

(assert (=> bs!1230193 (= (and (= (regOne!30418 lt!2167609) (regOne!30418 lt!2167594)) (= (regTwo!30418 lt!2167609) (regTwo!30418 lt!2167594))) (= lambda!269802 lambda!269798))))

(declare-fun bs!1230194 () Bool)

(assert (= bs!1230194 (and b!5305038 b!5304819)))

(assert (=> bs!1230194 (= (and (= (regOne!30418 lt!2167609) (regOne!30418 r!7292)) (= (regTwo!30418 lt!2167609) (regTwo!30418 r!7292))) (= lambda!269802 lambda!269774))))

(declare-fun bs!1230195 () Bool)

(assert (= bs!1230195 (and b!5305038 d!1705268)))

(assert (=> bs!1230195 (not (= lambda!269802 lambda!269795))))

(declare-fun bs!1230196 () Bool)

(assert (= bs!1230196 (and b!5305038 b!5304035)))

(assert (=> bs!1230196 (= (and (= (regOne!30418 lt!2167609) (regOne!30418 r!7292)) (= (regTwo!30418 lt!2167609) (regTwo!30418 r!7292))) (= lambda!269802 lambda!269687))))

(declare-fun bs!1230197 () Bool)

(assert (= bs!1230197 (and b!5305038 d!1705238)))

(assert (=> bs!1230197 (not (= lambda!269802 lambda!269793))))

(assert (=> bs!1230195 (= (and (= (regOne!30418 lt!2167609) (regOne!30418 (regOne!30418 r!7292))) (= (regTwo!30418 lt!2167609) lt!2167594)) (= lambda!269802 lambda!269796))))

(declare-fun bs!1230198 () Bool)

(assert (= bs!1230198 (and b!5305038 b!5305047)))

(assert (=> bs!1230198 (not (= lambda!269802 lambda!269801))))

(assert (=> bs!1230196 (not (= lambda!269802 lambda!269686))))

(declare-fun bs!1230199 () Bool)

(assert (= bs!1230199 (and b!5305038 d!1705160)))

(assert (=> bs!1230199 (= (and (= (regOne!30418 lt!2167609) (regOne!30418 r!7292)) (= (regTwo!30418 lt!2167609) (regTwo!30418 r!7292))) (= lambda!269802 lambda!269756))))

(declare-fun bs!1230200 () Bool)

(assert (= bs!1230200 (and b!5305038 d!1705232)))

(assert (=> bs!1230200 (= (and (= (regOne!30418 lt!2167609) (regTwo!30418 (regOne!30418 r!7292))) (= (regTwo!30418 lt!2167609) lt!2167578)) (= lambda!269802 lambda!269792))))

(declare-fun bs!1230201 () Bool)

(assert (= bs!1230201 (and b!5305038 d!1705274)))

(assert (=> bs!1230201 (not (= lambda!269802 lambda!269799))))

(assert (=> bs!1230199 (not (= lambda!269802 lambda!269755))))

(assert (=> bs!1230192 (not (= lambda!269802 lambda!269691))))

(assert (=> bs!1230200 (not (= lambda!269802 lambda!269791))))

(declare-fun bs!1230202 () Bool)

(assert (= bs!1230202 (and b!5305038 d!1705164)))

(assert (=> bs!1230202 (not (= lambda!269802 lambda!269759))))

(assert (=> bs!1230192 (not (= lambda!269802 lambda!269689))))

(assert (=> bs!1230192 (= (and (= (regOne!30418 lt!2167609) (regTwo!30418 (regOne!30418 r!7292))) (= (regTwo!30418 lt!2167609) lt!2167578)) (= lambda!269802 lambda!269692))))

(declare-fun bs!1230203 () Bool)

(assert (= bs!1230203 (and b!5305038 b!5304828)))

(assert (=> bs!1230203 (not (= lambda!269802 lambda!269773))))

(assert (=> b!5305038 true))

(assert (=> b!5305038 true))

(declare-fun d!1705278 () Bool)

(declare-fun c!921109 () Bool)

(assert (=> d!1705278 (= c!921109 ((_ is EmptyExpr!14953) lt!2167609))))

(declare-fun e!3296988 () Bool)

(assert (=> d!1705278 (= (matchRSpec!2056 lt!2167609 s!2326) e!3296988)))

(declare-fun b!5305037 () Bool)

(declare-fun e!3296989 () Bool)

(declare-fun e!3296990 () Bool)

(assert (=> b!5305037 (= e!3296989 e!3296990)))

(declare-fun c!921110 () Bool)

(assert (=> b!5305037 (= c!921110 ((_ is Star!14953) lt!2167609))))

(declare-fun bm!378177 () Bool)

(declare-fun call!378183 () Bool)

(assert (=> bm!378177 (= call!378183 (Exists!2134 (ite c!921110 lambda!269801 lambda!269802)))))

(assert (=> b!5305038 (= e!3296990 call!378183)))

(declare-fun b!5305039 () Bool)

(declare-fun e!3296986 () Bool)

(assert (=> b!5305039 (= e!3296988 e!3296986)))

(declare-fun res!2250382 () Bool)

(assert (=> b!5305039 (= res!2250382 (not ((_ is EmptyLang!14953) lt!2167609)))))

(assert (=> b!5305039 (=> (not res!2250382) (not e!3296986))))

(declare-fun b!5305040 () Bool)

(declare-fun c!921111 () Bool)

(assert (=> b!5305040 (= c!921111 ((_ is Union!14953) lt!2167609))))

(declare-fun e!3296987 () Bool)

(assert (=> b!5305040 (= e!3296987 e!3296989)))

(declare-fun b!5305041 () Bool)

(declare-fun c!921112 () Bool)

(assert (=> b!5305041 (= c!921112 ((_ is ElementMatch!14953) lt!2167609))))

(assert (=> b!5305041 (= e!3296986 e!3296987)))

(declare-fun b!5305042 () Bool)

(assert (=> b!5305042 (= e!3296987 (= s!2326 (Cons!61036 (c!920805 lt!2167609) Nil!61036)))))

(declare-fun b!5305043 () Bool)

(declare-fun e!3296985 () Bool)

(assert (=> b!5305043 (= e!3296985 (matchRSpec!2056 (regTwo!30419 lt!2167609) s!2326))))

(declare-fun b!5305044 () Bool)

(declare-fun res!2250381 () Bool)

(declare-fun e!3296991 () Bool)

(assert (=> b!5305044 (=> res!2250381 e!3296991)))

(declare-fun call!378182 () Bool)

(assert (=> b!5305044 (= res!2250381 call!378182)))

(assert (=> b!5305044 (= e!3296990 e!3296991)))

(declare-fun b!5305045 () Bool)

(assert (=> b!5305045 (= e!3296988 call!378182)))

(declare-fun b!5305046 () Bool)

(assert (=> b!5305046 (= e!3296989 e!3296985)))

(declare-fun res!2250383 () Bool)

(assert (=> b!5305046 (= res!2250383 (matchRSpec!2056 (regOne!30419 lt!2167609) s!2326))))

(assert (=> b!5305046 (=> res!2250383 e!3296985)))

(declare-fun bm!378178 () Bool)

(assert (=> bm!378178 (= call!378182 (isEmpty!32995 s!2326))))

(assert (=> b!5305047 (= e!3296991 call!378183)))

(assert (= (and d!1705278 c!921109) b!5305045))

(assert (= (and d!1705278 (not c!921109)) b!5305039))

(assert (= (and b!5305039 res!2250382) b!5305041))

(assert (= (and b!5305041 c!921112) b!5305042))

(assert (= (and b!5305041 (not c!921112)) b!5305040))

(assert (= (and b!5305040 c!921111) b!5305046))

(assert (= (and b!5305040 (not c!921111)) b!5305037))

(assert (= (and b!5305046 (not res!2250383)) b!5305043))

(assert (= (and b!5305037 c!921110) b!5305044))

(assert (= (and b!5305037 (not c!921110)) b!5305038))

(assert (= (and b!5305044 (not res!2250381)) b!5305047))

(assert (= (or b!5305047 b!5305038) bm!378177))

(assert (= (or b!5305045 b!5305044) bm!378178))

(declare-fun m!6342454 () Bool)

(assert (=> bm!378177 m!6342454))

(declare-fun m!6342456 () Bool)

(assert (=> b!5305043 m!6342456))

(declare-fun m!6342458 () Bool)

(assert (=> b!5305046 m!6342458))

(assert (=> bm!378178 m!6342178))

(assert (=> b!5304045 d!1705278))

(declare-fun d!1705280 () Bool)

(declare-fun c!921113 () Bool)

(assert (=> d!1705280 (= c!921113 (isEmpty!32995 (t!374365 s!2326)))))

(declare-fun e!3296992 () Bool)

(assert (=> d!1705280 (= (matchZipper!1197 (derivationStepZipper!1196 lt!2167614 (h!67484 s!2326)) (t!374365 s!2326)) e!3296992)))

(declare-fun b!5305048 () Bool)

(assert (=> b!5305048 (= e!3296992 (nullableZipper!1326 (derivationStepZipper!1196 lt!2167614 (h!67484 s!2326))))))

(declare-fun b!5305049 () Bool)

(assert (=> b!5305049 (= e!3296992 (matchZipper!1197 (derivationStepZipper!1196 (derivationStepZipper!1196 lt!2167614 (h!67484 s!2326)) (head!11370 (t!374365 s!2326))) (tail!10467 (t!374365 s!2326))))))

(assert (= (and d!1705280 c!921113) b!5305048))

(assert (= (and d!1705280 (not c!921113)) b!5305049))

(assert (=> d!1705280 m!6342050))

(assert (=> b!5305048 m!6341370))

(declare-fun m!6342460 () Bool)

(assert (=> b!5305048 m!6342460))

(assert (=> b!5305049 m!6342054))

(assert (=> b!5305049 m!6341370))

(assert (=> b!5305049 m!6342054))

(declare-fun m!6342462 () Bool)

(assert (=> b!5305049 m!6342462))

(assert (=> b!5305049 m!6342058))

(assert (=> b!5305049 m!6342462))

(assert (=> b!5305049 m!6342058))

(declare-fun m!6342464 () Bool)

(assert (=> b!5305049 m!6342464))

(assert (=> b!5304065 d!1705280))

(declare-fun bs!1230204 () Bool)

(declare-fun d!1705282 () Bool)

(assert (= bs!1230204 (and d!1705282 b!5304055)))

(declare-fun lambda!269805 () Int)

(assert (=> bs!1230204 (= lambda!269805 lambda!269688)))

(assert (=> d!1705282 true))

(assert (=> d!1705282 (= (derivationStepZipper!1196 lt!2167614 (h!67484 s!2326)) (flatMap!680 lt!2167614 lambda!269805))))

(declare-fun bs!1230205 () Bool)

(assert (= bs!1230205 d!1705282))

(declare-fun m!6342466 () Bool)

(assert (=> bs!1230205 m!6342466))

(assert (=> b!5304065 d!1705282))

(assert (=> b!5304044 d!1705150))

(declare-fun d!1705284 () Bool)

(assert (=> d!1705284 (= (isEmpty!32991 (t!374364 zl!343)) ((_ is Nil!61035) (t!374364 zl!343)))))

(assert (=> b!5304046 d!1705284))

(declare-fun b!5305052 () Bool)

(declare-fun res!2250387 () Bool)

(declare-fun e!3296993 () Bool)

(assert (=> b!5305052 (=> res!2250387 e!3296993)))

(assert (=> b!5305052 (= res!2250387 (not (isEmpty!32995 (tail!10467 s!2326))))))

(declare-fun d!1705286 () Bool)

(declare-fun e!3296998 () Bool)

(assert (=> d!1705286 e!3296998))

(declare-fun c!921116 () Bool)

(assert (=> d!1705286 (= c!921116 ((_ is EmptyExpr!14953) (Concat!23798 lt!2167599 (regTwo!30418 r!7292))))))

(declare-fun lt!2167792 () Bool)

(declare-fun e!3296999 () Bool)

(assert (=> d!1705286 (= lt!2167792 e!3296999)))

(declare-fun c!921118 () Bool)

(assert (=> d!1705286 (= c!921118 (isEmpty!32995 s!2326))))

(assert (=> d!1705286 (validRegex!6689 (Concat!23798 lt!2167599 (regTwo!30418 r!7292)))))

(assert (=> d!1705286 (= (matchR!7138 (Concat!23798 lt!2167599 (regTwo!30418 r!7292)) s!2326) lt!2167792)))

(declare-fun b!5305053 () Bool)

(declare-fun e!3296995 () Bool)

(assert (=> b!5305053 (= e!3296998 e!3296995)))

(declare-fun c!921117 () Bool)

(assert (=> b!5305053 (= c!921117 ((_ is EmptyLang!14953) (Concat!23798 lt!2167599 (regTwo!30418 r!7292))))))

(declare-fun b!5305054 () Bool)

(assert (=> b!5305054 (= e!3296993 (not (= (head!11370 s!2326) (c!920805 (Concat!23798 lt!2167599 (regTwo!30418 r!7292))))))))

(declare-fun b!5305055 () Bool)

(declare-fun call!378184 () Bool)

(assert (=> b!5305055 (= e!3296998 (= lt!2167792 call!378184))))

(declare-fun b!5305056 () Bool)

(declare-fun res!2250391 () Bool)

(declare-fun e!3296994 () Bool)

(assert (=> b!5305056 (=> (not res!2250391) (not e!3296994))))

(assert (=> b!5305056 (= res!2250391 (isEmpty!32995 (tail!10467 s!2326)))))

(declare-fun b!5305057 () Bool)

(declare-fun e!3296997 () Bool)

(declare-fun e!3296996 () Bool)

(assert (=> b!5305057 (= e!3296997 e!3296996)))

(declare-fun res!2250386 () Bool)

(assert (=> b!5305057 (=> (not res!2250386) (not e!3296996))))

(assert (=> b!5305057 (= res!2250386 (not lt!2167792))))

(declare-fun b!5305058 () Bool)

(declare-fun res!2250388 () Bool)

(assert (=> b!5305058 (=> (not res!2250388) (not e!3296994))))

(assert (=> b!5305058 (= res!2250388 (not call!378184))))

(declare-fun b!5305059 () Bool)

(assert (=> b!5305059 (= e!3296994 (= (head!11370 s!2326) (c!920805 (Concat!23798 lt!2167599 (regTwo!30418 r!7292)))))))

(declare-fun b!5305060 () Bool)

(declare-fun res!2250384 () Bool)

(assert (=> b!5305060 (=> res!2250384 e!3296997)))

(assert (=> b!5305060 (= res!2250384 (not ((_ is ElementMatch!14953) (Concat!23798 lt!2167599 (regTwo!30418 r!7292)))))))

(assert (=> b!5305060 (= e!3296995 e!3296997)))

(declare-fun bm!378179 () Bool)

(assert (=> bm!378179 (= call!378184 (isEmpty!32995 s!2326))))

(declare-fun b!5305061 () Bool)

(assert (=> b!5305061 (= e!3296999 (nullable!5122 (Concat!23798 lt!2167599 (regTwo!30418 r!7292))))))

(declare-fun b!5305062 () Bool)

(assert (=> b!5305062 (= e!3296995 (not lt!2167792))))

(declare-fun b!5305063 () Bool)

(assert (=> b!5305063 (= e!3296999 (matchR!7138 (derivativeStep!4147 (Concat!23798 lt!2167599 (regTwo!30418 r!7292)) (head!11370 s!2326)) (tail!10467 s!2326)))))

(declare-fun b!5305064 () Bool)

(declare-fun res!2250389 () Bool)

(assert (=> b!5305064 (=> res!2250389 e!3296997)))

(assert (=> b!5305064 (= res!2250389 e!3296994)))

(declare-fun res!2250385 () Bool)

(assert (=> b!5305064 (=> (not res!2250385) (not e!3296994))))

(assert (=> b!5305064 (= res!2250385 lt!2167792)))

(declare-fun b!5305065 () Bool)

(assert (=> b!5305065 (= e!3296996 e!3296993)))

(declare-fun res!2250390 () Bool)

(assert (=> b!5305065 (=> res!2250390 e!3296993)))

(assert (=> b!5305065 (= res!2250390 call!378184)))

(assert (= (and d!1705286 c!921118) b!5305061))

(assert (= (and d!1705286 (not c!921118)) b!5305063))

(assert (= (and d!1705286 c!921116) b!5305055))

(assert (= (and d!1705286 (not c!921116)) b!5305053))

(assert (= (and b!5305053 c!921117) b!5305062))

(assert (= (and b!5305053 (not c!921117)) b!5305060))

(assert (= (and b!5305060 (not res!2250384)) b!5305064))

(assert (= (and b!5305064 res!2250385) b!5305058))

(assert (= (and b!5305058 res!2250388) b!5305056))

(assert (= (and b!5305056 res!2250391) b!5305059))

(assert (= (and b!5305064 (not res!2250389)) b!5305057))

(assert (= (and b!5305057 res!2250386) b!5305065))

(assert (= (and b!5305065 (not res!2250390)) b!5305052))

(assert (= (and b!5305052 (not res!2250387)) b!5305054))

(assert (= (or b!5305055 b!5305058 b!5305065) bm!378179))

(assert (=> b!5305059 m!6342180))

(assert (=> b!5305054 m!6342180))

(declare-fun m!6342468 () Bool)

(assert (=> b!5305061 m!6342468))

(assert (=> bm!378179 m!6342178))

(assert (=> b!5305052 m!6342184))

(assert (=> b!5305052 m!6342184))

(assert (=> b!5305052 m!6342186))

(assert (=> d!1705286 m!6342178))

(declare-fun m!6342470 () Bool)

(assert (=> d!1705286 m!6342470))

(assert (=> b!5305056 m!6342184))

(assert (=> b!5305056 m!6342184))

(assert (=> b!5305056 m!6342186))

(assert (=> b!5305063 m!6342180))

(assert (=> b!5305063 m!6342180))

(declare-fun m!6342472 () Bool)

(assert (=> b!5305063 m!6342472))

(assert (=> b!5305063 m!6342184))

(assert (=> b!5305063 m!6342472))

(assert (=> b!5305063 m!6342184))

(declare-fun m!6342474 () Bool)

(assert (=> b!5305063 m!6342474))

(assert (=> b!5304066 d!1705286))

(declare-fun b!5305084 () Bool)

(declare-fun e!3297017 () Bool)

(declare-fun e!3297016 () Bool)

(assert (=> b!5305084 (= e!3297017 e!3297016)))

(declare-fun c!921124 () Bool)

(assert (=> b!5305084 (= c!921124 ((_ is Union!14953) r!7292))))

(declare-fun bm!378186 () Bool)

(declare-fun call!378191 () Bool)

(assert (=> bm!378186 (= call!378191 (validRegex!6689 (ite c!921124 (regOne!30419 r!7292) (regOne!30418 r!7292))))))

(declare-fun b!5305085 () Bool)

(declare-fun e!3297020 () Bool)

(declare-fun call!378192 () Bool)

(assert (=> b!5305085 (= e!3297020 call!378192)))

(declare-fun b!5305086 () Bool)

(declare-fun e!3297014 () Bool)

(assert (=> b!5305086 (= e!3297017 e!3297014)))

(declare-fun res!2250402 () Bool)

(assert (=> b!5305086 (= res!2250402 (not (nullable!5122 (reg!15282 r!7292))))))

(assert (=> b!5305086 (=> (not res!2250402) (not e!3297014))))

(declare-fun b!5305087 () Bool)

(declare-fun call!378193 () Bool)

(assert (=> b!5305087 (= e!3297014 call!378193)))

(declare-fun b!5305088 () Bool)

(declare-fun res!2250406 () Bool)

(declare-fun e!3297019 () Bool)

(assert (=> b!5305088 (=> res!2250406 e!3297019)))

(assert (=> b!5305088 (= res!2250406 (not ((_ is Concat!23798) r!7292)))))

(assert (=> b!5305088 (= e!3297016 e!3297019)))

(declare-fun d!1705288 () Bool)

(declare-fun res!2250404 () Bool)

(declare-fun e!3297018 () Bool)

(assert (=> d!1705288 (=> res!2250404 e!3297018)))

(assert (=> d!1705288 (= res!2250404 ((_ is ElementMatch!14953) r!7292))))

(assert (=> d!1705288 (= (validRegex!6689 r!7292) e!3297018)))

(declare-fun b!5305089 () Bool)

(declare-fun e!3297015 () Bool)

(assert (=> b!5305089 (= e!3297015 call!378192)))

(declare-fun b!5305090 () Bool)

(declare-fun res!2250405 () Bool)

(assert (=> b!5305090 (=> (not res!2250405) (not e!3297020))))

(assert (=> b!5305090 (= res!2250405 call!378191)))

(assert (=> b!5305090 (= e!3297016 e!3297020)))

(declare-fun bm!378187 () Bool)

(declare-fun c!921123 () Bool)

(assert (=> bm!378187 (= call!378193 (validRegex!6689 (ite c!921123 (reg!15282 r!7292) (ite c!921124 (regTwo!30419 r!7292) (regTwo!30418 r!7292)))))))

(declare-fun b!5305091 () Bool)

(assert (=> b!5305091 (= e!3297018 e!3297017)))

(assert (=> b!5305091 (= c!921123 ((_ is Star!14953) r!7292))))

(declare-fun b!5305092 () Bool)

(assert (=> b!5305092 (= e!3297019 e!3297015)))

(declare-fun res!2250403 () Bool)

(assert (=> b!5305092 (=> (not res!2250403) (not e!3297015))))

(assert (=> b!5305092 (= res!2250403 call!378191)))

(declare-fun bm!378188 () Bool)

(assert (=> bm!378188 (= call!378192 call!378193)))

(assert (= (and d!1705288 (not res!2250404)) b!5305091))

(assert (= (and b!5305091 c!921123) b!5305086))

(assert (= (and b!5305091 (not c!921123)) b!5305084))

(assert (= (and b!5305086 res!2250402) b!5305087))

(assert (= (and b!5305084 c!921124) b!5305090))

(assert (= (and b!5305084 (not c!921124)) b!5305088))

(assert (= (and b!5305090 res!2250405) b!5305085))

(assert (= (and b!5305088 (not res!2250406)) b!5305092))

(assert (= (and b!5305092 res!2250403) b!5305089))

(assert (= (or b!5305085 b!5305089) bm!378188))

(assert (= (or b!5305090 b!5305092) bm!378186))

(assert (= (or b!5305087 bm!378188) bm!378187))

(declare-fun m!6342476 () Bool)

(assert (=> bm!378186 m!6342476))

(declare-fun m!6342478 () Bool)

(assert (=> b!5305086 m!6342478))

(declare-fun m!6342480 () Bool)

(assert (=> bm!378187 m!6342480))

(assert (=> start!559422 d!1705288))

(declare-fun d!1705290 () Bool)

(declare-fun lt!2167795 () Int)

(assert (=> d!1705290 (>= lt!2167795 0)))

(declare-fun e!3297023 () Int)

(assert (=> d!1705290 (= lt!2167795 e!3297023)))

(declare-fun c!921128 () Bool)

(assert (=> d!1705290 (= c!921128 ((_ is Cons!61034) (exprs!4837 lt!2167592)))))

(assert (=> d!1705290 (= (contextDepthTotal!94 lt!2167592) lt!2167795)))

(declare-fun b!5305097 () Bool)

(declare-fun regexDepthTotal!37 (Regex!14953) Int)

(assert (=> b!5305097 (= e!3297023 (+ (regexDepthTotal!37 (h!67482 (exprs!4837 lt!2167592))) (contextDepthTotal!94 (Context!8675 (t!374363 (exprs!4837 lt!2167592))))))))

(declare-fun b!5305098 () Bool)

(assert (=> b!5305098 (= e!3297023 1)))

(assert (= (and d!1705290 c!921128) b!5305097))

(assert (= (and d!1705290 (not c!921128)) b!5305098))

(declare-fun m!6342482 () Bool)

(assert (=> b!5305097 m!6342482))

(declare-fun m!6342484 () Bool)

(assert (=> b!5305097 m!6342484))

(assert (=> b!5304052 d!1705290))

(declare-fun d!1705292 () Bool)

(declare-fun lt!2167796 () Int)

(assert (=> d!1705292 (>= lt!2167796 0)))

(declare-fun e!3297024 () Int)

(assert (=> d!1705292 (= lt!2167796 e!3297024)))

(declare-fun c!921129 () Bool)

(assert (=> d!1705292 (= c!921129 ((_ is Cons!61034) (exprs!4837 (h!67483 zl!343))))))

(assert (=> d!1705292 (= (contextDepthTotal!94 (h!67483 zl!343)) lt!2167796)))

(declare-fun b!5305099 () Bool)

(assert (=> b!5305099 (= e!3297024 (+ (regexDepthTotal!37 (h!67482 (exprs!4837 (h!67483 zl!343)))) (contextDepthTotal!94 (Context!8675 (t!374363 (exprs!4837 (h!67483 zl!343)))))))))

(declare-fun b!5305100 () Bool)

(assert (=> b!5305100 (= e!3297024 1)))

(assert (= (and d!1705292 c!921129) b!5305099))

(assert (= (and d!1705292 (not c!921129)) b!5305100))

(declare-fun m!6342486 () Bool)

(assert (=> b!5305099 m!6342486))

(declare-fun m!6342488 () Bool)

(assert (=> b!5305099 m!6342488))

(assert (=> b!5304052 d!1705292))

(declare-fun b!5305101 () Bool)

(declare-fun c!921133 () Bool)

(declare-fun e!3297030 () Bool)

(assert (=> b!5305101 (= c!921133 e!3297030)))

(declare-fun res!2250407 () Bool)

(assert (=> b!5305101 (=> (not res!2250407) (not e!3297030))))

(assert (=> b!5305101 (= res!2250407 ((_ is Concat!23798) (regTwo!30418 (regOne!30418 r!7292))))))

(declare-fun e!3297026 () (InoxSet Context!8674))

(declare-fun e!3297025 () (InoxSet Context!8674))

(assert (=> b!5305101 (= e!3297026 e!3297025)))

(declare-fun b!5305103 () Bool)

(declare-fun e!3297027 () (InoxSet Context!8674))

(assert (=> b!5305103 (= e!3297027 (store ((as const (Array Context!8674 Bool)) false) lt!2167572 true))))

(declare-fun b!5305104 () Bool)

(declare-fun e!3297028 () (InoxSet Context!8674))

(declare-fun call!378196 () (InoxSet Context!8674))

(assert (=> b!5305104 (= e!3297028 call!378196)))

(declare-fun bm!378189 () Bool)

(declare-fun call!378199 () (InoxSet Context!8674))

(declare-fun call!378195 () (InoxSet Context!8674))

(assert (=> bm!378189 (= call!378199 call!378195)))

(declare-fun bm!378190 () Bool)

(declare-fun call!378197 () List!61158)

(declare-fun call!378198 () List!61158)

(assert (=> bm!378190 (= call!378197 call!378198)))

(declare-fun bm!378191 () Bool)

(assert (=> bm!378191 (= call!378196 call!378199)))

(declare-fun call!378194 () (InoxSet Context!8674))

(declare-fun bm!378192 () Bool)

(declare-fun c!921134 () Bool)

(assert (=> bm!378192 (= call!378194 (derivationStepZipperDown!401 (ite c!921134 (regTwo!30419 (regTwo!30418 (regOne!30418 r!7292))) (regOne!30418 (regTwo!30418 (regOne!30418 r!7292)))) (ite c!921134 lt!2167572 (Context!8675 call!378198)) (h!67484 s!2326)))))

(declare-fun b!5305105 () Bool)

(declare-fun e!3297029 () (InoxSet Context!8674))

(assert (=> b!5305105 (= e!3297025 e!3297029)))

(declare-fun c!921131 () Bool)

(assert (=> b!5305105 (= c!921131 ((_ is Concat!23798) (regTwo!30418 (regOne!30418 r!7292))))))

(declare-fun b!5305106 () Bool)

(assert (=> b!5305106 (= e!3297029 call!378196)))

(declare-fun bm!378193 () Bool)

(assert (=> bm!378193 (= call!378198 ($colon$colon!1375 (exprs!4837 lt!2167572) (ite (or c!921133 c!921131) (regTwo!30418 (regTwo!30418 (regOne!30418 r!7292))) (regTwo!30418 (regOne!30418 r!7292)))))))

(declare-fun b!5305107 () Bool)

(assert (=> b!5305107 (= e!3297028 ((as const (Array Context!8674 Bool)) false))))

(declare-fun b!5305108 () Bool)

(assert (=> b!5305108 (= e!3297027 e!3297026)))

(assert (=> b!5305108 (= c!921134 ((_ is Union!14953) (regTwo!30418 (regOne!30418 r!7292))))))

(declare-fun b!5305102 () Bool)

(assert (=> b!5305102 (= e!3297025 ((_ map or) call!378194 call!378199))))

(declare-fun d!1705294 () Bool)

(declare-fun c!921130 () Bool)

(assert (=> d!1705294 (= c!921130 (and ((_ is ElementMatch!14953) (regTwo!30418 (regOne!30418 r!7292))) (= (c!920805 (regTwo!30418 (regOne!30418 r!7292))) (h!67484 s!2326))))))

(assert (=> d!1705294 (= (derivationStepZipperDown!401 (regTwo!30418 (regOne!30418 r!7292)) lt!2167572 (h!67484 s!2326)) e!3297027)))

(declare-fun bm!378194 () Bool)

(assert (=> bm!378194 (= call!378195 (derivationStepZipperDown!401 (ite c!921134 (regOne!30419 (regTwo!30418 (regOne!30418 r!7292))) (ite c!921133 (regTwo!30418 (regTwo!30418 (regOne!30418 r!7292))) (ite c!921131 (regOne!30418 (regTwo!30418 (regOne!30418 r!7292))) (reg!15282 (regTwo!30418 (regOne!30418 r!7292)))))) (ite (or c!921134 c!921133) lt!2167572 (Context!8675 call!378197)) (h!67484 s!2326)))))

(declare-fun b!5305109 () Bool)

(assert (=> b!5305109 (= e!3297030 (nullable!5122 (regOne!30418 (regTwo!30418 (regOne!30418 r!7292)))))))

(declare-fun b!5305110 () Bool)

(assert (=> b!5305110 (= e!3297026 ((_ map or) call!378195 call!378194))))

(declare-fun b!5305111 () Bool)

(declare-fun c!921132 () Bool)

(assert (=> b!5305111 (= c!921132 ((_ is Star!14953) (regTwo!30418 (regOne!30418 r!7292))))))

(assert (=> b!5305111 (= e!3297029 e!3297028)))

(assert (= (and d!1705294 c!921130) b!5305103))

(assert (= (and d!1705294 (not c!921130)) b!5305108))

(assert (= (and b!5305108 c!921134) b!5305110))

(assert (= (and b!5305108 (not c!921134)) b!5305101))

(assert (= (and b!5305101 res!2250407) b!5305109))

(assert (= (and b!5305101 c!921133) b!5305102))

(assert (= (and b!5305101 (not c!921133)) b!5305105))

(assert (= (and b!5305105 c!921131) b!5305106))

(assert (= (and b!5305105 (not c!921131)) b!5305111))

(assert (= (and b!5305111 c!921132) b!5305104))

(assert (= (and b!5305111 (not c!921132)) b!5305107))

(assert (= (or b!5305106 b!5305104) bm!378190))

(assert (= (or b!5305106 b!5305104) bm!378191))

(assert (= (or b!5305102 bm!378190) bm!378193))

(assert (= (or b!5305102 bm!378191) bm!378189))

(assert (= (or b!5305110 b!5305102) bm!378192))

(assert (= (or b!5305110 bm!378189) bm!378194))

(declare-fun m!6342490 () Bool)

(assert (=> bm!378194 m!6342490))

(declare-fun m!6342492 () Bool)

(assert (=> b!5305109 m!6342492))

(assert (=> b!5305103 m!6342140))

(declare-fun m!6342494 () Bool)

(assert (=> bm!378192 m!6342494))

(declare-fun m!6342496 () Bool)

(assert (=> bm!378193 m!6342496))

(assert (=> b!5304032 d!1705294))

(declare-fun b!5305112 () Bool)

(declare-fun c!921138 () Bool)

(declare-fun e!3297036 () Bool)

(assert (=> b!5305112 (= c!921138 e!3297036)))

(declare-fun res!2250408 () Bool)

(assert (=> b!5305112 (=> (not res!2250408) (not e!3297036))))

(assert (=> b!5305112 (= res!2250408 ((_ is Concat!23798) (regOne!30418 (regOne!30418 r!7292))))))

(declare-fun e!3297032 () (InoxSet Context!8674))

(declare-fun e!3297031 () (InoxSet Context!8674))

(assert (=> b!5305112 (= e!3297032 e!3297031)))

(declare-fun b!5305114 () Bool)

(declare-fun e!3297033 () (InoxSet Context!8674))

(assert (=> b!5305114 (= e!3297033 (store ((as const (Array Context!8674 Bool)) false) lt!2167597 true))))

(declare-fun b!5305115 () Bool)

(declare-fun e!3297034 () (InoxSet Context!8674))

(declare-fun call!378202 () (InoxSet Context!8674))

(assert (=> b!5305115 (= e!3297034 call!378202)))

(declare-fun bm!378195 () Bool)

(declare-fun call!378205 () (InoxSet Context!8674))

(declare-fun call!378201 () (InoxSet Context!8674))

(assert (=> bm!378195 (= call!378205 call!378201)))

(declare-fun bm!378196 () Bool)

(declare-fun call!378203 () List!61158)

(declare-fun call!378204 () List!61158)

(assert (=> bm!378196 (= call!378203 call!378204)))

(declare-fun bm!378197 () Bool)

(assert (=> bm!378197 (= call!378202 call!378205)))

(declare-fun bm!378198 () Bool)

(declare-fun call!378200 () (InoxSet Context!8674))

(declare-fun c!921139 () Bool)

(assert (=> bm!378198 (= call!378200 (derivationStepZipperDown!401 (ite c!921139 (regTwo!30419 (regOne!30418 (regOne!30418 r!7292))) (regOne!30418 (regOne!30418 (regOne!30418 r!7292)))) (ite c!921139 lt!2167597 (Context!8675 call!378204)) (h!67484 s!2326)))))

(declare-fun b!5305116 () Bool)

(declare-fun e!3297035 () (InoxSet Context!8674))

(assert (=> b!5305116 (= e!3297031 e!3297035)))

(declare-fun c!921136 () Bool)

(assert (=> b!5305116 (= c!921136 ((_ is Concat!23798) (regOne!30418 (regOne!30418 r!7292))))))

(declare-fun b!5305117 () Bool)

(assert (=> b!5305117 (= e!3297035 call!378202)))

(declare-fun bm!378199 () Bool)

(assert (=> bm!378199 (= call!378204 ($colon$colon!1375 (exprs!4837 lt!2167597) (ite (or c!921138 c!921136) (regTwo!30418 (regOne!30418 (regOne!30418 r!7292))) (regOne!30418 (regOne!30418 r!7292)))))))

(declare-fun b!5305118 () Bool)

(assert (=> b!5305118 (= e!3297034 ((as const (Array Context!8674 Bool)) false))))

(declare-fun b!5305119 () Bool)

(assert (=> b!5305119 (= e!3297033 e!3297032)))

(assert (=> b!5305119 (= c!921139 ((_ is Union!14953) (regOne!30418 (regOne!30418 r!7292))))))

(declare-fun b!5305113 () Bool)

(assert (=> b!5305113 (= e!3297031 ((_ map or) call!378200 call!378205))))

(declare-fun d!1705296 () Bool)

(declare-fun c!921135 () Bool)

(assert (=> d!1705296 (= c!921135 (and ((_ is ElementMatch!14953) (regOne!30418 (regOne!30418 r!7292))) (= (c!920805 (regOne!30418 (regOne!30418 r!7292))) (h!67484 s!2326))))))

(assert (=> d!1705296 (= (derivationStepZipperDown!401 (regOne!30418 (regOne!30418 r!7292)) lt!2167597 (h!67484 s!2326)) e!3297033)))

(declare-fun bm!378200 () Bool)

(assert (=> bm!378200 (= call!378201 (derivationStepZipperDown!401 (ite c!921139 (regOne!30419 (regOne!30418 (regOne!30418 r!7292))) (ite c!921138 (regTwo!30418 (regOne!30418 (regOne!30418 r!7292))) (ite c!921136 (regOne!30418 (regOne!30418 (regOne!30418 r!7292))) (reg!15282 (regOne!30418 (regOne!30418 r!7292)))))) (ite (or c!921139 c!921138) lt!2167597 (Context!8675 call!378203)) (h!67484 s!2326)))))

(declare-fun b!5305120 () Bool)

(assert (=> b!5305120 (= e!3297036 (nullable!5122 (regOne!30418 (regOne!30418 (regOne!30418 r!7292)))))))

(declare-fun b!5305121 () Bool)

(assert (=> b!5305121 (= e!3297032 ((_ map or) call!378201 call!378200))))

(declare-fun b!5305122 () Bool)

(declare-fun c!921137 () Bool)

(assert (=> b!5305122 (= c!921137 ((_ is Star!14953) (regOne!30418 (regOne!30418 r!7292))))))

(assert (=> b!5305122 (= e!3297035 e!3297034)))

(assert (= (and d!1705296 c!921135) b!5305114))

(assert (= (and d!1705296 (not c!921135)) b!5305119))

(assert (= (and b!5305119 c!921139) b!5305121))

(assert (= (and b!5305119 (not c!921139)) b!5305112))

(assert (= (and b!5305112 res!2250408) b!5305120))

(assert (= (and b!5305112 c!921138) b!5305113))

(assert (= (and b!5305112 (not c!921138)) b!5305116))

(assert (= (and b!5305116 c!921136) b!5305117))

(assert (= (and b!5305116 (not c!921136)) b!5305122))

(assert (= (and b!5305122 c!921137) b!5305115))

(assert (= (and b!5305122 (not c!921137)) b!5305118))

(assert (= (or b!5305117 b!5305115) bm!378196))

(assert (= (or b!5305117 b!5305115) bm!378197))

(assert (= (or b!5305113 bm!378196) bm!378199))

(assert (= (or b!5305113 bm!378197) bm!378195))

(assert (= (or b!5305121 b!5305113) bm!378198))

(assert (= (or b!5305121 bm!378195) bm!378200))

(declare-fun m!6342498 () Bool)

(assert (=> bm!378200 m!6342498))

(declare-fun m!6342500 () Bool)

(assert (=> b!5305120 m!6342500))

(assert (=> b!5305114 m!6341480))

(declare-fun m!6342502 () Bool)

(assert (=> bm!378198 m!6342502))

(declare-fun m!6342504 () Bool)

(assert (=> bm!378199 m!6342504))

(assert (=> b!5304032 d!1705296))

(declare-fun d!1705298 () Bool)

(assert (=> d!1705298 (= (flatMap!680 lt!2167590 lambda!269688) (dynLambda!24124 lambda!269688 lt!2167592))))

(declare-fun lt!2167797 () Unit!153330)

(assert (=> d!1705298 (= lt!2167797 (choose!39656 lt!2167590 lt!2167592 lambda!269688))))

(assert (=> d!1705298 (= lt!2167590 (store ((as const (Array Context!8674 Bool)) false) lt!2167592 true))))

(assert (=> d!1705298 (= (lemmaFlatMapOnSingletonSet!212 lt!2167590 lt!2167592 lambda!269688) lt!2167797)))

(declare-fun b_lambda!204307 () Bool)

(assert (=> (not b_lambda!204307) (not d!1705298)))

(declare-fun bs!1230206 () Bool)

(assert (= bs!1230206 d!1705298))

(assert (=> bs!1230206 m!6341488))

(declare-fun m!6342506 () Bool)

(assert (=> bs!1230206 m!6342506))

(declare-fun m!6342508 () Bool)

(assert (=> bs!1230206 m!6342508))

(assert (=> bs!1230206 m!6341484))

(assert (=> b!5304033 d!1705298))

(declare-fun d!1705300 () Bool)

(assert (=> d!1705300 (= (flatMap!680 lt!2167590 lambda!269688) (choose!39657 lt!2167590 lambda!269688))))

(declare-fun bs!1230207 () Bool)

(assert (= bs!1230207 d!1705300))

(declare-fun m!6342510 () Bool)

(assert (=> bs!1230207 m!6342510))

(assert (=> b!5304033 d!1705300))

(declare-fun b!5305123 () Bool)

(declare-fun e!3297039 () (InoxSet Context!8674))

(assert (=> b!5305123 (= e!3297039 ((as const (Array Context!8674 Bool)) false))))

(declare-fun b!5305124 () Bool)

(declare-fun e!3297037 () Bool)

(assert (=> b!5305124 (= e!3297037 (nullable!5122 (h!67482 (exprs!4837 lt!2167592))))))

(declare-fun d!1705302 () Bool)

(declare-fun c!921141 () Bool)

(assert (=> d!1705302 (= c!921141 e!3297037)))

(declare-fun res!2250409 () Bool)

(assert (=> d!1705302 (=> (not res!2250409) (not e!3297037))))

(assert (=> d!1705302 (= res!2250409 ((_ is Cons!61034) (exprs!4837 lt!2167592)))))

(declare-fun e!3297038 () (InoxSet Context!8674))

(assert (=> d!1705302 (= (derivationStepZipperUp!325 lt!2167592 (h!67484 s!2326)) e!3297038)))

(declare-fun call!378206 () (InoxSet Context!8674))

(declare-fun b!5305125 () Bool)

(assert (=> b!5305125 (= e!3297038 ((_ map or) call!378206 (derivationStepZipperUp!325 (Context!8675 (t!374363 (exprs!4837 lt!2167592))) (h!67484 s!2326))))))

(declare-fun b!5305126 () Bool)

(assert (=> b!5305126 (= e!3297039 call!378206)))

(declare-fun bm!378201 () Bool)

(assert (=> bm!378201 (= call!378206 (derivationStepZipperDown!401 (h!67482 (exprs!4837 lt!2167592)) (Context!8675 (t!374363 (exprs!4837 lt!2167592))) (h!67484 s!2326)))))

(declare-fun b!5305127 () Bool)

(assert (=> b!5305127 (= e!3297038 e!3297039)))

(declare-fun c!921140 () Bool)

(assert (=> b!5305127 (= c!921140 ((_ is Cons!61034) (exprs!4837 lt!2167592)))))

(assert (= (and d!1705302 res!2250409) b!5305124))

(assert (= (and d!1705302 c!921141) b!5305125))

(assert (= (and d!1705302 (not c!921141)) b!5305127))

(assert (= (and b!5305127 c!921140) b!5305126))

(assert (= (and b!5305127 (not c!921140)) b!5305123))

(assert (= (or b!5305125 b!5305126) bm!378201))

(declare-fun m!6342512 () Bool)

(assert (=> b!5305124 m!6342512))

(declare-fun m!6342514 () Bool)

(assert (=> b!5305125 m!6342514))

(declare-fun m!6342516 () Bool)

(assert (=> bm!378201 m!6342516))

(assert (=> b!5304033 d!1705302))

(assert (=> b!5304033 d!1705200))

(declare-fun bs!1230208 () Bool)

(declare-fun d!1705304 () Bool)

(assert (= bs!1230208 (and d!1705304 b!5304055)))

(declare-fun lambda!269806 () Int)

(assert (=> bs!1230208 (= lambda!269806 lambda!269688)))

(declare-fun bs!1230209 () Bool)

(assert (= bs!1230209 (and d!1705304 d!1705282)))

(assert (=> bs!1230209 (= lambda!269806 lambda!269805)))

(assert (=> d!1705304 true))

(assert (=> d!1705304 (= (derivationStepZipper!1196 lt!2167590 (h!67484 s!2326)) (flatMap!680 lt!2167590 lambda!269806))))

(declare-fun bs!1230210 () Bool)

(assert (= bs!1230210 d!1705304))

(declare-fun m!6342518 () Bool)

(assert (=> bs!1230210 m!6342518))

(assert (=> b!5304033 d!1705304))

(declare-fun bs!1230211 () Bool)

(declare-fun d!1705306 () Bool)

(assert (= bs!1230211 (and d!1705306 d!1705186)))

(declare-fun lambda!269807 () Int)

(assert (=> bs!1230211 (= lambda!269807 lambda!269765)))

(declare-fun bs!1230212 () Bool)

(assert (= bs!1230212 (and d!1705306 d!1705184)))

(assert (=> bs!1230212 (= lambda!269807 lambda!269762)))

(declare-fun bs!1230213 () Bool)

(assert (= bs!1230213 (and d!1705306 d!1705230)))

(assert (=> bs!1230213 (= lambda!269807 lambda!269790)))

(declare-fun bs!1230214 () Bool)

(assert (= bs!1230214 (and d!1705306 d!1705276)))

(assert (=> bs!1230214 (= lambda!269807 lambda!269800)))

(declare-fun bs!1230215 () Bool)

(assert (= bs!1230215 (and d!1705306 d!1705254)))

(assert (=> bs!1230215 (= lambda!269807 lambda!269794)))

(declare-fun bs!1230216 () Bool)

(assert (= bs!1230216 (and d!1705306 d!1705188)))

(assert (=> bs!1230216 (= lambda!269807 lambda!269768)))

(declare-fun bs!1230217 () Bool)

(assert (= bs!1230217 (and d!1705306 b!5304040)))

(assert (=> bs!1230217 (= lambda!269807 lambda!269693)))

(declare-fun bs!1230218 () Bool)

(assert (= bs!1230218 (and d!1705306 d!1705222)))

(assert (=> bs!1230218 (= lambda!269807 lambda!269775)))

(declare-fun b!5305128 () Bool)

(declare-fun e!3297043 () Regex!14953)

(assert (=> b!5305128 (= e!3297043 (Concat!23798 (h!67482 (exprs!4837 (h!67483 zl!343))) (generalisedConcat!622 (t!374363 (exprs!4837 (h!67483 zl!343))))))))

(declare-fun b!5305129 () Bool)

(declare-fun e!3297041 () Bool)

(declare-fun lt!2167798 () Regex!14953)

(assert (=> b!5305129 (= e!3297041 (isEmptyExpr!861 lt!2167798))))

(declare-fun b!5305130 () Bool)

(assert (=> b!5305130 (= e!3297043 EmptyExpr!14953)))

(declare-fun b!5305131 () Bool)

(declare-fun e!3297040 () Bool)

(assert (=> b!5305131 (= e!3297040 (isEmpty!32992 (t!374363 (exprs!4837 (h!67483 zl!343)))))))

(declare-fun e!3297042 () Bool)

(assert (=> d!1705306 e!3297042))

(declare-fun res!2250411 () Bool)

(assert (=> d!1705306 (=> (not res!2250411) (not e!3297042))))

(assert (=> d!1705306 (= res!2250411 (validRegex!6689 lt!2167798))))

(declare-fun e!3297044 () Regex!14953)

(assert (=> d!1705306 (= lt!2167798 e!3297044)))

(declare-fun c!921145 () Bool)

(assert (=> d!1705306 (= c!921145 e!3297040)))

(declare-fun res!2250410 () Bool)

(assert (=> d!1705306 (=> (not res!2250410) (not e!3297040))))

(assert (=> d!1705306 (= res!2250410 ((_ is Cons!61034) (exprs!4837 (h!67483 zl!343))))))

(assert (=> d!1705306 (forall!14365 (exprs!4837 (h!67483 zl!343)) lambda!269807)))

(assert (=> d!1705306 (= (generalisedConcat!622 (exprs!4837 (h!67483 zl!343))) lt!2167798)))

(declare-fun b!5305132 () Bool)

(declare-fun e!3297045 () Bool)

(assert (=> b!5305132 (= e!3297041 e!3297045)))

(declare-fun c!921143 () Bool)

(assert (=> b!5305132 (= c!921143 (isEmpty!32992 (tail!10468 (exprs!4837 (h!67483 zl!343)))))))

(declare-fun b!5305133 () Bool)

(assert (=> b!5305133 (= e!3297044 e!3297043)))

(declare-fun c!921142 () Bool)

(assert (=> b!5305133 (= c!921142 ((_ is Cons!61034) (exprs!4837 (h!67483 zl!343))))))

(declare-fun b!5305134 () Bool)

(assert (=> b!5305134 (= e!3297042 e!3297041)))

(declare-fun c!921144 () Bool)

(assert (=> b!5305134 (= c!921144 (isEmpty!32992 (exprs!4837 (h!67483 zl!343))))))

(declare-fun b!5305135 () Bool)

(assert (=> b!5305135 (= e!3297045 (isConcat!384 lt!2167798))))

(declare-fun b!5305136 () Bool)

(assert (=> b!5305136 (= e!3297045 (= lt!2167798 (head!11371 (exprs!4837 (h!67483 zl!343)))))))

(declare-fun b!5305137 () Bool)

(assert (=> b!5305137 (= e!3297044 (h!67482 (exprs!4837 (h!67483 zl!343))))))

(assert (= (and d!1705306 res!2250410) b!5305131))

(assert (= (and d!1705306 c!921145) b!5305137))

(assert (= (and d!1705306 (not c!921145)) b!5305133))

(assert (= (and b!5305133 c!921142) b!5305128))

(assert (= (and b!5305133 (not c!921142)) b!5305130))

(assert (= (and d!1705306 res!2250411) b!5305134))

(assert (= (and b!5305134 c!921144) b!5305129))

(assert (= (and b!5305134 (not c!921144)) b!5305132))

(assert (= (and b!5305132 c!921143) b!5305136))

(assert (= (and b!5305132 (not c!921143)) b!5305135))

(declare-fun m!6342520 () Bool)

(assert (=> b!5305129 m!6342520))

(declare-fun m!6342522 () Bool)

(assert (=> d!1705306 m!6342522))

(declare-fun m!6342524 () Bool)

(assert (=> d!1705306 m!6342524))

(assert (=> b!5305131 m!6341364))

(declare-fun m!6342526 () Bool)

(assert (=> b!5305136 m!6342526))

(assert (=> b!5305128 m!6341396))

(declare-fun m!6342528 () Bool)

(assert (=> b!5305135 m!6342528))

(declare-fun m!6342530 () Bool)

(assert (=> b!5305132 m!6342530))

(assert (=> b!5305132 m!6342530))

(declare-fun m!6342532 () Bool)

(assert (=> b!5305132 m!6342532))

(declare-fun m!6342534 () Bool)

(assert (=> b!5305134 m!6342534))

(assert (=> b!5304030 d!1705306))

(assert (=> b!5304049 d!1705216))

(declare-fun d!1705308 () Bool)

(declare-fun c!921146 () Bool)

(assert (=> d!1705308 (= c!921146 (isEmpty!32995 (t!374365 s!2326)))))

(declare-fun e!3297046 () Bool)

(assert (=> d!1705308 (= (matchZipper!1197 lt!2167576 (t!374365 s!2326)) e!3297046)))

(declare-fun b!5305138 () Bool)

(assert (=> b!5305138 (= e!3297046 (nullableZipper!1326 lt!2167576))))

(declare-fun b!5305139 () Bool)

(assert (=> b!5305139 (= e!3297046 (matchZipper!1197 (derivationStepZipper!1196 lt!2167576 (head!11370 (t!374365 s!2326))) (tail!10467 (t!374365 s!2326))))))

(assert (= (and d!1705308 c!921146) b!5305138))

(assert (= (and d!1705308 (not c!921146)) b!5305139))

(assert (=> d!1705308 m!6342050))

(declare-fun m!6342536 () Bool)

(assert (=> b!5305138 m!6342536))

(assert (=> b!5305139 m!6342054))

(assert (=> b!5305139 m!6342054))

(declare-fun m!6342538 () Bool)

(assert (=> b!5305139 m!6342538))

(assert (=> b!5305139 m!6342058))

(assert (=> b!5305139 m!6342538))

(assert (=> b!5305139 m!6342058))

(declare-fun m!6342540 () Bool)

(assert (=> b!5305139 m!6342540))

(assert (=> b!5304049 d!1705308))

(declare-fun d!1705310 () Bool)

(declare-fun c!921147 () Bool)

(assert (=> d!1705310 (= c!921147 (isEmpty!32995 (t!374365 s!2326)))))

(declare-fun e!3297047 () Bool)

(assert (=> d!1705310 (= (matchZipper!1197 lt!2167580 (t!374365 s!2326)) e!3297047)))

(declare-fun b!5305140 () Bool)

(assert (=> b!5305140 (= e!3297047 (nullableZipper!1326 lt!2167580))))

(declare-fun b!5305141 () Bool)

(assert (=> b!5305141 (= e!3297047 (matchZipper!1197 (derivationStepZipper!1196 lt!2167580 (head!11370 (t!374365 s!2326))) (tail!10467 (t!374365 s!2326))))))

(assert (= (and d!1705310 c!921147) b!5305140))

(assert (= (and d!1705310 (not c!921147)) b!5305141))

(assert (=> d!1705310 m!6342050))

(declare-fun m!6342542 () Bool)

(assert (=> b!5305140 m!6342542))

(assert (=> b!5305141 m!6342054))

(assert (=> b!5305141 m!6342054))

(declare-fun m!6342544 () Bool)

(assert (=> b!5305141 m!6342544))

(assert (=> b!5305141 m!6342058))

(assert (=> b!5305141 m!6342544))

(assert (=> b!5305141 m!6342058))

(declare-fun m!6342546 () Bool)

(assert (=> b!5305141 m!6342546))

(assert (=> b!5304049 d!1705310))

(declare-fun e!3297048 () Bool)

(declare-fun d!1705312 () Bool)

(assert (=> d!1705312 (= (matchZipper!1197 ((_ map or) lt!2167580 lt!2167596) (t!374365 s!2326)) e!3297048)))

(declare-fun res!2250412 () Bool)

(assert (=> d!1705312 (=> res!2250412 e!3297048)))

(assert (=> d!1705312 (= res!2250412 (matchZipper!1197 lt!2167580 (t!374365 s!2326)))))

(declare-fun lt!2167799 () Unit!153330)

(assert (=> d!1705312 (= lt!2167799 (choose!39660 lt!2167580 lt!2167596 (t!374365 s!2326)))))

(assert (=> d!1705312 (= (lemmaZipperConcatMatchesSameAsBothZippers!190 lt!2167580 lt!2167596 (t!374365 s!2326)) lt!2167799)))

(declare-fun b!5305142 () Bool)

(assert (=> b!5305142 (= e!3297048 (matchZipper!1197 lt!2167596 (t!374365 s!2326)))))

(assert (= (and d!1705312 (not res!2250412)) b!5305142))

(declare-fun m!6342548 () Bool)

(assert (=> d!1705312 m!6342548))

(assert (=> d!1705312 m!6341520))

(declare-fun m!6342550 () Bool)

(assert (=> d!1705312 m!6342550))

(assert (=> b!5305142 m!6341466))

(assert (=> b!5304049 d!1705312))

(declare-fun d!1705314 () Bool)

(declare-fun e!3297051 () Bool)

(assert (=> d!1705314 e!3297051))

(declare-fun res!2250415 () Bool)

(assert (=> d!1705314 (=> (not res!2250415) (not e!3297051))))

(declare-fun lt!2167802 () List!61159)

(declare-fun noDuplicate!1281 (List!61159) Bool)

(assert (=> d!1705314 (= res!2250415 (noDuplicate!1281 lt!2167802))))

(declare-fun choose!39662 ((InoxSet Context!8674)) List!61159)

(assert (=> d!1705314 (= lt!2167802 (choose!39662 z!1189))))

(assert (=> d!1705314 (= (toList!8737 z!1189) lt!2167802)))

(declare-fun b!5305145 () Bool)

(declare-fun content!10871 (List!61159) (InoxSet Context!8674))

(assert (=> b!5305145 (= e!3297051 (= (content!10871 lt!2167802) z!1189))))

(assert (= (and d!1705314 res!2250415) b!5305145))

(declare-fun m!6342552 () Bool)

(assert (=> d!1705314 m!6342552))

(declare-fun m!6342554 () Bool)

(assert (=> d!1705314 m!6342554))

(declare-fun m!6342556 () Bool)

(assert (=> b!5305145 m!6342556))

(assert (=> b!5304050 d!1705314))

(declare-fun b!5305150 () Bool)

(declare-fun e!3297054 () Bool)

(declare-fun tp!1478816 () Bool)

(declare-fun tp!1478817 () Bool)

(assert (=> b!5305150 (= e!3297054 (and tp!1478816 tp!1478817))))

(assert (=> b!5304038 (= tp!1478750 e!3297054)))

(assert (= (and b!5304038 ((_ is Cons!61034) (exprs!4837 setElem!34091))) b!5305150))

(declare-fun b!5305158 () Bool)

(declare-fun e!3297060 () Bool)

(declare-fun tp!1478822 () Bool)

(assert (=> b!5305158 (= e!3297060 tp!1478822)))

(declare-fun e!3297059 () Bool)

(declare-fun tp!1478823 () Bool)

(declare-fun b!5305157 () Bool)

(assert (=> b!5305157 (= e!3297059 (and (inv!80629 (h!67483 (t!374364 zl!343))) e!3297060 tp!1478823))))

(assert (=> b!5304062 (= tp!1478747 e!3297059)))

(assert (= b!5305157 b!5305158))

(assert (= (and b!5304062 ((_ is Cons!61035) (t!374364 zl!343))) b!5305157))

(declare-fun m!6342558 () Bool)

(assert (=> b!5305157 m!6342558))

(declare-fun b!5305170 () Bool)

(declare-fun e!3297063 () Bool)

(declare-fun tp!1478835 () Bool)

(declare-fun tp!1478836 () Bool)

(assert (=> b!5305170 (= e!3297063 (and tp!1478835 tp!1478836))))

(declare-fun b!5305171 () Bool)

(declare-fun tp!1478837 () Bool)

(assert (=> b!5305171 (= e!3297063 tp!1478837)))

(declare-fun b!5305169 () Bool)

(assert (=> b!5305169 (= e!3297063 tp_is_empty!39159)))

(declare-fun b!5305172 () Bool)

(declare-fun tp!1478838 () Bool)

(declare-fun tp!1478834 () Bool)

(assert (=> b!5305172 (= e!3297063 (and tp!1478838 tp!1478834))))

(assert (=> b!5304067 (= tp!1478748 e!3297063)))

(assert (= (and b!5304067 ((_ is ElementMatch!14953) (regOne!30418 r!7292))) b!5305169))

(assert (= (and b!5304067 ((_ is Concat!23798) (regOne!30418 r!7292))) b!5305170))

(assert (= (and b!5304067 ((_ is Star!14953) (regOne!30418 r!7292))) b!5305171))

(assert (= (and b!5304067 ((_ is Union!14953) (regOne!30418 r!7292))) b!5305172))

(declare-fun b!5305174 () Bool)

(declare-fun e!3297064 () Bool)

(declare-fun tp!1478840 () Bool)

(declare-fun tp!1478841 () Bool)

(assert (=> b!5305174 (= e!3297064 (and tp!1478840 tp!1478841))))

(declare-fun b!5305175 () Bool)

(declare-fun tp!1478842 () Bool)

(assert (=> b!5305175 (= e!3297064 tp!1478842)))

(declare-fun b!5305173 () Bool)

(assert (=> b!5305173 (= e!3297064 tp_is_empty!39159)))

(declare-fun b!5305176 () Bool)

(declare-fun tp!1478843 () Bool)

(declare-fun tp!1478839 () Bool)

(assert (=> b!5305176 (= e!3297064 (and tp!1478843 tp!1478839))))

(assert (=> b!5304067 (= tp!1478752 e!3297064)))

(assert (= (and b!5304067 ((_ is ElementMatch!14953) (regTwo!30418 r!7292))) b!5305173))

(assert (= (and b!5304067 ((_ is Concat!23798) (regTwo!30418 r!7292))) b!5305174))

(assert (= (and b!5304067 ((_ is Star!14953) (regTwo!30418 r!7292))) b!5305175))

(assert (= (and b!5304067 ((_ is Union!14953) (regTwo!30418 r!7292))) b!5305176))

(declare-fun condSetEmpty!34097 () Bool)

(assert (=> setNonEmpty!34091 (= condSetEmpty!34097 (= setRest!34091 ((as const (Array Context!8674 Bool)) false)))))

(declare-fun setRes!34097 () Bool)

(assert (=> setNonEmpty!34091 (= tp!1478749 setRes!34097)))

(declare-fun setIsEmpty!34097 () Bool)

(assert (=> setIsEmpty!34097 setRes!34097))

(declare-fun e!3297067 () Bool)

(declare-fun setNonEmpty!34097 () Bool)

(declare-fun tp!1478849 () Bool)

(declare-fun setElem!34097 () Context!8674)

(assert (=> setNonEmpty!34097 (= setRes!34097 (and tp!1478849 (inv!80629 setElem!34097) e!3297067))))

(declare-fun setRest!34097 () (InoxSet Context!8674))

(assert (=> setNonEmpty!34097 (= setRest!34091 ((_ map or) (store ((as const (Array Context!8674 Bool)) false) setElem!34097 true) setRest!34097))))

(declare-fun b!5305181 () Bool)

(declare-fun tp!1478848 () Bool)

(assert (=> b!5305181 (= e!3297067 tp!1478848)))

(assert (= (and setNonEmpty!34091 condSetEmpty!34097) setIsEmpty!34097))

(assert (= (and setNonEmpty!34091 (not condSetEmpty!34097)) setNonEmpty!34097))

(assert (= setNonEmpty!34097 b!5305181))

(declare-fun m!6342560 () Bool)

(assert (=> setNonEmpty!34097 m!6342560))

(declare-fun b!5305183 () Bool)

(declare-fun e!3297068 () Bool)

(declare-fun tp!1478851 () Bool)

(declare-fun tp!1478852 () Bool)

(assert (=> b!5305183 (= e!3297068 (and tp!1478851 tp!1478852))))

(declare-fun b!5305184 () Bool)

(declare-fun tp!1478853 () Bool)

(assert (=> b!5305184 (= e!3297068 tp!1478853)))

(declare-fun b!5305182 () Bool)

(assert (=> b!5305182 (= e!3297068 tp_is_empty!39159)))

(declare-fun b!5305185 () Bool)

(declare-fun tp!1478854 () Bool)

(declare-fun tp!1478850 () Bool)

(assert (=> b!5305185 (= e!3297068 (and tp!1478854 tp!1478850))))

(assert (=> b!5304053 (= tp!1478745 e!3297068)))

(assert (= (and b!5304053 ((_ is ElementMatch!14953) (regOne!30419 r!7292))) b!5305182))

(assert (= (and b!5304053 ((_ is Concat!23798) (regOne!30419 r!7292))) b!5305183))

(assert (= (and b!5304053 ((_ is Star!14953) (regOne!30419 r!7292))) b!5305184))

(assert (= (and b!5304053 ((_ is Union!14953) (regOne!30419 r!7292))) b!5305185))

(declare-fun b!5305187 () Bool)

(declare-fun e!3297069 () Bool)

(declare-fun tp!1478856 () Bool)

(declare-fun tp!1478857 () Bool)

(assert (=> b!5305187 (= e!3297069 (and tp!1478856 tp!1478857))))

(declare-fun b!5305188 () Bool)

(declare-fun tp!1478858 () Bool)

(assert (=> b!5305188 (= e!3297069 tp!1478858)))

(declare-fun b!5305186 () Bool)

(assert (=> b!5305186 (= e!3297069 tp_is_empty!39159)))

(declare-fun b!5305189 () Bool)

(declare-fun tp!1478859 () Bool)

(declare-fun tp!1478855 () Bool)

(assert (=> b!5305189 (= e!3297069 (and tp!1478859 tp!1478855))))

(assert (=> b!5304053 (= tp!1478753 e!3297069)))

(assert (= (and b!5304053 ((_ is ElementMatch!14953) (regTwo!30419 r!7292))) b!5305186))

(assert (= (and b!5304053 ((_ is Concat!23798) (regTwo!30419 r!7292))) b!5305187))

(assert (= (and b!5304053 ((_ is Star!14953) (regTwo!30419 r!7292))) b!5305188))

(assert (= (and b!5304053 ((_ is Union!14953) (regTwo!30419 r!7292))) b!5305189))

(declare-fun b!5305190 () Bool)

(declare-fun e!3297070 () Bool)

(declare-fun tp!1478860 () Bool)

(declare-fun tp!1478861 () Bool)

(assert (=> b!5305190 (= e!3297070 (and tp!1478860 tp!1478861))))

(assert (=> b!5304054 (= tp!1478744 e!3297070)))

(assert (= (and b!5304054 ((_ is Cons!61034) (exprs!4837 (h!67483 zl!343)))) b!5305190))

(declare-fun b!5305192 () Bool)

(declare-fun e!3297071 () Bool)

(declare-fun tp!1478863 () Bool)

(declare-fun tp!1478864 () Bool)

(assert (=> b!5305192 (= e!3297071 (and tp!1478863 tp!1478864))))

(declare-fun b!5305193 () Bool)

(declare-fun tp!1478865 () Bool)

(assert (=> b!5305193 (= e!3297071 tp!1478865)))

(declare-fun b!5305191 () Bool)

(assert (=> b!5305191 (= e!3297071 tp_is_empty!39159)))

(declare-fun b!5305194 () Bool)

(declare-fun tp!1478866 () Bool)

(declare-fun tp!1478862 () Bool)

(assert (=> b!5305194 (= e!3297071 (and tp!1478866 tp!1478862))))

(assert (=> b!5304059 (= tp!1478751 e!3297071)))

(assert (= (and b!5304059 ((_ is ElementMatch!14953) (reg!15282 r!7292))) b!5305191))

(assert (= (and b!5304059 ((_ is Concat!23798) (reg!15282 r!7292))) b!5305192))

(assert (= (and b!5304059 ((_ is Star!14953) (reg!15282 r!7292))) b!5305193))

(assert (= (and b!5304059 ((_ is Union!14953) (reg!15282 r!7292))) b!5305194))

(declare-fun b!5305199 () Bool)

(declare-fun e!3297074 () Bool)

(declare-fun tp!1478869 () Bool)

(assert (=> b!5305199 (= e!3297074 (and tp_is_empty!39159 tp!1478869))))

(assert (=> b!5304029 (= tp!1478746 e!3297074)))

(assert (= (and b!5304029 ((_ is Cons!61036) (t!374365 s!2326))) b!5305199))

(declare-fun b_lambda!204309 () Bool)

(assert (= b_lambda!204303 (or b!5304055 b_lambda!204309)))

(declare-fun bs!1230219 () Bool)

(declare-fun d!1705316 () Bool)

(assert (= bs!1230219 (and d!1705316 b!5304055)))

(assert (=> bs!1230219 (= (dynLambda!24124 lambda!269688 lt!2167597) (derivationStepZipperUp!325 lt!2167597 (h!67484 s!2326)))))

(assert (=> bs!1230219 m!6341436))

(assert (=> d!1705206 d!1705316))

(declare-fun b_lambda!204311 () Bool)

(assert (= b_lambda!204307 (or b!5304055 b_lambda!204311)))

(declare-fun bs!1230220 () Bool)

(declare-fun d!1705318 () Bool)

(assert (= bs!1230220 (and d!1705318 b!5304055)))

(assert (=> bs!1230220 (= (dynLambda!24124 lambda!269688 lt!2167592) (derivationStepZipperUp!325 lt!2167592 (h!67484 s!2326)))))

(assert (=> bs!1230220 m!6341482))

(assert (=> d!1705298 d!1705318))

(declare-fun b_lambda!204313 () Bool)

(assert (= b_lambda!204301 (or b!5304055 b_lambda!204313)))

(declare-fun bs!1230221 () Bool)

(declare-fun d!1705320 () Bool)

(assert (= bs!1230221 (and d!1705320 b!5304055)))

(assert (=> bs!1230221 (= (dynLambda!24124 lambda!269688 (h!67483 zl!343)) (derivationStepZipperUp!325 (h!67483 zl!343) (h!67484 s!2326)))))

(assert (=> bs!1230221 m!6341498))

(assert (=> d!1705170 d!1705320))

(declare-fun b_lambda!204315 () Bool)

(assert (= b_lambda!204305 (or b!5304040 b_lambda!204315)))

(declare-fun bs!1230222 () Bool)

(declare-fun d!1705322 () Bool)

(assert (= bs!1230222 (and d!1705322 b!5304040)))

(assert (=> bs!1230222 (= (dynLambda!24125 lambda!269693 (h!67482 (t!374363 (exprs!4837 (h!67483 zl!343))))) (validRegex!6689 (h!67482 (t!374363 (exprs!4837 (h!67483 zl!343))))))))

(declare-fun m!6342562 () Bool)

(assert (=> bs!1230222 m!6342562))

(assert (=> b!5304887 d!1705322))

(check-sat (not bm!378141) (not b!5305129) (not bm!378186) (not b!5305185) (not d!1705150) (not d!1705204) (not b!5304882) (not bm!378198) (not b!5304971) (not bm!378143) (not b!5304889) (not b!5304784) (not d!1705158) (not b!5304876) (not b!5305174) (not b!5305142) (not b!5304771) (not b!5304690) (not b!5304875) (not b!5304857) (not b!5304981) (not d!1705206) (not b!5304921) (not b!5304967) (not b!5304880) (not b!5304918) (not bm!378172) (not b!5305136) (not d!1705236) (not b!5305157) (not b!5304673) (not b!5304866) (not b!5304864) (not b!5304993) (not b!5305140) (not b!5305049) (not b!5304952) (not d!1705264) (not b!5305028) (not b!5304986) (not b!5304996) (not d!1705246) (not d!1705250) (not d!1705168) (not b!5305183) (not b!5304916) (not b!5305134) (not b!5305012) (not b!5304775) (not d!1705212) (not b!5305043) (not b!5304714) (not b!5305086) (not d!1705248) (not bm!378178) (not b!5305193) (not d!1705216) (not b!5304958) (not b!5305059) (not d!1705222) (not bm!378166) (not d!1705254) (not d!1705214) (not b!5304960) (not b!5304963) (not b!5304898) (not b!5305145) (not bm!378199) (not b!5304779) (not d!1705280) (not b!5305158) (not b!5305015) (not b!5305052) (not b!5304909) (not b!5305031) (not b!5304990) (not b!5304907) (not d!1705262) (not b!5304643) (not b_lambda!204309) (not b!5305184) (not b!5305190) (not d!1705202) tp_is_empty!39159 (not b!5304896) (not b!5305009) (not bm!378167) (not b!5305061) (not b!5305141) (not d!1705230) (not d!1705268) (not b!5305150) (not d!1705244) (not b!5305054) (not d!1705314) (not b!5305139) (not d!1705242) (not b!5305046) (not d!1705308) (not b!5304923) (not b!5305128) (not d!1705184) (not b!5304999) (not b!5304827) (not b!5304861) (not bm!378170) (not b!5304704) (not b!5305175) (not b!5305125) (not d!1705188) (not b!5304776) (not d!1705286) (not b!5304703) (not b!5305194) (not d!1705260) (not b!5304677) (not b!5304944) (not d!1705228) (not bm!378160) (not b!5305030) (not bs!1230220) (not d!1705210) (not b!5304670) (not b!5304709) (not bm!378193) (not b!5305006) (not b!5304950) (not b!5304965) (not d!1705238) (not d!1705166) (not b_lambda!204315) (not b!5304994) (not b!5305001) (not b!5305192) (not d!1705170) (not bm!378159) (not b!5305034) (not b!5305056) (not b!5304974) (not b!5304708) (not bm!378173) (not b!5305135) (not d!1705298) (not d!1705196) (not b!5304951) (not b!5304893) (not b_lambda!204313) (not b!5304672) (not d!1705164) (not d!1705152) (not d!1705220) (not b!5304904) (not d!1705252) (not b!5305008) (not d!1705306) (not b!5304649) (not bm!378177) (not b!5305188) (not b!5305063) (not d!1705162) (not d!1705218) (not b!5305172) (not b!5304908) (not b!5304888) (not b!5304954) (not b!5304900) (not b!5304774) (not b!5305007) (not b!5305176) (not b!5305003) (not b!5304773) (not b!5304873) (not bm!378174) (not setNonEmpty!34097) (not d!1705192) (not b!5304881) (not b!5305199) (not bm!378179) (not d!1705160) (not b!5304650) (not b!5304713) (not d!1705234) (not b!5305048) (not d!1705232) (not b!5305170) (not bm!378176) (not b!5305132) (not b!5304824) (not bm!378192) (not b!5304947) (not b!5304973) (not bm!378187) (not d!1705174) (not b!5305014) (not b_lambda!204311) (not b!5304983) (not b!5304997) (not d!1705270) (not d!1705310) (not b!5305025) (not b!5304770) (not b!5304978) (not d!1705274) (not d!1705186) (not d!1705194) (not d!1705258) (not b!5304972) (not b!5304859) (not b!5305138) (not d!1705312) (not bm!378142) (not b!5305033) (not b!5305181) (not b!5305035) (not d!1705300) (not d!1705156) (not b!5304691) (not bm!378201) (not bs!1230219) (not d!1705282) (not b!5304747) (not b!5304948) (not b!5304641) (not d!1705198) (not b!5304979) (not b!5305120) (not b!5305187) (not b!5304905) (not b!5305171) (not bm!378161) (not b!5305004) (not bm!378175) (not b!5305000) (not bm!378200) (not b!5305097) (not d!1705256) (not d!1705304) (not bm!378194) (not d!1705240) (not b!5304903) (not b!5304879) (not b!5304955) (not b!5304906) (not b!5305013) (not d!1705178) (not b!5304868) (not b!5304977) (not b!5305131) (not d!1705266) (not b!5305022) (not b!5304988) (not bm!378171) (not b!5305189) (not b!5305099) (not d!1705276) (not b!5304956) (not b!5304891) (not b!5305109) (not b!5304671) (not bs!1230222) (not b!5304945) (not b!5305124) (not bs!1230221) (not b!5304676) (not b!5305027))
(check-sat)
