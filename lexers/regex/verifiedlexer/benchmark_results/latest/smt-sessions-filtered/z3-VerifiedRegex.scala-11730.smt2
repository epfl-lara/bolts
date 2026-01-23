; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663284 () Bool)

(assert start!663284)

(declare-fun b!6873379 () Bool)

(assert (=> b!6873379 true))

(declare-fun b!6873378 () Bool)

(assert (=> b!6873378 true))

(declare-fun bs!1837521 () Bool)

(assert (= bs!1837521 (and b!6873378 b!6873379)))

(declare-fun lambda!389071 () Int)

(declare-fun lambda!389069 () Int)

(assert (=> bs!1837521 (not (= lambda!389071 lambda!389069))))

(declare-fun b!6873373 () Bool)

(declare-fun res!2803099 () Bool)

(declare-fun e!4142932 () Bool)

(assert (=> b!6873373 (=> res!2803099 e!4142932)))

(declare-datatypes ((C!33684 0))(
  ( (C!33685 (val!26544 Int)) )
))
(declare-datatypes ((Regex!16707 0))(
  ( (ElementMatch!16707 (c!1279121 C!33684)) (Concat!25552 (regOne!33926 Regex!16707) (regTwo!33926 Regex!16707)) (EmptyExpr!16707) (Star!16707 (reg!17036 Regex!16707)) (EmptyLang!16707) (Union!16707 (regOne!33927 Regex!16707) (regTwo!33927 Regex!16707)) )
))
(declare-datatypes ((List!66420 0))(
  ( (Nil!66296) (Cons!66296 (h!72744 Regex!16707) (t!380163 List!66420)) )
))
(declare-datatypes ((Context!12182 0))(
  ( (Context!12183 (exprs!6591 List!66420)) )
))
(declare-datatypes ((List!66421 0))(
  ( (Nil!66297) (Cons!66297 (h!72745 Context!12182) (t!380164 List!66421)) )
))
(declare-fun zl!343 () List!66421)

(declare-datatypes ((List!66422 0))(
  ( (Nil!66298) (Cons!66298 (h!72746 C!33684) (t!380165 List!66422)) )
))
(declare-fun s!2326 () List!66422)

(get-info :version)

(assert (=> b!6873373 (= res!2803099 (or (not ((_ is Cons!66297) zl!343)) ((_ is Nil!66298) s!2326) (not (= zl!343 (Cons!66297 (h!72745 zl!343) (t!380164 zl!343))))))))

(declare-fun b!6873374 () Bool)

(declare-fun res!2803098 () Bool)

(declare-fun e!4142938 () Bool)

(assert (=> b!6873374 (=> res!2803098 e!4142938)))

(declare-fun lt!2458903 () List!66420)

(declare-fun exists!2850 (List!66420 Int) Bool)

(assert (=> b!6873374 (= res!2803098 (exists!2850 lt!2458903 lambda!389069))))

(declare-fun b!6873375 () Bool)

(declare-fun e!4142940 () Bool)

(declare-fun tp!1887703 () Bool)

(declare-fun tp!1887700 () Bool)

(assert (=> b!6873375 (= e!4142940 (and tp!1887703 tp!1887700))))

(declare-fun e!4142935 () Bool)

(declare-fun tp!1887695 () Bool)

(declare-fun b!6873376 () Bool)

(declare-fun e!4142937 () Bool)

(declare-fun inv!85014 (Context!12182) Bool)

(assert (=> b!6873376 (= e!4142935 (and (inv!85014 (h!72745 zl!343)) e!4142937 tp!1887695))))

(declare-fun b!6873377 () Bool)

(declare-fun tp_is_empty!42667 () Bool)

(assert (=> b!6873377 (= e!4142940 tp_is_empty!42667)))

(declare-datatypes ((Unit!160196 0))(
  ( (Unit!160197) )
))
(declare-fun e!4142933 () Unit!160196)

(declare-fun Unit!160198 () Unit!160196)

(assert (=> b!6873378 (= e!4142933 Unit!160198)))

(declare-fun lt!2458898 () Unit!160196)

(declare-fun lemmaZipperMatchesExistsMatchingContext!106 (List!66421 List!66422) Unit!160196)

(assert (=> b!6873378 (= lt!2458898 (lemmaZipperMatchesExistsMatchingContext!106 zl!343 s!2326))))

(declare-fun lambda!389070 () Int)

(declare-fun exists!2851 (List!66421 Int) Bool)

(assert (=> b!6873378 (exists!2851 zl!343 lambda!389070)))

(declare-fun lt!2458909 () Context!12182)

(declare-fun getWitness!986 (List!66421 Int) Context!12182)

(assert (=> b!6873378 (= lt!2458909 (getWitness!986 zl!343 lambda!389070))))

(declare-fun lt!2458907 () Unit!160196)

(declare-fun lemmaContextForallValidExprs!82 (Context!12182 List!66420) Unit!160196)

(assert (=> b!6873378 (= lt!2458907 (lemmaContextForallValidExprs!82 lt!2458909 (exprs!6591 lt!2458909)))))

(declare-fun forall!15906 (List!66420 Int) Bool)

(assert (=> b!6873378 (forall!15906 (exprs!6591 lt!2458909) lambda!389071)))

(declare-fun lt!2458901 () Unit!160196)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!60 (List!66421 Context!12182) Unit!160196)

(assert (=> b!6873378 (= lt!2458901 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!60 zl!343 lt!2458909))))

(declare-fun contextDepthTotal!428 (Context!12182) Int)

(declare-fun zipperDepthTotal!456 (List!66421) Int)

(assert (=> b!6873378 (< (contextDepthTotal!428 lt!2458909) (zipperDepthTotal!456 zl!343))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2458904 () (InoxSet Context!12182))

(assert (=> b!6873378 (= lt!2458904 (store ((as const (Array Context!12182 Bool)) false) lt!2458909 true))))

(declare-fun lt!2458908 () Regex!16707)

(declare-fun generalisedConcat!2295 (List!66420) Regex!16707)

(assert (=> b!6873378 (= lt!2458908 (generalisedConcat!2295 (exprs!6591 lt!2458909)))))

(declare-fun lt!2458911 () Unit!160196)

(declare-fun theoremZipperRegexEquiv!969 ((InoxSet Context!12182) List!66421 Regex!16707 List!66422) Unit!160196)

(assert (=> b!6873378 (= lt!2458911 (theoremZipperRegexEquiv!969 lt!2458904 (Cons!66297 lt!2458909 Nil!66297) lt!2458908 s!2326))))

(declare-fun matchR!8890 (Regex!16707 List!66422) Bool)

(declare-fun matchZipper!2673 ((InoxSet Context!12182) List!66422) Bool)

(assert (=> b!6873378 (= (matchR!8890 lt!2458908 s!2326) (matchZipper!2673 lt!2458904 s!2326))))

(declare-fun lt!2458910 () Unit!160196)

(declare-fun lemmaZipperContainsContextUnfocusListContainsConcat!16 (List!66421 Context!12182) Unit!160196)

(assert (=> b!6873378 (= lt!2458910 (lemmaZipperContainsContextUnfocusListContainsConcat!16 zl!343 lt!2458909))))

(declare-fun contains!20365 (List!66420 Regex!16707) Bool)

(assert (=> b!6873378 (contains!20365 lt!2458903 lt!2458908)))

(declare-fun lt!2458899 () Unit!160196)

(declare-fun lemmaContainsThenExists!79 (List!66420 Regex!16707 Int) Unit!160196)

(assert (=> b!6873378 (= lt!2458899 (lemmaContainsThenExists!79 lt!2458903 lt!2458908 lambda!389069))))

(assert (=> b!6873378 false))

(declare-fun setNonEmpty!47277 () Bool)

(declare-fun setElem!47277 () Context!12182)

(declare-fun e!4142931 () Bool)

(declare-fun setRes!47277 () Bool)

(declare-fun tp!1887694 () Bool)

(assert (=> setNonEmpty!47277 (= setRes!47277 (and tp!1887694 (inv!85014 setElem!47277) e!4142931))))

(declare-fun z!1189 () (InoxSet Context!12182))

(declare-fun setRest!47277 () (InoxSet Context!12182))

(assert (=> setNonEmpty!47277 (= z!1189 ((_ map or) (store ((as const (Array Context!12182 Bool)) false) setElem!47277 true) setRest!47277))))

(assert (=> b!6873379 (= e!4142932 e!4142938)))

(declare-fun res!2803095 () Bool)

(assert (=> b!6873379 (=> res!2803095 e!4142938)))

(declare-fun lt!2458902 () Bool)

(assert (=> b!6873379 (= res!2803095 lt!2458902)))

(assert (=> b!6873379 (= lt!2458902 (exists!2850 lt!2458903 lambda!389069))))

(declare-fun r!7292 () Regex!16707)

(declare-fun lt!2458900 () Unit!160196)

(declare-fun matchRGenUnionSpec!346 (Regex!16707 List!66420 List!66422) Unit!160196)

(assert (=> b!6873379 (= lt!2458900 (matchRGenUnionSpec!346 r!7292 lt!2458903 s!2326))))

(declare-fun unfocusZipperList!2124 (List!66421) List!66420)

(assert (=> b!6873379 (= lt!2458903 (unfocusZipperList!2124 zl!343))))

(declare-fun res!2803097 () Bool)

(declare-fun e!4142939 () Bool)

(assert (=> start!663284 (=> (not res!2803097) (not e!4142939))))

(declare-fun validRegex!8443 (Regex!16707) Bool)

(assert (=> start!663284 (= res!2803097 (validRegex!8443 r!7292))))

(assert (=> start!663284 e!4142939))

(assert (=> start!663284 e!4142940))

(declare-fun condSetEmpty!47277 () Bool)

(assert (=> start!663284 (= condSetEmpty!47277 (= z!1189 ((as const (Array Context!12182 Bool)) false)))))

(assert (=> start!663284 setRes!47277))

(assert (=> start!663284 e!4142935))

(declare-fun e!4142936 () Bool)

(assert (=> start!663284 e!4142936))

(declare-fun b!6873380 () Bool)

(declare-fun res!2803096 () Bool)

(assert (=> b!6873380 (=> (not res!2803096) (not e!4142939))))

(declare-fun toList!10491 ((InoxSet Context!12182)) List!66421)

(assert (=> b!6873380 (= res!2803096 (= (toList!10491 z!1189) zl!343))))

(declare-fun b!6873381 () Bool)

(declare-fun e!4142934 () Bool)

(declare-fun isEmpty!38645 (List!66421) Bool)

(assert (=> b!6873381 (= e!4142934 (isEmpty!38645 (t!380164 zl!343)))))

(declare-fun b!6873382 () Bool)

(declare-fun res!2803100 () Bool)

(assert (=> b!6873382 (=> res!2803100 e!4142932)))

(assert (=> b!6873382 (= res!2803100 (isEmpty!38645 (t!380164 zl!343)))))

(declare-fun setIsEmpty!47277 () Bool)

(assert (=> setIsEmpty!47277 setRes!47277))

(declare-fun b!6873383 () Bool)

(declare-fun res!2803101 () Bool)

(assert (=> b!6873383 (=> (not res!2803101) (not e!4142939))))

(declare-fun unfocusZipper!2449 (List!66421) Regex!16707)

(assert (=> b!6873383 (= res!2803101 (= r!7292 (unfocusZipper!2449 zl!343)))))

(declare-fun b!6873384 () Bool)

(declare-fun tp!1887699 () Bool)

(assert (=> b!6873384 (= e!4142937 tp!1887699)))

(declare-fun b!6873385 () Bool)

(declare-fun lt!2458905 () Bool)

(assert (=> b!6873385 (= e!4142938 (not lt!2458905))))

(declare-fun lt!2458912 () Unit!160196)

(assert (=> b!6873385 (= lt!2458912 e!4142933)))

(declare-fun c!1279120 () Bool)

(assert (=> b!6873385 (= c!1279120 lt!2458905)))

(assert (=> b!6873385 (= lt!2458905 (matchZipper!2673 z!1189 s!2326))))

(declare-fun b!6873386 () Bool)

(declare-fun tp!1887697 () Bool)

(assert (=> b!6873386 (= e!4142931 tp!1887697)))

(declare-fun b!6873387 () Bool)

(declare-fun tp!1887696 () Bool)

(assert (=> b!6873387 (= e!4142936 (and tp_is_empty!42667 tp!1887696))))

(declare-fun b!6873388 () Bool)

(declare-fun tp!1887702 () Bool)

(assert (=> b!6873388 (= e!4142940 tp!1887702)))

(declare-fun b!6873389 () Bool)

(declare-fun Unit!160199 () Unit!160196)

(assert (=> b!6873389 (= e!4142933 Unit!160199)))

(declare-fun b!6873390 () Bool)

(assert (=> b!6873390 (= e!4142939 (not e!4142932))))

(declare-fun res!2803102 () Bool)

(assert (=> b!6873390 (=> res!2803102 e!4142932)))

(assert (=> b!6873390 (= res!2803102 e!4142934)))

(declare-fun res!2803094 () Bool)

(assert (=> b!6873390 (=> (not res!2803094) (not e!4142934))))

(assert (=> b!6873390 (= res!2803094 ((_ is Cons!66297) zl!343))))

(declare-fun matchRSpec!3808 (Regex!16707 List!66422) Bool)

(assert (=> b!6873390 (= lt!2458902 (matchRSpec!3808 r!7292 s!2326))))

(assert (=> b!6873390 (= lt!2458902 (matchR!8890 r!7292 s!2326))))

(declare-fun lt!2458906 () Unit!160196)

(declare-fun mainMatchTheorem!3808 (Regex!16707 List!66422) Unit!160196)

(assert (=> b!6873390 (= lt!2458906 (mainMatchTheorem!3808 r!7292 s!2326))))

(declare-fun b!6873391 () Bool)

(declare-fun tp!1887701 () Bool)

(declare-fun tp!1887698 () Bool)

(assert (=> b!6873391 (= e!4142940 (and tp!1887701 tp!1887698))))

(assert (= (and start!663284 res!2803097) b!6873380))

(assert (= (and b!6873380 res!2803096) b!6873383))

(assert (= (and b!6873383 res!2803101) b!6873390))

(assert (= (and b!6873390 res!2803094) b!6873381))

(assert (= (and b!6873390 (not res!2803102)) b!6873373))

(assert (= (and b!6873373 (not res!2803099)) b!6873382))

(assert (= (and b!6873382 (not res!2803100)) b!6873379))

(assert (= (and b!6873379 (not res!2803095)) b!6873374))

(assert (= (and b!6873374 (not res!2803098)) b!6873385))

(assert (= (and b!6873385 c!1279120) b!6873378))

(assert (= (and b!6873385 (not c!1279120)) b!6873389))

(assert (= (and start!663284 ((_ is ElementMatch!16707) r!7292)) b!6873377))

(assert (= (and start!663284 ((_ is Concat!25552) r!7292)) b!6873375))

(assert (= (and start!663284 ((_ is Star!16707) r!7292)) b!6873388))

(assert (= (and start!663284 ((_ is Union!16707) r!7292)) b!6873391))

(assert (= (and start!663284 condSetEmpty!47277) setIsEmpty!47277))

(assert (= (and start!663284 (not condSetEmpty!47277)) setNonEmpty!47277))

(assert (= setNonEmpty!47277 b!6873386))

(assert (= b!6873376 b!6873384))

(assert (= (and start!663284 ((_ is Cons!66297) zl!343)) b!6873376))

(assert (= (and start!663284 ((_ is Cons!66298) s!2326)) b!6873387))

(declare-fun m!7603074 () Bool)

(assert (=> b!6873382 m!7603074))

(declare-fun m!7603076 () Bool)

(assert (=> b!6873385 m!7603076))

(declare-fun m!7603078 () Bool)

(assert (=> start!663284 m!7603078))

(declare-fun m!7603080 () Bool)

(assert (=> b!6873390 m!7603080))

(declare-fun m!7603082 () Bool)

(assert (=> b!6873390 m!7603082))

(declare-fun m!7603084 () Bool)

(assert (=> b!6873390 m!7603084))

(declare-fun m!7603086 () Bool)

(assert (=> b!6873376 m!7603086))

(declare-fun m!7603088 () Bool)

(assert (=> b!6873380 m!7603088))

(declare-fun m!7603090 () Bool)

(assert (=> b!6873383 m!7603090))

(assert (=> b!6873381 m!7603074))

(declare-fun m!7603092 () Bool)

(assert (=> b!6873379 m!7603092))

(declare-fun m!7603094 () Bool)

(assert (=> b!6873379 m!7603094))

(declare-fun m!7603096 () Bool)

(assert (=> b!6873379 m!7603096))

(declare-fun m!7603098 () Bool)

(assert (=> setNonEmpty!47277 m!7603098))

(assert (=> b!6873374 m!7603092))

(declare-fun m!7603100 () Bool)

(assert (=> b!6873378 m!7603100))

(declare-fun m!7603102 () Bool)

(assert (=> b!6873378 m!7603102))

(declare-fun m!7603104 () Bool)

(assert (=> b!6873378 m!7603104))

(declare-fun m!7603106 () Bool)

(assert (=> b!6873378 m!7603106))

(declare-fun m!7603108 () Bool)

(assert (=> b!6873378 m!7603108))

(declare-fun m!7603110 () Bool)

(assert (=> b!6873378 m!7603110))

(declare-fun m!7603112 () Bool)

(assert (=> b!6873378 m!7603112))

(declare-fun m!7603114 () Bool)

(assert (=> b!6873378 m!7603114))

(declare-fun m!7603116 () Bool)

(assert (=> b!6873378 m!7603116))

(declare-fun m!7603118 () Bool)

(assert (=> b!6873378 m!7603118))

(declare-fun m!7603120 () Bool)

(assert (=> b!6873378 m!7603120))

(declare-fun m!7603122 () Bool)

(assert (=> b!6873378 m!7603122))

(declare-fun m!7603124 () Bool)

(assert (=> b!6873378 m!7603124))

(declare-fun m!7603126 () Bool)

(assert (=> b!6873378 m!7603126))

(declare-fun m!7603128 () Bool)

(assert (=> b!6873378 m!7603128))

(declare-fun m!7603130 () Bool)

(assert (=> b!6873378 m!7603130))

(check-sat (not b!6873390) (not b!6873385) (not b!6873382) (not b!6873380) (not b!6873381) (not b!6873375) (not b!6873378) (not b!6873386) (not b!6873387) (not b!6873383) (not b!6873376) (not b!6873379) (not b!6873391) (not b!6873388) tp_is_empty!42667 (not b!6873384) (not start!663284) (not b!6873374) (not setNonEmpty!47277))
(check-sat)
