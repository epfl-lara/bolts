; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!562734 () Bool)

(assert start!562734)

(declare-fun b!5341906 () Bool)

(assert (=> b!5341906 true))

(assert (=> b!5341906 true))

(declare-fun lambda!273928 () Int)

(declare-fun lambda!273927 () Int)

(assert (=> b!5341906 (not (= lambda!273928 lambda!273927))))

(assert (=> b!5341906 true))

(assert (=> b!5341906 true))

(declare-fun b!5341890 () Bool)

(assert (=> b!5341890 true))

(declare-fun bs!1238588 () Bool)

(declare-fun b!5341896 () Bool)

(assert (= bs!1238588 (and b!5341896 b!5341906)))

(declare-datatypes ((C!30316 0))(
  ( (C!30317 (val!24860 Int)) )
))
(declare-datatypes ((Regex!15023 0))(
  ( (ElementMatch!15023 (c!929471 C!30316)) (Concat!23868 (regOne!30558 Regex!15023) (regTwo!30558 Regex!15023)) (EmptyExpr!15023) (Star!15023 (reg!15352 Regex!15023)) (EmptyLang!15023) (Union!15023 (regOne!30559 Regex!15023) (regTwo!30559 Regex!15023)) )
))
(declare-fun r!7292 () Regex!15023)

(declare-fun lt!2178340 () Regex!15023)

(declare-fun lambda!273930 () Int)

(assert (=> bs!1238588 (= (and (= (regOne!30558 (regOne!30558 r!7292)) (regOne!30558 r!7292)) (= lt!2178340 (regTwo!30558 r!7292))) (= lambda!273930 lambda!273927))))

(assert (=> bs!1238588 (not (= lambda!273930 lambda!273928))))

(assert (=> b!5341896 true))

(assert (=> b!5341896 true))

(assert (=> b!5341896 true))

(declare-fun lambda!273931 () Int)

(assert (=> bs!1238588 (not (= lambda!273931 lambda!273927))))

(assert (=> bs!1238588 (= (and (= (regOne!30558 (regOne!30558 r!7292)) (regOne!30558 r!7292)) (= lt!2178340 (regTwo!30558 r!7292))) (= lambda!273931 lambda!273928))))

(assert (=> b!5341896 (not (= lambda!273931 lambda!273930))))

(assert (=> b!5341896 true))

(assert (=> b!5341896 true))

(assert (=> b!5341896 true))

(declare-fun lambda!273932 () Int)

(declare-fun lt!2178325 () Regex!15023)

(assert (=> bs!1238588 (= (and (= (regTwo!30558 (regOne!30558 r!7292)) (regOne!30558 r!7292)) (= lt!2178325 (regTwo!30558 r!7292))) (= lambda!273932 lambda!273927))))

(assert (=> bs!1238588 (not (= lambda!273932 lambda!273928))))

(assert (=> b!5341896 (= (and (= (regTwo!30558 (regOne!30558 r!7292)) (regOne!30558 (regOne!30558 r!7292))) (= lt!2178325 lt!2178340)) (= lambda!273932 lambda!273930))))

(assert (=> b!5341896 (not (= lambda!273932 lambda!273931))))

(assert (=> b!5341896 true))

(assert (=> b!5341896 true))

(assert (=> b!5341896 true))

(declare-fun lambda!273933 () Int)

(assert (=> b!5341896 (not (= lambda!273933 lambda!273932))))

(assert (=> bs!1238588 (not (= lambda!273933 lambda!273927))))

(assert (=> b!5341896 (= (and (= (regTwo!30558 (regOne!30558 r!7292)) (regOne!30558 (regOne!30558 r!7292))) (= lt!2178325 lt!2178340)) (= lambda!273933 lambda!273931))))

(assert (=> b!5341896 (not (= lambda!273933 lambda!273930))))

(assert (=> bs!1238588 (= (and (= (regTwo!30558 (regOne!30558 r!7292)) (regOne!30558 r!7292)) (= lt!2178325 (regTwo!30558 r!7292))) (= lambda!273933 lambda!273928))))

(assert (=> b!5341896 true))

(assert (=> b!5341896 true))

(assert (=> b!5341896 true))

(declare-fun b!5341886 () Bool)

(declare-fun e!3316916 () Bool)

(declare-fun tp!1485225 () Bool)

(assert (=> b!5341886 (= e!3316916 tp!1485225)))

(declare-fun b!5341887 () Bool)

(declare-fun tp!1485218 () Bool)

(declare-fun tp!1485224 () Bool)

(assert (=> b!5341887 (= e!3316916 (and tp!1485218 tp!1485224))))

(declare-fun e!3316902 () Bool)

(declare-fun e!3316908 () Bool)

(declare-fun tp!1485222 () Bool)

(declare-datatypes ((List!61368 0))(
  ( (Nil!61244) (Cons!61244 (h!67692 Regex!15023) (t!374585 List!61368)) )
))
(declare-datatypes ((Context!8814 0))(
  ( (Context!8815 (exprs!4907 List!61368)) )
))
(declare-datatypes ((List!61369 0))(
  ( (Nil!61245) (Cons!61245 (h!67693 Context!8814) (t!374586 List!61369)) )
))
(declare-fun zl!343 () List!61369)

(declare-fun b!5341888 () Bool)

(declare-fun inv!80804 (Context!8814) Bool)

(assert (=> b!5341888 (= e!3316902 (and (inv!80804 (h!67693 zl!343)) e!3316908 tp!1485222))))

(declare-fun res!2266247 () Bool)

(declare-fun e!3316909 () Bool)

(assert (=> start!562734 (=> (not res!2266247) (not e!3316909))))

(declare-fun validRegex!6759 (Regex!15023) Bool)

(assert (=> start!562734 (= res!2266247 (validRegex!6759 r!7292))))

(assert (=> start!562734 e!3316909))

(assert (=> start!562734 e!3316916))

(declare-fun condSetEmpty!34483 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8814))

(assert (=> start!562734 (= condSetEmpty!34483 (= z!1189 ((as const (Array Context!8814 Bool)) false)))))

(declare-fun setRes!34483 () Bool)

(assert (=> start!562734 setRes!34483))

(assert (=> start!562734 e!3316902))

(declare-fun e!3316913 () Bool)

(assert (=> start!562734 e!3316913))

(declare-fun b!5341889 () Bool)

(declare-fun res!2266253 () Bool)

(declare-fun e!3316900 () Bool)

(assert (=> b!5341889 (=> res!2266253 e!3316900)))

(declare-fun generalisedConcat!692 (List!61368) Regex!15023)

(assert (=> b!5341889 (= res!2266253 (not (= r!7292 (generalisedConcat!692 (exprs!4907 (h!67693 zl!343))))))))

(declare-fun e!3316912 () Bool)

(declare-fun e!3316910 () Bool)

(assert (=> b!5341890 (= e!3316912 e!3316910)))

(declare-fun res!2266267 () Bool)

(assert (=> b!5341890 (=> res!2266267 e!3316910)))

(declare-datatypes ((List!61370 0))(
  ( (Nil!61246) (Cons!61246 (h!67694 C!30316) (t!374587 List!61370)) )
))
(declare-fun s!2326 () List!61370)

(get-info :version)

(assert (=> b!5341890 (= res!2266267 (or (and ((_ is ElementMatch!15023) (regOne!30558 r!7292)) (= (c!929471 (regOne!30558 r!7292)) (h!67694 s!2326))) ((_ is Union!15023) (regOne!30558 r!7292))))))

(declare-datatypes ((Unit!153610 0))(
  ( (Unit!153611) )
))
(declare-fun lt!2178356 () Unit!153610)

(declare-fun e!3316906 () Unit!153610)

(assert (=> b!5341890 (= lt!2178356 e!3316906)))

(declare-fun c!929470 () Bool)

(declare-fun nullable!5192 (Regex!15023) Bool)

(assert (=> b!5341890 (= c!929470 (nullable!5192 (h!67692 (exprs!4907 (h!67693 zl!343)))))))

(declare-fun lambda!273929 () Int)

(declare-fun flatMap!750 ((InoxSet Context!8814) Int) (InoxSet Context!8814))

(declare-fun derivationStepZipperUp!395 (Context!8814 C!30316) (InoxSet Context!8814))

(assert (=> b!5341890 (= (flatMap!750 z!1189 lambda!273929) (derivationStepZipperUp!395 (h!67693 zl!343) (h!67694 s!2326)))))

(declare-fun lt!2178337 () Unit!153610)

(declare-fun lemmaFlatMapOnSingletonSet!282 ((InoxSet Context!8814) Context!8814 Int) Unit!153610)

(assert (=> b!5341890 (= lt!2178337 (lemmaFlatMapOnSingletonSet!282 z!1189 (h!67693 zl!343) lambda!273929))))

(declare-fun lt!2178334 () (InoxSet Context!8814))

(declare-fun lt!2178333 () Context!8814)

(assert (=> b!5341890 (= lt!2178334 (derivationStepZipperUp!395 lt!2178333 (h!67694 s!2326)))))

(declare-fun lt!2178327 () (InoxSet Context!8814))

(declare-fun derivationStepZipperDown!471 (Regex!15023 Context!8814 C!30316) (InoxSet Context!8814))

(assert (=> b!5341890 (= lt!2178327 (derivationStepZipperDown!471 (h!67692 (exprs!4907 (h!67693 zl!343))) lt!2178333 (h!67694 s!2326)))))

(assert (=> b!5341890 (= lt!2178333 (Context!8815 (t!374585 (exprs!4907 (h!67693 zl!343)))))))

(declare-fun lt!2178347 () (InoxSet Context!8814))

(assert (=> b!5341890 (= lt!2178347 (derivationStepZipperUp!395 (Context!8815 (Cons!61244 (h!67692 (exprs!4907 (h!67693 zl!343))) (t!374585 (exprs!4907 (h!67693 zl!343))))) (h!67694 s!2326)))))

(declare-fun b!5341891 () Bool)

(declare-fun res!2266259 () Bool)

(assert (=> b!5341891 (=> res!2266259 e!3316900)))

(declare-fun generalisedUnion!952 (List!61368) Regex!15023)

(declare-fun unfocusZipperList!465 (List!61369) List!61368)

(assert (=> b!5341891 (= res!2266259 (not (= r!7292 (generalisedUnion!952 (unfocusZipperList!465 zl!343)))))))

(declare-fun b!5341892 () Bool)

(declare-fun res!2266249 () Bool)

(assert (=> b!5341892 (=> res!2266249 e!3316910)))

(assert (=> b!5341892 (= res!2266249 (not ((_ is Concat!23868) (regOne!30558 r!7292))))))

(declare-fun b!5341893 () Bool)

(declare-fun res!2266262 () Bool)

(declare-fun e!3316904 () Bool)

(assert (=> b!5341893 (=> res!2266262 e!3316904)))

(declare-fun lt!2178338 () List!61369)

(declare-fun zipperDepth!132 (List!61369) Int)

(assert (=> b!5341893 (= res!2266262 (> (zipperDepth!132 lt!2178338) (zipperDepth!132 zl!343)))))

(declare-fun b!5341894 () Bool)

(declare-fun res!2266265 () Bool)

(assert (=> b!5341894 (=> res!2266265 e!3316900)))

(declare-fun isEmpty!33215 (List!61369) Bool)

(assert (=> b!5341894 (= res!2266265 (not (isEmpty!33215 (t!374586 zl!343))))))

(declare-fun b!5341895 () Bool)

(declare-fun e!3316903 () Bool)

(assert (=> b!5341895 (= e!3316910 e!3316903)))

(declare-fun res!2266257 () Bool)

(assert (=> b!5341895 (=> res!2266257 e!3316903)))

(declare-fun lt!2178358 () (InoxSet Context!8814))

(assert (=> b!5341895 (= res!2266257 (not (= lt!2178327 lt!2178358)))))

(declare-fun lt!2178354 () List!61368)

(assert (=> b!5341895 (= lt!2178358 (derivationStepZipperDown!471 (regOne!30558 (regOne!30558 r!7292)) (Context!8815 lt!2178354) (h!67694 s!2326)))))

(assert (=> b!5341895 (= lt!2178354 (Cons!61244 (regTwo!30558 (regOne!30558 r!7292)) (t!374585 (exprs!4907 (h!67693 zl!343)))))))

(declare-fun e!3316907 () Bool)

(assert (=> b!5341896 (= e!3316904 e!3316907)))

(declare-fun res!2266255 () Bool)

(assert (=> b!5341896 (=> res!2266255 e!3316907)))

(declare-fun lt!2178335 () Bool)

(declare-fun lt!2178355 () Bool)

(declare-fun lt!2178345 () Bool)

(assert (=> b!5341896 (= res!2266255 (or (not (= lt!2178335 lt!2178345)) (not (= lt!2178335 lt!2178355))))))

(declare-fun matchZipper!1267 ((InoxSet Context!8814) List!61370) Bool)

(assert (=> b!5341896 (= lt!2178335 (matchZipper!1267 z!1189 s!2326))))

(declare-fun Exists!2204 (Int) Bool)

(assert (=> b!5341896 (= (Exists!2204 lambda!273932) (Exists!2204 lambda!273933))))

(declare-fun lt!2178331 () Unit!153610)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!858 (Regex!15023 Regex!15023 List!61370) Unit!153610)

(assert (=> b!5341896 (= lt!2178331 (lemmaExistCutMatchRandMatchRSpecEquivalent!858 (regTwo!30558 (regOne!30558 r!7292)) lt!2178325 s!2326))))

(declare-datatypes ((tuple2!64444 0))(
  ( (tuple2!64445 (_1!35525 List!61370) (_2!35525 List!61370)) )
))
(declare-datatypes ((Option!15134 0))(
  ( (None!15133) (Some!15133 (v!51162 tuple2!64444)) )
))
(declare-fun isDefined!11837 (Option!15134) Bool)

(declare-fun findConcatSeparation!1548 (Regex!15023 Regex!15023 List!61370 List!61370 List!61370) Option!15134)

(assert (=> b!5341896 (= (isDefined!11837 (findConcatSeparation!1548 (regTwo!30558 (regOne!30558 r!7292)) lt!2178325 Nil!61246 s!2326 s!2326)) (Exists!2204 lambda!273932))))

(declare-fun lt!2178348 () Unit!153610)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1312 (Regex!15023 Regex!15023 List!61370) Unit!153610)

(assert (=> b!5341896 (= lt!2178348 (lemmaFindConcatSeparationEquivalentToExists!1312 (regTwo!30558 (regOne!30558 r!7292)) lt!2178325 s!2326))))

(assert (=> b!5341896 (= lt!2178325 (generalisedConcat!692 (t!374585 (exprs!4907 (h!67693 zl!343)))))))

(declare-fun matchR!7208 (Regex!15023 List!61370) Bool)

(declare-fun matchRSpec!2126 (Regex!15023 List!61370) Bool)

(assert (=> b!5341896 (= (matchR!7208 lt!2178340 s!2326) (matchRSpec!2126 lt!2178340 s!2326))))

(declare-fun lt!2178360 () Unit!153610)

(declare-fun mainMatchTheorem!2126 (Regex!15023 List!61370) Unit!153610)

(assert (=> b!5341896 (= lt!2178360 (mainMatchTheorem!2126 lt!2178340 s!2326))))

(assert (=> b!5341896 (= (Exists!2204 lambda!273930) (Exists!2204 lambda!273931))))

(declare-fun lt!2178341 () Unit!153610)

(assert (=> b!5341896 (= lt!2178341 (lemmaExistCutMatchRandMatchRSpecEquivalent!858 (regOne!30558 (regOne!30558 r!7292)) lt!2178340 s!2326))))

(assert (=> b!5341896 (= (isDefined!11837 (findConcatSeparation!1548 (regOne!30558 (regOne!30558 r!7292)) lt!2178340 Nil!61246 s!2326 s!2326)) (Exists!2204 lambda!273930))))

(declare-fun lt!2178330 () Unit!153610)

(assert (=> b!5341896 (= lt!2178330 (lemmaFindConcatSeparationEquivalentToExists!1312 (regOne!30558 (regOne!30558 r!7292)) lt!2178340 s!2326))))

(assert (=> b!5341896 (= lt!2178340 (generalisedConcat!692 lt!2178354))))

(declare-fun lt!2178328 () Regex!15023)

(assert (=> b!5341896 (= lt!2178355 (matchRSpec!2126 lt!2178328 s!2326))))

(declare-fun lt!2178326 () Unit!153610)

(assert (=> b!5341896 (= lt!2178326 (mainMatchTheorem!2126 lt!2178328 s!2326))))

(assert (=> b!5341896 (= lt!2178355 lt!2178345)))

(declare-fun lt!2178332 () (InoxSet Context!8814))

(assert (=> b!5341896 (= lt!2178345 (matchZipper!1267 lt!2178332 s!2326))))

(assert (=> b!5341896 (= lt!2178355 (matchR!7208 lt!2178328 s!2326))))

(declare-fun lt!2178353 () Unit!153610)

(declare-fun theoremZipperRegexEquiv!421 ((InoxSet Context!8814) List!61369 Regex!15023 List!61370) Unit!153610)

(assert (=> b!5341896 (= lt!2178353 (theoremZipperRegexEquiv!421 lt!2178332 lt!2178338 lt!2178328 s!2326))))

(declare-fun lt!2178339 () List!61368)

(assert (=> b!5341896 (= lt!2178328 (generalisedConcat!692 lt!2178339))))

(declare-fun b!5341897 () Bool)

(declare-fun tp!1485221 () Bool)

(assert (=> b!5341897 (= e!3316908 tp!1485221)))

(declare-fun b!5341898 () Bool)

(declare-fun res!2266246 () Bool)

(assert (=> b!5341898 (=> (not res!2266246) (not e!3316909))))

(declare-fun unfocusZipper!765 (List!61369) Regex!15023)

(assert (=> b!5341898 (= res!2266246 (= r!7292 (unfocusZipper!765 zl!343)))))

(declare-fun b!5341899 () Bool)

(declare-fun e!3316905 () Bool)

(assert (=> b!5341899 (= e!3316905 e!3316904)))

(declare-fun res!2266263 () Bool)

(assert (=> b!5341899 (=> res!2266263 e!3316904)))

(declare-fun zipperDepthTotal!176 (List!61369) Int)

(assert (=> b!5341899 (= res!2266263 (>= (zipperDepthTotal!176 lt!2178338) (zipperDepthTotal!176 zl!343)))))

(declare-fun lt!2178349 () Context!8814)

(assert (=> b!5341899 (= lt!2178338 (Cons!61245 lt!2178349 Nil!61245))))

(declare-fun b!5341900 () Bool)

(declare-fun res!2266266 () Bool)

(assert (=> b!5341900 (=> res!2266266 e!3316900)))

(assert (=> b!5341900 (= res!2266266 (not ((_ is Cons!61244) (exprs!4907 (h!67693 zl!343)))))))

(declare-fun b!5341901 () Bool)

(declare-fun res!2266258 () Bool)

(assert (=> b!5341901 (=> (not res!2266258) (not e!3316909))))

(declare-fun toList!8807 ((InoxSet Context!8814)) List!61369)

(assert (=> b!5341901 (= res!2266258 (= (toList!8807 z!1189) zl!343))))

(declare-fun b!5341902 () Bool)

(declare-fun e!3316911 () Bool)

(assert (=> b!5341902 (= e!3316903 e!3316911)))

(declare-fun res!2266244 () Bool)

(assert (=> b!5341902 (=> res!2266244 e!3316911)))

(declare-fun lt!2178359 () Bool)

(assert (=> b!5341902 (= res!2266244 (not (= lt!2178359 (matchZipper!1267 lt!2178358 (t!374587 s!2326)))))))

(assert (=> b!5341902 (= lt!2178359 (matchZipper!1267 lt!2178327 (t!374587 s!2326)))))

(declare-fun b!5341903 () Bool)

(declare-fun res!2266260 () Bool)

(assert (=> b!5341903 (=> res!2266260 e!3316912)))

(declare-fun isEmpty!33216 (List!61368) Bool)

(assert (=> b!5341903 (= res!2266260 (isEmpty!33216 (t!374585 (exprs!4907 (h!67693 zl!343)))))))

(declare-fun b!5341904 () Bool)

(declare-fun e!3316901 () Bool)

(assert (=> b!5341904 (= e!3316901 (nullable!5192 (regOne!30558 (regOne!30558 r!7292))))))

(declare-fun b!5341905 () Bool)

(declare-fun e!3316915 () Bool)

(assert (=> b!5341905 (= e!3316915 e!3316905)))

(declare-fun res!2266248 () Bool)

(assert (=> b!5341905 (=> res!2266248 e!3316905)))

(declare-fun lt!2178329 () Regex!15023)

(assert (=> b!5341905 (= res!2266248 (not (= (exprs!4907 (h!67693 zl!343)) (Cons!61244 lt!2178329 (t!374585 (exprs!4907 (h!67693 zl!343)))))))))

(assert (=> b!5341905 (= lt!2178329 (Concat!23868 (regOne!30558 (regOne!30558 r!7292)) (regTwo!30558 (regOne!30558 r!7292))))))

(declare-fun setIsEmpty!34483 () Bool)

(assert (=> setIsEmpty!34483 setRes!34483))

(assert (=> b!5341906 (= e!3316900 e!3316912)))

(declare-fun res!2266261 () Bool)

(assert (=> b!5341906 (=> res!2266261 e!3316912)))

(declare-fun lt!2178324 () Bool)

(declare-fun lt!2178346 () Bool)

(assert (=> b!5341906 (= res!2266261 (or (not (= lt!2178324 lt!2178346)) ((_ is Nil!61246) s!2326)))))

(assert (=> b!5341906 (= (Exists!2204 lambda!273927) (Exists!2204 lambda!273928))))

(declare-fun lt!2178357 () Unit!153610)

(assert (=> b!5341906 (= lt!2178357 (lemmaExistCutMatchRandMatchRSpecEquivalent!858 (regOne!30558 r!7292) (regTwo!30558 r!7292) s!2326))))

(assert (=> b!5341906 (= lt!2178346 (Exists!2204 lambda!273927))))

(assert (=> b!5341906 (= lt!2178346 (isDefined!11837 (findConcatSeparation!1548 (regOne!30558 r!7292) (regTwo!30558 r!7292) Nil!61246 s!2326 s!2326)))))

(declare-fun lt!2178350 () Unit!153610)

(assert (=> b!5341906 (= lt!2178350 (lemmaFindConcatSeparationEquivalentToExists!1312 (regOne!30558 r!7292) (regTwo!30558 r!7292) s!2326))))

(declare-fun setElem!34483 () Context!8814)

(declare-fun setNonEmpty!34483 () Bool)

(declare-fun tp!1485216 () Bool)

(declare-fun e!3316914 () Bool)

(assert (=> setNonEmpty!34483 (= setRes!34483 (and tp!1485216 (inv!80804 setElem!34483) e!3316914))))

(declare-fun setRest!34483 () (InoxSet Context!8814))

(assert (=> setNonEmpty!34483 (= z!1189 ((_ map or) (store ((as const (Array Context!8814 Bool)) false) setElem!34483 true) setRest!34483))))

(declare-fun b!5341907 () Bool)

(declare-fun tp!1485217 () Bool)

(assert (=> b!5341907 (= e!3316914 tp!1485217)))

(declare-fun b!5341908 () Bool)

(declare-fun Unit!153612 () Unit!153610)

(assert (=> b!5341908 (= e!3316906 Unit!153612)))

(declare-fun lt!2178342 () Unit!153610)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!260 ((InoxSet Context!8814) (InoxSet Context!8814) List!61370) Unit!153610)

(assert (=> b!5341908 (= lt!2178342 (lemmaZipperConcatMatchesSameAsBothZippers!260 lt!2178327 lt!2178334 (t!374587 s!2326)))))

(declare-fun res!2266251 () Bool)

(assert (=> b!5341908 (= res!2266251 (matchZipper!1267 lt!2178327 (t!374587 s!2326)))))

(declare-fun e!3316899 () Bool)

(assert (=> b!5341908 (=> res!2266251 e!3316899)))

(assert (=> b!5341908 (= (matchZipper!1267 ((_ map or) lt!2178327 lt!2178334) (t!374587 s!2326)) e!3316899)))

(declare-fun b!5341909 () Bool)

(declare-fun tp_is_empty!39299 () Bool)

(assert (=> b!5341909 (= e!3316916 tp_is_empty!39299)))

(declare-fun b!5341910 () Bool)

(declare-fun Unit!153613 () Unit!153610)

(assert (=> b!5341910 (= e!3316906 Unit!153613)))

(declare-fun b!5341911 () Bool)

(declare-fun res!2266250 () Bool)

(assert (=> b!5341911 (=> res!2266250 e!3316905)))

(declare-fun contextDepthTotal!156 (Context!8814) Int)

(assert (=> b!5341911 (= res!2266250 (>= (contextDepthTotal!156 lt!2178349) (contextDepthTotal!156 (h!67693 zl!343))))))

(declare-fun b!5341912 () Bool)

(declare-fun res!2266245 () Bool)

(assert (=> b!5341912 (=> res!2266245 e!3316907)))

(assert (=> b!5341912 (= res!2266245 (not (= lt!2178324 (matchR!7208 (Concat!23868 (regOne!30558 r!7292) (regTwo!30558 r!7292)) s!2326))))))

(declare-fun b!5341913 () Bool)

(declare-fun tp!1485223 () Bool)

(assert (=> b!5341913 (= e!3316913 (and tp_is_empty!39299 tp!1485223))))

(declare-fun b!5341914 () Bool)

(assert (=> b!5341914 (= e!3316907 true)))

(declare-fun lt!2178336 () Bool)

(assert (=> b!5341914 (= lt!2178336 (matchR!7208 (Concat!23868 lt!2178329 (regTwo!30558 r!7292)) s!2326))))

(declare-fun b!5341915 () Bool)

(declare-fun res!2266242 () Bool)

(assert (=> b!5341915 (=> res!2266242 e!3316915)))

(declare-fun lt!2178352 () (InoxSet Context!8814))

(assert (=> b!5341915 (= res!2266242 (not (= lt!2178359 (matchZipper!1267 lt!2178352 (t!374587 s!2326)))))))

(declare-fun b!5341916 () Bool)

(assert (=> b!5341916 (= e!3316899 (matchZipper!1267 lt!2178334 (t!374587 s!2326)))))

(declare-fun b!5341917 () Bool)

(declare-fun res!2266264 () Bool)

(assert (=> b!5341917 (=> res!2266264 e!3316900)))

(assert (=> b!5341917 (= res!2266264 (or ((_ is EmptyExpr!15023) r!7292) ((_ is EmptyLang!15023) r!7292) ((_ is ElementMatch!15023) r!7292) ((_ is Union!15023) r!7292) (not ((_ is Concat!23868) r!7292))))))

(declare-fun b!5341918 () Bool)

(assert (=> b!5341918 (= e!3316909 (not e!3316900))))

(declare-fun res!2266243 () Bool)

(assert (=> b!5341918 (=> res!2266243 e!3316900)))

(assert (=> b!5341918 (= res!2266243 (not ((_ is Cons!61245) zl!343)))))

(assert (=> b!5341918 (= lt!2178324 (matchRSpec!2126 r!7292 s!2326))))

(assert (=> b!5341918 (= lt!2178324 (matchR!7208 r!7292 s!2326))))

(declare-fun lt!2178351 () Unit!153610)

(assert (=> b!5341918 (= lt!2178351 (mainMatchTheorem!2126 r!7292 s!2326))))

(declare-fun b!5341919 () Bool)

(declare-fun tp!1485220 () Bool)

(declare-fun tp!1485219 () Bool)

(assert (=> b!5341919 (= e!3316916 (and tp!1485220 tp!1485219))))

(declare-fun b!5341920 () Bool)

(declare-fun res!2266254 () Bool)

(assert (=> b!5341920 (=> res!2266254 e!3316910)))

(assert (=> b!5341920 (= res!2266254 e!3316901)))

(declare-fun res!2266252 () Bool)

(assert (=> b!5341920 (=> (not res!2266252) (not e!3316901))))

(assert (=> b!5341920 (= res!2266252 ((_ is Concat!23868) (regOne!30558 r!7292)))))

(declare-fun b!5341921 () Bool)

(assert (=> b!5341921 (= e!3316911 e!3316915)))

(declare-fun res!2266256 () Bool)

(assert (=> b!5341921 (=> res!2266256 e!3316915)))

(assert (=> b!5341921 (= res!2266256 (not (= lt!2178352 lt!2178358)))))

(assert (=> b!5341921 (= (flatMap!750 lt!2178332 lambda!273929) (derivationStepZipperUp!395 lt!2178349 (h!67694 s!2326)))))

(declare-fun lt!2178343 () Unit!153610)

(assert (=> b!5341921 (= lt!2178343 (lemmaFlatMapOnSingletonSet!282 lt!2178332 lt!2178349 lambda!273929))))

(declare-fun lt!2178344 () (InoxSet Context!8814))

(assert (=> b!5341921 (= lt!2178344 (derivationStepZipperUp!395 lt!2178349 (h!67694 s!2326)))))

(declare-fun derivationStepZipper!1264 ((InoxSet Context!8814) C!30316) (InoxSet Context!8814))

(assert (=> b!5341921 (= lt!2178352 (derivationStepZipper!1264 lt!2178332 (h!67694 s!2326)))))

(assert (=> b!5341921 (= lt!2178332 (store ((as const (Array Context!8814 Bool)) false) lt!2178349 true))))

(assert (=> b!5341921 (= lt!2178349 (Context!8815 lt!2178339))))

(assert (=> b!5341921 (= lt!2178339 (Cons!61244 (regOne!30558 (regOne!30558 r!7292)) lt!2178354))))

(assert (= (and start!562734 res!2266247) b!5341901))

(assert (= (and b!5341901 res!2266258) b!5341898))

(assert (= (and b!5341898 res!2266246) b!5341918))

(assert (= (and b!5341918 (not res!2266243)) b!5341894))

(assert (= (and b!5341894 (not res!2266265)) b!5341889))

(assert (= (and b!5341889 (not res!2266253)) b!5341900))

(assert (= (and b!5341900 (not res!2266266)) b!5341891))

(assert (= (and b!5341891 (not res!2266259)) b!5341917))

(assert (= (and b!5341917 (not res!2266264)) b!5341906))

(assert (= (and b!5341906 (not res!2266261)) b!5341903))

(assert (= (and b!5341903 (not res!2266260)) b!5341890))

(assert (= (and b!5341890 c!929470) b!5341908))

(assert (= (and b!5341890 (not c!929470)) b!5341910))

(assert (= (and b!5341908 (not res!2266251)) b!5341916))

(assert (= (and b!5341890 (not res!2266267)) b!5341920))

(assert (= (and b!5341920 res!2266252) b!5341904))

(assert (= (and b!5341920 (not res!2266254)) b!5341892))

(assert (= (and b!5341892 (not res!2266249)) b!5341895))

(assert (= (and b!5341895 (not res!2266257)) b!5341902))

(assert (= (and b!5341902 (not res!2266244)) b!5341921))

(assert (= (and b!5341921 (not res!2266256)) b!5341915))

(assert (= (and b!5341915 (not res!2266242)) b!5341905))

(assert (= (and b!5341905 (not res!2266248)) b!5341911))

(assert (= (and b!5341911 (not res!2266250)) b!5341899))

(assert (= (and b!5341899 (not res!2266263)) b!5341893))

(assert (= (and b!5341893 (not res!2266262)) b!5341896))

(assert (= (and b!5341896 (not res!2266255)) b!5341912))

(assert (= (and b!5341912 (not res!2266245)) b!5341914))

(assert (= (and start!562734 ((_ is ElementMatch!15023) r!7292)) b!5341909))

(assert (= (and start!562734 ((_ is Concat!23868) r!7292)) b!5341919))

(assert (= (and start!562734 ((_ is Star!15023) r!7292)) b!5341886))

(assert (= (and start!562734 ((_ is Union!15023) r!7292)) b!5341887))

(assert (= (and start!562734 condSetEmpty!34483) setIsEmpty!34483))

(assert (= (and start!562734 (not condSetEmpty!34483)) setNonEmpty!34483))

(assert (= setNonEmpty!34483 b!5341907))

(assert (= b!5341888 b!5341897))

(assert (= (and start!562734 ((_ is Cons!61245) zl!343)) b!5341888))

(assert (= (and start!562734 ((_ is Cons!61246) s!2326)) b!5341913))

(declare-fun m!6374106 () Bool)

(assert (=> b!5341914 m!6374106))

(declare-fun m!6374108 () Bool)

(assert (=> b!5341891 m!6374108))

(assert (=> b!5341891 m!6374108))

(declare-fun m!6374110 () Bool)

(assert (=> b!5341891 m!6374110))

(declare-fun m!6374112 () Bool)

(assert (=> b!5341894 m!6374112))

(declare-fun m!6374114 () Bool)

(assert (=> b!5341888 m!6374114))

(declare-fun m!6374116 () Bool)

(assert (=> b!5341921 m!6374116))

(declare-fun m!6374118 () Bool)

(assert (=> b!5341921 m!6374118))

(declare-fun m!6374120 () Bool)

(assert (=> b!5341921 m!6374120))

(declare-fun m!6374122 () Bool)

(assert (=> b!5341921 m!6374122))

(declare-fun m!6374124 () Bool)

(assert (=> b!5341921 m!6374124))

(declare-fun m!6374126 () Bool)

(assert (=> b!5341898 m!6374126))

(declare-fun m!6374128 () Bool)

(assert (=> b!5341903 m!6374128))

(declare-fun m!6374130 () Bool)

(assert (=> b!5341904 m!6374130))

(declare-fun m!6374132 () Bool)

(assert (=> b!5341890 m!6374132))

(declare-fun m!6374134 () Bool)

(assert (=> b!5341890 m!6374134))

(declare-fun m!6374136 () Bool)

(assert (=> b!5341890 m!6374136))

(declare-fun m!6374138 () Bool)

(assert (=> b!5341890 m!6374138))

(declare-fun m!6374140 () Bool)

(assert (=> b!5341890 m!6374140))

(declare-fun m!6374142 () Bool)

(assert (=> b!5341890 m!6374142))

(declare-fun m!6374144 () Bool)

(assert (=> b!5341890 m!6374144))

(declare-fun m!6374146 () Bool)

(assert (=> b!5341901 m!6374146))

(declare-fun m!6374148 () Bool)

(assert (=> b!5341911 m!6374148))

(declare-fun m!6374150 () Bool)

(assert (=> b!5341911 m!6374150))

(declare-fun m!6374152 () Bool)

(assert (=> b!5341906 m!6374152))

(declare-fun m!6374154 () Bool)

(assert (=> b!5341906 m!6374154))

(declare-fun m!6374156 () Bool)

(assert (=> b!5341906 m!6374156))

(declare-fun m!6374158 () Bool)

(assert (=> b!5341906 m!6374158))

(declare-fun m!6374160 () Bool)

(assert (=> b!5341906 m!6374160))

(assert (=> b!5341906 m!6374156))

(assert (=> b!5341906 m!6374152))

(declare-fun m!6374162 () Bool)

(assert (=> b!5341906 m!6374162))

(declare-fun m!6374164 () Bool)

(assert (=> b!5341893 m!6374164))

(declare-fun m!6374166 () Bool)

(assert (=> b!5341893 m!6374166))

(declare-fun m!6374168 () Bool)

(assert (=> b!5341896 m!6374168))

(declare-fun m!6374170 () Bool)

(assert (=> b!5341896 m!6374170))

(declare-fun m!6374172 () Bool)

(assert (=> b!5341896 m!6374172))

(declare-fun m!6374174 () Bool)

(assert (=> b!5341896 m!6374174))

(assert (=> b!5341896 m!6374174))

(declare-fun m!6374176 () Bool)

(assert (=> b!5341896 m!6374176))

(declare-fun m!6374178 () Bool)

(assert (=> b!5341896 m!6374178))

(declare-fun m!6374180 () Bool)

(assert (=> b!5341896 m!6374180))

(declare-fun m!6374182 () Bool)

(assert (=> b!5341896 m!6374182))

(declare-fun m!6374184 () Bool)

(assert (=> b!5341896 m!6374184))

(declare-fun m!6374186 () Bool)

(assert (=> b!5341896 m!6374186))

(declare-fun m!6374188 () Bool)

(assert (=> b!5341896 m!6374188))

(declare-fun m!6374190 () Bool)

(assert (=> b!5341896 m!6374190))

(declare-fun m!6374192 () Bool)

(assert (=> b!5341896 m!6374192))

(declare-fun m!6374194 () Bool)

(assert (=> b!5341896 m!6374194))

(declare-fun m!6374196 () Bool)

(assert (=> b!5341896 m!6374196))

(declare-fun m!6374198 () Bool)

(assert (=> b!5341896 m!6374198))

(declare-fun m!6374200 () Bool)

(assert (=> b!5341896 m!6374200))

(declare-fun m!6374202 () Bool)

(assert (=> b!5341896 m!6374202))

(declare-fun m!6374204 () Bool)

(assert (=> b!5341896 m!6374204))

(assert (=> b!5341896 m!6374196))

(assert (=> b!5341896 m!6374200))

(assert (=> b!5341896 m!6374172))

(declare-fun m!6374206 () Bool)

(assert (=> b!5341896 m!6374206))

(declare-fun m!6374208 () Bool)

(assert (=> b!5341896 m!6374208))

(declare-fun m!6374210 () Bool)

(assert (=> b!5341896 m!6374210))

(declare-fun m!6374212 () Bool)

(assert (=> b!5341896 m!6374212))

(declare-fun m!6374214 () Bool)

(assert (=> b!5341896 m!6374214))

(declare-fun m!6374216 () Bool)

(assert (=> b!5341899 m!6374216))

(declare-fun m!6374218 () Bool)

(assert (=> b!5341899 m!6374218))

(declare-fun m!6374220 () Bool)

(assert (=> b!5341902 m!6374220))

(declare-fun m!6374222 () Bool)

(assert (=> b!5341902 m!6374222))

(declare-fun m!6374224 () Bool)

(assert (=> b!5341912 m!6374224))

(declare-fun m!6374226 () Bool)

(assert (=> b!5341889 m!6374226))

(declare-fun m!6374228 () Bool)

(assert (=> b!5341915 m!6374228))

(declare-fun m!6374230 () Bool)

(assert (=> setNonEmpty!34483 m!6374230))

(declare-fun m!6374232 () Bool)

(assert (=> b!5341908 m!6374232))

(assert (=> b!5341908 m!6374222))

(declare-fun m!6374234 () Bool)

(assert (=> b!5341908 m!6374234))

(declare-fun m!6374236 () Bool)

(assert (=> b!5341895 m!6374236))

(declare-fun m!6374238 () Bool)

(assert (=> b!5341916 m!6374238))

(declare-fun m!6374240 () Bool)

(assert (=> start!562734 m!6374240))

(declare-fun m!6374242 () Bool)

(assert (=> b!5341918 m!6374242))

(declare-fun m!6374244 () Bool)

(assert (=> b!5341918 m!6374244))

(declare-fun m!6374246 () Bool)

(assert (=> b!5341918 m!6374246))

(check-sat (not b!5341911) (not b!5341895) (not b!5341916) (not start!562734) (not b!5341893) (not b!5341907) (not b!5341898) (not b!5341894) (not b!5341919) (not b!5341891) (not b!5341888) (not b!5341914) (not b!5341887) (not b!5341908) (not setNonEmpty!34483) (not b!5341899) (not b!5341904) (not b!5341921) (not b!5341902) (not b!5341896) (not b!5341915) (not b!5341890) (not b!5341889) (not b!5341897) (not b!5341903) (not b!5341912) (not b!5341913) (not b!5341918) tp_is_empty!39299 (not b!5341886) (not b!5341906) (not b!5341901))
(check-sat)
