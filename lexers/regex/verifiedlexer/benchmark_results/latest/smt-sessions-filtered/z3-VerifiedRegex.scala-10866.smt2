; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!561074 () Bool)

(assert start!561074)

(declare-fun b!5322110 () Bool)

(assert (=> b!5322110 true))

(assert (=> b!5322110 true))

(declare-fun lambda!271494 () Int)

(declare-fun lambda!271493 () Int)

(assert (=> b!5322110 (not (= lambda!271494 lambda!271493))))

(assert (=> b!5322110 true))

(assert (=> b!5322110 true))

(declare-fun b!5322111 () Bool)

(assert (=> b!5322111 true))

(declare-fun b!5322080 () Bool)

(declare-fun res!2257404 () Bool)

(declare-fun e!3306338 () Bool)

(assert (=> b!5322080 (=> res!2257404 e!3306338)))

(declare-datatypes ((C!30228 0))(
  ( (C!30229 (val!24816 Int)) )
))
(declare-datatypes ((Regex!14979 0))(
  ( (ElementMatch!14979 (c!925045 C!30228)) (Concat!23824 (regOne!30470 Regex!14979) (regTwo!30470 Regex!14979)) (EmptyExpr!14979) (Star!14979 (reg!15308 Regex!14979)) (EmptyLang!14979) (Union!14979 (regOne!30471 Regex!14979) (regTwo!30471 Regex!14979)) )
))
(declare-fun r!7292 () Regex!14979)

(declare-datatypes ((List!61236 0))(
  ( (Nil!61112) (Cons!61112 (h!67560 Regex!14979) (t!374449 List!61236)) )
))
(declare-datatypes ((Context!8726 0))(
  ( (Context!8727 (exprs!4863 List!61236)) )
))
(declare-datatypes ((List!61237 0))(
  ( (Nil!61113) (Cons!61113 (h!67561 Context!8726) (t!374450 List!61237)) )
))
(declare-fun zl!343 () List!61237)

(declare-fun generalisedConcat!648 (List!61236) Regex!14979)

(assert (=> b!5322080 (= res!2257404 (not (= r!7292 (generalisedConcat!648 (exprs!4863 (h!67561 zl!343))))))))

(declare-fun b!5322081 () Bool)

(declare-fun res!2257422 () Bool)

(declare-fun e!3306332 () Bool)

(assert (=> b!5322081 (=> (not res!2257422) (not e!3306332))))

(declare-fun unfocusZipper!721 (List!61237) Regex!14979)

(assert (=> b!5322081 (= res!2257422 (= r!7292 (unfocusZipper!721 zl!343)))))

(declare-fun b!5322082 () Bool)

(assert (=> b!5322082 (= e!3306332 (not e!3306338))))

(declare-fun res!2257411 () Bool)

(assert (=> b!5322082 (=> res!2257411 e!3306338)))

(get-info :version)

(assert (=> b!5322082 (= res!2257411 (not ((_ is Cons!61113) zl!343)))))

(declare-fun lt!2172113 () Bool)

(declare-datatypes ((List!61238 0))(
  ( (Nil!61114) (Cons!61114 (h!67562 C!30228) (t!374451 List!61238)) )
))
(declare-fun s!2326 () List!61238)

(declare-fun matchRSpec!2082 (Regex!14979 List!61238) Bool)

(assert (=> b!5322082 (= lt!2172113 (matchRSpec!2082 r!7292 s!2326))))

(declare-fun matchR!7164 (Regex!14979 List!61238) Bool)

(assert (=> b!5322082 (= lt!2172113 (matchR!7164 r!7292 s!2326))))

(declare-datatypes ((Unit!153434 0))(
  ( (Unit!153435) )
))
(declare-fun lt!2172121 () Unit!153434)

(declare-fun mainMatchTheorem!2082 (Regex!14979 List!61238) Unit!153434)

(assert (=> b!5322082 (= lt!2172121 (mainMatchTheorem!2082 r!7292 s!2326))))

(declare-fun b!5322083 () Bool)

(declare-fun e!3306346 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2172117 () (InoxSet Context!8726))

(declare-fun matchZipper!1223 ((InoxSet Context!8726) List!61238) Bool)

(assert (=> b!5322083 (= e!3306346 (matchZipper!1223 lt!2172117 (t!374451 s!2326)))))

(declare-fun b!5322084 () Bool)

(declare-fun e!3306342 () Bool)

(declare-fun tp!1481972 () Bool)

(assert (=> b!5322084 (= e!3306342 tp!1481972)))

(declare-fun b!5322085 () Bool)

(declare-fun res!2257409 () Bool)

(declare-fun e!3306333 () Bool)

(assert (=> b!5322085 (=> res!2257409 e!3306333)))

(declare-fun lt!2172114 () Context!8726)

(declare-fun contextDepthTotal!112 (Context!8726) Int)

(assert (=> b!5322085 (= res!2257409 (>= (contextDepthTotal!112 lt!2172114) (contextDepthTotal!112 (h!67561 zl!343))))))

(declare-fun b!5322086 () Bool)

(declare-fun res!2257418 () Bool)

(assert (=> b!5322086 (=> res!2257418 e!3306338)))

(declare-fun isEmpty!33083 (List!61237) Bool)

(assert (=> b!5322086 (= res!2257418 (not (isEmpty!33083 (t!374450 zl!343))))))

(declare-fun b!5322087 () Bool)

(declare-fun e!3306336 () Bool)

(assert (=> b!5322087 (= e!3306336 e!3306333)))

(declare-fun res!2257420 () Bool)

(assert (=> b!5322087 (=> res!2257420 e!3306333)))

(declare-fun lt!2172130 () (InoxSet Context!8726))

(declare-fun lt!2172118 () (InoxSet Context!8726))

(assert (=> b!5322087 (= res!2257420 (not (= lt!2172130 lt!2172118)))))

(declare-fun lt!2172112 () (InoxSet Context!8726))

(declare-fun lambda!271495 () Int)

(declare-fun flatMap!706 ((InoxSet Context!8726) Int) (InoxSet Context!8726))

(declare-fun derivationStepZipperUp!351 (Context!8726 C!30228) (InoxSet Context!8726))

(assert (=> b!5322087 (= (flatMap!706 lt!2172112 lambda!271495) (derivationStepZipperUp!351 lt!2172114 (h!67562 s!2326)))))

(declare-fun lt!2172115 () Unit!153434)

(declare-fun lemmaFlatMapOnSingletonSet!238 ((InoxSet Context!8726) Context!8726 Int) Unit!153434)

(assert (=> b!5322087 (= lt!2172115 (lemmaFlatMapOnSingletonSet!238 lt!2172112 lt!2172114 lambda!271495))))

(declare-fun lt!2172123 () (InoxSet Context!8726))

(assert (=> b!5322087 (= lt!2172123 (derivationStepZipperUp!351 lt!2172114 (h!67562 s!2326)))))

(declare-fun derivationStepZipper!1220 ((InoxSet Context!8726) C!30228) (InoxSet Context!8726))

(assert (=> b!5322087 (= lt!2172130 (derivationStepZipper!1220 lt!2172112 (h!67562 s!2326)))))

(assert (=> b!5322087 (= lt!2172112 (store ((as const (Array Context!8726 Bool)) false) lt!2172114 true))))

(declare-fun lt!2172124 () List!61236)

(assert (=> b!5322087 (= lt!2172114 (Context!8727 lt!2172124))))

(declare-fun lt!2172131 () List!61236)

(assert (=> b!5322087 (= lt!2172124 (Cons!61112 (regOne!30470 (regOne!30470 r!7292)) lt!2172131))))

(declare-fun b!5322088 () Bool)

(declare-fun res!2257407 () Bool)

(assert (=> b!5322088 (=> res!2257407 e!3306333)))

(assert (=> b!5322088 (= res!2257407 (not (= (exprs!4863 (h!67561 zl!343)) (Cons!61112 (Concat!23824 (regOne!30470 (regOne!30470 r!7292)) (regTwo!30470 (regOne!30470 r!7292))) (t!374449 (exprs!4863 (h!67561 zl!343)))))))))

(declare-fun b!5322089 () Bool)

(declare-fun e!3306334 () Bool)

(declare-fun tp!1481979 () Bool)

(assert (=> b!5322089 (= e!3306334 tp!1481979)))

(declare-fun b!5322090 () Bool)

(declare-fun e!3306335 () Bool)

(assert (=> b!5322090 (= e!3306335 e!3306336)))

(declare-fun res!2257417 () Bool)

(assert (=> b!5322090 (=> res!2257417 e!3306336)))

(declare-fun lt!2172128 () Bool)

(assert (=> b!5322090 (= res!2257417 (not (= lt!2172128 (matchZipper!1223 lt!2172118 (t!374451 s!2326)))))))

(declare-fun lt!2172132 () (InoxSet Context!8726))

(assert (=> b!5322090 (= lt!2172128 (matchZipper!1223 lt!2172132 (t!374451 s!2326)))))

(declare-fun setElem!34265 () Context!8726)

(declare-fun setNonEmpty!34265 () Bool)

(declare-fun setRes!34265 () Bool)

(declare-fun tp!1481980 () Bool)

(declare-fun e!3306337 () Bool)

(declare-fun inv!80694 (Context!8726) Bool)

(assert (=> setNonEmpty!34265 (= setRes!34265 (and tp!1481980 (inv!80694 setElem!34265) e!3306337))))

(declare-fun z!1189 () (InoxSet Context!8726))

(declare-fun setRest!34265 () (InoxSet Context!8726))

(assert (=> setNonEmpty!34265 (= z!1189 ((_ map or) (store ((as const (Array Context!8726 Bool)) false) setElem!34265 true) setRest!34265))))

(declare-fun b!5322091 () Bool)

(declare-fun res!2257415 () Bool)

(assert (=> b!5322091 (=> res!2257415 e!3306338)))

(declare-fun generalisedUnion!908 (List!61236) Regex!14979)

(declare-fun unfocusZipperList!421 (List!61237) List!61236)

(assert (=> b!5322091 (= res!2257415 (not (= r!7292 (generalisedUnion!908 (unfocusZipperList!421 zl!343)))))))

(declare-fun b!5322092 () Bool)

(declare-fun res!2257406 () Bool)

(assert (=> b!5322092 (=> res!2257406 e!3306338)))

(assert (=> b!5322092 (= res!2257406 (not ((_ is Cons!61112) (exprs!4863 (h!67561 zl!343)))))))

(declare-fun b!5322093 () Bool)

(declare-fun res!2257425 () Bool)

(declare-fun e!3306345 () Bool)

(assert (=> b!5322093 (=> res!2257425 e!3306345)))

(declare-fun validRegex!6715 (Regex!14979) Bool)

(assert (=> b!5322093 (= res!2257425 (not (validRegex!6715 (generalisedConcat!648 lt!2172124))))))

(declare-fun setIsEmpty!34265 () Bool)

(assert (=> setIsEmpty!34265 setRes!34265))

(declare-fun b!5322094 () Bool)

(declare-fun e!3306341 () Bool)

(declare-fun nullable!5148 (Regex!14979) Bool)

(assert (=> b!5322094 (= e!3306341 (nullable!5148 (regOne!30470 (regOne!30470 r!7292))))))

(declare-fun b!5322095 () Bool)

(declare-fun tp_is_empty!39211 () Bool)

(assert (=> b!5322095 (= e!3306342 tp_is_empty!39211)))

(declare-fun b!5322096 () Bool)

(declare-fun tp!1481976 () Bool)

(declare-fun tp!1481978 () Bool)

(assert (=> b!5322096 (= e!3306342 (and tp!1481976 tp!1481978))))

(declare-fun b!5322097 () Bool)

(declare-fun tp!1481973 () Bool)

(assert (=> b!5322097 (= e!3306337 tp!1481973)))

(declare-fun b!5322098 () Bool)

(declare-fun res!2257408 () Bool)

(assert (=> b!5322098 (=> res!2257408 e!3306338)))

(assert (=> b!5322098 (= res!2257408 (or ((_ is EmptyExpr!14979) r!7292) ((_ is EmptyLang!14979) r!7292) ((_ is ElementMatch!14979) r!7292) ((_ is Union!14979) r!7292) (not ((_ is Concat!23824) r!7292))))))

(declare-fun b!5322099 () Bool)

(declare-fun res!2257400 () Bool)

(declare-fun e!3306339 () Bool)

(assert (=> b!5322099 (=> res!2257400 e!3306339)))

(assert (=> b!5322099 (= res!2257400 (not ((_ is Concat!23824) (regOne!30470 r!7292))))))

(declare-fun res!2257405 () Bool)

(assert (=> start!561074 (=> (not res!2257405) (not e!3306332))))

(assert (=> start!561074 (= res!2257405 (validRegex!6715 r!7292))))

(assert (=> start!561074 e!3306332))

(assert (=> start!561074 e!3306342))

(declare-fun condSetEmpty!34265 () Bool)

(assert (=> start!561074 (= condSetEmpty!34265 (= z!1189 ((as const (Array Context!8726 Bool)) false)))))

(assert (=> start!561074 setRes!34265))

(declare-fun e!3306340 () Bool)

(assert (=> start!561074 e!3306340))

(declare-fun e!3306331 () Bool)

(assert (=> start!561074 e!3306331))

(declare-fun b!5322100 () Bool)

(declare-fun res!2257423 () Bool)

(assert (=> b!5322100 (=> res!2257423 e!3306345)))

(declare-fun lt!2172126 () List!61237)

(declare-fun zipperDepth!88 (List!61237) Int)

(assert (=> b!5322100 (= res!2257423 (> (zipperDepth!88 lt!2172126) (zipperDepth!88 zl!343)))))

(declare-fun b!5322101 () Bool)

(declare-fun e!3306344 () Unit!153434)

(declare-fun Unit!153436 () Unit!153434)

(assert (=> b!5322101 (= e!3306344 Unit!153436)))

(declare-fun lt!2172125 () Unit!153434)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!216 ((InoxSet Context!8726) (InoxSet Context!8726) List!61238) Unit!153434)

(assert (=> b!5322101 (= lt!2172125 (lemmaZipperConcatMatchesSameAsBothZippers!216 lt!2172132 lt!2172117 (t!374451 s!2326)))))

(declare-fun res!2257412 () Bool)

(assert (=> b!5322101 (= res!2257412 (matchZipper!1223 lt!2172132 (t!374451 s!2326)))))

(assert (=> b!5322101 (=> res!2257412 e!3306346)))

(assert (=> b!5322101 (= (matchZipper!1223 ((_ map or) lt!2172132 lt!2172117) (t!374451 s!2326)) e!3306346)))

(declare-fun b!5322102 () Bool)

(assert (=> b!5322102 (= e!3306339 e!3306335)))

(declare-fun res!2257419 () Bool)

(assert (=> b!5322102 (=> res!2257419 e!3306335)))

(assert (=> b!5322102 (= res!2257419 (not (= lt!2172132 lt!2172118)))))

(declare-fun derivationStepZipperDown!427 (Regex!14979 Context!8726 C!30228) (InoxSet Context!8726))

(assert (=> b!5322102 (= lt!2172118 (derivationStepZipperDown!427 (regOne!30470 (regOne!30470 r!7292)) (Context!8727 lt!2172131) (h!67562 s!2326)))))

(assert (=> b!5322102 (= lt!2172131 (Cons!61112 (regTwo!30470 (regOne!30470 r!7292)) (t!374449 (exprs!4863 (h!67561 zl!343)))))))

(declare-fun b!5322103 () Bool)

(assert (=> b!5322103 (= e!3306345 true)))

(declare-fun lt!2172127 () Regex!14979)

(assert (=> b!5322103 (= lt!2172127 (unfocusZipper!721 lt!2172126))))

(declare-fun b!5322104 () Bool)

(declare-fun res!2257410 () Bool)

(declare-fun e!3306343 () Bool)

(assert (=> b!5322104 (=> res!2257410 e!3306343)))

(declare-fun isEmpty!33084 (List!61236) Bool)

(assert (=> b!5322104 (= res!2257410 (isEmpty!33084 (t!374449 (exprs!4863 (h!67561 zl!343)))))))

(declare-fun b!5322105 () Bool)

(declare-fun tp!1481975 () Bool)

(assert (=> b!5322105 (= e!3306340 (and (inv!80694 (h!67561 zl!343)) e!3306334 tp!1481975))))

(declare-fun b!5322106 () Bool)

(declare-fun res!2257402 () Bool)

(assert (=> b!5322106 (=> res!2257402 e!3306333)))

(assert (=> b!5322106 (= res!2257402 (not (= lt!2172128 (matchZipper!1223 lt!2172130 (t!374451 s!2326)))))))

(declare-fun b!5322107 () Bool)

(declare-fun tp!1481977 () Bool)

(declare-fun tp!1481981 () Bool)

(assert (=> b!5322107 (= e!3306342 (and tp!1481977 tp!1481981))))

(declare-fun b!5322108 () Bool)

(assert (=> b!5322108 (= e!3306333 e!3306345)))

(declare-fun res!2257403 () Bool)

(assert (=> b!5322108 (=> res!2257403 e!3306345)))

(declare-fun zipperDepthTotal!132 (List!61237) Int)

(assert (=> b!5322108 (= res!2257403 (>= (zipperDepthTotal!132 lt!2172126) (zipperDepthTotal!132 zl!343)))))

(assert (=> b!5322108 (= lt!2172126 (Cons!61113 lt!2172114 Nil!61113))))

(declare-fun b!5322109 () Bool)

(declare-fun tp!1481974 () Bool)

(assert (=> b!5322109 (= e!3306331 (and tp_is_empty!39211 tp!1481974))))

(assert (=> b!5322110 (= e!3306338 e!3306343)))

(declare-fun res!2257424 () Bool)

(assert (=> b!5322110 (=> res!2257424 e!3306343)))

(declare-fun lt!2172122 () Bool)

(assert (=> b!5322110 (= res!2257424 (or (not (= lt!2172113 lt!2172122)) ((_ is Nil!61114) s!2326)))))

(declare-fun Exists!2160 (Int) Bool)

(assert (=> b!5322110 (= (Exists!2160 lambda!271493) (Exists!2160 lambda!271494))))

(declare-fun lt!2172129 () Unit!153434)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!814 (Regex!14979 Regex!14979 List!61238) Unit!153434)

(assert (=> b!5322110 (= lt!2172129 (lemmaExistCutMatchRandMatchRSpecEquivalent!814 (regOne!30470 r!7292) (regTwo!30470 r!7292) s!2326))))

(assert (=> b!5322110 (= lt!2172122 (Exists!2160 lambda!271493))))

(declare-datatypes ((tuple2!64356 0))(
  ( (tuple2!64357 (_1!35481 List!61238) (_2!35481 List!61238)) )
))
(declare-datatypes ((Option!15090 0))(
  ( (None!15089) (Some!15089 (v!51118 tuple2!64356)) )
))
(declare-fun isDefined!11793 (Option!15090) Bool)

(declare-fun findConcatSeparation!1504 (Regex!14979 Regex!14979 List!61238 List!61238 List!61238) Option!15090)

(assert (=> b!5322110 (= lt!2172122 (isDefined!11793 (findConcatSeparation!1504 (regOne!30470 r!7292) (regTwo!30470 r!7292) Nil!61114 s!2326 s!2326)))))

(declare-fun lt!2172116 () Unit!153434)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1268 (Regex!14979 Regex!14979 List!61238) Unit!153434)

(assert (=> b!5322110 (= lt!2172116 (lemmaFindConcatSeparationEquivalentToExists!1268 (regOne!30470 r!7292) (regTwo!30470 r!7292) s!2326))))

(assert (=> b!5322111 (= e!3306343 e!3306339)))

(declare-fun res!2257416 () Bool)

(assert (=> b!5322111 (=> res!2257416 e!3306339)))

(assert (=> b!5322111 (= res!2257416 (or (and ((_ is ElementMatch!14979) (regOne!30470 r!7292)) (= (c!925045 (regOne!30470 r!7292)) (h!67562 s!2326))) ((_ is Union!14979) (regOne!30470 r!7292))))))

(declare-fun lt!2172111 () Unit!153434)

(assert (=> b!5322111 (= lt!2172111 e!3306344)))

(declare-fun c!925044 () Bool)

(assert (=> b!5322111 (= c!925044 (nullable!5148 (h!67560 (exprs!4863 (h!67561 zl!343)))))))

(assert (=> b!5322111 (= (flatMap!706 z!1189 lambda!271495) (derivationStepZipperUp!351 (h!67561 zl!343) (h!67562 s!2326)))))

(declare-fun lt!2172120 () Unit!153434)

(assert (=> b!5322111 (= lt!2172120 (lemmaFlatMapOnSingletonSet!238 z!1189 (h!67561 zl!343) lambda!271495))))

(declare-fun lt!2172119 () Context!8726)

(assert (=> b!5322111 (= lt!2172117 (derivationStepZipperUp!351 lt!2172119 (h!67562 s!2326)))))

(assert (=> b!5322111 (= lt!2172132 (derivationStepZipperDown!427 (h!67560 (exprs!4863 (h!67561 zl!343))) lt!2172119 (h!67562 s!2326)))))

(assert (=> b!5322111 (= lt!2172119 (Context!8727 (t!374449 (exprs!4863 (h!67561 zl!343)))))))

(declare-fun lt!2172110 () (InoxSet Context!8726))

(assert (=> b!5322111 (= lt!2172110 (derivationStepZipperUp!351 (Context!8727 (Cons!61112 (h!67560 (exprs!4863 (h!67561 zl!343))) (t!374449 (exprs!4863 (h!67561 zl!343))))) (h!67562 s!2326)))))

(declare-fun b!5322112 () Bool)

(declare-fun res!2257413 () Bool)

(assert (=> b!5322112 (=> res!2257413 e!3306339)))

(assert (=> b!5322112 (= res!2257413 e!3306341)))

(declare-fun res!2257414 () Bool)

(assert (=> b!5322112 (=> (not res!2257414) (not e!3306341))))

(assert (=> b!5322112 (= res!2257414 ((_ is Concat!23824) (regOne!30470 r!7292)))))

(declare-fun b!5322113 () Bool)

(declare-fun Unit!153437 () Unit!153434)

(assert (=> b!5322113 (= e!3306344 Unit!153437)))

(declare-fun b!5322114 () Bool)

(declare-fun res!2257401 () Bool)

(assert (=> b!5322114 (=> (not res!2257401) (not e!3306332))))

(declare-fun toList!8763 ((InoxSet Context!8726)) List!61237)

(assert (=> b!5322114 (= res!2257401 (= (toList!8763 z!1189) zl!343))))

(declare-fun b!5322115 () Bool)

(declare-fun res!2257421 () Bool)

(assert (=> b!5322115 (=> res!2257421 e!3306345)))

(assert (=> b!5322115 (= res!2257421 (not (= (toList!8763 lt!2172112) lt!2172126)))))

(assert (= (and start!561074 res!2257405) b!5322114))

(assert (= (and b!5322114 res!2257401) b!5322081))

(assert (= (and b!5322081 res!2257422) b!5322082))

(assert (= (and b!5322082 (not res!2257411)) b!5322086))

(assert (= (and b!5322086 (not res!2257418)) b!5322080))

(assert (= (and b!5322080 (not res!2257404)) b!5322092))

(assert (= (and b!5322092 (not res!2257406)) b!5322091))

(assert (= (and b!5322091 (not res!2257415)) b!5322098))

(assert (= (and b!5322098 (not res!2257408)) b!5322110))

(assert (= (and b!5322110 (not res!2257424)) b!5322104))

(assert (= (and b!5322104 (not res!2257410)) b!5322111))

(assert (= (and b!5322111 c!925044) b!5322101))

(assert (= (and b!5322111 (not c!925044)) b!5322113))

(assert (= (and b!5322101 (not res!2257412)) b!5322083))

(assert (= (and b!5322111 (not res!2257416)) b!5322112))

(assert (= (and b!5322112 res!2257414) b!5322094))

(assert (= (and b!5322112 (not res!2257413)) b!5322099))

(assert (= (and b!5322099 (not res!2257400)) b!5322102))

(assert (= (and b!5322102 (not res!2257419)) b!5322090))

(assert (= (and b!5322090 (not res!2257417)) b!5322087))

(assert (= (and b!5322087 (not res!2257420)) b!5322106))

(assert (= (and b!5322106 (not res!2257402)) b!5322088))

(assert (= (and b!5322088 (not res!2257407)) b!5322085))

(assert (= (and b!5322085 (not res!2257409)) b!5322108))

(assert (= (and b!5322108 (not res!2257403)) b!5322100))

(assert (= (and b!5322100 (not res!2257423)) b!5322093))

(assert (= (and b!5322093 (not res!2257425)) b!5322115))

(assert (= (and b!5322115 (not res!2257421)) b!5322103))

(assert (= (and start!561074 ((_ is ElementMatch!14979) r!7292)) b!5322095))

(assert (= (and start!561074 ((_ is Concat!23824) r!7292)) b!5322096))

(assert (= (and start!561074 ((_ is Star!14979) r!7292)) b!5322084))

(assert (= (and start!561074 ((_ is Union!14979) r!7292)) b!5322107))

(assert (= (and start!561074 condSetEmpty!34265) setIsEmpty!34265))

(assert (= (and start!561074 (not condSetEmpty!34265)) setNonEmpty!34265))

(assert (= setNonEmpty!34265 b!5322097))

(assert (= b!5322105 b!5322089))

(assert (= (and start!561074 ((_ is Cons!61113) zl!343)) b!5322105))

(assert (= (and start!561074 ((_ is Cons!61114) s!2326)) b!5322109))

(declare-fun m!6356894 () Bool)

(assert (=> b!5322101 m!6356894))

(declare-fun m!6356896 () Bool)

(assert (=> b!5322101 m!6356896))

(declare-fun m!6356898 () Bool)

(assert (=> b!5322101 m!6356898))

(declare-fun m!6356900 () Bool)

(assert (=> start!561074 m!6356900))

(declare-fun m!6356902 () Bool)

(assert (=> b!5322090 m!6356902))

(assert (=> b!5322090 m!6356896))

(declare-fun m!6356904 () Bool)

(assert (=> b!5322082 m!6356904))

(declare-fun m!6356906 () Bool)

(assert (=> b!5322082 m!6356906))

(declare-fun m!6356908 () Bool)

(assert (=> b!5322082 m!6356908))

(declare-fun m!6356910 () Bool)

(assert (=> b!5322111 m!6356910))

(declare-fun m!6356912 () Bool)

(assert (=> b!5322111 m!6356912))

(declare-fun m!6356914 () Bool)

(assert (=> b!5322111 m!6356914))

(declare-fun m!6356916 () Bool)

(assert (=> b!5322111 m!6356916))

(declare-fun m!6356918 () Bool)

(assert (=> b!5322111 m!6356918))

(declare-fun m!6356920 () Bool)

(assert (=> b!5322111 m!6356920))

(declare-fun m!6356922 () Bool)

(assert (=> b!5322111 m!6356922))

(declare-fun m!6356924 () Bool)

(assert (=> b!5322085 m!6356924))

(declare-fun m!6356926 () Bool)

(assert (=> b!5322085 m!6356926))

(declare-fun m!6356928 () Bool)

(assert (=> b!5322105 m!6356928))

(declare-fun m!6356930 () Bool)

(assert (=> b!5322110 m!6356930))

(declare-fun m!6356932 () Bool)

(assert (=> b!5322110 m!6356932))

(declare-fun m!6356934 () Bool)

(assert (=> b!5322110 m!6356934))

(declare-fun m!6356936 () Bool)

(assert (=> b!5322110 m!6356936))

(assert (=> b!5322110 m!6356936))

(declare-fun m!6356938 () Bool)

(assert (=> b!5322110 m!6356938))

(assert (=> b!5322110 m!6356932))

(declare-fun m!6356940 () Bool)

(assert (=> b!5322110 m!6356940))

(declare-fun m!6356942 () Bool)

(assert (=> b!5322106 m!6356942))

(declare-fun m!6356944 () Bool)

(assert (=> b!5322086 m!6356944))

(declare-fun m!6356946 () Bool)

(assert (=> b!5322114 m!6356946))

(declare-fun m!6356948 () Bool)

(assert (=> b!5322102 m!6356948))

(declare-fun m!6356950 () Bool)

(assert (=> b!5322104 m!6356950))

(declare-fun m!6356952 () Bool)

(assert (=> b!5322094 m!6356952))

(declare-fun m!6356954 () Bool)

(assert (=> b!5322087 m!6356954))

(declare-fun m!6356956 () Bool)

(assert (=> b!5322087 m!6356956))

(declare-fun m!6356958 () Bool)

(assert (=> b!5322087 m!6356958))

(declare-fun m!6356960 () Bool)

(assert (=> b!5322087 m!6356960))

(declare-fun m!6356962 () Bool)

(assert (=> b!5322087 m!6356962))

(declare-fun m!6356964 () Bool)

(assert (=> b!5322091 m!6356964))

(assert (=> b!5322091 m!6356964))

(declare-fun m!6356966 () Bool)

(assert (=> b!5322091 m!6356966))

(declare-fun m!6356968 () Bool)

(assert (=> b!5322108 m!6356968))

(declare-fun m!6356970 () Bool)

(assert (=> b!5322108 m!6356970))

(declare-fun m!6356972 () Bool)

(assert (=> b!5322093 m!6356972))

(assert (=> b!5322093 m!6356972))

(declare-fun m!6356974 () Bool)

(assert (=> b!5322093 m!6356974))

(declare-fun m!6356976 () Bool)

(assert (=> b!5322081 m!6356976))

(declare-fun m!6356978 () Bool)

(assert (=> b!5322103 m!6356978))

(declare-fun m!6356980 () Bool)

(assert (=> b!5322083 m!6356980))

(declare-fun m!6356982 () Bool)

(assert (=> b!5322115 m!6356982))

(declare-fun m!6356984 () Bool)

(assert (=> b!5322100 m!6356984))

(declare-fun m!6356986 () Bool)

(assert (=> b!5322100 m!6356986))

(declare-fun m!6356988 () Bool)

(assert (=> setNonEmpty!34265 m!6356988))

(declare-fun m!6356990 () Bool)

(assert (=> b!5322080 m!6356990))

(check-sat (not b!5322109) (not b!5322080) (not b!5322082) (not b!5322087) (not b!5322103) (not b!5322106) (not setNonEmpty!34265) (not b!5322101) (not b!5322115) (not start!561074) (not b!5322090) (not b!5322114) (not b!5322094) tp_is_empty!39211 (not b!5322084) (not b!5322089) (not b!5322093) (not b!5322105) (not b!5322096) (not b!5322091) (not b!5322110) (not b!5322108) (not b!5322086) (not b!5322104) (not b!5322102) (not b!5322097) (not b!5322085) (not b!5322100) (not b!5322083) (not b!5322111) (not b!5322107) (not b!5322081))
(check-sat)
