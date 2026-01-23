; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!560172 () Bool)

(assert start!560172)

(declare-fun b!5313420 () Bool)

(assert (=> b!5313420 true))

(assert (=> b!5313420 true))

(declare-fun lambda!270833 () Int)

(declare-fun lambda!270832 () Int)

(assert (=> b!5313420 (not (= lambda!270833 lambda!270832))))

(assert (=> b!5313420 true))

(assert (=> b!5313420 true))

(declare-fun b!5313407 () Bool)

(assert (=> b!5313407 true))

(declare-fun b!5313406 () Bool)

(declare-fun e!3301587 () Bool)

(declare-datatypes ((C!30206 0))(
  ( (C!30207 (val!24805 Int)) )
))
(declare-datatypes ((Regex!14968 0))(
  ( (ElementMatch!14968 (c!923072 C!30206)) (Concat!23813 (regOne!30448 Regex!14968) (regTwo!30448 Regex!14968)) (EmptyExpr!14968) (Star!14968 (reg!15297 Regex!14968)) (EmptyLang!14968) (Union!14968 (regOne!30449 Regex!14968) (regTwo!30449 Regex!14968)) )
))
(declare-fun r!7292 () Regex!14968)

(declare-fun nullable!5137 (Regex!14968) Bool)

(assert (=> b!5313406 (= e!3301587 (nullable!5137 (regOne!30448 (regOne!30448 r!7292))))))

(declare-fun e!3301596 () Bool)

(declare-fun e!3301591 () Bool)

(assert (=> b!5313407 (= e!3301596 e!3301591)))

(declare-fun res!2254180 () Bool)

(assert (=> b!5313407 (=> res!2254180 e!3301591)))

(declare-datatypes ((List!61203 0))(
  ( (Nil!61079) (Cons!61079 (h!67527 C!30206) (t!374408 List!61203)) )
))
(declare-fun s!2326 () List!61203)

(assert (=> b!5313407 (= res!2254180 (or (and (is-ElementMatch!14968 (regOne!30448 r!7292)) (= (c!923072 (regOne!30448 r!7292)) (h!67527 s!2326))) (is-Union!14968 (regOne!30448 r!7292))))))

(declare-datatypes ((Unit!153390 0))(
  ( (Unit!153391) )
))
(declare-fun lt!2170911 () Unit!153390)

(declare-fun e!3301594 () Unit!153390)

(assert (=> b!5313407 (= lt!2170911 e!3301594)))

(declare-fun c!923071 () Bool)

(declare-datatypes ((List!61204 0))(
  ( (Nil!61080) (Cons!61080 (h!67528 Regex!14968) (t!374409 List!61204)) )
))
(declare-datatypes ((Context!8704 0))(
  ( (Context!8705 (exprs!4852 List!61204)) )
))
(declare-datatypes ((List!61205 0))(
  ( (Nil!61081) (Cons!61081 (h!67529 Context!8704) (t!374410 List!61205)) )
))
(declare-fun zl!343 () List!61205)

(assert (=> b!5313407 (= c!923071 (nullable!5137 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun z!1189 () (Set Context!8704))

(declare-fun lambda!270834 () Int)

(declare-fun flatMap!695 ((Set Context!8704) Int) (Set Context!8704))

(declare-fun derivationStepZipperUp!340 (Context!8704 C!30206) (Set Context!8704))

(assert (=> b!5313407 (= (flatMap!695 z!1189 lambda!270834) (derivationStepZipperUp!340 (h!67529 zl!343) (h!67527 s!2326)))))

(declare-fun lt!2170914 () Unit!153390)

(declare-fun lemmaFlatMapOnSingletonSet!227 ((Set Context!8704) Context!8704 Int) Unit!153390)

(assert (=> b!5313407 (= lt!2170914 (lemmaFlatMapOnSingletonSet!227 z!1189 (h!67529 zl!343) lambda!270834))))

(declare-fun lt!2170910 () (Set Context!8704))

(declare-fun lt!2170917 () Context!8704)

(assert (=> b!5313407 (= lt!2170910 (derivationStepZipperUp!340 lt!2170917 (h!67527 s!2326)))))

(declare-fun lt!2170908 () (Set Context!8704))

(declare-fun derivationStepZipperDown!416 (Regex!14968 Context!8704 C!30206) (Set Context!8704))

(assert (=> b!5313407 (= lt!2170908 (derivationStepZipperDown!416 (h!67528 (exprs!4852 (h!67529 zl!343))) lt!2170917 (h!67527 s!2326)))))

(assert (=> b!5313407 (= lt!2170917 (Context!8705 (t!374409 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun lt!2170912 () (Set Context!8704))

(assert (=> b!5313407 (= lt!2170912 (derivationStepZipperUp!340 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343))))) (h!67527 s!2326)))))

(declare-fun b!5313408 () Bool)

(declare-fun e!3301595 () Bool)

(declare-fun matchZipper!1212 ((Set Context!8704) List!61203) Bool)

(assert (=> b!5313408 (= e!3301595 (matchZipper!1212 lt!2170910 (t!374408 s!2326)))))

(declare-fun b!5313409 () Bool)

(declare-fun res!2254179 () Bool)

(declare-fun e!3301588 () Bool)

(assert (=> b!5313409 (=> res!2254179 e!3301588)))

(assert (=> b!5313409 (= res!2254179 (not (is-Cons!61080 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun b!5313411 () Bool)

(declare-fun e!3301592 () Bool)

(declare-fun tp_is_empty!39189 () Bool)

(declare-fun tp!1479893 () Bool)

(assert (=> b!5313411 (= e!3301592 (and tp_is_empty!39189 tp!1479893))))

(declare-fun b!5313412 () Bool)

(declare-fun e!3301590 () Bool)

(declare-fun tp!1479891 () Bool)

(assert (=> b!5313412 (= e!3301590 tp!1479891)))

(declare-fun b!5313413 () Bool)

(declare-fun e!3301597 () Bool)

(declare-fun tp!1479892 () Bool)

(declare-fun tp!1479897 () Bool)

(assert (=> b!5313413 (= e!3301597 (and tp!1479892 tp!1479897))))

(declare-fun b!5313414 () Bool)

(declare-fun res!2254170 () Bool)

(assert (=> b!5313414 (=> res!2254170 e!3301588)))

(assert (=> b!5313414 (= res!2254170 (or (is-EmptyExpr!14968 r!7292) (is-EmptyLang!14968 r!7292) (is-ElementMatch!14968 r!7292) (is-Union!14968 r!7292) (not (is-Concat!23813 r!7292))))))

(declare-fun b!5313415 () Bool)

(declare-fun res!2254174 () Bool)

(assert (=> b!5313415 (=> res!2254174 e!3301591)))

(assert (=> b!5313415 (= res!2254174 (not (is-Concat!23813 (regOne!30448 r!7292))))))

(declare-fun b!5313416 () Bool)

(declare-fun validRegex!6704 (Regex!14968) Bool)

(assert (=> b!5313416 (= e!3301591 (validRegex!6704 (regOne!30448 (regOne!30448 r!7292))))))

(declare-fun b!5313417 () Bool)

(declare-fun Unit!153392 () Unit!153390)

(assert (=> b!5313417 (= e!3301594 Unit!153392)))

(declare-fun setIsEmpty!34172 () Bool)

(declare-fun setRes!34172 () Bool)

(assert (=> setIsEmpty!34172 setRes!34172))

(declare-fun b!5313418 () Bool)

(declare-fun res!2254181 () Bool)

(assert (=> b!5313418 (=> res!2254181 e!3301588)))

(declare-fun isEmpty!33045 (List!61205) Bool)

(assert (=> b!5313418 (= res!2254181 (not (isEmpty!33045 (t!374410 zl!343))))))

(declare-fun b!5313419 () Bool)

(declare-fun res!2254178 () Bool)

(assert (=> b!5313419 (=> res!2254178 e!3301596)))

(declare-fun isEmpty!33046 (List!61204) Bool)

(assert (=> b!5313419 (= res!2254178 (isEmpty!33046 (t!374409 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun res!2254177 () Bool)

(declare-fun e!3301598 () Bool)

(assert (=> start!560172 (=> (not res!2254177) (not e!3301598))))

(assert (=> start!560172 (= res!2254177 (validRegex!6704 r!7292))))

(assert (=> start!560172 e!3301598))

(assert (=> start!560172 e!3301597))

(declare-fun condSetEmpty!34172 () Bool)

(assert (=> start!560172 (= condSetEmpty!34172 (= z!1189 (as set.empty (Set Context!8704))))))

(assert (=> start!560172 setRes!34172))

(declare-fun e!3301589 () Bool)

(assert (=> start!560172 e!3301589))

(assert (=> start!560172 e!3301592))

(declare-fun b!5313410 () Bool)

(declare-fun e!3301593 () Bool)

(declare-fun tp!1479899 () Bool)

(assert (=> b!5313410 (= e!3301593 tp!1479899)))

(assert (=> b!5313420 (= e!3301588 e!3301596)))

(declare-fun res!2254184 () Bool)

(assert (=> b!5313420 (=> res!2254184 e!3301596)))

(declare-fun lt!2170913 () Bool)

(declare-fun lt!2170915 () Bool)

(assert (=> b!5313420 (= res!2254184 (or (not (= lt!2170915 lt!2170913)) (is-Nil!61079 s!2326)))))

(declare-fun Exists!2149 (Int) Bool)

(assert (=> b!5313420 (= (Exists!2149 lambda!270832) (Exists!2149 lambda!270833))))

(declare-fun lt!2170918 () Unit!153390)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!803 (Regex!14968 Regex!14968 List!61203) Unit!153390)

(assert (=> b!5313420 (= lt!2170918 (lemmaExistCutMatchRandMatchRSpecEquivalent!803 (regOne!30448 r!7292) (regTwo!30448 r!7292) s!2326))))

(assert (=> b!5313420 (= lt!2170913 (Exists!2149 lambda!270832))))

(declare-datatypes ((tuple2!64334 0))(
  ( (tuple2!64335 (_1!35470 List!61203) (_2!35470 List!61203)) )
))
(declare-datatypes ((Option!15079 0))(
  ( (None!15078) (Some!15078 (v!51107 tuple2!64334)) )
))
(declare-fun isDefined!11782 (Option!15079) Bool)

(declare-fun findConcatSeparation!1493 (Regex!14968 Regex!14968 List!61203 List!61203 List!61203) Option!15079)

(assert (=> b!5313420 (= lt!2170913 (isDefined!11782 (findConcatSeparation!1493 (regOne!30448 r!7292) (regTwo!30448 r!7292) Nil!61079 s!2326 s!2326)))))

(declare-fun lt!2170909 () Unit!153390)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1257 (Regex!14968 Regex!14968 List!61203) Unit!153390)

(assert (=> b!5313420 (= lt!2170909 (lemmaFindConcatSeparationEquivalentToExists!1257 (regOne!30448 r!7292) (regTwo!30448 r!7292) s!2326))))

(declare-fun b!5313421 () Bool)

(assert (=> b!5313421 (= e!3301598 (not e!3301588))))

(declare-fun res!2254185 () Bool)

(assert (=> b!5313421 (=> res!2254185 e!3301588)))

(assert (=> b!5313421 (= res!2254185 (not (is-Cons!61081 zl!343)))))

(declare-fun matchRSpec!2071 (Regex!14968 List!61203) Bool)

(assert (=> b!5313421 (= lt!2170915 (matchRSpec!2071 r!7292 s!2326))))

(declare-fun matchR!7153 (Regex!14968 List!61203) Bool)

(assert (=> b!5313421 (= lt!2170915 (matchR!7153 r!7292 s!2326))))

(declare-fun lt!2170907 () Unit!153390)

(declare-fun mainMatchTheorem!2071 (Regex!14968 List!61203) Unit!153390)

(assert (=> b!5313421 (= lt!2170907 (mainMatchTheorem!2071 r!7292 s!2326))))

(declare-fun b!5313422 () Bool)

(declare-fun res!2254171 () Bool)

(assert (=> b!5313422 (=> res!2254171 e!3301591)))

(assert (=> b!5313422 (= res!2254171 e!3301587)))

(declare-fun res!2254173 () Bool)

(assert (=> b!5313422 (=> (not res!2254173) (not e!3301587))))

(assert (=> b!5313422 (= res!2254173 (is-Concat!23813 (regOne!30448 r!7292)))))

(declare-fun b!5313423 () Bool)

(declare-fun res!2254182 () Bool)

(assert (=> b!5313423 (=> res!2254182 e!3301588)))

(declare-fun generalisedConcat!637 (List!61204) Regex!14968)

(assert (=> b!5313423 (= res!2254182 (not (= r!7292 (generalisedConcat!637 (exprs!4852 (h!67529 zl!343))))))))

(declare-fun b!5313424 () Bool)

(declare-fun res!2254172 () Bool)

(assert (=> b!5313424 (=> (not res!2254172) (not e!3301598))))

(declare-fun toList!8752 ((Set Context!8704)) List!61205)

(assert (=> b!5313424 (= res!2254172 (= (toList!8752 z!1189) zl!343))))

(declare-fun b!5313425 () Bool)

(declare-fun Unit!153393 () Unit!153390)

(assert (=> b!5313425 (= e!3301594 Unit!153393)))

(declare-fun lt!2170916 () Unit!153390)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!205 ((Set Context!8704) (Set Context!8704) List!61203) Unit!153390)

(assert (=> b!5313425 (= lt!2170916 (lemmaZipperConcatMatchesSameAsBothZippers!205 lt!2170908 lt!2170910 (t!374408 s!2326)))))

(declare-fun res!2254175 () Bool)

(assert (=> b!5313425 (= res!2254175 (matchZipper!1212 lt!2170908 (t!374408 s!2326)))))

(assert (=> b!5313425 (=> res!2254175 e!3301595)))

(assert (=> b!5313425 (= (matchZipper!1212 (set.union lt!2170908 lt!2170910) (t!374408 s!2326)) e!3301595)))

(declare-fun b!5313426 () Bool)

(declare-fun tp!1479894 () Bool)

(assert (=> b!5313426 (= e!3301597 tp!1479894)))

(declare-fun b!5313427 () Bool)

(declare-fun tp!1479890 () Bool)

(declare-fun tp!1479898 () Bool)

(assert (=> b!5313427 (= e!3301597 (and tp!1479890 tp!1479898))))

(declare-fun b!5313428 () Bool)

(assert (=> b!5313428 (= e!3301597 tp_is_empty!39189)))

(declare-fun b!5313429 () Bool)

(declare-fun tp!1479895 () Bool)

(declare-fun inv!80668 (Context!8704) Bool)

(assert (=> b!5313429 (= e!3301589 (and (inv!80668 (h!67529 zl!343)) e!3301590 tp!1479895))))

(declare-fun b!5313430 () Bool)

(declare-fun res!2254183 () Bool)

(assert (=> b!5313430 (=> (not res!2254183) (not e!3301598))))

(declare-fun unfocusZipper!710 (List!61205) Regex!14968)

(assert (=> b!5313430 (= res!2254183 (= r!7292 (unfocusZipper!710 zl!343)))))

(declare-fun tp!1479896 () Bool)

(declare-fun setNonEmpty!34172 () Bool)

(declare-fun setElem!34172 () Context!8704)

(assert (=> setNonEmpty!34172 (= setRes!34172 (and tp!1479896 (inv!80668 setElem!34172) e!3301593))))

(declare-fun setRest!34172 () (Set Context!8704))

(assert (=> setNonEmpty!34172 (= z!1189 (set.union (set.insert setElem!34172 (as set.empty (Set Context!8704))) setRest!34172))))

(declare-fun b!5313431 () Bool)

(declare-fun res!2254176 () Bool)

(assert (=> b!5313431 (=> res!2254176 e!3301588)))

(declare-fun generalisedUnion!897 (List!61204) Regex!14968)

(declare-fun unfocusZipperList!410 (List!61205) List!61204)

(assert (=> b!5313431 (= res!2254176 (not (= r!7292 (generalisedUnion!897 (unfocusZipperList!410 zl!343)))))))

(assert (= (and start!560172 res!2254177) b!5313424))

(assert (= (and b!5313424 res!2254172) b!5313430))

(assert (= (and b!5313430 res!2254183) b!5313421))

(assert (= (and b!5313421 (not res!2254185)) b!5313418))

(assert (= (and b!5313418 (not res!2254181)) b!5313423))

(assert (= (and b!5313423 (not res!2254182)) b!5313409))

(assert (= (and b!5313409 (not res!2254179)) b!5313431))

(assert (= (and b!5313431 (not res!2254176)) b!5313414))

(assert (= (and b!5313414 (not res!2254170)) b!5313420))

(assert (= (and b!5313420 (not res!2254184)) b!5313419))

(assert (= (and b!5313419 (not res!2254178)) b!5313407))

(assert (= (and b!5313407 c!923071) b!5313425))

(assert (= (and b!5313407 (not c!923071)) b!5313417))

(assert (= (and b!5313425 (not res!2254175)) b!5313408))

(assert (= (and b!5313407 (not res!2254180)) b!5313422))

(assert (= (and b!5313422 res!2254173) b!5313406))

(assert (= (and b!5313422 (not res!2254171)) b!5313415))

(assert (= (and b!5313415 (not res!2254174)) b!5313416))

(assert (= (and start!560172 (is-ElementMatch!14968 r!7292)) b!5313428))

(assert (= (and start!560172 (is-Concat!23813 r!7292)) b!5313427))

(assert (= (and start!560172 (is-Star!14968 r!7292)) b!5313426))

(assert (= (and start!560172 (is-Union!14968 r!7292)) b!5313413))

(assert (= (and start!560172 condSetEmpty!34172) setIsEmpty!34172))

(assert (= (and start!560172 (not condSetEmpty!34172)) setNonEmpty!34172))

(assert (= setNonEmpty!34172 b!5313410))

(assert (= b!5313429 b!5313412))

(assert (= (and start!560172 (is-Cons!61081 zl!343)) b!5313429))

(assert (= (and start!560172 (is-Cons!61079 s!2326)) b!5313411))

(declare-fun m!6350392 () Bool)

(assert (=> b!5313406 m!6350392))

(declare-fun m!6350394 () Bool)

(assert (=> start!560172 m!6350394))

(declare-fun m!6350396 () Bool)

(assert (=> b!5313416 m!6350396))

(declare-fun m!6350398 () Bool)

(assert (=> b!5313420 m!6350398))

(declare-fun m!6350400 () Bool)

(assert (=> b!5313420 m!6350400))

(declare-fun m!6350402 () Bool)

(assert (=> b!5313420 m!6350402))

(declare-fun m!6350404 () Bool)

(assert (=> b!5313420 m!6350404))

(assert (=> b!5313420 m!6350404))

(declare-fun m!6350406 () Bool)

(assert (=> b!5313420 m!6350406))

(assert (=> b!5313420 m!6350398))

(declare-fun m!6350408 () Bool)

(assert (=> b!5313420 m!6350408))

(declare-fun m!6350410 () Bool)

(assert (=> b!5313418 m!6350410))

(declare-fun m!6350412 () Bool)

(assert (=> b!5313423 m!6350412))

(declare-fun m!6350414 () Bool)

(assert (=> b!5313430 m!6350414))

(declare-fun m!6350416 () Bool)

(assert (=> b!5313407 m!6350416))

(declare-fun m!6350418 () Bool)

(assert (=> b!5313407 m!6350418))

(declare-fun m!6350420 () Bool)

(assert (=> b!5313407 m!6350420))

(declare-fun m!6350422 () Bool)

(assert (=> b!5313407 m!6350422))

(declare-fun m!6350424 () Bool)

(assert (=> b!5313407 m!6350424))

(declare-fun m!6350426 () Bool)

(assert (=> b!5313407 m!6350426))

(declare-fun m!6350428 () Bool)

(assert (=> b!5313407 m!6350428))

(declare-fun m!6350430 () Bool)

(assert (=> b!5313429 m!6350430))

(declare-fun m!6350432 () Bool)

(assert (=> b!5313424 m!6350432))

(declare-fun m!6350434 () Bool)

(assert (=> b!5313431 m!6350434))

(assert (=> b!5313431 m!6350434))

(declare-fun m!6350436 () Bool)

(assert (=> b!5313431 m!6350436))

(declare-fun m!6350438 () Bool)

(assert (=> b!5313421 m!6350438))

(declare-fun m!6350440 () Bool)

(assert (=> b!5313421 m!6350440))

(declare-fun m!6350442 () Bool)

(assert (=> b!5313421 m!6350442))

(declare-fun m!6350444 () Bool)

(assert (=> setNonEmpty!34172 m!6350444))

(declare-fun m!6350446 () Bool)

(assert (=> b!5313419 m!6350446))

(declare-fun m!6350448 () Bool)

(assert (=> b!5313408 m!6350448))

(declare-fun m!6350450 () Bool)

(assert (=> b!5313425 m!6350450))

(declare-fun m!6350452 () Bool)

(assert (=> b!5313425 m!6350452))

(declare-fun m!6350454 () Bool)

(assert (=> b!5313425 m!6350454))

(push 1)

(assert (not b!5313429))

(assert (not b!5313426))

(assert (not b!5313427))

(assert (not setNonEmpty!34172))

(assert (not b!5313423))

(assert (not b!5313425))

(assert (not b!5313410))

(assert (not b!5313407))

(assert (not b!5313413))

(assert (not b!5313420))

(assert (not b!5313416))

(assert tp_is_empty!39189)

(assert (not b!5313430))

(assert (not b!5313408))

(assert (not b!5313406))

(assert (not b!5313424))

(assert (not b!5313431))

(assert (not b!5313419))

(assert (not b!5313418))

(assert (not b!5313411))

(assert (not b!5313412))

(assert (not start!560172))

(assert (not b!5313421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1707140 () Bool)

(declare-fun dynLambda!24140 (Int Context!8704) (Set Context!8704))

(assert (=> d!1707140 (= (flatMap!695 z!1189 lambda!270834) (dynLambda!24140 lambda!270834 (h!67529 zl!343)))))

(declare-fun lt!2170957 () Unit!153390)

(declare-fun choose!39758 ((Set Context!8704) Context!8704 Int) Unit!153390)

(assert (=> d!1707140 (= lt!2170957 (choose!39758 z!1189 (h!67529 zl!343) lambda!270834))))

(assert (=> d!1707140 (= z!1189 (set.insert (h!67529 zl!343) (as set.empty (Set Context!8704))))))

(assert (=> d!1707140 (= (lemmaFlatMapOnSingletonSet!227 z!1189 (h!67529 zl!343) lambda!270834) lt!2170957)))

(declare-fun b_lambda!204453 () Bool)

(assert (=> (not b_lambda!204453) (not d!1707140)))

(declare-fun bs!1231919 () Bool)

(assert (= bs!1231919 d!1707140))

(assert (=> bs!1231919 m!6350426))

(declare-fun m!6350520 () Bool)

(assert (=> bs!1231919 m!6350520))

(declare-fun m!6350522 () Bool)

(assert (=> bs!1231919 m!6350522))

(declare-fun m!6350524 () Bool)

(assert (=> bs!1231919 m!6350524))

(assert (=> b!5313407 d!1707140))

(declare-fun b!5313556 () Bool)

(declare-fun e!3301655 () (Set Context!8704))

(assert (=> b!5313556 (= e!3301655 (as set.empty (Set Context!8704)))))

(declare-fun b!5313557 () Bool)

(declare-fun e!3301656 () (Set Context!8704))

(assert (=> b!5313557 (= e!3301656 (set.insert lt!2170917 (as set.empty (Set Context!8704))))))

(declare-fun call!378883 () (Set Context!8704))

(declare-fun bm!378876 () Bool)

(declare-fun c!923093 () Bool)

(declare-fun call!378886 () List!61204)

(declare-fun c!923090 () Bool)

(declare-fun c!923092 () Bool)

(assert (=> bm!378876 (= call!378883 (derivationStepZipperDown!416 (ite c!923092 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923090 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923093 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343))))))) (ite (or c!923092 c!923090) lt!2170917 (Context!8705 call!378886)) (h!67527 s!2326)))))

(declare-fun bm!378877 () Bool)

(declare-fun call!378884 () (Set Context!8704))

(assert (=> bm!378877 (= call!378884 call!378883)))

(declare-fun b!5313558 () Bool)

(declare-fun call!378882 () (Set Context!8704))

(assert (=> b!5313558 (= e!3301655 call!378882)))

(declare-fun bm!378878 () Bool)

(declare-fun call!378881 () List!61204)

(assert (=> bm!378878 (= call!378886 call!378881)))

(declare-fun call!378885 () (Set Context!8704))

(declare-fun bm!378879 () Bool)

(assert (=> bm!378879 (= call!378885 (derivationStepZipperDown!416 (ite c!923092 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343))))) (ite c!923092 lt!2170917 (Context!8705 call!378881)) (h!67527 s!2326)))))

(declare-fun b!5313559 () Bool)

(declare-fun e!3301653 () Bool)

(assert (=> b!5313559 (= c!923090 e!3301653)))

(declare-fun res!2254248 () Bool)

(assert (=> b!5313559 (=> (not res!2254248) (not e!3301653))))

(assert (=> b!5313559 (= res!2254248 (is-Concat!23813 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun e!3301657 () (Set Context!8704))

(declare-fun e!3301654 () (Set Context!8704))

(assert (=> b!5313559 (= e!3301657 e!3301654)))

(declare-fun b!5313560 () Bool)

(declare-fun c!923091 () Bool)

(assert (=> b!5313560 (= c!923091 (is-Star!14968 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun e!3301658 () (Set Context!8704))

(assert (=> b!5313560 (= e!3301658 e!3301655)))

(declare-fun b!5313561 () Bool)

(assert (=> b!5313561 (= e!3301657 (set.union call!378883 call!378885))))

(declare-fun b!5313562 () Bool)

(assert (=> b!5313562 (= e!3301654 e!3301658)))

(assert (=> b!5313562 (= c!923093 (is-Concat!23813 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun b!5313563 () Bool)

(assert (=> b!5313563 (= e!3301658 call!378882)))

(declare-fun b!5313564 () Bool)

(assert (=> b!5313564 (= e!3301653 (nullable!5137 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343))))))))

(declare-fun d!1707142 () Bool)

(declare-fun c!923094 () Bool)

(assert (=> d!1707142 (= c!923094 (and (is-ElementMatch!14968 (h!67528 (exprs!4852 (h!67529 zl!343)))) (= (c!923072 (h!67528 (exprs!4852 (h!67529 zl!343)))) (h!67527 s!2326))))))

(assert (=> d!1707142 (= (derivationStepZipperDown!416 (h!67528 (exprs!4852 (h!67529 zl!343))) lt!2170917 (h!67527 s!2326)) e!3301656)))

(declare-fun b!5313565 () Bool)

(assert (=> b!5313565 (= e!3301656 e!3301657)))

(assert (=> b!5313565 (= c!923092 (is-Union!14968 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun bm!378880 () Bool)

(declare-fun $colon$colon!1387 (List!61204 Regex!14968) List!61204)

(assert (=> bm!378880 (= call!378881 ($colon$colon!1387 (exprs!4852 lt!2170917) (ite (or c!923090 c!923093) (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (h!67528 (exprs!4852 (h!67529 zl!343))))))))

(declare-fun b!5313566 () Bool)

(assert (=> b!5313566 (= e!3301654 (set.union call!378885 call!378884))))

(declare-fun bm!378881 () Bool)

(assert (=> bm!378881 (= call!378882 call!378884)))

(assert (= (and d!1707142 c!923094) b!5313557))

(assert (= (and d!1707142 (not c!923094)) b!5313565))

(assert (= (and b!5313565 c!923092) b!5313561))

(assert (= (and b!5313565 (not c!923092)) b!5313559))

(assert (= (and b!5313559 res!2254248) b!5313564))

(assert (= (and b!5313559 c!923090) b!5313566))

(assert (= (and b!5313559 (not c!923090)) b!5313562))

(assert (= (and b!5313562 c!923093) b!5313563))

(assert (= (and b!5313562 (not c!923093)) b!5313560))

(assert (= (and b!5313560 c!923091) b!5313558))

(assert (= (and b!5313560 (not c!923091)) b!5313556))

(assert (= (or b!5313563 b!5313558) bm!378878))

(assert (= (or b!5313563 b!5313558) bm!378881))

(assert (= (or b!5313566 bm!378878) bm!378880))

(assert (= (or b!5313566 bm!378881) bm!378877))

(assert (= (or b!5313561 b!5313566) bm!378879))

(assert (= (or b!5313561 bm!378877) bm!378876))

(declare-fun m!6350526 () Bool)

(assert (=> bm!378880 m!6350526))

(declare-fun m!6350528 () Bool)

(assert (=> b!5313564 m!6350528))

(declare-fun m!6350530 () Bool)

(assert (=> bm!378876 m!6350530))

(declare-fun m!6350532 () Bool)

(assert (=> b!5313557 m!6350532))

(declare-fun m!6350534 () Bool)

(assert (=> bm!378879 m!6350534))

(assert (=> b!5313407 d!1707142))

(declare-fun d!1707144 () Bool)

(declare-fun nullableFct!1489 (Regex!14968) Bool)

(assert (=> d!1707144 (= (nullable!5137 (h!67528 (exprs!4852 (h!67529 zl!343)))) (nullableFct!1489 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun bs!1231920 () Bool)

(assert (= bs!1231920 d!1707144))

(declare-fun m!6350536 () Bool)

(assert (=> bs!1231920 m!6350536))

(assert (=> b!5313407 d!1707144))

(declare-fun bm!378884 () Bool)

(declare-fun call!378889 () (Set Context!8704))

(assert (=> bm!378884 (= call!378889 (derivationStepZipperDown!416 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343))))))) (Context!8705 (t!374409 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))) (h!67527 s!2326)))))

(declare-fun d!1707146 () Bool)

(declare-fun c!923100 () Bool)

(declare-fun e!3301667 () Bool)

(assert (=> d!1707146 (= c!923100 e!3301667)))

(declare-fun res!2254251 () Bool)

(assert (=> d!1707146 (=> (not res!2254251) (not e!3301667))))

(assert (=> d!1707146 (= res!2254251 (is-Cons!61080 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343))))))))))

(declare-fun e!3301666 () (Set Context!8704))

(assert (=> d!1707146 (= (derivationStepZipperUp!340 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343))))) (h!67527 s!2326)) e!3301666)))

(declare-fun b!5313577 () Bool)

(declare-fun e!3301665 () (Set Context!8704))

(assert (=> b!5313577 (= e!3301665 call!378889)))

(declare-fun b!5313578 () Bool)

(assert (=> b!5313578 (= e!3301667 (nullable!5137 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))))))

(declare-fun b!5313579 () Bool)

(assert (=> b!5313579 (= e!3301666 (set.union call!378889 (derivationStepZipperUp!340 (Context!8705 (t!374409 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))) (h!67527 s!2326))))))

(declare-fun b!5313580 () Bool)

(assert (=> b!5313580 (= e!3301665 (as set.empty (Set Context!8704)))))

(declare-fun b!5313581 () Bool)

(assert (=> b!5313581 (= e!3301666 e!3301665)))

(declare-fun c!923099 () Bool)

(assert (=> b!5313581 (= c!923099 (is-Cons!61080 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343))))))))))

(assert (= (and d!1707146 res!2254251) b!5313578))

(assert (= (and d!1707146 c!923100) b!5313579))

(assert (= (and d!1707146 (not c!923100)) b!5313581))

(assert (= (and b!5313581 c!923099) b!5313577))

(assert (= (and b!5313581 (not c!923099)) b!5313580))

(assert (= (or b!5313579 b!5313577) bm!378884))

(declare-fun m!6350538 () Bool)

(assert (=> bm!378884 m!6350538))

(declare-fun m!6350540 () Bool)

(assert (=> b!5313578 m!6350540))

(declare-fun m!6350542 () Bool)

(assert (=> b!5313579 m!6350542))

(assert (=> b!5313407 d!1707146))

(declare-fun bm!378885 () Bool)

(declare-fun call!378890 () (Set Context!8704))

(assert (=> bm!378885 (= call!378890 (derivationStepZipperDown!416 (h!67528 (exprs!4852 (h!67529 zl!343))) (Context!8705 (t!374409 (exprs!4852 (h!67529 zl!343)))) (h!67527 s!2326)))))

(declare-fun d!1707148 () Bool)

(declare-fun c!923102 () Bool)

(declare-fun e!3301670 () Bool)

(assert (=> d!1707148 (= c!923102 e!3301670)))

(declare-fun res!2254252 () Bool)

(assert (=> d!1707148 (=> (not res!2254252) (not e!3301670))))

(assert (=> d!1707148 (= res!2254252 (is-Cons!61080 (exprs!4852 (h!67529 zl!343))))))

(declare-fun e!3301669 () (Set Context!8704))

(assert (=> d!1707148 (= (derivationStepZipperUp!340 (h!67529 zl!343) (h!67527 s!2326)) e!3301669)))

(declare-fun b!5313582 () Bool)

(declare-fun e!3301668 () (Set Context!8704))

(assert (=> b!5313582 (= e!3301668 call!378890)))

(declare-fun b!5313583 () Bool)

(assert (=> b!5313583 (= e!3301670 (nullable!5137 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun b!5313584 () Bool)

(assert (=> b!5313584 (= e!3301669 (set.union call!378890 (derivationStepZipperUp!340 (Context!8705 (t!374409 (exprs!4852 (h!67529 zl!343)))) (h!67527 s!2326))))))

(declare-fun b!5313585 () Bool)

(assert (=> b!5313585 (= e!3301668 (as set.empty (Set Context!8704)))))

(declare-fun b!5313586 () Bool)

(assert (=> b!5313586 (= e!3301669 e!3301668)))

(declare-fun c!923101 () Bool)

(assert (=> b!5313586 (= c!923101 (is-Cons!61080 (exprs!4852 (h!67529 zl!343))))))

(assert (= (and d!1707148 res!2254252) b!5313583))

(assert (= (and d!1707148 c!923102) b!5313584))

(assert (= (and d!1707148 (not c!923102)) b!5313586))

(assert (= (and b!5313586 c!923101) b!5313582))

(assert (= (and b!5313586 (not c!923101)) b!5313585))

(assert (= (or b!5313584 b!5313582) bm!378885))

(declare-fun m!6350544 () Bool)

(assert (=> bm!378885 m!6350544))

(assert (=> b!5313583 m!6350424))

(declare-fun m!6350546 () Bool)

(assert (=> b!5313584 m!6350546))

(assert (=> b!5313407 d!1707148))

(declare-fun d!1707150 () Bool)

(declare-fun choose!39759 ((Set Context!8704) Int) (Set Context!8704))

(assert (=> d!1707150 (= (flatMap!695 z!1189 lambda!270834) (choose!39759 z!1189 lambda!270834))))

(declare-fun bs!1231921 () Bool)

(assert (= bs!1231921 d!1707150))

(declare-fun m!6350548 () Bool)

(assert (=> bs!1231921 m!6350548))

(assert (=> b!5313407 d!1707150))

(declare-fun bm!378886 () Bool)

(declare-fun call!378891 () (Set Context!8704))

(assert (=> bm!378886 (= call!378891 (derivationStepZipperDown!416 (h!67528 (exprs!4852 lt!2170917)) (Context!8705 (t!374409 (exprs!4852 lt!2170917))) (h!67527 s!2326)))))

(declare-fun d!1707152 () Bool)

(declare-fun c!923104 () Bool)

(declare-fun e!3301673 () Bool)

(assert (=> d!1707152 (= c!923104 e!3301673)))

(declare-fun res!2254253 () Bool)

(assert (=> d!1707152 (=> (not res!2254253) (not e!3301673))))

(assert (=> d!1707152 (= res!2254253 (is-Cons!61080 (exprs!4852 lt!2170917)))))

(declare-fun e!3301672 () (Set Context!8704))

(assert (=> d!1707152 (= (derivationStepZipperUp!340 lt!2170917 (h!67527 s!2326)) e!3301672)))

(declare-fun b!5313587 () Bool)

(declare-fun e!3301671 () (Set Context!8704))

(assert (=> b!5313587 (= e!3301671 call!378891)))

(declare-fun b!5313588 () Bool)

(assert (=> b!5313588 (= e!3301673 (nullable!5137 (h!67528 (exprs!4852 lt!2170917))))))

(declare-fun b!5313589 () Bool)

(assert (=> b!5313589 (= e!3301672 (set.union call!378891 (derivationStepZipperUp!340 (Context!8705 (t!374409 (exprs!4852 lt!2170917))) (h!67527 s!2326))))))

(declare-fun b!5313590 () Bool)

(assert (=> b!5313590 (= e!3301671 (as set.empty (Set Context!8704)))))

(declare-fun b!5313591 () Bool)

(assert (=> b!5313591 (= e!3301672 e!3301671)))

(declare-fun c!923103 () Bool)

(assert (=> b!5313591 (= c!923103 (is-Cons!61080 (exprs!4852 lt!2170917)))))

(assert (= (and d!1707152 res!2254253) b!5313588))

(assert (= (and d!1707152 c!923104) b!5313589))

(assert (= (and d!1707152 (not c!923104)) b!5313591))

(assert (= (and b!5313591 c!923103) b!5313587))

(assert (= (and b!5313591 (not c!923103)) b!5313590))

(assert (= (or b!5313589 b!5313587) bm!378886))

(declare-fun m!6350550 () Bool)

(assert (=> bm!378886 m!6350550))

(declare-fun m!6350552 () Bool)

(assert (=> b!5313588 m!6350552))

(declare-fun m!6350554 () Bool)

(assert (=> b!5313589 m!6350554))

(assert (=> b!5313407 d!1707152))

(declare-fun d!1707154 () Bool)

(assert (=> d!1707154 (= (nullable!5137 (regOne!30448 (regOne!30448 r!7292))) (nullableFct!1489 (regOne!30448 (regOne!30448 r!7292))))))

(declare-fun bs!1231922 () Bool)

(assert (= bs!1231922 d!1707154))

(declare-fun m!6350556 () Bool)

(assert (=> bs!1231922 m!6350556))

(assert (=> b!5313406 d!1707154))

(declare-fun b!5313611 () Bool)

(declare-fun res!2254267 () Bool)

(declare-fun e!3301694 () Bool)

(assert (=> b!5313611 (=> res!2254267 e!3301694)))

(assert (=> b!5313611 (= res!2254267 (not (is-Concat!23813 (regOne!30448 (regOne!30448 r!7292)))))))

(declare-fun e!3301691 () Bool)

(assert (=> b!5313611 (= e!3301691 e!3301694)))

(declare-fun bm!378893 () Bool)

(declare-fun call!378899 () Bool)

(declare-fun call!378898 () Bool)

(assert (=> bm!378893 (= call!378899 call!378898)))

(declare-fun bm!378894 () Bool)

(declare-fun call!378900 () Bool)

(declare-fun c!923109 () Bool)

(assert (=> bm!378894 (= call!378900 (validRegex!6704 (ite c!923109 (regTwo!30449 (regOne!30448 (regOne!30448 r!7292))) (regTwo!30448 (regOne!30448 (regOne!30448 r!7292))))))))

(declare-fun c!923110 () Bool)

(declare-fun bm!378895 () Bool)

(assert (=> bm!378895 (= call!378898 (validRegex!6704 (ite c!923110 (reg!15297 (regOne!30448 (regOne!30448 r!7292))) (ite c!923109 (regOne!30449 (regOne!30448 (regOne!30448 r!7292))) (regOne!30448 (regOne!30448 (regOne!30448 r!7292)))))))))

(declare-fun b!5313612 () Bool)

(declare-fun e!3301693 () Bool)

(assert (=> b!5313612 (= e!3301694 e!3301693)))

(declare-fun res!2254266 () Bool)

(assert (=> b!5313612 (=> (not res!2254266) (not e!3301693))))

(assert (=> b!5313612 (= res!2254266 call!378899)))

(declare-fun b!5313613 () Bool)

(declare-fun e!3301692 () Bool)

(assert (=> b!5313613 (= e!3301692 call!378900)))

(declare-fun b!5313614 () Bool)

(declare-fun e!3301690 () Bool)

(assert (=> b!5313614 (= e!3301690 e!3301691)))

(assert (=> b!5313614 (= c!923109 (is-Union!14968 (regOne!30448 (regOne!30448 r!7292))))))

(declare-fun b!5313615 () Bool)

(declare-fun e!3301688 () Bool)

(assert (=> b!5313615 (= e!3301690 e!3301688)))

(declare-fun res!2254265 () Bool)

(assert (=> b!5313615 (= res!2254265 (not (nullable!5137 (reg!15297 (regOne!30448 (regOne!30448 r!7292))))))))

(assert (=> b!5313615 (=> (not res!2254265) (not e!3301688))))

(declare-fun b!5313616 () Bool)

(declare-fun e!3301689 () Bool)

(assert (=> b!5313616 (= e!3301689 e!3301690)))

(assert (=> b!5313616 (= c!923110 (is-Star!14968 (regOne!30448 (regOne!30448 r!7292))))))

(declare-fun b!5313617 () Bool)

(declare-fun res!2254264 () Bool)

(assert (=> b!5313617 (=> (not res!2254264) (not e!3301692))))

(assert (=> b!5313617 (= res!2254264 call!378899)))

(assert (=> b!5313617 (= e!3301691 e!3301692)))

(declare-fun b!5313618 () Bool)

(assert (=> b!5313618 (= e!3301688 call!378898)))

(declare-fun d!1707156 () Bool)

(declare-fun res!2254268 () Bool)

(assert (=> d!1707156 (=> res!2254268 e!3301689)))

(assert (=> d!1707156 (= res!2254268 (is-ElementMatch!14968 (regOne!30448 (regOne!30448 r!7292))))))

(assert (=> d!1707156 (= (validRegex!6704 (regOne!30448 (regOne!30448 r!7292))) e!3301689)))

(declare-fun b!5313610 () Bool)

(assert (=> b!5313610 (= e!3301693 call!378900)))

(assert (= (and d!1707156 (not res!2254268)) b!5313616))

(assert (= (and b!5313616 c!923110) b!5313615))

(assert (= (and b!5313616 (not c!923110)) b!5313614))

(assert (= (and b!5313615 res!2254265) b!5313618))

(assert (= (and b!5313614 c!923109) b!5313617))

(assert (= (and b!5313614 (not c!923109)) b!5313611))

(assert (= (and b!5313617 res!2254264) b!5313613))

(assert (= (and b!5313611 (not res!2254267)) b!5313612))

(assert (= (and b!5313612 res!2254266) b!5313610))

(assert (= (or b!5313613 b!5313610) bm!378894))

(assert (= (or b!5313617 b!5313612) bm!378893))

(assert (= (or b!5313618 bm!378893) bm!378895))

(declare-fun m!6350558 () Bool)

(assert (=> bm!378894 m!6350558))

(declare-fun m!6350560 () Bool)

(assert (=> bm!378895 m!6350560))

(declare-fun m!6350562 () Bool)

(assert (=> b!5313615 m!6350562))

(assert (=> b!5313416 d!1707156))

(declare-fun e!3301697 () Bool)

(declare-fun d!1707158 () Bool)

(assert (=> d!1707158 (= (matchZipper!1212 (set.union lt!2170908 lt!2170910) (t!374408 s!2326)) e!3301697)))

(declare-fun res!2254271 () Bool)

(assert (=> d!1707158 (=> res!2254271 e!3301697)))

(assert (=> d!1707158 (= res!2254271 (matchZipper!1212 lt!2170908 (t!374408 s!2326)))))

(declare-fun lt!2170960 () Unit!153390)

(declare-fun choose!39760 ((Set Context!8704) (Set Context!8704) List!61203) Unit!153390)

(assert (=> d!1707158 (= lt!2170960 (choose!39760 lt!2170908 lt!2170910 (t!374408 s!2326)))))

(assert (=> d!1707158 (= (lemmaZipperConcatMatchesSameAsBothZippers!205 lt!2170908 lt!2170910 (t!374408 s!2326)) lt!2170960)))

(declare-fun b!5313621 () Bool)

(assert (=> b!5313621 (= e!3301697 (matchZipper!1212 lt!2170910 (t!374408 s!2326)))))

(assert (= (and d!1707158 (not res!2254271)) b!5313621))

(assert (=> d!1707158 m!6350454))

(assert (=> d!1707158 m!6350452))

(declare-fun m!6350564 () Bool)

(assert (=> d!1707158 m!6350564))

(assert (=> b!5313621 m!6350448))

(assert (=> b!5313425 d!1707158))

(declare-fun d!1707160 () Bool)

(declare-fun c!923113 () Bool)

(declare-fun isEmpty!33049 (List!61203) Bool)

(assert (=> d!1707160 (= c!923113 (isEmpty!33049 (t!374408 s!2326)))))

(declare-fun e!3301700 () Bool)

(assert (=> d!1707160 (= (matchZipper!1212 lt!2170908 (t!374408 s!2326)) e!3301700)))

(declare-fun b!5313626 () Bool)

(declare-fun nullableZipper!1337 ((Set Context!8704)) Bool)

(assert (=> b!5313626 (= e!3301700 (nullableZipper!1337 lt!2170908))))

(declare-fun b!5313627 () Bool)

(declare-fun derivationStepZipper!1211 ((Set Context!8704) C!30206) (Set Context!8704))

(declare-fun head!11392 (List!61203) C!30206)

(declare-fun tail!10489 (List!61203) List!61203)

(assert (=> b!5313627 (= e!3301700 (matchZipper!1212 (derivationStepZipper!1211 lt!2170908 (head!11392 (t!374408 s!2326))) (tail!10489 (t!374408 s!2326))))))

(assert (= (and d!1707160 c!923113) b!5313626))

(assert (= (and d!1707160 (not c!923113)) b!5313627))

(declare-fun m!6350566 () Bool)

(assert (=> d!1707160 m!6350566))

(declare-fun m!6350568 () Bool)

(assert (=> b!5313626 m!6350568))

(declare-fun m!6350570 () Bool)

(assert (=> b!5313627 m!6350570))

(assert (=> b!5313627 m!6350570))

(declare-fun m!6350572 () Bool)

(assert (=> b!5313627 m!6350572))

(declare-fun m!6350574 () Bool)

(assert (=> b!5313627 m!6350574))

(assert (=> b!5313627 m!6350572))

(assert (=> b!5313627 m!6350574))

(declare-fun m!6350576 () Bool)

(assert (=> b!5313627 m!6350576))

(assert (=> b!5313425 d!1707160))

(declare-fun d!1707162 () Bool)

(declare-fun c!923114 () Bool)

(assert (=> d!1707162 (= c!923114 (isEmpty!33049 (t!374408 s!2326)))))

(declare-fun e!3301701 () Bool)

(assert (=> d!1707162 (= (matchZipper!1212 (set.union lt!2170908 lt!2170910) (t!374408 s!2326)) e!3301701)))

(declare-fun b!5313628 () Bool)

(assert (=> b!5313628 (= e!3301701 (nullableZipper!1337 (set.union lt!2170908 lt!2170910)))))

(declare-fun b!5313629 () Bool)

(assert (=> b!5313629 (= e!3301701 (matchZipper!1212 (derivationStepZipper!1211 (set.union lt!2170908 lt!2170910) (head!11392 (t!374408 s!2326))) (tail!10489 (t!374408 s!2326))))))

(assert (= (and d!1707162 c!923114) b!5313628))

(assert (= (and d!1707162 (not c!923114)) b!5313629))

(assert (=> d!1707162 m!6350566))

(declare-fun m!6350578 () Bool)

(assert (=> b!5313628 m!6350578))

(assert (=> b!5313629 m!6350570))

(assert (=> b!5313629 m!6350570))

(declare-fun m!6350580 () Bool)

(assert (=> b!5313629 m!6350580))

(assert (=> b!5313629 m!6350574))

(assert (=> b!5313629 m!6350580))

(assert (=> b!5313629 m!6350574))

(declare-fun m!6350582 () Bool)

(assert (=> b!5313629 m!6350582))

(assert (=> b!5313425 d!1707162))

(declare-fun b!5313631 () Bool)

(declare-fun res!2254275 () Bool)

(declare-fun e!3301708 () Bool)

(assert (=> b!5313631 (=> res!2254275 e!3301708)))

(assert (=> b!5313631 (= res!2254275 (not (is-Concat!23813 r!7292)))))

(declare-fun e!3301705 () Bool)

(assert (=> b!5313631 (= e!3301705 e!3301708)))

(declare-fun bm!378896 () Bool)

(declare-fun call!378902 () Bool)

(declare-fun call!378901 () Bool)

(assert (=> bm!378896 (= call!378902 call!378901)))

(declare-fun bm!378897 () Bool)

(declare-fun call!378903 () Bool)

(declare-fun c!923115 () Bool)

(assert (=> bm!378897 (= call!378903 (validRegex!6704 (ite c!923115 (regTwo!30449 r!7292) (regTwo!30448 r!7292))))))

(declare-fun bm!378898 () Bool)

(declare-fun c!923116 () Bool)

(assert (=> bm!378898 (= call!378901 (validRegex!6704 (ite c!923116 (reg!15297 r!7292) (ite c!923115 (regOne!30449 r!7292) (regOne!30448 r!7292)))))))

(declare-fun b!5313632 () Bool)

(declare-fun e!3301707 () Bool)

(assert (=> b!5313632 (= e!3301708 e!3301707)))

(declare-fun res!2254274 () Bool)

(assert (=> b!5313632 (=> (not res!2254274) (not e!3301707))))

(assert (=> b!5313632 (= res!2254274 call!378902)))

(declare-fun b!5313633 () Bool)

(declare-fun e!3301706 () Bool)

(assert (=> b!5313633 (= e!3301706 call!378903)))

(declare-fun b!5313634 () Bool)

(declare-fun e!3301704 () Bool)

(assert (=> b!5313634 (= e!3301704 e!3301705)))

(assert (=> b!5313634 (= c!923115 (is-Union!14968 r!7292))))

(declare-fun b!5313635 () Bool)

(declare-fun e!3301702 () Bool)

(assert (=> b!5313635 (= e!3301704 e!3301702)))

(declare-fun res!2254273 () Bool)

(assert (=> b!5313635 (= res!2254273 (not (nullable!5137 (reg!15297 r!7292))))))

(assert (=> b!5313635 (=> (not res!2254273) (not e!3301702))))

(declare-fun b!5313636 () Bool)

(declare-fun e!3301703 () Bool)

(assert (=> b!5313636 (= e!3301703 e!3301704)))

(assert (=> b!5313636 (= c!923116 (is-Star!14968 r!7292))))

(declare-fun b!5313637 () Bool)

(declare-fun res!2254272 () Bool)

(assert (=> b!5313637 (=> (not res!2254272) (not e!3301706))))

(assert (=> b!5313637 (= res!2254272 call!378902)))

(assert (=> b!5313637 (= e!3301705 e!3301706)))

(declare-fun b!5313638 () Bool)

(assert (=> b!5313638 (= e!3301702 call!378901)))

(declare-fun d!1707164 () Bool)

(declare-fun res!2254276 () Bool)

(assert (=> d!1707164 (=> res!2254276 e!3301703)))

(assert (=> d!1707164 (= res!2254276 (is-ElementMatch!14968 r!7292))))

(assert (=> d!1707164 (= (validRegex!6704 r!7292) e!3301703)))

(declare-fun b!5313630 () Bool)

(assert (=> b!5313630 (= e!3301707 call!378903)))

(assert (= (and d!1707164 (not res!2254276)) b!5313636))

(assert (= (and b!5313636 c!923116) b!5313635))

(assert (= (and b!5313636 (not c!923116)) b!5313634))

(assert (= (and b!5313635 res!2254273) b!5313638))

(assert (= (and b!5313634 c!923115) b!5313637))

(assert (= (and b!5313634 (not c!923115)) b!5313631))

(assert (= (and b!5313637 res!2254272) b!5313633))

(assert (= (and b!5313631 (not res!2254275)) b!5313632))

(assert (= (and b!5313632 res!2254274) b!5313630))

(assert (= (or b!5313633 b!5313630) bm!378897))

(assert (= (or b!5313637 b!5313632) bm!378896))

(assert (= (or b!5313638 bm!378896) bm!378898))

(declare-fun m!6350584 () Bool)

(assert (=> bm!378897 m!6350584))

(declare-fun m!6350586 () Bool)

(assert (=> bm!378898 m!6350586))

(declare-fun m!6350588 () Bool)

(assert (=> b!5313635 m!6350588))

(assert (=> start!560172 d!1707164))

(declare-fun d!1707166 () Bool)

(declare-fun e!3301711 () Bool)

(assert (=> d!1707166 e!3301711))

(declare-fun res!2254279 () Bool)

(assert (=> d!1707166 (=> (not res!2254279) (not e!3301711))))

(declare-fun lt!2170963 () List!61205)

(declare-fun noDuplicate!1292 (List!61205) Bool)

(assert (=> d!1707166 (= res!2254279 (noDuplicate!1292 lt!2170963))))

(declare-fun choose!39761 ((Set Context!8704)) List!61205)

(assert (=> d!1707166 (= lt!2170963 (choose!39761 z!1189))))

(assert (=> d!1707166 (= (toList!8752 z!1189) lt!2170963)))

(declare-fun b!5313641 () Bool)

(declare-fun content!10882 (List!61205) (Set Context!8704))

(assert (=> b!5313641 (= e!3301711 (= (content!10882 lt!2170963) z!1189))))

(assert (= (and d!1707166 res!2254279) b!5313641))

(declare-fun m!6350590 () Bool)

(assert (=> d!1707166 m!6350590))

(declare-fun m!6350592 () Bool)

(assert (=> d!1707166 m!6350592))

(declare-fun m!6350594 () Bool)

(assert (=> b!5313641 m!6350594))

(assert (=> b!5313424 d!1707166))

(declare-fun d!1707168 () Bool)

(declare-fun e!3301725 () Bool)

(assert (=> d!1707168 e!3301725))

(declare-fun res!2254285 () Bool)

(assert (=> d!1707168 (=> (not res!2254285) (not e!3301725))))

(declare-fun lt!2170966 () Regex!14968)

(assert (=> d!1707168 (= res!2254285 (validRegex!6704 lt!2170966))))

(declare-fun e!3301727 () Regex!14968)

(assert (=> d!1707168 (= lt!2170966 e!3301727)))

(declare-fun c!923127 () Bool)

(declare-fun e!3301728 () Bool)

(assert (=> d!1707168 (= c!923127 e!3301728)))

(declare-fun res!2254284 () Bool)

(assert (=> d!1707168 (=> (not res!2254284) (not e!3301728))))

(assert (=> d!1707168 (= res!2254284 (is-Cons!61080 (exprs!4852 (h!67529 zl!343))))))

(declare-fun lambda!270848 () Int)

(declare-fun forall!14388 (List!61204 Int) Bool)

(assert (=> d!1707168 (forall!14388 (exprs!4852 (h!67529 zl!343)) lambda!270848)))

(assert (=> d!1707168 (= (generalisedConcat!637 (exprs!4852 (h!67529 zl!343))) lt!2170966)))

(declare-fun b!5313662 () Bool)

(declare-fun e!3301726 () Bool)

(declare-fun isConcat!395 (Regex!14968) Bool)

(assert (=> b!5313662 (= e!3301726 (isConcat!395 lt!2170966))))

(declare-fun b!5313663 () Bool)

(assert (=> b!5313663 (= e!3301728 (isEmpty!33046 (t!374409 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun b!5313664 () Bool)

(declare-fun e!3301724 () Regex!14968)

(assert (=> b!5313664 (= e!3301724 (Concat!23813 (h!67528 (exprs!4852 (h!67529 zl!343))) (generalisedConcat!637 (t!374409 (exprs!4852 (h!67529 zl!343))))))))

(declare-fun b!5313665 () Bool)

(assert (=> b!5313665 (= e!3301727 (h!67528 (exprs!4852 (h!67529 zl!343))))))

(declare-fun b!5313666 () Bool)

(assert (=> b!5313666 (= e!3301724 EmptyExpr!14968)))

(declare-fun b!5313667 () Bool)

(assert (=> b!5313667 (= e!3301727 e!3301724)))

(declare-fun c!923125 () Bool)

(assert (=> b!5313667 (= c!923125 (is-Cons!61080 (exprs!4852 (h!67529 zl!343))))))

(declare-fun b!5313668 () Bool)

(declare-fun e!3301729 () Bool)

(assert (=> b!5313668 (= e!3301725 e!3301729)))

(declare-fun c!923126 () Bool)

(assert (=> b!5313668 (= c!923126 (isEmpty!33046 (exprs!4852 (h!67529 zl!343))))))

(declare-fun b!5313669 () Bool)

(assert (=> b!5313669 (= e!3301729 e!3301726)))

(declare-fun c!923128 () Bool)

(declare-fun tail!10490 (List!61204) List!61204)

(assert (=> b!5313669 (= c!923128 (isEmpty!33046 (tail!10490 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun b!5313670 () Bool)

(declare-fun isEmptyExpr!872 (Regex!14968) Bool)

(assert (=> b!5313670 (= e!3301729 (isEmptyExpr!872 lt!2170966))))

(declare-fun b!5313671 () Bool)

(declare-fun head!11393 (List!61204) Regex!14968)

(assert (=> b!5313671 (= e!3301726 (= lt!2170966 (head!11393 (exprs!4852 (h!67529 zl!343)))))))

(assert (= (and d!1707168 res!2254284) b!5313663))

(assert (= (and d!1707168 c!923127) b!5313665))

(assert (= (and d!1707168 (not c!923127)) b!5313667))

(assert (= (and b!5313667 c!923125) b!5313664))

(assert (= (and b!5313667 (not c!923125)) b!5313666))

(assert (= (and d!1707168 res!2254285) b!5313668))

(assert (= (and b!5313668 c!923126) b!5313670))

(assert (= (and b!5313668 (not c!923126)) b!5313669))

(assert (= (and b!5313669 c!923128) b!5313671))

(assert (= (and b!5313669 (not c!923128)) b!5313662))

(declare-fun m!6350596 () Bool)

(assert (=> d!1707168 m!6350596))

(declare-fun m!6350598 () Bool)

(assert (=> d!1707168 m!6350598))

(assert (=> b!5313663 m!6350446))

(declare-fun m!6350600 () Bool)

(assert (=> b!5313670 m!6350600))

(declare-fun m!6350602 () Bool)

(assert (=> b!5313668 m!6350602))

(declare-fun m!6350604 () Bool)

(assert (=> b!5313671 m!6350604))

(declare-fun m!6350606 () Bool)

(assert (=> b!5313662 m!6350606))

(declare-fun m!6350608 () Bool)

(assert (=> b!5313664 m!6350608))

(declare-fun m!6350610 () Bool)

(assert (=> b!5313669 m!6350610))

(assert (=> b!5313669 m!6350610))

(declare-fun m!6350612 () Bool)

(assert (=> b!5313669 m!6350612))

(assert (=> b!5313423 d!1707168))

(declare-fun bs!1231923 () Bool)

(declare-fun b!5313706 () Bool)

(assert (= bs!1231923 (and b!5313706 b!5313420)))

(declare-fun lambda!270853 () Int)

(assert (=> bs!1231923 (not (= lambda!270853 lambda!270832))))

(assert (=> bs!1231923 (not (= lambda!270853 lambda!270833))))

(assert (=> b!5313706 true))

(assert (=> b!5313706 true))

(declare-fun bs!1231924 () Bool)

(declare-fun b!5313709 () Bool)

(assert (= bs!1231924 (and b!5313709 b!5313420)))

(declare-fun lambda!270854 () Int)

(assert (=> bs!1231924 (not (= lambda!270854 lambda!270832))))

(assert (=> bs!1231924 (= lambda!270854 lambda!270833)))

(declare-fun bs!1231925 () Bool)

(assert (= bs!1231925 (and b!5313709 b!5313706)))

(assert (=> bs!1231925 (not (= lambda!270854 lambda!270853))))

(assert (=> b!5313709 true))

(assert (=> b!5313709 true))

(declare-fun b!5313704 () Bool)

(declare-fun c!923140 () Bool)

(assert (=> b!5313704 (= c!923140 (is-ElementMatch!14968 r!7292))))

(declare-fun e!3301754 () Bool)

(declare-fun e!3301751 () Bool)

(assert (=> b!5313704 (= e!3301754 e!3301751)))

(declare-fun b!5313705 () Bool)

(declare-fun e!3301748 () Bool)

(declare-fun e!3301753 () Bool)

(assert (=> b!5313705 (= e!3301748 e!3301753)))

(declare-fun res!2254302 () Bool)

(assert (=> b!5313705 (= res!2254302 (matchRSpec!2071 (regOne!30449 r!7292) s!2326))))

(assert (=> b!5313705 (=> res!2254302 e!3301753)))

(declare-fun e!3301749 () Bool)

(declare-fun call!378909 () Bool)

(assert (=> b!5313706 (= e!3301749 call!378909)))

(declare-fun b!5313707 () Bool)

(assert (=> b!5313707 (= e!3301751 (= s!2326 (Cons!61079 (c!923072 r!7292) Nil!61079)))))

(declare-fun b!5313708 () Bool)

(declare-fun res!2254303 () Bool)

(assert (=> b!5313708 (=> res!2254303 e!3301749)))

(declare-fun call!378908 () Bool)

(assert (=> b!5313708 (= res!2254303 call!378908)))

(declare-fun e!3301752 () Bool)

(assert (=> b!5313708 (= e!3301752 e!3301749)))

(assert (=> b!5313709 (= e!3301752 call!378909)))

(declare-fun d!1707170 () Bool)

(declare-fun c!923138 () Bool)

(assert (=> d!1707170 (= c!923138 (is-EmptyExpr!14968 r!7292))))

(declare-fun e!3301750 () Bool)

(assert (=> d!1707170 (= (matchRSpec!2071 r!7292 s!2326) e!3301750)))

(declare-fun b!5313710 () Bool)

(declare-fun c!923139 () Bool)

(assert (=> b!5313710 (= c!923139 (is-Union!14968 r!7292))))

(assert (=> b!5313710 (= e!3301751 e!3301748)))

(declare-fun b!5313711 () Bool)

(assert (=> b!5313711 (= e!3301753 (matchRSpec!2071 (regTwo!30449 r!7292) s!2326))))

(declare-fun bm!378903 () Bool)

(assert (=> bm!378903 (= call!378908 (isEmpty!33049 s!2326))))

(declare-fun b!5313712 () Bool)

(assert (=> b!5313712 (= e!3301750 call!378908)))

(declare-fun b!5313713 () Bool)

(assert (=> b!5313713 (= e!3301748 e!3301752)))

(declare-fun c!923137 () Bool)

(assert (=> b!5313713 (= c!923137 (is-Star!14968 r!7292))))

(declare-fun bm!378904 () Bool)

(assert (=> bm!378904 (= call!378909 (Exists!2149 (ite c!923137 lambda!270853 lambda!270854)))))

(declare-fun b!5313714 () Bool)

(assert (=> b!5313714 (= e!3301750 e!3301754)))

(declare-fun res!2254304 () Bool)

(assert (=> b!5313714 (= res!2254304 (not (is-EmptyLang!14968 r!7292)))))

(assert (=> b!5313714 (=> (not res!2254304) (not e!3301754))))

(assert (= (and d!1707170 c!923138) b!5313712))

(assert (= (and d!1707170 (not c!923138)) b!5313714))

(assert (= (and b!5313714 res!2254304) b!5313704))

(assert (= (and b!5313704 c!923140) b!5313707))

(assert (= (and b!5313704 (not c!923140)) b!5313710))

(assert (= (and b!5313710 c!923139) b!5313705))

(assert (= (and b!5313710 (not c!923139)) b!5313713))

(assert (= (and b!5313705 (not res!2254302)) b!5313711))

(assert (= (and b!5313713 c!923137) b!5313708))

(assert (= (and b!5313713 (not c!923137)) b!5313709))

(assert (= (and b!5313708 (not res!2254303)) b!5313706))

(assert (= (or b!5313706 b!5313709) bm!378904))

(assert (= (or b!5313712 b!5313708) bm!378903))

(declare-fun m!6350614 () Bool)

(assert (=> b!5313705 m!6350614))

(declare-fun m!6350616 () Bool)

(assert (=> b!5313711 m!6350616))

(declare-fun m!6350618 () Bool)

(assert (=> bm!378903 m!6350618))

(declare-fun m!6350620 () Bool)

(assert (=> bm!378904 m!6350620))

(assert (=> b!5313421 d!1707170))

(declare-fun b!5313750 () Bool)

(declare-fun res!2254329 () Bool)

(declare-fun e!3301775 () Bool)

(assert (=> b!5313750 (=> (not res!2254329) (not e!3301775))))

(declare-fun call!378912 () Bool)

(assert (=> b!5313750 (= res!2254329 (not call!378912))))

(declare-fun b!5313751 () Bool)

(declare-fun res!2254327 () Bool)

(declare-fun e!3301779 () Bool)

(assert (=> b!5313751 (=> res!2254327 e!3301779)))

(assert (=> b!5313751 (= res!2254327 (not (isEmpty!33049 (tail!10489 s!2326))))))

(declare-fun d!1707174 () Bool)

(declare-fun e!3301777 () Bool)

(assert (=> d!1707174 e!3301777))

(declare-fun c!923150 () Bool)

(assert (=> d!1707174 (= c!923150 (is-EmptyExpr!14968 r!7292))))

(declare-fun lt!2170972 () Bool)

(declare-fun e!3301774 () Bool)

(assert (=> d!1707174 (= lt!2170972 e!3301774)))

(declare-fun c!923151 () Bool)

(assert (=> d!1707174 (= c!923151 (isEmpty!33049 s!2326))))

(assert (=> d!1707174 (validRegex!6704 r!7292)))

(assert (=> d!1707174 (= (matchR!7153 r!7292 s!2326) lt!2170972)))

(declare-fun b!5313752 () Bool)

(assert (=> b!5313752 (= e!3301775 (= (head!11392 s!2326) (c!923072 r!7292)))))

(declare-fun b!5313753 () Bool)

(declare-fun res!2254328 () Bool)

(declare-fun e!3301776 () Bool)

(assert (=> b!5313753 (=> res!2254328 e!3301776)))

(assert (=> b!5313753 (= res!2254328 (not (is-ElementMatch!14968 r!7292)))))

(declare-fun e!3301778 () Bool)

(assert (=> b!5313753 (= e!3301778 e!3301776)))

(declare-fun bm!378907 () Bool)

(assert (=> bm!378907 (= call!378912 (isEmpty!33049 s!2326))))

(declare-fun b!5313754 () Bool)

(assert (=> b!5313754 (= e!3301777 e!3301778)))

(declare-fun c!923149 () Bool)

(assert (=> b!5313754 (= c!923149 (is-EmptyLang!14968 r!7292))))

(declare-fun b!5313755 () Bool)

(declare-fun res!2254326 () Bool)

(assert (=> b!5313755 (=> (not res!2254326) (not e!3301775))))

(assert (=> b!5313755 (= res!2254326 (isEmpty!33049 (tail!10489 s!2326)))))

(declare-fun b!5313756 () Bool)

(assert (=> b!5313756 (= e!3301778 (not lt!2170972))))

(declare-fun b!5313757 () Bool)

(declare-fun res!2254331 () Bool)

(assert (=> b!5313757 (=> res!2254331 e!3301776)))

(assert (=> b!5313757 (= res!2254331 e!3301775)))

(declare-fun res!2254324 () Bool)

(assert (=> b!5313757 (=> (not res!2254324) (not e!3301775))))

(assert (=> b!5313757 (= res!2254324 lt!2170972)))

(declare-fun b!5313758 () Bool)

(declare-fun derivativeStep!4158 (Regex!14968 C!30206) Regex!14968)

(assert (=> b!5313758 (= e!3301774 (matchR!7153 (derivativeStep!4158 r!7292 (head!11392 s!2326)) (tail!10489 s!2326)))))

(declare-fun b!5313759 () Bool)

(declare-fun e!3301780 () Bool)

(assert (=> b!5313759 (= e!3301780 e!3301779)))

(declare-fun res!2254330 () Bool)

(assert (=> b!5313759 (=> res!2254330 e!3301779)))

(assert (=> b!5313759 (= res!2254330 call!378912)))

(declare-fun b!5313760 () Bool)

(assert (=> b!5313760 (= e!3301779 (not (= (head!11392 s!2326) (c!923072 r!7292))))))

(declare-fun b!5313761 () Bool)

(assert (=> b!5313761 (= e!3301777 (= lt!2170972 call!378912))))

(declare-fun b!5313762 () Bool)

(assert (=> b!5313762 (= e!3301774 (nullable!5137 r!7292))))

(declare-fun b!5313763 () Bool)

(assert (=> b!5313763 (= e!3301776 e!3301780)))

(declare-fun res!2254325 () Bool)

(assert (=> b!5313763 (=> (not res!2254325) (not e!3301780))))

(assert (=> b!5313763 (= res!2254325 (not lt!2170972))))

(assert (= (and d!1707174 c!923151) b!5313762))

(assert (= (and d!1707174 (not c!923151)) b!5313758))

(assert (= (and d!1707174 c!923150) b!5313761))

(assert (= (and d!1707174 (not c!923150)) b!5313754))

(assert (= (and b!5313754 c!923149) b!5313756))

(assert (= (and b!5313754 (not c!923149)) b!5313753))

(assert (= (and b!5313753 (not res!2254328)) b!5313757))

(assert (= (and b!5313757 res!2254324) b!5313750))

(assert (= (and b!5313750 res!2254329) b!5313755))

(assert (= (and b!5313755 res!2254326) b!5313752))

(assert (= (and b!5313757 (not res!2254331)) b!5313763))

(assert (= (and b!5313763 res!2254325) b!5313759))

(assert (= (and b!5313759 (not res!2254330)) b!5313751))

(assert (= (and b!5313751 (not res!2254327)) b!5313760))

(assert (= (or b!5313761 b!5313750 b!5313759) bm!378907))

(declare-fun m!6350624 () Bool)

(assert (=> b!5313751 m!6350624))

(assert (=> b!5313751 m!6350624))

(declare-fun m!6350626 () Bool)

(assert (=> b!5313751 m!6350626))

(declare-fun m!6350628 () Bool)

(assert (=> b!5313752 m!6350628))

(assert (=> b!5313758 m!6350628))

(assert (=> b!5313758 m!6350628))

(declare-fun m!6350630 () Bool)

(assert (=> b!5313758 m!6350630))

(assert (=> b!5313758 m!6350624))

(assert (=> b!5313758 m!6350630))

(assert (=> b!5313758 m!6350624))

(declare-fun m!6350632 () Bool)

(assert (=> b!5313758 m!6350632))

(assert (=> b!5313755 m!6350624))

(assert (=> b!5313755 m!6350624))

(assert (=> b!5313755 m!6350626))

(assert (=> b!5313760 m!6350628))

(assert (=> d!1707174 m!6350618))

(assert (=> d!1707174 m!6350394))

(declare-fun m!6350634 () Bool)

(assert (=> b!5313762 m!6350634))

(assert (=> bm!378907 m!6350618))

(assert (=> b!5313421 d!1707174))

(declare-fun d!1707178 () Bool)

(assert (=> d!1707178 (= (matchR!7153 r!7292 s!2326) (matchRSpec!2071 r!7292 s!2326))))

(declare-fun lt!2170975 () Unit!153390)

(declare-fun choose!39762 (Regex!14968 List!61203) Unit!153390)

(assert (=> d!1707178 (= lt!2170975 (choose!39762 r!7292 s!2326))))

(assert (=> d!1707178 (validRegex!6704 r!7292)))

(assert (=> d!1707178 (= (mainMatchTheorem!2071 r!7292 s!2326) lt!2170975)))

(declare-fun bs!1231926 () Bool)

(assert (= bs!1231926 d!1707178))

(assert (=> bs!1231926 m!6350440))

(assert (=> bs!1231926 m!6350438))

(declare-fun m!6350654 () Bool)

(assert (=> bs!1231926 m!6350654))

(assert (=> bs!1231926 m!6350394))

(assert (=> b!5313421 d!1707178))

(declare-fun bs!1231927 () Bool)

(declare-fun d!1707184 () Bool)

(assert (= bs!1231927 (and d!1707184 d!1707168)))

(declare-fun lambda!270857 () Int)

(assert (=> bs!1231927 (= lambda!270857 lambda!270848)))

(declare-fun b!5313788 () Bool)

(declare-fun e!3301796 () Bool)

(declare-fun e!3301797 () Bool)

(assert (=> b!5313788 (= e!3301796 e!3301797)))

(declare-fun c!923163 () Bool)

(assert (=> b!5313788 (= c!923163 (isEmpty!33046 (unfocusZipperList!410 zl!343)))))

(declare-fun b!5313789 () Bool)

(declare-fun e!3301798 () Regex!14968)

(assert (=> b!5313789 (= e!3301798 (h!67528 (unfocusZipperList!410 zl!343)))))

(declare-fun b!5313790 () Bool)

(declare-fun lt!2170978 () Regex!14968)

(declare-fun isEmptyLang!880 (Regex!14968) Bool)

(assert (=> b!5313790 (= e!3301797 (isEmptyLang!880 lt!2170978))))

(declare-fun b!5313791 () Bool)

(declare-fun e!3301800 () Regex!14968)

(assert (=> b!5313791 (= e!3301800 EmptyLang!14968)))

(declare-fun b!5313793 () Bool)

(declare-fun e!3301795 () Bool)

(assert (=> b!5313793 (= e!3301797 e!3301795)))

(declare-fun c!923165 () Bool)

(assert (=> b!5313793 (= c!923165 (isEmpty!33046 (tail!10490 (unfocusZipperList!410 zl!343))))))

(declare-fun b!5313794 () Bool)

(assert (=> b!5313794 (= e!3301795 (= lt!2170978 (head!11393 (unfocusZipperList!410 zl!343))))))

(declare-fun b!5313795 () Bool)

(assert (=> b!5313795 (= e!3301800 (Union!14968 (h!67528 (unfocusZipperList!410 zl!343)) (generalisedUnion!897 (t!374409 (unfocusZipperList!410 zl!343)))))))

(declare-fun b!5313792 () Bool)

(assert (=> b!5313792 (= e!3301798 e!3301800)))

(declare-fun c!923164 () Bool)

(assert (=> b!5313792 (= c!923164 (is-Cons!61080 (unfocusZipperList!410 zl!343)))))

(assert (=> d!1707184 e!3301796))

(declare-fun res!2254337 () Bool)

(assert (=> d!1707184 (=> (not res!2254337) (not e!3301796))))

(assert (=> d!1707184 (= res!2254337 (validRegex!6704 lt!2170978))))

(assert (=> d!1707184 (= lt!2170978 e!3301798)))

(declare-fun c!923162 () Bool)

(declare-fun e!3301799 () Bool)

(assert (=> d!1707184 (= c!923162 e!3301799)))

(declare-fun res!2254336 () Bool)

(assert (=> d!1707184 (=> (not res!2254336) (not e!3301799))))

(assert (=> d!1707184 (= res!2254336 (is-Cons!61080 (unfocusZipperList!410 zl!343)))))

(assert (=> d!1707184 (forall!14388 (unfocusZipperList!410 zl!343) lambda!270857)))

(assert (=> d!1707184 (= (generalisedUnion!897 (unfocusZipperList!410 zl!343)) lt!2170978)))

(declare-fun b!5313796 () Bool)

(assert (=> b!5313796 (= e!3301799 (isEmpty!33046 (t!374409 (unfocusZipperList!410 zl!343))))))

(declare-fun b!5313797 () Bool)

(declare-fun isUnion!312 (Regex!14968) Bool)

(assert (=> b!5313797 (= e!3301795 (isUnion!312 lt!2170978))))

(assert (= (and d!1707184 res!2254336) b!5313796))

(assert (= (and d!1707184 c!923162) b!5313789))

(assert (= (and d!1707184 (not c!923162)) b!5313792))

(assert (= (and b!5313792 c!923164) b!5313795))

(assert (= (and b!5313792 (not c!923164)) b!5313791))

(assert (= (and d!1707184 res!2254337) b!5313788))

(assert (= (and b!5313788 c!923163) b!5313790))

(assert (= (and b!5313788 (not c!923163)) b!5313793))

(assert (= (and b!5313793 c!923165) b!5313794))

(assert (= (and b!5313793 (not c!923165)) b!5313797))

(declare-fun m!6350656 () Bool)

(assert (=> b!5313795 m!6350656))

(assert (=> b!5313794 m!6350434))

(declare-fun m!6350658 () Bool)

(assert (=> b!5313794 m!6350658))

(declare-fun m!6350660 () Bool)

(assert (=> b!5313797 m!6350660))

(declare-fun m!6350662 () Bool)

(assert (=> b!5313790 m!6350662))

(assert (=> b!5313793 m!6350434))

(declare-fun m!6350664 () Bool)

(assert (=> b!5313793 m!6350664))

(assert (=> b!5313793 m!6350664))

(declare-fun m!6350666 () Bool)

(assert (=> b!5313793 m!6350666))

(declare-fun m!6350668 () Bool)

(assert (=> d!1707184 m!6350668))

(assert (=> d!1707184 m!6350434))

(declare-fun m!6350670 () Bool)

(assert (=> d!1707184 m!6350670))

(declare-fun m!6350672 () Bool)

(assert (=> b!5313796 m!6350672))

(assert (=> b!5313788 m!6350434))

(declare-fun m!6350674 () Bool)

(assert (=> b!5313788 m!6350674))

(assert (=> b!5313431 d!1707184))

(declare-fun bs!1231928 () Bool)

(declare-fun d!1707186 () Bool)

(assert (= bs!1231928 (and d!1707186 d!1707168)))

(declare-fun lambda!270862 () Int)

(assert (=> bs!1231928 (= lambda!270862 lambda!270848)))

(declare-fun bs!1231929 () Bool)

(assert (= bs!1231929 (and d!1707186 d!1707184)))

(assert (=> bs!1231929 (= lambda!270862 lambda!270857)))

(declare-fun lt!2170983 () List!61204)

(assert (=> d!1707186 (forall!14388 lt!2170983 lambda!270862)))

(declare-fun e!3301815 () List!61204)

(assert (=> d!1707186 (= lt!2170983 e!3301815)))

(declare-fun c!923176 () Bool)

(assert (=> d!1707186 (= c!923176 (is-Cons!61081 zl!343))))

(assert (=> d!1707186 (= (unfocusZipperList!410 zl!343) lt!2170983)))

(declare-fun b!5313822 () Bool)

(assert (=> b!5313822 (= e!3301815 (Cons!61080 (generalisedConcat!637 (exprs!4852 (h!67529 zl!343))) (unfocusZipperList!410 (t!374410 zl!343))))))

(declare-fun b!5313823 () Bool)

(assert (=> b!5313823 (= e!3301815 Nil!61080)))

(assert (= (and d!1707186 c!923176) b!5313822))

(assert (= (and d!1707186 (not c!923176)) b!5313823))

(declare-fun m!6350676 () Bool)

(assert (=> d!1707186 m!6350676))

(assert (=> b!5313822 m!6350412))

(declare-fun m!6350678 () Bool)

(assert (=> b!5313822 m!6350678))

(assert (=> b!5313431 d!1707186))

(declare-fun bs!1231930 () Bool)

(declare-fun d!1707188 () Bool)

(assert (= bs!1231930 (and d!1707188 d!1707168)))

(declare-fun lambda!270865 () Int)

(assert (=> bs!1231930 (= lambda!270865 lambda!270848)))

(declare-fun bs!1231931 () Bool)

(assert (= bs!1231931 (and d!1707188 d!1707184)))

(assert (=> bs!1231931 (= lambda!270865 lambda!270857)))

(declare-fun bs!1231932 () Bool)

(assert (= bs!1231932 (and d!1707188 d!1707186)))

(assert (=> bs!1231932 (= lambda!270865 lambda!270862)))

(assert (=> d!1707188 (= (inv!80668 setElem!34172) (forall!14388 (exprs!4852 setElem!34172) lambda!270865))))

(declare-fun bs!1231933 () Bool)

(assert (= bs!1231933 d!1707188))

(declare-fun m!6350680 () Bool)

(assert (=> bs!1231933 m!6350680))

(assert (=> setNonEmpty!34172 d!1707188))

(declare-fun b!5313852 () Bool)

(declare-fun e!3301836 () Bool)

(declare-fun lt!2170991 () Option!15079)

(assert (=> b!5313852 (= e!3301836 (not (isDefined!11782 lt!2170991)))))

(declare-fun b!5313853 () Bool)

(declare-fun res!2254355 () Bool)

(declare-fun e!3301833 () Bool)

(assert (=> b!5313853 (=> (not res!2254355) (not e!3301833))))

(declare-fun get!21007 (Option!15079) tuple2!64334)

(assert (=> b!5313853 (= res!2254355 (matchR!7153 (regTwo!30448 r!7292) (_2!35470 (get!21007 lt!2170991))))))

(declare-fun b!5313854 () Bool)

(declare-fun e!3301835 () Option!15079)

(assert (=> b!5313854 (= e!3301835 (Some!15078 (tuple2!64335 Nil!61079 s!2326)))))

(declare-fun b!5313855 () Bool)

(declare-fun lt!2170992 () Unit!153390)

(declare-fun lt!2170993 () Unit!153390)

(assert (=> b!5313855 (= lt!2170992 lt!2170993)))

(declare-fun ++!13317 (List!61203 List!61203) List!61203)

(assert (=> b!5313855 (= (++!13317 (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) Nil!61079)) (t!374408 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1732 (List!61203 C!30206 List!61203 List!61203) Unit!153390)

(assert (=> b!5313855 (= lt!2170993 (lemmaMoveElementToOtherListKeepsConcatEq!1732 Nil!61079 (h!67527 s!2326) (t!374408 s!2326) s!2326))))

(declare-fun e!3301832 () Option!15079)

(assert (=> b!5313855 (= e!3301832 (findConcatSeparation!1493 (regOne!30448 r!7292) (regTwo!30448 r!7292) (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) Nil!61079)) (t!374408 s!2326) s!2326))))

(declare-fun b!5313856 () Bool)

(assert (=> b!5313856 (= e!3301832 None!15078)))

(declare-fun b!5313857 () Bool)

(declare-fun res!2254354 () Bool)

(assert (=> b!5313857 (=> (not res!2254354) (not e!3301833))))

(assert (=> b!5313857 (= res!2254354 (matchR!7153 (regOne!30448 r!7292) (_1!35470 (get!21007 lt!2170991))))))

(declare-fun b!5313858 () Bool)

(declare-fun e!3301834 () Bool)

(assert (=> b!5313858 (= e!3301834 (matchR!7153 (regTwo!30448 r!7292) s!2326))))

(declare-fun d!1707190 () Bool)

(assert (=> d!1707190 e!3301836))

(declare-fun res!2254356 () Bool)

(assert (=> d!1707190 (=> res!2254356 e!3301836)))

(assert (=> d!1707190 (= res!2254356 e!3301833)))

(declare-fun res!2254358 () Bool)

(assert (=> d!1707190 (=> (not res!2254358) (not e!3301833))))

(assert (=> d!1707190 (= res!2254358 (isDefined!11782 lt!2170991))))

(assert (=> d!1707190 (= lt!2170991 e!3301835)))

(declare-fun c!923185 () Bool)

(assert (=> d!1707190 (= c!923185 e!3301834)))

(declare-fun res!2254357 () Bool)

(assert (=> d!1707190 (=> (not res!2254357) (not e!3301834))))

(assert (=> d!1707190 (= res!2254357 (matchR!7153 (regOne!30448 r!7292) Nil!61079))))

(assert (=> d!1707190 (validRegex!6704 (regOne!30448 r!7292))))

(assert (=> d!1707190 (= (findConcatSeparation!1493 (regOne!30448 r!7292) (regTwo!30448 r!7292) Nil!61079 s!2326 s!2326) lt!2170991)))

(declare-fun b!5313859 () Bool)

(assert (=> b!5313859 (= e!3301835 e!3301832)))

(declare-fun c!923186 () Bool)

(assert (=> b!5313859 (= c!923186 (is-Nil!61079 s!2326))))

(declare-fun b!5313860 () Bool)

(assert (=> b!5313860 (= e!3301833 (= (++!13317 (_1!35470 (get!21007 lt!2170991)) (_2!35470 (get!21007 lt!2170991))) s!2326))))

(assert (= (and d!1707190 res!2254357) b!5313858))

(assert (= (and d!1707190 c!923185) b!5313854))

(assert (= (and d!1707190 (not c!923185)) b!5313859))

(assert (= (and b!5313859 c!923186) b!5313856))

(assert (= (and b!5313859 (not c!923186)) b!5313855))

(assert (= (and d!1707190 res!2254358) b!5313857))

(assert (= (and b!5313857 res!2254354) b!5313853))

(assert (= (and b!5313853 res!2254355) b!5313860))

(assert (= (and d!1707190 (not res!2254356)) b!5313852))

(declare-fun m!6350700 () Bool)

(assert (=> b!5313853 m!6350700))

(declare-fun m!6350702 () Bool)

(assert (=> b!5313853 m!6350702))

(declare-fun m!6350704 () Bool)

(assert (=> d!1707190 m!6350704))

(declare-fun m!6350706 () Bool)

(assert (=> d!1707190 m!6350706))

(declare-fun m!6350708 () Bool)

(assert (=> d!1707190 m!6350708))

(declare-fun m!6350710 () Bool)

(assert (=> b!5313858 m!6350710))

(assert (=> b!5313852 m!6350704))

(assert (=> b!5313860 m!6350700))

(declare-fun m!6350712 () Bool)

(assert (=> b!5313860 m!6350712))

(assert (=> b!5313857 m!6350700))

(declare-fun m!6350714 () Bool)

(assert (=> b!5313857 m!6350714))

(declare-fun m!6350716 () Bool)

(assert (=> b!5313855 m!6350716))

(assert (=> b!5313855 m!6350716))

(declare-fun m!6350718 () Bool)

(assert (=> b!5313855 m!6350718))

(declare-fun m!6350720 () Bool)

(assert (=> b!5313855 m!6350720))

(assert (=> b!5313855 m!6350716))

(declare-fun m!6350722 () Bool)

(assert (=> b!5313855 m!6350722))

(assert (=> b!5313420 d!1707190))

(declare-fun d!1707196 () Bool)

(declare-fun choose!39763 (Int) Bool)

(assert (=> d!1707196 (= (Exists!2149 lambda!270832) (choose!39763 lambda!270832))))

(declare-fun bs!1231934 () Bool)

(assert (= bs!1231934 d!1707196))

(declare-fun m!6350724 () Bool)

(assert (=> bs!1231934 m!6350724))

(assert (=> b!5313420 d!1707196))

(declare-fun d!1707198 () Bool)

(assert (=> d!1707198 (= (Exists!2149 lambda!270833) (choose!39763 lambda!270833))))

(declare-fun bs!1231935 () Bool)

(assert (= bs!1231935 d!1707198))

(declare-fun m!6350726 () Bool)

(assert (=> bs!1231935 m!6350726))

(assert (=> b!5313420 d!1707198))

(declare-fun bs!1231936 () Bool)

(declare-fun d!1707200 () Bool)

(assert (= bs!1231936 (and d!1707200 b!5313420)))

(declare-fun lambda!270869 () Int)

(assert (=> bs!1231936 (= lambda!270869 lambda!270832)))

(assert (=> bs!1231936 (not (= lambda!270869 lambda!270833))))

(declare-fun bs!1231937 () Bool)

(assert (= bs!1231937 (and d!1707200 b!5313706)))

(assert (=> bs!1231937 (not (= lambda!270869 lambda!270853))))

(declare-fun bs!1231938 () Bool)

(assert (= bs!1231938 (and d!1707200 b!5313709)))

(assert (=> bs!1231938 (not (= lambda!270869 lambda!270854))))

(assert (=> d!1707200 true))

(assert (=> d!1707200 true))

(assert (=> d!1707200 true))

(assert (=> d!1707200 (= (isDefined!11782 (findConcatSeparation!1493 (regOne!30448 r!7292) (regTwo!30448 r!7292) Nil!61079 s!2326 s!2326)) (Exists!2149 lambda!270869))))

(declare-fun lt!2170996 () Unit!153390)

(declare-fun choose!39764 (Regex!14968 Regex!14968 List!61203) Unit!153390)

(assert (=> d!1707200 (= lt!2170996 (choose!39764 (regOne!30448 r!7292) (regTwo!30448 r!7292) s!2326))))

(assert (=> d!1707200 (validRegex!6704 (regOne!30448 r!7292))))

(assert (=> d!1707200 (= (lemmaFindConcatSeparationEquivalentToExists!1257 (regOne!30448 r!7292) (regTwo!30448 r!7292) s!2326) lt!2170996)))

(declare-fun bs!1231939 () Bool)

(assert (= bs!1231939 d!1707200))

(declare-fun m!6350728 () Bool)

(assert (=> bs!1231939 m!6350728))

(declare-fun m!6350730 () Bool)

(assert (=> bs!1231939 m!6350730))

(assert (=> bs!1231939 m!6350708))

(assert (=> bs!1231939 m!6350398))

(assert (=> bs!1231939 m!6350398))

(assert (=> bs!1231939 m!6350400))

(assert (=> b!5313420 d!1707200))

(declare-fun bs!1231940 () Bool)

(declare-fun d!1707202 () Bool)

(assert (= bs!1231940 (and d!1707202 b!5313706)))

(declare-fun lambda!270874 () Int)

(assert (=> bs!1231940 (not (= lambda!270874 lambda!270853))))

(declare-fun bs!1231941 () Bool)

(assert (= bs!1231941 (and d!1707202 d!1707200)))

(assert (=> bs!1231941 (= lambda!270874 lambda!270869)))

(declare-fun bs!1231942 () Bool)

(assert (= bs!1231942 (and d!1707202 b!5313420)))

(assert (=> bs!1231942 (not (= lambda!270874 lambda!270833))))

(declare-fun bs!1231943 () Bool)

(assert (= bs!1231943 (and d!1707202 b!5313709)))

(assert (=> bs!1231943 (not (= lambda!270874 lambda!270854))))

(assert (=> bs!1231942 (= lambda!270874 lambda!270832)))

(assert (=> d!1707202 true))

(assert (=> d!1707202 true))

(assert (=> d!1707202 true))

(declare-fun lambda!270875 () Int)

(assert (=> bs!1231940 (not (= lambda!270875 lambda!270853))))

(assert (=> bs!1231941 (not (= lambda!270875 lambda!270869))))

(assert (=> bs!1231942 (= lambda!270875 lambda!270833)))

(declare-fun bs!1231944 () Bool)

(assert (= bs!1231944 d!1707202))

(assert (=> bs!1231944 (not (= lambda!270875 lambda!270874))))

(assert (=> bs!1231943 (= lambda!270875 lambda!270854)))

(assert (=> bs!1231942 (not (= lambda!270875 lambda!270832))))

(assert (=> d!1707202 true))

(assert (=> d!1707202 true))

(assert (=> d!1707202 true))

(assert (=> d!1707202 (= (Exists!2149 lambda!270874) (Exists!2149 lambda!270875))))

(declare-fun lt!2171005 () Unit!153390)

(declare-fun choose!39765 (Regex!14968 Regex!14968 List!61203) Unit!153390)

(assert (=> d!1707202 (= lt!2171005 (choose!39765 (regOne!30448 r!7292) (regTwo!30448 r!7292) s!2326))))

(assert (=> d!1707202 (validRegex!6704 (regOne!30448 r!7292))))

(assert (=> d!1707202 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!803 (regOne!30448 r!7292) (regTwo!30448 r!7292) s!2326) lt!2171005)))

(declare-fun m!6350732 () Bool)

(assert (=> bs!1231944 m!6350732))

(declare-fun m!6350734 () Bool)

(assert (=> bs!1231944 m!6350734))

(declare-fun m!6350736 () Bool)

(assert (=> bs!1231944 m!6350736))

(assert (=> bs!1231944 m!6350708))

(assert (=> b!5313420 d!1707202))

(declare-fun d!1707204 () Bool)

(declare-fun isEmpty!33050 (Option!15079) Bool)

(assert (=> d!1707204 (= (isDefined!11782 (findConcatSeparation!1493 (regOne!30448 r!7292) (regTwo!30448 r!7292) Nil!61079 s!2326 s!2326)) (not (isEmpty!33050 (findConcatSeparation!1493 (regOne!30448 r!7292) (regTwo!30448 r!7292) Nil!61079 s!2326 s!2326))))))

(declare-fun bs!1231945 () Bool)

(assert (= bs!1231945 d!1707204))

(assert (=> bs!1231945 m!6350398))

(declare-fun m!6350738 () Bool)

(assert (=> bs!1231945 m!6350738))

(assert (=> b!5313420 d!1707204))

(declare-fun d!1707206 () Bool)

(assert (=> d!1707206 (= (isEmpty!33046 (t!374409 (exprs!4852 (h!67529 zl!343)))) (is-Nil!61080 (t!374409 (exprs!4852 (h!67529 zl!343)))))))

(assert (=> b!5313419 d!1707206))

(declare-fun d!1707208 () Bool)

(declare-fun lt!2171011 () Regex!14968)

(assert (=> d!1707208 (validRegex!6704 lt!2171011)))

(assert (=> d!1707208 (= lt!2171011 (generalisedUnion!897 (unfocusZipperList!410 zl!343)))))

(assert (=> d!1707208 (= (unfocusZipper!710 zl!343) lt!2171011)))

(declare-fun bs!1231946 () Bool)

(assert (= bs!1231946 d!1707208))

(declare-fun m!6350740 () Bool)

(assert (=> bs!1231946 m!6350740))

(assert (=> bs!1231946 m!6350434))

(assert (=> bs!1231946 m!6350434))

(assert (=> bs!1231946 m!6350436))

(assert (=> b!5313430 d!1707208))

(declare-fun bs!1231947 () Bool)

(declare-fun d!1707210 () Bool)

(assert (= bs!1231947 (and d!1707210 d!1707168)))

(declare-fun lambda!270876 () Int)

(assert (=> bs!1231947 (= lambda!270876 lambda!270848)))

(declare-fun bs!1231948 () Bool)

(assert (= bs!1231948 (and d!1707210 d!1707184)))

(assert (=> bs!1231948 (= lambda!270876 lambda!270857)))

(declare-fun bs!1231949 () Bool)

(assert (= bs!1231949 (and d!1707210 d!1707186)))

(assert (=> bs!1231949 (= lambda!270876 lambda!270862)))

(declare-fun bs!1231950 () Bool)

(assert (= bs!1231950 (and d!1707210 d!1707188)))

(assert (=> bs!1231950 (= lambda!270876 lambda!270865)))

(assert (=> d!1707210 (= (inv!80668 (h!67529 zl!343)) (forall!14388 (exprs!4852 (h!67529 zl!343)) lambda!270876))))

(declare-fun bs!1231951 () Bool)

(assert (= bs!1231951 d!1707210))

(declare-fun m!6350742 () Bool)

(assert (=> bs!1231951 m!6350742))

(assert (=> b!5313429 d!1707210))

(declare-fun d!1707212 () Bool)

(declare-fun c!923193 () Bool)

(assert (=> d!1707212 (= c!923193 (isEmpty!33049 (t!374408 s!2326)))))

(declare-fun e!3301858 () Bool)

(assert (=> d!1707212 (= (matchZipper!1212 lt!2170910 (t!374408 s!2326)) e!3301858)))

(declare-fun b!5313900 () Bool)

(assert (=> b!5313900 (= e!3301858 (nullableZipper!1337 lt!2170910))))

(declare-fun b!5313901 () Bool)

(assert (=> b!5313901 (= e!3301858 (matchZipper!1212 (derivationStepZipper!1211 lt!2170910 (head!11392 (t!374408 s!2326))) (tail!10489 (t!374408 s!2326))))))

(assert (= (and d!1707212 c!923193) b!5313900))

(assert (= (and d!1707212 (not c!923193)) b!5313901))

(assert (=> d!1707212 m!6350566))

(declare-fun m!6350744 () Bool)

(assert (=> b!5313900 m!6350744))

(assert (=> b!5313901 m!6350570))

(assert (=> b!5313901 m!6350570))

(declare-fun m!6350746 () Bool)

(assert (=> b!5313901 m!6350746))

(assert (=> b!5313901 m!6350574))

(assert (=> b!5313901 m!6350746))

(assert (=> b!5313901 m!6350574))

(declare-fun m!6350748 () Bool)

(assert (=> b!5313901 m!6350748))

(assert (=> b!5313408 d!1707212))

(declare-fun d!1707214 () Bool)

(assert (=> d!1707214 (= (isEmpty!33045 (t!374410 zl!343)) (is-Nil!61081 (t!374410 zl!343)))))

(assert (=> b!5313418 d!1707214))

(declare-fun e!3301861 () Bool)

(assert (=> b!5313413 (= tp!1479892 e!3301861)))

(declare-fun b!5313913 () Bool)

(declare-fun tp!1479943 () Bool)

(declare-fun tp!1479940 () Bool)

(assert (=> b!5313913 (= e!3301861 (and tp!1479943 tp!1479940))))

(declare-fun b!5313915 () Bool)

(declare-fun tp!1479941 () Bool)

(declare-fun tp!1479942 () Bool)

(assert (=> b!5313915 (= e!3301861 (and tp!1479941 tp!1479942))))

(declare-fun b!5313914 () Bool)

(declare-fun tp!1479944 () Bool)

(assert (=> b!5313914 (= e!3301861 tp!1479944)))

(declare-fun b!5313912 () Bool)

(assert (=> b!5313912 (= e!3301861 tp_is_empty!39189)))

(assert (= (and b!5313413 (is-ElementMatch!14968 (regOne!30449 r!7292))) b!5313912))

(assert (= (and b!5313413 (is-Concat!23813 (regOne!30449 r!7292))) b!5313913))

(assert (= (and b!5313413 (is-Star!14968 (regOne!30449 r!7292))) b!5313914))

(assert (= (and b!5313413 (is-Union!14968 (regOne!30449 r!7292))) b!5313915))

(declare-fun e!3301862 () Bool)

(assert (=> b!5313413 (= tp!1479897 e!3301862)))

(declare-fun b!5313917 () Bool)

(declare-fun tp!1479948 () Bool)

(declare-fun tp!1479945 () Bool)

(assert (=> b!5313917 (= e!3301862 (and tp!1479948 tp!1479945))))

(declare-fun b!5313919 () Bool)

(declare-fun tp!1479946 () Bool)

(declare-fun tp!1479947 () Bool)

(assert (=> b!5313919 (= e!3301862 (and tp!1479946 tp!1479947))))

(declare-fun b!5313918 () Bool)

(declare-fun tp!1479949 () Bool)

(assert (=> b!5313918 (= e!3301862 tp!1479949)))

(declare-fun b!5313916 () Bool)

(assert (=> b!5313916 (= e!3301862 tp_is_empty!39189)))

(assert (= (and b!5313413 (is-ElementMatch!14968 (regTwo!30449 r!7292))) b!5313916))

(assert (= (and b!5313413 (is-Concat!23813 (regTwo!30449 r!7292))) b!5313917))

(assert (= (and b!5313413 (is-Star!14968 (regTwo!30449 r!7292))) b!5313918))

(assert (= (and b!5313413 (is-Union!14968 (regTwo!30449 r!7292))) b!5313919))

(declare-fun b!5313924 () Bool)

(declare-fun e!3301865 () Bool)

(declare-fun tp!1479954 () Bool)

(declare-fun tp!1479955 () Bool)

(assert (=> b!5313924 (= e!3301865 (and tp!1479954 tp!1479955))))

(assert (=> b!5313412 (= tp!1479891 e!3301865)))

(assert (= (and b!5313412 (is-Cons!61080 (exprs!4852 (h!67529 zl!343)))) b!5313924))

(declare-fun e!3301866 () Bool)

(assert (=> b!5313427 (= tp!1479890 e!3301866)))

(declare-fun b!5313926 () Bool)

(declare-fun tp!1479959 () Bool)

(declare-fun tp!1479956 () Bool)

(assert (=> b!5313926 (= e!3301866 (and tp!1479959 tp!1479956))))

(declare-fun b!5313928 () Bool)

(declare-fun tp!1479957 () Bool)

(declare-fun tp!1479958 () Bool)

(assert (=> b!5313928 (= e!3301866 (and tp!1479957 tp!1479958))))

(declare-fun b!5313927 () Bool)

(declare-fun tp!1479960 () Bool)

(assert (=> b!5313927 (= e!3301866 tp!1479960)))

(declare-fun b!5313925 () Bool)

(assert (=> b!5313925 (= e!3301866 tp_is_empty!39189)))

(assert (= (and b!5313427 (is-ElementMatch!14968 (regOne!30448 r!7292))) b!5313925))

(assert (= (and b!5313427 (is-Concat!23813 (regOne!30448 r!7292))) b!5313926))

(assert (= (and b!5313427 (is-Star!14968 (regOne!30448 r!7292))) b!5313927))

(assert (= (and b!5313427 (is-Union!14968 (regOne!30448 r!7292))) b!5313928))

(declare-fun e!3301867 () Bool)

(assert (=> b!5313427 (= tp!1479898 e!3301867)))

(declare-fun b!5313930 () Bool)

(declare-fun tp!1479964 () Bool)

(declare-fun tp!1479961 () Bool)

(assert (=> b!5313930 (= e!3301867 (and tp!1479964 tp!1479961))))

(declare-fun b!5313932 () Bool)

(declare-fun tp!1479962 () Bool)

(declare-fun tp!1479963 () Bool)

(assert (=> b!5313932 (= e!3301867 (and tp!1479962 tp!1479963))))

(declare-fun b!5313931 () Bool)

(declare-fun tp!1479965 () Bool)

(assert (=> b!5313931 (= e!3301867 tp!1479965)))

(declare-fun b!5313929 () Bool)

(assert (=> b!5313929 (= e!3301867 tp_is_empty!39189)))

(assert (= (and b!5313427 (is-ElementMatch!14968 (regTwo!30448 r!7292))) b!5313929))

(assert (= (and b!5313427 (is-Concat!23813 (regTwo!30448 r!7292))) b!5313930))

(assert (= (and b!5313427 (is-Star!14968 (regTwo!30448 r!7292))) b!5313931))

(assert (= (and b!5313427 (is-Union!14968 (regTwo!30448 r!7292))) b!5313932))

(declare-fun condSetEmpty!34178 () Bool)

(assert (=> setNonEmpty!34172 (= condSetEmpty!34178 (= setRest!34172 (as set.empty (Set Context!8704))))))

(declare-fun setRes!34178 () Bool)

(assert (=> setNonEmpty!34172 (= tp!1479896 setRes!34178)))

(declare-fun setIsEmpty!34178 () Bool)

(assert (=> setIsEmpty!34178 setRes!34178))

(declare-fun setNonEmpty!34178 () Bool)

(declare-fun e!3301870 () Bool)

(declare-fun tp!1479971 () Bool)

(declare-fun setElem!34178 () Context!8704)

(assert (=> setNonEmpty!34178 (= setRes!34178 (and tp!1479971 (inv!80668 setElem!34178) e!3301870))))

(declare-fun setRest!34178 () (Set Context!8704))

(assert (=> setNonEmpty!34178 (= setRest!34172 (set.union (set.insert setElem!34178 (as set.empty (Set Context!8704))) setRest!34178))))

(declare-fun b!5313937 () Bool)

(declare-fun tp!1479970 () Bool)

(assert (=> b!5313937 (= e!3301870 tp!1479970)))

(assert (= (and setNonEmpty!34172 condSetEmpty!34178) setIsEmpty!34178))

(assert (= (and setNonEmpty!34172 (not condSetEmpty!34178)) setNonEmpty!34178))

(assert (= setNonEmpty!34178 b!5313937))

(declare-fun m!6350778 () Bool)

(assert (=> setNonEmpty!34178 m!6350778))

(declare-fun b!5313942 () Bool)

(declare-fun e!3301873 () Bool)

(declare-fun tp!1479974 () Bool)

(assert (=> b!5313942 (= e!3301873 (and tp_is_empty!39189 tp!1479974))))

(assert (=> b!5313411 (= tp!1479893 e!3301873)))

(assert (= (and b!5313411 (is-Cons!61079 (t!374408 s!2326))) b!5313942))

(declare-fun e!3301874 () Bool)

(assert (=> b!5313426 (= tp!1479894 e!3301874)))

(declare-fun b!5313944 () Bool)

(declare-fun tp!1479978 () Bool)

(declare-fun tp!1479975 () Bool)

(assert (=> b!5313944 (= e!3301874 (and tp!1479978 tp!1479975))))

(declare-fun b!5313946 () Bool)

(declare-fun tp!1479976 () Bool)

(declare-fun tp!1479977 () Bool)

(assert (=> b!5313946 (= e!3301874 (and tp!1479976 tp!1479977))))

(declare-fun b!5313945 () Bool)

(declare-fun tp!1479979 () Bool)

(assert (=> b!5313945 (= e!3301874 tp!1479979)))

(declare-fun b!5313943 () Bool)

(assert (=> b!5313943 (= e!3301874 tp_is_empty!39189)))

(assert (= (and b!5313426 (is-ElementMatch!14968 (reg!15297 r!7292))) b!5313943))

(assert (= (and b!5313426 (is-Concat!23813 (reg!15297 r!7292))) b!5313944))

(assert (= (and b!5313426 (is-Star!14968 (reg!15297 r!7292))) b!5313945))

(assert (= (and b!5313426 (is-Union!14968 (reg!15297 r!7292))) b!5313946))

(declare-fun b!5313947 () Bool)

(declare-fun e!3301875 () Bool)

(declare-fun tp!1479980 () Bool)

(declare-fun tp!1479981 () Bool)

(assert (=> b!5313947 (= e!3301875 (and tp!1479980 tp!1479981))))

(assert (=> b!5313410 (= tp!1479899 e!3301875)))

(assert (= (and b!5313410 (is-Cons!61080 (exprs!4852 setElem!34172))) b!5313947))

(declare-fun b!5313955 () Bool)

(declare-fun e!3301881 () Bool)

(declare-fun tp!1479986 () Bool)

(assert (=> b!5313955 (= e!3301881 tp!1479986)))

(declare-fun b!5313954 () Bool)

(declare-fun tp!1479987 () Bool)

(declare-fun e!3301880 () Bool)

(assert (=> b!5313954 (= e!3301880 (and (inv!80668 (h!67529 (t!374410 zl!343))) e!3301881 tp!1479987))))

(assert (=> b!5313429 (= tp!1479895 e!3301880)))

(assert (= b!5313954 b!5313955))

(assert (= (and b!5313429 (is-Cons!61081 (t!374410 zl!343))) b!5313954))

(declare-fun m!6350780 () Bool)

(assert (=> b!5313954 m!6350780))

(declare-fun b_lambda!204455 () Bool)

(assert (= b_lambda!204453 (or b!5313407 b_lambda!204455)))

(declare-fun bs!1231954 () Bool)

(declare-fun d!1707222 () Bool)

(assert (= bs!1231954 (and d!1707222 b!5313407)))

(assert (=> bs!1231954 (= (dynLambda!24140 lambda!270834 (h!67529 zl!343)) (derivationStepZipperUp!340 (h!67529 zl!343) (h!67527 s!2326)))))

(assert (=> bs!1231954 m!6350418))

(assert (=> d!1707140 d!1707222))

(push 1)

(assert (not b_lambda!204455))

(assert (not b!5313942))

(assert (not b!5313663))

(assert (not b!5313857))

(assert (not b!5313919))

(assert (not d!1707186))

(assert (not d!1707202))

(assert (not b!5313711))

(assert (not b!5313915))

(assert tp_is_empty!39189)

(assert (not b!5313564))

(assert (not b!5313627))

(assert (not d!1707160))

(assert (not b!5313794))

(assert (not bm!378894))

(assert (not b!5313705))

(assert (not b!5313788))

(assert (not d!1707188))

(assert (not b!5313937))

(assert (not b!5313621))

(assert (not b!5313927))

(assert (not b!5313762))

(assert (not d!1707178))

(assert (not b!5313926))

(assert (not d!1707190))

(assert (not b!5313578))

(assert (not b!5313669))

(assert (not bm!378884))

(assert (not b!5313790))

(assert (not b!5313930))

(assert (not d!1707174))

(assert (not b!5313931))

(assert (not bm!378880))

(assert (not b!5313858))

(assert (not b!5313758))

(assert (not b!5313628))

(assert (not b!5313822))

(assert (not b!5313583))

(assert (not b!5313668))

(assert (not b!5313626))

(assert (not b!5313579))

(assert (not b!5313918))

(assert (not b!5313928))

(assert (not b!5313914))

(assert (not b!5313641))

(assert (not b!5313797))

(assert (not b!5313796))

(assert (not d!1707158))

(assert (not b!5313662))

(assert (not b!5313913))

(assert (not b!5313752))

(assert (not d!1707208))

(assert (not b!5313932))

(assert (not setNonEmpty!34178))

(assert (not d!1707168))

(assert (not b!5313947))

(assert (not b!5313924))

(assert (not b!5313852))

(assert (not b!5313860))

(assert (not d!1707200))

(assert (not b!5313589))

(assert (not d!1707204))

(assert (not bs!1231954))

(assert (not b!5313945))

(assert (not d!1707140))

(assert (not bm!378885))

(assert (not d!1707198))

(assert (not bm!378907))

(assert (not bm!378876))

(assert (not b!5313853))

(assert (not b!5313615))

(assert (not b!5313901))

(assert (not b!5313954))

(assert (not b!5313760))

(assert (not bm!378886))

(assert (not b!5313855))

(assert (not b!5313629))

(assert (not b!5313793))

(assert (not b!5313588))

(assert (not d!1707144))

(assert (not bm!378879))

(assert (not d!1707210))

(assert (not d!1707154))

(assert (not bm!378904))

(assert (not d!1707162))

(assert (not b!5313946))

(assert (not d!1707212))

(assert (not d!1707150))

(assert (not b!5313955))

(assert (not b!5313944))

(assert (not b!5313751))

(assert (not d!1707184))

(assert (not b!5313795))

(assert (not b!5313664))

(assert (not bm!378897))

(assert (not d!1707196))

(assert (not d!1707166))

(assert (not b!5313670))

(assert (not b!5313671))

(assert (not b!5313755))

(assert (not bm!378903))

(assert (not bm!378898))

(assert (not b!5313900))

(assert (not b!5313635))

(assert (not b!5313917))

(assert (not b!5313584))

(assert (not bm!378895))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1707272 () Bool)

(assert (=> d!1707272 (= (isEmpty!33049 (tail!10489 s!2326)) (is-Nil!61079 (tail!10489 s!2326)))))

(assert (=> b!5313755 d!1707272))

(declare-fun d!1707274 () Bool)

(assert (=> d!1707274 (= (tail!10489 s!2326) (t!374408 s!2326))))

(assert (=> b!5313755 d!1707274))

(declare-fun d!1707276 () Bool)

(assert (=> d!1707276 true))

(declare-fun setRes!34184 () Bool)

(assert (=> d!1707276 setRes!34184))

(declare-fun condSetEmpty!34184 () Bool)

(declare-fun res!2254480 () (Set Context!8704))

(assert (=> d!1707276 (= condSetEmpty!34184 (= res!2254480 (as set.empty (Set Context!8704))))))

(assert (=> d!1707276 (= (choose!39759 z!1189 lambda!270834) res!2254480)))

(declare-fun setIsEmpty!34184 () Bool)

(assert (=> setIsEmpty!34184 setRes!34184))

(declare-fun setElem!34184 () Context!8704)

(declare-fun e!3302045 () Bool)

(declare-fun setNonEmpty!34184 () Bool)

(declare-fun tp!1480051 () Bool)

(assert (=> setNonEmpty!34184 (= setRes!34184 (and tp!1480051 (inv!80668 setElem!34184) e!3302045))))

(declare-fun setRest!34184 () (Set Context!8704))

(assert (=> setNonEmpty!34184 (= res!2254480 (set.union (set.insert setElem!34184 (as set.empty (Set Context!8704))) setRest!34184))))

(declare-fun b!5314244 () Bool)

(declare-fun tp!1480050 () Bool)

(assert (=> b!5314244 (= e!3302045 tp!1480050)))

(assert (= (and d!1707276 condSetEmpty!34184) setIsEmpty!34184))

(assert (= (and d!1707276 (not condSetEmpty!34184)) setNonEmpty!34184))

(assert (= setNonEmpty!34184 b!5314244))

(declare-fun m!6350912 () Bool)

(assert (=> setNonEmpty!34184 m!6350912))

(assert (=> d!1707150 d!1707276))

(declare-fun b!5314246 () Bool)

(declare-fun res!2254484 () Bool)

(declare-fun e!3302052 () Bool)

(assert (=> b!5314246 (=> res!2254484 e!3302052)))

(assert (=> b!5314246 (= res!2254484 (not (is-Concat!23813 (ite c!923110 (reg!15297 (regOne!30448 (regOne!30448 r!7292))) (ite c!923109 (regOne!30449 (regOne!30448 (regOne!30448 r!7292))) (regOne!30448 (regOne!30448 (regOne!30448 r!7292))))))))))

(declare-fun e!3302049 () Bool)

(assert (=> b!5314246 (= e!3302049 e!3302052)))

(declare-fun bm!378952 () Bool)

(declare-fun call!378958 () Bool)

(declare-fun call!378957 () Bool)

(assert (=> bm!378952 (= call!378958 call!378957)))

(declare-fun call!378959 () Bool)

(declare-fun c!923264 () Bool)

(declare-fun bm!378953 () Bool)

(assert (=> bm!378953 (= call!378959 (validRegex!6704 (ite c!923264 (regTwo!30449 (ite c!923110 (reg!15297 (regOne!30448 (regOne!30448 r!7292))) (ite c!923109 (regOne!30449 (regOne!30448 (regOne!30448 r!7292))) (regOne!30448 (regOne!30448 (regOne!30448 r!7292)))))) (regTwo!30448 (ite c!923110 (reg!15297 (regOne!30448 (regOne!30448 r!7292))) (ite c!923109 (regOne!30449 (regOne!30448 (regOne!30448 r!7292))) (regOne!30448 (regOne!30448 (regOne!30448 r!7292)))))))))))

(declare-fun c!923265 () Bool)

(declare-fun bm!378954 () Bool)

(assert (=> bm!378954 (= call!378957 (validRegex!6704 (ite c!923265 (reg!15297 (ite c!923110 (reg!15297 (regOne!30448 (regOne!30448 r!7292))) (ite c!923109 (regOne!30449 (regOne!30448 (regOne!30448 r!7292))) (regOne!30448 (regOne!30448 (regOne!30448 r!7292)))))) (ite c!923264 (regOne!30449 (ite c!923110 (reg!15297 (regOne!30448 (regOne!30448 r!7292))) (ite c!923109 (regOne!30449 (regOne!30448 (regOne!30448 r!7292))) (regOne!30448 (regOne!30448 (regOne!30448 r!7292)))))) (regOne!30448 (ite c!923110 (reg!15297 (regOne!30448 (regOne!30448 r!7292))) (ite c!923109 (regOne!30449 (regOne!30448 (regOne!30448 r!7292))) (regOne!30448 (regOne!30448 (regOne!30448 r!7292))))))))))))

(declare-fun b!5314247 () Bool)

(declare-fun e!3302051 () Bool)

(assert (=> b!5314247 (= e!3302052 e!3302051)))

(declare-fun res!2254483 () Bool)

(assert (=> b!5314247 (=> (not res!2254483) (not e!3302051))))

(assert (=> b!5314247 (= res!2254483 call!378958)))

(declare-fun b!5314248 () Bool)

(declare-fun e!3302050 () Bool)

(assert (=> b!5314248 (= e!3302050 call!378959)))

(declare-fun b!5314249 () Bool)

(declare-fun e!3302048 () Bool)

(assert (=> b!5314249 (= e!3302048 e!3302049)))

(assert (=> b!5314249 (= c!923264 (is-Union!14968 (ite c!923110 (reg!15297 (regOne!30448 (regOne!30448 r!7292))) (ite c!923109 (regOne!30449 (regOne!30448 (regOne!30448 r!7292))) (regOne!30448 (regOne!30448 (regOne!30448 r!7292)))))))))

(declare-fun b!5314250 () Bool)

(declare-fun e!3302046 () Bool)

(assert (=> b!5314250 (= e!3302048 e!3302046)))

(declare-fun res!2254482 () Bool)

(assert (=> b!5314250 (= res!2254482 (not (nullable!5137 (reg!15297 (ite c!923110 (reg!15297 (regOne!30448 (regOne!30448 r!7292))) (ite c!923109 (regOne!30449 (regOne!30448 (regOne!30448 r!7292))) (regOne!30448 (regOne!30448 (regOne!30448 r!7292)))))))))))

(assert (=> b!5314250 (=> (not res!2254482) (not e!3302046))))

(declare-fun b!5314251 () Bool)

(declare-fun e!3302047 () Bool)

(assert (=> b!5314251 (= e!3302047 e!3302048)))

(assert (=> b!5314251 (= c!923265 (is-Star!14968 (ite c!923110 (reg!15297 (regOne!30448 (regOne!30448 r!7292))) (ite c!923109 (regOne!30449 (regOne!30448 (regOne!30448 r!7292))) (regOne!30448 (regOne!30448 (regOne!30448 r!7292)))))))))

(declare-fun b!5314252 () Bool)

(declare-fun res!2254481 () Bool)

(assert (=> b!5314252 (=> (not res!2254481) (not e!3302050))))

(assert (=> b!5314252 (= res!2254481 call!378958)))

(assert (=> b!5314252 (= e!3302049 e!3302050)))

(declare-fun b!5314253 () Bool)

(assert (=> b!5314253 (= e!3302046 call!378957)))

(declare-fun d!1707278 () Bool)

(declare-fun res!2254485 () Bool)

(assert (=> d!1707278 (=> res!2254485 e!3302047)))

(assert (=> d!1707278 (= res!2254485 (is-ElementMatch!14968 (ite c!923110 (reg!15297 (regOne!30448 (regOne!30448 r!7292))) (ite c!923109 (regOne!30449 (regOne!30448 (regOne!30448 r!7292))) (regOne!30448 (regOne!30448 (regOne!30448 r!7292)))))))))

(assert (=> d!1707278 (= (validRegex!6704 (ite c!923110 (reg!15297 (regOne!30448 (regOne!30448 r!7292))) (ite c!923109 (regOne!30449 (regOne!30448 (regOne!30448 r!7292))) (regOne!30448 (regOne!30448 (regOne!30448 r!7292)))))) e!3302047)))

(declare-fun b!5314245 () Bool)

(assert (=> b!5314245 (= e!3302051 call!378959)))

(assert (= (and d!1707278 (not res!2254485)) b!5314251))

(assert (= (and b!5314251 c!923265) b!5314250))

(assert (= (and b!5314251 (not c!923265)) b!5314249))

(assert (= (and b!5314250 res!2254482) b!5314253))

(assert (= (and b!5314249 c!923264) b!5314252))

(assert (= (and b!5314249 (not c!923264)) b!5314246))

(assert (= (and b!5314252 res!2254481) b!5314248))

(assert (= (and b!5314246 (not res!2254484)) b!5314247))

(assert (= (and b!5314247 res!2254483) b!5314245))

(assert (= (or b!5314248 b!5314245) bm!378953))

(assert (= (or b!5314252 b!5314247) bm!378952))

(assert (= (or b!5314253 bm!378952) bm!378954))

(declare-fun m!6350914 () Bool)

(assert (=> bm!378953 m!6350914))

(declare-fun m!6350916 () Bool)

(assert (=> bm!378954 m!6350916))

(declare-fun m!6350918 () Bool)

(assert (=> b!5314250 m!6350918))

(assert (=> bm!378895 d!1707278))

(declare-fun b!5314255 () Bool)

(declare-fun res!2254489 () Bool)

(declare-fun e!3302059 () Bool)

(assert (=> b!5314255 (=> res!2254489 e!3302059)))

(assert (=> b!5314255 (= res!2254489 (not (is-Concat!23813 lt!2171011)))))

(declare-fun e!3302056 () Bool)

(assert (=> b!5314255 (= e!3302056 e!3302059)))

(declare-fun bm!378955 () Bool)

(declare-fun call!378961 () Bool)

(declare-fun call!378960 () Bool)

(assert (=> bm!378955 (= call!378961 call!378960)))

(declare-fun bm!378956 () Bool)

(declare-fun call!378962 () Bool)

(declare-fun c!923266 () Bool)

(assert (=> bm!378956 (= call!378962 (validRegex!6704 (ite c!923266 (regTwo!30449 lt!2171011) (regTwo!30448 lt!2171011))))))

(declare-fun bm!378957 () Bool)

(declare-fun c!923267 () Bool)

(assert (=> bm!378957 (= call!378960 (validRegex!6704 (ite c!923267 (reg!15297 lt!2171011) (ite c!923266 (regOne!30449 lt!2171011) (regOne!30448 lt!2171011)))))))

(declare-fun b!5314256 () Bool)

(declare-fun e!3302058 () Bool)

(assert (=> b!5314256 (= e!3302059 e!3302058)))

(declare-fun res!2254488 () Bool)

(assert (=> b!5314256 (=> (not res!2254488) (not e!3302058))))

(assert (=> b!5314256 (= res!2254488 call!378961)))

(declare-fun b!5314257 () Bool)

(declare-fun e!3302057 () Bool)

(assert (=> b!5314257 (= e!3302057 call!378962)))

(declare-fun b!5314258 () Bool)

(declare-fun e!3302055 () Bool)

(assert (=> b!5314258 (= e!3302055 e!3302056)))

(assert (=> b!5314258 (= c!923266 (is-Union!14968 lt!2171011))))

(declare-fun b!5314259 () Bool)

(declare-fun e!3302053 () Bool)

(assert (=> b!5314259 (= e!3302055 e!3302053)))

(declare-fun res!2254487 () Bool)

(assert (=> b!5314259 (= res!2254487 (not (nullable!5137 (reg!15297 lt!2171011))))))

(assert (=> b!5314259 (=> (not res!2254487) (not e!3302053))))

(declare-fun b!5314260 () Bool)

(declare-fun e!3302054 () Bool)

(assert (=> b!5314260 (= e!3302054 e!3302055)))

(assert (=> b!5314260 (= c!923267 (is-Star!14968 lt!2171011))))

(declare-fun b!5314261 () Bool)

(declare-fun res!2254486 () Bool)

(assert (=> b!5314261 (=> (not res!2254486) (not e!3302057))))

(assert (=> b!5314261 (= res!2254486 call!378961)))

(assert (=> b!5314261 (= e!3302056 e!3302057)))

(declare-fun b!5314262 () Bool)

(assert (=> b!5314262 (= e!3302053 call!378960)))

(declare-fun d!1707280 () Bool)

(declare-fun res!2254490 () Bool)

(assert (=> d!1707280 (=> res!2254490 e!3302054)))

(assert (=> d!1707280 (= res!2254490 (is-ElementMatch!14968 lt!2171011))))

(assert (=> d!1707280 (= (validRegex!6704 lt!2171011) e!3302054)))

(declare-fun b!5314254 () Bool)

(assert (=> b!5314254 (= e!3302058 call!378962)))

(assert (= (and d!1707280 (not res!2254490)) b!5314260))

(assert (= (and b!5314260 c!923267) b!5314259))

(assert (= (and b!5314260 (not c!923267)) b!5314258))

(assert (= (and b!5314259 res!2254487) b!5314262))

(assert (= (and b!5314258 c!923266) b!5314261))

(assert (= (and b!5314258 (not c!923266)) b!5314255))

(assert (= (and b!5314261 res!2254486) b!5314257))

(assert (= (and b!5314255 (not res!2254489)) b!5314256))

(assert (= (and b!5314256 res!2254488) b!5314254))

(assert (= (or b!5314257 b!5314254) bm!378956))

(assert (= (or b!5314261 b!5314256) bm!378955))

(assert (= (or b!5314262 bm!378955) bm!378957))

(declare-fun m!6350920 () Bool)

(assert (=> bm!378956 m!6350920))

(declare-fun m!6350922 () Bool)

(assert (=> bm!378957 m!6350922))

(declare-fun m!6350924 () Bool)

(assert (=> b!5314259 m!6350924))

(assert (=> d!1707208 d!1707280))

(assert (=> d!1707208 d!1707184))

(assert (=> d!1707208 d!1707186))

(declare-fun d!1707282 () Bool)

(assert (=> d!1707282 (= (nullable!5137 (h!67528 (exprs!4852 lt!2170917))) (nullableFct!1489 (h!67528 (exprs!4852 lt!2170917))))))

(declare-fun bs!1231987 () Bool)

(assert (= bs!1231987 d!1707282))

(declare-fun m!6350926 () Bool)

(assert (=> bs!1231987 m!6350926))

(assert (=> b!5313588 d!1707282))

(declare-fun d!1707284 () Bool)

(assert (=> d!1707284 (= (isEmpty!33049 s!2326) (is-Nil!61079 s!2326))))

(assert (=> bm!378907 d!1707284))

(declare-fun b!5314263 () Bool)

(declare-fun e!3302062 () (Set Context!8704))

(assert (=> b!5314263 (= e!3302062 (as set.empty (Set Context!8704)))))

(declare-fun b!5314264 () Bool)

(declare-fun e!3302063 () (Set Context!8704))

(assert (=> b!5314264 (= e!3302063 (set.insert (Context!8705 (t!374409 (exprs!4852 lt!2170917))) (as set.empty (Set Context!8704))))))

(declare-fun c!923268 () Bool)

(declare-fun call!378968 () List!61204)

(declare-fun c!923271 () Bool)

(declare-fun bm!378958 () Bool)

(declare-fun call!378965 () (Set Context!8704))

(declare-fun c!923270 () Bool)

(assert (=> bm!378958 (= call!378965 (derivationStepZipperDown!416 (ite c!923270 (regOne!30449 (h!67528 (exprs!4852 lt!2170917))) (ite c!923268 (regTwo!30448 (h!67528 (exprs!4852 lt!2170917))) (ite c!923271 (regOne!30448 (h!67528 (exprs!4852 lt!2170917))) (reg!15297 (h!67528 (exprs!4852 lt!2170917)))))) (ite (or c!923270 c!923268) (Context!8705 (t!374409 (exprs!4852 lt!2170917))) (Context!8705 call!378968)) (h!67527 s!2326)))))

(declare-fun bm!378959 () Bool)

(declare-fun call!378966 () (Set Context!8704))

(assert (=> bm!378959 (= call!378966 call!378965)))

(declare-fun b!5314265 () Bool)

(declare-fun call!378964 () (Set Context!8704))

(assert (=> b!5314265 (= e!3302062 call!378964)))

(declare-fun bm!378960 () Bool)

(declare-fun call!378963 () List!61204)

(assert (=> bm!378960 (= call!378968 call!378963)))

(declare-fun call!378967 () (Set Context!8704))

(declare-fun bm!378961 () Bool)

(assert (=> bm!378961 (= call!378967 (derivationStepZipperDown!416 (ite c!923270 (regTwo!30449 (h!67528 (exprs!4852 lt!2170917))) (regOne!30448 (h!67528 (exprs!4852 lt!2170917)))) (ite c!923270 (Context!8705 (t!374409 (exprs!4852 lt!2170917))) (Context!8705 call!378963)) (h!67527 s!2326)))))

(declare-fun b!5314266 () Bool)

(declare-fun e!3302060 () Bool)

(assert (=> b!5314266 (= c!923268 e!3302060)))

(declare-fun res!2254491 () Bool)

(assert (=> b!5314266 (=> (not res!2254491) (not e!3302060))))

(assert (=> b!5314266 (= res!2254491 (is-Concat!23813 (h!67528 (exprs!4852 lt!2170917))))))

(declare-fun e!3302064 () (Set Context!8704))

(declare-fun e!3302061 () (Set Context!8704))

(assert (=> b!5314266 (= e!3302064 e!3302061)))

(declare-fun b!5314267 () Bool)

(declare-fun c!923269 () Bool)

(assert (=> b!5314267 (= c!923269 (is-Star!14968 (h!67528 (exprs!4852 lt!2170917))))))

(declare-fun e!3302065 () (Set Context!8704))

(assert (=> b!5314267 (= e!3302065 e!3302062)))

(declare-fun b!5314268 () Bool)

(assert (=> b!5314268 (= e!3302064 (set.union call!378965 call!378967))))

(declare-fun b!5314269 () Bool)

(assert (=> b!5314269 (= e!3302061 e!3302065)))

(assert (=> b!5314269 (= c!923271 (is-Concat!23813 (h!67528 (exprs!4852 lt!2170917))))))

(declare-fun b!5314270 () Bool)

(assert (=> b!5314270 (= e!3302065 call!378964)))

(declare-fun b!5314271 () Bool)

(assert (=> b!5314271 (= e!3302060 (nullable!5137 (regOne!30448 (h!67528 (exprs!4852 lt!2170917)))))))

(declare-fun d!1707286 () Bool)

(declare-fun c!923272 () Bool)

(assert (=> d!1707286 (= c!923272 (and (is-ElementMatch!14968 (h!67528 (exprs!4852 lt!2170917))) (= (c!923072 (h!67528 (exprs!4852 lt!2170917))) (h!67527 s!2326))))))

(assert (=> d!1707286 (= (derivationStepZipperDown!416 (h!67528 (exprs!4852 lt!2170917)) (Context!8705 (t!374409 (exprs!4852 lt!2170917))) (h!67527 s!2326)) e!3302063)))

(declare-fun b!5314272 () Bool)

(assert (=> b!5314272 (= e!3302063 e!3302064)))

(assert (=> b!5314272 (= c!923270 (is-Union!14968 (h!67528 (exprs!4852 lt!2170917))))))

(declare-fun bm!378962 () Bool)

(assert (=> bm!378962 (= call!378963 ($colon$colon!1387 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 lt!2170917)))) (ite (or c!923268 c!923271) (regTwo!30448 (h!67528 (exprs!4852 lt!2170917))) (h!67528 (exprs!4852 lt!2170917)))))))

(declare-fun b!5314273 () Bool)

(assert (=> b!5314273 (= e!3302061 (set.union call!378967 call!378966))))

(declare-fun bm!378963 () Bool)

(assert (=> bm!378963 (= call!378964 call!378966)))

(assert (= (and d!1707286 c!923272) b!5314264))

(assert (= (and d!1707286 (not c!923272)) b!5314272))

(assert (= (and b!5314272 c!923270) b!5314268))

(assert (= (and b!5314272 (not c!923270)) b!5314266))

(assert (= (and b!5314266 res!2254491) b!5314271))

(assert (= (and b!5314266 c!923268) b!5314273))

(assert (= (and b!5314266 (not c!923268)) b!5314269))

(assert (= (and b!5314269 c!923271) b!5314270))

(assert (= (and b!5314269 (not c!923271)) b!5314267))

(assert (= (and b!5314267 c!923269) b!5314265))

(assert (= (and b!5314267 (not c!923269)) b!5314263))

(assert (= (or b!5314270 b!5314265) bm!378960))

(assert (= (or b!5314270 b!5314265) bm!378963))

(assert (= (or b!5314273 bm!378960) bm!378962))

(assert (= (or b!5314273 bm!378963) bm!378959))

(assert (= (or b!5314268 b!5314273) bm!378961))

(assert (= (or b!5314268 bm!378959) bm!378958))

(declare-fun m!6350928 () Bool)

(assert (=> bm!378962 m!6350928))

(declare-fun m!6350930 () Bool)

(assert (=> b!5314271 m!6350930))

(declare-fun m!6350932 () Bool)

(assert (=> bm!378958 m!6350932))

(declare-fun m!6350934 () Bool)

(assert (=> b!5314264 m!6350934))

(declare-fun m!6350936 () Bool)

(assert (=> bm!378961 m!6350936))

(assert (=> bm!378886 d!1707286))

(declare-fun d!1707288 () Bool)

(assert (=> d!1707288 (= (isEmpty!33049 (t!374408 s!2326)) (is-Nil!61079 (t!374408 s!2326)))))

(assert (=> d!1707160 d!1707288))

(declare-fun d!1707290 () Bool)

(declare-fun res!2254496 () Bool)

(declare-fun e!3302070 () Bool)

(assert (=> d!1707290 (=> res!2254496 e!3302070)))

(assert (=> d!1707290 (= res!2254496 (is-Nil!61080 (exprs!4852 setElem!34172)))))

(assert (=> d!1707290 (= (forall!14388 (exprs!4852 setElem!34172) lambda!270865) e!3302070)))

(declare-fun b!5314278 () Bool)

(declare-fun e!3302071 () Bool)

(assert (=> b!5314278 (= e!3302070 e!3302071)))

(declare-fun res!2254497 () Bool)

(assert (=> b!5314278 (=> (not res!2254497) (not e!3302071))))

(declare-fun dynLambda!24142 (Int Regex!14968) Bool)

(assert (=> b!5314278 (= res!2254497 (dynLambda!24142 lambda!270865 (h!67528 (exprs!4852 setElem!34172))))))

(declare-fun b!5314279 () Bool)

(assert (=> b!5314279 (= e!3302071 (forall!14388 (t!374409 (exprs!4852 setElem!34172)) lambda!270865))))

(assert (= (and d!1707290 (not res!2254496)) b!5314278))

(assert (= (and b!5314278 res!2254497) b!5314279))

(declare-fun b_lambda!204461 () Bool)

(assert (=> (not b_lambda!204461) (not b!5314278)))

(declare-fun m!6350938 () Bool)

(assert (=> b!5314278 m!6350938))

(declare-fun m!6350940 () Bool)

(assert (=> b!5314279 m!6350940))

(assert (=> d!1707188 d!1707290))

(declare-fun d!1707292 () Bool)

(assert (=> d!1707292 (= (head!11392 s!2326) (h!67527 s!2326))))

(assert (=> b!5313752 d!1707292))

(assert (=> bm!378903 d!1707284))

(declare-fun bs!1231988 () Bool)

(declare-fun d!1707294 () Bool)

(assert (= bs!1231988 (and d!1707294 d!1707188)))

(declare-fun lambda!270902 () Int)

(assert (=> bs!1231988 (= lambda!270902 lambda!270865)))

(declare-fun bs!1231989 () Bool)

(assert (= bs!1231989 (and d!1707294 d!1707168)))

(assert (=> bs!1231989 (= lambda!270902 lambda!270848)))

(declare-fun bs!1231990 () Bool)

(assert (= bs!1231990 (and d!1707294 d!1707186)))

(assert (=> bs!1231990 (= lambda!270902 lambda!270862)))

(declare-fun bs!1231991 () Bool)

(assert (= bs!1231991 (and d!1707294 d!1707184)))

(assert (=> bs!1231991 (= lambda!270902 lambda!270857)))

(declare-fun bs!1231992 () Bool)

(assert (= bs!1231992 (and d!1707294 d!1707210)))

(assert (=> bs!1231992 (= lambda!270902 lambda!270876)))

(assert (=> d!1707294 (= (inv!80668 (h!67529 (t!374410 zl!343))) (forall!14388 (exprs!4852 (h!67529 (t!374410 zl!343))) lambda!270902))))

(declare-fun bs!1231993 () Bool)

(assert (= bs!1231993 d!1707294))

(declare-fun m!6350942 () Bool)

(assert (=> bs!1231993 m!6350942))

(assert (=> b!5313954 d!1707294))

(declare-fun d!1707296 () Bool)

(assert (=> d!1707296 (= (isEmptyExpr!872 lt!2170966) (is-EmptyExpr!14968 lt!2170966))))

(assert (=> b!5313670 d!1707296))

(declare-fun b!5314281 () Bool)

(declare-fun res!2254501 () Bool)

(declare-fun e!3302078 () Bool)

(assert (=> b!5314281 (=> res!2254501 e!3302078)))

(assert (=> b!5314281 (= res!2254501 (not (is-Concat!23813 (ite c!923115 (regTwo!30449 r!7292) (regTwo!30448 r!7292)))))))

(declare-fun e!3302075 () Bool)

(assert (=> b!5314281 (= e!3302075 e!3302078)))

(declare-fun bm!378964 () Bool)

(declare-fun call!378970 () Bool)

(declare-fun call!378969 () Bool)

(assert (=> bm!378964 (= call!378970 call!378969)))

(declare-fun call!378971 () Bool)

(declare-fun bm!378965 () Bool)

(declare-fun c!923273 () Bool)

(assert (=> bm!378965 (= call!378971 (validRegex!6704 (ite c!923273 (regTwo!30449 (ite c!923115 (regTwo!30449 r!7292) (regTwo!30448 r!7292))) (regTwo!30448 (ite c!923115 (regTwo!30449 r!7292) (regTwo!30448 r!7292))))))))

(declare-fun bm!378966 () Bool)

(declare-fun c!923274 () Bool)

(assert (=> bm!378966 (= call!378969 (validRegex!6704 (ite c!923274 (reg!15297 (ite c!923115 (regTwo!30449 r!7292) (regTwo!30448 r!7292))) (ite c!923273 (regOne!30449 (ite c!923115 (regTwo!30449 r!7292) (regTwo!30448 r!7292))) (regOne!30448 (ite c!923115 (regTwo!30449 r!7292) (regTwo!30448 r!7292)))))))))

(declare-fun b!5314282 () Bool)

(declare-fun e!3302077 () Bool)

(assert (=> b!5314282 (= e!3302078 e!3302077)))

(declare-fun res!2254500 () Bool)

(assert (=> b!5314282 (=> (not res!2254500) (not e!3302077))))

(assert (=> b!5314282 (= res!2254500 call!378970)))

(declare-fun b!5314283 () Bool)

(declare-fun e!3302076 () Bool)

(assert (=> b!5314283 (= e!3302076 call!378971)))

(declare-fun b!5314284 () Bool)

(declare-fun e!3302074 () Bool)

(assert (=> b!5314284 (= e!3302074 e!3302075)))

(assert (=> b!5314284 (= c!923273 (is-Union!14968 (ite c!923115 (regTwo!30449 r!7292) (regTwo!30448 r!7292))))))

(declare-fun b!5314285 () Bool)

(declare-fun e!3302072 () Bool)

(assert (=> b!5314285 (= e!3302074 e!3302072)))

(declare-fun res!2254499 () Bool)

(assert (=> b!5314285 (= res!2254499 (not (nullable!5137 (reg!15297 (ite c!923115 (regTwo!30449 r!7292) (regTwo!30448 r!7292))))))))

(assert (=> b!5314285 (=> (not res!2254499) (not e!3302072))))

(declare-fun b!5314286 () Bool)

(declare-fun e!3302073 () Bool)

(assert (=> b!5314286 (= e!3302073 e!3302074)))

(assert (=> b!5314286 (= c!923274 (is-Star!14968 (ite c!923115 (regTwo!30449 r!7292) (regTwo!30448 r!7292))))))

(declare-fun b!5314287 () Bool)

(declare-fun res!2254498 () Bool)

(assert (=> b!5314287 (=> (not res!2254498) (not e!3302076))))

(assert (=> b!5314287 (= res!2254498 call!378970)))

(assert (=> b!5314287 (= e!3302075 e!3302076)))

(declare-fun b!5314288 () Bool)

(assert (=> b!5314288 (= e!3302072 call!378969)))

(declare-fun d!1707298 () Bool)

(declare-fun res!2254502 () Bool)

(assert (=> d!1707298 (=> res!2254502 e!3302073)))

(assert (=> d!1707298 (= res!2254502 (is-ElementMatch!14968 (ite c!923115 (regTwo!30449 r!7292) (regTwo!30448 r!7292))))))

(assert (=> d!1707298 (= (validRegex!6704 (ite c!923115 (regTwo!30449 r!7292) (regTwo!30448 r!7292))) e!3302073)))

(declare-fun b!5314280 () Bool)

(assert (=> b!5314280 (= e!3302077 call!378971)))

(assert (= (and d!1707298 (not res!2254502)) b!5314286))

(assert (= (and b!5314286 c!923274) b!5314285))

(assert (= (and b!5314286 (not c!923274)) b!5314284))

(assert (= (and b!5314285 res!2254499) b!5314288))

(assert (= (and b!5314284 c!923273) b!5314287))

(assert (= (and b!5314284 (not c!923273)) b!5314281))

(assert (= (and b!5314287 res!2254498) b!5314283))

(assert (= (and b!5314281 (not res!2254501)) b!5314282))

(assert (= (and b!5314282 res!2254500) b!5314280))

(assert (= (or b!5314283 b!5314280) bm!378965))

(assert (= (or b!5314287 b!5314282) bm!378964))

(assert (= (or b!5314288 bm!378964) bm!378966))

(declare-fun m!6350944 () Bool)

(assert (=> bm!378965 m!6350944))

(declare-fun m!6350946 () Bool)

(assert (=> bm!378966 m!6350946))

(declare-fun m!6350948 () Bool)

(assert (=> b!5314285 m!6350948))

(assert (=> bm!378897 d!1707298))

(declare-fun d!1707300 () Bool)

(assert (=> d!1707300 true))

(assert (=> d!1707300 true))

(declare-fun res!2254505 () Bool)

(assert (=> d!1707300 (= (choose!39763 lambda!270832) res!2254505)))

(assert (=> d!1707196 d!1707300))

(declare-fun d!1707302 () Bool)

(declare-fun res!2254506 () Bool)

(declare-fun e!3302079 () Bool)

(assert (=> d!1707302 (=> res!2254506 e!3302079)))

(assert (=> d!1707302 (= res!2254506 (is-Nil!61080 lt!2170983))))

(assert (=> d!1707302 (= (forall!14388 lt!2170983 lambda!270862) e!3302079)))

(declare-fun b!5314289 () Bool)

(declare-fun e!3302080 () Bool)

(assert (=> b!5314289 (= e!3302079 e!3302080)))

(declare-fun res!2254507 () Bool)

(assert (=> b!5314289 (=> (not res!2254507) (not e!3302080))))

(assert (=> b!5314289 (= res!2254507 (dynLambda!24142 lambda!270862 (h!67528 lt!2170983)))))

(declare-fun b!5314290 () Bool)

(assert (=> b!5314290 (= e!3302080 (forall!14388 (t!374409 lt!2170983) lambda!270862))))

(assert (= (and d!1707302 (not res!2254506)) b!5314289))

(assert (= (and b!5314289 res!2254507) b!5314290))

(declare-fun b_lambda!204463 () Bool)

(assert (=> (not b_lambda!204463) (not b!5314289)))

(declare-fun m!6350950 () Bool)

(assert (=> b!5314289 m!6350950))

(declare-fun m!6350952 () Bool)

(assert (=> b!5314290 m!6350952))

(assert (=> d!1707186 d!1707302))

(declare-fun d!1707304 () Bool)

(assert (=> d!1707304 (= ($colon$colon!1387 (exprs!4852 lt!2170917) (ite (or c!923090 c!923093) (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (h!67528 (exprs!4852 (h!67529 zl!343))))) (Cons!61080 (ite (or c!923090 c!923093) (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (h!67528 (exprs!4852 (h!67529 zl!343)))) (exprs!4852 lt!2170917)))))

(assert (=> bm!378880 d!1707304))

(assert (=> d!1707174 d!1707284))

(assert (=> d!1707174 d!1707164))

(assert (=> d!1707158 d!1707162))

(assert (=> d!1707158 d!1707160))

(declare-fun d!1707306 () Bool)

(declare-fun e!3302083 () Bool)

(assert (=> d!1707306 (= (matchZipper!1212 (set.union lt!2170908 lt!2170910) (t!374408 s!2326)) e!3302083)))

(declare-fun res!2254510 () Bool)

(assert (=> d!1707306 (=> res!2254510 e!3302083)))

(assert (=> d!1707306 (= res!2254510 (matchZipper!1212 lt!2170908 (t!374408 s!2326)))))

(assert (=> d!1707306 true))

(declare-fun _$48!979 () Unit!153390)

(assert (=> d!1707306 (= (choose!39760 lt!2170908 lt!2170910 (t!374408 s!2326)) _$48!979)))

(declare-fun b!5314293 () Bool)

(assert (=> b!5314293 (= e!3302083 (matchZipper!1212 lt!2170910 (t!374408 s!2326)))))

(assert (= (and d!1707306 (not res!2254510)) b!5314293))

(assert (=> d!1707306 m!6350454))

(assert (=> d!1707306 m!6350452))

(assert (=> b!5314293 m!6350448))

(assert (=> d!1707158 d!1707306))

(assert (=> b!5313621 d!1707212))

(declare-fun d!1707308 () Bool)

(assert (=> d!1707308 (= (nullable!5137 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343))))) (nullableFct!1489 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343))))))))

(declare-fun bs!1231994 () Bool)

(assert (= bs!1231994 d!1707308))

(declare-fun m!6350954 () Bool)

(assert (=> bs!1231994 m!6350954))

(assert (=> b!5313564 d!1707308))

(declare-fun d!1707310 () Bool)

(assert (=> d!1707310 (= (isEmpty!33046 (exprs!4852 (h!67529 zl!343))) (is-Nil!61080 (exprs!4852 (h!67529 zl!343))))))

(assert (=> b!5313668 d!1707310))

(declare-fun bm!378967 () Bool)

(declare-fun call!378972 () (Set Context!8704))

(assert (=> bm!378967 (= call!378972 (derivationStepZipperDown!416 (h!67528 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))))) (Context!8705 (t!374409 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343))))))))))) (h!67527 s!2326)))))

(declare-fun d!1707312 () Bool)

(declare-fun c!923276 () Bool)

(declare-fun e!3302086 () Bool)

(assert (=> d!1707312 (= c!923276 e!3302086)))

(declare-fun res!2254511 () Bool)

(assert (=> d!1707312 (=> (not res!2254511) (not e!3302086))))

(assert (=> d!1707312 (= res!2254511 (is-Cons!61080 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))))))))

(declare-fun e!3302085 () (Set Context!8704))

(assert (=> d!1707312 (= (derivationStepZipperUp!340 (Context!8705 (t!374409 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))) (h!67527 s!2326)) e!3302085)))

(declare-fun b!5314294 () Bool)

(declare-fun e!3302084 () (Set Context!8704))

(assert (=> b!5314294 (= e!3302084 call!378972)))

(declare-fun b!5314295 () Bool)

(assert (=> b!5314295 (= e!3302086 (nullable!5137 (h!67528 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343))))))))))))))

(declare-fun b!5314296 () Bool)

(assert (=> b!5314296 (= e!3302085 (set.union call!378972 (derivationStepZipperUp!340 (Context!8705 (t!374409 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343))))))))))) (h!67527 s!2326))))))

(declare-fun b!5314297 () Bool)

(assert (=> b!5314297 (= e!3302084 (as set.empty (Set Context!8704)))))

(declare-fun b!5314298 () Bool)

(assert (=> b!5314298 (= e!3302085 e!3302084)))

(declare-fun c!923275 () Bool)

(assert (=> b!5314298 (= c!923275 (is-Cons!61080 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))))))))

(assert (= (and d!1707312 res!2254511) b!5314295))

(assert (= (and d!1707312 c!923276) b!5314296))

(assert (= (and d!1707312 (not c!923276)) b!5314298))

(assert (= (and b!5314298 c!923275) b!5314294))

(assert (= (and b!5314298 (not c!923275)) b!5314297))

(assert (= (or b!5314296 b!5314294) bm!378967))

(declare-fun m!6350956 () Bool)

(assert (=> bm!378967 m!6350956))

(declare-fun m!6350958 () Bool)

(assert (=> b!5314295 m!6350958))

(declare-fun m!6350960 () Bool)

(assert (=> b!5314296 m!6350960))

(assert (=> b!5313579 d!1707312))

(declare-fun bm!378968 () Bool)

(declare-fun call!378973 () (Set Context!8704))

(assert (=> bm!378968 (= call!378973 (derivationStepZipperDown!416 (h!67528 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 (h!67529 zl!343)))))) (Context!8705 (t!374409 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 (h!67529 zl!343))))))) (h!67527 s!2326)))))

(declare-fun d!1707314 () Bool)

(declare-fun c!923278 () Bool)

(declare-fun e!3302089 () Bool)

(assert (=> d!1707314 (= c!923278 e!3302089)))

(declare-fun res!2254512 () Bool)

(assert (=> d!1707314 (=> (not res!2254512) (not e!3302089))))

(assert (=> d!1707314 (= res!2254512 (is-Cons!61080 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 (h!67529 zl!343)))))))))

(declare-fun e!3302088 () (Set Context!8704))

(assert (=> d!1707314 (= (derivationStepZipperUp!340 (Context!8705 (t!374409 (exprs!4852 (h!67529 zl!343)))) (h!67527 s!2326)) e!3302088)))

(declare-fun b!5314299 () Bool)

(declare-fun e!3302087 () (Set Context!8704))

(assert (=> b!5314299 (= e!3302087 call!378973)))

(declare-fun b!5314300 () Bool)

(assert (=> b!5314300 (= e!3302089 (nullable!5137 (h!67528 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 (h!67529 zl!343))))))))))

(declare-fun b!5314301 () Bool)

(assert (=> b!5314301 (= e!3302088 (set.union call!378973 (derivationStepZipperUp!340 (Context!8705 (t!374409 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 (h!67529 zl!343))))))) (h!67527 s!2326))))))

(declare-fun b!5314302 () Bool)

(assert (=> b!5314302 (= e!3302087 (as set.empty (Set Context!8704)))))

(declare-fun b!5314303 () Bool)

(assert (=> b!5314303 (= e!3302088 e!3302087)))

(declare-fun c!923277 () Bool)

(assert (=> b!5314303 (= c!923277 (is-Cons!61080 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 (h!67529 zl!343)))))))))

(assert (= (and d!1707314 res!2254512) b!5314300))

(assert (= (and d!1707314 c!923278) b!5314301))

(assert (= (and d!1707314 (not c!923278)) b!5314303))

(assert (= (and b!5314303 c!923277) b!5314299))

(assert (= (and b!5314303 (not c!923277)) b!5314302))

(assert (= (or b!5314301 b!5314299) bm!378968))

(declare-fun m!6350962 () Bool)

(assert (=> bm!378968 m!6350962))

(declare-fun m!6350964 () Bool)

(assert (=> b!5314300 m!6350964))

(declare-fun m!6350966 () Bool)

(assert (=> b!5314301 m!6350966))

(assert (=> b!5313584 d!1707314))

(declare-fun d!1707316 () Bool)

(declare-fun lambda!270905 () Int)

(declare-fun exists!2004 ((Set Context!8704) Int) Bool)

(assert (=> d!1707316 (= (nullableZipper!1337 lt!2170908) (exists!2004 lt!2170908 lambda!270905))))

(declare-fun bs!1231995 () Bool)

(assert (= bs!1231995 d!1707316))

(declare-fun m!6350968 () Bool)

(assert (=> bs!1231995 m!6350968))

(assert (=> b!5313626 d!1707316))

(declare-fun d!1707318 () Bool)

(assert (=> d!1707318 (= (isEmpty!33046 (t!374409 (unfocusZipperList!410 zl!343))) (is-Nil!61080 (t!374409 (unfocusZipperList!410 zl!343))))))

(assert (=> b!5313796 d!1707318))

(declare-fun d!1707320 () Bool)

(assert (=> d!1707320 (= (head!11393 (unfocusZipperList!410 zl!343)) (h!67528 (unfocusZipperList!410 zl!343)))))

(assert (=> b!5313794 d!1707320))

(declare-fun b!5314304 () Bool)

(declare-fun res!2254518 () Bool)

(declare-fun e!3302091 () Bool)

(assert (=> b!5314304 (=> (not res!2254518) (not e!3302091))))

(declare-fun call!378974 () Bool)

(assert (=> b!5314304 (= res!2254518 (not call!378974))))

(declare-fun b!5314305 () Bool)

(declare-fun res!2254516 () Bool)

(declare-fun e!3302095 () Bool)

(assert (=> b!5314305 (=> res!2254516 e!3302095)))

(assert (=> b!5314305 (= res!2254516 (not (isEmpty!33049 (tail!10489 (_1!35470 (get!21007 lt!2170991))))))))

(declare-fun d!1707322 () Bool)

(declare-fun e!3302093 () Bool)

(assert (=> d!1707322 e!3302093))

(declare-fun c!923282 () Bool)

(assert (=> d!1707322 (= c!923282 (is-EmptyExpr!14968 (regOne!30448 r!7292)))))

(declare-fun lt!2171039 () Bool)

(declare-fun e!3302090 () Bool)

(assert (=> d!1707322 (= lt!2171039 e!3302090)))

(declare-fun c!923283 () Bool)

(assert (=> d!1707322 (= c!923283 (isEmpty!33049 (_1!35470 (get!21007 lt!2170991))))))

(assert (=> d!1707322 (validRegex!6704 (regOne!30448 r!7292))))

(assert (=> d!1707322 (= (matchR!7153 (regOne!30448 r!7292) (_1!35470 (get!21007 lt!2170991))) lt!2171039)))

(declare-fun b!5314306 () Bool)

(assert (=> b!5314306 (= e!3302091 (= (head!11392 (_1!35470 (get!21007 lt!2170991))) (c!923072 (regOne!30448 r!7292))))))

(declare-fun b!5314307 () Bool)

(declare-fun res!2254517 () Bool)

(declare-fun e!3302092 () Bool)

(assert (=> b!5314307 (=> res!2254517 e!3302092)))

(assert (=> b!5314307 (= res!2254517 (not (is-ElementMatch!14968 (regOne!30448 r!7292))))))

(declare-fun e!3302094 () Bool)

(assert (=> b!5314307 (= e!3302094 e!3302092)))

(declare-fun bm!378969 () Bool)

(assert (=> bm!378969 (= call!378974 (isEmpty!33049 (_1!35470 (get!21007 lt!2170991))))))

(declare-fun b!5314308 () Bool)

(assert (=> b!5314308 (= e!3302093 e!3302094)))

(declare-fun c!923281 () Bool)

(assert (=> b!5314308 (= c!923281 (is-EmptyLang!14968 (regOne!30448 r!7292)))))

(declare-fun b!5314309 () Bool)

(declare-fun res!2254515 () Bool)

(assert (=> b!5314309 (=> (not res!2254515) (not e!3302091))))

(assert (=> b!5314309 (= res!2254515 (isEmpty!33049 (tail!10489 (_1!35470 (get!21007 lt!2170991)))))))

(declare-fun b!5314310 () Bool)

(assert (=> b!5314310 (= e!3302094 (not lt!2171039))))

(declare-fun b!5314311 () Bool)

(declare-fun res!2254520 () Bool)

(assert (=> b!5314311 (=> res!2254520 e!3302092)))

(assert (=> b!5314311 (= res!2254520 e!3302091)))

(declare-fun res!2254513 () Bool)

(assert (=> b!5314311 (=> (not res!2254513) (not e!3302091))))

(assert (=> b!5314311 (= res!2254513 lt!2171039)))

(declare-fun b!5314312 () Bool)

(assert (=> b!5314312 (= e!3302090 (matchR!7153 (derivativeStep!4158 (regOne!30448 r!7292) (head!11392 (_1!35470 (get!21007 lt!2170991)))) (tail!10489 (_1!35470 (get!21007 lt!2170991)))))))

(declare-fun b!5314313 () Bool)

(declare-fun e!3302096 () Bool)

(assert (=> b!5314313 (= e!3302096 e!3302095)))

(declare-fun res!2254519 () Bool)

(assert (=> b!5314313 (=> res!2254519 e!3302095)))

(assert (=> b!5314313 (= res!2254519 call!378974)))

(declare-fun b!5314314 () Bool)

(assert (=> b!5314314 (= e!3302095 (not (= (head!11392 (_1!35470 (get!21007 lt!2170991))) (c!923072 (regOne!30448 r!7292)))))))

(declare-fun b!5314315 () Bool)

(assert (=> b!5314315 (= e!3302093 (= lt!2171039 call!378974))))

(declare-fun b!5314316 () Bool)

(assert (=> b!5314316 (= e!3302090 (nullable!5137 (regOne!30448 r!7292)))))

(declare-fun b!5314317 () Bool)

(assert (=> b!5314317 (= e!3302092 e!3302096)))

(declare-fun res!2254514 () Bool)

(assert (=> b!5314317 (=> (not res!2254514) (not e!3302096))))

(assert (=> b!5314317 (= res!2254514 (not lt!2171039))))

(assert (= (and d!1707322 c!923283) b!5314316))

(assert (= (and d!1707322 (not c!923283)) b!5314312))

(assert (= (and d!1707322 c!923282) b!5314315))

(assert (= (and d!1707322 (not c!923282)) b!5314308))

(assert (= (and b!5314308 c!923281) b!5314310))

(assert (= (and b!5314308 (not c!923281)) b!5314307))

(assert (= (and b!5314307 (not res!2254517)) b!5314311))

(assert (= (and b!5314311 res!2254513) b!5314304))

(assert (= (and b!5314304 res!2254518) b!5314309))

(assert (= (and b!5314309 res!2254515) b!5314306))

(assert (= (and b!5314311 (not res!2254520)) b!5314317))

(assert (= (and b!5314317 res!2254514) b!5314313))

(assert (= (and b!5314313 (not res!2254519)) b!5314305))

(assert (= (and b!5314305 (not res!2254516)) b!5314314))

(assert (= (or b!5314315 b!5314304 b!5314313) bm!378969))

(declare-fun m!6350970 () Bool)

(assert (=> b!5314305 m!6350970))

(assert (=> b!5314305 m!6350970))

(declare-fun m!6350972 () Bool)

(assert (=> b!5314305 m!6350972))

(declare-fun m!6350974 () Bool)

(assert (=> b!5314306 m!6350974))

(assert (=> b!5314312 m!6350974))

(assert (=> b!5314312 m!6350974))

(declare-fun m!6350976 () Bool)

(assert (=> b!5314312 m!6350976))

(assert (=> b!5314312 m!6350970))

(assert (=> b!5314312 m!6350976))

(assert (=> b!5314312 m!6350970))

(declare-fun m!6350978 () Bool)

(assert (=> b!5314312 m!6350978))

(assert (=> b!5314309 m!6350970))

(assert (=> b!5314309 m!6350970))

(assert (=> b!5314309 m!6350972))

(assert (=> b!5314314 m!6350974))

(declare-fun m!6350980 () Bool)

(assert (=> d!1707322 m!6350980))

(assert (=> d!1707322 m!6350708))

(declare-fun m!6350982 () Bool)

(assert (=> b!5314316 m!6350982))

(assert (=> bm!378969 m!6350980))

(assert (=> b!5313857 d!1707322))

(declare-fun d!1707324 () Bool)

(assert (=> d!1707324 (= (get!21007 lt!2170991) (v!51107 lt!2170991))))

(assert (=> b!5313857 d!1707324))

(declare-fun b!5314332 () Bool)

(declare-fun e!3302112 () Bool)

(declare-fun call!378979 () Bool)

(assert (=> b!5314332 (= e!3302112 call!378979)))

(declare-fun bm!378974 () Bool)

(declare-fun call!378980 () Bool)

(declare-fun c!923286 () Bool)

(assert (=> bm!378974 (= call!378980 (nullable!5137 (ite c!923286 (regOne!30449 (regOne!30448 (regOne!30448 r!7292))) (regOne!30448 (regOne!30448 (regOne!30448 r!7292))))))))

(declare-fun bm!378975 () Bool)

(assert (=> bm!378975 (= call!378979 (nullable!5137 (ite c!923286 (regTwo!30449 (regOne!30448 (regOne!30448 r!7292))) (regTwo!30448 (regOne!30448 (regOne!30448 r!7292))))))))

(declare-fun b!5314333 () Bool)

(declare-fun e!3302113 () Bool)

(declare-fun e!3302114 () Bool)

(assert (=> b!5314333 (= e!3302113 e!3302114)))

(declare-fun res!2254531 () Bool)

(assert (=> b!5314333 (=> res!2254531 e!3302114)))

(assert (=> b!5314333 (= res!2254531 (is-Star!14968 (regOne!30448 (regOne!30448 r!7292))))))

(declare-fun b!5314334 () Bool)

(declare-fun e!3302110 () Bool)

(assert (=> b!5314334 (= e!3302110 e!3302112)))

(declare-fun res!2254532 () Bool)

(assert (=> b!5314334 (= res!2254532 call!378980)))

(assert (=> b!5314334 (=> (not res!2254532) (not e!3302112))))

(declare-fun b!5314335 () Bool)

(declare-fun e!3302109 () Bool)

(assert (=> b!5314335 (= e!3302109 call!378979)))

(declare-fun d!1707326 () Bool)

(declare-fun res!2254535 () Bool)

(declare-fun e!3302111 () Bool)

(assert (=> d!1707326 (=> res!2254535 e!3302111)))

(assert (=> d!1707326 (= res!2254535 (is-EmptyExpr!14968 (regOne!30448 (regOne!30448 r!7292))))))

(assert (=> d!1707326 (= (nullableFct!1489 (regOne!30448 (regOne!30448 r!7292))) e!3302111)))

(declare-fun b!5314336 () Bool)

(assert (=> b!5314336 (= e!3302111 e!3302113)))

(declare-fun res!2254534 () Bool)

(assert (=> b!5314336 (=> (not res!2254534) (not e!3302113))))

(assert (=> b!5314336 (= res!2254534 (and (not (is-EmptyLang!14968 (regOne!30448 (regOne!30448 r!7292)))) (not (is-ElementMatch!14968 (regOne!30448 (regOne!30448 r!7292))))))))

(declare-fun b!5314337 () Bool)

(assert (=> b!5314337 (= e!3302110 e!3302109)))

(declare-fun res!2254533 () Bool)

(assert (=> b!5314337 (= res!2254533 call!378980)))

(assert (=> b!5314337 (=> res!2254533 e!3302109)))

(declare-fun b!5314338 () Bool)

(assert (=> b!5314338 (= e!3302114 e!3302110)))

(assert (=> b!5314338 (= c!923286 (is-Union!14968 (regOne!30448 (regOne!30448 r!7292))))))

(assert (= (and d!1707326 (not res!2254535)) b!5314336))

(assert (= (and b!5314336 res!2254534) b!5314333))

(assert (= (and b!5314333 (not res!2254531)) b!5314338))

(assert (= (and b!5314338 c!923286) b!5314337))

(assert (= (and b!5314338 (not c!923286)) b!5314334))

(assert (= (and b!5314337 (not res!2254533)) b!5314335))

(assert (= (and b!5314334 res!2254532) b!5314332))

(assert (= (or b!5314335 b!5314332) bm!378975))

(assert (= (or b!5314337 b!5314334) bm!378974))

(declare-fun m!6350984 () Bool)

(assert (=> bm!378974 m!6350984))

(declare-fun m!6350986 () Bool)

(assert (=> bm!378975 m!6350986))

(assert (=> d!1707154 d!1707326))

(declare-fun bs!1231996 () Bool)

(declare-fun d!1707328 () Bool)

(assert (= bs!1231996 (and d!1707328 d!1707188)))

(declare-fun lambda!270906 () Int)

(assert (=> bs!1231996 (= lambda!270906 lambda!270865)))

(declare-fun bs!1231997 () Bool)

(assert (= bs!1231997 (and d!1707328 d!1707294)))

(assert (=> bs!1231997 (= lambda!270906 lambda!270902)))

(declare-fun bs!1231998 () Bool)

(assert (= bs!1231998 (and d!1707328 d!1707168)))

(assert (=> bs!1231998 (= lambda!270906 lambda!270848)))

(declare-fun bs!1231999 () Bool)

(assert (= bs!1231999 (and d!1707328 d!1707186)))

(assert (=> bs!1231999 (= lambda!270906 lambda!270862)))

(declare-fun bs!1232000 () Bool)

(assert (= bs!1232000 (and d!1707328 d!1707184)))

(assert (=> bs!1232000 (= lambda!270906 lambda!270857)))

(declare-fun bs!1232001 () Bool)

(assert (= bs!1232001 (and d!1707328 d!1707210)))

(assert (=> bs!1232001 (= lambda!270906 lambda!270876)))

(declare-fun e!3302116 () Bool)

(assert (=> d!1707328 e!3302116))

(declare-fun res!2254537 () Bool)

(assert (=> d!1707328 (=> (not res!2254537) (not e!3302116))))

(declare-fun lt!2171040 () Regex!14968)

(assert (=> d!1707328 (= res!2254537 (validRegex!6704 lt!2171040))))

(declare-fun e!3302118 () Regex!14968)

(assert (=> d!1707328 (= lt!2171040 e!3302118)))

(declare-fun c!923289 () Bool)

(declare-fun e!3302119 () Bool)

(assert (=> d!1707328 (= c!923289 e!3302119)))

(declare-fun res!2254536 () Bool)

(assert (=> d!1707328 (=> (not res!2254536) (not e!3302119))))

(assert (=> d!1707328 (= res!2254536 (is-Cons!61080 (t!374409 (exprs!4852 (h!67529 zl!343)))))))

(assert (=> d!1707328 (forall!14388 (t!374409 (exprs!4852 (h!67529 zl!343))) lambda!270906)))

(assert (=> d!1707328 (= (generalisedConcat!637 (t!374409 (exprs!4852 (h!67529 zl!343)))) lt!2171040)))

(declare-fun b!5314339 () Bool)

(declare-fun e!3302117 () Bool)

(assert (=> b!5314339 (= e!3302117 (isConcat!395 lt!2171040))))

(declare-fun b!5314340 () Bool)

(assert (=> b!5314340 (= e!3302119 (isEmpty!33046 (t!374409 (t!374409 (exprs!4852 (h!67529 zl!343))))))))

(declare-fun b!5314341 () Bool)

(declare-fun e!3302115 () Regex!14968)

(assert (=> b!5314341 (= e!3302115 (Concat!23813 (h!67528 (t!374409 (exprs!4852 (h!67529 zl!343)))) (generalisedConcat!637 (t!374409 (t!374409 (exprs!4852 (h!67529 zl!343)))))))))

(declare-fun b!5314342 () Bool)

(assert (=> b!5314342 (= e!3302118 (h!67528 (t!374409 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun b!5314343 () Bool)

(assert (=> b!5314343 (= e!3302115 EmptyExpr!14968)))

(declare-fun b!5314344 () Bool)

(assert (=> b!5314344 (= e!3302118 e!3302115)))

(declare-fun c!923287 () Bool)

(assert (=> b!5314344 (= c!923287 (is-Cons!61080 (t!374409 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun b!5314345 () Bool)

(declare-fun e!3302120 () Bool)

(assert (=> b!5314345 (= e!3302116 e!3302120)))

(declare-fun c!923288 () Bool)

(assert (=> b!5314345 (= c!923288 (isEmpty!33046 (t!374409 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun b!5314346 () Bool)

(assert (=> b!5314346 (= e!3302120 e!3302117)))

(declare-fun c!923290 () Bool)

(assert (=> b!5314346 (= c!923290 (isEmpty!33046 (tail!10490 (t!374409 (exprs!4852 (h!67529 zl!343))))))))

(declare-fun b!5314347 () Bool)

(assert (=> b!5314347 (= e!3302120 (isEmptyExpr!872 lt!2171040))))

(declare-fun b!5314348 () Bool)

(assert (=> b!5314348 (= e!3302117 (= lt!2171040 (head!11393 (t!374409 (exprs!4852 (h!67529 zl!343))))))))

(assert (= (and d!1707328 res!2254536) b!5314340))

(assert (= (and d!1707328 c!923289) b!5314342))

(assert (= (and d!1707328 (not c!923289)) b!5314344))

(assert (= (and b!5314344 c!923287) b!5314341))

(assert (= (and b!5314344 (not c!923287)) b!5314343))

(assert (= (and d!1707328 res!2254537) b!5314345))

(assert (= (and b!5314345 c!923288) b!5314347))

(assert (= (and b!5314345 (not c!923288)) b!5314346))

(assert (= (and b!5314346 c!923290) b!5314348))

(assert (= (and b!5314346 (not c!923290)) b!5314339))

(declare-fun m!6350988 () Bool)

(assert (=> d!1707328 m!6350988))

(declare-fun m!6350990 () Bool)

(assert (=> d!1707328 m!6350990))

(declare-fun m!6350992 () Bool)

(assert (=> b!5314340 m!6350992))

(declare-fun m!6350994 () Bool)

(assert (=> b!5314347 m!6350994))

(assert (=> b!5314345 m!6350446))

(declare-fun m!6350996 () Bool)

(assert (=> b!5314348 m!6350996))

(declare-fun m!6350998 () Bool)

(assert (=> b!5314339 m!6350998))

(declare-fun m!6351000 () Bool)

(assert (=> b!5314341 m!6351000))

(declare-fun m!6351002 () Bool)

(assert (=> b!5314346 m!6351002))

(assert (=> b!5314346 m!6351002))

(declare-fun m!6351004 () Bool)

(assert (=> b!5314346 m!6351004))

(assert (=> b!5313664 d!1707328))

(declare-fun d!1707330 () Bool)

(assert (=> d!1707330 (= (isConcat!395 lt!2170966) (is-Concat!23813 lt!2170966))))

(assert (=> b!5313662 d!1707330))

(assert (=> d!1707200 d!1707190))

(declare-fun b!5314350 () Bool)

(declare-fun res!2254541 () Bool)

(declare-fun e!3302127 () Bool)

(assert (=> b!5314350 (=> res!2254541 e!3302127)))

(assert (=> b!5314350 (= res!2254541 (not (is-Concat!23813 (regOne!30448 r!7292))))))

(declare-fun e!3302124 () Bool)

(assert (=> b!5314350 (= e!3302124 e!3302127)))

(declare-fun bm!378976 () Bool)

(declare-fun call!378982 () Bool)

(declare-fun call!378981 () Bool)

(assert (=> bm!378976 (= call!378982 call!378981)))

(declare-fun bm!378977 () Bool)

(declare-fun call!378983 () Bool)

(declare-fun c!923291 () Bool)

(assert (=> bm!378977 (= call!378983 (validRegex!6704 (ite c!923291 (regTwo!30449 (regOne!30448 r!7292)) (regTwo!30448 (regOne!30448 r!7292)))))))

(declare-fun c!923292 () Bool)

(declare-fun bm!378978 () Bool)

(assert (=> bm!378978 (= call!378981 (validRegex!6704 (ite c!923292 (reg!15297 (regOne!30448 r!7292)) (ite c!923291 (regOne!30449 (regOne!30448 r!7292)) (regOne!30448 (regOne!30448 r!7292))))))))

(declare-fun b!5314351 () Bool)

(declare-fun e!3302126 () Bool)

(assert (=> b!5314351 (= e!3302127 e!3302126)))

(declare-fun res!2254540 () Bool)

(assert (=> b!5314351 (=> (not res!2254540) (not e!3302126))))

(assert (=> b!5314351 (= res!2254540 call!378982)))

(declare-fun b!5314352 () Bool)

(declare-fun e!3302125 () Bool)

(assert (=> b!5314352 (= e!3302125 call!378983)))

(declare-fun b!5314353 () Bool)

(declare-fun e!3302123 () Bool)

(assert (=> b!5314353 (= e!3302123 e!3302124)))

(assert (=> b!5314353 (= c!923291 (is-Union!14968 (regOne!30448 r!7292)))))

(declare-fun b!5314354 () Bool)

(declare-fun e!3302121 () Bool)

(assert (=> b!5314354 (= e!3302123 e!3302121)))

(declare-fun res!2254539 () Bool)

(assert (=> b!5314354 (= res!2254539 (not (nullable!5137 (reg!15297 (regOne!30448 r!7292)))))))

(assert (=> b!5314354 (=> (not res!2254539) (not e!3302121))))

(declare-fun b!5314355 () Bool)

(declare-fun e!3302122 () Bool)

(assert (=> b!5314355 (= e!3302122 e!3302123)))

(assert (=> b!5314355 (= c!923292 (is-Star!14968 (regOne!30448 r!7292)))))

(declare-fun b!5314356 () Bool)

(declare-fun res!2254538 () Bool)

(assert (=> b!5314356 (=> (not res!2254538) (not e!3302125))))

(assert (=> b!5314356 (= res!2254538 call!378982)))

(assert (=> b!5314356 (= e!3302124 e!3302125)))

(declare-fun b!5314357 () Bool)

(assert (=> b!5314357 (= e!3302121 call!378981)))

(declare-fun d!1707332 () Bool)

(declare-fun res!2254542 () Bool)

(assert (=> d!1707332 (=> res!2254542 e!3302122)))

(assert (=> d!1707332 (= res!2254542 (is-ElementMatch!14968 (regOne!30448 r!7292)))))

(assert (=> d!1707332 (= (validRegex!6704 (regOne!30448 r!7292)) e!3302122)))

(declare-fun b!5314349 () Bool)

(assert (=> b!5314349 (= e!3302126 call!378983)))

(assert (= (and d!1707332 (not res!2254542)) b!5314355))

(assert (= (and b!5314355 c!923292) b!5314354))

(assert (= (and b!5314355 (not c!923292)) b!5314353))

(assert (= (and b!5314354 res!2254539) b!5314357))

(assert (= (and b!5314353 c!923291) b!5314356))

(assert (= (and b!5314353 (not c!923291)) b!5314350))

(assert (= (and b!5314356 res!2254538) b!5314352))

(assert (= (and b!5314350 (not res!2254541)) b!5314351))

(assert (= (and b!5314351 res!2254540) b!5314349))

(assert (= (or b!5314352 b!5314349) bm!378977))

(assert (= (or b!5314356 b!5314351) bm!378976))

(assert (= (or b!5314357 bm!378976) bm!378978))

(declare-fun m!6351006 () Bool)

(assert (=> bm!378977 m!6351006))

(declare-fun m!6351008 () Bool)

(assert (=> bm!378978 m!6351008))

(declare-fun m!6351010 () Bool)

(assert (=> b!5314354 m!6351010))

(assert (=> d!1707200 d!1707332))

(assert (=> d!1707200 d!1707204))

(declare-fun d!1707334 () Bool)

(assert (=> d!1707334 (= (Exists!2149 lambda!270869) (choose!39763 lambda!270869))))

(declare-fun bs!1232002 () Bool)

(assert (= bs!1232002 d!1707334))

(declare-fun m!6351012 () Bool)

(assert (=> bs!1232002 m!6351012))

(assert (=> d!1707200 d!1707334))

(declare-fun bs!1232003 () Bool)

(declare-fun d!1707336 () Bool)

(assert (= bs!1232003 (and d!1707336 b!5313706)))

(declare-fun lambda!270909 () Int)

(assert (=> bs!1232003 (not (= lambda!270909 lambda!270853))))

(declare-fun bs!1232004 () Bool)

(assert (= bs!1232004 (and d!1707336 d!1707200)))

(assert (=> bs!1232004 (= lambda!270909 lambda!270869)))

(declare-fun bs!1232005 () Bool)

(assert (= bs!1232005 (and d!1707336 b!5313420)))

(assert (=> bs!1232005 (not (= lambda!270909 lambda!270833))))

(declare-fun bs!1232006 () Bool)

(assert (= bs!1232006 (and d!1707336 d!1707202)))

(assert (=> bs!1232006 (= lambda!270909 lambda!270874)))

(assert (=> bs!1232005 (= lambda!270909 lambda!270832)))

(assert (=> bs!1232006 (not (= lambda!270909 lambda!270875))))

(declare-fun bs!1232007 () Bool)

(assert (= bs!1232007 (and d!1707336 b!5313709)))

(assert (=> bs!1232007 (not (= lambda!270909 lambda!270854))))

(assert (=> d!1707336 true))

(assert (=> d!1707336 true))

(assert (=> d!1707336 true))

(assert (=> d!1707336 (= (isDefined!11782 (findConcatSeparation!1493 (regOne!30448 r!7292) (regTwo!30448 r!7292) Nil!61079 s!2326 s!2326)) (Exists!2149 lambda!270909))))

(assert (=> d!1707336 true))

(declare-fun _$89!1501 () Unit!153390)

(assert (=> d!1707336 (= (choose!39764 (regOne!30448 r!7292) (regTwo!30448 r!7292) s!2326) _$89!1501)))

(declare-fun bs!1232008 () Bool)

(assert (= bs!1232008 d!1707336))

(assert (=> bs!1232008 m!6350398))

(assert (=> bs!1232008 m!6350398))

(assert (=> bs!1232008 m!6350400))

(declare-fun m!6351014 () Bool)

(assert (=> bs!1232008 m!6351014))

(assert (=> d!1707200 d!1707336))

(declare-fun d!1707338 () Bool)

(declare-fun c!923293 () Bool)

(assert (=> d!1707338 (= c!923293 (isEmpty!33049 (tail!10489 (t!374408 s!2326))))))

(declare-fun e!3302130 () Bool)

(assert (=> d!1707338 (= (matchZipper!1212 (derivationStepZipper!1211 (set.union lt!2170908 lt!2170910) (head!11392 (t!374408 s!2326))) (tail!10489 (t!374408 s!2326))) e!3302130)))

(declare-fun b!5314362 () Bool)

(assert (=> b!5314362 (= e!3302130 (nullableZipper!1337 (derivationStepZipper!1211 (set.union lt!2170908 lt!2170910) (head!11392 (t!374408 s!2326)))))))

(declare-fun b!5314363 () Bool)

(assert (=> b!5314363 (= e!3302130 (matchZipper!1212 (derivationStepZipper!1211 (derivationStepZipper!1211 (set.union lt!2170908 lt!2170910) (head!11392 (t!374408 s!2326))) (head!11392 (tail!10489 (t!374408 s!2326)))) (tail!10489 (tail!10489 (t!374408 s!2326)))))))

(assert (= (and d!1707338 c!923293) b!5314362))

(assert (= (and d!1707338 (not c!923293)) b!5314363))

(assert (=> d!1707338 m!6350574))

(declare-fun m!6351016 () Bool)

(assert (=> d!1707338 m!6351016))

(assert (=> b!5314362 m!6350580))

(declare-fun m!6351018 () Bool)

(assert (=> b!5314362 m!6351018))

(assert (=> b!5314363 m!6350574))

(declare-fun m!6351020 () Bool)

(assert (=> b!5314363 m!6351020))

(assert (=> b!5314363 m!6350580))

(assert (=> b!5314363 m!6351020))

(declare-fun m!6351022 () Bool)

(assert (=> b!5314363 m!6351022))

(assert (=> b!5314363 m!6350574))

(declare-fun m!6351024 () Bool)

(assert (=> b!5314363 m!6351024))

(assert (=> b!5314363 m!6351022))

(assert (=> b!5314363 m!6351024))

(declare-fun m!6351026 () Bool)

(assert (=> b!5314363 m!6351026))

(assert (=> b!5313629 d!1707338))

(declare-fun bs!1232009 () Bool)

(declare-fun d!1707340 () Bool)

(assert (= bs!1232009 (and d!1707340 b!5313407)))

(declare-fun lambda!270912 () Int)

(assert (=> bs!1232009 (= (= (head!11392 (t!374408 s!2326)) (h!67527 s!2326)) (= lambda!270912 lambda!270834))))

(assert (=> d!1707340 true))

(assert (=> d!1707340 (= (derivationStepZipper!1211 (set.union lt!2170908 lt!2170910) (head!11392 (t!374408 s!2326))) (flatMap!695 (set.union lt!2170908 lt!2170910) lambda!270912))))

(declare-fun bs!1232010 () Bool)

(assert (= bs!1232010 d!1707340))

(declare-fun m!6351028 () Bool)

(assert (=> bs!1232010 m!6351028))

(assert (=> b!5313629 d!1707340))

(declare-fun d!1707342 () Bool)

(assert (=> d!1707342 (= (head!11392 (t!374408 s!2326)) (h!67527 (t!374408 s!2326)))))

(assert (=> b!5313629 d!1707342))

(declare-fun d!1707344 () Bool)

(assert (=> d!1707344 (= (tail!10489 (t!374408 s!2326)) (t!374408 (t!374408 s!2326)))))

(assert (=> b!5313629 d!1707344))

(declare-fun d!1707346 () Bool)

(assert (=> d!1707346 (= (nullable!5137 r!7292) (nullableFct!1489 r!7292))))

(declare-fun bs!1232011 () Bool)

(assert (= bs!1232011 d!1707346))

(declare-fun m!6351030 () Bool)

(assert (=> bs!1232011 m!6351030))

(assert (=> b!5313762 d!1707346))

(declare-fun b!5314377 () Bool)

(declare-fun e!3302136 () Bool)

(declare-fun lt!2171043 () List!61203)

(assert (=> b!5314377 (= e!3302136 (or (not (= (t!374408 s!2326) Nil!61079)) (= lt!2171043 (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) Nil!61079)))))))

(declare-fun b!5314375 () Bool)

(declare-fun e!3302135 () List!61203)

(assert (=> b!5314375 (= e!3302135 (Cons!61079 (h!67527 (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) Nil!61079))) (++!13317 (t!374408 (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) Nil!61079))) (t!374408 s!2326))))))

(declare-fun d!1707348 () Bool)

(assert (=> d!1707348 e!3302136))

(declare-fun res!2254551 () Bool)

(assert (=> d!1707348 (=> (not res!2254551) (not e!3302136))))

(declare-fun content!10884 (List!61203) (Set C!30206))

(assert (=> d!1707348 (= res!2254551 (= (content!10884 lt!2171043) (set.union (content!10884 (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) Nil!61079))) (content!10884 (t!374408 s!2326)))))))

(assert (=> d!1707348 (= lt!2171043 e!3302135)))

(declare-fun c!923298 () Bool)

(assert (=> d!1707348 (= c!923298 (is-Nil!61079 (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) Nil!61079))))))

(assert (=> d!1707348 (= (++!13317 (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) Nil!61079)) (t!374408 s!2326)) lt!2171043)))

(declare-fun b!5314376 () Bool)

(declare-fun res!2254552 () Bool)

(assert (=> b!5314376 (=> (not res!2254552) (not e!3302136))))

(declare-fun size!39760 (List!61203) Int)

(assert (=> b!5314376 (= res!2254552 (= (size!39760 lt!2171043) (+ (size!39760 (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) Nil!61079))) (size!39760 (t!374408 s!2326)))))))

(declare-fun b!5314374 () Bool)

(assert (=> b!5314374 (= e!3302135 (t!374408 s!2326))))

(assert (= (and d!1707348 c!923298) b!5314374))

(assert (= (and d!1707348 (not c!923298)) b!5314375))

(assert (= (and d!1707348 res!2254551) b!5314376))

(assert (= (and b!5314376 res!2254552) b!5314377))

(declare-fun m!6351032 () Bool)

(assert (=> b!5314375 m!6351032))

(declare-fun m!6351034 () Bool)

(assert (=> d!1707348 m!6351034))

(assert (=> d!1707348 m!6350716))

(declare-fun m!6351036 () Bool)

(assert (=> d!1707348 m!6351036))

(declare-fun m!6351038 () Bool)

(assert (=> d!1707348 m!6351038))

(declare-fun m!6351040 () Bool)

(assert (=> b!5314376 m!6351040))

(assert (=> b!5314376 m!6350716))

(declare-fun m!6351042 () Bool)

(assert (=> b!5314376 m!6351042))

(declare-fun m!6351044 () Bool)

(assert (=> b!5314376 m!6351044))

(assert (=> b!5313855 d!1707348))

(declare-fun b!5314381 () Bool)

(declare-fun e!3302138 () Bool)

(declare-fun lt!2171044 () List!61203)

(assert (=> b!5314381 (= e!3302138 (or (not (= (Cons!61079 (h!67527 s!2326) Nil!61079) Nil!61079)) (= lt!2171044 Nil!61079)))))

(declare-fun b!5314379 () Bool)

(declare-fun e!3302137 () List!61203)

(assert (=> b!5314379 (= e!3302137 (Cons!61079 (h!67527 Nil!61079) (++!13317 (t!374408 Nil!61079) (Cons!61079 (h!67527 s!2326) Nil!61079))))))

(declare-fun d!1707350 () Bool)

(assert (=> d!1707350 e!3302138))

(declare-fun res!2254553 () Bool)

(assert (=> d!1707350 (=> (not res!2254553) (not e!3302138))))

(assert (=> d!1707350 (= res!2254553 (= (content!10884 lt!2171044) (set.union (content!10884 Nil!61079) (content!10884 (Cons!61079 (h!67527 s!2326) Nil!61079)))))))

(assert (=> d!1707350 (= lt!2171044 e!3302137)))

(declare-fun c!923299 () Bool)

(assert (=> d!1707350 (= c!923299 (is-Nil!61079 Nil!61079))))

(assert (=> d!1707350 (= (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) Nil!61079)) lt!2171044)))

(declare-fun b!5314380 () Bool)

(declare-fun res!2254554 () Bool)

(assert (=> b!5314380 (=> (not res!2254554) (not e!3302138))))

(assert (=> b!5314380 (= res!2254554 (= (size!39760 lt!2171044) (+ (size!39760 Nil!61079) (size!39760 (Cons!61079 (h!67527 s!2326) Nil!61079)))))))

(declare-fun b!5314378 () Bool)

(assert (=> b!5314378 (= e!3302137 (Cons!61079 (h!67527 s!2326) Nil!61079))))

(assert (= (and d!1707350 c!923299) b!5314378))

(assert (= (and d!1707350 (not c!923299)) b!5314379))

(assert (= (and d!1707350 res!2254553) b!5314380))

(assert (= (and b!5314380 res!2254554) b!5314381))

(declare-fun m!6351046 () Bool)

(assert (=> b!5314379 m!6351046))

(declare-fun m!6351048 () Bool)

(assert (=> d!1707350 m!6351048))

(declare-fun m!6351050 () Bool)

(assert (=> d!1707350 m!6351050))

(declare-fun m!6351052 () Bool)

(assert (=> d!1707350 m!6351052))

(declare-fun m!6351054 () Bool)

(assert (=> b!5314380 m!6351054))

(declare-fun m!6351056 () Bool)

(assert (=> b!5314380 m!6351056))

(declare-fun m!6351058 () Bool)

(assert (=> b!5314380 m!6351058))

(assert (=> b!5313855 d!1707350))

(declare-fun d!1707352 () Bool)

(assert (=> d!1707352 (= (++!13317 (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) Nil!61079)) (t!374408 s!2326)) s!2326)))

(declare-fun lt!2171047 () Unit!153390)

(declare-fun choose!39774 (List!61203 C!30206 List!61203 List!61203) Unit!153390)

(assert (=> d!1707352 (= lt!2171047 (choose!39774 Nil!61079 (h!67527 s!2326) (t!374408 s!2326) s!2326))))

(assert (=> d!1707352 (= (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) (t!374408 s!2326))) s!2326)))

(assert (=> d!1707352 (= (lemmaMoveElementToOtherListKeepsConcatEq!1732 Nil!61079 (h!67527 s!2326) (t!374408 s!2326) s!2326) lt!2171047)))

(declare-fun bs!1232012 () Bool)

(assert (= bs!1232012 d!1707352))

(assert (=> bs!1232012 m!6350716))

(assert (=> bs!1232012 m!6350716))

(assert (=> bs!1232012 m!6350718))

(declare-fun m!6351060 () Bool)

(assert (=> bs!1232012 m!6351060))

(declare-fun m!6351062 () Bool)

(assert (=> bs!1232012 m!6351062))

(assert (=> b!5313855 d!1707352))

(declare-fun b!5314382 () Bool)

(declare-fun e!3302143 () Bool)

(declare-fun lt!2171048 () Option!15079)

(assert (=> b!5314382 (= e!3302143 (not (isDefined!11782 lt!2171048)))))

(declare-fun b!5314383 () Bool)

(declare-fun res!2254556 () Bool)

(declare-fun e!3302140 () Bool)

(assert (=> b!5314383 (=> (not res!2254556) (not e!3302140))))

(assert (=> b!5314383 (= res!2254556 (matchR!7153 (regTwo!30448 r!7292) (_2!35470 (get!21007 lt!2171048))))))

(declare-fun b!5314384 () Bool)

(declare-fun e!3302142 () Option!15079)

(assert (=> b!5314384 (= e!3302142 (Some!15078 (tuple2!64335 (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) Nil!61079)) (t!374408 s!2326))))))

(declare-fun b!5314385 () Bool)

(declare-fun lt!2171049 () Unit!153390)

(declare-fun lt!2171050 () Unit!153390)

(assert (=> b!5314385 (= lt!2171049 lt!2171050)))

(assert (=> b!5314385 (= (++!13317 (++!13317 (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) Nil!61079)) (Cons!61079 (h!67527 (t!374408 s!2326)) Nil!61079)) (t!374408 (t!374408 s!2326))) s!2326)))

(assert (=> b!5314385 (= lt!2171050 (lemmaMoveElementToOtherListKeepsConcatEq!1732 (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) Nil!61079)) (h!67527 (t!374408 s!2326)) (t!374408 (t!374408 s!2326)) s!2326))))

(declare-fun e!3302139 () Option!15079)

(assert (=> b!5314385 (= e!3302139 (findConcatSeparation!1493 (regOne!30448 r!7292) (regTwo!30448 r!7292) (++!13317 (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) Nil!61079)) (Cons!61079 (h!67527 (t!374408 s!2326)) Nil!61079)) (t!374408 (t!374408 s!2326)) s!2326))))

(declare-fun b!5314386 () Bool)

(assert (=> b!5314386 (= e!3302139 None!15078)))

(declare-fun b!5314387 () Bool)

(declare-fun res!2254555 () Bool)

(assert (=> b!5314387 (=> (not res!2254555) (not e!3302140))))

(assert (=> b!5314387 (= res!2254555 (matchR!7153 (regOne!30448 r!7292) (_1!35470 (get!21007 lt!2171048))))))

(declare-fun b!5314388 () Bool)

(declare-fun e!3302141 () Bool)

(assert (=> b!5314388 (= e!3302141 (matchR!7153 (regTwo!30448 r!7292) (t!374408 s!2326)))))

(declare-fun d!1707354 () Bool)

(assert (=> d!1707354 e!3302143))

(declare-fun res!2254557 () Bool)

(assert (=> d!1707354 (=> res!2254557 e!3302143)))

(assert (=> d!1707354 (= res!2254557 e!3302140)))

(declare-fun res!2254559 () Bool)

(assert (=> d!1707354 (=> (not res!2254559) (not e!3302140))))

(assert (=> d!1707354 (= res!2254559 (isDefined!11782 lt!2171048))))

(assert (=> d!1707354 (= lt!2171048 e!3302142)))

(declare-fun c!923300 () Bool)

(assert (=> d!1707354 (= c!923300 e!3302141)))

(declare-fun res!2254558 () Bool)

(assert (=> d!1707354 (=> (not res!2254558) (not e!3302141))))

(assert (=> d!1707354 (= res!2254558 (matchR!7153 (regOne!30448 r!7292) (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) Nil!61079))))))

(assert (=> d!1707354 (validRegex!6704 (regOne!30448 r!7292))))

(assert (=> d!1707354 (= (findConcatSeparation!1493 (regOne!30448 r!7292) (regTwo!30448 r!7292) (++!13317 Nil!61079 (Cons!61079 (h!67527 s!2326) Nil!61079)) (t!374408 s!2326) s!2326) lt!2171048)))

(declare-fun b!5314389 () Bool)

(assert (=> b!5314389 (= e!3302142 e!3302139)))

(declare-fun c!923301 () Bool)

(assert (=> b!5314389 (= c!923301 (is-Nil!61079 (t!374408 s!2326)))))

(declare-fun b!5314390 () Bool)

(assert (=> b!5314390 (= e!3302140 (= (++!13317 (_1!35470 (get!21007 lt!2171048)) (_2!35470 (get!21007 lt!2171048))) s!2326))))

(assert (= (and d!1707354 res!2254558) b!5314388))

(assert (= (and d!1707354 c!923300) b!5314384))

(assert (= (and d!1707354 (not c!923300)) b!5314389))

(assert (= (and b!5314389 c!923301) b!5314386))

(assert (= (and b!5314389 (not c!923301)) b!5314385))

(assert (= (and d!1707354 res!2254559) b!5314387))

(assert (= (and b!5314387 res!2254555) b!5314383))

(assert (= (and b!5314383 res!2254556) b!5314390))

(assert (= (and d!1707354 (not res!2254557)) b!5314382))

(declare-fun m!6351064 () Bool)

(assert (=> b!5314383 m!6351064))

(declare-fun m!6351066 () Bool)

(assert (=> b!5314383 m!6351066))

(declare-fun m!6351068 () Bool)

(assert (=> d!1707354 m!6351068))

(assert (=> d!1707354 m!6350716))

(declare-fun m!6351070 () Bool)

(assert (=> d!1707354 m!6351070))

(assert (=> d!1707354 m!6350708))

(declare-fun m!6351072 () Bool)

(assert (=> b!5314388 m!6351072))

(assert (=> b!5314382 m!6351068))

(assert (=> b!5314390 m!6351064))

(declare-fun m!6351074 () Bool)

(assert (=> b!5314390 m!6351074))

(assert (=> b!5314387 m!6351064))

(declare-fun m!6351076 () Bool)

(assert (=> b!5314387 m!6351076))

(assert (=> b!5314385 m!6350716))

(declare-fun m!6351078 () Bool)

(assert (=> b!5314385 m!6351078))

(assert (=> b!5314385 m!6351078))

(declare-fun m!6351080 () Bool)

(assert (=> b!5314385 m!6351080))

(assert (=> b!5314385 m!6350716))

(declare-fun m!6351082 () Bool)

(assert (=> b!5314385 m!6351082))

(assert (=> b!5314385 m!6351078))

(declare-fun m!6351084 () Bool)

(assert (=> b!5314385 m!6351084))

(assert (=> b!5313855 d!1707354))

(declare-fun b!5314391 () Bool)

(declare-fun e!3302146 () (Set Context!8704))

(assert (=> b!5314391 (= e!3302146 (as set.empty (Set Context!8704)))))

(declare-fun b!5314392 () Bool)

(declare-fun e!3302147 () (Set Context!8704))

(assert (=> b!5314392 (= e!3302147 (set.insert (ite c!923092 lt!2170917 (Context!8705 call!378881)) (as set.empty (Set Context!8704))))))

(declare-fun call!378989 () List!61204)

(declare-fun call!378986 () (Set Context!8704))

(declare-fun c!923304 () Bool)

(declare-fun c!923302 () Bool)

(declare-fun c!923305 () Bool)

(declare-fun bm!378979 () Bool)

(assert (=> bm!378979 (= call!378986 (derivationStepZipperDown!416 (ite c!923304 (regOne!30449 (ite c!923092 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))))) (ite c!923302 (regTwo!30448 (ite c!923092 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))))) (ite c!923305 (regOne!30448 (ite c!923092 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))))) (reg!15297 (ite c!923092 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343))))))))) (ite (or c!923304 c!923302) (ite c!923092 lt!2170917 (Context!8705 call!378881)) (Context!8705 call!378989)) (h!67527 s!2326)))))

(declare-fun bm!378980 () Bool)

(declare-fun call!378987 () (Set Context!8704))

(assert (=> bm!378980 (= call!378987 call!378986)))

(declare-fun b!5314393 () Bool)

(declare-fun call!378985 () (Set Context!8704))

(assert (=> b!5314393 (= e!3302146 call!378985)))

(declare-fun bm!378981 () Bool)

(declare-fun call!378984 () List!61204)

(assert (=> bm!378981 (= call!378989 call!378984)))

(declare-fun bm!378982 () Bool)

(declare-fun call!378988 () (Set Context!8704))

(assert (=> bm!378982 (= call!378988 (derivationStepZipperDown!416 (ite c!923304 (regTwo!30449 (ite c!923092 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))))) (regOne!30448 (ite c!923092 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343))))))) (ite c!923304 (ite c!923092 lt!2170917 (Context!8705 call!378881)) (Context!8705 call!378984)) (h!67527 s!2326)))))

(declare-fun b!5314394 () Bool)

(declare-fun e!3302144 () Bool)

(assert (=> b!5314394 (= c!923302 e!3302144)))

(declare-fun res!2254560 () Bool)

(assert (=> b!5314394 (=> (not res!2254560) (not e!3302144))))

(assert (=> b!5314394 (= res!2254560 (is-Concat!23813 (ite c!923092 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))))))))

(declare-fun e!3302148 () (Set Context!8704))

(declare-fun e!3302145 () (Set Context!8704))

(assert (=> b!5314394 (= e!3302148 e!3302145)))

(declare-fun b!5314395 () Bool)

(declare-fun c!923303 () Bool)

(assert (=> b!5314395 (= c!923303 (is-Star!14968 (ite c!923092 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))))))))

(declare-fun e!3302149 () (Set Context!8704))

(assert (=> b!5314395 (= e!3302149 e!3302146)))

(declare-fun b!5314396 () Bool)

(assert (=> b!5314396 (= e!3302148 (set.union call!378986 call!378988))))

(declare-fun b!5314397 () Bool)

(assert (=> b!5314397 (= e!3302145 e!3302149)))

(assert (=> b!5314397 (= c!923305 (is-Concat!23813 (ite c!923092 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))))))))

(declare-fun b!5314398 () Bool)

(assert (=> b!5314398 (= e!3302149 call!378985)))

(declare-fun b!5314399 () Bool)

(assert (=> b!5314399 (= e!3302144 (nullable!5137 (regOne!30448 (ite c!923092 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343))))))))))

(declare-fun c!923306 () Bool)

(declare-fun d!1707356 () Bool)

(assert (=> d!1707356 (= c!923306 (and (is-ElementMatch!14968 (ite c!923092 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))))) (= (c!923072 (ite c!923092 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))))) (h!67527 s!2326))))))

(assert (=> d!1707356 (= (derivationStepZipperDown!416 (ite c!923092 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343))))) (ite c!923092 lt!2170917 (Context!8705 call!378881)) (h!67527 s!2326)) e!3302147)))

(declare-fun b!5314400 () Bool)

(assert (=> b!5314400 (= e!3302147 e!3302148)))

(assert (=> b!5314400 (= c!923304 (is-Union!14968 (ite c!923092 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))))))))

(declare-fun bm!378983 () Bool)

(assert (=> bm!378983 (= call!378984 ($colon$colon!1387 (exprs!4852 (ite c!923092 lt!2170917 (Context!8705 call!378881))) (ite (or c!923302 c!923305) (regTwo!30448 (ite c!923092 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))))) (ite c!923092 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343))))))))))

(declare-fun b!5314401 () Bool)

(assert (=> b!5314401 (= e!3302145 (set.union call!378988 call!378987))))

(declare-fun bm!378984 () Bool)

(assert (=> bm!378984 (= call!378985 call!378987)))

(assert (= (and d!1707356 c!923306) b!5314392))

(assert (= (and d!1707356 (not c!923306)) b!5314400))

(assert (= (and b!5314400 c!923304) b!5314396))

(assert (= (and b!5314400 (not c!923304)) b!5314394))

(assert (= (and b!5314394 res!2254560) b!5314399))

(assert (= (and b!5314394 c!923302) b!5314401))

(assert (= (and b!5314394 (not c!923302)) b!5314397))

(assert (= (and b!5314397 c!923305) b!5314398))

(assert (= (and b!5314397 (not c!923305)) b!5314395))

(assert (= (and b!5314395 c!923303) b!5314393))

(assert (= (and b!5314395 (not c!923303)) b!5314391))

(assert (= (or b!5314398 b!5314393) bm!378981))

(assert (= (or b!5314398 b!5314393) bm!378984))

(assert (= (or b!5314401 bm!378981) bm!378983))

(assert (= (or b!5314401 bm!378984) bm!378980))

(assert (= (or b!5314396 b!5314401) bm!378982))

(assert (= (or b!5314396 bm!378980) bm!378979))

(declare-fun m!6351086 () Bool)

(assert (=> bm!378983 m!6351086))

(declare-fun m!6351088 () Bool)

(assert (=> b!5314399 m!6351088))

(declare-fun m!6351090 () Bool)

(assert (=> bm!378979 m!6351090))

(declare-fun m!6351092 () Bool)

(assert (=> b!5314392 m!6351092))

(declare-fun m!6351094 () Bool)

(assert (=> bm!378982 m!6351094))

(assert (=> bm!378879 d!1707356))

(assert (=> b!5313822 d!1707168))

(declare-fun bs!1232013 () Bool)

(declare-fun d!1707358 () Bool)

(assert (= bs!1232013 (and d!1707358 d!1707188)))

(declare-fun lambda!270913 () Int)

(assert (=> bs!1232013 (= lambda!270913 lambda!270865)))

(declare-fun bs!1232014 () Bool)

(assert (= bs!1232014 (and d!1707358 d!1707294)))

(assert (=> bs!1232014 (= lambda!270913 lambda!270902)))

(declare-fun bs!1232015 () Bool)

(assert (= bs!1232015 (and d!1707358 d!1707328)))

(assert (=> bs!1232015 (= lambda!270913 lambda!270906)))

(declare-fun bs!1232016 () Bool)

(assert (= bs!1232016 (and d!1707358 d!1707168)))

(assert (=> bs!1232016 (= lambda!270913 lambda!270848)))

(declare-fun bs!1232017 () Bool)

(assert (= bs!1232017 (and d!1707358 d!1707186)))

(assert (=> bs!1232017 (= lambda!270913 lambda!270862)))

(declare-fun bs!1232018 () Bool)

(assert (= bs!1232018 (and d!1707358 d!1707184)))

(assert (=> bs!1232018 (= lambda!270913 lambda!270857)))

(declare-fun bs!1232019 () Bool)

(assert (= bs!1232019 (and d!1707358 d!1707210)))

(assert (=> bs!1232019 (= lambda!270913 lambda!270876)))

(declare-fun lt!2171051 () List!61204)

(assert (=> d!1707358 (forall!14388 lt!2171051 lambda!270913)))

(declare-fun e!3302150 () List!61204)

(assert (=> d!1707358 (= lt!2171051 e!3302150)))

(declare-fun c!923307 () Bool)

(assert (=> d!1707358 (= c!923307 (is-Cons!61081 (t!374410 zl!343)))))

(assert (=> d!1707358 (= (unfocusZipperList!410 (t!374410 zl!343)) lt!2171051)))

(declare-fun b!5314402 () Bool)

(assert (=> b!5314402 (= e!3302150 (Cons!61080 (generalisedConcat!637 (exprs!4852 (h!67529 (t!374410 zl!343)))) (unfocusZipperList!410 (t!374410 (t!374410 zl!343)))))))

(declare-fun b!5314403 () Bool)

(assert (=> b!5314403 (= e!3302150 Nil!61080)))

(assert (= (and d!1707358 c!923307) b!5314402))

(assert (= (and d!1707358 (not c!923307)) b!5314403))

(declare-fun m!6351096 () Bool)

(assert (=> d!1707358 m!6351096))

(declare-fun m!6351098 () Bool)

(assert (=> b!5314402 m!6351098))

(declare-fun m!6351100 () Bool)

(assert (=> b!5314402 m!6351100))

(assert (=> b!5313822 d!1707358))

(declare-fun d!1707360 () Bool)

(assert (=> d!1707360 (= (isEmptyLang!880 lt!2170978) (is-EmptyLang!14968 lt!2170978))))

(assert (=> b!5313790 d!1707360))

(assert (=> b!5313760 d!1707292))

(declare-fun d!1707362 () Bool)

(declare-fun c!923308 () Bool)

(assert (=> d!1707362 (= c!923308 (isEmpty!33049 (tail!10489 (t!374408 s!2326))))))

(declare-fun e!3302151 () Bool)

(assert (=> d!1707362 (= (matchZipper!1212 (derivationStepZipper!1211 lt!2170910 (head!11392 (t!374408 s!2326))) (tail!10489 (t!374408 s!2326))) e!3302151)))

(declare-fun b!5314404 () Bool)

(assert (=> b!5314404 (= e!3302151 (nullableZipper!1337 (derivationStepZipper!1211 lt!2170910 (head!11392 (t!374408 s!2326)))))))

(declare-fun b!5314405 () Bool)

(assert (=> b!5314405 (= e!3302151 (matchZipper!1212 (derivationStepZipper!1211 (derivationStepZipper!1211 lt!2170910 (head!11392 (t!374408 s!2326))) (head!11392 (tail!10489 (t!374408 s!2326)))) (tail!10489 (tail!10489 (t!374408 s!2326)))))))

(assert (= (and d!1707362 c!923308) b!5314404))

(assert (= (and d!1707362 (not c!923308)) b!5314405))

(assert (=> d!1707362 m!6350574))

(assert (=> d!1707362 m!6351016))

(assert (=> b!5314404 m!6350746))

(declare-fun m!6351102 () Bool)

(assert (=> b!5314404 m!6351102))

(assert (=> b!5314405 m!6350574))

(assert (=> b!5314405 m!6351020))

(assert (=> b!5314405 m!6350746))

(assert (=> b!5314405 m!6351020))

(declare-fun m!6351104 () Bool)

(assert (=> b!5314405 m!6351104))

(assert (=> b!5314405 m!6350574))

(assert (=> b!5314405 m!6351024))

(assert (=> b!5314405 m!6351104))

(assert (=> b!5314405 m!6351024))

(declare-fun m!6351106 () Bool)

(assert (=> b!5314405 m!6351106))

(assert (=> b!5313901 d!1707362))

(declare-fun bs!1232020 () Bool)

(declare-fun d!1707364 () Bool)

(assert (= bs!1232020 (and d!1707364 b!5313407)))

(declare-fun lambda!270914 () Int)

(assert (=> bs!1232020 (= (= (head!11392 (t!374408 s!2326)) (h!67527 s!2326)) (= lambda!270914 lambda!270834))))

(declare-fun bs!1232021 () Bool)

(assert (= bs!1232021 (and d!1707364 d!1707340)))

(assert (=> bs!1232021 (= lambda!270914 lambda!270912)))

(assert (=> d!1707364 true))

(assert (=> d!1707364 (= (derivationStepZipper!1211 lt!2170910 (head!11392 (t!374408 s!2326))) (flatMap!695 lt!2170910 lambda!270914))))

(declare-fun bs!1232022 () Bool)

(assert (= bs!1232022 d!1707364))

(declare-fun m!6351108 () Bool)

(assert (=> bs!1232022 m!6351108))

(assert (=> b!5313901 d!1707364))

(assert (=> b!5313901 d!1707342))

(assert (=> b!5313901 d!1707344))

(declare-fun b!5314406 () Bool)

(declare-fun res!2254566 () Bool)

(declare-fun e!3302153 () Bool)

(assert (=> b!5314406 (=> (not res!2254566) (not e!3302153))))

(declare-fun call!378990 () Bool)

(assert (=> b!5314406 (= res!2254566 (not call!378990))))

(declare-fun b!5314407 () Bool)

(declare-fun res!2254564 () Bool)

(declare-fun e!3302157 () Bool)

(assert (=> b!5314407 (=> res!2254564 e!3302157)))

(assert (=> b!5314407 (= res!2254564 (not (isEmpty!33049 (tail!10489 (_2!35470 (get!21007 lt!2170991))))))))

(declare-fun d!1707366 () Bool)

(declare-fun e!3302155 () Bool)

(assert (=> d!1707366 e!3302155))

(declare-fun c!923310 () Bool)

(assert (=> d!1707366 (= c!923310 (is-EmptyExpr!14968 (regTwo!30448 r!7292)))))

(declare-fun lt!2171052 () Bool)

(declare-fun e!3302152 () Bool)

(assert (=> d!1707366 (= lt!2171052 e!3302152)))

(declare-fun c!923311 () Bool)

(assert (=> d!1707366 (= c!923311 (isEmpty!33049 (_2!35470 (get!21007 lt!2170991))))))

(assert (=> d!1707366 (validRegex!6704 (regTwo!30448 r!7292))))

(assert (=> d!1707366 (= (matchR!7153 (regTwo!30448 r!7292) (_2!35470 (get!21007 lt!2170991))) lt!2171052)))

(declare-fun b!5314408 () Bool)

(assert (=> b!5314408 (= e!3302153 (= (head!11392 (_2!35470 (get!21007 lt!2170991))) (c!923072 (regTwo!30448 r!7292))))))

(declare-fun b!5314409 () Bool)

(declare-fun res!2254565 () Bool)

(declare-fun e!3302154 () Bool)

(assert (=> b!5314409 (=> res!2254565 e!3302154)))

(assert (=> b!5314409 (= res!2254565 (not (is-ElementMatch!14968 (regTwo!30448 r!7292))))))

(declare-fun e!3302156 () Bool)

(assert (=> b!5314409 (= e!3302156 e!3302154)))

(declare-fun bm!378985 () Bool)

(assert (=> bm!378985 (= call!378990 (isEmpty!33049 (_2!35470 (get!21007 lt!2170991))))))

(declare-fun b!5314410 () Bool)

(assert (=> b!5314410 (= e!3302155 e!3302156)))

(declare-fun c!923309 () Bool)

(assert (=> b!5314410 (= c!923309 (is-EmptyLang!14968 (regTwo!30448 r!7292)))))

(declare-fun b!5314411 () Bool)

(declare-fun res!2254563 () Bool)

(assert (=> b!5314411 (=> (not res!2254563) (not e!3302153))))

(assert (=> b!5314411 (= res!2254563 (isEmpty!33049 (tail!10489 (_2!35470 (get!21007 lt!2170991)))))))

(declare-fun b!5314412 () Bool)

(assert (=> b!5314412 (= e!3302156 (not lt!2171052))))

(declare-fun b!5314413 () Bool)

(declare-fun res!2254568 () Bool)

(assert (=> b!5314413 (=> res!2254568 e!3302154)))

(assert (=> b!5314413 (= res!2254568 e!3302153)))

(declare-fun res!2254561 () Bool)

(assert (=> b!5314413 (=> (not res!2254561) (not e!3302153))))

(assert (=> b!5314413 (= res!2254561 lt!2171052)))

(declare-fun b!5314414 () Bool)

(assert (=> b!5314414 (= e!3302152 (matchR!7153 (derivativeStep!4158 (regTwo!30448 r!7292) (head!11392 (_2!35470 (get!21007 lt!2170991)))) (tail!10489 (_2!35470 (get!21007 lt!2170991)))))))

(declare-fun b!5314415 () Bool)

(declare-fun e!3302158 () Bool)

(assert (=> b!5314415 (= e!3302158 e!3302157)))

(declare-fun res!2254567 () Bool)

(assert (=> b!5314415 (=> res!2254567 e!3302157)))

(assert (=> b!5314415 (= res!2254567 call!378990)))

(declare-fun b!5314416 () Bool)

(assert (=> b!5314416 (= e!3302157 (not (= (head!11392 (_2!35470 (get!21007 lt!2170991))) (c!923072 (regTwo!30448 r!7292)))))))

(declare-fun b!5314417 () Bool)

(assert (=> b!5314417 (= e!3302155 (= lt!2171052 call!378990))))

(declare-fun b!5314418 () Bool)

(assert (=> b!5314418 (= e!3302152 (nullable!5137 (regTwo!30448 r!7292)))))

(declare-fun b!5314419 () Bool)

(assert (=> b!5314419 (= e!3302154 e!3302158)))

(declare-fun res!2254562 () Bool)

(assert (=> b!5314419 (=> (not res!2254562) (not e!3302158))))

(assert (=> b!5314419 (= res!2254562 (not lt!2171052))))

(assert (= (and d!1707366 c!923311) b!5314418))

(assert (= (and d!1707366 (not c!923311)) b!5314414))

(assert (= (and d!1707366 c!923310) b!5314417))

(assert (= (and d!1707366 (not c!923310)) b!5314410))

(assert (= (and b!5314410 c!923309) b!5314412))

(assert (= (and b!5314410 (not c!923309)) b!5314409))

(assert (= (and b!5314409 (not res!2254565)) b!5314413))

(assert (= (and b!5314413 res!2254561) b!5314406))

(assert (= (and b!5314406 res!2254566) b!5314411))

(assert (= (and b!5314411 res!2254563) b!5314408))

(assert (= (and b!5314413 (not res!2254568)) b!5314419))

(assert (= (and b!5314419 res!2254562) b!5314415))

(assert (= (and b!5314415 (not res!2254567)) b!5314407))

(assert (= (and b!5314407 (not res!2254564)) b!5314416))

(assert (= (or b!5314417 b!5314406 b!5314415) bm!378985))

(declare-fun m!6351110 () Bool)

(assert (=> b!5314407 m!6351110))

(assert (=> b!5314407 m!6351110))

(declare-fun m!6351112 () Bool)

(assert (=> b!5314407 m!6351112))

(declare-fun m!6351114 () Bool)

(assert (=> b!5314408 m!6351114))

(assert (=> b!5314414 m!6351114))

(assert (=> b!5314414 m!6351114))

(declare-fun m!6351116 () Bool)

(assert (=> b!5314414 m!6351116))

(assert (=> b!5314414 m!6351110))

(assert (=> b!5314414 m!6351116))

(assert (=> b!5314414 m!6351110))

(declare-fun m!6351118 () Bool)

(assert (=> b!5314414 m!6351118))

(assert (=> b!5314411 m!6351110))

(assert (=> b!5314411 m!6351110))

(assert (=> b!5314411 m!6351112))

(assert (=> b!5314416 m!6351114))

(declare-fun m!6351120 () Bool)

(assert (=> d!1707366 m!6351120))

(declare-fun m!6351122 () Bool)

(assert (=> d!1707366 m!6351122))

(declare-fun m!6351124 () Bool)

(assert (=> b!5314418 m!6351124))

(assert (=> bm!378985 m!6351120))

(assert (=> b!5313853 d!1707366))

(assert (=> b!5313853 d!1707324))

(assert (=> d!1707162 d!1707288))

(declare-fun d!1707368 () Bool)

(assert (=> d!1707368 (= (isEmpty!33046 (unfocusZipperList!410 zl!343)) (is-Nil!61080 (unfocusZipperList!410 zl!343)))))

(assert (=> b!5313788 d!1707368))

(declare-fun b!5314420 () Bool)

(declare-fun res!2254574 () Bool)

(declare-fun e!3302160 () Bool)

(assert (=> b!5314420 (=> (not res!2254574) (not e!3302160))))

(declare-fun call!378991 () Bool)

(assert (=> b!5314420 (= res!2254574 (not call!378991))))

(declare-fun b!5314421 () Bool)

(declare-fun res!2254572 () Bool)

(declare-fun e!3302164 () Bool)

(assert (=> b!5314421 (=> res!2254572 e!3302164)))

(assert (=> b!5314421 (= res!2254572 (not (isEmpty!33049 (tail!10489 (tail!10489 s!2326)))))))

(declare-fun d!1707370 () Bool)

(declare-fun e!3302162 () Bool)

(assert (=> d!1707370 e!3302162))

(declare-fun c!923313 () Bool)

(assert (=> d!1707370 (= c!923313 (is-EmptyExpr!14968 (derivativeStep!4158 r!7292 (head!11392 s!2326))))))

(declare-fun lt!2171053 () Bool)

(declare-fun e!3302159 () Bool)

(assert (=> d!1707370 (= lt!2171053 e!3302159)))

(declare-fun c!923314 () Bool)

(assert (=> d!1707370 (= c!923314 (isEmpty!33049 (tail!10489 s!2326)))))

(assert (=> d!1707370 (validRegex!6704 (derivativeStep!4158 r!7292 (head!11392 s!2326)))))

(assert (=> d!1707370 (= (matchR!7153 (derivativeStep!4158 r!7292 (head!11392 s!2326)) (tail!10489 s!2326)) lt!2171053)))

(declare-fun b!5314422 () Bool)

(assert (=> b!5314422 (= e!3302160 (= (head!11392 (tail!10489 s!2326)) (c!923072 (derivativeStep!4158 r!7292 (head!11392 s!2326)))))))

(declare-fun b!5314423 () Bool)

(declare-fun res!2254573 () Bool)

(declare-fun e!3302161 () Bool)

(assert (=> b!5314423 (=> res!2254573 e!3302161)))

(assert (=> b!5314423 (= res!2254573 (not (is-ElementMatch!14968 (derivativeStep!4158 r!7292 (head!11392 s!2326)))))))

(declare-fun e!3302163 () Bool)

(assert (=> b!5314423 (= e!3302163 e!3302161)))

(declare-fun bm!378986 () Bool)

(assert (=> bm!378986 (= call!378991 (isEmpty!33049 (tail!10489 s!2326)))))

(declare-fun b!5314424 () Bool)

(assert (=> b!5314424 (= e!3302162 e!3302163)))

(declare-fun c!923312 () Bool)

(assert (=> b!5314424 (= c!923312 (is-EmptyLang!14968 (derivativeStep!4158 r!7292 (head!11392 s!2326))))))

(declare-fun b!5314425 () Bool)

(declare-fun res!2254571 () Bool)

(assert (=> b!5314425 (=> (not res!2254571) (not e!3302160))))

(assert (=> b!5314425 (= res!2254571 (isEmpty!33049 (tail!10489 (tail!10489 s!2326))))))

(declare-fun b!5314426 () Bool)

(assert (=> b!5314426 (= e!3302163 (not lt!2171053))))

(declare-fun b!5314427 () Bool)

(declare-fun res!2254576 () Bool)

(assert (=> b!5314427 (=> res!2254576 e!3302161)))

(assert (=> b!5314427 (= res!2254576 e!3302160)))

(declare-fun res!2254569 () Bool)

(assert (=> b!5314427 (=> (not res!2254569) (not e!3302160))))

(assert (=> b!5314427 (= res!2254569 lt!2171053)))

(declare-fun b!5314428 () Bool)

(assert (=> b!5314428 (= e!3302159 (matchR!7153 (derivativeStep!4158 (derivativeStep!4158 r!7292 (head!11392 s!2326)) (head!11392 (tail!10489 s!2326))) (tail!10489 (tail!10489 s!2326))))))

(declare-fun b!5314429 () Bool)

(declare-fun e!3302165 () Bool)

(assert (=> b!5314429 (= e!3302165 e!3302164)))

(declare-fun res!2254575 () Bool)

(assert (=> b!5314429 (=> res!2254575 e!3302164)))

(assert (=> b!5314429 (= res!2254575 call!378991)))

(declare-fun b!5314430 () Bool)

(assert (=> b!5314430 (= e!3302164 (not (= (head!11392 (tail!10489 s!2326)) (c!923072 (derivativeStep!4158 r!7292 (head!11392 s!2326))))))))

(declare-fun b!5314431 () Bool)

(assert (=> b!5314431 (= e!3302162 (= lt!2171053 call!378991))))

(declare-fun b!5314432 () Bool)

(assert (=> b!5314432 (= e!3302159 (nullable!5137 (derivativeStep!4158 r!7292 (head!11392 s!2326))))))

(declare-fun b!5314433 () Bool)

(assert (=> b!5314433 (= e!3302161 e!3302165)))

(declare-fun res!2254570 () Bool)

(assert (=> b!5314433 (=> (not res!2254570) (not e!3302165))))

(assert (=> b!5314433 (= res!2254570 (not lt!2171053))))

(assert (= (and d!1707370 c!923314) b!5314432))

(assert (= (and d!1707370 (not c!923314)) b!5314428))

(assert (= (and d!1707370 c!923313) b!5314431))

(assert (= (and d!1707370 (not c!923313)) b!5314424))

(assert (= (and b!5314424 c!923312) b!5314426))

(assert (= (and b!5314424 (not c!923312)) b!5314423))

(assert (= (and b!5314423 (not res!2254573)) b!5314427))

(assert (= (and b!5314427 res!2254569) b!5314420))

(assert (= (and b!5314420 res!2254574) b!5314425))

(assert (= (and b!5314425 res!2254571) b!5314422))

(assert (= (and b!5314427 (not res!2254576)) b!5314433))

(assert (= (and b!5314433 res!2254570) b!5314429))

(assert (= (and b!5314429 (not res!2254575)) b!5314421))

(assert (= (and b!5314421 (not res!2254572)) b!5314430))

(assert (= (or b!5314431 b!5314420 b!5314429) bm!378986))

(assert (=> b!5314421 m!6350624))

(declare-fun m!6351126 () Bool)

(assert (=> b!5314421 m!6351126))

(assert (=> b!5314421 m!6351126))

(declare-fun m!6351128 () Bool)

(assert (=> b!5314421 m!6351128))

(assert (=> b!5314422 m!6350624))

(declare-fun m!6351130 () Bool)

(assert (=> b!5314422 m!6351130))

(assert (=> b!5314428 m!6350624))

(assert (=> b!5314428 m!6351130))

(assert (=> b!5314428 m!6350630))

(assert (=> b!5314428 m!6351130))

(declare-fun m!6351132 () Bool)

(assert (=> b!5314428 m!6351132))

(assert (=> b!5314428 m!6350624))

(assert (=> b!5314428 m!6351126))

(assert (=> b!5314428 m!6351132))

(assert (=> b!5314428 m!6351126))

(declare-fun m!6351134 () Bool)

(assert (=> b!5314428 m!6351134))

(assert (=> b!5314425 m!6350624))

(assert (=> b!5314425 m!6351126))

(assert (=> b!5314425 m!6351126))

(assert (=> b!5314425 m!6351128))

(assert (=> b!5314430 m!6350624))

(assert (=> b!5314430 m!6351130))

(assert (=> d!1707370 m!6350624))

(assert (=> d!1707370 m!6350626))

(assert (=> d!1707370 m!6350630))

(declare-fun m!6351136 () Bool)

(assert (=> d!1707370 m!6351136))

(assert (=> b!5314432 m!6350630))

(declare-fun m!6351138 () Bool)

(assert (=> b!5314432 m!6351138))

(assert (=> bm!378986 m!6350624))

(assert (=> bm!378986 m!6350626))

(assert (=> b!5313758 d!1707370))

(declare-fun b!5314454 () Bool)

(declare-fun e!3302177 () Regex!14968)

(declare-fun e!3302178 () Regex!14968)

(assert (=> b!5314454 (= e!3302177 e!3302178)))

(declare-fun c!923326 () Bool)

(assert (=> b!5314454 (= c!923326 (is-ElementMatch!14968 r!7292))))

(declare-fun b!5314455 () Bool)

(assert (=> b!5314455 (= e!3302177 EmptyLang!14968)))

(declare-fun c!923327 () Bool)

(declare-fun call!379001 () Regex!14968)

(declare-fun c!923325 () Bool)

(declare-fun c!923328 () Bool)

(declare-fun bm!378995 () Bool)

(assert (=> bm!378995 (= call!379001 (derivativeStep!4158 (ite c!923325 (regTwo!30449 r!7292) (ite c!923327 (reg!15297 r!7292) (ite c!923328 (regTwo!30448 r!7292) (regOne!30448 r!7292)))) (head!11392 s!2326)))))

(declare-fun bm!378996 () Bool)

(declare-fun call!379003 () Regex!14968)

(declare-fun call!379000 () Regex!14968)

(assert (=> bm!378996 (= call!379003 call!379000)))

(declare-fun b!5314456 () Bool)

(declare-fun e!3302176 () Regex!14968)

(declare-fun call!379002 () Regex!14968)

(assert (=> b!5314456 (= e!3302176 (Union!14968 call!379002 call!379001))))

(declare-fun b!5314457 () Bool)

(declare-fun e!3302179 () Regex!14968)

(assert (=> b!5314457 (= e!3302176 e!3302179)))

(assert (=> b!5314457 (= c!923327 (is-Star!14968 r!7292))))

(declare-fun b!5314458 () Bool)

(assert (=> b!5314458 (= e!3302179 (Concat!23813 call!379000 r!7292))))

(declare-fun b!5314459 () Bool)

(declare-fun e!3302180 () Regex!14968)

(assert (=> b!5314459 (= e!3302180 (Union!14968 (Concat!23813 call!379003 (regTwo!30448 r!7292)) EmptyLang!14968))))

(declare-fun d!1707372 () Bool)

(declare-fun lt!2171056 () Regex!14968)

(assert (=> d!1707372 (validRegex!6704 lt!2171056)))

(assert (=> d!1707372 (= lt!2171056 e!3302177)))

(declare-fun c!923329 () Bool)

(assert (=> d!1707372 (= c!923329 (or (is-EmptyExpr!14968 r!7292) (is-EmptyLang!14968 r!7292)))))

(assert (=> d!1707372 (validRegex!6704 r!7292)))

(assert (=> d!1707372 (= (derivativeStep!4158 r!7292 (head!11392 s!2326)) lt!2171056)))

(declare-fun b!5314460 () Bool)

(assert (=> b!5314460 (= c!923325 (is-Union!14968 r!7292))))

(assert (=> b!5314460 (= e!3302178 e!3302176)))

(declare-fun bm!378997 () Bool)

(assert (=> bm!378997 (= call!379000 call!379001)))

(declare-fun b!5314461 () Bool)

(assert (=> b!5314461 (= e!3302178 (ite (= (head!11392 s!2326) (c!923072 r!7292)) EmptyExpr!14968 EmptyLang!14968))))

(declare-fun bm!378998 () Bool)

(assert (=> bm!378998 (= call!379002 (derivativeStep!4158 (ite c!923325 (regOne!30449 r!7292) (regOne!30448 r!7292)) (head!11392 s!2326)))))

(declare-fun b!5314462 () Bool)

(assert (=> b!5314462 (= c!923328 (nullable!5137 (regOne!30448 r!7292)))))

(assert (=> b!5314462 (= e!3302179 e!3302180)))

(declare-fun b!5314463 () Bool)

(assert (=> b!5314463 (= e!3302180 (Union!14968 (Concat!23813 call!379002 (regTwo!30448 r!7292)) call!379003))))

(assert (= (and d!1707372 c!923329) b!5314455))

(assert (= (and d!1707372 (not c!923329)) b!5314454))

(assert (= (and b!5314454 c!923326) b!5314461))

(assert (= (and b!5314454 (not c!923326)) b!5314460))

(assert (= (and b!5314460 c!923325) b!5314456))

(assert (= (and b!5314460 (not c!923325)) b!5314457))

(assert (= (and b!5314457 c!923327) b!5314458))

(assert (= (and b!5314457 (not c!923327)) b!5314462))

(assert (= (and b!5314462 c!923328) b!5314463))

(assert (= (and b!5314462 (not c!923328)) b!5314459))

(assert (= (or b!5314463 b!5314459) bm!378996))

(assert (= (or b!5314458 bm!378996) bm!378997))

(assert (= (or b!5314456 bm!378997) bm!378995))

(assert (= (or b!5314456 b!5314463) bm!378998))

(assert (=> bm!378995 m!6350628))

(declare-fun m!6351140 () Bool)

(assert (=> bm!378995 m!6351140))

(declare-fun m!6351142 () Bool)

(assert (=> d!1707372 m!6351142))

(assert (=> d!1707372 m!6350394))

(assert (=> bm!378998 m!6350628))

(declare-fun m!6351144 () Bool)

(assert (=> bm!378998 m!6351144))

(assert (=> b!5314462 m!6350982))

(assert (=> b!5313758 d!1707372))

(assert (=> b!5313758 d!1707292))

(assert (=> b!5313758 d!1707274))

(declare-fun b!5314464 () Bool)

(declare-fun e!3302183 () (Set Context!8704))

(assert (=> b!5314464 (= e!3302183 (as set.empty (Set Context!8704)))))

(declare-fun b!5314465 () Bool)

(declare-fun e!3302184 () (Set Context!8704))

(assert (=> b!5314465 (= e!3302184 (set.insert (ite (or c!923092 c!923090) lt!2170917 (Context!8705 call!378886)) (as set.empty (Set Context!8704))))))

(declare-fun call!379009 () List!61204)

(declare-fun c!923330 () Bool)

(declare-fun bm!378999 () Bool)

(declare-fun c!923332 () Bool)

(declare-fun c!923333 () Bool)

(declare-fun call!379006 () (Set Context!8704))

(assert (=> bm!378999 (= call!379006 (derivationStepZipperDown!416 (ite c!923332 (regOne!30449 (ite c!923092 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923090 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923093 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343)))))))) (ite c!923330 (regTwo!30448 (ite c!923092 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923090 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923093 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343)))))))) (ite c!923333 (regOne!30448 (ite c!923092 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923090 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923093 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343)))))))) (reg!15297 (ite c!923092 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923090 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923093 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343))))))))))) (ite (or c!923332 c!923330) (ite (or c!923092 c!923090) lt!2170917 (Context!8705 call!378886)) (Context!8705 call!379009)) (h!67527 s!2326)))))

(declare-fun bm!379000 () Bool)

(declare-fun call!379007 () (Set Context!8704))

(assert (=> bm!379000 (= call!379007 call!379006)))

(declare-fun b!5314466 () Bool)

(declare-fun call!379005 () (Set Context!8704))

(assert (=> b!5314466 (= e!3302183 call!379005)))

(declare-fun bm!379001 () Bool)

(declare-fun call!379004 () List!61204)

(assert (=> bm!379001 (= call!379009 call!379004)))

(declare-fun call!379008 () (Set Context!8704))

(declare-fun bm!379002 () Bool)

(assert (=> bm!379002 (= call!379008 (derivationStepZipperDown!416 (ite c!923332 (regTwo!30449 (ite c!923092 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923090 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923093 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343)))))))) (regOne!30448 (ite c!923092 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923090 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923093 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343))))))))) (ite c!923332 (ite (or c!923092 c!923090) lt!2170917 (Context!8705 call!378886)) (Context!8705 call!379004)) (h!67527 s!2326)))))

(declare-fun b!5314467 () Bool)

(declare-fun e!3302181 () Bool)

(assert (=> b!5314467 (= c!923330 e!3302181)))

(declare-fun res!2254577 () Bool)

(assert (=> b!5314467 (=> (not res!2254577) (not e!3302181))))

(assert (=> b!5314467 (= res!2254577 (is-Concat!23813 (ite c!923092 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923090 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923093 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343)))))))))))

(declare-fun e!3302185 () (Set Context!8704))

(declare-fun e!3302182 () (Set Context!8704))

(assert (=> b!5314467 (= e!3302185 e!3302182)))

(declare-fun b!5314468 () Bool)

(declare-fun c!923331 () Bool)

(assert (=> b!5314468 (= c!923331 (is-Star!14968 (ite c!923092 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923090 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923093 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343)))))))))))

(declare-fun e!3302186 () (Set Context!8704))

(assert (=> b!5314468 (= e!3302186 e!3302183)))

(declare-fun b!5314469 () Bool)

(assert (=> b!5314469 (= e!3302185 (set.union call!379006 call!379008))))

(declare-fun b!5314470 () Bool)

(assert (=> b!5314470 (= e!3302182 e!3302186)))

(assert (=> b!5314470 (= c!923333 (is-Concat!23813 (ite c!923092 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923090 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923093 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343)))))))))))

(declare-fun b!5314471 () Bool)

(assert (=> b!5314471 (= e!3302186 call!379005)))

(declare-fun b!5314472 () Bool)

(assert (=> b!5314472 (= e!3302181 (nullable!5137 (regOne!30448 (ite c!923092 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923090 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923093 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343))))))))))))

(declare-fun c!923334 () Bool)

(declare-fun d!1707374 () Bool)

(assert (=> d!1707374 (= c!923334 (and (is-ElementMatch!14968 (ite c!923092 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923090 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923093 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343)))))))) (= (c!923072 (ite c!923092 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923090 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923093 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343)))))))) (h!67527 s!2326))))))

(assert (=> d!1707374 (= (derivationStepZipperDown!416 (ite c!923092 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923090 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923093 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343))))))) (ite (or c!923092 c!923090) lt!2170917 (Context!8705 call!378886)) (h!67527 s!2326)) e!3302184)))

(declare-fun b!5314473 () Bool)

(assert (=> b!5314473 (= e!3302184 e!3302185)))

(assert (=> b!5314473 (= c!923332 (is-Union!14968 (ite c!923092 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923090 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923093 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343)))))))))))

(declare-fun bm!379003 () Bool)

(assert (=> bm!379003 (= call!379004 ($colon$colon!1387 (exprs!4852 (ite (or c!923092 c!923090) lt!2170917 (Context!8705 call!378886))) (ite (or c!923330 c!923333) (regTwo!30448 (ite c!923092 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923090 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923093 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343)))))))) (ite c!923092 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923090 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923093 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343))))))))))))

(declare-fun b!5314474 () Bool)

(assert (=> b!5314474 (= e!3302182 (set.union call!379008 call!379007))))

(declare-fun bm!379004 () Bool)

(assert (=> bm!379004 (= call!379005 call!379007)))

(assert (= (and d!1707374 c!923334) b!5314465))

(assert (= (and d!1707374 (not c!923334)) b!5314473))

(assert (= (and b!5314473 c!923332) b!5314469))

(assert (= (and b!5314473 (not c!923332)) b!5314467))

(assert (= (and b!5314467 res!2254577) b!5314472))

(assert (= (and b!5314467 c!923330) b!5314474))

(assert (= (and b!5314467 (not c!923330)) b!5314470))

(assert (= (and b!5314470 c!923333) b!5314471))

(assert (= (and b!5314470 (not c!923333)) b!5314468))

(assert (= (and b!5314468 c!923331) b!5314466))

(assert (= (and b!5314468 (not c!923331)) b!5314464))

(assert (= (or b!5314471 b!5314466) bm!379001))

(assert (= (or b!5314471 b!5314466) bm!379004))

(assert (= (or b!5314474 bm!379001) bm!379003))

(assert (= (or b!5314474 bm!379004) bm!379000))

(assert (= (or b!5314469 b!5314474) bm!379002))

(assert (= (or b!5314469 bm!379000) bm!378999))

(declare-fun m!6351146 () Bool)

(assert (=> bm!379003 m!6351146))

(declare-fun m!6351148 () Bool)

(assert (=> b!5314472 m!6351148))

(declare-fun m!6351150 () Bool)

(assert (=> bm!378999 m!6351150))

(declare-fun m!6351152 () Bool)

(assert (=> b!5314465 m!6351152))

(declare-fun m!6351154 () Bool)

(assert (=> bm!379002 m!6351154))

(assert (=> bm!378876 d!1707374))

(assert (=> d!1707212 d!1707288))

(declare-fun d!1707376 () Bool)

(assert (=> d!1707376 (= (Exists!2149 lambda!270874) (choose!39763 lambda!270874))))

(declare-fun bs!1232023 () Bool)

(assert (= bs!1232023 d!1707376))

(declare-fun m!6351156 () Bool)

(assert (=> bs!1232023 m!6351156))

(assert (=> d!1707202 d!1707376))

(declare-fun d!1707378 () Bool)

(assert (=> d!1707378 (= (Exists!2149 lambda!270875) (choose!39763 lambda!270875))))

(declare-fun bs!1232024 () Bool)

(assert (= bs!1232024 d!1707378))

(declare-fun m!6351158 () Bool)

(assert (=> bs!1232024 m!6351158))

(assert (=> d!1707202 d!1707378))

(declare-fun bs!1232025 () Bool)

(declare-fun d!1707380 () Bool)

(assert (= bs!1232025 (and d!1707380 b!5313706)))

(declare-fun lambda!270919 () Int)

(assert (=> bs!1232025 (not (= lambda!270919 lambda!270853))))

(declare-fun bs!1232026 () Bool)

(assert (= bs!1232026 (and d!1707380 d!1707336)))

(assert (=> bs!1232026 (= lambda!270919 lambda!270909)))

(declare-fun bs!1232027 () Bool)

(assert (= bs!1232027 (and d!1707380 d!1707200)))

(assert (=> bs!1232027 (= lambda!270919 lambda!270869)))

(declare-fun bs!1232028 () Bool)

(assert (= bs!1232028 (and d!1707380 b!5313420)))

(assert (=> bs!1232028 (not (= lambda!270919 lambda!270833))))

(declare-fun bs!1232029 () Bool)

(assert (= bs!1232029 (and d!1707380 d!1707202)))

(assert (=> bs!1232029 (= lambda!270919 lambda!270874)))

(assert (=> bs!1232028 (= lambda!270919 lambda!270832)))

(assert (=> bs!1232029 (not (= lambda!270919 lambda!270875))))

(declare-fun bs!1232030 () Bool)

(assert (= bs!1232030 (and d!1707380 b!5313709)))

(assert (=> bs!1232030 (not (= lambda!270919 lambda!270854))))

(assert (=> d!1707380 true))

(assert (=> d!1707380 true))

(assert (=> d!1707380 true))

(declare-fun lambda!270920 () Int)

(assert (=> bs!1232025 (not (= lambda!270920 lambda!270853))))

(assert (=> bs!1232026 (not (= lambda!270920 lambda!270909))))

(assert (=> bs!1232027 (not (= lambda!270920 lambda!270869))))

(assert (=> bs!1232028 (= lambda!270920 lambda!270833)))

(assert (=> bs!1232029 (not (= lambda!270920 lambda!270874))))

(assert (=> bs!1232029 (= lambda!270920 lambda!270875)))

(assert (=> bs!1232030 (= lambda!270920 lambda!270854)))

(assert (=> bs!1232028 (not (= lambda!270920 lambda!270832))))

(declare-fun bs!1232031 () Bool)

(assert (= bs!1232031 d!1707380))

(assert (=> bs!1232031 (not (= lambda!270920 lambda!270919))))

(assert (=> d!1707380 true))

(assert (=> d!1707380 true))

(assert (=> d!1707380 true))

(assert (=> d!1707380 (= (Exists!2149 lambda!270919) (Exists!2149 lambda!270920))))

(assert (=> d!1707380 true))

(declare-fun _$90!1125 () Unit!153390)

(assert (=> d!1707380 (= (choose!39765 (regOne!30448 r!7292) (regTwo!30448 r!7292) s!2326) _$90!1125)))

(declare-fun m!6351160 () Bool)

(assert (=> bs!1232031 m!6351160))

(declare-fun m!6351162 () Bool)

(assert (=> bs!1232031 m!6351162))

(assert (=> d!1707202 d!1707380))

(assert (=> d!1707202 d!1707332))

(declare-fun d!1707382 () Bool)

(assert (=> d!1707382 (= (nullable!5137 (reg!15297 r!7292)) (nullableFct!1489 (reg!15297 r!7292)))))

(declare-fun bs!1232032 () Bool)

(assert (= bs!1232032 d!1707382))

(declare-fun m!6351164 () Bool)

(assert (=> bs!1232032 m!6351164))

(assert (=> b!5313635 d!1707382))

(declare-fun b!5314484 () Bool)

(declare-fun res!2254589 () Bool)

(declare-fun e!3302197 () Bool)

(assert (=> b!5314484 (=> res!2254589 e!3302197)))

(assert (=> b!5314484 (= res!2254589 (not (is-Concat!23813 lt!2170978)))))

(declare-fun e!3302194 () Bool)

(assert (=> b!5314484 (= e!3302194 e!3302197)))

(declare-fun bm!379005 () Bool)

(declare-fun call!379011 () Bool)

(declare-fun call!379010 () Bool)

(assert (=> bm!379005 (= call!379011 call!379010)))

(declare-fun bm!379006 () Bool)

(declare-fun call!379012 () Bool)

(declare-fun c!923335 () Bool)

(assert (=> bm!379006 (= call!379012 (validRegex!6704 (ite c!923335 (regTwo!30449 lt!2170978) (regTwo!30448 lt!2170978))))))

(declare-fun c!923336 () Bool)

(declare-fun bm!379007 () Bool)

(assert (=> bm!379007 (= call!379010 (validRegex!6704 (ite c!923336 (reg!15297 lt!2170978) (ite c!923335 (regOne!30449 lt!2170978) (regOne!30448 lt!2170978)))))))

(declare-fun b!5314485 () Bool)

(declare-fun e!3302196 () Bool)

(assert (=> b!5314485 (= e!3302197 e!3302196)))

(declare-fun res!2254588 () Bool)

(assert (=> b!5314485 (=> (not res!2254588) (not e!3302196))))

(assert (=> b!5314485 (= res!2254588 call!379011)))

(declare-fun b!5314486 () Bool)

(declare-fun e!3302195 () Bool)

(assert (=> b!5314486 (= e!3302195 call!379012)))

(declare-fun b!5314487 () Bool)

(declare-fun e!3302193 () Bool)

(assert (=> b!5314487 (= e!3302193 e!3302194)))

(assert (=> b!5314487 (= c!923335 (is-Union!14968 lt!2170978))))

(declare-fun b!5314488 () Bool)

(declare-fun e!3302191 () Bool)

(assert (=> b!5314488 (= e!3302193 e!3302191)))

(declare-fun res!2254587 () Bool)

(assert (=> b!5314488 (= res!2254587 (not (nullable!5137 (reg!15297 lt!2170978))))))

(assert (=> b!5314488 (=> (not res!2254587) (not e!3302191))))

(declare-fun b!5314489 () Bool)

(declare-fun e!3302192 () Bool)

(assert (=> b!5314489 (= e!3302192 e!3302193)))

(assert (=> b!5314489 (= c!923336 (is-Star!14968 lt!2170978))))

(declare-fun b!5314490 () Bool)

(declare-fun res!2254586 () Bool)

(assert (=> b!5314490 (=> (not res!2254586) (not e!3302195))))

(assert (=> b!5314490 (= res!2254586 call!379011)))

(assert (=> b!5314490 (= e!3302194 e!3302195)))

(declare-fun b!5314491 () Bool)

(assert (=> b!5314491 (= e!3302191 call!379010)))

(declare-fun d!1707384 () Bool)

(declare-fun res!2254590 () Bool)

(assert (=> d!1707384 (=> res!2254590 e!3302192)))

(assert (=> d!1707384 (= res!2254590 (is-ElementMatch!14968 lt!2170978))))

(assert (=> d!1707384 (= (validRegex!6704 lt!2170978) e!3302192)))

(declare-fun b!5314483 () Bool)

(assert (=> b!5314483 (= e!3302196 call!379012)))

(assert (= (and d!1707384 (not res!2254590)) b!5314489))

(assert (= (and b!5314489 c!923336) b!5314488))

(assert (= (and b!5314489 (not c!923336)) b!5314487))

(assert (= (and b!5314488 res!2254587) b!5314491))

(assert (= (and b!5314487 c!923335) b!5314490))

(assert (= (and b!5314487 (not c!923335)) b!5314484))

(assert (= (and b!5314490 res!2254586) b!5314486))

(assert (= (and b!5314484 (not res!2254589)) b!5314485))

(assert (= (and b!5314485 res!2254588) b!5314483))

(assert (= (or b!5314486 b!5314483) bm!379006))

(assert (= (or b!5314490 b!5314485) bm!379005))

(assert (= (or b!5314491 bm!379005) bm!379007))

(declare-fun m!6351166 () Bool)

(assert (=> bm!379006 m!6351166))

(declare-fun m!6351168 () Bool)

(assert (=> bm!379007 m!6351168))

(declare-fun m!6351170 () Bool)

(assert (=> b!5314488 m!6351170))

(assert (=> d!1707184 d!1707384))

(declare-fun d!1707386 () Bool)

(declare-fun res!2254591 () Bool)

(declare-fun e!3302198 () Bool)

(assert (=> d!1707386 (=> res!2254591 e!3302198)))

(assert (=> d!1707386 (= res!2254591 (is-Nil!61080 (unfocusZipperList!410 zl!343)))))

(assert (=> d!1707386 (= (forall!14388 (unfocusZipperList!410 zl!343) lambda!270857) e!3302198)))

(declare-fun b!5314492 () Bool)

(declare-fun e!3302199 () Bool)

(assert (=> b!5314492 (= e!3302198 e!3302199)))

(declare-fun res!2254592 () Bool)

(assert (=> b!5314492 (=> (not res!2254592) (not e!3302199))))

(assert (=> b!5314492 (= res!2254592 (dynLambda!24142 lambda!270857 (h!67528 (unfocusZipperList!410 zl!343))))))

(declare-fun b!5314493 () Bool)

(assert (=> b!5314493 (= e!3302199 (forall!14388 (t!374409 (unfocusZipperList!410 zl!343)) lambda!270857))))

(assert (= (and d!1707386 (not res!2254591)) b!5314492))

(assert (= (and b!5314492 res!2254592) b!5314493))

(declare-fun b_lambda!204465 () Bool)

(assert (=> (not b_lambda!204465) (not b!5314492)))

(declare-fun m!6351172 () Bool)

(assert (=> b!5314492 m!6351172))

(declare-fun m!6351174 () Bool)

(assert (=> b!5314493 m!6351174))

(assert (=> d!1707184 d!1707386))

(assert (=> d!1707178 d!1707174))

(assert (=> d!1707178 d!1707170))

(declare-fun d!1707388 () Bool)

(assert (=> d!1707388 (= (matchR!7153 r!7292 s!2326) (matchRSpec!2071 r!7292 s!2326))))

(assert (=> d!1707388 true))

(declare-fun _$88!3599 () Unit!153390)

(assert (=> d!1707388 (= (choose!39762 r!7292 s!2326) _$88!3599)))

(declare-fun bs!1232033 () Bool)

(assert (= bs!1232033 d!1707388))

(assert (=> bs!1232033 m!6350440))

(assert (=> bs!1232033 m!6350438))

(assert (=> d!1707178 d!1707388))

(assert (=> d!1707178 d!1707164))

(declare-fun bm!379008 () Bool)

(declare-fun call!379013 () (Set Context!8704))

(assert (=> bm!379008 (= call!379013 (derivationStepZipperDown!416 (h!67528 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 lt!2170917))))) (Context!8705 (t!374409 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 lt!2170917)))))) (h!67527 s!2326)))))

(declare-fun d!1707390 () Bool)

(declare-fun c!923338 () Bool)

(declare-fun e!3302202 () Bool)

(assert (=> d!1707390 (= c!923338 e!3302202)))

(declare-fun res!2254593 () Bool)

(assert (=> d!1707390 (=> (not res!2254593) (not e!3302202))))

(assert (=> d!1707390 (= res!2254593 (is-Cons!61080 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 lt!2170917))))))))

(declare-fun e!3302201 () (Set Context!8704))

(assert (=> d!1707390 (= (derivationStepZipperUp!340 (Context!8705 (t!374409 (exprs!4852 lt!2170917))) (h!67527 s!2326)) e!3302201)))

(declare-fun b!5314494 () Bool)

(declare-fun e!3302200 () (Set Context!8704))

(assert (=> b!5314494 (= e!3302200 call!379013)))

(declare-fun b!5314495 () Bool)

(assert (=> b!5314495 (= e!3302202 (nullable!5137 (h!67528 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 lt!2170917)))))))))

(declare-fun b!5314496 () Bool)

(assert (=> b!5314496 (= e!3302201 (set.union call!379013 (derivationStepZipperUp!340 (Context!8705 (t!374409 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 lt!2170917)))))) (h!67527 s!2326))))))

(declare-fun b!5314497 () Bool)

(assert (=> b!5314497 (= e!3302200 (as set.empty (Set Context!8704)))))

(declare-fun b!5314498 () Bool)

(assert (=> b!5314498 (= e!3302201 e!3302200)))

(declare-fun c!923337 () Bool)

(assert (=> b!5314498 (= c!923337 (is-Cons!61080 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 lt!2170917))))))))

(assert (= (and d!1707390 res!2254593) b!5314495))

(assert (= (and d!1707390 c!923338) b!5314496))

(assert (= (and d!1707390 (not c!923338)) b!5314498))

(assert (= (and b!5314498 c!923337) b!5314494))

(assert (= (and b!5314498 (not c!923337)) b!5314497))

(assert (= (or b!5314496 b!5314494) bm!379008))

(declare-fun m!6351176 () Bool)

(assert (=> bm!379008 m!6351176))

(declare-fun m!6351178 () Bool)

(assert (=> b!5314495 m!6351178))

(declare-fun m!6351180 () Bool)

(assert (=> b!5314496 m!6351180))

(assert (=> b!5313589 d!1707390))

(declare-fun d!1707392 () Bool)

(assert (=> d!1707392 (= (Exists!2149 (ite c!923137 lambda!270853 lambda!270854)) (choose!39763 (ite c!923137 lambda!270853 lambda!270854)))))

(declare-fun bs!1232034 () Bool)

(assert (= bs!1232034 d!1707392))

(declare-fun m!6351182 () Bool)

(assert (=> bs!1232034 m!6351182))

(assert (=> bm!378904 d!1707392))

(declare-fun b!5314500 () Bool)

(declare-fun res!2254597 () Bool)

(declare-fun e!3302209 () Bool)

(assert (=> b!5314500 (=> res!2254597 e!3302209)))

(assert (=> b!5314500 (= res!2254597 (not (is-Concat!23813 (ite c!923109 (regTwo!30449 (regOne!30448 (regOne!30448 r!7292))) (regTwo!30448 (regOne!30448 (regOne!30448 r!7292)))))))))

(declare-fun e!3302206 () Bool)

(assert (=> b!5314500 (= e!3302206 e!3302209)))

(declare-fun bm!379009 () Bool)

(declare-fun call!379015 () Bool)

(declare-fun call!379014 () Bool)

(assert (=> bm!379009 (= call!379015 call!379014)))

(declare-fun bm!379010 () Bool)

(declare-fun c!923339 () Bool)

(declare-fun call!379016 () Bool)

(assert (=> bm!379010 (= call!379016 (validRegex!6704 (ite c!923339 (regTwo!30449 (ite c!923109 (regTwo!30449 (regOne!30448 (regOne!30448 r!7292))) (regTwo!30448 (regOne!30448 (regOne!30448 r!7292))))) (regTwo!30448 (ite c!923109 (regTwo!30449 (regOne!30448 (regOne!30448 r!7292))) (regTwo!30448 (regOne!30448 (regOne!30448 r!7292))))))))))

(declare-fun c!923340 () Bool)

(declare-fun bm!379011 () Bool)

(assert (=> bm!379011 (= call!379014 (validRegex!6704 (ite c!923340 (reg!15297 (ite c!923109 (regTwo!30449 (regOne!30448 (regOne!30448 r!7292))) (regTwo!30448 (regOne!30448 (regOne!30448 r!7292))))) (ite c!923339 (regOne!30449 (ite c!923109 (regTwo!30449 (regOne!30448 (regOne!30448 r!7292))) (regTwo!30448 (regOne!30448 (regOne!30448 r!7292))))) (regOne!30448 (ite c!923109 (regTwo!30449 (regOne!30448 (regOne!30448 r!7292))) (regTwo!30448 (regOne!30448 (regOne!30448 r!7292)))))))))))

(declare-fun b!5314501 () Bool)

(declare-fun e!3302208 () Bool)

(assert (=> b!5314501 (= e!3302209 e!3302208)))

(declare-fun res!2254596 () Bool)

(assert (=> b!5314501 (=> (not res!2254596) (not e!3302208))))

(assert (=> b!5314501 (= res!2254596 call!379015)))

(declare-fun b!5314502 () Bool)

(declare-fun e!3302207 () Bool)

(assert (=> b!5314502 (= e!3302207 call!379016)))

(declare-fun b!5314503 () Bool)

(declare-fun e!3302205 () Bool)

(assert (=> b!5314503 (= e!3302205 e!3302206)))

(assert (=> b!5314503 (= c!923339 (is-Union!14968 (ite c!923109 (regTwo!30449 (regOne!30448 (regOne!30448 r!7292))) (regTwo!30448 (regOne!30448 (regOne!30448 r!7292))))))))

(declare-fun b!5314504 () Bool)

(declare-fun e!3302203 () Bool)

(assert (=> b!5314504 (= e!3302205 e!3302203)))

(declare-fun res!2254595 () Bool)

(assert (=> b!5314504 (= res!2254595 (not (nullable!5137 (reg!15297 (ite c!923109 (regTwo!30449 (regOne!30448 (regOne!30448 r!7292))) (regTwo!30448 (regOne!30448 (regOne!30448 r!7292))))))))))

(assert (=> b!5314504 (=> (not res!2254595) (not e!3302203))))

(declare-fun b!5314505 () Bool)

(declare-fun e!3302204 () Bool)

(assert (=> b!5314505 (= e!3302204 e!3302205)))

(assert (=> b!5314505 (= c!923340 (is-Star!14968 (ite c!923109 (regTwo!30449 (regOne!30448 (regOne!30448 r!7292))) (regTwo!30448 (regOne!30448 (regOne!30448 r!7292))))))))

(declare-fun b!5314506 () Bool)

(declare-fun res!2254594 () Bool)

(assert (=> b!5314506 (=> (not res!2254594) (not e!3302207))))

(assert (=> b!5314506 (= res!2254594 call!379015)))

(assert (=> b!5314506 (= e!3302206 e!3302207)))

(declare-fun b!5314507 () Bool)

(assert (=> b!5314507 (= e!3302203 call!379014)))

(declare-fun d!1707394 () Bool)

(declare-fun res!2254598 () Bool)

(assert (=> d!1707394 (=> res!2254598 e!3302204)))

(assert (=> d!1707394 (= res!2254598 (is-ElementMatch!14968 (ite c!923109 (regTwo!30449 (regOne!30448 (regOne!30448 r!7292))) (regTwo!30448 (regOne!30448 (regOne!30448 r!7292))))))))

(assert (=> d!1707394 (= (validRegex!6704 (ite c!923109 (regTwo!30449 (regOne!30448 (regOne!30448 r!7292))) (regTwo!30448 (regOne!30448 (regOne!30448 r!7292))))) e!3302204)))

(declare-fun b!5314499 () Bool)

(assert (=> b!5314499 (= e!3302208 call!379016)))

(assert (= (and d!1707394 (not res!2254598)) b!5314505))

(assert (= (and b!5314505 c!923340) b!5314504))

(assert (= (and b!5314505 (not c!923340)) b!5314503))

(assert (= (and b!5314504 res!2254595) b!5314507))

(assert (= (and b!5314503 c!923339) b!5314506))

(assert (= (and b!5314503 (not c!923339)) b!5314500))

(assert (= (and b!5314506 res!2254594) b!5314502))

(assert (= (and b!5314500 (not res!2254597)) b!5314501))

(assert (= (and b!5314501 res!2254596) b!5314499))

(assert (= (or b!5314502 b!5314499) bm!379010))

(assert (= (or b!5314506 b!5314501) bm!379009))

(assert (= (or b!5314507 bm!379009) bm!379011))

(declare-fun m!6351184 () Bool)

(assert (=> bm!379010 m!6351184))

(declare-fun m!6351186 () Bool)

(assert (=> bm!379011 m!6351186))

(declare-fun m!6351188 () Bool)

(assert (=> b!5314504 m!6351188))

(assert (=> bm!378894 d!1707394))

(declare-fun d!1707396 () Bool)

(assert (=> d!1707396 (= (head!11393 (exprs!4852 (h!67529 zl!343))) (h!67528 (exprs!4852 (h!67529 zl!343))))))

(assert (=> b!5313671 d!1707396))

(declare-fun b!5314509 () Bool)

(declare-fun res!2254602 () Bool)

(declare-fun e!3302216 () Bool)

(assert (=> b!5314509 (=> res!2254602 e!3302216)))

(assert (=> b!5314509 (= res!2254602 (not (is-Concat!23813 (ite c!923116 (reg!15297 r!7292) (ite c!923115 (regOne!30449 r!7292) (regOne!30448 r!7292))))))))

(declare-fun e!3302213 () Bool)

(assert (=> b!5314509 (= e!3302213 e!3302216)))

(declare-fun bm!379012 () Bool)

(declare-fun call!379018 () Bool)

(declare-fun call!379017 () Bool)

(assert (=> bm!379012 (= call!379018 call!379017)))

(declare-fun c!923341 () Bool)

(declare-fun call!379019 () Bool)

(declare-fun bm!379013 () Bool)

(assert (=> bm!379013 (= call!379019 (validRegex!6704 (ite c!923341 (regTwo!30449 (ite c!923116 (reg!15297 r!7292) (ite c!923115 (regOne!30449 r!7292) (regOne!30448 r!7292)))) (regTwo!30448 (ite c!923116 (reg!15297 r!7292) (ite c!923115 (regOne!30449 r!7292) (regOne!30448 r!7292)))))))))

(declare-fun bm!379014 () Bool)

(declare-fun c!923342 () Bool)

(assert (=> bm!379014 (= call!379017 (validRegex!6704 (ite c!923342 (reg!15297 (ite c!923116 (reg!15297 r!7292) (ite c!923115 (regOne!30449 r!7292) (regOne!30448 r!7292)))) (ite c!923341 (regOne!30449 (ite c!923116 (reg!15297 r!7292) (ite c!923115 (regOne!30449 r!7292) (regOne!30448 r!7292)))) (regOne!30448 (ite c!923116 (reg!15297 r!7292) (ite c!923115 (regOne!30449 r!7292) (regOne!30448 r!7292))))))))))

(declare-fun b!5314510 () Bool)

(declare-fun e!3302215 () Bool)

(assert (=> b!5314510 (= e!3302216 e!3302215)))

(declare-fun res!2254601 () Bool)

(assert (=> b!5314510 (=> (not res!2254601) (not e!3302215))))

(assert (=> b!5314510 (= res!2254601 call!379018)))

(declare-fun b!5314511 () Bool)

(declare-fun e!3302214 () Bool)

(assert (=> b!5314511 (= e!3302214 call!379019)))

(declare-fun b!5314512 () Bool)

(declare-fun e!3302212 () Bool)

(assert (=> b!5314512 (= e!3302212 e!3302213)))

(assert (=> b!5314512 (= c!923341 (is-Union!14968 (ite c!923116 (reg!15297 r!7292) (ite c!923115 (regOne!30449 r!7292) (regOne!30448 r!7292)))))))

(declare-fun b!5314513 () Bool)

(declare-fun e!3302210 () Bool)

(assert (=> b!5314513 (= e!3302212 e!3302210)))

(declare-fun res!2254600 () Bool)

(assert (=> b!5314513 (= res!2254600 (not (nullable!5137 (reg!15297 (ite c!923116 (reg!15297 r!7292) (ite c!923115 (regOne!30449 r!7292) (regOne!30448 r!7292)))))))))

(assert (=> b!5314513 (=> (not res!2254600) (not e!3302210))))

(declare-fun b!5314514 () Bool)

(declare-fun e!3302211 () Bool)

(assert (=> b!5314514 (= e!3302211 e!3302212)))

(assert (=> b!5314514 (= c!923342 (is-Star!14968 (ite c!923116 (reg!15297 r!7292) (ite c!923115 (regOne!30449 r!7292) (regOne!30448 r!7292)))))))

(declare-fun b!5314515 () Bool)

(declare-fun res!2254599 () Bool)

(assert (=> b!5314515 (=> (not res!2254599) (not e!3302214))))

(assert (=> b!5314515 (= res!2254599 call!379018)))

(assert (=> b!5314515 (= e!3302213 e!3302214)))

(declare-fun b!5314516 () Bool)

(assert (=> b!5314516 (= e!3302210 call!379017)))

(declare-fun d!1707398 () Bool)

(declare-fun res!2254603 () Bool)

(assert (=> d!1707398 (=> res!2254603 e!3302211)))

(assert (=> d!1707398 (= res!2254603 (is-ElementMatch!14968 (ite c!923116 (reg!15297 r!7292) (ite c!923115 (regOne!30449 r!7292) (regOne!30448 r!7292)))))))

(assert (=> d!1707398 (= (validRegex!6704 (ite c!923116 (reg!15297 r!7292) (ite c!923115 (regOne!30449 r!7292) (regOne!30448 r!7292)))) e!3302211)))

(declare-fun b!5314508 () Bool)

(assert (=> b!5314508 (= e!3302215 call!379019)))

(assert (= (and d!1707398 (not res!2254603)) b!5314514))

(assert (= (and b!5314514 c!923342) b!5314513))

(assert (= (and b!5314514 (not c!923342)) b!5314512))

(assert (= (and b!5314513 res!2254600) b!5314516))

(assert (= (and b!5314512 c!923341) b!5314515))

(assert (= (and b!5314512 (not c!923341)) b!5314509))

(assert (= (and b!5314515 res!2254599) b!5314511))

(assert (= (and b!5314509 (not res!2254602)) b!5314510))

(assert (= (and b!5314510 res!2254601) b!5314508))

(assert (= (or b!5314511 b!5314508) bm!379013))

(assert (= (or b!5314515 b!5314510) bm!379012))

(assert (= (or b!5314516 bm!379012) bm!379014))

(declare-fun m!6351190 () Bool)

(assert (=> bm!379013 m!6351190))

(declare-fun m!6351192 () Bool)

(assert (=> bm!379014 m!6351192))

(declare-fun m!6351194 () Bool)

(assert (=> b!5314513 m!6351194))

(assert (=> bm!378898 d!1707398))

(assert (=> d!1707140 d!1707150))

(declare-fun d!1707400 () Bool)

(assert (=> d!1707400 (= (flatMap!695 z!1189 lambda!270834) (dynLambda!24140 lambda!270834 (h!67529 zl!343)))))

(assert (=> d!1707400 true))

(declare-fun _$13!1873 () Unit!153390)

(assert (=> d!1707400 (= (choose!39758 z!1189 (h!67529 zl!343) lambda!270834) _$13!1873)))

(declare-fun b_lambda!204467 () Bool)

(assert (=> (not b_lambda!204467) (not d!1707400)))

(declare-fun bs!1232035 () Bool)

(assert (= bs!1232035 d!1707400))

(assert (=> bs!1232035 m!6350426))

(assert (=> bs!1232035 m!6350520))

(assert (=> d!1707140 d!1707400))

(assert (=> b!5313751 d!1707272))

(assert (=> b!5313751 d!1707274))

(declare-fun b!5314518 () Bool)

(declare-fun res!2254607 () Bool)

(declare-fun e!3302223 () Bool)

(assert (=> b!5314518 (=> res!2254607 e!3302223)))

(assert (=> b!5314518 (= res!2254607 (not (is-Concat!23813 lt!2170966)))))

(declare-fun e!3302220 () Bool)

(assert (=> b!5314518 (= e!3302220 e!3302223)))

(declare-fun bm!379015 () Bool)

(declare-fun call!379021 () Bool)

(declare-fun call!379020 () Bool)

(assert (=> bm!379015 (= call!379021 call!379020)))

(declare-fun bm!379016 () Bool)

(declare-fun call!379022 () Bool)

(declare-fun c!923343 () Bool)

(assert (=> bm!379016 (= call!379022 (validRegex!6704 (ite c!923343 (regTwo!30449 lt!2170966) (regTwo!30448 lt!2170966))))))

(declare-fun c!923344 () Bool)

(declare-fun bm!379017 () Bool)

(assert (=> bm!379017 (= call!379020 (validRegex!6704 (ite c!923344 (reg!15297 lt!2170966) (ite c!923343 (regOne!30449 lt!2170966) (regOne!30448 lt!2170966)))))))

(declare-fun b!5314519 () Bool)

(declare-fun e!3302222 () Bool)

(assert (=> b!5314519 (= e!3302223 e!3302222)))

(declare-fun res!2254606 () Bool)

(assert (=> b!5314519 (=> (not res!2254606) (not e!3302222))))

(assert (=> b!5314519 (= res!2254606 call!379021)))

(declare-fun b!5314520 () Bool)

(declare-fun e!3302221 () Bool)

(assert (=> b!5314520 (= e!3302221 call!379022)))

(declare-fun b!5314521 () Bool)

(declare-fun e!3302219 () Bool)

(assert (=> b!5314521 (= e!3302219 e!3302220)))

(assert (=> b!5314521 (= c!923343 (is-Union!14968 lt!2170966))))

(declare-fun b!5314522 () Bool)

(declare-fun e!3302217 () Bool)

(assert (=> b!5314522 (= e!3302219 e!3302217)))

(declare-fun res!2254605 () Bool)

(assert (=> b!5314522 (= res!2254605 (not (nullable!5137 (reg!15297 lt!2170966))))))

(assert (=> b!5314522 (=> (not res!2254605) (not e!3302217))))

(declare-fun b!5314523 () Bool)

(declare-fun e!3302218 () Bool)

(assert (=> b!5314523 (= e!3302218 e!3302219)))

(assert (=> b!5314523 (= c!923344 (is-Star!14968 lt!2170966))))

(declare-fun b!5314524 () Bool)

(declare-fun res!2254604 () Bool)

(assert (=> b!5314524 (=> (not res!2254604) (not e!3302221))))

(assert (=> b!5314524 (= res!2254604 call!379021)))

(assert (=> b!5314524 (= e!3302220 e!3302221)))

(declare-fun b!5314525 () Bool)

(assert (=> b!5314525 (= e!3302217 call!379020)))

(declare-fun d!1707402 () Bool)

(declare-fun res!2254608 () Bool)

(assert (=> d!1707402 (=> res!2254608 e!3302218)))

(assert (=> d!1707402 (= res!2254608 (is-ElementMatch!14968 lt!2170966))))

(assert (=> d!1707402 (= (validRegex!6704 lt!2170966) e!3302218)))

(declare-fun b!5314517 () Bool)

(assert (=> b!5314517 (= e!3302222 call!379022)))

(assert (= (and d!1707402 (not res!2254608)) b!5314523))

(assert (= (and b!5314523 c!923344) b!5314522))

(assert (= (and b!5314523 (not c!923344)) b!5314521))

(assert (= (and b!5314522 res!2254605) b!5314525))

(assert (= (and b!5314521 c!923343) b!5314524))

(assert (= (and b!5314521 (not c!923343)) b!5314518))

(assert (= (and b!5314524 res!2254604) b!5314520))

(assert (= (and b!5314518 (not res!2254607)) b!5314519))

(assert (= (and b!5314519 res!2254606) b!5314517))

(assert (= (or b!5314520 b!5314517) bm!379016))

(assert (= (or b!5314524 b!5314519) bm!379015))

(assert (= (or b!5314525 bm!379015) bm!379017))

(declare-fun m!6351196 () Bool)

(assert (=> bm!379016 m!6351196))

(declare-fun m!6351198 () Bool)

(assert (=> bm!379017 m!6351198))

(declare-fun m!6351200 () Bool)

(assert (=> b!5314522 m!6351200))

(assert (=> d!1707168 d!1707402))

(declare-fun d!1707404 () Bool)

(declare-fun res!2254609 () Bool)

(declare-fun e!3302224 () Bool)

(assert (=> d!1707404 (=> res!2254609 e!3302224)))

(assert (=> d!1707404 (= res!2254609 (is-Nil!61080 (exprs!4852 (h!67529 zl!343))))))

(assert (=> d!1707404 (= (forall!14388 (exprs!4852 (h!67529 zl!343)) lambda!270848) e!3302224)))

(declare-fun b!5314526 () Bool)

(declare-fun e!3302225 () Bool)

(assert (=> b!5314526 (= e!3302224 e!3302225)))

(declare-fun res!2254610 () Bool)

(assert (=> b!5314526 (=> (not res!2254610) (not e!3302225))))

(assert (=> b!5314526 (= res!2254610 (dynLambda!24142 lambda!270848 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun b!5314527 () Bool)

(assert (=> b!5314527 (= e!3302225 (forall!14388 (t!374409 (exprs!4852 (h!67529 zl!343))) lambda!270848))))

(assert (= (and d!1707404 (not res!2254609)) b!5314526))

(assert (= (and b!5314526 res!2254610) b!5314527))

(declare-fun b_lambda!204469 () Bool)

(assert (=> (not b_lambda!204469) (not b!5314526)))

(declare-fun m!6351202 () Bool)

(assert (=> b!5314526 m!6351202))

(declare-fun m!6351204 () Bool)

(assert (=> b!5314527 m!6351204))

(assert (=> d!1707168 d!1707404))

(declare-fun bs!1232036 () Bool)

(declare-fun b!5314530 () Bool)

(assert (= bs!1232036 (and b!5314530 b!5313706)))

(declare-fun lambda!270921 () Int)

(assert (=> bs!1232036 (= (and (= (reg!15297 (regTwo!30449 r!7292)) (reg!15297 r!7292)) (= (regTwo!30449 r!7292) r!7292)) (= lambda!270921 lambda!270853))))

(declare-fun bs!1232037 () Bool)

(assert (= bs!1232037 (and b!5314530 d!1707336)))

(assert (=> bs!1232037 (not (= lambda!270921 lambda!270909))))

(declare-fun bs!1232038 () Bool)

(assert (= bs!1232038 (and b!5314530 d!1707380)))

(assert (=> bs!1232038 (not (= lambda!270921 lambda!270920))))

(declare-fun bs!1232039 () Bool)

(assert (= bs!1232039 (and b!5314530 d!1707200)))

(assert (=> bs!1232039 (not (= lambda!270921 lambda!270869))))

(declare-fun bs!1232040 () Bool)

(assert (= bs!1232040 (and b!5314530 b!5313420)))

(assert (=> bs!1232040 (not (= lambda!270921 lambda!270833))))

(declare-fun bs!1232041 () Bool)

(assert (= bs!1232041 (and b!5314530 d!1707202)))

(assert (=> bs!1232041 (not (= lambda!270921 lambda!270874))))

(assert (=> bs!1232041 (not (= lambda!270921 lambda!270875))))

(declare-fun bs!1232042 () Bool)

(assert (= bs!1232042 (and b!5314530 b!5313709)))

(assert (=> bs!1232042 (not (= lambda!270921 lambda!270854))))

(assert (=> bs!1232040 (not (= lambda!270921 lambda!270832))))

(assert (=> bs!1232038 (not (= lambda!270921 lambda!270919))))

(assert (=> b!5314530 true))

(assert (=> b!5314530 true))

(declare-fun bs!1232043 () Bool)

(declare-fun b!5314533 () Bool)

(assert (= bs!1232043 (and b!5314533 b!5313706)))

(declare-fun lambda!270922 () Int)

(assert (=> bs!1232043 (not (= lambda!270922 lambda!270853))))

(declare-fun bs!1232044 () Bool)

(assert (= bs!1232044 (and b!5314533 d!1707380)))

(assert (=> bs!1232044 (= (and (= (regOne!30448 (regTwo!30449 r!7292)) (regOne!30448 r!7292)) (= (regTwo!30448 (regTwo!30449 r!7292)) (regTwo!30448 r!7292))) (= lambda!270922 lambda!270920))))

(declare-fun bs!1232045 () Bool)

(assert (= bs!1232045 (and b!5314533 d!1707200)))

(assert (=> bs!1232045 (not (= lambda!270922 lambda!270869))))

(declare-fun bs!1232046 () Bool)

(assert (= bs!1232046 (and b!5314533 b!5313420)))

(assert (=> bs!1232046 (= (and (= (regOne!30448 (regTwo!30449 r!7292)) (regOne!30448 r!7292)) (= (regTwo!30448 (regTwo!30449 r!7292)) (regTwo!30448 r!7292))) (= lambda!270922 lambda!270833))))

(declare-fun bs!1232047 () Bool)

(assert (= bs!1232047 (and b!5314533 d!1707202)))

(assert (=> bs!1232047 (not (= lambda!270922 lambda!270874))))

(declare-fun bs!1232048 () Bool)

(assert (= bs!1232048 (and b!5314533 d!1707336)))

(assert (=> bs!1232048 (not (= lambda!270922 lambda!270909))))

(declare-fun bs!1232049 () Bool)

(assert (= bs!1232049 (and b!5314533 b!5314530)))

(assert (=> bs!1232049 (not (= lambda!270922 lambda!270921))))

(assert (=> bs!1232047 (= (and (= (regOne!30448 (regTwo!30449 r!7292)) (regOne!30448 r!7292)) (= (regTwo!30448 (regTwo!30449 r!7292)) (regTwo!30448 r!7292))) (= lambda!270922 lambda!270875))))

(declare-fun bs!1232050 () Bool)

(assert (= bs!1232050 (and b!5314533 b!5313709)))

(assert (=> bs!1232050 (= (and (= (regOne!30448 (regTwo!30449 r!7292)) (regOne!30448 r!7292)) (= (regTwo!30448 (regTwo!30449 r!7292)) (regTwo!30448 r!7292))) (= lambda!270922 lambda!270854))))

(assert (=> bs!1232046 (not (= lambda!270922 lambda!270832))))

(assert (=> bs!1232044 (not (= lambda!270922 lambda!270919))))

(assert (=> b!5314533 true))

(assert (=> b!5314533 true))

(declare-fun b!5314528 () Bool)

(declare-fun c!923348 () Bool)

(assert (=> b!5314528 (= c!923348 (is-ElementMatch!14968 (regTwo!30449 r!7292)))))

(declare-fun e!3302232 () Bool)

(declare-fun e!3302229 () Bool)

(assert (=> b!5314528 (= e!3302232 e!3302229)))

(declare-fun b!5314529 () Bool)

(declare-fun e!3302226 () Bool)

(declare-fun e!3302231 () Bool)

(assert (=> b!5314529 (= e!3302226 e!3302231)))

(declare-fun res!2254611 () Bool)

(assert (=> b!5314529 (= res!2254611 (matchRSpec!2071 (regOne!30449 (regTwo!30449 r!7292)) s!2326))))

(assert (=> b!5314529 (=> res!2254611 e!3302231)))

(declare-fun e!3302227 () Bool)

(declare-fun call!379024 () Bool)

(assert (=> b!5314530 (= e!3302227 call!379024)))

(declare-fun b!5314531 () Bool)

(assert (=> b!5314531 (= e!3302229 (= s!2326 (Cons!61079 (c!923072 (regTwo!30449 r!7292)) Nil!61079)))))

(declare-fun b!5314532 () Bool)

(declare-fun res!2254612 () Bool)

(assert (=> b!5314532 (=> res!2254612 e!3302227)))

(declare-fun call!379023 () Bool)

(assert (=> b!5314532 (= res!2254612 call!379023)))

(declare-fun e!3302230 () Bool)

(assert (=> b!5314532 (= e!3302230 e!3302227)))

(assert (=> b!5314533 (= e!3302230 call!379024)))

(declare-fun d!1707406 () Bool)

(declare-fun c!923346 () Bool)

(assert (=> d!1707406 (= c!923346 (is-EmptyExpr!14968 (regTwo!30449 r!7292)))))

(declare-fun e!3302228 () Bool)

(assert (=> d!1707406 (= (matchRSpec!2071 (regTwo!30449 r!7292) s!2326) e!3302228)))

(declare-fun b!5314534 () Bool)

(declare-fun c!923347 () Bool)

(assert (=> b!5314534 (= c!923347 (is-Union!14968 (regTwo!30449 r!7292)))))

(assert (=> b!5314534 (= e!3302229 e!3302226)))

(declare-fun b!5314535 () Bool)

(assert (=> b!5314535 (= e!3302231 (matchRSpec!2071 (regTwo!30449 (regTwo!30449 r!7292)) s!2326))))

(declare-fun bm!379018 () Bool)

(assert (=> bm!379018 (= call!379023 (isEmpty!33049 s!2326))))

(declare-fun b!5314536 () Bool)

(assert (=> b!5314536 (= e!3302228 call!379023)))

(declare-fun b!5314537 () Bool)

(assert (=> b!5314537 (= e!3302226 e!3302230)))

(declare-fun c!923345 () Bool)

(assert (=> b!5314537 (= c!923345 (is-Star!14968 (regTwo!30449 r!7292)))))

(declare-fun bm!379019 () Bool)

(assert (=> bm!379019 (= call!379024 (Exists!2149 (ite c!923345 lambda!270921 lambda!270922)))))

(declare-fun b!5314538 () Bool)

(assert (=> b!5314538 (= e!3302228 e!3302232)))

(declare-fun res!2254613 () Bool)

(assert (=> b!5314538 (= res!2254613 (not (is-EmptyLang!14968 (regTwo!30449 r!7292))))))

(assert (=> b!5314538 (=> (not res!2254613) (not e!3302232))))

(assert (= (and d!1707406 c!923346) b!5314536))

(assert (= (and d!1707406 (not c!923346)) b!5314538))

(assert (= (and b!5314538 res!2254613) b!5314528))

(assert (= (and b!5314528 c!923348) b!5314531))

(assert (= (and b!5314528 (not c!923348)) b!5314534))

(assert (= (and b!5314534 c!923347) b!5314529))

(assert (= (and b!5314534 (not c!923347)) b!5314537))

(assert (= (and b!5314529 (not res!2254611)) b!5314535))

(assert (= (and b!5314537 c!923345) b!5314532))

(assert (= (and b!5314537 (not c!923345)) b!5314533))

(assert (= (and b!5314532 (not res!2254612)) b!5314530))

(assert (= (or b!5314530 b!5314533) bm!379019))

(assert (= (or b!5314536 b!5314532) bm!379018))

(declare-fun m!6351206 () Bool)

(assert (=> b!5314529 m!6351206))

(declare-fun m!6351208 () Bool)

(assert (=> b!5314535 m!6351208))

(assert (=> bm!379018 m!6350618))

(declare-fun m!6351210 () Bool)

(assert (=> bm!379019 m!6351210))

(assert (=> b!5313711 d!1707406))

(declare-fun d!1707408 () Bool)

(assert (=> d!1707408 (= (isEmpty!33046 (tail!10490 (exprs!4852 (h!67529 zl!343)))) (is-Nil!61080 (tail!10490 (exprs!4852 (h!67529 zl!343)))))))

(assert (=> b!5313669 d!1707408))

(declare-fun d!1707410 () Bool)

(assert (=> d!1707410 (= (tail!10490 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343))))))

(assert (=> b!5313669 d!1707410))

(declare-fun d!1707412 () Bool)

(assert (=> d!1707412 (= (nullable!5137 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))) (nullableFct!1489 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))))))

(declare-fun bs!1232051 () Bool)

(assert (= bs!1232051 d!1707412))

(declare-fun m!6351212 () Bool)

(assert (=> bs!1232051 m!6351212))

(assert (=> b!5313578 d!1707412))

(declare-fun d!1707414 () Bool)

(declare-fun c!923349 () Bool)

(assert (=> d!1707414 (= c!923349 (isEmpty!33049 (tail!10489 (t!374408 s!2326))))))

(declare-fun e!3302233 () Bool)

(assert (=> d!1707414 (= (matchZipper!1212 (derivationStepZipper!1211 lt!2170908 (head!11392 (t!374408 s!2326))) (tail!10489 (t!374408 s!2326))) e!3302233)))

(declare-fun b!5314539 () Bool)

(assert (=> b!5314539 (= e!3302233 (nullableZipper!1337 (derivationStepZipper!1211 lt!2170908 (head!11392 (t!374408 s!2326)))))))

(declare-fun b!5314540 () Bool)

(assert (=> b!5314540 (= e!3302233 (matchZipper!1212 (derivationStepZipper!1211 (derivationStepZipper!1211 lt!2170908 (head!11392 (t!374408 s!2326))) (head!11392 (tail!10489 (t!374408 s!2326)))) (tail!10489 (tail!10489 (t!374408 s!2326)))))))

(assert (= (and d!1707414 c!923349) b!5314539))

(assert (= (and d!1707414 (not c!923349)) b!5314540))

(assert (=> d!1707414 m!6350574))

(assert (=> d!1707414 m!6351016))

(assert (=> b!5314539 m!6350572))

(declare-fun m!6351214 () Bool)

(assert (=> b!5314539 m!6351214))

(assert (=> b!5314540 m!6350574))

(assert (=> b!5314540 m!6351020))

(assert (=> b!5314540 m!6350572))

(assert (=> b!5314540 m!6351020))

(declare-fun m!6351216 () Bool)

(assert (=> b!5314540 m!6351216))

(assert (=> b!5314540 m!6350574))

(assert (=> b!5314540 m!6351024))

(assert (=> b!5314540 m!6351216))

(assert (=> b!5314540 m!6351024))

(declare-fun m!6351218 () Bool)

(assert (=> b!5314540 m!6351218))

(assert (=> b!5313627 d!1707414))

(declare-fun bs!1232052 () Bool)

(declare-fun d!1707416 () Bool)

(assert (= bs!1232052 (and d!1707416 b!5313407)))

(declare-fun lambda!270923 () Int)

(assert (=> bs!1232052 (= (= (head!11392 (t!374408 s!2326)) (h!67527 s!2326)) (= lambda!270923 lambda!270834))))

(declare-fun bs!1232053 () Bool)

(assert (= bs!1232053 (and d!1707416 d!1707340)))

(assert (=> bs!1232053 (= lambda!270923 lambda!270912)))

(declare-fun bs!1232054 () Bool)

(assert (= bs!1232054 (and d!1707416 d!1707364)))

(assert (=> bs!1232054 (= lambda!270923 lambda!270914)))

(assert (=> d!1707416 true))

(assert (=> d!1707416 (= (derivationStepZipper!1211 lt!2170908 (head!11392 (t!374408 s!2326))) (flatMap!695 lt!2170908 lambda!270923))))

(declare-fun bs!1232055 () Bool)

(assert (= bs!1232055 d!1707416))

(declare-fun m!6351220 () Bool)

(assert (=> bs!1232055 m!6351220))

(assert (=> b!5313627 d!1707416))

(assert (=> b!5313627 d!1707342))

(assert (=> b!5313627 d!1707344))

(declare-fun d!1707418 () Bool)

(assert (=> d!1707418 (= (isDefined!11782 lt!2170991) (not (isEmpty!33050 lt!2170991)))))

(declare-fun bs!1232056 () Bool)

(assert (= bs!1232056 d!1707418))

(declare-fun m!6351222 () Bool)

(assert (=> bs!1232056 m!6351222))

(assert (=> d!1707190 d!1707418))

(declare-fun b!5314541 () Bool)

(declare-fun res!2254619 () Bool)

(declare-fun e!3302235 () Bool)

(assert (=> b!5314541 (=> (not res!2254619) (not e!3302235))))

(declare-fun call!379025 () Bool)

(assert (=> b!5314541 (= res!2254619 (not call!379025))))

(declare-fun b!5314542 () Bool)

(declare-fun res!2254617 () Bool)

(declare-fun e!3302239 () Bool)

(assert (=> b!5314542 (=> res!2254617 e!3302239)))

(assert (=> b!5314542 (= res!2254617 (not (isEmpty!33049 (tail!10489 Nil!61079))))))

(declare-fun d!1707420 () Bool)

(declare-fun e!3302237 () Bool)

(assert (=> d!1707420 e!3302237))

(declare-fun c!923351 () Bool)

(assert (=> d!1707420 (= c!923351 (is-EmptyExpr!14968 (regOne!30448 r!7292)))))

(declare-fun lt!2171057 () Bool)

(declare-fun e!3302234 () Bool)

(assert (=> d!1707420 (= lt!2171057 e!3302234)))

(declare-fun c!923352 () Bool)

(assert (=> d!1707420 (= c!923352 (isEmpty!33049 Nil!61079))))

(assert (=> d!1707420 (validRegex!6704 (regOne!30448 r!7292))))

(assert (=> d!1707420 (= (matchR!7153 (regOne!30448 r!7292) Nil!61079) lt!2171057)))

(declare-fun b!5314543 () Bool)

(assert (=> b!5314543 (= e!3302235 (= (head!11392 Nil!61079) (c!923072 (regOne!30448 r!7292))))))

(declare-fun b!5314544 () Bool)

(declare-fun res!2254618 () Bool)

(declare-fun e!3302236 () Bool)

(assert (=> b!5314544 (=> res!2254618 e!3302236)))

(assert (=> b!5314544 (= res!2254618 (not (is-ElementMatch!14968 (regOne!30448 r!7292))))))

(declare-fun e!3302238 () Bool)

(assert (=> b!5314544 (= e!3302238 e!3302236)))

(declare-fun bm!379020 () Bool)

(assert (=> bm!379020 (= call!379025 (isEmpty!33049 Nil!61079))))

(declare-fun b!5314545 () Bool)

(assert (=> b!5314545 (= e!3302237 e!3302238)))

(declare-fun c!923350 () Bool)

(assert (=> b!5314545 (= c!923350 (is-EmptyLang!14968 (regOne!30448 r!7292)))))

(declare-fun b!5314546 () Bool)

(declare-fun res!2254616 () Bool)

(assert (=> b!5314546 (=> (not res!2254616) (not e!3302235))))

(assert (=> b!5314546 (= res!2254616 (isEmpty!33049 (tail!10489 Nil!61079)))))

(declare-fun b!5314547 () Bool)

(assert (=> b!5314547 (= e!3302238 (not lt!2171057))))

(declare-fun b!5314548 () Bool)

(declare-fun res!2254621 () Bool)

(assert (=> b!5314548 (=> res!2254621 e!3302236)))

(assert (=> b!5314548 (= res!2254621 e!3302235)))

(declare-fun res!2254614 () Bool)

(assert (=> b!5314548 (=> (not res!2254614) (not e!3302235))))

(assert (=> b!5314548 (= res!2254614 lt!2171057)))

(declare-fun b!5314549 () Bool)

(assert (=> b!5314549 (= e!3302234 (matchR!7153 (derivativeStep!4158 (regOne!30448 r!7292) (head!11392 Nil!61079)) (tail!10489 Nil!61079)))))

(declare-fun b!5314550 () Bool)

(declare-fun e!3302240 () Bool)

(assert (=> b!5314550 (= e!3302240 e!3302239)))

(declare-fun res!2254620 () Bool)

(assert (=> b!5314550 (=> res!2254620 e!3302239)))

(assert (=> b!5314550 (= res!2254620 call!379025)))

(declare-fun b!5314551 () Bool)

(assert (=> b!5314551 (= e!3302239 (not (= (head!11392 Nil!61079) (c!923072 (regOne!30448 r!7292)))))))

(declare-fun b!5314552 () Bool)

(assert (=> b!5314552 (= e!3302237 (= lt!2171057 call!379025))))

(declare-fun b!5314553 () Bool)

(assert (=> b!5314553 (= e!3302234 (nullable!5137 (regOne!30448 r!7292)))))

(declare-fun b!5314554 () Bool)

(assert (=> b!5314554 (= e!3302236 e!3302240)))

(declare-fun res!2254615 () Bool)

(assert (=> b!5314554 (=> (not res!2254615) (not e!3302240))))

(assert (=> b!5314554 (= res!2254615 (not lt!2171057))))

(assert (= (and d!1707420 c!923352) b!5314553))

(assert (= (and d!1707420 (not c!923352)) b!5314549))

(assert (= (and d!1707420 c!923351) b!5314552))

(assert (= (and d!1707420 (not c!923351)) b!5314545))

(assert (= (and b!5314545 c!923350) b!5314547))

(assert (= (and b!5314545 (not c!923350)) b!5314544))

(assert (= (and b!5314544 (not res!2254618)) b!5314548))

(assert (= (and b!5314548 res!2254614) b!5314541))

(assert (= (and b!5314541 res!2254619) b!5314546))

(assert (= (and b!5314546 res!2254616) b!5314543))

(assert (= (and b!5314548 (not res!2254621)) b!5314554))

(assert (= (and b!5314554 res!2254615) b!5314550))

(assert (= (and b!5314550 (not res!2254620)) b!5314542))

(assert (= (and b!5314542 (not res!2254617)) b!5314551))

(assert (= (or b!5314552 b!5314541 b!5314550) bm!379020))

(declare-fun m!6351224 () Bool)

(assert (=> b!5314542 m!6351224))

(assert (=> b!5314542 m!6351224))

(declare-fun m!6351226 () Bool)

(assert (=> b!5314542 m!6351226))

(declare-fun m!6351228 () Bool)

(assert (=> b!5314543 m!6351228))

(assert (=> b!5314549 m!6351228))

(assert (=> b!5314549 m!6351228))

(declare-fun m!6351230 () Bool)

(assert (=> b!5314549 m!6351230))

(assert (=> b!5314549 m!6351224))

(assert (=> b!5314549 m!6351230))

(assert (=> b!5314549 m!6351224))

(declare-fun m!6351232 () Bool)

(assert (=> b!5314549 m!6351232))

(assert (=> b!5314546 m!6351224))

(assert (=> b!5314546 m!6351224))

(assert (=> b!5314546 m!6351226))

(assert (=> b!5314551 m!6351228))

(declare-fun m!6351234 () Bool)

(assert (=> d!1707420 m!6351234))

(assert (=> d!1707420 m!6350708))

(assert (=> b!5314553 m!6350982))

(assert (=> bm!379020 m!6351234))

(assert (=> d!1707190 d!1707420))

(assert (=> d!1707190 d!1707332))

(declare-fun d!1707422 () Bool)

(assert (=> d!1707422 (= (isUnion!312 lt!2170978) (is-Union!14968 lt!2170978))))

(assert (=> b!5313797 d!1707422))

(declare-fun b!5314558 () Bool)

(declare-fun e!3302242 () Bool)

(declare-fun lt!2171058 () List!61203)

(assert (=> b!5314558 (= e!3302242 (or (not (= (_2!35470 (get!21007 lt!2170991)) Nil!61079)) (= lt!2171058 (_1!35470 (get!21007 lt!2170991)))))))

(declare-fun b!5314556 () Bool)

(declare-fun e!3302241 () List!61203)

(assert (=> b!5314556 (= e!3302241 (Cons!61079 (h!67527 (_1!35470 (get!21007 lt!2170991))) (++!13317 (t!374408 (_1!35470 (get!21007 lt!2170991))) (_2!35470 (get!21007 lt!2170991)))))))

(declare-fun d!1707424 () Bool)

(assert (=> d!1707424 e!3302242))

(declare-fun res!2254622 () Bool)

(assert (=> d!1707424 (=> (not res!2254622) (not e!3302242))))

(assert (=> d!1707424 (= res!2254622 (= (content!10884 lt!2171058) (set.union (content!10884 (_1!35470 (get!21007 lt!2170991))) (content!10884 (_2!35470 (get!21007 lt!2170991))))))))

(assert (=> d!1707424 (= lt!2171058 e!3302241)))

(declare-fun c!923353 () Bool)

(assert (=> d!1707424 (= c!923353 (is-Nil!61079 (_1!35470 (get!21007 lt!2170991))))))

(assert (=> d!1707424 (= (++!13317 (_1!35470 (get!21007 lt!2170991)) (_2!35470 (get!21007 lt!2170991))) lt!2171058)))

(declare-fun b!5314557 () Bool)

(declare-fun res!2254623 () Bool)

(assert (=> b!5314557 (=> (not res!2254623) (not e!3302242))))

(assert (=> b!5314557 (= res!2254623 (= (size!39760 lt!2171058) (+ (size!39760 (_1!35470 (get!21007 lt!2170991))) (size!39760 (_2!35470 (get!21007 lt!2170991))))))))

(declare-fun b!5314555 () Bool)

(assert (=> b!5314555 (= e!3302241 (_2!35470 (get!21007 lt!2170991)))))

(assert (= (and d!1707424 c!923353) b!5314555))

(assert (= (and d!1707424 (not c!923353)) b!5314556))

(assert (= (and d!1707424 res!2254622) b!5314557))

(assert (= (and b!5314557 res!2254623) b!5314558))

(declare-fun m!6351236 () Bool)

(assert (=> b!5314556 m!6351236))

(declare-fun m!6351238 () Bool)

(assert (=> d!1707424 m!6351238))

(declare-fun m!6351240 () Bool)

(assert (=> d!1707424 m!6351240))

(declare-fun m!6351242 () Bool)

(assert (=> d!1707424 m!6351242))

(declare-fun m!6351244 () Bool)

(assert (=> b!5314557 m!6351244))

(declare-fun m!6351246 () Bool)

(assert (=> b!5314557 m!6351246))

(declare-fun m!6351248 () Bool)

(assert (=> b!5314557 m!6351248))

(assert (=> b!5313860 d!1707424))

(assert (=> b!5313860 d!1707324))

(assert (=> b!5313583 d!1707144))

(declare-fun d!1707426 () Bool)

(declare-fun res!2254624 () Bool)

(declare-fun e!3302243 () Bool)

(assert (=> d!1707426 (=> res!2254624 e!3302243)))

(assert (=> d!1707426 (= res!2254624 (is-Nil!61080 (exprs!4852 (h!67529 zl!343))))))

(assert (=> d!1707426 (= (forall!14388 (exprs!4852 (h!67529 zl!343)) lambda!270876) e!3302243)))

(declare-fun b!5314559 () Bool)

(declare-fun e!3302244 () Bool)

(assert (=> b!5314559 (= e!3302243 e!3302244)))

(declare-fun res!2254625 () Bool)

(assert (=> b!5314559 (=> (not res!2254625) (not e!3302244))))

(assert (=> b!5314559 (= res!2254625 (dynLambda!24142 lambda!270876 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun b!5314560 () Bool)

(assert (=> b!5314560 (= e!3302244 (forall!14388 (t!374409 (exprs!4852 (h!67529 zl!343))) lambda!270876))))

(assert (= (and d!1707426 (not res!2254624)) b!5314559))

(assert (= (and b!5314559 res!2254625) b!5314560))

(declare-fun b_lambda!204471 () Bool)

(assert (=> (not b_lambda!204471) (not b!5314559)))

(declare-fun m!6351250 () Bool)

(assert (=> b!5314559 m!6351250))

(declare-fun m!6351252 () Bool)

(assert (=> b!5314560 m!6351252))

(assert (=> d!1707210 d!1707426))

(declare-fun d!1707428 () Bool)

(declare-fun res!2254630 () Bool)

(declare-fun e!3302249 () Bool)

(assert (=> d!1707428 (=> res!2254630 e!3302249)))

(assert (=> d!1707428 (= res!2254630 (is-Nil!61081 lt!2170963))))

(assert (=> d!1707428 (= (noDuplicate!1292 lt!2170963) e!3302249)))

(declare-fun b!5314565 () Bool)

(declare-fun e!3302250 () Bool)

(assert (=> b!5314565 (= e!3302249 e!3302250)))

(declare-fun res!2254631 () Bool)

(assert (=> b!5314565 (=> (not res!2254631) (not e!3302250))))

(declare-fun contains!19704 (List!61205 Context!8704) Bool)

(assert (=> b!5314565 (= res!2254631 (not (contains!19704 (t!374410 lt!2170963) (h!67529 lt!2170963))))))

(declare-fun b!5314566 () Bool)

(assert (=> b!5314566 (= e!3302250 (noDuplicate!1292 (t!374410 lt!2170963)))))

(assert (= (and d!1707428 (not res!2254630)) b!5314565))

(assert (= (and b!5314565 res!2254631) b!5314566))

(declare-fun m!6351254 () Bool)

(assert (=> b!5314565 m!6351254))

(declare-fun m!6351256 () Bool)

(assert (=> b!5314566 m!6351256))

(assert (=> d!1707166 d!1707428))

(declare-fun d!1707430 () Bool)

(declare-fun e!3302257 () Bool)

(assert (=> d!1707430 e!3302257))

(declare-fun res!2254636 () Bool)

(assert (=> d!1707430 (=> (not res!2254636) (not e!3302257))))

(declare-fun res!2254637 () List!61205)

(assert (=> d!1707430 (= res!2254636 (noDuplicate!1292 res!2254637))))

(declare-fun e!3302259 () Bool)

(assert (=> d!1707430 e!3302259))

(assert (=> d!1707430 (= (choose!39761 z!1189) res!2254637)))

(declare-fun b!5314574 () Bool)

(declare-fun e!3302258 () Bool)

(declare-fun tp!1480057 () Bool)

(assert (=> b!5314574 (= e!3302258 tp!1480057)))

(declare-fun tp!1480056 () Bool)

(declare-fun b!5314573 () Bool)

(assert (=> b!5314573 (= e!3302259 (and (inv!80668 (h!67529 res!2254637)) e!3302258 tp!1480056))))

(declare-fun b!5314575 () Bool)

(assert (=> b!5314575 (= e!3302257 (= (content!10882 res!2254637) z!1189))))

(assert (= b!5314573 b!5314574))

(assert (= (and d!1707430 (is-Cons!61081 res!2254637)) b!5314573))

(assert (= (and d!1707430 res!2254636) b!5314575))

(declare-fun m!6351258 () Bool)

(assert (=> d!1707430 m!6351258))

(declare-fun m!6351260 () Bool)

(assert (=> b!5314573 m!6351260))

(declare-fun m!6351262 () Bool)

(assert (=> b!5314575 m!6351262))

(assert (=> d!1707166 d!1707430))

(declare-fun b!5314576 () Bool)

(declare-fun e!3302262 () (Set Context!8704))

(assert (=> b!5314576 (= e!3302262 (as set.empty (Set Context!8704)))))

(declare-fun b!5314577 () Bool)

(declare-fun e!3302263 () (Set Context!8704))

(assert (=> b!5314577 (= e!3302263 (set.insert (Context!8705 (t!374409 (exprs!4852 (h!67529 zl!343)))) (as set.empty (Set Context!8704))))))

(declare-fun call!379031 () List!61204)

(declare-fun c!923354 () Bool)

(declare-fun call!379028 () (Set Context!8704))

(declare-fun bm!379021 () Bool)

(declare-fun c!923357 () Bool)

(declare-fun c!923356 () Bool)

(assert (=> bm!379021 (= call!379028 (derivationStepZipperDown!416 (ite c!923356 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923354 (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (ite c!923357 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (reg!15297 (h!67528 (exprs!4852 (h!67529 zl!343))))))) (ite (or c!923356 c!923354) (Context!8705 (t!374409 (exprs!4852 (h!67529 zl!343)))) (Context!8705 call!379031)) (h!67527 s!2326)))))

(declare-fun bm!379022 () Bool)

(declare-fun call!379029 () (Set Context!8704))

(assert (=> bm!379022 (= call!379029 call!379028)))

(declare-fun b!5314578 () Bool)

(declare-fun call!379027 () (Set Context!8704))

(assert (=> b!5314578 (= e!3302262 call!379027)))

(declare-fun bm!379023 () Bool)

(declare-fun call!379026 () List!61204)

(assert (=> bm!379023 (= call!379031 call!379026)))

(declare-fun call!379030 () (Set Context!8704))

(declare-fun bm!379024 () Bool)

(assert (=> bm!379024 (= call!379030 (derivationStepZipperDown!416 (ite c!923356 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343))))) (ite c!923356 (Context!8705 (t!374409 (exprs!4852 (h!67529 zl!343)))) (Context!8705 call!379026)) (h!67527 s!2326)))))

(declare-fun b!5314579 () Bool)

(declare-fun e!3302260 () Bool)

(assert (=> b!5314579 (= c!923354 e!3302260)))

(declare-fun res!2254638 () Bool)

(assert (=> b!5314579 (=> (not res!2254638) (not e!3302260))))

(assert (=> b!5314579 (= res!2254638 (is-Concat!23813 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun e!3302264 () (Set Context!8704))

(declare-fun e!3302261 () (Set Context!8704))

(assert (=> b!5314579 (= e!3302264 e!3302261)))

(declare-fun b!5314580 () Bool)

(declare-fun c!923355 () Bool)

(assert (=> b!5314580 (= c!923355 (is-Star!14968 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun e!3302265 () (Set Context!8704))

(assert (=> b!5314580 (= e!3302265 e!3302262)))

(declare-fun b!5314581 () Bool)

(assert (=> b!5314581 (= e!3302264 (set.union call!379028 call!379030))))

(declare-fun b!5314582 () Bool)

(assert (=> b!5314582 (= e!3302261 e!3302265)))

(assert (=> b!5314582 (= c!923357 (is-Concat!23813 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun b!5314583 () Bool)

(assert (=> b!5314583 (= e!3302265 call!379027)))

(declare-fun b!5314584 () Bool)

(assert (=> b!5314584 (= e!3302260 (nullable!5137 (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343))))))))

(declare-fun d!1707432 () Bool)

(declare-fun c!923358 () Bool)

(assert (=> d!1707432 (= c!923358 (and (is-ElementMatch!14968 (h!67528 (exprs!4852 (h!67529 zl!343)))) (= (c!923072 (h!67528 (exprs!4852 (h!67529 zl!343)))) (h!67527 s!2326))))))

(assert (=> d!1707432 (= (derivationStepZipperDown!416 (h!67528 (exprs!4852 (h!67529 zl!343))) (Context!8705 (t!374409 (exprs!4852 (h!67529 zl!343)))) (h!67527 s!2326)) e!3302263)))

(declare-fun b!5314585 () Bool)

(assert (=> b!5314585 (= e!3302263 e!3302264)))

(assert (=> b!5314585 (= c!923356 (is-Union!14968 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun bm!379025 () Bool)

(assert (=> bm!379025 (= call!379026 ($colon$colon!1387 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 (h!67529 zl!343))))) (ite (or c!923354 c!923357) (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))) (h!67528 (exprs!4852 (h!67529 zl!343))))))))

(declare-fun b!5314586 () Bool)

(assert (=> b!5314586 (= e!3302261 (set.union call!379030 call!379029))))

(declare-fun bm!379026 () Bool)

(assert (=> bm!379026 (= call!379027 call!379029)))

(assert (= (and d!1707432 c!923358) b!5314577))

(assert (= (and d!1707432 (not c!923358)) b!5314585))

(assert (= (and b!5314585 c!923356) b!5314581))

(assert (= (and b!5314585 (not c!923356)) b!5314579))

(assert (= (and b!5314579 res!2254638) b!5314584))

(assert (= (and b!5314579 c!923354) b!5314586))

(assert (= (and b!5314579 (not c!923354)) b!5314582))

(assert (= (and b!5314582 c!923357) b!5314583))

(assert (= (and b!5314582 (not c!923357)) b!5314580))

(assert (= (and b!5314580 c!923355) b!5314578))

(assert (= (and b!5314580 (not c!923355)) b!5314576))

(assert (= (or b!5314583 b!5314578) bm!379023))

(assert (= (or b!5314583 b!5314578) bm!379026))

(assert (= (or b!5314586 bm!379023) bm!379025))

(assert (= (or b!5314586 bm!379026) bm!379022))

(assert (= (or b!5314581 b!5314586) bm!379024))

(assert (= (or b!5314581 bm!379022) bm!379021))

(declare-fun m!6351264 () Bool)

(assert (=> bm!379025 m!6351264))

(assert (=> b!5314584 m!6350528))

(declare-fun m!6351266 () Bool)

(assert (=> bm!379021 m!6351266))

(declare-fun m!6351268 () Bool)

(assert (=> b!5314577 m!6351268))

(declare-fun m!6351270 () Bool)

(assert (=> bm!379024 m!6351270))

(assert (=> bm!378885 d!1707432))

(declare-fun bs!1232057 () Bool)

(declare-fun b!5314589 () Bool)

(assert (= bs!1232057 (and b!5314589 b!5313706)))

(declare-fun lambda!270924 () Int)

(assert (=> bs!1232057 (= (and (= (reg!15297 (regOne!30449 r!7292)) (reg!15297 r!7292)) (= (regOne!30449 r!7292) r!7292)) (= lambda!270924 lambda!270853))))

(declare-fun bs!1232058 () Bool)

(assert (= bs!1232058 (and b!5314589 d!1707380)))

(assert (=> bs!1232058 (not (= lambda!270924 lambda!270920))))

(declare-fun bs!1232059 () Bool)

(assert (= bs!1232059 (and b!5314589 d!1707200)))

(assert (=> bs!1232059 (not (= lambda!270924 lambda!270869))))

(declare-fun bs!1232060 () Bool)

(assert (= bs!1232060 (and b!5314589 b!5313420)))

(assert (=> bs!1232060 (not (= lambda!270924 lambda!270833))))

(declare-fun bs!1232061 () Bool)

(assert (= bs!1232061 (and b!5314589 b!5314533)))

(assert (=> bs!1232061 (not (= lambda!270924 lambda!270922))))

(declare-fun bs!1232062 () Bool)

(assert (= bs!1232062 (and b!5314589 d!1707202)))

(assert (=> bs!1232062 (not (= lambda!270924 lambda!270874))))

(declare-fun bs!1232063 () Bool)

(assert (= bs!1232063 (and b!5314589 d!1707336)))

(assert (=> bs!1232063 (not (= lambda!270924 lambda!270909))))

(declare-fun bs!1232064 () Bool)

(assert (= bs!1232064 (and b!5314589 b!5314530)))

(assert (=> bs!1232064 (= (and (= (reg!15297 (regOne!30449 r!7292)) (reg!15297 (regTwo!30449 r!7292))) (= (regOne!30449 r!7292) (regTwo!30449 r!7292))) (= lambda!270924 lambda!270921))))

(assert (=> bs!1232062 (not (= lambda!270924 lambda!270875))))

(declare-fun bs!1232065 () Bool)

(assert (= bs!1232065 (and b!5314589 b!5313709)))

(assert (=> bs!1232065 (not (= lambda!270924 lambda!270854))))

(assert (=> bs!1232060 (not (= lambda!270924 lambda!270832))))

(assert (=> bs!1232058 (not (= lambda!270924 lambda!270919))))

(assert (=> b!5314589 true))

(assert (=> b!5314589 true))

(declare-fun bs!1232066 () Bool)

(declare-fun b!5314592 () Bool)

(assert (= bs!1232066 (and b!5314592 b!5313706)))

(declare-fun lambda!270925 () Int)

(assert (=> bs!1232066 (not (= lambda!270925 lambda!270853))))

(declare-fun bs!1232067 () Bool)

(assert (= bs!1232067 (and b!5314592 d!1707380)))

(assert (=> bs!1232067 (= (and (= (regOne!30448 (regOne!30449 r!7292)) (regOne!30448 r!7292)) (= (regTwo!30448 (regOne!30449 r!7292)) (regTwo!30448 r!7292))) (= lambda!270925 lambda!270920))))

(declare-fun bs!1232068 () Bool)

(assert (= bs!1232068 (and b!5314592 d!1707200)))

(assert (=> bs!1232068 (not (= lambda!270925 lambda!270869))))

(declare-fun bs!1232069 () Bool)

(assert (= bs!1232069 (and b!5314592 b!5314589)))

(assert (=> bs!1232069 (not (= lambda!270925 lambda!270924))))

(declare-fun bs!1232070 () Bool)

(assert (= bs!1232070 (and b!5314592 b!5313420)))

(assert (=> bs!1232070 (= (and (= (regOne!30448 (regOne!30449 r!7292)) (regOne!30448 r!7292)) (= (regTwo!30448 (regOne!30449 r!7292)) (regTwo!30448 r!7292))) (= lambda!270925 lambda!270833))))

(declare-fun bs!1232071 () Bool)

(assert (= bs!1232071 (and b!5314592 b!5314533)))

(assert (=> bs!1232071 (= (and (= (regOne!30448 (regOne!30449 r!7292)) (regOne!30448 (regTwo!30449 r!7292))) (= (regTwo!30448 (regOne!30449 r!7292)) (regTwo!30448 (regTwo!30449 r!7292)))) (= lambda!270925 lambda!270922))))

(declare-fun bs!1232072 () Bool)

(assert (= bs!1232072 (and b!5314592 d!1707202)))

(assert (=> bs!1232072 (not (= lambda!270925 lambda!270874))))

(declare-fun bs!1232073 () Bool)

(assert (= bs!1232073 (and b!5314592 d!1707336)))

(assert (=> bs!1232073 (not (= lambda!270925 lambda!270909))))

(declare-fun bs!1232074 () Bool)

(assert (= bs!1232074 (and b!5314592 b!5314530)))

(assert (=> bs!1232074 (not (= lambda!270925 lambda!270921))))

(assert (=> bs!1232072 (= (and (= (regOne!30448 (regOne!30449 r!7292)) (regOne!30448 r!7292)) (= (regTwo!30448 (regOne!30449 r!7292)) (regTwo!30448 r!7292))) (= lambda!270925 lambda!270875))))

(declare-fun bs!1232075 () Bool)

(assert (= bs!1232075 (and b!5314592 b!5313709)))

(assert (=> bs!1232075 (= (and (= (regOne!30448 (regOne!30449 r!7292)) (regOne!30448 r!7292)) (= (regTwo!30448 (regOne!30449 r!7292)) (regTwo!30448 r!7292))) (= lambda!270925 lambda!270854))))

(assert (=> bs!1232070 (not (= lambda!270925 lambda!270832))))

(assert (=> bs!1232067 (not (= lambda!270925 lambda!270919))))

(assert (=> b!5314592 true))

(assert (=> b!5314592 true))

(declare-fun b!5314587 () Bool)

(declare-fun c!923362 () Bool)

(assert (=> b!5314587 (= c!923362 (is-ElementMatch!14968 (regOne!30449 r!7292)))))

(declare-fun e!3302272 () Bool)

(declare-fun e!3302269 () Bool)

(assert (=> b!5314587 (= e!3302272 e!3302269)))

(declare-fun b!5314588 () Bool)

(declare-fun e!3302266 () Bool)

(declare-fun e!3302271 () Bool)

(assert (=> b!5314588 (= e!3302266 e!3302271)))

(declare-fun res!2254639 () Bool)

(assert (=> b!5314588 (= res!2254639 (matchRSpec!2071 (regOne!30449 (regOne!30449 r!7292)) s!2326))))

(assert (=> b!5314588 (=> res!2254639 e!3302271)))

(declare-fun e!3302267 () Bool)

(declare-fun call!379033 () Bool)

(assert (=> b!5314589 (= e!3302267 call!379033)))

(declare-fun b!5314590 () Bool)

(assert (=> b!5314590 (= e!3302269 (= s!2326 (Cons!61079 (c!923072 (regOne!30449 r!7292)) Nil!61079)))))

(declare-fun b!5314591 () Bool)

(declare-fun res!2254640 () Bool)

(assert (=> b!5314591 (=> res!2254640 e!3302267)))

(declare-fun call!379032 () Bool)

(assert (=> b!5314591 (= res!2254640 call!379032)))

(declare-fun e!3302270 () Bool)

(assert (=> b!5314591 (= e!3302270 e!3302267)))

(assert (=> b!5314592 (= e!3302270 call!379033)))

(declare-fun d!1707434 () Bool)

(declare-fun c!923360 () Bool)

(assert (=> d!1707434 (= c!923360 (is-EmptyExpr!14968 (regOne!30449 r!7292)))))

(declare-fun e!3302268 () Bool)

(assert (=> d!1707434 (= (matchRSpec!2071 (regOne!30449 r!7292) s!2326) e!3302268)))

(declare-fun b!5314593 () Bool)

(declare-fun c!923361 () Bool)

(assert (=> b!5314593 (= c!923361 (is-Union!14968 (regOne!30449 r!7292)))))

(assert (=> b!5314593 (= e!3302269 e!3302266)))

(declare-fun b!5314594 () Bool)

(assert (=> b!5314594 (= e!3302271 (matchRSpec!2071 (regTwo!30449 (regOne!30449 r!7292)) s!2326))))

(declare-fun bm!379027 () Bool)

(assert (=> bm!379027 (= call!379032 (isEmpty!33049 s!2326))))

(declare-fun b!5314595 () Bool)

(assert (=> b!5314595 (= e!3302268 call!379032)))

(declare-fun b!5314596 () Bool)

(assert (=> b!5314596 (= e!3302266 e!3302270)))

(declare-fun c!923359 () Bool)

(assert (=> b!5314596 (= c!923359 (is-Star!14968 (regOne!30449 r!7292)))))

(declare-fun bm!379028 () Bool)

(assert (=> bm!379028 (= call!379033 (Exists!2149 (ite c!923359 lambda!270924 lambda!270925)))))

(declare-fun b!5314597 () Bool)

(assert (=> b!5314597 (= e!3302268 e!3302272)))

(declare-fun res!2254641 () Bool)

(assert (=> b!5314597 (= res!2254641 (not (is-EmptyLang!14968 (regOne!30449 r!7292))))))

(assert (=> b!5314597 (=> (not res!2254641) (not e!3302272))))

(assert (= (and d!1707434 c!923360) b!5314595))

(assert (= (and d!1707434 (not c!923360)) b!5314597))

(assert (= (and b!5314597 res!2254641) b!5314587))

(assert (= (and b!5314587 c!923362) b!5314590))

(assert (= (and b!5314587 (not c!923362)) b!5314593))

(assert (= (and b!5314593 c!923361) b!5314588))

(assert (= (and b!5314593 (not c!923361)) b!5314596))

(assert (= (and b!5314588 (not res!2254639)) b!5314594))

(assert (= (and b!5314596 c!923359) b!5314591))

(assert (= (and b!5314596 (not c!923359)) b!5314592))

(assert (= (and b!5314591 (not res!2254640)) b!5314589))

(assert (= (or b!5314589 b!5314592) bm!379028))

(assert (= (or b!5314595 b!5314591) bm!379027))

(declare-fun m!6351272 () Bool)

(assert (=> b!5314588 m!6351272))

(declare-fun m!6351274 () Bool)

(assert (=> b!5314594 m!6351274))

(assert (=> bm!379027 m!6350618))

(declare-fun m!6351276 () Bool)

(assert (=> bm!379028 m!6351276))

(assert (=> b!5313705 d!1707434))

(declare-fun b!5314598 () Bool)

(declare-fun e!3302275 () (Set Context!8704))

(assert (=> b!5314598 (= e!3302275 (as set.empty (Set Context!8704)))))

(declare-fun b!5314599 () Bool)

(declare-fun e!3302276 () (Set Context!8704))

(assert (=> b!5314599 (= e!3302276 (set.insert (Context!8705 (t!374409 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))) (as set.empty (Set Context!8704))))))

(declare-fun call!379036 () (Set Context!8704))

(declare-fun call!379039 () List!61204)

(declare-fun c!923363 () Bool)

(declare-fun c!923365 () Bool)

(declare-fun bm!379029 () Bool)

(declare-fun c!923366 () Bool)

(assert (=> bm!379029 (= call!379036 (derivationStepZipperDown!416 (ite c!923365 (regOne!30449 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))) (ite c!923363 (regTwo!30448 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))) (ite c!923366 (regOne!30448 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))) (reg!15297 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343))))))))))) (ite (or c!923365 c!923363) (Context!8705 (t!374409 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))) (Context!8705 call!379039)) (h!67527 s!2326)))))

(declare-fun bm!379030 () Bool)

(declare-fun call!379037 () (Set Context!8704))

(assert (=> bm!379030 (= call!379037 call!379036)))

(declare-fun b!5314600 () Bool)

(declare-fun call!379035 () (Set Context!8704))

(assert (=> b!5314600 (= e!3302275 call!379035)))

(declare-fun bm!379031 () Bool)

(declare-fun call!379034 () List!61204)

(assert (=> bm!379031 (= call!379039 call!379034)))

(declare-fun bm!379032 () Bool)

(declare-fun call!379038 () (Set Context!8704))

(assert (=> bm!379032 (= call!379038 (derivationStepZipperDown!416 (ite c!923365 (regTwo!30449 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))) (regOne!30448 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343))))))))) (ite c!923365 (Context!8705 (t!374409 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))) (Context!8705 call!379034)) (h!67527 s!2326)))))

(declare-fun b!5314601 () Bool)

(declare-fun e!3302273 () Bool)

(assert (=> b!5314601 (= c!923363 e!3302273)))

(declare-fun res!2254642 () Bool)

(assert (=> b!5314601 (=> (not res!2254642) (not e!3302273))))

(assert (=> b!5314601 (= res!2254642 (is-Concat!23813 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))))))

(declare-fun e!3302277 () (Set Context!8704))

(declare-fun e!3302274 () (Set Context!8704))

(assert (=> b!5314601 (= e!3302277 e!3302274)))

(declare-fun b!5314602 () Bool)

(declare-fun c!923364 () Bool)

(assert (=> b!5314602 (= c!923364 (is-Star!14968 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))))))

(declare-fun e!3302278 () (Set Context!8704))

(assert (=> b!5314602 (= e!3302278 e!3302275)))

(declare-fun b!5314603 () Bool)

(assert (=> b!5314603 (= e!3302277 (set.union call!379036 call!379038))))

(declare-fun b!5314604 () Bool)

(assert (=> b!5314604 (= e!3302274 e!3302278)))

(assert (=> b!5314604 (= c!923366 (is-Concat!23813 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))))))

(declare-fun b!5314605 () Bool)

(assert (=> b!5314605 (= e!3302278 call!379035)))

(declare-fun b!5314606 () Bool)

(assert (=> b!5314606 (= e!3302273 (nullable!5137 (regOne!30448 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343))))))))))))

(declare-fun d!1707436 () Bool)

(declare-fun c!923367 () Bool)

(assert (=> d!1707436 (= c!923367 (and (is-ElementMatch!14968 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))) (= (c!923072 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))) (h!67527 s!2326))))))

(assert (=> d!1707436 (= (derivationStepZipperDown!416 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343))))))) (Context!8705 (t!374409 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))) (h!67527 s!2326)) e!3302276)))

(declare-fun b!5314607 () Bool)

(assert (=> b!5314607 (= e!3302276 e!3302277)))

(assert (=> b!5314607 (= c!923365 (is-Union!14968 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))))))

(declare-fun bm!379033 () Bool)

(assert (=> bm!379033 (= call!379034 ($colon$colon!1387 (exprs!4852 (Context!8705 (t!374409 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343))))))))) (ite (or c!923363 c!923366) (regTwo!30448 (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343)))))))) (h!67528 (exprs!4852 (Context!8705 (Cons!61080 (h!67528 (exprs!4852 (h!67529 zl!343))) (t!374409 (exprs!4852 (h!67529 zl!343))))))))))))

(declare-fun b!5314608 () Bool)

(assert (=> b!5314608 (= e!3302274 (set.union call!379038 call!379037))))

(declare-fun bm!379034 () Bool)

(assert (=> bm!379034 (= call!379035 call!379037)))

(assert (= (and d!1707436 c!923367) b!5314599))

(assert (= (and d!1707436 (not c!923367)) b!5314607))

(assert (= (and b!5314607 c!923365) b!5314603))

(assert (= (and b!5314607 (not c!923365)) b!5314601))

(assert (= (and b!5314601 res!2254642) b!5314606))

(assert (= (and b!5314601 c!923363) b!5314608))

(assert (= (and b!5314601 (not c!923363)) b!5314604))

(assert (= (and b!5314604 c!923366) b!5314605))

(assert (= (and b!5314604 (not c!923366)) b!5314602))

(assert (= (and b!5314602 c!923364) b!5314600))

(assert (= (and b!5314602 (not c!923364)) b!5314598))

(assert (= (or b!5314605 b!5314600) bm!379031))

(assert (= (or b!5314605 b!5314600) bm!379034))

(assert (= (or b!5314608 bm!379031) bm!379033))

(assert (= (or b!5314608 bm!379034) bm!379030))

(assert (= (or b!5314603 b!5314608) bm!379032))

(assert (= (or b!5314603 bm!379030) bm!379029))

(declare-fun m!6351278 () Bool)

(assert (=> bm!379033 m!6351278))

(declare-fun m!6351280 () Bool)

(assert (=> b!5314606 m!6351280))

(declare-fun m!6351282 () Bool)

(assert (=> bm!379029 m!6351282))

(declare-fun m!6351284 () Bool)

(assert (=> b!5314599 m!6351284))

(declare-fun m!6351286 () Bool)

(assert (=> bm!379032 m!6351286))

(assert (=> bm!378884 d!1707436))

(assert (=> b!5313663 d!1707206))

(declare-fun bs!1232076 () Bool)

(declare-fun d!1707438 () Bool)

(assert (= bs!1232076 (and d!1707438 d!1707188)))

(declare-fun lambda!270926 () Int)

(assert (=> bs!1232076 (= lambda!270926 lambda!270865)))

(declare-fun bs!1232077 () Bool)

(assert (= bs!1232077 (and d!1707438 d!1707294)))

(assert (=> bs!1232077 (= lambda!270926 lambda!270902)))

(declare-fun bs!1232078 () Bool)

(assert (= bs!1232078 (and d!1707438 d!1707328)))

(assert (=> bs!1232078 (= lambda!270926 lambda!270906)))

(declare-fun bs!1232079 () Bool)

(assert (= bs!1232079 (and d!1707438 d!1707168)))

(assert (=> bs!1232079 (= lambda!270926 lambda!270848)))

(declare-fun bs!1232080 () Bool)

(assert (= bs!1232080 (and d!1707438 d!1707186)))

(assert (=> bs!1232080 (= lambda!270926 lambda!270862)))

(declare-fun bs!1232081 () Bool)

(assert (= bs!1232081 (and d!1707438 d!1707210)))

(assert (=> bs!1232081 (= lambda!270926 lambda!270876)))

(declare-fun bs!1232082 () Bool)

(assert (= bs!1232082 (and d!1707438 d!1707358)))

(assert (=> bs!1232082 (= lambda!270926 lambda!270913)))

(declare-fun bs!1232083 () Bool)

(assert (= bs!1232083 (and d!1707438 d!1707184)))

(assert (=> bs!1232083 (= lambda!270926 lambda!270857)))

(declare-fun b!5314609 () Bool)

(declare-fun e!3302280 () Bool)

(declare-fun e!3302281 () Bool)

(assert (=> b!5314609 (= e!3302280 e!3302281)))

(declare-fun c!923369 () Bool)

(assert (=> b!5314609 (= c!923369 (isEmpty!33046 (t!374409 (unfocusZipperList!410 zl!343))))))

(declare-fun b!5314610 () Bool)

(declare-fun e!3302282 () Regex!14968)

(assert (=> b!5314610 (= e!3302282 (h!67528 (t!374409 (unfocusZipperList!410 zl!343))))))

(declare-fun b!5314611 () Bool)

(declare-fun lt!2171059 () Regex!14968)

(assert (=> b!5314611 (= e!3302281 (isEmptyLang!880 lt!2171059))))

(declare-fun b!5314612 () Bool)

(declare-fun e!3302284 () Regex!14968)

(assert (=> b!5314612 (= e!3302284 EmptyLang!14968)))

(declare-fun b!5314614 () Bool)

(declare-fun e!3302279 () Bool)

(assert (=> b!5314614 (= e!3302281 e!3302279)))

(declare-fun c!923371 () Bool)

(assert (=> b!5314614 (= c!923371 (isEmpty!33046 (tail!10490 (t!374409 (unfocusZipperList!410 zl!343)))))))

(declare-fun b!5314615 () Bool)

(assert (=> b!5314615 (= e!3302279 (= lt!2171059 (head!11393 (t!374409 (unfocusZipperList!410 zl!343)))))))

(declare-fun b!5314616 () Bool)

(assert (=> b!5314616 (= e!3302284 (Union!14968 (h!67528 (t!374409 (unfocusZipperList!410 zl!343))) (generalisedUnion!897 (t!374409 (t!374409 (unfocusZipperList!410 zl!343))))))))

(declare-fun b!5314613 () Bool)

(assert (=> b!5314613 (= e!3302282 e!3302284)))

(declare-fun c!923370 () Bool)

(assert (=> b!5314613 (= c!923370 (is-Cons!61080 (t!374409 (unfocusZipperList!410 zl!343))))))

(assert (=> d!1707438 e!3302280))

(declare-fun res!2254644 () Bool)

(assert (=> d!1707438 (=> (not res!2254644) (not e!3302280))))

(assert (=> d!1707438 (= res!2254644 (validRegex!6704 lt!2171059))))

(assert (=> d!1707438 (= lt!2171059 e!3302282)))

(declare-fun c!923368 () Bool)

(declare-fun e!3302283 () Bool)

(assert (=> d!1707438 (= c!923368 e!3302283)))

(declare-fun res!2254643 () Bool)

(assert (=> d!1707438 (=> (not res!2254643) (not e!3302283))))

(assert (=> d!1707438 (= res!2254643 (is-Cons!61080 (t!374409 (unfocusZipperList!410 zl!343))))))

(assert (=> d!1707438 (forall!14388 (t!374409 (unfocusZipperList!410 zl!343)) lambda!270926)))

(assert (=> d!1707438 (= (generalisedUnion!897 (t!374409 (unfocusZipperList!410 zl!343))) lt!2171059)))

(declare-fun b!5314617 () Bool)

(assert (=> b!5314617 (= e!3302283 (isEmpty!33046 (t!374409 (t!374409 (unfocusZipperList!410 zl!343)))))))

(declare-fun b!5314618 () Bool)

(assert (=> b!5314618 (= e!3302279 (isUnion!312 lt!2171059))))

(assert (= (and d!1707438 res!2254643) b!5314617))

(assert (= (and d!1707438 c!923368) b!5314610))

(assert (= (and d!1707438 (not c!923368)) b!5314613))

(assert (= (and b!5314613 c!923370) b!5314616))

(assert (= (and b!5314613 (not c!923370)) b!5314612))

(assert (= (and d!1707438 res!2254644) b!5314609))

(assert (= (and b!5314609 c!923369) b!5314611))

(assert (= (and b!5314609 (not c!923369)) b!5314614))

(assert (= (and b!5314614 c!923371) b!5314615))

(assert (= (and b!5314614 (not c!923371)) b!5314618))

(declare-fun m!6351288 () Bool)

(assert (=> b!5314616 m!6351288))

(declare-fun m!6351290 () Bool)

(assert (=> b!5314615 m!6351290))

(declare-fun m!6351292 () Bool)

(assert (=> b!5314618 m!6351292))

(declare-fun m!6351294 () Bool)

(assert (=> b!5314611 m!6351294))

(declare-fun m!6351296 () Bool)

(assert (=> b!5314614 m!6351296))

(assert (=> b!5314614 m!6351296))

(declare-fun m!6351298 () Bool)

(assert (=> b!5314614 m!6351298))

(declare-fun m!6351300 () Bool)

(assert (=> d!1707438 m!6351300))

(declare-fun m!6351302 () Bool)

(assert (=> d!1707438 m!6351302))

(declare-fun m!6351304 () Bool)

(assert (=> b!5314617 m!6351304))

(assert (=> b!5314609 m!6350672))

(assert (=> b!5313795 d!1707438))

(declare-fun b!5314619 () Bool)

(declare-fun res!2254650 () Bool)

(declare-fun e!3302286 () Bool)

(assert (=> b!5314619 (=> (not res!2254650) (not e!3302286))))

(declare-fun call!379040 () Bool)

(assert (=> b!5314619 (= res!2254650 (not call!379040))))

(declare-fun b!5314620 () Bool)

(declare-fun res!2254648 () Bool)

(declare-fun e!3302290 () Bool)

(assert (=> b!5314620 (=> res!2254648 e!3302290)))

(assert (=> b!5314620 (= res!2254648 (not (isEmpty!33049 (tail!10489 s!2326))))))

(declare-fun d!1707440 () Bool)

(declare-fun e!3302288 () Bool)

(assert (=> d!1707440 e!3302288))

(declare-fun c!923373 () Bool)

(assert (=> d!1707440 (= c!923373 (is-EmptyExpr!14968 (regTwo!30448 r!7292)))))

(declare-fun lt!2171060 () Bool)

(declare-fun e!3302285 () Bool)

(assert (=> d!1707440 (= lt!2171060 e!3302285)))

(declare-fun c!923374 () Bool)

(assert (=> d!1707440 (= c!923374 (isEmpty!33049 s!2326))))

(assert (=> d!1707440 (validRegex!6704 (regTwo!30448 r!7292))))

(assert (=> d!1707440 (= (matchR!7153 (regTwo!30448 r!7292) s!2326) lt!2171060)))

(declare-fun b!5314621 () Bool)

(assert (=> b!5314621 (= e!3302286 (= (head!11392 s!2326) (c!923072 (regTwo!30448 r!7292))))))

(declare-fun b!5314622 () Bool)

(declare-fun res!2254649 () Bool)

(declare-fun e!3302287 () Bool)

(assert (=> b!5314622 (=> res!2254649 e!3302287)))

(assert (=> b!5314622 (= res!2254649 (not (is-ElementMatch!14968 (regTwo!30448 r!7292))))))

(declare-fun e!3302289 () Bool)

(assert (=> b!5314622 (= e!3302289 e!3302287)))

(declare-fun bm!379035 () Bool)

(assert (=> bm!379035 (= call!379040 (isEmpty!33049 s!2326))))

(declare-fun b!5314623 () Bool)

(assert (=> b!5314623 (= e!3302288 e!3302289)))

(declare-fun c!923372 () Bool)

(assert (=> b!5314623 (= c!923372 (is-EmptyLang!14968 (regTwo!30448 r!7292)))))

(declare-fun b!5314624 () Bool)

(declare-fun res!2254647 () Bool)

(assert (=> b!5314624 (=> (not res!2254647) (not e!3302286))))

(assert (=> b!5314624 (= res!2254647 (isEmpty!33049 (tail!10489 s!2326)))))

(declare-fun b!5314625 () Bool)

(assert (=> b!5314625 (= e!3302289 (not lt!2171060))))

(declare-fun b!5314626 () Bool)

(declare-fun res!2254652 () Bool)

(assert (=> b!5314626 (=> res!2254652 e!3302287)))

(assert (=> b!5314626 (= res!2254652 e!3302286)))

(declare-fun res!2254645 () Bool)

(assert (=> b!5314626 (=> (not res!2254645) (not e!3302286))))

(assert (=> b!5314626 (= res!2254645 lt!2171060)))

(declare-fun b!5314627 () Bool)

(assert (=> b!5314627 (= e!3302285 (matchR!7153 (derivativeStep!4158 (regTwo!30448 r!7292) (head!11392 s!2326)) (tail!10489 s!2326)))))

(declare-fun b!5314628 () Bool)

(declare-fun e!3302291 () Bool)

(assert (=> b!5314628 (= e!3302291 e!3302290)))

(declare-fun res!2254651 () Bool)

(assert (=> b!5314628 (=> res!2254651 e!3302290)))

(assert (=> b!5314628 (= res!2254651 call!379040)))

(declare-fun b!5314629 () Bool)

(assert (=> b!5314629 (= e!3302290 (not (= (head!11392 s!2326) (c!923072 (regTwo!30448 r!7292)))))))

(declare-fun b!5314630 () Bool)

(assert (=> b!5314630 (= e!3302288 (= lt!2171060 call!379040))))

(declare-fun b!5314631 () Bool)

(assert (=> b!5314631 (= e!3302285 (nullable!5137 (regTwo!30448 r!7292)))))

(declare-fun b!5314632 () Bool)

(assert (=> b!5314632 (= e!3302287 e!3302291)))

(declare-fun res!2254646 () Bool)

(assert (=> b!5314632 (=> (not res!2254646) (not e!3302291))))

(assert (=> b!5314632 (= res!2254646 (not lt!2171060))))

(assert (= (and d!1707440 c!923374) b!5314631))

(assert (= (and d!1707440 (not c!923374)) b!5314627))

(assert (= (and d!1707440 c!923373) b!5314630))

(assert (= (and d!1707440 (not c!923373)) b!5314623))

(assert (= (and b!5314623 c!923372) b!5314625))

(assert (= (and b!5314623 (not c!923372)) b!5314622))

(assert (= (and b!5314622 (not res!2254649)) b!5314626))

(assert (= (and b!5314626 res!2254645) b!5314619))

(assert (= (and b!5314619 res!2254650) b!5314624))

(assert (= (and b!5314624 res!2254647) b!5314621))

(assert (= (and b!5314626 (not res!2254652)) b!5314632))

(assert (= (and b!5314632 res!2254646) b!5314628))

(assert (= (and b!5314628 (not res!2254651)) b!5314620))

(assert (= (and b!5314620 (not res!2254648)) b!5314629))

(assert (= (or b!5314630 b!5314619 b!5314628) bm!379035))

(assert (=> b!5314620 m!6350624))

(assert (=> b!5314620 m!6350624))

(assert (=> b!5314620 m!6350626))

(assert (=> b!5314621 m!6350628))

(assert (=> b!5314627 m!6350628))

(assert (=> b!5314627 m!6350628))

(declare-fun m!6351306 () Bool)

(assert (=> b!5314627 m!6351306))

(assert (=> b!5314627 m!6350624))

(assert (=> b!5314627 m!6351306))

(assert (=> b!5314627 m!6350624))

(declare-fun m!6351308 () Bool)

(assert (=> b!5314627 m!6351308))

(assert (=> b!5314624 m!6350624))

(assert (=> b!5314624 m!6350624))

(assert (=> b!5314624 m!6350626))

(assert (=> b!5314629 m!6350628))

(assert (=> d!1707440 m!6350618))

(assert (=> d!1707440 m!6351122))

(assert (=> b!5314631 m!6351124))

(assert (=> bm!379035 m!6350618))

(assert (=> b!5313858 d!1707440))

(declare-fun b!5314633 () Bool)

(declare-fun e!3302295 () Bool)

(declare-fun call!379041 () Bool)

(assert (=> b!5314633 (= e!3302295 call!379041)))

(declare-fun bm!379036 () Bool)

(declare-fun call!379042 () Bool)

(declare-fun c!923375 () Bool)

(assert (=> bm!379036 (= call!379042 (nullable!5137 (ite c!923375 (regOne!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regOne!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))))))))

(declare-fun bm!379037 () Bool)

(assert (=> bm!379037 (= call!379041 (nullable!5137 (ite c!923375 (regTwo!30449 (h!67528 (exprs!4852 (h!67529 zl!343)))) (regTwo!30448 (h!67528 (exprs!4852 (h!67529 zl!343)))))))))

(declare-fun b!5314634 () Bool)

(declare-fun e!3302296 () Bool)

(declare-fun e!3302297 () Bool)

(assert (=> b!5314634 (= e!3302296 e!3302297)))

(declare-fun res!2254653 () Bool)

(assert (=> b!5314634 (=> res!2254653 e!3302297)))

(assert (=> b!5314634 (= res!2254653 (is-Star!14968 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun b!5314635 () Bool)

(declare-fun e!3302293 () Bool)

(assert (=> b!5314635 (= e!3302293 e!3302295)))

(declare-fun res!2254654 () Bool)

(assert (=> b!5314635 (= res!2254654 call!379042)))

(assert (=> b!5314635 (=> (not res!2254654) (not e!3302295))))

(declare-fun b!5314636 () Bool)

(declare-fun e!3302292 () Bool)

(assert (=> b!5314636 (= e!3302292 call!379041)))

(declare-fun d!1707442 () Bool)

(declare-fun res!2254657 () Bool)

(declare-fun e!3302294 () Bool)

(assert (=> d!1707442 (=> res!2254657 e!3302294)))

(assert (=> d!1707442 (= res!2254657 (is-EmptyExpr!14968 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(assert (=> d!1707442 (= (nullableFct!1489 (h!67528 (exprs!4852 (h!67529 zl!343)))) e!3302294)))

(declare-fun b!5314637 () Bool)

(assert (=> b!5314637 (= e!3302294 e!3302296)))

(declare-fun res!2254656 () Bool)

(assert (=> b!5314637 (=> (not res!2254656) (not e!3302296))))

(assert (=> b!5314637 (= res!2254656 (and (not (is-EmptyLang!14968 (h!67528 (exprs!4852 (h!67529 zl!343))))) (not (is-ElementMatch!14968 (h!67528 (exprs!4852 (h!67529 zl!343)))))))))

(declare-fun b!5314638 () Bool)

(assert (=> b!5314638 (= e!3302293 e!3302292)))

(declare-fun res!2254655 () Bool)

(assert (=> b!5314638 (= res!2254655 call!379042)))

(assert (=> b!5314638 (=> res!2254655 e!3302292)))

(declare-fun b!5314639 () Bool)

(assert (=> b!5314639 (= e!3302297 e!3302293)))

(assert (=> b!5314639 (= c!923375 (is-Union!14968 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(assert (= (and d!1707442 (not res!2254657)) b!5314637))

(assert (= (and b!5314637 res!2254656) b!5314634))

(assert (= (and b!5314634 (not res!2254653)) b!5314639))

(assert (= (and b!5314639 c!923375) b!5314638))

(assert (= (and b!5314639 (not c!923375)) b!5314635))

(assert (= (and b!5314638 (not res!2254655)) b!5314636))

(assert (= (and b!5314635 res!2254654) b!5314633))

(assert (= (or b!5314636 b!5314633) bm!379037))

(assert (= (or b!5314638 b!5314635) bm!379036))

(declare-fun m!6351310 () Bool)

(assert (=> bm!379036 m!6351310))

(declare-fun m!6351312 () Bool)

(assert (=> bm!379037 m!6351312))

(assert (=> d!1707144 d!1707442))

(declare-fun d!1707444 () Bool)

(assert (=> d!1707444 (= (isEmpty!33046 (tail!10490 (unfocusZipperList!410 zl!343))) (is-Nil!61080 (tail!10490 (unfocusZipperList!410 zl!343))))))

(assert (=> b!5313793 d!1707444))

(declare-fun d!1707446 () Bool)

(assert (=> d!1707446 (= (tail!10490 (unfocusZipperList!410 zl!343)) (t!374409 (unfocusZipperList!410 zl!343)))))

(assert (=> b!5313793 d!1707446))

(declare-fun d!1707448 () Bool)

(declare-fun c!923378 () Bool)

(assert (=> d!1707448 (= c!923378 (is-Nil!61081 lt!2170963))))

(declare-fun e!3302300 () (Set Context!8704))

(assert (=> d!1707448 (= (content!10882 lt!2170963) e!3302300)))

(declare-fun b!5314644 () Bool)

(assert (=> b!5314644 (= e!3302300 (as set.empty (Set Context!8704)))))

(declare-fun b!5314645 () Bool)

(assert (=> b!5314645 (= e!3302300 (set.union (set.insert (h!67529 lt!2170963) (as set.empty (Set Context!8704))) (content!10882 (t!374410 lt!2170963))))))

(assert (= (and d!1707448 c!923378) b!5314644))

(assert (= (and d!1707448 (not c!923378)) b!5314645))

(declare-fun m!6351314 () Bool)

(assert (=> b!5314645 m!6351314))

(declare-fun m!6351316 () Bool)

(assert (=> b!5314645 m!6351316))

(assert (=> b!5313641 d!1707448))

(declare-fun bs!1232084 () Bool)

(declare-fun d!1707450 () Bool)

(assert (= bs!1232084 (and d!1707450 d!1707316)))

(declare-fun lambda!270927 () Int)

(assert (=> bs!1232084 (= lambda!270927 lambda!270905)))

(assert (=> d!1707450 (= (nullableZipper!1337 (set.union lt!2170908 lt!2170910)) (exists!2004 (set.union lt!2170908 lt!2170910) lambda!270927))))

(declare-fun bs!1232085 () Bool)

(assert (= bs!1232085 d!1707450))

(declare-fun m!6351318 () Bool)

(assert (=> bs!1232085 m!6351318))

(assert (=> b!5313628 d!1707450))

(declare-fun d!1707452 () Bool)

(assert (=> d!1707452 (= (isEmpty!33050 (findConcatSeparation!1493 (regOne!30448 r!7292) (regTwo!30448 r!7292) Nil!61079 s!2326 s!2326)) (not (is-Some!15078 (findConcatSeparation!1493 (regOne!30448 r!7292) (regTwo!30448 r!7292) Nil!61079 s!2326 s!2326))))))

(assert (=> d!1707204 d!1707452))

(declare-fun bs!1232086 () Bool)

(declare-fun d!1707454 () Bool)

(assert (= bs!1232086 (and d!1707454 d!1707316)))

(declare-fun lambda!270928 () Int)

(assert (=> bs!1232086 (= lambda!270928 lambda!270905)))

(declare-fun bs!1232087 () Bool)

(assert (= bs!1232087 (and d!1707454 d!1707450)))

(assert (=> bs!1232087 (= lambda!270928 lambda!270927)))

(assert (=> d!1707454 (= (nullableZipper!1337 lt!2170910) (exists!2004 lt!2170910 lambda!270928))))

(declare-fun bs!1232088 () Bool)

(assert (= bs!1232088 d!1707454))

(declare-fun m!6351320 () Bool)

(assert (=> bs!1232088 m!6351320))

(assert (=> b!5313900 d!1707454))

(assert (=> b!5313852 d!1707418))

(assert (=> bs!1231954 d!1707148))

(declare-fun d!1707456 () Bool)

(assert (=> d!1707456 (= (nullable!5137 (reg!15297 (regOne!30448 (regOne!30448 r!7292)))) (nullableFct!1489 (reg!15297 (regOne!30448 (regOne!30448 r!7292)))))))

(declare-fun bs!1232089 () Bool)

(assert (= bs!1232089 d!1707456))

(declare-fun m!6351322 () Bool)

(assert (=> bs!1232089 m!6351322))

(assert (=> b!5313615 d!1707456))

(declare-fun bs!1232090 () Bool)

(declare-fun d!1707458 () Bool)

(assert (= bs!1232090 (and d!1707458 d!1707188)))

(declare-fun lambda!270929 () Int)

(assert (=> bs!1232090 (= lambda!270929 lambda!270865)))

(declare-fun bs!1232091 () Bool)

(assert (= bs!1232091 (and d!1707458 d!1707294)))

(assert (=> bs!1232091 (= lambda!270929 lambda!270902)))

(declare-fun bs!1232092 () Bool)

(assert (= bs!1232092 (and d!1707458 d!1707328)))

(assert (=> bs!1232092 (= lambda!270929 lambda!270906)))

(declare-fun bs!1232093 () Bool)

(assert (= bs!1232093 (and d!1707458 d!1707438)))

(assert (=> bs!1232093 (= lambda!270929 lambda!270926)))

(declare-fun bs!1232094 () Bool)

(assert (= bs!1232094 (and d!1707458 d!1707168)))

(assert (=> bs!1232094 (= lambda!270929 lambda!270848)))

(declare-fun bs!1232095 () Bool)

(assert (= bs!1232095 (and d!1707458 d!1707186)))

(assert (=> bs!1232095 (= lambda!270929 lambda!270862)))

(declare-fun bs!1232096 () Bool)

(assert (= bs!1232096 (and d!1707458 d!1707210)))

(assert (=> bs!1232096 (= lambda!270929 lambda!270876)))

(declare-fun bs!1232097 () Bool)

(assert (= bs!1232097 (and d!1707458 d!1707358)))

(assert (=> bs!1232097 (= lambda!270929 lambda!270913)))

(declare-fun bs!1232098 () Bool)

(assert (= bs!1232098 (and d!1707458 d!1707184)))

(assert (=> bs!1232098 (= lambda!270929 lambda!270857)))

(assert (=> d!1707458 (= (inv!80668 setElem!34178) (forall!14388 (exprs!4852 setElem!34178) lambda!270929))))

(declare-fun bs!1232099 () Bool)

(assert (= bs!1232099 d!1707458))

(declare-fun m!6351324 () Bool)

(assert (=> bs!1232099 m!6351324))

(assert (=> setNonEmpty!34178 d!1707458))

(declare-fun d!1707460 () Bool)

(assert (=> d!1707460 true))

(assert (=> d!1707460 true))

(declare-fun res!2254658 () Bool)

(assert (=> d!1707460 (= (choose!39763 lambda!270833) res!2254658)))

(assert (=> d!1707198 d!1707460))

(declare-fun e!3302301 () Bool)

(assert (=> b!5313932 (= tp!1479962 e!3302301)))

(declare-fun b!5314647 () Bool)

(declare-fun tp!1480061 () Bool)

(declare-fun tp!1480058 () Bool)

(assert (=> b!5314647 (= e!3302301 (and tp!1480061 tp!1480058))))

(declare-fun b!5314649 () Bool)

(declare-fun tp!1480059 () Bool)

(declare-fun tp!1480060 () Bool)

(assert (=> b!5314649 (= e!3302301 (and tp!1480059 tp!1480060))))

(declare-fun b!5314648 () Bool)

(declare-fun tp!1480062 () Bool)

(assert (=> b!5314648 (= e!3302301 tp!1480062)))

(declare-fun b!5314646 () Bool)

(assert (=> b!5314646 (= e!3302301 tp_is_empty!39189)))

(assert (= (and b!5313932 (is-ElementMatch!14968 (regOne!30449 (regTwo!30448 r!7292)))) b!5314646))

(assert (= (and b!5313932 (is-Concat!23813 (regOne!30449 (regTwo!30448 r!7292)))) b!5314647))

(assert (= (and b!5313932 (is-Star!14968 (regOne!30449 (regTwo!30448 r!7292)))) b!5314648))

(assert (= (and b!5313932 (is-Union!14968 (regOne!30449 (regTwo!30448 r!7292)))) b!5314649))

(declare-fun e!3302302 () Bool)

(assert (=> b!5313932 (= tp!1479963 e!3302302)))

(declare-fun b!5314651 () Bool)

(declare-fun tp!1480066 () Bool)

(declare-fun tp!1480063 () Bool)

(assert (=> b!5314651 (= e!3302302 (and tp!1480066 tp!1480063))))

(declare-fun b!5314653 () Bool)

(declare-fun tp!1480064 () Bool)

(declare-fun tp!1480065 () Bool)

(assert (=> b!5314653 (= e!3302302 (and tp!1480064 tp!1480065))))

(declare-fun b!5314652 () Bool)

(declare-fun tp!1480067 () Bool)

(assert (=> b!5314652 (= e!3302302 tp!1480067)))

(declare-fun b!5314650 () Bool)

(assert (=> b!5314650 (= e!3302302 tp_is_empty!39189)))

(assert (= (and b!5313932 (is-ElementMatch!14968 (regTwo!30449 (regTwo!30448 r!7292)))) b!5314650))

(assert (= (and b!5313932 (is-Concat!23813 (regTwo!30449 (regTwo!30448 r!7292)))) b!5314651))

(assert (= (and b!5313932 (is-Star!14968 (regTwo!30449 (regTwo!30448 r!7292)))) b!5314652))

(assert (= (and b!5313932 (is-Union!14968 (regTwo!30449 (regTwo!30448 r!7292)))) b!5314653))

(declare-fun e!3302303 () Bool)

(assert (=> b!5313918 (= tp!1479949 e!3302303)))

(declare-fun b!5314655 () Bool)

(declare-fun tp!1480071 () Bool)

(declare-fun tp!1480068 () Bool)

(assert (=> b!5314655 (= e!3302303 (and tp!1480071 tp!1480068))))

(declare-fun b!5314657 () Bool)

(declare-fun tp!1480069 () Bool)

(declare-fun tp!1480070 () Bool)

(assert (=> b!5314657 (= e!3302303 (and tp!1480069 tp!1480070))))

(declare-fun b!5314656 () Bool)

(declare-fun tp!1480072 () Bool)

(assert (=> b!5314656 (= e!3302303 tp!1480072)))

(declare-fun b!5314654 () Bool)

(assert (=> b!5314654 (= e!3302303 tp_is_empty!39189)))

(assert (= (and b!5313918 (is-ElementMatch!14968 (reg!15297 (regTwo!30449 r!7292)))) b!5314654))

(assert (= (and b!5313918 (is-Concat!23813 (reg!15297 (regTwo!30449 r!7292)))) b!5314655))

(assert (= (and b!5313918 (is-Star!14968 (reg!15297 (regTwo!30449 r!7292)))) b!5314656))

(assert (= (and b!5313918 (is-Union!14968 (reg!15297 (regTwo!30449 r!7292)))) b!5314657))

(declare-fun e!3302304 () Bool)

(assert (=> b!5313931 (= tp!1479965 e!3302304)))

(declare-fun b!5314659 () Bool)

(declare-fun tp!1480076 () Bool)

(declare-fun tp!1480073 () Bool)

(assert (=> b!5314659 (= e!3302304 (and tp!1480076 tp!1480073))))

(declare-fun b!5314661 () Bool)

(declare-fun tp!1480074 () Bool)

(declare-fun tp!1480075 () Bool)

(assert (=> b!5314661 (= e!3302304 (and tp!1480074 tp!1480075))))

(declare-fun b!5314660 () Bool)

(declare-fun tp!1480077 () Bool)

(assert (=> b!5314660 (= e!3302304 tp!1480077)))

(declare-fun b!5314658 () Bool)

(assert (=> b!5314658 (= e!3302304 tp_is_empty!39189)))

(assert (= (and b!5313931 (is-ElementMatch!14968 (reg!15297 (regTwo!30448 r!7292)))) b!5314658))

(assert (= (and b!5313931 (is-Concat!23813 (reg!15297 (regTwo!30448 r!7292)))) b!5314659))

(assert (= (and b!5313931 (is-Star!14968 (reg!15297 (regTwo!30448 r!7292)))) b!5314660))

(assert (= (and b!5313931 (is-Union!14968 (reg!15297 (regTwo!30448 r!7292)))) b!5314661))

(declare-fun b!5314662 () Bool)

(declare-fun e!3302305 () Bool)

(declare-fun tp!1480078 () Bool)

(assert (=> b!5314662 (= e!3302305 (and tp_is_empty!39189 tp!1480078))))

(assert (=> b!5313942 (= tp!1479974 e!3302305)))

(assert (= (and b!5313942 (is-Cons!61079 (t!374408 (t!374408 s!2326)))) b!5314662))

(declare-fun e!3302306 () Bool)

(assert (=> b!5313917 (= tp!1479948 e!3302306)))

(declare-fun b!5314664 () Bool)

(declare-fun tp!1480082 () Bool)

(declare-fun tp!1480079 () Bool)

(assert (=> b!5314664 (= e!3302306 (and tp!1480082 tp!1480079))))

(declare-fun b!5314666 () Bool)

(declare-fun tp!1480080 () Bool)

(declare-fun tp!1480081 () Bool)

(assert (=> b!5314666 (= e!3302306 (and tp!1480080 tp!1480081))))

(declare-fun b!5314665 () Bool)

(declare-fun tp!1480083 () Bool)

(assert (=> b!5314665 (= e!3302306 tp!1480083)))

(declare-fun b!5314663 () Bool)

(assert (=> b!5314663 (= e!3302306 tp_is_empty!39189)))

(assert (= (and b!5313917 (is-ElementMatch!14968 (regOne!30448 (regTwo!30449 r!7292)))) b!5314663))

(assert (= (and b!5313917 (is-Concat!23813 (regOne!30448 (regTwo!30449 r!7292)))) b!5314664))

(assert (= (and b!5313917 (is-Star!14968 (regOne!30448 (regTwo!30449 r!7292)))) b!5314665))

(assert (= (and b!5313917 (is-Union!14968 (regOne!30448 (regTwo!30449 r!7292)))) b!5314666))

(declare-fun e!3302307 () Bool)

(assert (=> b!5313917 (= tp!1479945 e!3302307)))

(declare-fun b!5314668 () Bool)

(declare-fun tp!1480087 () Bool)

(declare-fun tp!1480084 () Bool)

(assert (=> b!5314668 (= e!3302307 (and tp!1480087 tp!1480084))))

(declare-fun b!5314670 () Bool)

(declare-fun tp!1480085 () Bool)

(declare-fun tp!1480086 () Bool)

(assert (=> b!5314670 (= e!3302307 (and tp!1480085 tp!1480086))))

(declare-fun b!5314669 () Bool)

(declare-fun tp!1480088 () Bool)

(assert (=> b!5314669 (= e!3302307 tp!1480088)))

(declare-fun b!5314667 () Bool)

(assert (=> b!5314667 (= e!3302307 tp_is_empty!39189)))

(assert (= (and b!5313917 (is-ElementMatch!14968 (regTwo!30448 (regTwo!30449 r!7292)))) b!5314667))

(assert (= (and b!5313917 (is-Concat!23813 (regTwo!30448 (regTwo!30449 r!7292)))) b!5314668))

(assert (= (and b!5313917 (is-Star!14968 (regTwo!30448 (regTwo!30449 r!7292)))) b!5314669))

(assert (= (and b!5313917 (is-Union!14968 (regTwo!30448 (regTwo!30449 r!7292)))) b!5314670))

(declare-fun e!3302308 () Bool)

(assert (=> b!5313930 (= tp!1479964 e!3302308)))

(declare-fun b!5314672 () Bool)

(declare-fun tp!1480092 () Bool)

(declare-fun tp!1480089 () Bool)

(assert (=> b!5314672 (= e!3302308 (and tp!1480092 tp!1480089))))

(declare-fun b!5314674 () Bool)

(declare-fun tp!1480090 () Bool)

(declare-fun tp!1480091 () Bool)

(assert (=> b!5314674 (= e!3302308 (and tp!1480090 tp!1480091))))

(declare-fun b!5314673 () Bool)

(declare-fun tp!1480093 () Bool)

(assert (=> b!5314673 (= e!3302308 tp!1480093)))

(declare-fun b!5314671 () Bool)

(assert (=> b!5314671 (= e!3302308 tp_is_empty!39189)))

(assert (= (and b!5313930 (is-ElementMatch!14968 (regOne!30448 (regTwo!30448 r!7292)))) b!5314671))

(assert (= (and b!5313930 (is-Concat!23813 (regOne!30448 (regTwo!30448 r!7292)))) b!5314672))

(assert (= (and b!5313930 (is-Star!14968 (regOne!30448 (regTwo!30448 r!7292)))) b!5314673))

(assert (= (and b!5313930 (is-Union!14968 (regOne!30448 (regTwo!30448 r!7292)))) b!5314674))

(declare-fun e!3302309 () Bool)

(assert (=> b!5313930 (= tp!1479961 e!3302309)))

(declare-fun b!5314676 () Bool)

(declare-fun tp!1480097 () Bool)

(declare-fun tp!1480094 () Bool)

(assert (=> b!5314676 (= e!3302309 (and tp!1480097 tp!1480094))))

(declare-fun b!5314678 () Bool)

(declare-fun tp!1480095 () Bool)

(declare-fun tp!1480096 () Bool)

(assert (=> b!5314678 (= e!3302309 (and tp!1480095 tp!1480096))))

(declare-fun b!5314677 () Bool)

(declare-fun tp!1480098 () Bool)

(assert (=> b!5314677 (= e!3302309 tp!1480098)))

(declare-fun b!5314675 () Bool)

(assert (=> b!5314675 (= e!3302309 tp_is_empty!39189)))

(assert (= (and b!5313930 (is-ElementMatch!14968 (regTwo!30448 (regTwo!30448 r!7292)))) b!5314675))

(assert (= (and b!5313930 (is-Concat!23813 (regTwo!30448 (regTwo!30448 r!7292)))) b!5314676))

(assert (= (and b!5313930 (is-Star!14968 (regTwo!30448 (regTwo!30448 r!7292)))) b!5314677))

(assert (= (and b!5313930 (is-Union!14968 (regTwo!30448 (regTwo!30448 r!7292)))) b!5314678))

(declare-fun b!5314679 () Bool)

(declare-fun e!3302310 () Bool)

(declare-fun tp!1480099 () Bool)

(declare-fun tp!1480100 () Bool)

(assert (=> b!5314679 (= e!3302310 (and tp!1480099 tp!1480100))))

(assert (=> b!5313955 (= tp!1479986 e!3302310)))

(assert (= (and b!5313955 (is-Cons!61080 (exprs!4852 (h!67529 (t!374410 zl!343))))) b!5314679))

(declare-fun b!5314681 () Bool)

(declare-fun e!3302312 () Bool)

(declare-fun tp!1480101 () Bool)

(assert (=> b!5314681 (= e!3302312 tp!1480101)))

(declare-fun b!5314680 () Bool)

(declare-fun e!3302311 () Bool)

(declare-fun tp!1480102 () Bool)

(assert (=> b!5314680 (= e!3302311 (and (inv!80668 (h!67529 (t!374410 (t!374410 zl!343)))) e!3302312 tp!1480102))))

(assert (=> b!5313954 (= tp!1479987 e!3302311)))

(assert (= b!5314680 b!5314681))

(assert (= (and b!5313954 (is-Cons!61081 (t!374410 (t!374410 zl!343)))) b!5314680))

(declare-fun m!6351326 () Bool)

(assert (=> b!5314680 m!6351326))

(declare-fun e!3302313 () Bool)

(assert (=> b!5313914 (= tp!1479944 e!3302313)))

(declare-fun b!5314683 () Bool)

(declare-fun tp!1480106 () Bool)

(declare-fun tp!1480103 () Bool)

(assert (=> b!5314683 (= e!3302313 (and tp!1480106 tp!1480103))))

(declare-fun b!5314685 () Bool)

(declare-fun tp!1480104 () Bool)

(declare-fun tp!1480105 () Bool)

(assert (=> b!5314685 (= e!3302313 (and tp!1480104 tp!1480105))))

(declare-fun b!5314684 () Bool)

(declare-fun tp!1480107 () Bool)

(assert (=> b!5314684 (= e!3302313 tp!1480107)))

(declare-fun b!5314682 () Bool)

(assert (=> b!5314682 (= e!3302313 tp_is_empty!39189)))

(assert (= (and b!5313914 (is-ElementMatch!14968 (reg!15297 (regOne!30449 r!7292)))) b!5314682))

(assert (= (and b!5313914 (is-Concat!23813 (reg!15297 (regOne!30449 r!7292)))) b!5314683))

(assert (= (and b!5313914 (is-Star!14968 (reg!15297 (regOne!30449 r!7292)))) b!5314684))

(assert (= (and b!5313914 (is-Union!14968 (reg!15297 (regOne!30449 r!7292)))) b!5314685))

(declare-fun e!3302314 () Bool)

(assert (=> b!5313947 (= tp!1479980 e!3302314)))

(declare-fun b!5314687 () Bool)

(declare-fun tp!1480111 () Bool)

(declare-fun tp!1480108 () Bool)

(assert (=> b!5314687 (= e!3302314 (and tp!1480111 tp!1480108))))

(declare-fun b!5314689 () Bool)

(declare-fun tp!1480109 () Bool)

(declare-fun tp!1480110 () Bool)

(assert (=> b!5314689 (= e!3302314 (and tp!1480109 tp!1480110))))

(declare-fun b!5314688 () Bool)

(declare-fun tp!1480112 () Bool)

(assert (=> b!5314688 (= e!3302314 tp!1480112)))

(declare-fun b!5314686 () Bool)

(assert (=> b!5314686 (= e!3302314 tp_is_empty!39189)))

(assert (= (and b!5313947 (is-ElementMatch!14968 (h!67528 (exprs!4852 setElem!34172)))) b!5314686))

(assert (= (and b!5313947 (is-Concat!23813 (h!67528 (exprs!4852 setElem!34172)))) b!5314687))

(assert (= (and b!5313947 (is-Star!14968 (h!67528 (exprs!4852 setElem!34172)))) b!5314688))

(assert (= (and b!5313947 (is-Union!14968 (h!67528 (exprs!4852 setElem!34172)))) b!5314689))

(declare-fun b!5314690 () Bool)

(declare-fun e!3302315 () Bool)

(declare-fun tp!1480113 () Bool)

(declare-fun tp!1480114 () Bool)

(assert (=> b!5314690 (= e!3302315 (and tp!1480113 tp!1480114))))

(assert (=> b!5313947 (= tp!1479981 e!3302315)))

(assert (= (and b!5313947 (is-Cons!61080 (t!374409 (exprs!4852 setElem!34172)))) b!5314690))

(declare-fun e!3302316 () Bool)

(assert (=> b!5313915 (= tp!1479941 e!3302316)))

(declare-fun b!5314692 () Bool)

(declare-fun tp!1480118 () Bool)

(declare-fun tp!1480115 () Bool)

(assert (=> b!5314692 (= e!3302316 (and tp!1480118 tp!1480115))))

(declare-fun b!5314694 () Bool)

(declare-fun tp!1480116 () Bool)

(declare-fun tp!1480117 () Bool)

(assert (=> b!5314694 (= e!3302316 (and tp!1480116 tp!1480117))))

(declare-fun b!5314693 () Bool)

(declare-fun tp!1480119 () Bool)

(assert (=> b!5314693 (= e!3302316 tp!1480119)))

(declare-fun b!5314691 () Bool)

(assert (=> b!5314691 (= e!3302316 tp_is_empty!39189)))

(assert (= (and b!5313915 (is-ElementMatch!14968 (regOne!30449 (regOne!30449 r!7292)))) b!5314691))

(assert (= (and b!5313915 (is-Concat!23813 (regOne!30449 (regOne!30449 r!7292)))) b!5314692))

(assert (= (and b!5313915 (is-Star!14968 (regOne!30449 (regOne!30449 r!7292)))) b!5314693))

(assert (= (and b!5313915 (is-Union!14968 (regOne!30449 (regOne!30449 r!7292)))) b!5314694))

(declare-fun e!3302317 () Bool)

(assert (=> b!5313915 (= tp!1479942 e!3302317)))

(declare-fun b!5314696 () Bool)

(declare-fun tp!1480123 () Bool)

(declare-fun tp!1480120 () Bool)

(assert (=> b!5314696 (= e!3302317 (and tp!1480123 tp!1480120))))

(declare-fun b!5314698 () Bool)

(declare-fun tp!1480121 () Bool)

(declare-fun tp!1480122 () Bool)

(assert (=> b!5314698 (= e!3302317 (and tp!1480121 tp!1480122))))

(declare-fun b!5314697 () Bool)

(declare-fun tp!1480124 () Bool)

(assert (=> b!5314697 (= e!3302317 tp!1480124)))

(declare-fun b!5314695 () Bool)

(assert (=> b!5314695 (= e!3302317 tp_is_empty!39189)))

(assert (= (and b!5313915 (is-ElementMatch!14968 (regTwo!30449 (regOne!30449 r!7292)))) b!5314695))

(assert (= (and b!5313915 (is-Concat!23813 (regTwo!30449 (regOne!30449 r!7292)))) b!5314696))

(assert (= (and b!5313915 (is-Star!14968 (regTwo!30449 (regOne!30449 r!7292)))) b!5314697))

(assert (= (and b!5313915 (is-Union!14968 (regTwo!30449 (regOne!30449 r!7292)))) b!5314698))

(declare-fun e!3302318 () Bool)

(assert (=> b!5313913 (= tp!1479943 e!3302318)))

(declare-fun b!5314700 () Bool)

(declare-fun tp!1480128 () Bool)

(declare-fun tp!1480125 () Bool)

(assert (=> b!5314700 (= e!3302318 (and tp!1480128 tp!1480125))))

(declare-fun b!5314702 () Bool)

(declare-fun tp!1480126 () Bool)

(declare-fun tp!1480127 () Bool)

(assert (=> b!5314702 (= e!3302318 (and tp!1480126 tp!1480127))))

(declare-fun b!5314701 () Bool)

(declare-fun tp!1480129 () Bool)

(assert (=> b!5314701 (= e!3302318 tp!1480129)))

(declare-fun b!5314699 () Bool)

(assert (=> b!5314699 (= e!3302318 tp_is_empty!39189)))

(assert (= (and b!5313913 (is-ElementMatch!14968 (regOne!30448 (regOne!30449 r!7292)))) b!5314699))

(assert (= (and b!5313913 (is-Concat!23813 (regOne!30448 (regOne!30449 r!7292)))) b!5314700))

(assert (= (and b!5313913 (is-Star!14968 (regOne!30448 (regOne!30449 r!7292)))) b!5314701))

(assert (= (and b!5313913 (is-Union!14968 (regOne!30448 (regOne!30449 r!7292)))) b!5314702))

(declare-fun e!3302319 () Bool)

(assert (=> b!5313913 (= tp!1479940 e!3302319)))

(declare-fun b!5314704 () Bool)

(declare-fun tp!1480133 () Bool)

(declare-fun tp!1480130 () Bool)

(assert (=> b!5314704 (= e!3302319 (and tp!1480133 tp!1480130))))

(declare-fun b!5314706 () Bool)

(declare-fun tp!1480131 () Bool)

(declare-fun tp!1480132 () Bool)

(assert (=> b!5314706 (= e!3302319 (and tp!1480131 tp!1480132))))

(declare-fun b!5314705 () Bool)

(declare-fun tp!1480134 () Bool)

(assert (=> b!5314705 (= e!3302319 tp!1480134)))

(declare-fun b!5314703 () Bool)

(assert (=> b!5314703 (= e!3302319 tp_is_empty!39189)))

(assert (= (and b!5313913 (is-ElementMatch!14968 (regTwo!30448 (regOne!30449 r!7292)))) b!5314703))

(assert (= (and b!5313913 (is-Concat!23813 (regTwo!30448 (regOne!30449 r!7292)))) b!5314704))

(assert (= (and b!5313913 (is-Star!14968 (regTwo!30448 (regOne!30449 r!7292)))) b!5314705))

(assert (= (and b!5313913 (is-Union!14968 (regTwo!30448 (regOne!30449 r!7292)))) b!5314706))

(declare-fun e!3302320 () Bool)

(assert (=> b!5313928 (= tp!1479957 e!3302320)))

(declare-fun b!5314708 () Bool)

(declare-fun tp!1480138 () Bool)

(declare-fun tp!1480135 () Bool)

(assert (=> b!5314708 (= e!3302320 (and tp!1480138 tp!1480135))))

(declare-fun b!5314710 () Bool)

(declare-fun tp!1480136 () Bool)

(declare-fun tp!1480137 () Bool)

(assert (=> b!5314710 (= e!3302320 (and tp!1480136 tp!1480137))))

(declare-fun b!5314709 () Bool)

(declare-fun tp!1480139 () Bool)

(assert (=> b!5314709 (= e!3302320 tp!1480139)))

(declare-fun b!5314707 () Bool)

(assert (=> b!5314707 (= e!3302320 tp_is_empty!39189)))

(assert (= (and b!5313928 (is-ElementMatch!14968 (regOne!30449 (regOne!30448 r!7292)))) b!5314707))

(assert (= (and b!5313928 (is-Concat!23813 (regOne!30449 (regOne!30448 r!7292)))) b!5314708))

(assert (= (and b!5313928 (is-Star!14968 (regOne!30449 (regOne!30448 r!7292)))) b!5314709))

(assert (= (and b!5313928 (is-Union!14968 (regOne!30449 (regOne!30448 r!7292)))) b!5314710))

(declare-fun e!3302321 () Bool)

(assert (=> b!5313928 (= tp!1479958 e!3302321)))

(declare-fun b!5314712 () Bool)

(declare-fun tp!1480143 () Bool)

(declare-fun tp!1480140 () Bool)

(assert (=> b!5314712 (= e!3302321 (and tp!1480143 tp!1480140))))

(declare-fun b!5314714 () Bool)

(declare-fun tp!1480141 () Bool)

(declare-fun tp!1480142 () Bool)

(assert (=> b!5314714 (= e!3302321 (and tp!1480141 tp!1480142))))

(declare-fun b!5314713 () Bool)

(declare-fun tp!1480144 () Bool)

(assert (=> b!5314713 (= e!3302321 tp!1480144)))

(declare-fun b!5314711 () Bool)

(assert (=> b!5314711 (= e!3302321 tp_is_empty!39189)))

(assert (= (and b!5313928 (is-ElementMatch!14968 (regTwo!30449 (regOne!30448 r!7292)))) b!5314711))

(assert (= (and b!5313928 (is-Concat!23813 (regTwo!30449 (regOne!30448 r!7292)))) b!5314712))

(assert (= (and b!5313928 (is-Star!14968 (regTwo!30449 (regOne!30448 r!7292)))) b!5314713))

(assert (= (and b!5313928 (is-Union!14968 (regTwo!30449 (regOne!30448 r!7292)))) b!5314714))

(declare-fun e!3302322 () Bool)

(assert (=> b!5313926 (= tp!1479959 e!3302322)))

(declare-fun b!5314716 () Bool)

(declare-fun tp!1480148 () Bool)

(declare-fun tp!1480145 () Bool)

(assert (=> b!5314716 (= e!3302322 (and tp!1480148 tp!1480145))))

(declare-fun b!5314718 () Bool)

(declare-fun tp!1480146 () Bool)

(declare-fun tp!1480147 () Bool)

(assert (=> b!5314718 (= e!3302322 (and tp!1480146 tp!1480147))))

(declare-fun b!5314717 () Bool)

(declare-fun tp!1480149 () Bool)

(assert (=> b!5314717 (= e!3302322 tp!1480149)))

(declare-fun b!5314715 () Bool)

(assert (=> b!5314715 (= e!3302322 tp_is_empty!39189)))

(assert (= (and b!5313926 (is-ElementMatch!14968 (regOne!30448 (regOne!30448 r!7292)))) b!5314715))

(assert (= (and b!5313926 (is-Concat!23813 (regOne!30448 (regOne!30448 r!7292)))) b!5314716))

(assert (= (and b!5313926 (is-Star!14968 (regOne!30448 (regOne!30448 r!7292)))) b!5314717))

(assert (= (and b!5313926 (is-Union!14968 (regOne!30448 (regOne!30448 r!7292)))) b!5314718))

(declare-fun e!3302323 () Bool)

(assert (=> b!5313926 (= tp!1479956 e!3302323)))

(declare-fun b!5314720 () Bool)

(declare-fun tp!1480153 () Bool)

(declare-fun tp!1480150 () Bool)

(assert (=> b!5314720 (= e!3302323 (and tp!1480153 tp!1480150))))

(declare-fun b!5314722 () Bool)

(declare-fun tp!1480151 () Bool)

(declare-fun tp!1480152 () Bool)

(assert (=> b!5314722 (= e!3302323 (and tp!1480151 tp!1480152))))

(declare-fun b!5314721 () Bool)

(declare-fun tp!1480154 () Bool)

(assert (=> b!5314721 (= e!3302323 tp!1480154)))

(declare-fun b!5314719 () Bool)

(assert (=> b!5314719 (= e!3302323 tp_is_empty!39189)))

(assert (= (and b!5313926 (is-ElementMatch!14968 (regTwo!30448 (regOne!30448 r!7292)))) b!5314719))

(assert (= (and b!5313926 (is-Concat!23813 (regTwo!30448 (regOne!30448 r!7292)))) b!5314720))

(assert (= (and b!5313926 (is-Star!14968 (regTwo!30448 (regOne!30448 r!7292)))) b!5314721))

(assert (= (and b!5313926 (is-Union!14968 (regTwo!30448 (regOne!30448 r!7292)))) b!5314722))

(declare-fun e!3302324 () Bool)

(assert (=> b!5313927 (= tp!1479960 e!3302324)))

(declare-fun b!5314724 () Bool)

(declare-fun tp!1480158 () Bool)

(declare-fun tp!1480155 () Bool)

(assert (=> b!5314724 (= e!3302324 (and tp!1480158 tp!1480155))))

(declare-fun b!5314726 () Bool)

(declare-fun tp!1480156 () Bool)

(declare-fun tp!1480157 () Bool)

(assert (=> b!5314726 (= e!3302324 (and tp!1480156 tp!1480157))))

(declare-fun b!5314725 () Bool)

(declare-fun tp!1480159 () Bool)

(assert (=> b!5314725 (= e!3302324 tp!1480159)))

(declare-fun b!5314723 () Bool)

(assert (=> b!5314723 (= e!3302324 tp_is_empty!39189)))

(assert (= (and b!5313927 (is-ElementMatch!14968 (reg!15297 (regOne!30448 r!7292)))) b!5314723))

(assert (= (and b!5313927 (is-Concat!23813 (reg!15297 (regOne!30448 r!7292)))) b!5314724))

(assert (= (and b!5313927 (is-Star!14968 (reg!15297 (regOne!30448 r!7292)))) b!5314725))

(assert (= (and b!5313927 (is-Union!14968 (reg!15297 (regOne!30448 r!7292)))) b!5314726))

(declare-fun e!3302325 () Bool)

(assert (=> b!5313945 (= tp!1479979 e!3302325)))

(declare-fun b!5314728 () Bool)

(declare-fun tp!1480163 () Bool)

(declare-fun tp!1480160 () Bool)

(assert (=> b!5314728 (= e!3302325 (and tp!1480163 tp!1480160))))

(declare-fun b!5314730 () Bool)

(declare-fun tp!1480161 () Bool)

(declare-fun tp!1480162 () Bool)

(assert (=> b!5314730 (= e!3302325 (and tp!1480161 tp!1480162))))

(declare-fun b!5314729 () Bool)

(declare-fun tp!1480164 () Bool)

(assert (=> b!5314729 (= e!3302325 tp!1480164)))

(declare-fun b!5314727 () Bool)

(assert (=> b!5314727 (= e!3302325 tp_is_empty!39189)))

(assert (= (and b!5313945 (is-ElementMatch!14968 (reg!15297 (reg!15297 r!7292)))) b!5314727))

(assert (= (and b!5313945 (is-Concat!23813 (reg!15297 (reg!15297 r!7292)))) b!5314728))

(assert (= (and b!5313945 (is-Star!14968 (reg!15297 (reg!15297 r!7292)))) b!5314729))

(assert (= (and b!5313945 (is-Union!14968 (reg!15297 (reg!15297 r!7292)))) b!5314730))

(declare-fun e!3302326 () Bool)

(assert (=> b!5313946 (= tp!1479976 e!3302326)))

(declare-fun b!5314732 () Bool)

(declare-fun tp!1480168 () Bool)

(declare-fun tp!1480165 () Bool)

(assert (=> b!5314732 (= e!3302326 (and tp!1480168 tp!1480165))))

(declare-fun b!5314734 () Bool)

(declare-fun tp!1480166 () Bool)

(declare-fun tp!1480167 () Bool)

(assert (=> b!5314734 (= e!3302326 (and tp!1480166 tp!1480167))))

(declare-fun b!5314733 () Bool)

(declare-fun tp!1480169 () Bool)

(assert (=> b!5314733 (= e!3302326 tp!1480169)))

(declare-fun b!5314731 () Bool)

(assert (=> b!5314731 (= e!3302326 tp_is_empty!39189)))

(assert (= (and b!5313946 (is-ElementMatch!14968 (regOne!30449 (reg!15297 r!7292)))) b!5314731))

(assert (= (and b!5313946 (is-Concat!23813 (regOne!30449 (reg!15297 r!7292)))) b!5314732))

(assert (= (and b!5313946 (is-Star!14968 (regOne!30449 (reg!15297 r!7292)))) b!5314733))

(assert (= (and b!5313946 (is-Union!14968 (regOne!30449 (reg!15297 r!7292)))) b!5314734))

(declare-fun e!3302327 () Bool)

(assert (=> b!5313946 (= tp!1479977 e!3302327)))

(declare-fun b!5314736 () Bool)

(declare-fun tp!1480173 () Bool)

(declare-fun tp!1480170 () Bool)

(assert (=> b!5314736 (= e!3302327 (and tp!1480173 tp!1480170))))

(declare-fun b!5314738 () Bool)

(declare-fun tp!1480171 () Bool)

(declare-fun tp!1480172 () Bool)

(assert (=> b!5314738 (= e!3302327 (and tp!1480171 tp!1480172))))

(declare-fun b!5314737 () Bool)

(declare-fun tp!1480174 () Bool)

(assert (=> b!5314737 (= e!3302327 tp!1480174)))

(declare-fun b!5314735 () Bool)

(assert (=> b!5314735 (= e!3302327 tp_is_empty!39189)))

(assert (= (and b!5313946 (is-ElementMatch!14968 (regTwo!30449 (reg!15297 r!7292)))) b!5314735))

(assert (= (and b!5313946 (is-Concat!23813 (regTwo!30449 (reg!15297 r!7292)))) b!5314736))

(assert (= (and b!5313946 (is-Star!14968 (regTwo!30449 (reg!15297 r!7292)))) b!5314737))

(assert (= (and b!5313946 (is-Union!14968 (regTwo!30449 (reg!15297 r!7292)))) b!5314738))

(declare-fun e!3302328 () Bool)

(assert (=> b!5313944 (= tp!1479978 e!3302328)))

(declare-fun b!5314740 () Bool)

(declare-fun tp!1480178 () Bool)

(declare-fun tp!1480175 () Bool)

(assert (=> b!5314740 (= e!3302328 (and tp!1480178 tp!1480175))))

(declare-fun b!5314742 () Bool)

(declare-fun tp!1480176 () Bool)

(declare-fun tp!1480177 () Bool)

(assert (=> b!5314742 (= e!3302328 (and tp!1480176 tp!1480177))))

(declare-fun b!5314741 () Bool)

(declare-fun tp!1480179 () Bool)

(assert (=> b!5314741 (= e!3302328 tp!1480179)))

(declare-fun b!5314739 () Bool)

(assert (=> b!5314739 (= e!3302328 tp_is_empty!39189)))

(assert (= (and b!5313944 (is-ElementMatch!14968 (regOne!30448 (reg!15297 r!7292)))) b!5314739))

(assert (= (and b!5313944 (is-Concat!23813 (regOne!30448 (reg!15297 r!7292)))) b!5314740))

(assert (= (and b!5313944 (is-Star!14968 (regOne!30448 (reg!15297 r!7292)))) b!5314741))

(assert (= (and b!5313944 (is-Union!14968 (regOne!30448 (reg!15297 r!7292)))) b!5314742))

(declare-fun e!3302329 () Bool)

(assert (=> b!5313944 (= tp!1479975 e!3302329)))

(declare-fun b!5314744 () Bool)

(declare-fun tp!1480183 () Bool)

(declare-fun tp!1480180 () Bool)

(assert (=> b!5314744 (= e!3302329 (and tp!1480183 tp!1480180))))

(declare-fun b!5314746 () Bool)

(declare-fun tp!1480181 () Bool)

(declare-fun tp!1480182 () Bool)

(assert (=> b!5314746 (= e!3302329 (and tp!1480181 tp!1480182))))

(declare-fun b!5314745 () Bool)

(declare-fun tp!1480184 () Bool)

(assert (=> b!5314745 (= e!3302329 tp!1480184)))

(declare-fun b!5314743 () Bool)

(assert (=> b!5314743 (= e!3302329 tp_is_empty!39189)))

(assert (= (and b!5313944 (is-ElementMatch!14968 (regTwo!30448 (reg!15297 r!7292)))) b!5314743))

(assert (= (and b!5313944 (is-Concat!23813 (regTwo!30448 (reg!15297 r!7292)))) b!5314744))

(assert (= (and b!5313944 (is-Star!14968 (regTwo!30448 (reg!15297 r!7292)))) b!5314745))

(assert (= (and b!5313944 (is-Union!14968 (regTwo!30448 (reg!15297 r!7292)))) b!5314746))

(declare-fun b!5314747 () Bool)

(declare-fun e!3302330 () Bool)

(declare-fun tp!1480185 () Bool)

(declare-fun tp!1480186 () Bool)

(assert (=> b!5314747 (= e!3302330 (and tp!1480185 tp!1480186))))

(assert (=> b!5313937 (= tp!1479970 e!3302330)))

(assert (= (and b!5313937 (is-Cons!61080 (exprs!4852 setElem!34178))) b!5314747))

(declare-fun e!3302331 () Bool)

(assert (=> b!5313924 (= tp!1479954 e!3302331)))

(declare-fun b!5314749 () Bool)

(declare-fun tp!1480190 () Bool)

(declare-fun tp!1480187 () Bool)

(assert (=> b!5314749 (= e!3302331 (and tp!1480190 tp!1480187))))

(declare-fun b!5314751 () Bool)

(declare-fun tp!1480188 () Bool)

(declare-fun tp!1480189 () Bool)

(assert (=> b!5314751 (= e!3302331 (and tp!1480188 tp!1480189))))

(declare-fun b!5314750 () Bool)

(declare-fun tp!1480191 () Bool)

(assert (=> b!5314750 (= e!3302331 tp!1480191)))

(declare-fun b!5314748 () Bool)

(assert (=> b!5314748 (= e!3302331 tp_is_empty!39189)))

(assert (= (and b!5313924 (is-ElementMatch!14968 (h!67528 (exprs!4852 (h!67529 zl!343))))) b!5314748))

(assert (= (and b!5313924 (is-Concat!23813 (h!67528 (exprs!4852 (h!67529 zl!343))))) b!5314749))

(assert (= (and b!5313924 (is-Star!14968 (h!67528 (exprs!4852 (h!67529 zl!343))))) b!5314750))

(assert (= (and b!5313924 (is-Union!14968 (h!67528 (exprs!4852 (h!67529 zl!343))))) b!5314751))

(declare-fun b!5314752 () Bool)

(declare-fun e!3302332 () Bool)

(declare-fun tp!1480192 () Bool)

(declare-fun tp!1480193 () Bool)

(assert (=> b!5314752 (= e!3302332 (and tp!1480192 tp!1480193))))

(assert (=> b!5313924 (= tp!1479955 e!3302332)))

(assert (= (and b!5313924 (is-Cons!61080 (t!374409 (exprs!4852 (h!67529 zl!343))))) b!5314752))

(declare-fun e!3302333 () Bool)

(assert (=> b!5313919 (= tp!1479946 e!3302333)))

(declare-fun b!5314754 () Bool)

(declare-fun tp!1480197 () Bool)

(declare-fun tp!1480194 () Bool)

(assert (=> b!5314754 (= e!3302333 (and tp!1480197 tp!1480194))))

(declare-fun b!5314756 () Bool)

(declare-fun tp!1480195 () Bool)

(declare-fun tp!1480196 () Bool)

(assert (=> b!5314756 (= e!3302333 (and tp!1480195 tp!1480196))))

(declare-fun b!5314755 () Bool)

(declare-fun tp!1480198 () Bool)

(assert (=> b!5314755 (= e!3302333 tp!1480198)))

(declare-fun b!5314753 () Bool)

(assert (=> b!5314753 (= e!3302333 tp_is_empty!39189)))

(assert (= (and b!5313919 (is-ElementMatch!14968 (regOne!30449 (regTwo!30449 r!7292)))) b!5314753))

(assert (= (and b!5313919 (is-Concat!23813 (regOne!30449 (regTwo!30449 r!7292)))) b!5314754))

(assert (= (and b!5313919 (is-Star!14968 (regOne!30449 (regTwo!30449 r!7292)))) b!5314755))

(assert (= (and b!5313919 (is-Union!14968 (regOne!30449 (regTwo!30449 r!7292)))) b!5314756))

(declare-fun e!3302334 () Bool)

(assert (=> b!5313919 (= tp!1479947 e!3302334)))

(declare-fun b!5314758 () Bool)

(declare-fun tp!1480202 () Bool)

(declare-fun tp!1480199 () Bool)

(assert (=> b!5314758 (= e!3302334 (and tp!1480202 tp!1480199))))

(declare-fun b!5314760 () Bool)

(declare-fun tp!1480200 () Bool)

(declare-fun tp!1480201 () Bool)

(assert (=> b!5314760 (= e!3302334 (and tp!1480200 tp!1480201))))

(declare-fun b!5314759 () Bool)

(declare-fun tp!1480203 () Bool)

(assert (=> b!5314759 (= e!3302334 tp!1480203)))

(declare-fun b!5314757 () Bool)

(assert (=> b!5314757 (= e!3302334 tp_is_empty!39189)))

(assert (= (and b!5313919 (is-ElementMatch!14968 (regTwo!30449 (regTwo!30449 r!7292)))) b!5314757))

(assert (= (and b!5313919 (is-Concat!23813 (regTwo!30449 (regTwo!30449 r!7292)))) b!5314758))

(assert (= (and b!5313919 (is-Star!14968 (regTwo!30449 (regTwo!30449 r!7292)))) b!5314759))

(assert (= (and b!5313919 (is-Union!14968 (regTwo!30449 (regTwo!30449 r!7292)))) b!5314760))

(declare-fun condSetEmpty!34185 () Bool)

(assert (=> setNonEmpty!34178 (= condSetEmpty!34185 (= setRest!34178 (as set.empty (Set Context!8704))))))

(declare-fun setRes!34185 () Bool)

(assert (=> setNonEmpty!34178 (= tp!1479971 setRes!34185)))

(declare-fun setIsEmpty!34185 () Bool)

(assert (=> setIsEmpty!34185 setRes!34185))

(declare-fun setNonEmpty!34185 () Bool)

(declare-fun e!3302335 () Bool)

(declare-fun tp!1480205 () Bool)

(declare-fun setElem!34185 () Context!8704)

(assert (=> setNonEmpty!34185 (= setRes!34185 (and tp!1480205 (inv!80668 setElem!34185) e!3302335))))

(declare-fun setRest!34185 () (Set Context!8704))

(assert (=> setNonEmpty!34185 (= setRest!34178 (set.union (set.insert setElem!34185 (as set.empty (Set Context!8704))) setRest!34185))))

(declare-fun b!5314761 () Bool)

(declare-fun tp!1480204 () Bool)

(assert (=> b!5314761 (= e!3302335 tp!1480204)))

(assert (= (and setNonEmpty!34178 condSetEmpty!34185) setIsEmpty!34185))

(assert (= (and setNonEmpty!34178 (not condSetEmpty!34185)) setNonEmpty!34185))

(assert (= setNonEmpty!34185 b!5314761))

(declare-fun m!6351328 () Bool)

(assert (=> setNonEmpty!34185 m!6351328))

(declare-fun b_lambda!204473 () Bool)

(assert (= b_lambda!204461 (or d!1707188 b_lambda!204473)))

(declare-fun bs!1232100 () Bool)

(declare-fun d!1707462 () Bool)

(assert (= bs!1232100 (and d!1707462 d!1707188)))

(assert (=> bs!1232100 (= (dynLambda!24142 lambda!270865 (h!67528 (exprs!4852 setElem!34172))) (validRegex!6704 (h!67528 (exprs!4852 setElem!34172))))))

(declare-fun m!6351330 () Bool)

(assert (=> bs!1232100 m!6351330))

(assert (=> b!5314278 d!1707462))

(declare-fun b_lambda!204475 () Bool)

(assert (= b_lambda!204465 (or d!1707184 b_lambda!204475)))

(declare-fun bs!1232101 () Bool)

(declare-fun d!1707464 () Bool)

(assert (= bs!1232101 (and d!1707464 d!1707184)))

(assert (=> bs!1232101 (= (dynLambda!24142 lambda!270857 (h!67528 (unfocusZipperList!410 zl!343))) (validRegex!6704 (h!67528 (unfocusZipperList!410 zl!343))))))

(declare-fun m!6351332 () Bool)

(assert (=> bs!1232101 m!6351332))

(assert (=> b!5314492 d!1707464))

(declare-fun b_lambda!204477 () Bool)

(assert (= b_lambda!204469 (or d!1707168 b_lambda!204477)))

(declare-fun bs!1232102 () Bool)

(declare-fun d!1707466 () Bool)

(assert (= bs!1232102 (and d!1707466 d!1707168)))

(assert (=> bs!1232102 (= (dynLambda!24142 lambda!270848 (h!67528 (exprs!4852 (h!67529 zl!343)))) (validRegex!6704 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(declare-fun m!6351334 () Bool)

(assert (=> bs!1232102 m!6351334))

(assert (=> b!5314526 d!1707466))

(declare-fun b_lambda!204479 () Bool)

(assert (= b_lambda!204467 (or b!5313407 b_lambda!204479)))

(assert (=> d!1707400 d!1707222))

(declare-fun b_lambda!204481 () Bool)

(assert (= b_lambda!204471 (or d!1707210 b_lambda!204481)))

(declare-fun bs!1232103 () Bool)

(declare-fun d!1707468 () Bool)

(assert (= bs!1232103 (and d!1707468 d!1707210)))

(assert (=> bs!1232103 (= (dynLambda!24142 lambda!270876 (h!67528 (exprs!4852 (h!67529 zl!343)))) (validRegex!6704 (h!67528 (exprs!4852 (h!67529 zl!343)))))))

(assert (=> bs!1232103 m!6351334))

(assert (=> b!5314559 d!1707468))

(declare-fun b_lambda!204483 () Bool)

(assert (= b_lambda!204463 (or d!1707186 b_lambda!204483)))

(declare-fun bs!1232104 () Bool)

(declare-fun d!1707470 () Bool)

(assert (= bs!1232104 (and d!1707470 d!1707186)))

(assert (=> bs!1232104 (= (dynLambda!24142 lambda!270862 (h!67528 lt!2170983)) (validRegex!6704 (h!67528 lt!2170983)))))

(declare-fun m!6351336 () Bool)

(assert (=> bs!1232104 m!6351336))

(assert (=> b!5314289 d!1707470))

(push 1)

(assert (not b!5314678))

(assert (not b!5314408))

(assert (not b!5314611))

(assert (not b!5314363))

(assert (not b_lambda!204481))

(assert (not b!5314752))

(assert (not b!5314751))

(assert (not b!5314744))

(assert (not b!5314244))

(assert (not b!5314594))

(assert (not b!5314745))

(assert (not d!1707352))

(assert (not b!5314432))

(assert (not b!5314614))

(assert (not b!5314733))

(assert (not bm!379033))

(assert tp_is_empty!39189)

(assert (not bm!379027))

(assert (not d!1707370))

(assert (not b!5314575))

(assert (not bm!378956))

(assert (not b!5314679))

(assert (not b!5314309))

(assert (not b!5314472))

(assert (not d!1707372))

(assert (not b!5314669))

(assert (not b_lambda!204483))

(assert (not bm!379028))

(assert (not b!5314271))

(assert (not b!5314296))

(assert (not b!5314645))

(assert (not b!5314385))

(assert (not b!5314685))

(assert (not b!5314713))

(assert (not d!1707380))

(assert (not d!1707416))

(assert (not b!5314387))

(assert (not bm!379025))

(assert (not b!5314504))

(assert (not d!1707424))

(assert (not b!5314627))

(assert (not b!5314657))

(assert (not b!5314710))

(assert (not d!1707328))

(assert (not b!5314702))

(assert (not bm!378957))

(assert (not b!5314672))

(assert (not b!5314404))

(assert (not d!1707366))

(assert (not bm!379003))

(assert (not bm!378982))

(assert (not b!5314692))

(assert (not b!5314647))

(assert (not d!1707388))

(assert (not b!5314684))

(assert (not b!5314746))

(assert (not b!5314662))

(assert (not b!5314659))

(assert (not d!1707400))

(assert (not b!5314758))

(assert (not b!5314539))

(assert (not b!5314382))

(assert (not b!5314543))

(assert (not b!5314566))

(assert (not bm!378962))

(assert (not b!5314712))

(assert (not d!1707322))

(assert (not b!5314701))

(assert (not b!5314716))

(assert (not bm!379011))

(assert (not b!5314616))

(assert (not b!5314250))

(assert (not bm!379017))

(assert (not b!5314573))

(assert (not b_lambda!204455))

(assert (not b!5314259))

(assert (not bs!1232101))

(assert (not d!1707364))

(assert (not d!1707308))

(assert (not d!1707362))

(assert (not bm!378974))

(assert (not b!5314629))

(assert (not b!5314295))

(assert (not bm!378998))

(assert (not b!5314668))

(assert (not bs!1232102))

(assert (not d!1707316))

(assert (not b!5314549))

(assert (not bm!378995))

(assert (not b!5314621))

(assert (not b!5314340))

(assert (not d!1707392))

(assert (not b!5314730))

(assert (not bm!378965))

(assert (not b!5314556))

(assert (not b!5314300))

(assert (not d!1707440))

(assert (not b!5314383))

(assert (not b!5314666))

(assert (not bm!378977))

(assert (not b!5314683))

(assert (not b!5314728))

(assert (not b!5314609))

(assert (not b!5314720))

(assert (not b!5314388))

(assert (not bm!379008))

(assert (not b!5314527))

(assert (not bm!379002))

(assert (not b!5314714))

(assert (not b!5314306))

(assert (not b!5314754))

(assert (not b!5314677))

(assert (not b!5314493))

(assert (not b!5314738))

(assert (not b!5314405))

(assert (not b!5314665))

(assert (not b!5314418))

(assert (not b!5314348))

(assert (not b!5314402))

(assert (not b!5314584))

(assert (not b!5314560))

(assert (not b!5314680))

(assert (not b!5314345))

(assert (not b!5314546))

(assert (not b_lambda!204475))

(assert (not bs!1232103))

(assert (not b!5314631))

(assert (not b!5314704))

(assert (not d!1707376))

(assert (not b!5314425))

(assert (not bm!378979))

(assert (not b!5314285))

(assert (not setNonEmpty!34185))

(assert (not b!5314649))

(assert (not setNonEmpty!34184))

(assert (not d!1707450))

(assert (not b!5314428))

(assert (not b!5314347))

(assert (not d!1707412))

(assert (not bm!378958))

(assert (not b!5314535))

(assert (not b!5314747))

(assert (not b!5314696))

(assert (not b!5314615))

(assert (not bm!378967))

(assert (not b!5314740))

(assert (not b!5314670))

(assert (not b!5314362))

(assert (not b!5314709))

(assert (not d!1707438))

(assert (not d!1707338))

(assert (not b!5314756))

(assert (not b!5314411))

(assert (not b!5314574))

(assert (not d!1707334))

(assert (not d!1707354))

(assert (not b!5314379))

(assert (not b_lambda!204473))

(assert (not b!5314688))

(assert (not b!5314705))

(assert (not d!1707336))

(assert (not b!5314341))

(assert (not b!5314421))

(assert (not bm!379024))

(assert (not d!1707420))

(assert (not b!5314655))

(assert (not bm!378953))

(assert (not bs!1232104))

(assert (not bm!378966))

(assert (not bm!379014))

(assert (not d!1707458))

(assert (not b!5314557))

(assert (not b!5314698))

(assert (not b!5314305))

(assert (not bm!379010))

(assert (not bm!379035))

(assert (not b!5314414))

(assert (not b!5314279))

(assert (not b!5314380))

(assert (not b!5314620))

(assert (not b!5314648))

(assert (not bm!379036))

(assert (not bm!379006))

(assert (not d!1707282))

(assert (not b!5314588))

(assert (not b!5314742))

(assert (not b!5314618))

(assert (not b!5314652))

(assert (not b!5314293))

(assert (not b!5314375))

(assert (not b!5314617))

(assert (not b!5314737))

(assert (not bm!378969))

(assert (not bm!378985))

(assert (not b!5314661))

(assert (not b!5314606))

(assert (not bm!378978))

(assert (not b!5314725))

(assert (not b!5314390))

(assert (not b!5314726))

(assert (not b!5314732))

(assert (not b!5314741))

(assert (not b!5314653))

(assert (not d!1707430))

(assert (not b_lambda!204477))

(assert (not bm!378968))

(assert (not b!5314354))

(assert (not b!5314495))

(assert (not bm!379016))

(assert (not b!5314540))

(assert (not bm!379021))

(assert (not b!5314755))

(assert (not b!5314706))

(assert (not b!5314721))

(assert (not b!5314407))

(assert (not d!1707378))

(assert (not b!5314496))

(assert (not b!5314314))

(assert (not b_lambda!204479))

(assert (not b!5314656))

(assert (not bm!379019))

(assert (not d!1707382))

(assert (not bm!378954))

(assert (not b!5314399))

(assert (not b!5314316))

(assert (not b!5314708))

(assert (not bm!379020))

(assert (not b!5314734))

(assert (not b!5314693))

(assert (not b!5314513))

(assert (not b!5314551))

(assert (not b!5314681))

(assert (not d!1707350))

(assert (not b!5314694))

(assert (not bm!379007))

(assert (not d!1707456))

(assert (not b!5314722))

(assert (not b!5314565))

(assert (not b!5314422))

(assert (not b!5314416))

(assert (not b!5314376))

(assert (not b!5314542))

(assert (not d!1707294))

(assert (not bm!378983))

(assert (not b!5314759))

(assert (not b!5314674))

(assert (not b!5314346))

(assert (not bm!379018))

(assert (not b!5314301))

(assert (not b!5314488))

(assert (not bm!378961))

(assert (not b!5314729))

(assert (not b!5314651))

(assert (not d!1707348))

(assert (not bm!379037))

(assert (not bm!378975))

(assert (not bm!379029))

(assert (not d!1707306))

(assert (not b!5314697))

(assert (not bs!1232100))

(assert (not b!5314676))

(assert (not b!5314529))

(assert (not d!1707454))

(assert (not b!5314553))

(assert (not b!5314749))

(assert (not d!1707418))

(assert (not b!5314717))

(assert (not b!5314750))

(assert (not b!5314736))

(assert (not b!5314664))

(assert (not b!5314624))

(assert (not b!5314687))

(assert (not b!5314430))

(assert (not b!5314718))

(assert (not b!5314462))

(assert (not bm!378999))

(assert (not b!5314700))

(assert (not d!1707340))

(assert (not d!1707414))

(assert (not b!5314760))

(assert (not bm!378986))

(assert (not bm!379013))

(assert (not b!5314660))

(assert (not b!5314673))

(assert (not b!5314290))

(assert (not b!5314312))

(assert (not b!5314690))

(assert (not d!1707358))

(assert (not bm!379032))

(assert (not b!5314339))

(assert (not b!5314724))

(assert (not b!5314522))

(assert (not b!5314761))

(assert (not b!5314689))

(assert (not d!1707346))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

