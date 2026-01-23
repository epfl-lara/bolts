; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!672470 () Bool)

(assert start!672470)

(declare-fun b!6994396 () Bool)

(assert (=> b!6994396 true))

(declare-fun b!6994398 () Bool)

(assert (=> b!6994398 true))

(declare-fun b!6994387 () Bool)

(assert (=> b!6994387 true))

(declare-fun bs!1862764 () Bool)

(declare-fun b!6994394 () Bool)

(assert (= bs!1862764 (and b!6994394 b!6994396)))

(declare-fun lambda!403878 () Int)

(declare-fun lambda!403874 () Int)

(assert (=> bs!1862764 (not (= lambda!403878 lambda!403874))))

(declare-fun b!6994374 () Bool)

(declare-fun e!4204121 () Bool)

(declare-fun e!4204132 () Bool)

(assert (=> b!6994374 (= e!4204121 e!4204132)))

(declare-fun res!2853146 () Bool)

(assert (=> b!6994374 (=> res!2853146 e!4204132)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!34776 0))(
  ( (C!34777 (val!27090 Int)) )
))
(declare-datatypes ((Regex!17253 0))(
  ( (ElementMatch!17253 (c!1297628 C!34776)) (Concat!26098 (regOne!35018 Regex!17253) (regTwo!35018 Regex!17253)) (EmptyExpr!17253) (Star!17253 (reg!17582 Regex!17253)) (EmptyLang!17253) (Union!17253 (regOne!35019 Regex!17253) (regTwo!35019 Regex!17253)) )
))
(declare-datatypes ((List!67304 0))(
  ( (Nil!67180) (Cons!67180 (h!73628 Regex!17253) (t!381051 List!67304)) )
))
(declare-datatypes ((Context!12498 0))(
  ( (Context!12499 (exprs!6749 List!67304)) )
))
(declare-fun lt!2492020 () (InoxSet Context!12498))

(declare-datatypes ((List!67305 0))(
  ( (Nil!67181) (Cons!67181 (h!73629 C!34776) (t!381052 List!67305)) )
))
(declare-datatypes ((tuple2!67852 0))(
  ( (tuple2!67853 (_1!37229 List!67305) (_2!37229 List!67305)) )
))
(declare-fun lt!2492030 () tuple2!67852)

(declare-fun matchZipper!2793 ((InoxSet Context!12498) List!67305) Bool)

(assert (=> b!6994374 (= res!2853146 (not (matchZipper!2793 lt!2492020 (_1!37229 lt!2492030))))))

(declare-datatypes ((Option!16758 0))(
  ( (None!16757) (Some!16757 (v!53029 tuple2!67852)) )
))
(declare-fun lt!2492037 () Option!16758)

(declare-fun get!23549 (Option!16758) tuple2!67852)

(assert (=> b!6994374 (= lt!2492030 (get!23549 lt!2492037))))

(declare-fun isDefined!13459 (Option!16758) Bool)

(assert (=> b!6994374 (isDefined!13459 lt!2492037)))

(declare-fun lt!2492004 () (InoxSet Context!12498))

(declare-fun s!7408 () List!67305)

(declare-fun findConcatSeparationZippers!274 ((InoxSet Context!12498) (InoxSet Context!12498) List!67305 List!67305 List!67305) Option!16758)

(assert (=> b!6994374 (= lt!2492037 (findConcatSeparationZippers!274 lt!2492020 lt!2492004 Nil!67181 s!7408 s!7408))))

(declare-fun ct2!306 () Context!12498)

(assert (=> b!6994374 (= lt!2492004 (store ((as const (Array Context!12498 Bool)) false) ct2!306 true))))

(declare-datatypes ((Unit!161161 0))(
  ( (Unit!161162) )
))
(declare-fun lt!2492007 () Unit!161161)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!274 ((InoxSet Context!12498) Context!12498 List!67305) Unit!161161)

(assert (=> b!6994374 (= lt!2492007 (lemmaConcatZipperMatchesStringThenFindConcatDefined!274 lt!2492020 ct2!306 s!7408))))

(declare-fun b!6994375 () Bool)

(declare-fun e!4204119 () Bool)

(assert (=> b!6994375 (= e!4204119 e!4204121)))

(declare-fun res!2853130 () Bool)

(assert (=> b!6994375 (=> res!2853130 e!4204121)))

(declare-fun lt!2492025 () Int)

(declare-fun lt!2491999 () Context!12498)

(declare-fun contextDepthTotal!446 (Context!12498) Int)

(assert (=> b!6994375 (= res!2853130 (<= lt!2492025 (contextDepthTotal!446 lt!2491999)))))

(declare-fun lt!2492026 () Int)

(assert (=> b!6994375 (<= lt!2492025 lt!2492026)))

(declare-datatypes ((List!67306 0))(
  ( (Nil!67182) (Cons!67182 (h!73630 Context!12498) (t!381053 List!67306)) )
))
(declare-fun lt!2492041 () List!67306)

(declare-fun zipperDepthTotal!474 (List!67306) Int)

(assert (=> b!6994375 (= lt!2492026 (zipperDepthTotal!474 lt!2492041))))

(declare-fun lt!2492044 () Context!12498)

(assert (=> b!6994375 (= lt!2492025 (contextDepthTotal!446 lt!2492044))))

(declare-fun lt!2492035 () Unit!161161)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!14 (List!67306 Context!12498) Unit!161161)

(assert (=> b!6994375 (= lt!2492035 (lemmaTotalDepthZipperLargerThanOfAnyContext!14 lt!2492041 lt!2492044))))

(declare-fun z1!570 () (InoxSet Context!12498))

(declare-fun toList!10613 ((InoxSet Context!12498)) List!67306)

(assert (=> b!6994375 (= lt!2492041 (toList!10613 z1!570))))

(declare-fun lambda!403876 () Int)

(declare-fun lt!2492027 () List!67304)

(declare-fun lt!2492046 () Unit!161161)

(declare-fun lemmaConcatPreservesForall!589 (List!67304 List!67304 Int) Unit!161161)

(assert (=> b!6994375 (= lt!2492046 (lemmaConcatPreservesForall!589 lt!2492027 (exprs!6749 ct2!306) lambda!403876))))

(declare-fun lt!2492047 () Unit!161161)

(assert (=> b!6994375 (= lt!2492047 (lemmaConcatPreservesForall!589 lt!2492027 (exprs!6749 ct2!306) lambda!403876))))

(declare-fun lt!2492018 () Unit!161161)

(assert (=> b!6994375 (= lt!2492018 (lemmaConcatPreservesForall!589 lt!2492027 (exprs!6749 ct2!306) lambda!403876))))

(declare-fun lambda!403877 () Int)

(declare-fun flatMap!2239 ((InoxSet Context!12498) Int) (InoxSet Context!12498))

(declare-fun derivationStepZipperUp!1903 (Context!12498 C!34776) (InoxSet Context!12498))

(assert (=> b!6994375 (= (flatMap!2239 lt!2492020 lambda!403877) (derivationStepZipperUp!1903 lt!2491999 (h!73629 s!7408)))))

(declare-fun lt!2492034 () Unit!161161)

(declare-fun lemmaFlatMapOnSingletonSet!1754 ((InoxSet Context!12498) Context!12498 Int) Unit!161161)

(assert (=> b!6994375 (= lt!2492034 (lemmaFlatMapOnSingletonSet!1754 lt!2492020 lt!2491999 lambda!403877))))

(declare-fun lambda!403875 () Int)

(declare-fun map!15526 ((InoxSet Context!12498) Int) (InoxSet Context!12498))

(declare-fun ++!15207 (List!67304 List!67304) List!67304)

(assert (=> b!6994375 (= (map!15526 lt!2492020 lambda!403875) (store ((as const (Array Context!12498 Bool)) false) (Context!12499 (++!15207 lt!2492027 (exprs!6749 ct2!306))) true))))

(declare-fun lt!2492015 () Unit!161161)

(assert (=> b!6994375 (= lt!2492015 (lemmaConcatPreservesForall!589 lt!2492027 (exprs!6749 ct2!306) lambda!403876))))

(declare-fun lt!2492010 () Unit!161161)

(declare-fun lemmaMapOnSingletonSet!318 ((InoxSet Context!12498) Context!12498 Int) Unit!161161)

(assert (=> b!6994375 (= lt!2492010 (lemmaMapOnSingletonSet!318 lt!2492020 lt!2491999 lambda!403875))))

(assert (=> b!6994375 (= lt!2492020 (store ((as const (Array Context!12498 Bool)) false) lt!2491999 true))))

(declare-fun b!6994376 () Bool)

(declare-fun res!2853142 () Bool)

(assert (=> b!6994376 (=> res!2853142 e!4204132)))

(assert (=> b!6994376 (= res!2853142 (not (matchZipper!2793 lt!2492004 (_2!37229 lt!2492030))))))

(declare-fun b!6994377 () Bool)

(declare-fun res!2853131 () Bool)

(assert (=> b!6994377 (=> res!2853131 e!4204132)))

(declare-fun isEmpty!39209 (List!67305) Bool)

(assert (=> b!6994377 (= res!2853131 (not (isEmpty!39209 (_1!37229 lt!2492030))))))

(declare-fun b!6994378 () Bool)

(declare-fun res!2853145 () Bool)

(declare-fun e!4204133 () Bool)

(assert (=> b!6994378 (=> res!2853145 e!4204133)))

(declare-fun lt!2492028 () Bool)

(assert (=> b!6994378 (= res!2853145 (not lt!2492028))))

(declare-fun b!6994379 () Bool)

(declare-fun e!4204123 () Bool)

(declare-fun e!4204137 () Bool)

(assert (=> b!6994379 (= e!4204123 e!4204137)))

(declare-fun res!2853135 () Bool)

(assert (=> b!6994379 (=> res!2853135 e!4204137)))

(declare-fun nullable!7013 (Regex!17253) Bool)

(assert (=> b!6994379 (= res!2853135 (not (nullable!7013 (h!73628 (exprs!6749 lt!2492044)))))))

(assert (=> b!6994379 (= lt!2491999 (Context!12499 lt!2492027))))

(declare-fun tail!13277 (List!67304) List!67304)

(assert (=> b!6994379 (= lt!2492027 (tail!13277 (exprs!6749 lt!2492044)))))

(declare-fun b!6994380 () Bool)

(declare-fun res!2853124 () Bool)

(declare-fun e!4204136 () Bool)

(assert (=> b!6994380 (=> res!2853124 e!4204136)))

(declare-fun isPrefix!5820 (List!67305 List!67305) Bool)

(assert (=> b!6994380 (= res!2853124 (not (isPrefix!5820 Nil!67181 (_1!37229 lt!2492030))))))

(declare-fun b!6994381 () Bool)

(declare-fun e!4204129 () Bool)

(declare-fun lt!2492005 () (InoxSet Context!12498))

(assert (=> b!6994381 (= e!4204129 (matchZipper!2793 lt!2492005 (t!381052 s!7408)))))

(declare-fun b!6994382 () Bool)

(assert (=> b!6994382 (= e!4204136 true)))

(declare-fun lt!2492033 () List!67305)

(declare-fun ++!15208 (List!67305 List!67305) List!67305)

(assert (=> b!6994382 (= lt!2492033 (++!15208 Nil!67181 s!7408))))

(declare-fun b!6994383 () Bool)

(declare-fun res!2853136 () Bool)

(declare-fun e!4204122 () Bool)

(assert (=> b!6994383 (=> (not res!2853136) (not e!4204122))))

(get-info :version)

(assert (=> b!6994383 (= res!2853136 ((_ is Cons!67181) s!7408))))

(declare-fun b!6994384 () Bool)

(declare-fun res!2853134 () Bool)

(declare-fun e!4204126 () Bool)

(assert (=> b!6994384 (=> res!2853134 e!4204126)))

(declare-fun nullableContext!50 (Context!12498) Bool)

(assert (=> b!6994384 (= res!2853134 (not (nullableContext!50 lt!2492044)))))

(declare-fun b!6994385 () Bool)

(declare-fun e!4204128 () Bool)

(declare-fun tp!1930390 () Bool)

(assert (=> b!6994385 (= e!4204128 tp!1930390)))

(declare-fun b!6994386 () Bool)

(declare-fun res!2853129 () Bool)

(assert (=> b!6994386 (=> res!2853129 e!4204123)))

(assert (=> b!6994386 (= res!2853129 (not ((_ is Cons!67180) (exprs!6749 lt!2492044))))))

(declare-fun e!4204131 () Bool)

(assert (=> b!6994387 (= e!4204131 e!4204123)))

(declare-fun res!2853148 () Bool)

(assert (=> b!6994387 (=> res!2853148 e!4204123)))

(declare-fun lt!2492036 () (InoxSet Context!12498))

(declare-fun lt!2492022 () (InoxSet Context!12498))

(declare-fun derivationStepZipper!2733 ((InoxSet Context!12498) C!34776) (InoxSet Context!12498))

(assert (=> b!6994387 (= res!2853148 (not (= (derivationStepZipper!2733 lt!2492036 (h!73629 s!7408)) lt!2492022)))))

(declare-fun lt!2492040 () Context!12498)

(assert (=> b!6994387 (= (flatMap!2239 lt!2492036 lambda!403877) (derivationStepZipperUp!1903 lt!2492040 (h!73629 s!7408)))))

(declare-fun lt!2492002 () Unit!161161)

(assert (=> b!6994387 (= lt!2492002 (lemmaFlatMapOnSingletonSet!1754 lt!2492036 lt!2492040 lambda!403877))))

(assert (=> b!6994387 (= lt!2492022 (derivationStepZipperUp!1903 lt!2492040 (h!73629 s!7408)))))

(declare-fun lt!2492039 () Unit!161161)

(assert (=> b!6994387 (= lt!2492039 (lemmaConcatPreservesForall!589 (exprs!6749 lt!2492044) (exprs!6749 ct2!306) lambda!403876))))

(declare-fun b!6994388 () Bool)

(declare-fun e!4204125 () Bool)

(declare-fun tp_is_empty!43731 () Bool)

(declare-fun tp!1930389 () Bool)

(assert (=> b!6994388 (= e!4204125 (and tp_is_empty!43731 tp!1930389))))

(declare-fun b!6994389 () Bool)

(declare-fun e!4204138 () Bool)

(assert (=> b!6994389 (= e!4204138 e!4204131)))

(declare-fun res!2853122 () Bool)

(assert (=> b!6994389 (=> res!2853122 e!4204131)))

(declare-fun lt!2492008 () (InoxSet Context!12498))

(assert (=> b!6994389 (= res!2853122 (not (= lt!2492036 lt!2492008)))))

(assert (=> b!6994389 (= lt!2492036 (store ((as const (Array Context!12498 Bool)) false) lt!2492040 true))))

(declare-fun lt!2492009 () Unit!161161)

(assert (=> b!6994389 (= lt!2492009 (lemmaConcatPreservesForall!589 (exprs!6749 lt!2492044) (exprs!6749 ct2!306) lambda!403876))))

(declare-fun setNonEmpty!47961 () Bool)

(declare-fun setRes!47961 () Bool)

(declare-fun tp!1930392 () Bool)

(declare-fun setElem!47961 () Context!12498)

(declare-fun inv!85991 (Context!12498) Bool)

(assert (=> setNonEmpty!47961 (= setRes!47961 (and tp!1930392 (inv!85991 setElem!47961) e!4204128))))

(declare-fun setRest!47961 () (InoxSet Context!12498))

(assert (=> setNonEmpty!47961 (= z1!570 ((_ map or) (store ((as const (Array Context!12498 Bool)) false) setElem!47961 true) setRest!47961))))

(declare-fun b!6994390 () Bool)

(declare-fun res!2853121 () Bool)

(assert (=> b!6994390 (=> res!2853121 e!4204123)))

(declare-fun isEmpty!39210 (List!67304) Bool)

(assert (=> b!6994390 (= res!2853121 (isEmpty!39210 (exprs!6749 lt!2492044)))))

(declare-fun b!6994391 () Bool)

(declare-fun e!4204130 () Bool)

(assert (=> b!6994391 (= e!4204130 (not (matchZipper!2793 lt!2492005 (t!381052 s!7408))))))

(declare-fun lt!2492019 () Unit!161161)

(assert (=> b!6994391 (= lt!2492019 (lemmaConcatPreservesForall!589 lt!2492027 (exprs!6749 ct2!306) lambda!403876))))

(declare-fun b!6994392 () Bool)

(declare-fun e!4204134 () Bool)

(assert (=> b!6994392 (= e!4204134 e!4204133)))

(declare-fun res!2853125 () Bool)

(assert (=> b!6994392 (=> res!2853125 e!4204133)))

(assert (=> b!6994392 (= res!2853125 e!4204130)))

(declare-fun res!2853140 () Bool)

(assert (=> b!6994392 (=> (not res!2853140) (not e!4204130))))

(declare-fun lt!2492048 () Bool)

(assert (=> b!6994392 (= res!2853140 (not (= lt!2492028 lt!2492048)))))

(assert (=> b!6994392 (= lt!2492028 (matchZipper!2793 lt!2492022 (t!381052 s!7408)))))

(declare-fun lt!2492023 () Unit!161161)

(assert (=> b!6994392 (= lt!2492023 (lemmaConcatPreservesForall!589 lt!2492027 (exprs!6749 ct2!306) lambda!403876))))

(declare-fun lt!2492029 () (InoxSet Context!12498))

(assert (=> b!6994392 (= (matchZipper!2793 lt!2492029 (t!381052 s!7408)) e!4204129)))

(declare-fun res!2853120 () Bool)

(assert (=> b!6994392 (=> res!2853120 e!4204129)))

(assert (=> b!6994392 (= res!2853120 lt!2492048)))

(declare-fun lt!2491995 () (InoxSet Context!12498))

(assert (=> b!6994392 (= lt!2492048 (matchZipper!2793 lt!2491995 (t!381052 s!7408)))))

(declare-fun lt!2492013 () Unit!161161)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1426 ((InoxSet Context!12498) (InoxSet Context!12498) List!67305) Unit!161161)

(assert (=> b!6994392 (= lt!2492013 (lemmaZipperConcatMatchesSameAsBothZippers!1426 lt!2491995 lt!2492005 (t!381052 s!7408)))))

(declare-fun lt!2492006 () Unit!161161)

(assert (=> b!6994392 (= lt!2492006 (lemmaConcatPreservesForall!589 lt!2492027 (exprs!6749 ct2!306) lambda!403876))))

(declare-fun lt!2492014 () Unit!161161)

(assert (=> b!6994392 (= lt!2492014 (lemmaConcatPreservesForall!589 lt!2492027 (exprs!6749 ct2!306) lambda!403876))))

(declare-fun res!2853127 () Bool)

(assert (=> start!672470 (=> (not res!2853127) (not e!4204122))))

(declare-fun lt!2492042 () (InoxSet Context!12498))

(assert (=> start!672470 (= res!2853127 (matchZipper!2793 lt!2492042 s!7408))))

(declare-fun appendTo!374 ((InoxSet Context!12498) Context!12498) (InoxSet Context!12498))

(assert (=> start!672470 (= lt!2492042 (appendTo!374 z1!570 ct2!306))))

(assert (=> start!672470 e!4204122))

(declare-fun condSetEmpty!47961 () Bool)

(assert (=> start!672470 (= condSetEmpty!47961 (= z1!570 ((as const (Array Context!12498 Bool)) false)))))

(assert (=> start!672470 setRes!47961))

(declare-fun e!4204124 () Bool)

(assert (=> start!672470 (and (inv!85991 ct2!306) e!4204124)))

(assert (=> start!672470 e!4204125))

(declare-fun b!6994373 () Bool)

(declare-fun e!4204135 () Bool)

(declare-fun e!4204120 () Bool)

(assert (=> b!6994373 (= e!4204135 e!4204120)))

(declare-fun res!2853144 () Bool)

(assert (=> b!6994373 (=> res!2853144 e!4204120)))

(declare-fun lt!2491998 () (InoxSet Context!12498))

(assert (=> b!6994373 (= res!2853144 (not (= (derivationStepZipper!2733 lt!2491998 (h!73629 s!7408)) lt!2492005)))))

(declare-fun lt!2492000 () Unit!161161)

(assert (=> b!6994373 (= lt!2492000 (lemmaConcatPreservesForall!589 lt!2492027 (exprs!6749 ct2!306) lambda!403876))))

(declare-fun lt!2492003 () Unit!161161)

(assert (=> b!6994373 (= lt!2492003 (lemmaConcatPreservesForall!589 lt!2492027 (exprs!6749 ct2!306) lambda!403876))))

(declare-fun lt!2492038 () Context!12498)

(assert (=> b!6994373 (= (flatMap!2239 lt!2491998 lambda!403877) (derivationStepZipperUp!1903 lt!2492038 (h!73629 s!7408)))))

(declare-fun lt!2492001 () Unit!161161)

(assert (=> b!6994373 (= lt!2492001 (lemmaFlatMapOnSingletonSet!1754 lt!2491998 lt!2492038 lambda!403877))))

(assert (=> b!6994373 (= lt!2491998 (store ((as const (Array Context!12498 Bool)) false) lt!2492038 true))))

(declare-fun lt!2492049 () Unit!161161)

(assert (=> b!6994373 (= lt!2492049 (lemmaConcatPreservesForall!589 lt!2492027 (exprs!6749 ct2!306) lambda!403876))))

(declare-fun lt!2492031 () Unit!161161)

(assert (=> b!6994373 (= lt!2492031 (lemmaConcatPreservesForall!589 lt!2492027 (exprs!6749 ct2!306) lambda!403876))))

(declare-fun b!6994393 () Bool)

(declare-fun res!2853123 () Bool)

(declare-fun e!4204127 () Bool)

(assert (=> b!6994393 (=> res!2853123 e!4204127)))

(declare-fun lt!2492011 () Context!12498)

(assert (=> b!6994393 (= res!2853123 (not (select lt!2492042 lt!2492011)))))

(declare-fun res!2853147 () Bool)

(assert (=> b!6994394 (=> res!2853147 e!4204132)))

(declare-fun exists!3057 ((InoxSet Context!12498) Int) Bool)

(assert (=> b!6994394 (= res!2853147 (not (exists!3057 lt!2492020 lambda!403878)))))

(declare-fun b!6994395 () Bool)

(assert (=> b!6994395 (= e!4204133 e!4204135)))

(declare-fun res!2853128 () Bool)

(assert (=> b!6994395 (=> res!2853128 e!4204135)))

(assert (=> b!6994395 (= res!2853128 (not (matchZipper!2793 lt!2492005 (t!381052 s!7408))))))

(declare-fun lt!2492024 () Unit!161161)

(assert (=> b!6994395 (= lt!2492024 (lemmaConcatPreservesForall!589 lt!2492027 (exprs!6749 ct2!306) lambda!403876))))

(assert (=> b!6994396 (= e!4204122 (not e!4204127))))

(declare-fun res!2853138 () Bool)

(assert (=> b!6994396 (=> res!2853138 e!4204127)))

(assert (=> b!6994396 (= res!2853138 (not (matchZipper!2793 lt!2492008 s!7408)))))

(assert (=> b!6994396 (= lt!2492008 (store ((as const (Array Context!12498 Bool)) false) lt!2492011 true))))

(declare-fun getWitness!1162 ((InoxSet Context!12498) Int) Context!12498)

(assert (=> b!6994396 (= lt!2492011 (getWitness!1162 lt!2492042 lambda!403874))))

(declare-fun lt!2492017 () List!67306)

(declare-fun exists!3058 (List!67306 Int) Bool)

(assert (=> b!6994396 (exists!3058 lt!2492017 lambda!403874)))

(declare-fun lt!2492021 () Unit!161161)

(declare-fun lemmaZipperMatchesExistsMatchingContext!222 (List!67306 List!67305) Unit!161161)

(assert (=> b!6994396 (= lt!2492021 (lemmaZipperMatchesExistsMatchingContext!222 lt!2492017 s!7408))))

(assert (=> b!6994396 (= lt!2492017 (toList!10613 lt!2492042))))

(declare-fun setIsEmpty!47961 () Bool)

(assert (=> setIsEmpty!47961 setRes!47961))

(declare-fun b!6994397 () Bool)

(assert (=> b!6994397 (= e!4204137 e!4204134)))

(declare-fun res!2853141 () Bool)

(assert (=> b!6994397 (=> res!2853141 e!4204134)))

(assert (=> b!6994397 (= res!2853141 (not (= lt!2492022 lt!2492029)))))

(assert (=> b!6994397 (= lt!2492029 ((_ map or) lt!2491995 lt!2492005))))

(assert (=> b!6994397 (= lt!2492005 (derivationStepZipperUp!1903 lt!2492038 (h!73629 s!7408)))))

(declare-fun derivationStepZipperDown!1971 (Regex!17253 Context!12498 C!34776) (InoxSet Context!12498))

(assert (=> b!6994397 (= lt!2491995 (derivationStepZipperDown!1971 (h!73628 (exprs!6749 lt!2492044)) lt!2492038 (h!73629 s!7408)))))

(assert (=> b!6994397 (= lt!2492038 (Context!12499 (++!15207 lt!2492027 (exprs!6749 ct2!306))))))

(declare-fun lt!2492032 () Unit!161161)

(assert (=> b!6994397 (= lt!2492032 (lemmaConcatPreservesForall!589 lt!2492027 (exprs!6749 ct2!306) lambda!403876))))

(declare-fun lt!2492016 () Unit!161161)

(assert (=> b!6994397 (= lt!2492016 (lemmaConcatPreservesForall!589 lt!2492027 (exprs!6749 ct2!306) lambda!403876))))

(assert (=> b!6994398 (= e!4204127 e!4204138)))

(declare-fun res!2853139 () Bool)

(assert (=> b!6994398 (=> res!2853139 e!4204138)))

(assert (=> b!6994398 (= res!2853139 (or (not (= lt!2492040 lt!2492011)) (not (select z1!570 lt!2492044))))))

(assert (=> b!6994398 (= lt!2492040 (Context!12499 (++!15207 (exprs!6749 lt!2492044) (exprs!6749 ct2!306))))))

(declare-fun lt!2492043 () Unit!161161)

(assert (=> b!6994398 (= lt!2492043 (lemmaConcatPreservesForall!589 (exprs!6749 lt!2492044) (exprs!6749 ct2!306) lambda!403876))))

(declare-fun mapPost2!108 ((InoxSet Context!12498) Int Context!12498) Context!12498)

(assert (=> b!6994398 (= lt!2492044 (mapPost2!108 z1!570 lambda!403875 lt!2492011))))

(declare-fun b!6994399 () Bool)

(declare-fun tp!1930391 () Bool)

(assert (=> b!6994399 (= e!4204124 tp!1930391)))

(declare-fun b!6994400 () Bool)

(assert (=> b!6994400 (= e!4204132 e!4204126)))

(declare-fun res!2853132 () Bool)

(assert (=> b!6994400 (=> res!2853132 e!4204126)))

(assert (=> b!6994400 (= res!2853132 (not (nullableContext!50 lt!2491999)))))

(declare-fun lt!2491997 () Context!12498)

(assert (=> b!6994400 (= lt!2491997 (getWitness!1162 lt!2492020 lambda!403878))))

(declare-fun b!6994401 () Bool)

(assert (=> b!6994401 (= e!4204126 e!4204136)))

(declare-fun res!2853133 () Bool)

(assert (=> b!6994401 (=> res!2853133 e!4204136)))

(declare-fun lt!2491996 () (InoxSet Context!12498))

(assert (=> b!6994401 (= res!2853133 (not (matchZipper!2793 lt!2491996 (_1!37229 lt!2492030))))))

(assert (=> b!6994401 (exists!3057 lt!2491996 lambda!403878)))

(declare-fun lt!2492045 () Unit!161161)

(declare-fun lemmaContainsThenExists!83 ((InoxSet Context!12498) Context!12498 Int) Unit!161161)

(assert (=> b!6994401 (= lt!2492045 (lemmaContainsThenExists!83 lt!2491996 lt!2492044 lambda!403878))))

(assert (=> b!6994401 (= lt!2491996 (store ((as const (Array Context!12498 Bool)) false) lt!2492044 true))))

(assert (=> b!6994401 (exists!3057 lt!2492020 lambda!403878)))

(declare-fun lt!2491994 () Unit!161161)

(assert (=> b!6994401 (= lt!2491994 (lemmaContainsThenExists!83 lt!2492020 lt!2491999 lambda!403878))))

(declare-fun b!6994402 () Bool)

(declare-fun res!2853137 () Bool)

(assert (=> b!6994402 (=> res!2853137 e!4204121)))

(assert (=> b!6994402 (= res!2853137 (>= (zipperDepthTotal!474 (Cons!67182 lt!2491999 Nil!67182)) lt!2492026))))

(declare-fun b!6994403 () Bool)

(assert (=> b!6994403 (= e!4204120 e!4204119)))

(declare-fun res!2853126 () Bool)

(assert (=> b!6994403 (=> res!2853126 e!4204119)))

(assert (=> b!6994403 (= res!2853126 (not (matchZipper!2793 lt!2491998 s!7408)))))

(declare-fun lt!2492012 () Unit!161161)

(assert (=> b!6994403 (= lt!2492012 (lemmaConcatPreservesForall!589 lt!2492027 (exprs!6749 ct2!306) lambda!403876))))

(declare-fun b!6994404 () Bool)

(declare-fun res!2853143 () Bool)

(assert (=> b!6994404 (=> res!2853143 e!4204132)))

(assert (=> b!6994404 (= res!2853143 (not (= (++!15208 (_1!37229 lt!2492030) (_2!37229 lt!2492030)) s!7408)))))

(assert (= (and start!672470 res!2853127) b!6994383))

(assert (= (and b!6994383 res!2853136) b!6994396))

(assert (= (and b!6994396 (not res!2853138)) b!6994393))

(assert (= (and b!6994393 (not res!2853123)) b!6994398))

(assert (= (and b!6994398 (not res!2853139)) b!6994389))

(assert (= (and b!6994389 (not res!2853122)) b!6994387))

(assert (= (and b!6994387 (not res!2853148)) b!6994386))

(assert (= (and b!6994386 (not res!2853129)) b!6994390))

(assert (= (and b!6994390 (not res!2853121)) b!6994379))

(assert (= (and b!6994379 (not res!2853135)) b!6994397))

(assert (= (and b!6994397 (not res!2853141)) b!6994392))

(assert (= (and b!6994392 (not res!2853120)) b!6994381))

(assert (= (and b!6994392 res!2853140) b!6994391))

(assert (= (and b!6994392 (not res!2853125)) b!6994378))

(assert (= (and b!6994378 (not res!2853145)) b!6994395))

(assert (= (and b!6994395 (not res!2853128)) b!6994373))

(assert (= (and b!6994373 (not res!2853144)) b!6994403))

(assert (= (and b!6994403 (not res!2853126)) b!6994375))

(assert (= (and b!6994375 (not res!2853130)) b!6994402))

(assert (= (and b!6994402 (not res!2853137)) b!6994374))

(assert (= (and b!6994374 (not res!2853146)) b!6994376))

(assert (= (and b!6994376 (not res!2853142)) b!6994404))

(assert (= (and b!6994404 (not res!2853143)) b!6994377))

(assert (= (and b!6994377 (not res!2853131)) b!6994394))

(assert (= (and b!6994394 (not res!2853147)) b!6994400))

(assert (= (and b!6994400 (not res!2853132)) b!6994384))

(assert (= (and b!6994384 (not res!2853134)) b!6994401))

(assert (= (and b!6994401 (not res!2853133)) b!6994380))

(assert (= (and b!6994380 (not res!2853124)) b!6994382))

(assert (= (and start!672470 condSetEmpty!47961) setIsEmpty!47961))

(assert (= (and start!672470 (not condSetEmpty!47961)) setNonEmpty!47961))

(assert (= setNonEmpty!47961 b!6994385))

(assert (= start!672470 b!6994399))

(assert (= (and start!672470 ((_ is Cons!67181) s!7408)) b!6994388))

(declare-fun m!7685012 () Bool)

(assert (=> b!6994379 m!7685012))

(declare-fun m!7685014 () Bool)

(assert (=> b!6994379 m!7685014))

(declare-fun m!7685016 () Bool)

(assert (=> b!6994400 m!7685016))

(declare-fun m!7685018 () Bool)

(assert (=> b!6994400 m!7685018))

(declare-fun m!7685020 () Bool)

(assert (=> b!6994396 m!7685020))

(declare-fun m!7685022 () Bool)

(assert (=> b!6994396 m!7685022))

(declare-fun m!7685024 () Bool)

(assert (=> b!6994396 m!7685024))

(declare-fun m!7685026 () Bool)

(assert (=> b!6994396 m!7685026))

(declare-fun m!7685028 () Bool)

(assert (=> b!6994396 m!7685028))

(declare-fun m!7685030 () Bool)

(assert (=> b!6994396 m!7685030))

(declare-fun m!7685032 () Bool)

(assert (=> b!6994404 m!7685032))

(declare-fun m!7685034 () Bool)

(assert (=> b!6994402 m!7685034))

(declare-fun m!7685036 () Bool)

(assert (=> b!6994403 m!7685036))

(declare-fun m!7685038 () Bool)

(assert (=> b!6994403 m!7685038))

(declare-fun m!7685040 () Bool)

(assert (=> b!6994374 m!7685040))

(declare-fun m!7685042 () Bool)

(assert (=> b!6994374 m!7685042))

(declare-fun m!7685044 () Bool)

(assert (=> b!6994374 m!7685044))

(declare-fun m!7685046 () Bool)

(assert (=> b!6994374 m!7685046))

(declare-fun m!7685048 () Bool)

(assert (=> b!6994374 m!7685048))

(declare-fun m!7685050 () Bool)

(assert (=> b!6994374 m!7685050))

(declare-fun m!7685052 () Bool)

(assert (=> b!6994380 m!7685052))

(declare-fun m!7685054 () Bool)

(assert (=> b!6994401 m!7685054))

(declare-fun m!7685056 () Bool)

(assert (=> b!6994401 m!7685056))

(declare-fun m!7685058 () Bool)

(assert (=> b!6994401 m!7685058))

(declare-fun m!7685060 () Bool)

(assert (=> b!6994401 m!7685060))

(declare-fun m!7685062 () Bool)

(assert (=> b!6994401 m!7685062))

(declare-fun m!7685064 () Bool)

(assert (=> b!6994401 m!7685064))

(declare-fun m!7685066 () Bool)

(assert (=> b!6994393 m!7685066))

(assert (=> b!6994375 m!7685038))

(declare-fun m!7685068 () Bool)

(assert (=> b!6994375 m!7685068))

(declare-fun m!7685070 () Bool)

(assert (=> b!6994375 m!7685070))

(declare-fun m!7685072 () Bool)

(assert (=> b!6994375 m!7685072))

(declare-fun m!7685074 () Bool)

(assert (=> b!6994375 m!7685074))

(assert (=> b!6994375 m!7685038))

(declare-fun m!7685076 () Bool)

(assert (=> b!6994375 m!7685076))

(declare-fun m!7685078 () Bool)

(assert (=> b!6994375 m!7685078))

(declare-fun m!7685080 () Bool)

(assert (=> b!6994375 m!7685080))

(declare-fun m!7685082 () Bool)

(assert (=> b!6994375 m!7685082))

(assert (=> b!6994375 m!7685038))

(assert (=> b!6994375 m!7685038))

(declare-fun m!7685084 () Bool)

(assert (=> b!6994375 m!7685084))

(declare-fun m!7685086 () Bool)

(assert (=> b!6994375 m!7685086))

(declare-fun m!7685088 () Bool)

(assert (=> b!6994375 m!7685088))

(declare-fun m!7685090 () Bool)

(assert (=> b!6994375 m!7685090))

(declare-fun m!7685092 () Bool)

(assert (=> b!6994375 m!7685092))

(assert (=> b!6994397 m!7685038))

(assert (=> b!6994397 m!7685090))

(assert (=> b!6994397 m!7685038))

(declare-fun m!7685094 () Bool)

(assert (=> b!6994397 m!7685094))

(declare-fun m!7685096 () Bool)

(assert (=> b!6994397 m!7685096))

(declare-fun m!7685098 () Bool)

(assert (=> setNonEmpty!47961 m!7685098))

(declare-fun m!7685100 () Bool)

(assert (=> b!6994389 m!7685100))

(declare-fun m!7685102 () Bool)

(assert (=> b!6994389 m!7685102))

(assert (=> b!6994392 m!7685038))

(assert (=> b!6994392 m!7685038))

(assert (=> b!6994392 m!7685038))

(declare-fun m!7685104 () Bool)

(assert (=> b!6994392 m!7685104))

(declare-fun m!7685106 () Bool)

(assert (=> b!6994392 m!7685106))

(declare-fun m!7685108 () Bool)

(assert (=> b!6994392 m!7685108))

(declare-fun m!7685110 () Bool)

(assert (=> b!6994392 m!7685110))

(declare-fun m!7685112 () Bool)

(assert (=> b!6994387 m!7685112))

(declare-fun m!7685114 () Bool)

(assert (=> b!6994387 m!7685114))

(assert (=> b!6994387 m!7685102))

(declare-fun m!7685116 () Bool)

(assert (=> b!6994387 m!7685116))

(declare-fun m!7685118 () Bool)

(assert (=> b!6994387 m!7685118))

(declare-fun m!7685120 () Bool)

(assert (=> b!6994390 m!7685120))

(declare-fun m!7685122 () Bool)

(assert (=> b!6994391 m!7685122))

(assert (=> b!6994391 m!7685038))

(assert (=> b!6994395 m!7685122))

(assert (=> b!6994395 m!7685038))

(assert (=> b!6994394 m!7685060))

(declare-fun m!7685124 () Bool)

(assert (=> b!6994382 m!7685124))

(assert (=> b!6994381 m!7685122))

(declare-fun m!7685126 () Bool)

(assert (=> b!6994376 m!7685126))

(declare-fun m!7685128 () Bool)

(assert (=> b!6994384 m!7685128))

(declare-fun m!7685130 () Bool)

(assert (=> b!6994398 m!7685130))

(declare-fun m!7685132 () Bool)

(assert (=> b!6994398 m!7685132))

(assert (=> b!6994398 m!7685102))

(declare-fun m!7685134 () Bool)

(assert (=> b!6994398 m!7685134))

(declare-fun m!7685136 () Bool)

(assert (=> b!6994377 m!7685136))

(declare-fun m!7685138 () Bool)

(assert (=> start!672470 m!7685138))

(declare-fun m!7685140 () Bool)

(assert (=> start!672470 m!7685140))

(declare-fun m!7685142 () Bool)

(assert (=> start!672470 m!7685142))

(declare-fun m!7685144 () Bool)

(assert (=> b!6994373 m!7685144))

(assert (=> b!6994373 m!7685038))

(declare-fun m!7685146 () Bool)

(assert (=> b!6994373 m!7685146))

(assert (=> b!6994373 m!7685096))

(declare-fun m!7685148 () Bool)

(assert (=> b!6994373 m!7685148))

(declare-fun m!7685150 () Bool)

(assert (=> b!6994373 m!7685150))

(assert (=> b!6994373 m!7685038))

(assert (=> b!6994373 m!7685038))

(assert (=> b!6994373 m!7685038))

(check-sat (not b!6994404) (not b!6994390) (not b!6994398) (not b!6994380) (not b!6994400) (not b!6994382) (not b!6994394) (not b!6994375) (not b!6994373) (not b!6994374) (not b!6994385) (not b!6994392) (not b!6994387) (not b!6994381) (not start!672470) (not b!6994401) (not b!6994399) (not b!6994379) (not b!6994389) (not b!6994376) (not b!6994384) (not b!6994402) (not b!6994377) (not b!6994403) (not b!6994397) (not b!6994391) (not b!6994388) tp_is_empty!43731 (not setNonEmpty!47961) (not b!6994395) (not b!6994396))
(check-sat)
