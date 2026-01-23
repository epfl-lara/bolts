; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!660156 () Bool)

(assert start!660156)

(declare-fun b!6826772 () Bool)

(assert (=> b!6826772 true))

(assert (=> b!6826772 true))

(declare-fun lambda!385743 () Int)

(declare-fun lambda!385742 () Int)

(assert (=> b!6826772 (not (= lambda!385743 lambda!385742))))

(assert (=> b!6826772 true))

(assert (=> b!6826772 true))

(declare-fun lambda!385744 () Int)

(assert (=> b!6826772 (not (= lambda!385744 lambda!385742))))

(assert (=> b!6826772 (not (= lambda!385744 lambda!385743))))

(assert (=> b!6826772 true))

(assert (=> b!6826772 true))

(declare-fun b!6826748 () Bool)

(assert (=> b!6826748 true))

(declare-fun b!6826765 () Bool)

(assert (=> b!6826765 true))

(declare-fun b!6826745 () Bool)

(declare-fun res!2788304 () Bool)

(declare-fun e!4118325 () Bool)

(assert (=> b!6826745 (=> res!2788304 e!4118325)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33552 0))(
  ( (C!33553 (val!26478 Int)) )
))
(declare-datatypes ((Regex!16641 0))(
  ( (ElementMatch!16641 (c!1270757 C!33552)) (Concat!25486 (regOne!33794 Regex!16641) (regTwo!33794 Regex!16641)) (EmptyExpr!16641) (Star!16641 (reg!16970 Regex!16641)) (EmptyLang!16641) (Union!16641 (regOne!33795 Regex!16641) (regTwo!33795 Regex!16641)) )
))
(declare-datatypes ((List!66222 0))(
  ( (Nil!66098) (Cons!66098 (h!72546 Regex!16641) (t!379963 List!66222)) )
))
(declare-datatypes ((Context!12050 0))(
  ( (Context!12051 (exprs!6525 List!66222)) )
))
(declare-fun lt!2452608 () (InoxSet Context!12050))

(declare-datatypes ((List!66223 0))(
  ( (Nil!66099) (Cons!66099 (h!72547 C!33552) (t!379964 List!66223)) )
))
(declare-datatypes ((tuple2!67232 0))(
  ( (tuple2!67233 (_1!36919 List!66223) (_2!36919 List!66223)) )
))
(declare-fun lt!2452598 () tuple2!67232)

(declare-fun matchZipper!2627 ((InoxSet Context!12050) List!66223) Bool)

(assert (=> b!6826745 (= res!2788304 (not (matchZipper!2627 lt!2452608 (_2!36919 lt!2452598))))))

(declare-fun b!6826746 () Bool)

(declare-fun e!4118326 () Bool)

(declare-fun e!4118327 () Bool)

(assert (=> b!6826746 (= e!4118326 e!4118327)))

(declare-fun res!2788311 () Bool)

(assert (=> b!6826746 (=> res!2788311 e!4118327)))

(declare-fun r!7292 () Regex!16641)

(declare-fun s!2326 () List!66223)

(declare-fun lt!2452615 () (InoxSet Context!12050))

(declare-fun lt!2452590 () Context!12050)

(declare-fun derivationStepZipperDown!1869 (Regex!16641 Context!12050 C!33552) (InoxSet Context!12050))

(assert (=> b!6826746 (= res!2788311 (not (= lt!2452615 (derivationStepZipperDown!1869 (reg!16970 r!7292) lt!2452590 (h!72547 s!2326)))))))

(declare-fun lt!2452600 () List!66222)

(assert (=> b!6826746 (= lt!2452590 (Context!12051 lt!2452600))))

(declare-fun lt!2452613 () (InoxSet Context!12050))

(declare-fun lt!2452611 () Context!12050)

(declare-fun lambda!385745 () Int)

(declare-fun flatMap!2122 ((InoxSet Context!12050) Int) (InoxSet Context!12050))

(declare-fun derivationStepZipperUp!1795 (Context!12050 C!33552) (InoxSet Context!12050))

(assert (=> b!6826746 (= (flatMap!2122 lt!2452613 lambda!385745) (derivationStepZipperUp!1795 lt!2452611 (h!72547 s!2326)))))

(declare-datatypes ((Unit!159973 0))(
  ( (Unit!159974) )
))
(declare-fun lt!2452614 () Unit!159973)

(declare-fun lemmaFlatMapOnSingletonSet!1648 ((InoxSet Context!12050) Context!12050 Int) Unit!159973)

(assert (=> b!6826746 (= lt!2452614 (lemmaFlatMapOnSingletonSet!1648 lt!2452613 lt!2452611 lambda!385745))))

(declare-fun lt!2452592 () (InoxSet Context!12050))

(assert (=> b!6826746 (= lt!2452592 (derivationStepZipperUp!1795 lt!2452611 (h!72547 s!2326)))))

(assert (=> b!6826746 (= lt!2452613 (store ((as const (Array Context!12050 Bool)) false) lt!2452611 true))))

(assert (=> b!6826746 (= lt!2452611 (Context!12051 (Cons!66098 (reg!16970 r!7292) lt!2452600)))))

(assert (=> b!6826746 (= lt!2452600 (Cons!66098 r!7292 Nil!66098))))

(declare-fun b!6826747 () Bool)

(declare-fun e!4118310 () Bool)

(assert (=> b!6826747 (= e!4118310 e!4118325)))

(declare-fun res!2788298 () Bool)

(assert (=> b!6826747 (=> res!2788298 e!4118325)))

(declare-fun lt!2452612 () List!66223)

(assert (=> b!6826747 (= res!2788298 (not (= s!2326 lt!2452612)))))

(declare-fun ++!14828 (List!66223 List!66223) List!66223)

(assert (=> b!6826747 (= lt!2452612 (++!14828 (_1!36919 lt!2452598) (_2!36919 lt!2452598)))))

(declare-datatypes ((Option!16528 0))(
  ( (None!16527) (Some!16527 (v!52737 tuple2!67232)) )
))
(declare-fun lt!2452619 () Option!16528)

(declare-fun get!23031 (Option!16528) tuple2!67232)

(assert (=> b!6826747 (= lt!2452598 (get!23031 lt!2452619))))

(declare-fun isDefined!13231 (Option!16528) Bool)

(assert (=> b!6826747 (isDefined!13231 lt!2452619)))

(declare-fun lt!2452588 () (InoxSet Context!12050))

(declare-fun findConcatSeparationZippers!250 ((InoxSet Context!12050) (InoxSet Context!12050) List!66223 List!66223 List!66223) Option!16528)

(assert (=> b!6826747 (= lt!2452619 (findConcatSeparationZippers!250 lt!2452588 lt!2452608 Nil!66099 s!2326 s!2326))))

(declare-fun lt!2452607 () Unit!159973)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!250 ((InoxSet Context!12050) Context!12050 List!66223) Unit!159973)

(assert (=> b!6826747 (= lt!2452607 (lemmaConcatZipperMatchesStringThenFindConcatDefined!250 lt!2452588 lt!2452590 s!2326))))

(declare-fun setIsEmpty!46869 () Bool)

(declare-fun setRes!46869 () Bool)

(assert (=> setIsEmpty!46869 setRes!46869))

(declare-fun e!4118315 () Bool)

(assert (=> b!6826748 (= e!4118315 e!4118326)))

(declare-fun res!2788324 () Bool)

(assert (=> b!6826748 (=> res!2788324 e!4118326)))

(declare-fun lt!2452618 () (InoxSet Context!12050))

(assert (=> b!6826748 (= res!2788324 (not (= lt!2452615 lt!2452618)))))

(declare-fun z!1189 () (InoxSet Context!12050))

(declare-datatypes ((List!66224 0))(
  ( (Nil!66100) (Cons!66100 (h!72548 Context!12050) (t!379965 List!66224)) )
))
(declare-fun zl!343 () List!66224)

(assert (=> b!6826748 (= (flatMap!2122 z!1189 lambda!385745) (derivationStepZipperUp!1795 (h!72548 zl!343) (h!72547 s!2326)))))

(declare-fun lt!2452609 () Unit!159973)

(assert (=> b!6826748 (= lt!2452609 (lemmaFlatMapOnSingletonSet!1648 z!1189 (h!72548 zl!343) lambda!385745))))

(declare-fun b!6826749 () Bool)

(declare-fun e!4118314 () Bool)

(declare-fun e!4118323 () Bool)

(assert (=> b!6826749 (= e!4118314 e!4118323)))

(declare-fun res!2788322 () Bool)

(assert (=> b!6826749 (=> res!2788322 e!4118323)))

(declare-fun lt!2452601 () List!66224)

(declare-fun unfocusZipper!2383 (List!66224) Regex!16641)

(assert (=> b!6826749 (= res!2788322 (not (= (unfocusZipper!2383 lt!2452601) (reg!16970 r!7292))))))

(declare-fun lt!2452606 () Context!12050)

(assert (=> b!6826749 (= lt!2452601 (Cons!66100 lt!2452606 Nil!66100))))

(declare-fun b!6826750 () Bool)

(declare-fun e!4118311 () Bool)

(declare-fun lt!2452589 () Bool)

(assert (=> b!6826750 (= e!4118311 lt!2452589)))

(declare-fun res!2788312 () Bool)

(declare-fun e!4118317 () Bool)

(assert (=> start!660156 (=> (not res!2788312) (not e!4118317))))

(declare-fun validRegex!8377 (Regex!16641) Bool)

(assert (=> start!660156 (= res!2788312 (validRegex!8377 r!7292))))

(assert (=> start!660156 e!4118317))

(declare-fun e!4118320 () Bool)

(assert (=> start!660156 e!4118320))

(declare-fun condSetEmpty!46869 () Bool)

(assert (=> start!660156 (= condSetEmpty!46869 (= z!1189 ((as const (Array Context!12050 Bool)) false)))))

(assert (=> start!660156 setRes!46869))

(declare-fun e!4118328 () Bool)

(assert (=> start!660156 e!4118328))

(declare-fun e!4118322 () Bool)

(assert (=> start!660156 e!4118322))

(declare-fun b!6826751 () Bool)

(declare-fun res!2788317 () Bool)

(assert (=> b!6826751 (=> res!2788317 e!4118327)))

(declare-fun lt!2452593 () Regex!16641)

(assert (=> b!6826751 (= res!2788317 (or (not (= lt!2452593 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6826752 () Bool)

(declare-fun res!2788306 () Bool)

(declare-fun e!4118324 () Bool)

(assert (=> b!6826752 (=> res!2788306 e!4118324)))

(get-info :version)

(assert (=> b!6826752 (= res!2788306 ((_ is Nil!66099) s!2326))))

(declare-fun e!4118316 () Bool)

(declare-fun b!6826753 () Bool)

(declare-fun tp!1868360 () Bool)

(declare-fun inv!84849 (Context!12050) Bool)

(assert (=> b!6826753 (= e!4118328 (and (inv!84849 (h!72548 zl!343)) e!4118316 tp!1868360))))

(declare-fun b!6826754 () Bool)

(declare-fun res!2788323 () Bool)

(assert (=> b!6826754 (=> res!2788323 e!4118327)))

(declare-fun derivationStepZipper!2585 ((InoxSet Context!12050) C!33552) (InoxSet Context!12050))

(assert (=> b!6826754 (= res!2788323 (not (= (matchZipper!2627 lt!2452613 s!2326) (matchZipper!2627 (derivationStepZipper!2585 lt!2452613 (h!72547 s!2326)) (t!379964 s!2326)))))))

(declare-fun b!6826755 () Bool)

(declare-fun e!4118321 () Bool)

(assert (=> b!6826755 (= e!4118317 e!4118321)))

(declare-fun res!2788316 () Bool)

(assert (=> b!6826755 (=> (not res!2788316) (not e!4118321))))

(assert (=> b!6826755 (= res!2788316 (= r!7292 lt!2452593))))

(assert (=> b!6826755 (= lt!2452593 (unfocusZipper!2383 zl!343))))

(declare-fun b!6826756 () Bool)

(declare-fun res!2788308 () Bool)

(declare-fun e!4118319 () Bool)

(assert (=> b!6826756 (=> res!2788308 e!4118319)))

(assert (=> b!6826756 (= res!2788308 (or ((_ is EmptyExpr!16641) r!7292) ((_ is EmptyLang!16641) r!7292) ((_ is ElementMatch!16641) r!7292) ((_ is Union!16641) r!7292) ((_ is Concat!25486) r!7292)))))

(declare-fun b!6826757 () Bool)

(declare-fun tp!1868361 () Bool)

(declare-fun tp!1868358 () Bool)

(assert (=> b!6826757 (= e!4118320 (and tp!1868361 tp!1868358))))

(declare-fun b!6826758 () Bool)

(declare-fun tp!1868359 () Bool)

(assert (=> b!6826758 (= e!4118320 tp!1868359)))

(declare-fun b!6826759 () Bool)

(declare-fun res!2788321 () Bool)

(declare-fun e!4118318 () Bool)

(assert (=> b!6826759 (=> res!2788321 e!4118318)))

(declare-fun lt!2452626 () List!66224)

(declare-fun toList!10425 ((InoxSet Context!12050)) List!66224)

(assert (=> b!6826759 (= res!2788321 (not (= (toList!10425 lt!2452608) lt!2452626)))))

(declare-fun b!6826760 () Bool)

(declare-fun e!4118329 () Bool)

(assert (=> b!6826760 (= e!4118329 e!4118314)))

(declare-fun res!2788305 () Bool)

(assert (=> b!6826760 (=> res!2788305 e!4118314)))

(assert (=> b!6826760 (= res!2788305 (not (= lt!2452615 (derivationStepZipper!2585 lt!2452608 (h!72547 s!2326)))))))

(assert (=> b!6826760 (= (flatMap!2122 lt!2452608 lambda!385745) (derivationStepZipperUp!1795 lt!2452590 (h!72547 s!2326)))))

(declare-fun lt!2452597 () Unit!159973)

(assert (=> b!6826760 (= lt!2452597 (lemmaFlatMapOnSingletonSet!1648 lt!2452608 lt!2452590 lambda!385745))))

(assert (=> b!6826760 (= (flatMap!2122 lt!2452588 lambda!385745) (derivationStepZipperUp!1795 lt!2452606 (h!72547 s!2326)))))

(declare-fun lt!2452595 () Unit!159973)

(assert (=> b!6826760 (= lt!2452595 (lemmaFlatMapOnSingletonSet!1648 lt!2452588 lt!2452606 lambda!385745))))

(declare-fun lt!2452605 () (InoxSet Context!12050))

(assert (=> b!6826760 (= lt!2452605 (derivationStepZipperUp!1795 lt!2452590 (h!72547 s!2326)))))

(declare-fun lt!2452603 () (InoxSet Context!12050))

(assert (=> b!6826760 (= lt!2452603 (derivationStepZipperUp!1795 lt!2452606 (h!72547 s!2326)))))

(assert (=> b!6826760 (= lt!2452608 (store ((as const (Array Context!12050 Bool)) false) lt!2452590 true))))

(assert (=> b!6826760 (= lt!2452588 (store ((as const (Array Context!12050 Bool)) false) lt!2452606 true))))

(declare-fun lt!2452596 () List!66222)

(assert (=> b!6826760 (= lt!2452606 (Context!12051 lt!2452596))))

(assert (=> b!6826760 (= lt!2452596 (Cons!66098 (reg!16970 r!7292) Nil!66098))))

(declare-fun b!6826761 () Bool)

(declare-fun tp!1868367 () Bool)

(declare-fun tp!1868363 () Bool)

(assert (=> b!6826761 (= e!4118320 (and tp!1868367 tp!1868363))))

(declare-fun b!6826762 () Bool)

(declare-fun res!2788307 () Bool)

(assert (=> b!6826762 (=> res!2788307 e!4118319)))

(declare-fun isEmpty!38489 (List!66224) Bool)

(assert (=> b!6826762 (= res!2788307 (not (isEmpty!38489 (t!379965 zl!343))))))

(declare-fun b!6826763 () Bool)

(assert (=> b!6826763 (= e!4118321 (not e!4118319))))

(declare-fun res!2788318 () Bool)

(assert (=> b!6826763 (=> res!2788318 e!4118319)))

(assert (=> b!6826763 (= res!2788318 (not ((_ is Cons!66100) zl!343)))))

(declare-fun lt!2452625 () Bool)

(declare-fun matchRSpec!3742 (Regex!16641 List!66223) Bool)

(assert (=> b!6826763 (= lt!2452625 (matchRSpec!3742 r!7292 s!2326))))

(declare-fun matchR!8824 (Regex!16641 List!66223) Bool)

(assert (=> b!6826763 (= lt!2452625 (matchR!8824 r!7292 s!2326))))

(declare-fun lt!2452602 () Unit!159973)

(declare-fun mainMatchTheorem!3742 (Regex!16641 List!66223) Unit!159973)

(assert (=> b!6826763 (= lt!2452602 (mainMatchTheorem!3742 r!7292 s!2326))))

(declare-fun b!6826764 () Bool)

(declare-fun tp!1868366 () Bool)

(assert (=> b!6826764 (= e!4118316 tp!1868366)))

(declare-fun e!4118312 () Bool)

(assert (=> b!6826765 (= e!4118312 e!4118310)))

(declare-fun res!2788297 () Bool)

(assert (=> b!6826765 (=> res!2788297 e!4118310)))

(declare-fun appendTo!246 ((InoxSet Context!12050) Context!12050) (InoxSet Context!12050))

(assert (=> b!6826765 (= res!2788297 (not (= (appendTo!246 lt!2452588 lt!2452590) lt!2452613)))))

(declare-fun lambda!385746 () Int)

(declare-fun map!15122 ((InoxSet Context!12050) Int) (InoxSet Context!12050))

(declare-fun ++!14829 (List!66222 List!66222) List!66222)

(assert (=> b!6826765 (= (map!15122 lt!2452588 lambda!385746) (store ((as const (Array Context!12050 Bool)) false) (Context!12051 (++!14829 lt!2452596 lt!2452600)) true))))

(declare-fun lambda!385747 () Int)

(declare-fun lt!2452623 () Unit!159973)

(declare-fun lemmaConcatPreservesForall!470 (List!66222 List!66222 Int) Unit!159973)

(assert (=> b!6826765 (= lt!2452623 (lemmaConcatPreservesForall!470 lt!2452596 lt!2452600 lambda!385747))))

(declare-fun lt!2452591 () Unit!159973)

(declare-fun lemmaMapOnSingletonSet!276 ((InoxSet Context!12050) Context!12050 Int) Unit!159973)

(assert (=> b!6826765 (= lt!2452591 (lemmaMapOnSingletonSet!276 lt!2452588 lt!2452606 lambda!385746))))

(declare-fun b!6826766 () Bool)

(declare-fun res!2788299 () Bool)

(assert (=> b!6826766 (=> res!2788299 e!4118312)))

(assert (=> b!6826766 (= res!2788299 (not (matchZipper!2627 z!1189 s!2326)))))

(declare-fun b!6826767 () Bool)

(assert (=> b!6826767 (= e!4118324 e!4118315)))

(declare-fun res!2788315 () Bool)

(assert (=> b!6826767 (=> res!2788315 e!4118315)))

(declare-fun lt!2452604 () (InoxSet Context!12050))

(assert (=> b!6826767 (= res!2788315 (not (= lt!2452604 lt!2452618)))))

(assert (=> b!6826767 (= lt!2452618 (derivationStepZipperDown!1869 r!7292 (Context!12051 Nil!66098) (h!72547 s!2326)))))

(assert (=> b!6826767 (= lt!2452604 (derivationStepZipperUp!1795 (Context!12051 (Cons!66098 r!7292 Nil!66098)) (h!72547 s!2326)))))

(assert (=> b!6826767 (= lt!2452615 (derivationStepZipper!2585 z!1189 (h!72547 s!2326)))))

(declare-fun b!6826768 () Bool)

(declare-fun res!2788319 () Bool)

(assert (=> b!6826768 (=> res!2788319 e!4118319)))

(declare-fun generalisedUnion!2485 (List!66222) Regex!16641)

(declare-fun unfocusZipperList!2062 (List!66224) List!66222)

(assert (=> b!6826768 (= res!2788319 (not (= r!7292 (generalisedUnion!2485 (unfocusZipperList!2062 zl!343)))))))

(declare-fun b!6826769 () Bool)

(declare-fun res!2788314 () Bool)

(assert (=> b!6826769 (=> res!2788314 e!4118319)))

(assert (=> b!6826769 (= res!2788314 (not ((_ is Cons!66098) (exprs!6525 (h!72548 zl!343)))))))

(declare-fun setNonEmpty!46869 () Bool)

(declare-fun e!4118330 () Bool)

(declare-fun tp!1868364 () Bool)

(declare-fun setElem!46869 () Context!12050)

(assert (=> setNonEmpty!46869 (= setRes!46869 (and tp!1868364 (inv!84849 setElem!46869) e!4118330))))

(declare-fun setRest!46869 () (InoxSet Context!12050))

(assert (=> setNonEmpty!46869 (= z!1189 ((_ map or) (store ((as const (Array Context!12050 Bool)) false) setElem!46869 true) setRest!46869))))

(declare-fun b!6826770 () Bool)

(declare-fun e!4118313 () Bool)

(assert (=> b!6826770 (= e!4118313 e!4118312)))

(declare-fun res!2788313 () Bool)

(assert (=> b!6826770 (=> res!2788313 e!4118312)))

(declare-fun lt!2452616 () Bool)

(assert (=> b!6826770 (= res!2788313 lt!2452616)))

(declare-fun lt!2452617 () Regex!16641)

(assert (=> b!6826770 (= lt!2452616 (matchRSpec!3742 lt!2452617 s!2326))))

(assert (=> b!6826770 (= lt!2452616 (matchR!8824 lt!2452617 s!2326))))

(declare-fun lt!2452594 () Unit!159973)

(assert (=> b!6826770 (= lt!2452594 (mainMatchTheorem!3742 lt!2452617 s!2326))))

(declare-fun b!6826771 () Bool)

(declare-fun lt!2452622 () Regex!16641)

(assert (=> b!6826771 (= e!4118318 (= r!7292 lt!2452622))))

(assert (=> b!6826772 (= e!4118319 e!4118324)))

(declare-fun res!2788320 () Bool)

(assert (=> b!6826772 (=> res!2788320 e!4118324)))

(assert (=> b!6826772 (= res!2788320 (not (= lt!2452625 e!4118311)))))

(declare-fun res!2788310 () Bool)

(assert (=> b!6826772 (=> res!2788310 e!4118311)))

(declare-fun isEmpty!38490 (List!66223) Bool)

(assert (=> b!6826772 (= res!2788310 (isEmpty!38490 s!2326))))

(declare-fun Exists!3709 (Int) Bool)

(assert (=> b!6826772 (= (Exists!3709 lambda!385742) (Exists!3709 lambda!385744))))

(declare-fun lt!2452610 () Unit!159973)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2236 (Regex!16641 Regex!16641 List!66223) Unit!159973)

(assert (=> b!6826772 (= lt!2452610 (lemmaExistCutMatchRandMatchRSpecEquivalent!2236 (reg!16970 r!7292) r!7292 s!2326))))

(assert (=> b!6826772 (= (Exists!3709 lambda!385742) (Exists!3709 lambda!385743))))

(declare-fun lt!2452599 () Unit!159973)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!800 (Regex!16641 List!66223) Unit!159973)

(assert (=> b!6826772 (= lt!2452599 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!800 (reg!16970 r!7292) s!2326))))

(assert (=> b!6826772 (= lt!2452589 (Exists!3709 lambda!385742))))

(declare-fun findConcatSeparation!2942 (Regex!16641 Regex!16641 List!66223 List!66223 List!66223) Option!16528)

(assert (=> b!6826772 (= lt!2452589 (isDefined!13231 (findConcatSeparation!2942 (reg!16970 r!7292) r!7292 Nil!66099 s!2326 s!2326)))))

(declare-fun lt!2452624 () Unit!159973)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2706 (Regex!16641 Regex!16641 List!66223) Unit!159973)

(assert (=> b!6826772 (= lt!2452624 (lemmaFindConcatSeparationEquivalentToExists!2706 (reg!16970 r!7292) r!7292 s!2326))))

(declare-fun b!6826773 () Bool)

(declare-fun res!2788309 () Bool)

(assert (=> b!6826773 (=> res!2788309 e!4118325)))

(assert (=> b!6826773 (= res!2788309 (not (matchZipper!2627 lt!2452588 (_1!36919 lt!2452598))))))

(declare-fun b!6826774 () Bool)

(assert (=> b!6826774 (= e!4118327 e!4118329)))

(declare-fun res!2788302 () Bool)

(assert (=> b!6826774 (=> res!2788302 e!4118329)))

(assert (=> b!6826774 (= res!2788302 (not (= (unfocusZipper!2383 (Cons!66100 lt!2452611 Nil!66100)) lt!2452617)))))

(assert (=> b!6826774 (= lt!2452617 (Concat!25486 (reg!16970 r!7292) r!7292))))

(declare-fun b!6826775 () Bool)

(assert (=> b!6826775 (= e!4118323 e!4118313)))

(declare-fun res!2788303 () Bool)

(assert (=> b!6826775 (=> res!2788303 e!4118313)))

(assert (=> b!6826775 (= res!2788303 (not (= lt!2452622 r!7292)))))

(assert (=> b!6826775 (= lt!2452622 (unfocusZipper!2383 lt!2452626))))

(assert (=> b!6826775 (= lt!2452626 (Cons!66100 lt!2452590 Nil!66100))))

(declare-fun b!6826776 () Bool)

(declare-fun tp_is_empty!42535 () Bool)

(assert (=> b!6826776 (= e!4118320 tp_is_empty!42535)))

(declare-fun b!6826777 () Bool)

(declare-fun res!2788300 () Bool)

(assert (=> b!6826777 (=> res!2788300 e!4118319)))

(declare-fun generalisedConcat!2238 (List!66222) Regex!16641)

(assert (=> b!6826777 (= res!2788300 (not (= r!7292 (generalisedConcat!2238 (exprs!6525 (h!72548 zl!343))))))))

(declare-fun b!6826778 () Bool)

(declare-fun tp!1868362 () Bool)

(assert (=> b!6826778 (= e!4118330 tp!1868362)))

(declare-fun b!6826779 () Bool)

(declare-fun res!2788296 () Bool)

(assert (=> b!6826779 (=> (not res!2788296) (not e!4118317))))

(assert (=> b!6826779 (= res!2788296 (= (toList!10425 z!1189) zl!343))))

(declare-fun b!6826780 () Bool)

(assert (=> b!6826780 (= e!4118325 e!4118318)))

(declare-fun res!2788301 () Bool)

(assert (=> b!6826780 (=> res!2788301 e!4118318)))

(assert (=> b!6826780 (= res!2788301 (not (validRegex!8377 r!7292)))))

(assert (=> b!6826780 (matchR!8824 (reg!16970 r!7292) (_1!36919 lt!2452598))))

(declare-fun lt!2452587 () Unit!159973)

(declare-fun theoremZipperRegexEquiv!943 ((InoxSet Context!12050) List!66224 Regex!16641 List!66223) Unit!159973)

(assert (=> b!6826780 (= lt!2452587 (theoremZipperRegexEquiv!943 lt!2452588 lt!2452601 (reg!16970 r!7292) (_1!36919 lt!2452598)))))

(assert (=> b!6826780 (matchZipper!2627 (store ((as const (Array Context!12050 Bool)) false) (Context!12051 (++!14829 lt!2452596 lt!2452600)) true) lt!2452612)))

(declare-fun lt!2452620 () Unit!159973)

(assert (=> b!6826780 (= lt!2452620 (lemmaConcatPreservesForall!470 lt!2452596 lt!2452600 lambda!385747))))

(declare-fun lt!2452621 () Unit!159973)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!264 (Context!12050 Context!12050 List!66223 List!66223) Unit!159973)

(assert (=> b!6826780 (= lt!2452621 (lemmaConcatenateContextMatchesConcatOfStrings!264 lt!2452606 lt!2452590 (_1!36919 lt!2452598) (_2!36919 lt!2452598)))))

(declare-fun b!6826781 () Bool)

(declare-fun tp!1868365 () Bool)

(assert (=> b!6826781 (= e!4118322 (and tp_is_empty!42535 tp!1868365))))

(assert (= (and start!660156 res!2788312) b!6826779))

(assert (= (and b!6826779 res!2788296) b!6826755))

(assert (= (and b!6826755 res!2788316) b!6826763))

(assert (= (and b!6826763 (not res!2788318)) b!6826762))

(assert (= (and b!6826762 (not res!2788307)) b!6826777))

(assert (= (and b!6826777 (not res!2788300)) b!6826769))

(assert (= (and b!6826769 (not res!2788314)) b!6826768))

(assert (= (and b!6826768 (not res!2788319)) b!6826756))

(assert (= (and b!6826756 (not res!2788308)) b!6826772))

(assert (= (and b!6826772 (not res!2788310)) b!6826750))

(assert (= (and b!6826772 (not res!2788320)) b!6826752))

(assert (= (and b!6826752 (not res!2788306)) b!6826767))

(assert (= (and b!6826767 (not res!2788315)) b!6826748))

(assert (= (and b!6826748 (not res!2788324)) b!6826746))

(assert (= (and b!6826746 (not res!2788311)) b!6826754))

(assert (= (and b!6826754 (not res!2788323)) b!6826751))

(assert (= (and b!6826751 (not res!2788317)) b!6826774))

(assert (= (and b!6826774 (not res!2788302)) b!6826760))

(assert (= (and b!6826760 (not res!2788305)) b!6826749))

(assert (= (and b!6826749 (not res!2788322)) b!6826775))

(assert (= (and b!6826775 (not res!2788303)) b!6826770))

(assert (= (and b!6826770 (not res!2788313)) b!6826766))

(assert (= (and b!6826766 (not res!2788299)) b!6826765))

(assert (= (and b!6826765 (not res!2788297)) b!6826747))

(assert (= (and b!6826747 (not res!2788298)) b!6826773))

(assert (= (and b!6826773 (not res!2788309)) b!6826745))

(assert (= (and b!6826745 (not res!2788304)) b!6826780))

(assert (= (and b!6826780 (not res!2788301)) b!6826759))

(assert (= (and b!6826759 (not res!2788321)) b!6826771))

(assert (= (and start!660156 ((_ is ElementMatch!16641) r!7292)) b!6826776))

(assert (= (and start!660156 ((_ is Concat!25486) r!7292)) b!6826757))

(assert (= (and start!660156 ((_ is Star!16641) r!7292)) b!6826758))

(assert (= (and start!660156 ((_ is Union!16641) r!7292)) b!6826761))

(assert (= (and start!660156 condSetEmpty!46869) setIsEmpty!46869))

(assert (= (and start!660156 (not condSetEmpty!46869)) setNonEmpty!46869))

(assert (= setNonEmpty!46869 b!6826778))

(assert (= b!6826753 b!6826764))

(assert (= (and start!660156 ((_ is Cons!66100) zl!343)) b!6826753))

(assert (= (and start!660156 ((_ is Cons!66099) s!2326)) b!6826781))

(declare-fun m!7572482 () Bool)

(assert (=> b!6826765 m!7572482))

(declare-fun m!7572484 () Bool)

(assert (=> b!6826765 m!7572484))

(declare-fun m!7572486 () Bool)

(assert (=> b!6826765 m!7572486))

(declare-fun m!7572488 () Bool)

(assert (=> b!6826765 m!7572488))

(declare-fun m!7572490 () Bool)

(assert (=> b!6826765 m!7572490))

(declare-fun m!7572492 () Bool)

(assert (=> b!6826765 m!7572492))

(declare-fun m!7572494 () Bool)

(assert (=> b!6826773 m!7572494))

(declare-fun m!7572496 () Bool)

(assert (=> b!6826759 m!7572496))

(declare-fun m!7572498 () Bool)

(assert (=> b!6826768 m!7572498))

(assert (=> b!6826768 m!7572498))

(declare-fun m!7572500 () Bool)

(assert (=> b!6826768 m!7572500))

(declare-fun m!7572502 () Bool)

(assert (=> b!6826755 m!7572502))

(declare-fun m!7572504 () Bool)

(assert (=> b!6826779 m!7572504))

(declare-fun m!7572506 () Bool)

(assert (=> b!6826777 m!7572506))

(declare-fun m!7572508 () Bool)

(assert (=> b!6826763 m!7572508))

(declare-fun m!7572510 () Bool)

(assert (=> b!6826763 m!7572510))

(declare-fun m!7572512 () Bool)

(assert (=> b!6826763 m!7572512))

(declare-fun m!7572514 () Bool)

(assert (=> b!6826767 m!7572514))

(declare-fun m!7572516 () Bool)

(assert (=> b!6826767 m!7572516))

(declare-fun m!7572518 () Bool)

(assert (=> b!6826767 m!7572518))

(declare-fun m!7572520 () Bool)

(assert (=> b!6826749 m!7572520))

(declare-fun m!7572522 () Bool)

(assert (=> b!6826754 m!7572522))

(declare-fun m!7572524 () Bool)

(assert (=> b!6826754 m!7572524))

(assert (=> b!6826754 m!7572524))

(declare-fun m!7572526 () Bool)

(assert (=> b!6826754 m!7572526))

(declare-fun m!7572528 () Bool)

(assert (=> b!6826772 m!7572528))

(declare-fun m!7572530 () Bool)

(assert (=> b!6826772 m!7572530))

(declare-fun m!7572532 () Bool)

(assert (=> b!6826772 m!7572532))

(declare-fun m!7572534 () Bool)

(assert (=> b!6826772 m!7572534))

(assert (=> b!6826772 m!7572532))

(declare-fun m!7572536 () Bool)

(assert (=> b!6826772 m!7572536))

(declare-fun m!7572538 () Bool)

(assert (=> b!6826772 m!7572538))

(assert (=> b!6826772 m!7572538))

(declare-fun m!7572540 () Bool)

(assert (=> b!6826772 m!7572540))

(declare-fun m!7572542 () Bool)

(assert (=> b!6826772 m!7572542))

(assert (=> b!6826772 m!7572532))

(declare-fun m!7572544 () Bool)

(assert (=> b!6826772 m!7572544))

(assert (=> b!6826780 m!7572482))

(declare-fun m!7572546 () Bool)

(assert (=> b!6826780 m!7572546))

(declare-fun m!7572548 () Bool)

(assert (=> b!6826780 m!7572548))

(assert (=> b!6826780 m!7572484))

(assert (=> b!6826780 m!7572482))

(declare-fun m!7572550 () Bool)

(assert (=> b!6826780 m!7572550))

(declare-fun m!7572552 () Bool)

(assert (=> b!6826780 m!7572552))

(declare-fun m!7572554 () Bool)

(assert (=> b!6826780 m!7572554))

(assert (=> b!6826780 m!7572492))

(assert (=> start!660156 m!7572546))

(declare-fun m!7572556 () Bool)

(assert (=> setNonEmpty!46869 m!7572556))

(declare-fun m!7572558 () Bool)

(assert (=> b!6826753 m!7572558))

(declare-fun m!7572560 () Bool)

(assert (=> b!6826747 m!7572560))

(declare-fun m!7572562 () Bool)

(assert (=> b!6826747 m!7572562))

(declare-fun m!7572564 () Bool)

(assert (=> b!6826747 m!7572564))

(declare-fun m!7572566 () Bool)

(assert (=> b!6826747 m!7572566))

(declare-fun m!7572568 () Bool)

(assert (=> b!6826747 m!7572568))

(declare-fun m!7572570 () Bool)

(assert (=> b!6826774 m!7572570))

(declare-fun m!7572572 () Bool)

(assert (=> b!6826770 m!7572572))

(declare-fun m!7572574 () Bool)

(assert (=> b!6826770 m!7572574))

(declare-fun m!7572576 () Bool)

(assert (=> b!6826770 m!7572576))

(declare-fun m!7572578 () Bool)

(assert (=> b!6826762 m!7572578))

(declare-fun m!7572580 () Bool)

(assert (=> b!6826766 m!7572580))

(declare-fun m!7572582 () Bool)

(assert (=> b!6826775 m!7572582))

(declare-fun m!7572584 () Bool)

(assert (=> b!6826746 m!7572584))

(declare-fun m!7572586 () Bool)

(assert (=> b!6826746 m!7572586))

(declare-fun m!7572588 () Bool)

(assert (=> b!6826746 m!7572588))

(declare-fun m!7572590 () Bool)

(assert (=> b!6826746 m!7572590))

(declare-fun m!7572592 () Bool)

(assert (=> b!6826746 m!7572592))

(declare-fun m!7572594 () Bool)

(assert (=> b!6826760 m!7572594))

(declare-fun m!7572596 () Bool)

(assert (=> b!6826760 m!7572596))

(declare-fun m!7572598 () Bool)

(assert (=> b!6826760 m!7572598))

(declare-fun m!7572600 () Bool)

(assert (=> b!6826760 m!7572600))

(declare-fun m!7572602 () Bool)

(assert (=> b!6826760 m!7572602))

(declare-fun m!7572604 () Bool)

(assert (=> b!6826760 m!7572604))

(declare-fun m!7572606 () Bool)

(assert (=> b!6826760 m!7572606))

(declare-fun m!7572608 () Bool)

(assert (=> b!6826760 m!7572608))

(declare-fun m!7572610 () Bool)

(assert (=> b!6826760 m!7572610))

(declare-fun m!7572612 () Bool)

(assert (=> b!6826748 m!7572612))

(declare-fun m!7572614 () Bool)

(assert (=> b!6826748 m!7572614))

(declare-fun m!7572616 () Bool)

(assert (=> b!6826748 m!7572616))

(declare-fun m!7572618 () Bool)

(assert (=> b!6826745 m!7572618))

(check-sat (not b!6826761) (not b!6826748) (not b!6826781) (not b!6826762) (not b!6826760) (not setNonEmpty!46869) (not b!6826759) (not b!6826745) (not b!6826753) (not b!6826765) (not b!6826749) (not b!6826754) (not b!6826773) (not b!6826770) (not b!6826755) (not b!6826780) (not b!6826775) (not b!6826772) (not b!6826777) (not b!6826779) tp_is_empty!42535 (not b!6826766) (not b!6826768) (not b!6826758) (not start!660156) (not b!6826778) (not b!6826757) (not b!6826763) (not b!6826767) (not b!6826747) (not b!6826774) (not b!6826746) (not b!6826764))
(check-sat)
