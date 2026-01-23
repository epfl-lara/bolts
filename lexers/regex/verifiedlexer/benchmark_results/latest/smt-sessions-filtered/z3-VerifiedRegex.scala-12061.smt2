; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!676650 () Bool)

(assert start!676650)

(declare-fun b!7018786 () Bool)

(assert (=> b!7018786 true))

(declare-fun b!7018785 () Bool)

(assert (=> b!7018785 true))

(declare-fun b!7018781 () Bool)

(assert (=> b!7018781 true))

(declare-fun bs!1867194 () Bool)

(declare-fun b!7018777 () Bool)

(assert (= bs!1867194 (and b!7018777 b!7018786)))

(declare-fun lambda!410691 () Int)

(declare-fun lambda!410687 () Int)

(declare-datatypes ((C!35008 0))(
  ( (C!35009 (val!27206 Int)) )
))
(declare-datatypes ((List!67652 0))(
  ( (Nil!67528) (Cons!67528 (h!73976 C!35008) (t!381407 List!67652)) )
))
(declare-fun lt!2510263 () List!67652)

(declare-fun s!7408 () List!67652)

(assert (=> bs!1867194 (= (= lt!2510263 s!7408) (= lambda!410691 lambda!410687))))

(assert (=> b!7018777 true))

(declare-fun b!7018770 () Bool)

(declare-fun e!4219116 () Bool)

(declare-fun e!4219117 () Bool)

(assert (=> b!7018770 (= e!4219116 e!4219117)))

(declare-fun res!2864810 () Bool)

(assert (=> b!7018770 (=> res!2864810 e!4219117)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17369 0))(
  ( (ElementMatch!17369 (c!1304256 C!35008)) (Concat!26214 (regOne!35250 Regex!17369) (regTwo!35250 Regex!17369)) (EmptyExpr!17369) (Star!17369 (reg!17698 Regex!17369)) (EmptyLang!17369) (Union!17369 (regOne!35251 Regex!17369) (regTwo!35251 Regex!17369)) )
))
(declare-datatypes ((List!67653 0))(
  ( (Nil!67529) (Cons!67529 (h!73977 Regex!17369) (t!381408 List!67653)) )
))
(declare-datatypes ((Context!12730 0))(
  ( (Context!12731 (exprs!6865 List!67653)) )
))
(declare-fun lt!2510277 () (InoxSet Context!12730))

(declare-fun matchZipper!2909 ((InoxSet Context!12730) List!67652) Bool)

(assert (=> b!7018770 (= res!2864810 (not (matchZipper!2909 lt!2510277 lt!2510263)))))

(declare-datatypes ((tuple2!68020 0))(
  ( (tuple2!68021 (_1!37313 List!67652) (_2!37313 List!67652)) )
))
(declare-fun lt!2510268 () tuple2!68020)

(assert (=> b!7018770 (= lt!2510263 (Cons!67528 (h!73976 s!7408) (_1!37313 lt!2510268)))))

(declare-fun b!7018771 () Bool)

(declare-fun e!4219108 () Bool)

(declare-fun tp_is_empty!43963 () Bool)

(declare-fun tp!1933600 () Bool)

(assert (=> b!7018771 (= e!4219108 (and tp_is_empty!43963 tp!1933600))))

(declare-fun b!7018772 () Bool)

(declare-fun res!2864809 () Bool)

(declare-fun e!4219119 () Bool)

(assert (=> b!7018772 (=> res!2864809 e!4219119)))

(declare-fun ++!15402 (List!67652 List!67652) List!67652)

(assert (=> b!7018772 (= res!2864809 (not (= (++!15402 (_1!37313 lt!2510268) (_2!37313 lt!2510268)) (t!381407 s!7408))))))

(declare-fun b!7018773 () Bool)

(declare-fun e!4219120 () Bool)

(declare-fun e!4219107 () Bool)

(assert (=> b!7018773 (= e!4219120 e!4219107)))

(declare-fun res!2864795 () Bool)

(assert (=> b!7018773 (=> res!2864795 e!4219107)))

(declare-fun lt!2510276 () (InoxSet Context!12730))

(assert (=> b!7018773 (= res!2864795 (not (matchZipper!2909 lt!2510276 (t!381407 s!7408))))))

(declare-fun lt!2510280 () Context!12730)

(declare-fun lt!2510267 () List!67653)

(declare-fun ct2!306 () Context!12730)

(declare-fun derivationStepZipperDown!2087 (Regex!17369 Context!12730 C!35008) (InoxSet Context!12730))

(declare-fun ++!15403 (List!67653 List!67653) List!67653)

(assert (=> b!7018773 (= lt!2510276 (derivationStepZipperDown!2087 (h!73977 (exprs!6865 lt!2510280)) (Context!12731 (++!15403 lt!2510267 (exprs!6865 ct2!306))) (h!73976 s!7408)))))

(declare-datatypes ((Unit!161420 0))(
  ( (Unit!161421) )
))
(declare-fun lt!2510281 () Unit!161420)

(declare-fun lambda!410689 () Int)

(declare-fun lemmaConcatPreservesForall!705 (List!67653 List!67653 Int) Unit!161420)

(assert (=> b!7018773 (= lt!2510281 (lemmaConcatPreservesForall!705 lt!2510267 (exprs!6865 ct2!306) lambda!410689))))

(declare-fun b!7018774 () Bool)

(declare-fun res!2864799 () Bool)

(declare-fun e!4219113 () Bool)

(assert (=> b!7018774 (=> res!2864799 e!4219113)))

(assert (=> b!7018774 (= res!2864799 (not (= (++!15402 lt!2510263 (_2!37313 lt!2510268)) s!7408)))))

(declare-fun b!7018775 () Bool)

(declare-fun e!4219112 () Bool)

(assert (=> b!7018775 (= e!4219112 e!4219120)))

(declare-fun res!2864793 () Bool)

(assert (=> b!7018775 (=> res!2864793 e!4219120)))

(declare-fun nullable!7129 (Regex!17369) Bool)

(assert (=> b!7018775 (= res!2864793 (nullable!7129 (h!73977 (exprs!6865 lt!2510280))))))

(declare-fun lt!2510284 () Context!12730)

(assert (=> b!7018775 (= lt!2510284 (Context!12731 lt!2510267))))

(declare-fun tail!13467 (List!67653) List!67653)

(assert (=> b!7018775 (= lt!2510267 (tail!13467 (exprs!6865 lt!2510280)))))

(declare-fun b!7018776 () Bool)

(declare-fun res!2864802 () Bool)

(declare-fun e!4219118 () Bool)

(assert (=> b!7018776 (=> res!2864802 e!4219118)))

(declare-fun lt!2510296 () Context!12730)

(declare-fun lt!2510289 () (InoxSet Context!12730))

(assert (=> b!7018776 (= res!2864802 (not (select lt!2510289 lt!2510296)))))

(assert (=> b!7018777 (= e!4219117 e!4219113)))

(declare-fun res!2864807 () Bool)

(assert (=> b!7018777 (=> res!2864807 e!4219113)))

(declare-fun z1!570 () (InoxSet Context!12730))

(assert (=> b!7018777 (= res!2864807 (not (matchZipper!2909 z1!570 lt!2510263)))))

(declare-datatypes ((List!67654 0))(
  ( (Nil!67530) (Cons!67530 (h!73978 Context!12730) (t!381409 List!67654)) )
))
(declare-fun lt!2510265 () List!67654)

(declare-fun content!13436 (List!67654) (InoxSet Context!12730))

(assert (=> b!7018777 (matchZipper!2909 (content!13436 lt!2510265) lt!2510263)))

(declare-fun lt!2510287 () Unit!161420)

(declare-fun lemmaExistsMatchingContextThenMatchingString!32 (List!67654 List!67652) Unit!161420)

(assert (=> b!7018777 (= lt!2510287 (lemmaExistsMatchingContextThenMatchingString!32 lt!2510265 lt!2510263))))

(declare-fun toList!10729 ((InoxSet Context!12730)) List!67654)

(assert (=> b!7018777 (= lt!2510265 (toList!10729 z1!570))))

(declare-fun exists!3243 ((InoxSet Context!12730) Int) Bool)

(assert (=> b!7018777 (exists!3243 z1!570 lambda!410691)))

(declare-fun lt!2510294 () Unit!161420)

(declare-fun lemmaContainsThenExists!103 ((InoxSet Context!12730) Context!12730 Int) Unit!161420)

(assert (=> b!7018777 (= lt!2510294 (lemmaContainsThenExists!103 z1!570 lt!2510280 lambda!410691))))

(declare-fun lt!2510272 () (InoxSet Context!12730))

(declare-datatypes ((Option!16842 0))(
  ( (None!16841) (Some!16841 (v!53119 tuple2!68020)) )
))
(declare-fun isDefined!13543 (Option!16842) Bool)

(declare-fun findConcatSeparationZippers!358 ((InoxSet Context!12730) (InoxSet Context!12730) List!67652 List!67652 List!67652) Option!16842)

(assert (=> b!7018777 (isDefined!13543 (findConcatSeparationZippers!358 lt!2510277 lt!2510272 Nil!67528 s!7408 s!7408))))

(declare-fun lt!2510270 () Unit!161420)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!30 ((InoxSet Context!12730) (InoxSet Context!12730) List!67652 List!67652 List!67652 List!67652 List!67652) Unit!161420)

(assert (=> b!7018777 (= lt!2510270 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!30 lt!2510277 lt!2510272 lt!2510263 (_2!37313 lt!2510268) s!7408 Nil!67528 s!7408))))

(declare-fun b!7018778 () Bool)

(declare-fun e!4219111 () Bool)

(declare-fun tp!1933601 () Bool)

(assert (=> b!7018778 (= e!4219111 tp!1933601)))

(declare-fun b!7018779 () Bool)

(declare-fun res!2864803 () Bool)

(assert (=> b!7018779 (=> res!2864803 e!4219119)))

(assert (=> b!7018779 (= res!2864803 (not (matchZipper!2909 lt!2510272 (_2!37313 lt!2510268))))))

(declare-fun b!7018780 () Bool)

(assert (=> b!7018780 (= e!4219119 e!4219116)))

(declare-fun res!2864794 () Bool)

(assert (=> b!7018780 (=> res!2864794 e!4219116)))

(declare-fun lt!2510273 () (InoxSet Context!12730))

(declare-fun lt!2510295 () (InoxSet Context!12730))

(declare-fun lt!2510292 () (InoxSet Context!12730))

(assert (=> b!7018780 (= res!2864794 (or (not (= lt!2510295 lt!2510292)) (not (= lt!2510295 lt!2510273))))))

(declare-fun lambda!410690 () Int)

(declare-fun flatMap!2355 ((InoxSet Context!12730) Int) (InoxSet Context!12730))

(declare-fun derivationStepZipperUp!2019 (Context!12730 C!35008) (InoxSet Context!12730))

(assert (=> b!7018780 (= (flatMap!2355 lt!2510277 lambda!410690) (derivationStepZipperUp!2019 lt!2510280 (h!73976 s!7408)))))

(declare-fun lt!2510283 () Unit!161420)

(declare-fun lemmaFlatMapOnSingletonSet!1870 ((InoxSet Context!12730) Context!12730 Int) Unit!161420)

(assert (=> b!7018780 (= lt!2510283 (lemmaFlatMapOnSingletonSet!1870 lt!2510277 lt!2510280 lambda!410690))))

(assert (=> b!7018780 (= lt!2510292 (derivationStepZipperUp!2019 lt!2510280 (h!73976 s!7408)))))

(declare-fun derivationStepZipper!2849 ((InoxSet Context!12730) C!35008) (InoxSet Context!12730))

(assert (=> b!7018780 (= lt!2510295 (derivationStepZipper!2849 lt!2510277 (h!73976 s!7408)))))

(assert (=> b!7018780 (= lt!2510277 (store ((as const (Array Context!12730 Bool)) false) lt!2510280 true))))

(declare-fun e!4219110 () Bool)

(assert (=> b!7018781 (= e!4219110 e!4219112)))

(declare-fun res!2864806 () Bool)

(assert (=> b!7018781 (=> res!2864806 e!4219112)))

(declare-fun lt!2510271 () (InoxSet Context!12730))

(declare-fun lt!2510285 () (InoxSet Context!12730))

(assert (=> b!7018781 (= res!2864806 (not (= (derivationStepZipper!2849 lt!2510285 (h!73976 s!7408)) lt!2510271)))))

(declare-fun lt!2510286 () Context!12730)

(assert (=> b!7018781 (= (flatMap!2355 lt!2510285 lambda!410690) (derivationStepZipperUp!2019 lt!2510286 (h!73976 s!7408)))))

(declare-fun lt!2510293 () Unit!161420)

(assert (=> b!7018781 (= lt!2510293 (lemmaFlatMapOnSingletonSet!1870 lt!2510285 lt!2510286 lambda!410690))))

(assert (=> b!7018781 (= lt!2510271 (derivationStepZipperUp!2019 lt!2510286 (h!73976 s!7408)))))

(declare-fun lt!2510291 () Unit!161420)

(assert (=> b!7018781 (= lt!2510291 (lemmaConcatPreservesForall!705 (exprs!6865 lt!2510280) (exprs!6865 ct2!306) lambda!410689))))

(declare-fun tp!1933603 () Bool)

(declare-fun setNonEmpty!48606 () Bool)

(declare-fun setRes!48606 () Bool)

(declare-fun setElem!48606 () Context!12730)

(declare-fun inv!86281 (Context!12730) Bool)

(assert (=> setNonEmpty!48606 (= setRes!48606 (and tp!1933603 (inv!86281 setElem!48606) e!4219111))))

(declare-fun setRest!48606 () (InoxSet Context!12730))

(assert (=> setNonEmpty!48606 (= z1!570 ((_ map or) (store ((as const (Array Context!12730 Bool)) false) setElem!48606 true) setRest!48606))))

(declare-fun res!2864804 () Bool)

(declare-fun e!4219114 () Bool)

(assert (=> start!676650 (=> (not res!2864804) (not e!4219114))))

(assert (=> start!676650 (= res!2864804 (matchZipper!2909 lt!2510289 s!7408))))

(declare-fun appendTo!490 ((InoxSet Context!12730) Context!12730) (InoxSet Context!12730))

(assert (=> start!676650 (= lt!2510289 (appendTo!490 z1!570 ct2!306))))

(assert (=> start!676650 e!4219114))

(declare-fun condSetEmpty!48606 () Bool)

(assert (=> start!676650 (= condSetEmpty!48606 (= z1!570 ((as const (Array Context!12730 Bool)) false)))))

(assert (=> start!676650 setRes!48606))

(declare-fun e!4219109 () Bool)

(assert (=> start!676650 (and (inv!86281 ct2!306) e!4219109)))

(assert (=> start!676650 e!4219108))

(declare-fun b!7018782 () Bool)

(assert (=> b!7018782 (= e!4219113 true)))

(declare-fun lt!2510275 () List!67652)

(assert (=> b!7018782 (= lt!2510275 (++!15402 Nil!67528 s!7408))))

(declare-fun b!7018783 () Bool)

(declare-fun res!2864808 () Bool)

(assert (=> b!7018783 (=> res!2864808 e!4219112)))

(get-info :version)

(assert (=> b!7018783 (= res!2864808 (not ((_ is Cons!67529) (exprs!6865 lt!2510280))))))

(declare-fun b!7018784 () Bool)

(declare-fun e!4219115 () Bool)

(assert (=> b!7018784 (= e!4219115 e!4219110)))

(declare-fun res!2864797 () Bool)

(assert (=> b!7018784 (=> res!2864797 e!4219110)))

(declare-fun lt!2510266 () (InoxSet Context!12730))

(assert (=> b!7018784 (= res!2864797 (not (= lt!2510285 lt!2510266)))))

(assert (=> b!7018784 (= lt!2510285 (store ((as const (Array Context!12730 Bool)) false) lt!2510286 true))))

(declare-fun lt!2510278 () Unit!161420)

(assert (=> b!7018784 (= lt!2510278 (lemmaConcatPreservesForall!705 (exprs!6865 lt!2510280) (exprs!6865 ct2!306) lambda!410689))))

(assert (=> b!7018785 (= e!4219118 e!4219115)))

(declare-fun res!2864805 () Bool)

(assert (=> b!7018785 (=> res!2864805 e!4219115)))

(assert (=> b!7018785 (= res!2864805 (or (not (= lt!2510286 lt!2510296)) (not (select z1!570 lt!2510280))))))

(assert (=> b!7018785 (= lt!2510286 (Context!12731 (++!15403 (exprs!6865 lt!2510280) (exprs!6865 ct2!306))))))

(declare-fun lt!2510279 () Unit!161420)

(assert (=> b!7018785 (= lt!2510279 (lemmaConcatPreservesForall!705 (exprs!6865 lt!2510280) (exprs!6865 ct2!306) lambda!410689))))

(declare-fun lambda!410688 () Int)

(declare-fun mapPost2!224 ((InoxSet Context!12730) Int Context!12730) Context!12730)

(assert (=> b!7018785 (= lt!2510280 (mapPost2!224 z1!570 lambda!410688 lt!2510296))))

(assert (=> b!7018786 (= e!4219114 (not e!4219118))))

(declare-fun res!2864801 () Bool)

(assert (=> b!7018786 (=> res!2864801 e!4219118)))

(assert (=> b!7018786 (= res!2864801 (not (matchZipper!2909 lt!2510266 s!7408)))))

(assert (=> b!7018786 (= lt!2510266 (store ((as const (Array Context!12730 Bool)) false) lt!2510296 true))))

(declare-fun getWitness!1333 ((InoxSet Context!12730) Int) Context!12730)

(assert (=> b!7018786 (= lt!2510296 (getWitness!1333 lt!2510289 lambda!410687))))

(declare-fun lt!2510269 () List!67654)

(declare-fun exists!3244 (List!67654 Int) Bool)

(assert (=> b!7018786 (exists!3244 lt!2510269 lambda!410687)))

(declare-fun lt!2510282 () Unit!161420)

(declare-fun lemmaZipperMatchesExistsMatchingContext!338 (List!67654 List!67652) Unit!161420)

(assert (=> b!7018786 (= lt!2510282 (lemmaZipperMatchesExistsMatchingContext!338 lt!2510269 s!7408))))

(assert (=> b!7018786 (= lt!2510269 (toList!10729 lt!2510289))))

(declare-fun b!7018787 () Bool)

(declare-fun res!2864796 () Bool)

(assert (=> b!7018787 (=> res!2864796 e!4219112)))

(declare-fun isEmpty!39438 (List!67653) Bool)

(assert (=> b!7018787 (= res!2864796 (isEmpty!39438 (exprs!6865 lt!2510280)))))

(declare-fun b!7018788 () Bool)

(declare-fun res!2864800 () Bool)

(assert (=> b!7018788 (=> (not res!2864800) (not e!4219114))))

(assert (=> b!7018788 (= res!2864800 ((_ is Cons!67528) s!7408))))

(declare-fun setIsEmpty!48606 () Bool)

(assert (=> setIsEmpty!48606 setRes!48606))

(declare-fun b!7018789 () Bool)

(assert (=> b!7018789 (= e!4219107 e!4219119)))

(declare-fun res!2864811 () Bool)

(assert (=> b!7018789 (=> res!2864811 e!4219119)))

(assert (=> b!7018789 (= res!2864811 (not (matchZipper!2909 lt!2510273 (_1!37313 lt!2510268))))))

(declare-fun lt!2510264 () Option!16842)

(declare-fun get!23685 (Option!16842) tuple2!68020)

(assert (=> b!7018789 (= lt!2510268 (get!23685 lt!2510264))))

(assert (=> b!7018789 (isDefined!13543 lt!2510264)))

(assert (=> b!7018789 (= lt!2510264 (findConcatSeparationZippers!358 lt!2510273 lt!2510272 Nil!67528 (t!381407 s!7408) (t!381407 s!7408)))))

(assert (=> b!7018789 (= lt!2510272 (store ((as const (Array Context!12730 Bool)) false) ct2!306 true))))

(declare-fun lt!2510290 () Unit!161420)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!358 ((InoxSet Context!12730) Context!12730 List!67652) Unit!161420)

(assert (=> b!7018789 (= lt!2510290 (lemmaConcatZipperMatchesStringThenFindConcatDefined!358 lt!2510273 ct2!306 (t!381407 s!7408)))))

(assert (=> b!7018789 (= lt!2510276 (appendTo!490 lt!2510273 ct2!306))))

(assert (=> b!7018789 (= lt!2510273 (derivationStepZipperDown!2087 (h!73977 (exprs!6865 lt!2510280)) lt!2510284 (h!73976 s!7408)))))

(declare-fun lt!2510288 () Unit!161420)

(assert (=> b!7018789 (= lt!2510288 (lemmaConcatPreservesForall!705 lt!2510267 (exprs!6865 ct2!306) lambda!410689))))

(declare-fun lt!2510274 () Unit!161420)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!60 (Context!12730 Regex!17369 C!35008 Context!12730) Unit!161420)

(assert (=> b!7018789 (= lt!2510274 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!60 lt!2510284 (h!73977 (exprs!6865 lt!2510280)) (h!73976 s!7408) ct2!306))))

(declare-fun b!7018790 () Bool)

(declare-fun res!2864798 () Bool)

(assert (=> b!7018790 (=> res!2864798 e!4219113)))

(declare-fun isPrefix!5832 (List!67652 List!67652) Bool)

(assert (=> b!7018790 (= res!2864798 (not (isPrefix!5832 Nil!67528 lt!2510263)))))

(declare-fun b!7018791 () Bool)

(declare-fun tp!1933602 () Bool)

(assert (=> b!7018791 (= e!4219109 tp!1933602)))

(assert (= (and start!676650 res!2864804) b!7018788))

(assert (= (and b!7018788 res!2864800) b!7018786))

(assert (= (and b!7018786 (not res!2864801)) b!7018776))

(assert (= (and b!7018776 (not res!2864802)) b!7018785))

(assert (= (and b!7018785 (not res!2864805)) b!7018784))

(assert (= (and b!7018784 (not res!2864797)) b!7018781))

(assert (= (and b!7018781 (not res!2864806)) b!7018783))

(assert (= (and b!7018783 (not res!2864808)) b!7018787))

(assert (= (and b!7018787 (not res!2864796)) b!7018775))

(assert (= (and b!7018775 (not res!2864793)) b!7018773))

(assert (= (and b!7018773 (not res!2864795)) b!7018789))

(assert (= (and b!7018789 (not res!2864811)) b!7018779))

(assert (= (and b!7018779 (not res!2864803)) b!7018772))

(assert (= (and b!7018772 (not res!2864809)) b!7018780))

(assert (= (and b!7018780 (not res!2864794)) b!7018770))

(assert (= (and b!7018770 (not res!2864810)) b!7018777))

(assert (= (and b!7018777 (not res!2864807)) b!7018774))

(assert (= (and b!7018774 (not res!2864799)) b!7018790))

(assert (= (and b!7018790 (not res!2864798)) b!7018782))

(assert (= (and start!676650 condSetEmpty!48606) setIsEmpty!48606))

(assert (= (and start!676650 (not condSetEmpty!48606)) setNonEmpty!48606))

(assert (= setNonEmpty!48606 b!7018778))

(assert (= start!676650 b!7018791))

(assert (= (and start!676650 ((_ is Cons!67528) s!7408)) b!7018771))

(declare-fun m!7719510 () Bool)

(assert (=> b!7018779 m!7719510))

(declare-fun m!7719512 () Bool)

(assert (=> b!7018782 m!7719512))

(declare-fun m!7719514 () Bool)

(assert (=> b!7018770 m!7719514))

(declare-fun m!7719516 () Bool)

(assert (=> b!7018785 m!7719516))

(declare-fun m!7719518 () Bool)

(assert (=> b!7018785 m!7719518))

(declare-fun m!7719520 () Bool)

(assert (=> b!7018785 m!7719520))

(declare-fun m!7719522 () Bool)

(assert (=> b!7018785 m!7719522))

(declare-fun m!7719524 () Bool)

(assert (=> b!7018780 m!7719524))

(declare-fun m!7719526 () Bool)

(assert (=> b!7018780 m!7719526))

(declare-fun m!7719528 () Bool)

(assert (=> b!7018780 m!7719528))

(declare-fun m!7719530 () Bool)

(assert (=> b!7018780 m!7719530))

(declare-fun m!7719532 () Bool)

(assert (=> b!7018780 m!7719532))

(declare-fun m!7719534 () Bool)

(assert (=> b!7018790 m!7719534))

(declare-fun m!7719536 () Bool)

(assert (=> setNonEmpty!48606 m!7719536))

(declare-fun m!7719538 () Bool)

(assert (=> b!7018776 m!7719538))

(declare-fun m!7719540 () Bool)

(assert (=> b!7018781 m!7719540))

(assert (=> b!7018781 m!7719520))

(declare-fun m!7719542 () Bool)

(assert (=> b!7018781 m!7719542))

(declare-fun m!7719544 () Bool)

(assert (=> b!7018781 m!7719544))

(declare-fun m!7719546 () Bool)

(assert (=> b!7018781 m!7719546))

(declare-fun m!7719548 () Bool)

(assert (=> b!7018787 m!7719548))

(declare-fun m!7719550 () Bool)

(assert (=> b!7018784 m!7719550))

(assert (=> b!7018784 m!7719520))

(declare-fun m!7719552 () Bool)

(assert (=> b!7018772 m!7719552))

(declare-fun m!7719554 () Bool)

(assert (=> b!7018777 m!7719554))

(declare-fun m!7719556 () Bool)

(assert (=> b!7018777 m!7719556))

(declare-fun m!7719558 () Bool)

(assert (=> b!7018777 m!7719558))

(declare-fun m!7719560 () Bool)

(assert (=> b!7018777 m!7719560))

(declare-fun m!7719562 () Bool)

(assert (=> b!7018777 m!7719562))

(declare-fun m!7719564 () Bool)

(assert (=> b!7018777 m!7719564))

(declare-fun m!7719566 () Bool)

(assert (=> b!7018777 m!7719566))

(declare-fun m!7719568 () Bool)

(assert (=> b!7018777 m!7719568))

(assert (=> b!7018777 m!7719560))

(declare-fun m!7719570 () Bool)

(assert (=> b!7018777 m!7719570))

(declare-fun m!7719572 () Bool)

(assert (=> b!7018777 m!7719572))

(assert (=> b!7018777 m!7719554))

(declare-fun m!7719574 () Bool)

(assert (=> b!7018775 m!7719574))

(declare-fun m!7719576 () Bool)

(assert (=> b!7018775 m!7719576))

(declare-fun m!7719578 () Bool)

(assert (=> b!7018774 m!7719578))

(declare-fun m!7719580 () Bool)

(assert (=> b!7018786 m!7719580))

(declare-fun m!7719582 () Bool)

(assert (=> b!7018786 m!7719582))

(declare-fun m!7719584 () Bool)

(assert (=> b!7018786 m!7719584))

(declare-fun m!7719586 () Bool)

(assert (=> b!7018786 m!7719586))

(declare-fun m!7719588 () Bool)

(assert (=> b!7018786 m!7719588))

(declare-fun m!7719590 () Bool)

(assert (=> b!7018786 m!7719590))

(declare-fun m!7719592 () Bool)

(assert (=> start!676650 m!7719592))

(declare-fun m!7719594 () Bool)

(assert (=> start!676650 m!7719594))

(declare-fun m!7719596 () Bool)

(assert (=> start!676650 m!7719596))

(declare-fun m!7719598 () Bool)

(assert (=> b!7018789 m!7719598))

(declare-fun m!7719600 () Bool)

(assert (=> b!7018789 m!7719600))

(declare-fun m!7719602 () Bool)

(assert (=> b!7018789 m!7719602))

(declare-fun m!7719604 () Bool)

(assert (=> b!7018789 m!7719604))

(declare-fun m!7719606 () Bool)

(assert (=> b!7018789 m!7719606))

(declare-fun m!7719608 () Bool)

(assert (=> b!7018789 m!7719608))

(declare-fun m!7719610 () Bool)

(assert (=> b!7018789 m!7719610))

(declare-fun m!7719612 () Bool)

(assert (=> b!7018789 m!7719612))

(declare-fun m!7719614 () Bool)

(assert (=> b!7018789 m!7719614))

(declare-fun m!7719616 () Bool)

(assert (=> b!7018789 m!7719616))

(declare-fun m!7719618 () Bool)

(assert (=> b!7018773 m!7719618))

(declare-fun m!7719620 () Bool)

(assert (=> b!7018773 m!7719620))

(declare-fun m!7719622 () Bool)

(assert (=> b!7018773 m!7719622))

(assert (=> b!7018773 m!7719598))

(check-sat (not b!7018777) (not b!7018785) (not b!7018780) (not b!7018781) (not b!7018786) (not b!7018790) (not b!7018789) (not b!7018787) (not b!7018791) (not b!7018779) (not b!7018778) (not b!7018773) tp_is_empty!43963 (not b!7018784) (not b!7018782) (not b!7018775) (not start!676650) (not b!7018771) (not b!7018774) (not setNonEmpty!48606) (not b!7018772) (not b!7018770))
(check-sat)
