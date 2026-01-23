; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!604408 () Bool)

(assert start!604408)

(declare-fun b!5952011 () Bool)

(assert (=> b!5952011 true))

(assert (=> b!5952011 true))

(declare-fun lambda!324846 () Int)

(declare-fun lambda!324845 () Int)

(assert (=> b!5952011 (not (= lambda!324846 lambda!324845))))

(assert (=> b!5952011 true))

(assert (=> b!5952011 true))

(declare-fun b!5951995 () Bool)

(assert (=> b!5951995 true))

(declare-fun b!5951994 () Bool)

(declare-fun res!2491493 () Bool)

(declare-fun e!3641120 () Bool)

(assert (=> b!5951994 (=> (not res!2491493) (not e!3641120))))

(declare-datatypes ((C!32258 0))(
  ( (C!32259 (val!25831 Int)) )
))
(declare-datatypes ((Regex!15994 0))(
  ( (ElementMatch!15994 (c!1059166 C!32258)) (Concat!24839 (regOne!32500 Regex!15994) (regTwo!32500 Regex!15994)) (EmptyExpr!15994) (Star!15994 (reg!16323 Regex!15994)) (EmptyLang!15994) (Union!15994 (regOne!32501 Regex!15994) (regTwo!32501 Regex!15994)) )
))
(declare-datatypes ((List!64281 0))(
  ( (Nil!64157) (Cons!64157 (h!70605 Regex!15994) (t!377692 List!64281)) )
))
(declare-datatypes ((Context!10756 0))(
  ( (Context!10757 (exprs!5878 List!64281)) )
))
(declare-fun z!1189 () (Set Context!10756))

(declare-datatypes ((List!64282 0))(
  ( (Nil!64158) (Cons!64158 (h!70606 Context!10756) (t!377693 List!64282)) )
))
(declare-fun zl!343 () List!64282)

(declare-fun toList!9778 ((Set Context!10756)) List!64282)

(assert (=> b!5951994 (= res!2491493 (= (toList!9778 z!1189) zl!343))))

(declare-fun e!3641115 () Bool)

(declare-fun e!3641119 () Bool)

(assert (=> b!5951995 (= e!3641115 e!3641119)))

(declare-fun res!2491478 () Bool)

(assert (=> b!5951995 (=> res!2491478 e!3641119)))

(declare-fun lt!2313350 () (Set Context!10756))

(declare-fun lt!2313342 () (Set Context!10756))

(assert (=> b!5951995 (= res!2491478 (not (= lt!2313350 lt!2313342)))))

(declare-datatypes ((List!64283 0))(
  ( (Nil!64159) (Cons!64159 (h!70607 C!32258) (t!377694 List!64283)) )
))
(declare-fun s!2326 () List!64283)

(declare-fun lambda!324847 () Int)

(declare-fun flatMap!1507 ((Set Context!10756) Int) (Set Context!10756))

(declare-fun derivationStepZipperUp!1170 (Context!10756 C!32258) (Set Context!10756))

(assert (=> b!5951995 (= (flatMap!1507 z!1189 lambda!324847) (derivationStepZipperUp!1170 (h!70606 zl!343) (h!70607 s!2326)))))

(declare-datatypes ((Unit!157259 0))(
  ( (Unit!157260) )
))
(declare-fun lt!2313346 () Unit!157259)

(declare-fun lemmaFlatMapOnSingletonSet!1033 ((Set Context!10756) Context!10756 Int) Unit!157259)

(assert (=> b!5951995 (= lt!2313346 (lemmaFlatMapOnSingletonSet!1033 z!1189 (h!70606 zl!343) lambda!324847))))

(declare-fun b!5951996 () Bool)

(declare-fun res!2491475 () Bool)

(declare-fun e!3641116 () Bool)

(assert (=> b!5951996 (=> res!2491475 e!3641116)))

(assert (=> b!5951996 (= res!2491475 (not (is-Cons!64157 (exprs!5878 (h!70606 zl!343)))))))

(declare-fun b!5951997 () Bool)

(declare-fun res!2491492 () Bool)

(declare-fun e!3641118 () Bool)

(assert (=> b!5951997 (=> res!2491492 e!3641118)))

(declare-fun isEmpty!36039 (List!64281) Bool)

(assert (=> b!5951997 (= res!2491492 (not (isEmpty!36039 (t!377692 (exprs!5878 (h!70606 zl!343))))))))

(declare-fun b!5951998 () Bool)

(declare-fun res!2491490 () Bool)

(declare-fun e!3641117 () Bool)

(assert (=> b!5951998 (=> res!2491490 e!3641117)))

(declare-fun lt!2313334 () (Set Context!10756))

(declare-fun matchZipper!2030 ((Set Context!10756) List!64283) Bool)

(declare-fun derivationStepZipper!1975 ((Set Context!10756) C!32258) (Set Context!10756))

(assert (=> b!5951998 (= res!2491490 (not (= (matchZipper!2030 lt!2313334 s!2326) (matchZipper!2030 (derivationStepZipper!1975 lt!2313334 (h!70607 s!2326)) (t!377694 s!2326)))))))

(declare-fun b!5951999 () Bool)

(declare-fun e!3641111 () Bool)

(declare-fun tp_is_empty!41241 () Bool)

(assert (=> b!5951999 (= e!3641111 tp_is_empty!41241)))

(declare-fun b!5952000 () Bool)

(declare-fun e!3641107 () Bool)

(assert (=> b!5952000 (= e!3641107 e!3641117)))

(declare-fun res!2491488 () Bool)

(assert (=> b!5952000 (=> res!2491488 e!3641117)))

(declare-fun lt!2313335 () Bool)

(assert (=> b!5952000 (= res!2491488 (not (= lt!2313335 (matchZipper!2030 lt!2313350 (t!377694 s!2326)))))))

(declare-fun lt!2313348 () Bool)

(assert (=> b!5952000 (= lt!2313348 lt!2313335)))

(declare-fun e!3641113 () Bool)

(assert (=> b!5952000 (= lt!2313335 e!3641113)))

(declare-fun res!2491484 () Bool)

(assert (=> b!5952000 (=> res!2491484 e!3641113)))

(declare-fun lt!2313347 () Bool)

(assert (=> b!5952000 (= res!2491484 lt!2313347)))

(declare-fun lt!2313341 () (Set Context!10756))

(assert (=> b!5952000 (= lt!2313348 (matchZipper!2030 lt!2313341 (t!377694 s!2326)))))

(declare-fun lt!2313337 () (Set Context!10756))

(assert (=> b!5952000 (= lt!2313347 (matchZipper!2030 lt!2313337 (t!377694 s!2326)))))

(declare-fun lt!2313327 () Unit!157259)

(declare-fun lt!2313340 () (Set Context!10756))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!861 ((Set Context!10756) (Set Context!10756) List!64283) Unit!157259)

(assert (=> b!5952000 (= lt!2313327 (lemmaZipperConcatMatchesSameAsBothZippers!861 lt!2313337 lt!2313340 (t!377694 s!2326)))))

(declare-fun b!5952001 () Bool)

(declare-fun e!3641108 () Bool)

(declare-fun tp!1656192 () Bool)

(assert (=> b!5952001 (= e!3641108 (and tp_is_empty!41241 tp!1656192))))

(declare-fun b!5952002 () Bool)

(assert (=> b!5952002 (= e!3641113 (matchZipper!2030 lt!2313340 (t!377694 s!2326)))))

(declare-fun setNonEmpty!40452 () Bool)

(declare-fun setRes!40452 () Bool)

(declare-fun e!3641109 () Bool)

(declare-fun tp!1656196 () Bool)

(declare-fun setElem!40452 () Context!10756)

(declare-fun inv!83233 (Context!10756) Bool)

(assert (=> setNonEmpty!40452 (= setRes!40452 (and tp!1656196 (inv!83233 setElem!40452) e!3641109))))

(declare-fun setRest!40452 () (Set Context!10756))

(assert (=> setNonEmpty!40452 (= z!1189 (set.union (set.insert setElem!40452 (as set.empty (Set Context!10756))) setRest!40452))))

(declare-fun b!5952003 () Bool)

(declare-fun e!3641112 () Bool)

(declare-fun tp!1656195 () Bool)

(assert (=> b!5952003 (= e!3641112 tp!1656195)))

(declare-fun b!5952004 () Bool)

(assert (=> b!5952004 (= e!3641120 (not e!3641116))))

(declare-fun res!2491483 () Bool)

(assert (=> b!5952004 (=> res!2491483 e!3641116)))

(assert (=> b!5952004 (= res!2491483 (not (is-Cons!64158 zl!343)))))

(declare-fun lt!2313328 () Bool)

(declare-fun r!7292 () Regex!15994)

(declare-fun matchRSpec!3095 (Regex!15994 List!64283) Bool)

(assert (=> b!5952004 (= lt!2313328 (matchRSpec!3095 r!7292 s!2326))))

(declare-fun matchR!8177 (Regex!15994 List!64283) Bool)

(assert (=> b!5952004 (= lt!2313328 (matchR!8177 r!7292 s!2326))))

(declare-fun lt!2313336 () Unit!157259)

(declare-fun mainMatchTheorem!3095 (Regex!15994 List!64283) Unit!157259)

(assert (=> b!5952004 (= lt!2313336 (mainMatchTheorem!3095 r!7292 s!2326))))

(declare-fun b!5952005 () Bool)

(declare-fun e!3641114 () Bool)

(assert (=> b!5952005 (= e!3641119 e!3641114)))

(declare-fun res!2491477 () Bool)

(assert (=> b!5952005 (=> res!2491477 e!3641114)))

(declare-fun nullable!5989 (Regex!15994) Bool)

(assert (=> b!5952005 (= res!2491477 (not (nullable!5989 (regOne!32500 r!7292))))))

(declare-fun lt!2313345 () Context!10756)

(declare-fun derivationStepZipperDown!1244 (Regex!15994 Context!10756 C!32258) (Set Context!10756))

(assert (=> b!5952005 (= lt!2313340 (derivationStepZipperDown!1244 (regTwo!32500 r!7292) lt!2313345 (h!70607 s!2326)))))

(declare-fun lt!2313339 () Context!10756)

(assert (=> b!5952005 (= lt!2313337 (derivationStepZipperDown!1244 (regOne!32500 r!7292) lt!2313339 (h!70607 s!2326)))))

(declare-fun lt!2313332 () (Set Context!10756))

(assert (=> b!5952005 (= (flatMap!1507 lt!2313332 lambda!324847) (derivationStepZipperUp!1170 lt!2313339 (h!70607 s!2326)))))

(declare-fun lt!2313353 () Unit!157259)

(assert (=> b!5952005 (= lt!2313353 (lemmaFlatMapOnSingletonSet!1033 lt!2313332 lt!2313339 lambda!324847))))

(declare-fun lt!2313343 () Context!10756)

(assert (=> b!5952005 (= (flatMap!1507 lt!2313334 lambda!324847) (derivationStepZipperUp!1170 lt!2313343 (h!70607 s!2326)))))

(declare-fun lt!2313330 () Unit!157259)

(assert (=> b!5952005 (= lt!2313330 (lemmaFlatMapOnSingletonSet!1033 lt!2313334 lt!2313343 lambda!324847))))

(declare-fun lt!2313344 () (Set Context!10756))

(assert (=> b!5952005 (= lt!2313344 (derivationStepZipperUp!1170 lt!2313339 (h!70607 s!2326)))))

(declare-fun lt!2313329 () (Set Context!10756))

(assert (=> b!5952005 (= lt!2313329 (derivationStepZipperUp!1170 lt!2313343 (h!70607 s!2326)))))

(assert (=> b!5952005 (= lt!2313332 (set.insert lt!2313339 (as set.empty (Set Context!10756))))))

(declare-fun lt!2313351 () List!64281)

(assert (=> b!5952005 (= lt!2313339 (Context!10757 lt!2313351))))

(assert (=> b!5952005 (= lt!2313334 (set.insert lt!2313343 (as set.empty (Set Context!10756))))))

(assert (=> b!5952005 (= lt!2313343 (Context!10757 (Cons!64157 (regOne!32500 r!7292) lt!2313351)))))

(assert (=> b!5952005 (= lt!2313351 (Cons!64157 (regTwo!32500 r!7292) Nil!64157))))

(declare-fun b!5952006 () Bool)

(declare-fun res!2491476 () Bool)

(assert (=> b!5952006 (=> (not res!2491476) (not e!3641120))))

(declare-fun unfocusZipper!1736 (List!64282) Regex!15994)

(assert (=> b!5952006 (= res!2491476 (= r!7292 (unfocusZipper!1736 zl!343)))))

(declare-fun b!5952007 () Bool)

(declare-fun res!2491495 () Bool)

(assert (=> b!5952007 (=> res!2491495 e!3641117)))

(declare-fun lt!2313349 () Context!10756)

(declare-fun zipperDepth!243 (List!64282) Int)

(assert (=> b!5952007 (= res!2491495 (>= (zipperDepth!243 (Cons!64158 lt!2313343 Nil!64158)) (zipperDepth!243 (Cons!64158 lt!2313349 Nil!64158))))))

(declare-fun res!2491496 () Bool)

(assert (=> start!604408 (=> (not res!2491496) (not e!3641120))))

(declare-fun validRegex!7730 (Regex!15994) Bool)

(assert (=> start!604408 (= res!2491496 (validRegex!7730 r!7292))))

(assert (=> start!604408 e!3641120))

(assert (=> start!604408 e!3641111))

(declare-fun condSetEmpty!40452 () Bool)

(assert (=> start!604408 (= condSetEmpty!40452 (= z!1189 (as set.empty (Set Context!10756))))))

(assert (=> start!604408 setRes!40452))

(declare-fun e!3641110 () Bool)

(assert (=> start!604408 e!3641110))

(assert (=> start!604408 e!3641108))

(declare-fun b!5952008 () Bool)

(assert (=> b!5952008 (= e!3641118 e!3641115)))

(declare-fun res!2491494 () Bool)

(assert (=> b!5952008 (=> res!2491494 e!3641115)))

(declare-fun lt!2313331 () (Set Context!10756))

(assert (=> b!5952008 (= res!2491494 (not (= lt!2313331 lt!2313342)))))

(assert (=> b!5952008 (= lt!2313342 (derivationStepZipperDown!1244 r!7292 lt!2313345 (h!70607 s!2326)))))

(assert (=> b!5952008 (= lt!2313345 (Context!10757 Nil!64157))))

(assert (=> b!5952008 (= lt!2313331 (derivationStepZipperUp!1170 lt!2313349 (h!70607 s!2326)))))

(assert (=> b!5952008 (= lt!2313349 (Context!10757 (Cons!64157 r!7292 Nil!64157)))))

(assert (=> b!5952008 (= lt!2313350 (derivationStepZipper!1975 z!1189 (h!70607 s!2326)))))

(declare-fun b!5952009 () Bool)

(assert (=> b!5952009 (= e!3641117 (inv!83233 lt!2313349))))

(declare-fun b!5952010 () Bool)

(declare-fun res!2491485 () Bool)

(assert (=> b!5952010 (=> res!2491485 e!3641117)))

(assert (=> b!5952010 (= res!2491485 (or (not (= lt!2313329 (set.union lt!2313337 lt!2313344))) (not (= lt!2313329 lt!2313341)) (not (= lt!2313329 lt!2313350))))))

(assert (=> b!5952011 (= e!3641116 e!3641118)))

(declare-fun res!2491482 () Bool)

(assert (=> b!5952011 (=> res!2491482 e!3641118)))

(declare-fun lt!2313333 () Bool)

(assert (=> b!5952011 (= res!2491482 (or (not (= lt!2313328 lt!2313333)) (is-Nil!64159 s!2326)))))

(declare-fun Exists!3064 (Int) Bool)

(assert (=> b!5952011 (= (Exists!3064 lambda!324845) (Exists!3064 lambda!324846))))

(declare-fun lt!2313338 () Unit!157259)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1601 (Regex!15994 Regex!15994 List!64283) Unit!157259)

(assert (=> b!5952011 (= lt!2313338 (lemmaExistCutMatchRandMatchRSpecEquivalent!1601 (regOne!32500 r!7292) (regTwo!32500 r!7292) s!2326))))

(assert (=> b!5952011 (= lt!2313333 (Exists!3064 lambda!324845))))

(declare-datatypes ((tuple2!65946 0))(
  ( (tuple2!65947 (_1!36276 List!64283) (_2!36276 List!64283)) )
))
(declare-datatypes ((Option!15885 0))(
  ( (None!15884) (Some!15884 (v!51987 tuple2!65946)) )
))
(declare-fun isDefined!12588 (Option!15885) Bool)

(declare-fun findConcatSeparation!2299 (Regex!15994 Regex!15994 List!64283 List!64283 List!64283) Option!15885)

(assert (=> b!5952011 (= lt!2313333 (isDefined!12588 (findConcatSeparation!2299 (regOne!32500 r!7292) (regTwo!32500 r!7292) Nil!64159 s!2326 s!2326)))))

(declare-fun lt!2313352 () Unit!157259)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2063 (Regex!15994 Regex!15994 List!64283) Unit!157259)

(assert (=> b!5952011 (= lt!2313352 (lemmaFindConcatSeparationEquivalentToExists!2063 (regOne!32500 r!7292) (regTwo!32500 r!7292) s!2326))))

(declare-fun b!5952012 () Bool)

(assert (=> b!5952012 (= e!3641114 e!3641107)))

(declare-fun res!2491487 () Bool)

(assert (=> b!5952012 (=> res!2491487 e!3641107)))

(assert (=> b!5952012 (= res!2491487 (not (= lt!2313350 lt!2313341)))))

(assert (=> b!5952012 (= lt!2313341 (set.union lt!2313337 lt!2313340))))

(declare-fun b!5952013 () Bool)

(declare-fun res!2491481 () Bool)

(assert (=> b!5952013 (=> res!2491481 e!3641117)))

(assert (=> b!5952013 (= res!2491481 (not (= (matchZipper!2030 lt!2313332 s!2326) (matchZipper!2030 (derivationStepZipper!1975 lt!2313332 (h!70607 s!2326)) (t!377694 s!2326)))))))

(declare-fun b!5952014 () Bool)

(declare-fun tp!1656193 () Bool)

(declare-fun tp!1656189 () Bool)

(assert (=> b!5952014 (= e!3641111 (and tp!1656193 tp!1656189))))

(declare-fun b!5952015 () Bool)

(declare-fun res!2491489 () Bool)

(assert (=> b!5952015 (=> res!2491489 e!3641116)))

(assert (=> b!5952015 (= res!2491489 (or (is-EmptyExpr!15994 r!7292) (is-EmptyLang!15994 r!7292) (is-ElementMatch!15994 r!7292) (is-Union!15994 r!7292) (not (is-Concat!24839 r!7292))))))

(declare-fun b!5952016 () Bool)

(declare-fun tp!1656191 () Bool)

(assert (=> b!5952016 (= e!3641110 (and (inv!83233 (h!70606 zl!343)) e!3641112 tp!1656191))))

(declare-fun b!5952017 () Bool)

(declare-fun tp!1656194 () Bool)

(assert (=> b!5952017 (= e!3641111 tp!1656194)))

(declare-fun setIsEmpty!40452 () Bool)

(assert (=> setIsEmpty!40452 setRes!40452))

(declare-fun b!5952018 () Bool)

(declare-fun tp!1656198 () Bool)

(declare-fun tp!1656197 () Bool)

(assert (=> b!5952018 (= e!3641111 (and tp!1656198 tp!1656197))))

(declare-fun b!5952019 () Bool)

(declare-fun res!2491479 () Bool)

(assert (=> b!5952019 (=> res!2491479 e!3641117)))

(declare-fun contextDepth!142 (Context!10756) Int)

(assert (=> b!5952019 (= res!2491479 (>= (contextDepth!142 lt!2313343) (contextDepth!142 lt!2313349)))))

(declare-fun b!5952020 () Bool)

(declare-fun res!2491486 () Bool)

(assert (=> b!5952020 (=> res!2491486 e!3641116)))

(declare-fun isEmpty!36040 (List!64282) Bool)

(assert (=> b!5952020 (= res!2491486 (not (isEmpty!36040 (t!377693 zl!343))))))

(declare-fun b!5952021 () Bool)

(declare-fun res!2491491 () Bool)

(assert (=> b!5952021 (=> res!2491491 e!3641116)))

(declare-fun generalisedConcat!1591 (List!64281) Regex!15994)

(assert (=> b!5952021 (= res!2491491 (not (= r!7292 (generalisedConcat!1591 (exprs!5878 (h!70606 zl!343))))))))

(declare-fun b!5952022 () Bool)

(declare-fun res!2491480 () Bool)

(assert (=> b!5952022 (=> res!2491480 e!3641116)))

(declare-fun generalisedUnion!1838 (List!64281) Regex!15994)

(declare-fun unfocusZipperList!1415 (List!64282) List!64281)

(assert (=> b!5952022 (= res!2491480 (not (= r!7292 (generalisedUnion!1838 (unfocusZipperList!1415 zl!343)))))))

(declare-fun b!5952023 () Bool)

(declare-fun tp!1656190 () Bool)

(assert (=> b!5952023 (= e!3641109 tp!1656190)))

(assert (= (and start!604408 res!2491496) b!5951994))

(assert (= (and b!5951994 res!2491493) b!5952006))

(assert (= (and b!5952006 res!2491476) b!5952004))

(assert (= (and b!5952004 (not res!2491483)) b!5952020))

(assert (= (and b!5952020 (not res!2491486)) b!5952021))

(assert (= (and b!5952021 (not res!2491491)) b!5951996))

(assert (= (and b!5951996 (not res!2491475)) b!5952022))

(assert (= (and b!5952022 (not res!2491480)) b!5952015))

(assert (= (and b!5952015 (not res!2491489)) b!5952011))

(assert (= (and b!5952011 (not res!2491482)) b!5951997))

(assert (= (and b!5951997 (not res!2491492)) b!5952008))

(assert (= (and b!5952008 (not res!2491494)) b!5951995))

(assert (= (and b!5951995 (not res!2491478)) b!5952005))

(assert (= (and b!5952005 (not res!2491477)) b!5952012))

(assert (= (and b!5952012 (not res!2491487)) b!5952000))

(assert (= (and b!5952000 (not res!2491484)) b!5952002))

(assert (= (and b!5952000 (not res!2491488)) b!5952010))

(assert (= (and b!5952010 (not res!2491485)) b!5951998))

(assert (= (and b!5951998 (not res!2491490)) b!5952013))

(assert (= (and b!5952013 (not res!2491481)) b!5952019))

(assert (= (and b!5952019 (not res!2491479)) b!5952007))

(assert (= (and b!5952007 (not res!2491495)) b!5952009))

(assert (= (and start!604408 (is-ElementMatch!15994 r!7292)) b!5951999))

(assert (= (and start!604408 (is-Concat!24839 r!7292)) b!5952018))

(assert (= (and start!604408 (is-Star!15994 r!7292)) b!5952017))

(assert (= (and start!604408 (is-Union!15994 r!7292)) b!5952014))

(assert (= (and start!604408 condSetEmpty!40452) setIsEmpty!40452))

(assert (= (and start!604408 (not condSetEmpty!40452)) setNonEmpty!40452))

(assert (= setNonEmpty!40452 b!5952023))

(assert (= b!5952016 b!5952003))

(assert (= (and start!604408 (is-Cons!64158 zl!343)) b!5952016))

(assert (= (and start!604408 (is-Cons!64159 s!2326)) b!5952001))

(declare-fun m!6839664 () Bool)

(assert (=> b!5952020 m!6839664))

(declare-fun m!6839666 () Bool)

(assert (=> b!5952008 m!6839666))

(declare-fun m!6839668 () Bool)

(assert (=> b!5952008 m!6839668))

(declare-fun m!6839670 () Bool)

(assert (=> b!5952008 m!6839670))

(declare-fun m!6839672 () Bool)

(assert (=> setNonEmpty!40452 m!6839672))

(declare-fun m!6839674 () Bool)

(assert (=> b!5952005 m!6839674))

(declare-fun m!6839676 () Bool)

(assert (=> b!5952005 m!6839676))

(declare-fun m!6839678 () Bool)

(assert (=> b!5952005 m!6839678))

(declare-fun m!6839680 () Bool)

(assert (=> b!5952005 m!6839680))

(declare-fun m!6839682 () Bool)

(assert (=> b!5952005 m!6839682))

(declare-fun m!6839684 () Bool)

(assert (=> b!5952005 m!6839684))

(declare-fun m!6839686 () Bool)

(assert (=> b!5952005 m!6839686))

(declare-fun m!6839688 () Bool)

(assert (=> b!5952005 m!6839688))

(declare-fun m!6839690 () Bool)

(assert (=> b!5952005 m!6839690))

(declare-fun m!6839692 () Bool)

(assert (=> b!5952005 m!6839692))

(declare-fun m!6839694 () Bool)

(assert (=> b!5952005 m!6839694))

(declare-fun m!6839696 () Bool)

(assert (=> b!5952022 m!6839696))

(assert (=> b!5952022 m!6839696))

(declare-fun m!6839698 () Bool)

(assert (=> b!5952022 m!6839698))

(declare-fun m!6839700 () Bool)

(assert (=> b!5951998 m!6839700))

(declare-fun m!6839702 () Bool)

(assert (=> b!5951998 m!6839702))

(assert (=> b!5951998 m!6839702))

(declare-fun m!6839704 () Bool)

(assert (=> b!5951998 m!6839704))

(declare-fun m!6839706 () Bool)

(assert (=> b!5951995 m!6839706))

(declare-fun m!6839708 () Bool)

(assert (=> b!5951995 m!6839708))

(declare-fun m!6839710 () Bool)

(assert (=> b!5951995 m!6839710))

(declare-fun m!6839712 () Bool)

(assert (=> b!5952011 m!6839712))

(declare-fun m!6839714 () Bool)

(assert (=> b!5952011 m!6839714))

(declare-fun m!6839716 () Bool)

(assert (=> b!5952011 m!6839716))

(assert (=> b!5952011 m!6839716))

(assert (=> b!5952011 m!6839712))

(declare-fun m!6839718 () Bool)

(assert (=> b!5952011 m!6839718))

(declare-fun m!6839720 () Bool)

(assert (=> b!5952011 m!6839720))

(declare-fun m!6839722 () Bool)

(assert (=> b!5952011 m!6839722))

(declare-fun m!6839724 () Bool)

(assert (=> start!604408 m!6839724))

(declare-fun m!6839726 () Bool)

(assert (=> b!5952006 m!6839726))

(declare-fun m!6839728 () Bool)

(assert (=> b!5952004 m!6839728))

(declare-fun m!6839730 () Bool)

(assert (=> b!5952004 m!6839730))

(declare-fun m!6839732 () Bool)

(assert (=> b!5952004 m!6839732))

(declare-fun m!6839734 () Bool)

(assert (=> b!5952021 m!6839734))

(declare-fun m!6839736 () Bool)

(assert (=> b!5952019 m!6839736))

(declare-fun m!6839738 () Bool)

(assert (=> b!5952019 m!6839738))

(declare-fun m!6839740 () Bool)

(assert (=> b!5952000 m!6839740))

(declare-fun m!6839742 () Bool)

(assert (=> b!5952000 m!6839742))

(declare-fun m!6839744 () Bool)

(assert (=> b!5952000 m!6839744))

(declare-fun m!6839746 () Bool)

(assert (=> b!5952000 m!6839746))

(declare-fun m!6839748 () Bool)

(assert (=> b!5951994 m!6839748))

(declare-fun m!6839750 () Bool)

(assert (=> b!5952002 m!6839750))

(declare-fun m!6839752 () Bool)

(assert (=> b!5952016 m!6839752))

(declare-fun m!6839754 () Bool)

(assert (=> b!5952007 m!6839754))

(declare-fun m!6839756 () Bool)

(assert (=> b!5952007 m!6839756))

(declare-fun m!6839758 () Bool)

(assert (=> b!5952013 m!6839758))

(declare-fun m!6839760 () Bool)

(assert (=> b!5952013 m!6839760))

(assert (=> b!5952013 m!6839760))

(declare-fun m!6839762 () Bool)

(assert (=> b!5952013 m!6839762))

(declare-fun m!6839764 () Bool)

(assert (=> b!5951997 m!6839764))

(declare-fun m!6839766 () Bool)

(assert (=> b!5952009 m!6839766))

(push 1)

(assert tp_is_empty!41241)

(assert (not b!5951997))

(assert (not b!5952009))

(assert (not b!5952003))

(assert (not b!5952002))

(assert (not b!5952014))

(assert (not b!5952007))

(assert (not b!5951995))

(assert (not b!5952019))

(assert (not b!5951998))

(assert (not b!5952013))

(assert (not b!5952021))

(assert (not b!5952022))

(assert (not b!5952011))

(assert (not b!5952020))

(assert (not b!5952008))

(assert (not b!5952004))

(assert (not b!5952001))

(assert (not b!5952005))

(assert (not b!5951994))

(assert (not b!5952017))

(assert (not b!5952018))

(assert (not start!604408))

(assert (not b!5952023))

(assert (not setNonEmpty!40452))

(assert (not b!5952006))

(assert (not b!5952016))

(assert (not b!5952000))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1866039 () Bool)

(declare-fun c!1059177 () Bool)

(declare-fun isEmpty!36043 (List!64283) Bool)

(assert (=> d!1866039 (= c!1059177 (isEmpty!36043 (t!377694 s!2326)))))

(declare-fun e!3641171 () Bool)

(assert (=> d!1866039 (= (matchZipper!2030 lt!2313340 (t!377694 s!2326)) e!3641171)))

(declare-fun b!5952142 () Bool)

(declare-fun nullableZipper!1801 ((Set Context!10756)) Bool)

(assert (=> b!5952142 (= e!3641171 (nullableZipper!1801 lt!2313340))))

(declare-fun b!5952143 () Bool)

(declare-fun head!12529 (List!64283) C!32258)

(declare-fun tail!11614 (List!64283) List!64283)

(assert (=> b!5952143 (= e!3641171 (matchZipper!2030 (derivationStepZipper!1975 lt!2313340 (head!12529 (t!377694 s!2326))) (tail!11614 (t!377694 s!2326))))))

(assert (= (and d!1866039 c!1059177) b!5952142))

(assert (= (and d!1866039 (not c!1059177)) b!5952143))

(declare-fun m!6839872 () Bool)

(assert (=> d!1866039 m!6839872))

(declare-fun m!6839874 () Bool)

(assert (=> b!5952142 m!6839874))

(declare-fun m!6839876 () Bool)

(assert (=> b!5952143 m!6839876))

(assert (=> b!5952143 m!6839876))

(declare-fun m!6839878 () Bool)

(assert (=> b!5952143 m!6839878))

(declare-fun m!6839880 () Bool)

(assert (=> b!5952143 m!6839880))

(assert (=> b!5952143 m!6839878))

(assert (=> b!5952143 m!6839880))

(declare-fun m!6839882 () Bool)

(assert (=> b!5952143 m!6839882))

(assert (=> b!5952002 d!1866039))

(declare-fun b!5952164 () Bool)

(declare-fun e!3641185 () Bool)

(declare-fun e!3641186 () Bool)

(assert (=> b!5952164 (= e!3641185 e!3641186)))

(declare-fun c!1059187 () Bool)

(assert (=> b!5952164 (= c!1059187 (isEmpty!36039 (exprs!5878 (h!70606 zl!343))))))

(declare-fun b!5952165 () Bool)

(declare-fun e!3641189 () Bool)

(declare-fun lt!2313437 () Regex!15994)

(declare-fun head!12530 (List!64281) Regex!15994)

(assert (=> b!5952165 (= e!3641189 (= lt!2313437 (head!12530 (exprs!5878 (h!70606 zl!343)))))))

(declare-fun b!5952166 () Bool)

(assert (=> b!5952166 (= e!3641186 e!3641189)))

(declare-fun c!1059189 () Bool)

(declare-fun tail!11615 (List!64281) List!64281)

(assert (=> b!5952166 (= c!1059189 (isEmpty!36039 (tail!11615 (exprs!5878 (h!70606 zl!343)))))))

(declare-fun b!5952167 () Bool)

(declare-fun e!3641188 () Regex!15994)

(assert (=> b!5952167 (= e!3641188 EmptyExpr!15994)))

(declare-fun b!5952168 () Bool)

(declare-fun isEmptyExpr!1422 (Regex!15994) Bool)

(assert (=> b!5952168 (= e!3641186 (isEmptyExpr!1422 lt!2313437))))

(declare-fun b!5952169 () Bool)

(declare-fun e!3641184 () Bool)

(assert (=> b!5952169 (= e!3641184 (isEmpty!36039 (t!377692 (exprs!5878 (h!70606 zl!343)))))))

(declare-fun d!1866041 () Bool)

(assert (=> d!1866041 e!3641185))

(declare-fun res!2491579 () Bool)

(assert (=> d!1866041 (=> (not res!2491579) (not e!3641185))))

(assert (=> d!1866041 (= res!2491579 (validRegex!7730 lt!2313437))))

(declare-fun e!3641187 () Regex!15994)

(assert (=> d!1866041 (= lt!2313437 e!3641187)))

(declare-fun c!1059188 () Bool)

(assert (=> d!1866041 (= c!1059188 e!3641184)))

(declare-fun res!2491580 () Bool)

(assert (=> d!1866041 (=> (not res!2491580) (not e!3641184))))

(assert (=> d!1866041 (= res!2491580 (is-Cons!64157 (exprs!5878 (h!70606 zl!343))))))

(declare-fun lambda!324865 () Int)

(declare-fun forall!15079 (List!64281 Int) Bool)

(assert (=> d!1866041 (forall!15079 (exprs!5878 (h!70606 zl!343)) lambda!324865)))

(assert (=> d!1866041 (= (generalisedConcat!1591 (exprs!5878 (h!70606 zl!343))) lt!2313437)))

(declare-fun b!5952170 () Bool)

(declare-fun isConcat!945 (Regex!15994) Bool)

(assert (=> b!5952170 (= e!3641189 (isConcat!945 lt!2313437))))

(declare-fun b!5952171 () Bool)

(assert (=> b!5952171 (= e!3641187 (h!70605 (exprs!5878 (h!70606 zl!343))))))

(declare-fun b!5952172 () Bool)

(assert (=> b!5952172 (= e!3641188 (Concat!24839 (h!70605 (exprs!5878 (h!70606 zl!343))) (generalisedConcat!1591 (t!377692 (exprs!5878 (h!70606 zl!343))))))))

(declare-fun b!5952173 () Bool)

(assert (=> b!5952173 (= e!3641187 e!3641188)))

(declare-fun c!1059186 () Bool)

(assert (=> b!5952173 (= c!1059186 (is-Cons!64157 (exprs!5878 (h!70606 zl!343))))))

(assert (= (and d!1866041 res!2491580) b!5952169))

(assert (= (and d!1866041 c!1059188) b!5952171))

(assert (= (and d!1866041 (not c!1059188)) b!5952173))

(assert (= (and b!5952173 c!1059186) b!5952172))

(assert (= (and b!5952173 (not c!1059186)) b!5952167))

(assert (= (and d!1866041 res!2491579) b!5952164))

(assert (= (and b!5952164 c!1059187) b!5952168))

(assert (= (and b!5952164 (not c!1059187)) b!5952166))

(assert (= (and b!5952166 c!1059189) b!5952165))

(assert (= (and b!5952166 (not c!1059189)) b!5952170))

(assert (=> b!5952169 m!6839764))

(declare-fun m!6839884 () Bool)

(assert (=> b!5952165 m!6839884))

(declare-fun m!6839886 () Bool)

(assert (=> b!5952172 m!6839886))

(declare-fun m!6839888 () Bool)

(assert (=> b!5952168 m!6839888))

(declare-fun m!6839890 () Bool)

(assert (=> b!5952170 m!6839890))

(declare-fun m!6839892 () Bool)

(assert (=> d!1866041 m!6839892))

(declare-fun m!6839894 () Bool)

(assert (=> d!1866041 m!6839894))

(declare-fun m!6839896 () Bool)

(assert (=> b!5952166 m!6839896))

(assert (=> b!5952166 m!6839896))

(declare-fun m!6839898 () Bool)

(assert (=> b!5952166 m!6839898))

(declare-fun m!6839900 () Bool)

(assert (=> b!5952164 m!6839900))

(assert (=> b!5952021 d!1866041))

(declare-fun b!5952192 () Bool)

(declare-fun e!3641200 () Option!15885)

(assert (=> b!5952192 (= e!3641200 (Some!15884 (tuple2!65947 Nil!64159 s!2326)))))

(declare-fun b!5952193 () Bool)

(declare-fun e!3641204 () Bool)

(declare-fun lt!2313444 () Option!15885)

(assert (=> b!5952193 (= e!3641204 (not (isDefined!12588 lt!2313444)))))

(declare-fun d!1866043 () Bool)

(assert (=> d!1866043 e!3641204))

(declare-fun res!2491592 () Bool)

(assert (=> d!1866043 (=> res!2491592 e!3641204)))

(declare-fun e!3641201 () Bool)

(assert (=> d!1866043 (= res!2491592 e!3641201)))

(declare-fun res!2491594 () Bool)

(assert (=> d!1866043 (=> (not res!2491594) (not e!3641201))))

(assert (=> d!1866043 (= res!2491594 (isDefined!12588 lt!2313444))))

(assert (=> d!1866043 (= lt!2313444 e!3641200)))

(declare-fun c!1059195 () Bool)

(declare-fun e!3641203 () Bool)

(assert (=> d!1866043 (= c!1059195 e!3641203)))

(declare-fun res!2491591 () Bool)

(assert (=> d!1866043 (=> (not res!2491591) (not e!3641203))))

(assert (=> d!1866043 (= res!2491591 (matchR!8177 (regOne!32500 r!7292) Nil!64159))))

(assert (=> d!1866043 (validRegex!7730 (regOne!32500 r!7292))))

(assert (=> d!1866043 (= (findConcatSeparation!2299 (regOne!32500 r!7292) (regTwo!32500 r!7292) Nil!64159 s!2326 s!2326) lt!2313444)))

(declare-fun b!5952194 () Bool)

(declare-fun ++!14091 (List!64283 List!64283) List!64283)

(declare-fun get!22104 (Option!15885) tuple2!65946)

(assert (=> b!5952194 (= e!3641201 (= (++!14091 (_1!36276 (get!22104 lt!2313444)) (_2!36276 (get!22104 lt!2313444))) s!2326))))

(declare-fun b!5952195 () Bool)

(assert (=> b!5952195 (= e!3641203 (matchR!8177 (regTwo!32500 r!7292) s!2326))))

(declare-fun b!5952196 () Bool)

(declare-fun res!2491593 () Bool)

(assert (=> b!5952196 (=> (not res!2491593) (not e!3641201))))

(assert (=> b!5952196 (= res!2491593 (matchR!8177 (regOne!32500 r!7292) (_1!36276 (get!22104 lt!2313444))))))

(declare-fun b!5952197 () Bool)

(declare-fun e!3641202 () Option!15885)

(assert (=> b!5952197 (= e!3641200 e!3641202)))

(declare-fun c!1059194 () Bool)

(assert (=> b!5952197 (= c!1059194 (is-Nil!64159 s!2326))))

(declare-fun b!5952198 () Bool)

(declare-fun res!2491595 () Bool)

(assert (=> b!5952198 (=> (not res!2491595) (not e!3641201))))

(assert (=> b!5952198 (= res!2491595 (matchR!8177 (regTwo!32500 r!7292) (_2!36276 (get!22104 lt!2313444))))))

(declare-fun b!5952199 () Bool)

(declare-fun lt!2313445 () Unit!157259)

(declare-fun lt!2313446 () Unit!157259)

(assert (=> b!5952199 (= lt!2313445 lt!2313446)))

(assert (=> b!5952199 (= (++!14091 (++!14091 Nil!64159 (Cons!64159 (h!70607 s!2326) Nil!64159)) (t!377694 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2186 (List!64283 C!32258 List!64283 List!64283) Unit!157259)

(assert (=> b!5952199 (= lt!2313446 (lemmaMoveElementToOtherListKeepsConcatEq!2186 Nil!64159 (h!70607 s!2326) (t!377694 s!2326) s!2326))))

(assert (=> b!5952199 (= e!3641202 (findConcatSeparation!2299 (regOne!32500 r!7292) (regTwo!32500 r!7292) (++!14091 Nil!64159 (Cons!64159 (h!70607 s!2326) Nil!64159)) (t!377694 s!2326) s!2326))))

(declare-fun b!5952200 () Bool)

(assert (=> b!5952200 (= e!3641202 None!15884)))

(assert (= (and d!1866043 res!2491591) b!5952195))

(assert (= (and d!1866043 c!1059195) b!5952192))

(assert (= (and d!1866043 (not c!1059195)) b!5952197))

(assert (= (and b!5952197 c!1059194) b!5952200))

(assert (= (and b!5952197 (not c!1059194)) b!5952199))

(assert (= (and d!1866043 res!2491594) b!5952196))

(assert (= (and b!5952196 res!2491593) b!5952198))

(assert (= (and b!5952198 res!2491595) b!5952194))

(assert (= (and d!1866043 (not res!2491592)) b!5952193))

(declare-fun m!6839902 () Bool)

(assert (=> b!5952195 m!6839902))

(declare-fun m!6839904 () Bool)

(assert (=> b!5952196 m!6839904))

(declare-fun m!6839906 () Bool)

(assert (=> b!5952196 m!6839906))

(declare-fun m!6839908 () Bool)

(assert (=> b!5952199 m!6839908))

(assert (=> b!5952199 m!6839908))

(declare-fun m!6839910 () Bool)

(assert (=> b!5952199 m!6839910))

(declare-fun m!6839912 () Bool)

(assert (=> b!5952199 m!6839912))

(assert (=> b!5952199 m!6839908))

(declare-fun m!6839914 () Bool)

(assert (=> b!5952199 m!6839914))

(assert (=> b!5952198 m!6839904))

(declare-fun m!6839916 () Bool)

(assert (=> b!5952198 m!6839916))

(declare-fun m!6839918 () Bool)

(assert (=> b!5952193 m!6839918))

(assert (=> d!1866043 m!6839918))

(declare-fun m!6839920 () Bool)

(assert (=> d!1866043 m!6839920))

(declare-fun m!6839922 () Bool)

(assert (=> d!1866043 m!6839922))

(assert (=> b!5952194 m!6839904))

(declare-fun m!6839924 () Bool)

(assert (=> b!5952194 m!6839924))

(assert (=> b!5952011 d!1866043))

(declare-fun d!1866045 () Bool)

(declare-fun choose!44850 (Int) Bool)

(assert (=> d!1866045 (= (Exists!3064 lambda!324845) (choose!44850 lambda!324845))))

(declare-fun bs!1410222 () Bool)

(assert (= bs!1410222 d!1866045))

(declare-fun m!6839926 () Bool)

(assert (=> bs!1410222 m!6839926))

(assert (=> b!5952011 d!1866045))

(declare-fun d!1866047 () Bool)

(assert (=> d!1866047 (= (Exists!3064 lambda!324846) (choose!44850 lambda!324846))))

(declare-fun bs!1410223 () Bool)

(assert (= bs!1410223 d!1866047))

(declare-fun m!6839928 () Bool)

(assert (=> bs!1410223 m!6839928))

(assert (=> b!5952011 d!1866047))

(declare-fun bs!1410224 () Bool)

(declare-fun d!1866049 () Bool)

(assert (= bs!1410224 (and d!1866049 b!5952011)))

(declare-fun lambda!324868 () Int)

(assert (=> bs!1410224 (= lambda!324868 lambda!324845)))

(assert (=> bs!1410224 (not (= lambda!324868 lambda!324846))))

(assert (=> d!1866049 true))

(assert (=> d!1866049 true))

(assert (=> d!1866049 true))

(assert (=> d!1866049 (= (isDefined!12588 (findConcatSeparation!2299 (regOne!32500 r!7292) (regTwo!32500 r!7292) Nil!64159 s!2326 s!2326)) (Exists!3064 lambda!324868))))

(declare-fun lt!2313449 () Unit!157259)

(declare-fun choose!44851 (Regex!15994 Regex!15994 List!64283) Unit!157259)

(assert (=> d!1866049 (= lt!2313449 (choose!44851 (regOne!32500 r!7292) (regTwo!32500 r!7292) s!2326))))

(assert (=> d!1866049 (validRegex!7730 (regOne!32500 r!7292))))

(assert (=> d!1866049 (= (lemmaFindConcatSeparationEquivalentToExists!2063 (regOne!32500 r!7292) (regTwo!32500 r!7292) s!2326) lt!2313449)))

(declare-fun bs!1410225 () Bool)

(assert (= bs!1410225 d!1866049))

(assert (=> bs!1410225 m!6839712))

(declare-fun m!6839930 () Bool)

(assert (=> bs!1410225 m!6839930))

(assert (=> bs!1410225 m!6839922))

(declare-fun m!6839932 () Bool)

(assert (=> bs!1410225 m!6839932))

(assert (=> bs!1410225 m!6839712))

(assert (=> bs!1410225 m!6839714))

(assert (=> b!5952011 d!1866049))

(declare-fun bs!1410226 () Bool)

(declare-fun d!1866051 () Bool)

(assert (= bs!1410226 (and d!1866051 b!5952011)))

(declare-fun lambda!324873 () Int)

(assert (=> bs!1410226 (= lambda!324873 lambda!324845)))

(assert (=> bs!1410226 (not (= lambda!324873 lambda!324846))))

(declare-fun bs!1410227 () Bool)

(assert (= bs!1410227 (and d!1866051 d!1866049)))

(assert (=> bs!1410227 (= lambda!324873 lambda!324868)))

(assert (=> d!1866051 true))

(assert (=> d!1866051 true))

(assert (=> d!1866051 true))

(declare-fun lambda!324874 () Int)

(assert (=> bs!1410226 (not (= lambda!324874 lambda!324845))))

(assert (=> bs!1410226 (= lambda!324874 lambda!324846)))

(assert (=> bs!1410227 (not (= lambda!324874 lambda!324868))))

(declare-fun bs!1410228 () Bool)

(assert (= bs!1410228 d!1866051))

(assert (=> bs!1410228 (not (= lambda!324874 lambda!324873))))

(assert (=> d!1866051 true))

(assert (=> d!1866051 true))

(assert (=> d!1866051 true))

(assert (=> d!1866051 (= (Exists!3064 lambda!324873) (Exists!3064 lambda!324874))))

(declare-fun lt!2313452 () Unit!157259)

(declare-fun choose!44852 (Regex!15994 Regex!15994 List!64283) Unit!157259)

(assert (=> d!1866051 (= lt!2313452 (choose!44852 (regOne!32500 r!7292) (regTwo!32500 r!7292) s!2326))))

(assert (=> d!1866051 (validRegex!7730 (regOne!32500 r!7292))))

(assert (=> d!1866051 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1601 (regOne!32500 r!7292) (regTwo!32500 r!7292) s!2326) lt!2313452)))

(declare-fun m!6839934 () Bool)

(assert (=> bs!1410228 m!6839934))

(declare-fun m!6839936 () Bool)

(assert (=> bs!1410228 m!6839936))

(declare-fun m!6839938 () Bool)

(assert (=> bs!1410228 m!6839938))

(assert (=> bs!1410228 m!6839922))

(assert (=> b!5952011 d!1866051))

(declare-fun d!1866053 () Bool)

(declare-fun isEmpty!36044 (Option!15885) Bool)

(assert (=> d!1866053 (= (isDefined!12588 (findConcatSeparation!2299 (regOne!32500 r!7292) (regTwo!32500 r!7292) Nil!64159 s!2326 s!2326)) (not (isEmpty!36044 (findConcatSeparation!2299 (regOne!32500 r!7292) (regTwo!32500 r!7292) Nil!64159 s!2326 s!2326))))))

(declare-fun bs!1410229 () Bool)

(assert (= bs!1410229 d!1866053))

(assert (=> bs!1410229 m!6839712))

(declare-fun m!6839940 () Bool)

(assert (=> bs!1410229 m!6839940))

(assert (=> b!5952011 d!1866053))

(declare-fun d!1866055 () Bool)

(declare-fun c!1059196 () Bool)

(assert (=> d!1866055 (= c!1059196 (isEmpty!36043 s!2326))))

(declare-fun e!3641211 () Bool)

(assert (=> d!1866055 (= (matchZipper!2030 lt!2313332 s!2326) e!3641211)))

(declare-fun b!5952213 () Bool)

(assert (=> b!5952213 (= e!3641211 (nullableZipper!1801 lt!2313332))))

(declare-fun b!5952214 () Bool)

(assert (=> b!5952214 (= e!3641211 (matchZipper!2030 (derivationStepZipper!1975 lt!2313332 (head!12529 s!2326)) (tail!11614 s!2326)))))

(assert (= (and d!1866055 c!1059196) b!5952213))

(assert (= (and d!1866055 (not c!1059196)) b!5952214))

(declare-fun m!6839942 () Bool)

(assert (=> d!1866055 m!6839942))

(declare-fun m!6839944 () Bool)

(assert (=> b!5952213 m!6839944))

(declare-fun m!6839946 () Bool)

(assert (=> b!5952214 m!6839946))

(assert (=> b!5952214 m!6839946))

(declare-fun m!6839948 () Bool)

(assert (=> b!5952214 m!6839948))

(declare-fun m!6839950 () Bool)

(assert (=> b!5952214 m!6839950))

(assert (=> b!5952214 m!6839948))

(assert (=> b!5952214 m!6839950))

(declare-fun m!6839952 () Bool)

(assert (=> b!5952214 m!6839952))

(assert (=> b!5952013 d!1866055))

(declare-fun d!1866057 () Bool)

(declare-fun c!1059197 () Bool)

(assert (=> d!1866057 (= c!1059197 (isEmpty!36043 (t!377694 s!2326)))))

(declare-fun e!3641212 () Bool)

(assert (=> d!1866057 (= (matchZipper!2030 (derivationStepZipper!1975 lt!2313332 (h!70607 s!2326)) (t!377694 s!2326)) e!3641212)))

(declare-fun b!5952215 () Bool)

(assert (=> b!5952215 (= e!3641212 (nullableZipper!1801 (derivationStepZipper!1975 lt!2313332 (h!70607 s!2326))))))

(declare-fun b!5952216 () Bool)

(assert (=> b!5952216 (= e!3641212 (matchZipper!2030 (derivationStepZipper!1975 (derivationStepZipper!1975 lt!2313332 (h!70607 s!2326)) (head!12529 (t!377694 s!2326))) (tail!11614 (t!377694 s!2326))))))

(assert (= (and d!1866057 c!1059197) b!5952215))

(assert (= (and d!1866057 (not c!1059197)) b!5952216))

(assert (=> d!1866057 m!6839872))

(assert (=> b!5952215 m!6839760))

(declare-fun m!6839954 () Bool)

(assert (=> b!5952215 m!6839954))

(assert (=> b!5952216 m!6839876))

(assert (=> b!5952216 m!6839760))

(assert (=> b!5952216 m!6839876))

(declare-fun m!6839956 () Bool)

(assert (=> b!5952216 m!6839956))

(assert (=> b!5952216 m!6839880))

(assert (=> b!5952216 m!6839956))

(assert (=> b!5952216 m!6839880))

(declare-fun m!6839958 () Bool)

(assert (=> b!5952216 m!6839958))

(assert (=> b!5952013 d!1866057))

(declare-fun bs!1410230 () Bool)

(declare-fun d!1866059 () Bool)

(assert (= bs!1410230 (and d!1866059 b!5951995)))

(declare-fun lambda!324877 () Int)

(assert (=> bs!1410230 (= lambda!324877 lambda!324847)))

(assert (=> d!1866059 true))

(assert (=> d!1866059 (= (derivationStepZipper!1975 lt!2313332 (h!70607 s!2326)) (flatMap!1507 lt!2313332 lambda!324877))))

(declare-fun bs!1410231 () Bool)

(assert (= bs!1410231 d!1866059))

(declare-fun m!6839960 () Bool)

(assert (=> bs!1410231 m!6839960))

(assert (=> b!5952013 d!1866059))

(declare-fun bs!1410232 () Bool)

(declare-fun d!1866061 () Bool)

(assert (= bs!1410232 (and d!1866061 d!1866041)))

(declare-fun lambda!324880 () Int)

(assert (=> bs!1410232 (= lambda!324880 lambda!324865)))

(assert (=> d!1866061 (= (inv!83233 setElem!40452) (forall!15079 (exprs!5878 setElem!40452) lambda!324880))))

(declare-fun bs!1410233 () Bool)

(assert (= bs!1410233 d!1866061))

(declare-fun m!6839962 () Bool)

(assert (=> bs!1410233 m!6839962))

(assert (=> setNonEmpty!40452 d!1866061))

(declare-fun bs!1410234 () Bool)

(declare-fun d!1866063 () Bool)

(assert (= bs!1410234 (and d!1866063 d!1866041)))

(declare-fun lambda!324883 () Int)

(assert (=> bs!1410234 (= lambda!324883 lambda!324865)))

(declare-fun bs!1410235 () Bool)

(assert (= bs!1410235 (and d!1866063 d!1866061)))

(assert (=> bs!1410235 (= lambda!324883 lambda!324880)))

(declare-fun b!5952239 () Bool)

(declare-fun e!3641227 () Regex!15994)

(assert (=> b!5952239 (= e!3641227 (h!70605 (unfocusZipperList!1415 zl!343)))))

(declare-fun b!5952240 () Bool)

(declare-fun e!3641230 () Bool)

(declare-fun lt!2313455 () Regex!15994)

(declare-fun isEmptyLang!1431 (Regex!15994) Bool)

(assert (=> b!5952240 (= e!3641230 (isEmptyLang!1431 lt!2313455))))

(declare-fun b!5952241 () Bool)

(declare-fun e!3641229 () Bool)

(assert (=> b!5952241 (= e!3641229 (= lt!2313455 (head!12530 (unfocusZipperList!1415 zl!343))))))

(declare-fun b!5952242 () Bool)

(assert (=> b!5952242 (= e!3641230 e!3641229)))

(declare-fun c!1059209 () Bool)

(assert (=> b!5952242 (= c!1059209 (isEmpty!36039 (tail!11615 (unfocusZipperList!1415 zl!343))))))

(declare-fun b!5952243 () Bool)

(declare-fun e!3641228 () Regex!15994)

(assert (=> b!5952243 (= e!3641228 (Union!15994 (h!70605 (unfocusZipperList!1415 zl!343)) (generalisedUnion!1838 (t!377692 (unfocusZipperList!1415 zl!343)))))))

(declare-fun e!3641225 () Bool)

(assert (=> d!1866063 e!3641225))

(declare-fun res!2491613 () Bool)

(assert (=> d!1866063 (=> (not res!2491613) (not e!3641225))))

(assert (=> d!1866063 (= res!2491613 (validRegex!7730 lt!2313455))))

(assert (=> d!1866063 (= lt!2313455 e!3641227)))

(declare-fun c!1059210 () Bool)

(declare-fun e!3641226 () Bool)

(assert (=> d!1866063 (= c!1059210 e!3641226)))

(declare-fun res!2491612 () Bool)

(assert (=> d!1866063 (=> (not res!2491612) (not e!3641226))))

(assert (=> d!1866063 (= res!2491612 (is-Cons!64157 (unfocusZipperList!1415 zl!343)))))

(assert (=> d!1866063 (forall!15079 (unfocusZipperList!1415 zl!343) lambda!324883)))

(assert (=> d!1866063 (= (generalisedUnion!1838 (unfocusZipperList!1415 zl!343)) lt!2313455)))

(declare-fun b!5952244 () Bool)

(assert (=> b!5952244 (= e!3641228 EmptyLang!15994)))

(declare-fun b!5952245 () Bool)

(assert (=> b!5952245 (= e!3641226 (isEmpty!36039 (t!377692 (unfocusZipperList!1415 zl!343))))))

(declare-fun b!5952246 () Bool)

(declare-fun isUnion!861 (Regex!15994) Bool)

(assert (=> b!5952246 (= e!3641229 (isUnion!861 lt!2313455))))

(declare-fun b!5952247 () Bool)

(assert (=> b!5952247 (= e!3641225 e!3641230)))

(declare-fun c!1059211 () Bool)

(assert (=> b!5952247 (= c!1059211 (isEmpty!36039 (unfocusZipperList!1415 zl!343)))))

(declare-fun b!5952248 () Bool)

(assert (=> b!5952248 (= e!3641227 e!3641228)))

(declare-fun c!1059208 () Bool)

(assert (=> b!5952248 (= c!1059208 (is-Cons!64157 (unfocusZipperList!1415 zl!343)))))

(assert (= (and d!1866063 res!2491612) b!5952245))

(assert (= (and d!1866063 c!1059210) b!5952239))

(assert (= (and d!1866063 (not c!1059210)) b!5952248))

(assert (= (and b!5952248 c!1059208) b!5952243))

(assert (= (and b!5952248 (not c!1059208)) b!5952244))

(assert (= (and d!1866063 res!2491613) b!5952247))

(assert (= (and b!5952247 c!1059211) b!5952240))

(assert (= (and b!5952247 (not c!1059211)) b!5952242))

(assert (= (and b!5952242 c!1059209) b!5952241))

(assert (= (and b!5952242 (not c!1059209)) b!5952246))

(declare-fun m!6839964 () Bool)

(assert (=> b!5952240 m!6839964))

(assert (=> b!5952247 m!6839696))

(declare-fun m!6839966 () Bool)

(assert (=> b!5952247 m!6839966))

(assert (=> b!5952242 m!6839696))

(declare-fun m!6839968 () Bool)

(assert (=> b!5952242 m!6839968))

(assert (=> b!5952242 m!6839968))

(declare-fun m!6839970 () Bool)

(assert (=> b!5952242 m!6839970))

(declare-fun m!6839972 () Bool)

(assert (=> b!5952246 m!6839972))

(assert (=> b!5952241 m!6839696))

(declare-fun m!6839974 () Bool)

(assert (=> b!5952241 m!6839974))

(declare-fun m!6839976 () Bool)

(assert (=> d!1866063 m!6839976))

(assert (=> d!1866063 m!6839696))

(declare-fun m!6839978 () Bool)

(assert (=> d!1866063 m!6839978))

(declare-fun m!6839980 () Bool)

(assert (=> b!5952243 m!6839980))

(declare-fun m!6839982 () Bool)

(assert (=> b!5952245 m!6839982))

(assert (=> b!5952022 d!1866063))

(declare-fun bs!1410236 () Bool)

(declare-fun d!1866065 () Bool)

(assert (= bs!1410236 (and d!1866065 d!1866041)))

(declare-fun lambda!324886 () Int)

(assert (=> bs!1410236 (= lambda!324886 lambda!324865)))

(declare-fun bs!1410237 () Bool)

(assert (= bs!1410237 (and d!1866065 d!1866061)))

(assert (=> bs!1410237 (= lambda!324886 lambda!324880)))

(declare-fun bs!1410238 () Bool)

(assert (= bs!1410238 (and d!1866065 d!1866063)))

(assert (=> bs!1410238 (= lambda!324886 lambda!324883)))

(declare-fun lt!2313458 () List!64281)

(assert (=> d!1866065 (forall!15079 lt!2313458 lambda!324886)))

(declare-fun e!3641233 () List!64281)

(assert (=> d!1866065 (= lt!2313458 e!3641233)))

(declare-fun c!1059214 () Bool)

(assert (=> d!1866065 (= c!1059214 (is-Cons!64158 zl!343))))

(assert (=> d!1866065 (= (unfocusZipperList!1415 zl!343) lt!2313458)))

(declare-fun b!5952253 () Bool)

(assert (=> b!5952253 (= e!3641233 (Cons!64157 (generalisedConcat!1591 (exprs!5878 (h!70606 zl!343))) (unfocusZipperList!1415 (t!377693 zl!343))))))

(declare-fun b!5952254 () Bool)

(assert (=> b!5952254 (= e!3641233 Nil!64157)))

(assert (= (and d!1866065 c!1059214) b!5952253))

(assert (= (and d!1866065 (not c!1059214)) b!5952254))

(declare-fun m!6839984 () Bool)

(assert (=> d!1866065 m!6839984))

(assert (=> b!5952253 m!6839734))

(declare-fun m!6839986 () Bool)

(assert (=> b!5952253 m!6839986))

(assert (=> b!5952022 d!1866065))

(declare-fun bs!1410239 () Bool)

(declare-fun b!5952261 () Bool)

(assert (= bs!1410239 (and b!5952261 d!1866041)))

(declare-fun lambda!324891 () Int)

(assert (=> bs!1410239 (not (= lambda!324891 lambda!324865))))

(declare-fun bs!1410240 () Bool)

(assert (= bs!1410240 (and b!5952261 d!1866061)))

(assert (=> bs!1410240 (not (= lambda!324891 lambda!324880))))

(declare-fun bs!1410241 () Bool)

(assert (= bs!1410241 (and b!5952261 d!1866063)))

(assert (=> bs!1410241 (not (= lambda!324891 lambda!324883))))

(declare-fun bs!1410242 () Bool)

(assert (= bs!1410242 (and b!5952261 d!1866065)))

(assert (=> bs!1410242 (not (= lambda!324891 lambda!324886))))

(assert (=> b!5952261 true))

(declare-fun bs!1410243 () Bool)

(declare-fun b!5952263 () Bool)

(assert (= bs!1410243 (and b!5952263 d!1866041)))

(declare-fun lambda!324892 () Int)

(assert (=> bs!1410243 (not (= lambda!324892 lambda!324865))))

(declare-fun bs!1410244 () Bool)

(assert (= bs!1410244 (and b!5952263 d!1866061)))

(assert (=> bs!1410244 (not (= lambda!324892 lambda!324880))))

(declare-fun bs!1410245 () Bool)

(assert (= bs!1410245 (and b!5952263 b!5952261)))

(declare-fun lt!2313467 () Int)

(declare-fun lt!2313468 () Int)

(assert (=> bs!1410245 (= (= lt!2313467 lt!2313468) (= lambda!324892 lambda!324891))))

(declare-fun bs!1410246 () Bool)

(assert (= bs!1410246 (and b!5952263 d!1866065)))

(assert (=> bs!1410246 (not (= lambda!324892 lambda!324886))))

(declare-fun bs!1410247 () Bool)

(assert (= bs!1410247 (and b!5952263 d!1866063)))

(assert (=> bs!1410247 (not (= lambda!324892 lambda!324883))))

(assert (=> b!5952263 true))

(declare-fun d!1866067 () Bool)

(declare-fun e!3641238 () Bool)

(assert (=> d!1866067 e!3641238))

(declare-fun res!2491616 () Bool)

(assert (=> d!1866067 (=> (not res!2491616) (not e!3641238))))

(assert (=> d!1866067 (= res!2491616 (>= lt!2313467 0))))

(declare-fun e!3641239 () Int)

(assert (=> d!1866067 (= lt!2313467 e!3641239)))

(declare-fun c!1059218 () Bool)

(assert (=> d!1866067 (= c!1059218 (is-Cons!64157 (exprs!5878 lt!2313343)))))

(assert (=> d!1866067 (= (contextDepth!142 lt!2313343) lt!2313467)))

(assert (=> b!5952261 (= e!3641239 lt!2313468)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun regexDepth!251 (Regex!15994) Int)

(assert (=> b!5952261 (= lt!2313468 (maxBigInt!0 (regexDepth!251 (h!70605 (exprs!5878 lt!2313343))) (contextDepth!142 (Context!10757 (t!377692 (exprs!5878 lt!2313343))))))))

(declare-fun lt!2313469 () Unit!157259)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!43 (List!64281 Int Int) Unit!157259)

(assert (=> b!5952261 (= lt!2313469 (lemmaForallRegexDepthBiggerThanTransitive!43 (t!377692 (exprs!5878 lt!2313343)) lt!2313468 (contextDepth!142 (Context!10757 (t!377692 (exprs!5878 lt!2313343))))))))

(assert (=> b!5952261 (forall!15079 (t!377692 (exprs!5878 lt!2313343)) lambda!324891)))

(declare-fun lt!2313470 () Unit!157259)

(assert (=> b!5952261 (= lt!2313470 lt!2313469)))

(declare-fun b!5952262 () Bool)

(assert (=> b!5952262 (= e!3641239 0)))

(assert (=> b!5952263 (= e!3641238 (forall!15079 (exprs!5878 lt!2313343) lambda!324892))))

(assert (= (and d!1866067 c!1059218) b!5952261))

(assert (= (and d!1866067 (not c!1059218)) b!5952262))

(assert (= (and d!1866067 res!2491616) b!5952263))

(declare-fun m!6839988 () Bool)

(assert (=> b!5952261 m!6839988))

(declare-fun m!6839990 () Bool)

(assert (=> b!5952261 m!6839990))

(assert (=> b!5952261 m!6839988))

(assert (=> b!5952261 m!6839990))

(declare-fun m!6839992 () Bool)

(assert (=> b!5952261 m!6839992))

(declare-fun m!6839994 () Bool)

(assert (=> b!5952261 m!6839994))

(assert (=> b!5952261 m!6839990))

(declare-fun m!6839996 () Bool)

(assert (=> b!5952261 m!6839996))

(declare-fun m!6839998 () Bool)

(assert (=> b!5952263 m!6839998))

(assert (=> b!5952019 d!1866067))

(declare-fun bs!1410248 () Bool)

(declare-fun b!5952266 () Bool)

(assert (= bs!1410248 (and b!5952266 d!1866041)))

(declare-fun lambda!324893 () Int)

(assert (=> bs!1410248 (not (= lambda!324893 lambda!324865))))

(declare-fun bs!1410249 () Bool)

(assert (= bs!1410249 (and b!5952266 d!1866061)))

(assert (=> bs!1410249 (not (= lambda!324893 lambda!324880))))

(declare-fun bs!1410250 () Bool)

(assert (= bs!1410250 (and b!5952266 b!5952261)))

(declare-fun lt!2313472 () Int)

(assert (=> bs!1410250 (= (= lt!2313472 lt!2313468) (= lambda!324893 lambda!324891))))

(declare-fun bs!1410251 () Bool)

(assert (= bs!1410251 (and b!5952266 b!5952263)))

(assert (=> bs!1410251 (= (= lt!2313472 lt!2313467) (= lambda!324893 lambda!324892))))

(declare-fun bs!1410252 () Bool)

(assert (= bs!1410252 (and b!5952266 d!1866065)))

(assert (=> bs!1410252 (not (= lambda!324893 lambda!324886))))

(declare-fun bs!1410253 () Bool)

(assert (= bs!1410253 (and b!5952266 d!1866063)))

(assert (=> bs!1410253 (not (= lambda!324893 lambda!324883))))

(assert (=> b!5952266 true))

(declare-fun bs!1410254 () Bool)

(declare-fun b!5952268 () Bool)

(assert (= bs!1410254 (and b!5952268 d!1866041)))

(declare-fun lambda!324894 () Int)

(assert (=> bs!1410254 (not (= lambda!324894 lambda!324865))))

(declare-fun bs!1410255 () Bool)

(assert (= bs!1410255 (and b!5952268 d!1866061)))

(assert (=> bs!1410255 (not (= lambda!324894 lambda!324880))))

(declare-fun bs!1410256 () Bool)

(assert (= bs!1410256 (and b!5952268 b!5952261)))

(declare-fun lt!2313471 () Int)

(assert (=> bs!1410256 (= (= lt!2313471 lt!2313468) (= lambda!324894 lambda!324891))))

(declare-fun bs!1410257 () Bool)

(assert (= bs!1410257 (and b!5952268 b!5952263)))

(assert (=> bs!1410257 (= (= lt!2313471 lt!2313467) (= lambda!324894 lambda!324892))))

(declare-fun bs!1410258 () Bool)

(assert (= bs!1410258 (and b!5952268 d!1866065)))

(assert (=> bs!1410258 (not (= lambda!324894 lambda!324886))))

(declare-fun bs!1410259 () Bool)

(assert (= bs!1410259 (and b!5952268 b!5952266)))

(assert (=> bs!1410259 (= (= lt!2313471 lt!2313472) (= lambda!324894 lambda!324893))))

(declare-fun bs!1410260 () Bool)

(assert (= bs!1410260 (and b!5952268 d!1866063)))

(assert (=> bs!1410260 (not (= lambda!324894 lambda!324883))))

(assert (=> b!5952268 true))

(declare-fun d!1866069 () Bool)

(declare-fun e!3641240 () Bool)

(assert (=> d!1866069 e!3641240))

(declare-fun res!2491617 () Bool)

(assert (=> d!1866069 (=> (not res!2491617) (not e!3641240))))

(assert (=> d!1866069 (= res!2491617 (>= lt!2313471 0))))

(declare-fun e!3641241 () Int)

(assert (=> d!1866069 (= lt!2313471 e!3641241)))

(declare-fun c!1059219 () Bool)

(assert (=> d!1866069 (= c!1059219 (is-Cons!64157 (exprs!5878 lt!2313349)))))

(assert (=> d!1866069 (= (contextDepth!142 lt!2313349) lt!2313471)))

(assert (=> b!5952266 (= e!3641241 lt!2313472)))

(assert (=> b!5952266 (= lt!2313472 (maxBigInt!0 (regexDepth!251 (h!70605 (exprs!5878 lt!2313349))) (contextDepth!142 (Context!10757 (t!377692 (exprs!5878 lt!2313349))))))))

(declare-fun lt!2313473 () Unit!157259)

(assert (=> b!5952266 (= lt!2313473 (lemmaForallRegexDepthBiggerThanTransitive!43 (t!377692 (exprs!5878 lt!2313349)) lt!2313472 (contextDepth!142 (Context!10757 (t!377692 (exprs!5878 lt!2313349))))))))

(assert (=> b!5952266 (forall!15079 (t!377692 (exprs!5878 lt!2313349)) lambda!324893)))

(declare-fun lt!2313474 () Unit!157259)

(assert (=> b!5952266 (= lt!2313474 lt!2313473)))

(declare-fun b!5952267 () Bool)

(assert (=> b!5952267 (= e!3641241 0)))

(assert (=> b!5952268 (= e!3641240 (forall!15079 (exprs!5878 lt!2313349) lambda!324894))))

(assert (= (and d!1866069 c!1059219) b!5952266))

(assert (= (and d!1866069 (not c!1059219)) b!5952267))

(assert (= (and d!1866069 res!2491617) b!5952268))

(declare-fun m!6840000 () Bool)

(assert (=> b!5952266 m!6840000))

(declare-fun m!6840002 () Bool)

(assert (=> b!5952266 m!6840002))

(assert (=> b!5952266 m!6840000))

(assert (=> b!5952266 m!6840002))

(declare-fun m!6840004 () Bool)

(assert (=> b!5952266 m!6840004))

(declare-fun m!6840006 () Bool)

(assert (=> b!5952266 m!6840006))

(assert (=> b!5952266 m!6840002))

(declare-fun m!6840008 () Bool)

(assert (=> b!5952266 m!6840008))

(declare-fun m!6840010 () Bool)

(assert (=> b!5952268 m!6840010))

(assert (=> b!5952019 d!1866069))

(declare-fun bs!1410261 () Bool)

(declare-fun d!1866071 () Bool)

(assert (= bs!1410261 (and d!1866071 d!1866041)))

(declare-fun lambda!324895 () Int)

(assert (=> bs!1410261 (= lambda!324895 lambda!324865)))

(declare-fun bs!1410262 () Bool)

(assert (= bs!1410262 (and d!1866071 d!1866061)))

(assert (=> bs!1410262 (= lambda!324895 lambda!324880)))

(declare-fun bs!1410263 () Bool)

(assert (= bs!1410263 (and d!1866071 b!5952261)))

(assert (=> bs!1410263 (not (= lambda!324895 lambda!324891))))

(declare-fun bs!1410264 () Bool)

(assert (= bs!1410264 (and d!1866071 b!5952268)))

(assert (=> bs!1410264 (not (= lambda!324895 lambda!324894))))

(declare-fun bs!1410265 () Bool)

(assert (= bs!1410265 (and d!1866071 b!5952263)))

(assert (=> bs!1410265 (not (= lambda!324895 lambda!324892))))

(declare-fun bs!1410266 () Bool)

(assert (= bs!1410266 (and d!1866071 d!1866065)))

(assert (=> bs!1410266 (= lambda!324895 lambda!324886)))

(declare-fun bs!1410267 () Bool)

(assert (= bs!1410267 (and d!1866071 b!5952266)))

(assert (=> bs!1410267 (not (= lambda!324895 lambda!324893))))

(declare-fun bs!1410268 () Bool)

(assert (= bs!1410268 (and d!1866071 d!1866063)))

(assert (=> bs!1410268 (= lambda!324895 lambda!324883)))

(assert (=> d!1866071 (= (inv!83233 lt!2313349) (forall!15079 (exprs!5878 lt!2313349) lambda!324895))))

(declare-fun bs!1410269 () Bool)

(assert (= bs!1410269 d!1866071))

(declare-fun m!6840012 () Bool)

(assert (=> bs!1410269 m!6840012))

(assert (=> b!5952009 d!1866071))

(declare-fun d!1866073 () Bool)

(assert (=> d!1866073 (= (isEmpty!36040 (t!377693 zl!343)) (is-Nil!64158 (t!377693 zl!343)))))

(assert (=> b!5952020 d!1866073))

(declare-fun d!1866075 () Bool)

(declare-fun c!1059220 () Bool)

(assert (=> d!1866075 (= c!1059220 (isEmpty!36043 (t!377694 s!2326)))))

(declare-fun e!3641242 () Bool)

(assert (=> d!1866075 (= (matchZipper!2030 lt!2313350 (t!377694 s!2326)) e!3641242)))

(declare-fun b!5952269 () Bool)

(assert (=> b!5952269 (= e!3641242 (nullableZipper!1801 lt!2313350))))

(declare-fun b!5952270 () Bool)

(assert (=> b!5952270 (= e!3641242 (matchZipper!2030 (derivationStepZipper!1975 lt!2313350 (head!12529 (t!377694 s!2326))) (tail!11614 (t!377694 s!2326))))))

(assert (= (and d!1866075 c!1059220) b!5952269))

(assert (= (and d!1866075 (not c!1059220)) b!5952270))

(assert (=> d!1866075 m!6839872))

(declare-fun m!6840014 () Bool)

(assert (=> b!5952269 m!6840014))

(assert (=> b!5952270 m!6839876))

(assert (=> b!5952270 m!6839876))

(declare-fun m!6840016 () Bool)

(assert (=> b!5952270 m!6840016))

(assert (=> b!5952270 m!6839880))

(assert (=> b!5952270 m!6840016))

(assert (=> b!5952270 m!6839880))

(declare-fun m!6840018 () Bool)

(assert (=> b!5952270 m!6840018))

(assert (=> b!5952000 d!1866075))

(declare-fun d!1866077 () Bool)

(declare-fun c!1059221 () Bool)

(assert (=> d!1866077 (= c!1059221 (isEmpty!36043 (t!377694 s!2326)))))

(declare-fun e!3641243 () Bool)

(assert (=> d!1866077 (= (matchZipper!2030 lt!2313341 (t!377694 s!2326)) e!3641243)))

(declare-fun b!5952271 () Bool)

(assert (=> b!5952271 (= e!3641243 (nullableZipper!1801 lt!2313341))))

(declare-fun b!5952272 () Bool)

(assert (=> b!5952272 (= e!3641243 (matchZipper!2030 (derivationStepZipper!1975 lt!2313341 (head!12529 (t!377694 s!2326))) (tail!11614 (t!377694 s!2326))))))

(assert (= (and d!1866077 c!1059221) b!5952271))

(assert (= (and d!1866077 (not c!1059221)) b!5952272))

(assert (=> d!1866077 m!6839872))

(declare-fun m!6840020 () Bool)

(assert (=> b!5952271 m!6840020))

(assert (=> b!5952272 m!6839876))

(assert (=> b!5952272 m!6839876))

(declare-fun m!6840022 () Bool)

(assert (=> b!5952272 m!6840022))

(assert (=> b!5952272 m!6839880))

(assert (=> b!5952272 m!6840022))

(assert (=> b!5952272 m!6839880))

(declare-fun m!6840024 () Bool)

(assert (=> b!5952272 m!6840024))

(assert (=> b!5952000 d!1866077))

(declare-fun d!1866079 () Bool)

(declare-fun c!1059222 () Bool)

(assert (=> d!1866079 (= c!1059222 (isEmpty!36043 (t!377694 s!2326)))))

(declare-fun e!3641244 () Bool)

(assert (=> d!1866079 (= (matchZipper!2030 lt!2313337 (t!377694 s!2326)) e!3641244)))

(declare-fun b!5952273 () Bool)

(assert (=> b!5952273 (= e!3641244 (nullableZipper!1801 lt!2313337))))

(declare-fun b!5952274 () Bool)

(assert (=> b!5952274 (= e!3641244 (matchZipper!2030 (derivationStepZipper!1975 lt!2313337 (head!12529 (t!377694 s!2326))) (tail!11614 (t!377694 s!2326))))))

(assert (= (and d!1866079 c!1059222) b!5952273))

(assert (= (and d!1866079 (not c!1059222)) b!5952274))

(assert (=> d!1866079 m!6839872))

(declare-fun m!6840026 () Bool)

(assert (=> b!5952273 m!6840026))

(assert (=> b!5952274 m!6839876))

(assert (=> b!5952274 m!6839876))

(declare-fun m!6840028 () Bool)

(assert (=> b!5952274 m!6840028))

(assert (=> b!5952274 m!6839880))

(assert (=> b!5952274 m!6840028))

(assert (=> b!5952274 m!6839880))

(declare-fun m!6840030 () Bool)

(assert (=> b!5952274 m!6840030))

(assert (=> b!5952000 d!1866079))

(declare-fun d!1866081 () Bool)

(declare-fun e!3641247 () Bool)

(assert (=> d!1866081 (= (matchZipper!2030 (set.union lt!2313337 lt!2313340) (t!377694 s!2326)) e!3641247)))

(declare-fun res!2491620 () Bool)

(assert (=> d!1866081 (=> res!2491620 e!3641247)))

(assert (=> d!1866081 (= res!2491620 (matchZipper!2030 lt!2313337 (t!377694 s!2326)))))

(declare-fun lt!2313477 () Unit!157259)

(declare-fun choose!44853 ((Set Context!10756) (Set Context!10756) List!64283) Unit!157259)

(assert (=> d!1866081 (= lt!2313477 (choose!44853 lt!2313337 lt!2313340 (t!377694 s!2326)))))

(assert (=> d!1866081 (= (lemmaZipperConcatMatchesSameAsBothZippers!861 lt!2313337 lt!2313340 (t!377694 s!2326)) lt!2313477)))

(declare-fun b!5952277 () Bool)

(assert (=> b!5952277 (= e!3641247 (matchZipper!2030 lt!2313340 (t!377694 s!2326)))))

(assert (= (and d!1866081 (not res!2491620)) b!5952277))

(declare-fun m!6840032 () Bool)

(assert (=> d!1866081 m!6840032))

(assert (=> d!1866081 m!6839744))

(declare-fun m!6840034 () Bool)

(assert (=> d!1866081 m!6840034))

(assert (=> b!5952277 m!6839750))

(assert (=> b!5952000 d!1866081))

(declare-fun d!1866083 () Bool)

(assert (=> d!1866083 (= (isEmpty!36039 (t!377692 (exprs!5878 (h!70606 zl!343)))) (is-Nil!64157 (t!377692 (exprs!5878 (h!70606 zl!343)))))))

(assert (=> b!5951997 d!1866083))

(declare-fun d!1866085 () Bool)

(declare-fun lt!2313480 () Regex!15994)

(assert (=> d!1866085 (validRegex!7730 lt!2313480)))

(assert (=> d!1866085 (= lt!2313480 (generalisedUnion!1838 (unfocusZipperList!1415 zl!343)))))

(assert (=> d!1866085 (= (unfocusZipper!1736 zl!343) lt!2313480)))

(declare-fun bs!1410270 () Bool)

(assert (= bs!1410270 d!1866085))

(declare-fun m!6840036 () Bool)

(assert (=> bs!1410270 m!6840036))

(assert (=> bs!1410270 m!6839696))

(assert (=> bs!1410270 m!6839696))

(assert (=> bs!1410270 m!6839698))

(assert (=> b!5952006 d!1866085))

(declare-fun c!1059235 () Bool)

(declare-fun bm!474148 () Bool)

(declare-fun call!474156 () List!64281)

(declare-fun call!474154 () (Set Context!10756))

(assert (=> bm!474148 (= call!474154 (derivationStepZipperDown!1244 (ite c!1059235 (regTwo!32501 r!7292) (regOne!32500 r!7292)) (ite c!1059235 lt!2313345 (Context!10757 call!474156)) (h!70607 s!2326)))))

(declare-fun c!1059234 () Bool)

(declare-fun call!474155 () (Set Context!10756))

(declare-fun call!474158 () List!64281)

(declare-fun c!1059237 () Bool)

(declare-fun bm!474149 () Bool)

(assert (=> bm!474149 (= call!474155 (derivationStepZipperDown!1244 (ite c!1059235 (regOne!32501 r!7292) (ite c!1059234 (regTwo!32500 r!7292) (ite c!1059237 (regOne!32500 r!7292) (reg!16323 r!7292)))) (ite (or c!1059235 c!1059234) lt!2313345 (Context!10757 call!474158)) (h!70607 s!2326)))))

(declare-fun bm!474150 () Bool)

(declare-fun call!474157 () (Set Context!10756))

(assert (=> bm!474150 (= call!474157 call!474155)))

(declare-fun b!5952300 () Bool)

(declare-fun e!3641261 () Bool)

(assert (=> b!5952300 (= e!3641261 (nullable!5989 (regOne!32500 r!7292)))))

(declare-fun bm!474151 () Bool)

(declare-fun call!474153 () (Set Context!10756))

(assert (=> bm!474151 (= call!474153 call!474157)))

(declare-fun b!5952301 () Bool)

(declare-fun e!3641265 () (Set Context!10756))

(declare-fun e!3641263 () (Set Context!10756))

(assert (=> b!5952301 (= e!3641265 e!3641263)))

(assert (=> b!5952301 (= c!1059235 (is-Union!15994 r!7292))))

(declare-fun b!5952302 () Bool)

(declare-fun e!3641264 () (Set Context!10756))

(assert (=> b!5952302 (= e!3641264 (set.union call!474154 call!474157))))

(declare-fun b!5952303 () Bool)

(assert (=> b!5952303 (= e!3641265 (set.insert lt!2313345 (as set.empty (Set Context!10756))))))

(declare-fun b!5952304 () Bool)

(declare-fun e!3641260 () (Set Context!10756))

(assert (=> b!5952304 (= e!3641264 e!3641260)))

(assert (=> b!5952304 (= c!1059237 (is-Concat!24839 r!7292))))

(declare-fun d!1866087 () Bool)

(declare-fun c!1059233 () Bool)

(assert (=> d!1866087 (= c!1059233 (and (is-ElementMatch!15994 r!7292) (= (c!1059166 r!7292) (h!70607 s!2326))))))

(assert (=> d!1866087 (= (derivationStepZipperDown!1244 r!7292 lt!2313345 (h!70607 s!2326)) e!3641265)))

(declare-fun bm!474152 () Bool)

(assert (=> bm!474152 (= call!474158 call!474156)))

(declare-fun b!5952305 () Bool)

(assert (=> b!5952305 (= e!3641263 (set.union call!474155 call!474154))))

(declare-fun b!5952306 () Bool)

(declare-fun e!3641262 () (Set Context!10756))

(assert (=> b!5952306 (= e!3641262 call!474153)))

(declare-fun b!5952307 () Bool)

(declare-fun c!1059236 () Bool)

(assert (=> b!5952307 (= c!1059236 (is-Star!15994 r!7292))))

(assert (=> b!5952307 (= e!3641260 e!3641262)))

(declare-fun b!5952308 () Bool)

(assert (=> b!5952308 (= e!3641260 call!474153)))

(declare-fun b!5952309 () Bool)

(assert (=> b!5952309 (= e!3641262 (as set.empty (Set Context!10756)))))

(declare-fun b!5952310 () Bool)

(assert (=> b!5952310 (= c!1059234 e!3641261)))

(declare-fun res!2491623 () Bool)

(assert (=> b!5952310 (=> (not res!2491623) (not e!3641261))))

(assert (=> b!5952310 (= res!2491623 (is-Concat!24839 r!7292))))

(assert (=> b!5952310 (= e!3641263 e!3641264)))

(declare-fun bm!474153 () Bool)

(declare-fun $colon$colon!1881 (List!64281 Regex!15994) List!64281)

(assert (=> bm!474153 (= call!474156 ($colon$colon!1881 (exprs!5878 lt!2313345) (ite (or c!1059234 c!1059237) (regTwo!32500 r!7292) r!7292)))))

(assert (= (and d!1866087 c!1059233) b!5952303))

(assert (= (and d!1866087 (not c!1059233)) b!5952301))

(assert (= (and b!5952301 c!1059235) b!5952305))

(assert (= (and b!5952301 (not c!1059235)) b!5952310))

(assert (= (and b!5952310 res!2491623) b!5952300))

(assert (= (and b!5952310 c!1059234) b!5952302))

(assert (= (and b!5952310 (not c!1059234)) b!5952304))

(assert (= (and b!5952304 c!1059237) b!5952308))

(assert (= (and b!5952304 (not c!1059237)) b!5952307))

(assert (= (and b!5952307 c!1059236) b!5952306))

(assert (= (and b!5952307 (not c!1059236)) b!5952309))

(assert (= (or b!5952308 b!5952306) bm!474152))

(assert (= (or b!5952308 b!5952306) bm!474151))

(assert (= (or b!5952302 bm!474152) bm!474153))

(assert (= (or b!5952302 bm!474151) bm!474150))

(assert (= (or b!5952305 b!5952302) bm!474148))

(assert (= (or b!5952305 bm!474150) bm!474149))

(assert (=> b!5952300 m!6839684))

(declare-fun m!6840038 () Bool)

(assert (=> b!5952303 m!6840038))

(declare-fun m!6840040 () Bool)

(assert (=> bm!474153 m!6840040))

(declare-fun m!6840042 () Bool)

(assert (=> bm!474148 m!6840042))

(declare-fun m!6840044 () Bool)

(assert (=> bm!474149 m!6840044))

(assert (=> b!5952008 d!1866087))

(declare-fun bm!474156 () Bool)

(declare-fun call!474161 () (Set Context!10756))

(assert (=> bm!474156 (= call!474161 (derivationStepZipperDown!1244 (h!70605 (exprs!5878 lt!2313349)) (Context!10757 (t!377692 (exprs!5878 lt!2313349))) (h!70607 s!2326)))))

(declare-fun b!5952321 () Bool)

(declare-fun e!3641272 () (Set Context!10756))

(declare-fun e!3641273 () (Set Context!10756))

(assert (=> b!5952321 (= e!3641272 e!3641273)))

(declare-fun c!1059242 () Bool)

(assert (=> b!5952321 (= c!1059242 (is-Cons!64157 (exprs!5878 lt!2313349)))))

(declare-fun b!5952322 () Bool)

(assert (=> b!5952322 (= e!3641273 call!474161)))

(declare-fun d!1866089 () Bool)

(declare-fun c!1059243 () Bool)

(declare-fun e!3641274 () Bool)

(assert (=> d!1866089 (= c!1059243 e!3641274)))

(declare-fun res!2491626 () Bool)

(assert (=> d!1866089 (=> (not res!2491626) (not e!3641274))))

(assert (=> d!1866089 (= res!2491626 (is-Cons!64157 (exprs!5878 lt!2313349)))))

(assert (=> d!1866089 (= (derivationStepZipperUp!1170 lt!2313349 (h!70607 s!2326)) e!3641272)))

(declare-fun b!5952323 () Bool)

(assert (=> b!5952323 (= e!3641273 (as set.empty (Set Context!10756)))))

(declare-fun b!5952324 () Bool)

(assert (=> b!5952324 (= e!3641274 (nullable!5989 (h!70605 (exprs!5878 lt!2313349))))))

(declare-fun b!5952325 () Bool)

(assert (=> b!5952325 (= e!3641272 (set.union call!474161 (derivationStepZipperUp!1170 (Context!10757 (t!377692 (exprs!5878 lt!2313349))) (h!70607 s!2326))))))

(assert (= (and d!1866089 res!2491626) b!5952324))

(assert (= (and d!1866089 c!1059243) b!5952325))

(assert (= (and d!1866089 (not c!1059243)) b!5952321))

(assert (= (and b!5952321 c!1059242) b!5952322))

(assert (= (and b!5952321 (not c!1059242)) b!5952323))

(assert (= (or b!5952325 b!5952322) bm!474156))

(declare-fun m!6840046 () Bool)

(assert (=> bm!474156 m!6840046))

(declare-fun m!6840048 () Bool)

(assert (=> b!5952324 m!6840048))

(declare-fun m!6840050 () Bool)

(assert (=> b!5952325 m!6840050))

(assert (=> b!5952008 d!1866089))

(declare-fun bs!1410271 () Bool)

(declare-fun d!1866091 () Bool)

(assert (= bs!1410271 (and d!1866091 b!5951995)))

(declare-fun lambda!324896 () Int)

(assert (=> bs!1410271 (= lambda!324896 lambda!324847)))

(declare-fun bs!1410272 () Bool)

(assert (= bs!1410272 (and d!1866091 d!1866059)))

(assert (=> bs!1410272 (= lambda!324896 lambda!324877)))

(assert (=> d!1866091 true))

(assert (=> d!1866091 (= (derivationStepZipper!1975 z!1189 (h!70607 s!2326)) (flatMap!1507 z!1189 lambda!324896))))

(declare-fun bs!1410273 () Bool)

(assert (= bs!1410273 d!1866091))

(declare-fun m!6840052 () Bool)

(assert (=> bs!1410273 m!6840052))

(assert (=> b!5952008 d!1866091))

(declare-fun d!1866093 () Bool)

(declare-fun c!1059244 () Bool)

(assert (=> d!1866093 (= c!1059244 (isEmpty!36043 s!2326))))

(declare-fun e!3641275 () Bool)

(assert (=> d!1866093 (= (matchZipper!2030 lt!2313334 s!2326) e!3641275)))

(declare-fun b!5952326 () Bool)

(assert (=> b!5952326 (= e!3641275 (nullableZipper!1801 lt!2313334))))

(declare-fun b!5952327 () Bool)

(assert (=> b!5952327 (= e!3641275 (matchZipper!2030 (derivationStepZipper!1975 lt!2313334 (head!12529 s!2326)) (tail!11614 s!2326)))))

(assert (= (and d!1866093 c!1059244) b!5952326))

(assert (= (and d!1866093 (not c!1059244)) b!5952327))

(assert (=> d!1866093 m!6839942))

(declare-fun m!6840054 () Bool)

(assert (=> b!5952326 m!6840054))

(assert (=> b!5952327 m!6839946))

(assert (=> b!5952327 m!6839946))

(declare-fun m!6840056 () Bool)

(assert (=> b!5952327 m!6840056))

(assert (=> b!5952327 m!6839950))

(assert (=> b!5952327 m!6840056))

(assert (=> b!5952327 m!6839950))

(declare-fun m!6840058 () Bool)

(assert (=> b!5952327 m!6840058))

(assert (=> b!5951998 d!1866093))

(declare-fun d!1866095 () Bool)

(declare-fun c!1059245 () Bool)

(assert (=> d!1866095 (= c!1059245 (isEmpty!36043 (t!377694 s!2326)))))

(declare-fun e!3641276 () Bool)

(assert (=> d!1866095 (= (matchZipper!2030 (derivationStepZipper!1975 lt!2313334 (h!70607 s!2326)) (t!377694 s!2326)) e!3641276)))

(declare-fun b!5952328 () Bool)

(assert (=> b!5952328 (= e!3641276 (nullableZipper!1801 (derivationStepZipper!1975 lt!2313334 (h!70607 s!2326))))))

(declare-fun b!5952329 () Bool)

(assert (=> b!5952329 (= e!3641276 (matchZipper!2030 (derivationStepZipper!1975 (derivationStepZipper!1975 lt!2313334 (h!70607 s!2326)) (head!12529 (t!377694 s!2326))) (tail!11614 (t!377694 s!2326))))))

(assert (= (and d!1866095 c!1059245) b!5952328))

(assert (= (and d!1866095 (not c!1059245)) b!5952329))

(assert (=> d!1866095 m!6839872))

(assert (=> b!5952328 m!6839702))

(declare-fun m!6840060 () Bool)

(assert (=> b!5952328 m!6840060))

(assert (=> b!5952329 m!6839876))

(assert (=> b!5952329 m!6839702))

(assert (=> b!5952329 m!6839876))

(declare-fun m!6840062 () Bool)

(assert (=> b!5952329 m!6840062))

(assert (=> b!5952329 m!6839880))

(assert (=> b!5952329 m!6840062))

(assert (=> b!5952329 m!6839880))

(declare-fun m!6840064 () Bool)

(assert (=> b!5952329 m!6840064))

(assert (=> b!5951998 d!1866095))

(declare-fun bs!1410274 () Bool)

(declare-fun d!1866097 () Bool)

(assert (= bs!1410274 (and d!1866097 b!5951995)))

(declare-fun lambda!324897 () Int)

(assert (=> bs!1410274 (= lambda!324897 lambda!324847)))

(declare-fun bs!1410275 () Bool)

(assert (= bs!1410275 (and d!1866097 d!1866059)))

(assert (=> bs!1410275 (= lambda!324897 lambda!324877)))

(declare-fun bs!1410276 () Bool)

(assert (= bs!1410276 (and d!1866097 d!1866091)))

(assert (=> bs!1410276 (= lambda!324897 lambda!324896)))

(assert (=> d!1866097 true))

(assert (=> d!1866097 (= (derivationStepZipper!1975 lt!2313334 (h!70607 s!2326)) (flatMap!1507 lt!2313334 lambda!324897))))

(declare-fun bs!1410277 () Bool)

(assert (= bs!1410277 d!1866097))

(declare-fun m!6840066 () Bool)

(assert (=> bs!1410277 m!6840066))

(assert (=> b!5951998 d!1866097))

(declare-fun b!5952336 () Bool)

(assert (=> b!5952336 true))

(declare-fun bs!1410278 () Bool)

(declare-fun b!5952338 () Bool)

(assert (= bs!1410278 (and b!5952338 b!5952336)))

(declare-fun lambda!324905 () Int)

(declare-fun lt!2313492 () Int)

(declare-fun lt!2313491 () Int)

(declare-fun lambda!324906 () Int)

(assert (=> bs!1410278 (= (= lt!2313492 lt!2313491) (= lambda!324906 lambda!324905))))

(assert (=> b!5952338 true))

(declare-fun d!1866099 () Bool)

(declare-fun e!3641281 () Bool)

(assert (=> d!1866099 e!3641281))

(declare-fun res!2491629 () Bool)

(assert (=> d!1866099 (=> (not res!2491629) (not e!3641281))))

(assert (=> d!1866099 (= res!2491629 (>= lt!2313492 0))))

(declare-fun e!3641282 () Int)

(assert (=> d!1866099 (= lt!2313492 e!3641282)))

(declare-fun c!1059254 () Bool)

(assert (=> d!1866099 (= c!1059254 (is-Cons!64158 (Cons!64158 lt!2313343 Nil!64158)))))

(assert (=> d!1866099 (= (zipperDepth!243 (Cons!64158 lt!2313343 Nil!64158)) lt!2313492)))

(assert (=> b!5952336 (= e!3641282 lt!2313491)))

(assert (=> b!5952336 (= lt!2313491 (maxBigInt!0 (contextDepth!142 (h!70606 (Cons!64158 lt!2313343 Nil!64158))) (zipperDepth!243 (t!377693 (Cons!64158 lt!2313343 Nil!64158)))))))

(declare-fun lambda!324904 () Int)

(declare-fun lt!2313490 () Unit!157259)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!128 (List!64282 Int Int Int) Unit!157259)

(assert (=> b!5952336 (= lt!2313490 (lemmaForallContextDepthBiggerThanTransitive!128 (t!377693 (Cons!64158 lt!2313343 Nil!64158)) lt!2313491 (zipperDepth!243 (t!377693 (Cons!64158 lt!2313343 Nil!64158))) lambda!324904))))

(declare-fun forall!15080 (List!64282 Int) Bool)

(assert (=> b!5952336 (forall!15080 (t!377693 (Cons!64158 lt!2313343 Nil!64158)) lambda!324905)))

(declare-fun lt!2313489 () Unit!157259)

(assert (=> b!5952336 (= lt!2313489 lt!2313490)))

(declare-fun b!5952337 () Bool)

(assert (=> b!5952337 (= e!3641282 0)))

(assert (=> b!5952338 (= e!3641281 (forall!15080 (Cons!64158 lt!2313343 Nil!64158) lambda!324906))))

(assert (= (and d!1866099 c!1059254) b!5952336))

(assert (= (and d!1866099 (not c!1059254)) b!5952337))

(assert (= (and d!1866099 res!2491629) b!5952338))

(declare-fun m!6840068 () Bool)

(assert (=> b!5952336 m!6840068))

(declare-fun m!6840070 () Bool)

(assert (=> b!5952336 m!6840070))

(declare-fun m!6840072 () Bool)

(assert (=> b!5952336 m!6840072))

(assert (=> b!5952336 m!6840068))

(declare-fun m!6840074 () Bool)

(assert (=> b!5952336 m!6840074))

(assert (=> b!5952336 m!6840072))

(assert (=> b!5952336 m!6840068))

(declare-fun m!6840076 () Bool)

(assert (=> b!5952336 m!6840076))

(declare-fun m!6840078 () Bool)

(assert (=> b!5952338 m!6840078))

(assert (=> b!5952007 d!1866099))

(declare-fun bs!1410279 () Bool)

(declare-fun b!5952341 () Bool)

(assert (= bs!1410279 (and b!5952341 b!5952336)))

(declare-fun lambda!324907 () Int)

(assert (=> bs!1410279 (= lambda!324907 lambda!324904)))

(declare-fun lambda!324908 () Int)

(declare-fun lt!2313495 () Int)

(assert (=> bs!1410279 (= (= lt!2313495 lt!2313491) (= lambda!324908 lambda!324905))))

(declare-fun bs!1410280 () Bool)

(assert (= bs!1410280 (and b!5952341 b!5952338)))

(assert (=> bs!1410280 (= (= lt!2313495 lt!2313492) (= lambda!324908 lambda!324906))))

(assert (=> b!5952341 true))

(declare-fun bs!1410281 () Bool)

(declare-fun b!5952343 () Bool)

(assert (= bs!1410281 (and b!5952343 b!5952336)))

(declare-fun lt!2313496 () Int)

(declare-fun lambda!324909 () Int)

(assert (=> bs!1410281 (= (= lt!2313496 lt!2313491) (= lambda!324909 lambda!324905))))

(declare-fun bs!1410282 () Bool)

(assert (= bs!1410282 (and b!5952343 b!5952338)))

(assert (=> bs!1410282 (= (= lt!2313496 lt!2313492) (= lambda!324909 lambda!324906))))

(declare-fun bs!1410283 () Bool)

(assert (= bs!1410283 (and b!5952343 b!5952341)))

(assert (=> bs!1410283 (= (= lt!2313496 lt!2313495) (= lambda!324909 lambda!324908))))

(assert (=> b!5952343 true))

(declare-fun d!1866101 () Bool)

(declare-fun e!3641283 () Bool)

(assert (=> d!1866101 e!3641283))

(declare-fun res!2491630 () Bool)

(assert (=> d!1866101 (=> (not res!2491630) (not e!3641283))))

(assert (=> d!1866101 (= res!2491630 (>= lt!2313496 0))))

(declare-fun e!3641284 () Int)

(assert (=> d!1866101 (= lt!2313496 e!3641284)))

(declare-fun c!1059255 () Bool)

(assert (=> d!1866101 (= c!1059255 (is-Cons!64158 (Cons!64158 lt!2313349 Nil!64158)))))

(assert (=> d!1866101 (= (zipperDepth!243 (Cons!64158 lt!2313349 Nil!64158)) lt!2313496)))

(assert (=> b!5952341 (= e!3641284 lt!2313495)))

(assert (=> b!5952341 (= lt!2313495 (maxBigInt!0 (contextDepth!142 (h!70606 (Cons!64158 lt!2313349 Nil!64158))) (zipperDepth!243 (t!377693 (Cons!64158 lt!2313349 Nil!64158)))))))

(declare-fun lt!2313494 () Unit!157259)

(assert (=> b!5952341 (= lt!2313494 (lemmaForallContextDepthBiggerThanTransitive!128 (t!377693 (Cons!64158 lt!2313349 Nil!64158)) lt!2313495 (zipperDepth!243 (t!377693 (Cons!64158 lt!2313349 Nil!64158))) lambda!324907))))

(assert (=> b!5952341 (forall!15080 (t!377693 (Cons!64158 lt!2313349 Nil!64158)) lambda!324908)))

(declare-fun lt!2313493 () Unit!157259)

(assert (=> b!5952341 (= lt!2313493 lt!2313494)))

(declare-fun b!5952342 () Bool)

(assert (=> b!5952342 (= e!3641284 0)))

(assert (=> b!5952343 (= e!3641283 (forall!15080 (Cons!64158 lt!2313349 Nil!64158) lambda!324909))))

(assert (= (and d!1866101 c!1059255) b!5952341))

(assert (= (and d!1866101 (not c!1059255)) b!5952342))

(assert (= (and d!1866101 res!2491630) b!5952343))

(declare-fun m!6840080 () Bool)

(assert (=> b!5952341 m!6840080))

(declare-fun m!6840082 () Bool)

(assert (=> b!5952341 m!6840082))

(declare-fun m!6840084 () Bool)

(assert (=> b!5952341 m!6840084))

(assert (=> b!5952341 m!6840080))

(declare-fun m!6840086 () Bool)

(assert (=> b!5952341 m!6840086))

(assert (=> b!5952341 m!6840084))

(assert (=> b!5952341 m!6840080))

(declare-fun m!6840088 () Bool)

(assert (=> b!5952341 m!6840088))

(declare-fun m!6840090 () Bool)

(assert (=> b!5952343 m!6840090))

(assert (=> b!5952007 d!1866101))

(declare-fun bs!1410284 () Bool)

(declare-fun b!5952385 () Bool)

(assert (= bs!1410284 (and b!5952385 b!5952011)))

(declare-fun lambda!324914 () Int)

(assert (=> bs!1410284 (not (= lambda!324914 lambda!324845))))

(declare-fun bs!1410285 () Bool)

(assert (= bs!1410285 (and b!5952385 d!1866051)))

(assert (=> bs!1410285 (not (= lambda!324914 lambda!324874))))

(declare-fun bs!1410286 () Bool)

(assert (= bs!1410286 (and b!5952385 d!1866049)))

(assert (=> bs!1410286 (not (= lambda!324914 lambda!324868))))

(assert (=> bs!1410285 (not (= lambda!324914 lambda!324873))))

(assert (=> bs!1410284 (not (= lambda!324914 lambda!324846))))

(assert (=> b!5952385 true))

(assert (=> b!5952385 true))

(declare-fun bs!1410287 () Bool)

(declare-fun b!5952377 () Bool)

(assert (= bs!1410287 (and b!5952377 b!5952011)))

(declare-fun lambda!324915 () Int)

(assert (=> bs!1410287 (not (= lambda!324915 lambda!324845))))

(declare-fun bs!1410288 () Bool)

(assert (= bs!1410288 (and b!5952377 b!5952385)))

(assert (=> bs!1410288 (not (= lambda!324915 lambda!324914))))

(declare-fun bs!1410289 () Bool)

(assert (= bs!1410289 (and b!5952377 d!1866051)))

(assert (=> bs!1410289 (= lambda!324915 lambda!324874)))

(declare-fun bs!1410290 () Bool)

(assert (= bs!1410290 (and b!5952377 d!1866049)))

(assert (=> bs!1410290 (not (= lambda!324915 lambda!324868))))

(assert (=> bs!1410289 (not (= lambda!324915 lambda!324873))))

(assert (=> bs!1410287 (= lambda!324915 lambda!324846)))

(assert (=> b!5952377 true))

(assert (=> b!5952377 true))

(declare-fun b!5952376 () Bool)

(declare-fun c!1059264 () Bool)

(assert (=> b!5952376 (= c!1059264 (is-Union!15994 r!7292))))

(declare-fun e!3641303 () Bool)

(declare-fun e!3641306 () Bool)

(assert (=> b!5952376 (= e!3641303 e!3641306)))

(declare-fun e!3641309 () Bool)

(declare-fun call!474167 () Bool)

(assert (=> b!5952377 (= e!3641309 call!474167)))

(declare-fun b!5952378 () Bool)

(declare-fun res!2491649 () Bool)

(declare-fun e!3641308 () Bool)

(assert (=> b!5952378 (=> res!2491649 e!3641308)))

(declare-fun call!474166 () Bool)

(assert (=> b!5952378 (= res!2491649 call!474166)))

(assert (=> b!5952378 (= e!3641309 e!3641308)))

(declare-fun b!5952379 () Bool)

(declare-fun e!3641305 () Bool)

(assert (=> b!5952379 (= e!3641305 (matchRSpec!3095 (regTwo!32501 r!7292) s!2326))))

(declare-fun b!5952380 () Bool)

(declare-fun c!1059266 () Bool)

(assert (=> b!5952380 (= c!1059266 (is-ElementMatch!15994 r!7292))))

(declare-fun e!3641304 () Bool)

(assert (=> b!5952380 (= e!3641304 e!3641303)))

(declare-fun b!5952381 () Bool)

(declare-fun e!3641307 () Bool)

(assert (=> b!5952381 (= e!3641307 e!3641304)))

(declare-fun res!2491648 () Bool)

(assert (=> b!5952381 (= res!2491648 (not (is-EmptyLang!15994 r!7292)))))

(assert (=> b!5952381 (=> (not res!2491648) (not e!3641304))))

(declare-fun b!5952382 () Bool)

(assert (=> b!5952382 (= e!3641306 e!3641309)))

(declare-fun c!1059265 () Bool)

(assert (=> b!5952382 (= c!1059265 (is-Star!15994 r!7292))))

(declare-fun b!5952384 () Bool)

(assert (=> b!5952384 (= e!3641307 call!474166)))

(assert (=> b!5952385 (= e!3641308 call!474167)))

(declare-fun bm!474161 () Bool)

(assert (=> bm!474161 (= call!474166 (isEmpty!36043 s!2326))))

(declare-fun bm!474162 () Bool)

(assert (=> bm!474162 (= call!474167 (Exists!3064 (ite c!1059265 lambda!324914 lambda!324915)))))

(declare-fun b!5952386 () Bool)

(assert (=> b!5952386 (= e!3641303 (= s!2326 (Cons!64159 (c!1059166 r!7292) Nil!64159)))))

(declare-fun d!1866103 () Bool)

(declare-fun c!1059267 () Bool)

(assert (=> d!1866103 (= c!1059267 (is-EmptyExpr!15994 r!7292))))

(assert (=> d!1866103 (= (matchRSpec!3095 r!7292 s!2326) e!3641307)))

(declare-fun b!5952383 () Bool)

(assert (=> b!5952383 (= e!3641306 e!3641305)))

(declare-fun res!2491647 () Bool)

(assert (=> b!5952383 (= res!2491647 (matchRSpec!3095 (regOne!32501 r!7292) s!2326))))

(assert (=> b!5952383 (=> res!2491647 e!3641305)))

(assert (= (and d!1866103 c!1059267) b!5952384))

(assert (= (and d!1866103 (not c!1059267)) b!5952381))

(assert (= (and b!5952381 res!2491648) b!5952380))

(assert (= (and b!5952380 c!1059266) b!5952386))

(assert (= (and b!5952380 (not c!1059266)) b!5952376))

(assert (= (and b!5952376 c!1059264) b!5952383))

(assert (= (and b!5952376 (not c!1059264)) b!5952382))

(assert (= (and b!5952383 (not res!2491647)) b!5952379))

(assert (= (and b!5952382 c!1059265) b!5952378))

(assert (= (and b!5952382 (not c!1059265)) b!5952377))

(assert (= (and b!5952378 (not res!2491649)) b!5952385))

(assert (= (or b!5952385 b!5952377) bm!474162))

(assert (= (or b!5952384 b!5952378) bm!474161))

(declare-fun m!6840092 () Bool)

(assert (=> b!5952379 m!6840092))

(assert (=> bm!474161 m!6839942))

(declare-fun m!6840094 () Bool)

(assert (=> bm!474162 m!6840094))

(declare-fun m!6840096 () Bool)

(assert (=> b!5952383 m!6840096))

(assert (=> b!5952004 d!1866103))

(declare-fun b!5952415 () Bool)

(declare-fun e!3641327 () Bool)

(assert (=> b!5952415 (= e!3641327 (nullable!5989 r!7292))))

(declare-fun d!1866105 () Bool)

(declare-fun e!3641330 () Bool)

(assert (=> d!1866105 e!3641330))

(declare-fun c!1059274 () Bool)

(assert (=> d!1866105 (= c!1059274 (is-EmptyExpr!15994 r!7292))))

(declare-fun lt!2313499 () Bool)

(assert (=> d!1866105 (= lt!2313499 e!3641327)))

(declare-fun c!1059275 () Bool)

(assert (=> d!1866105 (= c!1059275 (isEmpty!36043 s!2326))))

(assert (=> d!1866105 (validRegex!7730 r!7292)))

(assert (=> d!1866105 (= (matchR!8177 r!7292 s!2326) lt!2313499)))

(declare-fun b!5952416 () Bool)

(declare-fun res!2491672 () Bool)

(declare-fun e!3641329 () Bool)

(assert (=> b!5952416 (=> (not res!2491672) (not e!3641329))))

(assert (=> b!5952416 (= res!2491672 (isEmpty!36043 (tail!11614 s!2326)))))

(declare-fun b!5952417 () Bool)

(declare-fun e!3641328 () Bool)

(assert (=> b!5952417 (= e!3641328 (not (= (head!12529 s!2326) (c!1059166 r!7292))))))

(declare-fun b!5952418 () Bool)

(declare-fun e!3641326 () Bool)

(declare-fun e!3641324 () Bool)

(assert (=> b!5952418 (= e!3641326 e!3641324)))

(declare-fun res!2491668 () Bool)

(assert (=> b!5952418 (=> (not res!2491668) (not e!3641324))))

(assert (=> b!5952418 (= res!2491668 (not lt!2313499))))

(declare-fun b!5952419 () Bool)

(assert (=> b!5952419 (= e!3641324 e!3641328)))

(declare-fun res!2491667 () Bool)

(assert (=> b!5952419 (=> res!2491667 e!3641328)))

(declare-fun call!474170 () Bool)

(assert (=> b!5952419 (= res!2491667 call!474170)))

(declare-fun b!5952420 () Bool)

(declare-fun derivativeStep!4725 (Regex!15994 C!32258) Regex!15994)

(assert (=> b!5952420 (= e!3641327 (matchR!8177 (derivativeStep!4725 r!7292 (head!12529 s!2326)) (tail!11614 s!2326)))))

(declare-fun b!5952421 () Bool)

(declare-fun res!2491670 () Bool)

(assert (=> b!5952421 (=> res!2491670 e!3641326)))

(assert (=> b!5952421 (= res!2491670 (not (is-ElementMatch!15994 r!7292)))))

(declare-fun e!3641325 () Bool)

(assert (=> b!5952421 (= e!3641325 e!3641326)))

(declare-fun b!5952422 () Bool)

(declare-fun res!2491666 () Bool)

(assert (=> b!5952422 (=> res!2491666 e!3641328)))

(assert (=> b!5952422 (= res!2491666 (not (isEmpty!36043 (tail!11614 s!2326))))))

(declare-fun b!5952423 () Bool)

(assert (=> b!5952423 (= e!3641330 e!3641325)))

(declare-fun c!1059276 () Bool)

(assert (=> b!5952423 (= c!1059276 (is-EmptyLang!15994 r!7292))))

(declare-fun b!5952424 () Bool)

(assert (=> b!5952424 (= e!3641330 (= lt!2313499 call!474170))))

(declare-fun b!5952425 () Bool)

(declare-fun res!2491673 () Bool)

(assert (=> b!5952425 (=> res!2491673 e!3641326)))

(assert (=> b!5952425 (= res!2491673 e!3641329)))

(declare-fun res!2491669 () Bool)

(assert (=> b!5952425 (=> (not res!2491669) (not e!3641329))))

(assert (=> b!5952425 (= res!2491669 lt!2313499)))

(declare-fun b!5952426 () Bool)

(assert (=> b!5952426 (= e!3641325 (not lt!2313499))))

(declare-fun b!5952427 () Bool)

(assert (=> b!5952427 (= e!3641329 (= (head!12529 s!2326) (c!1059166 r!7292)))))

(declare-fun bm!474165 () Bool)

(assert (=> bm!474165 (= call!474170 (isEmpty!36043 s!2326))))

(declare-fun b!5952428 () Bool)

(declare-fun res!2491671 () Bool)

(assert (=> b!5952428 (=> (not res!2491671) (not e!3641329))))

(assert (=> b!5952428 (= res!2491671 (not call!474170))))

(assert (= (and d!1866105 c!1059275) b!5952415))

(assert (= (and d!1866105 (not c!1059275)) b!5952420))

(assert (= (and d!1866105 c!1059274) b!5952424))

(assert (= (and d!1866105 (not c!1059274)) b!5952423))

(assert (= (and b!5952423 c!1059276) b!5952426))

(assert (= (and b!5952423 (not c!1059276)) b!5952421))

(assert (= (and b!5952421 (not res!2491670)) b!5952425))

(assert (= (and b!5952425 res!2491669) b!5952428))

(assert (= (and b!5952428 res!2491671) b!5952416))

(assert (= (and b!5952416 res!2491672) b!5952427))

(assert (= (and b!5952425 (not res!2491673)) b!5952418))

(assert (= (and b!5952418 res!2491668) b!5952419))

(assert (= (and b!5952419 (not res!2491667)) b!5952422))

(assert (= (and b!5952422 (not res!2491666)) b!5952417))

(assert (= (or b!5952424 b!5952419 b!5952428) bm!474165))

(assert (=> d!1866105 m!6839942))

(assert (=> d!1866105 m!6839724))

(assert (=> b!5952422 m!6839950))

(assert (=> b!5952422 m!6839950))

(declare-fun m!6840098 () Bool)

(assert (=> b!5952422 m!6840098))

(assert (=> b!5952416 m!6839950))

(assert (=> b!5952416 m!6839950))

(assert (=> b!5952416 m!6840098))

(declare-fun m!6840100 () Bool)

(assert (=> b!5952415 m!6840100))

(assert (=> b!5952417 m!6839946))

(assert (=> b!5952427 m!6839946))

(assert (=> bm!474165 m!6839942))

(assert (=> b!5952420 m!6839946))

(assert (=> b!5952420 m!6839946))

(declare-fun m!6840102 () Bool)

(assert (=> b!5952420 m!6840102))

(assert (=> b!5952420 m!6839950))

(assert (=> b!5952420 m!6840102))

(assert (=> b!5952420 m!6839950))

(declare-fun m!6840104 () Bool)

(assert (=> b!5952420 m!6840104))

(assert (=> b!5952004 d!1866105))

(declare-fun d!1866107 () Bool)

(assert (=> d!1866107 (= (matchR!8177 r!7292 s!2326) (matchRSpec!3095 r!7292 s!2326))))

(declare-fun lt!2313502 () Unit!157259)

(declare-fun choose!44854 (Regex!15994 List!64283) Unit!157259)

(assert (=> d!1866107 (= lt!2313502 (choose!44854 r!7292 s!2326))))

(assert (=> d!1866107 (validRegex!7730 r!7292)))

(assert (=> d!1866107 (= (mainMatchTheorem!3095 r!7292 s!2326) lt!2313502)))

(declare-fun bs!1410291 () Bool)

(assert (= bs!1410291 d!1866107))

(assert (=> bs!1410291 m!6839730))

(assert (=> bs!1410291 m!6839728))

(declare-fun m!6840106 () Bool)

(assert (=> bs!1410291 m!6840106))

(assert (=> bs!1410291 m!6839724))

(assert (=> b!5952004 d!1866107))

(declare-fun d!1866109 () Bool)

(declare-fun e!3641333 () Bool)

(assert (=> d!1866109 e!3641333))

(declare-fun res!2491676 () Bool)

(assert (=> d!1866109 (=> (not res!2491676) (not e!3641333))))

(declare-fun lt!2313505 () List!64282)

(declare-fun noDuplicate!1852 (List!64282) Bool)

(assert (=> d!1866109 (= res!2491676 (noDuplicate!1852 lt!2313505))))

(declare-fun choose!44855 ((Set Context!10756)) List!64282)

(assert (=> d!1866109 (= lt!2313505 (choose!44855 z!1189))))

(assert (=> d!1866109 (= (toList!9778 z!1189) lt!2313505)))

(declare-fun b!5952431 () Bool)

(declare-fun content!11843 (List!64282) (Set Context!10756))

(assert (=> b!5952431 (= e!3641333 (= (content!11843 lt!2313505) z!1189))))

(assert (= (and d!1866109 res!2491676) b!5952431))

(declare-fun m!6840108 () Bool)

(assert (=> d!1866109 m!6840108))

(declare-fun m!6840110 () Bool)

(assert (=> d!1866109 m!6840110))

(declare-fun m!6840112 () Bool)

(assert (=> b!5952431 m!6840112))

(assert (=> b!5951994 d!1866109))

(declare-fun bs!1410292 () Bool)

(declare-fun d!1866111 () Bool)

(assert (= bs!1410292 (and d!1866111 d!1866041)))

(declare-fun lambda!324916 () Int)

(assert (=> bs!1410292 (= lambda!324916 lambda!324865)))

(declare-fun bs!1410293 () Bool)

(assert (= bs!1410293 (and d!1866111 d!1866061)))

(assert (=> bs!1410293 (= lambda!324916 lambda!324880)))

(declare-fun bs!1410294 () Bool)

(assert (= bs!1410294 (and d!1866111 b!5952261)))

(assert (=> bs!1410294 (not (= lambda!324916 lambda!324891))))

(declare-fun bs!1410295 () Bool)

(assert (= bs!1410295 (and d!1866111 b!5952263)))

(assert (=> bs!1410295 (not (= lambda!324916 lambda!324892))))

(declare-fun bs!1410296 () Bool)

(assert (= bs!1410296 (and d!1866111 d!1866065)))

(assert (=> bs!1410296 (= lambda!324916 lambda!324886)))

(declare-fun bs!1410297 () Bool)

(assert (= bs!1410297 (and d!1866111 b!5952266)))

(assert (=> bs!1410297 (not (= lambda!324916 lambda!324893))))

(declare-fun bs!1410298 () Bool)

(assert (= bs!1410298 (and d!1866111 d!1866063)))

(assert (=> bs!1410298 (= lambda!324916 lambda!324883)))

(declare-fun bs!1410299 () Bool)

(assert (= bs!1410299 (and d!1866111 b!5952268)))

(assert (=> bs!1410299 (not (= lambda!324916 lambda!324894))))

(declare-fun bs!1410300 () Bool)

(assert (= bs!1410300 (and d!1866111 d!1866071)))

(assert (=> bs!1410300 (= lambda!324916 lambda!324895)))

(assert (=> d!1866111 (= (inv!83233 (h!70606 zl!343)) (forall!15079 (exprs!5878 (h!70606 zl!343)) lambda!324916))))

(declare-fun bs!1410301 () Bool)

(assert (= bs!1410301 d!1866111))

(declare-fun m!6840114 () Bool)

(assert (=> bs!1410301 m!6840114))

(assert (=> b!5952016 d!1866111))

(declare-fun call!474174 () List!64281)

(declare-fun c!1059279 () Bool)

(declare-fun call!474172 () (Set Context!10756))

(declare-fun bm!474166 () Bool)

(assert (=> bm!474166 (= call!474172 (derivationStepZipperDown!1244 (ite c!1059279 (regTwo!32501 (regTwo!32500 r!7292)) (regOne!32500 (regTwo!32500 r!7292))) (ite c!1059279 lt!2313345 (Context!10757 call!474174)) (h!70607 s!2326)))))

(declare-fun call!474176 () List!64281)

(declare-fun c!1059281 () Bool)

(declare-fun bm!474167 () Bool)

(declare-fun c!1059278 () Bool)

(declare-fun call!474173 () (Set Context!10756))

(assert (=> bm!474167 (= call!474173 (derivationStepZipperDown!1244 (ite c!1059279 (regOne!32501 (regTwo!32500 r!7292)) (ite c!1059278 (regTwo!32500 (regTwo!32500 r!7292)) (ite c!1059281 (regOne!32500 (regTwo!32500 r!7292)) (reg!16323 (regTwo!32500 r!7292))))) (ite (or c!1059279 c!1059278) lt!2313345 (Context!10757 call!474176)) (h!70607 s!2326)))))

(declare-fun bm!474168 () Bool)

(declare-fun call!474175 () (Set Context!10756))

(assert (=> bm!474168 (= call!474175 call!474173)))

(declare-fun b!5952432 () Bool)

(declare-fun e!3641335 () Bool)

(assert (=> b!5952432 (= e!3641335 (nullable!5989 (regOne!32500 (regTwo!32500 r!7292))))))

(declare-fun bm!474169 () Bool)

(declare-fun call!474171 () (Set Context!10756))

(assert (=> bm!474169 (= call!474171 call!474175)))

(declare-fun b!5952433 () Bool)

(declare-fun e!3641339 () (Set Context!10756))

(declare-fun e!3641337 () (Set Context!10756))

(assert (=> b!5952433 (= e!3641339 e!3641337)))

(assert (=> b!5952433 (= c!1059279 (is-Union!15994 (regTwo!32500 r!7292)))))

(declare-fun b!5952434 () Bool)

(declare-fun e!3641338 () (Set Context!10756))

(assert (=> b!5952434 (= e!3641338 (set.union call!474172 call!474175))))

(declare-fun b!5952435 () Bool)

(assert (=> b!5952435 (= e!3641339 (set.insert lt!2313345 (as set.empty (Set Context!10756))))))

(declare-fun b!5952436 () Bool)

(declare-fun e!3641334 () (Set Context!10756))

(assert (=> b!5952436 (= e!3641338 e!3641334)))

(assert (=> b!5952436 (= c!1059281 (is-Concat!24839 (regTwo!32500 r!7292)))))

(declare-fun d!1866113 () Bool)

(declare-fun c!1059277 () Bool)

(assert (=> d!1866113 (= c!1059277 (and (is-ElementMatch!15994 (regTwo!32500 r!7292)) (= (c!1059166 (regTwo!32500 r!7292)) (h!70607 s!2326))))))

(assert (=> d!1866113 (= (derivationStepZipperDown!1244 (regTwo!32500 r!7292) lt!2313345 (h!70607 s!2326)) e!3641339)))

(declare-fun bm!474170 () Bool)

(assert (=> bm!474170 (= call!474176 call!474174)))

(declare-fun b!5952437 () Bool)

(assert (=> b!5952437 (= e!3641337 (set.union call!474173 call!474172))))

(declare-fun b!5952438 () Bool)

(declare-fun e!3641336 () (Set Context!10756))

(assert (=> b!5952438 (= e!3641336 call!474171)))

(declare-fun b!5952439 () Bool)

(declare-fun c!1059280 () Bool)

(assert (=> b!5952439 (= c!1059280 (is-Star!15994 (regTwo!32500 r!7292)))))

(assert (=> b!5952439 (= e!3641334 e!3641336)))

(declare-fun b!5952440 () Bool)

(assert (=> b!5952440 (= e!3641334 call!474171)))

(declare-fun b!5952441 () Bool)

(assert (=> b!5952441 (= e!3641336 (as set.empty (Set Context!10756)))))

(declare-fun b!5952442 () Bool)

(assert (=> b!5952442 (= c!1059278 e!3641335)))

(declare-fun res!2491677 () Bool)

(assert (=> b!5952442 (=> (not res!2491677) (not e!3641335))))

(assert (=> b!5952442 (= res!2491677 (is-Concat!24839 (regTwo!32500 r!7292)))))

(assert (=> b!5952442 (= e!3641337 e!3641338)))

(declare-fun bm!474171 () Bool)

(assert (=> bm!474171 (= call!474174 ($colon$colon!1881 (exprs!5878 lt!2313345) (ite (or c!1059278 c!1059281) (regTwo!32500 (regTwo!32500 r!7292)) (regTwo!32500 r!7292))))))

(assert (= (and d!1866113 c!1059277) b!5952435))

(assert (= (and d!1866113 (not c!1059277)) b!5952433))

(assert (= (and b!5952433 c!1059279) b!5952437))

(assert (= (and b!5952433 (not c!1059279)) b!5952442))

(assert (= (and b!5952442 res!2491677) b!5952432))

(assert (= (and b!5952442 c!1059278) b!5952434))

(assert (= (and b!5952442 (not c!1059278)) b!5952436))

(assert (= (and b!5952436 c!1059281) b!5952440))

(assert (= (and b!5952436 (not c!1059281)) b!5952439))

(assert (= (and b!5952439 c!1059280) b!5952438))

(assert (= (and b!5952439 (not c!1059280)) b!5952441))

(assert (= (or b!5952440 b!5952438) bm!474170))

(assert (= (or b!5952440 b!5952438) bm!474169))

(assert (= (or b!5952434 bm!474170) bm!474171))

(assert (= (or b!5952434 bm!474169) bm!474168))

(assert (= (or b!5952437 b!5952434) bm!474166))

(assert (= (or b!5952437 bm!474168) bm!474167))

(declare-fun m!6840116 () Bool)

(assert (=> b!5952432 m!6840116))

(assert (=> b!5952435 m!6840038))

(declare-fun m!6840118 () Bool)

(assert (=> bm!474171 m!6840118))

(declare-fun m!6840120 () Bool)

(assert (=> bm!474166 m!6840120))

(declare-fun m!6840122 () Bool)

(assert (=> bm!474167 m!6840122))

(assert (=> b!5952005 d!1866113))

(declare-fun d!1866115 () Bool)

(declare-fun dynLambda!25105 (Int Context!10756) (Set Context!10756))

(assert (=> d!1866115 (= (flatMap!1507 lt!2313334 lambda!324847) (dynLambda!25105 lambda!324847 lt!2313343))))

(declare-fun lt!2313508 () Unit!157259)

(declare-fun choose!44856 ((Set Context!10756) Context!10756 Int) Unit!157259)

(assert (=> d!1866115 (= lt!2313508 (choose!44856 lt!2313334 lt!2313343 lambda!324847))))

(assert (=> d!1866115 (= lt!2313334 (set.insert lt!2313343 (as set.empty (Set Context!10756))))))

(assert (=> d!1866115 (= (lemmaFlatMapOnSingletonSet!1033 lt!2313334 lt!2313343 lambda!324847) lt!2313508)))

(declare-fun b_lambda!223729 () Bool)

(assert (=> (not b_lambda!223729) (not d!1866115)))

(declare-fun bs!1410302 () Bool)

(assert (= bs!1410302 d!1866115))

(assert (=> bs!1410302 m!6839682))

(declare-fun m!6840124 () Bool)

(assert (=> bs!1410302 m!6840124))

(declare-fun m!6840126 () Bool)

(assert (=> bs!1410302 m!6840126))

(assert (=> bs!1410302 m!6839694))

(assert (=> b!5952005 d!1866115))

(declare-fun d!1866117 () Bool)

(assert (=> d!1866117 (= (flatMap!1507 lt!2313332 lambda!324847) (dynLambda!25105 lambda!324847 lt!2313339))))

(declare-fun lt!2313509 () Unit!157259)

(assert (=> d!1866117 (= lt!2313509 (choose!44856 lt!2313332 lt!2313339 lambda!324847))))

(assert (=> d!1866117 (= lt!2313332 (set.insert lt!2313339 (as set.empty (Set Context!10756))))))

(assert (=> d!1866117 (= (lemmaFlatMapOnSingletonSet!1033 lt!2313332 lt!2313339 lambda!324847) lt!2313509)))

(declare-fun b_lambda!223731 () Bool)

(assert (=> (not b_lambda!223731) (not d!1866117)))

(declare-fun bs!1410303 () Bool)

(assert (= bs!1410303 d!1866117))

(assert (=> bs!1410303 m!6839676))

(declare-fun m!6840128 () Bool)

(assert (=> bs!1410303 m!6840128))

(declare-fun m!6840130 () Bool)

(assert (=> bs!1410303 m!6840130))

(assert (=> bs!1410303 m!6839690))

(assert (=> b!5952005 d!1866117))

(declare-fun d!1866119 () Bool)

(declare-fun nullableFct!1961 (Regex!15994) Bool)

(assert (=> d!1866119 (= (nullable!5989 (regOne!32500 r!7292)) (nullableFct!1961 (regOne!32500 r!7292)))))

(declare-fun bs!1410304 () Bool)

(assert (= bs!1410304 d!1866119))

(declare-fun m!6840132 () Bool)

(assert (=> bs!1410304 m!6840132))

(assert (=> b!5952005 d!1866119))

(declare-fun bm!474172 () Bool)

(declare-fun call!474177 () (Set Context!10756))

(assert (=> bm!474172 (= call!474177 (derivationStepZipperDown!1244 (h!70605 (exprs!5878 lt!2313339)) (Context!10757 (t!377692 (exprs!5878 lt!2313339))) (h!70607 s!2326)))))

(declare-fun b!5952443 () Bool)

(declare-fun e!3641340 () (Set Context!10756))

(declare-fun e!3641341 () (Set Context!10756))

(assert (=> b!5952443 (= e!3641340 e!3641341)))

(declare-fun c!1059282 () Bool)

(assert (=> b!5952443 (= c!1059282 (is-Cons!64157 (exprs!5878 lt!2313339)))))

(declare-fun b!5952444 () Bool)

(assert (=> b!5952444 (= e!3641341 call!474177)))

(declare-fun d!1866121 () Bool)

(declare-fun c!1059283 () Bool)

(declare-fun e!3641342 () Bool)

(assert (=> d!1866121 (= c!1059283 e!3641342)))

(declare-fun res!2491678 () Bool)

(assert (=> d!1866121 (=> (not res!2491678) (not e!3641342))))

(assert (=> d!1866121 (= res!2491678 (is-Cons!64157 (exprs!5878 lt!2313339)))))

(assert (=> d!1866121 (= (derivationStepZipperUp!1170 lt!2313339 (h!70607 s!2326)) e!3641340)))

(declare-fun b!5952445 () Bool)

(assert (=> b!5952445 (= e!3641341 (as set.empty (Set Context!10756)))))

(declare-fun b!5952446 () Bool)

(assert (=> b!5952446 (= e!3641342 (nullable!5989 (h!70605 (exprs!5878 lt!2313339))))))

(declare-fun b!5952447 () Bool)

(assert (=> b!5952447 (= e!3641340 (set.union call!474177 (derivationStepZipperUp!1170 (Context!10757 (t!377692 (exprs!5878 lt!2313339))) (h!70607 s!2326))))))

(assert (= (and d!1866121 res!2491678) b!5952446))

(assert (= (and d!1866121 c!1059283) b!5952447))

(assert (= (and d!1866121 (not c!1059283)) b!5952443))

(assert (= (and b!5952443 c!1059282) b!5952444))

(assert (= (and b!5952443 (not c!1059282)) b!5952445))

(assert (= (or b!5952447 b!5952444) bm!474172))

(declare-fun m!6840134 () Bool)

(assert (=> bm!474172 m!6840134))

(declare-fun m!6840136 () Bool)

(assert (=> b!5952446 m!6840136))

(declare-fun m!6840138 () Bool)

(assert (=> b!5952447 m!6840138))

(assert (=> b!5952005 d!1866121))

(declare-fun call!474181 () List!64281)

(declare-fun call!474179 () (Set Context!10756))

(declare-fun bm!474173 () Bool)

(declare-fun c!1059286 () Bool)

(assert (=> bm!474173 (= call!474179 (derivationStepZipperDown!1244 (ite c!1059286 (regTwo!32501 (regOne!32500 r!7292)) (regOne!32500 (regOne!32500 r!7292))) (ite c!1059286 lt!2313339 (Context!10757 call!474181)) (h!70607 s!2326)))))

(declare-fun call!474180 () (Set Context!10756))

(declare-fun bm!474174 () Bool)

(declare-fun c!1059288 () Bool)

(declare-fun call!474183 () List!64281)

(declare-fun c!1059285 () Bool)

(assert (=> bm!474174 (= call!474180 (derivationStepZipperDown!1244 (ite c!1059286 (regOne!32501 (regOne!32500 r!7292)) (ite c!1059285 (regTwo!32500 (regOne!32500 r!7292)) (ite c!1059288 (regOne!32500 (regOne!32500 r!7292)) (reg!16323 (regOne!32500 r!7292))))) (ite (or c!1059286 c!1059285) lt!2313339 (Context!10757 call!474183)) (h!70607 s!2326)))))

(declare-fun bm!474175 () Bool)

(declare-fun call!474182 () (Set Context!10756))

(assert (=> bm!474175 (= call!474182 call!474180)))

(declare-fun b!5952448 () Bool)

(declare-fun e!3641344 () Bool)

(assert (=> b!5952448 (= e!3641344 (nullable!5989 (regOne!32500 (regOne!32500 r!7292))))))

(declare-fun bm!474176 () Bool)

(declare-fun call!474178 () (Set Context!10756))

(assert (=> bm!474176 (= call!474178 call!474182)))

(declare-fun b!5952449 () Bool)

(declare-fun e!3641348 () (Set Context!10756))

(declare-fun e!3641346 () (Set Context!10756))

(assert (=> b!5952449 (= e!3641348 e!3641346)))

(assert (=> b!5952449 (= c!1059286 (is-Union!15994 (regOne!32500 r!7292)))))

(declare-fun b!5952450 () Bool)

(declare-fun e!3641347 () (Set Context!10756))

(assert (=> b!5952450 (= e!3641347 (set.union call!474179 call!474182))))

(declare-fun b!5952451 () Bool)

(assert (=> b!5952451 (= e!3641348 (set.insert lt!2313339 (as set.empty (Set Context!10756))))))

(declare-fun b!5952452 () Bool)

(declare-fun e!3641343 () (Set Context!10756))

(assert (=> b!5952452 (= e!3641347 e!3641343)))

(assert (=> b!5952452 (= c!1059288 (is-Concat!24839 (regOne!32500 r!7292)))))

(declare-fun d!1866123 () Bool)

(declare-fun c!1059284 () Bool)

(assert (=> d!1866123 (= c!1059284 (and (is-ElementMatch!15994 (regOne!32500 r!7292)) (= (c!1059166 (regOne!32500 r!7292)) (h!70607 s!2326))))))

(assert (=> d!1866123 (= (derivationStepZipperDown!1244 (regOne!32500 r!7292) lt!2313339 (h!70607 s!2326)) e!3641348)))

(declare-fun bm!474177 () Bool)

(assert (=> bm!474177 (= call!474183 call!474181)))

(declare-fun b!5952453 () Bool)

(assert (=> b!5952453 (= e!3641346 (set.union call!474180 call!474179))))

(declare-fun b!5952454 () Bool)

(declare-fun e!3641345 () (Set Context!10756))

(assert (=> b!5952454 (= e!3641345 call!474178)))

(declare-fun b!5952455 () Bool)

(declare-fun c!1059287 () Bool)

(assert (=> b!5952455 (= c!1059287 (is-Star!15994 (regOne!32500 r!7292)))))

(assert (=> b!5952455 (= e!3641343 e!3641345)))

(declare-fun b!5952456 () Bool)

(assert (=> b!5952456 (= e!3641343 call!474178)))

(declare-fun b!5952457 () Bool)

(assert (=> b!5952457 (= e!3641345 (as set.empty (Set Context!10756)))))

(declare-fun b!5952458 () Bool)

(assert (=> b!5952458 (= c!1059285 e!3641344)))

(declare-fun res!2491679 () Bool)

(assert (=> b!5952458 (=> (not res!2491679) (not e!3641344))))

(assert (=> b!5952458 (= res!2491679 (is-Concat!24839 (regOne!32500 r!7292)))))

(assert (=> b!5952458 (= e!3641346 e!3641347)))

(declare-fun bm!474178 () Bool)

(assert (=> bm!474178 (= call!474181 ($colon$colon!1881 (exprs!5878 lt!2313339) (ite (or c!1059285 c!1059288) (regTwo!32500 (regOne!32500 r!7292)) (regOne!32500 r!7292))))))

(assert (= (and d!1866123 c!1059284) b!5952451))

(assert (= (and d!1866123 (not c!1059284)) b!5952449))

(assert (= (and b!5952449 c!1059286) b!5952453))

(assert (= (and b!5952449 (not c!1059286)) b!5952458))

(assert (= (and b!5952458 res!2491679) b!5952448))

(assert (= (and b!5952458 c!1059285) b!5952450))

(assert (= (and b!5952458 (not c!1059285)) b!5952452))

(assert (= (and b!5952452 c!1059288) b!5952456))

(assert (= (and b!5952452 (not c!1059288)) b!5952455))

(assert (= (and b!5952455 c!1059287) b!5952454))

(assert (= (and b!5952455 (not c!1059287)) b!5952457))

(assert (= (or b!5952456 b!5952454) bm!474177))

(assert (= (or b!5952456 b!5952454) bm!474176))

(assert (= (or b!5952450 bm!474177) bm!474178))

(assert (= (or b!5952450 bm!474176) bm!474175))

(assert (= (or b!5952453 b!5952450) bm!474173))

(assert (= (or b!5952453 bm!474175) bm!474174))

(declare-fun m!6840140 () Bool)

(assert (=> b!5952448 m!6840140))

(assert (=> b!5952451 m!6839690))

(declare-fun m!6840142 () Bool)

(assert (=> bm!474178 m!6840142))

(declare-fun m!6840144 () Bool)

(assert (=> bm!474173 m!6840144))

(declare-fun m!6840146 () Bool)

(assert (=> bm!474174 m!6840146))

(assert (=> b!5952005 d!1866123))

(declare-fun bm!474179 () Bool)

(declare-fun call!474184 () (Set Context!10756))

(assert (=> bm!474179 (= call!474184 (derivationStepZipperDown!1244 (h!70605 (exprs!5878 lt!2313343)) (Context!10757 (t!377692 (exprs!5878 lt!2313343))) (h!70607 s!2326)))))

(declare-fun b!5952459 () Bool)

(declare-fun e!3641349 () (Set Context!10756))

(declare-fun e!3641350 () (Set Context!10756))

(assert (=> b!5952459 (= e!3641349 e!3641350)))

(declare-fun c!1059289 () Bool)

(assert (=> b!5952459 (= c!1059289 (is-Cons!64157 (exprs!5878 lt!2313343)))))

(declare-fun b!5952460 () Bool)

(assert (=> b!5952460 (= e!3641350 call!474184)))

(declare-fun d!1866125 () Bool)

(declare-fun c!1059290 () Bool)

(declare-fun e!3641351 () Bool)

(assert (=> d!1866125 (= c!1059290 e!3641351)))

(declare-fun res!2491680 () Bool)

(assert (=> d!1866125 (=> (not res!2491680) (not e!3641351))))

(assert (=> d!1866125 (= res!2491680 (is-Cons!64157 (exprs!5878 lt!2313343)))))

(assert (=> d!1866125 (= (derivationStepZipperUp!1170 lt!2313343 (h!70607 s!2326)) e!3641349)))

(declare-fun b!5952461 () Bool)

(assert (=> b!5952461 (= e!3641350 (as set.empty (Set Context!10756)))))

(declare-fun b!5952462 () Bool)

(assert (=> b!5952462 (= e!3641351 (nullable!5989 (h!70605 (exprs!5878 lt!2313343))))))

(declare-fun b!5952463 () Bool)

(assert (=> b!5952463 (= e!3641349 (set.union call!474184 (derivationStepZipperUp!1170 (Context!10757 (t!377692 (exprs!5878 lt!2313343))) (h!70607 s!2326))))))

(assert (= (and d!1866125 res!2491680) b!5952462))

(assert (= (and d!1866125 c!1059290) b!5952463))

(assert (= (and d!1866125 (not c!1059290)) b!5952459))

(assert (= (and b!5952459 c!1059289) b!5952460))

(assert (= (and b!5952459 (not c!1059289)) b!5952461))

(assert (= (or b!5952463 b!5952460) bm!474179))

(declare-fun m!6840148 () Bool)

(assert (=> bm!474179 m!6840148))

(declare-fun m!6840150 () Bool)

(assert (=> b!5952462 m!6840150))

(declare-fun m!6840152 () Bool)

(assert (=> b!5952463 m!6840152))

(assert (=> b!5952005 d!1866125))

(declare-fun d!1866127 () Bool)

(declare-fun choose!44857 ((Set Context!10756) Int) (Set Context!10756))

(assert (=> d!1866127 (= (flatMap!1507 lt!2313332 lambda!324847) (choose!44857 lt!2313332 lambda!324847))))

(declare-fun bs!1410305 () Bool)

(assert (= bs!1410305 d!1866127))

(declare-fun m!6840154 () Bool)

(assert (=> bs!1410305 m!6840154))

(assert (=> b!5952005 d!1866127))

(declare-fun d!1866129 () Bool)

(assert (=> d!1866129 (= (flatMap!1507 lt!2313334 lambda!324847) (choose!44857 lt!2313334 lambda!324847))))

(declare-fun bs!1410306 () Bool)

(assert (= bs!1410306 d!1866129))

(declare-fun m!6840156 () Bool)

(assert (=> bs!1410306 m!6840156))

(assert (=> b!5952005 d!1866129))

(declare-fun d!1866131 () Bool)

(assert (=> d!1866131 (= (flatMap!1507 z!1189 lambda!324847) (choose!44857 z!1189 lambda!324847))))

(declare-fun bs!1410307 () Bool)

(assert (= bs!1410307 d!1866131))

(declare-fun m!6840158 () Bool)

(assert (=> bs!1410307 m!6840158))

(assert (=> b!5951995 d!1866131))

(declare-fun bm!474180 () Bool)

(declare-fun call!474185 () (Set Context!10756))

(assert (=> bm!474180 (= call!474185 (derivationStepZipperDown!1244 (h!70605 (exprs!5878 (h!70606 zl!343))) (Context!10757 (t!377692 (exprs!5878 (h!70606 zl!343)))) (h!70607 s!2326)))))

(declare-fun b!5952464 () Bool)

(declare-fun e!3641352 () (Set Context!10756))

(declare-fun e!3641353 () (Set Context!10756))

(assert (=> b!5952464 (= e!3641352 e!3641353)))

(declare-fun c!1059291 () Bool)

(assert (=> b!5952464 (= c!1059291 (is-Cons!64157 (exprs!5878 (h!70606 zl!343))))))

(declare-fun b!5952465 () Bool)

(assert (=> b!5952465 (= e!3641353 call!474185)))

(declare-fun d!1866133 () Bool)

(declare-fun c!1059292 () Bool)

(declare-fun e!3641354 () Bool)

(assert (=> d!1866133 (= c!1059292 e!3641354)))

(declare-fun res!2491681 () Bool)

(assert (=> d!1866133 (=> (not res!2491681) (not e!3641354))))

(assert (=> d!1866133 (= res!2491681 (is-Cons!64157 (exprs!5878 (h!70606 zl!343))))))

(assert (=> d!1866133 (= (derivationStepZipperUp!1170 (h!70606 zl!343) (h!70607 s!2326)) e!3641352)))

(declare-fun b!5952466 () Bool)

(assert (=> b!5952466 (= e!3641353 (as set.empty (Set Context!10756)))))

(declare-fun b!5952467 () Bool)

(assert (=> b!5952467 (= e!3641354 (nullable!5989 (h!70605 (exprs!5878 (h!70606 zl!343)))))))

(declare-fun b!5952468 () Bool)

(assert (=> b!5952468 (= e!3641352 (set.union call!474185 (derivationStepZipperUp!1170 (Context!10757 (t!377692 (exprs!5878 (h!70606 zl!343)))) (h!70607 s!2326))))))

(assert (= (and d!1866133 res!2491681) b!5952467))

(assert (= (and d!1866133 c!1059292) b!5952468))

(assert (= (and d!1866133 (not c!1059292)) b!5952464))

(assert (= (and b!5952464 c!1059291) b!5952465))

(assert (= (and b!5952464 (not c!1059291)) b!5952466))

(assert (= (or b!5952468 b!5952465) bm!474180))

(declare-fun m!6840160 () Bool)

(assert (=> bm!474180 m!6840160))

(declare-fun m!6840162 () Bool)

(assert (=> b!5952467 m!6840162))

(declare-fun m!6840164 () Bool)

(assert (=> b!5952468 m!6840164))

(assert (=> b!5951995 d!1866133))

(declare-fun d!1866135 () Bool)

(assert (=> d!1866135 (= (flatMap!1507 z!1189 lambda!324847) (dynLambda!25105 lambda!324847 (h!70606 zl!343)))))

(declare-fun lt!2313510 () Unit!157259)

(assert (=> d!1866135 (= lt!2313510 (choose!44856 z!1189 (h!70606 zl!343) lambda!324847))))

(assert (=> d!1866135 (= z!1189 (set.insert (h!70606 zl!343) (as set.empty (Set Context!10756))))))

(assert (=> d!1866135 (= (lemmaFlatMapOnSingletonSet!1033 z!1189 (h!70606 zl!343) lambda!324847) lt!2313510)))

(declare-fun b_lambda!223733 () Bool)

(assert (=> (not b_lambda!223733) (not d!1866135)))

(declare-fun bs!1410308 () Bool)

(assert (= bs!1410308 d!1866135))

(assert (=> bs!1410308 m!6839706))

(declare-fun m!6840166 () Bool)

(assert (=> bs!1410308 m!6840166))

(declare-fun m!6840168 () Bool)

(assert (=> bs!1410308 m!6840168))

(declare-fun m!6840170 () Bool)

(assert (=> bs!1410308 m!6840170))

(assert (=> b!5951995 d!1866135))

(declare-fun b!5952487 () Bool)

(declare-fun e!3641369 () Bool)

(declare-fun e!3641371 () Bool)

(assert (=> b!5952487 (= e!3641369 e!3641371)))

(declare-fun res!2491695 () Bool)

(assert (=> b!5952487 (= res!2491695 (not (nullable!5989 (reg!16323 r!7292))))))

(assert (=> b!5952487 (=> (not res!2491695) (not e!3641371))))

(declare-fun b!5952488 () Bool)

(declare-fun call!474194 () Bool)

(assert (=> b!5952488 (= e!3641371 call!474194)))

(declare-fun bm!474187 () Bool)

(declare-fun c!1059297 () Bool)

(declare-fun c!1059298 () Bool)

(assert (=> bm!474187 (= call!474194 (validRegex!7730 (ite c!1059297 (reg!16323 r!7292) (ite c!1059298 (regOne!32501 r!7292) (regOne!32500 r!7292)))))))

(declare-fun b!5952490 () Bool)

(declare-fun res!2491692 () Bool)

(declare-fun e!3641370 () Bool)

(assert (=> b!5952490 (=> (not res!2491692) (not e!3641370))))

(declare-fun call!474192 () Bool)

(assert (=> b!5952490 (= res!2491692 call!474192)))

(declare-fun e!3641375 () Bool)

(assert (=> b!5952490 (= e!3641375 e!3641370)))

(declare-fun b!5952491 () Bool)

(declare-fun call!474193 () Bool)

(assert (=> b!5952491 (= e!3641370 call!474193)))

(declare-fun b!5952492 () Bool)

(declare-fun res!2491696 () Bool)

(declare-fun e!3641372 () Bool)

(assert (=> b!5952492 (=> res!2491696 e!3641372)))

(assert (=> b!5952492 (= res!2491696 (not (is-Concat!24839 r!7292)))))

(assert (=> b!5952492 (= e!3641375 e!3641372)))

(declare-fun b!5952493 () Bool)

(assert (=> b!5952493 (= e!3641369 e!3641375)))

(assert (=> b!5952493 (= c!1059298 (is-Union!15994 r!7292))))

(declare-fun b!5952494 () Bool)

(declare-fun e!3641374 () Bool)

(assert (=> b!5952494 (= e!3641372 e!3641374)))

(declare-fun res!2491693 () Bool)

(assert (=> b!5952494 (=> (not res!2491693) (not e!3641374))))

(assert (=> b!5952494 (= res!2491693 call!474192)))

(declare-fun b!5952495 () Bool)

(assert (=> b!5952495 (= e!3641374 call!474193)))

(declare-fun d!1866137 () Bool)

(declare-fun res!2491694 () Bool)

(declare-fun e!3641373 () Bool)

(assert (=> d!1866137 (=> res!2491694 e!3641373)))

(assert (=> d!1866137 (= res!2491694 (is-ElementMatch!15994 r!7292))))

(assert (=> d!1866137 (= (validRegex!7730 r!7292) e!3641373)))

(declare-fun b!5952489 () Bool)

(assert (=> b!5952489 (= e!3641373 e!3641369)))

(assert (=> b!5952489 (= c!1059297 (is-Star!15994 r!7292))))

(declare-fun bm!474188 () Bool)

(assert (=> bm!474188 (= call!474193 (validRegex!7730 (ite c!1059298 (regTwo!32501 r!7292) (regTwo!32500 r!7292))))))

(declare-fun bm!474189 () Bool)

(assert (=> bm!474189 (= call!474192 call!474194)))

(assert (= (and d!1866137 (not res!2491694)) b!5952489))

(assert (= (and b!5952489 c!1059297) b!5952487))

(assert (= (and b!5952489 (not c!1059297)) b!5952493))

(assert (= (and b!5952487 res!2491695) b!5952488))

(assert (= (and b!5952493 c!1059298) b!5952490))

(assert (= (and b!5952493 (not c!1059298)) b!5952492))

(assert (= (and b!5952490 res!2491692) b!5952491))

(assert (= (and b!5952492 (not res!2491696)) b!5952494))

(assert (= (and b!5952494 res!2491693) b!5952495))

(assert (= (or b!5952491 b!5952495) bm!474188))

(assert (= (or b!5952490 b!5952494) bm!474189))

(assert (= (or b!5952488 bm!474189) bm!474187))

(declare-fun m!6840172 () Bool)

(assert (=> b!5952487 m!6840172))

(declare-fun m!6840174 () Bool)

(assert (=> bm!474187 m!6840174))

(declare-fun m!6840176 () Bool)

(assert (=> bm!474188 m!6840176))

(assert (=> start!604408 d!1866137))

(declare-fun b!5952508 () Bool)

(declare-fun e!3641378 () Bool)

(declare-fun tp!1656243 () Bool)

(assert (=> b!5952508 (= e!3641378 tp!1656243)))

(declare-fun b!5952506 () Bool)

(assert (=> b!5952506 (= e!3641378 tp_is_empty!41241)))

(declare-fun b!5952509 () Bool)

(declare-fun tp!1656240 () Bool)

(declare-fun tp!1656239 () Bool)

(assert (=> b!5952509 (= e!3641378 (and tp!1656240 tp!1656239))))

(assert (=> b!5952017 (= tp!1656194 e!3641378)))

(declare-fun b!5952507 () Bool)

(declare-fun tp!1656241 () Bool)

(declare-fun tp!1656242 () Bool)

(assert (=> b!5952507 (= e!3641378 (and tp!1656241 tp!1656242))))

(assert (= (and b!5952017 (is-ElementMatch!15994 (reg!16323 r!7292))) b!5952506))

(assert (= (and b!5952017 (is-Concat!24839 (reg!16323 r!7292))) b!5952507))

(assert (= (and b!5952017 (is-Star!15994 (reg!16323 r!7292))) b!5952508))

(assert (= (and b!5952017 (is-Union!15994 (reg!16323 r!7292))) b!5952509))

(declare-fun b!5952514 () Bool)

(declare-fun e!3641381 () Bool)

(declare-fun tp!1656248 () Bool)

(declare-fun tp!1656249 () Bool)

(assert (=> b!5952514 (= e!3641381 (and tp!1656248 tp!1656249))))

(assert (=> b!5952023 (= tp!1656190 e!3641381)))

(assert (= (and b!5952023 (is-Cons!64157 (exprs!5878 setElem!40452))) b!5952514))

(declare-fun condSetEmpty!40458 () Bool)

(assert (=> setNonEmpty!40452 (= condSetEmpty!40458 (= setRest!40452 (as set.empty (Set Context!10756))))))

(declare-fun setRes!40458 () Bool)

(assert (=> setNonEmpty!40452 (= tp!1656196 setRes!40458)))

(declare-fun setIsEmpty!40458 () Bool)

(assert (=> setIsEmpty!40458 setRes!40458))

(declare-fun e!3641384 () Bool)

(declare-fun tp!1656254 () Bool)

(declare-fun setElem!40458 () Context!10756)

(declare-fun setNonEmpty!40458 () Bool)

(assert (=> setNonEmpty!40458 (= setRes!40458 (and tp!1656254 (inv!83233 setElem!40458) e!3641384))))

(declare-fun setRest!40458 () (Set Context!10756))

(assert (=> setNonEmpty!40458 (= setRest!40452 (set.union (set.insert setElem!40458 (as set.empty (Set Context!10756))) setRest!40458))))

(declare-fun b!5952519 () Bool)

(declare-fun tp!1656255 () Bool)

(assert (=> b!5952519 (= e!3641384 tp!1656255)))

(assert (= (and setNonEmpty!40452 condSetEmpty!40458) setIsEmpty!40458))

(assert (= (and setNonEmpty!40452 (not condSetEmpty!40458)) setNonEmpty!40458))

(assert (= setNonEmpty!40458 b!5952519))

(declare-fun m!6840178 () Bool)

(assert (=> setNonEmpty!40458 m!6840178))

(declare-fun b!5952522 () Bool)

(declare-fun e!3641385 () Bool)

(declare-fun tp!1656260 () Bool)

(assert (=> b!5952522 (= e!3641385 tp!1656260)))

(declare-fun b!5952520 () Bool)

(assert (=> b!5952520 (= e!3641385 tp_is_empty!41241)))

(declare-fun b!5952523 () Bool)

(declare-fun tp!1656257 () Bool)

(declare-fun tp!1656256 () Bool)

(assert (=> b!5952523 (= e!3641385 (and tp!1656257 tp!1656256))))

(assert (=> b!5952014 (= tp!1656193 e!3641385)))

(declare-fun b!5952521 () Bool)

(declare-fun tp!1656258 () Bool)

(declare-fun tp!1656259 () Bool)

(assert (=> b!5952521 (= e!3641385 (and tp!1656258 tp!1656259))))

(assert (= (and b!5952014 (is-ElementMatch!15994 (regOne!32501 r!7292))) b!5952520))

(assert (= (and b!5952014 (is-Concat!24839 (regOne!32501 r!7292))) b!5952521))

(assert (= (and b!5952014 (is-Star!15994 (regOne!32501 r!7292))) b!5952522))

(assert (= (and b!5952014 (is-Union!15994 (regOne!32501 r!7292))) b!5952523))

(declare-fun b!5952526 () Bool)

(declare-fun e!3641386 () Bool)

(declare-fun tp!1656265 () Bool)

(assert (=> b!5952526 (= e!3641386 tp!1656265)))

(declare-fun b!5952524 () Bool)

(assert (=> b!5952524 (= e!3641386 tp_is_empty!41241)))

(declare-fun b!5952527 () Bool)

(declare-fun tp!1656262 () Bool)

(declare-fun tp!1656261 () Bool)

(assert (=> b!5952527 (= e!3641386 (and tp!1656262 tp!1656261))))

(assert (=> b!5952014 (= tp!1656189 e!3641386)))

(declare-fun b!5952525 () Bool)

(declare-fun tp!1656263 () Bool)

(declare-fun tp!1656264 () Bool)

(assert (=> b!5952525 (= e!3641386 (and tp!1656263 tp!1656264))))

(assert (= (and b!5952014 (is-ElementMatch!15994 (regTwo!32501 r!7292))) b!5952524))

(assert (= (and b!5952014 (is-Concat!24839 (regTwo!32501 r!7292))) b!5952525))

(assert (= (and b!5952014 (is-Star!15994 (regTwo!32501 r!7292))) b!5952526))

(assert (= (and b!5952014 (is-Union!15994 (regTwo!32501 r!7292))) b!5952527))

(declare-fun b!5952530 () Bool)

(declare-fun e!3641387 () Bool)

(declare-fun tp!1656270 () Bool)

(assert (=> b!5952530 (= e!3641387 tp!1656270)))

(declare-fun b!5952528 () Bool)

(assert (=> b!5952528 (= e!3641387 tp_is_empty!41241)))

(declare-fun b!5952531 () Bool)

(declare-fun tp!1656267 () Bool)

(declare-fun tp!1656266 () Bool)

(assert (=> b!5952531 (= e!3641387 (and tp!1656267 tp!1656266))))

(assert (=> b!5952018 (= tp!1656198 e!3641387)))

(declare-fun b!5952529 () Bool)

(declare-fun tp!1656268 () Bool)

(declare-fun tp!1656269 () Bool)

(assert (=> b!5952529 (= e!3641387 (and tp!1656268 tp!1656269))))

(assert (= (and b!5952018 (is-ElementMatch!15994 (regOne!32500 r!7292))) b!5952528))

(assert (= (and b!5952018 (is-Concat!24839 (regOne!32500 r!7292))) b!5952529))

(assert (= (and b!5952018 (is-Star!15994 (regOne!32500 r!7292))) b!5952530))

(assert (= (and b!5952018 (is-Union!15994 (regOne!32500 r!7292))) b!5952531))

(declare-fun b!5952534 () Bool)

(declare-fun e!3641388 () Bool)

(declare-fun tp!1656275 () Bool)

(assert (=> b!5952534 (= e!3641388 tp!1656275)))

(declare-fun b!5952532 () Bool)

(assert (=> b!5952532 (= e!3641388 tp_is_empty!41241)))

(declare-fun b!5952535 () Bool)

(declare-fun tp!1656272 () Bool)

(declare-fun tp!1656271 () Bool)

(assert (=> b!5952535 (= e!3641388 (and tp!1656272 tp!1656271))))

(assert (=> b!5952018 (= tp!1656197 e!3641388)))

(declare-fun b!5952533 () Bool)

(declare-fun tp!1656273 () Bool)

(declare-fun tp!1656274 () Bool)

(assert (=> b!5952533 (= e!3641388 (and tp!1656273 tp!1656274))))

(assert (= (and b!5952018 (is-ElementMatch!15994 (regTwo!32500 r!7292))) b!5952532))

(assert (= (and b!5952018 (is-Concat!24839 (regTwo!32500 r!7292))) b!5952533))

(assert (= (and b!5952018 (is-Star!15994 (regTwo!32500 r!7292))) b!5952534))

(assert (= (and b!5952018 (is-Union!15994 (regTwo!32500 r!7292))) b!5952535))

(declare-fun b!5952536 () Bool)

(declare-fun e!3641389 () Bool)

(declare-fun tp!1656276 () Bool)

(declare-fun tp!1656277 () Bool)

(assert (=> b!5952536 (= e!3641389 (and tp!1656276 tp!1656277))))

(assert (=> b!5952003 (= tp!1656195 e!3641389)))

(assert (= (and b!5952003 (is-Cons!64157 (exprs!5878 (h!70606 zl!343)))) b!5952536))

(declare-fun b!5952544 () Bool)

(declare-fun e!3641395 () Bool)

(declare-fun tp!1656282 () Bool)

(assert (=> b!5952544 (= e!3641395 tp!1656282)))

(declare-fun b!5952543 () Bool)

(declare-fun tp!1656283 () Bool)

(declare-fun e!3641394 () Bool)

(assert (=> b!5952543 (= e!3641394 (and (inv!83233 (h!70606 (t!377693 zl!343))) e!3641395 tp!1656283))))

(assert (=> b!5952016 (= tp!1656191 e!3641394)))

(assert (= b!5952543 b!5952544))

(assert (= (and b!5952016 (is-Cons!64158 (t!377693 zl!343))) b!5952543))

(declare-fun m!6840180 () Bool)

(assert (=> b!5952543 m!6840180))

(declare-fun b!5952549 () Bool)

(declare-fun e!3641398 () Bool)

(declare-fun tp!1656286 () Bool)

(assert (=> b!5952549 (= e!3641398 (and tp_is_empty!41241 tp!1656286))))

(assert (=> b!5952001 (= tp!1656192 e!3641398)))

(assert (= (and b!5952001 (is-Cons!64159 (t!377694 s!2326))) b!5952549))

(declare-fun b_lambda!223735 () Bool)

(assert (= b_lambda!223733 (or b!5951995 b_lambda!223735)))

(declare-fun bs!1410309 () Bool)

(declare-fun d!1866139 () Bool)

(assert (= bs!1410309 (and d!1866139 b!5951995)))

(assert (=> bs!1410309 (= (dynLambda!25105 lambda!324847 (h!70606 zl!343)) (derivationStepZipperUp!1170 (h!70606 zl!343) (h!70607 s!2326)))))

(assert (=> bs!1410309 m!6839708))

(assert (=> d!1866135 d!1866139))

(declare-fun b_lambda!223737 () Bool)

(assert (= b_lambda!223731 (or b!5951995 b_lambda!223737)))

(declare-fun bs!1410310 () Bool)

(declare-fun d!1866141 () Bool)

(assert (= bs!1410310 (and d!1866141 b!5951995)))

(assert (=> bs!1410310 (= (dynLambda!25105 lambda!324847 lt!2313339) (derivationStepZipperUp!1170 lt!2313339 (h!70607 s!2326)))))

(assert (=> bs!1410310 m!6839692))

(assert (=> d!1866117 d!1866141))

(declare-fun b_lambda!223739 () Bool)

(assert (= b_lambda!223729 (or b!5951995 b_lambda!223739)))

(declare-fun bs!1410311 () Bool)

(declare-fun d!1866143 () Bool)

(assert (= bs!1410311 (and d!1866143 b!5951995)))

(assert (=> bs!1410311 (= (dynLambda!25105 lambda!324847 lt!2313343) (derivationStepZipperUp!1170 lt!2313343 (h!70607 s!2326)))))

(assert (=> bs!1410311 m!6839678))

(assert (=> d!1866115 d!1866143))

(push 1)

(assert (not b!5952166))

(assert (not b!5952422))

(assert (not b!5952328))

(assert tp_is_empty!41241)

(assert (not d!1866045))

(assert (not bm!474179))

(assert (not b!5952268))

(assert (not bm!474149))

(assert (not bs!1410311))

(assert (not bm!474188))

(assert (not b!5952463))

(assert (not d!1866127))

(assert (not b!5952193))

(assert (not b!5952535))

(assert (not d!1866041))

(assert (not b!5952261))

(assert (not b!5952446))

(assert (not b!5952214))

(assert (not b!5952420))

(assert (not d!1866119))

(assert (not b!5952529))

(assert (not b!5952383))

(assert (not b!5952272))

(assert (not b!5952508))

(assert (not d!1866051))

(assert (not d!1866055))

(assert (not b!5952195))

(assert (not b!5952514))

(assert (not b!5952170))

(assert (not b!5952240))

(assert (not b!5952525))

(assert (not b!5952241))

(assert (not b!5952246))

(assert (not d!1866105))

(assert (not b!5952417))

(assert (not bs!1410309))

(assert (not b!5952522))

(assert (not d!1866049))

(assert (not b!5952427))

(assert (not d!1866081))

(assert (not d!1866047))

(assert (not b_lambda!223737))

(assert (not b!5952431))

(assert (not b!5952245))

(assert (not b!5952519))

(assert (not bm!474178))

(assert (not b!5952198))

(assert (not bm!474171))

(assert (not b!5952269))

(assert (not bm!474172))

(assert (not b!5952164))

(assert (not d!1866085))

(assert (not d!1866097))

(assert (not d!1866135))

(assert (not bm!474148))

(assert (not b!5952300))

(assert (not b!5952543))

(assert (not d!1866091))

(assert (not d!1866115))

(assert (not b!5952270))

(assert (not b!5952274))

(assert (not b!5952531))

(assert (not b!5952509))

(assert (not b!5952336))

(assert (not b!5952467))

(assert (not b!5952526))

(assert (not b!5952271))

(assert (not b!5952324))

(assert (not b!5952325))

(assert (not d!1866077))

(assert (not b!5952143))

(assert (not d!1866065))

(assert (not d!1866039))

(assert (not b!5952462))

(assert (not b!5952243))

(assert (not d!1866095))

(assert (not b!5952216))

(assert (not bm!474167))

(assert (not b!5952215))

(assert (not b!5952379))

(assert (not bm!474187))

(assert (not b!5952194))

(assert (not b!5952142))

(assert (not b!5952468))

(assert (not d!1866057))

(assert (not b!5952533))

(assert (not d!1866131))

(assert (not b!5952343))

(assert (not b!5952213))

(assert (not bm!474161))

(assert (not d!1866129))

(assert (not d!1866111))

(assert (not b!5952168))

(assert (not d!1866059))

(assert (not d!1866043))

(assert (not b!5952165))

(assert (not d!1866079))

(assert (not b!5952521))

(assert (not b!5952196))

(assert (not b!5952448))

(assert (not b!5952536))

(assert (not b!5952273))

(assert (not bm!474173))

(assert (not b!5952338))

(assert (not bm!474166))

(assert (not b!5952329))

(assert (not d!1866109))

(assert (not bm!474162))

(assert (not d!1866093))

(assert (not b!5952416))

(assert (not b!5952253))

(assert (not bm!474174))

(assert (not b!5952530))

(assert (not b!5952326))

(assert (not bm!474180))

(assert (not b!5952242))

(assert (not b!5952534))

(assert (not d!1866071))

(assert (not b!5952527))

(assert (not bm!474165))

(assert (not b!5952447))

(assert (not setNonEmpty!40458))

(assert (not b!5952507))

(assert (not d!1866107))

(assert (not b_lambda!223735))

(assert (not b_lambda!223739))

(assert (not d!1866061))

(assert (not b!5952523))

(assert (not d!1866117))

(assert (not b!5952544))

(assert (not b!5952327))

(assert (not bs!1410310))

(assert (not d!1866075))

(assert (not b!5952247))

(assert (not b!5952263))

(assert (not b!5952341))

(assert (not b!5952169))

(assert (not b!5952487))

(assert (not d!1866053))

(assert (not b!5952172))

(assert (not bm!474153))

(assert (not b!5952549))

(assert (not d!1866063))

(assert (not b!5952199))

(assert (not b!5952277))

(assert (not b!5952415))

(assert (not bm!474156))

(assert (not b!5952266))

(assert (not b!5952432))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

