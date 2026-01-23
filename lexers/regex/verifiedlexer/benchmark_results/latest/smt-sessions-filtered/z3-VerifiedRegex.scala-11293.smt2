; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!595788 () Bool)

(assert start!595788)

(declare-fun b!5814394 () Bool)

(assert (=> b!5814394 true))

(assert (=> b!5814394 true))

(declare-fun lambda!317848 () Int)

(declare-fun lambda!317847 () Int)

(assert (=> b!5814394 (not (= lambda!317848 lambda!317847))))

(assert (=> b!5814394 true))

(assert (=> b!5814394 true))

(declare-fun lambda!317849 () Int)

(assert (=> b!5814394 (not (= lambda!317849 lambda!317847))))

(assert (=> b!5814394 (not (= lambda!317849 lambda!317848))))

(assert (=> b!5814394 true))

(assert (=> b!5814394 true))

(declare-fun b!5814396 () Bool)

(assert (=> b!5814396 true))

(declare-fun b!5814389 () Bool)

(assert (=> b!5814389 true))

(declare-fun e!3568739 () Bool)

(declare-fun e!3568737 () Bool)

(assert (=> b!5814389 (= e!3568739 e!3568737)))

(declare-fun res!2451933 () Bool)

(assert (=> b!5814389 (=> res!2451933 e!3568737)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31936 0))(
  ( (C!31937 (val!25670 Int)) )
))
(declare-datatypes ((Regex!15833 0))(
  ( (ElementMatch!15833 (c!1030465 C!31936)) (Concat!24678 (regOne!32178 Regex!15833) (regTwo!32178 Regex!15833)) (EmptyExpr!15833) (Star!15833 (reg!16162 Regex!15833)) (EmptyLang!15833) (Union!15833 (regOne!32179 Regex!15833) (regTwo!32179 Regex!15833)) )
))
(declare-datatypes ((List!63798 0))(
  ( (Nil!63674) (Cons!63674 (h!70122 Regex!15833) (t!377153 List!63798)) )
))
(declare-datatypes ((Context!10434 0))(
  ( (Context!10435 (exprs!5717 List!63798)) )
))
(declare-fun lt!2300951 () (InoxSet Context!10434))

(declare-fun lt!2300956 () (InoxSet Context!10434))

(declare-fun lt!2300953 () Context!10434)

(declare-fun appendTo!142 ((InoxSet Context!10434) Context!10434) (InoxSet Context!10434))

(assert (=> b!5814389 (= res!2451933 (not (= (appendTo!142 lt!2300951 lt!2300953) lt!2300956)))))

(declare-fun r!7292 () Regex!15833)

(declare-fun lambda!317851 () Int)

(declare-fun lt!2300948 () List!63798)

(declare-fun map!14602 ((InoxSet Context!10434) Int) (InoxSet Context!10434))

(declare-fun ++!14050 (List!63798 List!63798) List!63798)

(assert (=> b!5814389 (= (map!14602 lt!2300951 lambda!317851) (store ((as const (Array Context!10434 Bool)) false) (Context!10435 (++!14050 (Cons!63674 (reg!16162 r!7292) Nil!63674) lt!2300948)) true))))

(declare-datatypes ((Unit!156926 0))(
  ( (Unit!156927) )
))
(declare-fun lt!2300934 () Unit!156926)

(declare-fun lambda!317852 () Int)

(declare-fun lemmaConcatPreservesForall!334 (List!63798 List!63798 Int) Unit!156926)

(assert (=> b!5814389 (= lt!2300934 (lemmaConcatPreservesForall!334 (Cons!63674 (reg!16162 r!7292) Nil!63674) lt!2300948 lambda!317852))))

(declare-fun lt!2300927 () Context!10434)

(declare-fun lt!2300939 () Unit!156926)

(declare-fun lemmaMapOnSingletonSet!160 ((InoxSet Context!10434) Context!10434 Int) Unit!156926)

(assert (=> b!5814389 (= lt!2300939 (lemmaMapOnSingletonSet!160 lt!2300951 lt!2300927 lambda!317851))))

(declare-fun b!5814390 () Bool)

(declare-fun e!3568728 () Bool)

(declare-fun lt!2300933 () Bool)

(assert (=> b!5814390 (= e!3568728 lt!2300933)))

(declare-fun b!5814391 () Bool)

(declare-fun res!2451953 () Bool)

(declare-fun e!3568729 () Bool)

(assert (=> b!5814391 (=> res!2451953 e!3568729)))

(declare-datatypes ((List!63799 0))(
  ( (Nil!63675) (Cons!63675 (h!70123 C!31936) (t!377154 List!63799)) )
))
(declare-datatypes ((tuple2!65860 0))(
  ( (tuple2!65861 (_1!36233 List!63799) (_2!36233 List!63799)) )
))
(declare-fun lt!2300938 () tuple2!65860)

(declare-fun matchZipper!1961 ((InoxSet Context!10434) List!63799) Bool)

(assert (=> b!5814391 (= res!2451953 (not (matchZipper!1961 lt!2300951 (_1!36233 lt!2300938))))))

(declare-fun b!5814392 () Bool)

(declare-fun e!3568727 () Bool)

(declare-fun e!3568738 () Bool)

(assert (=> b!5814392 (= e!3568727 e!3568738)))

(declare-fun res!2451942 () Bool)

(assert (=> b!5814392 (=> res!2451942 e!3568738)))

(declare-fun s!2326 () List!63799)

(declare-fun lt!2300931 () (InoxSet Context!10434))

(declare-fun derivationStepZipperDown!1171 (Regex!15833 Context!10434 C!31936) (InoxSet Context!10434))

(assert (=> b!5814392 (= res!2451942 (not (= lt!2300931 (derivationStepZipperDown!1171 (reg!16162 r!7292) lt!2300953 (h!70123 s!2326)))))))

(assert (=> b!5814392 (= lt!2300953 (Context!10435 lt!2300948))))

(declare-fun lt!2300946 () Context!10434)

(declare-fun lambda!317850 () Int)

(declare-fun flatMap!1440 ((InoxSet Context!10434) Int) (InoxSet Context!10434))

(declare-fun derivationStepZipperUp!1097 (Context!10434 C!31936) (InoxSet Context!10434))

(assert (=> b!5814392 (= (flatMap!1440 lt!2300956 lambda!317850) (derivationStepZipperUp!1097 lt!2300946 (h!70123 s!2326)))))

(declare-fun lt!2300930 () Unit!156926)

(declare-fun lemmaFlatMapOnSingletonSet!972 ((InoxSet Context!10434) Context!10434 Int) Unit!156926)

(assert (=> b!5814392 (= lt!2300930 (lemmaFlatMapOnSingletonSet!972 lt!2300956 lt!2300946 lambda!317850))))

(declare-fun lt!2300944 () (InoxSet Context!10434))

(assert (=> b!5814392 (= lt!2300944 (derivationStepZipperUp!1097 lt!2300946 (h!70123 s!2326)))))

(assert (=> b!5814392 (= lt!2300956 (store ((as const (Array Context!10434 Bool)) false) lt!2300946 true))))

(assert (=> b!5814392 (= lt!2300946 (Context!10435 (Cons!63674 (reg!16162 r!7292) lt!2300948)))))

(assert (=> b!5814392 (= lt!2300948 (Cons!63674 r!7292 Nil!63674))))

(declare-fun e!3568734 () Bool)

(declare-fun setRes!39172 () Bool)

(declare-fun setElem!39172 () Context!10434)

(declare-fun setNonEmpty!39172 () Bool)

(declare-fun tp!1604250 () Bool)

(declare-fun inv!82829 (Context!10434) Bool)

(assert (=> setNonEmpty!39172 (= setRes!39172 (and tp!1604250 (inv!82829 setElem!39172) e!3568734))))

(declare-fun z!1189 () (InoxSet Context!10434))

(declare-fun setRest!39172 () (InoxSet Context!10434))

(assert (=> setNonEmpty!39172 (= z!1189 ((_ map or) (store ((as const (Array Context!10434 Bool)) false) setElem!39172 true) setRest!39172))))

(declare-fun b!5814393 () Bool)

(declare-fun e!3568736 () Bool)

(declare-fun tp!1604255 () Bool)

(assert (=> b!5814393 (= e!3568736 tp!1604255)))

(declare-fun e!3568742 () Bool)

(declare-fun e!3568735 () Bool)

(assert (=> b!5814394 (= e!3568742 e!3568735)))

(declare-fun res!2451944 () Bool)

(assert (=> b!5814394 (=> res!2451944 e!3568735)))

(declare-fun lt!2300950 () Bool)

(assert (=> b!5814394 (= res!2451944 (not (= lt!2300950 e!3568728)))))

(declare-fun res!2451951 () Bool)

(assert (=> b!5814394 (=> res!2451951 e!3568728)))

(declare-fun isEmpty!35595 (List!63799) Bool)

(assert (=> b!5814394 (= res!2451951 (isEmpty!35595 s!2326))))

(declare-fun Exists!2933 (Int) Bool)

(assert (=> b!5814394 (= (Exists!2933 lambda!317847) (Exists!2933 lambda!317849))))

(declare-fun lt!2300940 () Unit!156926)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1562 (Regex!15833 Regex!15833 List!63799) Unit!156926)

(assert (=> b!5814394 (= lt!2300940 (lemmaExistCutMatchRandMatchRSpecEquivalent!1562 (reg!16162 r!7292) r!7292 s!2326))))

(assert (=> b!5814394 (= (Exists!2933 lambda!317847) (Exists!2933 lambda!317848))))

(declare-fun lt!2300935 () Unit!156926)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!614 (Regex!15833 List!63799) Unit!156926)

(assert (=> b!5814394 (= lt!2300935 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!614 (reg!16162 r!7292) s!2326))))

(assert (=> b!5814394 (= lt!2300933 (Exists!2933 lambda!317847))))

(declare-datatypes ((Option!15842 0))(
  ( (None!15841) (Some!15841 (v!51905 tuple2!65860)) )
))
(declare-fun isDefined!12545 (Option!15842) Bool)

(declare-fun findConcatSeparation!2256 (Regex!15833 Regex!15833 List!63799 List!63799 List!63799) Option!15842)

(assert (=> b!5814394 (= lt!2300933 (isDefined!12545 (findConcatSeparation!2256 (reg!16162 r!7292) r!7292 Nil!63675 s!2326 s!2326)))))

(declare-fun lt!2300937 () Unit!156926)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2020 (Regex!15833 Regex!15833 List!63799) Unit!156926)

(assert (=> b!5814394 (= lt!2300937 (lemmaFindConcatSeparationEquivalentToExists!2020 (reg!16162 r!7292) r!7292 s!2326))))

(declare-fun b!5814395 () Bool)

(declare-fun res!2451955 () Bool)

(declare-fun e!3568731 () Bool)

(assert (=> b!5814395 (=> (not res!2451955) (not e!3568731))))

(declare-datatypes ((List!63800 0))(
  ( (Nil!63676) (Cons!63676 (h!70124 Context!10434) (t!377155 List!63800)) )
))
(declare-fun zl!343 () List!63800)

(declare-fun toList!9617 ((InoxSet Context!10434)) List!63800)

(assert (=> b!5814395 (= res!2451955 (= (toList!9617 z!1189) zl!343))))

(declare-fun e!3568741 () Bool)

(assert (=> b!5814396 (= e!3568741 e!3568727)))

(declare-fun res!2451938 () Bool)

(assert (=> b!5814396 (=> res!2451938 e!3568727)))

(declare-fun lt!2300942 () (InoxSet Context!10434))

(assert (=> b!5814396 (= res!2451938 (not (= lt!2300931 lt!2300942)))))

(assert (=> b!5814396 (= (flatMap!1440 z!1189 lambda!317850) (derivationStepZipperUp!1097 (h!70124 zl!343) (h!70123 s!2326)))))

(declare-fun lt!2300928 () Unit!156926)

(assert (=> b!5814396 (= lt!2300928 (lemmaFlatMapOnSingletonSet!972 z!1189 (h!70124 zl!343) lambda!317850))))

(declare-fun setIsEmpty!39172 () Bool)

(assert (=> setIsEmpty!39172 setRes!39172))

(declare-fun res!2451946 () Bool)

(assert (=> start!595788 (=> (not res!2451946) (not e!3568731))))

(declare-fun validRegex!7569 (Regex!15833) Bool)

(assert (=> start!595788 (= res!2451946 (validRegex!7569 r!7292))))

(assert (=> start!595788 e!3568731))

(declare-fun e!3568732 () Bool)

(assert (=> start!595788 e!3568732))

(declare-fun condSetEmpty!39172 () Bool)

(assert (=> start!595788 (= condSetEmpty!39172 (= z!1189 ((as const (Array Context!10434 Bool)) false)))))

(assert (=> start!595788 setRes!39172))

(declare-fun e!3568726 () Bool)

(assert (=> start!595788 e!3568726))

(declare-fun e!3568743 () Bool)

(assert (=> start!595788 e!3568743))

(declare-fun b!5814397 () Bool)

(assert (=> b!5814397 (= e!3568735 e!3568741)))

(declare-fun res!2451945 () Bool)

(assert (=> b!5814397 (=> res!2451945 e!3568741)))

(declare-fun lt!2300952 () (InoxSet Context!10434))

(assert (=> b!5814397 (= res!2451945 (not (= lt!2300952 lt!2300942)))))

(assert (=> b!5814397 (= lt!2300942 (derivationStepZipperDown!1171 r!7292 (Context!10435 Nil!63674) (h!70123 s!2326)))))

(assert (=> b!5814397 (= lt!2300952 (derivationStepZipperUp!1097 (Context!10435 (Cons!63674 r!7292 Nil!63674)) (h!70123 s!2326)))))

(declare-fun derivationStepZipper!1902 ((InoxSet Context!10434) C!31936) (InoxSet Context!10434))

(assert (=> b!5814397 (= lt!2300931 (derivationStepZipper!1902 z!1189 (h!70123 s!2326)))))

(declare-fun b!5814398 () Bool)

(declare-fun tp!1604247 () Bool)

(assert (=> b!5814398 (= e!3568734 tp!1604247)))

(declare-fun b!5814399 () Bool)

(declare-fun e!3568730 () Bool)

(declare-fun e!3568733 () Bool)

(assert (=> b!5814399 (= e!3568730 e!3568733)))

(declare-fun res!2451936 () Bool)

(assert (=> b!5814399 (=> res!2451936 e!3568733)))

(declare-fun lt!2300954 () (InoxSet Context!10434))

(assert (=> b!5814399 (= res!2451936 (not (= lt!2300931 (derivationStepZipper!1902 lt!2300954 (h!70123 s!2326)))))))

(assert (=> b!5814399 (= (flatMap!1440 lt!2300954 lambda!317850) (derivationStepZipperUp!1097 lt!2300953 (h!70123 s!2326)))))

(declare-fun lt!2300929 () Unit!156926)

(assert (=> b!5814399 (= lt!2300929 (lemmaFlatMapOnSingletonSet!972 lt!2300954 lt!2300953 lambda!317850))))

(assert (=> b!5814399 (= (flatMap!1440 lt!2300951 lambda!317850) (derivationStepZipperUp!1097 lt!2300927 (h!70123 s!2326)))))

(declare-fun lt!2300926 () Unit!156926)

(assert (=> b!5814399 (= lt!2300926 (lemmaFlatMapOnSingletonSet!972 lt!2300951 lt!2300927 lambda!317850))))

(declare-fun lt!2300936 () (InoxSet Context!10434))

(assert (=> b!5814399 (= lt!2300936 (derivationStepZipperUp!1097 lt!2300953 (h!70123 s!2326)))))

(declare-fun lt!2300925 () (InoxSet Context!10434))

(assert (=> b!5814399 (= lt!2300925 (derivationStepZipperUp!1097 lt!2300927 (h!70123 s!2326)))))

(assert (=> b!5814399 (= lt!2300954 (store ((as const (Array Context!10434 Bool)) false) lt!2300953 true))))

(assert (=> b!5814399 (= lt!2300951 (store ((as const (Array Context!10434 Bool)) false) lt!2300927 true))))

(assert (=> b!5814399 (= lt!2300927 (Context!10435 (Cons!63674 (reg!16162 r!7292) Nil!63674)))))

(declare-fun b!5814400 () Bool)

(declare-fun tp!1604253 () Bool)

(assert (=> b!5814400 (= e!3568732 tp!1604253)))

(declare-fun b!5814401 () Bool)

(declare-fun tp_is_empty!40919 () Bool)

(declare-fun tp!1604256 () Bool)

(assert (=> b!5814401 (= e!3568743 (and tp_is_empty!40919 tp!1604256))))

(declare-fun b!5814402 () Bool)

(declare-fun res!2451956 () Bool)

(assert (=> b!5814402 (=> res!2451956 e!3568733)))

(declare-fun unfocusZipper!1575 (List!63800) Regex!15833)

(assert (=> b!5814402 (= res!2451956 (not (= (unfocusZipper!1575 (Cons!63676 lt!2300953 Nil!63676)) r!7292)))))

(declare-fun b!5814403 () Bool)

(declare-fun res!2451943 () Bool)

(assert (=> b!5814403 (=> res!2451943 e!3568742)))

(declare-fun generalisedUnion!1696 (List!63798) Regex!15833)

(declare-fun unfocusZipperList!1261 (List!63800) List!63798)

(assert (=> b!5814403 (= res!2451943 (not (= r!7292 (generalisedUnion!1696 (unfocusZipperList!1261 zl!343)))))))

(declare-fun b!5814404 () Bool)

(declare-fun res!2451950 () Bool)

(assert (=> b!5814404 (=> res!2451950 e!3568742)))

(get-info :version)

(assert (=> b!5814404 (= res!2451950 (or ((_ is EmptyExpr!15833) r!7292) ((_ is EmptyLang!15833) r!7292) ((_ is ElementMatch!15833) r!7292) ((_ is Union!15833) r!7292) ((_ is Concat!24678) r!7292)))))

(declare-fun b!5814405 () Bool)

(declare-fun e!3568740 () Bool)

(assert (=> b!5814405 (= e!3568731 e!3568740)))

(declare-fun res!2451954 () Bool)

(assert (=> b!5814405 (=> (not res!2451954) (not e!3568740))))

(declare-fun lt!2300943 () Regex!15833)

(assert (=> b!5814405 (= res!2451954 (= r!7292 lt!2300943))))

(assert (=> b!5814405 (= lt!2300943 (unfocusZipper!1575 zl!343))))

(declare-fun b!5814406 () Bool)

(declare-fun res!2451931 () Bool)

(assert (=> b!5814406 (=> res!2451931 e!3568738)))

(assert (=> b!5814406 (= res!2451931 (not (= (matchZipper!1961 lt!2300956 s!2326) (matchZipper!1961 (derivationStepZipper!1902 lt!2300956 (h!70123 s!2326)) (t!377154 s!2326)))))))

(declare-fun b!5814407 () Bool)

(declare-fun res!2451934 () Bool)

(assert (=> b!5814407 (=> res!2451934 e!3568739)))

(assert (=> b!5814407 (= res!2451934 (not (matchZipper!1961 z!1189 s!2326)))))

(declare-fun b!5814408 () Bool)

(declare-fun res!2451948 () Bool)

(assert (=> b!5814408 (=> res!2451948 e!3568742)))

(declare-fun generalisedConcat!1448 (List!63798) Regex!15833)

(assert (=> b!5814408 (= res!2451948 (not (= r!7292 (generalisedConcat!1448 (exprs!5717 (h!70124 zl!343))))))))

(declare-fun b!5814409 () Bool)

(declare-fun res!2451937 () Bool)

(assert (=> b!5814409 (=> res!2451937 e!3568738)))

(assert (=> b!5814409 (= res!2451937 (or (not (= lt!2300943 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5814410 () Bool)

(assert (=> b!5814410 (= e!3568732 tp_is_empty!40919)))

(declare-fun b!5814411 () Bool)

(assert (=> b!5814411 (= e!3568729 (matchZipper!1961 lt!2300954 (_2!36233 lt!2300938)))))

(declare-fun b!5814412 () Bool)

(declare-fun res!2451949 () Bool)

(assert (=> b!5814412 (=> res!2451949 e!3568742)))

(assert (=> b!5814412 (= res!2451949 (not ((_ is Cons!63674) (exprs!5717 (h!70124 zl!343)))))))

(declare-fun b!5814413 () Bool)

(declare-fun res!2451941 () Bool)

(assert (=> b!5814413 (=> res!2451941 e!3568742)))

(declare-fun isEmpty!35596 (List!63800) Bool)

(assert (=> b!5814413 (= res!2451941 (not (isEmpty!35596 (t!377155 zl!343))))))

(declare-fun b!5814414 () Bool)

(declare-fun res!2451947 () Bool)

(assert (=> b!5814414 (=> res!2451947 e!3568735)))

(assert (=> b!5814414 (= res!2451947 ((_ is Nil!63675) s!2326))))

(declare-fun b!5814415 () Bool)

(declare-fun tp!1604248 () Bool)

(declare-fun tp!1604254 () Bool)

(assert (=> b!5814415 (= e!3568732 (and tp!1604248 tp!1604254))))

(declare-fun b!5814416 () Bool)

(assert (=> b!5814416 (= e!3568737 e!3568729)))

(declare-fun res!2451939 () Bool)

(assert (=> b!5814416 (=> res!2451939 e!3568729)))

(declare-fun ++!14051 (List!63799 List!63799) List!63799)

(assert (=> b!5814416 (= res!2451939 (not (= s!2326 (++!14051 (_1!36233 lt!2300938) (_2!36233 lt!2300938)))))))

(declare-fun lt!2300932 () Option!15842)

(declare-fun get!21985 (Option!15842) tuple2!65860)

(assert (=> b!5814416 (= lt!2300938 (get!21985 lt!2300932))))

(assert (=> b!5814416 (isDefined!12545 lt!2300932)))

(declare-fun findConcatSeparationZippers!150 ((InoxSet Context!10434) (InoxSet Context!10434) List!63799 List!63799 List!63799) Option!15842)

(assert (=> b!5814416 (= lt!2300932 (findConcatSeparationZippers!150 lt!2300951 lt!2300954 Nil!63675 s!2326 s!2326))))

(declare-fun lt!2300949 () Unit!156926)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!150 ((InoxSet Context!10434) Context!10434 List!63799) Unit!156926)

(assert (=> b!5814416 (= lt!2300949 (lemmaConcatZipperMatchesStringThenFindConcatDefined!150 lt!2300951 lt!2300953 s!2326))))

(declare-fun b!5814417 () Bool)

(assert (=> b!5814417 (= e!3568740 (not e!3568742))))

(declare-fun res!2451935 () Bool)

(assert (=> b!5814417 (=> res!2451935 e!3568742)))

(assert (=> b!5814417 (= res!2451935 (not ((_ is Cons!63676) zl!343)))))

(declare-fun matchRSpec!2936 (Regex!15833 List!63799) Bool)

(assert (=> b!5814417 (= lt!2300950 (matchRSpec!2936 r!7292 s!2326))))

(declare-fun matchR!8018 (Regex!15833 List!63799) Bool)

(assert (=> b!5814417 (= lt!2300950 (matchR!8018 r!7292 s!2326))))

(declare-fun lt!2300941 () Unit!156926)

(declare-fun mainMatchTheorem!2936 (Regex!15833 List!63799) Unit!156926)

(assert (=> b!5814417 (= lt!2300941 (mainMatchTheorem!2936 r!7292 s!2326))))

(declare-fun b!5814418 () Bool)

(assert (=> b!5814418 (= e!3568738 e!3568730)))

(declare-fun res!2451932 () Bool)

(assert (=> b!5814418 (=> res!2451932 e!3568730)))

(declare-fun lt!2300955 () Regex!15833)

(assert (=> b!5814418 (= res!2451932 (not (= (unfocusZipper!1575 (Cons!63676 lt!2300946 Nil!63676)) lt!2300955)))))

(assert (=> b!5814418 (= lt!2300955 (Concat!24678 (reg!16162 r!7292) r!7292))))

(declare-fun b!5814419 () Bool)

(declare-fun res!2451940 () Bool)

(assert (=> b!5814419 (=> res!2451940 e!3568733)))

(assert (=> b!5814419 (= res!2451940 (not (= (unfocusZipper!1575 (Cons!63676 lt!2300927 Nil!63676)) (reg!16162 r!7292))))))

(declare-fun tp!1604251 () Bool)

(declare-fun b!5814420 () Bool)

(assert (=> b!5814420 (= e!3568726 (and (inv!82829 (h!70124 zl!343)) e!3568736 tp!1604251))))

(declare-fun b!5814421 () Bool)

(declare-fun tp!1604252 () Bool)

(declare-fun tp!1604249 () Bool)

(assert (=> b!5814421 (= e!3568732 (and tp!1604252 tp!1604249))))

(declare-fun b!5814422 () Bool)

(assert (=> b!5814422 (= e!3568733 e!3568739)))

(declare-fun res!2451952 () Bool)

(assert (=> b!5814422 (=> res!2451952 e!3568739)))

(declare-fun lt!2300947 () Bool)

(assert (=> b!5814422 (= res!2451952 lt!2300947)))

(assert (=> b!5814422 (= lt!2300947 (matchRSpec!2936 lt!2300955 s!2326))))

(assert (=> b!5814422 (= lt!2300947 (matchR!8018 lt!2300955 s!2326))))

(declare-fun lt!2300945 () Unit!156926)

(assert (=> b!5814422 (= lt!2300945 (mainMatchTheorem!2936 lt!2300955 s!2326))))

(assert (= (and start!595788 res!2451946) b!5814395))

(assert (= (and b!5814395 res!2451955) b!5814405))

(assert (= (and b!5814405 res!2451954) b!5814417))

(assert (= (and b!5814417 (not res!2451935)) b!5814413))

(assert (= (and b!5814413 (not res!2451941)) b!5814408))

(assert (= (and b!5814408 (not res!2451948)) b!5814412))

(assert (= (and b!5814412 (not res!2451949)) b!5814403))

(assert (= (and b!5814403 (not res!2451943)) b!5814404))

(assert (= (and b!5814404 (not res!2451950)) b!5814394))

(assert (= (and b!5814394 (not res!2451951)) b!5814390))

(assert (= (and b!5814394 (not res!2451944)) b!5814414))

(assert (= (and b!5814414 (not res!2451947)) b!5814397))

(assert (= (and b!5814397 (not res!2451945)) b!5814396))

(assert (= (and b!5814396 (not res!2451938)) b!5814392))

(assert (= (and b!5814392 (not res!2451942)) b!5814406))

(assert (= (and b!5814406 (not res!2451931)) b!5814409))

(assert (= (and b!5814409 (not res!2451937)) b!5814418))

(assert (= (and b!5814418 (not res!2451932)) b!5814399))

(assert (= (and b!5814399 (not res!2451936)) b!5814419))

(assert (= (and b!5814419 (not res!2451940)) b!5814402))

(assert (= (and b!5814402 (not res!2451956)) b!5814422))

(assert (= (and b!5814422 (not res!2451952)) b!5814407))

(assert (= (and b!5814407 (not res!2451934)) b!5814389))

(assert (= (and b!5814389 (not res!2451933)) b!5814416))

(assert (= (and b!5814416 (not res!2451939)) b!5814391))

(assert (= (and b!5814391 (not res!2451953)) b!5814411))

(assert (= (and start!595788 ((_ is ElementMatch!15833) r!7292)) b!5814410))

(assert (= (and start!595788 ((_ is Concat!24678) r!7292)) b!5814415))

(assert (= (and start!595788 ((_ is Star!15833) r!7292)) b!5814400))

(assert (= (and start!595788 ((_ is Union!15833) r!7292)) b!5814421))

(assert (= (and start!595788 condSetEmpty!39172) setIsEmpty!39172))

(assert (= (and start!595788 (not condSetEmpty!39172)) setNonEmpty!39172))

(assert (= setNonEmpty!39172 b!5814398))

(assert (= b!5814420 b!5814393))

(assert (= (and start!595788 ((_ is Cons!63676) zl!343)) b!5814420))

(assert (= (and start!595788 ((_ is Cons!63675) s!2326)) b!5814401))

(declare-fun m!6752196 () Bool)

(assert (=> b!5814391 m!6752196))

(declare-fun m!6752198 () Bool)

(assert (=> b!5814396 m!6752198))

(declare-fun m!6752200 () Bool)

(assert (=> b!5814396 m!6752200))

(declare-fun m!6752202 () Bool)

(assert (=> b!5814396 m!6752202))

(declare-fun m!6752204 () Bool)

(assert (=> b!5814399 m!6752204))

(declare-fun m!6752206 () Bool)

(assert (=> b!5814399 m!6752206))

(declare-fun m!6752208 () Bool)

(assert (=> b!5814399 m!6752208))

(declare-fun m!6752210 () Bool)

(assert (=> b!5814399 m!6752210))

(declare-fun m!6752212 () Bool)

(assert (=> b!5814399 m!6752212))

(declare-fun m!6752214 () Bool)

(assert (=> b!5814399 m!6752214))

(declare-fun m!6752216 () Bool)

(assert (=> b!5814399 m!6752216))

(declare-fun m!6752218 () Bool)

(assert (=> b!5814399 m!6752218))

(declare-fun m!6752220 () Bool)

(assert (=> b!5814399 m!6752220))

(declare-fun m!6752222 () Bool)

(assert (=> start!595788 m!6752222))

(declare-fun m!6752224 () Bool)

(assert (=> b!5814395 m!6752224))

(declare-fun m!6752226 () Bool)

(assert (=> b!5814413 m!6752226))

(declare-fun m!6752228 () Bool)

(assert (=> setNonEmpty!39172 m!6752228))

(declare-fun m!6752230 () Bool)

(assert (=> b!5814411 m!6752230))

(declare-fun m!6752232 () Bool)

(assert (=> b!5814397 m!6752232))

(declare-fun m!6752234 () Bool)

(assert (=> b!5814397 m!6752234))

(declare-fun m!6752236 () Bool)

(assert (=> b!5814397 m!6752236))

(declare-fun m!6752238 () Bool)

(assert (=> b!5814392 m!6752238))

(declare-fun m!6752240 () Bool)

(assert (=> b!5814392 m!6752240))

(declare-fun m!6752242 () Bool)

(assert (=> b!5814392 m!6752242))

(declare-fun m!6752244 () Bool)

(assert (=> b!5814392 m!6752244))

(declare-fun m!6752246 () Bool)

(assert (=> b!5814392 m!6752246))

(declare-fun m!6752248 () Bool)

(assert (=> b!5814406 m!6752248))

(declare-fun m!6752250 () Bool)

(assert (=> b!5814406 m!6752250))

(assert (=> b!5814406 m!6752250))

(declare-fun m!6752252 () Bool)

(assert (=> b!5814406 m!6752252))

(declare-fun m!6752254 () Bool)

(assert (=> b!5814420 m!6752254))

(declare-fun m!6752256 () Bool)

(assert (=> b!5814403 m!6752256))

(assert (=> b!5814403 m!6752256))

(declare-fun m!6752258 () Bool)

(assert (=> b!5814403 m!6752258))

(declare-fun m!6752260 () Bool)

(assert (=> b!5814418 m!6752260))

(declare-fun m!6752262 () Bool)

(assert (=> b!5814419 m!6752262))

(declare-fun m!6752264 () Bool)

(assert (=> b!5814405 m!6752264))

(declare-fun m!6752266 () Bool)

(assert (=> b!5814422 m!6752266))

(declare-fun m!6752268 () Bool)

(assert (=> b!5814422 m!6752268))

(declare-fun m!6752270 () Bool)

(assert (=> b!5814422 m!6752270))

(declare-fun m!6752272 () Bool)

(assert (=> b!5814394 m!6752272))

(declare-fun m!6752274 () Bool)

(assert (=> b!5814394 m!6752274))

(declare-fun m!6752276 () Bool)

(assert (=> b!5814394 m!6752276))

(declare-fun m!6752278 () Bool)

(assert (=> b!5814394 m!6752278))

(declare-fun m!6752280 () Bool)

(assert (=> b!5814394 m!6752280))

(declare-fun m!6752282 () Bool)

(assert (=> b!5814394 m!6752282))

(declare-fun m!6752284 () Bool)

(assert (=> b!5814394 m!6752284))

(declare-fun m!6752286 () Bool)

(assert (=> b!5814394 m!6752286))

(assert (=> b!5814394 m!6752284))

(assert (=> b!5814394 m!6752272))

(assert (=> b!5814394 m!6752272))

(declare-fun m!6752288 () Bool)

(assert (=> b!5814394 m!6752288))

(declare-fun m!6752290 () Bool)

(assert (=> b!5814417 m!6752290))

(declare-fun m!6752292 () Bool)

(assert (=> b!5814417 m!6752292))

(declare-fun m!6752294 () Bool)

(assert (=> b!5814417 m!6752294))

(declare-fun m!6752296 () Bool)

(assert (=> b!5814402 m!6752296))

(declare-fun m!6752298 () Bool)

(assert (=> b!5814408 m!6752298))

(declare-fun m!6752300 () Bool)

(assert (=> b!5814416 m!6752300))

(declare-fun m!6752302 () Bool)

(assert (=> b!5814416 m!6752302))

(declare-fun m!6752304 () Bool)

(assert (=> b!5814416 m!6752304))

(declare-fun m!6752306 () Bool)

(assert (=> b!5814416 m!6752306))

(declare-fun m!6752308 () Bool)

(assert (=> b!5814416 m!6752308))

(declare-fun m!6752310 () Bool)

(assert (=> b!5814407 m!6752310))

(declare-fun m!6752312 () Bool)

(assert (=> b!5814389 m!6752312))

(declare-fun m!6752314 () Bool)

(assert (=> b!5814389 m!6752314))

(declare-fun m!6752316 () Bool)

(assert (=> b!5814389 m!6752316))

(declare-fun m!6752318 () Bool)

(assert (=> b!5814389 m!6752318))

(declare-fun m!6752320 () Bool)

(assert (=> b!5814389 m!6752320))

(declare-fun m!6752322 () Bool)

(assert (=> b!5814389 m!6752322))

(check-sat (not b!5814402) (not b!5814398) (not b!5814405) (not start!595788) (not b!5814395) (not b!5814389) (not b!5814408) (not b!5814406) (not b!5814392) (not b!5814403) (not b!5814401) (not b!5814407) (not b!5814413) (not b!5814419) (not b!5814421) tp_is_empty!40919 (not b!5814397) (not b!5814420) (not b!5814417) (not b!5814393) (not b!5814396) (not b!5814422) (not b!5814399) (not b!5814411) (not setNonEmpty!39172) (not b!5814416) (not b!5814418) (not b!5814391) (not b!5814415) (not b!5814400) (not b!5814394))
(check-sat)
(get-model)

(declare-fun d!1830796 () Bool)

(declare-fun c!1030468 () Bool)

(assert (=> d!1830796 (= c!1030468 (isEmpty!35595 s!2326))))

(declare-fun e!3568746 () Bool)

(assert (=> d!1830796 (= (matchZipper!1961 z!1189 s!2326) e!3568746)))

(declare-fun b!5814435 () Bool)

(declare-fun nullableZipper!1739 ((InoxSet Context!10434)) Bool)

(assert (=> b!5814435 (= e!3568746 (nullableZipper!1739 z!1189))))

(declare-fun b!5814436 () Bool)

(declare-fun head!12273 (List!63799) C!31936)

(declare-fun tail!11368 (List!63799) List!63799)

(assert (=> b!5814436 (= e!3568746 (matchZipper!1961 (derivationStepZipper!1902 z!1189 (head!12273 s!2326)) (tail!11368 s!2326)))))

(assert (= (and d!1830796 c!1030468) b!5814435))

(assert (= (and d!1830796 (not c!1030468)) b!5814436))

(assert (=> d!1830796 m!6752276))

(declare-fun m!6752324 () Bool)

(assert (=> b!5814435 m!6752324))

(declare-fun m!6752326 () Bool)

(assert (=> b!5814436 m!6752326))

(assert (=> b!5814436 m!6752326))

(declare-fun m!6752328 () Bool)

(assert (=> b!5814436 m!6752328))

(declare-fun m!6752330 () Bool)

(assert (=> b!5814436 m!6752330))

(assert (=> b!5814436 m!6752328))

(assert (=> b!5814436 m!6752330))

(declare-fun m!6752332 () Bool)

(assert (=> b!5814436 m!6752332))

(assert (=> b!5814407 d!1830796))

(declare-fun bs!1372569 () Bool)

(declare-fun d!1830798 () Bool)

(assert (= bs!1372569 (and d!1830798 b!5814389)))

(declare-fun lambda!317861 () Int)

(assert (=> bs!1372569 (= lambda!317861 lambda!317852)))

(declare-fun b!5814500 () Bool)

(declare-fun e!3568784 () Bool)

(declare-fun e!3568786 () Bool)

(assert (=> b!5814500 (= e!3568784 e!3568786)))

(declare-fun c!1030490 () Bool)

(declare-fun isEmpty!35598 (List!63798) Bool)

(assert (=> b!5814500 (= c!1030490 (isEmpty!35598 (exprs!5717 (h!70124 zl!343))))))

(declare-fun b!5814501 () Bool)

(declare-fun e!3568788 () Regex!15833)

(assert (=> b!5814501 (= e!3568788 (h!70122 (exprs!5717 (h!70124 zl!343))))))

(declare-fun b!5814502 () Bool)

(declare-fun e!3568787 () Bool)

(declare-fun lt!2300959 () Regex!15833)

(declare-fun head!12274 (List!63798) Regex!15833)

(assert (=> b!5814502 (= e!3568787 (= lt!2300959 (head!12274 (exprs!5717 (h!70124 zl!343)))))))

(declare-fun b!5814503 () Bool)

(declare-fun e!3568785 () Regex!15833)

(assert (=> b!5814503 (= e!3568785 (Concat!24678 (h!70122 (exprs!5717 (h!70124 zl!343))) (generalisedConcat!1448 (t!377153 (exprs!5717 (h!70124 zl!343))))))))

(assert (=> d!1830798 e!3568784))

(declare-fun res!2451982 () Bool)

(assert (=> d!1830798 (=> (not res!2451982) (not e!3568784))))

(assert (=> d!1830798 (= res!2451982 (validRegex!7569 lt!2300959))))

(assert (=> d!1830798 (= lt!2300959 e!3568788)))

(declare-fun c!1030491 () Bool)

(declare-fun e!3568789 () Bool)

(assert (=> d!1830798 (= c!1030491 e!3568789)))

(declare-fun res!2451983 () Bool)

(assert (=> d!1830798 (=> (not res!2451983) (not e!3568789))))

(assert (=> d!1830798 (= res!2451983 ((_ is Cons!63674) (exprs!5717 (h!70124 zl!343))))))

(declare-fun forall!14938 (List!63798 Int) Bool)

(assert (=> d!1830798 (forall!14938 (exprs!5717 (h!70124 zl!343)) lambda!317861)))

(assert (=> d!1830798 (= (generalisedConcat!1448 (exprs!5717 (h!70124 zl!343))) lt!2300959)))

(declare-fun b!5814504 () Bool)

(assert (=> b!5814504 (= e!3568786 e!3568787)))

(declare-fun c!1030489 () Bool)

(declare-fun tail!11369 (List!63798) List!63798)

(assert (=> b!5814504 (= c!1030489 (isEmpty!35598 (tail!11369 (exprs!5717 (h!70124 zl!343)))))))

(declare-fun b!5814505 () Bool)

(assert (=> b!5814505 (= e!3568789 (isEmpty!35598 (t!377153 (exprs!5717 (h!70124 zl!343)))))))

(declare-fun b!5814506 () Bool)

(declare-fun isConcat!827 (Regex!15833) Bool)

(assert (=> b!5814506 (= e!3568787 (isConcat!827 lt!2300959))))

(declare-fun b!5814507 () Bool)

(assert (=> b!5814507 (= e!3568788 e!3568785)))

(declare-fun c!1030492 () Bool)

(assert (=> b!5814507 (= c!1030492 ((_ is Cons!63674) (exprs!5717 (h!70124 zl!343))))))

(declare-fun b!5814508 () Bool)

(assert (=> b!5814508 (= e!3568785 EmptyExpr!15833)))

(declare-fun b!5814509 () Bool)

(declare-fun isEmptyExpr!1304 (Regex!15833) Bool)

(assert (=> b!5814509 (= e!3568786 (isEmptyExpr!1304 lt!2300959))))

(assert (= (and d!1830798 res!2451983) b!5814505))

(assert (= (and d!1830798 c!1030491) b!5814501))

(assert (= (and d!1830798 (not c!1030491)) b!5814507))

(assert (= (and b!5814507 c!1030492) b!5814503))

(assert (= (and b!5814507 (not c!1030492)) b!5814508))

(assert (= (and d!1830798 res!2451982) b!5814500))

(assert (= (and b!5814500 c!1030490) b!5814509))

(assert (= (and b!5814500 (not c!1030490)) b!5814504))

(assert (= (and b!5814504 c!1030489) b!5814502))

(assert (= (and b!5814504 (not c!1030489)) b!5814506))

(declare-fun m!6752340 () Bool)

(assert (=> d!1830798 m!6752340))

(declare-fun m!6752342 () Bool)

(assert (=> d!1830798 m!6752342))

(declare-fun m!6752344 () Bool)

(assert (=> b!5814509 m!6752344))

(declare-fun m!6752346 () Bool)

(assert (=> b!5814500 m!6752346))

(declare-fun m!6752348 () Bool)

(assert (=> b!5814504 m!6752348))

(assert (=> b!5814504 m!6752348))

(declare-fun m!6752350 () Bool)

(assert (=> b!5814504 m!6752350))

(declare-fun m!6752352 () Bool)

(assert (=> b!5814502 m!6752352))

(declare-fun m!6752354 () Bool)

(assert (=> b!5814506 m!6752354))

(declare-fun m!6752356 () Bool)

(assert (=> b!5814505 m!6752356))

(declare-fun m!6752358 () Bool)

(assert (=> b!5814503 m!6752358))

(assert (=> b!5814408 d!1830798))

(declare-fun d!1830804 () Bool)

(declare-fun choose!44186 ((InoxSet Context!10434) Int) (InoxSet Context!10434))

(assert (=> d!1830804 (= (map!14602 lt!2300951 lambda!317851) (choose!44186 lt!2300951 lambda!317851))))

(declare-fun bs!1372570 () Bool)

(assert (= bs!1372570 d!1830804))

(declare-fun m!6752360 () Bool)

(assert (=> bs!1372570 m!6752360))

(assert (=> b!5814389 d!1830804))

(declare-fun d!1830806 () Bool)

(declare-fun dynLambda!24934 (Int Context!10434) Context!10434)

(assert (=> d!1830806 (= (map!14602 lt!2300951 lambda!317851) (store ((as const (Array Context!10434 Bool)) false) (dynLambda!24934 lambda!317851 lt!2300927) true))))

(declare-fun lt!2300964 () Unit!156926)

(declare-fun choose!44187 ((InoxSet Context!10434) Context!10434 Int) Unit!156926)

(assert (=> d!1830806 (= lt!2300964 (choose!44187 lt!2300951 lt!2300927 lambda!317851))))

(assert (=> d!1830806 (= lt!2300951 (store ((as const (Array Context!10434 Bool)) false) lt!2300927 true))))

(assert (=> d!1830806 (= (lemmaMapOnSingletonSet!160 lt!2300951 lt!2300927 lambda!317851) lt!2300964)))

(declare-fun b_lambda!219197 () Bool)

(assert (=> (not b_lambda!219197) (not d!1830806)))

(declare-fun bs!1372571 () Bool)

(assert (= bs!1372571 d!1830806))

(declare-fun m!6752362 () Bool)

(assert (=> bs!1372571 m!6752362))

(declare-fun m!6752364 () Bool)

(assert (=> bs!1372571 m!6752364))

(assert (=> bs!1372571 m!6752362))

(declare-fun m!6752366 () Bool)

(assert (=> bs!1372571 m!6752366))

(assert (=> bs!1372571 m!6752218))

(assert (=> bs!1372571 m!6752316))

(assert (=> b!5814389 d!1830806))

(declare-fun b!5814576 () Bool)

(declare-fun e!3568825 () List!63798)

(assert (=> b!5814576 (= e!3568825 (Cons!63674 (h!70122 (Cons!63674 (reg!16162 r!7292) Nil!63674)) (++!14050 (t!377153 (Cons!63674 (reg!16162 r!7292) Nil!63674)) lt!2300948)))))

(declare-fun b!5814575 () Bool)

(assert (=> b!5814575 (= e!3568825 lt!2300948)))

(declare-fun b!5814578 () Bool)

(declare-fun lt!2300971 () List!63798)

(declare-fun e!3568824 () Bool)

(assert (=> b!5814578 (= e!3568824 (or (not (= lt!2300948 Nil!63674)) (= lt!2300971 (Cons!63674 (reg!16162 r!7292) Nil!63674))))))

(declare-fun b!5814577 () Bool)

(declare-fun res!2452016 () Bool)

(assert (=> b!5814577 (=> (not res!2452016) (not e!3568824))))

(declare-fun size!40121 (List!63798) Int)

(assert (=> b!5814577 (= res!2452016 (= (size!40121 lt!2300971) (+ (size!40121 (Cons!63674 (reg!16162 r!7292) Nil!63674)) (size!40121 lt!2300948))))))

(declare-fun d!1830808 () Bool)

(assert (=> d!1830808 e!3568824))

(declare-fun res!2452015 () Bool)

(assert (=> d!1830808 (=> (not res!2452015) (not e!3568824))))

(declare-fun content!11679 (List!63798) (InoxSet Regex!15833))

(assert (=> d!1830808 (= res!2452015 (= (content!11679 lt!2300971) ((_ map or) (content!11679 (Cons!63674 (reg!16162 r!7292) Nil!63674)) (content!11679 lt!2300948))))))

(assert (=> d!1830808 (= lt!2300971 e!3568825)))

(declare-fun c!1030510 () Bool)

(assert (=> d!1830808 (= c!1030510 ((_ is Nil!63674) (Cons!63674 (reg!16162 r!7292) Nil!63674)))))

(assert (=> d!1830808 (= (++!14050 (Cons!63674 (reg!16162 r!7292) Nil!63674) lt!2300948) lt!2300971)))

(assert (= (and d!1830808 c!1030510) b!5814575))

(assert (= (and d!1830808 (not c!1030510)) b!5814576))

(assert (= (and d!1830808 res!2452015) b!5814577))

(assert (= (and b!5814577 res!2452016) b!5814578))

(declare-fun m!6752390 () Bool)

(assert (=> b!5814576 m!6752390))

(declare-fun m!6752392 () Bool)

(assert (=> b!5814577 m!6752392))

(declare-fun m!6752394 () Bool)

(assert (=> b!5814577 m!6752394))

(declare-fun m!6752396 () Bool)

(assert (=> b!5814577 m!6752396))

(declare-fun m!6752398 () Bool)

(assert (=> d!1830808 m!6752398))

(declare-fun m!6752400 () Bool)

(assert (=> d!1830808 m!6752400))

(declare-fun m!6752402 () Bool)

(assert (=> d!1830808 m!6752402))

(assert (=> b!5814389 d!1830808))

(declare-fun bs!1372579 () Bool)

(declare-fun d!1830816 () Bool)

(assert (= bs!1372579 (and d!1830816 b!5814389)))

(declare-fun lambda!317869 () Int)

(assert (=> bs!1372579 (= (= (exprs!5717 lt!2300953) lt!2300948) (= lambda!317869 lambda!317851))))

(assert (=> d!1830816 true))

(assert (=> d!1830816 (= (appendTo!142 lt!2300951 lt!2300953) (map!14602 lt!2300951 lambda!317869))))

(declare-fun bs!1372580 () Bool)

(assert (= bs!1372580 d!1830816))

(declare-fun m!6752424 () Bool)

(assert (=> bs!1372580 m!6752424))

(assert (=> b!5814389 d!1830816))

(declare-fun d!1830830 () Bool)

(assert (=> d!1830830 (forall!14938 (++!14050 (Cons!63674 (reg!16162 r!7292) Nil!63674) lt!2300948) lambda!317852)))

(declare-fun lt!2300980 () Unit!156926)

(declare-fun choose!44188 (List!63798 List!63798 Int) Unit!156926)

(assert (=> d!1830830 (= lt!2300980 (choose!44188 (Cons!63674 (reg!16162 r!7292) Nil!63674) lt!2300948 lambda!317852))))

(assert (=> d!1830830 (forall!14938 (Cons!63674 (reg!16162 r!7292) Nil!63674) lambda!317852)))

(assert (=> d!1830830 (= (lemmaConcatPreservesForall!334 (Cons!63674 (reg!16162 r!7292) Nil!63674) lt!2300948 lambda!317852) lt!2300980)))

(declare-fun bs!1372581 () Bool)

(assert (= bs!1372581 d!1830830))

(assert (=> bs!1372581 m!6752318))

(assert (=> bs!1372581 m!6752318))

(declare-fun m!6752426 () Bool)

(assert (=> bs!1372581 m!6752426))

(declare-fun m!6752428 () Bool)

(assert (=> bs!1372581 m!6752428))

(declare-fun m!6752430 () Bool)

(assert (=> bs!1372581 m!6752430))

(assert (=> b!5814389 d!1830830))

(declare-fun d!1830832 () Bool)

(declare-fun lt!2300984 () Regex!15833)

(assert (=> d!1830832 (validRegex!7569 lt!2300984)))

(assert (=> d!1830832 (= lt!2300984 (generalisedUnion!1696 (unfocusZipperList!1261 zl!343)))))

(assert (=> d!1830832 (= (unfocusZipper!1575 zl!343) lt!2300984)))

(declare-fun bs!1372587 () Bool)

(assert (= bs!1372587 d!1830832))

(declare-fun m!6752458 () Bool)

(assert (=> bs!1372587 m!6752458))

(assert (=> bs!1372587 m!6752256))

(assert (=> bs!1372587 m!6752256))

(assert (=> bs!1372587 m!6752258))

(assert (=> b!5814405 d!1830832))

(declare-fun d!1830848 () Bool)

(declare-fun c!1030533 () Bool)

(assert (=> d!1830848 (= c!1030533 (isEmpty!35595 s!2326))))

(declare-fun e!3568850 () Bool)

(assert (=> d!1830848 (= (matchZipper!1961 lt!2300956 s!2326) e!3568850)))

(declare-fun b!5814626 () Bool)

(assert (=> b!5814626 (= e!3568850 (nullableZipper!1739 lt!2300956))))

(declare-fun b!5814627 () Bool)

(assert (=> b!5814627 (= e!3568850 (matchZipper!1961 (derivationStepZipper!1902 lt!2300956 (head!12273 s!2326)) (tail!11368 s!2326)))))

(assert (= (and d!1830848 c!1030533) b!5814626))

(assert (= (and d!1830848 (not c!1030533)) b!5814627))

(assert (=> d!1830848 m!6752276))

(declare-fun m!6752460 () Bool)

(assert (=> b!5814626 m!6752460))

(assert (=> b!5814627 m!6752326))

(assert (=> b!5814627 m!6752326))

(declare-fun m!6752462 () Bool)

(assert (=> b!5814627 m!6752462))

(assert (=> b!5814627 m!6752330))

(assert (=> b!5814627 m!6752462))

(assert (=> b!5814627 m!6752330))

(declare-fun m!6752464 () Bool)

(assert (=> b!5814627 m!6752464))

(assert (=> b!5814406 d!1830848))

(declare-fun d!1830850 () Bool)

(declare-fun c!1030534 () Bool)

(assert (=> d!1830850 (= c!1030534 (isEmpty!35595 (t!377154 s!2326)))))

(declare-fun e!3568851 () Bool)

(assert (=> d!1830850 (= (matchZipper!1961 (derivationStepZipper!1902 lt!2300956 (h!70123 s!2326)) (t!377154 s!2326)) e!3568851)))

(declare-fun b!5814628 () Bool)

(assert (=> b!5814628 (= e!3568851 (nullableZipper!1739 (derivationStepZipper!1902 lt!2300956 (h!70123 s!2326))))))

(declare-fun b!5814629 () Bool)

(assert (=> b!5814629 (= e!3568851 (matchZipper!1961 (derivationStepZipper!1902 (derivationStepZipper!1902 lt!2300956 (h!70123 s!2326)) (head!12273 (t!377154 s!2326))) (tail!11368 (t!377154 s!2326))))))

(assert (= (and d!1830850 c!1030534) b!5814628))

(assert (= (and d!1830850 (not c!1030534)) b!5814629))

(declare-fun m!6752466 () Bool)

(assert (=> d!1830850 m!6752466))

(assert (=> b!5814628 m!6752250))

(declare-fun m!6752468 () Bool)

(assert (=> b!5814628 m!6752468))

(declare-fun m!6752470 () Bool)

(assert (=> b!5814629 m!6752470))

(assert (=> b!5814629 m!6752250))

(assert (=> b!5814629 m!6752470))

(declare-fun m!6752472 () Bool)

(assert (=> b!5814629 m!6752472))

(declare-fun m!6752474 () Bool)

(assert (=> b!5814629 m!6752474))

(assert (=> b!5814629 m!6752472))

(assert (=> b!5814629 m!6752474))

(declare-fun m!6752476 () Bool)

(assert (=> b!5814629 m!6752476))

(assert (=> b!5814406 d!1830850))

(declare-fun bs!1372588 () Bool)

(declare-fun d!1830852 () Bool)

(assert (= bs!1372588 (and d!1830852 b!5814396)))

(declare-fun lambda!317874 () Int)

(assert (=> bs!1372588 (= lambda!317874 lambda!317850)))

(assert (=> d!1830852 true))

(assert (=> d!1830852 (= (derivationStepZipper!1902 lt!2300956 (h!70123 s!2326)) (flatMap!1440 lt!2300956 lambda!317874))))

(declare-fun bs!1372589 () Bool)

(assert (= bs!1372589 d!1830852))

(declare-fun m!6752478 () Bool)

(assert (=> bs!1372589 m!6752478))

(assert (=> b!5814406 d!1830852))

(declare-fun d!1830854 () Bool)

(declare-fun lt!2300987 () Regex!15833)

(assert (=> d!1830854 (validRegex!7569 lt!2300987)))

(assert (=> d!1830854 (= lt!2300987 (generalisedUnion!1696 (unfocusZipperList!1261 (Cons!63676 lt!2300953 Nil!63676))))))

(assert (=> d!1830854 (= (unfocusZipper!1575 (Cons!63676 lt!2300953 Nil!63676)) lt!2300987)))

(declare-fun bs!1372590 () Bool)

(assert (= bs!1372590 d!1830854))

(declare-fun m!6752480 () Bool)

(assert (=> bs!1372590 m!6752480))

(declare-fun m!6752482 () Bool)

(assert (=> bs!1372590 m!6752482))

(assert (=> bs!1372590 m!6752482))

(declare-fun m!6752484 () Bool)

(assert (=> bs!1372590 m!6752484))

(assert (=> b!5814402 d!1830854))

(declare-fun bs!1372601 () Bool)

(declare-fun d!1830856 () Bool)

(assert (= bs!1372601 (and d!1830856 b!5814389)))

(declare-fun lambda!317887 () Int)

(assert (=> bs!1372601 (= lambda!317887 lambda!317852)))

(declare-fun bs!1372602 () Bool)

(assert (= bs!1372602 (and d!1830856 d!1830798)))

(assert (=> bs!1372602 (= lambda!317887 lambda!317861)))

(declare-fun b!5814670 () Bool)

(declare-fun e!3568873 () Bool)

(declare-fun lt!2300994 () Regex!15833)

(declare-fun isUnion!744 (Regex!15833) Bool)

(assert (=> b!5814670 (= e!3568873 (isUnion!744 lt!2300994))))

(declare-fun b!5814671 () Bool)

(assert (=> b!5814671 (= e!3568873 (= lt!2300994 (head!12274 (unfocusZipperList!1261 zl!343))))))

(declare-fun b!5814672 () Bool)

(declare-fun e!3568872 () Bool)

(assert (=> b!5814672 (= e!3568872 e!3568873)))

(declare-fun c!1030548 () Bool)

(assert (=> b!5814672 (= c!1030548 (isEmpty!35598 (tail!11369 (unfocusZipperList!1261 zl!343))))))

(declare-fun b!5814673 () Bool)

(declare-fun e!3568875 () Regex!15833)

(declare-fun e!3568877 () Regex!15833)

(assert (=> b!5814673 (= e!3568875 e!3568877)))

(declare-fun c!1030547 () Bool)

(assert (=> b!5814673 (= c!1030547 ((_ is Cons!63674) (unfocusZipperList!1261 zl!343)))))

(declare-fun e!3568876 () Bool)

(assert (=> d!1830856 e!3568876))

(declare-fun res!2452045 () Bool)

(assert (=> d!1830856 (=> (not res!2452045) (not e!3568876))))

(assert (=> d!1830856 (= res!2452045 (validRegex!7569 lt!2300994))))

(assert (=> d!1830856 (= lt!2300994 e!3568875)))

(declare-fun c!1030546 () Bool)

(declare-fun e!3568874 () Bool)

(assert (=> d!1830856 (= c!1030546 e!3568874)))

(declare-fun res!2452044 () Bool)

(assert (=> d!1830856 (=> (not res!2452044) (not e!3568874))))

(assert (=> d!1830856 (= res!2452044 ((_ is Cons!63674) (unfocusZipperList!1261 zl!343)))))

(assert (=> d!1830856 (forall!14938 (unfocusZipperList!1261 zl!343) lambda!317887)))

(assert (=> d!1830856 (= (generalisedUnion!1696 (unfocusZipperList!1261 zl!343)) lt!2300994)))

(declare-fun b!5814674 () Bool)

(assert (=> b!5814674 (= e!3568874 (isEmpty!35598 (t!377153 (unfocusZipperList!1261 zl!343))))))

(declare-fun b!5814675 () Bool)

(assert (=> b!5814675 (= e!3568876 e!3568872)))

(declare-fun c!1030545 () Bool)

(assert (=> b!5814675 (= c!1030545 (isEmpty!35598 (unfocusZipperList!1261 zl!343)))))

(declare-fun b!5814676 () Bool)

(assert (=> b!5814676 (= e!3568877 EmptyLang!15833)))

(declare-fun b!5814677 () Bool)

(assert (=> b!5814677 (= e!3568877 (Union!15833 (h!70122 (unfocusZipperList!1261 zl!343)) (generalisedUnion!1696 (t!377153 (unfocusZipperList!1261 zl!343)))))))

(declare-fun b!5814678 () Bool)

(declare-fun isEmptyLang!1314 (Regex!15833) Bool)

(assert (=> b!5814678 (= e!3568872 (isEmptyLang!1314 lt!2300994))))

(declare-fun b!5814679 () Bool)

(assert (=> b!5814679 (= e!3568875 (h!70122 (unfocusZipperList!1261 zl!343)))))

(assert (= (and d!1830856 res!2452044) b!5814674))

(assert (= (and d!1830856 c!1030546) b!5814679))

(assert (= (and d!1830856 (not c!1030546)) b!5814673))

(assert (= (and b!5814673 c!1030547) b!5814677))

(assert (= (and b!5814673 (not c!1030547)) b!5814676))

(assert (= (and d!1830856 res!2452045) b!5814675))

(assert (= (and b!5814675 c!1030545) b!5814678))

(assert (= (and b!5814675 (not c!1030545)) b!5814672))

(assert (= (and b!5814672 c!1030548) b!5814671))

(assert (= (and b!5814672 (not c!1030548)) b!5814670))

(declare-fun m!6752502 () Bool)

(assert (=> b!5814670 m!6752502))

(declare-fun m!6752504 () Bool)

(assert (=> b!5814674 m!6752504))

(assert (=> b!5814675 m!6752256))

(declare-fun m!6752506 () Bool)

(assert (=> b!5814675 m!6752506))

(declare-fun m!6752508 () Bool)

(assert (=> b!5814677 m!6752508))

(assert (=> b!5814671 m!6752256))

(declare-fun m!6752510 () Bool)

(assert (=> b!5814671 m!6752510))

(assert (=> b!5814672 m!6752256))

(declare-fun m!6752512 () Bool)

(assert (=> b!5814672 m!6752512))

(assert (=> b!5814672 m!6752512))

(declare-fun m!6752514 () Bool)

(assert (=> b!5814672 m!6752514))

(declare-fun m!6752516 () Bool)

(assert (=> d!1830856 m!6752516))

(assert (=> d!1830856 m!6752256))

(declare-fun m!6752518 () Bool)

(assert (=> d!1830856 m!6752518))

(declare-fun m!6752520 () Bool)

(assert (=> b!5814678 m!6752520))

(assert (=> b!5814403 d!1830856))

(declare-fun bs!1372603 () Bool)

(declare-fun d!1830866 () Bool)

(assert (= bs!1372603 (and d!1830866 b!5814389)))

(declare-fun lambda!317890 () Int)

(assert (=> bs!1372603 (= lambda!317890 lambda!317852)))

(declare-fun bs!1372604 () Bool)

(assert (= bs!1372604 (and d!1830866 d!1830798)))

(assert (=> bs!1372604 (= lambda!317890 lambda!317861)))

(declare-fun bs!1372605 () Bool)

(assert (= bs!1372605 (and d!1830866 d!1830856)))

(assert (=> bs!1372605 (= lambda!317890 lambda!317887)))

(declare-fun lt!2301003 () List!63798)

(assert (=> d!1830866 (forall!14938 lt!2301003 lambda!317890)))

(declare-fun e!3568890 () List!63798)

(assert (=> d!1830866 (= lt!2301003 e!3568890)))

(declare-fun c!1030555 () Bool)

(assert (=> d!1830866 (= c!1030555 ((_ is Cons!63676) zl!343))))

(assert (=> d!1830866 (= (unfocusZipperList!1261 zl!343) lt!2301003)))

(declare-fun b!5814700 () Bool)

(assert (=> b!5814700 (= e!3568890 (Cons!63674 (generalisedConcat!1448 (exprs!5717 (h!70124 zl!343))) (unfocusZipperList!1261 (t!377155 zl!343))))))

(declare-fun b!5814701 () Bool)

(assert (=> b!5814701 (= e!3568890 Nil!63674)))

(assert (= (and d!1830866 c!1030555) b!5814700))

(assert (= (and d!1830866 (not c!1030555)) b!5814701))

(declare-fun m!6752522 () Bool)

(assert (=> d!1830866 m!6752522))

(assert (=> b!5814700 m!6752298))

(declare-fun m!6752524 () Bool)

(assert (=> b!5814700 m!6752524))

(assert (=> b!5814403 d!1830866))

(declare-fun bs!1372606 () Bool)

(declare-fun d!1830868 () Bool)

(assert (= bs!1372606 (and d!1830868 b!5814389)))

(declare-fun lambda!317893 () Int)

(assert (=> bs!1372606 (= lambda!317893 lambda!317852)))

(declare-fun bs!1372607 () Bool)

(assert (= bs!1372607 (and d!1830868 d!1830798)))

(assert (=> bs!1372607 (= lambda!317893 lambda!317861)))

(declare-fun bs!1372608 () Bool)

(assert (= bs!1372608 (and d!1830868 d!1830856)))

(assert (=> bs!1372608 (= lambda!317893 lambda!317887)))

(declare-fun bs!1372609 () Bool)

(assert (= bs!1372609 (and d!1830868 d!1830866)))

(assert (=> bs!1372609 (= lambda!317893 lambda!317890)))

(assert (=> d!1830868 (= (inv!82829 (h!70124 zl!343)) (forall!14938 (exprs!5717 (h!70124 zl!343)) lambda!317893))))

(declare-fun bs!1372610 () Bool)

(assert (= bs!1372610 d!1830868))

(declare-fun m!6752534 () Bool)

(assert (=> bs!1372610 m!6752534))

(assert (=> b!5814420 d!1830868))

(declare-fun b!5814727 () Bool)

(declare-fun e!3568906 () (InoxSet Context!10434))

(assert (=> b!5814727 (= e!3568906 ((as const (Array Context!10434 Bool)) false))))

(declare-fun call!454155 () (InoxSet Context!10434))

(declare-fun e!3568905 () (InoxSet Context!10434))

(declare-fun b!5814728 () Bool)

(assert (=> b!5814728 (= e!3568905 ((_ map or) call!454155 (derivationStepZipperUp!1097 (Context!10435 (t!377153 (exprs!5717 lt!2300927))) (h!70123 s!2326))))))

(declare-fun b!5814729 () Bool)

(assert (=> b!5814729 (= e!3568905 e!3568906)))

(declare-fun c!1030563 () Bool)

(assert (=> b!5814729 (= c!1030563 ((_ is Cons!63674) (exprs!5717 lt!2300927)))))

(declare-fun bm!454150 () Bool)

(assert (=> bm!454150 (= call!454155 (derivationStepZipperDown!1171 (h!70122 (exprs!5717 lt!2300927)) (Context!10435 (t!377153 (exprs!5717 lt!2300927))) (h!70123 s!2326)))))

(declare-fun d!1830870 () Bool)

(declare-fun c!1030562 () Bool)

(declare-fun e!3568904 () Bool)

(assert (=> d!1830870 (= c!1030562 e!3568904)))

(declare-fun res!2452067 () Bool)

(assert (=> d!1830870 (=> (not res!2452067) (not e!3568904))))

(assert (=> d!1830870 (= res!2452067 ((_ is Cons!63674) (exprs!5717 lt!2300927)))))

(assert (=> d!1830870 (= (derivationStepZipperUp!1097 lt!2300927 (h!70123 s!2326)) e!3568905)))

(declare-fun b!5814730 () Bool)

(assert (=> b!5814730 (= e!3568906 call!454155)))

(declare-fun b!5814731 () Bool)

(declare-fun nullable!5857 (Regex!15833) Bool)

(assert (=> b!5814731 (= e!3568904 (nullable!5857 (h!70122 (exprs!5717 lt!2300927))))))

(assert (= (and d!1830870 res!2452067) b!5814731))

(assert (= (and d!1830870 c!1030562) b!5814728))

(assert (= (and d!1830870 (not c!1030562)) b!5814729))

(assert (= (and b!5814729 c!1030563) b!5814730))

(assert (= (and b!5814729 (not c!1030563)) b!5814727))

(assert (= (or b!5814728 b!5814730) bm!454150))

(declare-fun m!6752548 () Bool)

(assert (=> b!5814728 m!6752548))

(declare-fun m!6752550 () Bool)

(assert (=> bm!454150 m!6752550))

(declare-fun m!6752552 () Bool)

(assert (=> b!5814731 m!6752552))

(assert (=> b!5814399 d!1830870))

(declare-fun bs!1372617 () Bool)

(declare-fun d!1830874 () Bool)

(assert (= bs!1372617 (and d!1830874 b!5814396)))

(declare-fun lambda!317897 () Int)

(assert (=> bs!1372617 (= lambda!317897 lambda!317850)))

(declare-fun bs!1372618 () Bool)

(assert (= bs!1372618 (and d!1830874 d!1830852)))

(assert (=> bs!1372618 (= lambda!317897 lambda!317874)))

(assert (=> d!1830874 true))

(assert (=> d!1830874 (= (derivationStepZipper!1902 lt!2300954 (h!70123 s!2326)) (flatMap!1440 lt!2300954 lambda!317897))))

(declare-fun bs!1372619 () Bool)

(assert (= bs!1372619 d!1830874))

(declare-fun m!6752558 () Bool)

(assert (=> bs!1372619 m!6752558))

(assert (=> b!5814399 d!1830874))

(declare-fun d!1830878 () Bool)

(declare-fun dynLambda!24936 (Int Context!10434) (InoxSet Context!10434))

(assert (=> d!1830878 (= (flatMap!1440 lt!2300954 lambda!317850) (dynLambda!24936 lambda!317850 lt!2300953))))

(declare-fun lt!2301012 () Unit!156926)

(declare-fun choose!44193 ((InoxSet Context!10434) Context!10434 Int) Unit!156926)

(assert (=> d!1830878 (= lt!2301012 (choose!44193 lt!2300954 lt!2300953 lambda!317850))))

(assert (=> d!1830878 (= lt!2300954 (store ((as const (Array Context!10434 Bool)) false) lt!2300953 true))))

(assert (=> d!1830878 (= (lemmaFlatMapOnSingletonSet!972 lt!2300954 lt!2300953 lambda!317850) lt!2301012)))

(declare-fun b_lambda!219205 () Bool)

(assert (=> (not b_lambda!219205) (not d!1830878)))

(declare-fun bs!1372620 () Bool)

(assert (= bs!1372620 d!1830878))

(assert (=> bs!1372620 m!6752204))

(declare-fun m!6752560 () Bool)

(assert (=> bs!1372620 m!6752560))

(declare-fun m!6752562 () Bool)

(assert (=> bs!1372620 m!6752562))

(assert (=> bs!1372620 m!6752212))

(assert (=> b!5814399 d!1830878))

(declare-fun d!1830880 () Bool)

(declare-fun choose!44194 ((InoxSet Context!10434) Int) (InoxSet Context!10434))

(assert (=> d!1830880 (= (flatMap!1440 lt!2300954 lambda!317850) (choose!44194 lt!2300954 lambda!317850))))

(declare-fun bs!1372621 () Bool)

(assert (= bs!1372621 d!1830880))

(declare-fun m!6752564 () Bool)

(assert (=> bs!1372621 m!6752564))

(assert (=> b!5814399 d!1830880))

(declare-fun d!1830882 () Bool)

(assert (=> d!1830882 (= (flatMap!1440 lt!2300951 lambda!317850) (choose!44194 lt!2300951 lambda!317850))))

(declare-fun bs!1372622 () Bool)

(assert (= bs!1372622 d!1830882))

(declare-fun m!6752566 () Bool)

(assert (=> bs!1372622 m!6752566))

(assert (=> b!5814399 d!1830882))

(declare-fun d!1830884 () Bool)

(assert (=> d!1830884 (= (flatMap!1440 lt!2300951 lambda!317850) (dynLambda!24936 lambda!317850 lt!2300927))))

(declare-fun lt!2301015 () Unit!156926)

(assert (=> d!1830884 (= lt!2301015 (choose!44193 lt!2300951 lt!2300927 lambda!317850))))

(assert (=> d!1830884 (= lt!2300951 (store ((as const (Array Context!10434 Bool)) false) lt!2300927 true))))

(assert (=> d!1830884 (= (lemmaFlatMapOnSingletonSet!972 lt!2300951 lt!2300927 lambda!317850) lt!2301015)))

(declare-fun b_lambda!219207 () Bool)

(assert (=> (not b_lambda!219207) (not d!1830884)))

(declare-fun bs!1372623 () Bool)

(assert (= bs!1372623 d!1830884))

(assert (=> bs!1372623 m!6752216))

(declare-fun m!6752568 () Bool)

(assert (=> bs!1372623 m!6752568))

(declare-fun m!6752570 () Bool)

(assert (=> bs!1372623 m!6752570))

(assert (=> bs!1372623 m!6752218))

(assert (=> b!5814399 d!1830884))

(declare-fun b!5814752 () Bool)

(declare-fun e!3568921 () (InoxSet Context!10434))

(assert (=> b!5814752 (= e!3568921 ((as const (Array Context!10434 Bool)) false))))

(declare-fun b!5814753 () Bool)

(declare-fun e!3568920 () (InoxSet Context!10434))

(declare-fun call!454156 () (InoxSet Context!10434))

(assert (=> b!5814753 (= e!3568920 ((_ map or) call!454156 (derivationStepZipperUp!1097 (Context!10435 (t!377153 (exprs!5717 lt!2300953))) (h!70123 s!2326))))))

(declare-fun b!5814754 () Bool)

(assert (=> b!5814754 (= e!3568920 e!3568921)))

(declare-fun c!1030573 () Bool)

(assert (=> b!5814754 (= c!1030573 ((_ is Cons!63674) (exprs!5717 lt!2300953)))))

(declare-fun bm!454151 () Bool)

(assert (=> bm!454151 (= call!454156 (derivationStepZipperDown!1171 (h!70122 (exprs!5717 lt!2300953)) (Context!10435 (t!377153 (exprs!5717 lt!2300953))) (h!70123 s!2326)))))

(declare-fun d!1830886 () Bool)

(declare-fun c!1030572 () Bool)

(declare-fun e!3568919 () Bool)

(assert (=> d!1830886 (= c!1030572 e!3568919)))

(declare-fun res!2452072 () Bool)

(assert (=> d!1830886 (=> (not res!2452072) (not e!3568919))))

(assert (=> d!1830886 (= res!2452072 ((_ is Cons!63674) (exprs!5717 lt!2300953)))))

(assert (=> d!1830886 (= (derivationStepZipperUp!1097 lt!2300953 (h!70123 s!2326)) e!3568920)))

(declare-fun b!5814755 () Bool)

(assert (=> b!5814755 (= e!3568921 call!454156)))

(declare-fun b!5814756 () Bool)

(assert (=> b!5814756 (= e!3568919 (nullable!5857 (h!70122 (exprs!5717 lt!2300953))))))

(assert (= (and d!1830886 res!2452072) b!5814756))

(assert (= (and d!1830886 c!1030572) b!5814753))

(assert (= (and d!1830886 (not c!1030572)) b!5814754))

(assert (= (and b!5814754 c!1030573) b!5814755))

(assert (= (and b!5814754 (not c!1030573)) b!5814752))

(assert (= (or b!5814753 b!5814755) bm!454151))

(declare-fun m!6752572 () Bool)

(assert (=> b!5814753 m!6752572))

(declare-fun m!6752574 () Bool)

(assert (=> bm!454151 m!6752574))

(declare-fun m!6752576 () Bool)

(assert (=> b!5814756 m!6752576))

(assert (=> b!5814399 d!1830886))

(declare-fun bs!1372636 () Bool)

(declare-fun b!5814835 () Bool)

(assert (= bs!1372636 (and b!5814835 b!5814394)))

(declare-fun lambda!317916 () Int)

(assert (=> bs!1372636 (not (= lambda!317916 lambda!317847))))

(assert (=> bs!1372636 (= (and (= (reg!16162 lt!2300955) (reg!16162 r!7292)) (= lt!2300955 r!7292)) (= lambda!317916 lambda!317848))))

(assert (=> bs!1372636 (not (= lambda!317916 lambda!317849))))

(assert (=> b!5814835 true))

(assert (=> b!5814835 true))

(declare-fun bs!1372638 () Bool)

(declare-fun b!5814828 () Bool)

(assert (= bs!1372638 (and b!5814828 b!5814394)))

(declare-fun lambda!317917 () Int)

(assert (=> bs!1372638 (not (= lambda!317917 lambda!317847))))

(assert (=> bs!1372638 (not (= lambda!317917 lambda!317848))))

(assert (=> bs!1372638 (= (and (= (regOne!32178 lt!2300955) (reg!16162 r!7292)) (= (regTwo!32178 lt!2300955) r!7292)) (= lambda!317917 lambda!317849))))

(declare-fun bs!1372639 () Bool)

(assert (= bs!1372639 (and b!5814828 b!5814835)))

(assert (=> bs!1372639 (not (= lambda!317917 lambda!317916))))

(assert (=> b!5814828 true))

(assert (=> b!5814828 true))

(declare-fun b!5814825 () Bool)

(declare-fun c!1030597 () Bool)

(assert (=> b!5814825 (= c!1030597 ((_ is Union!15833) lt!2300955))))

(declare-fun e!3568961 () Bool)

(declare-fun e!3568960 () Bool)

(assert (=> b!5814825 (= e!3568961 e!3568960)))

(declare-fun b!5814826 () Bool)

(declare-fun c!1030596 () Bool)

(assert (=> b!5814826 (= c!1030596 ((_ is ElementMatch!15833) lt!2300955))))

(declare-fun e!3568963 () Bool)

(assert (=> b!5814826 (= e!3568963 e!3568961)))

(declare-fun b!5814827 () Bool)

(declare-fun res!2452099 () Bool)

(declare-fun e!3568964 () Bool)

(assert (=> b!5814827 (=> res!2452099 e!3568964)))

(declare-fun call!454162 () Bool)

(assert (=> b!5814827 (= res!2452099 call!454162)))

(declare-fun e!3568959 () Bool)

(assert (=> b!5814827 (= e!3568959 e!3568964)))

(declare-fun call!454161 () Bool)

(assert (=> b!5814828 (= e!3568959 call!454161)))

(declare-fun b!5814829 () Bool)

(declare-fun e!3568962 () Bool)

(assert (=> b!5814829 (= e!3568962 (matchRSpec!2936 (regTwo!32179 lt!2300955) s!2326))))

(declare-fun b!5814830 () Bool)

(assert (=> b!5814830 (= e!3568961 (= s!2326 (Cons!63675 (c!1030465 lt!2300955) Nil!63675)))))

(declare-fun b!5814831 () Bool)

(assert (=> b!5814831 (= e!3568960 e!3568959)))

(declare-fun c!1030599 () Bool)

(assert (=> b!5814831 (= c!1030599 ((_ is Star!15833) lt!2300955))))

(declare-fun b!5814833 () Bool)

(assert (=> b!5814833 (= e!3568960 e!3568962)))

(declare-fun res!2452098 () Bool)

(assert (=> b!5814833 (= res!2452098 (matchRSpec!2936 (regOne!32179 lt!2300955) s!2326))))

(assert (=> b!5814833 (=> res!2452098 e!3568962)))

(declare-fun b!5814834 () Bool)

(declare-fun e!3568958 () Bool)

(assert (=> b!5814834 (= e!3568958 call!454162)))

(declare-fun bm!454156 () Bool)

(assert (=> bm!454156 (= call!454161 (Exists!2933 (ite c!1030599 lambda!317916 lambda!317917)))))

(assert (=> b!5814835 (= e!3568964 call!454161)))

(declare-fun bm!454157 () Bool)

(assert (=> bm!454157 (= call!454162 (isEmpty!35595 s!2326))))

(declare-fun b!5814832 () Bool)

(assert (=> b!5814832 (= e!3568958 e!3568963)))

(declare-fun res!2452097 () Bool)

(assert (=> b!5814832 (= res!2452097 (not ((_ is EmptyLang!15833) lt!2300955)))))

(assert (=> b!5814832 (=> (not res!2452097) (not e!3568963))))

(declare-fun d!1830888 () Bool)

(declare-fun c!1030598 () Bool)

(assert (=> d!1830888 (= c!1030598 ((_ is EmptyExpr!15833) lt!2300955))))

(assert (=> d!1830888 (= (matchRSpec!2936 lt!2300955 s!2326) e!3568958)))

(assert (= (and d!1830888 c!1030598) b!5814834))

(assert (= (and d!1830888 (not c!1030598)) b!5814832))

(assert (= (and b!5814832 res!2452097) b!5814826))

(assert (= (and b!5814826 c!1030596) b!5814830))

(assert (= (and b!5814826 (not c!1030596)) b!5814825))

(assert (= (and b!5814825 c!1030597) b!5814833))

(assert (= (and b!5814825 (not c!1030597)) b!5814831))

(assert (= (and b!5814833 (not res!2452098)) b!5814829))

(assert (= (and b!5814831 c!1030599) b!5814827))

(assert (= (and b!5814831 (not c!1030599)) b!5814828))

(assert (= (and b!5814827 (not res!2452099)) b!5814835))

(assert (= (or b!5814835 b!5814828) bm!454156))

(assert (= (or b!5814834 b!5814827) bm!454157))

(declare-fun m!6752652 () Bool)

(assert (=> b!5814829 m!6752652))

(declare-fun m!6752654 () Bool)

(assert (=> b!5814833 m!6752654))

(declare-fun m!6752656 () Bool)

(assert (=> bm!454156 m!6752656))

(assert (=> bm!454157 m!6752276))

(assert (=> b!5814422 d!1830888))

(declare-fun b!5814876 () Bool)

(declare-fun e!3568985 () Bool)

(declare-fun e!3568987 () Bool)

(assert (=> b!5814876 (= e!3568985 e!3568987)))

(declare-fun res!2452125 () Bool)

(assert (=> b!5814876 (=> res!2452125 e!3568987)))

(declare-fun call!454165 () Bool)

(assert (=> b!5814876 (= res!2452125 call!454165)))

(declare-fun b!5814877 () Bool)

(declare-fun e!3568990 () Bool)

(assert (=> b!5814877 (= e!3568990 e!3568985)))

(declare-fun res!2452128 () Bool)

(assert (=> b!5814877 (=> (not res!2452128) (not e!3568985))))

(declare-fun lt!2301042 () Bool)

(assert (=> b!5814877 (= res!2452128 (not lt!2301042))))

(declare-fun b!5814878 () Bool)

(declare-fun e!3568989 () Bool)

(assert (=> b!5814878 (= e!3568989 (nullable!5857 lt!2300955))))

(declare-fun b!5814879 () Bool)

(declare-fun res!2452129 () Bool)

(assert (=> b!5814879 (=> res!2452129 e!3568990)))

(declare-fun e!3568988 () Bool)

(assert (=> b!5814879 (= res!2452129 e!3568988)))

(declare-fun res!2452124 () Bool)

(assert (=> b!5814879 (=> (not res!2452124) (not e!3568988))))

(assert (=> b!5814879 (= res!2452124 lt!2301042)))

(declare-fun b!5814880 () Bool)

(declare-fun e!3568986 () Bool)

(assert (=> b!5814880 (= e!3568986 (not lt!2301042))))

(declare-fun bm!454160 () Bool)

(assert (=> bm!454160 (= call!454165 (isEmpty!35595 s!2326))))

(declare-fun b!5814881 () Bool)

(declare-fun derivativeStep!4600 (Regex!15833 C!31936) Regex!15833)

(assert (=> b!5814881 (= e!3568989 (matchR!8018 (derivativeStep!4600 lt!2300955 (head!12273 s!2326)) (tail!11368 s!2326)))))

(declare-fun b!5814882 () Bool)

(declare-fun res!2452127 () Bool)

(assert (=> b!5814882 (=> (not res!2452127) (not e!3568988))))

(assert (=> b!5814882 (= res!2452127 (not call!454165))))

(declare-fun b!5814883 () Bool)

(declare-fun res!2452126 () Bool)

(assert (=> b!5814883 (=> res!2452126 e!3568990)))

(assert (=> b!5814883 (= res!2452126 (not ((_ is ElementMatch!15833) lt!2300955)))))

(assert (=> b!5814883 (= e!3568986 e!3568990)))

(declare-fun b!5814885 () Bool)

(declare-fun res!2452123 () Bool)

(assert (=> b!5814885 (=> res!2452123 e!3568987)))

(assert (=> b!5814885 (= res!2452123 (not (isEmpty!35595 (tail!11368 s!2326))))))

(declare-fun b!5814886 () Bool)

(declare-fun e!3568991 () Bool)

(assert (=> b!5814886 (= e!3568991 e!3568986)))

(declare-fun c!1030611 () Bool)

(assert (=> b!5814886 (= c!1030611 ((_ is EmptyLang!15833) lt!2300955))))

(declare-fun b!5814887 () Bool)

(declare-fun res!2452122 () Bool)

(assert (=> b!5814887 (=> (not res!2452122) (not e!3568988))))

(assert (=> b!5814887 (= res!2452122 (isEmpty!35595 (tail!11368 s!2326)))))

(declare-fun b!5814888 () Bool)

(assert (=> b!5814888 (= e!3568988 (= (head!12273 s!2326) (c!1030465 lt!2300955)))))

(declare-fun b!5814889 () Bool)

(assert (=> b!5814889 (= e!3568991 (= lt!2301042 call!454165))))

(declare-fun d!1830910 () Bool)

(assert (=> d!1830910 e!3568991))

(declare-fun c!1030609 () Bool)

(assert (=> d!1830910 (= c!1030609 ((_ is EmptyExpr!15833) lt!2300955))))

(assert (=> d!1830910 (= lt!2301042 e!3568989)))

(declare-fun c!1030610 () Bool)

(assert (=> d!1830910 (= c!1030610 (isEmpty!35595 s!2326))))

(assert (=> d!1830910 (validRegex!7569 lt!2300955)))

(assert (=> d!1830910 (= (matchR!8018 lt!2300955 s!2326) lt!2301042)))

(declare-fun b!5814884 () Bool)

(assert (=> b!5814884 (= e!3568987 (not (= (head!12273 s!2326) (c!1030465 lt!2300955))))))

(assert (= (and d!1830910 c!1030610) b!5814878))

(assert (= (and d!1830910 (not c!1030610)) b!5814881))

(assert (= (and d!1830910 c!1030609) b!5814889))

(assert (= (and d!1830910 (not c!1030609)) b!5814886))

(assert (= (and b!5814886 c!1030611) b!5814880))

(assert (= (and b!5814886 (not c!1030611)) b!5814883))

(assert (= (and b!5814883 (not res!2452126)) b!5814879))

(assert (= (and b!5814879 res!2452124) b!5814882))

(assert (= (and b!5814882 res!2452127) b!5814887))

(assert (= (and b!5814887 res!2452122) b!5814888))

(assert (= (and b!5814879 (not res!2452129)) b!5814877))

(assert (= (and b!5814877 res!2452128) b!5814876))

(assert (= (and b!5814876 (not res!2452125)) b!5814885))

(assert (= (and b!5814885 (not res!2452123)) b!5814884))

(assert (= (or b!5814889 b!5814876 b!5814882) bm!454160))

(assert (=> d!1830910 m!6752276))

(declare-fun m!6752682 () Bool)

(assert (=> d!1830910 m!6752682))

(assert (=> bm!454160 m!6752276))

(assert (=> b!5814881 m!6752326))

(assert (=> b!5814881 m!6752326))

(declare-fun m!6752684 () Bool)

(assert (=> b!5814881 m!6752684))

(assert (=> b!5814881 m!6752330))

(assert (=> b!5814881 m!6752684))

(assert (=> b!5814881 m!6752330))

(declare-fun m!6752686 () Bool)

(assert (=> b!5814881 m!6752686))

(declare-fun m!6752688 () Bool)

(assert (=> b!5814878 m!6752688))

(assert (=> b!5814887 m!6752330))

(assert (=> b!5814887 m!6752330))

(declare-fun m!6752690 () Bool)

(assert (=> b!5814887 m!6752690))

(assert (=> b!5814884 m!6752326))

(assert (=> b!5814885 m!6752330))

(assert (=> b!5814885 m!6752330))

(assert (=> b!5814885 m!6752690))

(assert (=> b!5814888 m!6752326))

(assert (=> b!5814422 d!1830910))

(declare-fun d!1830920 () Bool)

(assert (=> d!1830920 (= (matchR!8018 lt!2300955 s!2326) (matchRSpec!2936 lt!2300955 s!2326))))

(declare-fun lt!2301045 () Unit!156926)

(declare-fun choose!44195 (Regex!15833 List!63799) Unit!156926)

(assert (=> d!1830920 (= lt!2301045 (choose!44195 lt!2300955 s!2326))))

(assert (=> d!1830920 (validRegex!7569 lt!2300955)))

(assert (=> d!1830920 (= (mainMatchTheorem!2936 lt!2300955 s!2326) lt!2301045)))

(declare-fun bs!1372642 () Bool)

(assert (= bs!1372642 d!1830920))

(assert (=> bs!1372642 m!6752268))

(assert (=> bs!1372642 m!6752266))

(declare-fun m!6752692 () Bool)

(assert (=> bs!1372642 m!6752692))

(assert (=> bs!1372642 m!6752682))

(assert (=> b!5814422 d!1830920))

(declare-fun bs!1372643 () Bool)

(declare-fun b!5814900 () Bool)

(assert (= bs!1372643 (and b!5814900 b!5814394)))

(declare-fun lambda!317918 () Int)

(assert (=> bs!1372643 (= lambda!317918 lambda!317848)))

(assert (=> bs!1372643 (not (= lambda!317918 lambda!317847))))

(assert (=> bs!1372643 (not (= lambda!317918 lambda!317849))))

(declare-fun bs!1372644 () Bool)

(assert (= bs!1372644 (and b!5814900 b!5814835)))

(assert (=> bs!1372644 (= (and (= (reg!16162 r!7292) (reg!16162 lt!2300955)) (= r!7292 lt!2300955)) (= lambda!317918 lambda!317916))))

(declare-fun bs!1372645 () Bool)

(assert (= bs!1372645 (and b!5814900 b!5814828)))

(assert (=> bs!1372645 (not (= lambda!317918 lambda!317917))))

(assert (=> b!5814900 true))

(assert (=> b!5814900 true))

(declare-fun bs!1372646 () Bool)

(declare-fun b!5814893 () Bool)

(assert (= bs!1372646 (and b!5814893 b!5814394)))

(declare-fun lambda!317919 () Int)

(assert (=> bs!1372646 (not (= lambda!317919 lambda!317848))))

(assert (=> bs!1372646 (not (= lambda!317919 lambda!317847))))

(assert (=> bs!1372646 (= (and (= (regOne!32178 r!7292) (reg!16162 r!7292)) (= (regTwo!32178 r!7292) r!7292)) (= lambda!317919 lambda!317849))))

(declare-fun bs!1372647 () Bool)

(assert (= bs!1372647 (and b!5814893 b!5814835)))

(assert (=> bs!1372647 (not (= lambda!317919 lambda!317916))))

(declare-fun bs!1372648 () Bool)

(assert (= bs!1372648 (and b!5814893 b!5814828)))

(assert (=> bs!1372648 (= (and (= (regOne!32178 r!7292) (regOne!32178 lt!2300955)) (= (regTwo!32178 r!7292) (regTwo!32178 lt!2300955))) (= lambda!317919 lambda!317917))))

(declare-fun bs!1372649 () Bool)

(assert (= bs!1372649 (and b!5814893 b!5814900)))

(assert (=> bs!1372649 (not (= lambda!317919 lambda!317918))))

(assert (=> b!5814893 true))

(assert (=> b!5814893 true))

(declare-fun b!5814890 () Bool)

(declare-fun c!1030613 () Bool)

(assert (=> b!5814890 (= c!1030613 ((_ is Union!15833) r!7292))))

(declare-fun e!3568995 () Bool)

(declare-fun e!3568994 () Bool)

(assert (=> b!5814890 (= e!3568995 e!3568994)))

(declare-fun b!5814891 () Bool)

(declare-fun c!1030612 () Bool)

(assert (=> b!5814891 (= c!1030612 ((_ is ElementMatch!15833) r!7292))))

(declare-fun e!3568997 () Bool)

(assert (=> b!5814891 (= e!3568997 e!3568995)))

(declare-fun b!5814892 () Bool)

(declare-fun res!2452132 () Bool)

(declare-fun e!3568998 () Bool)

(assert (=> b!5814892 (=> res!2452132 e!3568998)))

(declare-fun call!454167 () Bool)

(assert (=> b!5814892 (= res!2452132 call!454167)))

(declare-fun e!3568993 () Bool)

(assert (=> b!5814892 (= e!3568993 e!3568998)))

(declare-fun call!454166 () Bool)

(assert (=> b!5814893 (= e!3568993 call!454166)))

(declare-fun b!5814894 () Bool)

(declare-fun e!3568996 () Bool)

(assert (=> b!5814894 (= e!3568996 (matchRSpec!2936 (regTwo!32179 r!7292) s!2326))))

(declare-fun b!5814895 () Bool)

(assert (=> b!5814895 (= e!3568995 (= s!2326 (Cons!63675 (c!1030465 r!7292) Nil!63675)))))

(declare-fun b!5814896 () Bool)

(assert (=> b!5814896 (= e!3568994 e!3568993)))

(declare-fun c!1030615 () Bool)

(assert (=> b!5814896 (= c!1030615 ((_ is Star!15833) r!7292))))

(declare-fun b!5814898 () Bool)

(assert (=> b!5814898 (= e!3568994 e!3568996)))

(declare-fun res!2452131 () Bool)

(assert (=> b!5814898 (= res!2452131 (matchRSpec!2936 (regOne!32179 r!7292) s!2326))))

(assert (=> b!5814898 (=> res!2452131 e!3568996)))

(declare-fun b!5814899 () Bool)

(declare-fun e!3568992 () Bool)

(assert (=> b!5814899 (= e!3568992 call!454167)))

(declare-fun bm!454161 () Bool)

(assert (=> bm!454161 (= call!454166 (Exists!2933 (ite c!1030615 lambda!317918 lambda!317919)))))

(assert (=> b!5814900 (= e!3568998 call!454166)))

(declare-fun bm!454162 () Bool)

(assert (=> bm!454162 (= call!454167 (isEmpty!35595 s!2326))))

(declare-fun b!5814897 () Bool)

(assert (=> b!5814897 (= e!3568992 e!3568997)))

(declare-fun res!2452130 () Bool)

(assert (=> b!5814897 (= res!2452130 (not ((_ is EmptyLang!15833) r!7292)))))

(assert (=> b!5814897 (=> (not res!2452130) (not e!3568997))))

(declare-fun d!1830922 () Bool)

(declare-fun c!1030614 () Bool)

(assert (=> d!1830922 (= c!1030614 ((_ is EmptyExpr!15833) r!7292))))

(assert (=> d!1830922 (= (matchRSpec!2936 r!7292 s!2326) e!3568992)))

(assert (= (and d!1830922 c!1030614) b!5814899))

(assert (= (and d!1830922 (not c!1030614)) b!5814897))

(assert (= (and b!5814897 res!2452130) b!5814891))

(assert (= (and b!5814891 c!1030612) b!5814895))

(assert (= (and b!5814891 (not c!1030612)) b!5814890))

(assert (= (and b!5814890 c!1030613) b!5814898))

(assert (= (and b!5814890 (not c!1030613)) b!5814896))

(assert (= (and b!5814898 (not res!2452131)) b!5814894))

(assert (= (and b!5814896 c!1030615) b!5814892))

(assert (= (and b!5814896 (not c!1030615)) b!5814893))

(assert (= (and b!5814892 (not res!2452132)) b!5814900))

(assert (= (or b!5814900 b!5814893) bm!454161))

(assert (= (or b!5814899 b!5814892) bm!454162))

(declare-fun m!6752694 () Bool)

(assert (=> b!5814894 m!6752694))

(declare-fun m!6752696 () Bool)

(assert (=> b!5814898 m!6752696))

(declare-fun m!6752698 () Bool)

(assert (=> bm!454161 m!6752698))

(assert (=> bm!454162 m!6752276))

(assert (=> b!5814417 d!1830922))

(declare-fun b!5814919 () Bool)

(declare-fun e!3569009 () Bool)

(declare-fun e!3569011 () Bool)

(assert (=> b!5814919 (= e!3569009 e!3569011)))

(declare-fun res!2452146 () Bool)

(assert (=> b!5814919 (=> res!2452146 e!3569011)))

(declare-fun call!454168 () Bool)

(assert (=> b!5814919 (= res!2452146 call!454168)))

(declare-fun b!5814920 () Bool)

(declare-fun e!3569014 () Bool)

(assert (=> b!5814920 (= e!3569014 e!3569009)))

(declare-fun res!2452149 () Bool)

(assert (=> b!5814920 (=> (not res!2452149) (not e!3569009))))

(declare-fun lt!2301052 () Bool)

(assert (=> b!5814920 (= res!2452149 (not lt!2301052))))

(declare-fun b!5814921 () Bool)

(declare-fun e!3569013 () Bool)

(assert (=> b!5814921 (= e!3569013 (nullable!5857 r!7292))))

(declare-fun b!5814922 () Bool)

(declare-fun res!2452150 () Bool)

(assert (=> b!5814922 (=> res!2452150 e!3569014)))

(declare-fun e!3569012 () Bool)

(assert (=> b!5814922 (= res!2452150 e!3569012)))

(declare-fun res!2452145 () Bool)

(assert (=> b!5814922 (=> (not res!2452145) (not e!3569012))))

(assert (=> b!5814922 (= res!2452145 lt!2301052)))

(declare-fun b!5814923 () Bool)

(declare-fun e!3569010 () Bool)

(assert (=> b!5814923 (= e!3569010 (not lt!2301052))))

(declare-fun bm!454163 () Bool)

(assert (=> bm!454163 (= call!454168 (isEmpty!35595 s!2326))))

(declare-fun b!5814924 () Bool)

(assert (=> b!5814924 (= e!3569013 (matchR!8018 (derivativeStep!4600 r!7292 (head!12273 s!2326)) (tail!11368 s!2326)))))

(declare-fun b!5814925 () Bool)

(declare-fun res!2452148 () Bool)

(assert (=> b!5814925 (=> (not res!2452148) (not e!3569012))))

(assert (=> b!5814925 (= res!2452148 (not call!454168))))

(declare-fun b!5814926 () Bool)

(declare-fun res!2452147 () Bool)

(assert (=> b!5814926 (=> res!2452147 e!3569014)))

(assert (=> b!5814926 (= res!2452147 (not ((_ is ElementMatch!15833) r!7292)))))

(assert (=> b!5814926 (= e!3569010 e!3569014)))

(declare-fun b!5814928 () Bool)

(declare-fun res!2452144 () Bool)

(assert (=> b!5814928 (=> res!2452144 e!3569011)))

(assert (=> b!5814928 (= res!2452144 (not (isEmpty!35595 (tail!11368 s!2326))))))

(declare-fun b!5814929 () Bool)

(declare-fun e!3569015 () Bool)

(assert (=> b!5814929 (= e!3569015 e!3569010)))

(declare-fun c!1030622 () Bool)

(assert (=> b!5814929 (= c!1030622 ((_ is EmptyLang!15833) r!7292))))

(declare-fun b!5814930 () Bool)

(declare-fun res!2452143 () Bool)

(assert (=> b!5814930 (=> (not res!2452143) (not e!3569012))))

(assert (=> b!5814930 (= res!2452143 (isEmpty!35595 (tail!11368 s!2326)))))

(declare-fun b!5814931 () Bool)

(assert (=> b!5814931 (= e!3569012 (= (head!12273 s!2326) (c!1030465 r!7292)))))

(declare-fun b!5814932 () Bool)

(assert (=> b!5814932 (= e!3569015 (= lt!2301052 call!454168))))

(declare-fun d!1830924 () Bool)

(assert (=> d!1830924 e!3569015))

(declare-fun c!1030620 () Bool)

(assert (=> d!1830924 (= c!1030620 ((_ is EmptyExpr!15833) r!7292))))

(assert (=> d!1830924 (= lt!2301052 e!3569013)))

(declare-fun c!1030621 () Bool)

(assert (=> d!1830924 (= c!1030621 (isEmpty!35595 s!2326))))

(assert (=> d!1830924 (validRegex!7569 r!7292)))

(assert (=> d!1830924 (= (matchR!8018 r!7292 s!2326) lt!2301052)))

(declare-fun b!5814927 () Bool)

(assert (=> b!5814927 (= e!3569011 (not (= (head!12273 s!2326) (c!1030465 r!7292))))))

(assert (= (and d!1830924 c!1030621) b!5814921))

(assert (= (and d!1830924 (not c!1030621)) b!5814924))

(assert (= (and d!1830924 c!1030620) b!5814932))

(assert (= (and d!1830924 (not c!1030620)) b!5814929))

(assert (= (and b!5814929 c!1030622) b!5814923))

(assert (= (and b!5814929 (not c!1030622)) b!5814926))

(assert (= (and b!5814926 (not res!2452147)) b!5814922))

(assert (= (and b!5814922 res!2452145) b!5814925))

(assert (= (and b!5814925 res!2452148) b!5814930))

(assert (= (and b!5814930 res!2452143) b!5814931))

(assert (= (and b!5814922 (not res!2452150)) b!5814920))

(assert (= (and b!5814920 res!2452149) b!5814919))

(assert (= (and b!5814919 (not res!2452146)) b!5814928))

(assert (= (and b!5814928 (not res!2452144)) b!5814927))

(assert (= (or b!5814932 b!5814919 b!5814925) bm!454163))

(assert (=> d!1830924 m!6752276))

(assert (=> d!1830924 m!6752222))

(assert (=> bm!454163 m!6752276))

(assert (=> b!5814924 m!6752326))

(assert (=> b!5814924 m!6752326))

(declare-fun m!6752700 () Bool)

(assert (=> b!5814924 m!6752700))

(assert (=> b!5814924 m!6752330))

(assert (=> b!5814924 m!6752700))

(assert (=> b!5814924 m!6752330))

(declare-fun m!6752702 () Bool)

(assert (=> b!5814924 m!6752702))

(declare-fun m!6752704 () Bool)

(assert (=> b!5814921 m!6752704))

(assert (=> b!5814930 m!6752330))

(assert (=> b!5814930 m!6752330))

(assert (=> b!5814930 m!6752690))

(assert (=> b!5814927 m!6752326))

(assert (=> b!5814928 m!6752330))

(assert (=> b!5814928 m!6752330))

(assert (=> b!5814928 m!6752690))

(assert (=> b!5814931 m!6752326))

(assert (=> b!5814417 d!1830924))

(declare-fun d!1830926 () Bool)

(assert (=> d!1830926 (= (matchR!8018 r!7292 s!2326) (matchRSpec!2936 r!7292 s!2326))))

(declare-fun lt!2301053 () Unit!156926)

(assert (=> d!1830926 (= lt!2301053 (choose!44195 r!7292 s!2326))))

(assert (=> d!1830926 (validRegex!7569 r!7292)))

(assert (=> d!1830926 (= (mainMatchTheorem!2936 r!7292 s!2326) lt!2301053)))

(declare-fun bs!1372650 () Bool)

(assert (= bs!1372650 d!1830926))

(assert (=> bs!1372650 m!6752292))

(assert (=> bs!1372650 m!6752290))

(declare-fun m!6752706 () Bool)

(assert (=> bs!1372650 m!6752706))

(assert (=> bs!1372650 m!6752222))

(assert (=> b!5814417 d!1830926))

(declare-fun b!5814991 () Bool)

(declare-fun e!3569052 () (InoxSet Context!10434))

(declare-fun e!3569053 () (InoxSet Context!10434))

(assert (=> b!5814991 (= e!3569052 e!3569053)))

(declare-fun c!1030648 () Bool)

(assert (=> b!5814991 (= c!1030648 ((_ is Concat!24678) r!7292))))

(declare-fun b!5814992 () Bool)

(declare-fun e!3569054 () Bool)

(assert (=> b!5814992 (= e!3569054 (nullable!5857 (regOne!32178 r!7292)))))

(declare-fun bm!454184 () Bool)

(declare-fun call!454190 () List!63798)

(declare-fun call!454194 () List!63798)

(assert (=> bm!454184 (= call!454190 call!454194)))

(declare-fun b!5814994 () Bool)

(declare-fun c!1030649 () Bool)

(assert (=> b!5814994 (= c!1030649 e!3569054)))

(declare-fun res!2452163 () Bool)

(assert (=> b!5814994 (=> (not res!2452163) (not e!3569054))))

(assert (=> b!5814994 (= res!2452163 ((_ is Concat!24678) r!7292))))

(declare-fun e!3569051 () (InoxSet Context!10434))

(assert (=> b!5814994 (= e!3569051 e!3569052)))

(declare-fun bm!454185 () Bool)

(declare-fun call!454192 () (InoxSet Context!10434))

(declare-fun call!454193 () (InoxSet Context!10434))

(assert (=> bm!454185 (= call!454192 call!454193)))

(declare-fun b!5814995 () Bool)

(declare-fun e!3569050 () (InoxSet Context!10434))

(assert (=> b!5814995 (= e!3569050 (store ((as const (Array Context!10434 Bool)) false) (Context!10435 Nil!63674) true))))

(declare-fun b!5814996 () Bool)

(declare-fun call!454191 () (InoxSet Context!10434))

(assert (=> b!5814996 (= e!3569053 call!454191)))

(declare-fun b!5814997 () Bool)

(declare-fun e!3569049 () (InoxSet Context!10434))

(assert (=> b!5814997 (= e!3569049 call!454191)))

(declare-fun c!1030650 () Bool)

(declare-fun bm!454186 () Bool)

(declare-fun call!454189 () (InoxSet Context!10434))

(assert (=> bm!454186 (= call!454189 (derivationStepZipperDown!1171 (ite c!1030650 (regTwo!32179 r!7292) (regOne!32178 r!7292)) (ite c!1030650 (Context!10435 Nil!63674) (Context!10435 call!454194)) (h!70123 s!2326)))))

(declare-fun b!5814998 () Bool)

(assert (=> b!5814998 (= e!3569052 ((_ map or) call!454189 call!454192))))

(declare-fun b!5814999 () Bool)

(declare-fun c!1030647 () Bool)

(assert (=> b!5814999 (= c!1030647 ((_ is Star!15833) r!7292))))

(assert (=> b!5814999 (= e!3569053 e!3569049)))

(declare-fun bm!454187 () Bool)

(assert (=> bm!454187 (= call!454191 call!454192)))

(declare-fun d!1830928 () Bool)

(declare-fun c!1030646 () Bool)

(assert (=> d!1830928 (= c!1030646 (and ((_ is ElementMatch!15833) r!7292) (= (c!1030465 r!7292) (h!70123 s!2326))))))

(assert (=> d!1830928 (= (derivationStepZipperDown!1171 r!7292 (Context!10435 Nil!63674) (h!70123 s!2326)) e!3569050)))

(declare-fun b!5814993 () Bool)

(assert (=> b!5814993 (= e!3569049 ((as const (Array Context!10434 Bool)) false))))

(declare-fun b!5815000 () Bool)

(assert (=> b!5815000 (= e!3569051 ((_ map or) call!454193 call!454189))))

(declare-fun b!5815001 () Bool)

(assert (=> b!5815001 (= e!3569050 e!3569051)))

(assert (=> b!5815001 (= c!1030650 ((_ is Union!15833) r!7292))))

(declare-fun bm!454188 () Bool)

(assert (=> bm!454188 (= call!454193 (derivationStepZipperDown!1171 (ite c!1030650 (regOne!32179 r!7292) (ite c!1030649 (regTwo!32178 r!7292) (ite c!1030648 (regOne!32178 r!7292) (reg!16162 r!7292)))) (ite (or c!1030650 c!1030649) (Context!10435 Nil!63674) (Context!10435 call!454190)) (h!70123 s!2326)))))

(declare-fun bm!454189 () Bool)

(declare-fun $colon$colon!1812 (List!63798 Regex!15833) List!63798)

(assert (=> bm!454189 (= call!454194 ($colon$colon!1812 (exprs!5717 (Context!10435 Nil!63674)) (ite (or c!1030649 c!1030648) (regTwo!32178 r!7292) r!7292)))))

(assert (= (and d!1830928 c!1030646) b!5814995))

(assert (= (and d!1830928 (not c!1030646)) b!5815001))

(assert (= (and b!5815001 c!1030650) b!5815000))

(assert (= (and b!5815001 (not c!1030650)) b!5814994))

(assert (= (and b!5814994 res!2452163) b!5814992))

(assert (= (and b!5814994 c!1030649) b!5814998))

(assert (= (and b!5814994 (not c!1030649)) b!5814991))

(assert (= (and b!5814991 c!1030648) b!5814996))

(assert (= (and b!5814991 (not c!1030648)) b!5814999))

(assert (= (and b!5814999 c!1030647) b!5814997))

(assert (= (and b!5814999 (not c!1030647)) b!5814993))

(assert (= (or b!5814996 b!5814997) bm!454184))

(assert (= (or b!5814996 b!5814997) bm!454187))

(assert (= (or b!5814998 bm!454184) bm!454189))

(assert (= (or b!5814998 bm!454187) bm!454185))

(assert (= (or b!5815000 b!5814998) bm!454186))

(assert (= (or b!5815000 bm!454185) bm!454188))

(declare-fun m!6752792 () Bool)

(assert (=> bm!454189 m!6752792))

(declare-fun m!6752794 () Bool)

(assert (=> b!5814995 m!6752794))

(declare-fun m!6752798 () Bool)

(assert (=> bm!454186 m!6752798))

(declare-fun m!6752800 () Bool)

(assert (=> bm!454188 m!6752800))

(declare-fun m!6752802 () Bool)

(assert (=> b!5814992 m!6752802))

(assert (=> b!5814397 d!1830928))

(declare-fun b!5815005 () Bool)

(declare-fun e!3569059 () (InoxSet Context!10434))

(assert (=> b!5815005 (= e!3569059 ((as const (Array Context!10434 Bool)) false))))

(declare-fun b!5815006 () Bool)

(declare-fun call!454195 () (InoxSet Context!10434))

(declare-fun e!3569058 () (InoxSet Context!10434))

(assert (=> b!5815006 (= e!3569058 ((_ map or) call!454195 (derivationStepZipperUp!1097 (Context!10435 (t!377153 (exprs!5717 (Context!10435 (Cons!63674 r!7292 Nil!63674))))) (h!70123 s!2326))))))

(declare-fun b!5815007 () Bool)

(assert (=> b!5815007 (= e!3569058 e!3569059)))

(declare-fun c!1030653 () Bool)

(assert (=> b!5815007 (= c!1030653 ((_ is Cons!63674) (exprs!5717 (Context!10435 (Cons!63674 r!7292 Nil!63674)))))))

(declare-fun bm!454190 () Bool)

(assert (=> bm!454190 (= call!454195 (derivationStepZipperDown!1171 (h!70122 (exprs!5717 (Context!10435 (Cons!63674 r!7292 Nil!63674)))) (Context!10435 (t!377153 (exprs!5717 (Context!10435 (Cons!63674 r!7292 Nil!63674))))) (h!70123 s!2326)))))

(declare-fun d!1830960 () Bool)

(declare-fun c!1030652 () Bool)

(declare-fun e!3569057 () Bool)

(assert (=> d!1830960 (= c!1030652 e!3569057)))

(declare-fun res!2452165 () Bool)

(assert (=> d!1830960 (=> (not res!2452165) (not e!3569057))))

(assert (=> d!1830960 (= res!2452165 ((_ is Cons!63674) (exprs!5717 (Context!10435 (Cons!63674 r!7292 Nil!63674)))))))

(assert (=> d!1830960 (= (derivationStepZipperUp!1097 (Context!10435 (Cons!63674 r!7292 Nil!63674)) (h!70123 s!2326)) e!3569058)))

(declare-fun b!5815008 () Bool)

(assert (=> b!5815008 (= e!3569059 call!454195)))

(declare-fun b!5815009 () Bool)

(assert (=> b!5815009 (= e!3569057 (nullable!5857 (h!70122 (exprs!5717 (Context!10435 (Cons!63674 r!7292 Nil!63674))))))))

(assert (= (and d!1830960 res!2452165) b!5815009))

(assert (= (and d!1830960 c!1030652) b!5815006))

(assert (= (and d!1830960 (not c!1030652)) b!5815007))

(assert (= (and b!5815007 c!1030653) b!5815008))

(assert (= (and b!5815007 (not c!1030653)) b!5815005))

(assert (= (or b!5815006 b!5815008) bm!454190))

(declare-fun m!6752820 () Bool)

(assert (=> b!5815006 m!6752820))

(declare-fun m!6752824 () Bool)

(assert (=> bm!454190 m!6752824))

(declare-fun m!6752826 () Bool)

(assert (=> b!5815009 m!6752826))

(assert (=> b!5814397 d!1830960))

(declare-fun bs!1372667 () Bool)

(declare-fun d!1830966 () Bool)

(assert (= bs!1372667 (and d!1830966 b!5814396)))

(declare-fun lambda!317923 () Int)

(assert (=> bs!1372667 (= lambda!317923 lambda!317850)))

(declare-fun bs!1372668 () Bool)

(assert (= bs!1372668 (and d!1830966 d!1830852)))

(assert (=> bs!1372668 (= lambda!317923 lambda!317874)))

(declare-fun bs!1372669 () Bool)

(assert (= bs!1372669 (and d!1830966 d!1830874)))

(assert (=> bs!1372669 (= lambda!317923 lambda!317897)))

(assert (=> d!1830966 true))

(assert (=> d!1830966 (= (derivationStepZipper!1902 z!1189 (h!70123 s!2326)) (flatMap!1440 z!1189 lambda!317923))))

(declare-fun bs!1372670 () Bool)

(assert (= bs!1372670 d!1830966))

(declare-fun m!6752828 () Bool)

(assert (=> bs!1372670 m!6752828))

(assert (=> b!5814397 d!1830966))

(declare-fun d!1830968 () Bool)

(declare-fun lt!2301063 () Regex!15833)

(assert (=> d!1830968 (validRegex!7569 lt!2301063)))

(assert (=> d!1830968 (= lt!2301063 (generalisedUnion!1696 (unfocusZipperList!1261 (Cons!63676 lt!2300946 Nil!63676))))))

(assert (=> d!1830968 (= (unfocusZipper!1575 (Cons!63676 lt!2300946 Nil!63676)) lt!2301063)))

(declare-fun bs!1372671 () Bool)

(assert (= bs!1372671 d!1830968))

(declare-fun m!6752830 () Bool)

(assert (=> bs!1372671 m!6752830))

(declare-fun m!6752832 () Bool)

(assert (=> bs!1372671 m!6752832))

(assert (=> bs!1372671 m!6752832))

(declare-fun m!6752834 () Bool)

(assert (=> bs!1372671 m!6752834))

(assert (=> b!5814418 d!1830968))

(declare-fun d!1830970 () Bool)

(declare-fun lt!2301064 () Regex!15833)

(assert (=> d!1830970 (validRegex!7569 lt!2301064)))

(assert (=> d!1830970 (= lt!2301064 (generalisedUnion!1696 (unfocusZipperList!1261 (Cons!63676 lt!2300927 Nil!63676))))))

(assert (=> d!1830970 (= (unfocusZipper!1575 (Cons!63676 lt!2300927 Nil!63676)) lt!2301064)))

(declare-fun bs!1372673 () Bool)

(assert (= bs!1372673 d!1830970))

(declare-fun m!6752836 () Bool)

(assert (=> bs!1372673 m!6752836))

(declare-fun m!6752838 () Bool)

(assert (=> bs!1372673 m!6752838))

(assert (=> bs!1372673 m!6752838))

(declare-fun m!6752840 () Bool)

(assert (=> bs!1372673 m!6752840))

(assert (=> b!5814419 d!1830970))

(declare-fun d!1830972 () Bool)

(declare-fun choose!44197 (Int) Bool)

(assert (=> d!1830972 (= (Exists!2933 lambda!317848) (choose!44197 lambda!317848))))

(declare-fun bs!1372678 () Bool)

(assert (= bs!1372678 d!1830972))

(declare-fun m!6752842 () Bool)

(assert (=> bs!1372678 m!6752842))

(assert (=> b!5814394 d!1830972))

(declare-fun d!1830974 () Bool)

(assert (=> d!1830974 (= (Exists!2933 lambda!317847) (choose!44197 lambda!317847))))

(declare-fun bs!1372679 () Bool)

(assert (= bs!1372679 d!1830974))

(declare-fun m!6752844 () Bool)

(assert (=> bs!1372679 m!6752844))

(assert (=> b!5814394 d!1830974))

(declare-fun d!1830976 () Bool)

(declare-fun isEmpty!35600 (Option!15842) Bool)

(assert (=> d!1830976 (= (isDefined!12545 (findConcatSeparation!2256 (reg!16162 r!7292) r!7292 Nil!63675 s!2326 s!2326)) (not (isEmpty!35600 (findConcatSeparation!2256 (reg!16162 r!7292) r!7292 Nil!63675 s!2326 s!2326))))))

(declare-fun bs!1372681 () Bool)

(assert (= bs!1372681 d!1830976))

(assert (=> bs!1372681 m!6752284))

(declare-fun m!6752846 () Bool)

(assert (=> bs!1372681 m!6752846))

(assert (=> b!5814394 d!1830976))

(declare-fun bs!1372690 () Bool)

(declare-fun d!1830978 () Bool)

(assert (= bs!1372690 (and d!1830978 b!5814893)))

(declare-fun lambda!317930 () Int)

(assert (=> bs!1372690 (not (= lambda!317930 lambda!317919))))

(declare-fun bs!1372691 () Bool)

(assert (= bs!1372691 (and d!1830978 b!5814394)))

(assert (=> bs!1372691 (not (= lambda!317930 lambda!317848))))

(assert (=> bs!1372691 (= lambda!317930 lambda!317847)))

(assert (=> bs!1372691 (not (= lambda!317930 lambda!317849))))

(declare-fun bs!1372692 () Bool)

(assert (= bs!1372692 (and d!1830978 b!5814835)))

(assert (=> bs!1372692 (not (= lambda!317930 lambda!317916))))

(declare-fun bs!1372693 () Bool)

(assert (= bs!1372693 (and d!1830978 b!5814828)))

(assert (=> bs!1372693 (not (= lambda!317930 lambda!317917))))

(declare-fun bs!1372694 () Bool)

(assert (= bs!1372694 (and d!1830978 b!5814900)))

(assert (=> bs!1372694 (not (= lambda!317930 lambda!317918))))

(assert (=> d!1830978 true))

(assert (=> d!1830978 true))

(assert (=> d!1830978 true))

(declare-fun lambda!317931 () Int)

(assert (=> bs!1372690 (= (and (= (reg!16162 r!7292) (regOne!32178 r!7292)) (= r!7292 (regTwo!32178 r!7292))) (= lambda!317931 lambda!317919))))

(assert (=> bs!1372691 (not (= lambda!317931 lambda!317848))))

(assert (=> bs!1372691 (not (= lambda!317931 lambda!317847))))

(assert (=> bs!1372691 (= lambda!317931 lambda!317849)))

(assert (=> bs!1372692 (not (= lambda!317931 lambda!317916))))

(assert (=> bs!1372693 (= (and (= (reg!16162 r!7292) (regOne!32178 lt!2300955)) (= r!7292 (regTwo!32178 lt!2300955))) (= lambda!317931 lambda!317917))))

(declare-fun bs!1372695 () Bool)

(assert (= bs!1372695 d!1830978))

(assert (=> bs!1372695 (not (= lambda!317931 lambda!317930))))

(assert (=> bs!1372694 (not (= lambda!317931 lambda!317918))))

(assert (=> d!1830978 true))

(assert (=> d!1830978 true))

(assert (=> d!1830978 true))

(assert (=> d!1830978 (= (Exists!2933 lambda!317930) (Exists!2933 lambda!317931))))

(declare-fun lt!2301069 () Unit!156926)

(declare-fun choose!44198 (Regex!15833 Regex!15833 List!63799) Unit!156926)

(assert (=> d!1830978 (= lt!2301069 (choose!44198 (reg!16162 r!7292) r!7292 s!2326))))

(assert (=> d!1830978 (validRegex!7569 (reg!16162 r!7292))))

(assert (=> d!1830978 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1562 (reg!16162 r!7292) r!7292 s!2326) lt!2301069)))

(declare-fun m!6752868 () Bool)

(assert (=> bs!1372695 m!6752868))

(declare-fun m!6752870 () Bool)

(assert (=> bs!1372695 m!6752870))

(declare-fun m!6752872 () Bool)

(assert (=> bs!1372695 m!6752872))

(declare-fun m!6752874 () Bool)

(assert (=> bs!1372695 m!6752874))

(assert (=> b!5814394 d!1830978))

(declare-fun bs!1372702 () Bool)

(declare-fun d!1830988 () Bool)

(assert (= bs!1372702 (and d!1830988 b!5814893)))

(declare-fun lambda!317939 () Int)

(assert (=> bs!1372702 (not (= lambda!317939 lambda!317919))))

(declare-fun bs!1372703 () Bool)

(assert (= bs!1372703 (and d!1830988 b!5814394)))

(assert (=> bs!1372703 (not (= lambda!317939 lambda!317848))))

(assert (=> bs!1372703 (= (= (Star!15833 (reg!16162 r!7292)) r!7292) (= lambda!317939 lambda!317847))))

(declare-fun bs!1372704 () Bool)

(assert (= bs!1372704 (and d!1830988 d!1830978)))

(assert (=> bs!1372704 (not (= lambda!317939 lambda!317931))))

(assert (=> bs!1372703 (not (= lambda!317939 lambda!317849))))

(declare-fun bs!1372705 () Bool)

(assert (= bs!1372705 (and d!1830988 b!5814835)))

(assert (=> bs!1372705 (not (= lambda!317939 lambda!317916))))

(declare-fun bs!1372706 () Bool)

(assert (= bs!1372706 (and d!1830988 b!5814828)))

(assert (=> bs!1372706 (not (= lambda!317939 lambda!317917))))

(assert (=> bs!1372704 (= (= (Star!15833 (reg!16162 r!7292)) r!7292) (= lambda!317939 lambda!317930))))

(declare-fun bs!1372707 () Bool)

(assert (= bs!1372707 (and d!1830988 b!5814900)))

(assert (=> bs!1372707 (not (= lambda!317939 lambda!317918))))

(assert (=> d!1830988 true))

(assert (=> d!1830988 true))

(declare-fun lambda!317940 () Int)

(assert (=> bs!1372702 (not (= lambda!317940 lambda!317919))))

(declare-fun bs!1372712 () Bool)

(assert (= bs!1372712 d!1830988))

(assert (=> bs!1372712 (not (= lambda!317940 lambda!317939))))

(assert (=> bs!1372703 (= (= (Star!15833 (reg!16162 r!7292)) r!7292) (= lambda!317940 lambda!317848))))

(assert (=> bs!1372703 (not (= lambda!317940 lambda!317847))))

(assert (=> bs!1372704 (not (= lambda!317940 lambda!317931))))

(assert (=> bs!1372703 (not (= lambda!317940 lambda!317849))))

(assert (=> bs!1372705 (= (and (= (reg!16162 r!7292) (reg!16162 lt!2300955)) (= (Star!15833 (reg!16162 r!7292)) lt!2300955)) (= lambda!317940 lambda!317916))))

(assert (=> bs!1372706 (not (= lambda!317940 lambda!317917))))

(assert (=> bs!1372704 (not (= lambda!317940 lambda!317930))))

(assert (=> bs!1372707 (= (= (Star!15833 (reg!16162 r!7292)) r!7292) (= lambda!317940 lambda!317918))))

(assert (=> d!1830988 true))

(assert (=> d!1830988 true))

(assert (=> d!1830988 (= (Exists!2933 lambda!317939) (Exists!2933 lambda!317940))))

(declare-fun lt!2301076 () Unit!156926)

(declare-fun choose!44199 (Regex!15833 List!63799) Unit!156926)

(assert (=> d!1830988 (= lt!2301076 (choose!44199 (reg!16162 r!7292) s!2326))))

(assert (=> d!1830988 (validRegex!7569 (reg!16162 r!7292))))

(assert (=> d!1830988 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!614 (reg!16162 r!7292) s!2326) lt!2301076)))

(declare-fun m!6752910 () Bool)

(assert (=> bs!1372712 m!6752910))

(declare-fun m!6752912 () Bool)

(assert (=> bs!1372712 m!6752912))

(declare-fun m!6752914 () Bool)

(assert (=> bs!1372712 m!6752914))

(assert (=> bs!1372712 m!6752874))

(assert (=> b!5814394 d!1830988))

(declare-fun d!1831002 () Bool)

(assert (=> d!1831002 (= (Exists!2933 lambda!317849) (choose!44197 lambda!317849))))

(declare-fun bs!1372714 () Bool)

(assert (= bs!1372714 d!1831002))

(declare-fun m!6752916 () Bool)

(assert (=> bs!1372714 m!6752916))

(assert (=> b!5814394 d!1831002))

(declare-fun d!1831004 () Bool)

(assert (=> d!1831004 (= (isEmpty!35595 s!2326) ((_ is Nil!63675) s!2326))))

(assert (=> b!5814394 d!1831004))

(declare-fun b!5815184 () Bool)

(declare-fun e!3569157 () Bool)

(assert (=> b!5815184 (= e!3569157 (matchR!8018 r!7292 s!2326))))

(declare-fun b!5815185 () Bool)

(declare-fun e!3569158 () Bool)

(declare-fun lt!2301086 () Option!15842)

(assert (=> b!5815185 (= e!3569158 (= (++!14051 (_1!36233 (get!21985 lt!2301086)) (_2!36233 (get!21985 lt!2301086))) s!2326))))

(declare-fun b!5815186 () Bool)

(declare-fun res!2452227 () Bool)

(assert (=> b!5815186 (=> (not res!2452227) (not e!3569158))))

(assert (=> b!5815186 (= res!2452227 (matchR!8018 (reg!16162 r!7292) (_1!36233 (get!21985 lt!2301086))))))

(declare-fun b!5815187 () Bool)

(declare-fun e!3569159 () Bool)

(assert (=> b!5815187 (= e!3569159 (not (isDefined!12545 lt!2301086)))))

(declare-fun b!5815188 () Bool)

(declare-fun res!2452226 () Bool)

(assert (=> b!5815188 (=> (not res!2452226) (not e!3569158))))

(assert (=> b!5815188 (= res!2452226 (matchR!8018 r!7292 (_2!36233 (get!21985 lt!2301086))))))

(declare-fun b!5815189 () Bool)

(declare-fun e!3569155 () Option!15842)

(assert (=> b!5815189 (= e!3569155 (Some!15841 (tuple2!65861 Nil!63675 s!2326)))))

(declare-fun d!1831006 () Bool)

(assert (=> d!1831006 e!3569159))

(declare-fun res!2452229 () Bool)

(assert (=> d!1831006 (=> res!2452229 e!3569159)))

(assert (=> d!1831006 (= res!2452229 e!3569158)))

(declare-fun res!2452230 () Bool)

(assert (=> d!1831006 (=> (not res!2452230) (not e!3569158))))

(assert (=> d!1831006 (= res!2452230 (isDefined!12545 lt!2301086))))

(assert (=> d!1831006 (= lt!2301086 e!3569155)))

(declare-fun c!1030684 () Bool)

(assert (=> d!1831006 (= c!1030684 e!3569157)))

(declare-fun res!2452228 () Bool)

(assert (=> d!1831006 (=> (not res!2452228) (not e!3569157))))

(assert (=> d!1831006 (= res!2452228 (matchR!8018 (reg!16162 r!7292) Nil!63675))))

(assert (=> d!1831006 (validRegex!7569 (reg!16162 r!7292))))

(assert (=> d!1831006 (= (findConcatSeparation!2256 (reg!16162 r!7292) r!7292 Nil!63675 s!2326 s!2326) lt!2301086)))

(declare-fun b!5815190 () Bool)

(declare-fun e!3569156 () Option!15842)

(assert (=> b!5815190 (= e!3569155 e!3569156)))

(declare-fun c!1030685 () Bool)

(assert (=> b!5815190 (= c!1030685 ((_ is Nil!63675) s!2326))))

(declare-fun b!5815191 () Bool)

(declare-fun lt!2301085 () Unit!156926)

(declare-fun lt!2301084 () Unit!156926)

(assert (=> b!5815191 (= lt!2301085 lt!2301084)))

(assert (=> b!5815191 (= (++!14051 (++!14051 Nil!63675 (Cons!63675 (h!70123 s!2326) Nil!63675)) (t!377154 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2150 (List!63799 C!31936 List!63799 List!63799) Unit!156926)

(assert (=> b!5815191 (= lt!2301084 (lemmaMoveElementToOtherListKeepsConcatEq!2150 Nil!63675 (h!70123 s!2326) (t!377154 s!2326) s!2326))))

(assert (=> b!5815191 (= e!3569156 (findConcatSeparation!2256 (reg!16162 r!7292) r!7292 (++!14051 Nil!63675 (Cons!63675 (h!70123 s!2326) Nil!63675)) (t!377154 s!2326) s!2326))))

(declare-fun b!5815192 () Bool)

(assert (=> b!5815192 (= e!3569156 None!15841)))

(assert (= (and d!1831006 res!2452228) b!5815184))

(assert (= (and d!1831006 c!1030684) b!5815189))

(assert (= (and d!1831006 (not c!1030684)) b!5815190))

(assert (= (and b!5815190 c!1030685) b!5815192))

(assert (= (and b!5815190 (not c!1030685)) b!5815191))

(assert (= (and d!1831006 res!2452230) b!5815186))

(assert (= (and b!5815186 res!2452227) b!5815188))

(assert (= (and b!5815188 res!2452226) b!5815185))

(assert (= (and d!1831006 (not res!2452229)) b!5815187))

(declare-fun m!6752918 () Bool)

(assert (=> b!5815186 m!6752918))

(declare-fun m!6752920 () Bool)

(assert (=> b!5815186 m!6752920))

(declare-fun m!6752922 () Bool)

(assert (=> d!1831006 m!6752922))

(declare-fun m!6752924 () Bool)

(assert (=> d!1831006 m!6752924))

(assert (=> d!1831006 m!6752874))

(assert (=> b!5815187 m!6752922))

(assert (=> b!5815188 m!6752918))

(declare-fun m!6752926 () Bool)

(assert (=> b!5815188 m!6752926))

(assert (=> b!5815185 m!6752918))

(declare-fun m!6752928 () Bool)

(assert (=> b!5815185 m!6752928))

(declare-fun m!6752930 () Bool)

(assert (=> b!5815191 m!6752930))

(assert (=> b!5815191 m!6752930))

(declare-fun m!6752932 () Bool)

(assert (=> b!5815191 m!6752932))

(declare-fun m!6752934 () Bool)

(assert (=> b!5815191 m!6752934))

(assert (=> b!5815191 m!6752930))

(declare-fun m!6752936 () Bool)

(assert (=> b!5815191 m!6752936))

(assert (=> b!5815184 m!6752292))

(assert (=> b!5814394 d!1831006))

(declare-fun bs!1372715 () Bool)

(declare-fun d!1831008 () Bool)

(assert (= bs!1372715 (and d!1831008 b!5814893)))

(declare-fun lambda!317943 () Int)

(assert (=> bs!1372715 (not (= lambda!317943 lambda!317919))))

(declare-fun bs!1372716 () Bool)

(assert (= bs!1372716 (and d!1831008 d!1830988)))

(assert (=> bs!1372716 (= (= r!7292 (Star!15833 (reg!16162 r!7292))) (= lambda!317943 lambda!317939))))

(declare-fun bs!1372717 () Bool)

(assert (= bs!1372717 (and d!1831008 b!5814394)))

(assert (=> bs!1372717 (not (= lambda!317943 lambda!317848))))

(assert (=> bs!1372717 (= lambda!317943 lambda!317847)))

(declare-fun bs!1372718 () Bool)

(assert (= bs!1372718 (and d!1831008 d!1830978)))

(assert (=> bs!1372718 (not (= lambda!317943 lambda!317931))))

(assert (=> bs!1372717 (not (= lambda!317943 lambda!317849))))

(declare-fun bs!1372719 () Bool)

(assert (= bs!1372719 (and d!1831008 b!5814835)))

(assert (=> bs!1372719 (not (= lambda!317943 lambda!317916))))

(declare-fun bs!1372720 () Bool)

(assert (= bs!1372720 (and d!1831008 b!5814828)))

(assert (=> bs!1372720 (not (= lambda!317943 lambda!317917))))

(assert (=> bs!1372716 (not (= lambda!317943 lambda!317940))))

(assert (=> bs!1372718 (= lambda!317943 lambda!317930)))

(declare-fun bs!1372721 () Bool)

(assert (= bs!1372721 (and d!1831008 b!5814900)))

(assert (=> bs!1372721 (not (= lambda!317943 lambda!317918))))

(assert (=> d!1831008 true))

(assert (=> d!1831008 true))

(assert (=> d!1831008 true))

(assert (=> d!1831008 (= (isDefined!12545 (findConcatSeparation!2256 (reg!16162 r!7292) r!7292 Nil!63675 s!2326 s!2326)) (Exists!2933 lambda!317943))))

(declare-fun lt!2301089 () Unit!156926)

(declare-fun choose!44200 (Regex!15833 Regex!15833 List!63799) Unit!156926)

(assert (=> d!1831008 (= lt!2301089 (choose!44200 (reg!16162 r!7292) r!7292 s!2326))))

(assert (=> d!1831008 (validRegex!7569 (reg!16162 r!7292))))

(assert (=> d!1831008 (= (lemmaFindConcatSeparationEquivalentToExists!2020 (reg!16162 r!7292) r!7292 s!2326) lt!2301089)))

(declare-fun bs!1372722 () Bool)

(assert (= bs!1372722 d!1831008))

(assert (=> bs!1372722 m!6752284))

(declare-fun m!6752938 () Bool)

(assert (=> bs!1372722 m!6752938))

(assert (=> bs!1372722 m!6752284))

(assert (=> bs!1372722 m!6752286))

(declare-fun m!6752940 () Bool)

(assert (=> bs!1372722 m!6752940))

(assert (=> bs!1372722 m!6752874))

(assert (=> b!5814394 d!1831008))

(declare-fun d!1831010 () Bool)

(declare-fun e!3569164 () Bool)

(assert (=> d!1831010 e!3569164))

(declare-fun res!2452237 () Bool)

(assert (=> d!1831010 (=> (not res!2452237) (not e!3569164))))

(declare-fun lt!2301092 () List!63800)

(declare-fun noDuplicate!1726 (List!63800) Bool)

(assert (=> d!1831010 (= res!2452237 (noDuplicate!1726 lt!2301092))))

(declare-fun choose!44201 ((InoxSet Context!10434)) List!63800)

(assert (=> d!1831010 (= lt!2301092 (choose!44201 z!1189))))

(assert (=> d!1831010 (= (toList!9617 z!1189) lt!2301092)))

(declare-fun b!5815199 () Bool)

(declare-fun content!11683 (List!63800) (InoxSet Context!10434))

(assert (=> b!5815199 (= e!3569164 (= (content!11683 lt!2301092) z!1189))))

(assert (= (and d!1831010 res!2452237) b!5815199))

(declare-fun m!6752942 () Bool)

(assert (=> d!1831010 m!6752942))

(declare-fun m!6752944 () Bool)

(assert (=> d!1831010 m!6752944))

(declare-fun m!6752946 () Bool)

(assert (=> b!5815199 m!6752946))

(assert (=> b!5814395 d!1831010))

(declare-fun b!5815211 () Bool)

(declare-fun e!3569169 () Bool)

(declare-fun lt!2301095 () List!63799)

(assert (=> b!5815211 (= e!3569169 (or (not (= (_2!36233 lt!2300938) Nil!63675)) (= lt!2301095 (_1!36233 lt!2300938))))))

(declare-fun b!5815210 () Bool)

(declare-fun res!2452242 () Bool)

(assert (=> b!5815210 (=> (not res!2452242) (not e!3569169))))

(declare-fun size!40124 (List!63799) Int)

(assert (=> b!5815210 (= res!2452242 (= (size!40124 lt!2301095) (+ (size!40124 (_1!36233 lt!2300938)) (size!40124 (_2!36233 lt!2300938)))))))

(declare-fun b!5815209 () Bool)

(declare-fun e!3569170 () List!63799)

(assert (=> b!5815209 (= e!3569170 (Cons!63675 (h!70123 (_1!36233 lt!2300938)) (++!14051 (t!377154 (_1!36233 lt!2300938)) (_2!36233 lt!2300938))))))

(declare-fun b!5815208 () Bool)

(assert (=> b!5815208 (= e!3569170 (_2!36233 lt!2300938))))

(declare-fun d!1831012 () Bool)

(assert (=> d!1831012 e!3569169))

(declare-fun res!2452243 () Bool)

(assert (=> d!1831012 (=> (not res!2452243) (not e!3569169))))

(declare-fun content!11684 (List!63799) (InoxSet C!31936))

(assert (=> d!1831012 (= res!2452243 (= (content!11684 lt!2301095) ((_ map or) (content!11684 (_1!36233 lt!2300938)) (content!11684 (_2!36233 lt!2300938)))))))

(assert (=> d!1831012 (= lt!2301095 e!3569170)))

(declare-fun c!1030688 () Bool)

(assert (=> d!1831012 (= c!1030688 ((_ is Nil!63675) (_1!36233 lt!2300938)))))

(assert (=> d!1831012 (= (++!14051 (_1!36233 lt!2300938) (_2!36233 lt!2300938)) lt!2301095)))

(assert (= (and d!1831012 c!1030688) b!5815208))

(assert (= (and d!1831012 (not c!1030688)) b!5815209))

(assert (= (and d!1831012 res!2452243) b!5815210))

(assert (= (and b!5815210 res!2452242) b!5815211))

(declare-fun m!6752948 () Bool)

(assert (=> b!5815210 m!6752948))

(declare-fun m!6752950 () Bool)

(assert (=> b!5815210 m!6752950))

(declare-fun m!6752952 () Bool)

(assert (=> b!5815210 m!6752952))

(declare-fun m!6752954 () Bool)

(assert (=> b!5815209 m!6752954))

(declare-fun m!6752956 () Bool)

(assert (=> d!1831012 m!6752956))

(declare-fun m!6752958 () Bool)

(assert (=> d!1831012 m!6752958))

(declare-fun m!6752960 () Bool)

(assert (=> d!1831012 m!6752960))

(assert (=> b!5814416 d!1831012))

(declare-fun d!1831014 () Bool)

(declare-fun e!3569184 () Bool)

(assert (=> d!1831014 e!3569184))

(declare-fun res!2452255 () Bool)

(assert (=> d!1831014 (=> res!2452255 e!3569184)))

(declare-fun e!3569182 () Bool)

(assert (=> d!1831014 (= res!2452255 e!3569182)))

(declare-fun res!2452257 () Bool)

(assert (=> d!1831014 (=> (not res!2452257) (not e!3569182))))

(declare-fun lt!2301102 () Option!15842)

(assert (=> d!1831014 (= res!2452257 (isDefined!12545 lt!2301102))))

(declare-fun e!3569181 () Option!15842)

(assert (=> d!1831014 (= lt!2301102 e!3569181)))

(declare-fun c!1030693 () Bool)

(declare-fun e!3569185 () Bool)

(assert (=> d!1831014 (= c!1030693 e!3569185)))

(declare-fun res!2452258 () Bool)

(assert (=> d!1831014 (=> (not res!2452258) (not e!3569185))))

(assert (=> d!1831014 (= res!2452258 (matchZipper!1961 lt!2300951 Nil!63675))))

(assert (=> d!1831014 (= (++!14051 Nil!63675 s!2326) s!2326)))

(assert (=> d!1831014 (= (findConcatSeparationZippers!150 lt!2300951 lt!2300954 Nil!63675 s!2326 s!2326) lt!2301102)))

(declare-fun b!5815230 () Bool)

(declare-fun res!2452254 () Bool)

(assert (=> b!5815230 (=> (not res!2452254) (not e!3569182))))

(assert (=> b!5815230 (= res!2452254 (matchZipper!1961 lt!2300951 (_1!36233 (get!21985 lt!2301102))))))

(declare-fun b!5815231 () Bool)

(declare-fun e!3569183 () Option!15842)

(assert (=> b!5815231 (= e!3569181 e!3569183)))

(declare-fun c!1030694 () Bool)

(assert (=> b!5815231 (= c!1030694 ((_ is Nil!63675) s!2326))))

(declare-fun b!5815232 () Bool)

(assert (=> b!5815232 (= e!3569183 None!15841)))

(declare-fun b!5815233 () Bool)

(assert (=> b!5815233 (= e!3569185 (matchZipper!1961 lt!2300954 s!2326))))

(declare-fun b!5815234 () Bool)

(assert (=> b!5815234 (= e!3569182 (= (++!14051 (_1!36233 (get!21985 lt!2301102)) (_2!36233 (get!21985 lt!2301102))) s!2326))))

(declare-fun b!5815235 () Bool)

(declare-fun lt!2301104 () Unit!156926)

(declare-fun lt!2301103 () Unit!156926)

(assert (=> b!5815235 (= lt!2301104 lt!2301103)))

(assert (=> b!5815235 (= (++!14051 (++!14051 Nil!63675 (Cons!63675 (h!70123 s!2326) Nil!63675)) (t!377154 s!2326)) s!2326)))

(assert (=> b!5815235 (= lt!2301103 (lemmaMoveElementToOtherListKeepsConcatEq!2150 Nil!63675 (h!70123 s!2326) (t!377154 s!2326) s!2326))))

(assert (=> b!5815235 (= e!3569183 (findConcatSeparationZippers!150 lt!2300951 lt!2300954 (++!14051 Nil!63675 (Cons!63675 (h!70123 s!2326) Nil!63675)) (t!377154 s!2326) s!2326))))

(declare-fun b!5815236 () Bool)

(assert (=> b!5815236 (= e!3569181 (Some!15841 (tuple2!65861 Nil!63675 s!2326)))))

(declare-fun b!5815237 () Bool)

(assert (=> b!5815237 (= e!3569184 (not (isDefined!12545 lt!2301102)))))

(declare-fun b!5815238 () Bool)

(declare-fun res!2452256 () Bool)

(assert (=> b!5815238 (=> (not res!2452256) (not e!3569182))))

(assert (=> b!5815238 (= res!2452256 (matchZipper!1961 lt!2300954 (_2!36233 (get!21985 lt!2301102))))))

(assert (= (and d!1831014 res!2452258) b!5815233))

(assert (= (and d!1831014 c!1030693) b!5815236))

(assert (= (and d!1831014 (not c!1030693)) b!5815231))

(assert (= (and b!5815231 c!1030694) b!5815232))

(assert (= (and b!5815231 (not c!1030694)) b!5815235))

(assert (= (and d!1831014 res!2452257) b!5815230))

(assert (= (and b!5815230 res!2452254) b!5815238))

(assert (= (and b!5815238 res!2452256) b!5815234))

(assert (= (and d!1831014 (not res!2452255)) b!5815237))

(declare-fun m!6752962 () Bool)

(assert (=> d!1831014 m!6752962))

(declare-fun m!6752964 () Bool)

(assert (=> d!1831014 m!6752964))

(declare-fun m!6752966 () Bool)

(assert (=> d!1831014 m!6752966))

(assert (=> b!5815235 m!6752930))

(assert (=> b!5815235 m!6752930))

(assert (=> b!5815235 m!6752932))

(assert (=> b!5815235 m!6752934))

(assert (=> b!5815235 m!6752930))

(declare-fun m!6752968 () Bool)

(assert (=> b!5815235 m!6752968))

(declare-fun m!6752970 () Bool)

(assert (=> b!5815230 m!6752970))

(declare-fun m!6752972 () Bool)

(assert (=> b!5815230 m!6752972))

(declare-fun m!6752974 () Bool)

(assert (=> b!5815233 m!6752974))

(assert (=> b!5815237 m!6752962))

(assert (=> b!5815238 m!6752970))

(declare-fun m!6752976 () Bool)

(assert (=> b!5815238 m!6752976))

(assert (=> b!5815234 m!6752970))

(declare-fun m!6752978 () Bool)

(assert (=> b!5815234 m!6752978))

(assert (=> b!5814416 d!1831014))

(declare-fun d!1831016 () Bool)

(assert (=> d!1831016 (isDefined!12545 (findConcatSeparationZippers!150 lt!2300951 (store ((as const (Array Context!10434 Bool)) false) lt!2300953 true) Nil!63675 s!2326 s!2326))))

(declare-fun lt!2301107 () Unit!156926)

(declare-fun choose!44202 ((InoxSet Context!10434) Context!10434 List!63799) Unit!156926)

(assert (=> d!1831016 (= lt!2301107 (choose!44202 lt!2300951 lt!2300953 s!2326))))

(assert (=> d!1831016 (matchZipper!1961 (appendTo!142 lt!2300951 lt!2300953) s!2326)))

(assert (=> d!1831016 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!150 lt!2300951 lt!2300953 s!2326) lt!2301107)))

(declare-fun bs!1372723 () Bool)

(assert (= bs!1372723 d!1831016))

(declare-fun m!6752980 () Bool)

(assert (=> bs!1372723 m!6752980))

(assert (=> bs!1372723 m!6752212))

(declare-fun m!6752982 () Bool)

(assert (=> bs!1372723 m!6752982))

(assert (=> bs!1372723 m!6752320))

(declare-fun m!6752984 () Bool)

(assert (=> bs!1372723 m!6752984))

(assert (=> bs!1372723 m!6752212))

(assert (=> bs!1372723 m!6752982))

(declare-fun m!6752986 () Bool)

(assert (=> bs!1372723 m!6752986))

(assert (=> bs!1372723 m!6752320))

(assert (=> b!5814416 d!1831016))

(declare-fun d!1831018 () Bool)

(assert (=> d!1831018 (= (get!21985 lt!2300932) (v!51905 lt!2300932))))

(assert (=> b!5814416 d!1831018))

(declare-fun d!1831020 () Bool)

(assert (=> d!1831020 (= (isDefined!12545 lt!2300932) (not (isEmpty!35600 lt!2300932)))))

(declare-fun bs!1372724 () Bool)

(assert (= bs!1372724 d!1831020))

(declare-fun m!6752988 () Bool)

(assert (=> bs!1372724 m!6752988))

(assert (=> b!5814416 d!1831020))

(declare-fun d!1831022 () Bool)

(assert (=> d!1831022 (= (flatMap!1440 z!1189 lambda!317850) (choose!44194 z!1189 lambda!317850))))

(declare-fun bs!1372725 () Bool)

(assert (= bs!1372725 d!1831022))

(declare-fun m!6752990 () Bool)

(assert (=> bs!1372725 m!6752990))

(assert (=> b!5814396 d!1831022))

(declare-fun b!5815239 () Bool)

(declare-fun e!3569188 () (InoxSet Context!10434))

(assert (=> b!5815239 (= e!3569188 ((as const (Array Context!10434 Bool)) false))))

(declare-fun b!5815240 () Bool)

(declare-fun call!454208 () (InoxSet Context!10434))

(declare-fun e!3569187 () (InoxSet Context!10434))

(assert (=> b!5815240 (= e!3569187 ((_ map or) call!454208 (derivationStepZipperUp!1097 (Context!10435 (t!377153 (exprs!5717 (h!70124 zl!343)))) (h!70123 s!2326))))))

(declare-fun b!5815241 () Bool)

(assert (=> b!5815241 (= e!3569187 e!3569188)))

(declare-fun c!1030696 () Bool)

(assert (=> b!5815241 (= c!1030696 ((_ is Cons!63674) (exprs!5717 (h!70124 zl!343))))))

(declare-fun bm!454203 () Bool)

(assert (=> bm!454203 (= call!454208 (derivationStepZipperDown!1171 (h!70122 (exprs!5717 (h!70124 zl!343))) (Context!10435 (t!377153 (exprs!5717 (h!70124 zl!343)))) (h!70123 s!2326)))))

(declare-fun d!1831024 () Bool)

(declare-fun c!1030695 () Bool)

(declare-fun e!3569186 () Bool)

(assert (=> d!1831024 (= c!1030695 e!3569186)))

(declare-fun res!2452259 () Bool)

(assert (=> d!1831024 (=> (not res!2452259) (not e!3569186))))

(assert (=> d!1831024 (= res!2452259 ((_ is Cons!63674) (exprs!5717 (h!70124 zl!343))))))

(assert (=> d!1831024 (= (derivationStepZipperUp!1097 (h!70124 zl!343) (h!70123 s!2326)) e!3569187)))

(declare-fun b!5815242 () Bool)

(assert (=> b!5815242 (= e!3569188 call!454208)))

(declare-fun b!5815243 () Bool)

(assert (=> b!5815243 (= e!3569186 (nullable!5857 (h!70122 (exprs!5717 (h!70124 zl!343)))))))

(assert (= (and d!1831024 res!2452259) b!5815243))

(assert (= (and d!1831024 c!1030695) b!5815240))

(assert (= (and d!1831024 (not c!1030695)) b!5815241))

(assert (= (and b!5815241 c!1030696) b!5815242))

(assert (= (and b!5815241 (not c!1030696)) b!5815239))

(assert (= (or b!5815240 b!5815242) bm!454203))

(declare-fun m!6752992 () Bool)

(assert (=> b!5815240 m!6752992))

(declare-fun m!6752994 () Bool)

(assert (=> bm!454203 m!6752994))

(declare-fun m!6752996 () Bool)

(assert (=> b!5815243 m!6752996))

(assert (=> b!5814396 d!1831024))

(declare-fun d!1831026 () Bool)

(assert (=> d!1831026 (= (flatMap!1440 z!1189 lambda!317850) (dynLambda!24936 lambda!317850 (h!70124 zl!343)))))

(declare-fun lt!2301108 () Unit!156926)

(assert (=> d!1831026 (= lt!2301108 (choose!44193 z!1189 (h!70124 zl!343) lambda!317850))))

(assert (=> d!1831026 (= z!1189 (store ((as const (Array Context!10434 Bool)) false) (h!70124 zl!343) true))))

(assert (=> d!1831026 (= (lemmaFlatMapOnSingletonSet!972 z!1189 (h!70124 zl!343) lambda!317850) lt!2301108)))

(declare-fun b_lambda!219223 () Bool)

(assert (=> (not b_lambda!219223) (not d!1831026)))

(declare-fun bs!1372726 () Bool)

(assert (= bs!1372726 d!1831026))

(assert (=> bs!1372726 m!6752198))

(declare-fun m!6752998 () Bool)

(assert (=> bs!1372726 m!6752998))

(declare-fun m!6753000 () Bool)

(assert (=> bs!1372726 m!6753000))

(declare-fun m!6753002 () Bool)

(assert (=> bs!1372726 m!6753002))

(assert (=> b!5814396 d!1831026))

(declare-fun bs!1372727 () Bool)

(declare-fun d!1831028 () Bool)

(assert (= bs!1372727 (and d!1831028 b!5814389)))

(declare-fun lambda!317944 () Int)

(assert (=> bs!1372727 (= lambda!317944 lambda!317852)))

(declare-fun bs!1372728 () Bool)

(assert (= bs!1372728 (and d!1831028 d!1830868)))

(assert (=> bs!1372728 (= lambda!317944 lambda!317893)))

(declare-fun bs!1372729 () Bool)

(assert (= bs!1372729 (and d!1831028 d!1830856)))

(assert (=> bs!1372729 (= lambda!317944 lambda!317887)))

(declare-fun bs!1372730 () Bool)

(assert (= bs!1372730 (and d!1831028 d!1830866)))

(assert (=> bs!1372730 (= lambda!317944 lambda!317890)))

(declare-fun bs!1372731 () Bool)

(assert (= bs!1372731 (and d!1831028 d!1830798)))

(assert (=> bs!1372731 (= lambda!317944 lambda!317861)))

(assert (=> d!1831028 (= (inv!82829 setElem!39172) (forall!14938 (exprs!5717 setElem!39172) lambda!317944))))

(declare-fun bs!1372732 () Bool)

(assert (= bs!1372732 d!1831028))

(declare-fun m!6753004 () Bool)

(assert (=> bs!1372732 m!6753004))

(assert (=> setNonEmpty!39172 d!1831028))

(declare-fun d!1831030 () Bool)

(assert (=> d!1831030 (= (isEmpty!35596 (t!377155 zl!343)) ((_ is Nil!63676) (t!377155 zl!343)))))

(assert (=> b!5814413 d!1831030))

(declare-fun b!5815262 () Bool)

(declare-fun res!2452271 () Bool)

(declare-fun e!3569203 () Bool)

(assert (=> b!5815262 (=> res!2452271 e!3569203)))

(assert (=> b!5815262 (= res!2452271 (not ((_ is Concat!24678) r!7292)))))

(declare-fun e!3569207 () Bool)

(assert (=> b!5815262 (= e!3569207 e!3569203)))

(declare-fun c!1030702 () Bool)

(declare-fun c!1030701 () Bool)

(declare-fun bm!454210 () Bool)

(declare-fun call!454215 () Bool)

(assert (=> bm!454210 (= call!454215 (validRegex!7569 (ite c!1030702 (reg!16162 r!7292) (ite c!1030701 (regOne!32179 r!7292) (regOne!32178 r!7292)))))))

(declare-fun b!5815263 () Bool)

(declare-fun res!2452272 () Bool)

(declare-fun e!3569209 () Bool)

(assert (=> b!5815263 (=> (not res!2452272) (not e!3569209))))

(declare-fun call!454216 () Bool)

(assert (=> b!5815263 (= res!2452272 call!454216)))

(assert (=> b!5815263 (= e!3569207 e!3569209)))

(declare-fun b!5815264 () Bool)

(declare-fun call!454217 () Bool)

(assert (=> b!5815264 (= e!3569209 call!454217)))

(declare-fun b!5815265 () Bool)

(declare-fun e!3569205 () Bool)

(assert (=> b!5815265 (= e!3569205 call!454217)))

(declare-fun b!5815266 () Bool)

(declare-fun e!3569204 () Bool)

(assert (=> b!5815266 (= e!3569204 call!454215)))

(declare-fun d!1831032 () Bool)

(declare-fun res!2452270 () Bool)

(declare-fun e!3569206 () Bool)

(assert (=> d!1831032 (=> res!2452270 e!3569206)))

(assert (=> d!1831032 (= res!2452270 ((_ is ElementMatch!15833) r!7292))))

(assert (=> d!1831032 (= (validRegex!7569 r!7292) e!3569206)))

(declare-fun bm!454211 () Bool)

(assert (=> bm!454211 (= call!454216 call!454215)))

(declare-fun b!5815267 () Bool)

(declare-fun e!3569208 () Bool)

(assert (=> b!5815267 (= e!3569206 e!3569208)))

(assert (=> b!5815267 (= c!1030702 ((_ is Star!15833) r!7292))))

(declare-fun b!5815268 () Bool)

(assert (=> b!5815268 (= e!3569203 e!3569205)))

(declare-fun res!2452273 () Bool)

(assert (=> b!5815268 (=> (not res!2452273) (not e!3569205))))

(assert (=> b!5815268 (= res!2452273 call!454216)))

(declare-fun b!5815269 () Bool)

(assert (=> b!5815269 (= e!3569208 e!3569207)))

(assert (=> b!5815269 (= c!1030701 ((_ is Union!15833) r!7292))))

(declare-fun b!5815270 () Bool)

(assert (=> b!5815270 (= e!3569208 e!3569204)))

(declare-fun res!2452274 () Bool)

(assert (=> b!5815270 (= res!2452274 (not (nullable!5857 (reg!16162 r!7292))))))

(assert (=> b!5815270 (=> (not res!2452274) (not e!3569204))))

(declare-fun bm!454212 () Bool)

(assert (=> bm!454212 (= call!454217 (validRegex!7569 (ite c!1030701 (regTwo!32179 r!7292) (regTwo!32178 r!7292))))))

(assert (= (and d!1831032 (not res!2452270)) b!5815267))

(assert (= (and b!5815267 c!1030702) b!5815270))

(assert (= (and b!5815267 (not c!1030702)) b!5815269))

(assert (= (and b!5815270 res!2452274) b!5815266))

(assert (= (and b!5815269 c!1030701) b!5815263))

(assert (= (and b!5815269 (not c!1030701)) b!5815262))

(assert (= (and b!5815263 res!2452272) b!5815264))

(assert (= (and b!5815262 (not res!2452271)) b!5815268))

(assert (= (and b!5815268 res!2452273) b!5815265))

(assert (= (or b!5815264 b!5815265) bm!454212))

(assert (= (or b!5815263 b!5815268) bm!454211))

(assert (= (or b!5815266 bm!454211) bm!454210))

(declare-fun m!6753006 () Bool)

(assert (=> bm!454210 m!6753006))

(declare-fun m!6753008 () Bool)

(assert (=> b!5815270 m!6753008))

(declare-fun m!6753010 () Bool)

(assert (=> bm!454212 m!6753010))

(assert (=> start!595788 d!1831032))

(declare-fun d!1831034 () Bool)

(declare-fun c!1030703 () Bool)

(assert (=> d!1831034 (= c!1030703 (isEmpty!35595 (_1!36233 lt!2300938)))))

(declare-fun e!3569210 () Bool)

(assert (=> d!1831034 (= (matchZipper!1961 lt!2300951 (_1!36233 lt!2300938)) e!3569210)))

(declare-fun b!5815271 () Bool)

(assert (=> b!5815271 (= e!3569210 (nullableZipper!1739 lt!2300951))))

(declare-fun b!5815272 () Bool)

(assert (=> b!5815272 (= e!3569210 (matchZipper!1961 (derivationStepZipper!1902 lt!2300951 (head!12273 (_1!36233 lt!2300938))) (tail!11368 (_1!36233 lt!2300938))))))

(assert (= (and d!1831034 c!1030703) b!5815271))

(assert (= (and d!1831034 (not c!1030703)) b!5815272))

(declare-fun m!6753012 () Bool)

(assert (=> d!1831034 m!6753012))

(declare-fun m!6753014 () Bool)

(assert (=> b!5815271 m!6753014))

(declare-fun m!6753016 () Bool)

(assert (=> b!5815272 m!6753016))

(assert (=> b!5815272 m!6753016))

(declare-fun m!6753018 () Bool)

(assert (=> b!5815272 m!6753018))

(declare-fun m!6753020 () Bool)

(assert (=> b!5815272 m!6753020))

(assert (=> b!5815272 m!6753018))

(assert (=> b!5815272 m!6753020))

(declare-fun m!6753022 () Bool)

(assert (=> b!5815272 m!6753022))

(assert (=> b!5814391 d!1831034))

(declare-fun d!1831036 () Bool)

(declare-fun c!1030704 () Bool)

(assert (=> d!1831036 (= c!1030704 (isEmpty!35595 (_2!36233 lt!2300938)))))

(declare-fun e!3569211 () Bool)

(assert (=> d!1831036 (= (matchZipper!1961 lt!2300954 (_2!36233 lt!2300938)) e!3569211)))

(declare-fun b!5815273 () Bool)

(assert (=> b!5815273 (= e!3569211 (nullableZipper!1739 lt!2300954))))

(declare-fun b!5815274 () Bool)

(assert (=> b!5815274 (= e!3569211 (matchZipper!1961 (derivationStepZipper!1902 lt!2300954 (head!12273 (_2!36233 lt!2300938))) (tail!11368 (_2!36233 lt!2300938))))))

(assert (= (and d!1831036 c!1030704) b!5815273))

(assert (= (and d!1831036 (not c!1030704)) b!5815274))

(declare-fun m!6753024 () Bool)

(assert (=> d!1831036 m!6753024))

(declare-fun m!6753026 () Bool)

(assert (=> b!5815273 m!6753026))

(declare-fun m!6753028 () Bool)

(assert (=> b!5815274 m!6753028))

(assert (=> b!5815274 m!6753028))

(declare-fun m!6753030 () Bool)

(assert (=> b!5815274 m!6753030))

(declare-fun m!6753032 () Bool)

(assert (=> b!5815274 m!6753032))

(assert (=> b!5815274 m!6753030))

(assert (=> b!5815274 m!6753032))

(declare-fun m!6753034 () Bool)

(assert (=> b!5815274 m!6753034))

(assert (=> b!5814411 d!1831036))

(declare-fun b!5815275 () Bool)

(declare-fun e!3569215 () (InoxSet Context!10434))

(declare-fun e!3569216 () (InoxSet Context!10434))

(assert (=> b!5815275 (= e!3569215 e!3569216)))

(declare-fun c!1030707 () Bool)

(assert (=> b!5815275 (= c!1030707 ((_ is Concat!24678) (reg!16162 r!7292)))))

(declare-fun b!5815276 () Bool)

(declare-fun e!3569217 () Bool)

(assert (=> b!5815276 (= e!3569217 (nullable!5857 (regOne!32178 (reg!16162 r!7292))))))

(declare-fun bm!454213 () Bool)

(declare-fun call!454219 () List!63798)

(declare-fun call!454223 () List!63798)

(assert (=> bm!454213 (= call!454219 call!454223)))

(declare-fun b!5815278 () Bool)

(declare-fun c!1030708 () Bool)

(assert (=> b!5815278 (= c!1030708 e!3569217)))

(declare-fun res!2452275 () Bool)

(assert (=> b!5815278 (=> (not res!2452275) (not e!3569217))))

(assert (=> b!5815278 (= res!2452275 ((_ is Concat!24678) (reg!16162 r!7292)))))

(declare-fun e!3569214 () (InoxSet Context!10434))

(assert (=> b!5815278 (= e!3569214 e!3569215)))

(declare-fun bm!454214 () Bool)

(declare-fun call!454221 () (InoxSet Context!10434))

(declare-fun call!454222 () (InoxSet Context!10434))

(assert (=> bm!454214 (= call!454221 call!454222)))

(declare-fun b!5815279 () Bool)

(declare-fun e!3569213 () (InoxSet Context!10434))

(assert (=> b!5815279 (= e!3569213 (store ((as const (Array Context!10434 Bool)) false) lt!2300953 true))))

(declare-fun b!5815280 () Bool)

(declare-fun call!454220 () (InoxSet Context!10434))

(assert (=> b!5815280 (= e!3569216 call!454220)))

(declare-fun b!5815281 () Bool)

(declare-fun e!3569212 () (InoxSet Context!10434))

(assert (=> b!5815281 (= e!3569212 call!454220)))

(declare-fun bm!454215 () Bool)

(declare-fun call!454218 () (InoxSet Context!10434))

(declare-fun c!1030709 () Bool)

(assert (=> bm!454215 (= call!454218 (derivationStepZipperDown!1171 (ite c!1030709 (regTwo!32179 (reg!16162 r!7292)) (regOne!32178 (reg!16162 r!7292))) (ite c!1030709 lt!2300953 (Context!10435 call!454223)) (h!70123 s!2326)))))

(declare-fun b!5815282 () Bool)

(assert (=> b!5815282 (= e!3569215 ((_ map or) call!454218 call!454221))))

(declare-fun b!5815283 () Bool)

(declare-fun c!1030706 () Bool)

(assert (=> b!5815283 (= c!1030706 ((_ is Star!15833) (reg!16162 r!7292)))))

(assert (=> b!5815283 (= e!3569216 e!3569212)))

(declare-fun bm!454216 () Bool)

(assert (=> bm!454216 (= call!454220 call!454221)))

(declare-fun d!1831038 () Bool)

(declare-fun c!1030705 () Bool)

(assert (=> d!1831038 (= c!1030705 (and ((_ is ElementMatch!15833) (reg!16162 r!7292)) (= (c!1030465 (reg!16162 r!7292)) (h!70123 s!2326))))))

(assert (=> d!1831038 (= (derivationStepZipperDown!1171 (reg!16162 r!7292) lt!2300953 (h!70123 s!2326)) e!3569213)))

(declare-fun b!5815277 () Bool)

(assert (=> b!5815277 (= e!3569212 ((as const (Array Context!10434 Bool)) false))))

(declare-fun b!5815284 () Bool)

(assert (=> b!5815284 (= e!3569214 ((_ map or) call!454222 call!454218))))

(declare-fun b!5815285 () Bool)

(assert (=> b!5815285 (= e!3569213 e!3569214)))

(assert (=> b!5815285 (= c!1030709 ((_ is Union!15833) (reg!16162 r!7292)))))

(declare-fun bm!454217 () Bool)

(assert (=> bm!454217 (= call!454222 (derivationStepZipperDown!1171 (ite c!1030709 (regOne!32179 (reg!16162 r!7292)) (ite c!1030708 (regTwo!32178 (reg!16162 r!7292)) (ite c!1030707 (regOne!32178 (reg!16162 r!7292)) (reg!16162 (reg!16162 r!7292))))) (ite (or c!1030709 c!1030708) lt!2300953 (Context!10435 call!454219)) (h!70123 s!2326)))))

(declare-fun bm!454218 () Bool)

(assert (=> bm!454218 (= call!454223 ($colon$colon!1812 (exprs!5717 lt!2300953) (ite (or c!1030708 c!1030707) (regTwo!32178 (reg!16162 r!7292)) (reg!16162 r!7292))))))

(assert (= (and d!1831038 c!1030705) b!5815279))

(assert (= (and d!1831038 (not c!1030705)) b!5815285))

(assert (= (and b!5815285 c!1030709) b!5815284))

(assert (= (and b!5815285 (not c!1030709)) b!5815278))

(assert (= (and b!5815278 res!2452275) b!5815276))

(assert (= (and b!5815278 c!1030708) b!5815282))

(assert (= (and b!5815278 (not c!1030708)) b!5815275))

(assert (= (and b!5815275 c!1030707) b!5815280))

(assert (= (and b!5815275 (not c!1030707)) b!5815283))

(assert (= (and b!5815283 c!1030706) b!5815281))

(assert (= (and b!5815283 (not c!1030706)) b!5815277))

(assert (= (or b!5815280 b!5815281) bm!454213))

(assert (= (or b!5815280 b!5815281) bm!454216))

(assert (= (or b!5815282 bm!454213) bm!454218))

(assert (= (or b!5815282 bm!454216) bm!454214))

(assert (= (or b!5815284 b!5815282) bm!454215))

(assert (= (or b!5815284 bm!454214) bm!454217))

(declare-fun m!6753036 () Bool)

(assert (=> bm!454218 m!6753036))

(assert (=> b!5815279 m!6752212))

(declare-fun m!6753038 () Bool)

(assert (=> bm!454215 m!6753038))

(declare-fun m!6753040 () Bool)

(assert (=> bm!454217 m!6753040))

(declare-fun m!6753042 () Bool)

(assert (=> b!5815276 m!6753042))

(assert (=> b!5814392 d!1831038))

(declare-fun d!1831040 () Bool)

(assert (=> d!1831040 (= (flatMap!1440 lt!2300956 lambda!317850) (choose!44194 lt!2300956 lambda!317850))))

(declare-fun bs!1372733 () Bool)

(assert (= bs!1372733 d!1831040))

(declare-fun m!6753044 () Bool)

(assert (=> bs!1372733 m!6753044))

(assert (=> b!5814392 d!1831040))

(declare-fun b!5815286 () Bool)

(declare-fun e!3569220 () (InoxSet Context!10434))

(assert (=> b!5815286 (= e!3569220 ((as const (Array Context!10434 Bool)) false))))

(declare-fun call!454224 () (InoxSet Context!10434))

(declare-fun e!3569219 () (InoxSet Context!10434))

(declare-fun b!5815287 () Bool)

(assert (=> b!5815287 (= e!3569219 ((_ map or) call!454224 (derivationStepZipperUp!1097 (Context!10435 (t!377153 (exprs!5717 lt!2300946))) (h!70123 s!2326))))))

(declare-fun b!5815288 () Bool)

(assert (=> b!5815288 (= e!3569219 e!3569220)))

(declare-fun c!1030711 () Bool)

(assert (=> b!5815288 (= c!1030711 ((_ is Cons!63674) (exprs!5717 lt!2300946)))))

(declare-fun bm!454219 () Bool)

(assert (=> bm!454219 (= call!454224 (derivationStepZipperDown!1171 (h!70122 (exprs!5717 lt!2300946)) (Context!10435 (t!377153 (exprs!5717 lt!2300946))) (h!70123 s!2326)))))

(declare-fun d!1831042 () Bool)

(declare-fun c!1030710 () Bool)

(declare-fun e!3569218 () Bool)

(assert (=> d!1831042 (= c!1030710 e!3569218)))

(declare-fun res!2452276 () Bool)

(assert (=> d!1831042 (=> (not res!2452276) (not e!3569218))))

(assert (=> d!1831042 (= res!2452276 ((_ is Cons!63674) (exprs!5717 lt!2300946)))))

(assert (=> d!1831042 (= (derivationStepZipperUp!1097 lt!2300946 (h!70123 s!2326)) e!3569219)))

(declare-fun b!5815289 () Bool)

(assert (=> b!5815289 (= e!3569220 call!454224)))

(declare-fun b!5815290 () Bool)

(assert (=> b!5815290 (= e!3569218 (nullable!5857 (h!70122 (exprs!5717 lt!2300946))))))

(assert (= (and d!1831042 res!2452276) b!5815290))

(assert (= (and d!1831042 c!1030710) b!5815287))

(assert (= (and d!1831042 (not c!1030710)) b!5815288))

(assert (= (and b!5815288 c!1030711) b!5815289))

(assert (= (and b!5815288 (not c!1030711)) b!5815286))

(assert (= (or b!5815287 b!5815289) bm!454219))

(declare-fun m!6753046 () Bool)

(assert (=> b!5815287 m!6753046))

(declare-fun m!6753048 () Bool)

(assert (=> bm!454219 m!6753048))

(declare-fun m!6753050 () Bool)

(assert (=> b!5815290 m!6753050))

(assert (=> b!5814392 d!1831042))

(declare-fun d!1831044 () Bool)

(assert (=> d!1831044 (= (flatMap!1440 lt!2300956 lambda!317850) (dynLambda!24936 lambda!317850 lt!2300946))))

(declare-fun lt!2301109 () Unit!156926)

(assert (=> d!1831044 (= lt!2301109 (choose!44193 lt!2300956 lt!2300946 lambda!317850))))

(assert (=> d!1831044 (= lt!2300956 (store ((as const (Array Context!10434 Bool)) false) lt!2300946 true))))

(assert (=> d!1831044 (= (lemmaFlatMapOnSingletonSet!972 lt!2300956 lt!2300946 lambda!317850) lt!2301109)))

(declare-fun b_lambda!219225 () Bool)

(assert (=> (not b_lambda!219225) (not d!1831044)))

(declare-fun bs!1372734 () Bool)

(assert (= bs!1372734 d!1831044))

(assert (=> bs!1372734 m!6752246))

(declare-fun m!6753052 () Bool)

(assert (=> bs!1372734 m!6753052))

(declare-fun m!6753054 () Bool)

(assert (=> bs!1372734 m!6753054))

(assert (=> bs!1372734 m!6752244))

(assert (=> b!5814392 d!1831044))

(declare-fun b!5815295 () Bool)

(declare-fun e!3569223 () Bool)

(declare-fun tp!1604317 () Bool)

(assert (=> b!5815295 (= e!3569223 (and tp_is_empty!40919 tp!1604317))))

(assert (=> b!5814401 (= tp!1604256 e!3569223)))

(assert (= (and b!5814401 ((_ is Cons!63675) (t!377154 s!2326))) b!5815295))

(declare-fun condSetEmpty!39178 () Bool)

(assert (=> setNonEmpty!39172 (= condSetEmpty!39178 (= setRest!39172 ((as const (Array Context!10434 Bool)) false)))))

(declare-fun setRes!39178 () Bool)

(assert (=> setNonEmpty!39172 (= tp!1604250 setRes!39178)))

(declare-fun setIsEmpty!39178 () Bool)

(assert (=> setIsEmpty!39178 setRes!39178))

(declare-fun e!3569226 () Bool)

(declare-fun tp!1604322 () Bool)

(declare-fun setElem!39178 () Context!10434)

(declare-fun setNonEmpty!39178 () Bool)

(assert (=> setNonEmpty!39178 (= setRes!39178 (and tp!1604322 (inv!82829 setElem!39178) e!3569226))))

(declare-fun setRest!39178 () (InoxSet Context!10434))

(assert (=> setNonEmpty!39178 (= setRest!39172 ((_ map or) (store ((as const (Array Context!10434 Bool)) false) setElem!39178 true) setRest!39178))))

(declare-fun b!5815300 () Bool)

(declare-fun tp!1604323 () Bool)

(assert (=> b!5815300 (= e!3569226 tp!1604323)))

(assert (= (and setNonEmpty!39172 condSetEmpty!39178) setIsEmpty!39178))

(assert (= (and setNonEmpty!39172 (not condSetEmpty!39178)) setNonEmpty!39178))

(assert (= setNonEmpty!39178 b!5815300))

(declare-fun m!6753056 () Bool)

(assert (=> setNonEmpty!39178 m!6753056))

(declare-fun b!5815305 () Bool)

(declare-fun e!3569229 () Bool)

(declare-fun tp!1604328 () Bool)

(declare-fun tp!1604329 () Bool)

(assert (=> b!5815305 (= e!3569229 (and tp!1604328 tp!1604329))))

(assert (=> b!5814393 (= tp!1604255 e!3569229)))

(assert (= (and b!5814393 ((_ is Cons!63674) (exprs!5717 (h!70124 zl!343)))) b!5815305))

(declare-fun b!5815306 () Bool)

(declare-fun e!3569230 () Bool)

(declare-fun tp!1604330 () Bool)

(declare-fun tp!1604331 () Bool)

(assert (=> b!5815306 (= e!3569230 (and tp!1604330 tp!1604331))))

(assert (=> b!5814398 (= tp!1604247 e!3569230)))

(assert (= (and b!5814398 ((_ is Cons!63674) (exprs!5717 setElem!39172))) b!5815306))

(declare-fun b!5815314 () Bool)

(declare-fun e!3569236 () Bool)

(declare-fun tp!1604336 () Bool)

(assert (=> b!5815314 (= e!3569236 tp!1604336)))

(declare-fun e!3569235 () Bool)

(declare-fun tp!1604337 () Bool)

(declare-fun b!5815313 () Bool)

(assert (=> b!5815313 (= e!3569235 (and (inv!82829 (h!70124 (t!377155 zl!343))) e!3569236 tp!1604337))))

(assert (=> b!5814420 (= tp!1604251 e!3569235)))

(assert (= b!5815313 b!5815314))

(assert (= (and b!5814420 ((_ is Cons!63676) (t!377155 zl!343))) b!5815313))

(declare-fun m!6753058 () Bool)

(assert (=> b!5815313 m!6753058))

(declare-fun b!5815327 () Bool)

(declare-fun e!3569239 () Bool)

(declare-fun tp!1604351 () Bool)

(assert (=> b!5815327 (= e!3569239 tp!1604351)))

(assert (=> b!5814415 (= tp!1604248 e!3569239)))

(declare-fun b!5815328 () Bool)

(declare-fun tp!1604352 () Bool)

(declare-fun tp!1604348 () Bool)

(assert (=> b!5815328 (= e!3569239 (and tp!1604352 tp!1604348))))

(declare-fun b!5815325 () Bool)

(assert (=> b!5815325 (= e!3569239 tp_is_empty!40919)))

(declare-fun b!5815326 () Bool)

(declare-fun tp!1604350 () Bool)

(declare-fun tp!1604349 () Bool)

(assert (=> b!5815326 (= e!3569239 (and tp!1604350 tp!1604349))))

(assert (= (and b!5814415 ((_ is ElementMatch!15833) (regOne!32178 r!7292))) b!5815325))

(assert (= (and b!5814415 ((_ is Concat!24678) (regOne!32178 r!7292))) b!5815326))

(assert (= (and b!5814415 ((_ is Star!15833) (regOne!32178 r!7292))) b!5815327))

(assert (= (and b!5814415 ((_ is Union!15833) (regOne!32178 r!7292))) b!5815328))

(declare-fun b!5815331 () Bool)

(declare-fun e!3569240 () Bool)

(declare-fun tp!1604356 () Bool)

(assert (=> b!5815331 (= e!3569240 tp!1604356)))

(assert (=> b!5814415 (= tp!1604254 e!3569240)))

(declare-fun b!5815332 () Bool)

(declare-fun tp!1604357 () Bool)

(declare-fun tp!1604353 () Bool)

(assert (=> b!5815332 (= e!3569240 (and tp!1604357 tp!1604353))))

(declare-fun b!5815329 () Bool)

(assert (=> b!5815329 (= e!3569240 tp_is_empty!40919)))

(declare-fun b!5815330 () Bool)

(declare-fun tp!1604355 () Bool)

(declare-fun tp!1604354 () Bool)

(assert (=> b!5815330 (= e!3569240 (and tp!1604355 tp!1604354))))

(assert (= (and b!5814415 ((_ is ElementMatch!15833) (regTwo!32178 r!7292))) b!5815329))

(assert (= (and b!5814415 ((_ is Concat!24678) (regTwo!32178 r!7292))) b!5815330))

(assert (= (and b!5814415 ((_ is Star!15833) (regTwo!32178 r!7292))) b!5815331))

(assert (= (and b!5814415 ((_ is Union!15833) (regTwo!32178 r!7292))) b!5815332))

(declare-fun b!5815335 () Bool)

(declare-fun e!3569241 () Bool)

(declare-fun tp!1604361 () Bool)

(assert (=> b!5815335 (= e!3569241 tp!1604361)))

(assert (=> b!5814421 (= tp!1604252 e!3569241)))

(declare-fun b!5815336 () Bool)

(declare-fun tp!1604362 () Bool)

(declare-fun tp!1604358 () Bool)

(assert (=> b!5815336 (= e!3569241 (and tp!1604362 tp!1604358))))

(declare-fun b!5815333 () Bool)

(assert (=> b!5815333 (= e!3569241 tp_is_empty!40919)))

(declare-fun b!5815334 () Bool)

(declare-fun tp!1604360 () Bool)

(declare-fun tp!1604359 () Bool)

(assert (=> b!5815334 (= e!3569241 (and tp!1604360 tp!1604359))))

(assert (= (and b!5814421 ((_ is ElementMatch!15833) (regOne!32179 r!7292))) b!5815333))

(assert (= (and b!5814421 ((_ is Concat!24678) (regOne!32179 r!7292))) b!5815334))

(assert (= (and b!5814421 ((_ is Star!15833) (regOne!32179 r!7292))) b!5815335))

(assert (= (and b!5814421 ((_ is Union!15833) (regOne!32179 r!7292))) b!5815336))

(declare-fun b!5815339 () Bool)

(declare-fun e!3569242 () Bool)

(declare-fun tp!1604366 () Bool)

(assert (=> b!5815339 (= e!3569242 tp!1604366)))

(assert (=> b!5814421 (= tp!1604249 e!3569242)))

(declare-fun b!5815340 () Bool)

(declare-fun tp!1604367 () Bool)

(declare-fun tp!1604363 () Bool)

(assert (=> b!5815340 (= e!3569242 (and tp!1604367 tp!1604363))))

(declare-fun b!5815337 () Bool)

(assert (=> b!5815337 (= e!3569242 tp_is_empty!40919)))

(declare-fun b!5815338 () Bool)

(declare-fun tp!1604365 () Bool)

(declare-fun tp!1604364 () Bool)

(assert (=> b!5815338 (= e!3569242 (and tp!1604365 tp!1604364))))

(assert (= (and b!5814421 ((_ is ElementMatch!15833) (regTwo!32179 r!7292))) b!5815337))

(assert (= (and b!5814421 ((_ is Concat!24678) (regTwo!32179 r!7292))) b!5815338))

(assert (= (and b!5814421 ((_ is Star!15833) (regTwo!32179 r!7292))) b!5815339))

(assert (= (and b!5814421 ((_ is Union!15833) (regTwo!32179 r!7292))) b!5815340))

(declare-fun b!5815343 () Bool)

(declare-fun e!3569243 () Bool)

(declare-fun tp!1604371 () Bool)

(assert (=> b!5815343 (= e!3569243 tp!1604371)))

(assert (=> b!5814400 (= tp!1604253 e!3569243)))

(declare-fun b!5815344 () Bool)

(declare-fun tp!1604372 () Bool)

(declare-fun tp!1604368 () Bool)

(assert (=> b!5815344 (= e!3569243 (and tp!1604372 tp!1604368))))

(declare-fun b!5815341 () Bool)

(assert (=> b!5815341 (= e!3569243 tp_is_empty!40919)))

(declare-fun b!5815342 () Bool)

(declare-fun tp!1604370 () Bool)

(declare-fun tp!1604369 () Bool)

(assert (=> b!5815342 (= e!3569243 (and tp!1604370 tp!1604369))))

(assert (= (and b!5814400 ((_ is ElementMatch!15833) (reg!16162 r!7292))) b!5815341))

(assert (= (and b!5814400 ((_ is Concat!24678) (reg!16162 r!7292))) b!5815342))

(assert (= (and b!5814400 ((_ is Star!15833) (reg!16162 r!7292))) b!5815343))

(assert (= (and b!5814400 ((_ is Union!15833) (reg!16162 r!7292))) b!5815344))

(declare-fun b_lambda!219227 () Bool)

(assert (= b_lambda!219205 (or b!5814396 b_lambda!219227)))

(declare-fun bs!1372735 () Bool)

(declare-fun d!1831046 () Bool)

(assert (= bs!1372735 (and d!1831046 b!5814396)))

(assert (=> bs!1372735 (= (dynLambda!24936 lambda!317850 lt!2300953) (derivationStepZipperUp!1097 lt!2300953 (h!70123 s!2326)))))

(assert (=> bs!1372735 m!6752214))

(assert (=> d!1830878 d!1831046))

(declare-fun b_lambda!219229 () Bool)

(assert (= b_lambda!219197 (or b!5814389 b_lambda!219229)))

(declare-fun bs!1372736 () Bool)

(declare-fun d!1831048 () Bool)

(assert (= bs!1372736 (and d!1831048 b!5814389)))

(declare-fun lt!2301110 () Unit!156926)

(assert (=> bs!1372736 (= lt!2301110 (lemmaConcatPreservesForall!334 (exprs!5717 lt!2300927) lt!2300948 lambda!317852))))

(assert (=> bs!1372736 (= (dynLambda!24934 lambda!317851 lt!2300927) (Context!10435 (++!14050 (exprs!5717 lt!2300927) lt!2300948)))))

(declare-fun m!6753060 () Bool)

(assert (=> bs!1372736 m!6753060))

(declare-fun m!6753062 () Bool)

(assert (=> bs!1372736 m!6753062))

(assert (=> d!1830806 d!1831048))

(declare-fun b_lambda!219231 () Bool)

(assert (= b_lambda!219207 (or b!5814396 b_lambda!219231)))

(declare-fun bs!1372737 () Bool)

(declare-fun d!1831050 () Bool)

(assert (= bs!1372737 (and d!1831050 b!5814396)))

(assert (=> bs!1372737 (= (dynLambda!24936 lambda!317850 lt!2300927) (derivationStepZipperUp!1097 lt!2300927 (h!70123 s!2326)))))

(assert (=> bs!1372737 m!6752220))

(assert (=> d!1830884 d!1831050))

(declare-fun b_lambda!219233 () Bool)

(assert (= b_lambda!219223 (or b!5814396 b_lambda!219233)))

(declare-fun bs!1372738 () Bool)

(declare-fun d!1831052 () Bool)

(assert (= bs!1372738 (and d!1831052 b!5814396)))

(assert (=> bs!1372738 (= (dynLambda!24936 lambda!317850 (h!70124 zl!343)) (derivationStepZipperUp!1097 (h!70124 zl!343) (h!70123 s!2326)))))

(assert (=> bs!1372738 m!6752200))

(assert (=> d!1831026 d!1831052))

(declare-fun b_lambda!219235 () Bool)

(assert (= b_lambda!219225 (or b!5814396 b_lambda!219235)))

(declare-fun bs!1372739 () Bool)

(declare-fun d!1831054 () Bool)

(assert (= bs!1372739 (and d!1831054 b!5814396)))

(assert (=> bs!1372739 (= (dynLambda!24936 lambda!317850 lt!2300946) (derivationStepZipperUp!1097 lt!2300946 (h!70123 s!2326)))))

(assert (=> bs!1372739 m!6752240))

(assert (=> d!1831044 d!1831054))

(check-sat (not bm!454190) (not b!5814924) (not bm!454189) (not d!1831002) (not d!1831040) (not d!1831020) (not bm!454163) (not b!5815342) (not b!5815235) tp_is_empty!40919 (not d!1830970) (not d!1830974) (not b!5815305) (not d!1830868) (not b!5814731) (not d!1830910) (not d!1831028) (not d!1830830) (not b!5815274) (not d!1830854) (not b!5814753) (not bm!454212) (not b!5814930) (not bm!454162) (not d!1830988) (not d!1830850) (not b!5814884) (not bm!454160) (not d!1830972) (not b!5815186) (not d!1830976) (not b!5815210) (not bm!454150) (not b!5815343) (not b!5814756) (not b!5815344) (not b!5815185) (not b!5815335) (not d!1831034) (not bm!454157) (not d!1830926) (not b!5815332) (not d!1831044) (not d!1830796) (not b!5814894) (not b!5814888) (not d!1830808) (not b!5815338) (not b!5814505) (not b_lambda!219235) (not b!5815340) (not d!1830866) (not b!5815334) (not b_lambda!219227) (not b!5814700) (not b!5815009) (not d!1830804) (not b!5815306) (not d!1830798) (not b!5814506) (not d!1831036) (not d!1830978) (not b!5814629) (not b!5814502) (not b!5815272) (not b!5815187) (not bs!1372736) (not b!5815276) (not b!5814674) (not d!1830884) (not b!5814509) (not b!5814500) (not d!1830874) (not d!1831022) (not b_lambda!219233) (not b!5814678) (not b!5815313) (not b!5814898) (not b!5815326) (not b!5814503) (not b!5815295) (not d!1830966) (not b!5814992) (not bm!454219) (not bs!1372738) (not b!5815230) (not b_lambda!219229) (not b!5814576) (not b!5814671) (not b!5814626) (not bm!454217) (not b!5814504) (not b!5815330) (not d!1830882) (not b!5815273) (not b!5814921) (not d!1831010) (not d!1831006) (not b!5815271) (not b!5815331) (not b!5814627) (not setNonEmpty!39178) (not b!5814728) (not d!1830968) (not b!5815238) (not b!5815300) (not bs!1372739) (not d!1831016) (not b!5815191) (not bm!454151) (not d!1830880) (not bs!1372737) (not b!5815336) (not b!5814670) (not bm!454188) (not b!5815233) (not b!5814833) (not bm!454210) (not b!5815339) (not b!5815243) (not b!5814885) (not b!5815287) (not bm!454161) (not d!1830878) (not d!1830806) (not b!5814927) (not b!5815199) (not b!5815270) (not bm!454215) (not d!1831008) (not d!1830924) (not bm!454156) (not b!5815188) (not d!1831014) (not b!5815237) (not b!5815240) (not b!5814628) (not b!5815314) (not b!5814931) (not b!5815234) (not b!5814672) (not d!1831026) (not d!1830920) (not d!1830852) (not d!1830856) (not b!5814881) (not b!5815328) (not b!5814677) (not b!5814435) (not bs!1372735) (not b!5815006) (not b!5814829) (not d!1830848) (not b!5815209) (not b!5815184) (not b!5814887) (not bm!454218) (not b!5814878) (not b!5815290) (not b!5815327) (not b!5814577) (not b!5814436) (not b!5814675) (not bm!454203) (not d!1830816) (not d!1831012) (not d!1830832) (not b_lambda!219231) (not b!5814928) (not bm!454186))
(check-sat)
