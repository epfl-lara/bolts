; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!580198 () Bool)

(assert start!580198)

(declare-fun b!5585679 () Bool)

(assert (=> b!5585679 true))

(assert (=> b!5585679 true))

(declare-fun lambda!299673 () Int)

(declare-fun lambda!299672 () Int)

(assert (=> b!5585679 (not (= lambda!299673 lambda!299672))))

(assert (=> b!5585679 true))

(assert (=> b!5585679 true))

(declare-fun b!5585697 () Bool)

(assert (=> b!5585697 true))

(declare-fun b!5585669 () Bool)

(declare-fun e!3446297 () Bool)

(declare-fun tp_is_empty!40395 () Bool)

(declare-fun tp!1545246 () Bool)

(assert (=> b!5585669 (= e!3446297 (and tp_is_empty!40395 tp!1545246))))

(declare-fun b!5585670 () Bool)

(declare-fun e!3446299 () Bool)

(declare-fun e!3446287 () Bool)

(assert (=> b!5585670 (= e!3446299 e!3446287)))

(declare-fun res!2370174 () Bool)

(assert (=> b!5585670 (=> res!2370174 e!3446287)))

(declare-datatypes ((C!31412 0))(
  ( (C!31413 (val!25408 Int)) )
))
(declare-datatypes ((List!63012 0))(
  ( (Nil!62888) (Cons!62888 (h!69336 C!31412) (t!376287 List!63012)) )
))
(declare-fun s!2326 () List!63012)

(declare-fun lt!2254495 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!15571 0))(
  ( (ElementMatch!15571 (c!978418 C!31412)) (Concat!24416 (regOne!31654 Regex!15571) (regTwo!31654 Regex!15571)) (EmptyExpr!15571) (Star!15571 (reg!15900 Regex!15571)) (EmptyLang!15571) (Union!15571 (regOne!31655 Regex!15571) (regTwo!31655 Regex!15571)) )
))
(declare-datatypes ((List!63013 0))(
  ( (Nil!62889) (Cons!62889 (h!69337 Regex!15571) (t!376288 List!63013)) )
))
(declare-datatypes ((Context!9910 0))(
  ( (Context!9911 (exprs!5455 List!63013)) )
))
(declare-fun lt!2254474 () (InoxSet Context!9910))

(declare-fun matchZipper!1709 ((InoxSet Context!9910) List!63012) Bool)

(assert (=> b!5585670 (= res!2370174 (not (= lt!2254495 (matchZipper!1709 lt!2254474 (t!376287 s!2326)))))))

(declare-fun lt!2254480 () (InoxSet Context!9910))

(assert (=> b!5585670 (= lt!2254495 (matchZipper!1709 lt!2254480 s!2326))))

(declare-fun b!5585671 () Bool)

(declare-fun e!3446290 () Bool)

(declare-fun e!3446282 () Bool)

(assert (=> b!5585671 (= e!3446290 e!3446282)))

(declare-fun res!2370169 () Bool)

(assert (=> b!5585671 (=> res!2370169 e!3446282)))

(declare-fun e!3446294 () Bool)

(assert (=> b!5585671 (= res!2370169 e!3446294)))

(declare-fun res!2370167 () Bool)

(assert (=> b!5585671 (=> (not res!2370167) (not e!3446294))))

(declare-fun lt!2254491 () (InoxSet Context!9910))

(declare-fun lt!2254478 () Bool)

(assert (=> b!5585671 (= res!2370167 (not (= (matchZipper!1709 lt!2254491 (t!376287 s!2326)) lt!2254478)))))

(declare-fun lt!2254492 () (InoxSet Context!9910))

(declare-fun e!3446291 () Bool)

(assert (=> b!5585671 (= (matchZipper!1709 lt!2254492 (t!376287 s!2326)) e!3446291)))

(declare-fun res!2370184 () Bool)

(assert (=> b!5585671 (=> res!2370184 e!3446291)))

(assert (=> b!5585671 (= res!2370184 lt!2254478)))

(declare-fun lt!2254484 () (InoxSet Context!9910))

(assert (=> b!5585671 (= lt!2254478 (matchZipper!1709 lt!2254484 (t!376287 s!2326)))))

(declare-fun lt!2254494 () (InoxSet Context!9910))

(declare-datatypes ((Unit!155670 0))(
  ( (Unit!155671) )
))
(declare-fun lt!2254496 () Unit!155670)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!596 ((InoxSet Context!9910) (InoxSet Context!9910) List!63012) Unit!155670)

(assert (=> b!5585671 (= lt!2254496 (lemmaZipperConcatMatchesSameAsBothZippers!596 lt!2254484 lt!2254494 (t!376287 s!2326)))))

(declare-fun b!5585672 () Bool)

(declare-fun e!3446286 () Bool)

(declare-fun tp!1545248 () Bool)

(assert (=> b!5585672 (= e!3446286 tp!1545248)))

(declare-fun b!5585673 () Bool)

(declare-fun lt!2254477 () Bool)

(assert (=> b!5585673 (= e!3446287 (= lt!2254495 lt!2254477))))

(declare-fun lt!2254485 () Bool)

(assert (=> b!5585673 (= lt!2254485 lt!2254477)))

(declare-fun e!3446296 () Bool)

(assert (=> b!5585673 (= lt!2254477 e!3446296)))

(declare-fun res!2370173 () Bool)

(assert (=> b!5585673 (=> res!2370173 e!3446296)))

(declare-fun lt!2254473 () Bool)

(assert (=> b!5585673 (= res!2370173 lt!2254473)))

(declare-fun lt!2254467 () (InoxSet Context!9910))

(assert (=> b!5585673 (= lt!2254485 (matchZipper!1709 lt!2254467 (t!376287 s!2326)))))

(assert (=> b!5585673 (= lt!2254473 (matchZipper!1709 lt!2254494 (t!376287 s!2326)))))

(declare-fun lt!2254497 () Unit!155670)

(declare-fun lt!2254481 () (InoxSet Context!9910))

(assert (=> b!5585673 (= lt!2254497 (lemmaZipperConcatMatchesSameAsBothZippers!596 lt!2254494 lt!2254481 (t!376287 s!2326)))))

(declare-fun b!5585674 () Bool)

(declare-fun e!3446298 () Unit!155670)

(declare-fun Unit!155672 () Unit!155670)

(assert (=> b!5585674 (= e!3446298 Unit!155672)))

(declare-fun b!5585675 () Bool)

(assert (=> b!5585675 (= e!3446296 (matchZipper!1709 lt!2254481 (t!376287 s!2326)))))

(declare-fun setIsEmpty!37201 () Bool)

(declare-fun setRes!37201 () Bool)

(assert (=> setIsEmpty!37201 setRes!37201))

(declare-fun b!5585676 () Bool)

(declare-fun res!2370170 () Bool)

(declare-fun e!3446293 () Bool)

(assert (=> b!5585676 (=> (not res!2370170) (not e!3446293))))

(declare-fun r!7292 () Regex!15571)

(declare-datatypes ((List!63014 0))(
  ( (Nil!62890) (Cons!62890 (h!69338 Context!9910) (t!376289 List!63014)) )
))
(declare-fun zl!343 () List!63014)

(declare-fun unfocusZipper!1313 (List!63014) Regex!15571)

(assert (=> b!5585676 (= res!2370170 (= r!7292 (unfocusZipper!1313 zl!343)))))

(declare-fun b!5585677 () Bool)

(assert (=> b!5585677 (= e!3446294 (not (matchZipper!1709 lt!2254494 (t!376287 s!2326))))))

(declare-fun b!5585678 () Bool)

(declare-fun res!2370177 () Bool)

(declare-fun e!3446292 () Bool)

(assert (=> b!5585678 (=> res!2370177 e!3446292)))

(get-info :version)

(assert (=> b!5585678 (= res!2370177 (not ((_ is Cons!62889) (exprs!5455 (h!69338 zl!343)))))))

(declare-fun e!3446281 () Bool)

(assert (=> b!5585679 (= e!3446292 e!3446281)))

(declare-fun res!2370182 () Bool)

(assert (=> b!5585679 (=> res!2370182 e!3446281)))

(declare-fun lt!2254475 () Bool)

(declare-fun lt!2254493 () Bool)

(assert (=> b!5585679 (= res!2370182 (or (not (= lt!2254493 lt!2254475)) ((_ is Nil!62888) s!2326)))))

(declare-fun Exists!2671 (Int) Bool)

(assert (=> b!5585679 (= (Exists!2671 lambda!299672) (Exists!2671 lambda!299673))))

(declare-fun lt!2254479 () Unit!155670)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1300 (Regex!15571 Regex!15571 List!63012) Unit!155670)

(assert (=> b!5585679 (= lt!2254479 (lemmaExistCutMatchRandMatchRSpecEquivalent!1300 (regOne!31654 r!7292) (regTwo!31654 r!7292) s!2326))))

(assert (=> b!5585679 (= lt!2254475 (Exists!2671 lambda!299672))))

(declare-datatypes ((tuple2!65336 0))(
  ( (tuple2!65337 (_1!35971 List!63012) (_2!35971 List!63012)) )
))
(declare-datatypes ((Option!15580 0))(
  ( (None!15579) (Some!15579 (v!51620 tuple2!65336)) )
))
(declare-fun isDefined!12283 (Option!15580) Bool)

(declare-fun findConcatSeparation!1994 (Regex!15571 Regex!15571 List!63012 List!63012 List!63012) Option!15580)

(assert (=> b!5585679 (= lt!2254475 (isDefined!12283 (findConcatSeparation!1994 (regOne!31654 r!7292) (regTwo!31654 r!7292) Nil!62888 s!2326 s!2326)))))

(declare-fun lt!2254483 () Unit!155670)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1758 (Regex!15571 Regex!15571 List!63012) Unit!155670)

(assert (=> b!5585679 (= lt!2254483 (lemmaFindConcatSeparationEquivalentToExists!1758 (regOne!31654 r!7292) (regTwo!31654 r!7292) s!2326))))

(declare-fun b!5585680 () Bool)

(declare-fun e!3446295 () Bool)

(assert (=> b!5585680 (= e!3446282 e!3446295)))

(declare-fun res!2370185 () Bool)

(assert (=> b!5585680 (=> res!2370185 e!3446295)))

(declare-fun nullable!5603 (Regex!15571) Bool)

(assert (=> b!5585680 (= res!2370185 (not (nullable!5603 (regTwo!31655 (regOne!31654 r!7292)))))))

(declare-fun lt!2254488 () Context!9910)

(declare-fun lambda!299674 () Int)

(declare-fun flatMap!1184 ((InoxSet Context!9910) Int) (InoxSet Context!9910))

(declare-fun derivationStepZipperUp!839 (Context!9910 C!31412) (InoxSet Context!9910))

(assert (=> b!5585680 (= (flatMap!1184 lt!2254480 lambda!299674) (derivationStepZipperUp!839 lt!2254488 (h!69336 s!2326)))))

(declare-fun lt!2254487 () Unit!155670)

(declare-fun lemmaFlatMapOnSingletonSet!716 ((InoxSet Context!9910) Context!9910 Int) Unit!155670)

(assert (=> b!5585680 (= lt!2254487 (lemmaFlatMapOnSingletonSet!716 lt!2254480 lt!2254488 lambda!299674))))

(declare-fun lt!2254472 () (InoxSet Context!9910))

(assert (=> b!5585680 (= lt!2254472 (derivationStepZipperUp!839 lt!2254488 (h!69336 s!2326)))))

(declare-fun derivationStepZipper!1670 ((InoxSet Context!9910) C!31412) (InoxSet Context!9910))

(assert (=> b!5585680 (= lt!2254474 (derivationStepZipper!1670 lt!2254480 (h!69336 s!2326)))))

(declare-fun lt!2254469 () Unit!155670)

(assert (=> b!5585680 (= lt!2254469 e!3446298)))

(declare-fun c!978417 () Bool)

(assert (=> b!5585680 (= c!978417 (nullable!5603 (regOne!31655 (regOne!31654 r!7292))))))

(declare-fun lt!2254486 () (InoxSet Context!9910))

(declare-fun lt!2254482 () Context!9910)

(assert (=> b!5585680 (= (flatMap!1184 lt!2254486 lambda!299674) (derivationStepZipperUp!839 lt!2254482 (h!69336 s!2326)))))

(declare-fun lt!2254489 () Unit!155670)

(assert (=> b!5585680 (= lt!2254489 (lemmaFlatMapOnSingletonSet!716 lt!2254486 lt!2254482 lambda!299674))))

(declare-fun lt!2254465 () (InoxSet Context!9910))

(assert (=> b!5585680 (= lt!2254465 (derivationStepZipperUp!839 lt!2254482 (h!69336 s!2326)))))

(assert (=> b!5585680 (= lt!2254480 (store ((as const (Array Context!9910 Bool)) false) lt!2254488 true))))

(assert (=> b!5585680 (= lt!2254488 (Context!9911 (Cons!62889 (regTwo!31655 (regOne!31654 r!7292)) (t!376288 (exprs!5455 (h!69338 zl!343))))))))

(assert (=> b!5585680 (= lt!2254486 (store ((as const (Array Context!9910 Bool)) false) lt!2254482 true))))

(assert (=> b!5585680 (= lt!2254482 (Context!9911 (Cons!62889 (regOne!31655 (regOne!31654 r!7292)) (t!376288 (exprs!5455 (h!69338 zl!343))))))))

(declare-fun b!5585681 () Bool)

(assert (=> b!5585681 (= e!3446293 (not e!3446292))))

(declare-fun res!2370183 () Bool)

(assert (=> b!5585681 (=> res!2370183 e!3446292)))

(assert (=> b!5585681 (= res!2370183 (not ((_ is Cons!62890) zl!343)))))

(declare-fun matchRSpec!2674 (Regex!15571 List!63012) Bool)

(assert (=> b!5585681 (= lt!2254493 (matchRSpec!2674 r!7292 s!2326))))

(declare-fun matchR!7756 (Regex!15571 List!63012) Bool)

(assert (=> b!5585681 (= lt!2254493 (matchR!7756 r!7292 s!2326))))

(declare-fun lt!2254471 () Unit!155670)

(declare-fun mainMatchTheorem!2674 (Regex!15571 List!63012) Unit!155670)

(assert (=> b!5585681 (= lt!2254471 (mainMatchTheorem!2674 r!7292 s!2326))))

(declare-fun b!5585682 () Bool)

(declare-fun tp!1545245 () Bool)

(declare-fun tp!1545251 () Bool)

(assert (=> b!5585682 (= e!3446286 (and tp!1545245 tp!1545251))))

(declare-fun b!5585683 () Bool)

(declare-fun e!3446300 () Unit!155670)

(declare-fun Unit!155673 () Unit!155670)

(assert (=> b!5585683 (= e!3446300 Unit!155673)))

(declare-fun b!5585684 () Bool)

(declare-fun e!3446289 () Bool)

(assert (=> b!5585684 (= e!3446289 e!3446290)))

(declare-fun res!2370180 () Bool)

(assert (=> b!5585684 (=> res!2370180 e!3446290)))

(assert (=> b!5585684 (= res!2370180 (not (= lt!2254491 lt!2254492)))))

(assert (=> b!5585684 (= lt!2254492 ((_ map or) lt!2254484 lt!2254494))))

(declare-fun lt!2254466 () Context!9910)

(declare-fun derivationStepZipperDown!913 (Regex!15571 Context!9910 C!31412) (InoxSet Context!9910))

(assert (=> b!5585684 (= lt!2254494 (derivationStepZipperDown!913 (regTwo!31655 (regOne!31654 r!7292)) lt!2254466 (h!69336 s!2326)))))

(assert (=> b!5585684 (= lt!2254484 (derivationStepZipperDown!913 (regOne!31655 (regOne!31654 r!7292)) lt!2254466 (h!69336 s!2326)))))

(declare-fun b!5585685 () Bool)

(assert (=> b!5585685 (= e!3446295 e!3446299)))

(declare-fun res!2370165 () Bool)

(assert (=> b!5585685 (=> res!2370165 e!3446299)))

(assert (=> b!5585685 (= res!2370165 (or (not (= lt!2254472 lt!2254467)) (not (= lt!2254474 lt!2254467))))))

(assert (=> b!5585685 (= lt!2254467 ((_ map or) lt!2254494 lt!2254481))))

(declare-fun b!5585686 () Bool)

(declare-fun res!2370172 () Bool)

(assert (=> b!5585686 (=> res!2370172 e!3446292)))

(declare-fun isEmpty!34702 (List!63014) Bool)

(assert (=> b!5585686 (= res!2370172 (not (isEmpty!34702 (t!376289 zl!343))))))

(declare-fun b!5585687 () Bool)

(assert (=> b!5585687 (= e!3446291 (matchZipper!1709 lt!2254494 (t!376287 s!2326)))))

(declare-fun setNonEmpty!37201 () Bool)

(declare-fun setElem!37201 () Context!9910)

(declare-fun e!3446288 () Bool)

(declare-fun tp!1545249 () Bool)

(declare-fun inv!82174 (Context!9910) Bool)

(assert (=> setNonEmpty!37201 (= setRes!37201 (and tp!1545249 (inv!82174 setElem!37201) e!3446288))))

(declare-fun z!1189 () (InoxSet Context!9910))

(declare-fun setRest!37201 () (InoxSet Context!9910))

(assert (=> setNonEmpty!37201 (= z!1189 ((_ map or) (store ((as const (Array Context!9910 Bool)) false) setElem!37201 true) setRest!37201))))

(declare-fun b!5585688 () Bool)

(declare-fun Unit!155674 () Unit!155670)

(assert (=> b!5585688 (= e!3446300 Unit!155674)))

(declare-fun lt!2254470 () Unit!155670)

(assert (=> b!5585688 (= lt!2254470 (lemmaZipperConcatMatchesSameAsBothZippers!596 lt!2254491 lt!2254481 (t!376287 s!2326)))))

(declare-fun res!2370178 () Bool)

(assert (=> b!5585688 (= res!2370178 (matchZipper!1709 lt!2254491 (t!376287 s!2326)))))

(declare-fun e!3446283 () Bool)

(assert (=> b!5585688 (=> res!2370178 e!3446283)))

(assert (=> b!5585688 (= (matchZipper!1709 ((_ map or) lt!2254491 lt!2254481) (t!376287 s!2326)) e!3446283)))

(declare-fun b!5585689 () Bool)

(declare-fun res!2370181 () Bool)

(assert (=> b!5585689 (=> res!2370181 e!3446292)))

(declare-fun generalisedConcat!1186 (List!63013) Regex!15571)

(assert (=> b!5585689 (= res!2370181 (not (= r!7292 (generalisedConcat!1186 (exprs!5455 (h!69338 zl!343))))))))

(declare-fun b!5585690 () Bool)

(declare-fun e!3446301 () Bool)

(assert (=> b!5585690 (= e!3446301 (matchZipper!1709 lt!2254481 (t!376287 s!2326)))))

(declare-fun b!5585691 () Bool)

(declare-fun res!2370171 () Bool)

(assert (=> b!5585691 (=> res!2370171 e!3446292)))

(assert (=> b!5585691 (= res!2370171 (or ((_ is EmptyExpr!15571) r!7292) ((_ is EmptyLang!15571) r!7292) ((_ is ElementMatch!15571) r!7292) ((_ is Union!15571) r!7292) (not ((_ is Concat!24416) r!7292))))))

(declare-fun res!2370186 () Bool)

(assert (=> start!580198 (=> (not res!2370186) (not e!3446293))))

(declare-fun validRegex!7307 (Regex!15571) Bool)

(assert (=> start!580198 (= res!2370186 (validRegex!7307 r!7292))))

(assert (=> start!580198 e!3446293))

(assert (=> start!580198 e!3446286))

(declare-fun condSetEmpty!37201 () Bool)

(assert (=> start!580198 (= condSetEmpty!37201 (= z!1189 ((as const (Array Context!9910 Bool)) false)))))

(assert (=> start!580198 setRes!37201))

(declare-fun e!3446284 () Bool)

(assert (=> start!580198 e!3446284))

(assert (=> start!580198 e!3446297))

(declare-fun b!5585692 () Bool)

(declare-fun tp!1545242 () Bool)

(declare-fun tp!1545244 () Bool)

(assert (=> b!5585692 (= e!3446286 (and tp!1545242 tp!1545244))))

(declare-fun b!5585693 () Bool)

(declare-fun res!2370166 () Bool)

(assert (=> b!5585693 (=> res!2370166 e!3446292)))

(declare-fun generalisedUnion!1434 (List!63013) Regex!15571)

(declare-fun unfocusZipperList!999 (List!63014) List!63013)

(assert (=> b!5585693 (= res!2370166 (not (= r!7292 (generalisedUnion!1434 (unfocusZipperList!999 zl!343)))))))

(declare-fun b!5585694 () Bool)

(declare-fun res!2370175 () Bool)

(assert (=> b!5585694 (=> res!2370175 e!3446281)))

(declare-fun isEmpty!34703 (List!63013) Bool)

(assert (=> b!5585694 (= res!2370175 (isEmpty!34703 (t!376288 (exprs!5455 (h!69338 zl!343)))))))

(declare-fun b!5585695 () Bool)

(declare-fun Unit!155675 () Unit!155670)

(assert (=> b!5585695 (= e!3446298 Unit!155675)))

(declare-fun lt!2254490 () Unit!155670)

(assert (=> b!5585695 (= lt!2254490 (lemmaZipperConcatMatchesSameAsBothZippers!596 lt!2254484 lt!2254481 (t!376287 s!2326)))))

(declare-fun res!2370168 () Bool)

(assert (=> b!5585695 (= res!2370168 lt!2254478)))

(assert (=> b!5585695 (=> res!2370168 e!3446301)))

(assert (=> b!5585695 (= (matchZipper!1709 ((_ map or) lt!2254484 lt!2254481) (t!376287 s!2326)) e!3446301)))

(declare-fun b!5585696 () Bool)

(declare-fun res!2370179 () Bool)

(assert (=> b!5585696 (=> (not res!2370179) (not e!3446293))))

(declare-fun toList!9355 ((InoxSet Context!9910)) List!63014)

(assert (=> b!5585696 (= res!2370179 (= (toList!9355 z!1189) zl!343))))

(assert (=> b!5585697 (= e!3446281 e!3446289)))

(declare-fun res!2370176 () Bool)

(assert (=> b!5585697 (=> res!2370176 e!3446289)))

(assert (=> b!5585697 (= res!2370176 (or (and ((_ is ElementMatch!15571) (regOne!31654 r!7292)) (= (c!978418 (regOne!31654 r!7292)) (h!69336 s!2326))) (not ((_ is Union!15571) (regOne!31654 r!7292)))))))

(declare-fun lt!2254498 () Unit!155670)

(assert (=> b!5585697 (= lt!2254498 e!3446300)))

(declare-fun c!978416 () Bool)

(assert (=> b!5585697 (= c!978416 (nullable!5603 (h!69337 (exprs!5455 (h!69338 zl!343)))))))

(assert (=> b!5585697 (= (flatMap!1184 z!1189 lambda!299674) (derivationStepZipperUp!839 (h!69338 zl!343) (h!69336 s!2326)))))

(declare-fun lt!2254476 () Unit!155670)

(assert (=> b!5585697 (= lt!2254476 (lemmaFlatMapOnSingletonSet!716 z!1189 (h!69338 zl!343) lambda!299674))))

(assert (=> b!5585697 (= lt!2254481 (derivationStepZipperUp!839 lt!2254466 (h!69336 s!2326)))))

(assert (=> b!5585697 (= lt!2254491 (derivationStepZipperDown!913 (h!69337 (exprs!5455 (h!69338 zl!343))) lt!2254466 (h!69336 s!2326)))))

(assert (=> b!5585697 (= lt!2254466 (Context!9911 (t!376288 (exprs!5455 (h!69338 zl!343)))))))

(declare-fun lt!2254468 () (InoxSet Context!9910))

(assert (=> b!5585697 (= lt!2254468 (derivationStepZipperUp!839 (Context!9911 (Cons!62889 (h!69337 (exprs!5455 (h!69338 zl!343))) (t!376288 (exprs!5455 (h!69338 zl!343))))) (h!69336 s!2326)))))

(declare-fun b!5585698 () Bool)

(assert (=> b!5585698 (= e!3446283 (matchZipper!1709 lt!2254481 (t!376287 s!2326)))))

(declare-fun tp!1545243 () Bool)

(declare-fun e!3446285 () Bool)

(declare-fun b!5585699 () Bool)

(assert (=> b!5585699 (= e!3446284 (and (inv!82174 (h!69338 zl!343)) e!3446285 tp!1545243))))

(declare-fun b!5585700 () Bool)

(declare-fun tp!1545247 () Bool)

(assert (=> b!5585700 (= e!3446288 tp!1545247)))

(declare-fun b!5585701 () Bool)

(declare-fun tp!1545250 () Bool)

(assert (=> b!5585701 (= e!3446285 tp!1545250)))

(declare-fun b!5585702 () Bool)

(assert (=> b!5585702 (= e!3446286 tp_is_empty!40395)))

(assert (= (and start!580198 res!2370186) b!5585696))

(assert (= (and b!5585696 res!2370179) b!5585676))

(assert (= (and b!5585676 res!2370170) b!5585681))

(assert (= (and b!5585681 (not res!2370183)) b!5585686))

(assert (= (and b!5585686 (not res!2370172)) b!5585689))

(assert (= (and b!5585689 (not res!2370181)) b!5585678))

(assert (= (and b!5585678 (not res!2370177)) b!5585693))

(assert (= (and b!5585693 (not res!2370166)) b!5585691))

(assert (= (and b!5585691 (not res!2370171)) b!5585679))

(assert (= (and b!5585679 (not res!2370182)) b!5585694))

(assert (= (and b!5585694 (not res!2370175)) b!5585697))

(assert (= (and b!5585697 c!978416) b!5585688))

(assert (= (and b!5585697 (not c!978416)) b!5585683))

(assert (= (and b!5585688 (not res!2370178)) b!5585698))

(assert (= (and b!5585697 (not res!2370176)) b!5585684))

(assert (= (and b!5585684 (not res!2370180)) b!5585671))

(assert (= (and b!5585671 (not res!2370184)) b!5585687))

(assert (= (and b!5585671 res!2370167) b!5585677))

(assert (= (and b!5585671 (not res!2370169)) b!5585680))

(assert (= (and b!5585680 c!978417) b!5585695))

(assert (= (and b!5585680 (not c!978417)) b!5585674))

(assert (= (and b!5585695 (not res!2370168)) b!5585690))

(assert (= (and b!5585680 (not res!2370185)) b!5585685))

(assert (= (and b!5585685 (not res!2370165)) b!5585670))

(assert (= (and b!5585670 (not res!2370174)) b!5585673))

(assert (= (and b!5585673 (not res!2370173)) b!5585675))

(assert (= (and start!580198 ((_ is ElementMatch!15571) r!7292)) b!5585702))

(assert (= (and start!580198 ((_ is Concat!24416) r!7292)) b!5585692))

(assert (= (and start!580198 ((_ is Star!15571) r!7292)) b!5585672))

(assert (= (and start!580198 ((_ is Union!15571) r!7292)) b!5585682))

(assert (= (and start!580198 condSetEmpty!37201) setIsEmpty!37201))

(assert (= (and start!580198 (not condSetEmpty!37201)) setNonEmpty!37201))

(assert (= setNonEmpty!37201 b!5585700))

(assert (= b!5585699 b!5585701))

(assert (= (and start!580198 ((_ is Cons!62890) zl!343)) b!5585699))

(assert (= (and start!580198 ((_ is Cons!62888) s!2326)) b!5585669))

(declare-fun m!6566708 () Bool)

(assert (=> start!580198 m!6566708))

(declare-fun m!6566710 () Bool)

(assert (=> b!5585697 m!6566710))

(declare-fun m!6566712 () Bool)

(assert (=> b!5585697 m!6566712))

(declare-fun m!6566714 () Bool)

(assert (=> b!5585697 m!6566714))

(declare-fun m!6566716 () Bool)

(assert (=> b!5585697 m!6566716))

(declare-fun m!6566718 () Bool)

(assert (=> b!5585697 m!6566718))

(declare-fun m!6566720 () Bool)

(assert (=> b!5585697 m!6566720))

(declare-fun m!6566722 () Bool)

(assert (=> b!5585697 m!6566722))

(declare-fun m!6566724 () Bool)

(assert (=> b!5585677 m!6566724))

(declare-fun m!6566726 () Bool)

(assert (=> b!5585680 m!6566726))

(declare-fun m!6566728 () Bool)

(assert (=> b!5585680 m!6566728))

(declare-fun m!6566730 () Bool)

(assert (=> b!5585680 m!6566730))

(declare-fun m!6566732 () Bool)

(assert (=> b!5585680 m!6566732))

(declare-fun m!6566734 () Bool)

(assert (=> b!5585680 m!6566734))

(declare-fun m!6566736 () Bool)

(assert (=> b!5585680 m!6566736))

(declare-fun m!6566738 () Bool)

(assert (=> b!5585680 m!6566738))

(declare-fun m!6566740 () Bool)

(assert (=> b!5585680 m!6566740))

(declare-fun m!6566742 () Bool)

(assert (=> b!5585680 m!6566742))

(declare-fun m!6566744 () Bool)

(assert (=> b!5585680 m!6566744))

(declare-fun m!6566746 () Bool)

(assert (=> b!5585680 m!6566746))

(declare-fun m!6566748 () Bool)

(assert (=> b!5585679 m!6566748))

(declare-fun m!6566750 () Bool)

(assert (=> b!5585679 m!6566750))

(declare-fun m!6566752 () Bool)

(assert (=> b!5585679 m!6566752))

(declare-fun m!6566754 () Bool)

(assert (=> b!5585679 m!6566754))

(declare-fun m!6566756 () Bool)

(assert (=> b!5585679 m!6566756))

(assert (=> b!5585679 m!6566756))

(assert (=> b!5585679 m!6566748))

(declare-fun m!6566758 () Bool)

(assert (=> b!5585679 m!6566758))

(declare-fun m!6566760 () Bool)

(assert (=> b!5585686 m!6566760))

(declare-fun m!6566762 () Bool)

(assert (=> b!5585688 m!6566762))

(declare-fun m!6566764 () Bool)

(assert (=> b!5585688 m!6566764))

(declare-fun m!6566766 () Bool)

(assert (=> b!5585688 m!6566766))

(declare-fun m!6566768 () Bool)

(assert (=> b!5585675 m!6566768))

(declare-fun m!6566770 () Bool)

(assert (=> setNonEmpty!37201 m!6566770))

(assert (=> b!5585690 m!6566768))

(declare-fun m!6566772 () Bool)

(assert (=> b!5585693 m!6566772))

(assert (=> b!5585693 m!6566772))

(declare-fun m!6566774 () Bool)

(assert (=> b!5585693 m!6566774))

(declare-fun m!6566776 () Bool)

(assert (=> b!5585684 m!6566776))

(declare-fun m!6566778 () Bool)

(assert (=> b!5585684 m!6566778))

(declare-fun m!6566780 () Bool)

(assert (=> b!5585694 m!6566780))

(declare-fun m!6566782 () Bool)

(assert (=> b!5585699 m!6566782))

(declare-fun m!6566784 () Bool)

(assert (=> b!5585689 m!6566784))

(declare-fun m!6566786 () Bool)

(assert (=> b!5585673 m!6566786))

(assert (=> b!5585673 m!6566724))

(declare-fun m!6566788 () Bool)

(assert (=> b!5585673 m!6566788))

(declare-fun m!6566790 () Bool)

(assert (=> b!5585676 m!6566790))

(declare-fun m!6566792 () Bool)

(assert (=> b!5585681 m!6566792))

(declare-fun m!6566794 () Bool)

(assert (=> b!5585681 m!6566794))

(declare-fun m!6566796 () Bool)

(assert (=> b!5585681 m!6566796))

(declare-fun m!6566798 () Bool)

(assert (=> b!5585695 m!6566798))

(declare-fun m!6566800 () Bool)

(assert (=> b!5585695 m!6566800))

(assert (=> b!5585698 m!6566768))

(assert (=> b!5585687 m!6566724))

(declare-fun m!6566802 () Bool)

(assert (=> b!5585696 m!6566802))

(declare-fun m!6566804 () Bool)

(assert (=> b!5585670 m!6566804))

(declare-fun m!6566806 () Bool)

(assert (=> b!5585670 m!6566806))

(assert (=> b!5585671 m!6566764))

(declare-fun m!6566808 () Bool)

(assert (=> b!5585671 m!6566808))

(declare-fun m!6566810 () Bool)

(assert (=> b!5585671 m!6566810))

(declare-fun m!6566812 () Bool)

(assert (=> b!5585671 m!6566812))

(check-sat (not b!5585695) (not b!5585699) (not b!5585694) tp_is_empty!40395 (not b!5585680) (not b!5585675) (not b!5585686) (not b!5585681) (not b!5585687) (not b!5585696) (not b!5585679) (not b!5585692) (not b!5585698) (not b!5585684) (not b!5585669) (not b!5585672) (not setNonEmpty!37201) (not b!5585676) (not b!5585673) (not b!5585682) (not b!5585689) (not b!5585697) (not b!5585700) (not b!5585671) (not b!5585688) (not start!580198) (not b!5585690) (not b!5585701) (not b!5585677) (not b!5585670) (not b!5585693))
(check-sat)
