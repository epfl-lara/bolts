; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!560170 () Bool)

(assert start!560170)

(declare-fun b!5313332 () Bool)

(assert (=> b!5313332 true))

(assert (=> b!5313332 true))

(declare-fun lambda!270818 () Int)

(declare-fun lambda!270817 () Int)

(assert (=> b!5313332 (not (= lambda!270818 lambda!270817))))

(assert (=> b!5313332 true))

(assert (=> b!5313332 true))

(declare-fun b!5313306 () Bool)

(assert (=> b!5313306 true))

(declare-fun bs!1231916 () Bool)

(declare-fun b!5313296 () Bool)

(assert (= bs!1231916 (and b!5313296 b!5313332)))

(declare-fun lambda!270820 () Int)

(declare-datatypes ((C!30204 0))(
  ( (C!30205 (val!24804 Int)) )
))
(declare-datatypes ((Regex!14967 0))(
  ( (ElementMatch!14967 (c!923065 C!30204)) (Concat!23812 (regOne!30446 Regex!14967) (regTwo!30446 Regex!14967)) (EmptyExpr!14967) (Star!14967 (reg!15296 Regex!14967)) (EmptyLang!14967) (Union!14967 (regOne!30447 Regex!14967) (regTwo!30447 Regex!14967)) )
))
(declare-fun r!7292 () Regex!14967)

(declare-fun lt!2170869 () Regex!14967)

(assert (=> bs!1231916 (= (and (= (regOne!30446 (regOne!30446 r!7292)) (regOne!30446 r!7292)) (= lt!2170869 (regTwo!30446 r!7292))) (= lambda!270820 lambda!270817))))

(assert (=> bs!1231916 (not (= lambda!270820 lambda!270818))))

(assert (=> b!5313296 true))

(assert (=> b!5313296 true))

(assert (=> b!5313296 true))

(declare-fun lambda!270821 () Int)

(assert (=> bs!1231916 (not (= lambda!270821 lambda!270817))))

(assert (=> bs!1231916 (= (and (= (regOne!30446 (regOne!30446 r!7292)) (regOne!30446 r!7292)) (= lt!2170869 (regTwo!30446 r!7292))) (= lambda!270821 lambda!270818))))

(assert (=> b!5313296 (not (= lambda!270821 lambda!270820))))

(assert (=> b!5313296 true))

(assert (=> b!5313296 true))

(assert (=> b!5313296 true))

(declare-fun lt!2170877 () Regex!14967)

(declare-fun lambda!270822 () Int)

(assert (=> bs!1231916 (= (and (= (regTwo!30446 (regOne!30446 r!7292)) (regOne!30446 r!7292)) (= lt!2170877 (regTwo!30446 r!7292))) (= lambda!270822 lambda!270817))))

(assert (=> bs!1231916 (not (= lambda!270822 lambda!270818))))

(assert (=> b!5313296 (= (and (= (regTwo!30446 (regOne!30446 r!7292)) (regOne!30446 (regOne!30446 r!7292))) (= lt!2170877 lt!2170869)) (= lambda!270822 lambda!270820))))

(assert (=> b!5313296 (not (= lambda!270822 lambda!270821))))

(assert (=> b!5313296 true))

(assert (=> b!5313296 true))

(assert (=> b!5313296 true))

(declare-fun lambda!270823 () Int)

(assert (=> b!5313296 (not (= lambda!270823 lambda!270822))))

(assert (=> b!5313296 (not (= lambda!270823 lambda!270820))))

(assert (=> b!5313296 (= (and (= (regTwo!30446 (regOne!30446 r!7292)) (regOne!30446 (regOne!30446 r!7292))) (= lt!2170877 lt!2170869)) (= lambda!270823 lambda!270821))))

(assert (=> bs!1231916 (= (and (= (regTwo!30446 (regOne!30446 r!7292)) (regOne!30446 r!7292)) (= lt!2170877 (regTwo!30446 r!7292))) (= lambda!270823 lambda!270818))))

(assert (=> bs!1231916 (not (= lambda!270823 lambda!270817))))

(assert (=> b!5313296 true))

(assert (=> b!5313296 true))

(assert (=> b!5313296 true))

(declare-fun b!5313297 () Bool)

(declare-fun res!2254103 () Bool)

(declare-fun e!3301548 () Bool)

(assert (=> b!5313297 (=> res!2254103 e!3301548)))

(declare-datatypes ((List!61200 0))(
  ( (Nil!61076) (Cons!61076 (h!67524 C!30204) (t!374405 List!61200)) )
))
(declare-fun s!2326 () List!61200)

(declare-fun lt!2170850 () Bool)

(declare-fun matchR!7152 (Regex!14967 List!61200) Bool)

(assert (=> b!5313297 (= res!2254103 (not (= lt!2170850 (matchR!7152 (Concat!23812 (regOne!30446 r!7292) (regTwo!30446 r!7292)) s!2326))))))

(declare-fun b!5313298 () Bool)

(declare-fun e!3301536 () Bool)

(declare-fun e!3301555 () Bool)

(assert (=> b!5313298 (= e!3301536 (not e!3301555))))

(declare-fun res!2254102 () Bool)

(assert (=> b!5313298 (=> res!2254102 e!3301555)))

(declare-datatypes ((List!61201 0))(
  ( (Nil!61077) (Cons!61077 (h!67525 Regex!14967) (t!374406 List!61201)) )
))
(declare-datatypes ((Context!8702 0))(
  ( (Context!8703 (exprs!4851 List!61201)) )
))
(declare-datatypes ((List!61202 0))(
  ( (Nil!61078) (Cons!61078 (h!67526 Context!8702) (t!374407 List!61202)) )
))
(declare-fun zl!343 () List!61202)

(get-info :version)

(assert (=> b!5313298 (= res!2254102 (not ((_ is Cons!61078) zl!343)))))

(declare-fun matchRSpec!2070 (Regex!14967 List!61200) Bool)

(assert (=> b!5313298 (= lt!2170850 (matchRSpec!2070 r!7292 s!2326))))

(assert (=> b!5313298 (= lt!2170850 (matchR!7152 r!7292 s!2326))))

(declare-datatypes ((Unit!153386 0))(
  ( (Unit!153387) )
))
(declare-fun lt!2170875 () Unit!153386)

(declare-fun mainMatchTheorem!2070 (Regex!14967 List!61200) Unit!153386)

(assert (=> b!5313298 (= lt!2170875 (mainMatchTheorem!2070 r!7292 s!2326))))

(declare-fun b!5313299 () Bool)

(declare-fun res!2254104 () Bool)

(assert (=> b!5313299 (=> res!2254104 e!3301555)))

(assert (=> b!5313299 (= res!2254104 (or ((_ is EmptyExpr!14967) r!7292) ((_ is EmptyLang!14967) r!7292) ((_ is ElementMatch!14967) r!7292) ((_ is Union!14967) r!7292) (not ((_ is Concat!23812) r!7292))))))

(declare-fun b!5313300 () Bool)

(declare-fun res!2254115 () Bool)

(declare-fun e!3301539 () Bool)

(assert (=> b!5313300 (=> res!2254115 e!3301539)))

(declare-fun nullable!5136 (Regex!14967) Bool)

(assert (=> b!5313300 (= res!2254115 (not (nullable!5136 (regOne!30446 (regOne!30446 r!7292)))))))

(declare-fun b!5313301 () Bool)

(declare-fun e!3301547 () Bool)

(declare-fun tp_is_empty!39187 () Bool)

(assert (=> b!5313301 (= e!3301547 tp_is_empty!39187)))

(declare-fun b!5313302 () Bool)

(declare-fun res!2254113 () Bool)

(assert (=> b!5313302 (=> res!2254113 e!3301555)))

(declare-fun isEmpty!33043 (List!61202) Bool)

(assert (=> b!5313302 (= res!2254113 (not (isEmpty!33043 (t!374407 zl!343))))))

(declare-fun b!5313303 () Bool)

(declare-fun tp!1479863 () Bool)

(assert (=> b!5313303 (= e!3301547 tp!1479863)))

(declare-fun b!5313304 () Bool)

(declare-fun e!3301553 () Bool)

(declare-fun tp!1479860 () Bool)

(assert (=> b!5313304 (= e!3301553 (and tp_is_empty!39187 tp!1479860))))

(declare-fun b!5313305 () Bool)

(declare-fun e!3301540 () Bool)

(assert (=> b!5313305 (= e!3301539 e!3301540)))

(declare-fun res!2254114 () Bool)

(assert (=> b!5313305 (=> res!2254114 e!3301540)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2170837 () (InoxSet Context!8702))

(declare-fun lt!2170859 () (InoxSet Context!8702))

(assert (=> b!5313305 (= res!2254114 (not (= lt!2170837 lt!2170859)))))

(declare-fun lt!2170858 () (InoxSet Context!8702))

(declare-fun lt!2170839 () (InoxSet Context!8702))

(assert (=> b!5313305 (= lt!2170859 ((_ map or) lt!2170858 lt!2170839))))

(declare-fun lt!2170855 () Context!8702)

(declare-fun derivationStepZipperDown!415 (Regex!14967 Context!8702 C!30204) (InoxSet Context!8702))

(assert (=> b!5313305 (= lt!2170839 (derivationStepZipperDown!415 (regTwo!30446 (regOne!30446 r!7292)) lt!2170855 (h!67524 s!2326)))))

(declare-fun lt!2170847 () Context!8702)

(assert (=> b!5313305 (= lt!2170858 (derivationStepZipperDown!415 (regOne!30446 (regOne!30446 r!7292)) lt!2170847 (h!67524 s!2326)))))

(declare-fun lt!2170842 () List!61201)

(assert (=> b!5313305 (= lt!2170847 (Context!8703 lt!2170842))))

(assert (=> b!5313305 (= lt!2170842 (Cons!61077 (regTwo!30446 (regOne!30446 r!7292)) (t!374406 (exprs!4851 (h!67526 zl!343)))))))

(declare-fun e!3301538 () Bool)

(assert (=> b!5313306 (= e!3301538 e!3301539)))

(declare-fun res!2254116 () Bool)

(assert (=> b!5313306 (=> res!2254116 e!3301539)))

(assert (=> b!5313306 (= res!2254116 (or (and ((_ is ElementMatch!14967) (regOne!30446 r!7292)) (= (c!923065 (regOne!30446 r!7292)) (h!67524 s!2326))) ((_ is Union!14967) (regOne!30446 r!7292)) (not ((_ is Concat!23812) (regOne!30446 r!7292)))))))

(declare-fun lt!2170846 () Unit!153386)

(declare-fun e!3301554 () Unit!153386)

(assert (=> b!5313306 (= lt!2170846 e!3301554)))

(declare-fun c!923064 () Bool)

(assert (=> b!5313306 (= c!923064 (nullable!5136 (h!67525 (exprs!4851 (h!67526 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!8702))

(declare-fun lambda!270819 () Int)

(declare-fun flatMap!694 ((InoxSet Context!8702) Int) (InoxSet Context!8702))

(declare-fun derivationStepZipperUp!339 (Context!8702 C!30204) (InoxSet Context!8702))

(assert (=> b!5313306 (= (flatMap!694 z!1189 lambda!270819) (derivationStepZipperUp!339 (h!67526 zl!343) (h!67524 s!2326)))))

(declare-fun lt!2170854 () Unit!153386)

(declare-fun lemmaFlatMapOnSingletonSet!226 ((InoxSet Context!8702) Context!8702 Int) Unit!153386)

(assert (=> b!5313306 (= lt!2170854 (lemmaFlatMapOnSingletonSet!226 z!1189 (h!67526 zl!343) lambda!270819))))

(declare-fun lt!2170873 () (InoxSet Context!8702))

(assert (=> b!5313306 (= lt!2170873 (derivationStepZipperUp!339 lt!2170855 (h!67524 s!2326)))))

(assert (=> b!5313306 (= lt!2170837 (derivationStepZipperDown!415 (h!67525 (exprs!4851 (h!67526 zl!343))) lt!2170855 (h!67524 s!2326)))))

(assert (=> b!5313306 (= lt!2170855 (Context!8703 (t!374406 (exprs!4851 (h!67526 zl!343)))))))

(declare-fun lt!2170860 () (InoxSet Context!8702))

(assert (=> b!5313306 (= lt!2170860 (derivationStepZipperUp!339 (Context!8703 (Cons!61077 (h!67525 (exprs!4851 (h!67526 zl!343))) (t!374406 (exprs!4851 (h!67526 zl!343))))) (h!67524 s!2326)))))

(declare-fun b!5313307 () Bool)

(declare-fun e!3301541 () Bool)

(declare-fun matchZipper!1211 ((InoxSet Context!8702) List!61200) Bool)

(assert (=> b!5313307 (= e!3301541 (matchZipper!1211 lt!2170873 (t!374405 s!2326)))))

(declare-fun b!5313308 () Bool)

(declare-fun e!3301535 () Bool)

(declare-fun e!3301544 () Bool)

(assert (=> b!5313308 (= e!3301535 e!3301544)))

(declare-fun res!2254121 () Bool)

(assert (=> b!5313308 (=> res!2254121 e!3301544)))

(declare-fun lt!2170871 () List!61202)

(declare-fun zipperDepthTotal!128 (List!61202) Int)

(assert (=> b!5313308 (= res!2254121 (>= (zipperDepthTotal!128 lt!2170871) (zipperDepthTotal!128 zl!343)))))

(declare-fun lt!2170867 () Context!8702)

(assert (=> b!5313308 (= lt!2170871 (Cons!61078 lt!2170867 Nil!61078))))

(declare-fun b!5313309 () Bool)

(declare-fun res!2254107 () Bool)

(assert (=> b!5313309 (=> res!2254107 e!3301548)))

(declare-fun lt!2170872 () Regex!14967)

(assert (=> b!5313309 (= res!2254107 (not (= lt!2170850 (matchR!7152 (Concat!23812 lt!2170872 (regTwo!30446 r!7292)) s!2326))))))

(declare-fun setIsEmpty!34169 () Bool)

(declare-fun setRes!34169 () Bool)

(assert (=> setIsEmpty!34169 setRes!34169))

(declare-fun b!5313310 () Bool)

(declare-fun e!3301551 () Bool)

(assert (=> b!5313310 (= e!3301548 e!3301551)))

(declare-fun res!2254123 () Bool)

(assert (=> b!5313310 (=> res!2254123 e!3301551)))

(declare-fun lt!2170880 () Bool)

(assert (=> b!5313310 (= res!2254123 (not (= lt!2170850 lt!2170880)))))

(assert (=> b!5313310 (= lt!2170880 (matchR!7152 (Concat!23812 lt!2170872 lt!2170877) s!2326))))

(declare-fun b!5313311 () Bool)

(declare-fun e!3301556 () Bool)

(declare-fun e!3301550 () Bool)

(assert (=> b!5313311 (= e!3301556 e!3301550)))

(declare-fun res!2254112 () Bool)

(assert (=> b!5313311 (=> res!2254112 e!3301550)))

(declare-fun lt!2170865 () (InoxSet Context!8702))

(declare-fun lt!2170843 () (InoxSet Context!8702))

(assert (=> b!5313311 (= res!2254112 (not (= lt!2170865 lt!2170843)))))

(declare-fun lt!2170836 () (InoxSet Context!8702))

(assert (=> b!5313311 (= lt!2170843 ((_ map or) lt!2170858 lt!2170836))))

(assert (=> b!5313311 (= lt!2170836 (derivationStepZipperUp!339 lt!2170847 (h!67524 s!2326)))))

(declare-fun lt!2170833 () (InoxSet Context!8702))

(assert (=> b!5313311 (= (flatMap!694 lt!2170833 lambda!270819) (derivationStepZipperUp!339 lt!2170867 (h!67524 s!2326)))))

(declare-fun lt!2170861 () Unit!153386)

(assert (=> b!5313311 (= lt!2170861 (lemmaFlatMapOnSingletonSet!226 lt!2170833 lt!2170867 lambda!270819))))

(declare-fun lt!2170870 () (InoxSet Context!8702))

(assert (=> b!5313311 (= lt!2170870 (derivationStepZipperUp!339 lt!2170867 (h!67524 s!2326)))))

(declare-fun derivationStepZipper!1210 ((InoxSet Context!8702) C!30204) (InoxSet Context!8702))

(assert (=> b!5313311 (= lt!2170865 (derivationStepZipper!1210 lt!2170833 (h!67524 s!2326)))))

(declare-fun lt!2170856 () (InoxSet Context!8702))

(assert (=> b!5313311 (= lt!2170856 (store ((as const (Array Context!8702 Bool)) false) lt!2170847 true))))

(assert (=> b!5313311 (= lt!2170833 (store ((as const (Array Context!8702 Bool)) false) lt!2170867 true))))

(declare-fun lt!2170853 () List!61201)

(assert (=> b!5313311 (= lt!2170867 (Context!8703 lt!2170853))))

(assert (=> b!5313311 (= lt!2170853 (Cons!61077 (regOne!30446 (regOne!30446 r!7292)) lt!2170842))))

(declare-fun b!5313312 () Bool)

(declare-fun res!2254105 () Bool)

(assert (=> b!5313312 (=> res!2254105 e!3301555)))

(declare-fun generalisedConcat!636 (List!61201) Regex!14967)

(assert (=> b!5313312 (= res!2254105 (not (= r!7292 (generalisedConcat!636 (exprs!4851 (h!67526 zl!343))))))))

(declare-fun b!5313313 () Bool)

(declare-fun e!3301543 () Bool)

(assert (=> b!5313313 (= e!3301543 (not (matchZipper!1211 (derivationStepZipper!1210 lt!2170856 (h!67524 s!2326)) (t!374405 s!2326))))))

(declare-fun b!5313314 () Bool)

(declare-fun Unit!153388 () Unit!153386)

(assert (=> b!5313314 (= e!3301554 Unit!153388)))

(declare-fun lt!2170851 () Unit!153386)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!204 ((InoxSet Context!8702) (InoxSet Context!8702) List!61200) Unit!153386)

(assert (=> b!5313314 (= lt!2170851 (lemmaZipperConcatMatchesSameAsBothZippers!204 lt!2170837 lt!2170873 (t!374405 s!2326)))))

(declare-fun res!2254096 () Bool)

(assert (=> b!5313314 (= res!2254096 (matchZipper!1211 lt!2170837 (t!374405 s!2326)))))

(assert (=> b!5313314 (=> res!2254096 e!3301541)))

(assert (=> b!5313314 (= (matchZipper!1211 ((_ map or) lt!2170837 lt!2170873) (t!374405 s!2326)) e!3301541)))

(declare-fun tp!1479866 () Bool)

(declare-fun setElem!34169 () Context!8702)

(declare-fun setNonEmpty!34169 () Bool)

(declare-fun e!3301552 () Bool)

(declare-fun inv!80664 (Context!8702) Bool)

(assert (=> setNonEmpty!34169 (= setRes!34169 (and tp!1479866 (inv!80664 setElem!34169) e!3301552))))

(declare-fun setRest!34169 () (InoxSet Context!8702))

(assert (=> setNonEmpty!34169 (= z!1189 ((_ map or) (store ((as const (Array Context!8702 Bool)) false) setElem!34169 true) setRest!34169))))

(declare-fun b!5313315 () Bool)

(declare-fun tp!1479867 () Bool)

(assert (=> b!5313315 (= e!3301552 tp!1479867)))

(declare-fun res!2254097 () Bool)

(assert (=> start!560170 (=> (not res!2254097) (not e!3301536))))

(declare-fun validRegex!6703 (Regex!14967) Bool)

(assert (=> start!560170 (= res!2254097 (validRegex!6703 r!7292))))

(assert (=> start!560170 e!3301536))

(assert (=> start!560170 e!3301547))

(declare-fun condSetEmpty!34169 () Bool)

(assert (=> start!560170 (= condSetEmpty!34169 (= z!1189 ((as const (Array Context!8702 Bool)) false)))))

(assert (=> start!560170 setRes!34169))

(declare-fun e!3301546 () Bool)

(assert (=> start!560170 e!3301546))

(assert (=> start!560170 e!3301553))

(assert (=> b!5313296 (= e!3301544 e!3301548)))

(declare-fun res!2254109 () Bool)

(assert (=> b!5313296 (=> res!2254109 e!3301548)))

(declare-fun lt!2170868 () Bool)

(declare-fun lt!2170878 () Bool)

(declare-fun lt!2170840 () Bool)

(declare-fun lt!2170834 () Bool)

(declare-fun lt!2170845 () Bool)

(assert (=> b!5313296 (= res!2254109 (or (not (= lt!2170868 (or lt!2170834 lt!2170878))) (not (= lt!2170868 (or lt!2170845 lt!2170840)))))))

(assert (=> b!5313296 (= lt!2170868 (matchZipper!1211 z!1189 s!2326))))

(declare-fun Exists!2148 (Int) Bool)

(assert (=> b!5313296 (= (Exists!2148 lambda!270822) (Exists!2148 lambda!270823))))

(declare-fun lt!2170835 () Unit!153386)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!802 (Regex!14967 Regex!14967 List!61200) Unit!153386)

(assert (=> b!5313296 (= lt!2170835 (lemmaExistCutMatchRandMatchRSpecEquivalent!802 (regTwo!30446 (regOne!30446 r!7292)) lt!2170877 s!2326))))

(declare-datatypes ((tuple2!64332 0))(
  ( (tuple2!64333 (_1!35469 List!61200) (_2!35469 List!61200)) )
))
(declare-datatypes ((Option!15078 0))(
  ( (None!15077) (Some!15077 (v!51106 tuple2!64332)) )
))
(declare-fun isDefined!11781 (Option!15078) Bool)

(declare-fun findConcatSeparation!1492 (Regex!14967 Regex!14967 List!61200 List!61200 List!61200) Option!15078)

(assert (=> b!5313296 (= (isDefined!11781 (findConcatSeparation!1492 (regTwo!30446 (regOne!30446 r!7292)) lt!2170877 Nil!61076 s!2326 s!2326)) (Exists!2148 lambda!270822))))

(declare-fun lt!2170882 () Unit!153386)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1256 (Regex!14967 Regex!14967 List!61200) Unit!153386)

(assert (=> b!5313296 (= lt!2170882 (lemmaFindConcatSeparationEquivalentToExists!1256 (regTwo!30446 (regOne!30446 r!7292)) lt!2170877 s!2326))))

(assert (=> b!5313296 (= lt!2170877 (generalisedConcat!636 (t!374406 (exprs!4851 (h!67526 zl!343)))))))

(assert (=> b!5313296 (= lt!2170840 (matchRSpec!2070 lt!2170869 s!2326))))

(declare-fun lt!2170881 () Unit!153386)

(assert (=> b!5313296 (= lt!2170881 (mainMatchTheorem!2070 lt!2170869 s!2326))))

(assert (=> b!5313296 (= (Exists!2148 lambda!270820) (Exists!2148 lambda!270821))))

(declare-fun lt!2170876 () Unit!153386)

(assert (=> b!5313296 (= lt!2170876 (lemmaExistCutMatchRandMatchRSpecEquivalent!802 (regOne!30446 (regOne!30446 r!7292)) lt!2170869 s!2326))))

(assert (=> b!5313296 (= (isDefined!11781 (findConcatSeparation!1492 (regOne!30446 (regOne!30446 r!7292)) lt!2170869 Nil!61076 s!2326 s!2326)) (Exists!2148 lambda!270820))))

(declare-fun lt!2170832 () Unit!153386)

(assert (=> b!5313296 (= lt!2170832 (lemmaFindConcatSeparationEquivalentToExists!1256 (regOne!30446 (regOne!30446 r!7292)) lt!2170869 s!2326))))

(declare-fun lt!2170879 () Regex!14967)

(assert (=> b!5313296 (= lt!2170845 (matchRSpec!2070 lt!2170879 s!2326))))

(declare-fun lt!2170849 () Unit!153386)

(assert (=> b!5313296 (= lt!2170849 (mainMatchTheorem!2070 lt!2170879 s!2326))))

(assert (=> b!5313296 (= lt!2170840 lt!2170878)))

(assert (=> b!5313296 (= lt!2170878 (matchZipper!1211 lt!2170856 s!2326))))

(assert (=> b!5313296 (= lt!2170840 (matchR!7152 lt!2170869 s!2326))))

(declare-fun lt!2170844 () Unit!153386)

(declare-fun theoremZipperRegexEquiv!377 ((InoxSet Context!8702) List!61202 Regex!14967 List!61200) Unit!153386)

(assert (=> b!5313296 (= lt!2170844 (theoremZipperRegexEquiv!377 lt!2170856 (Cons!61078 lt!2170847 Nil!61078) lt!2170869 s!2326))))

(assert (=> b!5313296 (= lt!2170869 (generalisedConcat!636 lt!2170842))))

(assert (=> b!5313296 (= lt!2170845 lt!2170834)))

(assert (=> b!5313296 (= lt!2170834 (matchZipper!1211 lt!2170833 s!2326))))

(assert (=> b!5313296 (= lt!2170845 (matchR!7152 lt!2170879 s!2326))))

(declare-fun lt!2170863 () Unit!153386)

(assert (=> b!5313296 (= lt!2170863 (theoremZipperRegexEquiv!377 lt!2170833 lt!2170871 lt!2170879 s!2326))))

(assert (=> b!5313296 (= lt!2170879 (generalisedConcat!636 lt!2170853))))

(declare-fun b!5313316 () Bool)

(declare-fun e!3301534 () Bool)

(assert (=> b!5313316 (= e!3301550 e!3301534)))

(declare-fun res!2254110 () Bool)

(assert (=> b!5313316 (=> res!2254110 e!3301534)))

(assert (=> b!5313316 (= res!2254110 e!3301543)))

(declare-fun res!2254099 () Bool)

(assert (=> b!5313316 (=> (not res!2254099) (not e!3301543))))

(declare-fun lt!2170852 () Bool)

(assert (=> b!5313316 (= res!2254099 (not (= lt!2170852 (matchZipper!1211 lt!2170865 (t!374405 s!2326)))))))

(declare-fun e!3301549 () Bool)

(assert (=> b!5313316 (= (matchZipper!1211 lt!2170843 (t!374405 s!2326)) e!3301549)))

(declare-fun res!2254124 () Bool)

(assert (=> b!5313316 (=> res!2254124 e!3301549)))

(declare-fun lt!2170848 () Bool)

(assert (=> b!5313316 (= res!2254124 lt!2170848)))

(declare-fun lt!2170841 () Unit!153386)

(assert (=> b!5313316 (= lt!2170841 (lemmaZipperConcatMatchesSameAsBothZippers!204 lt!2170858 lt!2170836 (t!374405 s!2326)))))

(assert (=> b!5313316 (= (flatMap!694 lt!2170856 lambda!270819) (derivationStepZipperUp!339 lt!2170847 (h!67524 s!2326)))))

(declare-fun lt!2170838 () Unit!153386)

(assert (=> b!5313316 (= lt!2170838 (lemmaFlatMapOnSingletonSet!226 lt!2170856 lt!2170847 lambda!270819))))

(declare-fun b!5313317 () Bool)

(assert (=> b!5313317 (= e!3301549 (matchZipper!1211 lt!2170836 (t!374405 s!2326)))))

(declare-fun b!5313318 () Bool)

(assert (=> b!5313318 (= e!3301534 e!3301535)))

(declare-fun res!2254101 () Bool)

(assert (=> b!5313318 (=> res!2254101 e!3301535)))

(assert (=> b!5313318 (= res!2254101 (not (= (exprs!4851 (h!67526 zl!343)) (Cons!61077 lt!2170872 (t!374406 (exprs!4851 (h!67526 zl!343)))))))))

(assert (=> b!5313318 (= lt!2170872 (Concat!23812 (regOne!30446 (regOne!30446 r!7292)) (regTwo!30446 (regOne!30446 r!7292))))))

(declare-fun b!5313319 () Bool)

(declare-fun tp!1479864 () Bool)

(declare-fun tp!1479868 () Bool)

(assert (=> b!5313319 (= e!3301547 (and tp!1479864 tp!1479868))))

(declare-fun b!5313320 () Bool)

(declare-fun e!3301542 () Bool)

(assert (=> b!5313320 (= e!3301542 (matchZipper!1211 lt!2170839 (t!374405 s!2326)))))

(declare-fun b!5313321 () Bool)

(declare-fun res!2254106 () Bool)

(assert (=> b!5313321 (=> (not res!2254106) (not e!3301536))))

(declare-fun toList!8751 ((InoxSet Context!8702)) List!61202)

(assert (=> b!5313321 (= res!2254106 (= (toList!8751 z!1189) zl!343))))

(declare-fun b!5313322 () Bool)

(declare-fun res!2254120 () Bool)

(assert (=> b!5313322 (=> res!2254120 e!3301538)))

(declare-fun isEmpty!33044 (List!61201) Bool)

(assert (=> b!5313322 (= res!2254120 (isEmpty!33044 (t!374406 (exprs!4851 (h!67526 zl!343)))))))

(declare-fun b!5313323 () Bool)

(assert (=> b!5313323 (= e!3301540 e!3301556)))

(declare-fun res!2254100 () Bool)

(assert (=> b!5313323 (=> res!2254100 e!3301556)))

(declare-fun e!3301537 () Bool)

(assert (=> b!5313323 (= res!2254100 e!3301537)))

(declare-fun res!2254111 () Bool)

(assert (=> b!5313323 (=> (not res!2254111) (not e!3301537))))

(assert (=> b!5313323 (= res!2254111 (not (= lt!2170852 lt!2170848)))))

(assert (=> b!5313323 (= lt!2170852 (matchZipper!1211 lt!2170837 (t!374405 s!2326)))))

(assert (=> b!5313323 (= (matchZipper!1211 lt!2170859 (t!374405 s!2326)) e!3301542)))

(declare-fun res!2254118 () Bool)

(assert (=> b!5313323 (=> res!2254118 e!3301542)))

(assert (=> b!5313323 (= res!2254118 lt!2170848)))

(assert (=> b!5313323 (= lt!2170848 (matchZipper!1211 lt!2170858 (t!374405 s!2326)))))

(declare-fun lt!2170862 () Unit!153386)

(assert (=> b!5313323 (= lt!2170862 (lemmaZipperConcatMatchesSameAsBothZippers!204 lt!2170858 lt!2170839 (t!374405 s!2326)))))

(declare-fun b!5313324 () Bool)

(declare-fun res!2254122 () Bool)

(assert (=> b!5313324 (=> res!2254122 e!3301555)))

(assert (=> b!5313324 (= res!2254122 (not ((_ is Cons!61077) (exprs!4851 (h!67526 zl!343)))))))

(declare-fun b!5313325 () Bool)

(declare-fun res!2254117 () Bool)

(assert (=> b!5313325 (=> res!2254117 e!3301544)))

(declare-fun zipperDepth!84 (List!61202) Int)

(assert (=> b!5313325 (= res!2254117 (> (zipperDepth!84 lt!2170871) (zipperDepth!84 zl!343)))))

(declare-fun b!5313326 () Bool)

(declare-fun res!2254125 () Bool)

(assert (=> b!5313326 (=> (not res!2254125) (not e!3301536))))

(declare-fun unfocusZipper!709 (List!61202) Regex!14967)

(assert (=> b!5313326 (= res!2254125 (= r!7292 (unfocusZipper!709 zl!343)))))

(declare-fun e!3301545 () Bool)

(declare-fun tp!1479861 () Bool)

(declare-fun b!5313327 () Bool)

(assert (=> b!5313327 (= e!3301546 (and (inv!80664 (h!67526 zl!343)) e!3301545 tp!1479861))))

(declare-fun b!5313328 () Bool)

(declare-fun res!2254108 () Bool)

(assert (=> b!5313328 (=> res!2254108 e!3301555)))

(declare-fun generalisedUnion!896 (List!61201) Regex!14967)

(declare-fun unfocusZipperList!409 (List!61202) List!61201)

(assert (=> b!5313328 (= res!2254108 (not (= r!7292 (generalisedUnion!896 (unfocusZipperList!409 zl!343)))))))

(declare-fun b!5313329 () Bool)

(declare-fun tp!1479869 () Bool)

(assert (=> b!5313329 (= e!3301545 tp!1479869)))

(declare-fun b!5313330 () Bool)

(declare-fun tp!1479865 () Bool)

(declare-fun tp!1479862 () Bool)

(assert (=> b!5313330 (= e!3301547 (and tp!1479865 tp!1479862))))

(declare-fun b!5313331 () Bool)

(assert (=> b!5313331 (= e!3301537 (not (matchZipper!1211 lt!2170839 (t!374405 s!2326))))))

(assert (=> b!5313332 (= e!3301555 e!3301538)))

(declare-fun res!2254119 () Bool)

(assert (=> b!5313332 (=> res!2254119 e!3301538)))

(declare-fun lt!2170874 () Bool)

(assert (=> b!5313332 (= res!2254119 (or (not (= lt!2170850 lt!2170874)) ((_ is Nil!61076) s!2326)))))

(assert (=> b!5313332 (= (Exists!2148 lambda!270817) (Exists!2148 lambda!270818))))

(declare-fun lt!2170857 () Unit!153386)

(assert (=> b!5313332 (= lt!2170857 (lemmaExistCutMatchRandMatchRSpecEquivalent!802 (regOne!30446 r!7292) (regTwo!30446 r!7292) s!2326))))

(assert (=> b!5313332 (= lt!2170874 (Exists!2148 lambda!270817))))

(assert (=> b!5313332 (= lt!2170874 (isDefined!11781 (findConcatSeparation!1492 (regOne!30446 r!7292) (regTwo!30446 r!7292) Nil!61076 s!2326 s!2326)))))

(declare-fun lt!2170866 () Unit!153386)

(assert (=> b!5313332 (= lt!2170866 (lemmaFindConcatSeparationEquivalentToExists!1256 (regOne!30446 r!7292) (regTwo!30446 r!7292) s!2326))))

(declare-fun b!5313333 () Bool)

(declare-fun res!2254098 () Bool)

(assert (=> b!5313333 (=> res!2254098 e!3301535)))

(declare-fun contextDepthTotal!108 (Context!8702) Int)

(assert (=> b!5313333 (= res!2254098 (>= (contextDepthTotal!108 lt!2170867) (contextDepthTotal!108 (h!67526 zl!343))))))

(declare-fun b!5313334 () Bool)

(declare-fun Unit!153389 () Unit!153386)

(assert (=> b!5313334 (= e!3301554 Unit!153389)))

(declare-fun b!5313335 () Bool)

(assert (=> b!5313335 (= e!3301551 true)))

(assert (=> b!5313335 (= lt!2170880 (matchR!7152 (Concat!23812 (regOne!30446 (regOne!30446 r!7292)) (Concat!23812 (regTwo!30446 (regOne!30446 r!7292)) lt!2170877)) s!2326))))

(declare-fun lt!2170864 () Unit!153386)

(declare-fun lemmaConcatAssociative!8 (Regex!14967 Regex!14967 Regex!14967 List!61200) Unit!153386)

(assert (=> b!5313335 (= lt!2170864 (lemmaConcatAssociative!8 (regOne!30446 (regOne!30446 r!7292)) (regTwo!30446 (regOne!30446 r!7292)) lt!2170877 s!2326))))

(assert (= (and start!560170 res!2254097) b!5313321))

(assert (= (and b!5313321 res!2254106) b!5313326))

(assert (= (and b!5313326 res!2254125) b!5313298))

(assert (= (and b!5313298 (not res!2254102)) b!5313302))

(assert (= (and b!5313302 (not res!2254113)) b!5313312))

(assert (= (and b!5313312 (not res!2254105)) b!5313324))

(assert (= (and b!5313324 (not res!2254122)) b!5313328))

(assert (= (and b!5313328 (not res!2254108)) b!5313299))

(assert (= (and b!5313299 (not res!2254104)) b!5313332))

(assert (= (and b!5313332 (not res!2254119)) b!5313322))

(assert (= (and b!5313322 (not res!2254120)) b!5313306))

(assert (= (and b!5313306 c!923064) b!5313314))

(assert (= (and b!5313306 (not c!923064)) b!5313334))

(assert (= (and b!5313314 (not res!2254096)) b!5313307))

(assert (= (and b!5313306 (not res!2254116)) b!5313300))

(assert (= (and b!5313300 (not res!2254115)) b!5313305))

(assert (= (and b!5313305 (not res!2254114)) b!5313323))

(assert (= (and b!5313323 (not res!2254118)) b!5313320))

(assert (= (and b!5313323 res!2254111) b!5313331))

(assert (= (and b!5313323 (not res!2254100)) b!5313311))

(assert (= (and b!5313311 (not res!2254112)) b!5313316))

(assert (= (and b!5313316 (not res!2254124)) b!5313317))

(assert (= (and b!5313316 res!2254099) b!5313313))

(assert (= (and b!5313316 (not res!2254110)) b!5313318))

(assert (= (and b!5313318 (not res!2254101)) b!5313333))

(assert (= (and b!5313333 (not res!2254098)) b!5313308))

(assert (= (and b!5313308 (not res!2254121)) b!5313325))

(assert (= (and b!5313325 (not res!2254117)) b!5313296))

(assert (= (and b!5313296 (not res!2254109)) b!5313297))

(assert (= (and b!5313297 (not res!2254103)) b!5313309))

(assert (= (and b!5313309 (not res!2254107)) b!5313310))

(assert (= (and b!5313310 (not res!2254123)) b!5313335))

(assert (= (and start!560170 ((_ is ElementMatch!14967) r!7292)) b!5313301))

(assert (= (and start!560170 ((_ is Concat!23812) r!7292)) b!5313330))

(assert (= (and start!560170 ((_ is Star!14967) r!7292)) b!5313303))

(assert (= (and start!560170 ((_ is Union!14967) r!7292)) b!5313319))

(assert (= (and start!560170 condSetEmpty!34169) setIsEmpty!34169))

(assert (= (and start!560170 (not condSetEmpty!34169)) setNonEmpty!34169))

(assert (= setNonEmpty!34169 b!5313315))

(assert (= b!5313327 b!5313329))

(assert (= (and start!560170 ((_ is Cons!61078) zl!343)) b!5313327))

(assert (= (and start!560170 ((_ is Cons!61076) s!2326)) b!5313304))

(declare-fun m!6350214 () Bool)

(assert (=> b!5313297 m!6350214))

(declare-fun m!6350216 () Bool)

(assert (=> b!5313310 m!6350216))

(declare-fun m!6350218 () Bool)

(assert (=> b!5313335 m!6350218))

(declare-fun m!6350220 () Bool)

(assert (=> b!5313335 m!6350220))

(declare-fun m!6350222 () Bool)

(assert (=> b!5313323 m!6350222))

(declare-fun m!6350224 () Bool)

(assert (=> b!5313323 m!6350224))

(declare-fun m!6350226 () Bool)

(assert (=> b!5313323 m!6350226))

(declare-fun m!6350228 () Bool)

(assert (=> b!5313323 m!6350228))

(declare-fun m!6350230 () Bool)

(assert (=> b!5313333 m!6350230))

(declare-fun m!6350232 () Bool)

(assert (=> b!5313333 m!6350232))

(declare-fun m!6350234 () Bool)

(assert (=> setNonEmpty!34169 m!6350234))

(declare-fun m!6350236 () Bool)

(assert (=> b!5313308 m!6350236))

(declare-fun m!6350238 () Bool)

(assert (=> b!5313308 m!6350238))

(declare-fun m!6350240 () Bool)

(assert (=> b!5313309 m!6350240))

(declare-fun m!6350242 () Bool)

(assert (=> b!5313320 m!6350242))

(declare-fun m!6350244 () Bool)

(assert (=> b!5313325 m!6350244))

(declare-fun m!6350246 () Bool)

(assert (=> b!5313325 m!6350246))

(declare-fun m!6350248 () Bool)

(assert (=> b!5313326 m!6350248))

(declare-fun m!6350250 () Bool)

(assert (=> b!5313328 m!6350250))

(assert (=> b!5313328 m!6350250))

(declare-fun m!6350252 () Bool)

(assert (=> b!5313328 m!6350252))

(declare-fun m!6350254 () Bool)

(assert (=> b!5313316 m!6350254))

(declare-fun m!6350256 () Bool)

(assert (=> b!5313316 m!6350256))

(declare-fun m!6350258 () Bool)

(assert (=> b!5313316 m!6350258))

(declare-fun m!6350260 () Bool)

(assert (=> b!5313316 m!6350260))

(declare-fun m!6350262 () Bool)

(assert (=> b!5313316 m!6350262))

(declare-fun m!6350264 () Bool)

(assert (=> b!5313316 m!6350264))

(declare-fun m!6350266 () Bool)

(assert (=> b!5313313 m!6350266))

(assert (=> b!5313313 m!6350266))

(declare-fun m!6350268 () Bool)

(assert (=> b!5313313 m!6350268))

(declare-fun m!6350270 () Bool)

(assert (=> b!5313300 m!6350270))

(declare-fun m!6350272 () Bool)

(assert (=> b!5313332 m!6350272))

(declare-fun m!6350274 () Bool)

(assert (=> b!5313332 m!6350274))

(declare-fun m!6350276 () Bool)

(assert (=> b!5313332 m!6350276))

(declare-fun m!6350278 () Bool)

(assert (=> b!5313332 m!6350278))

(assert (=> b!5313332 m!6350276))

(declare-fun m!6350280 () Bool)

(assert (=> b!5313332 m!6350280))

(assert (=> b!5313332 m!6350272))

(declare-fun m!6350282 () Bool)

(assert (=> b!5313332 m!6350282))

(declare-fun m!6350284 () Bool)

(assert (=> b!5313317 m!6350284))

(declare-fun m!6350286 () Bool)

(assert (=> b!5313296 m!6350286))

(declare-fun m!6350288 () Bool)

(assert (=> b!5313296 m!6350288))

(declare-fun m!6350290 () Bool)

(assert (=> b!5313296 m!6350290))

(declare-fun m!6350292 () Bool)

(assert (=> b!5313296 m!6350292))

(declare-fun m!6350294 () Bool)

(assert (=> b!5313296 m!6350294))

(declare-fun m!6350296 () Bool)

(assert (=> b!5313296 m!6350296))

(declare-fun m!6350298 () Bool)

(assert (=> b!5313296 m!6350298))

(declare-fun m!6350300 () Bool)

(assert (=> b!5313296 m!6350300))

(declare-fun m!6350302 () Bool)

(assert (=> b!5313296 m!6350302))

(declare-fun m!6350304 () Bool)

(assert (=> b!5313296 m!6350304))

(declare-fun m!6350306 () Bool)

(assert (=> b!5313296 m!6350306))

(assert (=> b!5313296 m!6350290))

(declare-fun m!6350308 () Bool)

(assert (=> b!5313296 m!6350308))

(assert (=> b!5313296 m!6350294))

(declare-fun m!6350310 () Bool)

(assert (=> b!5313296 m!6350310))

(assert (=> b!5313296 m!6350306))

(declare-fun m!6350312 () Bool)

(assert (=> b!5313296 m!6350312))

(declare-fun m!6350314 () Bool)

(assert (=> b!5313296 m!6350314))

(declare-fun m!6350316 () Bool)

(assert (=> b!5313296 m!6350316))

(assert (=> b!5313296 m!6350292))

(declare-fun m!6350318 () Bool)

(assert (=> b!5313296 m!6350318))

(declare-fun m!6350320 () Bool)

(assert (=> b!5313296 m!6350320))

(declare-fun m!6350322 () Bool)

(assert (=> b!5313296 m!6350322))

(declare-fun m!6350324 () Bool)

(assert (=> b!5313296 m!6350324))

(declare-fun m!6350326 () Bool)

(assert (=> b!5313296 m!6350326))

(declare-fun m!6350328 () Bool)

(assert (=> b!5313296 m!6350328))

(declare-fun m!6350330 () Bool)

(assert (=> b!5313296 m!6350330))

(declare-fun m!6350332 () Bool)

(assert (=> b!5313296 m!6350332))

(declare-fun m!6350334 () Bool)

(assert (=> b!5313296 m!6350334))

(declare-fun m!6350336 () Bool)

(assert (=> b!5313296 m!6350336))

(declare-fun m!6350338 () Bool)

(assert (=> b!5313327 m!6350338))

(declare-fun m!6350340 () Bool)

(assert (=> b!5313302 m!6350340))

(declare-fun m!6350342 () Bool)

(assert (=> b!5313298 m!6350342))

(declare-fun m!6350344 () Bool)

(assert (=> b!5313298 m!6350344))

(declare-fun m!6350346 () Bool)

(assert (=> b!5313298 m!6350346))

(declare-fun m!6350348 () Bool)

(assert (=> b!5313305 m!6350348))

(declare-fun m!6350350 () Bool)

(assert (=> b!5313305 m!6350350))

(declare-fun m!6350352 () Bool)

(assert (=> b!5313314 m!6350352))

(assert (=> b!5313314 m!6350222))

(declare-fun m!6350354 () Bool)

(assert (=> b!5313314 m!6350354))

(declare-fun m!6350356 () Bool)

(assert (=> b!5313321 m!6350356))

(assert (=> b!5313331 m!6350242))

(declare-fun m!6350358 () Bool)

(assert (=> start!560170 m!6350358))

(declare-fun m!6350360 () Bool)

(assert (=> b!5313306 m!6350360))

(declare-fun m!6350362 () Bool)

(assert (=> b!5313306 m!6350362))

(declare-fun m!6350364 () Bool)

(assert (=> b!5313306 m!6350364))

(declare-fun m!6350366 () Bool)

(assert (=> b!5313306 m!6350366))

(declare-fun m!6350368 () Bool)

(assert (=> b!5313306 m!6350368))

(declare-fun m!6350370 () Bool)

(assert (=> b!5313306 m!6350370))

(declare-fun m!6350372 () Bool)

(assert (=> b!5313306 m!6350372))

(declare-fun m!6350374 () Bool)

(assert (=> b!5313307 m!6350374))

(declare-fun m!6350376 () Bool)

(assert (=> b!5313312 m!6350376))

(declare-fun m!6350378 () Bool)

(assert (=> b!5313322 m!6350378))

(declare-fun m!6350380 () Bool)

(assert (=> b!5313311 m!6350380))

(declare-fun m!6350382 () Bool)

(assert (=> b!5313311 m!6350382))

(declare-fun m!6350384 () Bool)

(assert (=> b!5313311 m!6350384))

(declare-fun m!6350386 () Bool)

(assert (=> b!5313311 m!6350386))

(declare-fun m!6350388 () Bool)

(assert (=> b!5313311 m!6350388))

(assert (=> b!5313311 m!6350258))

(declare-fun m!6350390 () Bool)

(assert (=> b!5313311 m!6350390))

(check-sat (not b!5313323) (not b!5313326) (not b!5313302) (not b!5313332) (not b!5313315) (not b!5313306) (not b!5313309) (not b!5313321) (not b!5313322) (not start!560170) (not b!5313325) (not b!5313313) (not b!5313329) (not b!5313311) (not b!5313300) (not b!5313297) (not b!5313298) (not b!5313312) (not b!5313320) (not b!5313319) (not b!5313335) (not setNonEmpty!34169) (not b!5313330) (not b!5313307) (not b!5313328) (not b!5313327) (not b!5313303) (not b!5313317) (not b!5313304) tp_is_empty!39187 (not b!5313296) (not b!5313331) (not b!5313316) (not b!5313308) (not b!5313314) (not b!5313305) (not b!5313310) (not b!5313333))
(check-sat)
