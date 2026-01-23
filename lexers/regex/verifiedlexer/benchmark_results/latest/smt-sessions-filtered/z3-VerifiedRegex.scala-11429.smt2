; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!615506 () Bool)

(assert start!615506)

(declare-fun b!6162196 () Bool)

(assert (=> b!6162196 true))

(assert (=> b!6162196 true))

(declare-fun lambda!336300 () Int)

(declare-fun lambda!336299 () Int)

(assert (=> b!6162196 (not (= lambda!336300 lambda!336299))))

(assert (=> b!6162196 true))

(assert (=> b!6162196 true))

(declare-fun b!6162172 () Bool)

(assert (=> b!6162172 true))

(declare-fun b!6162159 () Bool)

(declare-datatypes ((Unit!157619 0))(
  ( (Unit!157620) )
))
(declare-fun e!3754325 () Unit!157619)

(declare-fun Unit!157621 () Unit!157619)

(assert (=> b!6162159 (= e!3754325 Unit!157621)))

(declare-datatypes ((C!32480 0))(
  ( (C!32481 (val!25942 Int)) )
))
(declare-datatypes ((List!64614 0))(
  ( (Nil!64490) (Cons!64490 (h!70938 C!32480) (t!378112 List!64614)) )
))
(declare-fun s!2326 () List!64614)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!16105 0))(
  ( (ElementMatch!16105 (c!1109850 C!32480)) (Concat!24950 (regOne!32722 Regex!16105) (regTwo!32722 Regex!16105)) (EmptyExpr!16105) (Star!16105 (reg!16434 Regex!16105)) (EmptyLang!16105) (Union!16105 (regOne!32723 Regex!16105) (regTwo!32723 Regex!16105)) )
))
(declare-datatypes ((List!64615 0))(
  ( (Nil!64491) (Cons!64491 (h!70939 Regex!16105) (t!378113 List!64615)) )
))
(declare-datatypes ((Context!10978 0))(
  ( (Context!10979 (exprs!5989 List!64615)) )
))
(declare-fun lt!2336092 () (InoxSet Context!10978))

(declare-fun lt!2336112 () (InoxSet Context!10978))

(declare-fun lt!2336114 () Unit!157619)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!936 ((InoxSet Context!10978) (InoxSet Context!10978) List!64614) Unit!157619)

(assert (=> b!6162159 (= lt!2336114 (lemmaZipperConcatMatchesSameAsBothZippers!936 lt!2336112 lt!2336092 (t!378112 s!2326)))))

(declare-fun res!2551748 () Bool)

(declare-fun matchZipper!2117 ((InoxSet Context!10978) List!64614) Bool)

(assert (=> b!6162159 (= res!2551748 (matchZipper!2117 lt!2336112 (t!378112 s!2326)))))

(declare-fun e!3754328 () Bool)

(assert (=> b!6162159 (=> res!2551748 e!3754328)))

(assert (=> b!6162159 (= (matchZipper!2117 ((_ map or) lt!2336112 lt!2336092) (t!378112 s!2326)) e!3754328)))

(declare-fun b!6162160 () Bool)

(declare-fun e!3754332 () Bool)

(declare-fun tp_is_empty!41463 () Bool)

(declare-fun tp!1720594 () Bool)

(assert (=> b!6162160 (= e!3754332 (and tp_is_empty!41463 tp!1720594))))

(declare-fun b!6162161 () Bool)

(declare-fun e!3754337 () Bool)

(declare-fun lt!2336107 () (InoxSet Context!10978))

(assert (=> b!6162161 (= e!3754337 (matchZipper!2117 lt!2336107 s!2326))))

(declare-fun b!6162162 () Bool)

(declare-fun res!2551730 () Bool)

(declare-fun e!3754335 () Bool)

(assert (=> b!6162162 (=> res!2551730 e!3754335)))

(declare-datatypes ((List!64616 0))(
  ( (Nil!64492) (Cons!64492 (h!70940 Context!10978) (t!378114 List!64616)) )
))
(declare-fun zl!343 () List!64616)

(get-info :version)

(assert (=> b!6162162 (= res!2551730 (not ((_ is Cons!64491) (exprs!5989 (h!70940 zl!343)))))))

(declare-fun b!6162163 () Bool)

(declare-fun res!2551729 () Bool)

(declare-fun e!3754334 () Bool)

(assert (=> b!6162163 (=> res!2551729 e!3754334)))

(declare-fun lt!2336104 () Context!10978)

(declare-fun lt!2336095 () Int)

(declare-fun zipperDepthTotal!288 (List!64616) Int)

(assert (=> b!6162163 (= res!2551729 (>= (zipperDepthTotal!288 (Cons!64492 lt!2336104 Nil!64492)) lt!2336095))))

(declare-fun b!6162164 () Bool)

(declare-fun res!2551734 () Bool)

(assert (=> b!6162164 (=> res!2551734 e!3754335)))

(declare-fun r!7292 () Regex!16105)

(assert (=> b!6162164 (= res!2551734 (or ((_ is EmptyExpr!16105) r!7292) ((_ is EmptyLang!16105) r!7292) ((_ is ElementMatch!16105) r!7292) ((_ is Union!16105) r!7292) (not ((_ is Concat!24950) r!7292))))))

(declare-fun setIsEmpty!41766 () Bool)

(declare-fun setRes!41766 () Bool)

(assert (=> setIsEmpty!41766 setRes!41766))

(declare-fun b!6162165 () Bool)

(declare-fun Unit!157622 () Unit!157619)

(assert (=> b!6162165 (= e!3754325 Unit!157622)))

(declare-fun b!6162166 () Bool)

(declare-fun e!3754329 () Bool)

(declare-fun e!3754322 () Bool)

(assert (=> b!6162166 (= e!3754329 e!3754322)))

(declare-fun res!2551745 () Bool)

(assert (=> b!6162166 (=> res!2551745 e!3754322)))

(declare-fun lt!2336118 () (InoxSet Context!10978))

(assert (=> b!6162166 (= res!2551745 (not (= lt!2336112 lt!2336118)))))

(declare-fun lt!2336090 () (InoxSet Context!10978))

(declare-fun lt!2336113 () (InoxSet Context!10978))

(assert (=> b!6162166 (= lt!2336118 ((_ map or) lt!2336090 lt!2336113))))

(declare-fun lt!2336120 () Context!10978)

(declare-fun derivationStepZipperDown!1353 (Regex!16105 Context!10978 C!32480) (InoxSet Context!10978))

(assert (=> b!6162166 (= lt!2336113 (derivationStepZipperDown!1353 (regTwo!32723 (regOne!32722 r!7292)) lt!2336120 (h!70938 s!2326)))))

(assert (=> b!6162166 (= lt!2336090 (derivationStepZipperDown!1353 (regOne!32723 (regOne!32722 r!7292)) lt!2336120 (h!70938 s!2326)))))

(declare-fun b!6162167 () Bool)

(declare-fun lt!2336096 () Context!10978)

(declare-fun inv!83509 (Context!10978) Bool)

(assert (=> b!6162167 (= e!3754334 (inv!83509 lt!2336096))))

(declare-fun b!6162168 () Bool)

(declare-fun res!2551736 () Bool)

(assert (=> b!6162168 (=> res!2551736 e!3754335)))

(declare-fun isEmpty!36460 (List!64616) Bool)

(assert (=> b!6162168 (= res!2551736 (not (isEmpty!36460 (t!378114 zl!343))))))

(declare-fun b!6162169 () Bool)

(declare-fun e!3754331 () Bool)

(assert (=> b!6162169 (= e!3754331 tp_is_empty!41463)))

(declare-fun b!6162170 () Bool)

(declare-fun e!3754339 () Bool)

(declare-fun e!3754326 () Bool)

(assert (=> b!6162170 (= e!3754339 e!3754326)))

(declare-fun res!2551741 () Bool)

(assert (=> b!6162170 (=> res!2551741 e!3754326)))

(declare-fun z!1189 () (InoxSet Context!10978))

(assert (=> b!6162170 (= res!2551741 (not (= (matchZipper!2117 z!1189 s!2326) e!3754337)))))

(declare-fun res!2551746 () Bool)

(assert (=> b!6162170 (=> res!2551746 e!3754337)))

(declare-fun lt!2336103 () (InoxSet Context!10978))

(assert (=> b!6162170 (= res!2551746 (matchZipper!2117 lt!2336103 s!2326))))

(declare-fun lt!2336106 () Unit!157619)

(declare-fun e!3754319 () Unit!157619)

(assert (=> b!6162170 (= lt!2336106 e!3754319)))

(declare-fun c!1109848 () Bool)

(declare-fun nullable!6098 (Regex!16105) Bool)

(assert (=> b!6162170 (= c!1109848 (nullable!6098 (regTwo!32723 (regOne!32722 r!7292))))))

(declare-fun lambda!336301 () Int)

(declare-fun flatMap!1610 ((InoxSet Context!10978) Int) (InoxSet Context!10978))

(declare-fun derivationStepZipperUp!1279 (Context!10978 C!32480) (InoxSet Context!10978))

(assert (=> b!6162170 (= (flatMap!1610 lt!2336107 lambda!336301) (derivationStepZipperUp!1279 lt!2336104 (h!70938 s!2326)))))

(declare-fun lt!2336098 () Unit!157619)

(declare-fun lemmaFlatMapOnSingletonSet!1136 ((InoxSet Context!10978) Context!10978 Int) Unit!157619)

(assert (=> b!6162170 (= lt!2336098 (lemmaFlatMapOnSingletonSet!1136 lt!2336107 lt!2336104 lambda!336301))))

(declare-fun lt!2336119 () (InoxSet Context!10978))

(assert (=> b!6162170 (= lt!2336119 (derivationStepZipperUp!1279 lt!2336104 (h!70938 s!2326)))))

(declare-fun lt!2336108 () Unit!157619)

(declare-fun e!3754336 () Unit!157619)

(assert (=> b!6162170 (= lt!2336108 e!3754336)))

(declare-fun c!1109847 () Bool)

(assert (=> b!6162170 (= c!1109847 (nullable!6098 (regOne!32723 (regOne!32722 r!7292))))))

(assert (=> b!6162170 (= (flatMap!1610 lt!2336103 lambda!336301) (derivationStepZipperUp!1279 lt!2336096 (h!70938 s!2326)))))

(declare-fun lt!2336116 () Unit!157619)

(assert (=> b!6162170 (= lt!2336116 (lemmaFlatMapOnSingletonSet!1136 lt!2336103 lt!2336096 lambda!336301))))

(declare-fun lt!2336110 () (InoxSet Context!10978))

(assert (=> b!6162170 (= lt!2336110 (derivationStepZipperUp!1279 lt!2336096 (h!70938 s!2326)))))

(assert (=> b!6162170 (= lt!2336107 (store ((as const (Array Context!10978 Bool)) false) lt!2336104 true))))

(assert (=> b!6162170 (= lt!2336104 (Context!10979 (Cons!64491 (regTwo!32723 (regOne!32722 r!7292)) (t!378113 (exprs!5989 (h!70940 zl!343))))))))

(assert (=> b!6162170 (= lt!2336103 (store ((as const (Array Context!10978 Bool)) false) lt!2336096 true))))

(assert (=> b!6162170 (= lt!2336096 (Context!10979 (Cons!64491 (regOne!32723 (regOne!32722 r!7292)) (t!378113 (exprs!5989 (h!70940 zl!343))))))))

(declare-fun b!6162171 () Bool)

(declare-fun tp!1720591 () Bool)

(declare-fun tp!1720593 () Bool)

(assert (=> b!6162171 (= e!3754331 (and tp!1720591 tp!1720593))))

(declare-fun e!3754341 () Bool)

(assert (=> b!6162172 (= e!3754341 e!3754329)))

(declare-fun res!2551735 () Bool)

(assert (=> b!6162172 (=> res!2551735 e!3754329)))

(assert (=> b!6162172 (= res!2551735 (or (and ((_ is ElementMatch!16105) (regOne!32722 r!7292)) (= (c!1109850 (regOne!32722 r!7292)) (h!70938 s!2326))) (not ((_ is Union!16105) (regOne!32722 r!7292)))))))

(declare-fun lt!2336117 () Unit!157619)

(assert (=> b!6162172 (= lt!2336117 e!3754325)))

(declare-fun c!1109849 () Bool)

(assert (=> b!6162172 (= c!1109849 (nullable!6098 (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(assert (=> b!6162172 (= (flatMap!1610 z!1189 lambda!336301) (derivationStepZipperUp!1279 (h!70940 zl!343) (h!70938 s!2326)))))

(declare-fun lt!2336115 () Unit!157619)

(assert (=> b!6162172 (= lt!2336115 (lemmaFlatMapOnSingletonSet!1136 z!1189 (h!70940 zl!343) lambda!336301))))

(assert (=> b!6162172 (= lt!2336092 (derivationStepZipperUp!1279 lt!2336120 (h!70938 s!2326)))))

(assert (=> b!6162172 (= lt!2336112 (derivationStepZipperDown!1353 (h!70939 (exprs!5989 (h!70940 zl!343))) lt!2336120 (h!70938 s!2326)))))

(assert (=> b!6162172 (= lt!2336120 (Context!10979 (t!378113 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun lt!2336102 () (InoxSet Context!10978))

(assert (=> b!6162172 (= lt!2336102 (derivationStepZipperUp!1279 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343))))) (h!70938 s!2326)))))

(declare-fun b!6162173 () Bool)

(declare-fun e!3754333 () Bool)

(assert (=> b!6162173 (= e!3754333 (matchZipper!2117 lt!2336113 (t!378112 s!2326)))))

(declare-fun b!6162174 () Bool)

(declare-fun res!2551737 () Bool)

(declare-fun e!3754320 () Bool)

(assert (=> b!6162174 (=> (not res!2551737) (not e!3754320))))

(declare-fun toList!9889 ((InoxSet Context!10978)) List!64616)

(assert (=> b!6162174 (= res!2551737 (= (toList!9889 z!1189) zl!343))))

(declare-fun e!3754324 () Bool)

(declare-fun tp!1720590 () Bool)

(declare-fun setElem!41766 () Context!10978)

(declare-fun setNonEmpty!41766 () Bool)

(assert (=> setNonEmpty!41766 (= setRes!41766 (and tp!1720590 (inv!83509 setElem!41766) e!3754324))))

(declare-fun setRest!41766 () (InoxSet Context!10978))

(assert (=> setNonEmpty!41766 (= z!1189 ((_ map or) (store ((as const (Array Context!10978 Bool)) false) setElem!41766 true) setRest!41766))))

(declare-fun b!6162175 () Bool)

(declare-fun Unit!157623 () Unit!157619)

(assert (=> b!6162175 (= e!3754336 Unit!157623)))

(declare-fun b!6162176 () Bool)

(declare-fun e!3754330 () Bool)

(assert (=> b!6162176 (= e!3754330 (matchZipper!2117 lt!2336092 (t!378112 s!2326)))))

(declare-fun b!6162177 () Bool)

(assert (=> b!6162177 (= e!3754322 e!3754339)))

(declare-fun res!2551731 () Bool)

(assert (=> b!6162177 (=> res!2551731 e!3754339)))

(declare-fun e!3754340 () Bool)

(assert (=> b!6162177 (= res!2551731 e!3754340)))

(declare-fun res!2551738 () Bool)

(assert (=> b!6162177 (=> (not res!2551738) (not e!3754340))))

(declare-fun lt!2336109 () Bool)

(assert (=> b!6162177 (= res!2551738 (not (= (matchZipper!2117 lt!2336112 (t!378112 s!2326)) lt!2336109)))))

(assert (=> b!6162177 (= (matchZipper!2117 lt!2336118 (t!378112 s!2326)) e!3754333)))

(declare-fun res!2551732 () Bool)

(assert (=> b!6162177 (=> res!2551732 e!3754333)))

(assert (=> b!6162177 (= res!2551732 lt!2336109)))

(assert (=> b!6162177 (= lt!2336109 (matchZipper!2117 lt!2336090 (t!378112 s!2326)))))

(declare-fun lt!2336100 () Unit!157619)

(assert (=> b!6162177 (= lt!2336100 (lemmaZipperConcatMatchesSameAsBothZippers!936 lt!2336090 lt!2336113 (t!378112 s!2326)))))

(declare-fun b!6162178 () Bool)

(declare-fun res!2551743 () Bool)

(assert (=> b!6162178 (=> res!2551743 e!3754341)))

(declare-fun isEmpty!36461 (List!64615) Bool)

(assert (=> b!6162178 (= res!2551743 (isEmpty!36461 (t!378113 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun b!6162179 () Bool)

(declare-fun e!3754327 () Bool)

(assert (=> b!6162179 (= e!3754320 e!3754327)))

(declare-fun res!2551727 () Bool)

(assert (=> b!6162179 (=> (not res!2551727) (not e!3754327))))

(declare-fun lt!2336105 () Regex!16105)

(assert (=> b!6162179 (= res!2551727 (= r!7292 lt!2336105))))

(declare-fun unfocusZipper!1847 (List!64616) Regex!16105)

(assert (=> b!6162179 (= lt!2336105 (unfocusZipper!1847 zl!343))))

(declare-fun b!6162180 () Bool)

(declare-fun res!2551726 () Bool)

(assert (=> b!6162180 (=> res!2551726 e!3754326)))

(assert (=> b!6162180 (= res!2551726 (or (not (= lt!2336105 r!7292)) (not (= (exprs!5989 (h!70940 zl!343)) (Cons!64491 (regOne!32722 r!7292) (t!378113 (exprs!5989 (h!70940 zl!343))))))))))

(declare-fun b!6162181 () Bool)

(declare-fun tp!1720595 () Bool)

(assert (=> b!6162181 (= e!3754324 tp!1720595)))

(declare-fun b!6162182 () Bool)

(assert (=> b!6162182 (= e!3754328 (matchZipper!2117 lt!2336092 (t!378112 s!2326)))))

(declare-fun b!6162183 () Bool)

(declare-fun tp!1720596 () Bool)

(assert (=> b!6162183 (= e!3754331 tp!1720596)))

(declare-fun tp!1720592 () Bool)

(declare-fun e!3754338 () Bool)

(declare-fun e!3754323 () Bool)

(declare-fun b!6162184 () Bool)

(assert (=> b!6162184 (= e!3754338 (and (inv!83509 (h!70940 zl!343)) e!3754323 tp!1720592))))

(declare-fun b!6162185 () Bool)

(assert (=> b!6162185 (= e!3754326 e!3754334)))

(declare-fun res!2551747 () Bool)

(assert (=> b!6162185 (=> res!2551747 e!3754334)))

(declare-fun lt!2336094 () Int)

(assert (=> b!6162185 (= res!2551747 (>= lt!2336094 lt!2336095))))

(assert (=> b!6162185 (= lt!2336095 (zipperDepthTotal!288 zl!343))))

(assert (=> b!6162185 (= lt!2336094 (zipperDepthTotal!288 (Cons!64492 lt!2336096 Nil!64492)))))

(declare-fun b!6162186 () Bool)

(assert (=> b!6162186 (= e!3754340 (not (matchZipper!2117 lt!2336113 (t!378112 s!2326))))))

(declare-fun b!6162187 () Bool)

(declare-fun tp!1720597 () Bool)

(declare-fun tp!1720589 () Bool)

(assert (=> b!6162187 (= e!3754331 (and tp!1720597 tp!1720589))))

(declare-fun b!6162188 () Bool)

(declare-fun res!2551728 () Bool)

(assert (=> b!6162188 (=> res!2551728 e!3754335)))

(declare-fun generalisedUnion!1949 (List!64615) Regex!16105)

(declare-fun unfocusZipperList!1526 (List!64616) List!64615)

(assert (=> b!6162188 (= res!2551728 (not (= r!7292 (generalisedUnion!1949 (unfocusZipperList!1526 zl!343)))))))

(declare-fun b!6162189 () Bool)

(declare-fun tp!1720598 () Bool)

(assert (=> b!6162189 (= e!3754323 tp!1720598)))

(declare-fun b!6162190 () Bool)

(declare-fun e!3754321 () Bool)

(assert (=> b!6162190 (= e!3754321 (matchZipper!2117 lt!2336092 (t!378112 s!2326)))))

(declare-fun res!2551749 () Bool)

(assert (=> start!615506 (=> (not res!2551749) (not e!3754320))))

(declare-fun validRegex!7841 (Regex!16105) Bool)

(assert (=> start!615506 (= res!2551749 (validRegex!7841 r!7292))))

(assert (=> start!615506 e!3754320))

(assert (=> start!615506 e!3754331))

(declare-fun condSetEmpty!41766 () Bool)

(assert (=> start!615506 (= condSetEmpty!41766 (= z!1189 ((as const (Array Context!10978 Bool)) false)))))

(assert (=> start!615506 setRes!41766))

(assert (=> start!615506 e!3754338))

(assert (=> start!615506 e!3754332))

(declare-fun b!6162191 () Bool)

(declare-fun res!2551733 () Bool)

(assert (=> b!6162191 (=> res!2551733 e!3754335)))

(declare-fun generalisedConcat!1702 (List!64615) Regex!16105)

(assert (=> b!6162191 (= res!2551733 (not (= r!7292 (generalisedConcat!1702 (exprs!5989 (h!70940 zl!343))))))))

(declare-fun b!6162192 () Bool)

(declare-fun Unit!157624 () Unit!157619)

(assert (=> b!6162192 (= e!3754336 Unit!157624)))

(declare-fun lt!2336099 () Unit!157619)

(assert (=> b!6162192 (= lt!2336099 (lemmaZipperConcatMatchesSameAsBothZippers!936 lt!2336090 lt!2336092 (t!378112 s!2326)))))

(declare-fun res!2551739 () Bool)

(assert (=> b!6162192 (= res!2551739 lt!2336109)))

(assert (=> b!6162192 (=> res!2551739 e!3754321)))

(assert (=> b!6162192 (= (matchZipper!2117 ((_ map or) lt!2336090 lt!2336092) (t!378112 s!2326)) e!3754321)))

(declare-fun b!6162193 () Bool)

(declare-fun Unit!157625 () Unit!157619)

(assert (=> b!6162193 (= e!3754319 Unit!157625)))

(declare-fun b!6162194 () Bool)

(assert (=> b!6162194 (= e!3754327 (not e!3754335))))

(declare-fun res!2551740 () Bool)

(assert (=> b!6162194 (=> res!2551740 e!3754335)))

(assert (=> b!6162194 (= res!2551740 (not ((_ is Cons!64492) zl!343)))))

(declare-fun lt!2336097 () Bool)

(declare-fun matchRSpec!3206 (Regex!16105 List!64614) Bool)

(assert (=> b!6162194 (= lt!2336097 (matchRSpec!3206 r!7292 s!2326))))

(declare-fun matchR!8288 (Regex!16105 List!64614) Bool)

(assert (=> b!6162194 (= lt!2336097 (matchR!8288 r!7292 s!2326))))

(declare-fun lt!2336111 () Unit!157619)

(declare-fun mainMatchTheorem!3206 (Regex!16105 List!64614) Unit!157619)

(assert (=> b!6162194 (= lt!2336111 (mainMatchTheorem!3206 r!7292 s!2326))))

(declare-fun b!6162195 () Bool)

(declare-fun Unit!157626 () Unit!157619)

(assert (=> b!6162195 (= e!3754319 Unit!157626)))

(declare-fun lt!2336089 () Unit!157619)

(assert (=> b!6162195 (= lt!2336089 (lemmaZipperConcatMatchesSameAsBothZippers!936 lt!2336113 lt!2336092 (t!378112 s!2326)))))

(declare-fun res!2551742 () Bool)

(assert (=> b!6162195 (= res!2551742 (matchZipper!2117 lt!2336113 (t!378112 s!2326)))))

(assert (=> b!6162195 (=> res!2551742 e!3754330)))

(assert (=> b!6162195 (= (matchZipper!2117 ((_ map or) lt!2336113 lt!2336092) (t!378112 s!2326)) e!3754330)))

(assert (=> b!6162196 (= e!3754335 e!3754341)))

(declare-fun res!2551744 () Bool)

(assert (=> b!6162196 (=> res!2551744 e!3754341)))

(declare-fun lt!2336093 () Bool)

(assert (=> b!6162196 (= res!2551744 (or (not (= lt!2336097 lt!2336093)) ((_ is Nil!64490) s!2326)))))

(declare-fun Exists!3175 (Int) Bool)

(assert (=> b!6162196 (= (Exists!3175 lambda!336299) (Exists!3175 lambda!336300))))

(declare-fun lt!2336101 () Unit!157619)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1712 (Regex!16105 Regex!16105 List!64614) Unit!157619)

(assert (=> b!6162196 (= lt!2336101 (lemmaExistCutMatchRandMatchRSpecEquivalent!1712 (regOne!32722 r!7292) (regTwo!32722 r!7292) s!2326))))

(assert (=> b!6162196 (= lt!2336093 (Exists!3175 lambda!336299))))

(declare-datatypes ((tuple2!66168 0))(
  ( (tuple2!66169 (_1!36387 List!64614) (_2!36387 List!64614)) )
))
(declare-datatypes ((Option!15996 0))(
  ( (None!15995) (Some!15995 (v!52134 tuple2!66168)) )
))
(declare-fun isDefined!12699 (Option!15996) Bool)

(declare-fun findConcatSeparation!2410 (Regex!16105 Regex!16105 List!64614 List!64614 List!64614) Option!15996)

(assert (=> b!6162196 (= lt!2336093 (isDefined!12699 (findConcatSeparation!2410 (regOne!32722 r!7292) (regTwo!32722 r!7292) Nil!64490 s!2326 s!2326)))))

(declare-fun lt!2336091 () Unit!157619)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2174 (Regex!16105 Regex!16105 List!64614) Unit!157619)

(assert (=> b!6162196 (= lt!2336091 (lemmaFindConcatSeparationEquivalentToExists!2174 (regOne!32722 r!7292) (regTwo!32722 r!7292) s!2326))))

(assert (= (and start!615506 res!2551749) b!6162174))

(assert (= (and b!6162174 res!2551737) b!6162179))

(assert (= (and b!6162179 res!2551727) b!6162194))

(assert (= (and b!6162194 (not res!2551740)) b!6162168))

(assert (= (and b!6162168 (not res!2551736)) b!6162191))

(assert (= (and b!6162191 (not res!2551733)) b!6162162))

(assert (= (and b!6162162 (not res!2551730)) b!6162188))

(assert (= (and b!6162188 (not res!2551728)) b!6162164))

(assert (= (and b!6162164 (not res!2551734)) b!6162196))

(assert (= (and b!6162196 (not res!2551744)) b!6162178))

(assert (= (and b!6162178 (not res!2551743)) b!6162172))

(assert (= (and b!6162172 c!1109849) b!6162159))

(assert (= (and b!6162172 (not c!1109849)) b!6162165))

(assert (= (and b!6162159 (not res!2551748)) b!6162182))

(assert (= (and b!6162172 (not res!2551735)) b!6162166))

(assert (= (and b!6162166 (not res!2551745)) b!6162177))

(assert (= (and b!6162177 (not res!2551732)) b!6162173))

(assert (= (and b!6162177 res!2551738) b!6162186))

(assert (= (and b!6162177 (not res!2551731)) b!6162170))

(assert (= (and b!6162170 c!1109847) b!6162192))

(assert (= (and b!6162170 (not c!1109847)) b!6162175))

(assert (= (and b!6162192 (not res!2551739)) b!6162190))

(assert (= (and b!6162170 c!1109848) b!6162195))

(assert (= (and b!6162170 (not c!1109848)) b!6162193))

(assert (= (and b!6162195 (not res!2551742)) b!6162176))

(assert (= (and b!6162170 (not res!2551746)) b!6162161))

(assert (= (and b!6162170 (not res!2551741)) b!6162180))

(assert (= (and b!6162180 (not res!2551726)) b!6162185))

(assert (= (and b!6162185 (not res!2551747)) b!6162163))

(assert (= (and b!6162163 (not res!2551729)) b!6162167))

(assert (= (and start!615506 ((_ is ElementMatch!16105) r!7292)) b!6162169))

(assert (= (and start!615506 ((_ is Concat!24950) r!7292)) b!6162171))

(assert (= (and start!615506 ((_ is Star!16105) r!7292)) b!6162183))

(assert (= (and start!615506 ((_ is Union!16105) r!7292)) b!6162187))

(assert (= (and start!615506 condSetEmpty!41766) setIsEmpty!41766))

(assert (= (and start!615506 (not condSetEmpty!41766)) setNonEmpty!41766))

(assert (= setNonEmpty!41766 b!6162181))

(assert (= b!6162184 b!6162189))

(assert (= (and start!615506 ((_ is Cons!64492) zl!343)) b!6162184))

(assert (= (and start!615506 ((_ is Cons!64490) s!2326)) b!6162160))

(declare-fun m!7000040 () Bool)

(assert (=> b!6162188 m!7000040))

(assert (=> b!6162188 m!7000040))

(declare-fun m!7000042 () Bool)

(assert (=> b!6162188 m!7000042))

(declare-fun m!7000044 () Bool)

(assert (=> b!6162182 m!7000044))

(declare-fun m!7000046 () Bool)

(assert (=> b!6162166 m!7000046))

(declare-fun m!7000048 () Bool)

(assert (=> b!6162166 m!7000048))

(declare-fun m!7000050 () Bool)

(assert (=> b!6162179 m!7000050))

(declare-fun m!7000052 () Bool)

(assert (=> b!6162159 m!7000052))

(declare-fun m!7000054 () Bool)

(assert (=> b!6162159 m!7000054))

(declare-fun m!7000056 () Bool)

(assert (=> b!6162159 m!7000056))

(assert (=> b!6162190 m!7000044))

(declare-fun m!7000058 () Bool)

(assert (=> b!6162194 m!7000058))

(declare-fun m!7000060 () Bool)

(assert (=> b!6162194 m!7000060))

(declare-fun m!7000062 () Bool)

(assert (=> b!6162194 m!7000062))

(declare-fun m!7000064 () Bool)

(assert (=> b!6162178 m!7000064))

(declare-fun m!7000066 () Bool)

(assert (=> b!6162172 m!7000066))

(declare-fun m!7000068 () Bool)

(assert (=> b!6162172 m!7000068))

(declare-fun m!7000070 () Bool)

(assert (=> b!6162172 m!7000070))

(declare-fun m!7000072 () Bool)

(assert (=> b!6162172 m!7000072))

(declare-fun m!7000074 () Bool)

(assert (=> b!6162172 m!7000074))

(declare-fun m!7000076 () Bool)

(assert (=> b!6162172 m!7000076))

(declare-fun m!7000078 () Bool)

(assert (=> b!6162172 m!7000078))

(declare-fun m!7000080 () Bool)

(assert (=> b!6162185 m!7000080))

(declare-fun m!7000082 () Bool)

(assert (=> b!6162185 m!7000082))

(declare-fun m!7000084 () Bool)

(assert (=> b!6162196 m!7000084))

(declare-fun m!7000086 () Bool)

(assert (=> b!6162196 m!7000086))

(declare-fun m!7000088 () Bool)

(assert (=> b!6162196 m!7000088))

(declare-fun m!7000090 () Bool)

(assert (=> b!6162196 m!7000090))

(assert (=> b!6162196 m!7000084))

(declare-fun m!7000092 () Bool)

(assert (=> b!6162196 m!7000092))

(assert (=> b!6162196 m!7000088))

(declare-fun m!7000094 () Bool)

(assert (=> b!6162196 m!7000094))

(assert (=> b!6162177 m!7000054))

(declare-fun m!7000096 () Bool)

(assert (=> b!6162177 m!7000096))

(declare-fun m!7000098 () Bool)

(assert (=> b!6162177 m!7000098))

(declare-fun m!7000100 () Bool)

(assert (=> b!6162177 m!7000100))

(declare-fun m!7000102 () Bool)

(assert (=> b!6162161 m!7000102))

(declare-fun m!7000104 () Bool)

(assert (=> b!6162168 m!7000104))

(declare-fun m!7000106 () Bool)

(assert (=> b!6162167 m!7000106))

(declare-fun m!7000108 () Bool)

(assert (=> start!615506 m!7000108))

(declare-fun m!7000110 () Bool)

(assert (=> b!6162173 m!7000110))

(declare-fun m!7000112 () Bool)

(assert (=> b!6162170 m!7000112))

(declare-fun m!7000114 () Bool)

(assert (=> b!6162170 m!7000114))

(declare-fun m!7000116 () Bool)

(assert (=> b!6162170 m!7000116))

(declare-fun m!7000118 () Bool)

(assert (=> b!6162170 m!7000118))

(declare-fun m!7000120 () Bool)

(assert (=> b!6162170 m!7000120))

(declare-fun m!7000122 () Bool)

(assert (=> b!6162170 m!7000122))

(declare-fun m!7000124 () Bool)

(assert (=> b!6162170 m!7000124))

(declare-fun m!7000126 () Bool)

(assert (=> b!6162170 m!7000126))

(declare-fun m!7000128 () Bool)

(assert (=> b!6162170 m!7000128))

(declare-fun m!7000130 () Bool)

(assert (=> b!6162170 m!7000130))

(declare-fun m!7000132 () Bool)

(assert (=> b!6162170 m!7000132))

(declare-fun m!7000134 () Bool)

(assert (=> b!6162170 m!7000134))

(declare-fun m!7000136 () Bool)

(assert (=> b!6162191 m!7000136))

(assert (=> b!6162176 m!7000044))

(declare-fun m!7000138 () Bool)

(assert (=> b!6162192 m!7000138))

(declare-fun m!7000140 () Bool)

(assert (=> b!6162192 m!7000140))

(declare-fun m!7000142 () Bool)

(assert (=> b!6162184 m!7000142))

(declare-fun m!7000144 () Bool)

(assert (=> b!6162174 m!7000144))

(assert (=> b!6162186 m!7000110))

(declare-fun m!7000146 () Bool)

(assert (=> b!6162163 m!7000146))

(declare-fun m!7000148 () Bool)

(assert (=> setNonEmpty!41766 m!7000148))

(declare-fun m!7000150 () Bool)

(assert (=> b!6162195 m!7000150))

(assert (=> b!6162195 m!7000110))

(declare-fun m!7000152 () Bool)

(assert (=> b!6162195 m!7000152))

(check-sat (not b!6162166) (not b!6162177) (not b!6162184) (not b!6162176) (not b!6162188) (not b!6162170) (not b!6162173) (not b!6162168) (not b!6162179) (not b!6162167) (not b!6162174) (not b!6162160) (not b!6162171) (not b!6162187) (not b!6162161) (not b!6162163) (not b!6162196) (not b!6162178) tp_is_empty!41463 (not b!6162186) (not b!6162172) (not b!6162159) (not b!6162181) (not b!6162195) (not b!6162189) (not b!6162190) (not b!6162192) (not b!6162183) (not b!6162191) (not setNonEmpty!41766) (not b!6162185) (not start!615506) (not b!6162182) (not b!6162194))
(check-sat)
(get-model)

(declare-fun b!6162627 () Bool)

(declare-fun e!3754581 () Option!15996)

(declare-fun e!3754582 () Option!15996)

(assert (=> b!6162627 (= e!3754581 e!3754582)))

(declare-fun c!1109973 () Bool)

(assert (=> b!6162627 (= c!1109973 ((_ is Nil!64490) s!2326))))

(declare-fun b!6162628 () Bool)

(assert (=> b!6162628 (= e!3754582 None!15995)))

(declare-fun b!6162629 () Bool)

(declare-fun lt!2336179 () Unit!157619)

(declare-fun lt!2336180 () Unit!157619)

(assert (=> b!6162629 (= lt!2336179 lt!2336180)))

(declare-fun ++!14191 (List!64614 List!64614) List!64614)

(assert (=> b!6162629 (= (++!14191 (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) Nil!64490)) (t!378112 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2286 (List!64614 C!32480 List!64614 List!64614) Unit!157619)

(assert (=> b!6162629 (= lt!2336180 (lemmaMoveElementToOtherListKeepsConcatEq!2286 Nil!64490 (h!70938 s!2326) (t!378112 s!2326) s!2326))))

(assert (=> b!6162629 (= e!3754582 (findConcatSeparation!2410 (regOne!32722 r!7292) (regTwo!32722 r!7292) (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) Nil!64490)) (t!378112 s!2326) s!2326))))

(declare-fun b!6162630 () Bool)

(declare-fun res!2551879 () Bool)

(declare-fun e!3754583 () Bool)

(assert (=> b!6162630 (=> (not res!2551879) (not e!3754583))))

(declare-fun lt!2336181 () Option!15996)

(declare-fun get!22259 (Option!15996) tuple2!66168)

(assert (=> b!6162630 (= res!2551879 (matchR!8288 (regTwo!32722 r!7292) (_2!36387 (get!22259 lt!2336181))))))

(declare-fun d!1931136 () Bool)

(declare-fun e!3754580 () Bool)

(assert (=> d!1931136 e!3754580))

(declare-fun res!2551878 () Bool)

(assert (=> d!1931136 (=> res!2551878 e!3754580)))

(assert (=> d!1931136 (= res!2551878 e!3754583)))

(declare-fun res!2551882 () Bool)

(assert (=> d!1931136 (=> (not res!2551882) (not e!3754583))))

(assert (=> d!1931136 (= res!2551882 (isDefined!12699 lt!2336181))))

(assert (=> d!1931136 (= lt!2336181 e!3754581)))

(declare-fun c!1109972 () Bool)

(declare-fun e!3754584 () Bool)

(assert (=> d!1931136 (= c!1109972 e!3754584)))

(declare-fun res!2551880 () Bool)

(assert (=> d!1931136 (=> (not res!2551880) (not e!3754584))))

(assert (=> d!1931136 (= res!2551880 (matchR!8288 (regOne!32722 r!7292) Nil!64490))))

(assert (=> d!1931136 (validRegex!7841 (regOne!32722 r!7292))))

(assert (=> d!1931136 (= (findConcatSeparation!2410 (regOne!32722 r!7292) (regTwo!32722 r!7292) Nil!64490 s!2326 s!2326) lt!2336181)))

(declare-fun b!6162631 () Bool)

(assert (=> b!6162631 (= e!3754580 (not (isDefined!12699 lt!2336181)))))

(declare-fun b!6162632 () Bool)

(assert (=> b!6162632 (= e!3754584 (matchR!8288 (regTwo!32722 r!7292) s!2326))))

(declare-fun b!6162633 () Bool)

(assert (=> b!6162633 (= e!3754583 (= (++!14191 (_1!36387 (get!22259 lt!2336181)) (_2!36387 (get!22259 lt!2336181))) s!2326))))

(declare-fun b!6162634 () Bool)

(declare-fun res!2551881 () Bool)

(assert (=> b!6162634 (=> (not res!2551881) (not e!3754583))))

(assert (=> b!6162634 (= res!2551881 (matchR!8288 (regOne!32722 r!7292) (_1!36387 (get!22259 lt!2336181))))))

(declare-fun b!6162635 () Bool)

(assert (=> b!6162635 (= e!3754581 (Some!15995 (tuple2!66169 Nil!64490 s!2326)))))

(assert (= (and d!1931136 res!2551880) b!6162632))

(assert (= (and d!1931136 c!1109972) b!6162635))

(assert (= (and d!1931136 (not c!1109972)) b!6162627))

(assert (= (and b!6162627 c!1109973) b!6162628))

(assert (= (and b!6162627 (not c!1109973)) b!6162629))

(assert (= (and d!1931136 res!2551882) b!6162634))

(assert (= (and b!6162634 res!2551881) b!6162630))

(assert (= (and b!6162630 res!2551879) b!6162633))

(assert (= (and d!1931136 (not res!2551878)) b!6162631))

(declare-fun m!7000456 () Bool)

(assert (=> b!6162631 m!7000456))

(declare-fun m!7000458 () Bool)

(assert (=> b!6162630 m!7000458))

(declare-fun m!7000460 () Bool)

(assert (=> b!6162630 m!7000460))

(assert (=> d!1931136 m!7000456))

(declare-fun m!7000462 () Bool)

(assert (=> d!1931136 m!7000462))

(declare-fun m!7000464 () Bool)

(assert (=> d!1931136 m!7000464))

(assert (=> b!6162634 m!7000458))

(declare-fun m!7000466 () Bool)

(assert (=> b!6162634 m!7000466))

(assert (=> b!6162633 m!7000458))

(declare-fun m!7000468 () Bool)

(assert (=> b!6162633 m!7000468))

(declare-fun m!7000470 () Bool)

(assert (=> b!6162632 m!7000470))

(declare-fun m!7000472 () Bool)

(assert (=> b!6162629 m!7000472))

(assert (=> b!6162629 m!7000472))

(declare-fun m!7000474 () Bool)

(assert (=> b!6162629 m!7000474))

(declare-fun m!7000476 () Bool)

(assert (=> b!6162629 m!7000476))

(assert (=> b!6162629 m!7000472))

(declare-fun m!7000478 () Bool)

(assert (=> b!6162629 m!7000478))

(assert (=> b!6162196 d!1931136))

(declare-fun d!1931138 () Bool)

(declare-fun choose!45819 (Int) Bool)

(assert (=> d!1931138 (= (Exists!3175 lambda!336300) (choose!45819 lambda!336300))))

(declare-fun bs!1527421 () Bool)

(assert (= bs!1527421 d!1931138))

(declare-fun m!7000480 () Bool)

(assert (=> bs!1527421 m!7000480))

(assert (=> b!6162196 d!1931138))

(declare-fun d!1931140 () Bool)

(assert (=> d!1931140 (= (Exists!3175 lambda!336299) (choose!45819 lambda!336299))))

(declare-fun bs!1527422 () Bool)

(assert (= bs!1527422 d!1931140))

(declare-fun m!7000482 () Bool)

(assert (=> bs!1527422 m!7000482))

(assert (=> b!6162196 d!1931140))

(declare-fun bs!1527423 () Bool)

(declare-fun d!1931142 () Bool)

(assert (= bs!1527423 (and d!1931142 b!6162196)))

(declare-fun lambda!336333 () Int)

(assert (=> bs!1527423 (= lambda!336333 lambda!336299)))

(assert (=> bs!1527423 (not (= lambda!336333 lambda!336300))))

(assert (=> d!1931142 true))

(assert (=> d!1931142 true))

(assert (=> d!1931142 true))

(assert (=> d!1931142 (= (isDefined!12699 (findConcatSeparation!2410 (regOne!32722 r!7292) (regTwo!32722 r!7292) Nil!64490 s!2326 s!2326)) (Exists!3175 lambda!336333))))

(declare-fun lt!2336184 () Unit!157619)

(declare-fun choose!45820 (Regex!16105 Regex!16105 List!64614) Unit!157619)

(assert (=> d!1931142 (= lt!2336184 (choose!45820 (regOne!32722 r!7292) (regTwo!32722 r!7292) s!2326))))

(assert (=> d!1931142 (validRegex!7841 (regOne!32722 r!7292))))

(assert (=> d!1931142 (= (lemmaFindConcatSeparationEquivalentToExists!2174 (regOne!32722 r!7292) (regTwo!32722 r!7292) s!2326) lt!2336184)))

(declare-fun bs!1527424 () Bool)

(assert (= bs!1527424 d!1931142))

(assert (=> bs!1527424 m!7000088))

(assert (=> bs!1527424 m!7000090))

(declare-fun m!7000484 () Bool)

(assert (=> bs!1527424 m!7000484))

(declare-fun m!7000486 () Bool)

(assert (=> bs!1527424 m!7000486))

(assert (=> bs!1527424 m!7000088))

(assert (=> bs!1527424 m!7000464))

(assert (=> b!6162196 d!1931142))

(declare-fun bs!1527425 () Bool)

(declare-fun d!1931144 () Bool)

(assert (= bs!1527425 (and d!1931144 b!6162196)))

(declare-fun lambda!336338 () Int)

(assert (=> bs!1527425 (= lambda!336338 lambda!336299)))

(assert (=> bs!1527425 (not (= lambda!336338 lambda!336300))))

(declare-fun bs!1527426 () Bool)

(assert (= bs!1527426 (and d!1931144 d!1931142)))

(assert (=> bs!1527426 (= lambda!336338 lambda!336333)))

(assert (=> d!1931144 true))

(assert (=> d!1931144 true))

(assert (=> d!1931144 true))

(declare-fun lambda!336339 () Int)

(assert (=> bs!1527425 (not (= lambda!336339 lambda!336299))))

(assert (=> bs!1527425 (= lambda!336339 lambda!336300)))

(assert (=> bs!1527426 (not (= lambda!336339 lambda!336333))))

(declare-fun bs!1527427 () Bool)

(assert (= bs!1527427 d!1931144))

(assert (=> bs!1527427 (not (= lambda!336339 lambda!336338))))

(assert (=> d!1931144 true))

(assert (=> d!1931144 true))

(assert (=> d!1931144 true))

(assert (=> d!1931144 (= (Exists!3175 lambda!336338) (Exists!3175 lambda!336339))))

(declare-fun lt!2336187 () Unit!157619)

(declare-fun choose!45821 (Regex!16105 Regex!16105 List!64614) Unit!157619)

(assert (=> d!1931144 (= lt!2336187 (choose!45821 (regOne!32722 r!7292) (regTwo!32722 r!7292) s!2326))))

(assert (=> d!1931144 (validRegex!7841 (regOne!32722 r!7292))))

(assert (=> d!1931144 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1712 (regOne!32722 r!7292) (regTwo!32722 r!7292) s!2326) lt!2336187)))

(declare-fun m!7000488 () Bool)

(assert (=> bs!1527427 m!7000488))

(declare-fun m!7000490 () Bool)

(assert (=> bs!1527427 m!7000490))

(declare-fun m!7000492 () Bool)

(assert (=> bs!1527427 m!7000492))

(assert (=> bs!1527427 m!7000464))

(assert (=> b!6162196 d!1931144))

(declare-fun d!1931146 () Bool)

(declare-fun isEmpty!36464 (Option!15996) Bool)

(assert (=> d!1931146 (= (isDefined!12699 (findConcatSeparation!2410 (regOne!32722 r!7292) (regTwo!32722 r!7292) Nil!64490 s!2326 s!2326)) (not (isEmpty!36464 (findConcatSeparation!2410 (regOne!32722 r!7292) (regTwo!32722 r!7292) Nil!64490 s!2326 s!2326))))))

(declare-fun bs!1527428 () Bool)

(assert (= bs!1527428 d!1931146))

(assert (=> bs!1527428 m!7000088))

(declare-fun m!7000494 () Bool)

(assert (=> bs!1527428 m!7000494))

(assert (=> b!6162196 d!1931146))

(declare-fun d!1931148 () Bool)

(declare-fun c!1109976 () Bool)

(declare-fun isEmpty!36465 (List!64614) Bool)

(assert (=> d!1931148 (= c!1109976 (isEmpty!36465 (t!378112 s!2326)))))

(declare-fun e!3754593 () Bool)

(assert (=> d!1931148 (= (matchZipper!2117 lt!2336092 (t!378112 s!2326)) e!3754593)))

(declare-fun b!6162652 () Bool)

(declare-fun nullableZipper!1886 ((InoxSet Context!10978)) Bool)

(assert (=> b!6162652 (= e!3754593 (nullableZipper!1886 lt!2336092))))

(declare-fun b!6162653 () Bool)

(declare-fun derivationStepZipper!2078 ((InoxSet Context!10978) C!32480) (InoxSet Context!10978))

(declare-fun head!12731 (List!64614) C!32480)

(declare-fun tail!11816 (List!64614) List!64614)

(assert (=> b!6162653 (= e!3754593 (matchZipper!2117 (derivationStepZipper!2078 lt!2336092 (head!12731 (t!378112 s!2326))) (tail!11816 (t!378112 s!2326))))))

(assert (= (and d!1931148 c!1109976) b!6162652))

(assert (= (and d!1931148 (not c!1109976)) b!6162653))

(declare-fun m!7000496 () Bool)

(assert (=> d!1931148 m!7000496))

(declare-fun m!7000498 () Bool)

(assert (=> b!6162652 m!7000498))

(declare-fun m!7000500 () Bool)

(assert (=> b!6162653 m!7000500))

(assert (=> b!6162653 m!7000500))

(declare-fun m!7000502 () Bool)

(assert (=> b!6162653 m!7000502))

(declare-fun m!7000504 () Bool)

(assert (=> b!6162653 m!7000504))

(assert (=> b!6162653 m!7000502))

(assert (=> b!6162653 m!7000504))

(declare-fun m!7000506 () Bool)

(assert (=> b!6162653 m!7000506))

(assert (=> b!6162176 d!1931148))

(declare-fun d!1931150 () Bool)

(declare-fun c!1109977 () Bool)

(assert (=> d!1931150 (= c!1109977 (isEmpty!36465 (t!378112 s!2326)))))

(declare-fun e!3754594 () Bool)

(assert (=> d!1931150 (= (matchZipper!2117 lt!2336112 (t!378112 s!2326)) e!3754594)))

(declare-fun b!6162654 () Bool)

(assert (=> b!6162654 (= e!3754594 (nullableZipper!1886 lt!2336112))))

(declare-fun b!6162655 () Bool)

(assert (=> b!6162655 (= e!3754594 (matchZipper!2117 (derivationStepZipper!2078 lt!2336112 (head!12731 (t!378112 s!2326))) (tail!11816 (t!378112 s!2326))))))

(assert (= (and d!1931150 c!1109977) b!6162654))

(assert (= (and d!1931150 (not c!1109977)) b!6162655))

(assert (=> d!1931150 m!7000496))

(declare-fun m!7000508 () Bool)

(assert (=> b!6162654 m!7000508))

(assert (=> b!6162655 m!7000500))

(assert (=> b!6162655 m!7000500))

(declare-fun m!7000510 () Bool)

(assert (=> b!6162655 m!7000510))

(assert (=> b!6162655 m!7000504))

(assert (=> b!6162655 m!7000510))

(assert (=> b!6162655 m!7000504))

(declare-fun m!7000512 () Bool)

(assert (=> b!6162655 m!7000512))

(assert (=> b!6162177 d!1931150))

(declare-fun d!1931152 () Bool)

(declare-fun c!1109978 () Bool)

(assert (=> d!1931152 (= c!1109978 (isEmpty!36465 (t!378112 s!2326)))))

(declare-fun e!3754595 () Bool)

(assert (=> d!1931152 (= (matchZipper!2117 lt!2336118 (t!378112 s!2326)) e!3754595)))

(declare-fun b!6162656 () Bool)

(assert (=> b!6162656 (= e!3754595 (nullableZipper!1886 lt!2336118))))

(declare-fun b!6162657 () Bool)

(assert (=> b!6162657 (= e!3754595 (matchZipper!2117 (derivationStepZipper!2078 lt!2336118 (head!12731 (t!378112 s!2326))) (tail!11816 (t!378112 s!2326))))))

(assert (= (and d!1931152 c!1109978) b!6162656))

(assert (= (and d!1931152 (not c!1109978)) b!6162657))

(assert (=> d!1931152 m!7000496))

(declare-fun m!7000514 () Bool)

(assert (=> b!6162656 m!7000514))

(assert (=> b!6162657 m!7000500))

(assert (=> b!6162657 m!7000500))

(declare-fun m!7000516 () Bool)

(assert (=> b!6162657 m!7000516))

(assert (=> b!6162657 m!7000504))

(assert (=> b!6162657 m!7000516))

(assert (=> b!6162657 m!7000504))

(declare-fun m!7000518 () Bool)

(assert (=> b!6162657 m!7000518))

(assert (=> b!6162177 d!1931152))

(declare-fun d!1931154 () Bool)

(declare-fun c!1109979 () Bool)

(assert (=> d!1931154 (= c!1109979 (isEmpty!36465 (t!378112 s!2326)))))

(declare-fun e!3754596 () Bool)

(assert (=> d!1931154 (= (matchZipper!2117 lt!2336090 (t!378112 s!2326)) e!3754596)))

(declare-fun b!6162658 () Bool)

(assert (=> b!6162658 (= e!3754596 (nullableZipper!1886 lt!2336090))))

(declare-fun b!6162659 () Bool)

(assert (=> b!6162659 (= e!3754596 (matchZipper!2117 (derivationStepZipper!2078 lt!2336090 (head!12731 (t!378112 s!2326))) (tail!11816 (t!378112 s!2326))))))

(assert (= (and d!1931154 c!1109979) b!6162658))

(assert (= (and d!1931154 (not c!1109979)) b!6162659))

(assert (=> d!1931154 m!7000496))

(declare-fun m!7000520 () Bool)

(assert (=> b!6162658 m!7000520))

(assert (=> b!6162659 m!7000500))

(assert (=> b!6162659 m!7000500))

(declare-fun m!7000522 () Bool)

(assert (=> b!6162659 m!7000522))

(assert (=> b!6162659 m!7000504))

(assert (=> b!6162659 m!7000522))

(assert (=> b!6162659 m!7000504))

(declare-fun m!7000524 () Bool)

(assert (=> b!6162659 m!7000524))

(assert (=> b!6162177 d!1931154))

(declare-fun e!3754599 () Bool)

(declare-fun d!1931156 () Bool)

(assert (=> d!1931156 (= (matchZipper!2117 ((_ map or) lt!2336090 lt!2336113) (t!378112 s!2326)) e!3754599)))

(declare-fun res!2551897 () Bool)

(assert (=> d!1931156 (=> res!2551897 e!3754599)))

(assert (=> d!1931156 (= res!2551897 (matchZipper!2117 lt!2336090 (t!378112 s!2326)))))

(declare-fun lt!2336190 () Unit!157619)

(declare-fun choose!45822 ((InoxSet Context!10978) (InoxSet Context!10978) List!64614) Unit!157619)

(assert (=> d!1931156 (= lt!2336190 (choose!45822 lt!2336090 lt!2336113 (t!378112 s!2326)))))

(assert (=> d!1931156 (= (lemmaZipperConcatMatchesSameAsBothZippers!936 lt!2336090 lt!2336113 (t!378112 s!2326)) lt!2336190)))

(declare-fun b!6162662 () Bool)

(assert (=> b!6162662 (= e!3754599 (matchZipper!2117 lt!2336113 (t!378112 s!2326)))))

(assert (= (and d!1931156 (not res!2551897)) b!6162662))

(declare-fun m!7000526 () Bool)

(assert (=> d!1931156 m!7000526))

(assert (=> d!1931156 m!7000098))

(declare-fun m!7000528 () Bool)

(assert (=> d!1931156 m!7000528))

(assert (=> b!6162662 m!7000110))

(assert (=> b!6162177 d!1931156))

(declare-fun d!1931158 () Bool)

(assert (=> d!1931158 (= (isEmpty!36461 (t!378113 (exprs!5989 (h!70940 zl!343)))) ((_ is Nil!64491) (t!378113 (exprs!5989 (h!70940 zl!343)))))))

(assert (=> b!6162178 d!1931158))

(declare-fun e!3754600 () Bool)

(declare-fun d!1931160 () Bool)

(assert (=> d!1931160 (= (matchZipper!2117 ((_ map or) lt!2336112 lt!2336092) (t!378112 s!2326)) e!3754600)))

(declare-fun res!2551898 () Bool)

(assert (=> d!1931160 (=> res!2551898 e!3754600)))

(assert (=> d!1931160 (= res!2551898 (matchZipper!2117 lt!2336112 (t!378112 s!2326)))))

(declare-fun lt!2336191 () Unit!157619)

(assert (=> d!1931160 (= lt!2336191 (choose!45822 lt!2336112 lt!2336092 (t!378112 s!2326)))))

(assert (=> d!1931160 (= (lemmaZipperConcatMatchesSameAsBothZippers!936 lt!2336112 lt!2336092 (t!378112 s!2326)) lt!2336191)))

(declare-fun b!6162663 () Bool)

(assert (=> b!6162663 (= e!3754600 (matchZipper!2117 lt!2336092 (t!378112 s!2326)))))

(assert (= (and d!1931160 (not res!2551898)) b!6162663))

(assert (=> d!1931160 m!7000056))

(assert (=> d!1931160 m!7000054))

(declare-fun m!7000530 () Bool)

(assert (=> d!1931160 m!7000530))

(assert (=> b!6162663 m!7000044))

(assert (=> b!6162159 d!1931160))

(assert (=> b!6162159 d!1931150))

(declare-fun d!1931162 () Bool)

(declare-fun c!1109980 () Bool)

(assert (=> d!1931162 (= c!1109980 (isEmpty!36465 (t!378112 s!2326)))))

(declare-fun e!3754601 () Bool)

(assert (=> d!1931162 (= (matchZipper!2117 ((_ map or) lt!2336112 lt!2336092) (t!378112 s!2326)) e!3754601)))

(declare-fun b!6162664 () Bool)

(assert (=> b!6162664 (= e!3754601 (nullableZipper!1886 ((_ map or) lt!2336112 lt!2336092)))))

(declare-fun b!6162665 () Bool)

(assert (=> b!6162665 (= e!3754601 (matchZipper!2117 (derivationStepZipper!2078 ((_ map or) lt!2336112 lt!2336092) (head!12731 (t!378112 s!2326))) (tail!11816 (t!378112 s!2326))))))

(assert (= (and d!1931162 c!1109980) b!6162664))

(assert (= (and d!1931162 (not c!1109980)) b!6162665))

(assert (=> d!1931162 m!7000496))

(declare-fun m!7000532 () Bool)

(assert (=> b!6162664 m!7000532))

(assert (=> b!6162665 m!7000500))

(assert (=> b!6162665 m!7000500))

(declare-fun m!7000534 () Bool)

(assert (=> b!6162665 m!7000534))

(assert (=> b!6162665 m!7000504))

(assert (=> b!6162665 m!7000534))

(assert (=> b!6162665 m!7000504))

(declare-fun m!7000536 () Bool)

(assert (=> b!6162665 m!7000536))

(assert (=> b!6162159 d!1931162))

(declare-fun d!1931164 () Bool)

(declare-fun lt!2336194 () Regex!16105)

(assert (=> d!1931164 (validRegex!7841 lt!2336194)))

(assert (=> d!1931164 (= lt!2336194 (generalisedUnion!1949 (unfocusZipperList!1526 zl!343)))))

(assert (=> d!1931164 (= (unfocusZipper!1847 zl!343) lt!2336194)))

(declare-fun bs!1527429 () Bool)

(assert (= bs!1527429 d!1931164))

(declare-fun m!7000538 () Bool)

(assert (=> bs!1527429 m!7000538))

(assert (=> bs!1527429 m!7000040))

(assert (=> bs!1527429 m!7000040))

(assert (=> bs!1527429 m!7000042))

(assert (=> b!6162179 d!1931164))

(declare-fun d!1931166 () Bool)

(declare-fun choose!45823 ((InoxSet Context!10978) Int) (InoxSet Context!10978))

(assert (=> d!1931166 (= (flatMap!1610 lt!2336103 lambda!336301) (choose!45823 lt!2336103 lambda!336301))))

(declare-fun bs!1527430 () Bool)

(assert (= bs!1527430 d!1931166))

(declare-fun m!7000540 () Bool)

(assert (=> bs!1527430 m!7000540))

(assert (=> b!6162170 d!1931166))

(declare-fun d!1931168 () Bool)

(declare-fun dynLambda!25429 (Int Context!10978) (InoxSet Context!10978))

(assert (=> d!1931168 (= (flatMap!1610 lt!2336107 lambda!336301) (dynLambda!25429 lambda!336301 lt!2336104))))

(declare-fun lt!2336197 () Unit!157619)

(declare-fun choose!45824 ((InoxSet Context!10978) Context!10978 Int) Unit!157619)

(assert (=> d!1931168 (= lt!2336197 (choose!45824 lt!2336107 lt!2336104 lambda!336301))))

(assert (=> d!1931168 (= lt!2336107 (store ((as const (Array Context!10978 Bool)) false) lt!2336104 true))))

(assert (=> d!1931168 (= (lemmaFlatMapOnSingletonSet!1136 lt!2336107 lt!2336104 lambda!336301) lt!2336197)))

(declare-fun b_lambda!234601 () Bool)

(assert (=> (not b_lambda!234601) (not d!1931168)))

(declare-fun bs!1527431 () Bool)

(assert (= bs!1527431 d!1931168))

(assert (=> bs!1527431 m!7000124))

(declare-fun m!7000542 () Bool)

(assert (=> bs!1527431 m!7000542))

(declare-fun m!7000544 () Bool)

(assert (=> bs!1527431 m!7000544))

(assert (=> bs!1527431 m!7000134))

(assert (=> b!6162170 d!1931168))

(declare-fun d!1931170 () Bool)

(declare-fun c!1109981 () Bool)

(assert (=> d!1931170 (= c!1109981 (isEmpty!36465 s!2326))))

(declare-fun e!3754602 () Bool)

(assert (=> d!1931170 (= (matchZipper!2117 z!1189 s!2326) e!3754602)))

(declare-fun b!6162666 () Bool)

(assert (=> b!6162666 (= e!3754602 (nullableZipper!1886 z!1189))))

(declare-fun b!6162667 () Bool)

(assert (=> b!6162667 (= e!3754602 (matchZipper!2117 (derivationStepZipper!2078 z!1189 (head!12731 s!2326)) (tail!11816 s!2326)))))

(assert (= (and d!1931170 c!1109981) b!6162666))

(assert (= (and d!1931170 (not c!1109981)) b!6162667))

(declare-fun m!7000546 () Bool)

(assert (=> d!1931170 m!7000546))

(declare-fun m!7000548 () Bool)

(assert (=> b!6162666 m!7000548))

(declare-fun m!7000550 () Bool)

(assert (=> b!6162667 m!7000550))

(assert (=> b!6162667 m!7000550))

(declare-fun m!7000552 () Bool)

(assert (=> b!6162667 m!7000552))

(declare-fun m!7000554 () Bool)

(assert (=> b!6162667 m!7000554))

(assert (=> b!6162667 m!7000552))

(assert (=> b!6162667 m!7000554))

(declare-fun m!7000556 () Bool)

(assert (=> b!6162667 m!7000556))

(assert (=> b!6162170 d!1931170))

(declare-fun b!6162678 () Bool)

(declare-fun e!3754609 () (InoxSet Context!10978))

(declare-fun call!513336 () (InoxSet Context!10978))

(assert (=> b!6162678 (= e!3754609 ((_ map or) call!513336 (derivationStepZipperUp!1279 (Context!10979 (t!378113 (exprs!5989 lt!2336096))) (h!70938 s!2326))))))

(declare-fun d!1931172 () Bool)

(declare-fun c!1109987 () Bool)

(declare-fun e!3754610 () Bool)

(assert (=> d!1931172 (= c!1109987 e!3754610)))

(declare-fun res!2551901 () Bool)

(assert (=> d!1931172 (=> (not res!2551901) (not e!3754610))))

(assert (=> d!1931172 (= res!2551901 ((_ is Cons!64491) (exprs!5989 lt!2336096)))))

(assert (=> d!1931172 (= (derivationStepZipperUp!1279 lt!2336096 (h!70938 s!2326)) e!3754609)))

(declare-fun b!6162679 () Bool)

(declare-fun e!3754611 () (InoxSet Context!10978))

(assert (=> b!6162679 (= e!3754609 e!3754611)))

(declare-fun c!1109986 () Bool)

(assert (=> b!6162679 (= c!1109986 ((_ is Cons!64491) (exprs!5989 lt!2336096)))))

(declare-fun bm!513331 () Bool)

(assert (=> bm!513331 (= call!513336 (derivationStepZipperDown!1353 (h!70939 (exprs!5989 lt!2336096)) (Context!10979 (t!378113 (exprs!5989 lt!2336096))) (h!70938 s!2326)))))

(declare-fun b!6162680 () Bool)

(assert (=> b!6162680 (= e!3754611 ((as const (Array Context!10978 Bool)) false))))

(declare-fun b!6162681 () Bool)

(assert (=> b!6162681 (= e!3754611 call!513336)))

(declare-fun b!6162682 () Bool)

(assert (=> b!6162682 (= e!3754610 (nullable!6098 (h!70939 (exprs!5989 lt!2336096))))))

(assert (= (and d!1931172 res!2551901) b!6162682))

(assert (= (and d!1931172 c!1109987) b!6162678))

(assert (= (and d!1931172 (not c!1109987)) b!6162679))

(assert (= (and b!6162679 c!1109986) b!6162681))

(assert (= (and b!6162679 (not c!1109986)) b!6162680))

(assert (= (or b!6162678 b!6162681) bm!513331))

(declare-fun m!7000558 () Bool)

(assert (=> b!6162678 m!7000558))

(declare-fun m!7000560 () Bool)

(assert (=> bm!513331 m!7000560))

(declare-fun m!7000562 () Bool)

(assert (=> b!6162682 m!7000562))

(assert (=> b!6162170 d!1931172))

(declare-fun d!1931174 () Bool)

(assert (=> d!1931174 (= (flatMap!1610 lt!2336107 lambda!336301) (choose!45823 lt!2336107 lambda!336301))))

(declare-fun bs!1527432 () Bool)

(assert (= bs!1527432 d!1931174))

(declare-fun m!7000564 () Bool)

(assert (=> bs!1527432 m!7000564))

(assert (=> b!6162170 d!1931174))

(declare-fun d!1931176 () Bool)

(declare-fun c!1109988 () Bool)

(assert (=> d!1931176 (= c!1109988 (isEmpty!36465 s!2326))))

(declare-fun e!3754612 () Bool)

(assert (=> d!1931176 (= (matchZipper!2117 lt!2336103 s!2326) e!3754612)))

(declare-fun b!6162683 () Bool)

(assert (=> b!6162683 (= e!3754612 (nullableZipper!1886 lt!2336103))))

(declare-fun b!6162684 () Bool)

(assert (=> b!6162684 (= e!3754612 (matchZipper!2117 (derivationStepZipper!2078 lt!2336103 (head!12731 s!2326)) (tail!11816 s!2326)))))

(assert (= (and d!1931176 c!1109988) b!6162683))

(assert (= (and d!1931176 (not c!1109988)) b!6162684))

(assert (=> d!1931176 m!7000546))

(declare-fun m!7000566 () Bool)

(assert (=> b!6162683 m!7000566))

(assert (=> b!6162684 m!7000550))

(assert (=> b!6162684 m!7000550))

(declare-fun m!7000568 () Bool)

(assert (=> b!6162684 m!7000568))

(assert (=> b!6162684 m!7000554))

(assert (=> b!6162684 m!7000568))

(assert (=> b!6162684 m!7000554))

(declare-fun m!7000570 () Bool)

(assert (=> b!6162684 m!7000570))

(assert (=> b!6162170 d!1931176))

(declare-fun d!1931178 () Bool)

(assert (=> d!1931178 (= (flatMap!1610 lt!2336103 lambda!336301) (dynLambda!25429 lambda!336301 lt!2336096))))

(declare-fun lt!2336198 () Unit!157619)

(assert (=> d!1931178 (= lt!2336198 (choose!45824 lt!2336103 lt!2336096 lambda!336301))))

(assert (=> d!1931178 (= lt!2336103 (store ((as const (Array Context!10978 Bool)) false) lt!2336096 true))))

(assert (=> d!1931178 (= (lemmaFlatMapOnSingletonSet!1136 lt!2336103 lt!2336096 lambda!336301) lt!2336198)))

(declare-fun b_lambda!234603 () Bool)

(assert (=> (not b_lambda!234603) (not d!1931178)))

(declare-fun bs!1527433 () Bool)

(assert (= bs!1527433 d!1931178))

(assert (=> bs!1527433 m!7000120))

(declare-fun m!7000572 () Bool)

(assert (=> bs!1527433 m!7000572))

(declare-fun m!7000574 () Bool)

(assert (=> bs!1527433 m!7000574))

(assert (=> bs!1527433 m!7000116))

(assert (=> b!6162170 d!1931178))

(declare-fun d!1931180 () Bool)

(declare-fun nullableFct!2062 (Regex!16105) Bool)

(assert (=> d!1931180 (= (nullable!6098 (regOne!32723 (regOne!32722 r!7292))) (nullableFct!2062 (regOne!32723 (regOne!32722 r!7292))))))

(declare-fun bs!1527434 () Bool)

(assert (= bs!1527434 d!1931180))

(declare-fun m!7000576 () Bool)

(assert (=> bs!1527434 m!7000576))

(assert (=> b!6162170 d!1931180))

(declare-fun call!513337 () (InoxSet Context!10978))

(declare-fun b!6162685 () Bool)

(declare-fun e!3754613 () (InoxSet Context!10978))

(assert (=> b!6162685 (= e!3754613 ((_ map or) call!513337 (derivationStepZipperUp!1279 (Context!10979 (t!378113 (exprs!5989 lt!2336104))) (h!70938 s!2326))))))

(declare-fun d!1931182 () Bool)

(declare-fun c!1109990 () Bool)

(declare-fun e!3754614 () Bool)

(assert (=> d!1931182 (= c!1109990 e!3754614)))

(declare-fun res!2551902 () Bool)

(assert (=> d!1931182 (=> (not res!2551902) (not e!3754614))))

(assert (=> d!1931182 (= res!2551902 ((_ is Cons!64491) (exprs!5989 lt!2336104)))))

(assert (=> d!1931182 (= (derivationStepZipperUp!1279 lt!2336104 (h!70938 s!2326)) e!3754613)))

(declare-fun b!6162686 () Bool)

(declare-fun e!3754615 () (InoxSet Context!10978))

(assert (=> b!6162686 (= e!3754613 e!3754615)))

(declare-fun c!1109989 () Bool)

(assert (=> b!6162686 (= c!1109989 ((_ is Cons!64491) (exprs!5989 lt!2336104)))))

(declare-fun bm!513332 () Bool)

(assert (=> bm!513332 (= call!513337 (derivationStepZipperDown!1353 (h!70939 (exprs!5989 lt!2336104)) (Context!10979 (t!378113 (exprs!5989 lt!2336104))) (h!70938 s!2326)))))

(declare-fun b!6162687 () Bool)

(assert (=> b!6162687 (= e!3754615 ((as const (Array Context!10978 Bool)) false))))

(declare-fun b!6162688 () Bool)

(assert (=> b!6162688 (= e!3754615 call!513337)))

(declare-fun b!6162689 () Bool)

(assert (=> b!6162689 (= e!3754614 (nullable!6098 (h!70939 (exprs!5989 lt!2336104))))))

(assert (= (and d!1931182 res!2551902) b!6162689))

(assert (= (and d!1931182 c!1109990) b!6162685))

(assert (= (and d!1931182 (not c!1109990)) b!6162686))

(assert (= (and b!6162686 c!1109989) b!6162688))

(assert (= (and b!6162686 (not c!1109989)) b!6162687))

(assert (= (or b!6162685 b!6162688) bm!513332))

(declare-fun m!7000578 () Bool)

(assert (=> b!6162685 m!7000578))

(declare-fun m!7000580 () Bool)

(assert (=> bm!513332 m!7000580))

(declare-fun m!7000582 () Bool)

(assert (=> b!6162689 m!7000582))

(assert (=> b!6162170 d!1931182))

(declare-fun d!1931184 () Bool)

(assert (=> d!1931184 (= (nullable!6098 (regTwo!32723 (regOne!32722 r!7292))) (nullableFct!2062 (regTwo!32723 (regOne!32722 r!7292))))))

(declare-fun bs!1527435 () Bool)

(assert (= bs!1527435 d!1931184))

(declare-fun m!7000584 () Bool)

(assert (=> bs!1527435 m!7000584))

(assert (=> b!6162170 d!1931184))

(declare-fun d!1931186 () Bool)

(declare-fun e!3754631 () Bool)

(assert (=> d!1931186 e!3754631))

(declare-fun res!2551908 () Bool)

(assert (=> d!1931186 (=> (not res!2551908) (not e!3754631))))

(declare-fun lt!2336201 () Regex!16105)

(assert (=> d!1931186 (= res!2551908 (validRegex!7841 lt!2336201))))

(declare-fun e!3754629 () Regex!16105)

(assert (=> d!1931186 (= lt!2336201 e!3754629)))

(declare-fun c!1109999 () Bool)

(declare-fun e!3754633 () Bool)

(assert (=> d!1931186 (= c!1109999 e!3754633)))

(declare-fun res!2551907 () Bool)

(assert (=> d!1931186 (=> (not res!2551907) (not e!3754633))))

(assert (=> d!1931186 (= res!2551907 ((_ is Cons!64491) (exprs!5989 (h!70940 zl!343))))))

(declare-fun lambda!336342 () Int)

(declare-fun forall!15226 (List!64615 Int) Bool)

(assert (=> d!1931186 (forall!15226 (exprs!5989 (h!70940 zl!343)) lambda!336342)))

(assert (=> d!1931186 (= (generalisedConcat!1702 (exprs!5989 (h!70940 zl!343))) lt!2336201)))

(declare-fun b!6162710 () Bool)

(declare-fun e!3754632 () Bool)

(declare-fun e!3754630 () Bool)

(assert (=> b!6162710 (= e!3754632 e!3754630)))

(declare-fun c!1110002 () Bool)

(declare-fun tail!11817 (List!64615) List!64615)

(assert (=> b!6162710 (= c!1110002 (isEmpty!36461 (tail!11817 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun b!6162711 () Bool)

(declare-fun e!3754628 () Regex!16105)

(assert (=> b!6162711 (= e!3754628 (Concat!24950 (h!70939 (exprs!5989 (h!70940 zl!343))) (generalisedConcat!1702 (t!378113 (exprs!5989 (h!70940 zl!343))))))))

(declare-fun b!6162712 () Bool)

(declare-fun isConcat!1045 (Regex!16105) Bool)

(assert (=> b!6162712 (= e!3754630 (isConcat!1045 lt!2336201))))

(declare-fun b!6162713 () Bool)

(declare-fun head!12732 (List!64615) Regex!16105)

(assert (=> b!6162713 (= e!3754630 (= lt!2336201 (head!12732 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun b!6162714 () Bool)

(assert (=> b!6162714 (= e!3754629 e!3754628)))

(declare-fun c!1110001 () Bool)

(assert (=> b!6162714 (= c!1110001 ((_ is Cons!64491) (exprs!5989 (h!70940 zl!343))))))

(declare-fun b!6162715 () Bool)

(assert (=> b!6162715 (= e!3754629 (h!70939 (exprs!5989 (h!70940 zl!343))))))

(declare-fun b!6162716 () Bool)

(assert (=> b!6162716 (= e!3754631 e!3754632)))

(declare-fun c!1110000 () Bool)

(assert (=> b!6162716 (= c!1110000 (isEmpty!36461 (exprs!5989 (h!70940 zl!343))))))

(declare-fun b!6162717 () Bool)

(declare-fun isEmptyExpr!1522 (Regex!16105) Bool)

(assert (=> b!6162717 (= e!3754632 (isEmptyExpr!1522 lt!2336201))))

(declare-fun b!6162718 () Bool)

(assert (=> b!6162718 (= e!3754633 (isEmpty!36461 (t!378113 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun b!6162719 () Bool)

(assert (=> b!6162719 (= e!3754628 EmptyExpr!16105)))

(assert (= (and d!1931186 res!2551907) b!6162718))

(assert (= (and d!1931186 c!1109999) b!6162715))

(assert (= (and d!1931186 (not c!1109999)) b!6162714))

(assert (= (and b!6162714 c!1110001) b!6162711))

(assert (= (and b!6162714 (not c!1110001)) b!6162719))

(assert (= (and d!1931186 res!2551908) b!6162716))

(assert (= (and b!6162716 c!1110000) b!6162717))

(assert (= (and b!6162716 (not c!1110000)) b!6162710))

(assert (= (and b!6162710 c!1110002) b!6162713))

(assert (= (and b!6162710 (not c!1110002)) b!6162712))

(declare-fun m!7000586 () Bool)

(assert (=> b!6162713 m!7000586))

(declare-fun m!7000588 () Bool)

(assert (=> b!6162717 m!7000588))

(declare-fun m!7000590 () Bool)

(assert (=> b!6162712 m!7000590))

(declare-fun m!7000592 () Bool)

(assert (=> b!6162710 m!7000592))

(assert (=> b!6162710 m!7000592))

(declare-fun m!7000594 () Bool)

(assert (=> b!6162710 m!7000594))

(declare-fun m!7000596 () Bool)

(assert (=> b!6162716 m!7000596))

(assert (=> b!6162718 m!7000064))

(declare-fun m!7000598 () Bool)

(assert (=> b!6162711 m!7000598))

(declare-fun m!7000600 () Bool)

(assert (=> d!1931186 m!7000600))

(declare-fun m!7000602 () Bool)

(assert (=> d!1931186 m!7000602))

(assert (=> b!6162191 d!1931186))

(declare-fun e!3754634 () Bool)

(declare-fun d!1931188 () Bool)

(assert (=> d!1931188 (= (matchZipper!2117 ((_ map or) lt!2336090 lt!2336092) (t!378112 s!2326)) e!3754634)))

(declare-fun res!2551909 () Bool)

(assert (=> d!1931188 (=> res!2551909 e!3754634)))

(assert (=> d!1931188 (= res!2551909 (matchZipper!2117 lt!2336090 (t!378112 s!2326)))))

(declare-fun lt!2336202 () Unit!157619)

(assert (=> d!1931188 (= lt!2336202 (choose!45822 lt!2336090 lt!2336092 (t!378112 s!2326)))))

(assert (=> d!1931188 (= (lemmaZipperConcatMatchesSameAsBothZippers!936 lt!2336090 lt!2336092 (t!378112 s!2326)) lt!2336202)))

(declare-fun b!6162720 () Bool)

(assert (=> b!6162720 (= e!3754634 (matchZipper!2117 lt!2336092 (t!378112 s!2326)))))

(assert (= (and d!1931188 (not res!2551909)) b!6162720))

(assert (=> d!1931188 m!7000140))

(assert (=> d!1931188 m!7000098))

(declare-fun m!7000604 () Bool)

(assert (=> d!1931188 m!7000604))

(assert (=> b!6162720 m!7000044))

(assert (=> b!6162192 d!1931188))

(declare-fun d!1931190 () Bool)

(declare-fun c!1110003 () Bool)

(assert (=> d!1931190 (= c!1110003 (isEmpty!36465 (t!378112 s!2326)))))

(declare-fun e!3754635 () Bool)

(assert (=> d!1931190 (= (matchZipper!2117 ((_ map or) lt!2336090 lt!2336092) (t!378112 s!2326)) e!3754635)))

(declare-fun b!6162721 () Bool)

(assert (=> b!6162721 (= e!3754635 (nullableZipper!1886 ((_ map or) lt!2336090 lt!2336092)))))

(declare-fun b!6162722 () Bool)

(assert (=> b!6162722 (= e!3754635 (matchZipper!2117 (derivationStepZipper!2078 ((_ map or) lt!2336090 lt!2336092) (head!12731 (t!378112 s!2326))) (tail!11816 (t!378112 s!2326))))))

(assert (= (and d!1931190 c!1110003) b!6162721))

(assert (= (and d!1931190 (not c!1110003)) b!6162722))

(assert (=> d!1931190 m!7000496))

(declare-fun m!7000606 () Bool)

(assert (=> b!6162721 m!7000606))

(assert (=> b!6162722 m!7000500))

(assert (=> b!6162722 m!7000500))

(declare-fun m!7000608 () Bool)

(assert (=> b!6162722 m!7000608))

(assert (=> b!6162722 m!7000504))

(assert (=> b!6162722 m!7000608))

(assert (=> b!6162722 m!7000504))

(declare-fun m!7000610 () Bool)

(assert (=> b!6162722 m!7000610))

(assert (=> b!6162192 d!1931190))

(declare-fun b!6162723 () Bool)

(declare-fun call!513338 () (InoxSet Context!10978))

(declare-fun e!3754636 () (InoxSet Context!10978))

(assert (=> b!6162723 (= e!3754636 ((_ map or) call!513338 (derivationStepZipperUp!1279 (Context!10979 (t!378113 (exprs!5989 lt!2336120))) (h!70938 s!2326))))))

(declare-fun d!1931192 () Bool)

(declare-fun c!1110005 () Bool)

(declare-fun e!3754637 () Bool)

(assert (=> d!1931192 (= c!1110005 e!3754637)))

(declare-fun res!2551910 () Bool)

(assert (=> d!1931192 (=> (not res!2551910) (not e!3754637))))

(assert (=> d!1931192 (= res!2551910 ((_ is Cons!64491) (exprs!5989 lt!2336120)))))

(assert (=> d!1931192 (= (derivationStepZipperUp!1279 lt!2336120 (h!70938 s!2326)) e!3754636)))

(declare-fun b!6162724 () Bool)

(declare-fun e!3754638 () (InoxSet Context!10978))

(assert (=> b!6162724 (= e!3754636 e!3754638)))

(declare-fun c!1110004 () Bool)

(assert (=> b!6162724 (= c!1110004 ((_ is Cons!64491) (exprs!5989 lt!2336120)))))

(declare-fun bm!513333 () Bool)

(assert (=> bm!513333 (= call!513338 (derivationStepZipperDown!1353 (h!70939 (exprs!5989 lt!2336120)) (Context!10979 (t!378113 (exprs!5989 lt!2336120))) (h!70938 s!2326)))))

(declare-fun b!6162725 () Bool)

(assert (=> b!6162725 (= e!3754638 ((as const (Array Context!10978 Bool)) false))))

(declare-fun b!6162726 () Bool)

(assert (=> b!6162726 (= e!3754638 call!513338)))

(declare-fun b!6162727 () Bool)

(assert (=> b!6162727 (= e!3754637 (nullable!6098 (h!70939 (exprs!5989 lt!2336120))))))

(assert (= (and d!1931192 res!2551910) b!6162727))

(assert (= (and d!1931192 c!1110005) b!6162723))

(assert (= (and d!1931192 (not c!1110005)) b!6162724))

(assert (= (and b!6162724 c!1110004) b!6162726))

(assert (= (and b!6162724 (not c!1110004)) b!6162725))

(assert (= (or b!6162723 b!6162726) bm!513333))

(declare-fun m!7000612 () Bool)

(assert (=> b!6162723 m!7000612))

(declare-fun m!7000614 () Bool)

(assert (=> bm!513333 m!7000614))

(declare-fun m!7000616 () Bool)

(assert (=> b!6162727 m!7000616))

(assert (=> b!6162172 d!1931192))

(declare-fun d!1931194 () Bool)

(assert (=> d!1931194 (= (nullable!6098 (h!70939 (exprs!5989 (h!70940 zl!343)))) (nullableFct!2062 (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun bs!1527436 () Bool)

(assert (= bs!1527436 d!1931194))

(declare-fun m!7000618 () Bool)

(assert (=> bs!1527436 m!7000618))

(assert (=> b!6162172 d!1931194))

(declare-fun b!6162728 () Bool)

(declare-fun call!513339 () (InoxSet Context!10978))

(declare-fun e!3754639 () (InoxSet Context!10978))

(assert (=> b!6162728 (= e!3754639 ((_ map or) call!513339 (derivationStepZipperUp!1279 (Context!10979 (t!378113 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))) (h!70938 s!2326))))))

(declare-fun d!1931196 () Bool)

(declare-fun c!1110007 () Bool)

(declare-fun e!3754640 () Bool)

(assert (=> d!1931196 (= c!1110007 e!3754640)))

(declare-fun res!2551911 () Bool)

(assert (=> d!1931196 (=> (not res!2551911) (not e!3754640))))

(assert (=> d!1931196 (= res!2551911 ((_ is Cons!64491) (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343))))))))))

(assert (=> d!1931196 (= (derivationStepZipperUp!1279 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343))))) (h!70938 s!2326)) e!3754639)))

(declare-fun b!6162729 () Bool)

(declare-fun e!3754641 () (InoxSet Context!10978))

(assert (=> b!6162729 (= e!3754639 e!3754641)))

(declare-fun c!1110006 () Bool)

(assert (=> b!6162729 (= c!1110006 ((_ is Cons!64491) (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343))))))))))

(declare-fun bm!513334 () Bool)

(assert (=> bm!513334 (= call!513339 (derivationStepZipperDown!1353 (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343))))))) (Context!10979 (t!378113 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))) (h!70938 s!2326)))))

(declare-fun b!6162730 () Bool)

(assert (=> b!6162730 (= e!3754641 ((as const (Array Context!10978 Bool)) false))))

(declare-fun b!6162731 () Bool)

(assert (=> b!6162731 (= e!3754641 call!513339)))

(declare-fun b!6162732 () Bool)

(assert (=> b!6162732 (= e!3754640 (nullable!6098 (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))))))

(assert (= (and d!1931196 res!2551911) b!6162732))

(assert (= (and d!1931196 c!1110007) b!6162728))

(assert (= (and d!1931196 (not c!1110007)) b!6162729))

(assert (= (and b!6162729 c!1110006) b!6162731))

(assert (= (and b!6162729 (not c!1110006)) b!6162730))

(assert (= (or b!6162728 b!6162731) bm!513334))

(declare-fun m!7000620 () Bool)

(assert (=> b!6162728 m!7000620))

(declare-fun m!7000622 () Bool)

(assert (=> bm!513334 m!7000622))

(declare-fun m!7000624 () Bool)

(assert (=> b!6162732 m!7000624))

(assert (=> b!6162172 d!1931196))

(declare-fun d!1931198 () Bool)

(assert (=> d!1931198 (= (flatMap!1610 z!1189 lambda!336301) (dynLambda!25429 lambda!336301 (h!70940 zl!343)))))

(declare-fun lt!2336203 () Unit!157619)

(assert (=> d!1931198 (= lt!2336203 (choose!45824 z!1189 (h!70940 zl!343) lambda!336301))))

(assert (=> d!1931198 (= z!1189 (store ((as const (Array Context!10978 Bool)) false) (h!70940 zl!343) true))))

(assert (=> d!1931198 (= (lemmaFlatMapOnSingletonSet!1136 z!1189 (h!70940 zl!343) lambda!336301) lt!2336203)))

(declare-fun b_lambda!234605 () Bool)

(assert (=> (not b_lambda!234605) (not d!1931198)))

(declare-fun bs!1527437 () Bool)

(assert (= bs!1527437 d!1931198))

(assert (=> bs!1527437 m!7000068))

(declare-fun m!7000626 () Bool)

(assert (=> bs!1527437 m!7000626))

(declare-fun m!7000628 () Bool)

(assert (=> bs!1527437 m!7000628))

(declare-fun m!7000630 () Bool)

(assert (=> bs!1527437 m!7000630))

(assert (=> b!6162172 d!1931198))

(declare-fun d!1931200 () Bool)

(assert (=> d!1931200 (= (flatMap!1610 z!1189 lambda!336301) (choose!45823 z!1189 lambda!336301))))

(declare-fun bs!1527438 () Bool)

(assert (= bs!1527438 d!1931200))

(declare-fun m!7000632 () Bool)

(assert (=> bs!1527438 m!7000632))

(assert (=> b!6162172 d!1931200))

(declare-fun call!513340 () (InoxSet Context!10978))

(declare-fun e!3754642 () (InoxSet Context!10978))

(declare-fun b!6162733 () Bool)

(assert (=> b!6162733 (= e!3754642 ((_ map or) call!513340 (derivationStepZipperUp!1279 (Context!10979 (t!378113 (exprs!5989 (h!70940 zl!343)))) (h!70938 s!2326))))))

(declare-fun d!1931202 () Bool)

(declare-fun c!1110009 () Bool)

(declare-fun e!3754643 () Bool)

(assert (=> d!1931202 (= c!1110009 e!3754643)))

(declare-fun res!2551912 () Bool)

(assert (=> d!1931202 (=> (not res!2551912) (not e!3754643))))

(assert (=> d!1931202 (= res!2551912 ((_ is Cons!64491) (exprs!5989 (h!70940 zl!343))))))

(assert (=> d!1931202 (= (derivationStepZipperUp!1279 (h!70940 zl!343) (h!70938 s!2326)) e!3754642)))

(declare-fun b!6162734 () Bool)

(declare-fun e!3754644 () (InoxSet Context!10978))

(assert (=> b!6162734 (= e!3754642 e!3754644)))

(declare-fun c!1110008 () Bool)

(assert (=> b!6162734 (= c!1110008 ((_ is Cons!64491) (exprs!5989 (h!70940 zl!343))))))

(declare-fun bm!513335 () Bool)

(assert (=> bm!513335 (= call!513340 (derivationStepZipperDown!1353 (h!70939 (exprs!5989 (h!70940 zl!343))) (Context!10979 (t!378113 (exprs!5989 (h!70940 zl!343)))) (h!70938 s!2326)))))

(declare-fun b!6162735 () Bool)

(assert (=> b!6162735 (= e!3754644 ((as const (Array Context!10978 Bool)) false))))

(declare-fun b!6162736 () Bool)

(assert (=> b!6162736 (= e!3754644 call!513340)))

(declare-fun b!6162737 () Bool)

(assert (=> b!6162737 (= e!3754643 (nullable!6098 (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(assert (= (and d!1931202 res!2551912) b!6162737))

(assert (= (and d!1931202 c!1110009) b!6162733))

(assert (= (and d!1931202 (not c!1110009)) b!6162734))

(assert (= (and b!6162734 c!1110008) b!6162736))

(assert (= (and b!6162734 (not c!1110008)) b!6162735))

(assert (= (or b!6162733 b!6162736) bm!513335))

(declare-fun m!7000634 () Bool)

(assert (=> b!6162733 m!7000634))

(declare-fun m!7000636 () Bool)

(assert (=> bm!513335 m!7000636))

(assert (=> b!6162737 m!7000074))

(assert (=> b!6162172 d!1931202))

(declare-fun b!6162760 () Bool)

(declare-fun e!3754658 () (InoxSet Context!10978))

(declare-fun call!513353 () (InoxSet Context!10978))

(assert (=> b!6162760 (= e!3754658 call!513353)))

(declare-fun c!1110021 () Bool)

(declare-fun call!513358 () List!64615)

(declare-fun bm!513348 () Bool)

(declare-fun c!1110024 () Bool)

(declare-fun c!1110023 () Bool)

(declare-fun call!513354 () (InoxSet Context!10978))

(assert (=> bm!513348 (= call!513354 (derivationStepZipperDown!1353 (ite c!1110021 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110023 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110024 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343))))))) (ite (or c!1110021 c!1110023) lt!2336120 (Context!10979 call!513358)) (h!70938 s!2326)))))

(declare-fun b!6162761 () Bool)

(declare-fun c!1110022 () Bool)

(assert (=> b!6162761 (= c!1110022 ((_ is Star!16105) (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun e!3754661 () (InoxSet Context!10978))

(assert (=> b!6162761 (= e!3754661 e!3754658)))

(declare-fun b!6162762 () Bool)

(declare-fun e!3754660 () (InoxSet Context!10978))

(declare-fun e!3754657 () (InoxSet Context!10978))

(assert (=> b!6162762 (= e!3754660 e!3754657)))

(assert (=> b!6162762 (= c!1110021 ((_ is Union!16105) (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun b!6162763 () Bool)

(declare-fun e!3754662 () (InoxSet Context!10978))

(assert (=> b!6162763 (= e!3754662 e!3754661)))

(assert (=> b!6162763 (= c!1110024 ((_ is Concat!24950) (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun b!6162764 () Bool)

(assert (=> b!6162764 (= e!3754658 ((as const (Array Context!10978 Bool)) false))))

(declare-fun bm!513349 () Bool)

(declare-fun call!513356 () List!64615)

(assert (=> bm!513349 (= call!513358 call!513356)))

(declare-fun bm!513350 () Bool)

(declare-fun $colon$colon!1982 (List!64615 Regex!16105) List!64615)

(assert (=> bm!513350 (= call!513356 ($colon$colon!1982 (exprs!5989 lt!2336120) (ite (or c!1110023 c!1110024) (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (h!70939 (exprs!5989 (h!70940 zl!343))))))))

(declare-fun call!513357 () (InoxSet Context!10978))

(declare-fun bm!513351 () Bool)

(assert (=> bm!513351 (= call!513357 (derivationStepZipperDown!1353 (ite c!1110021 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343))))) (ite c!1110021 lt!2336120 (Context!10979 call!513356)) (h!70938 s!2326)))))

(declare-fun b!6162765 () Bool)

(assert (=> b!6162765 (= e!3754660 (store ((as const (Array Context!10978 Bool)) false) lt!2336120 true))))

(declare-fun b!6162766 () Bool)

(declare-fun e!3754659 () Bool)

(assert (=> b!6162766 (= c!1110023 e!3754659)))

(declare-fun res!2551915 () Bool)

(assert (=> b!6162766 (=> (not res!2551915) (not e!3754659))))

(assert (=> b!6162766 (= res!2551915 ((_ is Concat!24950) (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(assert (=> b!6162766 (= e!3754657 e!3754662)))

(declare-fun d!1931204 () Bool)

(declare-fun c!1110020 () Bool)

(assert (=> d!1931204 (= c!1110020 (and ((_ is ElementMatch!16105) (h!70939 (exprs!5989 (h!70940 zl!343)))) (= (c!1109850 (h!70939 (exprs!5989 (h!70940 zl!343)))) (h!70938 s!2326))))))

(assert (=> d!1931204 (= (derivationStepZipperDown!1353 (h!70939 (exprs!5989 (h!70940 zl!343))) lt!2336120 (h!70938 s!2326)) e!3754660)))

(declare-fun b!6162767 () Bool)

(assert (=> b!6162767 (= e!3754657 ((_ map or) call!513354 call!513357))))

(declare-fun bm!513352 () Bool)

(declare-fun call!513355 () (InoxSet Context!10978))

(assert (=> bm!513352 (= call!513353 call!513355)))

(declare-fun b!6162768 () Bool)

(assert (=> b!6162768 (= e!3754661 call!513353)))

(declare-fun b!6162769 () Bool)

(assert (=> b!6162769 (= e!3754662 ((_ map or) call!513357 call!513355))))

(declare-fun bm!513353 () Bool)

(assert (=> bm!513353 (= call!513355 call!513354)))

(declare-fun b!6162770 () Bool)

(assert (=> b!6162770 (= e!3754659 (nullable!6098 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343))))))))

(assert (= (and d!1931204 c!1110020) b!6162765))

(assert (= (and d!1931204 (not c!1110020)) b!6162762))

(assert (= (and b!6162762 c!1110021) b!6162767))

(assert (= (and b!6162762 (not c!1110021)) b!6162766))

(assert (= (and b!6162766 res!2551915) b!6162770))

(assert (= (and b!6162766 c!1110023) b!6162769))

(assert (= (and b!6162766 (not c!1110023)) b!6162763))

(assert (= (and b!6162763 c!1110024) b!6162768))

(assert (= (and b!6162763 (not c!1110024)) b!6162761))

(assert (= (and b!6162761 c!1110022) b!6162760))

(assert (= (and b!6162761 (not c!1110022)) b!6162764))

(assert (= (or b!6162768 b!6162760) bm!513349))

(assert (= (or b!6162768 b!6162760) bm!513352))

(assert (= (or b!6162769 bm!513349) bm!513350))

(assert (= (or b!6162769 bm!513352) bm!513353))

(assert (= (or b!6162767 b!6162769) bm!513351))

(assert (= (or b!6162767 bm!513353) bm!513348))

(declare-fun m!7000638 () Bool)

(assert (=> bm!513348 m!7000638))

(declare-fun m!7000640 () Bool)

(assert (=> b!6162770 m!7000640))

(declare-fun m!7000642 () Bool)

(assert (=> bm!513350 m!7000642))

(declare-fun m!7000644 () Bool)

(assert (=> b!6162765 m!7000644))

(declare-fun m!7000646 () Bool)

(assert (=> bm!513351 m!7000646))

(assert (=> b!6162172 d!1931204))

(declare-fun d!1931206 () Bool)

(declare-fun c!1110025 () Bool)

(assert (=> d!1931206 (= c!1110025 (isEmpty!36465 (t!378112 s!2326)))))

(declare-fun e!3754663 () Bool)

(assert (=> d!1931206 (= (matchZipper!2117 lt!2336113 (t!378112 s!2326)) e!3754663)))

(declare-fun b!6162771 () Bool)

(assert (=> b!6162771 (= e!3754663 (nullableZipper!1886 lt!2336113))))

(declare-fun b!6162772 () Bool)

(assert (=> b!6162772 (= e!3754663 (matchZipper!2117 (derivationStepZipper!2078 lt!2336113 (head!12731 (t!378112 s!2326))) (tail!11816 (t!378112 s!2326))))))

(assert (= (and d!1931206 c!1110025) b!6162771))

(assert (= (and d!1931206 (not c!1110025)) b!6162772))

(assert (=> d!1931206 m!7000496))

(declare-fun m!7000648 () Bool)

(assert (=> b!6162771 m!7000648))

(assert (=> b!6162772 m!7000500))

(assert (=> b!6162772 m!7000500))

(declare-fun m!7000650 () Bool)

(assert (=> b!6162772 m!7000650))

(assert (=> b!6162772 m!7000504))

(assert (=> b!6162772 m!7000650))

(assert (=> b!6162772 m!7000504))

(declare-fun m!7000652 () Bool)

(assert (=> b!6162772 m!7000652))

(assert (=> b!6162173 d!1931206))

(declare-fun bs!1527439 () Bool)

(declare-fun b!6162807 () Bool)

(assert (= bs!1527439 (and b!6162807 b!6162196)))

(declare-fun lambda!336347 () Int)

(assert (=> bs!1527439 (not (= lambda!336347 lambda!336299))))

(assert (=> bs!1527439 (not (= lambda!336347 lambda!336300))))

(declare-fun bs!1527440 () Bool)

(assert (= bs!1527440 (and b!6162807 d!1931144)))

(assert (=> bs!1527440 (not (= lambda!336347 lambda!336339))))

(assert (=> bs!1527440 (not (= lambda!336347 lambda!336338))))

(declare-fun bs!1527441 () Bool)

(assert (= bs!1527441 (and b!6162807 d!1931142)))

(assert (=> bs!1527441 (not (= lambda!336347 lambda!336333))))

(assert (=> b!6162807 true))

(assert (=> b!6162807 true))

(declare-fun bs!1527442 () Bool)

(declare-fun b!6162806 () Bool)

(assert (= bs!1527442 (and b!6162806 b!6162196)))

(declare-fun lambda!336348 () Int)

(assert (=> bs!1527442 (not (= lambda!336348 lambda!336299))))

(assert (=> bs!1527442 (= lambda!336348 lambda!336300)))

(declare-fun bs!1527443 () Bool)

(assert (= bs!1527443 (and b!6162806 d!1931144)))

(assert (=> bs!1527443 (not (= lambda!336348 lambda!336338))))

(declare-fun bs!1527444 () Bool)

(assert (= bs!1527444 (and b!6162806 d!1931142)))

(assert (=> bs!1527444 (not (= lambda!336348 lambda!336333))))

(assert (=> bs!1527443 (= lambda!336348 lambda!336339)))

(declare-fun bs!1527445 () Bool)

(assert (= bs!1527445 (and b!6162806 b!6162807)))

(assert (=> bs!1527445 (not (= lambda!336348 lambda!336347))))

(assert (=> b!6162806 true))

(assert (=> b!6162806 true))

(declare-fun b!6162805 () Bool)

(declare-fun e!3754685 () Bool)

(declare-fun e!3754687 () Bool)

(assert (=> b!6162805 (= e!3754685 e!3754687)))

(declare-fun c!1110035 () Bool)

(assert (=> b!6162805 (= c!1110035 ((_ is Star!16105) r!7292))))

(declare-fun call!513364 () Bool)

(assert (=> b!6162806 (= e!3754687 call!513364)))

(declare-fun e!3754683 () Bool)

(assert (=> b!6162807 (= e!3754683 call!513364)))

(declare-fun d!1931208 () Bool)

(declare-fun c!1110037 () Bool)

(assert (=> d!1931208 (= c!1110037 ((_ is EmptyExpr!16105) r!7292))))

(declare-fun e!3754684 () Bool)

(assert (=> d!1931208 (= (matchRSpec!3206 r!7292 s!2326) e!3754684)))

(declare-fun b!6162808 () Bool)

(declare-fun e!3754686 () Bool)

(assert (=> b!6162808 (= e!3754684 e!3754686)))

(declare-fun res!2551932 () Bool)

(assert (=> b!6162808 (= res!2551932 (not ((_ is EmptyLang!16105) r!7292)))))

(assert (=> b!6162808 (=> (not res!2551932) (not e!3754686))))

(declare-fun b!6162809 () Bool)

(declare-fun c!1110036 () Bool)

(assert (=> b!6162809 (= c!1110036 ((_ is ElementMatch!16105) r!7292))))

(declare-fun e!3754682 () Bool)

(assert (=> b!6162809 (= e!3754686 e!3754682)))

(declare-fun b!6162810 () Bool)

(declare-fun c!1110034 () Bool)

(assert (=> b!6162810 (= c!1110034 ((_ is Union!16105) r!7292))))

(assert (=> b!6162810 (= e!3754682 e!3754685)))

(declare-fun b!6162811 () Bool)

(declare-fun call!513363 () Bool)

(assert (=> b!6162811 (= e!3754684 call!513363)))

(declare-fun bm!513358 () Bool)

(assert (=> bm!513358 (= call!513364 (Exists!3175 (ite c!1110035 lambda!336347 lambda!336348)))))

(declare-fun bm!513359 () Bool)

(assert (=> bm!513359 (= call!513363 (isEmpty!36465 s!2326))))

(declare-fun b!6162812 () Bool)

(declare-fun res!2551934 () Bool)

(assert (=> b!6162812 (=> res!2551934 e!3754683)))

(assert (=> b!6162812 (= res!2551934 call!513363)))

(assert (=> b!6162812 (= e!3754687 e!3754683)))

(declare-fun b!6162813 () Bool)

(assert (=> b!6162813 (= e!3754682 (= s!2326 (Cons!64490 (c!1109850 r!7292) Nil!64490)))))

(declare-fun b!6162814 () Bool)

(declare-fun e!3754688 () Bool)

(assert (=> b!6162814 (= e!3754688 (matchRSpec!3206 (regTwo!32723 r!7292) s!2326))))

(declare-fun b!6162815 () Bool)

(assert (=> b!6162815 (= e!3754685 e!3754688)))

(declare-fun res!2551933 () Bool)

(assert (=> b!6162815 (= res!2551933 (matchRSpec!3206 (regOne!32723 r!7292) s!2326))))

(assert (=> b!6162815 (=> res!2551933 e!3754688)))

(assert (= (and d!1931208 c!1110037) b!6162811))

(assert (= (and d!1931208 (not c!1110037)) b!6162808))

(assert (= (and b!6162808 res!2551932) b!6162809))

(assert (= (and b!6162809 c!1110036) b!6162813))

(assert (= (and b!6162809 (not c!1110036)) b!6162810))

(assert (= (and b!6162810 c!1110034) b!6162815))

(assert (= (and b!6162810 (not c!1110034)) b!6162805))

(assert (= (and b!6162815 (not res!2551933)) b!6162814))

(assert (= (and b!6162805 c!1110035) b!6162812))

(assert (= (and b!6162805 (not c!1110035)) b!6162806))

(assert (= (and b!6162812 (not res!2551934)) b!6162807))

(assert (= (or b!6162807 b!6162806) bm!513358))

(assert (= (or b!6162811 b!6162812) bm!513359))

(declare-fun m!7000654 () Bool)

(assert (=> bm!513358 m!7000654))

(assert (=> bm!513359 m!7000546))

(declare-fun m!7000656 () Bool)

(assert (=> b!6162814 m!7000656))

(declare-fun m!7000658 () Bool)

(assert (=> b!6162815 m!7000658))

(assert (=> b!6162194 d!1931208))

(declare-fun b!6162844 () Bool)

(declare-fun res!2551954 () Bool)

(declare-fun e!3754705 () Bool)

(assert (=> b!6162844 (=> (not res!2551954) (not e!3754705))))

(declare-fun call!513367 () Bool)

(assert (=> b!6162844 (= res!2551954 (not call!513367))))

(declare-fun b!6162845 () Bool)

(declare-fun e!3754703 () Bool)

(declare-fun e!3754706 () Bool)

(assert (=> b!6162845 (= e!3754703 e!3754706)))

(declare-fun c!1110045 () Bool)

(assert (=> b!6162845 (= c!1110045 ((_ is EmptyLang!16105) r!7292))))

(declare-fun b!6162846 () Bool)

(declare-fun e!3754707 () Bool)

(assert (=> b!6162846 (= e!3754707 (not (= (head!12731 s!2326) (c!1109850 r!7292))))))

(declare-fun b!6162847 () Bool)

(declare-fun res!2551953 () Bool)

(assert (=> b!6162847 (=> res!2551953 e!3754707)))

(assert (=> b!6162847 (= res!2551953 (not (isEmpty!36465 (tail!11816 s!2326))))))

(declare-fun b!6162848 () Bool)

(declare-fun e!3754708 () Bool)

(assert (=> b!6162848 (= e!3754708 e!3754707)))

(declare-fun res!2551956 () Bool)

(assert (=> b!6162848 (=> res!2551956 e!3754707)))

(assert (=> b!6162848 (= res!2551956 call!513367)))

(declare-fun b!6162849 () Bool)

(declare-fun lt!2336206 () Bool)

(assert (=> b!6162849 (= e!3754706 (not lt!2336206))))

(declare-fun b!6162850 () Bool)

(declare-fun e!3754709 () Bool)

(assert (=> b!6162850 (= e!3754709 e!3754708)))

(declare-fun res!2551952 () Bool)

(assert (=> b!6162850 (=> (not res!2551952) (not e!3754708))))

(assert (=> b!6162850 (= res!2551952 (not lt!2336206))))

(declare-fun b!6162851 () Bool)

(declare-fun res!2551951 () Bool)

(assert (=> b!6162851 (=> (not res!2551951) (not e!3754705))))

(assert (=> b!6162851 (= res!2551951 (isEmpty!36465 (tail!11816 s!2326)))))

(declare-fun b!6162852 () Bool)

(assert (=> b!6162852 (= e!3754705 (= (head!12731 s!2326) (c!1109850 r!7292)))))

(declare-fun b!6162853 () Bool)

(declare-fun res!2551958 () Bool)

(assert (=> b!6162853 (=> res!2551958 e!3754709)))

(assert (=> b!6162853 (= res!2551958 e!3754705)))

(declare-fun res!2551957 () Bool)

(assert (=> b!6162853 (=> (not res!2551957) (not e!3754705))))

(assert (=> b!6162853 (= res!2551957 lt!2336206)))

(declare-fun b!6162854 () Bool)

(declare-fun e!3754704 () Bool)

(declare-fun derivativeStep!4825 (Regex!16105 C!32480) Regex!16105)

(assert (=> b!6162854 (= e!3754704 (matchR!8288 (derivativeStep!4825 r!7292 (head!12731 s!2326)) (tail!11816 s!2326)))))

(declare-fun b!6162855 () Bool)

(assert (=> b!6162855 (= e!3754703 (= lt!2336206 call!513367))))

(declare-fun d!1931210 () Bool)

(assert (=> d!1931210 e!3754703))

(declare-fun c!1110044 () Bool)

(assert (=> d!1931210 (= c!1110044 ((_ is EmptyExpr!16105) r!7292))))

(assert (=> d!1931210 (= lt!2336206 e!3754704)))

(declare-fun c!1110046 () Bool)

(assert (=> d!1931210 (= c!1110046 (isEmpty!36465 s!2326))))

(assert (=> d!1931210 (validRegex!7841 r!7292)))

(assert (=> d!1931210 (= (matchR!8288 r!7292 s!2326) lt!2336206)))

(declare-fun bm!513362 () Bool)

(assert (=> bm!513362 (= call!513367 (isEmpty!36465 s!2326))))

(declare-fun b!6162856 () Bool)

(assert (=> b!6162856 (= e!3754704 (nullable!6098 r!7292))))

(declare-fun b!6162857 () Bool)

(declare-fun res!2551955 () Bool)

(assert (=> b!6162857 (=> res!2551955 e!3754709)))

(assert (=> b!6162857 (= res!2551955 (not ((_ is ElementMatch!16105) r!7292)))))

(assert (=> b!6162857 (= e!3754706 e!3754709)))

(assert (= (and d!1931210 c!1110046) b!6162856))

(assert (= (and d!1931210 (not c!1110046)) b!6162854))

(assert (= (and d!1931210 c!1110044) b!6162855))

(assert (= (and d!1931210 (not c!1110044)) b!6162845))

(assert (= (and b!6162845 c!1110045) b!6162849))

(assert (= (and b!6162845 (not c!1110045)) b!6162857))

(assert (= (and b!6162857 (not res!2551955)) b!6162853))

(assert (= (and b!6162853 res!2551957) b!6162844))

(assert (= (and b!6162844 res!2551954) b!6162851))

(assert (= (and b!6162851 res!2551951) b!6162852))

(assert (= (and b!6162853 (not res!2551958)) b!6162850))

(assert (= (and b!6162850 res!2551952) b!6162848))

(assert (= (and b!6162848 (not res!2551956)) b!6162847))

(assert (= (and b!6162847 (not res!2551953)) b!6162846))

(assert (= (or b!6162855 b!6162844 b!6162848) bm!513362))

(assert (=> bm!513362 m!7000546))

(assert (=> b!6162846 m!7000550))

(assert (=> b!6162854 m!7000550))

(assert (=> b!6162854 m!7000550))

(declare-fun m!7000660 () Bool)

(assert (=> b!6162854 m!7000660))

(assert (=> b!6162854 m!7000554))

(assert (=> b!6162854 m!7000660))

(assert (=> b!6162854 m!7000554))

(declare-fun m!7000662 () Bool)

(assert (=> b!6162854 m!7000662))

(assert (=> d!1931210 m!7000546))

(assert (=> d!1931210 m!7000108))

(assert (=> b!6162852 m!7000550))

(assert (=> b!6162851 m!7000554))

(assert (=> b!6162851 m!7000554))

(declare-fun m!7000664 () Bool)

(assert (=> b!6162851 m!7000664))

(assert (=> b!6162847 m!7000554))

(assert (=> b!6162847 m!7000554))

(assert (=> b!6162847 m!7000664))

(declare-fun m!7000666 () Bool)

(assert (=> b!6162856 m!7000666))

(assert (=> b!6162194 d!1931210))

(declare-fun d!1931212 () Bool)

(assert (=> d!1931212 (= (matchR!8288 r!7292 s!2326) (matchRSpec!3206 r!7292 s!2326))))

(declare-fun lt!2336209 () Unit!157619)

(declare-fun choose!45825 (Regex!16105 List!64614) Unit!157619)

(assert (=> d!1931212 (= lt!2336209 (choose!45825 r!7292 s!2326))))

(assert (=> d!1931212 (validRegex!7841 r!7292)))

(assert (=> d!1931212 (= (mainMatchTheorem!3206 r!7292 s!2326) lt!2336209)))

(declare-fun bs!1527446 () Bool)

(assert (= bs!1527446 d!1931212))

(assert (=> bs!1527446 m!7000060))

(assert (=> bs!1527446 m!7000058))

(declare-fun m!7000668 () Bool)

(assert (=> bs!1527446 m!7000668))

(assert (=> bs!1527446 m!7000108))

(assert (=> b!6162194 d!1931212))

(declare-fun d!1931214 () Bool)

(declare-fun e!3754712 () Bool)

(assert (=> d!1931214 e!3754712))

(declare-fun res!2551961 () Bool)

(assert (=> d!1931214 (=> (not res!2551961) (not e!3754712))))

(declare-fun lt!2336212 () List!64616)

(declare-fun noDuplicate!1952 (List!64616) Bool)

(assert (=> d!1931214 (= res!2551961 (noDuplicate!1952 lt!2336212))))

(declare-fun choose!45826 ((InoxSet Context!10978)) List!64616)

(assert (=> d!1931214 (= lt!2336212 (choose!45826 z!1189))))

(assert (=> d!1931214 (= (toList!9889 z!1189) lt!2336212)))

(declare-fun b!6162860 () Bool)

(declare-fun content!12031 (List!64616) (InoxSet Context!10978))

(assert (=> b!6162860 (= e!3754712 (= (content!12031 lt!2336212) z!1189))))

(assert (= (and d!1931214 res!2551961) b!6162860))

(declare-fun m!7000670 () Bool)

(assert (=> d!1931214 m!7000670))

(declare-fun m!7000672 () Bool)

(assert (=> d!1931214 m!7000672))

(declare-fun m!7000674 () Bool)

(assert (=> b!6162860 m!7000674))

(assert (=> b!6162174 d!1931214))

(declare-fun bs!1527447 () Bool)

(declare-fun d!1931216 () Bool)

(assert (= bs!1527447 (and d!1931216 d!1931186)))

(declare-fun lambda!336351 () Int)

(assert (=> bs!1527447 (= lambda!336351 lambda!336342)))

(assert (=> d!1931216 (= (inv!83509 setElem!41766) (forall!15226 (exprs!5989 setElem!41766) lambda!336351))))

(declare-fun bs!1527448 () Bool)

(assert (= bs!1527448 d!1931216))

(declare-fun m!7000676 () Bool)

(assert (=> bs!1527448 m!7000676))

(assert (=> setNonEmpty!41766 d!1931216))

(declare-fun e!3754713 () Bool)

(declare-fun d!1931218 () Bool)

(assert (=> d!1931218 (= (matchZipper!2117 ((_ map or) lt!2336113 lt!2336092) (t!378112 s!2326)) e!3754713)))

(declare-fun res!2551962 () Bool)

(assert (=> d!1931218 (=> res!2551962 e!3754713)))

(assert (=> d!1931218 (= res!2551962 (matchZipper!2117 lt!2336113 (t!378112 s!2326)))))

(declare-fun lt!2336213 () Unit!157619)

(assert (=> d!1931218 (= lt!2336213 (choose!45822 lt!2336113 lt!2336092 (t!378112 s!2326)))))

(assert (=> d!1931218 (= (lemmaZipperConcatMatchesSameAsBothZippers!936 lt!2336113 lt!2336092 (t!378112 s!2326)) lt!2336213)))

(declare-fun b!6162861 () Bool)

(assert (=> b!6162861 (= e!3754713 (matchZipper!2117 lt!2336092 (t!378112 s!2326)))))

(assert (= (and d!1931218 (not res!2551962)) b!6162861))

(assert (=> d!1931218 m!7000152))

(assert (=> d!1931218 m!7000110))

(declare-fun m!7000678 () Bool)

(assert (=> d!1931218 m!7000678))

(assert (=> b!6162861 m!7000044))

(assert (=> b!6162195 d!1931218))

(assert (=> b!6162195 d!1931206))

(declare-fun d!1931220 () Bool)

(declare-fun c!1110047 () Bool)

(assert (=> d!1931220 (= c!1110047 (isEmpty!36465 (t!378112 s!2326)))))

(declare-fun e!3754714 () Bool)

(assert (=> d!1931220 (= (matchZipper!2117 ((_ map or) lt!2336113 lt!2336092) (t!378112 s!2326)) e!3754714)))

(declare-fun b!6162862 () Bool)

(assert (=> b!6162862 (= e!3754714 (nullableZipper!1886 ((_ map or) lt!2336113 lt!2336092)))))

(declare-fun b!6162863 () Bool)

(assert (=> b!6162863 (= e!3754714 (matchZipper!2117 (derivationStepZipper!2078 ((_ map or) lt!2336113 lt!2336092) (head!12731 (t!378112 s!2326))) (tail!11816 (t!378112 s!2326))))))

(assert (= (and d!1931220 c!1110047) b!6162862))

(assert (= (and d!1931220 (not c!1110047)) b!6162863))

(assert (=> d!1931220 m!7000496))

(declare-fun m!7000680 () Bool)

(assert (=> b!6162862 m!7000680))

(assert (=> b!6162863 m!7000500))

(assert (=> b!6162863 m!7000500))

(declare-fun m!7000682 () Bool)

(assert (=> b!6162863 m!7000682))

(assert (=> b!6162863 m!7000504))

(assert (=> b!6162863 m!7000682))

(assert (=> b!6162863 m!7000504))

(declare-fun m!7000684 () Bool)

(assert (=> b!6162863 m!7000684))

(assert (=> b!6162195 d!1931220))

(declare-fun d!1931222 () Bool)

(declare-fun lt!2336216 () Int)

(assert (=> d!1931222 (>= lt!2336216 0)))

(declare-fun e!3754717 () Int)

(assert (=> d!1931222 (= lt!2336216 e!3754717)))

(declare-fun c!1110050 () Bool)

(assert (=> d!1931222 (= c!1110050 ((_ is Cons!64492) zl!343))))

(assert (=> d!1931222 (= (zipperDepthTotal!288 zl!343) lt!2336216)))

(declare-fun b!6162868 () Bool)

(declare-fun contextDepthTotal!265 (Context!10978) Int)

(assert (=> b!6162868 (= e!3754717 (+ (contextDepthTotal!265 (h!70940 zl!343)) (zipperDepthTotal!288 (t!378114 zl!343))))))

(declare-fun b!6162869 () Bool)

(assert (=> b!6162869 (= e!3754717 0)))

(assert (= (and d!1931222 c!1110050) b!6162868))

(assert (= (and d!1931222 (not c!1110050)) b!6162869))

(declare-fun m!7000686 () Bool)

(assert (=> b!6162868 m!7000686))

(declare-fun m!7000688 () Bool)

(assert (=> b!6162868 m!7000688))

(assert (=> b!6162185 d!1931222))

(declare-fun d!1931224 () Bool)

(declare-fun lt!2336217 () Int)

(assert (=> d!1931224 (>= lt!2336217 0)))

(declare-fun e!3754718 () Int)

(assert (=> d!1931224 (= lt!2336217 e!3754718)))

(declare-fun c!1110051 () Bool)

(assert (=> d!1931224 (= c!1110051 ((_ is Cons!64492) (Cons!64492 lt!2336096 Nil!64492)))))

(assert (=> d!1931224 (= (zipperDepthTotal!288 (Cons!64492 lt!2336096 Nil!64492)) lt!2336217)))

(declare-fun b!6162870 () Bool)

(assert (=> b!6162870 (= e!3754718 (+ (contextDepthTotal!265 (h!70940 (Cons!64492 lt!2336096 Nil!64492))) (zipperDepthTotal!288 (t!378114 (Cons!64492 lt!2336096 Nil!64492)))))))

(declare-fun b!6162871 () Bool)

(assert (=> b!6162871 (= e!3754718 0)))

(assert (= (and d!1931224 c!1110051) b!6162870))

(assert (= (and d!1931224 (not c!1110051)) b!6162871))

(declare-fun m!7000690 () Bool)

(assert (=> b!6162870 m!7000690))

(declare-fun m!7000692 () Bool)

(assert (=> b!6162870 m!7000692))

(assert (=> b!6162185 d!1931224))

(assert (=> b!6162186 d!1931206))

(declare-fun b!6162872 () Bool)

(declare-fun e!3754720 () (InoxSet Context!10978))

(declare-fun call!513368 () (InoxSet Context!10978))

(assert (=> b!6162872 (= e!3754720 call!513368)))

(declare-fun c!1110056 () Bool)

(declare-fun bm!513363 () Bool)

(declare-fun c!1110055 () Bool)

(declare-fun call!513373 () List!64615)

(declare-fun c!1110053 () Bool)

(declare-fun call!513369 () (InoxSet Context!10978))

(assert (=> bm!513363 (= call!513369 (derivationStepZipperDown!1353 (ite c!1110053 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110055 (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110056 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))) (reg!16434 (regTwo!32723 (regOne!32722 r!7292)))))) (ite (or c!1110053 c!1110055) lt!2336120 (Context!10979 call!513373)) (h!70938 s!2326)))))

(declare-fun b!6162873 () Bool)

(declare-fun c!1110054 () Bool)

(assert (=> b!6162873 (= c!1110054 ((_ is Star!16105) (regTwo!32723 (regOne!32722 r!7292))))))

(declare-fun e!3754723 () (InoxSet Context!10978))

(assert (=> b!6162873 (= e!3754723 e!3754720)))

(declare-fun b!6162874 () Bool)

(declare-fun e!3754722 () (InoxSet Context!10978))

(declare-fun e!3754719 () (InoxSet Context!10978))

(assert (=> b!6162874 (= e!3754722 e!3754719)))

(assert (=> b!6162874 (= c!1110053 ((_ is Union!16105) (regTwo!32723 (regOne!32722 r!7292))))))

(declare-fun b!6162875 () Bool)

(declare-fun e!3754724 () (InoxSet Context!10978))

(assert (=> b!6162875 (= e!3754724 e!3754723)))

(assert (=> b!6162875 (= c!1110056 ((_ is Concat!24950) (regTwo!32723 (regOne!32722 r!7292))))))

(declare-fun b!6162876 () Bool)

(assert (=> b!6162876 (= e!3754720 ((as const (Array Context!10978 Bool)) false))))

(declare-fun bm!513364 () Bool)

(declare-fun call!513371 () List!64615)

(assert (=> bm!513364 (= call!513373 call!513371)))

(declare-fun bm!513365 () Bool)

(assert (=> bm!513365 (= call!513371 ($colon$colon!1982 (exprs!5989 lt!2336120) (ite (or c!1110055 c!1110056) (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (regTwo!32723 (regOne!32722 r!7292)))))))

(declare-fun call!513372 () (InoxSet Context!10978))

(declare-fun bm!513366 () Bool)

(assert (=> bm!513366 (= call!513372 (derivationStepZipperDown!1353 (ite c!1110053 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292)))) (ite c!1110053 lt!2336120 (Context!10979 call!513371)) (h!70938 s!2326)))))

(declare-fun b!6162877 () Bool)

(assert (=> b!6162877 (= e!3754722 (store ((as const (Array Context!10978 Bool)) false) lt!2336120 true))))

(declare-fun b!6162878 () Bool)

(declare-fun e!3754721 () Bool)

(assert (=> b!6162878 (= c!1110055 e!3754721)))

(declare-fun res!2551963 () Bool)

(assert (=> b!6162878 (=> (not res!2551963) (not e!3754721))))

(assert (=> b!6162878 (= res!2551963 ((_ is Concat!24950) (regTwo!32723 (regOne!32722 r!7292))))))

(assert (=> b!6162878 (= e!3754719 e!3754724)))

(declare-fun d!1931226 () Bool)

(declare-fun c!1110052 () Bool)

(assert (=> d!1931226 (= c!1110052 (and ((_ is ElementMatch!16105) (regTwo!32723 (regOne!32722 r!7292))) (= (c!1109850 (regTwo!32723 (regOne!32722 r!7292))) (h!70938 s!2326))))))

(assert (=> d!1931226 (= (derivationStepZipperDown!1353 (regTwo!32723 (regOne!32722 r!7292)) lt!2336120 (h!70938 s!2326)) e!3754722)))

(declare-fun b!6162879 () Bool)

(assert (=> b!6162879 (= e!3754719 ((_ map or) call!513369 call!513372))))

(declare-fun bm!513367 () Bool)

(declare-fun call!513370 () (InoxSet Context!10978))

(assert (=> bm!513367 (= call!513368 call!513370)))

(declare-fun b!6162880 () Bool)

(assert (=> b!6162880 (= e!3754723 call!513368)))

(declare-fun b!6162881 () Bool)

(assert (=> b!6162881 (= e!3754724 ((_ map or) call!513372 call!513370))))

(declare-fun bm!513368 () Bool)

(assert (=> bm!513368 (= call!513370 call!513369)))

(declare-fun b!6162882 () Bool)

(assert (=> b!6162882 (= e!3754721 (nullable!6098 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292)))))))

(assert (= (and d!1931226 c!1110052) b!6162877))

(assert (= (and d!1931226 (not c!1110052)) b!6162874))

(assert (= (and b!6162874 c!1110053) b!6162879))

(assert (= (and b!6162874 (not c!1110053)) b!6162878))

(assert (= (and b!6162878 res!2551963) b!6162882))

(assert (= (and b!6162878 c!1110055) b!6162881))

(assert (= (and b!6162878 (not c!1110055)) b!6162875))

(assert (= (and b!6162875 c!1110056) b!6162880))

(assert (= (and b!6162875 (not c!1110056)) b!6162873))

(assert (= (and b!6162873 c!1110054) b!6162872))

(assert (= (and b!6162873 (not c!1110054)) b!6162876))

(assert (= (or b!6162880 b!6162872) bm!513364))

(assert (= (or b!6162880 b!6162872) bm!513367))

(assert (= (or b!6162881 bm!513364) bm!513365))

(assert (= (or b!6162881 bm!513367) bm!513368))

(assert (= (or b!6162879 b!6162881) bm!513366))

(assert (= (or b!6162879 bm!513368) bm!513363))

(declare-fun m!7000694 () Bool)

(assert (=> bm!513363 m!7000694))

(declare-fun m!7000696 () Bool)

(assert (=> b!6162882 m!7000696))

(declare-fun m!7000698 () Bool)

(assert (=> bm!513365 m!7000698))

(assert (=> b!6162877 m!7000644))

(declare-fun m!7000700 () Bool)

(assert (=> bm!513366 m!7000700))

(assert (=> b!6162166 d!1931226))

(declare-fun b!6162883 () Bool)

(declare-fun e!3754726 () (InoxSet Context!10978))

(declare-fun call!513374 () (InoxSet Context!10978))

(assert (=> b!6162883 (= e!3754726 call!513374)))

(declare-fun c!1110060 () Bool)

(declare-fun c!1110061 () Bool)

(declare-fun call!513379 () List!64615)

(declare-fun bm!513369 () Bool)

(declare-fun c!1110058 () Bool)

(declare-fun call!513375 () (InoxSet Context!10978))

(assert (=> bm!513369 (= call!513375 (derivationStepZipperDown!1353 (ite c!1110058 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110060 (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110061 (regOne!32722 (regOne!32723 (regOne!32722 r!7292))) (reg!16434 (regOne!32723 (regOne!32722 r!7292)))))) (ite (or c!1110058 c!1110060) lt!2336120 (Context!10979 call!513379)) (h!70938 s!2326)))))

(declare-fun b!6162884 () Bool)

(declare-fun c!1110059 () Bool)

(assert (=> b!6162884 (= c!1110059 ((_ is Star!16105) (regOne!32723 (regOne!32722 r!7292))))))

(declare-fun e!3754729 () (InoxSet Context!10978))

(assert (=> b!6162884 (= e!3754729 e!3754726)))

(declare-fun b!6162885 () Bool)

(declare-fun e!3754728 () (InoxSet Context!10978))

(declare-fun e!3754725 () (InoxSet Context!10978))

(assert (=> b!6162885 (= e!3754728 e!3754725)))

(assert (=> b!6162885 (= c!1110058 ((_ is Union!16105) (regOne!32723 (regOne!32722 r!7292))))))

(declare-fun b!6162886 () Bool)

(declare-fun e!3754730 () (InoxSet Context!10978))

(assert (=> b!6162886 (= e!3754730 e!3754729)))

(assert (=> b!6162886 (= c!1110061 ((_ is Concat!24950) (regOne!32723 (regOne!32722 r!7292))))))

(declare-fun b!6162887 () Bool)

(assert (=> b!6162887 (= e!3754726 ((as const (Array Context!10978 Bool)) false))))

(declare-fun bm!513370 () Bool)

(declare-fun call!513377 () List!64615)

(assert (=> bm!513370 (= call!513379 call!513377)))

(declare-fun bm!513371 () Bool)

(assert (=> bm!513371 (= call!513377 ($colon$colon!1982 (exprs!5989 lt!2336120) (ite (or c!1110060 c!1110061) (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (regOne!32723 (regOne!32722 r!7292)))))))

(declare-fun bm!513372 () Bool)

(declare-fun call!513378 () (InoxSet Context!10978))

(assert (=> bm!513372 (= call!513378 (derivationStepZipperDown!1353 (ite c!1110058 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292)))) (ite c!1110058 lt!2336120 (Context!10979 call!513377)) (h!70938 s!2326)))))

(declare-fun b!6162888 () Bool)

(assert (=> b!6162888 (= e!3754728 (store ((as const (Array Context!10978 Bool)) false) lt!2336120 true))))

(declare-fun b!6162889 () Bool)

(declare-fun e!3754727 () Bool)

(assert (=> b!6162889 (= c!1110060 e!3754727)))

(declare-fun res!2551964 () Bool)

(assert (=> b!6162889 (=> (not res!2551964) (not e!3754727))))

(assert (=> b!6162889 (= res!2551964 ((_ is Concat!24950) (regOne!32723 (regOne!32722 r!7292))))))

(assert (=> b!6162889 (= e!3754725 e!3754730)))

(declare-fun d!1931228 () Bool)

(declare-fun c!1110057 () Bool)

(assert (=> d!1931228 (= c!1110057 (and ((_ is ElementMatch!16105) (regOne!32723 (regOne!32722 r!7292))) (= (c!1109850 (regOne!32723 (regOne!32722 r!7292))) (h!70938 s!2326))))))

(assert (=> d!1931228 (= (derivationStepZipperDown!1353 (regOne!32723 (regOne!32722 r!7292)) lt!2336120 (h!70938 s!2326)) e!3754728)))

(declare-fun b!6162890 () Bool)

(assert (=> b!6162890 (= e!3754725 ((_ map or) call!513375 call!513378))))

(declare-fun bm!513373 () Bool)

(declare-fun call!513376 () (InoxSet Context!10978))

(assert (=> bm!513373 (= call!513374 call!513376)))

(declare-fun b!6162891 () Bool)

(assert (=> b!6162891 (= e!3754729 call!513374)))

(declare-fun b!6162892 () Bool)

(assert (=> b!6162892 (= e!3754730 ((_ map or) call!513378 call!513376))))

(declare-fun bm!513374 () Bool)

(assert (=> bm!513374 (= call!513376 call!513375)))

(declare-fun b!6162893 () Bool)

(assert (=> b!6162893 (= e!3754727 (nullable!6098 (regOne!32722 (regOne!32723 (regOne!32722 r!7292)))))))

(assert (= (and d!1931228 c!1110057) b!6162888))

(assert (= (and d!1931228 (not c!1110057)) b!6162885))

(assert (= (and b!6162885 c!1110058) b!6162890))

(assert (= (and b!6162885 (not c!1110058)) b!6162889))

(assert (= (and b!6162889 res!2551964) b!6162893))

(assert (= (and b!6162889 c!1110060) b!6162892))

(assert (= (and b!6162889 (not c!1110060)) b!6162886))

(assert (= (and b!6162886 c!1110061) b!6162891))

(assert (= (and b!6162886 (not c!1110061)) b!6162884))

(assert (= (and b!6162884 c!1110059) b!6162883))

(assert (= (and b!6162884 (not c!1110059)) b!6162887))

(assert (= (or b!6162891 b!6162883) bm!513370))

(assert (= (or b!6162891 b!6162883) bm!513373))

(assert (= (or b!6162892 bm!513370) bm!513371))

(assert (= (or b!6162892 bm!513373) bm!513374))

(assert (= (or b!6162890 b!6162892) bm!513372))

(assert (= (or b!6162890 bm!513374) bm!513369))

(declare-fun m!7000702 () Bool)

(assert (=> bm!513369 m!7000702))

(declare-fun m!7000704 () Bool)

(assert (=> b!6162893 m!7000704))

(declare-fun m!7000706 () Bool)

(assert (=> bm!513371 m!7000706))

(assert (=> b!6162888 m!7000644))

(declare-fun m!7000708 () Bool)

(assert (=> bm!513372 m!7000708))

(assert (=> b!6162166 d!1931228))

(declare-fun bs!1527449 () Bool)

(declare-fun d!1931230 () Bool)

(assert (= bs!1527449 (and d!1931230 d!1931186)))

(declare-fun lambda!336352 () Int)

(assert (=> bs!1527449 (= lambda!336352 lambda!336342)))

(declare-fun bs!1527450 () Bool)

(assert (= bs!1527450 (and d!1931230 d!1931216)))

(assert (=> bs!1527450 (= lambda!336352 lambda!336351)))

(assert (=> d!1931230 (= (inv!83509 lt!2336096) (forall!15226 (exprs!5989 lt!2336096) lambda!336352))))

(declare-fun bs!1527451 () Bool)

(assert (= bs!1527451 d!1931230))

(declare-fun m!7000710 () Bool)

(assert (=> bs!1527451 m!7000710))

(assert (=> b!6162167 d!1931230))

(declare-fun bs!1527452 () Bool)

(declare-fun d!1931232 () Bool)

(assert (= bs!1527452 (and d!1931232 d!1931186)))

(declare-fun lambda!336355 () Int)

(assert (=> bs!1527452 (= lambda!336355 lambda!336342)))

(declare-fun bs!1527453 () Bool)

(assert (= bs!1527453 (and d!1931232 d!1931216)))

(assert (=> bs!1527453 (= lambda!336355 lambda!336351)))

(declare-fun bs!1527454 () Bool)

(assert (= bs!1527454 (and d!1931232 d!1931230)))

(assert (=> bs!1527454 (= lambda!336355 lambda!336352)))

(declare-fun b!6162914 () Bool)

(declare-fun e!3754743 () Regex!16105)

(declare-fun e!3754745 () Regex!16105)

(assert (=> b!6162914 (= e!3754743 e!3754745)))

(declare-fun c!1110073 () Bool)

(assert (=> b!6162914 (= c!1110073 ((_ is Cons!64491) (unfocusZipperList!1526 zl!343)))))

(declare-fun b!6162915 () Bool)

(assert (=> b!6162915 (= e!3754743 (h!70939 (unfocusZipperList!1526 zl!343)))))

(declare-fun b!6162916 () Bool)

(declare-fun e!3754746 () Bool)

(declare-fun e!3754747 () Bool)

(assert (=> b!6162916 (= e!3754746 e!3754747)))

(declare-fun c!1110071 () Bool)

(assert (=> b!6162916 (= c!1110071 (isEmpty!36461 (unfocusZipperList!1526 zl!343)))))

(assert (=> d!1931232 e!3754746))

(declare-fun res!2551969 () Bool)

(assert (=> d!1931232 (=> (not res!2551969) (not e!3754746))))

(declare-fun lt!2336220 () Regex!16105)

(assert (=> d!1931232 (= res!2551969 (validRegex!7841 lt!2336220))))

(assert (=> d!1931232 (= lt!2336220 e!3754743)))

(declare-fun c!1110072 () Bool)

(declare-fun e!3754744 () Bool)

(assert (=> d!1931232 (= c!1110072 e!3754744)))

(declare-fun res!2551970 () Bool)

(assert (=> d!1931232 (=> (not res!2551970) (not e!3754744))))

(assert (=> d!1931232 (= res!2551970 ((_ is Cons!64491) (unfocusZipperList!1526 zl!343)))))

(assert (=> d!1931232 (forall!15226 (unfocusZipperList!1526 zl!343) lambda!336355)))

(assert (=> d!1931232 (= (generalisedUnion!1949 (unfocusZipperList!1526 zl!343)) lt!2336220)))

(declare-fun b!6162917 () Bool)

(declare-fun e!3754748 () Bool)

(assert (=> b!6162917 (= e!3754748 (= lt!2336220 (head!12732 (unfocusZipperList!1526 zl!343))))))

(declare-fun b!6162918 () Bool)

(assert (=> b!6162918 (= e!3754745 (Union!16105 (h!70939 (unfocusZipperList!1526 zl!343)) (generalisedUnion!1949 (t!378113 (unfocusZipperList!1526 zl!343)))))))

(declare-fun b!6162919 () Bool)

(assert (=> b!6162919 (= e!3754744 (isEmpty!36461 (t!378113 (unfocusZipperList!1526 zl!343))))))

(declare-fun b!6162920 () Bool)

(assert (=> b!6162920 (= e!3754745 EmptyLang!16105)))

(declare-fun b!6162921 () Bool)

(declare-fun isUnion!962 (Regex!16105) Bool)

(assert (=> b!6162921 (= e!3754748 (isUnion!962 lt!2336220))))

(declare-fun b!6162922 () Bool)

(declare-fun isEmptyLang!1532 (Regex!16105) Bool)

(assert (=> b!6162922 (= e!3754747 (isEmptyLang!1532 lt!2336220))))

(declare-fun b!6162923 () Bool)

(assert (=> b!6162923 (= e!3754747 e!3754748)))

(declare-fun c!1110070 () Bool)

(assert (=> b!6162923 (= c!1110070 (isEmpty!36461 (tail!11817 (unfocusZipperList!1526 zl!343))))))

(assert (= (and d!1931232 res!2551970) b!6162919))

(assert (= (and d!1931232 c!1110072) b!6162915))

(assert (= (and d!1931232 (not c!1110072)) b!6162914))

(assert (= (and b!6162914 c!1110073) b!6162918))

(assert (= (and b!6162914 (not c!1110073)) b!6162920))

(assert (= (and d!1931232 res!2551969) b!6162916))

(assert (= (and b!6162916 c!1110071) b!6162922))

(assert (= (and b!6162916 (not c!1110071)) b!6162923))

(assert (= (and b!6162923 c!1110070) b!6162917))

(assert (= (and b!6162923 (not c!1110070)) b!6162921))

(assert (=> b!6162916 m!7000040))

(declare-fun m!7000712 () Bool)

(assert (=> b!6162916 m!7000712))

(declare-fun m!7000714 () Bool)

(assert (=> b!6162919 m!7000714))

(declare-fun m!7000716 () Bool)

(assert (=> d!1931232 m!7000716))

(assert (=> d!1931232 m!7000040))

(declare-fun m!7000718 () Bool)

(assert (=> d!1931232 m!7000718))

(declare-fun m!7000720 () Bool)

(assert (=> b!6162918 m!7000720))

(declare-fun m!7000722 () Bool)

(assert (=> b!6162921 m!7000722))

(assert (=> b!6162917 m!7000040))

(declare-fun m!7000724 () Bool)

(assert (=> b!6162917 m!7000724))

(declare-fun m!7000726 () Bool)

(assert (=> b!6162922 m!7000726))

(assert (=> b!6162923 m!7000040))

(declare-fun m!7000728 () Bool)

(assert (=> b!6162923 m!7000728))

(assert (=> b!6162923 m!7000728))

(declare-fun m!7000730 () Bool)

(assert (=> b!6162923 m!7000730))

(assert (=> b!6162188 d!1931232))

(declare-fun bs!1527455 () Bool)

(declare-fun d!1931234 () Bool)

(assert (= bs!1527455 (and d!1931234 d!1931186)))

(declare-fun lambda!336358 () Int)

(assert (=> bs!1527455 (= lambda!336358 lambda!336342)))

(declare-fun bs!1527456 () Bool)

(assert (= bs!1527456 (and d!1931234 d!1931216)))

(assert (=> bs!1527456 (= lambda!336358 lambda!336351)))

(declare-fun bs!1527457 () Bool)

(assert (= bs!1527457 (and d!1931234 d!1931230)))

(assert (=> bs!1527457 (= lambda!336358 lambda!336352)))

(declare-fun bs!1527458 () Bool)

(assert (= bs!1527458 (and d!1931234 d!1931232)))

(assert (=> bs!1527458 (= lambda!336358 lambda!336355)))

(declare-fun lt!2336223 () List!64615)

(assert (=> d!1931234 (forall!15226 lt!2336223 lambda!336358)))

(declare-fun e!3754751 () List!64615)

(assert (=> d!1931234 (= lt!2336223 e!3754751)))

(declare-fun c!1110076 () Bool)

(assert (=> d!1931234 (= c!1110076 ((_ is Cons!64492) zl!343))))

(assert (=> d!1931234 (= (unfocusZipperList!1526 zl!343) lt!2336223)))

(declare-fun b!6162928 () Bool)

(assert (=> b!6162928 (= e!3754751 (Cons!64491 (generalisedConcat!1702 (exprs!5989 (h!70940 zl!343))) (unfocusZipperList!1526 (t!378114 zl!343))))))

(declare-fun b!6162929 () Bool)

(assert (=> b!6162929 (= e!3754751 Nil!64491)))

(assert (= (and d!1931234 c!1110076) b!6162928))

(assert (= (and d!1931234 (not c!1110076)) b!6162929))

(declare-fun m!7000732 () Bool)

(assert (=> d!1931234 m!7000732))

(assert (=> b!6162928 m!7000136))

(declare-fun m!7000734 () Bool)

(assert (=> b!6162928 m!7000734))

(assert (=> b!6162188 d!1931234))

(declare-fun d!1931236 () Bool)

(assert (=> d!1931236 (= (isEmpty!36460 (t!378114 zl!343)) ((_ is Nil!64492) (t!378114 zl!343)))))

(assert (=> b!6162168 d!1931236))

(assert (=> b!6162190 d!1931148))

(declare-fun b!6162948 () Bool)

(declare-fun res!2551983 () Bool)

(declare-fun e!3754767 () Bool)

(assert (=> b!6162948 (=> (not res!2551983) (not e!3754767))))

(declare-fun call!513387 () Bool)

(assert (=> b!6162948 (= res!2551983 call!513387)))

(declare-fun e!3754772 () Bool)

(assert (=> b!6162948 (= e!3754772 e!3754767)))

(declare-fun b!6162949 () Bool)

(declare-fun e!3754768 () Bool)

(assert (=> b!6162949 (= e!3754768 e!3754772)))

(declare-fun c!1110082 () Bool)

(assert (=> b!6162949 (= c!1110082 ((_ is Union!16105) r!7292))))

(declare-fun bm!513381 () Bool)

(declare-fun c!1110081 () Bool)

(declare-fun call!513386 () Bool)

(assert (=> bm!513381 (= call!513386 (validRegex!7841 (ite c!1110081 (reg!16434 r!7292) (ite c!1110082 (regOne!32723 r!7292) (regOne!32722 r!7292)))))))

(declare-fun b!6162950 () Bool)

(declare-fun call!513388 () Bool)

(assert (=> b!6162950 (= e!3754767 call!513388)))

(declare-fun b!6162951 () Bool)

(declare-fun e!3754769 () Bool)

(assert (=> b!6162951 (= e!3754769 call!513388)))

(declare-fun bm!513382 () Bool)

(assert (=> bm!513382 (= call!513387 call!513386)))

(declare-fun b!6162952 () Bool)

(declare-fun e!3754771 () Bool)

(assert (=> b!6162952 (= e!3754771 e!3754769)))

(declare-fun res!2551981 () Bool)

(assert (=> b!6162952 (=> (not res!2551981) (not e!3754769))))

(assert (=> b!6162952 (= res!2551981 call!513387)))

(declare-fun b!6162953 () Bool)

(declare-fun e!3754770 () Bool)

(assert (=> b!6162953 (= e!3754770 call!513386)))

(declare-fun d!1931238 () Bool)

(declare-fun res!2551982 () Bool)

(declare-fun e!3754766 () Bool)

(assert (=> d!1931238 (=> res!2551982 e!3754766)))

(assert (=> d!1931238 (= res!2551982 ((_ is ElementMatch!16105) r!7292))))

(assert (=> d!1931238 (= (validRegex!7841 r!7292) e!3754766)))

(declare-fun b!6162954 () Bool)

(assert (=> b!6162954 (= e!3754766 e!3754768)))

(assert (=> b!6162954 (= c!1110081 ((_ is Star!16105) r!7292))))

(declare-fun b!6162955 () Bool)

(assert (=> b!6162955 (= e!3754768 e!3754770)))

(declare-fun res!2551984 () Bool)

(assert (=> b!6162955 (= res!2551984 (not (nullable!6098 (reg!16434 r!7292))))))

(assert (=> b!6162955 (=> (not res!2551984) (not e!3754770))))

(declare-fun b!6162956 () Bool)

(declare-fun res!2551985 () Bool)

(assert (=> b!6162956 (=> res!2551985 e!3754771)))

(assert (=> b!6162956 (= res!2551985 (not ((_ is Concat!24950) r!7292)))))

(assert (=> b!6162956 (= e!3754772 e!3754771)))

(declare-fun bm!513383 () Bool)

(assert (=> bm!513383 (= call!513388 (validRegex!7841 (ite c!1110082 (regTwo!32723 r!7292) (regTwo!32722 r!7292))))))

(assert (= (and d!1931238 (not res!2551982)) b!6162954))

(assert (= (and b!6162954 c!1110081) b!6162955))

(assert (= (and b!6162954 (not c!1110081)) b!6162949))

(assert (= (and b!6162955 res!2551984) b!6162953))

(assert (= (and b!6162949 c!1110082) b!6162948))

(assert (= (and b!6162949 (not c!1110082)) b!6162956))

(assert (= (and b!6162948 res!2551983) b!6162950))

(assert (= (and b!6162956 (not res!2551985)) b!6162952))

(assert (= (and b!6162952 res!2551981) b!6162951))

(assert (= (or b!6162950 b!6162951) bm!513383))

(assert (= (or b!6162948 b!6162952) bm!513382))

(assert (= (or b!6162953 bm!513382) bm!513381))

(declare-fun m!7000736 () Bool)

(assert (=> bm!513381 m!7000736))

(declare-fun m!7000738 () Bool)

(assert (=> b!6162955 m!7000738))

(declare-fun m!7000740 () Bool)

(assert (=> bm!513383 m!7000740))

(assert (=> start!615506 d!1931238))

(declare-fun d!1931240 () Bool)

(declare-fun c!1110083 () Bool)

(assert (=> d!1931240 (= c!1110083 (isEmpty!36465 s!2326))))

(declare-fun e!3754773 () Bool)

(assert (=> d!1931240 (= (matchZipper!2117 lt!2336107 s!2326) e!3754773)))

(declare-fun b!6162957 () Bool)

(assert (=> b!6162957 (= e!3754773 (nullableZipper!1886 lt!2336107))))

(declare-fun b!6162958 () Bool)

(assert (=> b!6162958 (= e!3754773 (matchZipper!2117 (derivationStepZipper!2078 lt!2336107 (head!12731 s!2326)) (tail!11816 s!2326)))))

(assert (= (and d!1931240 c!1110083) b!6162957))

(assert (= (and d!1931240 (not c!1110083)) b!6162958))

(assert (=> d!1931240 m!7000546))

(declare-fun m!7000742 () Bool)

(assert (=> b!6162957 m!7000742))

(assert (=> b!6162958 m!7000550))

(assert (=> b!6162958 m!7000550))

(declare-fun m!7000744 () Bool)

(assert (=> b!6162958 m!7000744))

(assert (=> b!6162958 m!7000554))

(assert (=> b!6162958 m!7000744))

(assert (=> b!6162958 m!7000554))

(declare-fun m!7000746 () Bool)

(assert (=> b!6162958 m!7000746))

(assert (=> b!6162161 d!1931240))

(assert (=> b!6162182 d!1931148))

(declare-fun d!1931242 () Bool)

(declare-fun lt!2336224 () Int)

(assert (=> d!1931242 (>= lt!2336224 0)))

(declare-fun e!3754774 () Int)

(assert (=> d!1931242 (= lt!2336224 e!3754774)))

(declare-fun c!1110084 () Bool)

(assert (=> d!1931242 (= c!1110084 ((_ is Cons!64492) (Cons!64492 lt!2336104 Nil!64492)))))

(assert (=> d!1931242 (= (zipperDepthTotal!288 (Cons!64492 lt!2336104 Nil!64492)) lt!2336224)))

(declare-fun b!6162959 () Bool)

(assert (=> b!6162959 (= e!3754774 (+ (contextDepthTotal!265 (h!70940 (Cons!64492 lt!2336104 Nil!64492))) (zipperDepthTotal!288 (t!378114 (Cons!64492 lt!2336104 Nil!64492)))))))

(declare-fun b!6162960 () Bool)

(assert (=> b!6162960 (= e!3754774 0)))

(assert (= (and d!1931242 c!1110084) b!6162959))

(assert (= (and d!1931242 (not c!1110084)) b!6162960))

(declare-fun m!7000748 () Bool)

(assert (=> b!6162959 m!7000748))

(declare-fun m!7000750 () Bool)

(assert (=> b!6162959 m!7000750))

(assert (=> b!6162163 d!1931242))

(declare-fun bs!1527459 () Bool)

(declare-fun d!1931244 () Bool)

(assert (= bs!1527459 (and d!1931244 d!1931234)))

(declare-fun lambda!336359 () Int)

(assert (=> bs!1527459 (= lambda!336359 lambda!336358)))

(declare-fun bs!1527460 () Bool)

(assert (= bs!1527460 (and d!1931244 d!1931232)))

(assert (=> bs!1527460 (= lambda!336359 lambda!336355)))

(declare-fun bs!1527461 () Bool)

(assert (= bs!1527461 (and d!1931244 d!1931230)))

(assert (=> bs!1527461 (= lambda!336359 lambda!336352)))

(declare-fun bs!1527462 () Bool)

(assert (= bs!1527462 (and d!1931244 d!1931216)))

(assert (=> bs!1527462 (= lambda!336359 lambda!336351)))

(declare-fun bs!1527463 () Bool)

(assert (= bs!1527463 (and d!1931244 d!1931186)))

(assert (=> bs!1527463 (= lambda!336359 lambda!336342)))

(assert (=> d!1931244 (= (inv!83509 (h!70940 zl!343)) (forall!15226 (exprs!5989 (h!70940 zl!343)) lambda!336359))))

(declare-fun bs!1527464 () Bool)

(assert (= bs!1527464 d!1931244))

(declare-fun m!7000752 () Bool)

(assert (=> bs!1527464 m!7000752))

(assert (=> b!6162184 d!1931244))

(declare-fun b!6162974 () Bool)

(declare-fun e!3754777 () Bool)

(declare-fun tp!1720668 () Bool)

(declare-fun tp!1720670 () Bool)

(assert (=> b!6162974 (= e!3754777 (and tp!1720668 tp!1720670))))

(assert (=> b!6162171 (= tp!1720591 e!3754777)))

(declare-fun b!6162973 () Bool)

(declare-fun tp!1720671 () Bool)

(assert (=> b!6162973 (= e!3754777 tp!1720671)))

(declare-fun b!6162971 () Bool)

(assert (=> b!6162971 (= e!3754777 tp_is_empty!41463)))

(declare-fun b!6162972 () Bool)

(declare-fun tp!1720669 () Bool)

(declare-fun tp!1720667 () Bool)

(assert (=> b!6162972 (= e!3754777 (and tp!1720669 tp!1720667))))

(assert (= (and b!6162171 ((_ is ElementMatch!16105) (regOne!32722 r!7292))) b!6162971))

(assert (= (and b!6162171 ((_ is Concat!24950) (regOne!32722 r!7292))) b!6162972))

(assert (= (and b!6162171 ((_ is Star!16105) (regOne!32722 r!7292))) b!6162973))

(assert (= (and b!6162171 ((_ is Union!16105) (regOne!32722 r!7292))) b!6162974))

(declare-fun b!6162978 () Bool)

(declare-fun e!3754778 () Bool)

(declare-fun tp!1720673 () Bool)

(declare-fun tp!1720675 () Bool)

(assert (=> b!6162978 (= e!3754778 (and tp!1720673 tp!1720675))))

(assert (=> b!6162171 (= tp!1720593 e!3754778)))

(declare-fun b!6162977 () Bool)

(declare-fun tp!1720676 () Bool)

(assert (=> b!6162977 (= e!3754778 tp!1720676)))

(declare-fun b!6162975 () Bool)

(assert (=> b!6162975 (= e!3754778 tp_is_empty!41463)))

(declare-fun b!6162976 () Bool)

(declare-fun tp!1720674 () Bool)

(declare-fun tp!1720672 () Bool)

(assert (=> b!6162976 (= e!3754778 (and tp!1720674 tp!1720672))))

(assert (= (and b!6162171 ((_ is ElementMatch!16105) (regTwo!32722 r!7292))) b!6162975))

(assert (= (and b!6162171 ((_ is Concat!24950) (regTwo!32722 r!7292))) b!6162976))

(assert (= (and b!6162171 ((_ is Star!16105) (regTwo!32722 r!7292))) b!6162977))

(assert (= (and b!6162171 ((_ is Union!16105) (regTwo!32722 r!7292))) b!6162978))

(declare-fun b!6162983 () Bool)

(declare-fun e!3754781 () Bool)

(declare-fun tp!1720681 () Bool)

(declare-fun tp!1720682 () Bool)

(assert (=> b!6162983 (= e!3754781 (and tp!1720681 tp!1720682))))

(assert (=> b!6162181 (= tp!1720595 e!3754781)))

(assert (= (and b!6162181 ((_ is Cons!64491) (exprs!5989 setElem!41766))) b!6162983))

(declare-fun b!6162987 () Bool)

(declare-fun e!3754782 () Bool)

(declare-fun tp!1720684 () Bool)

(declare-fun tp!1720686 () Bool)

(assert (=> b!6162987 (= e!3754782 (and tp!1720684 tp!1720686))))

(assert (=> b!6162187 (= tp!1720597 e!3754782)))

(declare-fun b!6162986 () Bool)

(declare-fun tp!1720687 () Bool)

(assert (=> b!6162986 (= e!3754782 tp!1720687)))

(declare-fun b!6162984 () Bool)

(assert (=> b!6162984 (= e!3754782 tp_is_empty!41463)))

(declare-fun b!6162985 () Bool)

(declare-fun tp!1720685 () Bool)

(declare-fun tp!1720683 () Bool)

(assert (=> b!6162985 (= e!3754782 (and tp!1720685 tp!1720683))))

(assert (= (and b!6162187 ((_ is ElementMatch!16105) (regOne!32723 r!7292))) b!6162984))

(assert (= (and b!6162187 ((_ is Concat!24950) (regOne!32723 r!7292))) b!6162985))

(assert (= (and b!6162187 ((_ is Star!16105) (regOne!32723 r!7292))) b!6162986))

(assert (= (and b!6162187 ((_ is Union!16105) (regOne!32723 r!7292))) b!6162987))

(declare-fun b!6162991 () Bool)

(declare-fun e!3754783 () Bool)

(declare-fun tp!1720689 () Bool)

(declare-fun tp!1720691 () Bool)

(assert (=> b!6162991 (= e!3754783 (and tp!1720689 tp!1720691))))

(assert (=> b!6162187 (= tp!1720589 e!3754783)))

(declare-fun b!6162990 () Bool)

(declare-fun tp!1720692 () Bool)

(assert (=> b!6162990 (= e!3754783 tp!1720692)))

(declare-fun b!6162988 () Bool)

(assert (=> b!6162988 (= e!3754783 tp_is_empty!41463)))

(declare-fun b!6162989 () Bool)

(declare-fun tp!1720690 () Bool)

(declare-fun tp!1720688 () Bool)

(assert (=> b!6162989 (= e!3754783 (and tp!1720690 tp!1720688))))

(assert (= (and b!6162187 ((_ is ElementMatch!16105) (regTwo!32723 r!7292))) b!6162988))

(assert (= (and b!6162187 ((_ is Concat!24950) (regTwo!32723 r!7292))) b!6162989))

(assert (= (and b!6162187 ((_ is Star!16105) (regTwo!32723 r!7292))) b!6162990))

(assert (= (and b!6162187 ((_ is Union!16105) (regTwo!32723 r!7292))) b!6162991))

(declare-fun b!6162995 () Bool)

(declare-fun e!3754784 () Bool)

(declare-fun tp!1720694 () Bool)

(declare-fun tp!1720696 () Bool)

(assert (=> b!6162995 (= e!3754784 (and tp!1720694 tp!1720696))))

(assert (=> b!6162183 (= tp!1720596 e!3754784)))

(declare-fun b!6162994 () Bool)

(declare-fun tp!1720697 () Bool)

(assert (=> b!6162994 (= e!3754784 tp!1720697)))

(declare-fun b!6162992 () Bool)

(assert (=> b!6162992 (= e!3754784 tp_is_empty!41463)))

(declare-fun b!6162993 () Bool)

(declare-fun tp!1720695 () Bool)

(declare-fun tp!1720693 () Bool)

(assert (=> b!6162993 (= e!3754784 (and tp!1720695 tp!1720693))))

(assert (= (and b!6162183 ((_ is ElementMatch!16105) (reg!16434 r!7292))) b!6162992))

(assert (= (and b!6162183 ((_ is Concat!24950) (reg!16434 r!7292))) b!6162993))

(assert (= (and b!6162183 ((_ is Star!16105) (reg!16434 r!7292))) b!6162994))

(assert (= (and b!6162183 ((_ is Union!16105) (reg!16434 r!7292))) b!6162995))

(declare-fun b!6163003 () Bool)

(declare-fun e!3754790 () Bool)

(declare-fun tp!1720702 () Bool)

(assert (=> b!6163003 (= e!3754790 tp!1720702)))

(declare-fun e!3754789 () Bool)

(declare-fun tp!1720703 () Bool)

(declare-fun b!6163002 () Bool)

(assert (=> b!6163002 (= e!3754789 (and (inv!83509 (h!70940 (t!378114 zl!343))) e!3754790 tp!1720703))))

(assert (=> b!6162184 (= tp!1720592 e!3754789)))

(assert (= b!6163002 b!6163003))

(assert (= (and b!6162184 ((_ is Cons!64492) (t!378114 zl!343))) b!6163002))

(declare-fun m!7000754 () Bool)

(assert (=> b!6163002 m!7000754))

(declare-fun b!6163004 () Bool)

(declare-fun e!3754791 () Bool)

(declare-fun tp!1720704 () Bool)

(declare-fun tp!1720705 () Bool)

(assert (=> b!6163004 (= e!3754791 (and tp!1720704 tp!1720705))))

(assert (=> b!6162189 (= tp!1720598 e!3754791)))

(assert (= (and b!6162189 ((_ is Cons!64491) (exprs!5989 (h!70940 zl!343)))) b!6163004))

(declare-fun condSetEmpty!41772 () Bool)

(assert (=> setNonEmpty!41766 (= condSetEmpty!41772 (= setRest!41766 ((as const (Array Context!10978 Bool)) false)))))

(declare-fun setRes!41772 () Bool)

(assert (=> setNonEmpty!41766 (= tp!1720590 setRes!41772)))

(declare-fun setIsEmpty!41772 () Bool)

(assert (=> setIsEmpty!41772 setRes!41772))

(declare-fun setElem!41772 () Context!10978)

(declare-fun setNonEmpty!41772 () Bool)

(declare-fun e!3754794 () Bool)

(declare-fun tp!1720710 () Bool)

(assert (=> setNonEmpty!41772 (= setRes!41772 (and tp!1720710 (inv!83509 setElem!41772) e!3754794))))

(declare-fun setRest!41772 () (InoxSet Context!10978))

(assert (=> setNonEmpty!41772 (= setRest!41766 ((_ map or) (store ((as const (Array Context!10978 Bool)) false) setElem!41772 true) setRest!41772))))

(declare-fun b!6163009 () Bool)

(declare-fun tp!1720711 () Bool)

(assert (=> b!6163009 (= e!3754794 tp!1720711)))

(assert (= (and setNonEmpty!41766 condSetEmpty!41772) setIsEmpty!41772))

(assert (= (and setNonEmpty!41766 (not condSetEmpty!41772)) setNonEmpty!41772))

(assert (= setNonEmpty!41772 b!6163009))

(declare-fun m!7000756 () Bool)

(assert (=> setNonEmpty!41772 m!7000756))

(declare-fun b!6163014 () Bool)

(declare-fun e!3754797 () Bool)

(declare-fun tp!1720714 () Bool)

(assert (=> b!6163014 (= e!3754797 (and tp_is_empty!41463 tp!1720714))))

(assert (=> b!6162160 (= tp!1720594 e!3754797)))

(assert (= (and b!6162160 ((_ is Cons!64490) (t!378112 s!2326))) b!6163014))

(declare-fun b_lambda!234607 () Bool)

(assert (= b_lambda!234601 (or b!6162172 b_lambda!234607)))

(declare-fun bs!1527465 () Bool)

(declare-fun d!1931246 () Bool)

(assert (= bs!1527465 (and d!1931246 b!6162172)))

(assert (=> bs!1527465 (= (dynLambda!25429 lambda!336301 lt!2336104) (derivationStepZipperUp!1279 lt!2336104 (h!70938 s!2326)))))

(assert (=> bs!1527465 m!7000128))

(assert (=> d!1931168 d!1931246))

(declare-fun b_lambda!234609 () Bool)

(assert (= b_lambda!234605 (or b!6162172 b_lambda!234609)))

(declare-fun bs!1527466 () Bool)

(declare-fun d!1931248 () Bool)

(assert (= bs!1527466 (and d!1931248 b!6162172)))

(assert (=> bs!1527466 (= (dynLambda!25429 lambda!336301 (h!70940 zl!343)) (derivationStepZipperUp!1279 (h!70940 zl!343) (h!70938 s!2326)))))

(assert (=> bs!1527466 m!7000070))

(assert (=> d!1931198 d!1931248))

(declare-fun b_lambda!234611 () Bool)

(assert (= b_lambda!234603 (or b!6162172 b_lambda!234611)))

(declare-fun bs!1527467 () Bool)

(declare-fun d!1931250 () Bool)

(assert (= bs!1527467 (and d!1931250 b!6162172)))

(assert (=> bs!1527467 (= (dynLambda!25429 lambda!336301 lt!2336096) (derivationStepZipperUp!1279 lt!2336096 (h!70938 s!2326)))))

(assert (=> bs!1527467 m!7000114))

(assert (=> d!1931178 d!1931250))

(check-sat (not bm!513334) (not d!1931150) (not d!1931160) (not b!6162973) (not d!1931146) (not b!6162861) (not b!6162723) (not b!6162958) (not d!1931232) (not b!6162717) (not b!6162990) (not b!6162711) (not b!6162722) (not b!6162916) (not b!6162665) (not b!6162974) (not bm!513331) (not b!6162986) (not b!6162917) (not d!1931194) (not b!6162658) (not d!1931212) (not b!6162770) tp_is_empty!41463 (not b!6162655) (not b!6162928) (not bm!513359) (not setNonEmpty!41772) (not d!1931186) (not b!6162860) (not b!6162654) (not b!6162733) (not b!6162716) (not b!6162666) (not b!6162713) (not b!6162721) (not b!6162718) (not b!6162728) (not d!1931156) (not bm!513372) (not bm!513335) (not bs!1527465) (not d!1931136) (not d!1931210) (not b!6162977) (not b_lambda!234607) (not b!6162712) (not d!1931174) (not b!6162772) (not b!6162631) (not b!6162653) (not b!6162685) (not bm!513332) (not d!1931162) (not d!1931170) (not b!6162957) (not b!6162854) (not b!6162923) (not d!1931190) (not b!6162771) (not b!6162678) (not b!6162870) (not b!6162630) (not d!1931140) (not d!1931218) (not d!1931178) (not b!6162921) (not b!6162657) (not b!6163004) (not b!6162882) (not b!6162991) (not d!1931198) (not b!6162978) (not d!1931244) (not b!6162689) (not d!1931138) (not b!6162664) (not d!1931166) (not b!6162919) (not b!6162893) (not d!1931142) (not d!1931144) (not b!6162684) (not bm!513365) (not b!6162863) (not d!1931240) (not bm!513381) (not bs!1527467) (not b!6162737) (not b!6162667) (not b!6162856) (not b!6162662) (not d!1931188) (not b!6162985) (not bm!513333) (not d!1931214) (not d!1931176) (not d!1931180) (not d!1931152) (not d!1931230) (not bm!513383) (not b!6162815) (not b!6163009) (not d!1931168) (not d!1931164) (not b!6162851) (not b!6162959) (not b!6162972) (not d!1931220) (not b!6162682) (not bm!513358) (not b!6162918) (not bs!1527466) (not b!6163014) (not d!1931154) (not b!6162955) (not b!6162862) (not bm!513371) (not b!6162993) (not bm!513369) (not b!6162847) (not bm!513363) (not b!6162994) (not b_lambda!234609) (not d!1931206) (not b!6162663) (not b!6162720) (not b!6162987) (not b!6162683) (not d!1931234) (not b!6162989) (not b!6162652) (not b!6162732) (not bm!513350) (not d!1931216) (not b!6162976) (not b!6162710) (not bm!513362) (not bm!513351) (not b!6162922) (not b!6162659) (not b!6162656) (not d!1931200) (not b!6162633) (not b!6162852) (not b!6162632) (not b!6162629) (not bm!513366) (not b!6162868) (not d!1931184) (not d!1931148) (not b!6162814) (not b!6162846) (not b_lambda!234611) (not b!6162995) (not b!6163003) (not b!6162727) (not bm!513348) (not b!6162634) (not b!6163002) (not b!6162983))
(check-sat)
(get-model)

(assert (=> b!6162861 d!1931148))

(declare-fun b!6163015 () Bool)

(declare-fun e!3754799 () (InoxSet Context!10978))

(declare-fun call!513389 () (InoxSet Context!10978))

(assert (=> b!6163015 (= e!3754799 call!513389)))

(declare-fun c!1110089 () Bool)

(declare-fun bm!513384 () Bool)

(declare-fun call!513394 () List!64615)

(declare-fun c!1110088 () Bool)

(declare-fun call!513390 () (InoxSet Context!10978))

(declare-fun c!1110086 () Bool)

(assert (=> bm!513384 (= call!513390 (derivationStepZipperDown!1353 (ite c!1110086 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110088 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110089 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343))))))) (ite (or c!1110086 c!1110088) (Context!10979 (t!378113 (exprs!5989 (h!70940 zl!343)))) (Context!10979 call!513394)) (h!70938 s!2326)))))

(declare-fun b!6163016 () Bool)

(declare-fun c!1110087 () Bool)

(assert (=> b!6163016 (= c!1110087 ((_ is Star!16105) (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun e!3754802 () (InoxSet Context!10978))

(assert (=> b!6163016 (= e!3754802 e!3754799)))

(declare-fun b!6163017 () Bool)

(declare-fun e!3754801 () (InoxSet Context!10978))

(declare-fun e!3754798 () (InoxSet Context!10978))

(assert (=> b!6163017 (= e!3754801 e!3754798)))

(assert (=> b!6163017 (= c!1110086 ((_ is Union!16105) (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun b!6163018 () Bool)

(declare-fun e!3754803 () (InoxSet Context!10978))

(assert (=> b!6163018 (= e!3754803 e!3754802)))

(assert (=> b!6163018 (= c!1110089 ((_ is Concat!24950) (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun b!6163019 () Bool)

(assert (=> b!6163019 (= e!3754799 ((as const (Array Context!10978 Bool)) false))))

(declare-fun bm!513385 () Bool)

(declare-fun call!513392 () List!64615)

(assert (=> bm!513385 (= call!513394 call!513392)))

(declare-fun bm!513386 () Bool)

(assert (=> bm!513386 (= call!513392 ($colon$colon!1982 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 (h!70940 zl!343))))) (ite (or c!1110088 c!1110089) (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (h!70939 (exprs!5989 (h!70940 zl!343))))))))

(declare-fun call!513393 () (InoxSet Context!10978))

(declare-fun bm!513387 () Bool)

(assert (=> bm!513387 (= call!513393 (derivationStepZipperDown!1353 (ite c!1110086 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343))))) (ite c!1110086 (Context!10979 (t!378113 (exprs!5989 (h!70940 zl!343)))) (Context!10979 call!513392)) (h!70938 s!2326)))))

(declare-fun b!6163020 () Bool)

(assert (=> b!6163020 (= e!3754801 (store ((as const (Array Context!10978 Bool)) false) (Context!10979 (t!378113 (exprs!5989 (h!70940 zl!343)))) true))))

(declare-fun b!6163021 () Bool)

(declare-fun e!3754800 () Bool)

(assert (=> b!6163021 (= c!1110088 e!3754800)))

(declare-fun res!2551986 () Bool)

(assert (=> b!6163021 (=> (not res!2551986) (not e!3754800))))

(assert (=> b!6163021 (= res!2551986 ((_ is Concat!24950) (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(assert (=> b!6163021 (= e!3754798 e!3754803)))

(declare-fun d!1931252 () Bool)

(declare-fun c!1110085 () Bool)

(assert (=> d!1931252 (= c!1110085 (and ((_ is ElementMatch!16105) (h!70939 (exprs!5989 (h!70940 zl!343)))) (= (c!1109850 (h!70939 (exprs!5989 (h!70940 zl!343)))) (h!70938 s!2326))))))

(assert (=> d!1931252 (= (derivationStepZipperDown!1353 (h!70939 (exprs!5989 (h!70940 zl!343))) (Context!10979 (t!378113 (exprs!5989 (h!70940 zl!343)))) (h!70938 s!2326)) e!3754801)))

(declare-fun b!6163022 () Bool)

(assert (=> b!6163022 (= e!3754798 ((_ map or) call!513390 call!513393))))

(declare-fun bm!513388 () Bool)

(declare-fun call!513391 () (InoxSet Context!10978))

(assert (=> bm!513388 (= call!513389 call!513391)))

(declare-fun b!6163023 () Bool)

(assert (=> b!6163023 (= e!3754802 call!513389)))

(declare-fun b!6163024 () Bool)

(assert (=> b!6163024 (= e!3754803 ((_ map or) call!513393 call!513391))))

(declare-fun bm!513389 () Bool)

(assert (=> bm!513389 (= call!513391 call!513390)))

(declare-fun b!6163025 () Bool)

(assert (=> b!6163025 (= e!3754800 (nullable!6098 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343))))))))

(assert (= (and d!1931252 c!1110085) b!6163020))

(assert (= (and d!1931252 (not c!1110085)) b!6163017))

(assert (= (and b!6163017 c!1110086) b!6163022))

(assert (= (and b!6163017 (not c!1110086)) b!6163021))

(assert (= (and b!6163021 res!2551986) b!6163025))

(assert (= (and b!6163021 c!1110088) b!6163024))

(assert (= (and b!6163021 (not c!1110088)) b!6163018))

(assert (= (and b!6163018 c!1110089) b!6163023))

(assert (= (and b!6163018 (not c!1110089)) b!6163016))

(assert (= (and b!6163016 c!1110087) b!6163015))

(assert (= (and b!6163016 (not c!1110087)) b!6163019))

(assert (= (or b!6163023 b!6163015) bm!513385))

(assert (= (or b!6163023 b!6163015) bm!513388))

(assert (= (or b!6163024 bm!513385) bm!513386))

(assert (= (or b!6163024 bm!513388) bm!513389))

(assert (= (or b!6163022 b!6163024) bm!513387))

(assert (= (or b!6163022 bm!513389) bm!513384))

(declare-fun m!7000758 () Bool)

(assert (=> bm!513384 m!7000758))

(assert (=> b!6163025 m!7000640))

(declare-fun m!7000760 () Bool)

(assert (=> bm!513386 m!7000760))

(declare-fun m!7000762 () Bool)

(assert (=> b!6163020 m!7000762))

(declare-fun m!7000764 () Bool)

(assert (=> bm!513387 m!7000764))

(assert (=> bm!513335 d!1931252))

(declare-fun d!1931254 () Bool)

(assert (=> d!1931254 (= (isEmpty!36465 s!2326) ((_ is Nil!64490) s!2326))))

(assert (=> d!1931210 d!1931254))

(assert (=> d!1931210 d!1931238))

(declare-fun call!513395 () (InoxSet Context!10978))

(declare-fun b!6163026 () Bool)

(declare-fun e!3754804 () (InoxSet Context!10978))

(assert (=> b!6163026 (= e!3754804 ((_ map or) call!513395 (derivationStepZipperUp!1279 (Context!10979 (t!378113 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336104)))))) (h!70938 s!2326))))))

(declare-fun d!1931256 () Bool)

(declare-fun c!1110091 () Bool)

(declare-fun e!3754805 () Bool)

(assert (=> d!1931256 (= c!1110091 e!3754805)))

(declare-fun res!2551987 () Bool)

(assert (=> d!1931256 (=> (not res!2551987) (not e!3754805))))

(assert (=> d!1931256 (= res!2551987 ((_ is Cons!64491) (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336104))))))))

(assert (=> d!1931256 (= (derivationStepZipperUp!1279 (Context!10979 (t!378113 (exprs!5989 lt!2336104))) (h!70938 s!2326)) e!3754804)))

(declare-fun b!6163027 () Bool)

(declare-fun e!3754806 () (InoxSet Context!10978))

(assert (=> b!6163027 (= e!3754804 e!3754806)))

(declare-fun c!1110090 () Bool)

(assert (=> b!6163027 (= c!1110090 ((_ is Cons!64491) (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336104))))))))

(declare-fun bm!513390 () Bool)

(assert (=> bm!513390 (= call!513395 (derivationStepZipperDown!1353 (h!70939 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336104))))) (Context!10979 (t!378113 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336104)))))) (h!70938 s!2326)))))

(declare-fun b!6163028 () Bool)

(assert (=> b!6163028 (= e!3754806 ((as const (Array Context!10978 Bool)) false))))

(declare-fun b!6163029 () Bool)

(assert (=> b!6163029 (= e!3754806 call!513395)))

(declare-fun b!6163030 () Bool)

(assert (=> b!6163030 (= e!3754805 (nullable!6098 (h!70939 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336104)))))))))

(assert (= (and d!1931256 res!2551987) b!6163030))

(assert (= (and d!1931256 c!1110091) b!6163026))

(assert (= (and d!1931256 (not c!1110091)) b!6163027))

(assert (= (and b!6163027 c!1110090) b!6163029))

(assert (= (and b!6163027 (not c!1110090)) b!6163028))

(assert (= (or b!6163026 b!6163029) bm!513390))

(declare-fun m!7000766 () Bool)

(assert (=> b!6163026 m!7000766))

(declare-fun m!7000768 () Bool)

(assert (=> bm!513390 m!7000768))

(declare-fun m!7000770 () Bool)

(assert (=> b!6163030 m!7000770))

(assert (=> b!6162685 d!1931256))

(declare-fun bs!1527468 () Bool)

(declare-fun b!6163033 () Bool)

(assert (= bs!1527468 (and b!6163033 b!6162196)))

(declare-fun lambda!336360 () Int)

(assert (=> bs!1527468 (not (= lambda!336360 lambda!336299))))

(assert (=> bs!1527468 (not (= lambda!336360 lambda!336300))))

(declare-fun bs!1527469 () Bool)

(assert (= bs!1527469 (and b!6163033 b!6162806)))

(assert (=> bs!1527469 (not (= lambda!336360 lambda!336348))))

(declare-fun bs!1527470 () Bool)

(assert (= bs!1527470 (and b!6163033 d!1931144)))

(assert (=> bs!1527470 (not (= lambda!336360 lambda!336338))))

(declare-fun bs!1527471 () Bool)

(assert (= bs!1527471 (and b!6163033 d!1931142)))

(assert (=> bs!1527471 (not (= lambda!336360 lambda!336333))))

(assert (=> bs!1527470 (not (= lambda!336360 lambda!336339))))

(declare-fun bs!1527472 () Bool)

(assert (= bs!1527472 (and b!6163033 b!6162807)))

(assert (=> bs!1527472 (= (and (= (reg!16434 (regTwo!32723 r!7292)) (reg!16434 r!7292)) (= (regTwo!32723 r!7292) r!7292)) (= lambda!336360 lambda!336347))))

(assert (=> b!6163033 true))

(assert (=> b!6163033 true))

(declare-fun bs!1527473 () Bool)

(declare-fun b!6163032 () Bool)

(assert (= bs!1527473 (and b!6163032 b!6162196)))

(declare-fun lambda!336361 () Int)

(assert (=> bs!1527473 (= (and (= (regOne!32722 (regTwo!32723 r!7292)) (regOne!32722 r!7292)) (= (regTwo!32722 (regTwo!32723 r!7292)) (regTwo!32722 r!7292))) (= lambda!336361 lambda!336300))))

(declare-fun bs!1527474 () Bool)

(assert (= bs!1527474 (and b!6163032 b!6162806)))

(assert (=> bs!1527474 (= (and (= (regOne!32722 (regTwo!32723 r!7292)) (regOne!32722 r!7292)) (= (regTwo!32722 (regTwo!32723 r!7292)) (regTwo!32722 r!7292))) (= lambda!336361 lambda!336348))))

(declare-fun bs!1527475 () Bool)

(assert (= bs!1527475 (and b!6163032 d!1931144)))

(assert (=> bs!1527475 (not (= lambda!336361 lambda!336338))))

(declare-fun bs!1527476 () Bool)

(assert (= bs!1527476 (and b!6163032 d!1931142)))

(assert (=> bs!1527476 (not (= lambda!336361 lambda!336333))))

(declare-fun bs!1527477 () Bool)

(assert (= bs!1527477 (and b!6163032 b!6163033)))

(assert (=> bs!1527477 (not (= lambda!336361 lambda!336360))))

(assert (=> bs!1527473 (not (= lambda!336361 lambda!336299))))

(assert (=> bs!1527475 (= (and (= (regOne!32722 (regTwo!32723 r!7292)) (regOne!32722 r!7292)) (= (regTwo!32722 (regTwo!32723 r!7292)) (regTwo!32722 r!7292))) (= lambda!336361 lambda!336339))))

(declare-fun bs!1527478 () Bool)

(assert (= bs!1527478 (and b!6163032 b!6162807)))

(assert (=> bs!1527478 (not (= lambda!336361 lambda!336347))))

(assert (=> b!6163032 true))

(assert (=> b!6163032 true))

(declare-fun b!6163031 () Bool)

(declare-fun e!3754810 () Bool)

(declare-fun e!3754812 () Bool)

(assert (=> b!6163031 (= e!3754810 e!3754812)))

(declare-fun c!1110093 () Bool)

(assert (=> b!6163031 (= c!1110093 ((_ is Star!16105) (regTwo!32723 r!7292)))))

(declare-fun call!513397 () Bool)

(assert (=> b!6163032 (= e!3754812 call!513397)))

(declare-fun e!3754808 () Bool)

(assert (=> b!6163033 (= e!3754808 call!513397)))

(declare-fun d!1931258 () Bool)

(declare-fun c!1110095 () Bool)

(assert (=> d!1931258 (= c!1110095 ((_ is EmptyExpr!16105) (regTwo!32723 r!7292)))))

(declare-fun e!3754809 () Bool)

(assert (=> d!1931258 (= (matchRSpec!3206 (regTwo!32723 r!7292) s!2326) e!3754809)))

(declare-fun b!6163034 () Bool)

(declare-fun e!3754811 () Bool)

(assert (=> b!6163034 (= e!3754809 e!3754811)))

(declare-fun res!2551988 () Bool)

(assert (=> b!6163034 (= res!2551988 (not ((_ is EmptyLang!16105) (regTwo!32723 r!7292))))))

(assert (=> b!6163034 (=> (not res!2551988) (not e!3754811))))

(declare-fun b!6163035 () Bool)

(declare-fun c!1110094 () Bool)

(assert (=> b!6163035 (= c!1110094 ((_ is ElementMatch!16105) (regTwo!32723 r!7292)))))

(declare-fun e!3754807 () Bool)

(assert (=> b!6163035 (= e!3754811 e!3754807)))

(declare-fun b!6163036 () Bool)

(declare-fun c!1110092 () Bool)

(assert (=> b!6163036 (= c!1110092 ((_ is Union!16105) (regTwo!32723 r!7292)))))

(assert (=> b!6163036 (= e!3754807 e!3754810)))

(declare-fun b!6163037 () Bool)

(declare-fun call!513396 () Bool)

(assert (=> b!6163037 (= e!3754809 call!513396)))

(declare-fun bm!513391 () Bool)

(assert (=> bm!513391 (= call!513397 (Exists!3175 (ite c!1110093 lambda!336360 lambda!336361)))))

(declare-fun bm!513392 () Bool)

(assert (=> bm!513392 (= call!513396 (isEmpty!36465 s!2326))))

(declare-fun b!6163038 () Bool)

(declare-fun res!2551990 () Bool)

(assert (=> b!6163038 (=> res!2551990 e!3754808)))

(assert (=> b!6163038 (= res!2551990 call!513396)))

(assert (=> b!6163038 (= e!3754812 e!3754808)))

(declare-fun b!6163039 () Bool)

(assert (=> b!6163039 (= e!3754807 (= s!2326 (Cons!64490 (c!1109850 (regTwo!32723 r!7292)) Nil!64490)))))

(declare-fun b!6163040 () Bool)

(declare-fun e!3754813 () Bool)

(assert (=> b!6163040 (= e!3754813 (matchRSpec!3206 (regTwo!32723 (regTwo!32723 r!7292)) s!2326))))

(declare-fun b!6163041 () Bool)

(assert (=> b!6163041 (= e!3754810 e!3754813)))

(declare-fun res!2551989 () Bool)

(assert (=> b!6163041 (= res!2551989 (matchRSpec!3206 (regOne!32723 (regTwo!32723 r!7292)) s!2326))))

(assert (=> b!6163041 (=> res!2551989 e!3754813)))

(assert (= (and d!1931258 c!1110095) b!6163037))

(assert (= (and d!1931258 (not c!1110095)) b!6163034))

(assert (= (and b!6163034 res!2551988) b!6163035))

(assert (= (and b!6163035 c!1110094) b!6163039))

(assert (= (and b!6163035 (not c!1110094)) b!6163036))

(assert (= (and b!6163036 c!1110092) b!6163041))

(assert (= (and b!6163036 (not c!1110092)) b!6163031))

(assert (= (and b!6163041 (not res!2551989)) b!6163040))

(assert (= (and b!6163031 c!1110093) b!6163038))

(assert (= (and b!6163031 (not c!1110093)) b!6163032))

(assert (= (and b!6163038 (not res!2551990)) b!6163033))

(assert (= (or b!6163033 b!6163032) bm!513391))

(assert (= (or b!6163037 b!6163038) bm!513392))

(declare-fun m!7000772 () Bool)

(assert (=> bm!513391 m!7000772))

(assert (=> bm!513392 m!7000546))

(declare-fun m!7000774 () Bool)

(assert (=> b!6163040 m!7000774))

(declare-fun m!7000776 () Bool)

(assert (=> b!6163041 m!7000776))

(assert (=> b!6162814 d!1931258))

(declare-fun d!1931260 () Bool)

(assert (=> d!1931260 (= (isEmpty!36465 (t!378112 s!2326)) ((_ is Nil!64490) (t!378112 s!2326)))))

(assert (=> d!1931150 d!1931260))

(declare-fun b!6163042 () Bool)

(declare-fun res!2551993 () Bool)

(declare-fun e!3754815 () Bool)

(assert (=> b!6163042 (=> (not res!2551993) (not e!3754815))))

(declare-fun call!513399 () Bool)

(assert (=> b!6163042 (= res!2551993 call!513399)))

(declare-fun e!3754820 () Bool)

(assert (=> b!6163042 (= e!3754820 e!3754815)))

(declare-fun b!6163043 () Bool)

(declare-fun e!3754816 () Bool)

(assert (=> b!6163043 (= e!3754816 e!3754820)))

(declare-fun c!1110097 () Bool)

(assert (=> b!6163043 (= c!1110097 ((_ is Union!16105) lt!2336194))))

(declare-fun call!513398 () Bool)

(declare-fun bm!513393 () Bool)

(declare-fun c!1110096 () Bool)

(assert (=> bm!513393 (= call!513398 (validRegex!7841 (ite c!1110096 (reg!16434 lt!2336194) (ite c!1110097 (regOne!32723 lt!2336194) (regOne!32722 lt!2336194)))))))

(declare-fun b!6163044 () Bool)

(declare-fun call!513400 () Bool)

(assert (=> b!6163044 (= e!3754815 call!513400)))

(declare-fun b!6163045 () Bool)

(declare-fun e!3754817 () Bool)

(assert (=> b!6163045 (= e!3754817 call!513400)))

(declare-fun bm!513394 () Bool)

(assert (=> bm!513394 (= call!513399 call!513398)))

(declare-fun b!6163046 () Bool)

(declare-fun e!3754819 () Bool)

(assert (=> b!6163046 (= e!3754819 e!3754817)))

(declare-fun res!2551991 () Bool)

(assert (=> b!6163046 (=> (not res!2551991) (not e!3754817))))

(assert (=> b!6163046 (= res!2551991 call!513399)))

(declare-fun b!6163047 () Bool)

(declare-fun e!3754818 () Bool)

(assert (=> b!6163047 (= e!3754818 call!513398)))

(declare-fun d!1931262 () Bool)

(declare-fun res!2551992 () Bool)

(declare-fun e!3754814 () Bool)

(assert (=> d!1931262 (=> res!2551992 e!3754814)))

(assert (=> d!1931262 (= res!2551992 ((_ is ElementMatch!16105) lt!2336194))))

(assert (=> d!1931262 (= (validRegex!7841 lt!2336194) e!3754814)))

(declare-fun b!6163048 () Bool)

(assert (=> b!6163048 (= e!3754814 e!3754816)))

(assert (=> b!6163048 (= c!1110096 ((_ is Star!16105) lt!2336194))))

(declare-fun b!6163049 () Bool)

(assert (=> b!6163049 (= e!3754816 e!3754818)))

(declare-fun res!2551994 () Bool)

(assert (=> b!6163049 (= res!2551994 (not (nullable!6098 (reg!16434 lt!2336194))))))

(assert (=> b!6163049 (=> (not res!2551994) (not e!3754818))))

(declare-fun b!6163050 () Bool)

(declare-fun res!2551995 () Bool)

(assert (=> b!6163050 (=> res!2551995 e!3754819)))

(assert (=> b!6163050 (= res!2551995 (not ((_ is Concat!24950) lt!2336194)))))

(assert (=> b!6163050 (= e!3754820 e!3754819)))

(declare-fun bm!513395 () Bool)

(assert (=> bm!513395 (= call!513400 (validRegex!7841 (ite c!1110097 (regTwo!32723 lt!2336194) (regTwo!32722 lt!2336194))))))

(assert (= (and d!1931262 (not res!2551992)) b!6163048))

(assert (= (and b!6163048 c!1110096) b!6163049))

(assert (= (and b!6163048 (not c!1110096)) b!6163043))

(assert (= (and b!6163049 res!2551994) b!6163047))

(assert (= (and b!6163043 c!1110097) b!6163042))

(assert (= (and b!6163043 (not c!1110097)) b!6163050))

(assert (= (and b!6163042 res!2551993) b!6163044))

(assert (= (and b!6163050 (not res!2551995)) b!6163046))

(assert (= (and b!6163046 res!2551991) b!6163045))

(assert (= (or b!6163044 b!6163045) bm!513395))

(assert (= (or b!6163042 b!6163046) bm!513394))

(assert (= (or b!6163047 bm!513394) bm!513393))

(declare-fun m!7000778 () Bool)

(assert (=> bm!513393 m!7000778))

(declare-fun m!7000780 () Bool)

(assert (=> b!6163049 m!7000780))

(declare-fun m!7000782 () Bool)

(assert (=> bm!513395 m!7000782))

(assert (=> d!1931164 d!1931262))

(assert (=> d!1931164 d!1931232))

(assert (=> d!1931164 d!1931234))

(declare-fun b!6163051 () Bool)

(declare-fun res!2551999 () Bool)

(declare-fun e!3754823 () Bool)

(assert (=> b!6163051 (=> (not res!2551999) (not e!3754823))))

(declare-fun call!513401 () Bool)

(assert (=> b!6163051 (= res!2551999 (not call!513401))))

(declare-fun b!6163052 () Bool)

(declare-fun e!3754821 () Bool)

(declare-fun e!3754824 () Bool)

(assert (=> b!6163052 (= e!3754821 e!3754824)))

(declare-fun c!1110099 () Bool)

(assert (=> b!6163052 (= c!1110099 ((_ is EmptyLang!16105) (regTwo!32722 r!7292)))))

(declare-fun b!6163053 () Bool)

(declare-fun e!3754825 () Bool)

(assert (=> b!6163053 (= e!3754825 (not (= (head!12731 (_2!36387 (get!22259 lt!2336181))) (c!1109850 (regTwo!32722 r!7292)))))))

(declare-fun b!6163054 () Bool)

(declare-fun res!2551998 () Bool)

(assert (=> b!6163054 (=> res!2551998 e!3754825)))

(assert (=> b!6163054 (= res!2551998 (not (isEmpty!36465 (tail!11816 (_2!36387 (get!22259 lt!2336181))))))))

(declare-fun b!6163055 () Bool)

(declare-fun e!3754826 () Bool)

(assert (=> b!6163055 (= e!3754826 e!3754825)))

(declare-fun res!2552001 () Bool)

(assert (=> b!6163055 (=> res!2552001 e!3754825)))

(assert (=> b!6163055 (= res!2552001 call!513401)))

(declare-fun b!6163056 () Bool)

(declare-fun lt!2336225 () Bool)

(assert (=> b!6163056 (= e!3754824 (not lt!2336225))))

(declare-fun b!6163057 () Bool)

(declare-fun e!3754827 () Bool)

(assert (=> b!6163057 (= e!3754827 e!3754826)))

(declare-fun res!2551997 () Bool)

(assert (=> b!6163057 (=> (not res!2551997) (not e!3754826))))

(assert (=> b!6163057 (= res!2551997 (not lt!2336225))))

(declare-fun b!6163058 () Bool)

(declare-fun res!2551996 () Bool)

(assert (=> b!6163058 (=> (not res!2551996) (not e!3754823))))

(assert (=> b!6163058 (= res!2551996 (isEmpty!36465 (tail!11816 (_2!36387 (get!22259 lt!2336181)))))))

(declare-fun b!6163059 () Bool)

(assert (=> b!6163059 (= e!3754823 (= (head!12731 (_2!36387 (get!22259 lt!2336181))) (c!1109850 (regTwo!32722 r!7292))))))

(declare-fun b!6163060 () Bool)

(declare-fun res!2552003 () Bool)

(assert (=> b!6163060 (=> res!2552003 e!3754827)))

(assert (=> b!6163060 (= res!2552003 e!3754823)))

(declare-fun res!2552002 () Bool)

(assert (=> b!6163060 (=> (not res!2552002) (not e!3754823))))

(assert (=> b!6163060 (= res!2552002 lt!2336225)))

(declare-fun b!6163061 () Bool)

(declare-fun e!3754822 () Bool)

(assert (=> b!6163061 (= e!3754822 (matchR!8288 (derivativeStep!4825 (regTwo!32722 r!7292) (head!12731 (_2!36387 (get!22259 lt!2336181)))) (tail!11816 (_2!36387 (get!22259 lt!2336181)))))))

(declare-fun b!6163062 () Bool)

(assert (=> b!6163062 (= e!3754821 (= lt!2336225 call!513401))))

(declare-fun d!1931264 () Bool)

(assert (=> d!1931264 e!3754821))

(declare-fun c!1110098 () Bool)

(assert (=> d!1931264 (= c!1110098 ((_ is EmptyExpr!16105) (regTwo!32722 r!7292)))))

(assert (=> d!1931264 (= lt!2336225 e!3754822)))

(declare-fun c!1110100 () Bool)

(assert (=> d!1931264 (= c!1110100 (isEmpty!36465 (_2!36387 (get!22259 lt!2336181))))))

(assert (=> d!1931264 (validRegex!7841 (regTwo!32722 r!7292))))

(assert (=> d!1931264 (= (matchR!8288 (regTwo!32722 r!7292) (_2!36387 (get!22259 lt!2336181))) lt!2336225)))

(declare-fun bm!513396 () Bool)

(assert (=> bm!513396 (= call!513401 (isEmpty!36465 (_2!36387 (get!22259 lt!2336181))))))

(declare-fun b!6163063 () Bool)

(assert (=> b!6163063 (= e!3754822 (nullable!6098 (regTwo!32722 r!7292)))))

(declare-fun b!6163064 () Bool)

(declare-fun res!2552000 () Bool)

(assert (=> b!6163064 (=> res!2552000 e!3754827)))

(assert (=> b!6163064 (= res!2552000 (not ((_ is ElementMatch!16105) (regTwo!32722 r!7292))))))

(assert (=> b!6163064 (= e!3754824 e!3754827)))

(assert (= (and d!1931264 c!1110100) b!6163063))

(assert (= (and d!1931264 (not c!1110100)) b!6163061))

(assert (= (and d!1931264 c!1110098) b!6163062))

(assert (= (and d!1931264 (not c!1110098)) b!6163052))

(assert (= (and b!6163052 c!1110099) b!6163056))

(assert (= (and b!6163052 (not c!1110099)) b!6163064))

(assert (= (and b!6163064 (not res!2552000)) b!6163060))

(assert (= (and b!6163060 res!2552002) b!6163051))

(assert (= (and b!6163051 res!2551999) b!6163058))

(assert (= (and b!6163058 res!2551996) b!6163059))

(assert (= (and b!6163060 (not res!2552003)) b!6163057))

(assert (= (and b!6163057 res!2551997) b!6163055))

(assert (= (and b!6163055 (not res!2552001)) b!6163054))

(assert (= (and b!6163054 (not res!2551998)) b!6163053))

(assert (= (or b!6163062 b!6163051 b!6163055) bm!513396))

(declare-fun m!7000784 () Bool)

(assert (=> bm!513396 m!7000784))

(declare-fun m!7000786 () Bool)

(assert (=> b!6163053 m!7000786))

(assert (=> b!6163061 m!7000786))

(assert (=> b!6163061 m!7000786))

(declare-fun m!7000788 () Bool)

(assert (=> b!6163061 m!7000788))

(declare-fun m!7000790 () Bool)

(assert (=> b!6163061 m!7000790))

(assert (=> b!6163061 m!7000788))

(assert (=> b!6163061 m!7000790))

(declare-fun m!7000792 () Bool)

(assert (=> b!6163061 m!7000792))

(assert (=> d!1931264 m!7000784))

(declare-fun m!7000794 () Bool)

(assert (=> d!1931264 m!7000794))

(assert (=> b!6163059 m!7000786))

(assert (=> b!6163058 m!7000790))

(assert (=> b!6163058 m!7000790))

(declare-fun m!7000796 () Bool)

(assert (=> b!6163058 m!7000796))

(assert (=> b!6163054 m!7000790))

(assert (=> b!6163054 m!7000790))

(assert (=> b!6163054 m!7000796))

(declare-fun m!7000798 () Bool)

(assert (=> b!6163063 m!7000798))

(assert (=> b!6162630 d!1931264))

(declare-fun d!1931266 () Bool)

(assert (=> d!1931266 (= (get!22259 lt!2336181) (v!52134 lt!2336181))))

(assert (=> b!6162630 d!1931266))

(assert (=> d!1931218 d!1931220))

(assert (=> d!1931218 d!1931206))

(declare-fun e!3754830 () Bool)

(declare-fun d!1931268 () Bool)

(assert (=> d!1931268 (= (matchZipper!2117 ((_ map or) lt!2336113 lt!2336092) (t!378112 s!2326)) e!3754830)))

(declare-fun res!2552006 () Bool)

(assert (=> d!1931268 (=> res!2552006 e!3754830)))

(assert (=> d!1931268 (= res!2552006 (matchZipper!2117 lt!2336113 (t!378112 s!2326)))))

(assert (=> d!1931268 true))

(declare-fun _$48!1743 () Unit!157619)

(assert (=> d!1931268 (= (choose!45822 lt!2336113 lt!2336092 (t!378112 s!2326)) _$48!1743)))

(declare-fun b!6163067 () Bool)

(assert (=> b!6163067 (= e!3754830 (matchZipper!2117 lt!2336092 (t!378112 s!2326)))))

(assert (= (and d!1931268 (not res!2552006)) b!6163067))

(assert (=> d!1931268 m!7000152))

(assert (=> d!1931268 m!7000110))

(assert (=> b!6163067 m!7000044))

(assert (=> d!1931218 d!1931268))

(declare-fun b!6163068 () Bool)

(declare-fun e!3754831 () (InoxSet Context!10978))

(declare-fun call!513402 () (InoxSet Context!10978))

(assert (=> b!6163068 (= e!3754831 ((_ map or) call!513402 (derivationStepZipperUp!1279 (Context!10979 (t!378113 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336120)))))) (h!70938 s!2326))))))

(declare-fun d!1931270 () Bool)

(declare-fun c!1110102 () Bool)

(declare-fun e!3754832 () Bool)

(assert (=> d!1931270 (= c!1110102 e!3754832)))

(declare-fun res!2552007 () Bool)

(assert (=> d!1931270 (=> (not res!2552007) (not e!3754832))))

(assert (=> d!1931270 (= res!2552007 ((_ is Cons!64491) (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336120))))))))

(assert (=> d!1931270 (= (derivationStepZipperUp!1279 (Context!10979 (t!378113 (exprs!5989 lt!2336120))) (h!70938 s!2326)) e!3754831)))

(declare-fun b!6163069 () Bool)

(declare-fun e!3754833 () (InoxSet Context!10978))

(assert (=> b!6163069 (= e!3754831 e!3754833)))

(declare-fun c!1110101 () Bool)

(assert (=> b!6163069 (= c!1110101 ((_ is Cons!64491) (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336120))))))))

(declare-fun bm!513397 () Bool)

(assert (=> bm!513397 (= call!513402 (derivationStepZipperDown!1353 (h!70939 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336120))))) (Context!10979 (t!378113 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336120)))))) (h!70938 s!2326)))))

(declare-fun b!6163070 () Bool)

(assert (=> b!6163070 (= e!3754833 ((as const (Array Context!10978 Bool)) false))))

(declare-fun b!6163071 () Bool)

(assert (=> b!6163071 (= e!3754833 call!513402)))

(declare-fun b!6163072 () Bool)

(assert (=> b!6163072 (= e!3754832 (nullable!6098 (h!70939 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336120)))))))))

(assert (= (and d!1931270 res!2552007) b!6163072))

(assert (= (and d!1931270 c!1110102) b!6163068))

(assert (= (and d!1931270 (not c!1110102)) b!6163069))

(assert (= (and b!6163069 c!1110101) b!6163071))

(assert (= (and b!6163069 (not c!1110101)) b!6163070))

(assert (= (or b!6163068 b!6163071) bm!513397))

(declare-fun m!7000800 () Bool)

(assert (=> b!6163068 m!7000800))

(declare-fun m!7000802 () Bool)

(assert (=> bm!513397 m!7000802))

(declare-fun m!7000804 () Bool)

(assert (=> b!6163072 m!7000804))

(assert (=> b!6162723 d!1931270))

(assert (=> d!1931206 d!1931260))

(declare-fun d!1931272 () Bool)

(assert (=> d!1931272 (= (head!12732 (exprs!5989 (h!70940 zl!343))) (h!70939 (exprs!5989 (h!70940 zl!343))))))

(assert (=> b!6162713 d!1931272))

(declare-fun b!6163073 () Bool)

(declare-fun e!3754835 () (InoxSet Context!10978))

(declare-fun call!513403 () (InoxSet Context!10978))

(assert (=> b!6163073 (= e!3754835 call!513403)))

(declare-fun c!1110107 () Bool)

(declare-fun c!1110106 () Bool)

(declare-fun c!1110104 () Bool)

(declare-fun call!513408 () List!64615)

(declare-fun bm!513398 () Bool)

(declare-fun call!513404 () (InoxSet Context!10978))

(assert (=> bm!513398 (= call!513404 (derivationStepZipperDown!1353 (ite c!1110104 (regOne!32723 (ite c!1110021 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))))) (ite c!1110106 (regTwo!32722 (ite c!1110021 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))))) (ite c!1110107 (regOne!32722 (ite c!1110021 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))))) (reg!16434 (ite c!1110021 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343))))))))) (ite (or c!1110104 c!1110106) (ite c!1110021 lt!2336120 (Context!10979 call!513356)) (Context!10979 call!513408)) (h!70938 s!2326)))))

(declare-fun b!6163074 () Bool)

(declare-fun c!1110105 () Bool)

(assert (=> b!6163074 (= c!1110105 ((_ is Star!16105) (ite c!1110021 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))))))))

(declare-fun e!3754838 () (InoxSet Context!10978))

(assert (=> b!6163074 (= e!3754838 e!3754835)))

(declare-fun b!6163075 () Bool)

(declare-fun e!3754837 () (InoxSet Context!10978))

(declare-fun e!3754834 () (InoxSet Context!10978))

(assert (=> b!6163075 (= e!3754837 e!3754834)))

(assert (=> b!6163075 (= c!1110104 ((_ is Union!16105) (ite c!1110021 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))))))))

(declare-fun b!6163076 () Bool)

(declare-fun e!3754839 () (InoxSet Context!10978))

(assert (=> b!6163076 (= e!3754839 e!3754838)))

(assert (=> b!6163076 (= c!1110107 ((_ is Concat!24950) (ite c!1110021 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))))))))

(declare-fun b!6163077 () Bool)

(assert (=> b!6163077 (= e!3754835 ((as const (Array Context!10978 Bool)) false))))

(declare-fun bm!513399 () Bool)

(declare-fun call!513406 () List!64615)

(assert (=> bm!513399 (= call!513408 call!513406)))

(declare-fun bm!513400 () Bool)

(assert (=> bm!513400 (= call!513406 ($colon$colon!1982 (exprs!5989 (ite c!1110021 lt!2336120 (Context!10979 call!513356))) (ite (or c!1110106 c!1110107) (regTwo!32722 (ite c!1110021 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))))) (ite c!1110021 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343))))))))))

(declare-fun call!513407 () (InoxSet Context!10978))

(declare-fun bm!513401 () Bool)

(assert (=> bm!513401 (= call!513407 (derivationStepZipperDown!1353 (ite c!1110104 (regTwo!32723 (ite c!1110021 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))))) (regOne!32722 (ite c!1110021 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343))))))) (ite c!1110104 (ite c!1110021 lt!2336120 (Context!10979 call!513356)) (Context!10979 call!513406)) (h!70938 s!2326)))))

(declare-fun b!6163078 () Bool)

(assert (=> b!6163078 (= e!3754837 (store ((as const (Array Context!10978 Bool)) false) (ite c!1110021 lt!2336120 (Context!10979 call!513356)) true))))

(declare-fun b!6163079 () Bool)

(declare-fun e!3754836 () Bool)

(assert (=> b!6163079 (= c!1110106 e!3754836)))

(declare-fun res!2552008 () Bool)

(assert (=> b!6163079 (=> (not res!2552008) (not e!3754836))))

(assert (=> b!6163079 (= res!2552008 ((_ is Concat!24950) (ite c!1110021 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))))))))

(assert (=> b!6163079 (= e!3754834 e!3754839)))

(declare-fun d!1931274 () Bool)

(declare-fun c!1110103 () Bool)

(assert (=> d!1931274 (= c!1110103 (and ((_ is ElementMatch!16105) (ite c!1110021 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))))) (= (c!1109850 (ite c!1110021 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))))) (h!70938 s!2326))))))

(assert (=> d!1931274 (= (derivationStepZipperDown!1353 (ite c!1110021 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343))))) (ite c!1110021 lt!2336120 (Context!10979 call!513356)) (h!70938 s!2326)) e!3754837)))

(declare-fun b!6163080 () Bool)

(assert (=> b!6163080 (= e!3754834 ((_ map or) call!513404 call!513407))))

(declare-fun bm!513402 () Bool)

(declare-fun call!513405 () (InoxSet Context!10978))

(assert (=> bm!513402 (= call!513403 call!513405)))

(declare-fun b!6163081 () Bool)

(assert (=> b!6163081 (= e!3754838 call!513403)))

(declare-fun b!6163082 () Bool)

(assert (=> b!6163082 (= e!3754839 ((_ map or) call!513407 call!513405))))

(declare-fun bm!513403 () Bool)

(assert (=> bm!513403 (= call!513405 call!513404)))

(declare-fun b!6163083 () Bool)

(assert (=> b!6163083 (= e!3754836 (nullable!6098 (regOne!32722 (ite c!1110021 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343))))))))))

(assert (= (and d!1931274 c!1110103) b!6163078))

(assert (= (and d!1931274 (not c!1110103)) b!6163075))

(assert (= (and b!6163075 c!1110104) b!6163080))

(assert (= (and b!6163075 (not c!1110104)) b!6163079))

(assert (= (and b!6163079 res!2552008) b!6163083))

(assert (= (and b!6163079 c!1110106) b!6163082))

(assert (= (and b!6163079 (not c!1110106)) b!6163076))

(assert (= (and b!6163076 c!1110107) b!6163081))

(assert (= (and b!6163076 (not c!1110107)) b!6163074))

(assert (= (and b!6163074 c!1110105) b!6163073))

(assert (= (and b!6163074 (not c!1110105)) b!6163077))

(assert (= (or b!6163081 b!6163073) bm!513399))

(assert (= (or b!6163081 b!6163073) bm!513402))

(assert (= (or b!6163082 bm!513399) bm!513400))

(assert (= (or b!6163082 bm!513402) bm!513403))

(assert (= (or b!6163080 b!6163082) bm!513401))

(assert (= (or b!6163080 bm!513403) bm!513398))

(declare-fun m!7000806 () Bool)

(assert (=> bm!513398 m!7000806))

(declare-fun m!7000808 () Bool)

(assert (=> b!6163083 m!7000808))

(declare-fun m!7000810 () Bool)

(assert (=> bm!513400 m!7000810))

(declare-fun m!7000812 () Bool)

(assert (=> b!6163078 m!7000812))

(declare-fun m!7000814 () Bool)

(assert (=> bm!513401 m!7000814))

(assert (=> bm!513351 d!1931274))

(assert (=> d!1931220 d!1931260))

(assert (=> d!1931176 d!1931254))

(declare-fun d!1931276 () Bool)

(assert (=> d!1931276 (= (isEmpty!36464 (findConcatSeparation!2410 (regOne!32722 r!7292) (regTwo!32722 r!7292) Nil!64490 s!2326 s!2326)) (not ((_ is Some!15995) (findConcatSeparation!2410 (regOne!32722 r!7292) (regTwo!32722 r!7292) Nil!64490 s!2326 s!2326))))))

(assert (=> d!1931146 d!1931276))

(declare-fun d!1931278 () Bool)

(declare-fun c!1110108 () Bool)

(assert (=> d!1931278 (= c!1110108 (isEmpty!36465 (tail!11816 (t!378112 s!2326))))))

(declare-fun e!3754840 () Bool)

(assert (=> d!1931278 (= (matchZipper!2117 (derivationStepZipper!2078 lt!2336112 (head!12731 (t!378112 s!2326))) (tail!11816 (t!378112 s!2326))) e!3754840)))

(declare-fun b!6163084 () Bool)

(assert (=> b!6163084 (= e!3754840 (nullableZipper!1886 (derivationStepZipper!2078 lt!2336112 (head!12731 (t!378112 s!2326)))))))

(declare-fun b!6163085 () Bool)

(assert (=> b!6163085 (= e!3754840 (matchZipper!2117 (derivationStepZipper!2078 (derivationStepZipper!2078 lt!2336112 (head!12731 (t!378112 s!2326))) (head!12731 (tail!11816 (t!378112 s!2326)))) (tail!11816 (tail!11816 (t!378112 s!2326)))))))

(assert (= (and d!1931278 c!1110108) b!6163084))

(assert (= (and d!1931278 (not c!1110108)) b!6163085))

(assert (=> d!1931278 m!7000504))

(declare-fun m!7000816 () Bool)

(assert (=> d!1931278 m!7000816))

(assert (=> b!6163084 m!7000510))

(declare-fun m!7000818 () Bool)

(assert (=> b!6163084 m!7000818))

(assert (=> b!6163085 m!7000504))

(declare-fun m!7000820 () Bool)

(assert (=> b!6163085 m!7000820))

(assert (=> b!6163085 m!7000510))

(assert (=> b!6163085 m!7000820))

(declare-fun m!7000822 () Bool)

(assert (=> b!6163085 m!7000822))

(assert (=> b!6163085 m!7000504))

(declare-fun m!7000824 () Bool)

(assert (=> b!6163085 m!7000824))

(assert (=> b!6163085 m!7000822))

(assert (=> b!6163085 m!7000824))

(declare-fun m!7000826 () Bool)

(assert (=> b!6163085 m!7000826))

(assert (=> b!6162655 d!1931278))

(declare-fun bs!1527479 () Bool)

(declare-fun d!1931280 () Bool)

(assert (= bs!1527479 (and d!1931280 b!6162172)))

(declare-fun lambda!336364 () Int)

(assert (=> bs!1527479 (= (= (head!12731 (t!378112 s!2326)) (h!70938 s!2326)) (= lambda!336364 lambda!336301))))

(assert (=> d!1931280 true))

(assert (=> d!1931280 (= (derivationStepZipper!2078 lt!2336112 (head!12731 (t!378112 s!2326))) (flatMap!1610 lt!2336112 lambda!336364))))

(declare-fun bs!1527480 () Bool)

(assert (= bs!1527480 d!1931280))

(declare-fun m!7000828 () Bool)

(assert (=> bs!1527480 m!7000828))

(assert (=> b!6162655 d!1931280))

(declare-fun d!1931282 () Bool)

(assert (=> d!1931282 (= (head!12731 (t!378112 s!2326)) (h!70938 (t!378112 s!2326)))))

(assert (=> b!6162655 d!1931282))

(declare-fun d!1931284 () Bool)

(assert (=> d!1931284 (= (tail!11816 (t!378112 s!2326)) (t!378112 (t!378112 s!2326)))))

(assert (=> b!6162655 d!1931284))

(declare-fun b!6163088 () Bool)

(declare-fun res!2552012 () Bool)

(declare-fun e!3754843 () Bool)

(assert (=> b!6163088 (=> (not res!2552012) (not e!3754843))))

(declare-fun call!513409 () Bool)

(assert (=> b!6163088 (= res!2552012 (not call!513409))))

(declare-fun b!6163089 () Bool)

(declare-fun e!3754841 () Bool)

(declare-fun e!3754844 () Bool)

(assert (=> b!6163089 (= e!3754841 e!3754844)))

(declare-fun c!1110112 () Bool)

(assert (=> b!6163089 (= c!1110112 ((_ is EmptyLang!16105) (regOne!32722 r!7292)))))

(declare-fun b!6163090 () Bool)

(declare-fun e!3754845 () Bool)

(assert (=> b!6163090 (= e!3754845 (not (= (head!12731 (_1!36387 (get!22259 lt!2336181))) (c!1109850 (regOne!32722 r!7292)))))))

(declare-fun b!6163091 () Bool)

(declare-fun res!2552011 () Bool)

(assert (=> b!6163091 (=> res!2552011 e!3754845)))

(assert (=> b!6163091 (= res!2552011 (not (isEmpty!36465 (tail!11816 (_1!36387 (get!22259 lt!2336181))))))))

(declare-fun b!6163092 () Bool)

(declare-fun e!3754846 () Bool)

(assert (=> b!6163092 (= e!3754846 e!3754845)))

(declare-fun res!2552014 () Bool)

(assert (=> b!6163092 (=> res!2552014 e!3754845)))

(assert (=> b!6163092 (= res!2552014 call!513409)))

(declare-fun b!6163093 () Bool)

(declare-fun lt!2336226 () Bool)

(assert (=> b!6163093 (= e!3754844 (not lt!2336226))))

(declare-fun b!6163094 () Bool)

(declare-fun e!3754847 () Bool)

(assert (=> b!6163094 (= e!3754847 e!3754846)))

(declare-fun res!2552010 () Bool)

(assert (=> b!6163094 (=> (not res!2552010) (not e!3754846))))

(assert (=> b!6163094 (= res!2552010 (not lt!2336226))))

(declare-fun b!6163095 () Bool)

(declare-fun res!2552009 () Bool)

(assert (=> b!6163095 (=> (not res!2552009) (not e!3754843))))

(assert (=> b!6163095 (= res!2552009 (isEmpty!36465 (tail!11816 (_1!36387 (get!22259 lt!2336181)))))))

(declare-fun b!6163096 () Bool)

(assert (=> b!6163096 (= e!3754843 (= (head!12731 (_1!36387 (get!22259 lt!2336181))) (c!1109850 (regOne!32722 r!7292))))))

(declare-fun b!6163097 () Bool)

(declare-fun res!2552016 () Bool)

(assert (=> b!6163097 (=> res!2552016 e!3754847)))

(assert (=> b!6163097 (= res!2552016 e!3754843)))

(declare-fun res!2552015 () Bool)

(assert (=> b!6163097 (=> (not res!2552015) (not e!3754843))))

(assert (=> b!6163097 (= res!2552015 lt!2336226)))

(declare-fun b!6163098 () Bool)

(declare-fun e!3754842 () Bool)

(assert (=> b!6163098 (= e!3754842 (matchR!8288 (derivativeStep!4825 (regOne!32722 r!7292) (head!12731 (_1!36387 (get!22259 lt!2336181)))) (tail!11816 (_1!36387 (get!22259 lt!2336181)))))))

(declare-fun b!6163099 () Bool)

(assert (=> b!6163099 (= e!3754841 (= lt!2336226 call!513409))))

(declare-fun d!1931286 () Bool)

(assert (=> d!1931286 e!3754841))

(declare-fun c!1110111 () Bool)

(assert (=> d!1931286 (= c!1110111 ((_ is EmptyExpr!16105) (regOne!32722 r!7292)))))

(assert (=> d!1931286 (= lt!2336226 e!3754842)))

(declare-fun c!1110113 () Bool)

(assert (=> d!1931286 (= c!1110113 (isEmpty!36465 (_1!36387 (get!22259 lt!2336181))))))

(assert (=> d!1931286 (validRegex!7841 (regOne!32722 r!7292))))

(assert (=> d!1931286 (= (matchR!8288 (regOne!32722 r!7292) (_1!36387 (get!22259 lt!2336181))) lt!2336226)))

(declare-fun bm!513404 () Bool)

(assert (=> bm!513404 (= call!513409 (isEmpty!36465 (_1!36387 (get!22259 lt!2336181))))))

(declare-fun b!6163100 () Bool)

(assert (=> b!6163100 (= e!3754842 (nullable!6098 (regOne!32722 r!7292)))))

(declare-fun b!6163101 () Bool)

(declare-fun res!2552013 () Bool)

(assert (=> b!6163101 (=> res!2552013 e!3754847)))

(assert (=> b!6163101 (= res!2552013 (not ((_ is ElementMatch!16105) (regOne!32722 r!7292))))))

(assert (=> b!6163101 (= e!3754844 e!3754847)))

(assert (= (and d!1931286 c!1110113) b!6163100))

(assert (= (and d!1931286 (not c!1110113)) b!6163098))

(assert (= (and d!1931286 c!1110111) b!6163099))

(assert (= (and d!1931286 (not c!1110111)) b!6163089))

(assert (= (and b!6163089 c!1110112) b!6163093))

(assert (= (and b!6163089 (not c!1110112)) b!6163101))

(assert (= (and b!6163101 (not res!2552013)) b!6163097))

(assert (= (and b!6163097 res!2552015) b!6163088))

(assert (= (and b!6163088 res!2552012) b!6163095))

(assert (= (and b!6163095 res!2552009) b!6163096))

(assert (= (and b!6163097 (not res!2552016)) b!6163094))

(assert (= (and b!6163094 res!2552010) b!6163092))

(assert (= (and b!6163092 (not res!2552014)) b!6163091))

(assert (= (and b!6163091 (not res!2552011)) b!6163090))

(assert (= (or b!6163099 b!6163088 b!6163092) bm!513404))

(declare-fun m!7000830 () Bool)

(assert (=> bm!513404 m!7000830))

(declare-fun m!7000832 () Bool)

(assert (=> b!6163090 m!7000832))

(assert (=> b!6163098 m!7000832))

(assert (=> b!6163098 m!7000832))

(declare-fun m!7000834 () Bool)

(assert (=> b!6163098 m!7000834))

(declare-fun m!7000836 () Bool)

(assert (=> b!6163098 m!7000836))

(assert (=> b!6163098 m!7000834))

(assert (=> b!6163098 m!7000836))

(declare-fun m!7000838 () Bool)

(assert (=> b!6163098 m!7000838))

(assert (=> d!1931286 m!7000830))

(assert (=> d!1931286 m!7000464))

(assert (=> b!6163096 m!7000832))

(assert (=> b!6163095 m!7000836))

(assert (=> b!6163095 m!7000836))

(declare-fun m!7000840 () Bool)

(assert (=> b!6163095 m!7000840))

(assert (=> b!6163091 m!7000836))

(assert (=> b!6163091 m!7000836))

(assert (=> b!6163091 m!7000840))

(declare-fun m!7000842 () Bool)

(assert (=> b!6163100 m!7000842))

(assert (=> b!6162634 d!1931286))

(assert (=> b!6162634 d!1931266))

(declare-fun d!1931288 () Bool)

(declare-fun lambda!336367 () Int)

(declare-fun exists!2449 ((InoxSet Context!10978) Int) Bool)

(assert (=> d!1931288 (= (nullableZipper!1886 ((_ map or) lt!2336090 lt!2336092)) (exists!2449 ((_ map or) lt!2336090 lt!2336092) lambda!336367))))

(declare-fun bs!1527481 () Bool)

(assert (= bs!1527481 d!1931288))

(declare-fun m!7000844 () Bool)

(assert (=> bs!1527481 m!7000844))

(assert (=> b!6162721 d!1931288))

(assert (=> b!6162718 d!1931158))

(declare-fun d!1931290 () Bool)

(declare-fun c!1110116 () Bool)

(assert (=> d!1931290 (= c!1110116 (isEmpty!36465 (tail!11816 (t!378112 s!2326))))))

(declare-fun e!3754848 () Bool)

(assert (=> d!1931290 (= (matchZipper!2117 (derivationStepZipper!2078 ((_ map or) lt!2336112 lt!2336092) (head!12731 (t!378112 s!2326))) (tail!11816 (t!378112 s!2326))) e!3754848)))

(declare-fun b!6163102 () Bool)

(assert (=> b!6163102 (= e!3754848 (nullableZipper!1886 (derivationStepZipper!2078 ((_ map or) lt!2336112 lt!2336092) (head!12731 (t!378112 s!2326)))))))

(declare-fun b!6163103 () Bool)

(assert (=> b!6163103 (= e!3754848 (matchZipper!2117 (derivationStepZipper!2078 (derivationStepZipper!2078 ((_ map or) lt!2336112 lt!2336092) (head!12731 (t!378112 s!2326))) (head!12731 (tail!11816 (t!378112 s!2326)))) (tail!11816 (tail!11816 (t!378112 s!2326)))))))

(assert (= (and d!1931290 c!1110116) b!6163102))

(assert (= (and d!1931290 (not c!1110116)) b!6163103))

(assert (=> d!1931290 m!7000504))

(assert (=> d!1931290 m!7000816))

(assert (=> b!6163102 m!7000534))

(declare-fun m!7000846 () Bool)

(assert (=> b!6163102 m!7000846))

(assert (=> b!6163103 m!7000504))

(assert (=> b!6163103 m!7000820))

(assert (=> b!6163103 m!7000534))

(assert (=> b!6163103 m!7000820))

(declare-fun m!7000848 () Bool)

(assert (=> b!6163103 m!7000848))

(assert (=> b!6163103 m!7000504))

(assert (=> b!6163103 m!7000824))

(assert (=> b!6163103 m!7000848))

(assert (=> b!6163103 m!7000824))

(declare-fun m!7000850 () Bool)

(assert (=> b!6163103 m!7000850))

(assert (=> b!6162665 d!1931290))

(declare-fun bs!1527482 () Bool)

(declare-fun d!1931292 () Bool)

(assert (= bs!1527482 (and d!1931292 b!6162172)))

(declare-fun lambda!336368 () Int)

(assert (=> bs!1527482 (= (= (head!12731 (t!378112 s!2326)) (h!70938 s!2326)) (= lambda!336368 lambda!336301))))

(declare-fun bs!1527483 () Bool)

(assert (= bs!1527483 (and d!1931292 d!1931280)))

(assert (=> bs!1527483 (= lambda!336368 lambda!336364)))

(assert (=> d!1931292 true))

(assert (=> d!1931292 (= (derivationStepZipper!2078 ((_ map or) lt!2336112 lt!2336092) (head!12731 (t!378112 s!2326))) (flatMap!1610 ((_ map or) lt!2336112 lt!2336092) lambda!336368))))

(declare-fun bs!1527484 () Bool)

(assert (= bs!1527484 d!1931292))

(declare-fun m!7000852 () Bool)

(assert (=> bs!1527484 m!7000852))

(assert (=> b!6162665 d!1931292))

(assert (=> b!6162665 d!1931282))

(assert (=> b!6162665 d!1931284))

(assert (=> bm!513362 d!1931254))

(declare-fun b!6163118 () Bool)

(declare-fun e!3754864 () Bool)

(declare-fun e!3754863 () Bool)

(assert (=> b!6163118 (= e!3754864 e!3754863)))

(declare-fun res!2552029 () Bool)

(declare-fun call!513415 () Bool)

(assert (=> b!6163118 (= res!2552029 call!513415)))

(assert (=> b!6163118 (=> (not res!2552029) (not e!3754863))))

(declare-fun b!6163119 () Bool)

(declare-fun e!3754862 () Bool)

(declare-fun call!513414 () Bool)

(assert (=> b!6163119 (= e!3754862 call!513414)))

(declare-fun b!6163120 () Bool)

(declare-fun e!3754866 () Bool)

(assert (=> b!6163120 (= e!3754866 e!3754864)))

(declare-fun c!1110119 () Bool)

(assert (=> b!6163120 (= c!1110119 ((_ is Union!16105) (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun bm!513409 () Bool)

(assert (=> bm!513409 (= call!513414 (nullable!6098 (ite c!1110119 (regTwo!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))))))))

(declare-fun b!6163122 () Bool)

(declare-fun e!3754865 () Bool)

(assert (=> b!6163122 (= e!3754865 e!3754866)))

(declare-fun res!2552030 () Bool)

(assert (=> b!6163122 (=> res!2552030 e!3754866)))

(assert (=> b!6163122 (= res!2552030 ((_ is Star!16105) (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun b!6163123 () Bool)

(assert (=> b!6163123 (= e!3754863 call!513414)))

(declare-fun d!1931294 () Bool)

(declare-fun res!2552031 () Bool)

(declare-fun e!3754861 () Bool)

(assert (=> d!1931294 (=> res!2552031 e!3754861)))

(assert (=> d!1931294 (= res!2552031 ((_ is EmptyExpr!16105) (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(assert (=> d!1931294 (= (nullableFct!2062 (h!70939 (exprs!5989 (h!70940 zl!343)))) e!3754861)))

(declare-fun b!6163121 () Bool)

(assert (=> b!6163121 (= e!3754861 e!3754865)))

(declare-fun res!2552028 () Bool)

(assert (=> b!6163121 (=> (not res!2552028) (not e!3754865))))

(assert (=> b!6163121 (= res!2552028 (and (not ((_ is EmptyLang!16105) (h!70939 (exprs!5989 (h!70940 zl!343))))) (not ((_ is ElementMatch!16105) (h!70939 (exprs!5989 (h!70940 zl!343)))))))))

(declare-fun bm!513410 () Bool)

(assert (=> bm!513410 (= call!513415 (nullable!6098 (ite c!1110119 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))))))))

(declare-fun b!6163124 () Bool)

(assert (=> b!6163124 (= e!3754864 e!3754862)))

(declare-fun res!2552027 () Bool)

(assert (=> b!6163124 (= res!2552027 call!513415)))

(assert (=> b!6163124 (=> res!2552027 e!3754862)))

(assert (= (and d!1931294 (not res!2552031)) b!6163121))

(assert (= (and b!6163121 res!2552028) b!6163122))

(assert (= (and b!6163122 (not res!2552030)) b!6163120))

(assert (= (and b!6163120 c!1110119) b!6163124))

(assert (= (and b!6163120 (not c!1110119)) b!6163118))

(assert (= (and b!6163124 (not res!2552027)) b!6163119))

(assert (= (and b!6163118 res!2552029) b!6163123))

(assert (= (or b!6163119 b!6163123) bm!513409))

(assert (= (or b!6163124 b!6163118) bm!513410))

(declare-fun m!7000854 () Bool)

(assert (=> bm!513409 m!7000854))

(declare-fun m!7000856 () Bool)

(assert (=> bm!513410 m!7000856))

(assert (=> d!1931194 d!1931294))

(declare-fun d!1931296 () Bool)

(assert (=> d!1931296 (= (isEmpty!36461 (t!378113 (unfocusZipperList!1526 zl!343))) ((_ is Nil!64491) (t!378113 (unfocusZipperList!1526 zl!343))))))

(assert (=> b!6162919 d!1931296))

(declare-fun b!6163125 () Bool)

(declare-fun e!3754868 () (InoxSet Context!10978))

(declare-fun call!513416 () (InoxSet Context!10978))

(assert (=> b!6163125 (= e!3754868 call!513416)))

(declare-fun c!1110121 () Bool)

(declare-fun bm!513411 () Bool)

(declare-fun call!513421 () List!64615)

(declare-fun call!513417 () (InoxSet Context!10978))

(declare-fun c!1110124 () Bool)

(declare-fun c!1110123 () Bool)

(assert (=> bm!513411 (= call!513417 (derivationStepZipperDown!1353 (ite c!1110121 (regOne!32723 (h!70939 (exprs!5989 lt!2336096))) (ite c!1110123 (regTwo!32722 (h!70939 (exprs!5989 lt!2336096))) (ite c!1110124 (regOne!32722 (h!70939 (exprs!5989 lt!2336096))) (reg!16434 (h!70939 (exprs!5989 lt!2336096)))))) (ite (or c!1110121 c!1110123) (Context!10979 (t!378113 (exprs!5989 lt!2336096))) (Context!10979 call!513421)) (h!70938 s!2326)))))

(declare-fun b!6163126 () Bool)

(declare-fun c!1110122 () Bool)

(assert (=> b!6163126 (= c!1110122 ((_ is Star!16105) (h!70939 (exprs!5989 lt!2336096))))))

(declare-fun e!3754871 () (InoxSet Context!10978))

(assert (=> b!6163126 (= e!3754871 e!3754868)))

(declare-fun b!6163127 () Bool)

(declare-fun e!3754870 () (InoxSet Context!10978))

(declare-fun e!3754867 () (InoxSet Context!10978))

(assert (=> b!6163127 (= e!3754870 e!3754867)))

(assert (=> b!6163127 (= c!1110121 ((_ is Union!16105) (h!70939 (exprs!5989 lt!2336096))))))

(declare-fun b!6163128 () Bool)

(declare-fun e!3754872 () (InoxSet Context!10978))

(assert (=> b!6163128 (= e!3754872 e!3754871)))

(assert (=> b!6163128 (= c!1110124 ((_ is Concat!24950) (h!70939 (exprs!5989 lt!2336096))))))

(declare-fun b!6163129 () Bool)

(assert (=> b!6163129 (= e!3754868 ((as const (Array Context!10978 Bool)) false))))

(declare-fun bm!513412 () Bool)

(declare-fun call!513419 () List!64615)

(assert (=> bm!513412 (= call!513421 call!513419)))

(declare-fun bm!513413 () Bool)

(assert (=> bm!513413 (= call!513419 ($colon$colon!1982 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336096)))) (ite (or c!1110123 c!1110124) (regTwo!32722 (h!70939 (exprs!5989 lt!2336096))) (h!70939 (exprs!5989 lt!2336096)))))))

(declare-fun call!513420 () (InoxSet Context!10978))

(declare-fun bm!513414 () Bool)

(assert (=> bm!513414 (= call!513420 (derivationStepZipperDown!1353 (ite c!1110121 (regTwo!32723 (h!70939 (exprs!5989 lt!2336096))) (regOne!32722 (h!70939 (exprs!5989 lt!2336096)))) (ite c!1110121 (Context!10979 (t!378113 (exprs!5989 lt!2336096))) (Context!10979 call!513419)) (h!70938 s!2326)))))

(declare-fun b!6163130 () Bool)

(assert (=> b!6163130 (= e!3754870 (store ((as const (Array Context!10978 Bool)) false) (Context!10979 (t!378113 (exprs!5989 lt!2336096))) true))))

(declare-fun b!6163131 () Bool)

(declare-fun e!3754869 () Bool)

(assert (=> b!6163131 (= c!1110123 e!3754869)))

(declare-fun res!2552032 () Bool)

(assert (=> b!6163131 (=> (not res!2552032) (not e!3754869))))

(assert (=> b!6163131 (= res!2552032 ((_ is Concat!24950) (h!70939 (exprs!5989 lt!2336096))))))

(assert (=> b!6163131 (= e!3754867 e!3754872)))

(declare-fun d!1931298 () Bool)

(declare-fun c!1110120 () Bool)

(assert (=> d!1931298 (= c!1110120 (and ((_ is ElementMatch!16105) (h!70939 (exprs!5989 lt!2336096))) (= (c!1109850 (h!70939 (exprs!5989 lt!2336096))) (h!70938 s!2326))))))

(assert (=> d!1931298 (= (derivationStepZipperDown!1353 (h!70939 (exprs!5989 lt!2336096)) (Context!10979 (t!378113 (exprs!5989 lt!2336096))) (h!70938 s!2326)) e!3754870)))

(declare-fun b!6163132 () Bool)

(assert (=> b!6163132 (= e!3754867 ((_ map or) call!513417 call!513420))))

(declare-fun bm!513415 () Bool)

(declare-fun call!513418 () (InoxSet Context!10978))

(assert (=> bm!513415 (= call!513416 call!513418)))

(declare-fun b!6163133 () Bool)

(assert (=> b!6163133 (= e!3754871 call!513416)))

(declare-fun b!6163134 () Bool)

(assert (=> b!6163134 (= e!3754872 ((_ map or) call!513420 call!513418))))

(declare-fun bm!513416 () Bool)

(assert (=> bm!513416 (= call!513418 call!513417)))

(declare-fun b!6163135 () Bool)

(assert (=> b!6163135 (= e!3754869 (nullable!6098 (regOne!32722 (h!70939 (exprs!5989 lt!2336096)))))))

(assert (= (and d!1931298 c!1110120) b!6163130))

(assert (= (and d!1931298 (not c!1110120)) b!6163127))

(assert (= (and b!6163127 c!1110121) b!6163132))

(assert (= (and b!6163127 (not c!1110121)) b!6163131))

(assert (= (and b!6163131 res!2552032) b!6163135))

(assert (= (and b!6163131 c!1110123) b!6163134))

(assert (= (and b!6163131 (not c!1110123)) b!6163128))

(assert (= (and b!6163128 c!1110124) b!6163133))

(assert (= (and b!6163128 (not c!1110124)) b!6163126))

(assert (= (and b!6163126 c!1110122) b!6163125))

(assert (= (and b!6163126 (not c!1110122)) b!6163129))

(assert (= (or b!6163133 b!6163125) bm!513412))

(assert (= (or b!6163133 b!6163125) bm!513415))

(assert (= (or b!6163134 bm!513412) bm!513413))

(assert (= (or b!6163134 bm!513415) bm!513416))

(assert (= (or b!6163132 b!6163134) bm!513414))

(assert (= (or b!6163132 bm!513416) bm!513411))

(declare-fun m!7000858 () Bool)

(assert (=> bm!513411 m!7000858))

(declare-fun m!7000860 () Bool)

(assert (=> b!6163135 m!7000860))

(declare-fun m!7000862 () Bool)

(assert (=> bm!513413 m!7000862))

(declare-fun m!7000864 () Bool)

(assert (=> b!6163130 m!7000864))

(declare-fun m!7000866 () Bool)

(assert (=> bm!513414 m!7000866))

(assert (=> bm!513331 d!1931298))

(declare-fun d!1931300 () Bool)

(declare-fun res!2552037 () Bool)

(declare-fun e!3754877 () Bool)

(assert (=> d!1931300 (=> res!2552037 e!3754877)))

(assert (=> d!1931300 (= res!2552037 ((_ is Nil!64491) (exprs!5989 (h!70940 zl!343))))))

(assert (=> d!1931300 (= (forall!15226 (exprs!5989 (h!70940 zl!343)) lambda!336359) e!3754877)))

(declare-fun b!6163140 () Bool)

(declare-fun e!3754878 () Bool)

(assert (=> b!6163140 (= e!3754877 e!3754878)))

(declare-fun res!2552038 () Bool)

(assert (=> b!6163140 (=> (not res!2552038) (not e!3754878))))

(declare-fun dynLambda!25430 (Int Regex!16105) Bool)

(assert (=> b!6163140 (= res!2552038 (dynLambda!25430 lambda!336359 (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun b!6163141 () Bool)

(assert (=> b!6163141 (= e!3754878 (forall!15226 (t!378113 (exprs!5989 (h!70940 zl!343))) lambda!336359))))

(assert (= (and d!1931300 (not res!2552037)) b!6163140))

(assert (= (and b!6163140 res!2552038) b!6163141))

(declare-fun b_lambda!234613 () Bool)

(assert (=> (not b_lambda!234613) (not b!6163140)))

(declare-fun m!7000868 () Bool)

(assert (=> b!6163140 m!7000868))

(declare-fun m!7000870 () Bool)

(assert (=> b!6163141 m!7000870))

(assert (=> d!1931244 d!1931300))

(assert (=> d!1931162 d!1931260))

(assert (=> bs!1527467 d!1931172))

(declare-fun d!1931302 () Bool)

(assert (=> d!1931302 (= (Exists!3175 (ite c!1110035 lambda!336347 lambda!336348)) (choose!45819 (ite c!1110035 lambda!336347 lambda!336348)))))

(declare-fun bs!1527485 () Bool)

(assert (= bs!1527485 d!1931302))

(declare-fun m!7000872 () Bool)

(assert (=> bs!1527485 m!7000872))

(assert (=> bm!513358 d!1931302))

(declare-fun d!1931304 () Bool)

(assert (=> d!1931304 (= (isEmpty!36461 (tail!11817 (unfocusZipperList!1526 zl!343))) ((_ is Nil!64491) (tail!11817 (unfocusZipperList!1526 zl!343))))))

(assert (=> b!6162923 d!1931304))

(declare-fun d!1931306 () Bool)

(assert (=> d!1931306 (= (tail!11817 (unfocusZipperList!1526 zl!343)) (t!378113 (unfocusZipperList!1526 zl!343)))))

(assert (=> b!6162923 d!1931306))

(declare-fun b!6163142 () Bool)

(declare-fun e!3754882 () Bool)

(declare-fun e!3754881 () Bool)

(assert (=> b!6163142 (= e!3754882 e!3754881)))

(declare-fun res!2552041 () Bool)

(declare-fun call!513423 () Bool)

(assert (=> b!6163142 (= res!2552041 call!513423)))

(assert (=> b!6163142 (=> (not res!2552041) (not e!3754881))))

(declare-fun b!6163143 () Bool)

(declare-fun e!3754880 () Bool)

(declare-fun call!513422 () Bool)

(assert (=> b!6163143 (= e!3754880 call!513422)))

(declare-fun b!6163144 () Bool)

(declare-fun e!3754884 () Bool)

(assert (=> b!6163144 (= e!3754884 e!3754882)))

(declare-fun c!1110125 () Bool)

(assert (=> b!6163144 (= c!1110125 ((_ is Union!16105) (regTwo!32723 (regOne!32722 r!7292))))))

(declare-fun bm!513417 () Bool)

(assert (=> bm!513417 (= call!513422 (nullable!6098 (ite c!1110125 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))))))))

(declare-fun b!6163146 () Bool)

(declare-fun e!3754883 () Bool)

(assert (=> b!6163146 (= e!3754883 e!3754884)))

(declare-fun res!2552042 () Bool)

(assert (=> b!6163146 (=> res!2552042 e!3754884)))

(assert (=> b!6163146 (= res!2552042 ((_ is Star!16105) (regTwo!32723 (regOne!32722 r!7292))))))

(declare-fun b!6163147 () Bool)

(assert (=> b!6163147 (= e!3754881 call!513422)))

(declare-fun d!1931308 () Bool)

(declare-fun res!2552043 () Bool)

(declare-fun e!3754879 () Bool)

(assert (=> d!1931308 (=> res!2552043 e!3754879)))

(assert (=> d!1931308 (= res!2552043 ((_ is EmptyExpr!16105) (regTwo!32723 (regOne!32722 r!7292))))))

(assert (=> d!1931308 (= (nullableFct!2062 (regTwo!32723 (regOne!32722 r!7292))) e!3754879)))

(declare-fun b!6163145 () Bool)

(assert (=> b!6163145 (= e!3754879 e!3754883)))

(declare-fun res!2552040 () Bool)

(assert (=> b!6163145 (=> (not res!2552040) (not e!3754883))))

(assert (=> b!6163145 (= res!2552040 (and (not ((_ is EmptyLang!16105) (regTwo!32723 (regOne!32722 r!7292)))) (not ((_ is ElementMatch!16105) (regTwo!32723 (regOne!32722 r!7292))))))))

(declare-fun bm!513418 () Bool)

(assert (=> bm!513418 (= call!513423 (nullable!6098 (ite c!1110125 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))))))))

(declare-fun b!6163148 () Bool)

(assert (=> b!6163148 (= e!3754882 e!3754880)))

(declare-fun res!2552039 () Bool)

(assert (=> b!6163148 (= res!2552039 call!513423)))

(assert (=> b!6163148 (=> res!2552039 e!3754880)))

(assert (= (and d!1931308 (not res!2552043)) b!6163145))

(assert (= (and b!6163145 res!2552040) b!6163146))

(assert (= (and b!6163146 (not res!2552042)) b!6163144))

(assert (= (and b!6163144 c!1110125) b!6163148))

(assert (= (and b!6163144 (not c!1110125)) b!6163142))

(assert (= (and b!6163148 (not res!2552039)) b!6163143))

(assert (= (and b!6163142 res!2552041) b!6163147))

(assert (= (or b!6163143 b!6163147) bm!513417))

(assert (= (or b!6163148 b!6163142) bm!513418))

(declare-fun m!7000874 () Bool)

(assert (=> bm!513417 m!7000874))

(declare-fun m!7000876 () Bool)

(assert (=> bm!513418 m!7000876))

(assert (=> d!1931184 d!1931308))

(declare-fun d!1931310 () Bool)

(assert (=> d!1931310 (= (nullable!6098 r!7292) (nullableFct!2062 r!7292))))

(declare-fun bs!1527486 () Bool)

(assert (= bs!1527486 d!1931310))

(declare-fun m!7000878 () Bool)

(assert (=> bs!1527486 m!7000878))

(assert (=> b!6162856 d!1931310))

(declare-fun d!1931312 () Bool)

(declare-fun e!3754889 () Bool)

(assert (=> d!1931312 e!3754889))

(declare-fun res!2552049 () Bool)

(assert (=> d!1931312 (=> (not res!2552049) (not e!3754889))))

(declare-fun lt!2336229 () List!64614)

(declare-fun content!12032 (List!64614) (InoxSet C!32480))

(assert (=> d!1931312 (= res!2552049 (= (content!12032 lt!2336229) ((_ map or) (content!12032 (_1!36387 (get!22259 lt!2336181))) (content!12032 (_2!36387 (get!22259 lt!2336181))))))))

(declare-fun e!3754890 () List!64614)

(assert (=> d!1931312 (= lt!2336229 e!3754890)))

(declare-fun c!1110128 () Bool)

(assert (=> d!1931312 (= c!1110128 ((_ is Nil!64490) (_1!36387 (get!22259 lt!2336181))))))

(assert (=> d!1931312 (= (++!14191 (_1!36387 (get!22259 lt!2336181)) (_2!36387 (get!22259 lt!2336181))) lt!2336229)))

(declare-fun b!6163157 () Bool)

(assert (=> b!6163157 (= e!3754890 (_2!36387 (get!22259 lt!2336181)))))

(declare-fun b!6163158 () Bool)

(assert (=> b!6163158 (= e!3754890 (Cons!64490 (h!70938 (_1!36387 (get!22259 lt!2336181))) (++!14191 (t!378112 (_1!36387 (get!22259 lt!2336181))) (_2!36387 (get!22259 lt!2336181)))))))

(declare-fun b!6163159 () Bool)

(declare-fun res!2552048 () Bool)

(assert (=> b!6163159 (=> (not res!2552048) (not e!3754889))))

(declare-fun size!40245 (List!64614) Int)

(assert (=> b!6163159 (= res!2552048 (= (size!40245 lt!2336229) (+ (size!40245 (_1!36387 (get!22259 lt!2336181))) (size!40245 (_2!36387 (get!22259 lt!2336181))))))))

(declare-fun b!6163160 () Bool)

(assert (=> b!6163160 (= e!3754889 (or (not (= (_2!36387 (get!22259 lt!2336181)) Nil!64490)) (= lt!2336229 (_1!36387 (get!22259 lt!2336181)))))))

(assert (= (and d!1931312 c!1110128) b!6163157))

(assert (= (and d!1931312 (not c!1110128)) b!6163158))

(assert (= (and d!1931312 res!2552049) b!6163159))

(assert (= (and b!6163159 res!2552048) b!6163160))

(declare-fun m!7000880 () Bool)

(assert (=> d!1931312 m!7000880))

(declare-fun m!7000882 () Bool)

(assert (=> d!1931312 m!7000882))

(declare-fun m!7000884 () Bool)

(assert (=> d!1931312 m!7000884))

(declare-fun m!7000886 () Bool)

(assert (=> b!6163158 m!7000886))

(declare-fun m!7000888 () Bool)

(assert (=> b!6163159 m!7000888))

(declare-fun m!7000890 () Bool)

(assert (=> b!6163159 m!7000890))

(declare-fun m!7000892 () Bool)

(assert (=> b!6163159 m!7000892))

(assert (=> b!6162633 d!1931312))

(assert (=> b!6162633 d!1931266))

(declare-fun d!1931314 () Bool)

(assert (=> d!1931314 true))

(declare-fun setRes!41775 () Bool)

(assert (=> d!1931314 setRes!41775))

(declare-fun condSetEmpty!41775 () Bool)

(declare-fun res!2552052 () (InoxSet Context!10978))

(assert (=> d!1931314 (= condSetEmpty!41775 (= res!2552052 ((as const (Array Context!10978 Bool)) false)))))

(assert (=> d!1931314 (= (choose!45823 lt!2336107 lambda!336301) res!2552052)))

(declare-fun setIsEmpty!41775 () Bool)

(assert (=> setIsEmpty!41775 setRes!41775))

(declare-fun tp!1720719 () Bool)

(declare-fun setElem!41775 () Context!10978)

(declare-fun e!3754893 () Bool)

(declare-fun setNonEmpty!41775 () Bool)

(assert (=> setNonEmpty!41775 (= setRes!41775 (and tp!1720719 (inv!83509 setElem!41775) e!3754893))))

(declare-fun setRest!41775 () (InoxSet Context!10978))

(assert (=> setNonEmpty!41775 (= res!2552052 ((_ map or) (store ((as const (Array Context!10978 Bool)) false) setElem!41775 true) setRest!41775))))

(declare-fun b!6163163 () Bool)

(declare-fun tp!1720720 () Bool)

(assert (=> b!6163163 (= e!3754893 tp!1720720)))

(assert (= (and d!1931314 condSetEmpty!41775) setIsEmpty!41775))

(assert (= (and d!1931314 (not condSetEmpty!41775)) setNonEmpty!41775))

(assert (= setNonEmpty!41775 b!6163163))

(declare-fun m!7000894 () Bool)

(assert (=> setNonEmpty!41775 m!7000894))

(assert (=> d!1931174 d!1931314))

(declare-fun b!6163164 () Bool)

(declare-fun res!2552055 () Bool)

(declare-fun e!3754895 () Bool)

(assert (=> b!6163164 (=> (not res!2552055) (not e!3754895))))

(declare-fun call!513425 () Bool)

(assert (=> b!6163164 (= res!2552055 call!513425)))

(declare-fun e!3754900 () Bool)

(assert (=> b!6163164 (= e!3754900 e!3754895)))

(declare-fun b!6163165 () Bool)

(declare-fun e!3754896 () Bool)

(assert (=> b!6163165 (= e!3754896 e!3754900)))

(declare-fun c!1110130 () Bool)

(assert (=> b!6163165 (= c!1110130 ((_ is Union!16105) (ite c!1110082 (regTwo!32723 r!7292) (regTwo!32722 r!7292))))))

(declare-fun c!1110129 () Bool)

(declare-fun bm!513419 () Bool)

(declare-fun call!513424 () Bool)

(assert (=> bm!513419 (= call!513424 (validRegex!7841 (ite c!1110129 (reg!16434 (ite c!1110082 (regTwo!32723 r!7292) (regTwo!32722 r!7292))) (ite c!1110130 (regOne!32723 (ite c!1110082 (regTwo!32723 r!7292) (regTwo!32722 r!7292))) (regOne!32722 (ite c!1110082 (regTwo!32723 r!7292) (regTwo!32722 r!7292)))))))))

(declare-fun b!6163166 () Bool)

(declare-fun call!513426 () Bool)

(assert (=> b!6163166 (= e!3754895 call!513426)))

(declare-fun b!6163167 () Bool)

(declare-fun e!3754897 () Bool)

(assert (=> b!6163167 (= e!3754897 call!513426)))

(declare-fun bm!513420 () Bool)

(assert (=> bm!513420 (= call!513425 call!513424)))

(declare-fun b!6163168 () Bool)

(declare-fun e!3754899 () Bool)

(assert (=> b!6163168 (= e!3754899 e!3754897)))

(declare-fun res!2552053 () Bool)

(assert (=> b!6163168 (=> (not res!2552053) (not e!3754897))))

(assert (=> b!6163168 (= res!2552053 call!513425)))

(declare-fun b!6163169 () Bool)

(declare-fun e!3754898 () Bool)

(assert (=> b!6163169 (= e!3754898 call!513424)))

(declare-fun d!1931316 () Bool)

(declare-fun res!2552054 () Bool)

(declare-fun e!3754894 () Bool)

(assert (=> d!1931316 (=> res!2552054 e!3754894)))

(assert (=> d!1931316 (= res!2552054 ((_ is ElementMatch!16105) (ite c!1110082 (regTwo!32723 r!7292) (regTwo!32722 r!7292))))))

(assert (=> d!1931316 (= (validRegex!7841 (ite c!1110082 (regTwo!32723 r!7292) (regTwo!32722 r!7292))) e!3754894)))

(declare-fun b!6163170 () Bool)

(assert (=> b!6163170 (= e!3754894 e!3754896)))

(assert (=> b!6163170 (= c!1110129 ((_ is Star!16105) (ite c!1110082 (regTwo!32723 r!7292) (regTwo!32722 r!7292))))))

(declare-fun b!6163171 () Bool)

(assert (=> b!6163171 (= e!3754896 e!3754898)))

(declare-fun res!2552056 () Bool)

(assert (=> b!6163171 (= res!2552056 (not (nullable!6098 (reg!16434 (ite c!1110082 (regTwo!32723 r!7292) (regTwo!32722 r!7292))))))))

(assert (=> b!6163171 (=> (not res!2552056) (not e!3754898))))

(declare-fun b!6163172 () Bool)

(declare-fun res!2552057 () Bool)

(assert (=> b!6163172 (=> res!2552057 e!3754899)))

(assert (=> b!6163172 (= res!2552057 (not ((_ is Concat!24950) (ite c!1110082 (regTwo!32723 r!7292) (regTwo!32722 r!7292)))))))

(assert (=> b!6163172 (= e!3754900 e!3754899)))

(declare-fun bm!513421 () Bool)

(assert (=> bm!513421 (= call!513426 (validRegex!7841 (ite c!1110130 (regTwo!32723 (ite c!1110082 (regTwo!32723 r!7292) (regTwo!32722 r!7292))) (regTwo!32722 (ite c!1110082 (regTwo!32723 r!7292) (regTwo!32722 r!7292))))))))

(assert (= (and d!1931316 (not res!2552054)) b!6163170))

(assert (= (and b!6163170 c!1110129) b!6163171))

(assert (= (and b!6163170 (not c!1110129)) b!6163165))

(assert (= (and b!6163171 res!2552056) b!6163169))

(assert (= (and b!6163165 c!1110130) b!6163164))

(assert (= (and b!6163165 (not c!1110130)) b!6163172))

(assert (= (and b!6163164 res!2552055) b!6163166))

(assert (= (and b!6163172 (not res!2552057)) b!6163168))

(assert (= (and b!6163168 res!2552053) b!6163167))

(assert (= (or b!6163166 b!6163167) bm!513421))

(assert (= (or b!6163164 b!6163168) bm!513420))

(assert (= (or b!6163169 bm!513420) bm!513419))

(declare-fun m!7000896 () Bool)

(assert (=> bm!513419 m!7000896))

(declare-fun m!7000898 () Bool)

(assert (=> b!6163171 m!7000898))

(declare-fun m!7000900 () Bool)

(assert (=> bm!513421 m!7000900))

(assert (=> bm!513383 d!1931316))

(declare-fun d!1931318 () Bool)

(assert (=> d!1931318 (= (head!12731 s!2326) (h!70938 s!2326))))

(assert (=> b!6162852 d!1931318))

(declare-fun d!1931320 () Bool)

(declare-fun e!3754901 () Bool)

(assert (=> d!1931320 e!3754901))

(declare-fun res!2552059 () Bool)

(assert (=> d!1931320 (=> (not res!2552059) (not e!3754901))))

(declare-fun lt!2336230 () List!64614)

(assert (=> d!1931320 (= res!2552059 (= (content!12032 lt!2336230) ((_ map or) (content!12032 (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) Nil!64490))) (content!12032 (t!378112 s!2326)))))))

(declare-fun e!3754902 () List!64614)

(assert (=> d!1931320 (= lt!2336230 e!3754902)))

(declare-fun c!1110131 () Bool)

(assert (=> d!1931320 (= c!1110131 ((_ is Nil!64490) (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) Nil!64490))))))

(assert (=> d!1931320 (= (++!14191 (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) Nil!64490)) (t!378112 s!2326)) lt!2336230)))

(declare-fun b!6163173 () Bool)

(assert (=> b!6163173 (= e!3754902 (t!378112 s!2326))))

(declare-fun b!6163174 () Bool)

(assert (=> b!6163174 (= e!3754902 (Cons!64490 (h!70938 (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) Nil!64490))) (++!14191 (t!378112 (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) Nil!64490))) (t!378112 s!2326))))))

(declare-fun b!6163175 () Bool)

(declare-fun res!2552058 () Bool)

(assert (=> b!6163175 (=> (not res!2552058) (not e!3754901))))

(assert (=> b!6163175 (= res!2552058 (= (size!40245 lt!2336230) (+ (size!40245 (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) Nil!64490))) (size!40245 (t!378112 s!2326)))))))

(declare-fun b!6163176 () Bool)

(assert (=> b!6163176 (= e!3754901 (or (not (= (t!378112 s!2326) Nil!64490)) (= lt!2336230 (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) Nil!64490)))))))

(assert (= (and d!1931320 c!1110131) b!6163173))

(assert (= (and d!1931320 (not c!1110131)) b!6163174))

(assert (= (and d!1931320 res!2552059) b!6163175))

(assert (= (and b!6163175 res!2552058) b!6163176))

(declare-fun m!7000902 () Bool)

(assert (=> d!1931320 m!7000902))

(assert (=> d!1931320 m!7000472))

(declare-fun m!7000904 () Bool)

(assert (=> d!1931320 m!7000904))

(declare-fun m!7000906 () Bool)

(assert (=> d!1931320 m!7000906))

(declare-fun m!7000908 () Bool)

(assert (=> b!6163174 m!7000908))

(declare-fun m!7000910 () Bool)

(assert (=> b!6163175 m!7000910))

(assert (=> b!6163175 m!7000472))

(declare-fun m!7000912 () Bool)

(assert (=> b!6163175 m!7000912))

(declare-fun m!7000914 () Bool)

(assert (=> b!6163175 m!7000914))

(assert (=> b!6162629 d!1931320))

(declare-fun d!1931322 () Bool)

(declare-fun e!3754903 () Bool)

(assert (=> d!1931322 e!3754903))

(declare-fun res!2552061 () Bool)

(assert (=> d!1931322 (=> (not res!2552061) (not e!3754903))))

(declare-fun lt!2336231 () List!64614)

(assert (=> d!1931322 (= res!2552061 (= (content!12032 lt!2336231) ((_ map or) (content!12032 Nil!64490) (content!12032 (Cons!64490 (h!70938 s!2326) Nil!64490)))))))

(declare-fun e!3754904 () List!64614)

(assert (=> d!1931322 (= lt!2336231 e!3754904)))

(declare-fun c!1110132 () Bool)

(assert (=> d!1931322 (= c!1110132 ((_ is Nil!64490) Nil!64490))))

(assert (=> d!1931322 (= (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) Nil!64490)) lt!2336231)))

(declare-fun b!6163177 () Bool)

(assert (=> b!6163177 (= e!3754904 (Cons!64490 (h!70938 s!2326) Nil!64490))))

(declare-fun b!6163178 () Bool)

(assert (=> b!6163178 (= e!3754904 (Cons!64490 (h!70938 Nil!64490) (++!14191 (t!378112 Nil!64490) (Cons!64490 (h!70938 s!2326) Nil!64490))))))

(declare-fun b!6163179 () Bool)

(declare-fun res!2552060 () Bool)

(assert (=> b!6163179 (=> (not res!2552060) (not e!3754903))))

(assert (=> b!6163179 (= res!2552060 (= (size!40245 lt!2336231) (+ (size!40245 Nil!64490) (size!40245 (Cons!64490 (h!70938 s!2326) Nil!64490)))))))

(declare-fun b!6163180 () Bool)

(assert (=> b!6163180 (= e!3754903 (or (not (= (Cons!64490 (h!70938 s!2326) Nil!64490) Nil!64490)) (= lt!2336231 Nil!64490)))))

(assert (= (and d!1931322 c!1110132) b!6163177))

(assert (= (and d!1931322 (not c!1110132)) b!6163178))

(assert (= (and d!1931322 res!2552061) b!6163179))

(assert (= (and b!6163179 res!2552060) b!6163180))

(declare-fun m!7000916 () Bool)

(assert (=> d!1931322 m!7000916))

(declare-fun m!7000918 () Bool)

(assert (=> d!1931322 m!7000918))

(declare-fun m!7000920 () Bool)

(assert (=> d!1931322 m!7000920))

(declare-fun m!7000922 () Bool)

(assert (=> b!6163178 m!7000922))

(declare-fun m!7000924 () Bool)

(assert (=> b!6163179 m!7000924))

(declare-fun m!7000926 () Bool)

(assert (=> b!6163179 m!7000926))

(declare-fun m!7000928 () Bool)

(assert (=> b!6163179 m!7000928))

(assert (=> b!6162629 d!1931322))

(declare-fun d!1931324 () Bool)

(assert (=> d!1931324 (= (++!14191 (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) Nil!64490)) (t!378112 s!2326)) s!2326)))

(declare-fun lt!2336234 () Unit!157619)

(declare-fun choose!45827 (List!64614 C!32480 List!64614 List!64614) Unit!157619)

(assert (=> d!1931324 (= lt!2336234 (choose!45827 Nil!64490 (h!70938 s!2326) (t!378112 s!2326) s!2326))))

(assert (=> d!1931324 (= (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) (t!378112 s!2326))) s!2326)))

(assert (=> d!1931324 (= (lemmaMoveElementToOtherListKeepsConcatEq!2286 Nil!64490 (h!70938 s!2326) (t!378112 s!2326) s!2326) lt!2336234)))

(declare-fun bs!1527487 () Bool)

(assert (= bs!1527487 d!1931324))

(assert (=> bs!1527487 m!7000472))

(assert (=> bs!1527487 m!7000472))

(assert (=> bs!1527487 m!7000474))

(declare-fun m!7000930 () Bool)

(assert (=> bs!1527487 m!7000930))

(declare-fun m!7000932 () Bool)

(assert (=> bs!1527487 m!7000932))

(assert (=> b!6162629 d!1931324))

(declare-fun b!6163181 () Bool)

(declare-fun e!3754906 () Option!15996)

(declare-fun e!3754907 () Option!15996)

(assert (=> b!6163181 (= e!3754906 e!3754907)))

(declare-fun c!1110134 () Bool)

(assert (=> b!6163181 (= c!1110134 ((_ is Nil!64490) (t!378112 s!2326)))))

(declare-fun b!6163182 () Bool)

(assert (=> b!6163182 (= e!3754907 None!15995)))

(declare-fun b!6163183 () Bool)

(declare-fun lt!2336235 () Unit!157619)

(declare-fun lt!2336236 () Unit!157619)

(assert (=> b!6163183 (= lt!2336235 lt!2336236)))

(assert (=> b!6163183 (= (++!14191 (++!14191 (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) Nil!64490)) (Cons!64490 (h!70938 (t!378112 s!2326)) Nil!64490)) (t!378112 (t!378112 s!2326))) s!2326)))

(assert (=> b!6163183 (= lt!2336236 (lemmaMoveElementToOtherListKeepsConcatEq!2286 (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) Nil!64490)) (h!70938 (t!378112 s!2326)) (t!378112 (t!378112 s!2326)) s!2326))))

(assert (=> b!6163183 (= e!3754907 (findConcatSeparation!2410 (regOne!32722 r!7292) (regTwo!32722 r!7292) (++!14191 (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) Nil!64490)) (Cons!64490 (h!70938 (t!378112 s!2326)) Nil!64490)) (t!378112 (t!378112 s!2326)) s!2326))))

(declare-fun b!6163184 () Bool)

(declare-fun res!2552063 () Bool)

(declare-fun e!3754908 () Bool)

(assert (=> b!6163184 (=> (not res!2552063) (not e!3754908))))

(declare-fun lt!2336237 () Option!15996)

(assert (=> b!6163184 (= res!2552063 (matchR!8288 (regTwo!32722 r!7292) (_2!36387 (get!22259 lt!2336237))))))

(declare-fun d!1931326 () Bool)

(declare-fun e!3754905 () Bool)

(assert (=> d!1931326 e!3754905))

(declare-fun res!2552062 () Bool)

(assert (=> d!1931326 (=> res!2552062 e!3754905)))

(assert (=> d!1931326 (= res!2552062 e!3754908)))

(declare-fun res!2552066 () Bool)

(assert (=> d!1931326 (=> (not res!2552066) (not e!3754908))))

(assert (=> d!1931326 (= res!2552066 (isDefined!12699 lt!2336237))))

(assert (=> d!1931326 (= lt!2336237 e!3754906)))

(declare-fun c!1110133 () Bool)

(declare-fun e!3754909 () Bool)

(assert (=> d!1931326 (= c!1110133 e!3754909)))

(declare-fun res!2552064 () Bool)

(assert (=> d!1931326 (=> (not res!2552064) (not e!3754909))))

(assert (=> d!1931326 (= res!2552064 (matchR!8288 (regOne!32722 r!7292) (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) Nil!64490))))))

(assert (=> d!1931326 (validRegex!7841 (regOne!32722 r!7292))))

(assert (=> d!1931326 (= (findConcatSeparation!2410 (regOne!32722 r!7292) (regTwo!32722 r!7292) (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) Nil!64490)) (t!378112 s!2326) s!2326) lt!2336237)))

(declare-fun b!6163185 () Bool)

(assert (=> b!6163185 (= e!3754905 (not (isDefined!12699 lt!2336237)))))

(declare-fun b!6163186 () Bool)

(assert (=> b!6163186 (= e!3754909 (matchR!8288 (regTwo!32722 r!7292) (t!378112 s!2326)))))

(declare-fun b!6163187 () Bool)

(assert (=> b!6163187 (= e!3754908 (= (++!14191 (_1!36387 (get!22259 lt!2336237)) (_2!36387 (get!22259 lt!2336237))) s!2326))))

(declare-fun b!6163188 () Bool)

(declare-fun res!2552065 () Bool)

(assert (=> b!6163188 (=> (not res!2552065) (not e!3754908))))

(assert (=> b!6163188 (= res!2552065 (matchR!8288 (regOne!32722 r!7292) (_1!36387 (get!22259 lt!2336237))))))

(declare-fun b!6163189 () Bool)

(assert (=> b!6163189 (= e!3754906 (Some!15995 (tuple2!66169 (++!14191 Nil!64490 (Cons!64490 (h!70938 s!2326) Nil!64490)) (t!378112 s!2326))))))

(assert (= (and d!1931326 res!2552064) b!6163186))

(assert (= (and d!1931326 c!1110133) b!6163189))

(assert (= (and d!1931326 (not c!1110133)) b!6163181))

(assert (= (and b!6163181 c!1110134) b!6163182))

(assert (= (and b!6163181 (not c!1110134)) b!6163183))

(assert (= (and d!1931326 res!2552066) b!6163188))

(assert (= (and b!6163188 res!2552065) b!6163184))

(assert (= (and b!6163184 res!2552063) b!6163187))

(assert (= (and d!1931326 (not res!2552062)) b!6163185))

(declare-fun m!7000934 () Bool)

(assert (=> b!6163185 m!7000934))

(declare-fun m!7000936 () Bool)

(assert (=> b!6163184 m!7000936))

(declare-fun m!7000938 () Bool)

(assert (=> b!6163184 m!7000938))

(assert (=> d!1931326 m!7000934))

(assert (=> d!1931326 m!7000472))

(declare-fun m!7000940 () Bool)

(assert (=> d!1931326 m!7000940))

(assert (=> d!1931326 m!7000464))

(assert (=> b!6163188 m!7000936))

(declare-fun m!7000942 () Bool)

(assert (=> b!6163188 m!7000942))

(assert (=> b!6163187 m!7000936))

(declare-fun m!7000944 () Bool)

(assert (=> b!6163187 m!7000944))

(declare-fun m!7000946 () Bool)

(assert (=> b!6163186 m!7000946))

(assert (=> b!6163183 m!7000472))

(declare-fun m!7000948 () Bool)

(assert (=> b!6163183 m!7000948))

(assert (=> b!6163183 m!7000948))

(declare-fun m!7000950 () Bool)

(assert (=> b!6163183 m!7000950))

(assert (=> b!6163183 m!7000472))

(declare-fun m!7000952 () Bool)

(assert (=> b!6163183 m!7000952))

(assert (=> b!6163183 m!7000948))

(declare-fun m!7000954 () Bool)

(assert (=> b!6163183 m!7000954))

(assert (=> b!6162629 d!1931326))

(assert (=> d!1931168 d!1931174))

(declare-fun d!1931328 () Bool)

(assert (=> d!1931328 (= (flatMap!1610 lt!2336107 lambda!336301) (dynLambda!25429 lambda!336301 lt!2336104))))

(assert (=> d!1931328 true))

(declare-fun _$13!3117 () Unit!157619)

(assert (=> d!1931328 (= (choose!45824 lt!2336107 lt!2336104 lambda!336301) _$13!3117)))

(declare-fun b_lambda!234615 () Bool)

(assert (=> (not b_lambda!234615) (not d!1931328)))

(declare-fun bs!1527488 () Bool)

(assert (= bs!1527488 d!1931328))

(assert (=> bs!1527488 m!7000124))

(assert (=> bs!1527488 m!7000542))

(assert (=> d!1931168 d!1931328))

(declare-fun d!1931330 () Bool)

(declare-fun c!1110137 () Bool)

(assert (=> d!1931330 (= c!1110137 ((_ is Nil!64492) lt!2336212))))

(declare-fun e!3754912 () (InoxSet Context!10978))

(assert (=> d!1931330 (= (content!12031 lt!2336212) e!3754912)))

(declare-fun b!6163194 () Bool)

(assert (=> b!6163194 (= e!3754912 ((as const (Array Context!10978 Bool)) false))))

(declare-fun b!6163195 () Bool)

(assert (=> b!6163195 (= e!3754912 ((_ map or) (store ((as const (Array Context!10978 Bool)) false) (h!70940 lt!2336212) true) (content!12031 (t!378114 lt!2336212))))))

(assert (= (and d!1931330 c!1110137) b!6163194))

(assert (= (and d!1931330 (not c!1110137)) b!6163195))

(declare-fun m!7000956 () Bool)

(assert (=> b!6163195 m!7000956))

(declare-fun m!7000958 () Bool)

(assert (=> b!6163195 m!7000958))

(assert (=> b!6162860 d!1931330))

(declare-fun d!1931332 () Bool)

(declare-fun c!1110138 () Bool)

(assert (=> d!1931332 (= c!1110138 (isEmpty!36465 (tail!11816 s!2326)))))

(declare-fun e!3754913 () Bool)

(assert (=> d!1931332 (= (matchZipper!2117 (derivationStepZipper!2078 z!1189 (head!12731 s!2326)) (tail!11816 s!2326)) e!3754913)))

(declare-fun b!6163196 () Bool)

(assert (=> b!6163196 (= e!3754913 (nullableZipper!1886 (derivationStepZipper!2078 z!1189 (head!12731 s!2326))))))

(declare-fun b!6163197 () Bool)

(assert (=> b!6163197 (= e!3754913 (matchZipper!2117 (derivationStepZipper!2078 (derivationStepZipper!2078 z!1189 (head!12731 s!2326)) (head!12731 (tail!11816 s!2326))) (tail!11816 (tail!11816 s!2326))))))

(assert (= (and d!1931332 c!1110138) b!6163196))

(assert (= (and d!1931332 (not c!1110138)) b!6163197))

(assert (=> d!1931332 m!7000554))

(assert (=> d!1931332 m!7000664))

(assert (=> b!6163196 m!7000552))

(declare-fun m!7000960 () Bool)

(assert (=> b!6163196 m!7000960))

(assert (=> b!6163197 m!7000554))

(declare-fun m!7000962 () Bool)

(assert (=> b!6163197 m!7000962))

(assert (=> b!6163197 m!7000552))

(assert (=> b!6163197 m!7000962))

(declare-fun m!7000964 () Bool)

(assert (=> b!6163197 m!7000964))

(assert (=> b!6163197 m!7000554))

(declare-fun m!7000966 () Bool)

(assert (=> b!6163197 m!7000966))

(assert (=> b!6163197 m!7000964))

(assert (=> b!6163197 m!7000966))

(declare-fun m!7000968 () Bool)

(assert (=> b!6163197 m!7000968))

(assert (=> b!6162667 d!1931332))

(declare-fun bs!1527489 () Bool)

(declare-fun d!1931334 () Bool)

(assert (= bs!1527489 (and d!1931334 b!6162172)))

(declare-fun lambda!336369 () Int)

(assert (=> bs!1527489 (= (= (head!12731 s!2326) (h!70938 s!2326)) (= lambda!336369 lambda!336301))))

(declare-fun bs!1527490 () Bool)

(assert (= bs!1527490 (and d!1931334 d!1931280)))

(assert (=> bs!1527490 (= (= (head!12731 s!2326) (head!12731 (t!378112 s!2326))) (= lambda!336369 lambda!336364))))

(declare-fun bs!1527491 () Bool)

(assert (= bs!1527491 (and d!1931334 d!1931292)))

(assert (=> bs!1527491 (= (= (head!12731 s!2326) (head!12731 (t!378112 s!2326))) (= lambda!336369 lambda!336368))))

(assert (=> d!1931334 true))

(assert (=> d!1931334 (= (derivationStepZipper!2078 z!1189 (head!12731 s!2326)) (flatMap!1610 z!1189 lambda!336369))))

(declare-fun bs!1527492 () Bool)

(assert (= bs!1527492 d!1931334))

(declare-fun m!7000970 () Bool)

(assert (=> bs!1527492 m!7000970))

(assert (=> b!6162667 d!1931334))

(assert (=> b!6162667 d!1931318))

(declare-fun d!1931336 () Bool)

(assert (=> d!1931336 (= (tail!11816 s!2326) (t!378112 s!2326))))

(assert (=> b!6162667 d!1931336))

(declare-fun d!1931338 () Bool)

(declare-fun c!1110139 () Bool)

(assert (=> d!1931338 (= c!1110139 (isEmpty!36465 (tail!11816 (t!378112 s!2326))))))

(declare-fun e!3754914 () Bool)

(assert (=> d!1931338 (= (matchZipper!2117 (derivationStepZipper!2078 lt!2336092 (head!12731 (t!378112 s!2326))) (tail!11816 (t!378112 s!2326))) e!3754914)))

(declare-fun b!6163198 () Bool)

(assert (=> b!6163198 (= e!3754914 (nullableZipper!1886 (derivationStepZipper!2078 lt!2336092 (head!12731 (t!378112 s!2326)))))))

(declare-fun b!6163199 () Bool)

(assert (=> b!6163199 (= e!3754914 (matchZipper!2117 (derivationStepZipper!2078 (derivationStepZipper!2078 lt!2336092 (head!12731 (t!378112 s!2326))) (head!12731 (tail!11816 (t!378112 s!2326)))) (tail!11816 (tail!11816 (t!378112 s!2326)))))))

(assert (= (and d!1931338 c!1110139) b!6163198))

(assert (= (and d!1931338 (not c!1110139)) b!6163199))

(assert (=> d!1931338 m!7000504))

(assert (=> d!1931338 m!7000816))

(assert (=> b!6163198 m!7000502))

(declare-fun m!7000972 () Bool)

(assert (=> b!6163198 m!7000972))

(assert (=> b!6163199 m!7000504))

(assert (=> b!6163199 m!7000820))

(assert (=> b!6163199 m!7000502))

(assert (=> b!6163199 m!7000820))

(declare-fun m!7000974 () Bool)

(assert (=> b!6163199 m!7000974))

(assert (=> b!6163199 m!7000504))

(assert (=> b!6163199 m!7000824))

(assert (=> b!6163199 m!7000974))

(assert (=> b!6163199 m!7000824))

(declare-fun m!7000976 () Bool)

(assert (=> b!6163199 m!7000976))

(assert (=> b!6162653 d!1931338))

(declare-fun bs!1527493 () Bool)

(declare-fun d!1931340 () Bool)

(assert (= bs!1527493 (and d!1931340 b!6162172)))

(declare-fun lambda!336370 () Int)

(assert (=> bs!1527493 (= (= (head!12731 (t!378112 s!2326)) (h!70938 s!2326)) (= lambda!336370 lambda!336301))))

(declare-fun bs!1527494 () Bool)

(assert (= bs!1527494 (and d!1931340 d!1931280)))

(assert (=> bs!1527494 (= lambda!336370 lambda!336364)))

(declare-fun bs!1527495 () Bool)

(assert (= bs!1527495 (and d!1931340 d!1931292)))

(assert (=> bs!1527495 (= lambda!336370 lambda!336368)))

(declare-fun bs!1527496 () Bool)

(assert (= bs!1527496 (and d!1931340 d!1931334)))

(assert (=> bs!1527496 (= (= (head!12731 (t!378112 s!2326)) (head!12731 s!2326)) (= lambda!336370 lambda!336369))))

(assert (=> d!1931340 true))

(assert (=> d!1931340 (= (derivationStepZipper!2078 lt!2336092 (head!12731 (t!378112 s!2326))) (flatMap!1610 lt!2336092 lambda!336370))))

(declare-fun bs!1527497 () Bool)

(assert (= bs!1527497 d!1931340))

(declare-fun m!7000978 () Bool)

(assert (=> bs!1527497 m!7000978))

(assert (=> b!6162653 d!1931340))

(assert (=> b!6162653 d!1931282))

(assert (=> b!6162653 d!1931284))

(declare-fun d!1931342 () Bool)

(declare-fun c!1110140 () Bool)

(assert (=> d!1931342 (= c!1110140 (isEmpty!36465 (tail!11816 (t!378112 s!2326))))))

(declare-fun e!3754915 () Bool)

(assert (=> d!1931342 (= (matchZipper!2117 (derivationStepZipper!2078 lt!2336090 (head!12731 (t!378112 s!2326))) (tail!11816 (t!378112 s!2326))) e!3754915)))

(declare-fun b!6163200 () Bool)

(assert (=> b!6163200 (= e!3754915 (nullableZipper!1886 (derivationStepZipper!2078 lt!2336090 (head!12731 (t!378112 s!2326)))))))

(declare-fun b!6163201 () Bool)

(assert (=> b!6163201 (= e!3754915 (matchZipper!2117 (derivationStepZipper!2078 (derivationStepZipper!2078 lt!2336090 (head!12731 (t!378112 s!2326))) (head!12731 (tail!11816 (t!378112 s!2326)))) (tail!11816 (tail!11816 (t!378112 s!2326)))))))

(assert (= (and d!1931342 c!1110140) b!6163200))

(assert (= (and d!1931342 (not c!1110140)) b!6163201))

(assert (=> d!1931342 m!7000504))

(assert (=> d!1931342 m!7000816))

(assert (=> b!6163200 m!7000522))

(declare-fun m!7000980 () Bool)

(assert (=> b!6163200 m!7000980))

(assert (=> b!6163201 m!7000504))

(assert (=> b!6163201 m!7000820))

(assert (=> b!6163201 m!7000522))

(assert (=> b!6163201 m!7000820))

(declare-fun m!7000982 () Bool)

(assert (=> b!6163201 m!7000982))

(assert (=> b!6163201 m!7000504))

(assert (=> b!6163201 m!7000824))

(assert (=> b!6163201 m!7000982))

(assert (=> b!6163201 m!7000824))

(declare-fun m!7000984 () Bool)

(assert (=> b!6163201 m!7000984))

(assert (=> b!6162659 d!1931342))

(declare-fun bs!1527498 () Bool)

(declare-fun d!1931344 () Bool)

(assert (= bs!1527498 (and d!1931344 d!1931334)))

(declare-fun lambda!336371 () Int)

(assert (=> bs!1527498 (= (= (head!12731 (t!378112 s!2326)) (head!12731 s!2326)) (= lambda!336371 lambda!336369))))

(declare-fun bs!1527499 () Bool)

(assert (= bs!1527499 (and d!1931344 d!1931280)))

(assert (=> bs!1527499 (= lambda!336371 lambda!336364)))

(declare-fun bs!1527500 () Bool)

(assert (= bs!1527500 (and d!1931344 d!1931340)))

(assert (=> bs!1527500 (= lambda!336371 lambda!336370)))

(declare-fun bs!1527501 () Bool)

(assert (= bs!1527501 (and d!1931344 d!1931292)))

(assert (=> bs!1527501 (= lambda!336371 lambda!336368)))

(declare-fun bs!1527502 () Bool)

(assert (= bs!1527502 (and d!1931344 b!6162172)))

(assert (=> bs!1527502 (= (= (head!12731 (t!378112 s!2326)) (h!70938 s!2326)) (= lambda!336371 lambda!336301))))

(assert (=> d!1931344 true))

(assert (=> d!1931344 (= (derivationStepZipper!2078 lt!2336090 (head!12731 (t!378112 s!2326))) (flatMap!1610 lt!2336090 lambda!336371))))

(declare-fun bs!1527503 () Bool)

(assert (= bs!1527503 d!1931344))

(declare-fun m!7000986 () Bool)

(assert (=> bs!1527503 m!7000986))

(assert (=> b!6162659 d!1931344))

(assert (=> b!6162659 d!1931282))

(assert (=> b!6162659 d!1931284))

(declare-fun d!1931346 () Bool)

(assert (=> d!1931346 (= ($colon$colon!1982 (exprs!5989 lt!2336120) (ite (or c!1110023 c!1110024) (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (h!70939 (exprs!5989 (h!70940 zl!343))))) (Cons!64491 (ite (or c!1110023 c!1110024) (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (h!70939 (exprs!5989 (h!70940 zl!343)))) (exprs!5989 lt!2336120)))))

(assert (=> bm!513350 d!1931346))

(assert (=> d!1931240 d!1931254))

(declare-fun d!1931348 () Bool)

(assert (=> d!1931348 (= (isConcat!1045 lt!2336201) ((_ is Concat!24950) lt!2336201))))

(assert (=> b!6162712 d!1931348))

(declare-fun d!1931350 () Bool)

(declare-fun res!2552067 () Bool)

(declare-fun e!3754916 () Bool)

(assert (=> d!1931350 (=> res!2552067 e!3754916)))

(assert (=> d!1931350 (= res!2552067 ((_ is Nil!64491) (exprs!5989 setElem!41766)))))

(assert (=> d!1931350 (= (forall!15226 (exprs!5989 setElem!41766) lambda!336351) e!3754916)))

(declare-fun b!6163202 () Bool)

(declare-fun e!3754917 () Bool)

(assert (=> b!6163202 (= e!3754916 e!3754917)))

(declare-fun res!2552068 () Bool)

(assert (=> b!6163202 (=> (not res!2552068) (not e!3754917))))

(assert (=> b!6163202 (= res!2552068 (dynLambda!25430 lambda!336351 (h!70939 (exprs!5989 setElem!41766))))))

(declare-fun b!6163203 () Bool)

(assert (=> b!6163203 (= e!3754917 (forall!15226 (t!378113 (exprs!5989 setElem!41766)) lambda!336351))))

(assert (= (and d!1931350 (not res!2552067)) b!6163202))

(assert (= (and b!6163202 res!2552068) b!6163203))

(declare-fun b_lambda!234617 () Bool)

(assert (=> (not b_lambda!234617) (not b!6163202)))

(declare-fun m!7000988 () Bool)

(assert (=> b!6163202 m!7000988))

(declare-fun m!7000990 () Bool)

(assert (=> b!6163203 m!7000990))

(assert (=> d!1931216 d!1931350))

(declare-fun b!6163204 () Bool)

(declare-fun e!3754919 () (InoxSet Context!10978))

(declare-fun call!513427 () (InoxSet Context!10978))

(assert (=> b!6163204 (= e!3754919 call!513427)))

(declare-fun c!1110144 () Bool)

(declare-fun call!513428 () (InoxSet Context!10978))

(declare-fun call!513432 () List!64615)

(declare-fun c!1110145 () Bool)

(declare-fun c!1110142 () Bool)

(declare-fun bm!513422 () Bool)

(assert (=> bm!513422 (= call!513428 (derivationStepZipperDown!1353 (ite c!1110142 (regOne!32723 (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))) (ite c!1110144 (regTwo!32722 (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))) (ite c!1110145 (regOne!32722 (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))) (reg!16434 (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343))))))))))) (ite (or c!1110142 c!1110144) (Context!10979 (t!378113 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))) (Context!10979 call!513432)) (h!70938 s!2326)))))

(declare-fun b!6163205 () Bool)

(declare-fun c!1110143 () Bool)

(assert (=> b!6163205 (= c!1110143 ((_ is Star!16105) (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))))))

(declare-fun e!3754922 () (InoxSet Context!10978))

(assert (=> b!6163205 (= e!3754922 e!3754919)))

(declare-fun b!6163206 () Bool)

(declare-fun e!3754921 () (InoxSet Context!10978))

(declare-fun e!3754918 () (InoxSet Context!10978))

(assert (=> b!6163206 (= e!3754921 e!3754918)))

(assert (=> b!6163206 (= c!1110142 ((_ is Union!16105) (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))))))

(declare-fun b!6163207 () Bool)

(declare-fun e!3754923 () (InoxSet Context!10978))

(assert (=> b!6163207 (= e!3754923 e!3754922)))

(assert (=> b!6163207 (= c!1110145 ((_ is Concat!24950) (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))))))

(declare-fun b!6163208 () Bool)

(assert (=> b!6163208 (= e!3754919 ((as const (Array Context!10978 Bool)) false))))

(declare-fun bm!513423 () Bool)

(declare-fun call!513430 () List!64615)

(assert (=> bm!513423 (= call!513432 call!513430)))

(declare-fun bm!513424 () Bool)

(assert (=> bm!513424 (= call!513430 ($colon$colon!1982 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343))))))))) (ite (or c!1110144 c!1110145) (regTwo!32722 (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))) (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343))))))))))))

(declare-fun bm!513425 () Bool)

(declare-fun call!513431 () (InoxSet Context!10978))

(assert (=> bm!513425 (= call!513431 (derivationStepZipperDown!1353 (ite c!1110142 (regTwo!32723 (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))) (regOne!32722 (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343))))))))) (ite c!1110142 (Context!10979 (t!378113 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))) (Context!10979 call!513430)) (h!70938 s!2326)))))

(declare-fun b!6163209 () Bool)

(assert (=> b!6163209 (= e!3754921 (store ((as const (Array Context!10978 Bool)) false) (Context!10979 (t!378113 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))) true))))

(declare-fun b!6163210 () Bool)

(declare-fun e!3754920 () Bool)

(assert (=> b!6163210 (= c!1110144 e!3754920)))

(declare-fun res!2552069 () Bool)

(assert (=> b!6163210 (=> (not res!2552069) (not e!3754920))))

(assert (=> b!6163210 (= res!2552069 ((_ is Concat!24950) (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))))))

(assert (=> b!6163210 (= e!3754918 e!3754923)))

(declare-fun d!1931352 () Bool)

(declare-fun c!1110141 () Bool)

(assert (=> d!1931352 (= c!1110141 (and ((_ is ElementMatch!16105) (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))) (= (c!1109850 (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))) (h!70938 s!2326))))))

(assert (=> d!1931352 (= (derivationStepZipperDown!1353 (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343))))))) (Context!10979 (t!378113 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))) (h!70938 s!2326)) e!3754921)))

(declare-fun b!6163211 () Bool)

(assert (=> b!6163211 (= e!3754918 ((_ map or) call!513428 call!513431))))

(declare-fun bm!513426 () Bool)

(declare-fun call!513429 () (InoxSet Context!10978))

(assert (=> bm!513426 (= call!513427 call!513429)))

(declare-fun b!6163212 () Bool)

(assert (=> b!6163212 (= e!3754922 call!513427)))

(declare-fun b!6163213 () Bool)

(assert (=> b!6163213 (= e!3754923 ((_ map or) call!513431 call!513429))))

(declare-fun bm!513427 () Bool)

(assert (=> bm!513427 (= call!513429 call!513428)))

(declare-fun b!6163214 () Bool)

(assert (=> b!6163214 (= e!3754920 (nullable!6098 (regOne!32722 (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343))))))))))))

(assert (= (and d!1931352 c!1110141) b!6163209))

(assert (= (and d!1931352 (not c!1110141)) b!6163206))

(assert (= (and b!6163206 c!1110142) b!6163211))

(assert (= (and b!6163206 (not c!1110142)) b!6163210))

(assert (= (and b!6163210 res!2552069) b!6163214))

(assert (= (and b!6163210 c!1110144) b!6163213))

(assert (= (and b!6163210 (not c!1110144)) b!6163207))

(assert (= (and b!6163207 c!1110145) b!6163212))

(assert (= (and b!6163207 (not c!1110145)) b!6163205))

(assert (= (and b!6163205 c!1110143) b!6163204))

(assert (= (and b!6163205 (not c!1110143)) b!6163208))

(assert (= (or b!6163212 b!6163204) bm!513423))

(assert (= (or b!6163212 b!6163204) bm!513426))

(assert (= (or b!6163213 bm!513423) bm!513424))

(assert (= (or b!6163213 bm!513426) bm!513427))

(assert (= (or b!6163211 b!6163213) bm!513425))

(assert (= (or b!6163211 bm!513427) bm!513422))

(declare-fun m!7000992 () Bool)

(assert (=> bm!513422 m!7000992))

(declare-fun m!7000994 () Bool)

(assert (=> b!6163214 m!7000994))

(declare-fun m!7000996 () Bool)

(assert (=> bm!513424 m!7000996))

(declare-fun m!7000998 () Bool)

(assert (=> b!6163209 m!7000998))

(declare-fun m!7001000 () Bool)

(assert (=> bm!513425 m!7001000))

(assert (=> bm!513334 d!1931352))

(assert (=> b!6162737 d!1931194))

(declare-fun bs!1527504 () Bool)

(declare-fun d!1931354 () Bool)

(assert (= bs!1527504 (and d!1931354 d!1931288)))

(declare-fun lambda!336372 () Int)

(assert (=> bs!1527504 (= lambda!336372 lambda!336367)))

(assert (=> d!1931354 (= (nullableZipper!1886 lt!2336112) (exists!2449 lt!2336112 lambda!336372))))

(declare-fun bs!1527505 () Bool)

(assert (= bs!1527505 d!1931354))

(declare-fun m!7001002 () Bool)

(assert (=> bs!1527505 m!7001002))

(assert (=> b!6162654 d!1931354))

(assert (=> d!1931154 d!1931260))

(declare-fun b!6163215 () Bool)

(declare-fun res!2552072 () Bool)

(declare-fun e!3754925 () Bool)

(assert (=> b!6163215 (=> (not res!2552072) (not e!3754925))))

(declare-fun call!513434 () Bool)

(assert (=> b!6163215 (= res!2552072 call!513434)))

(declare-fun e!3754930 () Bool)

(assert (=> b!6163215 (= e!3754930 e!3754925)))

(declare-fun b!6163216 () Bool)

(declare-fun e!3754926 () Bool)

(assert (=> b!6163216 (= e!3754926 e!3754930)))

(declare-fun c!1110147 () Bool)

(assert (=> b!6163216 (= c!1110147 ((_ is Union!16105) lt!2336220))))

(declare-fun bm!513428 () Bool)

(declare-fun c!1110146 () Bool)

(declare-fun call!513433 () Bool)

(assert (=> bm!513428 (= call!513433 (validRegex!7841 (ite c!1110146 (reg!16434 lt!2336220) (ite c!1110147 (regOne!32723 lt!2336220) (regOne!32722 lt!2336220)))))))

(declare-fun b!6163217 () Bool)

(declare-fun call!513435 () Bool)

(assert (=> b!6163217 (= e!3754925 call!513435)))

(declare-fun b!6163218 () Bool)

(declare-fun e!3754927 () Bool)

(assert (=> b!6163218 (= e!3754927 call!513435)))

(declare-fun bm!513429 () Bool)

(assert (=> bm!513429 (= call!513434 call!513433)))

(declare-fun b!6163219 () Bool)

(declare-fun e!3754929 () Bool)

(assert (=> b!6163219 (= e!3754929 e!3754927)))

(declare-fun res!2552070 () Bool)

(assert (=> b!6163219 (=> (not res!2552070) (not e!3754927))))

(assert (=> b!6163219 (= res!2552070 call!513434)))

(declare-fun b!6163220 () Bool)

(declare-fun e!3754928 () Bool)

(assert (=> b!6163220 (= e!3754928 call!513433)))

(declare-fun d!1931356 () Bool)

(declare-fun res!2552071 () Bool)

(declare-fun e!3754924 () Bool)

(assert (=> d!1931356 (=> res!2552071 e!3754924)))

(assert (=> d!1931356 (= res!2552071 ((_ is ElementMatch!16105) lt!2336220))))

(assert (=> d!1931356 (= (validRegex!7841 lt!2336220) e!3754924)))

(declare-fun b!6163221 () Bool)

(assert (=> b!6163221 (= e!3754924 e!3754926)))

(assert (=> b!6163221 (= c!1110146 ((_ is Star!16105) lt!2336220))))

(declare-fun b!6163222 () Bool)

(assert (=> b!6163222 (= e!3754926 e!3754928)))

(declare-fun res!2552073 () Bool)

(assert (=> b!6163222 (= res!2552073 (not (nullable!6098 (reg!16434 lt!2336220))))))

(assert (=> b!6163222 (=> (not res!2552073) (not e!3754928))))

(declare-fun b!6163223 () Bool)

(declare-fun res!2552074 () Bool)

(assert (=> b!6163223 (=> res!2552074 e!3754929)))

(assert (=> b!6163223 (= res!2552074 (not ((_ is Concat!24950) lt!2336220)))))

(assert (=> b!6163223 (= e!3754930 e!3754929)))

(declare-fun bm!513430 () Bool)

(assert (=> bm!513430 (= call!513435 (validRegex!7841 (ite c!1110147 (regTwo!32723 lt!2336220) (regTwo!32722 lt!2336220))))))

(assert (= (and d!1931356 (not res!2552071)) b!6163221))

(assert (= (and b!6163221 c!1110146) b!6163222))

(assert (= (and b!6163221 (not c!1110146)) b!6163216))

(assert (= (and b!6163222 res!2552073) b!6163220))

(assert (= (and b!6163216 c!1110147) b!6163215))

(assert (= (and b!6163216 (not c!1110147)) b!6163223))

(assert (= (and b!6163215 res!2552072) b!6163217))

(assert (= (and b!6163223 (not res!2552074)) b!6163219))

(assert (= (and b!6163219 res!2552070) b!6163218))

(assert (= (or b!6163217 b!6163218) bm!513430))

(assert (= (or b!6163215 b!6163219) bm!513429))

(assert (= (or b!6163220 bm!513429) bm!513428))

(declare-fun m!7001004 () Bool)

(assert (=> bm!513428 m!7001004))

(declare-fun m!7001006 () Bool)

(assert (=> b!6163222 m!7001006))

(declare-fun m!7001008 () Bool)

(assert (=> bm!513430 m!7001008))

(assert (=> d!1931232 d!1931356))

(declare-fun d!1931358 () Bool)

(declare-fun res!2552075 () Bool)

(declare-fun e!3754931 () Bool)

(assert (=> d!1931358 (=> res!2552075 e!3754931)))

(assert (=> d!1931358 (= res!2552075 ((_ is Nil!64491) (unfocusZipperList!1526 zl!343)))))

(assert (=> d!1931358 (= (forall!15226 (unfocusZipperList!1526 zl!343) lambda!336355) e!3754931)))

(declare-fun b!6163224 () Bool)

(declare-fun e!3754932 () Bool)

(assert (=> b!6163224 (= e!3754931 e!3754932)))

(declare-fun res!2552076 () Bool)

(assert (=> b!6163224 (=> (not res!2552076) (not e!3754932))))

(assert (=> b!6163224 (= res!2552076 (dynLambda!25430 lambda!336355 (h!70939 (unfocusZipperList!1526 zl!343))))))

(declare-fun b!6163225 () Bool)

(assert (=> b!6163225 (= e!3754932 (forall!15226 (t!378113 (unfocusZipperList!1526 zl!343)) lambda!336355))))

(assert (= (and d!1931358 (not res!2552075)) b!6163224))

(assert (= (and b!6163224 res!2552076) b!6163225))

(declare-fun b_lambda!234619 () Bool)

(assert (=> (not b_lambda!234619) (not b!6163224)))

(declare-fun m!7001010 () Bool)

(assert (=> b!6163224 m!7001010))

(declare-fun m!7001012 () Bool)

(assert (=> b!6163225 m!7001012))

(assert (=> d!1931232 d!1931358))

(assert (=> d!1931148 d!1931260))

(assert (=> d!1931152 d!1931260))

(declare-fun b!6163226 () Bool)

(declare-fun e!3754934 () (InoxSet Context!10978))

(declare-fun call!513436 () (InoxSet Context!10978))

(assert (=> b!6163226 (= e!3754934 call!513436)))

(declare-fun c!1110152 () Bool)

(declare-fun call!513441 () List!64615)

(declare-fun call!513437 () (InoxSet Context!10978))

(declare-fun c!1110151 () Bool)

(declare-fun c!1110149 () Bool)

(declare-fun bm!513431 () Bool)

(assert (=> bm!513431 (= call!513437 (derivationStepZipperDown!1353 (ite c!1110149 (regOne!32723 (ite c!1110058 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110060 (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110061 (regOne!32722 (regOne!32723 (regOne!32722 r!7292))) (reg!16434 (regOne!32723 (regOne!32722 r!7292))))))) (ite c!1110151 (regTwo!32722 (ite c!1110058 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110060 (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110061 (regOne!32722 (regOne!32723 (regOne!32722 r!7292))) (reg!16434 (regOne!32723 (regOne!32722 r!7292))))))) (ite c!1110152 (regOne!32722 (ite c!1110058 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110060 (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110061 (regOne!32722 (regOne!32723 (regOne!32722 r!7292))) (reg!16434 (regOne!32723 (regOne!32722 r!7292))))))) (reg!16434 (ite c!1110058 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110060 (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110061 (regOne!32722 (regOne!32723 (regOne!32722 r!7292))) (reg!16434 (regOne!32723 (regOne!32722 r!7292)))))))))) (ite (or c!1110149 c!1110151) (ite (or c!1110058 c!1110060) lt!2336120 (Context!10979 call!513379)) (Context!10979 call!513441)) (h!70938 s!2326)))))

(declare-fun c!1110150 () Bool)

(declare-fun b!6163227 () Bool)

(assert (=> b!6163227 (= c!1110150 ((_ is Star!16105) (ite c!1110058 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110060 (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110061 (regOne!32722 (regOne!32723 (regOne!32722 r!7292))) (reg!16434 (regOne!32723 (regOne!32722 r!7292))))))))))

(declare-fun e!3754937 () (InoxSet Context!10978))

(assert (=> b!6163227 (= e!3754937 e!3754934)))

(declare-fun b!6163228 () Bool)

(declare-fun e!3754936 () (InoxSet Context!10978))

(declare-fun e!3754933 () (InoxSet Context!10978))

(assert (=> b!6163228 (= e!3754936 e!3754933)))

(assert (=> b!6163228 (= c!1110149 ((_ is Union!16105) (ite c!1110058 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110060 (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110061 (regOne!32722 (regOne!32723 (regOne!32722 r!7292))) (reg!16434 (regOne!32723 (regOne!32722 r!7292))))))))))

(declare-fun b!6163229 () Bool)

(declare-fun e!3754938 () (InoxSet Context!10978))

(assert (=> b!6163229 (= e!3754938 e!3754937)))

(assert (=> b!6163229 (= c!1110152 ((_ is Concat!24950) (ite c!1110058 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110060 (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110061 (regOne!32722 (regOne!32723 (regOne!32722 r!7292))) (reg!16434 (regOne!32723 (regOne!32722 r!7292))))))))))

(declare-fun b!6163230 () Bool)

(assert (=> b!6163230 (= e!3754934 ((as const (Array Context!10978 Bool)) false))))

(declare-fun bm!513432 () Bool)

(declare-fun call!513439 () List!64615)

(assert (=> bm!513432 (= call!513441 call!513439)))

(declare-fun bm!513433 () Bool)

(assert (=> bm!513433 (= call!513439 ($colon$colon!1982 (exprs!5989 (ite (or c!1110058 c!1110060) lt!2336120 (Context!10979 call!513379))) (ite (or c!1110151 c!1110152) (regTwo!32722 (ite c!1110058 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110060 (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110061 (regOne!32722 (regOne!32723 (regOne!32722 r!7292))) (reg!16434 (regOne!32723 (regOne!32722 r!7292))))))) (ite c!1110058 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110060 (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110061 (regOne!32722 (regOne!32723 (regOne!32722 r!7292))) (reg!16434 (regOne!32723 (regOne!32722 r!7292)))))))))))

(declare-fun bm!513434 () Bool)

(declare-fun call!513440 () (InoxSet Context!10978))

(assert (=> bm!513434 (= call!513440 (derivationStepZipperDown!1353 (ite c!1110149 (regTwo!32723 (ite c!1110058 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110060 (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110061 (regOne!32722 (regOne!32723 (regOne!32722 r!7292))) (reg!16434 (regOne!32723 (regOne!32722 r!7292))))))) (regOne!32722 (ite c!1110058 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110060 (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110061 (regOne!32722 (regOne!32723 (regOne!32722 r!7292))) (reg!16434 (regOne!32723 (regOne!32722 r!7292)))))))) (ite c!1110149 (ite (or c!1110058 c!1110060) lt!2336120 (Context!10979 call!513379)) (Context!10979 call!513439)) (h!70938 s!2326)))))

(declare-fun b!6163231 () Bool)

(assert (=> b!6163231 (= e!3754936 (store ((as const (Array Context!10978 Bool)) false) (ite (or c!1110058 c!1110060) lt!2336120 (Context!10979 call!513379)) true))))

(declare-fun b!6163232 () Bool)

(declare-fun e!3754935 () Bool)

(assert (=> b!6163232 (= c!1110151 e!3754935)))

(declare-fun res!2552077 () Bool)

(assert (=> b!6163232 (=> (not res!2552077) (not e!3754935))))

(assert (=> b!6163232 (= res!2552077 ((_ is Concat!24950) (ite c!1110058 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110060 (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110061 (regOne!32722 (regOne!32723 (regOne!32722 r!7292))) (reg!16434 (regOne!32723 (regOne!32722 r!7292))))))))))

(assert (=> b!6163232 (= e!3754933 e!3754938)))

(declare-fun d!1931360 () Bool)

(declare-fun c!1110148 () Bool)

(assert (=> d!1931360 (= c!1110148 (and ((_ is ElementMatch!16105) (ite c!1110058 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110060 (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110061 (regOne!32722 (regOne!32723 (regOne!32722 r!7292))) (reg!16434 (regOne!32723 (regOne!32722 r!7292))))))) (= (c!1109850 (ite c!1110058 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110060 (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110061 (regOne!32722 (regOne!32723 (regOne!32722 r!7292))) (reg!16434 (regOne!32723 (regOne!32722 r!7292))))))) (h!70938 s!2326))))))

(assert (=> d!1931360 (= (derivationStepZipperDown!1353 (ite c!1110058 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110060 (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110061 (regOne!32722 (regOne!32723 (regOne!32722 r!7292))) (reg!16434 (regOne!32723 (regOne!32722 r!7292)))))) (ite (or c!1110058 c!1110060) lt!2336120 (Context!10979 call!513379)) (h!70938 s!2326)) e!3754936)))

(declare-fun b!6163233 () Bool)

(assert (=> b!6163233 (= e!3754933 ((_ map or) call!513437 call!513440))))

(declare-fun bm!513435 () Bool)

(declare-fun call!513438 () (InoxSet Context!10978))

(assert (=> bm!513435 (= call!513436 call!513438)))

(declare-fun b!6163234 () Bool)

(assert (=> b!6163234 (= e!3754937 call!513436)))

(declare-fun b!6163235 () Bool)

(assert (=> b!6163235 (= e!3754938 ((_ map or) call!513440 call!513438))))

(declare-fun bm!513436 () Bool)

(assert (=> bm!513436 (= call!513438 call!513437)))

(declare-fun b!6163236 () Bool)

(assert (=> b!6163236 (= e!3754935 (nullable!6098 (regOne!32722 (ite c!1110058 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110060 (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (ite c!1110061 (regOne!32722 (regOne!32723 (regOne!32722 r!7292))) (reg!16434 (regOne!32723 (regOne!32722 r!7292)))))))))))

(assert (= (and d!1931360 c!1110148) b!6163231))

(assert (= (and d!1931360 (not c!1110148)) b!6163228))

(assert (= (and b!6163228 c!1110149) b!6163233))

(assert (= (and b!6163228 (not c!1110149)) b!6163232))

(assert (= (and b!6163232 res!2552077) b!6163236))

(assert (= (and b!6163232 c!1110151) b!6163235))

(assert (= (and b!6163232 (not c!1110151)) b!6163229))

(assert (= (and b!6163229 c!1110152) b!6163234))

(assert (= (and b!6163229 (not c!1110152)) b!6163227))

(assert (= (and b!6163227 c!1110150) b!6163226))

(assert (= (and b!6163227 (not c!1110150)) b!6163230))

(assert (= (or b!6163234 b!6163226) bm!513432))

(assert (= (or b!6163234 b!6163226) bm!513435))

(assert (= (or b!6163235 bm!513432) bm!513433))

(assert (= (or b!6163235 bm!513435) bm!513436))

(assert (= (or b!6163233 b!6163235) bm!513434))

(assert (= (or b!6163233 bm!513436) bm!513431))

(declare-fun m!7001014 () Bool)

(assert (=> bm!513431 m!7001014))

(declare-fun m!7001016 () Bool)

(assert (=> b!6163236 m!7001016))

(declare-fun m!7001018 () Bool)

(assert (=> bm!513433 m!7001018))

(declare-fun m!7001020 () Bool)

(assert (=> b!6163231 m!7001020))

(declare-fun m!7001022 () Bool)

(assert (=> bm!513434 m!7001022))

(assert (=> bm!513369 d!1931360))

(declare-fun d!1931362 () Bool)

(declare-fun c!1110153 () Bool)

(assert (=> d!1931362 (= c!1110153 (isEmpty!36465 (tail!11816 (t!378112 s!2326))))))

(declare-fun e!3754939 () Bool)

(assert (=> d!1931362 (= (matchZipper!2117 (derivationStepZipper!2078 lt!2336113 (head!12731 (t!378112 s!2326))) (tail!11816 (t!378112 s!2326))) e!3754939)))

(declare-fun b!6163237 () Bool)

(assert (=> b!6163237 (= e!3754939 (nullableZipper!1886 (derivationStepZipper!2078 lt!2336113 (head!12731 (t!378112 s!2326)))))))

(declare-fun b!6163238 () Bool)

(assert (=> b!6163238 (= e!3754939 (matchZipper!2117 (derivationStepZipper!2078 (derivationStepZipper!2078 lt!2336113 (head!12731 (t!378112 s!2326))) (head!12731 (tail!11816 (t!378112 s!2326)))) (tail!11816 (tail!11816 (t!378112 s!2326)))))))

(assert (= (and d!1931362 c!1110153) b!6163237))

(assert (= (and d!1931362 (not c!1110153)) b!6163238))

(assert (=> d!1931362 m!7000504))

(assert (=> d!1931362 m!7000816))

(assert (=> b!6163237 m!7000650))

(declare-fun m!7001024 () Bool)

(assert (=> b!6163237 m!7001024))

(assert (=> b!6163238 m!7000504))

(assert (=> b!6163238 m!7000820))

(assert (=> b!6163238 m!7000650))

(assert (=> b!6163238 m!7000820))

(declare-fun m!7001026 () Bool)

(assert (=> b!6163238 m!7001026))

(assert (=> b!6163238 m!7000504))

(assert (=> b!6163238 m!7000824))

(assert (=> b!6163238 m!7001026))

(assert (=> b!6163238 m!7000824))

(declare-fun m!7001028 () Bool)

(assert (=> b!6163238 m!7001028))

(assert (=> b!6162772 d!1931362))

(declare-fun bs!1527506 () Bool)

(declare-fun d!1931364 () Bool)

(assert (= bs!1527506 (and d!1931364 d!1931334)))

(declare-fun lambda!336373 () Int)

(assert (=> bs!1527506 (= (= (head!12731 (t!378112 s!2326)) (head!12731 s!2326)) (= lambda!336373 lambda!336369))))

(declare-fun bs!1527507 () Bool)

(assert (= bs!1527507 (and d!1931364 d!1931280)))

(assert (=> bs!1527507 (= lambda!336373 lambda!336364)))

(declare-fun bs!1527508 () Bool)

(assert (= bs!1527508 (and d!1931364 d!1931344)))

(assert (=> bs!1527508 (= lambda!336373 lambda!336371)))

(declare-fun bs!1527509 () Bool)

(assert (= bs!1527509 (and d!1931364 d!1931340)))

(assert (=> bs!1527509 (= lambda!336373 lambda!336370)))

(declare-fun bs!1527510 () Bool)

(assert (= bs!1527510 (and d!1931364 d!1931292)))

(assert (=> bs!1527510 (= lambda!336373 lambda!336368)))

(declare-fun bs!1527511 () Bool)

(assert (= bs!1527511 (and d!1931364 b!6162172)))

(assert (=> bs!1527511 (= (= (head!12731 (t!378112 s!2326)) (h!70938 s!2326)) (= lambda!336373 lambda!336301))))

(assert (=> d!1931364 true))

(assert (=> d!1931364 (= (derivationStepZipper!2078 lt!2336113 (head!12731 (t!378112 s!2326))) (flatMap!1610 lt!2336113 lambda!336373))))

(declare-fun bs!1527512 () Bool)

(assert (= bs!1527512 d!1931364))

(declare-fun m!7001030 () Bool)

(assert (=> bs!1527512 m!7001030))

(assert (=> b!6162772 d!1931364))

(assert (=> b!6162772 d!1931282))

(assert (=> b!6162772 d!1931284))

(declare-fun d!1931366 () Bool)

(assert (=> d!1931366 (= (isEmptyExpr!1522 lt!2336201) ((_ is EmptyExpr!16105) lt!2336201))))

(assert (=> b!6162717 d!1931366))

(declare-fun bs!1527513 () Bool)

(declare-fun d!1931368 () Bool)

(assert (= bs!1527513 (and d!1931368 d!1931288)))

(declare-fun lambda!336374 () Int)

(assert (=> bs!1527513 (= lambda!336374 lambda!336367)))

(declare-fun bs!1527514 () Bool)

(assert (= bs!1527514 (and d!1931368 d!1931354)))

(assert (=> bs!1527514 (= lambda!336374 lambda!336372)))

(assert (=> d!1931368 (= (nullableZipper!1886 ((_ map or) lt!2336112 lt!2336092)) (exists!2449 ((_ map or) lt!2336112 lt!2336092) lambda!336374))))

(declare-fun bs!1527515 () Bool)

(assert (= bs!1527515 d!1931368))

(declare-fun m!7001032 () Bool)

(assert (=> bs!1527515 m!7001032))

(assert (=> b!6162664 d!1931368))

(declare-fun bs!1527516 () Bool)

(declare-fun d!1931370 () Bool)

(assert (= bs!1527516 (and d!1931370 d!1931234)))

(declare-fun lambda!336375 () Int)

(assert (=> bs!1527516 (= lambda!336375 lambda!336358)))

(declare-fun bs!1527517 () Bool)

(assert (= bs!1527517 (and d!1931370 d!1931232)))

(assert (=> bs!1527517 (= lambda!336375 lambda!336355)))

(declare-fun bs!1527518 () Bool)

(assert (= bs!1527518 (and d!1931370 d!1931230)))

(assert (=> bs!1527518 (= lambda!336375 lambda!336352)))

(declare-fun bs!1527519 () Bool)

(assert (= bs!1527519 (and d!1931370 d!1931216)))

(assert (=> bs!1527519 (= lambda!336375 lambda!336351)))

(declare-fun bs!1527520 () Bool)

(assert (= bs!1527520 (and d!1931370 d!1931244)))

(assert (=> bs!1527520 (= lambda!336375 lambda!336359)))

(declare-fun bs!1527521 () Bool)

(assert (= bs!1527521 (and d!1931370 d!1931186)))

(assert (=> bs!1527521 (= lambda!336375 lambda!336342)))

(declare-fun b!6163239 () Bool)

(declare-fun e!3754940 () Regex!16105)

(declare-fun e!3754942 () Regex!16105)

(assert (=> b!6163239 (= e!3754940 e!3754942)))

(declare-fun c!1110157 () Bool)

(assert (=> b!6163239 (= c!1110157 ((_ is Cons!64491) (t!378113 (unfocusZipperList!1526 zl!343))))))

(declare-fun b!6163240 () Bool)

(assert (=> b!6163240 (= e!3754940 (h!70939 (t!378113 (unfocusZipperList!1526 zl!343))))))

(declare-fun b!6163241 () Bool)

(declare-fun e!3754943 () Bool)

(declare-fun e!3754944 () Bool)

(assert (=> b!6163241 (= e!3754943 e!3754944)))

(declare-fun c!1110155 () Bool)

(assert (=> b!6163241 (= c!1110155 (isEmpty!36461 (t!378113 (unfocusZipperList!1526 zl!343))))))

(assert (=> d!1931370 e!3754943))

(declare-fun res!2552078 () Bool)

(assert (=> d!1931370 (=> (not res!2552078) (not e!3754943))))

(declare-fun lt!2336238 () Regex!16105)

(assert (=> d!1931370 (= res!2552078 (validRegex!7841 lt!2336238))))

(assert (=> d!1931370 (= lt!2336238 e!3754940)))

(declare-fun c!1110156 () Bool)

(declare-fun e!3754941 () Bool)

(assert (=> d!1931370 (= c!1110156 e!3754941)))

(declare-fun res!2552079 () Bool)

(assert (=> d!1931370 (=> (not res!2552079) (not e!3754941))))

(assert (=> d!1931370 (= res!2552079 ((_ is Cons!64491) (t!378113 (unfocusZipperList!1526 zl!343))))))

(assert (=> d!1931370 (forall!15226 (t!378113 (unfocusZipperList!1526 zl!343)) lambda!336375)))

(assert (=> d!1931370 (= (generalisedUnion!1949 (t!378113 (unfocusZipperList!1526 zl!343))) lt!2336238)))

(declare-fun b!6163242 () Bool)

(declare-fun e!3754945 () Bool)

(assert (=> b!6163242 (= e!3754945 (= lt!2336238 (head!12732 (t!378113 (unfocusZipperList!1526 zl!343)))))))

(declare-fun b!6163243 () Bool)

(assert (=> b!6163243 (= e!3754942 (Union!16105 (h!70939 (t!378113 (unfocusZipperList!1526 zl!343))) (generalisedUnion!1949 (t!378113 (t!378113 (unfocusZipperList!1526 zl!343))))))))

(declare-fun b!6163244 () Bool)

(assert (=> b!6163244 (= e!3754941 (isEmpty!36461 (t!378113 (t!378113 (unfocusZipperList!1526 zl!343)))))))

(declare-fun b!6163245 () Bool)

(assert (=> b!6163245 (= e!3754942 EmptyLang!16105)))

(declare-fun b!6163246 () Bool)

(assert (=> b!6163246 (= e!3754945 (isUnion!962 lt!2336238))))

(declare-fun b!6163247 () Bool)

(assert (=> b!6163247 (= e!3754944 (isEmptyLang!1532 lt!2336238))))

(declare-fun b!6163248 () Bool)

(assert (=> b!6163248 (= e!3754944 e!3754945)))

(declare-fun c!1110154 () Bool)

(assert (=> b!6163248 (= c!1110154 (isEmpty!36461 (tail!11817 (t!378113 (unfocusZipperList!1526 zl!343)))))))

(assert (= (and d!1931370 res!2552079) b!6163244))

(assert (= (and d!1931370 c!1110156) b!6163240))

(assert (= (and d!1931370 (not c!1110156)) b!6163239))

(assert (= (and b!6163239 c!1110157) b!6163243))

(assert (= (and b!6163239 (not c!1110157)) b!6163245))

(assert (= (and d!1931370 res!2552078) b!6163241))

(assert (= (and b!6163241 c!1110155) b!6163247))

(assert (= (and b!6163241 (not c!1110155)) b!6163248))

(assert (= (and b!6163248 c!1110154) b!6163242))

(assert (= (and b!6163248 (not c!1110154)) b!6163246))

(assert (=> b!6163241 m!7000714))

(declare-fun m!7001034 () Bool)

(assert (=> b!6163244 m!7001034))

(declare-fun m!7001036 () Bool)

(assert (=> d!1931370 m!7001036))

(declare-fun m!7001038 () Bool)

(assert (=> d!1931370 m!7001038))

(declare-fun m!7001040 () Bool)

(assert (=> b!6163243 m!7001040))

(declare-fun m!7001042 () Bool)

(assert (=> b!6163246 m!7001042))

(declare-fun m!7001044 () Bool)

(assert (=> b!6163242 m!7001044))

(declare-fun m!7001046 () Bool)

(assert (=> b!6163247 m!7001046))

(declare-fun m!7001048 () Bool)

(assert (=> b!6163248 m!7001048))

(assert (=> b!6163248 m!7001048))

(declare-fun m!7001050 () Bool)

(assert (=> b!6163248 m!7001050))

(assert (=> b!6162918 d!1931370))

(declare-fun d!1931372 () Bool)

(declare-fun c!1110158 () Bool)

(assert (=> d!1931372 (= c!1110158 (isEmpty!36465 (tail!11816 (t!378112 s!2326))))))

(declare-fun e!3754946 () Bool)

(assert (=> d!1931372 (= (matchZipper!2117 (derivationStepZipper!2078 ((_ map or) lt!2336113 lt!2336092) (head!12731 (t!378112 s!2326))) (tail!11816 (t!378112 s!2326))) e!3754946)))

(declare-fun b!6163249 () Bool)

(assert (=> b!6163249 (= e!3754946 (nullableZipper!1886 (derivationStepZipper!2078 ((_ map or) lt!2336113 lt!2336092) (head!12731 (t!378112 s!2326)))))))

(declare-fun b!6163250 () Bool)

(assert (=> b!6163250 (= e!3754946 (matchZipper!2117 (derivationStepZipper!2078 (derivationStepZipper!2078 ((_ map or) lt!2336113 lt!2336092) (head!12731 (t!378112 s!2326))) (head!12731 (tail!11816 (t!378112 s!2326)))) (tail!11816 (tail!11816 (t!378112 s!2326)))))))

(assert (= (and d!1931372 c!1110158) b!6163249))

(assert (= (and d!1931372 (not c!1110158)) b!6163250))

(assert (=> d!1931372 m!7000504))

(assert (=> d!1931372 m!7000816))

(assert (=> b!6163249 m!7000682))

(declare-fun m!7001052 () Bool)

(assert (=> b!6163249 m!7001052))

(assert (=> b!6163250 m!7000504))

(assert (=> b!6163250 m!7000820))

(assert (=> b!6163250 m!7000682))

(assert (=> b!6163250 m!7000820))

(declare-fun m!7001054 () Bool)

(assert (=> b!6163250 m!7001054))

(assert (=> b!6163250 m!7000504))

(assert (=> b!6163250 m!7000824))

(assert (=> b!6163250 m!7001054))

(assert (=> b!6163250 m!7000824))

(declare-fun m!7001056 () Bool)

(assert (=> b!6163250 m!7001056))

(assert (=> b!6162863 d!1931372))

(declare-fun bs!1527522 () Bool)

(declare-fun d!1931374 () Bool)

(assert (= bs!1527522 (and d!1931374 d!1931334)))

(declare-fun lambda!336376 () Int)

(assert (=> bs!1527522 (= (= (head!12731 (t!378112 s!2326)) (head!12731 s!2326)) (= lambda!336376 lambda!336369))))

(declare-fun bs!1527523 () Bool)

(assert (= bs!1527523 (and d!1931374 d!1931280)))

(assert (=> bs!1527523 (= lambda!336376 lambda!336364)))

(declare-fun bs!1527524 () Bool)

(assert (= bs!1527524 (and d!1931374 d!1931344)))

(assert (=> bs!1527524 (= lambda!336376 lambda!336371)))

(declare-fun bs!1527525 () Bool)

(assert (= bs!1527525 (and d!1931374 d!1931340)))

(assert (=> bs!1527525 (= lambda!336376 lambda!336370)))

(declare-fun bs!1527526 () Bool)

(assert (= bs!1527526 (and d!1931374 d!1931364)))

(assert (=> bs!1527526 (= lambda!336376 lambda!336373)))

(declare-fun bs!1527527 () Bool)

(assert (= bs!1527527 (and d!1931374 d!1931292)))

(assert (=> bs!1527527 (= lambda!336376 lambda!336368)))

(declare-fun bs!1527528 () Bool)

(assert (= bs!1527528 (and d!1931374 b!6162172)))

(assert (=> bs!1527528 (= (= (head!12731 (t!378112 s!2326)) (h!70938 s!2326)) (= lambda!336376 lambda!336301))))

(assert (=> d!1931374 true))

(assert (=> d!1931374 (= (derivationStepZipper!2078 ((_ map or) lt!2336113 lt!2336092) (head!12731 (t!378112 s!2326))) (flatMap!1610 ((_ map or) lt!2336113 lt!2336092) lambda!336376))))

(declare-fun bs!1527529 () Bool)

(assert (= bs!1527529 d!1931374))

(declare-fun m!7001058 () Bool)

(assert (=> bs!1527529 m!7001058))

(assert (=> b!6162863 d!1931374))

(assert (=> b!6162863 d!1931282))

(assert (=> b!6162863 d!1931284))

(declare-fun d!1931376 () Bool)

(declare-fun c!1110159 () Bool)

(assert (=> d!1931376 (= c!1110159 (isEmpty!36465 (tail!11816 s!2326)))))

(declare-fun e!3754947 () Bool)

(assert (=> d!1931376 (= (matchZipper!2117 (derivationStepZipper!2078 lt!2336103 (head!12731 s!2326)) (tail!11816 s!2326)) e!3754947)))

(declare-fun b!6163251 () Bool)

(assert (=> b!6163251 (= e!3754947 (nullableZipper!1886 (derivationStepZipper!2078 lt!2336103 (head!12731 s!2326))))))

(declare-fun b!6163252 () Bool)

(assert (=> b!6163252 (= e!3754947 (matchZipper!2117 (derivationStepZipper!2078 (derivationStepZipper!2078 lt!2336103 (head!12731 s!2326)) (head!12731 (tail!11816 s!2326))) (tail!11816 (tail!11816 s!2326))))))

(assert (= (and d!1931376 c!1110159) b!6163251))

(assert (= (and d!1931376 (not c!1110159)) b!6163252))

(assert (=> d!1931376 m!7000554))

(assert (=> d!1931376 m!7000664))

(assert (=> b!6163251 m!7000568))

(declare-fun m!7001060 () Bool)

(assert (=> b!6163251 m!7001060))

(assert (=> b!6163252 m!7000554))

(assert (=> b!6163252 m!7000962))

(assert (=> b!6163252 m!7000568))

(assert (=> b!6163252 m!7000962))

(declare-fun m!7001062 () Bool)

(assert (=> b!6163252 m!7001062))

(assert (=> b!6163252 m!7000554))

(assert (=> b!6163252 m!7000966))

(assert (=> b!6163252 m!7001062))

(assert (=> b!6163252 m!7000966))

(declare-fun m!7001064 () Bool)

(assert (=> b!6163252 m!7001064))

(assert (=> b!6162684 d!1931376))

(declare-fun bs!1527530 () Bool)

(declare-fun d!1931378 () Bool)

(assert (= bs!1527530 (and d!1931378 d!1931334)))

(declare-fun lambda!336377 () Int)

(assert (=> bs!1527530 (= lambda!336377 lambda!336369)))

(declare-fun bs!1527531 () Bool)

(assert (= bs!1527531 (and d!1931378 d!1931280)))

(assert (=> bs!1527531 (= (= (head!12731 s!2326) (head!12731 (t!378112 s!2326))) (= lambda!336377 lambda!336364))))

(declare-fun bs!1527532 () Bool)

(assert (= bs!1527532 (and d!1931378 d!1931344)))

(assert (=> bs!1527532 (= (= (head!12731 s!2326) (head!12731 (t!378112 s!2326))) (= lambda!336377 lambda!336371))))

(declare-fun bs!1527533 () Bool)

(assert (= bs!1527533 (and d!1931378 d!1931340)))

(assert (=> bs!1527533 (= (= (head!12731 s!2326) (head!12731 (t!378112 s!2326))) (= lambda!336377 lambda!336370))))

(declare-fun bs!1527534 () Bool)

(assert (= bs!1527534 (and d!1931378 d!1931374)))

(assert (=> bs!1527534 (= (= (head!12731 s!2326) (head!12731 (t!378112 s!2326))) (= lambda!336377 lambda!336376))))

(declare-fun bs!1527535 () Bool)

(assert (= bs!1527535 (and d!1931378 d!1931364)))

(assert (=> bs!1527535 (= (= (head!12731 s!2326) (head!12731 (t!378112 s!2326))) (= lambda!336377 lambda!336373))))

(declare-fun bs!1527536 () Bool)

(assert (= bs!1527536 (and d!1931378 d!1931292)))

(assert (=> bs!1527536 (= (= (head!12731 s!2326) (head!12731 (t!378112 s!2326))) (= lambda!336377 lambda!336368))))

(declare-fun bs!1527537 () Bool)

(assert (= bs!1527537 (and d!1931378 b!6162172)))

(assert (=> bs!1527537 (= (= (head!12731 s!2326) (h!70938 s!2326)) (= lambda!336377 lambda!336301))))

(assert (=> d!1931378 true))

(assert (=> d!1931378 (= (derivationStepZipper!2078 lt!2336103 (head!12731 s!2326)) (flatMap!1610 lt!2336103 lambda!336377))))

(declare-fun bs!1527538 () Bool)

(assert (= bs!1527538 d!1931378))

(declare-fun m!7001066 () Bool)

(assert (=> bs!1527538 m!7001066))

(assert (=> b!6162684 d!1931378))

(assert (=> b!6162684 d!1931318))

(assert (=> b!6162684 d!1931336))

(declare-fun b!6163253 () Bool)

(declare-fun e!3754949 () (InoxSet Context!10978))

(declare-fun call!513442 () (InoxSet Context!10978))

(assert (=> b!6163253 (= e!3754949 call!513442)))

(declare-fun c!1110161 () Bool)

(declare-fun call!513447 () List!64615)

(declare-fun c!1110163 () Bool)

(declare-fun c!1110164 () Bool)

(declare-fun bm!513437 () Bool)

(declare-fun call!513443 () (InoxSet Context!10978))

(assert (=> bm!513437 (= call!513443 (derivationStepZipperDown!1353 (ite c!1110161 (regOne!32723 (ite c!1110053 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110055 (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110056 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))) (reg!16434 (regTwo!32723 (regOne!32722 r!7292))))))) (ite c!1110163 (regTwo!32722 (ite c!1110053 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110055 (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110056 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))) (reg!16434 (regTwo!32723 (regOne!32722 r!7292))))))) (ite c!1110164 (regOne!32722 (ite c!1110053 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110055 (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110056 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))) (reg!16434 (regTwo!32723 (regOne!32722 r!7292))))))) (reg!16434 (ite c!1110053 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110055 (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110056 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))) (reg!16434 (regTwo!32723 (regOne!32722 r!7292)))))))))) (ite (or c!1110161 c!1110163) (ite (or c!1110053 c!1110055) lt!2336120 (Context!10979 call!513373)) (Context!10979 call!513447)) (h!70938 s!2326)))))

(declare-fun b!6163254 () Bool)

(declare-fun c!1110162 () Bool)

(assert (=> b!6163254 (= c!1110162 ((_ is Star!16105) (ite c!1110053 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110055 (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110056 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))) (reg!16434 (regTwo!32723 (regOne!32722 r!7292))))))))))

(declare-fun e!3754952 () (InoxSet Context!10978))

(assert (=> b!6163254 (= e!3754952 e!3754949)))

(declare-fun b!6163255 () Bool)

(declare-fun e!3754951 () (InoxSet Context!10978))

(declare-fun e!3754948 () (InoxSet Context!10978))

(assert (=> b!6163255 (= e!3754951 e!3754948)))

(assert (=> b!6163255 (= c!1110161 ((_ is Union!16105) (ite c!1110053 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110055 (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110056 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))) (reg!16434 (regTwo!32723 (regOne!32722 r!7292))))))))))

(declare-fun b!6163256 () Bool)

(declare-fun e!3754953 () (InoxSet Context!10978))

(assert (=> b!6163256 (= e!3754953 e!3754952)))

(assert (=> b!6163256 (= c!1110164 ((_ is Concat!24950) (ite c!1110053 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110055 (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110056 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))) (reg!16434 (regTwo!32723 (regOne!32722 r!7292))))))))))

(declare-fun b!6163257 () Bool)

(assert (=> b!6163257 (= e!3754949 ((as const (Array Context!10978 Bool)) false))))

(declare-fun bm!513438 () Bool)

(declare-fun call!513445 () List!64615)

(assert (=> bm!513438 (= call!513447 call!513445)))

(declare-fun bm!513439 () Bool)

(assert (=> bm!513439 (= call!513445 ($colon$colon!1982 (exprs!5989 (ite (or c!1110053 c!1110055) lt!2336120 (Context!10979 call!513373))) (ite (or c!1110163 c!1110164) (regTwo!32722 (ite c!1110053 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110055 (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110056 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))) (reg!16434 (regTwo!32723 (regOne!32722 r!7292))))))) (ite c!1110053 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110055 (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110056 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))) (reg!16434 (regTwo!32723 (regOne!32722 r!7292)))))))))))

(declare-fun call!513446 () (InoxSet Context!10978))

(declare-fun bm!513440 () Bool)

(assert (=> bm!513440 (= call!513446 (derivationStepZipperDown!1353 (ite c!1110161 (regTwo!32723 (ite c!1110053 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110055 (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110056 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))) (reg!16434 (regTwo!32723 (regOne!32722 r!7292))))))) (regOne!32722 (ite c!1110053 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110055 (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110056 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))) (reg!16434 (regTwo!32723 (regOne!32722 r!7292)))))))) (ite c!1110161 (ite (or c!1110053 c!1110055) lt!2336120 (Context!10979 call!513373)) (Context!10979 call!513445)) (h!70938 s!2326)))))

(declare-fun b!6163258 () Bool)

(assert (=> b!6163258 (= e!3754951 (store ((as const (Array Context!10978 Bool)) false) (ite (or c!1110053 c!1110055) lt!2336120 (Context!10979 call!513373)) true))))

(declare-fun b!6163259 () Bool)

(declare-fun e!3754950 () Bool)

(assert (=> b!6163259 (= c!1110163 e!3754950)))

(declare-fun res!2552080 () Bool)

(assert (=> b!6163259 (=> (not res!2552080) (not e!3754950))))

(assert (=> b!6163259 (= res!2552080 ((_ is Concat!24950) (ite c!1110053 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110055 (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110056 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))) (reg!16434 (regTwo!32723 (regOne!32722 r!7292))))))))))

(assert (=> b!6163259 (= e!3754948 e!3754953)))

(declare-fun d!1931380 () Bool)

(declare-fun c!1110160 () Bool)

(assert (=> d!1931380 (= c!1110160 (and ((_ is ElementMatch!16105) (ite c!1110053 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110055 (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110056 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))) (reg!16434 (regTwo!32723 (regOne!32722 r!7292))))))) (= (c!1109850 (ite c!1110053 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110055 (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110056 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))) (reg!16434 (regTwo!32723 (regOne!32722 r!7292))))))) (h!70938 s!2326))))))

(assert (=> d!1931380 (= (derivationStepZipperDown!1353 (ite c!1110053 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110055 (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110056 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))) (reg!16434 (regTwo!32723 (regOne!32722 r!7292)))))) (ite (or c!1110053 c!1110055) lt!2336120 (Context!10979 call!513373)) (h!70938 s!2326)) e!3754951)))

(declare-fun b!6163260 () Bool)

(assert (=> b!6163260 (= e!3754948 ((_ map or) call!513443 call!513446))))

(declare-fun bm!513441 () Bool)

(declare-fun call!513444 () (InoxSet Context!10978))

(assert (=> bm!513441 (= call!513442 call!513444)))

(declare-fun b!6163261 () Bool)

(assert (=> b!6163261 (= e!3754952 call!513442)))

(declare-fun b!6163262 () Bool)

(assert (=> b!6163262 (= e!3754953 ((_ map or) call!513446 call!513444))))

(declare-fun bm!513442 () Bool)

(assert (=> bm!513442 (= call!513444 call!513443)))

(declare-fun b!6163263 () Bool)

(assert (=> b!6163263 (= e!3754950 (nullable!6098 (regOne!32722 (ite c!1110053 (regOne!32723 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110055 (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (ite c!1110056 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))) (reg!16434 (regTwo!32723 (regOne!32722 r!7292)))))))))))

(assert (= (and d!1931380 c!1110160) b!6163258))

(assert (= (and d!1931380 (not c!1110160)) b!6163255))

(assert (= (and b!6163255 c!1110161) b!6163260))

(assert (= (and b!6163255 (not c!1110161)) b!6163259))

(assert (= (and b!6163259 res!2552080) b!6163263))

(assert (= (and b!6163259 c!1110163) b!6163262))

(assert (= (and b!6163259 (not c!1110163)) b!6163256))

(assert (= (and b!6163256 c!1110164) b!6163261))

(assert (= (and b!6163256 (not c!1110164)) b!6163254))

(assert (= (and b!6163254 c!1110162) b!6163253))

(assert (= (and b!6163254 (not c!1110162)) b!6163257))

(assert (= (or b!6163261 b!6163253) bm!513438))

(assert (= (or b!6163261 b!6163253) bm!513441))

(assert (= (or b!6163262 bm!513438) bm!513439))

(assert (= (or b!6163262 bm!513441) bm!513442))

(assert (= (or b!6163260 b!6163262) bm!513440))

(assert (= (or b!6163260 bm!513442) bm!513437))

(declare-fun m!7001068 () Bool)

(assert (=> bm!513437 m!7001068))

(declare-fun m!7001070 () Bool)

(assert (=> b!6163263 m!7001070))

(declare-fun m!7001072 () Bool)

(assert (=> bm!513439 m!7001072))

(declare-fun m!7001074 () Bool)

(assert (=> b!6163258 m!7001074))

(declare-fun m!7001076 () Bool)

(assert (=> bm!513440 m!7001076))

(assert (=> bm!513363 d!1931380))

(assert (=> d!1931178 d!1931166))

(declare-fun d!1931382 () Bool)

(assert (=> d!1931382 (= (flatMap!1610 lt!2336103 lambda!336301) (dynLambda!25429 lambda!336301 lt!2336096))))

(assert (=> d!1931382 true))

(declare-fun _$13!3118 () Unit!157619)

(assert (=> d!1931382 (= (choose!45824 lt!2336103 lt!2336096 lambda!336301) _$13!3118)))

(declare-fun b_lambda!234621 () Bool)

(assert (=> (not b_lambda!234621) (not d!1931382)))

(declare-fun bs!1527539 () Bool)

(assert (= bs!1527539 d!1931382))

(assert (=> bs!1527539 m!7000120))

(assert (=> bs!1527539 m!7000572))

(assert (=> d!1931178 d!1931382))

(declare-fun d!1931384 () Bool)

(declare-fun c!1110165 () Bool)

(assert (=> d!1931384 (= c!1110165 (isEmpty!36465 (tail!11816 (t!378112 s!2326))))))

(declare-fun e!3754954 () Bool)

(assert (=> d!1931384 (= (matchZipper!2117 (derivationStepZipper!2078 lt!2336118 (head!12731 (t!378112 s!2326))) (tail!11816 (t!378112 s!2326))) e!3754954)))

(declare-fun b!6163264 () Bool)

(assert (=> b!6163264 (= e!3754954 (nullableZipper!1886 (derivationStepZipper!2078 lt!2336118 (head!12731 (t!378112 s!2326)))))))

(declare-fun b!6163265 () Bool)

(assert (=> b!6163265 (= e!3754954 (matchZipper!2117 (derivationStepZipper!2078 (derivationStepZipper!2078 lt!2336118 (head!12731 (t!378112 s!2326))) (head!12731 (tail!11816 (t!378112 s!2326)))) (tail!11816 (tail!11816 (t!378112 s!2326)))))))

(assert (= (and d!1931384 c!1110165) b!6163264))

(assert (= (and d!1931384 (not c!1110165)) b!6163265))

(assert (=> d!1931384 m!7000504))

(assert (=> d!1931384 m!7000816))

(assert (=> b!6163264 m!7000516))

(declare-fun m!7001078 () Bool)

(assert (=> b!6163264 m!7001078))

(assert (=> b!6163265 m!7000504))

(assert (=> b!6163265 m!7000820))

(assert (=> b!6163265 m!7000516))

(assert (=> b!6163265 m!7000820))

(declare-fun m!7001080 () Bool)

(assert (=> b!6163265 m!7001080))

(assert (=> b!6163265 m!7000504))

(assert (=> b!6163265 m!7000824))

(assert (=> b!6163265 m!7001080))

(assert (=> b!6163265 m!7000824))

(declare-fun m!7001082 () Bool)

(assert (=> b!6163265 m!7001082))

(assert (=> b!6162657 d!1931384))

(declare-fun bs!1527540 () Bool)

(declare-fun d!1931386 () Bool)

(assert (= bs!1527540 (and d!1931386 d!1931334)))

(declare-fun lambda!336378 () Int)

(assert (=> bs!1527540 (= (= (head!12731 (t!378112 s!2326)) (head!12731 s!2326)) (= lambda!336378 lambda!336369))))

(declare-fun bs!1527541 () Bool)

(assert (= bs!1527541 (and d!1931386 d!1931280)))

(assert (=> bs!1527541 (= lambda!336378 lambda!336364)))

(declare-fun bs!1527542 () Bool)

(assert (= bs!1527542 (and d!1931386 d!1931344)))

(assert (=> bs!1527542 (= lambda!336378 lambda!336371)))

(declare-fun bs!1527543 () Bool)

(assert (= bs!1527543 (and d!1931386 d!1931340)))

(assert (=> bs!1527543 (= lambda!336378 lambda!336370)))

(declare-fun bs!1527544 () Bool)

(assert (= bs!1527544 (and d!1931386 d!1931374)))

(assert (=> bs!1527544 (= lambda!336378 lambda!336376)))

(declare-fun bs!1527545 () Bool)

(assert (= bs!1527545 (and d!1931386 d!1931378)))

(assert (=> bs!1527545 (= (= (head!12731 (t!378112 s!2326)) (head!12731 s!2326)) (= lambda!336378 lambda!336377))))

(declare-fun bs!1527546 () Bool)

(assert (= bs!1527546 (and d!1931386 d!1931364)))

(assert (=> bs!1527546 (= lambda!336378 lambda!336373)))

(declare-fun bs!1527547 () Bool)

(assert (= bs!1527547 (and d!1931386 d!1931292)))

(assert (=> bs!1527547 (= lambda!336378 lambda!336368)))

(declare-fun bs!1527548 () Bool)

(assert (= bs!1527548 (and d!1931386 b!6162172)))

(assert (=> bs!1527548 (= (= (head!12731 (t!378112 s!2326)) (h!70938 s!2326)) (= lambda!336378 lambda!336301))))

(assert (=> d!1931386 true))

(assert (=> d!1931386 (= (derivationStepZipper!2078 lt!2336118 (head!12731 (t!378112 s!2326))) (flatMap!1610 lt!2336118 lambda!336378))))

(declare-fun bs!1527549 () Bool)

(assert (= bs!1527549 d!1931386))

(declare-fun m!7001084 () Bool)

(assert (=> bs!1527549 m!7001084))

(assert (=> b!6162657 d!1931386))

(assert (=> b!6162657 d!1931282))

(assert (=> b!6162657 d!1931284))

(declare-fun d!1931388 () Bool)

(declare-fun res!2552081 () Bool)

(declare-fun e!3754955 () Bool)

(assert (=> d!1931388 (=> res!2552081 e!3754955)))

(assert (=> d!1931388 (= res!2552081 ((_ is Nil!64491) (exprs!5989 lt!2336096)))))

(assert (=> d!1931388 (= (forall!15226 (exprs!5989 lt!2336096) lambda!336352) e!3754955)))

(declare-fun b!6163266 () Bool)

(declare-fun e!3754956 () Bool)

(assert (=> b!6163266 (= e!3754955 e!3754956)))

(declare-fun res!2552082 () Bool)

(assert (=> b!6163266 (=> (not res!2552082) (not e!3754956))))

(assert (=> b!6163266 (= res!2552082 (dynLambda!25430 lambda!336352 (h!70939 (exprs!5989 lt!2336096))))))

(declare-fun b!6163267 () Bool)

(assert (=> b!6163267 (= e!3754956 (forall!15226 (t!378113 (exprs!5989 lt!2336096)) lambda!336352))))

(assert (= (and d!1931388 (not res!2552081)) b!6163266))

(assert (= (and b!6163266 res!2552082) b!6163267))

(declare-fun b_lambda!234623 () Bool)

(assert (=> (not b_lambda!234623) (not b!6163266)))

(declare-fun m!7001086 () Bool)

(assert (=> b!6163266 m!7001086))

(declare-fun m!7001088 () Bool)

(assert (=> b!6163267 m!7001088))

(assert (=> d!1931230 d!1931388))

(declare-fun d!1931390 () Bool)

(assert (=> d!1931390 (= (nullable!6098 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343))))) (nullableFct!2062 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343))))))))

(declare-fun bs!1527550 () Bool)

(assert (= bs!1527550 d!1931390))

(declare-fun m!7001090 () Bool)

(assert (=> bs!1527550 m!7001090))

(assert (=> b!6162770 d!1931390))

(declare-fun d!1931392 () Bool)

(assert (=> d!1931392 (= (isEmptyLang!1532 lt!2336220) ((_ is EmptyLang!16105) lt!2336220))))

(assert (=> b!6162922 d!1931392))

(assert (=> d!1931170 d!1931254))

(declare-fun d!1931394 () Bool)

(assert (=> d!1931394 (= (nullable!6098 (h!70939 (exprs!5989 lt!2336096))) (nullableFct!2062 (h!70939 (exprs!5989 lt!2336096))))))

(declare-fun bs!1527551 () Bool)

(assert (= bs!1527551 d!1931394))

(declare-fun m!7001092 () Bool)

(assert (=> bs!1527551 m!7001092))

(assert (=> b!6162682 d!1931394))

(declare-fun d!1931396 () Bool)

(declare-fun lt!2336241 () Int)

(assert (=> d!1931396 (>= lt!2336241 0)))

(declare-fun e!3754959 () Int)

(assert (=> d!1931396 (= lt!2336241 e!3754959)))

(declare-fun c!1110169 () Bool)

(assert (=> d!1931396 (= c!1110169 ((_ is Cons!64491) (exprs!5989 (h!70940 zl!343))))))

(assert (=> d!1931396 (= (contextDepthTotal!265 (h!70940 zl!343)) lt!2336241)))

(declare-fun b!6163272 () Bool)

(declare-fun regexDepthTotal!128 (Regex!16105) Int)

(assert (=> b!6163272 (= e!3754959 (+ (regexDepthTotal!128 (h!70939 (exprs!5989 (h!70940 zl!343)))) (contextDepthTotal!265 (Context!10979 (t!378113 (exprs!5989 (h!70940 zl!343)))))))))

(declare-fun b!6163273 () Bool)

(assert (=> b!6163273 (= e!3754959 1)))

(assert (= (and d!1931396 c!1110169) b!6163272))

(assert (= (and d!1931396 (not c!1110169)) b!6163273))

(declare-fun m!7001094 () Bool)

(assert (=> b!6163272 m!7001094))

(declare-fun m!7001096 () Bool)

(assert (=> b!6163272 m!7001096))

(assert (=> b!6162868 d!1931396))

(declare-fun d!1931398 () Bool)

(declare-fun lt!2336242 () Int)

(assert (=> d!1931398 (>= lt!2336242 0)))

(declare-fun e!3754960 () Int)

(assert (=> d!1931398 (= lt!2336242 e!3754960)))

(declare-fun c!1110170 () Bool)

(assert (=> d!1931398 (= c!1110170 ((_ is Cons!64492) (t!378114 zl!343)))))

(assert (=> d!1931398 (= (zipperDepthTotal!288 (t!378114 zl!343)) lt!2336242)))

(declare-fun b!6163274 () Bool)

(assert (=> b!6163274 (= e!3754960 (+ (contextDepthTotal!265 (h!70940 (t!378114 zl!343))) (zipperDepthTotal!288 (t!378114 (t!378114 zl!343)))))))

(declare-fun b!6163275 () Bool)

(assert (=> b!6163275 (= e!3754960 0)))

(assert (= (and d!1931398 c!1110170) b!6163274))

(assert (= (and d!1931398 (not c!1110170)) b!6163275))

(declare-fun m!7001098 () Bool)

(assert (=> b!6163274 m!7001098))

(declare-fun m!7001100 () Bool)

(assert (=> b!6163274 m!7001100))

(assert (=> b!6162868 d!1931398))

(declare-fun d!1931400 () Bool)

(declare-fun lt!2336243 () Int)

(assert (=> d!1931400 (>= lt!2336243 0)))

(declare-fun e!3754961 () Int)

(assert (=> d!1931400 (= lt!2336243 e!3754961)))

(declare-fun c!1110171 () Bool)

(assert (=> d!1931400 (= c!1110171 ((_ is Cons!64491) (exprs!5989 (h!70940 (Cons!64492 lt!2336104 Nil!64492)))))))

(assert (=> d!1931400 (= (contextDepthTotal!265 (h!70940 (Cons!64492 lt!2336104 Nil!64492))) lt!2336243)))

(declare-fun b!6163276 () Bool)

(assert (=> b!6163276 (= e!3754961 (+ (regexDepthTotal!128 (h!70939 (exprs!5989 (h!70940 (Cons!64492 lt!2336104 Nil!64492))))) (contextDepthTotal!265 (Context!10979 (t!378113 (exprs!5989 (h!70940 (Cons!64492 lt!2336104 Nil!64492))))))))))

(declare-fun b!6163277 () Bool)

(assert (=> b!6163277 (= e!3754961 1)))

(assert (= (and d!1931400 c!1110171) b!6163276))

(assert (= (and d!1931400 (not c!1110171)) b!6163277))

(declare-fun m!7001102 () Bool)

(assert (=> b!6163276 m!7001102))

(declare-fun m!7001104 () Bool)

(assert (=> b!6163276 m!7001104))

(assert (=> b!6162959 d!1931400))

(declare-fun d!1931402 () Bool)

(declare-fun lt!2336244 () Int)

(assert (=> d!1931402 (>= lt!2336244 0)))

(declare-fun e!3754962 () Int)

(assert (=> d!1931402 (= lt!2336244 e!3754962)))

(declare-fun c!1110172 () Bool)

(assert (=> d!1931402 (= c!1110172 ((_ is Cons!64492) (t!378114 (Cons!64492 lt!2336104 Nil!64492))))))

(assert (=> d!1931402 (= (zipperDepthTotal!288 (t!378114 (Cons!64492 lt!2336104 Nil!64492))) lt!2336244)))

(declare-fun b!6163278 () Bool)

(assert (=> b!6163278 (= e!3754962 (+ (contextDepthTotal!265 (h!70940 (t!378114 (Cons!64492 lt!2336104 Nil!64492)))) (zipperDepthTotal!288 (t!378114 (t!378114 (Cons!64492 lt!2336104 Nil!64492))))))))

(declare-fun b!6163279 () Bool)

(assert (=> b!6163279 (= e!3754962 0)))

(assert (= (and d!1931402 c!1110172) b!6163278))

(assert (= (and d!1931402 (not c!1110172)) b!6163279))

(declare-fun m!7001106 () Bool)

(assert (=> b!6163278 m!7001106))

(declare-fun m!7001108 () Bool)

(assert (=> b!6163278 m!7001108))

(assert (=> b!6162959 d!1931402))

(declare-fun b!6163280 () Bool)

(declare-fun res!2552086 () Bool)

(declare-fun e!3754965 () Bool)

(assert (=> b!6163280 (=> (not res!2552086) (not e!3754965))))

(declare-fun call!513448 () Bool)

(assert (=> b!6163280 (= res!2552086 (not call!513448))))

(declare-fun b!6163281 () Bool)

(declare-fun e!3754963 () Bool)

(declare-fun e!3754966 () Bool)

(assert (=> b!6163281 (= e!3754963 e!3754966)))

(declare-fun c!1110174 () Bool)

(assert (=> b!6163281 (= c!1110174 ((_ is EmptyLang!16105) (regTwo!32722 r!7292)))))

(declare-fun b!6163282 () Bool)

(declare-fun e!3754967 () Bool)

(assert (=> b!6163282 (= e!3754967 (not (= (head!12731 s!2326) (c!1109850 (regTwo!32722 r!7292)))))))

(declare-fun b!6163283 () Bool)

(declare-fun res!2552085 () Bool)

(assert (=> b!6163283 (=> res!2552085 e!3754967)))

(assert (=> b!6163283 (= res!2552085 (not (isEmpty!36465 (tail!11816 s!2326))))))

(declare-fun b!6163284 () Bool)

(declare-fun e!3754968 () Bool)

(assert (=> b!6163284 (= e!3754968 e!3754967)))

(declare-fun res!2552088 () Bool)

(assert (=> b!6163284 (=> res!2552088 e!3754967)))

(assert (=> b!6163284 (= res!2552088 call!513448)))

(declare-fun b!6163285 () Bool)

(declare-fun lt!2336245 () Bool)

(assert (=> b!6163285 (= e!3754966 (not lt!2336245))))

(declare-fun b!6163286 () Bool)

(declare-fun e!3754969 () Bool)

(assert (=> b!6163286 (= e!3754969 e!3754968)))

(declare-fun res!2552084 () Bool)

(assert (=> b!6163286 (=> (not res!2552084) (not e!3754968))))

(assert (=> b!6163286 (= res!2552084 (not lt!2336245))))

(declare-fun b!6163287 () Bool)

(declare-fun res!2552083 () Bool)

(assert (=> b!6163287 (=> (not res!2552083) (not e!3754965))))

(assert (=> b!6163287 (= res!2552083 (isEmpty!36465 (tail!11816 s!2326)))))

(declare-fun b!6163288 () Bool)

(assert (=> b!6163288 (= e!3754965 (= (head!12731 s!2326) (c!1109850 (regTwo!32722 r!7292))))))

(declare-fun b!6163289 () Bool)

(declare-fun res!2552090 () Bool)

(assert (=> b!6163289 (=> res!2552090 e!3754969)))

(assert (=> b!6163289 (= res!2552090 e!3754965)))

(declare-fun res!2552089 () Bool)

(assert (=> b!6163289 (=> (not res!2552089) (not e!3754965))))

(assert (=> b!6163289 (= res!2552089 lt!2336245)))

(declare-fun b!6163290 () Bool)

(declare-fun e!3754964 () Bool)

(assert (=> b!6163290 (= e!3754964 (matchR!8288 (derivativeStep!4825 (regTwo!32722 r!7292) (head!12731 s!2326)) (tail!11816 s!2326)))))

(declare-fun b!6163291 () Bool)

(assert (=> b!6163291 (= e!3754963 (= lt!2336245 call!513448))))

(declare-fun d!1931404 () Bool)

(assert (=> d!1931404 e!3754963))

(declare-fun c!1110173 () Bool)

(assert (=> d!1931404 (= c!1110173 ((_ is EmptyExpr!16105) (regTwo!32722 r!7292)))))

(assert (=> d!1931404 (= lt!2336245 e!3754964)))

(declare-fun c!1110175 () Bool)

(assert (=> d!1931404 (= c!1110175 (isEmpty!36465 s!2326))))

(assert (=> d!1931404 (validRegex!7841 (regTwo!32722 r!7292))))

(assert (=> d!1931404 (= (matchR!8288 (regTwo!32722 r!7292) s!2326) lt!2336245)))

(declare-fun bm!513443 () Bool)

(assert (=> bm!513443 (= call!513448 (isEmpty!36465 s!2326))))

(declare-fun b!6163292 () Bool)

(assert (=> b!6163292 (= e!3754964 (nullable!6098 (regTwo!32722 r!7292)))))

(declare-fun b!6163293 () Bool)

(declare-fun res!2552087 () Bool)

(assert (=> b!6163293 (=> res!2552087 e!3754969)))

(assert (=> b!6163293 (= res!2552087 (not ((_ is ElementMatch!16105) (regTwo!32722 r!7292))))))

(assert (=> b!6163293 (= e!3754966 e!3754969)))

(assert (= (and d!1931404 c!1110175) b!6163292))

(assert (= (and d!1931404 (not c!1110175)) b!6163290))

(assert (= (and d!1931404 c!1110173) b!6163291))

(assert (= (and d!1931404 (not c!1110173)) b!6163281))

(assert (= (and b!6163281 c!1110174) b!6163285))

(assert (= (and b!6163281 (not c!1110174)) b!6163293))

(assert (= (and b!6163293 (not res!2552087)) b!6163289))

(assert (= (and b!6163289 res!2552089) b!6163280))

(assert (= (and b!6163280 res!2552086) b!6163287))

(assert (= (and b!6163287 res!2552083) b!6163288))

(assert (= (and b!6163289 (not res!2552090)) b!6163286))

(assert (= (and b!6163286 res!2552084) b!6163284))

(assert (= (and b!6163284 (not res!2552088)) b!6163283))

(assert (= (and b!6163283 (not res!2552085)) b!6163282))

(assert (= (or b!6163291 b!6163280 b!6163284) bm!513443))

(assert (=> bm!513443 m!7000546))

(assert (=> b!6163282 m!7000550))

(assert (=> b!6163290 m!7000550))

(assert (=> b!6163290 m!7000550))

(declare-fun m!7001110 () Bool)

(assert (=> b!6163290 m!7001110))

(assert (=> b!6163290 m!7000554))

(assert (=> b!6163290 m!7001110))

(assert (=> b!6163290 m!7000554))

(declare-fun m!7001112 () Bool)

(assert (=> b!6163290 m!7001112))

(assert (=> d!1931404 m!7000546))

(assert (=> d!1931404 m!7000794))

(assert (=> b!6163288 m!7000550))

(assert (=> b!6163287 m!7000554))

(assert (=> b!6163287 m!7000554))

(assert (=> b!6163287 m!7000664))

(assert (=> b!6163283 m!7000554))

(assert (=> b!6163283 m!7000554))

(assert (=> b!6163283 m!7000664))

(assert (=> b!6163292 m!7000798))

(assert (=> b!6162632 d!1931404))

(assert (=> d!1931142 d!1931136))

(declare-fun b!6163294 () Bool)

(declare-fun res!2552093 () Bool)

(declare-fun e!3754971 () Bool)

(assert (=> b!6163294 (=> (not res!2552093) (not e!3754971))))

(declare-fun call!513450 () Bool)

(assert (=> b!6163294 (= res!2552093 call!513450)))

(declare-fun e!3754976 () Bool)

(assert (=> b!6163294 (= e!3754976 e!3754971)))

(declare-fun b!6163295 () Bool)

(declare-fun e!3754972 () Bool)

(assert (=> b!6163295 (= e!3754972 e!3754976)))

(declare-fun c!1110177 () Bool)

(assert (=> b!6163295 (= c!1110177 ((_ is Union!16105) (regOne!32722 r!7292)))))

(declare-fun c!1110176 () Bool)

(declare-fun bm!513444 () Bool)

(declare-fun call!513449 () Bool)

(assert (=> bm!513444 (= call!513449 (validRegex!7841 (ite c!1110176 (reg!16434 (regOne!32722 r!7292)) (ite c!1110177 (regOne!32723 (regOne!32722 r!7292)) (regOne!32722 (regOne!32722 r!7292))))))))

(declare-fun b!6163296 () Bool)

(declare-fun call!513451 () Bool)

(assert (=> b!6163296 (= e!3754971 call!513451)))

(declare-fun b!6163297 () Bool)

(declare-fun e!3754973 () Bool)

(assert (=> b!6163297 (= e!3754973 call!513451)))

(declare-fun bm!513445 () Bool)

(assert (=> bm!513445 (= call!513450 call!513449)))

(declare-fun b!6163298 () Bool)

(declare-fun e!3754975 () Bool)

(assert (=> b!6163298 (= e!3754975 e!3754973)))

(declare-fun res!2552091 () Bool)

(assert (=> b!6163298 (=> (not res!2552091) (not e!3754973))))

(assert (=> b!6163298 (= res!2552091 call!513450)))

(declare-fun b!6163299 () Bool)

(declare-fun e!3754974 () Bool)

(assert (=> b!6163299 (= e!3754974 call!513449)))

(declare-fun d!1931406 () Bool)

(declare-fun res!2552092 () Bool)

(declare-fun e!3754970 () Bool)

(assert (=> d!1931406 (=> res!2552092 e!3754970)))

(assert (=> d!1931406 (= res!2552092 ((_ is ElementMatch!16105) (regOne!32722 r!7292)))))

(assert (=> d!1931406 (= (validRegex!7841 (regOne!32722 r!7292)) e!3754970)))

(declare-fun b!6163300 () Bool)

(assert (=> b!6163300 (= e!3754970 e!3754972)))

(assert (=> b!6163300 (= c!1110176 ((_ is Star!16105) (regOne!32722 r!7292)))))

(declare-fun b!6163301 () Bool)

(assert (=> b!6163301 (= e!3754972 e!3754974)))

(declare-fun res!2552094 () Bool)

(assert (=> b!6163301 (= res!2552094 (not (nullable!6098 (reg!16434 (regOne!32722 r!7292)))))))

(assert (=> b!6163301 (=> (not res!2552094) (not e!3754974))))

(declare-fun b!6163302 () Bool)

(declare-fun res!2552095 () Bool)

(assert (=> b!6163302 (=> res!2552095 e!3754975)))

(assert (=> b!6163302 (= res!2552095 (not ((_ is Concat!24950) (regOne!32722 r!7292))))))

(assert (=> b!6163302 (= e!3754976 e!3754975)))

(declare-fun bm!513446 () Bool)

(assert (=> bm!513446 (= call!513451 (validRegex!7841 (ite c!1110177 (regTwo!32723 (regOne!32722 r!7292)) (regTwo!32722 (regOne!32722 r!7292)))))))

(assert (= (and d!1931406 (not res!2552092)) b!6163300))

(assert (= (and b!6163300 c!1110176) b!6163301))

(assert (= (and b!6163300 (not c!1110176)) b!6163295))

(assert (= (and b!6163301 res!2552094) b!6163299))

(assert (= (and b!6163295 c!1110177) b!6163294))

(assert (= (and b!6163295 (not c!1110177)) b!6163302))

(assert (= (and b!6163294 res!2552093) b!6163296))

(assert (= (and b!6163302 (not res!2552095)) b!6163298))

(assert (= (and b!6163298 res!2552091) b!6163297))

(assert (= (or b!6163296 b!6163297) bm!513446))

(assert (= (or b!6163294 b!6163298) bm!513445))

(assert (= (or b!6163299 bm!513445) bm!513444))

(declare-fun m!7001114 () Bool)

(assert (=> bm!513444 m!7001114))

(declare-fun m!7001116 () Bool)

(assert (=> b!6163301 m!7001116))

(declare-fun m!7001118 () Bool)

(assert (=> bm!513446 m!7001118))

(assert (=> d!1931142 d!1931406))

(assert (=> d!1931142 d!1931146))

(declare-fun d!1931408 () Bool)

(assert (=> d!1931408 (= (Exists!3175 lambda!336333) (choose!45819 lambda!336333))))

(declare-fun bs!1527552 () Bool)

(assert (= bs!1527552 d!1931408))

(declare-fun m!7001120 () Bool)

(assert (=> bs!1527552 m!7001120))

(assert (=> d!1931142 d!1931408))

(declare-fun bs!1527553 () Bool)

(declare-fun d!1931410 () Bool)

(assert (= bs!1527553 (and d!1931410 b!6162806)))

(declare-fun lambda!336381 () Int)

(assert (=> bs!1527553 (not (= lambda!336381 lambda!336348))))

(declare-fun bs!1527554 () Bool)

(assert (= bs!1527554 (and d!1931410 d!1931144)))

(assert (=> bs!1527554 (= lambda!336381 lambda!336338)))

(declare-fun bs!1527555 () Bool)

(assert (= bs!1527555 (and d!1931410 d!1931142)))

(assert (=> bs!1527555 (= lambda!336381 lambda!336333)))

(declare-fun bs!1527556 () Bool)

(assert (= bs!1527556 (and d!1931410 b!6163033)))

(assert (=> bs!1527556 (not (= lambda!336381 lambda!336360))))

(declare-fun bs!1527557 () Bool)

(assert (= bs!1527557 (and d!1931410 b!6162196)))

(assert (=> bs!1527557 (= lambda!336381 lambda!336299)))

(declare-fun bs!1527558 () Bool)

(assert (= bs!1527558 (and d!1931410 b!6163032)))

(assert (=> bs!1527558 (not (= lambda!336381 lambda!336361))))

(assert (=> bs!1527557 (not (= lambda!336381 lambda!336300))))

(assert (=> bs!1527554 (not (= lambda!336381 lambda!336339))))

(declare-fun bs!1527559 () Bool)

(assert (= bs!1527559 (and d!1931410 b!6162807)))

(assert (=> bs!1527559 (not (= lambda!336381 lambda!336347))))

(assert (=> d!1931410 true))

(assert (=> d!1931410 true))

(assert (=> d!1931410 true))

(assert (=> d!1931410 (= (isDefined!12699 (findConcatSeparation!2410 (regOne!32722 r!7292) (regTwo!32722 r!7292) Nil!64490 s!2326 s!2326)) (Exists!3175 lambda!336381))))

(assert (=> d!1931410 true))

(declare-fun _$89!2290 () Unit!157619)

(assert (=> d!1931410 (= (choose!45820 (regOne!32722 r!7292) (regTwo!32722 r!7292) s!2326) _$89!2290)))

(declare-fun bs!1527560 () Bool)

(assert (= bs!1527560 d!1931410))

(assert (=> bs!1527560 m!7000088))

(assert (=> bs!1527560 m!7000088))

(assert (=> bs!1527560 m!7000090))

(declare-fun m!7001122 () Bool)

(assert (=> bs!1527560 m!7001122))

(assert (=> d!1931142 d!1931410))

(declare-fun b!6163307 () Bool)

(declare-fun e!3754980 () (InoxSet Context!10978))

(declare-fun call!513452 () (InoxSet Context!10978))

(assert (=> b!6163307 (= e!3754980 call!513452)))

(declare-fun c!1110182 () Bool)

(declare-fun call!513453 () (InoxSet Context!10978))

(declare-fun c!1110179 () Bool)

(declare-fun call!513457 () List!64615)

(declare-fun c!1110181 () Bool)

(declare-fun bm!513447 () Bool)

(assert (=> bm!513447 (= call!513453 (derivationStepZipperDown!1353 (ite c!1110179 (regOne!32723 (h!70939 (exprs!5989 lt!2336120))) (ite c!1110181 (regTwo!32722 (h!70939 (exprs!5989 lt!2336120))) (ite c!1110182 (regOne!32722 (h!70939 (exprs!5989 lt!2336120))) (reg!16434 (h!70939 (exprs!5989 lt!2336120)))))) (ite (or c!1110179 c!1110181) (Context!10979 (t!378113 (exprs!5989 lt!2336120))) (Context!10979 call!513457)) (h!70938 s!2326)))))

(declare-fun b!6163308 () Bool)

(declare-fun c!1110180 () Bool)

(assert (=> b!6163308 (= c!1110180 ((_ is Star!16105) (h!70939 (exprs!5989 lt!2336120))))))

(declare-fun e!3754983 () (InoxSet Context!10978))

(assert (=> b!6163308 (= e!3754983 e!3754980)))

(declare-fun b!6163309 () Bool)

(declare-fun e!3754982 () (InoxSet Context!10978))

(declare-fun e!3754979 () (InoxSet Context!10978))

(assert (=> b!6163309 (= e!3754982 e!3754979)))

(assert (=> b!6163309 (= c!1110179 ((_ is Union!16105) (h!70939 (exprs!5989 lt!2336120))))))

(declare-fun b!6163310 () Bool)

(declare-fun e!3754984 () (InoxSet Context!10978))

(assert (=> b!6163310 (= e!3754984 e!3754983)))

(assert (=> b!6163310 (= c!1110182 ((_ is Concat!24950) (h!70939 (exprs!5989 lt!2336120))))))

(declare-fun b!6163311 () Bool)

(assert (=> b!6163311 (= e!3754980 ((as const (Array Context!10978 Bool)) false))))

(declare-fun bm!513448 () Bool)

(declare-fun call!513455 () List!64615)

(assert (=> bm!513448 (= call!513457 call!513455)))

(declare-fun bm!513449 () Bool)

(assert (=> bm!513449 (= call!513455 ($colon$colon!1982 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336120)))) (ite (or c!1110181 c!1110182) (regTwo!32722 (h!70939 (exprs!5989 lt!2336120))) (h!70939 (exprs!5989 lt!2336120)))))))

(declare-fun call!513456 () (InoxSet Context!10978))

(declare-fun bm!513450 () Bool)

(assert (=> bm!513450 (= call!513456 (derivationStepZipperDown!1353 (ite c!1110179 (regTwo!32723 (h!70939 (exprs!5989 lt!2336120))) (regOne!32722 (h!70939 (exprs!5989 lt!2336120)))) (ite c!1110179 (Context!10979 (t!378113 (exprs!5989 lt!2336120))) (Context!10979 call!513455)) (h!70938 s!2326)))))

(declare-fun b!6163312 () Bool)

(assert (=> b!6163312 (= e!3754982 (store ((as const (Array Context!10978 Bool)) false) (Context!10979 (t!378113 (exprs!5989 lt!2336120))) true))))

(declare-fun b!6163313 () Bool)

(declare-fun e!3754981 () Bool)

(assert (=> b!6163313 (= c!1110181 e!3754981)))

(declare-fun res!2552100 () Bool)

(assert (=> b!6163313 (=> (not res!2552100) (not e!3754981))))

(assert (=> b!6163313 (= res!2552100 ((_ is Concat!24950) (h!70939 (exprs!5989 lt!2336120))))))

(assert (=> b!6163313 (= e!3754979 e!3754984)))

(declare-fun d!1931412 () Bool)

(declare-fun c!1110178 () Bool)

(assert (=> d!1931412 (= c!1110178 (and ((_ is ElementMatch!16105) (h!70939 (exprs!5989 lt!2336120))) (= (c!1109850 (h!70939 (exprs!5989 lt!2336120))) (h!70938 s!2326))))))

(assert (=> d!1931412 (= (derivationStepZipperDown!1353 (h!70939 (exprs!5989 lt!2336120)) (Context!10979 (t!378113 (exprs!5989 lt!2336120))) (h!70938 s!2326)) e!3754982)))

(declare-fun b!6163314 () Bool)

(assert (=> b!6163314 (= e!3754979 ((_ map or) call!513453 call!513456))))

(declare-fun bm!513451 () Bool)

(declare-fun call!513454 () (InoxSet Context!10978))

(assert (=> bm!513451 (= call!513452 call!513454)))

(declare-fun b!6163315 () Bool)

(assert (=> b!6163315 (= e!3754983 call!513452)))

(declare-fun b!6163316 () Bool)

(assert (=> b!6163316 (= e!3754984 ((_ map or) call!513456 call!513454))))

(declare-fun bm!513452 () Bool)

(assert (=> bm!513452 (= call!513454 call!513453)))

(declare-fun b!6163317 () Bool)

(assert (=> b!6163317 (= e!3754981 (nullable!6098 (regOne!32722 (h!70939 (exprs!5989 lt!2336120)))))))

(assert (= (and d!1931412 c!1110178) b!6163312))

(assert (= (and d!1931412 (not c!1110178)) b!6163309))

(assert (= (and b!6163309 c!1110179) b!6163314))

(assert (= (and b!6163309 (not c!1110179)) b!6163313))

(assert (= (and b!6163313 res!2552100) b!6163317))

(assert (= (and b!6163313 c!1110181) b!6163316))

(assert (= (and b!6163313 (not c!1110181)) b!6163310))

(assert (= (and b!6163310 c!1110182) b!6163315))

(assert (= (and b!6163310 (not c!1110182)) b!6163308))

(assert (= (and b!6163308 c!1110180) b!6163307))

(assert (= (and b!6163308 (not c!1110180)) b!6163311))

(assert (= (or b!6163315 b!6163307) bm!513448))

(assert (= (or b!6163315 b!6163307) bm!513451))

(assert (= (or b!6163316 bm!513448) bm!513449))

(assert (= (or b!6163316 bm!513451) bm!513452))

(assert (= (or b!6163314 b!6163316) bm!513450))

(assert (= (or b!6163314 bm!513452) bm!513447))

(declare-fun m!7001124 () Bool)

(assert (=> bm!513447 m!7001124))

(declare-fun m!7001126 () Bool)

(assert (=> b!6163317 m!7001126))

(declare-fun m!7001128 () Bool)

(assert (=> bm!513449 m!7001128))

(declare-fun m!7001130 () Bool)

(assert (=> b!6163312 m!7001130))

(declare-fun m!7001132 () Bool)

(assert (=> bm!513450 m!7001132))

(assert (=> bm!513333 d!1931412))

(declare-fun b!6163318 () Bool)

(declare-fun e!3754985 () (InoxSet Context!10978))

(declare-fun call!513458 () (InoxSet Context!10978))

(assert (=> b!6163318 (= e!3754985 ((_ map or) call!513458 (derivationStepZipperUp!1279 (Context!10979 (t!378113 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 (h!70940 zl!343))))))) (h!70938 s!2326))))))

(declare-fun d!1931414 () Bool)

(declare-fun c!1110184 () Bool)

(declare-fun e!3754986 () Bool)

(assert (=> d!1931414 (= c!1110184 e!3754986)))

(declare-fun res!2552101 () Bool)

(assert (=> d!1931414 (=> (not res!2552101) (not e!3754986))))

(assert (=> d!1931414 (= res!2552101 ((_ is Cons!64491) (exprs!5989 (Context!10979 (t!378113 (exprs!5989 (h!70940 zl!343)))))))))

(assert (=> d!1931414 (= (derivationStepZipperUp!1279 (Context!10979 (t!378113 (exprs!5989 (h!70940 zl!343)))) (h!70938 s!2326)) e!3754985)))

(declare-fun b!6163319 () Bool)

(declare-fun e!3754987 () (InoxSet Context!10978))

(assert (=> b!6163319 (= e!3754985 e!3754987)))

(declare-fun c!1110183 () Bool)

(assert (=> b!6163319 (= c!1110183 ((_ is Cons!64491) (exprs!5989 (Context!10979 (t!378113 (exprs!5989 (h!70940 zl!343)))))))))

(declare-fun bm!513453 () Bool)

(assert (=> bm!513453 (= call!513458 (derivationStepZipperDown!1353 (h!70939 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 (h!70940 zl!343)))))) (Context!10979 (t!378113 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 (h!70940 zl!343))))))) (h!70938 s!2326)))))

(declare-fun b!6163320 () Bool)

(assert (=> b!6163320 (= e!3754987 ((as const (Array Context!10978 Bool)) false))))

(declare-fun b!6163321 () Bool)

(assert (=> b!6163321 (= e!3754987 call!513458)))

(declare-fun b!6163322 () Bool)

(assert (=> b!6163322 (= e!3754986 (nullable!6098 (h!70939 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 (h!70940 zl!343))))))))))

(assert (= (and d!1931414 res!2552101) b!6163322))

(assert (= (and d!1931414 c!1110184) b!6163318))

(assert (= (and d!1931414 (not c!1110184)) b!6163319))

(assert (= (and b!6163319 c!1110183) b!6163321))

(assert (= (and b!6163319 (not c!1110183)) b!6163320))

(assert (= (or b!6163318 b!6163321) bm!513453))

(declare-fun m!7001134 () Bool)

(assert (=> b!6163318 m!7001134))

(declare-fun m!7001136 () Bool)

(assert (=> bm!513453 m!7001136))

(declare-fun m!7001138 () Bool)

(assert (=> b!6163322 m!7001138))

(assert (=> b!6162733 d!1931414))

(declare-fun b!6163323 () Bool)

(declare-fun e!3754989 () (InoxSet Context!10978))

(declare-fun call!513459 () (InoxSet Context!10978))

(assert (=> b!6163323 (= e!3754989 call!513459)))

(declare-fun c!1110186 () Bool)

(declare-fun call!513460 () (InoxSet Context!10978))

(declare-fun call!513464 () List!64615)

(declare-fun c!1110188 () Bool)

(declare-fun bm!513454 () Bool)

(declare-fun c!1110189 () Bool)

(assert (=> bm!513454 (= call!513460 (derivationStepZipperDown!1353 (ite c!1110186 (regOne!32723 (ite c!1110058 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292))))) (ite c!1110188 (regTwo!32722 (ite c!1110058 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292))))) (ite c!1110189 (regOne!32722 (ite c!1110058 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292))))) (reg!16434 (ite c!1110058 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292)))))))) (ite (or c!1110186 c!1110188) (ite c!1110058 lt!2336120 (Context!10979 call!513377)) (Context!10979 call!513464)) (h!70938 s!2326)))))

(declare-fun b!6163324 () Bool)

(declare-fun c!1110187 () Bool)

(assert (=> b!6163324 (= c!1110187 ((_ is Star!16105) (ite c!1110058 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292))))))))

(declare-fun e!3754992 () (InoxSet Context!10978))

(assert (=> b!6163324 (= e!3754992 e!3754989)))

(declare-fun b!6163325 () Bool)

(declare-fun e!3754991 () (InoxSet Context!10978))

(declare-fun e!3754988 () (InoxSet Context!10978))

(assert (=> b!6163325 (= e!3754991 e!3754988)))

(assert (=> b!6163325 (= c!1110186 ((_ is Union!16105) (ite c!1110058 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292))))))))

(declare-fun b!6163326 () Bool)

(declare-fun e!3754993 () (InoxSet Context!10978))

(assert (=> b!6163326 (= e!3754993 e!3754992)))

(assert (=> b!6163326 (= c!1110189 ((_ is Concat!24950) (ite c!1110058 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292))))))))

(declare-fun b!6163327 () Bool)

(assert (=> b!6163327 (= e!3754989 ((as const (Array Context!10978 Bool)) false))))

(declare-fun bm!513455 () Bool)

(declare-fun call!513462 () List!64615)

(assert (=> bm!513455 (= call!513464 call!513462)))

(declare-fun bm!513456 () Bool)

(assert (=> bm!513456 (= call!513462 ($colon$colon!1982 (exprs!5989 (ite c!1110058 lt!2336120 (Context!10979 call!513377))) (ite (or c!1110188 c!1110189) (regTwo!32722 (ite c!1110058 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292))))) (ite c!1110058 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292)))))))))

(declare-fun call!513463 () (InoxSet Context!10978))

(declare-fun bm!513457 () Bool)

(assert (=> bm!513457 (= call!513463 (derivationStepZipperDown!1353 (ite c!1110186 (regTwo!32723 (ite c!1110058 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292))))) (regOne!32722 (ite c!1110058 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292)))))) (ite c!1110186 (ite c!1110058 lt!2336120 (Context!10979 call!513377)) (Context!10979 call!513462)) (h!70938 s!2326)))))

(declare-fun b!6163328 () Bool)

(assert (=> b!6163328 (= e!3754991 (store ((as const (Array Context!10978 Bool)) false) (ite c!1110058 lt!2336120 (Context!10979 call!513377)) true))))

(declare-fun b!6163329 () Bool)

(declare-fun e!3754990 () Bool)

(assert (=> b!6163329 (= c!1110188 e!3754990)))

(declare-fun res!2552102 () Bool)

(assert (=> b!6163329 (=> (not res!2552102) (not e!3754990))))

(assert (=> b!6163329 (= res!2552102 ((_ is Concat!24950) (ite c!1110058 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292))))))))

(assert (=> b!6163329 (= e!3754988 e!3754993)))

(declare-fun d!1931416 () Bool)

(declare-fun c!1110185 () Bool)

(assert (=> d!1931416 (= c!1110185 (and ((_ is ElementMatch!16105) (ite c!1110058 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292))))) (= (c!1109850 (ite c!1110058 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292))))) (h!70938 s!2326))))))

(assert (=> d!1931416 (= (derivationStepZipperDown!1353 (ite c!1110058 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292)))) (ite c!1110058 lt!2336120 (Context!10979 call!513377)) (h!70938 s!2326)) e!3754991)))

(declare-fun b!6163330 () Bool)

(assert (=> b!6163330 (= e!3754988 ((_ map or) call!513460 call!513463))))

(declare-fun bm!513458 () Bool)

(declare-fun call!513461 () (InoxSet Context!10978))

(assert (=> bm!513458 (= call!513459 call!513461)))

(declare-fun b!6163331 () Bool)

(assert (=> b!6163331 (= e!3754992 call!513459)))

(declare-fun b!6163332 () Bool)

(assert (=> b!6163332 (= e!3754993 ((_ map or) call!513463 call!513461))))

(declare-fun bm!513459 () Bool)

(assert (=> bm!513459 (= call!513461 call!513460)))

(declare-fun b!6163333 () Bool)

(assert (=> b!6163333 (= e!3754990 (nullable!6098 (regOne!32722 (ite c!1110058 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292)))))))))

(assert (= (and d!1931416 c!1110185) b!6163328))

(assert (= (and d!1931416 (not c!1110185)) b!6163325))

(assert (= (and b!6163325 c!1110186) b!6163330))

(assert (= (and b!6163325 (not c!1110186)) b!6163329))

(assert (= (and b!6163329 res!2552102) b!6163333))

(assert (= (and b!6163329 c!1110188) b!6163332))

(assert (= (and b!6163329 (not c!1110188)) b!6163326))

(assert (= (and b!6163326 c!1110189) b!6163331))

(assert (= (and b!6163326 (not c!1110189)) b!6163324))

(assert (= (and b!6163324 c!1110187) b!6163323))

(assert (= (and b!6163324 (not c!1110187)) b!6163327))

(assert (= (or b!6163331 b!6163323) bm!513455))

(assert (= (or b!6163331 b!6163323) bm!513458))

(assert (= (or b!6163332 bm!513455) bm!513456))

(assert (= (or b!6163332 bm!513458) bm!513459))

(assert (= (or b!6163330 b!6163332) bm!513457))

(assert (= (or b!6163330 bm!513459) bm!513454))

(declare-fun m!7001140 () Bool)

(assert (=> bm!513454 m!7001140))

(declare-fun m!7001142 () Bool)

(assert (=> b!6163333 m!7001142))

(declare-fun m!7001144 () Bool)

(assert (=> bm!513456 m!7001144))

(declare-fun m!7001146 () Bool)

(assert (=> b!6163328 m!7001146))

(declare-fun m!7001148 () Bool)

(assert (=> bm!513457 m!7001148))

(assert (=> bm!513372 d!1931416))

(declare-fun d!1931418 () Bool)

(assert (=> d!1931418 true))

(declare-fun setRes!41776 () Bool)

(assert (=> d!1931418 setRes!41776))

(declare-fun condSetEmpty!41776 () Bool)

(declare-fun res!2552103 () (InoxSet Context!10978))

(assert (=> d!1931418 (= condSetEmpty!41776 (= res!2552103 ((as const (Array Context!10978 Bool)) false)))))

(assert (=> d!1931418 (= (choose!45823 z!1189 lambda!336301) res!2552103)))

(declare-fun setIsEmpty!41776 () Bool)

(assert (=> setIsEmpty!41776 setRes!41776))

(declare-fun e!3754994 () Bool)

(declare-fun setElem!41776 () Context!10978)

(declare-fun setNonEmpty!41776 () Bool)

(declare-fun tp!1720721 () Bool)

(assert (=> setNonEmpty!41776 (= setRes!41776 (and tp!1720721 (inv!83509 setElem!41776) e!3754994))))

(declare-fun setRest!41776 () (InoxSet Context!10978))

(assert (=> setNonEmpty!41776 (= res!2552103 ((_ map or) (store ((as const (Array Context!10978 Bool)) false) setElem!41776 true) setRest!41776))))

(declare-fun b!6163334 () Bool)

(declare-fun tp!1720722 () Bool)

(assert (=> b!6163334 (= e!3754994 tp!1720722)))

(assert (= (and d!1931418 condSetEmpty!41776) setIsEmpty!41776))

(assert (= (and d!1931418 (not condSetEmpty!41776)) setNonEmpty!41776))

(assert (= setNonEmpty!41776 b!6163334))

(declare-fun m!7001150 () Bool)

(assert (=> setNonEmpty!41776 m!7001150))

(assert (=> d!1931200 d!1931418))

(declare-fun bs!1527561 () Bool)

(declare-fun d!1931420 () Bool)

(assert (= bs!1527561 (and d!1931420 d!1931288)))

(declare-fun lambda!336382 () Int)

(assert (=> bs!1527561 (= lambda!336382 lambda!336367)))

(declare-fun bs!1527562 () Bool)

(assert (= bs!1527562 (and d!1931420 d!1931354)))

(assert (=> bs!1527562 (= lambda!336382 lambda!336372)))

(declare-fun bs!1527563 () Bool)

(assert (= bs!1527563 (and d!1931420 d!1931368)))

(assert (=> bs!1527563 (= lambda!336382 lambda!336374)))

(assert (=> d!1931420 (= (nullableZipper!1886 lt!2336092) (exists!2449 lt!2336092 lambda!336382))))

(declare-fun bs!1527564 () Bool)

(assert (= bs!1527564 d!1931420))

(declare-fun m!7001152 () Bool)

(assert (=> bs!1527564 m!7001152))

(assert (=> b!6162652 d!1931420))

(declare-fun d!1931422 () Bool)

(assert (=> d!1931422 (= (isDefined!12699 lt!2336181) (not (isEmpty!36464 lt!2336181)))))

(declare-fun bs!1527565 () Bool)

(assert (= bs!1527565 d!1931422))

(declare-fun m!7001154 () Bool)

(assert (=> bs!1527565 m!7001154))

(assert (=> d!1931136 d!1931422))

(declare-fun b!6163335 () Bool)

(declare-fun res!2552107 () Bool)

(declare-fun e!3754997 () Bool)

(assert (=> b!6163335 (=> (not res!2552107) (not e!3754997))))

(declare-fun call!513465 () Bool)

(assert (=> b!6163335 (= res!2552107 (not call!513465))))

(declare-fun b!6163336 () Bool)

(declare-fun e!3754995 () Bool)

(declare-fun e!3754998 () Bool)

(assert (=> b!6163336 (= e!3754995 e!3754998)))

(declare-fun c!1110191 () Bool)

(assert (=> b!6163336 (= c!1110191 ((_ is EmptyLang!16105) (regOne!32722 r!7292)))))

(declare-fun b!6163337 () Bool)

(declare-fun e!3754999 () Bool)

(assert (=> b!6163337 (= e!3754999 (not (= (head!12731 Nil!64490) (c!1109850 (regOne!32722 r!7292)))))))

(declare-fun b!6163338 () Bool)

(declare-fun res!2552106 () Bool)

(assert (=> b!6163338 (=> res!2552106 e!3754999)))

(assert (=> b!6163338 (= res!2552106 (not (isEmpty!36465 (tail!11816 Nil!64490))))))

(declare-fun b!6163339 () Bool)

(declare-fun e!3755000 () Bool)

(assert (=> b!6163339 (= e!3755000 e!3754999)))

(declare-fun res!2552109 () Bool)

(assert (=> b!6163339 (=> res!2552109 e!3754999)))

(assert (=> b!6163339 (= res!2552109 call!513465)))

(declare-fun b!6163340 () Bool)

(declare-fun lt!2336246 () Bool)

(assert (=> b!6163340 (= e!3754998 (not lt!2336246))))

(declare-fun b!6163341 () Bool)

(declare-fun e!3755001 () Bool)

(assert (=> b!6163341 (= e!3755001 e!3755000)))

(declare-fun res!2552105 () Bool)

(assert (=> b!6163341 (=> (not res!2552105) (not e!3755000))))

(assert (=> b!6163341 (= res!2552105 (not lt!2336246))))

(declare-fun b!6163342 () Bool)

(declare-fun res!2552104 () Bool)

(assert (=> b!6163342 (=> (not res!2552104) (not e!3754997))))

(assert (=> b!6163342 (= res!2552104 (isEmpty!36465 (tail!11816 Nil!64490)))))

(declare-fun b!6163343 () Bool)

(assert (=> b!6163343 (= e!3754997 (= (head!12731 Nil!64490) (c!1109850 (regOne!32722 r!7292))))))

(declare-fun b!6163344 () Bool)

(declare-fun res!2552111 () Bool)

(assert (=> b!6163344 (=> res!2552111 e!3755001)))

(assert (=> b!6163344 (= res!2552111 e!3754997)))

(declare-fun res!2552110 () Bool)

(assert (=> b!6163344 (=> (not res!2552110) (not e!3754997))))

(assert (=> b!6163344 (= res!2552110 lt!2336246)))

(declare-fun b!6163345 () Bool)

(declare-fun e!3754996 () Bool)

(assert (=> b!6163345 (= e!3754996 (matchR!8288 (derivativeStep!4825 (regOne!32722 r!7292) (head!12731 Nil!64490)) (tail!11816 Nil!64490)))))

(declare-fun b!6163346 () Bool)

(assert (=> b!6163346 (= e!3754995 (= lt!2336246 call!513465))))

(declare-fun d!1931424 () Bool)

(assert (=> d!1931424 e!3754995))

(declare-fun c!1110190 () Bool)

(assert (=> d!1931424 (= c!1110190 ((_ is EmptyExpr!16105) (regOne!32722 r!7292)))))

(assert (=> d!1931424 (= lt!2336246 e!3754996)))

(declare-fun c!1110192 () Bool)

(assert (=> d!1931424 (= c!1110192 (isEmpty!36465 Nil!64490))))

(assert (=> d!1931424 (validRegex!7841 (regOne!32722 r!7292))))

(assert (=> d!1931424 (= (matchR!8288 (regOne!32722 r!7292) Nil!64490) lt!2336246)))

(declare-fun bm!513460 () Bool)

(assert (=> bm!513460 (= call!513465 (isEmpty!36465 Nil!64490))))

(declare-fun b!6163347 () Bool)

(assert (=> b!6163347 (= e!3754996 (nullable!6098 (regOne!32722 r!7292)))))

(declare-fun b!6163348 () Bool)

(declare-fun res!2552108 () Bool)

(assert (=> b!6163348 (=> res!2552108 e!3755001)))

(assert (=> b!6163348 (= res!2552108 (not ((_ is ElementMatch!16105) (regOne!32722 r!7292))))))

(assert (=> b!6163348 (= e!3754998 e!3755001)))

(assert (= (and d!1931424 c!1110192) b!6163347))

(assert (= (and d!1931424 (not c!1110192)) b!6163345))

(assert (= (and d!1931424 c!1110190) b!6163346))

(assert (= (and d!1931424 (not c!1110190)) b!6163336))

(assert (= (and b!6163336 c!1110191) b!6163340))

(assert (= (and b!6163336 (not c!1110191)) b!6163348))

(assert (= (and b!6163348 (not res!2552108)) b!6163344))

(assert (= (and b!6163344 res!2552110) b!6163335))

(assert (= (and b!6163335 res!2552107) b!6163342))

(assert (= (and b!6163342 res!2552104) b!6163343))

(assert (= (and b!6163344 (not res!2552111)) b!6163341))

(assert (= (and b!6163341 res!2552105) b!6163339))

(assert (= (and b!6163339 (not res!2552109)) b!6163338))

(assert (= (and b!6163338 (not res!2552106)) b!6163337))

(assert (= (or b!6163346 b!6163335 b!6163339) bm!513460))

(declare-fun m!7001156 () Bool)

(assert (=> bm!513460 m!7001156))

(declare-fun m!7001158 () Bool)

(assert (=> b!6163337 m!7001158))

(assert (=> b!6163345 m!7001158))

(assert (=> b!6163345 m!7001158))

(declare-fun m!7001160 () Bool)

(assert (=> b!6163345 m!7001160))

(declare-fun m!7001162 () Bool)

(assert (=> b!6163345 m!7001162))

(assert (=> b!6163345 m!7001160))

(assert (=> b!6163345 m!7001162))

(declare-fun m!7001164 () Bool)

(assert (=> b!6163345 m!7001164))

(assert (=> d!1931424 m!7001156))

(assert (=> d!1931424 m!7000464))

(assert (=> b!6163343 m!7001158))

(assert (=> b!6163342 m!7001162))

(assert (=> b!6163342 m!7001162))

(declare-fun m!7001166 () Bool)

(assert (=> b!6163342 m!7001166))

(assert (=> b!6163338 m!7001162))

(assert (=> b!6163338 m!7001162))

(assert (=> b!6163338 m!7001166))

(assert (=> b!6163347 m!7000842))

(assert (=> d!1931136 d!1931424))

(assert (=> d!1931136 d!1931406))

(declare-fun d!1931426 () Bool)

(assert (=> d!1931426 (= (nullable!6098 (regOne!32722 (regOne!32723 (regOne!32722 r!7292)))) (nullableFct!2062 (regOne!32722 (regOne!32723 (regOne!32722 r!7292)))))))

(declare-fun bs!1527566 () Bool)

(assert (= bs!1527566 d!1931426))

(declare-fun m!7001168 () Bool)

(assert (=> bs!1527566 m!7001168))

(assert (=> b!6162893 d!1931426))

(declare-fun bs!1527567 () Bool)

(declare-fun d!1931428 () Bool)

(assert (= bs!1527567 (and d!1931428 d!1931288)))

(declare-fun lambda!336383 () Int)

(assert (=> bs!1527567 (= lambda!336383 lambda!336367)))

(declare-fun bs!1527568 () Bool)

(assert (= bs!1527568 (and d!1931428 d!1931354)))

(assert (=> bs!1527568 (= lambda!336383 lambda!336372)))

(declare-fun bs!1527569 () Bool)

(assert (= bs!1527569 (and d!1931428 d!1931368)))

(assert (=> bs!1527569 (= lambda!336383 lambda!336374)))

(declare-fun bs!1527570 () Bool)

(assert (= bs!1527570 (and d!1931428 d!1931420)))

(assert (=> bs!1527570 (= lambda!336383 lambda!336382)))

(assert (=> d!1931428 (= (nullableZipper!1886 lt!2336090) (exists!2449 lt!2336090 lambda!336383))))

(declare-fun bs!1527571 () Bool)

(assert (= bs!1527571 d!1931428))

(declare-fun m!7001170 () Bool)

(assert (=> bs!1527571 m!7001170))

(assert (=> b!6162658 d!1931428))

(declare-fun bs!1527572 () Bool)

(declare-fun d!1931430 () Bool)

(assert (= bs!1527572 (and d!1931430 d!1931370)))

(declare-fun lambda!336384 () Int)

(assert (=> bs!1527572 (= lambda!336384 lambda!336375)))

(declare-fun bs!1527573 () Bool)

(assert (= bs!1527573 (and d!1931430 d!1931234)))

(assert (=> bs!1527573 (= lambda!336384 lambda!336358)))

(declare-fun bs!1527574 () Bool)

(assert (= bs!1527574 (and d!1931430 d!1931232)))

(assert (=> bs!1527574 (= lambda!336384 lambda!336355)))

(declare-fun bs!1527575 () Bool)

(assert (= bs!1527575 (and d!1931430 d!1931230)))

(assert (=> bs!1527575 (= lambda!336384 lambda!336352)))

(declare-fun bs!1527576 () Bool)

(assert (= bs!1527576 (and d!1931430 d!1931216)))

(assert (=> bs!1527576 (= lambda!336384 lambda!336351)))

(declare-fun bs!1527577 () Bool)

(assert (= bs!1527577 (and d!1931430 d!1931244)))

(assert (=> bs!1527577 (= lambda!336384 lambda!336359)))

(declare-fun bs!1527578 () Bool)

(assert (= bs!1527578 (and d!1931430 d!1931186)))

(assert (=> bs!1527578 (= lambda!336384 lambda!336342)))

(declare-fun e!3755005 () Bool)

(assert (=> d!1931430 e!3755005))

(declare-fun res!2552113 () Bool)

(assert (=> d!1931430 (=> (not res!2552113) (not e!3755005))))

(declare-fun lt!2336247 () Regex!16105)

(assert (=> d!1931430 (= res!2552113 (validRegex!7841 lt!2336247))))

(declare-fun e!3755003 () Regex!16105)

(assert (=> d!1931430 (= lt!2336247 e!3755003)))

(declare-fun c!1110193 () Bool)

(declare-fun e!3755007 () Bool)

(assert (=> d!1931430 (= c!1110193 e!3755007)))

(declare-fun res!2552112 () Bool)

(assert (=> d!1931430 (=> (not res!2552112) (not e!3755007))))

(assert (=> d!1931430 (= res!2552112 ((_ is Cons!64491) (t!378113 (exprs!5989 (h!70940 zl!343)))))))

(assert (=> d!1931430 (forall!15226 (t!378113 (exprs!5989 (h!70940 zl!343))) lambda!336384)))

(assert (=> d!1931430 (= (generalisedConcat!1702 (t!378113 (exprs!5989 (h!70940 zl!343)))) lt!2336247)))

(declare-fun b!6163349 () Bool)

(declare-fun e!3755006 () Bool)

(declare-fun e!3755004 () Bool)

(assert (=> b!6163349 (= e!3755006 e!3755004)))

(declare-fun c!1110196 () Bool)

(assert (=> b!6163349 (= c!1110196 (isEmpty!36461 (tail!11817 (t!378113 (exprs!5989 (h!70940 zl!343))))))))

(declare-fun b!6163350 () Bool)

(declare-fun e!3755002 () Regex!16105)

(assert (=> b!6163350 (= e!3755002 (Concat!24950 (h!70939 (t!378113 (exprs!5989 (h!70940 zl!343)))) (generalisedConcat!1702 (t!378113 (t!378113 (exprs!5989 (h!70940 zl!343)))))))))

(declare-fun b!6163351 () Bool)

(assert (=> b!6163351 (= e!3755004 (isConcat!1045 lt!2336247))))

(declare-fun b!6163352 () Bool)

(assert (=> b!6163352 (= e!3755004 (= lt!2336247 (head!12732 (t!378113 (exprs!5989 (h!70940 zl!343))))))))

(declare-fun b!6163353 () Bool)

(assert (=> b!6163353 (= e!3755003 e!3755002)))

(declare-fun c!1110195 () Bool)

(assert (=> b!6163353 (= c!1110195 ((_ is Cons!64491) (t!378113 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun b!6163354 () Bool)

(assert (=> b!6163354 (= e!3755003 (h!70939 (t!378113 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun b!6163355 () Bool)

(assert (=> b!6163355 (= e!3755005 e!3755006)))

(declare-fun c!1110194 () Bool)

(assert (=> b!6163355 (= c!1110194 (isEmpty!36461 (t!378113 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun b!6163356 () Bool)

(assert (=> b!6163356 (= e!3755006 (isEmptyExpr!1522 lt!2336247))))

(declare-fun b!6163357 () Bool)

(assert (=> b!6163357 (= e!3755007 (isEmpty!36461 (t!378113 (t!378113 (exprs!5989 (h!70940 zl!343))))))))

(declare-fun b!6163358 () Bool)

(assert (=> b!6163358 (= e!3755002 EmptyExpr!16105)))

(assert (= (and d!1931430 res!2552112) b!6163357))

(assert (= (and d!1931430 c!1110193) b!6163354))

(assert (= (and d!1931430 (not c!1110193)) b!6163353))

(assert (= (and b!6163353 c!1110195) b!6163350))

(assert (= (and b!6163353 (not c!1110195)) b!6163358))

(assert (= (and d!1931430 res!2552113) b!6163355))

(assert (= (and b!6163355 c!1110194) b!6163356))

(assert (= (and b!6163355 (not c!1110194)) b!6163349))

(assert (= (and b!6163349 c!1110196) b!6163352))

(assert (= (and b!6163349 (not c!1110196)) b!6163351))

(declare-fun m!7001172 () Bool)

(assert (=> b!6163352 m!7001172))

(declare-fun m!7001174 () Bool)

(assert (=> b!6163356 m!7001174))

(declare-fun m!7001176 () Bool)

(assert (=> b!6163351 m!7001176))

(declare-fun m!7001178 () Bool)

(assert (=> b!6163349 m!7001178))

(assert (=> b!6163349 m!7001178))

(declare-fun m!7001180 () Bool)

(assert (=> b!6163349 m!7001180))

(assert (=> b!6163355 m!7000064))

(declare-fun m!7001182 () Bool)

(assert (=> b!6163357 m!7001182))

(declare-fun m!7001184 () Bool)

(assert (=> b!6163350 m!7001184))

(declare-fun m!7001186 () Bool)

(assert (=> d!1931430 m!7001186))

(declare-fun m!7001188 () Bool)

(assert (=> d!1931430 m!7001188))

(assert (=> b!6162711 d!1931430))

(declare-fun d!1931432 () Bool)

(declare-fun lt!2336248 () Int)

(assert (=> d!1931432 (>= lt!2336248 0)))

(declare-fun e!3755008 () Int)

(assert (=> d!1931432 (= lt!2336248 e!3755008)))

(declare-fun c!1110197 () Bool)

(assert (=> d!1931432 (= c!1110197 ((_ is Cons!64491) (exprs!5989 (h!70940 (Cons!64492 lt!2336096 Nil!64492)))))))

(assert (=> d!1931432 (= (contextDepthTotal!265 (h!70940 (Cons!64492 lt!2336096 Nil!64492))) lt!2336248)))

(declare-fun b!6163359 () Bool)

(assert (=> b!6163359 (= e!3755008 (+ (regexDepthTotal!128 (h!70939 (exprs!5989 (h!70940 (Cons!64492 lt!2336096 Nil!64492))))) (contextDepthTotal!265 (Context!10979 (t!378113 (exprs!5989 (h!70940 (Cons!64492 lt!2336096 Nil!64492))))))))))

(declare-fun b!6163360 () Bool)

(assert (=> b!6163360 (= e!3755008 1)))

(assert (= (and d!1931432 c!1110197) b!6163359))

(assert (= (and d!1931432 (not c!1110197)) b!6163360))

(declare-fun m!7001190 () Bool)

(assert (=> b!6163359 m!7001190))

(declare-fun m!7001192 () Bool)

(assert (=> b!6163359 m!7001192))

(assert (=> b!6162870 d!1931432))

(declare-fun d!1931434 () Bool)

(declare-fun lt!2336249 () Int)

(assert (=> d!1931434 (>= lt!2336249 0)))

(declare-fun e!3755009 () Int)

(assert (=> d!1931434 (= lt!2336249 e!3755009)))

(declare-fun c!1110198 () Bool)

(assert (=> d!1931434 (= c!1110198 ((_ is Cons!64492) (t!378114 (Cons!64492 lt!2336096 Nil!64492))))))

(assert (=> d!1931434 (= (zipperDepthTotal!288 (t!378114 (Cons!64492 lt!2336096 Nil!64492))) lt!2336249)))

(declare-fun b!6163361 () Bool)

(assert (=> b!6163361 (= e!3755009 (+ (contextDepthTotal!265 (h!70940 (t!378114 (Cons!64492 lt!2336096 Nil!64492)))) (zipperDepthTotal!288 (t!378114 (t!378114 (Cons!64492 lt!2336096 Nil!64492))))))))

(declare-fun b!6163362 () Bool)

(assert (=> b!6163362 (= e!3755009 0)))

(assert (= (and d!1931434 c!1110198) b!6163361))

(assert (= (and d!1931434 (not c!1110198)) b!6163362))

(declare-fun m!7001194 () Bool)

(assert (=> b!6163361 m!7001194))

(declare-fun m!7001196 () Bool)

(assert (=> b!6163361 m!7001196))

(assert (=> b!6162870 d!1931434))

(declare-fun d!1931436 () Bool)

(assert (=> d!1931436 (= (nullable!6098 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292)))) (nullableFct!2062 (regOne!32722 (regTwo!32723 (regOne!32722 r!7292)))))))

(declare-fun bs!1527579 () Bool)

(assert (= bs!1527579 d!1931436))

(declare-fun m!7001198 () Bool)

(assert (=> bs!1527579 m!7001198))

(assert (=> b!6162882 d!1931436))

(declare-fun b!6163363 () Bool)

(declare-fun e!3755011 () (InoxSet Context!10978))

(declare-fun call!513466 () (InoxSet Context!10978))

(assert (=> b!6163363 (= e!3755011 call!513466)))

(declare-fun call!513471 () List!64615)

(declare-fun c!1110202 () Bool)

(declare-fun c!1110200 () Bool)

(declare-fun call!513467 () (InoxSet Context!10978))

(declare-fun c!1110203 () Bool)

(declare-fun bm!513461 () Bool)

(assert (=> bm!513461 (= call!513467 (derivationStepZipperDown!1353 (ite c!1110200 (regOne!32723 (h!70939 (exprs!5989 lt!2336104))) (ite c!1110202 (regTwo!32722 (h!70939 (exprs!5989 lt!2336104))) (ite c!1110203 (regOne!32722 (h!70939 (exprs!5989 lt!2336104))) (reg!16434 (h!70939 (exprs!5989 lt!2336104)))))) (ite (or c!1110200 c!1110202) (Context!10979 (t!378113 (exprs!5989 lt!2336104))) (Context!10979 call!513471)) (h!70938 s!2326)))))

(declare-fun b!6163364 () Bool)

(declare-fun c!1110201 () Bool)

(assert (=> b!6163364 (= c!1110201 ((_ is Star!16105) (h!70939 (exprs!5989 lt!2336104))))))

(declare-fun e!3755014 () (InoxSet Context!10978))

(assert (=> b!6163364 (= e!3755014 e!3755011)))

(declare-fun b!6163365 () Bool)

(declare-fun e!3755013 () (InoxSet Context!10978))

(declare-fun e!3755010 () (InoxSet Context!10978))

(assert (=> b!6163365 (= e!3755013 e!3755010)))

(assert (=> b!6163365 (= c!1110200 ((_ is Union!16105) (h!70939 (exprs!5989 lt!2336104))))))

(declare-fun b!6163366 () Bool)

(declare-fun e!3755015 () (InoxSet Context!10978))

(assert (=> b!6163366 (= e!3755015 e!3755014)))

(assert (=> b!6163366 (= c!1110203 ((_ is Concat!24950) (h!70939 (exprs!5989 lt!2336104))))))

(declare-fun b!6163367 () Bool)

(assert (=> b!6163367 (= e!3755011 ((as const (Array Context!10978 Bool)) false))))

(declare-fun bm!513462 () Bool)

(declare-fun call!513469 () List!64615)

(assert (=> bm!513462 (= call!513471 call!513469)))

(declare-fun bm!513463 () Bool)

(assert (=> bm!513463 (= call!513469 ($colon$colon!1982 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336104)))) (ite (or c!1110202 c!1110203) (regTwo!32722 (h!70939 (exprs!5989 lt!2336104))) (h!70939 (exprs!5989 lt!2336104)))))))

(declare-fun bm!513464 () Bool)

(declare-fun call!513470 () (InoxSet Context!10978))

(assert (=> bm!513464 (= call!513470 (derivationStepZipperDown!1353 (ite c!1110200 (regTwo!32723 (h!70939 (exprs!5989 lt!2336104))) (regOne!32722 (h!70939 (exprs!5989 lt!2336104)))) (ite c!1110200 (Context!10979 (t!378113 (exprs!5989 lt!2336104))) (Context!10979 call!513469)) (h!70938 s!2326)))))

(declare-fun b!6163368 () Bool)

(assert (=> b!6163368 (= e!3755013 (store ((as const (Array Context!10978 Bool)) false) (Context!10979 (t!378113 (exprs!5989 lt!2336104))) true))))

(declare-fun b!6163369 () Bool)

(declare-fun e!3755012 () Bool)

(assert (=> b!6163369 (= c!1110202 e!3755012)))

(declare-fun res!2552114 () Bool)

(assert (=> b!6163369 (=> (not res!2552114) (not e!3755012))))

(assert (=> b!6163369 (= res!2552114 ((_ is Concat!24950) (h!70939 (exprs!5989 lt!2336104))))))

(assert (=> b!6163369 (= e!3755010 e!3755015)))

(declare-fun d!1931438 () Bool)

(declare-fun c!1110199 () Bool)

(assert (=> d!1931438 (= c!1110199 (and ((_ is ElementMatch!16105) (h!70939 (exprs!5989 lt!2336104))) (= (c!1109850 (h!70939 (exprs!5989 lt!2336104))) (h!70938 s!2326))))))

(assert (=> d!1931438 (= (derivationStepZipperDown!1353 (h!70939 (exprs!5989 lt!2336104)) (Context!10979 (t!378113 (exprs!5989 lt!2336104))) (h!70938 s!2326)) e!3755013)))

(declare-fun b!6163370 () Bool)

(assert (=> b!6163370 (= e!3755010 ((_ map or) call!513467 call!513470))))

(declare-fun bm!513465 () Bool)

(declare-fun call!513468 () (InoxSet Context!10978))

(assert (=> bm!513465 (= call!513466 call!513468)))

(declare-fun b!6163371 () Bool)

(assert (=> b!6163371 (= e!3755014 call!513466)))

(declare-fun b!6163372 () Bool)

(assert (=> b!6163372 (= e!3755015 ((_ map or) call!513470 call!513468))))

(declare-fun bm!513466 () Bool)

(assert (=> bm!513466 (= call!513468 call!513467)))

(declare-fun b!6163373 () Bool)

(assert (=> b!6163373 (= e!3755012 (nullable!6098 (regOne!32722 (h!70939 (exprs!5989 lt!2336104)))))))

(assert (= (and d!1931438 c!1110199) b!6163368))

(assert (= (and d!1931438 (not c!1110199)) b!6163365))

(assert (= (and b!6163365 c!1110200) b!6163370))

(assert (= (and b!6163365 (not c!1110200)) b!6163369))

(assert (= (and b!6163369 res!2552114) b!6163373))

(assert (= (and b!6163369 c!1110202) b!6163372))

(assert (= (and b!6163369 (not c!1110202)) b!6163366))

(assert (= (and b!6163366 c!1110203) b!6163371))

(assert (= (and b!6163366 (not c!1110203)) b!6163364))

(assert (= (and b!6163364 c!1110201) b!6163363))

(assert (= (and b!6163364 (not c!1110201)) b!6163367))

(assert (= (or b!6163371 b!6163363) bm!513462))

(assert (= (or b!6163371 b!6163363) bm!513465))

(assert (= (or b!6163372 bm!513462) bm!513463))

(assert (= (or b!6163372 bm!513465) bm!513466))

(assert (= (or b!6163370 b!6163372) bm!513464))

(assert (= (or b!6163370 bm!513466) bm!513461))

(declare-fun m!7001200 () Bool)

(assert (=> bm!513461 m!7001200))

(declare-fun m!7001202 () Bool)

(assert (=> b!6163373 m!7001202))

(declare-fun m!7001204 () Bool)

(assert (=> bm!513463 m!7001204))

(declare-fun m!7001206 () Bool)

(assert (=> b!6163368 m!7001206))

(declare-fun m!7001208 () Bool)

(assert (=> bm!513464 m!7001208))

(assert (=> bm!513332 d!1931438))

(declare-fun d!1931440 () Bool)

(assert (=> d!1931440 (= (Exists!3175 lambda!336338) (choose!45819 lambda!336338))))

(declare-fun bs!1527580 () Bool)

(assert (= bs!1527580 d!1931440))

(declare-fun m!7001210 () Bool)

(assert (=> bs!1527580 m!7001210))

(assert (=> d!1931144 d!1931440))

(declare-fun d!1931442 () Bool)

(assert (=> d!1931442 (= (Exists!3175 lambda!336339) (choose!45819 lambda!336339))))

(declare-fun bs!1527581 () Bool)

(assert (= bs!1527581 d!1931442))

(declare-fun m!7001212 () Bool)

(assert (=> bs!1527581 m!7001212))

(assert (=> d!1931144 d!1931442))

(declare-fun bs!1527582 () Bool)

(declare-fun d!1931444 () Bool)

(assert (= bs!1527582 (and d!1931444 d!1931410)))

(declare-fun lambda!336389 () Int)

(assert (=> bs!1527582 (= lambda!336389 lambda!336381)))

(declare-fun bs!1527583 () Bool)

(assert (= bs!1527583 (and d!1931444 b!6162806)))

(assert (=> bs!1527583 (not (= lambda!336389 lambda!336348))))

(declare-fun bs!1527584 () Bool)

(assert (= bs!1527584 (and d!1931444 d!1931144)))

(assert (=> bs!1527584 (= lambda!336389 lambda!336338)))

(declare-fun bs!1527585 () Bool)

(assert (= bs!1527585 (and d!1931444 d!1931142)))

(assert (=> bs!1527585 (= lambda!336389 lambda!336333)))

(declare-fun bs!1527586 () Bool)

(assert (= bs!1527586 (and d!1931444 b!6163033)))

(assert (=> bs!1527586 (not (= lambda!336389 lambda!336360))))

(declare-fun bs!1527587 () Bool)

(assert (= bs!1527587 (and d!1931444 b!6162196)))

(assert (=> bs!1527587 (= lambda!336389 lambda!336299)))

(declare-fun bs!1527588 () Bool)

(assert (= bs!1527588 (and d!1931444 b!6163032)))

(assert (=> bs!1527588 (not (= lambda!336389 lambda!336361))))

(assert (=> bs!1527587 (not (= lambda!336389 lambda!336300))))

(assert (=> bs!1527584 (not (= lambda!336389 lambda!336339))))

(declare-fun bs!1527589 () Bool)

(assert (= bs!1527589 (and d!1931444 b!6162807)))

(assert (=> bs!1527589 (not (= lambda!336389 lambda!336347))))

(assert (=> d!1931444 true))

(assert (=> d!1931444 true))

(assert (=> d!1931444 true))

(declare-fun lambda!336390 () Int)

(assert (=> bs!1527582 (not (= lambda!336390 lambda!336381))))

(assert (=> bs!1527583 (= lambda!336390 lambda!336348)))

(assert (=> bs!1527584 (not (= lambda!336390 lambda!336338))))

(assert (=> bs!1527585 (not (= lambda!336390 lambda!336333))))

(assert (=> bs!1527586 (not (= lambda!336390 lambda!336360))))

(assert (=> bs!1527587 (not (= lambda!336390 lambda!336299))))

(assert (=> bs!1527588 (= (and (= (regOne!32722 r!7292) (regOne!32722 (regTwo!32723 r!7292))) (= (regTwo!32722 r!7292) (regTwo!32722 (regTwo!32723 r!7292)))) (= lambda!336390 lambda!336361))))

(assert (=> bs!1527587 (= lambda!336390 lambda!336300)))

(declare-fun bs!1527590 () Bool)

(assert (= bs!1527590 d!1931444))

(assert (=> bs!1527590 (not (= lambda!336390 lambda!336389))))

(assert (=> bs!1527584 (= lambda!336390 lambda!336339)))

(assert (=> bs!1527589 (not (= lambda!336390 lambda!336347))))

(assert (=> d!1931444 true))

(assert (=> d!1931444 true))

(assert (=> d!1931444 true))

(assert (=> d!1931444 (= (Exists!3175 lambda!336389) (Exists!3175 lambda!336390))))

(assert (=> d!1931444 true))

(declare-fun _$90!1914 () Unit!157619)

(assert (=> d!1931444 (= (choose!45821 (regOne!32722 r!7292) (regTwo!32722 r!7292) s!2326) _$90!1914)))

(declare-fun m!7001214 () Bool)

(assert (=> bs!1527590 m!7001214))

(declare-fun m!7001216 () Bool)

(assert (=> bs!1527590 m!7001216))

(assert (=> d!1931144 d!1931444))

(assert (=> d!1931144 d!1931406))

(declare-fun b!6163382 () Bool)

(declare-fun res!2552125 () Bool)

(declare-fun e!3755021 () Bool)

(assert (=> b!6163382 (=> (not res!2552125) (not e!3755021))))

(declare-fun call!513473 () Bool)

(assert (=> b!6163382 (= res!2552125 call!513473)))

(declare-fun e!3755026 () Bool)

(assert (=> b!6163382 (= e!3755026 e!3755021)))

(declare-fun b!6163383 () Bool)

(declare-fun e!3755022 () Bool)

(assert (=> b!6163383 (= e!3755022 e!3755026)))

(declare-fun c!1110205 () Bool)

(assert (=> b!6163383 (= c!1110205 ((_ is Union!16105) (ite c!1110081 (reg!16434 r!7292) (ite c!1110082 (regOne!32723 r!7292) (regOne!32722 r!7292)))))))

(declare-fun call!513472 () Bool)

(declare-fun c!1110204 () Bool)

(declare-fun bm!513467 () Bool)

(assert (=> bm!513467 (= call!513472 (validRegex!7841 (ite c!1110204 (reg!16434 (ite c!1110081 (reg!16434 r!7292) (ite c!1110082 (regOne!32723 r!7292) (regOne!32722 r!7292)))) (ite c!1110205 (regOne!32723 (ite c!1110081 (reg!16434 r!7292) (ite c!1110082 (regOne!32723 r!7292) (regOne!32722 r!7292)))) (regOne!32722 (ite c!1110081 (reg!16434 r!7292) (ite c!1110082 (regOne!32723 r!7292) (regOne!32722 r!7292))))))))))

(declare-fun b!6163384 () Bool)

(declare-fun call!513474 () Bool)

(assert (=> b!6163384 (= e!3755021 call!513474)))

(declare-fun b!6163385 () Bool)

(declare-fun e!3755023 () Bool)

(assert (=> b!6163385 (= e!3755023 call!513474)))

(declare-fun bm!513468 () Bool)

(assert (=> bm!513468 (= call!513473 call!513472)))

(declare-fun b!6163386 () Bool)

(declare-fun e!3755025 () Bool)

(assert (=> b!6163386 (= e!3755025 e!3755023)))

(declare-fun res!2552123 () Bool)

(assert (=> b!6163386 (=> (not res!2552123) (not e!3755023))))

(assert (=> b!6163386 (= res!2552123 call!513473)))

(declare-fun b!6163387 () Bool)

(declare-fun e!3755024 () Bool)

(assert (=> b!6163387 (= e!3755024 call!513472)))

(declare-fun d!1931446 () Bool)

(declare-fun res!2552124 () Bool)

(declare-fun e!3755020 () Bool)

(assert (=> d!1931446 (=> res!2552124 e!3755020)))

(assert (=> d!1931446 (= res!2552124 ((_ is ElementMatch!16105) (ite c!1110081 (reg!16434 r!7292) (ite c!1110082 (regOne!32723 r!7292) (regOne!32722 r!7292)))))))

(assert (=> d!1931446 (= (validRegex!7841 (ite c!1110081 (reg!16434 r!7292) (ite c!1110082 (regOne!32723 r!7292) (regOne!32722 r!7292)))) e!3755020)))

(declare-fun b!6163388 () Bool)

(assert (=> b!6163388 (= e!3755020 e!3755022)))

(assert (=> b!6163388 (= c!1110204 ((_ is Star!16105) (ite c!1110081 (reg!16434 r!7292) (ite c!1110082 (regOne!32723 r!7292) (regOne!32722 r!7292)))))))

(declare-fun b!6163389 () Bool)

(assert (=> b!6163389 (= e!3755022 e!3755024)))

(declare-fun res!2552126 () Bool)

(assert (=> b!6163389 (= res!2552126 (not (nullable!6098 (reg!16434 (ite c!1110081 (reg!16434 r!7292) (ite c!1110082 (regOne!32723 r!7292) (regOne!32722 r!7292)))))))))

(assert (=> b!6163389 (=> (not res!2552126) (not e!3755024))))

(declare-fun b!6163390 () Bool)

(declare-fun res!2552127 () Bool)

(assert (=> b!6163390 (=> res!2552127 e!3755025)))

(assert (=> b!6163390 (= res!2552127 (not ((_ is Concat!24950) (ite c!1110081 (reg!16434 r!7292) (ite c!1110082 (regOne!32723 r!7292) (regOne!32722 r!7292))))))))

(assert (=> b!6163390 (= e!3755026 e!3755025)))

(declare-fun bm!513469 () Bool)

(assert (=> bm!513469 (= call!513474 (validRegex!7841 (ite c!1110205 (regTwo!32723 (ite c!1110081 (reg!16434 r!7292) (ite c!1110082 (regOne!32723 r!7292) (regOne!32722 r!7292)))) (regTwo!32722 (ite c!1110081 (reg!16434 r!7292) (ite c!1110082 (regOne!32723 r!7292) (regOne!32722 r!7292)))))))))

(assert (= (and d!1931446 (not res!2552124)) b!6163388))

(assert (= (and b!6163388 c!1110204) b!6163389))

(assert (= (and b!6163388 (not c!1110204)) b!6163383))

(assert (= (and b!6163389 res!2552126) b!6163387))

(assert (= (and b!6163383 c!1110205) b!6163382))

(assert (= (and b!6163383 (not c!1110205)) b!6163390))

(assert (= (and b!6163382 res!2552125) b!6163384))

(assert (= (and b!6163390 (not res!2552127)) b!6163386))

(assert (= (and b!6163386 res!2552123) b!6163385))

(assert (= (or b!6163384 b!6163385) bm!513469))

(assert (= (or b!6163382 b!6163386) bm!513468))

(assert (= (or b!6163387 bm!513468) bm!513467))

(declare-fun m!7001218 () Bool)

(assert (=> bm!513467 m!7001218))

(declare-fun m!7001220 () Bool)

(assert (=> b!6163389 m!7001220))

(declare-fun m!7001222 () Bool)

(assert (=> bm!513469 m!7001222))

(assert (=> bm!513381 d!1931446))

(assert (=> bs!1527465 d!1931182))

(assert (=> b!6162662 d!1931206))

(declare-fun d!1931448 () Bool)

(declare-fun c!1110206 () Bool)

(assert (=> d!1931448 (= c!1110206 (isEmpty!36465 (tail!11816 s!2326)))))

(declare-fun e!3755027 () Bool)

(assert (=> d!1931448 (= (matchZipper!2117 (derivationStepZipper!2078 lt!2336107 (head!12731 s!2326)) (tail!11816 s!2326)) e!3755027)))

(declare-fun b!6163391 () Bool)

(assert (=> b!6163391 (= e!3755027 (nullableZipper!1886 (derivationStepZipper!2078 lt!2336107 (head!12731 s!2326))))))

(declare-fun b!6163392 () Bool)

(assert (=> b!6163392 (= e!3755027 (matchZipper!2117 (derivationStepZipper!2078 (derivationStepZipper!2078 lt!2336107 (head!12731 s!2326)) (head!12731 (tail!11816 s!2326))) (tail!11816 (tail!11816 s!2326))))))

(assert (= (and d!1931448 c!1110206) b!6163391))

(assert (= (and d!1931448 (not c!1110206)) b!6163392))

(assert (=> d!1931448 m!7000554))

(assert (=> d!1931448 m!7000664))

(assert (=> b!6163391 m!7000744))

(declare-fun m!7001224 () Bool)

(assert (=> b!6163391 m!7001224))

(assert (=> b!6163392 m!7000554))

(assert (=> b!6163392 m!7000962))

(assert (=> b!6163392 m!7000744))

(assert (=> b!6163392 m!7000962))

(declare-fun m!7001226 () Bool)

(assert (=> b!6163392 m!7001226))

(assert (=> b!6163392 m!7000554))

(assert (=> b!6163392 m!7000966))

(assert (=> b!6163392 m!7001226))

(assert (=> b!6163392 m!7000966))

(declare-fun m!7001228 () Bool)

(assert (=> b!6163392 m!7001228))

(assert (=> b!6162958 d!1931448))

(declare-fun bs!1527591 () Bool)

(declare-fun d!1931450 () Bool)

(assert (= bs!1527591 (and d!1931450 d!1931334)))

(declare-fun lambda!336391 () Int)

(assert (=> bs!1527591 (= lambda!336391 lambda!336369)))

(declare-fun bs!1527592 () Bool)

(assert (= bs!1527592 (and d!1931450 d!1931280)))

(assert (=> bs!1527592 (= (= (head!12731 s!2326) (head!12731 (t!378112 s!2326))) (= lambda!336391 lambda!336364))))

(declare-fun bs!1527593 () Bool)

(assert (= bs!1527593 (and d!1931450 d!1931344)))

(assert (=> bs!1527593 (= (= (head!12731 s!2326) (head!12731 (t!378112 s!2326))) (= lambda!336391 lambda!336371))))

(declare-fun bs!1527594 () Bool)

(assert (= bs!1527594 (and d!1931450 d!1931340)))

(assert (=> bs!1527594 (= (= (head!12731 s!2326) (head!12731 (t!378112 s!2326))) (= lambda!336391 lambda!336370))))

(declare-fun bs!1527595 () Bool)

(assert (= bs!1527595 (and d!1931450 d!1931374)))

(assert (=> bs!1527595 (= (= (head!12731 s!2326) (head!12731 (t!378112 s!2326))) (= lambda!336391 lambda!336376))))

(declare-fun bs!1527596 () Bool)

(assert (= bs!1527596 (and d!1931450 d!1931378)))

(assert (=> bs!1527596 (= lambda!336391 lambda!336377)))

(declare-fun bs!1527597 () Bool)

(assert (= bs!1527597 (and d!1931450 d!1931364)))

(assert (=> bs!1527597 (= (= (head!12731 s!2326) (head!12731 (t!378112 s!2326))) (= lambda!336391 lambda!336373))))

(declare-fun bs!1527598 () Bool)

(assert (= bs!1527598 (and d!1931450 d!1931292)))

(assert (=> bs!1527598 (= (= (head!12731 s!2326) (head!12731 (t!378112 s!2326))) (= lambda!336391 lambda!336368))))

(declare-fun bs!1527599 () Bool)

(assert (= bs!1527599 (and d!1931450 d!1931386)))

(assert (=> bs!1527599 (= (= (head!12731 s!2326) (head!12731 (t!378112 s!2326))) (= lambda!336391 lambda!336378))))

(declare-fun bs!1527600 () Bool)

(assert (= bs!1527600 (and d!1931450 b!6162172)))

(assert (=> bs!1527600 (= (= (head!12731 s!2326) (h!70938 s!2326)) (= lambda!336391 lambda!336301))))

(assert (=> d!1931450 true))

(assert (=> d!1931450 (= (derivationStepZipper!2078 lt!2336107 (head!12731 s!2326)) (flatMap!1610 lt!2336107 lambda!336391))))

(declare-fun bs!1527601 () Bool)

(assert (= bs!1527601 d!1931450))

(declare-fun m!7001230 () Bool)

(assert (=> bs!1527601 m!7001230))

(assert (=> b!6162958 d!1931450))

(assert (=> b!6162958 d!1931318))

(assert (=> b!6162958 d!1931336))

(declare-fun d!1931452 () Bool)

(assert (=> d!1931452 (= (isEmpty!36461 (exprs!5989 (h!70940 zl!343))) ((_ is Nil!64491) (exprs!5989 (h!70940 zl!343))))))

(assert (=> b!6162716 d!1931452))

(declare-fun d!1931454 () Bool)

(assert (=> d!1931454 true))

(declare-fun setRes!41777 () Bool)

(assert (=> d!1931454 setRes!41777))

(declare-fun condSetEmpty!41777 () Bool)

(declare-fun res!2552128 () (InoxSet Context!10978))

(assert (=> d!1931454 (= condSetEmpty!41777 (= res!2552128 ((as const (Array Context!10978 Bool)) false)))))

(assert (=> d!1931454 (= (choose!45823 lt!2336103 lambda!336301) res!2552128)))

(declare-fun setIsEmpty!41777 () Bool)

(assert (=> setIsEmpty!41777 setRes!41777))

(declare-fun setNonEmpty!41777 () Bool)

(declare-fun e!3755028 () Bool)

(declare-fun setElem!41777 () Context!10978)

(declare-fun tp!1720723 () Bool)

(assert (=> setNonEmpty!41777 (= setRes!41777 (and tp!1720723 (inv!83509 setElem!41777) e!3755028))))

(declare-fun setRest!41777 () (InoxSet Context!10978))

(assert (=> setNonEmpty!41777 (= res!2552128 ((_ map or) (store ((as const (Array Context!10978 Bool)) false) setElem!41777 true) setRest!41777))))

(declare-fun b!6163393 () Bool)

(declare-fun tp!1720724 () Bool)

(assert (=> b!6163393 (= e!3755028 tp!1720724)))

(assert (= (and d!1931454 condSetEmpty!41777) setIsEmpty!41777))

(assert (= (and d!1931454 (not condSetEmpty!41777)) setNonEmpty!41777))

(assert (= setNonEmpty!41777 b!6163393))

(declare-fun m!7001232 () Bool)

(assert (=> setNonEmpty!41777 m!7001232))

(assert (=> d!1931166 d!1931454))

(declare-fun bs!1527602 () Bool)

(declare-fun d!1931456 () Bool)

(assert (= bs!1527602 (and d!1931456 d!1931368)))

(declare-fun lambda!336392 () Int)

(assert (=> bs!1527602 (= lambda!336392 lambda!336374)))

(declare-fun bs!1527603 () Bool)

(assert (= bs!1527603 (and d!1931456 d!1931428)))

(assert (=> bs!1527603 (= lambda!336392 lambda!336383)))

(declare-fun bs!1527604 () Bool)

(assert (= bs!1527604 (and d!1931456 d!1931354)))

(assert (=> bs!1527604 (= lambda!336392 lambda!336372)))

(declare-fun bs!1527605 () Bool)

(assert (= bs!1527605 (and d!1931456 d!1931420)))

(assert (=> bs!1527605 (= lambda!336392 lambda!336382)))

(declare-fun bs!1527606 () Bool)

(assert (= bs!1527606 (and d!1931456 d!1931288)))

(assert (=> bs!1527606 (= lambda!336392 lambda!336367)))

(assert (=> d!1931456 (= (nullableZipper!1886 lt!2336113) (exists!2449 lt!2336113 lambda!336392))))

(declare-fun bs!1527607 () Bool)

(assert (= bs!1527607 d!1931456))

(declare-fun m!7001234 () Bool)

(assert (=> bs!1527607 m!7001234))

(assert (=> b!6162771 d!1931456))

(declare-fun d!1931458 () Bool)

(assert (=> d!1931458 (= (head!12732 (unfocusZipperList!1526 zl!343)) (h!70939 (unfocusZipperList!1526 zl!343)))))

(assert (=> b!6162917 d!1931458))

(declare-fun e!3755029 () (InoxSet Context!10978))

(declare-fun b!6163394 () Bool)

(declare-fun call!513475 () (InoxSet Context!10978))

(assert (=> b!6163394 (= e!3755029 ((_ map or) call!513475 (derivationStepZipperUp!1279 (Context!10979 (t!378113 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336096)))))) (h!70938 s!2326))))))

(declare-fun d!1931460 () Bool)

(declare-fun c!1110208 () Bool)

(declare-fun e!3755030 () Bool)

(assert (=> d!1931460 (= c!1110208 e!3755030)))

(declare-fun res!2552129 () Bool)

(assert (=> d!1931460 (=> (not res!2552129) (not e!3755030))))

(assert (=> d!1931460 (= res!2552129 ((_ is Cons!64491) (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336096))))))))

(assert (=> d!1931460 (= (derivationStepZipperUp!1279 (Context!10979 (t!378113 (exprs!5989 lt!2336096))) (h!70938 s!2326)) e!3755029)))

(declare-fun b!6163395 () Bool)

(declare-fun e!3755031 () (InoxSet Context!10978))

(assert (=> b!6163395 (= e!3755029 e!3755031)))

(declare-fun c!1110207 () Bool)

(assert (=> b!6163395 (= c!1110207 ((_ is Cons!64491) (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336096))))))))

(declare-fun bm!513470 () Bool)

(assert (=> bm!513470 (= call!513475 (derivationStepZipperDown!1353 (h!70939 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336096))))) (Context!10979 (t!378113 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336096)))))) (h!70938 s!2326)))))

(declare-fun b!6163396 () Bool)

(assert (=> b!6163396 (= e!3755031 ((as const (Array Context!10978 Bool)) false))))

(declare-fun b!6163397 () Bool)

(assert (=> b!6163397 (= e!3755031 call!513475)))

(declare-fun b!6163398 () Bool)

(assert (=> b!6163398 (= e!3755030 (nullable!6098 (h!70939 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 lt!2336096)))))))))

(assert (= (and d!1931460 res!2552129) b!6163398))

(assert (= (and d!1931460 c!1110208) b!6163394))

(assert (= (and d!1931460 (not c!1110208)) b!6163395))

(assert (= (and b!6163395 c!1110207) b!6163397))

(assert (= (and b!6163395 (not c!1110207)) b!6163396))

(assert (= (or b!6163394 b!6163397) bm!513470))

(declare-fun m!7001236 () Bool)

(assert (=> b!6163394 m!7001236))

(declare-fun m!7001238 () Bool)

(assert (=> bm!513470 m!7001238))

(declare-fun m!7001240 () Bool)

(assert (=> b!6163398 m!7001240))

(assert (=> b!6162678 d!1931460))

(declare-fun bs!1527608 () Bool)

(declare-fun d!1931462 () Bool)

(assert (= bs!1527608 (and d!1931462 d!1931368)))

(declare-fun lambda!336393 () Int)

(assert (=> bs!1527608 (= lambda!336393 lambda!336374)))

(declare-fun bs!1527609 () Bool)

(assert (= bs!1527609 (and d!1931462 d!1931428)))

(assert (=> bs!1527609 (= lambda!336393 lambda!336383)))

(declare-fun bs!1527610 () Bool)

(assert (= bs!1527610 (and d!1931462 d!1931354)))

(assert (=> bs!1527610 (= lambda!336393 lambda!336372)))

(declare-fun bs!1527611 () Bool)

(assert (= bs!1527611 (and d!1931462 d!1931420)))

(assert (=> bs!1527611 (= lambda!336393 lambda!336382)))

(declare-fun bs!1527612 () Bool)

(assert (= bs!1527612 (and d!1931462 d!1931456)))

(assert (=> bs!1527612 (= lambda!336393 lambda!336392)))

(declare-fun bs!1527613 () Bool)

(assert (= bs!1527613 (and d!1931462 d!1931288)))

(assert (=> bs!1527613 (= lambda!336393 lambda!336367)))

(assert (=> d!1931462 (= (nullableZipper!1886 ((_ map or) lt!2336113 lt!2336092)) (exists!2449 ((_ map or) lt!2336113 lt!2336092) lambda!336393))))

(declare-fun bs!1527614 () Bool)

(assert (= bs!1527614 d!1931462))

(declare-fun m!7001242 () Bool)

(assert (=> bs!1527614 m!7001242))

(assert (=> b!6162862 d!1931462))

(declare-fun bs!1527615 () Bool)

(declare-fun d!1931464 () Bool)

(assert (= bs!1527615 (and d!1931464 d!1931368)))

(declare-fun lambda!336394 () Int)

(assert (=> bs!1527615 (= lambda!336394 lambda!336374)))

(declare-fun bs!1527616 () Bool)

(assert (= bs!1527616 (and d!1931464 d!1931428)))

(assert (=> bs!1527616 (= lambda!336394 lambda!336383)))

(declare-fun bs!1527617 () Bool)

(assert (= bs!1527617 (and d!1931464 d!1931462)))

(assert (=> bs!1527617 (= lambda!336394 lambda!336393)))

(declare-fun bs!1527618 () Bool)

(assert (= bs!1527618 (and d!1931464 d!1931354)))

(assert (=> bs!1527618 (= lambda!336394 lambda!336372)))

(declare-fun bs!1527619 () Bool)

(assert (= bs!1527619 (and d!1931464 d!1931420)))

(assert (=> bs!1527619 (= lambda!336394 lambda!336382)))

(declare-fun bs!1527620 () Bool)

(assert (= bs!1527620 (and d!1931464 d!1931456)))

(assert (=> bs!1527620 (= lambda!336394 lambda!336392)))

(declare-fun bs!1527621 () Bool)

(assert (= bs!1527621 (and d!1931464 d!1931288)))

(assert (=> bs!1527621 (= lambda!336394 lambda!336367)))

(assert (=> d!1931464 (= (nullableZipper!1886 lt!2336103) (exists!2449 lt!2336103 lambda!336394))))

(declare-fun bs!1527622 () Bool)

(assert (= bs!1527622 d!1931464))

(declare-fun m!7001244 () Bool)

(assert (=> bs!1527622 m!7001244))

(assert (=> b!6162683 d!1931464))

(declare-fun d!1931466 () Bool)

(assert (=> d!1931466 (= (isEmpty!36465 (tail!11816 s!2326)) ((_ is Nil!64490) (tail!11816 s!2326)))))

(assert (=> b!6162851 d!1931466))

(assert (=> b!6162851 d!1931336))

(declare-fun bs!1527623 () Bool)

(declare-fun d!1931468 () Bool)

(assert (= bs!1527623 (and d!1931468 d!1931368)))

(declare-fun lambda!336395 () Int)

(assert (=> bs!1527623 (= lambda!336395 lambda!336374)))

(declare-fun bs!1527624 () Bool)

(assert (= bs!1527624 (and d!1931468 d!1931464)))

(assert (=> bs!1527624 (= lambda!336395 lambda!336394)))

(declare-fun bs!1527625 () Bool)

(assert (= bs!1527625 (and d!1931468 d!1931428)))

(assert (=> bs!1527625 (= lambda!336395 lambda!336383)))

(declare-fun bs!1527626 () Bool)

(assert (= bs!1527626 (and d!1931468 d!1931462)))

(assert (=> bs!1527626 (= lambda!336395 lambda!336393)))

(declare-fun bs!1527627 () Bool)

(assert (= bs!1527627 (and d!1931468 d!1931354)))

(assert (=> bs!1527627 (= lambda!336395 lambda!336372)))

(declare-fun bs!1527628 () Bool)

(assert (= bs!1527628 (and d!1931468 d!1931420)))

(assert (=> bs!1527628 (= lambda!336395 lambda!336382)))

(declare-fun bs!1527629 () Bool)

(assert (= bs!1527629 (and d!1931468 d!1931456)))

(assert (=> bs!1527629 (= lambda!336395 lambda!336392)))

(declare-fun bs!1527630 () Bool)

(assert (= bs!1527630 (and d!1931468 d!1931288)))

(assert (=> bs!1527630 (= lambda!336395 lambda!336367)))

(assert (=> d!1931468 (= (nullableZipper!1886 z!1189) (exists!2449 z!1189 lambda!336395))))

(declare-fun bs!1527631 () Bool)

(assert (= bs!1527631 d!1931468))

(declare-fun m!7001246 () Bool)

(assert (=> bs!1527631 m!7001246))

(assert (=> b!6162666 d!1931468))

(assert (=> d!1931198 d!1931200))

(declare-fun d!1931470 () Bool)

(assert (=> d!1931470 (= (flatMap!1610 z!1189 lambda!336301) (dynLambda!25429 lambda!336301 (h!70940 zl!343)))))

(assert (=> d!1931470 true))

(declare-fun _$13!3119 () Unit!157619)

(assert (=> d!1931470 (= (choose!45824 z!1189 (h!70940 zl!343) lambda!336301) _$13!3119)))

(declare-fun b_lambda!234625 () Bool)

(assert (=> (not b_lambda!234625) (not d!1931470)))

(declare-fun bs!1527632 () Bool)

(assert (= bs!1527632 d!1931470))

(assert (=> bs!1527632 m!7000068))

(assert (=> bs!1527632 m!7000626))

(assert (=> d!1931198 d!1931470))

(declare-fun b!6163399 () Bool)

(declare-fun e!3755033 () (InoxSet Context!10978))

(declare-fun call!513476 () (InoxSet Context!10978))

(assert (=> b!6163399 (= e!3755033 call!513476)))

(declare-fun call!513481 () List!64615)

(declare-fun call!513477 () (InoxSet Context!10978))

(declare-fun c!1110210 () Bool)

(declare-fun c!1110212 () Bool)

(declare-fun c!1110213 () Bool)

(declare-fun bm!513471 () Bool)

(assert (=> bm!513471 (= call!513477 (derivationStepZipperDown!1353 (ite c!1110210 (regOne!32723 (ite c!1110053 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))))) (ite c!1110212 (regTwo!32722 (ite c!1110053 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))))) (ite c!1110213 (regOne!32722 (ite c!1110053 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))))) (reg!16434 (ite c!1110053 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292)))))))) (ite (or c!1110210 c!1110212) (ite c!1110053 lt!2336120 (Context!10979 call!513371)) (Context!10979 call!513481)) (h!70938 s!2326)))))

(declare-fun b!6163400 () Bool)

(declare-fun c!1110211 () Bool)

(assert (=> b!6163400 (= c!1110211 ((_ is Star!16105) (ite c!1110053 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))))))))

(declare-fun e!3755036 () (InoxSet Context!10978))

(assert (=> b!6163400 (= e!3755036 e!3755033)))

(declare-fun b!6163401 () Bool)

(declare-fun e!3755035 () (InoxSet Context!10978))

(declare-fun e!3755032 () (InoxSet Context!10978))

(assert (=> b!6163401 (= e!3755035 e!3755032)))

(assert (=> b!6163401 (= c!1110210 ((_ is Union!16105) (ite c!1110053 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))))))))

(declare-fun b!6163402 () Bool)

(declare-fun e!3755037 () (InoxSet Context!10978))

(assert (=> b!6163402 (= e!3755037 e!3755036)))

(assert (=> b!6163402 (= c!1110213 ((_ is Concat!24950) (ite c!1110053 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))))))))

(declare-fun b!6163403 () Bool)

(assert (=> b!6163403 (= e!3755033 ((as const (Array Context!10978 Bool)) false))))

(declare-fun bm!513472 () Bool)

(declare-fun call!513479 () List!64615)

(assert (=> bm!513472 (= call!513481 call!513479)))

(declare-fun bm!513473 () Bool)

(assert (=> bm!513473 (= call!513479 ($colon$colon!1982 (exprs!5989 (ite c!1110053 lt!2336120 (Context!10979 call!513371))) (ite (or c!1110212 c!1110213) (regTwo!32722 (ite c!1110053 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))))) (ite c!1110053 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292)))))))))

(declare-fun call!513480 () (InoxSet Context!10978))

(declare-fun bm!513474 () Bool)

(assert (=> bm!513474 (= call!513480 (derivationStepZipperDown!1353 (ite c!1110210 (regTwo!32723 (ite c!1110053 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))))) (regOne!32722 (ite c!1110053 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292)))))) (ite c!1110210 (ite c!1110053 lt!2336120 (Context!10979 call!513371)) (Context!10979 call!513479)) (h!70938 s!2326)))))

(declare-fun b!6163404 () Bool)

(assert (=> b!6163404 (= e!3755035 (store ((as const (Array Context!10978 Bool)) false) (ite c!1110053 lt!2336120 (Context!10979 call!513371)) true))))

(declare-fun b!6163405 () Bool)

(declare-fun e!3755034 () Bool)

(assert (=> b!6163405 (= c!1110212 e!3755034)))

(declare-fun res!2552130 () Bool)

(assert (=> b!6163405 (=> (not res!2552130) (not e!3755034))))

(assert (=> b!6163405 (= res!2552130 ((_ is Concat!24950) (ite c!1110053 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))))))))

(assert (=> b!6163405 (= e!3755032 e!3755037)))

(declare-fun d!1931472 () Bool)

(declare-fun c!1110209 () Bool)

(assert (=> d!1931472 (= c!1110209 (and ((_ is ElementMatch!16105) (ite c!1110053 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))))) (= (c!1109850 (ite c!1110053 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292))))) (h!70938 s!2326))))))

(assert (=> d!1931472 (= (derivationStepZipperDown!1353 (ite c!1110053 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292)))) (ite c!1110053 lt!2336120 (Context!10979 call!513371)) (h!70938 s!2326)) e!3755035)))

(declare-fun b!6163406 () Bool)

(assert (=> b!6163406 (= e!3755032 ((_ map or) call!513477 call!513480))))

(declare-fun bm!513475 () Bool)

(declare-fun call!513478 () (InoxSet Context!10978))

(assert (=> bm!513475 (= call!513476 call!513478)))

(declare-fun b!6163407 () Bool)

(assert (=> b!6163407 (= e!3755036 call!513476)))

(declare-fun b!6163408 () Bool)

(assert (=> b!6163408 (= e!3755037 ((_ map or) call!513480 call!513478))))

(declare-fun bm!513476 () Bool)

(assert (=> bm!513476 (= call!513478 call!513477)))

(declare-fun b!6163409 () Bool)

(assert (=> b!6163409 (= e!3755034 (nullable!6098 (regOne!32722 (ite c!1110053 (regTwo!32723 (regTwo!32723 (regOne!32722 r!7292))) (regOne!32722 (regTwo!32723 (regOne!32722 r!7292)))))))))

(assert (= (and d!1931472 c!1110209) b!6163404))

(assert (= (and d!1931472 (not c!1110209)) b!6163401))

(assert (= (and b!6163401 c!1110210) b!6163406))

(assert (= (and b!6163401 (not c!1110210)) b!6163405))

(assert (= (and b!6163405 res!2552130) b!6163409))

(assert (= (and b!6163405 c!1110212) b!6163408))

(assert (= (and b!6163405 (not c!1110212)) b!6163402))

(assert (= (and b!6163402 c!1110213) b!6163407))

(assert (= (and b!6163402 (not c!1110213)) b!6163400))

(assert (= (and b!6163400 c!1110211) b!6163399))

(assert (= (and b!6163400 (not c!1110211)) b!6163403))

(assert (= (or b!6163407 b!6163399) bm!513472))

(assert (= (or b!6163407 b!6163399) bm!513475))

(assert (= (or b!6163408 bm!513472) bm!513473))

(assert (= (or b!6163408 bm!513475) bm!513476))

(assert (= (or b!6163406 b!6163408) bm!513474))

(assert (= (or b!6163406 bm!513476) bm!513471))

(declare-fun m!7001248 () Bool)

(assert (=> bm!513471 m!7001248))

(declare-fun m!7001250 () Bool)

(assert (=> b!6163409 m!7001250))

(declare-fun m!7001252 () Bool)

(assert (=> bm!513473 m!7001252))

(declare-fun m!7001254 () Bool)

(assert (=> b!6163404 m!7001254))

(declare-fun m!7001256 () Bool)

(assert (=> bm!513474 m!7001256))

(assert (=> bm!513366 d!1931472))

(declare-fun bs!1527633 () Bool)

(declare-fun d!1931474 () Bool)

(assert (= bs!1527633 (and d!1931474 d!1931368)))

(declare-fun lambda!336396 () Int)

(assert (=> bs!1527633 (= lambda!336396 lambda!336374)))

(declare-fun bs!1527634 () Bool)

(assert (= bs!1527634 (and d!1931474 d!1931464)))

(assert (=> bs!1527634 (= lambda!336396 lambda!336394)))

(declare-fun bs!1527635 () Bool)

(assert (= bs!1527635 (and d!1931474 d!1931428)))

(assert (=> bs!1527635 (= lambda!336396 lambda!336383)))

(declare-fun bs!1527636 () Bool)

(assert (= bs!1527636 (and d!1931474 d!1931462)))

(assert (=> bs!1527636 (= lambda!336396 lambda!336393)))

(declare-fun bs!1527637 () Bool)

(assert (= bs!1527637 (and d!1931474 d!1931468)))

(assert (=> bs!1527637 (= lambda!336396 lambda!336395)))

(declare-fun bs!1527638 () Bool)

(assert (= bs!1527638 (and d!1931474 d!1931354)))

(assert (=> bs!1527638 (= lambda!336396 lambda!336372)))

(declare-fun bs!1527639 () Bool)

(assert (= bs!1527639 (and d!1931474 d!1931420)))

(assert (=> bs!1527639 (= lambda!336396 lambda!336382)))

(declare-fun bs!1527640 () Bool)

(assert (= bs!1527640 (and d!1931474 d!1931456)))

(assert (=> bs!1527640 (= lambda!336396 lambda!336392)))

(declare-fun bs!1527641 () Bool)

(assert (= bs!1527641 (and d!1931474 d!1931288)))

(assert (=> bs!1527641 (= lambda!336396 lambda!336367)))

(assert (=> d!1931474 (= (nullableZipper!1886 lt!2336118) (exists!2449 lt!2336118 lambda!336396))))

(declare-fun bs!1527642 () Bool)

(assert (= bs!1527642 d!1931474))

(declare-fun m!7001258 () Bool)

(assert (=> bs!1527642 m!7001258))

(assert (=> b!6162656 d!1931474))

(declare-fun d!1931476 () Bool)

(declare-fun c!1110214 () Bool)

(assert (=> d!1931476 (= c!1110214 (isEmpty!36465 (t!378112 s!2326)))))

(declare-fun e!3755038 () Bool)

(assert (=> d!1931476 (= (matchZipper!2117 ((_ map or) lt!2336090 lt!2336113) (t!378112 s!2326)) e!3755038)))

(declare-fun b!6163410 () Bool)

(assert (=> b!6163410 (= e!3755038 (nullableZipper!1886 ((_ map or) lt!2336090 lt!2336113)))))

(declare-fun b!6163411 () Bool)

(assert (=> b!6163411 (= e!3755038 (matchZipper!2117 (derivationStepZipper!2078 ((_ map or) lt!2336090 lt!2336113) (head!12731 (t!378112 s!2326))) (tail!11816 (t!378112 s!2326))))))

(assert (= (and d!1931476 c!1110214) b!6163410))

(assert (= (and d!1931476 (not c!1110214)) b!6163411))

(assert (=> d!1931476 m!7000496))

(declare-fun m!7001260 () Bool)

(assert (=> b!6163410 m!7001260))

(assert (=> b!6163411 m!7000500))

(assert (=> b!6163411 m!7000500))

(declare-fun m!7001262 () Bool)

(assert (=> b!6163411 m!7001262))

(assert (=> b!6163411 m!7000504))

(assert (=> b!6163411 m!7001262))

(assert (=> b!6163411 m!7000504))

(declare-fun m!7001264 () Bool)

(assert (=> b!6163411 m!7001264))

(assert (=> d!1931156 d!1931476))

(assert (=> d!1931156 d!1931154))

(declare-fun e!3755039 () Bool)

(declare-fun d!1931478 () Bool)

(assert (=> d!1931478 (= (matchZipper!2117 ((_ map or) lt!2336090 lt!2336113) (t!378112 s!2326)) e!3755039)))

(declare-fun res!2552131 () Bool)

(assert (=> d!1931478 (=> res!2552131 e!3755039)))

(assert (=> d!1931478 (= res!2552131 (matchZipper!2117 lt!2336090 (t!378112 s!2326)))))

(assert (=> d!1931478 true))

(declare-fun _$48!1744 () Unit!157619)

(assert (=> d!1931478 (= (choose!45822 lt!2336090 lt!2336113 (t!378112 s!2326)) _$48!1744)))

(declare-fun b!6163412 () Bool)

(assert (=> b!6163412 (= e!3755039 (matchZipper!2117 lt!2336113 (t!378112 s!2326)))))

(assert (= (and d!1931478 (not res!2552131)) b!6163412))

(assert (=> d!1931478 m!7000526))

(assert (=> d!1931478 m!7000098))

(assert (=> b!6163412 m!7000110))

(assert (=> d!1931156 d!1931478))

(assert (=> b!6162847 d!1931466))

(assert (=> b!6162847 d!1931336))

(declare-fun d!1931480 () Bool)

(assert (=> d!1931480 (= (isUnion!962 lt!2336220) ((_ is Union!16105) lt!2336220))))

(assert (=> b!6162921 d!1931480))

(declare-fun bs!1527643 () Bool)

(declare-fun b!6163415 () Bool)

(assert (= bs!1527643 (and b!6163415 d!1931410)))

(declare-fun lambda!336397 () Int)

(assert (=> bs!1527643 (not (= lambda!336397 lambda!336381))))

(declare-fun bs!1527644 () Bool)

(assert (= bs!1527644 (and b!6163415 d!1931444)))

(assert (=> bs!1527644 (not (= lambda!336397 lambda!336390))))

(declare-fun bs!1527645 () Bool)

(assert (= bs!1527645 (and b!6163415 b!6162806)))

(assert (=> bs!1527645 (not (= lambda!336397 lambda!336348))))

(declare-fun bs!1527646 () Bool)

(assert (= bs!1527646 (and b!6163415 d!1931144)))

(assert (=> bs!1527646 (not (= lambda!336397 lambda!336338))))

(declare-fun bs!1527647 () Bool)

(assert (= bs!1527647 (and b!6163415 d!1931142)))

(assert (=> bs!1527647 (not (= lambda!336397 lambda!336333))))

(declare-fun bs!1527648 () Bool)

(assert (= bs!1527648 (and b!6163415 b!6163033)))

(assert (=> bs!1527648 (= (and (= (reg!16434 (regOne!32723 r!7292)) (reg!16434 (regTwo!32723 r!7292))) (= (regOne!32723 r!7292) (regTwo!32723 r!7292))) (= lambda!336397 lambda!336360))))

(declare-fun bs!1527649 () Bool)

(assert (= bs!1527649 (and b!6163415 b!6162196)))

(assert (=> bs!1527649 (not (= lambda!336397 lambda!336299))))

(declare-fun bs!1527650 () Bool)

(assert (= bs!1527650 (and b!6163415 b!6163032)))

(assert (=> bs!1527650 (not (= lambda!336397 lambda!336361))))

(assert (=> bs!1527649 (not (= lambda!336397 lambda!336300))))

(assert (=> bs!1527644 (not (= lambda!336397 lambda!336389))))

(assert (=> bs!1527646 (not (= lambda!336397 lambda!336339))))

(declare-fun bs!1527651 () Bool)

(assert (= bs!1527651 (and b!6163415 b!6162807)))

(assert (=> bs!1527651 (= (and (= (reg!16434 (regOne!32723 r!7292)) (reg!16434 r!7292)) (= (regOne!32723 r!7292) r!7292)) (= lambda!336397 lambda!336347))))

(assert (=> b!6163415 true))

(assert (=> b!6163415 true))

(declare-fun bs!1527652 () Bool)

(declare-fun b!6163414 () Bool)

(assert (= bs!1527652 (and b!6163414 d!1931410)))

(declare-fun lambda!336398 () Int)

(assert (=> bs!1527652 (not (= lambda!336398 lambda!336381))))

(declare-fun bs!1527653 () Bool)

(assert (= bs!1527653 (and b!6163414 b!6163415)))

(assert (=> bs!1527653 (not (= lambda!336398 lambda!336397))))

(declare-fun bs!1527654 () Bool)

(assert (= bs!1527654 (and b!6163414 d!1931444)))

(assert (=> bs!1527654 (= (and (= (regOne!32722 (regOne!32723 r!7292)) (regOne!32722 r!7292)) (= (regTwo!32722 (regOne!32723 r!7292)) (regTwo!32722 r!7292))) (= lambda!336398 lambda!336390))))

(declare-fun bs!1527655 () Bool)

(assert (= bs!1527655 (and b!6163414 b!6162806)))

(assert (=> bs!1527655 (= (and (= (regOne!32722 (regOne!32723 r!7292)) (regOne!32722 r!7292)) (= (regTwo!32722 (regOne!32723 r!7292)) (regTwo!32722 r!7292))) (= lambda!336398 lambda!336348))))

(declare-fun bs!1527656 () Bool)

(assert (= bs!1527656 (and b!6163414 d!1931144)))

(assert (=> bs!1527656 (not (= lambda!336398 lambda!336338))))

(declare-fun bs!1527657 () Bool)

(assert (= bs!1527657 (and b!6163414 d!1931142)))

(assert (=> bs!1527657 (not (= lambda!336398 lambda!336333))))

(declare-fun bs!1527658 () Bool)

(assert (= bs!1527658 (and b!6163414 b!6163033)))

(assert (=> bs!1527658 (not (= lambda!336398 lambda!336360))))

(declare-fun bs!1527659 () Bool)

(assert (= bs!1527659 (and b!6163414 b!6162196)))

(assert (=> bs!1527659 (not (= lambda!336398 lambda!336299))))

(declare-fun bs!1527660 () Bool)

(assert (= bs!1527660 (and b!6163414 b!6163032)))

(assert (=> bs!1527660 (= (and (= (regOne!32722 (regOne!32723 r!7292)) (regOne!32722 (regTwo!32723 r!7292))) (= (regTwo!32722 (regOne!32723 r!7292)) (regTwo!32722 (regTwo!32723 r!7292)))) (= lambda!336398 lambda!336361))))

(assert (=> bs!1527659 (= (and (= (regOne!32722 (regOne!32723 r!7292)) (regOne!32722 r!7292)) (= (regTwo!32722 (regOne!32723 r!7292)) (regTwo!32722 r!7292))) (= lambda!336398 lambda!336300))))

(assert (=> bs!1527654 (not (= lambda!336398 lambda!336389))))

(assert (=> bs!1527656 (= (and (= (regOne!32722 (regOne!32723 r!7292)) (regOne!32722 r!7292)) (= (regTwo!32722 (regOne!32723 r!7292)) (regTwo!32722 r!7292))) (= lambda!336398 lambda!336339))))

(declare-fun bs!1527661 () Bool)

(assert (= bs!1527661 (and b!6163414 b!6162807)))

(assert (=> bs!1527661 (not (= lambda!336398 lambda!336347))))

(assert (=> b!6163414 true))

(assert (=> b!6163414 true))

(declare-fun b!6163413 () Bool)

(declare-fun e!3755043 () Bool)

(declare-fun e!3755045 () Bool)

(assert (=> b!6163413 (= e!3755043 e!3755045)))

(declare-fun c!1110216 () Bool)

(assert (=> b!6163413 (= c!1110216 ((_ is Star!16105) (regOne!32723 r!7292)))))

(declare-fun call!513483 () Bool)

(assert (=> b!6163414 (= e!3755045 call!513483)))

(declare-fun e!3755041 () Bool)

(assert (=> b!6163415 (= e!3755041 call!513483)))

(declare-fun d!1931482 () Bool)

(declare-fun c!1110218 () Bool)

(assert (=> d!1931482 (= c!1110218 ((_ is EmptyExpr!16105) (regOne!32723 r!7292)))))

(declare-fun e!3755042 () Bool)

(assert (=> d!1931482 (= (matchRSpec!3206 (regOne!32723 r!7292) s!2326) e!3755042)))

(declare-fun b!6163416 () Bool)

(declare-fun e!3755044 () Bool)

(assert (=> b!6163416 (= e!3755042 e!3755044)))

(declare-fun res!2552132 () Bool)

(assert (=> b!6163416 (= res!2552132 (not ((_ is EmptyLang!16105) (regOne!32723 r!7292))))))

(assert (=> b!6163416 (=> (not res!2552132) (not e!3755044))))

(declare-fun b!6163417 () Bool)

(declare-fun c!1110217 () Bool)

(assert (=> b!6163417 (= c!1110217 ((_ is ElementMatch!16105) (regOne!32723 r!7292)))))

(declare-fun e!3755040 () Bool)

(assert (=> b!6163417 (= e!3755044 e!3755040)))

(declare-fun b!6163418 () Bool)

(declare-fun c!1110215 () Bool)

(assert (=> b!6163418 (= c!1110215 ((_ is Union!16105) (regOne!32723 r!7292)))))

(assert (=> b!6163418 (= e!3755040 e!3755043)))

(declare-fun b!6163419 () Bool)

(declare-fun call!513482 () Bool)

(assert (=> b!6163419 (= e!3755042 call!513482)))

(declare-fun bm!513477 () Bool)

(assert (=> bm!513477 (= call!513483 (Exists!3175 (ite c!1110216 lambda!336397 lambda!336398)))))

(declare-fun bm!513478 () Bool)

(assert (=> bm!513478 (= call!513482 (isEmpty!36465 s!2326))))

(declare-fun b!6163420 () Bool)

(declare-fun res!2552134 () Bool)

(assert (=> b!6163420 (=> res!2552134 e!3755041)))

(assert (=> b!6163420 (= res!2552134 call!513482)))

(assert (=> b!6163420 (= e!3755045 e!3755041)))

(declare-fun b!6163421 () Bool)

(assert (=> b!6163421 (= e!3755040 (= s!2326 (Cons!64490 (c!1109850 (regOne!32723 r!7292)) Nil!64490)))))

(declare-fun b!6163422 () Bool)

(declare-fun e!3755046 () Bool)

(assert (=> b!6163422 (= e!3755046 (matchRSpec!3206 (regTwo!32723 (regOne!32723 r!7292)) s!2326))))

(declare-fun b!6163423 () Bool)

(assert (=> b!6163423 (= e!3755043 e!3755046)))

(declare-fun res!2552133 () Bool)

(assert (=> b!6163423 (= res!2552133 (matchRSpec!3206 (regOne!32723 (regOne!32723 r!7292)) s!2326))))

(assert (=> b!6163423 (=> res!2552133 e!3755046)))

(assert (= (and d!1931482 c!1110218) b!6163419))

(assert (= (and d!1931482 (not c!1110218)) b!6163416))

(assert (= (and b!6163416 res!2552132) b!6163417))

(assert (= (and b!6163417 c!1110217) b!6163421))

(assert (= (and b!6163417 (not c!1110217)) b!6163418))

(assert (= (and b!6163418 c!1110215) b!6163423))

(assert (= (and b!6163418 (not c!1110215)) b!6163413))

(assert (= (and b!6163423 (not res!2552133)) b!6163422))

(assert (= (and b!6163413 c!1110216) b!6163420))

(assert (= (and b!6163413 (not c!1110216)) b!6163414))

(assert (= (and b!6163420 (not res!2552134)) b!6163415))

(assert (= (or b!6163415 b!6163414) bm!513477))

(assert (= (or b!6163419 b!6163420) bm!513478))

(declare-fun m!7001266 () Bool)

(assert (=> bm!513477 m!7001266))

(assert (=> bm!513478 m!7000546))

(declare-fun m!7001268 () Bool)

(assert (=> b!6163422 m!7001268))

(declare-fun m!7001270 () Bool)

(assert (=> b!6163423 m!7001270))

(assert (=> b!6162815 d!1931482))

(declare-fun b!6163424 () Bool)

(declare-fun e!3755048 () (InoxSet Context!10978))

(declare-fun call!513484 () (InoxSet Context!10978))

(assert (=> b!6163424 (= e!3755048 call!513484)))

(declare-fun bm!513479 () Bool)

(declare-fun call!513489 () List!64615)

(declare-fun c!1110223 () Bool)

(declare-fun c!1110222 () Bool)

(declare-fun call!513485 () (InoxSet Context!10978))

(declare-fun c!1110220 () Bool)

(assert (=> bm!513479 (= call!513485 (derivationStepZipperDown!1353 (ite c!1110220 (regOne!32723 (ite c!1110021 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110023 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110024 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343)))))))) (ite c!1110222 (regTwo!32722 (ite c!1110021 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110023 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110024 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343)))))))) (ite c!1110223 (regOne!32722 (ite c!1110021 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110023 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110024 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343)))))))) (reg!16434 (ite c!1110021 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110023 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110024 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343))))))))))) (ite (or c!1110220 c!1110222) (ite (or c!1110021 c!1110023) lt!2336120 (Context!10979 call!513358)) (Context!10979 call!513489)) (h!70938 s!2326)))))

(declare-fun c!1110221 () Bool)

(declare-fun b!6163425 () Bool)

(assert (=> b!6163425 (= c!1110221 ((_ is Star!16105) (ite c!1110021 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110023 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110024 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343)))))))))))

(declare-fun e!3755051 () (InoxSet Context!10978))

(assert (=> b!6163425 (= e!3755051 e!3755048)))

(declare-fun b!6163426 () Bool)

(declare-fun e!3755050 () (InoxSet Context!10978))

(declare-fun e!3755047 () (InoxSet Context!10978))

(assert (=> b!6163426 (= e!3755050 e!3755047)))

(assert (=> b!6163426 (= c!1110220 ((_ is Union!16105) (ite c!1110021 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110023 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110024 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343)))))))))))

(declare-fun b!6163427 () Bool)

(declare-fun e!3755052 () (InoxSet Context!10978))

(assert (=> b!6163427 (= e!3755052 e!3755051)))

(assert (=> b!6163427 (= c!1110223 ((_ is Concat!24950) (ite c!1110021 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110023 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110024 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343)))))))))))

(declare-fun b!6163428 () Bool)

(assert (=> b!6163428 (= e!3755048 ((as const (Array Context!10978 Bool)) false))))

(declare-fun bm!513480 () Bool)

(declare-fun call!513487 () List!64615)

(assert (=> bm!513480 (= call!513489 call!513487)))

(declare-fun bm!513481 () Bool)

(assert (=> bm!513481 (= call!513487 ($colon$colon!1982 (exprs!5989 (ite (or c!1110021 c!1110023) lt!2336120 (Context!10979 call!513358))) (ite (or c!1110222 c!1110223) (regTwo!32722 (ite c!1110021 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110023 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110024 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343)))))))) (ite c!1110021 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110023 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110024 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343))))))))))))

(declare-fun bm!513482 () Bool)

(declare-fun call!513488 () (InoxSet Context!10978))

(assert (=> bm!513482 (= call!513488 (derivationStepZipperDown!1353 (ite c!1110220 (regTwo!32723 (ite c!1110021 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110023 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110024 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343)))))))) (regOne!32722 (ite c!1110021 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110023 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110024 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343))))))))) (ite c!1110220 (ite (or c!1110021 c!1110023) lt!2336120 (Context!10979 call!513358)) (Context!10979 call!513487)) (h!70938 s!2326)))))

(declare-fun b!6163429 () Bool)

(assert (=> b!6163429 (= e!3755050 (store ((as const (Array Context!10978 Bool)) false) (ite (or c!1110021 c!1110023) lt!2336120 (Context!10979 call!513358)) true))))

(declare-fun b!6163430 () Bool)

(declare-fun e!3755049 () Bool)

(assert (=> b!6163430 (= c!1110222 e!3755049)))

(declare-fun res!2552135 () Bool)

(assert (=> b!6163430 (=> (not res!2552135) (not e!3755049))))

(assert (=> b!6163430 (= res!2552135 ((_ is Concat!24950) (ite c!1110021 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110023 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110024 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343)))))))))))

(assert (=> b!6163430 (= e!3755047 e!3755052)))

(declare-fun d!1931486 () Bool)

(declare-fun c!1110219 () Bool)

(assert (=> d!1931486 (= c!1110219 (and ((_ is ElementMatch!16105) (ite c!1110021 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110023 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110024 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343)))))))) (= (c!1109850 (ite c!1110021 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110023 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110024 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343)))))))) (h!70938 s!2326))))))

(assert (=> d!1931486 (= (derivationStepZipperDown!1353 (ite c!1110021 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110023 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110024 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343))))))) (ite (or c!1110021 c!1110023) lt!2336120 (Context!10979 call!513358)) (h!70938 s!2326)) e!3755050)))

(declare-fun b!6163431 () Bool)

(assert (=> b!6163431 (= e!3755047 ((_ map or) call!513485 call!513488))))

(declare-fun bm!513483 () Bool)

(declare-fun call!513486 () (InoxSet Context!10978))

(assert (=> bm!513483 (= call!513484 call!513486)))

(declare-fun b!6163432 () Bool)

(assert (=> b!6163432 (= e!3755051 call!513484)))

(declare-fun b!6163433 () Bool)

(assert (=> b!6163433 (= e!3755052 ((_ map or) call!513488 call!513486))))

(declare-fun bm!513484 () Bool)

(assert (=> bm!513484 (= call!513486 call!513485)))

(declare-fun b!6163434 () Bool)

(assert (=> b!6163434 (= e!3755049 (nullable!6098 (regOne!32722 (ite c!1110021 (regOne!32723 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110023 (regTwo!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (ite c!1110024 (regOne!32722 (h!70939 (exprs!5989 (h!70940 zl!343)))) (reg!16434 (h!70939 (exprs!5989 (h!70940 zl!343))))))))))))

(assert (= (and d!1931486 c!1110219) b!6163429))

(assert (= (and d!1931486 (not c!1110219)) b!6163426))

(assert (= (and b!6163426 c!1110220) b!6163431))

(assert (= (and b!6163426 (not c!1110220)) b!6163430))

(assert (= (and b!6163430 res!2552135) b!6163434))

(assert (= (and b!6163430 c!1110222) b!6163433))

(assert (= (and b!6163430 (not c!1110222)) b!6163427))

(assert (= (and b!6163427 c!1110223) b!6163432))

(assert (= (and b!6163427 (not c!1110223)) b!6163425))

(assert (= (and b!6163425 c!1110221) b!6163424))

(assert (= (and b!6163425 (not c!1110221)) b!6163428))

(assert (= (or b!6163432 b!6163424) bm!513480))

(assert (= (or b!6163432 b!6163424) bm!513483))

(assert (= (or b!6163433 bm!513480) bm!513481))

(assert (= (or b!6163433 bm!513483) bm!513484))

(assert (= (or b!6163431 b!6163433) bm!513482))

(assert (= (or b!6163431 bm!513484) bm!513479))

(declare-fun m!7001272 () Bool)

(assert (=> bm!513479 m!7001272))

(declare-fun m!7001274 () Bool)

(assert (=> b!6163434 m!7001274))

(declare-fun m!7001276 () Bool)

(assert (=> bm!513481 m!7001276))

(declare-fun m!7001278 () Bool)

(assert (=> b!6163429 m!7001278))

(declare-fun m!7001280 () Bool)

(assert (=> bm!513482 m!7001280))

(assert (=> bm!513348 d!1931486))

(assert (=> d!1931160 d!1931162))

(assert (=> d!1931160 d!1931150))

(declare-fun d!1931490 () Bool)

(declare-fun e!3755053 () Bool)

(assert (=> d!1931490 (= (matchZipper!2117 ((_ map or) lt!2336112 lt!2336092) (t!378112 s!2326)) e!3755053)))

(declare-fun res!2552136 () Bool)

(assert (=> d!1931490 (=> res!2552136 e!3755053)))

(assert (=> d!1931490 (= res!2552136 (matchZipper!2117 lt!2336112 (t!378112 s!2326)))))

(assert (=> d!1931490 true))

(declare-fun _$48!1745 () Unit!157619)

(assert (=> d!1931490 (= (choose!45822 lt!2336112 lt!2336092 (t!378112 s!2326)) _$48!1745)))

(declare-fun b!6163435 () Bool)

(assert (=> b!6163435 (= e!3755053 (matchZipper!2117 lt!2336092 (t!378112 s!2326)))))

(assert (= (and d!1931490 (not res!2552136)) b!6163435))

(assert (=> d!1931490 m!7000056))

(assert (=> d!1931490 m!7000054))

(assert (=> b!6163435 m!7000044))

(assert (=> d!1931160 d!1931490))

(declare-fun b!6163436 () Bool)

(declare-fun res!2552140 () Bool)

(declare-fun e!3755056 () Bool)

(assert (=> b!6163436 (=> (not res!2552140) (not e!3755056))))

(declare-fun call!513490 () Bool)

(assert (=> b!6163436 (= res!2552140 (not call!513490))))

(declare-fun b!6163437 () Bool)

(declare-fun e!3755054 () Bool)

(declare-fun e!3755057 () Bool)

(assert (=> b!6163437 (= e!3755054 e!3755057)))

(declare-fun c!1110225 () Bool)

(assert (=> b!6163437 (= c!1110225 ((_ is EmptyLang!16105) (derivativeStep!4825 r!7292 (head!12731 s!2326))))))

(declare-fun b!6163438 () Bool)

(declare-fun e!3755058 () Bool)

(assert (=> b!6163438 (= e!3755058 (not (= (head!12731 (tail!11816 s!2326)) (c!1109850 (derivativeStep!4825 r!7292 (head!12731 s!2326))))))))

(declare-fun b!6163439 () Bool)

(declare-fun res!2552139 () Bool)

(assert (=> b!6163439 (=> res!2552139 e!3755058)))

(assert (=> b!6163439 (= res!2552139 (not (isEmpty!36465 (tail!11816 (tail!11816 s!2326)))))))

(declare-fun b!6163440 () Bool)

(declare-fun e!3755059 () Bool)

(assert (=> b!6163440 (= e!3755059 e!3755058)))

(declare-fun res!2552142 () Bool)

(assert (=> b!6163440 (=> res!2552142 e!3755058)))

(assert (=> b!6163440 (= res!2552142 call!513490)))

(declare-fun b!6163441 () Bool)

(declare-fun lt!2336250 () Bool)

(assert (=> b!6163441 (= e!3755057 (not lt!2336250))))

(declare-fun b!6163442 () Bool)

(declare-fun e!3755060 () Bool)

(assert (=> b!6163442 (= e!3755060 e!3755059)))

(declare-fun res!2552138 () Bool)

(assert (=> b!6163442 (=> (not res!2552138) (not e!3755059))))

(assert (=> b!6163442 (= res!2552138 (not lt!2336250))))

(declare-fun b!6163443 () Bool)

(declare-fun res!2552137 () Bool)

(assert (=> b!6163443 (=> (not res!2552137) (not e!3755056))))

(assert (=> b!6163443 (= res!2552137 (isEmpty!36465 (tail!11816 (tail!11816 s!2326))))))

(declare-fun b!6163444 () Bool)

(assert (=> b!6163444 (= e!3755056 (= (head!12731 (tail!11816 s!2326)) (c!1109850 (derivativeStep!4825 r!7292 (head!12731 s!2326)))))))

(declare-fun b!6163445 () Bool)

(declare-fun res!2552144 () Bool)

(assert (=> b!6163445 (=> res!2552144 e!3755060)))

(assert (=> b!6163445 (= res!2552144 e!3755056)))

(declare-fun res!2552143 () Bool)

(assert (=> b!6163445 (=> (not res!2552143) (not e!3755056))))

(assert (=> b!6163445 (= res!2552143 lt!2336250)))

(declare-fun b!6163446 () Bool)

(declare-fun e!3755055 () Bool)

(assert (=> b!6163446 (= e!3755055 (matchR!8288 (derivativeStep!4825 (derivativeStep!4825 r!7292 (head!12731 s!2326)) (head!12731 (tail!11816 s!2326))) (tail!11816 (tail!11816 s!2326))))))

(declare-fun b!6163447 () Bool)

(assert (=> b!6163447 (= e!3755054 (= lt!2336250 call!513490))))

(declare-fun d!1931492 () Bool)

(assert (=> d!1931492 e!3755054))

(declare-fun c!1110224 () Bool)

(assert (=> d!1931492 (= c!1110224 ((_ is EmptyExpr!16105) (derivativeStep!4825 r!7292 (head!12731 s!2326))))))

(assert (=> d!1931492 (= lt!2336250 e!3755055)))

(declare-fun c!1110226 () Bool)

(assert (=> d!1931492 (= c!1110226 (isEmpty!36465 (tail!11816 s!2326)))))

(assert (=> d!1931492 (validRegex!7841 (derivativeStep!4825 r!7292 (head!12731 s!2326)))))

(assert (=> d!1931492 (= (matchR!8288 (derivativeStep!4825 r!7292 (head!12731 s!2326)) (tail!11816 s!2326)) lt!2336250)))

(declare-fun bm!513485 () Bool)

(assert (=> bm!513485 (= call!513490 (isEmpty!36465 (tail!11816 s!2326)))))

(declare-fun b!6163448 () Bool)

(assert (=> b!6163448 (= e!3755055 (nullable!6098 (derivativeStep!4825 r!7292 (head!12731 s!2326))))))

(declare-fun b!6163449 () Bool)

(declare-fun res!2552141 () Bool)

(assert (=> b!6163449 (=> res!2552141 e!3755060)))

(assert (=> b!6163449 (= res!2552141 (not ((_ is ElementMatch!16105) (derivativeStep!4825 r!7292 (head!12731 s!2326)))))))

(assert (=> b!6163449 (= e!3755057 e!3755060)))

(assert (= (and d!1931492 c!1110226) b!6163448))

(assert (= (and d!1931492 (not c!1110226)) b!6163446))

(assert (= (and d!1931492 c!1110224) b!6163447))

(assert (= (and d!1931492 (not c!1110224)) b!6163437))

(assert (= (and b!6163437 c!1110225) b!6163441))

(assert (= (and b!6163437 (not c!1110225)) b!6163449))

(assert (= (and b!6163449 (not res!2552141)) b!6163445))

(assert (= (and b!6163445 res!2552143) b!6163436))

(assert (= (and b!6163436 res!2552140) b!6163443))

(assert (= (and b!6163443 res!2552137) b!6163444))

(assert (= (and b!6163445 (not res!2552144)) b!6163442))

(assert (= (and b!6163442 res!2552138) b!6163440))

(assert (= (and b!6163440 (not res!2552142)) b!6163439))

(assert (= (and b!6163439 (not res!2552139)) b!6163438))

(assert (= (or b!6163447 b!6163436 b!6163440) bm!513485))

(assert (=> bm!513485 m!7000554))

(assert (=> bm!513485 m!7000664))

(assert (=> b!6163438 m!7000554))

(assert (=> b!6163438 m!7000962))

(assert (=> b!6163446 m!7000554))

(assert (=> b!6163446 m!7000962))

(assert (=> b!6163446 m!7000660))

(assert (=> b!6163446 m!7000962))

(declare-fun m!7001282 () Bool)

(assert (=> b!6163446 m!7001282))

(assert (=> b!6163446 m!7000554))

(assert (=> b!6163446 m!7000966))

(assert (=> b!6163446 m!7001282))

(assert (=> b!6163446 m!7000966))

(declare-fun m!7001284 () Bool)

(assert (=> b!6163446 m!7001284))

(assert (=> d!1931492 m!7000554))

(assert (=> d!1931492 m!7000664))

(assert (=> d!1931492 m!7000660))

(declare-fun m!7001286 () Bool)

(assert (=> d!1931492 m!7001286))

(assert (=> b!6163444 m!7000554))

(assert (=> b!6163444 m!7000962))

(assert (=> b!6163443 m!7000554))

(assert (=> b!6163443 m!7000966))

(assert (=> b!6163443 m!7000966))

(declare-fun m!7001288 () Bool)

(assert (=> b!6163443 m!7001288))

(assert (=> b!6163439 m!7000554))

(assert (=> b!6163439 m!7000966))

(assert (=> b!6163439 m!7000966))

(assert (=> b!6163439 m!7001288))

(assert (=> b!6163448 m!7000660))

(declare-fun m!7001290 () Bool)

(assert (=> b!6163448 m!7001290))

(assert (=> b!6162854 d!1931492))

(declare-fun b!6163474 () Bool)

(declare-fun e!3755075 () Regex!16105)

(declare-fun call!513500 () Regex!16105)

(assert (=> b!6163474 (= e!3755075 (Concat!24950 call!513500 r!7292))))

(declare-fun b!6163475 () Bool)

(declare-fun e!3755073 () Regex!16105)

(declare-fun call!513501 () Regex!16105)

(declare-fun call!513502 () Regex!16105)

(assert (=> b!6163475 (= e!3755073 (Union!16105 call!513501 call!513502))))

(declare-fun b!6163476 () Bool)

(declare-fun c!1110240 () Bool)

(assert (=> b!6163476 (= c!1110240 ((_ is Union!16105) r!7292))))

(declare-fun e!3755074 () Regex!16105)

(assert (=> b!6163476 (= e!3755074 e!3755073)))

(declare-fun b!6163477 () Bool)

(declare-fun e!3755072 () Regex!16105)

(declare-fun call!513499 () Regex!16105)

(assert (=> b!6163477 (= e!3755072 (Union!16105 (Concat!24950 call!513499 (regTwo!32722 r!7292)) EmptyLang!16105))))

(declare-fun d!1931496 () Bool)

(declare-fun lt!2336253 () Regex!16105)

(assert (=> d!1931496 (validRegex!7841 lt!2336253)))

(declare-fun e!3755076 () Regex!16105)

(assert (=> d!1931496 (= lt!2336253 e!3755076)))

(declare-fun c!1110242 () Bool)

(assert (=> d!1931496 (= c!1110242 (or ((_ is EmptyExpr!16105) r!7292) ((_ is EmptyLang!16105) r!7292)))))

(assert (=> d!1931496 (validRegex!7841 r!7292)))

(assert (=> d!1931496 (= (derivativeStep!4825 r!7292 (head!12731 s!2326)) lt!2336253)))

(declare-fun bm!513494 () Bool)

(assert (=> bm!513494 (= call!513500 call!513502)))

(declare-fun b!6163478 () Bool)

(assert (=> b!6163478 (= e!3755073 e!3755075)))

(declare-fun c!1110243 () Bool)

(assert (=> b!6163478 (= c!1110243 ((_ is Star!16105) r!7292))))

(declare-fun bm!513495 () Bool)

(assert (=> bm!513495 (= call!513502 (derivativeStep!4825 (ite c!1110240 (regTwo!32723 r!7292) (ite c!1110243 (reg!16434 r!7292) (regOne!32722 r!7292))) (head!12731 s!2326)))))

(declare-fun bm!513496 () Bool)

(assert (=> bm!513496 (= call!513499 call!513501)))

(declare-fun b!6163479 () Bool)

(assert (=> b!6163479 (= e!3755076 e!3755074)))

(declare-fun c!1110241 () Bool)

(assert (=> b!6163479 (= c!1110241 ((_ is ElementMatch!16105) r!7292))))

(declare-fun b!6163480 () Bool)

(assert (=> b!6163480 (= e!3755074 (ite (= (head!12731 s!2326) (c!1109850 r!7292)) EmptyExpr!16105 EmptyLang!16105))))

(declare-fun bm!513497 () Bool)

(declare-fun c!1110244 () Bool)

(assert (=> bm!513497 (= call!513501 (derivativeStep!4825 (ite c!1110240 (regOne!32723 r!7292) (ite c!1110244 (regTwo!32722 r!7292) (regOne!32722 r!7292))) (head!12731 s!2326)))))

(declare-fun b!6163481 () Bool)

(assert (=> b!6163481 (= e!3755072 (Union!16105 (Concat!24950 call!513500 (regTwo!32722 r!7292)) call!513499))))

(declare-fun b!6163482 () Bool)

(assert (=> b!6163482 (= c!1110244 (nullable!6098 (regOne!32722 r!7292)))))

(assert (=> b!6163482 (= e!3755075 e!3755072)))

(declare-fun b!6163483 () Bool)

(assert (=> b!6163483 (= e!3755076 EmptyLang!16105)))

(assert (= (and d!1931496 c!1110242) b!6163483))

(assert (= (and d!1931496 (not c!1110242)) b!6163479))

(assert (= (and b!6163479 c!1110241) b!6163480))

(assert (= (and b!6163479 (not c!1110241)) b!6163476))

(assert (= (and b!6163476 c!1110240) b!6163475))

(assert (= (and b!6163476 (not c!1110240)) b!6163478))

(assert (= (and b!6163478 c!1110243) b!6163474))

(assert (= (and b!6163478 (not c!1110243)) b!6163482))

(assert (= (and b!6163482 c!1110244) b!6163481))

(assert (= (and b!6163482 (not c!1110244)) b!6163477))

(assert (= (or b!6163481 b!6163477) bm!513496))

(assert (= (or b!6163474 b!6163481) bm!513494))

(assert (= (or b!6163475 bm!513494) bm!513495))

(assert (= (or b!6163475 bm!513496) bm!513497))

(declare-fun m!7001308 () Bool)

(assert (=> d!1931496 m!7001308))

(assert (=> d!1931496 m!7000108))

(assert (=> bm!513495 m!7000550))

(declare-fun m!7001310 () Bool)

(assert (=> bm!513495 m!7001310))

(assert (=> bm!513497 m!7000550))

(declare-fun m!7001312 () Bool)

(assert (=> bm!513497 m!7001312))

(assert (=> b!6163482 m!7000842))

(assert (=> b!6162854 d!1931496))

(assert (=> b!6162854 d!1931318))

(assert (=> b!6162854 d!1931336))

(assert (=> b!6162631 d!1931422))

(assert (=> d!1931190 d!1931260))

(assert (=> b!6162928 d!1931186))

(declare-fun bs!1527665 () Bool)

(declare-fun d!1931508 () Bool)

(assert (= bs!1527665 (and d!1931508 d!1931370)))

(declare-fun lambda!336402 () Int)

(assert (=> bs!1527665 (= lambda!336402 lambda!336375)))

(declare-fun bs!1527666 () Bool)

(assert (= bs!1527666 (and d!1931508 d!1931234)))

(assert (=> bs!1527666 (= lambda!336402 lambda!336358)))

(declare-fun bs!1527667 () Bool)

(assert (= bs!1527667 (and d!1931508 d!1931230)))

(assert (=> bs!1527667 (= lambda!336402 lambda!336352)))

(declare-fun bs!1527668 () Bool)

(assert (= bs!1527668 (and d!1931508 d!1931216)))

(assert (=> bs!1527668 (= lambda!336402 lambda!336351)))

(declare-fun bs!1527669 () Bool)

(assert (= bs!1527669 (and d!1931508 d!1931244)))

(assert (=> bs!1527669 (= lambda!336402 lambda!336359)))

(declare-fun bs!1527670 () Bool)

(assert (= bs!1527670 (and d!1931508 d!1931186)))

(assert (=> bs!1527670 (= lambda!336402 lambda!336342)))

(declare-fun bs!1527671 () Bool)

(assert (= bs!1527671 (and d!1931508 d!1931232)))

(assert (=> bs!1527671 (= lambda!336402 lambda!336355)))

(declare-fun bs!1527672 () Bool)

(assert (= bs!1527672 (and d!1931508 d!1931430)))

(assert (=> bs!1527672 (= lambda!336402 lambda!336384)))

(declare-fun lt!2336254 () List!64615)

(assert (=> d!1931508 (forall!15226 lt!2336254 lambda!336402)))

(declare-fun e!3755077 () List!64615)

(assert (=> d!1931508 (= lt!2336254 e!3755077)))

(declare-fun c!1110245 () Bool)

(assert (=> d!1931508 (= c!1110245 ((_ is Cons!64492) (t!378114 zl!343)))))

(assert (=> d!1931508 (= (unfocusZipperList!1526 (t!378114 zl!343)) lt!2336254)))

(declare-fun b!6163484 () Bool)

(assert (=> b!6163484 (= e!3755077 (Cons!64491 (generalisedConcat!1702 (exprs!5989 (h!70940 (t!378114 zl!343)))) (unfocusZipperList!1526 (t!378114 (t!378114 zl!343)))))))

(declare-fun b!6163485 () Bool)

(assert (=> b!6163485 (= e!3755077 Nil!64491)))

(assert (= (and d!1931508 c!1110245) b!6163484))

(assert (= (and d!1931508 (not c!1110245)) b!6163485))

(declare-fun m!7001314 () Bool)

(assert (=> d!1931508 m!7001314))

(declare-fun m!7001316 () Bool)

(assert (=> b!6163484 m!7001316))

(declare-fun m!7001318 () Bool)

(assert (=> b!6163484 m!7001318))

(assert (=> b!6162928 d!1931508))

(declare-fun d!1931510 () Bool)

(declare-fun res!2552155 () Bool)

(declare-fun e!3755090 () Bool)

(assert (=> d!1931510 (=> res!2552155 e!3755090)))

(assert (=> d!1931510 (= res!2552155 ((_ is Nil!64491) lt!2336223))))

(assert (=> d!1931510 (= (forall!15226 lt!2336223 lambda!336358) e!3755090)))

(declare-fun b!6163500 () Bool)

(declare-fun e!3755091 () Bool)

(assert (=> b!6163500 (= e!3755090 e!3755091)))

(declare-fun res!2552156 () Bool)

(assert (=> b!6163500 (=> (not res!2552156) (not e!3755091))))

(assert (=> b!6163500 (= res!2552156 (dynLambda!25430 lambda!336358 (h!70939 lt!2336223)))))

(declare-fun b!6163501 () Bool)

(assert (=> b!6163501 (= e!3755091 (forall!15226 (t!378113 lt!2336223) lambda!336358))))

(assert (= (and d!1931510 (not res!2552155)) b!6163500))

(assert (= (and b!6163500 res!2552156) b!6163501))

(declare-fun b_lambda!234627 () Bool)

(assert (=> (not b_lambda!234627) (not b!6163500)))

(declare-fun m!7001320 () Bool)

(assert (=> b!6163500 m!7001320))

(declare-fun m!7001322 () Bool)

(assert (=> b!6163501 m!7001322))

(assert (=> d!1931234 d!1931510))

(assert (=> bm!513359 d!1931254))

(declare-fun b!6163502 () Bool)

(declare-fun res!2552159 () Bool)

(declare-fun e!3755093 () Bool)

(assert (=> b!6163502 (=> (not res!2552159) (not e!3755093))))

(declare-fun call!513504 () Bool)

(assert (=> b!6163502 (= res!2552159 call!513504)))

(declare-fun e!3755098 () Bool)

(assert (=> b!6163502 (= e!3755098 e!3755093)))

(declare-fun b!6163503 () Bool)

(declare-fun e!3755094 () Bool)

(assert (=> b!6163503 (= e!3755094 e!3755098)))

(declare-fun c!1110249 () Bool)

(assert (=> b!6163503 (= c!1110249 ((_ is Union!16105) lt!2336201))))

(declare-fun c!1110248 () Bool)

(declare-fun call!513503 () Bool)

(declare-fun bm!513498 () Bool)

(assert (=> bm!513498 (= call!513503 (validRegex!7841 (ite c!1110248 (reg!16434 lt!2336201) (ite c!1110249 (regOne!32723 lt!2336201) (regOne!32722 lt!2336201)))))))

(declare-fun b!6163504 () Bool)

(declare-fun call!513507 () Bool)

(assert (=> b!6163504 (= e!3755093 call!513507)))

(declare-fun b!6163505 () Bool)

(declare-fun e!3755095 () Bool)

(assert (=> b!6163505 (= e!3755095 call!513507)))

(declare-fun bm!513499 () Bool)

(assert (=> bm!513499 (= call!513504 call!513503)))

(declare-fun b!6163506 () Bool)

(declare-fun e!3755097 () Bool)

(assert (=> b!6163506 (= e!3755097 e!3755095)))

(declare-fun res!2552157 () Bool)

(assert (=> b!6163506 (=> (not res!2552157) (not e!3755095))))

(assert (=> b!6163506 (= res!2552157 call!513504)))

(declare-fun b!6163507 () Bool)

(declare-fun e!3755096 () Bool)

(assert (=> b!6163507 (= e!3755096 call!513503)))

(declare-fun d!1931512 () Bool)

(declare-fun res!2552158 () Bool)

(declare-fun e!3755092 () Bool)

(assert (=> d!1931512 (=> res!2552158 e!3755092)))

(assert (=> d!1931512 (= res!2552158 ((_ is ElementMatch!16105) lt!2336201))))

(assert (=> d!1931512 (= (validRegex!7841 lt!2336201) e!3755092)))

(declare-fun b!6163508 () Bool)

(assert (=> b!6163508 (= e!3755092 e!3755094)))

(assert (=> b!6163508 (= c!1110248 ((_ is Star!16105) lt!2336201))))

(declare-fun b!6163509 () Bool)

(assert (=> b!6163509 (= e!3755094 e!3755096)))

(declare-fun res!2552160 () Bool)

(assert (=> b!6163509 (= res!2552160 (not (nullable!6098 (reg!16434 lt!2336201))))))

(assert (=> b!6163509 (=> (not res!2552160) (not e!3755096))))

(declare-fun b!6163510 () Bool)

(declare-fun res!2552161 () Bool)

(assert (=> b!6163510 (=> res!2552161 e!3755097)))

(assert (=> b!6163510 (= res!2552161 (not ((_ is Concat!24950) lt!2336201)))))

(assert (=> b!6163510 (= e!3755098 e!3755097)))

(declare-fun bm!513500 () Bool)

(assert (=> bm!513500 (= call!513507 (validRegex!7841 (ite c!1110249 (regTwo!32723 lt!2336201) (regTwo!32722 lt!2336201))))))

(assert (= (and d!1931512 (not res!2552158)) b!6163508))

(assert (= (and b!6163508 c!1110248) b!6163509))

(assert (= (and b!6163508 (not c!1110248)) b!6163503))

(assert (= (and b!6163509 res!2552160) b!6163507))

(assert (= (and b!6163503 c!1110249) b!6163502))

(assert (= (and b!6163503 (not c!1110249)) b!6163510))

(assert (= (and b!6163502 res!2552159) b!6163504))

(assert (= (and b!6163510 (not res!2552161)) b!6163506))

(assert (= (and b!6163506 res!2552157) b!6163505))

(assert (= (or b!6163504 b!6163505) bm!513500))

(assert (= (or b!6163502 b!6163506) bm!513499))

(assert (= (or b!6163507 bm!513499) bm!513498))

(declare-fun m!7001324 () Bool)

(assert (=> bm!513498 m!7001324))

(declare-fun m!7001326 () Bool)

(assert (=> b!6163509 m!7001326))

(declare-fun m!7001328 () Bool)

(assert (=> bm!513500 m!7001328))

(assert (=> d!1931186 d!1931512))

(declare-fun d!1931514 () Bool)

(declare-fun res!2552162 () Bool)

(declare-fun e!3755099 () Bool)

(assert (=> d!1931514 (=> res!2552162 e!3755099)))

(assert (=> d!1931514 (= res!2552162 ((_ is Nil!64491) (exprs!5989 (h!70940 zl!343))))))

(assert (=> d!1931514 (= (forall!15226 (exprs!5989 (h!70940 zl!343)) lambda!336342) e!3755099)))

(declare-fun b!6163511 () Bool)

(declare-fun e!3755100 () Bool)

(assert (=> b!6163511 (= e!3755099 e!3755100)))

(declare-fun res!2552163 () Bool)

(assert (=> b!6163511 (=> (not res!2552163) (not e!3755100))))

(assert (=> b!6163511 (= res!2552163 (dynLambda!25430 lambda!336342 (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun b!6163512 () Bool)

(assert (=> b!6163512 (= e!3755100 (forall!15226 (t!378113 (exprs!5989 (h!70940 zl!343))) lambda!336342))))

(assert (= (and d!1931514 (not res!2552162)) b!6163511))

(assert (= (and b!6163511 res!2552163) b!6163512))

(declare-fun b_lambda!234629 () Bool)

(assert (=> (not b_lambda!234629) (not b!6163511)))

(declare-fun m!7001330 () Bool)

(assert (=> b!6163511 m!7001330))

(declare-fun m!7001332 () Bool)

(assert (=> b!6163512 m!7001332))

(assert (=> d!1931186 d!1931514))

(declare-fun bs!1527673 () Bool)

(declare-fun d!1931516 () Bool)

(assert (= bs!1527673 (and d!1931516 d!1931370)))

(declare-fun lambda!336403 () Int)

(assert (=> bs!1527673 (= lambda!336403 lambda!336375)))

(declare-fun bs!1527674 () Bool)

(assert (= bs!1527674 (and d!1931516 d!1931234)))

(assert (=> bs!1527674 (= lambda!336403 lambda!336358)))

(declare-fun bs!1527675 () Bool)

(assert (= bs!1527675 (and d!1931516 d!1931230)))

(assert (=> bs!1527675 (= lambda!336403 lambda!336352)))

(declare-fun bs!1527676 () Bool)

(assert (= bs!1527676 (and d!1931516 d!1931216)))

(assert (=> bs!1527676 (= lambda!336403 lambda!336351)))

(declare-fun bs!1527677 () Bool)

(assert (= bs!1527677 (and d!1931516 d!1931244)))

(assert (=> bs!1527677 (= lambda!336403 lambda!336359)))

(declare-fun bs!1527678 () Bool)

(assert (= bs!1527678 (and d!1931516 d!1931232)))

(assert (=> bs!1527678 (= lambda!336403 lambda!336355)))

(declare-fun bs!1527679 () Bool)

(assert (= bs!1527679 (and d!1931516 d!1931430)))

(assert (=> bs!1527679 (= lambda!336403 lambda!336384)))

(declare-fun bs!1527680 () Bool)

(assert (= bs!1527680 (and d!1931516 d!1931508)))

(assert (=> bs!1527680 (= lambda!336403 lambda!336402)))

(declare-fun bs!1527681 () Bool)

(assert (= bs!1527681 (and d!1931516 d!1931186)))

(assert (=> bs!1527681 (= lambda!336403 lambda!336342)))

(assert (=> d!1931516 (= (inv!83509 (h!70940 (t!378114 zl!343))) (forall!15226 (exprs!5989 (h!70940 (t!378114 zl!343))) lambda!336403))))

(declare-fun bs!1527682 () Bool)

(assert (= bs!1527682 d!1931516))

(declare-fun m!7001334 () Bool)

(assert (=> bs!1527682 m!7001334))

(assert (=> b!6163002 d!1931516))

(declare-fun b!6163513 () Bool)

(declare-fun e!3755104 () Bool)

(declare-fun e!3755103 () Bool)

(assert (=> b!6163513 (= e!3755104 e!3755103)))

(declare-fun res!2552166 () Bool)

(declare-fun call!513511 () Bool)

(assert (=> b!6163513 (= res!2552166 call!513511)))

(assert (=> b!6163513 (=> (not res!2552166) (not e!3755103))))

(declare-fun b!6163514 () Bool)

(declare-fun e!3755102 () Bool)

(declare-fun call!513510 () Bool)

(assert (=> b!6163514 (= e!3755102 call!513510)))

(declare-fun b!6163515 () Bool)

(declare-fun e!3755106 () Bool)

(assert (=> b!6163515 (= e!3755106 e!3755104)))

(declare-fun c!1110250 () Bool)

(assert (=> b!6163515 (= c!1110250 ((_ is Union!16105) (regOne!32723 (regOne!32722 r!7292))))))

(declare-fun bm!513505 () Bool)

(assert (=> bm!513505 (= call!513510 (nullable!6098 (ite c!1110250 (regTwo!32723 (regOne!32723 (regOne!32722 r!7292))) (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))))))))

(declare-fun b!6163517 () Bool)

(declare-fun e!3755105 () Bool)

(assert (=> b!6163517 (= e!3755105 e!3755106)))

(declare-fun res!2552167 () Bool)

(assert (=> b!6163517 (=> res!2552167 e!3755106)))

(assert (=> b!6163517 (= res!2552167 ((_ is Star!16105) (regOne!32723 (regOne!32722 r!7292))))))

(declare-fun b!6163518 () Bool)

(assert (=> b!6163518 (= e!3755103 call!513510)))

(declare-fun d!1931518 () Bool)

(declare-fun res!2552168 () Bool)

(declare-fun e!3755101 () Bool)

(assert (=> d!1931518 (=> res!2552168 e!3755101)))

(assert (=> d!1931518 (= res!2552168 ((_ is EmptyExpr!16105) (regOne!32723 (regOne!32722 r!7292))))))

(assert (=> d!1931518 (= (nullableFct!2062 (regOne!32723 (regOne!32722 r!7292))) e!3755101)))

(declare-fun b!6163516 () Bool)

(assert (=> b!6163516 (= e!3755101 e!3755105)))

(declare-fun res!2552165 () Bool)

(assert (=> b!6163516 (=> (not res!2552165) (not e!3755105))))

(assert (=> b!6163516 (= res!2552165 (and (not ((_ is EmptyLang!16105) (regOne!32723 (regOne!32722 r!7292)))) (not ((_ is ElementMatch!16105) (regOne!32723 (regOne!32722 r!7292))))))))

(declare-fun bm!513506 () Bool)

(assert (=> bm!513506 (= call!513511 (nullable!6098 (ite c!1110250 (regOne!32723 (regOne!32723 (regOne!32722 r!7292))) (regOne!32722 (regOne!32723 (regOne!32722 r!7292))))))))

(declare-fun b!6163519 () Bool)

(assert (=> b!6163519 (= e!3755104 e!3755102)))

(declare-fun res!2552164 () Bool)

(assert (=> b!6163519 (= res!2552164 call!513511)))

(assert (=> b!6163519 (=> res!2552164 e!3755102)))

(assert (= (and d!1931518 (not res!2552168)) b!6163516))

(assert (= (and b!6163516 res!2552165) b!6163517))

(assert (= (and b!6163517 (not res!2552167)) b!6163515))

(assert (= (and b!6163515 c!1110250) b!6163519))

(assert (= (and b!6163515 (not c!1110250)) b!6163513))

(assert (= (and b!6163519 (not res!2552164)) b!6163514))

(assert (= (and b!6163513 res!2552166) b!6163518))

(assert (= (or b!6163514 b!6163518) bm!513505))

(assert (= (or b!6163519 b!6163513) bm!513506))

(declare-fun m!7001336 () Bool)

(assert (=> bm!513505 m!7001336))

(declare-fun m!7001338 () Bool)

(assert (=> bm!513506 m!7001338))

(assert (=> d!1931180 d!1931518))

(declare-fun d!1931520 () Bool)

(assert (=> d!1931520 (= (nullable!6098 (h!70939 (exprs!5989 lt!2336104))) (nullableFct!2062 (h!70939 (exprs!5989 lt!2336104))))))

(declare-fun bs!1527683 () Bool)

(assert (= bs!1527683 d!1931520))

(declare-fun m!7001340 () Bool)

(assert (=> bs!1527683 m!7001340))

(assert (=> b!6162689 d!1931520))

(declare-fun bs!1527684 () Bool)

(declare-fun d!1931522 () Bool)

(assert (= bs!1527684 (and d!1931522 d!1931370)))

(declare-fun lambda!336404 () Int)

(assert (=> bs!1527684 (= lambda!336404 lambda!336375)))

(declare-fun bs!1527685 () Bool)

(assert (= bs!1527685 (and d!1931522 d!1931234)))

(assert (=> bs!1527685 (= lambda!336404 lambda!336358)))

(declare-fun bs!1527686 () Bool)

(assert (= bs!1527686 (and d!1931522 d!1931516)))

(assert (=> bs!1527686 (= lambda!336404 lambda!336403)))

(declare-fun bs!1527687 () Bool)

(assert (= bs!1527687 (and d!1931522 d!1931230)))

(assert (=> bs!1527687 (= lambda!336404 lambda!336352)))

(declare-fun bs!1527688 () Bool)

(assert (= bs!1527688 (and d!1931522 d!1931216)))

(assert (=> bs!1527688 (= lambda!336404 lambda!336351)))

(declare-fun bs!1527689 () Bool)

(assert (= bs!1527689 (and d!1931522 d!1931244)))

(assert (=> bs!1527689 (= lambda!336404 lambda!336359)))

(declare-fun bs!1527690 () Bool)

(assert (= bs!1527690 (and d!1931522 d!1931232)))

(assert (=> bs!1527690 (= lambda!336404 lambda!336355)))

(declare-fun bs!1527691 () Bool)

(assert (= bs!1527691 (and d!1931522 d!1931430)))

(assert (=> bs!1527691 (= lambda!336404 lambda!336384)))

(declare-fun bs!1527692 () Bool)

(assert (= bs!1527692 (and d!1931522 d!1931508)))

(assert (=> bs!1527692 (= lambda!336404 lambda!336402)))

(declare-fun bs!1527693 () Bool)

(assert (= bs!1527693 (and d!1931522 d!1931186)))

(assert (=> bs!1527693 (= lambda!336404 lambda!336342)))

(assert (=> d!1931522 (= (inv!83509 setElem!41772) (forall!15226 (exprs!5989 setElem!41772) lambda!336404))))

(declare-fun bs!1527694 () Bool)

(assert (= bs!1527694 d!1931522))

(declare-fun m!7001342 () Bool)

(assert (=> bs!1527694 m!7001342))

(assert (=> setNonEmpty!41772 d!1931522))

(declare-fun d!1931524 () Bool)

(assert (=> d!1931524 (= (isEmpty!36461 (tail!11817 (exprs!5989 (h!70940 zl!343)))) ((_ is Nil!64491) (tail!11817 (exprs!5989 (h!70940 zl!343)))))))

(assert (=> b!6162710 d!1931524))

(declare-fun d!1931526 () Bool)

(assert (=> d!1931526 (= (tail!11817 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343))))))

(assert (=> b!6162710 d!1931526))

(assert (=> b!6162663 d!1931148))

(declare-fun d!1931528 () Bool)

(assert (=> d!1931528 (= (nullable!6098 (h!70939 (exprs!5989 lt!2336120))) (nullableFct!2062 (h!70939 (exprs!5989 lt!2336120))))))

(declare-fun bs!1527695 () Bool)

(assert (= bs!1527695 d!1931528))

(declare-fun m!7001344 () Bool)

(assert (=> bs!1527695 m!7001344))

(assert (=> b!6162727 d!1931528))

(declare-fun d!1931530 () Bool)

(declare-fun res!2552178 () Bool)

(declare-fun e!3755117 () Bool)

(assert (=> d!1931530 (=> res!2552178 e!3755117)))

(assert (=> d!1931530 (= res!2552178 ((_ is Nil!64492) lt!2336212))))

(assert (=> d!1931530 (= (noDuplicate!1952 lt!2336212) e!3755117)))

(declare-fun b!6163531 () Bool)

(declare-fun e!3755118 () Bool)

(assert (=> b!6163531 (= e!3755117 e!3755118)))

(declare-fun res!2552179 () Bool)

(assert (=> b!6163531 (=> (not res!2552179) (not e!3755118))))

(declare-fun contains!20064 (List!64616 Context!10978) Bool)

(assert (=> b!6163531 (= res!2552179 (not (contains!20064 (t!378114 lt!2336212) (h!70940 lt!2336212))))))

(declare-fun b!6163532 () Bool)

(assert (=> b!6163532 (= e!3755118 (noDuplicate!1952 (t!378114 lt!2336212)))))

(assert (= (and d!1931530 (not res!2552178)) b!6163531))

(assert (= (and b!6163531 res!2552179) b!6163532))

(declare-fun m!7001346 () Bool)

(assert (=> b!6163531 m!7001346))

(declare-fun m!7001348 () Bool)

(assert (=> b!6163532 m!7001348))

(assert (=> d!1931214 d!1931530))

(declare-fun d!1931532 () Bool)

(declare-fun e!3755128 () Bool)

(assert (=> d!1931532 e!3755128))

(declare-fun res!2552185 () Bool)

(assert (=> d!1931532 (=> (not res!2552185) (not e!3755128))))

(declare-fun res!2552184 () List!64616)

(assert (=> d!1931532 (= res!2552185 (noDuplicate!1952 res!2552184))))

(declare-fun e!3755126 () Bool)

(assert (=> d!1931532 e!3755126))

(assert (=> d!1931532 (= (choose!45826 z!1189) res!2552184)))

(declare-fun b!6163542 () Bool)

(declare-fun e!3755127 () Bool)

(declare-fun tp!1720729 () Bool)

(assert (=> b!6163542 (= e!3755127 tp!1720729)))

(declare-fun b!6163541 () Bool)

(declare-fun tp!1720730 () Bool)

(assert (=> b!6163541 (= e!3755126 (and (inv!83509 (h!70940 res!2552184)) e!3755127 tp!1720730))))

(declare-fun b!6163543 () Bool)

(assert (=> b!6163543 (= e!3755128 (= (content!12031 res!2552184) z!1189))))

(assert (= b!6163541 b!6163542))

(assert (= (and d!1931532 ((_ is Cons!64492) res!2552184)) b!6163541))

(assert (= (and d!1931532 res!2552185) b!6163543))

(declare-fun m!7001360 () Bool)

(assert (=> d!1931532 m!7001360))

(declare-fun m!7001362 () Bool)

(assert (=> b!6163541 m!7001362))

(declare-fun m!7001364 () Bool)

(assert (=> b!6163543 m!7001364))

(assert (=> d!1931214 d!1931532))

(declare-fun d!1931540 () Bool)

(declare-fun c!1110253 () Bool)

(assert (=> d!1931540 (= c!1110253 (isEmpty!36465 (tail!11816 (t!378112 s!2326))))))

(declare-fun e!3755129 () Bool)

(assert (=> d!1931540 (= (matchZipper!2117 (derivationStepZipper!2078 ((_ map or) lt!2336090 lt!2336092) (head!12731 (t!378112 s!2326))) (tail!11816 (t!378112 s!2326))) e!3755129)))

(declare-fun b!6163544 () Bool)

(assert (=> b!6163544 (= e!3755129 (nullableZipper!1886 (derivationStepZipper!2078 ((_ map or) lt!2336090 lt!2336092) (head!12731 (t!378112 s!2326)))))))

(declare-fun b!6163545 () Bool)

(assert (=> b!6163545 (= e!3755129 (matchZipper!2117 (derivationStepZipper!2078 (derivationStepZipper!2078 ((_ map or) lt!2336090 lt!2336092) (head!12731 (t!378112 s!2326))) (head!12731 (tail!11816 (t!378112 s!2326)))) (tail!11816 (tail!11816 (t!378112 s!2326)))))))

(assert (= (and d!1931540 c!1110253) b!6163544))

(assert (= (and d!1931540 (not c!1110253)) b!6163545))

(assert (=> d!1931540 m!7000504))

(assert (=> d!1931540 m!7000816))

(assert (=> b!6163544 m!7000608))

(declare-fun m!7001366 () Bool)

(assert (=> b!6163544 m!7001366))

(assert (=> b!6163545 m!7000504))

(assert (=> b!6163545 m!7000820))

(assert (=> b!6163545 m!7000608))

(assert (=> b!6163545 m!7000820))

(declare-fun m!7001368 () Bool)

(assert (=> b!6163545 m!7001368))

(assert (=> b!6163545 m!7000504))

(assert (=> b!6163545 m!7000824))

(assert (=> b!6163545 m!7001368))

(assert (=> b!6163545 m!7000824))

(declare-fun m!7001370 () Bool)

(assert (=> b!6163545 m!7001370))

(assert (=> b!6162722 d!1931540))

(declare-fun bs!1527698 () Bool)

(declare-fun d!1931542 () Bool)

(assert (= bs!1527698 (and d!1931542 d!1931334)))

(declare-fun lambda!336406 () Int)

(assert (=> bs!1527698 (= (= (head!12731 (t!378112 s!2326)) (head!12731 s!2326)) (= lambda!336406 lambda!336369))))

(declare-fun bs!1527699 () Bool)

(assert (= bs!1527699 (and d!1931542 d!1931280)))

(assert (=> bs!1527699 (= lambda!336406 lambda!336364)))

(declare-fun bs!1527700 () Bool)

(assert (= bs!1527700 (and d!1931542 d!1931450)))

(assert (=> bs!1527700 (= (= (head!12731 (t!378112 s!2326)) (head!12731 s!2326)) (= lambda!336406 lambda!336391))))

(declare-fun bs!1527702 () Bool)

(assert (= bs!1527702 (and d!1931542 d!1931344)))

(assert (=> bs!1527702 (= lambda!336406 lambda!336371)))

(declare-fun bs!1527703 () Bool)

(assert (= bs!1527703 (and d!1931542 d!1931340)))

(assert (=> bs!1527703 (= lambda!336406 lambda!336370)))

(declare-fun bs!1527704 () Bool)

(assert (= bs!1527704 (and d!1931542 d!1931374)))

(assert (=> bs!1527704 (= lambda!336406 lambda!336376)))

(declare-fun bs!1527705 () Bool)

(assert (= bs!1527705 (and d!1931542 d!1931378)))

(assert (=> bs!1527705 (= (= (head!12731 (t!378112 s!2326)) (head!12731 s!2326)) (= lambda!336406 lambda!336377))))

(declare-fun bs!1527706 () Bool)

(assert (= bs!1527706 (and d!1931542 d!1931364)))

(assert (=> bs!1527706 (= lambda!336406 lambda!336373)))

(declare-fun bs!1527707 () Bool)

(assert (= bs!1527707 (and d!1931542 d!1931292)))

(assert (=> bs!1527707 (= lambda!336406 lambda!336368)))

(declare-fun bs!1527708 () Bool)

(assert (= bs!1527708 (and d!1931542 d!1931386)))

(assert (=> bs!1527708 (= lambda!336406 lambda!336378)))

(declare-fun bs!1527709 () Bool)

(assert (= bs!1527709 (and d!1931542 b!6162172)))

(assert (=> bs!1527709 (= (= (head!12731 (t!378112 s!2326)) (h!70938 s!2326)) (= lambda!336406 lambda!336301))))

(assert (=> d!1931542 true))

(assert (=> d!1931542 (= (derivationStepZipper!2078 ((_ map or) lt!2336090 lt!2336092) (head!12731 (t!378112 s!2326))) (flatMap!1610 ((_ map or) lt!2336090 lt!2336092) lambda!336406))))

(declare-fun bs!1527710 () Bool)

(assert (= bs!1527710 d!1931542))

(declare-fun m!7001374 () Bool)

(assert (=> bs!1527710 m!7001374))

(assert (=> b!6162722 d!1931542))

(assert (=> b!6162722 d!1931282))

(assert (=> b!6162722 d!1931284))

(declare-fun e!3755130 () (InoxSet Context!10978))

(declare-fun b!6163546 () Bool)

(declare-fun call!513514 () (InoxSet Context!10978))

(assert (=> b!6163546 (= e!3755130 ((_ map or) call!513514 (derivationStepZipperUp!1279 (Context!10979 (t!378113 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343))))))))))) (h!70938 s!2326))))))

(declare-fun d!1931546 () Bool)

(declare-fun c!1110255 () Bool)

(declare-fun e!3755131 () Bool)

(assert (=> d!1931546 (= c!1110255 e!3755131)))

(declare-fun res!2552186 () Bool)

(assert (=> d!1931546 (=> (not res!2552186) (not e!3755131))))

(assert (=> d!1931546 (= res!2552186 ((_ is Cons!64491) (exprs!5989 (Context!10979 (t!378113 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))))))))

(assert (=> d!1931546 (= (derivationStepZipperUp!1279 (Context!10979 (t!378113 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))) (h!70938 s!2326)) e!3755130)))

(declare-fun b!6163547 () Bool)

(declare-fun e!3755132 () (InoxSet Context!10978))

(assert (=> b!6163547 (= e!3755130 e!3755132)))

(declare-fun c!1110254 () Bool)

(assert (=> b!6163547 (= c!1110254 ((_ is Cons!64491) (exprs!5989 (Context!10979 (t!378113 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))))))))

(declare-fun bm!513509 () Bool)

(assert (=> bm!513509 (= call!513514 (derivationStepZipperDown!1353 (h!70939 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))))) (Context!10979 (t!378113 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343))))))))))) (h!70938 s!2326)))))

(declare-fun b!6163548 () Bool)

(assert (=> b!6163548 (= e!3755132 ((as const (Array Context!10978 Bool)) false))))

(declare-fun b!6163549 () Bool)

(assert (=> b!6163549 (= e!3755132 call!513514)))

(declare-fun b!6163550 () Bool)

(assert (=> b!6163550 (= e!3755131 (nullable!6098 (h!70939 (exprs!5989 (Context!10979 (t!378113 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343))))))))))))))

(assert (= (and d!1931546 res!2552186) b!6163550))

(assert (= (and d!1931546 c!1110255) b!6163546))

(assert (= (and d!1931546 (not c!1110255)) b!6163547))

(assert (= (and b!6163547 c!1110254) b!6163549))

(assert (= (and b!6163547 (not c!1110254)) b!6163548))

(assert (= (or b!6163546 b!6163549) bm!513509))

(declare-fun m!7001376 () Bool)

(assert (=> b!6163546 m!7001376))

(declare-fun m!7001378 () Bool)

(assert (=> bm!513509 m!7001378))

(declare-fun m!7001380 () Bool)

(assert (=> b!6163550 m!7001380))

(assert (=> b!6162728 d!1931546))

(assert (=> d!1931212 d!1931210))

(assert (=> d!1931212 d!1931208))

(declare-fun d!1931552 () Bool)

(assert (=> d!1931552 (= (matchR!8288 r!7292 s!2326) (matchRSpec!3206 r!7292 s!2326))))

(assert (=> d!1931552 true))

(declare-fun _$88!4728 () Unit!157619)

(assert (=> d!1931552 (= (choose!45825 r!7292 s!2326) _$88!4728)))

(declare-fun bs!1527718 () Bool)

(assert (= bs!1527718 d!1931552))

(assert (=> bs!1527718 m!7000060))

(assert (=> bs!1527718 m!7000058))

(assert (=> d!1931212 d!1931552))

(assert (=> d!1931212 d!1931238))

(assert (=> d!1931188 d!1931190))

(assert (=> d!1931188 d!1931154))

(declare-fun e!3755139 () Bool)

(declare-fun d!1931556 () Bool)

(assert (=> d!1931556 (= (matchZipper!2117 ((_ map or) lt!2336090 lt!2336092) (t!378112 s!2326)) e!3755139)))

(declare-fun res!2552189 () Bool)

(assert (=> d!1931556 (=> res!2552189 e!3755139)))

(assert (=> d!1931556 (= res!2552189 (matchZipper!2117 lt!2336090 (t!378112 s!2326)))))

(assert (=> d!1931556 true))

(declare-fun _$48!1746 () Unit!157619)

(assert (=> d!1931556 (= (choose!45822 lt!2336090 lt!2336092 (t!378112 s!2326)) _$48!1746)))

(declare-fun b!6163561 () Bool)

(assert (=> b!6163561 (= e!3755139 (matchZipper!2117 lt!2336092 (t!378112 s!2326)))))

(assert (= (and d!1931556 (not res!2552189)) b!6163561))

(assert (=> d!1931556 m!7000140))

(assert (=> d!1931556 m!7000098))

(assert (=> b!6163561 m!7000044))

(assert (=> d!1931188 d!1931556))

(declare-fun bs!1527719 () Bool)

(declare-fun d!1931558 () Bool)

(assert (= bs!1527719 (and d!1931558 d!1931368)))

(declare-fun lambda!336408 () Int)

(assert (=> bs!1527719 (= lambda!336408 lambda!336374)))

(declare-fun bs!1527720 () Bool)

(assert (= bs!1527720 (and d!1931558 d!1931464)))

(assert (=> bs!1527720 (= lambda!336408 lambda!336394)))

(declare-fun bs!1527721 () Bool)

(assert (= bs!1527721 (and d!1931558 d!1931428)))

(assert (=> bs!1527721 (= lambda!336408 lambda!336383)))

(declare-fun bs!1527722 () Bool)

(assert (= bs!1527722 (and d!1931558 d!1931462)))

(assert (=> bs!1527722 (= lambda!336408 lambda!336393)))

(declare-fun bs!1527723 () Bool)

(assert (= bs!1527723 (and d!1931558 d!1931354)))

(assert (=> bs!1527723 (= lambda!336408 lambda!336372)))

(declare-fun bs!1527724 () Bool)

(assert (= bs!1527724 (and d!1931558 d!1931420)))

(assert (=> bs!1527724 (= lambda!336408 lambda!336382)))

(declare-fun bs!1527725 () Bool)

(assert (= bs!1527725 (and d!1931558 d!1931456)))

(assert (=> bs!1527725 (= lambda!336408 lambda!336392)))

(declare-fun bs!1527726 () Bool)

(assert (= bs!1527726 (and d!1931558 d!1931288)))

(assert (=> bs!1527726 (= lambda!336408 lambda!336367)))

(declare-fun bs!1527727 () Bool)

(assert (= bs!1527727 (and d!1931558 d!1931474)))

(assert (=> bs!1527727 (= lambda!336408 lambda!336396)))

(declare-fun bs!1527728 () Bool)

(assert (= bs!1527728 (and d!1931558 d!1931468)))

(assert (=> bs!1527728 (= lambda!336408 lambda!336395)))

(assert (=> d!1931558 (= (nullableZipper!1886 lt!2336107) (exists!2449 lt!2336107 lambda!336408))))

(declare-fun bs!1527729 () Bool)

(assert (= bs!1527729 d!1931558))

(declare-fun m!7001396 () Bool)

(assert (=> bs!1527729 m!7001396))

(assert (=> b!6162957 d!1931558))

(declare-fun d!1931560 () Bool)

(assert (=> d!1931560 (= (isEmpty!36461 (unfocusZipperList!1526 zl!343)) ((_ is Nil!64491) (unfocusZipperList!1526 zl!343)))))

(assert (=> b!6162916 d!1931560))

(declare-fun d!1931562 () Bool)

(assert (=> d!1931562 true))

(assert (=> d!1931562 true))

(declare-fun res!2552193 () Bool)

(assert (=> d!1931562 (= (choose!45819 lambda!336300) res!2552193)))

(assert (=> d!1931138 d!1931562))

(declare-fun d!1931566 () Bool)

(assert (=> d!1931566 (= (nullable!6098 (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))) (nullableFct!2062 (h!70939 (exprs!5989 (Context!10979 (Cons!64491 (h!70939 (exprs!5989 (h!70940 zl!343))) (t!378113 (exprs!5989 (h!70940 zl!343)))))))))))

(declare-fun bs!1527730 () Bool)

(assert (= bs!1527730 d!1931566))

(declare-fun m!7001404 () Bool)

(assert (=> bs!1527730 m!7001404))

(assert (=> b!6162732 d!1931566))

(declare-fun d!1931568 () Bool)

(assert (=> d!1931568 (= (nullable!6098 (reg!16434 r!7292)) (nullableFct!2062 (reg!16434 r!7292)))))

(declare-fun bs!1527731 () Bool)

(assert (= bs!1527731 d!1931568))

(declare-fun m!7001406 () Bool)

(assert (=> bs!1527731 m!7001406))

(assert (=> b!6162955 d!1931568))

(declare-fun d!1931570 () Bool)

(assert (=> d!1931570 (= ($colon$colon!1982 (exprs!5989 lt!2336120) (ite (or c!1110060 c!1110061) (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (regOne!32723 (regOne!32722 r!7292)))) (Cons!64491 (ite (or c!1110060 c!1110061) (regTwo!32722 (regOne!32723 (regOne!32722 r!7292))) (regOne!32723 (regOne!32722 r!7292))) (exprs!5989 lt!2336120)))))

(assert (=> bm!513371 d!1931570))

(declare-fun d!1931572 () Bool)

(assert (=> d!1931572 true))

(assert (=> d!1931572 true))

(declare-fun res!2552194 () Bool)

(assert (=> d!1931572 (= (choose!45819 lambda!336299) res!2552194)))

(assert (=> d!1931140 d!1931572))

(assert (=> b!6162720 d!1931148))

(assert (=> bs!1527466 d!1931202))

(declare-fun d!1931574 () Bool)

(assert (=> d!1931574 (= ($colon$colon!1982 (exprs!5989 lt!2336120) (ite (or c!1110055 c!1110056) (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (regTwo!32723 (regOne!32722 r!7292)))) (Cons!64491 (ite (or c!1110055 c!1110056) (regTwo!32722 (regTwo!32723 (regOne!32722 r!7292))) (regTwo!32723 (regOne!32722 r!7292))) (exprs!5989 lt!2336120)))))

(assert (=> bm!513365 d!1931574))

(assert (=> b!6162846 d!1931318))

(declare-fun b!6163570 () Bool)

(declare-fun e!3755143 () Bool)

(declare-fun tp!1720732 () Bool)

(declare-fun tp!1720734 () Bool)

(assert (=> b!6163570 (= e!3755143 (and tp!1720732 tp!1720734))))

(assert (=> b!6162978 (= tp!1720673 e!3755143)))

(declare-fun b!6163569 () Bool)

(declare-fun tp!1720735 () Bool)

(assert (=> b!6163569 (= e!3755143 tp!1720735)))

(declare-fun b!6163567 () Bool)

(assert (=> b!6163567 (= e!3755143 tp_is_empty!41463)))

(declare-fun b!6163568 () Bool)

(declare-fun tp!1720733 () Bool)

(declare-fun tp!1720731 () Bool)

(assert (=> b!6163568 (= e!3755143 (and tp!1720733 tp!1720731))))

(assert (= (and b!6162978 ((_ is ElementMatch!16105) (regOne!32723 (regTwo!32722 r!7292)))) b!6163567))

(assert (= (and b!6162978 ((_ is Concat!24950) (regOne!32723 (regTwo!32722 r!7292)))) b!6163568))

(assert (= (and b!6162978 ((_ is Star!16105) (regOne!32723 (regTwo!32722 r!7292)))) b!6163569))

(assert (= (and b!6162978 ((_ is Union!16105) (regOne!32723 (regTwo!32722 r!7292)))) b!6163570))

(declare-fun b!6163574 () Bool)

(declare-fun e!3755148 () Bool)

(declare-fun tp!1720737 () Bool)

(declare-fun tp!1720739 () Bool)

(assert (=> b!6163574 (= e!3755148 (and tp!1720737 tp!1720739))))

(assert (=> b!6162978 (= tp!1720675 e!3755148)))

(declare-fun b!6163573 () Bool)

(declare-fun tp!1720740 () Bool)

(assert (=> b!6163573 (= e!3755148 tp!1720740)))

(declare-fun b!6163571 () Bool)

(assert (=> b!6163571 (= e!3755148 tp_is_empty!41463)))

(declare-fun b!6163572 () Bool)

(declare-fun tp!1720738 () Bool)

(declare-fun tp!1720736 () Bool)

(assert (=> b!6163572 (= e!3755148 (and tp!1720738 tp!1720736))))

(assert (= (and b!6162978 ((_ is ElementMatch!16105) (regTwo!32723 (regTwo!32722 r!7292)))) b!6163571))

(assert (= (and b!6162978 ((_ is Concat!24950) (regTwo!32723 (regTwo!32722 r!7292)))) b!6163572))

(assert (= (and b!6162978 ((_ is Star!16105) (regTwo!32723 (regTwo!32722 r!7292)))) b!6163573))

(assert (= (and b!6162978 ((_ is Union!16105) (regTwo!32723 (regTwo!32722 r!7292)))) b!6163574))

(declare-fun b!6163592 () Bool)

(declare-fun e!3755152 () Bool)

(declare-fun tp!1720742 () Bool)

(declare-fun tp!1720744 () Bool)

(assert (=> b!6163592 (= e!3755152 (and tp!1720742 tp!1720744))))

(assert (=> b!6162977 (= tp!1720676 e!3755152)))

(declare-fun b!6163591 () Bool)

(declare-fun tp!1720745 () Bool)

(assert (=> b!6163591 (= e!3755152 tp!1720745)))

(declare-fun b!6163589 () Bool)

(assert (=> b!6163589 (= e!3755152 tp_is_empty!41463)))

(declare-fun b!6163590 () Bool)

(declare-fun tp!1720743 () Bool)

(declare-fun tp!1720741 () Bool)

(assert (=> b!6163590 (= e!3755152 (and tp!1720743 tp!1720741))))

(assert (= (and b!6162977 ((_ is ElementMatch!16105) (reg!16434 (regTwo!32722 r!7292)))) b!6163589))

(assert (= (and b!6162977 ((_ is Concat!24950) (reg!16434 (regTwo!32722 r!7292)))) b!6163590))

(assert (= (and b!6162977 ((_ is Star!16105) (reg!16434 (regTwo!32722 r!7292)))) b!6163591))

(assert (= (and b!6162977 ((_ is Union!16105) (reg!16434 (regTwo!32722 r!7292)))) b!6163592))

(declare-fun b!6163596 () Bool)

(declare-fun e!3755153 () Bool)

(declare-fun tp!1720747 () Bool)

(declare-fun tp!1720749 () Bool)

(assert (=> b!6163596 (= e!3755153 (and tp!1720747 tp!1720749))))

(assert (=> b!6162976 (= tp!1720674 e!3755153)))

(declare-fun b!6163595 () Bool)

(declare-fun tp!1720750 () Bool)

(assert (=> b!6163595 (= e!3755153 tp!1720750)))

(declare-fun b!6163593 () Bool)

(assert (=> b!6163593 (= e!3755153 tp_is_empty!41463)))

(declare-fun b!6163594 () Bool)

(declare-fun tp!1720748 () Bool)

(declare-fun tp!1720746 () Bool)

(assert (=> b!6163594 (= e!3755153 (and tp!1720748 tp!1720746))))

(assert (= (and b!6162976 ((_ is ElementMatch!16105) (regOne!32722 (regTwo!32722 r!7292)))) b!6163593))

(assert (= (and b!6162976 ((_ is Concat!24950) (regOne!32722 (regTwo!32722 r!7292)))) b!6163594))

(assert (= (and b!6162976 ((_ is Star!16105) (regOne!32722 (regTwo!32722 r!7292)))) b!6163595))

(assert (= (and b!6162976 ((_ is Union!16105) (regOne!32722 (regTwo!32722 r!7292)))) b!6163596))

(declare-fun b!6163600 () Bool)

(declare-fun e!3755154 () Bool)

(declare-fun tp!1720752 () Bool)

(declare-fun tp!1720754 () Bool)

(assert (=> b!6163600 (= e!3755154 (and tp!1720752 tp!1720754))))

(assert (=> b!6162976 (= tp!1720672 e!3755154)))

(declare-fun b!6163599 () Bool)

(declare-fun tp!1720755 () Bool)

(assert (=> b!6163599 (= e!3755154 tp!1720755)))

(declare-fun b!6163597 () Bool)

(assert (=> b!6163597 (= e!3755154 tp_is_empty!41463)))

(declare-fun b!6163598 () Bool)

(declare-fun tp!1720753 () Bool)

(declare-fun tp!1720751 () Bool)

(assert (=> b!6163598 (= e!3755154 (and tp!1720753 tp!1720751))))

(assert (= (and b!6162976 ((_ is ElementMatch!16105) (regTwo!32722 (regTwo!32722 r!7292)))) b!6163597))

(assert (= (and b!6162976 ((_ is Concat!24950) (regTwo!32722 (regTwo!32722 r!7292)))) b!6163598))

(assert (= (and b!6162976 ((_ is Star!16105) (regTwo!32722 (regTwo!32722 r!7292)))) b!6163599))

(assert (= (and b!6162976 ((_ is Union!16105) (regTwo!32722 (regTwo!32722 r!7292)))) b!6163600))

(declare-fun b!6163601 () Bool)

(declare-fun e!3755155 () Bool)

(declare-fun tp!1720756 () Bool)

(declare-fun tp!1720757 () Bool)

(assert (=> b!6163601 (= e!3755155 (and tp!1720756 tp!1720757))))

(assert (=> b!6163009 (= tp!1720711 e!3755155)))

(assert (= (and b!6163009 ((_ is Cons!64491) (exprs!5989 setElem!41772))) b!6163601))

(declare-fun b!6163603 () Bool)

(declare-fun e!3755157 () Bool)

(declare-fun tp!1720758 () Bool)

(assert (=> b!6163603 (= e!3755157 tp!1720758)))

(declare-fun e!3755156 () Bool)

(declare-fun b!6163602 () Bool)

(declare-fun tp!1720759 () Bool)

(assert (=> b!6163602 (= e!3755156 (and (inv!83509 (h!70940 (t!378114 (t!378114 zl!343)))) e!3755157 tp!1720759))))

(assert (=> b!6163002 (= tp!1720703 e!3755156)))

(assert (= b!6163602 b!6163603))

(assert (= (and b!6163002 ((_ is Cons!64492) (t!378114 (t!378114 zl!343)))) b!6163602))

(declare-fun m!7001414 () Bool)

(assert (=> b!6163602 m!7001414))

(declare-fun b!6163604 () Bool)

(declare-fun e!3755158 () Bool)

(declare-fun tp!1720760 () Bool)

(declare-fun tp!1720761 () Bool)

(assert (=> b!6163604 (= e!3755158 (and tp!1720760 tp!1720761))))

(assert (=> b!6163003 (= tp!1720702 e!3755158)))

(assert (= (and b!6163003 ((_ is Cons!64491) (exprs!5989 (h!70940 (t!378114 zl!343))))) b!6163604))

(declare-fun b!6163608 () Bool)

(declare-fun e!3755159 () Bool)

(declare-fun tp!1720763 () Bool)

(declare-fun tp!1720765 () Bool)

(assert (=> b!6163608 (= e!3755159 (and tp!1720763 tp!1720765))))

(assert (=> b!6162987 (= tp!1720684 e!3755159)))

(declare-fun b!6163607 () Bool)

(declare-fun tp!1720766 () Bool)

(assert (=> b!6163607 (= e!3755159 tp!1720766)))

(declare-fun b!6163605 () Bool)

(assert (=> b!6163605 (= e!3755159 tp_is_empty!41463)))

(declare-fun b!6163606 () Bool)

(declare-fun tp!1720764 () Bool)

(declare-fun tp!1720762 () Bool)

(assert (=> b!6163606 (= e!3755159 (and tp!1720764 tp!1720762))))

(assert (= (and b!6162987 ((_ is ElementMatch!16105) (regOne!32723 (regOne!32723 r!7292)))) b!6163605))

(assert (= (and b!6162987 ((_ is Concat!24950) (regOne!32723 (regOne!32723 r!7292)))) b!6163606))

(assert (= (and b!6162987 ((_ is Star!16105) (regOne!32723 (regOne!32723 r!7292)))) b!6163607))

(assert (= (and b!6162987 ((_ is Union!16105) (regOne!32723 (regOne!32723 r!7292)))) b!6163608))

(declare-fun b!6163612 () Bool)

(declare-fun e!3755160 () Bool)

(declare-fun tp!1720768 () Bool)

(declare-fun tp!1720770 () Bool)

(assert (=> b!6163612 (= e!3755160 (and tp!1720768 tp!1720770))))

(assert (=> b!6162987 (= tp!1720686 e!3755160)))

(declare-fun b!6163611 () Bool)

(declare-fun tp!1720771 () Bool)

(assert (=> b!6163611 (= e!3755160 tp!1720771)))

(declare-fun b!6163609 () Bool)

(assert (=> b!6163609 (= e!3755160 tp_is_empty!41463)))

(declare-fun b!6163610 () Bool)

(declare-fun tp!1720769 () Bool)

(declare-fun tp!1720767 () Bool)

(assert (=> b!6163610 (= e!3755160 (and tp!1720769 tp!1720767))))

(assert (= (and b!6162987 ((_ is ElementMatch!16105) (regTwo!32723 (regOne!32723 r!7292)))) b!6163609))

(assert (= (and b!6162987 ((_ is Concat!24950) (regTwo!32723 (regOne!32723 r!7292)))) b!6163610))

(assert (= (and b!6162987 ((_ is Star!16105) (regTwo!32723 (regOne!32723 r!7292)))) b!6163611))

(assert (= (and b!6162987 ((_ is Union!16105) (regTwo!32723 (regOne!32723 r!7292)))) b!6163612))

(declare-fun b!6163616 () Bool)

(declare-fun e!3755161 () Bool)

(declare-fun tp!1720773 () Bool)

(declare-fun tp!1720775 () Bool)

(assert (=> b!6163616 (= e!3755161 (and tp!1720773 tp!1720775))))

(assert (=> b!6162986 (= tp!1720687 e!3755161)))

(declare-fun b!6163615 () Bool)

(declare-fun tp!1720776 () Bool)

(assert (=> b!6163615 (= e!3755161 tp!1720776)))

(declare-fun b!6163613 () Bool)

(assert (=> b!6163613 (= e!3755161 tp_is_empty!41463)))

(declare-fun b!6163614 () Bool)

(declare-fun tp!1720774 () Bool)

(declare-fun tp!1720772 () Bool)

(assert (=> b!6163614 (= e!3755161 (and tp!1720774 tp!1720772))))

(assert (= (and b!6162986 ((_ is ElementMatch!16105) (reg!16434 (regOne!32723 r!7292)))) b!6163613))

(assert (= (and b!6162986 ((_ is Concat!24950) (reg!16434 (regOne!32723 r!7292)))) b!6163614))

(assert (= (and b!6162986 ((_ is Star!16105) (reg!16434 (regOne!32723 r!7292)))) b!6163615))

(assert (= (and b!6162986 ((_ is Union!16105) (reg!16434 (regOne!32723 r!7292)))) b!6163616))

(declare-fun condSetEmpty!41778 () Bool)

(assert (=> setNonEmpty!41772 (= condSetEmpty!41778 (= setRest!41772 ((as const (Array Context!10978 Bool)) false)))))

(declare-fun setRes!41778 () Bool)

(assert (=> setNonEmpty!41772 (= tp!1720710 setRes!41778)))

(declare-fun setIsEmpty!41778 () Bool)

(assert (=> setIsEmpty!41778 setRes!41778))

(declare-fun e!3755162 () Bool)

(declare-fun tp!1720777 () Bool)

(declare-fun setNonEmpty!41778 () Bool)

(declare-fun setElem!41778 () Context!10978)

(assert (=> setNonEmpty!41778 (= setRes!41778 (and tp!1720777 (inv!83509 setElem!41778) e!3755162))))

(declare-fun setRest!41778 () (InoxSet Context!10978))

(assert (=> setNonEmpty!41778 (= setRest!41772 ((_ map or) (store ((as const (Array Context!10978 Bool)) false) setElem!41778 true) setRest!41778))))

(declare-fun b!6163617 () Bool)

(declare-fun tp!1720778 () Bool)

(assert (=> b!6163617 (= e!3755162 tp!1720778)))

(assert (= (and setNonEmpty!41772 condSetEmpty!41778) setIsEmpty!41778))

(assert (= (and setNonEmpty!41772 (not condSetEmpty!41778)) setNonEmpty!41778))

(assert (= setNonEmpty!41778 b!6163617))

(declare-fun m!7001416 () Bool)

(assert (=> setNonEmpty!41778 m!7001416))

(declare-fun b!6163621 () Bool)

(declare-fun e!3755163 () Bool)

(declare-fun tp!1720780 () Bool)

(declare-fun tp!1720782 () Bool)

(assert (=> b!6163621 (= e!3755163 (and tp!1720780 tp!1720782))))

(assert (=> b!6162994 (= tp!1720697 e!3755163)))

(declare-fun b!6163620 () Bool)

(declare-fun tp!1720783 () Bool)

(assert (=> b!6163620 (= e!3755163 tp!1720783)))

(declare-fun b!6163618 () Bool)

(assert (=> b!6163618 (= e!3755163 tp_is_empty!41463)))

(declare-fun b!6163619 () Bool)

(declare-fun tp!1720781 () Bool)

(declare-fun tp!1720779 () Bool)

(assert (=> b!6163619 (= e!3755163 (and tp!1720781 tp!1720779))))

(assert (= (and b!6162994 ((_ is ElementMatch!16105) (reg!16434 (reg!16434 r!7292)))) b!6163618))

(assert (= (and b!6162994 ((_ is Concat!24950) (reg!16434 (reg!16434 r!7292)))) b!6163619))

(assert (= (and b!6162994 ((_ is Star!16105) (reg!16434 (reg!16434 r!7292)))) b!6163620))

(assert (= (and b!6162994 ((_ is Union!16105) (reg!16434 (reg!16434 r!7292)))) b!6163621))

(declare-fun b!6163625 () Bool)

(declare-fun e!3755164 () Bool)

(declare-fun tp!1720785 () Bool)

(declare-fun tp!1720787 () Bool)

(assert (=> b!6163625 (= e!3755164 (and tp!1720785 tp!1720787))))

(assert (=> b!6162995 (= tp!1720694 e!3755164)))

(declare-fun b!6163624 () Bool)

(declare-fun tp!1720788 () Bool)

(assert (=> b!6163624 (= e!3755164 tp!1720788)))

(declare-fun b!6163622 () Bool)

(assert (=> b!6163622 (= e!3755164 tp_is_empty!41463)))

(declare-fun b!6163623 () Bool)

(declare-fun tp!1720786 () Bool)

(declare-fun tp!1720784 () Bool)

(assert (=> b!6163623 (= e!3755164 (and tp!1720786 tp!1720784))))

(assert (= (and b!6162995 ((_ is ElementMatch!16105) (regOne!32723 (reg!16434 r!7292)))) b!6163622))

(assert (= (and b!6162995 ((_ is Concat!24950) (regOne!32723 (reg!16434 r!7292)))) b!6163623))

(assert (= (and b!6162995 ((_ is Star!16105) (regOne!32723 (reg!16434 r!7292)))) b!6163624))

(assert (= (and b!6162995 ((_ is Union!16105) (regOne!32723 (reg!16434 r!7292)))) b!6163625))

(declare-fun b!6163629 () Bool)

(declare-fun e!3755165 () Bool)

(declare-fun tp!1720790 () Bool)

(declare-fun tp!1720792 () Bool)

(assert (=> b!6163629 (= e!3755165 (and tp!1720790 tp!1720792))))

(assert (=> b!6162995 (= tp!1720696 e!3755165)))

(declare-fun b!6163628 () Bool)

(declare-fun tp!1720793 () Bool)

(assert (=> b!6163628 (= e!3755165 tp!1720793)))

(declare-fun b!6163626 () Bool)

(assert (=> b!6163626 (= e!3755165 tp_is_empty!41463)))

(declare-fun b!6163627 () Bool)

(declare-fun tp!1720791 () Bool)

(declare-fun tp!1720789 () Bool)

(assert (=> b!6163627 (= e!3755165 (and tp!1720791 tp!1720789))))

(assert (= (and b!6162995 ((_ is ElementMatch!16105) (regTwo!32723 (reg!16434 r!7292)))) b!6163626))

(assert (= (and b!6162995 ((_ is Concat!24950) (regTwo!32723 (reg!16434 r!7292)))) b!6163627))

(assert (= (and b!6162995 ((_ is Star!16105) (regTwo!32723 (reg!16434 r!7292)))) b!6163628))

(assert (= (and b!6162995 ((_ is Union!16105) (regTwo!32723 (reg!16434 r!7292)))) b!6163629))

(declare-fun b!6163633 () Bool)

(declare-fun e!3755166 () Bool)

(declare-fun tp!1720795 () Bool)

(declare-fun tp!1720797 () Bool)

(assert (=> b!6163633 (= e!3755166 (and tp!1720795 tp!1720797))))

(assert (=> b!6162985 (= tp!1720685 e!3755166)))

(declare-fun b!6163632 () Bool)

(declare-fun tp!1720798 () Bool)

(assert (=> b!6163632 (= e!3755166 tp!1720798)))

(declare-fun b!6163630 () Bool)

(assert (=> b!6163630 (= e!3755166 tp_is_empty!41463)))

(declare-fun b!6163631 () Bool)

(declare-fun tp!1720796 () Bool)

(declare-fun tp!1720794 () Bool)

(assert (=> b!6163631 (= e!3755166 (and tp!1720796 tp!1720794))))

(assert (= (and b!6162985 ((_ is ElementMatch!16105) (regOne!32722 (regOne!32723 r!7292)))) b!6163630))

(assert (= (and b!6162985 ((_ is Concat!24950) (regOne!32722 (regOne!32723 r!7292)))) b!6163631))

(assert (= (and b!6162985 ((_ is Star!16105) (regOne!32722 (regOne!32723 r!7292)))) b!6163632))

(assert (= (and b!6162985 ((_ is Union!16105) (regOne!32722 (regOne!32723 r!7292)))) b!6163633))

(declare-fun b!6163637 () Bool)

(declare-fun e!3755167 () Bool)

(declare-fun tp!1720800 () Bool)

(declare-fun tp!1720802 () Bool)

(assert (=> b!6163637 (= e!3755167 (and tp!1720800 tp!1720802))))

(assert (=> b!6162985 (= tp!1720683 e!3755167)))

(declare-fun b!6163636 () Bool)

(declare-fun tp!1720803 () Bool)

(assert (=> b!6163636 (= e!3755167 tp!1720803)))

(declare-fun b!6163634 () Bool)

(assert (=> b!6163634 (= e!3755167 tp_is_empty!41463)))

(declare-fun b!6163635 () Bool)

(declare-fun tp!1720801 () Bool)

(declare-fun tp!1720799 () Bool)

(assert (=> b!6163635 (= e!3755167 (and tp!1720801 tp!1720799))))

(assert (= (and b!6162985 ((_ is ElementMatch!16105) (regTwo!32722 (regOne!32723 r!7292)))) b!6163634))

(assert (= (and b!6162985 ((_ is Concat!24950) (regTwo!32722 (regOne!32723 r!7292)))) b!6163635))

(assert (= (and b!6162985 ((_ is Star!16105) (regTwo!32722 (regOne!32723 r!7292)))) b!6163636))

(assert (= (and b!6162985 ((_ is Union!16105) (regTwo!32722 (regOne!32723 r!7292)))) b!6163637))

(declare-fun b!6163641 () Bool)

(declare-fun e!3755168 () Bool)

(declare-fun tp!1720805 () Bool)

(declare-fun tp!1720807 () Bool)

(assert (=> b!6163641 (= e!3755168 (and tp!1720805 tp!1720807))))

(assert (=> b!6162993 (= tp!1720695 e!3755168)))

(declare-fun b!6163640 () Bool)

(declare-fun tp!1720808 () Bool)

(assert (=> b!6163640 (= e!3755168 tp!1720808)))

(declare-fun b!6163638 () Bool)

(assert (=> b!6163638 (= e!3755168 tp_is_empty!41463)))

(declare-fun b!6163639 () Bool)

(declare-fun tp!1720806 () Bool)

(declare-fun tp!1720804 () Bool)

(assert (=> b!6163639 (= e!3755168 (and tp!1720806 tp!1720804))))

(assert (= (and b!6162993 ((_ is ElementMatch!16105) (regOne!32722 (reg!16434 r!7292)))) b!6163638))

(assert (= (and b!6162993 ((_ is Concat!24950) (regOne!32722 (reg!16434 r!7292)))) b!6163639))

(assert (= (and b!6162993 ((_ is Star!16105) (regOne!32722 (reg!16434 r!7292)))) b!6163640))

(assert (= (and b!6162993 ((_ is Union!16105) (regOne!32722 (reg!16434 r!7292)))) b!6163641))

(declare-fun b!6163645 () Bool)

(declare-fun e!3755169 () Bool)

(declare-fun tp!1720810 () Bool)

(declare-fun tp!1720812 () Bool)

(assert (=> b!6163645 (= e!3755169 (and tp!1720810 tp!1720812))))

(assert (=> b!6162993 (= tp!1720693 e!3755169)))

(declare-fun b!6163644 () Bool)

(declare-fun tp!1720813 () Bool)

(assert (=> b!6163644 (= e!3755169 tp!1720813)))

(declare-fun b!6163642 () Bool)

(assert (=> b!6163642 (= e!3755169 tp_is_empty!41463)))

(declare-fun b!6163643 () Bool)

(declare-fun tp!1720811 () Bool)

(declare-fun tp!1720809 () Bool)

(assert (=> b!6163643 (= e!3755169 (and tp!1720811 tp!1720809))))

(assert (= (and b!6162993 ((_ is ElementMatch!16105) (regTwo!32722 (reg!16434 r!7292)))) b!6163642))

(assert (= (and b!6162993 ((_ is Concat!24950) (regTwo!32722 (reg!16434 r!7292)))) b!6163643))

(assert (= (and b!6162993 ((_ is Star!16105) (regTwo!32722 (reg!16434 r!7292)))) b!6163644))

(assert (= (and b!6162993 ((_ is Union!16105) (regTwo!32722 (reg!16434 r!7292)))) b!6163645))

(declare-fun b!6163646 () Bool)

(declare-fun e!3755170 () Bool)

(declare-fun tp!1720814 () Bool)

(assert (=> b!6163646 (= e!3755170 (and tp_is_empty!41463 tp!1720814))))

(assert (=> b!6163014 (= tp!1720714 e!3755170)))

(assert (= (and b!6163014 ((_ is Cons!64490) (t!378112 (t!378112 s!2326)))) b!6163646))

(declare-fun b!6163650 () Bool)

(declare-fun e!3755171 () Bool)

(declare-fun tp!1720816 () Bool)

(declare-fun tp!1720818 () Bool)

(assert (=> b!6163650 (= e!3755171 (and tp!1720816 tp!1720818))))

(assert (=> b!6162974 (= tp!1720668 e!3755171)))

(declare-fun b!6163649 () Bool)

(declare-fun tp!1720819 () Bool)

(assert (=> b!6163649 (= e!3755171 tp!1720819)))

(declare-fun b!6163647 () Bool)

(assert (=> b!6163647 (= e!3755171 tp_is_empty!41463)))

(declare-fun b!6163648 () Bool)

(declare-fun tp!1720817 () Bool)

(declare-fun tp!1720815 () Bool)

(assert (=> b!6163648 (= e!3755171 (and tp!1720817 tp!1720815))))

(assert (= (and b!6162974 ((_ is ElementMatch!16105) (regOne!32723 (regOne!32722 r!7292)))) b!6163647))

(assert (= (and b!6162974 ((_ is Concat!24950) (regOne!32723 (regOne!32722 r!7292)))) b!6163648))

(assert (= (and b!6162974 ((_ is Star!16105) (regOne!32723 (regOne!32722 r!7292)))) b!6163649))

(assert (= (and b!6162974 ((_ is Union!16105) (regOne!32723 (regOne!32722 r!7292)))) b!6163650))

(declare-fun b!6163654 () Bool)

(declare-fun e!3755172 () Bool)

(declare-fun tp!1720821 () Bool)

(declare-fun tp!1720823 () Bool)

(assert (=> b!6163654 (= e!3755172 (and tp!1720821 tp!1720823))))

(assert (=> b!6162974 (= tp!1720670 e!3755172)))

(declare-fun b!6163653 () Bool)

(declare-fun tp!1720824 () Bool)

(assert (=> b!6163653 (= e!3755172 tp!1720824)))

(declare-fun b!6163651 () Bool)

(assert (=> b!6163651 (= e!3755172 tp_is_empty!41463)))

(declare-fun b!6163652 () Bool)

(declare-fun tp!1720822 () Bool)

(declare-fun tp!1720820 () Bool)

(assert (=> b!6163652 (= e!3755172 (and tp!1720822 tp!1720820))))

(assert (= (and b!6162974 ((_ is ElementMatch!16105) (regTwo!32723 (regOne!32722 r!7292)))) b!6163651))

(assert (= (and b!6162974 ((_ is Concat!24950) (regTwo!32723 (regOne!32722 r!7292)))) b!6163652))

(assert (= (and b!6162974 ((_ is Star!16105) (regTwo!32723 (regOne!32722 r!7292)))) b!6163653))

(assert (= (and b!6162974 ((_ is Union!16105) (regTwo!32723 (regOne!32722 r!7292)))) b!6163654))

(declare-fun b!6163658 () Bool)

(declare-fun e!3755173 () Bool)

(declare-fun tp!1720826 () Bool)

(declare-fun tp!1720828 () Bool)

(assert (=> b!6163658 (= e!3755173 (and tp!1720826 tp!1720828))))

(assert (=> b!6162973 (= tp!1720671 e!3755173)))

(declare-fun b!6163657 () Bool)

(declare-fun tp!1720829 () Bool)

(assert (=> b!6163657 (= e!3755173 tp!1720829)))

(declare-fun b!6163655 () Bool)

(assert (=> b!6163655 (= e!3755173 tp_is_empty!41463)))

(declare-fun b!6163656 () Bool)

(declare-fun tp!1720827 () Bool)

(declare-fun tp!1720825 () Bool)

(assert (=> b!6163656 (= e!3755173 (and tp!1720827 tp!1720825))))

(assert (= (and b!6162973 ((_ is ElementMatch!16105) (reg!16434 (regOne!32722 r!7292)))) b!6163655))

(assert (= (and b!6162973 ((_ is Concat!24950) (reg!16434 (regOne!32722 r!7292)))) b!6163656))

(assert (= (and b!6162973 ((_ is Star!16105) (reg!16434 (regOne!32722 r!7292)))) b!6163657))

(assert (= (and b!6162973 ((_ is Union!16105) (reg!16434 (regOne!32722 r!7292)))) b!6163658))

(declare-fun b!6163662 () Bool)

(declare-fun e!3755174 () Bool)

(declare-fun tp!1720831 () Bool)

(declare-fun tp!1720833 () Bool)

(assert (=> b!6163662 (= e!3755174 (and tp!1720831 tp!1720833))))

(assert (=> b!6162972 (= tp!1720669 e!3755174)))

(declare-fun b!6163661 () Bool)

(declare-fun tp!1720834 () Bool)

(assert (=> b!6163661 (= e!3755174 tp!1720834)))

(declare-fun b!6163659 () Bool)

(assert (=> b!6163659 (= e!3755174 tp_is_empty!41463)))

(declare-fun b!6163660 () Bool)

(declare-fun tp!1720832 () Bool)

(declare-fun tp!1720830 () Bool)

(assert (=> b!6163660 (= e!3755174 (and tp!1720832 tp!1720830))))

(assert (= (and b!6162972 ((_ is ElementMatch!16105) (regOne!32722 (regOne!32722 r!7292)))) b!6163659))

(assert (= (and b!6162972 ((_ is Concat!24950) (regOne!32722 (regOne!32722 r!7292)))) b!6163660))

(assert (= (and b!6162972 ((_ is Star!16105) (regOne!32722 (regOne!32722 r!7292)))) b!6163661))

(assert (= (and b!6162972 ((_ is Union!16105) (regOne!32722 (regOne!32722 r!7292)))) b!6163662))

(declare-fun b!6163666 () Bool)

(declare-fun e!3755175 () Bool)

(declare-fun tp!1720836 () Bool)

(declare-fun tp!1720838 () Bool)

(assert (=> b!6163666 (= e!3755175 (and tp!1720836 tp!1720838))))

(assert (=> b!6162972 (= tp!1720667 e!3755175)))

(declare-fun b!6163665 () Bool)

(declare-fun tp!1720839 () Bool)

(assert (=> b!6163665 (= e!3755175 tp!1720839)))

(declare-fun b!6163663 () Bool)

(assert (=> b!6163663 (= e!3755175 tp_is_empty!41463)))

(declare-fun b!6163664 () Bool)

(declare-fun tp!1720837 () Bool)

(declare-fun tp!1720835 () Bool)

(assert (=> b!6163664 (= e!3755175 (and tp!1720837 tp!1720835))))

(assert (= (and b!6162972 ((_ is ElementMatch!16105) (regTwo!32722 (regOne!32722 r!7292)))) b!6163663))

(assert (= (and b!6162972 ((_ is Concat!24950) (regTwo!32722 (regOne!32722 r!7292)))) b!6163664))

(assert (= (and b!6162972 ((_ is Star!16105) (regTwo!32722 (regOne!32722 r!7292)))) b!6163665))

(assert (= (and b!6162972 ((_ is Union!16105) (regTwo!32722 (regOne!32722 r!7292)))) b!6163666))

(declare-fun b!6163670 () Bool)

(declare-fun e!3755176 () Bool)

(declare-fun tp!1720841 () Bool)

(declare-fun tp!1720843 () Bool)

(assert (=> b!6163670 (= e!3755176 (and tp!1720841 tp!1720843))))

(assert (=> b!6162983 (= tp!1720681 e!3755176)))

(declare-fun b!6163669 () Bool)

(declare-fun tp!1720844 () Bool)

(assert (=> b!6163669 (= e!3755176 tp!1720844)))

(declare-fun b!6163667 () Bool)

(assert (=> b!6163667 (= e!3755176 tp_is_empty!41463)))

(declare-fun b!6163668 () Bool)

(declare-fun tp!1720842 () Bool)

(declare-fun tp!1720840 () Bool)

(assert (=> b!6163668 (= e!3755176 (and tp!1720842 tp!1720840))))

(assert (= (and b!6162983 ((_ is ElementMatch!16105) (h!70939 (exprs!5989 setElem!41766)))) b!6163667))

(assert (= (and b!6162983 ((_ is Concat!24950) (h!70939 (exprs!5989 setElem!41766)))) b!6163668))

(assert (= (and b!6162983 ((_ is Star!16105) (h!70939 (exprs!5989 setElem!41766)))) b!6163669))

(assert (= (and b!6162983 ((_ is Union!16105) (h!70939 (exprs!5989 setElem!41766)))) b!6163670))

(declare-fun b!6163671 () Bool)

(declare-fun e!3755177 () Bool)

(declare-fun tp!1720845 () Bool)

(declare-fun tp!1720846 () Bool)

(assert (=> b!6163671 (= e!3755177 (and tp!1720845 tp!1720846))))

(assert (=> b!6162983 (= tp!1720682 e!3755177)))

(assert (= (and b!6162983 ((_ is Cons!64491) (t!378113 (exprs!5989 setElem!41766)))) b!6163671))

(declare-fun b!6163675 () Bool)

(declare-fun e!3755178 () Bool)

(declare-fun tp!1720848 () Bool)

(declare-fun tp!1720850 () Bool)

(assert (=> b!6163675 (= e!3755178 (and tp!1720848 tp!1720850))))

(assert (=> b!6162991 (= tp!1720689 e!3755178)))

(declare-fun b!6163674 () Bool)

(declare-fun tp!1720851 () Bool)

(assert (=> b!6163674 (= e!3755178 tp!1720851)))

(declare-fun b!6163672 () Bool)

(assert (=> b!6163672 (= e!3755178 tp_is_empty!41463)))

(declare-fun b!6163673 () Bool)

(declare-fun tp!1720849 () Bool)

(declare-fun tp!1720847 () Bool)

(assert (=> b!6163673 (= e!3755178 (and tp!1720849 tp!1720847))))

(assert (= (and b!6162991 ((_ is ElementMatch!16105) (regOne!32723 (regTwo!32723 r!7292)))) b!6163672))

(assert (= (and b!6162991 ((_ is Concat!24950) (regOne!32723 (regTwo!32723 r!7292)))) b!6163673))

(assert (= (and b!6162991 ((_ is Star!16105) (regOne!32723 (regTwo!32723 r!7292)))) b!6163674))

(assert (= (and b!6162991 ((_ is Union!16105) (regOne!32723 (regTwo!32723 r!7292)))) b!6163675))

(declare-fun b!6163679 () Bool)

(declare-fun e!3755179 () Bool)

(declare-fun tp!1720853 () Bool)

(declare-fun tp!1720855 () Bool)

(assert (=> b!6163679 (= e!3755179 (and tp!1720853 tp!1720855))))

(assert (=> b!6162991 (= tp!1720691 e!3755179)))

(declare-fun b!6163678 () Bool)

(declare-fun tp!1720856 () Bool)

(assert (=> b!6163678 (= e!3755179 tp!1720856)))

(declare-fun b!6163676 () Bool)

(assert (=> b!6163676 (= e!3755179 tp_is_empty!41463)))

(declare-fun b!6163677 () Bool)

(declare-fun tp!1720854 () Bool)

(declare-fun tp!1720852 () Bool)

(assert (=> b!6163677 (= e!3755179 (and tp!1720854 tp!1720852))))

(assert (= (and b!6162991 ((_ is ElementMatch!16105) (regTwo!32723 (regTwo!32723 r!7292)))) b!6163676))

(assert (= (and b!6162991 ((_ is Concat!24950) (regTwo!32723 (regTwo!32723 r!7292)))) b!6163677))

(assert (= (and b!6162991 ((_ is Star!16105) (regTwo!32723 (regTwo!32723 r!7292)))) b!6163678))

(assert (= (and b!6162991 ((_ is Union!16105) (regTwo!32723 (regTwo!32723 r!7292)))) b!6163679))

(declare-fun b!6163683 () Bool)

(declare-fun e!3755180 () Bool)

(declare-fun tp!1720858 () Bool)

(declare-fun tp!1720860 () Bool)

(assert (=> b!6163683 (= e!3755180 (and tp!1720858 tp!1720860))))

(assert (=> b!6162990 (= tp!1720692 e!3755180)))

(declare-fun b!6163682 () Bool)

(declare-fun tp!1720861 () Bool)

(assert (=> b!6163682 (= e!3755180 tp!1720861)))

(declare-fun b!6163680 () Bool)

(assert (=> b!6163680 (= e!3755180 tp_is_empty!41463)))

(declare-fun b!6163681 () Bool)

(declare-fun tp!1720859 () Bool)

(declare-fun tp!1720857 () Bool)

(assert (=> b!6163681 (= e!3755180 (and tp!1720859 tp!1720857))))

(assert (= (and b!6162990 ((_ is ElementMatch!16105) (reg!16434 (regTwo!32723 r!7292)))) b!6163680))

(assert (= (and b!6162990 ((_ is Concat!24950) (reg!16434 (regTwo!32723 r!7292)))) b!6163681))

(assert (= (and b!6162990 ((_ is Star!16105) (reg!16434 (regTwo!32723 r!7292)))) b!6163682))

(assert (= (and b!6162990 ((_ is Union!16105) (reg!16434 (regTwo!32723 r!7292)))) b!6163683))

(declare-fun b!6163687 () Bool)

(declare-fun e!3755181 () Bool)

(declare-fun tp!1720863 () Bool)

(declare-fun tp!1720865 () Bool)

(assert (=> b!6163687 (= e!3755181 (and tp!1720863 tp!1720865))))

(assert (=> b!6163004 (= tp!1720704 e!3755181)))

(declare-fun b!6163686 () Bool)

(declare-fun tp!1720866 () Bool)

(assert (=> b!6163686 (= e!3755181 tp!1720866)))

(declare-fun b!6163684 () Bool)

(assert (=> b!6163684 (= e!3755181 tp_is_empty!41463)))

(declare-fun b!6163685 () Bool)

(declare-fun tp!1720864 () Bool)

(declare-fun tp!1720862 () Bool)

(assert (=> b!6163685 (= e!3755181 (and tp!1720864 tp!1720862))))

(assert (= (and b!6163004 ((_ is ElementMatch!16105) (h!70939 (exprs!5989 (h!70940 zl!343))))) b!6163684))

(assert (= (and b!6163004 ((_ is Concat!24950) (h!70939 (exprs!5989 (h!70940 zl!343))))) b!6163685))

(assert (= (and b!6163004 ((_ is Star!16105) (h!70939 (exprs!5989 (h!70940 zl!343))))) b!6163686))

(assert (= (and b!6163004 ((_ is Union!16105) (h!70939 (exprs!5989 (h!70940 zl!343))))) b!6163687))

(declare-fun b!6163688 () Bool)

(declare-fun e!3755182 () Bool)

(declare-fun tp!1720867 () Bool)

(declare-fun tp!1720868 () Bool)

(assert (=> b!6163688 (= e!3755182 (and tp!1720867 tp!1720868))))

(assert (=> b!6163004 (= tp!1720705 e!3755182)))

(assert (= (and b!6163004 ((_ is Cons!64491) (t!378113 (exprs!5989 (h!70940 zl!343))))) b!6163688))

(declare-fun b!6163692 () Bool)

(declare-fun e!3755183 () Bool)

(declare-fun tp!1720870 () Bool)

(declare-fun tp!1720872 () Bool)

(assert (=> b!6163692 (= e!3755183 (and tp!1720870 tp!1720872))))

(assert (=> b!6162989 (= tp!1720690 e!3755183)))

(declare-fun b!6163691 () Bool)

(declare-fun tp!1720873 () Bool)

(assert (=> b!6163691 (= e!3755183 tp!1720873)))

(declare-fun b!6163689 () Bool)

(assert (=> b!6163689 (= e!3755183 tp_is_empty!41463)))

(declare-fun b!6163690 () Bool)

(declare-fun tp!1720871 () Bool)

(declare-fun tp!1720869 () Bool)

(assert (=> b!6163690 (= e!3755183 (and tp!1720871 tp!1720869))))

(assert (= (and b!6162989 ((_ is ElementMatch!16105) (regOne!32722 (regTwo!32723 r!7292)))) b!6163689))

(assert (= (and b!6162989 ((_ is Concat!24950) (regOne!32722 (regTwo!32723 r!7292)))) b!6163690))

(assert (= (and b!6162989 ((_ is Star!16105) (regOne!32722 (regTwo!32723 r!7292)))) b!6163691))

(assert (= (and b!6162989 ((_ is Union!16105) (regOne!32722 (regTwo!32723 r!7292)))) b!6163692))

(declare-fun b!6163696 () Bool)

(declare-fun e!3755184 () Bool)

(declare-fun tp!1720875 () Bool)

(declare-fun tp!1720877 () Bool)

(assert (=> b!6163696 (= e!3755184 (and tp!1720875 tp!1720877))))

(assert (=> b!6162989 (= tp!1720688 e!3755184)))

(declare-fun b!6163695 () Bool)

(declare-fun tp!1720878 () Bool)

(assert (=> b!6163695 (= e!3755184 tp!1720878)))

(declare-fun b!6163693 () Bool)

(assert (=> b!6163693 (= e!3755184 tp_is_empty!41463)))

(declare-fun b!6163694 () Bool)

(declare-fun tp!1720876 () Bool)

(declare-fun tp!1720874 () Bool)

(assert (=> b!6163694 (= e!3755184 (and tp!1720876 tp!1720874))))

(assert (= (and b!6162989 ((_ is ElementMatch!16105) (regTwo!32722 (regTwo!32723 r!7292)))) b!6163693))

(assert (= (and b!6162989 ((_ is Concat!24950) (regTwo!32722 (regTwo!32723 r!7292)))) b!6163694))

(assert (= (and b!6162989 ((_ is Star!16105) (regTwo!32722 (regTwo!32723 r!7292)))) b!6163695))

(assert (= (and b!6162989 ((_ is Union!16105) (regTwo!32722 (regTwo!32723 r!7292)))) b!6163696))

(declare-fun b_lambda!234631 () Bool)

(assert (= b_lambda!234617 (or d!1931216 b_lambda!234631)))

(declare-fun bs!1527732 () Bool)

(declare-fun d!1931582 () Bool)

(assert (= bs!1527732 (and d!1931582 d!1931216)))

(assert (=> bs!1527732 (= (dynLambda!25430 lambda!336351 (h!70939 (exprs!5989 setElem!41766))) (validRegex!7841 (h!70939 (exprs!5989 setElem!41766))))))

(declare-fun m!7001432 () Bool)

(assert (=> bs!1527732 m!7001432))

(assert (=> b!6163202 d!1931582))

(declare-fun b_lambda!234633 () Bool)

(assert (= b_lambda!234619 (or d!1931232 b_lambda!234633)))

(declare-fun bs!1527733 () Bool)

(declare-fun d!1931584 () Bool)

(assert (= bs!1527733 (and d!1931584 d!1931232)))

(assert (=> bs!1527733 (= (dynLambda!25430 lambda!336355 (h!70939 (unfocusZipperList!1526 zl!343))) (validRegex!7841 (h!70939 (unfocusZipperList!1526 zl!343))))))

(declare-fun m!7001434 () Bool)

(assert (=> bs!1527733 m!7001434))

(assert (=> b!6163224 d!1931584))

(declare-fun b_lambda!234635 () Bool)

(assert (= b_lambda!234621 (or b!6162172 b_lambda!234635)))

(assert (=> d!1931382 d!1931250))

(declare-fun b_lambda!234637 () Bool)

(assert (= b_lambda!234627 (or d!1931234 b_lambda!234637)))

(declare-fun bs!1527734 () Bool)

(declare-fun d!1931586 () Bool)

(assert (= bs!1527734 (and d!1931586 d!1931234)))

(assert (=> bs!1527734 (= (dynLambda!25430 lambda!336358 (h!70939 lt!2336223)) (validRegex!7841 (h!70939 lt!2336223)))))

(declare-fun m!7001436 () Bool)

(assert (=> bs!1527734 m!7001436))

(assert (=> b!6163500 d!1931586))

(declare-fun b_lambda!234639 () Bool)

(assert (= b_lambda!234625 (or b!6162172 b_lambda!234639)))

(assert (=> d!1931470 d!1931248))

(declare-fun b_lambda!234641 () Bool)

(assert (= b_lambda!234623 (or d!1931230 b_lambda!234641)))

(declare-fun bs!1527735 () Bool)

(declare-fun d!1931588 () Bool)

(assert (= bs!1527735 (and d!1931588 d!1931230)))

(assert (=> bs!1527735 (= (dynLambda!25430 lambda!336352 (h!70939 (exprs!5989 lt!2336096))) (validRegex!7841 (h!70939 (exprs!5989 lt!2336096))))))

(declare-fun m!7001438 () Bool)

(assert (=> bs!1527735 m!7001438))

(assert (=> b!6163266 d!1931588))

(declare-fun b_lambda!234643 () Bool)

(assert (= b_lambda!234629 (or d!1931186 b_lambda!234643)))

(declare-fun bs!1527736 () Bool)

(declare-fun d!1931590 () Bool)

(assert (= bs!1527736 (and d!1931590 d!1931186)))

(assert (=> bs!1527736 (= (dynLambda!25430 lambda!336342 (h!70939 (exprs!5989 (h!70940 zl!343)))) (validRegex!7841 (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(declare-fun m!7001440 () Bool)

(assert (=> bs!1527736 m!7001440))

(assert (=> b!6163511 d!1931590))

(declare-fun b_lambda!234645 () Bool)

(assert (= b_lambda!234615 (or b!6162172 b_lambda!234645)))

(assert (=> d!1931328 d!1931246))

(declare-fun b_lambda!234647 () Bool)

(assert (= b_lambda!234613 (or d!1931244 b_lambda!234647)))

(declare-fun bs!1527737 () Bool)

(declare-fun d!1931592 () Bool)

(assert (= bs!1527737 (and d!1931592 d!1931244)))

(assert (=> bs!1527737 (= (dynLambda!25430 lambda!336359 (h!70939 (exprs!5989 (h!70940 zl!343)))) (validRegex!7841 (h!70939 (exprs!5989 (h!70940 zl!343)))))))

(assert (=> bs!1527737 m!7001440))

(assert (=> b!6163140 d!1931592))

(check-sat (not b!6163040) (not d!1931496) (not bm!513461) (not b!6163594) (not bm!513393) (not b!6163569) (not d!1931286) (not b!6163677) (not b!6163214) (not d!1931440) (not bm!513477) (not d!1931310) (not b!6163350) (not b!6163349) (not b!6163434) (not d!1931474) (not bs!1527733) (not setNonEmpty!41778) (not b!6163654) (not bm!513424) (not bm!513497) (not d!1931384) (not b!6163352) (not b!6163545) (not bm!513509) (not b!6163501) (not d!1931422) (not b!6163334) (not b!6163561) (not d!1931386) (not b!6163188) (not bm!513434) (not d!1931528) (not b!6163178) (not bm!513453) (not b!6163444) (not b!6163068) (not b!6163653) (not b!6163026) (not b!6163657) (not b!6163611) (not b!6163682) (not b!6163656) (not d!1931288) (not b!6163238) (not b!6163398) (not bm!513505) (not b!6163544) (not b!6163184) (not b!6163615) (not b!6163695) tp_is_empty!41463 (not bm!513417) (not b!6163675) (not b!6163090) (not b!6163163) (not bm!513473) (not d!1931344) (not bm!513414) (not b!6163546) (not b!6163389) (not bm!513470) (not b!6163096) (not d!1931328) (not b!6163392) (not bm!513446) (not b!6163602) (not b!6163683) (not d!1931522) (not b!6163102) (not b!6163619) (not b!6163356) (not d!1931320) (not d!1931334) (not b!6163393) (not d!1931492) (not b!6163660) (not b!6163264) (not b!6163179) (not bs!1527737) (not b!6163287) (not b!6163439) (not b!6163692) (not b!6163509) (not b!6163174) (not b!6163025) (not bm!513479) (not b!6163061) (not b!6163185) (not bm!513447) (not b!6163059) (not b!6163600) (not b!6163103) (not b!6163531) (not d!1931394) (not b!6163590) (not d!1931444) (not b!6163095) (not b!6163446) (not bm!513411) (not b!6163637) (not b_lambda!234645) (not b!6163629) (not bm!513495) (not bm!513397) (not b!6163633) (not b_lambda!234607) (not b!6163199) (not b!6163688) (not d!1931374) (not bm!513474) (not b!6163627) (not d!1931552) (not b!6163171) (not d!1931508) (not d!1931378) (not b!6163674) (not d!1931338) (not b!6163598) (not d!1931468) (not bm!513431) (not b!6163222) (not b!6163607) (not b!6163225) (not b!6163623) (not b!6163276) (not b!6163347) (not b!6163072) (not b!6163671) (not b!6163694) (not b!6163512) (not b!6163610) (not b!6163198) (not b!6163237) (not b!6163085) (not b!6163267) (not bm!513481) (not b!6163632) (not d!1931436) (not b!6163614) (not bm!513456) (not d!1931516) (not b!6163200) (not d!1931462) (not b!6163201) (not b!6163290) (not bm!513430) (not b!6163639) (not b!6163250) (not b!6163644) (not b!6163484) (not b!6163278) (not b!6163696) (not b!6163187) (not b!6163175) (not d!1931390) (not bm!513421) (not bm!513460) (not bm!513396) (not b!6163338) (not b!6163083) (not b!6163288) (not b!6163543) (not b!6163541) (not d!1931556) (not b_lambda!234631) (not bm!513413) (not d!1931362) (not bm!513437) (not b!6163091) (not b!6163041) (not b_lambda!234637) (not d!1931426) (not b!6163625) (not b!6163649) (not b!6163203) (not d!1931490) (not b!6163641) (not b!6163423) (not bm!513478) (not b!6163067) (not b!6163242) (not b!6163435) (not d!1931404) (not b!6163063) (not b!6163665) (not b!6163482) (not b!6163292) (not d!1931322) (not b!6163592) (not b!6163251) (not bm!513384) (not b!6163282) (not b!6163690) (not b!6163283) (not b!6163351) (not b!6163158) (not bs!1527734) (not b!6163355) (not bm!513409) (not b!6163054) (not b!6163183) (not b!6163652) (not b_lambda!234647) (not b!6163159) (not b!6163542) (not bs!1527732) (not bm!513457) (not b!6163664) (not bm!513401) (not b!6163670) (not bm!513395) (not b!6163643) (not d!1931442) (not bm!513400) (not d!1931302) (not b!6163673) (not b!6163317) (not setNonEmpty!41775) (not d!1931364) (not bm!513386) (not b!6163084) (not b!6163249) (not bm!513482) (not d!1931292) (not b!6163443) (not bm!513498) (not b!6163410) (not b!6163686) (not b!6163343) (not setNonEmpty!41777) (not d!1931420) (not d!1931424) (not b!6163648) (not bm!513419) (not b!6163621) (not b!6163318) (not bm!513471) (not b!6163049) (not d!1931326) (not b!6163650) (not b!6163186) (not bm!513464) (not d!1931470) (not b!6163244) (not d!1931278) (not d!1931382) (not b!6163391) (not b_lambda!234635) (not b!6163411) (not d!1931332) (not b!6163100) (not d!1931566) (not b!6163361) (not bm!513469) (not b!6163620) (not b!6163345) (not bm!513425) (not b!6163438) (not b!6163606) (not b!6163636) (not b!6163359) (not b!6163568) (not bm!513410) (not b!6163098) (not b!6163243) (not b!6163272) (not bm!513485) (not b!6163448) (not d!1931448) (not b!6163662) (not b!6163196) (not b!6163604) (not b!6163053) (not b!6163570) (not bm!513392) (not b_lambda!234633) (not b!6163573) (not bm!513418) (not b!6163628) (not d!1931558) (not b_lambda!234639) (not d!1931368) (not setNonEmpty!41776) (not bm!513500) (not b!6163195) (not d!1931342) (not bm!513390) (not b!6163141) (not b!6163252) (not d!1931340) (not d!1931264) (not b!6163394) (not d!1931428) (not b!6163241) (not d!1931290) (not bm!513428) (not b!6163669) (not b_lambda!234609) (not d!1931520) (not b!6163550) (not b!6163666) (not bm!513422) (not bm!513404) (not bm!513440) (not b!6163608) (not b!6163333) (not bm!513454) (not bm!513450) (not b!6163301) (not bm!513467) (not b!6163030) (not b!6163635) (not b!6163422) (not b!6163236) (not b!6163246) (not b!6163265) (not bs!1527736) (not d!1931370) (not d!1931372) (not b!6163645) (not d!1931476) (not bm!513443) (not d!1931280) (not d!1931478) (not b!6163679) (not b!6163616) (not b!6163646) (not b!6163247) (not b!6163612) (not b!6163678) (not b!6163058) (not b!6163342) (not d!1931324) (not d!1931430) (not d!1931268) (not b!6163658) (not bm!513444) (not b!6163409) (not b!6163274) (not d!1931408) (not d!1931354) (not b!6163631) (not b_lambda!234643) (not b!6163640) (not b!6163624) (not b!6163591) (not b!6163681) (not b!6163412) (not bm!513398) (not b!6163197) (not d!1931532) (not b!6163337) (not d!1931542) (not b!6163357) (not b!6163595) (not bm!513463) (not d!1931568) (not b!6163248) (not b!6163601) (not d!1931410) (not b!6163263) (not b_lambda!234611) (not b!6163617) (not d!1931456) (not bs!1527735) (not bm!513439) (not b!6163691) (not b!6163596) (not b!6163599) (not b!6163668) (not b_lambda!234641) (not b!6163373) (not b!6163135) (not d!1931540) (not b!6163574) (not d!1931464) (not bm!513506) (not bm!513449) (not bm!513387) (not b!6163572) (not bm!513391) (not b!6163685) (not b!6163532) (not b!6163322) (not d!1931376) (not d!1931450) (not b!6163687) (not bm!513433) (not b!6163661) (not b!6163603) (not d!1931312))
(check-sat)
