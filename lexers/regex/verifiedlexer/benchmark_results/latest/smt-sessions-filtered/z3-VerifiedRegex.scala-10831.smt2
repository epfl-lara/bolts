; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!557778 () Bool)

(assert start!557778)

(declare-fun b!5283086 () Bool)

(assert (=> b!5283086 true))

(assert (=> b!5283086 true))

(declare-fun lambda!266993 () Int)

(declare-fun lambda!266992 () Int)

(assert (=> b!5283086 (not (= lambda!266993 lambda!266992))))

(assert (=> b!5283086 true))

(assert (=> b!5283086 true))

(declare-fun b!5283087 () Bool)

(assert (=> b!5283087 true))

(declare-fun b!5283082 () Bool)

(declare-fun res!2240664 () Bool)

(declare-fun e!3284861 () Bool)

(assert (=> b!5283082 (=> res!2240664 e!3284861)))

(declare-datatypes ((C!30088 0))(
  ( (C!30089 (val!24746 Int)) )
))
(declare-datatypes ((Regex!14909 0))(
  ( (ElementMatch!14909 (c!915917 C!30088)) (Concat!23754 (regOne!30330 Regex!14909) (regTwo!30330 Regex!14909)) (EmptyExpr!14909) (Star!14909 (reg!15238 Regex!14909)) (EmptyLang!14909) (Union!14909 (regOne!30331 Regex!14909) (regTwo!30331 Regex!14909)) )
))
(declare-datatypes ((List!61026 0))(
  ( (Nil!60902) (Cons!60902 (h!67350 Regex!14909) (t!374229 List!61026)) )
))
(declare-datatypes ((Context!8586 0))(
  ( (Context!8587 (exprs!4793 List!61026)) )
))
(declare-fun lt!2159375 () Context!8586)

(declare-datatypes ((List!61027 0))(
  ( (Nil!60903) (Cons!60903 (h!67351 Context!8586) (t!374230 List!61027)) )
))
(declare-fun zl!343 () List!61027)

(declare-fun contextDepthTotal!50 (Context!8586) Int)

(assert (=> b!5283082 (= res!2240664 (>= (contextDepthTotal!50 lt!2159375) (contextDepthTotal!50 (h!67351 zl!343))))))

(declare-fun b!5283083 () Bool)

(declare-fun e!3284854 () Bool)

(assert (=> b!5283083 (= e!3284861 e!3284854)))

(declare-fun res!2240665 () Bool)

(assert (=> b!5283083 (=> res!2240665 e!3284854)))

(declare-fun lt!2159377 () List!61027)

(declare-fun zipperDepthTotal!70 (List!61027) Int)

(assert (=> b!5283083 (= res!2240665 (>= (zipperDepthTotal!70 lt!2159377) (zipperDepthTotal!70 zl!343)))))

(assert (=> b!5283083 (= lt!2159377 (Cons!60903 lt!2159375 Nil!60903))))

(declare-fun res!2240648 () Bool)

(declare-fun e!3284850 () Bool)

(assert (=> start!557778 (=> (not res!2240648) (not e!3284850))))

(declare-fun r!7292 () Regex!14909)

(declare-fun validRegex!6645 (Regex!14909) Bool)

(assert (=> start!557778 (= res!2240648 (validRegex!6645 r!7292))))

(assert (=> start!557778 e!3284850))

(declare-fun e!3284864 () Bool)

(assert (=> start!557778 e!3284864))

(declare-fun condSetEmpty!33875 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8586))

(assert (=> start!557778 (= condSetEmpty!33875 (= z!1189 ((as const (Array Context!8586 Bool)) false)))))

(declare-fun setRes!33875 () Bool)

(assert (=> start!557778 setRes!33875))

(declare-fun e!3284857 () Bool)

(assert (=> start!557778 e!3284857))

(declare-fun e!3284849 () Bool)

(assert (=> start!557778 e!3284849))

(declare-fun tp!1475707 () Bool)

(declare-fun setElem!33875 () Context!8586)

(declare-fun e!3284848 () Bool)

(declare-fun setNonEmpty!33875 () Bool)

(declare-fun inv!80519 (Context!8586) Bool)

(assert (=> setNonEmpty!33875 (= setRes!33875 (and tp!1475707 (inv!80519 setElem!33875) e!3284848))))

(declare-fun setRest!33875 () (InoxSet Context!8586))

(assert (=> setNonEmpty!33875 (= z!1189 ((_ map or) (store ((as const (Array Context!8586 Bool)) false) setElem!33875 true) setRest!33875))))

(declare-fun b!5283084 () Bool)

(declare-fun e!3284847 () Bool)

(declare-fun lt!2159395 () (InoxSet Context!8586))

(declare-datatypes ((List!61028 0))(
  ( (Nil!60904) (Cons!60904 (h!67352 C!30088) (t!374231 List!61028)) )
))
(declare-fun s!2326 () List!61028)

(declare-fun matchZipper!1153 ((InoxSet Context!8586) List!61028) Bool)

(assert (=> b!5283084 (= e!3284847 (matchZipper!1153 lt!2159395 (t!374231 s!2326)))))

(declare-fun b!5283085 () Bool)

(declare-datatypes ((Unit!153154 0))(
  ( (Unit!153155) )
))
(declare-fun e!3284858 () Unit!153154)

(declare-fun Unit!153156 () Unit!153154)

(assert (=> b!5283085 (= e!3284858 Unit!153156)))

(declare-fun lt!2159367 () (InoxSet Context!8586))

(declare-fun lt!2159396 () Unit!153154)

(declare-fun lt!2159392 () (InoxSet Context!8586))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!146 ((InoxSet Context!8586) (InoxSet Context!8586) List!61028) Unit!153154)

(assert (=> b!5283085 (= lt!2159396 (lemmaZipperConcatMatchesSameAsBothZippers!146 lt!2159367 lt!2159392 (t!374231 s!2326)))))

(declare-fun res!2240653 () Bool)

(assert (=> b!5283085 (= res!2240653 (matchZipper!1153 lt!2159367 (t!374231 s!2326)))))

(declare-fun e!3284865 () Bool)

(assert (=> b!5283085 (=> res!2240653 e!3284865)))

(assert (=> b!5283085 (= (matchZipper!1153 ((_ map or) lt!2159367 lt!2159392) (t!374231 s!2326)) e!3284865)))

(declare-fun e!3284863 () Bool)

(declare-fun e!3284859 () Bool)

(assert (=> b!5283086 (= e!3284863 e!3284859)))

(declare-fun res!2240668 () Bool)

(assert (=> b!5283086 (=> res!2240668 e!3284859)))

(declare-fun lt!2159366 () Bool)

(declare-fun lt!2159361 () Bool)

(get-info :version)

(assert (=> b!5283086 (= res!2240668 (or (not (= lt!2159366 lt!2159361)) ((_ is Nil!60904) s!2326)))))

(declare-fun Exists!2090 (Int) Bool)

(assert (=> b!5283086 (= (Exists!2090 lambda!266992) (Exists!2090 lambda!266993))))

(declare-fun lt!2159385 () Unit!153154)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!744 (Regex!14909 Regex!14909 List!61028) Unit!153154)

(assert (=> b!5283086 (= lt!2159385 (lemmaExistCutMatchRandMatchRSpecEquivalent!744 (regOne!30330 r!7292) (regTwo!30330 r!7292) s!2326))))

(assert (=> b!5283086 (= lt!2159361 (Exists!2090 lambda!266992))))

(declare-datatypes ((tuple2!64216 0))(
  ( (tuple2!64217 (_1!35411 List!61028) (_2!35411 List!61028)) )
))
(declare-datatypes ((Option!15020 0))(
  ( (None!15019) (Some!15019 (v!51048 tuple2!64216)) )
))
(declare-fun isDefined!11723 (Option!15020) Bool)

(declare-fun findConcatSeparation!1434 (Regex!14909 Regex!14909 List!61028 List!61028 List!61028) Option!15020)

(assert (=> b!5283086 (= lt!2159361 (isDefined!11723 (findConcatSeparation!1434 (regOne!30330 r!7292) (regTwo!30330 r!7292) Nil!60904 s!2326 s!2326)))))

(declare-fun lt!2159388 () Unit!153154)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1198 (Regex!14909 Regex!14909 List!61028) Unit!153154)

(assert (=> b!5283086 (= lt!2159388 (lemmaFindConcatSeparationEquivalentToExists!1198 (regOne!30330 r!7292) (regTwo!30330 r!7292) s!2326))))

(declare-fun e!3284866 () Bool)

(assert (=> b!5283087 (= e!3284859 e!3284866)))

(declare-fun res!2240651 () Bool)

(assert (=> b!5283087 (=> res!2240651 e!3284866)))

(assert (=> b!5283087 (= res!2240651 (or (and ((_ is ElementMatch!14909) (regOne!30330 r!7292)) (= (c!915917 (regOne!30330 r!7292)) (h!67352 s!2326))) ((_ is Union!14909) (regOne!30330 r!7292)) (not ((_ is Concat!23754) (regOne!30330 r!7292)))))))

(declare-fun lt!2159363 () Unit!153154)

(assert (=> b!5283087 (= lt!2159363 e!3284858)))

(declare-fun c!915916 () Bool)

(declare-fun nullable!5078 (Regex!14909) Bool)

(assert (=> b!5283087 (= c!915916 (nullable!5078 (h!67350 (exprs!4793 (h!67351 zl!343)))))))

(declare-fun lambda!266994 () Int)

(declare-fun flatMap!636 ((InoxSet Context!8586) Int) (InoxSet Context!8586))

(declare-fun derivationStepZipperUp!281 (Context!8586 C!30088) (InoxSet Context!8586))

(assert (=> b!5283087 (= (flatMap!636 z!1189 lambda!266994) (derivationStepZipperUp!281 (h!67351 zl!343) (h!67352 s!2326)))))

(declare-fun lt!2159379 () Unit!153154)

(declare-fun lemmaFlatMapOnSingletonSet!168 ((InoxSet Context!8586) Context!8586 Int) Unit!153154)

(assert (=> b!5283087 (= lt!2159379 (lemmaFlatMapOnSingletonSet!168 z!1189 (h!67351 zl!343) lambda!266994))))

(declare-fun lt!2159370 () Context!8586)

(assert (=> b!5283087 (= lt!2159392 (derivationStepZipperUp!281 lt!2159370 (h!67352 s!2326)))))

(declare-fun derivationStepZipperDown!357 (Regex!14909 Context!8586 C!30088) (InoxSet Context!8586))

(assert (=> b!5283087 (= lt!2159367 (derivationStepZipperDown!357 (h!67350 (exprs!4793 (h!67351 zl!343))) lt!2159370 (h!67352 s!2326)))))

(assert (=> b!5283087 (= lt!2159370 (Context!8587 (t!374229 (exprs!4793 (h!67351 zl!343)))))))

(declare-fun lt!2159398 () (InoxSet Context!8586))

(assert (=> b!5283087 (= lt!2159398 (derivationStepZipperUp!281 (Context!8587 (Cons!60902 (h!67350 (exprs!4793 (h!67351 zl!343))) (t!374229 (exprs!4793 (h!67351 zl!343))))) (h!67352 s!2326)))))

(declare-fun b!5283088 () Bool)

(declare-fun res!2240659 () Bool)

(assert (=> b!5283088 (=> res!2240659 e!3284863)))

(declare-fun generalisedUnion!838 (List!61026) Regex!14909)

(declare-fun unfocusZipperList!351 (List!61027) List!61026)

(assert (=> b!5283088 (= res!2240659 (not (= r!7292 (generalisedUnion!838 (unfocusZipperList!351 zl!343)))))))

(declare-fun b!5283089 () Bool)

(declare-fun res!2240649 () Bool)

(assert (=> b!5283089 (=> res!2240649 e!3284861)))

(assert (=> b!5283089 (= res!2240649 (not (= (exprs!4793 (h!67351 zl!343)) (Cons!60902 (Concat!23754 (regOne!30330 (regOne!30330 r!7292)) (regTwo!30330 (regOne!30330 r!7292))) (t!374229 (exprs!4793 (h!67351 zl!343)))))))))

(declare-fun b!5283090 () Bool)

(declare-fun res!2240670 () Bool)

(assert (=> b!5283090 (=> res!2240670 e!3284863)))

(assert (=> b!5283090 (= res!2240670 (or ((_ is EmptyExpr!14909) r!7292) ((_ is EmptyLang!14909) r!7292) ((_ is ElementMatch!14909) r!7292) ((_ is Union!14909) r!7292) (not ((_ is Concat!23754) r!7292))))))

(declare-fun b!5283091 () Bool)

(declare-fun res!2240669 () Bool)

(assert (=> b!5283091 (=> res!2240669 e!3284863)))

(declare-fun isEmpty!32855 (List!61027) Bool)

(assert (=> b!5283091 (= res!2240669 (not (isEmpty!32855 (t!374230 zl!343))))))

(declare-fun b!5283092 () Bool)

(declare-fun e!3284853 () Bool)

(declare-fun e!3284851 () Bool)

(assert (=> b!5283092 (= e!3284853 e!3284851)))

(declare-fun res!2240654 () Bool)

(assert (=> b!5283092 (=> res!2240654 e!3284851)))

(declare-fun lt!2159383 () (InoxSet Context!8586))

(declare-fun lt!2159393 () (InoxSet Context!8586))

(assert (=> b!5283092 (= res!2240654 (not (= lt!2159383 lt!2159393)))))

(declare-fun lt!2159365 () (InoxSet Context!8586))

(declare-fun lt!2159378 () (InoxSet Context!8586))

(assert (=> b!5283092 (= lt!2159393 ((_ map or) lt!2159365 lt!2159378))))

(declare-fun lt!2159371 () Context!8586)

(assert (=> b!5283092 (= lt!2159378 (derivationStepZipperUp!281 lt!2159371 (h!67352 s!2326)))))

(declare-fun lt!2159381 () (InoxSet Context!8586))

(assert (=> b!5283092 (= (flatMap!636 lt!2159381 lambda!266994) (derivationStepZipperUp!281 lt!2159375 (h!67352 s!2326)))))

(declare-fun lt!2159372 () Unit!153154)

(assert (=> b!5283092 (= lt!2159372 (lemmaFlatMapOnSingletonSet!168 lt!2159381 lt!2159375 lambda!266994))))

(declare-fun lt!2159373 () (InoxSet Context!8586))

(assert (=> b!5283092 (= lt!2159373 (derivationStepZipperUp!281 lt!2159375 (h!67352 s!2326)))))

(declare-fun derivationStepZipper!1152 ((InoxSet Context!8586) C!30088) (InoxSet Context!8586))

(assert (=> b!5283092 (= lt!2159383 (derivationStepZipper!1152 lt!2159381 (h!67352 s!2326)))))

(declare-fun lt!2159389 () (InoxSet Context!8586))

(assert (=> b!5283092 (= lt!2159389 (store ((as const (Array Context!8586 Bool)) false) lt!2159371 true))))

(assert (=> b!5283092 (= lt!2159381 (store ((as const (Array Context!8586 Bool)) false) lt!2159375 true))))

(declare-fun lt!2159391 () List!61026)

(assert (=> b!5283092 (= lt!2159375 (Context!8587 lt!2159391))))

(declare-fun lt!2159397 () List!61026)

(assert (=> b!5283092 (= lt!2159391 (Cons!60902 (regOne!30330 (regOne!30330 r!7292)) lt!2159397))))

(declare-fun b!5283093 () Bool)

(declare-fun res!2240662 () Bool)

(assert (=> b!5283093 (=> (not res!2240662) (not e!3284850))))

(declare-fun unfocusZipper!651 (List!61027) Regex!14909)

(assert (=> b!5283093 (= res!2240662 (= r!7292 (unfocusZipper!651 zl!343)))))

(declare-fun b!5283094 () Bool)

(declare-fun e!3284855 () Bool)

(assert (=> b!5283094 (= e!3284855 e!3284853)))

(declare-fun res!2240672 () Bool)

(assert (=> b!5283094 (=> res!2240672 e!3284853)))

(declare-fun e!3284856 () Bool)

(assert (=> b!5283094 (= res!2240672 e!3284856)))

(declare-fun res!2240658 () Bool)

(assert (=> b!5283094 (=> (not res!2240658) (not e!3284856))))

(declare-fun lt!2159368 () Bool)

(declare-fun lt!2159362 () Bool)

(assert (=> b!5283094 (= res!2240658 (not (= lt!2159368 lt!2159362)))))

(assert (=> b!5283094 (= lt!2159368 (matchZipper!1153 lt!2159367 (t!374231 s!2326)))))

(declare-fun lt!2159364 () (InoxSet Context!8586))

(assert (=> b!5283094 (= (matchZipper!1153 lt!2159364 (t!374231 s!2326)) e!3284847)))

(declare-fun res!2240663 () Bool)

(assert (=> b!5283094 (=> res!2240663 e!3284847)))

(assert (=> b!5283094 (= res!2240663 lt!2159362)))

(assert (=> b!5283094 (= lt!2159362 (matchZipper!1153 lt!2159365 (t!374231 s!2326)))))

(declare-fun lt!2159390 () Unit!153154)

(assert (=> b!5283094 (= lt!2159390 (lemmaZipperConcatMatchesSameAsBothZippers!146 lt!2159365 lt!2159395 (t!374231 s!2326)))))

(declare-fun b!5283095 () Bool)

(declare-fun res!2240661 () Bool)

(assert (=> b!5283095 (=> (not res!2240661) (not e!3284850))))

(declare-fun toList!8693 ((InoxSet Context!8586)) List!61027)

(assert (=> b!5283095 (= res!2240661 (= (toList!8693 z!1189) zl!343))))

(declare-fun b!5283096 () Bool)

(declare-fun res!2240673 () Bool)

(assert (=> b!5283096 (=> res!2240673 e!3284866)))

(assert (=> b!5283096 (= res!2240673 (not (nullable!5078 (regOne!30330 (regOne!30330 r!7292)))))))

(declare-fun b!5283097 () Bool)

(declare-fun res!2240671 () Bool)

(assert (=> b!5283097 (=> res!2240671 e!3284859)))

(declare-fun isEmpty!32856 (List!61026) Bool)

(assert (=> b!5283097 (= res!2240671 (isEmpty!32856 (t!374229 (exprs!4793 (h!67351 zl!343)))))))

(declare-fun b!5283098 () Bool)

(declare-fun tp_is_empty!39071 () Bool)

(assert (=> b!5283098 (= e!3284864 tp_is_empty!39071)))

(declare-fun b!5283099 () Bool)

(declare-fun tp!1475713 () Bool)

(assert (=> b!5283099 (= e!3284864 tp!1475713)))

(declare-fun b!5283100 () Bool)

(assert (=> b!5283100 (= e!3284850 (not e!3284863))))

(declare-fun res!2240656 () Bool)

(assert (=> b!5283100 (=> res!2240656 e!3284863)))

(assert (=> b!5283100 (= res!2240656 (not ((_ is Cons!60903) zl!343)))))

(declare-fun matchRSpec!2012 (Regex!14909 List!61028) Bool)

(assert (=> b!5283100 (= lt!2159366 (matchRSpec!2012 r!7292 s!2326))))

(declare-fun matchR!7094 (Regex!14909 List!61028) Bool)

(assert (=> b!5283100 (= lt!2159366 (matchR!7094 r!7292 s!2326))))

(declare-fun lt!2159387 () Unit!153154)

(declare-fun mainMatchTheorem!2012 (Regex!14909 List!61028) Unit!153154)

(assert (=> b!5283100 (= lt!2159387 (mainMatchTheorem!2012 r!7292 s!2326))))

(declare-fun b!5283101 () Bool)

(declare-fun tp!1475706 () Bool)

(declare-fun tp!1475708 () Bool)

(assert (=> b!5283101 (= e!3284864 (and tp!1475706 tp!1475708))))

(declare-fun b!5283102 () Bool)

(assert (=> b!5283102 (= e!3284851 e!3284861)))

(declare-fun res!2240660 () Bool)

(assert (=> b!5283102 (=> res!2240660 e!3284861)))

(declare-fun e!3284852 () Bool)

(assert (=> b!5283102 (= res!2240660 e!3284852)))

(declare-fun res!2240652 () Bool)

(assert (=> b!5283102 (=> (not res!2240652) (not e!3284852))))

(assert (=> b!5283102 (= res!2240652 (not (= lt!2159368 (matchZipper!1153 lt!2159383 (t!374231 s!2326)))))))

(declare-fun e!3284860 () Bool)

(assert (=> b!5283102 (= (matchZipper!1153 lt!2159393 (t!374231 s!2326)) e!3284860)))

(declare-fun res!2240657 () Bool)

(assert (=> b!5283102 (=> res!2240657 e!3284860)))

(assert (=> b!5283102 (= res!2240657 lt!2159362)))

(declare-fun lt!2159374 () Unit!153154)

(assert (=> b!5283102 (= lt!2159374 (lemmaZipperConcatMatchesSameAsBothZippers!146 lt!2159365 lt!2159378 (t!374231 s!2326)))))

(assert (=> b!5283102 (= (flatMap!636 lt!2159389 lambda!266994) (derivationStepZipperUp!281 lt!2159371 (h!67352 s!2326)))))

(declare-fun lt!2159376 () Unit!153154)

(assert (=> b!5283102 (= lt!2159376 (lemmaFlatMapOnSingletonSet!168 lt!2159389 lt!2159371 lambda!266994))))

(declare-fun b!5283103 () Bool)

(declare-fun res!2240655 () Bool)

(assert (=> b!5283103 (=> res!2240655 e!3284854)))

(declare-fun zipperDepth!26 (List!61027) Int)

(assert (=> b!5283103 (= res!2240655 (> (zipperDepth!26 lt!2159377) (zipperDepth!26 zl!343)))))

(declare-fun b!5283104 () Bool)

(declare-fun lambda!266995 () Int)

(declare-fun forall!14317 (List!61026 Int) Bool)

(assert (=> b!5283104 (= e!3284854 (forall!14317 lt!2159397 lambda!266995))))

(declare-fun lt!2159386 () Bool)

(declare-fun lt!2159369 () Regex!14909)

(assert (=> b!5283104 (= lt!2159386 (matchRSpec!2012 lt!2159369 s!2326))))

(declare-fun lt!2159384 () Unit!153154)

(assert (=> b!5283104 (= lt!2159384 (mainMatchTheorem!2012 lt!2159369 s!2326))))

(declare-fun lt!2159380 () Regex!14909)

(assert (=> b!5283104 (= (matchR!7094 lt!2159380 s!2326) (matchZipper!1153 lt!2159389 s!2326))))

(declare-fun lt!2159394 () Unit!153154)

(declare-fun theoremZipperRegexEquiv!319 ((InoxSet Context!8586) List!61027 Regex!14909 List!61028) Unit!153154)

(assert (=> b!5283104 (= lt!2159394 (theoremZipperRegexEquiv!319 lt!2159389 (Cons!60903 lt!2159371 Nil!60903) lt!2159380 s!2326))))

(declare-fun generalisedConcat!578 (List!61026) Regex!14909)

(assert (=> b!5283104 (= lt!2159380 (generalisedConcat!578 lt!2159397))))

(assert (=> b!5283104 (= lt!2159386 (matchZipper!1153 lt!2159381 s!2326))))

(assert (=> b!5283104 (= lt!2159386 (matchR!7094 lt!2159369 s!2326))))

(declare-fun lt!2159382 () Unit!153154)

(assert (=> b!5283104 (= lt!2159382 (theoremZipperRegexEquiv!319 lt!2159381 lt!2159377 lt!2159369 s!2326))))

(assert (=> b!5283104 (= lt!2159369 (generalisedConcat!578 lt!2159391))))

(declare-fun b!5283105 () Bool)

(declare-fun res!2240650 () Bool)

(assert (=> b!5283105 (=> res!2240650 e!3284863)))

(assert (=> b!5283105 (= res!2240650 (not (= r!7292 (generalisedConcat!578 (exprs!4793 (h!67351 zl!343))))))))

(declare-fun b!5283106 () Bool)

(declare-fun res!2240667 () Bool)

(assert (=> b!5283106 (=> res!2240667 e!3284863)))

(assert (=> b!5283106 (= res!2240667 (not ((_ is Cons!60902) (exprs!4793 (h!67351 zl!343)))))))

(declare-fun tp!1475712 () Bool)

(declare-fun b!5283107 () Bool)

(declare-fun e!3284862 () Bool)

(assert (=> b!5283107 (= e!3284857 (and (inv!80519 (h!67351 zl!343)) e!3284862 tp!1475712))))

(declare-fun b!5283108 () Bool)

(declare-fun tp!1475704 () Bool)

(assert (=> b!5283108 (= e!3284849 (and tp_is_empty!39071 tp!1475704))))

(declare-fun setIsEmpty!33875 () Bool)

(assert (=> setIsEmpty!33875 setRes!33875))

(declare-fun b!5283109 () Bool)

(assert (=> b!5283109 (= e!3284856 (not (matchZipper!1153 lt!2159395 (t!374231 s!2326))))))

(declare-fun b!5283110 () Bool)

(assert (=> b!5283110 (= e!3284860 (matchZipper!1153 lt!2159378 (t!374231 s!2326)))))

(declare-fun b!5283111 () Bool)

(declare-fun Unit!153157 () Unit!153154)

(assert (=> b!5283111 (= e!3284858 Unit!153157)))

(declare-fun b!5283112 () Bool)

(declare-fun tp!1475705 () Bool)

(assert (=> b!5283112 (= e!3284848 tp!1475705)))

(declare-fun b!5283113 () Bool)

(declare-fun tp!1475709 () Bool)

(assert (=> b!5283113 (= e!3284862 tp!1475709)))

(declare-fun b!5283114 () Bool)

(assert (=> b!5283114 (= e!3284866 e!3284855)))

(declare-fun res!2240666 () Bool)

(assert (=> b!5283114 (=> res!2240666 e!3284855)))

(assert (=> b!5283114 (= res!2240666 (not (= lt!2159367 lt!2159364)))))

(assert (=> b!5283114 (= lt!2159364 ((_ map or) lt!2159365 lt!2159395))))

(assert (=> b!5283114 (= lt!2159395 (derivationStepZipperDown!357 (regTwo!30330 (regOne!30330 r!7292)) lt!2159370 (h!67352 s!2326)))))

(assert (=> b!5283114 (= lt!2159365 (derivationStepZipperDown!357 (regOne!30330 (regOne!30330 r!7292)) lt!2159371 (h!67352 s!2326)))))

(assert (=> b!5283114 (= lt!2159371 (Context!8587 lt!2159397))))

(assert (=> b!5283114 (= lt!2159397 (Cons!60902 (regTwo!30330 (regOne!30330 r!7292)) (t!374229 (exprs!4793 (h!67351 zl!343)))))))

(declare-fun b!5283115 () Bool)

(assert (=> b!5283115 (= e!3284852 (not (matchZipper!1153 (derivationStepZipper!1152 lt!2159389 (h!67352 s!2326)) (t!374231 s!2326))))))

(declare-fun b!5283116 () Bool)

(assert (=> b!5283116 (= e!3284865 (matchZipper!1153 lt!2159392 (t!374231 s!2326)))))

(declare-fun b!5283117 () Bool)

(declare-fun tp!1475710 () Bool)

(declare-fun tp!1475711 () Bool)

(assert (=> b!5283117 (= e!3284864 (and tp!1475710 tp!1475711))))

(assert (= (and start!557778 res!2240648) b!5283095))

(assert (= (and b!5283095 res!2240661) b!5283093))

(assert (= (and b!5283093 res!2240662) b!5283100))

(assert (= (and b!5283100 (not res!2240656)) b!5283091))

(assert (= (and b!5283091 (not res!2240669)) b!5283105))

(assert (= (and b!5283105 (not res!2240650)) b!5283106))

(assert (= (and b!5283106 (not res!2240667)) b!5283088))

(assert (= (and b!5283088 (not res!2240659)) b!5283090))

(assert (= (and b!5283090 (not res!2240670)) b!5283086))

(assert (= (and b!5283086 (not res!2240668)) b!5283097))

(assert (= (and b!5283097 (not res!2240671)) b!5283087))

(assert (= (and b!5283087 c!915916) b!5283085))

(assert (= (and b!5283087 (not c!915916)) b!5283111))

(assert (= (and b!5283085 (not res!2240653)) b!5283116))

(assert (= (and b!5283087 (not res!2240651)) b!5283096))

(assert (= (and b!5283096 (not res!2240673)) b!5283114))

(assert (= (and b!5283114 (not res!2240666)) b!5283094))

(assert (= (and b!5283094 (not res!2240663)) b!5283084))

(assert (= (and b!5283094 res!2240658) b!5283109))

(assert (= (and b!5283094 (not res!2240672)) b!5283092))

(assert (= (and b!5283092 (not res!2240654)) b!5283102))

(assert (= (and b!5283102 (not res!2240657)) b!5283110))

(assert (= (and b!5283102 res!2240652) b!5283115))

(assert (= (and b!5283102 (not res!2240660)) b!5283089))

(assert (= (and b!5283089 (not res!2240649)) b!5283082))

(assert (= (and b!5283082 (not res!2240664)) b!5283083))

(assert (= (and b!5283083 (not res!2240665)) b!5283103))

(assert (= (and b!5283103 (not res!2240655)) b!5283104))

(assert (= (and start!557778 ((_ is ElementMatch!14909) r!7292)) b!5283098))

(assert (= (and start!557778 ((_ is Concat!23754) r!7292)) b!5283101))

(assert (= (and start!557778 ((_ is Star!14909) r!7292)) b!5283099))

(assert (= (and start!557778 ((_ is Union!14909) r!7292)) b!5283117))

(assert (= (and start!557778 condSetEmpty!33875) setIsEmpty!33875))

(assert (= (and start!557778 (not condSetEmpty!33875)) setNonEmpty!33875))

(assert (= setNonEmpty!33875 b!5283112))

(assert (= b!5283107 b!5283113))

(assert (= (and start!557778 ((_ is Cons!60903) zl!343)) b!5283107))

(assert (= (and start!557778 ((_ is Cons!60904) s!2326)) b!5283108))

(declare-fun m!6320846 () Bool)

(assert (=> b!5283103 m!6320846))

(declare-fun m!6320848 () Bool)

(assert (=> b!5283103 m!6320848))

(declare-fun m!6320850 () Bool)

(assert (=> b!5283093 m!6320850))

(declare-fun m!6320852 () Bool)

(assert (=> b!5283116 m!6320852))

(declare-fun m!6320854 () Bool)

(assert (=> b!5283085 m!6320854))

(declare-fun m!6320856 () Bool)

(assert (=> b!5283085 m!6320856))

(declare-fun m!6320858 () Bool)

(assert (=> b!5283085 m!6320858))

(declare-fun m!6320860 () Bool)

(assert (=> b!5283084 m!6320860))

(assert (=> b!5283109 m!6320860))

(declare-fun m!6320862 () Bool)

(assert (=> b!5283100 m!6320862))

(declare-fun m!6320864 () Bool)

(assert (=> b!5283100 m!6320864))

(declare-fun m!6320866 () Bool)

(assert (=> b!5283100 m!6320866))

(declare-fun m!6320868 () Bool)

(assert (=> b!5283095 m!6320868))

(declare-fun m!6320870 () Bool)

(assert (=> b!5283105 m!6320870))

(declare-fun m!6320872 () Bool)

(assert (=> b!5283115 m!6320872))

(assert (=> b!5283115 m!6320872))

(declare-fun m!6320874 () Bool)

(assert (=> b!5283115 m!6320874))

(declare-fun m!6320876 () Bool)

(assert (=> b!5283104 m!6320876))

(declare-fun m!6320878 () Bool)

(assert (=> b!5283104 m!6320878))

(declare-fun m!6320880 () Bool)

(assert (=> b!5283104 m!6320880))

(declare-fun m!6320882 () Bool)

(assert (=> b!5283104 m!6320882))

(declare-fun m!6320884 () Bool)

(assert (=> b!5283104 m!6320884))

(declare-fun m!6320886 () Bool)

(assert (=> b!5283104 m!6320886))

(declare-fun m!6320888 () Bool)

(assert (=> b!5283104 m!6320888))

(declare-fun m!6320890 () Bool)

(assert (=> b!5283104 m!6320890))

(declare-fun m!6320892 () Bool)

(assert (=> b!5283104 m!6320892))

(declare-fun m!6320894 () Bool)

(assert (=> b!5283104 m!6320894))

(declare-fun m!6320896 () Bool)

(assert (=> b!5283104 m!6320896))

(declare-fun m!6320898 () Bool)

(assert (=> b!5283097 m!6320898))

(declare-fun m!6320900 () Bool)

(assert (=> b!5283102 m!6320900))

(declare-fun m!6320902 () Bool)

(assert (=> b!5283102 m!6320902))

(declare-fun m!6320904 () Bool)

(assert (=> b!5283102 m!6320904))

(declare-fun m!6320906 () Bool)

(assert (=> b!5283102 m!6320906))

(declare-fun m!6320908 () Bool)

(assert (=> b!5283102 m!6320908))

(declare-fun m!6320910 () Bool)

(assert (=> b!5283102 m!6320910))

(declare-fun m!6320912 () Bool)

(assert (=> b!5283114 m!6320912))

(declare-fun m!6320914 () Bool)

(assert (=> b!5283114 m!6320914))

(declare-fun m!6320916 () Bool)

(assert (=> b!5283082 m!6320916))

(declare-fun m!6320918 () Bool)

(assert (=> b!5283082 m!6320918))

(assert (=> b!5283094 m!6320856))

(declare-fun m!6320920 () Bool)

(assert (=> b!5283094 m!6320920))

(declare-fun m!6320922 () Bool)

(assert (=> b!5283094 m!6320922))

(declare-fun m!6320924 () Bool)

(assert (=> b!5283094 m!6320924))

(declare-fun m!6320926 () Bool)

(assert (=> start!557778 m!6320926))

(declare-fun m!6320928 () Bool)

(assert (=> b!5283087 m!6320928))

(declare-fun m!6320930 () Bool)

(assert (=> b!5283087 m!6320930))

(declare-fun m!6320932 () Bool)

(assert (=> b!5283087 m!6320932))

(declare-fun m!6320934 () Bool)

(assert (=> b!5283087 m!6320934))

(declare-fun m!6320936 () Bool)

(assert (=> b!5283087 m!6320936))

(declare-fun m!6320938 () Bool)

(assert (=> b!5283087 m!6320938))

(declare-fun m!6320940 () Bool)

(assert (=> b!5283087 m!6320940))

(declare-fun m!6320942 () Bool)

(assert (=> b!5283088 m!6320942))

(assert (=> b!5283088 m!6320942))

(declare-fun m!6320944 () Bool)

(assert (=> b!5283088 m!6320944))

(declare-fun m!6320946 () Bool)

(assert (=> b!5283083 m!6320946))

(declare-fun m!6320948 () Bool)

(assert (=> b!5283083 m!6320948))

(assert (=> b!5283092 m!6320902))

(declare-fun m!6320950 () Bool)

(assert (=> b!5283092 m!6320950))

(declare-fun m!6320952 () Bool)

(assert (=> b!5283092 m!6320952))

(declare-fun m!6320954 () Bool)

(assert (=> b!5283092 m!6320954))

(declare-fun m!6320956 () Bool)

(assert (=> b!5283092 m!6320956))

(declare-fun m!6320958 () Bool)

(assert (=> b!5283092 m!6320958))

(declare-fun m!6320960 () Bool)

(assert (=> b!5283092 m!6320960))

(declare-fun m!6320962 () Bool)

(assert (=> b!5283091 m!6320962))

(declare-fun m!6320964 () Bool)

(assert (=> b!5283096 m!6320964))

(declare-fun m!6320966 () Bool)

(assert (=> b!5283110 m!6320966))

(declare-fun m!6320968 () Bool)

(assert (=> setNonEmpty!33875 m!6320968))

(declare-fun m!6320970 () Bool)

(assert (=> b!5283107 m!6320970))

(declare-fun m!6320972 () Bool)

(assert (=> b!5283086 m!6320972))

(declare-fun m!6320974 () Bool)

(assert (=> b!5283086 m!6320974))

(declare-fun m!6320976 () Bool)

(assert (=> b!5283086 m!6320976))

(declare-fun m!6320978 () Bool)

(assert (=> b!5283086 m!6320978))

(assert (=> b!5283086 m!6320978))

(declare-fun m!6320980 () Bool)

(assert (=> b!5283086 m!6320980))

(assert (=> b!5283086 m!6320974))

(declare-fun m!6320982 () Bool)

(assert (=> b!5283086 m!6320982))

(check-sat (not b!5283096) (not b!5283085) (not b!5283100) (not b!5283102) (not b!5283083) tp_is_empty!39071 (not b!5283112) (not b!5283107) (not b!5283108) (not b!5283094) (not b!5283115) (not b!5283086) (not b!5283105) (not b!5283082) (not b!5283099) (not b!5283097) (not b!5283114) (not b!5283113) (not b!5283092) (not b!5283117) (not b!5283104) (not b!5283101) (not b!5283095) (not b!5283091) (not b!5283109) (not b!5283093) (not setNonEmpty!33875) (not b!5283088) (not b!5283103) (not b!5283116) (not b!5283084) (not b!5283087) (not start!557778) (not b!5283110))
(check-sat)
(get-model)

(declare-fun d!1700090 () Bool)

(declare-fun c!915959 () Bool)

(declare-fun isEmpty!32859 (List!61028) Bool)

(assert (=> d!1700090 (= c!915959 (isEmpty!32859 (t!374231 s!2326)))))

(declare-fun e!3284934 () Bool)

(assert (=> d!1700090 (= (matchZipper!1153 lt!2159378 (t!374231 s!2326)) e!3284934)))

(declare-fun b!5283240 () Bool)

(declare-fun nullableZipper!1302 ((InoxSet Context!8586)) Bool)

(assert (=> b!5283240 (= e!3284934 (nullableZipper!1302 lt!2159378))))

(declare-fun b!5283241 () Bool)

(declare-fun head!11322 (List!61028) C!30088)

(declare-fun tail!10419 (List!61028) List!61028)

(assert (=> b!5283241 (= e!3284934 (matchZipper!1153 (derivationStepZipper!1152 lt!2159378 (head!11322 (t!374231 s!2326))) (tail!10419 (t!374231 s!2326))))))

(assert (= (and d!1700090 c!915959) b!5283240))

(assert (= (and d!1700090 (not c!915959)) b!5283241))

(declare-fun m!6321130 () Bool)

(assert (=> d!1700090 m!6321130))

(declare-fun m!6321132 () Bool)

(assert (=> b!5283240 m!6321132))

(declare-fun m!6321134 () Bool)

(assert (=> b!5283241 m!6321134))

(assert (=> b!5283241 m!6321134))

(declare-fun m!6321136 () Bool)

(assert (=> b!5283241 m!6321136))

(declare-fun m!6321138 () Bool)

(assert (=> b!5283241 m!6321138))

(assert (=> b!5283241 m!6321136))

(assert (=> b!5283241 m!6321138))

(declare-fun m!6321140 () Bool)

(assert (=> b!5283241 m!6321140))

(assert (=> b!5283110 d!1700090))

(declare-fun bs!1224607 () Bool)

(declare-fun d!1700102 () Bool)

(assert (= bs!1224607 (and d!1700102 b!5283104)))

(declare-fun lambda!267028 () Int)

(assert (=> bs!1224607 (= lambda!267028 lambda!266995)))

(declare-fun b!5283331 () Bool)

(declare-fun e!3284994 () Regex!14909)

(declare-fun e!3284995 () Regex!14909)

(assert (=> b!5283331 (= e!3284994 e!3284995)))

(declare-fun c!915993 () Bool)

(assert (=> b!5283331 (= c!915993 ((_ is Cons!60902) (unfocusZipperList!351 zl!343)))))

(declare-fun b!5283332 () Bool)

(declare-fun e!3284993 () Bool)

(declare-fun lt!2159451 () Regex!14909)

(declare-fun head!11323 (List!61026) Regex!14909)

(assert (=> b!5283332 (= e!3284993 (= lt!2159451 (head!11323 (unfocusZipperList!351 zl!343))))))

(declare-fun b!5283333 () Bool)

(declare-fun e!3284992 () Bool)

(declare-fun e!3284997 () Bool)

(assert (=> b!5283333 (= e!3284992 e!3284997)))

(declare-fun c!915995 () Bool)

(assert (=> b!5283333 (= c!915995 (isEmpty!32856 (unfocusZipperList!351 zl!343)))))

(declare-fun b!5283334 () Bool)

(assert (=> b!5283334 (= e!3284997 e!3284993)))

(declare-fun c!915994 () Bool)

(declare-fun tail!10420 (List!61026) List!61026)

(assert (=> b!5283334 (= c!915994 (isEmpty!32856 (tail!10420 (unfocusZipperList!351 zl!343))))))

(declare-fun b!5283335 () Bool)

(assert (=> b!5283335 (= e!3284995 (Union!14909 (h!67350 (unfocusZipperList!351 zl!343)) (generalisedUnion!838 (t!374229 (unfocusZipperList!351 zl!343)))))))

(declare-fun b!5283336 () Bool)

(declare-fun isEmptyLang!845 (Regex!14909) Bool)

(assert (=> b!5283336 (= e!3284997 (isEmptyLang!845 lt!2159451))))

(assert (=> d!1700102 e!3284992))

(declare-fun res!2240743 () Bool)

(assert (=> d!1700102 (=> (not res!2240743) (not e!3284992))))

(assert (=> d!1700102 (= res!2240743 (validRegex!6645 lt!2159451))))

(assert (=> d!1700102 (= lt!2159451 e!3284994)))

(declare-fun c!915992 () Bool)

(declare-fun e!3284996 () Bool)

(assert (=> d!1700102 (= c!915992 e!3284996)))

(declare-fun res!2240744 () Bool)

(assert (=> d!1700102 (=> (not res!2240744) (not e!3284996))))

(assert (=> d!1700102 (= res!2240744 ((_ is Cons!60902) (unfocusZipperList!351 zl!343)))))

(assert (=> d!1700102 (forall!14317 (unfocusZipperList!351 zl!343) lambda!267028)))

(assert (=> d!1700102 (= (generalisedUnion!838 (unfocusZipperList!351 zl!343)) lt!2159451)))

(declare-fun b!5283337 () Bool)

(declare-fun isUnion!277 (Regex!14909) Bool)

(assert (=> b!5283337 (= e!3284993 (isUnion!277 lt!2159451))))

(declare-fun b!5283338 () Bool)

(assert (=> b!5283338 (= e!3284994 (h!67350 (unfocusZipperList!351 zl!343)))))

(declare-fun b!5283339 () Bool)

(assert (=> b!5283339 (= e!3284996 (isEmpty!32856 (t!374229 (unfocusZipperList!351 zl!343))))))

(declare-fun b!5283340 () Bool)

(assert (=> b!5283340 (= e!3284995 EmptyLang!14909)))

(assert (= (and d!1700102 res!2240744) b!5283339))

(assert (= (and d!1700102 c!915992) b!5283338))

(assert (= (and d!1700102 (not c!915992)) b!5283331))

(assert (= (and b!5283331 c!915993) b!5283335))

(assert (= (and b!5283331 (not c!915993)) b!5283340))

(assert (= (and d!1700102 res!2240743) b!5283333))

(assert (= (and b!5283333 c!915995) b!5283336))

(assert (= (and b!5283333 (not c!915995)) b!5283334))

(assert (= (and b!5283334 c!915994) b!5283332))

(assert (= (and b!5283334 (not c!915994)) b!5283337))

(declare-fun m!6321172 () Bool)

(assert (=> d!1700102 m!6321172))

(assert (=> d!1700102 m!6320942))

(declare-fun m!6321174 () Bool)

(assert (=> d!1700102 m!6321174))

(assert (=> b!5283332 m!6320942))

(declare-fun m!6321176 () Bool)

(assert (=> b!5283332 m!6321176))

(declare-fun m!6321178 () Bool)

(assert (=> b!5283339 m!6321178))

(assert (=> b!5283334 m!6320942))

(declare-fun m!6321180 () Bool)

(assert (=> b!5283334 m!6321180))

(assert (=> b!5283334 m!6321180))

(declare-fun m!6321182 () Bool)

(assert (=> b!5283334 m!6321182))

(assert (=> b!5283333 m!6320942))

(declare-fun m!6321184 () Bool)

(assert (=> b!5283333 m!6321184))

(declare-fun m!6321186 () Bool)

(assert (=> b!5283335 m!6321186))

(declare-fun m!6321188 () Bool)

(assert (=> b!5283337 m!6321188))

(declare-fun m!6321190 () Bool)

(assert (=> b!5283336 m!6321190))

(assert (=> b!5283088 d!1700102))

(declare-fun bs!1224608 () Bool)

(declare-fun d!1700118 () Bool)

(assert (= bs!1224608 (and d!1700118 b!5283104)))

(declare-fun lambda!267031 () Int)

(assert (=> bs!1224608 (= lambda!267031 lambda!266995)))

(declare-fun bs!1224609 () Bool)

(assert (= bs!1224609 (and d!1700118 d!1700102)))

(assert (=> bs!1224609 (= lambda!267031 lambda!267028)))

(declare-fun lt!2159454 () List!61026)

(assert (=> d!1700118 (forall!14317 lt!2159454 lambda!267031)))

(declare-fun e!3285009 () List!61026)

(assert (=> d!1700118 (= lt!2159454 e!3285009)))

(declare-fun c!916005 () Bool)

(assert (=> d!1700118 (= c!916005 ((_ is Cons!60903) zl!343))))

(assert (=> d!1700118 (= (unfocusZipperList!351 zl!343) lt!2159454)))

(declare-fun b!5283361 () Bool)

(assert (=> b!5283361 (= e!3285009 (Cons!60902 (generalisedConcat!578 (exprs!4793 (h!67351 zl!343))) (unfocusZipperList!351 (t!374230 zl!343))))))

(declare-fun b!5283362 () Bool)

(assert (=> b!5283362 (= e!3285009 Nil!60902)))

(assert (= (and d!1700118 c!916005) b!5283361))

(assert (= (and d!1700118 (not c!916005)) b!5283362))

(declare-fun m!6321212 () Bool)

(assert (=> d!1700118 m!6321212))

(assert (=> b!5283361 m!6320870))

(declare-fun m!6321214 () Bool)

(assert (=> b!5283361 m!6321214))

(assert (=> b!5283088 d!1700118))

(declare-fun d!1700126 () Bool)

(declare-fun c!916007 () Bool)

(assert (=> d!1700126 (= c!916007 (isEmpty!32859 (t!374231 s!2326)))))

(declare-fun e!3285011 () Bool)

(assert (=> d!1700126 (= (matchZipper!1153 lt!2159395 (t!374231 s!2326)) e!3285011)))

(declare-fun b!5283365 () Bool)

(assert (=> b!5283365 (= e!3285011 (nullableZipper!1302 lt!2159395))))

(declare-fun b!5283366 () Bool)

(assert (=> b!5283366 (= e!3285011 (matchZipper!1153 (derivationStepZipper!1152 lt!2159395 (head!11322 (t!374231 s!2326))) (tail!10419 (t!374231 s!2326))))))

(assert (= (and d!1700126 c!916007) b!5283365))

(assert (= (and d!1700126 (not c!916007)) b!5283366))

(assert (=> d!1700126 m!6321130))

(declare-fun m!6321216 () Bool)

(assert (=> b!5283365 m!6321216))

(assert (=> b!5283366 m!6321134))

(assert (=> b!5283366 m!6321134))

(declare-fun m!6321218 () Bool)

(assert (=> b!5283366 m!6321218))

(assert (=> b!5283366 m!6321138))

(assert (=> b!5283366 m!6321218))

(assert (=> b!5283366 m!6321138))

(declare-fun m!6321220 () Bool)

(assert (=> b!5283366 m!6321220))

(assert (=> b!5283109 d!1700126))

(declare-fun bs!1224612 () Bool)

(declare-fun d!1700130 () Bool)

(assert (= bs!1224612 (and d!1700130 b!5283087)))

(declare-fun lambda!267034 () Int)

(assert (=> bs!1224612 (= lambda!267034 lambda!266994)))

(assert (=> d!1700130 true))

(assert (=> d!1700130 (= (derivationStepZipper!1152 lt!2159381 (h!67352 s!2326)) (flatMap!636 lt!2159381 lambda!267034))))

(declare-fun bs!1224613 () Bool)

(assert (= bs!1224613 d!1700130))

(declare-fun m!6321250 () Bool)

(assert (=> bs!1224613 m!6321250))

(assert (=> b!5283092 d!1700130))

(declare-fun b!5283389 () Bool)

(declare-fun e!3285025 () Bool)

(assert (=> b!5283389 (= e!3285025 (nullable!5078 (h!67350 (exprs!4793 lt!2159375))))))

(declare-fun b!5283390 () Bool)

(declare-fun e!3285026 () (InoxSet Context!8586))

(declare-fun call!376284 () (InoxSet Context!8586))

(assert (=> b!5283390 (= e!3285026 call!376284)))

(declare-fun d!1700144 () Bool)

(declare-fun c!916019 () Bool)

(assert (=> d!1700144 (= c!916019 e!3285025)))

(declare-fun res!2240751 () Bool)

(assert (=> d!1700144 (=> (not res!2240751) (not e!3285025))))

(assert (=> d!1700144 (= res!2240751 ((_ is Cons!60902) (exprs!4793 lt!2159375)))))

(declare-fun e!3285024 () (InoxSet Context!8586))

(assert (=> d!1700144 (= (derivationStepZipperUp!281 lt!2159375 (h!67352 s!2326)) e!3285024)))

(declare-fun b!5283391 () Bool)

(assert (=> b!5283391 (= e!3285024 e!3285026)))

(declare-fun c!916018 () Bool)

(assert (=> b!5283391 (= c!916018 ((_ is Cons!60902) (exprs!4793 lt!2159375)))))

(declare-fun b!5283392 () Bool)

(assert (=> b!5283392 (= e!3285024 ((_ map or) call!376284 (derivationStepZipperUp!281 (Context!8587 (t!374229 (exprs!4793 lt!2159375))) (h!67352 s!2326))))))

(declare-fun b!5283393 () Bool)

(assert (=> b!5283393 (= e!3285026 ((as const (Array Context!8586 Bool)) false))))

(declare-fun bm!376279 () Bool)

(assert (=> bm!376279 (= call!376284 (derivationStepZipperDown!357 (h!67350 (exprs!4793 lt!2159375)) (Context!8587 (t!374229 (exprs!4793 lt!2159375))) (h!67352 s!2326)))))

(assert (= (and d!1700144 res!2240751) b!5283389))

(assert (= (and d!1700144 c!916019) b!5283392))

(assert (= (and d!1700144 (not c!916019)) b!5283391))

(assert (= (and b!5283391 c!916018) b!5283390))

(assert (= (and b!5283391 (not c!916018)) b!5283393))

(assert (= (or b!5283392 b!5283390) bm!376279))

(declare-fun m!6321256 () Bool)

(assert (=> b!5283389 m!6321256))

(declare-fun m!6321258 () Bool)

(assert (=> b!5283392 m!6321258))

(declare-fun m!6321260 () Bool)

(assert (=> bm!376279 m!6321260))

(assert (=> b!5283092 d!1700144))

(declare-fun d!1700148 () Bool)

(declare-fun choose!39432 ((InoxSet Context!8586) Int) (InoxSet Context!8586))

(assert (=> d!1700148 (= (flatMap!636 lt!2159381 lambda!266994) (choose!39432 lt!2159381 lambda!266994))))

(declare-fun bs!1224615 () Bool)

(assert (= bs!1224615 d!1700148))

(declare-fun m!6321262 () Bool)

(assert (=> bs!1224615 m!6321262))

(assert (=> b!5283092 d!1700148))

(declare-fun d!1700150 () Bool)

(declare-fun dynLambda!24079 (Int Context!8586) (InoxSet Context!8586))

(assert (=> d!1700150 (= (flatMap!636 lt!2159381 lambda!266994) (dynLambda!24079 lambda!266994 lt!2159375))))

(declare-fun lt!2159464 () Unit!153154)

(declare-fun choose!39433 ((InoxSet Context!8586) Context!8586 Int) Unit!153154)

(assert (=> d!1700150 (= lt!2159464 (choose!39433 lt!2159381 lt!2159375 lambda!266994))))

(assert (=> d!1700150 (= lt!2159381 (store ((as const (Array Context!8586 Bool)) false) lt!2159375 true))))

(assert (=> d!1700150 (= (lemmaFlatMapOnSingletonSet!168 lt!2159381 lt!2159375 lambda!266994) lt!2159464)))

(declare-fun b_lambda!203825 () Bool)

(assert (=> (not b_lambda!203825) (not d!1700150)))

(declare-fun bs!1224616 () Bool)

(assert (= bs!1224616 d!1700150))

(assert (=> bs!1224616 m!6320958))

(declare-fun m!6321264 () Bool)

(assert (=> bs!1224616 m!6321264))

(declare-fun m!6321266 () Bool)

(assert (=> bs!1224616 m!6321266))

(assert (=> bs!1224616 m!6320950))

(assert (=> b!5283092 d!1700150))

(declare-fun b!5283422 () Bool)

(declare-fun e!3285042 () Bool)

(assert (=> b!5283422 (= e!3285042 (nullable!5078 (h!67350 (exprs!4793 lt!2159371))))))

(declare-fun b!5283423 () Bool)

(declare-fun e!3285043 () (InoxSet Context!8586))

(declare-fun call!376287 () (InoxSet Context!8586))

(assert (=> b!5283423 (= e!3285043 call!376287)))

(declare-fun d!1700152 () Bool)

(declare-fun c!916027 () Bool)

(assert (=> d!1700152 (= c!916027 e!3285042)))

(declare-fun res!2240768 () Bool)

(assert (=> d!1700152 (=> (not res!2240768) (not e!3285042))))

(assert (=> d!1700152 (= res!2240768 ((_ is Cons!60902) (exprs!4793 lt!2159371)))))

(declare-fun e!3285041 () (InoxSet Context!8586))

(assert (=> d!1700152 (= (derivationStepZipperUp!281 lt!2159371 (h!67352 s!2326)) e!3285041)))

(declare-fun b!5283424 () Bool)

(assert (=> b!5283424 (= e!3285041 e!3285043)))

(declare-fun c!916026 () Bool)

(assert (=> b!5283424 (= c!916026 ((_ is Cons!60902) (exprs!4793 lt!2159371)))))

(declare-fun b!5283425 () Bool)

(assert (=> b!5283425 (= e!3285041 ((_ map or) call!376287 (derivationStepZipperUp!281 (Context!8587 (t!374229 (exprs!4793 lt!2159371))) (h!67352 s!2326))))))

(declare-fun b!5283426 () Bool)

(assert (=> b!5283426 (= e!3285043 ((as const (Array Context!8586 Bool)) false))))

(declare-fun bm!376282 () Bool)

(assert (=> bm!376282 (= call!376287 (derivationStepZipperDown!357 (h!67350 (exprs!4793 lt!2159371)) (Context!8587 (t!374229 (exprs!4793 lt!2159371))) (h!67352 s!2326)))))

(assert (= (and d!1700152 res!2240768) b!5283422))

(assert (= (and d!1700152 c!916027) b!5283425))

(assert (= (and d!1700152 (not c!916027)) b!5283424))

(assert (= (and b!5283424 c!916026) b!5283423))

(assert (= (and b!5283424 (not c!916026)) b!5283426))

(assert (= (or b!5283425 b!5283423) bm!376282))

(declare-fun m!6321268 () Bool)

(assert (=> b!5283422 m!6321268))

(declare-fun m!6321270 () Bool)

(assert (=> b!5283425 m!6321270))

(declare-fun m!6321272 () Bool)

(assert (=> bm!376282 m!6321272))

(assert (=> b!5283092 d!1700152))

(declare-fun d!1700154 () Bool)

(declare-fun lt!2159468 () Regex!14909)

(assert (=> d!1700154 (validRegex!6645 lt!2159468)))

(assert (=> d!1700154 (= lt!2159468 (generalisedUnion!838 (unfocusZipperList!351 zl!343)))))

(assert (=> d!1700154 (= (unfocusZipper!651 zl!343) lt!2159468)))

(declare-fun bs!1224617 () Bool)

(assert (= bs!1224617 d!1700154))

(declare-fun m!6321288 () Bool)

(assert (=> bs!1224617 m!6321288))

(assert (=> bs!1224617 m!6320942))

(assert (=> bs!1224617 m!6320942))

(assert (=> bs!1224617 m!6320944))

(assert (=> b!5283093 d!1700154))

(declare-fun d!1700158 () Bool)

(assert (=> d!1700158 (= (isEmpty!32855 (t!374230 zl!343)) ((_ is Nil!60903) (t!374230 zl!343)))))

(assert (=> b!5283091 d!1700158))

(declare-fun c!916051 () Bool)

(declare-fun bm!376290 () Bool)

(declare-fun call!376297 () Bool)

(declare-fun c!916052 () Bool)

(assert (=> bm!376290 (= call!376297 (validRegex!6645 (ite c!916052 (reg!15238 r!7292) (ite c!916051 (regTwo!30331 r!7292) (regTwo!30330 r!7292)))))))

(declare-fun b!5283500 () Bool)

(declare-fun e!3285092 () Bool)

(declare-fun e!3285095 () Bool)

(assert (=> b!5283500 (= e!3285092 e!3285095)))

(assert (=> b!5283500 (= c!916051 ((_ is Union!14909) r!7292))))

(declare-fun b!5283501 () Bool)

(declare-fun e!3285094 () Bool)

(assert (=> b!5283501 (= e!3285094 call!376297)))

(declare-fun b!5283502 () Bool)

(declare-fun e!3285091 () Bool)

(declare-fun call!376295 () Bool)

(assert (=> b!5283502 (= e!3285091 call!376295)))

(declare-fun b!5283503 () Bool)

(declare-fun res!2240795 () Bool)

(declare-fun e!3285090 () Bool)

(assert (=> b!5283503 (=> res!2240795 e!3285090)))

(assert (=> b!5283503 (= res!2240795 (not ((_ is Concat!23754) r!7292)))))

(assert (=> b!5283503 (= e!3285095 e!3285090)))

(declare-fun b!5283504 () Bool)

(declare-fun e!3285093 () Bool)

(assert (=> b!5283504 (= e!3285090 e!3285093)))

(declare-fun res!2240796 () Bool)

(assert (=> b!5283504 (=> (not res!2240796) (not e!3285093))))

(declare-fun call!376296 () Bool)

(assert (=> b!5283504 (= res!2240796 call!376296)))

(declare-fun bm!376291 () Bool)

(assert (=> bm!376291 (= call!376296 (validRegex!6645 (ite c!916051 (regOne!30331 r!7292) (regOne!30330 r!7292))))))

(declare-fun b!5283499 () Bool)

(assert (=> b!5283499 (= e!3285092 e!3285094)))

(declare-fun res!2240799 () Bool)

(assert (=> b!5283499 (= res!2240799 (not (nullable!5078 (reg!15238 r!7292))))))

(assert (=> b!5283499 (=> (not res!2240799) (not e!3285094))))

(declare-fun d!1700160 () Bool)

(declare-fun res!2240798 () Bool)

(declare-fun e!3285089 () Bool)

(assert (=> d!1700160 (=> res!2240798 e!3285089)))

(assert (=> d!1700160 (= res!2240798 ((_ is ElementMatch!14909) r!7292))))

(assert (=> d!1700160 (= (validRegex!6645 r!7292) e!3285089)))

(declare-fun bm!376292 () Bool)

(assert (=> bm!376292 (= call!376295 call!376297)))

(declare-fun b!5283505 () Bool)

(declare-fun res!2240797 () Bool)

(assert (=> b!5283505 (=> (not res!2240797) (not e!3285091))))

(assert (=> b!5283505 (= res!2240797 call!376296)))

(assert (=> b!5283505 (= e!3285095 e!3285091)))

(declare-fun b!5283506 () Bool)

(assert (=> b!5283506 (= e!3285089 e!3285092)))

(assert (=> b!5283506 (= c!916052 ((_ is Star!14909) r!7292))))

(declare-fun b!5283507 () Bool)

(assert (=> b!5283507 (= e!3285093 call!376295)))

(assert (= (and d!1700160 (not res!2240798)) b!5283506))

(assert (= (and b!5283506 c!916052) b!5283499))

(assert (= (and b!5283506 (not c!916052)) b!5283500))

(assert (= (and b!5283499 res!2240799) b!5283501))

(assert (= (and b!5283500 c!916051) b!5283505))

(assert (= (and b!5283500 (not c!916051)) b!5283503))

(assert (= (and b!5283505 res!2240797) b!5283502))

(assert (= (and b!5283503 (not res!2240795)) b!5283504))

(assert (= (and b!5283504 res!2240796) b!5283507))

(assert (= (or b!5283502 b!5283507) bm!376292))

(assert (= (or b!5283505 b!5283504) bm!376291))

(assert (= (or b!5283501 bm!376292) bm!376290))

(declare-fun m!6321330 () Bool)

(assert (=> bm!376290 m!6321330))

(declare-fun m!6321332 () Bool)

(assert (=> bm!376291 m!6321332))

(declare-fun m!6321334 () Bool)

(assert (=> b!5283499 m!6321334))

(assert (=> start!557778 d!1700160))

(assert (=> b!5283084 d!1700126))

(declare-fun e!3285105 () Bool)

(declare-fun d!1700166 () Bool)

(assert (=> d!1700166 (= (matchZipper!1153 ((_ map or) lt!2159367 lt!2159392) (t!374231 s!2326)) e!3285105)))

(declare-fun res!2240808 () Bool)

(assert (=> d!1700166 (=> res!2240808 e!3285105)))

(assert (=> d!1700166 (= res!2240808 (matchZipper!1153 lt!2159367 (t!374231 s!2326)))))

(declare-fun lt!2159478 () Unit!153154)

(declare-fun choose!39435 ((InoxSet Context!8586) (InoxSet Context!8586) List!61028) Unit!153154)

(assert (=> d!1700166 (= lt!2159478 (choose!39435 lt!2159367 lt!2159392 (t!374231 s!2326)))))

(assert (=> d!1700166 (= (lemmaZipperConcatMatchesSameAsBothZippers!146 lt!2159367 lt!2159392 (t!374231 s!2326)) lt!2159478)))

(declare-fun b!5283518 () Bool)

(assert (=> b!5283518 (= e!3285105 (matchZipper!1153 lt!2159392 (t!374231 s!2326)))))

(assert (= (and d!1700166 (not res!2240808)) b!5283518))

(assert (=> d!1700166 m!6320858))

(assert (=> d!1700166 m!6320856))

(declare-fun m!6321348 () Bool)

(assert (=> d!1700166 m!6321348))

(assert (=> b!5283518 m!6320852))

(assert (=> b!5283085 d!1700166))

(declare-fun d!1700174 () Bool)

(declare-fun c!916054 () Bool)

(assert (=> d!1700174 (= c!916054 (isEmpty!32859 (t!374231 s!2326)))))

(declare-fun e!3285106 () Bool)

(assert (=> d!1700174 (= (matchZipper!1153 lt!2159367 (t!374231 s!2326)) e!3285106)))

(declare-fun b!5283519 () Bool)

(assert (=> b!5283519 (= e!3285106 (nullableZipper!1302 lt!2159367))))

(declare-fun b!5283520 () Bool)

(assert (=> b!5283520 (= e!3285106 (matchZipper!1153 (derivationStepZipper!1152 lt!2159367 (head!11322 (t!374231 s!2326))) (tail!10419 (t!374231 s!2326))))))

(assert (= (and d!1700174 c!916054) b!5283519))

(assert (= (and d!1700174 (not c!916054)) b!5283520))

(assert (=> d!1700174 m!6321130))

(declare-fun m!6321350 () Bool)

(assert (=> b!5283519 m!6321350))

(assert (=> b!5283520 m!6321134))

(assert (=> b!5283520 m!6321134))

(declare-fun m!6321352 () Bool)

(assert (=> b!5283520 m!6321352))

(assert (=> b!5283520 m!6321138))

(assert (=> b!5283520 m!6321352))

(assert (=> b!5283520 m!6321138))

(declare-fun m!6321354 () Bool)

(assert (=> b!5283520 m!6321354))

(assert (=> b!5283085 d!1700174))

(declare-fun d!1700176 () Bool)

(declare-fun c!916055 () Bool)

(assert (=> d!1700176 (= c!916055 (isEmpty!32859 (t!374231 s!2326)))))

(declare-fun e!3285107 () Bool)

(assert (=> d!1700176 (= (matchZipper!1153 ((_ map or) lt!2159367 lt!2159392) (t!374231 s!2326)) e!3285107)))

(declare-fun b!5283521 () Bool)

(assert (=> b!5283521 (= e!3285107 (nullableZipper!1302 ((_ map or) lt!2159367 lt!2159392)))))

(declare-fun b!5283522 () Bool)

(assert (=> b!5283522 (= e!3285107 (matchZipper!1153 (derivationStepZipper!1152 ((_ map or) lt!2159367 lt!2159392) (head!11322 (t!374231 s!2326))) (tail!10419 (t!374231 s!2326))))))

(assert (= (and d!1700176 c!916055) b!5283521))

(assert (= (and d!1700176 (not c!916055)) b!5283522))

(assert (=> d!1700176 m!6321130))

(declare-fun m!6321356 () Bool)

(assert (=> b!5283521 m!6321356))

(assert (=> b!5283522 m!6321134))

(assert (=> b!5283522 m!6321134))

(declare-fun m!6321358 () Bool)

(assert (=> b!5283522 m!6321358))

(assert (=> b!5283522 m!6321138))

(assert (=> b!5283522 m!6321358))

(assert (=> b!5283522 m!6321138))

(declare-fun m!6321360 () Bool)

(assert (=> b!5283522 m!6321360))

(assert (=> b!5283085 d!1700176))

(declare-fun bs!1224628 () Bool)

(declare-fun d!1700178 () Bool)

(assert (= bs!1224628 (and d!1700178 b!5283104)))

(declare-fun lambda!267045 () Int)

(assert (=> bs!1224628 (= lambda!267045 lambda!266995)))

(declare-fun bs!1224629 () Bool)

(assert (= bs!1224629 (and d!1700178 d!1700102)))

(assert (=> bs!1224629 (= lambda!267045 lambda!267028)))

(declare-fun bs!1224630 () Bool)

(assert (= bs!1224630 (and d!1700178 d!1700118)))

(assert (=> bs!1224630 (= lambda!267045 lambda!267031)))

(declare-fun b!5283575 () Bool)

(declare-fun e!3285143 () Regex!14909)

(declare-fun e!3285138 () Regex!14909)

(assert (=> b!5283575 (= e!3285143 e!3285138)))

(declare-fun c!916074 () Bool)

(assert (=> b!5283575 (= c!916074 ((_ is Cons!60902) lt!2159391))))

(declare-fun b!5283577 () Bool)

(assert (=> b!5283577 (= e!3285138 EmptyExpr!14909)))

(declare-fun b!5283578 () Bool)

(assert (=> b!5283578 (= e!3285138 (Concat!23754 (h!67350 lt!2159391) (generalisedConcat!578 (t!374229 lt!2159391))))))

(declare-fun b!5283579 () Bool)

(declare-fun e!3285142 () Bool)

(declare-fun lt!2159481 () Regex!14909)

(declare-fun isEmptyExpr!836 (Regex!14909) Bool)

(assert (=> b!5283579 (= e!3285142 (isEmptyExpr!836 lt!2159481))))

(declare-fun b!5283580 () Bool)

(declare-fun e!3285139 () Bool)

(assert (=> b!5283580 (= e!3285139 (= lt!2159481 (head!11323 lt!2159391)))))

(declare-fun b!5283581 () Bool)

(assert (=> b!5283581 (= e!3285142 e!3285139)))

(declare-fun c!916072 () Bool)

(assert (=> b!5283581 (= c!916072 (isEmpty!32856 (tail!10420 lt!2159391)))))

(declare-fun b!5283582 () Bool)

(assert (=> b!5283582 (= e!3285143 (h!67350 lt!2159391))))

(declare-fun e!3285141 () Bool)

(assert (=> d!1700178 e!3285141))

(declare-fun res!2240830 () Bool)

(assert (=> d!1700178 (=> (not res!2240830) (not e!3285141))))

(assert (=> d!1700178 (= res!2240830 (validRegex!6645 lt!2159481))))

(assert (=> d!1700178 (= lt!2159481 e!3285143)))

(declare-fun c!916073 () Bool)

(declare-fun e!3285140 () Bool)

(assert (=> d!1700178 (= c!916073 e!3285140)))

(declare-fun res!2240829 () Bool)

(assert (=> d!1700178 (=> (not res!2240829) (not e!3285140))))

(assert (=> d!1700178 (= res!2240829 ((_ is Cons!60902) lt!2159391))))

(assert (=> d!1700178 (forall!14317 lt!2159391 lambda!267045)))

(assert (=> d!1700178 (= (generalisedConcat!578 lt!2159391) lt!2159481)))

(declare-fun b!5283576 () Bool)

(assert (=> b!5283576 (= e!3285141 e!3285142)))

(declare-fun c!916075 () Bool)

(assert (=> b!5283576 (= c!916075 (isEmpty!32856 lt!2159391))))

(declare-fun b!5283583 () Bool)

(assert (=> b!5283583 (= e!3285140 (isEmpty!32856 (t!374229 lt!2159391)))))

(declare-fun b!5283584 () Bool)

(declare-fun isConcat!359 (Regex!14909) Bool)

(assert (=> b!5283584 (= e!3285139 (isConcat!359 lt!2159481))))

(assert (= (and d!1700178 res!2240829) b!5283583))

(assert (= (and d!1700178 c!916073) b!5283582))

(assert (= (and d!1700178 (not c!916073)) b!5283575))

(assert (= (and b!5283575 c!916074) b!5283578))

(assert (= (and b!5283575 (not c!916074)) b!5283577))

(assert (= (and d!1700178 res!2240830) b!5283576))

(assert (= (and b!5283576 c!916075) b!5283579))

(assert (= (and b!5283576 (not c!916075)) b!5283581))

(assert (= (and b!5283581 c!916072) b!5283580))

(assert (= (and b!5283581 (not c!916072)) b!5283584))

(declare-fun m!6321362 () Bool)

(assert (=> b!5283579 m!6321362))

(declare-fun m!6321364 () Bool)

(assert (=> b!5283578 m!6321364))

(declare-fun m!6321366 () Bool)

(assert (=> b!5283583 m!6321366))

(declare-fun m!6321368 () Bool)

(assert (=> b!5283581 m!6321368))

(assert (=> b!5283581 m!6321368))

(declare-fun m!6321370 () Bool)

(assert (=> b!5283581 m!6321370))

(declare-fun m!6321372 () Bool)

(assert (=> b!5283576 m!6321372))

(declare-fun m!6321374 () Bool)

(assert (=> b!5283584 m!6321374))

(declare-fun m!6321376 () Bool)

(assert (=> d!1700178 m!6321376))

(declare-fun m!6321378 () Bool)

(assert (=> d!1700178 m!6321378))

(declare-fun m!6321380 () Bool)

(assert (=> b!5283580 m!6321380))

(assert (=> b!5283104 d!1700178))

(declare-fun d!1700180 () Bool)

(assert (=> d!1700180 (= (matchR!7094 lt!2159369 s!2326) (matchRSpec!2012 lt!2159369 s!2326))))

(declare-fun lt!2159484 () Unit!153154)

(declare-fun choose!39436 (Regex!14909 List!61028) Unit!153154)

(assert (=> d!1700180 (= lt!2159484 (choose!39436 lt!2159369 s!2326))))

(assert (=> d!1700180 (validRegex!6645 lt!2159369)))

(assert (=> d!1700180 (= (mainMatchTheorem!2012 lt!2159369 s!2326) lt!2159484)))

(declare-fun bs!1224634 () Bool)

(assert (= bs!1224634 d!1700180))

(assert (=> bs!1224634 m!6320882))

(assert (=> bs!1224634 m!6320886))

(declare-fun m!6321382 () Bool)

(assert (=> bs!1224634 m!6321382))

(declare-fun m!6321384 () Bool)

(assert (=> bs!1224634 m!6321384))

(assert (=> b!5283104 d!1700180))

(declare-fun b!5283673 () Bool)

(declare-fun e!3285194 () Bool)

(declare-fun lt!2159489 () Bool)

(declare-fun call!376321 () Bool)

(assert (=> b!5283673 (= e!3285194 (= lt!2159489 call!376321))))

(declare-fun b!5283674 () Bool)

(declare-fun res!2240864 () Bool)

(declare-fun e!3285193 () Bool)

(assert (=> b!5283674 (=> (not res!2240864) (not e!3285193))))

(assert (=> b!5283674 (= res!2240864 (isEmpty!32859 (tail!10419 s!2326)))))

(declare-fun b!5283675 () Bool)

(declare-fun res!2240863 () Bool)

(declare-fun e!3285196 () Bool)

(assert (=> b!5283675 (=> res!2240863 e!3285196)))

(assert (=> b!5283675 (= res!2240863 e!3285193)))

(declare-fun res!2240865 () Bool)

(assert (=> b!5283675 (=> (not res!2240865) (not e!3285193))))

(assert (=> b!5283675 (= res!2240865 lt!2159489)))

(declare-fun d!1700182 () Bool)

(assert (=> d!1700182 e!3285194))

(declare-fun c!916106 () Bool)

(assert (=> d!1700182 (= c!916106 ((_ is EmptyExpr!14909) lt!2159380))))

(declare-fun e!3285198 () Bool)

(assert (=> d!1700182 (= lt!2159489 e!3285198)))

(declare-fun c!916105 () Bool)

(assert (=> d!1700182 (= c!916105 (isEmpty!32859 s!2326))))

(assert (=> d!1700182 (validRegex!6645 lt!2159380)))

(assert (=> d!1700182 (= (matchR!7094 lt!2159380 s!2326) lt!2159489)))

(declare-fun b!5283676 () Bool)

(declare-fun res!2240869 () Bool)

(assert (=> b!5283676 (=> res!2240869 e!3285196)))

(assert (=> b!5283676 (= res!2240869 (not ((_ is ElementMatch!14909) lt!2159380)))))

(declare-fun e!3285192 () Bool)

(assert (=> b!5283676 (= e!3285192 e!3285196)))

(declare-fun b!5283677 () Bool)

(declare-fun e!3285197 () Bool)

(declare-fun e!3285195 () Bool)

(assert (=> b!5283677 (= e!3285197 e!3285195)))

(declare-fun res!2240868 () Bool)

(assert (=> b!5283677 (=> res!2240868 e!3285195)))

(assert (=> b!5283677 (= res!2240868 call!376321)))

(declare-fun b!5283678 () Bool)

(declare-fun res!2240866 () Bool)

(assert (=> b!5283678 (=> res!2240866 e!3285195)))

(assert (=> b!5283678 (= res!2240866 (not (isEmpty!32859 (tail!10419 s!2326))))))

(declare-fun b!5283679 () Bool)

(assert (=> b!5283679 (= e!3285193 (= (head!11322 s!2326) (c!915917 lt!2159380)))))

(declare-fun bm!376316 () Bool)

(assert (=> bm!376316 (= call!376321 (isEmpty!32859 s!2326))))

(declare-fun b!5283680 () Bool)

(assert (=> b!5283680 (= e!3285192 (not lt!2159489))))

(declare-fun b!5283681 () Bool)

(declare-fun derivativeStep!4123 (Regex!14909 C!30088) Regex!14909)

(assert (=> b!5283681 (= e!3285198 (matchR!7094 (derivativeStep!4123 lt!2159380 (head!11322 s!2326)) (tail!10419 s!2326)))))

(declare-fun b!5283682 () Bool)

(assert (=> b!5283682 (= e!3285198 (nullable!5078 lt!2159380))))

(declare-fun b!5283683 () Bool)

(assert (=> b!5283683 (= e!3285194 e!3285192)))

(declare-fun c!916104 () Bool)

(assert (=> b!5283683 (= c!916104 ((_ is EmptyLang!14909) lt!2159380))))

(declare-fun b!5283684 () Bool)

(assert (=> b!5283684 (= e!3285196 e!3285197)))

(declare-fun res!2240870 () Bool)

(assert (=> b!5283684 (=> (not res!2240870) (not e!3285197))))

(assert (=> b!5283684 (= res!2240870 (not lt!2159489))))

(declare-fun b!5283685 () Bool)

(assert (=> b!5283685 (= e!3285195 (not (= (head!11322 s!2326) (c!915917 lt!2159380))))))

(declare-fun b!5283686 () Bool)

(declare-fun res!2240867 () Bool)

(assert (=> b!5283686 (=> (not res!2240867) (not e!3285193))))

(assert (=> b!5283686 (= res!2240867 (not call!376321))))

(assert (= (and d!1700182 c!916105) b!5283682))

(assert (= (and d!1700182 (not c!916105)) b!5283681))

(assert (= (and d!1700182 c!916106) b!5283673))

(assert (= (and d!1700182 (not c!916106)) b!5283683))

(assert (= (and b!5283683 c!916104) b!5283680))

(assert (= (and b!5283683 (not c!916104)) b!5283676))

(assert (= (and b!5283676 (not res!2240869)) b!5283675))

(assert (= (and b!5283675 res!2240865) b!5283686))

(assert (= (and b!5283686 res!2240867) b!5283674))

(assert (= (and b!5283674 res!2240864) b!5283679))

(assert (= (and b!5283675 (not res!2240863)) b!5283684))

(assert (= (and b!5283684 res!2240870) b!5283677))

(assert (= (and b!5283677 (not res!2240868)) b!5283678))

(assert (= (and b!5283678 (not res!2240866)) b!5283685))

(assert (= (or b!5283673 b!5283677 b!5283686) bm!376316))

(declare-fun m!6321430 () Bool)

(assert (=> b!5283682 m!6321430))

(declare-fun m!6321432 () Bool)

(assert (=> b!5283674 m!6321432))

(assert (=> b!5283674 m!6321432))

(declare-fun m!6321434 () Bool)

(assert (=> b!5283674 m!6321434))

(declare-fun m!6321438 () Bool)

(assert (=> b!5283685 m!6321438))

(assert (=> b!5283681 m!6321438))

(assert (=> b!5283681 m!6321438))

(declare-fun m!6321440 () Bool)

(assert (=> b!5283681 m!6321440))

(assert (=> b!5283681 m!6321432))

(assert (=> b!5283681 m!6321440))

(assert (=> b!5283681 m!6321432))

(declare-fun m!6321444 () Bool)

(assert (=> b!5283681 m!6321444))

(declare-fun m!6321446 () Bool)

(assert (=> d!1700182 m!6321446))

(declare-fun m!6321450 () Bool)

(assert (=> d!1700182 m!6321450))

(assert (=> b!5283679 m!6321438))

(assert (=> b!5283678 m!6321432))

(assert (=> b!5283678 m!6321432))

(assert (=> b!5283678 m!6321434))

(assert (=> bm!376316 m!6321446))

(assert (=> b!5283104 d!1700182))

(declare-fun d!1700200 () Bool)

(declare-fun c!916110 () Bool)

(assert (=> d!1700200 (= c!916110 (isEmpty!32859 s!2326))))

(declare-fun e!3285206 () Bool)

(assert (=> d!1700200 (= (matchZipper!1153 lt!2159389 s!2326) e!3285206)))

(declare-fun b!5283701 () Bool)

(assert (=> b!5283701 (= e!3285206 (nullableZipper!1302 lt!2159389))))

(declare-fun b!5283702 () Bool)

(assert (=> b!5283702 (= e!3285206 (matchZipper!1153 (derivationStepZipper!1152 lt!2159389 (head!11322 s!2326)) (tail!10419 s!2326)))))

(assert (= (and d!1700200 c!916110) b!5283701))

(assert (= (and d!1700200 (not c!916110)) b!5283702))

(assert (=> d!1700200 m!6321446))

(declare-fun m!6321454 () Bool)

(assert (=> b!5283701 m!6321454))

(assert (=> b!5283702 m!6321438))

(assert (=> b!5283702 m!6321438))

(declare-fun m!6321456 () Bool)

(assert (=> b!5283702 m!6321456))

(assert (=> b!5283702 m!6321432))

(assert (=> b!5283702 m!6321456))

(assert (=> b!5283702 m!6321432))

(declare-fun m!6321458 () Bool)

(assert (=> b!5283702 m!6321458))

(assert (=> b!5283104 d!1700200))

(declare-fun d!1700204 () Bool)

(declare-fun c!916112 () Bool)

(assert (=> d!1700204 (= c!916112 (isEmpty!32859 s!2326))))

(declare-fun e!3285208 () Bool)

(assert (=> d!1700204 (= (matchZipper!1153 lt!2159381 s!2326) e!3285208)))

(declare-fun b!5283705 () Bool)

(assert (=> b!5283705 (= e!3285208 (nullableZipper!1302 lt!2159381))))

(declare-fun b!5283706 () Bool)

(assert (=> b!5283706 (= e!3285208 (matchZipper!1153 (derivationStepZipper!1152 lt!2159381 (head!11322 s!2326)) (tail!10419 s!2326)))))

(assert (= (and d!1700204 c!916112) b!5283705))

(assert (= (and d!1700204 (not c!916112)) b!5283706))

(assert (=> d!1700204 m!6321446))

(declare-fun m!6321464 () Bool)

(assert (=> b!5283705 m!6321464))

(assert (=> b!5283706 m!6321438))

(assert (=> b!5283706 m!6321438))

(declare-fun m!6321468 () Bool)

(assert (=> b!5283706 m!6321468))

(assert (=> b!5283706 m!6321432))

(assert (=> b!5283706 m!6321468))

(assert (=> b!5283706 m!6321432))

(declare-fun m!6321470 () Bool)

(assert (=> b!5283706 m!6321470))

(assert (=> b!5283104 d!1700204))

(declare-fun d!1700208 () Bool)

(assert (=> d!1700208 (= (matchR!7094 lt!2159380 s!2326) (matchZipper!1153 lt!2159389 s!2326))))

(declare-fun lt!2159495 () Unit!153154)

(declare-fun choose!39437 ((InoxSet Context!8586) List!61027 Regex!14909 List!61028) Unit!153154)

(assert (=> d!1700208 (= lt!2159495 (choose!39437 lt!2159389 (Cons!60903 lt!2159371 Nil!60903) lt!2159380 s!2326))))

(assert (=> d!1700208 (validRegex!6645 lt!2159380)))

(assert (=> d!1700208 (= (theoremZipperRegexEquiv!319 lt!2159389 (Cons!60903 lt!2159371 Nil!60903) lt!2159380 s!2326) lt!2159495)))

(declare-fun bs!1224660 () Bool)

(assert (= bs!1224660 d!1700208))

(assert (=> bs!1224660 m!6320888))

(assert (=> bs!1224660 m!6320896))

(declare-fun m!6321492 () Bool)

(assert (=> bs!1224660 m!6321492))

(assert (=> bs!1224660 m!6321450))

(assert (=> b!5283104 d!1700208))

(declare-fun bs!1224661 () Bool)

(declare-fun d!1700214 () Bool)

(assert (= bs!1224661 (and d!1700214 b!5283104)))

(declare-fun lambda!267054 () Int)

(assert (=> bs!1224661 (= lambda!267054 lambda!266995)))

(declare-fun bs!1224662 () Bool)

(assert (= bs!1224662 (and d!1700214 d!1700102)))

(assert (=> bs!1224662 (= lambda!267054 lambda!267028)))

(declare-fun bs!1224663 () Bool)

(assert (= bs!1224663 (and d!1700214 d!1700118)))

(assert (=> bs!1224663 (= lambda!267054 lambda!267031)))

(declare-fun bs!1224664 () Bool)

(assert (= bs!1224664 (and d!1700214 d!1700178)))

(assert (=> bs!1224664 (= lambda!267054 lambda!267045)))

(declare-fun b!5283723 () Bool)

(declare-fun e!3285222 () Regex!14909)

(declare-fun e!3285217 () Regex!14909)

(assert (=> b!5283723 (= e!3285222 e!3285217)))

(declare-fun c!916123 () Bool)

(assert (=> b!5283723 (= c!916123 ((_ is Cons!60902) lt!2159397))))

(declare-fun b!5283725 () Bool)

(assert (=> b!5283725 (= e!3285217 EmptyExpr!14909)))

(declare-fun b!5283726 () Bool)

(assert (=> b!5283726 (= e!3285217 (Concat!23754 (h!67350 lt!2159397) (generalisedConcat!578 (t!374229 lt!2159397))))))

(declare-fun b!5283727 () Bool)

(declare-fun e!3285221 () Bool)

(declare-fun lt!2159498 () Regex!14909)

(assert (=> b!5283727 (= e!3285221 (isEmptyExpr!836 lt!2159498))))

(declare-fun b!5283728 () Bool)

(declare-fun e!3285218 () Bool)

(assert (=> b!5283728 (= e!3285218 (= lt!2159498 (head!11323 lt!2159397)))))

(declare-fun b!5283729 () Bool)

(assert (=> b!5283729 (= e!3285221 e!3285218)))

(declare-fun c!916121 () Bool)

(assert (=> b!5283729 (= c!916121 (isEmpty!32856 (tail!10420 lt!2159397)))))

(declare-fun b!5283730 () Bool)

(assert (=> b!5283730 (= e!3285222 (h!67350 lt!2159397))))

(declare-fun e!3285220 () Bool)

(assert (=> d!1700214 e!3285220))

(declare-fun res!2240882 () Bool)

(assert (=> d!1700214 (=> (not res!2240882) (not e!3285220))))

(assert (=> d!1700214 (= res!2240882 (validRegex!6645 lt!2159498))))

(assert (=> d!1700214 (= lt!2159498 e!3285222)))

(declare-fun c!916122 () Bool)

(declare-fun e!3285219 () Bool)

(assert (=> d!1700214 (= c!916122 e!3285219)))

(declare-fun res!2240881 () Bool)

(assert (=> d!1700214 (=> (not res!2240881) (not e!3285219))))

(assert (=> d!1700214 (= res!2240881 ((_ is Cons!60902) lt!2159397))))

(assert (=> d!1700214 (forall!14317 lt!2159397 lambda!267054)))

(assert (=> d!1700214 (= (generalisedConcat!578 lt!2159397) lt!2159498)))

(declare-fun b!5283724 () Bool)

(assert (=> b!5283724 (= e!3285220 e!3285221)))

(declare-fun c!916124 () Bool)

(assert (=> b!5283724 (= c!916124 (isEmpty!32856 lt!2159397))))

(declare-fun b!5283731 () Bool)

(assert (=> b!5283731 (= e!3285219 (isEmpty!32856 (t!374229 lt!2159397)))))

(declare-fun b!5283732 () Bool)

(assert (=> b!5283732 (= e!3285218 (isConcat!359 lt!2159498))))

(assert (= (and d!1700214 res!2240881) b!5283731))

(assert (= (and d!1700214 c!916122) b!5283730))

(assert (= (and d!1700214 (not c!916122)) b!5283723))

(assert (= (and b!5283723 c!916123) b!5283726))

(assert (= (and b!5283723 (not c!916123)) b!5283725))

(assert (= (and d!1700214 res!2240882) b!5283724))

(assert (= (and b!5283724 c!916124) b!5283727))

(assert (= (and b!5283724 (not c!916124)) b!5283729))

(assert (= (and b!5283729 c!916121) b!5283728))

(assert (= (and b!5283729 (not c!916121)) b!5283732))

(declare-fun m!6321498 () Bool)

(assert (=> b!5283727 m!6321498))

(declare-fun m!6321500 () Bool)

(assert (=> b!5283726 m!6321500))

(declare-fun m!6321502 () Bool)

(assert (=> b!5283731 m!6321502))

(declare-fun m!6321504 () Bool)

(assert (=> b!5283729 m!6321504))

(assert (=> b!5283729 m!6321504))

(declare-fun m!6321506 () Bool)

(assert (=> b!5283729 m!6321506))

(declare-fun m!6321508 () Bool)

(assert (=> b!5283724 m!6321508))

(declare-fun m!6321510 () Bool)

(assert (=> b!5283732 m!6321510))

(declare-fun m!6321512 () Bool)

(assert (=> d!1700214 m!6321512))

(declare-fun m!6321516 () Bool)

(assert (=> d!1700214 m!6321516))

(declare-fun m!6321518 () Bool)

(assert (=> b!5283728 m!6321518))

(assert (=> b!5283104 d!1700214))

(declare-fun d!1700220 () Bool)

(assert (=> d!1700220 (= (matchR!7094 lt!2159369 s!2326) (matchZipper!1153 lt!2159381 s!2326))))

(declare-fun lt!2159501 () Unit!153154)

(assert (=> d!1700220 (= lt!2159501 (choose!39437 lt!2159381 lt!2159377 lt!2159369 s!2326))))

(assert (=> d!1700220 (validRegex!6645 lt!2159369)))

(assert (=> d!1700220 (= (theoremZipperRegexEquiv!319 lt!2159381 lt!2159377 lt!2159369 s!2326) lt!2159501)))

(declare-fun bs!1224665 () Bool)

(assert (= bs!1224665 d!1700220))

(assert (=> bs!1224665 m!6320882))

(assert (=> bs!1224665 m!6320880))

(declare-fun m!6321520 () Bool)

(assert (=> bs!1224665 m!6321520))

(assert (=> bs!1224665 m!6321384))

(assert (=> b!5283104 d!1700220))

(declare-fun bs!1224683 () Bool)

(declare-fun b!5283846 () Bool)

(assert (= bs!1224683 (and b!5283846 b!5283086)))

(declare-fun lambda!267061 () Int)

(assert (=> bs!1224683 (not (= lambda!267061 lambda!266992))))

(assert (=> bs!1224683 (not (= lambda!267061 lambda!266993))))

(assert (=> b!5283846 true))

(assert (=> b!5283846 true))

(declare-fun bs!1224684 () Bool)

(declare-fun b!5283844 () Bool)

(assert (= bs!1224684 (and b!5283844 b!5283086)))

(declare-fun lambda!267062 () Int)

(assert (=> bs!1224684 (not (= lambda!267062 lambda!266992))))

(assert (=> bs!1224684 (= (and (= (regOne!30330 lt!2159369) (regOne!30330 r!7292)) (= (regTwo!30330 lt!2159369) (regTwo!30330 r!7292))) (= lambda!267062 lambda!266993))))

(declare-fun bs!1224685 () Bool)

(assert (= bs!1224685 (and b!5283844 b!5283846)))

(assert (=> bs!1224685 (not (= lambda!267062 lambda!267061))))

(assert (=> b!5283844 true))

(assert (=> b!5283844 true))

(declare-fun b!5283836 () Bool)

(declare-fun e!3285278 () Bool)

(assert (=> b!5283836 (= e!3285278 (= s!2326 (Cons!60904 (c!915917 lt!2159369) Nil!60904)))))

(declare-fun b!5283837 () Bool)

(declare-fun e!3285277 () Bool)

(declare-fun call!376329 () Bool)

(assert (=> b!5283837 (= e!3285277 call!376329)))

(declare-fun b!5283838 () Bool)

(declare-fun res!2240900 () Bool)

(declare-fun e!3285279 () Bool)

(assert (=> b!5283838 (=> res!2240900 e!3285279)))

(assert (=> b!5283838 (= res!2240900 call!376329)))

(declare-fun e!3285275 () Bool)

(assert (=> b!5283838 (= e!3285275 e!3285279)))

(declare-fun b!5283839 () Bool)

(declare-fun e!3285273 () Bool)

(assert (=> b!5283839 (= e!3285273 (matchRSpec!2012 (regTwo!30331 lt!2159369) s!2326))))

(declare-fun b!5283840 () Bool)

(declare-fun c!916145 () Bool)

(assert (=> b!5283840 (= c!916145 ((_ is ElementMatch!14909) lt!2159369))))

(declare-fun e!3285276 () Bool)

(assert (=> b!5283840 (= e!3285276 e!3285278)))

(declare-fun d!1700222 () Bool)

(declare-fun c!916144 () Bool)

(assert (=> d!1700222 (= c!916144 ((_ is EmptyExpr!14909) lt!2159369))))

(assert (=> d!1700222 (= (matchRSpec!2012 lt!2159369 s!2326) e!3285277)))

(declare-fun b!5283841 () Bool)

(declare-fun c!916142 () Bool)

(assert (=> b!5283841 (= c!916142 ((_ is Union!14909) lt!2159369))))

(declare-fun e!3285274 () Bool)

(assert (=> b!5283841 (= e!3285278 e!3285274)))

(declare-fun b!5283842 () Bool)

(assert (=> b!5283842 (= e!3285274 e!3285275)))

(declare-fun c!916143 () Bool)

(assert (=> b!5283842 (= c!916143 ((_ is Star!14909) lt!2159369))))

(declare-fun b!5283843 () Bool)

(assert (=> b!5283843 (= e!3285274 e!3285273)))

(declare-fun res!2240902 () Bool)

(assert (=> b!5283843 (= res!2240902 (matchRSpec!2012 (regOne!30331 lt!2159369) s!2326))))

(assert (=> b!5283843 (=> res!2240902 e!3285273)))

(declare-fun bm!376323 () Bool)

(assert (=> bm!376323 (= call!376329 (isEmpty!32859 s!2326))))

(declare-fun call!376328 () Bool)

(assert (=> b!5283844 (= e!3285275 call!376328)))

(declare-fun bm!376324 () Bool)

(assert (=> bm!376324 (= call!376328 (Exists!2090 (ite c!916143 lambda!267061 lambda!267062)))))

(declare-fun b!5283845 () Bool)

(assert (=> b!5283845 (= e!3285277 e!3285276)))

(declare-fun res!2240901 () Bool)

(assert (=> b!5283845 (= res!2240901 (not ((_ is EmptyLang!14909) lt!2159369)))))

(assert (=> b!5283845 (=> (not res!2240901) (not e!3285276))))

(assert (=> b!5283846 (= e!3285279 call!376328)))

(assert (= (and d!1700222 c!916144) b!5283837))

(assert (= (and d!1700222 (not c!916144)) b!5283845))

(assert (= (and b!5283845 res!2240901) b!5283840))

(assert (= (and b!5283840 c!916145) b!5283836))

(assert (= (and b!5283840 (not c!916145)) b!5283841))

(assert (= (and b!5283841 c!916142) b!5283843))

(assert (= (and b!5283841 (not c!916142)) b!5283842))

(assert (= (and b!5283843 (not res!2240902)) b!5283839))

(assert (= (and b!5283842 c!916143) b!5283838))

(assert (= (and b!5283842 (not c!916143)) b!5283844))

(assert (= (and b!5283838 (not res!2240900)) b!5283846))

(assert (= (or b!5283846 b!5283844) bm!376324))

(assert (= (or b!5283837 b!5283838) bm!376323))

(declare-fun m!6321552 () Bool)

(assert (=> b!5283839 m!6321552))

(declare-fun m!6321554 () Bool)

(assert (=> b!5283843 m!6321554))

(assert (=> bm!376323 m!6321446))

(declare-fun m!6321556 () Bool)

(assert (=> bm!376324 m!6321556))

(assert (=> b!5283104 d!1700222))

(declare-fun b!5283847 () Bool)

(declare-fun e!3285282 () Bool)

(declare-fun lt!2159507 () Bool)

(declare-fun call!376330 () Bool)

(assert (=> b!5283847 (= e!3285282 (= lt!2159507 call!376330))))

(declare-fun b!5283848 () Bool)

(declare-fun res!2240904 () Bool)

(declare-fun e!3285281 () Bool)

(assert (=> b!5283848 (=> (not res!2240904) (not e!3285281))))

(assert (=> b!5283848 (= res!2240904 (isEmpty!32859 (tail!10419 s!2326)))))

(declare-fun b!5283849 () Bool)

(declare-fun res!2240903 () Bool)

(declare-fun e!3285284 () Bool)

(assert (=> b!5283849 (=> res!2240903 e!3285284)))

(assert (=> b!5283849 (= res!2240903 e!3285281)))

(declare-fun res!2240905 () Bool)

(assert (=> b!5283849 (=> (not res!2240905) (not e!3285281))))

(assert (=> b!5283849 (= res!2240905 lt!2159507)))

(declare-fun d!1700244 () Bool)

(assert (=> d!1700244 e!3285282))

(declare-fun c!916148 () Bool)

(assert (=> d!1700244 (= c!916148 ((_ is EmptyExpr!14909) lt!2159369))))

(declare-fun e!3285286 () Bool)

(assert (=> d!1700244 (= lt!2159507 e!3285286)))

(declare-fun c!916147 () Bool)

(assert (=> d!1700244 (= c!916147 (isEmpty!32859 s!2326))))

(assert (=> d!1700244 (validRegex!6645 lt!2159369)))

(assert (=> d!1700244 (= (matchR!7094 lt!2159369 s!2326) lt!2159507)))

(declare-fun b!5283850 () Bool)

(declare-fun res!2240909 () Bool)

(assert (=> b!5283850 (=> res!2240909 e!3285284)))

(assert (=> b!5283850 (= res!2240909 (not ((_ is ElementMatch!14909) lt!2159369)))))

(declare-fun e!3285280 () Bool)

(assert (=> b!5283850 (= e!3285280 e!3285284)))

(declare-fun b!5283851 () Bool)

(declare-fun e!3285285 () Bool)

(declare-fun e!3285283 () Bool)

(assert (=> b!5283851 (= e!3285285 e!3285283)))

(declare-fun res!2240908 () Bool)

(assert (=> b!5283851 (=> res!2240908 e!3285283)))

(assert (=> b!5283851 (= res!2240908 call!376330)))

(declare-fun b!5283852 () Bool)

(declare-fun res!2240906 () Bool)

(assert (=> b!5283852 (=> res!2240906 e!3285283)))

(assert (=> b!5283852 (= res!2240906 (not (isEmpty!32859 (tail!10419 s!2326))))))

(declare-fun b!5283853 () Bool)

(assert (=> b!5283853 (= e!3285281 (= (head!11322 s!2326) (c!915917 lt!2159369)))))

(declare-fun bm!376325 () Bool)

(assert (=> bm!376325 (= call!376330 (isEmpty!32859 s!2326))))

(declare-fun b!5283854 () Bool)

(assert (=> b!5283854 (= e!3285280 (not lt!2159507))))

(declare-fun b!5283855 () Bool)

(assert (=> b!5283855 (= e!3285286 (matchR!7094 (derivativeStep!4123 lt!2159369 (head!11322 s!2326)) (tail!10419 s!2326)))))

(declare-fun b!5283856 () Bool)

(assert (=> b!5283856 (= e!3285286 (nullable!5078 lt!2159369))))

(declare-fun b!5283857 () Bool)

(assert (=> b!5283857 (= e!3285282 e!3285280)))

(declare-fun c!916146 () Bool)

(assert (=> b!5283857 (= c!916146 ((_ is EmptyLang!14909) lt!2159369))))

(declare-fun b!5283858 () Bool)

(assert (=> b!5283858 (= e!3285284 e!3285285)))

(declare-fun res!2240910 () Bool)

(assert (=> b!5283858 (=> (not res!2240910) (not e!3285285))))

(assert (=> b!5283858 (= res!2240910 (not lt!2159507))))

(declare-fun b!5283859 () Bool)

(assert (=> b!5283859 (= e!3285283 (not (= (head!11322 s!2326) (c!915917 lt!2159369))))))

(declare-fun b!5283860 () Bool)

(declare-fun res!2240907 () Bool)

(assert (=> b!5283860 (=> (not res!2240907) (not e!3285281))))

(assert (=> b!5283860 (= res!2240907 (not call!376330))))

(assert (= (and d!1700244 c!916147) b!5283856))

(assert (= (and d!1700244 (not c!916147)) b!5283855))

(assert (= (and d!1700244 c!916148) b!5283847))

(assert (= (and d!1700244 (not c!916148)) b!5283857))

(assert (= (and b!5283857 c!916146) b!5283854))

(assert (= (and b!5283857 (not c!916146)) b!5283850))

(assert (= (and b!5283850 (not res!2240909)) b!5283849))

(assert (= (and b!5283849 res!2240905) b!5283860))

(assert (= (and b!5283860 res!2240907) b!5283848))

(assert (= (and b!5283848 res!2240904) b!5283853))

(assert (= (and b!5283849 (not res!2240903)) b!5283858))

(assert (= (and b!5283858 res!2240910) b!5283851))

(assert (= (and b!5283851 (not res!2240908)) b!5283852))

(assert (= (and b!5283852 (not res!2240906)) b!5283859))

(assert (= (or b!5283847 b!5283851 b!5283860) bm!376325))

(declare-fun m!6321558 () Bool)

(assert (=> b!5283856 m!6321558))

(assert (=> b!5283848 m!6321432))

(assert (=> b!5283848 m!6321432))

(assert (=> b!5283848 m!6321434))

(assert (=> b!5283859 m!6321438))

(assert (=> b!5283855 m!6321438))

(assert (=> b!5283855 m!6321438))

(declare-fun m!6321560 () Bool)

(assert (=> b!5283855 m!6321560))

(assert (=> b!5283855 m!6321432))

(assert (=> b!5283855 m!6321560))

(assert (=> b!5283855 m!6321432))

(declare-fun m!6321562 () Bool)

(assert (=> b!5283855 m!6321562))

(assert (=> d!1700244 m!6321446))

(assert (=> d!1700244 m!6321384))

(assert (=> b!5283853 m!6321438))

(assert (=> b!5283852 m!6321432))

(assert (=> b!5283852 m!6321432))

(assert (=> b!5283852 m!6321434))

(assert (=> bm!376325 m!6321446))

(assert (=> b!5283104 d!1700244))

(declare-fun d!1700246 () Bool)

(declare-fun res!2240915 () Bool)

(declare-fun e!3285291 () Bool)

(assert (=> d!1700246 (=> res!2240915 e!3285291)))

(assert (=> d!1700246 (= res!2240915 ((_ is Nil!60902) lt!2159397))))

(assert (=> d!1700246 (= (forall!14317 lt!2159397 lambda!266995) e!3285291)))

(declare-fun b!5283865 () Bool)

(declare-fun e!3285292 () Bool)

(assert (=> b!5283865 (= e!3285291 e!3285292)))

(declare-fun res!2240916 () Bool)

(assert (=> b!5283865 (=> (not res!2240916) (not e!3285292))))

(declare-fun dynLambda!24081 (Int Regex!14909) Bool)

(assert (=> b!5283865 (= res!2240916 (dynLambda!24081 lambda!266995 (h!67350 lt!2159397)))))

(declare-fun b!5283866 () Bool)

(assert (=> b!5283866 (= e!3285292 (forall!14317 (t!374229 lt!2159397) lambda!266995))))

(assert (= (and d!1700246 (not res!2240915)) b!5283865))

(assert (= (and b!5283865 res!2240916) b!5283866))

(declare-fun b_lambda!203839 () Bool)

(assert (=> (not b_lambda!203839) (not b!5283865)))

(declare-fun m!6321564 () Bool)

(assert (=> b!5283865 m!6321564))

(declare-fun m!6321566 () Bool)

(assert (=> b!5283866 m!6321566))

(assert (=> b!5283104 d!1700246))

(declare-fun bs!1224686 () Bool)

(declare-fun d!1700248 () Bool)

(assert (= bs!1224686 (and d!1700248 d!1700178)))

(declare-fun lambda!267065 () Int)

(assert (=> bs!1224686 (= lambda!267065 lambda!267045)))

(declare-fun bs!1224687 () Bool)

(assert (= bs!1224687 (and d!1700248 b!5283104)))

(assert (=> bs!1224687 (= lambda!267065 lambda!266995)))

(declare-fun bs!1224688 () Bool)

(assert (= bs!1224688 (and d!1700248 d!1700118)))

(assert (=> bs!1224688 (= lambda!267065 lambda!267031)))

(declare-fun bs!1224689 () Bool)

(assert (= bs!1224689 (and d!1700248 d!1700102)))

(assert (=> bs!1224689 (= lambda!267065 lambda!267028)))

(declare-fun bs!1224690 () Bool)

(assert (= bs!1224690 (and d!1700248 d!1700214)))

(assert (=> bs!1224690 (= lambda!267065 lambda!267054)))

(assert (=> d!1700248 (= (inv!80519 setElem!33875) (forall!14317 (exprs!4793 setElem!33875) lambda!267065))))

(declare-fun bs!1224691 () Bool)

(assert (= bs!1224691 d!1700248))

(declare-fun m!6321568 () Bool)

(assert (=> bs!1224691 m!6321568))

(assert (=> setNonEmpty!33875 d!1700248))

(declare-fun bs!1224692 () Bool)

(declare-fun d!1700250 () Bool)

(assert (= bs!1224692 (and d!1700250 d!1700178)))

(declare-fun lambda!267066 () Int)

(assert (=> bs!1224692 (= lambda!267066 lambda!267045)))

(declare-fun bs!1224693 () Bool)

(assert (= bs!1224693 (and d!1700250 b!5283104)))

(assert (=> bs!1224693 (= lambda!267066 lambda!266995)))

(declare-fun bs!1224694 () Bool)

(assert (= bs!1224694 (and d!1700250 d!1700248)))

(assert (=> bs!1224694 (= lambda!267066 lambda!267065)))

(declare-fun bs!1224695 () Bool)

(assert (= bs!1224695 (and d!1700250 d!1700118)))

(assert (=> bs!1224695 (= lambda!267066 lambda!267031)))

(declare-fun bs!1224696 () Bool)

(assert (= bs!1224696 (and d!1700250 d!1700102)))

(assert (=> bs!1224696 (= lambda!267066 lambda!267028)))

(declare-fun bs!1224697 () Bool)

(assert (= bs!1224697 (and d!1700250 d!1700214)))

(assert (=> bs!1224697 (= lambda!267066 lambda!267054)))

(declare-fun b!5283867 () Bool)

(declare-fun e!3285298 () Regex!14909)

(declare-fun e!3285293 () Regex!14909)

(assert (=> b!5283867 (= e!3285298 e!3285293)))

(declare-fun c!916151 () Bool)

(assert (=> b!5283867 (= c!916151 ((_ is Cons!60902) (exprs!4793 (h!67351 zl!343))))))

(declare-fun b!5283869 () Bool)

(assert (=> b!5283869 (= e!3285293 EmptyExpr!14909)))

(declare-fun b!5283870 () Bool)

(assert (=> b!5283870 (= e!3285293 (Concat!23754 (h!67350 (exprs!4793 (h!67351 zl!343))) (generalisedConcat!578 (t!374229 (exprs!4793 (h!67351 zl!343))))))))

(declare-fun b!5283871 () Bool)

(declare-fun e!3285297 () Bool)

(declare-fun lt!2159508 () Regex!14909)

(assert (=> b!5283871 (= e!3285297 (isEmptyExpr!836 lt!2159508))))

(declare-fun b!5283872 () Bool)

(declare-fun e!3285294 () Bool)

(assert (=> b!5283872 (= e!3285294 (= lt!2159508 (head!11323 (exprs!4793 (h!67351 zl!343)))))))

(declare-fun b!5283873 () Bool)

(assert (=> b!5283873 (= e!3285297 e!3285294)))

(declare-fun c!916149 () Bool)

(assert (=> b!5283873 (= c!916149 (isEmpty!32856 (tail!10420 (exprs!4793 (h!67351 zl!343)))))))

(declare-fun b!5283874 () Bool)

(assert (=> b!5283874 (= e!3285298 (h!67350 (exprs!4793 (h!67351 zl!343))))))

(declare-fun e!3285296 () Bool)

(assert (=> d!1700250 e!3285296))

(declare-fun res!2240918 () Bool)

(assert (=> d!1700250 (=> (not res!2240918) (not e!3285296))))

(assert (=> d!1700250 (= res!2240918 (validRegex!6645 lt!2159508))))

(assert (=> d!1700250 (= lt!2159508 e!3285298)))

(declare-fun c!916150 () Bool)

(declare-fun e!3285295 () Bool)

(assert (=> d!1700250 (= c!916150 e!3285295)))

(declare-fun res!2240917 () Bool)

(assert (=> d!1700250 (=> (not res!2240917) (not e!3285295))))

(assert (=> d!1700250 (= res!2240917 ((_ is Cons!60902) (exprs!4793 (h!67351 zl!343))))))

(assert (=> d!1700250 (forall!14317 (exprs!4793 (h!67351 zl!343)) lambda!267066)))

(assert (=> d!1700250 (= (generalisedConcat!578 (exprs!4793 (h!67351 zl!343))) lt!2159508)))

(declare-fun b!5283868 () Bool)

(assert (=> b!5283868 (= e!3285296 e!3285297)))

(declare-fun c!916152 () Bool)

(assert (=> b!5283868 (= c!916152 (isEmpty!32856 (exprs!4793 (h!67351 zl!343))))))

(declare-fun b!5283875 () Bool)

(assert (=> b!5283875 (= e!3285295 (isEmpty!32856 (t!374229 (exprs!4793 (h!67351 zl!343)))))))

(declare-fun b!5283876 () Bool)

(assert (=> b!5283876 (= e!3285294 (isConcat!359 lt!2159508))))

(assert (= (and d!1700250 res!2240917) b!5283875))

(assert (= (and d!1700250 c!916150) b!5283874))

(assert (= (and d!1700250 (not c!916150)) b!5283867))

(assert (= (and b!5283867 c!916151) b!5283870))

(assert (= (and b!5283867 (not c!916151)) b!5283869))

(assert (= (and d!1700250 res!2240918) b!5283868))

(assert (= (and b!5283868 c!916152) b!5283871))

(assert (= (and b!5283868 (not c!916152)) b!5283873))

(assert (= (and b!5283873 c!916149) b!5283872))

(assert (= (and b!5283873 (not c!916149)) b!5283876))

(declare-fun m!6321570 () Bool)

(assert (=> b!5283871 m!6321570))

(declare-fun m!6321572 () Bool)

(assert (=> b!5283870 m!6321572))

(assert (=> b!5283875 m!6320898))

(declare-fun m!6321574 () Bool)

(assert (=> b!5283873 m!6321574))

(assert (=> b!5283873 m!6321574))

(declare-fun m!6321576 () Bool)

(assert (=> b!5283873 m!6321576))

(declare-fun m!6321578 () Bool)

(assert (=> b!5283868 m!6321578))

(declare-fun m!6321580 () Bool)

(assert (=> b!5283876 m!6321580))

(declare-fun m!6321582 () Bool)

(assert (=> d!1700250 m!6321582))

(declare-fun m!6321584 () Bool)

(assert (=> d!1700250 m!6321584))

(declare-fun m!6321586 () Bool)

(assert (=> b!5283872 m!6321586))

(assert (=> b!5283105 d!1700250))

(declare-fun bm!376338 () Bool)

(declare-fun c!916165 () Bool)

(declare-fun call!376344 () List!61026)

(declare-fun call!376347 () (InoxSet Context!8586))

(assert (=> bm!376338 (= call!376347 (derivationStepZipperDown!357 (ite c!916165 (regTwo!30331 (h!67350 (exprs!4793 (h!67351 zl!343)))) (regOne!30330 (h!67350 (exprs!4793 (h!67351 zl!343))))) (ite c!916165 lt!2159370 (Context!8587 call!376344)) (h!67352 s!2326)))))

(declare-fun b!5283899 () Bool)

(declare-fun e!3285316 () (InoxSet Context!8586))

(assert (=> b!5283899 (= e!3285316 (store ((as const (Array Context!8586 Bool)) false) lt!2159370 true))))

(declare-fun bm!376339 () Bool)

(declare-fun call!376345 () List!61026)

(assert (=> bm!376339 (= call!376345 call!376344)))

(declare-fun b!5283901 () Bool)

(declare-fun e!3285313 () (InoxSet Context!8586))

(declare-fun call!376348 () (InoxSet Context!8586))

(assert (=> b!5283901 (= e!3285313 call!376348)))

(declare-fun bm!376340 () Bool)

(declare-fun call!376343 () (InoxSet Context!8586))

(declare-fun call!376346 () (InoxSet Context!8586))

(assert (=> bm!376340 (= call!376343 call!376346)))

(declare-fun b!5283902 () Bool)

(declare-fun c!916167 () Bool)

(declare-fun e!3285315 () Bool)

(assert (=> b!5283902 (= c!916167 e!3285315)))

(declare-fun res!2240921 () Bool)

(assert (=> b!5283902 (=> (not res!2240921) (not e!3285315))))

(assert (=> b!5283902 (= res!2240921 ((_ is Concat!23754) (h!67350 (exprs!4793 (h!67351 zl!343)))))))

(declare-fun e!3285312 () (InoxSet Context!8586))

(declare-fun e!3285311 () (InoxSet Context!8586))

(assert (=> b!5283902 (= e!3285312 e!3285311)))

(declare-fun b!5283903 () Bool)

(declare-fun c!916163 () Bool)

(assert (=> b!5283903 (= c!916163 ((_ is Star!14909) (h!67350 (exprs!4793 (h!67351 zl!343)))))))

(declare-fun e!3285314 () (InoxSet Context!8586))

(assert (=> b!5283903 (= e!3285313 e!3285314)))

(declare-fun b!5283904 () Bool)

(assert (=> b!5283904 (= e!3285311 e!3285313)))

(declare-fun c!916166 () Bool)

(assert (=> b!5283904 (= c!916166 ((_ is Concat!23754) (h!67350 (exprs!4793 (h!67351 zl!343)))))))

(declare-fun b!5283905 () Bool)

(assert (=> b!5283905 (= e!3285314 call!376348)))

(declare-fun b!5283906 () Bool)

(assert (=> b!5283906 (= e!3285316 e!3285312)))

(assert (=> b!5283906 (= c!916165 ((_ is Union!14909) (h!67350 (exprs!4793 (h!67351 zl!343)))))))

(declare-fun bm!376341 () Bool)

(declare-fun $colon$colon!1352 (List!61026 Regex!14909) List!61026)

(assert (=> bm!376341 (= call!376344 ($colon$colon!1352 (exprs!4793 lt!2159370) (ite (or c!916167 c!916166) (regTwo!30330 (h!67350 (exprs!4793 (h!67351 zl!343)))) (h!67350 (exprs!4793 (h!67351 zl!343))))))))

(declare-fun bm!376342 () Bool)

(assert (=> bm!376342 (= call!376346 (derivationStepZipperDown!357 (ite c!916165 (regOne!30331 (h!67350 (exprs!4793 (h!67351 zl!343)))) (ite c!916167 (regTwo!30330 (h!67350 (exprs!4793 (h!67351 zl!343)))) (ite c!916166 (regOne!30330 (h!67350 (exprs!4793 (h!67351 zl!343)))) (reg!15238 (h!67350 (exprs!4793 (h!67351 zl!343))))))) (ite (or c!916165 c!916167) lt!2159370 (Context!8587 call!376345)) (h!67352 s!2326)))))

(declare-fun b!5283900 () Bool)

(assert (=> b!5283900 (= e!3285315 (nullable!5078 (regOne!30330 (h!67350 (exprs!4793 (h!67351 zl!343))))))))

(declare-fun d!1700252 () Bool)

(declare-fun c!916164 () Bool)

(assert (=> d!1700252 (= c!916164 (and ((_ is ElementMatch!14909) (h!67350 (exprs!4793 (h!67351 zl!343)))) (= (c!915917 (h!67350 (exprs!4793 (h!67351 zl!343)))) (h!67352 s!2326))))))

(assert (=> d!1700252 (= (derivationStepZipperDown!357 (h!67350 (exprs!4793 (h!67351 zl!343))) lt!2159370 (h!67352 s!2326)) e!3285316)))

(declare-fun bm!376343 () Bool)

(assert (=> bm!376343 (= call!376348 call!376343)))

(declare-fun b!5283907 () Bool)

(assert (=> b!5283907 (= e!3285314 ((as const (Array Context!8586 Bool)) false))))

(declare-fun b!5283908 () Bool)

(assert (=> b!5283908 (= e!3285311 ((_ map or) call!376347 call!376343))))

(declare-fun b!5283909 () Bool)

(assert (=> b!5283909 (= e!3285312 ((_ map or) call!376346 call!376347))))

(assert (= (and d!1700252 c!916164) b!5283899))

(assert (= (and d!1700252 (not c!916164)) b!5283906))

(assert (= (and b!5283906 c!916165) b!5283909))

(assert (= (and b!5283906 (not c!916165)) b!5283902))

(assert (= (and b!5283902 res!2240921) b!5283900))

(assert (= (and b!5283902 c!916167) b!5283908))

(assert (= (and b!5283902 (not c!916167)) b!5283904))

(assert (= (and b!5283904 c!916166) b!5283901))

(assert (= (and b!5283904 (not c!916166)) b!5283903))

(assert (= (and b!5283903 c!916163) b!5283905))

(assert (= (and b!5283903 (not c!916163)) b!5283907))

(assert (= (or b!5283901 b!5283905) bm!376339))

(assert (= (or b!5283901 b!5283905) bm!376343))

(assert (= (or b!5283908 bm!376339) bm!376341))

(assert (= (or b!5283908 bm!376343) bm!376340))

(assert (= (or b!5283909 b!5283908) bm!376338))

(assert (= (or b!5283909 bm!376340) bm!376342))

(declare-fun m!6321588 () Bool)

(assert (=> bm!376338 m!6321588))

(declare-fun m!6321590 () Bool)

(assert (=> b!5283899 m!6321590))

(declare-fun m!6321592 () Bool)

(assert (=> bm!376342 m!6321592))

(declare-fun m!6321594 () Bool)

(assert (=> bm!376341 m!6321594))

(declare-fun m!6321596 () Bool)

(assert (=> b!5283900 m!6321596))

(assert (=> b!5283087 d!1700252))

(declare-fun d!1700254 () Bool)

(declare-fun nullableFct!1454 (Regex!14909) Bool)

(assert (=> d!1700254 (= (nullable!5078 (h!67350 (exprs!4793 (h!67351 zl!343)))) (nullableFct!1454 (h!67350 (exprs!4793 (h!67351 zl!343)))))))

(declare-fun bs!1224698 () Bool)

(assert (= bs!1224698 d!1700254))

(declare-fun m!6321598 () Bool)

(assert (=> bs!1224698 m!6321598))

(assert (=> b!5283087 d!1700254))

(declare-fun d!1700256 () Bool)

(assert (=> d!1700256 (= (flatMap!636 z!1189 lambda!266994) (choose!39432 z!1189 lambda!266994))))

(declare-fun bs!1224699 () Bool)

(assert (= bs!1224699 d!1700256))

(declare-fun m!6321600 () Bool)

(assert (=> bs!1224699 m!6321600))

(assert (=> b!5283087 d!1700256))

(declare-fun b!5283910 () Bool)

(declare-fun e!3285318 () Bool)

(assert (=> b!5283910 (= e!3285318 (nullable!5078 (h!67350 (exprs!4793 (h!67351 zl!343)))))))

(declare-fun b!5283911 () Bool)

(declare-fun e!3285319 () (InoxSet Context!8586))

(declare-fun call!376349 () (InoxSet Context!8586))

(assert (=> b!5283911 (= e!3285319 call!376349)))

(declare-fun d!1700258 () Bool)

(declare-fun c!916169 () Bool)

(assert (=> d!1700258 (= c!916169 e!3285318)))

(declare-fun res!2240922 () Bool)

(assert (=> d!1700258 (=> (not res!2240922) (not e!3285318))))

(assert (=> d!1700258 (= res!2240922 ((_ is Cons!60902) (exprs!4793 (h!67351 zl!343))))))

(declare-fun e!3285317 () (InoxSet Context!8586))

(assert (=> d!1700258 (= (derivationStepZipperUp!281 (h!67351 zl!343) (h!67352 s!2326)) e!3285317)))

(declare-fun b!5283912 () Bool)

(assert (=> b!5283912 (= e!3285317 e!3285319)))

(declare-fun c!916168 () Bool)

(assert (=> b!5283912 (= c!916168 ((_ is Cons!60902) (exprs!4793 (h!67351 zl!343))))))

(declare-fun b!5283913 () Bool)

(assert (=> b!5283913 (= e!3285317 ((_ map or) call!376349 (derivationStepZipperUp!281 (Context!8587 (t!374229 (exprs!4793 (h!67351 zl!343)))) (h!67352 s!2326))))))

(declare-fun b!5283914 () Bool)

(assert (=> b!5283914 (= e!3285319 ((as const (Array Context!8586 Bool)) false))))

(declare-fun bm!376344 () Bool)

(assert (=> bm!376344 (= call!376349 (derivationStepZipperDown!357 (h!67350 (exprs!4793 (h!67351 zl!343))) (Context!8587 (t!374229 (exprs!4793 (h!67351 zl!343)))) (h!67352 s!2326)))))

(assert (= (and d!1700258 res!2240922) b!5283910))

(assert (= (and d!1700258 c!916169) b!5283913))

(assert (= (and d!1700258 (not c!916169)) b!5283912))

(assert (= (and b!5283912 c!916168) b!5283911))

(assert (= (and b!5283912 (not c!916168)) b!5283914))

(assert (= (or b!5283913 b!5283911) bm!376344))

(assert (=> b!5283910 m!6320934))

(declare-fun m!6321602 () Bool)

(assert (=> b!5283913 m!6321602))

(declare-fun m!6321604 () Bool)

(assert (=> bm!376344 m!6321604))

(assert (=> b!5283087 d!1700258))

(declare-fun d!1700260 () Bool)

(assert (=> d!1700260 (= (flatMap!636 z!1189 lambda!266994) (dynLambda!24079 lambda!266994 (h!67351 zl!343)))))

(declare-fun lt!2159509 () Unit!153154)

(assert (=> d!1700260 (= lt!2159509 (choose!39433 z!1189 (h!67351 zl!343) lambda!266994))))

(assert (=> d!1700260 (= z!1189 (store ((as const (Array Context!8586 Bool)) false) (h!67351 zl!343) true))))

(assert (=> d!1700260 (= (lemmaFlatMapOnSingletonSet!168 z!1189 (h!67351 zl!343) lambda!266994) lt!2159509)))

(declare-fun b_lambda!203841 () Bool)

(assert (=> (not b_lambda!203841) (not d!1700260)))

(declare-fun bs!1224700 () Bool)

(assert (= bs!1224700 d!1700260))

(assert (=> bs!1224700 m!6320940))

(declare-fun m!6321606 () Bool)

(assert (=> bs!1224700 m!6321606))

(declare-fun m!6321608 () Bool)

(assert (=> bs!1224700 m!6321608))

(declare-fun m!6321610 () Bool)

(assert (=> bs!1224700 m!6321610))

(assert (=> b!5283087 d!1700260))

(declare-fun b!5283915 () Bool)

(declare-fun e!3285321 () Bool)

(assert (=> b!5283915 (= e!3285321 (nullable!5078 (h!67350 (exprs!4793 lt!2159370))))))

(declare-fun b!5283916 () Bool)

(declare-fun e!3285322 () (InoxSet Context!8586))

(declare-fun call!376350 () (InoxSet Context!8586))

(assert (=> b!5283916 (= e!3285322 call!376350)))

(declare-fun d!1700262 () Bool)

(declare-fun c!916171 () Bool)

(assert (=> d!1700262 (= c!916171 e!3285321)))

(declare-fun res!2240923 () Bool)

(assert (=> d!1700262 (=> (not res!2240923) (not e!3285321))))

(assert (=> d!1700262 (= res!2240923 ((_ is Cons!60902) (exprs!4793 lt!2159370)))))

(declare-fun e!3285320 () (InoxSet Context!8586))

(assert (=> d!1700262 (= (derivationStepZipperUp!281 lt!2159370 (h!67352 s!2326)) e!3285320)))

(declare-fun b!5283917 () Bool)

(assert (=> b!5283917 (= e!3285320 e!3285322)))

(declare-fun c!916170 () Bool)

(assert (=> b!5283917 (= c!916170 ((_ is Cons!60902) (exprs!4793 lt!2159370)))))

(declare-fun b!5283918 () Bool)

(assert (=> b!5283918 (= e!3285320 ((_ map or) call!376350 (derivationStepZipperUp!281 (Context!8587 (t!374229 (exprs!4793 lt!2159370))) (h!67352 s!2326))))))

(declare-fun b!5283919 () Bool)

(assert (=> b!5283919 (= e!3285322 ((as const (Array Context!8586 Bool)) false))))

(declare-fun bm!376345 () Bool)

(assert (=> bm!376345 (= call!376350 (derivationStepZipperDown!357 (h!67350 (exprs!4793 lt!2159370)) (Context!8587 (t!374229 (exprs!4793 lt!2159370))) (h!67352 s!2326)))))

(assert (= (and d!1700262 res!2240923) b!5283915))

(assert (= (and d!1700262 c!916171) b!5283918))

(assert (= (and d!1700262 (not c!916171)) b!5283917))

(assert (= (and b!5283917 c!916170) b!5283916))

(assert (= (and b!5283917 (not c!916170)) b!5283919))

(assert (= (or b!5283918 b!5283916) bm!376345))

(declare-fun m!6321612 () Bool)

(assert (=> b!5283915 m!6321612))

(declare-fun m!6321614 () Bool)

(assert (=> b!5283918 m!6321614))

(declare-fun m!6321616 () Bool)

(assert (=> bm!376345 m!6321616))

(assert (=> b!5283087 d!1700262))

(declare-fun b!5283920 () Bool)

(declare-fun e!3285324 () Bool)

(assert (=> b!5283920 (= e!3285324 (nullable!5078 (h!67350 (exprs!4793 (Context!8587 (Cons!60902 (h!67350 (exprs!4793 (h!67351 zl!343))) (t!374229 (exprs!4793 (h!67351 zl!343)))))))))))

(declare-fun b!5283921 () Bool)

(declare-fun e!3285325 () (InoxSet Context!8586))

(declare-fun call!376351 () (InoxSet Context!8586))

(assert (=> b!5283921 (= e!3285325 call!376351)))

(declare-fun d!1700264 () Bool)

(declare-fun c!916173 () Bool)

(assert (=> d!1700264 (= c!916173 e!3285324)))

(declare-fun res!2240924 () Bool)

(assert (=> d!1700264 (=> (not res!2240924) (not e!3285324))))

(assert (=> d!1700264 (= res!2240924 ((_ is Cons!60902) (exprs!4793 (Context!8587 (Cons!60902 (h!67350 (exprs!4793 (h!67351 zl!343))) (t!374229 (exprs!4793 (h!67351 zl!343))))))))))

(declare-fun e!3285323 () (InoxSet Context!8586))

(assert (=> d!1700264 (= (derivationStepZipperUp!281 (Context!8587 (Cons!60902 (h!67350 (exprs!4793 (h!67351 zl!343))) (t!374229 (exprs!4793 (h!67351 zl!343))))) (h!67352 s!2326)) e!3285323)))

(declare-fun b!5283922 () Bool)

(assert (=> b!5283922 (= e!3285323 e!3285325)))

(declare-fun c!916172 () Bool)

(assert (=> b!5283922 (= c!916172 ((_ is Cons!60902) (exprs!4793 (Context!8587 (Cons!60902 (h!67350 (exprs!4793 (h!67351 zl!343))) (t!374229 (exprs!4793 (h!67351 zl!343))))))))))

(declare-fun b!5283923 () Bool)

(assert (=> b!5283923 (= e!3285323 ((_ map or) call!376351 (derivationStepZipperUp!281 (Context!8587 (t!374229 (exprs!4793 (Context!8587 (Cons!60902 (h!67350 (exprs!4793 (h!67351 zl!343))) (t!374229 (exprs!4793 (h!67351 zl!343)))))))) (h!67352 s!2326))))))

(declare-fun b!5283924 () Bool)

(assert (=> b!5283924 (= e!3285325 ((as const (Array Context!8586 Bool)) false))))

(declare-fun bm!376346 () Bool)

(assert (=> bm!376346 (= call!376351 (derivationStepZipperDown!357 (h!67350 (exprs!4793 (Context!8587 (Cons!60902 (h!67350 (exprs!4793 (h!67351 zl!343))) (t!374229 (exprs!4793 (h!67351 zl!343))))))) (Context!8587 (t!374229 (exprs!4793 (Context!8587 (Cons!60902 (h!67350 (exprs!4793 (h!67351 zl!343))) (t!374229 (exprs!4793 (h!67351 zl!343)))))))) (h!67352 s!2326)))))

(assert (= (and d!1700264 res!2240924) b!5283920))

(assert (= (and d!1700264 c!916173) b!5283923))

(assert (= (and d!1700264 (not c!916173)) b!5283922))

(assert (= (and b!5283922 c!916172) b!5283921))

(assert (= (and b!5283922 (not c!916172)) b!5283924))

(assert (= (or b!5283923 b!5283921) bm!376346))

(declare-fun m!6321618 () Bool)

(assert (=> b!5283920 m!6321618))

(declare-fun m!6321620 () Bool)

(assert (=> b!5283923 m!6321620))

(declare-fun m!6321622 () Bool)

(assert (=> bm!376346 m!6321622))

(assert (=> b!5283087 d!1700264))

(declare-fun bs!1224701 () Bool)

(declare-fun d!1700266 () Bool)

(assert (= bs!1224701 (and d!1700266 d!1700178)))

(declare-fun lambda!267067 () Int)

(assert (=> bs!1224701 (= lambda!267067 lambda!267045)))

(declare-fun bs!1224702 () Bool)

(assert (= bs!1224702 (and d!1700266 d!1700250)))

(assert (=> bs!1224702 (= lambda!267067 lambda!267066)))

(declare-fun bs!1224703 () Bool)

(assert (= bs!1224703 (and d!1700266 b!5283104)))

(assert (=> bs!1224703 (= lambda!267067 lambda!266995)))

(declare-fun bs!1224704 () Bool)

(assert (= bs!1224704 (and d!1700266 d!1700248)))

(assert (=> bs!1224704 (= lambda!267067 lambda!267065)))

(declare-fun bs!1224705 () Bool)

(assert (= bs!1224705 (and d!1700266 d!1700118)))

(assert (=> bs!1224705 (= lambda!267067 lambda!267031)))

(declare-fun bs!1224706 () Bool)

(assert (= bs!1224706 (and d!1700266 d!1700102)))

(assert (=> bs!1224706 (= lambda!267067 lambda!267028)))

(declare-fun bs!1224707 () Bool)

(assert (= bs!1224707 (and d!1700266 d!1700214)))

(assert (=> bs!1224707 (= lambda!267067 lambda!267054)))

(assert (=> d!1700266 (= (inv!80519 (h!67351 zl!343)) (forall!14317 (exprs!4793 (h!67351 zl!343)) lambda!267067))))

(declare-fun bs!1224708 () Bool)

(assert (= bs!1224708 d!1700266))

(declare-fun m!6321624 () Bool)

(assert (=> bs!1224708 m!6321624))

(assert (=> b!5283107 d!1700266))

(declare-fun b!5283943 () Bool)

(declare-fun e!3285336 () Option!15020)

(assert (=> b!5283943 (= e!3285336 None!15019)))

(declare-fun b!5283944 () Bool)

(declare-fun e!3285337 () Bool)

(declare-fun lt!2159518 () Option!15020)

(declare-fun ++!13282 (List!61028 List!61028) List!61028)

(declare-fun get!20942 (Option!15020) tuple2!64216)

(assert (=> b!5283944 (= e!3285337 (= (++!13282 (_1!35411 (get!20942 lt!2159518)) (_2!35411 (get!20942 lt!2159518))) s!2326))))

(declare-fun b!5283945 () Bool)

(declare-fun res!2240935 () Bool)

(assert (=> b!5283945 (=> (not res!2240935) (not e!3285337))))

(assert (=> b!5283945 (= res!2240935 (matchR!7094 (regOne!30330 r!7292) (_1!35411 (get!20942 lt!2159518))))))

(declare-fun b!5283946 () Bool)

(declare-fun res!2240937 () Bool)

(assert (=> b!5283946 (=> (not res!2240937) (not e!3285337))))

(assert (=> b!5283946 (= res!2240937 (matchR!7094 (regTwo!30330 r!7292) (_2!35411 (get!20942 lt!2159518))))))

(declare-fun d!1700268 () Bool)

(declare-fun e!3285338 () Bool)

(assert (=> d!1700268 e!3285338))

(declare-fun res!2240939 () Bool)

(assert (=> d!1700268 (=> res!2240939 e!3285338)))

(assert (=> d!1700268 (= res!2240939 e!3285337)))

(declare-fun res!2240938 () Bool)

(assert (=> d!1700268 (=> (not res!2240938) (not e!3285337))))

(assert (=> d!1700268 (= res!2240938 (isDefined!11723 lt!2159518))))

(declare-fun e!3285340 () Option!15020)

(assert (=> d!1700268 (= lt!2159518 e!3285340)))

(declare-fun c!916179 () Bool)

(declare-fun e!3285339 () Bool)

(assert (=> d!1700268 (= c!916179 e!3285339)))

(declare-fun res!2240936 () Bool)

(assert (=> d!1700268 (=> (not res!2240936) (not e!3285339))))

(assert (=> d!1700268 (= res!2240936 (matchR!7094 (regOne!30330 r!7292) Nil!60904))))

(assert (=> d!1700268 (validRegex!6645 (regOne!30330 r!7292))))

(assert (=> d!1700268 (= (findConcatSeparation!1434 (regOne!30330 r!7292) (regTwo!30330 r!7292) Nil!60904 s!2326 s!2326) lt!2159518)))

(declare-fun b!5283947 () Bool)

(assert (=> b!5283947 (= e!3285340 (Some!15019 (tuple2!64217 Nil!60904 s!2326)))))

(declare-fun b!5283948 () Bool)

(declare-fun lt!2159516 () Unit!153154)

(declare-fun lt!2159517 () Unit!153154)

(assert (=> b!5283948 (= lt!2159516 lt!2159517)))

(assert (=> b!5283948 (= (++!13282 (++!13282 Nil!60904 (Cons!60904 (h!67352 s!2326) Nil!60904)) (t!374231 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1697 (List!61028 C!30088 List!61028 List!61028) Unit!153154)

(assert (=> b!5283948 (= lt!2159517 (lemmaMoveElementToOtherListKeepsConcatEq!1697 Nil!60904 (h!67352 s!2326) (t!374231 s!2326) s!2326))))

(assert (=> b!5283948 (= e!3285336 (findConcatSeparation!1434 (regOne!30330 r!7292) (regTwo!30330 r!7292) (++!13282 Nil!60904 (Cons!60904 (h!67352 s!2326) Nil!60904)) (t!374231 s!2326) s!2326))))

(declare-fun b!5283949 () Bool)

(assert (=> b!5283949 (= e!3285340 e!3285336)))

(declare-fun c!916178 () Bool)

(assert (=> b!5283949 (= c!916178 ((_ is Nil!60904) s!2326))))

(declare-fun b!5283950 () Bool)

(assert (=> b!5283950 (= e!3285339 (matchR!7094 (regTwo!30330 r!7292) s!2326))))

(declare-fun b!5283951 () Bool)

(assert (=> b!5283951 (= e!3285338 (not (isDefined!11723 lt!2159518)))))

(assert (= (and d!1700268 res!2240936) b!5283950))

(assert (= (and d!1700268 c!916179) b!5283947))

(assert (= (and d!1700268 (not c!916179)) b!5283949))

(assert (= (and b!5283949 c!916178) b!5283943))

(assert (= (and b!5283949 (not c!916178)) b!5283948))

(assert (= (and d!1700268 res!2240938) b!5283945))

(assert (= (and b!5283945 res!2240935) b!5283946))

(assert (= (and b!5283946 res!2240937) b!5283944))

(assert (= (and d!1700268 (not res!2240939)) b!5283951))

(declare-fun m!6321626 () Bool)

(assert (=> b!5283946 m!6321626))

(declare-fun m!6321628 () Bool)

(assert (=> b!5283946 m!6321628))

(assert (=> b!5283944 m!6321626))

(declare-fun m!6321630 () Bool)

(assert (=> b!5283944 m!6321630))

(assert (=> b!5283945 m!6321626))

(declare-fun m!6321632 () Bool)

(assert (=> b!5283945 m!6321632))

(declare-fun m!6321634 () Bool)

(assert (=> b!5283948 m!6321634))

(assert (=> b!5283948 m!6321634))

(declare-fun m!6321636 () Bool)

(assert (=> b!5283948 m!6321636))

(declare-fun m!6321638 () Bool)

(assert (=> b!5283948 m!6321638))

(assert (=> b!5283948 m!6321634))

(declare-fun m!6321640 () Bool)

(assert (=> b!5283948 m!6321640))

(declare-fun m!6321642 () Bool)

(assert (=> b!5283950 m!6321642))

(declare-fun m!6321644 () Bool)

(assert (=> d!1700268 m!6321644))

(declare-fun m!6321646 () Bool)

(assert (=> d!1700268 m!6321646))

(declare-fun m!6321648 () Bool)

(assert (=> d!1700268 m!6321648))

(assert (=> b!5283951 m!6321644))

(assert (=> b!5283086 d!1700268))

(declare-fun d!1700270 () Bool)

(declare-fun choose!39439 (Int) Bool)

(assert (=> d!1700270 (= (Exists!2090 lambda!266993) (choose!39439 lambda!266993))))

(declare-fun bs!1224709 () Bool)

(assert (= bs!1224709 d!1700270))

(declare-fun m!6321650 () Bool)

(assert (=> bs!1224709 m!6321650))

(assert (=> b!5283086 d!1700270))

(declare-fun d!1700272 () Bool)

(assert (=> d!1700272 (= (Exists!2090 lambda!266992) (choose!39439 lambda!266992))))

(declare-fun bs!1224710 () Bool)

(assert (= bs!1224710 d!1700272))

(declare-fun m!6321652 () Bool)

(assert (=> bs!1224710 m!6321652))

(assert (=> b!5283086 d!1700272))

(declare-fun bs!1224711 () Bool)

(declare-fun d!1700274 () Bool)

(assert (= bs!1224711 (and d!1700274 b!5283086)))

(declare-fun lambda!267070 () Int)

(assert (=> bs!1224711 (= lambda!267070 lambda!266992)))

(assert (=> bs!1224711 (not (= lambda!267070 lambda!266993))))

(declare-fun bs!1224712 () Bool)

(assert (= bs!1224712 (and d!1700274 b!5283846)))

(assert (=> bs!1224712 (not (= lambda!267070 lambda!267061))))

(declare-fun bs!1224713 () Bool)

(assert (= bs!1224713 (and d!1700274 b!5283844)))

(assert (=> bs!1224713 (not (= lambda!267070 lambda!267062))))

(assert (=> d!1700274 true))

(assert (=> d!1700274 true))

(assert (=> d!1700274 true))

(assert (=> d!1700274 (= (isDefined!11723 (findConcatSeparation!1434 (regOne!30330 r!7292) (regTwo!30330 r!7292) Nil!60904 s!2326 s!2326)) (Exists!2090 lambda!267070))))

(declare-fun lt!2159521 () Unit!153154)

(declare-fun choose!39440 (Regex!14909 Regex!14909 List!61028) Unit!153154)

(assert (=> d!1700274 (= lt!2159521 (choose!39440 (regOne!30330 r!7292) (regTwo!30330 r!7292) s!2326))))

(assert (=> d!1700274 (validRegex!6645 (regOne!30330 r!7292))))

(assert (=> d!1700274 (= (lemmaFindConcatSeparationEquivalentToExists!1198 (regOne!30330 r!7292) (regTwo!30330 r!7292) s!2326) lt!2159521)))

(declare-fun bs!1224714 () Bool)

(assert (= bs!1224714 d!1700274))

(declare-fun m!6321654 () Bool)

(assert (=> bs!1224714 m!6321654))

(assert (=> bs!1224714 m!6320974))

(declare-fun m!6321656 () Bool)

(assert (=> bs!1224714 m!6321656))

(assert (=> bs!1224714 m!6321648))

(assert (=> bs!1224714 m!6320974))

(assert (=> bs!1224714 m!6320976))

(assert (=> b!5283086 d!1700274))

(declare-fun bs!1224715 () Bool)

(declare-fun d!1700276 () Bool)

(assert (= bs!1224715 (and d!1700276 b!5283086)))

(declare-fun lambda!267075 () Int)

(assert (=> bs!1224715 (not (= lambda!267075 lambda!266993))))

(declare-fun bs!1224716 () Bool)

(assert (= bs!1224716 (and d!1700276 b!5283846)))

(assert (=> bs!1224716 (not (= lambda!267075 lambda!267061))))

(declare-fun bs!1224717 () Bool)

(assert (= bs!1224717 (and d!1700276 d!1700274)))

(assert (=> bs!1224717 (= lambda!267075 lambda!267070)))

(assert (=> bs!1224715 (= lambda!267075 lambda!266992)))

(declare-fun bs!1224718 () Bool)

(assert (= bs!1224718 (and d!1700276 b!5283844)))

(assert (=> bs!1224718 (not (= lambda!267075 lambda!267062))))

(assert (=> d!1700276 true))

(assert (=> d!1700276 true))

(assert (=> d!1700276 true))

(declare-fun lambda!267076 () Int)

(assert (=> bs!1224715 (= lambda!267076 lambda!266993)))

(assert (=> bs!1224716 (not (= lambda!267076 lambda!267061))))

(assert (=> bs!1224717 (not (= lambda!267076 lambda!267070))))

(declare-fun bs!1224719 () Bool)

(assert (= bs!1224719 d!1700276))

(assert (=> bs!1224719 (not (= lambda!267076 lambda!267075))))

(assert (=> bs!1224715 (not (= lambda!267076 lambda!266992))))

(assert (=> bs!1224718 (= (and (= (regOne!30330 r!7292) (regOne!30330 lt!2159369)) (= (regTwo!30330 r!7292) (regTwo!30330 lt!2159369))) (= lambda!267076 lambda!267062))))

(assert (=> d!1700276 true))

(assert (=> d!1700276 true))

(assert (=> d!1700276 true))

(assert (=> d!1700276 (= (Exists!2090 lambda!267075) (Exists!2090 lambda!267076))))

(declare-fun lt!2159524 () Unit!153154)

(declare-fun choose!39441 (Regex!14909 Regex!14909 List!61028) Unit!153154)

(assert (=> d!1700276 (= lt!2159524 (choose!39441 (regOne!30330 r!7292) (regTwo!30330 r!7292) s!2326))))

(assert (=> d!1700276 (validRegex!6645 (regOne!30330 r!7292))))

(assert (=> d!1700276 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!744 (regOne!30330 r!7292) (regTwo!30330 r!7292) s!2326) lt!2159524)))

(declare-fun m!6321658 () Bool)

(assert (=> bs!1224719 m!6321658))

(declare-fun m!6321660 () Bool)

(assert (=> bs!1224719 m!6321660))

(declare-fun m!6321662 () Bool)

(assert (=> bs!1224719 m!6321662))

(assert (=> bs!1224719 m!6321648))

(assert (=> b!5283086 d!1700276))

(declare-fun d!1700278 () Bool)

(declare-fun isEmpty!32860 (Option!15020) Bool)

(assert (=> d!1700278 (= (isDefined!11723 (findConcatSeparation!1434 (regOne!30330 r!7292) (regTwo!30330 r!7292) Nil!60904 s!2326 s!2326)) (not (isEmpty!32860 (findConcatSeparation!1434 (regOne!30330 r!7292) (regTwo!30330 r!7292) Nil!60904 s!2326 s!2326))))))

(declare-fun bs!1224720 () Bool)

(assert (= bs!1224720 d!1700278))

(assert (=> bs!1224720 m!6320974))

(declare-fun m!6321664 () Bool)

(assert (=> bs!1224720 m!6321664))

(assert (=> b!5283086 d!1700278))

(declare-fun bs!1224721 () Bool)

(declare-fun b!5283974 () Bool)

(assert (= bs!1224721 (and b!5283974 b!5283086)))

(declare-fun lambda!267077 () Int)

(assert (=> bs!1224721 (not (= lambda!267077 lambda!266993))))

(declare-fun bs!1224722 () Bool)

(assert (= bs!1224722 (and b!5283974 b!5283846)))

(assert (=> bs!1224722 (= (and (= (reg!15238 r!7292) (reg!15238 lt!2159369)) (= r!7292 lt!2159369)) (= lambda!267077 lambda!267061))))

(declare-fun bs!1224723 () Bool)

(assert (= bs!1224723 (and b!5283974 d!1700276)))

(assert (=> bs!1224723 (not (= lambda!267077 lambda!267076))))

(declare-fun bs!1224724 () Bool)

(assert (= bs!1224724 (and b!5283974 d!1700274)))

(assert (=> bs!1224724 (not (= lambda!267077 lambda!267070))))

(assert (=> bs!1224723 (not (= lambda!267077 lambda!267075))))

(assert (=> bs!1224721 (not (= lambda!267077 lambda!266992))))

(declare-fun bs!1224725 () Bool)

(assert (= bs!1224725 (and b!5283974 b!5283844)))

(assert (=> bs!1224725 (not (= lambda!267077 lambda!267062))))

(assert (=> b!5283974 true))

(assert (=> b!5283974 true))

(declare-fun bs!1224726 () Bool)

(declare-fun b!5283972 () Bool)

(assert (= bs!1224726 (and b!5283972 b!5283086)))

(declare-fun lambda!267078 () Int)

(assert (=> bs!1224726 (= lambda!267078 lambda!266993)))

(declare-fun bs!1224727 () Bool)

(assert (= bs!1224727 (and b!5283972 b!5283974)))

(assert (=> bs!1224727 (not (= lambda!267078 lambda!267077))))

(declare-fun bs!1224728 () Bool)

(assert (= bs!1224728 (and b!5283972 b!5283846)))

(assert (=> bs!1224728 (not (= lambda!267078 lambda!267061))))

(declare-fun bs!1224729 () Bool)

(assert (= bs!1224729 (and b!5283972 d!1700276)))

(assert (=> bs!1224729 (= lambda!267078 lambda!267076)))

(declare-fun bs!1224730 () Bool)

(assert (= bs!1224730 (and b!5283972 d!1700274)))

(assert (=> bs!1224730 (not (= lambda!267078 lambda!267070))))

(assert (=> bs!1224729 (not (= lambda!267078 lambda!267075))))

(assert (=> bs!1224726 (not (= lambda!267078 lambda!266992))))

(declare-fun bs!1224731 () Bool)

(assert (= bs!1224731 (and b!5283972 b!5283844)))

(assert (=> bs!1224731 (= (and (= (regOne!30330 r!7292) (regOne!30330 lt!2159369)) (= (regTwo!30330 r!7292) (regTwo!30330 lt!2159369))) (= lambda!267078 lambda!267062))))

(assert (=> b!5283972 true))

(assert (=> b!5283972 true))

(declare-fun b!5283964 () Bool)

(declare-fun e!3285352 () Bool)

(assert (=> b!5283964 (= e!3285352 (= s!2326 (Cons!60904 (c!915917 r!7292) Nil!60904)))))

(declare-fun b!5283965 () Bool)

(declare-fun e!3285351 () Bool)

(declare-fun call!376353 () Bool)

(assert (=> b!5283965 (= e!3285351 call!376353)))

(declare-fun b!5283966 () Bool)

(declare-fun res!2240952 () Bool)

(declare-fun e!3285353 () Bool)

(assert (=> b!5283966 (=> res!2240952 e!3285353)))

(assert (=> b!5283966 (= res!2240952 call!376353)))

(declare-fun e!3285349 () Bool)

(assert (=> b!5283966 (= e!3285349 e!3285353)))

(declare-fun b!5283967 () Bool)

(declare-fun e!3285347 () Bool)

(assert (=> b!5283967 (= e!3285347 (matchRSpec!2012 (regTwo!30331 r!7292) s!2326))))

(declare-fun b!5283968 () Bool)

(declare-fun c!916183 () Bool)

(assert (=> b!5283968 (= c!916183 ((_ is ElementMatch!14909) r!7292))))

(declare-fun e!3285350 () Bool)

(assert (=> b!5283968 (= e!3285350 e!3285352)))

(declare-fun d!1700280 () Bool)

(declare-fun c!916182 () Bool)

(assert (=> d!1700280 (= c!916182 ((_ is EmptyExpr!14909) r!7292))))

(assert (=> d!1700280 (= (matchRSpec!2012 r!7292 s!2326) e!3285351)))

(declare-fun b!5283969 () Bool)

(declare-fun c!916180 () Bool)

(assert (=> b!5283969 (= c!916180 ((_ is Union!14909) r!7292))))

(declare-fun e!3285348 () Bool)

(assert (=> b!5283969 (= e!3285352 e!3285348)))

(declare-fun b!5283970 () Bool)

(assert (=> b!5283970 (= e!3285348 e!3285349)))

(declare-fun c!916181 () Bool)

(assert (=> b!5283970 (= c!916181 ((_ is Star!14909) r!7292))))

(declare-fun b!5283971 () Bool)

(assert (=> b!5283971 (= e!3285348 e!3285347)))

(declare-fun res!2240954 () Bool)

(assert (=> b!5283971 (= res!2240954 (matchRSpec!2012 (regOne!30331 r!7292) s!2326))))

(assert (=> b!5283971 (=> res!2240954 e!3285347)))

(declare-fun bm!376347 () Bool)

(assert (=> bm!376347 (= call!376353 (isEmpty!32859 s!2326))))

(declare-fun call!376352 () Bool)

(assert (=> b!5283972 (= e!3285349 call!376352)))

(declare-fun bm!376348 () Bool)

(assert (=> bm!376348 (= call!376352 (Exists!2090 (ite c!916181 lambda!267077 lambda!267078)))))

(declare-fun b!5283973 () Bool)

(assert (=> b!5283973 (= e!3285351 e!3285350)))

(declare-fun res!2240953 () Bool)

(assert (=> b!5283973 (= res!2240953 (not ((_ is EmptyLang!14909) r!7292)))))

(assert (=> b!5283973 (=> (not res!2240953) (not e!3285350))))

(assert (=> b!5283974 (= e!3285353 call!376352)))

(assert (= (and d!1700280 c!916182) b!5283965))

(assert (= (and d!1700280 (not c!916182)) b!5283973))

(assert (= (and b!5283973 res!2240953) b!5283968))

(assert (= (and b!5283968 c!916183) b!5283964))

(assert (= (and b!5283968 (not c!916183)) b!5283969))

(assert (= (and b!5283969 c!916180) b!5283971))

(assert (= (and b!5283969 (not c!916180)) b!5283970))

(assert (= (and b!5283971 (not res!2240954)) b!5283967))

(assert (= (and b!5283970 c!916181) b!5283966))

(assert (= (and b!5283970 (not c!916181)) b!5283972))

(assert (= (and b!5283966 (not res!2240952)) b!5283974))

(assert (= (or b!5283974 b!5283972) bm!376348))

(assert (= (or b!5283965 b!5283966) bm!376347))

(declare-fun m!6321666 () Bool)

(assert (=> b!5283967 m!6321666))

(declare-fun m!6321668 () Bool)

(assert (=> b!5283971 m!6321668))

(assert (=> bm!376347 m!6321446))

(declare-fun m!6321670 () Bool)

(assert (=> bm!376348 m!6321670))

(assert (=> b!5283100 d!1700280))

(declare-fun b!5283975 () Bool)

(declare-fun e!3285356 () Bool)

(declare-fun lt!2159525 () Bool)

(declare-fun call!376354 () Bool)

(assert (=> b!5283975 (= e!3285356 (= lt!2159525 call!376354))))

(declare-fun b!5283976 () Bool)

(declare-fun res!2240956 () Bool)

(declare-fun e!3285355 () Bool)

(assert (=> b!5283976 (=> (not res!2240956) (not e!3285355))))

(assert (=> b!5283976 (= res!2240956 (isEmpty!32859 (tail!10419 s!2326)))))

(declare-fun b!5283977 () Bool)

(declare-fun res!2240955 () Bool)

(declare-fun e!3285358 () Bool)

(assert (=> b!5283977 (=> res!2240955 e!3285358)))

(assert (=> b!5283977 (= res!2240955 e!3285355)))

(declare-fun res!2240957 () Bool)

(assert (=> b!5283977 (=> (not res!2240957) (not e!3285355))))

(assert (=> b!5283977 (= res!2240957 lt!2159525)))

(declare-fun d!1700282 () Bool)

(assert (=> d!1700282 e!3285356))

(declare-fun c!916186 () Bool)

(assert (=> d!1700282 (= c!916186 ((_ is EmptyExpr!14909) r!7292))))

(declare-fun e!3285360 () Bool)

(assert (=> d!1700282 (= lt!2159525 e!3285360)))

(declare-fun c!916185 () Bool)

(assert (=> d!1700282 (= c!916185 (isEmpty!32859 s!2326))))

(assert (=> d!1700282 (validRegex!6645 r!7292)))

(assert (=> d!1700282 (= (matchR!7094 r!7292 s!2326) lt!2159525)))

(declare-fun b!5283978 () Bool)

(declare-fun res!2240961 () Bool)

(assert (=> b!5283978 (=> res!2240961 e!3285358)))

(assert (=> b!5283978 (= res!2240961 (not ((_ is ElementMatch!14909) r!7292)))))

(declare-fun e!3285354 () Bool)

(assert (=> b!5283978 (= e!3285354 e!3285358)))

(declare-fun b!5283979 () Bool)

(declare-fun e!3285359 () Bool)

(declare-fun e!3285357 () Bool)

(assert (=> b!5283979 (= e!3285359 e!3285357)))

(declare-fun res!2240960 () Bool)

(assert (=> b!5283979 (=> res!2240960 e!3285357)))

(assert (=> b!5283979 (= res!2240960 call!376354)))

(declare-fun b!5283980 () Bool)

(declare-fun res!2240958 () Bool)

(assert (=> b!5283980 (=> res!2240958 e!3285357)))

(assert (=> b!5283980 (= res!2240958 (not (isEmpty!32859 (tail!10419 s!2326))))))

(declare-fun b!5283981 () Bool)

(assert (=> b!5283981 (= e!3285355 (= (head!11322 s!2326) (c!915917 r!7292)))))

(declare-fun bm!376349 () Bool)

(assert (=> bm!376349 (= call!376354 (isEmpty!32859 s!2326))))

(declare-fun b!5283982 () Bool)

(assert (=> b!5283982 (= e!3285354 (not lt!2159525))))

(declare-fun b!5283983 () Bool)

(assert (=> b!5283983 (= e!3285360 (matchR!7094 (derivativeStep!4123 r!7292 (head!11322 s!2326)) (tail!10419 s!2326)))))

(declare-fun b!5283984 () Bool)

(assert (=> b!5283984 (= e!3285360 (nullable!5078 r!7292))))

(declare-fun b!5283985 () Bool)

(assert (=> b!5283985 (= e!3285356 e!3285354)))

(declare-fun c!916184 () Bool)

(assert (=> b!5283985 (= c!916184 ((_ is EmptyLang!14909) r!7292))))

(declare-fun b!5283986 () Bool)

(assert (=> b!5283986 (= e!3285358 e!3285359)))

(declare-fun res!2240962 () Bool)

(assert (=> b!5283986 (=> (not res!2240962) (not e!3285359))))

(assert (=> b!5283986 (= res!2240962 (not lt!2159525))))

(declare-fun b!5283987 () Bool)

(assert (=> b!5283987 (= e!3285357 (not (= (head!11322 s!2326) (c!915917 r!7292))))))

(declare-fun b!5283988 () Bool)

(declare-fun res!2240959 () Bool)

(assert (=> b!5283988 (=> (not res!2240959) (not e!3285355))))

(assert (=> b!5283988 (= res!2240959 (not call!376354))))

(assert (= (and d!1700282 c!916185) b!5283984))

(assert (= (and d!1700282 (not c!916185)) b!5283983))

(assert (= (and d!1700282 c!916186) b!5283975))

(assert (= (and d!1700282 (not c!916186)) b!5283985))

(assert (= (and b!5283985 c!916184) b!5283982))

(assert (= (and b!5283985 (not c!916184)) b!5283978))

(assert (= (and b!5283978 (not res!2240961)) b!5283977))

(assert (= (and b!5283977 res!2240957) b!5283988))

(assert (= (and b!5283988 res!2240959) b!5283976))

(assert (= (and b!5283976 res!2240956) b!5283981))

(assert (= (and b!5283977 (not res!2240955)) b!5283986))

(assert (= (and b!5283986 res!2240962) b!5283979))

(assert (= (and b!5283979 (not res!2240960)) b!5283980))

(assert (= (and b!5283980 (not res!2240958)) b!5283987))

(assert (= (or b!5283975 b!5283979 b!5283988) bm!376349))

(declare-fun m!6321672 () Bool)

(assert (=> b!5283984 m!6321672))

(assert (=> b!5283976 m!6321432))

(assert (=> b!5283976 m!6321432))

(assert (=> b!5283976 m!6321434))

(assert (=> b!5283987 m!6321438))

(assert (=> b!5283983 m!6321438))

(assert (=> b!5283983 m!6321438))

(declare-fun m!6321674 () Bool)

(assert (=> b!5283983 m!6321674))

(assert (=> b!5283983 m!6321432))

(assert (=> b!5283983 m!6321674))

(assert (=> b!5283983 m!6321432))

(declare-fun m!6321676 () Bool)

(assert (=> b!5283983 m!6321676))

(assert (=> d!1700282 m!6321446))

(assert (=> d!1700282 m!6320926))

(assert (=> b!5283981 m!6321438))

(assert (=> b!5283980 m!6321432))

(assert (=> b!5283980 m!6321432))

(assert (=> b!5283980 m!6321434))

(assert (=> bm!376349 m!6321446))

(assert (=> b!5283100 d!1700282))

(declare-fun d!1700284 () Bool)

(assert (=> d!1700284 (= (matchR!7094 r!7292 s!2326) (matchRSpec!2012 r!7292 s!2326))))

(declare-fun lt!2159526 () Unit!153154)

(assert (=> d!1700284 (= lt!2159526 (choose!39436 r!7292 s!2326))))

(assert (=> d!1700284 (validRegex!6645 r!7292)))

(assert (=> d!1700284 (= (mainMatchTheorem!2012 r!7292 s!2326) lt!2159526)))

(declare-fun bs!1224732 () Bool)

(assert (= bs!1224732 d!1700284))

(assert (=> bs!1224732 m!6320864))

(assert (=> bs!1224732 m!6320862))

(declare-fun m!6321678 () Bool)

(assert (=> bs!1224732 m!6321678))

(assert (=> bs!1224732 m!6320926))

(assert (=> b!5283100 d!1700284))

(declare-fun b!5283995 () Bool)

(assert (=> b!5283995 true))

(declare-fun bs!1224733 () Bool)

(declare-fun b!5283997 () Bool)

(assert (= bs!1224733 (and b!5283997 b!5283995)))

(declare-fun lt!2159538 () Int)

(declare-fun lambda!267087 () Int)

(declare-fun lt!2159536 () Int)

(declare-fun lambda!267086 () Int)

(assert (=> bs!1224733 (= (= lt!2159536 lt!2159538) (= lambda!267087 lambda!267086))))

(assert (=> b!5283997 true))

(declare-fun d!1700286 () Bool)

(declare-fun e!3285366 () Bool)

(assert (=> d!1700286 e!3285366))

(declare-fun res!2240965 () Bool)

(assert (=> d!1700286 (=> (not res!2240965) (not e!3285366))))

(assert (=> d!1700286 (= res!2240965 (>= lt!2159536 0))))

(declare-fun e!3285365 () Int)

(assert (=> d!1700286 (= lt!2159536 e!3285365)))

(declare-fun c!916195 () Bool)

(assert (=> d!1700286 (= c!916195 ((_ is Cons!60903) lt!2159377))))

(assert (=> d!1700286 (= (zipperDepth!26 lt!2159377) lt!2159536)))

(assert (=> b!5283995 (= e!3285365 lt!2159538)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!14 (Context!8586) Int)

(assert (=> b!5283995 (= lt!2159538 (maxBigInt!0 (contextDepth!14 (h!67351 lt!2159377)) (zipperDepth!26 (t!374230 lt!2159377))))))

(declare-fun lambda!267085 () Int)

(declare-fun lt!2159537 () Unit!153154)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!8 (List!61027 Int Int Int) Unit!153154)

(assert (=> b!5283995 (= lt!2159537 (lemmaForallContextDepthBiggerThanTransitive!8 (t!374230 lt!2159377) lt!2159538 (zipperDepth!26 (t!374230 lt!2159377)) lambda!267085))))

(declare-fun forall!14319 (List!61027 Int) Bool)

(assert (=> b!5283995 (forall!14319 (t!374230 lt!2159377) lambda!267086)))

(declare-fun lt!2159535 () Unit!153154)

(assert (=> b!5283995 (= lt!2159535 lt!2159537)))

(declare-fun b!5283996 () Bool)

(assert (=> b!5283996 (= e!3285365 0)))

(assert (=> b!5283997 (= e!3285366 (forall!14319 lt!2159377 lambda!267087))))

(assert (= (and d!1700286 c!916195) b!5283995))

(assert (= (and d!1700286 (not c!916195)) b!5283996))

(assert (= (and d!1700286 res!2240965) b!5283997))

(declare-fun m!6321680 () Bool)

(assert (=> b!5283995 m!6321680))

(declare-fun m!6321682 () Bool)

(assert (=> b!5283995 m!6321682))

(declare-fun m!6321684 () Bool)

(assert (=> b!5283995 m!6321684))

(declare-fun m!6321686 () Bool)

(assert (=> b!5283995 m!6321686))

(assert (=> b!5283995 m!6321682))

(declare-fun m!6321688 () Bool)

(assert (=> b!5283995 m!6321688))

(assert (=> b!5283995 m!6321682))

(assert (=> b!5283995 m!6321686))

(declare-fun m!6321690 () Bool)

(assert (=> b!5283997 m!6321690))

(assert (=> b!5283103 d!1700286))

(declare-fun bs!1224734 () Bool)

(declare-fun b!5284000 () Bool)

(assert (= bs!1224734 (and b!5284000 b!5283995)))

(declare-fun lambda!267088 () Int)

(assert (=> bs!1224734 (= lambda!267088 lambda!267085)))

(declare-fun lambda!267089 () Int)

(declare-fun lt!2159542 () Int)

(assert (=> bs!1224734 (= (= lt!2159542 lt!2159538) (= lambda!267089 lambda!267086))))

(declare-fun bs!1224735 () Bool)

(assert (= bs!1224735 (and b!5284000 b!5283997)))

(assert (=> bs!1224735 (= (= lt!2159542 lt!2159536) (= lambda!267089 lambda!267087))))

(assert (=> b!5284000 true))

(declare-fun bs!1224736 () Bool)

(declare-fun b!5284002 () Bool)

(assert (= bs!1224736 (and b!5284002 b!5283995)))

(declare-fun lt!2159540 () Int)

(declare-fun lambda!267090 () Int)

(assert (=> bs!1224736 (= (= lt!2159540 lt!2159538) (= lambda!267090 lambda!267086))))

(declare-fun bs!1224737 () Bool)

(assert (= bs!1224737 (and b!5284002 b!5283997)))

(assert (=> bs!1224737 (= (= lt!2159540 lt!2159536) (= lambda!267090 lambda!267087))))

(declare-fun bs!1224738 () Bool)

(assert (= bs!1224738 (and b!5284002 b!5284000)))

(assert (=> bs!1224738 (= (= lt!2159540 lt!2159542) (= lambda!267090 lambda!267089))))

(assert (=> b!5284002 true))

(declare-fun d!1700288 () Bool)

(declare-fun e!3285368 () Bool)

(assert (=> d!1700288 e!3285368))

(declare-fun res!2240966 () Bool)

(assert (=> d!1700288 (=> (not res!2240966) (not e!3285368))))

(assert (=> d!1700288 (= res!2240966 (>= lt!2159540 0))))

(declare-fun e!3285367 () Int)

(assert (=> d!1700288 (= lt!2159540 e!3285367)))

(declare-fun c!916196 () Bool)

(assert (=> d!1700288 (= c!916196 ((_ is Cons!60903) zl!343))))

(assert (=> d!1700288 (= (zipperDepth!26 zl!343) lt!2159540)))

(assert (=> b!5284000 (= e!3285367 lt!2159542)))

(assert (=> b!5284000 (= lt!2159542 (maxBigInt!0 (contextDepth!14 (h!67351 zl!343)) (zipperDepth!26 (t!374230 zl!343))))))

(declare-fun lt!2159541 () Unit!153154)

(assert (=> b!5284000 (= lt!2159541 (lemmaForallContextDepthBiggerThanTransitive!8 (t!374230 zl!343) lt!2159542 (zipperDepth!26 (t!374230 zl!343)) lambda!267088))))

(assert (=> b!5284000 (forall!14319 (t!374230 zl!343) lambda!267089)))

(declare-fun lt!2159539 () Unit!153154)

(assert (=> b!5284000 (= lt!2159539 lt!2159541)))

(declare-fun b!5284001 () Bool)

(assert (=> b!5284001 (= e!3285367 0)))

(assert (=> b!5284002 (= e!3285368 (forall!14319 zl!343 lambda!267090))))

(assert (= (and d!1700288 c!916196) b!5284000))

(assert (= (and d!1700288 (not c!916196)) b!5284001))

(assert (= (and d!1700288 res!2240966) b!5284002))

(declare-fun m!6321692 () Bool)

(assert (=> b!5284000 m!6321692))

(declare-fun m!6321694 () Bool)

(assert (=> b!5284000 m!6321694))

(declare-fun m!6321696 () Bool)

(assert (=> b!5284000 m!6321696))

(declare-fun m!6321698 () Bool)

(assert (=> b!5284000 m!6321698))

(assert (=> b!5284000 m!6321694))

(declare-fun m!6321700 () Bool)

(assert (=> b!5284000 m!6321700))

(assert (=> b!5284000 m!6321694))

(assert (=> b!5284000 m!6321698))

(declare-fun m!6321702 () Bool)

(assert (=> b!5284002 m!6321702))

(assert (=> b!5283103 d!1700288))

(declare-fun d!1700290 () Bool)

(declare-fun lt!2159545 () Int)

(assert (=> d!1700290 (>= lt!2159545 0)))

(declare-fun e!3285371 () Int)

(assert (=> d!1700290 (= lt!2159545 e!3285371)))

(declare-fun c!916199 () Bool)

(assert (=> d!1700290 (= c!916199 ((_ is Cons!60903) lt!2159377))))

(assert (=> d!1700290 (= (zipperDepthTotal!70 lt!2159377) lt!2159545)))

(declare-fun b!5284007 () Bool)

(assert (=> b!5284007 (= e!3285371 (+ (contextDepthTotal!50 (h!67351 lt!2159377)) (zipperDepthTotal!70 (t!374230 lt!2159377))))))

(declare-fun b!5284008 () Bool)

(assert (=> b!5284008 (= e!3285371 0)))

(assert (= (and d!1700290 c!916199) b!5284007))

(assert (= (and d!1700290 (not c!916199)) b!5284008))

(declare-fun m!6321704 () Bool)

(assert (=> b!5284007 m!6321704))

(declare-fun m!6321706 () Bool)

(assert (=> b!5284007 m!6321706))

(assert (=> b!5283083 d!1700290))

(declare-fun d!1700292 () Bool)

(declare-fun lt!2159546 () Int)

(assert (=> d!1700292 (>= lt!2159546 0)))

(declare-fun e!3285372 () Int)

(assert (=> d!1700292 (= lt!2159546 e!3285372)))

(declare-fun c!916200 () Bool)

(assert (=> d!1700292 (= c!916200 ((_ is Cons!60903) zl!343))))

(assert (=> d!1700292 (= (zipperDepthTotal!70 zl!343) lt!2159546)))

(declare-fun b!5284009 () Bool)

(assert (=> b!5284009 (= e!3285372 (+ (contextDepthTotal!50 (h!67351 zl!343)) (zipperDepthTotal!70 (t!374230 zl!343))))))

(declare-fun b!5284010 () Bool)

(assert (=> b!5284010 (= e!3285372 0)))

(assert (= (and d!1700292 c!916200) b!5284009))

(assert (= (and d!1700292 (not c!916200)) b!5284010))

(assert (=> b!5284009 m!6320918))

(declare-fun m!6321708 () Bool)

(assert (=> b!5284009 m!6321708))

(assert (=> b!5283083 d!1700292))

(declare-fun d!1700294 () Bool)

(declare-fun c!916201 () Bool)

(assert (=> d!1700294 (= c!916201 (isEmpty!32859 (t!374231 s!2326)))))

(declare-fun e!3285373 () Bool)

(assert (=> d!1700294 (= (matchZipper!1153 lt!2159383 (t!374231 s!2326)) e!3285373)))

(declare-fun b!5284011 () Bool)

(assert (=> b!5284011 (= e!3285373 (nullableZipper!1302 lt!2159383))))

(declare-fun b!5284012 () Bool)

(assert (=> b!5284012 (= e!3285373 (matchZipper!1153 (derivationStepZipper!1152 lt!2159383 (head!11322 (t!374231 s!2326))) (tail!10419 (t!374231 s!2326))))))

(assert (= (and d!1700294 c!916201) b!5284011))

(assert (= (and d!1700294 (not c!916201)) b!5284012))

(assert (=> d!1700294 m!6321130))

(declare-fun m!6321710 () Bool)

(assert (=> b!5284011 m!6321710))

(assert (=> b!5284012 m!6321134))

(assert (=> b!5284012 m!6321134))

(declare-fun m!6321712 () Bool)

(assert (=> b!5284012 m!6321712))

(assert (=> b!5284012 m!6321138))

(assert (=> b!5284012 m!6321712))

(assert (=> b!5284012 m!6321138))

(declare-fun m!6321714 () Bool)

(assert (=> b!5284012 m!6321714))

(assert (=> b!5283102 d!1700294))

(assert (=> b!5283102 d!1700152))

(declare-fun d!1700296 () Bool)

(declare-fun c!916202 () Bool)

(assert (=> d!1700296 (= c!916202 (isEmpty!32859 (t!374231 s!2326)))))

(declare-fun e!3285374 () Bool)

(assert (=> d!1700296 (= (matchZipper!1153 lt!2159393 (t!374231 s!2326)) e!3285374)))

(declare-fun b!5284013 () Bool)

(assert (=> b!5284013 (= e!3285374 (nullableZipper!1302 lt!2159393))))

(declare-fun b!5284014 () Bool)

(assert (=> b!5284014 (= e!3285374 (matchZipper!1153 (derivationStepZipper!1152 lt!2159393 (head!11322 (t!374231 s!2326))) (tail!10419 (t!374231 s!2326))))))

(assert (= (and d!1700296 c!916202) b!5284013))

(assert (= (and d!1700296 (not c!916202)) b!5284014))

(assert (=> d!1700296 m!6321130))

(declare-fun m!6321716 () Bool)

(assert (=> b!5284013 m!6321716))

(assert (=> b!5284014 m!6321134))

(assert (=> b!5284014 m!6321134))

(declare-fun m!6321718 () Bool)

(assert (=> b!5284014 m!6321718))

(assert (=> b!5284014 m!6321138))

(assert (=> b!5284014 m!6321718))

(assert (=> b!5284014 m!6321138))

(declare-fun m!6321720 () Bool)

(assert (=> b!5284014 m!6321720))

(assert (=> b!5283102 d!1700296))

(declare-fun d!1700298 () Bool)

(assert (=> d!1700298 (= (flatMap!636 lt!2159389 lambda!266994) (choose!39432 lt!2159389 lambda!266994))))

(declare-fun bs!1224739 () Bool)

(assert (= bs!1224739 d!1700298))

(declare-fun m!6321722 () Bool)

(assert (=> bs!1224739 m!6321722))

(assert (=> b!5283102 d!1700298))

(declare-fun e!3285375 () Bool)

(declare-fun d!1700300 () Bool)

(assert (=> d!1700300 (= (matchZipper!1153 ((_ map or) lt!2159365 lt!2159378) (t!374231 s!2326)) e!3285375)))

(declare-fun res!2240967 () Bool)

(assert (=> d!1700300 (=> res!2240967 e!3285375)))

(assert (=> d!1700300 (= res!2240967 (matchZipper!1153 lt!2159365 (t!374231 s!2326)))))

(declare-fun lt!2159547 () Unit!153154)

(assert (=> d!1700300 (= lt!2159547 (choose!39435 lt!2159365 lt!2159378 (t!374231 s!2326)))))

(assert (=> d!1700300 (= (lemmaZipperConcatMatchesSameAsBothZippers!146 lt!2159365 lt!2159378 (t!374231 s!2326)) lt!2159547)))

(declare-fun b!5284015 () Bool)

(assert (=> b!5284015 (= e!3285375 (matchZipper!1153 lt!2159378 (t!374231 s!2326)))))

(assert (= (and d!1700300 (not res!2240967)) b!5284015))

(declare-fun m!6321724 () Bool)

(assert (=> d!1700300 m!6321724))

(assert (=> d!1700300 m!6320922))

(declare-fun m!6321726 () Bool)

(assert (=> d!1700300 m!6321726))

(assert (=> b!5284015 m!6320966))

(assert (=> b!5283102 d!1700300))

(declare-fun d!1700302 () Bool)

(assert (=> d!1700302 (= (flatMap!636 lt!2159389 lambda!266994) (dynLambda!24079 lambda!266994 lt!2159371))))

(declare-fun lt!2159548 () Unit!153154)

(assert (=> d!1700302 (= lt!2159548 (choose!39433 lt!2159389 lt!2159371 lambda!266994))))

(assert (=> d!1700302 (= lt!2159389 (store ((as const (Array Context!8586 Bool)) false) lt!2159371 true))))

(assert (=> d!1700302 (= (lemmaFlatMapOnSingletonSet!168 lt!2159389 lt!2159371 lambda!266994) lt!2159548)))

(declare-fun b_lambda!203843 () Bool)

(assert (=> (not b_lambda!203843) (not d!1700302)))

(declare-fun bs!1224740 () Bool)

(assert (= bs!1224740 d!1700302))

(assert (=> bs!1224740 m!6320900))

(declare-fun m!6321728 () Bool)

(assert (=> bs!1224740 m!6321728))

(declare-fun m!6321730 () Bool)

(assert (=> bs!1224740 m!6321730))

(assert (=> bs!1224740 m!6320954))

(assert (=> b!5283102 d!1700302))

(declare-fun d!1700304 () Bool)

(declare-fun lt!2159551 () Int)

(assert (=> d!1700304 (>= lt!2159551 0)))

(declare-fun e!3285378 () Int)

(assert (=> d!1700304 (= lt!2159551 e!3285378)))

(declare-fun c!916206 () Bool)

(assert (=> d!1700304 (= c!916206 ((_ is Cons!60902) (exprs!4793 lt!2159375)))))

(assert (=> d!1700304 (= (contextDepthTotal!50 lt!2159375) lt!2159551)))

(declare-fun b!5284020 () Bool)

(declare-fun regexDepthTotal!14 (Regex!14909) Int)

(assert (=> b!5284020 (= e!3285378 (+ (regexDepthTotal!14 (h!67350 (exprs!4793 lt!2159375))) (contextDepthTotal!50 (Context!8587 (t!374229 (exprs!4793 lt!2159375))))))))

(declare-fun b!5284021 () Bool)

(assert (=> b!5284021 (= e!3285378 1)))

(assert (= (and d!1700304 c!916206) b!5284020))

(assert (= (and d!1700304 (not c!916206)) b!5284021))

(declare-fun m!6321732 () Bool)

(assert (=> b!5284020 m!6321732))

(declare-fun m!6321734 () Bool)

(assert (=> b!5284020 m!6321734))

(assert (=> b!5283082 d!1700304))

(declare-fun d!1700306 () Bool)

(declare-fun lt!2159552 () Int)

(assert (=> d!1700306 (>= lt!2159552 0)))

(declare-fun e!3285379 () Int)

(assert (=> d!1700306 (= lt!2159552 e!3285379)))

(declare-fun c!916207 () Bool)

(assert (=> d!1700306 (= c!916207 ((_ is Cons!60902) (exprs!4793 (h!67351 zl!343))))))

(assert (=> d!1700306 (= (contextDepthTotal!50 (h!67351 zl!343)) lt!2159552)))

(declare-fun b!5284022 () Bool)

(assert (=> b!5284022 (= e!3285379 (+ (regexDepthTotal!14 (h!67350 (exprs!4793 (h!67351 zl!343)))) (contextDepthTotal!50 (Context!8587 (t!374229 (exprs!4793 (h!67351 zl!343)))))))))

(declare-fun b!5284023 () Bool)

(assert (=> b!5284023 (= e!3285379 1)))

(assert (= (and d!1700306 c!916207) b!5284022))

(assert (= (and d!1700306 (not c!916207)) b!5284023))

(declare-fun m!6321736 () Bool)

(assert (=> b!5284022 m!6321736))

(declare-fun m!6321738 () Bool)

(assert (=> b!5284022 m!6321738))

(assert (=> b!5283082 d!1700306))

(declare-fun d!1700308 () Bool)

(declare-fun c!916208 () Bool)

(assert (=> d!1700308 (= c!916208 (isEmpty!32859 (t!374231 s!2326)))))

(declare-fun e!3285380 () Bool)

(assert (=> d!1700308 (= (matchZipper!1153 (derivationStepZipper!1152 lt!2159389 (h!67352 s!2326)) (t!374231 s!2326)) e!3285380)))

(declare-fun b!5284024 () Bool)

(assert (=> b!5284024 (= e!3285380 (nullableZipper!1302 (derivationStepZipper!1152 lt!2159389 (h!67352 s!2326))))))

(declare-fun b!5284025 () Bool)

(assert (=> b!5284025 (= e!3285380 (matchZipper!1153 (derivationStepZipper!1152 (derivationStepZipper!1152 lt!2159389 (h!67352 s!2326)) (head!11322 (t!374231 s!2326))) (tail!10419 (t!374231 s!2326))))))

(assert (= (and d!1700308 c!916208) b!5284024))

(assert (= (and d!1700308 (not c!916208)) b!5284025))

(assert (=> d!1700308 m!6321130))

(assert (=> b!5284024 m!6320872))

(declare-fun m!6321740 () Bool)

(assert (=> b!5284024 m!6321740))

(assert (=> b!5284025 m!6321134))

(assert (=> b!5284025 m!6320872))

(assert (=> b!5284025 m!6321134))

(declare-fun m!6321742 () Bool)

(assert (=> b!5284025 m!6321742))

(assert (=> b!5284025 m!6321138))

(assert (=> b!5284025 m!6321742))

(assert (=> b!5284025 m!6321138))

(declare-fun m!6321744 () Bool)

(assert (=> b!5284025 m!6321744))

(assert (=> b!5283115 d!1700308))

(declare-fun bs!1224741 () Bool)

(declare-fun d!1700310 () Bool)

(assert (= bs!1224741 (and d!1700310 b!5283087)))

(declare-fun lambda!267091 () Int)

(assert (=> bs!1224741 (= lambda!267091 lambda!266994)))

(declare-fun bs!1224742 () Bool)

(assert (= bs!1224742 (and d!1700310 d!1700130)))

(assert (=> bs!1224742 (= lambda!267091 lambda!267034)))

(assert (=> d!1700310 true))

(assert (=> d!1700310 (= (derivationStepZipper!1152 lt!2159389 (h!67352 s!2326)) (flatMap!636 lt!2159389 lambda!267091))))

(declare-fun bs!1224743 () Bool)

(assert (= bs!1224743 d!1700310))

(declare-fun m!6321746 () Bool)

(assert (=> bs!1224743 m!6321746))

(assert (=> b!5283115 d!1700310))

(declare-fun d!1700312 () Bool)

(declare-fun e!3285383 () Bool)

(assert (=> d!1700312 e!3285383))

(declare-fun res!2240970 () Bool)

(assert (=> d!1700312 (=> (not res!2240970) (not e!3285383))))

(declare-fun lt!2159555 () List!61027)

(declare-fun noDuplicate!1257 (List!61027) Bool)

(assert (=> d!1700312 (= res!2240970 (noDuplicate!1257 lt!2159555))))

(declare-fun choose!39442 ((InoxSet Context!8586)) List!61027)

(assert (=> d!1700312 (= lt!2159555 (choose!39442 z!1189))))

(assert (=> d!1700312 (= (toList!8693 z!1189) lt!2159555)))

(declare-fun b!5284028 () Bool)

(declare-fun content!10843 (List!61027) (InoxSet Context!8586))

(assert (=> b!5284028 (= e!3285383 (= (content!10843 lt!2159555) z!1189))))

(assert (= (and d!1700312 res!2240970) b!5284028))

(declare-fun m!6321748 () Bool)

(assert (=> d!1700312 m!6321748))

(declare-fun m!6321750 () Bool)

(assert (=> d!1700312 m!6321750))

(declare-fun m!6321752 () Bool)

(assert (=> b!5284028 m!6321752))

(assert (=> b!5283095 d!1700312))

(declare-fun d!1700314 () Bool)

(declare-fun c!916209 () Bool)

(assert (=> d!1700314 (= c!916209 (isEmpty!32859 (t!374231 s!2326)))))

(declare-fun e!3285384 () Bool)

(assert (=> d!1700314 (= (matchZipper!1153 lt!2159392 (t!374231 s!2326)) e!3285384)))

(declare-fun b!5284029 () Bool)

(assert (=> b!5284029 (= e!3285384 (nullableZipper!1302 lt!2159392))))

(declare-fun b!5284030 () Bool)

(assert (=> b!5284030 (= e!3285384 (matchZipper!1153 (derivationStepZipper!1152 lt!2159392 (head!11322 (t!374231 s!2326))) (tail!10419 (t!374231 s!2326))))))

(assert (= (and d!1700314 c!916209) b!5284029))

(assert (= (and d!1700314 (not c!916209)) b!5284030))

(assert (=> d!1700314 m!6321130))

(declare-fun m!6321754 () Bool)

(assert (=> b!5284029 m!6321754))

(assert (=> b!5284030 m!6321134))

(assert (=> b!5284030 m!6321134))

(declare-fun m!6321756 () Bool)

(assert (=> b!5284030 m!6321756))

(assert (=> b!5284030 m!6321138))

(assert (=> b!5284030 m!6321756))

(assert (=> b!5284030 m!6321138))

(declare-fun m!6321758 () Bool)

(assert (=> b!5284030 m!6321758))

(assert (=> b!5283116 d!1700314))

(declare-fun call!376356 () List!61026)

(declare-fun bm!376350 () Bool)

(declare-fun c!916212 () Bool)

(declare-fun call!376359 () (InoxSet Context!8586))

(assert (=> bm!376350 (= call!376359 (derivationStepZipperDown!357 (ite c!916212 (regTwo!30331 (regTwo!30330 (regOne!30330 r!7292))) (regOne!30330 (regTwo!30330 (regOne!30330 r!7292)))) (ite c!916212 lt!2159370 (Context!8587 call!376356)) (h!67352 s!2326)))))

(declare-fun b!5284031 () Bool)

(declare-fun e!3285390 () (InoxSet Context!8586))

(assert (=> b!5284031 (= e!3285390 (store ((as const (Array Context!8586 Bool)) false) lt!2159370 true))))

(declare-fun bm!376351 () Bool)

(declare-fun call!376357 () List!61026)

(assert (=> bm!376351 (= call!376357 call!376356)))

(declare-fun b!5284033 () Bool)

(declare-fun e!3285387 () (InoxSet Context!8586))

(declare-fun call!376360 () (InoxSet Context!8586))

(assert (=> b!5284033 (= e!3285387 call!376360)))

(declare-fun bm!376352 () Bool)

(declare-fun call!376355 () (InoxSet Context!8586))

(declare-fun call!376358 () (InoxSet Context!8586))

(assert (=> bm!376352 (= call!376355 call!376358)))

(declare-fun b!5284034 () Bool)

(declare-fun c!916214 () Bool)

(declare-fun e!3285389 () Bool)

(assert (=> b!5284034 (= c!916214 e!3285389)))

(declare-fun res!2240971 () Bool)

(assert (=> b!5284034 (=> (not res!2240971) (not e!3285389))))

(assert (=> b!5284034 (= res!2240971 ((_ is Concat!23754) (regTwo!30330 (regOne!30330 r!7292))))))

(declare-fun e!3285386 () (InoxSet Context!8586))

(declare-fun e!3285385 () (InoxSet Context!8586))

(assert (=> b!5284034 (= e!3285386 e!3285385)))

(declare-fun b!5284035 () Bool)

(declare-fun c!916210 () Bool)

(assert (=> b!5284035 (= c!916210 ((_ is Star!14909) (regTwo!30330 (regOne!30330 r!7292))))))

(declare-fun e!3285388 () (InoxSet Context!8586))

(assert (=> b!5284035 (= e!3285387 e!3285388)))

(declare-fun b!5284036 () Bool)

(assert (=> b!5284036 (= e!3285385 e!3285387)))

(declare-fun c!916213 () Bool)

(assert (=> b!5284036 (= c!916213 ((_ is Concat!23754) (regTwo!30330 (regOne!30330 r!7292))))))

(declare-fun b!5284037 () Bool)

(assert (=> b!5284037 (= e!3285388 call!376360)))

(declare-fun b!5284038 () Bool)

(assert (=> b!5284038 (= e!3285390 e!3285386)))

(assert (=> b!5284038 (= c!916212 ((_ is Union!14909) (regTwo!30330 (regOne!30330 r!7292))))))

(declare-fun bm!376353 () Bool)

(assert (=> bm!376353 (= call!376356 ($colon$colon!1352 (exprs!4793 lt!2159370) (ite (or c!916214 c!916213) (regTwo!30330 (regTwo!30330 (regOne!30330 r!7292))) (regTwo!30330 (regOne!30330 r!7292)))))))

(declare-fun bm!376354 () Bool)

(assert (=> bm!376354 (= call!376358 (derivationStepZipperDown!357 (ite c!916212 (regOne!30331 (regTwo!30330 (regOne!30330 r!7292))) (ite c!916214 (regTwo!30330 (regTwo!30330 (regOne!30330 r!7292))) (ite c!916213 (regOne!30330 (regTwo!30330 (regOne!30330 r!7292))) (reg!15238 (regTwo!30330 (regOne!30330 r!7292)))))) (ite (or c!916212 c!916214) lt!2159370 (Context!8587 call!376357)) (h!67352 s!2326)))))

(declare-fun b!5284032 () Bool)

(assert (=> b!5284032 (= e!3285389 (nullable!5078 (regOne!30330 (regTwo!30330 (regOne!30330 r!7292)))))))

(declare-fun d!1700316 () Bool)

(declare-fun c!916211 () Bool)

(assert (=> d!1700316 (= c!916211 (and ((_ is ElementMatch!14909) (regTwo!30330 (regOne!30330 r!7292))) (= (c!915917 (regTwo!30330 (regOne!30330 r!7292))) (h!67352 s!2326))))))

(assert (=> d!1700316 (= (derivationStepZipperDown!357 (regTwo!30330 (regOne!30330 r!7292)) lt!2159370 (h!67352 s!2326)) e!3285390)))

(declare-fun bm!376355 () Bool)

(assert (=> bm!376355 (= call!376360 call!376355)))

(declare-fun b!5284039 () Bool)

(assert (=> b!5284039 (= e!3285388 ((as const (Array Context!8586 Bool)) false))))

(declare-fun b!5284040 () Bool)

(assert (=> b!5284040 (= e!3285385 ((_ map or) call!376359 call!376355))))

(declare-fun b!5284041 () Bool)

(assert (=> b!5284041 (= e!3285386 ((_ map or) call!376358 call!376359))))

(assert (= (and d!1700316 c!916211) b!5284031))

(assert (= (and d!1700316 (not c!916211)) b!5284038))

(assert (= (and b!5284038 c!916212) b!5284041))

(assert (= (and b!5284038 (not c!916212)) b!5284034))

(assert (= (and b!5284034 res!2240971) b!5284032))

(assert (= (and b!5284034 c!916214) b!5284040))

(assert (= (and b!5284034 (not c!916214)) b!5284036))

(assert (= (and b!5284036 c!916213) b!5284033))

(assert (= (and b!5284036 (not c!916213)) b!5284035))

(assert (= (and b!5284035 c!916210) b!5284037))

(assert (= (and b!5284035 (not c!916210)) b!5284039))

(assert (= (or b!5284033 b!5284037) bm!376351))

(assert (= (or b!5284033 b!5284037) bm!376355))

(assert (= (or b!5284040 bm!376351) bm!376353))

(assert (= (or b!5284040 bm!376355) bm!376352))

(assert (= (or b!5284041 b!5284040) bm!376350))

(assert (= (or b!5284041 bm!376352) bm!376354))

(declare-fun m!6321760 () Bool)

(assert (=> bm!376350 m!6321760))

(assert (=> b!5284031 m!6321590))

(declare-fun m!6321762 () Bool)

(assert (=> bm!376354 m!6321762))

(declare-fun m!6321764 () Bool)

(assert (=> bm!376353 m!6321764))

(declare-fun m!6321766 () Bool)

(assert (=> b!5284032 m!6321766))

(assert (=> b!5283114 d!1700316))

(declare-fun c!916217 () Bool)

(declare-fun call!376365 () (InoxSet Context!8586))

(declare-fun call!376362 () List!61026)

(declare-fun bm!376356 () Bool)

(assert (=> bm!376356 (= call!376365 (derivationStepZipperDown!357 (ite c!916217 (regTwo!30331 (regOne!30330 (regOne!30330 r!7292))) (regOne!30330 (regOne!30330 (regOne!30330 r!7292)))) (ite c!916217 lt!2159371 (Context!8587 call!376362)) (h!67352 s!2326)))))

(declare-fun b!5284042 () Bool)

(declare-fun e!3285396 () (InoxSet Context!8586))

(assert (=> b!5284042 (= e!3285396 (store ((as const (Array Context!8586 Bool)) false) lt!2159371 true))))

(declare-fun bm!376357 () Bool)

(declare-fun call!376363 () List!61026)

(assert (=> bm!376357 (= call!376363 call!376362)))

(declare-fun b!5284044 () Bool)

(declare-fun e!3285393 () (InoxSet Context!8586))

(declare-fun call!376366 () (InoxSet Context!8586))

(assert (=> b!5284044 (= e!3285393 call!376366)))

(declare-fun bm!376358 () Bool)

(declare-fun call!376361 () (InoxSet Context!8586))

(declare-fun call!376364 () (InoxSet Context!8586))

(assert (=> bm!376358 (= call!376361 call!376364)))

(declare-fun b!5284045 () Bool)

(declare-fun c!916219 () Bool)

(declare-fun e!3285395 () Bool)

(assert (=> b!5284045 (= c!916219 e!3285395)))

(declare-fun res!2240972 () Bool)

(assert (=> b!5284045 (=> (not res!2240972) (not e!3285395))))

(assert (=> b!5284045 (= res!2240972 ((_ is Concat!23754) (regOne!30330 (regOne!30330 r!7292))))))

(declare-fun e!3285392 () (InoxSet Context!8586))

(declare-fun e!3285391 () (InoxSet Context!8586))

(assert (=> b!5284045 (= e!3285392 e!3285391)))

(declare-fun b!5284046 () Bool)

(declare-fun c!916215 () Bool)

(assert (=> b!5284046 (= c!916215 ((_ is Star!14909) (regOne!30330 (regOne!30330 r!7292))))))

(declare-fun e!3285394 () (InoxSet Context!8586))

(assert (=> b!5284046 (= e!3285393 e!3285394)))

(declare-fun b!5284047 () Bool)

(assert (=> b!5284047 (= e!3285391 e!3285393)))

(declare-fun c!916218 () Bool)

(assert (=> b!5284047 (= c!916218 ((_ is Concat!23754) (regOne!30330 (regOne!30330 r!7292))))))

(declare-fun b!5284048 () Bool)

(assert (=> b!5284048 (= e!3285394 call!376366)))

(declare-fun b!5284049 () Bool)

(assert (=> b!5284049 (= e!3285396 e!3285392)))

(assert (=> b!5284049 (= c!916217 ((_ is Union!14909) (regOne!30330 (regOne!30330 r!7292))))))

(declare-fun bm!376359 () Bool)

(assert (=> bm!376359 (= call!376362 ($colon$colon!1352 (exprs!4793 lt!2159371) (ite (or c!916219 c!916218) (regTwo!30330 (regOne!30330 (regOne!30330 r!7292))) (regOne!30330 (regOne!30330 r!7292)))))))

(declare-fun bm!376360 () Bool)

(assert (=> bm!376360 (= call!376364 (derivationStepZipperDown!357 (ite c!916217 (regOne!30331 (regOne!30330 (regOne!30330 r!7292))) (ite c!916219 (regTwo!30330 (regOne!30330 (regOne!30330 r!7292))) (ite c!916218 (regOne!30330 (regOne!30330 (regOne!30330 r!7292))) (reg!15238 (regOne!30330 (regOne!30330 r!7292)))))) (ite (or c!916217 c!916219) lt!2159371 (Context!8587 call!376363)) (h!67352 s!2326)))))

(declare-fun b!5284043 () Bool)

(assert (=> b!5284043 (= e!3285395 (nullable!5078 (regOne!30330 (regOne!30330 (regOne!30330 r!7292)))))))

(declare-fun d!1700318 () Bool)

(declare-fun c!916216 () Bool)

(assert (=> d!1700318 (= c!916216 (and ((_ is ElementMatch!14909) (regOne!30330 (regOne!30330 r!7292))) (= (c!915917 (regOne!30330 (regOne!30330 r!7292))) (h!67352 s!2326))))))

(assert (=> d!1700318 (= (derivationStepZipperDown!357 (regOne!30330 (regOne!30330 r!7292)) lt!2159371 (h!67352 s!2326)) e!3285396)))

(declare-fun bm!376361 () Bool)

(assert (=> bm!376361 (= call!376366 call!376361)))

(declare-fun b!5284050 () Bool)

(assert (=> b!5284050 (= e!3285394 ((as const (Array Context!8586 Bool)) false))))

(declare-fun b!5284051 () Bool)

(assert (=> b!5284051 (= e!3285391 ((_ map or) call!376365 call!376361))))

(declare-fun b!5284052 () Bool)

(assert (=> b!5284052 (= e!3285392 ((_ map or) call!376364 call!376365))))

(assert (= (and d!1700318 c!916216) b!5284042))

(assert (= (and d!1700318 (not c!916216)) b!5284049))

(assert (= (and b!5284049 c!916217) b!5284052))

(assert (= (and b!5284049 (not c!916217)) b!5284045))

(assert (= (and b!5284045 res!2240972) b!5284043))

(assert (= (and b!5284045 c!916219) b!5284051))

(assert (= (and b!5284045 (not c!916219)) b!5284047))

(assert (= (and b!5284047 c!916218) b!5284044))

(assert (= (and b!5284047 (not c!916218)) b!5284046))

(assert (= (and b!5284046 c!916215) b!5284048))

(assert (= (and b!5284046 (not c!916215)) b!5284050))

(assert (= (or b!5284044 b!5284048) bm!376357))

(assert (= (or b!5284044 b!5284048) bm!376361))

(assert (= (or b!5284051 bm!376357) bm!376359))

(assert (= (or b!5284051 bm!376361) bm!376358))

(assert (= (or b!5284052 b!5284051) bm!376356))

(assert (= (or b!5284052 bm!376358) bm!376360))

(declare-fun m!6321768 () Bool)

(assert (=> bm!376356 m!6321768))

(assert (=> b!5284042 m!6320954))

(declare-fun m!6321770 () Bool)

(assert (=> bm!376360 m!6321770))

(declare-fun m!6321772 () Bool)

(assert (=> bm!376359 m!6321772))

(declare-fun m!6321774 () Bool)

(assert (=> b!5284043 m!6321774))

(assert (=> b!5283114 d!1700318))

(assert (=> b!5283094 d!1700174))

(declare-fun d!1700320 () Bool)

(declare-fun c!916220 () Bool)

(assert (=> d!1700320 (= c!916220 (isEmpty!32859 (t!374231 s!2326)))))

(declare-fun e!3285397 () Bool)

(assert (=> d!1700320 (= (matchZipper!1153 lt!2159364 (t!374231 s!2326)) e!3285397)))

(declare-fun b!5284053 () Bool)

(assert (=> b!5284053 (= e!3285397 (nullableZipper!1302 lt!2159364))))

(declare-fun b!5284054 () Bool)

(assert (=> b!5284054 (= e!3285397 (matchZipper!1153 (derivationStepZipper!1152 lt!2159364 (head!11322 (t!374231 s!2326))) (tail!10419 (t!374231 s!2326))))))

(assert (= (and d!1700320 c!916220) b!5284053))

(assert (= (and d!1700320 (not c!916220)) b!5284054))

(assert (=> d!1700320 m!6321130))

(declare-fun m!6321776 () Bool)

(assert (=> b!5284053 m!6321776))

(assert (=> b!5284054 m!6321134))

(assert (=> b!5284054 m!6321134))

(declare-fun m!6321778 () Bool)

(assert (=> b!5284054 m!6321778))

(assert (=> b!5284054 m!6321138))

(assert (=> b!5284054 m!6321778))

(assert (=> b!5284054 m!6321138))

(declare-fun m!6321780 () Bool)

(assert (=> b!5284054 m!6321780))

(assert (=> b!5283094 d!1700320))

(declare-fun d!1700322 () Bool)

(declare-fun c!916221 () Bool)

(assert (=> d!1700322 (= c!916221 (isEmpty!32859 (t!374231 s!2326)))))

(declare-fun e!3285398 () Bool)

(assert (=> d!1700322 (= (matchZipper!1153 lt!2159365 (t!374231 s!2326)) e!3285398)))

(declare-fun b!5284055 () Bool)

(assert (=> b!5284055 (= e!3285398 (nullableZipper!1302 lt!2159365))))

(declare-fun b!5284056 () Bool)

(assert (=> b!5284056 (= e!3285398 (matchZipper!1153 (derivationStepZipper!1152 lt!2159365 (head!11322 (t!374231 s!2326))) (tail!10419 (t!374231 s!2326))))))

(assert (= (and d!1700322 c!916221) b!5284055))

(assert (= (and d!1700322 (not c!916221)) b!5284056))

(assert (=> d!1700322 m!6321130))

(declare-fun m!6321782 () Bool)

(assert (=> b!5284055 m!6321782))

(assert (=> b!5284056 m!6321134))

(assert (=> b!5284056 m!6321134))

(declare-fun m!6321784 () Bool)

(assert (=> b!5284056 m!6321784))

(assert (=> b!5284056 m!6321138))

(assert (=> b!5284056 m!6321784))

(assert (=> b!5284056 m!6321138))

(declare-fun m!6321786 () Bool)

(assert (=> b!5284056 m!6321786))

(assert (=> b!5283094 d!1700322))

(declare-fun d!1700324 () Bool)

(declare-fun e!3285399 () Bool)

(assert (=> d!1700324 (= (matchZipper!1153 ((_ map or) lt!2159365 lt!2159395) (t!374231 s!2326)) e!3285399)))

(declare-fun res!2240973 () Bool)

(assert (=> d!1700324 (=> res!2240973 e!3285399)))

(assert (=> d!1700324 (= res!2240973 (matchZipper!1153 lt!2159365 (t!374231 s!2326)))))

(declare-fun lt!2159556 () Unit!153154)

(assert (=> d!1700324 (= lt!2159556 (choose!39435 lt!2159365 lt!2159395 (t!374231 s!2326)))))

(assert (=> d!1700324 (= (lemmaZipperConcatMatchesSameAsBothZippers!146 lt!2159365 lt!2159395 (t!374231 s!2326)) lt!2159556)))

(declare-fun b!5284057 () Bool)

(assert (=> b!5284057 (= e!3285399 (matchZipper!1153 lt!2159395 (t!374231 s!2326)))))

(assert (= (and d!1700324 (not res!2240973)) b!5284057))

(declare-fun m!6321788 () Bool)

(assert (=> d!1700324 m!6321788))

(assert (=> d!1700324 m!6320922))

(declare-fun m!6321790 () Bool)

(assert (=> d!1700324 m!6321790))

(assert (=> b!5284057 m!6320860))

(assert (=> b!5283094 d!1700324))

(declare-fun d!1700326 () Bool)

(assert (=> d!1700326 (= (nullable!5078 (regOne!30330 (regOne!30330 r!7292))) (nullableFct!1454 (regOne!30330 (regOne!30330 r!7292))))))

(declare-fun bs!1224744 () Bool)

(assert (= bs!1224744 d!1700326))

(declare-fun m!6321792 () Bool)

(assert (=> bs!1224744 m!6321792))

(assert (=> b!5283096 d!1700326))

(declare-fun d!1700328 () Bool)

(assert (=> d!1700328 (= (isEmpty!32856 (t!374229 (exprs!4793 (h!67351 zl!343)))) ((_ is Nil!60902) (t!374229 (exprs!4793 (h!67351 zl!343)))))))

(assert (=> b!5283097 d!1700328))

(declare-fun e!3285402 () Bool)

(assert (=> b!5283101 (= tp!1475706 e!3285402)))

(declare-fun b!5284070 () Bool)

(declare-fun tp!1475785 () Bool)

(assert (=> b!5284070 (= e!3285402 tp!1475785)))

(declare-fun b!5284071 () Bool)

(declare-fun tp!1475783 () Bool)

(declare-fun tp!1475782 () Bool)

(assert (=> b!5284071 (= e!3285402 (and tp!1475783 tp!1475782))))

(declare-fun b!5284068 () Bool)

(assert (=> b!5284068 (= e!3285402 tp_is_empty!39071)))

(declare-fun b!5284069 () Bool)

(declare-fun tp!1475784 () Bool)

(declare-fun tp!1475786 () Bool)

(assert (=> b!5284069 (= e!3285402 (and tp!1475784 tp!1475786))))

(assert (= (and b!5283101 ((_ is ElementMatch!14909) (regOne!30330 r!7292))) b!5284068))

(assert (= (and b!5283101 ((_ is Concat!23754) (regOne!30330 r!7292))) b!5284069))

(assert (= (and b!5283101 ((_ is Star!14909) (regOne!30330 r!7292))) b!5284070))

(assert (= (and b!5283101 ((_ is Union!14909) (regOne!30330 r!7292))) b!5284071))

(declare-fun e!3285403 () Bool)

(assert (=> b!5283101 (= tp!1475708 e!3285403)))

(declare-fun b!5284074 () Bool)

(declare-fun tp!1475790 () Bool)

(assert (=> b!5284074 (= e!3285403 tp!1475790)))

(declare-fun b!5284075 () Bool)

(declare-fun tp!1475788 () Bool)

(declare-fun tp!1475787 () Bool)

(assert (=> b!5284075 (= e!3285403 (and tp!1475788 tp!1475787))))

(declare-fun b!5284072 () Bool)

(assert (=> b!5284072 (= e!3285403 tp_is_empty!39071)))

(declare-fun b!5284073 () Bool)

(declare-fun tp!1475789 () Bool)

(declare-fun tp!1475791 () Bool)

(assert (=> b!5284073 (= e!3285403 (and tp!1475789 tp!1475791))))

(assert (= (and b!5283101 ((_ is ElementMatch!14909) (regTwo!30330 r!7292))) b!5284072))

(assert (= (and b!5283101 ((_ is Concat!23754) (regTwo!30330 r!7292))) b!5284073))

(assert (= (and b!5283101 ((_ is Star!14909) (regTwo!30330 r!7292))) b!5284074))

(assert (= (and b!5283101 ((_ is Union!14909) (regTwo!30330 r!7292))) b!5284075))

(declare-fun condSetEmpty!33881 () Bool)

(assert (=> setNonEmpty!33875 (= condSetEmpty!33881 (= setRest!33875 ((as const (Array Context!8586 Bool)) false)))))

(declare-fun setRes!33881 () Bool)

(assert (=> setNonEmpty!33875 (= tp!1475707 setRes!33881)))

(declare-fun setIsEmpty!33881 () Bool)

(assert (=> setIsEmpty!33881 setRes!33881))

(declare-fun e!3285406 () Bool)

(declare-fun setElem!33881 () Context!8586)

(declare-fun tp!1475797 () Bool)

(declare-fun setNonEmpty!33881 () Bool)

(assert (=> setNonEmpty!33881 (= setRes!33881 (and tp!1475797 (inv!80519 setElem!33881) e!3285406))))

(declare-fun setRest!33881 () (InoxSet Context!8586))

(assert (=> setNonEmpty!33881 (= setRest!33875 ((_ map or) (store ((as const (Array Context!8586 Bool)) false) setElem!33881 true) setRest!33881))))

(declare-fun b!5284080 () Bool)

(declare-fun tp!1475796 () Bool)

(assert (=> b!5284080 (= e!3285406 tp!1475796)))

(assert (= (and setNonEmpty!33875 condSetEmpty!33881) setIsEmpty!33881))

(assert (= (and setNonEmpty!33875 (not condSetEmpty!33881)) setNonEmpty!33881))

(assert (= setNonEmpty!33881 b!5284080))

(declare-fun m!6321794 () Bool)

(assert (=> setNonEmpty!33881 m!6321794))

(declare-fun e!3285407 () Bool)

(assert (=> b!5283099 (= tp!1475713 e!3285407)))

(declare-fun b!5284083 () Bool)

(declare-fun tp!1475801 () Bool)

(assert (=> b!5284083 (= e!3285407 tp!1475801)))

(declare-fun b!5284084 () Bool)

(declare-fun tp!1475799 () Bool)

(declare-fun tp!1475798 () Bool)

(assert (=> b!5284084 (= e!3285407 (and tp!1475799 tp!1475798))))

(declare-fun b!5284081 () Bool)

(assert (=> b!5284081 (= e!3285407 tp_is_empty!39071)))

(declare-fun b!5284082 () Bool)

(declare-fun tp!1475800 () Bool)

(declare-fun tp!1475802 () Bool)

(assert (=> b!5284082 (= e!3285407 (and tp!1475800 tp!1475802))))

(assert (= (and b!5283099 ((_ is ElementMatch!14909) (reg!15238 r!7292))) b!5284081))

(assert (= (and b!5283099 ((_ is Concat!23754) (reg!15238 r!7292))) b!5284082))

(assert (= (and b!5283099 ((_ is Star!14909) (reg!15238 r!7292))) b!5284083))

(assert (= (and b!5283099 ((_ is Union!14909) (reg!15238 r!7292))) b!5284084))

(declare-fun b!5284089 () Bool)

(declare-fun e!3285410 () Bool)

(declare-fun tp!1475805 () Bool)

(assert (=> b!5284089 (= e!3285410 (and tp_is_empty!39071 tp!1475805))))

(assert (=> b!5283108 (= tp!1475704 e!3285410)))

(assert (= (and b!5283108 ((_ is Cons!60904) (t!374231 s!2326))) b!5284089))

(declare-fun b!5284094 () Bool)

(declare-fun e!3285413 () Bool)

(declare-fun tp!1475810 () Bool)

(declare-fun tp!1475811 () Bool)

(assert (=> b!5284094 (= e!3285413 (and tp!1475810 tp!1475811))))

(assert (=> b!5283113 (= tp!1475709 e!3285413)))

(assert (= (and b!5283113 ((_ is Cons!60902) (exprs!4793 (h!67351 zl!343)))) b!5284094))

(declare-fun b!5284102 () Bool)

(declare-fun e!3285419 () Bool)

(declare-fun tp!1475816 () Bool)

(assert (=> b!5284102 (= e!3285419 tp!1475816)))

(declare-fun e!3285418 () Bool)

(declare-fun tp!1475817 () Bool)

(declare-fun b!5284101 () Bool)

(assert (=> b!5284101 (= e!3285418 (and (inv!80519 (h!67351 (t!374230 zl!343))) e!3285419 tp!1475817))))

(assert (=> b!5283107 (= tp!1475712 e!3285418)))

(assert (= b!5284101 b!5284102))

(assert (= (and b!5283107 ((_ is Cons!60903) (t!374230 zl!343))) b!5284101))

(declare-fun m!6321796 () Bool)

(assert (=> b!5284101 m!6321796))

(declare-fun e!3285420 () Bool)

(assert (=> b!5283117 (= tp!1475710 e!3285420)))

(declare-fun b!5284105 () Bool)

(declare-fun tp!1475821 () Bool)

(assert (=> b!5284105 (= e!3285420 tp!1475821)))

(declare-fun b!5284106 () Bool)

(declare-fun tp!1475819 () Bool)

(declare-fun tp!1475818 () Bool)

(assert (=> b!5284106 (= e!3285420 (and tp!1475819 tp!1475818))))

(declare-fun b!5284103 () Bool)

(assert (=> b!5284103 (= e!3285420 tp_is_empty!39071)))

(declare-fun b!5284104 () Bool)

(declare-fun tp!1475820 () Bool)

(declare-fun tp!1475822 () Bool)

(assert (=> b!5284104 (= e!3285420 (and tp!1475820 tp!1475822))))

(assert (= (and b!5283117 ((_ is ElementMatch!14909) (regOne!30331 r!7292))) b!5284103))

(assert (= (and b!5283117 ((_ is Concat!23754) (regOne!30331 r!7292))) b!5284104))

(assert (= (and b!5283117 ((_ is Star!14909) (regOne!30331 r!7292))) b!5284105))

(assert (= (and b!5283117 ((_ is Union!14909) (regOne!30331 r!7292))) b!5284106))

(declare-fun e!3285421 () Bool)

(assert (=> b!5283117 (= tp!1475711 e!3285421)))

(declare-fun b!5284109 () Bool)

(declare-fun tp!1475826 () Bool)

(assert (=> b!5284109 (= e!3285421 tp!1475826)))

(declare-fun b!5284110 () Bool)

(declare-fun tp!1475824 () Bool)

(declare-fun tp!1475823 () Bool)

(assert (=> b!5284110 (= e!3285421 (and tp!1475824 tp!1475823))))

(declare-fun b!5284107 () Bool)

(assert (=> b!5284107 (= e!3285421 tp_is_empty!39071)))

(declare-fun b!5284108 () Bool)

(declare-fun tp!1475825 () Bool)

(declare-fun tp!1475827 () Bool)

(assert (=> b!5284108 (= e!3285421 (and tp!1475825 tp!1475827))))

(assert (= (and b!5283117 ((_ is ElementMatch!14909) (regTwo!30331 r!7292))) b!5284107))

(assert (= (and b!5283117 ((_ is Concat!23754) (regTwo!30331 r!7292))) b!5284108))

(assert (= (and b!5283117 ((_ is Star!14909) (regTwo!30331 r!7292))) b!5284109))

(assert (= (and b!5283117 ((_ is Union!14909) (regTwo!30331 r!7292))) b!5284110))

(declare-fun b!5284111 () Bool)

(declare-fun e!3285422 () Bool)

(declare-fun tp!1475828 () Bool)

(declare-fun tp!1475829 () Bool)

(assert (=> b!5284111 (= e!3285422 (and tp!1475828 tp!1475829))))

(assert (=> b!5283112 (= tp!1475705 e!3285422)))

(assert (= (and b!5283112 ((_ is Cons!60902) (exprs!4793 setElem!33875))) b!5284111))

(declare-fun b_lambda!203845 () Bool)

(assert (= b_lambda!203841 (or b!5283087 b_lambda!203845)))

(declare-fun bs!1224745 () Bool)

(declare-fun d!1700330 () Bool)

(assert (= bs!1224745 (and d!1700330 b!5283087)))

(assert (=> bs!1224745 (= (dynLambda!24079 lambda!266994 (h!67351 zl!343)) (derivationStepZipperUp!281 (h!67351 zl!343) (h!67352 s!2326)))))

(assert (=> bs!1224745 m!6320930))

(assert (=> d!1700260 d!1700330))

(declare-fun b_lambda!203847 () Bool)

(assert (= b_lambda!203825 (or b!5283087 b_lambda!203847)))

(declare-fun bs!1224746 () Bool)

(declare-fun d!1700332 () Bool)

(assert (= bs!1224746 (and d!1700332 b!5283087)))

(assert (=> bs!1224746 (= (dynLambda!24079 lambda!266994 lt!2159375) (derivationStepZipperUp!281 lt!2159375 (h!67352 s!2326)))))

(assert (=> bs!1224746 m!6320960))

(assert (=> d!1700150 d!1700332))

(declare-fun b_lambda!203849 () Bool)

(assert (= b_lambda!203843 (or b!5283087 b_lambda!203849)))

(declare-fun bs!1224747 () Bool)

(declare-fun d!1700334 () Bool)

(assert (= bs!1224747 (and d!1700334 b!5283087)))

(assert (=> bs!1224747 (= (dynLambda!24079 lambda!266994 lt!2159371) (derivationStepZipperUp!281 lt!2159371 (h!67352 s!2326)))))

(assert (=> bs!1224747 m!6320902))

(assert (=> d!1700302 d!1700334))

(declare-fun b_lambda!203851 () Bool)

(assert (= b_lambda!203839 (or b!5283104 b_lambda!203851)))

(declare-fun bs!1224748 () Bool)

(declare-fun d!1700336 () Bool)

(assert (= bs!1224748 (and d!1700336 b!5283104)))

(assert (=> bs!1224748 (= (dynLambda!24081 lambda!266995 (h!67350 lt!2159397)) (validRegex!6645 (h!67350 lt!2159397)))))

(declare-fun m!6321798 () Bool)

(assert (=> bs!1224748 m!6321798))

(assert (=> b!5283865 d!1700336))

(check-sat (not d!1700178) (not b!5283702) (not b!5283856) (not b!5283866) (not b!5283987) (not b_lambda!203851) (not bm!376323) (not d!1700284) (not d!1700324) (not b!5283946) (not b!5283732) (not b!5283701) (not d!1700268) (not b!5284106) (not b!5283951) (not b!5284111) (not d!1700204) (not b!5284022) (not bm!376291) (not b!5283848) (not b!5283920) (not b!5283332) (not b!5283336) (not b!5283872) (not b!5283950) (not bm!376346) (not b!5284070) (not b!5283337) (not b!5283726) (not d!1700166) (not b_lambda!203845) (not b!5283425) (not d!1700118) (not bm!376349) (not b!5283705) (not b!5284032) (not bm!376341) (not b!5284074) (not b!5283392) (not b!5284025) (not b!5283578) (not b!5284080) (not bm!376360) (not b!5284084) (not b!5283729) (not bm!376342) (not b!5283944) (not d!1700130) (not d!1700200) (not b!5283875) (not d!1700148) (not b!5283731) (not b!5284012) (not d!1700308) (not b!5283685) (not d!1700256) (not b!5284082) (not b!5283520) (not bm!376290) (not bs!1224748) (not bm!376338) (not b!5283915) (not b!5284030) (not b!5283422) (not d!1700276) (not d!1700282) (not b!5283521) (not b!5283853) (not b!5283682) (not b!5283365) (not b!5283900) (not d!1700254) (not b!5284015) (not bm!376316) (not b!5284024) (not b!5283579) (not bm!376344) (not b!5283923) (not b!5283335) (not b!5283518) (not b!5284000) (not b!5283995) (not b!5284057) (not d!1700274) (not d!1700312) (not d!1700260) (not b!5283240) (not b!5284056) (not b!5283678) tp_is_empty!39071 (not setNonEmpty!33881) (not b!5283674) (not b!5283873) (not b!5283389) (not b_lambda!203849) (not b!5283581) (not d!1700214) (not b!5283724) (not d!1700302) (not bm!376350) (not b!5284054) (not b!5284089) (not b!5283948) (not b!5283522) (not b!5283681) (not b!5284109) (not d!1700090) (not b!5284094) (not b!5283706) (not b!5284083) (not b!5283727) (not bm!376359) (not d!1700182) (not bm!376324) (not b!5284009) (not d!1700220) (not b!5284108) (not b!5283728) (not b!5283679) (not bs!1224746) (not b!5283910) (not b!5284110) (not d!1700310) (not b!5284055) (not d!1700208) (not b!5283868) (not b!5283871) (not bm!376345) (not b!5284029) (not d!1700322) (not d!1700298) (not b!5283855) (not d!1700314) (not b!5283997) (not b!5284002) (not bm!376279) (not b!5283580) (not b!5283870) (not b!5284069) (not b!5283983) (not b!5284020) (not d!1700126) (not b!5283859) (not b!5283366) (not d!1700180) (not d!1700250) (not d!1700272) (not bs!1224745) (not b!5284075) (not b!5283984) (not b!5283843) (not b!5283241) (not b_lambda!203847) (not b!5283876) (not d!1700150) (not b!5284053) (not b!5283576) (not b!5283976) (not b!5284014) (not d!1700266) (not d!1700278) (not b!5284011) (not bm!376282) (not b!5284102) (not b!5284028) (not bm!376348) (not b!5283584) (not d!1700326) (not d!1700296) (not b!5283339) (not b!5284073) (not b!5283945) (not b!5283971) (not b!5284013) (not b!5284043) (not d!1700294) (not b!5283981) (not d!1700244) (not b!5283499) (not b!5283839) (not bs!1224747) (not b!5283583) (not b!5283361) (not b!5283918) (not b!5284104) (not d!1700102) (not b!5283913) (not b!5283333) (not bm!376325) (not d!1700154) (not bm!376356) (not b!5283852) (not b!5283967) (not d!1700176) (not b!5284071) (not b!5284105) (not d!1700248) (not b!5284101) (not b!5283980) (not bm!376347) (not d!1700270) (not b!5284007) (not b!5283519) (not b!5283334) (not bm!376353) (not d!1700174) (not d!1700300) (not d!1700320) (not bm!376354))
(check-sat)
