; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!623476 () Bool)

(assert start!623476)

(declare-fun b!6271555 () Bool)

(assert (=> b!6271555 true))

(assert (=> b!6271555 true))

(declare-fun lambda!343553 () Int)

(declare-fun lambda!343552 () Int)

(assert (=> b!6271555 (not (= lambda!343553 lambda!343552))))

(assert (=> b!6271555 true))

(assert (=> b!6271555 true))

(declare-fun b!6271575 () Bool)

(assert (=> b!6271575 true))

(declare-fun b!6271540 () Bool)

(declare-fun e!3814412 () Bool)

(declare-fun e!3814398 () Bool)

(assert (=> b!6271540 (= e!3814412 (not e!3814398))))

(declare-fun res!2586905 () Bool)

(assert (=> b!6271540 (=> res!2586905 e!3814398)))

(declare-datatypes ((C!32650 0))(
  ( (C!32651 (val!26027 Int)) )
))
(declare-datatypes ((Regex!16190 0))(
  ( (ElementMatch!16190 (c!1136523 C!32650)) (Concat!25035 (regOne!32892 Regex!16190) (regTwo!32892 Regex!16190)) (EmptyExpr!16190) (Star!16190 (reg!16519 Regex!16190)) (EmptyLang!16190) (Union!16190 (regOne!32893 Regex!16190) (regTwo!32893 Regex!16190)) )
))
(declare-datatypes ((List!64869 0))(
  ( (Nil!64745) (Cons!64745 (h!71193 Regex!16190) (t!378427 List!64869)) )
))
(declare-datatypes ((Context!11148 0))(
  ( (Context!11149 (exprs!6074 List!64869)) )
))
(declare-datatypes ((List!64870 0))(
  ( (Nil!64746) (Cons!64746 (h!71194 Context!11148) (t!378428 List!64870)) )
))
(declare-fun zl!343 () List!64870)

(assert (=> b!6271540 (= res!2586905 (not (is-Cons!64746 zl!343)))))

(declare-fun lt!2352029 () Bool)

(declare-fun r!7292 () Regex!16190)

(declare-datatypes ((List!64871 0))(
  ( (Nil!64747) (Cons!64747 (h!71195 C!32650) (t!378429 List!64871)) )
))
(declare-fun s!2326 () List!64871)

(declare-fun matchRSpec!3291 (Regex!16190 List!64871) Bool)

(assert (=> b!6271540 (= lt!2352029 (matchRSpec!3291 r!7292 s!2326))))

(declare-fun matchR!8373 (Regex!16190 List!64871) Bool)

(assert (=> b!6271540 (= lt!2352029 (matchR!8373 r!7292 s!2326))))

(declare-datatypes ((Unit!158091 0))(
  ( (Unit!158092) )
))
(declare-fun lt!2352015 () Unit!158091)

(declare-fun mainMatchTheorem!3291 (Regex!16190 List!64871) Unit!158091)

(assert (=> b!6271540 (= lt!2352015 (mainMatchTheorem!3291 r!7292 s!2326))))

(declare-fun b!6271542 () Bool)

(declare-fun e!3814407 () Bool)

(declare-fun tp!1749060 () Bool)

(assert (=> b!6271542 (= e!3814407 tp!1749060)))

(declare-fun b!6271543 () Bool)

(declare-fun res!2586906 () Bool)

(assert (=> b!6271543 (=> res!2586906 e!3814398)))

(declare-fun isEmpty!36780 (List!64870) Bool)

(assert (=> b!6271543 (= res!2586906 (not (isEmpty!36780 (t!378428 zl!343))))))

(declare-fun b!6271544 () Bool)

(declare-fun e!3814409 () Bool)

(declare-fun tp_is_empty!41633 () Bool)

(declare-fun tp!1749055 () Bool)

(assert (=> b!6271544 (= e!3814409 (and tp_is_empty!41633 tp!1749055))))

(declare-fun b!6271545 () Bool)

(declare-fun e!3814414 () Bool)

(declare-fun e!3814406 () Bool)

(assert (=> b!6271545 (= e!3814414 e!3814406)))

(declare-fun res!2586918 () Bool)

(assert (=> b!6271545 (=> res!2586918 e!3814406)))

(declare-fun e!3814408 () Bool)

(assert (=> b!6271545 (= res!2586918 e!3814408)))

(declare-fun res!2586928 () Bool)

(assert (=> b!6271545 (=> (not res!2586928) (not e!3814408))))

(declare-fun lt!2352014 () (Set Context!11148))

(declare-fun lt!2352012 () Bool)

(declare-fun matchZipper!2202 ((Set Context!11148) List!64871) Bool)

(assert (=> b!6271545 (= res!2586928 (not (= lt!2352012 (matchZipper!2202 lt!2352014 (t!378429 s!2326)))))))

(declare-fun lt!2352018 () (Set Context!11148))

(declare-fun e!3814402 () Bool)

(assert (=> b!6271545 (= (matchZipper!2202 lt!2352018 (t!378429 s!2326)) e!3814402)))

(declare-fun res!2586915 () Bool)

(assert (=> b!6271545 (=> res!2586915 e!3814402)))

(declare-fun lt!2352021 () Bool)

(assert (=> b!6271545 (= res!2586915 lt!2352021)))

(declare-fun lt!2352044 () (Set Context!11148))

(declare-fun lt!2352011 () Unit!158091)

(declare-fun lt!2352010 () (Set Context!11148))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1021 ((Set Context!11148) (Set Context!11148) List!64871) Unit!158091)

(assert (=> b!6271545 (= lt!2352011 (lemmaZipperConcatMatchesSameAsBothZippers!1021 lt!2352044 lt!2352010 (t!378429 s!2326)))))

(declare-fun lt!2352043 () (Set Context!11148))

(declare-fun lambda!343554 () Int)

(declare-fun lt!2352017 () Context!11148)

(declare-fun flatMap!1695 ((Set Context!11148) Int) (Set Context!11148))

(declare-fun derivationStepZipperUp!1364 (Context!11148 C!32650) (Set Context!11148))

(assert (=> b!6271545 (= (flatMap!1695 lt!2352043 lambda!343554) (derivationStepZipperUp!1364 lt!2352017 (h!71195 s!2326)))))

(declare-fun lt!2352028 () Unit!158091)

(declare-fun lemmaFlatMapOnSingletonSet!1221 ((Set Context!11148) Context!11148 Int) Unit!158091)

(assert (=> b!6271545 (= lt!2352028 (lemmaFlatMapOnSingletonSet!1221 lt!2352043 lt!2352017 lambda!343554))))

(declare-fun b!6271546 () Bool)

(declare-fun e!3814400 () Bool)

(declare-fun tp!1749059 () Bool)

(assert (=> b!6271546 (= e!3814400 tp!1749059)))

(declare-fun b!6271547 () Bool)

(declare-fun e!3814401 () Bool)

(declare-fun e!3814413 () Bool)

(declare-fun tp!1749052 () Bool)

(declare-fun inv!83723 (Context!11148) Bool)

(assert (=> b!6271547 (= e!3814401 (and (inv!83723 (h!71194 zl!343)) e!3814413 tp!1749052))))

(declare-fun b!6271548 () Bool)

(declare-fun res!2586927 () Bool)

(declare-fun e!3814405 () Bool)

(assert (=> b!6271548 (=> res!2586927 e!3814405)))

(declare-fun lt!2352025 () List!64870)

(declare-fun zipperDepth!315 (List!64870) Int)

(assert (=> b!6271548 (= res!2586927 (> (zipperDepth!315 lt!2352025) (zipperDepth!315 zl!343)))))

(declare-fun b!6271549 () Bool)

(declare-fun e!3814411 () Bool)

(declare-fun e!3814410 () Bool)

(assert (=> b!6271549 (= e!3814411 e!3814410)))

(declare-fun res!2586923 () Bool)

(assert (=> b!6271549 (=> res!2586923 e!3814410)))

(declare-fun lt!2352027 () (Set Context!11148))

(declare-fun lt!2352026 () (Set Context!11148))

(assert (=> b!6271549 (= res!2586923 (not (= lt!2352027 lt!2352026)))))

(declare-fun lt!2352019 () (Set Context!11148))

(assert (=> b!6271549 (= lt!2352026 (set.union lt!2352044 lt!2352019))))

(declare-fun lt!2352034 () Context!11148)

(declare-fun derivationStepZipperDown!1438 (Regex!16190 Context!11148 C!32650) (Set Context!11148))

(assert (=> b!6271549 (= lt!2352019 (derivationStepZipperDown!1438 (regTwo!32892 (regOne!32892 r!7292)) lt!2352034 (h!71195 s!2326)))))

(assert (=> b!6271549 (= lt!2352044 (derivationStepZipperDown!1438 (regOne!32892 (regOne!32892 r!7292)) lt!2352017 (h!71195 s!2326)))))

(declare-fun lt!2352033 () List!64869)

(assert (=> b!6271549 (= lt!2352017 (Context!11149 lt!2352033))))

(assert (=> b!6271549 (= lt!2352033 (Cons!64745 (regTwo!32892 (regOne!32892 r!7292)) (t!378427 (exprs!6074 (h!71194 zl!343)))))))

(declare-fun b!6271550 () Bool)

(assert (=> b!6271550 (= e!3814406 e!3814405)))

(declare-fun res!2586917 () Bool)

(assert (=> b!6271550 (=> res!2586917 e!3814405)))

(declare-fun zipperDepthTotal!343 (List!64870) Int)

(assert (=> b!6271550 (= res!2586917 (>= (zipperDepthTotal!343 lt!2352025) (zipperDepthTotal!343 zl!343)))))

(declare-fun lt!2352039 () Context!11148)

(assert (=> b!6271550 (= lt!2352025 (Cons!64746 lt!2352039 Nil!64746))))

(declare-fun b!6271551 () Bool)

(declare-fun res!2586922 () Bool)

(assert (=> b!6271551 (=> res!2586922 e!3814411)))

(declare-fun nullable!6183 (Regex!16190) Bool)

(assert (=> b!6271551 (= res!2586922 (not (nullable!6183 (regOne!32892 (regOne!32892 r!7292)))))))

(declare-fun b!6271552 () Bool)

(declare-fun e!3814397 () Bool)

(assert (=> b!6271552 (= e!3814397 e!3814414)))

(declare-fun res!2586911 () Bool)

(assert (=> b!6271552 (=> res!2586911 e!3814414)))

(assert (=> b!6271552 (= res!2586911 (not (= lt!2352014 lt!2352018)))))

(assert (=> b!6271552 (= lt!2352018 (set.union lt!2352044 lt!2352010))))

(assert (=> b!6271552 (= lt!2352010 (derivationStepZipperUp!1364 lt!2352017 (h!71195 s!2326)))))

(declare-fun lt!2352036 () (Set Context!11148))

(assert (=> b!6271552 (= (flatMap!1695 lt!2352036 lambda!343554) (derivationStepZipperUp!1364 lt!2352039 (h!71195 s!2326)))))

(declare-fun lt!2352037 () Unit!158091)

(assert (=> b!6271552 (= lt!2352037 (lemmaFlatMapOnSingletonSet!1221 lt!2352036 lt!2352039 lambda!343554))))

(declare-fun lt!2352022 () (Set Context!11148))

(assert (=> b!6271552 (= lt!2352022 (derivationStepZipperUp!1364 lt!2352039 (h!71195 s!2326)))))

(declare-fun derivationStepZipper!2156 ((Set Context!11148) C!32650) (Set Context!11148))

(assert (=> b!6271552 (= lt!2352014 (derivationStepZipper!2156 lt!2352036 (h!71195 s!2326)))))

(assert (=> b!6271552 (= lt!2352043 (set.insert lt!2352017 (as set.empty (Set Context!11148))))))

(assert (=> b!6271552 (= lt!2352036 (set.insert lt!2352039 (as set.empty (Set Context!11148))))))

(declare-fun lt!2352042 () List!64869)

(assert (=> b!6271552 (= lt!2352039 (Context!11149 lt!2352042))))

(assert (=> b!6271552 (= lt!2352042 (Cons!64745 (regOne!32892 (regOne!32892 r!7292)) lt!2352033))))

(declare-fun b!6271553 () Bool)

(declare-fun tp!1749053 () Bool)

(declare-fun tp!1749054 () Bool)

(assert (=> b!6271553 (= e!3814400 (and tp!1749053 tp!1749054))))

(declare-fun b!6271554 () Bool)

(assert (=> b!6271554 (= e!3814410 e!3814397)))

(declare-fun res!2586909 () Bool)

(assert (=> b!6271554 (=> res!2586909 e!3814397)))

(declare-fun e!3814403 () Bool)

(assert (=> b!6271554 (= res!2586909 e!3814403)))

(declare-fun res!2586920 () Bool)

(assert (=> b!6271554 (=> (not res!2586920) (not e!3814403))))

(assert (=> b!6271554 (= res!2586920 (not (= lt!2352012 lt!2352021)))))

(assert (=> b!6271554 (= lt!2352012 (matchZipper!2202 lt!2352027 (t!378429 s!2326)))))

(declare-fun e!3814399 () Bool)

(assert (=> b!6271554 (= (matchZipper!2202 lt!2352026 (t!378429 s!2326)) e!3814399)))

(declare-fun res!2586925 () Bool)

(assert (=> b!6271554 (=> res!2586925 e!3814399)))

(assert (=> b!6271554 (= res!2586925 lt!2352021)))

(assert (=> b!6271554 (= lt!2352021 (matchZipper!2202 lt!2352044 (t!378429 s!2326)))))

(declare-fun lt!2352024 () Unit!158091)

(assert (=> b!6271554 (= lt!2352024 (lemmaZipperConcatMatchesSameAsBothZippers!1021 lt!2352044 lt!2352019 (t!378429 s!2326)))))

(declare-fun e!3814404 () Bool)

(assert (=> b!6271555 (= e!3814398 e!3814404)))

(declare-fun res!2586913 () Bool)

(assert (=> b!6271555 (=> res!2586913 e!3814404)))

(declare-fun lt!2352009 () Bool)

(assert (=> b!6271555 (= res!2586913 (or (not (= lt!2352029 lt!2352009)) (is-Nil!64747 s!2326)))))

(declare-fun Exists!3260 (Int) Bool)

(assert (=> b!6271555 (= (Exists!3260 lambda!343552) (Exists!3260 lambda!343553))))

(declare-fun lt!2352040 () Unit!158091)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1797 (Regex!16190 Regex!16190 List!64871) Unit!158091)

(assert (=> b!6271555 (= lt!2352040 (lemmaExistCutMatchRandMatchRSpecEquivalent!1797 (regOne!32892 r!7292) (regTwo!32892 r!7292) s!2326))))

(assert (=> b!6271555 (= lt!2352009 (Exists!3260 lambda!343552))))

(declare-datatypes ((tuple2!66338 0))(
  ( (tuple2!66339 (_1!36472 List!64871) (_2!36472 List!64871)) )
))
(declare-datatypes ((Option!16081 0))(
  ( (None!16080) (Some!16080 (v!52235 tuple2!66338)) )
))
(declare-fun isDefined!12784 (Option!16081) Bool)

(declare-fun findConcatSeparation!2495 (Regex!16190 Regex!16190 List!64871 List!64871 List!64871) Option!16081)

(assert (=> b!6271555 (= lt!2352009 (isDefined!12784 (findConcatSeparation!2495 (regOne!32892 r!7292) (regTwo!32892 r!7292) Nil!64747 s!2326 s!2326)))))

(declare-fun lt!2352041 () Unit!158091)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2259 (Regex!16190 Regex!16190 List!64871) Unit!158091)

(assert (=> b!6271555 (= lt!2352041 (lemmaFindConcatSeparationEquivalentToExists!2259 (regOne!32892 r!7292) (regTwo!32892 r!7292) s!2326))))

(declare-fun b!6271556 () Bool)

(declare-fun tp!1749051 () Bool)

(declare-fun tp!1749057 () Bool)

(assert (=> b!6271556 (= e!3814400 (and tp!1749051 tp!1749057))))

(declare-fun b!6271557 () Bool)

(assert (=> b!6271557 (= e!3814408 (not (matchZipper!2202 (derivationStepZipper!2156 lt!2352043 (h!71195 s!2326)) (t!378429 s!2326))))))

(declare-fun b!6271541 () Bool)

(assert (=> b!6271541 (= e!3814400 tp_is_empty!41633)))

(declare-fun res!2586930 () Bool)

(assert (=> start!623476 (=> (not res!2586930) (not e!3814412))))

(declare-fun validRegex!7926 (Regex!16190) Bool)

(assert (=> start!623476 (= res!2586930 (validRegex!7926 r!7292))))

(assert (=> start!623476 e!3814412))

(assert (=> start!623476 e!3814400))

(declare-fun condSetEmpty!42653 () Bool)

(declare-fun z!1189 () (Set Context!11148))

(assert (=> start!623476 (= condSetEmpty!42653 (= z!1189 (as set.empty (Set Context!11148))))))

(declare-fun setRes!42653 () Bool)

(assert (=> start!623476 setRes!42653))

(assert (=> start!623476 e!3814401))

(assert (=> start!623476 e!3814409))

(declare-fun b!6271558 () Bool)

(declare-fun tp!1749056 () Bool)

(assert (=> b!6271558 (= e!3814413 tp!1749056)))

(declare-fun b!6271559 () Bool)

(declare-fun res!2586921 () Bool)

(assert (=> b!6271559 (=> res!2586921 e!3814404)))

(declare-fun isEmpty!36781 (List!64869) Bool)

(assert (=> b!6271559 (= res!2586921 (isEmpty!36781 (t!378427 (exprs!6074 (h!71194 zl!343)))))))

(declare-fun b!6271560 () Bool)

(declare-fun res!2586910 () Bool)

(assert (=> b!6271560 (=> (not res!2586910) (not e!3814412))))

(declare-fun toList!9974 ((Set Context!11148)) List!64870)

(assert (=> b!6271560 (= res!2586910 (= (toList!9974 z!1189) zl!343))))

(declare-fun b!6271561 () Bool)

(declare-fun res!2586912 () Bool)

(assert (=> b!6271561 (=> (not res!2586912) (not e!3814412))))

(declare-fun unfocusZipper!1932 (List!64870) Regex!16190)

(assert (=> b!6271561 (= res!2586912 (= r!7292 (unfocusZipper!1932 zl!343)))))

(declare-fun b!6271562 () Bool)

(declare-fun res!2586908 () Bool)

(assert (=> b!6271562 (=> res!2586908 e!3814406)))

(assert (=> b!6271562 (= res!2586908 (not (= (exprs!6074 (h!71194 zl!343)) (Cons!64745 (Concat!25035 (regOne!32892 (regOne!32892 r!7292)) (regTwo!32892 (regOne!32892 r!7292))) (t!378427 (exprs!6074 (h!71194 zl!343)))))))))

(declare-fun b!6271563 () Bool)

(assert (=> b!6271563 (= e!3814403 (not (matchZipper!2202 lt!2352019 (t!378429 s!2326))))))

(declare-fun b!6271564 () Bool)

(declare-fun lt!2352013 () Regex!16190)

(assert (=> b!6271564 (= e!3814405 (validRegex!7926 lt!2352013))))

(declare-fun lt!2352032 () Regex!16190)

(assert (=> b!6271564 (= (matchR!8373 lt!2352032 s!2326) (matchZipper!2202 lt!2352043 s!2326))))

(declare-fun lt!2352020 () Unit!158091)

(declare-fun theoremZipperRegexEquiv!760 ((Set Context!11148) List!64870 Regex!16190 List!64871) Unit!158091)

(assert (=> b!6271564 (= lt!2352020 (theoremZipperRegexEquiv!760 lt!2352043 (Cons!64746 lt!2352017 Nil!64746) lt!2352032 s!2326))))

(declare-fun generalisedConcat!1787 (List!64869) Regex!16190)

(assert (=> b!6271564 (= lt!2352032 (generalisedConcat!1787 lt!2352033))))

(assert (=> b!6271564 (= (matchR!8373 lt!2352013 s!2326) (matchZipper!2202 lt!2352036 s!2326))))

(declare-fun lt!2352030 () Unit!158091)

(assert (=> b!6271564 (= lt!2352030 (theoremZipperRegexEquiv!760 lt!2352036 lt!2352025 lt!2352013 s!2326))))

(assert (=> b!6271564 (= lt!2352013 (generalisedConcat!1787 lt!2352042))))

(declare-fun b!6271565 () Bool)

(assert (=> b!6271565 (= e!3814399 (matchZipper!2202 lt!2352019 (t!378429 s!2326)))))

(declare-fun b!6271566 () Bool)

(assert (=> b!6271566 (= e!3814402 (matchZipper!2202 lt!2352010 (t!378429 s!2326)))))

(declare-fun b!6271567 () Bool)

(declare-fun e!3814415 () Bool)

(declare-fun lt!2352038 () (Set Context!11148))

(assert (=> b!6271567 (= e!3814415 (matchZipper!2202 lt!2352038 (t!378429 s!2326)))))

(declare-fun setElem!42653 () Context!11148)

(declare-fun tp!1749058 () Bool)

(declare-fun setNonEmpty!42653 () Bool)

(assert (=> setNonEmpty!42653 (= setRes!42653 (and tp!1749058 (inv!83723 setElem!42653) e!3814407))))

(declare-fun setRest!42653 () (Set Context!11148))

(assert (=> setNonEmpty!42653 (= z!1189 (set.union (set.insert setElem!42653 (as set.empty (Set Context!11148))) setRest!42653))))

(declare-fun b!6271568 () Bool)

(declare-fun e!3814416 () Unit!158091)

(declare-fun Unit!158093 () Unit!158091)

(assert (=> b!6271568 (= e!3814416 Unit!158093)))

(declare-fun lt!2352031 () Unit!158091)

(assert (=> b!6271568 (= lt!2352031 (lemmaZipperConcatMatchesSameAsBothZippers!1021 lt!2352027 lt!2352038 (t!378429 s!2326)))))

(declare-fun res!2586914 () Bool)

(assert (=> b!6271568 (= res!2586914 (matchZipper!2202 lt!2352027 (t!378429 s!2326)))))

(assert (=> b!6271568 (=> res!2586914 e!3814415)))

(assert (=> b!6271568 (= (matchZipper!2202 (set.union lt!2352027 lt!2352038) (t!378429 s!2326)) e!3814415)))

(declare-fun b!6271569 () Bool)

(declare-fun res!2586929 () Bool)

(assert (=> b!6271569 (=> res!2586929 e!3814406)))

(declare-fun contextDepthTotal!313 (Context!11148) Int)

(assert (=> b!6271569 (= res!2586929 (>= (contextDepthTotal!313 lt!2352039) (contextDepthTotal!313 (h!71194 zl!343))))))

(declare-fun b!6271570 () Bool)

(declare-fun res!2586924 () Bool)

(assert (=> b!6271570 (=> res!2586924 e!3814398)))

(assert (=> b!6271570 (= res!2586924 (not (= r!7292 (generalisedConcat!1787 (exprs!6074 (h!71194 zl!343))))))))

(declare-fun b!6271571 () Bool)

(declare-fun Unit!158094 () Unit!158091)

(assert (=> b!6271571 (= e!3814416 Unit!158094)))

(declare-fun b!6271572 () Bool)

(declare-fun res!2586907 () Bool)

(assert (=> b!6271572 (=> res!2586907 e!3814398)))

(declare-fun generalisedUnion!2034 (List!64869) Regex!16190)

(declare-fun unfocusZipperList!1611 (List!64870) List!64869)

(assert (=> b!6271572 (= res!2586907 (not (= r!7292 (generalisedUnion!2034 (unfocusZipperList!1611 zl!343)))))))

(declare-fun b!6271573 () Bool)

(declare-fun res!2586916 () Bool)

(assert (=> b!6271573 (=> res!2586916 e!3814398)))

(assert (=> b!6271573 (= res!2586916 (not (is-Cons!64745 (exprs!6074 (h!71194 zl!343)))))))

(declare-fun b!6271574 () Bool)

(declare-fun res!2586926 () Bool)

(assert (=> b!6271574 (=> res!2586926 e!3814398)))

(assert (=> b!6271574 (= res!2586926 (or (is-EmptyExpr!16190 r!7292) (is-EmptyLang!16190 r!7292) (is-ElementMatch!16190 r!7292) (is-Union!16190 r!7292) (not (is-Concat!25035 r!7292))))))

(assert (=> b!6271575 (= e!3814404 e!3814411)))

(declare-fun res!2586919 () Bool)

(assert (=> b!6271575 (=> res!2586919 e!3814411)))

(assert (=> b!6271575 (= res!2586919 (or (and (is-ElementMatch!16190 (regOne!32892 r!7292)) (= (c!1136523 (regOne!32892 r!7292)) (h!71195 s!2326))) (is-Union!16190 (regOne!32892 r!7292)) (not (is-Concat!25035 (regOne!32892 r!7292)))))))

(declare-fun lt!2352016 () Unit!158091)

(assert (=> b!6271575 (= lt!2352016 e!3814416)))

(declare-fun c!1136522 () Bool)

(assert (=> b!6271575 (= c!1136522 (nullable!6183 (h!71193 (exprs!6074 (h!71194 zl!343)))))))

(assert (=> b!6271575 (= (flatMap!1695 z!1189 lambda!343554) (derivationStepZipperUp!1364 (h!71194 zl!343) (h!71195 s!2326)))))

(declare-fun lt!2352035 () Unit!158091)

(assert (=> b!6271575 (= lt!2352035 (lemmaFlatMapOnSingletonSet!1221 z!1189 (h!71194 zl!343) lambda!343554))))

(assert (=> b!6271575 (= lt!2352038 (derivationStepZipperUp!1364 lt!2352034 (h!71195 s!2326)))))

(assert (=> b!6271575 (= lt!2352027 (derivationStepZipperDown!1438 (h!71193 (exprs!6074 (h!71194 zl!343))) lt!2352034 (h!71195 s!2326)))))

(assert (=> b!6271575 (= lt!2352034 (Context!11149 (t!378427 (exprs!6074 (h!71194 zl!343)))))))

(declare-fun lt!2352023 () (Set Context!11148))

(assert (=> b!6271575 (= lt!2352023 (derivationStepZipperUp!1364 (Context!11149 (Cons!64745 (h!71193 (exprs!6074 (h!71194 zl!343))) (t!378427 (exprs!6074 (h!71194 zl!343))))) (h!71195 s!2326)))))

(declare-fun setIsEmpty!42653 () Bool)

(assert (=> setIsEmpty!42653 setRes!42653))

(assert (= (and start!623476 res!2586930) b!6271560))

(assert (= (and b!6271560 res!2586910) b!6271561))

(assert (= (and b!6271561 res!2586912) b!6271540))

(assert (= (and b!6271540 (not res!2586905)) b!6271543))

(assert (= (and b!6271543 (not res!2586906)) b!6271570))

(assert (= (and b!6271570 (not res!2586924)) b!6271573))

(assert (= (and b!6271573 (not res!2586916)) b!6271572))

(assert (= (and b!6271572 (not res!2586907)) b!6271574))

(assert (= (and b!6271574 (not res!2586926)) b!6271555))

(assert (= (and b!6271555 (not res!2586913)) b!6271559))

(assert (= (and b!6271559 (not res!2586921)) b!6271575))

(assert (= (and b!6271575 c!1136522) b!6271568))

(assert (= (and b!6271575 (not c!1136522)) b!6271571))

(assert (= (and b!6271568 (not res!2586914)) b!6271567))

(assert (= (and b!6271575 (not res!2586919)) b!6271551))

(assert (= (and b!6271551 (not res!2586922)) b!6271549))

(assert (= (and b!6271549 (not res!2586923)) b!6271554))

(assert (= (and b!6271554 (not res!2586925)) b!6271565))

(assert (= (and b!6271554 res!2586920) b!6271563))

(assert (= (and b!6271554 (not res!2586909)) b!6271552))

(assert (= (and b!6271552 (not res!2586911)) b!6271545))

(assert (= (and b!6271545 (not res!2586915)) b!6271566))

(assert (= (and b!6271545 res!2586928) b!6271557))

(assert (= (and b!6271545 (not res!2586918)) b!6271562))

(assert (= (and b!6271562 (not res!2586908)) b!6271569))

(assert (= (and b!6271569 (not res!2586929)) b!6271550))

(assert (= (and b!6271550 (not res!2586917)) b!6271548))

(assert (= (and b!6271548 (not res!2586927)) b!6271564))

(assert (= (and start!623476 (is-ElementMatch!16190 r!7292)) b!6271541))

(assert (= (and start!623476 (is-Concat!25035 r!7292)) b!6271556))

(assert (= (and start!623476 (is-Star!16190 r!7292)) b!6271546))

(assert (= (and start!623476 (is-Union!16190 r!7292)) b!6271553))

(assert (= (and start!623476 condSetEmpty!42653) setIsEmpty!42653))

(assert (= (and start!623476 (not condSetEmpty!42653)) setNonEmpty!42653))

(assert (= setNonEmpty!42653 b!6271542))

(assert (= b!6271547 b!6271558))

(assert (= (and start!623476 (is-Cons!64746 zl!343)) b!6271547))

(assert (= (and start!623476 (is-Cons!64747 s!2326)) b!6271544))

(declare-fun m!7093288 () Bool)

(assert (=> b!6271552 m!7093288))

(declare-fun m!7093290 () Bool)

(assert (=> b!6271552 m!7093290))

(declare-fun m!7093292 () Bool)

(assert (=> b!6271552 m!7093292))

(declare-fun m!7093294 () Bool)

(assert (=> b!6271552 m!7093294))

(declare-fun m!7093296 () Bool)

(assert (=> b!6271552 m!7093296))

(declare-fun m!7093298 () Bool)

(assert (=> b!6271552 m!7093298))

(declare-fun m!7093300 () Bool)

(assert (=> b!6271552 m!7093300))

(declare-fun m!7093302 () Bool)

(assert (=> b!6271564 m!7093302))

(declare-fun m!7093304 () Bool)

(assert (=> b!6271564 m!7093304))

(declare-fun m!7093306 () Bool)

(assert (=> b!6271564 m!7093306))

(declare-fun m!7093308 () Bool)

(assert (=> b!6271564 m!7093308))

(declare-fun m!7093310 () Bool)

(assert (=> b!6271564 m!7093310))

(declare-fun m!7093312 () Bool)

(assert (=> b!6271564 m!7093312))

(declare-fun m!7093314 () Bool)

(assert (=> b!6271564 m!7093314))

(declare-fun m!7093316 () Bool)

(assert (=> b!6271564 m!7093316))

(declare-fun m!7093318 () Bool)

(assert (=> b!6271564 m!7093318))

(declare-fun m!7093320 () Bool)

(assert (=> b!6271559 m!7093320))

(declare-fun m!7093322 () Bool)

(assert (=> b!6271563 m!7093322))

(declare-fun m!7093324 () Bool)

(assert (=> b!6271567 m!7093324))

(declare-fun m!7093326 () Bool)

(assert (=> setNonEmpty!42653 m!7093326))

(declare-fun m!7093328 () Bool)

(assert (=> b!6271547 m!7093328))

(declare-fun m!7093330 () Bool)

(assert (=> b!6271549 m!7093330))

(declare-fun m!7093332 () Bool)

(assert (=> b!6271549 m!7093332))

(declare-fun m!7093334 () Bool)

(assert (=> b!6271540 m!7093334))

(declare-fun m!7093336 () Bool)

(assert (=> b!6271540 m!7093336))

(declare-fun m!7093338 () Bool)

(assert (=> b!6271540 m!7093338))

(declare-fun m!7093340 () Bool)

(assert (=> b!6271570 m!7093340))

(declare-fun m!7093342 () Bool)

(assert (=> b!6271545 m!7093342))

(declare-fun m!7093344 () Bool)

(assert (=> b!6271545 m!7093344))

(declare-fun m!7093346 () Bool)

(assert (=> b!6271545 m!7093346))

(declare-fun m!7093348 () Bool)

(assert (=> b!6271545 m!7093348))

(declare-fun m!7093350 () Bool)

(assert (=> b!6271545 m!7093350))

(assert (=> b!6271545 m!7093300))

(declare-fun m!7093352 () Bool)

(assert (=> b!6271568 m!7093352))

(declare-fun m!7093354 () Bool)

(assert (=> b!6271568 m!7093354))

(declare-fun m!7093356 () Bool)

(assert (=> b!6271568 m!7093356))

(declare-fun m!7093358 () Bool)

(assert (=> b!6271566 m!7093358))

(declare-fun m!7093360 () Bool)

(assert (=> b!6271561 m!7093360))

(declare-fun m!7093362 () Bool)

(assert (=> b!6271555 m!7093362))

(assert (=> b!6271555 m!7093362))

(declare-fun m!7093364 () Bool)

(assert (=> b!6271555 m!7093364))

(declare-fun m!7093366 () Bool)

(assert (=> b!6271555 m!7093366))

(declare-fun m!7093368 () Bool)

(assert (=> b!6271555 m!7093368))

(declare-fun m!7093370 () Bool)

(assert (=> b!6271555 m!7093370))

(assert (=> b!6271555 m!7093364))

(declare-fun m!7093372 () Bool)

(assert (=> b!6271555 m!7093372))

(declare-fun m!7093374 () Bool)

(assert (=> b!6271560 m!7093374))

(declare-fun m!7093376 () Bool)

(assert (=> b!6271569 m!7093376))

(declare-fun m!7093378 () Bool)

(assert (=> b!6271569 m!7093378))

(declare-fun m!7093380 () Bool)

(assert (=> b!6271572 m!7093380))

(assert (=> b!6271572 m!7093380))

(declare-fun m!7093382 () Bool)

(assert (=> b!6271572 m!7093382))

(declare-fun m!7093384 () Bool)

(assert (=> b!6271575 m!7093384))

(declare-fun m!7093386 () Bool)

(assert (=> b!6271575 m!7093386))

(declare-fun m!7093388 () Bool)

(assert (=> b!6271575 m!7093388))

(declare-fun m!7093390 () Bool)

(assert (=> b!6271575 m!7093390))

(declare-fun m!7093392 () Bool)

(assert (=> b!6271575 m!7093392))

(declare-fun m!7093394 () Bool)

(assert (=> b!6271575 m!7093394))

(declare-fun m!7093396 () Bool)

(assert (=> b!6271575 m!7093396))

(declare-fun m!7093398 () Bool)

(assert (=> b!6271551 m!7093398))

(declare-fun m!7093400 () Bool)

(assert (=> start!623476 m!7093400))

(assert (=> b!6271565 m!7093322))

(declare-fun m!7093402 () Bool)

(assert (=> b!6271557 m!7093402))

(assert (=> b!6271557 m!7093402))

(declare-fun m!7093404 () Bool)

(assert (=> b!6271557 m!7093404))

(assert (=> b!6271554 m!7093354))

(declare-fun m!7093406 () Bool)

(assert (=> b!6271554 m!7093406))

(declare-fun m!7093408 () Bool)

(assert (=> b!6271554 m!7093408))

(declare-fun m!7093410 () Bool)

(assert (=> b!6271554 m!7093410))

(declare-fun m!7093412 () Bool)

(assert (=> b!6271543 m!7093412))

(declare-fun m!7093414 () Bool)

(assert (=> b!6271548 m!7093414))

(declare-fun m!7093416 () Bool)

(assert (=> b!6271548 m!7093416))

(declare-fun m!7093418 () Bool)

(assert (=> b!6271550 m!7093418))

(declare-fun m!7093420 () Bool)

(assert (=> b!6271550 m!7093420))

(push 1)

(assert (not b!6271556))

(assert (not b!6271557))

(assert (not b!6271540))

(assert (not b!6271559))

(assert (not setNonEmpty!42653))

(assert (not b!6271551))

(assert (not b!6271553))

(assert (not b!6271572))

(assert (not b!6271566))

(assert (not b!6271575))

(assert (not b!6271568))

(assert (not b!6271549))

(assert (not b!6271545))

(assert (not b!6271544))

(assert (not b!6271543))

(assert (not b!6271567))

(assert (not b!6271547))

(assert (not b!6271554))

(assert (not b!6271546))

(assert (not b!6271558))

(assert (not b!6271564))

(assert (not b!6271563))

(assert (not b!6271555))

(assert (not b!6271548))

(assert (not b!6271561))

(assert (not b!6271570))

(assert (not b!6271542))

(assert (not b!6271565))

(assert (not b!6271569))

(assert tp_is_empty!41633)

(assert (not b!6271560))

(assert (not b!6271552))

(assert (not start!623476))

(assert (not b!6271550))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6271718 () Bool)

(declare-fun e!3814489 () (Set Context!11148))

(assert (=> b!6271718 (= e!3814489 (as set.empty (Set Context!11148)))))

(declare-fun b!6271719 () Bool)

(declare-fun call!530443 () (Set Context!11148))

(assert (=> b!6271719 (= e!3814489 call!530443)))

(declare-fun b!6271720 () Bool)

(declare-fun e!3814490 () (Set Context!11148))

(assert (=> b!6271720 (= e!3814490 e!3814489)))

(declare-fun c!1136539 () Bool)

(assert (=> b!6271720 (= c!1136539 (is-Cons!64745 (exprs!6074 lt!2352017)))))

(declare-fun b!6271721 () Bool)

(declare-fun e!3814491 () Bool)

(assert (=> b!6271721 (= e!3814491 (nullable!6183 (h!71193 (exprs!6074 lt!2352017))))))

(declare-fun d!1968549 () Bool)

(declare-fun c!1136540 () Bool)

(assert (=> d!1968549 (= c!1136540 e!3814491)))

(declare-fun res!2587023 () Bool)

(assert (=> d!1968549 (=> (not res!2587023) (not e!3814491))))

(assert (=> d!1968549 (= res!2587023 (is-Cons!64745 (exprs!6074 lt!2352017)))))

(assert (=> d!1968549 (= (derivationStepZipperUp!1364 lt!2352017 (h!71195 s!2326)) e!3814490)))

(declare-fun b!6271722 () Bool)

(assert (=> b!6271722 (= e!3814490 (set.union call!530443 (derivationStepZipperUp!1364 (Context!11149 (t!378427 (exprs!6074 lt!2352017))) (h!71195 s!2326))))))

(declare-fun bm!530438 () Bool)

(assert (=> bm!530438 (= call!530443 (derivationStepZipperDown!1438 (h!71193 (exprs!6074 lt!2352017)) (Context!11149 (t!378427 (exprs!6074 lt!2352017))) (h!71195 s!2326)))))

(assert (= (and d!1968549 res!2587023) b!6271721))

(assert (= (and d!1968549 c!1136540) b!6271722))

(assert (= (and d!1968549 (not c!1136540)) b!6271720))

(assert (= (and b!6271720 c!1136539) b!6271719))

(assert (= (and b!6271720 (not c!1136539)) b!6271718))

(assert (= (or b!6271722 b!6271719) bm!530438))

(declare-fun m!7093556 () Bool)

(assert (=> b!6271721 m!7093556))

(declare-fun m!7093558 () Bool)

(assert (=> b!6271722 m!7093558))

(declare-fun m!7093560 () Bool)

(assert (=> bm!530438 m!7093560))

(assert (=> b!6271552 d!1968549))

(declare-fun b!6271723 () Bool)

(declare-fun e!3814492 () (Set Context!11148))

(assert (=> b!6271723 (= e!3814492 (as set.empty (Set Context!11148)))))

(declare-fun b!6271724 () Bool)

(declare-fun call!530444 () (Set Context!11148))

(assert (=> b!6271724 (= e!3814492 call!530444)))

(declare-fun b!6271725 () Bool)

(declare-fun e!3814493 () (Set Context!11148))

(assert (=> b!6271725 (= e!3814493 e!3814492)))

(declare-fun c!1136541 () Bool)

(assert (=> b!6271725 (= c!1136541 (is-Cons!64745 (exprs!6074 lt!2352039)))))

(declare-fun b!6271726 () Bool)

(declare-fun e!3814494 () Bool)

(assert (=> b!6271726 (= e!3814494 (nullable!6183 (h!71193 (exprs!6074 lt!2352039))))))

(declare-fun d!1968551 () Bool)

(declare-fun c!1136542 () Bool)

(assert (=> d!1968551 (= c!1136542 e!3814494)))

(declare-fun res!2587024 () Bool)

(assert (=> d!1968551 (=> (not res!2587024) (not e!3814494))))

(assert (=> d!1968551 (= res!2587024 (is-Cons!64745 (exprs!6074 lt!2352039)))))

(assert (=> d!1968551 (= (derivationStepZipperUp!1364 lt!2352039 (h!71195 s!2326)) e!3814493)))

(declare-fun b!6271727 () Bool)

(assert (=> b!6271727 (= e!3814493 (set.union call!530444 (derivationStepZipperUp!1364 (Context!11149 (t!378427 (exprs!6074 lt!2352039))) (h!71195 s!2326))))))

(declare-fun bm!530439 () Bool)

(assert (=> bm!530439 (= call!530444 (derivationStepZipperDown!1438 (h!71193 (exprs!6074 lt!2352039)) (Context!11149 (t!378427 (exprs!6074 lt!2352039))) (h!71195 s!2326)))))

(assert (= (and d!1968551 res!2587024) b!6271726))

(assert (= (and d!1968551 c!1136542) b!6271727))

(assert (= (and d!1968551 (not c!1136542)) b!6271725))

(assert (= (and b!6271725 c!1136541) b!6271724))

(assert (= (and b!6271725 (not c!1136541)) b!6271723))

(assert (= (or b!6271727 b!6271724) bm!530439))

(declare-fun m!7093562 () Bool)

(assert (=> b!6271726 m!7093562))

(declare-fun m!7093564 () Bool)

(assert (=> b!6271727 m!7093564))

(declare-fun m!7093566 () Bool)

(assert (=> bm!530439 m!7093566))

(assert (=> b!6271552 d!1968551))

(declare-fun d!1968553 () Bool)

(declare-fun choose!46526 ((Set Context!11148) Int) (Set Context!11148))

(assert (=> d!1968553 (= (flatMap!1695 lt!2352036 lambda!343554) (choose!46526 lt!2352036 lambda!343554))))

(declare-fun bs!1566506 () Bool)

(assert (= bs!1566506 d!1968553))

(declare-fun m!7093568 () Bool)

(assert (=> bs!1566506 m!7093568))

(assert (=> b!6271552 d!1968553))

(declare-fun d!1968555 () Bool)

(declare-fun dynLambda!25608 (Int Context!11148) (Set Context!11148))

(assert (=> d!1968555 (= (flatMap!1695 lt!2352036 lambda!343554) (dynLambda!25608 lambda!343554 lt!2352039))))

(declare-fun lt!2352155 () Unit!158091)

(declare-fun choose!46527 ((Set Context!11148) Context!11148 Int) Unit!158091)

(assert (=> d!1968555 (= lt!2352155 (choose!46527 lt!2352036 lt!2352039 lambda!343554))))

(assert (=> d!1968555 (= lt!2352036 (set.insert lt!2352039 (as set.empty (Set Context!11148))))))

(assert (=> d!1968555 (= (lemmaFlatMapOnSingletonSet!1221 lt!2352036 lt!2352039 lambda!343554) lt!2352155)))

(declare-fun b_lambda!238845 () Bool)

(assert (=> (not b_lambda!238845) (not d!1968555)))

(declare-fun bs!1566507 () Bool)

(assert (= bs!1566507 d!1968555))

(assert (=> bs!1566507 m!7093288))

(declare-fun m!7093570 () Bool)

(assert (=> bs!1566507 m!7093570))

(declare-fun m!7093572 () Bool)

(assert (=> bs!1566507 m!7093572))

(assert (=> bs!1566507 m!7093296))

(assert (=> b!6271552 d!1968555))

(declare-fun bs!1566508 () Bool)

(declare-fun d!1968557 () Bool)

(assert (= bs!1566508 (and d!1968557 b!6271575)))

(declare-fun lambda!343572 () Int)

(assert (=> bs!1566508 (= lambda!343572 lambda!343554)))

(assert (=> d!1968557 true))

(assert (=> d!1968557 (= (derivationStepZipper!2156 lt!2352036 (h!71195 s!2326)) (flatMap!1695 lt!2352036 lambda!343572))))

(declare-fun bs!1566509 () Bool)

(assert (= bs!1566509 d!1968557))

(declare-fun m!7093574 () Bool)

(assert (=> bs!1566509 m!7093574))

(assert (=> b!6271552 d!1968557))

(declare-fun b!6271750 () Bool)

(declare-fun e!3814512 () Bool)

(assert (=> b!6271750 (= e!3814512 (isEmpty!36781 (t!378427 (unfocusZipperList!1611 zl!343))))))

(declare-fun b!6271752 () Bool)

(declare-fun e!3814511 () Regex!16190)

(declare-fun e!3814509 () Regex!16190)

(assert (=> b!6271752 (= e!3814511 e!3814509)))

(declare-fun c!1136555 () Bool)

(assert (=> b!6271752 (= c!1136555 (is-Cons!64745 (unfocusZipperList!1611 zl!343)))))

(declare-fun b!6271753 () Bool)

(declare-fun e!3814508 () Bool)

(declare-fun e!3814507 () Bool)

(assert (=> b!6271753 (= e!3814508 e!3814507)))

(declare-fun c!1136556 () Bool)

(assert (=> b!6271753 (= c!1136556 (isEmpty!36781 (unfocusZipperList!1611 zl!343)))))

(declare-fun b!6271754 () Bool)

(declare-fun e!3814510 () Bool)

(declare-fun lt!2352158 () Regex!16190)

(declare-fun head!12880 (List!64869) Regex!16190)

(assert (=> b!6271754 (= e!3814510 (= lt!2352158 (head!12880 (unfocusZipperList!1611 zl!343))))))

(declare-fun b!6271755 () Bool)

(assert (=> b!6271755 (= e!3814509 (Union!16190 (h!71193 (unfocusZipperList!1611 zl!343)) (generalisedUnion!2034 (t!378427 (unfocusZipperList!1611 zl!343)))))))

(declare-fun b!6271756 () Bool)

(declare-fun isUnion!1035 (Regex!16190) Bool)

(assert (=> b!6271756 (= e!3814510 (isUnion!1035 lt!2352158))))

(declare-fun b!6271757 () Bool)

(assert (=> b!6271757 (= e!3814511 (h!71193 (unfocusZipperList!1611 zl!343)))))

(declare-fun b!6271758 () Bool)

(assert (=> b!6271758 (= e!3814507 e!3814510)))

(declare-fun c!1136554 () Bool)

(declare-fun tail!11965 (List!64869) List!64869)

(assert (=> b!6271758 (= c!1136554 (isEmpty!36781 (tail!11965 (unfocusZipperList!1611 zl!343))))))

(declare-fun b!6271759 () Bool)

(declare-fun isEmptyLang!1605 (Regex!16190) Bool)

(assert (=> b!6271759 (= e!3814507 (isEmptyLang!1605 lt!2352158))))

(declare-fun d!1968559 () Bool)

(assert (=> d!1968559 e!3814508))

(declare-fun res!2587029 () Bool)

(assert (=> d!1968559 (=> (not res!2587029) (not e!3814508))))

(assert (=> d!1968559 (= res!2587029 (validRegex!7926 lt!2352158))))

(assert (=> d!1968559 (= lt!2352158 e!3814511)))

(declare-fun c!1136553 () Bool)

(assert (=> d!1968559 (= c!1136553 e!3814512)))

(declare-fun res!2587030 () Bool)

(assert (=> d!1968559 (=> (not res!2587030) (not e!3814512))))

(assert (=> d!1968559 (= res!2587030 (is-Cons!64745 (unfocusZipperList!1611 zl!343)))))

(declare-fun lambda!343575 () Int)

(declare-fun forall!15318 (List!64869 Int) Bool)

(assert (=> d!1968559 (forall!15318 (unfocusZipperList!1611 zl!343) lambda!343575)))

(assert (=> d!1968559 (= (generalisedUnion!2034 (unfocusZipperList!1611 zl!343)) lt!2352158)))

(declare-fun b!6271751 () Bool)

(assert (=> b!6271751 (= e!3814509 EmptyLang!16190)))

(assert (= (and d!1968559 res!2587030) b!6271750))

(assert (= (and d!1968559 c!1136553) b!6271757))

(assert (= (and d!1968559 (not c!1136553)) b!6271752))

(assert (= (and b!6271752 c!1136555) b!6271755))

(assert (= (and b!6271752 (not c!1136555)) b!6271751))

(assert (= (and d!1968559 res!2587029) b!6271753))

(assert (= (and b!6271753 c!1136556) b!6271759))

(assert (= (and b!6271753 (not c!1136556)) b!6271758))

(assert (= (and b!6271758 c!1136554) b!6271754))

(assert (= (and b!6271758 (not c!1136554)) b!6271756))

(declare-fun m!7093576 () Bool)

(assert (=> b!6271759 m!7093576))

(assert (=> b!6271753 m!7093380))

(declare-fun m!7093578 () Bool)

(assert (=> b!6271753 m!7093578))

(assert (=> b!6271758 m!7093380))

(declare-fun m!7093580 () Bool)

(assert (=> b!6271758 m!7093580))

(assert (=> b!6271758 m!7093580))

(declare-fun m!7093582 () Bool)

(assert (=> b!6271758 m!7093582))

(declare-fun m!7093584 () Bool)

(assert (=> d!1968559 m!7093584))

(assert (=> d!1968559 m!7093380))

(declare-fun m!7093586 () Bool)

(assert (=> d!1968559 m!7093586))

(assert (=> b!6271754 m!7093380))

(declare-fun m!7093588 () Bool)

(assert (=> b!6271754 m!7093588))

(declare-fun m!7093590 () Bool)

(assert (=> b!6271755 m!7093590))

(declare-fun m!7093592 () Bool)

(assert (=> b!6271750 m!7093592))

(declare-fun m!7093594 () Bool)

(assert (=> b!6271756 m!7093594))

(assert (=> b!6271572 d!1968559))

(declare-fun bs!1566510 () Bool)

(declare-fun d!1968561 () Bool)

(assert (= bs!1566510 (and d!1968561 d!1968559)))

(declare-fun lambda!343578 () Int)

(assert (=> bs!1566510 (= lambda!343578 lambda!343575)))

(declare-fun lt!2352161 () List!64869)

(assert (=> d!1968561 (forall!15318 lt!2352161 lambda!343578)))

(declare-fun e!3814515 () List!64869)

(assert (=> d!1968561 (= lt!2352161 e!3814515)))

(declare-fun c!1136559 () Bool)

(assert (=> d!1968561 (= c!1136559 (is-Cons!64746 zl!343))))

(assert (=> d!1968561 (= (unfocusZipperList!1611 zl!343) lt!2352161)))

(declare-fun b!6271764 () Bool)

(assert (=> b!6271764 (= e!3814515 (Cons!64745 (generalisedConcat!1787 (exprs!6074 (h!71194 zl!343))) (unfocusZipperList!1611 (t!378428 zl!343))))))

(declare-fun b!6271765 () Bool)

(assert (=> b!6271765 (= e!3814515 Nil!64745)))

(assert (= (and d!1968561 c!1136559) b!6271764))

(assert (= (and d!1968561 (not c!1136559)) b!6271765))

(declare-fun m!7093596 () Bool)

(assert (=> d!1968561 m!7093596))

(assert (=> b!6271764 m!7093340))

(declare-fun m!7093598 () Bool)

(assert (=> b!6271764 m!7093598))

(assert (=> b!6271572 d!1968561))

(declare-fun b!6271784 () Bool)

(declare-fun e!3814529 () Option!16081)

(assert (=> b!6271784 (= e!3814529 None!16080)))

(declare-fun b!6271785 () Bool)

(declare-fun e!3814527 () Bool)

(declare-fun lt!2352168 () Option!16081)

(assert (=> b!6271785 (= e!3814527 (not (isDefined!12784 lt!2352168)))))

(declare-fun b!6271786 () Bool)

(declare-fun res!2587043 () Bool)

(declare-fun e!3814528 () Bool)

(assert (=> b!6271786 (=> (not res!2587043) (not e!3814528))))

(declare-fun get!22375 (Option!16081) tuple2!66338)

(assert (=> b!6271786 (= res!2587043 (matchR!8373 (regTwo!32892 r!7292) (_2!36472 (get!22375 lt!2352168))))))

(declare-fun b!6271787 () Bool)

(declare-fun e!3814530 () Bool)

(assert (=> b!6271787 (= e!3814530 (matchR!8373 (regTwo!32892 r!7292) s!2326))))

(declare-fun d!1968563 () Bool)

(assert (=> d!1968563 e!3814527))

(declare-fun res!2587041 () Bool)

(assert (=> d!1968563 (=> res!2587041 e!3814527)))

(assert (=> d!1968563 (= res!2587041 e!3814528)))

(declare-fun res!2587042 () Bool)

(assert (=> d!1968563 (=> (not res!2587042) (not e!3814528))))

(assert (=> d!1968563 (= res!2587042 (isDefined!12784 lt!2352168))))

(declare-fun e!3814526 () Option!16081)

(assert (=> d!1968563 (= lt!2352168 e!3814526)))

(declare-fun c!1136565 () Bool)

(assert (=> d!1968563 (= c!1136565 e!3814530)))

(declare-fun res!2587044 () Bool)

(assert (=> d!1968563 (=> (not res!2587044) (not e!3814530))))

(assert (=> d!1968563 (= res!2587044 (matchR!8373 (regOne!32892 r!7292) Nil!64747))))

(assert (=> d!1968563 (validRegex!7926 (regOne!32892 r!7292))))

(assert (=> d!1968563 (= (findConcatSeparation!2495 (regOne!32892 r!7292) (regTwo!32892 r!7292) Nil!64747 s!2326 s!2326) lt!2352168)))

(declare-fun b!6271788 () Bool)

(assert (=> b!6271788 (= e!3814526 e!3814529)))

(declare-fun c!1136564 () Bool)

(assert (=> b!6271788 (= c!1136564 (is-Nil!64747 s!2326))))

(declare-fun b!6271789 () Bool)

(declare-fun res!2587045 () Bool)

(assert (=> b!6271789 (=> (not res!2587045) (not e!3814528))))

(assert (=> b!6271789 (= res!2587045 (matchR!8373 (regOne!32892 r!7292) (_1!36472 (get!22375 lt!2352168))))))

(declare-fun b!6271790 () Bool)

(declare-fun lt!2352170 () Unit!158091)

(declare-fun lt!2352169 () Unit!158091)

(assert (=> b!6271790 (= lt!2352170 lt!2352169)))

(declare-fun ++!14264 (List!64871 List!64871) List!64871)

(assert (=> b!6271790 (= (++!14264 (++!14264 Nil!64747 (Cons!64747 (h!71195 s!2326) Nil!64747)) (t!378429 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2359 (List!64871 C!32650 List!64871 List!64871) Unit!158091)

(assert (=> b!6271790 (= lt!2352169 (lemmaMoveElementToOtherListKeepsConcatEq!2359 Nil!64747 (h!71195 s!2326) (t!378429 s!2326) s!2326))))

(assert (=> b!6271790 (= e!3814529 (findConcatSeparation!2495 (regOne!32892 r!7292) (regTwo!32892 r!7292) (++!14264 Nil!64747 (Cons!64747 (h!71195 s!2326) Nil!64747)) (t!378429 s!2326) s!2326))))

(declare-fun b!6271791 () Bool)

(assert (=> b!6271791 (= e!3814528 (= (++!14264 (_1!36472 (get!22375 lt!2352168)) (_2!36472 (get!22375 lt!2352168))) s!2326))))

(declare-fun b!6271792 () Bool)

(assert (=> b!6271792 (= e!3814526 (Some!16080 (tuple2!66339 Nil!64747 s!2326)))))

(assert (= (and d!1968563 res!2587044) b!6271787))

(assert (= (and d!1968563 c!1136565) b!6271792))

(assert (= (and d!1968563 (not c!1136565)) b!6271788))

(assert (= (and b!6271788 c!1136564) b!6271784))

(assert (= (and b!6271788 (not c!1136564)) b!6271790))

(assert (= (and d!1968563 res!2587042) b!6271789))

(assert (= (and b!6271789 res!2587045) b!6271786))

(assert (= (and b!6271786 res!2587043) b!6271791))

(assert (= (and d!1968563 (not res!2587041)) b!6271785))

(declare-fun m!7093600 () Bool)

(assert (=> b!6271785 m!7093600))

(declare-fun m!7093602 () Bool)

(assert (=> b!6271786 m!7093602))

(declare-fun m!7093604 () Bool)

(assert (=> b!6271786 m!7093604))

(declare-fun m!7093606 () Bool)

(assert (=> b!6271790 m!7093606))

(assert (=> b!6271790 m!7093606))

(declare-fun m!7093608 () Bool)

(assert (=> b!6271790 m!7093608))

(declare-fun m!7093610 () Bool)

(assert (=> b!6271790 m!7093610))

(assert (=> b!6271790 m!7093606))

(declare-fun m!7093612 () Bool)

(assert (=> b!6271790 m!7093612))

(assert (=> b!6271789 m!7093602))

(declare-fun m!7093614 () Bool)

(assert (=> b!6271789 m!7093614))

(assert (=> b!6271791 m!7093602))

(declare-fun m!7093616 () Bool)

(assert (=> b!6271791 m!7093616))

(assert (=> d!1968563 m!7093600))

(declare-fun m!7093618 () Bool)

(assert (=> d!1968563 m!7093618))

(declare-fun m!7093620 () Bool)

(assert (=> d!1968563 m!7093620))

(declare-fun m!7093622 () Bool)

(assert (=> b!6271787 m!7093622))

(assert (=> b!6271555 d!1968563))

(declare-fun d!1968565 () Bool)

(declare-fun choose!46528 (Int) Bool)

(assert (=> d!1968565 (= (Exists!3260 lambda!343552) (choose!46528 lambda!343552))))

(declare-fun bs!1566511 () Bool)

(assert (= bs!1566511 d!1968565))

(declare-fun m!7093624 () Bool)

(assert (=> bs!1566511 m!7093624))

(assert (=> b!6271555 d!1968565))

(declare-fun d!1968567 () Bool)

(assert (=> d!1968567 (= (Exists!3260 lambda!343553) (choose!46528 lambda!343553))))

(declare-fun bs!1566512 () Bool)

(assert (= bs!1566512 d!1968567))

(declare-fun m!7093626 () Bool)

(assert (=> bs!1566512 m!7093626))

(assert (=> b!6271555 d!1968567))

(declare-fun bs!1566513 () Bool)

(declare-fun d!1968569 () Bool)

(assert (= bs!1566513 (and d!1968569 b!6271555)))

(declare-fun lambda!343581 () Int)

(assert (=> bs!1566513 (= lambda!343581 lambda!343552)))

(assert (=> bs!1566513 (not (= lambda!343581 lambda!343553))))

(assert (=> d!1968569 true))

(assert (=> d!1968569 true))

(assert (=> d!1968569 true))

(assert (=> d!1968569 (= (isDefined!12784 (findConcatSeparation!2495 (regOne!32892 r!7292) (regTwo!32892 r!7292) Nil!64747 s!2326 s!2326)) (Exists!3260 lambda!343581))))

(declare-fun lt!2352173 () Unit!158091)

(declare-fun choose!46529 (Regex!16190 Regex!16190 List!64871) Unit!158091)

(assert (=> d!1968569 (= lt!2352173 (choose!46529 (regOne!32892 r!7292) (regTwo!32892 r!7292) s!2326))))

(assert (=> d!1968569 (validRegex!7926 (regOne!32892 r!7292))))

(assert (=> d!1968569 (= (lemmaFindConcatSeparationEquivalentToExists!2259 (regOne!32892 r!7292) (regTwo!32892 r!7292) s!2326) lt!2352173)))

(declare-fun bs!1566514 () Bool)

(assert (= bs!1566514 d!1968569))

(assert (=> bs!1566514 m!7093620))

(declare-fun m!7093628 () Bool)

(assert (=> bs!1566514 m!7093628))

(declare-fun m!7093630 () Bool)

(assert (=> bs!1566514 m!7093630))

(assert (=> bs!1566514 m!7093364))

(assert (=> bs!1566514 m!7093364))

(assert (=> bs!1566514 m!7093366))

(assert (=> b!6271555 d!1968569))

(declare-fun bs!1566515 () Bool)

(declare-fun d!1968571 () Bool)

(assert (= bs!1566515 (and d!1968571 b!6271555)))

(declare-fun lambda!343586 () Int)

(assert (=> bs!1566515 (= lambda!343586 lambda!343552)))

(assert (=> bs!1566515 (not (= lambda!343586 lambda!343553))))

(declare-fun bs!1566516 () Bool)

(assert (= bs!1566516 (and d!1968571 d!1968569)))

(assert (=> bs!1566516 (= lambda!343586 lambda!343581)))

(assert (=> d!1968571 true))

(assert (=> d!1968571 true))

(assert (=> d!1968571 true))

(declare-fun lambda!343587 () Int)

(assert (=> bs!1566515 (not (= lambda!343587 lambda!343552))))

(assert (=> bs!1566515 (= lambda!343587 lambda!343553)))

(assert (=> bs!1566516 (not (= lambda!343587 lambda!343581))))

(declare-fun bs!1566517 () Bool)

(assert (= bs!1566517 d!1968571))

(assert (=> bs!1566517 (not (= lambda!343587 lambda!343586))))

(assert (=> d!1968571 true))

(assert (=> d!1968571 true))

(assert (=> d!1968571 true))

(assert (=> d!1968571 (= (Exists!3260 lambda!343586) (Exists!3260 lambda!343587))))

(declare-fun lt!2352176 () Unit!158091)

(declare-fun choose!46530 (Regex!16190 Regex!16190 List!64871) Unit!158091)

(assert (=> d!1968571 (= lt!2352176 (choose!46530 (regOne!32892 r!7292) (regTwo!32892 r!7292) s!2326))))

(assert (=> d!1968571 (validRegex!7926 (regOne!32892 r!7292))))

(assert (=> d!1968571 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1797 (regOne!32892 r!7292) (regTwo!32892 r!7292) s!2326) lt!2352176)))

(declare-fun m!7093632 () Bool)

(assert (=> bs!1566517 m!7093632))

(declare-fun m!7093634 () Bool)

(assert (=> bs!1566517 m!7093634))

(declare-fun m!7093636 () Bool)

(assert (=> bs!1566517 m!7093636))

(assert (=> bs!1566517 m!7093620))

(assert (=> b!6271555 d!1968571))

(declare-fun d!1968573 () Bool)

(declare-fun isEmpty!36784 (Option!16081) Bool)

(assert (=> d!1968573 (= (isDefined!12784 (findConcatSeparation!2495 (regOne!32892 r!7292) (regTwo!32892 r!7292) Nil!64747 s!2326 s!2326)) (not (isEmpty!36784 (findConcatSeparation!2495 (regOne!32892 r!7292) (regTwo!32892 r!7292) Nil!64747 s!2326 s!2326))))))

(declare-fun bs!1566518 () Bool)

(assert (= bs!1566518 d!1968573))

(assert (=> bs!1566518 m!7093364))

(declare-fun m!7093638 () Bool)

(assert (=> bs!1566518 m!7093638))

(assert (=> b!6271555 d!1968573))

(declare-fun b!6271805 () Bool)

(declare-fun e!3814537 () (Set Context!11148))

(assert (=> b!6271805 (= e!3814537 (as set.empty (Set Context!11148)))))

(declare-fun b!6271806 () Bool)

(declare-fun call!530445 () (Set Context!11148))

(assert (=> b!6271806 (= e!3814537 call!530445)))

(declare-fun b!6271807 () Bool)

(declare-fun e!3814538 () (Set Context!11148))

(assert (=> b!6271807 (= e!3814538 e!3814537)))

(declare-fun c!1136566 () Bool)

(assert (=> b!6271807 (= c!1136566 (is-Cons!64745 (exprs!6074 lt!2352034)))))

(declare-fun b!6271808 () Bool)

(declare-fun e!3814539 () Bool)

(assert (=> b!6271808 (= e!3814539 (nullable!6183 (h!71193 (exprs!6074 lt!2352034))))))

(declare-fun d!1968575 () Bool)

(declare-fun c!1136567 () Bool)

(assert (=> d!1968575 (= c!1136567 e!3814539)))

(declare-fun res!2587058 () Bool)

(assert (=> d!1968575 (=> (not res!2587058) (not e!3814539))))

(assert (=> d!1968575 (= res!2587058 (is-Cons!64745 (exprs!6074 lt!2352034)))))

(assert (=> d!1968575 (= (derivationStepZipperUp!1364 lt!2352034 (h!71195 s!2326)) e!3814538)))

(declare-fun b!6271809 () Bool)

(assert (=> b!6271809 (= e!3814538 (set.union call!530445 (derivationStepZipperUp!1364 (Context!11149 (t!378427 (exprs!6074 lt!2352034))) (h!71195 s!2326))))))

(declare-fun bm!530440 () Bool)

(assert (=> bm!530440 (= call!530445 (derivationStepZipperDown!1438 (h!71193 (exprs!6074 lt!2352034)) (Context!11149 (t!378427 (exprs!6074 lt!2352034))) (h!71195 s!2326)))))

(assert (= (and d!1968575 res!2587058) b!6271808))

(assert (= (and d!1968575 c!1136567) b!6271809))

(assert (= (and d!1968575 (not c!1136567)) b!6271807))

(assert (= (and b!6271807 c!1136566) b!6271806))

(assert (= (and b!6271807 (not c!1136566)) b!6271805))

(assert (= (or b!6271809 b!6271806) bm!530440))

(declare-fun m!7093640 () Bool)

(assert (=> b!6271808 m!7093640))

(declare-fun m!7093642 () Bool)

(assert (=> b!6271809 m!7093642))

(declare-fun m!7093644 () Bool)

(assert (=> bm!530440 m!7093644))

(assert (=> b!6271575 d!1968575))

(declare-fun d!1968577 () Bool)

(assert (=> d!1968577 (= (flatMap!1695 z!1189 lambda!343554) (choose!46526 z!1189 lambda!343554))))

(declare-fun bs!1566519 () Bool)

(assert (= bs!1566519 d!1968577))

(declare-fun m!7093646 () Bool)

(assert (=> bs!1566519 m!7093646))

(assert (=> b!6271575 d!1968577))

(declare-fun b!6271810 () Bool)

(declare-fun e!3814540 () (Set Context!11148))

(assert (=> b!6271810 (= e!3814540 (as set.empty (Set Context!11148)))))

(declare-fun b!6271811 () Bool)

(declare-fun call!530446 () (Set Context!11148))

(assert (=> b!6271811 (= e!3814540 call!530446)))

(declare-fun b!6271812 () Bool)

(declare-fun e!3814541 () (Set Context!11148))

(assert (=> b!6271812 (= e!3814541 e!3814540)))

(declare-fun c!1136568 () Bool)

(assert (=> b!6271812 (= c!1136568 (is-Cons!64745 (exprs!6074 (Context!11149 (Cons!64745 (h!71193 (exprs!6074 (h!71194 zl!343))) (t!378427 (exprs!6074 (h!71194 zl!343))))))))))

(declare-fun b!6271813 () Bool)

(declare-fun e!3814542 () Bool)

(assert (=> b!6271813 (= e!3814542 (nullable!6183 (h!71193 (exprs!6074 (Context!11149 (Cons!64745 (h!71193 (exprs!6074 (h!71194 zl!343))) (t!378427 (exprs!6074 (h!71194 zl!343)))))))))))

(declare-fun d!1968579 () Bool)

(declare-fun c!1136569 () Bool)

(assert (=> d!1968579 (= c!1136569 e!3814542)))

(declare-fun res!2587059 () Bool)

(assert (=> d!1968579 (=> (not res!2587059) (not e!3814542))))

(assert (=> d!1968579 (= res!2587059 (is-Cons!64745 (exprs!6074 (Context!11149 (Cons!64745 (h!71193 (exprs!6074 (h!71194 zl!343))) (t!378427 (exprs!6074 (h!71194 zl!343))))))))))

(assert (=> d!1968579 (= (derivationStepZipperUp!1364 (Context!11149 (Cons!64745 (h!71193 (exprs!6074 (h!71194 zl!343))) (t!378427 (exprs!6074 (h!71194 zl!343))))) (h!71195 s!2326)) e!3814541)))

(declare-fun b!6271814 () Bool)

(assert (=> b!6271814 (= e!3814541 (set.union call!530446 (derivationStepZipperUp!1364 (Context!11149 (t!378427 (exprs!6074 (Context!11149 (Cons!64745 (h!71193 (exprs!6074 (h!71194 zl!343))) (t!378427 (exprs!6074 (h!71194 zl!343)))))))) (h!71195 s!2326))))))

(declare-fun bm!530441 () Bool)

(assert (=> bm!530441 (= call!530446 (derivationStepZipperDown!1438 (h!71193 (exprs!6074 (Context!11149 (Cons!64745 (h!71193 (exprs!6074 (h!71194 zl!343))) (t!378427 (exprs!6074 (h!71194 zl!343))))))) (Context!11149 (t!378427 (exprs!6074 (Context!11149 (Cons!64745 (h!71193 (exprs!6074 (h!71194 zl!343))) (t!378427 (exprs!6074 (h!71194 zl!343)))))))) (h!71195 s!2326)))))

(assert (= (and d!1968579 res!2587059) b!6271813))

(assert (= (and d!1968579 c!1136569) b!6271814))

(assert (= (and d!1968579 (not c!1136569)) b!6271812))

(assert (= (and b!6271812 c!1136568) b!6271811))

(assert (= (and b!6271812 (not c!1136568)) b!6271810))

(assert (= (or b!6271814 b!6271811) bm!530441))

(declare-fun m!7093648 () Bool)

(assert (=> b!6271813 m!7093648))

(declare-fun m!7093650 () Bool)

(assert (=> b!6271814 m!7093650))

(declare-fun m!7093652 () Bool)

(assert (=> bm!530441 m!7093652))

(assert (=> b!6271575 d!1968579))

(declare-fun b!6271815 () Bool)

(declare-fun e!3814543 () (Set Context!11148))

(assert (=> b!6271815 (= e!3814543 (as set.empty (Set Context!11148)))))

(declare-fun b!6271816 () Bool)

(declare-fun call!530447 () (Set Context!11148))

(assert (=> b!6271816 (= e!3814543 call!530447)))

(declare-fun b!6271817 () Bool)

(declare-fun e!3814544 () (Set Context!11148))

(assert (=> b!6271817 (= e!3814544 e!3814543)))

(declare-fun c!1136570 () Bool)

(assert (=> b!6271817 (= c!1136570 (is-Cons!64745 (exprs!6074 (h!71194 zl!343))))))

(declare-fun b!6271818 () Bool)

(declare-fun e!3814545 () Bool)

(assert (=> b!6271818 (= e!3814545 (nullable!6183 (h!71193 (exprs!6074 (h!71194 zl!343)))))))

(declare-fun d!1968581 () Bool)

(declare-fun c!1136571 () Bool)

(assert (=> d!1968581 (= c!1136571 e!3814545)))

(declare-fun res!2587060 () Bool)

(assert (=> d!1968581 (=> (not res!2587060) (not e!3814545))))

(assert (=> d!1968581 (= res!2587060 (is-Cons!64745 (exprs!6074 (h!71194 zl!343))))))

(assert (=> d!1968581 (= (derivationStepZipperUp!1364 (h!71194 zl!343) (h!71195 s!2326)) e!3814544)))

(declare-fun b!6271819 () Bool)

(assert (=> b!6271819 (= e!3814544 (set.union call!530447 (derivationStepZipperUp!1364 (Context!11149 (t!378427 (exprs!6074 (h!71194 zl!343)))) (h!71195 s!2326))))))

(declare-fun bm!530442 () Bool)

(assert (=> bm!530442 (= call!530447 (derivationStepZipperDown!1438 (h!71193 (exprs!6074 (h!71194 zl!343))) (Context!11149 (t!378427 (exprs!6074 (h!71194 zl!343)))) (h!71195 s!2326)))))

(assert (= (and d!1968581 res!2587060) b!6271818))

(assert (= (and d!1968581 c!1136571) b!6271819))

(assert (= (and d!1968581 (not c!1136571)) b!6271817))

(assert (= (and b!6271817 c!1136570) b!6271816))

(assert (= (and b!6271817 (not c!1136570)) b!6271815))

(assert (= (or b!6271819 b!6271816) bm!530442))

(assert (=> b!6271818 m!7093396))

(declare-fun m!7093654 () Bool)

(assert (=> b!6271819 m!7093654))

(declare-fun m!7093656 () Bool)

(assert (=> bm!530442 m!7093656))

(assert (=> b!6271575 d!1968581))

(declare-fun call!530464 () (Set Context!11148))

(declare-fun c!1136585 () Bool)

(declare-fun bm!530455 () Bool)

(declare-fun call!530462 () List!64869)

(declare-fun c!1136582 () Bool)

(declare-fun c!1136583 () Bool)

(assert (=> bm!530455 (= call!530464 (derivationStepZipperDown!1438 (ite c!1136585 (regOne!32893 (h!71193 (exprs!6074 (h!71194 zl!343)))) (ite c!1136583 (regTwo!32892 (h!71193 (exprs!6074 (h!71194 zl!343)))) (ite c!1136582 (regOne!32892 (h!71193 (exprs!6074 (h!71194 zl!343)))) (reg!16519 (h!71193 (exprs!6074 (h!71194 zl!343))))))) (ite (or c!1136585 c!1136583) lt!2352034 (Context!11149 call!530462)) (h!71195 s!2326)))))

(declare-fun b!6271842 () Bool)

(declare-fun e!3814559 () Bool)

(assert (=> b!6271842 (= c!1136583 e!3814559)))

(declare-fun res!2587063 () Bool)

(assert (=> b!6271842 (=> (not res!2587063) (not e!3814559))))

(assert (=> b!6271842 (= res!2587063 (is-Concat!25035 (h!71193 (exprs!6074 (h!71194 zl!343)))))))

(declare-fun e!3814558 () (Set Context!11148))

(declare-fun e!3814560 () (Set Context!11148))

(assert (=> b!6271842 (= e!3814558 e!3814560)))

(declare-fun b!6271843 () Bool)

(assert (=> b!6271843 (= e!3814559 (nullable!6183 (regOne!32892 (h!71193 (exprs!6074 (h!71194 zl!343))))))))

(declare-fun b!6271844 () Bool)

(declare-fun e!3814561 () (Set Context!11148))

(declare-fun call!530461 () (Set Context!11148))

(assert (=> b!6271844 (= e!3814561 call!530461)))

(declare-fun bm!530456 () Bool)

(declare-fun call!530460 () List!64869)

(declare-fun call!530465 () (Set Context!11148))

(assert (=> bm!530456 (= call!530465 (derivationStepZipperDown!1438 (ite c!1136585 (regTwo!32893 (h!71193 (exprs!6074 (h!71194 zl!343)))) (regOne!32892 (h!71193 (exprs!6074 (h!71194 zl!343))))) (ite c!1136585 lt!2352034 (Context!11149 call!530460)) (h!71195 s!2326)))))

(declare-fun b!6271845 () Bool)

(declare-fun e!3814562 () (Set Context!11148))

(assert (=> b!6271845 (= e!3814562 e!3814558)))

(assert (=> b!6271845 (= c!1136585 (is-Union!16190 (h!71193 (exprs!6074 (h!71194 zl!343)))))))

(declare-fun b!6271846 () Bool)

(assert (=> b!6271846 (= e!3814558 (set.union call!530464 call!530465))))

(declare-fun b!6271847 () Bool)

(declare-fun c!1136586 () Bool)

(assert (=> b!6271847 (= c!1136586 (is-Star!16190 (h!71193 (exprs!6074 (h!71194 zl!343)))))))

(declare-fun e!3814563 () (Set Context!11148))

(assert (=> b!6271847 (= e!3814563 e!3814561)))

(declare-fun d!1968583 () Bool)

(declare-fun c!1136584 () Bool)

(assert (=> d!1968583 (= c!1136584 (and (is-ElementMatch!16190 (h!71193 (exprs!6074 (h!71194 zl!343)))) (= (c!1136523 (h!71193 (exprs!6074 (h!71194 zl!343)))) (h!71195 s!2326))))))

(assert (=> d!1968583 (= (derivationStepZipperDown!1438 (h!71193 (exprs!6074 (h!71194 zl!343))) lt!2352034 (h!71195 s!2326)) e!3814562)))

(declare-fun bm!530457 () Bool)

(assert (=> bm!530457 (= call!530462 call!530460)))

(declare-fun bm!530458 () Bool)

(declare-fun call!530463 () (Set Context!11148))

(assert (=> bm!530458 (= call!530463 call!530464)))

(declare-fun b!6271848 () Bool)

(assert (=> b!6271848 (= e!3814560 e!3814563)))

(assert (=> b!6271848 (= c!1136582 (is-Concat!25035 (h!71193 (exprs!6074 (h!71194 zl!343)))))))

(declare-fun bm!530459 () Bool)

(assert (=> bm!530459 (= call!530461 call!530463)))

(declare-fun b!6271849 () Bool)

(assert (=> b!6271849 (= e!3814561 (as set.empty (Set Context!11148)))))

(declare-fun bm!530460 () Bool)

(declare-fun $colon$colon!2055 (List!64869 Regex!16190) List!64869)

(assert (=> bm!530460 (= call!530460 ($colon$colon!2055 (exprs!6074 lt!2352034) (ite (or c!1136583 c!1136582) (regTwo!32892 (h!71193 (exprs!6074 (h!71194 zl!343)))) (h!71193 (exprs!6074 (h!71194 zl!343))))))))

(declare-fun b!6271850 () Bool)

(assert (=> b!6271850 (= e!3814562 (set.insert lt!2352034 (as set.empty (Set Context!11148))))))

(declare-fun b!6271851 () Bool)

(assert (=> b!6271851 (= e!3814563 call!530461)))

(declare-fun b!6271852 () Bool)

(assert (=> b!6271852 (= e!3814560 (set.union call!530465 call!530463))))

(assert (= (and d!1968583 c!1136584) b!6271850))

(assert (= (and d!1968583 (not c!1136584)) b!6271845))

(assert (= (and b!6271845 c!1136585) b!6271846))

(assert (= (and b!6271845 (not c!1136585)) b!6271842))

(assert (= (and b!6271842 res!2587063) b!6271843))

(assert (= (and b!6271842 c!1136583) b!6271852))

(assert (= (and b!6271842 (not c!1136583)) b!6271848))

(assert (= (and b!6271848 c!1136582) b!6271851))

(assert (= (and b!6271848 (not c!1136582)) b!6271847))

(assert (= (and b!6271847 c!1136586) b!6271844))

(assert (= (and b!6271847 (not c!1136586)) b!6271849))

(assert (= (or b!6271851 b!6271844) bm!530457))

(assert (= (or b!6271851 b!6271844) bm!530459))

(assert (= (or b!6271852 bm!530457) bm!530460))

(assert (= (or b!6271852 bm!530459) bm!530458))

(assert (= (or b!6271846 b!6271852) bm!530456))

(assert (= (or b!6271846 bm!530458) bm!530455))

(declare-fun m!7093658 () Bool)

(assert (=> b!6271850 m!7093658))

(declare-fun m!7093660 () Bool)

(assert (=> b!6271843 m!7093660))

(declare-fun m!7093662 () Bool)

(assert (=> bm!530460 m!7093662))

(declare-fun m!7093664 () Bool)

(assert (=> bm!530456 m!7093664))

(declare-fun m!7093666 () Bool)

(assert (=> bm!530455 m!7093666))

(assert (=> b!6271575 d!1968583))

(declare-fun d!1968585 () Bool)

(declare-fun nullableFct!2135 (Regex!16190) Bool)

(assert (=> d!1968585 (= (nullable!6183 (h!71193 (exprs!6074 (h!71194 zl!343)))) (nullableFct!2135 (h!71193 (exprs!6074 (h!71194 zl!343)))))))

(declare-fun bs!1566520 () Bool)

(assert (= bs!1566520 d!1968585))

(declare-fun m!7093668 () Bool)

(assert (=> bs!1566520 m!7093668))

(assert (=> b!6271575 d!1968585))

(declare-fun d!1968587 () Bool)

(assert (=> d!1968587 (= (flatMap!1695 z!1189 lambda!343554) (dynLambda!25608 lambda!343554 (h!71194 zl!343)))))

(declare-fun lt!2352177 () Unit!158091)

(assert (=> d!1968587 (= lt!2352177 (choose!46527 z!1189 (h!71194 zl!343) lambda!343554))))

(assert (=> d!1968587 (= z!1189 (set.insert (h!71194 zl!343) (as set.empty (Set Context!11148))))))

(assert (=> d!1968587 (= (lemmaFlatMapOnSingletonSet!1221 z!1189 (h!71194 zl!343) lambda!343554) lt!2352177)))

(declare-fun b_lambda!238847 () Bool)

(assert (=> (not b_lambda!238847) (not d!1968587)))

(declare-fun bs!1566521 () Bool)

(assert (= bs!1566521 d!1968587))

(assert (=> bs!1566521 m!7093386))

(declare-fun m!7093670 () Bool)

(assert (=> bs!1566521 m!7093670))

(declare-fun m!7093672 () Bool)

(assert (=> bs!1566521 m!7093672))

(declare-fun m!7093674 () Bool)

(assert (=> bs!1566521 m!7093674))

(assert (=> b!6271575 d!1968587))

(declare-fun d!1968589 () Bool)

(declare-fun c!1136589 () Bool)

(declare-fun isEmpty!36785 (List!64871) Bool)

(assert (=> d!1968589 (= c!1136589 (isEmpty!36785 (t!378429 s!2326)))))

(declare-fun e!3814566 () Bool)

(assert (=> d!1968589 (= (matchZipper!2202 lt!2352027 (t!378429 s!2326)) e!3814566)))

(declare-fun b!6271857 () Bool)

(declare-fun nullableZipper!1960 ((Set Context!11148)) Bool)

(assert (=> b!6271857 (= e!3814566 (nullableZipper!1960 lt!2352027))))

(declare-fun b!6271858 () Bool)

(declare-fun head!12881 (List!64871) C!32650)

(declare-fun tail!11966 (List!64871) List!64871)

(assert (=> b!6271858 (= e!3814566 (matchZipper!2202 (derivationStepZipper!2156 lt!2352027 (head!12881 (t!378429 s!2326))) (tail!11966 (t!378429 s!2326))))))

(assert (= (and d!1968589 c!1136589) b!6271857))

(assert (= (and d!1968589 (not c!1136589)) b!6271858))

(declare-fun m!7093676 () Bool)

(assert (=> d!1968589 m!7093676))

(declare-fun m!7093678 () Bool)

(assert (=> b!6271857 m!7093678))

(declare-fun m!7093680 () Bool)

(assert (=> b!6271858 m!7093680))

(assert (=> b!6271858 m!7093680))

(declare-fun m!7093682 () Bool)

(assert (=> b!6271858 m!7093682))

(declare-fun m!7093684 () Bool)

(assert (=> b!6271858 m!7093684))

(assert (=> b!6271858 m!7093682))

(assert (=> b!6271858 m!7093684))

(declare-fun m!7093686 () Bool)

(assert (=> b!6271858 m!7093686))

(assert (=> b!6271554 d!1968589))

(declare-fun d!1968591 () Bool)

(declare-fun c!1136590 () Bool)

(assert (=> d!1968591 (= c!1136590 (isEmpty!36785 (t!378429 s!2326)))))

(declare-fun e!3814567 () Bool)

(assert (=> d!1968591 (= (matchZipper!2202 lt!2352026 (t!378429 s!2326)) e!3814567)))

(declare-fun b!6271859 () Bool)

(assert (=> b!6271859 (= e!3814567 (nullableZipper!1960 lt!2352026))))

(declare-fun b!6271860 () Bool)

(assert (=> b!6271860 (= e!3814567 (matchZipper!2202 (derivationStepZipper!2156 lt!2352026 (head!12881 (t!378429 s!2326))) (tail!11966 (t!378429 s!2326))))))

(assert (= (and d!1968591 c!1136590) b!6271859))

(assert (= (and d!1968591 (not c!1136590)) b!6271860))

(assert (=> d!1968591 m!7093676))

(declare-fun m!7093688 () Bool)

(assert (=> b!6271859 m!7093688))

(assert (=> b!6271860 m!7093680))

(assert (=> b!6271860 m!7093680))

(declare-fun m!7093690 () Bool)

(assert (=> b!6271860 m!7093690))

(assert (=> b!6271860 m!7093684))

(assert (=> b!6271860 m!7093690))

(assert (=> b!6271860 m!7093684))

(declare-fun m!7093692 () Bool)

(assert (=> b!6271860 m!7093692))

(assert (=> b!6271554 d!1968591))

(declare-fun d!1968593 () Bool)

(declare-fun c!1136591 () Bool)

(assert (=> d!1968593 (= c!1136591 (isEmpty!36785 (t!378429 s!2326)))))

(declare-fun e!3814568 () Bool)

(assert (=> d!1968593 (= (matchZipper!2202 lt!2352044 (t!378429 s!2326)) e!3814568)))

(declare-fun b!6271861 () Bool)

(assert (=> b!6271861 (= e!3814568 (nullableZipper!1960 lt!2352044))))

(declare-fun b!6271862 () Bool)

(assert (=> b!6271862 (= e!3814568 (matchZipper!2202 (derivationStepZipper!2156 lt!2352044 (head!12881 (t!378429 s!2326))) (tail!11966 (t!378429 s!2326))))))

(assert (= (and d!1968593 c!1136591) b!6271861))

(assert (= (and d!1968593 (not c!1136591)) b!6271862))

(assert (=> d!1968593 m!7093676))

(declare-fun m!7093694 () Bool)

(assert (=> b!6271861 m!7093694))

(assert (=> b!6271862 m!7093680))

(assert (=> b!6271862 m!7093680))

(declare-fun m!7093696 () Bool)

(assert (=> b!6271862 m!7093696))

(assert (=> b!6271862 m!7093684))

(assert (=> b!6271862 m!7093696))

(assert (=> b!6271862 m!7093684))

(declare-fun m!7093698 () Bool)

(assert (=> b!6271862 m!7093698))

(assert (=> b!6271554 d!1968593))

(declare-fun d!1968595 () Bool)

(declare-fun e!3814571 () Bool)

(assert (=> d!1968595 (= (matchZipper!2202 (set.union lt!2352044 lt!2352019) (t!378429 s!2326)) e!3814571)))

(declare-fun res!2587066 () Bool)

(assert (=> d!1968595 (=> res!2587066 e!3814571)))

(assert (=> d!1968595 (= res!2587066 (matchZipper!2202 lt!2352044 (t!378429 s!2326)))))

(declare-fun lt!2352180 () Unit!158091)

(declare-fun choose!46531 ((Set Context!11148) (Set Context!11148) List!64871) Unit!158091)

(assert (=> d!1968595 (= lt!2352180 (choose!46531 lt!2352044 lt!2352019 (t!378429 s!2326)))))

(assert (=> d!1968595 (= (lemmaZipperConcatMatchesSameAsBothZippers!1021 lt!2352044 lt!2352019 (t!378429 s!2326)) lt!2352180)))

(declare-fun b!6271865 () Bool)

(assert (=> b!6271865 (= e!3814571 (matchZipper!2202 lt!2352019 (t!378429 s!2326)))))

(assert (= (and d!1968595 (not res!2587066)) b!6271865))

(declare-fun m!7093700 () Bool)

(assert (=> d!1968595 m!7093700))

(assert (=> d!1968595 m!7093408))

(declare-fun m!7093702 () Bool)

(assert (=> d!1968595 m!7093702))

(assert (=> b!6271865 m!7093322))

(assert (=> b!6271554 d!1968595))

(declare-fun b!6271872 () Bool)

(assert (=> b!6271872 true))

(declare-fun bs!1566522 () Bool)

(declare-fun b!6271874 () Bool)

(assert (= bs!1566522 (and b!6271874 b!6271872)))

(declare-fun lambda!343595 () Int)

(declare-fun lt!2352190 () Int)

(declare-fun lt!2352191 () Int)

(declare-fun lambda!343596 () Int)

(assert (=> bs!1566522 (= (= lt!2352191 lt!2352190) (= lambda!343596 lambda!343595))))

(assert (=> b!6271874 true))

(declare-fun d!1968597 () Bool)

(declare-fun e!3814577 () Bool)

(assert (=> d!1968597 e!3814577))

(declare-fun res!2587069 () Bool)

(assert (=> d!1968597 (=> (not res!2587069) (not e!3814577))))

(assert (=> d!1968597 (= res!2587069 (>= lt!2352191 0))))

(declare-fun e!3814576 () Int)

(assert (=> d!1968597 (= lt!2352191 e!3814576)))

(declare-fun c!1136600 () Bool)

(assert (=> d!1968597 (= c!1136600 (is-Cons!64746 lt!2352025))))

(assert (=> d!1968597 (= (zipperDepth!315 lt!2352025) lt!2352191)))

(assert (=> b!6271872 (= e!3814576 lt!2352190)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!208 (Context!11148) Int)

(assert (=> b!6271872 (= lt!2352190 (maxBigInt!0 (contextDepth!208 (h!71194 lt!2352025)) (zipperDepth!315 (t!378428 lt!2352025))))))

(declare-fun lt!2352189 () Unit!158091)

(declare-fun lambda!343594 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!192 (List!64870 Int Int Int) Unit!158091)

(assert (=> b!6271872 (= lt!2352189 (lemmaForallContextDepthBiggerThanTransitive!192 (t!378428 lt!2352025) lt!2352190 (zipperDepth!315 (t!378428 lt!2352025)) lambda!343594))))

(declare-fun forall!15319 (List!64870 Int) Bool)

(assert (=> b!6271872 (forall!15319 (t!378428 lt!2352025) lambda!343595)))

(declare-fun lt!2352192 () Unit!158091)

(assert (=> b!6271872 (= lt!2352192 lt!2352189)))

(declare-fun b!6271873 () Bool)

(assert (=> b!6271873 (= e!3814576 0)))

(assert (=> b!6271874 (= e!3814577 (forall!15319 lt!2352025 lambda!343596))))

(assert (= (and d!1968597 c!1136600) b!6271872))

(assert (= (and d!1968597 (not c!1136600)) b!6271873))

(assert (= (and d!1968597 res!2587069) b!6271874))

(declare-fun m!7093704 () Bool)

(assert (=> b!6271872 m!7093704))

(declare-fun m!7093706 () Bool)

(assert (=> b!6271872 m!7093706))

(declare-fun m!7093708 () Bool)

(assert (=> b!6271872 m!7093708))

(assert (=> b!6271872 m!7093704))

(declare-fun m!7093710 () Bool)

(assert (=> b!6271872 m!7093710))

(assert (=> b!6271872 m!7093708))

(assert (=> b!6271872 m!7093704))

(declare-fun m!7093712 () Bool)

(assert (=> b!6271872 m!7093712))

(declare-fun m!7093714 () Bool)

(assert (=> b!6271874 m!7093714))

(assert (=> b!6271548 d!1968597))

(declare-fun bs!1566523 () Bool)

(declare-fun b!6271877 () Bool)

(assert (= bs!1566523 (and b!6271877 b!6271872)))

(declare-fun lambda!343597 () Int)

(assert (=> bs!1566523 (= lambda!343597 lambda!343594)))

(declare-fun lt!2352194 () Int)

(declare-fun lambda!343598 () Int)

(assert (=> bs!1566523 (= (= lt!2352194 lt!2352190) (= lambda!343598 lambda!343595))))

(declare-fun bs!1566524 () Bool)

(assert (= bs!1566524 (and b!6271877 b!6271874)))

(assert (=> bs!1566524 (= (= lt!2352194 lt!2352191) (= lambda!343598 lambda!343596))))

(assert (=> b!6271877 true))

(declare-fun bs!1566525 () Bool)

(declare-fun b!6271879 () Bool)

(assert (= bs!1566525 (and b!6271879 b!6271872)))

(declare-fun lt!2352195 () Int)

(declare-fun lambda!343599 () Int)

(assert (=> bs!1566525 (= (= lt!2352195 lt!2352190) (= lambda!343599 lambda!343595))))

(declare-fun bs!1566526 () Bool)

(assert (= bs!1566526 (and b!6271879 b!6271874)))

(assert (=> bs!1566526 (= (= lt!2352195 lt!2352191) (= lambda!343599 lambda!343596))))

(declare-fun bs!1566527 () Bool)

(assert (= bs!1566527 (and b!6271879 b!6271877)))

(assert (=> bs!1566527 (= (= lt!2352195 lt!2352194) (= lambda!343599 lambda!343598))))

(assert (=> b!6271879 true))

(declare-fun d!1968599 () Bool)

(declare-fun e!3814579 () Bool)

(assert (=> d!1968599 e!3814579))

(declare-fun res!2587070 () Bool)

(assert (=> d!1968599 (=> (not res!2587070) (not e!3814579))))

(assert (=> d!1968599 (= res!2587070 (>= lt!2352195 0))))

(declare-fun e!3814578 () Int)

(assert (=> d!1968599 (= lt!2352195 e!3814578)))

(declare-fun c!1136601 () Bool)

(assert (=> d!1968599 (= c!1136601 (is-Cons!64746 zl!343))))

(assert (=> d!1968599 (= (zipperDepth!315 zl!343) lt!2352195)))

(assert (=> b!6271877 (= e!3814578 lt!2352194)))

(assert (=> b!6271877 (= lt!2352194 (maxBigInt!0 (contextDepth!208 (h!71194 zl!343)) (zipperDepth!315 (t!378428 zl!343))))))

(declare-fun lt!2352193 () Unit!158091)

(assert (=> b!6271877 (= lt!2352193 (lemmaForallContextDepthBiggerThanTransitive!192 (t!378428 zl!343) lt!2352194 (zipperDepth!315 (t!378428 zl!343)) lambda!343597))))

(assert (=> b!6271877 (forall!15319 (t!378428 zl!343) lambda!343598)))

(declare-fun lt!2352196 () Unit!158091)

(assert (=> b!6271877 (= lt!2352196 lt!2352193)))

(declare-fun b!6271878 () Bool)

(assert (=> b!6271878 (= e!3814578 0)))

(assert (=> b!6271879 (= e!3814579 (forall!15319 zl!343 lambda!343599))))

(assert (= (and d!1968599 c!1136601) b!6271877))

(assert (= (and d!1968599 (not c!1136601)) b!6271878))

(assert (= (and d!1968599 res!2587070) b!6271879))

(declare-fun m!7093716 () Bool)

(assert (=> b!6271877 m!7093716))

(declare-fun m!7093718 () Bool)

(assert (=> b!6271877 m!7093718))

(declare-fun m!7093720 () Bool)

(assert (=> b!6271877 m!7093720))

(assert (=> b!6271877 m!7093716))

(declare-fun m!7093722 () Bool)

(assert (=> b!6271877 m!7093722))

(assert (=> b!6271877 m!7093720))

(assert (=> b!6271877 m!7093716))

(declare-fun m!7093724 () Bool)

(assert (=> b!6271877 m!7093724))

(declare-fun m!7093726 () Bool)

(assert (=> b!6271879 m!7093726))

(assert (=> b!6271548 d!1968599))

(declare-fun e!3814580 () Bool)

(declare-fun d!1968601 () Bool)

(assert (=> d!1968601 (= (matchZipper!2202 (set.union lt!2352027 lt!2352038) (t!378429 s!2326)) e!3814580)))

(declare-fun res!2587071 () Bool)

(assert (=> d!1968601 (=> res!2587071 e!3814580)))

(assert (=> d!1968601 (= res!2587071 (matchZipper!2202 lt!2352027 (t!378429 s!2326)))))

(declare-fun lt!2352197 () Unit!158091)

(assert (=> d!1968601 (= lt!2352197 (choose!46531 lt!2352027 lt!2352038 (t!378429 s!2326)))))

(assert (=> d!1968601 (= (lemmaZipperConcatMatchesSameAsBothZippers!1021 lt!2352027 lt!2352038 (t!378429 s!2326)) lt!2352197)))

(declare-fun b!6271880 () Bool)

(assert (=> b!6271880 (= e!3814580 (matchZipper!2202 lt!2352038 (t!378429 s!2326)))))

(assert (= (and d!1968601 (not res!2587071)) b!6271880))

(assert (=> d!1968601 m!7093356))

(assert (=> d!1968601 m!7093354))

(declare-fun m!7093728 () Bool)

(assert (=> d!1968601 m!7093728))

(assert (=> b!6271880 m!7093324))

(assert (=> b!6271568 d!1968601))

(assert (=> b!6271568 d!1968589))

(declare-fun d!1968603 () Bool)

(declare-fun c!1136602 () Bool)

(assert (=> d!1968603 (= c!1136602 (isEmpty!36785 (t!378429 s!2326)))))

(declare-fun e!3814581 () Bool)

(assert (=> d!1968603 (= (matchZipper!2202 (set.union lt!2352027 lt!2352038) (t!378429 s!2326)) e!3814581)))

(declare-fun b!6271881 () Bool)

(assert (=> b!6271881 (= e!3814581 (nullableZipper!1960 (set.union lt!2352027 lt!2352038)))))

(declare-fun b!6271882 () Bool)

(assert (=> b!6271882 (= e!3814581 (matchZipper!2202 (derivationStepZipper!2156 (set.union lt!2352027 lt!2352038) (head!12881 (t!378429 s!2326))) (tail!11966 (t!378429 s!2326))))))

(assert (= (and d!1968603 c!1136602) b!6271881))

(assert (= (and d!1968603 (not c!1136602)) b!6271882))

(assert (=> d!1968603 m!7093676))

(declare-fun m!7093730 () Bool)

(assert (=> b!6271881 m!7093730))

(assert (=> b!6271882 m!7093680))

(assert (=> b!6271882 m!7093680))

(declare-fun m!7093732 () Bool)

(assert (=> b!6271882 m!7093732))

(assert (=> b!6271882 m!7093684))

(assert (=> b!6271882 m!7093732))

(assert (=> b!6271882 m!7093684))

(declare-fun m!7093734 () Bool)

(assert (=> b!6271882 m!7093734))

(assert (=> b!6271568 d!1968603))

(declare-fun bs!1566528 () Bool)

(declare-fun d!1968605 () Bool)

(assert (= bs!1566528 (and d!1968605 d!1968559)))

(declare-fun lambda!343602 () Int)

(assert (=> bs!1566528 (= lambda!343602 lambda!343575)))

(declare-fun bs!1566529 () Bool)

(assert (= bs!1566529 (and d!1968605 d!1968561)))

(assert (=> bs!1566529 (= lambda!343602 lambda!343578)))

(assert (=> d!1968605 (= (inv!83723 (h!71194 zl!343)) (forall!15318 (exprs!6074 (h!71194 zl!343)) lambda!343602))))

(declare-fun bs!1566530 () Bool)

(assert (= bs!1566530 d!1968605))

(declare-fun m!7093736 () Bool)

(assert (=> bs!1566530 m!7093736))

(assert (=> b!6271547 d!1968605))

(declare-fun bs!1566531 () Bool)

(declare-fun d!1968607 () Bool)

(assert (= bs!1566531 (and d!1968607 d!1968559)))

(declare-fun lambda!343603 () Int)

(assert (=> bs!1566531 (= lambda!343603 lambda!343575)))

(declare-fun bs!1566532 () Bool)

(assert (= bs!1566532 (and d!1968607 d!1968561)))

(assert (=> bs!1566532 (= lambda!343603 lambda!343578)))

(declare-fun bs!1566533 () Bool)

(assert (= bs!1566533 (and d!1968607 d!1968605)))

(assert (=> bs!1566533 (= lambda!343603 lambda!343602)))

(assert (=> d!1968607 (= (inv!83723 setElem!42653) (forall!15318 (exprs!6074 setElem!42653) lambda!343603))))

(declare-fun bs!1566534 () Bool)

(assert (= bs!1566534 d!1968607))

(declare-fun m!7093738 () Bool)

(assert (=> bs!1566534 m!7093738))

(assert (=> setNonEmpty!42653 d!1968607))

(declare-fun d!1968609 () Bool)

(assert (=> d!1968609 (= (nullable!6183 (regOne!32892 (regOne!32892 r!7292))) (nullableFct!2135 (regOne!32892 (regOne!32892 r!7292))))))

(declare-fun bs!1566535 () Bool)

(assert (= bs!1566535 d!1968609))

(declare-fun m!7093740 () Bool)

(assert (=> bs!1566535 m!7093740))

(assert (=> b!6271551 d!1968609))

(declare-fun d!1968611 () Bool)

(declare-fun lt!2352200 () Int)

(assert (=> d!1968611 (>= lt!2352200 0)))

(declare-fun e!3814584 () Int)

(assert (=> d!1968611 (= lt!2352200 e!3814584)))

(declare-fun c!1136605 () Bool)

(assert (=> d!1968611 (= c!1136605 (is-Cons!64746 lt!2352025))))

(assert (=> d!1968611 (= (zipperDepthTotal!343 lt!2352025) lt!2352200)))

(declare-fun b!6271887 () Bool)

(assert (=> b!6271887 (= e!3814584 (+ (contextDepthTotal!313 (h!71194 lt!2352025)) (zipperDepthTotal!343 (t!378428 lt!2352025))))))

(declare-fun b!6271888 () Bool)

(assert (=> b!6271888 (= e!3814584 0)))

(assert (= (and d!1968611 c!1136605) b!6271887))

(assert (= (and d!1968611 (not c!1136605)) b!6271888))

(declare-fun m!7093742 () Bool)

(assert (=> b!6271887 m!7093742))

(declare-fun m!7093744 () Bool)

(assert (=> b!6271887 m!7093744))

(assert (=> b!6271550 d!1968611))

(declare-fun d!1968613 () Bool)

(declare-fun lt!2352201 () Int)

(assert (=> d!1968613 (>= lt!2352201 0)))

(declare-fun e!3814585 () Int)

(assert (=> d!1968613 (= lt!2352201 e!3814585)))

(declare-fun c!1136606 () Bool)

(assert (=> d!1968613 (= c!1136606 (is-Cons!64746 zl!343))))

(assert (=> d!1968613 (= (zipperDepthTotal!343 zl!343) lt!2352201)))

(declare-fun b!6271889 () Bool)

(assert (=> b!6271889 (= e!3814585 (+ (contextDepthTotal!313 (h!71194 zl!343)) (zipperDepthTotal!343 (t!378428 zl!343))))))

(declare-fun b!6271890 () Bool)

(assert (=> b!6271890 (= e!3814585 0)))

(assert (= (and d!1968613 c!1136606) b!6271889))

(assert (= (and d!1968613 (not c!1136606)) b!6271890))

(assert (=> b!6271889 m!7093378))

(declare-fun m!7093746 () Bool)

(assert (=> b!6271889 m!7093746))

(assert (=> b!6271550 d!1968613))

(declare-fun bs!1566536 () Bool)

(declare-fun d!1968615 () Bool)

(assert (= bs!1566536 (and d!1968615 d!1968559)))

(declare-fun lambda!343606 () Int)

(assert (=> bs!1566536 (= lambda!343606 lambda!343575)))

(declare-fun bs!1566537 () Bool)

(assert (= bs!1566537 (and d!1968615 d!1968561)))

(assert (=> bs!1566537 (= lambda!343606 lambda!343578)))

(declare-fun bs!1566538 () Bool)

(assert (= bs!1566538 (and d!1968615 d!1968605)))

(assert (=> bs!1566538 (= lambda!343606 lambda!343602)))

(declare-fun bs!1566539 () Bool)

(assert (= bs!1566539 (and d!1968615 d!1968607)))

(assert (=> bs!1566539 (= lambda!343606 lambda!343603)))

(declare-fun b!6271911 () Bool)

(declare-fun e!3814601 () Regex!16190)

(assert (=> b!6271911 (= e!3814601 EmptyExpr!16190)))

(declare-fun b!6271912 () Bool)

(declare-fun e!3814602 () Regex!16190)

(assert (=> b!6271912 (= e!3814602 e!3814601)))

(declare-fun c!1136617 () Bool)

(assert (=> b!6271912 (= c!1136617 (is-Cons!64745 (exprs!6074 (h!71194 zl!343))))))

(declare-fun b!6271913 () Bool)

(assert (=> b!6271913 (= e!3814601 (Concat!25035 (h!71193 (exprs!6074 (h!71194 zl!343))) (generalisedConcat!1787 (t!378427 (exprs!6074 (h!71194 zl!343))))))))

(declare-fun b!6271914 () Bool)

(assert (=> b!6271914 (= e!3814602 (h!71193 (exprs!6074 (h!71194 zl!343))))))

(declare-fun b!6271915 () Bool)

(declare-fun e!3814600 () Bool)

(assert (=> b!6271915 (= e!3814600 (isEmpty!36781 (t!378427 (exprs!6074 (h!71194 zl!343)))))))

(declare-fun b!6271916 () Bool)

(declare-fun e!3814598 () Bool)

(declare-fun e!3814599 () Bool)

(assert (=> b!6271916 (= e!3814598 e!3814599)))

(declare-fun c!1136616 () Bool)

(assert (=> b!6271916 (= c!1136616 (isEmpty!36781 (tail!11965 (exprs!6074 (h!71194 zl!343)))))))

(declare-fun b!6271917 () Bool)

(declare-fun e!3814603 () Bool)

(assert (=> b!6271917 (= e!3814603 e!3814598)))

(declare-fun c!1136618 () Bool)

(assert (=> b!6271917 (= c!1136618 (isEmpty!36781 (exprs!6074 (h!71194 zl!343))))))

(assert (=> d!1968615 e!3814603))

(declare-fun res!2587076 () Bool)

(assert (=> d!1968615 (=> (not res!2587076) (not e!3814603))))

(declare-fun lt!2352204 () Regex!16190)

(assert (=> d!1968615 (= res!2587076 (validRegex!7926 lt!2352204))))

(assert (=> d!1968615 (= lt!2352204 e!3814602)))

(declare-fun c!1136615 () Bool)

(assert (=> d!1968615 (= c!1136615 e!3814600)))

(declare-fun res!2587077 () Bool)

(assert (=> d!1968615 (=> (not res!2587077) (not e!3814600))))

(assert (=> d!1968615 (= res!2587077 (is-Cons!64745 (exprs!6074 (h!71194 zl!343))))))

(assert (=> d!1968615 (forall!15318 (exprs!6074 (h!71194 zl!343)) lambda!343606)))

(assert (=> d!1968615 (= (generalisedConcat!1787 (exprs!6074 (h!71194 zl!343))) lt!2352204)))

(declare-fun b!6271918 () Bool)

(assert (=> b!6271918 (= e!3814599 (= lt!2352204 (head!12880 (exprs!6074 (h!71194 zl!343)))))))

(declare-fun b!6271919 () Bool)

(declare-fun isConcat!1119 (Regex!16190) Bool)

(assert (=> b!6271919 (= e!3814599 (isConcat!1119 lt!2352204))))

(declare-fun b!6271920 () Bool)

(declare-fun isEmptyExpr!1596 (Regex!16190) Bool)

(assert (=> b!6271920 (= e!3814598 (isEmptyExpr!1596 lt!2352204))))

(assert (= (and d!1968615 res!2587077) b!6271915))

(assert (= (and d!1968615 c!1136615) b!6271914))

(assert (= (and d!1968615 (not c!1136615)) b!6271912))

(assert (= (and b!6271912 c!1136617) b!6271913))

(assert (= (and b!6271912 (not c!1136617)) b!6271911))

(assert (= (and d!1968615 res!2587076) b!6271917))

(assert (= (and b!6271917 c!1136618) b!6271920))

(assert (= (and b!6271917 (not c!1136618)) b!6271916))

(assert (= (and b!6271916 c!1136616) b!6271918))

(assert (= (and b!6271916 (not c!1136616)) b!6271919))

(assert (=> b!6271915 m!7093320))

(declare-fun m!7093748 () Bool)

(assert (=> b!6271917 m!7093748))

(declare-fun m!7093750 () Bool)

(assert (=> b!6271916 m!7093750))

(assert (=> b!6271916 m!7093750))

(declare-fun m!7093752 () Bool)

(assert (=> b!6271916 m!7093752))

(declare-fun m!7093754 () Bool)

(assert (=> b!6271920 m!7093754))

(declare-fun m!7093756 () Bool)

(assert (=> b!6271918 m!7093756))

(declare-fun m!7093758 () Bool)

(assert (=> b!6271913 m!7093758))

(declare-fun m!7093760 () Bool)

(assert (=> b!6271919 m!7093760))

(declare-fun m!7093762 () Bool)

(assert (=> d!1968615 m!7093762))

(declare-fun m!7093764 () Bool)

(assert (=> d!1968615 m!7093764))

(assert (=> b!6271570 d!1968615))

(declare-fun call!530470 () (Set Context!11148))

(declare-fun c!1136620 () Bool)

(declare-fun c!1136619 () Bool)

(declare-fun c!1136622 () Bool)

(declare-fun call!530468 () List!64869)

(declare-fun bm!530461 () Bool)

(assert (=> bm!530461 (= call!530470 (derivationStepZipperDown!1438 (ite c!1136622 (regOne!32893 (regTwo!32892 (regOne!32892 r!7292))) (ite c!1136620 (regTwo!32892 (regTwo!32892 (regOne!32892 r!7292))) (ite c!1136619 (regOne!32892 (regTwo!32892 (regOne!32892 r!7292))) (reg!16519 (regTwo!32892 (regOne!32892 r!7292)))))) (ite (or c!1136622 c!1136620) lt!2352034 (Context!11149 call!530468)) (h!71195 s!2326)))))

(declare-fun b!6271921 () Bool)

(declare-fun e!3814605 () Bool)

(assert (=> b!6271921 (= c!1136620 e!3814605)))

(declare-fun res!2587078 () Bool)

(assert (=> b!6271921 (=> (not res!2587078) (not e!3814605))))

(assert (=> b!6271921 (= res!2587078 (is-Concat!25035 (regTwo!32892 (regOne!32892 r!7292))))))

(declare-fun e!3814604 () (Set Context!11148))

(declare-fun e!3814606 () (Set Context!11148))

(assert (=> b!6271921 (= e!3814604 e!3814606)))

(declare-fun b!6271922 () Bool)

(assert (=> b!6271922 (= e!3814605 (nullable!6183 (regOne!32892 (regTwo!32892 (regOne!32892 r!7292)))))))

(declare-fun b!6271923 () Bool)

(declare-fun e!3814607 () (Set Context!11148))

(declare-fun call!530467 () (Set Context!11148))

(assert (=> b!6271923 (= e!3814607 call!530467)))

(declare-fun call!530466 () List!64869)

(declare-fun call!530471 () (Set Context!11148))

(declare-fun bm!530462 () Bool)

(assert (=> bm!530462 (= call!530471 (derivationStepZipperDown!1438 (ite c!1136622 (regTwo!32893 (regTwo!32892 (regOne!32892 r!7292))) (regOne!32892 (regTwo!32892 (regOne!32892 r!7292)))) (ite c!1136622 lt!2352034 (Context!11149 call!530466)) (h!71195 s!2326)))))

(declare-fun b!6271924 () Bool)

(declare-fun e!3814608 () (Set Context!11148))

(assert (=> b!6271924 (= e!3814608 e!3814604)))

(assert (=> b!6271924 (= c!1136622 (is-Union!16190 (regTwo!32892 (regOne!32892 r!7292))))))

(declare-fun b!6271925 () Bool)

(assert (=> b!6271925 (= e!3814604 (set.union call!530470 call!530471))))

(declare-fun b!6271926 () Bool)

(declare-fun c!1136623 () Bool)

(assert (=> b!6271926 (= c!1136623 (is-Star!16190 (regTwo!32892 (regOne!32892 r!7292))))))

(declare-fun e!3814609 () (Set Context!11148))

(assert (=> b!6271926 (= e!3814609 e!3814607)))

(declare-fun d!1968617 () Bool)

(declare-fun c!1136621 () Bool)

(assert (=> d!1968617 (= c!1136621 (and (is-ElementMatch!16190 (regTwo!32892 (regOne!32892 r!7292))) (= (c!1136523 (regTwo!32892 (regOne!32892 r!7292))) (h!71195 s!2326))))))

(assert (=> d!1968617 (= (derivationStepZipperDown!1438 (regTwo!32892 (regOne!32892 r!7292)) lt!2352034 (h!71195 s!2326)) e!3814608)))

(declare-fun bm!530463 () Bool)

(assert (=> bm!530463 (= call!530468 call!530466)))

(declare-fun bm!530464 () Bool)

(declare-fun call!530469 () (Set Context!11148))

(assert (=> bm!530464 (= call!530469 call!530470)))

(declare-fun b!6271927 () Bool)

(assert (=> b!6271927 (= e!3814606 e!3814609)))

(assert (=> b!6271927 (= c!1136619 (is-Concat!25035 (regTwo!32892 (regOne!32892 r!7292))))))

(declare-fun bm!530465 () Bool)

(assert (=> bm!530465 (= call!530467 call!530469)))

(declare-fun b!6271928 () Bool)

(assert (=> b!6271928 (= e!3814607 (as set.empty (Set Context!11148)))))

(declare-fun bm!530466 () Bool)

(assert (=> bm!530466 (= call!530466 ($colon$colon!2055 (exprs!6074 lt!2352034) (ite (or c!1136620 c!1136619) (regTwo!32892 (regTwo!32892 (regOne!32892 r!7292))) (regTwo!32892 (regOne!32892 r!7292)))))))

(declare-fun b!6271929 () Bool)

(assert (=> b!6271929 (= e!3814608 (set.insert lt!2352034 (as set.empty (Set Context!11148))))))

(declare-fun b!6271930 () Bool)

(assert (=> b!6271930 (= e!3814609 call!530467)))

(declare-fun b!6271931 () Bool)

(assert (=> b!6271931 (= e!3814606 (set.union call!530471 call!530469))))

(assert (= (and d!1968617 c!1136621) b!6271929))

(assert (= (and d!1968617 (not c!1136621)) b!6271924))

(assert (= (and b!6271924 c!1136622) b!6271925))

(assert (= (and b!6271924 (not c!1136622)) b!6271921))

(assert (= (and b!6271921 res!2587078) b!6271922))

(assert (= (and b!6271921 c!1136620) b!6271931))

(assert (= (and b!6271921 (not c!1136620)) b!6271927))

(assert (= (and b!6271927 c!1136619) b!6271930))

(assert (= (and b!6271927 (not c!1136619)) b!6271926))

(assert (= (and b!6271926 c!1136623) b!6271923))

(assert (= (and b!6271926 (not c!1136623)) b!6271928))

(assert (= (or b!6271930 b!6271923) bm!530463))

(assert (= (or b!6271930 b!6271923) bm!530465))

(assert (= (or b!6271931 bm!530463) bm!530466))

(assert (= (or b!6271931 bm!530465) bm!530464))

(assert (= (or b!6271925 b!6271931) bm!530462))

(assert (= (or b!6271925 bm!530464) bm!530461))

(assert (=> b!6271929 m!7093658))

(declare-fun m!7093766 () Bool)

(assert (=> b!6271922 m!7093766))

(declare-fun m!7093768 () Bool)

(assert (=> bm!530466 m!7093768))

(declare-fun m!7093770 () Bool)

(assert (=> bm!530462 m!7093770))

(declare-fun m!7093772 () Bool)

(assert (=> bm!530461 m!7093772))

(assert (=> b!6271549 d!1968617))

(declare-fun call!530474 () List!64869)

(declare-fun call!530476 () (Set Context!11148))

(declare-fun c!1136627 () Bool)

(declare-fun c!1136625 () Bool)

(declare-fun c!1136624 () Bool)

(declare-fun bm!530467 () Bool)

(assert (=> bm!530467 (= call!530476 (derivationStepZipperDown!1438 (ite c!1136627 (regOne!32893 (regOne!32892 (regOne!32892 r!7292))) (ite c!1136625 (regTwo!32892 (regOne!32892 (regOne!32892 r!7292))) (ite c!1136624 (regOne!32892 (regOne!32892 (regOne!32892 r!7292))) (reg!16519 (regOne!32892 (regOne!32892 r!7292)))))) (ite (or c!1136627 c!1136625) lt!2352017 (Context!11149 call!530474)) (h!71195 s!2326)))))

(declare-fun b!6271932 () Bool)

(declare-fun e!3814611 () Bool)

(assert (=> b!6271932 (= c!1136625 e!3814611)))

(declare-fun res!2587079 () Bool)

(assert (=> b!6271932 (=> (not res!2587079) (not e!3814611))))

(assert (=> b!6271932 (= res!2587079 (is-Concat!25035 (regOne!32892 (regOne!32892 r!7292))))))

(declare-fun e!3814610 () (Set Context!11148))

(declare-fun e!3814612 () (Set Context!11148))

(assert (=> b!6271932 (= e!3814610 e!3814612)))

(declare-fun b!6271933 () Bool)

(assert (=> b!6271933 (= e!3814611 (nullable!6183 (regOne!32892 (regOne!32892 (regOne!32892 r!7292)))))))

(declare-fun b!6271934 () Bool)

(declare-fun e!3814613 () (Set Context!11148))

(declare-fun call!530473 () (Set Context!11148))

(assert (=> b!6271934 (= e!3814613 call!530473)))

(declare-fun bm!530468 () Bool)

(declare-fun call!530472 () List!64869)

(declare-fun call!530477 () (Set Context!11148))

(assert (=> bm!530468 (= call!530477 (derivationStepZipperDown!1438 (ite c!1136627 (regTwo!32893 (regOne!32892 (regOne!32892 r!7292))) (regOne!32892 (regOne!32892 (regOne!32892 r!7292)))) (ite c!1136627 lt!2352017 (Context!11149 call!530472)) (h!71195 s!2326)))))

(declare-fun b!6271935 () Bool)

(declare-fun e!3814614 () (Set Context!11148))

(assert (=> b!6271935 (= e!3814614 e!3814610)))

(assert (=> b!6271935 (= c!1136627 (is-Union!16190 (regOne!32892 (regOne!32892 r!7292))))))

(declare-fun b!6271936 () Bool)

(assert (=> b!6271936 (= e!3814610 (set.union call!530476 call!530477))))

(declare-fun b!6271937 () Bool)

(declare-fun c!1136628 () Bool)

(assert (=> b!6271937 (= c!1136628 (is-Star!16190 (regOne!32892 (regOne!32892 r!7292))))))

(declare-fun e!3814615 () (Set Context!11148))

(assert (=> b!6271937 (= e!3814615 e!3814613)))

(declare-fun d!1968619 () Bool)

(declare-fun c!1136626 () Bool)

(assert (=> d!1968619 (= c!1136626 (and (is-ElementMatch!16190 (regOne!32892 (regOne!32892 r!7292))) (= (c!1136523 (regOne!32892 (regOne!32892 r!7292))) (h!71195 s!2326))))))

(assert (=> d!1968619 (= (derivationStepZipperDown!1438 (regOne!32892 (regOne!32892 r!7292)) lt!2352017 (h!71195 s!2326)) e!3814614)))

(declare-fun bm!530469 () Bool)

(assert (=> bm!530469 (= call!530474 call!530472)))

(declare-fun bm!530470 () Bool)

(declare-fun call!530475 () (Set Context!11148))

(assert (=> bm!530470 (= call!530475 call!530476)))

(declare-fun b!6271938 () Bool)

(assert (=> b!6271938 (= e!3814612 e!3814615)))

(assert (=> b!6271938 (= c!1136624 (is-Concat!25035 (regOne!32892 (regOne!32892 r!7292))))))

(declare-fun bm!530471 () Bool)

(assert (=> bm!530471 (= call!530473 call!530475)))

(declare-fun b!6271939 () Bool)

(assert (=> b!6271939 (= e!3814613 (as set.empty (Set Context!11148)))))

(declare-fun bm!530472 () Bool)

(assert (=> bm!530472 (= call!530472 ($colon$colon!2055 (exprs!6074 lt!2352017) (ite (or c!1136625 c!1136624) (regTwo!32892 (regOne!32892 (regOne!32892 r!7292))) (regOne!32892 (regOne!32892 r!7292)))))))

(declare-fun b!6271940 () Bool)

(assert (=> b!6271940 (= e!3814614 (set.insert lt!2352017 (as set.empty (Set Context!11148))))))

(declare-fun b!6271941 () Bool)

(assert (=> b!6271941 (= e!3814615 call!530473)))

(declare-fun b!6271942 () Bool)

(assert (=> b!6271942 (= e!3814612 (set.union call!530477 call!530475))))

(assert (= (and d!1968619 c!1136626) b!6271940))

(assert (= (and d!1968619 (not c!1136626)) b!6271935))

(assert (= (and b!6271935 c!1136627) b!6271936))

(assert (= (and b!6271935 (not c!1136627)) b!6271932))

(assert (= (and b!6271932 res!2587079) b!6271933))

(assert (= (and b!6271932 c!1136625) b!6271942))

(assert (= (and b!6271932 (not c!1136625)) b!6271938))

(assert (= (and b!6271938 c!1136624) b!6271941))

(assert (= (and b!6271938 (not c!1136624)) b!6271937))

(assert (= (and b!6271937 c!1136628) b!6271934))

(assert (= (and b!6271937 (not c!1136628)) b!6271939))

(assert (= (or b!6271941 b!6271934) bm!530469))

(assert (= (or b!6271941 b!6271934) bm!530471))

(assert (= (or b!6271942 bm!530469) bm!530472))

(assert (= (or b!6271942 bm!530471) bm!530470))

(assert (= (or b!6271936 b!6271942) bm!530468))

(assert (= (or b!6271936 bm!530470) bm!530467))

(assert (=> b!6271940 m!7093290))

(declare-fun m!7093774 () Bool)

(assert (=> b!6271933 m!7093774))

(declare-fun m!7093776 () Bool)

(assert (=> bm!530472 m!7093776))

(declare-fun m!7093778 () Bool)

(assert (=> bm!530468 m!7093778))

(declare-fun m!7093780 () Bool)

(assert (=> bm!530467 m!7093780))

(assert (=> b!6271549 d!1968619))

(declare-fun d!1968621 () Bool)

(declare-fun lt!2352207 () Int)

(assert (=> d!1968621 (>= lt!2352207 0)))

(declare-fun e!3814618 () Int)

(assert (=> d!1968621 (= lt!2352207 e!3814618)))

(declare-fun c!1136632 () Bool)

(assert (=> d!1968621 (= c!1136632 (is-Cons!64745 (exprs!6074 lt!2352039)))))

(assert (=> d!1968621 (= (contextDepthTotal!313 lt!2352039) lt!2352207)))

(declare-fun b!6271947 () Bool)

(declare-fun regexDepthTotal!166 (Regex!16190) Int)

(assert (=> b!6271947 (= e!3814618 (+ (regexDepthTotal!166 (h!71193 (exprs!6074 lt!2352039))) (contextDepthTotal!313 (Context!11149 (t!378427 (exprs!6074 lt!2352039))))))))

(declare-fun b!6271948 () Bool)

(assert (=> b!6271948 (= e!3814618 1)))

(assert (= (and d!1968621 c!1136632) b!6271947))

(assert (= (and d!1968621 (not c!1136632)) b!6271948))

(declare-fun m!7093782 () Bool)

(assert (=> b!6271947 m!7093782))

(declare-fun m!7093784 () Bool)

(assert (=> b!6271947 m!7093784))

(assert (=> b!6271569 d!1968621))

(declare-fun d!1968623 () Bool)

(declare-fun lt!2352208 () Int)

(assert (=> d!1968623 (>= lt!2352208 0)))

(declare-fun e!3814619 () Int)

(assert (=> d!1968623 (= lt!2352208 e!3814619)))

(declare-fun c!1136633 () Bool)

(assert (=> d!1968623 (= c!1136633 (is-Cons!64745 (exprs!6074 (h!71194 zl!343))))))

(assert (=> d!1968623 (= (contextDepthTotal!313 (h!71194 zl!343)) lt!2352208)))

(declare-fun b!6271949 () Bool)

(assert (=> b!6271949 (= e!3814619 (+ (regexDepthTotal!166 (h!71193 (exprs!6074 (h!71194 zl!343)))) (contextDepthTotal!313 (Context!11149 (t!378427 (exprs!6074 (h!71194 zl!343)))))))))

(declare-fun b!6271950 () Bool)

(assert (=> b!6271950 (= e!3814619 1)))

(assert (= (and d!1968623 c!1136633) b!6271949))

(assert (= (and d!1968623 (not c!1136633)) b!6271950))

(declare-fun m!7093786 () Bool)

(assert (=> b!6271949 m!7093786))

(declare-fun m!7093788 () Bool)

(assert (=> b!6271949 m!7093788))

(assert (=> b!6271569 d!1968623))

(declare-fun b!6271969 () Bool)

(declare-fun res!2587094 () Bool)

(declare-fun e!3814639 () Bool)

(assert (=> b!6271969 (=> (not res!2587094) (not e!3814639))))

(declare-fun call!530486 () Bool)

(assert (=> b!6271969 (= res!2587094 call!530486)))

(declare-fun e!3814636 () Bool)

(assert (=> b!6271969 (= e!3814636 e!3814639)))

(declare-fun b!6271970 () Bool)

(declare-fun e!3814635 () Bool)

(declare-fun e!3814637 () Bool)

(assert (=> b!6271970 (= e!3814635 e!3814637)))

(declare-fun c!1136638 () Bool)

(assert (=> b!6271970 (= c!1136638 (is-Star!16190 r!7292))))

(declare-fun b!6271971 () Bool)

(declare-fun e!3814638 () Bool)

(declare-fun e!3814634 () Bool)

(assert (=> b!6271971 (= e!3814638 e!3814634)))

(declare-fun res!2587092 () Bool)

(assert (=> b!6271971 (=> (not res!2587092) (not e!3814634))))

(assert (=> b!6271971 (= res!2587092 call!530486)))

(declare-fun b!6271972 () Bool)

(declare-fun call!530484 () Bool)

(assert (=> b!6271972 (= e!3814639 call!530484)))

(declare-fun d!1968625 () Bool)

(declare-fun res!2587093 () Bool)

(assert (=> d!1968625 (=> res!2587093 e!3814635)))

(assert (=> d!1968625 (= res!2587093 (is-ElementMatch!16190 r!7292))))

(assert (=> d!1968625 (= (validRegex!7926 r!7292) e!3814635)))

(declare-fun b!6271973 () Bool)

(assert (=> b!6271973 (= e!3814634 call!530484)))

(declare-fun b!6271974 () Bool)

(declare-fun res!2587090 () Bool)

(assert (=> b!6271974 (=> res!2587090 e!3814638)))

(assert (=> b!6271974 (= res!2587090 (not (is-Concat!25035 r!7292)))))

(assert (=> b!6271974 (= e!3814636 e!3814638)))

(declare-fun b!6271975 () Bool)

(assert (=> b!6271975 (= e!3814637 e!3814636)))

(declare-fun c!1136639 () Bool)

(assert (=> b!6271975 (= c!1136639 (is-Union!16190 r!7292))))

(declare-fun bm!530479 () Bool)

(declare-fun call!530485 () Bool)

(assert (=> bm!530479 (= call!530486 call!530485)))

(declare-fun bm!530480 () Bool)

(assert (=> bm!530480 (= call!530484 (validRegex!7926 (ite c!1136639 (regTwo!32893 r!7292) (regTwo!32892 r!7292))))))

(declare-fun b!6271976 () Bool)

(declare-fun e!3814640 () Bool)

(assert (=> b!6271976 (= e!3814640 call!530485)))

(declare-fun bm!530481 () Bool)

(assert (=> bm!530481 (= call!530485 (validRegex!7926 (ite c!1136638 (reg!16519 r!7292) (ite c!1136639 (regOne!32893 r!7292) (regOne!32892 r!7292)))))))

(declare-fun b!6271977 () Bool)

(assert (=> b!6271977 (= e!3814637 e!3814640)))

(declare-fun res!2587091 () Bool)

(assert (=> b!6271977 (= res!2587091 (not (nullable!6183 (reg!16519 r!7292))))))

(assert (=> b!6271977 (=> (not res!2587091) (not e!3814640))))

(assert (= (and d!1968625 (not res!2587093)) b!6271970))

(assert (= (and b!6271970 c!1136638) b!6271977))

(assert (= (and b!6271970 (not c!1136638)) b!6271975))

(assert (= (and b!6271977 res!2587091) b!6271976))

(assert (= (and b!6271975 c!1136639) b!6271969))

(assert (= (and b!6271975 (not c!1136639)) b!6271974))

(assert (= (and b!6271969 res!2587094) b!6271972))

(assert (= (and b!6271974 (not res!2587090)) b!6271971))

(assert (= (and b!6271971 res!2587092) b!6271973))

(assert (= (or b!6271972 b!6271973) bm!530480))

(assert (= (or b!6271969 b!6271971) bm!530479))

(assert (= (or b!6271976 bm!530479) bm!530481))

(declare-fun m!7093790 () Bool)

(assert (=> bm!530480 m!7093790))

(declare-fun m!7093792 () Bool)

(assert (=> bm!530481 m!7093792))

(declare-fun m!7093794 () Bool)

(assert (=> b!6271977 m!7093794))

(assert (=> start!623476 d!1968625))

(declare-fun d!1968627 () Bool)

(assert (=> d!1968627 (= (isEmpty!36780 (t!378428 zl!343)) (is-Nil!64746 (t!378428 zl!343)))))

(assert (=> b!6271543 d!1968627))

(declare-fun d!1968629 () Bool)

(assert (=> d!1968629 (= (matchR!8373 lt!2352013 s!2326) (matchZipper!2202 lt!2352036 s!2326))))

(declare-fun lt!2352211 () Unit!158091)

(declare-fun choose!46532 ((Set Context!11148) List!64870 Regex!16190 List!64871) Unit!158091)

(assert (=> d!1968629 (= lt!2352211 (choose!46532 lt!2352036 lt!2352025 lt!2352013 s!2326))))

(assert (=> d!1968629 (validRegex!7926 lt!2352013)))

(assert (=> d!1968629 (= (theoremZipperRegexEquiv!760 lt!2352036 lt!2352025 lt!2352013 s!2326) lt!2352211)))

(declare-fun bs!1566540 () Bool)

(assert (= bs!1566540 d!1968629))

(assert (=> bs!1566540 m!7093306))

(assert (=> bs!1566540 m!7093310))

(declare-fun m!7093796 () Bool)

(assert (=> bs!1566540 m!7093796))

(assert (=> bs!1566540 m!7093312))

(assert (=> b!6271564 d!1968629))

(declare-fun b!6272006 () Bool)

(declare-fun res!2587117 () Bool)

(declare-fun e!3814656 () Bool)

(assert (=> b!6272006 (=> res!2587117 e!3814656)))

(assert (=> b!6272006 (= res!2587117 (not (is-ElementMatch!16190 lt!2352032)))))

(declare-fun e!3814660 () Bool)

(assert (=> b!6272006 (= e!3814660 e!3814656)))

(declare-fun b!6272007 () Bool)

(declare-fun e!3814659 () Bool)

(assert (=> b!6272007 (= e!3814656 e!3814659)))

(declare-fun res!2587118 () Bool)

(assert (=> b!6272007 (=> (not res!2587118) (not e!3814659))))

(declare-fun lt!2352214 () Bool)

(assert (=> b!6272007 (= res!2587118 (not lt!2352214))))

(declare-fun b!6272008 () Bool)

(assert (=> b!6272008 (= e!3814660 (not lt!2352214))))

(declare-fun b!6272009 () Bool)

(declare-fun e!3814655 () Bool)

(declare-fun derivativeStep!4899 (Regex!16190 C!32650) Regex!16190)

(assert (=> b!6272009 (= e!3814655 (matchR!8373 (derivativeStep!4899 lt!2352032 (head!12881 s!2326)) (tail!11966 s!2326)))))

(declare-fun b!6272010 () Bool)

(declare-fun e!3814661 () Bool)

(declare-fun call!530489 () Bool)

(assert (=> b!6272010 (= e!3814661 (= lt!2352214 call!530489))))

(declare-fun b!6272011 () Bool)

(declare-fun e!3814658 () Bool)

(assert (=> b!6272011 (= e!3814658 (= (head!12881 s!2326) (c!1136523 lt!2352032)))))

(declare-fun b!6272012 () Bool)

(declare-fun res!2587112 () Bool)

(declare-fun e!3814657 () Bool)

(assert (=> b!6272012 (=> res!2587112 e!3814657)))

(assert (=> b!6272012 (= res!2587112 (not (isEmpty!36785 (tail!11966 s!2326))))))

(declare-fun b!6272013 () Bool)

(assert (=> b!6272013 (= e!3814655 (nullable!6183 lt!2352032))))

(declare-fun b!6272014 () Bool)

(assert (=> b!6272014 (= e!3814661 e!3814660)))

(declare-fun c!1136646 () Bool)

(assert (=> b!6272014 (= c!1136646 (is-EmptyLang!16190 lt!2352032))))

(declare-fun d!1968631 () Bool)

(assert (=> d!1968631 e!3814661))

(declare-fun c!1136647 () Bool)

(assert (=> d!1968631 (= c!1136647 (is-EmptyExpr!16190 lt!2352032))))

(assert (=> d!1968631 (= lt!2352214 e!3814655)))

(declare-fun c!1136648 () Bool)

(assert (=> d!1968631 (= c!1136648 (isEmpty!36785 s!2326))))

(assert (=> d!1968631 (validRegex!7926 lt!2352032)))

(assert (=> d!1968631 (= (matchR!8373 lt!2352032 s!2326) lt!2352214)))

(declare-fun b!6272015 () Bool)

(declare-fun res!2587115 () Bool)

(assert (=> b!6272015 (=> res!2587115 e!3814656)))

(assert (=> b!6272015 (= res!2587115 e!3814658)))

(declare-fun res!2587111 () Bool)

(assert (=> b!6272015 (=> (not res!2587111) (not e!3814658))))

(assert (=> b!6272015 (= res!2587111 lt!2352214)))

(declare-fun b!6272016 () Bool)

(assert (=> b!6272016 (= e!3814657 (not (= (head!12881 s!2326) (c!1136523 lt!2352032))))))

(declare-fun b!6272017 () Bool)

(declare-fun res!2587116 () Bool)

(assert (=> b!6272017 (=> (not res!2587116) (not e!3814658))))

(assert (=> b!6272017 (= res!2587116 (isEmpty!36785 (tail!11966 s!2326)))))

(declare-fun bm!530484 () Bool)

(assert (=> bm!530484 (= call!530489 (isEmpty!36785 s!2326))))

(declare-fun b!6272018 () Bool)

(assert (=> b!6272018 (= e!3814659 e!3814657)))

(declare-fun res!2587114 () Bool)

(assert (=> b!6272018 (=> res!2587114 e!3814657)))

(assert (=> b!6272018 (= res!2587114 call!530489)))

(declare-fun b!6272019 () Bool)

(declare-fun res!2587113 () Bool)

(assert (=> b!6272019 (=> (not res!2587113) (not e!3814658))))

(assert (=> b!6272019 (= res!2587113 (not call!530489))))

(assert (= (and d!1968631 c!1136648) b!6272013))

(assert (= (and d!1968631 (not c!1136648)) b!6272009))

(assert (= (and d!1968631 c!1136647) b!6272010))

(assert (= (and d!1968631 (not c!1136647)) b!6272014))

(assert (= (and b!6272014 c!1136646) b!6272008))

(assert (= (and b!6272014 (not c!1136646)) b!6272006))

(assert (= (and b!6272006 (not res!2587117)) b!6272015))

(assert (= (and b!6272015 res!2587111) b!6272019))

(assert (= (and b!6272019 res!2587113) b!6272017))

(assert (= (and b!6272017 res!2587116) b!6272011))

(assert (= (and b!6272015 (not res!2587115)) b!6272007))

(assert (= (and b!6272007 res!2587118) b!6272018))

(assert (= (and b!6272018 (not res!2587114)) b!6272012))

(assert (= (and b!6272012 (not res!2587112)) b!6272016))

(assert (= (or b!6272010 b!6272018 b!6272019) bm!530484))

(declare-fun m!7093798 () Bool)

(assert (=> b!6272011 m!7093798))

(declare-fun m!7093800 () Bool)

(assert (=> b!6272017 m!7093800))

(assert (=> b!6272017 m!7093800))

(declare-fun m!7093802 () Bool)

(assert (=> b!6272017 m!7093802))

(assert (=> b!6272012 m!7093800))

(assert (=> b!6272012 m!7093800))

(assert (=> b!6272012 m!7093802))

(declare-fun m!7093804 () Bool)

(assert (=> b!6272013 m!7093804))

(assert (=> b!6272016 m!7093798))

(assert (=> b!6272009 m!7093798))

(assert (=> b!6272009 m!7093798))

(declare-fun m!7093806 () Bool)

(assert (=> b!6272009 m!7093806))

(assert (=> b!6272009 m!7093800))

(assert (=> b!6272009 m!7093806))

(assert (=> b!6272009 m!7093800))

(declare-fun m!7093808 () Bool)

(assert (=> b!6272009 m!7093808))

(declare-fun m!7093810 () Bool)

(assert (=> bm!530484 m!7093810))

(assert (=> d!1968631 m!7093810))

(declare-fun m!7093812 () Bool)

(assert (=> d!1968631 m!7093812))

(assert (=> b!6271564 d!1968631))

(declare-fun d!1968633 () Bool)

(declare-fun c!1136649 () Bool)

(assert (=> d!1968633 (= c!1136649 (isEmpty!36785 s!2326))))

(declare-fun e!3814662 () Bool)

(assert (=> d!1968633 (= (matchZipper!2202 lt!2352043 s!2326) e!3814662)))

(declare-fun b!6272020 () Bool)

(assert (=> b!6272020 (= e!3814662 (nullableZipper!1960 lt!2352043))))

(declare-fun b!6272021 () Bool)

(assert (=> b!6272021 (= e!3814662 (matchZipper!2202 (derivationStepZipper!2156 lt!2352043 (head!12881 s!2326)) (tail!11966 s!2326)))))

(assert (= (and d!1968633 c!1136649) b!6272020))

(assert (= (and d!1968633 (not c!1136649)) b!6272021))

(assert (=> d!1968633 m!7093810))

(declare-fun m!7093814 () Bool)

(assert (=> b!6272020 m!7093814))

(assert (=> b!6272021 m!7093798))

(assert (=> b!6272021 m!7093798))

(declare-fun m!7093816 () Bool)

(assert (=> b!6272021 m!7093816))

(assert (=> b!6272021 m!7093800))

(assert (=> b!6272021 m!7093816))

(assert (=> b!6272021 m!7093800))

(declare-fun m!7093818 () Bool)

(assert (=> b!6272021 m!7093818))

(assert (=> b!6271564 d!1968633))

(declare-fun bs!1566541 () Bool)

(declare-fun d!1968635 () Bool)

(assert (= bs!1566541 (and d!1968635 d!1968559)))

(declare-fun lambda!343607 () Int)

(assert (=> bs!1566541 (= lambda!343607 lambda!343575)))

(declare-fun bs!1566542 () Bool)

(assert (= bs!1566542 (and d!1968635 d!1968605)))

(assert (=> bs!1566542 (= lambda!343607 lambda!343602)))

(declare-fun bs!1566543 () Bool)

(assert (= bs!1566543 (and d!1968635 d!1968607)))

(assert (=> bs!1566543 (= lambda!343607 lambda!343603)))

(declare-fun bs!1566544 () Bool)

(assert (= bs!1566544 (and d!1968635 d!1968561)))

(assert (=> bs!1566544 (= lambda!343607 lambda!343578)))

(declare-fun bs!1566545 () Bool)

(assert (= bs!1566545 (and d!1968635 d!1968615)))

(assert (=> bs!1566545 (= lambda!343607 lambda!343606)))

(declare-fun b!6272022 () Bool)

(declare-fun e!3814666 () Regex!16190)

(assert (=> b!6272022 (= e!3814666 EmptyExpr!16190)))

(declare-fun b!6272023 () Bool)

(declare-fun e!3814667 () Regex!16190)

(assert (=> b!6272023 (= e!3814667 e!3814666)))

(declare-fun c!1136652 () Bool)

(assert (=> b!6272023 (= c!1136652 (is-Cons!64745 lt!2352042))))

(declare-fun b!6272024 () Bool)

(assert (=> b!6272024 (= e!3814666 (Concat!25035 (h!71193 lt!2352042) (generalisedConcat!1787 (t!378427 lt!2352042))))))

(declare-fun b!6272025 () Bool)

(assert (=> b!6272025 (= e!3814667 (h!71193 lt!2352042))))

(declare-fun b!6272026 () Bool)

(declare-fun e!3814665 () Bool)

(assert (=> b!6272026 (= e!3814665 (isEmpty!36781 (t!378427 lt!2352042)))))

(declare-fun b!6272027 () Bool)

(declare-fun e!3814663 () Bool)

(declare-fun e!3814664 () Bool)

(assert (=> b!6272027 (= e!3814663 e!3814664)))

(declare-fun c!1136651 () Bool)

(assert (=> b!6272027 (= c!1136651 (isEmpty!36781 (tail!11965 lt!2352042)))))

(declare-fun b!6272028 () Bool)

(declare-fun e!3814668 () Bool)

(assert (=> b!6272028 (= e!3814668 e!3814663)))

(declare-fun c!1136653 () Bool)

(assert (=> b!6272028 (= c!1136653 (isEmpty!36781 lt!2352042))))

(assert (=> d!1968635 e!3814668))

(declare-fun res!2587119 () Bool)

(assert (=> d!1968635 (=> (not res!2587119) (not e!3814668))))

(declare-fun lt!2352215 () Regex!16190)

(assert (=> d!1968635 (= res!2587119 (validRegex!7926 lt!2352215))))

(assert (=> d!1968635 (= lt!2352215 e!3814667)))

(declare-fun c!1136650 () Bool)

(assert (=> d!1968635 (= c!1136650 e!3814665)))

(declare-fun res!2587120 () Bool)

(assert (=> d!1968635 (=> (not res!2587120) (not e!3814665))))

(assert (=> d!1968635 (= res!2587120 (is-Cons!64745 lt!2352042))))

(assert (=> d!1968635 (forall!15318 lt!2352042 lambda!343607)))

(assert (=> d!1968635 (= (generalisedConcat!1787 lt!2352042) lt!2352215)))

(declare-fun b!6272029 () Bool)

(assert (=> b!6272029 (= e!3814664 (= lt!2352215 (head!12880 lt!2352042)))))

(declare-fun b!6272030 () Bool)

(assert (=> b!6272030 (= e!3814664 (isConcat!1119 lt!2352215))))

(declare-fun b!6272031 () Bool)

(assert (=> b!6272031 (= e!3814663 (isEmptyExpr!1596 lt!2352215))))

(assert (= (and d!1968635 res!2587120) b!6272026))

(assert (= (and d!1968635 c!1136650) b!6272025))

(assert (= (and d!1968635 (not c!1136650)) b!6272023))

(assert (= (and b!6272023 c!1136652) b!6272024))

(assert (= (and b!6272023 (not c!1136652)) b!6272022))

(assert (= (and d!1968635 res!2587119) b!6272028))

(assert (= (and b!6272028 c!1136653) b!6272031))

(assert (= (and b!6272028 (not c!1136653)) b!6272027))

(assert (= (and b!6272027 c!1136651) b!6272029))

(assert (= (and b!6272027 (not c!1136651)) b!6272030))

(declare-fun m!7093820 () Bool)

(assert (=> b!6272026 m!7093820))

(declare-fun m!7093822 () Bool)

(assert (=> b!6272028 m!7093822))

(declare-fun m!7093824 () Bool)

(assert (=> b!6272027 m!7093824))

(assert (=> b!6272027 m!7093824))

(declare-fun m!7093826 () Bool)

(assert (=> b!6272027 m!7093826))

(declare-fun m!7093828 () Bool)

(assert (=> b!6272031 m!7093828))

(declare-fun m!7093830 () Bool)

(assert (=> b!6272029 m!7093830))

(declare-fun m!7093832 () Bool)

(assert (=> b!6272024 m!7093832))

(declare-fun m!7093834 () Bool)

(assert (=> b!6272030 m!7093834))

(declare-fun m!7093836 () Bool)

(assert (=> d!1968635 m!7093836))

(declare-fun m!7093838 () Bool)

(assert (=> d!1968635 m!7093838))

(assert (=> b!6271564 d!1968635))

(declare-fun b!6272032 () Bool)

(declare-fun res!2587127 () Bool)

(declare-fun e!3814670 () Bool)

(assert (=> b!6272032 (=> res!2587127 e!3814670)))

(assert (=> b!6272032 (= res!2587127 (not (is-ElementMatch!16190 lt!2352013)))))

(declare-fun e!3814674 () Bool)

(assert (=> b!6272032 (= e!3814674 e!3814670)))

(declare-fun b!6272033 () Bool)

(declare-fun e!3814673 () Bool)

(assert (=> b!6272033 (= e!3814670 e!3814673)))

(declare-fun res!2587128 () Bool)

(assert (=> b!6272033 (=> (not res!2587128) (not e!3814673))))

(declare-fun lt!2352216 () Bool)

(assert (=> b!6272033 (= res!2587128 (not lt!2352216))))

(declare-fun b!6272034 () Bool)

(assert (=> b!6272034 (= e!3814674 (not lt!2352216))))

(declare-fun b!6272035 () Bool)

(declare-fun e!3814669 () Bool)

(assert (=> b!6272035 (= e!3814669 (matchR!8373 (derivativeStep!4899 lt!2352013 (head!12881 s!2326)) (tail!11966 s!2326)))))

(declare-fun b!6272036 () Bool)

(declare-fun e!3814675 () Bool)

(declare-fun call!530490 () Bool)

(assert (=> b!6272036 (= e!3814675 (= lt!2352216 call!530490))))

(declare-fun b!6272037 () Bool)

(declare-fun e!3814672 () Bool)

(assert (=> b!6272037 (= e!3814672 (= (head!12881 s!2326) (c!1136523 lt!2352013)))))

(declare-fun b!6272038 () Bool)

(declare-fun res!2587122 () Bool)

(declare-fun e!3814671 () Bool)

(assert (=> b!6272038 (=> res!2587122 e!3814671)))

(assert (=> b!6272038 (= res!2587122 (not (isEmpty!36785 (tail!11966 s!2326))))))

(declare-fun b!6272039 () Bool)

(assert (=> b!6272039 (= e!3814669 (nullable!6183 lt!2352013))))

(declare-fun b!6272040 () Bool)

(assert (=> b!6272040 (= e!3814675 e!3814674)))

(declare-fun c!1136654 () Bool)

(assert (=> b!6272040 (= c!1136654 (is-EmptyLang!16190 lt!2352013))))

(declare-fun d!1968637 () Bool)

(assert (=> d!1968637 e!3814675))

(declare-fun c!1136655 () Bool)

(assert (=> d!1968637 (= c!1136655 (is-EmptyExpr!16190 lt!2352013))))

(assert (=> d!1968637 (= lt!2352216 e!3814669)))

(declare-fun c!1136656 () Bool)

(assert (=> d!1968637 (= c!1136656 (isEmpty!36785 s!2326))))

(assert (=> d!1968637 (validRegex!7926 lt!2352013)))

(assert (=> d!1968637 (= (matchR!8373 lt!2352013 s!2326) lt!2352216)))

(declare-fun b!6272041 () Bool)

(declare-fun res!2587125 () Bool)

(assert (=> b!6272041 (=> res!2587125 e!3814670)))

(assert (=> b!6272041 (= res!2587125 e!3814672)))

(declare-fun res!2587121 () Bool)

(assert (=> b!6272041 (=> (not res!2587121) (not e!3814672))))

(assert (=> b!6272041 (= res!2587121 lt!2352216)))

(declare-fun b!6272042 () Bool)

(assert (=> b!6272042 (= e!3814671 (not (= (head!12881 s!2326) (c!1136523 lt!2352013))))))

(declare-fun b!6272043 () Bool)

(declare-fun res!2587126 () Bool)

(assert (=> b!6272043 (=> (not res!2587126) (not e!3814672))))

(assert (=> b!6272043 (= res!2587126 (isEmpty!36785 (tail!11966 s!2326)))))

(declare-fun bm!530485 () Bool)

(assert (=> bm!530485 (= call!530490 (isEmpty!36785 s!2326))))

(declare-fun b!6272044 () Bool)

(assert (=> b!6272044 (= e!3814673 e!3814671)))

(declare-fun res!2587124 () Bool)

(assert (=> b!6272044 (=> res!2587124 e!3814671)))

(assert (=> b!6272044 (= res!2587124 call!530490)))

(declare-fun b!6272045 () Bool)

(declare-fun res!2587123 () Bool)

(assert (=> b!6272045 (=> (not res!2587123) (not e!3814672))))

(assert (=> b!6272045 (= res!2587123 (not call!530490))))

(assert (= (and d!1968637 c!1136656) b!6272039))

(assert (= (and d!1968637 (not c!1136656)) b!6272035))

(assert (= (and d!1968637 c!1136655) b!6272036))

(assert (= (and d!1968637 (not c!1136655)) b!6272040))

(assert (= (and b!6272040 c!1136654) b!6272034))

(assert (= (and b!6272040 (not c!1136654)) b!6272032))

(assert (= (and b!6272032 (not res!2587127)) b!6272041))

(assert (= (and b!6272041 res!2587121) b!6272045))

(assert (= (and b!6272045 res!2587123) b!6272043))

(assert (= (and b!6272043 res!2587126) b!6272037))

(assert (= (and b!6272041 (not res!2587125)) b!6272033))

(assert (= (and b!6272033 res!2587128) b!6272044))

(assert (= (and b!6272044 (not res!2587124)) b!6272038))

(assert (= (and b!6272038 (not res!2587122)) b!6272042))

(assert (= (or b!6272036 b!6272044 b!6272045) bm!530485))

(assert (=> b!6272037 m!7093798))

(assert (=> b!6272043 m!7093800))

(assert (=> b!6272043 m!7093800))

(assert (=> b!6272043 m!7093802))

(assert (=> b!6272038 m!7093800))

(assert (=> b!6272038 m!7093800))

(assert (=> b!6272038 m!7093802))

(declare-fun m!7093840 () Bool)

(assert (=> b!6272039 m!7093840))

(assert (=> b!6272042 m!7093798))

(assert (=> b!6272035 m!7093798))

(assert (=> b!6272035 m!7093798))

(declare-fun m!7093842 () Bool)

(assert (=> b!6272035 m!7093842))

(assert (=> b!6272035 m!7093800))

(assert (=> b!6272035 m!7093842))

(assert (=> b!6272035 m!7093800))

(declare-fun m!7093844 () Bool)

(assert (=> b!6272035 m!7093844))

(assert (=> bm!530485 m!7093810))

(assert (=> d!1968637 m!7093810))

(assert (=> d!1968637 m!7093312))

(assert (=> b!6271564 d!1968637))

(declare-fun b!6272046 () Bool)

(declare-fun res!2587133 () Bool)

(declare-fun e!3814681 () Bool)

(assert (=> b!6272046 (=> (not res!2587133) (not e!3814681))))

(declare-fun call!530493 () Bool)

(assert (=> b!6272046 (= res!2587133 call!530493)))

(declare-fun e!3814678 () Bool)

(assert (=> b!6272046 (= e!3814678 e!3814681)))

(declare-fun b!6272047 () Bool)

(declare-fun e!3814677 () Bool)

(declare-fun e!3814679 () Bool)

(assert (=> b!6272047 (= e!3814677 e!3814679)))

(declare-fun c!1136657 () Bool)

(assert (=> b!6272047 (= c!1136657 (is-Star!16190 lt!2352013))))

(declare-fun b!6272048 () Bool)

(declare-fun e!3814680 () Bool)

(declare-fun e!3814676 () Bool)

(assert (=> b!6272048 (= e!3814680 e!3814676)))

(declare-fun res!2587131 () Bool)

(assert (=> b!6272048 (=> (not res!2587131) (not e!3814676))))

(assert (=> b!6272048 (= res!2587131 call!530493)))

(declare-fun b!6272049 () Bool)

(declare-fun call!530491 () Bool)

(assert (=> b!6272049 (= e!3814681 call!530491)))

(declare-fun d!1968639 () Bool)

(declare-fun res!2587132 () Bool)

(assert (=> d!1968639 (=> res!2587132 e!3814677)))

(assert (=> d!1968639 (= res!2587132 (is-ElementMatch!16190 lt!2352013))))

(assert (=> d!1968639 (= (validRegex!7926 lt!2352013) e!3814677)))

(declare-fun b!6272050 () Bool)

(assert (=> b!6272050 (= e!3814676 call!530491)))

(declare-fun b!6272051 () Bool)

(declare-fun res!2587129 () Bool)

(assert (=> b!6272051 (=> res!2587129 e!3814680)))

(assert (=> b!6272051 (= res!2587129 (not (is-Concat!25035 lt!2352013)))))

(assert (=> b!6272051 (= e!3814678 e!3814680)))

(declare-fun b!6272052 () Bool)

(assert (=> b!6272052 (= e!3814679 e!3814678)))

(declare-fun c!1136658 () Bool)

(assert (=> b!6272052 (= c!1136658 (is-Union!16190 lt!2352013))))

(declare-fun bm!530486 () Bool)

(declare-fun call!530492 () Bool)

(assert (=> bm!530486 (= call!530493 call!530492)))

(declare-fun bm!530487 () Bool)

(assert (=> bm!530487 (= call!530491 (validRegex!7926 (ite c!1136658 (regTwo!32893 lt!2352013) (regTwo!32892 lt!2352013))))))

(declare-fun b!6272053 () Bool)

(declare-fun e!3814682 () Bool)

(assert (=> b!6272053 (= e!3814682 call!530492)))

(declare-fun bm!530488 () Bool)

(assert (=> bm!530488 (= call!530492 (validRegex!7926 (ite c!1136657 (reg!16519 lt!2352013) (ite c!1136658 (regOne!32893 lt!2352013) (regOne!32892 lt!2352013)))))))

(declare-fun b!6272054 () Bool)

(assert (=> b!6272054 (= e!3814679 e!3814682)))

(declare-fun res!2587130 () Bool)

(assert (=> b!6272054 (= res!2587130 (not (nullable!6183 (reg!16519 lt!2352013))))))

(assert (=> b!6272054 (=> (not res!2587130) (not e!3814682))))

(assert (= (and d!1968639 (not res!2587132)) b!6272047))

(assert (= (and b!6272047 c!1136657) b!6272054))

(assert (= (and b!6272047 (not c!1136657)) b!6272052))

(assert (= (and b!6272054 res!2587130) b!6272053))

(assert (= (and b!6272052 c!1136658) b!6272046))

(assert (= (and b!6272052 (not c!1136658)) b!6272051))

(assert (= (and b!6272046 res!2587133) b!6272049))

(assert (= (and b!6272051 (not res!2587129)) b!6272048))

(assert (= (and b!6272048 res!2587131) b!6272050))

(assert (= (or b!6272049 b!6272050) bm!530487))

(assert (= (or b!6272046 b!6272048) bm!530486))

(assert (= (or b!6272053 bm!530486) bm!530488))

(declare-fun m!7093846 () Bool)

(assert (=> bm!530487 m!7093846))

(declare-fun m!7093848 () Bool)

(assert (=> bm!530488 m!7093848))

(declare-fun m!7093850 () Bool)

(assert (=> b!6272054 m!7093850))

(assert (=> b!6271564 d!1968639))

(declare-fun d!1968641 () Bool)

(declare-fun c!1136659 () Bool)

(assert (=> d!1968641 (= c!1136659 (isEmpty!36785 s!2326))))

(declare-fun e!3814683 () Bool)

(assert (=> d!1968641 (= (matchZipper!2202 lt!2352036 s!2326) e!3814683)))

(declare-fun b!6272055 () Bool)

(assert (=> b!6272055 (= e!3814683 (nullableZipper!1960 lt!2352036))))

(declare-fun b!6272056 () Bool)

(assert (=> b!6272056 (= e!3814683 (matchZipper!2202 (derivationStepZipper!2156 lt!2352036 (head!12881 s!2326)) (tail!11966 s!2326)))))

(assert (= (and d!1968641 c!1136659) b!6272055))

(assert (= (and d!1968641 (not c!1136659)) b!6272056))

(assert (=> d!1968641 m!7093810))

(declare-fun m!7093852 () Bool)

(assert (=> b!6272055 m!7093852))

(assert (=> b!6272056 m!7093798))

(assert (=> b!6272056 m!7093798))

(declare-fun m!7093854 () Bool)

(assert (=> b!6272056 m!7093854))

(assert (=> b!6272056 m!7093800))

(assert (=> b!6272056 m!7093854))

(assert (=> b!6272056 m!7093800))

(declare-fun m!7093856 () Bool)

(assert (=> b!6272056 m!7093856))

(assert (=> b!6271564 d!1968641))

(declare-fun d!1968643 () Bool)

(assert (=> d!1968643 (= (matchR!8373 lt!2352032 s!2326) (matchZipper!2202 lt!2352043 s!2326))))

(declare-fun lt!2352217 () Unit!158091)

(assert (=> d!1968643 (= lt!2352217 (choose!46532 lt!2352043 (Cons!64746 lt!2352017 Nil!64746) lt!2352032 s!2326))))

(assert (=> d!1968643 (validRegex!7926 lt!2352032)))

(assert (=> d!1968643 (= (theoremZipperRegexEquiv!760 lt!2352043 (Cons!64746 lt!2352017 Nil!64746) lt!2352032 s!2326) lt!2352217)))

(declare-fun bs!1566546 () Bool)

(assert (= bs!1566546 d!1968643))

(assert (=> bs!1566546 m!7093316))

(assert (=> bs!1566546 m!7093318))

(declare-fun m!7093858 () Bool)

(assert (=> bs!1566546 m!7093858))

(assert (=> bs!1566546 m!7093812))

(assert (=> b!6271564 d!1968643))

(declare-fun bs!1566547 () Bool)

(declare-fun d!1968645 () Bool)

(assert (= bs!1566547 (and d!1968645 d!1968559)))

(declare-fun lambda!343608 () Int)

(assert (=> bs!1566547 (= lambda!343608 lambda!343575)))

(declare-fun bs!1566548 () Bool)

(assert (= bs!1566548 (and d!1968645 d!1968635)))

(assert (=> bs!1566548 (= lambda!343608 lambda!343607)))

(declare-fun bs!1566549 () Bool)

(assert (= bs!1566549 (and d!1968645 d!1968605)))

(assert (=> bs!1566549 (= lambda!343608 lambda!343602)))

(declare-fun bs!1566550 () Bool)

(assert (= bs!1566550 (and d!1968645 d!1968607)))

(assert (=> bs!1566550 (= lambda!343608 lambda!343603)))

(declare-fun bs!1566551 () Bool)

(assert (= bs!1566551 (and d!1968645 d!1968561)))

(assert (=> bs!1566551 (= lambda!343608 lambda!343578)))

(declare-fun bs!1566552 () Bool)

(assert (= bs!1566552 (and d!1968645 d!1968615)))

(assert (=> bs!1566552 (= lambda!343608 lambda!343606)))

(declare-fun b!6272057 () Bool)

(declare-fun e!3814687 () Regex!16190)

(assert (=> b!6272057 (= e!3814687 EmptyExpr!16190)))

(declare-fun b!6272058 () Bool)

(declare-fun e!3814688 () Regex!16190)

(assert (=> b!6272058 (= e!3814688 e!3814687)))

(declare-fun c!1136662 () Bool)

(assert (=> b!6272058 (= c!1136662 (is-Cons!64745 lt!2352033))))

(declare-fun b!6272059 () Bool)

(assert (=> b!6272059 (= e!3814687 (Concat!25035 (h!71193 lt!2352033) (generalisedConcat!1787 (t!378427 lt!2352033))))))

(declare-fun b!6272060 () Bool)

(assert (=> b!6272060 (= e!3814688 (h!71193 lt!2352033))))

(declare-fun b!6272061 () Bool)

(declare-fun e!3814686 () Bool)

(assert (=> b!6272061 (= e!3814686 (isEmpty!36781 (t!378427 lt!2352033)))))

(declare-fun b!6272062 () Bool)

(declare-fun e!3814684 () Bool)

(declare-fun e!3814685 () Bool)

(assert (=> b!6272062 (= e!3814684 e!3814685)))

(declare-fun c!1136661 () Bool)

(assert (=> b!6272062 (= c!1136661 (isEmpty!36781 (tail!11965 lt!2352033)))))

(declare-fun b!6272063 () Bool)

(declare-fun e!3814689 () Bool)

(assert (=> b!6272063 (= e!3814689 e!3814684)))

(declare-fun c!1136663 () Bool)

(assert (=> b!6272063 (= c!1136663 (isEmpty!36781 lt!2352033))))

(assert (=> d!1968645 e!3814689))

(declare-fun res!2587134 () Bool)

(assert (=> d!1968645 (=> (not res!2587134) (not e!3814689))))

(declare-fun lt!2352218 () Regex!16190)

(assert (=> d!1968645 (= res!2587134 (validRegex!7926 lt!2352218))))

(assert (=> d!1968645 (= lt!2352218 e!3814688)))

(declare-fun c!1136660 () Bool)

(assert (=> d!1968645 (= c!1136660 e!3814686)))

(declare-fun res!2587135 () Bool)

(assert (=> d!1968645 (=> (not res!2587135) (not e!3814686))))

(assert (=> d!1968645 (= res!2587135 (is-Cons!64745 lt!2352033))))

(assert (=> d!1968645 (forall!15318 lt!2352033 lambda!343608)))

(assert (=> d!1968645 (= (generalisedConcat!1787 lt!2352033) lt!2352218)))

(declare-fun b!6272064 () Bool)

(assert (=> b!6272064 (= e!3814685 (= lt!2352218 (head!12880 lt!2352033)))))

(declare-fun b!6272065 () Bool)

(assert (=> b!6272065 (= e!3814685 (isConcat!1119 lt!2352218))))

(declare-fun b!6272066 () Bool)

(assert (=> b!6272066 (= e!3814684 (isEmptyExpr!1596 lt!2352218))))

(assert (= (and d!1968645 res!2587135) b!6272061))

(assert (= (and d!1968645 c!1136660) b!6272060))

(assert (= (and d!1968645 (not c!1136660)) b!6272058))

(assert (= (and b!6272058 c!1136662) b!6272059))

(assert (= (and b!6272058 (not c!1136662)) b!6272057))

(assert (= (and d!1968645 res!2587134) b!6272063))

(assert (= (and b!6272063 c!1136663) b!6272066))

(assert (= (and b!6272063 (not c!1136663)) b!6272062))

(assert (= (and b!6272062 c!1136661) b!6272064))

(assert (= (and b!6272062 (not c!1136661)) b!6272065))

(declare-fun m!7093860 () Bool)

(assert (=> b!6272061 m!7093860))

(declare-fun m!7093862 () Bool)

(assert (=> b!6272063 m!7093862))

(declare-fun m!7093864 () Bool)

(assert (=> b!6272062 m!7093864))

(assert (=> b!6272062 m!7093864))

(declare-fun m!7093866 () Bool)

(assert (=> b!6272062 m!7093866))

(declare-fun m!7093868 () Bool)

(assert (=> b!6272066 m!7093868))

(declare-fun m!7093870 () Bool)

(assert (=> b!6272064 m!7093870))

(declare-fun m!7093872 () Bool)

(assert (=> b!6272059 m!7093872))

(declare-fun m!7093874 () Bool)

(assert (=> b!6272065 m!7093874))

(declare-fun m!7093876 () Bool)

(assert (=> d!1968645 m!7093876))

(declare-fun m!7093878 () Bool)

(assert (=> d!1968645 m!7093878))

(assert (=> b!6271564 d!1968645))

(declare-fun d!1968647 () Bool)

(declare-fun c!1136664 () Bool)

(assert (=> d!1968647 (= c!1136664 (isEmpty!36785 (t!378429 s!2326)))))

(declare-fun e!3814690 () Bool)

(assert (=> d!1968647 (= (matchZipper!2202 lt!2352019 (t!378429 s!2326)) e!3814690)))

(declare-fun b!6272067 () Bool)

(assert (=> b!6272067 (= e!3814690 (nullableZipper!1960 lt!2352019))))

(declare-fun b!6272068 () Bool)

(assert (=> b!6272068 (= e!3814690 (matchZipper!2202 (derivationStepZipper!2156 lt!2352019 (head!12881 (t!378429 s!2326))) (tail!11966 (t!378429 s!2326))))))

(assert (= (and d!1968647 c!1136664) b!6272067))

(assert (= (and d!1968647 (not c!1136664)) b!6272068))

(assert (=> d!1968647 m!7093676))

(declare-fun m!7093880 () Bool)

(assert (=> b!6272067 m!7093880))

(assert (=> b!6272068 m!7093680))

(assert (=> b!6272068 m!7093680))

(declare-fun m!7093882 () Bool)

(assert (=> b!6272068 m!7093882))

(assert (=> b!6272068 m!7093684))

(assert (=> b!6272068 m!7093882))

(assert (=> b!6272068 m!7093684))

(declare-fun m!7093884 () Bool)

(assert (=> b!6272068 m!7093884))

(assert (=> b!6271563 d!1968647))

(declare-fun d!1968649 () Bool)

(declare-fun c!1136665 () Bool)

(assert (=> d!1968649 (= c!1136665 (isEmpty!36785 (t!378429 s!2326)))))

(declare-fun e!3814691 () Bool)

(assert (=> d!1968649 (= (matchZipper!2202 lt!2352038 (t!378429 s!2326)) e!3814691)))

(declare-fun b!6272069 () Bool)

(assert (=> b!6272069 (= e!3814691 (nullableZipper!1960 lt!2352038))))

(declare-fun b!6272070 () Bool)

(assert (=> b!6272070 (= e!3814691 (matchZipper!2202 (derivationStepZipper!2156 lt!2352038 (head!12881 (t!378429 s!2326))) (tail!11966 (t!378429 s!2326))))))

(assert (= (and d!1968649 c!1136665) b!6272069))

(assert (= (and d!1968649 (not c!1136665)) b!6272070))

(assert (=> d!1968649 m!7093676))

(declare-fun m!7093886 () Bool)

(assert (=> b!6272069 m!7093886))

(assert (=> b!6272070 m!7093680))

(assert (=> b!6272070 m!7093680))

(declare-fun m!7093888 () Bool)

(assert (=> b!6272070 m!7093888))

(assert (=> b!6272070 m!7093684))

(assert (=> b!6272070 m!7093888))

(assert (=> b!6272070 m!7093684))

(declare-fun m!7093890 () Bool)

(assert (=> b!6272070 m!7093890))

(assert (=> b!6271567 d!1968649))

(assert (=> b!6271545 d!1968549))

(declare-fun e!3814692 () Bool)

(declare-fun d!1968651 () Bool)

(assert (=> d!1968651 (= (matchZipper!2202 (set.union lt!2352044 lt!2352010) (t!378429 s!2326)) e!3814692)))

(declare-fun res!2587136 () Bool)

(assert (=> d!1968651 (=> res!2587136 e!3814692)))

(assert (=> d!1968651 (= res!2587136 (matchZipper!2202 lt!2352044 (t!378429 s!2326)))))

(declare-fun lt!2352219 () Unit!158091)

(assert (=> d!1968651 (= lt!2352219 (choose!46531 lt!2352044 lt!2352010 (t!378429 s!2326)))))

(assert (=> d!1968651 (= (lemmaZipperConcatMatchesSameAsBothZippers!1021 lt!2352044 lt!2352010 (t!378429 s!2326)) lt!2352219)))

(declare-fun b!6272071 () Bool)

(assert (=> b!6272071 (= e!3814692 (matchZipper!2202 lt!2352010 (t!378429 s!2326)))))

(assert (= (and d!1968651 (not res!2587136)) b!6272071))

(declare-fun m!7093892 () Bool)

(assert (=> d!1968651 m!7093892))

(assert (=> d!1968651 m!7093408))

(declare-fun m!7093894 () Bool)

(assert (=> d!1968651 m!7093894))

(assert (=> b!6272071 m!7093358))

(assert (=> b!6271545 d!1968651))

(declare-fun d!1968653 () Bool)

(assert (=> d!1968653 (= (flatMap!1695 lt!2352043 lambda!343554) (dynLambda!25608 lambda!343554 lt!2352017))))

(declare-fun lt!2352220 () Unit!158091)

(assert (=> d!1968653 (= lt!2352220 (choose!46527 lt!2352043 lt!2352017 lambda!343554))))

(assert (=> d!1968653 (= lt!2352043 (set.insert lt!2352017 (as set.empty (Set Context!11148))))))

(assert (=> d!1968653 (= (lemmaFlatMapOnSingletonSet!1221 lt!2352043 lt!2352017 lambda!343554) lt!2352220)))

(declare-fun b_lambda!238849 () Bool)

(assert (=> (not b_lambda!238849) (not d!1968653)))

(declare-fun bs!1566553 () Bool)

(assert (= bs!1566553 d!1968653))

(assert (=> bs!1566553 m!7093350))

(declare-fun m!7093896 () Bool)

(assert (=> bs!1566553 m!7093896))

(declare-fun m!7093898 () Bool)

(assert (=> bs!1566553 m!7093898))

(assert (=> bs!1566553 m!7093290))

(assert (=> b!6271545 d!1968653))

(declare-fun d!1968655 () Bool)

(declare-fun c!1136666 () Bool)

(assert (=> d!1968655 (= c!1136666 (isEmpty!36785 (t!378429 s!2326)))))

(declare-fun e!3814693 () Bool)

(assert (=> d!1968655 (= (matchZipper!2202 lt!2352018 (t!378429 s!2326)) e!3814693)))

(declare-fun b!6272072 () Bool)

(assert (=> b!6272072 (= e!3814693 (nullableZipper!1960 lt!2352018))))

(declare-fun b!6272073 () Bool)

(assert (=> b!6272073 (= e!3814693 (matchZipper!2202 (derivationStepZipper!2156 lt!2352018 (head!12881 (t!378429 s!2326))) (tail!11966 (t!378429 s!2326))))))

(assert (= (and d!1968655 c!1136666) b!6272072))

(assert (= (and d!1968655 (not c!1136666)) b!6272073))

(assert (=> d!1968655 m!7093676))

(declare-fun m!7093900 () Bool)

(assert (=> b!6272072 m!7093900))

(assert (=> b!6272073 m!7093680))

(assert (=> b!6272073 m!7093680))

(declare-fun m!7093902 () Bool)

(assert (=> b!6272073 m!7093902))

(assert (=> b!6272073 m!7093684))

(assert (=> b!6272073 m!7093902))

(assert (=> b!6272073 m!7093684))

(declare-fun m!7093904 () Bool)

(assert (=> b!6272073 m!7093904))

(assert (=> b!6271545 d!1968655))

(declare-fun d!1968657 () Bool)

(assert (=> d!1968657 (= (flatMap!1695 lt!2352043 lambda!343554) (choose!46526 lt!2352043 lambda!343554))))

(declare-fun bs!1566554 () Bool)

(assert (= bs!1566554 d!1968657))

(declare-fun m!7093906 () Bool)

(assert (=> bs!1566554 m!7093906))

(assert (=> b!6271545 d!1968657))

(declare-fun d!1968659 () Bool)

(declare-fun c!1136667 () Bool)

(assert (=> d!1968659 (= c!1136667 (isEmpty!36785 (t!378429 s!2326)))))

(declare-fun e!3814694 () Bool)

(assert (=> d!1968659 (= (matchZipper!2202 lt!2352014 (t!378429 s!2326)) e!3814694)))

(declare-fun b!6272074 () Bool)

(assert (=> b!6272074 (= e!3814694 (nullableZipper!1960 lt!2352014))))

(declare-fun b!6272075 () Bool)

(assert (=> b!6272075 (= e!3814694 (matchZipper!2202 (derivationStepZipper!2156 lt!2352014 (head!12881 (t!378429 s!2326))) (tail!11966 (t!378429 s!2326))))))

(assert (= (and d!1968659 c!1136667) b!6272074))

(assert (= (and d!1968659 (not c!1136667)) b!6272075))

(assert (=> d!1968659 m!7093676))

(declare-fun m!7093908 () Bool)

(assert (=> b!6272074 m!7093908))

(assert (=> b!6272075 m!7093680))

(assert (=> b!6272075 m!7093680))

(declare-fun m!7093910 () Bool)

(assert (=> b!6272075 m!7093910))

(assert (=> b!6272075 m!7093684))

(assert (=> b!6272075 m!7093910))

(assert (=> b!6272075 m!7093684))

(declare-fun m!7093912 () Bool)

(assert (=> b!6272075 m!7093912))

(assert (=> b!6271545 d!1968659))

(declare-fun d!1968661 () Bool)

(declare-fun c!1136668 () Bool)

(assert (=> d!1968661 (= c!1136668 (isEmpty!36785 (t!378429 s!2326)))))

(declare-fun e!3814695 () Bool)

(assert (=> d!1968661 (= (matchZipper!2202 lt!2352010 (t!378429 s!2326)) e!3814695)))

(declare-fun b!6272076 () Bool)

(assert (=> b!6272076 (= e!3814695 (nullableZipper!1960 lt!2352010))))

(declare-fun b!6272077 () Bool)

(assert (=> b!6272077 (= e!3814695 (matchZipper!2202 (derivationStepZipper!2156 lt!2352010 (head!12881 (t!378429 s!2326))) (tail!11966 (t!378429 s!2326))))))

(assert (= (and d!1968661 c!1136668) b!6272076))

(assert (= (and d!1968661 (not c!1136668)) b!6272077))

(assert (=> d!1968661 m!7093676))

(declare-fun m!7093914 () Bool)

(assert (=> b!6272076 m!7093914))

(assert (=> b!6272077 m!7093680))

(assert (=> b!6272077 m!7093680))

(declare-fun m!7093916 () Bool)

(assert (=> b!6272077 m!7093916))

(assert (=> b!6272077 m!7093684))

(assert (=> b!6272077 m!7093916))

(assert (=> b!6272077 m!7093684))

(declare-fun m!7093918 () Bool)

(assert (=> b!6272077 m!7093918))

(assert (=> b!6271566 d!1968661))

(assert (=> b!6271565 d!1968647))

(declare-fun d!1968663 () Bool)

(assert (=> d!1968663 (= (isEmpty!36781 (t!378427 (exprs!6074 (h!71194 zl!343)))) (is-Nil!64745 (t!378427 (exprs!6074 (h!71194 zl!343)))))))

(assert (=> b!6271559 d!1968663))

(declare-fun d!1968665 () Bool)

(declare-fun c!1136669 () Bool)

(assert (=> d!1968665 (= c!1136669 (isEmpty!36785 (t!378429 s!2326)))))

(declare-fun e!3814696 () Bool)

(assert (=> d!1968665 (= (matchZipper!2202 (derivationStepZipper!2156 lt!2352043 (h!71195 s!2326)) (t!378429 s!2326)) e!3814696)))

(declare-fun b!6272078 () Bool)

(assert (=> b!6272078 (= e!3814696 (nullableZipper!1960 (derivationStepZipper!2156 lt!2352043 (h!71195 s!2326))))))

(declare-fun b!6272079 () Bool)

(assert (=> b!6272079 (= e!3814696 (matchZipper!2202 (derivationStepZipper!2156 (derivationStepZipper!2156 lt!2352043 (h!71195 s!2326)) (head!12881 (t!378429 s!2326))) (tail!11966 (t!378429 s!2326))))))

(assert (= (and d!1968665 c!1136669) b!6272078))

(assert (= (and d!1968665 (not c!1136669)) b!6272079))

(assert (=> d!1968665 m!7093676))

(assert (=> b!6272078 m!7093402))

(declare-fun m!7093920 () Bool)

(assert (=> b!6272078 m!7093920))

(assert (=> b!6272079 m!7093680))

(assert (=> b!6272079 m!7093402))

(assert (=> b!6272079 m!7093680))

(declare-fun m!7093922 () Bool)

(assert (=> b!6272079 m!7093922))

(assert (=> b!6272079 m!7093684))

(assert (=> b!6272079 m!7093922))

(assert (=> b!6272079 m!7093684))

(declare-fun m!7093924 () Bool)

(assert (=> b!6272079 m!7093924))

(assert (=> b!6271557 d!1968665))

(declare-fun bs!1566555 () Bool)

(declare-fun d!1968667 () Bool)

(assert (= bs!1566555 (and d!1968667 b!6271575)))

(declare-fun lambda!343609 () Int)

(assert (=> bs!1566555 (= lambda!343609 lambda!343554)))

(declare-fun bs!1566556 () Bool)

(assert (= bs!1566556 (and d!1968667 d!1968557)))

(assert (=> bs!1566556 (= lambda!343609 lambda!343572)))

(assert (=> d!1968667 true))

(assert (=> d!1968667 (= (derivationStepZipper!2156 lt!2352043 (h!71195 s!2326)) (flatMap!1695 lt!2352043 lambda!343609))))

(declare-fun bs!1566557 () Bool)

(assert (= bs!1566557 d!1968667))

(declare-fun m!7093926 () Bool)

(assert (=> bs!1566557 m!7093926))

(assert (=> b!6271557 d!1968667))

(declare-fun bs!1566558 () Bool)

(declare-fun b!6272116 () Bool)

(assert (= bs!1566558 (and b!6272116 d!1968569)))

(declare-fun lambda!343614 () Int)

(assert (=> bs!1566558 (not (= lambda!343614 lambda!343581))))

(declare-fun bs!1566559 () Bool)

(assert (= bs!1566559 (and b!6272116 b!6271555)))

(assert (=> bs!1566559 (not (= lambda!343614 lambda!343552))))

(declare-fun bs!1566560 () Bool)

(assert (= bs!1566560 (and b!6272116 d!1968571)))

(assert (=> bs!1566560 (not (= lambda!343614 lambda!343587))))

(assert (=> bs!1566559 (not (= lambda!343614 lambda!343553))))

(assert (=> bs!1566560 (not (= lambda!343614 lambda!343586))))

(assert (=> b!6272116 true))

(assert (=> b!6272116 true))

(declare-fun bs!1566561 () Bool)

(declare-fun b!6272118 () Bool)

(assert (= bs!1566561 (and b!6272118 d!1968569)))

(declare-fun lambda!343615 () Int)

(assert (=> bs!1566561 (not (= lambda!343615 lambda!343581))))

(declare-fun bs!1566562 () Bool)

(assert (= bs!1566562 (and b!6272118 b!6271555)))

(assert (=> bs!1566562 (not (= lambda!343615 lambda!343552))))

(declare-fun bs!1566563 () Bool)

(assert (= bs!1566563 (and b!6272118 d!1968571)))

(assert (=> bs!1566563 (= lambda!343615 lambda!343587)))

(assert (=> bs!1566562 (= lambda!343615 lambda!343553)))

(assert (=> bs!1566563 (not (= lambda!343615 lambda!343586))))

(declare-fun bs!1566564 () Bool)

(assert (= bs!1566564 (and b!6272118 b!6272116)))

(assert (=> bs!1566564 (not (= lambda!343615 lambda!343614))))

(assert (=> b!6272118 true))

(assert (=> b!6272118 true))

(declare-fun b!6272112 () Bool)

(declare-fun res!2587153 () Bool)

(declare-fun e!3814716 () Bool)

(assert (=> b!6272112 (=> res!2587153 e!3814716)))

(declare-fun call!530499 () Bool)

(assert (=> b!6272112 (= res!2587153 call!530499)))

(declare-fun e!3814721 () Bool)

(assert (=> b!6272112 (= e!3814721 e!3814716)))

(declare-fun b!6272113 () Bool)

(declare-fun e!3814719 () Bool)

(assert (=> b!6272113 (= e!3814719 e!3814721)))

(declare-fun c!1136678 () Bool)

(assert (=> b!6272113 (= c!1136678 (is-Star!16190 r!7292))))

(declare-fun b!6272114 () Bool)

(declare-fun e!3814715 () Bool)

(assert (=> b!6272114 (= e!3814719 e!3814715)))

(declare-fun res!2587154 () Bool)

(assert (=> b!6272114 (= res!2587154 (matchRSpec!3291 (regOne!32893 r!7292) s!2326))))

(assert (=> b!6272114 (=> res!2587154 e!3814715)))

(declare-fun b!6272115 () Bool)

(declare-fun c!1136679 () Bool)

(assert (=> b!6272115 (= c!1136679 (is-ElementMatch!16190 r!7292))))

(declare-fun e!3814717 () Bool)

(declare-fun e!3814720 () Bool)

(assert (=> b!6272115 (= e!3814717 e!3814720)))

(declare-fun bm!530493 () Bool)

(assert (=> bm!530493 (= call!530499 (isEmpty!36785 s!2326))))

(declare-fun call!530498 () Bool)

(assert (=> b!6272116 (= e!3814716 call!530498)))

(declare-fun b!6272117 () Bool)

(declare-fun e!3814718 () Bool)

(assert (=> b!6272117 (= e!3814718 call!530499)))

(declare-fun d!1968669 () Bool)

(declare-fun c!1136680 () Bool)

(assert (=> d!1968669 (= c!1136680 (is-EmptyExpr!16190 r!7292))))

(assert (=> d!1968669 (= (matchRSpec!3291 r!7292 s!2326) e!3814718)))

(declare-fun bm!530494 () Bool)

(assert (=> bm!530494 (= call!530498 (Exists!3260 (ite c!1136678 lambda!343614 lambda!343615)))))

(assert (=> b!6272118 (= e!3814721 call!530498)))

(declare-fun b!6272119 () Bool)

(assert (=> b!6272119 (= e!3814720 (= s!2326 (Cons!64747 (c!1136523 r!7292) Nil!64747)))))

(declare-fun b!6272120 () Bool)

(declare-fun c!1136681 () Bool)

(assert (=> b!6272120 (= c!1136681 (is-Union!16190 r!7292))))

(assert (=> b!6272120 (= e!3814720 e!3814719)))

(declare-fun b!6272121 () Bool)

(assert (=> b!6272121 (= e!3814718 e!3814717)))

(declare-fun res!2587155 () Bool)

(assert (=> b!6272121 (= res!2587155 (not (is-EmptyLang!16190 r!7292)))))

(assert (=> b!6272121 (=> (not res!2587155) (not e!3814717))))

(declare-fun b!6272122 () Bool)

(assert (=> b!6272122 (= e!3814715 (matchRSpec!3291 (regTwo!32893 r!7292) s!2326))))

(assert (= (and d!1968669 c!1136680) b!6272117))

(assert (= (and d!1968669 (not c!1136680)) b!6272121))

(assert (= (and b!6272121 res!2587155) b!6272115))

(assert (= (and b!6272115 c!1136679) b!6272119))

(assert (= (and b!6272115 (not c!1136679)) b!6272120))

(assert (= (and b!6272120 c!1136681) b!6272114))

(assert (= (and b!6272120 (not c!1136681)) b!6272113))

(assert (= (and b!6272114 (not res!2587154)) b!6272122))

(assert (= (and b!6272113 c!1136678) b!6272112))

(assert (= (and b!6272113 (not c!1136678)) b!6272118))

(assert (= (and b!6272112 (not res!2587153)) b!6272116))

(assert (= (or b!6272116 b!6272118) bm!530494))

(assert (= (or b!6272117 b!6272112) bm!530493))

(declare-fun m!7093928 () Bool)

(assert (=> b!6272114 m!7093928))

(assert (=> bm!530493 m!7093810))

(declare-fun m!7093930 () Bool)

(assert (=> bm!530494 m!7093930))

(declare-fun m!7093932 () Bool)

(assert (=> b!6272122 m!7093932))

(assert (=> b!6271540 d!1968669))

(declare-fun b!6272123 () Bool)

(declare-fun res!2587162 () Bool)

(declare-fun e!3814723 () Bool)

(assert (=> b!6272123 (=> res!2587162 e!3814723)))

(assert (=> b!6272123 (= res!2587162 (not (is-ElementMatch!16190 r!7292)))))

(declare-fun e!3814727 () Bool)

(assert (=> b!6272123 (= e!3814727 e!3814723)))

(declare-fun b!6272124 () Bool)

(declare-fun e!3814726 () Bool)

(assert (=> b!6272124 (= e!3814723 e!3814726)))

(declare-fun res!2587163 () Bool)

(assert (=> b!6272124 (=> (not res!2587163) (not e!3814726))))

(declare-fun lt!2352221 () Bool)

(assert (=> b!6272124 (= res!2587163 (not lt!2352221))))

(declare-fun b!6272125 () Bool)

(assert (=> b!6272125 (= e!3814727 (not lt!2352221))))

(declare-fun b!6272126 () Bool)

(declare-fun e!3814722 () Bool)

(assert (=> b!6272126 (= e!3814722 (matchR!8373 (derivativeStep!4899 r!7292 (head!12881 s!2326)) (tail!11966 s!2326)))))

(declare-fun b!6272127 () Bool)

(declare-fun e!3814728 () Bool)

(declare-fun call!530500 () Bool)

(assert (=> b!6272127 (= e!3814728 (= lt!2352221 call!530500))))

(declare-fun b!6272128 () Bool)

(declare-fun e!3814725 () Bool)

(assert (=> b!6272128 (= e!3814725 (= (head!12881 s!2326) (c!1136523 r!7292)))))

(declare-fun b!6272129 () Bool)

(declare-fun res!2587157 () Bool)

(declare-fun e!3814724 () Bool)

(assert (=> b!6272129 (=> res!2587157 e!3814724)))

(assert (=> b!6272129 (= res!2587157 (not (isEmpty!36785 (tail!11966 s!2326))))))

(declare-fun b!6272130 () Bool)

(assert (=> b!6272130 (= e!3814722 (nullable!6183 r!7292))))

(declare-fun b!6272131 () Bool)

(assert (=> b!6272131 (= e!3814728 e!3814727)))

(declare-fun c!1136682 () Bool)

(assert (=> b!6272131 (= c!1136682 (is-EmptyLang!16190 r!7292))))

(declare-fun d!1968671 () Bool)

(assert (=> d!1968671 e!3814728))

(declare-fun c!1136683 () Bool)

(assert (=> d!1968671 (= c!1136683 (is-EmptyExpr!16190 r!7292))))

(assert (=> d!1968671 (= lt!2352221 e!3814722)))

(declare-fun c!1136684 () Bool)

(assert (=> d!1968671 (= c!1136684 (isEmpty!36785 s!2326))))

(assert (=> d!1968671 (validRegex!7926 r!7292)))

(assert (=> d!1968671 (= (matchR!8373 r!7292 s!2326) lt!2352221)))

(declare-fun b!6272132 () Bool)

(declare-fun res!2587160 () Bool)

(assert (=> b!6272132 (=> res!2587160 e!3814723)))

(assert (=> b!6272132 (= res!2587160 e!3814725)))

(declare-fun res!2587156 () Bool)

(assert (=> b!6272132 (=> (not res!2587156) (not e!3814725))))

(assert (=> b!6272132 (= res!2587156 lt!2352221)))

(declare-fun b!6272133 () Bool)

(assert (=> b!6272133 (= e!3814724 (not (= (head!12881 s!2326) (c!1136523 r!7292))))))

(declare-fun b!6272134 () Bool)

(declare-fun res!2587161 () Bool)

(assert (=> b!6272134 (=> (not res!2587161) (not e!3814725))))

(assert (=> b!6272134 (= res!2587161 (isEmpty!36785 (tail!11966 s!2326)))))

(declare-fun bm!530495 () Bool)

(assert (=> bm!530495 (= call!530500 (isEmpty!36785 s!2326))))

(declare-fun b!6272135 () Bool)

(assert (=> b!6272135 (= e!3814726 e!3814724)))

(declare-fun res!2587159 () Bool)

(assert (=> b!6272135 (=> res!2587159 e!3814724)))

(assert (=> b!6272135 (= res!2587159 call!530500)))

(declare-fun b!6272136 () Bool)

(declare-fun res!2587158 () Bool)

(assert (=> b!6272136 (=> (not res!2587158) (not e!3814725))))

(assert (=> b!6272136 (= res!2587158 (not call!530500))))

(assert (= (and d!1968671 c!1136684) b!6272130))

(assert (= (and d!1968671 (not c!1136684)) b!6272126))

(assert (= (and d!1968671 c!1136683) b!6272127))

(assert (= (and d!1968671 (not c!1136683)) b!6272131))

(assert (= (and b!6272131 c!1136682) b!6272125))

(assert (= (and b!6272131 (not c!1136682)) b!6272123))

(assert (= (and b!6272123 (not res!2587162)) b!6272132))

(assert (= (and b!6272132 res!2587156) b!6272136))

(assert (= (and b!6272136 res!2587158) b!6272134))

(assert (= (and b!6272134 res!2587161) b!6272128))

(assert (= (and b!6272132 (not res!2587160)) b!6272124))

(assert (= (and b!6272124 res!2587163) b!6272135))

(assert (= (and b!6272135 (not res!2587159)) b!6272129))

(assert (= (and b!6272129 (not res!2587157)) b!6272133))

(assert (= (or b!6272127 b!6272135 b!6272136) bm!530495))

(assert (=> b!6272128 m!7093798))

(assert (=> b!6272134 m!7093800))

(assert (=> b!6272134 m!7093800))

(assert (=> b!6272134 m!7093802))

(assert (=> b!6272129 m!7093800))

(assert (=> b!6272129 m!7093800))

(assert (=> b!6272129 m!7093802))

(declare-fun m!7093934 () Bool)

(assert (=> b!6272130 m!7093934))

(assert (=> b!6272133 m!7093798))

(assert (=> b!6272126 m!7093798))

(assert (=> b!6272126 m!7093798))

(declare-fun m!7093936 () Bool)

(assert (=> b!6272126 m!7093936))

(assert (=> b!6272126 m!7093800))

(assert (=> b!6272126 m!7093936))

(assert (=> b!6272126 m!7093800))

(declare-fun m!7093938 () Bool)

(assert (=> b!6272126 m!7093938))

(assert (=> bm!530495 m!7093810))

(assert (=> d!1968671 m!7093810))

(assert (=> d!1968671 m!7093400))

(assert (=> b!6271540 d!1968671))

(declare-fun d!1968673 () Bool)

(assert (=> d!1968673 (= (matchR!8373 r!7292 s!2326) (matchRSpec!3291 r!7292 s!2326))))

(declare-fun lt!2352224 () Unit!158091)

(declare-fun choose!46533 (Regex!16190 List!64871) Unit!158091)

(assert (=> d!1968673 (= lt!2352224 (choose!46533 r!7292 s!2326))))

(assert (=> d!1968673 (validRegex!7926 r!7292)))

(assert (=> d!1968673 (= (mainMatchTheorem!3291 r!7292 s!2326) lt!2352224)))

(declare-fun bs!1566565 () Bool)

(assert (= bs!1566565 d!1968673))

(assert (=> bs!1566565 m!7093336))

(assert (=> bs!1566565 m!7093334))

(declare-fun m!7093940 () Bool)

(assert (=> bs!1566565 m!7093940))

(assert (=> bs!1566565 m!7093400))

(assert (=> b!6271540 d!1968673))

(declare-fun d!1968675 () Bool)

(declare-fun lt!2352227 () Regex!16190)

(assert (=> d!1968675 (validRegex!7926 lt!2352227)))

(assert (=> d!1968675 (= lt!2352227 (generalisedUnion!2034 (unfocusZipperList!1611 zl!343)))))

(assert (=> d!1968675 (= (unfocusZipper!1932 zl!343) lt!2352227)))

(declare-fun bs!1566566 () Bool)

(assert (= bs!1566566 d!1968675))

(declare-fun m!7093942 () Bool)

(assert (=> bs!1566566 m!7093942))

(assert (=> bs!1566566 m!7093380))

(assert (=> bs!1566566 m!7093380))

(assert (=> bs!1566566 m!7093382))

(assert (=> b!6271561 d!1968675))

(declare-fun d!1968677 () Bool)

(declare-fun e!3814731 () Bool)

(assert (=> d!1968677 e!3814731))

(declare-fun res!2587166 () Bool)

(assert (=> d!1968677 (=> (not res!2587166) (not e!3814731))))

(declare-fun lt!2352230 () List!64870)

(declare-fun noDuplicate!2024 (List!64870) Bool)

(assert (=> d!1968677 (= res!2587166 (noDuplicate!2024 lt!2352230))))

(declare-fun choose!46534 ((Set Context!11148)) List!64870)

(assert (=> d!1968677 (= lt!2352230 (choose!46534 z!1189))))

(assert (=> d!1968677 (= (toList!9974 z!1189) lt!2352230)))

(declare-fun b!6272139 () Bool)

(declare-fun content!12163 (List!64870) (Set Context!11148))

(assert (=> b!6272139 (= e!3814731 (= (content!12163 lt!2352230) z!1189))))

(assert (= (and d!1968677 res!2587166) b!6272139))

(declare-fun m!7093944 () Bool)

(assert (=> d!1968677 m!7093944))

(declare-fun m!7093946 () Bool)

(assert (=> d!1968677 m!7093946))

(declare-fun m!7093948 () Bool)

(assert (=> b!6272139 m!7093948))

(assert (=> b!6271560 d!1968677))

(declare-fun b!6272151 () Bool)

(declare-fun e!3814734 () Bool)

(declare-fun tp!1749102 () Bool)

(declare-fun tp!1749101 () Bool)

(assert (=> b!6272151 (= e!3814734 (and tp!1749102 tp!1749101))))

(declare-fun b!6272153 () Bool)

(declare-fun tp!1749104 () Bool)

(declare-fun tp!1749103 () Bool)

(assert (=> b!6272153 (= e!3814734 (and tp!1749104 tp!1749103))))

(assert (=> b!6271553 (= tp!1749053 e!3814734)))

(declare-fun b!6272150 () Bool)

(assert (=> b!6272150 (= e!3814734 tp_is_empty!41633)))

(declare-fun b!6272152 () Bool)

(declare-fun tp!1749105 () Bool)

(assert (=> b!6272152 (= e!3814734 tp!1749105)))

(assert (= (and b!6271553 (is-ElementMatch!16190 (regOne!32893 r!7292))) b!6272150))

(assert (= (and b!6271553 (is-Concat!25035 (regOne!32893 r!7292))) b!6272151))

(assert (= (and b!6271553 (is-Star!16190 (regOne!32893 r!7292))) b!6272152))

(assert (= (and b!6271553 (is-Union!16190 (regOne!32893 r!7292))) b!6272153))

(declare-fun b!6272155 () Bool)

(declare-fun e!3814735 () Bool)

(declare-fun tp!1749107 () Bool)

(declare-fun tp!1749106 () Bool)

(assert (=> b!6272155 (= e!3814735 (and tp!1749107 tp!1749106))))

(declare-fun b!6272157 () Bool)

(declare-fun tp!1749109 () Bool)

(declare-fun tp!1749108 () Bool)

(assert (=> b!6272157 (= e!3814735 (and tp!1749109 tp!1749108))))

(assert (=> b!6271553 (= tp!1749054 e!3814735)))

(declare-fun b!6272154 () Bool)

(assert (=> b!6272154 (= e!3814735 tp_is_empty!41633)))

(declare-fun b!6272156 () Bool)

(declare-fun tp!1749110 () Bool)

(assert (=> b!6272156 (= e!3814735 tp!1749110)))

(assert (= (and b!6271553 (is-ElementMatch!16190 (regTwo!32893 r!7292))) b!6272154))

(assert (= (and b!6271553 (is-Concat!25035 (regTwo!32893 r!7292))) b!6272155))

(assert (= (and b!6271553 (is-Star!16190 (regTwo!32893 r!7292))) b!6272156))

(assert (= (and b!6271553 (is-Union!16190 (regTwo!32893 r!7292))) b!6272157))

(declare-fun b!6272162 () Bool)

(declare-fun e!3814738 () Bool)

(declare-fun tp!1749115 () Bool)

(declare-fun tp!1749116 () Bool)

(assert (=> b!6272162 (= e!3814738 (and tp!1749115 tp!1749116))))

(assert (=> b!6271558 (= tp!1749056 e!3814738)))

(assert (= (and b!6271558 (is-Cons!64745 (exprs!6074 (h!71194 zl!343)))) b!6272162))

(declare-fun b!6272163 () Bool)

(declare-fun e!3814739 () Bool)

(declare-fun tp!1749117 () Bool)

(declare-fun tp!1749118 () Bool)

(assert (=> b!6272163 (= e!3814739 (and tp!1749117 tp!1749118))))

(assert (=> b!6271542 (= tp!1749060 e!3814739)))

(assert (= (and b!6271542 (is-Cons!64745 (exprs!6074 setElem!42653))) b!6272163))

(declare-fun b!6272171 () Bool)

(declare-fun e!3814745 () Bool)

(declare-fun tp!1749123 () Bool)

(assert (=> b!6272171 (= e!3814745 tp!1749123)))

(declare-fun b!6272170 () Bool)

(declare-fun tp!1749124 () Bool)

(declare-fun e!3814744 () Bool)

(assert (=> b!6272170 (= e!3814744 (and (inv!83723 (h!71194 (t!378428 zl!343))) e!3814745 tp!1749124))))

(assert (=> b!6271547 (= tp!1749052 e!3814744)))

(assert (= b!6272170 b!6272171))

(assert (= (and b!6271547 (is-Cons!64746 (t!378428 zl!343))) b!6272170))

(declare-fun m!7093950 () Bool)

(assert (=> b!6272170 m!7093950))

(declare-fun condSetEmpty!42659 () Bool)

(assert (=> setNonEmpty!42653 (= condSetEmpty!42659 (= setRest!42653 (as set.empty (Set Context!11148))))))

(declare-fun setRes!42659 () Bool)

(assert (=> setNonEmpty!42653 (= tp!1749058 setRes!42659)))

(declare-fun setIsEmpty!42659 () Bool)

(assert (=> setIsEmpty!42659 setRes!42659))

(declare-fun setElem!42659 () Context!11148)

(declare-fun setNonEmpty!42659 () Bool)

(declare-fun tp!1749130 () Bool)

(declare-fun e!3814748 () Bool)

(assert (=> setNonEmpty!42659 (= setRes!42659 (and tp!1749130 (inv!83723 setElem!42659) e!3814748))))

(declare-fun setRest!42659 () (Set Context!11148))

(assert (=> setNonEmpty!42659 (= setRest!42653 (set.union (set.insert setElem!42659 (as set.empty (Set Context!11148))) setRest!42659))))

(declare-fun b!6272176 () Bool)

(declare-fun tp!1749129 () Bool)

(assert (=> b!6272176 (= e!3814748 tp!1749129)))

(assert (= (and setNonEmpty!42653 condSetEmpty!42659) setIsEmpty!42659))

(assert (= (and setNonEmpty!42653 (not condSetEmpty!42659)) setNonEmpty!42659))

(assert (= setNonEmpty!42659 b!6272176))

(declare-fun m!7093952 () Bool)

(assert (=> setNonEmpty!42659 m!7093952))

(declare-fun b!6272178 () Bool)

(declare-fun e!3814749 () Bool)

(declare-fun tp!1749132 () Bool)

(declare-fun tp!1749131 () Bool)

(assert (=> b!6272178 (= e!3814749 (and tp!1749132 tp!1749131))))

(declare-fun b!6272180 () Bool)

(declare-fun tp!1749134 () Bool)

(declare-fun tp!1749133 () Bool)

(assert (=> b!6272180 (= e!3814749 (and tp!1749134 tp!1749133))))

(assert (=> b!6271546 (= tp!1749059 e!3814749)))

(declare-fun b!6272177 () Bool)

(assert (=> b!6272177 (= e!3814749 tp_is_empty!41633)))

(declare-fun b!6272179 () Bool)

(declare-fun tp!1749135 () Bool)

(assert (=> b!6272179 (= e!3814749 tp!1749135)))

(assert (= (and b!6271546 (is-ElementMatch!16190 (reg!16519 r!7292))) b!6272177))

(assert (= (and b!6271546 (is-Concat!25035 (reg!16519 r!7292))) b!6272178))

(assert (= (and b!6271546 (is-Star!16190 (reg!16519 r!7292))) b!6272179))

(assert (= (and b!6271546 (is-Union!16190 (reg!16519 r!7292))) b!6272180))

(declare-fun b!6272182 () Bool)

(declare-fun e!3814750 () Bool)

(declare-fun tp!1749137 () Bool)

(declare-fun tp!1749136 () Bool)

(assert (=> b!6272182 (= e!3814750 (and tp!1749137 tp!1749136))))

(declare-fun b!6272184 () Bool)

(declare-fun tp!1749139 () Bool)

(declare-fun tp!1749138 () Bool)

(assert (=> b!6272184 (= e!3814750 (and tp!1749139 tp!1749138))))

(assert (=> b!6271556 (= tp!1749051 e!3814750)))

(declare-fun b!6272181 () Bool)

(assert (=> b!6272181 (= e!3814750 tp_is_empty!41633)))

(declare-fun b!6272183 () Bool)

(declare-fun tp!1749140 () Bool)

(assert (=> b!6272183 (= e!3814750 tp!1749140)))

(assert (= (and b!6271556 (is-ElementMatch!16190 (regOne!32892 r!7292))) b!6272181))

(assert (= (and b!6271556 (is-Concat!25035 (regOne!32892 r!7292))) b!6272182))

(assert (= (and b!6271556 (is-Star!16190 (regOne!32892 r!7292))) b!6272183))

(assert (= (and b!6271556 (is-Union!16190 (regOne!32892 r!7292))) b!6272184))

(declare-fun b!6272186 () Bool)

(declare-fun e!3814751 () Bool)

(declare-fun tp!1749142 () Bool)

(declare-fun tp!1749141 () Bool)

(assert (=> b!6272186 (= e!3814751 (and tp!1749142 tp!1749141))))

(declare-fun b!6272188 () Bool)

(declare-fun tp!1749144 () Bool)

(declare-fun tp!1749143 () Bool)

(assert (=> b!6272188 (= e!3814751 (and tp!1749144 tp!1749143))))

(assert (=> b!6271556 (= tp!1749057 e!3814751)))

(declare-fun b!6272185 () Bool)

(assert (=> b!6272185 (= e!3814751 tp_is_empty!41633)))

(declare-fun b!6272187 () Bool)

(declare-fun tp!1749145 () Bool)

(assert (=> b!6272187 (= e!3814751 tp!1749145)))

(assert (= (and b!6271556 (is-ElementMatch!16190 (regTwo!32892 r!7292))) b!6272185))

(assert (= (and b!6271556 (is-Concat!25035 (regTwo!32892 r!7292))) b!6272186))

(assert (= (and b!6271556 (is-Star!16190 (regTwo!32892 r!7292))) b!6272187))

(assert (= (and b!6271556 (is-Union!16190 (regTwo!32892 r!7292))) b!6272188))

(declare-fun b!6272193 () Bool)

(declare-fun e!3814754 () Bool)

(declare-fun tp!1749148 () Bool)

(assert (=> b!6272193 (= e!3814754 (and tp_is_empty!41633 tp!1749148))))

(assert (=> b!6271544 (= tp!1749055 e!3814754)))

(assert (= (and b!6271544 (is-Cons!64747 (t!378429 s!2326))) b!6272193))

(declare-fun b_lambda!238851 () Bool)

(assert (= b_lambda!238847 (or b!6271575 b_lambda!238851)))

(declare-fun bs!1566567 () Bool)

(declare-fun d!1968679 () Bool)

(assert (= bs!1566567 (and d!1968679 b!6271575)))

(assert (=> bs!1566567 (= (dynLambda!25608 lambda!343554 (h!71194 zl!343)) (derivationStepZipperUp!1364 (h!71194 zl!343) (h!71195 s!2326)))))

(assert (=> bs!1566567 m!7093392))

(assert (=> d!1968587 d!1968679))

(declare-fun b_lambda!238853 () Bool)

(assert (= b_lambda!238849 (or b!6271575 b_lambda!238853)))

(declare-fun bs!1566568 () Bool)

(declare-fun d!1968681 () Bool)

(assert (= bs!1566568 (and d!1968681 b!6271575)))

(assert (=> bs!1566568 (= (dynLambda!25608 lambda!343554 lt!2352017) (derivationStepZipperUp!1364 lt!2352017 (h!71195 s!2326)))))

(assert (=> bs!1566568 m!7093300))

(assert (=> d!1968653 d!1968681))

(declare-fun b_lambda!238855 () Bool)

(assert (= b_lambda!238845 (or b!6271575 b_lambda!238855)))

(declare-fun bs!1566569 () Bool)

(declare-fun d!1968683 () Bool)

(assert (= bs!1566569 (and d!1968683 b!6271575)))

(assert (=> bs!1566569 (= (dynLambda!25608 lambda!343554 lt!2352039) (derivationStepZipperUp!1364 lt!2352039 (h!71195 s!2326)))))

(assert (=> bs!1566569 m!7093292))

(assert (=> d!1968555 d!1968683))

(push 1)

(assert (not b!6271814))

(assert (not bm!530460))

(assert (not b!6272030))

(assert (not d!1968653))

(assert (not d!1968673))

(assert (not b!6271881))

(assert (not b!6272069))

(assert (not b!6271922))

(assert (not bm!530466))

(assert (not b!6272078))

(assert (not b!6271882))

(assert (not b!6272176))

(assert (not b!6271787))

(assert (not b!6272031))

(assert (not b!6272026))

(assert (not d!1968603))

(assert (not b!6271877))

(assert (not b!6271889))

(assert (not b!6271947))

(assert (not bm!530461))

(assert (not b!6272043))

(assert (not b!6272017))

(assert (not bm!530456))

(assert (not d!1968569))

(assert (not b!6271843))

(assert (not d!1968577))

(assert (not b!6272073))

(assert (not bm!530485))

(assert (not b!6272070))

(assert (not b!6271789))

(assert (not b!6272178))

(assert (not b!6272187))

(assert (not d!1968585))

(assert (not b!6271977))

(assert (not b!6271879))

(assert (not b!6271750))

(assert (not b!6272186))

(assert (not d!1968649))

(assert (not d!1968671))

(assert (not b!6271759))

(assert (not b!6271858))

(assert (not b!6271790))

(assert (not b!6272130))

(assert (not b!6272179))

(assert (not d!1968645))

(assert (not d!1968561))

(assert (not d!1968665))

(assert (not bm!530462))

(assert (not b!6272171))

(assert (not d!1968661))

(assert (not b!6272182))

(assert (not bm!530488))

(assert (not d!1968607))

(assert (not b!6271874))

(assert (not b!6271753))

(assert (not b!6272016))

(assert (not b!6272063))

(assert (not d!1968615))

(assert (not d!1968655))

(assert (not b!6271872))

(assert (not b!6271755))

(assert (not b!6272122))

(assert (not d!1968573))

(assert (not b!6272188))

(assert (not d!1968601))

(assert (not b!6272027))

(assert (not b!6272153))

(assert (not d!1968595))

(assert (not bs!1566569))

(assert (not b!6272163))

(assert (not b_lambda!238855))

(assert (not b!6272134))

(assert (not b!6272042))

(assert (not b!6272157))

(assert (not b!6272072))

(assert (not b!6272156))

(assert (not d!1968643))

(assert (not b!6272075))

(assert (not bm!530480))

(assert (not b!6272077))

(assert (not b!6271726))

(assert (not b!6271785))

(assert (not b!6271880))

(assert (not d!1968635))

(assert (not bm!530468))

(assert (not b!6272039))

(assert (not d!1968571))

(assert (not b!6271918))

(assert (not b!6271808))

(assert (not d!1968587))

(assert (not b!6271764))

(assert (not d!1968593))

(assert (not b!6272059))

(assert (not b!6271919))

(assert (not bm!530472))

(assert (not b!6272170))

(assert (not b!6272133))

(assert (not b!6272055))

(assert (not d!1968609))

(assert (not b!6272024))

(assert (not b!6272064))

(assert (not d!1968591))

(assert (not b!6271859))

(assert (not b!6271754))

(assert (not b!6272011))

(assert (not setNonEmpty!42659))

(assert (not b!6271916))

(assert (not b!6271860))

(assert (not b!6272151))

(assert (not d!1968605))

(assert (not d!1968667))

(assert (not bm!530495))

(assert (not b!6271818))

(assert (not b!6272061))

(assert (not bs!1566568))

(assert (not d!1968659))

(assert (not b!6272054))

(assert (not b!6271813))

(assert (not b!6272152))

(assert (not b!6272126))

(assert (not b!6271857))

(assert (not d!1968677))

(assert (not b!6272139))

(assert (not b!6272079))

(assert (not b!6272155))

(assert (not b!6272074))

(assert (not d!1968559))

(assert (not d!1968563))

(assert (not d!1968641))

(assert (not b!6271809))

(assert (not b!6272029))

(assert (not b!6272021))

(assert (not b!6272071))

(assert (not d!1968555))

(assert (not b!6272009))

(assert (not b!6272076))

(assert (not b!6272067))

(assert (not d!1968553))

(assert (not b!6271722))

(assert (not b!6271862))

(assert (not b!6272062))

(assert (not bm!530467))

(assert (not bm!530455))

(assert (not bm!530439))

(assert (not d!1968675))

(assert (not b!6272162))

(assert (not bm!530494))

(assert (not b!6271727))

(assert (not b!6272183))

(assert (not b!6272129))

(assert (not b!6271791))

(assert (not b!6271721))

(assert (not b!6272180))

(assert (not d!1968631))

(assert (not b!6272068))

(assert (not b_lambda!238853))

(assert (not b!6272065))

(assert (not b!6272114))

(assert (not b!6272013))

(assert (not b!6271786))

(assert (not b!6272028))

(assert (not b!6272038))

(assert (not b!6272056))

(assert (not bm!530493))

(assert (not bm!530440))

(assert (not bs!1566567))

(assert (not b!6272037))

(assert (not b!6271758))

(assert (not d!1968637))

(assert (not b!6271949))

(assert (not b!6271887))

(assert (not b!6272128))

(assert (not d!1968647))

(assert (not b!6271920))

(assert (not b!6271915))

(assert (not d!1968651))

(assert (not b!6271933))

(assert (not b!6271913))

(assert (not bm!530438))

(assert (not bm!530441))

(assert (not b!6272020))

(assert (not d!1968589))

(assert (not b!6271865))

(assert (not bm!530487))

(assert (not b!6272066))

(assert (not b_lambda!238851))

(assert (not d!1968633))

(assert tp_is_empty!41633)

(assert (not d!1968657))

(assert (not b!6272184))

(assert (not b!6271917))

(assert (not d!1968567))

(assert (not b!6272193))

(assert (not bm!530481))

(assert (not b!6272035))

(assert (not b!6271861))

(assert (not bm!530442))

(assert (not bm!530484))

(assert (not b!6271819))

(assert (not b!6271756))

(assert (not b!6272012))

(assert (not d!1968629))

(assert (not d!1968557))

(assert (not d!1968565))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

