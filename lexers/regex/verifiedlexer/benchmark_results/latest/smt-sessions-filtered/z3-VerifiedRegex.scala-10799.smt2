; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!554130 () Bool)

(assert start!554130)

(declare-fun b!5242476 () Bool)

(assert (=> b!5242476 true))

(assert (=> b!5242476 true))

(declare-fun lambda!263727 () Int)

(declare-fun lambda!263726 () Int)

(assert (=> b!5242476 (not (= lambda!263727 lambda!263726))))

(assert (=> b!5242476 true))

(assert (=> b!5242476 true))

(declare-fun b!5242455 () Bool)

(assert (=> b!5242455 true))

(declare-fun b!5242439 () Bool)

(declare-fun e!3261915 () Bool)

(declare-fun tp!1467779 () Bool)

(assert (=> b!5242439 (= e!3261915 tp!1467779)))

(declare-fun b!5242440 () Bool)

(declare-fun e!3261899 () Bool)

(declare-fun tp!1467785 () Bool)

(assert (=> b!5242440 (= e!3261899 tp!1467785)))

(declare-fun b!5242441 () Bool)

(declare-fun e!3261906 () Bool)

(declare-fun tp!1467776 () Bool)

(assert (=> b!5242441 (= e!3261906 tp!1467776)))

(declare-fun b!5242442 () Bool)

(declare-datatypes ((Unit!152774 0))(
  ( (Unit!152775) )
))
(declare-fun e!3261903 () Unit!152774)

(declare-fun Unit!152776 () Unit!152774)

(assert (=> b!5242442 (= e!3261903 Unit!152776)))

(declare-datatypes ((C!29960 0))(
  ( (C!29961 (val!24682 Int)) )
))
(declare-datatypes ((List!60834 0))(
  ( (Nil!60710) (Cons!60710 (h!67158 C!29960) (t!374015 List!60834)) )
))
(declare-fun s!2326 () List!60834)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14845 0))(
  ( (ElementMatch!14845 (c!906205 C!29960)) (Concat!23690 (regOne!30202 Regex!14845) (regTwo!30202 Regex!14845)) (EmptyExpr!14845) (Star!14845 (reg!15174 Regex!14845)) (EmptyLang!14845) (Union!14845 (regOne!30203 Regex!14845) (regTwo!30203 Regex!14845)) )
))
(declare-datatypes ((List!60835 0))(
  ( (Nil!60711) (Cons!60711 (h!67159 Regex!14845) (t!374016 List!60835)) )
))
(declare-datatypes ((Context!8458 0))(
  ( (Context!8459 (exprs!4729 List!60835)) )
))
(declare-fun lt!2149123 () (InoxSet Context!8458))

(declare-fun lt!2149098 () Unit!152774)

(declare-fun lt!2149107 () (InoxSet Context!8458))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!82 ((InoxSet Context!8458) (InoxSet Context!8458) List!60834) Unit!152774)

(assert (=> b!5242442 (= lt!2149098 (lemmaZipperConcatMatchesSameAsBothZippers!82 lt!2149107 lt!2149123 (t!374015 s!2326)))))

(declare-fun res!2225020 () Bool)

(declare-fun matchZipper!1089 ((InoxSet Context!8458) List!60834) Bool)

(assert (=> b!5242442 (= res!2225020 (matchZipper!1089 lt!2149107 (t!374015 s!2326)))))

(declare-fun e!3261901 () Bool)

(assert (=> b!5242442 (=> res!2225020 e!3261901)))

(assert (=> b!5242442 (= (matchZipper!1089 ((_ map or) lt!2149107 lt!2149123) (t!374015 s!2326)) e!3261901)))

(declare-fun b!5242443 () Bool)

(assert (=> b!5242443 (= e!3261901 (matchZipper!1089 lt!2149123 (t!374015 s!2326)))))

(declare-fun b!5242444 () Bool)

(declare-fun e!3261905 () Bool)

(declare-fun tp_is_empty!38943 () Bool)

(declare-fun tp!1467782 () Bool)

(assert (=> b!5242444 (= e!3261905 (and tp_is_empty!38943 tp!1467782))))

(declare-fun b!5242445 () Bool)

(declare-fun res!2225017 () Bool)

(declare-fun e!3261908 () Bool)

(assert (=> b!5242445 (=> res!2225017 e!3261908)))

(declare-datatypes ((List!60836 0))(
  ( (Nil!60712) (Cons!60712 (h!67160 Context!8458) (t!374017 List!60836)) )
))
(declare-fun zl!343 () List!60836)

(declare-fun isEmpty!32643 (List!60835) Bool)

(assert (=> b!5242445 (= res!2225017 (isEmpty!32643 (t!374016 (exprs!4729 (h!67160 zl!343)))))))

(declare-fun b!5242446 () Bool)

(declare-fun e!3261897 () Bool)

(declare-fun e!3261913 () Bool)

(assert (=> b!5242446 (= e!3261897 e!3261913)))

(declare-fun res!2225018 () Bool)

(assert (=> b!5242446 (=> res!2225018 e!3261913)))

(declare-fun e!3261909 () Bool)

(assert (=> b!5242446 (= res!2225018 e!3261909)))

(declare-fun res!2225015 () Bool)

(assert (=> b!5242446 (=> (not res!2225015) (not e!3261909))))

(declare-fun lt!2149101 () (InoxSet Context!8458))

(declare-fun lt!2149125 () Bool)

(assert (=> b!5242446 (= res!2225015 (not (= (matchZipper!1089 lt!2149101 (t!374015 s!2326)) lt!2149125)))))

(declare-fun lt!2149087 () (InoxSet Context!8458))

(declare-fun e!3261911 () Bool)

(assert (=> b!5242446 (= (matchZipper!1089 lt!2149087 (t!374015 s!2326)) e!3261911)))

(declare-fun res!2225029 () Bool)

(assert (=> b!5242446 (=> res!2225029 e!3261911)))

(assert (=> b!5242446 (= res!2225029 lt!2149125)))

(declare-fun lt!2149093 () (InoxSet Context!8458))

(assert (=> b!5242446 (= lt!2149125 (matchZipper!1089 lt!2149093 (t!374015 s!2326)))))

(declare-fun lt!2149096 () Unit!152774)

(assert (=> b!5242446 (= lt!2149096 (lemmaZipperConcatMatchesSameAsBothZippers!82 lt!2149093 lt!2149107 (t!374015 s!2326)))))

(declare-fun b!5242447 () Bool)

(declare-fun e!3261916 () Unit!152774)

(declare-fun Unit!152777 () Unit!152774)

(assert (=> b!5242447 (= e!3261916 Unit!152777)))

(declare-fun b!5242448 () Bool)

(declare-fun e!3261912 () Bool)

(assert (=> b!5242448 (= e!3261912 e!3261897)))

(declare-fun res!2225023 () Bool)

(assert (=> b!5242448 (=> res!2225023 e!3261897)))

(assert (=> b!5242448 (= res!2225023 (not (= lt!2149101 lt!2149087)))))

(assert (=> b!5242448 (= lt!2149087 ((_ map or) lt!2149093 lt!2149107))))

(declare-fun r!7292 () Regex!14845)

(declare-fun lt!2149086 () Context!8458)

(declare-fun derivationStepZipperDown!293 (Regex!14845 Context!8458 C!29960) (InoxSet Context!8458))

(assert (=> b!5242448 (= lt!2149107 (derivationStepZipperDown!293 (regTwo!30203 (regOne!30202 r!7292)) lt!2149086 (h!67158 s!2326)))))

(assert (=> b!5242448 (= lt!2149093 (derivationStepZipperDown!293 (regOne!30203 (regOne!30202 r!7292)) lt!2149086 (h!67158 s!2326)))))

(declare-fun b!5242449 () Bool)

(declare-fun e!3261918 () Bool)

(assert (=> b!5242449 (= e!3261913 e!3261918)))

(declare-fun res!2225014 () Bool)

(assert (=> b!5242449 (=> res!2225014 e!3261918)))

(declare-fun lt!2149115 () Bool)

(declare-fun e!3261914 () Bool)

(assert (=> b!5242449 (= res!2225014 (not (= lt!2149115 e!3261914)))))

(declare-fun res!2225022 () Bool)

(assert (=> b!5242449 (=> res!2225022 e!3261914)))

(declare-fun lt!2149108 () Bool)

(assert (=> b!5242449 (= res!2225022 lt!2149108)))

(declare-fun z!1189 () (InoxSet Context!8458))

(assert (=> b!5242449 (= lt!2149115 (matchZipper!1089 z!1189 s!2326))))

(declare-fun lt!2149118 () (InoxSet Context!8458))

(assert (=> b!5242449 (= lt!2149108 (matchZipper!1089 lt!2149118 s!2326))))

(declare-fun lt!2149127 () Unit!152774)

(assert (=> b!5242449 (= lt!2149127 e!3261903)))

(declare-fun c!906203 () Bool)

(declare-fun nullable!5014 (Regex!14845) Bool)

(assert (=> b!5242449 (= c!906203 (nullable!5014 (regTwo!30203 (regOne!30202 r!7292))))))

(declare-fun lt!2149120 () Context!8458)

(declare-fun lambda!263728 () Int)

(declare-fun lt!2149099 () (InoxSet Context!8458))

(declare-fun flatMap!572 ((InoxSet Context!8458) Int) (InoxSet Context!8458))

(declare-fun derivationStepZipperUp!217 (Context!8458 C!29960) (InoxSet Context!8458))

(assert (=> b!5242449 (= (flatMap!572 lt!2149099 lambda!263728) (derivationStepZipperUp!217 lt!2149120 (h!67158 s!2326)))))

(declare-fun lt!2149088 () Unit!152774)

(declare-fun lemmaFlatMapOnSingletonSet!104 ((InoxSet Context!8458) Context!8458 Int) Unit!152774)

(assert (=> b!5242449 (= lt!2149088 (lemmaFlatMapOnSingletonSet!104 lt!2149099 lt!2149120 lambda!263728))))

(declare-fun lt!2149097 () (InoxSet Context!8458))

(assert (=> b!5242449 (= lt!2149097 (derivationStepZipperUp!217 lt!2149120 (h!67158 s!2326)))))

(declare-fun lt!2149124 () Unit!152774)

(assert (=> b!5242449 (= lt!2149124 e!3261916)))

(declare-fun c!906202 () Bool)

(assert (=> b!5242449 (= c!906202 (nullable!5014 (regOne!30203 (regOne!30202 r!7292))))))

(declare-fun lt!2149110 () Context!8458)

(assert (=> b!5242449 (= (flatMap!572 lt!2149118 lambda!263728) (derivationStepZipperUp!217 lt!2149110 (h!67158 s!2326)))))

(declare-fun lt!2149129 () Unit!152774)

(assert (=> b!5242449 (= lt!2149129 (lemmaFlatMapOnSingletonSet!104 lt!2149118 lt!2149110 lambda!263728))))

(declare-fun lt!2149112 () (InoxSet Context!8458))

(assert (=> b!5242449 (= lt!2149112 (derivationStepZipperUp!217 lt!2149110 (h!67158 s!2326)))))

(assert (=> b!5242449 (= lt!2149099 (store ((as const (Array Context!8458 Bool)) false) lt!2149120 true))))

(declare-fun lt!2149119 () List!60835)

(assert (=> b!5242449 (= lt!2149120 (Context!8459 lt!2149119))))

(assert (=> b!5242449 (= lt!2149119 (Cons!60711 (regTwo!30203 (regOne!30202 r!7292)) (t!374016 (exprs!4729 (h!67160 zl!343)))))))

(assert (=> b!5242449 (= lt!2149118 (store ((as const (Array Context!8458 Bool)) false) lt!2149110 true))))

(declare-fun lt!2149104 () List!60835)

(assert (=> b!5242449 (= lt!2149110 (Context!8459 lt!2149104))))

(assert (=> b!5242449 (= lt!2149104 (Cons!60711 (regOne!30203 (regOne!30202 r!7292)) (t!374016 (exprs!4729 (h!67160 zl!343)))))))

(declare-fun b!5242450 () Bool)

(assert (=> b!5242450 (= e!3261899 tp_is_empty!38943)))

(declare-fun b!5242452 () Bool)

(declare-fun e!3261904 () Bool)

(assert (=> b!5242452 (= e!3261918 e!3261904)))

(declare-fun res!2225027 () Bool)

(assert (=> b!5242452 (=> res!2225027 e!3261904)))

(declare-fun lt!2149106 () Int)

(declare-fun lt!2149109 () Int)

(assert (=> b!5242452 (= res!2225027 (>= lt!2149106 lt!2149109))))

(declare-fun zipperDepthTotal!26 (List!60836) Int)

(assert (=> b!5242452 (= lt!2149109 (zipperDepthTotal!26 zl!343))))

(declare-fun lt!2149121 () List!60836)

(assert (=> b!5242452 (= lt!2149106 (zipperDepthTotal!26 lt!2149121))))

(assert (=> b!5242452 (= lt!2149121 (Cons!60712 lt!2149110 Nil!60712))))

(declare-fun b!5242453 () Bool)

(declare-fun e!3261898 () Bool)

(declare-fun e!3261910 () Bool)

(assert (=> b!5242453 (= e!3261898 (not e!3261910))))

(declare-fun res!2225025 () Bool)

(assert (=> b!5242453 (=> res!2225025 e!3261910)))

(get-info :version)

(assert (=> b!5242453 (= res!2225025 (not ((_ is Cons!60712) zl!343)))))

(declare-fun lt!2149102 () Bool)

(declare-fun matchRSpec!1948 (Regex!14845 List!60834) Bool)

(assert (=> b!5242453 (= lt!2149102 (matchRSpec!1948 r!7292 s!2326))))

(declare-fun matchR!7030 (Regex!14845 List!60834) Bool)

(assert (=> b!5242453 (= lt!2149102 (matchR!7030 r!7292 s!2326))))

(declare-fun lt!2149116 () Unit!152774)

(declare-fun mainMatchTheorem!1948 (Regex!14845 List!60834) Unit!152774)

(assert (=> b!5242453 (= lt!2149116 (mainMatchTheorem!1948 r!7292 s!2326))))

(declare-fun b!5242454 () Bool)

(declare-fun res!2225034 () Bool)

(assert (=> b!5242454 (=> res!2225034 e!3261910)))

(declare-fun isEmpty!32644 (List!60836) Bool)

(assert (=> b!5242454 (= res!2225034 (not (isEmpty!32644 (t!374017 zl!343))))))

(assert (=> b!5242455 (= e!3261908 e!3261912)))

(declare-fun res!2225011 () Bool)

(assert (=> b!5242455 (=> res!2225011 e!3261912)))

(assert (=> b!5242455 (= res!2225011 (or (and ((_ is ElementMatch!14845) (regOne!30202 r!7292)) (= (c!906205 (regOne!30202 r!7292)) (h!67158 s!2326))) (not ((_ is Union!14845) (regOne!30202 r!7292)))))))

(declare-fun lt!2149089 () Unit!152774)

(declare-fun e!3261896 () Unit!152774)

(assert (=> b!5242455 (= lt!2149089 e!3261896)))

(declare-fun c!906204 () Bool)

(assert (=> b!5242455 (= c!906204 (nullable!5014 (h!67159 (exprs!4729 (h!67160 zl!343)))))))

(assert (=> b!5242455 (= (flatMap!572 z!1189 lambda!263728) (derivationStepZipperUp!217 (h!67160 zl!343) (h!67158 s!2326)))))

(declare-fun lt!2149100 () Unit!152774)

(assert (=> b!5242455 (= lt!2149100 (lemmaFlatMapOnSingletonSet!104 z!1189 (h!67160 zl!343) lambda!263728))))

(assert (=> b!5242455 (= lt!2149123 (derivationStepZipperUp!217 lt!2149086 (h!67158 s!2326)))))

(assert (=> b!5242455 (= lt!2149101 (derivationStepZipperDown!293 (h!67159 (exprs!4729 (h!67160 zl!343))) lt!2149086 (h!67158 s!2326)))))

(assert (=> b!5242455 (= lt!2149086 (Context!8459 (t!374016 (exprs!4729 (h!67160 zl!343)))))))

(declare-fun lt!2149105 () (InoxSet Context!8458))

(assert (=> b!5242455 (= lt!2149105 (derivationStepZipperUp!217 (Context!8459 (Cons!60711 (h!67159 (exprs!4729 (h!67160 zl!343))) (t!374016 (exprs!4729 (h!67160 zl!343))))) (h!67158 s!2326)))))

(declare-fun b!5242456 () Bool)

(declare-fun Unit!152778 () Unit!152774)

(assert (=> b!5242456 (= e!3261903 Unit!152778)))

(declare-fun b!5242457 () Bool)

(declare-fun Unit!152779 () Unit!152774)

(assert (=> b!5242457 (= e!3261916 Unit!152779)))

(declare-fun lt!2149095 () Unit!152774)

(assert (=> b!5242457 (= lt!2149095 (lemmaZipperConcatMatchesSameAsBothZippers!82 lt!2149093 lt!2149123 (t!374015 s!2326)))))

(declare-fun res!2225019 () Bool)

(assert (=> b!5242457 (= res!2225019 lt!2149125)))

(declare-fun e!3261900 () Bool)

(assert (=> b!5242457 (=> res!2225019 e!3261900)))

(assert (=> b!5242457 (= (matchZipper!1089 ((_ map or) lt!2149093 lt!2149123) (t!374015 s!2326)) e!3261900)))

(declare-fun b!5242458 () Bool)

(declare-fun res!2225021 () Bool)

(assert (=> b!5242458 (=> res!2225021 e!3261910)))

(declare-fun generalisedUnion!774 (List!60835) Regex!14845)

(declare-fun unfocusZipperList!287 (List!60836) List!60835)

(assert (=> b!5242458 (= res!2225021 (not (= r!7292 (generalisedUnion!774 (unfocusZipperList!287 zl!343)))))))

(declare-fun b!5242459 () Bool)

(declare-fun e!3261907 () Bool)

(assert (=> b!5242459 (= e!3261907 (matchZipper!1089 lt!2149123 (t!374015 s!2326)))))

(declare-fun b!5242460 () Bool)

(declare-fun res!2225013 () Bool)

(assert (=> b!5242460 (=> res!2225013 e!3261910)))

(assert (=> b!5242460 (= res!2225013 (or ((_ is EmptyExpr!14845) r!7292) ((_ is EmptyLang!14845) r!7292) ((_ is ElementMatch!14845) r!7292) ((_ is Union!14845) r!7292) (not ((_ is Concat!23690) r!7292))))))

(declare-fun b!5242461 () Bool)

(assert (=> b!5242461 (= e!3261914 (matchZipper!1089 lt!2149099 s!2326))))

(declare-fun setElem!33443 () Context!8458)

(declare-fun tp!1467777 () Bool)

(declare-fun setNonEmpty!33443 () Bool)

(declare-fun setRes!33443 () Bool)

(declare-fun inv!80359 (Context!8458) Bool)

(assert (=> setNonEmpty!33443 (= setRes!33443 (and tp!1467777 (inv!80359 setElem!33443) e!3261915))))

(declare-fun setRest!33443 () (InoxSet Context!8458))

(assert (=> setNonEmpty!33443 (= z!1189 ((_ map or) (store ((as const (Array Context!8458 Bool)) false) setElem!33443 true) setRest!33443))))

(declare-fun b!5242462 () Bool)

(declare-fun e!3261917 () Bool)

(declare-fun e!3261902 () Bool)

(assert (=> b!5242462 (= e!3261917 e!3261902)))

(declare-fun res!2225030 () Bool)

(assert (=> b!5242462 (=> res!2225030 e!3261902)))

(declare-fun lt!2149092 () Bool)

(declare-fun lt!2149113 () Bool)

(assert (=> b!5242462 (= res!2225030 (or (and (not (= lt!2149115 lt!2149113)) (not lt!2149092)) (not (= r!7292 (Concat!23690 (Union!14845 (regOne!30203 (regOne!30202 r!7292)) (regTwo!30203 (regOne!30202 r!7292))) (regTwo!30202 r!7292))))))))

(declare-fun lt!2149114 () Regex!14845)

(assert (=> b!5242462 (= lt!2149092 (matchRSpec!1948 lt!2149114 s!2326))))

(declare-fun lt!2149085 () Unit!152774)

(assert (=> b!5242462 (= lt!2149085 (mainMatchTheorem!1948 lt!2149114 s!2326))))

(declare-fun lt!2149111 () Regex!14845)

(assert (=> b!5242462 (= lt!2149113 (matchRSpec!1948 lt!2149111 s!2326))))

(declare-fun lt!2149091 () Unit!152774)

(assert (=> b!5242462 (= lt!2149091 (mainMatchTheorem!1948 lt!2149111 s!2326))))

(assert (=> b!5242462 (= lt!2149092 (matchZipper!1089 lt!2149099 s!2326))))

(assert (=> b!5242462 (= lt!2149092 (matchR!7030 lt!2149114 s!2326))))

(declare-fun lt!2149090 () Unit!152774)

(declare-fun lt!2149128 () List!60836)

(declare-fun theoremZipperRegexEquiv!279 ((InoxSet Context!8458) List!60836 Regex!14845 List!60834) Unit!152774)

(assert (=> b!5242462 (= lt!2149090 (theoremZipperRegexEquiv!279 lt!2149099 lt!2149128 lt!2149114 s!2326))))

(declare-fun generalisedConcat!514 (List!60835) Regex!14845)

(assert (=> b!5242462 (= lt!2149114 (generalisedConcat!514 lt!2149119))))

(assert (=> b!5242462 (= lt!2149113 lt!2149108)))

(assert (=> b!5242462 (= lt!2149113 (matchR!7030 lt!2149111 s!2326))))

(declare-fun lt!2149094 () Unit!152774)

(assert (=> b!5242462 (= lt!2149094 (theoremZipperRegexEquiv!279 lt!2149118 lt!2149121 lt!2149111 s!2326))))

(assert (=> b!5242462 (= lt!2149111 (generalisedConcat!514 lt!2149104))))

(declare-fun b!5242463 () Bool)

(declare-fun res!2225033 () Bool)

(assert (=> b!5242463 (=> res!2225033 e!3261910)))

(assert (=> b!5242463 (= res!2225033 (not ((_ is Cons!60711) (exprs!4729 (h!67160 zl!343)))))))

(declare-fun b!5242464 () Bool)

(declare-fun Unit!152780 () Unit!152774)

(assert (=> b!5242464 (= e!3261896 Unit!152780)))

(declare-fun lt!2149122 () Unit!152774)

(assert (=> b!5242464 (= lt!2149122 (lemmaZipperConcatMatchesSameAsBothZippers!82 lt!2149101 lt!2149123 (t!374015 s!2326)))))

(declare-fun res!2225031 () Bool)

(assert (=> b!5242464 (= res!2225031 (matchZipper!1089 lt!2149101 (t!374015 s!2326)))))

(assert (=> b!5242464 (=> res!2225031 e!3261907)))

(assert (=> b!5242464 (= (matchZipper!1089 ((_ map or) lt!2149101 lt!2149123) (t!374015 s!2326)) e!3261907)))

(declare-fun setIsEmpty!33443 () Bool)

(assert (=> setIsEmpty!33443 setRes!33443))

(declare-fun b!5242465 () Bool)

(assert (=> b!5242465 (= e!3261904 e!3261917)))

(declare-fun res!2225026 () Bool)

(assert (=> b!5242465 (=> res!2225026 e!3261917)))

(assert (=> b!5242465 (= res!2225026 (>= (zipperDepthTotal!26 lt!2149128) lt!2149109))))

(assert (=> b!5242465 (= lt!2149128 (Cons!60712 lt!2149120 Nil!60712))))

(declare-fun b!5242466 () Bool)

(declare-fun lambda!263729 () Int)

(declare-fun forall!14269 (List!60835 Int) Bool)

(assert (=> b!5242466 (= e!3261902 (forall!14269 lt!2149104 lambda!263729))))

(declare-fun b!5242467 () Bool)

(declare-fun res!2225016 () Bool)

(assert (=> b!5242467 (=> res!2225016 e!3261910)))

(assert (=> b!5242467 (= res!2225016 (not (= r!7292 (generalisedConcat!514 (exprs!4729 (h!67160 zl!343))))))))

(declare-fun b!5242468 () Bool)

(declare-fun e!3261895 () Bool)

(assert (=> b!5242468 (= e!3261895 e!3261898)))

(declare-fun res!2225024 () Bool)

(assert (=> b!5242468 (=> (not res!2225024) (not e!3261898))))

(declare-fun lt!2149117 () Regex!14845)

(assert (=> b!5242468 (= res!2225024 (= r!7292 lt!2149117))))

(declare-fun unfocusZipper!587 (List!60836) Regex!14845)

(assert (=> b!5242468 (= lt!2149117 (unfocusZipper!587 zl!343))))

(declare-fun b!5242469 () Bool)

(declare-fun tp!1467778 () Bool)

(declare-fun tp!1467780 () Bool)

(assert (=> b!5242469 (= e!3261899 (and tp!1467778 tp!1467780))))

(declare-fun b!5242470 () Bool)

(assert (=> b!5242470 (= e!3261900 (matchZipper!1089 lt!2149123 (t!374015 s!2326)))))

(declare-fun b!5242471 () Bool)

(assert (=> b!5242471 (= e!3261909 (not (matchZipper!1089 lt!2149107 (t!374015 s!2326))))))

(declare-fun b!5242472 () Bool)

(declare-fun res!2225012 () Bool)

(assert (=> b!5242472 (=> (not res!2225012) (not e!3261895))))

(declare-fun toList!8629 ((InoxSet Context!8458)) List!60836)

(assert (=> b!5242472 (= res!2225012 (= (toList!8629 z!1189) zl!343))))

(declare-fun tp!1467783 () Bool)

(declare-fun b!5242473 () Bool)

(declare-fun e!3261894 () Bool)

(assert (=> b!5242473 (= e!3261894 (and (inv!80359 (h!67160 zl!343)) e!3261906 tp!1467783))))

(declare-fun b!5242474 () Bool)

(assert (=> b!5242474 (= e!3261911 (matchZipper!1089 lt!2149107 (t!374015 s!2326)))))

(declare-fun b!5242475 () Bool)

(declare-fun res!2225028 () Bool)

(assert (=> b!5242475 (=> res!2225028 e!3261918)))

(assert (=> b!5242475 (= res!2225028 (or (not (= lt!2149117 r!7292)) (not (= (exprs!4729 (h!67160 zl!343)) (Cons!60711 (regOne!30202 r!7292) (t!374016 (exprs!4729 (h!67160 zl!343))))))))))

(assert (=> b!5242476 (= e!3261910 e!3261908)))

(declare-fun res!2225032 () Bool)

(assert (=> b!5242476 (=> res!2225032 e!3261908)))

(declare-fun lt!2149130 () Bool)

(assert (=> b!5242476 (= res!2225032 (or (not (= lt!2149102 lt!2149130)) ((_ is Nil!60710) s!2326)))))

(declare-fun Exists!2026 (Int) Bool)

(assert (=> b!5242476 (= (Exists!2026 lambda!263726) (Exists!2026 lambda!263727))))

(declare-fun lt!2149103 () Unit!152774)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!680 (Regex!14845 Regex!14845 List!60834) Unit!152774)

(assert (=> b!5242476 (= lt!2149103 (lemmaExistCutMatchRandMatchRSpecEquivalent!680 (regOne!30202 r!7292) (regTwo!30202 r!7292) s!2326))))

(assert (=> b!5242476 (= lt!2149130 (Exists!2026 lambda!263726))))

(declare-datatypes ((tuple2!64088 0))(
  ( (tuple2!64089 (_1!35347 List!60834) (_2!35347 List!60834)) )
))
(declare-datatypes ((Option!14956 0))(
  ( (None!14955) (Some!14955 (v!50984 tuple2!64088)) )
))
(declare-fun isDefined!11659 (Option!14956) Bool)

(declare-fun findConcatSeparation!1370 (Regex!14845 Regex!14845 List!60834 List!60834 List!60834) Option!14956)

(assert (=> b!5242476 (= lt!2149130 (isDefined!11659 (findConcatSeparation!1370 (regOne!30202 r!7292) (regTwo!30202 r!7292) Nil!60710 s!2326 s!2326)))))

(declare-fun lt!2149126 () Unit!152774)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1134 (Regex!14845 Regex!14845 List!60834) Unit!152774)

(assert (=> b!5242476 (= lt!2149126 (lemmaFindConcatSeparationEquivalentToExists!1134 (regOne!30202 r!7292) (regTwo!30202 r!7292) s!2326))))

(declare-fun b!5242477 () Bool)

(declare-fun Unit!152781 () Unit!152774)

(assert (=> b!5242477 (= e!3261896 Unit!152781)))

(declare-fun res!2225035 () Bool)

(assert (=> start!554130 (=> (not res!2225035) (not e!3261895))))

(declare-fun validRegex!6581 (Regex!14845) Bool)

(assert (=> start!554130 (= res!2225035 (validRegex!6581 r!7292))))

(assert (=> start!554130 e!3261895))

(assert (=> start!554130 e!3261899))

(declare-fun condSetEmpty!33443 () Bool)

(assert (=> start!554130 (= condSetEmpty!33443 (= z!1189 ((as const (Array Context!8458 Bool)) false)))))

(assert (=> start!554130 setRes!33443))

(assert (=> start!554130 e!3261894))

(assert (=> start!554130 e!3261905))

(declare-fun b!5242451 () Bool)

(declare-fun tp!1467784 () Bool)

(declare-fun tp!1467781 () Bool)

(assert (=> b!5242451 (= e!3261899 (and tp!1467784 tp!1467781))))

(assert (= (and start!554130 res!2225035) b!5242472))

(assert (= (and b!5242472 res!2225012) b!5242468))

(assert (= (and b!5242468 res!2225024) b!5242453))

(assert (= (and b!5242453 (not res!2225025)) b!5242454))

(assert (= (and b!5242454 (not res!2225034)) b!5242467))

(assert (= (and b!5242467 (not res!2225016)) b!5242463))

(assert (= (and b!5242463 (not res!2225033)) b!5242458))

(assert (= (and b!5242458 (not res!2225021)) b!5242460))

(assert (= (and b!5242460 (not res!2225013)) b!5242476))

(assert (= (and b!5242476 (not res!2225032)) b!5242445))

(assert (= (and b!5242445 (not res!2225017)) b!5242455))

(assert (= (and b!5242455 c!906204) b!5242464))

(assert (= (and b!5242455 (not c!906204)) b!5242477))

(assert (= (and b!5242464 (not res!2225031)) b!5242459))

(assert (= (and b!5242455 (not res!2225011)) b!5242448))

(assert (= (and b!5242448 (not res!2225023)) b!5242446))

(assert (= (and b!5242446 (not res!2225029)) b!5242474))

(assert (= (and b!5242446 res!2225015) b!5242471))

(assert (= (and b!5242446 (not res!2225018)) b!5242449))

(assert (= (and b!5242449 c!906202) b!5242457))

(assert (= (and b!5242449 (not c!906202)) b!5242447))

(assert (= (and b!5242457 (not res!2225019)) b!5242470))

(assert (= (and b!5242449 c!906203) b!5242442))

(assert (= (and b!5242449 (not c!906203)) b!5242456))

(assert (= (and b!5242442 (not res!2225020)) b!5242443))

(assert (= (and b!5242449 (not res!2225022)) b!5242461))

(assert (= (and b!5242449 (not res!2225014)) b!5242475))

(assert (= (and b!5242475 (not res!2225028)) b!5242452))

(assert (= (and b!5242452 (not res!2225027)) b!5242465))

(assert (= (and b!5242465 (not res!2225026)) b!5242462))

(assert (= (and b!5242462 (not res!2225030)) b!5242466))

(assert (= (and start!554130 ((_ is ElementMatch!14845) r!7292)) b!5242450))

(assert (= (and start!554130 ((_ is Concat!23690) r!7292)) b!5242451))

(assert (= (and start!554130 ((_ is Star!14845) r!7292)) b!5242440))

(assert (= (and start!554130 ((_ is Union!14845) r!7292)) b!5242469))

(assert (= (and start!554130 condSetEmpty!33443) setIsEmpty!33443))

(assert (= (and start!554130 (not condSetEmpty!33443)) setNonEmpty!33443))

(assert (= setNonEmpty!33443 b!5242439))

(assert (= b!5242473 b!5242441))

(assert (= (and start!554130 ((_ is Cons!60712) zl!343)) b!5242473))

(assert (= (and start!554130 ((_ is Cons!60710) s!2326)) b!5242444))

(declare-fun m!6286670 () Bool)

(assert (=> b!5242443 m!6286670))

(declare-fun m!6286672 () Bool)

(assert (=> b!5242468 m!6286672))

(declare-fun m!6286674 () Bool)

(assert (=> b!5242458 m!6286674))

(assert (=> b!5242458 m!6286674))

(declare-fun m!6286676 () Bool)

(assert (=> b!5242458 m!6286676))

(declare-fun m!6286678 () Bool)

(assert (=> b!5242455 m!6286678))

(declare-fun m!6286680 () Bool)

(assert (=> b!5242455 m!6286680))

(declare-fun m!6286682 () Bool)

(assert (=> b!5242455 m!6286682))

(declare-fun m!6286684 () Bool)

(assert (=> b!5242455 m!6286684))

(declare-fun m!6286686 () Bool)

(assert (=> b!5242455 m!6286686))

(declare-fun m!6286688 () Bool)

(assert (=> b!5242455 m!6286688))

(declare-fun m!6286690 () Bool)

(assert (=> b!5242455 m!6286690))

(declare-fun m!6286692 () Bool)

(assert (=> b!5242449 m!6286692))

(declare-fun m!6286694 () Bool)

(assert (=> b!5242449 m!6286694))

(declare-fun m!6286696 () Bool)

(assert (=> b!5242449 m!6286696))

(declare-fun m!6286698 () Bool)

(assert (=> b!5242449 m!6286698))

(declare-fun m!6286700 () Bool)

(assert (=> b!5242449 m!6286700))

(declare-fun m!6286702 () Bool)

(assert (=> b!5242449 m!6286702))

(declare-fun m!6286704 () Bool)

(assert (=> b!5242449 m!6286704))

(declare-fun m!6286706 () Bool)

(assert (=> b!5242449 m!6286706))

(declare-fun m!6286708 () Bool)

(assert (=> b!5242449 m!6286708))

(declare-fun m!6286710 () Bool)

(assert (=> b!5242449 m!6286710))

(declare-fun m!6286712 () Bool)

(assert (=> b!5242449 m!6286712))

(declare-fun m!6286714 () Bool)

(assert (=> b!5242449 m!6286714))

(declare-fun m!6286716 () Bool)

(assert (=> start!554130 m!6286716))

(declare-fun m!6286718 () Bool)

(assert (=> b!5242473 m!6286718))

(declare-fun m!6286720 () Bool)

(assert (=> b!5242472 m!6286720))

(declare-fun m!6286722 () Bool)

(assert (=> b!5242466 m!6286722))

(declare-fun m!6286724 () Bool)

(assert (=> b!5242476 m!6286724))

(declare-fun m!6286726 () Bool)

(assert (=> b!5242476 m!6286726))

(declare-fun m!6286728 () Bool)

(assert (=> b!5242476 m!6286728))

(declare-fun m!6286730 () Bool)

(assert (=> b!5242476 m!6286730))

(declare-fun m!6286732 () Bool)

(assert (=> b!5242476 m!6286732))

(assert (=> b!5242476 m!6286726))

(assert (=> b!5242476 m!6286730))

(declare-fun m!6286734 () Bool)

(assert (=> b!5242476 m!6286734))

(declare-fun m!6286736 () Bool)

(assert (=> b!5242453 m!6286736))

(declare-fun m!6286738 () Bool)

(assert (=> b!5242453 m!6286738))

(declare-fun m!6286740 () Bool)

(assert (=> b!5242453 m!6286740))

(declare-fun m!6286742 () Bool)

(assert (=> b!5242464 m!6286742))

(declare-fun m!6286744 () Bool)

(assert (=> b!5242464 m!6286744))

(declare-fun m!6286746 () Bool)

(assert (=> b!5242464 m!6286746))

(declare-fun m!6286748 () Bool)

(assert (=> b!5242454 m!6286748))

(declare-fun m!6286750 () Bool)

(assert (=> b!5242462 m!6286750))

(declare-fun m!6286752 () Bool)

(assert (=> b!5242462 m!6286752))

(declare-fun m!6286754 () Bool)

(assert (=> b!5242462 m!6286754))

(declare-fun m!6286756 () Bool)

(assert (=> b!5242462 m!6286756))

(declare-fun m!6286758 () Bool)

(assert (=> b!5242462 m!6286758))

(declare-fun m!6286760 () Bool)

(assert (=> b!5242462 m!6286760))

(declare-fun m!6286762 () Bool)

(assert (=> b!5242462 m!6286762))

(declare-fun m!6286764 () Bool)

(assert (=> b!5242462 m!6286764))

(declare-fun m!6286766 () Bool)

(assert (=> b!5242462 m!6286766))

(declare-fun m!6286768 () Bool)

(assert (=> b!5242462 m!6286768))

(declare-fun m!6286770 () Bool)

(assert (=> b!5242462 m!6286770))

(declare-fun m!6286772 () Bool)

(assert (=> b!5242474 m!6286772))

(declare-fun m!6286774 () Bool)

(assert (=> b!5242467 m!6286774))

(declare-fun m!6286776 () Bool)

(assert (=> b!5242442 m!6286776))

(assert (=> b!5242442 m!6286772))

(declare-fun m!6286778 () Bool)

(assert (=> b!5242442 m!6286778))

(assert (=> b!5242461 m!6286754))

(declare-fun m!6286780 () Bool)

(assert (=> b!5242448 m!6286780))

(declare-fun m!6286782 () Bool)

(assert (=> b!5242448 m!6286782))

(declare-fun m!6286784 () Bool)

(assert (=> b!5242445 m!6286784))

(assert (=> b!5242471 m!6286772))

(declare-fun m!6286786 () Bool)

(assert (=> setNonEmpty!33443 m!6286786))

(assert (=> b!5242470 m!6286670))

(assert (=> b!5242459 m!6286670))

(assert (=> b!5242446 m!6286744))

(declare-fun m!6286788 () Bool)

(assert (=> b!5242446 m!6286788))

(declare-fun m!6286790 () Bool)

(assert (=> b!5242446 m!6286790))

(declare-fun m!6286792 () Bool)

(assert (=> b!5242446 m!6286792))

(declare-fun m!6286794 () Bool)

(assert (=> b!5242452 m!6286794))

(declare-fun m!6286796 () Bool)

(assert (=> b!5242452 m!6286796))

(declare-fun m!6286798 () Bool)

(assert (=> b!5242465 m!6286798))

(declare-fun m!6286800 () Bool)

(assert (=> b!5242457 m!6286800))

(declare-fun m!6286802 () Bool)

(assert (=> b!5242457 m!6286802))

(check-sat (not b!5242452) (not b!5242442) (not b!5242441) (not b!5242464) (not b!5242462) (not b!5242461) (not b!5242474) (not b!5242466) (not b!5242476) (not b!5242444) (not b!5242440) (not b!5242443) (not setNonEmpty!33443) (not b!5242455) (not b!5242470) (not b!5242451) (not b!5242468) (not b!5242439) (not b!5242472) tp_is_empty!38943 (not b!5242449) (not b!5242453) (not b!5242457) (not b!5242473) (not b!5242471) (not start!554130) (not b!5242446) (not b!5242469) (not b!5242458) (not b!5242448) (not b!5242467) (not b!5242465) (not b!5242454) (not b!5242445) (not b!5242459))
(check-sat)
(get-model)

(declare-fun d!1689162 () Bool)

(declare-fun dynLambda!23988 (Int Context!8458) (InoxSet Context!8458))

(assert (=> d!1689162 (= (flatMap!572 z!1189 lambda!263728) (dynLambda!23988 lambda!263728 (h!67160 zl!343)))))

(declare-fun lt!2149167 () Unit!152774)

(declare-fun choose!39034 ((InoxSet Context!8458) Context!8458 Int) Unit!152774)

(assert (=> d!1689162 (= lt!2149167 (choose!39034 z!1189 (h!67160 zl!343) lambda!263728))))

(assert (=> d!1689162 (= z!1189 (store ((as const (Array Context!8458 Bool)) false) (h!67160 zl!343) true))))

(assert (=> d!1689162 (= (lemmaFlatMapOnSingletonSet!104 z!1189 (h!67160 zl!343) lambda!263728) lt!2149167)))

(declare-fun b_lambda!202565 () Bool)

(assert (=> (not b_lambda!202565) (not d!1689162)))

(declare-fun bs!1216189 () Bool)

(assert (= bs!1216189 d!1689162))

(assert (=> bs!1216189 m!6286684))

(declare-fun m!6286994 () Bool)

(assert (=> bs!1216189 m!6286994))

(declare-fun m!6286996 () Bool)

(assert (=> bs!1216189 m!6286996))

(declare-fun m!6286998 () Bool)

(assert (=> bs!1216189 m!6286998))

(assert (=> b!5242455 d!1689162))

(declare-fun d!1689166 () Bool)

(declare-fun nullableFct!1411 (Regex!14845) Bool)

(assert (=> d!1689166 (= (nullable!5014 (h!67159 (exprs!4729 (h!67160 zl!343)))) (nullableFct!1411 (h!67159 (exprs!4729 (h!67160 zl!343)))))))

(declare-fun bs!1216191 () Bool)

(assert (= bs!1216191 d!1689166))

(declare-fun m!6287002 () Bool)

(assert (=> bs!1216191 m!6287002))

(assert (=> b!5242455 d!1689166))

(declare-fun b!5242768 () Bool)

(declare-fun e!3262081 () (InoxSet Context!8458))

(assert (=> b!5242768 (= e!3262081 ((as const (Array Context!8458 Bool)) false))))

(declare-fun b!5242769 () Bool)

(declare-fun call!371169 () (InoxSet Context!8458))

(assert (=> b!5242769 (= e!3262081 call!371169)))

(declare-fun d!1689170 () Bool)

(declare-fun c!906303 () Bool)

(declare-fun e!3262079 () Bool)

(assert (=> d!1689170 (= c!906303 e!3262079)))

(declare-fun res!2225128 () Bool)

(assert (=> d!1689170 (=> (not res!2225128) (not e!3262079))))

(assert (=> d!1689170 (= res!2225128 ((_ is Cons!60711) (exprs!4729 (Context!8459 (Cons!60711 (h!67159 (exprs!4729 (h!67160 zl!343))) (t!374016 (exprs!4729 (h!67160 zl!343))))))))))

(declare-fun e!3262080 () (InoxSet Context!8458))

(assert (=> d!1689170 (= (derivationStepZipperUp!217 (Context!8459 (Cons!60711 (h!67159 (exprs!4729 (h!67160 zl!343))) (t!374016 (exprs!4729 (h!67160 zl!343))))) (h!67158 s!2326)) e!3262080)))

(declare-fun b!5242770 () Bool)

(assert (=> b!5242770 (= e!3262080 ((_ map or) call!371169 (derivationStepZipperUp!217 (Context!8459 (t!374016 (exprs!4729 (Context!8459 (Cons!60711 (h!67159 (exprs!4729 (h!67160 zl!343))) (t!374016 (exprs!4729 (h!67160 zl!343)))))))) (h!67158 s!2326))))))

(declare-fun b!5242771 () Bool)

(assert (=> b!5242771 (= e!3262079 (nullable!5014 (h!67159 (exprs!4729 (Context!8459 (Cons!60711 (h!67159 (exprs!4729 (h!67160 zl!343))) (t!374016 (exprs!4729 (h!67160 zl!343)))))))))))

(declare-fun bm!371164 () Bool)

(assert (=> bm!371164 (= call!371169 (derivationStepZipperDown!293 (h!67159 (exprs!4729 (Context!8459 (Cons!60711 (h!67159 (exprs!4729 (h!67160 zl!343))) (t!374016 (exprs!4729 (h!67160 zl!343))))))) (Context!8459 (t!374016 (exprs!4729 (Context!8459 (Cons!60711 (h!67159 (exprs!4729 (h!67160 zl!343))) (t!374016 (exprs!4729 (h!67160 zl!343)))))))) (h!67158 s!2326)))))

(declare-fun b!5242772 () Bool)

(assert (=> b!5242772 (= e!3262080 e!3262081)))

(declare-fun c!906302 () Bool)

(assert (=> b!5242772 (= c!906302 ((_ is Cons!60711) (exprs!4729 (Context!8459 (Cons!60711 (h!67159 (exprs!4729 (h!67160 zl!343))) (t!374016 (exprs!4729 (h!67160 zl!343))))))))))

(assert (= (and d!1689170 res!2225128) b!5242771))

(assert (= (and d!1689170 c!906303) b!5242770))

(assert (= (and d!1689170 (not c!906303)) b!5242772))

(assert (= (and b!5242772 c!906302) b!5242769))

(assert (= (and b!5242772 (not c!906302)) b!5242768))

(assert (= (or b!5242770 b!5242769) bm!371164))

(declare-fun m!6287004 () Bool)

(assert (=> b!5242770 m!6287004))

(declare-fun m!6287006 () Bool)

(assert (=> b!5242771 m!6287006))

(declare-fun m!6287008 () Bool)

(assert (=> bm!371164 m!6287008))

(assert (=> b!5242455 d!1689170))

(declare-fun b!5242773 () Bool)

(declare-fun e!3262086 () (InoxSet Context!8458))

(assert (=> b!5242773 (= e!3262086 ((as const (Array Context!8458 Bool)) false))))

(declare-fun b!5242774 () Bool)

(declare-fun call!371170 () (InoxSet Context!8458))

(assert (=> b!5242774 (= e!3262086 call!371170)))

(declare-fun d!1689172 () Bool)

(declare-fun c!906305 () Bool)

(declare-fun e!3262084 () Bool)

(assert (=> d!1689172 (= c!906305 e!3262084)))

(declare-fun res!2225131 () Bool)

(assert (=> d!1689172 (=> (not res!2225131) (not e!3262084))))

(assert (=> d!1689172 (= res!2225131 ((_ is Cons!60711) (exprs!4729 (h!67160 zl!343))))))

(declare-fun e!3262085 () (InoxSet Context!8458))

(assert (=> d!1689172 (= (derivationStepZipperUp!217 (h!67160 zl!343) (h!67158 s!2326)) e!3262085)))

(declare-fun b!5242775 () Bool)

(assert (=> b!5242775 (= e!3262085 ((_ map or) call!371170 (derivationStepZipperUp!217 (Context!8459 (t!374016 (exprs!4729 (h!67160 zl!343)))) (h!67158 s!2326))))))

(declare-fun b!5242776 () Bool)

(assert (=> b!5242776 (= e!3262084 (nullable!5014 (h!67159 (exprs!4729 (h!67160 zl!343)))))))

(declare-fun bm!371165 () Bool)

(assert (=> bm!371165 (= call!371170 (derivationStepZipperDown!293 (h!67159 (exprs!4729 (h!67160 zl!343))) (Context!8459 (t!374016 (exprs!4729 (h!67160 zl!343)))) (h!67158 s!2326)))))

(declare-fun b!5242777 () Bool)

(assert (=> b!5242777 (= e!3262085 e!3262086)))

(declare-fun c!906304 () Bool)

(assert (=> b!5242777 (= c!906304 ((_ is Cons!60711) (exprs!4729 (h!67160 zl!343))))))

(assert (= (and d!1689172 res!2225131) b!5242776))

(assert (= (and d!1689172 c!906305) b!5242775))

(assert (= (and d!1689172 (not c!906305)) b!5242777))

(assert (= (and b!5242777 c!906304) b!5242774))

(assert (= (and b!5242777 (not c!906304)) b!5242773))

(assert (= (or b!5242775 b!5242774) bm!371165))

(declare-fun m!6287010 () Bool)

(assert (=> b!5242775 m!6287010))

(assert (=> b!5242776 m!6286686))

(declare-fun m!6287012 () Bool)

(assert (=> bm!371165 m!6287012))

(assert (=> b!5242455 d!1689172))

(declare-fun d!1689174 () Bool)

(declare-fun choose!39036 ((InoxSet Context!8458) Int) (InoxSet Context!8458))

(assert (=> d!1689174 (= (flatMap!572 z!1189 lambda!263728) (choose!39036 z!1189 lambda!263728))))

(declare-fun bs!1216192 () Bool)

(assert (= bs!1216192 d!1689174))

(declare-fun m!6287014 () Bool)

(assert (=> bs!1216192 m!6287014))

(assert (=> b!5242455 d!1689174))

(declare-fun call!371187 () (InoxSet Context!8458))

(declare-fun c!906319 () Bool)

(declare-fun c!906320 () Bool)

(declare-fun call!371188 () List!60835)

(declare-fun bm!371178 () Bool)

(declare-fun c!906317 () Bool)

(assert (=> bm!371178 (= call!371187 (derivationStepZipperDown!293 (ite c!906319 (regTwo!30203 (h!67159 (exprs!4729 (h!67160 zl!343)))) (ite c!906317 (regTwo!30202 (h!67159 (exprs!4729 (h!67160 zl!343)))) (ite c!906320 (regOne!30202 (h!67159 (exprs!4729 (h!67160 zl!343)))) (reg!15174 (h!67159 (exprs!4729 (h!67160 zl!343))))))) (ite (or c!906319 c!906317) lt!2149086 (Context!8459 call!371188)) (h!67158 s!2326)))))

(declare-fun bm!371179 () Bool)

(declare-fun call!371184 () (InoxSet Context!8458))

(assert (=> bm!371179 (= call!371184 call!371187)))

(declare-fun b!5242808 () Bool)

(declare-fun e!3262104 () (InoxSet Context!8458))

(declare-fun call!371186 () (InoxSet Context!8458))

(assert (=> b!5242808 (= e!3262104 call!371186)))

(declare-fun d!1689176 () Bool)

(declare-fun c!906316 () Bool)

(assert (=> d!1689176 (= c!906316 (and ((_ is ElementMatch!14845) (h!67159 (exprs!4729 (h!67160 zl!343)))) (= (c!906205 (h!67159 (exprs!4729 (h!67160 zl!343)))) (h!67158 s!2326))))))

(declare-fun e!3262106 () (InoxSet Context!8458))

(assert (=> d!1689176 (= (derivationStepZipperDown!293 (h!67159 (exprs!4729 (h!67160 zl!343))) lt!2149086 (h!67158 s!2326)) e!3262106)))

(declare-fun b!5242809 () Bool)

(assert (=> b!5242809 (= e!3262106 (store ((as const (Array Context!8458 Bool)) false) lt!2149086 true))))

(declare-fun call!371183 () List!60835)

(declare-fun bm!371180 () Bool)

(declare-fun $colon$colon!1310 (List!60835 Regex!14845) List!60835)

(assert (=> bm!371180 (= call!371183 ($colon$colon!1310 (exprs!4729 lt!2149086) (ite (or c!906317 c!906320) (regTwo!30202 (h!67159 (exprs!4729 (h!67160 zl!343)))) (h!67159 (exprs!4729 (h!67160 zl!343))))))))

(declare-fun b!5242810 () Bool)

(declare-fun e!3262105 () Bool)

(assert (=> b!5242810 (= e!3262105 (nullable!5014 (regOne!30202 (h!67159 (exprs!4729 (h!67160 zl!343))))))))

(declare-fun b!5242811 () Bool)

(declare-fun e!3262101 () (InoxSet Context!8458))

(assert (=> b!5242811 (= e!3262106 e!3262101)))

(assert (=> b!5242811 (= c!906319 ((_ is Union!14845) (h!67159 (exprs!4729 (h!67160 zl!343)))))))

(declare-fun bm!371181 () Bool)

(declare-fun call!371185 () (InoxSet Context!8458))

(assert (=> bm!371181 (= call!371185 (derivationStepZipperDown!293 (ite c!906319 (regOne!30203 (h!67159 (exprs!4729 (h!67160 zl!343)))) (regOne!30202 (h!67159 (exprs!4729 (h!67160 zl!343))))) (ite c!906319 lt!2149086 (Context!8459 call!371183)) (h!67158 s!2326)))))

(declare-fun bm!371182 () Bool)

(assert (=> bm!371182 (= call!371188 call!371183)))

(declare-fun b!5242812 () Bool)

(declare-fun e!3262102 () (InoxSet Context!8458))

(assert (=> b!5242812 (= e!3262102 e!3262104)))

(assert (=> b!5242812 (= c!906320 ((_ is Concat!23690) (h!67159 (exprs!4729 (h!67160 zl!343)))))))

(declare-fun b!5242813 () Bool)

(assert (=> b!5242813 (= c!906317 e!3262105)))

(declare-fun res!2225140 () Bool)

(assert (=> b!5242813 (=> (not res!2225140) (not e!3262105))))

(assert (=> b!5242813 (= res!2225140 ((_ is Concat!23690) (h!67159 (exprs!4729 (h!67160 zl!343)))))))

(assert (=> b!5242813 (= e!3262101 e!3262102)))

(declare-fun b!5242814 () Bool)

(declare-fun e!3262103 () (InoxSet Context!8458))

(assert (=> b!5242814 (= e!3262103 ((as const (Array Context!8458 Bool)) false))))

(declare-fun b!5242815 () Bool)

(assert (=> b!5242815 (= e!3262102 ((_ map or) call!371185 call!371184))))

(declare-fun b!5242816 () Bool)

(assert (=> b!5242816 (= e!3262103 call!371186)))

(declare-fun bm!371183 () Bool)

(assert (=> bm!371183 (= call!371186 call!371184)))

(declare-fun b!5242817 () Bool)

(assert (=> b!5242817 (= e!3262101 ((_ map or) call!371185 call!371187))))

(declare-fun b!5242818 () Bool)

(declare-fun c!906318 () Bool)

(assert (=> b!5242818 (= c!906318 ((_ is Star!14845) (h!67159 (exprs!4729 (h!67160 zl!343)))))))

(assert (=> b!5242818 (= e!3262104 e!3262103)))

(assert (= (and d!1689176 c!906316) b!5242809))

(assert (= (and d!1689176 (not c!906316)) b!5242811))

(assert (= (and b!5242811 c!906319) b!5242817))

(assert (= (and b!5242811 (not c!906319)) b!5242813))

(assert (= (and b!5242813 res!2225140) b!5242810))

(assert (= (and b!5242813 c!906317) b!5242815))

(assert (= (and b!5242813 (not c!906317)) b!5242812))

(assert (= (and b!5242812 c!906320) b!5242808))

(assert (= (and b!5242812 (not c!906320)) b!5242818))

(assert (= (and b!5242818 c!906318) b!5242816))

(assert (= (and b!5242818 (not c!906318)) b!5242814))

(assert (= (or b!5242808 b!5242816) bm!371182))

(assert (= (or b!5242808 b!5242816) bm!371183))

(assert (= (or b!5242815 bm!371182) bm!371180))

(assert (= (or b!5242815 bm!371183) bm!371179))

(assert (= (or b!5242817 bm!371179) bm!371178))

(assert (= (or b!5242817 b!5242815) bm!371181))

(declare-fun m!6287024 () Bool)

(assert (=> b!5242809 m!6287024))

(declare-fun m!6287026 () Bool)

(assert (=> bm!371181 m!6287026))

(declare-fun m!6287028 () Bool)

(assert (=> b!5242810 m!6287028))

(declare-fun m!6287030 () Bool)

(assert (=> bm!371180 m!6287030))

(declare-fun m!6287032 () Bool)

(assert (=> bm!371178 m!6287032))

(assert (=> b!5242455 d!1689176))

(declare-fun b!5242823 () Bool)

(declare-fun e!3262111 () (InoxSet Context!8458))

(assert (=> b!5242823 (= e!3262111 ((as const (Array Context!8458 Bool)) false))))

(declare-fun b!5242824 () Bool)

(declare-fun call!371189 () (InoxSet Context!8458))

(assert (=> b!5242824 (= e!3262111 call!371189)))

(declare-fun d!1689182 () Bool)

(declare-fun c!906322 () Bool)

(declare-fun e!3262109 () Bool)

(assert (=> d!1689182 (= c!906322 e!3262109)))

(declare-fun res!2225145 () Bool)

(assert (=> d!1689182 (=> (not res!2225145) (not e!3262109))))

(assert (=> d!1689182 (= res!2225145 ((_ is Cons!60711) (exprs!4729 lt!2149086)))))

(declare-fun e!3262110 () (InoxSet Context!8458))

(assert (=> d!1689182 (= (derivationStepZipperUp!217 lt!2149086 (h!67158 s!2326)) e!3262110)))

(declare-fun b!5242825 () Bool)

(assert (=> b!5242825 (= e!3262110 ((_ map or) call!371189 (derivationStepZipperUp!217 (Context!8459 (t!374016 (exprs!4729 lt!2149086))) (h!67158 s!2326))))))

(declare-fun b!5242826 () Bool)

(assert (=> b!5242826 (= e!3262109 (nullable!5014 (h!67159 (exprs!4729 lt!2149086))))))

(declare-fun bm!371184 () Bool)

(assert (=> bm!371184 (= call!371189 (derivationStepZipperDown!293 (h!67159 (exprs!4729 lt!2149086)) (Context!8459 (t!374016 (exprs!4729 lt!2149086))) (h!67158 s!2326)))))

(declare-fun b!5242827 () Bool)

(assert (=> b!5242827 (= e!3262110 e!3262111)))

(declare-fun c!906321 () Bool)

(assert (=> b!5242827 (= c!906321 ((_ is Cons!60711) (exprs!4729 lt!2149086)))))

(assert (= (and d!1689182 res!2225145) b!5242826))

(assert (= (and d!1689182 c!906322) b!5242825))

(assert (= (and d!1689182 (not c!906322)) b!5242827))

(assert (= (and b!5242827 c!906321) b!5242824))

(assert (= (and b!5242827 (not c!906321)) b!5242823))

(assert (= (or b!5242825 b!5242824) bm!371184))

(declare-fun m!6287034 () Bool)

(assert (=> b!5242825 m!6287034))

(declare-fun m!6287036 () Bool)

(assert (=> b!5242826 m!6287036))

(declare-fun m!6287038 () Bool)

(assert (=> bm!371184 m!6287038))

(assert (=> b!5242455 d!1689182))

(declare-fun b!5242882 () Bool)

(declare-fun e!3262144 () Bool)

(assert (=> b!5242882 (= e!3262144 (matchR!7030 (regTwo!30202 r!7292) s!2326))))

(declare-fun d!1689184 () Bool)

(declare-fun e!3262146 () Bool)

(assert (=> d!1689184 e!3262146))

(declare-fun res!2225165 () Bool)

(assert (=> d!1689184 (=> res!2225165 e!3262146)))

(declare-fun e!3262145 () Bool)

(assert (=> d!1689184 (= res!2225165 e!3262145)))

(declare-fun res!2225166 () Bool)

(assert (=> d!1689184 (=> (not res!2225166) (not e!3262145))))

(declare-fun lt!2149183 () Option!14956)

(assert (=> d!1689184 (= res!2225166 (isDefined!11659 lt!2149183))))

(declare-fun e!3262147 () Option!14956)

(assert (=> d!1689184 (= lt!2149183 e!3262147)))

(declare-fun c!906342 () Bool)

(assert (=> d!1689184 (= c!906342 e!3262144)))

(declare-fun res!2225164 () Bool)

(assert (=> d!1689184 (=> (not res!2225164) (not e!3262144))))

(assert (=> d!1689184 (= res!2225164 (matchR!7030 (regOne!30202 r!7292) Nil!60710))))

(assert (=> d!1689184 (validRegex!6581 (regOne!30202 r!7292))))

(assert (=> d!1689184 (= (findConcatSeparation!1370 (regOne!30202 r!7292) (regTwo!30202 r!7292) Nil!60710 s!2326 s!2326) lt!2149183)))

(declare-fun b!5242883 () Bool)

(declare-fun ++!13240 (List!60834 List!60834) List!60834)

(declare-fun get!20868 (Option!14956) tuple2!64088)

(assert (=> b!5242883 (= e!3262145 (= (++!13240 (_1!35347 (get!20868 lt!2149183)) (_2!35347 (get!20868 lt!2149183))) s!2326))))

(declare-fun b!5242884 () Bool)

(declare-fun lt!2149185 () Unit!152774)

(declare-fun lt!2149184 () Unit!152774)

(assert (=> b!5242884 (= lt!2149185 lt!2149184)))

(assert (=> b!5242884 (= (++!13240 (++!13240 Nil!60710 (Cons!60710 (h!67158 s!2326) Nil!60710)) (t!374015 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1655 (List!60834 C!29960 List!60834 List!60834) Unit!152774)

(assert (=> b!5242884 (= lt!2149184 (lemmaMoveElementToOtherListKeepsConcatEq!1655 Nil!60710 (h!67158 s!2326) (t!374015 s!2326) s!2326))))

(declare-fun e!3262143 () Option!14956)

(assert (=> b!5242884 (= e!3262143 (findConcatSeparation!1370 (regOne!30202 r!7292) (regTwo!30202 r!7292) (++!13240 Nil!60710 (Cons!60710 (h!67158 s!2326) Nil!60710)) (t!374015 s!2326) s!2326))))

(declare-fun b!5242885 () Bool)

(declare-fun res!2225163 () Bool)

(assert (=> b!5242885 (=> (not res!2225163) (not e!3262145))))

(assert (=> b!5242885 (= res!2225163 (matchR!7030 (regOne!30202 r!7292) (_1!35347 (get!20868 lt!2149183))))))

(declare-fun b!5242886 () Bool)

(declare-fun res!2225162 () Bool)

(assert (=> b!5242886 (=> (not res!2225162) (not e!3262145))))

(assert (=> b!5242886 (= res!2225162 (matchR!7030 (regTwo!30202 r!7292) (_2!35347 (get!20868 lt!2149183))))))

(declare-fun b!5242887 () Bool)

(assert (=> b!5242887 (= e!3262147 e!3262143)))

(declare-fun c!906343 () Bool)

(assert (=> b!5242887 (= c!906343 ((_ is Nil!60710) s!2326))))

(declare-fun b!5242888 () Bool)

(assert (=> b!5242888 (= e!3262143 None!14955)))

(declare-fun b!5242889 () Bool)

(assert (=> b!5242889 (= e!3262147 (Some!14955 (tuple2!64089 Nil!60710 s!2326)))))

(declare-fun b!5242890 () Bool)

(assert (=> b!5242890 (= e!3262146 (not (isDefined!11659 lt!2149183)))))

(assert (= (and d!1689184 res!2225164) b!5242882))

(assert (= (and d!1689184 c!906342) b!5242889))

(assert (= (and d!1689184 (not c!906342)) b!5242887))

(assert (= (and b!5242887 c!906343) b!5242888))

(assert (= (and b!5242887 (not c!906343)) b!5242884))

(assert (= (and d!1689184 res!2225166) b!5242885))

(assert (= (and b!5242885 res!2225163) b!5242886))

(assert (= (and b!5242886 res!2225162) b!5242883))

(assert (= (and d!1689184 (not res!2225165)) b!5242890))

(declare-fun m!6287080 () Bool)

(assert (=> b!5242885 m!6287080))

(declare-fun m!6287082 () Bool)

(assert (=> b!5242885 m!6287082))

(declare-fun m!6287084 () Bool)

(assert (=> b!5242884 m!6287084))

(assert (=> b!5242884 m!6287084))

(declare-fun m!6287086 () Bool)

(assert (=> b!5242884 m!6287086))

(declare-fun m!6287088 () Bool)

(assert (=> b!5242884 m!6287088))

(assert (=> b!5242884 m!6287084))

(declare-fun m!6287090 () Bool)

(assert (=> b!5242884 m!6287090))

(declare-fun m!6287092 () Bool)

(assert (=> b!5242882 m!6287092))

(declare-fun m!6287094 () Bool)

(assert (=> b!5242890 m!6287094))

(assert (=> b!5242886 m!6287080))

(declare-fun m!6287096 () Bool)

(assert (=> b!5242886 m!6287096))

(assert (=> b!5242883 m!6287080))

(declare-fun m!6287098 () Bool)

(assert (=> b!5242883 m!6287098))

(assert (=> d!1689184 m!6287094))

(declare-fun m!6287100 () Bool)

(assert (=> d!1689184 m!6287100))

(declare-fun m!6287102 () Bool)

(assert (=> d!1689184 m!6287102))

(assert (=> b!5242476 d!1689184))

(declare-fun d!1689204 () Bool)

(declare-fun choose!39040 (Int) Bool)

(assert (=> d!1689204 (= (Exists!2026 lambda!263727) (choose!39040 lambda!263727))))

(declare-fun bs!1216211 () Bool)

(assert (= bs!1216211 d!1689204))

(declare-fun m!6287110 () Bool)

(assert (=> bs!1216211 m!6287110))

(assert (=> b!5242476 d!1689204))

(declare-fun d!1689208 () Bool)

(assert (=> d!1689208 (= (Exists!2026 lambda!263726) (choose!39040 lambda!263726))))

(declare-fun bs!1216212 () Bool)

(assert (= bs!1216212 d!1689208))

(declare-fun m!6287112 () Bool)

(assert (=> bs!1216212 m!6287112))

(assert (=> b!5242476 d!1689208))

(declare-fun bs!1216219 () Bool)

(declare-fun d!1689210 () Bool)

(assert (= bs!1216219 (and d!1689210 b!5242476)))

(declare-fun lambda!263762 () Int)

(assert (=> bs!1216219 (= lambda!263762 lambda!263726)))

(assert (=> bs!1216219 (not (= lambda!263762 lambda!263727))))

(assert (=> d!1689210 true))

(assert (=> d!1689210 true))

(assert (=> d!1689210 true))

(assert (=> d!1689210 (= (isDefined!11659 (findConcatSeparation!1370 (regOne!30202 r!7292) (regTwo!30202 r!7292) Nil!60710 s!2326 s!2326)) (Exists!2026 lambda!263762))))

(declare-fun lt!2149195 () Unit!152774)

(declare-fun choose!39041 (Regex!14845 Regex!14845 List!60834) Unit!152774)

(assert (=> d!1689210 (= lt!2149195 (choose!39041 (regOne!30202 r!7292) (regTwo!30202 r!7292) s!2326))))

(assert (=> d!1689210 (validRegex!6581 (regOne!30202 r!7292))))

(assert (=> d!1689210 (= (lemmaFindConcatSeparationEquivalentToExists!1134 (regOne!30202 r!7292) (regTwo!30202 r!7292) s!2326) lt!2149195)))

(declare-fun bs!1216221 () Bool)

(assert (= bs!1216221 d!1689210))

(assert (=> bs!1216221 m!6287102))

(declare-fun m!6287148 () Bool)

(assert (=> bs!1216221 m!6287148))

(assert (=> bs!1216221 m!6286730))

(assert (=> bs!1216221 m!6286730))

(assert (=> bs!1216221 m!6286732))

(declare-fun m!6287150 () Bool)

(assert (=> bs!1216221 m!6287150))

(assert (=> b!5242476 d!1689210))

(declare-fun bs!1216243 () Bool)

(declare-fun d!1689228 () Bool)

(assert (= bs!1216243 (and d!1689228 b!5242476)))

(declare-fun lambda!263769 () Int)

(assert (=> bs!1216243 (= lambda!263769 lambda!263726)))

(assert (=> bs!1216243 (not (= lambda!263769 lambda!263727))))

(declare-fun bs!1216244 () Bool)

(assert (= bs!1216244 (and d!1689228 d!1689210)))

(assert (=> bs!1216244 (= lambda!263769 lambda!263762)))

(assert (=> d!1689228 true))

(assert (=> d!1689228 true))

(assert (=> d!1689228 true))

(declare-fun lambda!263770 () Int)

(assert (=> bs!1216243 (not (= lambda!263770 lambda!263726))))

(assert (=> bs!1216243 (= lambda!263770 lambda!263727)))

(assert (=> bs!1216244 (not (= lambda!263770 lambda!263762))))

(declare-fun bs!1216245 () Bool)

(assert (= bs!1216245 d!1689228))

(assert (=> bs!1216245 (not (= lambda!263770 lambda!263769))))

(assert (=> d!1689228 true))

(assert (=> d!1689228 true))

(assert (=> d!1689228 true))

(assert (=> d!1689228 (= (Exists!2026 lambda!263769) (Exists!2026 lambda!263770))))

(declare-fun lt!2149202 () Unit!152774)

(declare-fun choose!39042 (Regex!14845 Regex!14845 List!60834) Unit!152774)

(assert (=> d!1689228 (= lt!2149202 (choose!39042 (regOne!30202 r!7292) (regTwo!30202 r!7292) s!2326))))

(assert (=> d!1689228 (validRegex!6581 (regOne!30202 r!7292))))

(assert (=> d!1689228 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!680 (regOne!30202 r!7292) (regTwo!30202 r!7292) s!2326) lt!2149202)))

(declare-fun m!6287196 () Bool)

(assert (=> bs!1216245 m!6287196))

(declare-fun m!6287198 () Bool)

(assert (=> bs!1216245 m!6287198))

(declare-fun m!6287200 () Bool)

(assert (=> bs!1216245 m!6287200))

(assert (=> bs!1216245 m!6287102))

(assert (=> b!5242476 d!1689228))

(declare-fun d!1689252 () Bool)

(declare-fun isEmpty!32647 (Option!14956) Bool)

(assert (=> d!1689252 (= (isDefined!11659 (findConcatSeparation!1370 (regOne!30202 r!7292) (regTwo!30202 r!7292) Nil!60710 s!2326 s!2326)) (not (isEmpty!32647 (findConcatSeparation!1370 (regOne!30202 r!7292) (regTwo!30202 r!7292) Nil!60710 s!2326 s!2326))))))

(declare-fun bs!1216246 () Bool)

(assert (= bs!1216246 d!1689252))

(assert (=> bs!1216246 m!6286730))

(declare-fun m!6287202 () Bool)

(assert (=> bs!1216246 m!6287202))

(assert (=> b!5242476 d!1689252))

(declare-fun d!1689254 () Bool)

(declare-fun e!3262218 () Bool)

(assert (=> d!1689254 (= (matchZipper!1089 ((_ map or) lt!2149093 lt!2149123) (t!374015 s!2326)) e!3262218)))

(declare-fun res!2225221 () Bool)

(assert (=> d!1689254 (=> res!2225221 e!3262218)))

(assert (=> d!1689254 (= res!2225221 (matchZipper!1089 lt!2149093 (t!374015 s!2326)))))

(declare-fun lt!2149207 () Unit!152774)

(declare-fun choose!39044 ((InoxSet Context!8458) (InoxSet Context!8458) List!60834) Unit!152774)

(assert (=> d!1689254 (= lt!2149207 (choose!39044 lt!2149093 lt!2149123 (t!374015 s!2326)))))

(assert (=> d!1689254 (= (lemmaZipperConcatMatchesSameAsBothZippers!82 lt!2149093 lt!2149123 (t!374015 s!2326)) lt!2149207)))

(declare-fun b!5242997 () Bool)

(assert (=> b!5242997 (= e!3262218 (matchZipper!1089 lt!2149123 (t!374015 s!2326)))))

(assert (= (and d!1689254 (not res!2225221)) b!5242997))

(assert (=> d!1689254 m!6286802))

(assert (=> d!1689254 m!6286790))

(declare-fun m!6287228 () Bool)

(assert (=> d!1689254 m!6287228))

(assert (=> b!5242997 m!6286670))

(assert (=> b!5242457 d!1689254))

(declare-fun d!1689268 () Bool)

(declare-fun c!906378 () Bool)

(declare-fun isEmpty!32648 (List!60834) Bool)

(assert (=> d!1689268 (= c!906378 (isEmpty!32648 (t!374015 s!2326)))))

(declare-fun e!3262229 () Bool)

(assert (=> d!1689268 (= (matchZipper!1089 ((_ map or) lt!2149093 lt!2149123) (t!374015 s!2326)) e!3262229)))

(declare-fun b!5243016 () Bool)

(declare-fun nullableZipper!1260 ((InoxSet Context!8458)) Bool)

(assert (=> b!5243016 (= e!3262229 (nullableZipper!1260 ((_ map or) lt!2149093 lt!2149123)))))

(declare-fun b!5243017 () Bool)

(declare-fun derivationStepZipper!1104 ((InoxSet Context!8458) C!29960) (InoxSet Context!8458))

(declare-fun head!11238 (List!60834) C!29960)

(declare-fun tail!10335 (List!60834) List!60834)

(assert (=> b!5243017 (= e!3262229 (matchZipper!1089 (derivationStepZipper!1104 ((_ map or) lt!2149093 lt!2149123) (head!11238 (t!374015 s!2326))) (tail!10335 (t!374015 s!2326))))))

(assert (= (and d!1689268 c!906378) b!5243016))

(assert (= (and d!1689268 (not c!906378)) b!5243017))

(declare-fun m!6287240 () Bool)

(assert (=> d!1689268 m!6287240))

(declare-fun m!6287242 () Bool)

(assert (=> b!5243016 m!6287242))

(declare-fun m!6287244 () Bool)

(assert (=> b!5243017 m!6287244))

(assert (=> b!5243017 m!6287244))

(declare-fun m!6287246 () Bool)

(assert (=> b!5243017 m!6287246))

(declare-fun m!6287248 () Bool)

(assert (=> b!5243017 m!6287248))

(assert (=> b!5243017 m!6287246))

(assert (=> b!5243017 m!6287248))

(declare-fun m!6287250 () Bool)

(assert (=> b!5243017 m!6287250))

(assert (=> b!5242457 d!1689268))

(declare-fun bs!1216266 () Bool)

(declare-fun d!1689278 () Bool)

(assert (= bs!1216266 (and d!1689278 b!5242466)))

(declare-fun lambda!263775 () Int)

(assert (=> bs!1216266 (= lambda!263775 lambda!263729)))

(declare-fun b!5243092 () Bool)

(declare-fun e!3262268 () Bool)

(assert (=> b!5243092 (= e!3262268 (isEmpty!32643 (t!374016 (unfocusZipperList!287 zl!343))))))

(declare-fun b!5243093 () Bool)

(declare-fun e!3262266 () Regex!14845)

(assert (=> b!5243093 (= e!3262266 (h!67159 (unfocusZipperList!287 zl!343)))))

(declare-fun b!5243094 () Bool)

(declare-fun e!3262265 () Regex!14845)

(assert (=> b!5243094 (= e!3262265 (Union!14845 (h!67159 (unfocusZipperList!287 zl!343)) (generalisedUnion!774 (t!374016 (unfocusZipperList!287 zl!343)))))))

(declare-fun b!5243095 () Bool)

(declare-fun e!3262270 () Bool)

(declare-fun e!3262267 () Bool)

(assert (=> b!5243095 (= e!3262270 e!3262267)))

(declare-fun c!906387 () Bool)

(declare-fun tail!10336 (List!60835) List!60835)

(assert (=> b!5243095 (= c!906387 (isEmpty!32643 (tail!10336 (unfocusZipperList!287 zl!343))))))

(declare-fun e!3262269 () Bool)

(assert (=> d!1689278 e!3262269))

(declare-fun res!2225229 () Bool)

(assert (=> d!1689278 (=> (not res!2225229) (not e!3262269))))

(declare-fun lt!2149216 () Regex!14845)

(assert (=> d!1689278 (= res!2225229 (validRegex!6581 lt!2149216))))

(assert (=> d!1689278 (= lt!2149216 e!3262266)))

(declare-fun c!906389 () Bool)

(assert (=> d!1689278 (= c!906389 e!3262268)))

(declare-fun res!2225228 () Bool)

(assert (=> d!1689278 (=> (not res!2225228) (not e!3262268))))

(assert (=> d!1689278 (= res!2225228 ((_ is Cons!60711) (unfocusZipperList!287 zl!343)))))

(assert (=> d!1689278 (forall!14269 (unfocusZipperList!287 zl!343) lambda!263775)))

(assert (=> d!1689278 (= (generalisedUnion!774 (unfocusZipperList!287 zl!343)) lt!2149216)))

(declare-fun b!5243096 () Bool)

(declare-fun isUnion!236 (Regex!14845) Bool)

(assert (=> b!5243096 (= e!3262267 (isUnion!236 lt!2149216))))

(declare-fun b!5243097 () Bool)

(assert (=> b!5243097 (= e!3262265 EmptyLang!14845)))

(declare-fun b!5243098 () Bool)

(declare-fun isEmptyLang!804 (Regex!14845) Bool)

(assert (=> b!5243098 (= e!3262270 (isEmptyLang!804 lt!2149216))))

(declare-fun b!5243099 () Bool)

(assert (=> b!5243099 (= e!3262266 e!3262265)))

(declare-fun c!906388 () Bool)

(assert (=> b!5243099 (= c!906388 ((_ is Cons!60711) (unfocusZipperList!287 zl!343)))))

(declare-fun b!5243100 () Bool)

(declare-fun head!11239 (List!60835) Regex!14845)

(assert (=> b!5243100 (= e!3262267 (= lt!2149216 (head!11239 (unfocusZipperList!287 zl!343))))))

(declare-fun b!5243101 () Bool)

(assert (=> b!5243101 (= e!3262269 e!3262270)))

(declare-fun c!906390 () Bool)

(assert (=> b!5243101 (= c!906390 (isEmpty!32643 (unfocusZipperList!287 zl!343)))))

(assert (= (and d!1689278 res!2225228) b!5243092))

(assert (= (and d!1689278 c!906389) b!5243093))

(assert (= (and d!1689278 (not c!906389)) b!5243099))

(assert (= (and b!5243099 c!906388) b!5243094))

(assert (= (and b!5243099 (not c!906388)) b!5243097))

(assert (= (and d!1689278 res!2225229) b!5243101))

(assert (= (and b!5243101 c!906390) b!5243098))

(assert (= (and b!5243101 (not c!906390)) b!5243095))

(assert (= (and b!5243095 c!906387) b!5243100))

(assert (= (and b!5243095 (not c!906387)) b!5243096))

(assert (=> b!5243100 m!6286674))

(declare-fun m!6287276 () Bool)

(assert (=> b!5243100 m!6287276))

(assert (=> b!5243095 m!6286674))

(declare-fun m!6287278 () Bool)

(assert (=> b!5243095 m!6287278))

(assert (=> b!5243095 m!6287278))

(declare-fun m!6287280 () Bool)

(assert (=> b!5243095 m!6287280))

(declare-fun m!6287282 () Bool)

(assert (=> b!5243096 m!6287282))

(declare-fun m!6287284 () Bool)

(assert (=> b!5243098 m!6287284))

(declare-fun m!6287286 () Bool)

(assert (=> b!5243092 m!6287286))

(declare-fun m!6287288 () Bool)

(assert (=> d!1689278 m!6287288))

(assert (=> d!1689278 m!6286674))

(declare-fun m!6287290 () Bool)

(assert (=> d!1689278 m!6287290))

(assert (=> b!5243101 m!6286674))

(declare-fun m!6287292 () Bool)

(assert (=> b!5243101 m!6287292))

(declare-fun m!6287294 () Bool)

(assert (=> b!5243094 m!6287294))

(assert (=> b!5242458 d!1689278))

(declare-fun bs!1216267 () Bool)

(declare-fun d!1689288 () Bool)

(assert (= bs!1216267 (and d!1689288 b!5242466)))

(declare-fun lambda!263778 () Int)

(assert (=> bs!1216267 (= lambda!263778 lambda!263729)))

(declare-fun bs!1216268 () Bool)

(assert (= bs!1216268 (and d!1689288 d!1689278)))

(assert (=> bs!1216268 (= lambda!263778 lambda!263775)))

(declare-fun lt!2149219 () List!60835)

(assert (=> d!1689288 (forall!14269 lt!2149219 lambda!263778)))

(declare-fun e!3262273 () List!60835)

(assert (=> d!1689288 (= lt!2149219 e!3262273)))

(declare-fun c!906393 () Bool)

(assert (=> d!1689288 (= c!906393 ((_ is Cons!60712) zl!343))))

(assert (=> d!1689288 (= (unfocusZipperList!287 zl!343) lt!2149219)))

(declare-fun b!5243106 () Bool)

(assert (=> b!5243106 (= e!3262273 (Cons!60711 (generalisedConcat!514 (exprs!4729 (h!67160 zl!343))) (unfocusZipperList!287 (t!374017 zl!343))))))

(declare-fun b!5243107 () Bool)

(assert (=> b!5243107 (= e!3262273 Nil!60711)))

(assert (= (and d!1689288 c!906393) b!5243106))

(assert (= (and d!1689288 (not c!906393)) b!5243107))

(declare-fun m!6287296 () Bool)

(assert (=> d!1689288 m!6287296))

(assert (=> b!5243106 m!6286774))

(declare-fun m!6287298 () Bool)

(assert (=> b!5243106 m!6287298))

(assert (=> b!5242458 d!1689288))

(declare-fun d!1689290 () Bool)

(declare-fun c!906394 () Bool)

(assert (=> d!1689290 (= c!906394 (isEmpty!32648 (t!374015 s!2326)))))

(declare-fun e!3262274 () Bool)

(assert (=> d!1689290 (= (matchZipper!1089 lt!2149123 (t!374015 s!2326)) e!3262274)))

(declare-fun b!5243108 () Bool)

(assert (=> b!5243108 (= e!3262274 (nullableZipper!1260 lt!2149123))))

(declare-fun b!5243109 () Bool)

(assert (=> b!5243109 (= e!3262274 (matchZipper!1089 (derivationStepZipper!1104 lt!2149123 (head!11238 (t!374015 s!2326))) (tail!10335 (t!374015 s!2326))))))

(assert (= (and d!1689290 c!906394) b!5243108))

(assert (= (and d!1689290 (not c!906394)) b!5243109))

(assert (=> d!1689290 m!6287240))

(declare-fun m!6287300 () Bool)

(assert (=> b!5243108 m!6287300))

(assert (=> b!5243109 m!6287244))

(assert (=> b!5243109 m!6287244))

(declare-fun m!6287302 () Bool)

(assert (=> b!5243109 m!6287302))

(assert (=> b!5243109 m!6287248))

(assert (=> b!5243109 m!6287302))

(assert (=> b!5243109 m!6287248))

(declare-fun m!6287304 () Bool)

(assert (=> b!5243109 m!6287304))

(assert (=> b!5242459 d!1689290))

(assert (=> b!5242470 d!1689290))

(declare-fun d!1689292 () Bool)

(declare-fun lt!2149222 () Int)

(assert (=> d!1689292 (>= lt!2149222 0)))

(declare-fun e!3262277 () Int)

(assert (=> d!1689292 (= lt!2149222 e!3262277)))

(declare-fun c!906397 () Bool)

(assert (=> d!1689292 (= c!906397 ((_ is Cons!60712) zl!343))))

(assert (=> d!1689292 (= (zipperDepthTotal!26 zl!343) lt!2149222)))

(declare-fun b!5243114 () Bool)

(declare-fun contextDepthTotal!18 (Context!8458) Int)

(assert (=> b!5243114 (= e!3262277 (+ (contextDepthTotal!18 (h!67160 zl!343)) (zipperDepthTotal!26 (t!374017 zl!343))))))

(declare-fun b!5243115 () Bool)

(assert (=> b!5243115 (= e!3262277 0)))

(assert (= (and d!1689292 c!906397) b!5243114))

(assert (= (and d!1689292 (not c!906397)) b!5243115))

(declare-fun m!6287306 () Bool)

(assert (=> b!5243114 m!6287306))

(declare-fun m!6287308 () Bool)

(assert (=> b!5243114 m!6287308))

(assert (=> b!5242452 d!1689292))

(declare-fun d!1689294 () Bool)

(declare-fun lt!2149223 () Int)

(assert (=> d!1689294 (>= lt!2149223 0)))

(declare-fun e!3262278 () Int)

(assert (=> d!1689294 (= lt!2149223 e!3262278)))

(declare-fun c!906398 () Bool)

(assert (=> d!1689294 (= c!906398 ((_ is Cons!60712) lt!2149121))))

(assert (=> d!1689294 (= (zipperDepthTotal!26 lt!2149121) lt!2149223)))

(declare-fun b!5243116 () Bool)

(assert (=> b!5243116 (= e!3262278 (+ (contextDepthTotal!18 (h!67160 lt!2149121)) (zipperDepthTotal!26 (t!374017 lt!2149121))))))

(declare-fun b!5243117 () Bool)

(assert (=> b!5243117 (= e!3262278 0)))

(assert (= (and d!1689294 c!906398) b!5243116))

(assert (= (and d!1689294 (not c!906398)) b!5243117))

(declare-fun m!6287310 () Bool)

(assert (=> b!5243116 m!6287310))

(declare-fun m!6287312 () Bool)

(assert (=> b!5243116 m!6287312))

(assert (=> b!5242452 d!1689294))

(declare-fun d!1689296 () Bool)

(declare-fun c!906399 () Bool)

(assert (=> d!1689296 (= c!906399 (isEmpty!32648 (t!374015 s!2326)))))

(declare-fun e!3262279 () Bool)

(assert (=> d!1689296 (= (matchZipper!1089 lt!2149107 (t!374015 s!2326)) e!3262279)))

(declare-fun b!5243118 () Bool)

(assert (=> b!5243118 (= e!3262279 (nullableZipper!1260 lt!2149107))))

(declare-fun b!5243119 () Bool)

(assert (=> b!5243119 (= e!3262279 (matchZipper!1089 (derivationStepZipper!1104 lt!2149107 (head!11238 (t!374015 s!2326))) (tail!10335 (t!374015 s!2326))))))

(assert (= (and d!1689296 c!906399) b!5243118))

(assert (= (and d!1689296 (not c!906399)) b!5243119))

(assert (=> d!1689296 m!6287240))

(declare-fun m!6287314 () Bool)

(assert (=> b!5243118 m!6287314))

(assert (=> b!5243119 m!6287244))

(assert (=> b!5243119 m!6287244))

(declare-fun m!6287316 () Bool)

(assert (=> b!5243119 m!6287316))

(assert (=> b!5243119 m!6287248))

(assert (=> b!5243119 m!6287316))

(assert (=> b!5243119 m!6287248))

(declare-fun m!6287318 () Bool)

(assert (=> b!5243119 m!6287318))

(assert (=> b!5242471 d!1689296))

(declare-fun d!1689298 () Bool)

(declare-fun e!3262282 () Bool)

(assert (=> d!1689298 e!3262282))

(declare-fun res!2225232 () Bool)

(assert (=> d!1689298 (=> (not res!2225232) (not e!3262282))))

(declare-fun lt!2149226 () List!60836)

(declare-fun noDuplicate!1216 (List!60836) Bool)

(assert (=> d!1689298 (= res!2225232 (noDuplicate!1216 lt!2149226))))

(declare-fun choose!39046 ((InoxSet Context!8458)) List!60836)

(assert (=> d!1689298 (= lt!2149226 (choose!39046 z!1189))))

(assert (=> d!1689298 (= (toList!8629 z!1189) lt!2149226)))

(declare-fun b!5243122 () Bool)

(declare-fun content!10781 (List!60836) (InoxSet Context!8458))

(assert (=> b!5243122 (= e!3262282 (= (content!10781 lt!2149226) z!1189))))

(assert (= (and d!1689298 res!2225232) b!5243122))

(declare-fun m!6287320 () Bool)

(assert (=> d!1689298 m!6287320))

(declare-fun m!6287322 () Bool)

(assert (=> d!1689298 m!6287322))

(declare-fun m!6287324 () Bool)

(assert (=> b!5243122 m!6287324))

(assert (=> b!5242472 d!1689298))

(declare-fun bs!1216269 () Bool)

(declare-fun b!5243162 () Bool)

(assert (= bs!1216269 (and b!5243162 b!5242476)))

(declare-fun lambda!263783 () Int)

(assert (=> bs!1216269 (not (= lambda!263783 lambda!263726))))

(declare-fun bs!1216270 () Bool)

(assert (= bs!1216270 (and b!5243162 d!1689228)))

(assert (=> bs!1216270 (not (= lambda!263783 lambda!263770))))

(assert (=> bs!1216270 (not (= lambda!263783 lambda!263769))))

(declare-fun bs!1216271 () Bool)

(assert (= bs!1216271 (and b!5243162 d!1689210)))

(assert (=> bs!1216271 (not (= lambda!263783 lambda!263762))))

(assert (=> bs!1216269 (not (= lambda!263783 lambda!263727))))

(assert (=> b!5243162 true))

(assert (=> b!5243162 true))

(declare-fun bs!1216272 () Bool)

(declare-fun b!5243160 () Bool)

(assert (= bs!1216272 (and b!5243160 b!5242476)))

(declare-fun lambda!263784 () Int)

(assert (=> bs!1216272 (not (= lambda!263784 lambda!263726))))

(declare-fun bs!1216273 () Bool)

(assert (= bs!1216273 (and b!5243160 d!1689228)))

(assert (=> bs!1216273 (= lambda!263784 lambda!263770)))

(assert (=> bs!1216273 (not (= lambda!263784 lambda!263769))))

(declare-fun bs!1216274 () Bool)

(assert (= bs!1216274 (and b!5243160 b!5243162)))

(assert (=> bs!1216274 (not (= lambda!263784 lambda!263783))))

(declare-fun bs!1216275 () Bool)

(assert (= bs!1216275 (and b!5243160 d!1689210)))

(assert (=> bs!1216275 (not (= lambda!263784 lambda!263762))))

(assert (=> bs!1216272 (= lambda!263784 lambda!263727)))

(assert (=> b!5243160 true))

(assert (=> b!5243160 true))

(declare-fun b!5243155 () Bool)

(declare-fun e!3262302 () Bool)

(assert (=> b!5243155 (= e!3262302 (matchRSpec!1948 (regTwo!30203 r!7292) s!2326))))

(declare-fun call!371220 () Bool)

(declare-fun bm!371214 () Bool)

(declare-fun c!906408 () Bool)

(assert (=> bm!371214 (= call!371220 (Exists!2026 (ite c!906408 lambda!263783 lambda!263784)))))

(declare-fun b!5243156 () Bool)

(declare-fun e!3262305 () Bool)

(declare-fun e!3262303 () Bool)

(assert (=> b!5243156 (= e!3262305 e!3262303)))

(assert (=> b!5243156 (= c!906408 ((_ is Star!14845) r!7292))))

(declare-fun b!5243157 () Bool)

(declare-fun e!3262304 () Bool)

(assert (=> b!5243157 (= e!3262304 (= s!2326 (Cons!60710 (c!906205 r!7292) Nil!60710)))))

(declare-fun b!5243158 () Bool)

(declare-fun res!2225249 () Bool)

(declare-fun e!3262306 () Bool)

(assert (=> b!5243158 (=> res!2225249 e!3262306)))

(declare-fun call!371219 () Bool)

(assert (=> b!5243158 (= res!2225249 call!371219)))

(assert (=> b!5243158 (= e!3262303 e!3262306)))

(declare-fun d!1689300 () Bool)

(declare-fun c!906410 () Bool)

(assert (=> d!1689300 (= c!906410 ((_ is EmptyExpr!14845) r!7292))))

(declare-fun e!3262301 () Bool)

(assert (=> d!1689300 (= (matchRSpec!1948 r!7292 s!2326) e!3262301)))

(declare-fun b!5243159 () Bool)

(assert (=> b!5243159 (= e!3262301 call!371219)))

(assert (=> b!5243160 (= e!3262303 call!371220)))

(declare-fun b!5243161 () Bool)

(declare-fun c!906411 () Bool)

(assert (=> b!5243161 (= c!906411 ((_ is Union!14845) r!7292))))

(assert (=> b!5243161 (= e!3262304 e!3262305)))

(assert (=> b!5243162 (= e!3262306 call!371220)))

(declare-fun b!5243163 () Bool)

(declare-fun c!906409 () Bool)

(assert (=> b!5243163 (= c!906409 ((_ is ElementMatch!14845) r!7292))))

(declare-fun e!3262307 () Bool)

(assert (=> b!5243163 (= e!3262307 e!3262304)))

(declare-fun b!5243164 () Bool)

(assert (=> b!5243164 (= e!3262301 e!3262307)))

(declare-fun res!2225250 () Bool)

(assert (=> b!5243164 (= res!2225250 (not ((_ is EmptyLang!14845) r!7292)))))

(assert (=> b!5243164 (=> (not res!2225250) (not e!3262307))))

(declare-fun bm!371215 () Bool)

(assert (=> bm!371215 (= call!371219 (isEmpty!32648 s!2326))))

(declare-fun b!5243165 () Bool)

(assert (=> b!5243165 (= e!3262305 e!3262302)))

(declare-fun res!2225251 () Bool)

(assert (=> b!5243165 (= res!2225251 (matchRSpec!1948 (regOne!30203 r!7292) s!2326))))

(assert (=> b!5243165 (=> res!2225251 e!3262302)))

(assert (= (and d!1689300 c!906410) b!5243159))

(assert (= (and d!1689300 (not c!906410)) b!5243164))

(assert (= (and b!5243164 res!2225250) b!5243163))

(assert (= (and b!5243163 c!906409) b!5243157))

(assert (= (and b!5243163 (not c!906409)) b!5243161))

(assert (= (and b!5243161 c!906411) b!5243165))

(assert (= (and b!5243161 (not c!906411)) b!5243156))

(assert (= (and b!5243165 (not res!2225251)) b!5243155))

(assert (= (and b!5243156 c!906408) b!5243158))

(assert (= (and b!5243156 (not c!906408)) b!5243160))

(assert (= (and b!5243158 (not res!2225249)) b!5243162))

(assert (= (or b!5243162 b!5243160) bm!371214))

(assert (= (or b!5243159 b!5243158) bm!371215))

(declare-fun m!6287326 () Bool)

(assert (=> b!5243155 m!6287326))

(declare-fun m!6287328 () Bool)

(assert (=> bm!371214 m!6287328))

(declare-fun m!6287330 () Bool)

(assert (=> bm!371215 m!6287330))

(declare-fun m!6287332 () Bool)

(assert (=> b!5243165 m!6287332))

(assert (=> b!5242453 d!1689300))

(declare-fun b!5243194 () Bool)

(declare-fun e!3262322 () Bool)

(declare-fun lt!2149229 () Bool)

(declare-fun call!371223 () Bool)

(assert (=> b!5243194 (= e!3262322 (= lt!2149229 call!371223))))

(declare-fun b!5243195 () Bool)

(declare-fun e!3262323 () Bool)

(assert (=> b!5243195 (= e!3262323 (not (= (head!11238 s!2326) (c!906205 r!7292))))))

(declare-fun b!5243196 () Bool)

(declare-fun res!2225271 () Bool)

(assert (=> b!5243196 (=> res!2225271 e!3262323)))

(assert (=> b!5243196 (= res!2225271 (not (isEmpty!32648 (tail!10335 s!2326))))))

(declare-fun b!5243197 () Bool)

(declare-fun e!3262325 () Bool)

(declare-fun derivativeStep!4081 (Regex!14845 C!29960) Regex!14845)

(assert (=> b!5243197 (= e!3262325 (matchR!7030 (derivativeStep!4081 r!7292 (head!11238 s!2326)) (tail!10335 s!2326)))))

(declare-fun b!5243198 () Bool)

(assert (=> b!5243198 (= e!3262325 (nullable!5014 r!7292))))

(declare-fun b!5243199 () Bool)

(declare-fun res!2225272 () Bool)

(declare-fun e!3262324 () Bool)

(assert (=> b!5243199 (=> (not res!2225272) (not e!3262324))))

(assert (=> b!5243199 (= res!2225272 (not call!371223))))

(declare-fun d!1689302 () Bool)

(assert (=> d!1689302 e!3262322))

(declare-fun c!906419 () Bool)

(assert (=> d!1689302 (= c!906419 ((_ is EmptyExpr!14845) r!7292))))

(assert (=> d!1689302 (= lt!2149229 e!3262325)))

(declare-fun c!906418 () Bool)

(assert (=> d!1689302 (= c!906418 (isEmpty!32648 s!2326))))

(assert (=> d!1689302 (validRegex!6581 r!7292)))

(assert (=> d!1689302 (= (matchR!7030 r!7292 s!2326) lt!2149229)))

(declare-fun b!5243200 () Bool)

(declare-fun e!3262327 () Bool)

(assert (=> b!5243200 (= e!3262327 e!3262323)))

(declare-fun res!2225268 () Bool)

(assert (=> b!5243200 (=> res!2225268 e!3262323)))

(assert (=> b!5243200 (= res!2225268 call!371223)))

(declare-fun b!5243201 () Bool)

(declare-fun res!2225273 () Bool)

(declare-fun e!3262328 () Bool)

(assert (=> b!5243201 (=> res!2225273 e!3262328)))

(assert (=> b!5243201 (= res!2225273 (not ((_ is ElementMatch!14845) r!7292)))))

(declare-fun e!3262326 () Bool)

(assert (=> b!5243201 (= e!3262326 e!3262328)))

(declare-fun bm!371218 () Bool)

(assert (=> bm!371218 (= call!371223 (isEmpty!32648 s!2326))))

(declare-fun b!5243202 () Bool)

(assert (=> b!5243202 (= e!3262328 e!3262327)))

(declare-fun res!2225269 () Bool)

(assert (=> b!5243202 (=> (not res!2225269) (not e!3262327))))

(assert (=> b!5243202 (= res!2225269 (not lt!2149229))))

(declare-fun b!5243203 () Bool)

(assert (=> b!5243203 (= e!3262326 (not lt!2149229))))

(declare-fun b!5243204 () Bool)

(declare-fun res!2225274 () Bool)

(assert (=> b!5243204 (=> (not res!2225274) (not e!3262324))))

(assert (=> b!5243204 (= res!2225274 (isEmpty!32648 (tail!10335 s!2326)))))

(declare-fun b!5243205 () Bool)

(declare-fun res!2225270 () Bool)

(assert (=> b!5243205 (=> res!2225270 e!3262328)))

(assert (=> b!5243205 (= res!2225270 e!3262324)))

(declare-fun res!2225275 () Bool)

(assert (=> b!5243205 (=> (not res!2225275) (not e!3262324))))

(assert (=> b!5243205 (= res!2225275 lt!2149229)))

(declare-fun b!5243206 () Bool)

(assert (=> b!5243206 (= e!3262324 (= (head!11238 s!2326) (c!906205 r!7292)))))

(declare-fun b!5243207 () Bool)

(assert (=> b!5243207 (= e!3262322 e!3262326)))

(declare-fun c!906420 () Bool)

(assert (=> b!5243207 (= c!906420 ((_ is EmptyLang!14845) r!7292))))

(assert (= (and d!1689302 c!906418) b!5243198))

(assert (= (and d!1689302 (not c!906418)) b!5243197))

(assert (= (and d!1689302 c!906419) b!5243194))

(assert (= (and d!1689302 (not c!906419)) b!5243207))

(assert (= (and b!5243207 c!906420) b!5243203))

(assert (= (and b!5243207 (not c!906420)) b!5243201))

(assert (= (and b!5243201 (not res!2225273)) b!5243205))

(assert (= (and b!5243205 res!2225275) b!5243199))

(assert (= (and b!5243199 res!2225272) b!5243204))

(assert (= (and b!5243204 res!2225274) b!5243206))

(assert (= (and b!5243205 (not res!2225270)) b!5243202))

(assert (= (and b!5243202 res!2225269) b!5243200))

(assert (= (and b!5243200 (not res!2225268)) b!5243196))

(assert (= (and b!5243196 (not res!2225271)) b!5243195))

(assert (= (or b!5243194 b!5243199 b!5243200) bm!371218))

(declare-fun m!6287334 () Bool)

(assert (=> b!5243204 m!6287334))

(assert (=> b!5243204 m!6287334))

(declare-fun m!6287336 () Bool)

(assert (=> b!5243204 m!6287336))

(assert (=> d!1689302 m!6287330))

(assert (=> d!1689302 m!6286716))

(declare-fun m!6287338 () Bool)

(assert (=> b!5243197 m!6287338))

(assert (=> b!5243197 m!6287338))

(declare-fun m!6287340 () Bool)

(assert (=> b!5243197 m!6287340))

(assert (=> b!5243197 m!6287334))

(assert (=> b!5243197 m!6287340))

(assert (=> b!5243197 m!6287334))

(declare-fun m!6287342 () Bool)

(assert (=> b!5243197 m!6287342))

(assert (=> b!5243206 m!6287338))

(assert (=> b!5243196 m!6287334))

(assert (=> b!5243196 m!6287334))

(assert (=> b!5243196 m!6287336))

(assert (=> bm!371218 m!6287330))

(assert (=> b!5243195 m!6287338))

(declare-fun m!6287344 () Bool)

(assert (=> b!5243198 m!6287344))

(assert (=> b!5242453 d!1689302))

(declare-fun d!1689304 () Bool)

(assert (=> d!1689304 (= (matchR!7030 r!7292 s!2326) (matchRSpec!1948 r!7292 s!2326))))

(declare-fun lt!2149232 () Unit!152774)

(declare-fun choose!39047 (Regex!14845 List!60834) Unit!152774)

(assert (=> d!1689304 (= lt!2149232 (choose!39047 r!7292 s!2326))))

(assert (=> d!1689304 (validRegex!6581 r!7292)))

(assert (=> d!1689304 (= (mainMatchTheorem!1948 r!7292 s!2326) lt!2149232)))

(declare-fun bs!1216276 () Bool)

(assert (= bs!1216276 d!1689304))

(assert (=> bs!1216276 m!6286738))

(assert (=> bs!1216276 m!6286736))

(declare-fun m!6287346 () Bool)

(assert (=> bs!1216276 m!6287346))

(assert (=> bs!1216276 m!6286716))

(assert (=> b!5242453 d!1689304))

(declare-fun d!1689306 () Bool)

(assert (=> d!1689306 (= (isEmpty!32644 (t!374017 zl!343)) ((_ is Nil!60712) (t!374017 zl!343)))))

(assert (=> b!5242454 d!1689306))

(declare-fun bs!1216277 () Bool)

(declare-fun d!1689308 () Bool)

(assert (= bs!1216277 (and d!1689308 b!5242466)))

(declare-fun lambda!263787 () Int)

(assert (=> bs!1216277 (= lambda!263787 lambda!263729)))

(declare-fun bs!1216278 () Bool)

(assert (= bs!1216278 (and d!1689308 d!1689278)))

(assert (=> bs!1216278 (= lambda!263787 lambda!263775)))

(declare-fun bs!1216279 () Bool)

(assert (= bs!1216279 (and d!1689308 d!1689288)))

(assert (=> bs!1216279 (= lambda!263787 lambda!263778)))

(assert (=> d!1689308 (= (inv!80359 (h!67160 zl!343)) (forall!14269 (exprs!4729 (h!67160 zl!343)) lambda!263787))))

(declare-fun bs!1216280 () Bool)

(assert (= bs!1216280 d!1689308))

(declare-fun m!6287348 () Bool)

(assert (=> bs!1216280 m!6287348))

(assert (=> b!5242473 d!1689308))

(assert (=> b!5242474 d!1689296))

(declare-fun d!1689310 () Bool)

(assert (=> d!1689310 (= (isEmpty!32643 (t!374016 (exprs!4729 (h!67160 zl!343)))) ((_ is Nil!60711) (t!374016 (exprs!4729 (h!67160 zl!343)))))))

(assert (=> b!5242445 d!1689310))

(declare-fun d!1689312 () Bool)

(declare-fun c!906421 () Bool)

(assert (=> d!1689312 (= c!906421 (isEmpty!32648 (t!374015 s!2326)))))

(declare-fun e!3262329 () Bool)

(assert (=> d!1689312 (= (matchZipper!1089 lt!2149101 (t!374015 s!2326)) e!3262329)))

(declare-fun b!5243208 () Bool)

(assert (=> b!5243208 (= e!3262329 (nullableZipper!1260 lt!2149101))))

(declare-fun b!5243209 () Bool)

(assert (=> b!5243209 (= e!3262329 (matchZipper!1089 (derivationStepZipper!1104 lt!2149101 (head!11238 (t!374015 s!2326))) (tail!10335 (t!374015 s!2326))))))

(assert (= (and d!1689312 c!906421) b!5243208))

(assert (= (and d!1689312 (not c!906421)) b!5243209))

(assert (=> d!1689312 m!6287240))

(declare-fun m!6287350 () Bool)

(assert (=> b!5243208 m!6287350))

(assert (=> b!5243209 m!6287244))

(assert (=> b!5243209 m!6287244))

(declare-fun m!6287352 () Bool)

(assert (=> b!5243209 m!6287352))

(assert (=> b!5243209 m!6287248))

(assert (=> b!5243209 m!6287352))

(assert (=> b!5243209 m!6287248))

(declare-fun m!6287354 () Bool)

(assert (=> b!5243209 m!6287354))

(assert (=> b!5242446 d!1689312))

(declare-fun d!1689314 () Bool)

(declare-fun c!906422 () Bool)

(assert (=> d!1689314 (= c!906422 (isEmpty!32648 (t!374015 s!2326)))))

(declare-fun e!3262330 () Bool)

(assert (=> d!1689314 (= (matchZipper!1089 lt!2149087 (t!374015 s!2326)) e!3262330)))

(declare-fun b!5243210 () Bool)

(assert (=> b!5243210 (= e!3262330 (nullableZipper!1260 lt!2149087))))

(declare-fun b!5243211 () Bool)

(assert (=> b!5243211 (= e!3262330 (matchZipper!1089 (derivationStepZipper!1104 lt!2149087 (head!11238 (t!374015 s!2326))) (tail!10335 (t!374015 s!2326))))))

(assert (= (and d!1689314 c!906422) b!5243210))

(assert (= (and d!1689314 (not c!906422)) b!5243211))

(assert (=> d!1689314 m!6287240))

(declare-fun m!6287356 () Bool)

(assert (=> b!5243210 m!6287356))

(assert (=> b!5243211 m!6287244))

(assert (=> b!5243211 m!6287244))

(declare-fun m!6287358 () Bool)

(assert (=> b!5243211 m!6287358))

(assert (=> b!5243211 m!6287248))

(assert (=> b!5243211 m!6287358))

(assert (=> b!5243211 m!6287248))

(declare-fun m!6287360 () Bool)

(assert (=> b!5243211 m!6287360))

(assert (=> b!5242446 d!1689314))

(declare-fun d!1689316 () Bool)

(declare-fun c!906423 () Bool)

(assert (=> d!1689316 (= c!906423 (isEmpty!32648 (t!374015 s!2326)))))

(declare-fun e!3262331 () Bool)

(assert (=> d!1689316 (= (matchZipper!1089 lt!2149093 (t!374015 s!2326)) e!3262331)))

(declare-fun b!5243212 () Bool)

(assert (=> b!5243212 (= e!3262331 (nullableZipper!1260 lt!2149093))))

(declare-fun b!5243213 () Bool)

(assert (=> b!5243213 (= e!3262331 (matchZipper!1089 (derivationStepZipper!1104 lt!2149093 (head!11238 (t!374015 s!2326))) (tail!10335 (t!374015 s!2326))))))

(assert (= (and d!1689316 c!906423) b!5243212))

(assert (= (and d!1689316 (not c!906423)) b!5243213))

(assert (=> d!1689316 m!6287240))

(declare-fun m!6287362 () Bool)

(assert (=> b!5243212 m!6287362))

(assert (=> b!5243213 m!6287244))

(assert (=> b!5243213 m!6287244))

(declare-fun m!6287364 () Bool)

(assert (=> b!5243213 m!6287364))

(assert (=> b!5243213 m!6287248))

(assert (=> b!5243213 m!6287364))

(assert (=> b!5243213 m!6287248))

(declare-fun m!6287366 () Bool)

(assert (=> b!5243213 m!6287366))

(assert (=> b!5242446 d!1689316))

(declare-fun e!3262332 () Bool)

(declare-fun d!1689318 () Bool)

(assert (=> d!1689318 (= (matchZipper!1089 ((_ map or) lt!2149093 lt!2149107) (t!374015 s!2326)) e!3262332)))

(declare-fun res!2225276 () Bool)

(assert (=> d!1689318 (=> res!2225276 e!3262332)))

(assert (=> d!1689318 (= res!2225276 (matchZipper!1089 lt!2149093 (t!374015 s!2326)))))

(declare-fun lt!2149233 () Unit!152774)

(assert (=> d!1689318 (= lt!2149233 (choose!39044 lt!2149093 lt!2149107 (t!374015 s!2326)))))

(assert (=> d!1689318 (= (lemmaZipperConcatMatchesSameAsBothZippers!82 lt!2149093 lt!2149107 (t!374015 s!2326)) lt!2149233)))

(declare-fun b!5243214 () Bool)

(assert (=> b!5243214 (= e!3262332 (matchZipper!1089 lt!2149107 (t!374015 s!2326)))))

(assert (= (and d!1689318 (not res!2225276)) b!5243214))

(declare-fun m!6287368 () Bool)

(assert (=> d!1689318 m!6287368))

(assert (=> d!1689318 m!6286790))

(declare-fun m!6287370 () Bool)

(assert (=> d!1689318 m!6287370))

(assert (=> b!5243214 m!6286772))

(assert (=> b!5242446 d!1689318))

(declare-fun d!1689320 () Bool)

(declare-fun lt!2149234 () Int)

(assert (=> d!1689320 (>= lt!2149234 0)))

(declare-fun e!3262333 () Int)

(assert (=> d!1689320 (= lt!2149234 e!3262333)))

(declare-fun c!906424 () Bool)

(assert (=> d!1689320 (= c!906424 ((_ is Cons!60712) lt!2149128))))

(assert (=> d!1689320 (= (zipperDepthTotal!26 lt!2149128) lt!2149234)))

(declare-fun b!5243215 () Bool)

(assert (=> b!5243215 (= e!3262333 (+ (contextDepthTotal!18 (h!67160 lt!2149128)) (zipperDepthTotal!26 (t!374017 lt!2149128))))))

(declare-fun b!5243216 () Bool)

(assert (=> b!5243216 (= e!3262333 0)))

(assert (= (and d!1689320 c!906424) b!5243215))

(assert (= (and d!1689320 (not c!906424)) b!5243216))

(declare-fun m!6287372 () Bool)

(assert (=> b!5243215 m!6287372))

(declare-fun m!6287374 () Bool)

(assert (=> b!5243215 m!6287374))

(assert (=> b!5242465 d!1689320))

(declare-fun d!1689322 () Bool)

(declare-fun res!2225281 () Bool)

(declare-fun e!3262338 () Bool)

(assert (=> d!1689322 (=> res!2225281 e!3262338)))

(assert (=> d!1689322 (= res!2225281 ((_ is Nil!60711) lt!2149104))))

(assert (=> d!1689322 (= (forall!14269 lt!2149104 lambda!263729) e!3262338)))

(declare-fun b!5243221 () Bool)

(declare-fun e!3262339 () Bool)

(assert (=> b!5243221 (= e!3262338 e!3262339)))

(declare-fun res!2225282 () Bool)

(assert (=> b!5243221 (=> (not res!2225282) (not e!3262339))))

(declare-fun dynLambda!23991 (Int Regex!14845) Bool)

(assert (=> b!5243221 (= res!2225282 (dynLambda!23991 lambda!263729 (h!67159 lt!2149104)))))

(declare-fun b!5243222 () Bool)

(assert (=> b!5243222 (= e!3262339 (forall!14269 (t!374016 lt!2149104) lambda!263729))))

(assert (= (and d!1689322 (not res!2225281)) b!5243221))

(assert (= (and b!5243221 res!2225282) b!5243222))

(declare-fun b_lambda!202583 () Bool)

(assert (=> (not b_lambda!202583) (not b!5243221)))

(declare-fun m!6287376 () Bool)

(assert (=> b!5243221 m!6287376))

(declare-fun m!6287378 () Bool)

(assert (=> b!5243222 m!6287378))

(assert (=> b!5242466 d!1689322))

(declare-fun c!906429 () Bool)

(declare-fun call!371228 () (InoxSet Context!8458))

(declare-fun bm!371219 () Bool)

(declare-fun call!371229 () List!60835)

(declare-fun c!906426 () Bool)

(declare-fun c!906428 () Bool)

(assert (=> bm!371219 (= call!371228 (derivationStepZipperDown!293 (ite c!906428 (regTwo!30203 (regTwo!30203 (regOne!30202 r!7292))) (ite c!906426 (regTwo!30202 (regTwo!30203 (regOne!30202 r!7292))) (ite c!906429 (regOne!30202 (regTwo!30203 (regOne!30202 r!7292))) (reg!15174 (regTwo!30203 (regOne!30202 r!7292)))))) (ite (or c!906428 c!906426) lt!2149086 (Context!8459 call!371229)) (h!67158 s!2326)))))

(declare-fun bm!371220 () Bool)

(declare-fun call!371225 () (InoxSet Context!8458))

(assert (=> bm!371220 (= call!371225 call!371228)))

(declare-fun b!5243223 () Bool)

(declare-fun e!3262343 () (InoxSet Context!8458))

(declare-fun call!371227 () (InoxSet Context!8458))

(assert (=> b!5243223 (= e!3262343 call!371227)))

(declare-fun d!1689324 () Bool)

(declare-fun c!906425 () Bool)

(assert (=> d!1689324 (= c!906425 (and ((_ is ElementMatch!14845) (regTwo!30203 (regOne!30202 r!7292))) (= (c!906205 (regTwo!30203 (regOne!30202 r!7292))) (h!67158 s!2326))))))

(declare-fun e!3262345 () (InoxSet Context!8458))

(assert (=> d!1689324 (= (derivationStepZipperDown!293 (regTwo!30203 (regOne!30202 r!7292)) lt!2149086 (h!67158 s!2326)) e!3262345)))

(declare-fun b!5243224 () Bool)

(assert (=> b!5243224 (= e!3262345 (store ((as const (Array Context!8458 Bool)) false) lt!2149086 true))))

(declare-fun bm!371221 () Bool)

(declare-fun call!371224 () List!60835)

(assert (=> bm!371221 (= call!371224 ($colon$colon!1310 (exprs!4729 lt!2149086) (ite (or c!906426 c!906429) (regTwo!30202 (regTwo!30203 (regOne!30202 r!7292))) (regTwo!30203 (regOne!30202 r!7292)))))))

(declare-fun b!5243225 () Bool)

(declare-fun e!3262344 () Bool)

(assert (=> b!5243225 (= e!3262344 (nullable!5014 (regOne!30202 (regTwo!30203 (regOne!30202 r!7292)))))))

(declare-fun b!5243226 () Bool)

(declare-fun e!3262340 () (InoxSet Context!8458))

(assert (=> b!5243226 (= e!3262345 e!3262340)))

(assert (=> b!5243226 (= c!906428 ((_ is Union!14845) (regTwo!30203 (regOne!30202 r!7292))))))

(declare-fun bm!371222 () Bool)

(declare-fun call!371226 () (InoxSet Context!8458))

(assert (=> bm!371222 (= call!371226 (derivationStepZipperDown!293 (ite c!906428 (regOne!30203 (regTwo!30203 (regOne!30202 r!7292))) (regOne!30202 (regTwo!30203 (regOne!30202 r!7292)))) (ite c!906428 lt!2149086 (Context!8459 call!371224)) (h!67158 s!2326)))))

(declare-fun bm!371223 () Bool)

(assert (=> bm!371223 (= call!371229 call!371224)))

(declare-fun b!5243227 () Bool)

(declare-fun e!3262341 () (InoxSet Context!8458))

(assert (=> b!5243227 (= e!3262341 e!3262343)))

(assert (=> b!5243227 (= c!906429 ((_ is Concat!23690) (regTwo!30203 (regOne!30202 r!7292))))))

(declare-fun b!5243228 () Bool)

(assert (=> b!5243228 (= c!906426 e!3262344)))

(declare-fun res!2225283 () Bool)

(assert (=> b!5243228 (=> (not res!2225283) (not e!3262344))))

(assert (=> b!5243228 (= res!2225283 ((_ is Concat!23690) (regTwo!30203 (regOne!30202 r!7292))))))

(assert (=> b!5243228 (= e!3262340 e!3262341)))

(declare-fun b!5243229 () Bool)

(declare-fun e!3262342 () (InoxSet Context!8458))

(assert (=> b!5243229 (= e!3262342 ((as const (Array Context!8458 Bool)) false))))

(declare-fun b!5243230 () Bool)

(assert (=> b!5243230 (= e!3262341 ((_ map or) call!371226 call!371225))))

(declare-fun b!5243231 () Bool)

(assert (=> b!5243231 (= e!3262342 call!371227)))

(declare-fun bm!371224 () Bool)

(assert (=> bm!371224 (= call!371227 call!371225)))

(declare-fun b!5243232 () Bool)

(assert (=> b!5243232 (= e!3262340 ((_ map or) call!371226 call!371228))))

(declare-fun b!5243233 () Bool)

(declare-fun c!906427 () Bool)

(assert (=> b!5243233 (= c!906427 ((_ is Star!14845) (regTwo!30203 (regOne!30202 r!7292))))))

(assert (=> b!5243233 (= e!3262343 e!3262342)))

(assert (= (and d!1689324 c!906425) b!5243224))

(assert (= (and d!1689324 (not c!906425)) b!5243226))

(assert (= (and b!5243226 c!906428) b!5243232))

(assert (= (and b!5243226 (not c!906428)) b!5243228))

(assert (= (and b!5243228 res!2225283) b!5243225))

(assert (= (and b!5243228 c!906426) b!5243230))

(assert (= (and b!5243228 (not c!906426)) b!5243227))

(assert (= (and b!5243227 c!906429) b!5243223))

(assert (= (and b!5243227 (not c!906429)) b!5243233))

(assert (= (and b!5243233 c!906427) b!5243231))

(assert (= (and b!5243233 (not c!906427)) b!5243229))

(assert (= (or b!5243223 b!5243231) bm!371223))

(assert (= (or b!5243223 b!5243231) bm!371224))

(assert (= (or b!5243230 bm!371223) bm!371221))

(assert (= (or b!5243230 bm!371224) bm!371220))

(assert (= (or b!5243232 bm!371220) bm!371219))

(assert (= (or b!5243232 b!5243230) bm!371222))

(assert (=> b!5243224 m!6287024))

(declare-fun m!6287380 () Bool)

(assert (=> bm!371222 m!6287380))

(declare-fun m!6287382 () Bool)

(assert (=> b!5243225 m!6287382))

(declare-fun m!6287384 () Bool)

(assert (=> bm!371221 m!6287384))

(declare-fun m!6287386 () Bool)

(assert (=> bm!371219 m!6287386))

(assert (=> b!5242448 d!1689324))

(declare-fun c!906431 () Bool)

(declare-fun bm!371225 () Bool)

(declare-fun call!371234 () (InoxSet Context!8458))

(declare-fun c!906433 () Bool)

(declare-fun call!371235 () List!60835)

(declare-fun c!906434 () Bool)

(assert (=> bm!371225 (= call!371234 (derivationStepZipperDown!293 (ite c!906433 (regTwo!30203 (regOne!30203 (regOne!30202 r!7292))) (ite c!906431 (regTwo!30202 (regOne!30203 (regOne!30202 r!7292))) (ite c!906434 (regOne!30202 (regOne!30203 (regOne!30202 r!7292))) (reg!15174 (regOne!30203 (regOne!30202 r!7292)))))) (ite (or c!906433 c!906431) lt!2149086 (Context!8459 call!371235)) (h!67158 s!2326)))))

(declare-fun bm!371226 () Bool)

(declare-fun call!371231 () (InoxSet Context!8458))

(assert (=> bm!371226 (= call!371231 call!371234)))

(declare-fun b!5243234 () Bool)

(declare-fun e!3262349 () (InoxSet Context!8458))

(declare-fun call!371233 () (InoxSet Context!8458))

(assert (=> b!5243234 (= e!3262349 call!371233)))

(declare-fun d!1689326 () Bool)

(declare-fun c!906430 () Bool)

(assert (=> d!1689326 (= c!906430 (and ((_ is ElementMatch!14845) (regOne!30203 (regOne!30202 r!7292))) (= (c!906205 (regOne!30203 (regOne!30202 r!7292))) (h!67158 s!2326))))))

(declare-fun e!3262351 () (InoxSet Context!8458))

(assert (=> d!1689326 (= (derivationStepZipperDown!293 (regOne!30203 (regOne!30202 r!7292)) lt!2149086 (h!67158 s!2326)) e!3262351)))

(declare-fun b!5243235 () Bool)

(assert (=> b!5243235 (= e!3262351 (store ((as const (Array Context!8458 Bool)) false) lt!2149086 true))))

(declare-fun call!371230 () List!60835)

(declare-fun bm!371227 () Bool)

(assert (=> bm!371227 (= call!371230 ($colon$colon!1310 (exprs!4729 lt!2149086) (ite (or c!906431 c!906434) (regTwo!30202 (regOne!30203 (regOne!30202 r!7292))) (regOne!30203 (regOne!30202 r!7292)))))))

(declare-fun b!5243236 () Bool)

(declare-fun e!3262350 () Bool)

(assert (=> b!5243236 (= e!3262350 (nullable!5014 (regOne!30202 (regOne!30203 (regOne!30202 r!7292)))))))

(declare-fun b!5243237 () Bool)

(declare-fun e!3262346 () (InoxSet Context!8458))

(assert (=> b!5243237 (= e!3262351 e!3262346)))

(assert (=> b!5243237 (= c!906433 ((_ is Union!14845) (regOne!30203 (regOne!30202 r!7292))))))

(declare-fun call!371232 () (InoxSet Context!8458))

(declare-fun bm!371228 () Bool)

(assert (=> bm!371228 (= call!371232 (derivationStepZipperDown!293 (ite c!906433 (regOne!30203 (regOne!30203 (regOne!30202 r!7292))) (regOne!30202 (regOne!30203 (regOne!30202 r!7292)))) (ite c!906433 lt!2149086 (Context!8459 call!371230)) (h!67158 s!2326)))))

(declare-fun bm!371229 () Bool)

(assert (=> bm!371229 (= call!371235 call!371230)))

(declare-fun b!5243238 () Bool)

(declare-fun e!3262347 () (InoxSet Context!8458))

(assert (=> b!5243238 (= e!3262347 e!3262349)))

(assert (=> b!5243238 (= c!906434 ((_ is Concat!23690) (regOne!30203 (regOne!30202 r!7292))))))

(declare-fun b!5243239 () Bool)

(assert (=> b!5243239 (= c!906431 e!3262350)))

(declare-fun res!2225284 () Bool)

(assert (=> b!5243239 (=> (not res!2225284) (not e!3262350))))

(assert (=> b!5243239 (= res!2225284 ((_ is Concat!23690) (regOne!30203 (regOne!30202 r!7292))))))

(assert (=> b!5243239 (= e!3262346 e!3262347)))

(declare-fun b!5243240 () Bool)

(declare-fun e!3262348 () (InoxSet Context!8458))

(assert (=> b!5243240 (= e!3262348 ((as const (Array Context!8458 Bool)) false))))

(declare-fun b!5243241 () Bool)

(assert (=> b!5243241 (= e!3262347 ((_ map or) call!371232 call!371231))))

(declare-fun b!5243242 () Bool)

(assert (=> b!5243242 (= e!3262348 call!371233)))

(declare-fun bm!371230 () Bool)

(assert (=> bm!371230 (= call!371233 call!371231)))

(declare-fun b!5243243 () Bool)

(assert (=> b!5243243 (= e!3262346 ((_ map or) call!371232 call!371234))))

(declare-fun b!5243244 () Bool)

(declare-fun c!906432 () Bool)

(assert (=> b!5243244 (= c!906432 ((_ is Star!14845) (regOne!30203 (regOne!30202 r!7292))))))

(assert (=> b!5243244 (= e!3262349 e!3262348)))

(assert (= (and d!1689326 c!906430) b!5243235))

(assert (= (and d!1689326 (not c!906430)) b!5243237))

(assert (= (and b!5243237 c!906433) b!5243243))

(assert (= (and b!5243237 (not c!906433)) b!5243239))

(assert (= (and b!5243239 res!2225284) b!5243236))

(assert (= (and b!5243239 c!906431) b!5243241))

(assert (= (and b!5243239 (not c!906431)) b!5243238))

(assert (= (and b!5243238 c!906434) b!5243234))

(assert (= (and b!5243238 (not c!906434)) b!5243244))

(assert (= (and b!5243244 c!906432) b!5243242))

(assert (= (and b!5243244 (not c!906432)) b!5243240))

(assert (= (or b!5243234 b!5243242) bm!371229))

(assert (= (or b!5243234 b!5243242) bm!371230))

(assert (= (or b!5243241 bm!371229) bm!371227))

(assert (= (or b!5243241 bm!371230) bm!371226))

(assert (= (or b!5243243 bm!371226) bm!371225))

(assert (= (or b!5243243 b!5243241) bm!371228))

(assert (=> b!5243235 m!6287024))

(declare-fun m!6287388 () Bool)

(assert (=> bm!371228 m!6287388))

(declare-fun m!6287390 () Bool)

(assert (=> b!5243236 m!6287390))

(declare-fun m!6287392 () Bool)

(assert (=> bm!371227 m!6287392))

(declare-fun m!6287394 () Bool)

(assert (=> bm!371225 m!6287394))

(assert (=> b!5242448 d!1689326))

(declare-fun bs!1216281 () Bool)

(declare-fun d!1689328 () Bool)

(assert (= bs!1216281 (and d!1689328 b!5242466)))

(declare-fun lambda!263790 () Int)

(assert (=> bs!1216281 (= lambda!263790 lambda!263729)))

(declare-fun bs!1216282 () Bool)

(assert (= bs!1216282 (and d!1689328 d!1689278)))

(assert (=> bs!1216282 (= lambda!263790 lambda!263775)))

(declare-fun bs!1216283 () Bool)

(assert (= bs!1216283 (and d!1689328 d!1689288)))

(assert (=> bs!1216283 (= lambda!263790 lambda!263778)))

(declare-fun bs!1216284 () Bool)

(assert (= bs!1216284 (and d!1689328 d!1689308)))

(assert (=> bs!1216284 (= lambda!263790 lambda!263787)))

(declare-fun b!5243265 () Bool)

(declare-fun e!3262365 () Bool)

(declare-fun e!3262368 () Bool)

(assert (=> b!5243265 (= e!3262365 e!3262368)))

(declare-fun c!906445 () Bool)

(assert (=> b!5243265 (= c!906445 (isEmpty!32643 (tail!10336 (exprs!4729 (h!67160 zl!343)))))))

(declare-fun b!5243266 () Bool)

(declare-fun e!3262369 () Regex!14845)

(assert (=> b!5243266 (= e!3262369 (h!67159 (exprs!4729 (h!67160 zl!343))))))

(declare-fun b!5243267 () Bool)

(declare-fun lt!2149237 () Regex!14845)

(declare-fun isEmptyExpr!795 (Regex!14845) Bool)

(assert (=> b!5243267 (= e!3262365 (isEmptyExpr!795 lt!2149237))))

(declare-fun b!5243269 () Bool)

(declare-fun e!3262364 () Bool)

(assert (=> b!5243269 (= e!3262364 e!3262365)))

(declare-fun c!906446 () Bool)

(assert (=> b!5243269 (= c!906446 (isEmpty!32643 (exprs!4729 (h!67160 zl!343))))))

(declare-fun b!5243270 () Bool)

(declare-fun e!3262367 () Regex!14845)

(assert (=> b!5243270 (= e!3262369 e!3262367)))

(declare-fun c!906443 () Bool)

(assert (=> b!5243270 (= c!906443 ((_ is Cons!60711) (exprs!4729 (h!67160 zl!343))))))

(declare-fun b!5243271 () Bool)

(assert (=> b!5243271 (= e!3262368 (= lt!2149237 (head!11239 (exprs!4729 (h!67160 zl!343)))))))

(declare-fun b!5243272 () Bool)

(assert (=> b!5243272 (= e!3262367 EmptyExpr!14845)))

(declare-fun b!5243273 () Bool)

(declare-fun isConcat!318 (Regex!14845) Bool)

(assert (=> b!5243273 (= e!3262368 (isConcat!318 lt!2149237))))

(declare-fun b!5243274 () Bool)

(assert (=> b!5243274 (= e!3262367 (Concat!23690 (h!67159 (exprs!4729 (h!67160 zl!343))) (generalisedConcat!514 (t!374016 (exprs!4729 (h!67160 zl!343))))))))

(assert (=> d!1689328 e!3262364))

(declare-fun res!2225289 () Bool)

(assert (=> d!1689328 (=> (not res!2225289) (not e!3262364))))

(assert (=> d!1689328 (= res!2225289 (validRegex!6581 lt!2149237))))

(assert (=> d!1689328 (= lt!2149237 e!3262369)))

(declare-fun c!906444 () Bool)

(declare-fun e!3262366 () Bool)

(assert (=> d!1689328 (= c!906444 e!3262366)))

(declare-fun res!2225290 () Bool)

(assert (=> d!1689328 (=> (not res!2225290) (not e!3262366))))

(assert (=> d!1689328 (= res!2225290 ((_ is Cons!60711) (exprs!4729 (h!67160 zl!343))))))

(assert (=> d!1689328 (forall!14269 (exprs!4729 (h!67160 zl!343)) lambda!263790)))

(assert (=> d!1689328 (= (generalisedConcat!514 (exprs!4729 (h!67160 zl!343))) lt!2149237)))

(declare-fun b!5243268 () Bool)

(assert (=> b!5243268 (= e!3262366 (isEmpty!32643 (t!374016 (exprs!4729 (h!67160 zl!343)))))))

(assert (= (and d!1689328 res!2225290) b!5243268))

(assert (= (and d!1689328 c!906444) b!5243266))

(assert (= (and d!1689328 (not c!906444)) b!5243270))

(assert (= (and b!5243270 c!906443) b!5243274))

(assert (= (and b!5243270 (not c!906443)) b!5243272))

(assert (= (and d!1689328 res!2225289) b!5243269))

(assert (= (and b!5243269 c!906446) b!5243267))

(assert (= (and b!5243269 (not c!906446)) b!5243265))

(assert (= (and b!5243265 c!906445) b!5243271))

(assert (= (and b!5243265 (not c!906445)) b!5243273))

(declare-fun m!6287396 () Bool)

(assert (=> b!5243269 m!6287396))

(declare-fun m!6287398 () Bool)

(assert (=> b!5243267 m!6287398))

(declare-fun m!6287400 () Bool)

(assert (=> b!5243265 m!6287400))

(assert (=> b!5243265 m!6287400))

(declare-fun m!6287402 () Bool)

(assert (=> b!5243265 m!6287402))

(declare-fun m!6287404 () Bool)

(assert (=> d!1689328 m!6287404))

(declare-fun m!6287406 () Bool)

(assert (=> d!1689328 m!6287406))

(declare-fun m!6287408 () Bool)

(assert (=> b!5243271 m!6287408))

(declare-fun m!6287410 () Bool)

(assert (=> b!5243274 m!6287410))

(declare-fun m!6287412 () Bool)

(assert (=> b!5243273 m!6287412))

(assert (=> b!5243268 m!6286784))

(assert (=> b!5242467 d!1689328))

(declare-fun d!1689330 () Bool)

(declare-fun lt!2149240 () Regex!14845)

(assert (=> d!1689330 (validRegex!6581 lt!2149240)))

(assert (=> d!1689330 (= lt!2149240 (generalisedUnion!774 (unfocusZipperList!287 zl!343)))))

(assert (=> d!1689330 (= (unfocusZipper!587 zl!343) lt!2149240)))

(declare-fun bs!1216285 () Bool)

(assert (= bs!1216285 d!1689330))

(declare-fun m!6287414 () Bool)

(assert (=> bs!1216285 m!6287414))

(assert (=> bs!1216285 m!6286674))

(assert (=> bs!1216285 m!6286674))

(assert (=> bs!1216285 m!6286676))

(assert (=> b!5242468 d!1689330))

(declare-fun b!5243275 () Bool)

(declare-fun e!3262372 () (InoxSet Context!8458))

(assert (=> b!5243275 (= e!3262372 ((as const (Array Context!8458 Bool)) false))))

(declare-fun b!5243276 () Bool)

(declare-fun call!371236 () (InoxSet Context!8458))

(assert (=> b!5243276 (= e!3262372 call!371236)))

(declare-fun d!1689332 () Bool)

(declare-fun c!906448 () Bool)

(declare-fun e!3262370 () Bool)

(assert (=> d!1689332 (= c!906448 e!3262370)))

(declare-fun res!2225291 () Bool)

(assert (=> d!1689332 (=> (not res!2225291) (not e!3262370))))

(assert (=> d!1689332 (= res!2225291 ((_ is Cons!60711) (exprs!4729 lt!2149120)))))

(declare-fun e!3262371 () (InoxSet Context!8458))

(assert (=> d!1689332 (= (derivationStepZipperUp!217 lt!2149120 (h!67158 s!2326)) e!3262371)))

(declare-fun b!5243277 () Bool)

(assert (=> b!5243277 (= e!3262371 ((_ map or) call!371236 (derivationStepZipperUp!217 (Context!8459 (t!374016 (exprs!4729 lt!2149120))) (h!67158 s!2326))))))

(declare-fun b!5243278 () Bool)

(assert (=> b!5243278 (= e!3262370 (nullable!5014 (h!67159 (exprs!4729 lt!2149120))))))

(declare-fun bm!371231 () Bool)

(assert (=> bm!371231 (= call!371236 (derivationStepZipperDown!293 (h!67159 (exprs!4729 lt!2149120)) (Context!8459 (t!374016 (exprs!4729 lt!2149120))) (h!67158 s!2326)))))

(declare-fun b!5243279 () Bool)

(assert (=> b!5243279 (= e!3262371 e!3262372)))

(declare-fun c!906447 () Bool)

(assert (=> b!5243279 (= c!906447 ((_ is Cons!60711) (exprs!4729 lt!2149120)))))

(assert (= (and d!1689332 res!2225291) b!5243278))

(assert (= (and d!1689332 c!906448) b!5243277))

(assert (= (and d!1689332 (not c!906448)) b!5243279))

(assert (= (and b!5243279 c!906447) b!5243276))

(assert (= (and b!5243279 (not c!906447)) b!5243275))

(assert (= (or b!5243277 b!5243276) bm!371231))

(declare-fun m!6287416 () Bool)

(assert (=> b!5243277 m!6287416))

(declare-fun m!6287418 () Bool)

(assert (=> b!5243278 m!6287418))

(declare-fun m!6287420 () Bool)

(assert (=> bm!371231 m!6287420))

(assert (=> b!5242449 d!1689332))

(declare-fun d!1689334 () Bool)

(assert (=> d!1689334 (= (nullable!5014 (regTwo!30203 (regOne!30202 r!7292))) (nullableFct!1411 (regTwo!30203 (regOne!30202 r!7292))))))

(declare-fun bs!1216286 () Bool)

(assert (= bs!1216286 d!1689334))

(declare-fun m!6287422 () Bool)

(assert (=> bs!1216286 m!6287422))

(assert (=> b!5242449 d!1689334))

(declare-fun d!1689336 () Bool)

(declare-fun c!906449 () Bool)

(assert (=> d!1689336 (= c!906449 (isEmpty!32648 s!2326))))

(declare-fun e!3262373 () Bool)

(assert (=> d!1689336 (= (matchZipper!1089 lt!2149118 s!2326) e!3262373)))

(declare-fun b!5243280 () Bool)

(assert (=> b!5243280 (= e!3262373 (nullableZipper!1260 lt!2149118))))

(declare-fun b!5243281 () Bool)

(assert (=> b!5243281 (= e!3262373 (matchZipper!1089 (derivationStepZipper!1104 lt!2149118 (head!11238 s!2326)) (tail!10335 s!2326)))))

(assert (= (and d!1689336 c!906449) b!5243280))

(assert (= (and d!1689336 (not c!906449)) b!5243281))

(assert (=> d!1689336 m!6287330))

(declare-fun m!6287424 () Bool)

(assert (=> b!5243280 m!6287424))

(assert (=> b!5243281 m!6287338))

(assert (=> b!5243281 m!6287338))

(declare-fun m!6287426 () Bool)

(assert (=> b!5243281 m!6287426))

(assert (=> b!5243281 m!6287334))

(assert (=> b!5243281 m!6287426))

(assert (=> b!5243281 m!6287334))

(declare-fun m!6287428 () Bool)

(assert (=> b!5243281 m!6287428))

(assert (=> b!5242449 d!1689336))

(declare-fun d!1689338 () Bool)

(declare-fun c!906450 () Bool)

(assert (=> d!1689338 (= c!906450 (isEmpty!32648 s!2326))))

(declare-fun e!3262374 () Bool)

(assert (=> d!1689338 (= (matchZipper!1089 z!1189 s!2326) e!3262374)))

(declare-fun b!5243282 () Bool)

(assert (=> b!5243282 (= e!3262374 (nullableZipper!1260 z!1189))))

(declare-fun b!5243283 () Bool)

(assert (=> b!5243283 (= e!3262374 (matchZipper!1089 (derivationStepZipper!1104 z!1189 (head!11238 s!2326)) (tail!10335 s!2326)))))

(assert (= (and d!1689338 c!906450) b!5243282))

(assert (= (and d!1689338 (not c!906450)) b!5243283))

(assert (=> d!1689338 m!6287330))

(declare-fun m!6287430 () Bool)

(assert (=> b!5243282 m!6287430))

(assert (=> b!5243283 m!6287338))

(assert (=> b!5243283 m!6287338))

(declare-fun m!6287432 () Bool)

(assert (=> b!5243283 m!6287432))

(assert (=> b!5243283 m!6287334))

(assert (=> b!5243283 m!6287432))

(assert (=> b!5243283 m!6287334))

(declare-fun m!6287434 () Bool)

(assert (=> b!5243283 m!6287434))

(assert (=> b!5242449 d!1689338))

(declare-fun d!1689340 () Bool)

(assert (=> d!1689340 (= (flatMap!572 lt!2149099 lambda!263728) (choose!39036 lt!2149099 lambda!263728))))

(declare-fun bs!1216287 () Bool)

(assert (= bs!1216287 d!1689340))

(declare-fun m!6287436 () Bool)

(assert (=> bs!1216287 m!6287436))

(assert (=> b!5242449 d!1689340))

(declare-fun d!1689342 () Bool)

(assert (=> d!1689342 (= (flatMap!572 lt!2149118 lambda!263728) (dynLambda!23988 lambda!263728 lt!2149110))))

(declare-fun lt!2149241 () Unit!152774)

(assert (=> d!1689342 (= lt!2149241 (choose!39034 lt!2149118 lt!2149110 lambda!263728))))

(assert (=> d!1689342 (= lt!2149118 (store ((as const (Array Context!8458 Bool)) false) lt!2149110 true))))

(assert (=> d!1689342 (= (lemmaFlatMapOnSingletonSet!104 lt!2149118 lt!2149110 lambda!263728) lt!2149241)))

(declare-fun b_lambda!202585 () Bool)

(assert (=> (not b_lambda!202585) (not d!1689342)))

(declare-fun bs!1216288 () Bool)

(assert (= bs!1216288 d!1689342))

(assert (=> bs!1216288 m!6286698))

(declare-fun m!6287438 () Bool)

(assert (=> bs!1216288 m!6287438))

(declare-fun m!6287440 () Bool)

(assert (=> bs!1216288 m!6287440))

(assert (=> bs!1216288 m!6286706))

(assert (=> b!5242449 d!1689342))

(declare-fun d!1689344 () Bool)

(assert (=> d!1689344 (= (flatMap!572 lt!2149099 lambda!263728) (dynLambda!23988 lambda!263728 lt!2149120))))

(declare-fun lt!2149242 () Unit!152774)

(assert (=> d!1689344 (= lt!2149242 (choose!39034 lt!2149099 lt!2149120 lambda!263728))))

(assert (=> d!1689344 (= lt!2149099 (store ((as const (Array Context!8458 Bool)) false) lt!2149120 true))))

(assert (=> d!1689344 (= (lemmaFlatMapOnSingletonSet!104 lt!2149099 lt!2149120 lambda!263728) lt!2149242)))

(declare-fun b_lambda!202587 () Bool)

(assert (=> (not b_lambda!202587) (not d!1689344)))

(declare-fun bs!1216289 () Bool)

(assert (= bs!1216289 d!1689344))

(assert (=> bs!1216289 m!6286708))

(declare-fun m!6287442 () Bool)

(assert (=> bs!1216289 m!6287442))

(declare-fun m!6287444 () Bool)

(assert (=> bs!1216289 m!6287444))

(assert (=> bs!1216289 m!6286694))

(assert (=> b!5242449 d!1689344))

(declare-fun d!1689346 () Bool)

(assert (=> d!1689346 (= (nullable!5014 (regOne!30203 (regOne!30202 r!7292))) (nullableFct!1411 (regOne!30203 (regOne!30202 r!7292))))))

(declare-fun bs!1216290 () Bool)

(assert (= bs!1216290 d!1689346))

(declare-fun m!6287446 () Bool)

(assert (=> bs!1216290 m!6287446))

(assert (=> b!5242449 d!1689346))

(declare-fun d!1689348 () Bool)

(assert (=> d!1689348 (= (flatMap!572 lt!2149118 lambda!263728) (choose!39036 lt!2149118 lambda!263728))))

(declare-fun bs!1216291 () Bool)

(assert (= bs!1216291 d!1689348))

(declare-fun m!6287448 () Bool)

(assert (=> bs!1216291 m!6287448))

(assert (=> b!5242449 d!1689348))

(declare-fun b!5243284 () Bool)

(declare-fun e!3262377 () (InoxSet Context!8458))

(assert (=> b!5243284 (= e!3262377 ((as const (Array Context!8458 Bool)) false))))

(declare-fun b!5243285 () Bool)

(declare-fun call!371237 () (InoxSet Context!8458))

(assert (=> b!5243285 (= e!3262377 call!371237)))

(declare-fun d!1689350 () Bool)

(declare-fun c!906452 () Bool)

(declare-fun e!3262375 () Bool)

(assert (=> d!1689350 (= c!906452 e!3262375)))

(declare-fun res!2225292 () Bool)

(assert (=> d!1689350 (=> (not res!2225292) (not e!3262375))))

(assert (=> d!1689350 (= res!2225292 ((_ is Cons!60711) (exprs!4729 lt!2149110)))))

(declare-fun e!3262376 () (InoxSet Context!8458))

(assert (=> d!1689350 (= (derivationStepZipperUp!217 lt!2149110 (h!67158 s!2326)) e!3262376)))

(declare-fun b!5243286 () Bool)

(assert (=> b!5243286 (= e!3262376 ((_ map or) call!371237 (derivationStepZipperUp!217 (Context!8459 (t!374016 (exprs!4729 lt!2149110))) (h!67158 s!2326))))))

(declare-fun b!5243287 () Bool)

(assert (=> b!5243287 (= e!3262375 (nullable!5014 (h!67159 (exprs!4729 lt!2149110))))))

(declare-fun bm!371232 () Bool)

(assert (=> bm!371232 (= call!371237 (derivationStepZipperDown!293 (h!67159 (exprs!4729 lt!2149110)) (Context!8459 (t!374016 (exprs!4729 lt!2149110))) (h!67158 s!2326)))))

(declare-fun b!5243288 () Bool)

(assert (=> b!5243288 (= e!3262376 e!3262377)))

(declare-fun c!906451 () Bool)

(assert (=> b!5243288 (= c!906451 ((_ is Cons!60711) (exprs!4729 lt!2149110)))))

(assert (= (and d!1689350 res!2225292) b!5243287))

(assert (= (and d!1689350 c!906452) b!5243286))

(assert (= (and d!1689350 (not c!906452)) b!5243288))

(assert (= (and b!5243288 c!906451) b!5243285))

(assert (= (and b!5243288 (not c!906451)) b!5243284))

(assert (= (or b!5243286 b!5243285) bm!371232))

(declare-fun m!6287450 () Bool)

(assert (=> b!5243286 m!6287450))

(declare-fun m!6287452 () Bool)

(assert (=> b!5243287 m!6287452))

(declare-fun m!6287454 () Bool)

(assert (=> bm!371232 m!6287454))

(assert (=> b!5242449 d!1689350))

(declare-fun d!1689352 () Bool)

(declare-fun c!906453 () Bool)

(assert (=> d!1689352 (= c!906453 (isEmpty!32648 s!2326))))

(declare-fun e!3262378 () Bool)

(assert (=> d!1689352 (= (matchZipper!1089 lt!2149099 s!2326) e!3262378)))

(declare-fun b!5243289 () Bool)

(assert (=> b!5243289 (= e!3262378 (nullableZipper!1260 lt!2149099))))

(declare-fun b!5243290 () Bool)

(assert (=> b!5243290 (= e!3262378 (matchZipper!1089 (derivationStepZipper!1104 lt!2149099 (head!11238 s!2326)) (tail!10335 s!2326)))))

(assert (= (and d!1689352 c!906453) b!5243289))

(assert (= (and d!1689352 (not c!906453)) b!5243290))

(assert (=> d!1689352 m!6287330))

(declare-fun m!6287456 () Bool)

(assert (=> b!5243289 m!6287456))

(assert (=> b!5243290 m!6287338))

(assert (=> b!5243290 m!6287338))

(declare-fun m!6287458 () Bool)

(assert (=> b!5243290 m!6287458))

(assert (=> b!5243290 m!6287334))

(assert (=> b!5243290 m!6287458))

(assert (=> b!5243290 m!6287334))

(declare-fun m!6287460 () Bool)

(assert (=> b!5243290 m!6287460))

(assert (=> b!5242461 d!1689352))

(declare-fun bs!1216292 () Bool)

(declare-fun d!1689354 () Bool)

(assert (= bs!1216292 (and d!1689354 d!1689278)))

(declare-fun lambda!263791 () Int)

(assert (=> bs!1216292 (= lambda!263791 lambda!263775)))

(declare-fun bs!1216293 () Bool)

(assert (= bs!1216293 (and d!1689354 d!1689288)))

(assert (=> bs!1216293 (= lambda!263791 lambda!263778)))

(declare-fun bs!1216294 () Bool)

(assert (= bs!1216294 (and d!1689354 b!5242466)))

(assert (=> bs!1216294 (= lambda!263791 lambda!263729)))

(declare-fun bs!1216295 () Bool)

(assert (= bs!1216295 (and d!1689354 d!1689308)))

(assert (=> bs!1216295 (= lambda!263791 lambda!263787)))

(declare-fun bs!1216296 () Bool)

(assert (= bs!1216296 (and d!1689354 d!1689328)))

(assert (=> bs!1216296 (= lambda!263791 lambda!263790)))

(assert (=> d!1689354 (= (inv!80359 setElem!33443) (forall!14269 (exprs!4729 setElem!33443) lambda!263791))))

(declare-fun bs!1216297 () Bool)

(assert (= bs!1216297 d!1689354))

(declare-fun m!6287462 () Bool)

(assert (=> bs!1216297 m!6287462))

(assert (=> setNonEmpty!33443 d!1689354))

(declare-fun d!1689356 () Bool)

(declare-fun e!3262379 () Bool)

(assert (=> d!1689356 (= (matchZipper!1089 ((_ map or) lt!2149107 lt!2149123) (t!374015 s!2326)) e!3262379)))

(declare-fun res!2225293 () Bool)

(assert (=> d!1689356 (=> res!2225293 e!3262379)))

(assert (=> d!1689356 (= res!2225293 (matchZipper!1089 lt!2149107 (t!374015 s!2326)))))

(declare-fun lt!2149243 () Unit!152774)

(assert (=> d!1689356 (= lt!2149243 (choose!39044 lt!2149107 lt!2149123 (t!374015 s!2326)))))

(assert (=> d!1689356 (= (lemmaZipperConcatMatchesSameAsBothZippers!82 lt!2149107 lt!2149123 (t!374015 s!2326)) lt!2149243)))

(declare-fun b!5243291 () Bool)

(assert (=> b!5243291 (= e!3262379 (matchZipper!1089 lt!2149123 (t!374015 s!2326)))))

(assert (= (and d!1689356 (not res!2225293)) b!5243291))

(assert (=> d!1689356 m!6286778))

(assert (=> d!1689356 m!6286772))

(declare-fun m!6287464 () Bool)

(assert (=> d!1689356 m!6287464))

(assert (=> b!5243291 m!6286670))

(assert (=> b!5242442 d!1689356))

(assert (=> b!5242442 d!1689296))

(declare-fun d!1689358 () Bool)

(declare-fun c!906454 () Bool)

(assert (=> d!1689358 (= c!906454 (isEmpty!32648 (t!374015 s!2326)))))

(declare-fun e!3262380 () Bool)

(assert (=> d!1689358 (= (matchZipper!1089 ((_ map or) lt!2149107 lt!2149123) (t!374015 s!2326)) e!3262380)))

(declare-fun b!5243292 () Bool)

(assert (=> b!5243292 (= e!3262380 (nullableZipper!1260 ((_ map or) lt!2149107 lt!2149123)))))

(declare-fun b!5243293 () Bool)

(assert (=> b!5243293 (= e!3262380 (matchZipper!1089 (derivationStepZipper!1104 ((_ map or) lt!2149107 lt!2149123) (head!11238 (t!374015 s!2326))) (tail!10335 (t!374015 s!2326))))))

(assert (= (and d!1689358 c!906454) b!5243292))

(assert (= (and d!1689358 (not c!906454)) b!5243293))

(assert (=> d!1689358 m!6287240))

(declare-fun m!6287466 () Bool)

(assert (=> b!5243292 m!6287466))

(assert (=> b!5243293 m!6287244))

(assert (=> b!5243293 m!6287244))

(declare-fun m!6287468 () Bool)

(assert (=> b!5243293 m!6287468))

(assert (=> b!5243293 m!6287248))

(assert (=> b!5243293 m!6287468))

(assert (=> b!5243293 m!6287248))

(declare-fun m!6287470 () Bool)

(assert (=> b!5243293 m!6287470))

(assert (=> b!5242442 d!1689358))

(declare-fun bs!1216298 () Bool)

(declare-fun d!1689360 () Bool)

(assert (= bs!1216298 (and d!1689360 d!1689278)))

(declare-fun lambda!263792 () Int)

(assert (=> bs!1216298 (= lambda!263792 lambda!263775)))

(declare-fun bs!1216299 () Bool)

(assert (= bs!1216299 (and d!1689360 b!5242466)))

(assert (=> bs!1216299 (= lambda!263792 lambda!263729)))

(declare-fun bs!1216300 () Bool)

(assert (= bs!1216300 (and d!1689360 d!1689308)))

(assert (=> bs!1216300 (= lambda!263792 lambda!263787)))

(declare-fun bs!1216301 () Bool)

(assert (= bs!1216301 (and d!1689360 d!1689328)))

(assert (=> bs!1216301 (= lambda!263792 lambda!263790)))

(declare-fun bs!1216302 () Bool)

(assert (= bs!1216302 (and d!1689360 d!1689288)))

(assert (=> bs!1216302 (= lambda!263792 lambda!263778)))

(declare-fun bs!1216303 () Bool)

(assert (= bs!1216303 (and d!1689360 d!1689354)))

(assert (=> bs!1216303 (= lambda!263792 lambda!263791)))

(declare-fun b!5243294 () Bool)

(declare-fun e!3262382 () Bool)

(declare-fun e!3262385 () Bool)

(assert (=> b!5243294 (= e!3262382 e!3262385)))

(declare-fun c!906457 () Bool)

(assert (=> b!5243294 (= c!906457 (isEmpty!32643 (tail!10336 lt!2149119)))))

(declare-fun b!5243295 () Bool)

(declare-fun e!3262386 () Regex!14845)

(assert (=> b!5243295 (= e!3262386 (h!67159 lt!2149119))))

(declare-fun b!5243296 () Bool)

(declare-fun lt!2149244 () Regex!14845)

(assert (=> b!5243296 (= e!3262382 (isEmptyExpr!795 lt!2149244))))

(declare-fun b!5243298 () Bool)

(declare-fun e!3262381 () Bool)

(assert (=> b!5243298 (= e!3262381 e!3262382)))

(declare-fun c!906458 () Bool)

(assert (=> b!5243298 (= c!906458 (isEmpty!32643 lt!2149119))))

(declare-fun b!5243299 () Bool)

(declare-fun e!3262384 () Regex!14845)

(assert (=> b!5243299 (= e!3262386 e!3262384)))

(declare-fun c!906455 () Bool)

(assert (=> b!5243299 (= c!906455 ((_ is Cons!60711) lt!2149119))))

(declare-fun b!5243300 () Bool)

(assert (=> b!5243300 (= e!3262385 (= lt!2149244 (head!11239 lt!2149119)))))

(declare-fun b!5243301 () Bool)

(assert (=> b!5243301 (= e!3262384 EmptyExpr!14845)))

(declare-fun b!5243302 () Bool)

(assert (=> b!5243302 (= e!3262385 (isConcat!318 lt!2149244))))

(declare-fun b!5243303 () Bool)

(assert (=> b!5243303 (= e!3262384 (Concat!23690 (h!67159 lt!2149119) (generalisedConcat!514 (t!374016 lt!2149119))))))

(assert (=> d!1689360 e!3262381))

(declare-fun res!2225294 () Bool)

(assert (=> d!1689360 (=> (not res!2225294) (not e!3262381))))

(assert (=> d!1689360 (= res!2225294 (validRegex!6581 lt!2149244))))

(assert (=> d!1689360 (= lt!2149244 e!3262386)))

(declare-fun c!906456 () Bool)

(declare-fun e!3262383 () Bool)

(assert (=> d!1689360 (= c!906456 e!3262383)))

(declare-fun res!2225295 () Bool)

(assert (=> d!1689360 (=> (not res!2225295) (not e!3262383))))

(assert (=> d!1689360 (= res!2225295 ((_ is Cons!60711) lt!2149119))))

(assert (=> d!1689360 (forall!14269 lt!2149119 lambda!263792)))

(assert (=> d!1689360 (= (generalisedConcat!514 lt!2149119) lt!2149244)))

(declare-fun b!5243297 () Bool)

(assert (=> b!5243297 (= e!3262383 (isEmpty!32643 (t!374016 lt!2149119)))))

(assert (= (and d!1689360 res!2225295) b!5243297))

(assert (= (and d!1689360 c!906456) b!5243295))

(assert (= (and d!1689360 (not c!906456)) b!5243299))

(assert (= (and b!5243299 c!906455) b!5243303))

(assert (= (and b!5243299 (not c!906455)) b!5243301))

(assert (= (and d!1689360 res!2225294) b!5243298))

(assert (= (and b!5243298 c!906458) b!5243296))

(assert (= (and b!5243298 (not c!906458)) b!5243294))

(assert (= (and b!5243294 c!906457) b!5243300))

(assert (= (and b!5243294 (not c!906457)) b!5243302))

(declare-fun m!6287472 () Bool)

(assert (=> b!5243298 m!6287472))

(declare-fun m!6287474 () Bool)

(assert (=> b!5243296 m!6287474))

(declare-fun m!6287476 () Bool)

(assert (=> b!5243294 m!6287476))

(assert (=> b!5243294 m!6287476))

(declare-fun m!6287478 () Bool)

(assert (=> b!5243294 m!6287478))

(declare-fun m!6287480 () Bool)

(assert (=> d!1689360 m!6287480))

(declare-fun m!6287482 () Bool)

(assert (=> d!1689360 m!6287482))

(declare-fun m!6287484 () Bool)

(assert (=> b!5243300 m!6287484))

(declare-fun m!6287486 () Bool)

(assert (=> b!5243303 m!6287486))

(declare-fun m!6287488 () Bool)

(assert (=> b!5243302 m!6287488))

(declare-fun m!6287490 () Bool)

(assert (=> b!5243297 m!6287490))

(assert (=> b!5242462 d!1689360))

(declare-fun d!1689362 () Bool)

(assert (=> d!1689362 (= (matchR!7030 lt!2149111 s!2326) (matchRSpec!1948 lt!2149111 s!2326))))

(declare-fun lt!2149245 () Unit!152774)

(assert (=> d!1689362 (= lt!2149245 (choose!39047 lt!2149111 s!2326))))

(assert (=> d!1689362 (validRegex!6581 lt!2149111)))

(assert (=> d!1689362 (= (mainMatchTheorem!1948 lt!2149111 s!2326) lt!2149245)))

(declare-fun bs!1216304 () Bool)

(assert (= bs!1216304 d!1689362))

(assert (=> bs!1216304 m!6286762))

(assert (=> bs!1216304 m!6286764))

(declare-fun m!6287492 () Bool)

(assert (=> bs!1216304 m!6287492))

(declare-fun m!6287494 () Bool)

(assert (=> bs!1216304 m!6287494))

(assert (=> b!5242462 d!1689362))

(declare-fun bs!1216305 () Bool)

(declare-fun b!5243311 () Bool)

(assert (= bs!1216305 (and b!5243311 b!5242476)))

(declare-fun lambda!263793 () Int)

(assert (=> bs!1216305 (not (= lambda!263793 lambda!263726))))

(declare-fun bs!1216306 () Bool)

(assert (= bs!1216306 (and b!5243311 d!1689228)))

(assert (=> bs!1216306 (not (= lambda!263793 lambda!263770))))

(assert (=> bs!1216306 (not (= lambda!263793 lambda!263769))))

(declare-fun bs!1216307 () Bool)

(assert (= bs!1216307 (and b!5243311 b!5243160)))

(assert (=> bs!1216307 (not (= lambda!263793 lambda!263784))))

(declare-fun bs!1216308 () Bool)

(assert (= bs!1216308 (and b!5243311 b!5243162)))

(assert (=> bs!1216308 (= (and (= (reg!15174 lt!2149114) (reg!15174 r!7292)) (= lt!2149114 r!7292)) (= lambda!263793 lambda!263783))))

(declare-fun bs!1216309 () Bool)

(assert (= bs!1216309 (and b!5243311 d!1689210)))

(assert (=> bs!1216309 (not (= lambda!263793 lambda!263762))))

(assert (=> bs!1216305 (not (= lambda!263793 lambda!263727))))

(assert (=> b!5243311 true))

(assert (=> b!5243311 true))

(declare-fun bs!1216310 () Bool)

(declare-fun b!5243309 () Bool)

(assert (= bs!1216310 (and b!5243309 b!5243311)))

(declare-fun lambda!263794 () Int)

(assert (=> bs!1216310 (not (= lambda!263794 lambda!263793))))

(declare-fun bs!1216311 () Bool)

(assert (= bs!1216311 (and b!5243309 b!5242476)))

(assert (=> bs!1216311 (not (= lambda!263794 lambda!263726))))

(declare-fun bs!1216312 () Bool)

(assert (= bs!1216312 (and b!5243309 d!1689228)))

(assert (=> bs!1216312 (= (and (= (regOne!30202 lt!2149114) (regOne!30202 r!7292)) (= (regTwo!30202 lt!2149114) (regTwo!30202 r!7292))) (= lambda!263794 lambda!263770))))

(assert (=> bs!1216312 (not (= lambda!263794 lambda!263769))))

(declare-fun bs!1216313 () Bool)

(assert (= bs!1216313 (and b!5243309 b!5243160)))

(assert (=> bs!1216313 (= (and (= (regOne!30202 lt!2149114) (regOne!30202 r!7292)) (= (regTwo!30202 lt!2149114) (regTwo!30202 r!7292))) (= lambda!263794 lambda!263784))))

(declare-fun bs!1216314 () Bool)

(assert (= bs!1216314 (and b!5243309 b!5243162)))

(assert (=> bs!1216314 (not (= lambda!263794 lambda!263783))))

(declare-fun bs!1216315 () Bool)

(assert (= bs!1216315 (and b!5243309 d!1689210)))

(assert (=> bs!1216315 (not (= lambda!263794 lambda!263762))))

(assert (=> bs!1216311 (= (and (= (regOne!30202 lt!2149114) (regOne!30202 r!7292)) (= (regTwo!30202 lt!2149114) (regTwo!30202 r!7292))) (= lambda!263794 lambda!263727))))

(assert (=> b!5243309 true))

(assert (=> b!5243309 true))

(declare-fun b!5243304 () Bool)

(declare-fun e!3262388 () Bool)

(assert (=> b!5243304 (= e!3262388 (matchRSpec!1948 (regTwo!30203 lt!2149114) s!2326))))

(declare-fun bm!371233 () Bool)

(declare-fun call!371239 () Bool)

(declare-fun c!906459 () Bool)

(assert (=> bm!371233 (= call!371239 (Exists!2026 (ite c!906459 lambda!263793 lambda!263794)))))

(declare-fun b!5243305 () Bool)

(declare-fun e!3262391 () Bool)

(declare-fun e!3262389 () Bool)

(assert (=> b!5243305 (= e!3262391 e!3262389)))

(assert (=> b!5243305 (= c!906459 ((_ is Star!14845) lt!2149114))))

(declare-fun b!5243306 () Bool)

(declare-fun e!3262390 () Bool)

(assert (=> b!5243306 (= e!3262390 (= s!2326 (Cons!60710 (c!906205 lt!2149114) Nil!60710)))))

(declare-fun b!5243307 () Bool)

(declare-fun res!2225296 () Bool)

(declare-fun e!3262392 () Bool)

(assert (=> b!5243307 (=> res!2225296 e!3262392)))

(declare-fun call!371238 () Bool)

(assert (=> b!5243307 (= res!2225296 call!371238)))

(assert (=> b!5243307 (= e!3262389 e!3262392)))

(declare-fun d!1689364 () Bool)

(declare-fun c!906461 () Bool)

(assert (=> d!1689364 (= c!906461 ((_ is EmptyExpr!14845) lt!2149114))))

(declare-fun e!3262387 () Bool)

(assert (=> d!1689364 (= (matchRSpec!1948 lt!2149114 s!2326) e!3262387)))

(declare-fun b!5243308 () Bool)

(assert (=> b!5243308 (= e!3262387 call!371238)))

(assert (=> b!5243309 (= e!3262389 call!371239)))

(declare-fun b!5243310 () Bool)

(declare-fun c!906462 () Bool)

(assert (=> b!5243310 (= c!906462 ((_ is Union!14845) lt!2149114))))

(assert (=> b!5243310 (= e!3262390 e!3262391)))

(assert (=> b!5243311 (= e!3262392 call!371239)))

(declare-fun b!5243312 () Bool)

(declare-fun c!906460 () Bool)

(assert (=> b!5243312 (= c!906460 ((_ is ElementMatch!14845) lt!2149114))))

(declare-fun e!3262393 () Bool)

(assert (=> b!5243312 (= e!3262393 e!3262390)))

(declare-fun b!5243313 () Bool)

(assert (=> b!5243313 (= e!3262387 e!3262393)))

(declare-fun res!2225297 () Bool)

(assert (=> b!5243313 (= res!2225297 (not ((_ is EmptyLang!14845) lt!2149114)))))

(assert (=> b!5243313 (=> (not res!2225297) (not e!3262393))))

(declare-fun bm!371234 () Bool)

(assert (=> bm!371234 (= call!371238 (isEmpty!32648 s!2326))))

(declare-fun b!5243314 () Bool)

(assert (=> b!5243314 (= e!3262391 e!3262388)))

(declare-fun res!2225298 () Bool)

(assert (=> b!5243314 (= res!2225298 (matchRSpec!1948 (regOne!30203 lt!2149114) s!2326))))

(assert (=> b!5243314 (=> res!2225298 e!3262388)))

(assert (= (and d!1689364 c!906461) b!5243308))

(assert (= (and d!1689364 (not c!906461)) b!5243313))

(assert (= (and b!5243313 res!2225297) b!5243312))

(assert (= (and b!5243312 c!906460) b!5243306))

(assert (= (and b!5243312 (not c!906460)) b!5243310))

(assert (= (and b!5243310 c!906462) b!5243314))

(assert (= (and b!5243310 (not c!906462)) b!5243305))

(assert (= (and b!5243314 (not res!2225298)) b!5243304))

(assert (= (and b!5243305 c!906459) b!5243307))

(assert (= (and b!5243305 (not c!906459)) b!5243309))

(assert (= (and b!5243307 (not res!2225296)) b!5243311))

(assert (= (or b!5243311 b!5243309) bm!371233))

(assert (= (or b!5243308 b!5243307) bm!371234))

(declare-fun m!6287496 () Bool)

(assert (=> b!5243304 m!6287496))

(declare-fun m!6287498 () Bool)

(assert (=> bm!371233 m!6287498))

(assert (=> bm!371234 m!6287330))

(declare-fun m!6287500 () Bool)

(assert (=> b!5243314 m!6287500))

(assert (=> b!5242462 d!1689364))

(assert (=> b!5242462 d!1689352))

(declare-fun d!1689366 () Bool)

(assert (=> d!1689366 (= (matchR!7030 lt!2149111 s!2326) (matchZipper!1089 lt!2149118 s!2326))))

(declare-fun lt!2149248 () Unit!152774)

(declare-fun choose!39048 ((InoxSet Context!8458) List!60836 Regex!14845 List!60834) Unit!152774)

(assert (=> d!1689366 (= lt!2149248 (choose!39048 lt!2149118 lt!2149121 lt!2149111 s!2326))))

(assert (=> d!1689366 (validRegex!6581 lt!2149111)))

(assert (=> d!1689366 (= (theoremZipperRegexEquiv!279 lt!2149118 lt!2149121 lt!2149111 s!2326) lt!2149248)))

(declare-fun bs!1216316 () Bool)

(assert (= bs!1216316 d!1689366))

(assert (=> bs!1216316 m!6286762))

(assert (=> bs!1216316 m!6286702))

(declare-fun m!6287502 () Bool)

(assert (=> bs!1216316 m!6287502))

(assert (=> bs!1216316 m!6287494))

(assert (=> b!5242462 d!1689366))

(declare-fun bs!1216317 () Bool)

(declare-fun d!1689368 () Bool)

(assert (= bs!1216317 (and d!1689368 d!1689278)))

(declare-fun lambda!263795 () Int)

(assert (=> bs!1216317 (= lambda!263795 lambda!263775)))

(declare-fun bs!1216318 () Bool)

(assert (= bs!1216318 (and d!1689368 d!1689360)))

(assert (=> bs!1216318 (= lambda!263795 lambda!263792)))

(declare-fun bs!1216319 () Bool)

(assert (= bs!1216319 (and d!1689368 b!5242466)))

(assert (=> bs!1216319 (= lambda!263795 lambda!263729)))

(declare-fun bs!1216320 () Bool)

(assert (= bs!1216320 (and d!1689368 d!1689308)))

(assert (=> bs!1216320 (= lambda!263795 lambda!263787)))

(declare-fun bs!1216321 () Bool)

(assert (= bs!1216321 (and d!1689368 d!1689328)))

(assert (=> bs!1216321 (= lambda!263795 lambda!263790)))

(declare-fun bs!1216322 () Bool)

(assert (= bs!1216322 (and d!1689368 d!1689288)))

(assert (=> bs!1216322 (= lambda!263795 lambda!263778)))

(declare-fun bs!1216323 () Bool)

(assert (= bs!1216323 (and d!1689368 d!1689354)))

(assert (=> bs!1216323 (= lambda!263795 lambda!263791)))

(declare-fun b!5243315 () Bool)

(declare-fun e!3262395 () Bool)

(declare-fun e!3262398 () Bool)

(assert (=> b!5243315 (= e!3262395 e!3262398)))

(declare-fun c!906465 () Bool)

(assert (=> b!5243315 (= c!906465 (isEmpty!32643 (tail!10336 lt!2149104)))))

(declare-fun b!5243316 () Bool)

(declare-fun e!3262399 () Regex!14845)

(assert (=> b!5243316 (= e!3262399 (h!67159 lt!2149104))))

(declare-fun b!5243317 () Bool)

(declare-fun lt!2149249 () Regex!14845)

(assert (=> b!5243317 (= e!3262395 (isEmptyExpr!795 lt!2149249))))

(declare-fun b!5243319 () Bool)

(declare-fun e!3262394 () Bool)

(assert (=> b!5243319 (= e!3262394 e!3262395)))

(declare-fun c!906466 () Bool)

(assert (=> b!5243319 (= c!906466 (isEmpty!32643 lt!2149104))))

(declare-fun b!5243320 () Bool)

(declare-fun e!3262397 () Regex!14845)

(assert (=> b!5243320 (= e!3262399 e!3262397)))

(declare-fun c!906463 () Bool)

(assert (=> b!5243320 (= c!906463 ((_ is Cons!60711) lt!2149104))))

(declare-fun b!5243321 () Bool)

(assert (=> b!5243321 (= e!3262398 (= lt!2149249 (head!11239 lt!2149104)))))

(declare-fun b!5243322 () Bool)

(assert (=> b!5243322 (= e!3262397 EmptyExpr!14845)))

(declare-fun b!5243323 () Bool)

(assert (=> b!5243323 (= e!3262398 (isConcat!318 lt!2149249))))

(declare-fun b!5243324 () Bool)

(assert (=> b!5243324 (= e!3262397 (Concat!23690 (h!67159 lt!2149104) (generalisedConcat!514 (t!374016 lt!2149104))))))

(assert (=> d!1689368 e!3262394))

(declare-fun res!2225299 () Bool)

(assert (=> d!1689368 (=> (not res!2225299) (not e!3262394))))

(assert (=> d!1689368 (= res!2225299 (validRegex!6581 lt!2149249))))

(assert (=> d!1689368 (= lt!2149249 e!3262399)))

(declare-fun c!906464 () Bool)

(declare-fun e!3262396 () Bool)

(assert (=> d!1689368 (= c!906464 e!3262396)))

(declare-fun res!2225300 () Bool)

(assert (=> d!1689368 (=> (not res!2225300) (not e!3262396))))

(assert (=> d!1689368 (= res!2225300 ((_ is Cons!60711) lt!2149104))))

(assert (=> d!1689368 (forall!14269 lt!2149104 lambda!263795)))

(assert (=> d!1689368 (= (generalisedConcat!514 lt!2149104) lt!2149249)))

(declare-fun b!5243318 () Bool)

(assert (=> b!5243318 (= e!3262396 (isEmpty!32643 (t!374016 lt!2149104)))))

(assert (= (and d!1689368 res!2225300) b!5243318))

(assert (= (and d!1689368 c!906464) b!5243316))

(assert (= (and d!1689368 (not c!906464)) b!5243320))

(assert (= (and b!5243320 c!906463) b!5243324))

(assert (= (and b!5243320 (not c!906463)) b!5243322))

(assert (= (and d!1689368 res!2225299) b!5243319))

(assert (= (and b!5243319 c!906466) b!5243317))

(assert (= (and b!5243319 (not c!906466)) b!5243315))

(assert (= (and b!5243315 c!906465) b!5243321))

(assert (= (and b!5243315 (not c!906465)) b!5243323))

(declare-fun m!6287504 () Bool)

(assert (=> b!5243319 m!6287504))

(declare-fun m!6287506 () Bool)

(assert (=> b!5243317 m!6287506))

(declare-fun m!6287508 () Bool)

(assert (=> b!5243315 m!6287508))

(assert (=> b!5243315 m!6287508))

(declare-fun m!6287510 () Bool)

(assert (=> b!5243315 m!6287510))

(declare-fun m!6287512 () Bool)

(assert (=> d!1689368 m!6287512))

(declare-fun m!6287514 () Bool)

(assert (=> d!1689368 m!6287514))

(declare-fun m!6287516 () Bool)

(assert (=> b!5243321 m!6287516))

(declare-fun m!6287518 () Bool)

(assert (=> b!5243324 m!6287518))

(declare-fun m!6287520 () Bool)

(assert (=> b!5243323 m!6287520))

(declare-fun m!6287522 () Bool)

(assert (=> b!5243318 m!6287522))

(assert (=> b!5242462 d!1689368))

(declare-fun d!1689370 () Bool)

(assert (=> d!1689370 (= (matchR!7030 lt!2149114 s!2326) (matchRSpec!1948 lt!2149114 s!2326))))

(declare-fun lt!2149250 () Unit!152774)

(assert (=> d!1689370 (= lt!2149250 (choose!39047 lt!2149114 s!2326))))

(assert (=> d!1689370 (validRegex!6581 lt!2149114)))

(assert (=> d!1689370 (= (mainMatchTheorem!1948 lt!2149114 s!2326) lt!2149250)))

(declare-fun bs!1216324 () Bool)

(assert (= bs!1216324 d!1689370))

(assert (=> bs!1216324 m!6286756))

(assert (=> bs!1216324 m!6286766))

(declare-fun m!6287524 () Bool)

(assert (=> bs!1216324 m!6287524))

(declare-fun m!6287526 () Bool)

(assert (=> bs!1216324 m!6287526))

(assert (=> b!5242462 d!1689370))

(declare-fun bs!1216325 () Bool)

(declare-fun b!5243332 () Bool)

(assert (= bs!1216325 (and b!5243332 b!5243311)))

(declare-fun lambda!263796 () Int)

(assert (=> bs!1216325 (= (and (= (reg!15174 lt!2149111) (reg!15174 lt!2149114)) (= lt!2149111 lt!2149114)) (= lambda!263796 lambda!263793))))

(declare-fun bs!1216326 () Bool)

(assert (= bs!1216326 (and b!5243332 b!5242476)))

(assert (=> bs!1216326 (not (= lambda!263796 lambda!263726))))

(declare-fun bs!1216327 () Bool)

(assert (= bs!1216327 (and b!5243332 d!1689228)))

(assert (=> bs!1216327 (not (= lambda!263796 lambda!263770))))

(assert (=> bs!1216327 (not (= lambda!263796 lambda!263769))))

(declare-fun bs!1216328 () Bool)

(assert (= bs!1216328 (and b!5243332 b!5243160)))

(assert (=> bs!1216328 (not (= lambda!263796 lambda!263784))))

(declare-fun bs!1216329 () Bool)

(assert (= bs!1216329 (and b!5243332 b!5243162)))

(assert (=> bs!1216329 (= (and (= (reg!15174 lt!2149111) (reg!15174 r!7292)) (= lt!2149111 r!7292)) (= lambda!263796 lambda!263783))))

(declare-fun bs!1216330 () Bool)

(assert (= bs!1216330 (and b!5243332 d!1689210)))

(assert (=> bs!1216330 (not (= lambda!263796 lambda!263762))))

(declare-fun bs!1216331 () Bool)

(assert (= bs!1216331 (and b!5243332 b!5243309)))

(assert (=> bs!1216331 (not (= lambda!263796 lambda!263794))))

(assert (=> bs!1216326 (not (= lambda!263796 lambda!263727))))

(assert (=> b!5243332 true))

(assert (=> b!5243332 true))

(declare-fun bs!1216332 () Bool)

(declare-fun b!5243330 () Bool)

(assert (= bs!1216332 (and b!5243330 b!5243311)))

(declare-fun lambda!263797 () Int)

(assert (=> bs!1216332 (not (= lambda!263797 lambda!263793))))

(declare-fun bs!1216333 () Bool)

(assert (= bs!1216333 (and b!5243330 b!5242476)))

(assert (=> bs!1216333 (not (= lambda!263797 lambda!263726))))

(declare-fun bs!1216334 () Bool)

(assert (= bs!1216334 (and b!5243330 b!5243332)))

(assert (=> bs!1216334 (not (= lambda!263797 lambda!263796))))

(declare-fun bs!1216335 () Bool)

(assert (= bs!1216335 (and b!5243330 d!1689228)))

(assert (=> bs!1216335 (= (and (= (regOne!30202 lt!2149111) (regOne!30202 r!7292)) (= (regTwo!30202 lt!2149111) (regTwo!30202 r!7292))) (= lambda!263797 lambda!263770))))

(assert (=> bs!1216335 (not (= lambda!263797 lambda!263769))))

(declare-fun bs!1216336 () Bool)

(assert (= bs!1216336 (and b!5243330 b!5243160)))

(assert (=> bs!1216336 (= (and (= (regOne!30202 lt!2149111) (regOne!30202 r!7292)) (= (regTwo!30202 lt!2149111) (regTwo!30202 r!7292))) (= lambda!263797 lambda!263784))))

(declare-fun bs!1216337 () Bool)

(assert (= bs!1216337 (and b!5243330 b!5243162)))

(assert (=> bs!1216337 (not (= lambda!263797 lambda!263783))))

(declare-fun bs!1216338 () Bool)

(assert (= bs!1216338 (and b!5243330 d!1689210)))

(assert (=> bs!1216338 (not (= lambda!263797 lambda!263762))))

(declare-fun bs!1216339 () Bool)

(assert (= bs!1216339 (and b!5243330 b!5243309)))

(assert (=> bs!1216339 (= (and (= (regOne!30202 lt!2149111) (regOne!30202 lt!2149114)) (= (regTwo!30202 lt!2149111) (regTwo!30202 lt!2149114))) (= lambda!263797 lambda!263794))))

(assert (=> bs!1216333 (= (and (= (regOne!30202 lt!2149111) (regOne!30202 r!7292)) (= (regTwo!30202 lt!2149111) (regTwo!30202 r!7292))) (= lambda!263797 lambda!263727))))

(assert (=> b!5243330 true))

(assert (=> b!5243330 true))

(declare-fun b!5243325 () Bool)

(declare-fun e!3262401 () Bool)

(assert (=> b!5243325 (= e!3262401 (matchRSpec!1948 (regTwo!30203 lt!2149111) s!2326))))

(declare-fun c!906467 () Bool)

(declare-fun call!371241 () Bool)

(declare-fun bm!371235 () Bool)

(assert (=> bm!371235 (= call!371241 (Exists!2026 (ite c!906467 lambda!263796 lambda!263797)))))

(declare-fun b!5243326 () Bool)

(declare-fun e!3262404 () Bool)

(declare-fun e!3262402 () Bool)

(assert (=> b!5243326 (= e!3262404 e!3262402)))

(assert (=> b!5243326 (= c!906467 ((_ is Star!14845) lt!2149111))))

(declare-fun b!5243327 () Bool)

(declare-fun e!3262403 () Bool)

(assert (=> b!5243327 (= e!3262403 (= s!2326 (Cons!60710 (c!906205 lt!2149111) Nil!60710)))))

(declare-fun b!5243328 () Bool)

(declare-fun res!2225301 () Bool)

(declare-fun e!3262405 () Bool)

(assert (=> b!5243328 (=> res!2225301 e!3262405)))

(declare-fun call!371240 () Bool)

(assert (=> b!5243328 (= res!2225301 call!371240)))

(assert (=> b!5243328 (= e!3262402 e!3262405)))

(declare-fun d!1689372 () Bool)

(declare-fun c!906469 () Bool)

(assert (=> d!1689372 (= c!906469 ((_ is EmptyExpr!14845) lt!2149111))))

(declare-fun e!3262400 () Bool)

(assert (=> d!1689372 (= (matchRSpec!1948 lt!2149111 s!2326) e!3262400)))

(declare-fun b!5243329 () Bool)

(assert (=> b!5243329 (= e!3262400 call!371240)))

(assert (=> b!5243330 (= e!3262402 call!371241)))

(declare-fun b!5243331 () Bool)

(declare-fun c!906470 () Bool)

(assert (=> b!5243331 (= c!906470 ((_ is Union!14845) lt!2149111))))

(assert (=> b!5243331 (= e!3262403 e!3262404)))

(assert (=> b!5243332 (= e!3262405 call!371241)))

(declare-fun b!5243333 () Bool)

(declare-fun c!906468 () Bool)

(assert (=> b!5243333 (= c!906468 ((_ is ElementMatch!14845) lt!2149111))))

(declare-fun e!3262406 () Bool)

(assert (=> b!5243333 (= e!3262406 e!3262403)))

(declare-fun b!5243334 () Bool)

(assert (=> b!5243334 (= e!3262400 e!3262406)))

(declare-fun res!2225302 () Bool)

(assert (=> b!5243334 (= res!2225302 (not ((_ is EmptyLang!14845) lt!2149111)))))

(assert (=> b!5243334 (=> (not res!2225302) (not e!3262406))))

(declare-fun bm!371236 () Bool)

(assert (=> bm!371236 (= call!371240 (isEmpty!32648 s!2326))))

(declare-fun b!5243335 () Bool)

(assert (=> b!5243335 (= e!3262404 e!3262401)))

(declare-fun res!2225303 () Bool)

(assert (=> b!5243335 (= res!2225303 (matchRSpec!1948 (regOne!30203 lt!2149111) s!2326))))

(assert (=> b!5243335 (=> res!2225303 e!3262401)))

(assert (= (and d!1689372 c!906469) b!5243329))

(assert (= (and d!1689372 (not c!906469)) b!5243334))

(assert (= (and b!5243334 res!2225302) b!5243333))

(assert (= (and b!5243333 c!906468) b!5243327))

(assert (= (and b!5243333 (not c!906468)) b!5243331))

(assert (= (and b!5243331 c!906470) b!5243335))

(assert (= (and b!5243331 (not c!906470)) b!5243326))

(assert (= (and b!5243335 (not res!2225303)) b!5243325))

(assert (= (and b!5243326 c!906467) b!5243328))

(assert (= (and b!5243326 (not c!906467)) b!5243330))

(assert (= (and b!5243328 (not res!2225301)) b!5243332))

(assert (= (or b!5243332 b!5243330) bm!371235))

(assert (= (or b!5243329 b!5243328) bm!371236))

(declare-fun m!6287528 () Bool)

(assert (=> b!5243325 m!6287528))

(declare-fun m!6287530 () Bool)

(assert (=> bm!371235 m!6287530))

(assert (=> bm!371236 m!6287330))

(declare-fun m!6287532 () Bool)

(assert (=> b!5243335 m!6287532))

(assert (=> b!5242462 d!1689372))

(declare-fun b!5243336 () Bool)

(declare-fun e!3262407 () Bool)

(declare-fun lt!2149251 () Bool)

(declare-fun call!371242 () Bool)

(assert (=> b!5243336 (= e!3262407 (= lt!2149251 call!371242))))

(declare-fun b!5243337 () Bool)

(declare-fun e!3262408 () Bool)

(assert (=> b!5243337 (= e!3262408 (not (= (head!11238 s!2326) (c!906205 lt!2149111))))))

(declare-fun b!5243338 () Bool)

(declare-fun res!2225307 () Bool)

(assert (=> b!5243338 (=> res!2225307 e!3262408)))

(assert (=> b!5243338 (= res!2225307 (not (isEmpty!32648 (tail!10335 s!2326))))))

(declare-fun b!5243339 () Bool)

(declare-fun e!3262410 () Bool)

(assert (=> b!5243339 (= e!3262410 (matchR!7030 (derivativeStep!4081 lt!2149111 (head!11238 s!2326)) (tail!10335 s!2326)))))

(declare-fun b!5243340 () Bool)

(assert (=> b!5243340 (= e!3262410 (nullable!5014 lt!2149111))))

(declare-fun b!5243341 () Bool)

(declare-fun res!2225308 () Bool)

(declare-fun e!3262409 () Bool)

(assert (=> b!5243341 (=> (not res!2225308) (not e!3262409))))

(assert (=> b!5243341 (= res!2225308 (not call!371242))))

(declare-fun d!1689374 () Bool)

(assert (=> d!1689374 e!3262407))

(declare-fun c!906472 () Bool)

(assert (=> d!1689374 (= c!906472 ((_ is EmptyExpr!14845) lt!2149111))))

(assert (=> d!1689374 (= lt!2149251 e!3262410)))

(declare-fun c!906471 () Bool)

(assert (=> d!1689374 (= c!906471 (isEmpty!32648 s!2326))))

(assert (=> d!1689374 (validRegex!6581 lt!2149111)))

(assert (=> d!1689374 (= (matchR!7030 lt!2149111 s!2326) lt!2149251)))

(declare-fun b!5243342 () Bool)

(declare-fun e!3262412 () Bool)

(assert (=> b!5243342 (= e!3262412 e!3262408)))

(declare-fun res!2225304 () Bool)

(assert (=> b!5243342 (=> res!2225304 e!3262408)))

(assert (=> b!5243342 (= res!2225304 call!371242)))

(declare-fun b!5243343 () Bool)

(declare-fun res!2225309 () Bool)

(declare-fun e!3262413 () Bool)

(assert (=> b!5243343 (=> res!2225309 e!3262413)))

(assert (=> b!5243343 (= res!2225309 (not ((_ is ElementMatch!14845) lt!2149111)))))

(declare-fun e!3262411 () Bool)

(assert (=> b!5243343 (= e!3262411 e!3262413)))

(declare-fun bm!371237 () Bool)

(assert (=> bm!371237 (= call!371242 (isEmpty!32648 s!2326))))

(declare-fun b!5243344 () Bool)

(assert (=> b!5243344 (= e!3262413 e!3262412)))

(declare-fun res!2225305 () Bool)

(assert (=> b!5243344 (=> (not res!2225305) (not e!3262412))))

(assert (=> b!5243344 (= res!2225305 (not lt!2149251))))

(declare-fun b!5243345 () Bool)

(assert (=> b!5243345 (= e!3262411 (not lt!2149251))))

(declare-fun b!5243346 () Bool)

(declare-fun res!2225310 () Bool)

(assert (=> b!5243346 (=> (not res!2225310) (not e!3262409))))

(assert (=> b!5243346 (= res!2225310 (isEmpty!32648 (tail!10335 s!2326)))))

(declare-fun b!5243347 () Bool)

(declare-fun res!2225306 () Bool)

(assert (=> b!5243347 (=> res!2225306 e!3262413)))

(assert (=> b!5243347 (= res!2225306 e!3262409)))

(declare-fun res!2225311 () Bool)

(assert (=> b!5243347 (=> (not res!2225311) (not e!3262409))))

(assert (=> b!5243347 (= res!2225311 lt!2149251)))

(declare-fun b!5243348 () Bool)

(assert (=> b!5243348 (= e!3262409 (= (head!11238 s!2326) (c!906205 lt!2149111)))))

(declare-fun b!5243349 () Bool)

(assert (=> b!5243349 (= e!3262407 e!3262411)))

(declare-fun c!906473 () Bool)

(assert (=> b!5243349 (= c!906473 ((_ is EmptyLang!14845) lt!2149111))))

(assert (= (and d!1689374 c!906471) b!5243340))

(assert (= (and d!1689374 (not c!906471)) b!5243339))

(assert (= (and d!1689374 c!906472) b!5243336))

(assert (= (and d!1689374 (not c!906472)) b!5243349))

(assert (= (and b!5243349 c!906473) b!5243345))

(assert (= (and b!5243349 (not c!906473)) b!5243343))

(assert (= (and b!5243343 (not res!2225309)) b!5243347))

(assert (= (and b!5243347 res!2225311) b!5243341))

(assert (= (and b!5243341 res!2225308) b!5243346))

(assert (= (and b!5243346 res!2225310) b!5243348))

(assert (= (and b!5243347 (not res!2225306)) b!5243344))

(assert (= (and b!5243344 res!2225305) b!5243342))

(assert (= (and b!5243342 (not res!2225304)) b!5243338))

(assert (= (and b!5243338 (not res!2225307)) b!5243337))

(assert (= (or b!5243336 b!5243341 b!5243342) bm!371237))

(assert (=> b!5243346 m!6287334))

(assert (=> b!5243346 m!6287334))

(assert (=> b!5243346 m!6287336))

(assert (=> d!1689374 m!6287330))

(assert (=> d!1689374 m!6287494))

(assert (=> b!5243339 m!6287338))

(assert (=> b!5243339 m!6287338))

(declare-fun m!6287534 () Bool)

(assert (=> b!5243339 m!6287534))

(assert (=> b!5243339 m!6287334))

(assert (=> b!5243339 m!6287534))

(assert (=> b!5243339 m!6287334))

(declare-fun m!6287536 () Bool)

(assert (=> b!5243339 m!6287536))

(assert (=> b!5243348 m!6287338))

(assert (=> b!5243338 m!6287334))

(assert (=> b!5243338 m!6287334))

(assert (=> b!5243338 m!6287336))

(assert (=> bm!371237 m!6287330))

(assert (=> b!5243337 m!6287338))

(declare-fun m!6287538 () Bool)

(assert (=> b!5243340 m!6287538))

(assert (=> b!5242462 d!1689374))

(declare-fun b!5243350 () Bool)

(declare-fun e!3262414 () Bool)

(declare-fun lt!2149252 () Bool)

(declare-fun call!371243 () Bool)

(assert (=> b!5243350 (= e!3262414 (= lt!2149252 call!371243))))

(declare-fun b!5243351 () Bool)

(declare-fun e!3262415 () Bool)

(assert (=> b!5243351 (= e!3262415 (not (= (head!11238 s!2326) (c!906205 lt!2149114))))))

(declare-fun b!5243352 () Bool)

(declare-fun res!2225315 () Bool)

(assert (=> b!5243352 (=> res!2225315 e!3262415)))

(assert (=> b!5243352 (= res!2225315 (not (isEmpty!32648 (tail!10335 s!2326))))))

(declare-fun b!5243353 () Bool)

(declare-fun e!3262417 () Bool)

(assert (=> b!5243353 (= e!3262417 (matchR!7030 (derivativeStep!4081 lt!2149114 (head!11238 s!2326)) (tail!10335 s!2326)))))

(declare-fun b!5243354 () Bool)

(assert (=> b!5243354 (= e!3262417 (nullable!5014 lt!2149114))))

(declare-fun b!5243355 () Bool)

(declare-fun res!2225316 () Bool)

(declare-fun e!3262416 () Bool)

(assert (=> b!5243355 (=> (not res!2225316) (not e!3262416))))

(assert (=> b!5243355 (= res!2225316 (not call!371243))))

(declare-fun d!1689376 () Bool)

(assert (=> d!1689376 e!3262414))

(declare-fun c!906475 () Bool)

(assert (=> d!1689376 (= c!906475 ((_ is EmptyExpr!14845) lt!2149114))))

(assert (=> d!1689376 (= lt!2149252 e!3262417)))

(declare-fun c!906474 () Bool)

(assert (=> d!1689376 (= c!906474 (isEmpty!32648 s!2326))))

(assert (=> d!1689376 (validRegex!6581 lt!2149114)))

(assert (=> d!1689376 (= (matchR!7030 lt!2149114 s!2326) lt!2149252)))

(declare-fun b!5243356 () Bool)

(declare-fun e!3262419 () Bool)

(assert (=> b!5243356 (= e!3262419 e!3262415)))

(declare-fun res!2225312 () Bool)

(assert (=> b!5243356 (=> res!2225312 e!3262415)))

(assert (=> b!5243356 (= res!2225312 call!371243)))

(declare-fun b!5243357 () Bool)

(declare-fun res!2225317 () Bool)

(declare-fun e!3262420 () Bool)

(assert (=> b!5243357 (=> res!2225317 e!3262420)))

(assert (=> b!5243357 (= res!2225317 (not ((_ is ElementMatch!14845) lt!2149114)))))

(declare-fun e!3262418 () Bool)

(assert (=> b!5243357 (= e!3262418 e!3262420)))

(declare-fun bm!371238 () Bool)

(assert (=> bm!371238 (= call!371243 (isEmpty!32648 s!2326))))

(declare-fun b!5243358 () Bool)

(assert (=> b!5243358 (= e!3262420 e!3262419)))

(declare-fun res!2225313 () Bool)

(assert (=> b!5243358 (=> (not res!2225313) (not e!3262419))))

(assert (=> b!5243358 (= res!2225313 (not lt!2149252))))

(declare-fun b!5243359 () Bool)

(assert (=> b!5243359 (= e!3262418 (not lt!2149252))))

(declare-fun b!5243360 () Bool)

(declare-fun res!2225318 () Bool)

(assert (=> b!5243360 (=> (not res!2225318) (not e!3262416))))

(assert (=> b!5243360 (= res!2225318 (isEmpty!32648 (tail!10335 s!2326)))))

(declare-fun b!5243361 () Bool)

(declare-fun res!2225314 () Bool)

(assert (=> b!5243361 (=> res!2225314 e!3262420)))

(assert (=> b!5243361 (= res!2225314 e!3262416)))

(declare-fun res!2225319 () Bool)

(assert (=> b!5243361 (=> (not res!2225319) (not e!3262416))))

(assert (=> b!5243361 (= res!2225319 lt!2149252)))

(declare-fun b!5243362 () Bool)

(assert (=> b!5243362 (= e!3262416 (= (head!11238 s!2326) (c!906205 lt!2149114)))))

(declare-fun b!5243363 () Bool)

(assert (=> b!5243363 (= e!3262414 e!3262418)))

(declare-fun c!906476 () Bool)

(assert (=> b!5243363 (= c!906476 ((_ is EmptyLang!14845) lt!2149114))))

(assert (= (and d!1689376 c!906474) b!5243354))

(assert (= (and d!1689376 (not c!906474)) b!5243353))

(assert (= (and d!1689376 c!906475) b!5243350))

(assert (= (and d!1689376 (not c!906475)) b!5243363))

(assert (= (and b!5243363 c!906476) b!5243359))

(assert (= (and b!5243363 (not c!906476)) b!5243357))

(assert (= (and b!5243357 (not res!2225317)) b!5243361))

(assert (= (and b!5243361 res!2225319) b!5243355))

(assert (= (and b!5243355 res!2225316) b!5243360))

(assert (= (and b!5243360 res!2225318) b!5243362))

(assert (= (and b!5243361 (not res!2225314)) b!5243358))

(assert (= (and b!5243358 res!2225313) b!5243356))

(assert (= (and b!5243356 (not res!2225312)) b!5243352))

(assert (= (and b!5243352 (not res!2225315)) b!5243351))

(assert (= (or b!5243350 b!5243355 b!5243356) bm!371238))

(assert (=> b!5243360 m!6287334))

(assert (=> b!5243360 m!6287334))

(assert (=> b!5243360 m!6287336))

(assert (=> d!1689376 m!6287330))

(assert (=> d!1689376 m!6287526))

(assert (=> b!5243353 m!6287338))

(assert (=> b!5243353 m!6287338))

(declare-fun m!6287540 () Bool)

(assert (=> b!5243353 m!6287540))

(assert (=> b!5243353 m!6287334))

(assert (=> b!5243353 m!6287540))

(assert (=> b!5243353 m!6287334))

(declare-fun m!6287542 () Bool)

(assert (=> b!5243353 m!6287542))

(assert (=> b!5243362 m!6287338))

(assert (=> b!5243352 m!6287334))

(assert (=> b!5243352 m!6287334))

(assert (=> b!5243352 m!6287336))

(assert (=> bm!371238 m!6287330))

(assert (=> b!5243351 m!6287338))

(declare-fun m!6287544 () Bool)

(assert (=> b!5243354 m!6287544))

(assert (=> b!5242462 d!1689376))

(declare-fun d!1689378 () Bool)

(assert (=> d!1689378 (= (matchR!7030 lt!2149114 s!2326) (matchZipper!1089 lt!2149099 s!2326))))

(declare-fun lt!2149253 () Unit!152774)

(assert (=> d!1689378 (= lt!2149253 (choose!39048 lt!2149099 lt!2149128 lt!2149114 s!2326))))

(assert (=> d!1689378 (validRegex!6581 lt!2149114)))

(assert (=> d!1689378 (= (theoremZipperRegexEquiv!279 lt!2149099 lt!2149128 lt!2149114 s!2326) lt!2149253)))

(declare-fun bs!1216340 () Bool)

(assert (= bs!1216340 d!1689378))

(assert (=> bs!1216340 m!6286756))

(assert (=> bs!1216340 m!6286754))

(declare-fun m!6287546 () Bool)

(assert (=> bs!1216340 m!6287546))

(assert (=> bs!1216340 m!6287526))

(assert (=> b!5242462 d!1689378))

(assert (=> b!5242443 d!1689290))

(declare-fun b!5243382 () Bool)

(declare-fun e!3262440 () Bool)

(declare-fun call!371251 () Bool)

(assert (=> b!5243382 (= e!3262440 call!371251)))

(declare-fun b!5243383 () Bool)

(declare-fun e!3262435 () Bool)

(declare-fun e!3262441 () Bool)

(assert (=> b!5243383 (= e!3262435 e!3262441)))

(declare-fun res!2225333 () Bool)

(assert (=> b!5243383 (=> (not res!2225333) (not e!3262441))))

(declare-fun call!371252 () Bool)

(assert (=> b!5243383 (= res!2225333 call!371252)))

(declare-fun b!5243384 () Bool)

(declare-fun e!3262438 () Bool)

(declare-fun e!3262436 () Bool)

(assert (=> b!5243384 (= e!3262438 e!3262436)))

(declare-fun c!906481 () Bool)

(assert (=> b!5243384 (= c!906481 ((_ is Star!14845) r!7292))))

(declare-fun c!906482 () Bool)

(declare-fun call!371250 () Bool)

(declare-fun bm!371245 () Bool)

(assert (=> bm!371245 (= call!371250 (validRegex!6581 (ite c!906481 (reg!15174 r!7292) (ite c!906482 (regTwo!30203 r!7292) (regTwo!30202 r!7292)))))))

(declare-fun bm!371246 () Bool)

(assert (=> bm!371246 (= call!371251 call!371250)))

(declare-fun b!5243386 () Bool)

(declare-fun res!2225334 () Bool)

(assert (=> b!5243386 (=> (not res!2225334) (not e!3262440))))

(assert (=> b!5243386 (= res!2225334 call!371252)))

(declare-fun e!3262437 () Bool)

(assert (=> b!5243386 (= e!3262437 e!3262440)))

(declare-fun b!5243387 () Bool)

(assert (=> b!5243387 (= e!3262436 e!3262437)))

(assert (=> b!5243387 (= c!906482 ((_ is Union!14845) r!7292))))

(declare-fun b!5243385 () Bool)

(declare-fun e!3262439 () Bool)

(assert (=> b!5243385 (= e!3262439 call!371250)))

(declare-fun d!1689380 () Bool)

(declare-fun res!2225332 () Bool)

(assert (=> d!1689380 (=> res!2225332 e!3262438)))

(assert (=> d!1689380 (= res!2225332 ((_ is ElementMatch!14845) r!7292))))

(assert (=> d!1689380 (= (validRegex!6581 r!7292) e!3262438)))

(declare-fun bm!371247 () Bool)

(assert (=> bm!371247 (= call!371252 (validRegex!6581 (ite c!906482 (regOne!30203 r!7292) (regOne!30202 r!7292))))))

(declare-fun b!5243388 () Bool)

(assert (=> b!5243388 (= e!3262436 e!3262439)))

(declare-fun res!2225330 () Bool)

(assert (=> b!5243388 (= res!2225330 (not (nullable!5014 (reg!15174 r!7292))))))

(assert (=> b!5243388 (=> (not res!2225330) (not e!3262439))))

(declare-fun b!5243389 () Bool)

(declare-fun res!2225331 () Bool)

(assert (=> b!5243389 (=> res!2225331 e!3262435)))

(assert (=> b!5243389 (= res!2225331 (not ((_ is Concat!23690) r!7292)))))

(assert (=> b!5243389 (= e!3262437 e!3262435)))

(declare-fun b!5243390 () Bool)

(assert (=> b!5243390 (= e!3262441 call!371251)))

(assert (= (and d!1689380 (not res!2225332)) b!5243384))

(assert (= (and b!5243384 c!906481) b!5243388))

(assert (= (and b!5243384 (not c!906481)) b!5243387))

(assert (= (and b!5243388 res!2225330) b!5243385))

(assert (= (and b!5243387 c!906482) b!5243386))

(assert (= (and b!5243387 (not c!906482)) b!5243389))

(assert (= (and b!5243386 res!2225334) b!5243382))

(assert (= (and b!5243389 (not res!2225331)) b!5243383))

(assert (= (and b!5243383 res!2225333) b!5243390))

(assert (= (or b!5243382 b!5243390) bm!371246))

(assert (= (or b!5243386 b!5243383) bm!371247))

(assert (= (or b!5243385 bm!371246) bm!371245))

(declare-fun m!6287548 () Bool)

(assert (=> bm!371245 m!6287548))

(declare-fun m!6287550 () Bool)

(assert (=> bm!371247 m!6287550))

(declare-fun m!6287552 () Bool)

(assert (=> b!5243388 m!6287552))

(assert (=> start!554130 d!1689380))

(declare-fun d!1689382 () Bool)

(declare-fun e!3262442 () Bool)

(assert (=> d!1689382 (= (matchZipper!1089 ((_ map or) lt!2149101 lt!2149123) (t!374015 s!2326)) e!3262442)))

(declare-fun res!2225335 () Bool)

(assert (=> d!1689382 (=> res!2225335 e!3262442)))

(assert (=> d!1689382 (= res!2225335 (matchZipper!1089 lt!2149101 (t!374015 s!2326)))))

(declare-fun lt!2149254 () Unit!152774)

(assert (=> d!1689382 (= lt!2149254 (choose!39044 lt!2149101 lt!2149123 (t!374015 s!2326)))))

(assert (=> d!1689382 (= (lemmaZipperConcatMatchesSameAsBothZippers!82 lt!2149101 lt!2149123 (t!374015 s!2326)) lt!2149254)))

(declare-fun b!5243391 () Bool)

(assert (=> b!5243391 (= e!3262442 (matchZipper!1089 lt!2149123 (t!374015 s!2326)))))

(assert (= (and d!1689382 (not res!2225335)) b!5243391))

(assert (=> d!1689382 m!6286746))

(assert (=> d!1689382 m!6286744))

(declare-fun m!6287554 () Bool)

(assert (=> d!1689382 m!6287554))

(assert (=> b!5243391 m!6286670))

(assert (=> b!5242464 d!1689382))

(assert (=> b!5242464 d!1689312))

(declare-fun d!1689384 () Bool)

(declare-fun c!906483 () Bool)

(assert (=> d!1689384 (= c!906483 (isEmpty!32648 (t!374015 s!2326)))))

(declare-fun e!3262443 () Bool)

(assert (=> d!1689384 (= (matchZipper!1089 ((_ map or) lt!2149101 lt!2149123) (t!374015 s!2326)) e!3262443)))

(declare-fun b!5243392 () Bool)

(assert (=> b!5243392 (= e!3262443 (nullableZipper!1260 ((_ map or) lt!2149101 lt!2149123)))))

(declare-fun b!5243393 () Bool)

(assert (=> b!5243393 (= e!3262443 (matchZipper!1089 (derivationStepZipper!1104 ((_ map or) lt!2149101 lt!2149123) (head!11238 (t!374015 s!2326))) (tail!10335 (t!374015 s!2326))))))

(assert (= (and d!1689384 c!906483) b!5243392))

(assert (= (and d!1689384 (not c!906483)) b!5243393))

(assert (=> d!1689384 m!6287240))

(declare-fun m!6287556 () Bool)

(assert (=> b!5243392 m!6287556))

(assert (=> b!5243393 m!6287244))

(assert (=> b!5243393 m!6287244))

(declare-fun m!6287558 () Bool)

(assert (=> b!5243393 m!6287558))

(assert (=> b!5243393 m!6287248))

(assert (=> b!5243393 m!6287558))

(assert (=> b!5243393 m!6287248))

(declare-fun m!6287560 () Bool)

(assert (=> b!5243393 m!6287560))

(assert (=> b!5242464 d!1689384))

(declare-fun b!5243398 () Bool)

(declare-fun e!3262446 () Bool)

(declare-fun tp!1467848 () Bool)

(declare-fun tp!1467849 () Bool)

(assert (=> b!5243398 (= e!3262446 (and tp!1467848 tp!1467849))))

(assert (=> b!5242439 (= tp!1467779 e!3262446)))

(assert (= (and b!5242439 ((_ is Cons!60711) (exprs!4729 setElem!33443))) b!5243398))

(declare-fun b!5243409 () Bool)

(declare-fun e!3262449 () Bool)

(assert (=> b!5243409 (= e!3262449 tp_is_empty!38943)))

(declare-fun b!5243412 () Bool)

(declare-fun tp!1467863 () Bool)

(declare-fun tp!1467860 () Bool)

(assert (=> b!5243412 (= e!3262449 (and tp!1467863 tp!1467860))))

(declare-fun b!5243411 () Bool)

(declare-fun tp!1467861 () Bool)

(assert (=> b!5243411 (= e!3262449 tp!1467861)))

(assert (=> b!5242469 (= tp!1467778 e!3262449)))

(declare-fun b!5243410 () Bool)

(declare-fun tp!1467864 () Bool)

(declare-fun tp!1467862 () Bool)

(assert (=> b!5243410 (= e!3262449 (and tp!1467864 tp!1467862))))

(assert (= (and b!5242469 ((_ is ElementMatch!14845) (regOne!30203 r!7292))) b!5243409))

(assert (= (and b!5242469 ((_ is Concat!23690) (regOne!30203 r!7292))) b!5243410))

(assert (= (and b!5242469 ((_ is Star!14845) (regOne!30203 r!7292))) b!5243411))

(assert (= (and b!5242469 ((_ is Union!14845) (regOne!30203 r!7292))) b!5243412))

(declare-fun b!5243413 () Bool)

(declare-fun e!3262450 () Bool)

(assert (=> b!5243413 (= e!3262450 tp_is_empty!38943)))

(declare-fun b!5243416 () Bool)

(declare-fun tp!1467868 () Bool)

(declare-fun tp!1467865 () Bool)

(assert (=> b!5243416 (= e!3262450 (and tp!1467868 tp!1467865))))

(declare-fun b!5243415 () Bool)

(declare-fun tp!1467866 () Bool)

(assert (=> b!5243415 (= e!3262450 tp!1467866)))

(assert (=> b!5242469 (= tp!1467780 e!3262450)))

(declare-fun b!5243414 () Bool)

(declare-fun tp!1467869 () Bool)

(declare-fun tp!1467867 () Bool)

(assert (=> b!5243414 (= e!3262450 (and tp!1467869 tp!1467867))))

(assert (= (and b!5242469 ((_ is ElementMatch!14845) (regTwo!30203 r!7292))) b!5243413))

(assert (= (and b!5242469 ((_ is Concat!23690) (regTwo!30203 r!7292))) b!5243414))

(assert (= (and b!5242469 ((_ is Star!14845) (regTwo!30203 r!7292))) b!5243415))

(assert (= (and b!5242469 ((_ is Union!14845) (regTwo!30203 r!7292))) b!5243416))

(declare-fun b!5243417 () Bool)

(declare-fun e!3262451 () Bool)

(assert (=> b!5243417 (= e!3262451 tp_is_empty!38943)))

(declare-fun b!5243420 () Bool)

(declare-fun tp!1467873 () Bool)

(declare-fun tp!1467870 () Bool)

(assert (=> b!5243420 (= e!3262451 (and tp!1467873 tp!1467870))))

(declare-fun b!5243419 () Bool)

(declare-fun tp!1467871 () Bool)

(assert (=> b!5243419 (= e!3262451 tp!1467871)))

(assert (=> b!5242440 (= tp!1467785 e!3262451)))

(declare-fun b!5243418 () Bool)

(declare-fun tp!1467874 () Bool)

(declare-fun tp!1467872 () Bool)

(assert (=> b!5243418 (= e!3262451 (and tp!1467874 tp!1467872))))

(assert (= (and b!5242440 ((_ is ElementMatch!14845) (reg!15174 r!7292))) b!5243417))

(assert (= (and b!5242440 ((_ is Concat!23690) (reg!15174 r!7292))) b!5243418))

(assert (= (and b!5242440 ((_ is Star!14845) (reg!15174 r!7292))) b!5243419))

(assert (= (and b!5242440 ((_ is Union!14845) (reg!15174 r!7292))) b!5243420))

(declare-fun condSetEmpty!33449 () Bool)

(assert (=> setNonEmpty!33443 (= condSetEmpty!33449 (= setRest!33443 ((as const (Array Context!8458 Bool)) false)))))

(declare-fun setRes!33449 () Bool)

(assert (=> setNonEmpty!33443 (= tp!1467777 setRes!33449)))

(declare-fun setIsEmpty!33449 () Bool)

(assert (=> setIsEmpty!33449 setRes!33449))

(declare-fun setElem!33449 () Context!8458)

(declare-fun e!3262454 () Bool)

(declare-fun tp!1467880 () Bool)

(declare-fun setNonEmpty!33449 () Bool)

(assert (=> setNonEmpty!33449 (= setRes!33449 (and tp!1467880 (inv!80359 setElem!33449) e!3262454))))

(declare-fun setRest!33449 () (InoxSet Context!8458))

(assert (=> setNonEmpty!33449 (= setRest!33443 ((_ map or) (store ((as const (Array Context!8458 Bool)) false) setElem!33449 true) setRest!33449))))

(declare-fun b!5243425 () Bool)

(declare-fun tp!1467879 () Bool)

(assert (=> b!5243425 (= e!3262454 tp!1467879)))

(assert (= (and setNonEmpty!33443 condSetEmpty!33449) setIsEmpty!33449))

(assert (= (and setNonEmpty!33443 (not condSetEmpty!33449)) setNonEmpty!33449))

(assert (= setNonEmpty!33449 b!5243425))

(declare-fun m!6287562 () Bool)

(assert (=> setNonEmpty!33449 m!6287562))

(declare-fun b!5243426 () Bool)

(declare-fun e!3262455 () Bool)

(assert (=> b!5243426 (= e!3262455 tp_is_empty!38943)))

(declare-fun b!5243429 () Bool)

(declare-fun tp!1467884 () Bool)

(declare-fun tp!1467881 () Bool)

(assert (=> b!5243429 (= e!3262455 (and tp!1467884 tp!1467881))))

(declare-fun b!5243428 () Bool)

(declare-fun tp!1467882 () Bool)

(assert (=> b!5243428 (= e!3262455 tp!1467882)))

(assert (=> b!5242451 (= tp!1467784 e!3262455)))

(declare-fun b!5243427 () Bool)

(declare-fun tp!1467885 () Bool)

(declare-fun tp!1467883 () Bool)

(assert (=> b!5243427 (= e!3262455 (and tp!1467885 tp!1467883))))

(assert (= (and b!5242451 ((_ is ElementMatch!14845) (regOne!30202 r!7292))) b!5243426))

(assert (= (and b!5242451 ((_ is Concat!23690) (regOne!30202 r!7292))) b!5243427))

(assert (= (and b!5242451 ((_ is Star!14845) (regOne!30202 r!7292))) b!5243428))

(assert (= (and b!5242451 ((_ is Union!14845) (regOne!30202 r!7292))) b!5243429))

(declare-fun b!5243430 () Bool)

(declare-fun e!3262456 () Bool)

(assert (=> b!5243430 (= e!3262456 tp_is_empty!38943)))

(declare-fun b!5243433 () Bool)

(declare-fun tp!1467889 () Bool)

(declare-fun tp!1467886 () Bool)

(assert (=> b!5243433 (= e!3262456 (and tp!1467889 tp!1467886))))

(declare-fun b!5243432 () Bool)

(declare-fun tp!1467887 () Bool)

(assert (=> b!5243432 (= e!3262456 tp!1467887)))

(assert (=> b!5242451 (= tp!1467781 e!3262456)))

(declare-fun b!5243431 () Bool)

(declare-fun tp!1467890 () Bool)

(declare-fun tp!1467888 () Bool)

(assert (=> b!5243431 (= e!3262456 (and tp!1467890 tp!1467888))))

(assert (= (and b!5242451 ((_ is ElementMatch!14845) (regTwo!30202 r!7292))) b!5243430))

(assert (= (and b!5242451 ((_ is Concat!23690) (regTwo!30202 r!7292))) b!5243431))

(assert (= (and b!5242451 ((_ is Star!14845) (regTwo!30202 r!7292))) b!5243432))

(assert (= (and b!5242451 ((_ is Union!14845) (regTwo!30202 r!7292))) b!5243433))

(declare-fun b!5243434 () Bool)

(declare-fun e!3262457 () Bool)

(declare-fun tp!1467891 () Bool)

(declare-fun tp!1467892 () Bool)

(assert (=> b!5243434 (= e!3262457 (and tp!1467891 tp!1467892))))

(assert (=> b!5242441 (= tp!1467776 e!3262457)))

(assert (= (and b!5242441 ((_ is Cons!60711) (exprs!4729 (h!67160 zl!343)))) b!5243434))

(declare-fun b!5243442 () Bool)

(declare-fun e!3262463 () Bool)

(declare-fun tp!1467897 () Bool)

(assert (=> b!5243442 (= e!3262463 tp!1467897)))

(declare-fun tp!1467898 () Bool)

(declare-fun b!5243441 () Bool)

(declare-fun e!3262462 () Bool)

(assert (=> b!5243441 (= e!3262462 (and (inv!80359 (h!67160 (t!374017 zl!343))) e!3262463 tp!1467898))))

(assert (=> b!5242473 (= tp!1467783 e!3262462)))

(assert (= b!5243441 b!5243442))

(assert (= (and b!5242473 ((_ is Cons!60712) (t!374017 zl!343))) b!5243441))

(declare-fun m!6287564 () Bool)

(assert (=> b!5243441 m!6287564))

(declare-fun b!5243447 () Bool)

(declare-fun e!3262466 () Bool)

(declare-fun tp!1467901 () Bool)

(assert (=> b!5243447 (= e!3262466 (and tp_is_empty!38943 tp!1467901))))

(assert (=> b!5242444 (= tp!1467782 e!3262466)))

(assert (= (and b!5242444 ((_ is Cons!60710) (t!374015 s!2326))) b!5243447))

(declare-fun b_lambda!202589 () Bool)

(assert (= b_lambda!202583 (or b!5242466 b_lambda!202589)))

(declare-fun bs!1216341 () Bool)

(declare-fun d!1689386 () Bool)

(assert (= bs!1216341 (and d!1689386 b!5242466)))

(assert (=> bs!1216341 (= (dynLambda!23991 lambda!263729 (h!67159 lt!2149104)) (validRegex!6581 (h!67159 lt!2149104)))))

(declare-fun m!6287566 () Bool)

(assert (=> bs!1216341 m!6287566))

(assert (=> b!5243221 d!1689386))

(declare-fun b_lambda!202591 () Bool)

(assert (= b_lambda!202585 (or b!5242455 b_lambda!202591)))

(declare-fun bs!1216342 () Bool)

(declare-fun d!1689388 () Bool)

(assert (= bs!1216342 (and d!1689388 b!5242455)))

(assert (=> bs!1216342 (= (dynLambda!23988 lambda!263728 lt!2149110) (derivationStepZipperUp!217 lt!2149110 (h!67158 s!2326)))))

(assert (=> bs!1216342 m!6286696))

(assert (=> d!1689342 d!1689388))

(declare-fun b_lambda!202593 () Bool)

(assert (= b_lambda!202565 (or b!5242455 b_lambda!202593)))

(declare-fun bs!1216343 () Bool)

(declare-fun d!1689390 () Bool)

(assert (= bs!1216343 (and d!1689390 b!5242455)))

(assert (=> bs!1216343 (= (dynLambda!23988 lambda!263728 (h!67160 zl!343)) (derivationStepZipperUp!217 (h!67160 zl!343) (h!67158 s!2326)))))

(assert (=> bs!1216343 m!6286680))

(assert (=> d!1689162 d!1689390))

(declare-fun b_lambda!202595 () Bool)

(assert (= b_lambda!202587 (or b!5242455 b_lambda!202595)))

(declare-fun bs!1216344 () Bool)

(declare-fun d!1689392 () Bool)

(assert (= bs!1216344 (and d!1689392 b!5242455)))

(assert (=> bs!1216344 (= (dynLambda!23988 lambda!263728 lt!2149120) (derivationStepZipperUp!217 lt!2149120 (h!67158 s!2326)))))

(assert (=> bs!1216344 m!6286710))

(assert (=> d!1689344 d!1689392))

(check-sat (not b!5243303) (not b!5243100) (not bm!371164) (not b!5243388) (not b!5243414) (not b!5243298) (not b!5243114) (not d!1689204) (not b!5243325) (not d!1689174) (not b!5243155) (not b!5243335) (not b!5243095) (not b!5243296) (not b!5243392) (not d!1689290) (not d!1689296) (not b!5243211) (not b!5243198) (not b!5243362) (not b!5243092) (not b!5243290) (not b_lambda!202589) (not d!1689362) (not bm!371237) (not b!5243287) (not d!1689254) (not b!5242883) (not b!5243339) (not b!5243319) (not bm!371214) (not d!1689358) (not b!5243415) (not bs!1216344) (not d!1689184) (not b!5243354) (not b!5243293) (not b_lambda!202593) (not b!5243269) (not b!5243209) (not bm!371219) (not d!1689288) (not bm!371228) (not b!5243225) (not d!1689166) (not bm!371227) (not b!5242771) (not b!5243321) (not bm!371231) (not b!5242826) tp_is_empty!38943 (not b!5243294) (not d!1689376) (not d!1689228) (not b!5243300) (not b!5242810) (not b!5243210) (not b!5242776) (not b!5243315) (not b!5243282) (not b!5243017) (not b!5243108) (not d!1689312) (not bs!1216342) (not b!5243346) (not b!5243302) (not b!5243429) (not d!1689308) (not b!5243236) (not bm!371245) (not b!5243317) (not bm!371247) (not bm!371218) (not d!1689298) (not d!1689348) (not b!5242885) (not b!5243122) (not b!5243196) (not bm!371178) (not d!1689382) (not b!5243318) (not b!5243197) (not d!1689368) (not d!1689328) (not b!5243098) (not b!5243425) (not b!5243165) (not b!5243432) (not d!1689338) (not b!5243428) (not d!1689330) (not b!5242997) (not bm!371221) (not b!5243292) (not d!1689162) (not b!5242886) (not d!1689208) (not d!1689342) (not b!5243416) (not b!5243273) (not b!5243277) (not b!5243094) (not b!5243420) (not bm!371165) (not b!5243116) (not d!1689304) (not b!5243441) (not d!1689384) (not bm!371215) (not setNonEmpty!33449) (not bm!371181) (not b!5243106) (not b!5243431) (not b!5243195) (not b!5242884) (not b_lambda!202595) (not d!1689370) (not d!1689278) (not b!5243213) (not b!5243447) (not d!1689360) (not b!5243274) (not bm!371235) (not b!5243323) (not b!5243119) (not b!5243289) (not b!5243348) (not d!1689354) (not b!5243353) (not b!5242882) (not b!5243016) (not b_lambda!202591) (not d!1689366) (not b!5243411) (not d!1689340) (not b!5243360) (not bm!371238) (not b!5243204) (not b!5243412) (not b!5242770) (not b!5243281) (not b!5243267) (not b!5242890) (not d!1689314) (not b!5243215) (not b!5242775) (not b!5243212) (not b!5243206) (not b!5243418) (not d!1689210) (not b!5243398) (not d!1689374) (not b!5243304) (not b!5243286) (not b!5243427) (not b!5243109) (not bm!371222) (not d!1689268) (not bm!371236) (not b!5243351) (not d!1689336) (not bs!1216341) (not b!5243208) (not b!5243268) (not b!5243271) (not b!5243280) (not bm!371180) (not b!5242825) (not b!5243337) (not b!5243442) (not b!5243393) (not b!5243314) (not b!5243391) (not b!5243283) (not b!5243096) (not b!5243352) (not b!5243340) (not b!5243338) (not d!1689352) (not bm!371232) (not b!5243433) (not d!1689334) (not b!5243410) (not b!5243222) (not d!1689356) (not b!5243419) (not d!1689252) (not d!1689302) (not b!5243214) (not b!5243265) (not d!1689316) (not d!1689378) (not b!5243278) (not bm!371234) (not b!5243324) (not d!1689318) (not d!1689346) (not bm!371225) (not bs!1216343) (not b!5243101) (not b!5243434) (not bm!371184) (not d!1689344) (not bm!371233) (not b!5243297) (not b!5243118) (not b!5243291))
(check-sat)
