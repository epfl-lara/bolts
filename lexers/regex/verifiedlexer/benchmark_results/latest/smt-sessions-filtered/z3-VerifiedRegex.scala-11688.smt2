; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!658416 () Bool)

(assert start!658416)

(declare-fun b!6802221 () Bool)

(assert (=> b!6802221 true))

(assert (=> b!6802221 true))

(declare-fun lambda!383745 () Int)

(declare-fun lambda!383744 () Int)

(assert (=> b!6802221 (not (= lambda!383745 lambda!383744))))

(assert (=> b!6802221 true))

(assert (=> b!6802221 true))

(declare-fun lambda!383746 () Int)

(assert (=> b!6802221 (not (= lambda!383746 lambda!383744))))

(assert (=> b!6802221 (not (= lambda!383746 lambda!383745))))

(assert (=> b!6802221 true))

(assert (=> b!6802221 true))

(declare-fun b!6802209 () Bool)

(assert (=> b!6802209 true))

(declare-fun b!6802233 () Bool)

(assert (=> b!6802233 true))

(declare-fun b!6802205 () Bool)

(declare-fun e!4105018 () Bool)

(declare-fun e!4105028 () Bool)

(assert (=> b!6802205 (= e!4105018 e!4105028)))

(declare-fun res!2779785 () Bool)

(assert (=> b!6802205 (=> res!2779785 e!4105028)))

(declare-datatypes ((C!33516 0))(
  ( (C!33517 (val!26460 Int)) )
))
(declare-datatypes ((List!66168 0))(
  ( (Nil!66044) (Cons!66044 (h!72492 C!33516) (t!379899 List!66168)) )
))
(declare-fun s!2326 () List!66168)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!16623 0))(
  ( (ElementMatch!16623 (c!1264881 C!33516)) (Concat!25468 (regOne!33758 Regex!16623) (regTwo!33758 Regex!16623)) (EmptyExpr!16623) (Star!16623 (reg!16952 Regex!16623)) (EmptyLang!16623) (Union!16623 (regOne!33759 Regex!16623) (regTwo!33759 Regex!16623)) )
))
(declare-datatypes ((List!66169 0))(
  ( (Nil!66045) (Cons!66045 (h!72493 Regex!16623) (t!379900 List!66169)) )
))
(declare-datatypes ((Context!12014 0))(
  ( (Context!12015 (exprs!6507 List!66169)) )
))
(declare-fun lt!2448377 () (InoxSet Context!12014))

(declare-fun lt!2448387 () (InoxSet Context!12014))

(declare-fun derivationStepZipper!2567 ((InoxSet Context!12014) C!33516) (InoxSet Context!12014))

(assert (=> b!6802205 (= res!2779785 (not (= lt!2448377 (derivationStepZipper!2567 lt!2448387 (h!72492 s!2326)))))))

(declare-fun lt!2448396 () Context!12014)

(declare-fun lambda!383747 () Int)

(declare-fun flatMap!2104 ((InoxSet Context!12014) Int) (InoxSet Context!12014))

(declare-fun derivationStepZipperUp!1777 (Context!12014 C!33516) (InoxSet Context!12014))

(assert (=> b!6802205 (= (flatMap!2104 lt!2448387 lambda!383747) (derivationStepZipperUp!1777 lt!2448396 (h!72492 s!2326)))))

(declare-datatypes ((Unit!159937 0))(
  ( (Unit!159938) )
))
(declare-fun lt!2448384 () Unit!159937)

(declare-fun lemmaFlatMapOnSingletonSet!1630 ((InoxSet Context!12014) Context!12014 Int) Unit!159937)

(assert (=> b!6802205 (= lt!2448384 (lemmaFlatMapOnSingletonSet!1630 lt!2448387 lt!2448396 lambda!383747))))

(declare-fun lt!2448407 () Context!12014)

(declare-fun lt!2448380 () (InoxSet Context!12014))

(assert (=> b!6802205 (= (flatMap!2104 lt!2448380 lambda!383747) (derivationStepZipperUp!1777 lt!2448407 (h!72492 s!2326)))))

(declare-fun lt!2448388 () Unit!159937)

(assert (=> b!6802205 (= lt!2448388 (lemmaFlatMapOnSingletonSet!1630 lt!2448380 lt!2448407 lambda!383747))))

(declare-fun lt!2448383 () (InoxSet Context!12014))

(assert (=> b!6802205 (= lt!2448383 (derivationStepZipperUp!1777 lt!2448396 (h!72492 s!2326)))))

(declare-fun lt!2448393 () (InoxSet Context!12014))

(assert (=> b!6802205 (= lt!2448393 (derivationStepZipperUp!1777 lt!2448407 (h!72492 s!2326)))))

(assert (=> b!6802205 (= lt!2448387 (store ((as const (Array Context!12014 Bool)) false) lt!2448396 true))))

(assert (=> b!6802205 (= lt!2448380 (store ((as const (Array Context!12014 Bool)) false) lt!2448407 true))))

(declare-fun r!7292 () Regex!16623)

(assert (=> b!6802205 (= lt!2448407 (Context!12015 (Cons!66045 (reg!16952 r!7292) Nil!66045)))))

(declare-fun res!2779786 () Bool)

(declare-fun e!4105016 () Bool)

(assert (=> start!658416 (=> (not res!2779786) (not e!4105016))))

(declare-fun validRegex!8359 (Regex!16623) Bool)

(assert (=> start!658416 (= res!2779786 (validRegex!8359 r!7292))))

(assert (=> start!658416 e!4105016))

(declare-fun e!4105031 () Bool)

(assert (=> start!658416 e!4105031))

(declare-fun condSetEmpty!46633 () Bool)

(declare-fun z!1189 () (InoxSet Context!12014))

(assert (=> start!658416 (= condSetEmpty!46633 (= z!1189 ((as const (Array Context!12014 Bool)) false)))))

(declare-fun setRes!46633 () Bool)

(assert (=> start!658416 setRes!46633))

(declare-fun e!4105021 () Bool)

(assert (=> start!658416 e!4105021))

(declare-fun e!4105020 () Bool)

(assert (=> start!658416 e!4105020))

(declare-fun setNonEmpty!46633 () Bool)

(declare-fun setElem!46633 () Context!12014)

(declare-fun e!4105025 () Bool)

(declare-fun tp!1862291 () Bool)

(declare-fun inv!84804 (Context!12014) Bool)

(assert (=> setNonEmpty!46633 (= setRes!46633 (and tp!1862291 (inv!84804 setElem!46633) e!4105025))))

(declare-fun setRest!46633 () (InoxSet Context!12014))

(assert (=> setNonEmpty!46633 (= z!1189 ((_ map or) (store ((as const (Array Context!12014 Bool)) false) setElem!46633 true) setRest!46633))))

(declare-fun b!6802206 () Bool)

(declare-fun tp!1862289 () Bool)

(assert (=> b!6802206 (= e!4105025 tp!1862289)))

(declare-fun tp!1862287 () Bool)

(declare-fun e!4105015 () Bool)

(declare-fun b!6802207 () Bool)

(declare-datatypes ((List!66170 0))(
  ( (Nil!66046) (Cons!66046 (h!72494 Context!12014) (t!379901 List!66170)) )
))
(declare-fun zl!343 () List!66170)

(assert (=> b!6802207 (= e!4105021 (and (inv!84804 (h!72494 zl!343)) e!4105015 tp!1862287))))

(declare-fun b!6802208 () Bool)

(declare-fun e!4105024 () Bool)

(declare-fun lt!2448382 () Bool)

(assert (=> b!6802208 (= e!4105024 lt!2448382)))

(declare-fun e!4105017 () Bool)

(declare-fun e!4105032 () Bool)

(assert (=> b!6802209 (= e!4105017 e!4105032)))

(declare-fun res!2779769 () Bool)

(assert (=> b!6802209 (=> res!2779769 e!4105032)))

(declare-fun lt!2448406 () (InoxSet Context!12014))

(assert (=> b!6802209 (= res!2779769 (not (= lt!2448377 lt!2448406)))))

(assert (=> b!6802209 (= (flatMap!2104 z!1189 lambda!383747) (derivationStepZipperUp!1777 (h!72494 zl!343) (h!72492 s!2326)))))

(declare-fun lt!2448405 () Unit!159937)

(assert (=> b!6802209 (= lt!2448405 (lemmaFlatMapOnSingletonSet!1630 z!1189 (h!72494 zl!343) lambda!383747))))

(declare-fun b!6802210 () Bool)

(declare-fun e!4105030 () Bool)

(assert (=> b!6802210 (= e!4105030 e!4105018)))

(declare-fun res!2779787 () Bool)

(assert (=> b!6802210 (=> res!2779787 e!4105018)))

(declare-fun lt!2448400 () Context!12014)

(declare-fun lt!2448378 () Regex!16623)

(declare-fun unfocusZipper!2365 (List!66170) Regex!16623)

(assert (=> b!6802210 (= res!2779787 (not (= (unfocusZipper!2365 (Cons!66046 lt!2448400 Nil!66046)) lt!2448378)))))

(assert (=> b!6802210 (= lt!2448378 (Concat!25468 (reg!16952 r!7292) r!7292))))

(declare-fun b!6802211 () Bool)

(declare-fun e!4105022 () Bool)

(assert (=> b!6802211 (= e!4105016 e!4105022)))

(declare-fun res!2779770 () Bool)

(assert (=> b!6802211 (=> (not res!2779770) (not e!4105022))))

(declare-fun lt!2448403 () Regex!16623)

(assert (=> b!6802211 (= res!2779770 (= r!7292 lt!2448403))))

(assert (=> b!6802211 (= lt!2448403 (unfocusZipper!2365 zl!343))))

(declare-fun b!6802212 () Bool)

(assert (=> b!6802212 (= e!4105032 e!4105030)))

(declare-fun res!2779772 () Bool)

(assert (=> b!6802212 (=> res!2779772 e!4105030)))

(declare-fun derivationStepZipperDown!1851 (Regex!16623 Context!12014 C!33516) (InoxSet Context!12014))

(assert (=> b!6802212 (= res!2779772 (not (= lt!2448377 (derivationStepZipperDown!1851 (reg!16952 r!7292) lt!2448396 (h!72492 s!2326)))))))

(declare-fun lt!2448392 () List!66169)

(assert (=> b!6802212 (= lt!2448396 (Context!12015 lt!2448392))))

(declare-fun lt!2448394 () (InoxSet Context!12014))

(assert (=> b!6802212 (= (flatMap!2104 lt!2448394 lambda!383747) (derivationStepZipperUp!1777 lt!2448400 (h!72492 s!2326)))))

(declare-fun lt!2448390 () Unit!159937)

(assert (=> b!6802212 (= lt!2448390 (lemmaFlatMapOnSingletonSet!1630 lt!2448394 lt!2448400 lambda!383747))))

(declare-fun lt!2448381 () (InoxSet Context!12014))

(assert (=> b!6802212 (= lt!2448381 (derivationStepZipperUp!1777 lt!2448400 (h!72492 s!2326)))))

(assert (=> b!6802212 (= lt!2448394 (store ((as const (Array Context!12014 Bool)) false) lt!2448400 true))))

(assert (=> b!6802212 (= lt!2448400 (Context!12015 (Cons!66045 (reg!16952 r!7292) lt!2448392)))))

(assert (=> b!6802212 (= lt!2448392 (Cons!66045 r!7292 Nil!66045))))

(declare-fun b!6802213 () Bool)

(declare-fun res!2779781 () Bool)

(declare-fun e!4105019 () Bool)

(assert (=> b!6802213 (=> res!2779781 e!4105019)))

(get-info :version)

(assert (=> b!6802213 (= res!2779781 (not ((_ is Cons!66045) (exprs!6507 (h!72494 zl!343)))))))

(declare-fun b!6802214 () Bool)

(declare-fun res!2779789 () Bool)

(declare-fun e!4105026 () Bool)

(assert (=> b!6802214 (=> res!2779789 e!4105026)))

(assert (=> b!6802214 (= res!2779789 ((_ is Nil!66044) s!2326))))

(declare-fun b!6802215 () Bool)

(declare-fun tp_is_empty!42499 () Bool)

(assert (=> b!6802215 (= e!4105031 tp_is_empty!42499)))

(declare-fun b!6802216 () Bool)

(declare-fun res!2779778 () Bool)

(assert (=> b!6802216 (=> res!2779778 e!4105019)))

(declare-fun isEmpty!38425 (List!66170) Bool)

(assert (=> b!6802216 (= res!2779778 (not (isEmpty!38425 (t!379901 zl!343))))))

(declare-fun b!6802217 () Bool)

(assert (=> b!6802217 (= e!4105022 (not e!4105019))))

(declare-fun res!2779783 () Bool)

(assert (=> b!6802217 (=> res!2779783 e!4105019)))

(assert (=> b!6802217 (= res!2779783 (not ((_ is Cons!66046) zl!343)))))

(declare-fun lt!2448399 () Bool)

(declare-fun matchRSpec!3724 (Regex!16623 List!66168) Bool)

(assert (=> b!6802217 (= lt!2448399 (matchRSpec!3724 r!7292 s!2326))))

(declare-fun matchR!8806 (Regex!16623 List!66168) Bool)

(assert (=> b!6802217 (= lt!2448399 (matchR!8806 r!7292 s!2326))))

(declare-fun lt!2448398 () Unit!159937)

(declare-fun mainMatchTheorem!3724 (Regex!16623 List!66168) Unit!159937)

(assert (=> b!6802217 (= lt!2448398 (mainMatchTheorem!3724 r!7292 s!2326))))

(declare-fun b!6802218 () Bool)

(declare-fun e!4105027 () Bool)

(declare-fun e!4105029 () Bool)

(assert (=> b!6802218 (= e!4105027 e!4105029)))

(declare-fun res!2779794 () Bool)

(assert (=> b!6802218 (=> res!2779794 e!4105029)))

(declare-datatypes ((tuple2!67196 0))(
  ( (tuple2!67197 (_1!36901 List!66168) (_2!36901 List!66168)) )
))
(declare-fun lt!2448389 () tuple2!67196)

(declare-fun ++!14792 (List!66168 List!66168) List!66168)

(assert (=> b!6802218 (= res!2779794 (not (= s!2326 (++!14792 (_1!36901 lt!2448389) (_2!36901 lt!2448389)))))))

(declare-datatypes ((Option!16510 0))(
  ( (None!16509) (Some!16509 (v!52715 tuple2!67196)) )
))
(declare-fun lt!2448385 () Option!16510)

(declare-fun get!23004 (Option!16510) tuple2!67196)

(assert (=> b!6802218 (= lt!2448389 (get!23004 lt!2448385))))

(declare-fun isDefined!13213 (Option!16510) Bool)

(assert (=> b!6802218 (isDefined!13213 lt!2448385)))

(declare-fun findConcatSeparationZippers!232 ((InoxSet Context!12014) (InoxSet Context!12014) List!66168 List!66168 List!66168) Option!16510)

(assert (=> b!6802218 (= lt!2448385 (findConcatSeparationZippers!232 lt!2448380 lt!2448387 Nil!66044 s!2326 s!2326))))

(declare-fun lt!2448397 () Unit!159937)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!232 ((InoxSet Context!12014) Context!12014 List!66168) Unit!159937)

(assert (=> b!6802218 (= lt!2448397 (lemmaConcatZipperMatchesStringThenFindConcatDefined!232 lt!2448380 lt!2448396 s!2326))))

(declare-fun b!6802219 () Bool)

(declare-fun res!2779790 () Bool)

(assert (=> b!6802219 (=> res!2779790 e!4105019)))

(declare-fun generalisedUnion!2467 (List!66169) Regex!16623)

(declare-fun unfocusZipperList!2044 (List!66170) List!66169)

(assert (=> b!6802219 (= res!2779790 (not (= r!7292 (generalisedUnion!2467 (unfocusZipperList!2044 zl!343)))))))

(declare-fun b!6802220 () Bool)

(declare-fun res!2779777 () Bool)

(assert (=> b!6802220 (=> res!2779777 e!4105019)))

(declare-fun generalisedConcat!2220 (List!66169) Regex!16623)

(assert (=> b!6802220 (= res!2779777 (not (= r!7292 (generalisedConcat!2220 (exprs!6507 (h!72494 zl!343))))))))

(assert (=> b!6802221 (= e!4105019 e!4105026)))

(declare-fun res!2779792 () Bool)

(assert (=> b!6802221 (=> res!2779792 e!4105026)))

(assert (=> b!6802221 (= res!2779792 (not (= lt!2448399 e!4105024)))))

(declare-fun res!2779788 () Bool)

(assert (=> b!6802221 (=> res!2779788 e!4105024)))

(declare-fun isEmpty!38426 (List!66168) Bool)

(assert (=> b!6802221 (= res!2779788 (isEmpty!38426 s!2326))))

(declare-fun Exists!3691 (Int) Bool)

(assert (=> b!6802221 (= (Exists!3691 lambda!383744) (Exists!3691 lambda!383746))))

(declare-fun lt!2448391 () Unit!159937)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2218 (Regex!16623 Regex!16623 List!66168) Unit!159937)

(assert (=> b!6802221 (= lt!2448391 (lemmaExistCutMatchRandMatchRSpecEquivalent!2218 (reg!16952 r!7292) r!7292 s!2326))))

(assert (=> b!6802221 (= (Exists!3691 lambda!383744) (Exists!3691 lambda!383745))))

(declare-fun lt!2448379 () Unit!159937)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!782 (Regex!16623 List!66168) Unit!159937)

(assert (=> b!6802221 (= lt!2448379 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!782 (reg!16952 r!7292) s!2326))))

(assert (=> b!6802221 (= lt!2448382 (Exists!3691 lambda!383744))))

(declare-fun findConcatSeparation!2924 (Regex!16623 Regex!16623 List!66168 List!66168 List!66168) Option!16510)

(assert (=> b!6802221 (= lt!2448382 (isDefined!13213 (findConcatSeparation!2924 (reg!16952 r!7292) r!7292 Nil!66044 s!2326 s!2326)))))

(declare-fun lt!2448401 () Unit!159937)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2688 (Regex!16623 Regex!16623 List!66168) Unit!159937)

(assert (=> b!6802221 (= lt!2448401 (lemmaFindConcatSeparationEquivalentToExists!2688 (reg!16952 r!7292) r!7292 s!2326))))

(declare-fun b!6802222 () Bool)

(declare-fun res!2779771 () Bool)

(declare-fun e!4105023 () Bool)

(assert (=> b!6802222 (=> res!2779771 e!4105023)))

(declare-fun matchZipper!2609 ((InoxSet Context!12014) List!66168) Bool)

(assert (=> b!6802222 (= res!2779771 (not (matchZipper!2609 z!1189 s!2326)))))

(declare-fun b!6802223 () Bool)

(declare-fun tp!1862285 () Bool)

(declare-fun tp!1862283 () Bool)

(assert (=> b!6802223 (= e!4105031 (and tp!1862285 tp!1862283))))

(declare-fun b!6802224 () Bool)

(declare-fun tp!1862288 () Bool)

(declare-fun tp!1862286 () Bool)

(assert (=> b!6802224 (= e!4105031 (and tp!1862288 tp!1862286))))

(declare-fun b!6802225 () Bool)

(declare-fun res!2779791 () Bool)

(assert (=> b!6802225 (=> res!2779791 e!4105030)))

(assert (=> b!6802225 (= res!2779791 (or (not (= lt!2448403 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6802226 () Bool)

(assert (=> b!6802226 (= e!4105026 e!4105017)))

(declare-fun res!2779773 () Bool)

(assert (=> b!6802226 (=> res!2779773 e!4105017)))

(declare-fun lt!2448408 () (InoxSet Context!12014))

(assert (=> b!6802226 (= res!2779773 (not (= lt!2448408 lt!2448406)))))

(assert (=> b!6802226 (= lt!2448406 (derivationStepZipperDown!1851 r!7292 (Context!12015 Nil!66045) (h!72492 s!2326)))))

(assert (=> b!6802226 (= lt!2448408 (derivationStepZipperUp!1777 (Context!12015 (Cons!66045 r!7292 Nil!66045)) (h!72492 s!2326)))))

(assert (=> b!6802226 (= lt!2448377 (derivationStepZipper!2567 z!1189 (h!72492 s!2326)))))

(declare-fun b!6802227 () Bool)

(declare-fun res!2779775 () Bool)

(assert (=> b!6802227 (=> res!2779775 e!4105030)))

(assert (=> b!6802227 (= res!2779775 (not (= (matchZipper!2609 lt!2448394 s!2326) (matchZipper!2609 (derivationStepZipper!2567 lt!2448394 (h!72492 s!2326)) (t!379899 s!2326)))))))

(declare-fun b!6802228 () Bool)

(declare-fun tp!1862284 () Bool)

(assert (=> b!6802228 (= e!4105031 tp!1862284)))

(declare-fun b!6802229 () Bool)

(declare-fun res!2779793 () Bool)

(assert (=> b!6802229 (=> res!2779793 e!4105028)))

(assert (=> b!6802229 (= res!2779793 (not (= (unfocusZipper!2365 (Cons!66046 lt!2448407 Nil!66046)) (reg!16952 r!7292))))))

(declare-fun setIsEmpty!46633 () Bool)

(assert (=> setIsEmpty!46633 setRes!46633))

(declare-fun b!6802230 () Bool)

(declare-fun res!2779774 () Bool)

(assert (=> b!6802230 (=> res!2779774 e!4105029)))

(assert (=> b!6802230 (= res!2779774 (not (matchZipper!2609 lt!2448380 (_1!36901 lt!2448389))))))

(declare-fun b!6802231 () Bool)

(declare-fun tp!1862290 () Bool)

(assert (=> b!6802231 (= e!4105015 tp!1862290)))

(declare-fun b!6802232 () Bool)

(assert (=> b!6802232 (= e!4105028 e!4105023)))

(declare-fun res!2779776 () Bool)

(assert (=> b!6802232 (=> res!2779776 e!4105023)))

(declare-fun lt!2448402 () Bool)

(assert (=> b!6802232 (= res!2779776 lt!2448402)))

(assert (=> b!6802232 (= lt!2448402 (matchRSpec!3724 lt!2448378 s!2326))))

(assert (=> b!6802232 (= lt!2448402 (matchR!8806 lt!2448378 s!2326))))

(declare-fun lt!2448404 () Unit!159937)

(assert (=> b!6802232 (= lt!2448404 (mainMatchTheorem!3724 lt!2448378 s!2326))))

(assert (=> b!6802233 (= e!4105023 e!4105027)))

(declare-fun res!2779780 () Bool)

(assert (=> b!6802233 (=> res!2779780 e!4105027)))

(declare-fun appendTo!228 ((InoxSet Context!12014) Context!12014) (InoxSet Context!12014))

(assert (=> b!6802233 (= res!2779780 (not (= (appendTo!228 lt!2448380 lt!2448396) lt!2448394)))))

(declare-fun lambda!383748 () Int)

(declare-fun map!15095 ((InoxSet Context!12014) Int) (InoxSet Context!12014))

(declare-fun ++!14793 (List!66169 List!66169) List!66169)

(assert (=> b!6802233 (= (map!15095 lt!2448380 lambda!383748) (store ((as const (Array Context!12014 Bool)) false) (Context!12015 (++!14793 (Cons!66045 (reg!16952 r!7292) Nil!66045) lt!2448392)) true))))

(declare-fun lt!2448386 () Unit!159937)

(declare-fun lambda!383749 () Int)

(declare-fun lemmaConcatPreservesForall!452 (List!66169 List!66169 Int) Unit!159937)

(assert (=> b!6802233 (= lt!2448386 (lemmaConcatPreservesForall!452 (Cons!66045 (reg!16952 r!7292) Nil!66045) lt!2448392 lambda!383749))))

(declare-fun lt!2448395 () Unit!159937)

(declare-fun lemmaMapOnSingletonSet!258 ((InoxSet Context!12014) Context!12014 Int) Unit!159937)

(assert (=> b!6802233 (= lt!2448395 (lemmaMapOnSingletonSet!258 lt!2448380 lt!2448407 lambda!383748))))

(declare-fun b!6802234 () Bool)

(declare-fun tp!1862282 () Bool)

(assert (=> b!6802234 (= e!4105020 (and tp_is_empty!42499 tp!1862282))))

(declare-fun b!6802235 () Bool)

(declare-fun res!2779784 () Bool)

(assert (=> b!6802235 (=> res!2779784 e!4105019)))

(assert (=> b!6802235 (= res!2779784 (or ((_ is EmptyExpr!16623) r!7292) ((_ is EmptyLang!16623) r!7292) ((_ is ElementMatch!16623) r!7292) ((_ is Union!16623) r!7292) ((_ is Concat!25468) r!7292)))))

(declare-fun b!6802236 () Bool)

(assert (=> b!6802236 (= e!4105029 (inv!84804 lt!2448396))))

(declare-fun b!6802237 () Bool)

(declare-fun res!2779779 () Bool)

(assert (=> b!6802237 (=> (not res!2779779) (not e!4105016))))

(declare-fun toList!10407 ((InoxSet Context!12014)) List!66170)

(assert (=> b!6802237 (= res!2779779 (= (toList!10407 z!1189) zl!343))))

(declare-fun b!6802238 () Bool)

(declare-fun res!2779768 () Bool)

(assert (=> b!6802238 (=> res!2779768 e!4105029)))

(assert (=> b!6802238 (= res!2779768 (not (matchZipper!2609 lt!2448387 (_2!36901 lt!2448389))))))

(declare-fun b!6802239 () Bool)

(declare-fun res!2779782 () Bool)

(assert (=> b!6802239 (=> res!2779782 e!4105028)))

(assert (=> b!6802239 (= res!2779782 (not (= (unfocusZipper!2365 (Cons!66046 lt!2448396 Nil!66046)) r!7292)))))

(assert (= (and start!658416 res!2779786) b!6802237))

(assert (= (and b!6802237 res!2779779) b!6802211))

(assert (= (and b!6802211 res!2779770) b!6802217))

(assert (= (and b!6802217 (not res!2779783)) b!6802216))

(assert (= (and b!6802216 (not res!2779778)) b!6802220))

(assert (= (and b!6802220 (not res!2779777)) b!6802213))

(assert (= (and b!6802213 (not res!2779781)) b!6802219))

(assert (= (and b!6802219 (not res!2779790)) b!6802235))

(assert (= (and b!6802235 (not res!2779784)) b!6802221))

(assert (= (and b!6802221 (not res!2779788)) b!6802208))

(assert (= (and b!6802221 (not res!2779792)) b!6802214))

(assert (= (and b!6802214 (not res!2779789)) b!6802226))

(assert (= (and b!6802226 (not res!2779773)) b!6802209))

(assert (= (and b!6802209 (not res!2779769)) b!6802212))

(assert (= (and b!6802212 (not res!2779772)) b!6802227))

(assert (= (and b!6802227 (not res!2779775)) b!6802225))

(assert (= (and b!6802225 (not res!2779791)) b!6802210))

(assert (= (and b!6802210 (not res!2779787)) b!6802205))

(assert (= (and b!6802205 (not res!2779785)) b!6802229))

(assert (= (and b!6802229 (not res!2779793)) b!6802239))

(assert (= (and b!6802239 (not res!2779782)) b!6802232))

(assert (= (and b!6802232 (not res!2779776)) b!6802222))

(assert (= (and b!6802222 (not res!2779771)) b!6802233))

(assert (= (and b!6802233 (not res!2779780)) b!6802218))

(assert (= (and b!6802218 (not res!2779794)) b!6802230))

(assert (= (and b!6802230 (not res!2779774)) b!6802238))

(assert (= (and b!6802238 (not res!2779768)) b!6802236))

(assert (= (and start!658416 ((_ is ElementMatch!16623) r!7292)) b!6802215))

(assert (= (and start!658416 ((_ is Concat!25468) r!7292)) b!6802224))

(assert (= (and start!658416 ((_ is Star!16623) r!7292)) b!6802228))

(assert (= (and start!658416 ((_ is Union!16623) r!7292)) b!6802223))

(assert (= (and start!658416 condSetEmpty!46633) setIsEmpty!46633))

(assert (= (and start!658416 (not condSetEmpty!46633)) setNonEmpty!46633))

(assert (= setNonEmpty!46633 b!6802206))

(assert (= b!6802207 b!6802231))

(assert (= (and start!658416 ((_ is Cons!66046) zl!343)) b!6802207))

(assert (= (and start!658416 ((_ is Cons!66044) s!2326)) b!6802234))

(declare-fun m!7548418 () Bool)

(assert (=> b!6802233 m!7548418))

(declare-fun m!7548420 () Bool)

(assert (=> b!6802233 m!7548420))

(declare-fun m!7548422 () Bool)

(assert (=> b!6802233 m!7548422))

(declare-fun m!7548424 () Bool)

(assert (=> b!6802233 m!7548424))

(declare-fun m!7548426 () Bool)

(assert (=> b!6802233 m!7548426))

(declare-fun m!7548428 () Bool)

(assert (=> b!6802233 m!7548428))

(declare-fun m!7548430 () Bool)

(assert (=> b!6802210 m!7548430))

(declare-fun m!7548432 () Bool)

(assert (=> b!6802229 m!7548432))

(declare-fun m!7548434 () Bool)

(assert (=> b!6802218 m!7548434))

(declare-fun m!7548436 () Bool)

(assert (=> b!6802218 m!7548436))

(declare-fun m!7548438 () Bool)

(assert (=> b!6802218 m!7548438))

(declare-fun m!7548440 () Bool)

(assert (=> b!6802218 m!7548440))

(declare-fun m!7548442 () Bool)

(assert (=> b!6802218 m!7548442))

(declare-fun m!7548444 () Bool)

(assert (=> b!6802230 m!7548444))

(declare-fun m!7548446 () Bool)

(assert (=> b!6802220 m!7548446))

(declare-fun m!7548448 () Bool)

(assert (=> b!6802226 m!7548448))

(declare-fun m!7548450 () Bool)

(assert (=> b!6802226 m!7548450))

(declare-fun m!7548452 () Bool)

(assert (=> b!6802226 m!7548452))

(declare-fun m!7548454 () Bool)

(assert (=> b!6802222 m!7548454))

(declare-fun m!7548456 () Bool)

(assert (=> setNonEmpty!46633 m!7548456))

(declare-fun m!7548458 () Bool)

(assert (=> b!6802221 m!7548458))

(declare-fun m!7548460 () Bool)

(assert (=> b!6802221 m!7548460))

(assert (=> b!6802221 m!7548458))

(declare-fun m!7548462 () Bool)

(assert (=> b!6802221 m!7548462))

(assert (=> b!6802221 m!7548458))

(declare-fun m!7548464 () Bool)

(assert (=> b!6802221 m!7548464))

(declare-fun m!7548466 () Bool)

(assert (=> b!6802221 m!7548466))

(declare-fun m!7548468 () Bool)

(assert (=> b!6802221 m!7548468))

(declare-fun m!7548470 () Bool)

(assert (=> b!6802221 m!7548470))

(assert (=> b!6802221 m!7548466))

(declare-fun m!7548472 () Bool)

(assert (=> b!6802221 m!7548472))

(declare-fun m!7548474 () Bool)

(assert (=> b!6802221 m!7548474))

(declare-fun m!7548476 () Bool)

(assert (=> b!6802207 m!7548476))

(declare-fun m!7548478 () Bool)

(assert (=> b!6802227 m!7548478))

(declare-fun m!7548480 () Bool)

(assert (=> b!6802227 m!7548480))

(assert (=> b!6802227 m!7548480))

(declare-fun m!7548482 () Bool)

(assert (=> b!6802227 m!7548482))

(declare-fun m!7548484 () Bool)

(assert (=> b!6802212 m!7548484))

(declare-fun m!7548486 () Bool)

(assert (=> b!6802212 m!7548486))

(declare-fun m!7548488 () Bool)

(assert (=> b!6802212 m!7548488))

(declare-fun m!7548490 () Bool)

(assert (=> b!6802212 m!7548490))

(declare-fun m!7548492 () Bool)

(assert (=> b!6802212 m!7548492))

(declare-fun m!7548494 () Bool)

(assert (=> b!6802217 m!7548494))

(declare-fun m!7548496 () Bool)

(assert (=> b!6802217 m!7548496))

(declare-fun m!7548498 () Bool)

(assert (=> b!6802217 m!7548498))

(declare-fun m!7548500 () Bool)

(assert (=> b!6802232 m!7548500))

(declare-fun m!7548502 () Bool)

(assert (=> b!6802232 m!7548502))

(declare-fun m!7548504 () Bool)

(assert (=> b!6802232 m!7548504))

(declare-fun m!7548506 () Bool)

(assert (=> b!6802205 m!7548506))

(declare-fun m!7548508 () Bool)

(assert (=> b!6802205 m!7548508))

(declare-fun m!7548510 () Bool)

(assert (=> b!6802205 m!7548510))

(declare-fun m!7548512 () Bool)

(assert (=> b!6802205 m!7548512))

(declare-fun m!7548514 () Bool)

(assert (=> b!6802205 m!7548514))

(declare-fun m!7548516 () Bool)

(assert (=> b!6802205 m!7548516))

(declare-fun m!7548518 () Bool)

(assert (=> b!6802205 m!7548518))

(declare-fun m!7548520 () Bool)

(assert (=> b!6802205 m!7548520))

(declare-fun m!7548522 () Bool)

(assert (=> b!6802205 m!7548522))

(declare-fun m!7548524 () Bool)

(assert (=> b!6802216 m!7548524))

(declare-fun m!7548526 () Bool)

(assert (=> b!6802209 m!7548526))

(declare-fun m!7548528 () Bool)

(assert (=> b!6802209 m!7548528))

(declare-fun m!7548530 () Bool)

(assert (=> b!6802209 m!7548530))

(declare-fun m!7548532 () Bool)

(assert (=> b!6802237 m!7548532))

(declare-fun m!7548534 () Bool)

(assert (=> b!6802238 m!7548534))

(declare-fun m!7548536 () Bool)

(assert (=> b!6802219 m!7548536))

(assert (=> b!6802219 m!7548536))

(declare-fun m!7548538 () Bool)

(assert (=> b!6802219 m!7548538))

(declare-fun m!7548540 () Bool)

(assert (=> b!6802239 m!7548540))

(declare-fun m!7548542 () Bool)

(assert (=> start!658416 m!7548542))

(declare-fun m!7548544 () Bool)

(assert (=> b!6802236 m!7548544))

(declare-fun m!7548546 () Bool)

(assert (=> b!6802211 m!7548546))

(check-sat (not b!6802227) (not b!6802216) (not b!6802221) (not b!6802228) (not b!6802224) (not b!6802229) (not b!6802220) (not b!6802217) (not b!6802230) (not b!6802206) (not b!6802231) (not b!6802212) (not b!6802239) (not b!6802233) (not b!6802232) (not b!6802205) (not b!6802223) tp_is_empty!42499 (not b!6802218) (not b!6802234) (not b!6802207) (not start!658416) (not b!6802210) (not b!6802236) (not b!6802209) (not b!6802226) (not b!6802238) (not b!6802211) (not b!6802222) (not b!6802237) (not b!6802219) (not setNonEmpty!46633))
(check-sat)
(get-model)

(declare-fun d!2137425 () Bool)

(declare-fun choose!50708 ((InoxSet Context!12014) Int) (InoxSet Context!12014))

(assert (=> d!2137425 (= (flatMap!2104 z!1189 lambda!383747) (choose!50708 z!1189 lambda!383747))))

(declare-fun bs!1813094 () Bool)

(assert (= bs!1813094 d!2137425))

(declare-fun m!7548562 () Bool)

(assert (=> bs!1813094 m!7548562))

(assert (=> b!6802209 d!2137425))

(declare-fun b!6802270 () Bool)

(declare-fun e!4105046 () Bool)

(declare-fun nullable!6601 (Regex!16623) Bool)

(assert (=> b!6802270 (= e!4105046 (nullable!6601 (h!72493 (exprs!6507 (h!72494 zl!343)))))))

(declare-fun d!2137427 () Bool)

(declare-fun c!1264889 () Bool)

(assert (=> d!2137427 (= c!1264889 e!4105046)))

(declare-fun res!2779805 () Bool)

(assert (=> d!2137427 (=> (not res!2779805) (not e!4105046))))

(assert (=> d!2137427 (= res!2779805 ((_ is Cons!66045) (exprs!6507 (h!72494 zl!343))))))

(declare-fun e!4105045 () (InoxSet Context!12014))

(assert (=> d!2137427 (= (derivationStepZipperUp!1777 (h!72494 zl!343) (h!72492 s!2326)) e!4105045)))

(declare-fun b!6802271 () Bool)

(declare-fun e!4105047 () (InoxSet Context!12014))

(assert (=> b!6802271 (= e!4105047 ((as const (Array Context!12014 Bool)) false))))

(declare-fun bm!618075 () Bool)

(declare-fun call!618080 () (InoxSet Context!12014))

(assert (=> bm!618075 (= call!618080 (derivationStepZipperDown!1851 (h!72493 (exprs!6507 (h!72494 zl!343))) (Context!12015 (t!379900 (exprs!6507 (h!72494 zl!343)))) (h!72492 s!2326)))))

(declare-fun b!6802272 () Bool)

(assert (=> b!6802272 (= e!4105047 call!618080)))

(declare-fun b!6802273 () Bool)

(assert (=> b!6802273 (= e!4105045 e!4105047)))

(declare-fun c!1264890 () Bool)

(assert (=> b!6802273 (= c!1264890 ((_ is Cons!66045) (exprs!6507 (h!72494 zl!343))))))

(declare-fun b!6802274 () Bool)

(assert (=> b!6802274 (= e!4105045 ((_ map or) call!618080 (derivationStepZipperUp!1777 (Context!12015 (t!379900 (exprs!6507 (h!72494 zl!343)))) (h!72492 s!2326))))))

(assert (= (and d!2137427 res!2779805) b!6802270))

(assert (= (and d!2137427 c!1264889) b!6802274))

(assert (= (and d!2137427 (not c!1264889)) b!6802273))

(assert (= (and b!6802273 c!1264890) b!6802272))

(assert (= (and b!6802273 (not c!1264890)) b!6802271))

(assert (= (or b!6802274 b!6802272) bm!618075))

(declare-fun m!7548564 () Bool)

(assert (=> b!6802270 m!7548564))

(declare-fun m!7548566 () Bool)

(assert (=> bm!618075 m!7548566))

(declare-fun m!7548568 () Bool)

(assert (=> b!6802274 m!7548568))

(assert (=> b!6802209 d!2137427))

(declare-fun d!2137429 () Bool)

(declare-fun dynLambda!26375 (Int Context!12014) (InoxSet Context!12014))

(assert (=> d!2137429 (= (flatMap!2104 z!1189 lambda!383747) (dynLambda!26375 lambda!383747 (h!72494 zl!343)))))

(declare-fun lt!2448420 () Unit!159937)

(declare-fun choose!50710 ((InoxSet Context!12014) Context!12014 Int) Unit!159937)

(assert (=> d!2137429 (= lt!2448420 (choose!50710 z!1189 (h!72494 zl!343) lambda!383747))))

(assert (=> d!2137429 (= z!1189 (store ((as const (Array Context!12014 Bool)) false) (h!72494 zl!343) true))))

(assert (=> d!2137429 (= (lemmaFlatMapOnSingletonSet!1630 z!1189 (h!72494 zl!343) lambda!383747) lt!2448420)))

(declare-fun b_lambda!256403 () Bool)

(assert (=> (not b_lambda!256403) (not d!2137429)))

(declare-fun bs!1813095 () Bool)

(assert (= bs!1813095 d!2137429))

(assert (=> bs!1813095 m!7548526))

(declare-fun m!7548570 () Bool)

(assert (=> bs!1813095 m!7548570))

(declare-fun m!7548572 () Bool)

(assert (=> bs!1813095 m!7548572))

(declare-fun m!7548574 () Bool)

(assert (=> bs!1813095 m!7548574))

(assert (=> b!6802209 d!2137429))

(declare-fun d!2137431 () Bool)

(declare-fun c!1264899 () Bool)

(assert (=> d!2137431 (= c!1264899 (isEmpty!38426 (_1!36901 lt!2448389)))))

(declare-fun e!4105065 () Bool)

(assert (=> d!2137431 (= (matchZipper!2609 lt!2448380 (_1!36901 lt!2448389)) e!4105065)))

(declare-fun b!6802306 () Bool)

(declare-fun nullableZipper!2329 ((InoxSet Context!12014)) Bool)

(assert (=> b!6802306 (= e!4105065 (nullableZipper!2329 lt!2448380))))

(declare-fun b!6802307 () Bool)

(declare-fun head!13655 (List!66168) C!33516)

(declare-fun tail!12740 (List!66168) List!66168)

(assert (=> b!6802307 (= e!4105065 (matchZipper!2609 (derivationStepZipper!2567 lt!2448380 (head!13655 (_1!36901 lt!2448389))) (tail!12740 (_1!36901 lt!2448389))))))

(assert (= (and d!2137431 c!1264899) b!6802306))

(assert (= (and d!2137431 (not c!1264899)) b!6802307))

(declare-fun m!7548602 () Bool)

(assert (=> d!2137431 m!7548602))

(declare-fun m!7548604 () Bool)

(assert (=> b!6802306 m!7548604))

(declare-fun m!7548606 () Bool)

(assert (=> b!6802307 m!7548606))

(assert (=> b!6802307 m!7548606))

(declare-fun m!7548608 () Bool)

(assert (=> b!6802307 m!7548608))

(declare-fun m!7548610 () Bool)

(assert (=> b!6802307 m!7548610))

(assert (=> b!6802307 m!7548608))

(assert (=> b!6802307 m!7548610))

(declare-fun m!7548612 () Bool)

(assert (=> b!6802307 m!7548612))

(assert (=> b!6802230 d!2137431))

(declare-fun d!2137437 () Bool)

(declare-fun lt!2448426 () Regex!16623)

(assert (=> d!2137437 (validRegex!8359 lt!2448426)))

(assert (=> d!2137437 (= lt!2448426 (generalisedUnion!2467 (unfocusZipperList!2044 (Cons!66046 lt!2448400 Nil!66046))))))

(assert (=> d!2137437 (= (unfocusZipper!2365 (Cons!66046 lt!2448400 Nil!66046)) lt!2448426)))

(declare-fun bs!1813097 () Bool)

(assert (= bs!1813097 d!2137437))

(declare-fun m!7548614 () Bool)

(assert (=> bs!1813097 m!7548614))

(declare-fun m!7548616 () Bool)

(assert (=> bs!1813097 m!7548616))

(assert (=> bs!1813097 m!7548616))

(declare-fun m!7548618 () Bool)

(assert (=> bs!1813097 m!7548618))

(assert (=> b!6802210 d!2137437))

(declare-fun d!2137441 () Bool)

(declare-fun lt!2448427 () Regex!16623)

(assert (=> d!2137441 (validRegex!8359 lt!2448427)))

(assert (=> d!2137441 (= lt!2448427 (generalisedUnion!2467 (unfocusZipperList!2044 (Cons!66046 lt!2448407 Nil!66046))))))

(assert (=> d!2137441 (= (unfocusZipper!2365 (Cons!66046 lt!2448407 Nil!66046)) lt!2448427)))

(declare-fun bs!1813098 () Bool)

(assert (= bs!1813098 d!2137441))

(declare-fun m!7548620 () Bool)

(assert (=> bs!1813098 m!7548620))

(declare-fun m!7548622 () Bool)

(assert (=> bs!1813098 m!7548622))

(assert (=> bs!1813098 m!7548622))

(declare-fun m!7548624 () Bool)

(assert (=> bs!1813098 m!7548624))

(assert (=> b!6802229 d!2137441))

(declare-fun bs!1813105 () Bool)

(declare-fun b!6802352 () Bool)

(assert (= bs!1813105 (and b!6802352 b!6802221)))

(declare-fun lambda!383760 () Int)

(assert (=> bs!1813105 (not (= lambda!383760 lambda!383744))))

(assert (=> bs!1813105 (= (and (= (reg!16952 lt!2448378) (reg!16952 r!7292)) (= lt!2448378 r!7292)) (= lambda!383760 lambda!383745))))

(assert (=> bs!1813105 (not (= lambda!383760 lambda!383746))))

(assert (=> b!6802352 true))

(assert (=> b!6802352 true))

(declare-fun bs!1813106 () Bool)

(declare-fun b!6802354 () Bool)

(assert (= bs!1813106 (and b!6802354 b!6802221)))

(declare-fun lambda!383761 () Int)

(assert (=> bs!1813106 (not (= lambda!383761 lambda!383744))))

(assert (=> bs!1813106 (not (= lambda!383761 lambda!383745))))

(assert (=> bs!1813106 (= (and (= (regOne!33758 lt!2448378) (reg!16952 r!7292)) (= (regTwo!33758 lt!2448378) r!7292)) (= lambda!383761 lambda!383746))))

(declare-fun bs!1813107 () Bool)

(assert (= bs!1813107 (and b!6802354 b!6802352)))

(assert (=> bs!1813107 (not (= lambda!383761 lambda!383760))))

(assert (=> b!6802354 true))

(assert (=> b!6802354 true))

(declare-fun b!6802350 () Bool)

(declare-fun e!4105093 () Bool)

(declare-fun call!618085 () Bool)

(assert (=> b!6802350 (= e!4105093 call!618085)))

(declare-fun b!6802351 () Bool)

(declare-fun e!4105091 () Bool)

(assert (=> b!6802351 (= e!4105093 e!4105091)))

(declare-fun res!2779839 () Bool)

(assert (=> b!6802351 (= res!2779839 (not ((_ is EmptyLang!16623) lt!2448378)))))

(assert (=> b!6802351 (=> (not res!2779839) (not e!4105091))))

(declare-fun e!4105089 () Bool)

(declare-fun call!618086 () Bool)

(assert (=> b!6802352 (= e!4105089 call!618086)))

(declare-fun b!6802353 () Bool)

(declare-fun res!2779838 () Bool)

(assert (=> b!6802353 (=> res!2779838 e!4105089)))

(assert (=> b!6802353 (= res!2779838 call!618085)))

(declare-fun e!4105092 () Bool)

(assert (=> b!6802353 (= e!4105092 e!4105089)))

(declare-fun bm!618080 () Bool)

(assert (=> bm!618080 (= call!618085 (isEmpty!38426 s!2326))))

(declare-fun bm!618081 () Bool)

(declare-fun c!1264915 () Bool)

(assert (=> bm!618081 (= call!618086 (Exists!3691 (ite c!1264915 lambda!383760 lambda!383761)))))

(declare-fun d!2137443 () Bool)

(declare-fun c!1264916 () Bool)

(assert (=> d!2137443 (= c!1264916 ((_ is EmptyExpr!16623) lt!2448378))))

(assert (=> d!2137443 (= (matchRSpec!3724 lt!2448378 s!2326) e!4105093)))

(assert (=> b!6802354 (= e!4105092 call!618086)))

(declare-fun b!6802355 () Bool)

(declare-fun c!1264914 () Bool)

(assert (=> b!6802355 (= c!1264914 ((_ is ElementMatch!16623) lt!2448378))))

(declare-fun e!4105094 () Bool)

(assert (=> b!6802355 (= e!4105091 e!4105094)))

(declare-fun b!6802356 () Bool)

(declare-fun e!4105088 () Bool)

(assert (=> b!6802356 (= e!4105088 e!4105092)))

(assert (=> b!6802356 (= c!1264915 ((_ is Star!16623) lt!2448378))))

(declare-fun b!6802357 () Bool)

(declare-fun c!1264917 () Bool)

(assert (=> b!6802357 (= c!1264917 ((_ is Union!16623) lt!2448378))))

(assert (=> b!6802357 (= e!4105094 e!4105088)))

(declare-fun b!6802358 () Bool)

(declare-fun e!4105090 () Bool)

(assert (=> b!6802358 (= e!4105088 e!4105090)))

(declare-fun res!2779837 () Bool)

(assert (=> b!6802358 (= res!2779837 (matchRSpec!3724 (regOne!33759 lt!2448378) s!2326))))

(assert (=> b!6802358 (=> res!2779837 e!4105090)))

(declare-fun b!6802359 () Bool)

(assert (=> b!6802359 (= e!4105094 (= s!2326 (Cons!66044 (c!1264881 lt!2448378) Nil!66044)))))

(declare-fun b!6802360 () Bool)

(assert (=> b!6802360 (= e!4105090 (matchRSpec!3724 (regTwo!33759 lt!2448378) s!2326))))

(assert (= (and d!2137443 c!1264916) b!6802350))

(assert (= (and d!2137443 (not c!1264916)) b!6802351))

(assert (= (and b!6802351 res!2779839) b!6802355))

(assert (= (and b!6802355 c!1264914) b!6802359))

(assert (= (and b!6802355 (not c!1264914)) b!6802357))

(assert (= (and b!6802357 c!1264917) b!6802358))

(assert (= (and b!6802357 (not c!1264917)) b!6802356))

(assert (= (and b!6802358 (not res!2779837)) b!6802360))

(assert (= (and b!6802356 c!1264915) b!6802353))

(assert (= (and b!6802356 (not c!1264915)) b!6802354))

(assert (= (and b!6802353 (not res!2779838)) b!6802352))

(assert (= (or b!6802352 b!6802354) bm!618081))

(assert (= (or b!6802350 b!6802353) bm!618080))

(assert (=> bm!618080 m!7548460))

(declare-fun m!7548662 () Bool)

(assert (=> bm!618081 m!7548662))

(declare-fun m!7548664 () Bool)

(assert (=> b!6802358 m!7548664))

(declare-fun m!7548666 () Bool)

(assert (=> b!6802360 m!7548666))

(assert (=> b!6802232 d!2137443))

(declare-fun b!6802422 () Bool)

(declare-fun res!2779859 () Bool)

(declare-fun e!4105133 () Bool)

(assert (=> b!6802422 (=> res!2779859 e!4105133)))

(assert (=> b!6802422 (= res!2779859 (not (isEmpty!38426 (tail!12740 s!2326))))))

(declare-fun b!6802423 () Bool)

(declare-fun e!4105132 () Bool)

(declare-fun e!4105131 () Bool)

(assert (=> b!6802423 (= e!4105132 e!4105131)))

(declare-fun res!2779862 () Bool)

(assert (=> b!6802423 (=> (not res!2779862) (not e!4105131))))

(declare-fun lt!2448436 () Bool)

(assert (=> b!6802423 (= res!2779862 (not lt!2448436))))

(declare-fun b!6802425 () Bool)

(declare-fun e!4105127 () Bool)

(declare-fun e!4105129 () Bool)

(assert (=> b!6802425 (= e!4105127 e!4105129)))

(declare-fun c!1264939 () Bool)

(assert (=> b!6802425 (= c!1264939 ((_ is EmptyLang!16623) lt!2448378))))

(declare-fun b!6802426 () Bool)

(declare-fun e!4105130 () Bool)

(assert (=> b!6802426 (= e!4105130 (= (head!13655 s!2326) (c!1264881 lt!2448378)))))

(declare-fun b!6802427 () Bool)

(declare-fun e!4105128 () Bool)

(declare-fun derivativeStep!5286 (Regex!16623 C!33516) Regex!16623)

(assert (=> b!6802427 (= e!4105128 (matchR!8806 (derivativeStep!5286 lt!2448378 (head!13655 s!2326)) (tail!12740 s!2326)))))

(declare-fun b!6802428 () Bool)

(assert (=> b!6802428 (= e!4105129 (not lt!2448436))))

(declare-fun b!6802429 () Bool)

(assert (=> b!6802429 (= e!4105131 e!4105133)))

(declare-fun res!2779863 () Bool)

(assert (=> b!6802429 (=> res!2779863 e!4105133)))

(declare-fun call!618107 () Bool)

(assert (=> b!6802429 (= res!2779863 call!618107)))

(declare-fun b!6802430 () Bool)

(assert (=> b!6802430 (= e!4105127 (= lt!2448436 call!618107))))

(declare-fun bm!618102 () Bool)

(assert (=> bm!618102 (= call!618107 (isEmpty!38426 s!2326))))

(declare-fun b!6802431 () Bool)

(assert (=> b!6802431 (= e!4105128 (nullable!6601 lt!2448378))))

(declare-fun b!6802424 () Bool)

(declare-fun res!2779866 () Bool)

(assert (=> b!6802424 (=> (not res!2779866) (not e!4105130))))

(assert (=> b!6802424 (= res!2779866 (not call!618107))))

(declare-fun d!2137457 () Bool)

(assert (=> d!2137457 e!4105127))

(declare-fun c!1264940 () Bool)

(assert (=> d!2137457 (= c!1264940 ((_ is EmptyExpr!16623) lt!2448378))))

(assert (=> d!2137457 (= lt!2448436 e!4105128)))

(declare-fun c!1264941 () Bool)

(assert (=> d!2137457 (= c!1264941 (isEmpty!38426 s!2326))))

(assert (=> d!2137457 (validRegex!8359 lt!2448378)))

(assert (=> d!2137457 (= (matchR!8806 lt!2448378 s!2326) lt!2448436)))

(declare-fun b!6802432 () Bool)

(declare-fun res!2779864 () Bool)

(assert (=> b!6802432 (=> (not res!2779864) (not e!4105130))))

(assert (=> b!6802432 (= res!2779864 (isEmpty!38426 (tail!12740 s!2326)))))

(declare-fun b!6802433 () Bool)

(declare-fun res!2779865 () Bool)

(assert (=> b!6802433 (=> res!2779865 e!4105132)))

(assert (=> b!6802433 (= res!2779865 (not ((_ is ElementMatch!16623) lt!2448378)))))

(assert (=> b!6802433 (= e!4105129 e!4105132)))

(declare-fun b!6802434 () Bool)

(assert (=> b!6802434 (= e!4105133 (not (= (head!13655 s!2326) (c!1264881 lt!2448378))))))

(declare-fun b!6802435 () Bool)

(declare-fun res!2779861 () Bool)

(assert (=> b!6802435 (=> res!2779861 e!4105132)))

(assert (=> b!6802435 (= res!2779861 e!4105130)))

(declare-fun res!2779860 () Bool)

(assert (=> b!6802435 (=> (not res!2779860) (not e!4105130))))

(assert (=> b!6802435 (= res!2779860 lt!2448436)))

(assert (= (and d!2137457 c!1264941) b!6802431))

(assert (= (and d!2137457 (not c!1264941)) b!6802427))

(assert (= (and d!2137457 c!1264940) b!6802430))

(assert (= (and d!2137457 (not c!1264940)) b!6802425))

(assert (= (and b!6802425 c!1264939) b!6802428))

(assert (= (and b!6802425 (not c!1264939)) b!6802433))

(assert (= (and b!6802433 (not res!2779865)) b!6802435))

(assert (= (and b!6802435 res!2779860) b!6802424))

(assert (= (and b!6802424 res!2779866) b!6802432))

(assert (= (and b!6802432 res!2779864) b!6802426))

(assert (= (and b!6802435 (not res!2779861)) b!6802423))

(assert (= (and b!6802423 res!2779862) b!6802429))

(assert (= (and b!6802429 (not res!2779863)) b!6802422))

(assert (= (and b!6802422 (not res!2779859)) b!6802434))

(assert (= (or b!6802430 b!6802424 b!6802429) bm!618102))

(declare-fun m!7548678 () Bool)

(assert (=> b!6802426 m!7548678))

(declare-fun m!7548680 () Bool)

(assert (=> b!6802422 m!7548680))

(assert (=> b!6802422 m!7548680))

(declare-fun m!7548682 () Bool)

(assert (=> b!6802422 m!7548682))

(assert (=> b!6802434 m!7548678))

(assert (=> b!6802427 m!7548678))

(assert (=> b!6802427 m!7548678))

(declare-fun m!7548684 () Bool)

(assert (=> b!6802427 m!7548684))

(assert (=> b!6802427 m!7548680))

(assert (=> b!6802427 m!7548684))

(assert (=> b!6802427 m!7548680))

(declare-fun m!7548686 () Bool)

(assert (=> b!6802427 m!7548686))

(assert (=> bm!618102 m!7548460))

(assert (=> d!2137457 m!7548460))

(declare-fun m!7548688 () Bool)

(assert (=> d!2137457 m!7548688))

(declare-fun m!7548690 () Bool)

(assert (=> b!6802431 m!7548690))

(assert (=> b!6802432 m!7548680))

(assert (=> b!6802432 m!7548680))

(assert (=> b!6802432 m!7548682))

(assert (=> b!6802232 d!2137457))

(declare-fun d!2137461 () Bool)

(assert (=> d!2137461 (= (matchR!8806 lt!2448378 s!2326) (matchRSpec!3724 lt!2448378 s!2326))))

(declare-fun lt!2448439 () Unit!159937)

(declare-fun choose!50711 (Regex!16623 List!66168) Unit!159937)

(assert (=> d!2137461 (= lt!2448439 (choose!50711 lt!2448378 s!2326))))

(assert (=> d!2137461 (validRegex!8359 lt!2448378)))

(assert (=> d!2137461 (= (mainMatchTheorem!3724 lt!2448378 s!2326) lt!2448439)))

(declare-fun bs!1813110 () Bool)

(assert (= bs!1813110 d!2137461))

(assert (=> bs!1813110 m!7548502))

(assert (=> bs!1813110 m!7548500))

(declare-fun m!7548700 () Bool)

(assert (=> bs!1813110 m!7548700))

(assert (=> bs!1813110 m!7548688))

(assert (=> b!6802232 d!2137461))

(declare-fun b!6802505 () Bool)

(declare-fun e!4105175 () (InoxSet Context!12014))

(declare-fun call!618129 () (InoxSet Context!12014))

(assert (=> b!6802505 (= e!4105175 call!618129)))

(declare-fun b!6802506 () Bool)

(declare-fun e!4105174 () (InoxSet Context!12014))

(declare-fun e!4105177 () (InoxSet Context!12014))

(assert (=> b!6802506 (= e!4105174 e!4105177)))

(declare-fun c!1264969 () Bool)

(assert (=> b!6802506 (= c!1264969 ((_ is Union!16623) (reg!16952 r!7292)))))

(declare-fun bm!618120 () Bool)

(declare-fun call!618126 () (InoxSet Context!12014))

(assert (=> bm!618120 (= call!618129 call!618126)))

(declare-fun d!2137467 () Bool)

(declare-fun c!1264966 () Bool)

(assert (=> d!2137467 (= c!1264966 (and ((_ is ElementMatch!16623) (reg!16952 r!7292)) (= (c!1264881 (reg!16952 r!7292)) (h!72492 s!2326))))))

(assert (=> d!2137467 (= (derivationStepZipperDown!1851 (reg!16952 r!7292) lt!2448396 (h!72492 s!2326)) e!4105174)))

(declare-fun b!6802507 () Bool)

(declare-fun e!4105176 () (InoxSet Context!12014))

(declare-fun e!4105173 () (InoxSet Context!12014))

(assert (=> b!6802507 (= e!4105176 e!4105173)))

(declare-fun c!1264967 () Bool)

(assert (=> b!6802507 (= c!1264967 ((_ is Concat!25468) (reg!16952 r!7292)))))

(declare-fun b!6802508 () Bool)

(declare-fun call!618127 () (InoxSet Context!12014))

(declare-fun call!618128 () (InoxSet Context!12014))

(assert (=> b!6802508 (= e!4105177 ((_ map or) call!618127 call!618128))))

(declare-fun bm!618121 () Bool)

(declare-fun call!618130 () List!66169)

(declare-fun c!1264968 () Bool)

(declare-fun $colon$colon!2432 (List!66169 Regex!16623) List!66169)

(assert (=> bm!618121 (= call!618130 ($colon$colon!2432 (exprs!6507 lt!2448396) (ite (or c!1264968 c!1264967) (regTwo!33758 (reg!16952 r!7292)) (reg!16952 r!7292))))))

(declare-fun b!6802509 () Bool)

(assert (=> b!6802509 (= e!4105173 call!618129)))

(declare-fun b!6802510 () Bool)

(declare-fun e!4105178 () Bool)

(assert (=> b!6802510 (= e!4105178 (nullable!6601 (regOne!33758 (reg!16952 r!7292))))))

(declare-fun bm!618122 () Bool)

(assert (=> bm!618122 (= call!618126 call!618127)))

(declare-fun b!6802511 () Bool)

(declare-fun c!1264970 () Bool)

(assert (=> b!6802511 (= c!1264970 ((_ is Star!16623) (reg!16952 r!7292)))))

(assert (=> b!6802511 (= e!4105173 e!4105175)))

(declare-fun b!6802512 () Bool)

(assert (=> b!6802512 (= e!4105174 (store ((as const (Array Context!12014 Bool)) false) lt!2448396 true))))

(declare-fun b!6802513 () Bool)

(assert (=> b!6802513 (= e!4105175 ((as const (Array Context!12014 Bool)) false))))

(declare-fun b!6802514 () Bool)

(assert (=> b!6802514 (= c!1264968 e!4105178)))

(declare-fun res!2779888 () Bool)

(assert (=> b!6802514 (=> (not res!2779888) (not e!4105178))))

(assert (=> b!6802514 (= res!2779888 ((_ is Concat!25468) (reg!16952 r!7292)))))

(assert (=> b!6802514 (= e!4105177 e!4105176)))

(declare-fun bm!618123 () Bool)

(declare-fun call!618125 () List!66169)

(assert (=> bm!618123 (= call!618125 call!618130)))

(declare-fun b!6802515 () Bool)

(assert (=> b!6802515 (= e!4105176 ((_ map or) call!618128 call!618126))))

(declare-fun bm!618124 () Bool)

(assert (=> bm!618124 (= call!618128 (derivationStepZipperDown!1851 (ite c!1264969 (regTwo!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292))) (ite c!1264969 lt!2448396 (Context!12015 call!618130)) (h!72492 s!2326)))))

(declare-fun bm!618125 () Bool)

(assert (=> bm!618125 (= call!618127 (derivationStepZipperDown!1851 (ite c!1264969 (regOne!33759 (reg!16952 r!7292)) (ite c!1264968 (regTwo!33758 (reg!16952 r!7292)) (ite c!1264967 (regOne!33758 (reg!16952 r!7292)) (reg!16952 (reg!16952 r!7292))))) (ite (or c!1264969 c!1264968) lt!2448396 (Context!12015 call!618125)) (h!72492 s!2326)))))

(assert (= (and d!2137467 c!1264966) b!6802512))

(assert (= (and d!2137467 (not c!1264966)) b!6802506))

(assert (= (and b!6802506 c!1264969) b!6802508))

(assert (= (and b!6802506 (not c!1264969)) b!6802514))

(assert (= (and b!6802514 res!2779888) b!6802510))

(assert (= (and b!6802514 c!1264968) b!6802515))

(assert (= (and b!6802514 (not c!1264968)) b!6802507))

(assert (= (and b!6802507 c!1264967) b!6802509))

(assert (= (and b!6802507 (not c!1264967)) b!6802511))

(assert (= (and b!6802511 c!1264970) b!6802505))

(assert (= (and b!6802511 (not c!1264970)) b!6802513))

(assert (= (or b!6802509 b!6802505) bm!618123))

(assert (= (or b!6802509 b!6802505) bm!618120))

(assert (= (or b!6802515 bm!618123) bm!618121))

(assert (= (or b!6802515 bm!618120) bm!618122))

(assert (= (or b!6802508 b!6802515) bm!618124))

(assert (= (or b!6802508 bm!618122) bm!618125))

(declare-fun m!7548710 () Bool)

(assert (=> bm!618125 m!7548710))

(declare-fun m!7548712 () Bool)

(assert (=> b!6802510 m!7548712))

(declare-fun m!7548714 () Bool)

(assert (=> bm!618124 m!7548714))

(declare-fun m!7548716 () Bool)

(assert (=> bm!618121 m!7548716))

(assert (=> b!6802512 m!7548512))

(assert (=> b!6802212 d!2137467))

(declare-fun d!2137473 () Bool)

(assert (=> d!2137473 (= (flatMap!2104 lt!2448394 lambda!383747) (choose!50708 lt!2448394 lambda!383747))))

(declare-fun bs!1813116 () Bool)

(assert (= bs!1813116 d!2137473))

(declare-fun m!7548718 () Bool)

(assert (=> bs!1813116 m!7548718))

(assert (=> b!6802212 d!2137473))

(declare-fun b!6802516 () Bool)

(declare-fun e!4105180 () Bool)

(assert (=> b!6802516 (= e!4105180 (nullable!6601 (h!72493 (exprs!6507 lt!2448400))))))

(declare-fun d!2137475 () Bool)

(declare-fun c!1264971 () Bool)

(assert (=> d!2137475 (= c!1264971 e!4105180)))

(declare-fun res!2779889 () Bool)

(assert (=> d!2137475 (=> (not res!2779889) (not e!4105180))))

(assert (=> d!2137475 (= res!2779889 ((_ is Cons!66045) (exprs!6507 lt!2448400)))))

(declare-fun e!4105179 () (InoxSet Context!12014))

(assert (=> d!2137475 (= (derivationStepZipperUp!1777 lt!2448400 (h!72492 s!2326)) e!4105179)))

(declare-fun b!6802517 () Bool)

(declare-fun e!4105181 () (InoxSet Context!12014))

(assert (=> b!6802517 (= e!4105181 ((as const (Array Context!12014 Bool)) false))))

(declare-fun bm!618128 () Bool)

(declare-fun call!618133 () (InoxSet Context!12014))

(assert (=> bm!618128 (= call!618133 (derivationStepZipperDown!1851 (h!72493 (exprs!6507 lt!2448400)) (Context!12015 (t!379900 (exprs!6507 lt!2448400))) (h!72492 s!2326)))))

(declare-fun b!6802518 () Bool)

(assert (=> b!6802518 (= e!4105181 call!618133)))

(declare-fun b!6802519 () Bool)

(assert (=> b!6802519 (= e!4105179 e!4105181)))

(declare-fun c!1264972 () Bool)

(assert (=> b!6802519 (= c!1264972 ((_ is Cons!66045) (exprs!6507 lt!2448400)))))

(declare-fun b!6802520 () Bool)

(assert (=> b!6802520 (= e!4105179 ((_ map or) call!618133 (derivationStepZipperUp!1777 (Context!12015 (t!379900 (exprs!6507 lt!2448400))) (h!72492 s!2326))))))

(assert (= (and d!2137475 res!2779889) b!6802516))

(assert (= (and d!2137475 c!1264971) b!6802520))

(assert (= (and d!2137475 (not c!1264971)) b!6802519))

(assert (= (and b!6802519 c!1264972) b!6802518))

(assert (= (and b!6802519 (not c!1264972)) b!6802517))

(assert (= (or b!6802520 b!6802518) bm!618128))

(declare-fun m!7548720 () Bool)

(assert (=> b!6802516 m!7548720))

(declare-fun m!7548722 () Bool)

(assert (=> bm!618128 m!7548722))

(declare-fun m!7548724 () Bool)

(assert (=> b!6802520 m!7548724))

(assert (=> b!6802212 d!2137475))

(declare-fun d!2137477 () Bool)

(assert (=> d!2137477 (= (flatMap!2104 lt!2448394 lambda!383747) (dynLambda!26375 lambda!383747 lt!2448400))))

(declare-fun lt!2448441 () Unit!159937)

(assert (=> d!2137477 (= lt!2448441 (choose!50710 lt!2448394 lt!2448400 lambda!383747))))

(assert (=> d!2137477 (= lt!2448394 (store ((as const (Array Context!12014 Bool)) false) lt!2448400 true))))

(assert (=> d!2137477 (= (lemmaFlatMapOnSingletonSet!1630 lt!2448394 lt!2448400 lambda!383747) lt!2448441)))

(declare-fun b_lambda!256405 () Bool)

(assert (=> (not b_lambda!256405) (not d!2137477)))

(declare-fun bs!1813117 () Bool)

(assert (= bs!1813117 d!2137477))

(assert (=> bs!1813117 m!7548490))

(declare-fun m!7548726 () Bool)

(assert (=> bs!1813117 m!7548726))

(declare-fun m!7548728 () Bool)

(assert (=> bs!1813117 m!7548728))

(assert (=> bs!1813117 m!7548484))

(assert (=> b!6802212 d!2137477))

(declare-fun d!2137479 () Bool)

(declare-fun dynLambda!26376 (Int Context!12014) Context!12014)

(assert (=> d!2137479 (= (map!15095 lt!2448380 lambda!383748) (store ((as const (Array Context!12014 Bool)) false) (dynLambda!26376 lambda!383748 lt!2448407) true))))

(declare-fun lt!2448444 () Unit!159937)

(declare-fun choose!50712 ((InoxSet Context!12014) Context!12014 Int) Unit!159937)

(assert (=> d!2137479 (= lt!2448444 (choose!50712 lt!2448380 lt!2448407 lambda!383748))))

(assert (=> d!2137479 (= lt!2448380 (store ((as const (Array Context!12014 Bool)) false) lt!2448407 true))))

(assert (=> d!2137479 (= (lemmaMapOnSingletonSet!258 lt!2448380 lt!2448407 lambda!383748) lt!2448444)))

(declare-fun b_lambda!256407 () Bool)

(assert (=> (not b_lambda!256407) (not d!2137479)))

(declare-fun bs!1813121 () Bool)

(assert (= bs!1813121 d!2137479))

(declare-fun m!7548730 () Bool)

(assert (=> bs!1813121 m!7548730))

(assert (=> bs!1813121 m!7548418))

(declare-fun m!7548732 () Bool)

(assert (=> bs!1813121 m!7548732))

(assert (=> bs!1813121 m!7548522))

(assert (=> bs!1813121 m!7548732))

(declare-fun m!7548734 () Bool)

(assert (=> bs!1813121 m!7548734))

(assert (=> b!6802233 d!2137479))

(declare-fun b!6802543 () Bool)

(declare-fun lt!2448447 () List!66169)

(declare-fun e!4105193 () Bool)

(assert (=> b!6802543 (= e!4105193 (or (not (= lt!2448392 Nil!66045)) (= lt!2448447 (Cons!66045 (reg!16952 r!7292) Nil!66045))))))

(declare-fun d!2137481 () Bool)

(assert (=> d!2137481 e!4105193))

(declare-fun res!2779897 () Bool)

(assert (=> d!2137481 (=> (not res!2779897) (not e!4105193))))

(declare-fun content!12903 (List!66169) (InoxSet Regex!16623))

(assert (=> d!2137481 (= res!2779897 (= (content!12903 lt!2448447) ((_ map or) (content!12903 (Cons!66045 (reg!16952 r!7292) Nil!66045)) (content!12903 lt!2448392))))))

(declare-fun e!4105194 () List!66169)

(assert (=> d!2137481 (= lt!2448447 e!4105194)))

(declare-fun c!1264979 () Bool)

(assert (=> d!2137481 (= c!1264979 ((_ is Nil!66045) (Cons!66045 (reg!16952 r!7292) Nil!66045)))))

(assert (=> d!2137481 (= (++!14793 (Cons!66045 (reg!16952 r!7292) Nil!66045) lt!2448392) lt!2448447)))

(declare-fun b!6802540 () Bool)

(assert (=> b!6802540 (= e!4105194 lt!2448392)))

(declare-fun b!6802542 () Bool)

(declare-fun res!2779898 () Bool)

(assert (=> b!6802542 (=> (not res!2779898) (not e!4105193))))

(declare-fun size!40669 (List!66169) Int)

(assert (=> b!6802542 (= res!2779898 (= (size!40669 lt!2448447) (+ (size!40669 (Cons!66045 (reg!16952 r!7292) Nil!66045)) (size!40669 lt!2448392))))))

(declare-fun b!6802541 () Bool)

(assert (=> b!6802541 (= e!4105194 (Cons!66045 (h!72493 (Cons!66045 (reg!16952 r!7292) Nil!66045)) (++!14793 (t!379900 (Cons!66045 (reg!16952 r!7292) Nil!66045)) lt!2448392)))))

(assert (= (and d!2137481 c!1264979) b!6802540))

(assert (= (and d!2137481 (not c!1264979)) b!6802541))

(assert (= (and d!2137481 res!2779897) b!6802542))

(assert (= (and b!6802542 res!2779898) b!6802543))

(declare-fun m!7548742 () Bool)

(assert (=> d!2137481 m!7548742))

(declare-fun m!7548744 () Bool)

(assert (=> d!2137481 m!7548744))

(declare-fun m!7548746 () Bool)

(assert (=> d!2137481 m!7548746))

(declare-fun m!7548748 () Bool)

(assert (=> b!6802542 m!7548748))

(declare-fun m!7548750 () Bool)

(assert (=> b!6802542 m!7548750))

(declare-fun m!7548752 () Bool)

(assert (=> b!6802542 m!7548752))

(declare-fun m!7548754 () Bool)

(assert (=> b!6802541 m!7548754))

(assert (=> b!6802233 d!2137481))

(declare-fun d!2137485 () Bool)

(declare-fun choose!50714 ((InoxSet Context!12014) Int) (InoxSet Context!12014))

(assert (=> d!2137485 (= (map!15095 lt!2448380 lambda!383748) (choose!50714 lt!2448380 lambda!383748))))

(declare-fun bs!1813122 () Bool)

(assert (= bs!1813122 d!2137485))

(declare-fun m!7548756 () Bool)

(assert (=> bs!1813122 m!7548756))

(assert (=> b!6802233 d!2137485))

(declare-fun d!2137487 () Bool)

(declare-fun forall!15815 (List!66169 Int) Bool)

(assert (=> d!2137487 (forall!15815 (++!14793 (Cons!66045 (reg!16952 r!7292) Nil!66045) lt!2448392) lambda!383749)))

(declare-fun lt!2448452 () Unit!159937)

(declare-fun choose!50716 (List!66169 List!66169 Int) Unit!159937)

(assert (=> d!2137487 (= lt!2448452 (choose!50716 (Cons!66045 (reg!16952 r!7292) Nil!66045) lt!2448392 lambda!383749))))

(assert (=> d!2137487 (forall!15815 (Cons!66045 (reg!16952 r!7292) Nil!66045) lambda!383749)))

(assert (=> d!2137487 (= (lemmaConcatPreservesForall!452 (Cons!66045 (reg!16952 r!7292) Nil!66045) lt!2448392 lambda!383749) lt!2448452)))

(declare-fun bs!1813123 () Bool)

(assert (= bs!1813123 d!2137487))

(assert (=> bs!1813123 m!7548422))

(assert (=> bs!1813123 m!7548422))

(declare-fun m!7548758 () Bool)

(assert (=> bs!1813123 m!7548758))

(declare-fun m!7548760 () Bool)

(assert (=> bs!1813123 m!7548760))

(declare-fun m!7548762 () Bool)

(assert (=> bs!1813123 m!7548762))

(assert (=> b!6802233 d!2137487))

(declare-fun bs!1813124 () Bool)

(declare-fun d!2137489 () Bool)

(assert (= bs!1813124 (and d!2137489 b!6802233)))

(declare-fun lambda!383774 () Int)

(assert (=> bs!1813124 (= (= (exprs!6507 lt!2448396) lt!2448392) (= lambda!383774 lambda!383748))))

(assert (=> d!2137489 true))

(assert (=> d!2137489 (= (appendTo!228 lt!2448380 lt!2448396) (map!15095 lt!2448380 lambda!383774))))

(declare-fun bs!1813125 () Bool)

(assert (= bs!1813125 d!2137489))

(declare-fun m!7548772 () Bool)

(assert (=> bs!1813125 m!7548772))

(assert (=> b!6802233 d!2137489))

(declare-fun d!2137493 () Bool)

(declare-fun lt!2448456 () Regex!16623)

(assert (=> d!2137493 (validRegex!8359 lt!2448456)))

(assert (=> d!2137493 (= lt!2448456 (generalisedUnion!2467 (unfocusZipperList!2044 zl!343)))))

(assert (=> d!2137493 (= (unfocusZipper!2365 zl!343) lt!2448456)))

(declare-fun bs!1813126 () Bool)

(assert (= bs!1813126 d!2137493))

(declare-fun m!7548774 () Bool)

(assert (=> bs!1813126 m!7548774))

(assert (=> bs!1813126 m!7548536))

(assert (=> bs!1813126 m!7548536))

(assert (=> bs!1813126 m!7548538))

(assert (=> b!6802211 d!2137493))

(declare-fun d!2137495 () Bool)

(assert (=> d!2137495 (= (flatMap!2104 lt!2448387 lambda!383747) (choose!50708 lt!2448387 lambda!383747))))

(declare-fun bs!1813127 () Bool)

(assert (= bs!1813127 d!2137495))

(declare-fun m!7548776 () Bool)

(assert (=> bs!1813127 m!7548776))

(assert (=> b!6802205 d!2137495))

(declare-fun bs!1813129 () Bool)

(declare-fun d!2137497 () Bool)

(assert (= bs!1813129 (and d!2137497 b!6802209)))

(declare-fun lambda!383777 () Int)

(assert (=> bs!1813129 (= lambda!383777 lambda!383747)))

(assert (=> d!2137497 true))

(assert (=> d!2137497 (= (derivationStepZipper!2567 lt!2448387 (h!72492 s!2326)) (flatMap!2104 lt!2448387 lambda!383777))))

(declare-fun bs!1813130 () Bool)

(assert (= bs!1813130 d!2137497))

(declare-fun m!7548780 () Bool)

(assert (=> bs!1813130 m!7548780))

(assert (=> b!6802205 d!2137497))

(declare-fun d!2137501 () Bool)

(assert (=> d!2137501 (= (flatMap!2104 lt!2448380 lambda!383747) (choose!50708 lt!2448380 lambda!383747))))

(declare-fun bs!1813131 () Bool)

(assert (= bs!1813131 d!2137501))

(declare-fun m!7548782 () Bool)

(assert (=> bs!1813131 m!7548782))

(assert (=> b!6802205 d!2137501))

(declare-fun d!2137503 () Bool)

(assert (=> d!2137503 (= (flatMap!2104 lt!2448380 lambda!383747) (dynLambda!26375 lambda!383747 lt!2448407))))

(declare-fun lt!2448460 () Unit!159937)

(assert (=> d!2137503 (= lt!2448460 (choose!50710 lt!2448380 lt!2448407 lambda!383747))))

(assert (=> d!2137503 (= lt!2448380 (store ((as const (Array Context!12014 Bool)) false) lt!2448407 true))))

(assert (=> d!2137503 (= (lemmaFlatMapOnSingletonSet!1630 lt!2448380 lt!2448407 lambda!383747) lt!2448460)))

(declare-fun b_lambda!256409 () Bool)

(assert (=> (not b_lambda!256409) (not d!2137503)))

(declare-fun bs!1813133 () Bool)

(assert (= bs!1813133 d!2137503))

(assert (=> bs!1813133 m!7548516))

(declare-fun m!7548786 () Bool)

(assert (=> bs!1813133 m!7548786))

(declare-fun m!7548788 () Bool)

(assert (=> bs!1813133 m!7548788))

(assert (=> bs!1813133 m!7548522))

(assert (=> b!6802205 d!2137503))

(declare-fun b!6802590 () Bool)

(declare-fun e!4105217 () Bool)

(assert (=> b!6802590 (= e!4105217 (nullable!6601 (h!72493 (exprs!6507 lt!2448396))))))

(declare-fun d!2137507 () Bool)

(declare-fun c!1264992 () Bool)

(assert (=> d!2137507 (= c!1264992 e!4105217)))

(declare-fun res!2779923 () Bool)

(assert (=> d!2137507 (=> (not res!2779923) (not e!4105217))))

(assert (=> d!2137507 (= res!2779923 ((_ is Cons!66045) (exprs!6507 lt!2448396)))))

(declare-fun e!4105216 () (InoxSet Context!12014))

(assert (=> d!2137507 (= (derivationStepZipperUp!1777 lt!2448396 (h!72492 s!2326)) e!4105216)))

(declare-fun b!6802591 () Bool)

(declare-fun e!4105218 () (InoxSet Context!12014))

(assert (=> b!6802591 (= e!4105218 ((as const (Array Context!12014 Bool)) false))))

(declare-fun bm!618134 () Bool)

(declare-fun call!618139 () (InoxSet Context!12014))

(assert (=> bm!618134 (= call!618139 (derivationStepZipperDown!1851 (h!72493 (exprs!6507 lt!2448396)) (Context!12015 (t!379900 (exprs!6507 lt!2448396))) (h!72492 s!2326)))))

(declare-fun b!6802592 () Bool)

(assert (=> b!6802592 (= e!4105218 call!618139)))

(declare-fun b!6802593 () Bool)

(assert (=> b!6802593 (= e!4105216 e!4105218)))

(declare-fun c!1264993 () Bool)

(assert (=> b!6802593 (= c!1264993 ((_ is Cons!66045) (exprs!6507 lt!2448396)))))

(declare-fun b!6802594 () Bool)

(assert (=> b!6802594 (= e!4105216 ((_ map or) call!618139 (derivationStepZipperUp!1777 (Context!12015 (t!379900 (exprs!6507 lt!2448396))) (h!72492 s!2326))))))

(assert (= (and d!2137507 res!2779923) b!6802590))

(assert (= (and d!2137507 c!1264992) b!6802594))

(assert (= (and d!2137507 (not c!1264992)) b!6802593))

(assert (= (and b!6802593 c!1264993) b!6802592))

(assert (= (and b!6802593 (not c!1264993)) b!6802591))

(assert (= (or b!6802594 b!6802592) bm!618134))

(declare-fun m!7548790 () Bool)

(assert (=> b!6802590 m!7548790))

(declare-fun m!7548792 () Bool)

(assert (=> bm!618134 m!7548792))

(declare-fun m!7548794 () Bool)

(assert (=> b!6802594 m!7548794))

(assert (=> b!6802205 d!2137507))

(declare-fun b!6802595 () Bool)

(declare-fun e!4105220 () Bool)

(assert (=> b!6802595 (= e!4105220 (nullable!6601 (h!72493 (exprs!6507 lt!2448407))))))

(declare-fun d!2137509 () Bool)

(declare-fun c!1264994 () Bool)

(assert (=> d!2137509 (= c!1264994 e!4105220)))

(declare-fun res!2779924 () Bool)

(assert (=> d!2137509 (=> (not res!2779924) (not e!4105220))))

(assert (=> d!2137509 (= res!2779924 ((_ is Cons!66045) (exprs!6507 lt!2448407)))))

(declare-fun e!4105219 () (InoxSet Context!12014))

(assert (=> d!2137509 (= (derivationStepZipperUp!1777 lt!2448407 (h!72492 s!2326)) e!4105219)))

(declare-fun b!6802596 () Bool)

(declare-fun e!4105221 () (InoxSet Context!12014))

(assert (=> b!6802596 (= e!4105221 ((as const (Array Context!12014 Bool)) false))))

(declare-fun bm!618135 () Bool)

(declare-fun call!618140 () (InoxSet Context!12014))

(assert (=> bm!618135 (= call!618140 (derivationStepZipperDown!1851 (h!72493 (exprs!6507 lt!2448407)) (Context!12015 (t!379900 (exprs!6507 lt!2448407))) (h!72492 s!2326)))))

(declare-fun b!6802597 () Bool)

(assert (=> b!6802597 (= e!4105221 call!618140)))

(declare-fun b!6802598 () Bool)

(assert (=> b!6802598 (= e!4105219 e!4105221)))

(declare-fun c!1264995 () Bool)

(assert (=> b!6802598 (= c!1264995 ((_ is Cons!66045) (exprs!6507 lt!2448407)))))

(declare-fun b!6802599 () Bool)

(assert (=> b!6802599 (= e!4105219 ((_ map or) call!618140 (derivationStepZipperUp!1777 (Context!12015 (t!379900 (exprs!6507 lt!2448407))) (h!72492 s!2326))))))

(assert (= (and d!2137509 res!2779924) b!6802595))

(assert (= (and d!2137509 c!1264994) b!6802599))

(assert (= (and d!2137509 (not c!1264994)) b!6802598))

(assert (= (and b!6802598 c!1264995) b!6802597))

(assert (= (and b!6802598 (not c!1264995)) b!6802596))

(assert (= (or b!6802599 b!6802597) bm!618135))

(declare-fun m!7548796 () Bool)

(assert (=> b!6802595 m!7548796))

(declare-fun m!7548798 () Bool)

(assert (=> bm!618135 m!7548798))

(declare-fun m!7548800 () Bool)

(assert (=> b!6802599 m!7548800))

(assert (=> b!6802205 d!2137509))

(declare-fun d!2137511 () Bool)

(assert (=> d!2137511 (= (flatMap!2104 lt!2448387 lambda!383747) (dynLambda!26375 lambda!383747 lt!2448396))))

(declare-fun lt!2448463 () Unit!159937)

(assert (=> d!2137511 (= lt!2448463 (choose!50710 lt!2448387 lt!2448396 lambda!383747))))

(assert (=> d!2137511 (= lt!2448387 (store ((as const (Array Context!12014 Bool)) false) lt!2448396 true))))

(assert (=> d!2137511 (= (lemmaFlatMapOnSingletonSet!1630 lt!2448387 lt!2448396 lambda!383747) lt!2448463)))

(declare-fun b_lambda!256411 () Bool)

(assert (=> (not b_lambda!256411) (not d!2137511)))

(declare-fun bs!1813134 () Bool)

(assert (= bs!1813134 d!2137511))

(assert (=> bs!1813134 m!7548514))

(declare-fun m!7548802 () Bool)

(assert (=> bs!1813134 m!7548802))

(declare-fun m!7548804 () Bool)

(assert (=> bs!1813134 m!7548804))

(assert (=> bs!1813134 m!7548512))

(assert (=> b!6802205 d!2137511))

(declare-fun b!6802605 () Bool)

(declare-fun e!4105227 () (InoxSet Context!12014))

(declare-fun call!618146 () (InoxSet Context!12014))

(assert (=> b!6802605 (= e!4105227 call!618146)))

(declare-fun b!6802606 () Bool)

(declare-fun e!4105226 () (InoxSet Context!12014))

(declare-fun e!4105229 () (InoxSet Context!12014))

(assert (=> b!6802606 (= e!4105226 e!4105229)))

(declare-fun c!1265001 () Bool)

(assert (=> b!6802606 (= c!1265001 ((_ is Union!16623) r!7292))))

(declare-fun bm!618137 () Bool)

(declare-fun call!618143 () (InoxSet Context!12014))

(assert (=> bm!618137 (= call!618146 call!618143)))

(declare-fun d!2137513 () Bool)

(declare-fun c!1264998 () Bool)

(assert (=> d!2137513 (= c!1264998 (and ((_ is ElementMatch!16623) r!7292) (= (c!1264881 r!7292) (h!72492 s!2326))))))

(assert (=> d!2137513 (= (derivationStepZipperDown!1851 r!7292 (Context!12015 Nil!66045) (h!72492 s!2326)) e!4105226)))

(declare-fun b!6802607 () Bool)

(declare-fun e!4105228 () (InoxSet Context!12014))

(declare-fun e!4105225 () (InoxSet Context!12014))

(assert (=> b!6802607 (= e!4105228 e!4105225)))

(declare-fun c!1264999 () Bool)

(assert (=> b!6802607 (= c!1264999 ((_ is Concat!25468) r!7292))))

(declare-fun b!6802608 () Bool)

(declare-fun call!618144 () (InoxSet Context!12014))

(declare-fun call!618145 () (InoxSet Context!12014))

(assert (=> b!6802608 (= e!4105229 ((_ map or) call!618144 call!618145))))

(declare-fun call!618147 () List!66169)

(declare-fun c!1265000 () Bool)

(declare-fun bm!618138 () Bool)

(assert (=> bm!618138 (= call!618147 ($colon$colon!2432 (exprs!6507 (Context!12015 Nil!66045)) (ite (or c!1265000 c!1264999) (regTwo!33758 r!7292) r!7292)))))

(declare-fun b!6802609 () Bool)

(assert (=> b!6802609 (= e!4105225 call!618146)))

(declare-fun b!6802610 () Bool)

(declare-fun e!4105230 () Bool)

(assert (=> b!6802610 (= e!4105230 (nullable!6601 (regOne!33758 r!7292)))))

(declare-fun bm!618139 () Bool)

(assert (=> bm!618139 (= call!618143 call!618144)))

(declare-fun b!6802611 () Bool)

(declare-fun c!1265002 () Bool)

(assert (=> b!6802611 (= c!1265002 ((_ is Star!16623) r!7292))))

(assert (=> b!6802611 (= e!4105225 e!4105227)))

(declare-fun b!6802612 () Bool)

(assert (=> b!6802612 (= e!4105226 (store ((as const (Array Context!12014 Bool)) false) (Context!12015 Nil!66045) true))))

(declare-fun b!6802613 () Bool)

(assert (=> b!6802613 (= e!4105227 ((as const (Array Context!12014 Bool)) false))))

(declare-fun b!6802614 () Bool)

(assert (=> b!6802614 (= c!1265000 e!4105230)))

(declare-fun res!2779926 () Bool)

(assert (=> b!6802614 (=> (not res!2779926) (not e!4105230))))

(assert (=> b!6802614 (= res!2779926 ((_ is Concat!25468) r!7292))))

(assert (=> b!6802614 (= e!4105229 e!4105228)))

(declare-fun bm!618140 () Bool)

(declare-fun call!618141 () List!66169)

(assert (=> bm!618140 (= call!618141 call!618147)))

(declare-fun b!6802615 () Bool)

(assert (=> b!6802615 (= e!4105228 ((_ map or) call!618145 call!618143))))

(declare-fun bm!618141 () Bool)

(assert (=> bm!618141 (= call!618145 (derivationStepZipperDown!1851 (ite c!1265001 (regTwo!33759 r!7292) (regOne!33758 r!7292)) (ite c!1265001 (Context!12015 Nil!66045) (Context!12015 call!618147)) (h!72492 s!2326)))))

(declare-fun bm!618142 () Bool)

(assert (=> bm!618142 (= call!618144 (derivationStepZipperDown!1851 (ite c!1265001 (regOne!33759 r!7292) (ite c!1265000 (regTwo!33758 r!7292) (ite c!1264999 (regOne!33758 r!7292) (reg!16952 r!7292)))) (ite (or c!1265001 c!1265000) (Context!12015 Nil!66045) (Context!12015 call!618141)) (h!72492 s!2326)))))

(assert (= (and d!2137513 c!1264998) b!6802612))

(assert (= (and d!2137513 (not c!1264998)) b!6802606))

(assert (= (and b!6802606 c!1265001) b!6802608))

(assert (= (and b!6802606 (not c!1265001)) b!6802614))

(assert (= (and b!6802614 res!2779926) b!6802610))

(assert (= (and b!6802614 c!1265000) b!6802615))

(assert (= (and b!6802614 (not c!1265000)) b!6802607))

(assert (= (and b!6802607 c!1264999) b!6802609))

(assert (= (and b!6802607 (not c!1264999)) b!6802611))

(assert (= (and b!6802611 c!1265002) b!6802605))

(assert (= (and b!6802611 (not c!1265002)) b!6802613))

(assert (= (or b!6802609 b!6802605) bm!618140))

(assert (= (or b!6802609 b!6802605) bm!618137))

(assert (= (or b!6802615 bm!618140) bm!618138))

(assert (= (or b!6802615 bm!618137) bm!618139))

(assert (= (or b!6802608 b!6802615) bm!618141))

(assert (= (or b!6802608 bm!618139) bm!618142))

(declare-fun m!7548820 () Bool)

(assert (=> bm!618142 m!7548820))

(declare-fun m!7548822 () Bool)

(assert (=> b!6802610 m!7548822))

(declare-fun m!7548824 () Bool)

(assert (=> bm!618141 m!7548824))

(declare-fun m!7548826 () Bool)

(assert (=> bm!618138 m!7548826))

(declare-fun m!7548828 () Bool)

(assert (=> b!6802612 m!7548828))

(assert (=> b!6802226 d!2137513))

(declare-fun b!6802616 () Bool)

(declare-fun e!4105232 () Bool)

(assert (=> b!6802616 (= e!4105232 (nullable!6601 (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))))))

(declare-fun d!2137523 () Bool)

(declare-fun c!1265003 () Bool)

(assert (=> d!2137523 (= c!1265003 e!4105232)))

(declare-fun res!2779927 () Bool)

(assert (=> d!2137523 (=> (not res!2779927) (not e!4105232))))

(assert (=> d!2137523 (= res!2779927 ((_ is Cons!66045) (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045)))))))

(declare-fun e!4105231 () (InoxSet Context!12014))

(assert (=> d!2137523 (= (derivationStepZipperUp!1777 (Context!12015 (Cons!66045 r!7292 Nil!66045)) (h!72492 s!2326)) e!4105231)))

(declare-fun b!6802617 () Bool)

(declare-fun e!4105233 () (InoxSet Context!12014))

(assert (=> b!6802617 (= e!4105233 ((as const (Array Context!12014 Bool)) false))))

(declare-fun bm!618143 () Bool)

(declare-fun call!618148 () (InoxSet Context!12014))

(assert (=> bm!618143 (= call!618148 (derivationStepZipperDown!1851 (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045)))) (Context!12015 (t!379900 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))) (h!72492 s!2326)))))

(declare-fun b!6802618 () Bool)

(assert (=> b!6802618 (= e!4105233 call!618148)))

(declare-fun b!6802619 () Bool)

(assert (=> b!6802619 (= e!4105231 e!4105233)))

(declare-fun c!1265004 () Bool)

(assert (=> b!6802619 (= c!1265004 ((_ is Cons!66045) (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045)))))))

(declare-fun b!6802620 () Bool)

(assert (=> b!6802620 (= e!4105231 ((_ map or) call!618148 (derivationStepZipperUp!1777 (Context!12015 (t!379900 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))) (h!72492 s!2326))))))

(assert (= (and d!2137523 res!2779927) b!6802616))

(assert (= (and d!2137523 c!1265003) b!6802620))

(assert (= (and d!2137523 (not c!1265003)) b!6802619))

(assert (= (and b!6802619 c!1265004) b!6802618))

(assert (= (and b!6802619 (not c!1265004)) b!6802617))

(assert (= (or b!6802620 b!6802618) bm!618143))

(declare-fun m!7548834 () Bool)

(assert (=> b!6802616 m!7548834))

(declare-fun m!7548838 () Bool)

(assert (=> bm!618143 m!7548838))

(declare-fun m!7548842 () Bool)

(assert (=> b!6802620 m!7548842))

(assert (=> b!6802226 d!2137523))

(declare-fun bs!1813142 () Bool)

(declare-fun d!2137527 () Bool)

(assert (= bs!1813142 (and d!2137527 b!6802209)))

(declare-fun lambda!383779 () Int)

(assert (=> bs!1813142 (= lambda!383779 lambda!383747)))

(declare-fun bs!1813143 () Bool)

(assert (= bs!1813143 (and d!2137527 d!2137497)))

(assert (=> bs!1813143 (= lambda!383779 lambda!383777)))

(assert (=> d!2137527 true))

(assert (=> d!2137527 (= (derivationStepZipper!2567 z!1189 (h!72492 s!2326)) (flatMap!2104 z!1189 lambda!383779))))

(declare-fun bs!1813144 () Bool)

(assert (= bs!1813144 d!2137527))

(declare-fun m!7548858 () Bool)

(assert (=> bs!1813144 m!7548858))

(assert (=> b!6802226 d!2137527))

(declare-fun bs!1813145 () Bool)

(declare-fun d!2137533 () Bool)

(assert (= bs!1813145 (and d!2137533 b!6802233)))

(declare-fun lambda!383782 () Int)

(assert (=> bs!1813145 (= lambda!383782 lambda!383749)))

(assert (=> d!2137533 (= (inv!84804 (h!72494 zl!343)) (forall!15815 (exprs!6507 (h!72494 zl!343)) lambda!383782))))

(declare-fun bs!1813146 () Bool)

(assert (= bs!1813146 d!2137533))

(declare-fun m!7548866 () Bool)

(assert (=> bs!1813146 m!7548866))

(assert (=> b!6802207 d!2137533))

(declare-fun bs!1813147 () Bool)

(declare-fun d!2137537 () Bool)

(assert (= bs!1813147 (and d!2137537 b!6802233)))

(declare-fun lambda!383783 () Int)

(assert (=> bs!1813147 (= lambda!383783 lambda!383749)))

(declare-fun bs!1813148 () Bool)

(assert (= bs!1813148 (and d!2137537 d!2137533)))

(assert (=> bs!1813148 (= lambda!383783 lambda!383782)))

(assert (=> d!2137537 (= (inv!84804 setElem!46633) (forall!15815 (exprs!6507 setElem!46633) lambda!383783))))

(declare-fun bs!1813149 () Bool)

(assert (= bs!1813149 d!2137537))

(declare-fun m!7548868 () Bool)

(assert (=> bs!1813149 m!7548868))

(assert (=> setNonEmpty!46633 d!2137537))

(declare-fun d!2137539 () Bool)

(declare-fun c!1265009 () Bool)

(assert (=> d!2137539 (= c!1265009 (isEmpty!38426 s!2326))))

(declare-fun e!4105239 () Bool)

(assert (=> d!2137539 (= (matchZipper!2609 lt!2448394 s!2326) e!4105239)))

(declare-fun b!6802630 () Bool)

(assert (=> b!6802630 (= e!4105239 (nullableZipper!2329 lt!2448394))))

(declare-fun b!6802631 () Bool)

(assert (=> b!6802631 (= e!4105239 (matchZipper!2609 (derivationStepZipper!2567 lt!2448394 (head!13655 s!2326)) (tail!12740 s!2326)))))

(assert (= (and d!2137539 c!1265009) b!6802630))

(assert (= (and d!2137539 (not c!1265009)) b!6802631))

(assert (=> d!2137539 m!7548460))

(declare-fun m!7548870 () Bool)

(assert (=> b!6802630 m!7548870))

(assert (=> b!6802631 m!7548678))

(assert (=> b!6802631 m!7548678))

(declare-fun m!7548872 () Bool)

(assert (=> b!6802631 m!7548872))

(assert (=> b!6802631 m!7548680))

(assert (=> b!6802631 m!7548872))

(assert (=> b!6802631 m!7548680))

(declare-fun m!7548874 () Bool)

(assert (=> b!6802631 m!7548874))

(assert (=> b!6802227 d!2137539))

(declare-fun d!2137541 () Bool)

(declare-fun c!1265010 () Bool)

(assert (=> d!2137541 (= c!1265010 (isEmpty!38426 (t!379899 s!2326)))))

(declare-fun e!4105240 () Bool)

(assert (=> d!2137541 (= (matchZipper!2609 (derivationStepZipper!2567 lt!2448394 (h!72492 s!2326)) (t!379899 s!2326)) e!4105240)))

(declare-fun b!6802632 () Bool)

(assert (=> b!6802632 (= e!4105240 (nullableZipper!2329 (derivationStepZipper!2567 lt!2448394 (h!72492 s!2326))))))

(declare-fun b!6802633 () Bool)

(assert (=> b!6802633 (= e!4105240 (matchZipper!2609 (derivationStepZipper!2567 (derivationStepZipper!2567 lt!2448394 (h!72492 s!2326)) (head!13655 (t!379899 s!2326))) (tail!12740 (t!379899 s!2326))))))

(assert (= (and d!2137541 c!1265010) b!6802632))

(assert (= (and d!2137541 (not c!1265010)) b!6802633))

(declare-fun m!7548876 () Bool)

(assert (=> d!2137541 m!7548876))

(assert (=> b!6802632 m!7548480))

(declare-fun m!7548878 () Bool)

(assert (=> b!6802632 m!7548878))

(declare-fun m!7548880 () Bool)

(assert (=> b!6802633 m!7548880))

(assert (=> b!6802633 m!7548480))

(assert (=> b!6802633 m!7548880))

(declare-fun m!7548884 () Bool)

(assert (=> b!6802633 m!7548884))

(declare-fun m!7548886 () Bool)

(assert (=> b!6802633 m!7548886))

(assert (=> b!6802633 m!7548884))

(assert (=> b!6802633 m!7548886))

(declare-fun m!7548890 () Bool)

(assert (=> b!6802633 m!7548890))

(assert (=> b!6802227 d!2137541))

(declare-fun bs!1813151 () Bool)

(declare-fun d!2137543 () Bool)

(assert (= bs!1813151 (and d!2137543 b!6802209)))

(declare-fun lambda!383784 () Int)

(assert (=> bs!1813151 (= lambda!383784 lambda!383747)))

(declare-fun bs!1813152 () Bool)

(assert (= bs!1813152 (and d!2137543 d!2137497)))

(assert (=> bs!1813152 (= lambda!383784 lambda!383777)))

(declare-fun bs!1813153 () Bool)

(assert (= bs!1813153 (and d!2137543 d!2137527)))

(assert (=> bs!1813153 (= lambda!383784 lambda!383779)))

(assert (=> d!2137543 true))

(assert (=> d!2137543 (= (derivationStepZipper!2567 lt!2448394 (h!72492 s!2326)) (flatMap!2104 lt!2448394 lambda!383784))))

(declare-fun bs!1813154 () Bool)

(assert (= bs!1813154 d!2137543))

(declare-fun m!7548894 () Bool)

(assert (=> bs!1813154 m!7548894))

(assert (=> b!6802227 d!2137543))

(declare-fun bs!1813157 () Bool)

(declare-fun d!2137547 () Bool)

(assert (= bs!1813157 (and d!2137547 b!6802233)))

(declare-fun lambda!383787 () Int)

(assert (=> bs!1813157 (= lambda!383787 lambda!383749)))

(declare-fun bs!1813158 () Bool)

(assert (= bs!1813158 (and d!2137547 d!2137533)))

(assert (=> bs!1813158 (= lambda!383787 lambda!383782)))

(declare-fun bs!1813159 () Bool)

(assert (= bs!1813159 (and d!2137547 d!2137537)))

(assert (=> bs!1813159 (= lambda!383787 lambda!383783)))

(declare-fun b!6802666 () Bool)

(declare-fun e!4105261 () Bool)

(declare-fun lt!2448477 () Regex!16623)

(declare-fun isConcat!1503 (Regex!16623) Bool)

(assert (=> b!6802666 (= e!4105261 (isConcat!1503 lt!2448477))))

(declare-fun e!4105264 () Bool)

(assert (=> d!2137547 e!4105264))

(declare-fun res!2779940 () Bool)

(assert (=> d!2137547 (=> (not res!2779940) (not e!4105264))))

(assert (=> d!2137547 (= res!2779940 (validRegex!8359 lt!2448477))))

(declare-fun e!4105260 () Regex!16623)

(assert (=> d!2137547 (= lt!2448477 e!4105260)))

(declare-fun c!1265024 () Bool)

(declare-fun e!4105263 () Bool)

(assert (=> d!2137547 (= c!1265024 e!4105263)))

(declare-fun res!2779939 () Bool)

(assert (=> d!2137547 (=> (not res!2779939) (not e!4105263))))

(assert (=> d!2137547 (= res!2779939 ((_ is Cons!66045) (exprs!6507 (h!72494 zl!343))))))

(assert (=> d!2137547 (forall!15815 (exprs!6507 (h!72494 zl!343)) lambda!383787)))

(assert (=> d!2137547 (= (generalisedConcat!2220 (exprs!6507 (h!72494 zl!343))) lt!2448477)))

(declare-fun b!6802667 () Bool)

(declare-fun e!4105259 () Bool)

(assert (=> b!6802667 (= e!4105264 e!4105259)))

(declare-fun c!1265022 () Bool)

(declare-fun isEmpty!38428 (List!66169) Bool)

(assert (=> b!6802667 (= c!1265022 (isEmpty!38428 (exprs!6507 (h!72494 zl!343))))))

(declare-fun b!6802668 () Bool)

(declare-fun e!4105262 () Regex!16623)

(assert (=> b!6802668 (= e!4105260 e!4105262)))

(declare-fun c!1265023 () Bool)

(assert (=> b!6802668 (= c!1265023 ((_ is Cons!66045) (exprs!6507 (h!72494 zl!343))))))

(declare-fun b!6802669 () Bool)

(assert (=> b!6802669 (= e!4105260 (h!72493 (exprs!6507 (h!72494 zl!343))))))

(declare-fun b!6802670 () Bool)

(declare-fun isEmptyExpr!1980 (Regex!16623) Bool)

(assert (=> b!6802670 (= e!4105259 (isEmptyExpr!1980 lt!2448477))))

(declare-fun b!6802671 () Bool)

(assert (=> b!6802671 (= e!4105259 e!4105261)))

(declare-fun c!1265025 () Bool)

(declare-fun tail!12742 (List!66169) List!66169)

(assert (=> b!6802671 (= c!1265025 (isEmpty!38428 (tail!12742 (exprs!6507 (h!72494 zl!343)))))))

(declare-fun b!6802672 () Bool)

(declare-fun head!13657 (List!66169) Regex!16623)

(assert (=> b!6802672 (= e!4105261 (= lt!2448477 (head!13657 (exprs!6507 (h!72494 zl!343)))))))

(declare-fun b!6802673 () Bool)

(assert (=> b!6802673 (= e!4105262 (Concat!25468 (h!72493 (exprs!6507 (h!72494 zl!343))) (generalisedConcat!2220 (t!379900 (exprs!6507 (h!72494 zl!343))))))))

(declare-fun b!6802674 () Bool)

(assert (=> b!6802674 (= e!4105263 (isEmpty!38428 (t!379900 (exprs!6507 (h!72494 zl!343)))))))

(declare-fun b!6802675 () Bool)

(assert (=> b!6802675 (= e!4105262 EmptyExpr!16623)))

(assert (= (and d!2137547 res!2779939) b!6802674))

(assert (= (and d!2137547 c!1265024) b!6802669))

(assert (= (and d!2137547 (not c!1265024)) b!6802668))

(assert (= (and b!6802668 c!1265023) b!6802673))

(assert (= (and b!6802668 (not c!1265023)) b!6802675))

(assert (= (and d!2137547 res!2779940) b!6802667))

(assert (= (and b!6802667 c!1265022) b!6802670))

(assert (= (and b!6802667 (not c!1265022)) b!6802671))

(assert (= (and b!6802671 c!1265025) b!6802672))

(assert (= (and b!6802671 (not c!1265025)) b!6802666))

(declare-fun m!7548918 () Bool)

(assert (=> b!6802671 m!7548918))

(assert (=> b!6802671 m!7548918))

(declare-fun m!7548920 () Bool)

(assert (=> b!6802671 m!7548920))

(declare-fun m!7548922 () Bool)

(assert (=> b!6802672 m!7548922))

(declare-fun m!7548924 () Bool)

(assert (=> b!6802666 m!7548924))

(declare-fun m!7548926 () Bool)

(assert (=> b!6802674 m!7548926))

(declare-fun m!7548928 () Bool)

(assert (=> d!2137547 m!7548928))

(declare-fun m!7548930 () Bool)

(assert (=> d!2137547 m!7548930))

(declare-fun m!7548932 () Bool)

(assert (=> b!6802673 m!7548932))

(declare-fun m!7548934 () Bool)

(assert (=> b!6802667 m!7548934))

(declare-fun m!7548936 () Bool)

(assert (=> b!6802670 m!7548936))

(assert (=> b!6802220 d!2137547))

(declare-fun d!2137555 () Bool)

(declare-fun lt!2448478 () Regex!16623)

(assert (=> d!2137555 (validRegex!8359 lt!2448478)))

(assert (=> d!2137555 (= lt!2448478 (generalisedUnion!2467 (unfocusZipperList!2044 (Cons!66046 lt!2448396 Nil!66046))))))

(assert (=> d!2137555 (= (unfocusZipper!2365 (Cons!66046 lt!2448396 Nil!66046)) lt!2448478)))

(declare-fun bs!1813160 () Bool)

(assert (= bs!1813160 d!2137555))

(declare-fun m!7548938 () Bool)

(assert (=> bs!1813160 m!7548938))

(declare-fun m!7548940 () Bool)

(assert (=> bs!1813160 m!7548940))

(assert (=> bs!1813160 m!7548940))

(declare-fun m!7548942 () Bool)

(assert (=> bs!1813160 m!7548942))

(assert (=> b!6802239 d!2137555))

(declare-fun bs!1813172 () Bool)

(declare-fun d!2137557 () Bool)

(assert (= bs!1813172 (and d!2137557 b!6802233)))

(declare-fun lambda!383797 () Int)

(assert (=> bs!1813172 (= lambda!383797 lambda!383749)))

(declare-fun bs!1813173 () Bool)

(assert (= bs!1813173 (and d!2137557 d!2137533)))

(assert (=> bs!1813173 (= lambda!383797 lambda!383782)))

(declare-fun bs!1813174 () Bool)

(assert (= bs!1813174 (and d!2137557 d!2137537)))

(assert (=> bs!1813174 (= lambda!383797 lambda!383783)))

(declare-fun bs!1813175 () Bool)

(assert (= bs!1813175 (and d!2137557 d!2137547)))

(assert (=> bs!1813175 (= lambda!383797 lambda!383787)))

(declare-fun b!6802723 () Bool)

(declare-fun e!4105296 () Regex!16623)

(declare-fun e!4105293 () Regex!16623)

(assert (=> b!6802723 (= e!4105296 e!4105293)))

(declare-fun c!1265044 () Bool)

(assert (=> b!6802723 (= c!1265044 ((_ is Cons!66045) (unfocusZipperList!2044 zl!343)))))

(declare-fun b!6802724 () Bool)

(declare-fun e!4105291 () Bool)

(declare-fun lt!2448486 () Regex!16623)

(declare-fun isUnion!1418 (Regex!16623) Bool)

(assert (=> b!6802724 (= e!4105291 (isUnion!1418 lt!2448486))))

(declare-fun e!4105292 () Bool)

(assert (=> d!2137557 e!4105292))

(declare-fun res!2779957 () Bool)

(assert (=> d!2137557 (=> (not res!2779957) (not e!4105292))))

(assert (=> d!2137557 (= res!2779957 (validRegex!8359 lt!2448486))))

(assert (=> d!2137557 (= lt!2448486 e!4105296)))

(declare-fun c!1265045 () Bool)

(declare-fun e!4105294 () Bool)

(assert (=> d!2137557 (= c!1265045 e!4105294)))

(declare-fun res!2779956 () Bool)

(assert (=> d!2137557 (=> (not res!2779956) (not e!4105294))))

(assert (=> d!2137557 (= res!2779956 ((_ is Cons!66045) (unfocusZipperList!2044 zl!343)))))

(assert (=> d!2137557 (forall!15815 (unfocusZipperList!2044 zl!343) lambda!383797)))

(assert (=> d!2137557 (= (generalisedUnion!2467 (unfocusZipperList!2044 zl!343)) lt!2448486)))

(declare-fun b!6802725 () Bool)

(declare-fun e!4105295 () Bool)

(assert (=> b!6802725 (= e!4105292 e!4105295)))

(declare-fun c!1265042 () Bool)

(assert (=> b!6802725 (= c!1265042 (isEmpty!38428 (unfocusZipperList!2044 zl!343)))))

(declare-fun b!6802726 () Bool)

(declare-fun isEmptyLang!1988 (Regex!16623) Bool)

(assert (=> b!6802726 (= e!4105295 (isEmptyLang!1988 lt!2448486))))

(declare-fun b!6802727 () Bool)

(assert (=> b!6802727 (= e!4105293 EmptyLang!16623)))

(declare-fun b!6802728 () Bool)

(assert (=> b!6802728 (= e!4105294 (isEmpty!38428 (t!379900 (unfocusZipperList!2044 zl!343))))))

(declare-fun b!6802729 () Bool)

(assert (=> b!6802729 (= e!4105293 (Union!16623 (h!72493 (unfocusZipperList!2044 zl!343)) (generalisedUnion!2467 (t!379900 (unfocusZipperList!2044 zl!343)))))))

(declare-fun b!6802730 () Bool)

(assert (=> b!6802730 (= e!4105291 (= lt!2448486 (head!13657 (unfocusZipperList!2044 zl!343))))))

(declare-fun b!6802731 () Bool)

(assert (=> b!6802731 (= e!4105295 e!4105291)))

(declare-fun c!1265043 () Bool)

(assert (=> b!6802731 (= c!1265043 (isEmpty!38428 (tail!12742 (unfocusZipperList!2044 zl!343))))))

(declare-fun b!6802732 () Bool)

(assert (=> b!6802732 (= e!4105296 (h!72493 (unfocusZipperList!2044 zl!343)))))

(assert (= (and d!2137557 res!2779956) b!6802728))

(assert (= (and d!2137557 c!1265045) b!6802732))

(assert (= (and d!2137557 (not c!1265045)) b!6802723))

(assert (= (and b!6802723 c!1265044) b!6802729))

(assert (= (and b!6802723 (not c!1265044)) b!6802727))

(assert (= (and d!2137557 res!2779957) b!6802725))

(assert (= (and b!6802725 c!1265042) b!6802726))

(assert (= (and b!6802725 (not c!1265042)) b!6802731))

(assert (= (and b!6802731 c!1265043) b!6802730))

(assert (= (and b!6802731 (not c!1265043)) b!6802724))

(assert (=> b!6802731 m!7548536))

(declare-fun m!7548968 () Bool)

(assert (=> b!6802731 m!7548968))

(assert (=> b!6802731 m!7548968))

(declare-fun m!7548970 () Bool)

(assert (=> b!6802731 m!7548970))

(declare-fun m!7548972 () Bool)

(assert (=> d!2137557 m!7548972))

(assert (=> d!2137557 m!7548536))

(declare-fun m!7548974 () Bool)

(assert (=> d!2137557 m!7548974))

(assert (=> b!6802730 m!7548536))

(declare-fun m!7548976 () Bool)

(assert (=> b!6802730 m!7548976))

(declare-fun m!7548978 () Bool)

(assert (=> b!6802726 m!7548978))

(declare-fun m!7548980 () Bool)

(assert (=> b!6802729 m!7548980))

(declare-fun m!7548982 () Bool)

(assert (=> b!6802724 m!7548982))

(declare-fun m!7548984 () Bool)

(assert (=> b!6802728 m!7548984))

(assert (=> b!6802725 m!7548536))

(declare-fun m!7548986 () Bool)

(assert (=> b!6802725 m!7548986))

(assert (=> b!6802219 d!2137557))

(declare-fun bs!1813176 () Bool)

(declare-fun d!2137569 () Bool)

(assert (= bs!1813176 (and d!2137569 b!6802233)))

(declare-fun lambda!383802 () Int)

(assert (=> bs!1813176 (= lambda!383802 lambda!383749)))

(declare-fun bs!1813177 () Bool)

(assert (= bs!1813177 (and d!2137569 d!2137533)))

(assert (=> bs!1813177 (= lambda!383802 lambda!383782)))

(declare-fun bs!1813178 () Bool)

(assert (= bs!1813178 (and d!2137569 d!2137537)))

(assert (=> bs!1813178 (= lambda!383802 lambda!383783)))

(declare-fun bs!1813179 () Bool)

(assert (= bs!1813179 (and d!2137569 d!2137547)))

(assert (=> bs!1813179 (= lambda!383802 lambda!383787)))

(declare-fun bs!1813180 () Bool)

(assert (= bs!1813180 (and d!2137569 d!2137557)))

(assert (=> bs!1813180 (= lambda!383802 lambda!383797)))

(declare-fun lt!2448491 () List!66169)

(assert (=> d!2137569 (forall!15815 lt!2448491 lambda!383802)))

(declare-fun e!4105311 () List!66169)

(assert (=> d!2137569 (= lt!2448491 e!4105311)))

(declare-fun c!1265056 () Bool)

(assert (=> d!2137569 (= c!1265056 ((_ is Cons!66046) zl!343))))

(assert (=> d!2137569 (= (unfocusZipperList!2044 zl!343) lt!2448491)))

(declare-fun b!6802757 () Bool)

(assert (=> b!6802757 (= e!4105311 (Cons!66045 (generalisedConcat!2220 (exprs!6507 (h!72494 zl!343))) (unfocusZipperList!2044 (t!379901 zl!343))))))

(declare-fun b!6802758 () Bool)

(assert (=> b!6802758 (= e!4105311 Nil!66045)))

(assert (= (and d!2137569 c!1265056) b!6802757))

(assert (= (and d!2137569 (not c!1265056)) b!6802758))

(declare-fun m!7548988 () Bool)

(assert (=> d!2137569 m!7548988))

(assert (=> b!6802757 m!7548446))

(declare-fun m!7548990 () Bool)

(assert (=> b!6802757 m!7548990))

(assert (=> b!6802219 d!2137569))

(declare-fun d!2137571 () Bool)

(declare-fun choose!50721 (Int) Bool)

(assert (=> d!2137571 (= (Exists!3691 lambda!383744) (choose!50721 lambda!383744))))

(declare-fun bs!1813181 () Bool)

(assert (= bs!1813181 d!2137571))

(declare-fun m!7548992 () Bool)

(assert (=> bs!1813181 m!7548992))

(assert (=> b!6802221 d!2137571))

(declare-fun d!2137573 () Bool)

(declare-fun isEmpty!38430 (Option!16510) Bool)

(assert (=> d!2137573 (= (isDefined!13213 (findConcatSeparation!2924 (reg!16952 r!7292) r!7292 Nil!66044 s!2326 s!2326)) (not (isEmpty!38430 (findConcatSeparation!2924 (reg!16952 r!7292) r!7292 Nil!66044 s!2326 s!2326))))))

(declare-fun bs!1813182 () Bool)

(assert (= bs!1813182 d!2137573))

(assert (=> bs!1813182 m!7548466))

(declare-fun m!7548994 () Bool)

(assert (=> bs!1813182 m!7548994))

(assert (=> b!6802221 d!2137573))

(declare-fun bs!1813188 () Bool)

(declare-fun d!2137575 () Bool)

(assert (= bs!1813188 (and d!2137575 b!6802354)))

(declare-fun lambda!383810 () Int)

(assert (=> bs!1813188 (not (= lambda!383810 lambda!383761))))

(declare-fun bs!1813189 () Bool)

(assert (= bs!1813189 (and d!2137575 b!6802221)))

(assert (=> bs!1813189 (= lambda!383810 lambda!383744)))

(assert (=> bs!1813189 (not (= lambda!383810 lambda!383746))))

(declare-fun bs!1813190 () Bool)

(assert (= bs!1813190 (and d!2137575 b!6802352)))

(assert (=> bs!1813190 (not (= lambda!383810 lambda!383760))))

(assert (=> bs!1813189 (not (= lambda!383810 lambda!383745))))

(assert (=> d!2137575 true))

(assert (=> d!2137575 true))

(assert (=> d!2137575 true))

(declare-fun bs!1813191 () Bool)

(assert (= bs!1813191 d!2137575))

(declare-fun lambda!383813 () Int)

(assert (=> bs!1813191 (not (= lambda!383813 lambda!383810))))

(assert (=> bs!1813188 (= (and (= (reg!16952 r!7292) (regOne!33758 lt!2448378)) (= r!7292 (regTwo!33758 lt!2448378))) (= lambda!383813 lambda!383761))))

(assert (=> bs!1813189 (not (= lambda!383813 lambda!383744))))

(assert (=> bs!1813189 (= lambda!383813 lambda!383746)))

(assert (=> bs!1813190 (not (= lambda!383813 lambda!383760))))

(assert (=> bs!1813189 (not (= lambda!383813 lambda!383745))))

(assert (=> d!2137575 true))

(assert (=> d!2137575 true))

(assert (=> d!2137575 true))

(assert (=> d!2137575 (= (Exists!3691 lambda!383810) (Exists!3691 lambda!383813))))

(declare-fun lt!2448497 () Unit!159937)

(declare-fun choose!50723 (Regex!16623 Regex!16623 List!66168) Unit!159937)

(assert (=> d!2137575 (= lt!2448497 (choose!50723 (reg!16952 r!7292) r!7292 s!2326))))

(assert (=> d!2137575 (validRegex!8359 (reg!16952 r!7292))))

(assert (=> d!2137575 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2218 (reg!16952 r!7292) r!7292 s!2326) lt!2448497)))

(declare-fun m!7549020 () Bool)

(assert (=> bs!1813191 m!7549020))

(declare-fun m!7549022 () Bool)

(assert (=> bs!1813191 m!7549022))

(declare-fun m!7549024 () Bool)

(assert (=> bs!1813191 m!7549024))

(declare-fun m!7549026 () Bool)

(assert (=> bs!1813191 m!7549026))

(assert (=> b!6802221 d!2137575))

(declare-fun bs!1813198 () Bool)

(declare-fun d!2137583 () Bool)

(assert (= bs!1813198 (and d!2137583 d!2137575)))

(declare-fun lambda!383822 () Int)

(assert (=> bs!1813198 (= (= (Star!16623 (reg!16952 r!7292)) r!7292) (= lambda!383822 lambda!383810))))

(declare-fun bs!1813199 () Bool)

(assert (= bs!1813199 (and d!2137583 b!6802354)))

(assert (=> bs!1813199 (not (= lambda!383822 lambda!383761))))

(declare-fun bs!1813200 () Bool)

(assert (= bs!1813200 (and d!2137583 b!6802221)))

(assert (=> bs!1813200 (= (= (Star!16623 (reg!16952 r!7292)) r!7292) (= lambda!383822 lambda!383744))))

(assert (=> bs!1813200 (not (= lambda!383822 lambda!383746))))

(assert (=> bs!1813198 (not (= lambda!383822 lambda!383813))))

(declare-fun bs!1813201 () Bool)

(assert (= bs!1813201 (and d!2137583 b!6802352)))

(assert (=> bs!1813201 (not (= lambda!383822 lambda!383760))))

(assert (=> bs!1813200 (not (= lambda!383822 lambda!383745))))

(assert (=> d!2137583 true))

(assert (=> d!2137583 true))

(declare-fun lambda!383825 () Int)

(assert (=> bs!1813198 (not (= lambda!383825 lambda!383810))))

(assert (=> bs!1813199 (not (= lambda!383825 lambda!383761))))

(declare-fun bs!1813202 () Bool)

(assert (= bs!1813202 d!2137583))

(assert (=> bs!1813202 (not (= lambda!383825 lambda!383822))))

(assert (=> bs!1813200 (not (= lambda!383825 lambda!383744))))

(assert (=> bs!1813200 (not (= lambda!383825 lambda!383746))))

(assert (=> bs!1813198 (not (= lambda!383825 lambda!383813))))

(assert (=> bs!1813201 (= (and (= (reg!16952 r!7292) (reg!16952 lt!2448378)) (= (Star!16623 (reg!16952 r!7292)) lt!2448378)) (= lambda!383825 lambda!383760))))

(assert (=> bs!1813200 (= (= (Star!16623 (reg!16952 r!7292)) r!7292) (= lambda!383825 lambda!383745))))

(assert (=> d!2137583 true))

(assert (=> d!2137583 true))

(assert (=> d!2137583 (= (Exists!3691 lambda!383822) (Exists!3691 lambda!383825))))

(declare-fun lt!2448503 () Unit!159937)

(declare-fun choose!50725 (Regex!16623 List!66168) Unit!159937)

(assert (=> d!2137583 (= lt!2448503 (choose!50725 (reg!16952 r!7292) s!2326))))

(assert (=> d!2137583 (validRegex!8359 (reg!16952 r!7292))))

(assert (=> d!2137583 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!782 (reg!16952 r!7292) s!2326) lt!2448503)))

(declare-fun m!7549036 () Bool)

(assert (=> bs!1813202 m!7549036))

(declare-fun m!7549038 () Bool)

(assert (=> bs!1813202 m!7549038))

(declare-fun m!7549040 () Bool)

(assert (=> bs!1813202 m!7549040))

(assert (=> bs!1813202 m!7549026))

(assert (=> b!6802221 d!2137583))

(declare-fun d!2137587 () Bool)

(assert (=> d!2137587 (= (Exists!3691 lambda!383745) (choose!50721 lambda!383745))))

(declare-fun bs!1813206 () Bool)

(assert (= bs!1813206 d!2137587))

(declare-fun m!7549042 () Bool)

(assert (=> bs!1813206 m!7549042))

(assert (=> b!6802221 d!2137587))

(declare-fun d!2137589 () Bool)

(assert (=> d!2137589 (= (Exists!3691 lambda!383746) (choose!50721 lambda!383746))))

(declare-fun bs!1813208 () Bool)

(assert (= bs!1813208 d!2137589))

(declare-fun m!7549044 () Bool)

(assert (=> bs!1813208 m!7549044))

(assert (=> b!6802221 d!2137589))

(declare-fun d!2137591 () Bool)

(assert (=> d!2137591 (= (isEmpty!38426 s!2326) ((_ is Nil!66044) s!2326))))

(assert (=> b!6802221 d!2137591))

(declare-fun b!6802841 () Bool)

(declare-fun e!4105357 () Option!16510)

(assert (=> b!6802841 (= e!4105357 (Some!16509 (tuple2!67197 Nil!66044 s!2326)))))

(declare-fun b!6802842 () Bool)

(declare-fun e!4105356 () Bool)

(declare-fun lt!2448518 () Option!16510)

(assert (=> b!6802842 (= e!4105356 (= (++!14792 (_1!36901 (get!23004 lt!2448518)) (_2!36901 (get!23004 lt!2448518))) s!2326))))

(declare-fun b!6802843 () Bool)

(declare-fun res!2780024 () Bool)

(assert (=> b!6802843 (=> (not res!2780024) (not e!4105356))))

(assert (=> b!6802843 (= res!2780024 (matchR!8806 r!7292 (_2!36901 (get!23004 lt!2448518))))))

(declare-fun d!2137593 () Bool)

(declare-fun e!4105354 () Bool)

(assert (=> d!2137593 e!4105354))

(declare-fun res!2780022 () Bool)

(assert (=> d!2137593 (=> res!2780022 e!4105354)))

(assert (=> d!2137593 (= res!2780022 e!4105356)))

(declare-fun res!2780020 () Bool)

(assert (=> d!2137593 (=> (not res!2780020) (not e!4105356))))

(assert (=> d!2137593 (= res!2780020 (isDefined!13213 lt!2448518))))

(assert (=> d!2137593 (= lt!2448518 e!4105357)))

(declare-fun c!1265070 () Bool)

(declare-fun e!4105358 () Bool)

(assert (=> d!2137593 (= c!1265070 e!4105358)))

(declare-fun res!2780023 () Bool)

(assert (=> d!2137593 (=> (not res!2780023) (not e!4105358))))

(assert (=> d!2137593 (= res!2780023 (matchR!8806 (reg!16952 r!7292) Nil!66044))))

(assert (=> d!2137593 (validRegex!8359 (reg!16952 r!7292))))

(assert (=> d!2137593 (= (findConcatSeparation!2924 (reg!16952 r!7292) r!7292 Nil!66044 s!2326 s!2326) lt!2448518)))

(declare-fun b!6802844 () Bool)

(assert (=> b!6802844 (= e!4105358 (matchR!8806 r!7292 s!2326))))

(declare-fun b!6802845 () Bool)

(declare-fun e!4105355 () Option!16510)

(assert (=> b!6802845 (= e!4105355 None!16509)))

(declare-fun b!6802846 () Bool)

(assert (=> b!6802846 (= e!4105357 e!4105355)))

(declare-fun c!1265069 () Bool)

(assert (=> b!6802846 (= c!1265069 ((_ is Nil!66044) s!2326))))

(declare-fun b!6802847 () Bool)

(declare-fun res!2780021 () Bool)

(assert (=> b!6802847 (=> (not res!2780021) (not e!4105356))))

(assert (=> b!6802847 (= res!2780021 (matchR!8806 (reg!16952 r!7292) (_1!36901 (get!23004 lt!2448518))))))

(declare-fun b!6802848 () Bool)

(assert (=> b!6802848 (= e!4105354 (not (isDefined!13213 lt!2448518)))))

(declare-fun b!6802849 () Bool)

(declare-fun lt!2448517 () Unit!159937)

(declare-fun lt!2448519 () Unit!159937)

(assert (=> b!6802849 (= lt!2448517 lt!2448519)))

(assert (=> b!6802849 (= (++!14792 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (t!379899 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2744 (List!66168 C!33516 List!66168 List!66168) Unit!159937)

(assert (=> b!6802849 (= lt!2448519 (lemmaMoveElementToOtherListKeepsConcatEq!2744 Nil!66044 (h!72492 s!2326) (t!379899 s!2326) s!2326))))

(assert (=> b!6802849 (= e!4105355 (findConcatSeparation!2924 (reg!16952 r!7292) r!7292 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (t!379899 s!2326) s!2326))))

(assert (= (and d!2137593 res!2780023) b!6802844))

(assert (= (and d!2137593 c!1265070) b!6802841))

(assert (= (and d!2137593 (not c!1265070)) b!6802846))

(assert (= (and b!6802846 c!1265069) b!6802845))

(assert (= (and b!6802846 (not c!1265069)) b!6802849))

(assert (= (and d!2137593 res!2780020) b!6802847))

(assert (= (and b!6802847 res!2780021) b!6802843))

(assert (= (and b!6802843 res!2780024) b!6802842))

(assert (= (and d!2137593 (not res!2780022)) b!6802848))

(declare-fun m!7549056 () Bool)

(assert (=> b!6802842 m!7549056))

(declare-fun m!7549058 () Bool)

(assert (=> b!6802842 m!7549058))

(assert (=> b!6802847 m!7549056))

(declare-fun m!7549060 () Bool)

(assert (=> b!6802847 m!7549060))

(declare-fun m!7549062 () Bool)

(assert (=> d!2137593 m!7549062))

(declare-fun m!7549064 () Bool)

(assert (=> d!2137593 m!7549064))

(assert (=> d!2137593 m!7549026))

(assert (=> b!6802844 m!7548496))

(assert (=> b!6802848 m!7549062))

(declare-fun m!7549066 () Bool)

(assert (=> b!6802849 m!7549066))

(assert (=> b!6802849 m!7549066))

(declare-fun m!7549068 () Bool)

(assert (=> b!6802849 m!7549068))

(declare-fun m!7549070 () Bool)

(assert (=> b!6802849 m!7549070))

(assert (=> b!6802849 m!7549066))

(declare-fun m!7549072 () Bool)

(assert (=> b!6802849 m!7549072))

(assert (=> b!6802843 m!7549056))

(declare-fun m!7549074 () Bool)

(assert (=> b!6802843 m!7549074))

(assert (=> b!6802221 d!2137593))

(declare-fun bs!1813214 () Bool)

(declare-fun d!2137603 () Bool)

(assert (= bs!1813214 (and d!2137603 d!2137583)))

(declare-fun lambda!383830 () Int)

(assert (=> bs!1813214 (not (= lambda!383830 lambda!383825))))

(declare-fun bs!1813215 () Bool)

(assert (= bs!1813215 (and d!2137603 d!2137575)))

(assert (=> bs!1813215 (= lambda!383830 lambda!383810)))

(declare-fun bs!1813216 () Bool)

(assert (= bs!1813216 (and d!2137603 b!6802354)))

(assert (=> bs!1813216 (not (= lambda!383830 lambda!383761))))

(assert (=> bs!1813214 (= (= r!7292 (Star!16623 (reg!16952 r!7292))) (= lambda!383830 lambda!383822))))

(declare-fun bs!1813217 () Bool)

(assert (= bs!1813217 (and d!2137603 b!6802221)))

(assert (=> bs!1813217 (= lambda!383830 lambda!383744)))

(assert (=> bs!1813217 (not (= lambda!383830 lambda!383746))))

(assert (=> bs!1813215 (not (= lambda!383830 lambda!383813))))

(declare-fun bs!1813218 () Bool)

(assert (= bs!1813218 (and d!2137603 b!6802352)))

(assert (=> bs!1813218 (not (= lambda!383830 lambda!383760))))

(assert (=> bs!1813217 (not (= lambda!383830 lambda!383745))))

(assert (=> d!2137603 true))

(assert (=> d!2137603 true))

(assert (=> d!2137603 true))

(assert (=> d!2137603 (= (isDefined!13213 (findConcatSeparation!2924 (reg!16952 r!7292) r!7292 Nil!66044 s!2326 s!2326)) (Exists!3691 lambda!383830))))

(declare-fun lt!2448527 () Unit!159937)

(declare-fun choose!50727 (Regex!16623 Regex!16623 List!66168) Unit!159937)

(assert (=> d!2137603 (= lt!2448527 (choose!50727 (reg!16952 r!7292) r!7292 s!2326))))

(assert (=> d!2137603 (validRegex!8359 (reg!16952 r!7292))))

(assert (=> d!2137603 (= (lemmaFindConcatSeparationEquivalentToExists!2688 (reg!16952 r!7292) r!7292 s!2326) lt!2448527)))

(declare-fun bs!1813219 () Bool)

(assert (= bs!1813219 d!2137603))

(declare-fun m!7549090 () Bool)

(assert (=> bs!1813219 m!7549090))

(assert (=> bs!1813219 m!7548466))

(declare-fun m!7549092 () Bool)

(assert (=> bs!1813219 m!7549092))

(assert (=> bs!1813219 m!7548466))

(assert (=> bs!1813219 m!7548472))

(assert (=> bs!1813219 m!7549026))

(assert (=> b!6802221 d!2137603))

(declare-fun d!2137607 () Bool)

(declare-fun c!1265073 () Bool)

(assert (=> d!2137607 (= c!1265073 (isEmpty!38426 s!2326))))

(declare-fun e!4105368 () Bool)

(assert (=> d!2137607 (= (matchZipper!2609 z!1189 s!2326) e!4105368)))

(declare-fun b!6802867 () Bool)

(assert (=> b!6802867 (= e!4105368 (nullableZipper!2329 z!1189))))

(declare-fun b!6802868 () Bool)

(assert (=> b!6802868 (= e!4105368 (matchZipper!2609 (derivationStepZipper!2567 z!1189 (head!13655 s!2326)) (tail!12740 s!2326)))))

(assert (= (and d!2137607 c!1265073) b!6802867))

(assert (= (and d!2137607 (not c!1265073)) b!6802868))

(assert (=> d!2137607 m!7548460))

(declare-fun m!7549094 () Bool)

(assert (=> b!6802867 m!7549094))

(assert (=> b!6802868 m!7548678))

(assert (=> b!6802868 m!7548678))

(declare-fun m!7549096 () Bool)

(assert (=> b!6802868 m!7549096))

(assert (=> b!6802868 m!7548680))

(assert (=> b!6802868 m!7549096))

(assert (=> b!6802868 m!7548680))

(declare-fun m!7549098 () Bool)

(assert (=> b!6802868 m!7549098))

(assert (=> b!6802222 d!2137607))

(declare-fun b!6802895 () Bool)

(declare-fun e!4105392 () Bool)

(declare-fun e!4105393 () Bool)

(assert (=> b!6802895 (= e!4105392 e!4105393)))

(declare-fun res!2780052 () Bool)

(assert (=> b!6802895 (=> (not res!2780052) (not e!4105393))))

(declare-fun call!618160 () Bool)

(assert (=> b!6802895 (= res!2780052 call!618160)))

(declare-fun b!6802896 () Bool)

(declare-fun e!4105389 () Bool)

(declare-fun e!4105391 () Bool)

(assert (=> b!6802896 (= e!4105389 e!4105391)))

(declare-fun c!1265080 () Bool)

(assert (=> b!6802896 (= c!1265080 ((_ is Union!16623) r!7292))))

(declare-fun d!2137609 () Bool)

(declare-fun res!2780056 () Bool)

(declare-fun e!4105395 () Bool)

(assert (=> d!2137609 (=> res!2780056 e!4105395)))

(assert (=> d!2137609 (= res!2780056 ((_ is ElementMatch!16623) r!7292))))

(assert (=> d!2137609 (= (validRegex!8359 r!7292) e!4105395)))

(declare-fun b!6802897 () Bool)

(declare-fun call!618162 () Bool)

(assert (=> b!6802897 (= e!4105393 call!618162)))

(declare-fun bm!618155 () Bool)

(declare-fun call!618161 () Bool)

(assert (=> bm!618155 (= call!618160 call!618161)))

(declare-fun b!6802898 () Bool)

(declare-fun e!4105390 () Bool)

(assert (=> b!6802898 (= e!4105390 call!618161)))

(declare-fun b!6802899 () Bool)

(assert (=> b!6802899 (= e!4105389 e!4105390)))

(declare-fun res!2780053 () Bool)

(assert (=> b!6802899 (= res!2780053 (not (nullable!6601 (reg!16952 r!7292))))))

(assert (=> b!6802899 (=> (not res!2780053) (not e!4105390))))

(declare-fun bm!618156 () Bool)

(declare-fun c!1265081 () Bool)

(assert (=> bm!618156 (= call!618161 (validRegex!8359 (ite c!1265081 (reg!16952 r!7292) (ite c!1265080 (regOne!33759 r!7292) (regOne!33758 r!7292)))))))

(declare-fun b!6802900 () Bool)

(declare-fun e!4105394 () Bool)

(assert (=> b!6802900 (= e!4105394 call!618162)))

(declare-fun b!6802901 () Bool)

(declare-fun res!2780055 () Bool)

(assert (=> b!6802901 (=> res!2780055 e!4105392)))

(assert (=> b!6802901 (= res!2780055 (not ((_ is Concat!25468) r!7292)))))

(assert (=> b!6802901 (= e!4105391 e!4105392)))

(declare-fun b!6802902 () Bool)

(assert (=> b!6802902 (= e!4105395 e!4105389)))

(assert (=> b!6802902 (= c!1265081 ((_ is Star!16623) r!7292))))

(declare-fun bm!618157 () Bool)

(assert (=> bm!618157 (= call!618162 (validRegex!8359 (ite c!1265080 (regTwo!33759 r!7292) (regTwo!33758 r!7292))))))

(declare-fun b!6802903 () Bool)

(declare-fun res!2780054 () Bool)

(assert (=> b!6802903 (=> (not res!2780054) (not e!4105394))))

(assert (=> b!6802903 (= res!2780054 call!618160)))

(assert (=> b!6802903 (= e!4105391 e!4105394)))

(assert (= (and d!2137609 (not res!2780056)) b!6802902))

(assert (= (and b!6802902 c!1265081) b!6802899))

(assert (= (and b!6802902 (not c!1265081)) b!6802896))

(assert (= (and b!6802899 res!2780053) b!6802898))

(assert (= (and b!6802896 c!1265080) b!6802903))

(assert (= (and b!6802896 (not c!1265080)) b!6802901))

(assert (= (and b!6802903 res!2780054) b!6802900))

(assert (= (and b!6802901 (not res!2780055)) b!6802895))

(assert (= (and b!6802895 res!2780052) b!6802897))

(assert (= (or b!6802900 b!6802897) bm!618157))

(assert (= (or b!6802903 b!6802895) bm!618155))

(assert (= (or b!6802898 bm!618155) bm!618156))

(declare-fun m!7549126 () Bool)

(assert (=> b!6802899 m!7549126))

(declare-fun m!7549128 () Bool)

(assert (=> bm!618156 m!7549128))

(declare-fun m!7549130 () Bool)

(assert (=> bm!618157 m!7549130))

(assert (=> start!658416 d!2137609))

(declare-fun bs!1813235 () Bool)

(declare-fun b!6802906 () Bool)

(assert (= bs!1813235 (and b!6802906 d!2137575)))

(declare-fun lambda!383835 () Int)

(assert (=> bs!1813235 (not (= lambda!383835 lambda!383810))))

(declare-fun bs!1813236 () Bool)

(assert (= bs!1813236 (and b!6802906 b!6802354)))

(assert (=> bs!1813236 (not (= lambda!383835 lambda!383761))))

(declare-fun bs!1813237 () Bool)

(assert (= bs!1813237 (and b!6802906 d!2137583)))

(assert (=> bs!1813237 (not (= lambda!383835 lambda!383822))))

(declare-fun bs!1813238 () Bool)

(assert (= bs!1813238 (and b!6802906 b!6802221)))

(assert (=> bs!1813238 (not (= lambda!383835 lambda!383744))))

(assert (=> bs!1813238 (not (= lambda!383835 lambda!383746))))

(assert (=> bs!1813235 (not (= lambda!383835 lambda!383813))))

(declare-fun bs!1813239 () Bool)

(assert (= bs!1813239 (and b!6802906 b!6802352)))

(assert (=> bs!1813239 (= (and (= (reg!16952 r!7292) (reg!16952 lt!2448378)) (= r!7292 lt!2448378)) (= lambda!383835 lambda!383760))))

(assert (=> bs!1813238 (= lambda!383835 lambda!383745)))

(declare-fun bs!1813240 () Bool)

(assert (= bs!1813240 (and b!6802906 d!2137603)))

(assert (=> bs!1813240 (not (= lambda!383835 lambda!383830))))

(assert (=> bs!1813237 (= (= r!7292 (Star!16623 (reg!16952 r!7292))) (= lambda!383835 lambda!383825))))

(assert (=> b!6802906 true))

(assert (=> b!6802906 true))

(declare-fun bs!1813241 () Bool)

(declare-fun b!6802908 () Bool)

(assert (= bs!1813241 (and b!6802908 d!2137575)))

(declare-fun lambda!383836 () Int)

(assert (=> bs!1813241 (not (= lambda!383836 lambda!383810))))

(declare-fun bs!1813242 () Bool)

(assert (= bs!1813242 (and b!6802908 b!6802354)))

(assert (=> bs!1813242 (= (and (= (regOne!33758 r!7292) (regOne!33758 lt!2448378)) (= (regTwo!33758 r!7292) (regTwo!33758 lt!2448378))) (= lambda!383836 lambda!383761))))

(declare-fun bs!1813243 () Bool)

(assert (= bs!1813243 (and b!6802908 d!2137583)))

(assert (=> bs!1813243 (not (= lambda!383836 lambda!383822))))

(declare-fun bs!1813244 () Bool)

(assert (= bs!1813244 (and b!6802908 b!6802221)))

(assert (=> bs!1813244 (not (= lambda!383836 lambda!383744))))

(declare-fun bs!1813245 () Bool)

(assert (= bs!1813245 (and b!6802908 b!6802906)))

(assert (=> bs!1813245 (not (= lambda!383836 lambda!383835))))

(assert (=> bs!1813244 (= (and (= (regOne!33758 r!7292) (reg!16952 r!7292)) (= (regTwo!33758 r!7292) r!7292)) (= lambda!383836 lambda!383746))))

(assert (=> bs!1813241 (= (and (= (regOne!33758 r!7292) (reg!16952 r!7292)) (= (regTwo!33758 r!7292) r!7292)) (= lambda!383836 lambda!383813))))

(declare-fun bs!1813246 () Bool)

(assert (= bs!1813246 (and b!6802908 b!6802352)))

(assert (=> bs!1813246 (not (= lambda!383836 lambda!383760))))

(assert (=> bs!1813244 (not (= lambda!383836 lambda!383745))))

(declare-fun bs!1813247 () Bool)

(assert (= bs!1813247 (and b!6802908 d!2137603)))

(assert (=> bs!1813247 (not (= lambda!383836 lambda!383830))))

(assert (=> bs!1813243 (not (= lambda!383836 lambda!383825))))

(assert (=> b!6802908 true))

(assert (=> b!6802908 true))

(declare-fun b!6802904 () Bool)

(declare-fun e!4105401 () Bool)

(declare-fun call!618163 () Bool)

(assert (=> b!6802904 (= e!4105401 call!618163)))

(declare-fun b!6802905 () Bool)

(declare-fun e!4105399 () Bool)

(assert (=> b!6802905 (= e!4105401 e!4105399)))

(declare-fun res!2780059 () Bool)

(assert (=> b!6802905 (= res!2780059 (not ((_ is EmptyLang!16623) r!7292)))))

(assert (=> b!6802905 (=> (not res!2780059) (not e!4105399))))

(declare-fun e!4105397 () Bool)

(declare-fun call!618164 () Bool)

(assert (=> b!6802906 (= e!4105397 call!618164)))

(declare-fun b!6802907 () Bool)

(declare-fun res!2780058 () Bool)

(assert (=> b!6802907 (=> res!2780058 e!4105397)))

(assert (=> b!6802907 (= res!2780058 call!618163)))

(declare-fun e!4105400 () Bool)

(assert (=> b!6802907 (= e!4105400 e!4105397)))

(declare-fun bm!618158 () Bool)

(assert (=> bm!618158 (= call!618163 (isEmpty!38426 s!2326))))

(declare-fun bm!618159 () Bool)

(declare-fun c!1265083 () Bool)

(assert (=> bm!618159 (= call!618164 (Exists!3691 (ite c!1265083 lambda!383835 lambda!383836)))))

(declare-fun d!2137623 () Bool)

(declare-fun c!1265084 () Bool)

(assert (=> d!2137623 (= c!1265084 ((_ is EmptyExpr!16623) r!7292))))

(assert (=> d!2137623 (= (matchRSpec!3724 r!7292 s!2326) e!4105401)))

(assert (=> b!6802908 (= e!4105400 call!618164)))

(declare-fun b!6802909 () Bool)

(declare-fun c!1265082 () Bool)

(assert (=> b!6802909 (= c!1265082 ((_ is ElementMatch!16623) r!7292))))

(declare-fun e!4105402 () Bool)

(assert (=> b!6802909 (= e!4105399 e!4105402)))

(declare-fun b!6802910 () Bool)

(declare-fun e!4105396 () Bool)

(assert (=> b!6802910 (= e!4105396 e!4105400)))

(assert (=> b!6802910 (= c!1265083 ((_ is Star!16623) r!7292))))

(declare-fun b!6802911 () Bool)

(declare-fun c!1265085 () Bool)

(assert (=> b!6802911 (= c!1265085 ((_ is Union!16623) r!7292))))

(assert (=> b!6802911 (= e!4105402 e!4105396)))

(declare-fun b!6802912 () Bool)

(declare-fun e!4105398 () Bool)

(assert (=> b!6802912 (= e!4105396 e!4105398)))

(declare-fun res!2780057 () Bool)

(assert (=> b!6802912 (= res!2780057 (matchRSpec!3724 (regOne!33759 r!7292) s!2326))))

(assert (=> b!6802912 (=> res!2780057 e!4105398)))

(declare-fun b!6802913 () Bool)

(assert (=> b!6802913 (= e!4105402 (= s!2326 (Cons!66044 (c!1264881 r!7292) Nil!66044)))))

(declare-fun b!6802914 () Bool)

(assert (=> b!6802914 (= e!4105398 (matchRSpec!3724 (regTwo!33759 r!7292) s!2326))))

(assert (= (and d!2137623 c!1265084) b!6802904))

(assert (= (and d!2137623 (not c!1265084)) b!6802905))

(assert (= (and b!6802905 res!2780059) b!6802909))

(assert (= (and b!6802909 c!1265082) b!6802913))

(assert (= (and b!6802909 (not c!1265082)) b!6802911))

(assert (= (and b!6802911 c!1265085) b!6802912))

(assert (= (and b!6802911 (not c!1265085)) b!6802910))

(assert (= (and b!6802912 (not res!2780057)) b!6802914))

(assert (= (and b!6802910 c!1265083) b!6802907))

(assert (= (and b!6802910 (not c!1265083)) b!6802908))

(assert (= (and b!6802907 (not res!2780058)) b!6802906))

(assert (= (or b!6802906 b!6802908) bm!618159))

(assert (= (or b!6802904 b!6802907) bm!618158))

(assert (=> bm!618158 m!7548460))

(declare-fun m!7549132 () Bool)

(assert (=> bm!618159 m!7549132))

(declare-fun m!7549134 () Bool)

(assert (=> b!6802912 m!7549134))

(declare-fun m!7549136 () Bool)

(assert (=> b!6802914 m!7549136))

(assert (=> b!6802217 d!2137623))

(declare-fun b!6802935 () Bool)

(declare-fun res!2780064 () Bool)

(declare-fun e!4105421 () Bool)

(assert (=> b!6802935 (=> res!2780064 e!4105421)))

(assert (=> b!6802935 (= res!2780064 (not (isEmpty!38426 (tail!12740 s!2326))))))

(declare-fun b!6802936 () Bool)

(declare-fun e!4105420 () Bool)

(declare-fun e!4105419 () Bool)

(assert (=> b!6802936 (= e!4105420 e!4105419)))

(declare-fun res!2780067 () Bool)

(assert (=> b!6802936 (=> (not res!2780067) (not e!4105419))))

(declare-fun lt!2448535 () Bool)

(assert (=> b!6802936 (= res!2780067 (not lt!2448535))))

(declare-fun b!6802938 () Bool)

(declare-fun e!4105415 () Bool)

(declare-fun e!4105417 () Bool)

(assert (=> b!6802938 (= e!4105415 e!4105417)))

(declare-fun c!1265094 () Bool)

(assert (=> b!6802938 (= c!1265094 ((_ is EmptyLang!16623) r!7292))))

(declare-fun b!6802939 () Bool)

(declare-fun e!4105418 () Bool)

(assert (=> b!6802939 (= e!4105418 (= (head!13655 s!2326) (c!1264881 r!7292)))))

(declare-fun b!6802940 () Bool)

(declare-fun e!4105416 () Bool)

(assert (=> b!6802940 (= e!4105416 (matchR!8806 (derivativeStep!5286 r!7292 (head!13655 s!2326)) (tail!12740 s!2326)))))

(declare-fun b!6802941 () Bool)

(assert (=> b!6802941 (= e!4105417 (not lt!2448535))))

(declare-fun b!6802942 () Bool)

(assert (=> b!6802942 (= e!4105419 e!4105421)))

(declare-fun res!2780068 () Bool)

(assert (=> b!6802942 (=> res!2780068 e!4105421)))

(declare-fun call!618165 () Bool)

(assert (=> b!6802942 (= res!2780068 call!618165)))

(declare-fun b!6802943 () Bool)

(assert (=> b!6802943 (= e!4105415 (= lt!2448535 call!618165))))

(declare-fun bm!618160 () Bool)

(assert (=> bm!618160 (= call!618165 (isEmpty!38426 s!2326))))

(declare-fun b!6802944 () Bool)

(assert (=> b!6802944 (= e!4105416 (nullable!6601 r!7292))))

(declare-fun b!6802937 () Bool)

(declare-fun res!2780071 () Bool)

(assert (=> b!6802937 (=> (not res!2780071) (not e!4105418))))

(assert (=> b!6802937 (= res!2780071 (not call!618165))))

(declare-fun d!2137625 () Bool)

(assert (=> d!2137625 e!4105415))

(declare-fun c!1265095 () Bool)

(assert (=> d!2137625 (= c!1265095 ((_ is EmptyExpr!16623) r!7292))))

(assert (=> d!2137625 (= lt!2448535 e!4105416)))

(declare-fun c!1265096 () Bool)

(assert (=> d!2137625 (= c!1265096 (isEmpty!38426 s!2326))))

(assert (=> d!2137625 (validRegex!8359 r!7292)))

(assert (=> d!2137625 (= (matchR!8806 r!7292 s!2326) lt!2448535)))

(declare-fun b!6802945 () Bool)

(declare-fun res!2780069 () Bool)

(assert (=> b!6802945 (=> (not res!2780069) (not e!4105418))))

(assert (=> b!6802945 (= res!2780069 (isEmpty!38426 (tail!12740 s!2326)))))

(declare-fun b!6802946 () Bool)

(declare-fun res!2780070 () Bool)

(assert (=> b!6802946 (=> res!2780070 e!4105420)))

(assert (=> b!6802946 (= res!2780070 (not ((_ is ElementMatch!16623) r!7292)))))

(assert (=> b!6802946 (= e!4105417 e!4105420)))

(declare-fun b!6802947 () Bool)

(assert (=> b!6802947 (= e!4105421 (not (= (head!13655 s!2326) (c!1264881 r!7292))))))

(declare-fun b!6802948 () Bool)

(declare-fun res!2780066 () Bool)

(assert (=> b!6802948 (=> res!2780066 e!4105420)))

(assert (=> b!6802948 (= res!2780066 e!4105418)))

(declare-fun res!2780065 () Bool)

(assert (=> b!6802948 (=> (not res!2780065) (not e!4105418))))

(assert (=> b!6802948 (= res!2780065 lt!2448535)))

(assert (= (and d!2137625 c!1265096) b!6802944))

(assert (= (and d!2137625 (not c!1265096)) b!6802940))

(assert (= (and d!2137625 c!1265095) b!6802943))

(assert (= (and d!2137625 (not c!1265095)) b!6802938))

(assert (= (and b!6802938 c!1265094) b!6802941))

(assert (= (and b!6802938 (not c!1265094)) b!6802946))

(assert (= (and b!6802946 (not res!2780070)) b!6802948))

(assert (= (and b!6802948 res!2780065) b!6802937))

(assert (= (and b!6802937 res!2780071) b!6802945))

(assert (= (and b!6802945 res!2780069) b!6802939))

(assert (= (and b!6802948 (not res!2780066)) b!6802936))

(assert (= (and b!6802936 res!2780067) b!6802942))

(assert (= (and b!6802942 (not res!2780068)) b!6802935))

(assert (= (and b!6802935 (not res!2780064)) b!6802947))

(assert (= (or b!6802943 b!6802937 b!6802942) bm!618160))

(assert (=> b!6802939 m!7548678))

(assert (=> b!6802935 m!7548680))

(assert (=> b!6802935 m!7548680))

(assert (=> b!6802935 m!7548682))

(assert (=> b!6802947 m!7548678))

(assert (=> b!6802940 m!7548678))

(assert (=> b!6802940 m!7548678))

(declare-fun m!7549138 () Bool)

(assert (=> b!6802940 m!7549138))

(assert (=> b!6802940 m!7548680))

(assert (=> b!6802940 m!7549138))

(assert (=> b!6802940 m!7548680))

(declare-fun m!7549140 () Bool)

(assert (=> b!6802940 m!7549140))

(assert (=> bm!618160 m!7548460))

(assert (=> d!2137625 m!7548460))

(assert (=> d!2137625 m!7548542))

(declare-fun m!7549142 () Bool)

(assert (=> b!6802944 m!7549142))

(assert (=> b!6802945 m!7548680))

(assert (=> b!6802945 m!7548680))

(assert (=> b!6802945 m!7548682))

(assert (=> b!6802217 d!2137625))

(declare-fun d!2137627 () Bool)

(assert (=> d!2137627 (= (matchR!8806 r!7292 s!2326) (matchRSpec!3724 r!7292 s!2326))))

(declare-fun lt!2448536 () Unit!159937)

(assert (=> d!2137627 (= lt!2448536 (choose!50711 r!7292 s!2326))))

(assert (=> d!2137627 (validRegex!8359 r!7292)))

(assert (=> d!2137627 (= (mainMatchTheorem!3724 r!7292 s!2326) lt!2448536)))

(declare-fun bs!1813248 () Bool)

(assert (= bs!1813248 d!2137627))

(assert (=> bs!1813248 m!7548496))

(assert (=> bs!1813248 m!7548494))

(declare-fun m!7549144 () Bool)

(assert (=> bs!1813248 m!7549144))

(assert (=> bs!1813248 m!7548542))

(assert (=> b!6802217 d!2137627))

(declare-fun d!2137629 () Bool)

(declare-fun c!1265097 () Bool)

(assert (=> d!2137629 (= c!1265097 (isEmpty!38426 (_2!36901 lt!2448389)))))

(declare-fun e!4105422 () Bool)

(assert (=> d!2137629 (= (matchZipper!2609 lt!2448387 (_2!36901 lt!2448389)) e!4105422)))

(declare-fun b!6802949 () Bool)

(assert (=> b!6802949 (= e!4105422 (nullableZipper!2329 lt!2448387))))

(declare-fun b!6802950 () Bool)

(assert (=> b!6802950 (= e!4105422 (matchZipper!2609 (derivationStepZipper!2567 lt!2448387 (head!13655 (_2!36901 lt!2448389))) (tail!12740 (_2!36901 lt!2448389))))))

(assert (= (and d!2137629 c!1265097) b!6802949))

(assert (= (and d!2137629 (not c!1265097)) b!6802950))

(declare-fun m!7549146 () Bool)

(assert (=> d!2137629 m!7549146))

(declare-fun m!7549148 () Bool)

(assert (=> b!6802949 m!7549148))

(declare-fun m!7549150 () Bool)

(assert (=> b!6802950 m!7549150))

(assert (=> b!6802950 m!7549150))

(declare-fun m!7549152 () Bool)

(assert (=> b!6802950 m!7549152))

(declare-fun m!7549154 () Bool)

(assert (=> b!6802950 m!7549154))

(assert (=> b!6802950 m!7549152))

(assert (=> b!6802950 m!7549154))

(declare-fun m!7549156 () Bool)

(assert (=> b!6802950 m!7549156))

(assert (=> b!6802238 d!2137629))

(declare-fun d!2137631 () Bool)

(assert (=> d!2137631 (isDefined!13213 (findConcatSeparationZippers!232 lt!2448380 (store ((as const (Array Context!12014 Bool)) false) lt!2448396 true) Nil!66044 s!2326 s!2326))))

(declare-fun lt!2448543 () Unit!159937)

(declare-fun choose!50730 ((InoxSet Context!12014) Context!12014 List!66168) Unit!159937)

(assert (=> d!2137631 (= lt!2448543 (choose!50730 lt!2448380 lt!2448396 s!2326))))

(assert (=> d!2137631 (matchZipper!2609 (appendTo!228 lt!2448380 lt!2448396) s!2326)))

(assert (=> d!2137631 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!232 lt!2448380 lt!2448396 s!2326) lt!2448543)))

(declare-fun bs!1813260 () Bool)

(assert (= bs!1813260 d!2137631))

(assert (=> bs!1813260 m!7548428))

(declare-fun m!7549178 () Bool)

(assert (=> bs!1813260 m!7549178))

(assert (=> bs!1813260 m!7548512))

(declare-fun m!7549180 () Bool)

(assert (=> bs!1813260 m!7549180))

(declare-fun m!7549182 () Bool)

(assert (=> bs!1813260 m!7549182))

(declare-fun m!7549186 () Bool)

(assert (=> bs!1813260 m!7549186))

(assert (=> bs!1813260 m!7548512))

(assert (=> bs!1813260 m!7549180))

(assert (=> bs!1813260 m!7548428))

(assert (=> b!6802218 d!2137631))

(declare-fun d!2137637 () Bool)

(assert (=> d!2137637 (= (get!23004 lt!2448385) (v!52715 lt!2448385))))

(assert (=> b!6802218 d!2137637))

(declare-fun d!2137639 () Bool)

(assert (=> d!2137639 (= (isDefined!13213 lt!2448385) (not (isEmpty!38430 lt!2448385)))))

(declare-fun bs!1813261 () Bool)

(assert (= bs!1813261 d!2137639))

(declare-fun m!7549202 () Bool)

(assert (=> bs!1813261 m!7549202))

(assert (=> b!6802218 d!2137639))

(declare-fun b!6802998 () Bool)

(declare-fun e!4105452 () Bool)

(declare-fun lt!2448547 () List!66168)

(assert (=> b!6802998 (= e!4105452 (or (not (= (_2!36901 lt!2448389) Nil!66044)) (= lt!2448547 (_1!36901 lt!2448389))))))

(declare-fun d!2137643 () Bool)

(assert (=> d!2137643 e!4105452))

(declare-fun res!2780089 () Bool)

(assert (=> d!2137643 (=> (not res!2780089) (not e!4105452))))

(declare-fun content!12906 (List!66168) (InoxSet C!33516))

(assert (=> d!2137643 (= res!2780089 (= (content!12906 lt!2448547) ((_ map or) (content!12906 (_1!36901 lt!2448389)) (content!12906 (_2!36901 lt!2448389)))))))

(declare-fun e!4105451 () List!66168)

(assert (=> d!2137643 (= lt!2448547 e!4105451)))

(declare-fun c!1265112 () Bool)

(assert (=> d!2137643 (= c!1265112 ((_ is Nil!66044) (_1!36901 lt!2448389)))))

(assert (=> d!2137643 (= (++!14792 (_1!36901 lt!2448389) (_2!36901 lt!2448389)) lt!2448547)))

(declare-fun b!6802997 () Bool)

(declare-fun res!2780088 () Bool)

(assert (=> b!6802997 (=> (not res!2780088) (not e!4105452))))

(declare-fun size!40671 (List!66168) Int)

(assert (=> b!6802997 (= res!2780088 (= (size!40671 lt!2448547) (+ (size!40671 (_1!36901 lt!2448389)) (size!40671 (_2!36901 lt!2448389)))))))

(declare-fun b!6802995 () Bool)

(assert (=> b!6802995 (= e!4105451 (_2!36901 lt!2448389))))

(declare-fun b!6802996 () Bool)

(assert (=> b!6802996 (= e!4105451 (Cons!66044 (h!72492 (_1!36901 lt!2448389)) (++!14792 (t!379899 (_1!36901 lt!2448389)) (_2!36901 lt!2448389))))))

(assert (= (and d!2137643 c!1265112) b!6802995))

(assert (= (and d!2137643 (not c!1265112)) b!6802996))

(assert (= (and d!2137643 res!2780089) b!6802997))

(assert (= (and b!6802997 res!2780088) b!6802998))

(declare-fun m!7549210 () Bool)

(assert (=> d!2137643 m!7549210))

(declare-fun m!7549212 () Bool)

(assert (=> d!2137643 m!7549212))

(declare-fun m!7549214 () Bool)

(assert (=> d!2137643 m!7549214))

(declare-fun m!7549216 () Bool)

(assert (=> b!6802997 m!7549216))

(declare-fun m!7549218 () Bool)

(assert (=> b!6802997 m!7549218))

(declare-fun m!7549220 () Bool)

(assert (=> b!6802997 m!7549220))

(declare-fun m!7549222 () Bool)

(assert (=> b!6802996 m!7549222))

(assert (=> b!6802218 d!2137643))

(declare-fun b!6803096 () Bool)

(declare-fun e!4105505 () Option!16510)

(assert (=> b!6803096 (= e!4105505 None!16509)))

(declare-fun b!6803097 () Bool)

(declare-fun e!4105504 () Bool)

(declare-fun lt!2448557 () Option!16510)

(assert (=> b!6803097 (= e!4105504 (not (isDefined!13213 lt!2448557)))))

(declare-fun d!2137649 () Bool)

(assert (=> d!2137649 e!4105504))

(declare-fun res!2780108 () Bool)

(assert (=> d!2137649 (=> res!2780108 e!4105504)))

(declare-fun e!4105502 () Bool)

(assert (=> d!2137649 (= res!2780108 e!4105502)))

(declare-fun res!2780109 () Bool)

(assert (=> d!2137649 (=> (not res!2780109) (not e!4105502))))

(assert (=> d!2137649 (= res!2780109 (isDefined!13213 lt!2448557))))

(declare-fun e!4105503 () Option!16510)

(assert (=> d!2137649 (= lt!2448557 e!4105503)))

(declare-fun c!1265127 () Bool)

(declare-fun e!4105506 () Bool)

(assert (=> d!2137649 (= c!1265127 e!4105506)))

(declare-fun res!2780111 () Bool)

(assert (=> d!2137649 (=> (not res!2780111) (not e!4105506))))

(assert (=> d!2137649 (= res!2780111 (matchZipper!2609 lt!2448380 Nil!66044))))

(assert (=> d!2137649 (= (++!14792 Nil!66044 s!2326) s!2326)))

(assert (=> d!2137649 (= (findConcatSeparationZippers!232 lt!2448380 lt!2448387 Nil!66044 s!2326 s!2326) lt!2448557)))

(declare-fun b!6803098 () Bool)

(declare-fun res!2780110 () Bool)

(assert (=> b!6803098 (=> (not res!2780110) (not e!4105502))))

(assert (=> b!6803098 (= res!2780110 (matchZipper!2609 lt!2448380 (_1!36901 (get!23004 lt!2448557))))))

(declare-fun b!6803099 () Bool)

(assert (=> b!6803099 (= e!4105502 (= (++!14792 (_1!36901 (get!23004 lt!2448557)) (_2!36901 (get!23004 lt!2448557))) s!2326))))

(declare-fun b!6803100 () Bool)

(assert (=> b!6803100 (= e!4105506 (matchZipper!2609 lt!2448387 s!2326))))

(declare-fun b!6803101 () Bool)

(assert (=> b!6803101 (= e!4105503 (Some!16509 (tuple2!67197 Nil!66044 s!2326)))))

(declare-fun b!6803102 () Bool)

(declare-fun lt!2448556 () Unit!159937)

(declare-fun lt!2448558 () Unit!159937)

(assert (=> b!6803102 (= lt!2448556 lt!2448558)))

(assert (=> b!6803102 (= (++!14792 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (t!379899 s!2326)) s!2326)))

(assert (=> b!6803102 (= lt!2448558 (lemmaMoveElementToOtherListKeepsConcatEq!2744 Nil!66044 (h!72492 s!2326) (t!379899 s!2326) s!2326))))

(assert (=> b!6803102 (= e!4105505 (findConcatSeparationZippers!232 lt!2448380 lt!2448387 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (t!379899 s!2326) s!2326))))

(declare-fun b!6803103 () Bool)

(declare-fun res!2780107 () Bool)

(assert (=> b!6803103 (=> (not res!2780107) (not e!4105502))))

(assert (=> b!6803103 (= res!2780107 (matchZipper!2609 lt!2448387 (_2!36901 (get!23004 lt!2448557))))))

(declare-fun b!6803104 () Bool)

(assert (=> b!6803104 (= e!4105503 e!4105505)))

(declare-fun c!1265126 () Bool)

(assert (=> b!6803104 (= c!1265126 ((_ is Nil!66044) s!2326))))

(assert (= (and d!2137649 res!2780111) b!6803100))

(assert (= (and d!2137649 c!1265127) b!6803101))

(assert (= (and d!2137649 (not c!1265127)) b!6803104))

(assert (= (and b!6803104 c!1265126) b!6803096))

(assert (= (and b!6803104 (not c!1265126)) b!6803102))

(assert (= (and d!2137649 res!2780109) b!6803098))

(assert (= (and b!6803098 res!2780110) b!6803103))

(assert (= (and b!6803103 res!2780107) b!6803099))

(assert (= (and d!2137649 (not res!2780108)) b!6803097))

(assert (=> b!6803102 m!7549066))

(assert (=> b!6803102 m!7549066))

(assert (=> b!6803102 m!7549068))

(assert (=> b!6803102 m!7549070))

(assert (=> b!6803102 m!7549066))

(declare-fun m!7549258 () Bool)

(assert (=> b!6803102 m!7549258))

(declare-fun m!7549260 () Bool)

(assert (=> d!2137649 m!7549260))

(declare-fun m!7549262 () Bool)

(assert (=> d!2137649 m!7549262))

(declare-fun m!7549264 () Bool)

(assert (=> d!2137649 m!7549264))

(declare-fun m!7549266 () Bool)

(assert (=> b!6803099 m!7549266))

(declare-fun m!7549268 () Bool)

(assert (=> b!6803099 m!7549268))

(assert (=> b!6803097 m!7549260))

(assert (=> b!6803103 m!7549266))

(declare-fun m!7549270 () Bool)

(assert (=> b!6803103 m!7549270))

(assert (=> b!6803098 m!7549266))

(declare-fun m!7549272 () Bool)

(assert (=> b!6803098 m!7549272))

(declare-fun m!7549274 () Bool)

(assert (=> b!6803100 m!7549274))

(assert (=> b!6802218 d!2137649))

(declare-fun bs!1813270 () Bool)

(declare-fun d!2137669 () Bool)

(assert (= bs!1813270 (and d!2137669 d!2137569)))

(declare-fun lambda!383843 () Int)

(assert (=> bs!1813270 (= lambda!383843 lambda!383802)))

(declare-fun bs!1813271 () Bool)

(assert (= bs!1813271 (and d!2137669 b!6802233)))

(assert (=> bs!1813271 (= lambda!383843 lambda!383749)))

(declare-fun bs!1813272 () Bool)

(assert (= bs!1813272 (and d!2137669 d!2137533)))

(assert (=> bs!1813272 (= lambda!383843 lambda!383782)))

(declare-fun bs!1813273 () Bool)

(assert (= bs!1813273 (and d!2137669 d!2137537)))

(assert (=> bs!1813273 (= lambda!383843 lambda!383783)))

(declare-fun bs!1813274 () Bool)

(assert (= bs!1813274 (and d!2137669 d!2137547)))

(assert (=> bs!1813274 (= lambda!383843 lambda!383787)))

(declare-fun bs!1813275 () Bool)

(assert (= bs!1813275 (and d!2137669 d!2137557)))

(assert (=> bs!1813275 (= lambda!383843 lambda!383797)))

(assert (=> d!2137669 (= (inv!84804 lt!2448396) (forall!15815 (exprs!6507 lt!2448396) lambda!383843))))

(declare-fun bs!1813276 () Bool)

(assert (= bs!1813276 d!2137669))

(declare-fun m!7549276 () Bool)

(assert (=> bs!1813276 m!7549276))

(assert (=> b!6802236 d!2137669))

(declare-fun d!2137671 () Bool)

(assert (=> d!2137671 (= (isEmpty!38425 (t!379901 zl!343)) ((_ is Nil!66046) (t!379901 zl!343)))))

(assert (=> b!6802216 d!2137671))

(declare-fun d!2137673 () Bool)

(declare-fun e!4105509 () Bool)

(assert (=> d!2137673 e!4105509))

(declare-fun res!2780114 () Bool)

(assert (=> d!2137673 (=> (not res!2780114) (not e!4105509))))

(declare-fun lt!2448561 () List!66170)

(declare-fun noDuplicate!2408 (List!66170) Bool)

(assert (=> d!2137673 (= res!2780114 (noDuplicate!2408 lt!2448561))))

(declare-fun choose!50731 ((InoxSet Context!12014)) List!66170)

(assert (=> d!2137673 (= lt!2448561 (choose!50731 z!1189))))

(assert (=> d!2137673 (= (toList!10407 z!1189) lt!2448561)))

(declare-fun b!6803107 () Bool)

(declare-fun content!12907 (List!66170) (InoxSet Context!12014))

(assert (=> b!6803107 (= e!4105509 (= (content!12907 lt!2448561) z!1189))))

(assert (= (and d!2137673 res!2780114) b!6803107))

(declare-fun m!7549278 () Bool)

(assert (=> d!2137673 m!7549278))

(declare-fun m!7549280 () Bool)

(assert (=> d!2137673 m!7549280))

(declare-fun m!7549282 () Bool)

(assert (=> b!6803107 m!7549282))

(assert (=> b!6802237 d!2137673))

(declare-fun b!6803121 () Bool)

(declare-fun e!4105512 () Bool)

(declare-fun tp!1862361 () Bool)

(declare-fun tp!1862360 () Bool)

(assert (=> b!6803121 (= e!4105512 (and tp!1862361 tp!1862360))))

(declare-fun b!6803119 () Bool)

(declare-fun tp!1862364 () Bool)

(declare-fun tp!1862363 () Bool)

(assert (=> b!6803119 (= e!4105512 (and tp!1862364 tp!1862363))))

(declare-fun b!6803118 () Bool)

(assert (=> b!6803118 (= e!4105512 tp_is_empty!42499)))

(assert (=> b!6802224 (= tp!1862288 e!4105512)))

(declare-fun b!6803120 () Bool)

(declare-fun tp!1862362 () Bool)

(assert (=> b!6803120 (= e!4105512 tp!1862362)))

(assert (= (and b!6802224 ((_ is ElementMatch!16623) (regOne!33758 r!7292))) b!6803118))

(assert (= (and b!6802224 ((_ is Concat!25468) (regOne!33758 r!7292))) b!6803119))

(assert (= (and b!6802224 ((_ is Star!16623) (regOne!33758 r!7292))) b!6803120))

(assert (= (and b!6802224 ((_ is Union!16623) (regOne!33758 r!7292))) b!6803121))

(declare-fun b!6803125 () Bool)

(declare-fun e!4105513 () Bool)

(declare-fun tp!1862366 () Bool)

(declare-fun tp!1862365 () Bool)

(assert (=> b!6803125 (= e!4105513 (and tp!1862366 tp!1862365))))

(declare-fun b!6803123 () Bool)

(declare-fun tp!1862369 () Bool)

(declare-fun tp!1862368 () Bool)

(assert (=> b!6803123 (= e!4105513 (and tp!1862369 tp!1862368))))

(declare-fun b!6803122 () Bool)

(assert (=> b!6803122 (= e!4105513 tp_is_empty!42499)))

(assert (=> b!6802224 (= tp!1862286 e!4105513)))

(declare-fun b!6803124 () Bool)

(declare-fun tp!1862367 () Bool)

(assert (=> b!6803124 (= e!4105513 tp!1862367)))

(assert (= (and b!6802224 ((_ is ElementMatch!16623) (regTwo!33758 r!7292))) b!6803122))

(assert (= (and b!6802224 ((_ is Concat!25468) (regTwo!33758 r!7292))) b!6803123))

(assert (= (and b!6802224 ((_ is Star!16623) (regTwo!33758 r!7292))) b!6803124))

(assert (= (and b!6802224 ((_ is Union!16623) (regTwo!33758 r!7292))) b!6803125))

(declare-fun b!6803130 () Bool)

(declare-fun e!4105516 () Bool)

(declare-fun tp!1862372 () Bool)

(assert (=> b!6803130 (= e!4105516 (and tp_is_empty!42499 tp!1862372))))

(assert (=> b!6802234 (= tp!1862282 e!4105516)))

(assert (= (and b!6802234 ((_ is Cons!66044) (t!379899 s!2326))) b!6803130))

(declare-fun b!6803134 () Bool)

(declare-fun e!4105517 () Bool)

(declare-fun tp!1862374 () Bool)

(declare-fun tp!1862373 () Bool)

(assert (=> b!6803134 (= e!4105517 (and tp!1862374 tp!1862373))))

(declare-fun b!6803132 () Bool)

(declare-fun tp!1862377 () Bool)

(declare-fun tp!1862376 () Bool)

(assert (=> b!6803132 (= e!4105517 (and tp!1862377 tp!1862376))))

(declare-fun b!6803131 () Bool)

(assert (=> b!6803131 (= e!4105517 tp_is_empty!42499)))

(assert (=> b!6802228 (= tp!1862284 e!4105517)))

(declare-fun b!6803133 () Bool)

(declare-fun tp!1862375 () Bool)

(assert (=> b!6803133 (= e!4105517 tp!1862375)))

(assert (= (and b!6802228 ((_ is ElementMatch!16623) (reg!16952 r!7292))) b!6803131))

(assert (= (and b!6802228 ((_ is Concat!25468) (reg!16952 r!7292))) b!6803132))

(assert (= (and b!6802228 ((_ is Star!16623) (reg!16952 r!7292))) b!6803133))

(assert (= (and b!6802228 ((_ is Union!16623) (reg!16952 r!7292))) b!6803134))

(declare-fun b!6803142 () Bool)

(declare-fun e!4105523 () Bool)

(declare-fun tp!1862382 () Bool)

(assert (=> b!6803142 (= e!4105523 tp!1862382)))

(declare-fun b!6803141 () Bool)

(declare-fun tp!1862383 () Bool)

(declare-fun e!4105522 () Bool)

(assert (=> b!6803141 (= e!4105522 (and (inv!84804 (h!72494 (t!379901 zl!343))) e!4105523 tp!1862383))))

(assert (=> b!6802207 (= tp!1862287 e!4105522)))

(assert (= b!6803141 b!6803142))

(assert (= (and b!6802207 ((_ is Cons!66046) (t!379901 zl!343))) b!6803141))

(declare-fun m!7549284 () Bool)

(assert (=> b!6803141 m!7549284))

(declare-fun b!6803146 () Bool)

(declare-fun e!4105524 () Bool)

(declare-fun tp!1862385 () Bool)

(declare-fun tp!1862384 () Bool)

(assert (=> b!6803146 (= e!4105524 (and tp!1862385 tp!1862384))))

(declare-fun b!6803144 () Bool)

(declare-fun tp!1862388 () Bool)

(declare-fun tp!1862387 () Bool)

(assert (=> b!6803144 (= e!4105524 (and tp!1862388 tp!1862387))))

(declare-fun b!6803143 () Bool)

(assert (=> b!6803143 (= e!4105524 tp_is_empty!42499)))

(assert (=> b!6802223 (= tp!1862285 e!4105524)))

(declare-fun b!6803145 () Bool)

(declare-fun tp!1862386 () Bool)

(assert (=> b!6803145 (= e!4105524 tp!1862386)))

(assert (= (and b!6802223 ((_ is ElementMatch!16623) (regOne!33759 r!7292))) b!6803143))

(assert (= (and b!6802223 ((_ is Concat!25468) (regOne!33759 r!7292))) b!6803144))

(assert (= (and b!6802223 ((_ is Star!16623) (regOne!33759 r!7292))) b!6803145))

(assert (= (and b!6802223 ((_ is Union!16623) (regOne!33759 r!7292))) b!6803146))

(declare-fun b!6803150 () Bool)

(declare-fun e!4105525 () Bool)

(declare-fun tp!1862390 () Bool)

(declare-fun tp!1862389 () Bool)

(assert (=> b!6803150 (= e!4105525 (and tp!1862390 tp!1862389))))

(declare-fun b!6803148 () Bool)

(declare-fun tp!1862393 () Bool)

(declare-fun tp!1862392 () Bool)

(assert (=> b!6803148 (= e!4105525 (and tp!1862393 tp!1862392))))

(declare-fun b!6803147 () Bool)

(assert (=> b!6803147 (= e!4105525 tp_is_empty!42499)))

(assert (=> b!6802223 (= tp!1862283 e!4105525)))

(declare-fun b!6803149 () Bool)

(declare-fun tp!1862391 () Bool)

(assert (=> b!6803149 (= e!4105525 tp!1862391)))

(assert (= (and b!6802223 ((_ is ElementMatch!16623) (regTwo!33759 r!7292))) b!6803147))

(assert (= (and b!6802223 ((_ is Concat!25468) (regTwo!33759 r!7292))) b!6803148))

(assert (= (and b!6802223 ((_ is Star!16623) (regTwo!33759 r!7292))) b!6803149))

(assert (= (and b!6802223 ((_ is Union!16623) (regTwo!33759 r!7292))) b!6803150))

(declare-fun condSetEmpty!46639 () Bool)

(assert (=> setNonEmpty!46633 (= condSetEmpty!46639 (= setRest!46633 ((as const (Array Context!12014 Bool)) false)))))

(declare-fun setRes!46639 () Bool)

(assert (=> setNonEmpty!46633 (= tp!1862291 setRes!46639)))

(declare-fun setIsEmpty!46639 () Bool)

(assert (=> setIsEmpty!46639 setRes!46639))

(declare-fun tp!1862398 () Bool)

(declare-fun setElem!46639 () Context!12014)

(declare-fun e!4105528 () Bool)

(declare-fun setNonEmpty!46639 () Bool)

(assert (=> setNonEmpty!46639 (= setRes!46639 (and tp!1862398 (inv!84804 setElem!46639) e!4105528))))

(declare-fun setRest!46639 () (InoxSet Context!12014))

(assert (=> setNonEmpty!46639 (= setRest!46633 ((_ map or) (store ((as const (Array Context!12014 Bool)) false) setElem!46639 true) setRest!46639))))

(declare-fun b!6803155 () Bool)

(declare-fun tp!1862399 () Bool)

(assert (=> b!6803155 (= e!4105528 tp!1862399)))

(assert (= (and setNonEmpty!46633 condSetEmpty!46639) setIsEmpty!46639))

(assert (= (and setNonEmpty!46633 (not condSetEmpty!46639)) setNonEmpty!46639))

(assert (= setNonEmpty!46639 b!6803155))

(declare-fun m!7549286 () Bool)

(assert (=> setNonEmpty!46639 m!7549286))

(declare-fun b!6803160 () Bool)

(declare-fun e!4105531 () Bool)

(declare-fun tp!1862404 () Bool)

(declare-fun tp!1862405 () Bool)

(assert (=> b!6803160 (= e!4105531 (and tp!1862404 tp!1862405))))

(assert (=> b!6802231 (= tp!1862290 e!4105531)))

(assert (= (and b!6802231 ((_ is Cons!66045) (exprs!6507 (h!72494 zl!343)))) b!6803160))

(declare-fun b!6803161 () Bool)

(declare-fun e!4105532 () Bool)

(declare-fun tp!1862406 () Bool)

(declare-fun tp!1862407 () Bool)

(assert (=> b!6803161 (= e!4105532 (and tp!1862406 tp!1862407))))

(assert (=> b!6802206 (= tp!1862289 e!4105532)))

(assert (= (and b!6802206 ((_ is Cons!66045) (exprs!6507 setElem!46633))) b!6803161))

(declare-fun b_lambda!256433 () Bool)

(assert (= b_lambda!256409 (or b!6802209 b_lambda!256433)))

(declare-fun bs!1813277 () Bool)

(declare-fun d!2137675 () Bool)

(assert (= bs!1813277 (and d!2137675 b!6802209)))

(assert (=> bs!1813277 (= (dynLambda!26375 lambda!383747 lt!2448407) (derivationStepZipperUp!1777 lt!2448407 (h!72492 s!2326)))))

(assert (=> bs!1813277 m!7548518))

(assert (=> d!2137503 d!2137675))

(declare-fun b_lambda!256435 () Bool)

(assert (= b_lambda!256407 (or b!6802233 b_lambda!256435)))

(declare-fun bs!1813278 () Bool)

(declare-fun d!2137677 () Bool)

(assert (= bs!1813278 (and d!2137677 b!6802233)))

(declare-fun lt!2448562 () Unit!159937)

(assert (=> bs!1813278 (= lt!2448562 (lemmaConcatPreservesForall!452 (exprs!6507 lt!2448407) lt!2448392 lambda!383749))))

(assert (=> bs!1813278 (= (dynLambda!26376 lambda!383748 lt!2448407) (Context!12015 (++!14793 (exprs!6507 lt!2448407) lt!2448392)))))

(declare-fun m!7549288 () Bool)

(assert (=> bs!1813278 m!7549288))

(declare-fun m!7549290 () Bool)

(assert (=> bs!1813278 m!7549290))

(assert (=> d!2137479 d!2137677))

(declare-fun b_lambda!256437 () Bool)

(assert (= b_lambda!256405 (or b!6802209 b_lambda!256437)))

(declare-fun bs!1813279 () Bool)

(declare-fun d!2137679 () Bool)

(assert (= bs!1813279 (and d!2137679 b!6802209)))

(assert (=> bs!1813279 (= (dynLambda!26375 lambda!383747 lt!2448400) (derivationStepZipperUp!1777 lt!2448400 (h!72492 s!2326)))))

(assert (=> bs!1813279 m!7548492))

(assert (=> d!2137477 d!2137679))

(declare-fun b_lambda!256439 () Bool)

(assert (= b_lambda!256411 (or b!6802209 b_lambda!256439)))

(declare-fun bs!1813280 () Bool)

(declare-fun d!2137681 () Bool)

(assert (= bs!1813280 (and d!2137681 b!6802209)))

(assert (=> bs!1813280 (= (dynLambda!26375 lambda!383747 lt!2448396) (derivationStepZipperUp!1777 lt!2448396 (h!72492 s!2326)))))

(assert (=> bs!1813280 m!7548508))

(assert (=> d!2137511 d!2137681))

(declare-fun b_lambda!256441 () Bool)

(assert (= b_lambda!256403 (or b!6802209 b_lambda!256441)))

(declare-fun bs!1813281 () Bool)

(declare-fun d!2137683 () Bool)

(assert (= bs!1813281 (and d!2137683 b!6802209)))

(assert (=> bs!1813281 (= (dynLambda!26375 lambda!383747 (h!72494 zl!343)) (derivationStepZipperUp!1777 (h!72494 zl!343) (h!72492 s!2326)))))

(assert (=> bs!1813281 m!7548528))

(assert (=> d!2137429 d!2137683))

(check-sat (not b!6802306) (not d!2137437) (not d!2137593) (not d!2137431) (not b!6802520) (not b!6803130) (not b!6802590) (not b!6803102) (not d!2137541) (not d!2137631) (not b!6802947) (not d!2137533) (not b!6803123) (not b!6802728) (not d!2137573) (not b!6803133) (not d!2137587) (not d!2137495) (not d!2137485) (not b!6802431) (not d!2137547) (not b_lambda!256439) (not bm!618138) (not b!6803097) (not b!6802945) (not b!6802914) (not d!2137543) (not b!6803144) (not b!6802843) (not b!6802724) (not b!6803098) (not b!6802673) (not d!2137473) (not d!2137557) (not b!6802616) (not d!2137639) tp_is_empty!42499 (not d!2137627) (not d!2137583) (not bm!618121) (not d!2137539) (not bm!618141) (not d!2137669) (not d!2137487) (not b!6803132) (not bm!618075) (not b!6802541) (not b!6802950) (not b!6802842) (not bm!618156) (not d!2137555) (not bm!618134) (not b!6803103) (not d!2137489) (not bs!1813280) (not b!6802949) (not d!2137501) (not b!6802620) (not b!6802867) (not b!6802594) (not b!6802725) (not b!6802848) (not b!6802844) (not b!6802632) (not b!6803145) (not b!6802940) (not d!2137477) (not b!6802631) (not d!2137527) (not b_lambda!256433) (not b!6803142) (not setNonEmpty!46639) (not bs!1813277) (not b!6802868) (not b!6803148) (not bm!618102) (not d!2137503) (not d!2137571) (not d!2137537) (not b!6802422) (not b!6803099) (not d!2137457) (not d!2137493) (not b!6802307) (not b!6802847) (not b!6802666) (not bm!618160) (not b!6802729) (not bs!1813278) (not b!6802434) (not b_lambda!256435) (not d!2137429) (not bm!618159) (not d!2137673) (not b!6802274) (not d!2137569) (not d!2137607) (not b!6802542) (not b_lambda!256441) (not b!6802849) (not d!2137625) (not b!6802610) (not d!2137481) (not b!6803121) (not b!6802358) (not bm!618135) (not b!6803150) (not bm!618157) (not b!6802630) (not b!6802935) (not b!6802997) (not bs!1813281) (not b!6803149) (not b!6802633) (not b!6802899) (not d!2137603) (not b!6802671) (not d!2137575) (not b!6803119) (not b!6803125) (not bs!1813279) (not d!2137497) (not bm!618158) (not b!6802426) (not b!6802674) (not bm!618125) (not b!6802599) (not b!6803160) (not b!6803146) (not b!6802730) (not d!2137629) (not b!6802360) (not d!2137461) (not b!6803134) (not b!6803100) (not b!6802672) (not d!2137479) (not d!2137441) (not d!2137425) (not b!6802270) (not b!6802731) (not bm!618124) (not d!2137589) (not b!6802944) (not b!6802516) (not b!6802432) (not b!6803155) (not d!2137511) (not bm!618080) (not b!6802912) (not b!6802670) (not b!6802757) (not b!6803161) (not bm!618081) (not b!6802510) (not b!6802595) (not b!6803141) (not bm!618142) (not b!6802667) (not b!6802996) (not bm!618128) (not b!6803107) (not b!6802726) (not b!6802427) (not b!6803124) (not bm!618143) (not b!6803120) (not d!2137643) (not b!6802939) (not b_lambda!256437) (not d!2137649))
(check-sat)
(get-model)

(assert (=> d!2137477 d!2137473))

(declare-fun d!2137917 () Bool)

(assert (=> d!2137917 (= (flatMap!2104 lt!2448394 lambda!383747) (dynLambda!26375 lambda!383747 lt!2448400))))

(assert (=> d!2137917 true))

(declare-fun _$13!4285 () Unit!159937)

(assert (=> d!2137917 (= (choose!50710 lt!2448394 lt!2448400 lambda!383747) _$13!4285)))

(declare-fun b_lambda!256459 () Bool)

(assert (=> (not b_lambda!256459) (not d!2137917)))

(declare-fun bs!1813510 () Bool)

(assert (= bs!1813510 d!2137917))

(assert (=> bs!1813510 m!7548490))

(assert (=> bs!1813510 m!7548726))

(assert (=> d!2137477 d!2137917))

(declare-fun d!2137929 () Bool)

(declare-fun c!1265264 () Bool)

(assert (=> d!2137929 (= c!1265264 ((_ is Nil!66045) lt!2448447))))

(declare-fun e!4105790 () (InoxSet Regex!16623))

(assert (=> d!2137929 (= (content!12903 lt!2448447) e!4105790)))

(declare-fun b!6803585 () Bool)

(assert (=> b!6803585 (= e!4105790 ((as const (Array Regex!16623 Bool)) false))))

(declare-fun b!6803586 () Bool)

(assert (=> b!6803586 (= e!4105790 ((_ map or) (store ((as const (Array Regex!16623 Bool)) false) (h!72493 lt!2448447) true) (content!12903 (t!379900 lt!2448447))))))

(assert (= (and d!2137929 c!1265264) b!6803585))

(assert (= (and d!2137929 (not c!1265264)) b!6803586))

(declare-fun m!7549858 () Bool)

(assert (=> b!6803586 m!7549858))

(declare-fun m!7549860 () Bool)

(assert (=> b!6803586 m!7549860))

(assert (=> d!2137481 d!2137929))

(declare-fun d!2137935 () Bool)

(declare-fun c!1265265 () Bool)

(assert (=> d!2137935 (= c!1265265 ((_ is Nil!66045) (Cons!66045 (reg!16952 r!7292) Nil!66045)))))

(declare-fun e!4105791 () (InoxSet Regex!16623))

(assert (=> d!2137935 (= (content!12903 (Cons!66045 (reg!16952 r!7292) Nil!66045)) e!4105791)))

(declare-fun b!6803587 () Bool)

(assert (=> b!6803587 (= e!4105791 ((as const (Array Regex!16623 Bool)) false))))

(declare-fun b!6803588 () Bool)

(assert (=> b!6803588 (= e!4105791 ((_ map or) (store ((as const (Array Regex!16623 Bool)) false) (h!72493 (Cons!66045 (reg!16952 r!7292) Nil!66045)) true) (content!12903 (t!379900 (Cons!66045 (reg!16952 r!7292) Nil!66045)))))))

(assert (= (and d!2137935 c!1265265) b!6803587))

(assert (= (and d!2137935 (not c!1265265)) b!6803588))

(declare-fun m!7549862 () Bool)

(assert (=> b!6803588 m!7549862))

(declare-fun m!7549864 () Bool)

(assert (=> b!6803588 m!7549864))

(assert (=> d!2137481 d!2137935))

(declare-fun d!2137937 () Bool)

(declare-fun c!1265266 () Bool)

(assert (=> d!2137937 (= c!1265266 ((_ is Nil!66045) lt!2448392))))

(declare-fun e!4105792 () (InoxSet Regex!16623))

(assert (=> d!2137937 (= (content!12903 lt!2448392) e!4105792)))

(declare-fun b!6803589 () Bool)

(assert (=> b!6803589 (= e!4105792 ((as const (Array Regex!16623 Bool)) false))))

(declare-fun b!6803590 () Bool)

(assert (=> b!6803590 (= e!4105792 ((_ map or) (store ((as const (Array Regex!16623 Bool)) false) (h!72493 lt!2448392) true) (content!12903 (t!379900 lt!2448392))))))

(assert (= (and d!2137937 c!1265266) b!6803589))

(assert (= (and d!2137937 (not c!1265266)) b!6803590))

(declare-fun m!7549866 () Bool)

(assert (=> b!6803590 m!7549866))

(declare-fun m!7549868 () Bool)

(assert (=> b!6803590 m!7549868))

(assert (=> d!2137481 d!2137937))

(declare-fun d!2137939 () Bool)

(assert (=> d!2137939 (= (isDefined!13213 lt!2448557) (not (isEmpty!38430 lt!2448557)))))

(declare-fun bs!1813528 () Bool)

(assert (= bs!1813528 d!2137939))

(declare-fun m!7549870 () Bool)

(assert (=> bs!1813528 m!7549870))

(assert (=> b!6803097 d!2137939))

(declare-fun b!6803591 () Bool)

(declare-fun e!4105795 () (InoxSet Context!12014))

(declare-fun call!618261 () (InoxSet Context!12014))

(assert (=> b!6803591 (= e!4105795 call!618261)))

(declare-fun b!6803592 () Bool)

(declare-fun e!4105794 () (InoxSet Context!12014))

(declare-fun e!4105797 () (InoxSet Context!12014))

(assert (=> b!6803592 (= e!4105794 e!4105797)))

(declare-fun c!1265270 () Bool)

(assert (=> b!6803592 (= c!1265270 ((_ is Union!16623) (ite c!1265001 (regOne!33759 r!7292) (ite c!1265000 (regTwo!33758 r!7292) (ite c!1264999 (regOne!33758 r!7292) (reg!16952 r!7292))))))))

(declare-fun bm!618252 () Bool)

(declare-fun call!618258 () (InoxSet Context!12014))

(assert (=> bm!618252 (= call!618261 call!618258)))

(declare-fun c!1265267 () Bool)

(declare-fun d!2137941 () Bool)

(assert (=> d!2137941 (= c!1265267 (and ((_ is ElementMatch!16623) (ite c!1265001 (regOne!33759 r!7292) (ite c!1265000 (regTwo!33758 r!7292) (ite c!1264999 (regOne!33758 r!7292) (reg!16952 r!7292))))) (= (c!1264881 (ite c!1265001 (regOne!33759 r!7292) (ite c!1265000 (regTwo!33758 r!7292) (ite c!1264999 (regOne!33758 r!7292) (reg!16952 r!7292))))) (h!72492 s!2326))))))

(assert (=> d!2137941 (= (derivationStepZipperDown!1851 (ite c!1265001 (regOne!33759 r!7292) (ite c!1265000 (regTwo!33758 r!7292) (ite c!1264999 (regOne!33758 r!7292) (reg!16952 r!7292)))) (ite (or c!1265001 c!1265000) (Context!12015 Nil!66045) (Context!12015 call!618141)) (h!72492 s!2326)) e!4105794)))

(declare-fun b!6803593 () Bool)

(declare-fun e!4105796 () (InoxSet Context!12014))

(declare-fun e!4105793 () (InoxSet Context!12014))

(assert (=> b!6803593 (= e!4105796 e!4105793)))

(declare-fun c!1265268 () Bool)

(assert (=> b!6803593 (= c!1265268 ((_ is Concat!25468) (ite c!1265001 (regOne!33759 r!7292) (ite c!1265000 (regTwo!33758 r!7292) (ite c!1264999 (regOne!33758 r!7292) (reg!16952 r!7292))))))))

(declare-fun b!6803594 () Bool)

(declare-fun call!618259 () (InoxSet Context!12014))

(declare-fun call!618260 () (InoxSet Context!12014))

(assert (=> b!6803594 (= e!4105797 ((_ map or) call!618259 call!618260))))

(declare-fun c!1265269 () Bool)

(declare-fun bm!618253 () Bool)

(declare-fun call!618262 () List!66169)

(assert (=> bm!618253 (= call!618262 ($colon$colon!2432 (exprs!6507 (ite (or c!1265001 c!1265000) (Context!12015 Nil!66045) (Context!12015 call!618141))) (ite (or c!1265269 c!1265268) (regTwo!33758 (ite c!1265001 (regOne!33759 r!7292) (ite c!1265000 (regTwo!33758 r!7292) (ite c!1264999 (regOne!33758 r!7292) (reg!16952 r!7292))))) (ite c!1265001 (regOne!33759 r!7292) (ite c!1265000 (regTwo!33758 r!7292) (ite c!1264999 (regOne!33758 r!7292) (reg!16952 r!7292)))))))))

(declare-fun b!6803595 () Bool)

(assert (=> b!6803595 (= e!4105793 call!618261)))

(declare-fun e!4105798 () Bool)

(declare-fun b!6803596 () Bool)

(assert (=> b!6803596 (= e!4105798 (nullable!6601 (regOne!33758 (ite c!1265001 (regOne!33759 r!7292) (ite c!1265000 (regTwo!33758 r!7292) (ite c!1264999 (regOne!33758 r!7292) (reg!16952 r!7292)))))))))

(declare-fun bm!618254 () Bool)

(assert (=> bm!618254 (= call!618258 call!618259)))

(declare-fun c!1265271 () Bool)

(declare-fun b!6803597 () Bool)

(assert (=> b!6803597 (= c!1265271 ((_ is Star!16623) (ite c!1265001 (regOne!33759 r!7292) (ite c!1265000 (regTwo!33758 r!7292) (ite c!1264999 (regOne!33758 r!7292) (reg!16952 r!7292))))))))

(assert (=> b!6803597 (= e!4105793 e!4105795)))

(declare-fun b!6803598 () Bool)

(assert (=> b!6803598 (= e!4105794 (store ((as const (Array Context!12014 Bool)) false) (ite (or c!1265001 c!1265000) (Context!12015 Nil!66045) (Context!12015 call!618141)) true))))

(declare-fun b!6803599 () Bool)

(assert (=> b!6803599 (= e!4105795 ((as const (Array Context!12014 Bool)) false))))

(declare-fun b!6803600 () Bool)

(assert (=> b!6803600 (= c!1265269 e!4105798)))

(declare-fun res!2780271 () Bool)

(assert (=> b!6803600 (=> (not res!2780271) (not e!4105798))))

(assert (=> b!6803600 (= res!2780271 ((_ is Concat!25468) (ite c!1265001 (regOne!33759 r!7292) (ite c!1265000 (regTwo!33758 r!7292) (ite c!1264999 (regOne!33758 r!7292) (reg!16952 r!7292))))))))

(assert (=> b!6803600 (= e!4105797 e!4105796)))

(declare-fun bm!618255 () Bool)

(declare-fun call!618257 () List!66169)

(assert (=> bm!618255 (= call!618257 call!618262)))

(declare-fun b!6803601 () Bool)

(assert (=> b!6803601 (= e!4105796 ((_ map or) call!618260 call!618258))))

(declare-fun bm!618256 () Bool)

(assert (=> bm!618256 (= call!618260 (derivationStepZipperDown!1851 (ite c!1265270 (regTwo!33759 (ite c!1265001 (regOne!33759 r!7292) (ite c!1265000 (regTwo!33758 r!7292) (ite c!1264999 (regOne!33758 r!7292) (reg!16952 r!7292))))) (regOne!33758 (ite c!1265001 (regOne!33759 r!7292) (ite c!1265000 (regTwo!33758 r!7292) (ite c!1264999 (regOne!33758 r!7292) (reg!16952 r!7292)))))) (ite c!1265270 (ite (or c!1265001 c!1265000) (Context!12015 Nil!66045) (Context!12015 call!618141)) (Context!12015 call!618262)) (h!72492 s!2326)))))

(declare-fun bm!618257 () Bool)

(assert (=> bm!618257 (= call!618259 (derivationStepZipperDown!1851 (ite c!1265270 (regOne!33759 (ite c!1265001 (regOne!33759 r!7292) (ite c!1265000 (regTwo!33758 r!7292) (ite c!1264999 (regOne!33758 r!7292) (reg!16952 r!7292))))) (ite c!1265269 (regTwo!33758 (ite c!1265001 (regOne!33759 r!7292) (ite c!1265000 (regTwo!33758 r!7292) (ite c!1264999 (regOne!33758 r!7292) (reg!16952 r!7292))))) (ite c!1265268 (regOne!33758 (ite c!1265001 (regOne!33759 r!7292) (ite c!1265000 (regTwo!33758 r!7292) (ite c!1264999 (regOne!33758 r!7292) (reg!16952 r!7292))))) (reg!16952 (ite c!1265001 (regOne!33759 r!7292) (ite c!1265000 (regTwo!33758 r!7292) (ite c!1264999 (regOne!33758 r!7292) (reg!16952 r!7292)))))))) (ite (or c!1265270 c!1265269) (ite (or c!1265001 c!1265000) (Context!12015 Nil!66045) (Context!12015 call!618141)) (Context!12015 call!618257)) (h!72492 s!2326)))))

(assert (= (and d!2137941 c!1265267) b!6803598))

(assert (= (and d!2137941 (not c!1265267)) b!6803592))

(assert (= (and b!6803592 c!1265270) b!6803594))

(assert (= (and b!6803592 (not c!1265270)) b!6803600))

(assert (= (and b!6803600 res!2780271) b!6803596))

(assert (= (and b!6803600 c!1265269) b!6803601))

(assert (= (and b!6803600 (not c!1265269)) b!6803593))

(assert (= (and b!6803593 c!1265268) b!6803595))

(assert (= (and b!6803593 (not c!1265268)) b!6803597))

(assert (= (and b!6803597 c!1265271) b!6803591))

(assert (= (and b!6803597 (not c!1265271)) b!6803599))

(assert (= (or b!6803595 b!6803591) bm!618255))

(assert (= (or b!6803595 b!6803591) bm!618252))

(assert (= (or b!6803601 bm!618255) bm!618253))

(assert (= (or b!6803601 bm!618252) bm!618254))

(assert (= (or b!6803594 b!6803601) bm!618256))

(assert (= (or b!6803594 bm!618254) bm!618257))

(declare-fun m!7549872 () Bool)

(assert (=> bm!618257 m!7549872))

(declare-fun m!7549874 () Bool)

(assert (=> b!6803596 m!7549874))

(declare-fun m!7549876 () Bool)

(assert (=> bm!618256 m!7549876))

(declare-fun m!7549878 () Bool)

(assert (=> bm!618253 m!7549878))

(declare-fun m!7549880 () Bool)

(assert (=> b!6803598 m!7549880))

(assert (=> bm!618142 d!2137941))

(declare-fun d!2137943 () Bool)

(assert (=> d!2137943 (= (isDefined!13213 lt!2448518) (not (isEmpty!38430 lt!2448518)))))

(declare-fun bs!1813542 () Bool)

(assert (= bs!1813542 d!2137943))

(declare-fun m!7549882 () Bool)

(assert (=> bs!1813542 m!7549882))

(assert (=> b!6802848 d!2137943))

(assert (=> d!2137627 d!2137625))

(assert (=> d!2137627 d!2137623))

(declare-fun d!2137945 () Bool)

(assert (=> d!2137945 (= (matchR!8806 r!7292 s!2326) (matchRSpec!3724 r!7292 s!2326))))

(assert (=> d!2137945 true))

(declare-fun _$88!5636 () Unit!159937)

(assert (=> d!2137945 (= (choose!50711 r!7292 s!2326) _$88!5636)))

(declare-fun bs!1813557 () Bool)

(assert (= bs!1813557 d!2137945))

(assert (=> bs!1813557 m!7548496))

(assert (=> bs!1813557 m!7548494))

(assert (=> d!2137627 d!2137945))

(assert (=> d!2137627 d!2137609))

(assert (=> bs!1813281 d!2137427))

(declare-fun d!2137947 () Bool)

(assert (=> d!2137947 (= (head!13655 s!2326) (h!72492 s!2326))))

(assert (=> b!6802426 d!2137947))

(declare-fun d!2137949 () Bool)

(declare-fun lambda!383885 () Int)

(declare-fun exists!2741 ((InoxSet Context!12014) Int) Bool)

(assert (=> d!2137949 (= (nullableZipper!2329 lt!2448394) (exists!2741 lt!2448394 lambda!383885))))

(declare-fun bs!1813569 () Bool)

(assert (= bs!1813569 d!2137949))

(declare-fun m!7549892 () Bool)

(assert (=> bs!1813569 m!7549892))

(assert (=> b!6802630 d!2137949))

(declare-fun d!2137955 () Bool)

(assert (=> d!2137955 (= (isEmpty!38428 (tail!12742 (unfocusZipperList!2044 zl!343))) ((_ is Nil!66045) (tail!12742 (unfocusZipperList!2044 zl!343))))))

(assert (=> b!6802731 d!2137955))

(declare-fun d!2137957 () Bool)

(assert (=> d!2137957 (= (tail!12742 (unfocusZipperList!2044 zl!343)) (t!379900 (unfocusZipperList!2044 zl!343)))))

(assert (=> b!6802731 d!2137957))

(declare-fun d!2137959 () Bool)

(assert (=> d!2137959 (= (isEmpty!38426 (_1!36901 lt!2448389)) ((_ is Nil!66044) (_1!36901 lt!2448389)))))

(assert (=> d!2137431 d!2137959))

(declare-fun bs!1813581 () Bool)

(declare-fun d!2137963 () Bool)

(assert (= bs!1813581 (and d!2137963 d!2137949)))

(declare-fun lambda!383886 () Int)

(assert (=> bs!1813581 (= lambda!383886 lambda!383885)))

(assert (=> d!2137963 (= (nullableZipper!2329 (derivationStepZipper!2567 lt!2448394 (h!72492 s!2326))) (exists!2741 (derivationStepZipper!2567 lt!2448394 (h!72492 s!2326)) lambda!383886))))

(declare-fun bs!1813582 () Bool)

(assert (= bs!1813582 d!2137963))

(assert (=> bs!1813582 m!7548480))

(declare-fun m!7549896 () Bool)

(assert (=> bs!1813582 m!7549896))

(assert (=> b!6802632 d!2137963))

(declare-fun d!2137965 () Bool)

(assert (=> d!2137965 true))

(declare-fun setRes!46650 () Bool)

(assert (=> d!2137965 setRes!46650))

(declare-fun condSetEmpty!46650 () Bool)

(declare-fun res!2780276 () (InoxSet Context!12014))

(assert (=> d!2137965 (= condSetEmpty!46650 (= res!2780276 ((as const (Array Context!12014 Bool)) false)))))

(assert (=> d!2137965 (= (choose!50708 z!1189 lambda!383747) res!2780276)))

(declare-fun setIsEmpty!46650 () Bool)

(assert (=> setIsEmpty!46650 setRes!46650))

(declare-fun e!4105808 () Bool)

(declare-fun setElem!46650 () Context!12014)

(declare-fun tp!1862435 () Bool)

(declare-fun setNonEmpty!46650 () Bool)

(assert (=> setNonEmpty!46650 (= setRes!46650 (and tp!1862435 (inv!84804 setElem!46650) e!4105808))))

(declare-fun setRest!46650 () (InoxSet Context!12014))

(assert (=> setNonEmpty!46650 (= res!2780276 ((_ map or) (store ((as const (Array Context!12014 Bool)) false) setElem!46650 true) setRest!46650))))

(declare-fun b!6803616 () Bool)

(declare-fun tp!1862434 () Bool)

(assert (=> b!6803616 (= e!4105808 tp!1862434)))

(assert (= (and d!2137965 condSetEmpty!46650) setIsEmpty!46650))

(assert (= (and d!2137965 (not condSetEmpty!46650)) setNonEmpty!46650))

(assert (= setNonEmpty!46650 b!6803616))

(declare-fun m!7549900 () Bool)

(assert (=> setNonEmpty!46650 m!7549900))

(assert (=> d!2137425 d!2137965))

(declare-fun d!2137971 () Bool)

(assert (=> d!2137971 true))

(assert (=> d!2137971 true))

(declare-fun res!2780279 () Bool)

(assert (=> d!2137971 (= (choose!50721 lambda!383745) res!2780279)))

(assert (=> d!2137587 d!2137971))

(assert (=> b!6802844 d!2137625))

(assert (=> bs!1813277 d!2137509))

(declare-fun d!2137973 () Bool)

(assert (=> d!2137973 (= (isEmpty!38426 (tail!12740 s!2326)) ((_ is Nil!66044) (tail!12740 s!2326)))))

(assert (=> b!6802422 d!2137973))

(declare-fun d!2137977 () Bool)

(assert (=> d!2137977 (= (tail!12740 s!2326) (t!379899 s!2326))))

(assert (=> b!6802422 d!2137977))

(declare-fun d!2137981 () Bool)

(assert (=> d!2137981 (= (Exists!3691 lambda!383822) (choose!50721 lambda!383822))))

(declare-fun bs!1813587 () Bool)

(assert (= bs!1813587 d!2137981))

(declare-fun m!7549914 () Bool)

(assert (=> bs!1813587 m!7549914))

(assert (=> d!2137583 d!2137981))

(declare-fun d!2137983 () Bool)

(assert (=> d!2137983 (= (Exists!3691 lambda!383825) (choose!50721 lambda!383825))))

(declare-fun bs!1813588 () Bool)

(assert (= bs!1813588 d!2137983))

(declare-fun m!7549916 () Bool)

(assert (=> bs!1813588 m!7549916))

(assert (=> d!2137583 d!2137983))

(declare-fun bs!1813604 () Bool)

(declare-fun d!2137985 () Bool)

(assert (= bs!1813604 (and d!2137985 d!2137575)))

(declare-fun lambda!383894 () Int)

(assert (=> bs!1813604 (= (= (Star!16623 (reg!16952 r!7292)) r!7292) (= lambda!383894 lambda!383810))))

(declare-fun bs!1813607 () Bool)

(assert (= bs!1813607 (and d!2137985 b!6802354)))

(assert (=> bs!1813607 (not (= lambda!383894 lambda!383761))))

(declare-fun bs!1813610 () Bool)

(assert (= bs!1813610 (and d!2137985 b!6802908)))

(assert (=> bs!1813610 (not (= lambda!383894 lambda!383836))))

(declare-fun bs!1813612 () Bool)

(assert (= bs!1813612 (and d!2137985 d!2137583)))

(assert (=> bs!1813612 (= lambda!383894 lambda!383822)))

(declare-fun bs!1813614 () Bool)

(assert (= bs!1813614 (and d!2137985 b!6802221)))

(assert (=> bs!1813614 (= (= (Star!16623 (reg!16952 r!7292)) r!7292) (= lambda!383894 lambda!383744))))

(declare-fun bs!1813615 () Bool)

(assert (= bs!1813615 (and d!2137985 b!6802906)))

(assert (=> bs!1813615 (not (= lambda!383894 lambda!383835))))

(assert (=> bs!1813614 (not (= lambda!383894 lambda!383746))))

(assert (=> bs!1813604 (not (= lambda!383894 lambda!383813))))

(declare-fun bs!1813616 () Bool)

(assert (= bs!1813616 (and d!2137985 b!6802352)))

(assert (=> bs!1813616 (not (= lambda!383894 lambda!383760))))

(assert (=> bs!1813614 (not (= lambda!383894 lambda!383745))))

(declare-fun bs!1813617 () Bool)

(assert (= bs!1813617 (and d!2137985 d!2137603)))

(assert (=> bs!1813617 (= (= (Star!16623 (reg!16952 r!7292)) r!7292) (= lambda!383894 lambda!383830))))

(assert (=> bs!1813612 (not (= lambda!383894 lambda!383825))))

(assert (=> d!2137985 true))

(assert (=> d!2137985 true))

(declare-fun lambda!383896 () Int)

(assert (=> bs!1813604 (not (= lambda!383896 lambda!383810))))

(assert (=> bs!1813607 (not (= lambda!383896 lambda!383761))))

(assert (=> bs!1813610 (not (= lambda!383896 lambda!383836))))

(assert (=> bs!1813612 (not (= lambda!383896 lambda!383822))))

(declare-fun bs!1813618 () Bool)

(assert (= bs!1813618 d!2137985))

(assert (=> bs!1813618 (not (= lambda!383896 lambda!383894))))

(assert (=> bs!1813614 (not (= lambda!383896 lambda!383744))))

(assert (=> bs!1813615 (= (= (Star!16623 (reg!16952 r!7292)) r!7292) (= lambda!383896 lambda!383835))))

(assert (=> bs!1813614 (not (= lambda!383896 lambda!383746))))

(assert (=> bs!1813604 (not (= lambda!383896 lambda!383813))))

(assert (=> bs!1813616 (= (and (= (reg!16952 r!7292) (reg!16952 lt!2448378)) (= (Star!16623 (reg!16952 r!7292)) lt!2448378)) (= lambda!383896 lambda!383760))))

(assert (=> bs!1813614 (= (= (Star!16623 (reg!16952 r!7292)) r!7292) (= lambda!383896 lambda!383745))))

(assert (=> bs!1813617 (not (= lambda!383896 lambda!383830))))

(assert (=> bs!1813612 (= lambda!383896 lambda!383825)))

(assert (=> d!2137985 true))

(assert (=> d!2137985 true))

(assert (=> d!2137985 (= (Exists!3691 lambda!383894) (Exists!3691 lambda!383896))))

(assert (=> d!2137985 true))

(declare-fun _$91!824 () Unit!159937)

(assert (=> d!2137985 (= (choose!50725 (reg!16952 r!7292) s!2326) _$91!824)))

(declare-fun m!7550016 () Bool)

(assert (=> bs!1813618 m!7550016))

(declare-fun m!7550020 () Bool)

(assert (=> bs!1813618 m!7550020))

(assert (=> d!2137583 d!2137985))

(declare-fun b!6803696 () Bool)

(declare-fun e!4105862 () Bool)

(declare-fun e!4105863 () Bool)

(assert (=> b!6803696 (= e!4105862 e!4105863)))

(declare-fun res!2780326 () Bool)

(assert (=> b!6803696 (=> (not res!2780326) (not e!4105863))))

(declare-fun call!618281 () Bool)

(assert (=> b!6803696 (= res!2780326 call!618281)))

(declare-fun b!6803697 () Bool)

(declare-fun e!4105859 () Bool)

(declare-fun e!4105861 () Bool)

(assert (=> b!6803697 (= e!4105859 e!4105861)))

(declare-fun c!1265296 () Bool)

(assert (=> b!6803697 (= c!1265296 ((_ is Union!16623) (reg!16952 r!7292)))))

(declare-fun d!2138039 () Bool)

(declare-fun res!2780330 () Bool)

(declare-fun e!4105865 () Bool)

(assert (=> d!2138039 (=> res!2780330 e!4105865)))

(assert (=> d!2138039 (= res!2780330 ((_ is ElementMatch!16623) (reg!16952 r!7292)))))

(assert (=> d!2138039 (= (validRegex!8359 (reg!16952 r!7292)) e!4105865)))

(declare-fun b!6803698 () Bool)

(declare-fun call!618283 () Bool)

(assert (=> b!6803698 (= e!4105863 call!618283)))

(declare-fun bm!618276 () Bool)

(declare-fun call!618282 () Bool)

(assert (=> bm!618276 (= call!618281 call!618282)))

(declare-fun b!6803699 () Bool)

(declare-fun e!4105860 () Bool)

(assert (=> b!6803699 (= e!4105860 call!618282)))

(declare-fun b!6803700 () Bool)

(assert (=> b!6803700 (= e!4105859 e!4105860)))

(declare-fun res!2780327 () Bool)

(assert (=> b!6803700 (= res!2780327 (not (nullable!6601 (reg!16952 (reg!16952 r!7292)))))))

(assert (=> b!6803700 (=> (not res!2780327) (not e!4105860))))

(declare-fun c!1265297 () Bool)

(declare-fun bm!618277 () Bool)

(assert (=> bm!618277 (= call!618282 (validRegex!8359 (ite c!1265297 (reg!16952 (reg!16952 r!7292)) (ite c!1265296 (regOne!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292))))))))

(declare-fun b!6803701 () Bool)

(declare-fun e!4105864 () Bool)

(assert (=> b!6803701 (= e!4105864 call!618283)))

(declare-fun b!6803702 () Bool)

(declare-fun res!2780329 () Bool)

(assert (=> b!6803702 (=> res!2780329 e!4105862)))

(assert (=> b!6803702 (= res!2780329 (not ((_ is Concat!25468) (reg!16952 r!7292))))))

(assert (=> b!6803702 (= e!4105861 e!4105862)))

(declare-fun b!6803703 () Bool)

(assert (=> b!6803703 (= e!4105865 e!4105859)))

(assert (=> b!6803703 (= c!1265297 ((_ is Star!16623) (reg!16952 r!7292)))))

(declare-fun bm!618278 () Bool)

(assert (=> bm!618278 (= call!618283 (validRegex!8359 (ite c!1265296 (regTwo!33759 (reg!16952 r!7292)) (regTwo!33758 (reg!16952 r!7292)))))))

(declare-fun b!6803704 () Bool)

(declare-fun res!2780328 () Bool)

(assert (=> b!6803704 (=> (not res!2780328) (not e!4105864))))

(assert (=> b!6803704 (= res!2780328 call!618281)))

(assert (=> b!6803704 (= e!4105861 e!4105864)))

(assert (= (and d!2138039 (not res!2780330)) b!6803703))

(assert (= (and b!6803703 c!1265297) b!6803700))

(assert (= (and b!6803703 (not c!1265297)) b!6803697))

(assert (= (and b!6803700 res!2780327) b!6803699))

(assert (= (and b!6803697 c!1265296) b!6803704))

(assert (= (and b!6803697 (not c!1265296)) b!6803702))

(assert (= (and b!6803704 res!2780328) b!6803701))

(assert (= (and b!6803702 (not res!2780329)) b!6803696))

(assert (= (and b!6803696 res!2780326) b!6803698))

(assert (= (or b!6803701 b!6803698) bm!618278))

(assert (= (or b!6803704 b!6803696) bm!618276))

(assert (= (or b!6803699 bm!618276) bm!618277))

(declare-fun m!7550026 () Bool)

(assert (=> b!6803700 m!7550026))

(declare-fun m!7550028 () Bool)

(assert (=> bm!618277 m!7550028))

(declare-fun m!7550030 () Bool)

(assert (=> bm!618278 m!7550030))

(assert (=> d!2137583 d!2138039))

(assert (=> d!2137511 d!2137495))

(declare-fun d!2138043 () Bool)

(assert (=> d!2138043 (= (flatMap!2104 lt!2448387 lambda!383747) (dynLambda!26375 lambda!383747 lt!2448396))))

(assert (=> d!2138043 true))

(declare-fun _$13!4287 () Unit!159937)

(assert (=> d!2138043 (= (choose!50710 lt!2448387 lt!2448396 lambda!383747) _$13!4287)))

(declare-fun b_lambda!256469 () Bool)

(assert (=> (not b_lambda!256469) (not d!2138043)))

(declare-fun bs!1813620 () Bool)

(assert (= bs!1813620 d!2138043))

(assert (=> bs!1813620 m!7548514))

(assert (=> bs!1813620 m!7548802))

(assert (=> d!2137511 d!2138043))

(assert (=> bm!618160 d!2137591))

(declare-fun d!2138045 () Bool)

(assert (=> d!2138045 (= ($colon$colon!2432 (exprs!6507 lt!2448396) (ite (or c!1264968 c!1264967) (regTwo!33758 (reg!16952 r!7292)) (reg!16952 r!7292))) (Cons!66045 (ite (or c!1264968 c!1264967) (regTwo!33758 (reg!16952 r!7292)) (reg!16952 r!7292)) (exprs!6507 lt!2448396)))))

(assert (=> bm!618121 d!2138045))

(declare-fun b!6803711 () Bool)

(declare-fun e!4105871 () (InoxSet Context!12014))

(declare-fun call!618288 () (InoxSet Context!12014))

(assert (=> b!6803711 (= e!4105871 call!618288)))

(declare-fun b!6803712 () Bool)

(declare-fun e!4105870 () (InoxSet Context!12014))

(declare-fun e!4105873 () (InoxSet Context!12014))

(assert (=> b!6803712 (= e!4105870 e!4105873)))

(declare-fun c!1265304 () Bool)

(assert (=> b!6803712 (= c!1265304 ((_ is Union!16623) (h!72493 (exprs!6507 (h!72494 zl!343)))))))

(declare-fun bm!618279 () Bool)

(declare-fun call!618285 () (InoxSet Context!12014))

(assert (=> bm!618279 (= call!618288 call!618285)))

(declare-fun d!2138047 () Bool)

(declare-fun c!1265301 () Bool)

(assert (=> d!2138047 (= c!1265301 (and ((_ is ElementMatch!16623) (h!72493 (exprs!6507 (h!72494 zl!343)))) (= (c!1264881 (h!72493 (exprs!6507 (h!72494 zl!343)))) (h!72492 s!2326))))))

(assert (=> d!2138047 (= (derivationStepZipperDown!1851 (h!72493 (exprs!6507 (h!72494 zl!343))) (Context!12015 (t!379900 (exprs!6507 (h!72494 zl!343)))) (h!72492 s!2326)) e!4105870)))

(declare-fun b!6803713 () Bool)

(declare-fun e!4105872 () (InoxSet Context!12014))

(declare-fun e!4105869 () (InoxSet Context!12014))

(assert (=> b!6803713 (= e!4105872 e!4105869)))

(declare-fun c!1265302 () Bool)

(assert (=> b!6803713 (= c!1265302 ((_ is Concat!25468) (h!72493 (exprs!6507 (h!72494 zl!343)))))))

(declare-fun b!6803714 () Bool)

(declare-fun call!618286 () (InoxSet Context!12014))

(declare-fun call!618287 () (InoxSet Context!12014))

(assert (=> b!6803714 (= e!4105873 ((_ map or) call!618286 call!618287))))

(declare-fun call!618289 () List!66169)

(declare-fun c!1265303 () Bool)

(declare-fun bm!618280 () Bool)

(assert (=> bm!618280 (= call!618289 ($colon$colon!2432 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 (h!72494 zl!343))))) (ite (or c!1265303 c!1265302) (regTwo!33758 (h!72493 (exprs!6507 (h!72494 zl!343)))) (h!72493 (exprs!6507 (h!72494 zl!343))))))))

(declare-fun b!6803715 () Bool)

(assert (=> b!6803715 (= e!4105869 call!618288)))

(declare-fun b!6803716 () Bool)

(declare-fun e!4105874 () Bool)

(assert (=> b!6803716 (= e!4105874 (nullable!6601 (regOne!33758 (h!72493 (exprs!6507 (h!72494 zl!343))))))))

(declare-fun bm!618281 () Bool)

(assert (=> bm!618281 (= call!618285 call!618286)))

(declare-fun b!6803717 () Bool)

(declare-fun c!1265305 () Bool)

(assert (=> b!6803717 (= c!1265305 ((_ is Star!16623) (h!72493 (exprs!6507 (h!72494 zl!343)))))))

(assert (=> b!6803717 (= e!4105869 e!4105871)))

(declare-fun b!6803718 () Bool)

(assert (=> b!6803718 (= e!4105870 (store ((as const (Array Context!12014 Bool)) false) (Context!12015 (t!379900 (exprs!6507 (h!72494 zl!343)))) true))))

(declare-fun b!6803719 () Bool)

(assert (=> b!6803719 (= e!4105871 ((as const (Array Context!12014 Bool)) false))))

(declare-fun b!6803720 () Bool)

(assert (=> b!6803720 (= c!1265303 e!4105874)))

(declare-fun res!2780331 () Bool)

(assert (=> b!6803720 (=> (not res!2780331) (not e!4105874))))

(assert (=> b!6803720 (= res!2780331 ((_ is Concat!25468) (h!72493 (exprs!6507 (h!72494 zl!343)))))))

(assert (=> b!6803720 (= e!4105873 e!4105872)))

(declare-fun bm!618282 () Bool)

(declare-fun call!618284 () List!66169)

(assert (=> bm!618282 (= call!618284 call!618289)))

(declare-fun b!6803723 () Bool)

(assert (=> b!6803723 (= e!4105872 ((_ map or) call!618287 call!618285))))

(declare-fun bm!618283 () Bool)

(assert (=> bm!618283 (= call!618287 (derivationStepZipperDown!1851 (ite c!1265304 (regTwo!33759 (h!72493 (exprs!6507 (h!72494 zl!343)))) (regOne!33758 (h!72493 (exprs!6507 (h!72494 zl!343))))) (ite c!1265304 (Context!12015 (t!379900 (exprs!6507 (h!72494 zl!343)))) (Context!12015 call!618289)) (h!72492 s!2326)))))

(declare-fun bm!618284 () Bool)

(assert (=> bm!618284 (= call!618286 (derivationStepZipperDown!1851 (ite c!1265304 (regOne!33759 (h!72493 (exprs!6507 (h!72494 zl!343)))) (ite c!1265303 (regTwo!33758 (h!72493 (exprs!6507 (h!72494 zl!343)))) (ite c!1265302 (regOne!33758 (h!72493 (exprs!6507 (h!72494 zl!343)))) (reg!16952 (h!72493 (exprs!6507 (h!72494 zl!343))))))) (ite (or c!1265304 c!1265303) (Context!12015 (t!379900 (exprs!6507 (h!72494 zl!343)))) (Context!12015 call!618284)) (h!72492 s!2326)))))

(assert (= (and d!2138047 c!1265301) b!6803718))

(assert (= (and d!2138047 (not c!1265301)) b!6803712))

(assert (= (and b!6803712 c!1265304) b!6803714))

(assert (= (and b!6803712 (not c!1265304)) b!6803720))

(assert (= (and b!6803720 res!2780331) b!6803716))

(assert (= (and b!6803720 c!1265303) b!6803723))

(assert (= (and b!6803720 (not c!1265303)) b!6803713))

(assert (= (and b!6803713 c!1265302) b!6803715))

(assert (= (and b!6803713 (not c!1265302)) b!6803717))

(assert (= (and b!6803717 c!1265305) b!6803711))

(assert (= (and b!6803717 (not c!1265305)) b!6803719))

(assert (= (or b!6803715 b!6803711) bm!618282))

(assert (= (or b!6803715 b!6803711) bm!618279))

(assert (= (or b!6803723 bm!618282) bm!618280))

(assert (= (or b!6803723 bm!618279) bm!618281))

(assert (= (or b!6803714 b!6803723) bm!618283))

(assert (= (or b!6803714 bm!618281) bm!618284))

(declare-fun m!7550046 () Bool)

(assert (=> bm!618284 m!7550046))

(declare-fun m!7550048 () Bool)

(assert (=> b!6803716 m!7550048))

(declare-fun m!7550050 () Bool)

(assert (=> bm!618283 m!7550050))

(declare-fun m!7550052 () Bool)

(assert (=> bm!618280 m!7550052))

(declare-fun m!7550054 () Bool)

(assert (=> b!6803718 m!7550054))

(assert (=> bm!618075 d!2138047))

(declare-fun d!2138057 () Bool)

(declare-fun nullableFct!2503 (Regex!16623) Bool)

(assert (=> d!2138057 (= (nullable!6601 (regOne!33758 r!7292)) (nullableFct!2503 (regOne!33758 r!7292)))))

(declare-fun bs!1813621 () Bool)

(assert (= bs!1813621 d!2138057))

(declare-fun m!7550062 () Bool)

(assert (=> bs!1813621 m!7550062))

(assert (=> b!6802610 d!2138057))

(declare-fun d!2138061 () Bool)

(assert (=> d!2138061 true))

(declare-fun setRes!46654 () Bool)

(assert (=> d!2138061 setRes!46654))

(declare-fun condSetEmpty!46654 () Bool)

(declare-fun res!2780348 () (InoxSet Context!12014))

(assert (=> d!2138061 (= condSetEmpty!46654 (= res!2780348 ((as const (Array Context!12014 Bool)) false)))))

(assert (=> d!2138061 (= (choose!50714 lt!2448380 lambda!383748) res!2780348)))

(declare-fun setIsEmpty!46654 () Bool)

(assert (=> setIsEmpty!46654 setRes!46654))

(declare-fun setNonEmpty!46654 () Bool)

(declare-fun setElem!46654 () Context!12014)

(declare-fun tp!1862442 () Bool)

(declare-fun e!4105901 () Bool)

(assert (=> setNonEmpty!46654 (= setRes!46654 (and tp!1862442 (inv!84804 setElem!46654) e!4105901))))

(declare-fun setRest!46654 () (InoxSet Context!12014))

(assert (=> setNonEmpty!46654 (= res!2780348 ((_ map or) (store ((as const (Array Context!12014 Bool)) false) setElem!46654 true) setRest!46654))))

(declare-fun b!6803758 () Bool)

(declare-fun tp!1862443 () Bool)

(assert (=> b!6803758 (= e!4105901 tp!1862443)))

(assert (= (and d!2138061 condSetEmpty!46654) setIsEmpty!46654))

(assert (= (and d!2138061 (not condSetEmpty!46654)) setNonEmpty!46654))

(assert (= setNonEmpty!46654 b!6803758))

(declare-fun m!7550070 () Bool)

(assert (=> setNonEmpty!46654 m!7550070))

(assert (=> d!2137485 d!2138061))

(declare-fun bs!1813638 () Bool)

(declare-fun b!6803761 () Bool)

(assert (= bs!1813638 (and b!6803761 b!6802354)))

(declare-fun lambda!383898 () Int)

(assert (=> bs!1813638 (not (= lambda!383898 lambda!383761))))

(declare-fun bs!1813641 () Bool)

(assert (= bs!1813641 (and b!6803761 b!6802908)))

(assert (=> bs!1813641 (not (= lambda!383898 lambda!383836))))

(declare-fun bs!1813644 () Bool)

(assert (= bs!1813644 (and b!6803761 d!2137583)))

(assert (=> bs!1813644 (not (= lambda!383898 lambda!383822))))

(declare-fun bs!1813647 () Bool)

(assert (= bs!1813647 (and b!6803761 d!2137985)))

(assert (=> bs!1813647 (not (= lambda!383898 lambda!383894))))

(declare-fun bs!1813649 () Bool)

(assert (= bs!1813649 (and b!6803761 b!6802221)))

(assert (=> bs!1813649 (not (= lambda!383898 lambda!383744))))

(declare-fun bs!1813652 () Bool)

(assert (= bs!1813652 (and b!6803761 b!6802906)))

(assert (=> bs!1813652 (= (and (= (reg!16952 (regTwo!33759 lt!2448378)) (reg!16952 r!7292)) (= (regTwo!33759 lt!2448378) r!7292)) (= lambda!383898 lambda!383835))))

(assert (=> bs!1813649 (not (= lambda!383898 lambda!383746))))

(declare-fun bs!1813657 () Bool)

(assert (= bs!1813657 (and b!6803761 d!2137575)))

(assert (=> bs!1813657 (not (= lambda!383898 lambda!383813))))

(declare-fun bs!1813660 () Bool)

(assert (= bs!1813660 (and b!6803761 b!6802352)))

(assert (=> bs!1813660 (= (and (= (reg!16952 (regTwo!33759 lt!2448378)) (reg!16952 lt!2448378)) (= (regTwo!33759 lt!2448378) lt!2448378)) (= lambda!383898 lambda!383760))))

(assert (=> bs!1813649 (= (and (= (reg!16952 (regTwo!33759 lt!2448378)) (reg!16952 r!7292)) (= (regTwo!33759 lt!2448378) r!7292)) (= lambda!383898 lambda!383745))))

(declare-fun bs!1813663 () Bool)

(assert (= bs!1813663 (and b!6803761 d!2137603)))

(assert (=> bs!1813663 (not (= lambda!383898 lambda!383830))))

(assert (=> bs!1813644 (= (and (= (reg!16952 (regTwo!33759 lt!2448378)) (reg!16952 r!7292)) (= (regTwo!33759 lt!2448378) (Star!16623 (reg!16952 r!7292)))) (= lambda!383898 lambda!383825))))

(assert (=> bs!1813647 (= (and (= (reg!16952 (regTwo!33759 lt!2448378)) (reg!16952 r!7292)) (= (regTwo!33759 lt!2448378) (Star!16623 (reg!16952 r!7292)))) (= lambda!383898 lambda!383896))))

(assert (=> bs!1813657 (not (= lambda!383898 lambda!383810))))

(assert (=> b!6803761 true))

(assert (=> b!6803761 true))

(declare-fun bs!1813665 () Bool)

(declare-fun b!6803763 () Bool)

(assert (= bs!1813665 (and b!6803763 b!6802354)))

(declare-fun lambda!383900 () Int)

(assert (=> bs!1813665 (= (and (= (regOne!33758 (regTwo!33759 lt!2448378)) (regOne!33758 lt!2448378)) (= (regTwo!33758 (regTwo!33759 lt!2448378)) (regTwo!33758 lt!2448378))) (= lambda!383900 lambda!383761))))

(declare-fun bs!1813666 () Bool)

(assert (= bs!1813666 (and b!6803763 b!6802908)))

(assert (=> bs!1813666 (= (and (= (regOne!33758 (regTwo!33759 lt!2448378)) (regOne!33758 r!7292)) (= (regTwo!33758 (regTwo!33759 lt!2448378)) (regTwo!33758 r!7292))) (= lambda!383900 lambda!383836))))

(declare-fun bs!1813667 () Bool)

(assert (= bs!1813667 (and b!6803763 d!2137583)))

(assert (=> bs!1813667 (not (= lambda!383900 lambda!383822))))

(declare-fun bs!1813668 () Bool)

(assert (= bs!1813668 (and b!6803763 d!2137985)))

(assert (=> bs!1813668 (not (= lambda!383900 lambda!383894))))

(declare-fun bs!1813669 () Bool)

(assert (= bs!1813669 (and b!6803763 b!6802221)))

(assert (=> bs!1813669 (not (= lambda!383900 lambda!383744))))

(declare-fun bs!1813670 () Bool)

(assert (= bs!1813670 (and b!6803763 b!6802906)))

(assert (=> bs!1813670 (not (= lambda!383900 lambda!383835))))

(declare-fun bs!1813671 () Bool)

(assert (= bs!1813671 (and b!6803763 d!2137575)))

(assert (=> bs!1813671 (= (and (= (regOne!33758 (regTwo!33759 lt!2448378)) (reg!16952 r!7292)) (= (regTwo!33758 (regTwo!33759 lt!2448378)) r!7292)) (= lambda!383900 lambda!383813))))

(declare-fun bs!1813672 () Bool)

(assert (= bs!1813672 (and b!6803763 b!6802352)))

(assert (=> bs!1813672 (not (= lambda!383900 lambda!383760))))

(assert (=> bs!1813669 (not (= lambda!383900 lambda!383745))))

(declare-fun bs!1813673 () Bool)

(assert (= bs!1813673 (and b!6803763 d!2137603)))

(assert (=> bs!1813673 (not (= lambda!383900 lambda!383830))))

(assert (=> bs!1813667 (not (= lambda!383900 lambda!383825))))

(assert (=> bs!1813668 (not (= lambda!383900 lambda!383896))))

(assert (=> bs!1813671 (not (= lambda!383900 lambda!383810))))

(assert (=> bs!1813669 (= (and (= (regOne!33758 (regTwo!33759 lt!2448378)) (reg!16952 r!7292)) (= (regTwo!33758 (regTwo!33759 lt!2448378)) r!7292)) (= lambda!383900 lambda!383746))))

(declare-fun bs!1813674 () Bool)

(assert (= bs!1813674 (and b!6803763 b!6803761)))

(assert (=> bs!1813674 (not (= lambda!383900 lambda!383898))))

(assert (=> b!6803763 true))

(assert (=> b!6803763 true))

(declare-fun b!6803759 () Bool)

(declare-fun e!4105907 () Bool)

(declare-fun call!618296 () Bool)

(assert (=> b!6803759 (= e!4105907 call!618296)))

(declare-fun b!6803760 () Bool)

(declare-fun e!4105905 () Bool)

(assert (=> b!6803760 (= e!4105907 e!4105905)))

(declare-fun res!2780351 () Bool)

(assert (=> b!6803760 (= res!2780351 (not ((_ is EmptyLang!16623) (regTwo!33759 lt!2448378))))))

(assert (=> b!6803760 (=> (not res!2780351) (not e!4105905))))

(declare-fun e!4105903 () Bool)

(declare-fun call!618297 () Bool)

(assert (=> b!6803761 (= e!4105903 call!618297)))

(declare-fun b!6803762 () Bool)

(declare-fun res!2780350 () Bool)

(assert (=> b!6803762 (=> res!2780350 e!4105903)))

(assert (=> b!6803762 (= res!2780350 call!618296)))

(declare-fun e!4105906 () Bool)

(assert (=> b!6803762 (= e!4105906 e!4105903)))

(declare-fun bm!618291 () Bool)

(assert (=> bm!618291 (= call!618296 (isEmpty!38426 s!2326))))

(declare-fun bm!618292 () Bool)

(declare-fun c!1265317 () Bool)

(assert (=> bm!618292 (= call!618297 (Exists!3691 (ite c!1265317 lambda!383898 lambda!383900)))))

(declare-fun d!2138065 () Bool)

(declare-fun c!1265318 () Bool)

(assert (=> d!2138065 (= c!1265318 ((_ is EmptyExpr!16623) (regTwo!33759 lt!2448378)))))

(assert (=> d!2138065 (= (matchRSpec!3724 (regTwo!33759 lt!2448378) s!2326) e!4105907)))

(assert (=> b!6803763 (= e!4105906 call!618297)))

(declare-fun b!6803764 () Bool)

(declare-fun c!1265316 () Bool)

(assert (=> b!6803764 (= c!1265316 ((_ is ElementMatch!16623) (regTwo!33759 lt!2448378)))))

(declare-fun e!4105908 () Bool)

(assert (=> b!6803764 (= e!4105905 e!4105908)))

(declare-fun b!6803765 () Bool)

(declare-fun e!4105902 () Bool)

(assert (=> b!6803765 (= e!4105902 e!4105906)))

(assert (=> b!6803765 (= c!1265317 ((_ is Star!16623) (regTwo!33759 lt!2448378)))))

(declare-fun b!6803766 () Bool)

(declare-fun c!1265319 () Bool)

(assert (=> b!6803766 (= c!1265319 ((_ is Union!16623) (regTwo!33759 lt!2448378)))))

(assert (=> b!6803766 (= e!4105908 e!4105902)))

(declare-fun b!6803767 () Bool)

(declare-fun e!4105904 () Bool)

(assert (=> b!6803767 (= e!4105902 e!4105904)))

(declare-fun res!2780349 () Bool)

(assert (=> b!6803767 (= res!2780349 (matchRSpec!3724 (regOne!33759 (regTwo!33759 lt!2448378)) s!2326))))

(assert (=> b!6803767 (=> res!2780349 e!4105904)))

(declare-fun b!6803768 () Bool)

(assert (=> b!6803768 (= e!4105908 (= s!2326 (Cons!66044 (c!1264881 (regTwo!33759 lt!2448378)) Nil!66044)))))

(declare-fun b!6803769 () Bool)

(assert (=> b!6803769 (= e!4105904 (matchRSpec!3724 (regTwo!33759 (regTwo!33759 lt!2448378)) s!2326))))

(assert (= (and d!2138065 c!1265318) b!6803759))

(assert (= (and d!2138065 (not c!1265318)) b!6803760))

(assert (= (and b!6803760 res!2780351) b!6803764))

(assert (= (and b!6803764 c!1265316) b!6803768))

(assert (= (and b!6803764 (not c!1265316)) b!6803766))

(assert (= (and b!6803766 c!1265319) b!6803767))

(assert (= (and b!6803766 (not c!1265319)) b!6803765))

(assert (= (and b!6803767 (not res!2780349)) b!6803769))

(assert (= (and b!6803765 c!1265317) b!6803762))

(assert (= (and b!6803765 (not c!1265317)) b!6803763))

(assert (= (and b!6803762 (not res!2780350)) b!6803761))

(assert (= (or b!6803761 b!6803763) bm!618292))

(assert (= (or b!6803759 b!6803762) bm!618291))

(assert (=> bm!618291 m!7548460))

(declare-fun m!7550108 () Bool)

(assert (=> bm!618292 m!7550108))

(declare-fun m!7550110 () Bool)

(assert (=> b!6803767 m!7550110))

(declare-fun m!7550112 () Bool)

(assert (=> b!6803769 m!7550112))

(assert (=> b!6802360 d!2138065))

(assert (=> b!6802947 d!2137947))

(declare-fun bs!1813675 () Bool)

(declare-fun d!2138077 () Bool)

(assert (= bs!1813675 (and d!2138077 d!2137569)))

(declare-fun lambda!383901 () Int)

(assert (=> bs!1813675 (= lambda!383901 lambda!383802)))

(declare-fun bs!1813676 () Bool)

(assert (= bs!1813676 (and d!2138077 d!2137669)))

(assert (=> bs!1813676 (= lambda!383901 lambda!383843)))

(declare-fun bs!1813677 () Bool)

(assert (= bs!1813677 (and d!2138077 b!6802233)))

(assert (=> bs!1813677 (= lambda!383901 lambda!383749)))

(declare-fun bs!1813678 () Bool)

(assert (= bs!1813678 (and d!2138077 d!2137533)))

(assert (=> bs!1813678 (= lambda!383901 lambda!383782)))

(declare-fun bs!1813679 () Bool)

(assert (= bs!1813679 (and d!2138077 d!2137537)))

(assert (=> bs!1813679 (= lambda!383901 lambda!383783)))

(declare-fun bs!1813680 () Bool)

(assert (= bs!1813680 (and d!2138077 d!2137547)))

(assert (=> bs!1813680 (= lambda!383901 lambda!383787)))

(declare-fun bs!1813681 () Bool)

(assert (= bs!1813681 (and d!2138077 d!2137557)))

(assert (=> bs!1813681 (= lambda!383901 lambda!383797)))

(assert (=> d!2138077 (= (inv!84804 setElem!46639) (forall!15815 (exprs!6507 setElem!46639) lambda!383901))))

(declare-fun bs!1813682 () Bool)

(assert (= bs!1813682 d!2138077))

(declare-fun m!7550114 () Bool)

(assert (=> bs!1813682 m!7550114))

(assert (=> setNonEmpty!46639 d!2138077))

(declare-fun d!2138079 () Bool)

(assert (=> d!2138079 (= (Exists!3691 (ite c!1265083 lambda!383835 lambda!383836)) (choose!50721 (ite c!1265083 lambda!383835 lambda!383836)))))

(declare-fun bs!1813683 () Bool)

(assert (= bs!1813683 d!2138079))

(declare-fun m!7550116 () Bool)

(assert (=> bs!1813683 m!7550116))

(assert (=> bm!618159 d!2138079))

(assert (=> bm!618080 d!2137591))

(declare-fun b!6803786 () Bool)

(declare-fun res!2780360 () Bool)

(declare-fun e!4105923 () Bool)

(assert (=> b!6803786 (=> res!2780360 e!4105923)))

(assert (=> b!6803786 (= res!2780360 (not (isEmpty!38426 (tail!12740 (tail!12740 s!2326)))))))

(declare-fun b!6803787 () Bool)

(declare-fun e!4105922 () Bool)

(declare-fun e!4105921 () Bool)

(assert (=> b!6803787 (= e!4105922 e!4105921)))

(declare-fun res!2780363 () Bool)

(assert (=> b!6803787 (=> (not res!2780363) (not e!4105921))))

(declare-fun lt!2448607 () Bool)

(assert (=> b!6803787 (= res!2780363 (not lt!2448607))))

(declare-fun b!6803789 () Bool)

(declare-fun e!4105917 () Bool)

(declare-fun e!4105919 () Bool)

(assert (=> b!6803789 (= e!4105917 e!4105919)))

(declare-fun c!1265324 () Bool)

(assert (=> b!6803789 (= c!1265324 ((_ is EmptyLang!16623) (derivativeStep!5286 r!7292 (head!13655 s!2326))))))

(declare-fun b!6803790 () Bool)

(declare-fun e!4105920 () Bool)

(assert (=> b!6803790 (= e!4105920 (= (head!13655 (tail!12740 s!2326)) (c!1264881 (derivativeStep!5286 r!7292 (head!13655 s!2326)))))))

(declare-fun b!6803791 () Bool)

(declare-fun e!4105918 () Bool)

(assert (=> b!6803791 (= e!4105918 (matchR!8806 (derivativeStep!5286 (derivativeStep!5286 r!7292 (head!13655 s!2326)) (head!13655 (tail!12740 s!2326))) (tail!12740 (tail!12740 s!2326))))))

(declare-fun b!6803792 () Bool)

(assert (=> b!6803792 (= e!4105919 (not lt!2448607))))

(declare-fun b!6803793 () Bool)

(assert (=> b!6803793 (= e!4105921 e!4105923)))

(declare-fun res!2780364 () Bool)

(assert (=> b!6803793 (=> res!2780364 e!4105923)))

(declare-fun call!618299 () Bool)

(assert (=> b!6803793 (= res!2780364 call!618299)))

(declare-fun b!6803794 () Bool)

(assert (=> b!6803794 (= e!4105917 (= lt!2448607 call!618299))))

(declare-fun bm!618294 () Bool)

(assert (=> bm!618294 (= call!618299 (isEmpty!38426 (tail!12740 s!2326)))))

(declare-fun b!6803795 () Bool)

(assert (=> b!6803795 (= e!4105918 (nullable!6601 (derivativeStep!5286 r!7292 (head!13655 s!2326))))))

(declare-fun b!6803788 () Bool)

(declare-fun res!2780367 () Bool)

(assert (=> b!6803788 (=> (not res!2780367) (not e!4105920))))

(assert (=> b!6803788 (= res!2780367 (not call!618299))))

(declare-fun d!2138081 () Bool)

(assert (=> d!2138081 e!4105917))

(declare-fun c!1265325 () Bool)

(assert (=> d!2138081 (= c!1265325 ((_ is EmptyExpr!16623) (derivativeStep!5286 r!7292 (head!13655 s!2326))))))

(assert (=> d!2138081 (= lt!2448607 e!4105918)))

(declare-fun c!1265326 () Bool)

(assert (=> d!2138081 (= c!1265326 (isEmpty!38426 (tail!12740 s!2326)))))

(assert (=> d!2138081 (validRegex!8359 (derivativeStep!5286 r!7292 (head!13655 s!2326)))))

(assert (=> d!2138081 (= (matchR!8806 (derivativeStep!5286 r!7292 (head!13655 s!2326)) (tail!12740 s!2326)) lt!2448607)))

(declare-fun b!6803796 () Bool)

(declare-fun res!2780365 () Bool)

(assert (=> b!6803796 (=> (not res!2780365) (not e!4105920))))

(assert (=> b!6803796 (= res!2780365 (isEmpty!38426 (tail!12740 (tail!12740 s!2326))))))

(declare-fun b!6803797 () Bool)

(declare-fun res!2780366 () Bool)

(assert (=> b!6803797 (=> res!2780366 e!4105922)))

(assert (=> b!6803797 (= res!2780366 (not ((_ is ElementMatch!16623) (derivativeStep!5286 r!7292 (head!13655 s!2326)))))))

(assert (=> b!6803797 (= e!4105919 e!4105922)))

(declare-fun b!6803798 () Bool)

(assert (=> b!6803798 (= e!4105923 (not (= (head!13655 (tail!12740 s!2326)) (c!1264881 (derivativeStep!5286 r!7292 (head!13655 s!2326))))))))

(declare-fun b!6803799 () Bool)

(declare-fun res!2780362 () Bool)

(assert (=> b!6803799 (=> res!2780362 e!4105922)))

(assert (=> b!6803799 (= res!2780362 e!4105920)))

(declare-fun res!2780361 () Bool)

(assert (=> b!6803799 (=> (not res!2780361) (not e!4105920))))

(assert (=> b!6803799 (= res!2780361 lt!2448607)))

(assert (= (and d!2138081 c!1265326) b!6803795))

(assert (= (and d!2138081 (not c!1265326)) b!6803791))

(assert (= (and d!2138081 c!1265325) b!6803794))

(assert (= (and d!2138081 (not c!1265325)) b!6803789))

(assert (= (and b!6803789 c!1265324) b!6803792))

(assert (= (and b!6803789 (not c!1265324)) b!6803797))

(assert (= (and b!6803797 (not res!2780366)) b!6803799))

(assert (= (and b!6803799 res!2780361) b!6803788))

(assert (= (and b!6803788 res!2780367) b!6803796))

(assert (= (and b!6803796 res!2780365) b!6803790))

(assert (= (and b!6803799 (not res!2780362)) b!6803787))

(assert (= (and b!6803787 res!2780363) b!6803793))

(assert (= (and b!6803793 (not res!2780364)) b!6803786))

(assert (= (and b!6803786 (not res!2780360)) b!6803798))

(assert (= (or b!6803794 b!6803788 b!6803793) bm!618294))

(assert (=> b!6803790 m!7548680))

(declare-fun m!7550118 () Bool)

(assert (=> b!6803790 m!7550118))

(assert (=> b!6803786 m!7548680))

(declare-fun m!7550120 () Bool)

(assert (=> b!6803786 m!7550120))

(assert (=> b!6803786 m!7550120))

(declare-fun m!7550122 () Bool)

(assert (=> b!6803786 m!7550122))

(assert (=> b!6803798 m!7548680))

(assert (=> b!6803798 m!7550118))

(assert (=> b!6803791 m!7548680))

(assert (=> b!6803791 m!7550118))

(assert (=> b!6803791 m!7549138))

(assert (=> b!6803791 m!7550118))

(declare-fun m!7550124 () Bool)

(assert (=> b!6803791 m!7550124))

(assert (=> b!6803791 m!7548680))

(assert (=> b!6803791 m!7550120))

(assert (=> b!6803791 m!7550124))

(assert (=> b!6803791 m!7550120))

(declare-fun m!7550126 () Bool)

(assert (=> b!6803791 m!7550126))

(assert (=> bm!618294 m!7548680))

(assert (=> bm!618294 m!7548682))

(assert (=> d!2138081 m!7548680))

(assert (=> d!2138081 m!7548682))

(assert (=> d!2138081 m!7549138))

(declare-fun m!7550128 () Bool)

(assert (=> d!2138081 m!7550128))

(assert (=> b!6803795 m!7549138))

(declare-fun m!7550130 () Bool)

(assert (=> b!6803795 m!7550130))

(assert (=> b!6803796 m!7548680))

(assert (=> b!6803796 m!7550120))

(assert (=> b!6803796 m!7550120))

(assert (=> b!6803796 m!7550122))

(assert (=> b!6802940 d!2138081))

(declare-fun d!2138083 () Bool)

(declare-fun lt!2448614 () Regex!16623)

(assert (=> d!2138083 (validRegex!8359 lt!2448614)))

(declare-fun e!4105959 () Regex!16623)

(assert (=> d!2138083 (= lt!2448614 e!4105959)))

(declare-fun c!1265359 () Bool)

(assert (=> d!2138083 (= c!1265359 (or ((_ is EmptyExpr!16623) r!7292) ((_ is EmptyLang!16623) r!7292)))))

(assert (=> d!2138083 (validRegex!8359 r!7292)))

(assert (=> d!2138083 (= (derivativeStep!5286 r!7292 (head!13655 s!2326)) lt!2448614)))

(declare-fun b!6803866 () Bool)

(declare-fun c!1265356 () Bool)

(assert (=> b!6803866 (= c!1265356 ((_ is Union!16623) r!7292))))

(declare-fun e!4105957 () Regex!16623)

(declare-fun e!4105960 () Regex!16623)

(assert (=> b!6803866 (= e!4105957 e!4105960)))

(declare-fun bm!618316 () Bool)

(declare-fun call!618323 () Regex!16623)

(declare-fun call!618321 () Regex!16623)

(assert (=> bm!618316 (= call!618323 call!618321)))

(declare-fun b!6803867 () Bool)

(declare-fun e!4105961 () Regex!16623)

(assert (=> b!6803867 (= e!4105961 (Concat!25468 call!618321 r!7292))))

(declare-fun b!6803868 () Bool)

(declare-fun e!4105958 () Regex!16623)

(declare-fun call!618324 () Regex!16623)

(assert (=> b!6803868 (= e!4105958 (Union!16623 (Concat!25468 call!618324 (regTwo!33758 r!7292)) call!618323))))

(declare-fun b!6803869 () Bool)

(assert (=> b!6803869 (= e!4105959 e!4105957)))

(declare-fun c!1265357 () Bool)

(assert (=> b!6803869 (= c!1265357 ((_ is ElementMatch!16623) r!7292))))

(declare-fun b!6803870 () Bool)

(assert (=> b!6803870 (= e!4105958 (Union!16623 (Concat!25468 call!618323 (regTwo!33758 r!7292)) EmptyLang!16623))))

(declare-fun b!6803871 () Bool)

(assert (=> b!6803871 (= e!4105960 e!4105961)))

(declare-fun c!1265358 () Bool)

(assert (=> b!6803871 (= c!1265358 ((_ is Star!16623) r!7292))))

(declare-fun b!6803872 () Bool)

(assert (=> b!6803872 (= e!4105957 (ite (= (head!13655 s!2326) (c!1264881 r!7292)) EmptyExpr!16623 EmptyLang!16623))))

(declare-fun b!6803873 () Bool)

(declare-fun c!1265360 () Bool)

(assert (=> b!6803873 (= c!1265360 (nullable!6601 (regOne!33758 r!7292)))))

(assert (=> b!6803873 (= e!4105961 e!4105958)))

(declare-fun bm!618317 () Bool)

(declare-fun call!618322 () Regex!16623)

(assert (=> bm!618317 (= call!618321 call!618322)))

(declare-fun b!6803874 () Bool)

(assert (=> b!6803874 (= e!4105959 EmptyLang!16623)))

(declare-fun bm!618318 () Bool)

(assert (=> bm!618318 (= call!618324 (derivativeStep!5286 (ite c!1265356 (regOne!33759 r!7292) (regOne!33758 r!7292)) (head!13655 s!2326)))))

(declare-fun b!6803875 () Bool)

(assert (=> b!6803875 (= e!4105960 (Union!16623 call!618324 call!618322))))

(declare-fun bm!618319 () Bool)

(assert (=> bm!618319 (= call!618322 (derivativeStep!5286 (ite c!1265356 (regTwo!33759 r!7292) (ite c!1265358 (reg!16952 r!7292) (ite c!1265360 (regTwo!33758 r!7292) (regOne!33758 r!7292)))) (head!13655 s!2326)))))

(assert (= (and d!2138083 c!1265359) b!6803874))

(assert (= (and d!2138083 (not c!1265359)) b!6803869))

(assert (= (and b!6803869 c!1265357) b!6803872))

(assert (= (and b!6803869 (not c!1265357)) b!6803866))

(assert (= (and b!6803866 c!1265356) b!6803875))

(assert (= (and b!6803866 (not c!1265356)) b!6803871))

(assert (= (and b!6803871 c!1265358) b!6803867))

(assert (= (and b!6803871 (not c!1265358)) b!6803873))

(assert (= (and b!6803873 c!1265360) b!6803868))

(assert (= (and b!6803873 (not c!1265360)) b!6803870))

(assert (= (or b!6803868 b!6803870) bm!618316))

(assert (= (or b!6803867 bm!618316) bm!618317))

(assert (= (or b!6803875 bm!618317) bm!618319))

(assert (= (or b!6803875 b!6803868) bm!618318))

(declare-fun m!7550166 () Bool)

(assert (=> d!2138083 m!7550166))

(assert (=> d!2138083 m!7548542))

(assert (=> b!6803873 m!7548822))

(assert (=> bm!618318 m!7548678))

(declare-fun m!7550172 () Bool)

(assert (=> bm!618318 m!7550172))

(assert (=> bm!618319 m!7548678))

(declare-fun m!7550174 () Bool)

(assert (=> bm!618319 m!7550174))

(assert (=> b!6802940 d!2138083))

(assert (=> b!6802940 d!2137947))

(assert (=> b!6802940 d!2137977))

(declare-fun d!2138103 () Bool)

(assert (=> d!2138103 (= (head!13657 (exprs!6507 (h!72494 zl!343))) (h!72493 (exprs!6507 (h!72494 zl!343))))))

(assert (=> b!6802672 d!2138103))

(declare-fun d!2138107 () Bool)

(assert (=> d!2138107 (= (nullable!6601 (h!72493 (exprs!6507 lt!2448400))) (nullableFct!2503 (h!72493 (exprs!6507 lt!2448400))))))

(declare-fun bs!1813695 () Bool)

(assert (= bs!1813695 d!2138107))

(declare-fun m!7550180 () Bool)

(assert (=> bs!1813695 m!7550180))

(assert (=> b!6802516 d!2138107))

(declare-fun d!2138109 () Bool)

(assert (=> d!2138109 (= (nullable!6601 (h!72493 (exprs!6507 (h!72494 zl!343)))) (nullableFct!2503 (h!72493 (exprs!6507 (h!72494 zl!343)))))))

(declare-fun bs!1813696 () Bool)

(assert (= bs!1813696 d!2138109))

(declare-fun m!7550186 () Bool)

(assert (=> bs!1813696 m!7550186))

(assert (=> b!6802270 d!2138109))

(assert (=> d!2137539 d!2137591))

(declare-fun d!2138111 () Bool)

(assert (=> d!2138111 (= (isEmpty!38428 (t!379900 (unfocusZipperList!2044 zl!343))) ((_ is Nil!66045) (t!379900 (unfocusZipperList!2044 zl!343))))))

(assert (=> b!6802728 d!2138111))

(declare-fun d!2138113 () Bool)

(declare-fun c!1265368 () Bool)

(assert (=> d!2138113 (= c!1265368 (isEmpty!38426 (_1!36901 (get!23004 lt!2448557))))))

(declare-fun e!4105970 () Bool)

(assert (=> d!2138113 (= (matchZipper!2609 lt!2448380 (_1!36901 (get!23004 lt!2448557))) e!4105970)))

(declare-fun b!6803891 () Bool)

(assert (=> b!6803891 (= e!4105970 (nullableZipper!2329 lt!2448380))))

(declare-fun b!6803892 () Bool)

(assert (=> b!6803892 (= e!4105970 (matchZipper!2609 (derivationStepZipper!2567 lt!2448380 (head!13655 (_1!36901 (get!23004 lt!2448557)))) (tail!12740 (_1!36901 (get!23004 lt!2448557)))))))

(assert (= (and d!2138113 c!1265368) b!6803891))

(assert (= (and d!2138113 (not c!1265368)) b!6803892))

(declare-fun m!7550188 () Bool)

(assert (=> d!2138113 m!7550188))

(assert (=> b!6803891 m!7548604))

(declare-fun m!7550190 () Bool)

(assert (=> b!6803892 m!7550190))

(assert (=> b!6803892 m!7550190))

(declare-fun m!7550192 () Bool)

(assert (=> b!6803892 m!7550192))

(declare-fun m!7550194 () Bool)

(assert (=> b!6803892 m!7550194))

(assert (=> b!6803892 m!7550192))

(assert (=> b!6803892 m!7550194))

(declare-fun m!7550196 () Bool)

(assert (=> b!6803892 m!7550196))

(assert (=> b!6803098 d!2138113))

(declare-fun d!2138115 () Bool)

(assert (=> d!2138115 (= (get!23004 lt!2448557) (v!52715 lt!2448557))))

(assert (=> b!6803098 d!2138115))

(declare-fun d!2138117 () Bool)

(assert (=> d!2138117 (= (isEmpty!38430 lt!2448385) (not ((_ is Some!16509) lt!2448385)))))

(assert (=> d!2137639 d!2138117))

(declare-fun b!6803917 () Bool)

(declare-fun e!4105979 () (InoxSet Context!12014))

(declare-fun call!618334 () (InoxSet Context!12014))

(assert (=> b!6803917 (= e!4105979 call!618334)))

(declare-fun b!6803918 () Bool)

(declare-fun e!4105978 () (InoxSet Context!12014))

(declare-fun e!4105981 () (InoxSet Context!12014))

(assert (=> b!6803918 (= e!4105978 e!4105981)))

(declare-fun c!1265372 () Bool)

(assert (=> b!6803918 (= c!1265372 ((_ is Union!16623) (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))))))

(declare-fun bm!618325 () Bool)

(declare-fun call!618331 () (InoxSet Context!12014))

(assert (=> bm!618325 (= call!618334 call!618331)))

(declare-fun d!2138119 () Bool)

(declare-fun c!1265369 () Bool)

(assert (=> d!2138119 (= c!1265369 (and ((_ is ElementMatch!16623) (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))) (= (c!1264881 (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))) (h!72492 s!2326))))))

(assert (=> d!2138119 (= (derivationStepZipperDown!1851 (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045)))) (Context!12015 (t!379900 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))) (h!72492 s!2326)) e!4105978)))

(declare-fun b!6803919 () Bool)

(declare-fun e!4105980 () (InoxSet Context!12014))

(declare-fun e!4105976 () (InoxSet Context!12014))

(assert (=> b!6803919 (= e!4105980 e!4105976)))

(declare-fun c!1265370 () Bool)

(assert (=> b!6803919 (= c!1265370 ((_ is Concat!25468) (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))))))

(declare-fun b!6803920 () Bool)

(declare-fun call!618332 () (InoxSet Context!12014))

(declare-fun call!618333 () (InoxSet Context!12014))

(assert (=> b!6803920 (= e!4105981 ((_ map or) call!618332 call!618333))))

(declare-fun bm!618326 () Bool)

(declare-fun c!1265371 () Bool)

(declare-fun call!618335 () List!66169)

(assert (=> bm!618326 (= call!618335 ($colon$colon!2432 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045)))))) (ite (or c!1265371 c!1265370) (regTwo!33758 (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))) (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045)))))))))

(declare-fun b!6803921 () Bool)

(assert (=> b!6803921 (= e!4105976 call!618334)))

(declare-fun b!6803922 () Bool)

(declare-fun e!4105982 () Bool)

(assert (=> b!6803922 (= e!4105982 (nullable!6601 (regOne!33758 (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045)))))))))

(declare-fun bm!618327 () Bool)

(assert (=> bm!618327 (= call!618331 call!618332)))

(declare-fun b!6803923 () Bool)

(declare-fun c!1265373 () Bool)

(assert (=> b!6803923 (= c!1265373 ((_ is Star!16623) (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))))))

(assert (=> b!6803923 (= e!4105976 e!4105979)))

(declare-fun b!6803924 () Bool)

(assert (=> b!6803924 (= e!4105978 (store ((as const (Array Context!12014 Bool)) false) (Context!12015 (t!379900 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))) true))))

(declare-fun b!6803925 () Bool)

(assert (=> b!6803925 (= e!4105979 ((as const (Array Context!12014 Bool)) false))))

(declare-fun b!6803926 () Bool)

(assert (=> b!6803926 (= c!1265371 e!4105982)))

(declare-fun res!2780377 () Bool)

(assert (=> b!6803926 (=> (not res!2780377) (not e!4105982))))

(assert (=> b!6803926 (= res!2780377 ((_ is Concat!25468) (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))))))

(assert (=> b!6803926 (= e!4105981 e!4105980)))

(declare-fun bm!618328 () Bool)

(declare-fun call!618330 () List!66169)

(assert (=> bm!618328 (= call!618330 call!618335)))

(declare-fun b!6803927 () Bool)

(assert (=> b!6803927 (= e!4105980 ((_ map or) call!618333 call!618331))))

(declare-fun bm!618329 () Bool)

(assert (=> bm!618329 (= call!618333 (derivationStepZipperDown!1851 (ite c!1265372 (regTwo!33759 (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))) (regOne!33758 (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045)))))) (ite c!1265372 (Context!12015 (t!379900 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))) (Context!12015 call!618335)) (h!72492 s!2326)))))

(declare-fun bm!618330 () Bool)

(assert (=> bm!618330 (= call!618332 (derivationStepZipperDown!1851 (ite c!1265372 (regOne!33759 (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))) (ite c!1265371 (regTwo!33758 (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))) (ite c!1265370 (regOne!33758 (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))) (reg!16952 (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045)))))))) (ite (or c!1265372 c!1265371) (Context!12015 (t!379900 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))) (Context!12015 call!618330)) (h!72492 s!2326)))))

(assert (= (and d!2138119 c!1265369) b!6803924))

(assert (= (and d!2138119 (not c!1265369)) b!6803918))

(assert (= (and b!6803918 c!1265372) b!6803920))

(assert (= (and b!6803918 (not c!1265372)) b!6803926))

(assert (= (and b!6803926 res!2780377) b!6803922))

(assert (= (and b!6803926 c!1265371) b!6803927))

(assert (= (and b!6803926 (not c!1265371)) b!6803919))

(assert (= (and b!6803919 c!1265370) b!6803921))

(assert (= (and b!6803919 (not c!1265370)) b!6803923))

(assert (= (and b!6803923 c!1265373) b!6803917))

(assert (= (and b!6803923 (not c!1265373)) b!6803925))

(assert (= (or b!6803921 b!6803917) bm!618328))

(assert (= (or b!6803921 b!6803917) bm!618325))

(assert (= (or b!6803927 bm!618328) bm!618326))

(assert (= (or b!6803927 bm!618325) bm!618327))

(assert (= (or b!6803920 b!6803927) bm!618329))

(assert (= (or b!6803920 bm!618327) bm!618330))

(declare-fun m!7550198 () Bool)

(assert (=> bm!618330 m!7550198))

(declare-fun m!7550200 () Bool)

(assert (=> b!6803922 m!7550200))

(declare-fun m!7550202 () Bool)

(assert (=> bm!618329 m!7550202))

(declare-fun m!7550204 () Bool)

(assert (=> bm!618326 m!7550204))

(declare-fun m!7550206 () Bool)

(assert (=> b!6803924 m!7550206))

(assert (=> bm!618143 d!2138119))

(declare-fun b!6803961 () Bool)

(declare-fun res!2780378 () Bool)

(declare-fun e!4105998 () Bool)

(assert (=> b!6803961 (=> res!2780378 e!4105998)))

(assert (=> b!6803961 (= res!2780378 (not (isEmpty!38426 (tail!12740 (tail!12740 s!2326)))))))

(declare-fun b!6803962 () Bool)

(declare-fun e!4105997 () Bool)

(declare-fun e!4105996 () Bool)

(assert (=> b!6803962 (= e!4105997 e!4105996)))

(declare-fun res!2780381 () Bool)

(assert (=> b!6803962 (=> (not res!2780381) (not e!4105996))))

(declare-fun lt!2448616 () Bool)

(assert (=> b!6803962 (= res!2780381 (not lt!2448616))))

(declare-fun b!6803964 () Bool)

(declare-fun e!4105991 () Bool)

(declare-fun e!4105994 () Bool)

(assert (=> b!6803964 (= e!4105991 e!4105994)))

(declare-fun c!1265374 () Bool)

(assert (=> b!6803964 (= c!1265374 ((_ is EmptyLang!16623) (derivativeStep!5286 lt!2448378 (head!13655 s!2326))))))

(declare-fun b!6803965 () Bool)

(declare-fun e!4105995 () Bool)

(assert (=> b!6803965 (= e!4105995 (= (head!13655 (tail!12740 s!2326)) (c!1264881 (derivativeStep!5286 lt!2448378 (head!13655 s!2326)))))))

(declare-fun b!6803966 () Bool)

(declare-fun e!4105992 () Bool)

(assert (=> b!6803966 (= e!4105992 (matchR!8806 (derivativeStep!5286 (derivativeStep!5286 lt!2448378 (head!13655 s!2326)) (head!13655 (tail!12740 s!2326))) (tail!12740 (tail!12740 s!2326))))))

(declare-fun b!6803967 () Bool)

(assert (=> b!6803967 (= e!4105994 (not lt!2448616))))

(declare-fun b!6803968 () Bool)

(assert (=> b!6803968 (= e!4105996 e!4105998)))

(declare-fun res!2780382 () Bool)

(assert (=> b!6803968 (=> res!2780382 e!4105998)))

(declare-fun call!618336 () Bool)

(assert (=> b!6803968 (= res!2780382 call!618336)))

(declare-fun b!6803969 () Bool)

(assert (=> b!6803969 (= e!4105991 (= lt!2448616 call!618336))))

(declare-fun bm!618331 () Bool)

(assert (=> bm!618331 (= call!618336 (isEmpty!38426 (tail!12740 s!2326)))))

(declare-fun b!6803970 () Bool)

(assert (=> b!6803970 (= e!4105992 (nullable!6601 (derivativeStep!5286 lt!2448378 (head!13655 s!2326))))))

(declare-fun b!6803963 () Bool)

(declare-fun res!2780385 () Bool)

(assert (=> b!6803963 (=> (not res!2780385) (not e!4105995))))

(assert (=> b!6803963 (= res!2780385 (not call!618336))))

(declare-fun d!2138121 () Bool)

(assert (=> d!2138121 e!4105991))

(declare-fun c!1265375 () Bool)

(assert (=> d!2138121 (= c!1265375 ((_ is EmptyExpr!16623) (derivativeStep!5286 lt!2448378 (head!13655 s!2326))))))

(assert (=> d!2138121 (= lt!2448616 e!4105992)))

(declare-fun c!1265376 () Bool)

(assert (=> d!2138121 (= c!1265376 (isEmpty!38426 (tail!12740 s!2326)))))

(assert (=> d!2138121 (validRegex!8359 (derivativeStep!5286 lt!2448378 (head!13655 s!2326)))))

(assert (=> d!2138121 (= (matchR!8806 (derivativeStep!5286 lt!2448378 (head!13655 s!2326)) (tail!12740 s!2326)) lt!2448616)))

(declare-fun b!6803971 () Bool)

(declare-fun res!2780383 () Bool)

(assert (=> b!6803971 (=> (not res!2780383) (not e!4105995))))

(assert (=> b!6803971 (= res!2780383 (isEmpty!38426 (tail!12740 (tail!12740 s!2326))))))

(declare-fun b!6803972 () Bool)

(declare-fun res!2780384 () Bool)

(assert (=> b!6803972 (=> res!2780384 e!4105997)))

(assert (=> b!6803972 (= res!2780384 (not ((_ is ElementMatch!16623) (derivativeStep!5286 lt!2448378 (head!13655 s!2326)))))))

(assert (=> b!6803972 (= e!4105994 e!4105997)))

(declare-fun b!6803973 () Bool)

(assert (=> b!6803973 (= e!4105998 (not (= (head!13655 (tail!12740 s!2326)) (c!1264881 (derivativeStep!5286 lt!2448378 (head!13655 s!2326))))))))

(declare-fun b!6803974 () Bool)

(declare-fun res!2780380 () Bool)

(assert (=> b!6803974 (=> res!2780380 e!4105997)))

(assert (=> b!6803974 (= res!2780380 e!4105995)))

(declare-fun res!2780379 () Bool)

(assert (=> b!6803974 (=> (not res!2780379) (not e!4105995))))

(assert (=> b!6803974 (= res!2780379 lt!2448616)))

(assert (= (and d!2138121 c!1265376) b!6803970))

(assert (= (and d!2138121 (not c!1265376)) b!6803966))

(assert (= (and d!2138121 c!1265375) b!6803969))

(assert (= (and d!2138121 (not c!1265375)) b!6803964))

(assert (= (and b!6803964 c!1265374) b!6803967))

(assert (= (and b!6803964 (not c!1265374)) b!6803972))

(assert (= (and b!6803972 (not res!2780384)) b!6803974))

(assert (= (and b!6803974 res!2780379) b!6803963))

(assert (= (and b!6803963 res!2780385) b!6803971))

(assert (= (and b!6803971 res!2780383) b!6803965))

(assert (= (and b!6803974 (not res!2780380)) b!6803962))

(assert (= (and b!6803962 res!2780381) b!6803968))

(assert (= (and b!6803968 (not res!2780382)) b!6803961))

(assert (= (and b!6803961 (not res!2780378)) b!6803973))

(assert (= (or b!6803969 b!6803963 b!6803968) bm!618331))

(assert (=> b!6803965 m!7548680))

(assert (=> b!6803965 m!7550118))

(assert (=> b!6803961 m!7548680))

(assert (=> b!6803961 m!7550120))

(assert (=> b!6803961 m!7550120))

(assert (=> b!6803961 m!7550122))

(assert (=> b!6803973 m!7548680))

(assert (=> b!6803973 m!7550118))

(assert (=> b!6803966 m!7548680))

(assert (=> b!6803966 m!7550118))

(assert (=> b!6803966 m!7548684))

(assert (=> b!6803966 m!7550118))

(declare-fun m!7550208 () Bool)

(assert (=> b!6803966 m!7550208))

(assert (=> b!6803966 m!7548680))

(assert (=> b!6803966 m!7550120))

(assert (=> b!6803966 m!7550208))

(assert (=> b!6803966 m!7550120))

(declare-fun m!7550210 () Bool)

(assert (=> b!6803966 m!7550210))

(assert (=> bm!618331 m!7548680))

(assert (=> bm!618331 m!7548682))

(assert (=> d!2138121 m!7548680))

(assert (=> d!2138121 m!7548682))

(assert (=> d!2138121 m!7548684))

(declare-fun m!7550212 () Bool)

(assert (=> d!2138121 m!7550212))

(assert (=> b!6803970 m!7548684))

(declare-fun m!7550214 () Bool)

(assert (=> b!6803970 m!7550214))

(assert (=> b!6803971 m!7548680))

(assert (=> b!6803971 m!7550120))

(assert (=> b!6803971 m!7550120))

(assert (=> b!6803971 m!7550122))

(assert (=> b!6802427 d!2138121))

(declare-fun d!2138123 () Bool)

(declare-fun lt!2448617 () Regex!16623)

(assert (=> d!2138123 (validRegex!8359 lt!2448617)))

(declare-fun e!4106009 () Regex!16623)

(assert (=> d!2138123 (= lt!2448617 e!4106009)))

(declare-fun c!1265380 () Bool)

(assert (=> d!2138123 (= c!1265380 (or ((_ is EmptyExpr!16623) lt!2448378) ((_ is EmptyLang!16623) lt!2448378)))))

(assert (=> d!2138123 (validRegex!8359 lt!2448378)))

(assert (=> d!2138123 (= (derivativeStep!5286 lt!2448378 (head!13655 s!2326)) lt!2448617)))

(declare-fun b!6804001 () Bool)

(declare-fun c!1265377 () Bool)

(assert (=> b!6804001 (= c!1265377 ((_ is Union!16623) lt!2448378))))

(declare-fun e!4106007 () Regex!16623)

(declare-fun e!4106010 () Regex!16623)

(assert (=> b!6804001 (= e!4106007 e!4106010)))

(declare-fun bm!618332 () Bool)

(declare-fun call!618339 () Regex!16623)

(declare-fun call!618337 () Regex!16623)

(assert (=> bm!618332 (= call!618339 call!618337)))

(declare-fun b!6804002 () Bool)

(declare-fun e!4106011 () Regex!16623)

(assert (=> b!6804002 (= e!4106011 (Concat!25468 call!618337 lt!2448378))))

(declare-fun e!4106008 () Regex!16623)

(declare-fun call!618340 () Regex!16623)

(declare-fun b!6804003 () Bool)

(assert (=> b!6804003 (= e!4106008 (Union!16623 (Concat!25468 call!618340 (regTwo!33758 lt!2448378)) call!618339))))

(declare-fun b!6804004 () Bool)

(assert (=> b!6804004 (= e!4106009 e!4106007)))

(declare-fun c!1265378 () Bool)

(assert (=> b!6804004 (= c!1265378 ((_ is ElementMatch!16623) lt!2448378))))

(declare-fun b!6804005 () Bool)

(assert (=> b!6804005 (= e!4106008 (Union!16623 (Concat!25468 call!618339 (regTwo!33758 lt!2448378)) EmptyLang!16623))))

(declare-fun b!6804006 () Bool)

(assert (=> b!6804006 (= e!4106010 e!4106011)))

(declare-fun c!1265379 () Bool)

(assert (=> b!6804006 (= c!1265379 ((_ is Star!16623) lt!2448378))))

(declare-fun b!6804007 () Bool)

(assert (=> b!6804007 (= e!4106007 (ite (= (head!13655 s!2326) (c!1264881 lt!2448378)) EmptyExpr!16623 EmptyLang!16623))))

(declare-fun b!6804008 () Bool)

(declare-fun c!1265381 () Bool)

(assert (=> b!6804008 (= c!1265381 (nullable!6601 (regOne!33758 lt!2448378)))))

(assert (=> b!6804008 (= e!4106011 e!4106008)))

(declare-fun bm!618333 () Bool)

(declare-fun call!618338 () Regex!16623)

(assert (=> bm!618333 (= call!618337 call!618338)))

(declare-fun b!6804009 () Bool)

(assert (=> b!6804009 (= e!4106009 EmptyLang!16623)))

(declare-fun bm!618334 () Bool)

(assert (=> bm!618334 (= call!618340 (derivativeStep!5286 (ite c!1265377 (regOne!33759 lt!2448378) (regOne!33758 lt!2448378)) (head!13655 s!2326)))))

(declare-fun b!6804010 () Bool)

(assert (=> b!6804010 (= e!4106010 (Union!16623 call!618340 call!618338))))

(declare-fun bm!618335 () Bool)

(assert (=> bm!618335 (= call!618338 (derivativeStep!5286 (ite c!1265377 (regTwo!33759 lt!2448378) (ite c!1265379 (reg!16952 lt!2448378) (ite c!1265381 (regTwo!33758 lt!2448378) (regOne!33758 lt!2448378)))) (head!13655 s!2326)))))

(assert (= (and d!2138123 c!1265380) b!6804009))

(assert (= (and d!2138123 (not c!1265380)) b!6804004))

(assert (= (and b!6804004 c!1265378) b!6804007))

(assert (= (and b!6804004 (not c!1265378)) b!6804001))

(assert (= (and b!6804001 c!1265377) b!6804010))

(assert (= (and b!6804001 (not c!1265377)) b!6804006))

(assert (= (and b!6804006 c!1265379) b!6804002))

(assert (= (and b!6804006 (not c!1265379)) b!6804008))

(assert (= (and b!6804008 c!1265381) b!6804003))

(assert (= (and b!6804008 (not c!1265381)) b!6804005))

(assert (= (or b!6804003 b!6804005) bm!618332))

(assert (= (or b!6804002 bm!618332) bm!618333))

(assert (= (or b!6804010 bm!618333) bm!618335))

(assert (= (or b!6804010 b!6804003) bm!618334))

(declare-fun m!7550220 () Bool)

(assert (=> d!2138123 m!7550220))

(assert (=> d!2138123 m!7548688))

(declare-fun m!7550222 () Bool)

(assert (=> b!6804008 m!7550222))

(assert (=> bm!618334 m!7548678))

(declare-fun m!7550224 () Bool)

(assert (=> bm!618334 m!7550224))

(assert (=> bm!618335 m!7548678))

(declare-fun m!7550226 () Bool)

(assert (=> bm!618335 m!7550226))

(assert (=> b!6802427 d!2138123))

(assert (=> b!6802427 d!2137947))

(assert (=> b!6802427 d!2137977))

(declare-fun b!6804028 () Bool)

(declare-fun e!4106022 () (InoxSet Context!12014))

(declare-fun call!618345 () (InoxSet Context!12014))

(assert (=> b!6804028 (= e!4106022 call!618345)))

(declare-fun b!6804029 () Bool)

(declare-fun e!4106021 () (InoxSet Context!12014))

(declare-fun e!4106024 () (InoxSet Context!12014))

(assert (=> b!6804029 (= e!4106021 e!4106024)))

(declare-fun c!1265385 () Bool)

(assert (=> b!6804029 (= c!1265385 ((_ is Union!16623) (ite c!1264969 (regTwo!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292)))))))

(declare-fun bm!618336 () Bool)

(declare-fun call!618342 () (InoxSet Context!12014))

(assert (=> bm!618336 (= call!618345 call!618342)))

(declare-fun c!1265382 () Bool)

(declare-fun d!2138125 () Bool)

(assert (=> d!2138125 (= c!1265382 (and ((_ is ElementMatch!16623) (ite c!1264969 (regTwo!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292)))) (= (c!1264881 (ite c!1264969 (regTwo!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292)))) (h!72492 s!2326))))))

(assert (=> d!2138125 (= (derivationStepZipperDown!1851 (ite c!1264969 (regTwo!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292))) (ite c!1264969 lt!2448396 (Context!12015 call!618130)) (h!72492 s!2326)) e!4106021)))

(declare-fun b!6804030 () Bool)

(declare-fun e!4106023 () (InoxSet Context!12014))

(declare-fun e!4106020 () (InoxSet Context!12014))

(assert (=> b!6804030 (= e!4106023 e!4106020)))

(declare-fun c!1265383 () Bool)

(assert (=> b!6804030 (= c!1265383 ((_ is Concat!25468) (ite c!1264969 (regTwo!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292)))))))

(declare-fun b!6804031 () Bool)

(declare-fun call!618343 () (InoxSet Context!12014))

(declare-fun call!618344 () (InoxSet Context!12014))

(assert (=> b!6804031 (= e!4106024 ((_ map or) call!618343 call!618344))))

(declare-fun c!1265384 () Bool)

(declare-fun bm!618337 () Bool)

(declare-fun call!618346 () List!66169)

(assert (=> bm!618337 (= call!618346 ($colon$colon!2432 (exprs!6507 (ite c!1264969 lt!2448396 (Context!12015 call!618130))) (ite (or c!1265384 c!1265383) (regTwo!33758 (ite c!1264969 (regTwo!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292)))) (ite c!1264969 (regTwo!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292))))))))

(declare-fun b!6804032 () Bool)

(assert (=> b!6804032 (= e!4106020 call!618345)))

(declare-fun b!6804033 () Bool)

(declare-fun e!4106025 () Bool)

(assert (=> b!6804033 (= e!4106025 (nullable!6601 (regOne!33758 (ite c!1264969 (regTwo!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292))))))))

(declare-fun bm!618338 () Bool)

(assert (=> bm!618338 (= call!618342 call!618343)))

(declare-fun b!6804034 () Bool)

(declare-fun c!1265386 () Bool)

(assert (=> b!6804034 (= c!1265386 ((_ is Star!16623) (ite c!1264969 (regTwo!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292)))))))

(assert (=> b!6804034 (= e!4106020 e!4106022)))

(declare-fun b!6804035 () Bool)

(assert (=> b!6804035 (= e!4106021 (store ((as const (Array Context!12014 Bool)) false) (ite c!1264969 lt!2448396 (Context!12015 call!618130)) true))))

(declare-fun b!6804036 () Bool)

(assert (=> b!6804036 (= e!4106022 ((as const (Array Context!12014 Bool)) false))))

(declare-fun b!6804037 () Bool)

(assert (=> b!6804037 (= c!1265384 e!4106025)))

(declare-fun res!2780386 () Bool)

(assert (=> b!6804037 (=> (not res!2780386) (not e!4106025))))

(assert (=> b!6804037 (= res!2780386 ((_ is Concat!25468) (ite c!1264969 (regTwo!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292)))))))

(assert (=> b!6804037 (= e!4106024 e!4106023)))

(declare-fun bm!618339 () Bool)

(declare-fun call!618341 () List!66169)

(assert (=> bm!618339 (= call!618341 call!618346)))

(declare-fun b!6804038 () Bool)

(assert (=> b!6804038 (= e!4106023 ((_ map or) call!618344 call!618342))))

(declare-fun bm!618340 () Bool)

(assert (=> bm!618340 (= call!618344 (derivationStepZipperDown!1851 (ite c!1265385 (regTwo!33759 (ite c!1264969 (regTwo!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292)))) (regOne!33758 (ite c!1264969 (regTwo!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292))))) (ite c!1265385 (ite c!1264969 lt!2448396 (Context!12015 call!618130)) (Context!12015 call!618346)) (h!72492 s!2326)))))

(declare-fun bm!618341 () Bool)

(assert (=> bm!618341 (= call!618343 (derivationStepZipperDown!1851 (ite c!1265385 (regOne!33759 (ite c!1264969 (regTwo!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292)))) (ite c!1265384 (regTwo!33758 (ite c!1264969 (regTwo!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292)))) (ite c!1265383 (regOne!33758 (ite c!1264969 (regTwo!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292)))) (reg!16952 (ite c!1264969 (regTwo!33759 (reg!16952 r!7292)) (regOne!33758 (reg!16952 r!7292))))))) (ite (or c!1265385 c!1265384) (ite c!1264969 lt!2448396 (Context!12015 call!618130)) (Context!12015 call!618341)) (h!72492 s!2326)))))

(assert (= (and d!2138125 c!1265382) b!6804035))

(assert (= (and d!2138125 (not c!1265382)) b!6804029))

(assert (= (and b!6804029 c!1265385) b!6804031))

(assert (= (and b!6804029 (not c!1265385)) b!6804037))

(assert (= (and b!6804037 res!2780386) b!6804033))

(assert (= (and b!6804037 c!1265384) b!6804038))

(assert (= (and b!6804037 (not c!1265384)) b!6804030))

(assert (= (and b!6804030 c!1265383) b!6804032))

(assert (= (and b!6804030 (not c!1265383)) b!6804034))

(assert (= (and b!6804034 c!1265386) b!6804028))

(assert (= (and b!6804034 (not c!1265386)) b!6804036))

(assert (= (or b!6804032 b!6804028) bm!618339))

(assert (= (or b!6804032 b!6804028) bm!618336))

(assert (= (or b!6804038 bm!618339) bm!618337))

(assert (= (or b!6804038 bm!618336) bm!618338))

(assert (= (or b!6804031 b!6804038) bm!618340))

(assert (= (or b!6804031 bm!618338) bm!618341))

(declare-fun m!7550228 () Bool)

(assert (=> bm!618341 m!7550228))

(declare-fun m!7550230 () Bool)

(assert (=> b!6804033 m!7550230))

(declare-fun m!7550232 () Bool)

(assert (=> bm!618340 m!7550232))

(declare-fun m!7550234 () Bool)

(assert (=> bm!618337 m!7550234))

(declare-fun m!7550236 () Bool)

(assert (=> b!6804035 m!7550236))

(assert (=> bm!618124 d!2138125))

(declare-fun b!6804058 () Bool)

(declare-fun e!4106031 () Bool)

(declare-fun lt!2448618 () List!66168)

(assert (=> b!6804058 (= e!4106031 (or (not (= (t!379899 s!2326) Nil!66044)) (= lt!2448618 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)))))))

(declare-fun d!2138127 () Bool)

(assert (=> d!2138127 e!4106031))

(declare-fun res!2780388 () Bool)

(assert (=> d!2138127 (=> (not res!2780388) (not e!4106031))))

(assert (=> d!2138127 (= res!2780388 (= (content!12906 lt!2448618) ((_ map or) (content!12906 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044))) (content!12906 (t!379899 s!2326)))))))

(declare-fun e!4106030 () List!66168)

(assert (=> d!2138127 (= lt!2448618 e!4106030)))

(declare-fun c!1265387 () Bool)

(assert (=> d!2138127 (= c!1265387 ((_ is Nil!66044) (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044))))))

(assert (=> d!2138127 (= (++!14792 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (t!379899 s!2326)) lt!2448618)))

(declare-fun b!6804057 () Bool)

(declare-fun res!2780387 () Bool)

(assert (=> b!6804057 (=> (not res!2780387) (not e!4106031))))

(assert (=> b!6804057 (= res!2780387 (= (size!40671 lt!2448618) (+ (size!40671 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044))) (size!40671 (t!379899 s!2326)))))))

(declare-fun b!6804055 () Bool)

(assert (=> b!6804055 (= e!4106030 (t!379899 s!2326))))

(declare-fun b!6804056 () Bool)

(assert (=> b!6804056 (= e!4106030 (Cons!66044 (h!72492 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044))) (++!14792 (t!379899 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044))) (t!379899 s!2326))))))

(assert (= (and d!2138127 c!1265387) b!6804055))

(assert (= (and d!2138127 (not c!1265387)) b!6804056))

(assert (= (and d!2138127 res!2780388) b!6804057))

(assert (= (and b!6804057 res!2780387) b!6804058))

(declare-fun m!7550242 () Bool)

(assert (=> d!2138127 m!7550242))

(assert (=> d!2138127 m!7549066))

(declare-fun m!7550244 () Bool)

(assert (=> d!2138127 m!7550244))

(declare-fun m!7550246 () Bool)

(assert (=> d!2138127 m!7550246))

(declare-fun m!7550248 () Bool)

(assert (=> b!6804057 m!7550248))

(assert (=> b!6804057 m!7549066))

(declare-fun m!7550252 () Bool)

(assert (=> b!6804057 m!7550252))

(declare-fun m!7550254 () Bool)

(assert (=> b!6804057 m!7550254))

(declare-fun m!7550256 () Bool)

(assert (=> b!6804056 m!7550256))

(assert (=> b!6802849 d!2138127))

(declare-fun b!6804062 () Bool)

(declare-fun e!4106033 () Bool)

(declare-fun lt!2448619 () List!66168)

(assert (=> b!6804062 (= e!4106033 (or (not (= (Cons!66044 (h!72492 s!2326) Nil!66044) Nil!66044)) (= lt!2448619 Nil!66044)))))

(declare-fun d!2138137 () Bool)

(assert (=> d!2138137 e!4106033))

(declare-fun res!2780390 () Bool)

(assert (=> d!2138137 (=> (not res!2780390) (not e!4106033))))

(assert (=> d!2138137 (= res!2780390 (= (content!12906 lt!2448619) ((_ map or) (content!12906 Nil!66044) (content!12906 (Cons!66044 (h!72492 s!2326) Nil!66044)))))))

(declare-fun e!4106032 () List!66168)

(assert (=> d!2138137 (= lt!2448619 e!4106032)))

(declare-fun c!1265388 () Bool)

(assert (=> d!2138137 (= c!1265388 ((_ is Nil!66044) Nil!66044))))

(assert (=> d!2138137 (= (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) lt!2448619)))

(declare-fun b!6804061 () Bool)

(declare-fun res!2780389 () Bool)

(assert (=> b!6804061 (=> (not res!2780389) (not e!4106033))))

(assert (=> b!6804061 (= res!2780389 (= (size!40671 lt!2448619) (+ (size!40671 Nil!66044) (size!40671 (Cons!66044 (h!72492 s!2326) Nil!66044)))))))

(declare-fun b!6804059 () Bool)

(assert (=> b!6804059 (= e!4106032 (Cons!66044 (h!72492 s!2326) Nil!66044))))

(declare-fun b!6804060 () Bool)

(assert (=> b!6804060 (= e!4106032 (Cons!66044 (h!72492 Nil!66044) (++!14792 (t!379899 Nil!66044) (Cons!66044 (h!72492 s!2326) Nil!66044))))))

(assert (= (and d!2138137 c!1265388) b!6804059))

(assert (= (and d!2138137 (not c!1265388)) b!6804060))

(assert (= (and d!2138137 res!2780390) b!6804061))

(assert (= (and b!6804061 res!2780389) b!6804062))

(declare-fun m!7550266 () Bool)

(assert (=> d!2138137 m!7550266))

(declare-fun m!7550268 () Bool)

(assert (=> d!2138137 m!7550268))

(declare-fun m!7550270 () Bool)

(assert (=> d!2138137 m!7550270))

(declare-fun m!7550272 () Bool)

(assert (=> b!6804061 m!7550272))

(declare-fun m!7550274 () Bool)

(assert (=> b!6804061 m!7550274))

(declare-fun m!7550276 () Bool)

(assert (=> b!6804061 m!7550276))

(declare-fun m!7550278 () Bool)

(assert (=> b!6804060 m!7550278))

(assert (=> b!6802849 d!2138137))

(declare-fun d!2138147 () Bool)

(assert (=> d!2138147 (= (++!14792 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (t!379899 s!2326)) s!2326)))

(declare-fun lt!2448622 () Unit!159937)

(declare-fun choose!50732 (List!66168 C!33516 List!66168 List!66168) Unit!159937)

(assert (=> d!2138147 (= lt!2448622 (choose!50732 Nil!66044 (h!72492 s!2326) (t!379899 s!2326) s!2326))))

(assert (=> d!2138147 (= (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) (t!379899 s!2326))) s!2326)))

(assert (=> d!2138147 (= (lemmaMoveElementToOtherListKeepsConcatEq!2744 Nil!66044 (h!72492 s!2326) (t!379899 s!2326) s!2326) lt!2448622)))

(declare-fun bs!1813705 () Bool)

(assert (= bs!1813705 d!2138147))

(assert (=> bs!1813705 m!7549066))

(assert (=> bs!1813705 m!7549066))

(assert (=> bs!1813705 m!7549068))

(declare-fun m!7550280 () Bool)

(assert (=> bs!1813705 m!7550280))

(declare-fun m!7550282 () Bool)

(assert (=> bs!1813705 m!7550282))

(assert (=> b!6802849 d!2138147))

(declare-fun b!6804063 () Bool)

(declare-fun e!4106037 () Option!16510)

(assert (=> b!6804063 (= e!4106037 (Some!16509 (tuple2!67197 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (t!379899 s!2326))))))

(declare-fun b!6804064 () Bool)

(declare-fun e!4106036 () Bool)

(declare-fun lt!2448624 () Option!16510)

(assert (=> b!6804064 (= e!4106036 (= (++!14792 (_1!36901 (get!23004 lt!2448624)) (_2!36901 (get!23004 lt!2448624))) s!2326))))

(declare-fun b!6804065 () Bool)

(declare-fun res!2780395 () Bool)

(assert (=> b!6804065 (=> (not res!2780395) (not e!4106036))))

(assert (=> b!6804065 (= res!2780395 (matchR!8806 r!7292 (_2!36901 (get!23004 lt!2448624))))))

(declare-fun d!2138149 () Bool)

(declare-fun e!4106034 () Bool)

(assert (=> d!2138149 e!4106034))

(declare-fun res!2780393 () Bool)

(assert (=> d!2138149 (=> res!2780393 e!4106034)))

(assert (=> d!2138149 (= res!2780393 e!4106036)))

(declare-fun res!2780391 () Bool)

(assert (=> d!2138149 (=> (not res!2780391) (not e!4106036))))

(assert (=> d!2138149 (= res!2780391 (isDefined!13213 lt!2448624))))

(assert (=> d!2138149 (= lt!2448624 e!4106037)))

(declare-fun c!1265390 () Bool)

(declare-fun e!4106038 () Bool)

(assert (=> d!2138149 (= c!1265390 e!4106038)))

(declare-fun res!2780394 () Bool)

(assert (=> d!2138149 (=> (not res!2780394) (not e!4106038))))

(assert (=> d!2138149 (= res!2780394 (matchR!8806 (reg!16952 r!7292) (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044))))))

(assert (=> d!2138149 (validRegex!8359 (reg!16952 r!7292))))

(assert (=> d!2138149 (= (findConcatSeparation!2924 (reg!16952 r!7292) r!7292 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (t!379899 s!2326) s!2326) lt!2448624)))

(declare-fun b!6804066 () Bool)

(assert (=> b!6804066 (= e!4106038 (matchR!8806 r!7292 (t!379899 s!2326)))))

(declare-fun b!6804067 () Bool)

(declare-fun e!4106035 () Option!16510)

(assert (=> b!6804067 (= e!4106035 None!16509)))

(declare-fun b!6804068 () Bool)

(assert (=> b!6804068 (= e!4106037 e!4106035)))

(declare-fun c!1265389 () Bool)

(assert (=> b!6804068 (= c!1265389 ((_ is Nil!66044) (t!379899 s!2326)))))

(declare-fun b!6804069 () Bool)

(declare-fun res!2780392 () Bool)

(assert (=> b!6804069 (=> (not res!2780392) (not e!4106036))))

(assert (=> b!6804069 (= res!2780392 (matchR!8806 (reg!16952 r!7292) (_1!36901 (get!23004 lt!2448624))))))

(declare-fun b!6804070 () Bool)

(assert (=> b!6804070 (= e!4106034 (not (isDefined!13213 lt!2448624)))))

(declare-fun b!6804071 () Bool)

(declare-fun lt!2448623 () Unit!159937)

(declare-fun lt!2448625 () Unit!159937)

(assert (=> b!6804071 (= lt!2448623 lt!2448625)))

(assert (=> b!6804071 (= (++!14792 (++!14792 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (Cons!66044 (h!72492 (t!379899 s!2326)) Nil!66044)) (t!379899 (t!379899 s!2326))) s!2326)))

(assert (=> b!6804071 (= lt!2448625 (lemmaMoveElementToOtherListKeepsConcatEq!2744 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (h!72492 (t!379899 s!2326)) (t!379899 (t!379899 s!2326)) s!2326))))

(assert (=> b!6804071 (= e!4106035 (findConcatSeparation!2924 (reg!16952 r!7292) r!7292 (++!14792 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (Cons!66044 (h!72492 (t!379899 s!2326)) Nil!66044)) (t!379899 (t!379899 s!2326)) s!2326))))

(assert (= (and d!2138149 res!2780394) b!6804066))

(assert (= (and d!2138149 c!1265390) b!6804063))

(assert (= (and d!2138149 (not c!1265390)) b!6804068))

(assert (= (and b!6804068 c!1265389) b!6804067))

(assert (= (and b!6804068 (not c!1265389)) b!6804071))

(assert (= (and d!2138149 res!2780391) b!6804069))

(assert (= (and b!6804069 res!2780392) b!6804065))

(assert (= (and b!6804065 res!2780395) b!6804064))

(assert (= (and d!2138149 (not res!2780393)) b!6804070))

(declare-fun m!7550284 () Bool)

(assert (=> b!6804064 m!7550284))

(declare-fun m!7550286 () Bool)

(assert (=> b!6804064 m!7550286))

(assert (=> b!6804069 m!7550284))

(declare-fun m!7550288 () Bool)

(assert (=> b!6804069 m!7550288))

(declare-fun m!7550290 () Bool)

(assert (=> d!2138149 m!7550290))

(assert (=> d!2138149 m!7549066))

(declare-fun m!7550292 () Bool)

(assert (=> d!2138149 m!7550292))

(assert (=> d!2138149 m!7549026))

(declare-fun m!7550294 () Bool)

(assert (=> b!6804066 m!7550294))

(assert (=> b!6804070 m!7550290))

(assert (=> b!6804071 m!7549066))

(declare-fun m!7550296 () Bool)

(assert (=> b!6804071 m!7550296))

(assert (=> b!6804071 m!7550296))

(declare-fun m!7550298 () Bool)

(assert (=> b!6804071 m!7550298))

(assert (=> b!6804071 m!7549066))

(declare-fun m!7550300 () Bool)

(assert (=> b!6804071 m!7550300))

(assert (=> b!6804071 m!7550296))

(declare-fun m!7550302 () Bool)

(assert (=> b!6804071 m!7550302))

(assert (=> b!6804065 m!7550284))

(declare-fun m!7550304 () Bool)

(assert (=> b!6804065 m!7550304))

(assert (=> b!6802849 d!2138149))

(declare-fun d!2138151 () Bool)

(declare-fun c!1265391 () Bool)

(assert (=> d!2138151 (= c!1265391 (isEmpty!38426 (tail!12740 s!2326)))))

(declare-fun e!4106039 () Bool)

(assert (=> d!2138151 (= (matchZipper!2609 (derivationStepZipper!2567 lt!2448394 (head!13655 s!2326)) (tail!12740 s!2326)) e!4106039)))

(declare-fun b!6804072 () Bool)

(assert (=> b!6804072 (= e!4106039 (nullableZipper!2329 (derivationStepZipper!2567 lt!2448394 (head!13655 s!2326))))))

(declare-fun b!6804073 () Bool)

(assert (=> b!6804073 (= e!4106039 (matchZipper!2609 (derivationStepZipper!2567 (derivationStepZipper!2567 lt!2448394 (head!13655 s!2326)) (head!13655 (tail!12740 s!2326))) (tail!12740 (tail!12740 s!2326))))))

(assert (= (and d!2138151 c!1265391) b!6804072))

(assert (= (and d!2138151 (not c!1265391)) b!6804073))

(assert (=> d!2138151 m!7548680))

(assert (=> d!2138151 m!7548682))

(assert (=> b!6804072 m!7548872))

(declare-fun m!7550306 () Bool)

(assert (=> b!6804072 m!7550306))

(assert (=> b!6804073 m!7548680))

(assert (=> b!6804073 m!7550118))

(assert (=> b!6804073 m!7548872))

(assert (=> b!6804073 m!7550118))

(declare-fun m!7550308 () Bool)

(assert (=> b!6804073 m!7550308))

(assert (=> b!6804073 m!7548680))

(assert (=> b!6804073 m!7550120))

(assert (=> b!6804073 m!7550308))

(assert (=> b!6804073 m!7550120))

(declare-fun m!7550310 () Bool)

(assert (=> b!6804073 m!7550310))

(assert (=> b!6802631 d!2138151))

(declare-fun bs!1813706 () Bool)

(declare-fun d!2138153 () Bool)

(assert (= bs!1813706 (and d!2138153 b!6802209)))

(declare-fun lambda!383903 () Int)

(assert (=> bs!1813706 (= (= (head!13655 s!2326) (h!72492 s!2326)) (= lambda!383903 lambda!383747))))

(declare-fun bs!1813707 () Bool)

(assert (= bs!1813707 (and d!2138153 d!2137497)))

(assert (=> bs!1813707 (= (= (head!13655 s!2326) (h!72492 s!2326)) (= lambda!383903 lambda!383777))))

(declare-fun bs!1813708 () Bool)

(assert (= bs!1813708 (and d!2138153 d!2137527)))

(assert (=> bs!1813708 (= (= (head!13655 s!2326) (h!72492 s!2326)) (= lambda!383903 lambda!383779))))

(declare-fun bs!1813709 () Bool)

(assert (= bs!1813709 (and d!2138153 d!2137543)))

(assert (=> bs!1813709 (= (= (head!13655 s!2326) (h!72492 s!2326)) (= lambda!383903 lambda!383784))))

(assert (=> d!2138153 true))

(assert (=> d!2138153 (= (derivationStepZipper!2567 lt!2448394 (head!13655 s!2326)) (flatMap!2104 lt!2448394 lambda!383903))))

(declare-fun bs!1813710 () Bool)

(assert (= bs!1813710 d!2138153))

(declare-fun m!7550312 () Bool)

(assert (=> bs!1813710 m!7550312))

(assert (=> b!6802631 d!2138153))

(assert (=> b!6802631 d!2137947))

(assert (=> b!6802631 d!2137977))

(declare-fun d!2138155 () Bool)

(assert (=> d!2138155 (= (flatMap!2104 lt!2448394 lambda!383784) (choose!50708 lt!2448394 lambda!383784))))

(declare-fun bs!1813711 () Bool)

(assert (= bs!1813711 d!2138155))

(declare-fun m!7550314 () Bool)

(assert (=> bs!1813711 m!7550314))

(assert (=> d!2137543 d!2138155))

(declare-fun b!6804074 () Bool)

(declare-fun e!4106041 () Bool)

(assert (=> b!6804074 (= e!4106041 (nullable!6601 (h!72493 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448407)))))))))

(declare-fun d!2138157 () Bool)

(declare-fun c!1265392 () Bool)

(assert (=> d!2138157 (= c!1265392 e!4106041)))

(declare-fun res!2780396 () Bool)

(assert (=> d!2138157 (=> (not res!2780396) (not e!4106041))))

(assert (=> d!2138157 (= res!2780396 ((_ is Cons!66045) (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448407))))))))

(declare-fun e!4106040 () (InoxSet Context!12014))

(assert (=> d!2138157 (= (derivationStepZipperUp!1777 (Context!12015 (t!379900 (exprs!6507 lt!2448407))) (h!72492 s!2326)) e!4106040)))

(declare-fun b!6804075 () Bool)

(declare-fun e!4106042 () (InoxSet Context!12014))

(assert (=> b!6804075 (= e!4106042 ((as const (Array Context!12014 Bool)) false))))

(declare-fun bm!618342 () Bool)

(declare-fun call!618347 () (InoxSet Context!12014))

(assert (=> bm!618342 (= call!618347 (derivationStepZipperDown!1851 (h!72493 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448407))))) (Context!12015 (t!379900 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448407)))))) (h!72492 s!2326)))))

(declare-fun b!6804076 () Bool)

(assert (=> b!6804076 (= e!4106042 call!618347)))

(declare-fun b!6804077 () Bool)

(assert (=> b!6804077 (= e!4106040 e!4106042)))

(declare-fun c!1265393 () Bool)

(assert (=> b!6804077 (= c!1265393 ((_ is Cons!66045) (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448407))))))))

(declare-fun b!6804078 () Bool)

(assert (=> b!6804078 (= e!4106040 ((_ map or) call!618347 (derivationStepZipperUp!1777 (Context!12015 (t!379900 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448407)))))) (h!72492 s!2326))))))

(assert (= (and d!2138157 res!2780396) b!6804074))

(assert (= (and d!2138157 c!1265392) b!6804078))

(assert (= (and d!2138157 (not c!1265392)) b!6804077))

(assert (= (and b!6804077 c!1265393) b!6804076))

(assert (= (and b!6804077 (not c!1265393)) b!6804075))

(assert (= (or b!6804078 b!6804076) bm!618342))

(declare-fun m!7550316 () Bool)

(assert (=> b!6804074 m!7550316))

(declare-fun m!7550318 () Bool)

(assert (=> bm!618342 m!7550318))

(declare-fun m!7550320 () Bool)

(assert (=> b!6804078 m!7550320))

(assert (=> b!6802599 d!2138157))

(declare-fun d!2138159 () Bool)

(declare-fun c!1265394 () Bool)

(assert (=> d!2138159 (= c!1265394 (isEmpty!38426 (tail!12740 (t!379899 s!2326))))))

(declare-fun e!4106043 () Bool)

(assert (=> d!2138159 (= (matchZipper!2609 (derivationStepZipper!2567 (derivationStepZipper!2567 lt!2448394 (h!72492 s!2326)) (head!13655 (t!379899 s!2326))) (tail!12740 (t!379899 s!2326))) e!4106043)))

(declare-fun b!6804079 () Bool)

(assert (=> b!6804079 (= e!4106043 (nullableZipper!2329 (derivationStepZipper!2567 (derivationStepZipper!2567 lt!2448394 (h!72492 s!2326)) (head!13655 (t!379899 s!2326)))))))

(declare-fun b!6804080 () Bool)

(assert (=> b!6804080 (= e!4106043 (matchZipper!2609 (derivationStepZipper!2567 (derivationStepZipper!2567 (derivationStepZipper!2567 lt!2448394 (h!72492 s!2326)) (head!13655 (t!379899 s!2326))) (head!13655 (tail!12740 (t!379899 s!2326)))) (tail!12740 (tail!12740 (t!379899 s!2326)))))))

(assert (= (and d!2138159 c!1265394) b!6804079))

(assert (= (and d!2138159 (not c!1265394)) b!6804080))

(assert (=> d!2138159 m!7548886))

(declare-fun m!7550322 () Bool)

(assert (=> d!2138159 m!7550322))

(assert (=> b!6804079 m!7548884))

(declare-fun m!7550324 () Bool)

(assert (=> b!6804079 m!7550324))

(assert (=> b!6804080 m!7548886))

(declare-fun m!7550326 () Bool)

(assert (=> b!6804080 m!7550326))

(assert (=> b!6804080 m!7548884))

(assert (=> b!6804080 m!7550326))

(declare-fun m!7550328 () Bool)

(assert (=> b!6804080 m!7550328))

(assert (=> b!6804080 m!7548886))

(declare-fun m!7550330 () Bool)

(assert (=> b!6804080 m!7550330))

(assert (=> b!6804080 m!7550328))

(assert (=> b!6804080 m!7550330))

(declare-fun m!7550332 () Bool)

(assert (=> b!6804080 m!7550332))

(assert (=> b!6802633 d!2138159))

(declare-fun bs!1813712 () Bool)

(declare-fun d!2138161 () Bool)

(assert (= bs!1813712 (and d!2138161 d!2137543)))

(declare-fun lambda!383904 () Int)

(assert (=> bs!1813712 (= (= (head!13655 (t!379899 s!2326)) (h!72492 s!2326)) (= lambda!383904 lambda!383784))))

(declare-fun bs!1813713 () Bool)

(assert (= bs!1813713 (and d!2138161 b!6802209)))

(assert (=> bs!1813713 (= (= (head!13655 (t!379899 s!2326)) (h!72492 s!2326)) (= lambda!383904 lambda!383747))))

(declare-fun bs!1813714 () Bool)

(assert (= bs!1813714 (and d!2138161 d!2138153)))

(assert (=> bs!1813714 (= (= (head!13655 (t!379899 s!2326)) (head!13655 s!2326)) (= lambda!383904 lambda!383903))))

(declare-fun bs!1813715 () Bool)

(assert (= bs!1813715 (and d!2138161 d!2137497)))

(assert (=> bs!1813715 (= (= (head!13655 (t!379899 s!2326)) (h!72492 s!2326)) (= lambda!383904 lambda!383777))))

(declare-fun bs!1813716 () Bool)

(assert (= bs!1813716 (and d!2138161 d!2137527)))

(assert (=> bs!1813716 (= (= (head!13655 (t!379899 s!2326)) (h!72492 s!2326)) (= lambda!383904 lambda!383779))))

(assert (=> d!2138161 true))

(assert (=> d!2138161 (= (derivationStepZipper!2567 (derivationStepZipper!2567 lt!2448394 (h!72492 s!2326)) (head!13655 (t!379899 s!2326))) (flatMap!2104 (derivationStepZipper!2567 lt!2448394 (h!72492 s!2326)) lambda!383904))))

(declare-fun bs!1813717 () Bool)

(assert (= bs!1813717 d!2138161))

(assert (=> bs!1813717 m!7548480))

(declare-fun m!7550334 () Bool)

(assert (=> bs!1813717 m!7550334))

(assert (=> b!6802633 d!2138161))

(declare-fun d!2138163 () Bool)

(assert (=> d!2138163 (= (head!13655 (t!379899 s!2326)) (h!72492 (t!379899 s!2326)))))

(assert (=> b!6802633 d!2138163))

(declare-fun d!2138165 () Bool)

(assert (=> d!2138165 (= (tail!12740 (t!379899 s!2326)) (t!379899 (t!379899 s!2326)))))

(assert (=> b!6802633 d!2138165))

(assert (=> d!2137457 d!2137591))

(declare-fun b!6804081 () Bool)

(declare-fun e!4106047 () Bool)

(declare-fun e!4106048 () Bool)

(assert (=> b!6804081 (= e!4106047 e!4106048)))

(declare-fun res!2780397 () Bool)

(assert (=> b!6804081 (=> (not res!2780397) (not e!4106048))))

(declare-fun call!618348 () Bool)

(assert (=> b!6804081 (= res!2780397 call!618348)))

(declare-fun b!6804082 () Bool)

(declare-fun e!4106044 () Bool)

(declare-fun e!4106046 () Bool)

(assert (=> b!6804082 (= e!4106044 e!4106046)))

(declare-fun c!1265395 () Bool)

(assert (=> b!6804082 (= c!1265395 ((_ is Union!16623) lt!2448378))))

(declare-fun d!2138167 () Bool)

(declare-fun res!2780401 () Bool)

(declare-fun e!4106050 () Bool)

(assert (=> d!2138167 (=> res!2780401 e!4106050)))

(assert (=> d!2138167 (= res!2780401 ((_ is ElementMatch!16623) lt!2448378))))

(assert (=> d!2138167 (= (validRegex!8359 lt!2448378) e!4106050)))

(declare-fun b!6804083 () Bool)

(declare-fun call!618350 () Bool)

(assert (=> b!6804083 (= e!4106048 call!618350)))

(declare-fun bm!618343 () Bool)

(declare-fun call!618349 () Bool)

(assert (=> bm!618343 (= call!618348 call!618349)))

(declare-fun b!6804084 () Bool)

(declare-fun e!4106045 () Bool)

(assert (=> b!6804084 (= e!4106045 call!618349)))

(declare-fun b!6804085 () Bool)

(assert (=> b!6804085 (= e!4106044 e!4106045)))

(declare-fun res!2780398 () Bool)

(assert (=> b!6804085 (= res!2780398 (not (nullable!6601 (reg!16952 lt!2448378))))))

(assert (=> b!6804085 (=> (not res!2780398) (not e!4106045))))

(declare-fun bm!618344 () Bool)

(declare-fun c!1265396 () Bool)

(assert (=> bm!618344 (= call!618349 (validRegex!8359 (ite c!1265396 (reg!16952 lt!2448378) (ite c!1265395 (regOne!33759 lt!2448378) (regOne!33758 lt!2448378)))))))

(declare-fun b!6804086 () Bool)

(declare-fun e!4106049 () Bool)

(assert (=> b!6804086 (= e!4106049 call!618350)))

(declare-fun b!6804087 () Bool)

(declare-fun res!2780400 () Bool)

(assert (=> b!6804087 (=> res!2780400 e!4106047)))

(assert (=> b!6804087 (= res!2780400 (not ((_ is Concat!25468) lt!2448378)))))

(assert (=> b!6804087 (= e!4106046 e!4106047)))

(declare-fun b!6804088 () Bool)

(assert (=> b!6804088 (= e!4106050 e!4106044)))

(assert (=> b!6804088 (= c!1265396 ((_ is Star!16623) lt!2448378))))

(declare-fun bm!618345 () Bool)

(assert (=> bm!618345 (= call!618350 (validRegex!8359 (ite c!1265395 (regTwo!33759 lt!2448378) (regTwo!33758 lt!2448378))))))

(declare-fun b!6804089 () Bool)

(declare-fun res!2780399 () Bool)

(assert (=> b!6804089 (=> (not res!2780399) (not e!4106049))))

(assert (=> b!6804089 (= res!2780399 call!618348)))

(assert (=> b!6804089 (= e!4106046 e!4106049)))

(assert (= (and d!2138167 (not res!2780401)) b!6804088))

(assert (= (and b!6804088 c!1265396) b!6804085))

(assert (= (and b!6804088 (not c!1265396)) b!6804082))

(assert (= (and b!6804085 res!2780398) b!6804084))

(assert (= (and b!6804082 c!1265395) b!6804089))

(assert (= (and b!6804082 (not c!1265395)) b!6804087))

(assert (= (and b!6804089 res!2780399) b!6804086))

(assert (= (and b!6804087 (not res!2780400)) b!6804081))

(assert (= (and b!6804081 res!2780397) b!6804083))

(assert (= (or b!6804086 b!6804083) bm!618345))

(assert (= (or b!6804089 b!6804081) bm!618343))

(assert (= (or b!6804084 bm!618343) bm!618344))

(declare-fun m!7550336 () Bool)

(assert (=> b!6804085 m!7550336))

(declare-fun m!7550338 () Bool)

(assert (=> bm!618344 m!7550338))

(declare-fun m!7550340 () Bool)

(assert (=> bm!618345 m!7550340))

(assert (=> d!2137457 d!2138167))

(declare-fun d!2138169 () Bool)

(assert (=> d!2138169 (= (nullable!6601 (regOne!33758 (reg!16952 r!7292))) (nullableFct!2503 (regOne!33758 (reg!16952 r!7292))))))

(declare-fun bs!1813718 () Bool)

(assert (= bs!1813718 d!2138169))

(declare-fun m!7550342 () Bool)

(assert (=> bs!1813718 m!7550342))

(assert (=> b!6802510 d!2138169))

(declare-fun b!6804090 () Bool)

(declare-fun e!4106052 () Bool)

(assert (=> b!6804090 (= e!4106052 (nullable!6601 (h!72493 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448396)))))))))

(declare-fun d!2138171 () Bool)

(declare-fun c!1265397 () Bool)

(assert (=> d!2138171 (= c!1265397 e!4106052)))

(declare-fun res!2780402 () Bool)

(assert (=> d!2138171 (=> (not res!2780402) (not e!4106052))))

(assert (=> d!2138171 (= res!2780402 ((_ is Cons!66045) (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448396))))))))

(declare-fun e!4106051 () (InoxSet Context!12014))

(assert (=> d!2138171 (= (derivationStepZipperUp!1777 (Context!12015 (t!379900 (exprs!6507 lt!2448396))) (h!72492 s!2326)) e!4106051)))

(declare-fun b!6804091 () Bool)

(declare-fun e!4106053 () (InoxSet Context!12014))

(assert (=> b!6804091 (= e!4106053 ((as const (Array Context!12014 Bool)) false))))

(declare-fun bm!618346 () Bool)

(declare-fun call!618351 () (InoxSet Context!12014))

(assert (=> bm!618346 (= call!618351 (derivationStepZipperDown!1851 (h!72493 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448396))))) (Context!12015 (t!379900 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448396)))))) (h!72492 s!2326)))))

(declare-fun b!6804092 () Bool)

(assert (=> b!6804092 (= e!4106053 call!618351)))

(declare-fun b!6804093 () Bool)

(assert (=> b!6804093 (= e!4106051 e!4106053)))

(declare-fun c!1265398 () Bool)

(assert (=> b!6804093 (= c!1265398 ((_ is Cons!66045) (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448396))))))))

(declare-fun b!6804094 () Bool)

(assert (=> b!6804094 (= e!4106051 ((_ map or) call!618351 (derivationStepZipperUp!1777 (Context!12015 (t!379900 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448396)))))) (h!72492 s!2326))))))

(assert (= (and d!2138171 res!2780402) b!6804090))

(assert (= (and d!2138171 c!1265397) b!6804094))

(assert (= (and d!2138171 (not c!1265397)) b!6804093))

(assert (= (and b!6804093 c!1265398) b!6804092))

(assert (= (and b!6804093 (not c!1265398)) b!6804091))

(assert (= (or b!6804094 b!6804092) bm!618346))

(declare-fun m!7550344 () Bool)

(assert (=> b!6804090 m!7550344))

(declare-fun m!7550346 () Bool)

(assert (=> bm!618346 m!7550346))

(declare-fun m!7550348 () Bool)

(assert (=> b!6804094 m!7550348))

(assert (=> b!6802594 d!2138171))

(declare-fun d!2138173 () Bool)

(assert (=> d!2138173 (= (isUnion!1418 lt!2448486) ((_ is Union!16623) lt!2448486))))

(assert (=> b!6802724 d!2138173))

(declare-fun d!2138175 () Bool)

(declare-fun c!1265401 () Bool)

(assert (=> d!2138175 (= c!1265401 ((_ is Nil!66046) lt!2448561))))

(declare-fun e!4106056 () (InoxSet Context!12014))

(assert (=> d!2138175 (= (content!12907 lt!2448561) e!4106056)))

(declare-fun b!6804099 () Bool)

(assert (=> b!6804099 (= e!4106056 ((as const (Array Context!12014 Bool)) false))))

(declare-fun b!6804100 () Bool)

(assert (=> b!6804100 (= e!4106056 ((_ map or) (store ((as const (Array Context!12014 Bool)) false) (h!72494 lt!2448561) true) (content!12907 (t!379901 lt!2448561))))))

(assert (= (and d!2138175 c!1265401) b!6804099))

(assert (= (and d!2138175 (not c!1265401)) b!6804100))

(declare-fun m!7550350 () Bool)

(assert (=> b!6804100 m!7550350))

(declare-fun m!7550352 () Bool)

(assert (=> b!6804100 m!7550352))

(assert (=> b!6803107 d!2138175))

(declare-fun d!2138177 () Bool)

(assert (=> d!2138177 (= (isEmpty!38430 (findConcatSeparation!2924 (reg!16952 r!7292) r!7292 Nil!66044 s!2326 s!2326)) (not ((_ is Some!16509) (findConcatSeparation!2924 (reg!16952 r!7292) r!7292 Nil!66044 s!2326 s!2326))))))

(assert (=> d!2137573 d!2138177))

(assert (=> b!6802757 d!2137547))

(declare-fun bs!1813719 () Bool)

(declare-fun d!2138179 () Bool)

(assert (= bs!1813719 (and d!2138179 d!2137569)))

(declare-fun lambda!383905 () Int)

(assert (=> bs!1813719 (= lambda!383905 lambda!383802)))

(declare-fun bs!1813720 () Bool)

(assert (= bs!1813720 (and d!2138179 d!2137669)))

(assert (=> bs!1813720 (= lambda!383905 lambda!383843)))

(declare-fun bs!1813721 () Bool)

(assert (= bs!1813721 (and d!2138179 b!6802233)))

(assert (=> bs!1813721 (= lambda!383905 lambda!383749)))

(declare-fun bs!1813722 () Bool)

(assert (= bs!1813722 (and d!2138179 d!2138077)))

(assert (=> bs!1813722 (= lambda!383905 lambda!383901)))

(declare-fun bs!1813723 () Bool)

(assert (= bs!1813723 (and d!2138179 d!2137533)))

(assert (=> bs!1813723 (= lambda!383905 lambda!383782)))

(declare-fun bs!1813724 () Bool)

(assert (= bs!1813724 (and d!2138179 d!2137537)))

(assert (=> bs!1813724 (= lambda!383905 lambda!383783)))

(declare-fun bs!1813725 () Bool)

(assert (= bs!1813725 (and d!2138179 d!2137547)))

(assert (=> bs!1813725 (= lambda!383905 lambda!383787)))

(declare-fun bs!1813726 () Bool)

(assert (= bs!1813726 (and d!2138179 d!2137557)))

(assert (=> bs!1813726 (= lambda!383905 lambda!383797)))

(declare-fun lt!2448626 () List!66169)

(assert (=> d!2138179 (forall!15815 lt!2448626 lambda!383905)))

(declare-fun e!4106057 () List!66169)

(assert (=> d!2138179 (= lt!2448626 e!4106057)))

(declare-fun c!1265402 () Bool)

(assert (=> d!2138179 (= c!1265402 ((_ is Cons!66046) (t!379901 zl!343)))))

(assert (=> d!2138179 (= (unfocusZipperList!2044 (t!379901 zl!343)) lt!2448626)))

(declare-fun b!6804101 () Bool)

(assert (=> b!6804101 (= e!4106057 (Cons!66045 (generalisedConcat!2220 (exprs!6507 (h!72494 (t!379901 zl!343)))) (unfocusZipperList!2044 (t!379901 (t!379901 zl!343)))))))

(declare-fun b!6804102 () Bool)

(assert (=> b!6804102 (= e!4106057 Nil!66045)))

(assert (= (and d!2138179 c!1265402) b!6804101))

(assert (= (and d!2138179 (not c!1265402)) b!6804102))

(declare-fun m!7550354 () Bool)

(assert (=> d!2138179 m!7550354))

(declare-fun m!7550356 () Bool)

(assert (=> b!6804101 m!7550356))

(declare-fun m!7550358 () Bool)

(assert (=> b!6804101 m!7550358))

(assert (=> b!6802757 d!2138179))

(assert (=> b!6802434 d!2137947))

(declare-fun b!6804103 () Bool)

(declare-fun e!4106061 () Bool)

(declare-fun e!4106062 () Bool)

(assert (=> b!6804103 (= e!4106061 e!4106062)))

(declare-fun res!2780403 () Bool)

(assert (=> b!6804103 (=> (not res!2780403) (not e!4106062))))

(declare-fun call!618352 () Bool)

(assert (=> b!6804103 (= res!2780403 call!618352)))

(declare-fun b!6804104 () Bool)

(declare-fun e!4106058 () Bool)

(declare-fun e!4106060 () Bool)

(assert (=> b!6804104 (= e!4106058 e!4106060)))

(declare-fun c!1265403 () Bool)

(assert (=> b!6804104 (= c!1265403 ((_ is Union!16623) lt!2448486))))

(declare-fun d!2138181 () Bool)

(declare-fun res!2780407 () Bool)

(declare-fun e!4106064 () Bool)

(assert (=> d!2138181 (=> res!2780407 e!4106064)))

(assert (=> d!2138181 (= res!2780407 ((_ is ElementMatch!16623) lt!2448486))))

(assert (=> d!2138181 (= (validRegex!8359 lt!2448486) e!4106064)))

(declare-fun b!6804105 () Bool)

(declare-fun call!618354 () Bool)

(assert (=> b!6804105 (= e!4106062 call!618354)))

(declare-fun bm!618347 () Bool)

(declare-fun call!618353 () Bool)

(assert (=> bm!618347 (= call!618352 call!618353)))

(declare-fun b!6804106 () Bool)

(declare-fun e!4106059 () Bool)

(assert (=> b!6804106 (= e!4106059 call!618353)))

(declare-fun b!6804107 () Bool)

(assert (=> b!6804107 (= e!4106058 e!4106059)))

(declare-fun res!2780404 () Bool)

(assert (=> b!6804107 (= res!2780404 (not (nullable!6601 (reg!16952 lt!2448486))))))

(assert (=> b!6804107 (=> (not res!2780404) (not e!4106059))))

(declare-fun c!1265404 () Bool)

(declare-fun bm!618348 () Bool)

(assert (=> bm!618348 (= call!618353 (validRegex!8359 (ite c!1265404 (reg!16952 lt!2448486) (ite c!1265403 (regOne!33759 lt!2448486) (regOne!33758 lt!2448486)))))))

(declare-fun b!6804108 () Bool)

(declare-fun e!4106063 () Bool)

(assert (=> b!6804108 (= e!4106063 call!618354)))

(declare-fun b!6804109 () Bool)

(declare-fun res!2780406 () Bool)

(assert (=> b!6804109 (=> res!2780406 e!4106061)))

(assert (=> b!6804109 (= res!2780406 (not ((_ is Concat!25468) lt!2448486)))))

(assert (=> b!6804109 (= e!4106060 e!4106061)))

(declare-fun b!6804110 () Bool)

(assert (=> b!6804110 (= e!4106064 e!4106058)))

(assert (=> b!6804110 (= c!1265404 ((_ is Star!16623) lt!2448486))))

(declare-fun bm!618349 () Bool)

(assert (=> bm!618349 (= call!618354 (validRegex!8359 (ite c!1265403 (regTwo!33759 lt!2448486) (regTwo!33758 lt!2448486))))))

(declare-fun b!6804111 () Bool)

(declare-fun res!2780405 () Bool)

(assert (=> b!6804111 (=> (not res!2780405) (not e!4106063))))

(assert (=> b!6804111 (= res!2780405 call!618352)))

(assert (=> b!6804111 (= e!4106060 e!4106063)))

(assert (= (and d!2138181 (not res!2780407)) b!6804110))

(assert (= (and b!6804110 c!1265404) b!6804107))

(assert (= (and b!6804110 (not c!1265404)) b!6804104))

(assert (= (and b!6804107 res!2780404) b!6804106))

(assert (= (and b!6804104 c!1265403) b!6804111))

(assert (= (and b!6804104 (not c!1265403)) b!6804109))

(assert (= (and b!6804111 res!2780405) b!6804108))

(assert (= (and b!6804109 (not res!2780406)) b!6804103))

(assert (= (and b!6804103 res!2780403) b!6804105))

(assert (= (or b!6804108 b!6804105) bm!618349))

(assert (= (or b!6804111 b!6804103) bm!618347))

(assert (= (or b!6804106 bm!618347) bm!618348))

(declare-fun m!7550360 () Bool)

(assert (=> b!6804107 m!7550360))

(declare-fun m!7550362 () Bool)

(assert (=> bm!618348 m!7550362))

(declare-fun m!7550364 () Bool)

(assert (=> bm!618349 m!7550364))

(assert (=> d!2137557 d!2138181))

(declare-fun d!2138183 () Bool)

(declare-fun res!2780412 () Bool)

(declare-fun e!4106069 () Bool)

(assert (=> d!2138183 (=> res!2780412 e!4106069)))

(assert (=> d!2138183 (= res!2780412 ((_ is Nil!66045) (unfocusZipperList!2044 zl!343)))))

(assert (=> d!2138183 (= (forall!15815 (unfocusZipperList!2044 zl!343) lambda!383797) e!4106069)))

(declare-fun b!6804116 () Bool)

(declare-fun e!4106070 () Bool)

(assert (=> b!6804116 (= e!4106069 e!4106070)))

(declare-fun res!2780413 () Bool)

(assert (=> b!6804116 (=> (not res!2780413) (not e!4106070))))

(declare-fun dynLambda!26380 (Int Regex!16623) Bool)

(assert (=> b!6804116 (= res!2780413 (dynLambda!26380 lambda!383797 (h!72493 (unfocusZipperList!2044 zl!343))))))

(declare-fun b!6804117 () Bool)

(assert (=> b!6804117 (= e!4106070 (forall!15815 (t!379900 (unfocusZipperList!2044 zl!343)) lambda!383797))))

(assert (= (and d!2138183 (not res!2780412)) b!6804116))

(assert (= (and b!6804116 res!2780413) b!6804117))

(declare-fun b_lambda!256499 () Bool)

(assert (=> (not b_lambda!256499) (not b!6804116)))

(declare-fun m!7550366 () Bool)

(assert (=> b!6804116 m!7550366))

(declare-fun m!7550368 () Bool)

(assert (=> b!6804117 m!7550368))

(assert (=> d!2137557 d!2138183))

(declare-fun bs!1813727 () Bool)

(declare-fun d!2138185 () Bool)

(assert (= bs!1813727 (and d!2138185 d!2137949)))

(declare-fun lambda!383906 () Int)

(assert (=> bs!1813727 (= lambda!383906 lambda!383885)))

(declare-fun bs!1813728 () Bool)

(assert (= bs!1813728 (and d!2138185 d!2137963)))

(assert (=> bs!1813728 (= lambda!383906 lambda!383886)))

(assert (=> d!2138185 (= (nullableZipper!2329 lt!2448387) (exists!2741 lt!2448387 lambda!383906))))

(declare-fun bs!1813729 () Bool)

(assert (= bs!1813729 d!2138185))

(declare-fun m!7550370 () Bool)

(assert (=> bs!1813729 m!7550370))

(assert (=> b!6802949 d!2138185))

(declare-fun b!6804121 () Bool)

(declare-fun e!4106072 () Bool)

(declare-fun lt!2448627 () List!66168)

(assert (=> b!6804121 (= e!4106072 (or (not (= (_2!36901 lt!2448389) Nil!66044)) (= lt!2448627 (t!379899 (_1!36901 lt!2448389)))))))

(declare-fun d!2138187 () Bool)

(assert (=> d!2138187 e!4106072))

(declare-fun res!2780415 () Bool)

(assert (=> d!2138187 (=> (not res!2780415) (not e!4106072))))

(assert (=> d!2138187 (= res!2780415 (= (content!12906 lt!2448627) ((_ map or) (content!12906 (t!379899 (_1!36901 lt!2448389))) (content!12906 (_2!36901 lt!2448389)))))))

(declare-fun e!4106071 () List!66168)

(assert (=> d!2138187 (= lt!2448627 e!4106071)))

(declare-fun c!1265405 () Bool)

(assert (=> d!2138187 (= c!1265405 ((_ is Nil!66044) (t!379899 (_1!36901 lt!2448389))))))

(assert (=> d!2138187 (= (++!14792 (t!379899 (_1!36901 lt!2448389)) (_2!36901 lt!2448389)) lt!2448627)))

(declare-fun b!6804120 () Bool)

(declare-fun res!2780414 () Bool)

(assert (=> b!6804120 (=> (not res!2780414) (not e!4106072))))

(assert (=> b!6804120 (= res!2780414 (= (size!40671 lt!2448627) (+ (size!40671 (t!379899 (_1!36901 lt!2448389))) (size!40671 (_2!36901 lt!2448389)))))))

(declare-fun b!6804118 () Bool)

(assert (=> b!6804118 (= e!4106071 (_2!36901 lt!2448389))))

(declare-fun b!6804119 () Bool)

(assert (=> b!6804119 (= e!4106071 (Cons!66044 (h!72492 (t!379899 (_1!36901 lt!2448389))) (++!14792 (t!379899 (t!379899 (_1!36901 lt!2448389))) (_2!36901 lt!2448389))))))

(assert (= (and d!2138187 c!1265405) b!6804118))

(assert (= (and d!2138187 (not c!1265405)) b!6804119))

(assert (= (and d!2138187 res!2780415) b!6804120))

(assert (= (and b!6804120 res!2780414) b!6804121))

(declare-fun m!7550372 () Bool)

(assert (=> d!2138187 m!7550372))

(declare-fun m!7550374 () Bool)

(assert (=> d!2138187 m!7550374))

(assert (=> d!2138187 m!7549214))

(declare-fun m!7550376 () Bool)

(assert (=> b!6804120 m!7550376))

(declare-fun m!7550378 () Bool)

(assert (=> b!6804120 m!7550378))

(assert (=> b!6804120 m!7549220))

(declare-fun m!7550380 () Bool)

(assert (=> b!6804119 m!7550380))

(assert (=> b!6802996 d!2138187))

(declare-fun d!2138189 () Bool)

(assert (=> d!2138189 (= (nullable!6601 (h!72493 (exprs!6507 lt!2448407))) (nullableFct!2503 (h!72493 (exprs!6507 lt!2448407))))))

(declare-fun bs!1813730 () Bool)

(assert (= bs!1813730 d!2138189))

(declare-fun m!7550382 () Bool)

(assert (=> bs!1813730 m!7550382))

(assert (=> b!6802595 d!2138189))

(declare-fun d!2138191 () Bool)

(assert (=> d!2138191 (= (isEmpty!38426 (t!379899 s!2326)) ((_ is Nil!66044) (t!379899 s!2326)))))

(assert (=> d!2137541 d!2138191))

(declare-fun d!2138193 () Bool)

(assert (=> d!2138193 (= (nullable!6601 r!7292) (nullableFct!2503 r!7292))))

(declare-fun bs!1813731 () Bool)

(assert (= bs!1813731 d!2138193))

(declare-fun m!7550384 () Bool)

(assert (=> bs!1813731 m!7550384))

(assert (=> b!6802944 d!2138193))

(declare-fun d!2138195 () Bool)

(assert (=> d!2138195 (= (nullable!6601 (h!72493 (exprs!6507 lt!2448396))) (nullableFct!2503 (h!72493 (exprs!6507 lt!2448396))))))

(declare-fun bs!1813732 () Bool)

(assert (= bs!1813732 d!2138195))

(declare-fun m!7550386 () Bool)

(assert (=> bs!1813732 m!7550386))

(assert (=> b!6802590 d!2138195))

(declare-fun b!6804122 () Bool)

(declare-fun e!4106074 () Bool)

(assert (=> b!6804122 (= e!4106074 (nullable!6601 (h!72493 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448400)))))))))

(declare-fun d!2138197 () Bool)

(declare-fun c!1265406 () Bool)

(assert (=> d!2138197 (= c!1265406 e!4106074)))

(declare-fun res!2780416 () Bool)

(assert (=> d!2138197 (=> (not res!2780416) (not e!4106074))))

(assert (=> d!2138197 (= res!2780416 ((_ is Cons!66045) (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448400))))))))

(declare-fun e!4106073 () (InoxSet Context!12014))

(assert (=> d!2138197 (= (derivationStepZipperUp!1777 (Context!12015 (t!379900 (exprs!6507 lt!2448400))) (h!72492 s!2326)) e!4106073)))

(declare-fun b!6804123 () Bool)

(declare-fun e!4106075 () (InoxSet Context!12014))

(assert (=> b!6804123 (= e!4106075 ((as const (Array Context!12014 Bool)) false))))

(declare-fun bm!618350 () Bool)

(declare-fun call!618355 () (InoxSet Context!12014))

(assert (=> bm!618350 (= call!618355 (derivationStepZipperDown!1851 (h!72493 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448400))))) (Context!12015 (t!379900 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448400)))))) (h!72492 s!2326)))))

(declare-fun b!6804124 () Bool)

(assert (=> b!6804124 (= e!4106075 call!618355)))

(declare-fun b!6804125 () Bool)

(assert (=> b!6804125 (= e!4106073 e!4106075)))

(declare-fun c!1265407 () Bool)

(assert (=> b!6804125 (= c!1265407 ((_ is Cons!66045) (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448400))))))))

(declare-fun b!6804126 () Bool)

(assert (=> b!6804126 (= e!4106073 ((_ map or) call!618355 (derivationStepZipperUp!1777 (Context!12015 (t!379900 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448400)))))) (h!72492 s!2326))))))

(assert (= (and d!2138197 res!2780416) b!6804122))

(assert (= (and d!2138197 c!1265406) b!6804126))

(assert (= (and d!2138197 (not c!1265406)) b!6804125))

(assert (= (and b!6804125 c!1265407) b!6804124))

(assert (= (and b!6804125 (not c!1265407)) b!6804123))

(assert (= (or b!6804126 b!6804124) bm!618350))

(declare-fun m!7550388 () Bool)

(assert (=> b!6804122 m!7550388))

(declare-fun m!7550390 () Bool)

(assert (=> bm!618350 m!7550390))

(declare-fun m!7550392 () Bool)

(assert (=> b!6804126 m!7550392))

(assert (=> b!6802520 d!2138197))

(assert (=> b!6803102 d!2138127))

(assert (=> b!6803102 d!2138137))

(assert (=> b!6803102 d!2138147))

(declare-fun b!6804127 () Bool)

(declare-fun e!4106079 () Option!16510)

(assert (=> b!6804127 (= e!4106079 None!16509)))

(declare-fun b!6804128 () Bool)

(declare-fun e!4106078 () Bool)

(declare-fun lt!2448629 () Option!16510)

(assert (=> b!6804128 (= e!4106078 (not (isDefined!13213 lt!2448629)))))

(declare-fun d!2138199 () Bool)

(assert (=> d!2138199 e!4106078))

(declare-fun res!2780418 () Bool)

(assert (=> d!2138199 (=> res!2780418 e!4106078)))

(declare-fun e!4106076 () Bool)

(assert (=> d!2138199 (= res!2780418 e!4106076)))

(declare-fun res!2780419 () Bool)

(assert (=> d!2138199 (=> (not res!2780419) (not e!4106076))))

(assert (=> d!2138199 (= res!2780419 (isDefined!13213 lt!2448629))))

(declare-fun e!4106077 () Option!16510)

(assert (=> d!2138199 (= lt!2448629 e!4106077)))

(declare-fun c!1265409 () Bool)

(declare-fun e!4106080 () Bool)

(assert (=> d!2138199 (= c!1265409 e!4106080)))

(declare-fun res!2780421 () Bool)

(assert (=> d!2138199 (=> (not res!2780421) (not e!4106080))))

(assert (=> d!2138199 (= res!2780421 (matchZipper!2609 lt!2448380 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044))))))

(assert (=> d!2138199 (= (++!14792 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (t!379899 s!2326)) s!2326)))

(assert (=> d!2138199 (= (findConcatSeparationZippers!232 lt!2448380 lt!2448387 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (t!379899 s!2326) s!2326) lt!2448629)))

(declare-fun b!6804129 () Bool)

(declare-fun res!2780420 () Bool)

(assert (=> b!6804129 (=> (not res!2780420) (not e!4106076))))

(assert (=> b!6804129 (= res!2780420 (matchZipper!2609 lt!2448380 (_1!36901 (get!23004 lt!2448629))))))

(declare-fun b!6804130 () Bool)

(assert (=> b!6804130 (= e!4106076 (= (++!14792 (_1!36901 (get!23004 lt!2448629)) (_2!36901 (get!23004 lt!2448629))) s!2326))))

(declare-fun b!6804131 () Bool)

(assert (=> b!6804131 (= e!4106080 (matchZipper!2609 lt!2448387 (t!379899 s!2326)))))

(declare-fun b!6804132 () Bool)

(assert (=> b!6804132 (= e!4106077 (Some!16509 (tuple2!67197 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (t!379899 s!2326))))))

(declare-fun b!6804133 () Bool)

(declare-fun lt!2448628 () Unit!159937)

(declare-fun lt!2448630 () Unit!159937)

(assert (=> b!6804133 (= lt!2448628 lt!2448630)))

(assert (=> b!6804133 (= (++!14792 (++!14792 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (Cons!66044 (h!72492 (t!379899 s!2326)) Nil!66044)) (t!379899 (t!379899 s!2326))) s!2326)))

(assert (=> b!6804133 (= lt!2448630 (lemmaMoveElementToOtherListKeepsConcatEq!2744 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (h!72492 (t!379899 s!2326)) (t!379899 (t!379899 s!2326)) s!2326))))

(assert (=> b!6804133 (= e!4106079 (findConcatSeparationZippers!232 lt!2448380 lt!2448387 (++!14792 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (Cons!66044 (h!72492 (t!379899 s!2326)) Nil!66044)) (t!379899 (t!379899 s!2326)) s!2326))))

(declare-fun b!6804134 () Bool)

(declare-fun res!2780417 () Bool)

(assert (=> b!6804134 (=> (not res!2780417) (not e!4106076))))

(assert (=> b!6804134 (= res!2780417 (matchZipper!2609 lt!2448387 (_2!36901 (get!23004 lt!2448629))))))

(declare-fun b!6804135 () Bool)

(assert (=> b!6804135 (= e!4106077 e!4106079)))

(declare-fun c!1265408 () Bool)

(assert (=> b!6804135 (= c!1265408 ((_ is Nil!66044) (t!379899 s!2326)))))

(assert (= (and d!2138199 res!2780421) b!6804131))

(assert (= (and d!2138199 c!1265409) b!6804132))

(assert (= (and d!2138199 (not c!1265409)) b!6804135))

(assert (= (and b!6804135 c!1265408) b!6804127))

(assert (= (and b!6804135 (not c!1265408)) b!6804133))

(assert (= (and d!2138199 res!2780419) b!6804129))

(assert (= (and b!6804129 res!2780420) b!6804134))

(assert (= (and b!6804134 res!2780417) b!6804130))

(assert (= (and d!2138199 (not res!2780418)) b!6804128))

(assert (=> b!6804133 m!7549066))

(assert (=> b!6804133 m!7550296))

(assert (=> b!6804133 m!7550296))

(assert (=> b!6804133 m!7550298))

(assert (=> b!6804133 m!7549066))

(assert (=> b!6804133 m!7550300))

(assert (=> b!6804133 m!7550296))

(declare-fun m!7550394 () Bool)

(assert (=> b!6804133 m!7550394))

(declare-fun m!7550396 () Bool)

(assert (=> d!2138199 m!7550396))

(assert (=> d!2138199 m!7549066))

(declare-fun m!7550398 () Bool)

(assert (=> d!2138199 m!7550398))

(assert (=> d!2138199 m!7549066))

(assert (=> d!2138199 m!7549068))

(declare-fun m!7550400 () Bool)

(assert (=> b!6804130 m!7550400))

(declare-fun m!7550402 () Bool)

(assert (=> b!6804130 m!7550402))

(assert (=> b!6804128 m!7550396))

(assert (=> b!6804134 m!7550400))

(declare-fun m!7550404 () Bool)

(assert (=> b!6804134 m!7550404))

(assert (=> b!6804129 m!7550400))

(declare-fun m!7550406 () Bool)

(assert (=> b!6804129 m!7550406))

(declare-fun m!7550408 () Bool)

(assert (=> b!6804131 m!7550408))

(assert (=> b!6803102 d!2138199))

(declare-fun d!2138201 () Bool)

(assert (=> d!2138201 true))

(declare-fun setRes!46656 () Bool)

(assert (=> d!2138201 setRes!46656))

(declare-fun condSetEmpty!46656 () Bool)

(declare-fun res!2780422 () (InoxSet Context!12014))

(assert (=> d!2138201 (= condSetEmpty!46656 (= res!2780422 ((as const (Array Context!12014 Bool)) false)))))

(assert (=> d!2138201 (= (choose!50708 lt!2448387 lambda!383747) res!2780422)))

(declare-fun setIsEmpty!46656 () Bool)

(assert (=> setIsEmpty!46656 setRes!46656))

(declare-fun tp!1862593 () Bool)

(declare-fun setElem!46656 () Context!12014)

(declare-fun e!4106081 () Bool)

(declare-fun setNonEmpty!46656 () Bool)

(assert (=> setNonEmpty!46656 (= setRes!46656 (and tp!1862593 (inv!84804 setElem!46656) e!4106081))))

(declare-fun setRest!46656 () (InoxSet Context!12014))

(assert (=> setNonEmpty!46656 (= res!2780422 ((_ map or) (store ((as const (Array Context!12014 Bool)) false) setElem!46656 true) setRest!46656))))

(declare-fun b!6804136 () Bool)

(declare-fun tp!1862592 () Bool)

(assert (=> b!6804136 (= e!4106081 tp!1862592)))

(assert (= (and d!2138201 condSetEmpty!46656) setIsEmpty!46656))

(assert (= (and d!2138201 (not condSetEmpty!46656)) setNonEmpty!46656))

(assert (= setNonEmpty!46656 b!6804136))

(declare-fun m!7550410 () Bool)

(assert (=> setNonEmpty!46656 m!7550410))

(assert (=> d!2137495 d!2138201))

(declare-fun d!2138203 () Bool)

(assert (=> d!2138203 (= (Exists!3691 (ite c!1264915 lambda!383760 lambda!383761)) (choose!50721 (ite c!1264915 lambda!383760 lambda!383761)))))

(declare-fun bs!1813733 () Bool)

(assert (= bs!1813733 d!2138203))

(declare-fun m!7550412 () Bool)

(assert (=> bs!1813733 m!7550412))

(assert (=> bm!618081 d!2138203))

(assert (=> bm!618102 d!2137591))

(declare-fun d!2138205 () Bool)

(assert (=> d!2138205 (= (Exists!3691 lambda!383810) (choose!50721 lambda!383810))))

(declare-fun bs!1813734 () Bool)

(assert (= bs!1813734 d!2138205))

(declare-fun m!7550414 () Bool)

(assert (=> bs!1813734 m!7550414))

(assert (=> d!2137575 d!2138205))

(declare-fun d!2138207 () Bool)

(assert (=> d!2138207 (= (Exists!3691 lambda!383813) (choose!50721 lambda!383813))))

(declare-fun bs!1813735 () Bool)

(assert (= bs!1813735 d!2138207))

(declare-fun m!7550416 () Bool)

(assert (=> bs!1813735 m!7550416))

(assert (=> d!2137575 d!2138207))

(declare-fun bs!1813736 () Bool)

(declare-fun d!2138209 () Bool)

(assert (= bs!1813736 (and d!2138209 b!6802354)))

(declare-fun lambda!383911 () Int)

(assert (=> bs!1813736 (not (= lambda!383911 lambda!383761))))

(declare-fun bs!1813737 () Bool)

(assert (= bs!1813737 (and d!2138209 b!6802908)))

(assert (=> bs!1813737 (not (= lambda!383911 lambda!383836))))

(declare-fun bs!1813738 () Bool)

(assert (= bs!1813738 (and d!2138209 d!2137583)))

(assert (=> bs!1813738 (= (= r!7292 (Star!16623 (reg!16952 r!7292))) (= lambda!383911 lambda!383822))))

(declare-fun bs!1813739 () Bool)

(assert (= bs!1813739 (and d!2138209 d!2137985)))

(assert (=> bs!1813739 (= (= r!7292 (Star!16623 (reg!16952 r!7292))) (= lambda!383911 lambda!383894))))

(declare-fun bs!1813740 () Bool)

(assert (= bs!1813740 (and d!2138209 b!6803763)))

(assert (=> bs!1813740 (not (= lambda!383911 lambda!383900))))

(declare-fun bs!1813741 () Bool)

(assert (= bs!1813741 (and d!2138209 b!6802221)))

(assert (=> bs!1813741 (= lambda!383911 lambda!383744)))

(declare-fun bs!1813742 () Bool)

(assert (= bs!1813742 (and d!2138209 b!6802906)))

(assert (=> bs!1813742 (not (= lambda!383911 lambda!383835))))

(declare-fun bs!1813743 () Bool)

(assert (= bs!1813743 (and d!2138209 d!2137575)))

(assert (=> bs!1813743 (not (= lambda!383911 lambda!383813))))

(declare-fun bs!1813744 () Bool)

(assert (= bs!1813744 (and d!2138209 b!6802352)))

(assert (=> bs!1813744 (not (= lambda!383911 lambda!383760))))

(assert (=> bs!1813741 (not (= lambda!383911 lambda!383745))))

(declare-fun bs!1813745 () Bool)

(assert (= bs!1813745 (and d!2138209 d!2137603)))

(assert (=> bs!1813745 (= lambda!383911 lambda!383830)))

(assert (=> bs!1813738 (not (= lambda!383911 lambda!383825))))

(assert (=> bs!1813739 (not (= lambda!383911 lambda!383896))))

(assert (=> bs!1813743 (= lambda!383911 lambda!383810)))

(assert (=> bs!1813741 (not (= lambda!383911 lambda!383746))))

(declare-fun bs!1813746 () Bool)

(assert (= bs!1813746 (and d!2138209 b!6803761)))

(assert (=> bs!1813746 (not (= lambda!383911 lambda!383898))))

(assert (=> d!2138209 true))

(assert (=> d!2138209 true))

(assert (=> d!2138209 true))

(declare-fun lambda!383912 () Int)

(assert (=> bs!1813736 (= (and (= (reg!16952 r!7292) (regOne!33758 lt!2448378)) (= r!7292 (regTwo!33758 lt!2448378))) (= lambda!383912 lambda!383761))))

(assert (=> bs!1813737 (= (and (= (reg!16952 r!7292) (regOne!33758 r!7292)) (= r!7292 (regTwo!33758 r!7292))) (= lambda!383912 lambda!383836))))

(assert (=> bs!1813738 (not (= lambda!383912 lambda!383822))))

(assert (=> bs!1813739 (not (= lambda!383912 lambda!383894))))

(assert (=> bs!1813740 (= (and (= (reg!16952 r!7292) (regOne!33758 (regTwo!33759 lt!2448378))) (= r!7292 (regTwo!33758 (regTwo!33759 lt!2448378)))) (= lambda!383912 lambda!383900))))

(assert (=> bs!1813741 (not (= lambda!383912 lambda!383744))))

(assert (=> bs!1813742 (not (= lambda!383912 lambda!383835))))

(assert (=> bs!1813743 (= lambda!383912 lambda!383813)))

(assert (=> bs!1813744 (not (= lambda!383912 lambda!383760))))

(assert (=> bs!1813745 (not (= lambda!383912 lambda!383830))))

(assert (=> bs!1813738 (not (= lambda!383912 lambda!383825))))

(assert (=> bs!1813739 (not (= lambda!383912 lambda!383896))))

(assert (=> bs!1813743 (not (= lambda!383912 lambda!383810))))

(assert (=> bs!1813741 (= lambda!383912 lambda!383746)))

(assert (=> bs!1813746 (not (= lambda!383912 lambda!383898))))

(declare-fun bs!1813747 () Bool)

(assert (= bs!1813747 d!2138209))

(assert (=> bs!1813747 (not (= lambda!383912 lambda!383911))))

(assert (=> bs!1813741 (not (= lambda!383912 lambda!383745))))

(assert (=> d!2138209 true))

(assert (=> d!2138209 true))

(assert (=> d!2138209 true))

(assert (=> d!2138209 (= (Exists!3691 lambda!383911) (Exists!3691 lambda!383912))))

(assert (=> d!2138209 true))

(declare-fun _$90!2704 () Unit!159937)

(assert (=> d!2138209 (= (choose!50723 (reg!16952 r!7292) r!7292 s!2326) _$90!2704)))

(declare-fun m!7550418 () Bool)

(assert (=> bs!1813747 m!7550418))

(declare-fun m!7550420 () Bool)

(assert (=> bs!1813747 m!7550420))

(assert (=> d!2137575 d!2138209))

(assert (=> d!2137575 d!2138039))

(declare-fun bs!1813748 () Bool)

(declare-fun d!2138211 () Bool)

(assert (= bs!1813748 (and d!2138211 d!2137569)))

(declare-fun lambda!383913 () Int)

(assert (=> bs!1813748 (= lambda!383913 lambda!383802)))

(declare-fun bs!1813749 () Bool)

(assert (= bs!1813749 (and d!2138211 d!2137669)))

(assert (=> bs!1813749 (= lambda!383913 lambda!383843)))

(declare-fun bs!1813750 () Bool)

(assert (= bs!1813750 (and d!2138211 b!6802233)))

(assert (=> bs!1813750 (= lambda!383913 lambda!383749)))

(declare-fun bs!1813751 () Bool)

(assert (= bs!1813751 (and d!2138211 d!2138179)))

(assert (=> bs!1813751 (= lambda!383913 lambda!383905)))

(declare-fun bs!1813752 () Bool)

(assert (= bs!1813752 (and d!2138211 d!2138077)))

(assert (=> bs!1813752 (= lambda!383913 lambda!383901)))

(declare-fun bs!1813753 () Bool)

(assert (= bs!1813753 (and d!2138211 d!2137533)))

(assert (=> bs!1813753 (= lambda!383913 lambda!383782)))

(declare-fun bs!1813754 () Bool)

(assert (= bs!1813754 (and d!2138211 d!2137537)))

(assert (=> bs!1813754 (= lambda!383913 lambda!383783)))

(declare-fun bs!1813755 () Bool)

(assert (= bs!1813755 (and d!2138211 d!2137547)))

(assert (=> bs!1813755 (= lambda!383913 lambda!383787)))

(declare-fun bs!1813756 () Bool)

(assert (= bs!1813756 (and d!2138211 d!2137557)))

(assert (=> bs!1813756 (= lambda!383913 lambda!383797)))

(declare-fun b!6804145 () Bool)

(declare-fun e!4106088 () Bool)

(declare-fun lt!2448631 () Regex!16623)

(assert (=> b!6804145 (= e!4106088 (isConcat!1503 lt!2448631))))

(declare-fun e!4106091 () Bool)

(assert (=> d!2138211 e!4106091))

(declare-fun res!2780432 () Bool)

(assert (=> d!2138211 (=> (not res!2780432) (not e!4106091))))

(assert (=> d!2138211 (= res!2780432 (validRegex!8359 lt!2448631))))

(declare-fun e!4106087 () Regex!16623)

(assert (=> d!2138211 (= lt!2448631 e!4106087)))

(declare-fun c!1265412 () Bool)

(declare-fun e!4106090 () Bool)

(assert (=> d!2138211 (= c!1265412 e!4106090)))

(declare-fun res!2780431 () Bool)

(assert (=> d!2138211 (=> (not res!2780431) (not e!4106090))))

(assert (=> d!2138211 (= res!2780431 ((_ is Cons!66045) (t!379900 (exprs!6507 (h!72494 zl!343)))))))

(assert (=> d!2138211 (forall!15815 (t!379900 (exprs!6507 (h!72494 zl!343))) lambda!383913)))

(assert (=> d!2138211 (= (generalisedConcat!2220 (t!379900 (exprs!6507 (h!72494 zl!343)))) lt!2448631)))

(declare-fun b!6804146 () Bool)

(declare-fun e!4106086 () Bool)

(assert (=> b!6804146 (= e!4106091 e!4106086)))

(declare-fun c!1265410 () Bool)

(assert (=> b!6804146 (= c!1265410 (isEmpty!38428 (t!379900 (exprs!6507 (h!72494 zl!343)))))))

(declare-fun b!6804147 () Bool)

(declare-fun e!4106089 () Regex!16623)

(assert (=> b!6804147 (= e!4106087 e!4106089)))

(declare-fun c!1265411 () Bool)

(assert (=> b!6804147 (= c!1265411 ((_ is Cons!66045) (t!379900 (exprs!6507 (h!72494 zl!343)))))))

(declare-fun b!6804148 () Bool)

(assert (=> b!6804148 (= e!4106087 (h!72493 (t!379900 (exprs!6507 (h!72494 zl!343)))))))

(declare-fun b!6804149 () Bool)

(assert (=> b!6804149 (= e!4106086 (isEmptyExpr!1980 lt!2448631))))

(declare-fun b!6804150 () Bool)

(assert (=> b!6804150 (= e!4106086 e!4106088)))

(declare-fun c!1265413 () Bool)

(assert (=> b!6804150 (= c!1265413 (isEmpty!38428 (tail!12742 (t!379900 (exprs!6507 (h!72494 zl!343))))))))

(declare-fun b!6804151 () Bool)

(assert (=> b!6804151 (= e!4106088 (= lt!2448631 (head!13657 (t!379900 (exprs!6507 (h!72494 zl!343))))))))

(declare-fun b!6804152 () Bool)

(assert (=> b!6804152 (= e!4106089 (Concat!25468 (h!72493 (t!379900 (exprs!6507 (h!72494 zl!343)))) (generalisedConcat!2220 (t!379900 (t!379900 (exprs!6507 (h!72494 zl!343)))))))))

(declare-fun b!6804153 () Bool)

(assert (=> b!6804153 (= e!4106090 (isEmpty!38428 (t!379900 (t!379900 (exprs!6507 (h!72494 zl!343))))))))

(declare-fun b!6804154 () Bool)

(assert (=> b!6804154 (= e!4106089 EmptyExpr!16623)))

(assert (= (and d!2138211 res!2780431) b!6804153))

(assert (= (and d!2138211 c!1265412) b!6804148))

(assert (= (and d!2138211 (not c!1265412)) b!6804147))

(assert (= (and b!6804147 c!1265411) b!6804152))

(assert (= (and b!6804147 (not c!1265411)) b!6804154))

(assert (= (and d!2138211 res!2780432) b!6804146))

(assert (= (and b!6804146 c!1265410) b!6804149))

(assert (= (and b!6804146 (not c!1265410)) b!6804150))

(assert (= (and b!6804150 c!1265413) b!6804151))

(assert (= (and b!6804150 (not c!1265413)) b!6804145))

(declare-fun m!7550422 () Bool)

(assert (=> b!6804150 m!7550422))

(assert (=> b!6804150 m!7550422))

(declare-fun m!7550424 () Bool)

(assert (=> b!6804150 m!7550424))

(declare-fun m!7550426 () Bool)

(assert (=> b!6804151 m!7550426))

(declare-fun m!7550428 () Bool)

(assert (=> b!6804145 m!7550428))

(declare-fun m!7550430 () Bool)

(assert (=> b!6804153 m!7550430))

(declare-fun m!7550432 () Bool)

(assert (=> d!2138211 m!7550432))

(declare-fun m!7550434 () Bool)

(assert (=> d!2138211 m!7550434))

(declare-fun m!7550436 () Bool)

(assert (=> b!6804152 m!7550436))

(assert (=> b!6804146 m!7548926))

(declare-fun m!7550438 () Bool)

(assert (=> b!6804149 m!7550438))

(assert (=> b!6802673 d!2138211))

(declare-fun bs!1813757 () Bool)

(declare-fun d!2138213 () Bool)

(assert (= bs!1813757 (and d!2138213 d!2137949)))

(declare-fun lambda!383914 () Int)

(assert (=> bs!1813757 (= lambda!383914 lambda!383885)))

(declare-fun bs!1813758 () Bool)

(assert (= bs!1813758 (and d!2138213 d!2137963)))

(assert (=> bs!1813758 (= lambda!383914 lambda!383886)))

(declare-fun bs!1813759 () Bool)

(assert (= bs!1813759 (and d!2138213 d!2138185)))

(assert (=> bs!1813759 (= lambda!383914 lambda!383906)))

(assert (=> d!2138213 (= (nullableZipper!2329 lt!2448380) (exists!2741 lt!2448380 lambda!383914))))

(declare-fun bs!1813760 () Bool)

(assert (= bs!1813760 d!2138213))

(declare-fun m!7550440 () Bool)

(assert (=> bs!1813760 m!7550440))

(assert (=> b!6802306 d!2138213))

(declare-fun bs!1813761 () Bool)

(declare-fun d!2138215 () Bool)

(assert (= bs!1813761 (and d!2138215 d!2137569)))

(declare-fun lambda!383915 () Int)

(assert (=> bs!1813761 (= lambda!383915 lambda!383802)))

(declare-fun bs!1813762 () Bool)

(assert (= bs!1813762 (and d!2138215 d!2137669)))

(assert (=> bs!1813762 (= lambda!383915 lambda!383843)))

(declare-fun bs!1813763 () Bool)

(assert (= bs!1813763 (and d!2138215 b!6802233)))

(assert (=> bs!1813763 (= lambda!383915 lambda!383749)))

(declare-fun bs!1813764 () Bool)

(assert (= bs!1813764 (and d!2138215 d!2138179)))

(assert (=> bs!1813764 (= lambda!383915 lambda!383905)))

(declare-fun bs!1813765 () Bool)

(assert (= bs!1813765 (and d!2138215 d!2138077)))

(assert (=> bs!1813765 (= lambda!383915 lambda!383901)))

(declare-fun bs!1813766 () Bool)

(assert (= bs!1813766 (and d!2138215 d!2138211)))

(assert (=> bs!1813766 (= lambda!383915 lambda!383913)))

(declare-fun bs!1813767 () Bool)

(assert (= bs!1813767 (and d!2138215 d!2137533)))

(assert (=> bs!1813767 (= lambda!383915 lambda!383782)))

(declare-fun bs!1813768 () Bool)

(assert (= bs!1813768 (and d!2138215 d!2137537)))

(assert (=> bs!1813768 (= lambda!383915 lambda!383783)))

(declare-fun bs!1813769 () Bool)

(assert (= bs!1813769 (and d!2138215 d!2137547)))

(assert (=> bs!1813769 (= lambda!383915 lambda!383787)))

(declare-fun bs!1813770 () Bool)

(assert (= bs!1813770 (and d!2138215 d!2137557)))

(assert (=> bs!1813770 (= lambda!383915 lambda!383797)))

(assert (=> d!2138215 (= (inv!84804 (h!72494 (t!379901 zl!343))) (forall!15815 (exprs!6507 (h!72494 (t!379901 zl!343))) lambda!383915))))

(declare-fun bs!1813771 () Bool)

(assert (= bs!1813771 d!2138215))

(declare-fun m!7550442 () Bool)

(assert (=> bs!1813771 m!7550442))

(assert (=> b!6803141 d!2138215))

(declare-fun bs!1813772 () Bool)

(declare-fun b!6804157 () Bool)

(assert (= bs!1813772 (and b!6804157 b!6802354)))

(declare-fun lambda!383916 () Int)

(assert (=> bs!1813772 (not (= lambda!383916 lambda!383761))))

(declare-fun bs!1813773 () Bool)

(assert (= bs!1813773 (and b!6804157 b!6802908)))

(assert (=> bs!1813773 (not (= lambda!383916 lambda!383836))))

(declare-fun bs!1813774 () Bool)

(assert (= bs!1813774 (and b!6804157 d!2137583)))

(assert (=> bs!1813774 (not (= lambda!383916 lambda!383822))))

(declare-fun bs!1813775 () Bool)

(assert (= bs!1813775 (and b!6804157 d!2137985)))

(assert (=> bs!1813775 (not (= lambda!383916 lambda!383894))))

(declare-fun bs!1813776 () Bool)

(assert (= bs!1813776 (and b!6804157 b!6803763)))

(assert (=> bs!1813776 (not (= lambda!383916 lambda!383900))))

(declare-fun bs!1813777 () Bool)

(assert (= bs!1813777 (and b!6804157 b!6802221)))

(assert (=> bs!1813777 (not (= lambda!383916 lambda!383744))))

(declare-fun bs!1813778 () Bool)

(assert (= bs!1813778 (and b!6804157 d!2138209)))

(assert (=> bs!1813778 (not (= lambda!383916 lambda!383912))))

(declare-fun bs!1813779 () Bool)

(assert (= bs!1813779 (and b!6804157 b!6802906)))

(assert (=> bs!1813779 (= (and (= (reg!16952 (regOne!33759 r!7292)) (reg!16952 r!7292)) (= (regOne!33759 r!7292) r!7292)) (= lambda!383916 lambda!383835))))

(declare-fun bs!1813780 () Bool)

(assert (= bs!1813780 (and b!6804157 d!2137575)))

(assert (=> bs!1813780 (not (= lambda!383916 lambda!383813))))

(declare-fun bs!1813781 () Bool)

(assert (= bs!1813781 (and b!6804157 b!6802352)))

(assert (=> bs!1813781 (= (and (= (reg!16952 (regOne!33759 r!7292)) (reg!16952 lt!2448378)) (= (regOne!33759 r!7292) lt!2448378)) (= lambda!383916 lambda!383760))))

(declare-fun bs!1813782 () Bool)

(assert (= bs!1813782 (and b!6804157 d!2137603)))

(assert (=> bs!1813782 (not (= lambda!383916 lambda!383830))))

(assert (=> bs!1813774 (= (and (= (reg!16952 (regOne!33759 r!7292)) (reg!16952 r!7292)) (= (regOne!33759 r!7292) (Star!16623 (reg!16952 r!7292)))) (= lambda!383916 lambda!383825))))

(assert (=> bs!1813775 (= (and (= (reg!16952 (regOne!33759 r!7292)) (reg!16952 r!7292)) (= (regOne!33759 r!7292) (Star!16623 (reg!16952 r!7292)))) (= lambda!383916 lambda!383896))))

(assert (=> bs!1813780 (not (= lambda!383916 lambda!383810))))

(assert (=> bs!1813777 (not (= lambda!383916 lambda!383746))))

(declare-fun bs!1813783 () Bool)

(assert (= bs!1813783 (and b!6804157 b!6803761)))

(assert (=> bs!1813783 (= (and (= (reg!16952 (regOne!33759 r!7292)) (reg!16952 (regTwo!33759 lt!2448378))) (= (regOne!33759 r!7292) (regTwo!33759 lt!2448378))) (= lambda!383916 lambda!383898))))

(assert (=> bs!1813778 (not (= lambda!383916 lambda!383911))))

(assert (=> bs!1813777 (= (and (= (reg!16952 (regOne!33759 r!7292)) (reg!16952 r!7292)) (= (regOne!33759 r!7292) r!7292)) (= lambda!383916 lambda!383745))))

(assert (=> b!6804157 true))

(assert (=> b!6804157 true))

(declare-fun bs!1813784 () Bool)

(declare-fun b!6804159 () Bool)

(assert (= bs!1813784 (and b!6804159 b!6802354)))

(declare-fun lambda!383917 () Int)

(assert (=> bs!1813784 (= (and (= (regOne!33758 (regOne!33759 r!7292)) (regOne!33758 lt!2448378)) (= (regTwo!33758 (regOne!33759 r!7292)) (regTwo!33758 lt!2448378))) (= lambda!383917 lambda!383761))))

(declare-fun bs!1813785 () Bool)

(assert (= bs!1813785 (and b!6804159 b!6802908)))

(assert (=> bs!1813785 (= (and (= (regOne!33758 (regOne!33759 r!7292)) (regOne!33758 r!7292)) (= (regTwo!33758 (regOne!33759 r!7292)) (regTwo!33758 r!7292))) (= lambda!383917 lambda!383836))))

(declare-fun bs!1813786 () Bool)

(assert (= bs!1813786 (and b!6804159 d!2137583)))

(assert (=> bs!1813786 (not (= lambda!383917 lambda!383822))))

(declare-fun bs!1813787 () Bool)

(assert (= bs!1813787 (and b!6804159 d!2137985)))

(assert (=> bs!1813787 (not (= lambda!383917 lambda!383894))))

(declare-fun bs!1813788 () Bool)

(assert (= bs!1813788 (and b!6804159 b!6803763)))

(assert (=> bs!1813788 (= (and (= (regOne!33758 (regOne!33759 r!7292)) (regOne!33758 (regTwo!33759 lt!2448378))) (= (regTwo!33758 (regOne!33759 r!7292)) (regTwo!33758 (regTwo!33759 lt!2448378)))) (= lambda!383917 lambda!383900))))

(declare-fun bs!1813789 () Bool)

(assert (= bs!1813789 (and b!6804159 b!6802221)))

(assert (=> bs!1813789 (not (= lambda!383917 lambda!383744))))

(declare-fun bs!1813790 () Bool)

(assert (= bs!1813790 (and b!6804159 d!2138209)))

(assert (=> bs!1813790 (= (and (= (regOne!33758 (regOne!33759 r!7292)) (reg!16952 r!7292)) (= (regTwo!33758 (regOne!33759 r!7292)) r!7292)) (= lambda!383917 lambda!383912))))

(declare-fun bs!1813791 () Bool)

(assert (= bs!1813791 (and b!6804159 b!6802906)))

(assert (=> bs!1813791 (not (= lambda!383917 lambda!383835))))

(declare-fun bs!1813792 () Bool)

(assert (= bs!1813792 (and b!6804159 d!2137575)))

(assert (=> bs!1813792 (= (and (= (regOne!33758 (regOne!33759 r!7292)) (reg!16952 r!7292)) (= (regTwo!33758 (regOne!33759 r!7292)) r!7292)) (= lambda!383917 lambda!383813))))

(declare-fun bs!1813793 () Bool)

(assert (= bs!1813793 (and b!6804159 b!6802352)))

(assert (=> bs!1813793 (not (= lambda!383917 lambda!383760))))

(declare-fun bs!1813794 () Bool)

(assert (= bs!1813794 (and b!6804159 d!2137603)))

(assert (=> bs!1813794 (not (= lambda!383917 lambda!383830))))

(assert (=> bs!1813786 (not (= lambda!383917 lambda!383825))))

(declare-fun bs!1813795 () Bool)

(assert (= bs!1813795 (and b!6804159 b!6804157)))

(assert (=> bs!1813795 (not (= lambda!383917 lambda!383916))))

(assert (=> bs!1813787 (not (= lambda!383917 lambda!383896))))

(assert (=> bs!1813792 (not (= lambda!383917 lambda!383810))))

(assert (=> bs!1813789 (= (and (= (regOne!33758 (regOne!33759 r!7292)) (reg!16952 r!7292)) (= (regTwo!33758 (regOne!33759 r!7292)) r!7292)) (= lambda!383917 lambda!383746))))

(declare-fun bs!1813796 () Bool)

(assert (= bs!1813796 (and b!6804159 b!6803761)))

(assert (=> bs!1813796 (not (= lambda!383917 lambda!383898))))

(assert (=> bs!1813790 (not (= lambda!383917 lambda!383911))))

(assert (=> bs!1813789 (not (= lambda!383917 lambda!383745))))

(assert (=> b!6804159 true))

(assert (=> b!6804159 true))

(declare-fun b!6804155 () Bool)

(declare-fun e!4106097 () Bool)

(declare-fun call!618356 () Bool)

(assert (=> b!6804155 (= e!4106097 call!618356)))

(declare-fun b!6804156 () Bool)

(declare-fun e!4106095 () Bool)

(assert (=> b!6804156 (= e!4106097 e!4106095)))

(declare-fun res!2780435 () Bool)

(assert (=> b!6804156 (= res!2780435 (not ((_ is EmptyLang!16623) (regOne!33759 r!7292))))))

(assert (=> b!6804156 (=> (not res!2780435) (not e!4106095))))

(declare-fun e!4106093 () Bool)

(declare-fun call!618357 () Bool)

(assert (=> b!6804157 (= e!4106093 call!618357)))

(declare-fun b!6804158 () Bool)

(declare-fun res!2780434 () Bool)

(assert (=> b!6804158 (=> res!2780434 e!4106093)))

(assert (=> b!6804158 (= res!2780434 call!618356)))

(declare-fun e!4106096 () Bool)

(assert (=> b!6804158 (= e!4106096 e!4106093)))

(declare-fun bm!618351 () Bool)

(assert (=> bm!618351 (= call!618356 (isEmpty!38426 s!2326))))

(declare-fun c!1265415 () Bool)

(declare-fun bm!618352 () Bool)

(assert (=> bm!618352 (= call!618357 (Exists!3691 (ite c!1265415 lambda!383916 lambda!383917)))))

(declare-fun d!2138217 () Bool)

(declare-fun c!1265416 () Bool)

(assert (=> d!2138217 (= c!1265416 ((_ is EmptyExpr!16623) (regOne!33759 r!7292)))))

(assert (=> d!2138217 (= (matchRSpec!3724 (regOne!33759 r!7292) s!2326) e!4106097)))

(assert (=> b!6804159 (= e!4106096 call!618357)))

(declare-fun b!6804160 () Bool)

(declare-fun c!1265414 () Bool)

(assert (=> b!6804160 (= c!1265414 ((_ is ElementMatch!16623) (regOne!33759 r!7292)))))

(declare-fun e!4106098 () Bool)

(assert (=> b!6804160 (= e!4106095 e!4106098)))

(declare-fun b!6804161 () Bool)

(declare-fun e!4106092 () Bool)

(assert (=> b!6804161 (= e!4106092 e!4106096)))

(assert (=> b!6804161 (= c!1265415 ((_ is Star!16623) (regOne!33759 r!7292)))))

(declare-fun b!6804162 () Bool)

(declare-fun c!1265417 () Bool)

(assert (=> b!6804162 (= c!1265417 ((_ is Union!16623) (regOne!33759 r!7292)))))

(assert (=> b!6804162 (= e!4106098 e!4106092)))

(declare-fun b!6804163 () Bool)

(declare-fun e!4106094 () Bool)

(assert (=> b!6804163 (= e!4106092 e!4106094)))

(declare-fun res!2780433 () Bool)

(assert (=> b!6804163 (= res!2780433 (matchRSpec!3724 (regOne!33759 (regOne!33759 r!7292)) s!2326))))

(assert (=> b!6804163 (=> res!2780433 e!4106094)))

(declare-fun b!6804164 () Bool)

(assert (=> b!6804164 (= e!4106098 (= s!2326 (Cons!66044 (c!1264881 (regOne!33759 r!7292)) Nil!66044)))))

(declare-fun b!6804165 () Bool)

(assert (=> b!6804165 (= e!4106094 (matchRSpec!3724 (regTwo!33759 (regOne!33759 r!7292)) s!2326))))

(assert (= (and d!2138217 c!1265416) b!6804155))

(assert (= (and d!2138217 (not c!1265416)) b!6804156))

(assert (= (and b!6804156 res!2780435) b!6804160))

(assert (= (and b!6804160 c!1265414) b!6804164))

(assert (= (and b!6804160 (not c!1265414)) b!6804162))

(assert (= (and b!6804162 c!1265417) b!6804163))

(assert (= (and b!6804162 (not c!1265417)) b!6804161))

(assert (= (and b!6804163 (not res!2780433)) b!6804165))

(assert (= (and b!6804161 c!1265415) b!6804158))

(assert (= (and b!6804161 (not c!1265415)) b!6804159))

(assert (= (and b!6804158 (not res!2780434)) b!6804157))

(assert (= (or b!6804157 b!6804159) bm!618352))

(assert (= (or b!6804155 b!6804158) bm!618351))

(assert (=> bm!618351 m!7548460))

(declare-fun m!7550444 () Bool)

(assert (=> bm!618352 m!7550444))

(declare-fun m!7550446 () Bool)

(assert (=> b!6804163 m!7550446))

(declare-fun m!7550448 () Bool)

(assert (=> b!6804165 m!7550448))

(assert (=> b!6802912 d!2138217))

(declare-fun d!2138219 () Bool)

(declare-fun res!2780440 () Bool)

(declare-fun e!4106103 () Bool)

(assert (=> d!2138219 (=> res!2780440 e!4106103)))

(assert (=> d!2138219 (= res!2780440 ((_ is Nil!66046) lt!2448561))))

(assert (=> d!2138219 (= (noDuplicate!2408 lt!2448561) e!4106103)))

(declare-fun b!6804170 () Bool)

(declare-fun e!4106104 () Bool)

(assert (=> b!6804170 (= e!4106103 e!4106104)))

(declare-fun res!2780441 () Bool)

(assert (=> b!6804170 (=> (not res!2780441) (not e!4106104))))

(declare-fun contains!20299 (List!66170 Context!12014) Bool)

(assert (=> b!6804170 (= res!2780441 (not (contains!20299 (t!379901 lt!2448561) (h!72494 lt!2448561))))))

(declare-fun b!6804171 () Bool)

(assert (=> b!6804171 (= e!4106104 (noDuplicate!2408 (t!379901 lt!2448561)))))

(assert (= (and d!2138219 (not res!2780440)) b!6804170))

(assert (= (and b!6804170 res!2780441) b!6804171))

(declare-fun m!7550450 () Bool)

(assert (=> b!6804170 m!7550450))

(declare-fun m!7550452 () Bool)

(assert (=> b!6804171 m!7550452))

(assert (=> d!2137673 d!2138219))

(declare-fun d!2138221 () Bool)

(declare-fun e!4106111 () Bool)

(assert (=> d!2138221 e!4106111))

(declare-fun res!2780447 () Bool)

(assert (=> d!2138221 (=> (not res!2780447) (not e!4106111))))

(declare-fun res!2780446 () List!66170)

(assert (=> d!2138221 (= res!2780447 (noDuplicate!2408 res!2780446))))

(declare-fun e!4106113 () Bool)

(assert (=> d!2138221 e!4106113))

(assert (=> d!2138221 (= (choose!50731 z!1189) res!2780446)))

(declare-fun b!6804179 () Bool)

(declare-fun e!4106112 () Bool)

(declare-fun tp!1862598 () Bool)

(assert (=> b!6804179 (= e!4106112 tp!1862598)))

(declare-fun b!6804178 () Bool)

(declare-fun tp!1862599 () Bool)

(assert (=> b!6804178 (= e!4106113 (and (inv!84804 (h!72494 res!2780446)) e!4106112 tp!1862599))))

(declare-fun b!6804180 () Bool)

(assert (=> b!6804180 (= e!4106111 (= (content!12907 res!2780446) z!1189))))

(assert (= b!6804178 b!6804179))

(assert (= (and d!2138221 ((_ is Cons!66046) res!2780446)) b!6804178))

(assert (= (and d!2138221 res!2780447) b!6804180))

(declare-fun m!7550454 () Bool)

(assert (=> d!2138221 m!7550454))

(declare-fun m!7550456 () Bool)

(assert (=> b!6804178 m!7550456))

(declare-fun m!7550458 () Bool)

(assert (=> b!6804180 m!7550458))

(assert (=> d!2137673 d!2138221))

(declare-fun d!2138223 () Bool)

(assert (=> d!2138223 (= (isConcat!1503 lt!2448477) ((_ is Concat!25468) lt!2448477))))

(assert (=> b!6802666 d!2138223))

(declare-fun bs!1813797 () Bool)

(declare-fun d!2138225 () Bool)

(assert (= bs!1813797 (and d!2138225 d!2137569)))

(declare-fun lambda!383918 () Int)

(assert (=> bs!1813797 (= lambda!383918 lambda!383802)))

(declare-fun bs!1813798 () Bool)

(assert (= bs!1813798 (and d!2138225 d!2137669)))

(assert (=> bs!1813798 (= lambda!383918 lambda!383843)))

(declare-fun bs!1813799 () Bool)

(assert (= bs!1813799 (and d!2138225 b!6802233)))

(assert (=> bs!1813799 (= lambda!383918 lambda!383749)))

(declare-fun bs!1813800 () Bool)

(assert (= bs!1813800 (and d!2138225 d!2138179)))

(assert (=> bs!1813800 (= lambda!383918 lambda!383905)))

(declare-fun bs!1813801 () Bool)

(assert (= bs!1813801 (and d!2138225 d!2138077)))

(assert (=> bs!1813801 (= lambda!383918 lambda!383901)))

(declare-fun bs!1813802 () Bool)

(assert (= bs!1813802 (and d!2138225 d!2138211)))

(assert (=> bs!1813802 (= lambda!383918 lambda!383913)))

(declare-fun bs!1813803 () Bool)

(assert (= bs!1813803 (and d!2138225 d!2137533)))

(assert (=> bs!1813803 (= lambda!383918 lambda!383782)))

(declare-fun bs!1813804 () Bool)

(assert (= bs!1813804 (and d!2138225 d!2138215)))

(assert (=> bs!1813804 (= lambda!383918 lambda!383915)))

(declare-fun bs!1813805 () Bool)

(assert (= bs!1813805 (and d!2138225 d!2137537)))

(assert (=> bs!1813805 (= lambda!383918 lambda!383783)))

(declare-fun bs!1813806 () Bool)

(assert (= bs!1813806 (and d!2138225 d!2137547)))

(assert (=> bs!1813806 (= lambda!383918 lambda!383787)))

(declare-fun bs!1813807 () Bool)

(assert (= bs!1813807 (and d!2138225 d!2137557)))

(assert (=> bs!1813807 (= lambda!383918 lambda!383797)))

(declare-fun b!6804181 () Bool)

(declare-fun e!4106119 () Regex!16623)

(declare-fun e!4106116 () Regex!16623)

(assert (=> b!6804181 (= e!4106119 e!4106116)))

(declare-fun c!1265420 () Bool)

(assert (=> b!6804181 (= c!1265420 ((_ is Cons!66045) (t!379900 (unfocusZipperList!2044 zl!343))))))

(declare-fun b!6804182 () Bool)

(declare-fun e!4106114 () Bool)

(declare-fun lt!2448632 () Regex!16623)

(assert (=> b!6804182 (= e!4106114 (isUnion!1418 lt!2448632))))

(declare-fun e!4106115 () Bool)

(assert (=> d!2138225 e!4106115))

(declare-fun res!2780449 () Bool)

(assert (=> d!2138225 (=> (not res!2780449) (not e!4106115))))

(assert (=> d!2138225 (= res!2780449 (validRegex!8359 lt!2448632))))

(assert (=> d!2138225 (= lt!2448632 e!4106119)))

(declare-fun c!1265421 () Bool)

(declare-fun e!4106117 () Bool)

(assert (=> d!2138225 (= c!1265421 e!4106117)))

(declare-fun res!2780448 () Bool)

(assert (=> d!2138225 (=> (not res!2780448) (not e!4106117))))

(assert (=> d!2138225 (= res!2780448 ((_ is Cons!66045) (t!379900 (unfocusZipperList!2044 zl!343))))))

(assert (=> d!2138225 (forall!15815 (t!379900 (unfocusZipperList!2044 zl!343)) lambda!383918)))

(assert (=> d!2138225 (= (generalisedUnion!2467 (t!379900 (unfocusZipperList!2044 zl!343))) lt!2448632)))

(declare-fun b!6804183 () Bool)

(declare-fun e!4106118 () Bool)

(assert (=> b!6804183 (= e!4106115 e!4106118)))

(declare-fun c!1265418 () Bool)

(assert (=> b!6804183 (= c!1265418 (isEmpty!38428 (t!379900 (unfocusZipperList!2044 zl!343))))))

(declare-fun b!6804184 () Bool)

(assert (=> b!6804184 (= e!4106118 (isEmptyLang!1988 lt!2448632))))

(declare-fun b!6804185 () Bool)

(assert (=> b!6804185 (= e!4106116 EmptyLang!16623)))

(declare-fun b!6804186 () Bool)

(assert (=> b!6804186 (= e!4106117 (isEmpty!38428 (t!379900 (t!379900 (unfocusZipperList!2044 zl!343)))))))

(declare-fun b!6804187 () Bool)

(assert (=> b!6804187 (= e!4106116 (Union!16623 (h!72493 (t!379900 (unfocusZipperList!2044 zl!343))) (generalisedUnion!2467 (t!379900 (t!379900 (unfocusZipperList!2044 zl!343))))))))

(declare-fun b!6804188 () Bool)

(assert (=> b!6804188 (= e!4106114 (= lt!2448632 (head!13657 (t!379900 (unfocusZipperList!2044 zl!343)))))))

(declare-fun b!6804189 () Bool)

(assert (=> b!6804189 (= e!4106118 e!4106114)))

(declare-fun c!1265419 () Bool)

(assert (=> b!6804189 (= c!1265419 (isEmpty!38428 (tail!12742 (t!379900 (unfocusZipperList!2044 zl!343)))))))

(declare-fun b!6804190 () Bool)

(assert (=> b!6804190 (= e!4106119 (h!72493 (t!379900 (unfocusZipperList!2044 zl!343))))))

(assert (= (and d!2138225 res!2780448) b!6804186))

(assert (= (and d!2138225 c!1265421) b!6804190))

(assert (= (and d!2138225 (not c!1265421)) b!6804181))

(assert (= (and b!6804181 c!1265420) b!6804187))

(assert (= (and b!6804181 (not c!1265420)) b!6804185))

(assert (= (and d!2138225 res!2780449) b!6804183))

(assert (= (and b!6804183 c!1265418) b!6804184))

(assert (= (and b!6804183 (not c!1265418)) b!6804189))

(assert (= (and b!6804189 c!1265419) b!6804188))

(assert (= (and b!6804189 (not c!1265419)) b!6804182))

(declare-fun m!7550460 () Bool)

(assert (=> b!6804189 m!7550460))

(assert (=> b!6804189 m!7550460))

(declare-fun m!7550462 () Bool)

(assert (=> b!6804189 m!7550462))

(declare-fun m!7550464 () Bool)

(assert (=> d!2138225 m!7550464))

(declare-fun m!7550466 () Bool)

(assert (=> d!2138225 m!7550466))

(declare-fun m!7550468 () Bool)

(assert (=> b!6804188 m!7550468))

(declare-fun m!7550470 () Bool)

(assert (=> b!6804184 m!7550470))

(declare-fun m!7550472 () Bool)

(assert (=> b!6804187 m!7550472))

(declare-fun m!7550474 () Bool)

(assert (=> b!6804182 m!7550474))

(declare-fun m!7550476 () Bool)

(assert (=> b!6804186 m!7550476))

(assert (=> b!6804183 m!7548984))

(assert (=> b!6802729 d!2138225))

(declare-fun b!6804194 () Bool)

(declare-fun e!4106121 () Bool)

(declare-fun lt!2448633 () List!66168)

(assert (=> b!6804194 (= e!4106121 (or (not (= (_2!36901 (get!23004 lt!2448557)) Nil!66044)) (= lt!2448633 (_1!36901 (get!23004 lt!2448557)))))))

(declare-fun d!2138227 () Bool)

(assert (=> d!2138227 e!4106121))

(declare-fun res!2780451 () Bool)

(assert (=> d!2138227 (=> (not res!2780451) (not e!4106121))))

(assert (=> d!2138227 (= res!2780451 (= (content!12906 lt!2448633) ((_ map or) (content!12906 (_1!36901 (get!23004 lt!2448557))) (content!12906 (_2!36901 (get!23004 lt!2448557))))))))

(declare-fun e!4106120 () List!66168)

(assert (=> d!2138227 (= lt!2448633 e!4106120)))

(declare-fun c!1265422 () Bool)

(assert (=> d!2138227 (= c!1265422 ((_ is Nil!66044) (_1!36901 (get!23004 lt!2448557))))))

(assert (=> d!2138227 (= (++!14792 (_1!36901 (get!23004 lt!2448557)) (_2!36901 (get!23004 lt!2448557))) lt!2448633)))

(declare-fun b!6804193 () Bool)

(declare-fun res!2780450 () Bool)

(assert (=> b!6804193 (=> (not res!2780450) (not e!4106121))))

(assert (=> b!6804193 (= res!2780450 (= (size!40671 lt!2448633) (+ (size!40671 (_1!36901 (get!23004 lt!2448557))) (size!40671 (_2!36901 (get!23004 lt!2448557))))))))

(declare-fun b!6804191 () Bool)

(assert (=> b!6804191 (= e!4106120 (_2!36901 (get!23004 lt!2448557)))))

(declare-fun b!6804192 () Bool)

(assert (=> b!6804192 (= e!4106120 (Cons!66044 (h!72492 (_1!36901 (get!23004 lt!2448557))) (++!14792 (t!379899 (_1!36901 (get!23004 lt!2448557))) (_2!36901 (get!23004 lt!2448557)))))))

(assert (= (and d!2138227 c!1265422) b!6804191))

(assert (= (and d!2138227 (not c!1265422)) b!6804192))

(assert (= (and d!2138227 res!2780451) b!6804193))

(assert (= (and b!6804193 res!2780450) b!6804194))

(declare-fun m!7550478 () Bool)

(assert (=> d!2138227 m!7550478))

(declare-fun m!7550480 () Bool)

(assert (=> d!2138227 m!7550480))

(declare-fun m!7550482 () Bool)

(assert (=> d!2138227 m!7550482))

(declare-fun m!7550484 () Bool)

(assert (=> b!6804193 m!7550484))

(declare-fun m!7550486 () Bool)

(assert (=> b!6804193 m!7550486))

(declare-fun m!7550488 () Bool)

(assert (=> b!6804193 m!7550488))

(declare-fun m!7550490 () Bool)

(assert (=> b!6804192 m!7550490))

(assert (=> b!6803099 d!2138227))

(assert (=> b!6803099 d!2138115))

(declare-fun b!6804195 () Bool)

(declare-fun e!4106124 () (InoxSet Context!12014))

(declare-fun call!618362 () (InoxSet Context!12014))

(assert (=> b!6804195 (= e!4106124 call!618362)))

(declare-fun b!6804196 () Bool)

(declare-fun e!4106123 () (InoxSet Context!12014))

(declare-fun e!4106126 () (InoxSet Context!12014))

(assert (=> b!6804196 (= e!4106123 e!4106126)))

(declare-fun c!1265426 () Bool)

(assert (=> b!6804196 (= c!1265426 ((_ is Union!16623) (ite c!1264969 (regOne!33759 (reg!16952 r!7292)) (ite c!1264968 (regTwo!33758 (reg!16952 r!7292)) (ite c!1264967 (regOne!33758 (reg!16952 r!7292)) (reg!16952 (reg!16952 r!7292)))))))))

(declare-fun bm!618353 () Bool)

(declare-fun call!618359 () (InoxSet Context!12014))

(assert (=> bm!618353 (= call!618362 call!618359)))

(declare-fun c!1265423 () Bool)

(declare-fun d!2138229 () Bool)

(assert (=> d!2138229 (= c!1265423 (and ((_ is ElementMatch!16623) (ite c!1264969 (regOne!33759 (reg!16952 r!7292)) (ite c!1264968 (regTwo!33758 (reg!16952 r!7292)) (ite c!1264967 (regOne!33758 (reg!16952 r!7292)) (reg!16952 (reg!16952 r!7292)))))) (= (c!1264881 (ite c!1264969 (regOne!33759 (reg!16952 r!7292)) (ite c!1264968 (regTwo!33758 (reg!16952 r!7292)) (ite c!1264967 (regOne!33758 (reg!16952 r!7292)) (reg!16952 (reg!16952 r!7292)))))) (h!72492 s!2326))))))

(assert (=> d!2138229 (= (derivationStepZipperDown!1851 (ite c!1264969 (regOne!33759 (reg!16952 r!7292)) (ite c!1264968 (regTwo!33758 (reg!16952 r!7292)) (ite c!1264967 (regOne!33758 (reg!16952 r!7292)) (reg!16952 (reg!16952 r!7292))))) (ite (or c!1264969 c!1264968) lt!2448396 (Context!12015 call!618125)) (h!72492 s!2326)) e!4106123)))

(declare-fun b!6804197 () Bool)

(declare-fun e!4106125 () (InoxSet Context!12014))

(declare-fun e!4106122 () (InoxSet Context!12014))

(assert (=> b!6804197 (= e!4106125 e!4106122)))

(declare-fun c!1265424 () Bool)

(assert (=> b!6804197 (= c!1265424 ((_ is Concat!25468) (ite c!1264969 (regOne!33759 (reg!16952 r!7292)) (ite c!1264968 (regTwo!33758 (reg!16952 r!7292)) (ite c!1264967 (regOne!33758 (reg!16952 r!7292)) (reg!16952 (reg!16952 r!7292)))))))))

(declare-fun b!6804198 () Bool)

(declare-fun call!618360 () (InoxSet Context!12014))

(declare-fun call!618361 () (InoxSet Context!12014))

(assert (=> b!6804198 (= e!4106126 ((_ map or) call!618360 call!618361))))

(declare-fun c!1265425 () Bool)

(declare-fun bm!618354 () Bool)

(declare-fun call!618363 () List!66169)

(assert (=> bm!618354 (= call!618363 ($colon$colon!2432 (exprs!6507 (ite (or c!1264969 c!1264968) lt!2448396 (Context!12015 call!618125))) (ite (or c!1265425 c!1265424) (regTwo!33758 (ite c!1264969 (regOne!33759 (reg!16952 r!7292)) (ite c!1264968 (regTwo!33758 (reg!16952 r!7292)) (ite c!1264967 (regOne!33758 (reg!16952 r!7292)) (reg!16952 (reg!16952 r!7292)))))) (ite c!1264969 (regOne!33759 (reg!16952 r!7292)) (ite c!1264968 (regTwo!33758 (reg!16952 r!7292)) (ite c!1264967 (regOne!33758 (reg!16952 r!7292)) (reg!16952 (reg!16952 r!7292))))))))))

(declare-fun b!6804199 () Bool)

(assert (=> b!6804199 (= e!4106122 call!618362)))

(declare-fun b!6804200 () Bool)

(declare-fun e!4106127 () Bool)

(assert (=> b!6804200 (= e!4106127 (nullable!6601 (regOne!33758 (ite c!1264969 (regOne!33759 (reg!16952 r!7292)) (ite c!1264968 (regTwo!33758 (reg!16952 r!7292)) (ite c!1264967 (regOne!33758 (reg!16952 r!7292)) (reg!16952 (reg!16952 r!7292))))))))))

(declare-fun bm!618355 () Bool)

(assert (=> bm!618355 (= call!618359 call!618360)))

(declare-fun c!1265427 () Bool)

(declare-fun b!6804201 () Bool)

(assert (=> b!6804201 (= c!1265427 ((_ is Star!16623) (ite c!1264969 (regOne!33759 (reg!16952 r!7292)) (ite c!1264968 (regTwo!33758 (reg!16952 r!7292)) (ite c!1264967 (regOne!33758 (reg!16952 r!7292)) (reg!16952 (reg!16952 r!7292)))))))))

(assert (=> b!6804201 (= e!4106122 e!4106124)))

(declare-fun b!6804202 () Bool)

(assert (=> b!6804202 (= e!4106123 (store ((as const (Array Context!12014 Bool)) false) (ite (or c!1264969 c!1264968) lt!2448396 (Context!12015 call!618125)) true))))

(declare-fun b!6804203 () Bool)

(assert (=> b!6804203 (= e!4106124 ((as const (Array Context!12014 Bool)) false))))

(declare-fun b!6804204 () Bool)

(assert (=> b!6804204 (= c!1265425 e!4106127)))

(declare-fun res!2780452 () Bool)

(assert (=> b!6804204 (=> (not res!2780452) (not e!4106127))))

(assert (=> b!6804204 (= res!2780452 ((_ is Concat!25468) (ite c!1264969 (regOne!33759 (reg!16952 r!7292)) (ite c!1264968 (regTwo!33758 (reg!16952 r!7292)) (ite c!1264967 (regOne!33758 (reg!16952 r!7292)) (reg!16952 (reg!16952 r!7292)))))))))

(assert (=> b!6804204 (= e!4106126 e!4106125)))

(declare-fun bm!618356 () Bool)

(declare-fun call!618358 () List!66169)

(assert (=> bm!618356 (= call!618358 call!618363)))

(declare-fun b!6804205 () Bool)

(assert (=> b!6804205 (= e!4106125 ((_ map or) call!618361 call!618359))))

(declare-fun bm!618357 () Bool)

(assert (=> bm!618357 (= call!618361 (derivationStepZipperDown!1851 (ite c!1265426 (regTwo!33759 (ite c!1264969 (regOne!33759 (reg!16952 r!7292)) (ite c!1264968 (regTwo!33758 (reg!16952 r!7292)) (ite c!1264967 (regOne!33758 (reg!16952 r!7292)) (reg!16952 (reg!16952 r!7292)))))) (regOne!33758 (ite c!1264969 (regOne!33759 (reg!16952 r!7292)) (ite c!1264968 (regTwo!33758 (reg!16952 r!7292)) (ite c!1264967 (regOne!33758 (reg!16952 r!7292)) (reg!16952 (reg!16952 r!7292))))))) (ite c!1265426 (ite (or c!1264969 c!1264968) lt!2448396 (Context!12015 call!618125)) (Context!12015 call!618363)) (h!72492 s!2326)))))

(declare-fun bm!618358 () Bool)

(assert (=> bm!618358 (= call!618360 (derivationStepZipperDown!1851 (ite c!1265426 (regOne!33759 (ite c!1264969 (regOne!33759 (reg!16952 r!7292)) (ite c!1264968 (regTwo!33758 (reg!16952 r!7292)) (ite c!1264967 (regOne!33758 (reg!16952 r!7292)) (reg!16952 (reg!16952 r!7292)))))) (ite c!1265425 (regTwo!33758 (ite c!1264969 (regOne!33759 (reg!16952 r!7292)) (ite c!1264968 (regTwo!33758 (reg!16952 r!7292)) (ite c!1264967 (regOne!33758 (reg!16952 r!7292)) (reg!16952 (reg!16952 r!7292)))))) (ite c!1265424 (regOne!33758 (ite c!1264969 (regOne!33759 (reg!16952 r!7292)) (ite c!1264968 (regTwo!33758 (reg!16952 r!7292)) (ite c!1264967 (regOne!33758 (reg!16952 r!7292)) (reg!16952 (reg!16952 r!7292)))))) (reg!16952 (ite c!1264969 (regOne!33759 (reg!16952 r!7292)) (ite c!1264968 (regTwo!33758 (reg!16952 r!7292)) (ite c!1264967 (regOne!33758 (reg!16952 r!7292)) (reg!16952 (reg!16952 r!7292))))))))) (ite (or c!1265426 c!1265425) (ite (or c!1264969 c!1264968) lt!2448396 (Context!12015 call!618125)) (Context!12015 call!618358)) (h!72492 s!2326)))))

(assert (= (and d!2138229 c!1265423) b!6804202))

(assert (= (and d!2138229 (not c!1265423)) b!6804196))

(assert (= (and b!6804196 c!1265426) b!6804198))

(assert (= (and b!6804196 (not c!1265426)) b!6804204))

(assert (= (and b!6804204 res!2780452) b!6804200))

(assert (= (and b!6804204 c!1265425) b!6804205))

(assert (= (and b!6804204 (not c!1265425)) b!6804197))

(assert (= (and b!6804197 c!1265424) b!6804199))

(assert (= (and b!6804197 (not c!1265424)) b!6804201))

(assert (= (and b!6804201 c!1265427) b!6804195))

(assert (= (and b!6804201 (not c!1265427)) b!6804203))

(assert (= (or b!6804199 b!6804195) bm!618356))

(assert (= (or b!6804199 b!6804195) bm!618353))

(assert (= (or b!6804205 bm!618356) bm!618354))

(assert (= (or b!6804205 bm!618353) bm!618355))

(assert (= (or b!6804198 b!6804205) bm!618357))

(assert (= (or b!6804198 bm!618355) bm!618358))

(declare-fun m!7550492 () Bool)

(assert (=> bm!618358 m!7550492))

(declare-fun m!7550494 () Bool)

(assert (=> b!6804200 m!7550494))

(declare-fun m!7550496 () Bool)

(assert (=> bm!618357 m!7550496))

(declare-fun m!7550498 () Bool)

(assert (=> bm!618354 m!7550498))

(declare-fun m!7550500 () Bool)

(assert (=> b!6804202 m!7550500))

(assert (=> bm!618125 d!2138229))

(declare-fun bs!1813808 () Bool)

(declare-fun d!2138231 () Bool)

(assert (= bs!1813808 (and d!2138231 d!2137949)))

(declare-fun lambda!383919 () Int)

(assert (=> bs!1813808 (= lambda!383919 lambda!383885)))

(declare-fun bs!1813809 () Bool)

(assert (= bs!1813809 (and d!2138231 d!2137963)))

(assert (=> bs!1813809 (= lambda!383919 lambda!383886)))

(declare-fun bs!1813810 () Bool)

(assert (= bs!1813810 (and d!2138231 d!2138185)))

(assert (=> bs!1813810 (= lambda!383919 lambda!383906)))

(declare-fun bs!1813811 () Bool)

(assert (= bs!1813811 (and d!2138231 d!2138213)))

(assert (=> bs!1813811 (= lambda!383919 lambda!383914)))

(assert (=> d!2138231 (= (nullableZipper!2329 z!1189) (exists!2741 z!1189 lambda!383919))))

(declare-fun bs!1813812 () Bool)

(assert (= bs!1813812 d!2138231))

(declare-fun m!7550502 () Bool)

(assert (=> bs!1813812 m!7550502))

(assert (=> b!6802867 d!2138231))

(declare-fun d!2138233 () Bool)

(assert (=> d!2138233 true))

(assert (=> d!2138233 true))

(declare-fun res!2780453 () Bool)

(assert (=> d!2138233 (= (choose!50721 lambda!383746) res!2780453)))

(assert (=> d!2137589 d!2138233))

(assert (=> d!2137603 d!2137573))

(declare-fun d!2138235 () Bool)

(assert (=> d!2138235 (= (Exists!3691 lambda!383830) (choose!50721 lambda!383830))))

(declare-fun bs!1813813 () Bool)

(assert (= bs!1813813 d!2138235))

(declare-fun m!7550504 () Bool)

(assert (=> bs!1813813 m!7550504))

(assert (=> d!2137603 d!2138235))

(declare-fun bs!1813814 () Bool)

(declare-fun d!2138237 () Bool)

(assert (= bs!1813814 (and d!2138237 b!6802354)))

(declare-fun lambda!383922 () Int)

(assert (=> bs!1813814 (not (= lambda!383922 lambda!383761))))

(declare-fun bs!1813815 () Bool)

(assert (= bs!1813815 (and d!2138237 b!6804159)))

(assert (=> bs!1813815 (not (= lambda!383922 lambda!383917))))

(declare-fun bs!1813816 () Bool)

(assert (= bs!1813816 (and d!2138237 b!6802908)))

(assert (=> bs!1813816 (not (= lambda!383922 lambda!383836))))

(declare-fun bs!1813817 () Bool)

(assert (= bs!1813817 (and d!2138237 d!2137583)))

(assert (=> bs!1813817 (= (= r!7292 (Star!16623 (reg!16952 r!7292))) (= lambda!383922 lambda!383822))))

(declare-fun bs!1813818 () Bool)

(assert (= bs!1813818 (and d!2138237 d!2137985)))

(assert (=> bs!1813818 (= (= r!7292 (Star!16623 (reg!16952 r!7292))) (= lambda!383922 lambda!383894))))

(declare-fun bs!1813819 () Bool)

(assert (= bs!1813819 (and d!2138237 b!6803763)))

(assert (=> bs!1813819 (not (= lambda!383922 lambda!383900))))

(declare-fun bs!1813820 () Bool)

(assert (= bs!1813820 (and d!2138237 b!6802221)))

(assert (=> bs!1813820 (= lambda!383922 lambda!383744)))

(declare-fun bs!1813821 () Bool)

(assert (= bs!1813821 (and d!2138237 d!2138209)))

(assert (=> bs!1813821 (not (= lambda!383922 lambda!383912))))

(declare-fun bs!1813822 () Bool)

(assert (= bs!1813822 (and d!2138237 b!6802906)))

(assert (=> bs!1813822 (not (= lambda!383922 lambda!383835))))

(declare-fun bs!1813823 () Bool)

(assert (= bs!1813823 (and d!2138237 d!2137575)))

(assert (=> bs!1813823 (not (= lambda!383922 lambda!383813))))

(declare-fun bs!1813824 () Bool)

(assert (= bs!1813824 (and d!2138237 b!6802352)))

(assert (=> bs!1813824 (not (= lambda!383922 lambda!383760))))

(declare-fun bs!1813825 () Bool)

(assert (= bs!1813825 (and d!2138237 d!2137603)))

(assert (=> bs!1813825 (= lambda!383922 lambda!383830)))

(assert (=> bs!1813817 (not (= lambda!383922 lambda!383825))))

(declare-fun bs!1813826 () Bool)

(assert (= bs!1813826 (and d!2138237 b!6804157)))

(assert (=> bs!1813826 (not (= lambda!383922 lambda!383916))))

(assert (=> bs!1813818 (not (= lambda!383922 lambda!383896))))

(assert (=> bs!1813823 (= lambda!383922 lambda!383810)))

(assert (=> bs!1813820 (not (= lambda!383922 lambda!383746))))

(declare-fun bs!1813827 () Bool)

(assert (= bs!1813827 (and d!2138237 b!6803761)))

(assert (=> bs!1813827 (not (= lambda!383922 lambda!383898))))

(assert (=> bs!1813821 (= lambda!383922 lambda!383911)))

(assert (=> bs!1813820 (not (= lambda!383922 lambda!383745))))

(assert (=> d!2138237 true))

(assert (=> d!2138237 true))

(assert (=> d!2138237 true))

(assert (=> d!2138237 (= (isDefined!13213 (findConcatSeparation!2924 (reg!16952 r!7292) r!7292 Nil!66044 s!2326 s!2326)) (Exists!3691 lambda!383922))))

(assert (=> d!2138237 true))

(declare-fun _$89!3082 () Unit!159937)

(assert (=> d!2138237 (= (choose!50727 (reg!16952 r!7292) r!7292 s!2326) _$89!3082)))

(declare-fun bs!1813828 () Bool)

(assert (= bs!1813828 d!2138237))

(assert (=> bs!1813828 m!7548466))

(assert (=> bs!1813828 m!7548466))

(assert (=> bs!1813828 m!7548472))

(declare-fun m!7550506 () Bool)

(assert (=> bs!1813828 m!7550506))

(assert (=> d!2137603 d!2138237))

(assert (=> d!2137603 d!2137593))

(assert (=> d!2137603 d!2138039))

(assert (=> d!2137461 d!2137457))

(assert (=> d!2137461 d!2137443))

(declare-fun d!2138239 () Bool)

(assert (=> d!2138239 (= (matchR!8806 lt!2448378 s!2326) (matchRSpec!3724 lt!2448378 s!2326))))

(assert (=> d!2138239 true))

(declare-fun _$88!5638 () Unit!159937)

(assert (=> d!2138239 (= (choose!50711 lt!2448378 s!2326) _$88!5638)))

(declare-fun bs!1813829 () Bool)

(assert (= bs!1813829 d!2138239))

(assert (=> bs!1813829 m!7548502))

(assert (=> bs!1813829 m!7548500))

(assert (=> d!2137461 d!2138239))

(assert (=> d!2137461 d!2138167))

(declare-fun b!6804210 () Bool)

(declare-fun e!4106131 () Bool)

(assert (=> b!6804210 (= e!4106131 (nullable!6601 (h!72493 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 (h!72494 zl!343))))))))))

(declare-fun d!2138241 () Bool)

(declare-fun c!1265428 () Bool)

(assert (=> d!2138241 (= c!1265428 e!4106131)))

(declare-fun res!2780458 () Bool)

(assert (=> d!2138241 (=> (not res!2780458) (not e!4106131))))

(assert (=> d!2138241 (= res!2780458 ((_ is Cons!66045) (exprs!6507 (Context!12015 (t!379900 (exprs!6507 (h!72494 zl!343)))))))))

(declare-fun e!4106130 () (InoxSet Context!12014))

(assert (=> d!2138241 (= (derivationStepZipperUp!1777 (Context!12015 (t!379900 (exprs!6507 (h!72494 zl!343)))) (h!72492 s!2326)) e!4106130)))

(declare-fun b!6804211 () Bool)

(declare-fun e!4106132 () (InoxSet Context!12014))

(assert (=> b!6804211 (= e!4106132 ((as const (Array Context!12014 Bool)) false))))

(declare-fun bm!618359 () Bool)

(declare-fun call!618364 () (InoxSet Context!12014))

(assert (=> bm!618359 (= call!618364 (derivationStepZipperDown!1851 (h!72493 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 (h!72494 zl!343)))))) (Context!12015 (t!379900 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 (h!72494 zl!343))))))) (h!72492 s!2326)))))

(declare-fun b!6804212 () Bool)

(assert (=> b!6804212 (= e!4106132 call!618364)))

(declare-fun b!6804213 () Bool)

(assert (=> b!6804213 (= e!4106130 e!4106132)))

(declare-fun c!1265429 () Bool)

(assert (=> b!6804213 (= c!1265429 ((_ is Cons!66045) (exprs!6507 (Context!12015 (t!379900 (exprs!6507 (h!72494 zl!343)))))))))

(declare-fun b!6804214 () Bool)

(assert (=> b!6804214 (= e!4106130 ((_ map or) call!618364 (derivationStepZipperUp!1777 (Context!12015 (t!379900 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 (h!72494 zl!343))))))) (h!72492 s!2326))))))

(assert (= (and d!2138241 res!2780458) b!6804210))

(assert (= (and d!2138241 c!1265428) b!6804214))

(assert (= (and d!2138241 (not c!1265428)) b!6804213))

(assert (= (and b!6804213 c!1265429) b!6804212))

(assert (= (and b!6804213 (not c!1265429)) b!6804211))

(assert (= (or b!6804214 b!6804212) bm!618359))

(declare-fun m!7550508 () Bool)

(assert (=> b!6804210 m!7550508))

(declare-fun m!7550510 () Bool)

(assert (=> bm!618359 m!7550510))

(declare-fun m!7550512 () Bool)

(assert (=> b!6804214 m!7550512))

(assert (=> b!6802274 d!2138241))

(declare-fun d!2138243 () Bool)

(assert (=> d!2138243 (= (nullable!6601 (reg!16952 r!7292)) (nullableFct!2503 (reg!16952 r!7292)))))

(declare-fun bs!1813830 () Bool)

(assert (= bs!1813830 d!2138243))

(declare-fun m!7550514 () Bool)

(assert (=> bs!1813830 m!7550514))

(assert (=> b!6802899 d!2138243))

(declare-fun b!6804218 () Bool)

(declare-fun e!4106134 () Bool)

(declare-fun lt!2448634 () List!66168)

(assert (=> b!6804218 (= e!4106134 (or (not (= (_2!36901 (get!23004 lt!2448518)) Nil!66044)) (= lt!2448634 (_1!36901 (get!23004 lt!2448518)))))))

(declare-fun d!2138245 () Bool)

(assert (=> d!2138245 e!4106134))

(declare-fun res!2780460 () Bool)

(assert (=> d!2138245 (=> (not res!2780460) (not e!4106134))))

(assert (=> d!2138245 (= res!2780460 (= (content!12906 lt!2448634) ((_ map or) (content!12906 (_1!36901 (get!23004 lt!2448518))) (content!12906 (_2!36901 (get!23004 lt!2448518))))))))

(declare-fun e!4106133 () List!66168)

(assert (=> d!2138245 (= lt!2448634 e!4106133)))

(declare-fun c!1265430 () Bool)

(assert (=> d!2138245 (= c!1265430 ((_ is Nil!66044) (_1!36901 (get!23004 lt!2448518))))))

(assert (=> d!2138245 (= (++!14792 (_1!36901 (get!23004 lt!2448518)) (_2!36901 (get!23004 lt!2448518))) lt!2448634)))

(declare-fun b!6804217 () Bool)

(declare-fun res!2780459 () Bool)

(assert (=> b!6804217 (=> (not res!2780459) (not e!4106134))))

(assert (=> b!6804217 (= res!2780459 (= (size!40671 lt!2448634) (+ (size!40671 (_1!36901 (get!23004 lt!2448518))) (size!40671 (_2!36901 (get!23004 lt!2448518))))))))

(declare-fun b!6804215 () Bool)

(assert (=> b!6804215 (= e!4106133 (_2!36901 (get!23004 lt!2448518)))))

(declare-fun b!6804216 () Bool)

(assert (=> b!6804216 (= e!4106133 (Cons!66044 (h!72492 (_1!36901 (get!23004 lt!2448518))) (++!14792 (t!379899 (_1!36901 (get!23004 lt!2448518))) (_2!36901 (get!23004 lt!2448518)))))))

(assert (= (and d!2138245 c!1265430) b!6804215))

(assert (= (and d!2138245 (not c!1265430)) b!6804216))

(assert (= (and d!2138245 res!2780460) b!6804217))

(assert (= (and b!6804217 res!2780459) b!6804218))

(declare-fun m!7550516 () Bool)

(assert (=> d!2138245 m!7550516))

(declare-fun m!7550518 () Bool)

(assert (=> d!2138245 m!7550518))

(declare-fun m!7550520 () Bool)

(assert (=> d!2138245 m!7550520))

(declare-fun m!7550522 () Bool)

(assert (=> b!6804217 m!7550522))

(declare-fun m!7550524 () Bool)

(assert (=> b!6804217 m!7550524))

(declare-fun m!7550526 () Bool)

(assert (=> b!6804217 m!7550526))

(declare-fun m!7550528 () Bool)

(assert (=> b!6804216 m!7550528))

(assert (=> b!6802842 d!2138245))

(declare-fun d!2138247 () Bool)

(assert (=> d!2138247 (= (get!23004 lt!2448518) (v!52715 lt!2448518))))

(assert (=> b!6802842 d!2138247))

(declare-fun b!6804222 () Bool)

(declare-fun e!4106135 () Bool)

(declare-fun lt!2448635 () List!66169)

(assert (=> b!6804222 (= e!4106135 (or (not (= lt!2448392 Nil!66045)) (= lt!2448635 (t!379900 (Cons!66045 (reg!16952 r!7292) Nil!66045)))))))

(declare-fun d!2138249 () Bool)

(assert (=> d!2138249 e!4106135))

(declare-fun res!2780461 () Bool)

(assert (=> d!2138249 (=> (not res!2780461) (not e!4106135))))

(assert (=> d!2138249 (= res!2780461 (= (content!12903 lt!2448635) ((_ map or) (content!12903 (t!379900 (Cons!66045 (reg!16952 r!7292) Nil!66045))) (content!12903 lt!2448392))))))

(declare-fun e!4106136 () List!66169)

(assert (=> d!2138249 (= lt!2448635 e!4106136)))

(declare-fun c!1265431 () Bool)

(assert (=> d!2138249 (= c!1265431 ((_ is Nil!66045) (t!379900 (Cons!66045 (reg!16952 r!7292) Nil!66045))))))

(assert (=> d!2138249 (= (++!14793 (t!379900 (Cons!66045 (reg!16952 r!7292) Nil!66045)) lt!2448392) lt!2448635)))

(declare-fun b!6804219 () Bool)

(assert (=> b!6804219 (= e!4106136 lt!2448392)))

(declare-fun b!6804221 () Bool)

(declare-fun res!2780462 () Bool)

(assert (=> b!6804221 (=> (not res!2780462) (not e!4106135))))

(assert (=> b!6804221 (= res!2780462 (= (size!40669 lt!2448635) (+ (size!40669 (t!379900 (Cons!66045 (reg!16952 r!7292) Nil!66045))) (size!40669 lt!2448392))))))

(declare-fun b!6804220 () Bool)

(assert (=> b!6804220 (= e!4106136 (Cons!66045 (h!72493 (t!379900 (Cons!66045 (reg!16952 r!7292) Nil!66045))) (++!14793 (t!379900 (t!379900 (Cons!66045 (reg!16952 r!7292) Nil!66045))) lt!2448392)))))

(assert (= (and d!2138249 c!1265431) b!6804219))

(assert (= (and d!2138249 (not c!1265431)) b!6804220))

(assert (= (and d!2138249 res!2780461) b!6804221))

(assert (= (and b!6804221 res!2780462) b!6804222))

(declare-fun m!7550530 () Bool)

(assert (=> d!2138249 m!7550530))

(assert (=> d!2138249 m!7549864))

(assert (=> d!2138249 m!7548746))

(declare-fun m!7550532 () Bool)

(assert (=> b!6804221 m!7550532))

(declare-fun m!7550534 () Bool)

(assert (=> b!6804221 m!7550534))

(assert (=> b!6804221 m!7548752))

(declare-fun m!7550536 () Bool)

(assert (=> b!6804220 m!7550536))

(assert (=> b!6802541 d!2138249))

(declare-fun d!2138251 () Bool)

(assert (=> d!2138251 (= (isEmpty!38428 (unfocusZipperList!2044 zl!343)) ((_ is Nil!66045) (unfocusZipperList!2044 zl!343)))))

(assert (=> b!6802725 d!2138251))

(declare-fun b!6804223 () Bool)

(declare-fun e!4106139 () (InoxSet Context!12014))

(declare-fun call!618369 () (InoxSet Context!12014))

(assert (=> b!6804223 (= e!4106139 call!618369)))

(declare-fun b!6804224 () Bool)

(declare-fun e!4106138 () (InoxSet Context!12014))

(declare-fun e!4106141 () (InoxSet Context!12014))

(assert (=> b!6804224 (= e!4106138 e!4106141)))

(declare-fun c!1265435 () Bool)

(assert (=> b!6804224 (= c!1265435 ((_ is Union!16623) (h!72493 (exprs!6507 lt!2448400))))))

(declare-fun bm!618360 () Bool)

(declare-fun call!618366 () (InoxSet Context!12014))

(assert (=> bm!618360 (= call!618369 call!618366)))

(declare-fun d!2138253 () Bool)

(declare-fun c!1265432 () Bool)

(assert (=> d!2138253 (= c!1265432 (and ((_ is ElementMatch!16623) (h!72493 (exprs!6507 lt!2448400))) (= (c!1264881 (h!72493 (exprs!6507 lt!2448400))) (h!72492 s!2326))))))

(assert (=> d!2138253 (= (derivationStepZipperDown!1851 (h!72493 (exprs!6507 lt!2448400)) (Context!12015 (t!379900 (exprs!6507 lt!2448400))) (h!72492 s!2326)) e!4106138)))

(declare-fun b!6804225 () Bool)

(declare-fun e!4106140 () (InoxSet Context!12014))

(declare-fun e!4106137 () (InoxSet Context!12014))

(assert (=> b!6804225 (= e!4106140 e!4106137)))

(declare-fun c!1265433 () Bool)

(assert (=> b!6804225 (= c!1265433 ((_ is Concat!25468) (h!72493 (exprs!6507 lt!2448400))))))

(declare-fun b!6804226 () Bool)

(declare-fun call!618367 () (InoxSet Context!12014))

(declare-fun call!618368 () (InoxSet Context!12014))

(assert (=> b!6804226 (= e!4106141 ((_ map or) call!618367 call!618368))))

(declare-fun call!618370 () List!66169)

(declare-fun c!1265434 () Bool)

(declare-fun bm!618361 () Bool)

(assert (=> bm!618361 (= call!618370 ($colon$colon!2432 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448400)))) (ite (or c!1265434 c!1265433) (regTwo!33758 (h!72493 (exprs!6507 lt!2448400))) (h!72493 (exprs!6507 lt!2448400)))))))

(declare-fun b!6804227 () Bool)

(assert (=> b!6804227 (= e!4106137 call!618369)))

(declare-fun b!6804228 () Bool)

(declare-fun e!4106142 () Bool)

(assert (=> b!6804228 (= e!4106142 (nullable!6601 (regOne!33758 (h!72493 (exprs!6507 lt!2448400)))))))

(declare-fun bm!618362 () Bool)

(assert (=> bm!618362 (= call!618366 call!618367)))

(declare-fun b!6804229 () Bool)

(declare-fun c!1265436 () Bool)

(assert (=> b!6804229 (= c!1265436 ((_ is Star!16623) (h!72493 (exprs!6507 lt!2448400))))))

(assert (=> b!6804229 (= e!4106137 e!4106139)))

(declare-fun b!6804230 () Bool)

(assert (=> b!6804230 (= e!4106138 (store ((as const (Array Context!12014 Bool)) false) (Context!12015 (t!379900 (exprs!6507 lt!2448400))) true))))

(declare-fun b!6804231 () Bool)

(assert (=> b!6804231 (= e!4106139 ((as const (Array Context!12014 Bool)) false))))

(declare-fun b!6804232 () Bool)

(assert (=> b!6804232 (= c!1265434 e!4106142)))

(declare-fun res!2780463 () Bool)

(assert (=> b!6804232 (=> (not res!2780463) (not e!4106142))))

(assert (=> b!6804232 (= res!2780463 ((_ is Concat!25468) (h!72493 (exprs!6507 lt!2448400))))))

(assert (=> b!6804232 (= e!4106141 e!4106140)))

(declare-fun bm!618363 () Bool)

(declare-fun call!618365 () List!66169)

(assert (=> bm!618363 (= call!618365 call!618370)))

(declare-fun b!6804233 () Bool)

(assert (=> b!6804233 (= e!4106140 ((_ map or) call!618368 call!618366))))

(declare-fun bm!618364 () Bool)

(assert (=> bm!618364 (= call!618368 (derivationStepZipperDown!1851 (ite c!1265435 (regTwo!33759 (h!72493 (exprs!6507 lt!2448400))) (regOne!33758 (h!72493 (exprs!6507 lt!2448400)))) (ite c!1265435 (Context!12015 (t!379900 (exprs!6507 lt!2448400))) (Context!12015 call!618370)) (h!72492 s!2326)))))

(declare-fun bm!618365 () Bool)

(assert (=> bm!618365 (= call!618367 (derivationStepZipperDown!1851 (ite c!1265435 (regOne!33759 (h!72493 (exprs!6507 lt!2448400))) (ite c!1265434 (regTwo!33758 (h!72493 (exprs!6507 lt!2448400))) (ite c!1265433 (regOne!33758 (h!72493 (exprs!6507 lt!2448400))) (reg!16952 (h!72493 (exprs!6507 lt!2448400)))))) (ite (or c!1265435 c!1265434) (Context!12015 (t!379900 (exprs!6507 lt!2448400))) (Context!12015 call!618365)) (h!72492 s!2326)))))

(assert (= (and d!2138253 c!1265432) b!6804230))

(assert (= (and d!2138253 (not c!1265432)) b!6804224))

(assert (= (and b!6804224 c!1265435) b!6804226))

(assert (= (and b!6804224 (not c!1265435)) b!6804232))

(assert (= (and b!6804232 res!2780463) b!6804228))

(assert (= (and b!6804232 c!1265434) b!6804233))

(assert (= (and b!6804232 (not c!1265434)) b!6804225))

(assert (= (and b!6804225 c!1265433) b!6804227))

(assert (= (and b!6804225 (not c!1265433)) b!6804229))

(assert (= (and b!6804229 c!1265436) b!6804223))

(assert (= (and b!6804229 (not c!1265436)) b!6804231))

(assert (= (or b!6804227 b!6804223) bm!618363))

(assert (= (or b!6804227 b!6804223) bm!618360))

(assert (= (or b!6804233 bm!618363) bm!618361))

(assert (= (or b!6804233 bm!618360) bm!618362))

(assert (= (or b!6804226 b!6804233) bm!618364))

(assert (= (or b!6804226 bm!618362) bm!618365))

(declare-fun m!7550538 () Bool)

(assert (=> bm!618365 m!7550538))

(declare-fun m!7550540 () Bool)

(assert (=> b!6804228 m!7550540))

(declare-fun m!7550542 () Bool)

(assert (=> bm!618364 m!7550542))

(declare-fun m!7550544 () Bool)

(assert (=> bm!618361 m!7550544))

(declare-fun m!7550546 () Bool)

(assert (=> b!6804230 m!7550546))

(assert (=> bm!618128 d!2138253))

(declare-fun d!2138255 () Bool)

(assert (=> d!2138255 (= ($colon$colon!2432 (exprs!6507 (Context!12015 Nil!66045)) (ite (or c!1265000 c!1264999) (regTwo!33758 r!7292) r!7292)) (Cons!66045 (ite (or c!1265000 c!1264999) (regTwo!33758 r!7292) r!7292) (exprs!6507 (Context!12015 Nil!66045))))))

(assert (=> bm!618138 d!2138255))

(declare-fun d!2138257 () Bool)

(declare-fun c!1265439 () Bool)

(assert (=> d!2138257 (= c!1265439 ((_ is Nil!66044) lt!2448547))))

(declare-fun e!4106145 () (InoxSet C!33516))

(assert (=> d!2138257 (= (content!12906 lt!2448547) e!4106145)))

(declare-fun b!6804238 () Bool)

(assert (=> b!6804238 (= e!4106145 ((as const (Array C!33516 Bool)) false))))

(declare-fun b!6804239 () Bool)

(assert (=> b!6804239 (= e!4106145 ((_ map or) (store ((as const (Array C!33516 Bool)) false) (h!72492 lt!2448547) true) (content!12906 (t!379899 lt!2448547))))))

(assert (= (and d!2138257 c!1265439) b!6804238))

(assert (= (and d!2138257 (not c!1265439)) b!6804239))

(declare-fun m!7550548 () Bool)

(assert (=> b!6804239 m!7550548))

(declare-fun m!7550550 () Bool)

(assert (=> b!6804239 m!7550550))

(assert (=> d!2137643 d!2138257))

(declare-fun d!2138259 () Bool)

(declare-fun c!1265440 () Bool)

(assert (=> d!2138259 (= c!1265440 ((_ is Nil!66044) (_1!36901 lt!2448389)))))

(declare-fun e!4106146 () (InoxSet C!33516))

(assert (=> d!2138259 (= (content!12906 (_1!36901 lt!2448389)) e!4106146)))

(declare-fun b!6804240 () Bool)

(assert (=> b!6804240 (= e!4106146 ((as const (Array C!33516 Bool)) false))))

(declare-fun b!6804241 () Bool)

(assert (=> b!6804241 (= e!4106146 ((_ map or) (store ((as const (Array C!33516 Bool)) false) (h!72492 (_1!36901 lt!2448389)) true) (content!12906 (t!379899 (_1!36901 lt!2448389)))))))

(assert (= (and d!2138259 c!1265440) b!6804240))

(assert (= (and d!2138259 (not c!1265440)) b!6804241))

(declare-fun m!7550552 () Bool)

(assert (=> b!6804241 m!7550552))

(assert (=> b!6804241 m!7550374))

(assert (=> d!2137643 d!2138259))

(declare-fun d!2138261 () Bool)

(declare-fun c!1265441 () Bool)

(assert (=> d!2138261 (= c!1265441 ((_ is Nil!66044) (_2!36901 lt!2448389)))))

(declare-fun e!4106147 () (InoxSet C!33516))

(assert (=> d!2138261 (= (content!12906 (_2!36901 lt!2448389)) e!4106147)))

(declare-fun b!6804242 () Bool)

(assert (=> b!6804242 (= e!4106147 ((as const (Array C!33516 Bool)) false))))

(declare-fun b!6804243 () Bool)

(assert (=> b!6804243 (= e!4106147 ((_ map or) (store ((as const (Array C!33516 Bool)) false) (h!72492 (_2!36901 lt!2448389)) true) (content!12906 (t!379899 (_2!36901 lt!2448389)))))))

(assert (= (and d!2138261 c!1265441) b!6804242))

(assert (= (and d!2138261 (not c!1265441)) b!6804243))

(declare-fun m!7550554 () Bool)

(assert (=> b!6804243 m!7550554))

(declare-fun m!7550556 () Bool)

(assert (=> b!6804243 m!7550556))

(assert (=> d!2137643 d!2138261))

(assert (=> d!2137479 d!2137485))

(declare-fun d!2138263 () Bool)

(assert (=> d!2138263 (= (map!15095 lt!2448380 lambda!383748) (store ((as const (Array Context!12014 Bool)) false) (dynLambda!26376 lambda!383748 lt!2448407) true))))

(assert (=> d!2138263 true))

(declare-fun _$12!1735 () Unit!159937)

(assert (=> d!2138263 (= (choose!50712 lt!2448380 lt!2448407 lambda!383748) _$12!1735)))

(declare-fun b_lambda!256501 () Bool)

(assert (=> (not b_lambda!256501) (not d!2138263)))

(declare-fun bs!1813831 () Bool)

(assert (= bs!1813831 d!2138263))

(assert (=> bs!1813831 m!7548418))

(assert (=> bs!1813831 m!7548732))

(assert (=> bs!1813831 m!7548732))

(assert (=> bs!1813831 m!7548734))

(assert (=> d!2137479 d!2138263))

(declare-fun d!2138265 () Bool)

(assert (=> d!2138265 true))

(assert (=> d!2138265 true))

(declare-fun res!2780464 () Bool)

(assert (=> d!2138265 (= (choose!50721 lambda!383744) res!2780464)))

(assert (=> d!2137571 d!2138265))

(declare-fun bs!1813832 () Bool)

(declare-fun b!6804246 () Bool)

(assert (= bs!1813832 (and b!6804246 b!6802354)))

(declare-fun lambda!383923 () Int)

(assert (=> bs!1813832 (not (= lambda!383923 lambda!383761))))

(declare-fun bs!1813833 () Bool)

(assert (= bs!1813833 (and b!6804246 b!6804159)))

(assert (=> bs!1813833 (not (= lambda!383923 lambda!383917))))

(declare-fun bs!1813834 () Bool)

(assert (= bs!1813834 (and b!6804246 b!6802908)))

(assert (=> bs!1813834 (not (= lambda!383923 lambda!383836))))

(declare-fun bs!1813835 () Bool)

(assert (= bs!1813835 (and b!6804246 d!2137583)))

(assert (=> bs!1813835 (not (= lambda!383923 lambda!383822))))

(declare-fun bs!1813836 () Bool)

(assert (= bs!1813836 (and b!6804246 d!2137985)))

(assert (=> bs!1813836 (not (= lambda!383923 lambda!383894))))

(declare-fun bs!1813837 () Bool)

(assert (= bs!1813837 (and b!6804246 d!2138237)))

(assert (=> bs!1813837 (not (= lambda!383923 lambda!383922))))

(declare-fun bs!1813838 () Bool)

(assert (= bs!1813838 (and b!6804246 b!6803763)))

(assert (=> bs!1813838 (not (= lambda!383923 lambda!383900))))

(declare-fun bs!1813839 () Bool)

(assert (= bs!1813839 (and b!6804246 b!6802221)))

(assert (=> bs!1813839 (not (= lambda!383923 lambda!383744))))

(declare-fun bs!1813840 () Bool)

(assert (= bs!1813840 (and b!6804246 d!2138209)))

(assert (=> bs!1813840 (not (= lambda!383923 lambda!383912))))

(declare-fun bs!1813841 () Bool)

(assert (= bs!1813841 (and b!6804246 b!6802906)))

(assert (=> bs!1813841 (= (and (= (reg!16952 (regOne!33759 lt!2448378)) (reg!16952 r!7292)) (= (regOne!33759 lt!2448378) r!7292)) (= lambda!383923 lambda!383835))))

(declare-fun bs!1813842 () Bool)

(assert (= bs!1813842 (and b!6804246 d!2137575)))

(assert (=> bs!1813842 (not (= lambda!383923 lambda!383813))))

(declare-fun bs!1813843 () Bool)

(assert (= bs!1813843 (and b!6804246 b!6802352)))

(assert (=> bs!1813843 (= (and (= (reg!16952 (regOne!33759 lt!2448378)) (reg!16952 lt!2448378)) (= (regOne!33759 lt!2448378) lt!2448378)) (= lambda!383923 lambda!383760))))

(declare-fun bs!1813844 () Bool)

(assert (= bs!1813844 (and b!6804246 d!2137603)))

(assert (=> bs!1813844 (not (= lambda!383923 lambda!383830))))

(assert (=> bs!1813835 (= (and (= (reg!16952 (regOne!33759 lt!2448378)) (reg!16952 r!7292)) (= (regOne!33759 lt!2448378) (Star!16623 (reg!16952 r!7292)))) (= lambda!383923 lambda!383825))))

(declare-fun bs!1813845 () Bool)

(assert (= bs!1813845 (and b!6804246 b!6804157)))

(assert (=> bs!1813845 (= (and (= (reg!16952 (regOne!33759 lt!2448378)) (reg!16952 (regOne!33759 r!7292))) (= (regOne!33759 lt!2448378) (regOne!33759 r!7292))) (= lambda!383923 lambda!383916))))

(assert (=> bs!1813836 (= (and (= (reg!16952 (regOne!33759 lt!2448378)) (reg!16952 r!7292)) (= (regOne!33759 lt!2448378) (Star!16623 (reg!16952 r!7292)))) (= lambda!383923 lambda!383896))))

(assert (=> bs!1813842 (not (= lambda!383923 lambda!383810))))

(assert (=> bs!1813839 (not (= lambda!383923 lambda!383746))))

(declare-fun bs!1813846 () Bool)

(assert (= bs!1813846 (and b!6804246 b!6803761)))

(assert (=> bs!1813846 (= (and (= (reg!16952 (regOne!33759 lt!2448378)) (reg!16952 (regTwo!33759 lt!2448378))) (= (regOne!33759 lt!2448378) (regTwo!33759 lt!2448378))) (= lambda!383923 lambda!383898))))

(assert (=> bs!1813840 (not (= lambda!383923 lambda!383911))))

(assert (=> bs!1813839 (= (and (= (reg!16952 (regOne!33759 lt!2448378)) (reg!16952 r!7292)) (= (regOne!33759 lt!2448378) r!7292)) (= lambda!383923 lambda!383745))))

(assert (=> b!6804246 true))

(assert (=> b!6804246 true))

(declare-fun bs!1813847 () Bool)

(declare-fun b!6804248 () Bool)

(assert (= bs!1813847 (and b!6804248 b!6802354)))

(declare-fun lambda!383924 () Int)

(assert (=> bs!1813847 (= (and (= (regOne!33758 (regOne!33759 lt!2448378)) (regOne!33758 lt!2448378)) (= (regTwo!33758 (regOne!33759 lt!2448378)) (regTwo!33758 lt!2448378))) (= lambda!383924 lambda!383761))))

(declare-fun bs!1813848 () Bool)

(assert (= bs!1813848 (and b!6804248 b!6804159)))

(assert (=> bs!1813848 (= (and (= (regOne!33758 (regOne!33759 lt!2448378)) (regOne!33758 (regOne!33759 r!7292))) (= (regTwo!33758 (regOne!33759 lt!2448378)) (regTwo!33758 (regOne!33759 r!7292)))) (= lambda!383924 lambda!383917))))

(declare-fun bs!1813849 () Bool)

(assert (= bs!1813849 (and b!6804248 d!2137583)))

(assert (=> bs!1813849 (not (= lambda!383924 lambda!383822))))

(declare-fun bs!1813850 () Bool)

(assert (= bs!1813850 (and b!6804248 d!2137985)))

(assert (=> bs!1813850 (not (= lambda!383924 lambda!383894))))

(declare-fun bs!1813851 () Bool)

(assert (= bs!1813851 (and b!6804248 d!2138237)))

(assert (=> bs!1813851 (not (= lambda!383924 lambda!383922))))

(declare-fun bs!1813852 () Bool)

(assert (= bs!1813852 (and b!6804248 b!6803763)))

(assert (=> bs!1813852 (= (and (= (regOne!33758 (regOne!33759 lt!2448378)) (regOne!33758 (regTwo!33759 lt!2448378))) (= (regTwo!33758 (regOne!33759 lt!2448378)) (regTwo!33758 (regTwo!33759 lt!2448378)))) (= lambda!383924 lambda!383900))))

(declare-fun bs!1813853 () Bool)

(assert (= bs!1813853 (and b!6804248 b!6802221)))

(assert (=> bs!1813853 (not (= lambda!383924 lambda!383744))))

(declare-fun bs!1813854 () Bool)

(assert (= bs!1813854 (and b!6804248 d!2138209)))

(assert (=> bs!1813854 (= (and (= (regOne!33758 (regOne!33759 lt!2448378)) (reg!16952 r!7292)) (= (regTwo!33758 (regOne!33759 lt!2448378)) r!7292)) (= lambda!383924 lambda!383912))))

(declare-fun bs!1813855 () Bool)

(assert (= bs!1813855 (and b!6804248 b!6802906)))

(assert (=> bs!1813855 (not (= lambda!383924 lambda!383835))))

(declare-fun bs!1813856 () Bool)

(assert (= bs!1813856 (and b!6804248 d!2137575)))

(assert (=> bs!1813856 (= (and (= (regOne!33758 (regOne!33759 lt!2448378)) (reg!16952 r!7292)) (= (regTwo!33758 (regOne!33759 lt!2448378)) r!7292)) (= lambda!383924 lambda!383813))))

(declare-fun bs!1813857 () Bool)

(assert (= bs!1813857 (and b!6804248 b!6802352)))

(assert (=> bs!1813857 (not (= lambda!383924 lambda!383760))))

(declare-fun bs!1813858 () Bool)

(assert (= bs!1813858 (and b!6804248 d!2137603)))

(assert (=> bs!1813858 (not (= lambda!383924 lambda!383830))))

(assert (=> bs!1813849 (not (= lambda!383924 lambda!383825))))

(declare-fun bs!1813859 () Bool)

(assert (= bs!1813859 (and b!6804248 b!6804157)))

(assert (=> bs!1813859 (not (= lambda!383924 lambda!383916))))

(assert (=> bs!1813850 (not (= lambda!383924 lambda!383896))))

(assert (=> bs!1813856 (not (= lambda!383924 lambda!383810))))

(declare-fun bs!1813860 () Bool)

(assert (= bs!1813860 (and b!6804248 b!6802908)))

(assert (=> bs!1813860 (= (and (= (regOne!33758 (regOne!33759 lt!2448378)) (regOne!33758 r!7292)) (= (regTwo!33758 (regOne!33759 lt!2448378)) (regTwo!33758 r!7292))) (= lambda!383924 lambda!383836))))

(declare-fun bs!1813861 () Bool)

(assert (= bs!1813861 (and b!6804248 b!6804246)))

(assert (=> bs!1813861 (not (= lambda!383924 lambda!383923))))

(assert (=> bs!1813853 (= (and (= (regOne!33758 (regOne!33759 lt!2448378)) (reg!16952 r!7292)) (= (regTwo!33758 (regOne!33759 lt!2448378)) r!7292)) (= lambda!383924 lambda!383746))))

(declare-fun bs!1813862 () Bool)

(assert (= bs!1813862 (and b!6804248 b!6803761)))

(assert (=> bs!1813862 (not (= lambda!383924 lambda!383898))))

(assert (=> bs!1813854 (not (= lambda!383924 lambda!383911))))

(assert (=> bs!1813853 (not (= lambda!383924 lambda!383745))))

(assert (=> b!6804248 true))

(assert (=> b!6804248 true))

(declare-fun b!6804244 () Bool)

(declare-fun e!4106153 () Bool)

(declare-fun call!618371 () Bool)

(assert (=> b!6804244 (= e!4106153 call!618371)))

(declare-fun b!6804245 () Bool)

(declare-fun e!4106151 () Bool)

(assert (=> b!6804245 (= e!4106153 e!4106151)))

(declare-fun res!2780467 () Bool)

(assert (=> b!6804245 (= res!2780467 (not ((_ is EmptyLang!16623) (regOne!33759 lt!2448378))))))

(assert (=> b!6804245 (=> (not res!2780467) (not e!4106151))))

(declare-fun e!4106149 () Bool)

(declare-fun call!618372 () Bool)

(assert (=> b!6804246 (= e!4106149 call!618372)))

(declare-fun b!6804247 () Bool)

(declare-fun res!2780466 () Bool)

(assert (=> b!6804247 (=> res!2780466 e!4106149)))

(assert (=> b!6804247 (= res!2780466 call!618371)))

(declare-fun e!4106152 () Bool)

(assert (=> b!6804247 (= e!4106152 e!4106149)))

(declare-fun bm!618366 () Bool)

(assert (=> bm!618366 (= call!618371 (isEmpty!38426 s!2326))))

(declare-fun bm!618367 () Bool)

(declare-fun c!1265443 () Bool)

(assert (=> bm!618367 (= call!618372 (Exists!3691 (ite c!1265443 lambda!383923 lambda!383924)))))

(declare-fun d!2138267 () Bool)

(declare-fun c!1265444 () Bool)

(assert (=> d!2138267 (= c!1265444 ((_ is EmptyExpr!16623) (regOne!33759 lt!2448378)))))

(assert (=> d!2138267 (= (matchRSpec!3724 (regOne!33759 lt!2448378) s!2326) e!4106153)))

(assert (=> b!6804248 (= e!4106152 call!618372)))

(declare-fun b!6804249 () Bool)

(declare-fun c!1265442 () Bool)

(assert (=> b!6804249 (= c!1265442 ((_ is ElementMatch!16623) (regOne!33759 lt!2448378)))))

(declare-fun e!4106154 () Bool)

(assert (=> b!6804249 (= e!4106151 e!4106154)))

(declare-fun b!6804250 () Bool)

(declare-fun e!4106148 () Bool)

(assert (=> b!6804250 (= e!4106148 e!4106152)))

(assert (=> b!6804250 (= c!1265443 ((_ is Star!16623) (regOne!33759 lt!2448378)))))

(declare-fun b!6804251 () Bool)

(declare-fun c!1265445 () Bool)

(assert (=> b!6804251 (= c!1265445 ((_ is Union!16623) (regOne!33759 lt!2448378)))))

(assert (=> b!6804251 (= e!4106154 e!4106148)))

(declare-fun b!6804252 () Bool)

(declare-fun e!4106150 () Bool)

(assert (=> b!6804252 (= e!4106148 e!4106150)))

(declare-fun res!2780465 () Bool)

(assert (=> b!6804252 (= res!2780465 (matchRSpec!3724 (regOne!33759 (regOne!33759 lt!2448378)) s!2326))))

(assert (=> b!6804252 (=> res!2780465 e!4106150)))

(declare-fun b!6804253 () Bool)

(assert (=> b!6804253 (= e!4106154 (= s!2326 (Cons!66044 (c!1264881 (regOne!33759 lt!2448378)) Nil!66044)))))

(declare-fun b!6804254 () Bool)

(assert (=> b!6804254 (= e!4106150 (matchRSpec!3724 (regTwo!33759 (regOne!33759 lt!2448378)) s!2326))))

(assert (= (and d!2138267 c!1265444) b!6804244))

(assert (= (and d!2138267 (not c!1265444)) b!6804245))

(assert (= (and b!6804245 res!2780467) b!6804249))

(assert (= (and b!6804249 c!1265442) b!6804253))

(assert (= (and b!6804249 (not c!1265442)) b!6804251))

(assert (= (and b!6804251 c!1265445) b!6804252))

(assert (= (and b!6804251 (not c!1265445)) b!6804250))

(assert (= (and b!6804252 (not res!2780465)) b!6804254))

(assert (= (and b!6804250 c!1265443) b!6804247))

(assert (= (and b!6804250 (not c!1265443)) b!6804248))

(assert (= (and b!6804247 (not res!2780466)) b!6804246))

(assert (= (or b!6804246 b!6804248) bm!618367))

(assert (= (or b!6804244 b!6804247) bm!618366))

(assert (=> bm!618366 m!7548460))

(declare-fun m!7550558 () Bool)

(assert (=> bm!618367 m!7550558))

(declare-fun m!7550560 () Bool)

(assert (=> b!6804252 m!7550560))

(declare-fun m!7550562 () Bool)

(assert (=> b!6804254 m!7550562))

(assert (=> b!6802358 d!2138267))

(declare-fun b!6804255 () Bool)

(declare-fun e!4106158 () Bool)

(declare-fun e!4106159 () Bool)

(assert (=> b!6804255 (= e!4106158 e!4106159)))

(declare-fun res!2780468 () Bool)

(assert (=> b!6804255 (=> (not res!2780468) (not e!4106159))))

(declare-fun call!618373 () Bool)

(assert (=> b!6804255 (= res!2780468 call!618373)))

(declare-fun b!6804256 () Bool)

(declare-fun e!4106155 () Bool)

(declare-fun e!4106157 () Bool)

(assert (=> b!6804256 (= e!4106155 e!4106157)))

(declare-fun c!1265446 () Bool)

(assert (=> b!6804256 (= c!1265446 ((_ is Union!16623) lt!2448477))))

(declare-fun d!2138269 () Bool)

(declare-fun res!2780472 () Bool)

(declare-fun e!4106161 () Bool)

(assert (=> d!2138269 (=> res!2780472 e!4106161)))

(assert (=> d!2138269 (= res!2780472 ((_ is ElementMatch!16623) lt!2448477))))

(assert (=> d!2138269 (= (validRegex!8359 lt!2448477) e!4106161)))

(declare-fun b!6804257 () Bool)

(declare-fun call!618375 () Bool)

(assert (=> b!6804257 (= e!4106159 call!618375)))

(declare-fun bm!618368 () Bool)

(declare-fun call!618374 () Bool)

(assert (=> bm!618368 (= call!618373 call!618374)))

(declare-fun b!6804258 () Bool)

(declare-fun e!4106156 () Bool)

(assert (=> b!6804258 (= e!4106156 call!618374)))

(declare-fun b!6804259 () Bool)

(assert (=> b!6804259 (= e!4106155 e!4106156)))

(declare-fun res!2780469 () Bool)

(assert (=> b!6804259 (= res!2780469 (not (nullable!6601 (reg!16952 lt!2448477))))))

(assert (=> b!6804259 (=> (not res!2780469) (not e!4106156))))

(declare-fun bm!618369 () Bool)

(declare-fun c!1265447 () Bool)

(assert (=> bm!618369 (= call!618374 (validRegex!8359 (ite c!1265447 (reg!16952 lt!2448477) (ite c!1265446 (regOne!33759 lt!2448477) (regOne!33758 lt!2448477)))))))

(declare-fun b!6804260 () Bool)

(declare-fun e!4106160 () Bool)

(assert (=> b!6804260 (= e!4106160 call!618375)))

(declare-fun b!6804261 () Bool)

(declare-fun res!2780471 () Bool)

(assert (=> b!6804261 (=> res!2780471 e!4106158)))

(assert (=> b!6804261 (= res!2780471 (not ((_ is Concat!25468) lt!2448477)))))

(assert (=> b!6804261 (= e!4106157 e!4106158)))

(declare-fun b!6804262 () Bool)

(assert (=> b!6804262 (= e!4106161 e!4106155)))

(assert (=> b!6804262 (= c!1265447 ((_ is Star!16623) lt!2448477))))

(declare-fun bm!618370 () Bool)

(assert (=> bm!618370 (= call!618375 (validRegex!8359 (ite c!1265446 (regTwo!33759 lt!2448477) (regTwo!33758 lt!2448477))))))

(declare-fun b!6804263 () Bool)

(declare-fun res!2780470 () Bool)

(assert (=> b!6804263 (=> (not res!2780470) (not e!4106160))))

(assert (=> b!6804263 (= res!2780470 call!618373)))

(assert (=> b!6804263 (= e!4106157 e!4106160)))

(assert (= (and d!2138269 (not res!2780472)) b!6804262))

(assert (= (and b!6804262 c!1265447) b!6804259))

(assert (= (and b!6804262 (not c!1265447)) b!6804256))

(assert (= (and b!6804259 res!2780469) b!6804258))

(assert (= (and b!6804256 c!1265446) b!6804263))

(assert (= (and b!6804256 (not c!1265446)) b!6804261))

(assert (= (and b!6804263 res!2780470) b!6804260))

(assert (= (and b!6804261 (not res!2780471)) b!6804255))

(assert (= (and b!6804255 res!2780468) b!6804257))

(assert (= (or b!6804260 b!6804257) bm!618370))

(assert (= (or b!6804263 b!6804255) bm!618368))

(assert (= (or b!6804258 bm!618368) bm!618369))

(declare-fun m!7550564 () Bool)

(assert (=> b!6804259 m!7550564))

(declare-fun m!7550566 () Bool)

(assert (=> bm!618369 m!7550566))

(declare-fun m!7550568 () Bool)

(assert (=> bm!618370 m!7550568))

(assert (=> d!2137547 d!2138269))

(declare-fun d!2138271 () Bool)

(declare-fun res!2780473 () Bool)

(declare-fun e!4106162 () Bool)

(assert (=> d!2138271 (=> res!2780473 e!4106162)))

(assert (=> d!2138271 (= res!2780473 ((_ is Nil!66045) (exprs!6507 (h!72494 zl!343))))))

(assert (=> d!2138271 (= (forall!15815 (exprs!6507 (h!72494 zl!343)) lambda!383787) e!4106162)))

(declare-fun b!6804264 () Bool)

(declare-fun e!4106163 () Bool)

(assert (=> b!6804264 (= e!4106162 e!4106163)))

(declare-fun res!2780474 () Bool)

(assert (=> b!6804264 (=> (not res!2780474) (not e!4106163))))

(assert (=> b!6804264 (= res!2780474 (dynLambda!26380 lambda!383787 (h!72493 (exprs!6507 (h!72494 zl!343)))))))

(declare-fun b!6804265 () Bool)

(assert (=> b!6804265 (= e!4106163 (forall!15815 (t!379900 (exprs!6507 (h!72494 zl!343))) lambda!383787))))

(assert (= (and d!2138271 (not res!2780473)) b!6804264))

(assert (= (and b!6804264 res!2780474) b!6804265))

(declare-fun b_lambda!256503 () Bool)

(assert (=> (not b_lambda!256503) (not b!6804264)))

(declare-fun m!7550570 () Bool)

(assert (=> b!6804264 m!7550570))

(declare-fun m!7550572 () Bool)

(assert (=> b!6804265 m!7550572))

(assert (=> d!2137547 d!2138271))

(declare-fun d!2138273 () Bool)

(declare-fun c!1265448 () Bool)

(assert (=> d!2138273 (= c!1265448 (isEmpty!38426 (tail!12740 (_2!36901 lt!2448389))))))

(declare-fun e!4106164 () Bool)

(assert (=> d!2138273 (= (matchZipper!2609 (derivationStepZipper!2567 lt!2448387 (head!13655 (_2!36901 lt!2448389))) (tail!12740 (_2!36901 lt!2448389))) e!4106164)))

(declare-fun b!6804266 () Bool)

(assert (=> b!6804266 (= e!4106164 (nullableZipper!2329 (derivationStepZipper!2567 lt!2448387 (head!13655 (_2!36901 lt!2448389)))))))

(declare-fun b!6804267 () Bool)

(assert (=> b!6804267 (= e!4106164 (matchZipper!2609 (derivationStepZipper!2567 (derivationStepZipper!2567 lt!2448387 (head!13655 (_2!36901 lt!2448389))) (head!13655 (tail!12740 (_2!36901 lt!2448389)))) (tail!12740 (tail!12740 (_2!36901 lt!2448389)))))))

(assert (= (and d!2138273 c!1265448) b!6804266))

(assert (= (and d!2138273 (not c!1265448)) b!6804267))

(assert (=> d!2138273 m!7549154))

(declare-fun m!7550574 () Bool)

(assert (=> d!2138273 m!7550574))

(assert (=> b!6804266 m!7549152))

(declare-fun m!7550576 () Bool)

(assert (=> b!6804266 m!7550576))

(assert (=> b!6804267 m!7549154))

(declare-fun m!7550578 () Bool)

(assert (=> b!6804267 m!7550578))

(assert (=> b!6804267 m!7549152))

(assert (=> b!6804267 m!7550578))

(declare-fun m!7550580 () Bool)

(assert (=> b!6804267 m!7550580))

(assert (=> b!6804267 m!7549154))

(declare-fun m!7550582 () Bool)

(assert (=> b!6804267 m!7550582))

(assert (=> b!6804267 m!7550580))

(assert (=> b!6804267 m!7550582))

(declare-fun m!7550584 () Bool)

(assert (=> b!6804267 m!7550584))

(assert (=> b!6802950 d!2138273))

(declare-fun bs!1813863 () Bool)

(declare-fun d!2138275 () Bool)

(assert (= bs!1813863 (and d!2138275 d!2137543)))

(declare-fun lambda!383925 () Int)

(assert (=> bs!1813863 (= (= (head!13655 (_2!36901 lt!2448389)) (h!72492 s!2326)) (= lambda!383925 lambda!383784))))

(declare-fun bs!1813864 () Bool)

(assert (= bs!1813864 (and d!2138275 d!2138161)))

(assert (=> bs!1813864 (= (= (head!13655 (_2!36901 lt!2448389)) (head!13655 (t!379899 s!2326))) (= lambda!383925 lambda!383904))))

(declare-fun bs!1813865 () Bool)

(assert (= bs!1813865 (and d!2138275 b!6802209)))

(assert (=> bs!1813865 (= (= (head!13655 (_2!36901 lt!2448389)) (h!72492 s!2326)) (= lambda!383925 lambda!383747))))

(declare-fun bs!1813866 () Bool)

(assert (= bs!1813866 (and d!2138275 d!2138153)))

(assert (=> bs!1813866 (= (= (head!13655 (_2!36901 lt!2448389)) (head!13655 s!2326)) (= lambda!383925 lambda!383903))))

(declare-fun bs!1813867 () Bool)

(assert (= bs!1813867 (and d!2138275 d!2137497)))

(assert (=> bs!1813867 (= (= (head!13655 (_2!36901 lt!2448389)) (h!72492 s!2326)) (= lambda!383925 lambda!383777))))

(declare-fun bs!1813868 () Bool)

(assert (= bs!1813868 (and d!2138275 d!2137527)))

(assert (=> bs!1813868 (= (= (head!13655 (_2!36901 lt!2448389)) (h!72492 s!2326)) (= lambda!383925 lambda!383779))))

(assert (=> d!2138275 true))

(assert (=> d!2138275 (= (derivationStepZipper!2567 lt!2448387 (head!13655 (_2!36901 lt!2448389))) (flatMap!2104 lt!2448387 lambda!383925))))

(declare-fun bs!1813869 () Bool)

(assert (= bs!1813869 d!2138275))

(declare-fun m!7550586 () Bool)

(assert (=> bs!1813869 m!7550586))

(assert (=> b!6802950 d!2138275))

(declare-fun d!2138277 () Bool)

(assert (=> d!2138277 (= (head!13655 (_2!36901 lt!2448389)) (h!72492 (_2!36901 lt!2448389)))))

(assert (=> b!6802950 d!2138277))

(declare-fun d!2138279 () Bool)

(assert (=> d!2138279 (= (tail!12740 (_2!36901 lt!2448389)) (t!379899 (_2!36901 lt!2448389)))))

(assert (=> b!6802950 d!2138279))

(declare-fun d!2138281 () Bool)

(declare-fun lt!2448638 () Int)

(assert (=> d!2138281 (>= lt!2448638 0)))

(declare-fun e!4106167 () Int)

(assert (=> d!2138281 (= lt!2448638 e!4106167)))

(declare-fun c!1265451 () Bool)

(assert (=> d!2138281 (= c!1265451 ((_ is Nil!66044) lt!2448547))))

(assert (=> d!2138281 (= (size!40671 lt!2448547) lt!2448638)))

(declare-fun b!6804272 () Bool)

(assert (=> b!6804272 (= e!4106167 0)))

(declare-fun b!6804273 () Bool)

(assert (=> b!6804273 (= e!4106167 (+ 1 (size!40671 (t!379899 lt!2448547))))))

(assert (= (and d!2138281 c!1265451) b!6804272))

(assert (= (and d!2138281 (not c!1265451)) b!6804273))

(declare-fun m!7550588 () Bool)

(assert (=> b!6804273 m!7550588))

(assert (=> b!6802997 d!2138281))

(declare-fun d!2138283 () Bool)

(declare-fun lt!2448639 () Int)

(assert (=> d!2138283 (>= lt!2448639 0)))

(declare-fun e!4106168 () Int)

(assert (=> d!2138283 (= lt!2448639 e!4106168)))

(declare-fun c!1265452 () Bool)

(assert (=> d!2138283 (= c!1265452 ((_ is Nil!66044) (_1!36901 lt!2448389)))))

(assert (=> d!2138283 (= (size!40671 (_1!36901 lt!2448389)) lt!2448639)))

(declare-fun b!6804274 () Bool)

(assert (=> b!6804274 (= e!4106168 0)))

(declare-fun b!6804275 () Bool)

(assert (=> b!6804275 (= e!4106168 (+ 1 (size!40671 (t!379899 (_1!36901 lt!2448389)))))))

(assert (= (and d!2138283 c!1265452) b!6804274))

(assert (= (and d!2138283 (not c!1265452)) b!6804275))

(assert (=> b!6804275 m!7550378))

(assert (=> b!6802997 d!2138283))

(declare-fun d!2138285 () Bool)

(declare-fun lt!2448640 () Int)

(assert (=> d!2138285 (>= lt!2448640 0)))

(declare-fun e!4106169 () Int)

(assert (=> d!2138285 (= lt!2448640 e!4106169)))

(declare-fun c!1265453 () Bool)

(assert (=> d!2138285 (= c!1265453 ((_ is Nil!66044) (_2!36901 lt!2448389)))))

(assert (=> d!2138285 (= (size!40671 (_2!36901 lt!2448389)) lt!2448640)))

(declare-fun b!6804276 () Bool)

(assert (=> b!6804276 (= e!4106169 0)))

(declare-fun b!6804277 () Bool)

(assert (=> b!6804277 (= e!4106169 (+ 1 (size!40671 (t!379899 (_2!36901 lt!2448389)))))))

(assert (= (and d!2138285 c!1265453) b!6804276))

(assert (= (and d!2138285 (not c!1265453)) b!6804277))

(declare-fun m!7550590 () Bool)

(assert (=> b!6804277 m!7550590))

(assert (=> b!6802997 d!2138285))

(assert (=> b!6802945 d!2137973))

(assert (=> b!6802945 d!2137977))

(assert (=> d!2137503 d!2137501))

(declare-fun d!2138287 () Bool)

(assert (=> d!2138287 (= (flatMap!2104 lt!2448380 lambda!383747) (dynLambda!26375 lambda!383747 lt!2448407))))

(assert (=> d!2138287 true))

(declare-fun _$13!4288 () Unit!159937)

(assert (=> d!2138287 (= (choose!50710 lt!2448380 lt!2448407 lambda!383747) _$13!4288)))

(declare-fun b_lambda!256505 () Bool)

(assert (=> (not b_lambda!256505) (not d!2138287)))

(declare-fun bs!1813870 () Bool)

(assert (= bs!1813870 d!2138287))

(assert (=> bs!1813870 m!7548516))

(assert (=> bs!1813870 m!7548786))

(assert (=> d!2137503 d!2138287))

(assert (=> d!2137593 d!2137943))

(declare-fun b!6804278 () Bool)

(declare-fun res!2780475 () Bool)

(declare-fun e!4106176 () Bool)

(assert (=> b!6804278 (=> res!2780475 e!4106176)))

(assert (=> b!6804278 (= res!2780475 (not (isEmpty!38426 (tail!12740 Nil!66044))))))

(declare-fun b!6804279 () Bool)

(declare-fun e!4106175 () Bool)

(declare-fun e!4106174 () Bool)

(assert (=> b!6804279 (= e!4106175 e!4106174)))

(declare-fun res!2780478 () Bool)

(assert (=> b!6804279 (=> (not res!2780478) (not e!4106174))))

(declare-fun lt!2448641 () Bool)

(assert (=> b!6804279 (= res!2780478 (not lt!2448641))))

(declare-fun b!6804281 () Bool)

(declare-fun e!4106170 () Bool)

(declare-fun e!4106172 () Bool)

(assert (=> b!6804281 (= e!4106170 e!4106172)))

(declare-fun c!1265454 () Bool)

(assert (=> b!6804281 (= c!1265454 ((_ is EmptyLang!16623) (reg!16952 r!7292)))))

(declare-fun b!6804282 () Bool)

(declare-fun e!4106173 () Bool)

(assert (=> b!6804282 (= e!4106173 (= (head!13655 Nil!66044) (c!1264881 (reg!16952 r!7292))))))

(declare-fun b!6804283 () Bool)

(declare-fun e!4106171 () Bool)

(assert (=> b!6804283 (= e!4106171 (matchR!8806 (derivativeStep!5286 (reg!16952 r!7292) (head!13655 Nil!66044)) (tail!12740 Nil!66044)))))

(declare-fun b!6804284 () Bool)

(assert (=> b!6804284 (= e!4106172 (not lt!2448641))))

(declare-fun b!6804285 () Bool)

(assert (=> b!6804285 (= e!4106174 e!4106176)))

(declare-fun res!2780479 () Bool)

(assert (=> b!6804285 (=> res!2780479 e!4106176)))

(declare-fun call!618376 () Bool)

(assert (=> b!6804285 (= res!2780479 call!618376)))

(declare-fun b!6804286 () Bool)

(assert (=> b!6804286 (= e!4106170 (= lt!2448641 call!618376))))

(declare-fun bm!618371 () Bool)

(assert (=> bm!618371 (= call!618376 (isEmpty!38426 Nil!66044))))

(declare-fun b!6804287 () Bool)

(assert (=> b!6804287 (= e!4106171 (nullable!6601 (reg!16952 r!7292)))))

(declare-fun b!6804280 () Bool)

(declare-fun res!2780482 () Bool)

(assert (=> b!6804280 (=> (not res!2780482) (not e!4106173))))

(assert (=> b!6804280 (= res!2780482 (not call!618376))))

(declare-fun d!2138289 () Bool)

(assert (=> d!2138289 e!4106170))

(declare-fun c!1265455 () Bool)

(assert (=> d!2138289 (= c!1265455 ((_ is EmptyExpr!16623) (reg!16952 r!7292)))))

(assert (=> d!2138289 (= lt!2448641 e!4106171)))

(declare-fun c!1265456 () Bool)

(assert (=> d!2138289 (= c!1265456 (isEmpty!38426 Nil!66044))))

(assert (=> d!2138289 (validRegex!8359 (reg!16952 r!7292))))

(assert (=> d!2138289 (= (matchR!8806 (reg!16952 r!7292) Nil!66044) lt!2448641)))

(declare-fun b!6804288 () Bool)

(declare-fun res!2780480 () Bool)

(assert (=> b!6804288 (=> (not res!2780480) (not e!4106173))))

(assert (=> b!6804288 (= res!2780480 (isEmpty!38426 (tail!12740 Nil!66044)))))

(declare-fun b!6804289 () Bool)

(declare-fun res!2780481 () Bool)

(assert (=> b!6804289 (=> res!2780481 e!4106175)))

(assert (=> b!6804289 (= res!2780481 (not ((_ is ElementMatch!16623) (reg!16952 r!7292))))))

(assert (=> b!6804289 (= e!4106172 e!4106175)))

(declare-fun b!6804290 () Bool)

(assert (=> b!6804290 (= e!4106176 (not (= (head!13655 Nil!66044) (c!1264881 (reg!16952 r!7292)))))))

(declare-fun b!6804291 () Bool)

(declare-fun res!2780477 () Bool)

(assert (=> b!6804291 (=> res!2780477 e!4106175)))

(assert (=> b!6804291 (= res!2780477 e!4106173)))

(declare-fun res!2780476 () Bool)

(assert (=> b!6804291 (=> (not res!2780476) (not e!4106173))))

(assert (=> b!6804291 (= res!2780476 lt!2448641)))

(assert (= (and d!2138289 c!1265456) b!6804287))

(assert (= (and d!2138289 (not c!1265456)) b!6804283))

(assert (= (and d!2138289 c!1265455) b!6804286))

(assert (= (and d!2138289 (not c!1265455)) b!6804281))

(assert (= (and b!6804281 c!1265454) b!6804284))

(assert (= (and b!6804281 (not c!1265454)) b!6804289))

(assert (= (and b!6804289 (not res!2780481)) b!6804291))

(assert (= (and b!6804291 res!2780476) b!6804280))

(assert (= (and b!6804280 res!2780482) b!6804288))

(assert (= (and b!6804288 res!2780480) b!6804282))

(assert (= (and b!6804291 (not res!2780477)) b!6804279))

(assert (= (and b!6804279 res!2780478) b!6804285))

(assert (= (and b!6804285 (not res!2780479)) b!6804278))

(assert (= (and b!6804278 (not res!2780475)) b!6804290))

(assert (= (or b!6804286 b!6804280 b!6804285) bm!618371))

(declare-fun m!7550592 () Bool)

(assert (=> b!6804282 m!7550592))

(declare-fun m!7550594 () Bool)

(assert (=> b!6804278 m!7550594))

(assert (=> b!6804278 m!7550594))

(declare-fun m!7550596 () Bool)

(assert (=> b!6804278 m!7550596))

(assert (=> b!6804290 m!7550592))

(assert (=> b!6804283 m!7550592))

(assert (=> b!6804283 m!7550592))

(declare-fun m!7550598 () Bool)

(assert (=> b!6804283 m!7550598))

(assert (=> b!6804283 m!7550594))

(assert (=> b!6804283 m!7550598))

(assert (=> b!6804283 m!7550594))

(declare-fun m!7550600 () Bool)

(assert (=> b!6804283 m!7550600))

(declare-fun m!7550602 () Bool)

(assert (=> bm!618371 m!7550602))

(assert (=> d!2138289 m!7550602))

(assert (=> d!2138289 m!7549026))

(assert (=> b!6804287 m!7549126))

(assert (=> b!6804288 m!7550594))

(assert (=> b!6804288 m!7550594))

(assert (=> b!6804288 m!7550596))

(assert (=> d!2137593 d!2138289))

(assert (=> d!2137593 d!2138039))

(declare-fun d!2138291 () Bool)

(assert (=> d!2138291 true))

(declare-fun setRes!46657 () Bool)

(assert (=> d!2138291 setRes!46657))

(declare-fun condSetEmpty!46657 () Bool)

(declare-fun res!2780483 () (InoxSet Context!12014))

(assert (=> d!2138291 (= condSetEmpty!46657 (= res!2780483 ((as const (Array Context!12014 Bool)) false)))))

(assert (=> d!2138291 (= (choose!50708 lt!2448380 lambda!383747) res!2780483)))

(declare-fun setIsEmpty!46657 () Bool)

(assert (=> setIsEmpty!46657 setRes!46657))

(declare-fun tp!1862601 () Bool)

(declare-fun setNonEmpty!46657 () Bool)

(declare-fun setElem!46657 () Context!12014)

(declare-fun e!4106177 () Bool)

(assert (=> setNonEmpty!46657 (= setRes!46657 (and tp!1862601 (inv!84804 setElem!46657) e!4106177))))

(declare-fun setRest!46657 () (InoxSet Context!12014))

(assert (=> setNonEmpty!46657 (= res!2780483 ((_ map or) (store ((as const (Array Context!12014 Bool)) false) setElem!46657 true) setRest!46657))))

(declare-fun b!6804292 () Bool)

(declare-fun tp!1862600 () Bool)

(assert (=> b!6804292 (= e!4106177 tp!1862600)))

(assert (= (and d!2138291 condSetEmpty!46657) setIsEmpty!46657))

(assert (= (and d!2138291 (not condSetEmpty!46657)) setNonEmpty!46657))

(assert (= setNonEmpty!46657 b!6804292))

(declare-fun m!7550604 () Bool)

(assert (=> setNonEmpty!46657 m!7550604))

(assert (=> d!2137501 d!2138291))

(declare-fun d!2138293 () Bool)

(declare-fun res!2780484 () Bool)

(declare-fun e!4106178 () Bool)

(assert (=> d!2138293 (=> res!2780484 e!4106178)))

(assert (=> d!2138293 (= res!2780484 ((_ is Nil!66045) (exprs!6507 (h!72494 zl!343))))))

(assert (=> d!2138293 (= (forall!15815 (exprs!6507 (h!72494 zl!343)) lambda!383782) e!4106178)))

(declare-fun b!6804293 () Bool)

(declare-fun e!4106179 () Bool)

(assert (=> b!6804293 (= e!4106178 e!4106179)))

(declare-fun res!2780485 () Bool)

(assert (=> b!6804293 (=> (not res!2780485) (not e!4106179))))

(assert (=> b!6804293 (= res!2780485 (dynLambda!26380 lambda!383782 (h!72493 (exprs!6507 (h!72494 zl!343)))))))

(declare-fun b!6804294 () Bool)

(assert (=> b!6804294 (= e!4106179 (forall!15815 (t!379900 (exprs!6507 (h!72494 zl!343))) lambda!383782))))

(assert (= (and d!2138293 (not res!2780484)) b!6804293))

(assert (= (and b!6804293 res!2780485) b!6804294))

(declare-fun b_lambda!256507 () Bool)

(assert (=> (not b_lambda!256507) (not b!6804293)))

(declare-fun m!7550606 () Bool)

(assert (=> b!6804293 m!7550606))

(declare-fun m!7550608 () Bool)

(assert (=> b!6804294 m!7550608))

(assert (=> d!2137533 d!2138293))

(declare-fun d!2138295 () Bool)

(assert (=> d!2138295 (= (isEmptyExpr!1980 lt!2448477) ((_ is EmptyExpr!16623) lt!2448477))))

(assert (=> b!6802670 d!2138295))

(declare-fun d!2138297 () Bool)

(declare-fun res!2780486 () Bool)

(declare-fun e!4106180 () Bool)

(assert (=> d!2138297 (=> res!2780486 e!4106180)))

(assert (=> d!2138297 (= res!2780486 ((_ is Nil!66045) (exprs!6507 lt!2448396)))))

(assert (=> d!2138297 (= (forall!15815 (exprs!6507 lt!2448396) lambda!383843) e!4106180)))

(declare-fun b!6804295 () Bool)

(declare-fun e!4106181 () Bool)

(assert (=> b!6804295 (= e!4106180 e!4106181)))

(declare-fun res!2780487 () Bool)

(assert (=> b!6804295 (=> (not res!2780487) (not e!4106181))))

(assert (=> b!6804295 (= res!2780487 (dynLambda!26380 lambda!383843 (h!72493 (exprs!6507 lt!2448396))))))

(declare-fun b!6804296 () Bool)

(assert (=> b!6804296 (= e!4106181 (forall!15815 (t!379900 (exprs!6507 lt!2448396)) lambda!383843))))

(assert (= (and d!2138297 (not res!2780486)) b!6804295))

(assert (= (and b!6804295 res!2780487) b!6804296))

(declare-fun b_lambda!256509 () Bool)

(assert (=> (not b_lambda!256509) (not b!6804295)))

(declare-fun m!7550610 () Bool)

(assert (=> b!6804295 m!7550610))

(declare-fun m!7550612 () Bool)

(assert (=> b!6804296 m!7550612))

(assert (=> d!2137669 d!2138297))

(assert (=> bs!1813280 d!2137507))

(declare-fun d!2138299 () Bool)

(declare-fun c!1265457 () Bool)

(assert (=> d!2138299 (= c!1265457 (isEmpty!38426 (_2!36901 (get!23004 lt!2448557))))))

(declare-fun e!4106182 () Bool)

(assert (=> d!2138299 (= (matchZipper!2609 lt!2448387 (_2!36901 (get!23004 lt!2448557))) e!4106182)))

(declare-fun b!6804297 () Bool)

(assert (=> b!6804297 (= e!4106182 (nullableZipper!2329 lt!2448387))))

(declare-fun b!6804298 () Bool)

(assert (=> b!6804298 (= e!4106182 (matchZipper!2609 (derivationStepZipper!2567 lt!2448387 (head!13655 (_2!36901 (get!23004 lt!2448557)))) (tail!12740 (_2!36901 (get!23004 lt!2448557)))))))

(assert (= (and d!2138299 c!1265457) b!6804297))

(assert (= (and d!2138299 (not c!1265457)) b!6804298))

(declare-fun m!7550614 () Bool)

(assert (=> d!2138299 m!7550614))

(assert (=> b!6804297 m!7549148))

(declare-fun m!7550616 () Bool)

(assert (=> b!6804298 m!7550616))

(assert (=> b!6804298 m!7550616))

(declare-fun m!7550618 () Bool)

(assert (=> b!6804298 m!7550618))

(declare-fun m!7550620 () Bool)

(assert (=> b!6804298 m!7550620))

(assert (=> b!6804298 m!7550618))

(assert (=> b!6804298 m!7550620))

(declare-fun m!7550622 () Bool)

(assert (=> b!6804298 m!7550622))

(assert (=> b!6803103 d!2138299))

(assert (=> b!6803103 d!2138115))

(declare-fun b!6804299 () Bool)

(declare-fun e!4106184 () Bool)

(assert (=> b!6804299 (= e!4106184 (nullable!6601 (h!72493 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045)))))))))))

(declare-fun d!2138301 () Bool)

(declare-fun c!1265458 () Bool)

(assert (=> d!2138301 (= c!1265458 e!4106184)))

(declare-fun res!2780488 () Bool)

(assert (=> d!2138301 (=> (not res!2780488) (not e!4106184))))

(assert (=> d!2138301 (= res!2780488 ((_ is Cons!66045) (exprs!6507 (Context!12015 (t!379900 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))))))))

(declare-fun e!4106183 () (InoxSet Context!12014))

(assert (=> d!2138301 (= (derivationStepZipperUp!1777 (Context!12015 (t!379900 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))) (h!72492 s!2326)) e!4106183)))

(declare-fun b!6804300 () Bool)

(declare-fun e!4106185 () (InoxSet Context!12014))

(assert (=> b!6804300 (= e!4106185 ((as const (Array Context!12014 Bool)) false))))

(declare-fun bm!618372 () Bool)

(declare-fun call!618377 () (InoxSet Context!12014))

(assert (=> bm!618372 (= call!618377 (derivationStepZipperDown!1851 (h!72493 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))))) (Context!12015 (t!379900 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045)))))))) (h!72492 s!2326)))))

(declare-fun b!6804301 () Bool)

(assert (=> b!6804301 (= e!4106185 call!618377)))

(declare-fun b!6804302 () Bool)

(assert (=> b!6804302 (= e!4106183 e!4106185)))

(declare-fun c!1265459 () Bool)

(assert (=> b!6804302 (= c!1265459 ((_ is Cons!66045) (exprs!6507 (Context!12015 (t!379900 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))))))))

(declare-fun b!6804303 () Bool)

(assert (=> b!6804303 (= e!4106183 ((_ map or) call!618377 (derivationStepZipperUp!1777 (Context!12015 (t!379900 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045)))))))) (h!72492 s!2326))))))

(assert (= (and d!2138301 res!2780488) b!6804299))

(assert (= (and d!2138301 c!1265458) b!6804303))

(assert (= (and d!2138301 (not c!1265458)) b!6804302))

(assert (= (and b!6804302 c!1265459) b!6804301))

(assert (= (and b!6804302 (not c!1265459)) b!6804300))

(assert (= (or b!6804303 b!6804301) bm!618372))

(declare-fun m!7550624 () Bool)

(assert (=> b!6804299 m!7550624))

(declare-fun m!7550626 () Bool)

(assert (=> bm!618372 m!7550626))

(declare-fun m!7550628 () Bool)

(assert (=> b!6804303 m!7550628))

(assert (=> b!6802620 d!2138301))

(declare-fun d!2138303 () Bool)

(declare-fun c!1265460 () Bool)

(assert (=> d!2138303 (= c!1265460 (isEmpty!38426 (tail!12740 (_1!36901 lt!2448389))))))

(declare-fun e!4106186 () Bool)

(assert (=> d!2138303 (= (matchZipper!2609 (derivationStepZipper!2567 lt!2448380 (head!13655 (_1!36901 lt!2448389))) (tail!12740 (_1!36901 lt!2448389))) e!4106186)))

(declare-fun b!6804304 () Bool)

(assert (=> b!6804304 (= e!4106186 (nullableZipper!2329 (derivationStepZipper!2567 lt!2448380 (head!13655 (_1!36901 lt!2448389)))))))

(declare-fun b!6804305 () Bool)

(assert (=> b!6804305 (= e!4106186 (matchZipper!2609 (derivationStepZipper!2567 (derivationStepZipper!2567 lt!2448380 (head!13655 (_1!36901 lt!2448389))) (head!13655 (tail!12740 (_1!36901 lt!2448389)))) (tail!12740 (tail!12740 (_1!36901 lt!2448389)))))))

(assert (= (and d!2138303 c!1265460) b!6804304))

(assert (= (and d!2138303 (not c!1265460)) b!6804305))

(assert (=> d!2138303 m!7548610))

(declare-fun m!7550630 () Bool)

(assert (=> d!2138303 m!7550630))

(assert (=> b!6804304 m!7548608))

(declare-fun m!7550632 () Bool)

(assert (=> b!6804304 m!7550632))

(assert (=> b!6804305 m!7548610))

(declare-fun m!7550634 () Bool)

(assert (=> b!6804305 m!7550634))

(assert (=> b!6804305 m!7548608))

(assert (=> b!6804305 m!7550634))

(declare-fun m!7550636 () Bool)

(assert (=> b!6804305 m!7550636))

(assert (=> b!6804305 m!7548610))

(declare-fun m!7550638 () Bool)

(assert (=> b!6804305 m!7550638))

(assert (=> b!6804305 m!7550636))

(assert (=> b!6804305 m!7550638))

(declare-fun m!7550640 () Bool)

(assert (=> b!6804305 m!7550640))

(assert (=> b!6802307 d!2138303))

(declare-fun bs!1813871 () Bool)

(declare-fun d!2138305 () Bool)

(assert (= bs!1813871 (and d!2138305 d!2137543)))

(declare-fun lambda!383926 () Int)

(assert (=> bs!1813871 (= (= (head!13655 (_1!36901 lt!2448389)) (h!72492 s!2326)) (= lambda!383926 lambda!383784))))

(declare-fun bs!1813872 () Bool)

(assert (= bs!1813872 (and d!2138305 d!2138161)))

(assert (=> bs!1813872 (= (= (head!13655 (_1!36901 lt!2448389)) (head!13655 (t!379899 s!2326))) (= lambda!383926 lambda!383904))))

(declare-fun bs!1813873 () Bool)

(assert (= bs!1813873 (and d!2138305 b!6802209)))

(assert (=> bs!1813873 (= (= (head!13655 (_1!36901 lt!2448389)) (h!72492 s!2326)) (= lambda!383926 lambda!383747))))

(declare-fun bs!1813874 () Bool)

(assert (= bs!1813874 (and d!2138305 d!2138153)))

(assert (=> bs!1813874 (= (= (head!13655 (_1!36901 lt!2448389)) (head!13655 s!2326)) (= lambda!383926 lambda!383903))))

(declare-fun bs!1813875 () Bool)

(assert (= bs!1813875 (and d!2138305 d!2137497)))

(assert (=> bs!1813875 (= (= (head!13655 (_1!36901 lt!2448389)) (h!72492 s!2326)) (= lambda!383926 lambda!383777))))

(declare-fun bs!1813876 () Bool)

(assert (= bs!1813876 (and d!2138305 d!2138275)))

(assert (=> bs!1813876 (= (= (head!13655 (_1!36901 lt!2448389)) (head!13655 (_2!36901 lt!2448389))) (= lambda!383926 lambda!383925))))

(declare-fun bs!1813877 () Bool)

(assert (= bs!1813877 (and d!2138305 d!2137527)))

(assert (=> bs!1813877 (= (= (head!13655 (_1!36901 lt!2448389)) (h!72492 s!2326)) (= lambda!383926 lambda!383779))))

(assert (=> d!2138305 true))

(assert (=> d!2138305 (= (derivationStepZipper!2567 lt!2448380 (head!13655 (_1!36901 lt!2448389))) (flatMap!2104 lt!2448380 lambda!383926))))

(declare-fun bs!1813878 () Bool)

(assert (= bs!1813878 d!2138305))

(declare-fun m!7550642 () Bool)

(assert (=> bs!1813878 m!7550642))

(assert (=> b!6802307 d!2138305))

(declare-fun d!2138307 () Bool)

(assert (=> d!2138307 (= (head!13655 (_1!36901 lt!2448389)) (h!72492 (_1!36901 lt!2448389)))))

(assert (=> b!6802307 d!2138307))

(declare-fun d!2138309 () Bool)

(assert (=> d!2138309 (= (tail!12740 (_1!36901 lt!2448389)) (t!379899 (_1!36901 lt!2448389)))))

(assert (=> b!6802307 d!2138309))

(declare-fun d!2138311 () Bool)

(assert (=> d!2138311 (= (nullable!6601 lt!2448378) (nullableFct!2503 lt!2448378))))

(declare-fun bs!1813879 () Bool)

(assert (= bs!1813879 d!2138311))

(declare-fun m!7550644 () Bool)

(assert (=> bs!1813879 m!7550644))

(assert (=> b!6802431 d!2138311))

(assert (=> d!2137649 d!2137939))

(declare-fun d!2138313 () Bool)

(declare-fun c!1265461 () Bool)

(assert (=> d!2138313 (= c!1265461 (isEmpty!38426 Nil!66044))))

(declare-fun e!4106187 () Bool)

(assert (=> d!2138313 (= (matchZipper!2609 lt!2448380 Nil!66044) e!4106187)))

(declare-fun b!6804306 () Bool)

(assert (=> b!6804306 (= e!4106187 (nullableZipper!2329 lt!2448380))))

(declare-fun b!6804307 () Bool)

(assert (=> b!6804307 (= e!4106187 (matchZipper!2609 (derivationStepZipper!2567 lt!2448380 (head!13655 Nil!66044)) (tail!12740 Nil!66044)))))

(assert (= (and d!2138313 c!1265461) b!6804306))

(assert (= (and d!2138313 (not c!1265461)) b!6804307))

(assert (=> d!2138313 m!7550602))

(assert (=> b!6804306 m!7548604))

(assert (=> b!6804307 m!7550592))

(assert (=> b!6804307 m!7550592))

(declare-fun m!7550646 () Bool)

(assert (=> b!6804307 m!7550646))

(assert (=> b!6804307 m!7550594))

(assert (=> b!6804307 m!7550646))

(assert (=> b!6804307 m!7550594))

(declare-fun m!7550648 () Bool)

(assert (=> b!6804307 m!7550648))

(assert (=> d!2137649 d!2138313))

(declare-fun b!6804311 () Bool)

(declare-fun e!4106189 () Bool)

(declare-fun lt!2448642 () List!66168)

(assert (=> b!6804311 (= e!4106189 (or (not (= s!2326 Nil!66044)) (= lt!2448642 Nil!66044)))))

(declare-fun d!2138315 () Bool)

(assert (=> d!2138315 e!4106189))

(declare-fun res!2780490 () Bool)

(assert (=> d!2138315 (=> (not res!2780490) (not e!4106189))))

(assert (=> d!2138315 (= res!2780490 (= (content!12906 lt!2448642) ((_ map or) (content!12906 Nil!66044) (content!12906 s!2326))))))

(declare-fun e!4106188 () List!66168)

(assert (=> d!2138315 (= lt!2448642 e!4106188)))

(declare-fun c!1265462 () Bool)

(assert (=> d!2138315 (= c!1265462 ((_ is Nil!66044) Nil!66044))))

(assert (=> d!2138315 (= (++!14792 Nil!66044 s!2326) lt!2448642)))

(declare-fun b!6804310 () Bool)

(declare-fun res!2780489 () Bool)

(assert (=> b!6804310 (=> (not res!2780489) (not e!4106189))))

(assert (=> b!6804310 (= res!2780489 (= (size!40671 lt!2448642) (+ (size!40671 Nil!66044) (size!40671 s!2326))))))

(declare-fun b!6804308 () Bool)

(assert (=> b!6804308 (= e!4106188 s!2326)))

(declare-fun b!6804309 () Bool)

(assert (=> b!6804309 (= e!4106188 (Cons!66044 (h!72492 Nil!66044) (++!14792 (t!379899 Nil!66044) s!2326)))))

(assert (= (and d!2138315 c!1265462) b!6804308))

(assert (= (and d!2138315 (not c!1265462)) b!6804309))

(assert (= (and d!2138315 res!2780490) b!6804310))

(assert (= (and b!6804310 res!2780489) b!6804311))

(declare-fun m!7550650 () Bool)

(assert (=> d!2138315 m!7550650))

(assert (=> d!2138315 m!7550268))

(declare-fun m!7550652 () Bool)

(assert (=> d!2138315 m!7550652))

(declare-fun m!7550654 () Bool)

(assert (=> b!6804310 m!7550654))

(assert (=> b!6804310 m!7550274))

(declare-fun m!7550656 () Bool)

(assert (=> b!6804310 m!7550656))

(declare-fun m!7550658 () Bool)

(assert (=> b!6804309 m!7550658))

(assert (=> d!2137649 d!2138315))

(declare-fun d!2138317 () Bool)

(assert (=> d!2138317 (= (isEmpty!38426 (_2!36901 lt!2448389)) ((_ is Nil!66044) (_2!36901 lt!2448389)))))

(assert (=> d!2137629 d!2138317))

(declare-fun d!2138319 () Bool)

(assert (=> d!2138319 (= (flatMap!2104 lt!2448387 lambda!383777) (choose!50708 lt!2448387 lambda!383777))))

(declare-fun bs!1813880 () Bool)

(assert (= bs!1813880 d!2138319))

(declare-fun m!7550660 () Bool)

(assert (=> bs!1813880 m!7550660))

(assert (=> d!2137497 d!2138319))

(declare-fun d!2138321 () Bool)

(assert (=> d!2138321 (= (isEmpty!38428 (t!379900 (exprs!6507 (h!72494 zl!343)))) ((_ is Nil!66045) (t!379900 (exprs!6507 (h!72494 zl!343)))))))

(assert (=> b!6802674 d!2138321))

(declare-fun b!6804312 () Bool)

(declare-fun e!4106192 () (InoxSet Context!12014))

(declare-fun call!618382 () (InoxSet Context!12014))

(assert (=> b!6804312 (= e!4106192 call!618382)))

(declare-fun b!6804313 () Bool)

(declare-fun e!4106191 () (InoxSet Context!12014))

(declare-fun e!4106194 () (InoxSet Context!12014))

(assert (=> b!6804313 (= e!4106191 e!4106194)))

(declare-fun c!1265466 () Bool)

(assert (=> b!6804313 (= c!1265466 ((_ is Union!16623) (ite c!1265001 (regTwo!33759 r!7292) (regOne!33758 r!7292))))))

(declare-fun bm!618373 () Bool)

(declare-fun call!618379 () (InoxSet Context!12014))

(assert (=> bm!618373 (= call!618382 call!618379)))

(declare-fun c!1265463 () Bool)

(declare-fun d!2138323 () Bool)

(assert (=> d!2138323 (= c!1265463 (and ((_ is ElementMatch!16623) (ite c!1265001 (regTwo!33759 r!7292) (regOne!33758 r!7292))) (= (c!1264881 (ite c!1265001 (regTwo!33759 r!7292) (regOne!33758 r!7292))) (h!72492 s!2326))))))

(assert (=> d!2138323 (= (derivationStepZipperDown!1851 (ite c!1265001 (regTwo!33759 r!7292) (regOne!33758 r!7292)) (ite c!1265001 (Context!12015 Nil!66045) (Context!12015 call!618147)) (h!72492 s!2326)) e!4106191)))

(declare-fun b!6804314 () Bool)

(declare-fun e!4106193 () (InoxSet Context!12014))

(declare-fun e!4106190 () (InoxSet Context!12014))

(assert (=> b!6804314 (= e!4106193 e!4106190)))

(declare-fun c!1265464 () Bool)

(assert (=> b!6804314 (= c!1265464 ((_ is Concat!25468) (ite c!1265001 (regTwo!33759 r!7292) (regOne!33758 r!7292))))))

(declare-fun b!6804315 () Bool)

(declare-fun call!618380 () (InoxSet Context!12014))

(declare-fun call!618381 () (InoxSet Context!12014))

(assert (=> b!6804315 (= e!4106194 ((_ map or) call!618380 call!618381))))

(declare-fun bm!618374 () Bool)

(declare-fun call!618383 () List!66169)

(declare-fun c!1265465 () Bool)

(assert (=> bm!618374 (= call!618383 ($colon$colon!2432 (exprs!6507 (ite c!1265001 (Context!12015 Nil!66045) (Context!12015 call!618147))) (ite (or c!1265465 c!1265464) (regTwo!33758 (ite c!1265001 (regTwo!33759 r!7292) (regOne!33758 r!7292))) (ite c!1265001 (regTwo!33759 r!7292) (regOne!33758 r!7292)))))))

(declare-fun b!6804316 () Bool)

(assert (=> b!6804316 (= e!4106190 call!618382)))

(declare-fun b!6804317 () Bool)

(declare-fun e!4106195 () Bool)

(assert (=> b!6804317 (= e!4106195 (nullable!6601 (regOne!33758 (ite c!1265001 (regTwo!33759 r!7292) (regOne!33758 r!7292)))))))

(declare-fun bm!618375 () Bool)

(assert (=> bm!618375 (= call!618379 call!618380)))

(declare-fun b!6804318 () Bool)

(declare-fun c!1265467 () Bool)

(assert (=> b!6804318 (= c!1265467 ((_ is Star!16623) (ite c!1265001 (regTwo!33759 r!7292) (regOne!33758 r!7292))))))

(assert (=> b!6804318 (= e!4106190 e!4106192)))

(declare-fun b!6804319 () Bool)

(assert (=> b!6804319 (= e!4106191 (store ((as const (Array Context!12014 Bool)) false) (ite c!1265001 (Context!12015 Nil!66045) (Context!12015 call!618147)) true))))

(declare-fun b!6804320 () Bool)

(assert (=> b!6804320 (= e!4106192 ((as const (Array Context!12014 Bool)) false))))

(declare-fun b!6804321 () Bool)

(assert (=> b!6804321 (= c!1265465 e!4106195)))

(declare-fun res!2780491 () Bool)

(assert (=> b!6804321 (=> (not res!2780491) (not e!4106195))))

(assert (=> b!6804321 (= res!2780491 ((_ is Concat!25468) (ite c!1265001 (regTwo!33759 r!7292) (regOne!33758 r!7292))))))

(assert (=> b!6804321 (= e!4106194 e!4106193)))

(declare-fun bm!618376 () Bool)

(declare-fun call!618378 () List!66169)

(assert (=> bm!618376 (= call!618378 call!618383)))

(declare-fun b!6804322 () Bool)

(assert (=> b!6804322 (= e!4106193 ((_ map or) call!618381 call!618379))))

(declare-fun bm!618377 () Bool)

(assert (=> bm!618377 (= call!618381 (derivationStepZipperDown!1851 (ite c!1265466 (regTwo!33759 (ite c!1265001 (regTwo!33759 r!7292) (regOne!33758 r!7292))) (regOne!33758 (ite c!1265001 (regTwo!33759 r!7292) (regOne!33758 r!7292)))) (ite c!1265466 (ite c!1265001 (Context!12015 Nil!66045) (Context!12015 call!618147)) (Context!12015 call!618383)) (h!72492 s!2326)))))

(declare-fun bm!618378 () Bool)

(assert (=> bm!618378 (= call!618380 (derivationStepZipperDown!1851 (ite c!1265466 (regOne!33759 (ite c!1265001 (regTwo!33759 r!7292) (regOne!33758 r!7292))) (ite c!1265465 (regTwo!33758 (ite c!1265001 (regTwo!33759 r!7292) (regOne!33758 r!7292))) (ite c!1265464 (regOne!33758 (ite c!1265001 (regTwo!33759 r!7292) (regOne!33758 r!7292))) (reg!16952 (ite c!1265001 (regTwo!33759 r!7292) (regOne!33758 r!7292)))))) (ite (or c!1265466 c!1265465) (ite c!1265001 (Context!12015 Nil!66045) (Context!12015 call!618147)) (Context!12015 call!618378)) (h!72492 s!2326)))))

(assert (= (and d!2138323 c!1265463) b!6804319))

(assert (= (and d!2138323 (not c!1265463)) b!6804313))

(assert (= (and b!6804313 c!1265466) b!6804315))

(assert (= (and b!6804313 (not c!1265466)) b!6804321))

(assert (= (and b!6804321 res!2780491) b!6804317))

(assert (= (and b!6804321 c!1265465) b!6804322))

(assert (= (and b!6804321 (not c!1265465)) b!6804314))

(assert (= (and b!6804314 c!1265464) b!6804316))

(assert (= (and b!6804314 (not c!1265464)) b!6804318))

(assert (= (and b!6804318 c!1265467) b!6804312))

(assert (= (and b!6804318 (not c!1265467)) b!6804320))

(assert (= (or b!6804316 b!6804312) bm!618376))

(assert (= (or b!6804316 b!6804312) bm!618373))

(assert (= (or b!6804322 bm!618376) bm!618374))

(assert (= (or b!6804322 bm!618373) bm!618375))

(assert (= (or b!6804315 b!6804322) bm!618377))

(assert (= (or b!6804315 bm!618375) bm!618378))

(declare-fun m!7550662 () Bool)

(assert (=> bm!618378 m!7550662))

(declare-fun m!7550664 () Bool)

(assert (=> b!6804317 m!7550664))

(declare-fun m!7550666 () Bool)

(assert (=> bm!618377 m!7550666))

(declare-fun m!7550668 () Bool)

(assert (=> bm!618374 m!7550668))

(declare-fun m!7550670 () Bool)

(assert (=> b!6804319 m!7550670))

(assert (=> bm!618141 d!2138323))

(declare-fun b!6804323 () Bool)

(declare-fun e!4106199 () Bool)

(declare-fun e!4106200 () Bool)

(assert (=> b!6804323 (= e!4106199 e!4106200)))

(declare-fun res!2780492 () Bool)

(assert (=> b!6804323 (=> (not res!2780492) (not e!4106200))))

(declare-fun call!618384 () Bool)

(assert (=> b!6804323 (= res!2780492 call!618384)))

(declare-fun b!6804324 () Bool)

(declare-fun e!4106196 () Bool)

(declare-fun e!4106198 () Bool)

(assert (=> b!6804324 (= e!4106196 e!4106198)))

(declare-fun c!1265468 () Bool)

(assert (=> b!6804324 (= c!1265468 ((_ is Union!16623) (ite c!1265080 (regTwo!33759 r!7292) (regTwo!33758 r!7292))))))

(declare-fun d!2138325 () Bool)

(declare-fun res!2780496 () Bool)

(declare-fun e!4106202 () Bool)

(assert (=> d!2138325 (=> res!2780496 e!4106202)))

(assert (=> d!2138325 (= res!2780496 ((_ is ElementMatch!16623) (ite c!1265080 (regTwo!33759 r!7292) (regTwo!33758 r!7292))))))

(assert (=> d!2138325 (= (validRegex!8359 (ite c!1265080 (regTwo!33759 r!7292) (regTwo!33758 r!7292))) e!4106202)))

(declare-fun b!6804325 () Bool)

(declare-fun call!618386 () Bool)

(assert (=> b!6804325 (= e!4106200 call!618386)))

(declare-fun bm!618379 () Bool)

(declare-fun call!618385 () Bool)

(assert (=> bm!618379 (= call!618384 call!618385)))

(declare-fun b!6804326 () Bool)

(declare-fun e!4106197 () Bool)

(assert (=> b!6804326 (= e!4106197 call!618385)))

(declare-fun b!6804327 () Bool)

(assert (=> b!6804327 (= e!4106196 e!4106197)))

(declare-fun res!2780493 () Bool)

(assert (=> b!6804327 (= res!2780493 (not (nullable!6601 (reg!16952 (ite c!1265080 (regTwo!33759 r!7292) (regTwo!33758 r!7292))))))))

(assert (=> b!6804327 (=> (not res!2780493) (not e!4106197))))

(declare-fun bm!618380 () Bool)

(declare-fun c!1265469 () Bool)

(assert (=> bm!618380 (= call!618385 (validRegex!8359 (ite c!1265469 (reg!16952 (ite c!1265080 (regTwo!33759 r!7292) (regTwo!33758 r!7292))) (ite c!1265468 (regOne!33759 (ite c!1265080 (regTwo!33759 r!7292) (regTwo!33758 r!7292))) (regOne!33758 (ite c!1265080 (regTwo!33759 r!7292) (regTwo!33758 r!7292)))))))))

(declare-fun b!6804328 () Bool)

(declare-fun e!4106201 () Bool)

(assert (=> b!6804328 (= e!4106201 call!618386)))

(declare-fun b!6804329 () Bool)

(declare-fun res!2780495 () Bool)

(assert (=> b!6804329 (=> res!2780495 e!4106199)))

(assert (=> b!6804329 (= res!2780495 (not ((_ is Concat!25468) (ite c!1265080 (regTwo!33759 r!7292) (regTwo!33758 r!7292)))))))

(assert (=> b!6804329 (= e!4106198 e!4106199)))

(declare-fun b!6804330 () Bool)

(assert (=> b!6804330 (= e!4106202 e!4106196)))

(assert (=> b!6804330 (= c!1265469 ((_ is Star!16623) (ite c!1265080 (regTwo!33759 r!7292) (regTwo!33758 r!7292))))))

(declare-fun bm!618381 () Bool)

(assert (=> bm!618381 (= call!618386 (validRegex!8359 (ite c!1265468 (regTwo!33759 (ite c!1265080 (regTwo!33759 r!7292) (regTwo!33758 r!7292))) (regTwo!33758 (ite c!1265080 (regTwo!33759 r!7292) (regTwo!33758 r!7292))))))))

(declare-fun b!6804331 () Bool)

(declare-fun res!2780494 () Bool)

(assert (=> b!6804331 (=> (not res!2780494) (not e!4106201))))

(assert (=> b!6804331 (= res!2780494 call!618384)))

(assert (=> b!6804331 (= e!4106198 e!4106201)))

(assert (= (and d!2138325 (not res!2780496)) b!6804330))

(assert (= (and b!6804330 c!1265469) b!6804327))

(assert (= (and b!6804330 (not c!1265469)) b!6804324))

(assert (= (and b!6804327 res!2780493) b!6804326))

(assert (= (and b!6804324 c!1265468) b!6804331))

(assert (= (and b!6804324 (not c!1265468)) b!6804329))

(assert (= (and b!6804331 res!2780494) b!6804328))

(assert (= (and b!6804329 (not res!2780495)) b!6804323))

(assert (= (and b!6804323 res!2780492) b!6804325))

(assert (= (or b!6804328 b!6804325) bm!618381))

(assert (= (or b!6804331 b!6804323) bm!618379))

(assert (= (or b!6804326 bm!618379) bm!618380))

(declare-fun m!7550672 () Bool)

(assert (=> b!6804327 m!7550672))

(declare-fun m!7550674 () Bool)

(assert (=> bm!618380 m!7550674))

(declare-fun m!7550676 () Bool)

(assert (=> bm!618381 m!7550676))

(assert (=> bm!618157 d!2138325))

(declare-fun b!6804332 () Bool)

(declare-fun res!2780497 () Bool)

(declare-fun e!4106209 () Bool)

(assert (=> b!6804332 (=> res!2780497 e!4106209)))

(assert (=> b!6804332 (= res!2780497 (not (isEmpty!38426 (tail!12740 (_1!36901 (get!23004 lt!2448518))))))))

(declare-fun b!6804333 () Bool)

(declare-fun e!4106208 () Bool)

(declare-fun e!4106207 () Bool)

(assert (=> b!6804333 (= e!4106208 e!4106207)))

(declare-fun res!2780500 () Bool)

(assert (=> b!6804333 (=> (not res!2780500) (not e!4106207))))

(declare-fun lt!2448643 () Bool)

(assert (=> b!6804333 (= res!2780500 (not lt!2448643))))

(declare-fun b!6804335 () Bool)

(declare-fun e!4106203 () Bool)

(declare-fun e!4106205 () Bool)

(assert (=> b!6804335 (= e!4106203 e!4106205)))

(declare-fun c!1265470 () Bool)

(assert (=> b!6804335 (= c!1265470 ((_ is EmptyLang!16623) (reg!16952 r!7292)))))

(declare-fun b!6804336 () Bool)

(declare-fun e!4106206 () Bool)

(assert (=> b!6804336 (= e!4106206 (= (head!13655 (_1!36901 (get!23004 lt!2448518))) (c!1264881 (reg!16952 r!7292))))))

(declare-fun b!6804337 () Bool)

(declare-fun e!4106204 () Bool)

(assert (=> b!6804337 (= e!4106204 (matchR!8806 (derivativeStep!5286 (reg!16952 r!7292) (head!13655 (_1!36901 (get!23004 lt!2448518)))) (tail!12740 (_1!36901 (get!23004 lt!2448518)))))))

(declare-fun b!6804338 () Bool)

(assert (=> b!6804338 (= e!4106205 (not lt!2448643))))

(declare-fun b!6804339 () Bool)

(assert (=> b!6804339 (= e!4106207 e!4106209)))

(declare-fun res!2780501 () Bool)

(assert (=> b!6804339 (=> res!2780501 e!4106209)))

(declare-fun call!618387 () Bool)

(assert (=> b!6804339 (= res!2780501 call!618387)))

(declare-fun b!6804340 () Bool)

(assert (=> b!6804340 (= e!4106203 (= lt!2448643 call!618387))))

(declare-fun bm!618382 () Bool)

(assert (=> bm!618382 (= call!618387 (isEmpty!38426 (_1!36901 (get!23004 lt!2448518))))))

(declare-fun b!6804341 () Bool)

(assert (=> b!6804341 (= e!4106204 (nullable!6601 (reg!16952 r!7292)))))

(declare-fun b!6804334 () Bool)

(declare-fun res!2780504 () Bool)

(assert (=> b!6804334 (=> (not res!2780504) (not e!4106206))))

(assert (=> b!6804334 (= res!2780504 (not call!618387))))

(declare-fun d!2138327 () Bool)

(assert (=> d!2138327 e!4106203))

(declare-fun c!1265471 () Bool)

(assert (=> d!2138327 (= c!1265471 ((_ is EmptyExpr!16623) (reg!16952 r!7292)))))

(assert (=> d!2138327 (= lt!2448643 e!4106204)))

(declare-fun c!1265472 () Bool)

(assert (=> d!2138327 (= c!1265472 (isEmpty!38426 (_1!36901 (get!23004 lt!2448518))))))

(assert (=> d!2138327 (validRegex!8359 (reg!16952 r!7292))))

(assert (=> d!2138327 (= (matchR!8806 (reg!16952 r!7292) (_1!36901 (get!23004 lt!2448518))) lt!2448643)))

(declare-fun b!6804342 () Bool)

(declare-fun res!2780502 () Bool)

(assert (=> b!6804342 (=> (not res!2780502) (not e!4106206))))

(assert (=> b!6804342 (= res!2780502 (isEmpty!38426 (tail!12740 (_1!36901 (get!23004 lt!2448518)))))))

(declare-fun b!6804343 () Bool)

(declare-fun res!2780503 () Bool)

(assert (=> b!6804343 (=> res!2780503 e!4106208)))

(assert (=> b!6804343 (= res!2780503 (not ((_ is ElementMatch!16623) (reg!16952 r!7292))))))

(assert (=> b!6804343 (= e!4106205 e!4106208)))

(declare-fun b!6804344 () Bool)

(assert (=> b!6804344 (= e!4106209 (not (= (head!13655 (_1!36901 (get!23004 lt!2448518))) (c!1264881 (reg!16952 r!7292)))))))

(declare-fun b!6804345 () Bool)

(declare-fun res!2780499 () Bool)

(assert (=> b!6804345 (=> res!2780499 e!4106208)))

(assert (=> b!6804345 (= res!2780499 e!4106206)))

(declare-fun res!2780498 () Bool)

(assert (=> b!6804345 (=> (not res!2780498) (not e!4106206))))

(assert (=> b!6804345 (= res!2780498 lt!2448643)))

(assert (= (and d!2138327 c!1265472) b!6804341))

(assert (= (and d!2138327 (not c!1265472)) b!6804337))

(assert (= (and d!2138327 c!1265471) b!6804340))

(assert (= (and d!2138327 (not c!1265471)) b!6804335))

(assert (= (and b!6804335 c!1265470) b!6804338))

(assert (= (and b!6804335 (not c!1265470)) b!6804343))

(assert (= (and b!6804343 (not res!2780503)) b!6804345))

(assert (= (and b!6804345 res!2780498) b!6804334))

(assert (= (and b!6804334 res!2780504) b!6804342))

(assert (= (and b!6804342 res!2780502) b!6804336))

(assert (= (and b!6804345 (not res!2780499)) b!6804333))

(assert (= (and b!6804333 res!2780500) b!6804339))

(assert (= (and b!6804339 (not res!2780501)) b!6804332))

(assert (= (and b!6804332 (not res!2780497)) b!6804344))

(assert (= (or b!6804340 b!6804334 b!6804339) bm!618382))

(declare-fun m!7550678 () Bool)

(assert (=> b!6804336 m!7550678))

(declare-fun m!7550680 () Bool)

(assert (=> b!6804332 m!7550680))

(assert (=> b!6804332 m!7550680))

(declare-fun m!7550682 () Bool)

(assert (=> b!6804332 m!7550682))

(assert (=> b!6804344 m!7550678))

(assert (=> b!6804337 m!7550678))

(assert (=> b!6804337 m!7550678))

(declare-fun m!7550684 () Bool)

(assert (=> b!6804337 m!7550684))

(assert (=> b!6804337 m!7550680))

(assert (=> b!6804337 m!7550684))

(assert (=> b!6804337 m!7550680))

(declare-fun m!7550686 () Bool)

(assert (=> b!6804337 m!7550686))

(declare-fun m!7550688 () Bool)

(assert (=> bm!618382 m!7550688))

(assert (=> d!2138327 m!7550688))

(assert (=> d!2138327 m!7549026))

(assert (=> b!6804341 m!7549126))

(assert (=> b!6804342 m!7550680))

(assert (=> b!6804342 m!7550680))

(assert (=> b!6804342 m!7550682))

(assert (=> b!6802847 d!2138327))

(assert (=> b!6802847 d!2138247))

(declare-fun b!6804346 () Bool)

(declare-fun e!4106213 () Bool)

(declare-fun e!4106214 () Bool)

(assert (=> b!6804346 (= e!4106213 e!4106214)))

(declare-fun res!2780505 () Bool)

(assert (=> b!6804346 (=> (not res!2780505) (not e!4106214))))

(declare-fun call!618388 () Bool)

(assert (=> b!6804346 (= res!2780505 call!618388)))

(declare-fun b!6804347 () Bool)

(declare-fun e!4106210 () Bool)

(declare-fun e!4106212 () Bool)

(assert (=> b!6804347 (= e!4106210 e!4106212)))

(declare-fun c!1265473 () Bool)

(assert (=> b!6804347 (= c!1265473 ((_ is Union!16623) lt!2448478))))

(declare-fun d!2138329 () Bool)

(declare-fun res!2780509 () Bool)

(declare-fun e!4106216 () Bool)

(assert (=> d!2138329 (=> res!2780509 e!4106216)))

(assert (=> d!2138329 (= res!2780509 ((_ is ElementMatch!16623) lt!2448478))))

(assert (=> d!2138329 (= (validRegex!8359 lt!2448478) e!4106216)))

(declare-fun b!6804348 () Bool)

(declare-fun call!618390 () Bool)

(assert (=> b!6804348 (= e!4106214 call!618390)))

(declare-fun bm!618383 () Bool)

(declare-fun call!618389 () Bool)

(assert (=> bm!618383 (= call!618388 call!618389)))

(declare-fun b!6804349 () Bool)

(declare-fun e!4106211 () Bool)

(assert (=> b!6804349 (= e!4106211 call!618389)))

(declare-fun b!6804350 () Bool)

(assert (=> b!6804350 (= e!4106210 e!4106211)))

(declare-fun res!2780506 () Bool)

(assert (=> b!6804350 (= res!2780506 (not (nullable!6601 (reg!16952 lt!2448478))))))

(assert (=> b!6804350 (=> (not res!2780506) (not e!4106211))))

(declare-fun bm!618384 () Bool)

(declare-fun c!1265474 () Bool)

(assert (=> bm!618384 (= call!618389 (validRegex!8359 (ite c!1265474 (reg!16952 lt!2448478) (ite c!1265473 (regOne!33759 lt!2448478) (regOne!33758 lt!2448478)))))))

(declare-fun b!6804351 () Bool)

(declare-fun e!4106215 () Bool)

(assert (=> b!6804351 (= e!4106215 call!618390)))

(declare-fun b!6804352 () Bool)

(declare-fun res!2780508 () Bool)

(assert (=> b!6804352 (=> res!2780508 e!4106213)))

(assert (=> b!6804352 (= res!2780508 (not ((_ is Concat!25468) lt!2448478)))))

(assert (=> b!6804352 (= e!4106212 e!4106213)))

(declare-fun b!6804353 () Bool)

(assert (=> b!6804353 (= e!4106216 e!4106210)))

(assert (=> b!6804353 (= c!1265474 ((_ is Star!16623) lt!2448478))))

(declare-fun bm!618385 () Bool)

(assert (=> bm!618385 (= call!618390 (validRegex!8359 (ite c!1265473 (regTwo!33759 lt!2448478) (regTwo!33758 lt!2448478))))))

(declare-fun b!6804354 () Bool)

(declare-fun res!2780507 () Bool)

(assert (=> b!6804354 (=> (not res!2780507) (not e!4106215))))

(assert (=> b!6804354 (= res!2780507 call!618388)))

(assert (=> b!6804354 (= e!4106212 e!4106215)))

(assert (= (and d!2138329 (not res!2780509)) b!6804353))

(assert (= (and b!6804353 c!1265474) b!6804350))

(assert (= (and b!6804353 (not c!1265474)) b!6804347))

(assert (= (and b!6804350 res!2780506) b!6804349))

(assert (= (and b!6804347 c!1265473) b!6804354))

(assert (= (and b!6804347 (not c!1265473)) b!6804352))

(assert (= (and b!6804354 res!2780507) b!6804351))

(assert (= (and b!6804352 (not res!2780508)) b!6804346))

(assert (= (and b!6804346 res!2780505) b!6804348))

(assert (= (or b!6804351 b!6804348) bm!618385))

(assert (= (or b!6804354 b!6804346) bm!618383))

(assert (= (or b!6804349 bm!618383) bm!618384))

(declare-fun m!7550690 () Bool)

(assert (=> b!6804350 m!7550690))

(declare-fun m!7550692 () Bool)

(assert (=> bm!618384 m!7550692))

(declare-fun m!7550694 () Bool)

(assert (=> bm!618385 m!7550694))

(assert (=> d!2137555 d!2138329))

(declare-fun bs!1813881 () Bool)

(declare-fun d!2138331 () Bool)

(assert (= bs!1813881 (and d!2138331 d!2137569)))

(declare-fun lambda!383927 () Int)

(assert (=> bs!1813881 (= lambda!383927 lambda!383802)))

(declare-fun bs!1813882 () Bool)

(assert (= bs!1813882 (and d!2138331 d!2137669)))

(assert (=> bs!1813882 (= lambda!383927 lambda!383843)))

(declare-fun bs!1813883 () Bool)

(assert (= bs!1813883 (and d!2138331 b!6802233)))

(assert (=> bs!1813883 (= lambda!383927 lambda!383749)))

(declare-fun bs!1813884 () Bool)

(assert (= bs!1813884 (and d!2138331 d!2138179)))

(assert (=> bs!1813884 (= lambda!383927 lambda!383905)))

(declare-fun bs!1813885 () Bool)

(assert (= bs!1813885 (and d!2138331 d!2138077)))

(assert (=> bs!1813885 (= lambda!383927 lambda!383901)))

(declare-fun bs!1813886 () Bool)

(assert (= bs!1813886 (and d!2138331 d!2138211)))

(assert (=> bs!1813886 (= lambda!383927 lambda!383913)))

(declare-fun bs!1813887 () Bool)

(assert (= bs!1813887 (and d!2138331 d!2137533)))

(assert (=> bs!1813887 (= lambda!383927 lambda!383782)))

(declare-fun bs!1813888 () Bool)

(assert (= bs!1813888 (and d!2138331 d!2138215)))

(assert (=> bs!1813888 (= lambda!383927 lambda!383915)))

(declare-fun bs!1813889 () Bool)

(assert (= bs!1813889 (and d!2138331 d!2137537)))

(assert (=> bs!1813889 (= lambda!383927 lambda!383783)))

(declare-fun bs!1813890 () Bool)

(assert (= bs!1813890 (and d!2138331 d!2138225)))

(assert (=> bs!1813890 (= lambda!383927 lambda!383918)))

(declare-fun bs!1813891 () Bool)

(assert (= bs!1813891 (and d!2138331 d!2137547)))

(assert (=> bs!1813891 (= lambda!383927 lambda!383787)))

(declare-fun bs!1813892 () Bool)

(assert (= bs!1813892 (and d!2138331 d!2137557)))

(assert (=> bs!1813892 (= lambda!383927 lambda!383797)))

(declare-fun b!6804355 () Bool)

(declare-fun e!4106222 () Regex!16623)

(declare-fun e!4106219 () Regex!16623)

(assert (=> b!6804355 (= e!4106222 e!4106219)))

(declare-fun c!1265477 () Bool)

(assert (=> b!6804355 (= c!1265477 ((_ is Cons!66045) (unfocusZipperList!2044 (Cons!66046 lt!2448396 Nil!66046))))))

(declare-fun b!6804356 () Bool)

(declare-fun e!4106217 () Bool)

(declare-fun lt!2448644 () Regex!16623)

(assert (=> b!6804356 (= e!4106217 (isUnion!1418 lt!2448644))))

(declare-fun e!4106218 () Bool)

(assert (=> d!2138331 e!4106218))

(declare-fun res!2780511 () Bool)

(assert (=> d!2138331 (=> (not res!2780511) (not e!4106218))))

(assert (=> d!2138331 (= res!2780511 (validRegex!8359 lt!2448644))))

(assert (=> d!2138331 (= lt!2448644 e!4106222)))

(declare-fun c!1265478 () Bool)

(declare-fun e!4106220 () Bool)

(assert (=> d!2138331 (= c!1265478 e!4106220)))

(declare-fun res!2780510 () Bool)

(assert (=> d!2138331 (=> (not res!2780510) (not e!4106220))))

(assert (=> d!2138331 (= res!2780510 ((_ is Cons!66045) (unfocusZipperList!2044 (Cons!66046 lt!2448396 Nil!66046))))))

(assert (=> d!2138331 (forall!15815 (unfocusZipperList!2044 (Cons!66046 lt!2448396 Nil!66046)) lambda!383927)))

(assert (=> d!2138331 (= (generalisedUnion!2467 (unfocusZipperList!2044 (Cons!66046 lt!2448396 Nil!66046))) lt!2448644)))

(declare-fun b!6804357 () Bool)

(declare-fun e!4106221 () Bool)

(assert (=> b!6804357 (= e!4106218 e!4106221)))

(declare-fun c!1265475 () Bool)

(assert (=> b!6804357 (= c!1265475 (isEmpty!38428 (unfocusZipperList!2044 (Cons!66046 lt!2448396 Nil!66046))))))

(declare-fun b!6804358 () Bool)

(assert (=> b!6804358 (= e!4106221 (isEmptyLang!1988 lt!2448644))))

(declare-fun b!6804359 () Bool)

(assert (=> b!6804359 (= e!4106219 EmptyLang!16623)))

(declare-fun b!6804360 () Bool)

(assert (=> b!6804360 (= e!4106220 (isEmpty!38428 (t!379900 (unfocusZipperList!2044 (Cons!66046 lt!2448396 Nil!66046)))))))

(declare-fun b!6804361 () Bool)

(assert (=> b!6804361 (= e!4106219 (Union!16623 (h!72493 (unfocusZipperList!2044 (Cons!66046 lt!2448396 Nil!66046))) (generalisedUnion!2467 (t!379900 (unfocusZipperList!2044 (Cons!66046 lt!2448396 Nil!66046))))))))

(declare-fun b!6804362 () Bool)

(assert (=> b!6804362 (= e!4106217 (= lt!2448644 (head!13657 (unfocusZipperList!2044 (Cons!66046 lt!2448396 Nil!66046)))))))

(declare-fun b!6804363 () Bool)

(assert (=> b!6804363 (= e!4106221 e!4106217)))

(declare-fun c!1265476 () Bool)

(assert (=> b!6804363 (= c!1265476 (isEmpty!38428 (tail!12742 (unfocusZipperList!2044 (Cons!66046 lt!2448396 Nil!66046)))))))

(declare-fun b!6804364 () Bool)

(assert (=> b!6804364 (= e!4106222 (h!72493 (unfocusZipperList!2044 (Cons!66046 lt!2448396 Nil!66046))))))

(assert (= (and d!2138331 res!2780510) b!6804360))

(assert (= (and d!2138331 c!1265478) b!6804364))

(assert (= (and d!2138331 (not c!1265478)) b!6804355))

(assert (= (and b!6804355 c!1265477) b!6804361))

(assert (= (and b!6804355 (not c!1265477)) b!6804359))

(assert (= (and d!2138331 res!2780511) b!6804357))

(assert (= (and b!6804357 c!1265475) b!6804358))

(assert (= (and b!6804357 (not c!1265475)) b!6804363))

(assert (= (and b!6804363 c!1265476) b!6804362))

(assert (= (and b!6804363 (not c!1265476)) b!6804356))

(assert (=> b!6804363 m!7548940))

(declare-fun m!7550696 () Bool)

(assert (=> b!6804363 m!7550696))

(assert (=> b!6804363 m!7550696))

(declare-fun m!7550698 () Bool)

(assert (=> b!6804363 m!7550698))

(declare-fun m!7550700 () Bool)

(assert (=> d!2138331 m!7550700))

(assert (=> d!2138331 m!7548940))

(declare-fun m!7550702 () Bool)

(assert (=> d!2138331 m!7550702))

(assert (=> b!6804362 m!7548940))

(declare-fun m!7550704 () Bool)

(assert (=> b!6804362 m!7550704))

(declare-fun m!7550706 () Bool)

(assert (=> b!6804358 m!7550706))

(declare-fun m!7550708 () Bool)

(assert (=> b!6804361 m!7550708))

(declare-fun m!7550710 () Bool)

(assert (=> b!6804356 m!7550710))

(declare-fun m!7550712 () Bool)

(assert (=> b!6804360 m!7550712))

(assert (=> b!6804357 m!7548940))

(declare-fun m!7550714 () Bool)

(assert (=> b!6804357 m!7550714))

(assert (=> d!2137555 d!2138331))

(declare-fun bs!1813893 () Bool)

(declare-fun d!2138333 () Bool)

(assert (= bs!1813893 (and d!2138333 d!2137569)))

(declare-fun lambda!383928 () Int)

(assert (=> bs!1813893 (= lambda!383928 lambda!383802)))

(declare-fun bs!1813894 () Bool)

(assert (= bs!1813894 (and d!2138333 d!2137669)))

(assert (=> bs!1813894 (= lambda!383928 lambda!383843)))

(declare-fun bs!1813895 () Bool)

(assert (= bs!1813895 (and d!2138333 b!6802233)))

(assert (=> bs!1813895 (= lambda!383928 lambda!383749)))

(declare-fun bs!1813896 () Bool)

(assert (= bs!1813896 (and d!2138333 d!2138179)))

(assert (=> bs!1813896 (= lambda!383928 lambda!383905)))

(declare-fun bs!1813897 () Bool)

(assert (= bs!1813897 (and d!2138333 d!2138077)))

(assert (=> bs!1813897 (= lambda!383928 lambda!383901)))

(declare-fun bs!1813898 () Bool)

(assert (= bs!1813898 (and d!2138333 d!2138211)))

(assert (=> bs!1813898 (= lambda!383928 lambda!383913)))

(declare-fun bs!1813899 () Bool)

(assert (= bs!1813899 (and d!2138333 d!2138215)))

(assert (=> bs!1813899 (= lambda!383928 lambda!383915)))

(declare-fun bs!1813900 () Bool)

(assert (= bs!1813900 (and d!2138333 d!2137537)))

(assert (=> bs!1813900 (= lambda!383928 lambda!383783)))

(declare-fun bs!1813901 () Bool)

(assert (= bs!1813901 (and d!2138333 d!2138225)))

(assert (=> bs!1813901 (= lambda!383928 lambda!383918)))

(declare-fun bs!1813902 () Bool)

(assert (= bs!1813902 (and d!2138333 d!2137547)))

(assert (=> bs!1813902 (= lambda!383928 lambda!383787)))

(declare-fun bs!1813903 () Bool)

(assert (= bs!1813903 (and d!2138333 d!2137557)))

(assert (=> bs!1813903 (= lambda!383928 lambda!383797)))

(declare-fun bs!1813904 () Bool)

(assert (= bs!1813904 (and d!2138333 d!2138331)))

(assert (=> bs!1813904 (= lambda!383928 lambda!383927)))

(declare-fun bs!1813905 () Bool)

(assert (= bs!1813905 (and d!2138333 d!2137533)))

(assert (=> bs!1813905 (= lambda!383928 lambda!383782)))

(declare-fun lt!2448645 () List!66169)

(assert (=> d!2138333 (forall!15815 lt!2448645 lambda!383928)))

(declare-fun e!4106223 () List!66169)

(assert (=> d!2138333 (= lt!2448645 e!4106223)))

(declare-fun c!1265479 () Bool)

(assert (=> d!2138333 (= c!1265479 ((_ is Cons!66046) (Cons!66046 lt!2448396 Nil!66046)))))

(assert (=> d!2138333 (= (unfocusZipperList!2044 (Cons!66046 lt!2448396 Nil!66046)) lt!2448645)))

(declare-fun b!6804365 () Bool)

(assert (=> b!6804365 (= e!4106223 (Cons!66045 (generalisedConcat!2220 (exprs!6507 (h!72494 (Cons!66046 lt!2448396 Nil!66046)))) (unfocusZipperList!2044 (t!379901 (Cons!66046 lt!2448396 Nil!66046)))))))

(declare-fun b!6804366 () Bool)

(assert (=> b!6804366 (= e!4106223 Nil!66045)))

(assert (= (and d!2138333 c!1265479) b!6804365))

(assert (= (and d!2138333 (not c!1265479)) b!6804366))

(declare-fun m!7550716 () Bool)

(assert (=> d!2138333 m!7550716))

(declare-fun m!7550718 () Bool)

(assert (=> b!6804365 m!7550718))

(declare-fun m!7550720 () Bool)

(assert (=> b!6804365 m!7550720))

(assert (=> d!2137555 d!2138333))

(declare-fun d!2138335 () Bool)

(assert (=> d!2138335 (= (isEmpty!38428 (exprs!6507 (h!72494 zl!343))) ((_ is Nil!66045) (exprs!6507 (h!72494 zl!343))))))

(assert (=> b!6802667 d!2138335))

(declare-fun d!2138337 () Bool)

(assert (=> d!2138337 (= (head!13657 (unfocusZipperList!2044 zl!343)) (h!72493 (unfocusZipperList!2044 zl!343)))))

(assert (=> b!6802730 d!2138337))

(assert (=> b!6802935 d!2137973))

(assert (=> b!6802935 d!2137977))

(declare-fun d!2138339 () Bool)

(declare-fun c!1265480 () Bool)

(assert (=> d!2138339 (= c!1265480 (isEmpty!38426 (tail!12740 s!2326)))))

(declare-fun e!4106224 () Bool)

(assert (=> d!2138339 (= (matchZipper!2609 (derivationStepZipper!2567 z!1189 (head!13655 s!2326)) (tail!12740 s!2326)) e!4106224)))

(declare-fun b!6804367 () Bool)

(assert (=> b!6804367 (= e!4106224 (nullableZipper!2329 (derivationStepZipper!2567 z!1189 (head!13655 s!2326))))))

(declare-fun b!6804368 () Bool)

(assert (=> b!6804368 (= e!4106224 (matchZipper!2609 (derivationStepZipper!2567 (derivationStepZipper!2567 z!1189 (head!13655 s!2326)) (head!13655 (tail!12740 s!2326))) (tail!12740 (tail!12740 s!2326))))))

(assert (= (and d!2138339 c!1265480) b!6804367))

(assert (= (and d!2138339 (not c!1265480)) b!6804368))

(assert (=> d!2138339 m!7548680))

(assert (=> d!2138339 m!7548682))

(assert (=> b!6804367 m!7549096))

(declare-fun m!7550722 () Bool)

(assert (=> b!6804367 m!7550722))

(assert (=> b!6804368 m!7548680))

(assert (=> b!6804368 m!7550118))

(assert (=> b!6804368 m!7549096))

(assert (=> b!6804368 m!7550118))

(declare-fun m!7550724 () Bool)

(assert (=> b!6804368 m!7550724))

(assert (=> b!6804368 m!7548680))

(assert (=> b!6804368 m!7550120))

(assert (=> b!6804368 m!7550724))

(assert (=> b!6804368 m!7550120))

(declare-fun m!7550726 () Bool)

(assert (=> b!6804368 m!7550726))

(assert (=> b!6802868 d!2138339))

(declare-fun bs!1813906 () Bool)

(declare-fun d!2138341 () Bool)

(assert (= bs!1813906 (and d!2138341 d!2138305)))

(declare-fun lambda!383929 () Int)

(assert (=> bs!1813906 (= (= (head!13655 s!2326) (head!13655 (_1!36901 lt!2448389))) (= lambda!383929 lambda!383926))))

(declare-fun bs!1813907 () Bool)

(assert (= bs!1813907 (and d!2138341 d!2137543)))

(assert (=> bs!1813907 (= (= (head!13655 s!2326) (h!72492 s!2326)) (= lambda!383929 lambda!383784))))

(declare-fun bs!1813908 () Bool)

(assert (= bs!1813908 (and d!2138341 d!2138161)))

(assert (=> bs!1813908 (= (= (head!13655 s!2326) (head!13655 (t!379899 s!2326))) (= lambda!383929 lambda!383904))))

(declare-fun bs!1813909 () Bool)

(assert (= bs!1813909 (and d!2138341 b!6802209)))

(assert (=> bs!1813909 (= (= (head!13655 s!2326) (h!72492 s!2326)) (= lambda!383929 lambda!383747))))

(declare-fun bs!1813910 () Bool)

(assert (= bs!1813910 (and d!2138341 d!2138153)))

(assert (=> bs!1813910 (= lambda!383929 lambda!383903)))

(declare-fun bs!1813911 () Bool)

(assert (= bs!1813911 (and d!2138341 d!2137497)))

(assert (=> bs!1813911 (= (= (head!13655 s!2326) (h!72492 s!2326)) (= lambda!383929 lambda!383777))))

(declare-fun bs!1813912 () Bool)

(assert (= bs!1813912 (and d!2138341 d!2138275)))

(assert (=> bs!1813912 (= (= (head!13655 s!2326) (head!13655 (_2!36901 lt!2448389))) (= lambda!383929 lambda!383925))))

(declare-fun bs!1813913 () Bool)

(assert (= bs!1813913 (and d!2138341 d!2137527)))

(assert (=> bs!1813913 (= (= (head!13655 s!2326) (h!72492 s!2326)) (= lambda!383929 lambda!383779))))

(assert (=> d!2138341 true))

(assert (=> d!2138341 (= (derivationStepZipper!2567 z!1189 (head!13655 s!2326)) (flatMap!2104 z!1189 lambda!383929))))

(declare-fun bs!1813914 () Bool)

(assert (= bs!1813914 d!2138341))

(declare-fun m!7550728 () Bool)

(assert (=> bs!1813914 m!7550728))

(assert (=> b!6802868 d!2138341))

(assert (=> b!6802868 d!2137947))

(assert (=> b!6802868 d!2137977))

(declare-fun d!2138343 () Bool)

(declare-fun c!1265481 () Bool)

(assert (=> d!2138343 (= c!1265481 (isEmpty!38426 s!2326))))

(declare-fun e!4106225 () Bool)

(assert (=> d!2138343 (= (matchZipper!2609 lt!2448387 s!2326) e!4106225)))

(declare-fun b!6804369 () Bool)

(assert (=> b!6804369 (= e!4106225 (nullableZipper!2329 lt!2448387))))

(declare-fun b!6804370 () Bool)

(assert (=> b!6804370 (= e!4106225 (matchZipper!2609 (derivationStepZipper!2567 lt!2448387 (head!13655 s!2326)) (tail!12740 s!2326)))))

(assert (= (and d!2138343 c!1265481) b!6804369))

(assert (= (and d!2138343 (not c!1265481)) b!6804370))

(assert (=> d!2138343 m!7548460))

(assert (=> b!6804369 m!7549148))

(assert (=> b!6804370 m!7548678))

(assert (=> b!6804370 m!7548678))

(declare-fun m!7550730 () Bool)

(assert (=> b!6804370 m!7550730))

(assert (=> b!6804370 m!7548680))

(assert (=> b!6804370 m!7550730))

(assert (=> b!6804370 m!7548680))

(declare-fun m!7550732 () Bool)

(assert (=> b!6804370 m!7550732))

(assert (=> b!6803100 d!2138343))

(assert (=> bm!618158 d!2137591))

(assert (=> d!2137625 d!2137591))

(assert (=> d!2137625 d!2137609))

(declare-fun d!2138345 () Bool)

(assert (=> d!2138345 (= (flatMap!2104 z!1189 lambda!383779) (choose!50708 z!1189 lambda!383779))))

(declare-fun bs!1813915 () Bool)

(assert (= bs!1813915 d!2138345))

(declare-fun m!7550734 () Bool)

(assert (=> bs!1813915 m!7550734))

(assert (=> d!2137527 d!2138345))

(declare-fun d!2138347 () Bool)

(assert (=> d!2138347 (forall!15815 (++!14793 (exprs!6507 lt!2448407) lt!2448392) lambda!383749)))

(declare-fun lt!2448646 () Unit!159937)

(assert (=> d!2138347 (= lt!2448646 (choose!50716 (exprs!6507 lt!2448407) lt!2448392 lambda!383749))))

(assert (=> d!2138347 (forall!15815 (exprs!6507 lt!2448407) lambda!383749)))

(assert (=> d!2138347 (= (lemmaConcatPreservesForall!452 (exprs!6507 lt!2448407) lt!2448392 lambda!383749) lt!2448646)))

(declare-fun bs!1813916 () Bool)

(assert (= bs!1813916 d!2138347))

(assert (=> bs!1813916 m!7549290))

(assert (=> bs!1813916 m!7549290))

(declare-fun m!7550736 () Bool)

(assert (=> bs!1813916 m!7550736))

(declare-fun m!7550738 () Bool)

(assert (=> bs!1813916 m!7550738))

(declare-fun m!7550740 () Bool)

(assert (=> bs!1813916 m!7550740))

(assert (=> bs!1813278 d!2138347))

(declare-fun e!4106226 () Bool)

(declare-fun lt!2448647 () List!66169)

(declare-fun b!6804374 () Bool)

(assert (=> b!6804374 (= e!4106226 (or (not (= lt!2448392 Nil!66045)) (= lt!2448647 (exprs!6507 lt!2448407))))))

(declare-fun d!2138349 () Bool)

(assert (=> d!2138349 e!4106226))

(declare-fun res!2780512 () Bool)

(assert (=> d!2138349 (=> (not res!2780512) (not e!4106226))))

(assert (=> d!2138349 (= res!2780512 (= (content!12903 lt!2448647) ((_ map or) (content!12903 (exprs!6507 lt!2448407)) (content!12903 lt!2448392))))))

(declare-fun e!4106227 () List!66169)

(assert (=> d!2138349 (= lt!2448647 e!4106227)))

(declare-fun c!1265482 () Bool)

(assert (=> d!2138349 (= c!1265482 ((_ is Nil!66045) (exprs!6507 lt!2448407)))))

(assert (=> d!2138349 (= (++!14793 (exprs!6507 lt!2448407) lt!2448392) lt!2448647)))

(declare-fun b!6804371 () Bool)

(assert (=> b!6804371 (= e!4106227 lt!2448392)))

(declare-fun b!6804373 () Bool)

(declare-fun res!2780513 () Bool)

(assert (=> b!6804373 (=> (not res!2780513) (not e!4106226))))

(assert (=> b!6804373 (= res!2780513 (= (size!40669 lt!2448647) (+ (size!40669 (exprs!6507 lt!2448407)) (size!40669 lt!2448392))))))

(declare-fun b!6804372 () Bool)

(assert (=> b!6804372 (= e!4106227 (Cons!66045 (h!72493 (exprs!6507 lt!2448407)) (++!14793 (t!379900 (exprs!6507 lt!2448407)) lt!2448392)))))

(assert (= (and d!2138349 c!1265482) b!6804371))

(assert (= (and d!2138349 (not c!1265482)) b!6804372))

(assert (= (and d!2138349 res!2780512) b!6804373))

(assert (= (and b!6804373 res!2780513) b!6804374))

(declare-fun m!7550742 () Bool)

(assert (=> d!2138349 m!7550742))

(declare-fun m!7550744 () Bool)

(assert (=> d!2138349 m!7550744))

(assert (=> d!2138349 m!7548746))

(declare-fun m!7550746 () Bool)

(assert (=> b!6804373 m!7550746))

(declare-fun m!7550748 () Bool)

(assert (=> b!6804373 m!7550748))

(assert (=> b!6804373 m!7548752))

(declare-fun m!7550750 () Bool)

(assert (=> b!6804372 m!7550750))

(assert (=> bs!1813278 d!2138349))

(declare-fun d!2138351 () Bool)

(assert (=> d!2138351 true))

(declare-fun setRes!46658 () Bool)

(assert (=> d!2138351 setRes!46658))

(declare-fun condSetEmpty!46658 () Bool)

(declare-fun res!2780514 () (InoxSet Context!12014))

(assert (=> d!2138351 (= condSetEmpty!46658 (= res!2780514 ((as const (Array Context!12014 Bool)) false)))))

(assert (=> d!2138351 (= (choose!50708 lt!2448394 lambda!383747) res!2780514)))

(declare-fun setIsEmpty!46658 () Bool)

(assert (=> setIsEmpty!46658 setRes!46658))

(declare-fun e!4106228 () Bool)

(declare-fun setElem!46658 () Context!12014)

(declare-fun setNonEmpty!46658 () Bool)

(declare-fun tp!1862603 () Bool)

(assert (=> setNonEmpty!46658 (= setRes!46658 (and tp!1862603 (inv!84804 setElem!46658) e!4106228))))

(declare-fun setRest!46658 () (InoxSet Context!12014))

(assert (=> setNonEmpty!46658 (= res!2780514 ((_ map or) (store ((as const (Array Context!12014 Bool)) false) setElem!46658 true) setRest!46658))))

(declare-fun b!6804375 () Bool)

(declare-fun tp!1862602 () Bool)

(assert (=> b!6804375 (= e!4106228 tp!1862602)))

(assert (= (and d!2138351 condSetEmpty!46658) setIsEmpty!46658))

(assert (= (and d!2138351 (not condSetEmpty!46658)) setNonEmpty!46658))

(assert (= setNonEmpty!46658 b!6804375))

(declare-fun m!7550752 () Bool)

(assert (=> setNonEmpty!46658 m!7550752))

(assert (=> d!2137473 d!2138351))

(declare-fun b!6804376 () Bool)

(declare-fun e!4106232 () Bool)

(declare-fun e!4106233 () Bool)

(assert (=> b!6804376 (= e!4106232 e!4106233)))

(declare-fun res!2780515 () Bool)

(assert (=> b!6804376 (=> (not res!2780515) (not e!4106233))))

(declare-fun call!618391 () Bool)

(assert (=> b!6804376 (= res!2780515 call!618391)))

(declare-fun b!6804377 () Bool)

(declare-fun e!4106229 () Bool)

(declare-fun e!4106231 () Bool)

(assert (=> b!6804377 (= e!4106229 e!4106231)))

(declare-fun c!1265483 () Bool)

(assert (=> b!6804377 (= c!1265483 ((_ is Union!16623) (ite c!1265081 (reg!16952 r!7292) (ite c!1265080 (regOne!33759 r!7292) (regOne!33758 r!7292)))))))

(declare-fun d!2138353 () Bool)

(declare-fun res!2780519 () Bool)

(declare-fun e!4106235 () Bool)

(assert (=> d!2138353 (=> res!2780519 e!4106235)))

(assert (=> d!2138353 (= res!2780519 ((_ is ElementMatch!16623) (ite c!1265081 (reg!16952 r!7292) (ite c!1265080 (regOne!33759 r!7292) (regOne!33758 r!7292)))))))

(assert (=> d!2138353 (= (validRegex!8359 (ite c!1265081 (reg!16952 r!7292) (ite c!1265080 (regOne!33759 r!7292) (regOne!33758 r!7292)))) e!4106235)))

(declare-fun b!6804378 () Bool)

(declare-fun call!618393 () Bool)

(assert (=> b!6804378 (= e!4106233 call!618393)))

(declare-fun bm!618386 () Bool)

(declare-fun call!618392 () Bool)

(assert (=> bm!618386 (= call!618391 call!618392)))

(declare-fun b!6804379 () Bool)

(declare-fun e!4106230 () Bool)

(assert (=> b!6804379 (= e!4106230 call!618392)))

(declare-fun b!6804380 () Bool)

(assert (=> b!6804380 (= e!4106229 e!4106230)))

(declare-fun res!2780516 () Bool)

(assert (=> b!6804380 (= res!2780516 (not (nullable!6601 (reg!16952 (ite c!1265081 (reg!16952 r!7292) (ite c!1265080 (regOne!33759 r!7292) (regOne!33758 r!7292)))))))))

(assert (=> b!6804380 (=> (not res!2780516) (not e!4106230))))

(declare-fun c!1265484 () Bool)

(declare-fun bm!618387 () Bool)

(assert (=> bm!618387 (= call!618392 (validRegex!8359 (ite c!1265484 (reg!16952 (ite c!1265081 (reg!16952 r!7292) (ite c!1265080 (regOne!33759 r!7292) (regOne!33758 r!7292)))) (ite c!1265483 (regOne!33759 (ite c!1265081 (reg!16952 r!7292) (ite c!1265080 (regOne!33759 r!7292) (regOne!33758 r!7292)))) (regOne!33758 (ite c!1265081 (reg!16952 r!7292) (ite c!1265080 (regOne!33759 r!7292) (regOne!33758 r!7292))))))))))

(declare-fun b!6804381 () Bool)

(declare-fun e!4106234 () Bool)

(assert (=> b!6804381 (= e!4106234 call!618393)))

(declare-fun b!6804382 () Bool)

(declare-fun res!2780518 () Bool)

(assert (=> b!6804382 (=> res!2780518 e!4106232)))

(assert (=> b!6804382 (= res!2780518 (not ((_ is Concat!25468) (ite c!1265081 (reg!16952 r!7292) (ite c!1265080 (regOne!33759 r!7292) (regOne!33758 r!7292))))))))

(assert (=> b!6804382 (= e!4106231 e!4106232)))

(declare-fun b!6804383 () Bool)

(assert (=> b!6804383 (= e!4106235 e!4106229)))

(assert (=> b!6804383 (= c!1265484 ((_ is Star!16623) (ite c!1265081 (reg!16952 r!7292) (ite c!1265080 (regOne!33759 r!7292) (regOne!33758 r!7292)))))))

(declare-fun bm!618388 () Bool)

(assert (=> bm!618388 (= call!618393 (validRegex!8359 (ite c!1265483 (regTwo!33759 (ite c!1265081 (reg!16952 r!7292) (ite c!1265080 (regOne!33759 r!7292) (regOne!33758 r!7292)))) (regTwo!33758 (ite c!1265081 (reg!16952 r!7292) (ite c!1265080 (regOne!33759 r!7292) (regOne!33758 r!7292)))))))))

(declare-fun b!6804384 () Bool)

(declare-fun res!2780517 () Bool)

(assert (=> b!6804384 (=> (not res!2780517) (not e!4106234))))

(assert (=> b!6804384 (= res!2780517 call!618391)))

(assert (=> b!6804384 (= e!4106231 e!4106234)))

(assert (= (and d!2138353 (not res!2780519)) b!6804383))

(assert (= (and b!6804383 c!1265484) b!6804380))

(assert (= (and b!6804383 (not c!1265484)) b!6804377))

(assert (= (and b!6804380 res!2780516) b!6804379))

(assert (= (and b!6804377 c!1265483) b!6804384))

(assert (= (and b!6804377 (not c!1265483)) b!6804382))

(assert (= (and b!6804384 res!2780517) b!6804381))

(assert (= (and b!6804382 (not res!2780518)) b!6804376))

(assert (= (and b!6804376 res!2780515) b!6804378))

(assert (= (or b!6804381 b!6804378) bm!618388))

(assert (= (or b!6804384 b!6804376) bm!618386))

(assert (= (or b!6804379 bm!618386) bm!618387))

(declare-fun m!7550754 () Bool)

(assert (=> b!6804380 m!7550754))

(declare-fun m!7550756 () Bool)

(assert (=> bm!618387 m!7550756))

(declare-fun m!7550758 () Bool)

(assert (=> bm!618388 m!7550758))

(assert (=> bm!618156 d!2138353))

(declare-fun b!6804385 () Bool)

(declare-fun res!2780520 () Bool)

(declare-fun e!4106242 () Bool)

(assert (=> b!6804385 (=> res!2780520 e!4106242)))

(assert (=> b!6804385 (= res!2780520 (not (isEmpty!38426 (tail!12740 (_2!36901 (get!23004 lt!2448518))))))))

(declare-fun b!6804386 () Bool)

(declare-fun e!4106241 () Bool)

(declare-fun e!4106240 () Bool)

(assert (=> b!6804386 (= e!4106241 e!4106240)))

(declare-fun res!2780523 () Bool)

(assert (=> b!6804386 (=> (not res!2780523) (not e!4106240))))

(declare-fun lt!2448648 () Bool)

(assert (=> b!6804386 (= res!2780523 (not lt!2448648))))

(declare-fun b!6804388 () Bool)

(declare-fun e!4106236 () Bool)

(declare-fun e!4106238 () Bool)

(assert (=> b!6804388 (= e!4106236 e!4106238)))

(declare-fun c!1265485 () Bool)

(assert (=> b!6804388 (= c!1265485 ((_ is EmptyLang!16623) r!7292))))

(declare-fun b!6804389 () Bool)

(declare-fun e!4106239 () Bool)

(assert (=> b!6804389 (= e!4106239 (= (head!13655 (_2!36901 (get!23004 lt!2448518))) (c!1264881 r!7292)))))

(declare-fun b!6804390 () Bool)

(declare-fun e!4106237 () Bool)

(assert (=> b!6804390 (= e!4106237 (matchR!8806 (derivativeStep!5286 r!7292 (head!13655 (_2!36901 (get!23004 lt!2448518)))) (tail!12740 (_2!36901 (get!23004 lt!2448518)))))))

(declare-fun b!6804391 () Bool)

(assert (=> b!6804391 (= e!4106238 (not lt!2448648))))

(declare-fun b!6804392 () Bool)

(assert (=> b!6804392 (= e!4106240 e!4106242)))

(declare-fun res!2780524 () Bool)

(assert (=> b!6804392 (=> res!2780524 e!4106242)))

(declare-fun call!618394 () Bool)

(assert (=> b!6804392 (= res!2780524 call!618394)))

(declare-fun b!6804393 () Bool)

(assert (=> b!6804393 (= e!4106236 (= lt!2448648 call!618394))))

(declare-fun bm!618389 () Bool)

(assert (=> bm!618389 (= call!618394 (isEmpty!38426 (_2!36901 (get!23004 lt!2448518))))))

(declare-fun b!6804394 () Bool)

(assert (=> b!6804394 (= e!4106237 (nullable!6601 r!7292))))

(declare-fun b!6804387 () Bool)

(declare-fun res!2780527 () Bool)

(assert (=> b!6804387 (=> (not res!2780527) (not e!4106239))))

(assert (=> b!6804387 (= res!2780527 (not call!618394))))

(declare-fun d!2138355 () Bool)

(assert (=> d!2138355 e!4106236))

(declare-fun c!1265486 () Bool)

(assert (=> d!2138355 (= c!1265486 ((_ is EmptyExpr!16623) r!7292))))

(assert (=> d!2138355 (= lt!2448648 e!4106237)))

(declare-fun c!1265487 () Bool)

(assert (=> d!2138355 (= c!1265487 (isEmpty!38426 (_2!36901 (get!23004 lt!2448518))))))

(assert (=> d!2138355 (validRegex!8359 r!7292)))

(assert (=> d!2138355 (= (matchR!8806 r!7292 (_2!36901 (get!23004 lt!2448518))) lt!2448648)))

(declare-fun b!6804395 () Bool)

(declare-fun res!2780525 () Bool)

(assert (=> b!6804395 (=> (not res!2780525) (not e!4106239))))

(assert (=> b!6804395 (= res!2780525 (isEmpty!38426 (tail!12740 (_2!36901 (get!23004 lt!2448518)))))))

(declare-fun b!6804396 () Bool)

(declare-fun res!2780526 () Bool)

(assert (=> b!6804396 (=> res!2780526 e!4106241)))

(assert (=> b!6804396 (= res!2780526 (not ((_ is ElementMatch!16623) r!7292)))))

(assert (=> b!6804396 (= e!4106238 e!4106241)))

(declare-fun b!6804397 () Bool)

(assert (=> b!6804397 (= e!4106242 (not (= (head!13655 (_2!36901 (get!23004 lt!2448518))) (c!1264881 r!7292))))))

(declare-fun b!6804398 () Bool)

(declare-fun res!2780522 () Bool)

(assert (=> b!6804398 (=> res!2780522 e!4106241)))

(assert (=> b!6804398 (= res!2780522 e!4106239)))

(declare-fun res!2780521 () Bool)

(assert (=> b!6804398 (=> (not res!2780521) (not e!4106239))))

(assert (=> b!6804398 (= res!2780521 lt!2448648)))

(assert (= (and d!2138355 c!1265487) b!6804394))

(assert (= (and d!2138355 (not c!1265487)) b!6804390))

(assert (= (and d!2138355 c!1265486) b!6804393))

(assert (= (and d!2138355 (not c!1265486)) b!6804388))

(assert (= (and b!6804388 c!1265485) b!6804391))

(assert (= (and b!6804388 (not c!1265485)) b!6804396))

(assert (= (and b!6804396 (not res!2780526)) b!6804398))

(assert (= (and b!6804398 res!2780521) b!6804387))

(assert (= (and b!6804387 res!2780527) b!6804395))

(assert (= (and b!6804395 res!2780525) b!6804389))

(assert (= (and b!6804398 (not res!2780522)) b!6804386))

(assert (= (and b!6804386 res!2780523) b!6804392))

(assert (= (and b!6804392 (not res!2780524)) b!6804385))

(assert (= (and b!6804385 (not res!2780520)) b!6804397))

(assert (= (or b!6804393 b!6804387 b!6804392) bm!618389))

(declare-fun m!7550760 () Bool)

(assert (=> b!6804389 m!7550760))

(declare-fun m!7550762 () Bool)

(assert (=> b!6804385 m!7550762))

(assert (=> b!6804385 m!7550762))

(declare-fun m!7550764 () Bool)

(assert (=> b!6804385 m!7550764))

(assert (=> b!6804397 m!7550760))

(assert (=> b!6804390 m!7550760))

(assert (=> b!6804390 m!7550760))

(declare-fun m!7550766 () Bool)

(assert (=> b!6804390 m!7550766))

(assert (=> b!6804390 m!7550762))

(assert (=> b!6804390 m!7550766))

(assert (=> b!6804390 m!7550762))

(declare-fun m!7550768 () Bool)

(assert (=> b!6804390 m!7550768))

(declare-fun m!7550770 () Bool)

(assert (=> bm!618389 m!7550770))

(assert (=> d!2138355 m!7550770))

(assert (=> d!2138355 m!7548542))

(assert (=> b!6804394 m!7549142))

(assert (=> b!6804395 m!7550762))

(assert (=> b!6804395 m!7550762))

(assert (=> b!6804395 m!7550764))

(assert (=> b!6802843 d!2138355))

(assert (=> b!6802843 d!2138247))

(declare-fun d!2138357 () Bool)

(declare-fun lt!2448651 () Int)

(assert (=> d!2138357 (>= lt!2448651 0)))

(declare-fun e!4106245 () Int)

(assert (=> d!2138357 (= lt!2448651 e!4106245)))

(declare-fun c!1265490 () Bool)

(assert (=> d!2138357 (= c!1265490 ((_ is Nil!66045) lt!2448447))))

(assert (=> d!2138357 (= (size!40669 lt!2448447) lt!2448651)))

(declare-fun b!6804403 () Bool)

(assert (=> b!6804403 (= e!4106245 0)))

(declare-fun b!6804404 () Bool)

(assert (=> b!6804404 (= e!4106245 (+ 1 (size!40669 (t!379900 lt!2448447))))))

(assert (= (and d!2138357 c!1265490) b!6804403))

(assert (= (and d!2138357 (not c!1265490)) b!6804404))

(declare-fun m!7550772 () Bool)

(assert (=> b!6804404 m!7550772))

(assert (=> b!6802542 d!2138357))

(declare-fun d!2138359 () Bool)

(declare-fun lt!2448652 () Int)

(assert (=> d!2138359 (>= lt!2448652 0)))

(declare-fun e!4106246 () Int)

(assert (=> d!2138359 (= lt!2448652 e!4106246)))

(declare-fun c!1265491 () Bool)

(assert (=> d!2138359 (= c!1265491 ((_ is Nil!66045) (Cons!66045 (reg!16952 r!7292) Nil!66045)))))

(assert (=> d!2138359 (= (size!40669 (Cons!66045 (reg!16952 r!7292) Nil!66045)) lt!2448652)))

(declare-fun b!6804405 () Bool)

(assert (=> b!6804405 (= e!4106246 0)))

(declare-fun b!6804406 () Bool)

(assert (=> b!6804406 (= e!4106246 (+ 1 (size!40669 (t!379900 (Cons!66045 (reg!16952 r!7292) Nil!66045)))))))

(assert (= (and d!2138359 c!1265491) b!6804405))

(assert (= (and d!2138359 (not c!1265491)) b!6804406))

(assert (=> b!6804406 m!7550534))

(assert (=> b!6802542 d!2138359))

(declare-fun d!2138361 () Bool)

(declare-fun lt!2448653 () Int)

(assert (=> d!2138361 (>= lt!2448653 0)))

(declare-fun e!4106247 () Int)

(assert (=> d!2138361 (= lt!2448653 e!4106247)))

(declare-fun c!1265492 () Bool)

(assert (=> d!2138361 (= c!1265492 ((_ is Nil!66045) lt!2448392))))

(assert (=> d!2138361 (= (size!40669 lt!2448392) lt!2448653)))

(declare-fun b!6804407 () Bool)

(assert (=> b!6804407 (= e!4106247 0)))

(declare-fun b!6804408 () Bool)

(assert (=> b!6804408 (= e!4106247 (+ 1 (size!40669 (t!379900 lt!2448392))))))

(assert (= (and d!2138361 c!1265492) b!6804407))

(assert (= (and d!2138361 (not c!1265492)) b!6804408))

(declare-fun m!7550774 () Bool)

(assert (=> b!6804408 m!7550774))

(assert (=> b!6802542 d!2138361))

(declare-fun d!2138363 () Bool)

(declare-fun res!2780528 () Bool)

(declare-fun e!4106248 () Bool)

(assert (=> d!2138363 (=> res!2780528 e!4106248)))

(assert (=> d!2138363 (= res!2780528 ((_ is Nil!66045) (++!14793 (Cons!66045 (reg!16952 r!7292) Nil!66045) lt!2448392)))))

(assert (=> d!2138363 (= (forall!15815 (++!14793 (Cons!66045 (reg!16952 r!7292) Nil!66045) lt!2448392) lambda!383749) e!4106248)))

(declare-fun b!6804409 () Bool)

(declare-fun e!4106249 () Bool)

(assert (=> b!6804409 (= e!4106248 e!4106249)))

(declare-fun res!2780529 () Bool)

(assert (=> b!6804409 (=> (not res!2780529) (not e!4106249))))

(assert (=> b!6804409 (= res!2780529 (dynLambda!26380 lambda!383749 (h!72493 (++!14793 (Cons!66045 (reg!16952 r!7292) Nil!66045) lt!2448392))))))

(declare-fun b!6804410 () Bool)

(assert (=> b!6804410 (= e!4106249 (forall!15815 (t!379900 (++!14793 (Cons!66045 (reg!16952 r!7292) Nil!66045) lt!2448392)) lambda!383749))))

(assert (= (and d!2138363 (not res!2780528)) b!6804409))

(assert (= (and b!6804409 res!2780529) b!6804410))

(declare-fun b_lambda!256511 () Bool)

(assert (=> (not b_lambda!256511) (not b!6804409)))

(declare-fun m!7550776 () Bool)

(assert (=> b!6804409 m!7550776))

(declare-fun m!7550778 () Bool)

(assert (=> b!6804410 m!7550778))

(assert (=> d!2137487 d!2138363))

(assert (=> d!2137487 d!2137481))

(declare-fun d!2138365 () Bool)

(assert (=> d!2138365 (forall!15815 (++!14793 (Cons!66045 (reg!16952 r!7292) Nil!66045) lt!2448392) lambda!383749)))

(assert (=> d!2138365 true))

(declare-fun _$78!420 () Unit!159937)

(assert (=> d!2138365 (= (choose!50716 (Cons!66045 (reg!16952 r!7292) Nil!66045) lt!2448392 lambda!383749) _$78!420)))

(declare-fun bs!1813917 () Bool)

(assert (= bs!1813917 d!2138365))

(assert (=> bs!1813917 m!7548422))

(assert (=> bs!1813917 m!7548422))

(assert (=> bs!1813917 m!7548758))

(assert (=> d!2137487 d!2138365))

(declare-fun d!2138367 () Bool)

(declare-fun res!2780530 () Bool)

(declare-fun e!4106250 () Bool)

(assert (=> d!2138367 (=> res!2780530 e!4106250)))

(assert (=> d!2138367 (= res!2780530 ((_ is Nil!66045) (Cons!66045 (reg!16952 r!7292) Nil!66045)))))

(assert (=> d!2138367 (= (forall!15815 (Cons!66045 (reg!16952 r!7292) Nil!66045) lambda!383749) e!4106250)))

(declare-fun b!6804411 () Bool)

(declare-fun e!4106251 () Bool)

(assert (=> b!6804411 (= e!4106250 e!4106251)))

(declare-fun res!2780531 () Bool)

(assert (=> b!6804411 (=> (not res!2780531) (not e!4106251))))

(assert (=> b!6804411 (= res!2780531 (dynLambda!26380 lambda!383749 (h!72493 (Cons!66045 (reg!16952 r!7292) Nil!66045))))))

(declare-fun b!6804412 () Bool)

(assert (=> b!6804412 (= e!4106251 (forall!15815 (t!379900 (Cons!66045 (reg!16952 r!7292) Nil!66045)) lambda!383749))))

(assert (= (and d!2138367 (not res!2780530)) b!6804411))

(assert (= (and b!6804411 res!2780531) b!6804412))

(declare-fun b_lambda!256513 () Bool)

(assert (=> (not b_lambda!256513) (not b!6804411)))

(declare-fun m!7550780 () Bool)

(assert (=> b!6804411 m!7550780))

(declare-fun m!7550782 () Bool)

(assert (=> b!6804412 m!7550782))

(assert (=> d!2137487 d!2138367))

(declare-fun b!6804413 () Bool)

(declare-fun e!4106255 () Bool)

(declare-fun e!4106256 () Bool)

(assert (=> b!6804413 (= e!4106255 e!4106256)))

(declare-fun res!2780532 () Bool)

(assert (=> b!6804413 (=> (not res!2780532) (not e!4106256))))

(declare-fun call!618395 () Bool)

(assert (=> b!6804413 (= res!2780532 call!618395)))

(declare-fun b!6804414 () Bool)

(declare-fun e!4106252 () Bool)

(declare-fun e!4106254 () Bool)

(assert (=> b!6804414 (= e!4106252 e!4106254)))

(declare-fun c!1265493 () Bool)

(assert (=> b!6804414 (= c!1265493 ((_ is Union!16623) lt!2448456))))

(declare-fun d!2138369 () Bool)

(declare-fun res!2780536 () Bool)

(declare-fun e!4106258 () Bool)

(assert (=> d!2138369 (=> res!2780536 e!4106258)))

(assert (=> d!2138369 (= res!2780536 ((_ is ElementMatch!16623) lt!2448456))))

(assert (=> d!2138369 (= (validRegex!8359 lt!2448456) e!4106258)))

(declare-fun b!6804415 () Bool)

(declare-fun call!618397 () Bool)

(assert (=> b!6804415 (= e!4106256 call!618397)))

(declare-fun bm!618390 () Bool)

(declare-fun call!618396 () Bool)

(assert (=> bm!618390 (= call!618395 call!618396)))

(declare-fun b!6804416 () Bool)

(declare-fun e!4106253 () Bool)

(assert (=> b!6804416 (= e!4106253 call!618396)))

(declare-fun b!6804417 () Bool)

(assert (=> b!6804417 (= e!4106252 e!4106253)))

(declare-fun res!2780533 () Bool)

(assert (=> b!6804417 (= res!2780533 (not (nullable!6601 (reg!16952 lt!2448456))))))

(assert (=> b!6804417 (=> (not res!2780533) (not e!4106253))))

(declare-fun bm!618391 () Bool)

(declare-fun c!1265494 () Bool)

(assert (=> bm!618391 (= call!618396 (validRegex!8359 (ite c!1265494 (reg!16952 lt!2448456) (ite c!1265493 (regOne!33759 lt!2448456) (regOne!33758 lt!2448456)))))))

(declare-fun b!6804418 () Bool)

(declare-fun e!4106257 () Bool)

(assert (=> b!6804418 (= e!4106257 call!618397)))

(declare-fun b!6804419 () Bool)

(declare-fun res!2780535 () Bool)

(assert (=> b!6804419 (=> res!2780535 e!4106255)))

(assert (=> b!6804419 (= res!2780535 (not ((_ is Concat!25468) lt!2448456)))))

(assert (=> b!6804419 (= e!4106254 e!4106255)))

(declare-fun b!6804420 () Bool)

(assert (=> b!6804420 (= e!4106258 e!4106252)))

(assert (=> b!6804420 (= c!1265494 ((_ is Star!16623) lt!2448456))))

(declare-fun bm!618392 () Bool)

(assert (=> bm!618392 (= call!618397 (validRegex!8359 (ite c!1265493 (regTwo!33759 lt!2448456) (regTwo!33758 lt!2448456))))))

(declare-fun b!6804421 () Bool)

(declare-fun res!2780534 () Bool)

(assert (=> b!6804421 (=> (not res!2780534) (not e!4106257))))

(assert (=> b!6804421 (= res!2780534 call!618395)))

(assert (=> b!6804421 (= e!4106254 e!4106257)))

(assert (= (and d!2138369 (not res!2780536)) b!6804420))

(assert (= (and b!6804420 c!1265494) b!6804417))

(assert (= (and b!6804420 (not c!1265494)) b!6804414))

(assert (= (and b!6804417 res!2780533) b!6804416))

(assert (= (and b!6804414 c!1265493) b!6804421))

(assert (= (and b!6804414 (not c!1265493)) b!6804419))

(assert (= (and b!6804421 res!2780534) b!6804418))

(assert (= (and b!6804419 (not res!2780535)) b!6804413))

(assert (= (and b!6804413 res!2780532) b!6804415))

(assert (= (or b!6804418 b!6804415) bm!618392))

(assert (= (or b!6804421 b!6804413) bm!618390))

(assert (= (or b!6804416 bm!618390) bm!618391))

(declare-fun m!7550784 () Bool)

(assert (=> b!6804417 m!7550784))

(declare-fun m!7550786 () Bool)

(assert (=> bm!618391 m!7550786))

(declare-fun m!7550788 () Bool)

(assert (=> bm!618392 m!7550788))

(assert (=> d!2137493 d!2138369))

(assert (=> d!2137493 d!2137557))

(assert (=> d!2137493 d!2137569))

(declare-fun d!2138371 () Bool)

(assert (=> d!2138371 (= (isEmptyLang!1988 lt!2448486) ((_ is EmptyLang!16623) lt!2448486))))

(assert (=> b!6802726 d!2138371))

(declare-fun d!2138373 () Bool)

(assert (=> d!2138373 (= (nullable!6601 (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))) (nullableFct!2503 (h!72493 (exprs!6507 (Context!12015 (Cons!66045 r!7292 Nil!66045))))))))

(declare-fun bs!1813918 () Bool)

(assert (= bs!1813918 d!2138373))

(declare-fun m!7550790 () Bool)

(assert (=> bs!1813918 m!7550790))

(assert (=> b!6802616 d!2138373))

(assert (=> d!2137607 d!2137591))

(declare-fun d!2138375 () Bool)

(declare-fun res!2780537 () Bool)

(declare-fun e!4106259 () Bool)

(assert (=> d!2138375 (=> res!2780537 e!4106259)))

(assert (=> d!2138375 (= res!2780537 ((_ is Nil!66045) lt!2448491))))

(assert (=> d!2138375 (= (forall!15815 lt!2448491 lambda!383802) e!4106259)))

(declare-fun b!6804422 () Bool)

(declare-fun e!4106260 () Bool)

(assert (=> b!6804422 (= e!4106259 e!4106260)))

(declare-fun res!2780538 () Bool)

(assert (=> b!6804422 (=> (not res!2780538) (not e!4106260))))

(assert (=> b!6804422 (= res!2780538 (dynLambda!26380 lambda!383802 (h!72493 lt!2448491)))))

(declare-fun b!6804423 () Bool)

(assert (=> b!6804423 (= e!4106260 (forall!15815 (t!379900 lt!2448491) lambda!383802))))

(assert (= (and d!2138375 (not res!2780537)) b!6804422))

(assert (= (and b!6804422 res!2780538) b!6804423))

(declare-fun b_lambda!256515 () Bool)

(assert (=> (not b_lambda!256515) (not b!6804422)))

(declare-fun m!7550792 () Bool)

(assert (=> b!6804422 m!7550792))

(declare-fun m!7550794 () Bool)

(assert (=> b!6804423 m!7550794))

(assert (=> d!2137569 d!2138375))

(declare-fun bs!1813919 () Bool)

(declare-fun b!6804426 () Bool)

(assert (= bs!1813919 (and b!6804426 b!6802354)))

(declare-fun lambda!383930 () Int)

(assert (=> bs!1813919 (not (= lambda!383930 lambda!383761))))

(declare-fun bs!1813920 () Bool)

(assert (= bs!1813920 (and b!6804426 b!6804159)))

(assert (=> bs!1813920 (not (= lambda!383930 lambda!383917))))

(declare-fun bs!1813921 () Bool)

(assert (= bs!1813921 (and b!6804426 d!2137583)))

(assert (=> bs!1813921 (not (= lambda!383930 lambda!383822))))

(declare-fun bs!1813922 () Bool)

(assert (= bs!1813922 (and b!6804426 d!2137985)))

(assert (=> bs!1813922 (not (= lambda!383930 lambda!383894))))

(declare-fun bs!1813923 () Bool)

(assert (= bs!1813923 (and b!6804426 d!2138237)))

(assert (=> bs!1813923 (not (= lambda!383930 lambda!383922))))

(declare-fun bs!1813924 () Bool)

(assert (= bs!1813924 (and b!6804426 b!6802221)))

(assert (=> bs!1813924 (not (= lambda!383930 lambda!383744))))

(declare-fun bs!1813925 () Bool)

(assert (= bs!1813925 (and b!6804426 d!2138209)))

(assert (=> bs!1813925 (not (= lambda!383930 lambda!383912))))

(declare-fun bs!1813926 () Bool)

(assert (= bs!1813926 (and b!6804426 b!6802906)))

(assert (=> bs!1813926 (= (and (= (reg!16952 (regTwo!33759 r!7292)) (reg!16952 r!7292)) (= (regTwo!33759 r!7292) r!7292)) (= lambda!383930 lambda!383835))))

(declare-fun bs!1813927 () Bool)

(assert (= bs!1813927 (and b!6804426 d!2137575)))

(assert (=> bs!1813927 (not (= lambda!383930 lambda!383813))))

(declare-fun bs!1813928 () Bool)

(assert (= bs!1813928 (and b!6804426 b!6802352)))

(assert (=> bs!1813928 (= (and (= (reg!16952 (regTwo!33759 r!7292)) (reg!16952 lt!2448378)) (= (regTwo!33759 r!7292) lt!2448378)) (= lambda!383930 lambda!383760))))

(declare-fun bs!1813929 () Bool)

(assert (= bs!1813929 (and b!6804426 d!2137603)))

(assert (=> bs!1813929 (not (= lambda!383930 lambda!383830))))

(assert (=> bs!1813921 (= (and (= (reg!16952 (regTwo!33759 r!7292)) (reg!16952 r!7292)) (= (regTwo!33759 r!7292) (Star!16623 (reg!16952 r!7292)))) (= lambda!383930 lambda!383825))))

(declare-fun bs!1813930 () Bool)

(assert (= bs!1813930 (and b!6804426 b!6804157)))

(assert (=> bs!1813930 (= (and (= (reg!16952 (regTwo!33759 r!7292)) (reg!16952 (regOne!33759 r!7292))) (= (regTwo!33759 r!7292) (regOne!33759 r!7292))) (= lambda!383930 lambda!383916))))

(assert (=> bs!1813922 (= (and (= (reg!16952 (regTwo!33759 r!7292)) (reg!16952 r!7292)) (= (regTwo!33759 r!7292) (Star!16623 (reg!16952 r!7292)))) (= lambda!383930 lambda!383896))))

(assert (=> bs!1813927 (not (= lambda!383930 lambda!383810))))

(declare-fun bs!1813931 () Bool)

(assert (= bs!1813931 (and b!6804426 b!6802908)))

(assert (=> bs!1813931 (not (= lambda!383930 lambda!383836))))

(declare-fun bs!1813932 () Bool)

(assert (= bs!1813932 (and b!6804426 b!6804246)))

(assert (=> bs!1813932 (= (and (= (reg!16952 (regTwo!33759 r!7292)) (reg!16952 (regOne!33759 lt!2448378))) (= (regTwo!33759 r!7292) (regOne!33759 lt!2448378))) (= lambda!383930 lambda!383923))))

(declare-fun bs!1813933 () Bool)

(assert (= bs!1813933 (and b!6804426 b!6804248)))

(assert (=> bs!1813933 (not (= lambda!383930 lambda!383924))))

(declare-fun bs!1813934 () Bool)

(assert (= bs!1813934 (and b!6804426 b!6803763)))

(assert (=> bs!1813934 (not (= lambda!383930 lambda!383900))))

(assert (=> bs!1813924 (not (= lambda!383930 lambda!383746))))

(declare-fun bs!1813935 () Bool)

(assert (= bs!1813935 (and b!6804426 b!6803761)))

(assert (=> bs!1813935 (= (and (= (reg!16952 (regTwo!33759 r!7292)) (reg!16952 (regTwo!33759 lt!2448378))) (= (regTwo!33759 r!7292) (regTwo!33759 lt!2448378))) (= lambda!383930 lambda!383898))))

(assert (=> bs!1813925 (not (= lambda!383930 lambda!383911))))

(assert (=> bs!1813924 (= (and (= (reg!16952 (regTwo!33759 r!7292)) (reg!16952 r!7292)) (= (regTwo!33759 r!7292) r!7292)) (= lambda!383930 lambda!383745))))

(assert (=> b!6804426 true))

(assert (=> b!6804426 true))

(declare-fun bs!1813936 () Bool)

(declare-fun b!6804428 () Bool)

(assert (= bs!1813936 (and b!6804428 b!6802354)))

(declare-fun lambda!383931 () Int)

(assert (=> bs!1813936 (= (and (= (regOne!33758 (regTwo!33759 r!7292)) (regOne!33758 lt!2448378)) (= (regTwo!33758 (regTwo!33759 r!7292)) (regTwo!33758 lt!2448378))) (= lambda!383931 lambda!383761))))

(declare-fun bs!1813937 () Bool)

(assert (= bs!1813937 (and b!6804428 b!6804159)))

(assert (=> bs!1813937 (= (and (= (regOne!33758 (regTwo!33759 r!7292)) (regOne!33758 (regOne!33759 r!7292))) (= (regTwo!33758 (regTwo!33759 r!7292)) (regTwo!33758 (regOne!33759 r!7292)))) (= lambda!383931 lambda!383917))))

(declare-fun bs!1813938 () Bool)

(assert (= bs!1813938 (and b!6804428 d!2137583)))

(assert (=> bs!1813938 (not (= lambda!383931 lambda!383822))))

(declare-fun bs!1813939 () Bool)

(assert (= bs!1813939 (and b!6804428 d!2137985)))

(assert (=> bs!1813939 (not (= lambda!383931 lambda!383894))))

(declare-fun bs!1813940 () Bool)

(assert (= bs!1813940 (and b!6804428 d!2138237)))

(assert (=> bs!1813940 (not (= lambda!383931 lambda!383922))))

(declare-fun bs!1813941 () Bool)

(assert (= bs!1813941 (and b!6804428 b!6802221)))

(assert (=> bs!1813941 (not (= lambda!383931 lambda!383744))))

(declare-fun bs!1813942 () Bool)

(assert (= bs!1813942 (and b!6804428 d!2138209)))

(assert (=> bs!1813942 (= (and (= (regOne!33758 (regTwo!33759 r!7292)) (reg!16952 r!7292)) (= (regTwo!33758 (regTwo!33759 r!7292)) r!7292)) (= lambda!383931 lambda!383912))))

(declare-fun bs!1813943 () Bool)

(assert (= bs!1813943 (and b!6804428 d!2137575)))

(assert (=> bs!1813943 (= (and (= (regOne!33758 (regTwo!33759 r!7292)) (reg!16952 r!7292)) (= (regTwo!33758 (regTwo!33759 r!7292)) r!7292)) (= lambda!383931 lambda!383813))))

(declare-fun bs!1813944 () Bool)

(assert (= bs!1813944 (and b!6804428 b!6802352)))

(assert (=> bs!1813944 (not (= lambda!383931 lambda!383760))))

(declare-fun bs!1813945 () Bool)

(assert (= bs!1813945 (and b!6804428 d!2137603)))

(assert (=> bs!1813945 (not (= lambda!383931 lambda!383830))))

(assert (=> bs!1813938 (not (= lambda!383931 lambda!383825))))

(declare-fun bs!1813946 () Bool)

(assert (= bs!1813946 (and b!6804428 b!6804157)))

(assert (=> bs!1813946 (not (= lambda!383931 lambda!383916))))

(assert (=> bs!1813939 (not (= lambda!383931 lambda!383896))))

(assert (=> bs!1813943 (not (= lambda!383931 lambda!383810))))

(declare-fun bs!1813947 () Bool)

(assert (= bs!1813947 (and b!6804428 b!6802908)))

(assert (=> bs!1813947 (= (and (= (regOne!33758 (regTwo!33759 r!7292)) (regOne!33758 r!7292)) (= (regTwo!33758 (regTwo!33759 r!7292)) (regTwo!33758 r!7292))) (= lambda!383931 lambda!383836))))

(declare-fun bs!1813948 () Bool)

(assert (= bs!1813948 (and b!6804428 b!6804246)))

(assert (=> bs!1813948 (not (= lambda!383931 lambda!383923))))

(declare-fun bs!1813949 () Bool)

(assert (= bs!1813949 (and b!6804428 b!6804248)))

(assert (=> bs!1813949 (= (and (= (regOne!33758 (regTwo!33759 r!7292)) (regOne!33758 (regOne!33759 lt!2448378))) (= (regTwo!33758 (regTwo!33759 r!7292)) (regTwo!33758 (regOne!33759 lt!2448378)))) (= lambda!383931 lambda!383924))))

(declare-fun bs!1813950 () Bool)

(assert (= bs!1813950 (and b!6804428 b!6803763)))

(assert (=> bs!1813950 (= (and (= (regOne!33758 (regTwo!33759 r!7292)) (regOne!33758 (regTwo!33759 lt!2448378))) (= (regTwo!33758 (regTwo!33759 r!7292)) (regTwo!33758 (regTwo!33759 lt!2448378)))) (= lambda!383931 lambda!383900))))

(declare-fun bs!1813951 () Bool)

(assert (= bs!1813951 (and b!6804428 b!6804426)))

(assert (=> bs!1813951 (not (= lambda!383931 lambda!383930))))

(declare-fun bs!1813952 () Bool)

(assert (= bs!1813952 (and b!6804428 b!6802906)))

(assert (=> bs!1813952 (not (= lambda!383931 lambda!383835))))

(assert (=> bs!1813941 (= (and (= (regOne!33758 (regTwo!33759 r!7292)) (reg!16952 r!7292)) (= (regTwo!33758 (regTwo!33759 r!7292)) r!7292)) (= lambda!383931 lambda!383746))))

(declare-fun bs!1813953 () Bool)

(assert (= bs!1813953 (and b!6804428 b!6803761)))

(assert (=> bs!1813953 (not (= lambda!383931 lambda!383898))))

(assert (=> bs!1813942 (not (= lambda!383931 lambda!383911))))

(assert (=> bs!1813941 (not (= lambda!383931 lambda!383745))))

(assert (=> b!6804428 true))

(assert (=> b!6804428 true))

(declare-fun b!6804424 () Bool)

(declare-fun e!4106266 () Bool)

(declare-fun call!618398 () Bool)

(assert (=> b!6804424 (= e!4106266 call!618398)))

(declare-fun b!6804425 () Bool)

(declare-fun e!4106264 () Bool)

(assert (=> b!6804425 (= e!4106266 e!4106264)))

(declare-fun res!2780541 () Bool)

(assert (=> b!6804425 (= res!2780541 (not ((_ is EmptyLang!16623) (regTwo!33759 r!7292))))))

(assert (=> b!6804425 (=> (not res!2780541) (not e!4106264))))

(declare-fun e!4106262 () Bool)

(declare-fun call!618399 () Bool)

(assert (=> b!6804426 (= e!4106262 call!618399)))

(declare-fun b!6804427 () Bool)

(declare-fun res!2780540 () Bool)

(assert (=> b!6804427 (=> res!2780540 e!4106262)))

(assert (=> b!6804427 (= res!2780540 call!618398)))

(declare-fun e!4106265 () Bool)

(assert (=> b!6804427 (= e!4106265 e!4106262)))

(declare-fun bm!618393 () Bool)

(assert (=> bm!618393 (= call!618398 (isEmpty!38426 s!2326))))

(declare-fun c!1265496 () Bool)

(declare-fun bm!618394 () Bool)

(assert (=> bm!618394 (= call!618399 (Exists!3691 (ite c!1265496 lambda!383930 lambda!383931)))))

(declare-fun d!2138377 () Bool)

(declare-fun c!1265497 () Bool)

(assert (=> d!2138377 (= c!1265497 ((_ is EmptyExpr!16623) (regTwo!33759 r!7292)))))

(assert (=> d!2138377 (= (matchRSpec!3724 (regTwo!33759 r!7292) s!2326) e!4106266)))

(assert (=> b!6804428 (= e!4106265 call!618399)))

(declare-fun b!6804429 () Bool)

(declare-fun c!1265495 () Bool)

(assert (=> b!6804429 (= c!1265495 ((_ is ElementMatch!16623) (regTwo!33759 r!7292)))))

(declare-fun e!4106267 () Bool)

(assert (=> b!6804429 (= e!4106264 e!4106267)))

(declare-fun b!6804430 () Bool)

(declare-fun e!4106261 () Bool)

(assert (=> b!6804430 (= e!4106261 e!4106265)))

(assert (=> b!6804430 (= c!1265496 ((_ is Star!16623) (regTwo!33759 r!7292)))))

(declare-fun b!6804431 () Bool)

(declare-fun c!1265498 () Bool)

(assert (=> b!6804431 (= c!1265498 ((_ is Union!16623) (regTwo!33759 r!7292)))))

(assert (=> b!6804431 (= e!4106267 e!4106261)))

(declare-fun b!6804432 () Bool)

(declare-fun e!4106263 () Bool)

(assert (=> b!6804432 (= e!4106261 e!4106263)))

(declare-fun res!2780539 () Bool)

(assert (=> b!6804432 (= res!2780539 (matchRSpec!3724 (regOne!33759 (regTwo!33759 r!7292)) s!2326))))

(assert (=> b!6804432 (=> res!2780539 e!4106263)))

(declare-fun b!6804433 () Bool)

(assert (=> b!6804433 (= e!4106267 (= s!2326 (Cons!66044 (c!1264881 (regTwo!33759 r!7292)) Nil!66044)))))

(declare-fun b!6804434 () Bool)

(assert (=> b!6804434 (= e!4106263 (matchRSpec!3724 (regTwo!33759 (regTwo!33759 r!7292)) s!2326))))

(assert (= (and d!2138377 c!1265497) b!6804424))

(assert (= (and d!2138377 (not c!1265497)) b!6804425))

(assert (= (and b!6804425 res!2780541) b!6804429))

(assert (= (and b!6804429 c!1265495) b!6804433))

(assert (= (and b!6804429 (not c!1265495)) b!6804431))

(assert (= (and b!6804431 c!1265498) b!6804432))

(assert (= (and b!6804431 (not c!1265498)) b!6804430))

(assert (= (and b!6804432 (not res!2780539)) b!6804434))

(assert (= (and b!6804430 c!1265496) b!6804427))

(assert (= (and b!6804430 (not c!1265496)) b!6804428))

(assert (= (and b!6804427 (not res!2780540)) b!6804426))

(assert (= (or b!6804426 b!6804428) bm!618394))

(assert (= (or b!6804424 b!6804427) bm!618393))

(assert (=> bm!618393 m!7548460))

(declare-fun m!7550796 () Bool)

(assert (=> bm!618394 m!7550796))

(declare-fun m!7550798 () Bool)

(assert (=> b!6804432 m!7550798))

(declare-fun m!7550800 () Bool)

(assert (=> b!6804434 m!7550800))

(assert (=> b!6802914 d!2138377))

(declare-fun b!6804435 () Bool)

(declare-fun e!4106270 () (InoxSet Context!12014))

(declare-fun call!618404 () (InoxSet Context!12014))

(assert (=> b!6804435 (= e!4106270 call!618404)))

(declare-fun b!6804436 () Bool)

(declare-fun e!4106269 () (InoxSet Context!12014))

(declare-fun e!4106272 () (InoxSet Context!12014))

(assert (=> b!6804436 (= e!4106269 e!4106272)))

(declare-fun c!1265502 () Bool)

(assert (=> b!6804436 (= c!1265502 ((_ is Union!16623) (h!72493 (exprs!6507 lt!2448407))))))

(declare-fun bm!618395 () Bool)

(declare-fun call!618401 () (InoxSet Context!12014))

(assert (=> bm!618395 (= call!618404 call!618401)))

(declare-fun d!2138379 () Bool)

(declare-fun c!1265499 () Bool)

(assert (=> d!2138379 (= c!1265499 (and ((_ is ElementMatch!16623) (h!72493 (exprs!6507 lt!2448407))) (= (c!1264881 (h!72493 (exprs!6507 lt!2448407))) (h!72492 s!2326))))))

(assert (=> d!2138379 (= (derivationStepZipperDown!1851 (h!72493 (exprs!6507 lt!2448407)) (Context!12015 (t!379900 (exprs!6507 lt!2448407))) (h!72492 s!2326)) e!4106269)))

(declare-fun b!6804437 () Bool)

(declare-fun e!4106271 () (InoxSet Context!12014))

(declare-fun e!4106268 () (InoxSet Context!12014))

(assert (=> b!6804437 (= e!4106271 e!4106268)))

(declare-fun c!1265500 () Bool)

(assert (=> b!6804437 (= c!1265500 ((_ is Concat!25468) (h!72493 (exprs!6507 lt!2448407))))))

(declare-fun b!6804438 () Bool)

(declare-fun call!618402 () (InoxSet Context!12014))

(declare-fun call!618403 () (InoxSet Context!12014))

(assert (=> b!6804438 (= e!4106272 ((_ map or) call!618402 call!618403))))

(declare-fun call!618405 () List!66169)

(declare-fun c!1265501 () Bool)

(declare-fun bm!618396 () Bool)

(assert (=> bm!618396 (= call!618405 ($colon$colon!2432 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448407)))) (ite (or c!1265501 c!1265500) (regTwo!33758 (h!72493 (exprs!6507 lt!2448407))) (h!72493 (exprs!6507 lt!2448407)))))))

(declare-fun b!6804439 () Bool)

(assert (=> b!6804439 (= e!4106268 call!618404)))

(declare-fun b!6804440 () Bool)

(declare-fun e!4106273 () Bool)

(assert (=> b!6804440 (= e!4106273 (nullable!6601 (regOne!33758 (h!72493 (exprs!6507 lt!2448407)))))))

(declare-fun bm!618397 () Bool)

(assert (=> bm!618397 (= call!618401 call!618402)))

(declare-fun b!6804441 () Bool)

(declare-fun c!1265503 () Bool)

(assert (=> b!6804441 (= c!1265503 ((_ is Star!16623) (h!72493 (exprs!6507 lt!2448407))))))

(assert (=> b!6804441 (= e!4106268 e!4106270)))

(declare-fun b!6804442 () Bool)

(assert (=> b!6804442 (= e!4106269 (store ((as const (Array Context!12014 Bool)) false) (Context!12015 (t!379900 (exprs!6507 lt!2448407))) true))))

(declare-fun b!6804443 () Bool)

(assert (=> b!6804443 (= e!4106270 ((as const (Array Context!12014 Bool)) false))))

(declare-fun b!6804444 () Bool)

(assert (=> b!6804444 (= c!1265501 e!4106273)))

(declare-fun res!2780542 () Bool)

(assert (=> b!6804444 (=> (not res!2780542) (not e!4106273))))

(assert (=> b!6804444 (= res!2780542 ((_ is Concat!25468) (h!72493 (exprs!6507 lt!2448407))))))

(assert (=> b!6804444 (= e!4106272 e!4106271)))

(declare-fun bm!618398 () Bool)

(declare-fun call!618400 () List!66169)

(assert (=> bm!618398 (= call!618400 call!618405)))

(declare-fun b!6804445 () Bool)

(assert (=> b!6804445 (= e!4106271 ((_ map or) call!618403 call!618401))))

(declare-fun bm!618399 () Bool)

(assert (=> bm!618399 (= call!618403 (derivationStepZipperDown!1851 (ite c!1265502 (regTwo!33759 (h!72493 (exprs!6507 lt!2448407))) (regOne!33758 (h!72493 (exprs!6507 lt!2448407)))) (ite c!1265502 (Context!12015 (t!379900 (exprs!6507 lt!2448407))) (Context!12015 call!618405)) (h!72492 s!2326)))))

(declare-fun bm!618400 () Bool)

(assert (=> bm!618400 (= call!618402 (derivationStepZipperDown!1851 (ite c!1265502 (regOne!33759 (h!72493 (exprs!6507 lt!2448407))) (ite c!1265501 (regTwo!33758 (h!72493 (exprs!6507 lt!2448407))) (ite c!1265500 (regOne!33758 (h!72493 (exprs!6507 lt!2448407))) (reg!16952 (h!72493 (exprs!6507 lt!2448407)))))) (ite (or c!1265502 c!1265501) (Context!12015 (t!379900 (exprs!6507 lt!2448407))) (Context!12015 call!618400)) (h!72492 s!2326)))))

(assert (= (and d!2138379 c!1265499) b!6804442))

(assert (= (and d!2138379 (not c!1265499)) b!6804436))

(assert (= (and b!6804436 c!1265502) b!6804438))

(assert (= (and b!6804436 (not c!1265502)) b!6804444))

(assert (= (and b!6804444 res!2780542) b!6804440))

(assert (= (and b!6804444 c!1265501) b!6804445))

(assert (= (and b!6804444 (not c!1265501)) b!6804437))

(assert (= (and b!6804437 c!1265500) b!6804439))

(assert (= (and b!6804437 (not c!1265500)) b!6804441))

(assert (= (and b!6804441 c!1265503) b!6804435))

(assert (= (and b!6804441 (not c!1265503)) b!6804443))

(assert (= (or b!6804439 b!6804435) bm!618398))

(assert (= (or b!6804439 b!6804435) bm!618395))

(assert (= (or b!6804445 bm!618398) bm!618396))

(assert (= (or b!6804445 bm!618395) bm!618397))

(assert (= (or b!6804438 b!6804445) bm!618399))

(assert (= (or b!6804438 bm!618397) bm!618400))

(declare-fun m!7550802 () Bool)

(assert (=> bm!618400 m!7550802))

(declare-fun m!7550804 () Bool)

(assert (=> b!6804440 m!7550804))

(declare-fun m!7550806 () Bool)

(assert (=> bm!618399 m!7550806))

(declare-fun m!7550808 () Bool)

(assert (=> bm!618396 m!7550808))

(declare-fun m!7550810 () Bool)

(assert (=> b!6804442 m!7550810))

(assert (=> bm!618135 d!2138379))

(declare-fun b!6804446 () Bool)

(declare-fun e!4106276 () (InoxSet Context!12014))

(declare-fun call!618410 () (InoxSet Context!12014))

(assert (=> b!6804446 (= e!4106276 call!618410)))

(declare-fun b!6804447 () Bool)

(declare-fun e!4106275 () (InoxSet Context!12014))

(declare-fun e!4106278 () (InoxSet Context!12014))

(assert (=> b!6804447 (= e!4106275 e!4106278)))

(declare-fun c!1265507 () Bool)

(assert (=> b!6804447 (= c!1265507 ((_ is Union!16623) (h!72493 (exprs!6507 lt!2448396))))))

(declare-fun bm!618401 () Bool)

(declare-fun call!618407 () (InoxSet Context!12014))

(assert (=> bm!618401 (= call!618410 call!618407)))

(declare-fun d!2138381 () Bool)

(declare-fun c!1265504 () Bool)

(assert (=> d!2138381 (= c!1265504 (and ((_ is ElementMatch!16623) (h!72493 (exprs!6507 lt!2448396))) (= (c!1264881 (h!72493 (exprs!6507 lt!2448396))) (h!72492 s!2326))))))

(assert (=> d!2138381 (= (derivationStepZipperDown!1851 (h!72493 (exprs!6507 lt!2448396)) (Context!12015 (t!379900 (exprs!6507 lt!2448396))) (h!72492 s!2326)) e!4106275)))

(declare-fun b!6804448 () Bool)

(declare-fun e!4106277 () (InoxSet Context!12014))

(declare-fun e!4106274 () (InoxSet Context!12014))

(assert (=> b!6804448 (= e!4106277 e!4106274)))

(declare-fun c!1265505 () Bool)

(assert (=> b!6804448 (= c!1265505 ((_ is Concat!25468) (h!72493 (exprs!6507 lt!2448396))))))

(declare-fun b!6804449 () Bool)

(declare-fun call!618408 () (InoxSet Context!12014))

(declare-fun call!618409 () (InoxSet Context!12014))

(assert (=> b!6804449 (= e!4106278 ((_ map or) call!618408 call!618409))))

(declare-fun call!618411 () List!66169)

(declare-fun bm!618402 () Bool)

(declare-fun c!1265506 () Bool)

(assert (=> bm!618402 (= call!618411 ($colon$colon!2432 (exprs!6507 (Context!12015 (t!379900 (exprs!6507 lt!2448396)))) (ite (or c!1265506 c!1265505) (regTwo!33758 (h!72493 (exprs!6507 lt!2448396))) (h!72493 (exprs!6507 lt!2448396)))))))

(declare-fun b!6804450 () Bool)

(assert (=> b!6804450 (= e!4106274 call!618410)))

(declare-fun b!6804451 () Bool)

(declare-fun e!4106279 () Bool)

(assert (=> b!6804451 (= e!4106279 (nullable!6601 (regOne!33758 (h!72493 (exprs!6507 lt!2448396)))))))

(declare-fun bm!618403 () Bool)

(assert (=> bm!618403 (= call!618407 call!618408)))

(declare-fun b!6804452 () Bool)

(declare-fun c!1265508 () Bool)

(assert (=> b!6804452 (= c!1265508 ((_ is Star!16623) (h!72493 (exprs!6507 lt!2448396))))))

(assert (=> b!6804452 (= e!4106274 e!4106276)))

(declare-fun b!6804453 () Bool)

(assert (=> b!6804453 (= e!4106275 (store ((as const (Array Context!12014 Bool)) false) (Context!12015 (t!379900 (exprs!6507 lt!2448396))) true))))

(declare-fun b!6804454 () Bool)

(assert (=> b!6804454 (= e!4106276 ((as const (Array Context!12014 Bool)) false))))

(declare-fun b!6804455 () Bool)

(assert (=> b!6804455 (= c!1265506 e!4106279)))

(declare-fun res!2780543 () Bool)

(assert (=> b!6804455 (=> (not res!2780543) (not e!4106279))))

(assert (=> b!6804455 (= res!2780543 ((_ is Concat!25468) (h!72493 (exprs!6507 lt!2448396))))))

(assert (=> b!6804455 (= e!4106278 e!4106277)))

(declare-fun bm!618404 () Bool)

(declare-fun call!618406 () List!66169)

(assert (=> bm!618404 (= call!618406 call!618411)))

(declare-fun b!6804456 () Bool)

(assert (=> b!6804456 (= e!4106277 ((_ map or) call!618409 call!618407))))

(declare-fun bm!618405 () Bool)

(assert (=> bm!618405 (= call!618409 (derivationStepZipperDown!1851 (ite c!1265507 (regTwo!33759 (h!72493 (exprs!6507 lt!2448396))) (regOne!33758 (h!72493 (exprs!6507 lt!2448396)))) (ite c!1265507 (Context!12015 (t!379900 (exprs!6507 lt!2448396))) (Context!12015 call!618411)) (h!72492 s!2326)))))

(declare-fun bm!618406 () Bool)

(assert (=> bm!618406 (= call!618408 (derivationStepZipperDown!1851 (ite c!1265507 (regOne!33759 (h!72493 (exprs!6507 lt!2448396))) (ite c!1265506 (regTwo!33758 (h!72493 (exprs!6507 lt!2448396))) (ite c!1265505 (regOne!33758 (h!72493 (exprs!6507 lt!2448396))) (reg!16952 (h!72493 (exprs!6507 lt!2448396)))))) (ite (or c!1265507 c!1265506) (Context!12015 (t!379900 (exprs!6507 lt!2448396))) (Context!12015 call!618406)) (h!72492 s!2326)))))

(assert (= (and d!2138381 c!1265504) b!6804453))

(assert (= (and d!2138381 (not c!1265504)) b!6804447))

(assert (= (and b!6804447 c!1265507) b!6804449))

(assert (= (and b!6804447 (not c!1265507)) b!6804455))

(assert (= (and b!6804455 res!2780543) b!6804451))

(assert (= (and b!6804455 c!1265506) b!6804456))

(assert (= (and b!6804455 (not c!1265506)) b!6804448))

(assert (= (and b!6804448 c!1265505) b!6804450))

(assert (= (and b!6804448 (not c!1265505)) b!6804452))

(assert (= (and b!6804452 c!1265508) b!6804446))

(assert (= (and b!6804452 (not c!1265508)) b!6804454))

(assert (= (or b!6804450 b!6804446) bm!618404))

(assert (= (or b!6804450 b!6804446) bm!618401))

(assert (= (or b!6804456 bm!618404) bm!618402))

(assert (= (or b!6804456 bm!618401) bm!618403))

(assert (= (or b!6804449 b!6804456) bm!618405))

(assert (= (or b!6804449 bm!618403) bm!618406))

(declare-fun m!7550812 () Bool)

(assert (=> bm!618406 m!7550812))

(declare-fun m!7550814 () Bool)

(assert (=> b!6804451 m!7550814))

(declare-fun m!7550816 () Bool)

(assert (=> bm!618405 m!7550816))

(declare-fun m!7550818 () Bool)

(assert (=> bm!618402 m!7550818))

(declare-fun m!7550820 () Bool)

(assert (=> b!6804453 m!7550820))

(assert (=> bm!618134 d!2138381))

(declare-fun d!2138383 () Bool)

(declare-fun res!2780544 () Bool)

(declare-fun e!4106280 () Bool)

(assert (=> d!2138383 (=> res!2780544 e!4106280)))

(assert (=> d!2138383 (= res!2780544 ((_ is Nil!66045) (exprs!6507 setElem!46633)))))

(assert (=> d!2138383 (= (forall!15815 (exprs!6507 setElem!46633) lambda!383783) e!4106280)))

(declare-fun b!6804457 () Bool)

(declare-fun e!4106281 () Bool)

(assert (=> b!6804457 (= e!4106280 e!4106281)))

(declare-fun res!2780545 () Bool)

(assert (=> b!6804457 (=> (not res!2780545) (not e!4106281))))

(assert (=> b!6804457 (= res!2780545 (dynLambda!26380 lambda!383783 (h!72493 (exprs!6507 setElem!46633))))))

(declare-fun b!6804458 () Bool)

(assert (=> b!6804458 (= e!4106281 (forall!15815 (t!379900 (exprs!6507 setElem!46633)) lambda!383783))))

(assert (= (and d!2138383 (not res!2780544)) b!6804457))

(assert (= (and b!6804457 res!2780545) b!6804458))

(declare-fun b_lambda!256517 () Bool)

(assert (=> (not b_lambda!256517) (not b!6804457)))

(declare-fun m!7550822 () Bool)

(assert (=> b!6804457 m!7550822))

(declare-fun m!7550824 () Bool)

(assert (=> b!6804458 m!7550824))

(assert (=> d!2137537 d!2138383))

(declare-fun d!2138385 () Bool)

(declare-fun c!1265509 () Bool)

(assert (=> d!2138385 (= c!1265509 (isEmpty!38426 s!2326))))

(declare-fun e!4106282 () Bool)

(assert (=> d!2138385 (= (matchZipper!2609 (appendTo!228 lt!2448380 lt!2448396) s!2326) e!4106282)))

(declare-fun b!6804459 () Bool)

(assert (=> b!6804459 (= e!4106282 (nullableZipper!2329 (appendTo!228 lt!2448380 lt!2448396)))))

(declare-fun b!6804460 () Bool)

(assert (=> b!6804460 (= e!4106282 (matchZipper!2609 (derivationStepZipper!2567 (appendTo!228 lt!2448380 lt!2448396) (head!13655 s!2326)) (tail!12740 s!2326)))))

(assert (= (and d!2138385 c!1265509) b!6804459))

(assert (= (and d!2138385 (not c!1265509)) b!6804460))

(assert (=> d!2138385 m!7548460))

(assert (=> b!6804459 m!7548428))

(declare-fun m!7550826 () Bool)

(assert (=> b!6804459 m!7550826))

(assert (=> b!6804460 m!7548678))

(assert (=> b!6804460 m!7548428))

(assert (=> b!6804460 m!7548678))

(declare-fun m!7550828 () Bool)

(assert (=> b!6804460 m!7550828))

(assert (=> b!6804460 m!7548680))

(assert (=> b!6804460 m!7550828))

(assert (=> b!6804460 m!7548680))

(declare-fun m!7550830 () Bool)

(assert (=> b!6804460 m!7550830))

(assert (=> d!2137631 d!2138385))

(declare-fun d!2138387 () Bool)

(assert (=> d!2138387 (= (isDefined!13213 (findConcatSeparationZippers!232 lt!2448380 (store ((as const (Array Context!12014 Bool)) false) lt!2448396 true) Nil!66044 s!2326 s!2326)) (not (isEmpty!38430 (findConcatSeparationZippers!232 lt!2448380 (store ((as const (Array Context!12014 Bool)) false) lt!2448396 true) Nil!66044 s!2326 s!2326))))))

(declare-fun bs!1813954 () Bool)

(assert (= bs!1813954 d!2138387))

(assert (=> bs!1813954 m!7549180))

(declare-fun m!7550832 () Bool)

(assert (=> bs!1813954 m!7550832))

(assert (=> d!2137631 d!2138387))

(declare-fun b!6804461 () Bool)

(declare-fun e!4106286 () Option!16510)

(assert (=> b!6804461 (= e!4106286 None!16509)))

(declare-fun b!6804462 () Bool)

(declare-fun e!4106285 () Bool)

(declare-fun lt!2448655 () Option!16510)

(assert (=> b!6804462 (= e!4106285 (not (isDefined!13213 lt!2448655)))))

(declare-fun d!2138389 () Bool)

(assert (=> d!2138389 e!4106285))

(declare-fun res!2780547 () Bool)

(assert (=> d!2138389 (=> res!2780547 e!4106285)))

(declare-fun e!4106283 () Bool)

(assert (=> d!2138389 (= res!2780547 e!4106283)))

(declare-fun res!2780548 () Bool)

(assert (=> d!2138389 (=> (not res!2780548) (not e!4106283))))

(assert (=> d!2138389 (= res!2780548 (isDefined!13213 lt!2448655))))

(declare-fun e!4106284 () Option!16510)

(assert (=> d!2138389 (= lt!2448655 e!4106284)))

(declare-fun c!1265511 () Bool)

(declare-fun e!4106287 () Bool)

(assert (=> d!2138389 (= c!1265511 e!4106287)))

(declare-fun res!2780550 () Bool)

(assert (=> d!2138389 (=> (not res!2780550) (not e!4106287))))

(assert (=> d!2138389 (= res!2780550 (matchZipper!2609 lt!2448380 Nil!66044))))

(assert (=> d!2138389 (= (++!14792 Nil!66044 s!2326) s!2326)))

(assert (=> d!2138389 (= (findConcatSeparationZippers!232 lt!2448380 (store ((as const (Array Context!12014 Bool)) false) lt!2448396 true) Nil!66044 s!2326 s!2326) lt!2448655)))

(declare-fun b!6804463 () Bool)

(declare-fun res!2780549 () Bool)

(assert (=> b!6804463 (=> (not res!2780549) (not e!4106283))))

(assert (=> b!6804463 (= res!2780549 (matchZipper!2609 lt!2448380 (_1!36901 (get!23004 lt!2448655))))))

(declare-fun b!6804464 () Bool)

(assert (=> b!6804464 (= e!4106283 (= (++!14792 (_1!36901 (get!23004 lt!2448655)) (_2!36901 (get!23004 lt!2448655))) s!2326))))

(declare-fun b!6804465 () Bool)

(assert (=> b!6804465 (= e!4106287 (matchZipper!2609 (store ((as const (Array Context!12014 Bool)) false) lt!2448396 true) s!2326))))

(declare-fun b!6804466 () Bool)

(assert (=> b!6804466 (= e!4106284 (Some!16509 (tuple2!67197 Nil!66044 s!2326)))))

(declare-fun b!6804467 () Bool)

(declare-fun lt!2448654 () Unit!159937)

(declare-fun lt!2448656 () Unit!159937)

(assert (=> b!6804467 (= lt!2448654 lt!2448656)))

(assert (=> b!6804467 (= (++!14792 (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (t!379899 s!2326)) s!2326)))

(assert (=> b!6804467 (= lt!2448656 (lemmaMoveElementToOtherListKeepsConcatEq!2744 Nil!66044 (h!72492 s!2326) (t!379899 s!2326) s!2326))))

(assert (=> b!6804467 (= e!4106286 (findConcatSeparationZippers!232 lt!2448380 (store ((as const (Array Context!12014 Bool)) false) lt!2448396 true) (++!14792 Nil!66044 (Cons!66044 (h!72492 s!2326) Nil!66044)) (t!379899 s!2326) s!2326))))

(declare-fun b!6804468 () Bool)

(declare-fun res!2780546 () Bool)

(assert (=> b!6804468 (=> (not res!2780546) (not e!4106283))))

(assert (=> b!6804468 (= res!2780546 (matchZipper!2609 (store ((as const (Array Context!12014 Bool)) false) lt!2448396 true) (_2!36901 (get!23004 lt!2448655))))))

(declare-fun b!6804469 () Bool)

(assert (=> b!6804469 (= e!4106284 e!4106286)))

(declare-fun c!1265510 () Bool)

(assert (=> b!6804469 (= c!1265510 ((_ is Nil!66044) s!2326))))

(assert (= (and d!2138389 res!2780550) b!6804465))

(assert (= (and d!2138389 c!1265511) b!6804466))

(assert (= (and d!2138389 (not c!1265511)) b!6804469))

(assert (= (and b!6804469 c!1265510) b!6804461))

(assert (= (and b!6804469 (not c!1265510)) b!6804467))

(assert (= (and d!2138389 res!2780548) b!6804463))

(assert (= (and b!6804463 res!2780549) b!6804468))

(assert (= (and b!6804468 res!2780546) b!6804464))

(assert (= (and d!2138389 (not res!2780547)) b!6804462))

(assert (=> b!6804467 m!7549066))

(assert (=> b!6804467 m!7549066))

(assert (=> b!6804467 m!7549068))

(assert (=> b!6804467 m!7549070))

(assert (=> b!6804467 m!7548512))

(assert (=> b!6804467 m!7549066))

(declare-fun m!7550834 () Bool)

(assert (=> b!6804467 m!7550834))

(declare-fun m!7550836 () Bool)

(assert (=> d!2138389 m!7550836))

(assert (=> d!2138389 m!7549262))

(assert (=> d!2138389 m!7549264))

(declare-fun m!7550838 () Bool)

(assert (=> b!6804464 m!7550838))

(declare-fun m!7550840 () Bool)

(assert (=> b!6804464 m!7550840))

(assert (=> b!6804462 m!7550836))

(assert (=> b!6804468 m!7550838))

(assert (=> b!6804468 m!7548512))

(declare-fun m!7550842 () Bool)

(assert (=> b!6804468 m!7550842))

(assert (=> b!6804463 m!7550838))

(declare-fun m!7550844 () Bool)

(assert (=> b!6804463 m!7550844))

(assert (=> b!6804465 m!7548512))

(declare-fun m!7550846 () Bool)

(assert (=> b!6804465 m!7550846))

(assert (=> d!2137631 d!2138389))

(declare-fun d!2138391 () Bool)

(assert (=> d!2138391 (isDefined!13213 (findConcatSeparationZippers!232 lt!2448380 (store ((as const (Array Context!12014 Bool)) false) lt!2448396 true) Nil!66044 s!2326 s!2326))))

(assert (=> d!2138391 true))

(declare-fun _$50!512 () Unit!159937)

(assert (=> d!2138391 (= (choose!50730 lt!2448380 lt!2448396 s!2326) _$50!512)))

(declare-fun bs!1813955 () Bool)

(assert (= bs!1813955 d!2138391))

(assert (=> bs!1813955 m!7548512))

(assert (=> bs!1813955 m!7548512))

(assert (=> bs!1813955 m!7549180))

(assert (=> bs!1813955 m!7549180))

(assert (=> bs!1813955 m!7549182))

(assert (=> d!2137631 d!2138391))

(assert (=> d!2137631 d!2137489))

(declare-fun b!6804470 () Bool)

(declare-fun e!4106291 () Bool)

(declare-fun e!4106292 () Bool)

(assert (=> b!6804470 (= e!4106291 e!4106292)))

(declare-fun res!2780551 () Bool)

(assert (=> b!6804470 (=> (not res!2780551) (not e!4106292))))

(declare-fun call!618412 () Bool)

(assert (=> b!6804470 (= res!2780551 call!618412)))

(declare-fun b!6804471 () Bool)

(declare-fun e!4106288 () Bool)

(declare-fun e!4106290 () Bool)

(assert (=> b!6804471 (= e!4106288 e!4106290)))

(declare-fun c!1265512 () Bool)

(assert (=> b!6804471 (= c!1265512 ((_ is Union!16623) lt!2448427))))

(declare-fun d!2138393 () Bool)

(declare-fun res!2780555 () Bool)

(declare-fun e!4106294 () Bool)

(assert (=> d!2138393 (=> res!2780555 e!4106294)))

(assert (=> d!2138393 (= res!2780555 ((_ is ElementMatch!16623) lt!2448427))))

(assert (=> d!2138393 (= (validRegex!8359 lt!2448427) e!4106294)))

(declare-fun b!6804472 () Bool)

(declare-fun call!618414 () Bool)

(assert (=> b!6804472 (= e!4106292 call!618414)))

(declare-fun bm!618407 () Bool)

(declare-fun call!618413 () Bool)

(assert (=> bm!618407 (= call!618412 call!618413)))

(declare-fun b!6804473 () Bool)

(declare-fun e!4106289 () Bool)

(assert (=> b!6804473 (= e!4106289 call!618413)))

(declare-fun b!6804474 () Bool)

(assert (=> b!6804474 (= e!4106288 e!4106289)))

(declare-fun res!2780552 () Bool)

(assert (=> b!6804474 (= res!2780552 (not (nullable!6601 (reg!16952 lt!2448427))))))

(assert (=> b!6804474 (=> (not res!2780552) (not e!4106289))))

(declare-fun bm!618408 () Bool)

(declare-fun c!1265513 () Bool)

(assert (=> bm!618408 (= call!618413 (validRegex!8359 (ite c!1265513 (reg!16952 lt!2448427) (ite c!1265512 (regOne!33759 lt!2448427) (regOne!33758 lt!2448427)))))))

(declare-fun b!6804475 () Bool)

(declare-fun e!4106293 () Bool)

(assert (=> b!6804475 (= e!4106293 call!618414)))

(declare-fun b!6804476 () Bool)

(declare-fun res!2780554 () Bool)

(assert (=> b!6804476 (=> res!2780554 e!4106291)))

(assert (=> b!6804476 (= res!2780554 (not ((_ is Concat!25468) lt!2448427)))))

(assert (=> b!6804476 (= e!4106290 e!4106291)))

(declare-fun b!6804477 () Bool)

(assert (=> b!6804477 (= e!4106294 e!4106288)))

(assert (=> b!6804477 (= c!1265513 ((_ is Star!16623) lt!2448427))))

(declare-fun bm!618409 () Bool)

(assert (=> bm!618409 (= call!618414 (validRegex!8359 (ite c!1265512 (regTwo!33759 lt!2448427) (regTwo!33758 lt!2448427))))))

(declare-fun b!6804478 () Bool)

(declare-fun res!2780553 () Bool)

(assert (=> b!6804478 (=> (not res!2780553) (not e!4106293))))

(assert (=> b!6804478 (= res!2780553 call!618412)))

(assert (=> b!6804478 (= e!4106290 e!4106293)))

(assert (= (and d!2138393 (not res!2780555)) b!6804477))

(assert (= (and b!6804477 c!1265513) b!6804474))

(assert (= (and b!6804477 (not c!1265513)) b!6804471))

(assert (= (and b!6804474 res!2780552) b!6804473))

(assert (= (and b!6804471 c!1265512) b!6804478))

(assert (= (and b!6804471 (not c!1265512)) b!6804476))

(assert (= (and b!6804478 res!2780553) b!6804475))

(assert (= (and b!6804476 (not res!2780554)) b!6804470))

(assert (= (and b!6804470 res!2780551) b!6804472))

(assert (= (or b!6804475 b!6804472) bm!618409))

(assert (= (or b!6804478 b!6804470) bm!618407))

(assert (= (or b!6804473 bm!618407) bm!618408))

(declare-fun m!7550848 () Bool)

(assert (=> b!6804474 m!7550848))

(declare-fun m!7550850 () Bool)

(assert (=> bm!618408 m!7550850))

(declare-fun m!7550852 () Bool)

(assert (=> bm!618409 m!7550852))

(assert (=> d!2137441 d!2138393))

(declare-fun bs!1813956 () Bool)

(declare-fun d!2138395 () Bool)

(assert (= bs!1813956 (and d!2138395 d!2137569)))

(declare-fun lambda!383932 () Int)

(assert (=> bs!1813956 (= lambda!383932 lambda!383802)))

(declare-fun bs!1813957 () Bool)

(assert (= bs!1813957 (and d!2138395 d!2137669)))

(assert (=> bs!1813957 (= lambda!383932 lambda!383843)))

(declare-fun bs!1813958 () Bool)

(assert (= bs!1813958 (and d!2138395 b!6802233)))

(assert (=> bs!1813958 (= lambda!383932 lambda!383749)))

(declare-fun bs!1813959 () Bool)

(assert (= bs!1813959 (and d!2138395 d!2138179)))

(assert (=> bs!1813959 (= lambda!383932 lambda!383905)))

(declare-fun bs!1813960 () Bool)

(assert (= bs!1813960 (and d!2138395 d!2138077)))

(assert (=> bs!1813960 (= lambda!383932 lambda!383901)))

(declare-fun bs!1813961 () Bool)

(assert (= bs!1813961 (and d!2138395 d!2138211)))

(assert (=> bs!1813961 (= lambda!383932 lambda!383913)))

(declare-fun bs!1813962 () Bool)

(assert (= bs!1813962 (and d!2138395 d!2138215)))

(assert (=> bs!1813962 (= lambda!383932 lambda!383915)))

(declare-fun bs!1813963 () Bool)

(assert (= bs!1813963 (and d!2138395 d!2138225)))

(assert (=> bs!1813963 (= lambda!383932 lambda!383918)))

(declare-fun bs!1813964 () Bool)

(assert (= bs!1813964 (and d!2138395 d!2137547)))

(assert (=> bs!1813964 (= lambda!383932 lambda!383787)))

(declare-fun bs!1813965 () Bool)

(assert (= bs!1813965 (and d!2138395 d!2137557)))

(assert (=> bs!1813965 (= lambda!383932 lambda!383797)))

(declare-fun bs!1813966 () Bool)

(assert (= bs!1813966 (and d!2138395 d!2138331)))

(assert (=> bs!1813966 (= lambda!383932 lambda!383927)))

(declare-fun bs!1813967 () Bool)

(assert (= bs!1813967 (and d!2138395 d!2137533)))

(assert (=> bs!1813967 (= lambda!383932 lambda!383782)))

(declare-fun bs!1813968 () Bool)

(assert (= bs!1813968 (and d!2138395 d!2138333)))

(assert (=> bs!1813968 (= lambda!383932 lambda!383928)))

(declare-fun bs!1813969 () Bool)

(assert (= bs!1813969 (and d!2138395 d!2137537)))

(assert (=> bs!1813969 (= lambda!383932 lambda!383783)))

(declare-fun b!6804479 () Bool)

(declare-fun e!4106300 () Regex!16623)

(declare-fun e!4106297 () Regex!16623)

(assert (=> b!6804479 (= e!4106300 e!4106297)))

(declare-fun c!1265516 () Bool)

(assert (=> b!6804479 (= c!1265516 ((_ is Cons!66045) (unfocusZipperList!2044 (Cons!66046 lt!2448407 Nil!66046))))))

(declare-fun b!6804480 () Bool)

(declare-fun e!4106295 () Bool)

(declare-fun lt!2448657 () Regex!16623)

(assert (=> b!6804480 (= e!4106295 (isUnion!1418 lt!2448657))))

(declare-fun e!4106296 () Bool)

(assert (=> d!2138395 e!4106296))

(declare-fun res!2780557 () Bool)

(assert (=> d!2138395 (=> (not res!2780557) (not e!4106296))))

(assert (=> d!2138395 (= res!2780557 (validRegex!8359 lt!2448657))))

(assert (=> d!2138395 (= lt!2448657 e!4106300)))

(declare-fun c!1265517 () Bool)

(declare-fun e!4106298 () Bool)

(assert (=> d!2138395 (= c!1265517 e!4106298)))

(declare-fun res!2780556 () Bool)

(assert (=> d!2138395 (=> (not res!2780556) (not e!4106298))))

(assert (=> d!2138395 (= res!2780556 ((_ is Cons!66045) (unfocusZipperList!2044 (Cons!66046 lt!2448407 Nil!66046))))))

(assert (=> d!2138395 (forall!15815 (unfocusZipperList!2044 (Cons!66046 lt!2448407 Nil!66046)) lambda!383932)))

(assert (=> d!2138395 (= (generalisedUnion!2467 (unfocusZipperList!2044 (Cons!66046 lt!2448407 Nil!66046))) lt!2448657)))

(declare-fun b!6804481 () Bool)

(declare-fun e!4106299 () Bool)

(assert (=> b!6804481 (= e!4106296 e!4106299)))

(declare-fun c!1265514 () Bool)

(assert (=> b!6804481 (= c!1265514 (isEmpty!38428 (unfocusZipperList!2044 (Cons!66046 lt!2448407 Nil!66046))))))

(declare-fun b!6804482 () Bool)

(assert (=> b!6804482 (= e!4106299 (isEmptyLang!1988 lt!2448657))))

(declare-fun b!6804483 () Bool)

(assert (=> b!6804483 (= e!4106297 EmptyLang!16623)))

(declare-fun b!6804484 () Bool)

(assert (=> b!6804484 (= e!4106298 (isEmpty!38428 (t!379900 (unfocusZipperList!2044 (Cons!66046 lt!2448407 Nil!66046)))))))

(declare-fun b!6804485 () Bool)

(assert (=> b!6804485 (= e!4106297 (Union!16623 (h!72493 (unfocusZipperList!2044 (Cons!66046 lt!2448407 Nil!66046))) (generalisedUnion!2467 (t!379900 (unfocusZipperList!2044 (Cons!66046 lt!2448407 Nil!66046))))))))

(declare-fun b!6804486 () Bool)

(assert (=> b!6804486 (= e!4106295 (= lt!2448657 (head!13657 (unfocusZipperList!2044 (Cons!66046 lt!2448407 Nil!66046)))))))

(declare-fun b!6804487 () Bool)

(assert (=> b!6804487 (= e!4106299 e!4106295)))

(declare-fun c!1265515 () Bool)

(assert (=> b!6804487 (= c!1265515 (isEmpty!38428 (tail!12742 (unfocusZipperList!2044 (Cons!66046 lt!2448407 Nil!66046)))))))

(declare-fun b!6804488 () Bool)

(assert (=> b!6804488 (= e!4106300 (h!72493 (unfocusZipperList!2044 (Cons!66046 lt!2448407 Nil!66046))))))

(assert (= (and d!2138395 res!2780556) b!6804484))

(assert (= (and d!2138395 c!1265517) b!6804488))

(assert (= (and d!2138395 (not c!1265517)) b!6804479))

(assert (= (and b!6804479 c!1265516) b!6804485))

(assert (= (and b!6804479 (not c!1265516)) b!6804483))

(assert (= (and d!2138395 res!2780557) b!6804481))

(assert (= (and b!6804481 c!1265514) b!6804482))

(assert (= (and b!6804481 (not c!1265514)) b!6804487))

(assert (= (and b!6804487 c!1265515) b!6804486))

(assert (= (and b!6804487 (not c!1265515)) b!6804480))

(assert (=> b!6804487 m!7548622))

(declare-fun m!7550854 () Bool)

(assert (=> b!6804487 m!7550854))

(assert (=> b!6804487 m!7550854))

(declare-fun m!7550856 () Bool)

(assert (=> b!6804487 m!7550856))

(declare-fun m!7550858 () Bool)

(assert (=> d!2138395 m!7550858))

(assert (=> d!2138395 m!7548622))

(declare-fun m!7550860 () Bool)

(assert (=> d!2138395 m!7550860))

(assert (=> b!6804486 m!7548622))

(declare-fun m!7550862 () Bool)

(assert (=> b!6804486 m!7550862))

(declare-fun m!7550864 () Bool)

(assert (=> b!6804482 m!7550864))

(declare-fun m!7550866 () Bool)

(assert (=> b!6804485 m!7550866))

(declare-fun m!7550868 () Bool)

(assert (=> b!6804480 m!7550868))

(declare-fun m!7550870 () Bool)

(assert (=> b!6804484 m!7550870))

(assert (=> b!6804481 m!7548622))

(declare-fun m!7550872 () Bool)

(assert (=> b!6804481 m!7550872))

(assert (=> d!2137441 d!2138395))

(declare-fun bs!1813970 () Bool)

(declare-fun d!2138397 () Bool)

(assert (= bs!1813970 (and d!2138397 d!2137569)))

(declare-fun lambda!383933 () Int)

(assert (=> bs!1813970 (= lambda!383933 lambda!383802)))

(declare-fun bs!1813971 () Bool)

(assert (= bs!1813971 (and d!2138397 d!2137669)))

(assert (=> bs!1813971 (= lambda!383933 lambda!383843)))

(declare-fun bs!1813972 () Bool)

(assert (= bs!1813972 (and d!2138397 b!6802233)))

(assert (=> bs!1813972 (= lambda!383933 lambda!383749)))

(declare-fun bs!1813973 () Bool)

(assert (= bs!1813973 (and d!2138397 d!2138179)))

(assert (=> bs!1813973 (= lambda!383933 lambda!383905)))

(declare-fun bs!1813974 () Bool)

(assert (= bs!1813974 (and d!2138397 d!2138077)))

(assert (=> bs!1813974 (= lambda!383933 lambda!383901)))

(declare-fun bs!1813975 () Bool)

(assert (= bs!1813975 (and d!2138397 d!2138395)))

(assert (=> bs!1813975 (= lambda!383933 lambda!383932)))

(declare-fun bs!1813976 () Bool)

(assert (= bs!1813976 (and d!2138397 d!2138211)))

(assert (=> bs!1813976 (= lambda!383933 lambda!383913)))

(declare-fun bs!1813977 () Bool)

(assert (= bs!1813977 (and d!2138397 d!2138215)))

(assert (=> bs!1813977 (= lambda!383933 lambda!383915)))

(declare-fun bs!1813978 () Bool)

(assert (= bs!1813978 (and d!2138397 d!2138225)))

(assert (=> bs!1813978 (= lambda!383933 lambda!383918)))

(declare-fun bs!1813979 () Bool)

(assert (= bs!1813979 (and d!2138397 d!2137547)))

(assert (=> bs!1813979 (= lambda!383933 lambda!383787)))

(declare-fun bs!1813980 () Bool)

(assert (= bs!1813980 (and d!2138397 d!2137557)))

(assert (=> bs!1813980 (= lambda!383933 lambda!383797)))

(declare-fun bs!1813981 () Bool)

(assert (= bs!1813981 (and d!2138397 d!2138331)))

(assert (=> bs!1813981 (= lambda!383933 lambda!383927)))

(declare-fun bs!1813982 () Bool)

(assert (= bs!1813982 (and d!2138397 d!2137533)))

(assert (=> bs!1813982 (= lambda!383933 lambda!383782)))

(declare-fun bs!1813983 () Bool)

(assert (= bs!1813983 (and d!2138397 d!2138333)))

(assert (=> bs!1813983 (= lambda!383933 lambda!383928)))

(declare-fun bs!1813984 () Bool)

(assert (= bs!1813984 (and d!2138397 d!2137537)))

(assert (=> bs!1813984 (= lambda!383933 lambda!383783)))

(declare-fun lt!2448658 () List!66169)

(assert (=> d!2138397 (forall!15815 lt!2448658 lambda!383933)))

(declare-fun e!4106301 () List!66169)

(assert (=> d!2138397 (= lt!2448658 e!4106301)))

(declare-fun c!1265518 () Bool)

(assert (=> d!2138397 (= c!1265518 ((_ is Cons!66046) (Cons!66046 lt!2448407 Nil!66046)))))

(assert (=> d!2138397 (= (unfocusZipperList!2044 (Cons!66046 lt!2448407 Nil!66046)) lt!2448658)))

(declare-fun b!6804489 () Bool)

(assert (=> b!6804489 (= e!4106301 (Cons!66045 (generalisedConcat!2220 (exprs!6507 (h!72494 (Cons!66046 lt!2448407 Nil!66046)))) (unfocusZipperList!2044 (t!379901 (Cons!66046 lt!2448407 Nil!66046)))))))

(declare-fun b!6804490 () Bool)

(assert (=> b!6804490 (= e!4106301 Nil!66045)))

(assert (= (and d!2138397 c!1265518) b!6804489))

(assert (= (and d!2138397 (not c!1265518)) b!6804490))

(declare-fun m!7550874 () Bool)

(assert (=> d!2138397 m!7550874))

(declare-fun m!7550876 () Bool)

(assert (=> b!6804489 m!7550876))

(declare-fun m!7550878 () Bool)

(assert (=> b!6804489 m!7550878))

(assert (=> d!2137441 d!2138397))

(assert (=> d!2137429 d!2137425))

(declare-fun d!2138399 () Bool)

(assert (=> d!2138399 (= (flatMap!2104 z!1189 lambda!383747) (dynLambda!26375 lambda!383747 (h!72494 zl!343)))))

(assert (=> d!2138399 true))

(declare-fun _$13!4289 () Unit!159937)

(assert (=> d!2138399 (= (choose!50710 z!1189 (h!72494 zl!343) lambda!383747) _$13!4289)))

(declare-fun b_lambda!256519 () Bool)

(assert (=> (not b_lambda!256519) (not d!2138399)))

(declare-fun bs!1813985 () Bool)

(assert (= bs!1813985 d!2138399))

(assert (=> bs!1813985 m!7548526))

(assert (=> bs!1813985 m!7548570))

(assert (=> d!2137429 d!2138399))

(declare-fun d!2138401 () Bool)

(assert (=> d!2138401 (= (isEmpty!38428 (tail!12742 (exprs!6507 (h!72494 zl!343)))) ((_ is Nil!66045) (tail!12742 (exprs!6507 (h!72494 zl!343)))))))

(assert (=> b!6802671 d!2138401))

(declare-fun d!2138403 () Bool)

(assert (=> d!2138403 (= (tail!12742 (exprs!6507 (h!72494 zl!343))) (t!379900 (exprs!6507 (h!72494 zl!343))))))

(assert (=> b!6802671 d!2138403))

(assert (=> b!6802939 d!2137947))

(declare-fun d!2138405 () Bool)

(assert (=> d!2138405 (= (map!15095 lt!2448380 lambda!383774) (choose!50714 lt!2448380 lambda!383774))))

(declare-fun bs!1813986 () Bool)

(assert (= bs!1813986 d!2138405))

(declare-fun m!7550880 () Bool)

(assert (=> bs!1813986 m!7550880))

(assert (=> d!2137489 d!2138405))

(assert (=> bs!1813279 d!2137475))

(assert (=> b!6802432 d!2137973))

(assert (=> b!6802432 d!2137977))

(declare-fun b!6804491 () Bool)

(declare-fun e!4106305 () Bool)

(declare-fun e!4106306 () Bool)

(assert (=> b!6804491 (= e!4106305 e!4106306)))

(declare-fun res!2780558 () Bool)

(assert (=> b!6804491 (=> (not res!2780558) (not e!4106306))))

(declare-fun call!618415 () Bool)

(assert (=> b!6804491 (= res!2780558 call!618415)))

(declare-fun b!6804492 () Bool)

(declare-fun e!4106302 () Bool)

(declare-fun e!4106304 () Bool)

(assert (=> b!6804492 (= e!4106302 e!4106304)))

(declare-fun c!1265519 () Bool)

(assert (=> b!6804492 (= c!1265519 ((_ is Union!16623) lt!2448426))))

(declare-fun d!2138407 () Bool)

(declare-fun res!2780562 () Bool)

(declare-fun e!4106308 () Bool)

(assert (=> d!2138407 (=> res!2780562 e!4106308)))

(assert (=> d!2138407 (= res!2780562 ((_ is ElementMatch!16623) lt!2448426))))

(assert (=> d!2138407 (= (validRegex!8359 lt!2448426) e!4106308)))

(declare-fun b!6804493 () Bool)

(declare-fun call!618417 () Bool)

(assert (=> b!6804493 (= e!4106306 call!618417)))

(declare-fun bm!618410 () Bool)

(declare-fun call!618416 () Bool)

(assert (=> bm!618410 (= call!618415 call!618416)))

(declare-fun b!6804494 () Bool)

(declare-fun e!4106303 () Bool)

(assert (=> b!6804494 (= e!4106303 call!618416)))

(declare-fun b!6804495 () Bool)

(assert (=> b!6804495 (= e!4106302 e!4106303)))

(declare-fun res!2780559 () Bool)

(assert (=> b!6804495 (= res!2780559 (not (nullable!6601 (reg!16952 lt!2448426))))))

(assert (=> b!6804495 (=> (not res!2780559) (not e!4106303))))

(declare-fun c!1265520 () Bool)

(declare-fun bm!618411 () Bool)

(assert (=> bm!618411 (= call!618416 (validRegex!8359 (ite c!1265520 (reg!16952 lt!2448426) (ite c!1265519 (regOne!33759 lt!2448426) (regOne!33758 lt!2448426)))))))

(declare-fun b!6804496 () Bool)

(declare-fun e!4106307 () Bool)

(assert (=> b!6804496 (= e!4106307 call!618417)))

(declare-fun b!6804497 () Bool)

(declare-fun res!2780561 () Bool)

(assert (=> b!6804497 (=> res!2780561 e!4106305)))

(assert (=> b!6804497 (= res!2780561 (not ((_ is Concat!25468) lt!2448426)))))

(assert (=> b!6804497 (= e!4106304 e!4106305)))

(declare-fun b!6804498 () Bool)

(assert (=> b!6804498 (= e!4106308 e!4106302)))

(assert (=> b!6804498 (= c!1265520 ((_ is Star!16623) lt!2448426))))

(declare-fun bm!618412 () Bool)

(assert (=> bm!618412 (= call!618417 (validRegex!8359 (ite c!1265519 (regTwo!33759 lt!2448426) (regTwo!33758 lt!2448426))))))

(declare-fun b!6804499 () Bool)

(declare-fun res!2780560 () Bool)

(assert (=> b!6804499 (=> (not res!2780560) (not e!4106307))))

(assert (=> b!6804499 (= res!2780560 call!618415)))

(assert (=> b!6804499 (= e!4106304 e!4106307)))

(assert (= (and d!2138407 (not res!2780562)) b!6804498))

(assert (= (and b!6804498 c!1265520) b!6804495))

(assert (= (and b!6804498 (not c!1265520)) b!6804492))

(assert (= (and b!6804495 res!2780559) b!6804494))

(assert (= (and b!6804492 c!1265519) b!6804499))

(assert (= (and b!6804492 (not c!1265519)) b!6804497))

(assert (= (and b!6804499 res!2780560) b!6804496))

(assert (= (and b!6804497 (not res!2780561)) b!6804491))

(assert (= (and b!6804491 res!2780558) b!6804493))

(assert (= (or b!6804496 b!6804493) bm!618412))

(assert (= (or b!6804499 b!6804491) bm!618410))

(assert (= (or b!6804494 bm!618410) bm!618411))

(declare-fun m!7550882 () Bool)

(assert (=> b!6804495 m!7550882))

(declare-fun m!7550884 () Bool)

(assert (=> bm!618411 m!7550884))

(declare-fun m!7550886 () Bool)

(assert (=> bm!618412 m!7550886))

(assert (=> d!2137437 d!2138407))

(declare-fun bs!1813987 () Bool)

(declare-fun d!2138409 () Bool)

(assert (= bs!1813987 (and d!2138409 d!2137569)))

(declare-fun lambda!383934 () Int)

(assert (=> bs!1813987 (= lambda!383934 lambda!383802)))

(declare-fun bs!1813988 () Bool)

(assert (= bs!1813988 (and d!2138409 d!2137669)))

(assert (=> bs!1813988 (= lambda!383934 lambda!383843)))

(declare-fun bs!1813989 () Bool)

(assert (= bs!1813989 (and d!2138409 b!6802233)))

(assert (=> bs!1813989 (= lambda!383934 lambda!383749)))

(declare-fun bs!1813990 () Bool)

(assert (= bs!1813990 (and d!2138409 d!2138179)))

(assert (=> bs!1813990 (= lambda!383934 lambda!383905)))

(declare-fun bs!1813991 () Bool)

(assert (= bs!1813991 (and d!2138409 d!2138077)))

(assert (=> bs!1813991 (= lambda!383934 lambda!383901)))

(declare-fun bs!1813992 () Bool)

(assert (= bs!1813992 (and d!2138409 d!2138395)))

(assert (=> bs!1813992 (= lambda!383934 lambda!383932)))

(declare-fun bs!1813993 () Bool)

(assert (= bs!1813993 (and d!2138409 d!2138397)))

(assert (=> bs!1813993 (= lambda!383934 lambda!383933)))

(declare-fun bs!1813994 () Bool)

(assert (= bs!1813994 (and d!2138409 d!2138211)))

(assert (=> bs!1813994 (= lambda!383934 lambda!383913)))

(declare-fun bs!1813995 () Bool)

(assert (= bs!1813995 (and d!2138409 d!2138215)))

(assert (=> bs!1813995 (= lambda!383934 lambda!383915)))

(declare-fun bs!1813996 () Bool)

(assert (= bs!1813996 (and d!2138409 d!2138225)))

(assert (=> bs!1813996 (= lambda!383934 lambda!383918)))

(declare-fun bs!1813997 () Bool)

(assert (= bs!1813997 (and d!2138409 d!2137547)))

(assert (=> bs!1813997 (= lambda!383934 lambda!383787)))

(declare-fun bs!1813998 () Bool)

(assert (= bs!1813998 (and d!2138409 d!2137557)))

(assert (=> bs!1813998 (= lambda!383934 lambda!383797)))

(declare-fun bs!1813999 () Bool)

(assert (= bs!1813999 (and d!2138409 d!2138331)))

(assert (=> bs!1813999 (= lambda!383934 lambda!383927)))

(declare-fun bs!1814000 () Bool)

(assert (= bs!1814000 (and d!2138409 d!2137533)))

(assert (=> bs!1814000 (= lambda!383934 lambda!383782)))

(declare-fun bs!1814001 () Bool)

(assert (= bs!1814001 (and d!2138409 d!2138333)))

(assert (=> bs!1814001 (= lambda!383934 lambda!383928)))

(declare-fun bs!1814002 () Bool)

(assert (= bs!1814002 (and d!2138409 d!2137537)))

(assert (=> bs!1814002 (= lambda!383934 lambda!383783)))

(declare-fun b!6804500 () Bool)

(declare-fun e!4106314 () Regex!16623)

(declare-fun e!4106311 () Regex!16623)

(assert (=> b!6804500 (= e!4106314 e!4106311)))

(declare-fun c!1265523 () Bool)

(assert (=> b!6804500 (= c!1265523 ((_ is Cons!66045) (unfocusZipperList!2044 (Cons!66046 lt!2448400 Nil!66046))))))

(declare-fun b!6804501 () Bool)

(declare-fun e!4106309 () Bool)

(declare-fun lt!2448659 () Regex!16623)

(assert (=> b!6804501 (= e!4106309 (isUnion!1418 lt!2448659))))

(declare-fun e!4106310 () Bool)

(assert (=> d!2138409 e!4106310))

(declare-fun res!2780564 () Bool)

(assert (=> d!2138409 (=> (not res!2780564) (not e!4106310))))

(assert (=> d!2138409 (= res!2780564 (validRegex!8359 lt!2448659))))

(assert (=> d!2138409 (= lt!2448659 e!4106314)))

(declare-fun c!1265524 () Bool)

(declare-fun e!4106312 () Bool)

(assert (=> d!2138409 (= c!1265524 e!4106312)))

(declare-fun res!2780563 () Bool)

(assert (=> d!2138409 (=> (not res!2780563) (not e!4106312))))

(assert (=> d!2138409 (= res!2780563 ((_ is Cons!66045) (unfocusZipperList!2044 (Cons!66046 lt!2448400 Nil!66046))))))

(assert (=> d!2138409 (forall!15815 (unfocusZipperList!2044 (Cons!66046 lt!2448400 Nil!66046)) lambda!383934)))

(assert (=> d!2138409 (= (generalisedUnion!2467 (unfocusZipperList!2044 (Cons!66046 lt!2448400 Nil!66046))) lt!2448659)))

(declare-fun b!6804502 () Bool)

(declare-fun e!4106313 () Bool)

(assert (=> b!6804502 (= e!4106310 e!4106313)))

(declare-fun c!1265521 () Bool)

(assert (=> b!6804502 (= c!1265521 (isEmpty!38428 (unfocusZipperList!2044 (Cons!66046 lt!2448400 Nil!66046))))))

(declare-fun b!6804503 () Bool)

(assert (=> b!6804503 (= e!4106313 (isEmptyLang!1988 lt!2448659))))

(declare-fun b!6804504 () Bool)

(assert (=> b!6804504 (= e!4106311 EmptyLang!16623)))

(declare-fun b!6804505 () Bool)

(assert (=> b!6804505 (= e!4106312 (isEmpty!38428 (t!379900 (unfocusZipperList!2044 (Cons!66046 lt!2448400 Nil!66046)))))))

(declare-fun b!6804506 () Bool)

(assert (=> b!6804506 (= e!4106311 (Union!16623 (h!72493 (unfocusZipperList!2044 (Cons!66046 lt!2448400 Nil!66046))) (generalisedUnion!2467 (t!379900 (unfocusZipperList!2044 (Cons!66046 lt!2448400 Nil!66046))))))))

(declare-fun b!6804507 () Bool)

(assert (=> b!6804507 (= e!4106309 (= lt!2448659 (head!13657 (unfocusZipperList!2044 (Cons!66046 lt!2448400 Nil!66046)))))))

(declare-fun b!6804508 () Bool)

(assert (=> b!6804508 (= e!4106313 e!4106309)))

(declare-fun c!1265522 () Bool)

(assert (=> b!6804508 (= c!1265522 (isEmpty!38428 (tail!12742 (unfocusZipperList!2044 (Cons!66046 lt!2448400 Nil!66046)))))))

(declare-fun b!6804509 () Bool)

(assert (=> b!6804509 (= e!4106314 (h!72493 (unfocusZipperList!2044 (Cons!66046 lt!2448400 Nil!66046))))))

(assert (= (and d!2138409 res!2780563) b!6804505))

(assert (= (and d!2138409 c!1265524) b!6804509))

(assert (= (and d!2138409 (not c!1265524)) b!6804500))

(assert (= (and b!6804500 c!1265523) b!6804506))

(assert (= (and b!6804500 (not c!1265523)) b!6804504))

(assert (= (and d!2138409 res!2780564) b!6804502))

(assert (= (and b!6804502 c!1265521) b!6804503))

(assert (= (and b!6804502 (not c!1265521)) b!6804508))

(assert (= (and b!6804508 c!1265522) b!6804507))

(assert (= (and b!6804508 (not c!1265522)) b!6804501))

(assert (=> b!6804508 m!7548616))

(declare-fun m!7550888 () Bool)

(assert (=> b!6804508 m!7550888))

(assert (=> b!6804508 m!7550888))

(declare-fun m!7550890 () Bool)

(assert (=> b!6804508 m!7550890))

(declare-fun m!7550892 () Bool)

(assert (=> d!2138409 m!7550892))

(assert (=> d!2138409 m!7548616))

(declare-fun m!7550894 () Bool)

(assert (=> d!2138409 m!7550894))

(assert (=> b!6804507 m!7548616))

(declare-fun m!7550896 () Bool)

(assert (=> b!6804507 m!7550896))

(declare-fun m!7550898 () Bool)

(assert (=> b!6804503 m!7550898))

(declare-fun m!7550900 () Bool)

(assert (=> b!6804506 m!7550900))

(declare-fun m!7550902 () Bool)

(assert (=> b!6804501 m!7550902))

(declare-fun m!7550904 () Bool)

(assert (=> b!6804505 m!7550904))

(assert (=> b!6804502 m!7548616))

(declare-fun m!7550906 () Bool)

(assert (=> b!6804502 m!7550906))

(assert (=> d!2137437 d!2138409))

(declare-fun bs!1814003 () Bool)

(declare-fun d!2138411 () Bool)

(assert (= bs!1814003 (and d!2138411 d!2137569)))

(declare-fun lambda!383935 () Int)

(assert (=> bs!1814003 (= lambda!383935 lambda!383802)))

(declare-fun bs!1814004 () Bool)

(assert (= bs!1814004 (and d!2138411 d!2137669)))

(assert (=> bs!1814004 (= lambda!383935 lambda!383843)))

(declare-fun bs!1814005 () Bool)

(assert (= bs!1814005 (and d!2138411 d!2138179)))

(assert (=> bs!1814005 (= lambda!383935 lambda!383905)))

(declare-fun bs!1814006 () Bool)

(assert (= bs!1814006 (and d!2138411 d!2138077)))

(assert (=> bs!1814006 (= lambda!383935 lambda!383901)))

(declare-fun bs!1814007 () Bool)

(assert (= bs!1814007 (and d!2138411 d!2138395)))

(assert (=> bs!1814007 (= lambda!383935 lambda!383932)))

(declare-fun bs!1814008 () Bool)

(assert (= bs!1814008 (and d!2138411 d!2138397)))

(assert (=> bs!1814008 (= lambda!383935 lambda!383933)))

(declare-fun bs!1814009 () Bool)

(assert (= bs!1814009 (and d!2138411 d!2138211)))

(assert (=> bs!1814009 (= lambda!383935 lambda!383913)))

(declare-fun bs!1814010 () Bool)

(assert (= bs!1814010 (and d!2138411 d!2138215)))

(assert (=> bs!1814010 (= lambda!383935 lambda!383915)))

(declare-fun bs!1814011 () Bool)

(assert (= bs!1814011 (and d!2138411 d!2138225)))

(assert (=> bs!1814011 (= lambda!383935 lambda!383918)))

(declare-fun bs!1814012 () Bool)

(assert (= bs!1814012 (and d!2138411 d!2137547)))

(assert (=> bs!1814012 (= lambda!383935 lambda!383787)))

(declare-fun bs!1814013 () Bool)

(assert (= bs!1814013 (and d!2138411 d!2137557)))

(assert (=> bs!1814013 (= lambda!383935 lambda!383797)))

(declare-fun bs!1814014 () Bool)

(assert (= bs!1814014 (and d!2138411 d!2138409)))

(assert (=> bs!1814014 (= lambda!383935 lambda!383934)))

(declare-fun bs!1814015 () Bool)

(assert (= bs!1814015 (and d!2138411 b!6802233)))

(assert (=> bs!1814015 (= lambda!383935 lambda!383749)))

(declare-fun bs!1814016 () Bool)

(assert (= bs!1814016 (and d!2138411 d!2138331)))

(assert (=> bs!1814016 (= lambda!383935 lambda!383927)))

(declare-fun bs!1814017 () Bool)

(assert (= bs!1814017 (and d!2138411 d!2137533)))

(assert (=> bs!1814017 (= lambda!383935 lambda!383782)))

(declare-fun bs!1814018 () Bool)

(assert (= bs!1814018 (and d!2138411 d!2138333)))

(assert (=> bs!1814018 (= lambda!383935 lambda!383928)))

(declare-fun bs!1814019 () Bool)

(assert (= bs!1814019 (and d!2138411 d!2137537)))

(assert (=> bs!1814019 (= lambda!383935 lambda!383783)))

(declare-fun lt!2448660 () List!66169)

(assert (=> d!2138411 (forall!15815 lt!2448660 lambda!383935)))

(declare-fun e!4106315 () List!66169)

(assert (=> d!2138411 (= lt!2448660 e!4106315)))

(declare-fun c!1265525 () Bool)

(assert (=> d!2138411 (= c!1265525 ((_ is Cons!66046) (Cons!66046 lt!2448400 Nil!66046)))))

(assert (=> d!2138411 (= (unfocusZipperList!2044 (Cons!66046 lt!2448400 Nil!66046)) lt!2448660)))

(declare-fun b!6804510 () Bool)

(assert (=> b!6804510 (= e!4106315 (Cons!66045 (generalisedConcat!2220 (exprs!6507 (h!72494 (Cons!66046 lt!2448400 Nil!66046)))) (unfocusZipperList!2044 (t!379901 (Cons!66046 lt!2448400 Nil!66046)))))))

(declare-fun b!6804511 () Bool)

(assert (=> b!6804511 (= e!4106315 Nil!66045)))

(assert (= (and d!2138411 c!1265525) b!6804510))

(assert (= (and d!2138411 (not c!1265525)) b!6804511))

(declare-fun m!7550908 () Bool)

(assert (=> d!2138411 m!7550908))

(declare-fun m!7550910 () Bool)

(assert (=> b!6804510 m!7550910))

(declare-fun m!7550912 () Bool)

(assert (=> b!6804510 m!7550912))

(assert (=> d!2137437 d!2138411))

(declare-fun b!6804515 () Bool)

(declare-fun e!4106316 () Bool)

(declare-fun tp!1862605 () Bool)

(declare-fun tp!1862604 () Bool)

(assert (=> b!6804515 (= e!4106316 (and tp!1862605 tp!1862604))))

(declare-fun b!6804513 () Bool)

(declare-fun tp!1862608 () Bool)

(declare-fun tp!1862607 () Bool)

(assert (=> b!6804513 (= e!4106316 (and tp!1862608 tp!1862607))))

(declare-fun b!6804512 () Bool)

(assert (=> b!6804512 (= e!4106316 tp_is_empty!42499)))

(assert (=> b!6803123 (= tp!1862369 e!4106316)))

(declare-fun b!6804514 () Bool)

(declare-fun tp!1862606 () Bool)

(assert (=> b!6804514 (= e!4106316 tp!1862606)))

(assert (= (and b!6803123 ((_ is ElementMatch!16623) (regOne!33758 (regTwo!33758 r!7292)))) b!6804512))

(assert (= (and b!6803123 ((_ is Concat!25468) (regOne!33758 (regTwo!33758 r!7292)))) b!6804513))

(assert (= (and b!6803123 ((_ is Star!16623) (regOne!33758 (regTwo!33758 r!7292)))) b!6804514))

(assert (= (and b!6803123 ((_ is Union!16623) (regOne!33758 (regTwo!33758 r!7292)))) b!6804515))

(declare-fun b!6804519 () Bool)

(declare-fun e!4106317 () Bool)

(declare-fun tp!1862610 () Bool)

(declare-fun tp!1862609 () Bool)

(assert (=> b!6804519 (= e!4106317 (and tp!1862610 tp!1862609))))

(declare-fun b!6804517 () Bool)

(declare-fun tp!1862613 () Bool)

(declare-fun tp!1862612 () Bool)

(assert (=> b!6804517 (= e!4106317 (and tp!1862613 tp!1862612))))

(declare-fun b!6804516 () Bool)

(assert (=> b!6804516 (= e!4106317 tp_is_empty!42499)))

(assert (=> b!6803123 (= tp!1862368 e!4106317)))

(declare-fun b!6804518 () Bool)

(declare-fun tp!1862611 () Bool)

(assert (=> b!6804518 (= e!4106317 tp!1862611)))

(assert (= (and b!6803123 ((_ is ElementMatch!16623) (regTwo!33758 (regTwo!33758 r!7292)))) b!6804516))

(assert (= (and b!6803123 ((_ is Concat!25468) (regTwo!33758 (regTwo!33758 r!7292)))) b!6804517))

(assert (= (and b!6803123 ((_ is Star!16623) (regTwo!33758 (regTwo!33758 r!7292)))) b!6804518))

(assert (= (and b!6803123 ((_ is Union!16623) (regTwo!33758 (regTwo!33758 r!7292)))) b!6804519))

(declare-fun b!6804523 () Bool)

(declare-fun e!4106318 () Bool)

(declare-fun tp!1862615 () Bool)

(declare-fun tp!1862614 () Bool)

(assert (=> b!6804523 (= e!4106318 (and tp!1862615 tp!1862614))))

(declare-fun b!6804521 () Bool)

(declare-fun tp!1862618 () Bool)

(declare-fun tp!1862617 () Bool)

(assert (=> b!6804521 (= e!4106318 (and tp!1862618 tp!1862617))))

(declare-fun b!6804520 () Bool)

(assert (=> b!6804520 (= e!4106318 tp_is_empty!42499)))

(assert (=> b!6803124 (= tp!1862367 e!4106318)))

(declare-fun b!6804522 () Bool)

(declare-fun tp!1862616 () Bool)

(assert (=> b!6804522 (= e!4106318 tp!1862616)))

(assert (= (and b!6803124 ((_ is ElementMatch!16623) (reg!16952 (regTwo!33758 r!7292)))) b!6804520))

(assert (= (and b!6803124 ((_ is Concat!25468) (reg!16952 (regTwo!33758 r!7292)))) b!6804521))

(assert (= (and b!6803124 ((_ is Star!16623) (reg!16952 (regTwo!33758 r!7292)))) b!6804522))

(assert (= (and b!6803124 ((_ is Union!16623) (reg!16952 (regTwo!33758 r!7292)))) b!6804523))

(declare-fun b!6804527 () Bool)

(declare-fun e!4106319 () Bool)

(declare-fun tp!1862620 () Bool)

(declare-fun tp!1862619 () Bool)

(assert (=> b!6804527 (= e!4106319 (and tp!1862620 tp!1862619))))

(declare-fun b!6804525 () Bool)

(declare-fun tp!1862623 () Bool)

(declare-fun tp!1862622 () Bool)

(assert (=> b!6804525 (= e!4106319 (and tp!1862623 tp!1862622))))

(declare-fun b!6804524 () Bool)

(assert (=> b!6804524 (= e!4106319 tp_is_empty!42499)))

(assert (=> b!6803160 (= tp!1862404 e!4106319)))

(declare-fun b!6804526 () Bool)

(declare-fun tp!1862621 () Bool)

(assert (=> b!6804526 (= e!4106319 tp!1862621)))

(assert (= (and b!6803160 ((_ is ElementMatch!16623) (h!72493 (exprs!6507 (h!72494 zl!343))))) b!6804524))

(assert (= (and b!6803160 ((_ is Concat!25468) (h!72493 (exprs!6507 (h!72494 zl!343))))) b!6804525))

(assert (= (and b!6803160 ((_ is Star!16623) (h!72493 (exprs!6507 (h!72494 zl!343))))) b!6804526))

(assert (= (and b!6803160 ((_ is Union!16623) (h!72493 (exprs!6507 (h!72494 zl!343))))) b!6804527))

(declare-fun b!6804528 () Bool)

(declare-fun e!4106320 () Bool)

(declare-fun tp!1862624 () Bool)

(declare-fun tp!1862625 () Bool)

(assert (=> b!6804528 (= e!4106320 (and tp!1862624 tp!1862625))))

(assert (=> b!6803160 (= tp!1862405 e!4106320)))

(assert (= (and b!6803160 ((_ is Cons!66045) (t!379900 (exprs!6507 (h!72494 zl!343))))) b!6804528))

(declare-fun b!6804532 () Bool)

(declare-fun e!4106321 () Bool)

(declare-fun tp!1862627 () Bool)

(declare-fun tp!1862626 () Bool)

(assert (=> b!6804532 (= e!4106321 (and tp!1862627 tp!1862626))))

(declare-fun b!6804530 () Bool)

(declare-fun tp!1862630 () Bool)

(declare-fun tp!1862629 () Bool)

(assert (=> b!6804530 (= e!4106321 (and tp!1862630 tp!1862629))))

(declare-fun b!6804529 () Bool)

(assert (=> b!6804529 (= e!4106321 tp_is_empty!42499)))

(assert (=> b!6803120 (= tp!1862362 e!4106321)))

(declare-fun b!6804531 () Bool)

(declare-fun tp!1862628 () Bool)

(assert (=> b!6804531 (= e!4106321 tp!1862628)))

(assert (= (and b!6803120 ((_ is ElementMatch!16623) (reg!16952 (regOne!33758 r!7292)))) b!6804529))

(assert (= (and b!6803120 ((_ is Concat!25468) (reg!16952 (regOne!33758 r!7292)))) b!6804530))

(assert (= (and b!6803120 ((_ is Star!16623) (reg!16952 (regOne!33758 r!7292)))) b!6804531))

(assert (= (and b!6803120 ((_ is Union!16623) (reg!16952 (regOne!33758 r!7292)))) b!6804532))

(declare-fun b!6804536 () Bool)

(declare-fun e!4106322 () Bool)

(declare-fun tp!1862632 () Bool)

(declare-fun tp!1862631 () Bool)

(assert (=> b!6804536 (= e!4106322 (and tp!1862632 tp!1862631))))

(declare-fun b!6804534 () Bool)

(declare-fun tp!1862635 () Bool)

(declare-fun tp!1862634 () Bool)

(assert (=> b!6804534 (= e!4106322 (and tp!1862635 tp!1862634))))

(declare-fun b!6804533 () Bool)

(assert (=> b!6804533 (= e!4106322 tp_is_empty!42499)))

(assert (=> b!6803121 (= tp!1862361 e!4106322)))

(declare-fun b!6804535 () Bool)

(declare-fun tp!1862633 () Bool)

(assert (=> b!6804535 (= e!4106322 tp!1862633)))

(assert (= (and b!6803121 ((_ is ElementMatch!16623) (regOne!33759 (regOne!33758 r!7292)))) b!6804533))

(assert (= (and b!6803121 ((_ is Concat!25468) (regOne!33759 (regOne!33758 r!7292)))) b!6804534))

(assert (= (and b!6803121 ((_ is Star!16623) (regOne!33759 (regOne!33758 r!7292)))) b!6804535))

(assert (= (and b!6803121 ((_ is Union!16623) (regOne!33759 (regOne!33758 r!7292)))) b!6804536))

(declare-fun b!6804540 () Bool)

(declare-fun e!4106323 () Bool)

(declare-fun tp!1862637 () Bool)

(declare-fun tp!1862636 () Bool)

(assert (=> b!6804540 (= e!4106323 (and tp!1862637 tp!1862636))))

(declare-fun b!6804538 () Bool)

(declare-fun tp!1862640 () Bool)

(declare-fun tp!1862639 () Bool)

(assert (=> b!6804538 (= e!4106323 (and tp!1862640 tp!1862639))))

(declare-fun b!6804537 () Bool)

(assert (=> b!6804537 (= e!4106323 tp_is_empty!42499)))

(assert (=> b!6803121 (= tp!1862360 e!4106323)))

(declare-fun b!6804539 () Bool)

(declare-fun tp!1862638 () Bool)

(assert (=> b!6804539 (= e!4106323 tp!1862638)))

(assert (= (and b!6803121 ((_ is ElementMatch!16623) (regTwo!33759 (regOne!33758 r!7292)))) b!6804537))

(assert (= (and b!6803121 ((_ is Concat!25468) (regTwo!33759 (regOne!33758 r!7292)))) b!6804538))

(assert (= (and b!6803121 ((_ is Star!16623) (regTwo!33759 (regOne!33758 r!7292)))) b!6804539))

(assert (= (and b!6803121 ((_ is Union!16623) (regTwo!33759 (regOne!33758 r!7292)))) b!6804540))

(declare-fun b!6804544 () Bool)

(declare-fun e!4106324 () Bool)

(declare-fun tp!1862642 () Bool)

(declare-fun tp!1862641 () Bool)

(assert (=> b!6804544 (= e!4106324 (and tp!1862642 tp!1862641))))

(declare-fun b!6804542 () Bool)

(declare-fun tp!1862645 () Bool)

(declare-fun tp!1862644 () Bool)

(assert (=> b!6804542 (= e!4106324 (and tp!1862645 tp!1862644))))

(declare-fun b!6804541 () Bool)

(assert (=> b!6804541 (= e!4106324 tp_is_empty!42499)))

(assert (=> b!6803146 (= tp!1862385 e!4106324)))

(declare-fun b!6804543 () Bool)

(declare-fun tp!1862643 () Bool)

(assert (=> b!6804543 (= e!4106324 tp!1862643)))

(assert (= (and b!6803146 ((_ is ElementMatch!16623) (regOne!33759 (regOne!33759 r!7292)))) b!6804541))

(assert (= (and b!6803146 ((_ is Concat!25468) (regOne!33759 (regOne!33759 r!7292)))) b!6804542))

(assert (= (and b!6803146 ((_ is Star!16623) (regOne!33759 (regOne!33759 r!7292)))) b!6804543))

(assert (= (and b!6803146 ((_ is Union!16623) (regOne!33759 (regOne!33759 r!7292)))) b!6804544))

(declare-fun b!6804548 () Bool)

(declare-fun e!4106325 () Bool)

(declare-fun tp!1862647 () Bool)

(declare-fun tp!1862646 () Bool)

(assert (=> b!6804548 (= e!4106325 (and tp!1862647 tp!1862646))))

(declare-fun b!6804546 () Bool)

(declare-fun tp!1862650 () Bool)

(declare-fun tp!1862649 () Bool)

(assert (=> b!6804546 (= e!4106325 (and tp!1862650 tp!1862649))))

(declare-fun b!6804545 () Bool)

(assert (=> b!6804545 (= e!4106325 tp_is_empty!42499)))

(assert (=> b!6803146 (= tp!1862384 e!4106325)))

(declare-fun b!6804547 () Bool)

(declare-fun tp!1862648 () Bool)

(assert (=> b!6804547 (= e!4106325 tp!1862648)))

(assert (= (and b!6803146 ((_ is ElementMatch!16623) (regTwo!33759 (regOne!33759 r!7292)))) b!6804545))

(assert (= (and b!6803146 ((_ is Concat!25468) (regTwo!33759 (regOne!33759 r!7292)))) b!6804546))

(assert (= (and b!6803146 ((_ is Star!16623) (regTwo!33759 (regOne!33759 r!7292)))) b!6804547))

(assert (= (and b!6803146 ((_ is Union!16623) (regTwo!33759 (regOne!33759 r!7292)))) b!6804548))

(declare-fun b!6804552 () Bool)

(declare-fun e!4106326 () Bool)

(declare-fun tp!1862652 () Bool)

(declare-fun tp!1862651 () Bool)

(assert (=> b!6804552 (= e!4106326 (and tp!1862652 tp!1862651))))

(declare-fun b!6804550 () Bool)

(declare-fun tp!1862655 () Bool)

(declare-fun tp!1862654 () Bool)

(assert (=> b!6804550 (= e!4106326 (and tp!1862655 tp!1862654))))

(declare-fun b!6804549 () Bool)

(assert (=> b!6804549 (= e!4106326 tp_is_empty!42499)))

(assert (=> b!6803145 (= tp!1862386 e!4106326)))

(declare-fun b!6804551 () Bool)

(declare-fun tp!1862653 () Bool)

(assert (=> b!6804551 (= e!4106326 tp!1862653)))

(assert (= (and b!6803145 ((_ is ElementMatch!16623) (reg!16952 (regOne!33759 r!7292)))) b!6804549))

(assert (= (and b!6803145 ((_ is Concat!25468) (reg!16952 (regOne!33759 r!7292)))) b!6804550))

(assert (= (and b!6803145 ((_ is Star!16623) (reg!16952 (regOne!33759 r!7292)))) b!6804551))

(assert (= (and b!6803145 ((_ is Union!16623) (reg!16952 (regOne!33759 r!7292)))) b!6804552))

(declare-fun b!6804556 () Bool)

(declare-fun e!4106327 () Bool)

(declare-fun tp!1862657 () Bool)

(declare-fun tp!1862656 () Bool)

(assert (=> b!6804556 (= e!4106327 (and tp!1862657 tp!1862656))))

(declare-fun b!6804554 () Bool)

(declare-fun tp!1862660 () Bool)

(declare-fun tp!1862659 () Bool)

(assert (=> b!6804554 (= e!4106327 (and tp!1862660 tp!1862659))))

(declare-fun b!6804553 () Bool)

(assert (=> b!6804553 (= e!4106327 tp_is_empty!42499)))

(assert (=> b!6803144 (= tp!1862388 e!4106327)))

(declare-fun b!6804555 () Bool)

(declare-fun tp!1862658 () Bool)

(assert (=> b!6804555 (= e!4106327 tp!1862658)))

(assert (= (and b!6803144 ((_ is ElementMatch!16623) (regOne!33758 (regOne!33759 r!7292)))) b!6804553))

(assert (= (and b!6803144 ((_ is Concat!25468) (regOne!33758 (regOne!33759 r!7292)))) b!6804554))

(assert (= (and b!6803144 ((_ is Star!16623) (regOne!33758 (regOne!33759 r!7292)))) b!6804555))

(assert (= (and b!6803144 ((_ is Union!16623) (regOne!33758 (regOne!33759 r!7292)))) b!6804556))

(declare-fun b!6804560 () Bool)

(declare-fun e!4106328 () Bool)

(declare-fun tp!1862662 () Bool)

(declare-fun tp!1862661 () Bool)

(assert (=> b!6804560 (= e!4106328 (and tp!1862662 tp!1862661))))

(declare-fun b!6804558 () Bool)

(declare-fun tp!1862665 () Bool)

(declare-fun tp!1862664 () Bool)

(assert (=> b!6804558 (= e!4106328 (and tp!1862665 tp!1862664))))

(declare-fun b!6804557 () Bool)

(assert (=> b!6804557 (= e!4106328 tp_is_empty!42499)))

(assert (=> b!6803144 (= tp!1862387 e!4106328)))

(declare-fun b!6804559 () Bool)

(declare-fun tp!1862663 () Bool)

(assert (=> b!6804559 (= e!4106328 tp!1862663)))

(assert (= (and b!6803144 ((_ is ElementMatch!16623) (regTwo!33758 (regOne!33759 r!7292)))) b!6804557))

(assert (= (and b!6803144 ((_ is Concat!25468) (regTwo!33758 (regOne!33759 r!7292)))) b!6804558))

(assert (= (and b!6803144 ((_ is Star!16623) (regTwo!33758 (regOne!33759 r!7292)))) b!6804559))

(assert (= (and b!6803144 ((_ is Union!16623) (regTwo!33758 (regOne!33759 r!7292)))) b!6804560))

(declare-fun b!6804561 () Bool)

(declare-fun e!4106329 () Bool)

(declare-fun tp!1862666 () Bool)

(assert (=> b!6804561 (= e!4106329 (and tp_is_empty!42499 tp!1862666))))

(assert (=> b!6803130 (= tp!1862372 e!4106329)))

(assert (= (and b!6803130 ((_ is Cons!66044) (t!379899 (t!379899 s!2326)))) b!6804561))

(declare-fun b!6804565 () Bool)

(declare-fun e!4106330 () Bool)

(declare-fun tp!1862668 () Bool)

(declare-fun tp!1862667 () Bool)

(assert (=> b!6804565 (= e!4106330 (and tp!1862668 tp!1862667))))

(declare-fun b!6804563 () Bool)

(declare-fun tp!1862671 () Bool)

(declare-fun tp!1862670 () Bool)

(assert (=> b!6804563 (= e!4106330 (and tp!1862671 tp!1862670))))

(declare-fun b!6804562 () Bool)

(assert (=> b!6804562 (= e!4106330 tp_is_empty!42499)))

(assert (=> b!6803161 (= tp!1862406 e!4106330)))

(declare-fun b!6804564 () Bool)

(declare-fun tp!1862669 () Bool)

(assert (=> b!6804564 (= e!4106330 tp!1862669)))

(assert (= (and b!6803161 ((_ is ElementMatch!16623) (h!72493 (exprs!6507 setElem!46633)))) b!6804562))

(assert (= (and b!6803161 ((_ is Concat!25468) (h!72493 (exprs!6507 setElem!46633)))) b!6804563))

(assert (= (and b!6803161 ((_ is Star!16623) (h!72493 (exprs!6507 setElem!46633)))) b!6804564))

(assert (= (and b!6803161 ((_ is Union!16623) (h!72493 (exprs!6507 setElem!46633)))) b!6804565))

(declare-fun b!6804566 () Bool)

(declare-fun e!4106331 () Bool)

(declare-fun tp!1862672 () Bool)

(declare-fun tp!1862673 () Bool)

(assert (=> b!6804566 (= e!4106331 (and tp!1862672 tp!1862673))))

(assert (=> b!6803161 (= tp!1862407 e!4106331)))

(assert (= (and b!6803161 ((_ is Cons!66045) (t!379900 (exprs!6507 setElem!46633)))) b!6804566))

(declare-fun b!6804567 () Bool)

(declare-fun e!4106332 () Bool)

(declare-fun tp!1862674 () Bool)

(declare-fun tp!1862675 () Bool)

(assert (=> b!6804567 (= e!4106332 (and tp!1862674 tp!1862675))))

(assert (=> b!6803155 (= tp!1862399 e!4106332)))

(assert (= (and b!6803155 ((_ is Cons!66045) (exprs!6507 setElem!46639))) b!6804567))

(declare-fun b!6804571 () Bool)

(declare-fun e!4106333 () Bool)

(declare-fun tp!1862677 () Bool)

(declare-fun tp!1862676 () Bool)

(assert (=> b!6804571 (= e!4106333 (and tp!1862677 tp!1862676))))

(declare-fun b!6804569 () Bool)

(declare-fun tp!1862680 () Bool)

(declare-fun tp!1862679 () Bool)

(assert (=> b!6804569 (= e!4106333 (and tp!1862680 tp!1862679))))

(declare-fun b!6804568 () Bool)

(assert (=> b!6804568 (= e!4106333 tp_is_empty!42499)))

(assert (=> b!6803119 (= tp!1862364 e!4106333)))

(declare-fun b!6804570 () Bool)

(declare-fun tp!1862678 () Bool)

(assert (=> b!6804570 (= e!4106333 tp!1862678)))

(assert (= (and b!6803119 ((_ is ElementMatch!16623) (regOne!33758 (regOne!33758 r!7292)))) b!6804568))

(assert (= (and b!6803119 ((_ is Concat!25468) (regOne!33758 (regOne!33758 r!7292)))) b!6804569))

(assert (= (and b!6803119 ((_ is Star!16623) (regOne!33758 (regOne!33758 r!7292)))) b!6804570))

(assert (= (and b!6803119 ((_ is Union!16623) (regOne!33758 (regOne!33758 r!7292)))) b!6804571))

(declare-fun b!6804575 () Bool)

(declare-fun e!4106334 () Bool)

(declare-fun tp!1862682 () Bool)

(declare-fun tp!1862681 () Bool)

(assert (=> b!6804575 (= e!4106334 (and tp!1862682 tp!1862681))))

(declare-fun b!6804573 () Bool)

(declare-fun tp!1862685 () Bool)

(declare-fun tp!1862684 () Bool)

(assert (=> b!6804573 (= e!4106334 (and tp!1862685 tp!1862684))))

(declare-fun b!6804572 () Bool)

(assert (=> b!6804572 (= e!4106334 tp_is_empty!42499)))

(assert (=> b!6803119 (= tp!1862363 e!4106334)))

(declare-fun b!6804574 () Bool)

(declare-fun tp!1862683 () Bool)

(assert (=> b!6804574 (= e!4106334 tp!1862683)))

(assert (= (and b!6803119 ((_ is ElementMatch!16623) (regTwo!33758 (regOne!33758 r!7292)))) b!6804572))

(assert (= (and b!6803119 ((_ is Concat!25468) (regTwo!33758 (regOne!33758 r!7292)))) b!6804573))

(assert (= (and b!6803119 ((_ is Star!16623) (regTwo!33758 (regOne!33758 r!7292)))) b!6804574))

(assert (= (and b!6803119 ((_ is Union!16623) (regTwo!33758 (regOne!33758 r!7292)))) b!6804575))

(declare-fun condSetEmpty!46659 () Bool)

(assert (=> setNonEmpty!46639 (= condSetEmpty!46659 (= setRest!46639 ((as const (Array Context!12014 Bool)) false)))))

(declare-fun setRes!46659 () Bool)

(assert (=> setNonEmpty!46639 (= tp!1862398 setRes!46659)))

(declare-fun setIsEmpty!46659 () Bool)

(assert (=> setIsEmpty!46659 setRes!46659))

(declare-fun tp!1862686 () Bool)

(declare-fun setElem!46659 () Context!12014)

(declare-fun e!4106335 () Bool)

(declare-fun setNonEmpty!46659 () Bool)

(assert (=> setNonEmpty!46659 (= setRes!46659 (and tp!1862686 (inv!84804 setElem!46659) e!4106335))))

(declare-fun setRest!46659 () (InoxSet Context!12014))

(assert (=> setNonEmpty!46659 (= setRest!46639 ((_ map or) (store ((as const (Array Context!12014 Bool)) false) setElem!46659 true) setRest!46659))))

(declare-fun b!6804576 () Bool)

(declare-fun tp!1862687 () Bool)

(assert (=> b!6804576 (= e!4106335 tp!1862687)))

(assert (= (and setNonEmpty!46639 condSetEmpty!46659) setIsEmpty!46659))

(assert (= (and setNonEmpty!46639 (not condSetEmpty!46659)) setNonEmpty!46659))

(assert (= setNonEmpty!46659 b!6804576))

(declare-fun m!7550914 () Bool)

(assert (=> setNonEmpty!46659 m!7550914))

(declare-fun b!6804580 () Bool)

(declare-fun e!4106336 () Bool)

(declare-fun tp!1862689 () Bool)

(declare-fun tp!1862688 () Bool)

(assert (=> b!6804580 (= e!4106336 (and tp!1862689 tp!1862688))))

(declare-fun b!6804578 () Bool)

(declare-fun tp!1862692 () Bool)

(declare-fun tp!1862691 () Bool)

(assert (=> b!6804578 (= e!4106336 (and tp!1862692 tp!1862691))))

(declare-fun b!6804577 () Bool)

(assert (=> b!6804577 (= e!4106336 tp_is_empty!42499)))

(assert (=> b!6803125 (= tp!1862366 e!4106336)))

(declare-fun b!6804579 () Bool)

(declare-fun tp!1862690 () Bool)

(assert (=> b!6804579 (= e!4106336 tp!1862690)))

(assert (= (and b!6803125 ((_ is ElementMatch!16623) (regOne!33759 (regTwo!33758 r!7292)))) b!6804577))

(assert (= (and b!6803125 ((_ is Concat!25468) (regOne!33759 (regTwo!33758 r!7292)))) b!6804578))

(assert (= (and b!6803125 ((_ is Star!16623) (regOne!33759 (regTwo!33758 r!7292)))) b!6804579))

(assert (= (and b!6803125 ((_ is Union!16623) (regOne!33759 (regTwo!33758 r!7292)))) b!6804580))

(declare-fun b!6804584 () Bool)

(declare-fun e!4106337 () Bool)

(declare-fun tp!1862694 () Bool)

(declare-fun tp!1862693 () Bool)

(assert (=> b!6804584 (= e!4106337 (and tp!1862694 tp!1862693))))

(declare-fun b!6804582 () Bool)

(declare-fun tp!1862697 () Bool)

(declare-fun tp!1862696 () Bool)

(assert (=> b!6804582 (= e!4106337 (and tp!1862697 tp!1862696))))

(declare-fun b!6804581 () Bool)

(assert (=> b!6804581 (= e!4106337 tp_is_empty!42499)))

(assert (=> b!6803125 (= tp!1862365 e!4106337)))

(declare-fun b!6804583 () Bool)

(declare-fun tp!1862695 () Bool)

(assert (=> b!6804583 (= e!4106337 tp!1862695)))

(assert (= (and b!6803125 ((_ is ElementMatch!16623) (regTwo!33759 (regTwo!33758 r!7292)))) b!6804581))

(assert (= (and b!6803125 ((_ is Concat!25468) (regTwo!33759 (regTwo!33758 r!7292)))) b!6804582))

(assert (= (and b!6803125 ((_ is Star!16623) (regTwo!33759 (regTwo!33758 r!7292)))) b!6804583))

(assert (= (and b!6803125 ((_ is Union!16623) (regTwo!33759 (regTwo!33758 r!7292)))) b!6804584))

(declare-fun b!6804588 () Bool)

(declare-fun e!4106338 () Bool)

(declare-fun tp!1862699 () Bool)

(declare-fun tp!1862698 () Bool)

(assert (=> b!6804588 (= e!4106338 (and tp!1862699 tp!1862698))))

(declare-fun b!6804586 () Bool)

(declare-fun tp!1862702 () Bool)

(declare-fun tp!1862701 () Bool)

(assert (=> b!6804586 (= e!4106338 (and tp!1862702 tp!1862701))))

(declare-fun b!6804585 () Bool)

(assert (=> b!6804585 (= e!4106338 tp_is_empty!42499)))

(assert (=> b!6803132 (= tp!1862377 e!4106338)))

(declare-fun b!6804587 () Bool)

(declare-fun tp!1862700 () Bool)

(assert (=> b!6804587 (= e!4106338 tp!1862700)))

(assert (= (and b!6803132 ((_ is ElementMatch!16623) (regOne!33758 (reg!16952 r!7292)))) b!6804585))

(assert (= (and b!6803132 ((_ is Concat!25468) (regOne!33758 (reg!16952 r!7292)))) b!6804586))

(assert (= (and b!6803132 ((_ is Star!16623) (regOne!33758 (reg!16952 r!7292)))) b!6804587))

(assert (= (and b!6803132 ((_ is Union!16623) (regOne!33758 (reg!16952 r!7292)))) b!6804588))

(declare-fun b!6804592 () Bool)

(declare-fun e!4106339 () Bool)

(declare-fun tp!1862704 () Bool)

(declare-fun tp!1862703 () Bool)

(assert (=> b!6804592 (= e!4106339 (and tp!1862704 tp!1862703))))

(declare-fun b!6804590 () Bool)

(declare-fun tp!1862707 () Bool)

(declare-fun tp!1862706 () Bool)

(assert (=> b!6804590 (= e!4106339 (and tp!1862707 tp!1862706))))

(declare-fun b!6804589 () Bool)

(assert (=> b!6804589 (= e!4106339 tp_is_empty!42499)))

(assert (=> b!6803132 (= tp!1862376 e!4106339)))

(declare-fun b!6804591 () Bool)

(declare-fun tp!1862705 () Bool)

(assert (=> b!6804591 (= e!4106339 tp!1862705)))

(assert (= (and b!6803132 ((_ is ElementMatch!16623) (regTwo!33758 (reg!16952 r!7292)))) b!6804589))

(assert (= (and b!6803132 ((_ is Concat!25468) (regTwo!33758 (reg!16952 r!7292)))) b!6804590))

(assert (= (and b!6803132 ((_ is Star!16623) (regTwo!33758 (reg!16952 r!7292)))) b!6804591))

(assert (= (and b!6803132 ((_ is Union!16623) (regTwo!33758 (reg!16952 r!7292)))) b!6804592))

(declare-fun b!6804596 () Bool)

(declare-fun e!4106340 () Bool)

(declare-fun tp!1862709 () Bool)

(declare-fun tp!1862708 () Bool)

(assert (=> b!6804596 (= e!4106340 (and tp!1862709 tp!1862708))))

(declare-fun b!6804594 () Bool)

(declare-fun tp!1862712 () Bool)

(declare-fun tp!1862711 () Bool)

(assert (=> b!6804594 (= e!4106340 (and tp!1862712 tp!1862711))))

(declare-fun b!6804593 () Bool)

(assert (=> b!6804593 (= e!4106340 tp_is_empty!42499)))

(assert (=> b!6803150 (= tp!1862390 e!4106340)))

(declare-fun b!6804595 () Bool)

(declare-fun tp!1862710 () Bool)

(assert (=> b!6804595 (= e!4106340 tp!1862710)))

(assert (= (and b!6803150 ((_ is ElementMatch!16623) (regOne!33759 (regTwo!33759 r!7292)))) b!6804593))

(assert (= (and b!6803150 ((_ is Concat!25468) (regOne!33759 (regTwo!33759 r!7292)))) b!6804594))

(assert (= (and b!6803150 ((_ is Star!16623) (regOne!33759 (regTwo!33759 r!7292)))) b!6804595))

(assert (= (and b!6803150 ((_ is Union!16623) (regOne!33759 (regTwo!33759 r!7292)))) b!6804596))

(declare-fun b!6804600 () Bool)

(declare-fun e!4106341 () Bool)

(declare-fun tp!1862714 () Bool)

(declare-fun tp!1862713 () Bool)

(assert (=> b!6804600 (= e!4106341 (and tp!1862714 tp!1862713))))

(declare-fun b!6804598 () Bool)

(declare-fun tp!1862717 () Bool)

(declare-fun tp!1862716 () Bool)

(assert (=> b!6804598 (= e!4106341 (and tp!1862717 tp!1862716))))

(declare-fun b!6804597 () Bool)

(assert (=> b!6804597 (= e!4106341 tp_is_empty!42499)))

(assert (=> b!6803150 (= tp!1862389 e!4106341)))

(declare-fun b!6804599 () Bool)

(declare-fun tp!1862715 () Bool)

(assert (=> b!6804599 (= e!4106341 tp!1862715)))

(assert (= (and b!6803150 ((_ is ElementMatch!16623) (regTwo!33759 (regTwo!33759 r!7292)))) b!6804597))

(assert (= (and b!6803150 ((_ is Concat!25468) (regTwo!33759 (regTwo!33759 r!7292)))) b!6804598))

(assert (= (and b!6803150 ((_ is Star!16623) (regTwo!33759 (regTwo!33759 r!7292)))) b!6804599))

(assert (= (and b!6803150 ((_ is Union!16623) (regTwo!33759 (regTwo!33759 r!7292)))) b!6804600))

(declare-fun b!6804604 () Bool)

(declare-fun e!4106342 () Bool)

(declare-fun tp!1862719 () Bool)

(declare-fun tp!1862718 () Bool)

(assert (=> b!6804604 (= e!4106342 (and tp!1862719 tp!1862718))))

(declare-fun b!6804602 () Bool)

(declare-fun tp!1862722 () Bool)

(declare-fun tp!1862721 () Bool)

(assert (=> b!6804602 (= e!4106342 (and tp!1862722 tp!1862721))))

(declare-fun b!6804601 () Bool)

(assert (=> b!6804601 (= e!4106342 tp_is_empty!42499)))

(assert (=> b!6803133 (= tp!1862375 e!4106342)))

(declare-fun b!6804603 () Bool)

(declare-fun tp!1862720 () Bool)

(assert (=> b!6804603 (= e!4106342 tp!1862720)))

(assert (= (and b!6803133 ((_ is ElementMatch!16623) (reg!16952 (reg!16952 r!7292)))) b!6804601))

(assert (= (and b!6803133 ((_ is Concat!25468) (reg!16952 (reg!16952 r!7292)))) b!6804602))

(assert (= (and b!6803133 ((_ is Star!16623) (reg!16952 (reg!16952 r!7292)))) b!6804603))

(assert (= (and b!6803133 ((_ is Union!16623) (reg!16952 (reg!16952 r!7292)))) b!6804604))

(declare-fun b!6804605 () Bool)

(declare-fun e!4106343 () Bool)

(declare-fun tp!1862723 () Bool)

(declare-fun tp!1862724 () Bool)

(assert (=> b!6804605 (= e!4106343 (and tp!1862723 tp!1862724))))

(assert (=> b!6803142 (= tp!1862382 e!4106343)))

(assert (= (and b!6803142 ((_ is Cons!66045) (exprs!6507 (h!72494 (t!379901 zl!343))))) b!6804605))

(declare-fun b!6804609 () Bool)

(declare-fun e!4106344 () Bool)

(declare-fun tp!1862726 () Bool)

(declare-fun tp!1862725 () Bool)

(assert (=> b!6804609 (= e!4106344 (and tp!1862726 tp!1862725))))

(declare-fun b!6804607 () Bool)

(declare-fun tp!1862729 () Bool)

(declare-fun tp!1862728 () Bool)

(assert (=> b!6804607 (= e!4106344 (and tp!1862729 tp!1862728))))

(declare-fun b!6804606 () Bool)

(assert (=> b!6804606 (= e!4106344 tp_is_empty!42499)))

(assert (=> b!6803149 (= tp!1862391 e!4106344)))

(declare-fun b!6804608 () Bool)

(declare-fun tp!1862727 () Bool)

(assert (=> b!6804608 (= e!4106344 tp!1862727)))

(assert (= (and b!6803149 ((_ is ElementMatch!16623) (reg!16952 (regTwo!33759 r!7292)))) b!6804606))

(assert (= (and b!6803149 ((_ is Concat!25468) (reg!16952 (regTwo!33759 r!7292)))) b!6804607))

(assert (= (and b!6803149 ((_ is Star!16623) (reg!16952 (regTwo!33759 r!7292)))) b!6804608))

(assert (= (and b!6803149 ((_ is Union!16623) (reg!16952 (regTwo!33759 r!7292)))) b!6804609))

(declare-fun b!6804613 () Bool)

(declare-fun e!4106345 () Bool)

(declare-fun tp!1862731 () Bool)

(declare-fun tp!1862730 () Bool)

(assert (=> b!6804613 (= e!4106345 (and tp!1862731 tp!1862730))))

(declare-fun b!6804611 () Bool)

(declare-fun tp!1862734 () Bool)

(declare-fun tp!1862733 () Bool)

(assert (=> b!6804611 (= e!4106345 (and tp!1862734 tp!1862733))))

(declare-fun b!6804610 () Bool)

(assert (=> b!6804610 (= e!4106345 tp_is_empty!42499)))

(assert (=> b!6803134 (= tp!1862374 e!4106345)))

(declare-fun b!6804612 () Bool)

(declare-fun tp!1862732 () Bool)

(assert (=> b!6804612 (= e!4106345 tp!1862732)))

(assert (= (and b!6803134 ((_ is ElementMatch!16623) (regOne!33759 (reg!16952 r!7292)))) b!6804610))

(assert (= (and b!6803134 ((_ is Concat!25468) (regOne!33759 (reg!16952 r!7292)))) b!6804611))

(assert (= (and b!6803134 ((_ is Star!16623) (regOne!33759 (reg!16952 r!7292)))) b!6804612))

(assert (= (and b!6803134 ((_ is Union!16623) (regOne!33759 (reg!16952 r!7292)))) b!6804613))

(declare-fun b!6804617 () Bool)

(declare-fun e!4106346 () Bool)

(declare-fun tp!1862736 () Bool)

(declare-fun tp!1862735 () Bool)

(assert (=> b!6804617 (= e!4106346 (and tp!1862736 tp!1862735))))

(declare-fun b!6804615 () Bool)

(declare-fun tp!1862739 () Bool)

(declare-fun tp!1862738 () Bool)

(assert (=> b!6804615 (= e!4106346 (and tp!1862739 tp!1862738))))

(declare-fun b!6804614 () Bool)

(assert (=> b!6804614 (= e!4106346 tp_is_empty!42499)))

(assert (=> b!6803134 (= tp!1862373 e!4106346)))

(declare-fun b!6804616 () Bool)

(declare-fun tp!1862737 () Bool)

(assert (=> b!6804616 (= e!4106346 tp!1862737)))

(assert (= (and b!6803134 ((_ is ElementMatch!16623) (regTwo!33759 (reg!16952 r!7292)))) b!6804614))

(assert (= (and b!6803134 ((_ is Concat!25468) (regTwo!33759 (reg!16952 r!7292)))) b!6804615))

(assert (= (and b!6803134 ((_ is Star!16623) (regTwo!33759 (reg!16952 r!7292)))) b!6804616))

(assert (= (and b!6803134 ((_ is Union!16623) (regTwo!33759 (reg!16952 r!7292)))) b!6804617))

(declare-fun b!6804619 () Bool)

(declare-fun e!4106348 () Bool)

(declare-fun tp!1862740 () Bool)

(assert (=> b!6804619 (= e!4106348 tp!1862740)))

(declare-fun b!6804618 () Bool)

(declare-fun tp!1862741 () Bool)

(declare-fun e!4106347 () Bool)

(assert (=> b!6804618 (= e!4106347 (and (inv!84804 (h!72494 (t!379901 (t!379901 zl!343)))) e!4106348 tp!1862741))))

(assert (=> b!6803141 (= tp!1862383 e!4106347)))

(assert (= b!6804618 b!6804619))

(assert (= (and b!6803141 ((_ is Cons!66046) (t!379901 (t!379901 zl!343)))) b!6804618))

(declare-fun m!7550916 () Bool)

(assert (=> b!6804618 m!7550916))

(declare-fun b!6804623 () Bool)

(declare-fun e!4106349 () Bool)

(declare-fun tp!1862743 () Bool)

(declare-fun tp!1862742 () Bool)

(assert (=> b!6804623 (= e!4106349 (and tp!1862743 tp!1862742))))

(declare-fun b!6804621 () Bool)

(declare-fun tp!1862746 () Bool)

(declare-fun tp!1862745 () Bool)

(assert (=> b!6804621 (= e!4106349 (and tp!1862746 tp!1862745))))

(declare-fun b!6804620 () Bool)

(assert (=> b!6804620 (= e!4106349 tp_is_empty!42499)))

(assert (=> b!6803148 (= tp!1862393 e!4106349)))

(declare-fun b!6804622 () Bool)

(declare-fun tp!1862744 () Bool)

(assert (=> b!6804622 (= e!4106349 tp!1862744)))

(assert (= (and b!6803148 ((_ is ElementMatch!16623) (regOne!33758 (regTwo!33759 r!7292)))) b!6804620))

(assert (= (and b!6803148 ((_ is Concat!25468) (regOne!33758 (regTwo!33759 r!7292)))) b!6804621))

(assert (= (and b!6803148 ((_ is Star!16623) (regOne!33758 (regTwo!33759 r!7292)))) b!6804622))

(assert (= (and b!6803148 ((_ is Union!16623) (regOne!33758 (regTwo!33759 r!7292)))) b!6804623))

(declare-fun b!6804627 () Bool)

(declare-fun e!4106350 () Bool)

(declare-fun tp!1862748 () Bool)

(declare-fun tp!1862747 () Bool)

(assert (=> b!6804627 (= e!4106350 (and tp!1862748 tp!1862747))))

(declare-fun b!6804625 () Bool)

(declare-fun tp!1862751 () Bool)

(declare-fun tp!1862750 () Bool)

(assert (=> b!6804625 (= e!4106350 (and tp!1862751 tp!1862750))))

(declare-fun b!6804624 () Bool)

(assert (=> b!6804624 (= e!4106350 tp_is_empty!42499)))

(assert (=> b!6803148 (= tp!1862392 e!4106350)))

(declare-fun b!6804626 () Bool)

(declare-fun tp!1862749 () Bool)

(assert (=> b!6804626 (= e!4106350 tp!1862749)))

(assert (= (and b!6803148 ((_ is ElementMatch!16623) (regTwo!33758 (regTwo!33759 r!7292)))) b!6804624))

(assert (= (and b!6803148 ((_ is Concat!25468) (regTwo!33758 (regTwo!33759 r!7292)))) b!6804625))

(assert (= (and b!6803148 ((_ is Star!16623) (regTwo!33758 (regTwo!33759 r!7292)))) b!6804626))

(assert (= (and b!6803148 ((_ is Union!16623) (regTwo!33758 (regTwo!33759 r!7292)))) b!6804627))

(declare-fun b_lambda!256521 () Bool)

(assert (= b_lambda!256515 (or d!2137569 b_lambda!256521)))

(declare-fun bs!1814020 () Bool)

(declare-fun d!2138413 () Bool)

(assert (= bs!1814020 (and d!2138413 d!2137569)))

(assert (=> bs!1814020 (= (dynLambda!26380 lambda!383802 (h!72493 lt!2448491)) (validRegex!8359 (h!72493 lt!2448491)))))

(declare-fun m!7550918 () Bool)

(assert (=> bs!1814020 m!7550918))

(assert (=> b!6804422 d!2138413))

(declare-fun b_lambda!256523 () Bool)

(assert (= b_lambda!256499 (or d!2137557 b_lambda!256523)))

(declare-fun bs!1814021 () Bool)

(declare-fun d!2138415 () Bool)

(assert (= bs!1814021 (and d!2138415 d!2137557)))

(assert (=> bs!1814021 (= (dynLambda!26380 lambda!383797 (h!72493 (unfocusZipperList!2044 zl!343))) (validRegex!8359 (h!72493 (unfocusZipperList!2044 zl!343))))))

(declare-fun m!7550920 () Bool)

(assert (=> bs!1814021 m!7550920))

(assert (=> b!6804116 d!2138415))

(declare-fun b_lambda!256525 () Bool)

(assert (= b_lambda!256503 (or d!2137547 b_lambda!256525)))

(declare-fun bs!1814022 () Bool)

(declare-fun d!2138417 () Bool)

(assert (= bs!1814022 (and d!2138417 d!2137547)))

(assert (=> bs!1814022 (= (dynLambda!26380 lambda!383787 (h!72493 (exprs!6507 (h!72494 zl!343)))) (validRegex!8359 (h!72493 (exprs!6507 (h!72494 zl!343)))))))

(declare-fun m!7550922 () Bool)

(assert (=> bs!1814022 m!7550922))

(assert (=> b!6804264 d!2138417))

(declare-fun b_lambda!256527 () Bool)

(assert (= b_lambda!256469 (or b!6802209 b_lambda!256527)))

(assert (=> d!2138043 d!2137681))

(declare-fun b_lambda!256529 () Bool)

(assert (= b_lambda!256507 (or d!2137533 b_lambda!256529)))

(declare-fun bs!1814023 () Bool)

(declare-fun d!2138419 () Bool)

(assert (= bs!1814023 (and d!2138419 d!2137533)))

(assert (=> bs!1814023 (= (dynLambda!26380 lambda!383782 (h!72493 (exprs!6507 (h!72494 zl!343)))) (validRegex!8359 (h!72493 (exprs!6507 (h!72494 zl!343)))))))

(assert (=> bs!1814023 m!7550922))

(assert (=> b!6804293 d!2138419))

(declare-fun b_lambda!256531 () Bool)

(assert (= b_lambda!256459 (or b!6802209 b_lambda!256531)))

(assert (=> d!2137917 d!2137679))

(declare-fun b_lambda!256533 () Bool)

(assert (= b_lambda!256505 (or b!6802209 b_lambda!256533)))

(assert (=> d!2138287 d!2137675))

(declare-fun b_lambda!256535 () Bool)

(assert (= b_lambda!256517 (or d!2137537 b_lambda!256535)))

(declare-fun bs!1814024 () Bool)

(declare-fun d!2138421 () Bool)

(assert (= bs!1814024 (and d!2138421 d!2137537)))

(assert (=> bs!1814024 (= (dynLambda!26380 lambda!383783 (h!72493 (exprs!6507 setElem!46633))) (validRegex!8359 (h!72493 (exprs!6507 setElem!46633))))))

(declare-fun m!7550924 () Bool)

(assert (=> bs!1814024 m!7550924))

(assert (=> b!6804457 d!2138421))

(declare-fun b_lambda!256537 () Bool)

(assert (= b_lambda!256519 (or b!6802209 b_lambda!256537)))

(assert (=> d!2138399 d!2137683))

(declare-fun b_lambda!256539 () Bool)

(assert (= b_lambda!256501 (or b!6802233 b_lambda!256539)))

(assert (=> d!2138263 d!2137677))

(declare-fun b_lambda!256541 () Bool)

(assert (= b_lambda!256513 (or b!6802233 b_lambda!256541)))

(declare-fun bs!1814025 () Bool)

(declare-fun d!2138423 () Bool)

(assert (= bs!1814025 (and d!2138423 b!6802233)))

(assert (=> bs!1814025 (= (dynLambda!26380 lambda!383749 (h!72493 (Cons!66045 (reg!16952 r!7292) Nil!66045))) (validRegex!8359 (h!72493 (Cons!66045 (reg!16952 r!7292) Nil!66045))))))

(declare-fun m!7550926 () Bool)

(assert (=> bs!1814025 m!7550926))

(assert (=> b!6804411 d!2138423))

(declare-fun b_lambda!256543 () Bool)

(assert (= b_lambda!256511 (or b!6802233 b_lambda!256543)))

(declare-fun bs!1814026 () Bool)

(declare-fun d!2138425 () Bool)

(assert (= bs!1814026 (and d!2138425 b!6802233)))

(assert (=> bs!1814026 (= (dynLambda!26380 lambda!383749 (h!72493 (++!14793 (Cons!66045 (reg!16952 r!7292) Nil!66045) lt!2448392))) (validRegex!8359 (h!72493 (++!14793 (Cons!66045 (reg!16952 r!7292) Nil!66045) lt!2448392))))))

(declare-fun m!7550928 () Bool)

(assert (=> bs!1814026 m!7550928))

(assert (=> b!6804409 d!2138425))

(declare-fun b_lambda!256545 () Bool)

(assert (= b_lambda!256509 (or d!2137669 b_lambda!256545)))

(declare-fun bs!1814027 () Bool)

(declare-fun d!2138427 () Bool)

(assert (= bs!1814027 (and d!2138427 d!2137669)))

(assert (=> bs!1814027 (= (dynLambda!26380 lambda!383843 (h!72493 (exprs!6507 lt!2448396))) (validRegex!8359 (h!72493 (exprs!6507 lt!2448396))))))

(declare-fun m!7550930 () Bool)

(assert (=> bs!1814027 m!7550930))

(assert (=> b!6804295 d!2138427))

(check-sat (not b!6804008) (not b!6804522) (not b!6804602) (not d!2138193) (not b!6804094) (not b!6804603) (not b!6804594) (not b!6804539) (not b!6804489) (not b!6804336) (not d!2138385) (not d!2138221) (not bs!1814022) (not d!2138319) (not b!6804458) (not b!6804178) (not bm!618278) (not d!2137945) (not b!6803790) (not b!6804580) (not b!6804298) (not d!2138305) (not b!6804380) (not bs!1814027) (not b!6804283) (not d!2138227) (not b!6804085) (not b!6804146) (not bs!1814023) (not b!6804375) (not d!2138109) (not b!6804341) (not b!6804294) (not b!6804070) (not b!6803971) (not b!6804306) (not b!6804305) (not b!6804128) (not b!6804591) (not d!2138399) (not b_lambda!256439) (not b!6804296) (not d!2138249) (not d!2138199) (not bm!618377) (not b!6804506) (not d!2138207) (not b!6804100) (not b!6804515) (not b!6804288) (not b!6804126) (not b!6804145) (not d!2138147) (not b!6804033) (not d!2138391) (not b!6804609) (not d!2138057) (not b!6804510) (not b!6804528) (not b!6804526) (not b_lambda!256539) (not b!6804410) (not b!6804595) (not bm!618361) (not b_lambda!256543) (not bm!618283) (not d!2138043) (not b!6804131) (not bm!618346) (not b!6804307) (not b!6804101) (not b!6804607) (not b!6804192) (not bm!618291) (not b!6804561) (not bm!618294) (not b!6803973) (not b!6804440) (not b!6804608) (not b!6804468) (not b!6804626) (not bm!618257) (not bm!618344) (not d!2138389) (not bm!618342) tp_is_empty!42499 (not d!2138127) (not b!6804170) (not b!6804540) (not b!6804618) (not b!6804252) (not d!2138343) (not b!6804310) (not b!6804417) (not b_lambda!256531) (not b!6803590) (not b!6804217) (not b!6804623) (not b!6804370) (not b!6804221) (not b!6804547) (not b!6804267) (not b!6804617) (not b!6804389) (not bm!618319) (not bm!618374) (not b_lambda!256525) (not d!2138121) (not b!6804464) (not b!6804563) (not bm!618388) (not b!6804254) (not bm!618381) (not bm!618378) (not b!6804278) (not b!6804216) (not d!2138243) (not b!6804507) (not b!6804604) (not b!6803891) (not b!6804459) (not b!6804064) (not b!6804627) (not bm!618408) (not d!2138159) (not d!2138313) (not b!6804061) (not d!2138083) (not b!6804357) (not bm!618345) (not bm!618370) (not b!6804571) (not bm!618334) (not d!2138189) (not d!2138077) (not b!6803586) (not setNonEmpty!46659) (not d!2137943) (not b!6803966) (not b!6804578) (not b!6804481) (not b!6804600) (not b!6804133) (not b!6803970) (not b!6804277) (not b!6804066) (not b!6804080) (not d!2138397) (not b!6804616) (not b!6804575) (not d!2138365) (not b!6804505) (not d!2138341) (not b!6803892) (not b!6804532) (not b!6804074) (not bm!618387) (not b!6804275) (not b!6804521) (not bm!618340) (not d!2138239) (not b!6804136) (not b!6804188) (not d!2138237) (not d!2138079) (not b!6804406) (not bm!618329) (not setNonEmpty!46658) (not b!6803786) (not b!6804299) (not b!6804566) (not b!6804611) (not b!6804544) (not b!6804546) (not bs!1814026) (not b!6804356) (not d!2138161) (not bm!618394) (not b_lambda!256433) (not b!6804525) (not d!2138211) (not b!6804210) (not b!6804149) (not bm!618354) (not b!6804165) (not b!6804556) (not d!2138273) (not b!6803700) (not b!6804151) (not b!6804460) (not b!6804467) (not b!6804462) (not bm!618409) (not d!2138405) (not b!6804535) (not b!6804057) (not bm!618382) (not b!6804390) (not bm!618358) (not b_lambda!256523) (not b!6804548) (not d!2138245) (not bm!618400) (not b_lambda!256533) (not d!2138349) (not b!6803873) (not b!6804569) (not b!6804090) (not b!6804612) (not d!2138275) (not b!6804395) (not b!6804243) (not b!6804292) (not d!2138315) (not b!6804220) (not b!6804362) (not b!6804474) (not b!6804117) (not b!6804228) (not b!6804622) (not d!2138153) (not bm!618351) (not setNonEmpty!46656) (not b!6804385) (not b!6803922) (not bm!618384) (not bm!618406) (not b!6803961) (not b!6804480) (not bm!618367) (not b!6804531) (not b!6803965) (not b!6804503) (not bm!618359) (not b!6804078) (not d!2138137) (not bm!618256) (not d!2138355) (not b!6804350) (not b!6804552) (not b!6804564) (not bm!618348) (not b_lambda!256529) (not b!6804186) (not b!6804397) (not b!6804582) (not b!6804570) (not bm!618350) (not b!6804309) (not bs!1814025) (not bs!1814024) (not d!2137981) (not b!6804423) (not bm!618365) (not b!6804056) (not b!6803588) (not b!6803616) (not d!2138179) (not b!6804200) (not bm!618411) (not b!6804344) (not b!6804287) (not b!6804463) (not b_lambda!256435) (not b!6804619) (not bm!618341) (not b!6804559) (not b!6804486) (not b!6804342) (not d!2138187) (not b!6804576) (not b!6804241) (not b!6804605) (not b!6804519) (not d!2138205) (not d!2137939) (not bm!618318) (not bm!618396) (not b!6804358) (not b_lambda!256441) (not setNonEmpty!46657) (not b!6804613) (not b!6804412) (not b!6804590) (not b!6804163) (not b!6804297) (not b!6803716) (not d!2138235) (not d!2138149) (not d!2138347) (not b!6803795) (not bm!618380) (not b_lambda!256535) (not b!6804069) (not b!6803758) (not b_lambda!256541) (not bm!618399) (not d!2138345) (not b!6804360) (not b!6804567) (not b_lambda!256521) (not bm!618253) (not b!6804372) (not d!2138299) (not bm!618366) (not b!6804214) (not b!6804153) (not b!6803596) (not b!6804282) (not b_lambda!256545) (not b!6803791) (not d!2137963) (not b!6804514) (not bm!618292) (not d!2138263) (not bm!618385) (not bm!618369) (not b!6804182) (not b!6804518) (not d!2138107) (not b!6804432) (not b!6804303) (not b!6804193) (not b!6804530) (not b!6804451) (not b!6804558) (not b!6804588) (not b!6804373) (not bm!618326) (not d!2138185) (not b!6804361) (not b!6804538) (not b!6804587) (not b!6804184) (not b!6804517) (not b!6804072) (not b!6804625) (not d!2138387) (not bm!618405) (not b!6804560) (not bm!618337) (not b!6804189) (not d!2138195) (not b!6804592) (not bm!618277) (not d!2138395) (not b!6804368) (not d!2137917) (not b!6803769) (not b!6804584) (not d!2138169) (not b!6804482) (not bm!618284) (not b!6804134) (not d!2137949) (not b!6803798) (not b!6804365) (not b!6804579) (not b!6804487) (not d!2138289) (not d!2138231) (not d!2138287) (not bm!618331) (not b!6804150) (not b!6804599) (not b!6804513) (not b!6804122) (not bm!618349) (not b!6804534) (not b!6804523) (not b!6804596) (not d!2138151) (not b_lambda!256537) (not d!2138123) (not d!2138339) (not b!6804152) (not b!6804484) (not b!6804107) (not bm!618364) (not b!6804621) (not d!2138213) (not bm!618393) (not bs!1814021) (not d!2138209) (not bm!618352) (not bm!618402) (not b!6804485) (not bm!618392) (not b!6804337) (not d!2138303) (not b!6804555) (not b!6804501) (not d!2137983) (not b!6804120) (not bm!618391) (not b!6804079) (not b!6804130) (not bm!618335) (not b!6804239) (not b!6803796) (not b!6804065) (not b!6804367) (not b!6804179) (not b!6804290) (not b!6804434) (not b!6804551) (not setNonEmpty!46654) (not b!6804542) (not b!6804586) (not b!6804187) (not b!6804071) (not b!6804508) (not b!6804615) (not bm!618389) (not b!6804550) (not b!6804527) (not b!6804304) (not b!6804565) (not bm!618330) (not d!2137985) (not b!6804266) (not b!6804317) (not d!2138225) (not d!2138215) (not d!2138373) (not bm!618371) (not d!2138327) (not d!2138409) (not b!6804495) (not b!6804404) (not b!6804327) (not bm!618357) (not bm!618280) (not b!6804502) (not b!6804183) (not bm!618372) (not b!6804332) (not d!2138155) (not b!6804180) (not d!2138411) (not b!6804554) (not b!6804273) (not b!6803767) (not b!6804583) (not b!6804573) (not b!6804265) (not d!2138331) (not b!6804369) (not d!2138203) (not bs!1814020) (not b!6804259) (not d!2138333) (not b!6804394) (not d!2138081) (not b!6804119) (not b!6804363) (not b!6804073) (not b!6804171) (not setNonEmpty!46650) (not b!6804129) (not b!6804060) (not b_lambda!256437) (not b!6804598) (not b!6804574) (not d!2138113) (not b!6804465) (not d!2138311) (not b!6804536) (not b!6804408) (not b_lambda!256527) (not b!6804543) (not bm!618412))
(check-sat)
