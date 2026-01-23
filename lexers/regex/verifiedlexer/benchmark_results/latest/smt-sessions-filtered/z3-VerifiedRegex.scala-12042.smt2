; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!675540 () Bool)

(assert start!675540)

(declare-fun b!7012846 () Bool)

(assert (=> b!7012846 true))

(declare-fun b!7012859 () Bool)

(assert (=> b!7012859 true))

(declare-fun b!7012858 () Bool)

(assert (=> b!7012858 true))

(declare-fun bs!1866345 () Bool)

(declare-fun b!7012854 () Bool)

(assert (= bs!1866345 (and b!7012854 b!7012846)))

(declare-datatypes ((C!34932 0))(
  ( (C!34933 (val!27168 Int)) )
))
(declare-datatypes ((List!67538 0))(
  ( (Nil!67414) (Cons!67414 (h!73862 C!34932) (t!381293 List!67538)) )
))
(declare-fun lt!2506293 () List!67538)

(declare-fun lambda!409188 () Int)

(declare-fun s!7408 () List!67538)

(declare-fun lambda!409184 () Int)

(assert (=> bs!1866345 (= (= lt!2506293 s!7408) (= lambda!409188 lambda!409184))))

(assert (=> b!7012854 true))

(declare-fun b!7012837 () Bool)

(declare-fun e!4215506 () Bool)

(declare-fun e!4215505 () Bool)

(assert (=> b!7012837 (= e!4215506 e!4215505)))

(declare-fun res!2861911 () Bool)

(assert (=> b!7012837 (=> res!2861911 e!4215505)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17331 0))(
  ( (ElementMatch!17331 (c!1302750 C!34932)) (Concat!26176 (regOne!35174 Regex!17331) (regTwo!35174 Regex!17331)) (EmptyExpr!17331) (Star!17331 (reg!17660 Regex!17331)) (EmptyLang!17331) (Union!17331 (regOne!35175 Regex!17331) (regTwo!35175 Regex!17331)) )
))
(declare-datatypes ((List!67539 0))(
  ( (Nil!67415) (Cons!67415 (h!73863 Regex!17331) (t!381294 List!67539)) )
))
(declare-datatypes ((Context!12654 0))(
  ( (Context!12655 (exprs!6827 List!67539)) )
))
(declare-fun lt!2506281 () (InoxSet Context!12654))

(declare-fun lt!2506296 () (InoxSet Context!12654))

(assert (=> b!7012837 (= res!2861911 (not (= lt!2506281 lt!2506296)))))

(declare-fun lt!2506279 () (InoxSet Context!12654))

(declare-fun lt!2506295 () (InoxSet Context!12654))

(assert (=> b!7012837 (= lt!2506296 ((_ map or) lt!2506279 lt!2506295))))

(declare-fun lt!2506313 () Context!12654)

(declare-fun derivationStepZipperUp!1981 (Context!12654 C!34932) (InoxSet Context!12654))

(assert (=> b!7012837 (= lt!2506295 (derivationStepZipperUp!1981 lt!2506313 (h!73862 s!7408)))))

(declare-fun lt!2506291 () Context!12654)

(declare-fun derivationStepZipperDown!2049 (Regex!17331 Context!12654 C!34932) (InoxSet Context!12654))

(assert (=> b!7012837 (= lt!2506279 (derivationStepZipperDown!2049 (h!73863 (exprs!6827 lt!2506291)) lt!2506313 (h!73862 s!7408)))))

(declare-fun lt!2506321 () List!67539)

(declare-fun ct2!306 () Context!12654)

(declare-fun ++!15341 (List!67539 List!67539) List!67539)

(assert (=> b!7012837 (= lt!2506313 (Context!12655 (++!15341 lt!2506321 (exprs!6827 ct2!306))))))

(declare-fun lambda!409186 () Int)

(declare-datatypes ((Unit!161340 0))(
  ( (Unit!161341) )
))
(declare-fun lt!2506326 () Unit!161340)

(declare-fun lemmaConcatPreservesForall!667 (List!67539 List!67539 Int) Unit!161340)

(assert (=> b!7012837 (= lt!2506326 (lemmaConcatPreservesForall!667 lt!2506321 (exprs!6827 ct2!306) lambda!409186))))

(declare-fun lt!2506298 () Unit!161340)

(assert (=> b!7012837 (= lt!2506298 (lemmaConcatPreservesForall!667 lt!2506321 (exprs!6827 ct2!306) lambda!409186))))

(declare-fun b!7012838 () Bool)

(declare-fun e!4215487 () Bool)

(declare-fun e!4215490 () Bool)

(assert (=> b!7012838 (= e!4215487 e!4215490)))

(declare-fun res!2861907 () Bool)

(assert (=> b!7012838 (=> res!2861907 e!4215490)))

(declare-fun lt!2506312 () (InoxSet Context!12654))

(declare-fun lt!2506308 () (InoxSet Context!12654))

(assert (=> b!7012838 (= res!2861907 (not (= lt!2506312 lt!2506308)))))

(declare-fun lt!2506306 () (InoxSet Context!12654))

(declare-fun lt!2506285 () (InoxSet Context!12654))

(assert (=> b!7012838 (= lt!2506308 ((_ map or) lt!2506306 lt!2506285))))

(declare-fun lt!2506294 () Context!12654)

(assert (=> b!7012838 (= lt!2506285 (derivationStepZipperUp!1981 lt!2506294 (h!73862 s!7408)))))

(declare-fun b!7012839 () Bool)

(declare-fun e!4215507 () Bool)

(declare-fun tp!1932628 () Bool)

(assert (=> b!7012839 (= e!4215507 tp!1932628)))

(declare-fun b!7012841 () Bool)

(declare-fun e!4215489 () Bool)

(assert (=> b!7012841 (= e!4215489 e!4215487)))

(declare-fun res!2861910 () Bool)

(assert (=> b!7012841 (=> res!2861910 e!4215487)))

(declare-fun lt!2506290 () (InoxSet Context!12654))

(assert (=> b!7012841 (= res!2861910 (not (= lt!2506312 lt!2506290)))))

(declare-fun lambda!409187 () Int)

(declare-fun lt!2506282 () (InoxSet Context!12654))

(declare-fun flatMap!2317 ((InoxSet Context!12654) Int) (InoxSet Context!12654))

(assert (=> b!7012841 (= (flatMap!2317 lt!2506282 lambda!409187) (derivationStepZipperUp!1981 lt!2506291 (h!73862 s!7408)))))

(declare-fun lt!2506307 () Unit!161340)

(declare-fun lemmaFlatMapOnSingletonSet!1832 ((InoxSet Context!12654) Context!12654 Int) Unit!161340)

(assert (=> b!7012841 (= lt!2506307 (lemmaFlatMapOnSingletonSet!1832 lt!2506282 lt!2506291 lambda!409187))))

(assert (=> b!7012841 (= lt!2506290 (derivationStepZipperUp!1981 lt!2506291 (h!73862 s!7408)))))

(declare-fun derivationStepZipper!2811 ((InoxSet Context!12654) C!34932) (InoxSet Context!12654))

(assert (=> b!7012841 (= lt!2506312 (derivationStepZipper!2811 lt!2506282 (h!73862 s!7408)))))

(assert (=> b!7012841 (= lt!2506282 (store ((as const (Array Context!12654 Bool)) false) lt!2506291 true))))

(declare-fun b!7012842 () Bool)

(declare-fun e!4215502 () Bool)

(declare-fun e!4215500 () Bool)

(assert (=> b!7012842 (= e!4215502 e!4215500)))

(declare-fun res!2861888 () Bool)

(assert (=> b!7012842 (=> res!2861888 e!4215500)))

(declare-fun lt!2506292 () (InoxSet Context!12654))

(declare-fun lt!2506297 () (InoxSet Context!12654))

(assert (=> b!7012842 (= res!2861888 (not (= lt!2506292 lt!2506297)))))

(declare-fun lt!2506276 () Context!12654)

(assert (=> b!7012842 (= lt!2506292 (store ((as const (Array Context!12654 Bool)) false) lt!2506276 true))))

(declare-fun lt!2506288 () Unit!161340)

(assert (=> b!7012842 (= lt!2506288 (lemmaConcatPreservesForall!667 (exprs!6827 lt!2506291) (exprs!6827 ct2!306) lambda!409186))))

(declare-fun b!7012843 () Bool)

(declare-fun e!4215495 () Bool)

(assert (=> b!7012843 (= e!4215505 e!4215495)))

(declare-fun res!2861887 () Bool)

(assert (=> b!7012843 (=> res!2861887 e!4215495)))

(declare-fun e!4215488 () Bool)

(assert (=> b!7012843 (= res!2861887 e!4215488)))

(declare-fun res!2861909 () Bool)

(assert (=> b!7012843 (=> (not res!2861909) (not e!4215488))))

(declare-fun lt!2506284 () Bool)

(declare-fun lt!2506309 () Bool)

(assert (=> b!7012843 (= res!2861909 (not (= lt!2506284 lt!2506309)))))

(declare-fun matchZipper!2871 ((InoxSet Context!12654) List!67538) Bool)

(assert (=> b!7012843 (= lt!2506284 (matchZipper!2871 lt!2506281 (t!381293 s!7408)))))

(declare-fun lt!2506310 () Unit!161340)

(assert (=> b!7012843 (= lt!2506310 (lemmaConcatPreservesForall!667 lt!2506321 (exprs!6827 ct2!306) lambda!409186))))

(declare-fun e!4215497 () Bool)

(assert (=> b!7012843 (= (matchZipper!2871 lt!2506296 (t!381293 s!7408)) e!4215497)))

(declare-fun res!2861898 () Bool)

(assert (=> b!7012843 (=> res!2861898 e!4215497)))

(assert (=> b!7012843 (= res!2861898 lt!2506309)))

(assert (=> b!7012843 (= lt!2506309 (matchZipper!2871 lt!2506279 (t!381293 s!7408)))))

(declare-fun lt!2506323 () Unit!161340)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1504 ((InoxSet Context!12654) (InoxSet Context!12654) List!67538) Unit!161340)

(assert (=> b!7012843 (= lt!2506323 (lemmaZipperConcatMatchesSameAsBothZippers!1504 lt!2506279 lt!2506295 (t!381293 s!7408)))))

(declare-fun lt!2506319 () Unit!161340)

(assert (=> b!7012843 (= lt!2506319 (lemmaConcatPreservesForall!667 lt!2506321 (exprs!6827 ct2!306) lambda!409186))))

(declare-fun lt!2506317 () Unit!161340)

(assert (=> b!7012843 (= lt!2506317 (lemmaConcatPreservesForall!667 lt!2506321 (exprs!6827 ct2!306) lambda!409186))))

(declare-fun b!7012844 () Bool)

(declare-fun e!4215503 () Bool)

(declare-datatypes ((List!67540 0))(
  ( (Nil!67416) (Cons!67416 (h!73864 Context!12654) (t!381295 List!67540)) )
))
(declare-fun lt!2506324 () List!67540)

(declare-fun exists!3181 (List!67540 Int) Bool)

(assert (=> b!7012844 (= e!4215503 (exists!3181 lt!2506324 lambda!409188))))

(declare-fun b!7012845 () Bool)

(declare-fun res!2861897 () Bool)

(assert (=> b!7012845 (=> res!2861897 e!4215489)))

(declare-datatypes ((tuple2!67968 0))(
  ( (tuple2!67969 (_1!37287 List!67538) (_2!37287 List!67538)) )
))
(declare-fun lt!2506301 () tuple2!67968)

(declare-fun ++!15342 (List!67538 List!67538) List!67538)

(assert (=> b!7012845 (= res!2861897 (not (= (++!15342 (_1!37287 lt!2506301) (_2!37287 lt!2506301)) (t!381293 s!7408))))))

(declare-fun e!4215491 () Bool)

(declare-fun e!4215499 () Bool)

(assert (=> b!7012846 (= e!4215491 (not e!4215499))))

(declare-fun res!2861901 () Bool)

(assert (=> b!7012846 (=> res!2861901 e!4215499)))

(assert (=> b!7012846 (= res!2861901 (not (matchZipper!2871 lt!2506297 s!7408)))))

(declare-fun lt!2506325 () Context!12654)

(assert (=> b!7012846 (= lt!2506297 (store ((as const (Array Context!12654 Bool)) false) lt!2506325 true))))

(declare-fun lt!2506277 () (InoxSet Context!12654))

(declare-fun getWitness!1278 ((InoxSet Context!12654) Int) Context!12654)

(assert (=> b!7012846 (= lt!2506325 (getWitness!1278 lt!2506277 lambda!409184))))

(declare-fun lt!2506287 () List!67540)

(assert (=> b!7012846 (exists!3181 lt!2506287 lambda!409184)))

(declare-fun lt!2506314 () Unit!161340)

(declare-fun lemmaZipperMatchesExistsMatchingContext!300 (List!67540 List!67538) Unit!161340)

(assert (=> b!7012846 (= lt!2506314 (lemmaZipperMatchesExistsMatchingContext!300 lt!2506287 s!7408))))

(declare-fun toList!10691 ((InoxSet Context!12654)) List!67540)

(assert (=> b!7012846 (= lt!2506287 (toList!10691 lt!2506277))))

(declare-fun b!7012847 () Bool)

(declare-fun res!2861894 () Bool)

(declare-fun e!4215501 () Bool)

(assert (=> b!7012847 (=> res!2861894 e!4215501)))

(get-info :version)

(assert (=> b!7012847 (= res!2861894 (not ((_ is Cons!67415) (exprs!6827 lt!2506291))))))

(declare-fun e!4215498 () Bool)

(declare-fun setElem!48416 () Context!12654)

(declare-fun tp!1932630 () Bool)

(declare-fun setNonEmpty!48416 () Bool)

(declare-fun setRes!48416 () Bool)

(declare-fun inv!86186 (Context!12654) Bool)

(assert (=> setNonEmpty!48416 (= setRes!48416 (and tp!1932630 (inv!86186 setElem!48416) e!4215498))))

(declare-fun z1!570 () (InoxSet Context!12654))

(declare-fun setRest!48416 () (InoxSet Context!12654))

(assert (=> setNonEmpty!48416 (= z1!570 ((_ map or) (store ((as const (Array Context!12654 Bool)) false) setElem!48416 true) setRest!48416))))

(declare-fun b!7012848 () Bool)

(assert (=> b!7012848 (= e!4215488 (not (matchZipper!2871 lt!2506295 (t!381293 s!7408))))))

(declare-fun lt!2506283 () Unit!161340)

(assert (=> b!7012848 (= lt!2506283 (lemmaConcatPreservesForall!667 lt!2506321 (exprs!6827 ct2!306) lambda!409186))))

(declare-fun b!7012849 () Bool)

(declare-fun e!4215496 () Bool)

(assert (=> b!7012849 (= e!4215495 e!4215496)))

(declare-fun res!2861903 () Bool)

(assert (=> b!7012849 (=> res!2861903 e!4215496)))

(assert (=> b!7012849 (= res!2861903 (matchZipper!2871 lt!2506295 (t!381293 s!7408)))))

(declare-fun lt!2506299 () Unit!161340)

(assert (=> b!7012849 (= lt!2506299 (lemmaConcatPreservesForall!667 lt!2506321 (exprs!6827 ct2!306) lambda!409186))))

(declare-fun b!7012850 () Bool)

(declare-fun e!4215494 () Bool)

(assert (=> b!7012850 (= e!4215496 e!4215494)))

(declare-fun res!2861890 () Bool)

(assert (=> b!7012850 (=> res!2861890 e!4215494)))

(assert (=> b!7012850 (= res!2861890 (not lt!2506309))))

(declare-fun lt!2506311 () Unit!161340)

(assert (=> b!7012850 (= lt!2506311 (lemmaConcatPreservesForall!667 lt!2506321 (exprs!6827 ct2!306) lambda!409186))))

(declare-fun lt!2506280 () Unit!161340)

(assert (=> b!7012850 (= lt!2506280 (lemmaConcatPreservesForall!667 lt!2506321 (exprs!6827 ct2!306) lambda!409186))))

(declare-fun b!7012851 () Bool)

(declare-fun res!2861895 () Bool)

(assert (=> b!7012851 (=> res!2861895 e!4215501)))

(declare-fun isEmpty!39373 (List!67539) Bool)

(assert (=> b!7012851 (= res!2861895 (isEmpty!39373 (exprs!6827 lt!2506291)))))

(declare-fun b!7012852 () Bool)

(declare-fun res!2861906 () Bool)

(assert (=> b!7012852 (=> res!2861906 e!4215489)))

(declare-fun lt!2506318 () (InoxSet Context!12654))

(assert (=> b!7012852 (= res!2861906 (not (matchZipper!2871 lt!2506318 (_2!37287 lt!2506301))))))

(declare-fun b!7012853 () Bool)

(declare-fun e!4215492 () Bool)

(assert (=> b!7012853 (= e!4215492 (not (matchZipper!2871 lt!2506285 (_1!37287 lt!2506301))))))

(declare-fun e!4215504 () Bool)

(assert (=> b!7012854 (= e!4215504 e!4215503)))

(declare-fun res!2861891 () Bool)

(assert (=> b!7012854 (=> res!2861891 e!4215503)))

(assert (=> b!7012854 (= res!2861891 (not (exists!3181 lt!2506324 lambda!409188)))))

(assert (=> b!7012854 (= lt!2506324 (toList!10691 z1!570))))

(declare-fun exists!3182 ((InoxSet Context!12654) Int) Bool)

(assert (=> b!7012854 (exists!3182 z1!570 lambda!409188)))

(declare-fun lt!2506316 () Unit!161340)

(declare-fun lemmaContainsThenExists!95 ((InoxSet Context!12654) Context!12654 Int) Unit!161340)

(assert (=> b!7012854 (= lt!2506316 (lemmaContainsThenExists!95 z1!570 lt!2506291 lambda!409188))))

(declare-datatypes ((Option!16816 0))(
  ( (None!16815) (Some!16815 (v!53093 tuple2!67968)) )
))
(declare-fun isDefined!13517 (Option!16816) Bool)

(declare-fun findConcatSeparationZippers!332 ((InoxSet Context!12654) (InoxSet Context!12654) List!67538 List!67538 List!67538) Option!16816)

(assert (=> b!7012854 (isDefined!13517 (findConcatSeparationZippers!332 lt!2506282 lt!2506318 Nil!67414 s!7408 s!7408))))

(declare-fun lt!2506302 () Unit!161340)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!18 ((InoxSet Context!12654) (InoxSet Context!12654) List!67538 List!67538 List!67538 List!67538 List!67538) Unit!161340)

(assert (=> b!7012854 (= lt!2506302 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!18 lt!2506282 lt!2506318 lt!2506293 (_2!37287 lt!2506301) s!7408 Nil!67414 s!7408))))

(declare-fun b!7012855 () Bool)

(assert (=> b!7012855 (= e!4215494 e!4215489)))

(declare-fun res!2861889 () Bool)

(assert (=> b!7012855 (=> res!2861889 e!4215489)))

(assert (=> b!7012855 (= res!2861889 (not (matchZipper!2871 lt!2506306 (_1!37287 lt!2506301))))))

(declare-fun lt!2506304 () Option!16816)

(declare-fun get!23643 (Option!16816) tuple2!67968)

(assert (=> b!7012855 (= lt!2506301 (get!23643 lt!2506304))))

(assert (=> b!7012855 (isDefined!13517 lt!2506304)))

(assert (=> b!7012855 (= lt!2506304 (findConcatSeparationZippers!332 lt!2506306 lt!2506318 Nil!67414 (t!381293 s!7408) (t!381293 s!7408)))))

(assert (=> b!7012855 (= lt!2506318 (store ((as const (Array Context!12654 Bool)) false) ct2!306 true))))

(declare-fun lt!2506320 () Unit!161340)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!332 ((InoxSet Context!12654) Context!12654 List!67538) Unit!161340)

(assert (=> b!7012855 (= lt!2506320 (lemmaConcatZipperMatchesStringThenFindConcatDefined!332 lt!2506306 ct2!306 (t!381293 s!7408)))))

(declare-fun lt!2506303 () Unit!161340)

(assert (=> b!7012855 (= lt!2506303 (lemmaConcatPreservesForall!667 lt!2506321 (exprs!6827 ct2!306) lambda!409186))))

(declare-fun appendTo!452 ((InoxSet Context!12654) Context!12654) (InoxSet Context!12654))

(assert (=> b!7012855 (= lt!2506279 (appendTo!452 lt!2506306 ct2!306))))

(assert (=> b!7012855 (= lt!2506306 (derivationStepZipperDown!2049 (h!73863 (exprs!6827 lt!2506291)) lt!2506294 (h!73862 s!7408)))))

(declare-fun lt!2506286 () Unit!161340)

(assert (=> b!7012855 (= lt!2506286 (lemmaConcatPreservesForall!667 lt!2506321 (exprs!6827 ct2!306) lambda!409186))))

(declare-fun lt!2506305 () Unit!161340)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!30 (Context!12654 Regex!17331 C!34932 Context!12654) Unit!161340)

(assert (=> b!7012855 (= lt!2506305 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!30 lt!2506294 (h!73863 (exprs!6827 lt!2506291)) (h!73862 s!7408) ct2!306))))

(declare-fun b!7012840 () Bool)

(declare-fun e!4215493 () Bool)

(declare-fun tp_is_empty!43887 () Bool)

(declare-fun tp!1932629 () Bool)

(assert (=> b!7012840 (= e!4215493 (and tp_is_empty!43887 tp!1932629))))

(declare-fun res!2861893 () Bool)

(assert (=> start!675540 (=> (not res!2861893) (not e!4215491))))

(assert (=> start!675540 (= res!2861893 (matchZipper!2871 lt!2506277 s!7408))))

(assert (=> start!675540 (= lt!2506277 (appendTo!452 z1!570 ct2!306))))

(assert (=> start!675540 e!4215491))

(declare-fun condSetEmpty!48416 () Bool)

(assert (=> start!675540 (= condSetEmpty!48416 (= z1!570 ((as const (Array Context!12654 Bool)) false)))))

(assert (=> start!675540 setRes!48416))

(assert (=> start!675540 (and (inv!86186 ct2!306) e!4215507)))

(assert (=> start!675540 e!4215493))

(declare-fun b!7012856 () Bool)

(declare-fun res!2861899 () Bool)

(assert (=> b!7012856 (=> res!2861899 e!4215495)))

(assert (=> b!7012856 (= res!2861899 (not lt!2506284))))

(declare-fun b!7012857 () Bool)

(declare-fun tp!1932631 () Bool)

(assert (=> b!7012857 (= e!4215498 tp!1932631)))

(declare-fun setIsEmpty!48416 () Bool)

(assert (=> setIsEmpty!48416 setRes!48416))

(assert (=> b!7012858 (= e!4215500 e!4215501)))

(declare-fun res!2861892 () Bool)

(assert (=> b!7012858 (=> res!2861892 e!4215501)))

(assert (=> b!7012858 (= res!2861892 (not (= (derivationStepZipper!2811 lt!2506292 (h!73862 s!7408)) lt!2506281)))))

(assert (=> b!7012858 (= (flatMap!2317 lt!2506292 lambda!409187) (derivationStepZipperUp!1981 lt!2506276 (h!73862 s!7408)))))

(declare-fun lt!2506315 () Unit!161340)

(assert (=> b!7012858 (= lt!2506315 (lemmaFlatMapOnSingletonSet!1832 lt!2506292 lt!2506276 lambda!409187))))

(assert (=> b!7012858 (= lt!2506281 (derivationStepZipperUp!1981 lt!2506276 (h!73862 s!7408)))))

(declare-fun lt!2506300 () Unit!161340)

(assert (=> b!7012858 (= lt!2506300 (lemmaConcatPreservesForall!667 (exprs!6827 lt!2506291) (exprs!6827 ct2!306) lambda!409186))))

(assert (=> b!7012859 (= e!4215499 e!4215502)))

(declare-fun res!2861904 () Bool)

(assert (=> b!7012859 (=> res!2861904 e!4215502)))

(assert (=> b!7012859 (= res!2861904 (or (not (= lt!2506276 lt!2506325)) (not (select z1!570 lt!2506291))))))

(assert (=> b!7012859 (= lt!2506276 (Context!12655 (++!15341 (exprs!6827 lt!2506291) (exprs!6827 ct2!306))))))

(declare-fun lt!2506289 () Unit!161340)

(assert (=> b!7012859 (= lt!2506289 (lemmaConcatPreservesForall!667 (exprs!6827 lt!2506291) (exprs!6827 ct2!306) lambda!409186))))

(declare-fun lambda!409185 () Int)

(declare-fun mapPost2!186 ((InoxSet Context!12654) Int Context!12654) Context!12654)

(assert (=> b!7012859 (= lt!2506291 (mapPost2!186 z1!570 lambda!409185 lt!2506325))))

(declare-fun b!7012860 () Bool)

(assert (=> b!7012860 (= e!4215501 e!4215506)))

(declare-fun res!2861908 () Bool)

(assert (=> b!7012860 (=> res!2861908 e!4215506)))

(declare-fun nullable!7091 (Regex!17331) Bool)

(assert (=> b!7012860 (= res!2861908 (not (nullable!7091 (h!73863 (exprs!6827 lt!2506291)))))))

(assert (=> b!7012860 (= lt!2506294 (Context!12655 lt!2506321))))

(declare-fun tail!13411 (List!67539) List!67539)

(assert (=> b!7012860 (= lt!2506321 (tail!13411 (exprs!6827 lt!2506291)))))

(declare-fun b!7012861 () Bool)

(assert (=> b!7012861 (= e!4215490 e!4215504)))

(declare-fun res!2861886 () Bool)

(assert (=> b!7012861 (=> res!2861886 e!4215504)))

(assert (=> b!7012861 (= res!2861886 e!4215492)))

(declare-fun res!2861896 () Bool)

(assert (=> b!7012861 (=> (not res!2861896) (not e!4215492))))

(declare-fun lt!2506278 () Bool)

(assert (=> b!7012861 (= res!2861896 (not lt!2506278))))

(assert (=> b!7012861 (= lt!2506278 (matchZipper!2871 lt!2506282 lt!2506293))))

(assert (=> b!7012861 (= lt!2506293 (Cons!67414 (h!73862 s!7408) (_1!37287 lt!2506301)))))

(assert (=> b!7012861 (matchZipper!2871 lt!2506308 (_1!37287 lt!2506301))))

(declare-fun lt!2506322 () Unit!161340)

(assert (=> b!7012861 (= lt!2506322 (lemmaZipperConcatMatchesSameAsBothZippers!1504 lt!2506306 lt!2506285 (_1!37287 lt!2506301)))))

(declare-fun b!7012862 () Bool)

(declare-fun res!2861900 () Bool)

(assert (=> b!7012862 (=> res!2861900 e!4215499)))

(assert (=> b!7012862 (= res!2861900 (not (select lt!2506277 lt!2506325)))))

(declare-fun b!7012863 () Bool)

(declare-fun res!2861902 () Bool)

(assert (=> b!7012863 (=> res!2861902 e!4215504)))

(assert (=> b!7012863 (= res!2861902 (not lt!2506278))))

(declare-fun b!7012864 () Bool)

(declare-fun res!2861905 () Bool)

(assert (=> b!7012864 (=> (not res!2861905) (not e!4215491))))

(assert (=> b!7012864 (= res!2861905 ((_ is Cons!67414) s!7408))))

(declare-fun b!7012865 () Bool)

(assert (=> b!7012865 (= e!4215497 (matchZipper!2871 lt!2506295 (t!381293 s!7408)))))

(assert (= (and start!675540 res!2861893) b!7012864))

(assert (= (and b!7012864 res!2861905) b!7012846))

(assert (= (and b!7012846 (not res!2861901)) b!7012862))

(assert (= (and b!7012862 (not res!2861900)) b!7012859))

(assert (= (and b!7012859 (not res!2861904)) b!7012842))

(assert (= (and b!7012842 (not res!2861888)) b!7012858))

(assert (= (and b!7012858 (not res!2861892)) b!7012847))

(assert (= (and b!7012847 (not res!2861894)) b!7012851))

(assert (= (and b!7012851 (not res!2861895)) b!7012860))

(assert (= (and b!7012860 (not res!2861908)) b!7012837))

(assert (= (and b!7012837 (not res!2861911)) b!7012843))

(assert (= (and b!7012843 (not res!2861898)) b!7012865))

(assert (= (and b!7012843 res!2861909) b!7012848))

(assert (= (and b!7012843 (not res!2861887)) b!7012856))

(assert (= (and b!7012856 (not res!2861899)) b!7012849))

(assert (= (and b!7012849 (not res!2861903)) b!7012850))

(assert (= (and b!7012850 (not res!2861890)) b!7012855))

(assert (= (and b!7012855 (not res!2861889)) b!7012852))

(assert (= (and b!7012852 (not res!2861906)) b!7012845))

(assert (= (and b!7012845 (not res!2861897)) b!7012841))

(assert (= (and b!7012841 (not res!2861910)) b!7012838))

(assert (= (and b!7012838 (not res!2861907)) b!7012861))

(assert (= (and b!7012861 res!2861896) b!7012853))

(assert (= (and b!7012861 (not res!2861886)) b!7012863))

(assert (= (and b!7012863 (not res!2861902)) b!7012854))

(assert (= (and b!7012854 (not res!2861891)) b!7012844))

(assert (= (and start!675540 condSetEmpty!48416) setIsEmpty!48416))

(assert (= (and start!675540 (not condSetEmpty!48416)) setNonEmpty!48416))

(assert (= setNonEmpty!48416 b!7012857))

(assert (= start!675540 b!7012839))

(assert (= (and start!675540 ((_ is Cons!67414) s!7408)) b!7012840))

(declare-fun m!7711548 () Bool)

(assert (=> b!7012848 m!7711548))

(declare-fun m!7711550 () Bool)

(assert (=> b!7012848 m!7711550))

(declare-fun m!7711552 () Bool)

(assert (=> b!7012853 m!7711552))

(assert (=> b!7012850 m!7711550))

(assert (=> b!7012850 m!7711550))

(assert (=> b!7012855 m!7711550))

(assert (=> b!7012855 m!7711550))

(declare-fun m!7711554 () Bool)

(assert (=> b!7012855 m!7711554))

(declare-fun m!7711556 () Bool)

(assert (=> b!7012855 m!7711556))

(declare-fun m!7711558 () Bool)

(assert (=> b!7012855 m!7711558))

(declare-fun m!7711560 () Bool)

(assert (=> b!7012855 m!7711560))

(declare-fun m!7711562 () Bool)

(assert (=> b!7012855 m!7711562))

(declare-fun m!7711564 () Bool)

(assert (=> b!7012855 m!7711564))

(declare-fun m!7711566 () Bool)

(assert (=> b!7012855 m!7711566))

(declare-fun m!7711568 () Bool)

(assert (=> b!7012855 m!7711568))

(declare-fun m!7711570 () Bool)

(assert (=> b!7012855 m!7711570))

(declare-fun m!7711572 () Bool)

(assert (=> b!7012842 m!7711572))

(declare-fun m!7711574 () Bool)

(assert (=> b!7012842 m!7711574))

(assert (=> b!7012843 m!7711550))

(assert (=> b!7012843 m!7711550))

(declare-fun m!7711576 () Bool)

(assert (=> b!7012843 m!7711576))

(assert (=> b!7012843 m!7711550))

(declare-fun m!7711578 () Bool)

(assert (=> b!7012843 m!7711578))

(declare-fun m!7711580 () Bool)

(assert (=> b!7012843 m!7711580))

(declare-fun m!7711582 () Bool)

(assert (=> b!7012843 m!7711582))

(assert (=> b!7012865 m!7711548))

(declare-fun m!7711584 () Bool)

(assert (=> b!7012854 m!7711584))

(declare-fun m!7711586 () Bool)

(assert (=> b!7012854 m!7711586))

(assert (=> b!7012854 m!7711584))

(declare-fun m!7711588 () Bool)

(assert (=> b!7012854 m!7711588))

(declare-fun m!7711590 () Bool)

(assert (=> b!7012854 m!7711590))

(declare-fun m!7711592 () Bool)

(assert (=> b!7012854 m!7711592))

(declare-fun m!7711594 () Bool)

(assert (=> b!7012854 m!7711594))

(declare-fun m!7711596 () Bool)

(assert (=> b!7012854 m!7711596))

(declare-fun m!7711598 () Bool)

(assert (=> b!7012841 m!7711598))

(declare-fun m!7711600 () Bool)

(assert (=> b!7012841 m!7711600))

(declare-fun m!7711602 () Bool)

(assert (=> b!7012841 m!7711602))

(declare-fun m!7711604 () Bool)

(assert (=> b!7012841 m!7711604))

(declare-fun m!7711606 () Bool)

(assert (=> b!7012841 m!7711606))

(declare-fun m!7711608 () Bool)

(assert (=> b!7012845 m!7711608))

(declare-fun m!7711610 () Bool)

(assert (=> b!7012846 m!7711610))

(declare-fun m!7711612 () Bool)

(assert (=> b!7012846 m!7711612))

(declare-fun m!7711614 () Bool)

(assert (=> b!7012846 m!7711614))

(declare-fun m!7711616 () Bool)

(assert (=> b!7012846 m!7711616))

(declare-fun m!7711618 () Bool)

(assert (=> b!7012846 m!7711618))

(declare-fun m!7711620 () Bool)

(assert (=> b!7012846 m!7711620))

(assert (=> b!7012844 m!7711590))

(declare-fun m!7711622 () Bool)

(assert (=> b!7012860 m!7711622))

(declare-fun m!7711624 () Bool)

(assert (=> b!7012860 m!7711624))

(assert (=> b!7012858 m!7711574))

(declare-fun m!7711626 () Bool)

(assert (=> b!7012858 m!7711626))

(declare-fun m!7711628 () Bool)

(assert (=> b!7012858 m!7711628))

(declare-fun m!7711630 () Bool)

(assert (=> b!7012858 m!7711630))

(declare-fun m!7711632 () Bool)

(assert (=> b!7012858 m!7711632))

(declare-fun m!7711634 () Bool)

(assert (=> b!7012837 m!7711634))

(declare-fun m!7711636 () Bool)

(assert (=> b!7012837 m!7711636))

(assert (=> b!7012837 m!7711550))

(assert (=> b!7012837 m!7711550))

(declare-fun m!7711638 () Bool)

(assert (=> b!7012837 m!7711638))

(declare-fun m!7711640 () Bool)

(assert (=> b!7012838 m!7711640))

(declare-fun m!7711642 () Bool)

(assert (=> b!7012859 m!7711642))

(declare-fun m!7711644 () Bool)

(assert (=> b!7012859 m!7711644))

(assert (=> b!7012859 m!7711574))

(declare-fun m!7711646 () Bool)

(assert (=> b!7012859 m!7711646))

(assert (=> b!7012849 m!7711548))

(assert (=> b!7012849 m!7711550))

(declare-fun m!7711648 () Bool)

(assert (=> start!675540 m!7711648))

(declare-fun m!7711650 () Bool)

(assert (=> start!675540 m!7711650))

(declare-fun m!7711652 () Bool)

(assert (=> start!675540 m!7711652))

(declare-fun m!7711654 () Bool)

(assert (=> setNonEmpty!48416 m!7711654))

(declare-fun m!7711656 () Bool)

(assert (=> b!7012861 m!7711656))

(declare-fun m!7711658 () Bool)

(assert (=> b!7012861 m!7711658))

(declare-fun m!7711660 () Bool)

(assert (=> b!7012861 m!7711660))

(declare-fun m!7711662 () Bool)

(assert (=> b!7012862 m!7711662))

(declare-fun m!7711664 () Bool)

(assert (=> b!7012852 m!7711664))

(declare-fun m!7711666 () Bool)

(assert (=> b!7012851 m!7711666))

(check-sat (not b!7012844) (not b!7012841) tp_is_empty!43887 (not setNonEmpty!48416) (not b!7012860) (not b!7012849) (not b!7012858) (not b!7012852) (not b!7012838) (not b!7012840) (not b!7012843) (not b!7012853) (not b!7012845) (not b!7012837) (not start!675540) (not b!7012848) (not b!7012842) (not b!7012846) (not b!7012850) (not b!7012839) (not b!7012865) (not b!7012859) (not b!7012851) (not b!7012854) (not b!7012857) (not b!7012861) (not b!7012855))
(check-sat)
