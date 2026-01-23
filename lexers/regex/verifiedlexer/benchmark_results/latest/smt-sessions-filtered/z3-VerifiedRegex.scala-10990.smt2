; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570126 () Bool)

(assert start!570126)

(declare-fun b!5433098 () Bool)

(assert (=> b!5433098 true))

(assert (=> b!5433098 true))

(declare-fun lambda!285228 () Int)

(declare-fun lambda!285227 () Int)

(assert (=> b!5433098 (not (= lambda!285228 lambda!285227))))

(assert (=> b!5433098 true))

(assert (=> b!5433098 true))

(declare-fun b!5433096 () Bool)

(assert (=> b!5433096 true))

(declare-fun b!5433080 () Bool)

(declare-fun e!3366369 () Bool)

(declare-fun tp!1498588 () Bool)

(assert (=> b!5433080 (= e!3366369 tp!1498588)))

(declare-fun b!5433081 () Bool)

(declare-datatypes ((Unit!154430 0))(
  ( (Unit!154431) )
))
(declare-fun e!3366371 () Unit!154430)

(declare-fun Unit!154432 () Unit!154430)

(assert (=> b!5433081 (= e!3366371 Unit!154432)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30724 0))(
  ( (C!30725 (val!25064 Int)) )
))
(declare-datatypes ((Regex!15227 0))(
  ( (ElementMatch!15227 (c!948125 C!30724)) (Concat!24072 (regOne!30966 Regex!15227) (regTwo!30966 Regex!15227)) (EmptyExpr!15227) (Star!15227 (reg!15556 Regex!15227)) (EmptyLang!15227) (Union!15227 (regOne!30967 Regex!15227) (regTwo!30967 Regex!15227)) )
))
(declare-datatypes ((List!61980 0))(
  ( (Nil!61856) (Cons!61856 (h!68304 Regex!15227) (t!375205 List!61980)) )
))
(declare-datatypes ((Context!9222 0))(
  ( (Context!9223 (exprs!5111 List!61980)) )
))
(declare-fun lt!2215096 () (InoxSet Context!9222))

(declare-fun lt!2215107 () (InoxSet Context!9222))

(declare-fun lt!2215113 () Unit!154430)

(declare-datatypes ((List!61981 0))(
  ( (Nil!61857) (Cons!61857 (h!68305 C!30724) (t!375206 List!61981)) )
))
(declare-fun s!2326 () List!61981)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!464 ((InoxSet Context!9222) (InoxSet Context!9222) List!61981) Unit!154430)

(assert (=> b!5433081 (= lt!2215113 (lemmaZipperConcatMatchesSameAsBothZippers!464 lt!2215096 lt!2215107 (t!375206 s!2326)))))

(declare-fun res!2312090 () Bool)

(declare-fun matchZipper!1471 ((InoxSet Context!9222) List!61981) Bool)

(assert (=> b!5433081 (= res!2312090 (matchZipper!1471 lt!2215096 (t!375206 s!2326)))))

(declare-fun e!3366379 () Bool)

(assert (=> b!5433081 (=> res!2312090 e!3366379)))

(assert (=> b!5433081 (= (matchZipper!1471 ((_ map or) lt!2215096 lt!2215107) (t!375206 s!2326)) e!3366379)))

(declare-fun b!5433082 () Bool)

(declare-fun e!3366359 () Bool)

(declare-fun e!3366372 () Bool)

(assert (=> b!5433082 (= e!3366359 e!3366372)))

(declare-fun res!2312106 () Bool)

(assert (=> b!5433082 (=> res!2312106 e!3366372)))

(declare-fun lt!2215104 () (InoxSet Context!9222))

(declare-fun derivationStepZipper!1466 ((InoxSet Context!9222) C!30724) (InoxSet Context!9222))

(assert (=> b!5433082 (= res!2312106 (not (= lt!2215107 (derivationStepZipper!1466 lt!2215104 (h!68305 s!2326)))))))

(declare-fun lambda!285229 () Int)

(declare-fun lt!2215080 () Context!9222)

(declare-fun flatMap!954 ((InoxSet Context!9222) Int) (InoxSet Context!9222))

(declare-fun derivationStepZipperUp!599 (Context!9222 C!30724) (InoxSet Context!9222))

(assert (=> b!5433082 (= (flatMap!954 lt!2215104 lambda!285229) (derivationStepZipperUp!599 lt!2215080 (h!68305 s!2326)))))

(declare-fun lt!2215087 () Unit!154430)

(declare-fun lemmaFlatMapOnSingletonSet!486 ((InoxSet Context!9222) Context!9222 Int) Unit!154430)

(assert (=> b!5433082 (= lt!2215087 (lemmaFlatMapOnSingletonSet!486 lt!2215104 lt!2215080 lambda!285229))))

(assert (=> b!5433082 (= lt!2215104 (store ((as const (Array Context!9222 Bool)) false) lt!2215080 true))))

(declare-fun b!5433083 () Bool)

(declare-fun e!3366363 () Bool)

(declare-fun e!3366376 () Bool)

(assert (=> b!5433083 (= e!3366363 e!3366376)))

(declare-fun res!2312099 () Bool)

(assert (=> b!5433083 (=> res!2312099 e!3366376)))

(declare-fun lt!2215092 () Context!9222)

(declare-fun lt!2215094 () Regex!15227)

(declare-datatypes ((List!61982 0))(
  ( (Nil!61858) (Cons!61858 (h!68306 Context!9222) (t!375207 List!61982)) )
))
(declare-fun unfocusZipper!969 (List!61982) Regex!15227)

(assert (=> b!5433083 (= res!2312099 (not (= (unfocusZipper!969 (Cons!61858 lt!2215092 Nil!61858)) lt!2215094)))))

(declare-fun r!7292 () Regex!15227)

(declare-fun lt!2215082 () Regex!15227)

(assert (=> b!5433083 (= lt!2215094 (Concat!24072 (reg!15556 (regOne!30966 r!7292)) lt!2215082))))

(declare-fun b!5433084 () Bool)

(declare-fun res!2312111 () Bool)

(declare-fun e!3366364 () Bool)

(assert (=> b!5433084 (=> (not res!2312111) (not e!3366364))))

(declare-fun z!1189 () (InoxSet Context!9222))

(declare-fun zl!343 () List!61982)

(declare-fun toList!9011 ((InoxSet Context!9222)) List!61982)

(assert (=> b!5433084 (= res!2312111 (= (toList!9011 z!1189) zl!343))))

(declare-fun b!5433085 () Bool)

(declare-fun e!3366378 () Bool)

(declare-fun e!3366370 () Bool)

(assert (=> b!5433085 (= e!3366378 e!3366370)))

(declare-fun res!2312110 () Bool)

(assert (=> b!5433085 (=> res!2312110 e!3366370)))

(declare-fun lt!2215098 () List!61982)

(declare-fun zipperDepth!168 (List!61982) Int)

(assert (=> b!5433085 (= res!2312110 (< (zipperDepth!168 zl!343) (zipperDepth!168 lt!2215098)))))

(assert (=> b!5433085 (= lt!2215098 (Cons!61858 lt!2215080 Nil!61858))))

(declare-fun b!5433086 () Bool)

(declare-fun res!2312085 () Bool)

(declare-fun e!3366367 () Bool)

(assert (=> b!5433086 (=> res!2312085 e!3366367)))

(declare-fun generalisedConcat!896 (List!61980) Regex!15227)

(assert (=> b!5433086 (= res!2312085 (not (= r!7292 (generalisedConcat!896 (exprs!5111 (h!68306 zl!343))))))))

(declare-fun b!5433087 () Bool)

(declare-fun e!3366366 () Bool)

(assert (=> b!5433087 (= e!3366376 e!3366366)))

(declare-fun res!2312097 () Bool)

(assert (=> b!5433087 (=> res!2312097 e!3366366)))

(declare-fun lt!2215109 () Context!9222)

(assert (=> b!5433087 (= res!2312097 (not (= (unfocusZipper!969 (Cons!61858 lt!2215109 Nil!61858)) (reg!15556 (regOne!30966 r!7292)))))))

(declare-fun lt!2215112 () (InoxSet Context!9222))

(declare-fun lt!2215108 () Context!9222)

(assert (=> b!5433087 (= (flatMap!954 lt!2215112 lambda!285229) (derivationStepZipperUp!599 lt!2215108 (h!68305 s!2326)))))

(declare-fun lt!2215083 () Unit!154430)

(assert (=> b!5433087 (= lt!2215083 (lemmaFlatMapOnSingletonSet!486 lt!2215112 lt!2215108 lambda!285229))))

(declare-fun lt!2215097 () (InoxSet Context!9222))

(assert (=> b!5433087 (= (flatMap!954 lt!2215097 lambda!285229) (derivationStepZipperUp!599 lt!2215109 (h!68305 s!2326)))))

(declare-fun lt!2215077 () Unit!154430)

(assert (=> b!5433087 (= lt!2215077 (lemmaFlatMapOnSingletonSet!486 lt!2215097 lt!2215109 lambda!285229))))

(declare-fun lt!2215100 () (InoxSet Context!9222))

(assert (=> b!5433087 (= lt!2215100 (derivationStepZipperUp!599 lt!2215108 (h!68305 s!2326)))))

(declare-fun lt!2215079 () (InoxSet Context!9222))

(assert (=> b!5433087 (= lt!2215079 (derivationStepZipperUp!599 lt!2215109 (h!68305 s!2326)))))

(assert (=> b!5433087 (= lt!2215112 (store ((as const (Array Context!9222 Bool)) false) lt!2215108 true))))

(assert (=> b!5433087 (= lt!2215097 (store ((as const (Array Context!9222 Bool)) false) lt!2215109 true))))

(assert (=> b!5433087 (= lt!2215109 (Context!9223 (Cons!61856 (reg!15556 (regOne!30966 r!7292)) Nil!61856)))))

(declare-fun b!5433088 () Bool)

(declare-fun res!2312113 () Bool)

(declare-fun e!3366373 () Bool)

(assert (=> b!5433088 (=> res!2312113 e!3366373)))

(declare-fun e!3366360 () Bool)

(assert (=> b!5433088 (= res!2312113 e!3366360)))

(declare-fun res!2312100 () Bool)

(assert (=> b!5433088 (=> (not res!2312100) (not e!3366360))))

(get-info :version)

(assert (=> b!5433088 (= res!2312100 ((_ is Concat!24072) (regOne!30966 r!7292)))))

(declare-fun setElem!35451 () Context!9222)

(declare-fun setNonEmpty!35451 () Bool)

(declare-fun tp!1498593 () Bool)

(declare-fun setRes!35451 () Bool)

(declare-fun inv!81314 (Context!9222) Bool)

(assert (=> setNonEmpty!35451 (= setRes!35451 (and tp!1498593 (inv!81314 setElem!35451) e!3366369))))

(declare-fun setRest!35451 () (InoxSet Context!9222))

(assert (=> setNonEmpty!35451 (= z!1189 ((_ map or) (store ((as const (Array Context!9222 Bool)) false) setElem!35451 true) setRest!35451))))

(declare-fun b!5433089 () Bool)

(declare-fun e!3366374 () Bool)

(assert (=> b!5433089 (= e!3366364 e!3366374)))

(declare-fun res!2312114 () Bool)

(assert (=> b!5433089 (=> (not res!2312114) (not e!3366374))))

(declare-fun lt!2215081 () Regex!15227)

(assert (=> b!5433089 (= res!2312114 (= r!7292 lt!2215081))))

(assert (=> b!5433089 (= lt!2215081 (unfocusZipper!969 zl!343))))

(declare-fun b!5433090 () Bool)

(declare-fun res!2312105 () Bool)

(assert (=> b!5433090 (=> res!2312105 e!3366367)))

(assert (=> b!5433090 (= res!2312105 (or ((_ is EmptyExpr!15227) r!7292) ((_ is EmptyLang!15227) r!7292) ((_ is ElementMatch!15227) r!7292) ((_ is Union!15227) r!7292) (not ((_ is Concat!24072) r!7292))))))

(declare-fun b!5433091 () Bool)

(declare-fun e!3366368 () Bool)

(declare-fun tp!1498594 () Bool)

(declare-fun tp!1498592 () Bool)

(assert (=> b!5433091 (= e!3366368 (and tp!1498594 tp!1498592))))

(declare-fun b!5433092 () Bool)

(declare-fun res!2312098 () Bool)

(declare-fun e!3366365 () Bool)

(assert (=> b!5433092 (=> res!2312098 e!3366365)))

(declare-fun isEmpty!33860 (List!61980) Bool)

(assert (=> b!5433092 (= res!2312098 (isEmpty!33860 (t!375205 (exprs!5111 (h!68306 zl!343)))))))

(declare-fun b!5433093 () Bool)

(declare-fun res!2312112 () Bool)

(declare-fun e!3366362 () Bool)

(assert (=> b!5433093 (=> res!2312112 e!3366362)))

(assert (=> b!5433093 (= res!2312112 (not (matchZipper!1471 z!1189 s!2326)))))

(declare-fun res!2312093 () Bool)

(assert (=> start!570126 (=> (not res!2312093) (not e!3366364))))

(declare-fun validRegex!6963 (Regex!15227) Bool)

(assert (=> start!570126 (= res!2312093 (validRegex!6963 r!7292))))

(assert (=> start!570126 e!3366364))

(assert (=> start!570126 e!3366368))

(declare-fun condSetEmpty!35451 () Bool)

(assert (=> start!570126 (= condSetEmpty!35451 (= z!1189 ((as const (Array Context!9222 Bool)) false)))))

(assert (=> start!570126 setRes!35451))

(declare-fun e!3366375 () Bool)

(assert (=> start!570126 e!3366375))

(declare-fun e!3366377 () Bool)

(assert (=> start!570126 e!3366377))

(declare-fun b!5433094 () Bool)

(assert (=> b!5433094 (= e!3366374 (not e!3366367))))

(declare-fun res!2312109 () Bool)

(assert (=> b!5433094 (=> res!2312109 e!3366367)))

(assert (=> b!5433094 (= res!2312109 (not ((_ is Cons!61858) zl!343)))))

(declare-fun lt!2215085 () Bool)

(declare-fun matchRSpec!2330 (Regex!15227 List!61981) Bool)

(assert (=> b!5433094 (= lt!2215085 (matchRSpec!2330 r!7292 s!2326))))

(declare-fun matchR!7412 (Regex!15227 List!61981) Bool)

(assert (=> b!5433094 (= lt!2215085 (matchR!7412 r!7292 s!2326))))

(declare-fun lt!2215099 () Unit!154430)

(declare-fun mainMatchTheorem!2330 (Regex!15227 List!61981) Unit!154430)

(assert (=> b!5433094 (= lt!2215099 (mainMatchTheorem!2330 r!7292 s!2326))))

(declare-fun b!5433095 () Bool)

(declare-fun Unit!154433 () Unit!154430)

(assert (=> b!5433095 (= e!3366371 Unit!154433)))

(assert (=> b!5433096 (= e!3366365 e!3366373)))

(declare-fun res!2312103 () Bool)

(assert (=> b!5433096 (=> res!2312103 e!3366373)))

(assert (=> b!5433096 (= res!2312103 (or (and ((_ is ElementMatch!15227) (regOne!30966 r!7292)) (= (c!948125 (regOne!30966 r!7292)) (h!68305 s!2326))) ((_ is Union!15227) (regOne!30966 r!7292))))))

(declare-fun lt!2215102 () Unit!154430)

(assert (=> b!5433096 (= lt!2215102 e!3366371)))

(declare-fun c!948124 () Bool)

(declare-fun lt!2215088 () Bool)

(assert (=> b!5433096 (= c!948124 lt!2215088)))

(declare-fun nullable!5396 (Regex!15227) Bool)

(assert (=> b!5433096 (= lt!2215088 (nullable!5396 (h!68304 (exprs!5111 (h!68306 zl!343)))))))

(assert (=> b!5433096 (= (flatMap!954 z!1189 lambda!285229) (derivationStepZipperUp!599 (h!68306 zl!343) (h!68305 s!2326)))))

(declare-fun lt!2215091 () Unit!154430)

(assert (=> b!5433096 (= lt!2215091 (lemmaFlatMapOnSingletonSet!486 z!1189 (h!68306 zl!343) lambda!285229))))

(assert (=> b!5433096 (= lt!2215107 (derivationStepZipperUp!599 lt!2215080 (h!68305 s!2326)))))

(declare-fun derivationStepZipperDown!675 (Regex!15227 Context!9222 C!30724) (InoxSet Context!9222))

(assert (=> b!5433096 (= lt!2215096 (derivationStepZipperDown!675 (h!68304 (exprs!5111 (h!68306 zl!343))) lt!2215080 (h!68305 s!2326)))))

(assert (=> b!5433096 (= lt!2215080 (Context!9223 (t!375205 (exprs!5111 (h!68306 zl!343)))))))

(declare-fun lt!2215086 () (InoxSet Context!9222))

(assert (=> b!5433096 (= lt!2215086 (derivationStepZipperUp!599 (Context!9223 (Cons!61856 (h!68304 (exprs!5111 (h!68306 zl!343))) (t!375205 (exprs!5111 (h!68306 zl!343))))) (h!68305 s!2326)))))

(declare-fun b!5433097 () Bool)

(declare-fun res!2312091 () Bool)

(assert (=> b!5433097 (=> res!2312091 e!3366359)))

(declare-fun lt!2215089 () Bool)

(assert (=> b!5433097 (= res!2312091 lt!2215089)))

(assert (=> b!5433098 (= e!3366367 e!3366365)))

(declare-fun res!2312096 () Bool)

(assert (=> b!5433098 (=> res!2312096 e!3366365)))

(declare-fun lt!2215105 () Bool)

(assert (=> b!5433098 (= res!2312096 (or (not (= lt!2215085 lt!2215105)) ((_ is Nil!61857) s!2326)))))

(declare-fun Exists!2408 (Int) Bool)

(assert (=> b!5433098 (= (Exists!2408 lambda!285227) (Exists!2408 lambda!285228))))

(declare-fun lt!2215095 () Unit!154430)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1062 (Regex!15227 Regex!15227 List!61981) Unit!154430)

(assert (=> b!5433098 (= lt!2215095 (lemmaExistCutMatchRandMatchRSpecEquivalent!1062 (regOne!30966 r!7292) (regTwo!30966 r!7292) s!2326))))

(assert (=> b!5433098 (= lt!2215105 (Exists!2408 lambda!285227))))

(declare-datatypes ((tuple2!64852 0))(
  ( (tuple2!64853 (_1!35729 List!61981) (_2!35729 List!61981)) )
))
(declare-datatypes ((Option!15338 0))(
  ( (None!15337) (Some!15337 (v!51366 tuple2!64852)) )
))
(declare-fun isDefined!12041 (Option!15338) Bool)

(declare-fun findConcatSeparation!1752 (Regex!15227 Regex!15227 List!61981 List!61981 List!61981) Option!15338)

(assert (=> b!5433098 (= lt!2215105 (isDefined!12041 (findConcatSeparation!1752 (regOne!30966 r!7292) (regTwo!30966 r!7292) Nil!61857 s!2326 s!2326)))))

(declare-fun lt!2215103 () Unit!154430)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1516 (Regex!15227 Regex!15227 List!61981) Unit!154430)

(assert (=> b!5433098 (= lt!2215103 (lemmaFindConcatSeparationEquivalentToExists!1516 (regOne!30966 r!7292) (regTwo!30966 r!7292) s!2326))))

(declare-fun b!5433099 () Bool)

(assert (=> b!5433099 (= e!3366379 (matchZipper!1471 lt!2215107 (t!375206 s!2326)))))

(declare-fun b!5433100 () Bool)

(declare-fun e!3366358 () Bool)

(assert (=> b!5433100 (= e!3366358 e!3366363)))

(declare-fun res!2312115 () Bool)

(assert (=> b!5433100 (=> res!2312115 e!3366363)))

(assert (=> b!5433100 (= res!2312115 (not (= r!7292 lt!2215082)))))

(declare-fun lt!2215090 () Regex!15227)

(assert (=> b!5433100 (= lt!2215082 (Concat!24072 lt!2215090 (regTwo!30966 r!7292)))))

(declare-fun b!5433101 () Bool)

(assert (=> b!5433101 (= e!3366370 (validRegex!6963 (regTwo!30966 r!7292)))))

(declare-fun lt!2215076 () Regex!15227)

(assert (=> b!5433101 (= (matchR!7412 lt!2215076 s!2326) (matchZipper!1471 lt!2215104 s!2326))))

(declare-fun lt!2215110 () Unit!154430)

(declare-fun theoremZipperRegexEquiv!531 ((InoxSet Context!9222) List!61982 Regex!15227 List!61981) Unit!154430)

(assert (=> b!5433101 (= lt!2215110 (theoremZipperRegexEquiv!531 lt!2215104 lt!2215098 lt!2215076 s!2326))))

(declare-fun b!5433102 () Bool)

(declare-fun res!2312101 () Bool)

(assert (=> b!5433102 (=> res!2312101 e!3366367)))

(declare-fun generalisedUnion!1156 (List!61980) Regex!15227)

(declare-fun unfocusZipperList!669 (List!61982) List!61980)

(assert (=> b!5433102 (= res!2312101 (not (= r!7292 (generalisedUnion!1156 (unfocusZipperList!669 zl!343)))))))

(declare-fun b!5433103 () Bool)

(assert (=> b!5433103 (= e!3366372 e!3366378)))

(declare-fun res!2312082 () Bool)

(assert (=> b!5433103 (=> res!2312082 e!3366378)))

(declare-fun regexDepth!183 (Regex!15227) Int)

(assert (=> b!5433103 (= res!2312082 (< (regexDepth!183 r!7292) (regexDepth!183 lt!2215076)))))

(assert (=> b!5433103 (= lt!2215076 (generalisedConcat!896 (t!375205 (exprs!5111 (h!68306 zl!343)))))))

(declare-fun b!5433104 () Bool)

(declare-fun res!2312104 () Bool)

(assert (=> b!5433104 (=> res!2312104 e!3366367)))

(declare-fun isEmpty!33861 (List!61982) Bool)

(assert (=> b!5433104 (= res!2312104 (not (isEmpty!33861 (t!375207 zl!343))))))

(declare-fun b!5433105 () Bool)

(declare-fun res!2312089 () Bool)

(assert (=> b!5433105 (=> res!2312089 e!3366366)))

(assert (=> b!5433105 (= res!2312089 (not (= (unfocusZipper!969 (Cons!61858 lt!2215108 Nil!61858)) lt!2215082)))))

(declare-fun b!5433106 () Bool)

(declare-fun res!2312108 () Bool)

(assert (=> b!5433106 (=> res!2312108 e!3366358)))

(declare-fun lt!2215101 () (InoxSet Context!9222))

(declare-fun lt!2215114 () (InoxSet Context!9222))

(assert (=> b!5433106 (= res!2312108 (not (= (matchZipper!1471 lt!2215114 s!2326) (matchZipper!1471 lt!2215101 (t!375206 s!2326)))))))

(declare-fun b!5433107 () Bool)

(declare-fun res!2312095 () Bool)

(assert (=> b!5433107 (=> res!2312095 e!3366367)))

(assert (=> b!5433107 (= res!2312095 (not ((_ is Cons!61856) (exprs!5111 (h!68306 zl!343)))))))

(declare-fun b!5433108 () Bool)

(declare-fun tp!1498595 () Bool)

(declare-fun tp!1498589 () Bool)

(assert (=> b!5433108 (= e!3366368 (and tp!1498595 tp!1498589))))

(declare-fun b!5433109 () Bool)

(declare-fun tp_is_empty!39707 () Bool)

(assert (=> b!5433109 (= e!3366368 tp_is_empty!39707)))

(declare-fun setIsEmpty!35451 () Bool)

(assert (=> setIsEmpty!35451 setRes!35451))

(declare-fun b!5433110 () Bool)

(declare-fun res!2312107 () Bool)

(assert (=> b!5433110 (=> res!2312107 e!3366373)))

(assert (=> b!5433110 (= res!2312107 (or ((_ is Concat!24072) (regOne!30966 r!7292)) (not ((_ is Star!15227) (regOne!30966 r!7292)))))))

(declare-fun b!5433111 () Bool)

(declare-fun e!3366357 () Bool)

(assert (=> b!5433111 (= e!3366357 e!3366358)))

(declare-fun res!2312088 () Bool)

(assert (=> b!5433111 (=> res!2312088 e!3366358)))

(declare-fun lt!2215111 () (InoxSet Context!9222))

(assert (=> b!5433111 (= res!2312088 (not (= lt!2215101 lt!2215111)))))

(assert (=> b!5433111 (= (flatMap!954 lt!2215114 lambda!285229) (derivationStepZipperUp!599 lt!2215092 (h!68305 s!2326)))))

(declare-fun lt!2215084 () Unit!154430)

(assert (=> b!5433111 (= lt!2215084 (lemmaFlatMapOnSingletonSet!486 lt!2215114 lt!2215092 lambda!285229))))

(declare-fun lt!2215078 () (InoxSet Context!9222))

(assert (=> b!5433111 (= lt!2215078 (derivationStepZipperUp!599 lt!2215092 (h!68305 s!2326)))))

(assert (=> b!5433111 (= lt!2215101 (derivationStepZipper!1466 lt!2215114 (h!68305 s!2326)))))

(assert (=> b!5433111 (= lt!2215114 (store ((as const (Array Context!9222 Bool)) false) lt!2215092 true))))

(declare-fun lt!2215106 () List!61980)

(assert (=> b!5433111 (= lt!2215092 (Context!9223 (Cons!61856 (reg!15556 (regOne!30966 r!7292)) lt!2215106)))))

(declare-fun b!5433112 () Bool)

(assert (=> b!5433112 (= e!3366366 e!3366362)))

(declare-fun res!2312084 () Bool)

(assert (=> b!5433112 (=> res!2312084 e!3366362)))

(assert (=> b!5433112 (= res!2312084 lt!2215085)))

(assert (=> b!5433112 (= (matchR!7412 lt!2215094 s!2326) (matchRSpec!2330 lt!2215094 s!2326))))

(declare-fun lt!2215093 () Unit!154430)

(assert (=> b!5433112 (= lt!2215093 (mainMatchTheorem!2330 lt!2215094 s!2326))))

(declare-fun b!5433113 () Bool)

(declare-fun res!2312094 () Bool)

(assert (=> b!5433113 (=> res!2312094 e!3366362)))

(assert (=> b!5433113 (= res!2312094 (not lt!2215088))))

(declare-fun b!5433114 () Bool)

(declare-fun tp!1498597 () Bool)

(assert (=> b!5433114 (= e!3366377 (and tp_is_empty!39707 tp!1498597))))

(declare-fun b!5433115 () Bool)

(assert (=> b!5433115 (= e!3366360 (nullable!5396 (regOne!30966 (regOne!30966 r!7292))))))

(declare-fun b!5433116 () Bool)

(declare-fun res!2312083 () Bool)

(assert (=> b!5433116 (=> res!2312083 e!3366359)))

(assert (=> b!5433116 (= res!2312083 (not (matchZipper!1471 lt!2215107 (t!375206 s!2326))))))

(declare-fun e!3366361 () Bool)

(declare-fun tp!1498591 () Bool)

(declare-fun b!5433117 () Bool)

(assert (=> b!5433117 (= e!3366375 (and (inv!81314 (h!68306 zl!343)) e!3366361 tp!1498591))))

(declare-fun b!5433118 () Bool)

(declare-fun e!3366380 () Bool)

(assert (=> b!5433118 (= e!3366380 (not (matchZipper!1471 lt!2215107 (t!375206 s!2326))))))

(declare-fun b!5433119 () Bool)

(declare-fun res!2312087 () Bool)

(assert (=> b!5433119 (=> res!2312087 e!3366358)))

(assert (=> b!5433119 (= res!2312087 (not (= lt!2215081 r!7292)))))

(declare-fun b!5433120 () Bool)

(assert (=> b!5433120 (= e!3366373 e!3366357)))

(declare-fun res!2312092 () Bool)

(assert (=> b!5433120 (=> res!2312092 e!3366357)))

(assert (=> b!5433120 (= res!2312092 (not (= lt!2215096 lt!2215111)))))

(assert (=> b!5433120 (= lt!2215111 (derivationStepZipperDown!675 (reg!15556 (regOne!30966 r!7292)) lt!2215108 (h!68305 s!2326)))))

(assert (=> b!5433120 (= lt!2215108 (Context!9223 lt!2215106))))

(assert (=> b!5433120 (= lt!2215106 (Cons!61856 lt!2215090 (t!375205 (exprs!5111 (h!68306 zl!343)))))))

(assert (=> b!5433120 (= lt!2215090 (Star!15227 (reg!15556 (regOne!30966 r!7292))))))

(declare-fun b!5433121 () Bool)

(declare-fun tp!1498590 () Bool)

(assert (=> b!5433121 (= e!3366368 tp!1498590)))

(declare-fun b!5433122 () Bool)

(assert (=> b!5433122 (= e!3366362 e!3366359)))

(declare-fun res!2312102 () Bool)

(assert (=> b!5433122 (=> res!2312102 e!3366359)))

(assert (=> b!5433122 (= res!2312102 e!3366380)))

(declare-fun res!2312086 () Bool)

(assert (=> b!5433122 (=> (not res!2312086) (not e!3366380))))

(assert (=> b!5433122 (= res!2312086 (not lt!2215089))))

(assert (=> b!5433122 (= lt!2215089 (matchZipper!1471 lt!2215096 (t!375206 s!2326)))))

(declare-fun b!5433123 () Bool)

(declare-fun tp!1498596 () Bool)

(assert (=> b!5433123 (= e!3366361 tp!1498596)))

(assert (= (and start!570126 res!2312093) b!5433084))

(assert (= (and b!5433084 res!2312111) b!5433089))

(assert (= (and b!5433089 res!2312114) b!5433094))

(assert (= (and b!5433094 (not res!2312109)) b!5433104))

(assert (= (and b!5433104 (not res!2312104)) b!5433086))

(assert (= (and b!5433086 (not res!2312085)) b!5433107))

(assert (= (and b!5433107 (not res!2312095)) b!5433102))

(assert (= (and b!5433102 (not res!2312101)) b!5433090))

(assert (= (and b!5433090 (not res!2312105)) b!5433098))

(assert (= (and b!5433098 (not res!2312096)) b!5433092))

(assert (= (and b!5433092 (not res!2312098)) b!5433096))

(assert (= (and b!5433096 c!948124) b!5433081))

(assert (= (and b!5433096 (not c!948124)) b!5433095))

(assert (= (and b!5433081 (not res!2312090)) b!5433099))

(assert (= (and b!5433096 (not res!2312103)) b!5433088))

(assert (= (and b!5433088 res!2312100) b!5433115))

(assert (= (and b!5433088 (not res!2312113)) b!5433110))

(assert (= (and b!5433110 (not res!2312107)) b!5433120))

(assert (= (and b!5433120 (not res!2312092)) b!5433111))

(assert (= (and b!5433111 (not res!2312088)) b!5433106))

(assert (= (and b!5433106 (not res!2312108)) b!5433119))

(assert (= (and b!5433119 (not res!2312087)) b!5433100))

(assert (= (and b!5433100 (not res!2312115)) b!5433083))

(assert (= (and b!5433083 (not res!2312099)) b!5433087))

(assert (= (and b!5433087 (not res!2312097)) b!5433105))

(assert (= (and b!5433105 (not res!2312089)) b!5433112))

(assert (= (and b!5433112 (not res!2312084)) b!5433093))

(assert (= (and b!5433093 (not res!2312112)) b!5433113))

(assert (= (and b!5433113 (not res!2312094)) b!5433122))

(assert (= (and b!5433122 res!2312086) b!5433118))

(assert (= (and b!5433122 (not res!2312102)) b!5433097))

(assert (= (and b!5433097 (not res!2312091)) b!5433116))

(assert (= (and b!5433116 (not res!2312083)) b!5433082))

(assert (= (and b!5433082 (not res!2312106)) b!5433103))

(assert (= (and b!5433103 (not res!2312082)) b!5433085))

(assert (= (and b!5433085 (not res!2312110)) b!5433101))

(assert (= (and start!570126 ((_ is ElementMatch!15227) r!7292)) b!5433109))

(assert (= (and start!570126 ((_ is Concat!24072) r!7292)) b!5433108))

(assert (= (and start!570126 ((_ is Star!15227) r!7292)) b!5433121))

(assert (= (and start!570126 ((_ is Union!15227) r!7292)) b!5433091))

(assert (= (and start!570126 condSetEmpty!35451) setIsEmpty!35451))

(assert (= (and start!570126 (not condSetEmpty!35451)) setNonEmpty!35451))

(assert (= setNonEmpty!35451 b!5433080))

(assert (= b!5433117 b!5433123))

(assert (= (and start!570126 ((_ is Cons!61858) zl!343)) b!5433117))

(assert (= (and start!570126 ((_ is Cons!61857) s!2326)) b!5433114))

(declare-fun m!6455562 () Bool)

(assert (=> b!5433099 m!6455562))

(declare-fun m!6455564 () Bool)

(assert (=> b!5433085 m!6455564))

(declare-fun m!6455566 () Bool)

(assert (=> b!5433085 m!6455566))

(declare-fun m!6455568 () Bool)

(assert (=> b!5433096 m!6455568))

(declare-fun m!6455570 () Bool)

(assert (=> b!5433096 m!6455570))

(declare-fun m!6455572 () Bool)

(assert (=> b!5433096 m!6455572))

(declare-fun m!6455574 () Bool)

(assert (=> b!5433096 m!6455574))

(declare-fun m!6455576 () Bool)

(assert (=> b!5433096 m!6455576))

(declare-fun m!6455578 () Bool)

(assert (=> b!5433096 m!6455578))

(declare-fun m!6455580 () Bool)

(assert (=> b!5433096 m!6455580))

(declare-fun m!6455582 () Bool)

(assert (=> setNonEmpty!35451 m!6455582))

(declare-fun m!6455584 () Bool)

(assert (=> b!5433104 m!6455584))

(declare-fun m!6455586 () Bool)

(assert (=> b!5433115 m!6455586))

(declare-fun m!6455588 () Bool)

(assert (=> b!5433081 m!6455588))

(declare-fun m!6455590 () Bool)

(assert (=> b!5433081 m!6455590))

(declare-fun m!6455592 () Bool)

(assert (=> b!5433081 m!6455592))

(declare-fun m!6455594 () Bool)

(assert (=> b!5433105 m!6455594))

(declare-fun m!6455596 () Bool)

(assert (=> b!5433092 m!6455596))

(declare-fun m!6455598 () Bool)

(assert (=> b!5433103 m!6455598))

(declare-fun m!6455600 () Bool)

(assert (=> b!5433103 m!6455600))

(declare-fun m!6455602 () Bool)

(assert (=> b!5433103 m!6455602))

(declare-fun m!6455604 () Bool)

(assert (=> b!5433089 m!6455604))

(assert (=> b!5433118 m!6455562))

(declare-fun m!6455606 () Bool)

(assert (=> b!5433102 m!6455606))

(assert (=> b!5433102 m!6455606))

(declare-fun m!6455608 () Bool)

(assert (=> b!5433102 m!6455608))

(assert (=> b!5433122 m!6455590))

(declare-fun m!6455610 () Bool)

(assert (=> b!5433098 m!6455610))

(declare-fun m!6455612 () Bool)

(assert (=> b!5433098 m!6455612))

(declare-fun m!6455614 () Bool)

(assert (=> b!5433098 m!6455614))

(declare-fun m!6455616 () Bool)

(assert (=> b!5433098 m!6455616))

(assert (=> b!5433098 m!6455610))

(declare-fun m!6455618 () Bool)

(assert (=> b!5433098 m!6455618))

(assert (=> b!5433098 m!6455612))

(declare-fun m!6455620 () Bool)

(assert (=> b!5433098 m!6455620))

(declare-fun m!6455622 () Bool)

(assert (=> b!5433120 m!6455622))

(declare-fun m!6455624 () Bool)

(assert (=> b!5433106 m!6455624))

(declare-fun m!6455626 () Bool)

(assert (=> b!5433106 m!6455626))

(declare-fun m!6455628 () Bool)

(assert (=> b!5433094 m!6455628))

(declare-fun m!6455630 () Bool)

(assert (=> b!5433094 m!6455630))

(declare-fun m!6455632 () Bool)

(assert (=> b!5433094 m!6455632))

(declare-fun m!6455634 () Bool)

(assert (=> b!5433084 m!6455634))

(declare-fun m!6455636 () Bool)

(assert (=> b!5433083 m!6455636))

(declare-fun m!6455638 () Bool)

(assert (=> b!5433087 m!6455638))

(declare-fun m!6455640 () Bool)

(assert (=> b!5433087 m!6455640))

(declare-fun m!6455642 () Bool)

(assert (=> b!5433087 m!6455642))

(declare-fun m!6455644 () Bool)

(assert (=> b!5433087 m!6455644))

(declare-fun m!6455646 () Bool)

(assert (=> b!5433087 m!6455646))

(declare-fun m!6455648 () Bool)

(assert (=> b!5433087 m!6455648))

(declare-fun m!6455650 () Bool)

(assert (=> b!5433087 m!6455650))

(declare-fun m!6455652 () Bool)

(assert (=> b!5433087 m!6455652))

(declare-fun m!6455654 () Bool)

(assert (=> b!5433087 m!6455654))

(declare-fun m!6455656 () Bool)

(assert (=> b!5433117 m!6455656))

(declare-fun m!6455658 () Bool)

(assert (=> start!570126 m!6455658))

(declare-fun m!6455660 () Bool)

(assert (=> b!5433111 m!6455660))

(declare-fun m!6455662 () Bool)

(assert (=> b!5433111 m!6455662))

(declare-fun m!6455664 () Bool)

(assert (=> b!5433111 m!6455664))

(declare-fun m!6455666 () Bool)

(assert (=> b!5433111 m!6455666))

(declare-fun m!6455668 () Bool)

(assert (=> b!5433111 m!6455668))

(declare-fun m!6455670 () Bool)

(assert (=> b!5433112 m!6455670))

(declare-fun m!6455672 () Bool)

(assert (=> b!5433112 m!6455672))

(declare-fun m!6455674 () Bool)

(assert (=> b!5433112 m!6455674))

(assert (=> b!5433116 m!6455562))

(declare-fun m!6455676 () Bool)

(assert (=> b!5433086 m!6455676))

(declare-fun m!6455678 () Bool)

(assert (=> b!5433082 m!6455678))

(declare-fun m!6455680 () Bool)

(assert (=> b!5433082 m!6455680))

(declare-fun m!6455682 () Bool)

(assert (=> b!5433082 m!6455682))

(declare-fun m!6455684 () Bool)

(assert (=> b!5433082 m!6455684))

(assert (=> b!5433082 m!6455572))

(declare-fun m!6455686 () Bool)

(assert (=> b!5433101 m!6455686))

(declare-fun m!6455688 () Bool)

(assert (=> b!5433101 m!6455688))

(declare-fun m!6455690 () Bool)

(assert (=> b!5433101 m!6455690))

(declare-fun m!6455692 () Bool)

(assert (=> b!5433101 m!6455692))

(declare-fun m!6455694 () Bool)

(assert (=> b!5433093 m!6455694))

(check-sat (not b!5433123) (not b!5433089) (not b!5433118) (not b!5433102) (not b!5433087) (not b!5433091) (not b!5433117) (not b!5433084) (not b!5433114) (not b!5433115) (not b!5433108) (not b!5433080) (not b!5433094) (not b!5433112) (not b!5433092) (not b!5433105) (not b!5433083) (not start!570126) (not b!5433093) tp_is_empty!39707 (not b!5433096) (not b!5433111) (not b!5433101) (not b!5433086) (not b!5433120) (not b!5433082) (not setNonEmpty!35451) (not b!5433098) (not b!5433103) (not b!5433116) (not b!5433099) (not b!5433121) (not b!5433081) (not b!5433085) (not b!5433106) (not b!5433104) (not b!5433122))
(check-sat)
(get-model)

(declare-fun d!1732053 () Bool)

(declare-fun lambda!285232 () Int)

(declare-fun forall!14567 (List!61980 Int) Bool)

(assert (=> d!1732053 (= (inv!81314 setElem!35451) (forall!14567 (exprs!5111 setElem!35451) lambda!285232))))

(declare-fun bs!1254713 () Bool)

(assert (= bs!1254713 d!1732053))

(declare-fun m!6455696 () Bool)

(assert (=> bs!1254713 m!6455696))

(assert (=> setNonEmpty!35451 d!1732053))

(declare-fun d!1732055 () Bool)

(declare-fun lt!2215117 () Regex!15227)

(assert (=> d!1732055 (validRegex!6963 lt!2215117)))

(assert (=> d!1732055 (= lt!2215117 (generalisedUnion!1156 (unfocusZipperList!669 zl!343)))))

(assert (=> d!1732055 (= (unfocusZipper!969 zl!343) lt!2215117)))

(declare-fun bs!1254714 () Bool)

(assert (= bs!1254714 d!1732055))

(declare-fun m!6455698 () Bool)

(assert (=> bs!1254714 m!6455698))

(assert (=> bs!1254714 m!6455606))

(assert (=> bs!1254714 m!6455606))

(assert (=> bs!1254714 m!6455608))

(assert (=> b!5433089 d!1732055))

(declare-fun d!1732057 () Bool)

(declare-fun c!948128 () Bool)

(declare-fun isEmpty!33862 (List!61981) Bool)

(assert (=> d!1732057 (= c!948128 (isEmpty!33862 s!2326))))

(declare-fun e!3366383 () Bool)

(assert (=> d!1732057 (= (matchZipper!1471 lt!2215114 s!2326) e!3366383)))

(declare-fun b!5433134 () Bool)

(declare-fun nullableZipper!1469 ((InoxSet Context!9222)) Bool)

(assert (=> b!5433134 (= e!3366383 (nullableZipper!1469 lt!2215114))))

(declare-fun b!5433135 () Bool)

(declare-fun head!11655 (List!61981) C!30724)

(declare-fun tail!10752 (List!61981) List!61981)

(assert (=> b!5433135 (= e!3366383 (matchZipper!1471 (derivationStepZipper!1466 lt!2215114 (head!11655 s!2326)) (tail!10752 s!2326)))))

(assert (= (and d!1732057 c!948128) b!5433134))

(assert (= (and d!1732057 (not c!948128)) b!5433135))

(declare-fun m!6455700 () Bool)

(assert (=> d!1732057 m!6455700))

(declare-fun m!6455702 () Bool)

(assert (=> b!5433134 m!6455702))

(declare-fun m!6455704 () Bool)

(assert (=> b!5433135 m!6455704))

(assert (=> b!5433135 m!6455704))

(declare-fun m!6455706 () Bool)

(assert (=> b!5433135 m!6455706))

(declare-fun m!6455708 () Bool)

(assert (=> b!5433135 m!6455708))

(assert (=> b!5433135 m!6455706))

(assert (=> b!5433135 m!6455708))

(declare-fun m!6455710 () Bool)

(assert (=> b!5433135 m!6455710))

(assert (=> b!5433106 d!1732057))

(declare-fun d!1732059 () Bool)

(declare-fun c!948129 () Bool)

(assert (=> d!1732059 (= c!948129 (isEmpty!33862 (t!375206 s!2326)))))

(declare-fun e!3366384 () Bool)

(assert (=> d!1732059 (= (matchZipper!1471 lt!2215101 (t!375206 s!2326)) e!3366384)))

(declare-fun b!5433136 () Bool)

(assert (=> b!5433136 (= e!3366384 (nullableZipper!1469 lt!2215101))))

(declare-fun b!5433137 () Bool)

(assert (=> b!5433137 (= e!3366384 (matchZipper!1471 (derivationStepZipper!1466 lt!2215101 (head!11655 (t!375206 s!2326))) (tail!10752 (t!375206 s!2326))))))

(assert (= (and d!1732059 c!948129) b!5433136))

(assert (= (and d!1732059 (not c!948129)) b!5433137))

(declare-fun m!6455712 () Bool)

(assert (=> d!1732059 m!6455712))

(declare-fun m!6455714 () Bool)

(assert (=> b!5433136 m!6455714))

(declare-fun m!6455716 () Bool)

(assert (=> b!5433137 m!6455716))

(assert (=> b!5433137 m!6455716))

(declare-fun m!6455718 () Bool)

(assert (=> b!5433137 m!6455718))

(declare-fun m!6455720 () Bool)

(assert (=> b!5433137 m!6455720))

(assert (=> b!5433137 m!6455718))

(assert (=> b!5433137 m!6455720))

(declare-fun m!6455722 () Bool)

(assert (=> b!5433137 m!6455722))

(assert (=> b!5433106 d!1732059))

(declare-fun bs!1254715 () Bool)

(declare-fun d!1732061 () Bool)

(assert (= bs!1254715 (and d!1732061 d!1732053)))

(declare-fun lambda!285235 () Int)

(assert (=> bs!1254715 (= lambda!285235 lambda!285232)))

(declare-fun e!3366402 () Bool)

(assert (=> d!1732061 e!3366402))

(declare-fun res!2312121 () Bool)

(assert (=> d!1732061 (=> (not res!2312121) (not e!3366402))))

(declare-fun lt!2215120 () Regex!15227)

(assert (=> d!1732061 (= res!2312121 (validRegex!6963 lt!2215120))))

(declare-fun e!3366401 () Regex!15227)

(assert (=> d!1732061 (= lt!2215120 e!3366401)))

(declare-fun c!948139 () Bool)

(declare-fun e!3366400 () Bool)

(assert (=> d!1732061 (= c!948139 e!3366400)))

(declare-fun res!2312120 () Bool)

(assert (=> d!1732061 (=> (not res!2312120) (not e!3366400))))

(assert (=> d!1732061 (= res!2312120 ((_ is Cons!61856) (exprs!5111 (h!68306 zl!343))))))

(assert (=> d!1732061 (forall!14567 (exprs!5111 (h!68306 zl!343)) lambda!285235)))

(assert (=> d!1732061 (= (generalisedConcat!896 (exprs!5111 (h!68306 zl!343))) lt!2215120)))

(declare-fun b!5433158 () Bool)

(declare-fun e!3366397 () Regex!15227)

(assert (=> b!5433158 (= e!3366401 e!3366397)))

(declare-fun c!948140 () Bool)

(assert (=> b!5433158 (= c!948140 ((_ is Cons!61856) (exprs!5111 (h!68306 zl!343))))))

(declare-fun b!5433159 () Bool)

(declare-fun e!3366399 () Bool)

(assert (=> b!5433159 (= e!3366402 e!3366399)))

(declare-fun c!948138 () Bool)

(assert (=> b!5433159 (= c!948138 (isEmpty!33860 (exprs!5111 (h!68306 zl!343))))))

(declare-fun b!5433160 () Bool)

(assert (=> b!5433160 (= e!3366397 EmptyExpr!15227)))

(declare-fun b!5433161 () Bool)

(assert (=> b!5433161 (= e!3366401 (h!68304 (exprs!5111 (h!68306 zl!343))))))

(declare-fun b!5433162 () Bool)

(declare-fun isEmptyExpr!1001 (Regex!15227) Bool)

(assert (=> b!5433162 (= e!3366399 (isEmptyExpr!1001 lt!2215120))))

(declare-fun b!5433163 () Bool)

(declare-fun e!3366398 () Bool)

(declare-fun isConcat!524 (Regex!15227) Bool)

(assert (=> b!5433163 (= e!3366398 (isConcat!524 lt!2215120))))

(declare-fun b!5433164 () Bool)

(declare-fun head!11656 (List!61980) Regex!15227)

(assert (=> b!5433164 (= e!3366398 (= lt!2215120 (head!11656 (exprs!5111 (h!68306 zl!343)))))))

(declare-fun b!5433165 () Bool)

(assert (=> b!5433165 (= e!3366399 e!3366398)))

(declare-fun c!948141 () Bool)

(declare-fun tail!10753 (List!61980) List!61980)

(assert (=> b!5433165 (= c!948141 (isEmpty!33860 (tail!10753 (exprs!5111 (h!68306 zl!343)))))))

(declare-fun b!5433166 () Bool)

(assert (=> b!5433166 (= e!3366400 (isEmpty!33860 (t!375205 (exprs!5111 (h!68306 zl!343)))))))

(declare-fun b!5433167 () Bool)

(assert (=> b!5433167 (= e!3366397 (Concat!24072 (h!68304 (exprs!5111 (h!68306 zl!343))) (generalisedConcat!896 (t!375205 (exprs!5111 (h!68306 zl!343))))))))

(assert (= (and d!1732061 res!2312120) b!5433166))

(assert (= (and d!1732061 c!948139) b!5433161))

(assert (= (and d!1732061 (not c!948139)) b!5433158))

(assert (= (and b!5433158 c!948140) b!5433167))

(assert (= (and b!5433158 (not c!948140)) b!5433160))

(assert (= (and d!1732061 res!2312121) b!5433159))

(assert (= (and b!5433159 c!948138) b!5433162))

(assert (= (and b!5433159 (not c!948138)) b!5433165))

(assert (= (and b!5433165 c!948141) b!5433164))

(assert (= (and b!5433165 (not c!948141)) b!5433163))

(assert (=> b!5433166 m!6455596))

(assert (=> b!5433167 m!6455602))

(declare-fun m!6455724 () Bool)

(assert (=> b!5433164 m!6455724))

(declare-fun m!6455726 () Bool)

(assert (=> d!1732061 m!6455726))

(declare-fun m!6455728 () Bool)

(assert (=> d!1732061 m!6455728))

(declare-fun m!6455730 () Bool)

(assert (=> b!5433159 m!6455730))

(declare-fun m!6455732 () Bool)

(assert (=> b!5433162 m!6455732))

(declare-fun m!6455734 () Bool)

(assert (=> b!5433163 m!6455734))

(declare-fun m!6455736 () Bool)

(assert (=> b!5433165 m!6455736))

(assert (=> b!5433165 m!6455736))

(declare-fun m!6455738 () Bool)

(assert (=> b!5433165 m!6455738))

(assert (=> b!5433086 d!1732061))

(declare-fun b!5433178 () Bool)

(declare-fun e!3366410 () (InoxSet Context!9222))

(assert (=> b!5433178 (= e!3366410 ((as const (Array Context!9222 Bool)) false))))

(declare-fun b!5433179 () Bool)

(declare-fun e!3366409 () Bool)

(assert (=> b!5433179 (= e!3366409 (nullable!5396 (h!68304 (exprs!5111 lt!2215109))))))

(declare-fun d!1732063 () Bool)

(declare-fun c!948146 () Bool)

(assert (=> d!1732063 (= c!948146 e!3366409)))

(declare-fun res!2312124 () Bool)

(assert (=> d!1732063 (=> (not res!2312124) (not e!3366409))))

(assert (=> d!1732063 (= res!2312124 ((_ is Cons!61856) (exprs!5111 lt!2215109)))))

(declare-fun e!3366411 () (InoxSet Context!9222))

(assert (=> d!1732063 (= (derivationStepZipperUp!599 lt!2215109 (h!68305 s!2326)) e!3366411)))

(declare-fun bm!389178 () Bool)

(declare-fun call!389183 () (InoxSet Context!9222))

(assert (=> bm!389178 (= call!389183 (derivationStepZipperDown!675 (h!68304 (exprs!5111 lt!2215109)) (Context!9223 (t!375205 (exprs!5111 lt!2215109))) (h!68305 s!2326)))))

(declare-fun b!5433180 () Bool)

(assert (=> b!5433180 (= e!3366411 ((_ map or) call!389183 (derivationStepZipperUp!599 (Context!9223 (t!375205 (exprs!5111 lt!2215109))) (h!68305 s!2326))))))

(declare-fun b!5433181 () Bool)

(assert (=> b!5433181 (= e!3366411 e!3366410)))

(declare-fun c!948147 () Bool)

(assert (=> b!5433181 (= c!948147 ((_ is Cons!61856) (exprs!5111 lt!2215109)))))

(declare-fun b!5433182 () Bool)

(assert (=> b!5433182 (= e!3366410 call!389183)))

(assert (= (and d!1732063 res!2312124) b!5433179))

(assert (= (and d!1732063 c!948146) b!5433180))

(assert (= (and d!1732063 (not c!948146)) b!5433181))

(assert (= (and b!5433181 c!948147) b!5433182))

(assert (= (and b!5433181 (not c!948147)) b!5433178))

(assert (= (or b!5433180 b!5433182) bm!389178))

(declare-fun m!6455740 () Bool)

(assert (=> b!5433179 m!6455740))

(declare-fun m!6455742 () Bool)

(assert (=> bm!389178 m!6455742))

(declare-fun m!6455744 () Bool)

(assert (=> b!5433180 m!6455744))

(assert (=> b!5433087 d!1732063))

(declare-fun d!1732065 () Bool)

(declare-fun choose!41217 ((InoxSet Context!9222) Int) (InoxSet Context!9222))

(assert (=> d!1732065 (= (flatMap!954 lt!2215112 lambda!285229) (choose!41217 lt!2215112 lambda!285229))))

(declare-fun bs!1254716 () Bool)

(assert (= bs!1254716 d!1732065))

(declare-fun m!6455746 () Bool)

(assert (=> bs!1254716 m!6455746))

(assert (=> b!5433087 d!1732065))

(declare-fun d!1732067 () Bool)

(declare-fun dynLambda!24374 (Int Context!9222) (InoxSet Context!9222))

(assert (=> d!1732067 (= (flatMap!954 lt!2215097 lambda!285229) (dynLambda!24374 lambda!285229 lt!2215109))))

(declare-fun lt!2215123 () Unit!154430)

(declare-fun choose!41218 ((InoxSet Context!9222) Context!9222 Int) Unit!154430)

(assert (=> d!1732067 (= lt!2215123 (choose!41218 lt!2215097 lt!2215109 lambda!285229))))

(assert (=> d!1732067 (= lt!2215097 (store ((as const (Array Context!9222 Bool)) false) lt!2215109 true))))

(assert (=> d!1732067 (= (lemmaFlatMapOnSingletonSet!486 lt!2215097 lt!2215109 lambda!285229) lt!2215123)))

(declare-fun b_lambda!207309 () Bool)

(assert (=> (not b_lambda!207309) (not d!1732067)))

(declare-fun bs!1254717 () Bool)

(assert (= bs!1254717 d!1732067))

(assert (=> bs!1254717 m!6455642))

(declare-fun m!6455748 () Bool)

(assert (=> bs!1254717 m!6455748))

(declare-fun m!6455750 () Bool)

(assert (=> bs!1254717 m!6455750))

(assert (=> bs!1254717 m!6455638))

(assert (=> b!5433087 d!1732067))

(declare-fun d!1732069 () Bool)

(declare-fun lt!2215124 () Regex!15227)

(assert (=> d!1732069 (validRegex!6963 lt!2215124)))

(assert (=> d!1732069 (= lt!2215124 (generalisedUnion!1156 (unfocusZipperList!669 (Cons!61858 lt!2215109 Nil!61858))))))

(assert (=> d!1732069 (= (unfocusZipper!969 (Cons!61858 lt!2215109 Nil!61858)) lt!2215124)))

(declare-fun bs!1254718 () Bool)

(assert (= bs!1254718 d!1732069))

(declare-fun m!6455752 () Bool)

(assert (=> bs!1254718 m!6455752))

(declare-fun m!6455754 () Bool)

(assert (=> bs!1254718 m!6455754))

(assert (=> bs!1254718 m!6455754))

(declare-fun m!6455756 () Bool)

(assert (=> bs!1254718 m!6455756))

(assert (=> b!5433087 d!1732069))

(declare-fun d!1732071 () Bool)

(assert (=> d!1732071 (= (flatMap!954 lt!2215112 lambda!285229) (dynLambda!24374 lambda!285229 lt!2215108))))

(declare-fun lt!2215125 () Unit!154430)

(assert (=> d!1732071 (= lt!2215125 (choose!41218 lt!2215112 lt!2215108 lambda!285229))))

(assert (=> d!1732071 (= lt!2215112 (store ((as const (Array Context!9222 Bool)) false) lt!2215108 true))))

(assert (=> d!1732071 (= (lemmaFlatMapOnSingletonSet!486 lt!2215112 lt!2215108 lambda!285229) lt!2215125)))

(declare-fun b_lambda!207311 () Bool)

(assert (=> (not b_lambda!207311) (not d!1732071)))

(declare-fun bs!1254719 () Bool)

(assert (= bs!1254719 d!1732071))

(assert (=> bs!1254719 m!6455648))

(declare-fun m!6455758 () Bool)

(assert (=> bs!1254719 m!6455758))

(declare-fun m!6455760 () Bool)

(assert (=> bs!1254719 m!6455760))

(assert (=> bs!1254719 m!6455640))

(assert (=> b!5433087 d!1732071))

(declare-fun d!1732073 () Bool)

(assert (=> d!1732073 (= (flatMap!954 lt!2215097 lambda!285229) (choose!41217 lt!2215097 lambda!285229))))

(declare-fun bs!1254720 () Bool)

(assert (= bs!1254720 d!1732073))

(declare-fun m!6455762 () Bool)

(assert (=> bs!1254720 m!6455762))

(assert (=> b!5433087 d!1732073))

(declare-fun b!5433183 () Bool)

(declare-fun e!3366413 () (InoxSet Context!9222))

(assert (=> b!5433183 (= e!3366413 ((as const (Array Context!9222 Bool)) false))))

(declare-fun b!5433184 () Bool)

(declare-fun e!3366412 () Bool)

(assert (=> b!5433184 (= e!3366412 (nullable!5396 (h!68304 (exprs!5111 lt!2215108))))))

(declare-fun d!1732075 () Bool)

(declare-fun c!948148 () Bool)

(assert (=> d!1732075 (= c!948148 e!3366412)))

(declare-fun res!2312125 () Bool)

(assert (=> d!1732075 (=> (not res!2312125) (not e!3366412))))

(assert (=> d!1732075 (= res!2312125 ((_ is Cons!61856) (exprs!5111 lt!2215108)))))

(declare-fun e!3366414 () (InoxSet Context!9222))

(assert (=> d!1732075 (= (derivationStepZipperUp!599 lt!2215108 (h!68305 s!2326)) e!3366414)))

(declare-fun bm!389179 () Bool)

(declare-fun call!389184 () (InoxSet Context!9222))

(assert (=> bm!389179 (= call!389184 (derivationStepZipperDown!675 (h!68304 (exprs!5111 lt!2215108)) (Context!9223 (t!375205 (exprs!5111 lt!2215108))) (h!68305 s!2326)))))

(declare-fun b!5433185 () Bool)

(assert (=> b!5433185 (= e!3366414 ((_ map or) call!389184 (derivationStepZipperUp!599 (Context!9223 (t!375205 (exprs!5111 lt!2215108))) (h!68305 s!2326))))))

(declare-fun b!5433186 () Bool)

(assert (=> b!5433186 (= e!3366414 e!3366413)))

(declare-fun c!948149 () Bool)

(assert (=> b!5433186 (= c!948149 ((_ is Cons!61856) (exprs!5111 lt!2215108)))))

(declare-fun b!5433187 () Bool)

(assert (=> b!5433187 (= e!3366413 call!389184)))

(assert (= (and d!1732075 res!2312125) b!5433184))

(assert (= (and d!1732075 c!948148) b!5433185))

(assert (= (and d!1732075 (not c!948148)) b!5433186))

(assert (= (and b!5433186 c!948149) b!5433187))

(assert (= (and b!5433186 (not c!948149)) b!5433183))

(assert (= (or b!5433185 b!5433187) bm!389179))

(declare-fun m!6455764 () Bool)

(assert (=> b!5433184 m!6455764))

(declare-fun m!6455766 () Bool)

(assert (=> bm!389179 m!6455766))

(declare-fun m!6455768 () Bool)

(assert (=> b!5433185 m!6455768))

(assert (=> b!5433087 d!1732075))

(declare-fun d!1732077 () Bool)

(declare-fun lt!2215126 () Regex!15227)

(assert (=> d!1732077 (validRegex!6963 lt!2215126)))

(assert (=> d!1732077 (= lt!2215126 (generalisedUnion!1156 (unfocusZipperList!669 (Cons!61858 lt!2215092 Nil!61858))))))

(assert (=> d!1732077 (= (unfocusZipper!969 (Cons!61858 lt!2215092 Nil!61858)) lt!2215126)))

(declare-fun bs!1254721 () Bool)

(assert (= bs!1254721 d!1732077))

(declare-fun m!6455770 () Bool)

(assert (=> bs!1254721 m!6455770))

(declare-fun m!6455772 () Bool)

(assert (=> bs!1254721 m!6455772))

(assert (=> bs!1254721 m!6455772))

(declare-fun m!6455774 () Bool)

(assert (=> bs!1254721 m!6455774))

(assert (=> b!5433083 d!1732077))

(declare-fun b!5433254 () Bool)

(declare-fun c!948178 () Bool)

(assert (=> b!5433254 (= c!948178 ((_ is Union!15227) r!7292))))

(declare-fun e!3366457 () Int)

(declare-fun e!3366454 () Int)

(assert (=> b!5433254 (= e!3366457 e!3366454)))

(declare-fun b!5433255 () Bool)

(declare-fun e!3366459 () Bool)

(declare-fun e!3366453 () Bool)

(assert (=> b!5433255 (= e!3366459 e!3366453)))

(declare-fun res!2312149 () Bool)

(declare-fun lt!2215129 () Int)

(declare-fun call!389200 () Int)

(assert (=> b!5433255 (= res!2312149 (> lt!2215129 call!389200))))

(assert (=> b!5433255 (=> (not res!2312149) (not e!3366453))))

(declare-fun bm!389194 () Bool)

(declare-fun c!948176 () Bool)

(assert (=> bm!389194 (= call!389200 (regexDepth!183 (ite c!948176 (regOne!30967 r!7292) (regTwo!30966 r!7292))))))

(declare-fun bm!389195 () Bool)

(declare-fun call!389199 () Int)

(assert (=> bm!389195 (= call!389199 (regexDepth!183 (ite c!948178 (regOne!30967 r!7292) (regTwo!30966 r!7292))))))

(declare-fun call!389203 () Int)

(declare-fun c!948173 () Bool)

(declare-fun bm!389196 () Bool)

(assert (=> bm!389196 (= call!389203 (regexDepth!183 (ite c!948176 (regTwo!30967 r!7292) (ite c!948173 (regOne!30966 r!7292) (reg!15556 r!7292)))))))

(declare-fun b!5433256 () Bool)

(declare-fun e!3366461 () Int)

(assert (=> b!5433256 (= e!3366461 e!3366457)))

(declare-fun c!948177 () Bool)

(assert (=> b!5433256 (= c!948177 ((_ is Star!15227) r!7292))))

(declare-fun d!1732079 () Bool)

(declare-fun e!3366458 () Bool)

(assert (=> d!1732079 e!3366458))

(declare-fun res!2312148 () Bool)

(assert (=> d!1732079 (=> (not res!2312148) (not e!3366458))))

(assert (=> d!1732079 (= res!2312148 (> lt!2215129 0))))

(assert (=> d!1732079 (= lt!2215129 e!3366461)))

(declare-fun c!948175 () Bool)

(assert (=> d!1732079 (= c!948175 ((_ is ElementMatch!15227) r!7292))))

(assert (=> d!1732079 (= (regexDepth!183 r!7292) lt!2215129)))

(declare-fun b!5433257 () Bool)

(declare-fun c!948174 () Bool)

(assert (=> b!5433257 (= c!948174 ((_ is Star!15227) r!7292))))

(declare-fun e!3366462 () Bool)

(declare-fun e!3366456 () Bool)

(assert (=> b!5433257 (= e!3366462 e!3366456)))

(declare-fun bm!389197 () Bool)

(declare-fun call!389202 () Int)

(declare-fun call!389205 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!389197 (= call!389202 (maxBigInt!0 (ite c!948178 call!389199 call!389205) (ite c!948178 call!389205 call!389199)))))

(declare-fun b!5433258 () Bool)

(assert (=> b!5433258 (= e!3366458 e!3366459)))

(assert (=> b!5433258 (= c!948176 ((_ is Union!15227) r!7292))))

(declare-fun bm!389198 () Bool)

(declare-fun call!389204 () Int)

(assert (=> bm!389198 (= call!389204 call!389203)))

(declare-fun b!5433259 () Bool)

(declare-fun call!389201 () Int)

(assert (=> b!5433259 (= e!3366457 (+ 1 call!389201))))

(declare-fun b!5433260 () Bool)

(declare-fun e!3366455 () Int)

(assert (=> b!5433260 (= e!3366455 1)))

(declare-fun b!5433261 () Bool)

(assert (=> b!5433261 (= e!3366453 (> lt!2215129 call!389203))))

(declare-fun b!5433262 () Bool)

(declare-fun res!2312150 () Bool)

(declare-fun e!3366460 () Bool)

(assert (=> b!5433262 (=> (not res!2312150) (not e!3366460))))

(assert (=> b!5433262 (= res!2312150 (> lt!2215129 call!389204))))

(assert (=> b!5433262 (= e!3366462 e!3366460)))

(declare-fun b!5433263 () Bool)

(assert (=> b!5433263 (= e!3366460 (> lt!2215129 call!389200))))

(declare-fun b!5433264 () Bool)

(assert (=> b!5433264 (= e!3366459 e!3366462)))

(assert (=> b!5433264 (= c!948173 ((_ is Concat!24072) r!7292))))

(declare-fun b!5433265 () Bool)

(assert (=> b!5433265 (= e!3366454 (+ 1 call!389202))))

(declare-fun bm!389199 () Bool)

(assert (=> bm!389199 (= call!389205 call!389201)))

(declare-fun b!5433266 () Bool)

(assert (=> b!5433266 (= e!3366461 1)))

(declare-fun b!5433267 () Bool)

(assert (=> b!5433267 (= e!3366456 (= lt!2215129 1))))

(declare-fun b!5433268 () Bool)

(assert (=> b!5433268 (= e!3366455 (+ 1 call!389202))))

(declare-fun b!5433269 () Bool)

(assert (=> b!5433269 (= e!3366454 e!3366455)))

(declare-fun c!948172 () Bool)

(assert (=> b!5433269 (= c!948172 ((_ is Concat!24072) r!7292))))

(declare-fun b!5433270 () Bool)

(assert (=> b!5433270 (= e!3366456 (> lt!2215129 call!389204))))

(declare-fun bm!389200 () Bool)

(assert (=> bm!389200 (= call!389201 (regexDepth!183 (ite c!948177 (reg!15556 r!7292) (ite c!948178 (regTwo!30967 r!7292) (regOne!30966 r!7292)))))))

(assert (= (and d!1732079 c!948175) b!5433266))

(assert (= (and d!1732079 (not c!948175)) b!5433256))

(assert (= (and b!5433256 c!948177) b!5433259))

(assert (= (and b!5433256 (not c!948177)) b!5433254))

(assert (= (and b!5433254 c!948178) b!5433265))

(assert (= (and b!5433254 (not c!948178)) b!5433269))

(assert (= (and b!5433269 c!948172) b!5433268))

(assert (= (and b!5433269 (not c!948172)) b!5433260))

(assert (= (or b!5433265 b!5433268) bm!389199))

(assert (= (or b!5433265 b!5433268) bm!389195))

(assert (= (or b!5433265 b!5433268) bm!389197))

(assert (= (or b!5433259 bm!389199) bm!389200))

(assert (= (and d!1732079 res!2312148) b!5433258))

(assert (= (and b!5433258 c!948176) b!5433255))

(assert (= (and b!5433258 (not c!948176)) b!5433264))

(assert (= (and b!5433255 res!2312149) b!5433261))

(assert (= (and b!5433264 c!948173) b!5433262))

(assert (= (and b!5433264 (not c!948173)) b!5433257))

(assert (= (and b!5433262 res!2312150) b!5433263))

(assert (= (and b!5433257 c!948174) b!5433270))

(assert (= (and b!5433257 (not c!948174)) b!5433267))

(assert (= (or b!5433262 b!5433270) bm!389198))

(assert (= (or b!5433261 bm!389198) bm!389196))

(assert (= (or b!5433255 b!5433263) bm!389194))

(declare-fun m!6455776 () Bool)

(assert (=> bm!389200 m!6455776))

(declare-fun m!6455778 () Bool)

(assert (=> bm!389196 m!6455778))

(declare-fun m!6455780 () Bool)

(assert (=> bm!389197 m!6455780))

(declare-fun m!6455782 () Bool)

(assert (=> bm!389194 m!6455782))

(declare-fun m!6455784 () Bool)

(assert (=> bm!389195 m!6455784))

(assert (=> b!5433103 d!1732079))

(declare-fun b!5433271 () Bool)

(declare-fun c!948185 () Bool)

(assert (=> b!5433271 (= c!948185 ((_ is Union!15227) lt!2215076))))

(declare-fun e!3366467 () Int)

(declare-fun e!3366464 () Int)

(assert (=> b!5433271 (= e!3366467 e!3366464)))

(declare-fun b!5433272 () Bool)

(declare-fun e!3366469 () Bool)

(declare-fun e!3366463 () Bool)

(assert (=> b!5433272 (= e!3366469 e!3366463)))

(declare-fun res!2312152 () Bool)

(declare-fun lt!2215130 () Int)

(declare-fun call!389211 () Int)

(assert (=> b!5433272 (= res!2312152 (> lt!2215130 call!389211))))

(assert (=> b!5433272 (=> (not res!2312152) (not e!3366463))))

(declare-fun bm!389205 () Bool)

(declare-fun c!948183 () Bool)

(assert (=> bm!389205 (= call!389211 (regexDepth!183 (ite c!948183 (regOne!30967 lt!2215076) (regTwo!30966 lt!2215076))))))

(declare-fun bm!389206 () Bool)

(declare-fun call!389210 () Int)

(assert (=> bm!389206 (= call!389210 (regexDepth!183 (ite c!948185 (regOne!30967 lt!2215076) (regTwo!30966 lt!2215076))))))

(declare-fun c!948180 () Bool)

(declare-fun bm!389207 () Bool)

(declare-fun call!389214 () Int)

(assert (=> bm!389207 (= call!389214 (regexDepth!183 (ite c!948183 (regTwo!30967 lt!2215076) (ite c!948180 (regOne!30966 lt!2215076) (reg!15556 lt!2215076)))))))

(declare-fun b!5433273 () Bool)

(declare-fun e!3366471 () Int)

(assert (=> b!5433273 (= e!3366471 e!3366467)))

(declare-fun c!948184 () Bool)

(assert (=> b!5433273 (= c!948184 ((_ is Star!15227) lt!2215076))))

(declare-fun d!1732085 () Bool)

(declare-fun e!3366468 () Bool)

(assert (=> d!1732085 e!3366468))

(declare-fun res!2312151 () Bool)

(assert (=> d!1732085 (=> (not res!2312151) (not e!3366468))))

(assert (=> d!1732085 (= res!2312151 (> lt!2215130 0))))

(assert (=> d!1732085 (= lt!2215130 e!3366471)))

(declare-fun c!948182 () Bool)

(assert (=> d!1732085 (= c!948182 ((_ is ElementMatch!15227) lt!2215076))))

(assert (=> d!1732085 (= (regexDepth!183 lt!2215076) lt!2215130)))

(declare-fun b!5433274 () Bool)

(declare-fun c!948181 () Bool)

(assert (=> b!5433274 (= c!948181 ((_ is Star!15227) lt!2215076))))

(declare-fun e!3366472 () Bool)

(declare-fun e!3366466 () Bool)

(assert (=> b!5433274 (= e!3366472 e!3366466)))

(declare-fun call!389216 () Int)

(declare-fun bm!389208 () Bool)

(declare-fun call!389213 () Int)

(assert (=> bm!389208 (= call!389213 (maxBigInt!0 (ite c!948185 call!389210 call!389216) (ite c!948185 call!389216 call!389210)))))

(declare-fun b!5433275 () Bool)

(assert (=> b!5433275 (= e!3366468 e!3366469)))

(assert (=> b!5433275 (= c!948183 ((_ is Union!15227) lt!2215076))))

(declare-fun bm!389209 () Bool)

(declare-fun call!389215 () Int)

(assert (=> bm!389209 (= call!389215 call!389214)))

(declare-fun b!5433276 () Bool)

(declare-fun call!389212 () Int)

(assert (=> b!5433276 (= e!3366467 (+ 1 call!389212))))

(declare-fun b!5433277 () Bool)

(declare-fun e!3366465 () Int)

(assert (=> b!5433277 (= e!3366465 1)))

(declare-fun b!5433278 () Bool)

(assert (=> b!5433278 (= e!3366463 (> lt!2215130 call!389214))))

(declare-fun b!5433279 () Bool)

(declare-fun res!2312153 () Bool)

(declare-fun e!3366470 () Bool)

(assert (=> b!5433279 (=> (not res!2312153) (not e!3366470))))

(assert (=> b!5433279 (= res!2312153 (> lt!2215130 call!389215))))

(assert (=> b!5433279 (= e!3366472 e!3366470)))

(declare-fun b!5433280 () Bool)

(assert (=> b!5433280 (= e!3366470 (> lt!2215130 call!389211))))

(declare-fun b!5433281 () Bool)

(assert (=> b!5433281 (= e!3366469 e!3366472)))

(assert (=> b!5433281 (= c!948180 ((_ is Concat!24072) lt!2215076))))

(declare-fun b!5433282 () Bool)

(assert (=> b!5433282 (= e!3366464 (+ 1 call!389213))))

(declare-fun bm!389210 () Bool)

(assert (=> bm!389210 (= call!389216 call!389212)))

(declare-fun b!5433283 () Bool)

(assert (=> b!5433283 (= e!3366471 1)))

(declare-fun b!5433284 () Bool)

(assert (=> b!5433284 (= e!3366466 (= lt!2215130 1))))

(declare-fun b!5433285 () Bool)

(assert (=> b!5433285 (= e!3366465 (+ 1 call!389213))))

(declare-fun b!5433286 () Bool)

(assert (=> b!5433286 (= e!3366464 e!3366465)))

(declare-fun c!948179 () Bool)

(assert (=> b!5433286 (= c!948179 ((_ is Concat!24072) lt!2215076))))

(declare-fun b!5433287 () Bool)

(assert (=> b!5433287 (= e!3366466 (> lt!2215130 call!389215))))

(declare-fun bm!389211 () Bool)

(assert (=> bm!389211 (= call!389212 (regexDepth!183 (ite c!948184 (reg!15556 lt!2215076) (ite c!948185 (regTwo!30967 lt!2215076) (regOne!30966 lt!2215076)))))))

(assert (= (and d!1732085 c!948182) b!5433283))

(assert (= (and d!1732085 (not c!948182)) b!5433273))

(assert (= (and b!5433273 c!948184) b!5433276))

(assert (= (and b!5433273 (not c!948184)) b!5433271))

(assert (= (and b!5433271 c!948185) b!5433282))

(assert (= (and b!5433271 (not c!948185)) b!5433286))

(assert (= (and b!5433286 c!948179) b!5433285))

(assert (= (and b!5433286 (not c!948179)) b!5433277))

(assert (= (or b!5433282 b!5433285) bm!389210))

(assert (= (or b!5433282 b!5433285) bm!389206))

(assert (= (or b!5433282 b!5433285) bm!389208))

(assert (= (or b!5433276 bm!389210) bm!389211))

(assert (= (and d!1732085 res!2312151) b!5433275))

(assert (= (and b!5433275 c!948183) b!5433272))

(assert (= (and b!5433275 (not c!948183)) b!5433281))

(assert (= (and b!5433272 res!2312152) b!5433278))

(assert (= (and b!5433281 c!948180) b!5433279))

(assert (= (and b!5433281 (not c!948180)) b!5433274))

(assert (= (and b!5433279 res!2312153) b!5433280))

(assert (= (and b!5433274 c!948181) b!5433287))

(assert (= (and b!5433274 (not c!948181)) b!5433284))

(assert (= (or b!5433279 b!5433287) bm!389209))

(assert (= (or b!5433278 bm!389209) bm!389207))

(assert (= (or b!5433272 b!5433280) bm!389205))

(declare-fun m!6455786 () Bool)

(assert (=> bm!389211 m!6455786))

(declare-fun m!6455788 () Bool)

(assert (=> bm!389207 m!6455788))

(declare-fun m!6455790 () Bool)

(assert (=> bm!389208 m!6455790))

(declare-fun m!6455792 () Bool)

(assert (=> bm!389205 m!6455792))

(declare-fun m!6455794 () Bool)

(assert (=> bm!389206 m!6455794))

(assert (=> b!5433103 d!1732085))

(declare-fun bs!1254722 () Bool)

(declare-fun d!1732087 () Bool)

(assert (= bs!1254722 (and d!1732087 d!1732053)))

(declare-fun lambda!285240 () Int)

(assert (=> bs!1254722 (= lambda!285240 lambda!285232)))

(declare-fun bs!1254723 () Bool)

(assert (= bs!1254723 (and d!1732087 d!1732061)))

(assert (=> bs!1254723 (= lambda!285240 lambda!285235)))

(declare-fun e!3366478 () Bool)

(assert (=> d!1732087 e!3366478))

(declare-fun res!2312155 () Bool)

(assert (=> d!1732087 (=> (not res!2312155) (not e!3366478))))

(declare-fun lt!2215131 () Regex!15227)

(assert (=> d!1732087 (= res!2312155 (validRegex!6963 lt!2215131))))

(declare-fun e!3366477 () Regex!15227)

(assert (=> d!1732087 (= lt!2215131 e!3366477)))

(declare-fun c!948187 () Bool)

(declare-fun e!3366476 () Bool)

(assert (=> d!1732087 (= c!948187 e!3366476)))

(declare-fun res!2312154 () Bool)

(assert (=> d!1732087 (=> (not res!2312154) (not e!3366476))))

(assert (=> d!1732087 (= res!2312154 ((_ is Cons!61856) (t!375205 (exprs!5111 (h!68306 zl!343)))))))

(assert (=> d!1732087 (forall!14567 (t!375205 (exprs!5111 (h!68306 zl!343))) lambda!285240)))

(assert (=> d!1732087 (= (generalisedConcat!896 (t!375205 (exprs!5111 (h!68306 zl!343)))) lt!2215131)))

(declare-fun b!5433288 () Bool)

(declare-fun e!3366473 () Regex!15227)

(assert (=> b!5433288 (= e!3366477 e!3366473)))

(declare-fun c!948188 () Bool)

(assert (=> b!5433288 (= c!948188 ((_ is Cons!61856) (t!375205 (exprs!5111 (h!68306 zl!343)))))))

(declare-fun b!5433289 () Bool)

(declare-fun e!3366475 () Bool)

(assert (=> b!5433289 (= e!3366478 e!3366475)))

(declare-fun c!948186 () Bool)

(assert (=> b!5433289 (= c!948186 (isEmpty!33860 (t!375205 (exprs!5111 (h!68306 zl!343)))))))

(declare-fun b!5433290 () Bool)

(assert (=> b!5433290 (= e!3366473 EmptyExpr!15227)))

(declare-fun b!5433291 () Bool)

(assert (=> b!5433291 (= e!3366477 (h!68304 (t!375205 (exprs!5111 (h!68306 zl!343)))))))

(declare-fun b!5433292 () Bool)

(assert (=> b!5433292 (= e!3366475 (isEmptyExpr!1001 lt!2215131))))

(declare-fun b!5433293 () Bool)

(declare-fun e!3366474 () Bool)

(assert (=> b!5433293 (= e!3366474 (isConcat!524 lt!2215131))))

(declare-fun b!5433294 () Bool)

(assert (=> b!5433294 (= e!3366474 (= lt!2215131 (head!11656 (t!375205 (exprs!5111 (h!68306 zl!343))))))))

(declare-fun b!5433295 () Bool)

(assert (=> b!5433295 (= e!3366475 e!3366474)))

(declare-fun c!948189 () Bool)

(assert (=> b!5433295 (= c!948189 (isEmpty!33860 (tail!10753 (t!375205 (exprs!5111 (h!68306 zl!343))))))))

(declare-fun b!5433296 () Bool)

(assert (=> b!5433296 (= e!3366476 (isEmpty!33860 (t!375205 (t!375205 (exprs!5111 (h!68306 zl!343))))))))

(declare-fun b!5433297 () Bool)

(assert (=> b!5433297 (= e!3366473 (Concat!24072 (h!68304 (t!375205 (exprs!5111 (h!68306 zl!343)))) (generalisedConcat!896 (t!375205 (t!375205 (exprs!5111 (h!68306 zl!343)))))))))

(assert (= (and d!1732087 res!2312154) b!5433296))

(assert (= (and d!1732087 c!948187) b!5433291))

(assert (= (and d!1732087 (not c!948187)) b!5433288))

(assert (= (and b!5433288 c!948188) b!5433297))

(assert (= (and b!5433288 (not c!948188)) b!5433290))

(assert (= (and d!1732087 res!2312155) b!5433289))

(assert (= (and b!5433289 c!948186) b!5433292))

(assert (= (and b!5433289 (not c!948186)) b!5433295))

(assert (= (and b!5433295 c!948189) b!5433294))

(assert (= (and b!5433295 (not c!948189)) b!5433293))

(declare-fun m!6455796 () Bool)

(assert (=> b!5433296 m!6455796))

(declare-fun m!6455798 () Bool)

(assert (=> b!5433297 m!6455798))

(declare-fun m!6455800 () Bool)

(assert (=> b!5433294 m!6455800))

(declare-fun m!6455802 () Bool)

(assert (=> d!1732087 m!6455802))

(declare-fun m!6455804 () Bool)

(assert (=> d!1732087 m!6455804))

(assert (=> b!5433289 m!6455596))

(declare-fun m!6455806 () Bool)

(assert (=> b!5433292 m!6455806))

(declare-fun m!6455808 () Bool)

(assert (=> b!5433293 m!6455808))

(declare-fun m!6455810 () Bool)

(assert (=> b!5433295 m!6455810))

(assert (=> b!5433295 m!6455810))

(declare-fun m!6455812 () Bool)

(assert (=> b!5433295 m!6455812))

(assert (=> b!5433103 d!1732087))

(declare-fun d!1732089 () Bool)

(assert (=> d!1732089 (= (isEmpty!33861 (t!375207 zl!343)) ((_ is Nil!61858) (t!375207 zl!343)))))

(assert (=> b!5433104 d!1732089))

(declare-fun d!1732091 () Bool)

(declare-fun e!3366488 () Bool)

(assert (=> d!1732091 e!3366488))

(declare-fun res!2312161 () Bool)

(assert (=> d!1732091 (=> (not res!2312161) (not e!3366488))))

(declare-fun lt!2215134 () List!61982)

(declare-fun noDuplicate!1419 (List!61982) Bool)

(assert (=> d!1732091 (= res!2312161 (noDuplicate!1419 lt!2215134))))

(declare-fun choose!41220 ((InoxSet Context!9222)) List!61982)

(assert (=> d!1732091 (= lt!2215134 (choose!41220 z!1189))))

(assert (=> d!1732091 (= (toList!9011 z!1189) lt!2215134)))

(declare-fun b!5433311 () Bool)

(declare-fun content!11136 (List!61982) (InoxSet Context!9222))

(assert (=> b!5433311 (= e!3366488 (= (content!11136 lt!2215134) z!1189))))

(assert (= (and d!1732091 res!2312161) b!5433311))

(declare-fun m!6455814 () Bool)

(assert (=> d!1732091 m!6455814))

(declare-fun m!6455816 () Bool)

(assert (=> d!1732091 m!6455816))

(declare-fun m!6455818 () Bool)

(assert (=> b!5433311 m!6455818))

(assert (=> b!5433084 d!1732091))

(declare-fun b!5433346 () Bool)

(assert (=> b!5433346 true))

(declare-fun bs!1254727 () Bool)

(declare-fun b!5433348 () Bool)

(assert (= bs!1254727 (and b!5433348 b!5433346)))

(declare-fun lt!2215146 () Int)

(declare-fun lt!2215147 () Int)

(declare-fun lambda!285250 () Int)

(declare-fun lambda!285251 () Int)

(assert (=> bs!1254727 (= (= lt!2215147 lt!2215146) (= lambda!285251 lambda!285250))))

(assert (=> b!5433348 true))

(declare-fun d!1732093 () Bool)

(declare-fun e!3366508 () Bool)

(assert (=> d!1732093 e!3366508))

(declare-fun res!2312180 () Bool)

(assert (=> d!1732093 (=> (not res!2312180) (not e!3366508))))

(assert (=> d!1732093 (= res!2312180 (>= lt!2215147 0))))

(declare-fun e!3366507 () Int)

(assert (=> d!1732093 (= lt!2215147 e!3366507)))

(declare-fun c!948208 () Bool)

(assert (=> d!1732093 (= c!948208 ((_ is Cons!61858) zl!343))))

(assert (=> d!1732093 (= (zipperDepth!168 zl!343) lt!2215147)))

(assert (=> b!5433346 (= e!3366507 lt!2215146)))

(declare-fun contextDepth!96 (Context!9222) Int)

(assert (=> b!5433346 (= lt!2215146 (maxBigInt!0 (contextDepth!96 (h!68306 zl!343)) (zipperDepth!168 (t!375207 zl!343))))))

(declare-fun lambda!285249 () Int)

(declare-fun lt!2215148 () Unit!154430)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!90 (List!61982 Int Int Int) Unit!154430)

(assert (=> b!5433346 (= lt!2215148 (lemmaForallContextDepthBiggerThanTransitive!90 (t!375207 zl!343) lt!2215146 (zipperDepth!168 (t!375207 zl!343)) lambda!285249))))

(declare-fun forall!14568 (List!61982 Int) Bool)

(assert (=> b!5433346 (forall!14568 (t!375207 zl!343) lambda!285250)))

(declare-fun lt!2215145 () Unit!154430)

(assert (=> b!5433346 (= lt!2215145 lt!2215148)))

(declare-fun b!5433347 () Bool)

(assert (=> b!5433347 (= e!3366507 0)))

(assert (=> b!5433348 (= e!3366508 (forall!14568 zl!343 lambda!285251))))

(assert (= (and d!1732093 c!948208) b!5433346))

(assert (= (and d!1732093 (not c!948208)) b!5433347))

(assert (= (and d!1732093 res!2312180) b!5433348))

(declare-fun m!6455828 () Bool)

(assert (=> b!5433346 m!6455828))

(declare-fun m!6455830 () Bool)

(assert (=> b!5433346 m!6455830))

(declare-fun m!6455832 () Bool)

(assert (=> b!5433346 m!6455832))

(assert (=> b!5433346 m!6455830))

(declare-fun m!6455834 () Bool)

(assert (=> b!5433346 m!6455834))

(assert (=> b!5433346 m!6455828))

(assert (=> b!5433346 m!6455830))

(declare-fun m!6455836 () Bool)

(assert (=> b!5433346 m!6455836))

(declare-fun m!6455838 () Bool)

(assert (=> b!5433348 m!6455838))

(assert (=> b!5433085 d!1732093))

(declare-fun bs!1254728 () Bool)

(declare-fun b!5433365 () Bool)

(assert (= bs!1254728 (and b!5433365 b!5433346)))

(declare-fun lambda!285252 () Int)

(assert (=> bs!1254728 (= lambda!285252 lambda!285249)))

(declare-fun lambda!285253 () Int)

(declare-fun lt!2215151 () Int)

(assert (=> bs!1254728 (= (= lt!2215151 lt!2215146) (= lambda!285253 lambda!285250))))

(declare-fun bs!1254729 () Bool)

(assert (= bs!1254729 (and b!5433365 b!5433348)))

(assert (=> bs!1254729 (= (= lt!2215151 lt!2215147) (= lambda!285253 lambda!285251))))

(assert (=> b!5433365 true))

(declare-fun bs!1254730 () Bool)

(declare-fun b!5433367 () Bool)

(assert (= bs!1254730 (and b!5433367 b!5433346)))

(declare-fun lambda!285254 () Int)

(declare-fun lt!2215152 () Int)

(assert (=> bs!1254730 (= (= lt!2215152 lt!2215146) (= lambda!285254 lambda!285250))))

(declare-fun bs!1254731 () Bool)

(assert (= bs!1254731 (and b!5433367 b!5433348)))

(assert (=> bs!1254731 (= (= lt!2215152 lt!2215147) (= lambda!285254 lambda!285251))))

(declare-fun bs!1254732 () Bool)

(assert (= bs!1254732 (and b!5433367 b!5433365)))

(assert (=> bs!1254732 (= (= lt!2215152 lt!2215151) (= lambda!285254 lambda!285253))))

(assert (=> b!5433367 true))

(declare-fun d!1732097 () Bool)

(declare-fun e!3366517 () Bool)

(assert (=> d!1732097 e!3366517))

(declare-fun res!2312189 () Bool)

(assert (=> d!1732097 (=> (not res!2312189) (not e!3366517))))

(assert (=> d!1732097 (= res!2312189 (>= lt!2215152 0))))

(declare-fun e!3366516 () Int)

(assert (=> d!1732097 (= lt!2215152 e!3366516)))

(declare-fun c!948212 () Bool)

(assert (=> d!1732097 (= c!948212 ((_ is Cons!61858) lt!2215098))))

(assert (=> d!1732097 (= (zipperDepth!168 lt!2215098) lt!2215152)))

(assert (=> b!5433365 (= e!3366516 lt!2215151)))

(assert (=> b!5433365 (= lt!2215151 (maxBigInt!0 (contextDepth!96 (h!68306 lt!2215098)) (zipperDepth!168 (t!375207 lt!2215098))))))

(declare-fun lt!2215153 () Unit!154430)

(assert (=> b!5433365 (= lt!2215153 (lemmaForallContextDepthBiggerThanTransitive!90 (t!375207 lt!2215098) lt!2215151 (zipperDepth!168 (t!375207 lt!2215098)) lambda!285252))))

(assert (=> b!5433365 (forall!14568 (t!375207 lt!2215098) lambda!285253)))

(declare-fun lt!2215150 () Unit!154430)

(assert (=> b!5433365 (= lt!2215150 lt!2215153)))

(declare-fun b!5433366 () Bool)

(assert (=> b!5433366 (= e!3366516 0)))

(assert (=> b!5433367 (= e!3366517 (forall!14568 lt!2215098 lambda!285254))))

(assert (= (and d!1732097 c!948212) b!5433365))

(assert (= (and d!1732097 (not c!948212)) b!5433366))

(assert (= (and d!1732097 res!2312189) b!5433367))

(declare-fun m!6455852 () Bool)

(assert (=> b!5433365 m!6455852))

(declare-fun m!6455854 () Bool)

(assert (=> b!5433365 m!6455854))

(declare-fun m!6455856 () Bool)

(assert (=> b!5433365 m!6455856))

(assert (=> b!5433365 m!6455854))

(declare-fun m!6455858 () Bool)

(assert (=> b!5433365 m!6455858))

(assert (=> b!5433365 m!6455852))

(assert (=> b!5433365 m!6455854))

(declare-fun m!6455860 () Bool)

(assert (=> b!5433365 m!6455860))

(declare-fun m!6455862 () Bool)

(assert (=> b!5433367 m!6455862))

(assert (=> b!5433085 d!1732097))

(declare-fun d!1732101 () Bool)

(declare-fun lt!2215154 () Regex!15227)

(assert (=> d!1732101 (validRegex!6963 lt!2215154)))

(assert (=> d!1732101 (= lt!2215154 (generalisedUnion!1156 (unfocusZipperList!669 (Cons!61858 lt!2215108 Nil!61858))))))

(assert (=> d!1732101 (= (unfocusZipper!969 (Cons!61858 lt!2215108 Nil!61858)) lt!2215154)))

(declare-fun bs!1254733 () Bool)

(assert (= bs!1254733 d!1732101))

(declare-fun m!6455864 () Bool)

(assert (=> bs!1254733 m!6455864))

(declare-fun m!6455866 () Bool)

(assert (=> bs!1254733 m!6455866))

(assert (=> bs!1254733 m!6455866))

(declare-fun m!6455868 () Bool)

(assert (=> bs!1254733 m!6455868))

(assert (=> b!5433105 d!1732101))

(declare-fun e!3366520 () Bool)

(declare-fun d!1732103 () Bool)

(assert (=> d!1732103 (= (matchZipper!1471 ((_ map or) lt!2215096 lt!2215107) (t!375206 s!2326)) e!3366520)))

(declare-fun res!2312192 () Bool)

(assert (=> d!1732103 (=> res!2312192 e!3366520)))

(assert (=> d!1732103 (= res!2312192 (matchZipper!1471 lt!2215096 (t!375206 s!2326)))))

(declare-fun lt!2215160 () Unit!154430)

(declare-fun choose!41221 ((InoxSet Context!9222) (InoxSet Context!9222) List!61981) Unit!154430)

(assert (=> d!1732103 (= lt!2215160 (choose!41221 lt!2215096 lt!2215107 (t!375206 s!2326)))))

(assert (=> d!1732103 (= (lemmaZipperConcatMatchesSameAsBothZippers!464 lt!2215096 lt!2215107 (t!375206 s!2326)) lt!2215160)))

(declare-fun b!5433370 () Bool)

(assert (=> b!5433370 (= e!3366520 (matchZipper!1471 lt!2215107 (t!375206 s!2326)))))

(assert (= (and d!1732103 (not res!2312192)) b!5433370))

(assert (=> d!1732103 m!6455592))

(assert (=> d!1732103 m!6455590))

(declare-fun m!6455872 () Bool)

(assert (=> d!1732103 m!6455872))

(assert (=> b!5433370 m!6455562))

(assert (=> b!5433081 d!1732103))

(declare-fun d!1732107 () Bool)

(declare-fun c!948213 () Bool)

(assert (=> d!1732107 (= c!948213 (isEmpty!33862 (t!375206 s!2326)))))

(declare-fun e!3366521 () Bool)

(assert (=> d!1732107 (= (matchZipper!1471 lt!2215096 (t!375206 s!2326)) e!3366521)))

(declare-fun b!5433371 () Bool)

(assert (=> b!5433371 (= e!3366521 (nullableZipper!1469 lt!2215096))))

(declare-fun b!5433372 () Bool)

(assert (=> b!5433372 (= e!3366521 (matchZipper!1471 (derivationStepZipper!1466 lt!2215096 (head!11655 (t!375206 s!2326))) (tail!10752 (t!375206 s!2326))))))

(assert (= (and d!1732107 c!948213) b!5433371))

(assert (= (and d!1732107 (not c!948213)) b!5433372))

(assert (=> d!1732107 m!6455712))

(declare-fun m!6455874 () Bool)

(assert (=> b!5433371 m!6455874))

(assert (=> b!5433372 m!6455716))

(assert (=> b!5433372 m!6455716))

(declare-fun m!6455876 () Bool)

(assert (=> b!5433372 m!6455876))

(assert (=> b!5433372 m!6455720))

(assert (=> b!5433372 m!6455876))

(assert (=> b!5433372 m!6455720))

(declare-fun m!6455878 () Bool)

(assert (=> b!5433372 m!6455878))

(assert (=> b!5433081 d!1732107))

(declare-fun d!1732109 () Bool)

(declare-fun c!948214 () Bool)

(assert (=> d!1732109 (= c!948214 (isEmpty!33862 (t!375206 s!2326)))))

(declare-fun e!3366522 () Bool)

(assert (=> d!1732109 (= (matchZipper!1471 ((_ map or) lt!2215096 lt!2215107) (t!375206 s!2326)) e!3366522)))

(declare-fun b!5433373 () Bool)

(assert (=> b!5433373 (= e!3366522 (nullableZipper!1469 ((_ map or) lt!2215096 lt!2215107)))))

(declare-fun b!5433374 () Bool)

(assert (=> b!5433374 (= e!3366522 (matchZipper!1471 (derivationStepZipper!1466 ((_ map or) lt!2215096 lt!2215107) (head!11655 (t!375206 s!2326))) (tail!10752 (t!375206 s!2326))))))

(assert (= (and d!1732109 c!948214) b!5433373))

(assert (= (and d!1732109 (not c!948214)) b!5433374))

(assert (=> d!1732109 m!6455712))

(declare-fun m!6455880 () Bool)

(assert (=> b!5433373 m!6455880))

(assert (=> b!5433374 m!6455716))

(assert (=> b!5433374 m!6455716))

(declare-fun m!6455882 () Bool)

(assert (=> b!5433374 m!6455882))

(assert (=> b!5433374 m!6455720))

(assert (=> b!5433374 m!6455882))

(assert (=> b!5433374 m!6455720))

(declare-fun m!6455884 () Bool)

(assert (=> b!5433374 m!6455884))

(assert (=> b!5433081 d!1732109))

(declare-fun b!5433425 () Bool)

(declare-fun e!3366554 () Bool)

(declare-fun e!3366556 () Bool)

(assert (=> b!5433425 (= e!3366554 e!3366556)))

(declare-fun c!948230 () Bool)

(assert (=> b!5433425 (= c!948230 ((_ is Union!15227) (regTwo!30966 r!7292)))))

(declare-fun bm!389226 () Bool)

(declare-fun call!389231 () Bool)

(declare-fun call!389232 () Bool)

(assert (=> bm!389226 (= call!389231 call!389232)))

(declare-fun b!5433426 () Bool)

(declare-fun e!3366558 () Bool)

(declare-fun call!389233 () Bool)

(assert (=> b!5433426 (= e!3366558 call!389233)))

(declare-fun b!5433427 () Bool)

(declare-fun e!3366557 () Bool)

(declare-fun e!3366555 () Bool)

(assert (=> b!5433427 (= e!3366557 e!3366555)))

(declare-fun res!2312217 () Bool)

(assert (=> b!5433427 (=> (not res!2312217) (not e!3366555))))

(assert (=> b!5433427 (= res!2312217 call!389231)))

(declare-fun bm!389227 () Bool)

(assert (=> bm!389227 (= call!389233 (validRegex!6963 (ite c!948230 (regTwo!30967 (regTwo!30966 r!7292)) (regTwo!30966 (regTwo!30966 r!7292)))))))

(declare-fun b!5433428 () Bool)

(declare-fun e!3366560 () Bool)

(assert (=> b!5433428 (= e!3366554 e!3366560)))

(declare-fun res!2312215 () Bool)

(assert (=> b!5433428 (= res!2312215 (not (nullable!5396 (reg!15556 (regTwo!30966 r!7292)))))))

(assert (=> b!5433428 (=> (not res!2312215) (not e!3366560))))

(declare-fun b!5433429 () Bool)

(assert (=> b!5433429 (= e!3366555 call!389233)))

(declare-fun b!5433430 () Bool)

(declare-fun e!3366559 () Bool)

(assert (=> b!5433430 (= e!3366559 e!3366554)))

(declare-fun c!948229 () Bool)

(assert (=> b!5433430 (= c!948229 ((_ is Star!15227) (regTwo!30966 r!7292)))))

(declare-fun b!5433431 () Bool)

(declare-fun res!2312214 () Bool)

(assert (=> b!5433431 (=> res!2312214 e!3366557)))

(assert (=> b!5433431 (= res!2312214 (not ((_ is Concat!24072) (regTwo!30966 r!7292))))))

(assert (=> b!5433431 (= e!3366556 e!3366557)))

(declare-fun b!5433424 () Bool)

(declare-fun res!2312216 () Bool)

(assert (=> b!5433424 (=> (not res!2312216) (not e!3366558))))

(assert (=> b!5433424 (= res!2312216 call!389231)))

(assert (=> b!5433424 (= e!3366556 e!3366558)))

(declare-fun d!1732111 () Bool)

(declare-fun res!2312218 () Bool)

(assert (=> d!1732111 (=> res!2312218 e!3366559)))

(assert (=> d!1732111 (= res!2312218 ((_ is ElementMatch!15227) (regTwo!30966 r!7292)))))

(assert (=> d!1732111 (= (validRegex!6963 (regTwo!30966 r!7292)) e!3366559)))

(declare-fun b!5433432 () Bool)

(assert (=> b!5433432 (= e!3366560 call!389232)))

(declare-fun bm!389228 () Bool)

(assert (=> bm!389228 (= call!389232 (validRegex!6963 (ite c!948229 (reg!15556 (regTwo!30966 r!7292)) (ite c!948230 (regOne!30967 (regTwo!30966 r!7292)) (regOne!30966 (regTwo!30966 r!7292))))))))

(assert (= (and d!1732111 (not res!2312218)) b!5433430))

(assert (= (and b!5433430 c!948229) b!5433428))

(assert (= (and b!5433430 (not c!948229)) b!5433425))

(assert (= (and b!5433428 res!2312215) b!5433432))

(assert (= (and b!5433425 c!948230) b!5433424))

(assert (= (and b!5433425 (not c!948230)) b!5433431))

(assert (= (and b!5433424 res!2312216) b!5433426))

(assert (= (and b!5433431 (not res!2312214)) b!5433427))

(assert (= (and b!5433427 res!2312217) b!5433429))

(assert (= (or b!5433426 b!5433429) bm!389227))

(assert (= (or b!5433424 b!5433427) bm!389226))

(assert (= (or b!5433432 bm!389226) bm!389228))

(declare-fun m!6455914 () Bool)

(assert (=> bm!389227 m!6455914))

(declare-fun m!6455916 () Bool)

(assert (=> b!5433428 m!6455916))

(declare-fun m!6455918 () Bool)

(assert (=> bm!389228 m!6455918))

(assert (=> b!5433101 d!1732111))

(declare-fun b!5433485 () Bool)

(declare-fun e!3366590 () Bool)

(assert (=> b!5433485 (= e!3366590 (nullable!5396 lt!2215076))))

(declare-fun b!5433486 () Bool)

(declare-fun e!3366593 () Bool)

(assert (=> b!5433486 (= e!3366593 (= (head!11655 s!2326) (c!948125 lt!2215076)))))

(declare-fun b!5433487 () Bool)

(declare-fun derivativeStep!4291 (Regex!15227 C!30724) Regex!15227)

(assert (=> b!5433487 (= e!3366590 (matchR!7412 (derivativeStep!4291 lt!2215076 (head!11655 s!2326)) (tail!10752 s!2326)))))

(declare-fun bm!389243 () Bool)

(declare-fun call!389248 () Bool)

(assert (=> bm!389243 (= call!389248 (isEmpty!33862 s!2326))))

(declare-fun b!5433489 () Bool)

(declare-fun res!2312237 () Bool)

(assert (=> b!5433489 (=> (not res!2312237) (not e!3366593))))

(assert (=> b!5433489 (= res!2312237 (not call!389248))))

(declare-fun b!5433490 () Bool)

(declare-fun e!3366594 () Bool)

(declare-fun lt!2215168 () Bool)

(assert (=> b!5433490 (= e!3366594 (not lt!2215168))))

(declare-fun b!5433491 () Bool)

(declare-fun e!3366588 () Bool)

(declare-fun e!3366591 () Bool)

(assert (=> b!5433491 (= e!3366588 e!3366591)))

(declare-fun res!2312244 () Bool)

(assert (=> b!5433491 (=> (not res!2312244) (not e!3366591))))

(assert (=> b!5433491 (= res!2312244 (not lt!2215168))))

(declare-fun b!5433492 () Bool)

(declare-fun e!3366592 () Bool)

(assert (=> b!5433492 (= e!3366591 e!3366592)))

(declare-fun res!2312238 () Bool)

(assert (=> b!5433492 (=> res!2312238 e!3366592)))

(assert (=> b!5433492 (= res!2312238 call!389248)))

(declare-fun b!5433493 () Bool)

(declare-fun res!2312241 () Bool)

(assert (=> b!5433493 (=> res!2312241 e!3366588)))

(assert (=> b!5433493 (= res!2312241 e!3366593)))

(declare-fun res!2312239 () Bool)

(assert (=> b!5433493 (=> (not res!2312239) (not e!3366593))))

(assert (=> b!5433493 (= res!2312239 lt!2215168)))

(declare-fun b!5433494 () Bool)

(declare-fun res!2312243 () Bool)

(assert (=> b!5433494 (=> res!2312243 e!3366592)))

(assert (=> b!5433494 (= res!2312243 (not (isEmpty!33862 (tail!10752 s!2326))))))

(declare-fun b!5433495 () Bool)

(declare-fun res!2312242 () Bool)

(assert (=> b!5433495 (=> res!2312242 e!3366588)))

(assert (=> b!5433495 (= res!2312242 (not ((_ is ElementMatch!15227) lt!2215076)))))

(assert (=> b!5433495 (= e!3366594 e!3366588)))

(declare-fun b!5433496 () Bool)

(declare-fun res!2312240 () Bool)

(assert (=> b!5433496 (=> (not res!2312240) (not e!3366593))))

(assert (=> b!5433496 (= res!2312240 (isEmpty!33862 (tail!10752 s!2326)))))

(declare-fun d!1732121 () Bool)

(declare-fun e!3366589 () Bool)

(assert (=> d!1732121 e!3366589))

(declare-fun c!948248 () Bool)

(assert (=> d!1732121 (= c!948248 ((_ is EmptyExpr!15227) lt!2215076))))

(assert (=> d!1732121 (= lt!2215168 e!3366590)))

(declare-fun c!948250 () Bool)

(assert (=> d!1732121 (= c!948250 (isEmpty!33862 s!2326))))

(assert (=> d!1732121 (validRegex!6963 lt!2215076)))

(assert (=> d!1732121 (= (matchR!7412 lt!2215076 s!2326) lt!2215168)))

(declare-fun b!5433488 () Bool)

(assert (=> b!5433488 (= e!3366589 (= lt!2215168 call!389248))))

(declare-fun b!5433497 () Bool)

(assert (=> b!5433497 (= e!3366589 e!3366594)))

(declare-fun c!948249 () Bool)

(assert (=> b!5433497 (= c!948249 ((_ is EmptyLang!15227) lt!2215076))))

(declare-fun b!5433498 () Bool)

(assert (=> b!5433498 (= e!3366592 (not (= (head!11655 s!2326) (c!948125 lt!2215076))))))

(assert (= (and d!1732121 c!948250) b!5433485))

(assert (= (and d!1732121 (not c!948250)) b!5433487))

(assert (= (and d!1732121 c!948248) b!5433488))

(assert (= (and d!1732121 (not c!948248)) b!5433497))

(assert (= (and b!5433497 c!948249) b!5433490))

(assert (= (and b!5433497 (not c!948249)) b!5433495))

(assert (= (and b!5433495 (not res!2312242)) b!5433493))

(assert (= (and b!5433493 res!2312239) b!5433489))

(assert (= (and b!5433489 res!2312237) b!5433496))

(assert (= (and b!5433496 res!2312240) b!5433486))

(assert (= (and b!5433493 (not res!2312241)) b!5433491))

(assert (= (and b!5433491 res!2312244) b!5433492))

(assert (= (and b!5433492 (not res!2312238)) b!5433494))

(assert (= (and b!5433494 (not res!2312243)) b!5433498))

(assert (= (or b!5433488 b!5433489 b!5433492) bm!389243))

(assert (=> b!5433496 m!6455708))

(assert (=> b!5433496 m!6455708))

(declare-fun m!6455934 () Bool)

(assert (=> b!5433496 m!6455934))

(assert (=> b!5433486 m!6455704))

(declare-fun m!6455936 () Bool)

(assert (=> b!5433485 m!6455936))

(assert (=> bm!389243 m!6455700))

(assert (=> b!5433487 m!6455704))

(assert (=> b!5433487 m!6455704))

(declare-fun m!6455938 () Bool)

(assert (=> b!5433487 m!6455938))

(assert (=> b!5433487 m!6455708))

(assert (=> b!5433487 m!6455938))

(assert (=> b!5433487 m!6455708))

(declare-fun m!6455940 () Bool)

(assert (=> b!5433487 m!6455940))

(assert (=> d!1732121 m!6455700))

(declare-fun m!6455942 () Bool)

(assert (=> d!1732121 m!6455942))

(assert (=> b!5433498 m!6455704))

(assert (=> b!5433494 m!6455708))

(assert (=> b!5433494 m!6455708))

(assert (=> b!5433494 m!6455934))

(assert (=> b!5433101 d!1732121))

(declare-fun d!1732129 () Bool)

(declare-fun c!948251 () Bool)

(assert (=> d!1732129 (= c!948251 (isEmpty!33862 s!2326))))

(declare-fun e!3366595 () Bool)

(assert (=> d!1732129 (= (matchZipper!1471 lt!2215104 s!2326) e!3366595)))

(declare-fun b!5433499 () Bool)

(assert (=> b!5433499 (= e!3366595 (nullableZipper!1469 lt!2215104))))

(declare-fun b!5433500 () Bool)

(assert (=> b!5433500 (= e!3366595 (matchZipper!1471 (derivationStepZipper!1466 lt!2215104 (head!11655 s!2326)) (tail!10752 s!2326)))))

(assert (= (and d!1732129 c!948251) b!5433499))

(assert (= (and d!1732129 (not c!948251)) b!5433500))

(assert (=> d!1732129 m!6455700))

(declare-fun m!6455944 () Bool)

(assert (=> b!5433499 m!6455944))

(assert (=> b!5433500 m!6455704))

(assert (=> b!5433500 m!6455704))

(declare-fun m!6455946 () Bool)

(assert (=> b!5433500 m!6455946))

(assert (=> b!5433500 m!6455708))

(assert (=> b!5433500 m!6455946))

(assert (=> b!5433500 m!6455708))

(declare-fun m!6455948 () Bool)

(assert (=> b!5433500 m!6455948))

(assert (=> b!5433101 d!1732129))

(declare-fun d!1732131 () Bool)

(assert (=> d!1732131 (= (matchR!7412 lt!2215076 s!2326) (matchZipper!1471 lt!2215104 s!2326))))

(declare-fun lt!2215171 () Unit!154430)

(declare-fun choose!41223 ((InoxSet Context!9222) List!61982 Regex!15227 List!61981) Unit!154430)

(assert (=> d!1732131 (= lt!2215171 (choose!41223 lt!2215104 lt!2215098 lt!2215076 s!2326))))

(assert (=> d!1732131 (validRegex!6963 lt!2215076)))

(assert (=> d!1732131 (= (theoremZipperRegexEquiv!531 lt!2215104 lt!2215098 lt!2215076 s!2326) lt!2215171)))

(declare-fun bs!1254745 () Bool)

(assert (= bs!1254745 d!1732131))

(assert (=> bs!1254745 m!6455688))

(assert (=> bs!1254745 m!6455690))

(declare-fun m!6455958 () Bool)

(assert (=> bs!1254745 m!6455958))

(assert (=> bs!1254745 m!6455942))

(assert (=> b!5433101 d!1732131))

(declare-fun bs!1254746 () Bool)

(declare-fun d!1732135 () Bool)

(assert (= bs!1254746 (and d!1732135 d!1732053)))

(declare-fun lambda!285262 () Int)

(assert (=> bs!1254746 (= lambda!285262 lambda!285232)))

(declare-fun bs!1254747 () Bool)

(assert (= bs!1254747 (and d!1732135 d!1732061)))

(assert (=> bs!1254747 (= lambda!285262 lambda!285235)))

(declare-fun bs!1254748 () Bool)

(assert (= bs!1254748 (and d!1732135 d!1732087)))

(assert (=> bs!1254748 (= lambda!285262 lambda!285240)))

(declare-fun b!5433562 () Bool)

(declare-fun e!3366633 () Bool)

(declare-fun e!3366636 () Bool)

(assert (=> b!5433562 (= e!3366633 e!3366636)))

(declare-fun c!948280 () Bool)

(assert (=> b!5433562 (= c!948280 (isEmpty!33860 (unfocusZipperList!669 zl!343)))))

(declare-fun b!5433563 () Bool)

(declare-fun e!3366635 () Regex!15227)

(assert (=> b!5433563 (= e!3366635 (Union!15227 (h!68304 (unfocusZipperList!669 zl!343)) (generalisedUnion!1156 (t!375205 (unfocusZipperList!669 zl!343)))))))

(declare-fun b!5433564 () Bool)

(assert (=> b!5433564 (= e!3366635 EmptyLang!15227)))

(declare-fun b!5433565 () Bool)

(declare-fun e!3366637 () Bool)

(declare-fun lt!2215177 () Regex!15227)

(declare-fun isUnion!442 (Regex!15227) Bool)

(assert (=> b!5433565 (= e!3366637 (isUnion!442 lt!2215177))))

(assert (=> d!1732135 e!3366633))

(declare-fun res!2312256 () Bool)

(assert (=> d!1732135 (=> (not res!2312256) (not e!3366633))))

(assert (=> d!1732135 (= res!2312256 (validRegex!6963 lt!2215177))))

(declare-fun e!3366634 () Regex!15227)

(assert (=> d!1732135 (= lt!2215177 e!3366634)))

(declare-fun c!948277 () Bool)

(declare-fun e!3366632 () Bool)

(assert (=> d!1732135 (= c!948277 e!3366632)))

(declare-fun res!2312257 () Bool)

(assert (=> d!1732135 (=> (not res!2312257) (not e!3366632))))

(assert (=> d!1732135 (= res!2312257 ((_ is Cons!61856) (unfocusZipperList!669 zl!343)))))

(assert (=> d!1732135 (forall!14567 (unfocusZipperList!669 zl!343) lambda!285262)))

(assert (=> d!1732135 (= (generalisedUnion!1156 (unfocusZipperList!669 zl!343)) lt!2215177)))

(declare-fun b!5433566 () Bool)

(assert (=> b!5433566 (= e!3366637 (= lt!2215177 (head!11656 (unfocusZipperList!669 zl!343))))))

(declare-fun b!5433567 () Bool)

(assert (=> b!5433567 (= e!3366634 (h!68304 (unfocusZipperList!669 zl!343)))))

(declare-fun b!5433568 () Bool)

(declare-fun isEmptyLang!1010 (Regex!15227) Bool)

(assert (=> b!5433568 (= e!3366636 (isEmptyLang!1010 lt!2215177))))

(declare-fun b!5433569 () Bool)

(assert (=> b!5433569 (= e!3366632 (isEmpty!33860 (t!375205 (unfocusZipperList!669 zl!343))))))

(declare-fun b!5433570 () Bool)

(assert (=> b!5433570 (= e!3366636 e!3366637)))

(declare-fun c!948279 () Bool)

(assert (=> b!5433570 (= c!948279 (isEmpty!33860 (tail!10753 (unfocusZipperList!669 zl!343))))))

(declare-fun b!5433571 () Bool)

(assert (=> b!5433571 (= e!3366634 e!3366635)))

(declare-fun c!948278 () Bool)

(assert (=> b!5433571 (= c!948278 ((_ is Cons!61856) (unfocusZipperList!669 zl!343)))))

(assert (= (and d!1732135 res!2312257) b!5433569))

(assert (= (and d!1732135 c!948277) b!5433567))

(assert (= (and d!1732135 (not c!948277)) b!5433571))

(assert (= (and b!5433571 c!948278) b!5433563))

(assert (= (and b!5433571 (not c!948278)) b!5433564))

(assert (= (and d!1732135 res!2312256) b!5433562))

(assert (= (and b!5433562 c!948280) b!5433568))

(assert (= (and b!5433562 (not c!948280)) b!5433570))

(assert (= (and b!5433570 c!948279) b!5433566))

(assert (= (and b!5433570 (not c!948279)) b!5433565))

(assert (=> b!5433566 m!6455606))

(declare-fun m!6455976 () Bool)

(assert (=> b!5433566 m!6455976))

(assert (=> b!5433562 m!6455606))

(declare-fun m!6455978 () Bool)

(assert (=> b!5433562 m!6455978))

(declare-fun m!6455980 () Bool)

(assert (=> d!1732135 m!6455980))

(assert (=> d!1732135 m!6455606))

(declare-fun m!6455982 () Bool)

(assert (=> d!1732135 m!6455982))

(declare-fun m!6455984 () Bool)

(assert (=> b!5433565 m!6455984))

(assert (=> b!5433570 m!6455606))

(declare-fun m!6455986 () Bool)

(assert (=> b!5433570 m!6455986))

(assert (=> b!5433570 m!6455986))

(declare-fun m!6455988 () Bool)

(assert (=> b!5433570 m!6455988))

(declare-fun m!6455990 () Bool)

(assert (=> b!5433568 m!6455990))

(declare-fun m!6455992 () Bool)

(assert (=> b!5433563 m!6455992))

(declare-fun m!6455994 () Bool)

(assert (=> b!5433569 m!6455994))

(assert (=> b!5433102 d!1732135))

(declare-fun bs!1254749 () Bool)

(declare-fun d!1732139 () Bool)

(assert (= bs!1254749 (and d!1732139 d!1732053)))

(declare-fun lambda!285265 () Int)

(assert (=> bs!1254749 (= lambda!285265 lambda!285232)))

(declare-fun bs!1254750 () Bool)

(assert (= bs!1254750 (and d!1732139 d!1732061)))

(assert (=> bs!1254750 (= lambda!285265 lambda!285235)))

(declare-fun bs!1254751 () Bool)

(assert (= bs!1254751 (and d!1732139 d!1732087)))

(assert (=> bs!1254751 (= lambda!285265 lambda!285240)))

(declare-fun bs!1254752 () Bool)

(assert (= bs!1254752 (and d!1732139 d!1732135)))

(assert (=> bs!1254752 (= lambda!285265 lambda!285262)))

(declare-fun lt!2215180 () List!61980)

(assert (=> d!1732139 (forall!14567 lt!2215180 lambda!285265)))

(declare-fun e!3366640 () List!61980)

(assert (=> d!1732139 (= lt!2215180 e!3366640)))

(declare-fun c!948283 () Bool)

(assert (=> d!1732139 (= c!948283 ((_ is Cons!61858) zl!343))))

(assert (=> d!1732139 (= (unfocusZipperList!669 zl!343) lt!2215180)))

(declare-fun b!5433576 () Bool)

(assert (=> b!5433576 (= e!3366640 (Cons!61856 (generalisedConcat!896 (exprs!5111 (h!68306 zl!343))) (unfocusZipperList!669 (t!375207 zl!343))))))

(declare-fun b!5433577 () Bool)

(assert (=> b!5433577 (= e!3366640 Nil!61856)))

(assert (= (and d!1732139 c!948283) b!5433576))

(assert (= (and d!1732139 (not c!948283)) b!5433577))

(declare-fun m!6455996 () Bool)

(assert (=> d!1732139 m!6455996))

(assert (=> b!5433576 m!6455676))

(declare-fun m!6455998 () Bool)

(assert (=> b!5433576 m!6455998))

(assert (=> b!5433102 d!1732139))

(assert (=> b!5433122 d!1732107))

(declare-fun bs!1254753 () Bool)

(declare-fun d!1732141 () Bool)

(assert (= bs!1254753 (and d!1732141 b!5433096)))

(declare-fun lambda!285268 () Int)

(assert (=> bs!1254753 (= lambda!285268 lambda!285229)))

(assert (=> d!1732141 true))

(assert (=> d!1732141 (= (derivationStepZipper!1466 lt!2215104 (h!68305 s!2326)) (flatMap!954 lt!2215104 lambda!285268))))

(declare-fun bs!1254754 () Bool)

(assert (= bs!1254754 d!1732141))

(declare-fun m!6456000 () Bool)

(assert (=> bs!1254754 m!6456000))

(assert (=> b!5433082 d!1732141))

(declare-fun d!1732143 () Bool)

(assert (=> d!1732143 (= (flatMap!954 lt!2215104 lambda!285229) (choose!41217 lt!2215104 lambda!285229))))

(declare-fun bs!1254755 () Bool)

(assert (= bs!1254755 d!1732143))

(declare-fun m!6456002 () Bool)

(assert (=> bs!1254755 m!6456002))

(assert (=> b!5433082 d!1732143))

(declare-fun b!5433580 () Bool)

(declare-fun e!3366642 () (InoxSet Context!9222))

(assert (=> b!5433580 (= e!3366642 ((as const (Array Context!9222 Bool)) false))))

(declare-fun b!5433581 () Bool)

(declare-fun e!3366641 () Bool)

(assert (=> b!5433581 (= e!3366641 (nullable!5396 (h!68304 (exprs!5111 lt!2215080))))))

(declare-fun d!1732145 () Bool)

(declare-fun c!948286 () Bool)

(assert (=> d!1732145 (= c!948286 e!3366641)))

(declare-fun res!2312258 () Bool)

(assert (=> d!1732145 (=> (not res!2312258) (not e!3366641))))

(assert (=> d!1732145 (= res!2312258 ((_ is Cons!61856) (exprs!5111 lt!2215080)))))

(declare-fun e!3366643 () (InoxSet Context!9222))

(assert (=> d!1732145 (= (derivationStepZipperUp!599 lt!2215080 (h!68305 s!2326)) e!3366643)))

(declare-fun bm!389250 () Bool)

(declare-fun call!389255 () (InoxSet Context!9222))

(assert (=> bm!389250 (= call!389255 (derivationStepZipperDown!675 (h!68304 (exprs!5111 lt!2215080)) (Context!9223 (t!375205 (exprs!5111 lt!2215080))) (h!68305 s!2326)))))

(declare-fun b!5433582 () Bool)

(assert (=> b!5433582 (= e!3366643 ((_ map or) call!389255 (derivationStepZipperUp!599 (Context!9223 (t!375205 (exprs!5111 lt!2215080))) (h!68305 s!2326))))))

(declare-fun b!5433583 () Bool)

(assert (=> b!5433583 (= e!3366643 e!3366642)))

(declare-fun c!948287 () Bool)

(assert (=> b!5433583 (= c!948287 ((_ is Cons!61856) (exprs!5111 lt!2215080)))))

(declare-fun b!5433584 () Bool)

(assert (=> b!5433584 (= e!3366642 call!389255)))

(assert (= (and d!1732145 res!2312258) b!5433581))

(assert (= (and d!1732145 c!948286) b!5433582))

(assert (= (and d!1732145 (not c!948286)) b!5433583))

(assert (= (and b!5433583 c!948287) b!5433584))

(assert (= (and b!5433583 (not c!948287)) b!5433580))

(assert (= (or b!5433582 b!5433584) bm!389250))

(declare-fun m!6456004 () Bool)

(assert (=> b!5433581 m!6456004))

(declare-fun m!6456006 () Bool)

(assert (=> bm!389250 m!6456006))

(declare-fun m!6456008 () Bool)

(assert (=> b!5433582 m!6456008))

(assert (=> b!5433082 d!1732145))

(declare-fun d!1732147 () Bool)

(assert (=> d!1732147 (= (flatMap!954 lt!2215104 lambda!285229) (dynLambda!24374 lambda!285229 lt!2215080))))

(declare-fun lt!2215181 () Unit!154430)

(assert (=> d!1732147 (= lt!2215181 (choose!41218 lt!2215104 lt!2215080 lambda!285229))))

(assert (=> d!1732147 (= lt!2215104 (store ((as const (Array Context!9222 Bool)) false) lt!2215080 true))))

(assert (=> d!1732147 (= (lemmaFlatMapOnSingletonSet!486 lt!2215104 lt!2215080 lambda!285229) lt!2215181)))

(declare-fun b_lambda!207313 () Bool)

(assert (=> (not b_lambda!207313) (not d!1732147)))

(declare-fun bs!1254756 () Bool)

(assert (= bs!1254756 d!1732147))

(assert (=> bs!1254756 m!6455680))

(declare-fun m!6456010 () Bool)

(assert (=> bs!1254756 m!6456010))

(declare-fun m!6456012 () Bool)

(assert (=> bs!1254756 m!6456012))

(assert (=> bs!1254756 m!6455678))

(assert (=> b!5433082 d!1732147))

(declare-fun b!5433634 () Bool)

(declare-fun e!3366675 () Bool)

(assert (=> b!5433634 (= e!3366675 (matchR!7412 (regTwo!30966 r!7292) s!2326))))

(declare-fun d!1732149 () Bool)

(declare-fun e!3366671 () Bool)

(assert (=> d!1732149 e!3366671))

(declare-fun res!2312290 () Bool)

(assert (=> d!1732149 (=> res!2312290 e!3366671)))

(declare-fun e!3366674 () Bool)

(assert (=> d!1732149 (= res!2312290 e!3366674)))

(declare-fun res!2312291 () Bool)

(assert (=> d!1732149 (=> (not res!2312291) (not e!3366674))))

(declare-fun lt!2215200 () Option!15338)

(assert (=> d!1732149 (= res!2312291 (isDefined!12041 lt!2215200))))

(declare-fun e!3366672 () Option!15338)

(assert (=> d!1732149 (= lt!2215200 e!3366672)))

(declare-fun c!948299 () Bool)

(assert (=> d!1732149 (= c!948299 e!3366675)))

(declare-fun res!2312288 () Bool)

(assert (=> d!1732149 (=> (not res!2312288) (not e!3366675))))

(assert (=> d!1732149 (= res!2312288 (matchR!7412 (regOne!30966 r!7292) Nil!61857))))

(assert (=> d!1732149 (validRegex!6963 (regOne!30966 r!7292))))

(assert (=> d!1732149 (= (findConcatSeparation!1752 (regOne!30966 r!7292) (regTwo!30966 r!7292) Nil!61857 s!2326 s!2326) lt!2215200)))

(declare-fun b!5433635 () Bool)

(declare-fun res!2312289 () Bool)

(assert (=> b!5433635 (=> (not res!2312289) (not e!3366674))))

(declare-fun get!21339 (Option!15338) tuple2!64852)

(assert (=> b!5433635 (= res!2312289 (matchR!7412 (regTwo!30966 r!7292) (_2!35729 (get!21339 lt!2215200))))))

(declare-fun b!5433636 () Bool)

(declare-fun e!3366673 () Option!15338)

(assert (=> b!5433636 (= e!3366672 e!3366673)))

(declare-fun c!948298 () Bool)

(assert (=> b!5433636 (= c!948298 ((_ is Nil!61857) s!2326))))

(declare-fun b!5433637 () Bool)

(assert (=> b!5433637 (= e!3366673 None!15337)))

(declare-fun b!5433638 () Bool)

(assert (=> b!5433638 (= e!3366671 (not (isDefined!12041 lt!2215200)))))

(declare-fun b!5433639 () Bool)

(declare-fun res!2312292 () Bool)

(assert (=> b!5433639 (=> (not res!2312292) (not e!3366674))))

(assert (=> b!5433639 (= res!2312292 (matchR!7412 (regOne!30966 r!7292) (_1!35729 (get!21339 lt!2215200))))))

(declare-fun b!5433640 () Bool)

(declare-fun ++!13608 (List!61981 List!61981) List!61981)

(assert (=> b!5433640 (= e!3366674 (= (++!13608 (_1!35729 (get!21339 lt!2215200)) (_2!35729 (get!21339 lt!2215200))) s!2326))))

(declare-fun b!5433641 () Bool)

(assert (=> b!5433641 (= e!3366672 (Some!15337 (tuple2!64853 Nil!61857 s!2326)))))

(declare-fun b!5433642 () Bool)

(declare-fun lt!2215201 () Unit!154430)

(declare-fun lt!2215199 () Unit!154430)

(assert (=> b!5433642 (= lt!2215201 lt!2215199)))

(assert (=> b!5433642 (= (++!13608 (++!13608 Nil!61857 (Cons!61857 (h!68305 s!2326) Nil!61857)) (t!375206 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1865 (List!61981 C!30724 List!61981 List!61981) Unit!154430)

(assert (=> b!5433642 (= lt!2215199 (lemmaMoveElementToOtherListKeepsConcatEq!1865 Nil!61857 (h!68305 s!2326) (t!375206 s!2326) s!2326))))

(assert (=> b!5433642 (= e!3366673 (findConcatSeparation!1752 (regOne!30966 r!7292) (regTwo!30966 r!7292) (++!13608 Nil!61857 (Cons!61857 (h!68305 s!2326) Nil!61857)) (t!375206 s!2326) s!2326))))

(assert (= (and d!1732149 res!2312288) b!5433634))

(assert (= (and d!1732149 c!948299) b!5433641))

(assert (= (and d!1732149 (not c!948299)) b!5433636))

(assert (= (and b!5433636 c!948298) b!5433637))

(assert (= (and b!5433636 (not c!948298)) b!5433642))

(assert (= (and d!1732149 res!2312291) b!5433639))

(assert (= (and b!5433639 res!2312292) b!5433635))

(assert (= (and b!5433635 res!2312289) b!5433640))

(assert (= (and d!1732149 (not res!2312290)) b!5433638))

(declare-fun m!6456042 () Bool)

(assert (=> d!1732149 m!6456042))

(declare-fun m!6456044 () Bool)

(assert (=> d!1732149 m!6456044))

(declare-fun m!6456046 () Bool)

(assert (=> d!1732149 m!6456046))

(declare-fun m!6456048 () Bool)

(assert (=> b!5433642 m!6456048))

(assert (=> b!5433642 m!6456048))

(declare-fun m!6456050 () Bool)

(assert (=> b!5433642 m!6456050))

(declare-fun m!6456052 () Bool)

(assert (=> b!5433642 m!6456052))

(assert (=> b!5433642 m!6456048))

(declare-fun m!6456054 () Bool)

(assert (=> b!5433642 m!6456054))

(declare-fun m!6456056 () Bool)

(assert (=> b!5433635 m!6456056))

(declare-fun m!6456058 () Bool)

(assert (=> b!5433635 m!6456058))

(declare-fun m!6456060 () Bool)

(assert (=> b!5433634 m!6456060))

(assert (=> b!5433639 m!6456056))

(declare-fun m!6456062 () Bool)

(assert (=> b!5433639 m!6456062))

(assert (=> b!5433640 m!6456056))

(declare-fun m!6456064 () Bool)

(assert (=> b!5433640 m!6456064))

(assert (=> b!5433638 m!6456042))

(assert (=> b!5433098 d!1732149))

(declare-fun d!1732157 () Bool)

(declare-fun choose!41228 (Int) Bool)

(assert (=> d!1732157 (= (Exists!2408 lambda!285228) (choose!41228 lambda!285228))))

(declare-fun bs!1254765 () Bool)

(assert (= bs!1254765 d!1732157))

(declare-fun m!6456070 () Bool)

(assert (=> bs!1254765 m!6456070))

(assert (=> b!5433098 d!1732157))

(declare-fun d!1732161 () Bool)

(assert (=> d!1732161 (= (Exists!2408 lambda!285227) (choose!41228 lambda!285227))))

(declare-fun bs!1254766 () Bool)

(assert (= bs!1254766 d!1732161))

(declare-fun m!6456072 () Bool)

(assert (=> bs!1254766 m!6456072))

(assert (=> b!5433098 d!1732161))

(declare-fun bs!1254767 () Bool)

(declare-fun d!1732163 () Bool)

(assert (= bs!1254767 (and d!1732163 b!5433098)))

(declare-fun lambda!285277 () Int)

(assert (=> bs!1254767 (= lambda!285277 lambda!285227)))

(assert (=> bs!1254767 (not (= lambda!285277 lambda!285228))))

(assert (=> d!1732163 true))

(assert (=> d!1732163 true))

(assert (=> d!1732163 true))

(assert (=> d!1732163 (= (isDefined!12041 (findConcatSeparation!1752 (regOne!30966 r!7292) (regTwo!30966 r!7292) Nil!61857 s!2326 s!2326)) (Exists!2408 lambda!285277))))

(declare-fun lt!2215207 () Unit!154430)

(declare-fun choose!41229 (Regex!15227 Regex!15227 List!61981) Unit!154430)

(assert (=> d!1732163 (= lt!2215207 (choose!41229 (regOne!30966 r!7292) (regTwo!30966 r!7292) s!2326))))

(assert (=> d!1732163 (validRegex!6963 (regOne!30966 r!7292))))

(assert (=> d!1732163 (= (lemmaFindConcatSeparationEquivalentToExists!1516 (regOne!30966 r!7292) (regTwo!30966 r!7292) s!2326) lt!2215207)))

(declare-fun bs!1254768 () Bool)

(assert (= bs!1254768 d!1732163))

(declare-fun m!6456074 () Bool)

(assert (=> bs!1254768 m!6456074))

(assert (=> bs!1254768 m!6455612))

(assert (=> bs!1254768 m!6455612))

(assert (=> bs!1254768 m!6455614))

(assert (=> bs!1254768 m!6456046))

(declare-fun m!6456076 () Bool)

(assert (=> bs!1254768 m!6456076))

(assert (=> b!5433098 d!1732163))

(declare-fun bs!1254778 () Bool)

(declare-fun d!1732165 () Bool)

(assert (= bs!1254778 (and d!1732165 b!5433098)))

(declare-fun lambda!285285 () Int)

(assert (=> bs!1254778 (= lambda!285285 lambda!285227)))

(assert (=> bs!1254778 (not (= lambda!285285 lambda!285228))))

(declare-fun bs!1254779 () Bool)

(assert (= bs!1254779 (and d!1732165 d!1732163)))

(assert (=> bs!1254779 (= lambda!285285 lambda!285277)))

(assert (=> d!1732165 true))

(assert (=> d!1732165 true))

(assert (=> d!1732165 true))

(declare-fun lambda!285286 () Int)

(assert (=> bs!1254778 (not (= lambda!285286 lambda!285227))))

(assert (=> bs!1254778 (= lambda!285286 lambda!285228)))

(assert (=> bs!1254779 (not (= lambda!285286 lambda!285277))))

(declare-fun bs!1254780 () Bool)

(assert (= bs!1254780 d!1732165))

(assert (=> bs!1254780 (not (= lambda!285286 lambda!285285))))

(assert (=> d!1732165 true))

(assert (=> d!1732165 true))

(assert (=> d!1732165 true))

(assert (=> d!1732165 (= (Exists!2408 lambda!285285) (Exists!2408 lambda!285286))))

(declare-fun lt!2215211 () Unit!154430)

(declare-fun choose!41230 (Regex!15227 Regex!15227 List!61981) Unit!154430)

(assert (=> d!1732165 (= lt!2215211 (choose!41230 (regOne!30966 r!7292) (regTwo!30966 r!7292) s!2326))))

(assert (=> d!1732165 (validRegex!6963 (regOne!30966 r!7292))))

(assert (=> d!1732165 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1062 (regOne!30966 r!7292) (regTwo!30966 r!7292) s!2326) lt!2215211)))

(declare-fun m!6456106 () Bool)

(assert (=> bs!1254780 m!6456106))

(declare-fun m!6456108 () Bool)

(assert (=> bs!1254780 m!6456108))

(declare-fun m!6456110 () Bool)

(assert (=> bs!1254780 m!6456110))

(assert (=> bs!1254780 m!6456046))

(assert (=> b!5433098 d!1732165))

(declare-fun d!1732179 () Bool)

(declare-fun isEmpty!33865 (Option!15338) Bool)

(assert (=> d!1732179 (= (isDefined!12041 (findConcatSeparation!1752 (regOne!30966 r!7292) (regTwo!30966 r!7292) Nil!61857 s!2326 s!2326)) (not (isEmpty!33865 (findConcatSeparation!1752 (regOne!30966 r!7292) (regTwo!30966 r!7292) Nil!61857 s!2326 s!2326))))))

(declare-fun bs!1254781 () Bool)

(assert (= bs!1254781 d!1732179))

(assert (=> bs!1254781 m!6455612))

(declare-fun m!6456112 () Bool)

(assert (=> bs!1254781 m!6456112))

(assert (=> b!5433098 d!1732179))

(declare-fun d!1732181 () Bool)

(declare-fun c!948308 () Bool)

(assert (=> d!1732181 (= c!948308 (isEmpty!33862 (t!375206 s!2326)))))

(declare-fun e!3366697 () Bool)

(assert (=> d!1732181 (= (matchZipper!1471 lt!2215107 (t!375206 s!2326)) e!3366697)))

(declare-fun b!5433682 () Bool)

(assert (=> b!5433682 (= e!3366697 (nullableZipper!1469 lt!2215107))))

(declare-fun b!5433683 () Bool)

(assert (=> b!5433683 (= e!3366697 (matchZipper!1471 (derivationStepZipper!1466 lt!2215107 (head!11655 (t!375206 s!2326))) (tail!10752 (t!375206 s!2326))))))

(assert (= (and d!1732181 c!948308) b!5433682))

(assert (= (and d!1732181 (not c!948308)) b!5433683))

(assert (=> d!1732181 m!6455712))

(declare-fun m!6456114 () Bool)

(assert (=> b!5433682 m!6456114))

(assert (=> b!5433683 m!6455716))

(assert (=> b!5433683 m!6455716))

(declare-fun m!6456116 () Bool)

(assert (=> b!5433683 m!6456116))

(assert (=> b!5433683 m!6455720))

(assert (=> b!5433683 m!6456116))

(assert (=> b!5433683 m!6455720))

(declare-fun m!6456118 () Bool)

(assert (=> b!5433683 m!6456118))

(assert (=> b!5433118 d!1732181))

(assert (=> b!5433099 d!1732181))

(declare-fun call!389284 () List!61980)

(declare-fun bm!389275 () Bool)

(declare-fun call!389285 () (InoxSet Context!9222))

(declare-fun c!948333 () Bool)

(assert (=> bm!389275 (= call!389285 (derivationStepZipperDown!675 (ite c!948333 (regOne!30967 (reg!15556 (regOne!30966 r!7292))) (regOne!30966 (reg!15556 (regOne!30966 r!7292)))) (ite c!948333 lt!2215108 (Context!9223 call!389284)) (h!68305 s!2326)))))

(declare-fun b!5433734 () Bool)

(declare-fun c!948332 () Bool)

(declare-fun e!3366729 () Bool)

(assert (=> b!5433734 (= c!948332 e!3366729)))

(declare-fun res!2312322 () Bool)

(assert (=> b!5433734 (=> (not res!2312322) (not e!3366729))))

(assert (=> b!5433734 (= res!2312322 ((_ is Concat!24072) (reg!15556 (regOne!30966 r!7292))))))

(declare-fun e!3366727 () (InoxSet Context!9222))

(declare-fun e!3366728 () (InoxSet Context!9222))

(assert (=> b!5433734 (= e!3366727 e!3366728)))

(declare-fun b!5433735 () Bool)

(declare-fun e!3366726 () (InoxSet Context!9222))

(declare-fun call!389280 () (InoxSet Context!9222))

(assert (=> b!5433735 (= e!3366726 call!389280)))

(declare-fun bm!389276 () Bool)

(declare-fun call!389281 () List!61980)

(assert (=> bm!389276 (= call!389281 call!389284)))

(declare-fun b!5433736 () Bool)

(declare-fun c!948334 () Bool)

(assert (=> b!5433736 (= c!948334 ((_ is Star!15227) (reg!15556 (regOne!30966 r!7292))))))

(declare-fun e!3366730 () (InoxSet Context!9222))

(assert (=> b!5433736 (= e!3366730 e!3366726)))

(declare-fun b!5433737 () Bool)

(declare-fun call!389283 () (InoxSet Context!9222))

(assert (=> b!5433737 (= e!3366727 ((_ map or) call!389285 call!389283))))

(declare-fun b!5433738 () Bool)

(declare-fun e!3366725 () (InoxSet Context!9222))

(assert (=> b!5433738 (= e!3366725 (store ((as const (Array Context!9222 Bool)) false) lt!2215108 true))))

(declare-fun b!5433739 () Bool)

(assert (=> b!5433739 (= e!3366726 ((as const (Array Context!9222 Bool)) false))))

(declare-fun bm!389278 () Bool)

(declare-fun call!389282 () (InoxSet Context!9222))

(assert (=> bm!389278 (= call!389282 call!389283)))

(declare-fun b!5433740 () Bool)

(assert (=> b!5433740 (= e!3366728 e!3366730)))

(declare-fun c!948336 () Bool)

(assert (=> b!5433740 (= c!948336 ((_ is Concat!24072) (reg!15556 (regOne!30966 r!7292))))))

(declare-fun b!5433741 () Bool)

(assert (=> b!5433741 (= e!3366729 (nullable!5396 (regOne!30966 (reg!15556 (regOne!30966 r!7292)))))))

(declare-fun b!5433742 () Bool)

(assert (=> b!5433742 (= e!3366730 call!389280)))

(declare-fun b!5433743 () Bool)

(assert (=> b!5433743 (= e!3366725 e!3366727)))

(assert (=> b!5433743 (= c!948333 ((_ is Union!15227) (reg!15556 (regOne!30966 r!7292))))))

(declare-fun b!5433744 () Bool)

(assert (=> b!5433744 (= e!3366728 ((_ map or) call!389285 call!389282))))

(declare-fun d!1732183 () Bool)

(declare-fun c!948335 () Bool)

(assert (=> d!1732183 (= c!948335 (and ((_ is ElementMatch!15227) (reg!15556 (regOne!30966 r!7292))) (= (c!948125 (reg!15556 (regOne!30966 r!7292))) (h!68305 s!2326))))))

(assert (=> d!1732183 (= (derivationStepZipperDown!675 (reg!15556 (regOne!30966 r!7292)) lt!2215108 (h!68305 s!2326)) e!3366725)))

(declare-fun bm!389277 () Bool)

(assert (=> bm!389277 (= call!389280 call!389282)))

(declare-fun bm!389279 () Bool)

(declare-fun $colon$colon!1520 (List!61980 Regex!15227) List!61980)

(assert (=> bm!389279 (= call!389284 ($colon$colon!1520 (exprs!5111 lt!2215108) (ite (or c!948332 c!948336) (regTwo!30966 (reg!15556 (regOne!30966 r!7292))) (reg!15556 (regOne!30966 r!7292)))))))

(declare-fun bm!389280 () Bool)

(assert (=> bm!389280 (= call!389283 (derivationStepZipperDown!675 (ite c!948333 (regTwo!30967 (reg!15556 (regOne!30966 r!7292))) (ite c!948332 (regTwo!30966 (reg!15556 (regOne!30966 r!7292))) (ite c!948336 (regOne!30966 (reg!15556 (regOne!30966 r!7292))) (reg!15556 (reg!15556 (regOne!30966 r!7292)))))) (ite (or c!948333 c!948332) lt!2215108 (Context!9223 call!389281)) (h!68305 s!2326)))))

(assert (= (and d!1732183 c!948335) b!5433738))

(assert (= (and d!1732183 (not c!948335)) b!5433743))

(assert (= (and b!5433743 c!948333) b!5433737))

(assert (= (and b!5433743 (not c!948333)) b!5433734))

(assert (= (and b!5433734 res!2312322) b!5433741))

(assert (= (and b!5433734 c!948332) b!5433744))

(assert (= (and b!5433734 (not c!948332)) b!5433740))

(assert (= (and b!5433740 c!948336) b!5433742))

(assert (= (and b!5433740 (not c!948336)) b!5433736))

(assert (= (and b!5433736 c!948334) b!5433735))

(assert (= (and b!5433736 (not c!948334)) b!5433739))

(assert (= (or b!5433742 b!5433735) bm!389276))

(assert (= (or b!5433742 b!5433735) bm!389277))

(assert (= (or b!5433744 bm!389276) bm!389279))

(assert (= (or b!5433744 bm!389277) bm!389278))

(assert (= (or b!5433737 bm!389278) bm!389280))

(assert (= (or b!5433737 b!5433744) bm!389275))

(declare-fun m!6456162 () Bool)

(assert (=> bm!389280 m!6456162))

(declare-fun m!6456164 () Bool)

(assert (=> bm!389279 m!6456164))

(declare-fun m!6456166 () Bool)

(assert (=> b!5433741 m!6456166))

(assert (=> b!5433738 m!6455640))

(declare-fun m!6456168 () Bool)

(assert (=> bm!389275 m!6456168))

(assert (=> b!5433120 d!1732183))

(assert (=> b!5433096 d!1732145))

(declare-fun bm!389281 () Bool)

(declare-fun call!389291 () (InoxSet Context!9222))

(declare-fun call!389290 () List!61980)

(declare-fun c!948338 () Bool)

(assert (=> bm!389281 (= call!389291 (derivationStepZipperDown!675 (ite c!948338 (regOne!30967 (h!68304 (exprs!5111 (h!68306 zl!343)))) (regOne!30966 (h!68304 (exprs!5111 (h!68306 zl!343))))) (ite c!948338 lt!2215080 (Context!9223 call!389290)) (h!68305 s!2326)))))

(declare-fun b!5433747 () Bool)

(declare-fun c!948337 () Bool)

(declare-fun e!3366737 () Bool)

(assert (=> b!5433747 (= c!948337 e!3366737)))

(declare-fun res!2312325 () Bool)

(assert (=> b!5433747 (=> (not res!2312325) (not e!3366737))))

(assert (=> b!5433747 (= res!2312325 ((_ is Concat!24072) (h!68304 (exprs!5111 (h!68306 zl!343)))))))

(declare-fun e!3366735 () (InoxSet Context!9222))

(declare-fun e!3366736 () (InoxSet Context!9222))

(assert (=> b!5433747 (= e!3366735 e!3366736)))

(declare-fun b!5433748 () Bool)

(declare-fun e!3366734 () (InoxSet Context!9222))

(declare-fun call!389286 () (InoxSet Context!9222))

(assert (=> b!5433748 (= e!3366734 call!389286)))

(declare-fun bm!389282 () Bool)

(declare-fun call!389287 () List!61980)

(assert (=> bm!389282 (= call!389287 call!389290)))

(declare-fun b!5433749 () Bool)

(declare-fun c!948339 () Bool)

(assert (=> b!5433749 (= c!948339 ((_ is Star!15227) (h!68304 (exprs!5111 (h!68306 zl!343)))))))

(declare-fun e!3366738 () (InoxSet Context!9222))

(assert (=> b!5433749 (= e!3366738 e!3366734)))

(declare-fun b!5433750 () Bool)

(declare-fun call!389289 () (InoxSet Context!9222))

(assert (=> b!5433750 (= e!3366735 ((_ map or) call!389291 call!389289))))

(declare-fun b!5433751 () Bool)

(declare-fun e!3366733 () (InoxSet Context!9222))

(assert (=> b!5433751 (= e!3366733 (store ((as const (Array Context!9222 Bool)) false) lt!2215080 true))))

(declare-fun b!5433752 () Bool)

(assert (=> b!5433752 (= e!3366734 ((as const (Array Context!9222 Bool)) false))))

(declare-fun bm!389284 () Bool)

(declare-fun call!389288 () (InoxSet Context!9222))

(assert (=> bm!389284 (= call!389288 call!389289)))

(declare-fun b!5433753 () Bool)

(assert (=> b!5433753 (= e!3366736 e!3366738)))

(declare-fun c!948341 () Bool)

(assert (=> b!5433753 (= c!948341 ((_ is Concat!24072) (h!68304 (exprs!5111 (h!68306 zl!343)))))))

(declare-fun b!5433754 () Bool)

(assert (=> b!5433754 (= e!3366737 (nullable!5396 (regOne!30966 (h!68304 (exprs!5111 (h!68306 zl!343))))))))

(declare-fun b!5433755 () Bool)

(assert (=> b!5433755 (= e!3366738 call!389286)))

(declare-fun b!5433756 () Bool)

(assert (=> b!5433756 (= e!3366733 e!3366735)))

(assert (=> b!5433756 (= c!948338 ((_ is Union!15227) (h!68304 (exprs!5111 (h!68306 zl!343)))))))

(declare-fun b!5433757 () Bool)

(assert (=> b!5433757 (= e!3366736 ((_ map or) call!389291 call!389288))))

(declare-fun d!1732207 () Bool)

(declare-fun c!948340 () Bool)

(assert (=> d!1732207 (= c!948340 (and ((_ is ElementMatch!15227) (h!68304 (exprs!5111 (h!68306 zl!343)))) (= (c!948125 (h!68304 (exprs!5111 (h!68306 zl!343)))) (h!68305 s!2326))))))

(assert (=> d!1732207 (= (derivationStepZipperDown!675 (h!68304 (exprs!5111 (h!68306 zl!343))) lt!2215080 (h!68305 s!2326)) e!3366733)))

(declare-fun bm!389283 () Bool)

(assert (=> bm!389283 (= call!389286 call!389288)))

(declare-fun bm!389285 () Bool)

(assert (=> bm!389285 (= call!389290 ($colon$colon!1520 (exprs!5111 lt!2215080) (ite (or c!948337 c!948341) (regTwo!30966 (h!68304 (exprs!5111 (h!68306 zl!343)))) (h!68304 (exprs!5111 (h!68306 zl!343))))))))

(declare-fun bm!389286 () Bool)

(assert (=> bm!389286 (= call!389289 (derivationStepZipperDown!675 (ite c!948338 (regTwo!30967 (h!68304 (exprs!5111 (h!68306 zl!343)))) (ite c!948337 (regTwo!30966 (h!68304 (exprs!5111 (h!68306 zl!343)))) (ite c!948341 (regOne!30966 (h!68304 (exprs!5111 (h!68306 zl!343)))) (reg!15556 (h!68304 (exprs!5111 (h!68306 zl!343))))))) (ite (or c!948338 c!948337) lt!2215080 (Context!9223 call!389287)) (h!68305 s!2326)))))

(assert (= (and d!1732207 c!948340) b!5433751))

(assert (= (and d!1732207 (not c!948340)) b!5433756))

(assert (= (and b!5433756 c!948338) b!5433750))

(assert (= (and b!5433756 (not c!948338)) b!5433747))

(assert (= (and b!5433747 res!2312325) b!5433754))

(assert (= (and b!5433747 c!948337) b!5433757))

(assert (= (and b!5433747 (not c!948337)) b!5433753))

(assert (= (and b!5433753 c!948341) b!5433755))

(assert (= (and b!5433753 (not c!948341)) b!5433749))

(assert (= (and b!5433749 c!948339) b!5433748))

(assert (= (and b!5433749 (not c!948339)) b!5433752))

(assert (= (or b!5433755 b!5433748) bm!389282))

(assert (= (or b!5433755 b!5433748) bm!389283))

(assert (= (or b!5433757 bm!389282) bm!389285))

(assert (= (or b!5433757 bm!389283) bm!389284))

(assert (= (or b!5433750 bm!389284) bm!389286))

(assert (= (or b!5433750 b!5433757) bm!389281))

(declare-fun m!6456178 () Bool)

(assert (=> bm!389286 m!6456178))

(declare-fun m!6456180 () Bool)

(assert (=> bm!389285 m!6456180))

(declare-fun m!6456182 () Bool)

(assert (=> b!5433754 m!6456182))

(assert (=> b!5433751 m!6455678))

(declare-fun m!6456184 () Bool)

(assert (=> bm!389281 m!6456184))

(assert (=> b!5433096 d!1732207))

(declare-fun d!1732213 () Bool)

(declare-fun nullableFct!1621 (Regex!15227) Bool)

(assert (=> d!1732213 (= (nullable!5396 (h!68304 (exprs!5111 (h!68306 zl!343)))) (nullableFct!1621 (h!68304 (exprs!5111 (h!68306 zl!343)))))))

(declare-fun bs!1254790 () Bool)

(assert (= bs!1254790 d!1732213))

(declare-fun m!6456192 () Bool)

(assert (=> bs!1254790 m!6456192))

(assert (=> b!5433096 d!1732213))

(declare-fun b!5433763 () Bool)

(declare-fun e!3366743 () (InoxSet Context!9222))

(assert (=> b!5433763 (= e!3366743 ((as const (Array Context!9222 Bool)) false))))

(declare-fun b!5433764 () Bool)

(declare-fun e!3366742 () Bool)

(assert (=> b!5433764 (= e!3366742 (nullable!5396 (h!68304 (exprs!5111 (Context!9223 (Cons!61856 (h!68304 (exprs!5111 (h!68306 zl!343))) (t!375205 (exprs!5111 (h!68306 zl!343)))))))))))

(declare-fun d!1732217 () Bool)

(declare-fun c!948344 () Bool)

(assert (=> d!1732217 (= c!948344 e!3366742)))

(declare-fun res!2312327 () Bool)

(assert (=> d!1732217 (=> (not res!2312327) (not e!3366742))))

(assert (=> d!1732217 (= res!2312327 ((_ is Cons!61856) (exprs!5111 (Context!9223 (Cons!61856 (h!68304 (exprs!5111 (h!68306 zl!343))) (t!375205 (exprs!5111 (h!68306 zl!343))))))))))

(declare-fun e!3366744 () (InoxSet Context!9222))

(assert (=> d!1732217 (= (derivationStepZipperUp!599 (Context!9223 (Cons!61856 (h!68304 (exprs!5111 (h!68306 zl!343))) (t!375205 (exprs!5111 (h!68306 zl!343))))) (h!68305 s!2326)) e!3366744)))

(declare-fun bm!389287 () Bool)

(declare-fun call!389292 () (InoxSet Context!9222))

(assert (=> bm!389287 (= call!389292 (derivationStepZipperDown!675 (h!68304 (exprs!5111 (Context!9223 (Cons!61856 (h!68304 (exprs!5111 (h!68306 zl!343))) (t!375205 (exprs!5111 (h!68306 zl!343))))))) (Context!9223 (t!375205 (exprs!5111 (Context!9223 (Cons!61856 (h!68304 (exprs!5111 (h!68306 zl!343))) (t!375205 (exprs!5111 (h!68306 zl!343)))))))) (h!68305 s!2326)))))

(declare-fun b!5433765 () Bool)

(assert (=> b!5433765 (= e!3366744 ((_ map or) call!389292 (derivationStepZipperUp!599 (Context!9223 (t!375205 (exprs!5111 (Context!9223 (Cons!61856 (h!68304 (exprs!5111 (h!68306 zl!343))) (t!375205 (exprs!5111 (h!68306 zl!343)))))))) (h!68305 s!2326))))))

(declare-fun b!5433766 () Bool)

(assert (=> b!5433766 (= e!3366744 e!3366743)))

(declare-fun c!948345 () Bool)

(assert (=> b!5433766 (= c!948345 ((_ is Cons!61856) (exprs!5111 (Context!9223 (Cons!61856 (h!68304 (exprs!5111 (h!68306 zl!343))) (t!375205 (exprs!5111 (h!68306 zl!343))))))))))

(declare-fun b!5433767 () Bool)

(assert (=> b!5433767 (= e!3366743 call!389292)))

(assert (= (and d!1732217 res!2312327) b!5433764))

(assert (= (and d!1732217 c!948344) b!5433765))

(assert (= (and d!1732217 (not c!948344)) b!5433766))

(assert (= (and b!5433766 c!948345) b!5433767))

(assert (= (and b!5433766 (not c!948345)) b!5433763))

(assert (= (or b!5433765 b!5433767) bm!389287))

(declare-fun m!6456194 () Bool)

(assert (=> b!5433764 m!6456194))

(declare-fun m!6456196 () Bool)

(assert (=> bm!389287 m!6456196))

(declare-fun m!6456198 () Bool)

(assert (=> b!5433765 m!6456198))

(assert (=> b!5433096 d!1732217))

(declare-fun d!1732219 () Bool)

(assert (=> d!1732219 (= (flatMap!954 z!1189 lambda!285229) (dynLambda!24374 lambda!285229 (h!68306 zl!343)))))

(declare-fun lt!2215219 () Unit!154430)

(assert (=> d!1732219 (= lt!2215219 (choose!41218 z!1189 (h!68306 zl!343) lambda!285229))))

(assert (=> d!1732219 (= z!1189 (store ((as const (Array Context!9222 Bool)) false) (h!68306 zl!343) true))))

(assert (=> d!1732219 (= (lemmaFlatMapOnSingletonSet!486 z!1189 (h!68306 zl!343) lambda!285229) lt!2215219)))

(declare-fun b_lambda!207319 () Bool)

(assert (=> (not b_lambda!207319) (not d!1732219)))

(declare-fun bs!1254791 () Bool)

(assert (= bs!1254791 d!1732219))

(assert (=> bs!1254791 m!6455580))

(declare-fun m!6456200 () Bool)

(assert (=> bs!1254791 m!6456200))

(declare-fun m!6456202 () Bool)

(assert (=> bs!1254791 m!6456202))

(declare-fun m!6456204 () Bool)

(assert (=> bs!1254791 m!6456204))

(assert (=> b!5433096 d!1732219))

(declare-fun b!5433768 () Bool)

(declare-fun e!3366746 () (InoxSet Context!9222))

(assert (=> b!5433768 (= e!3366746 ((as const (Array Context!9222 Bool)) false))))

(declare-fun b!5433769 () Bool)

(declare-fun e!3366745 () Bool)

(assert (=> b!5433769 (= e!3366745 (nullable!5396 (h!68304 (exprs!5111 (h!68306 zl!343)))))))

(declare-fun d!1732221 () Bool)

(declare-fun c!948346 () Bool)

(assert (=> d!1732221 (= c!948346 e!3366745)))

(declare-fun res!2312328 () Bool)

(assert (=> d!1732221 (=> (not res!2312328) (not e!3366745))))

(assert (=> d!1732221 (= res!2312328 ((_ is Cons!61856) (exprs!5111 (h!68306 zl!343))))))

(declare-fun e!3366747 () (InoxSet Context!9222))

(assert (=> d!1732221 (= (derivationStepZipperUp!599 (h!68306 zl!343) (h!68305 s!2326)) e!3366747)))

(declare-fun bm!389288 () Bool)

(declare-fun call!389293 () (InoxSet Context!9222))

(assert (=> bm!389288 (= call!389293 (derivationStepZipperDown!675 (h!68304 (exprs!5111 (h!68306 zl!343))) (Context!9223 (t!375205 (exprs!5111 (h!68306 zl!343)))) (h!68305 s!2326)))))

(declare-fun b!5433770 () Bool)

(assert (=> b!5433770 (= e!3366747 ((_ map or) call!389293 (derivationStepZipperUp!599 (Context!9223 (t!375205 (exprs!5111 (h!68306 zl!343)))) (h!68305 s!2326))))))

(declare-fun b!5433771 () Bool)

(assert (=> b!5433771 (= e!3366747 e!3366746)))

(declare-fun c!948347 () Bool)

(assert (=> b!5433771 (= c!948347 ((_ is Cons!61856) (exprs!5111 (h!68306 zl!343))))))

(declare-fun b!5433772 () Bool)

(assert (=> b!5433772 (= e!3366746 call!389293)))

(assert (= (and d!1732221 res!2312328) b!5433769))

(assert (= (and d!1732221 c!948346) b!5433770))

(assert (= (and d!1732221 (not c!948346)) b!5433771))

(assert (= (and b!5433771 c!948347) b!5433772))

(assert (= (and b!5433771 (not c!948347)) b!5433768))

(assert (= (or b!5433770 b!5433772) bm!389288))

(assert (=> b!5433769 m!6455578))

(declare-fun m!6456206 () Bool)

(assert (=> bm!389288 m!6456206))

(declare-fun m!6456208 () Bool)

(assert (=> b!5433770 m!6456208))

(assert (=> b!5433096 d!1732221))

(declare-fun d!1732223 () Bool)

(assert (=> d!1732223 (= (flatMap!954 z!1189 lambda!285229) (choose!41217 z!1189 lambda!285229))))

(declare-fun bs!1254792 () Bool)

(assert (= bs!1254792 d!1732223))

(declare-fun m!6456210 () Bool)

(assert (=> bs!1254792 m!6456210))

(assert (=> b!5433096 d!1732223))

(assert (=> b!5433116 d!1732181))

(declare-fun bs!1254793 () Bool)

(declare-fun d!1732225 () Bool)

(assert (= bs!1254793 (and d!1732225 d!1732135)))

(declare-fun lambda!285293 () Int)

(assert (=> bs!1254793 (= lambda!285293 lambda!285262)))

(declare-fun bs!1254794 () Bool)

(assert (= bs!1254794 (and d!1732225 d!1732139)))

(assert (=> bs!1254794 (= lambda!285293 lambda!285265)))

(declare-fun bs!1254795 () Bool)

(assert (= bs!1254795 (and d!1732225 d!1732061)))

(assert (=> bs!1254795 (= lambda!285293 lambda!285235)))

(declare-fun bs!1254796 () Bool)

(assert (= bs!1254796 (and d!1732225 d!1732053)))

(assert (=> bs!1254796 (= lambda!285293 lambda!285232)))

(declare-fun bs!1254797 () Bool)

(assert (= bs!1254797 (and d!1732225 d!1732087)))

(assert (=> bs!1254797 (= lambda!285293 lambda!285240)))

(assert (=> d!1732225 (= (inv!81314 (h!68306 zl!343)) (forall!14567 (exprs!5111 (h!68306 zl!343)) lambda!285293))))

(declare-fun bs!1254798 () Bool)

(assert (= bs!1254798 d!1732225))

(declare-fun m!6456212 () Bool)

(assert (=> bs!1254798 m!6456212))

(assert (=> b!5433117 d!1732225))

(declare-fun b!5433774 () Bool)

(declare-fun e!3366748 () Bool)

(declare-fun e!3366750 () Bool)

(assert (=> b!5433774 (= e!3366748 e!3366750)))

(declare-fun c!948349 () Bool)

(assert (=> b!5433774 (= c!948349 ((_ is Union!15227) r!7292))))

(declare-fun bm!389289 () Bool)

(declare-fun call!389294 () Bool)

(declare-fun call!389295 () Bool)

(assert (=> bm!389289 (= call!389294 call!389295)))

(declare-fun b!5433775 () Bool)

(declare-fun e!3366752 () Bool)

(declare-fun call!389296 () Bool)

(assert (=> b!5433775 (= e!3366752 call!389296)))

(declare-fun b!5433776 () Bool)

(declare-fun e!3366751 () Bool)

(declare-fun e!3366749 () Bool)

(assert (=> b!5433776 (= e!3366751 e!3366749)))

(declare-fun res!2312332 () Bool)

(assert (=> b!5433776 (=> (not res!2312332) (not e!3366749))))

(assert (=> b!5433776 (= res!2312332 call!389294)))

(declare-fun bm!389290 () Bool)

(assert (=> bm!389290 (= call!389296 (validRegex!6963 (ite c!948349 (regTwo!30967 r!7292) (regTwo!30966 r!7292))))))

(declare-fun b!5433777 () Bool)

(declare-fun e!3366754 () Bool)

(assert (=> b!5433777 (= e!3366748 e!3366754)))

(declare-fun res!2312330 () Bool)

(assert (=> b!5433777 (= res!2312330 (not (nullable!5396 (reg!15556 r!7292))))))

(assert (=> b!5433777 (=> (not res!2312330) (not e!3366754))))

(declare-fun b!5433778 () Bool)

(assert (=> b!5433778 (= e!3366749 call!389296)))

(declare-fun b!5433779 () Bool)

(declare-fun e!3366753 () Bool)

(assert (=> b!5433779 (= e!3366753 e!3366748)))

(declare-fun c!948348 () Bool)

(assert (=> b!5433779 (= c!948348 ((_ is Star!15227) r!7292))))

(declare-fun b!5433780 () Bool)

(declare-fun res!2312329 () Bool)

(assert (=> b!5433780 (=> res!2312329 e!3366751)))

(assert (=> b!5433780 (= res!2312329 (not ((_ is Concat!24072) r!7292)))))

(assert (=> b!5433780 (= e!3366750 e!3366751)))

(declare-fun b!5433773 () Bool)

(declare-fun res!2312331 () Bool)

(assert (=> b!5433773 (=> (not res!2312331) (not e!3366752))))

(assert (=> b!5433773 (= res!2312331 call!389294)))

(assert (=> b!5433773 (= e!3366750 e!3366752)))

(declare-fun d!1732227 () Bool)

(declare-fun res!2312333 () Bool)

(assert (=> d!1732227 (=> res!2312333 e!3366753)))

(assert (=> d!1732227 (= res!2312333 ((_ is ElementMatch!15227) r!7292))))

(assert (=> d!1732227 (= (validRegex!6963 r!7292) e!3366753)))

(declare-fun b!5433781 () Bool)

(assert (=> b!5433781 (= e!3366754 call!389295)))

(declare-fun bm!389291 () Bool)

(assert (=> bm!389291 (= call!389295 (validRegex!6963 (ite c!948348 (reg!15556 r!7292) (ite c!948349 (regOne!30967 r!7292) (regOne!30966 r!7292)))))))

(assert (= (and d!1732227 (not res!2312333)) b!5433779))

(assert (= (and b!5433779 c!948348) b!5433777))

(assert (= (and b!5433779 (not c!948348)) b!5433774))

(assert (= (and b!5433777 res!2312330) b!5433781))

(assert (= (and b!5433774 c!948349) b!5433773))

(assert (= (and b!5433774 (not c!948349)) b!5433780))

(assert (= (and b!5433773 res!2312331) b!5433775))

(assert (= (and b!5433780 (not res!2312329)) b!5433776))

(assert (= (and b!5433776 res!2312332) b!5433778))

(assert (= (or b!5433775 b!5433778) bm!389290))

(assert (= (or b!5433773 b!5433776) bm!389289))

(assert (= (or b!5433781 bm!389289) bm!389291))

(declare-fun m!6456214 () Bool)

(assert (=> bm!389290 m!6456214))

(declare-fun m!6456216 () Bool)

(assert (=> b!5433777 m!6456216))

(declare-fun m!6456218 () Bool)

(assert (=> bm!389291 m!6456218))

(assert (=> start!570126 d!1732227))

(declare-fun d!1732229 () Bool)

(declare-fun c!948350 () Bool)

(assert (=> d!1732229 (= c!948350 (isEmpty!33862 s!2326))))

(declare-fun e!3366755 () Bool)

(assert (=> d!1732229 (= (matchZipper!1471 z!1189 s!2326) e!3366755)))

(declare-fun b!5433782 () Bool)

(assert (=> b!5433782 (= e!3366755 (nullableZipper!1469 z!1189))))

(declare-fun b!5433783 () Bool)

(assert (=> b!5433783 (= e!3366755 (matchZipper!1471 (derivationStepZipper!1466 z!1189 (head!11655 s!2326)) (tail!10752 s!2326)))))

(assert (= (and d!1732229 c!948350) b!5433782))

(assert (= (and d!1732229 (not c!948350)) b!5433783))

(assert (=> d!1732229 m!6455700))

(declare-fun m!6456220 () Bool)

(assert (=> b!5433782 m!6456220))

(assert (=> b!5433783 m!6455704))

(assert (=> b!5433783 m!6455704))

(declare-fun m!6456222 () Bool)

(assert (=> b!5433783 m!6456222))

(assert (=> b!5433783 m!6455708))

(assert (=> b!5433783 m!6456222))

(assert (=> b!5433783 m!6455708))

(declare-fun m!6456224 () Bool)

(assert (=> b!5433783 m!6456224))

(assert (=> b!5433093 d!1732229))

(declare-fun bs!1254809 () Bool)

(declare-fun b!5433861 () Bool)

(assert (= bs!1254809 (and b!5433861 d!1732163)))

(declare-fun lambda!285305 () Int)

(assert (=> bs!1254809 (not (= lambda!285305 lambda!285277))))

(declare-fun bs!1254810 () Bool)

(assert (= bs!1254810 (and b!5433861 b!5433098)))

(assert (=> bs!1254810 (not (= lambda!285305 lambda!285227))))

(declare-fun bs!1254811 () Bool)

(assert (= bs!1254811 (and b!5433861 d!1732165)))

(assert (=> bs!1254811 (not (= lambda!285305 lambda!285286))))

(assert (=> bs!1254810 (not (= lambda!285305 lambda!285228))))

(assert (=> bs!1254811 (not (= lambda!285305 lambda!285285))))

(assert (=> b!5433861 true))

(assert (=> b!5433861 true))

(declare-fun bs!1254812 () Bool)

(declare-fun b!5433857 () Bool)

(assert (= bs!1254812 (and b!5433857 d!1732163)))

(declare-fun lambda!285306 () Int)

(assert (=> bs!1254812 (not (= lambda!285306 lambda!285277))))

(declare-fun bs!1254813 () Bool)

(assert (= bs!1254813 (and b!5433857 b!5433098)))

(assert (=> bs!1254813 (not (= lambda!285306 lambda!285227))))

(declare-fun bs!1254814 () Bool)

(assert (= bs!1254814 (and b!5433857 d!1732165)))

(assert (=> bs!1254814 (= lambda!285306 lambda!285286)))

(declare-fun bs!1254815 () Bool)

(assert (= bs!1254815 (and b!5433857 b!5433861)))

(assert (=> bs!1254815 (not (= lambda!285306 lambda!285305))))

(assert (=> bs!1254813 (= lambda!285306 lambda!285228)))

(assert (=> bs!1254814 (not (= lambda!285306 lambda!285285))))

(assert (=> b!5433857 true))

(assert (=> b!5433857 true))

(declare-fun b!5433852 () Bool)

(declare-fun e!3366801 () Bool)

(declare-fun e!3366798 () Bool)

(assert (=> b!5433852 (= e!3366801 e!3366798)))

(declare-fun res!2312358 () Bool)

(assert (=> b!5433852 (= res!2312358 (not ((_ is EmptyLang!15227) r!7292)))))

(assert (=> b!5433852 (=> (not res!2312358) (not e!3366798))))

(declare-fun b!5433853 () Bool)

(declare-fun c!948377 () Bool)

(assert (=> b!5433853 (= c!948377 ((_ is Union!15227) r!7292))))

(declare-fun e!3366799 () Bool)

(declare-fun e!3366795 () Bool)

(assert (=> b!5433853 (= e!3366799 e!3366795)))

(declare-fun bm!389296 () Bool)

(declare-fun call!389301 () Bool)

(assert (=> bm!389296 (= call!389301 (isEmpty!33862 s!2326))))

(declare-fun bm!389297 () Bool)

(declare-fun c!948375 () Bool)

(declare-fun call!389302 () Bool)

(assert (=> bm!389297 (= call!389302 (Exists!2408 (ite c!948375 lambda!285305 lambda!285306)))))

(declare-fun b!5433854 () Bool)

(assert (=> b!5433854 (= e!3366801 call!389301)))

(declare-fun b!5433855 () Bool)

(declare-fun e!3366797 () Bool)

(assert (=> b!5433855 (= e!3366795 e!3366797)))

(assert (=> b!5433855 (= c!948375 ((_ is Star!15227) r!7292))))

(assert (=> b!5433857 (= e!3366797 call!389302)))

(declare-fun b!5433858 () Bool)

(declare-fun c!948376 () Bool)

(assert (=> b!5433858 (= c!948376 ((_ is ElementMatch!15227) r!7292))))

(assert (=> b!5433858 (= e!3366798 e!3366799)))

(declare-fun b!5433859 () Bool)

(assert (=> b!5433859 (= e!3366799 (= s!2326 (Cons!61857 (c!948125 r!7292) Nil!61857)))))

(declare-fun b!5433860 () Bool)

(declare-fun res!2312356 () Bool)

(declare-fun e!3366796 () Bool)

(assert (=> b!5433860 (=> res!2312356 e!3366796)))

(assert (=> b!5433860 (= res!2312356 call!389301)))

(assert (=> b!5433860 (= e!3366797 e!3366796)))

(declare-fun d!1732231 () Bool)

(declare-fun c!948374 () Bool)

(assert (=> d!1732231 (= c!948374 ((_ is EmptyExpr!15227) r!7292))))

(assert (=> d!1732231 (= (matchRSpec!2330 r!7292 s!2326) e!3366801)))

(declare-fun b!5433856 () Bool)

(declare-fun e!3366800 () Bool)

(assert (=> b!5433856 (= e!3366800 (matchRSpec!2330 (regTwo!30967 r!7292) s!2326))))

(assert (=> b!5433861 (= e!3366796 call!389302)))

(declare-fun b!5433862 () Bool)

(assert (=> b!5433862 (= e!3366795 e!3366800)))

(declare-fun res!2312357 () Bool)

(assert (=> b!5433862 (= res!2312357 (matchRSpec!2330 (regOne!30967 r!7292) s!2326))))

(assert (=> b!5433862 (=> res!2312357 e!3366800)))

(assert (= (and d!1732231 c!948374) b!5433854))

(assert (= (and d!1732231 (not c!948374)) b!5433852))

(assert (= (and b!5433852 res!2312358) b!5433858))

(assert (= (and b!5433858 c!948376) b!5433859))

(assert (= (and b!5433858 (not c!948376)) b!5433853))

(assert (= (and b!5433853 c!948377) b!5433862))

(assert (= (and b!5433853 (not c!948377)) b!5433855))

(assert (= (and b!5433862 (not res!2312357)) b!5433856))

(assert (= (and b!5433855 c!948375) b!5433860))

(assert (= (and b!5433855 (not c!948375)) b!5433857))

(assert (= (and b!5433860 (not res!2312356)) b!5433861))

(assert (= (or b!5433861 b!5433857) bm!389297))

(assert (= (or b!5433854 b!5433860) bm!389296))

(assert (=> bm!389296 m!6455700))

(declare-fun m!6456258 () Bool)

(assert (=> bm!389297 m!6456258))

(declare-fun m!6456260 () Bool)

(assert (=> b!5433856 m!6456260))

(declare-fun m!6456262 () Bool)

(assert (=> b!5433862 m!6456262))

(assert (=> b!5433094 d!1732231))

(declare-fun b!5433897 () Bool)

(declare-fun e!3366824 () Bool)

(assert (=> b!5433897 (= e!3366824 (nullable!5396 r!7292))))

(declare-fun b!5433898 () Bool)

(declare-fun e!3366827 () Bool)

(assert (=> b!5433898 (= e!3366827 (= (head!11655 s!2326) (c!948125 r!7292)))))

(declare-fun b!5433899 () Bool)

(assert (=> b!5433899 (= e!3366824 (matchR!7412 (derivativeStep!4291 r!7292 (head!11655 s!2326)) (tail!10752 s!2326)))))

(declare-fun bm!389308 () Bool)

(declare-fun call!389313 () Bool)

(assert (=> bm!389308 (= call!389313 (isEmpty!33862 s!2326))))

(declare-fun b!5433901 () Bool)

(declare-fun res!2312365 () Bool)

(assert (=> b!5433901 (=> (not res!2312365) (not e!3366827))))

(assert (=> b!5433901 (= res!2312365 (not call!389313))))

(declare-fun b!5433902 () Bool)

(declare-fun e!3366828 () Bool)

(declare-fun lt!2215229 () Bool)

(assert (=> b!5433902 (= e!3366828 (not lt!2215229))))

(declare-fun b!5433903 () Bool)

(declare-fun e!3366822 () Bool)

(declare-fun e!3366825 () Bool)

(assert (=> b!5433903 (= e!3366822 e!3366825)))

(declare-fun res!2312372 () Bool)

(assert (=> b!5433903 (=> (not res!2312372) (not e!3366825))))

(assert (=> b!5433903 (= res!2312372 (not lt!2215229))))

(declare-fun b!5433904 () Bool)

(declare-fun e!3366826 () Bool)

(assert (=> b!5433904 (= e!3366825 e!3366826)))

(declare-fun res!2312366 () Bool)

(assert (=> b!5433904 (=> res!2312366 e!3366826)))

(assert (=> b!5433904 (= res!2312366 call!389313)))

(declare-fun b!5433905 () Bool)

(declare-fun res!2312369 () Bool)

(assert (=> b!5433905 (=> res!2312369 e!3366822)))

(assert (=> b!5433905 (= res!2312369 e!3366827)))

(declare-fun res!2312367 () Bool)

(assert (=> b!5433905 (=> (not res!2312367) (not e!3366827))))

(assert (=> b!5433905 (= res!2312367 lt!2215229)))

(declare-fun b!5433906 () Bool)

(declare-fun res!2312371 () Bool)

(assert (=> b!5433906 (=> res!2312371 e!3366826)))

(assert (=> b!5433906 (= res!2312371 (not (isEmpty!33862 (tail!10752 s!2326))))))

(declare-fun b!5433907 () Bool)

(declare-fun res!2312370 () Bool)

(assert (=> b!5433907 (=> res!2312370 e!3366822)))

(assert (=> b!5433907 (= res!2312370 (not ((_ is ElementMatch!15227) r!7292)))))

(assert (=> b!5433907 (= e!3366828 e!3366822)))

(declare-fun b!5433908 () Bool)

(declare-fun res!2312368 () Bool)

(assert (=> b!5433908 (=> (not res!2312368) (not e!3366827))))

(assert (=> b!5433908 (= res!2312368 (isEmpty!33862 (tail!10752 s!2326)))))

(declare-fun d!1732243 () Bool)

(declare-fun e!3366823 () Bool)

(assert (=> d!1732243 e!3366823))

(declare-fun c!948392 () Bool)

(assert (=> d!1732243 (= c!948392 ((_ is EmptyExpr!15227) r!7292))))

(assert (=> d!1732243 (= lt!2215229 e!3366824)))

(declare-fun c!948394 () Bool)

(assert (=> d!1732243 (= c!948394 (isEmpty!33862 s!2326))))

(assert (=> d!1732243 (validRegex!6963 r!7292)))

(assert (=> d!1732243 (= (matchR!7412 r!7292 s!2326) lt!2215229)))

(declare-fun b!5433900 () Bool)

(assert (=> b!5433900 (= e!3366823 (= lt!2215229 call!389313))))

(declare-fun b!5433909 () Bool)

(assert (=> b!5433909 (= e!3366823 e!3366828)))

(declare-fun c!948393 () Bool)

(assert (=> b!5433909 (= c!948393 ((_ is EmptyLang!15227) r!7292))))

(declare-fun b!5433910 () Bool)

(assert (=> b!5433910 (= e!3366826 (not (= (head!11655 s!2326) (c!948125 r!7292))))))

(assert (= (and d!1732243 c!948394) b!5433897))

(assert (= (and d!1732243 (not c!948394)) b!5433899))

(assert (= (and d!1732243 c!948392) b!5433900))

(assert (= (and d!1732243 (not c!948392)) b!5433909))

(assert (= (and b!5433909 c!948393) b!5433902))

(assert (= (and b!5433909 (not c!948393)) b!5433907))

(assert (= (and b!5433907 (not res!2312370)) b!5433905))

(assert (= (and b!5433905 res!2312367) b!5433901))

(assert (= (and b!5433901 res!2312365) b!5433908))

(assert (= (and b!5433908 res!2312368) b!5433898))

(assert (= (and b!5433905 (not res!2312369)) b!5433903))

(assert (= (and b!5433903 res!2312372) b!5433904))

(assert (= (and b!5433904 (not res!2312366)) b!5433906))

(assert (= (and b!5433906 (not res!2312371)) b!5433910))

(assert (= (or b!5433900 b!5433901 b!5433904) bm!389308))

(assert (=> b!5433908 m!6455708))

(assert (=> b!5433908 m!6455708))

(assert (=> b!5433908 m!6455934))

(assert (=> b!5433898 m!6455704))

(declare-fun m!6456264 () Bool)

(assert (=> b!5433897 m!6456264))

(assert (=> bm!389308 m!6455700))

(assert (=> b!5433899 m!6455704))

(assert (=> b!5433899 m!6455704))

(declare-fun m!6456266 () Bool)

(assert (=> b!5433899 m!6456266))

(assert (=> b!5433899 m!6455708))

(assert (=> b!5433899 m!6456266))

(assert (=> b!5433899 m!6455708))

(declare-fun m!6456268 () Bool)

(assert (=> b!5433899 m!6456268))

(assert (=> d!1732243 m!6455700))

(assert (=> d!1732243 m!6455658))

(assert (=> b!5433910 m!6455704))

(assert (=> b!5433906 m!6455708))

(assert (=> b!5433906 m!6455708))

(assert (=> b!5433906 m!6455934))

(assert (=> b!5433094 d!1732243))

(declare-fun d!1732245 () Bool)

(assert (=> d!1732245 (= (matchR!7412 r!7292 s!2326) (matchRSpec!2330 r!7292 s!2326))))

(declare-fun lt!2215232 () Unit!154430)

(declare-fun choose!41232 (Regex!15227 List!61981) Unit!154430)

(assert (=> d!1732245 (= lt!2215232 (choose!41232 r!7292 s!2326))))

(assert (=> d!1732245 (validRegex!6963 r!7292)))

(assert (=> d!1732245 (= (mainMatchTheorem!2330 r!7292 s!2326) lt!2215232)))

(declare-fun bs!1254816 () Bool)

(assert (= bs!1254816 d!1732245))

(assert (=> bs!1254816 m!6455630))

(assert (=> bs!1254816 m!6455628))

(declare-fun m!6456270 () Bool)

(assert (=> bs!1254816 m!6456270))

(assert (=> bs!1254816 m!6455658))

(assert (=> b!5433094 d!1732245))

(declare-fun d!1732247 () Bool)

(assert (=> d!1732247 (= (nullable!5396 (regOne!30966 (regOne!30966 r!7292))) (nullableFct!1621 (regOne!30966 (regOne!30966 r!7292))))))

(declare-fun bs!1254817 () Bool)

(assert (= bs!1254817 d!1732247))

(declare-fun m!6456272 () Bool)

(assert (=> bs!1254817 m!6456272))

(assert (=> b!5433115 d!1732247))

(declare-fun d!1732249 () Bool)

(assert (=> d!1732249 (= (flatMap!954 lt!2215114 lambda!285229) (choose!41217 lt!2215114 lambda!285229))))

(declare-fun bs!1254818 () Bool)

(assert (= bs!1254818 d!1732249))

(declare-fun m!6456274 () Bool)

(assert (=> bs!1254818 m!6456274))

(assert (=> b!5433111 d!1732249))

(declare-fun b!5433920 () Bool)

(declare-fun e!3366840 () (InoxSet Context!9222))

(assert (=> b!5433920 (= e!3366840 ((as const (Array Context!9222 Bool)) false))))

(declare-fun b!5433922 () Bool)

(declare-fun e!3366839 () Bool)

(assert (=> b!5433922 (= e!3366839 (nullable!5396 (h!68304 (exprs!5111 lt!2215092))))))

(declare-fun d!1732251 () Bool)

(declare-fun c!948402 () Bool)

(assert (=> d!1732251 (= c!948402 e!3366839)))

(declare-fun res!2312376 () Bool)

(assert (=> d!1732251 (=> (not res!2312376) (not e!3366839))))

(assert (=> d!1732251 (= res!2312376 ((_ is Cons!61856) (exprs!5111 lt!2215092)))))

(declare-fun e!3366841 () (InoxSet Context!9222))

(assert (=> d!1732251 (= (derivationStepZipperUp!599 lt!2215092 (h!68305 s!2326)) e!3366841)))

(declare-fun bm!389317 () Bool)

(declare-fun call!389325 () (InoxSet Context!9222))

(assert (=> bm!389317 (= call!389325 (derivationStepZipperDown!675 (h!68304 (exprs!5111 lt!2215092)) (Context!9223 (t!375205 (exprs!5111 lt!2215092))) (h!68305 s!2326)))))

(declare-fun b!5433925 () Bool)

(assert (=> b!5433925 (= e!3366841 ((_ map or) call!389325 (derivationStepZipperUp!599 (Context!9223 (t!375205 (exprs!5111 lt!2215092))) (h!68305 s!2326))))))

(declare-fun b!5433927 () Bool)

(assert (=> b!5433927 (= e!3366841 e!3366840)))

(declare-fun c!948403 () Bool)

(assert (=> b!5433927 (= c!948403 ((_ is Cons!61856) (exprs!5111 lt!2215092)))))

(declare-fun b!5433929 () Bool)

(assert (=> b!5433929 (= e!3366840 call!389325)))

(assert (= (and d!1732251 res!2312376) b!5433922))

(assert (= (and d!1732251 c!948402) b!5433925))

(assert (= (and d!1732251 (not c!948402)) b!5433927))

(assert (= (and b!5433927 c!948403) b!5433929))

(assert (= (and b!5433927 (not c!948403)) b!5433920))

(assert (= (or b!5433925 b!5433929) bm!389317))

(declare-fun m!6456276 () Bool)

(assert (=> b!5433922 m!6456276))

(declare-fun m!6456278 () Bool)

(assert (=> bm!389317 m!6456278))

(declare-fun m!6456280 () Bool)

(assert (=> b!5433925 m!6456280))

(assert (=> b!5433111 d!1732251))

(declare-fun d!1732253 () Bool)

(assert (=> d!1732253 (= (flatMap!954 lt!2215114 lambda!285229) (dynLambda!24374 lambda!285229 lt!2215092))))

(declare-fun lt!2215234 () Unit!154430)

(assert (=> d!1732253 (= lt!2215234 (choose!41218 lt!2215114 lt!2215092 lambda!285229))))

(assert (=> d!1732253 (= lt!2215114 (store ((as const (Array Context!9222 Bool)) false) lt!2215092 true))))

(assert (=> d!1732253 (= (lemmaFlatMapOnSingletonSet!486 lt!2215114 lt!2215092 lambda!285229) lt!2215234)))

(declare-fun b_lambda!207323 () Bool)

(assert (=> (not b_lambda!207323) (not d!1732253)))

(declare-fun bs!1254819 () Bool)

(assert (= bs!1254819 d!1732253))

(assert (=> bs!1254819 m!6455668))

(declare-fun m!6456282 () Bool)

(assert (=> bs!1254819 m!6456282))

(declare-fun m!6456284 () Bool)

(assert (=> bs!1254819 m!6456284))

(assert (=> bs!1254819 m!6455662))

(assert (=> b!5433111 d!1732253))

(declare-fun bs!1254820 () Bool)

(declare-fun d!1732255 () Bool)

(assert (= bs!1254820 (and d!1732255 b!5433096)))

(declare-fun lambda!285307 () Int)

(assert (=> bs!1254820 (= lambda!285307 lambda!285229)))

(declare-fun bs!1254821 () Bool)

(assert (= bs!1254821 (and d!1732255 d!1732141)))

(assert (=> bs!1254821 (= lambda!285307 lambda!285268)))

(assert (=> d!1732255 true))

(assert (=> d!1732255 (= (derivationStepZipper!1466 lt!2215114 (h!68305 s!2326)) (flatMap!954 lt!2215114 lambda!285307))))

(declare-fun bs!1254822 () Bool)

(assert (= bs!1254822 d!1732255))

(declare-fun m!6456296 () Bool)

(assert (=> bs!1254822 m!6456296))

(assert (=> b!5433111 d!1732255))

(declare-fun d!1732259 () Bool)

(assert (=> d!1732259 (= (isEmpty!33860 (t!375205 (exprs!5111 (h!68306 zl!343)))) ((_ is Nil!61856) (t!375205 (exprs!5111 (h!68306 zl!343)))))))

(assert (=> b!5433092 d!1732259))

(declare-fun b!5433950 () Bool)

(declare-fun e!3366854 () Bool)

(assert (=> b!5433950 (= e!3366854 (nullable!5396 lt!2215094))))

(declare-fun b!5433951 () Bool)

(declare-fun e!3366857 () Bool)

(assert (=> b!5433951 (= e!3366857 (= (head!11655 s!2326) (c!948125 lt!2215094)))))

(declare-fun b!5433952 () Bool)

(assert (=> b!5433952 (= e!3366854 (matchR!7412 (derivativeStep!4291 lt!2215094 (head!11655 s!2326)) (tail!10752 s!2326)))))

(declare-fun bm!389328 () Bool)

(declare-fun call!389333 () Bool)

(assert (=> bm!389328 (= call!389333 (isEmpty!33862 s!2326))))

(declare-fun b!5433954 () Bool)

(declare-fun res!2312380 () Bool)

(assert (=> b!5433954 (=> (not res!2312380) (not e!3366857))))

(assert (=> b!5433954 (= res!2312380 (not call!389333))))

(declare-fun b!5433955 () Bool)

(declare-fun e!3366858 () Bool)

(declare-fun lt!2215236 () Bool)

(assert (=> b!5433955 (= e!3366858 (not lt!2215236))))

(declare-fun b!5433956 () Bool)

(declare-fun e!3366852 () Bool)

(declare-fun e!3366855 () Bool)

(assert (=> b!5433956 (= e!3366852 e!3366855)))

(declare-fun res!2312387 () Bool)

(assert (=> b!5433956 (=> (not res!2312387) (not e!3366855))))

(assert (=> b!5433956 (= res!2312387 (not lt!2215236))))

(declare-fun b!5433957 () Bool)

(declare-fun e!3366856 () Bool)

(assert (=> b!5433957 (= e!3366855 e!3366856)))

(declare-fun res!2312381 () Bool)

(assert (=> b!5433957 (=> res!2312381 e!3366856)))

(assert (=> b!5433957 (= res!2312381 call!389333)))

(declare-fun b!5433958 () Bool)

(declare-fun res!2312384 () Bool)

(assert (=> b!5433958 (=> res!2312384 e!3366852)))

(assert (=> b!5433958 (= res!2312384 e!3366857)))

(declare-fun res!2312382 () Bool)

(assert (=> b!5433958 (=> (not res!2312382) (not e!3366857))))

(assert (=> b!5433958 (= res!2312382 lt!2215236)))

(declare-fun b!5433959 () Bool)

(declare-fun res!2312386 () Bool)

(assert (=> b!5433959 (=> res!2312386 e!3366856)))

(assert (=> b!5433959 (= res!2312386 (not (isEmpty!33862 (tail!10752 s!2326))))))

(declare-fun b!5433960 () Bool)

(declare-fun res!2312385 () Bool)

(assert (=> b!5433960 (=> res!2312385 e!3366852)))

(assert (=> b!5433960 (= res!2312385 (not ((_ is ElementMatch!15227) lt!2215094)))))

(assert (=> b!5433960 (= e!3366858 e!3366852)))

(declare-fun b!5433961 () Bool)

(declare-fun res!2312383 () Bool)

(assert (=> b!5433961 (=> (not res!2312383) (not e!3366857))))

(assert (=> b!5433961 (= res!2312383 (isEmpty!33862 (tail!10752 s!2326)))))

(declare-fun d!1732261 () Bool)

(declare-fun e!3366853 () Bool)

(assert (=> d!1732261 e!3366853))

(declare-fun c!948411 () Bool)

(assert (=> d!1732261 (= c!948411 ((_ is EmptyExpr!15227) lt!2215094))))

(assert (=> d!1732261 (= lt!2215236 e!3366854)))

(declare-fun c!948413 () Bool)

(assert (=> d!1732261 (= c!948413 (isEmpty!33862 s!2326))))

(assert (=> d!1732261 (validRegex!6963 lt!2215094)))

(assert (=> d!1732261 (= (matchR!7412 lt!2215094 s!2326) lt!2215236)))

(declare-fun b!5433953 () Bool)

(assert (=> b!5433953 (= e!3366853 (= lt!2215236 call!389333))))

(declare-fun b!5433962 () Bool)

(assert (=> b!5433962 (= e!3366853 e!3366858)))

(declare-fun c!948412 () Bool)

(assert (=> b!5433962 (= c!948412 ((_ is EmptyLang!15227) lt!2215094))))

(declare-fun b!5433963 () Bool)

(assert (=> b!5433963 (= e!3366856 (not (= (head!11655 s!2326) (c!948125 lt!2215094))))))

(assert (= (and d!1732261 c!948413) b!5433950))

(assert (= (and d!1732261 (not c!948413)) b!5433952))

(assert (= (and d!1732261 c!948411) b!5433953))

(assert (= (and d!1732261 (not c!948411)) b!5433962))

(assert (= (and b!5433962 c!948412) b!5433955))

(assert (= (and b!5433962 (not c!948412)) b!5433960))

(assert (= (and b!5433960 (not res!2312385)) b!5433958))

(assert (= (and b!5433958 res!2312382) b!5433954))

(assert (= (and b!5433954 res!2312380) b!5433961))

(assert (= (and b!5433961 res!2312383) b!5433951))

(assert (= (and b!5433958 (not res!2312384)) b!5433956))

(assert (= (and b!5433956 res!2312387) b!5433957))

(assert (= (and b!5433957 (not res!2312381)) b!5433959))

(assert (= (and b!5433959 (not res!2312386)) b!5433963))

(assert (= (or b!5433953 b!5433954 b!5433957) bm!389328))

(assert (=> b!5433961 m!6455708))

(assert (=> b!5433961 m!6455708))

(assert (=> b!5433961 m!6455934))

(assert (=> b!5433951 m!6455704))

(declare-fun m!6456308 () Bool)

(assert (=> b!5433950 m!6456308))

(assert (=> bm!389328 m!6455700))

(assert (=> b!5433952 m!6455704))

(assert (=> b!5433952 m!6455704))

(declare-fun m!6456310 () Bool)

(assert (=> b!5433952 m!6456310))

(assert (=> b!5433952 m!6455708))

(assert (=> b!5433952 m!6456310))

(assert (=> b!5433952 m!6455708))

(declare-fun m!6456312 () Bool)

(assert (=> b!5433952 m!6456312))

(assert (=> d!1732261 m!6455700))

(declare-fun m!6456314 () Bool)

(assert (=> d!1732261 m!6456314))

(assert (=> b!5433963 m!6455704))

(assert (=> b!5433959 m!6455708))

(assert (=> b!5433959 m!6455708))

(assert (=> b!5433959 m!6455934))

(assert (=> b!5433112 d!1732261))

(declare-fun bs!1254827 () Bool)

(declare-fun b!5433983 () Bool)

(assert (= bs!1254827 (and b!5433983 b!5433857)))

(declare-fun lambda!285309 () Int)

(assert (=> bs!1254827 (not (= lambda!285309 lambda!285306))))

(declare-fun bs!1254828 () Bool)

(assert (= bs!1254828 (and b!5433983 d!1732163)))

(assert (=> bs!1254828 (not (= lambda!285309 lambda!285277))))

(declare-fun bs!1254829 () Bool)

(assert (= bs!1254829 (and b!5433983 b!5433098)))

(assert (=> bs!1254829 (not (= lambda!285309 lambda!285227))))

(declare-fun bs!1254830 () Bool)

(assert (= bs!1254830 (and b!5433983 d!1732165)))

(assert (=> bs!1254830 (not (= lambda!285309 lambda!285286))))

(declare-fun bs!1254831 () Bool)

(assert (= bs!1254831 (and b!5433983 b!5433861)))

(assert (=> bs!1254831 (= (and (= (reg!15556 lt!2215094) (reg!15556 r!7292)) (= lt!2215094 r!7292)) (= lambda!285309 lambda!285305))))

(assert (=> bs!1254829 (not (= lambda!285309 lambda!285228))))

(assert (=> bs!1254830 (not (= lambda!285309 lambda!285285))))

(assert (=> b!5433983 true))

(assert (=> b!5433983 true))

(declare-fun bs!1254832 () Bool)

(declare-fun b!5433979 () Bool)

(assert (= bs!1254832 (and b!5433979 b!5433857)))

(declare-fun lambda!285310 () Int)

(assert (=> bs!1254832 (= (and (= (regOne!30966 lt!2215094) (regOne!30966 r!7292)) (= (regTwo!30966 lt!2215094) (regTwo!30966 r!7292))) (= lambda!285310 lambda!285306))))

(declare-fun bs!1254833 () Bool)

(assert (= bs!1254833 (and b!5433979 d!1732163)))

(assert (=> bs!1254833 (not (= lambda!285310 lambda!285277))))

(declare-fun bs!1254834 () Bool)

(assert (= bs!1254834 (and b!5433979 b!5433983)))

(assert (=> bs!1254834 (not (= lambda!285310 lambda!285309))))

(declare-fun bs!1254835 () Bool)

(assert (= bs!1254835 (and b!5433979 b!5433098)))

(assert (=> bs!1254835 (not (= lambda!285310 lambda!285227))))

(declare-fun bs!1254836 () Bool)

(assert (= bs!1254836 (and b!5433979 d!1732165)))

(assert (=> bs!1254836 (= (and (= (regOne!30966 lt!2215094) (regOne!30966 r!7292)) (= (regTwo!30966 lt!2215094) (regTwo!30966 r!7292))) (= lambda!285310 lambda!285286))))

(declare-fun bs!1254837 () Bool)

(assert (= bs!1254837 (and b!5433979 b!5433861)))

(assert (=> bs!1254837 (not (= lambda!285310 lambda!285305))))

(assert (=> bs!1254835 (= (and (= (regOne!30966 lt!2215094) (regOne!30966 r!7292)) (= (regTwo!30966 lt!2215094) (regTwo!30966 r!7292))) (= lambda!285310 lambda!285228))))

(assert (=> bs!1254836 (not (= lambda!285310 lambda!285285))))

(assert (=> b!5433979 true))

(assert (=> b!5433979 true))

(declare-fun b!5433974 () Bool)

(declare-fun e!3366871 () Bool)

(declare-fun e!3366868 () Bool)

(assert (=> b!5433974 (= e!3366871 e!3366868)))

(declare-fun res!2312392 () Bool)

(assert (=> b!5433974 (= res!2312392 (not ((_ is EmptyLang!15227) lt!2215094)))))

(assert (=> b!5433974 (=> (not res!2312392) (not e!3366868))))

(declare-fun b!5433975 () Bool)

(declare-fun c!948421 () Bool)

(assert (=> b!5433975 (= c!948421 ((_ is Union!15227) lt!2215094))))

(declare-fun e!3366869 () Bool)

(declare-fun e!3366865 () Bool)

(assert (=> b!5433975 (= e!3366869 e!3366865)))

(declare-fun bm!389329 () Bool)

(declare-fun call!389334 () Bool)

(assert (=> bm!389329 (= call!389334 (isEmpty!33862 s!2326))))

(declare-fun bm!389330 () Bool)

(declare-fun c!948419 () Bool)

(declare-fun call!389335 () Bool)

(assert (=> bm!389330 (= call!389335 (Exists!2408 (ite c!948419 lambda!285309 lambda!285310)))))

(declare-fun b!5433976 () Bool)

(assert (=> b!5433976 (= e!3366871 call!389334)))

(declare-fun b!5433977 () Bool)

(declare-fun e!3366867 () Bool)

(assert (=> b!5433977 (= e!3366865 e!3366867)))

(assert (=> b!5433977 (= c!948419 ((_ is Star!15227) lt!2215094))))

(assert (=> b!5433979 (= e!3366867 call!389335)))

(declare-fun b!5433980 () Bool)

(declare-fun c!948420 () Bool)

(assert (=> b!5433980 (= c!948420 ((_ is ElementMatch!15227) lt!2215094))))

(assert (=> b!5433980 (= e!3366868 e!3366869)))

(declare-fun b!5433981 () Bool)

(assert (=> b!5433981 (= e!3366869 (= s!2326 (Cons!61857 (c!948125 lt!2215094) Nil!61857)))))

(declare-fun b!5433982 () Bool)

(declare-fun res!2312390 () Bool)

(declare-fun e!3366866 () Bool)

(assert (=> b!5433982 (=> res!2312390 e!3366866)))

(assert (=> b!5433982 (= res!2312390 call!389334)))

(assert (=> b!5433982 (= e!3366867 e!3366866)))

(declare-fun d!1732265 () Bool)

(declare-fun c!948418 () Bool)

(assert (=> d!1732265 (= c!948418 ((_ is EmptyExpr!15227) lt!2215094))))

(assert (=> d!1732265 (= (matchRSpec!2330 lt!2215094 s!2326) e!3366871)))

(declare-fun b!5433978 () Bool)

(declare-fun e!3366870 () Bool)

(assert (=> b!5433978 (= e!3366870 (matchRSpec!2330 (regTwo!30967 lt!2215094) s!2326))))

(assert (=> b!5433983 (= e!3366866 call!389335)))

(declare-fun b!5433984 () Bool)

(assert (=> b!5433984 (= e!3366865 e!3366870)))

(declare-fun res!2312391 () Bool)

(assert (=> b!5433984 (= res!2312391 (matchRSpec!2330 (regOne!30967 lt!2215094) s!2326))))

(assert (=> b!5433984 (=> res!2312391 e!3366870)))

(assert (= (and d!1732265 c!948418) b!5433976))

(assert (= (and d!1732265 (not c!948418)) b!5433974))

(assert (= (and b!5433974 res!2312392) b!5433980))

(assert (= (and b!5433980 c!948420) b!5433981))

(assert (= (and b!5433980 (not c!948420)) b!5433975))

(assert (= (and b!5433975 c!948421) b!5433984))

(assert (= (and b!5433975 (not c!948421)) b!5433977))

(assert (= (and b!5433984 (not res!2312391)) b!5433978))

(assert (= (and b!5433977 c!948419) b!5433982))

(assert (= (and b!5433977 (not c!948419)) b!5433979))

(assert (= (and b!5433982 (not res!2312390)) b!5433983))

(assert (= (or b!5433983 b!5433979) bm!389330))

(assert (= (or b!5433976 b!5433982) bm!389329))

(assert (=> bm!389329 m!6455700))

(declare-fun m!6456334 () Bool)

(assert (=> bm!389330 m!6456334))

(declare-fun m!6456336 () Bool)

(assert (=> b!5433978 m!6456336))

(declare-fun m!6456338 () Bool)

(assert (=> b!5433984 m!6456338))

(assert (=> b!5433112 d!1732265))

(declare-fun d!1732269 () Bool)

(assert (=> d!1732269 (= (matchR!7412 lt!2215094 s!2326) (matchRSpec!2330 lt!2215094 s!2326))))

(declare-fun lt!2215238 () Unit!154430)

(assert (=> d!1732269 (= lt!2215238 (choose!41232 lt!2215094 s!2326))))

(assert (=> d!1732269 (validRegex!6963 lt!2215094)))

(assert (=> d!1732269 (= (mainMatchTheorem!2330 lt!2215094 s!2326) lt!2215238)))

(declare-fun bs!1254838 () Bool)

(assert (= bs!1254838 d!1732269))

(assert (=> bs!1254838 m!6455670))

(assert (=> bs!1254838 m!6455672))

(declare-fun m!6456340 () Bool)

(assert (=> bs!1254838 m!6456340))

(assert (=> bs!1254838 m!6456314))

(assert (=> b!5433112 d!1732269))

(declare-fun condSetEmpty!35454 () Bool)

(assert (=> setNonEmpty!35451 (= condSetEmpty!35454 (= setRest!35451 ((as const (Array Context!9222 Bool)) false)))))

(declare-fun setRes!35454 () Bool)

(assert (=> setNonEmpty!35451 (= tp!1498593 setRes!35454)))

(declare-fun setIsEmpty!35454 () Bool)

(assert (=> setIsEmpty!35454 setRes!35454))

(declare-fun setNonEmpty!35454 () Bool)

(declare-fun setElem!35454 () Context!9222)

(declare-fun e!3366888 () Bool)

(declare-fun tp!1498603 () Bool)

(assert (=> setNonEmpty!35454 (= setRes!35454 (and tp!1498603 (inv!81314 setElem!35454) e!3366888))))

(declare-fun setRest!35454 () (InoxSet Context!9222))

(assert (=> setNonEmpty!35454 (= setRest!35451 ((_ map or) (store ((as const (Array Context!9222 Bool)) false) setElem!35454 true) setRest!35454))))

(declare-fun b!5434007 () Bool)

(declare-fun tp!1498602 () Bool)

(assert (=> b!5434007 (= e!3366888 tp!1498602)))

(assert (= (and setNonEmpty!35451 condSetEmpty!35454) setIsEmpty!35454))

(assert (= (and setNonEmpty!35451 (not condSetEmpty!35454)) setNonEmpty!35454))

(assert (= setNonEmpty!35454 b!5434007))

(declare-fun m!6456342 () Bool)

(assert (=> setNonEmpty!35454 m!6456342))

(declare-fun b!5434012 () Bool)

(declare-fun e!3366891 () Bool)

(declare-fun tp!1498606 () Bool)

(assert (=> b!5434012 (= e!3366891 (and tp_is_empty!39707 tp!1498606))))

(assert (=> b!5433114 (= tp!1498597 e!3366891)))

(assert (= (and b!5433114 ((_ is Cons!61857) (t!375206 s!2326))) b!5434012))

(declare-fun b!5434026 () Bool)

(declare-fun e!3366897 () Bool)

(declare-fun tp!1498619 () Bool)

(declare-fun tp!1498620 () Bool)

(assert (=> b!5434026 (= e!3366897 (and tp!1498619 tp!1498620))))

(assert (=> b!5433121 (= tp!1498590 e!3366897)))

(declare-fun b!5434023 () Bool)

(assert (=> b!5434023 (= e!3366897 tp_is_empty!39707)))

(declare-fun b!5434024 () Bool)

(declare-fun tp!1498621 () Bool)

(declare-fun tp!1498618 () Bool)

(assert (=> b!5434024 (= e!3366897 (and tp!1498621 tp!1498618))))

(declare-fun b!5434025 () Bool)

(declare-fun tp!1498617 () Bool)

(assert (=> b!5434025 (= e!3366897 tp!1498617)))

(assert (= (and b!5433121 ((_ is ElementMatch!15227) (reg!15556 r!7292))) b!5434023))

(assert (= (and b!5433121 ((_ is Concat!24072) (reg!15556 r!7292))) b!5434024))

(assert (= (and b!5433121 ((_ is Star!15227) (reg!15556 r!7292))) b!5434025))

(assert (= (and b!5433121 ((_ is Union!15227) (reg!15556 r!7292))) b!5434026))

(declare-fun b!5434040 () Bool)

(declare-fun e!3366904 () Bool)

(declare-fun tp!1498626 () Bool)

(declare-fun tp!1498627 () Bool)

(assert (=> b!5434040 (= e!3366904 (and tp!1498626 tp!1498627))))

(assert (=> b!5433080 (= tp!1498588 e!3366904)))

(assert (= (and b!5433080 ((_ is Cons!61856) (exprs!5111 setElem!35451))) b!5434040))

(declare-fun b!5434062 () Bool)

(declare-fun e!3366917 () Bool)

(declare-fun tp!1498632 () Bool)

(assert (=> b!5434062 (= e!3366917 tp!1498632)))

(declare-fun tp!1498633 () Bool)

(declare-fun b!5434061 () Bool)

(declare-fun e!3366916 () Bool)

(assert (=> b!5434061 (= e!3366916 (and (inv!81314 (h!68306 (t!375207 zl!343))) e!3366917 tp!1498633))))

(assert (=> b!5433117 (= tp!1498591 e!3366916)))

(assert (= b!5434061 b!5434062))

(assert (= (and b!5433117 ((_ is Cons!61858) (t!375207 zl!343))) b!5434061))

(declare-fun m!6456350 () Bool)

(assert (=> b!5434061 m!6456350))

(declare-fun b!5434066 () Bool)

(declare-fun e!3366918 () Bool)

(declare-fun tp!1498636 () Bool)

(declare-fun tp!1498637 () Bool)

(assert (=> b!5434066 (= e!3366918 (and tp!1498636 tp!1498637))))

(assert (=> b!5433091 (= tp!1498594 e!3366918)))

(declare-fun b!5434063 () Bool)

(assert (=> b!5434063 (= e!3366918 tp_is_empty!39707)))

(declare-fun b!5434064 () Bool)

(declare-fun tp!1498638 () Bool)

(declare-fun tp!1498635 () Bool)

(assert (=> b!5434064 (= e!3366918 (and tp!1498638 tp!1498635))))

(declare-fun b!5434065 () Bool)

(declare-fun tp!1498634 () Bool)

(assert (=> b!5434065 (= e!3366918 tp!1498634)))

(assert (= (and b!5433091 ((_ is ElementMatch!15227) (regOne!30967 r!7292))) b!5434063))

(assert (= (and b!5433091 ((_ is Concat!24072) (regOne!30967 r!7292))) b!5434064))

(assert (= (and b!5433091 ((_ is Star!15227) (regOne!30967 r!7292))) b!5434065))

(assert (= (and b!5433091 ((_ is Union!15227) (regOne!30967 r!7292))) b!5434066))

(declare-fun b!5434070 () Bool)

(declare-fun e!3366919 () Bool)

(declare-fun tp!1498641 () Bool)

(declare-fun tp!1498642 () Bool)

(assert (=> b!5434070 (= e!3366919 (and tp!1498641 tp!1498642))))

(assert (=> b!5433091 (= tp!1498592 e!3366919)))

(declare-fun b!5434067 () Bool)

(assert (=> b!5434067 (= e!3366919 tp_is_empty!39707)))

(declare-fun b!5434068 () Bool)

(declare-fun tp!1498643 () Bool)

(declare-fun tp!1498640 () Bool)

(assert (=> b!5434068 (= e!3366919 (and tp!1498643 tp!1498640))))

(declare-fun b!5434069 () Bool)

(declare-fun tp!1498639 () Bool)

(assert (=> b!5434069 (= e!3366919 tp!1498639)))

(assert (= (and b!5433091 ((_ is ElementMatch!15227) (regTwo!30967 r!7292))) b!5434067))

(assert (= (and b!5433091 ((_ is Concat!24072) (regTwo!30967 r!7292))) b!5434068))

(assert (= (and b!5433091 ((_ is Star!15227) (regTwo!30967 r!7292))) b!5434069))

(assert (= (and b!5433091 ((_ is Union!15227) (regTwo!30967 r!7292))) b!5434070))

(declare-fun b!5434074 () Bool)

(declare-fun e!3366920 () Bool)

(declare-fun tp!1498646 () Bool)

(declare-fun tp!1498647 () Bool)

(assert (=> b!5434074 (= e!3366920 (and tp!1498646 tp!1498647))))

(assert (=> b!5433108 (= tp!1498595 e!3366920)))

(declare-fun b!5434071 () Bool)

(assert (=> b!5434071 (= e!3366920 tp_is_empty!39707)))

(declare-fun b!5434072 () Bool)

(declare-fun tp!1498648 () Bool)

(declare-fun tp!1498645 () Bool)

(assert (=> b!5434072 (= e!3366920 (and tp!1498648 tp!1498645))))

(declare-fun b!5434073 () Bool)

(declare-fun tp!1498644 () Bool)

(assert (=> b!5434073 (= e!3366920 tp!1498644)))

(assert (= (and b!5433108 ((_ is ElementMatch!15227) (regOne!30966 r!7292))) b!5434071))

(assert (= (and b!5433108 ((_ is Concat!24072) (regOne!30966 r!7292))) b!5434072))

(assert (= (and b!5433108 ((_ is Star!15227) (regOne!30966 r!7292))) b!5434073))

(assert (= (and b!5433108 ((_ is Union!15227) (regOne!30966 r!7292))) b!5434074))

(declare-fun b!5434080 () Bool)

(declare-fun e!3366922 () Bool)

(declare-fun tp!1498651 () Bool)

(declare-fun tp!1498652 () Bool)

(assert (=> b!5434080 (= e!3366922 (and tp!1498651 tp!1498652))))

(assert (=> b!5433108 (= tp!1498589 e!3366922)))

(declare-fun b!5434077 () Bool)

(assert (=> b!5434077 (= e!3366922 tp_is_empty!39707)))

(declare-fun b!5434078 () Bool)

(declare-fun tp!1498653 () Bool)

(declare-fun tp!1498650 () Bool)

(assert (=> b!5434078 (= e!3366922 (and tp!1498653 tp!1498650))))

(declare-fun b!5434079 () Bool)

(declare-fun tp!1498649 () Bool)

(assert (=> b!5434079 (= e!3366922 tp!1498649)))

(assert (= (and b!5433108 ((_ is ElementMatch!15227) (regTwo!30966 r!7292))) b!5434077))

(assert (= (and b!5433108 ((_ is Concat!24072) (regTwo!30966 r!7292))) b!5434078))

(assert (= (and b!5433108 ((_ is Star!15227) (regTwo!30966 r!7292))) b!5434079))

(assert (= (and b!5433108 ((_ is Union!15227) (regTwo!30966 r!7292))) b!5434080))

(declare-fun b!5434081 () Bool)

(declare-fun e!3366923 () Bool)

(declare-fun tp!1498654 () Bool)

(declare-fun tp!1498655 () Bool)

(assert (=> b!5434081 (= e!3366923 (and tp!1498654 tp!1498655))))

(assert (=> b!5433123 (= tp!1498596 e!3366923)))

(assert (= (and b!5433123 ((_ is Cons!61856) (exprs!5111 (h!68306 zl!343)))) b!5434081))

(declare-fun b_lambda!207325 () Bool)

(assert (= b_lambda!207319 (or b!5433096 b_lambda!207325)))

(declare-fun bs!1254839 () Bool)

(declare-fun d!1732277 () Bool)

(assert (= bs!1254839 (and d!1732277 b!5433096)))

(assert (=> bs!1254839 (= (dynLambda!24374 lambda!285229 (h!68306 zl!343)) (derivationStepZipperUp!599 (h!68306 zl!343) (h!68305 s!2326)))))

(assert (=> bs!1254839 m!6455574))

(assert (=> d!1732219 d!1732277))

(declare-fun b_lambda!207327 () Bool)

(assert (= b_lambda!207311 (or b!5433096 b_lambda!207327)))

(declare-fun bs!1254840 () Bool)

(declare-fun d!1732279 () Bool)

(assert (= bs!1254840 (and d!1732279 b!5433096)))

(assert (=> bs!1254840 (= (dynLambda!24374 lambda!285229 lt!2215108) (derivationStepZipperUp!599 lt!2215108 (h!68305 s!2326)))))

(assert (=> bs!1254840 m!6455654))

(assert (=> d!1732071 d!1732279))

(declare-fun b_lambda!207329 () Bool)

(assert (= b_lambda!207309 (or b!5433096 b_lambda!207329)))

(declare-fun bs!1254841 () Bool)

(declare-fun d!1732281 () Bool)

(assert (= bs!1254841 (and d!1732281 b!5433096)))

(assert (=> bs!1254841 (= (dynLambda!24374 lambda!285229 lt!2215109) (derivationStepZipperUp!599 lt!2215109 (h!68305 s!2326)))))

(assert (=> bs!1254841 m!6455644))

(assert (=> d!1732067 d!1732281))

(declare-fun b_lambda!207331 () Bool)

(assert (= b_lambda!207323 (or b!5433096 b_lambda!207331)))

(declare-fun bs!1254842 () Bool)

(declare-fun d!1732283 () Bool)

(assert (= bs!1254842 (and d!1732283 b!5433096)))

(assert (=> bs!1254842 (= (dynLambda!24374 lambda!285229 lt!2215092) (derivationStepZipperUp!599 lt!2215092 (h!68305 s!2326)))))

(assert (=> bs!1254842 m!6455660))

(assert (=> d!1732253 d!1732283))

(declare-fun b_lambda!207333 () Bool)

(assert (= b_lambda!207313 (or b!5433096 b_lambda!207333)))

(declare-fun bs!1254843 () Bool)

(declare-fun d!1732285 () Bool)

(assert (= bs!1254843 (and d!1732285 b!5433096)))

(assert (=> bs!1254843 (= (dynLambda!24374 lambda!285229 lt!2215080) (derivationStepZipperUp!599 lt!2215080 (h!68305 s!2326)))))

(assert (=> bs!1254843 m!6455572))

(assert (=> d!1732147 d!1732285))

(check-sat (not d!1732179) (not b!5433959) (not d!1732053) (not b!5433289) (not b!5433293) (not d!1732139) (not d!1732219) (not b!5433922) (not bm!389197) (not b!5433487) (not b!5433428) (not bm!389250) (not b!5433950) (not bm!389275) (not b!5434078) (not b!5434081) (not b!5433741) (not bm!389243) (not b!5433898) (not bm!389178) (not bm!389205) (not d!1732087) (not b!5433899) (not b!5434024) (not bm!389297) (not b!5433978) (not bm!389227) (not b!5433952) (not b!5434073) (not b!5433581) (not d!1732255) (not d!1732181) (not b!5433294) (not b!5433134) (not b!5433500) (not d!1732131) (not b!5433486) (not bm!389288) (not b!5433374) (not bm!389200) (not b!5433908) (not b!5433897) (not b!5433638) tp_is_empty!39707 (not d!1732141) (not b!5434040) (not b!5433856) (not b!5433371) (not b!5433770) (not b!5434065) (not b!5433582) (not d!1732077) (not b!5433346) (not b_lambda!207333) (not b!5433984) (not bm!389286) (not b!5434062) (not bm!389328) (not b!5433963) (not bm!389317) (not bm!389330) (not b!5433370) (not b!5434061) (not b!5433910) (not b!5433764) (not d!1732161) (not b!5434072) (not bm!389179) (not d!1732213) (not b!5433570) (not b!5434007) (not b!5434068) (not bm!389290) (not b!5434074) (not b!5433367) (not bm!389329) (not b!5433136) (not b!5433682) (not d!1732165) (not b!5433634) (not d!1732121) (not d!1732147) (not d!1732247) (not b!5433165) (not d!1732135) (not b!5433496) (not b!5433961) (not d!1732223) (not b!5433485) (not bs!1254839) (not b_lambda!207327) (not b!5434066) (not b!5433297) (not b!5433498) (not b!5433642) (not d!1732101) (not bm!389194) (not bm!389206) (not d!1732245) (not b!5433754) (not bm!389280) (not b!5433167) (not b!5434070) (not d!1732269) (not bm!389228) (not bm!389285) (not d!1732107) (not b!5433765) (not b!5433494) (not d!1732073) (not b!5433162) (not bm!389281) (not b!5433311) (not b!5433166) (not b!5433159) (not b!5433365) (not d!1732065) (not d!1732143) (not b_lambda!207329) (not b!5433782) (not bs!1254842) (not d!1732067) (not b!5433164) (not d!1732149) (not bm!389208) (not b!5433179) (not d!1732071) (not setNonEmpty!35454) (not b!5433137) (not b!5433562) (not d!1732229) (not b!5434025) (not d!1732163) (not d!1732055) (not b!5433296) (not d!1732109) (not b!5434079) (not b!5433906) (not b!5433180) (not b!5433292) (not d!1732261) (not bm!389279) (not d!1732091) (not b!5433499) (not b!5433348) (not d!1732059) (not d!1732069) (not bm!389287) (not b!5434069) (not b!5433185) (not b!5433372) (not d!1732061) (not b!5433568) (not bs!1254841) (not b!5433569) (not b!5433783) (not b!5433639) (not b!5433925) (not b!5433576) (not bs!1254840) (not b!5433566) (not bm!389211) (not b!5433135) (not b!5434026) (not b!5433184) (not bm!389195) (not d!1732157) (not d!1732103) (not d!1732243) (not bm!389308) (not b!5433373) (not bm!389291) (not bm!389207) (not bs!1254843) (not b!5433862) (not d!1732249) (not b!5433683) (not b!5433295) (not b!5434080) (not b!5433563) (not b_lambda!207325) (not b!5433635) (not b!5433777) (not b!5433769) (not b_lambda!207331) (not b!5433565) (not bm!389296) (not b!5433640) (not bm!389196) (not b!5434064) (not d!1732253) (not d!1732057) (not d!1732225) (not b!5433951) (not d!1732129) (not b!5434012) (not b!5433163))
(check-sat)
