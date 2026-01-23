; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!611880 () Bool)

(assert start!611880)

(declare-fun b!6126385 () Bool)

(assert (=> b!6126385 true))

(assert (=> b!6126385 true))

(declare-fun lambda!333671 () Int)

(declare-fun lambda!333670 () Int)

(assert (=> b!6126385 (not (= lambda!333671 lambda!333670))))

(assert (=> b!6126385 true))

(assert (=> b!6126385 true))

(declare-fun b!6126391 () Bool)

(assert (=> b!6126391 true))

(declare-fun b!6126382 () Bool)

(declare-fun e!3734422 () Bool)

(declare-fun tp_is_empty!41393 () Bool)

(assert (=> b!6126382 (= e!3734422 tp_is_empty!41393)))

(declare-fun b!6126383 () Bool)

(declare-fun res!2539416 () Bool)

(declare-fun e!3734427 () Bool)

(assert (=> b!6126383 (=> res!2539416 e!3734427)))

(declare-datatypes ((C!32410 0))(
  ( (C!32411 (val!25907 Int)) )
))
(declare-datatypes ((Regex!16070 0))(
  ( (ElementMatch!16070 (c!1101136 C!32410)) (Concat!24915 (regOne!32652 Regex!16070) (regTwo!32652 Regex!16070)) (EmptyExpr!16070) (Star!16070 (reg!16399 Regex!16070)) (EmptyLang!16070) (Union!16070 (regOne!32653 Regex!16070) (regTwo!32653 Regex!16070)) )
))
(declare-datatypes ((List!64509 0))(
  ( (Nil!64385) (Cons!64385 (h!70833 Regex!16070) (t!377974 List!64509)) )
))
(declare-datatypes ((Context!10908 0))(
  ( (Context!10909 (exprs!5954 List!64509)) )
))
(declare-datatypes ((List!64510 0))(
  ( (Nil!64386) (Cons!64386 (h!70834 Context!10908) (t!377975 List!64510)) )
))
(declare-fun zl!343 () List!64510)

(declare-fun isEmpty!36322 (List!64510) Bool)

(assert (=> b!6126383 (= res!2539416 (not (isEmpty!36322 (t!377975 zl!343))))))

(declare-fun b!6126384 () Bool)

(declare-fun e!3734425 () Bool)

(declare-fun tp!1712224 () Bool)

(assert (=> b!6126384 (= e!3734425 (and tp_is_empty!41393 tp!1712224))))

(declare-fun e!3734428 () Bool)

(assert (=> b!6126385 (= e!3734427 e!3734428)))

(declare-fun res!2539422 () Bool)

(assert (=> b!6126385 (=> res!2539422 e!3734428)))

(declare-fun lt!2331414 () Bool)

(declare-datatypes ((List!64511 0))(
  ( (Nil!64387) (Cons!64387 (h!70835 C!32410) (t!377976 List!64511)) )
))
(declare-fun s!2326 () List!64511)

(declare-fun lt!2331411 () Bool)

(assert (=> b!6126385 (= res!2539422 (or (not (= lt!2331414 lt!2331411)) (is-Nil!64387 s!2326)))))

(declare-fun Exists!3140 (Int) Bool)

(assert (=> b!6126385 (= (Exists!3140 lambda!333670) (Exists!3140 lambda!333671))))

(declare-datatypes ((Unit!157435 0))(
  ( (Unit!157436) )
))
(declare-fun lt!2331416 () Unit!157435)

(declare-fun r!7292 () Regex!16070)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1677 (Regex!16070 Regex!16070 List!64511) Unit!157435)

(assert (=> b!6126385 (= lt!2331416 (lemmaExistCutMatchRandMatchRSpecEquivalent!1677 (regOne!32652 r!7292) (regTwo!32652 r!7292) s!2326))))

(assert (=> b!6126385 (= lt!2331411 (Exists!3140 lambda!333670))))

(declare-datatypes ((tuple2!66098 0))(
  ( (tuple2!66099 (_1!36352 List!64511) (_2!36352 List!64511)) )
))
(declare-datatypes ((Option!15961 0))(
  ( (None!15960) (Some!15960 (v!52099 tuple2!66098)) )
))
(declare-fun isDefined!12664 (Option!15961) Bool)

(declare-fun findConcatSeparation!2375 (Regex!16070 Regex!16070 List!64511 List!64511 List!64511) Option!15961)

(assert (=> b!6126385 (= lt!2331411 (isDefined!12664 (findConcatSeparation!2375 (regOne!32652 r!7292) (regTwo!32652 r!7292) Nil!64387 s!2326 s!2326)))))

(declare-fun lt!2331415 () Unit!157435)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2139 (Regex!16070 Regex!16070 List!64511) Unit!157435)

(assert (=> b!6126385 (= lt!2331415 (lemmaFindConcatSeparationEquivalentToExists!2139 (regOne!32652 r!7292) (regTwo!32652 r!7292) s!2326))))

(declare-fun b!6126386 () Bool)

(declare-fun e!3734423 () Bool)

(declare-fun lt!2331410 () Context!10908)

(declare-fun inv!83423 (Context!10908) Bool)

(assert (=> b!6126386 (= e!3734423 (inv!83423 lt!2331410))))

(declare-fun setElem!41393 () Context!10908)

(declare-fun setNonEmpty!41393 () Bool)

(declare-fun e!3734418 () Bool)

(declare-fun setRes!41393 () Bool)

(declare-fun tp!1712228 () Bool)

(assert (=> setNonEmpty!41393 (= setRes!41393 (and tp!1712228 (inv!83423 setElem!41393) e!3734418))))

(declare-fun z!1189 () (Set Context!10908))

(declare-fun setRest!41393 () (Set Context!10908))

(assert (=> setNonEmpty!41393 (= z!1189 (set.union (set.insert setElem!41393 (as set.empty (Set Context!10908))) setRest!41393))))

(declare-fun b!6126387 () Bool)

(declare-fun tp!1712220 () Bool)

(declare-fun tp!1712227 () Bool)

(assert (=> b!6126387 (= e!3734422 (and tp!1712220 tp!1712227))))

(declare-fun setIsEmpty!41393 () Bool)

(assert (=> setIsEmpty!41393 setRes!41393))

(declare-fun b!6126388 () Bool)

(declare-fun e!3734419 () Bool)

(declare-fun tp!1712221 () Bool)

(assert (=> b!6126388 (= e!3734419 tp!1712221)))

(declare-fun b!6126389 () Bool)

(declare-fun e!3734421 () Unit!157435)

(declare-fun Unit!157437 () Unit!157435)

(assert (=> b!6126389 (= e!3734421 Unit!157437)))

(assert (=> b!6126391 (= e!3734428 e!3734423)))

(declare-fun res!2539414 () Bool)

(assert (=> b!6126391 (=> res!2539414 e!3734423)))

(assert (=> b!6126391 (= res!2539414 (or (and (is-ElementMatch!16070 (regOne!32652 r!7292)) (= (c!1101136 (regOne!32652 r!7292)) (h!70835 s!2326))) (not (is-Union!16070 (regOne!32652 r!7292)))))))

(declare-fun lt!2331418 () Unit!157435)

(assert (=> b!6126391 (= lt!2331418 e!3734421)))

(declare-fun c!1101135 () Bool)

(declare-fun nullable!6063 (Regex!16070) Bool)

(assert (=> b!6126391 (= c!1101135 (nullable!6063 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun lambda!333672 () Int)

(declare-fun flatMap!1575 ((Set Context!10908) Int) (Set Context!10908))

(declare-fun derivationStepZipperUp!1244 (Context!10908 C!32410) (Set Context!10908))

(assert (=> b!6126391 (= (flatMap!1575 z!1189 lambda!333672) (derivationStepZipperUp!1244 (h!70834 zl!343) (h!70835 s!2326)))))

(declare-fun lt!2331417 () Unit!157435)

(declare-fun lemmaFlatMapOnSingletonSet!1101 ((Set Context!10908) Context!10908 Int) Unit!157435)

(assert (=> b!6126391 (= lt!2331417 (lemmaFlatMapOnSingletonSet!1101 z!1189 (h!70834 zl!343) lambda!333672))))

(declare-fun lt!2331412 () (Set Context!10908))

(assert (=> b!6126391 (= lt!2331412 (derivationStepZipperUp!1244 lt!2331410 (h!70835 s!2326)))))

(declare-fun lt!2331407 () (Set Context!10908))

(declare-fun derivationStepZipperDown!1318 (Regex!16070 Context!10908 C!32410) (Set Context!10908))

(assert (=> b!6126391 (= lt!2331407 (derivationStepZipperDown!1318 (h!70833 (exprs!5954 (h!70834 zl!343))) lt!2331410 (h!70835 s!2326)))))

(assert (=> b!6126391 (= lt!2331410 (Context!10909 (t!377974 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun lt!2331408 () (Set Context!10908))

(assert (=> b!6126391 (= lt!2331408 (derivationStepZipperUp!1244 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343))))) (h!70835 s!2326)))))

(declare-fun b!6126392 () Bool)

(declare-fun res!2539417 () Bool)

(assert (=> b!6126392 (=> res!2539417 e!3734428)))

(declare-fun isEmpty!36323 (List!64509) Bool)

(assert (=> b!6126392 (= res!2539417 (isEmpty!36323 (t!377974 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun b!6126393 () Bool)

(declare-fun tp!1712222 () Bool)

(declare-fun tp!1712226 () Bool)

(assert (=> b!6126393 (= e!3734422 (and tp!1712222 tp!1712226))))

(declare-fun b!6126394 () Bool)

(declare-fun Unit!157438 () Unit!157435)

(assert (=> b!6126394 (= e!3734421 Unit!157438)))

(declare-fun lt!2331413 () Unit!157435)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!901 ((Set Context!10908) (Set Context!10908) List!64511) Unit!157435)

(assert (=> b!6126394 (= lt!2331413 (lemmaZipperConcatMatchesSameAsBothZippers!901 lt!2331407 lt!2331412 (t!377976 s!2326)))))

(declare-fun res!2539415 () Bool)

(declare-fun matchZipper!2082 ((Set Context!10908) List!64511) Bool)

(assert (=> b!6126394 (= res!2539415 (matchZipper!2082 lt!2331407 (t!377976 s!2326)))))

(declare-fun e!3734426 () Bool)

(assert (=> b!6126394 (=> res!2539415 e!3734426)))

(assert (=> b!6126394 (= (matchZipper!2082 (set.union lt!2331407 lt!2331412) (t!377976 s!2326)) e!3734426)))

(declare-fun b!6126395 () Bool)

(declare-fun res!2539410 () Bool)

(assert (=> b!6126395 (=> res!2539410 e!3734427)))

(declare-fun generalisedConcat!1667 (List!64509) Regex!16070)

(assert (=> b!6126395 (= res!2539410 (not (= r!7292 (generalisedConcat!1667 (exprs!5954 (h!70834 zl!343))))))))

(declare-fun b!6126396 () Bool)

(assert (=> b!6126396 (= e!3734426 (matchZipper!2082 lt!2331412 (t!377976 s!2326)))))

(declare-fun b!6126397 () Bool)

(declare-fun res!2539418 () Bool)

(assert (=> b!6126397 (=> res!2539418 e!3734427)))

(assert (=> b!6126397 (= res!2539418 (or (is-EmptyExpr!16070 r!7292) (is-EmptyLang!16070 r!7292) (is-ElementMatch!16070 r!7292) (is-Union!16070 r!7292) (not (is-Concat!24915 r!7292))))))

(declare-fun b!6126398 () Bool)

(declare-fun res!2539411 () Bool)

(assert (=> b!6126398 (=> res!2539411 e!3734427)))

(declare-fun generalisedUnion!1914 (List!64509) Regex!16070)

(declare-fun unfocusZipperList!1491 (List!64510) List!64509)

(assert (=> b!6126398 (= res!2539411 (not (= r!7292 (generalisedUnion!1914 (unfocusZipperList!1491 zl!343)))))))

(declare-fun b!6126399 () Bool)

(declare-fun e!3734420 () Bool)

(assert (=> b!6126399 (= e!3734420 (not e!3734427))))

(declare-fun res!2539413 () Bool)

(assert (=> b!6126399 (=> res!2539413 e!3734427)))

(assert (=> b!6126399 (= res!2539413 (not (is-Cons!64386 zl!343)))))

(declare-fun matchRSpec!3171 (Regex!16070 List!64511) Bool)

(assert (=> b!6126399 (= lt!2331414 (matchRSpec!3171 r!7292 s!2326))))

(declare-fun matchR!8253 (Regex!16070 List!64511) Bool)

(assert (=> b!6126399 (= lt!2331414 (matchR!8253 r!7292 s!2326))))

(declare-fun lt!2331409 () Unit!157435)

(declare-fun mainMatchTheorem!3171 (Regex!16070 List!64511) Unit!157435)

(assert (=> b!6126399 (= lt!2331409 (mainMatchTheorem!3171 r!7292 s!2326))))

(declare-fun b!6126400 () Bool)

(declare-fun res!2539419 () Bool)

(assert (=> b!6126400 (=> (not res!2539419) (not e!3734420))))

(declare-fun toList!9854 ((Set Context!10908)) List!64510)

(assert (=> b!6126400 (= res!2539419 (= (toList!9854 z!1189) zl!343))))

(declare-fun b!6126401 () Bool)

(declare-fun tp!1712223 () Bool)

(assert (=> b!6126401 (= e!3734422 tp!1712223)))

(declare-fun b!6126402 () Bool)

(declare-fun tp!1712225 () Bool)

(assert (=> b!6126402 (= e!3734418 tp!1712225)))

(declare-fun b!6126403 () Bool)

(declare-fun res!2539421 () Bool)

(assert (=> b!6126403 (=> (not res!2539421) (not e!3734420))))

(declare-fun unfocusZipper!1812 (List!64510) Regex!16070)

(assert (=> b!6126403 (= res!2539421 (= r!7292 (unfocusZipper!1812 zl!343)))))

(declare-fun b!6126404 () Bool)

(declare-fun res!2539420 () Bool)

(assert (=> b!6126404 (=> res!2539420 e!3734427)))

(assert (=> b!6126404 (= res!2539420 (not (is-Cons!64385 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun res!2539412 () Bool)

(assert (=> start!611880 (=> (not res!2539412) (not e!3734420))))

(declare-fun validRegex!7806 (Regex!16070) Bool)

(assert (=> start!611880 (= res!2539412 (validRegex!7806 r!7292))))

(assert (=> start!611880 e!3734420))

(assert (=> start!611880 e!3734422))

(declare-fun condSetEmpty!41393 () Bool)

(assert (=> start!611880 (= condSetEmpty!41393 (= z!1189 (as set.empty (Set Context!10908))))))

(assert (=> start!611880 setRes!41393))

(declare-fun e!3734424 () Bool)

(assert (=> start!611880 e!3734424))

(assert (=> start!611880 e!3734425))

(declare-fun b!6126390 () Bool)

(declare-fun tp!1712219 () Bool)

(assert (=> b!6126390 (= e!3734424 (and (inv!83423 (h!70834 zl!343)) e!3734419 tp!1712219))))

(assert (= (and start!611880 res!2539412) b!6126400))

(assert (= (and b!6126400 res!2539419) b!6126403))

(assert (= (and b!6126403 res!2539421) b!6126399))

(assert (= (and b!6126399 (not res!2539413)) b!6126383))

(assert (= (and b!6126383 (not res!2539416)) b!6126395))

(assert (= (and b!6126395 (not res!2539410)) b!6126404))

(assert (= (and b!6126404 (not res!2539420)) b!6126398))

(assert (= (and b!6126398 (not res!2539411)) b!6126397))

(assert (= (and b!6126397 (not res!2539418)) b!6126385))

(assert (= (and b!6126385 (not res!2539422)) b!6126392))

(assert (= (and b!6126392 (not res!2539417)) b!6126391))

(assert (= (and b!6126391 c!1101135) b!6126394))

(assert (= (and b!6126391 (not c!1101135)) b!6126389))

(assert (= (and b!6126394 (not res!2539415)) b!6126396))

(assert (= (and b!6126391 (not res!2539414)) b!6126386))

(assert (= (and start!611880 (is-ElementMatch!16070 r!7292)) b!6126382))

(assert (= (and start!611880 (is-Concat!24915 r!7292)) b!6126393))

(assert (= (and start!611880 (is-Star!16070 r!7292)) b!6126401))

(assert (= (and start!611880 (is-Union!16070 r!7292)) b!6126387))

(assert (= (and start!611880 condSetEmpty!41393) setIsEmpty!41393))

(assert (= (and start!611880 (not condSetEmpty!41393)) setNonEmpty!41393))

(assert (= setNonEmpty!41393 b!6126402))

(assert (= b!6126390 b!6126388))

(assert (= (and start!611880 (is-Cons!64386 zl!343)) b!6126390))

(assert (= (and start!611880 (is-Cons!64387 s!2326)) b!6126384))

(declare-fun m!6971116 () Bool)

(assert (=> b!6126383 m!6971116))

(declare-fun m!6971118 () Bool)

(assert (=> setNonEmpty!41393 m!6971118))

(declare-fun m!6971120 () Bool)

(assert (=> b!6126403 m!6971120))

(declare-fun m!6971122 () Bool)

(assert (=> b!6126400 m!6971122))

(declare-fun m!6971124 () Bool)

(assert (=> b!6126392 m!6971124))

(declare-fun m!6971126 () Bool)

(assert (=> b!6126395 m!6971126))

(declare-fun m!6971128 () Bool)

(assert (=> b!6126391 m!6971128))

(declare-fun m!6971130 () Bool)

(assert (=> b!6126391 m!6971130))

(declare-fun m!6971132 () Bool)

(assert (=> b!6126391 m!6971132))

(declare-fun m!6971134 () Bool)

(assert (=> b!6126391 m!6971134))

(declare-fun m!6971136 () Bool)

(assert (=> b!6126391 m!6971136))

(declare-fun m!6971138 () Bool)

(assert (=> b!6126391 m!6971138))

(declare-fun m!6971140 () Bool)

(assert (=> b!6126391 m!6971140))

(declare-fun m!6971142 () Bool)

(assert (=> b!6126394 m!6971142))

(declare-fun m!6971144 () Bool)

(assert (=> b!6126394 m!6971144))

(declare-fun m!6971146 () Bool)

(assert (=> b!6126394 m!6971146))

(declare-fun m!6971148 () Bool)

(assert (=> b!6126398 m!6971148))

(assert (=> b!6126398 m!6971148))

(declare-fun m!6971150 () Bool)

(assert (=> b!6126398 m!6971150))

(declare-fun m!6971152 () Bool)

(assert (=> b!6126390 m!6971152))

(declare-fun m!6971154 () Bool)

(assert (=> b!6126386 m!6971154))

(declare-fun m!6971156 () Bool)

(assert (=> b!6126396 m!6971156))

(declare-fun m!6971158 () Bool)

(assert (=> b!6126385 m!6971158))

(declare-fun m!6971160 () Bool)

(assert (=> b!6126385 m!6971160))

(declare-fun m!6971162 () Bool)

(assert (=> b!6126385 m!6971162))

(declare-fun m!6971164 () Bool)

(assert (=> b!6126385 m!6971164))

(assert (=> b!6126385 m!6971158))

(declare-fun m!6971166 () Bool)

(assert (=> b!6126385 m!6971166))

(assert (=> b!6126385 m!6971162))

(declare-fun m!6971168 () Bool)

(assert (=> b!6126385 m!6971168))

(declare-fun m!6971170 () Bool)

(assert (=> start!611880 m!6971170))

(declare-fun m!6971172 () Bool)

(assert (=> b!6126399 m!6971172))

(declare-fun m!6971174 () Bool)

(assert (=> b!6126399 m!6971174))

(declare-fun m!6971176 () Bool)

(assert (=> b!6126399 m!6971176))

(push 1)

(assert (not b!6126383))

(assert tp_is_empty!41393)

(assert (not setNonEmpty!41393))

(assert (not b!6126387))

(assert (not b!6126390))

(assert (not b!6126396))

(assert (not b!6126400))

(assert (not b!6126398))

(assert (not b!6126403))

(assert (not b!6126399))

(assert (not b!6126392))

(assert (not b!6126388))

(assert (not b!6126401))

(assert (not b!6126394))

(assert (not b!6126385))

(assert (not b!6126391))

(assert (not b!6126402))

(assert (not b!6126395))

(assert (not b!6126386))

(assert (not b!6126384))

(assert (not start!611880))

(assert (not b!6126393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1520039 () Bool)

(declare-fun b!6126536 () Bool)

(assert (= bs!1520039 (and b!6126536 b!6126385)))

(declare-fun lambda!333688 () Int)

(assert (=> bs!1520039 (not (= lambda!333688 lambda!333670))))

(assert (=> bs!1520039 (not (= lambda!333688 lambda!333671))))

(assert (=> b!6126536 true))

(assert (=> b!6126536 true))

(declare-fun bs!1520040 () Bool)

(declare-fun b!6126535 () Bool)

(assert (= bs!1520040 (and b!6126535 b!6126385)))

(declare-fun lambda!333689 () Int)

(assert (=> bs!1520040 (not (= lambda!333689 lambda!333670))))

(assert (=> bs!1520040 (= lambda!333689 lambda!333671)))

(declare-fun bs!1520041 () Bool)

(assert (= bs!1520041 (and b!6126535 b!6126536)))

(assert (=> bs!1520041 (not (= lambda!333689 lambda!333688))))

(assert (=> b!6126535 true))

(assert (=> b!6126535 true))

(declare-fun b!6126530 () Bool)

(declare-fun e!3734486 () Bool)

(assert (=> b!6126530 (= e!3734486 (matchRSpec!3171 (regTwo!32653 r!7292) s!2326))))

(declare-fun bm!507808 () Bool)

(declare-fun call!507813 () Bool)

(declare-fun isEmpty!36326 (List!64511) Bool)

(assert (=> bm!507808 (= call!507813 (isEmpty!36326 s!2326))))

(declare-fun b!6126531 () Bool)

(declare-fun e!3734490 () Bool)

(assert (=> b!6126531 (= e!3734490 e!3734486)))

(declare-fun res!2539490 () Bool)

(assert (=> b!6126531 (= res!2539490 (matchRSpec!3171 (regOne!32653 r!7292) s!2326))))

(assert (=> b!6126531 (=> res!2539490 e!3734486)))

(declare-fun b!6126532 () Bool)

(declare-fun c!1101155 () Bool)

(assert (=> b!6126532 (= c!1101155 (is-Union!16070 r!7292))))

(declare-fun e!3734488 () Bool)

(assert (=> b!6126532 (= e!3734488 e!3734490)))

(declare-fun d!1919639 () Bool)

(declare-fun c!1101154 () Bool)

(assert (=> d!1919639 (= c!1101154 (is-EmptyExpr!16070 r!7292))))

(declare-fun e!3734489 () Bool)

(assert (=> d!1919639 (= (matchRSpec!3171 r!7292 s!2326) e!3734489)))

(declare-fun b!6126533 () Bool)

(declare-fun e!3734491 () Bool)

(assert (=> b!6126533 (= e!3734490 e!3734491)))

(declare-fun c!1101152 () Bool)

(assert (=> b!6126533 (= c!1101152 (is-Star!16070 r!7292))))

(declare-fun b!6126534 () Bool)

(assert (=> b!6126534 (= e!3734489 call!507813)))

(declare-fun call!507814 () Bool)

(assert (=> b!6126535 (= e!3734491 call!507814)))

(declare-fun bm!507809 () Bool)

(assert (=> bm!507809 (= call!507814 (Exists!3140 (ite c!1101152 lambda!333688 lambda!333689)))))

(declare-fun e!3734492 () Bool)

(assert (=> b!6126536 (= e!3734492 call!507814)))

(declare-fun b!6126537 () Bool)

(declare-fun e!3734487 () Bool)

(assert (=> b!6126537 (= e!3734489 e!3734487)))

(declare-fun res!2539492 () Bool)

(assert (=> b!6126537 (= res!2539492 (not (is-EmptyLang!16070 r!7292)))))

(assert (=> b!6126537 (=> (not res!2539492) (not e!3734487))))

(declare-fun b!6126538 () Bool)

(assert (=> b!6126538 (= e!3734488 (= s!2326 (Cons!64387 (c!1101136 r!7292) Nil!64387)))))

(declare-fun b!6126539 () Bool)

(declare-fun c!1101153 () Bool)

(assert (=> b!6126539 (= c!1101153 (is-ElementMatch!16070 r!7292))))

(assert (=> b!6126539 (= e!3734487 e!3734488)))

(declare-fun b!6126540 () Bool)

(declare-fun res!2539491 () Bool)

(assert (=> b!6126540 (=> res!2539491 e!3734492)))

(assert (=> b!6126540 (= res!2539491 call!507813)))

(assert (=> b!6126540 (= e!3734491 e!3734492)))

(assert (= (and d!1919639 c!1101154) b!6126534))

(assert (= (and d!1919639 (not c!1101154)) b!6126537))

(assert (= (and b!6126537 res!2539492) b!6126539))

(assert (= (and b!6126539 c!1101153) b!6126538))

(assert (= (and b!6126539 (not c!1101153)) b!6126532))

(assert (= (and b!6126532 c!1101155) b!6126531))

(assert (= (and b!6126532 (not c!1101155)) b!6126533))

(assert (= (and b!6126531 (not res!2539490)) b!6126530))

(assert (= (and b!6126533 c!1101152) b!6126540))

(assert (= (and b!6126533 (not c!1101152)) b!6126535))

(assert (= (and b!6126540 (not res!2539491)) b!6126536))

(assert (= (or b!6126536 b!6126535) bm!507809))

(assert (= (or b!6126534 b!6126540) bm!507808))

(declare-fun m!6971240 () Bool)

(assert (=> b!6126530 m!6971240))

(declare-fun m!6971242 () Bool)

(assert (=> bm!507808 m!6971242))

(declare-fun m!6971244 () Bool)

(assert (=> b!6126531 m!6971244))

(declare-fun m!6971246 () Bool)

(assert (=> bm!507809 m!6971246))

(assert (=> b!6126399 d!1919639))

(declare-fun b!6126569 () Bool)

(declare-fun e!3734508 () Bool)

(declare-fun e!3734510 () Bool)

(assert (=> b!6126569 (= e!3734508 e!3734510)))

(declare-fun c!1101162 () Bool)

(assert (=> b!6126569 (= c!1101162 (is-EmptyLang!16070 r!7292))))

(declare-fun b!6126570 () Bool)

(declare-fun e!3734509 () Bool)

(declare-fun e!3734512 () Bool)

(assert (=> b!6126570 (= e!3734509 e!3734512)))

(declare-fun res!2539513 () Bool)

(assert (=> b!6126570 (=> (not res!2539513) (not e!3734512))))

(declare-fun lt!2331457 () Bool)

(assert (=> b!6126570 (= res!2539513 (not lt!2331457))))

(declare-fun b!6126571 () Bool)

(declare-fun e!3734507 () Bool)

(declare-fun head!12661 (List!64511) C!32410)

(assert (=> b!6126571 (= e!3734507 (= (head!12661 s!2326) (c!1101136 r!7292)))))

(declare-fun b!6126572 () Bool)

(declare-fun res!2539511 () Bool)

(assert (=> b!6126572 (=> res!2539511 e!3734509)))

(assert (=> b!6126572 (= res!2539511 (not (is-ElementMatch!16070 r!7292)))))

(assert (=> b!6126572 (= e!3734510 e!3734509)))

(declare-fun d!1919641 () Bool)

(assert (=> d!1919641 e!3734508))

(declare-fun c!1101164 () Bool)

(assert (=> d!1919641 (= c!1101164 (is-EmptyExpr!16070 r!7292))))

(declare-fun e!3734513 () Bool)

(assert (=> d!1919641 (= lt!2331457 e!3734513)))

(declare-fun c!1101163 () Bool)

(assert (=> d!1919641 (= c!1101163 (isEmpty!36326 s!2326))))

(assert (=> d!1919641 (validRegex!7806 r!7292)))

(assert (=> d!1919641 (= (matchR!8253 r!7292 s!2326) lt!2331457)))

(declare-fun b!6126573 () Bool)

(assert (=> b!6126573 (= e!3734510 (not lt!2331457))))

(declare-fun b!6126574 () Bool)

(declare-fun derivativeStep!4790 (Regex!16070 C!32410) Regex!16070)

(declare-fun tail!11746 (List!64511) List!64511)

(assert (=> b!6126574 (= e!3734513 (matchR!8253 (derivativeStep!4790 r!7292 (head!12661 s!2326)) (tail!11746 s!2326)))))

(declare-fun b!6126575 () Bool)

(declare-fun res!2539509 () Bool)

(declare-fun e!3734511 () Bool)

(assert (=> b!6126575 (=> res!2539509 e!3734511)))

(assert (=> b!6126575 (= res!2539509 (not (isEmpty!36326 (tail!11746 s!2326))))))

(declare-fun b!6126576 () Bool)

(declare-fun call!507817 () Bool)

(assert (=> b!6126576 (= e!3734508 (= lt!2331457 call!507817))))

(declare-fun b!6126577 () Bool)

(declare-fun res!2539512 () Bool)

(assert (=> b!6126577 (=> res!2539512 e!3734509)))

(assert (=> b!6126577 (= res!2539512 e!3734507)))

(declare-fun res!2539510 () Bool)

(assert (=> b!6126577 (=> (not res!2539510) (not e!3734507))))

(assert (=> b!6126577 (= res!2539510 lt!2331457)))

(declare-fun b!6126578 () Bool)

(declare-fun res!2539516 () Bool)

(assert (=> b!6126578 (=> (not res!2539516) (not e!3734507))))

(assert (=> b!6126578 (= res!2539516 (isEmpty!36326 (tail!11746 s!2326)))))

(declare-fun b!6126579 () Bool)

(assert (=> b!6126579 (= e!3734512 e!3734511)))

(declare-fun res!2539514 () Bool)

(assert (=> b!6126579 (=> res!2539514 e!3734511)))

(assert (=> b!6126579 (= res!2539514 call!507817)))

(declare-fun bm!507812 () Bool)

(assert (=> bm!507812 (= call!507817 (isEmpty!36326 s!2326))))

(declare-fun b!6126580 () Bool)

(declare-fun res!2539515 () Bool)

(assert (=> b!6126580 (=> (not res!2539515) (not e!3734507))))

(assert (=> b!6126580 (= res!2539515 (not call!507817))))

(declare-fun b!6126581 () Bool)

(assert (=> b!6126581 (= e!3734511 (not (= (head!12661 s!2326) (c!1101136 r!7292))))))

(declare-fun b!6126582 () Bool)

(assert (=> b!6126582 (= e!3734513 (nullable!6063 r!7292))))

(assert (= (and d!1919641 c!1101163) b!6126582))

(assert (= (and d!1919641 (not c!1101163)) b!6126574))

(assert (= (and d!1919641 c!1101164) b!6126576))

(assert (= (and d!1919641 (not c!1101164)) b!6126569))

(assert (= (and b!6126569 c!1101162) b!6126573))

(assert (= (and b!6126569 (not c!1101162)) b!6126572))

(assert (= (and b!6126572 (not res!2539511)) b!6126577))

(assert (= (and b!6126577 res!2539510) b!6126580))

(assert (= (and b!6126580 res!2539515) b!6126578))

(assert (= (and b!6126578 res!2539516) b!6126571))

(assert (= (and b!6126577 (not res!2539512)) b!6126570))

(assert (= (and b!6126570 res!2539513) b!6126579))

(assert (= (and b!6126579 (not res!2539514)) b!6126575))

(assert (= (and b!6126575 (not res!2539509)) b!6126581))

(assert (= (or b!6126576 b!6126580 b!6126579) bm!507812))

(declare-fun m!6971248 () Bool)

(assert (=> b!6126575 m!6971248))

(assert (=> b!6126575 m!6971248))

(declare-fun m!6971250 () Bool)

(assert (=> b!6126575 m!6971250))

(assert (=> d!1919641 m!6971242))

(assert (=> d!1919641 m!6971170))

(declare-fun m!6971252 () Bool)

(assert (=> b!6126574 m!6971252))

(assert (=> b!6126574 m!6971252))

(declare-fun m!6971254 () Bool)

(assert (=> b!6126574 m!6971254))

(assert (=> b!6126574 m!6971248))

(assert (=> b!6126574 m!6971254))

(assert (=> b!6126574 m!6971248))

(declare-fun m!6971256 () Bool)

(assert (=> b!6126574 m!6971256))

(assert (=> b!6126571 m!6971252))

(assert (=> b!6126578 m!6971248))

(assert (=> b!6126578 m!6971248))

(assert (=> b!6126578 m!6971250))

(declare-fun m!6971258 () Bool)

(assert (=> b!6126582 m!6971258))

(assert (=> b!6126581 m!6971252))

(assert (=> bm!507812 m!6971242))

(assert (=> b!6126399 d!1919641))

(declare-fun d!1919643 () Bool)

(assert (=> d!1919643 (= (matchR!8253 r!7292 s!2326) (matchRSpec!3171 r!7292 s!2326))))

(declare-fun lt!2331460 () Unit!157435)

(declare-fun choose!45507 (Regex!16070 List!64511) Unit!157435)

(assert (=> d!1919643 (= lt!2331460 (choose!45507 r!7292 s!2326))))

(assert (=> d!1919643 (validRegex!7806 r!7292)))

(assert (=> d!1919643 (= (mainMatchTheorem!3171 r!7292 s!2326) lt!2331460)))

(declare-fun bs!1520042 () Bool)

(assert (= bs!1520042 d!1919643))

(assert (=> bs!1520042 m!6971174))

(assert (=> bs!1520042 m!6971172))

(declare-fun m!6971260 () Bool)

(assert (=> bs!1520042 m!6971260))

(assert (=> bs!1520042 m!6971170))

(assert (=> b!6126399 d!1919643))

(declare-fun b!6126603 () Bool)

(declare-fun e!3734527 () Regex!16070)

(assert (=> b!6126603 (= e!3734527 EmptyLang!16070)))

(declare-fun b!6126604 () Bool)

(declare-fun e!3734530 () Bool)

(declare-fun lt!2331463 () Regex!16070)

(declare-fun isUnion!927 (Regex!16070) Bool)

(assert (=> b!6126604 (= e!3734530 (isUnion!927 lt!2331463))))

(declare-fun b!6126605 () Bool)

(declare-fun e!3734529 () Bool)

(declare-fun isEmptyLang!1497 (Regex!16070) Bool)

(assert (=> b!6126605 (= e!3734529 (isEmptyLang!1497 lt!2331463))))

(declare-fun b!6126606 () Bool)

(declare-fun e!3734526 () Bool)

(assert (=> b!6126606 (= e!3734526 e!3734529)))

(declare-fun c!1101173 () Bool)

(assert (=> b!6126606 (= c!1101173 (isEmpty!36323 (unfocusZipperList!1491 zl!343)))))

(declare-fun d!1919645 () Bool)

(assert (=> d!1919645 e!3734526))

(declare-fun res!2539522 () Bool)

(assert (=> d!1919645 (=> (not res!2539522) (not e!3734526))))

(assert (=> d!1919645 (= res!2539522 (validRegex!7806 lt!2331463))))

(declare-fun e!3734528 () Regex!16070)

(assert (=> d!1919645 (= lt!2331463 e!3734528)))

(declare-fun c!1101175 () Bool)

(declare-fun e!3734531 () Bool)

(assert (=> d!1919645 (= c!1101175 e!3734531)))

(declare-fun res!2539521 () Bool)

(assert (=> d!1919645 (=> (not res!2539521) (not e!3734531))))

(assert (=> d!1919645 (= res!2539521 (is-Cons!64385 (unfocusZipperList!1491 zl!343)))))

(declare-fun lambda!333694 () Int)

(declare-fun forall!15191 (List!64509 Int) Bool)

(assert (=> d!1919645 (forall!15191 (unfocusZipperList!1491 zl!343) lambda!333694)))

(assert (=> d!1919645 (= (generalisedUnion!1914 (unfocusZipperList!1491 zl!343)) lt!2331463)))

(declare-fun b!6126607 () Bool)

(assert (=> b!6126607 (= e!3734528 (h!70833 (unfocusZipperList!1491 zl!343)))))

(declare-fun b!6126608 () Bool)

(assert (=> b!6126608 (= e!3734531 (isEmpty!36323 (t!377974 (unfocusZipperList!1491 zl!343))))))

(declare-fun b!6126609 () Bool)

(assert (=> b!6126609 (= e!3734527 (Union!16070 (h!70833 (unfocusZipperList!1491 zl!343)) (generalisedUnion!1914 (t!377974 (unfocusZipperList!1491 zl!343)))))))

(declare-fun b!6126610 () Bool)

(assert (=> b!6126610 (= e!3734529 e!3734530)))

(declare-fun c!1101176 () Bool)

(declare-fun tail!11747 (List!64509) List!64509)

(assert (=> b!6126610 (= c!1101176 (isEmpty!36323 (tail!11747 (unfocusZipperList!1491 zl!343))))))

(declare-fun b!6126611 () Bool)

(declare-fun head!12662 (List!64509) Regex!16070)

(assert (=> b!6126611 (= e!3734530 (= lt!2331463 (head!12662 (unfocusZipperList!1491 zl!343))))))

(declare-fun b!6126612 () Bool)

(assert (=> b!6126612 (= e!3734528 e!3734527)))

(declare-fun c!1101174 () Bool)

(assert (=> b!6126612 (= c!1101174 (is-Cons!64385 (unfocusZipperList!1491 zl!343)))))

(assert (= (and d!1919645 res!2539521) b!6126608))

(assert (= (and d!1919645 c!1101175) b!6126607))

(assert (= (and d!1919645 (not c!1101175)) b!6126612))

(assert (= (and b!6126612 c!1101174) b!6126609))

(assert (= (and b!6126612 (not c!1101174)) b!6126603))

(assert (= (and d!1919645 res!2539522) b!6126606))

(assert (= (and b!6126606 c!1101173) b!6126605))

(assert (= (and b!6126606 (not c!1101173)) b!6126610))

(assert (= (and b!6126610 c!1101176) b!6126611))

(assert (= (and b!6126610 (not c!1101176)) b!6126604))

(declare-fun m!6971262 () Bool)

(assert (=> d!1919645 m!6971262))

(assert (=> d!1919645 m!6971148))

(declare-fun m!6971264 () Bool)

(assert (=> d!1919645 m!6971264))

(declare-fun m!6971266 () Bool)

(assert (=> b!6126605 m!6971266))

(assert (=> b!6126611 m!6971148))

(declare-fun m!6971268 () Bool)

(assert (=> b!6126611 m!6971268))

(assert (=> b!6126606 m!6971148))

(declare-fun m!6971270 () Bool)

(assert (=> b!6126606 m!6971270))

(declare-fun m!6971272 () Bool)

(assert (=> b!6126609 m!6971272))

(assert (=> b!6126610 m!6971148))

(declare-fun m!6971274 () Bool)

(assert (=> b!6126610 m!6971274))

(assert (=> b!6126610 m!6971274))

(declare-fun m!6971276 () Bool)

(assert (=> b!6126610 m!6971276))

(declare-fun m!6971278 () Bool)

(assert (=> b!6126604 m!6971278))

(declare-fun m!6971280 () Bool)

(assert (=> b!6126608 m!6971280))

(assert (=> b!6126398 d!1919645))

(declare-fun bs!1520043 () Bool)

(declare-fun d!1919649 () Bool)

(assert (= bs!1520043 (and d!1919649 d!1919645)))

(declare-fun lambda!333698 () Int)

(assert (=> bs!1520043 (= lambda!333698 lambda!333694)))

(declare-fun lt!2331469 () List!64509)

(assert (=> d!1919649 (forall!15191 lt!2331469 lambda!333698)))

(declare-fun e!3734552 () List!64509)

(assert (=> d!1919649 (= lt!2331469 e!3734552)))

(declare-fun c!1101191 () Bool)

(assert (=> d!1919649 (= c!1101191 (is-Cons!64386 zl!343))))

(assert (=> d!1919649 (= (unfocusZipperList!1491 zl!343) lt!2331469)))

(declare-fun b!6126647 () Bool)

(assert (=> b!6126647 (= e!3734552 (Cons!64385 (generalisedConcat!1667 (exprs!5954 (h!70834 zl!343))) (unfocusZipperList!1491 (t!377975 zl!343))))))

(declare-fun b!6126648 () Bool)

(assert (=> b!6126648 (= e!3734552 Nil!64385)))

(assert (= (and d!1919649 c!1101191) b!6126647))

(assert (= (and d!1919649 (not c!1101191)) b!6126648))

(declare-fun m!6971300 () Bool)

(assert (=> d!1919649 m!6971300))

(assert (=> b!6126647 m!6971126))

(declare-fun m!6971302 () Bool)

(assert (=> b!6126647 m!6971302))

(assert (=> b!6126398 d!1919649))

(declare-fun d!1919653 () Bool)

(declare-fun e!3734555 () Bool)

(assert (=> d!1919653 e!3734555))

(declare-fun res!2539531 () Bool)

(assert (=> d!1919653 (=> (not res!2539531) (not e!3734555))))

(declare-fun lt!2331475 () List!64510)

(declare-fun noDuplicate!1917 (List!64510) Bool)

(assert (=> d!1919653 (= res!2539531 (noDuplicate!1917 lt!2331475))))

(declare-fun choose!45508 ((Set Context!10908)) List!64510)

(assert (=> d!1919653 (= lt!2331475 (choose!45508 z!1189))))

(assert (=> d!1919653 (= (toList!9854 z!1189) lt!2331475)))

(declare-fun b!6126651 () Bool)

(declare-fun content!11964 (List!64510) (Set Context!10908))

(assert (=> b!6126651 (= e!3734555 (= (content!11964 lt!2331475) z!1189))))

(assert (= (and d!1919653 res!2539531) b!6126651))

(declare-fun m!6971306 () Bool)

(assert (=> d!1919653 m!6971306))

(declare-fun m!6971308 () Bool)

(assert (=> d!1919653 m!6971308))

(declare-fun m!6971310 () Bool)

(assert (=> b!6126651 m!6971310))

(assert (=> b!6126400 d!1919653))

(declare-fun d!1919657 () Bool)

(declare-fun nullableFct!2027 (Regex!16070) Bool)

(assert (=> d!1919657 (= (nullable!6063 (h!70833 (exprs!5954 (h!70834 zl!343)))) (nullableFct!2027 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun bs!1520045 () Bool)

(assert (= bs!1520045 d!1919657))

(declare-fun m!6971312 () Bool)

(assert (=> bs!1520045 m!6971312))

(assert (=> b!6126391 d!1919657))

(declare-fun b!6126662 () Bool)

(declare-fun e!3734564 () (Set Context!10908))

(declare-fun e!3734563 () (Set Context!10908))

(assert (=> b!6126662 (= e!3734564 e!3734563)))

(declare-fun c!1101196 () Bool)

(assert (=> b!6126662 (= c!1101196 (is-Cons!64385 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343))))))))))

(declare-fun d!1919659 () Bool)

(declare-fun c!1101197 () Bool)

(declare-fun e!3734562 () Bool)

(assert (=> d!1919659 (= c!1101197 e!3734562)))

(declare-fun res!2539534 () Bool)

(assert (=> d!1919659 (=> (not res!2539534) (not e!3734562))))

(assert (=> d!1919659 (= res!2539534 (is-Cons!64385 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343))))))))))

(assert (=> d!1919659 (= (derivationStepZipperUp!1244 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343))))) (h!70835 s!2326)) e!3734564)))

(declare-fun b!6126663 () Bool)

(declare-fun call!507820 () (Set Context!10908))

(assert (=> b!6126663 (= e!3734563 call!507820)))

(declare-fun b!6126664 () Bool)

(assert (=> b!6126664 (= e!3734563 (as set.empty (Set Context!10908)))))

(declare-fun bm!507815 () Bool)

(assert (=> bm!507815 (= call!507820 (derivationStepZipperDown!1318 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343))))))) (Context!10909 (t!377974 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))) (h!70835 s!2326)))))

(declare-fun b!6126665 () Bool)

(assert (=> b!6126665 (= e!3734562 (nullable!6063 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))))))

(declare-fun b!6126666 () Bool)

(assert (=> b!6126666 (= e!3734564 (set.union call!507820 (derivationStepZipperUp!1244 (Context!10909 (t!377974 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))) (h!70835 s!2326))))))

(assert (= (and d!1919659 res!2539534) b!6126665))

(assert (= (and d!1919659 c!1101197) b!6126666))

(assert (= (and d!1919659 (not c!1101197)) b!6126662))

(assert (= (and b!6126662 c!1101196) b!6126663))

(assert (= (and b!6126662 (not c!1101196)) b!6126664))

(assert (= (or b!6126666 b!6126663) bm!507815))

(declare-fun m!6971314 () Bool)

(assert (=> bm!507815 m!6971314))

(declare-fun m!6971316 () Bool)

(assert (=> b!6126665 m!6971316))

(declare-fun m!6971318 () Bool)

(assert (=> b!6126666 m!6971318))

(assert (=> b!6126391 d!1919659))

(declare-fun d!1919661 () Bool)

(declare-fun choose!45509 ((Set Context!10908) Int) (Set Context!10908))

(assert (=> d!1919661 (= (flatMap!1575 z!1189 lambda!333672) (choose!45509 z!1189 lambda!333672))))

(declare-fun bs!1520046 () Bool)

(assert (= bs!1520046 d!1919661))

(declare-fun m!6971320 () Bool)

(assert (=> bs!1520046 m!6971320))

(assert (=> b!6126391 d!1919661))

(declare-fun b!6126716 () Bool)

(declare-fun e!3734597 () (Set Context!10908))

(declare-fun call!507833 () (Set Context!10908))

(declare-fun call!507836 () (Set Context!10908))

(assert (=> b!6126716 (= e!3734597 (set.union call!507833 call!507836))))

(declare-fun b!6126717 () Bool)

(declare-fun e!3734594 () Bool)

(assert (=> b!6126717 (= e!3734594 (nullable!6063 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343))))))))

(declare-fun b!6126718 () Bool)

(declare-fun e!3734592 () (Set Context!10908))

(declare-fun call!507837 () (Set Context!10908))

(assert (=> b!6126718 (= e!3734592 call!507837)))

(declare-fun bm!507828 () Bool)

(declare-fun call!507834 () (Set Context!10908))

(assert (=> bm!507828 (= call!507836 call!507834)))

(declare-fun d!1919663 () Bool)

(declare-fun c!1101214 () Bool)

(assert (=> d!1919663 (= c!1101214 (and (is-ElementMatch!16070 (h!70833 (exprs!5954 (h!70834 zl!343)))) (= (c!1101136 (h!70833 (exprs!5954 (h!70834 zl!343)))) (h!70835 s!2326))))))

(declare-fun e!3734593 () (Set Context!10908))

(assert (=> d!1919663 (= (derivationStepZipperDown!1318 (h!70833 (exprs!5954 (h!70834 zl!343))) lt!2331410 (h!70835 s!2326)) e!3734593)))

(declare-fun b!6126719 () Bool)

(declare-fun e!3734596 () (Set Context!10908))

(assert (=> b!6126719 (= e!3734596 (as set.empty (Set Context!10908)))))

(declare-fun bm!507829 () Bool)

(assert (=> bm!507829 (= call!507837 call!507836)))

(declare-fun call!507838 () List!64509)

(declare-fun bm!507830 () Bool)

(declare-fun c!1101218 () Bool)

(declare-fun c!1101215 () Bool)

(declare-fun c!1101216 () Bool)

(assert (=> bm!507830 (= call!507834 (derivationStepZipperDown!1318 (ite c!1101218 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101215 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101216 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343))))))) (ite (or c!1101218 c!1101215) lt!2331410 (Context!10909 call!507838)) (h!70835 s!2326)))))

(declare-fun b!6126720 () Bool)

(assert (=> b!6126720 (= e!3734597 e!3734592)))

(assert (=> b!6126720 (= c!1101216 (is-Concat!24915 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun b!6126721 () Bool)

(assert (=> b!6126721 (= c!1101215 e!3734594)))

(declare-fun res!2539552 () Bool)

(assert (=> b!6126721 (=> (not res!2539552) (not e!3734594))))

(assert (=> b!6126721 (= res!2539552 (is-Concat!24915 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun e!3734595 () (Set Context!10908))

(assert (=> b!6126721 (= e!3734595 e!3734597)))

(declare-fun bm!507831 () Bool)

(declare-fun call!507835 () List!64509)

(declare-fun $colon$colon!1947 (List!64509 Regex!16070) List!64509)

(assert (=> bm!507831 (= call!507835 ($colon$colon!1947 (exprs!5954 lt!2331410) (ite (or c!1101215 c!1101216) (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (h!70833 (exprs!5954 (h!70834 zl!343))))))))

(declare-fun bm!507832 () Bool)

(assert (=> bm!507832 (= call!507838 call!507835)))

(declare-fun b!6126722 () Bool)

(assert (=> b!6126722 (= e!3734593 e!3734595)))

(assert (=> b!6126722 (= c!1101218 (is-Union!16070 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun bm!507833 () Bool)

(assert (=> bm!507833 (= call!507833 (derivationStepZipperDown!1318 (ite c!1101218 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343))))) (ite c!1101218 lt!2331410 (Context!10909 call!507835)) (h!70835 s!2326)))))

(declare-fun b!6126723 () Bool)

(assert (=> b!6126723 (= e!3734596 call!507837)))

(declare-fun b!6126724 () Bool)

(declare-fun c!1101217 () Bool)

(assert (=> b!6126724 (= c!1101217 (is-Star!16070 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(assert (=> b!6126724 (= e!3734592 e!3734596)))

(declare-fun b!6126725 () Bool)

(assert (=> b!6126725 (= e!3734595 (set.union call!507834 call!507833))))

(declare-fun b!6126726 () Bool)

(assert (=> b!6126726 (= e!3734593 (set.insert lt!2331410 (as set.empty (Set Context!10908))))))

(assert (= (and d!1919663 c!1101214) b!6126726))

(assert (= (and d!1919663 (not c!1101214)) b!6126722))

(assert (= (and b!6126722 c!1101218) b!6126725))

(assert (= (and b!6126722 (not c!1101218)) b!6126721))

(assert (= (and b!6126721 res!2539552) b!6126717))

(assert (= (and b!6126721 c!1101215) b!6126716))

(assert (= (and b!6126721 (not c!1101215)) b!6126720))

(assert (= (and b!6126720 c!1101216) b!6126718))

(assert (= (and b!6126720 (not c!1101216)) b!6126724))

(assert (= (and b!6126724 c!1101217) b!6126723))

(assert (= (and b!6126724 (not c!1101217)) b!6126719))

(assert (= (or b!6126718 b!6126723) bm!507832))

(assert (= (or b!6126718 b!6126723) bm!507829))

(assert (= (or b!6126716 bm!507832) bm!507831))

(assert (= (or b!6126716 bm!507829) bm!507828))

(assert (= (or b!6126725 b!6126716) bm!507833))

(assert (= (or b!6126725 bm!507828) bm!507830))

(declare-fun m!6971348 () Bool)

(assert (=> b!6126717 m!6971348))

(declare-fun m!6971350 () Bool)

(assert (=> bm!507833 m!6971350))

(declare-fun m!6971352 () Bool)

(assert (=> b!6126726 m!6971352))

(declare-fun m!6971354 () Bool)

(assert (=> bm!507831 m!6971354))

(declare-fun m!6971356 () Bool)

(assert (=> bm!507830 m!6971356))

(assert (=> b!6126391 d!1919663))

(declare-fun b!6126727 () Bool)

(declare-fun e!3734600 () (Set Context!10908))

(declare-fun e!3734599 () (Set Context!10908))

(assert (=> b!6126727 (= e!3734600 e!3734599)))

(declare-fun c!1101219 () Bool)

(assert (=> b!6126727 (= c!1101219 (is-Cons!64385 (exprs!5954 (h!70834 zl!343))))))

(declare-fun d!1919669 () Bool)

(declare-fun c!1101220 () Bool)

(declare-fun e!3734598 () Bool)

(assert (=> d!1919669 (= c!1101220 e!3734598)))

(declare-fun res!2539553 () Bool)

(assert (=> d!1919669 (=> (not res!2539553) (not e!3734598))))

(assert (=> d!1919669 (= res!2539553 (is-Cons!64385 (exprs!5954 (h!70834 zl!343))))))

(assert (=> d!1919669 (= (derivationStepZipperUp!1244 (h!70834 zl!343) (h!70835 s!2326)) e!3734600)))

(declare-fun b!6126728 () Bool)

(declare-fun call!507839 () (Set Context!10908))

(assert (=> b!6126728 (= e!3734599 call!507839)))

(declare-fun b!6126729 () Bool)

(assert (=> b!6126729 (= e!3734599 (as set.empty (Set Context!10908)))))

(declare-fun bm!507834 () Bool)

(assert (=> bm!507834 (= call!507839 (derivationStepZipperDown!1318 (h!70833 (exprs!5954 (h!70834 zl!343))) (Context!10909 (t!377974 (exprs!5954 (h!70834 zl!343)))) (h!70835 s!2326)))))

(declare-fun b!6126730 () Bool)

(assert (=> b!6126730 (= e!3734598 (nullable!6063 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun b!6126731 () Bool)

(assert (=> b!6126731 (= e!3734600 (set.union call!507839 (derivationStepZipperUp!1244 (Context!10909 (t!377974 (exprs!5954 (h!70834 zl!343)))) (h!70835 s!2326))))))

(assert (= (and d!1919669 res!2539553) b!6126730))

(assert (= (and d!1919669 c!1101220) b!6126731))

(assert (= (and d!1919669 (not c!1101220)) b!6126727))

(assert (= (and b!6126727 c!1101219) b!6126728))

(assert (= (and b!6126727 (not c!1101219)) b!6126729))

(assert (= (or b!6126731 b!6126728) bm!507834))

(declare-fun m!6971358 () Bool)

(assert (=> bm!507834 m!6971358))

(assert (=> b!6126730 m!6971138))

(declare-fun m!6971360 () Bool)

(assert (=> b!6126731 m!6971360))

(assert (=> b!6126391 d!1919669))

(declare-fun b!6126732 () Bool)

(declare-fun e!3734603 () (Set Context!10908))

(declare-fun e!3734602 () (Set Context!10908))

(assert (=> b!6126732 (= e!3734603 e!3734602)))

(declare-fun c!1101221 () Bool)

(assert (=> b!6126732 (= c!1101221 (is-Cons!64385 (exprs!5954 lt!2331410)))))

(declare-fun d!1919671 () Bool)

(declare-fun c!1101222 () Bool)

(declare-fun e!3734601 () Bool)

(assert (=> d!1919671 (= c!1101222 e!3734601)))

(declare-fun res!2539554 () Bool)

(assert (=> d!1919671 (=> (not res!2539554) (not e!3734601))))

(assert (=> d!1919671 (= res!2539554 (is-Cons!64385 (exprs!5954 lt!2331410)))))

(assert (=> d!1919671 (= (derivationStepZipperUp!1244 lt!2331410 (h!70835 s!2326)) e!3734603)))

(declare-fun b!6126733 () Bool)

(declare-fun call!507840 () (Set Context!10908))

(assert (=> b!6126733 (= e!3734602 call!507840)))

(declare-fun b!6126734 () Bool)

(assert (=> b!6126734 (= e!3734602 (as set.empty (Set Context!10908)))))

(declare-fun bm!507835 () Bool)

(assert (=> bm!507835 (= call!507840 (derivationStepZipperDown!1318 (h!70833 (exprs!5954 lt!2331410)) (Context!10909 (t!377974 (exprs!5954 lt!2331410))) (h!70835 s!2326)))))

(declare-fun b!6126735 () Bool)

(assert (=> b!6126735 (= e!3734601 (nullable!6063 (h!70833 (exprs!5954 lt!2331410))))))

(declare-fun b!6126736 () Bool)

(assert (=> b!6126736 (= e!3734603 (set.union call!507840 (derivationStepZipperUp!1244 (Context!10909 (t!377974 (exprs!5954 lt!2331410))) (h!70835 s!2326))))))

(assert (= (and d!1919671 res!2539554) b!6126735))

(assert (= (and d!1919671 c!1101222) b!6126736))

(assert (= (and d!1919671 (not c!1101222)) b!6126732))

(assert (= (and b!6126732 c!1101221) b!6126733))

(assert (= (and b!6126732 (not c!1101221)) b!6126734))

(assert (= (or b!6126736 b!6126733) bm!507835))

(declare-fun m!6971362 () Bool)

(assert (=> bm!507835 m!6971362))

(declare-fun m!6971364 () Bool)

(assert (=> b!6126735 m!6971364))

(declare-fun m!6971366 () Bool)

(assert (=> b!6126736 m!6971366))

(assert (=> b!6126391 d!1919671))

(declare-fun d!1919673 () Bool)

(declare-fun dynLambda!25361 (Int Context!10908) (Set Context!10908))

(assert (=> d!1919673 (= (flatMap!1575 z!1189 lambda!333672) (dynLambda!25361 lambda!333672 (h!70834 zl!343)))))

(declare-fun lt!2331489 () Unit!157435)

(declare-fun choose!45510 ((Set Context!10908) Context!10908 Int) Unit!157435)

(assert (=> d!1919673 (= lt!2331489 (choose!45510 z!1189 (h!70834 zl!343) lambda!333672))))

(assert (=> d!1919673 (= z!1189 (set.insert (h!70834 zl!343) (as set.empty (Set Context!10908))))))

(assert (=> d!1919673 (= (lemmaFlatMapOnSingletonSet!1101 z!1189 (h!70834 zl!343) lambda!333672) lt!2331489)))

(declare-fun b_lambda!233249 () Bool)

(assert (=> (not b_lambda!233249) (not d!1919673)))

(declare-fun bs!1520048 () Bool)

(assert (= bs!1520048 d!1919673))

(assert (=> bs!1520048 m!6971140))

(declare-fun m!6971368 () Bool)

(assert (=> bs!1520048 m!6971368))

(declare-fun m!6971370 () Bool)

(assert (=> bs!1520048 m!6971370))

(declare-fun m!6971372 () Bool)

(assert (=> bs!1520048 m!6971372))

(assert (=> b!6126391 d!1919673))

(declare-fun bs!1520049 () Bool)

(declare-fun d!1919675 () Bool)

(assert (= bs!1520049 (and d!1919675 d!1919645)))

(declare-fun lambda!333703 () Int)

(assert (=> bs!1520049 (= lambda!333703 lambda!333694)))

(declare-fun bs!1520050 () Bool)

(assert (= bs!1520050 (and d!1919675 d!1919649)))

(assert (=> bs!1520050 (= lambda!333703 lambda!333698)))

(assert (=> d!1919675 (= (inv!83423 (h!70834 zl!343)) (forall!15191 (exprs!5954 (h!70834 zl!343)) lambda!333703))))

(declare-fun bs!1520051 () Bool)

(assert (= bs!1520051 d!1919675))

(declare-fun m!6971374 () Bool)

(assert (=> bs!1520051 m!6971374))

(assert (=> b!6126390 d!1919675))

(declare-fun d!1919677 () Bool)

(declare-fun lt!2331492 () Regex!16070)

(assert (=> d!1919677 (validRegex!7806 lt!2331492)))

(assert (=> d!1919677 (= lt!2331492 (generalisedUnion!1914 (unfocusZipperList!1491 zl!343)))))

(assert (=> d!1919677 (= (unfocusZipper!1812 zl!343) lt!2331492)))

(declare-fun bs!1520052 () Bool)

(assert (= bs!1520052 d!1919677))

(declare-fun m!6971376 () Bool)

(assert (=> bs!1520052 m!6971376))

(assert (=> bs!1520052 m!6971148))

(assert (=> bs!1520052 m!6971148))

(assert (=> bs!1520052 m!6971150))

(assert (=> b!6126403 d!1919677))

(declare-fun d!1919679 () Bool)

(assert (=> d!1919679 (= (isEmpty!36323 (t!377974 (exprs!5954 (h!70834 zl!343)))) (is-Nil!64385 (t!377974 (exprs!5954 (h!70834 zl!343)))))))

(assert (=> b!6126392 d!1919679))

(declare-fun d!1919681 () Bool)

(assert (=> d!1919681 (= (isEmpty!36322 (t!377975 zl!343)) (is-Nil!64386 (t!377975 zl!343)))))

(assert (=> b!6126383 d!1919681))

(declare-fun b!6126767 () Bool)

(declare-fun e!3734622 () Bool)

(assert (=> b!6126767 (= e!3734622 (matchR!8253 (regTwo!32652 r!7292) s!2326))))

(declare-fun b!6126768 () Bool)

(declare-fun e!3734621 () Bool)

(declare-fun lt!2331503 () Option!15961)

(declare-fun ++!14157 (List!64511 List!64511) List!64511)

(declare-fun get!22208 (Option!15961) tuple2!66098)

(assert (=> b!6126768 (= e!3734621 (= (++!14157 (_1!36352 (get!22208 lt!2331503)) (_2!36352 (get!22208 lt!2331503))) s!2326))))

(declare-fun b!6126769 () Bool)

(declare-fun res!2539578 () Bool)

(assert (=> b!6126769 (=> (not res!2539578) (not e!3734621))))

(assert (=> b!6126769 (= res!2539578 (matchR!8253 (regTwo!32652 r!7292) (_2!36352 (get!22208 lt!2331503))))))

(declare-fun d!1919683 () Bool)

(declare-fun e!3734620 () Bool)

(assert (=> d!1919683 e!3734620))

(declare-fun res!2539579 () Bool)

(assert (=> d!1919683 (=> res!2539579 e!3734620)))

(assert (=> d!1919683 (= res!2539579 e!3734621)))

(declare-fun res!2539581 () Bool)

(assert (=> d!1919683 (=> (not res!2539581) (not e!3734621))))

(assert (=> d!1919683 (= res!2539581 (isDefined!12664 lt!2331503))))

(declare-fun e!3734624 () Option!15961)

(assert (=> d!1919683 (= lt!2331503 e!3734624)))

(declare-fun c!1101228 () Bool)

(assert (=> d!1919683 (= c!1101228 e!3734622)))

(declare-fun res!2539577 () Bool)

(assert (=> d!1919683 (=> (not res!2539577) (not e!3734622))))

(assert (=> d!1919683 (= res!2539577 (matchR!8253 (regOne!32652 r!7292) Nil!64387))))

(assert (=> d!1919683 (validRegex!7806 (regOne!32652 r!7292))))

(assert (=> d!1919683 (= (findConcatSeparation!2375 (regOne!32652 r!7292) (regTwo!32652 r!7292) Nil!64387 s!2326 s!2326) lt!2331503)))

(declare-fun b!6126770 () Bool)

(declare-fun lt!2331505 () Unit!157435)

(declare-fun lt!2331504 () Unit!157435)

(assert (=> b!6126770 (= lt!2331505 lt!2331504)))

(assert (=> b!6126770 (= (++!14157 (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) Nil!64387)) (t!377976 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2252 (List!64511 C!32410 List!64511 List!64511) Unit!157435)

(assert (=> b!6126770 (= lt!2331504 (lemmaMoveElementToOtherListKeepsConcatEq!2252 Nil!64387 (h!70835 s!2326) (t!377976 s!2326) s!2326))))

(declare-fun e!3734623 () Option!15961)

(assert (=> b!6126770 (= e!3734623 (findConcatSeparation!2375 (regOne!32652 r!7292) (regTwo!32652 r!7292) (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) Nil!64387)) (t!377976 s!2326) s!2326))))

(declare-fun b!6126771 () Bool)

(assert (=> b!6126771 (= e!3734624 (Some!15960 (tuple2!66099 Nil!64387 s!2326)))))

(declare-fun b!6126772 () Bool)

(declare-fun res!2539580 () Bool)

(assert (=> b!6126772 (=> (not res!2539580) (not e!3734621))))

(assert (=> b!6126772 (= res!2539580 (matchR!8253 (regOne!32652 r!7292) (_1!36352 (get!22208 lt!2331503))))))

(declare-fun b!6126773 () Bool)

(assert (=> b!6126773 (= e!3734620 (not (isDefined!12664 lt!2331503)))))

(declare-fun b!6126774 () Bool)

(assert (=> b!6126774 (= e!3734624 e!3734623)))

(declare-fun c!1101227 () Bool)

(assert (=> b!6126774 (= c!1101227 (is-Nil!64387 s!2326))))

(declare-fun b!6126775 () Bool)

(assert (=> b!6126775 (= e!3734623 None!15960)))

(assert (= (and d!1919683 res!2539577) b!6126767))

(assert (= (and d!1919683 c!1101228) b!6126771))

(assert (= (and d!1919683 (not c!1101228)) b!6126774))

(assert (= (and b!6126774 c!1101227) b!6126775))

(assert (= (and b!6126774 (not c!1101227)) b!6126770))

(assert (= (and d!1919683 res!2539581) b!6126772))

(assert (= (and b!6126772 res!2539580) b!6126769))

(assert (= (and b!6126769 res!2539578) b!6126768))

(assert (= (and d!1919683 (not res!2539579)) b!6126773))

(declare-fun m!6971392 () Bool)

(assert (=> b!6126772 m!6971392))

(declare-fun m!6971394 () Bool)

(assert (=> b!6126772 m!6971394))

(assert (=> b!6126769 m!6971392))

(declare-fun m!6971396 () Bool)

(assert (=> b!6126769 m!6971396))

(declare-fun m!6971398 () Bool)

(assert (=> b!6126770 m!6971398))

(assert (=> b!6126770 m!6971398))

(declare-fun m!6971400 () Bool)

(assert (=> b!6126770 m!6971400))

(declare-fun m!6971402 () Bool)

(assert (=> b!6126770 m!6971402))

(assert (=> b!6126770 m!6971398))

(declare-fun m!6971404 () Bool)

(assert (=> b!6126770 m!6971404))

(declare-fun m!6971406 () Bool)

(assert (=> b!6126767 m!6971406))

(declare-fun m!6971408 () Bool)

(assert (=> b!6126773 m!6971408))

(assert (=> d!1919683 m!6971408))

(declare-fun m!6971410 () Bool)

(assert (=> d!1919683 m!6971410))

(declare-fun m!6971412 () Bool)

(assert (=> d!1919683 m!6971412))

(assert (=> b!6126768 m!6971392))

(declare-fun m!6971414 () Bool)

(assert (=> b!6126768 m!6971414))

(assert (=> b!6126385 d!1919683))

(declare-fun d!1919693 () Bool)

(declare-fun choose!45514 (Int) Bool)

(assert (=> d!1919693 (= (Exists!3140 lambda!333670) (choose!45514 lambda!333670))))

(declare-fun bs!1520060 () Bool)

(assert (= bs!1520060 d!1919693))

(declare-fun m!6971416 () Bool)

(assert (=> bs!1520060 m!6971416))

(assert (=> b!6126385 d!1919693))

(declare-fun d!1919695 () Bool)

(assert (=> d!1919695 (= (Exists!3140 lambda!333671) (choose!45514 lambda!333671))))

(declare-fun bs!1520061 () Bool)

(assert (= bs!1520061 d!1919695))

(declare-fun m!6971418 () Bool)

(assert (=> bs!1520061 m!6971418))

(assert (=> b!6126385 d!1919695))

(declare-fun bs!1520065 () Bool)

(declare-fun d!1919697 () Bool)

(assert (= bs!1520065 (and d!1919697 b!6126385)))

(declare-fun lambda!333719 () Int)

(assert (=> bs!1520065 (= lambda!333719 lambda!333670)))

(assert (=> bs!1520065 (not (= lambda!333719 lambda!333671))))

(declare-fun bs!1520066 () Bool)

(assert (= bs!1520066 (and d!1919697 b!6126536)))

(assert (=> bs!1520066 (not (= lambda!333719 lambda!333688))))

(declare-fun bs!1520067 () Bool)

(assert (= bs!1520067 (and d!1919697 b!6126535)))

(assert (=> bs!1520067 (not (= lambda!333719 lambda!333689))))

(assert (=> d!1919697 true))

(assert (=> d!1919697 true))

(assert (=> d!1919697 true))

(assert (=> d!1919697 (= (isDefined!12664 (findConcatSeparation!2375 (regOne!32652 r!7292) (regTwo!32652 r!7292) Nil!64387 s!2326 s!2326)) (Exists!3140 lambda!333719))))

(declare-fun lt!2331514 () Unit!157435)

(declare-fun choose!45515 (Regex!16070 Regex!16070 List!64511) Unit!157435)

(assert (=> d!1919697 (= lt!2331514 (choose!45515 (regOne!32652 r!7292) (regTwo!32652 r!7292) s!2326))))

(assert (=> d!1919697 (validRegex!7806 (regOne!32652 r!7292))))

(assert (=> d!1919697 (= (lemmaFindConcatSeparationEquivalentToExists!2139 (regOne!32652 r!7292) (regTwo!32652 r!7292) s!2326) lt!2331514)))

(declare-fun bs!1520068 () Bool)

(assert (= bs!1520068 d!1919697))

(declare-fun m!6971444 () Bool)

(assert (=> bs!1520068 m!6971444))

(assert (=> bs!1520068 m!6971162))

(assert (=> bs!1520068 m!6971164))

(assert (=> bs!1520068 m!6971162))

(assert (=> bs!1520068 m!6971412))

(declare-fun m!6971446 () Bool)

(assert (=> bs!1520068 m!6971446))

(assert (=> b!6126385 d!1919697))

(declare-fun bs!1520078 () Bool)

(declare-fun d!1919703 () Bool)

(assert (= bs!1520078 (and d!1919703 b!6126385)))

(declare-fun lambda!333728 () Int)

(assert (=> bs!1520078 (= lambda!333728 lambda!333670)))

(declare-fun bs!1520079 () Bool)

(assert (= bs!1520079 (and d!1919703 d!1919697)))

(assert (=> bs!1520079 (= lambda!333728 lambda!333719)))

(declare-fun bs!1520080 () Bool)

(assert (= bs!1520080 (and d!1919703 b!6126535)))

(assert (=> bs!1520080 (not (= lambda!333728 lambda!333689))))

(assert (=> bs!1520078 (not (= lambda!333728 lambda!333671))))

(declare-fun bs!1520081 () Bool)

(assert (= bs!1520081 (and d!1919703 b!6126536)))

(assert (=> bs!1520081 (not (= lambda!333728 lambda!333688))))

(assert (=> d!1919703 true))

(assert (=> d!1919703 true))

(assert (=> d!1919703 true))

(declare-fun lambda!333729 () Int)

(assert (=> bs!1520078 (not (= lambda!333729 lambda!333670))))

(assert (=> bs!1520079 (not (= lambda!333729 lambda!333719))))

(declare-fun bs!1520082 () Bool)

(assert (= bs!1520082 d!1919703))

(assert (=> bs!1520082 (not (= lambda!333729 lambda!333728))))

(assert (=> bs!1520080 (= lambda!333729 lambda!333689)))

(assert (=> bs!1520078 (= lambda!333729 lambda!333671)))

(assert (=> bs!1520081 (not (= lambda!333729 lambda!333688))))

(assert (=> d!1919703 true))

(assert (=> d!1919703 true))

(assert (=> d!1919703 true))

(assert (=> d!1919703 (= (Exists!3140 lambda!333728) (Exists!3140 lambda!333729))))

(declare-fun lt!2331517 () Unit!157435)

(declare-fun choose!45516 (Regex!16070 Regex!16070 List!64511) Unit!157435)

(assert (=> d!1919703 (= lt!2331517 (choose!45516 (regOne!32652 r!7292) (regTwo!32652 r!7292) s!2326))))

(assert (=> d!1919703 (validRegex!7806 (regOne!32652 r!7292))))

(assert (=> d!1919703 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1677 (regOne!32652 r!7292) (regTwo!32652 r!7292) s!2326) lt!2331517)))

(declare-fun m!6971464 () Bool)

(assert (=> bs!1520082 m!6971464))

(declare-fun m!6971466 () Bool)

(assert (=> bs!1520082 m!6971466))

(declare-fun m!6971468 () Bool)

(assert (=> bs!1520082 m!6971468))

(assert (=> bs!1520082 m!6971412))

(assert (=> b!6126385 d!1919703))

(declare-fun d!1919713 () Bool)

(declare-fun isEmpty!36328 (Option!15961) Bool)

(assert (=> d!1919713 (= (isDefined!12664 (findConcatSeparation!2375 (regOne!32652 r!7292) (regTwo!32652 r!7292) Nil!64387 s!2326 s!2326)) (not (isEmpty!36328 (findConcatSeparation!2375 (regOne!32652 r!7292) (regTwo!32652 r!7292) Nil!64387 s!2326 s!2326))))))

(declare-fun bs!1520083 () Bool)

(assert (= bs!1520083 d!1919713))

(assert (=> bs!1520083 m!6971162))

(declare-fun m!6971476 () Bool)

(assert (=> bs!1520083 m!6971476))

(assert (=> b!6126385 d!1919713))

(declare-fun bs!1520084 () Bool)

(declare-fun d!1919719 () Bool)

(assert (= bs!1520084 (and d!1919719 d!1919645)))

(declare-fun lambda!333732 () Int)

(assert (=> bs!1520084 (= lambda!333732 lambda!333694)))

(declare-fun bs!1520085 () Bool)

(assert (= bs!1520085 (and d!1919719 d!1919649)))

(assert (=> bs!1520085 (= lambda!333732 lambda!333698)))

(declare-fun bs!1520086 () Bool)

(assert (= bs!1520086 (and d!1919719 d!1919675)))

(assert (=> bs!1520086 (= lambda!333732 lambda!333703)))

(declare-fun b!6126902 () Bool)

(declare-fun e!3734706 () Regex!16070)

(declare-fun e!3734707 () Regex!16070)

(assert (=> b!6126902 (= e!3734706 e!3734707)))

(declare-fun c!1101272 () Bool)

(assert (=> b!6126902 (= c!1101272 (is-Cons!64385 (exprs!5954 (h!70834 zl!343))))))

(declare-fun b!6126903 () Bool)

(assert (=> b!6126903 (= e!3734707 EmptyExpr!16070)))

(declare-fun b!6126904 () Bool)

(declare-fun e!3734705 () Bool)

(declare-fun lt!2331523 () Regex!16070)

(declare-fun isEmptyExpr!1488 (Regex!16070) Bool)

(assert (=> b!6126904 (= e!3734705 (isEmptyExpr!1488 lt!2331523))))

(declare-fun b!6126905 () Bool)

(declare-fun e!3734710 () Bool)

(assert (=> b!6126905 (= e!3734710 e!3734705)))

(declare-fun c!1101271 () Bool)

(assert (=> b!6126905 (= c!1101271 (isEmpty!36323 (exprs!5954 (h!70834 zl!343))))))

(declare-fun b!6126907 () Bool)

(declare-fun e!3734709 () Bool)

(assert (=> b!6126907 (= e!3734709 (= lt!2331523 (head!12662 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun b!6126908 () Bool)

(assert (=> b!6126908 (= e!3734707 (Concat!24915 (h!70833 (exprs!5954 (h!70834 zl!343))) (generalisedConcat!1667 (t!377974 (exprs!5954 (h!70834 zl!343))))))))

(declare-fun b!6126909 () Bool)

(declare-fun isConcat!1011 (Regex!16070) Bool)

(assert (=> b!6126909 (= e!3734709 (isConcat!1011 lt!2331523))))

(declare-fun b!6126910 () Bool)

(assert (=> b!6126910 (= e!3734705 e!3734709)))

(declare-fun c!1101269 () Bool)

(assert (=> b!6126910 (= c!1101269 (isEmpty!36323 (tail!11747 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun b!6126911 () Bool)

(assert (=> b!6126911 (= e!3734706 (h!70833 (exprs!5954 (h!70834 zl!343))))))

(declare-fun b!6126906 () Bool)

(declare-fun e!3734708 () Bool)

(assert (=> b!6126906 (= e!3734708 (isEmpty!36323 (t!377974 (exprs!5954 (h!70834 zl!343)))))))

(assert (=> d!1919719 e!3734710))

(declare-fun res!2539629 () Bool)

(assert (=> d!1919719 (=> (not res!2539629) (not e!3734710))))

(assert (=> d!1919719 (= res!2539629 (validRegex!7806 lt!2331523))))

(assert (=> d!1919719 (= lt!2331523 e!3734706)))

(declare-fun c!1101270 () Bool)

(assert (=> d!1919719 (= c!1101270 e!3734708)))

(declare-fun res!2539628 () Bool)

(assert (=> d!1919719 (=> (not res!2539628) (not e!3734708))))

(assert (=> d!1919719 (= res!2539628 (is-Cons!64385 (exprs!5954 (h!70834 zl!343))))))

(assert (=> d!1919719 (forall!15191 (exprs!5954 (h!70834 zl!343)) lambda!333732)))

(assert (=> d!1919719 (= (generalisedConcat!1667 (exprs!5954 (h!70834 zl!343))) lt!2331523)))

(assert (= (and d!1919719 res!2539628) b!6126906))

(assert (= (and d!1919719 c!1101270) b!6126911))

(assert (= (and d!1919719 (not c!1101270)) b!6126902))

(assert (= (and b!6126902 c!1101272) b!6126908))

(assert (= (and b!6126902 (not c!1101272)) b!6126903))

(assert (= (and d!1919719 res!2539629) b!6126905))

(assert (= (and b!6126905 c!1101271) b!6126904))

(assert (= (and b!6126905 (not c!1101271)) b!6126910))

(assert (= (and b!6126910 c!1101269) b!6126907))

(assert (= (and b!6126910 (not c!1101269)) b!6126909))

(declare-fun m!6971484 () Bool)

(assert (=> b!6126904 m!6971484))

(declare-fun m!6971486 () Bool)

(assert (=> b!6126909 m!6971486))

(assert (=> b!6126906 m!6971124))

(declare-fun m!6971488 () Bool)

(assert (=> b!6126908 m!6971488))

(declare-fun m!6971490 () Bool)

(assert (=> b!6126905 m!6971490))

(declare-fun m!6971492 () Bool)

(assert (=> b!6126907 m!6971492))

(declare-fun m!6971494 () Bool)

(assert (=> b!6126910 m!6971494))

(assert (=> b!6126910 m!6971494))

(declare-fun m!6971496 () Bool)

(assert (=> b!6126910 m!6971496))

(declare-fun m!6971498 () Bool)

(assert (=> d!1919719 m!6971498))

(declare-fun m!6971500 () Bool)

(assert (=> d!1919719 m!6971500))

(assert (=> b!6126395 d!1919719))

(declare-fun bs!1520087 () Bool)

(declare-fun d!1919723 () Bool)

(assert (= bs!1520087 (and d!1919723 d!1919645)))

(declare-fun lambda!333735 () Int)

(assert (=> bs!1520087 (= lambda!333735 lambda!333694)))

(declare-fun bs!1520088 () Bool)

(assert (= bs!1520088 (and d!1919723 d!1919649)))

(assert (=> bs!1520088 (= lambda!333735 lambda!333698)))

(declare-fun bs!1520089 () Bool)

(assert (= bs!1520089 (and d!1919723 d!1919675)))

(assert (=> bs!1520089 (= lambda!333735 lambda!333703)))

(declare-fun bs!1520090 () Bool)

(assert (= bs!1520090 (and d!1919723 d!1919719)))

(assert (=> bs!1520090 (= lambda!333735 lambda!333732)))

(assert (=> d!1919723 (= (inv!83423 lt!2331410) (forall!15191 (exprs!5954 lt!2331410) lambda!333735))))

(declare-fun bs!1520091 () Bool)

(assert (= bs!1520091 d!1919723))

(declare-fun m!6971502 () Bool)

(assert (=> bs!1520091 m!6971502))

(assert (=> b!6126386 d!1919723))

(declare-fun e!3734717 () Bool)

(declare-fun d!1919725 () Bool)

(assert (=> d!1919725 (= (matchZipper!2082 (set.union lt!2331407 lt!2331412) (t!377976 s!2326)) e!3734717)))

(declare-fun res!2539642 () Bool)

(assert (=> d!1919725 (=> res!2539642 e!3734717)))

(assert (=> d!1919725 (= res!2539642 (matchZipper!2082 lt!2331407 (t!377976 s!2326)))))

(declare-fun lt!2331526 () Unit!157435)

(declare-fun choose!45517 ((Set Context!10908) (Set Context!10908) List!64511) Unit!157435)

(assert (=> d!1919725 (= lt!2331526 (choose!45517 lt!2331407 lt!2331412 (t!377976 s!2326)))))

(assert (=> d!1919725 (= (lemmaZipperConcatMatchesSameAsBothZippers!901 lt!2331407 lt!2331412 (t!377976 s!2326)) lt!2331526)))

(declare-fun b!6126924 () Bool)

(assert (=> b!6126924 (= e!3734717 (matchZipper!2082 lt!2331412 (t!377976 s!2326)))))

(assert (= (and d!1919725 (not res!2539642)) b!6126924))

(assert (=> d!1919725 m!6971146))

(assert (=> d!1919725 m!6971144))

(declare-fun m!6971504 () Bool)

(assert (=> d!1919725 m!6971504))

(assert (=> b!6126924 m!6971156))

(assert (=> b!6126394 d!1919725))

(declare-fun d!1919727 () Bool)

(declare-fun c!1101279 () Bool)

(assert (=> d!1919727 (= c!1101279 (isEmpty!36326 (t!377976 s!2326)))))

(declare-fun e!3734727 () Bool)

(assert (=> d!1919727 (= (matchZipper!2082 lt!2331407 (t!377976 s!2326)) e!3734727)))

(declare-fun b!6126940 () Bool)

(declare-fun nullableZipper!1852 ((Set Context!10908)) Bool)

(assert (=> b!6126940 (= e!3734727 (nullableZipper!1852 lt!2331407))))

(declare-fun b!6126941 () Bool)

(declare-fun derivationStepZipper!2044 ((Set Context!10908) C!32410) (Set Context!10908))

(assert (=> b!6126941 (= e!3734727 (matchZipper!2082 (derivationStepZipper!2044 lt!2331407 (head!12661 (t!377976 s!2326))) (tail!11746 (t!377976 s!2326))))))

(assert (= (and d!1919727 c!1101279) b!6126940))

(assert (= (and d!1919727 (not c!1101279)) b!6126941))

(declare-fun m!6971506 () Bool)

(assert (=> d!1919727 m!6971506))

(declare-fun m!6971508 () Bool)

(assert (=> b!6126940 m!6971508))

(declare-fun m!6971510 () Bool)

(assert (=> b!6126941 m!6971510))

(assert (=> b!6126941 m!6971510))

(declare-fun m!6971512 () Bool)

(assert (=> b!6126941 m!6971512))

(declare-fun m!6971514 () Bool)

(assert (=> b!6126941 m!6971514))

(assert (=> b!6126941 m!6971512))

(assert (=> b!6126941 m!6971514))

(declare-fun m!6971516 () Bool)

(assert (=> b!6126941 m!6971516))

(assert (=> b!6126394 d!1919727))

(declare-fun d!1919729 () Bool)

(declare-fun c!1101280 () Bool)

(assert (=> d!1919729 (= c!1101280 (isEmpty!36326 (t!377976 s!2326)))))

(declare-fun e!3734728 () Bool)

(assert (=> d!1919729 (= (matchZipper!2082 (set.union lt!2331407 lt!2331412) (t!377976 s!2326)) e!3734728)))

(declare-fun b!6126942 () Bool)

(assert (=> b!6126942 (= e!3734728 (nullableZipper!1852 (set.union lt!2331407 lt!2331412)))))

(declare-fun b!6126943 () Bool)

(assert (=> b!6126943 (= e!3734728 (matchZipper!2082 (derivationStepZipper!2044 (set.union lt!2331407 lt!2331412) (head!12661 (t!377976 s!2326))) (tail!11746 (t!377976 s!2326))))))

(assert (= (and d!1919729 c!1101280) b!6126942))

(assert (= (and d!1919729 (not c!1101280)) b!6126943))

(assert (=> d!1919729 m!6971506))

(declare-fun m!6971518 () Bool)

(assert (=> b!6126942 m!6971518))

(assert (=> b!6126943 m!6971510))

(assert (=> b!6126943 m!6971510))

(declare-fun m!6971520 () Bool)

(assert (=> b!6126943 m!6971520))

(assert (=> b!6126943 m!6971514))

(assert (=> b!6126943 m!6971520))

(assert (=> b!6126943 m!6971514))

(declare-fun m!6971522 () Bool)

(assert (=> b!6126943 m!6971522))

(assert (=> b!6126394 d!1919729))

(declare-fun d!1919731 () Bool)

(declare-fun c!1101281 () Bool)

(assert (=> d!1919731 (= c!1101281 (isEmpty!36326 (t!377976 s!2326)))))

(declare-fun e!3734729 () Bool)

(assert (=> d!1919731 (= (matchZipper!2082 lt!2331412 (t!377976 s!2326)) e!3734729)))

(declare-fun b!6126944 () Bool)

(assert (=> b!6126944 (= e!3734729 (nullableZipper!1852 lt!2331412))))

(declare-fun b!6126945 () Bool)

(assert (=> b!6126945 (= e!3734729 (matchZipper!2082 (derivationStepZipper!2044 lt!2331412 (head!12661 (t!377976 s!2326))) (tail!11746 (t!377976 s!2326))))))

(assert (= (and d!1919731 c!1101281) b!6126944))

(assert (= (and d!1919731 (not c!1101281)) b!6126945))

(assert (=> d!1919731 m!6971506))

(declare-fun m!6971524 () Bool)

(assert (=> b!6126944 m!6971524))

(assert (=> b!6126945 m!6971510))

(assert (=> b!6126945 m!6971510))

(declare-fun m!6971526 () Bool)

(assert (=> b!6126945 m!6971526))

(assert (=> b!6126945 m!6971514))

(assert (=> b!6126945 m!6971526))

(assert (=> b!6126945 m!6971514))

(declare-fun m!6971528 () Bool)

(assert (=> b!6126945 m!6971528))

(assert (=> b!6126396 d!1919731))

(declare-fun bs!1520099 () Bool)

(declare-fun d!1919733 () Bool)

(assert (= bs!1520099 (and d!1919733 d!1919645)))

(declare-fun lambda!333740 () Int)

(assert (=> bs!1520099 (= lambda!333740 lambda!333694)))

(declare-fun bs!1520100 () Bool)

(assert (= bs!1520100 (and d!1919733 d!1919719)))

(assert (=> bs!1520100 (= lambda!333740 lambda!333732)))

(declare-fun bs!1520101 () Bool)

(assert (= bs!1520101 (and d!1919733 d!1919723)))

(assert (=> bs!1520101 (= lambda!333740 lambda!333735)))

(declare-fun bs!1520102 () Bool)

(assert (= bs!1520102 (and d!1919733 d!1919649)))

(assert (=> bs!1520102 (= lambda!333740 lambda!333698)))

(declare-fun bs!1520103 () Bool)

(assert (= bs!1520103 (and d!1919733 d!1919675)))

(assert (=> bs!1520103 (= lambda!333740 lambda!333703)))

(assert (=> d!1919733 (= (inv!83423 setElem!41393) (forall!15191 (exprs!5954 setElem!41393) lambda!333740))))

(declare-fun bs!1520104 () Bool)

(assert (= bs!1520104 d!1919733))

(declare-fun m!6971530 () Bool)

(assert (=> bs!1520104 m!6971530))

(assert (=> setNonEmpty!41393 d!1919733))

(declare-fun bm!507857 () Bool)

(declare-fun call!507863 () Bool)

(declare-fun c!1101292 () Bool)

(declare-fun c!1101293 () Bool)

(assert (=> bm!507857 (= call!507863 (validRegex!7806 (ite c!1101292 (reg!16399 r!7292) (ite c!1101293 (regOne!32653 r!7292) (regOne!32652 r!7292)))))))

(declare-fun bm!507858 () Bool)

(declare-fun call!507862 () Bool)

(assert (=> bm!507858 (= call!507862 call!507863)))

(declare-fun b!6126976 () Bool)

(declare-fun res!2539656 () Bool)

(declare-fun e!3734755 () Bool)

(assert (=> b!6126976 (=> res!2539656 e!3734755)))

(assert (=> b!6126976 (= res!2539656 (not (is-Concat!24915 r!7292)))))

(declare-fun e!3734753 () Bool)

(assert (=> b!6126976 (= e!3734753 e!3734755)))

(declare-fun b!6126977 () Bool)

(declare-fun e!3734750 () Bool)

(assert (=> b!6126977 (= e!3734750 call!507863)))

(declare-fun b!6126978 () Bool)

(declare-fun e!3734752 () Bool)

(assert (=> b!6126978 (= e!3734752 e!3734753)))

(assert (=> b!6126978 (= c!1101293 (is-Union!16070 r!7292))))

(declare-fun bm!507859 () Bool)

(declare-fun call!507864 () Bool)

(assert (=> bm!507859 (= call!507864 (validRegex!7806 (ite c!1101293 (regTwo!32653 r!7292) (regTwo!32652 r!7292))))))

(declare-fun d!1919735 () Bool)

(declare-fun res!2539659 () Bool)

(declare-fun e!3734751 () Bool)

(assert (=> d!1919735 (=> res!2539659 e!3734751)))

(assert (=> d!1919735 (= res!2539659 (is-ElementMatch!16070 r!7292))))

(assert (=> d!1919735 (= (validRegex!7806 r!7292) e!3734751)))

(declare-fun b!6126979 () Bool)

(declare-fun res!2539657 () Bool)

(declare-fun e!3734756 () Bool)

(assert (=> b!6126979 (=> (not res!2539657) (not e!3734756))))

(assert (=> b!6126979 (= res!2539657 call!507862)))

(assert (=> b!6126979 (= e!3734753 e!3734756)))

(declare-fun b!6126980 () Bool)

(assert (=> b!6126980 (= e!3734751 e!3734752)))

(assert (=> b!6126980 (= c!1101292 (is-Star!16070 r!7292))))

(declare-fun b!6126981 () Bool)

(assert (=> b!6126981 (= e!3734756 call!507864)))

(declare-fun b!6126982 () Bool)

(assert (=> b!6126982 (= e!3734752 e!3734750)))

(declare-fun res!2539660 () Bool)

(assert (=> b!6126982 (= res!2539660 (not (nullable!6063 (reg!16399 r!7292))))))

(assert (=> b!6126982 (=> (not res!2539660) (not e!3734750))))

(declare-fun b!6126983 () Bool)

(declare-fun e!3734754 () Bool)

(assert (=> b!6126983 (= e!3734755 e!3734754)))

(declare-fun res!2539658 () Bool)

(assert (=> b!6126983 (=> (not res!2539658) (not e!3734754))))

(assert (=> b!6126983 (= res!2539658 call!507862)))

(declare-fun b!6126984 () Bool)

(assert (=> b!6126984 (= e!3734754 call!507864)))

(assert (= (and d!1919735 (not res!2539659)) b!6126980))

(assert (= (and b!6126980 c!1101292) b!6126982))

(assert (= (and b!6126980 (not c!1101292)) b!6126978))

(assert (= (and b!6126982 res!2539660) b!6126977))

(assert (= (and b!6126978 c!1101293) b!6126979))

(assert (= (and b!6126978 (not c!1101293)) b!6126976))

(assert (= (and b!6126979 res!2539657) b!6126981))

(assert (= (and b!6126976 (not res!2539656)) b!6126983))

(assert (= (and b!6126983 res!2539658) b!6126984))

(assert (= (or b!6126981 b!6126984) bm!507859))

(assert (= (or b!6126979 b!6126983) bm!507858))

(assert (= (or b!6126977 bm!507858) bm!507857))

(declare-fun m!6971540 () Bool)

(assert (=> bm!507857 m!6971540))

(declare-fun m!6971542 () Bool)

(assert (=> bm!507859 m!6971542))

(declare-fun m!6971544 () Bool)

(assert (=> b!6126982 m!6971544))

(assert (=> start!611880 d!1919735))

(declare-fun b!6127005 () Bool)

(declare-fun e!3734767 () Bool)

(declare-fun tp!1712263 () Bool)

(declare-fun tp!1712264 () Bool)

(assert (=> b!6127005 (= e!3734767 (and tp!1712263 tp!1712264))))

(assert (=> b!6126388 (= tp!1712221 e!3734767)))

(assert (= (and b!6126388 (is-Cons!64385 (exprs!5954 (h!70834 zl!343)))) b!6127005))

(declare-fun e!3734770 () Bool)

(assert (=> b!6126393 (= tp!1712222 e!3734770)))

(declare-fun b!6127017 () Bool)

(declare-fun tp!1712277 () Bool)

(declare-fun tp!1712275 () Bool)

(assert (=> b!6127017 (= e!3734770 (and tp!1712277 tp!1712275))))

(declare-fun b!6127016 () Bool)

(assert (=> b!6127016 (= e!3734770 tp_is_empty!41393)))

(declare-fun b!6127019 () Bool)

(declare-fun tp!1712278 () Bool)

(declare-fun tp!1712279 () Bool)

(assert (=> b!6127019 (= e!3734770 (and tp!1712278 tp!1712279))))

(declare-fun b!6127018 () Bool)

(declare-fun tp!1712276 () Bool)

(assert (=> b!6127018 (= e!3734770 tp!1712276)))

(assert (= (and b!6126393 (is-ElementMatch!16070 (regOne!32652 r!7292))) b!6127016))

(assert (= (and b!6126393 (is-Concat!24915 (regOne!32652 r!7292))) b!6127017))

(assert (= (and b!6126393 (is-Star!16070 (regOne!32652 r!7292))) b!6127018))

(assert (= (and b!6126393 (is-Union!16070 (regOne!32652 r!7292))) b!6127019))

(declare-fun e!3734771 () Bool)

(assert (=> b!6126393 (= tp!1712226 e!3734771)))

(declare-fun b!6127021 () Bool)

(declare-fun tp!1712282 () Bool)

(declare-fun tp!1712280 () Bool)

(assert (=> b!6127021 (= e!3734771 (and tp!1712282 tp!1712280))))

(declare-fun b!6127020 () Bool)

(assert (=> b!6127020 (= e!3734771 tp_is_empty!41393)))

(declare-fun b!6127023 () Bool)

(declare-fun tp!1712283 () Bool)

(declare-fun tp!1712284 () Bool)

(assert (=> b!6127023 (= e!3734771 (and tp!1712283 tp!1712284))))

(declare-fun b!6127022 () Bool)

(declare-fun tp!1712281 () Bool)

(assert (=> b!6127022 (= e!3734771 tp!1712281)))

(assert (= (and b!6126393 (is-ElementMatch!16070 (regTwo!32652 r!7292))) b!6127020))

(assert (= (and b!6126393 (is-Concat!24915 (regTwo!32652 r!7292))) b!6127021))

(assert (= (and b!6126393 (is-Star!16070 (regTwo!32652 r!7292))) b!6127022))

(assert (= (and b!6126393 (is-Union!16070 (regTwo!32652 r!7292))) b!6127023))

(declare-fun b!6127028 () Bool)

(declare-fun e!3734774 () Bool)

(declare-fun tp!1712287 () Bool)

(assert (=> b!6127028 (= e!3734774 (and tp_is_empty!41393 tp!1712287))))

(assert (=> b!6126384 (= tp!1712224 e!3734774)))

(assert (= (and b!6126384 (is-Cons!64387 (t!377976 s!2326))) b!6127028))

(declare-fun e!3734775 () Bool)

(assert (=> b!6126401 (= tp!1712223 e!3734775)))

(declare-fun b!6127030 () Bool)

(declare-fun tp!1712290 () Bool)

(declare-fun tp!1712288 () Bool)

(assert (=> b!6127030 (= e!3734775 (and tp!1712290 tp!1712288))))

(declare-fun b!6127029 () Bool)

(assert (=> b!6127029 (= e!3734775 tp_is_empty!41393)))

(declare-fun b!6127032 () Bool)

(declare-fun tp!1712291 () Bool)

(declare-fun tp!1712292 () Bool)

(assert (=> b!6127032 (= e!3734775 (and tp!1712291 tp!1712292))))

(declare-fun b!6127031 () Bool)

(declare-fun tp!1712289 () Bool)

(assert (=> b!6127031 (= e!3734775 tp!1712289)))

(assert (= (and b!6126401 (is-ElementMatch!16070 (reg!16399 r!7292))) b!6127029))

(assert (= (and b!6126401 (is-Concat!24915 (reg!16399 r!7292))) b!6127030))

(assert (= (and b!6126401 (is-Star!16070 (reg!16399 r!7292))) b!6127031))

(assert (= (and b!6126401 (is-Union!16070 (reg!16399 r!7292))) b!6127032))

(declare-fun condSetEmpty!41399 () Bool)

(assert (=> setNonEmpty!41393 (= condSetEmpty!41399 (= setRest!41393 (as set.empty (Set Context!10908))))))

(declare-fun setRes!41399 () Bool)

(assert (=> setNonEmpty!41393 (= tp!1712228 setRes!41399)))

(declare-fun setIsEmpty!41399 () Bool)

(assert (=> setIsEmpty!41399 setRes!41399))

(declare-fun setNonEmpty!41399 () Bool)

(declare-fun e!3734778 () Bool)

(declare-fun setElem!41399 () Context!10908)

(declare-fun tp!1712298 () Bool)

(assert (=> setNonEmpty!41399 (= setRes!41399 (and tp!1712298 (inv!83423 setElem!41399) e!3734778))))

(declare-fun setRest!41399 () (Set Context!10908))

(assert (=> setNonEmpty!41399 (= setRest!41393 (set.union (set.insert setElem!41399 (as set.empty (Set Context!10908))) setRest!41399))))

(declare-fun b!6127037 () Bool)

(declare-fun tp!1712297 () Bool)

(assert (=> b!6127037 (= e!3734778 tp!1712297)))

(assert (= (and setNonEmpty!41393 condSetEmpty!41399) setIsEmpty!41399))

(assert (= (and setNonEmpty!41393 (not condSetEmpty!41399)) setNonEmpty!41399))

(assert (= setNonEmpty!41399 b!6127037))

(declare-fun m!6971546 () Bool)

(assert (=> setNonEmpty!41399 m!6971546))

(declare-fun b!6127059 () Bool)

(declare-fun e!3734791 () Bool)

(declare-fun tp!1712303 () Bool)

(assert (=> b!6127059 (= e!3734791 tp!1712303)))

(declare-fun e!3734790 () Bool)

(declare-fun tp!1712304 () Bool)

(declare-fun b!6127058 () Bool)

(assert (=> b!6127058 (= e!3734790 (and (inv!83423 (h!70834 (t!377975 zl!343))) e!3734791 tp!1712304))))

(assert (=> b!6126390 (= tp!1712219 e!3734790)))

(assert (= b!6127058 b!6127059))

(assert (= (and b!6126390 (is-Cons!64386 (t!377975 zl!343))) b!6127058))

(declare-fun m!6971548 () Bool)

(assert (=> b!6127058 m!6971548))

(declare-fun b!6127060 () Bool)

(declare-fun e!3734792 () Bool)

(declare-fun tp!1712305 () Bool)

(declare-fun tp!1712306 () Bool)

(assert (=> b!6127060 (= e!3734792 (and tp!1712305 tp!1712306))))

(assert (=> b!6126402 (= tp!1712225 e!3734792)))

(assert (= (and b!6126402 (is-Cons!64385 (exprs!5954 setElem!41393))) b!6127060))

(declare-fun e!3734793 () Bool)

(assert (=> b!6126387 (= tp!1712220 e!3734793)))

(declare-fun b!6127062 () Bool)

(declare-fun tp!1712309 () Bool)

(declare-fun tp!1712307 () Bool)

(assert (=> b!6127062 (= e!3734793 (and tp!1712309 tp!1712307))))

(declare-fun b!6127061 () Bool)

(assert (=> b!6127061 (= e!3734793 tp_is_empty!41393)))

(declare-fun b!6127064 () Bool)

(declare-fun tp!1712310 () Bool)

(declare-fun tp!1712311 () Bool)

(assert (=> b!6127064 (= e!3734793 (and tp!1712310 tp!1712311))))

(declare-fun b!6127063 () Bool)

(declare-fun tp!1712308 () Bool)

(assert (=> b!6127063 (= e!3734793 tp!1712308)))

(assert (= (and b!6126387 (is-ElementMatch!16070 (regOne!32653 r!7292))) b!6127061))

(assert (= (and b!6126387 (is-Concat!24915 (regOne!32653 r!7292))) b!6127062))

(assert (= (and b!6126387 (is-Star!16070 (regOne!32653 r!7292))) b!6127063))

(assert (= (and b!6126387 (is-Union!16070 (regOne!32653 r!7292))) b!6127064))

(declare-fun e!3734794 () Bool)

(assert (=> b!6126387 (= tp!1712227 e!3734794)))

(declare-fun b!6127066 () Bool)

(declare-fun tp!1712314 () Bool)

(declare-fun tp!1712312 () Bool)

(assert (=> b!6127066 (= e!3734794 (and tp!1712314 tp!1712312))))

(declare-fun b!6127065 () Bool)

(assert (=> b!6127065 (= e!3734794 tp_is_empty!41393)))

(declare-fun b!6127068 () Bool)

(declare-fun tp!1712315 () Bool)

(declare-fun tp!1712316 () Bool)

(assert (=> b!6127068 (= e!3734794 (and tp!1712315 tp!1712316))))

(declare-fun b!6127067 () Bool)

(declare-fun tp!1712313 () Bool)

(assert (=> b!6127067 (= e!3734794 tp!1712313)))

(assert (= (and b!6126387 (is-ElementMatch!16070 (regTwo!32653 r!7292))) b!6127065))

(assert (= (and b!6126387 (is-Concat!24915 (regTwo!32653 r!7292))) b!6127066))

(assert (= (and b!6126387 (is-Star!16070 (regTwo!32653 r!7292))) b!6127067))

(assert (= (and b!6126387 (is-Union!16070 (regTwo!32653 r!7292))) b!6127068))

(declare-fun b_lambda!233251 () Bool)

(assert (= b_lambda!233249 (or b!6126391 b_lambda!233251)))

(declare-fun bs!1520105 () Bool)

(declare-fun d!1919739 () Bool)

(assert (= bs!1520105 (and d!1919739 b!6126391)))

(assert (=> bs!1520105 (= (dynLambda!25361 lambda!333672 (h!70834 zl!343)) (derivationStepZipperUp!1244 (h!70834 zl!343) (h!70835 s!2326)))))

(assert (=> bs!1520105 m!6971130))

(assert (=> d!1919673 d!1919739))

(push 1)

(assert (not b!6126772))

(assert (not b!6126768))

(assert (not d!1919729))

(assert (not b!6127064))

(assert (not b!6126982))

(assert (not b!6127017))

(assert (not b!6126907))

(assert (not b!6126605))

(assert (not d!1919719))

(assert (not b!6126770))

(assert (not bm!507834))

(assert (not b!6126647))

(assert (not b!6126941))

(assert (not b!6126945))

(assert (not d!1919723))

(assert (not d!1919725))

(assert (not b!6127037))

(assert (not d!1919675))

(assert (not b!6126666))

(assert (not b!6127030))

(assert (not b!6127060))

(assert (not b!6127019))

(assert (not bm!507831))

(assert tp_is_empty!41393)

(assert (not d!1919731))

(assert (not b!6126730))

(assert (not b!6126717))

(assert (not b!6127023))

(assert (not b!6126610))

(assert (not setNonEmpty!41399))

(assert (not b!6126606))

(assert (not b_lambda!233251))

(assert (not b!6127062))

(assert (not b!6127032))

(assert (not b!6126908))

(assert (not d!1919661))

(assert (not b!6126943))

(assert (not b!6126910))

(assert (not b!6126608))

(assert (not b!6126736))

(assert (not d!1919657))

(assert (not bm!507812))

(assert (not b!6127068))

(assert (not bm!507833))

(assert (not bm!507809))

(assert (not b!6126611))

(assert (not b!6127058))

(assert (not b!6126769))

(assert (not b!6126944))

(assert (not d!1919733))

(assert (not b!6127066))

(assert (not b!6126604))

(assert (not b!6126767))

(assert (not b!6127021))

(assert (not d!1919727))

(assert (not b!6126575))

(assert (not d!1919693))

(assert (not d!1919641))

(assert (not b!6127031))

(assert (not bm!507815))

(assert (not b!6126904))

(assert (not b!6126906))

(assert (not b!6126571))

(assert (not b!6126665))

(assert (not b!6127005))

(assert (not b!6126581))

(assert (not b!6126940))

(assert (not b!6126905))

(assert (not d!1919713))

(assert (not b!6126731))

(assert (not d!1919645))

(assert (not d!1919703))

(assert (not b!6126735))

(assert (not d!1919643))

(assert (not b!6127059))

(assert (not d!1919695))

(assert (not b!6126530))

(assert (not bm!507835))

(assert (not b!6127018))

(assert (not b!6126609))

(assert (not b!6126582))

(assert (not b!6126942))

(assert (not d!1919673))

(assert (not d!1919653))

(assert (not bm!507859))

(assert (not bm!507808))

(assert (not b!6126651))

(assert (not d!1919683))

(assert (not bm!507830))

(assert (not bm!507857))

(assert (not b!6127022))

(assert (not b!6126773))

(assert (not d!1919649))

(assert (not b!6127063))

(assert (not b!6126578))

(assert (not d!1919677))

(assert (not bs!1520105))

(assert (not b!6126531))

(assert (not b!6126574))

(assert (not b!6127067))

(assert (not b!6126924))

(assert (not b!6126909))

(assert (not d!1919697))

(assert (not b!6127028))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6127188 () Bool)

(declare-fun e!3734861 () (Set Context!10908))

(declare-fun call!507891 () (Set Context!10908))

(declare-fun call!507894 () (Set Context!10908))

(assert (=> b!6127188 (= e!3734861 (set.union call!507891 call!507894))))

(declare-fun e!3734858 () Bool)

(declare-fun b!6127189 () Bool)

(assert (=> b!6127189 (= e!3734858 (nullable!6063 (regOne!32652 (ite c!1101218 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101215 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101216 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343))))))))))))

(declare-fun b!6127190 () Bool)

(declare-fun e!3734856 () (Set Context!10908))

(declare-fun call!507895 () (Set Context!10908))

(assert (=> b!6127190 (= e!3734856 call!507895)))

(declare-fun bm!507886 () Bool)

(declare-fun call!507892 () (Set Context!10908))

(assert (=> bm!507886 (= call!507894 call!507892)))

(declare-fun d!1919767 () Bool)

(declare-fun c!1101324 () Bool)

(assert (=> d!1919767 (= c!1101324 (and (is-ElementMatch!16070 (ite c!1101218 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101215 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101216 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343)))))))) (= (c!1101136 (ite c!1101218 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101215 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101216 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343)))))))) (h!70835 s!2326))))))

(declare-fun e!3734857 () (Set Context!10908))

(assert (=> d!1919767 (= (derivationStepZipperDown!1318 (ite c!1101218 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101215 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101216 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343))))))) (ite (or c!1101218 c!1101215) lt!2331410 (Context!10909 call!507838)) (h!70835 s!2326)) e!3734857)))

(declare-fun b!6127191 () Bool)

(declare-fun e!3734860 () (Set Context!10908))

(assert (=> b!6127191 (= e!3734860 (as set.empty (Set Context!10908)))))

(declare-fun bm!507887 () Bool)

(assert (=> bm!507887 (= call!507895 call!507894)))

(declare-fun c!1101326 () Bool)

(declare-fun c!1101325 () Bool)

(declare-fun c!1101328 () Bool)

(declare-fun bm!507888 () Bool)

(declare-fun call!507896 () List!64509)

(assert (=> bm!507888 (= call!507892 (derivationStepZipperDown!1318 (ite c!1101328 (regOne!32653 (ite c!1101218 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101215 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101216 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343)))))))) (ite c!1101325 (regTwo!32652 (ite c!1101218 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101215 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101216 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343)))))))) (ite c!1101326 (regOne!32652 (ite c!1101218 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101215 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101216 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343)))))))) (reg!16399 (ite c!1101218 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101215 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101216 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343))))))))))) (ite (or c!1101328 c!1101325) (ite (or c!1101218 c!1101215) lt!2331410 (Context!10909 call!507838)) (Context!10909 call!507896)) (h!70835 s!2326)))))

(declare-fun b!6127192 () Bool)

(assert (=> b!6127192 (= e!3734861 e!3734856)))

(assert (=> b!6127192 (= c!1101326 (is-Concat!24915 (ite c!1101218 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101215 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101216 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343)))))))))))

(declare-fun b!6127193 () Bool)

(assert (=> b!6127193 (= c!1101325 e!3734858)))

(declare-fun res!2539696 () Bool)

(assert (=> b!6127193 (=> (not res!2539696) (not e!3734858))))

(assert (=> b!6127193 (= res!2539696 (is-Concat!24915 (ite c!1101218 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101215 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101216 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343)))))))))))

(declare-fun e!3734859 () (Set Context!10908))

(assert (=> b!6127193 (= e!3734859 e!3734861)))

(declare-fun bm!507889 () Bool)

(declare-fun call!507893 () List!64509)

(assert (=> bm!507889 (= call!507893 ($colon$colon!1947 (exprs!5954 (ite (or c!1101218 c!1101215) lt!2331410 (Context!10909 call!507838))) (ite (or c!1101325 c!1101326) (regTwo!32652 (ite c!1101218 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101215 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101216 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343)))))))) (ite c!1101218 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101215 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101216 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343))))))))))))

(declare-fun bm!507890 () Bool)

(assert (=> bm!507890 (= call!507896 call!507893)))

(declare-fun b!6127194 () Bool)

(assert (=> b!6127194 (= e!3734857 e!3734859)))

(assert (=> b!6127194 (= c!1101328 (is-Union!16070 (ite c!1101218 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101215 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101216 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343)))))))))))

(declare-fun bm!507891 () Bool)

(assert (=> bm!507891 (= call!507891 (derivationStepZipperDown!1318 (ite c!1101328 (regTwo!32653 (ite c!1101218 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101215 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101216 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343)))))))) (regOne!32652 (ite c!1101218 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101215 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101216 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343))))))))) (ite c!1101328 (ite (or c!1101218 c!1101215) lt!2331410 (Context!10909 call!507838)) (Context!10909 call!507893)) (h!70835 s!2326)))))

(declare-fun b!6127195 () Bool)

(assert (=> b!6127195 (= e!3734860 call!507895)))

(declare-fun b!6127196 () Bool)

(declare-fun c!1101327 () Bool)

(assert (=> b!6127196 (= c!1101327 (is-Star!16070 (ite c!1101218 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101215 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101216 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343)))))))))))

(assert (=> b!6127196 (= e!3734856 e!3734860)))

(declare-fun b!6127197 () Bool)

(assert (=> b!6127197 (= e!3734859 (set.union call!507892 call!507891))))

(declare-fun b!6127198 () Bool)

(assert (=> b!6127198 (= e!3734857 (set.insert (ite (or c!1101218 c!1101215) lt!2331410 (Context!10909 call!507838)) (as set.empty (Set Context!10908))))))

(assert (= (and d!1919767 c!1101324) b!6127198))

(assert (= (and d!1919767 (not c!1101324)) b!6127194))

(assert (= (and b!6127194 c!1101328) b!6127197))

(assert (= (and b!6127194 (not c!1101328)) b!6127193))

(assert (= (and b!6127193 res!2539696) b!6127189))

(assert (= (and b!6127193 c!1101325) b!6127188))

(assert (= (and b!6127193 (not c!1101325)) b!6127192))

(assert (= (and b!6127192 c!1101326) b!6127190))

(assert (= (and b!6127192 (not c!1101326)) b!6127196))

(assert (= (and b!6127196 c!1101327) b!6127195))

(assert (= (and b!6127196 (not c!1101327)) b!6127191))

(assert (= (or b!6127190 b!6127195) bm!507890))

(assert (= (or b!6127190 b!6127195) bm!507887))

(assert (= (or b!6127188 bm!507890) bm!507889))

(assert (= (or b!6127188 bm!507887) bm!507886))

(assert (= (or b!6127197 b!6127188) bm!507891))

(assert (= (or b!6127197 bm!507886) bm!507888))

(declare-fun m!6971620 () Bool)

(assert (=> b!6127189 m!6971620))

(declare-fun m!6971622 () Bool)

(assert (=> bm!507891 m!6971622))

(declare-fun m!6971624 () Bool)

(assert (=> b!6127198 m!6971624))

(declare-fun m!6971626 () Bool)

(assert (=> bm!507889 m!6971626))

(declare-fun m!6971628 () Bool)

(assert (=> bm!507888 m!6971628))

(assert (=> bm!507830 d!1919767))

(declare-fun b!6127199 () Bool)

(declare-fun e!3734863 () Bool)

(declare-fun e!3734865 () Bool)

(assert (=> b!6127199 (= e!3734863 e!3734865)))

(declare-fun c!1101329 () Bool)

(assert (=> b!6127199 (= c!1101329 (is-EmptyLang!16070 (derivativeStep!4790 r!7292 (head!12661 s!2326))))))

(declare-fun b!6127200 () Bool)

(declare-fun e!3734864 () Bool)

(declare-fun e!3734867 () Bool)

(assert (=> b!6127200 (= e!3734864 e!3734867)))

(declare-fun res!2539701 () Bool)

(assert (=> b!6127200 (=> (not res!2539701) (not e!3734867))))

(declare-fun lt!2331539 () Bool)

(assert (=> b!6127200 (= res!2539701 (not lt!2331539))))

(declare-fun b!6127201 () Bool)

(declare-fun e!3734862 () Bool)

(assert (=> b!6127201 (= e!3734862 (= (head!12661 (tail!11746 s!2326)) (c!1101136 (derivativeStep!4790 r!7292 (head!12661 s!2326)))))))

(declare-fun b!6127202 () Bool)

(declare-fun res!2539699 () Bool)

(assert (=> b!6127202 (=> res!2539699 e!3734864)))

(assert (=> b!6127202 (= res!2539699 (not (is-ElementMatch!16070 (derivativeStep!4790 r!7292 (head!12661 s!2326)))))))

(assert (=> b!6127202 (= e!3734865 e!3734864)))

(declare-fun d!1919769 () Bool)

(assert (=> d!1919769 e!3734863))

(declare-fun c!1101331 () Bool)

(assert (=> d!1919769 (= c!1101331 (is-EmptyExpr!16070 (derivativeStep!4790 r!7292 (head!12661 s!2326))))))

(declare-fun e!3734868 () Bool)

(assert (=> d!1919769 (= lt!2331539 e!3734868)))

(declare-fun c!1101330 () Bool)

(assert (=> d!1919769 (= c!1101330 (isEmpty!36326 (tail!11746 s!2326)))))

(assert (=> d!1919769 (validRegex!7806 (derivativeStep!4790 r!7292 (head!12661 s!2326)))))

(assert (=> d!1919769 (= (matchR!8253 (derivativeStep!4790 r!7292 (head!12661 s!2326)) (tail!11746 s!2326)) lt!2331539)))

(declare-fun b!6127203 () Bool)

(assert (=> b!6127203 (= e!3734865 (not lt!2331539))))

(declare-fun b!6127204 () Bool)

(assert (=> b!6127204 (= e!3734868 (matchR!8253 (derivativeStep!4790 (derivativeStep!4790 r!7292 (head!12661 s!2326)) (head!12661 (tail!11746 s!2326))) (tail!11746 (tail!11746 s!2326))))))

(declare-fun b!6127205 () Bool)

(declare-fun res!2539697 () Bool)

(declare-fun e!3734866 () Bool)

(assert (=> b!6127205 (=> res!2539697 e!3734866)))

(assert (=> b!6127205 (= res!2539697 (not (isEmpty!36326 (tail!11746 (tail!11746 s!2326)))))))

(declare-fun b!6127206 () Bool)

(declare-fun call!507897 () Bool)

(assert (=> b!6127206 (= e!3734863 (= lt!2331539 call!507897))))

(declare-fun b!6127207 () Bool)

(declare-fun res!2539700 () Bool)

(assert (=> b!6127207 (=> res!2539700 e!3734864)))

(assert (=> b!6127207 (= res!2539700 e!3734862)))

(declare-fun res!2539698 () Bool)

(assert (=> b!6127207 (=> (not res!2539698) (not e!3734862))))

(assert (=> b!6127207 (= res!2539698 lt!2331539)))

(declare-fun b!6127208 () Bool)

(declare-fun res!2539704 () Bool)

(assert (=> b!6127208 (=> (not res!2539704) (not e!3734862))))

(assert (=> b!6127208 (= res!2539704 (isEmpty!36326 (tail!11746 (tail!11746 s!2326))))))

(declare-fun b!6127209 () Bool)

(assert (=> b!6127209 (= e!3734867 e!3734866)))

(declare-fun res!2539702 () Bool)

(assert (=> b!6127209 (=> res!2539702 e!3734866)))

(assert (=> b!6127209 (= res!2539702 call!507897)))

(declare-fun bm!507892 () Bool)

(assert (=> bm!507892 (= call!507897 (isEmpty!36326 (tail!11746 s!2326)))))

(declare-fun b!6127210 () Bool)

(declare-fun res!2539703 () Bool)

(assert (=> b!6127210 (=> (not res!2539703) (not e!3734862))))

(assert (=> b!6127210 (= res!2539703 (not call!507897))))

(declare-fun b!6127211 () Bool)

(assert (=> b!6127211 (= e!3734866 (not (= (head!12661 (tail!11746 s!2326)) (c!1101136 (derivativeStep!4790 r!7292 (head!12661 s!2326))))))))

(declare-fun b!6127212 () Bool)

(assert (=> b!6127212 (= e!3734868 (nullable!6063 (derivativeStep!4790 r!7292 (head!12661 s!2326))))))

(assert (= (and d!1919769 c!1101330) b!6127212))

(assert (= (and d!1919769 (not c!1101330)) b!6127204))

(assert (= (and d!1919769 c!1101331) b!6127206))

(assert (= (and d!1919769 (not c!1101331)) b!6127199))

(assert (= (and b!6127199 c!1101329) b!6127203))

(assert (= (and b!6127199 (not c!1101329)) b!6127202))

(assert (= (and b!6127202 (not res!2539699)) b!6127207))

(assert (= (and b!6127207 res!2539698) b!6127210))

(assert (= (and b!6127210 res!2539703) b!6127208))

(assert (= (and b!6127208 res!2539704) b!6127201))

(assert (= (and b!6127207 (not res!2539700)) b!6127200))

(assert (= (and b!6127200 res!2539701) b!6127209))

(assert (= (and b!6127209 (not res!2539702)) b!6127205))

(assert (= (and b!6127205 (not res!2539697)) b!6127211))

(assert (= (or b!6127206 b!6127210 b!6127209) bm!507892))

(assert (=> b!6127205 m!6971248))

(declare-fun m!6971630 () Bool)

(assert (=> b!6127205 m!6971630))

(assert (=> b!6127205 m!6971630))

(declare-fun m!6971632 () Bool)

(assert (=> b!6127205 m!6971632))

(assert (=> d!1919769 m!6971248))

(assert (=> d!1919769 m!6971250))

(assert (=> d!1919769 m!6971254))

(declare-fun m!6971634 () Bool)

(assert (=> d!1919769 m!6971634))

(assert (=> b!6127204 m!6971248))

(declare-fun m!6971636 () Bool)

(assert (=> b!6127204 m!6971636))

(assert (=> b!6127204 m!6971254))

(assert (=> b!6127204 m!6971636))

(declare-fun m!6971638 () Bool)

(assert (=> b!6127204 m!6971638))

(assert (=> b!6127204 m!6971248))

(assert (=> b!6127204 m!6971630))

(assert (=> b!6127204 m!6971638))

(assert (=> b!6127204 m!6971630))

(declare-fun m!6971640 () Bool)

(assert (=> b!6127204 m!6971640))

(assert (=> b!6127201 m!6971248))

(assert (=> b!6127201 m!6971636))

(assert (=> b!6127208 m!6971248))

(assert (=> b!6127208 m!6971630))

(assert (=> b!6127208 m!6971630))

(assert (=> b!6127208 m!6971632))

(assert (=> b!6127212 m!6971254))

(declare-fun m!6971642 () Bool)

(assert (=> b!6127212 m!6971642))

(assert (=> b!6127211 m!6971248))

(assert (=> b!6127211 m!6971636))

(assert (=> bm!507892 m!6971248))

(assert (=> bm!507892 m!6971250))

(assert (=> b!6126574 d!1919769))

(declare-fun b!6127233 () Bool)

(declare-fun e!3734880 () Regex!16070)

(assert (=> b!6127233 (= e!3734880 (ite (= (head!12661 s!2326) (c!1101136 r!7292)) EmptyExpr!16070 EmptyLang!16070))))

(declare-fun call!507908 () Regex!16070)

(declare-fun e!3734883 () Regex!16070)

(declare-fun call!507906 () Regex!16070)

(declare-fun b!6127234 () Bool)

(assert (=> b!6127234 (= e!3734883 (Union!16070 (Concat!24915 call!507906 (regTwo!32652 r!7292)) call!507908))))

(declare-fun b!6127235 () Bool)

(declare-fun c!1101346 () Bool)

(assert (=> b!6127235 (= c!1101346 (nullable!6063 (regOne!32652 r!7292)))))

(declare-fun e!3734879 () Regex!16070)

(assert (=> b!6127235 (= e!3734879 e!3734883)))

(declare-fun bm!507901 () Bool)

(declare-fun c!1101344 () Bool)

(assert (=> bm!507901 (= call!507906 (derivativeStep!4790 (ite c!1101344 (regOne!32653 r!7292) (regOne!32652 r!7292)) (head!12661 s!2326)))))

(declare-fun b!6127236 () Bool)

(declare-fun e!3734882 () Regex!16070)

(assert (=> b!6127236 (= e!3734882 e!3734880)))

(declare-fun c!1101342 () Bool)

(assert (=> b!6127236 (= c!1101342 (is-ElementMatch!16070 r!7292))))

(declare-fun bm!507902 () Bool)

(declare-fun call!507907 () Regex!16070)

(assert (=> bm!507902 (= call!507908 call!507907)))

(declare-fun bm!507903 () Bool)

(declare-fun call!507909 () Regex!16070)

(assert (=> bm!507903 (= call!507907 call!507909)))

(declare-fun d!1919771 () Bool)

(declare-fun lt!2331542 () Regex!16070)

(assert (=> d!1919771 (validRegex!7806 lt!2331542)))

(assert (=> d!1919771 (= lt!2331542 e!3734882)))

(declare-fun c!1101343 () Bool)

(assert (=> d!1919771 (= c!1101343 (or (is-EmptyExpr!16070 r!7292) (is-EmptyLang!16070 r!7292)))))

(assert (=> d!1919771 (validRegex!7806 r!7292)))

(assert (=> d!1919771 (= (derivativeStep!4790 r!7292 (head!12661 s!2326)) lt!2331542)))

(declare-fun b!6127237 () Bool)

(assert (=> b!6127237 (= e!3734882 EmptyLang!16070)))

(declare-fun b!6127238 () Bool)

(assert (=> b!6127238 (= e!3734883 (Union!16070 (Concat!24915 call!507908 (regTwo!32652 r!7292)) EmptyLang!16070))))

(declare-fun b!6127239 () Bool)

(assert (=> b!6127239 (= e!3734879 (Concat!24915 call!507907 r!7292))))

(declare-fun b!6127240 () Bool)

(assert (=> b!6127240 (= c!1101344 (is-Union!16070 r!7292))))

(declare-fun e!3734881 () Regex!16070)

(assert (=> b!6127240 (= e!3734880 e!3734881)))

(declare-fun b!6127241 () Bool)

(assert (=> b!6127241 (= e!3734881 (Union!16070 call!507906 call!507909))))

(declare-fun b!6127242 () Bool)

(assert (=> b!6127242 (= e!3734881 e!3734879)))

(declare-fun c!1101345 () Bool)

(assert (=> b!6127242 (= c!1101345 (is-Star!16070 r!7292))))

(declare-fun bm!507904 () Bool)

(assert (=> bm!507904 (= call!507909 (derivativeStep!4790 (ite c!1101344 (regTwo!32653 r!7292) (ite c!1101345 (reg!16399 r!7292) (ite c!1101346 (regTwo!32652 r!7292) (regOne!32652 r!7292)))) (head!12661 s!2326)))))

(assert (= (and d!1919771 c!1101343) b!6127237))

(assert (= (and d!1919771 (not c!1101343)) b!6127236))

(assert (= (and b!6127236 c!1101342) b!6127233))

(assert (= (and b!6127236 (not c!1101342)) b!6127240))

(assert (= (and b!6127240 c!1101344) b!6127241))

(assert (= (and b!6127240 (not c!1101344)) b!6127242))

(assert (= (and b!6127242 c!1101345) b!6127239))

(assert (= (and b!6127242 (not c!1101345)) b!6127235))

(assert (= (and b!6127235 c!1101346) b!6127234))

(assert (= (and b!6127235 (not c!1101346)) b!6127238))

(assert (= (or b!6127234 b!6127238) bm!507902))

(assert (= (or b!6127239 bm!507902) bm!507903))

(assert (= (or b!6127241 bm!507903) bm!507904))

(assert (= (or b!6127241 b!6127234) bm!507901))

(declare-fun m!6971644 () Bool)

(assert (=> b!6127235 m!6971644))

(assert (=> bm!507901 m!6971252))

(declare-fun m!6971646 () Bool)

(assert (=> bm!507901 m!6971646))

(declare-fun m!6971648 () Bool)

(assert (=> d!1919771 m!6971648))

(assert (=> d!1919771 m!6971170))

(assert (=> bm!507904 m!6971252))

(declare-fun m!6971650 () Bool)

(assert (=> bm!507904 m!6971650))

(assert (=> b!6126574 d!1919771))

(declare-fun d!1919773 () Bool)

(assert (=> d!1919773 (= (head!12661 s!2326) (h!70835 s!2326))))

(assert (=> b!6126574 d!1919773))

(declare-fun d!1919775 () Bool)

(assert (=> d!1919775 (= (tail!11746 s!2326) (t!377976 s!2326))))

(assert (=> b!6126574 d!1919775))

(declare-fun d!1919777 () Bool)

(assert (=> d!1919777 true))

(assert (=> d!1919777 true))

(declare-fun res!2539707 () Bool)

(assert (=> d!1919777 (= (choose!45514 lambda!333670) res!2539707)))

(assert (=> d!1919693 d!1919777))

(declare-fun b!6127243 () Bool)

(declare-fun e!3734885 () Bool)

(declare-fun e!3734887 () Bool)

(assert (=> b!6127243 (= e!3734885 e!3734887)))

(declare-fun c!1101347 () Bool)

(assert (=> b!6127243 (= c!1101347 (is-EmptyLang!16070 (regTwo!32652 r!7292)))))

(declare-fun b!6127244 () Bool)

(declare-fun e!3734886 () Bool)

(declare-fun e!3734889 () Bool)

(assert (=> b!6127244 (= e!3734886 e!3734889)))

(declare-fun res!2539712 () Bool)

(assert (=> b!6127244 (=> (not res!2539712) (not e!3734889))))

(declare-fun lt!2331543 () Bool)

(assert (=> b!6127244 (= res!2539712 (not lt!2331543))))

(declare-fun b!6127245 () Bool)

(declare-fun e!3734884 () Bool)

(assert (=> b!6127245 (= e!3734884 (= (head!12661 (_2!36352 (get!22208 lt!2331503))) (c!1101136 (regTwo!32652 r!7292))))))

(declare-fun b!6127246 () Bool)

(declare-fun res!2539710 () Bool)

(assert (=> b!6127246 (=> res!2539710 e!3734886)))

(assert (=> b!6127246 (= res!2539710 (not (is-ElementMatch!16070 (regTwo!32652 r!7292))))))

(assert (=> b!6127246 (= e!3734887 e!3734886)))

(declare-fun d!1919779 () Bool)

(assert (=> d!1919779 e!3734885))

(declare-fun c!1101349 () Bool)

(assert (=> d!1919779 (= c!1101349 (is-EmptyExpr!16070 (regTwo!32652 r!7292)))))

(declare-fun e!3734890 () Bool)

(assert (=> d!1919779 (= lt!2331543 e!3734890)))

(declare-fun c!1101348 () Bool)

(assert (=> d!1919779 (= c!1101348 (isEmpty!36326 (_2!36352 (get!22208 lt!2331503))))))

(assert (=> d!1919779 (validRegex!7806 (regTwo!32652 r!7292))))

(assert (=> d!1919779 (= (matchR!8253 (regTwo!32652 r!7292) (_2!36352 (get!22208 lt!2331503))) lt!2331543)))

(declare-fun b!6127247 () Bool)

(assert (=> b!6127247 (= e!3734887 (not lt!2331543))))

(declare-fun b!6127248 () Bool)

(assert (=> b!6127248 (= e!3734890 (matchR!8253 (derivativeStep!4790 (regTwo!32652 r!7292) (head!12661 (_2!36352 (get!22208 lt!2331503)))) (tail!11746 (_2!36352 (get!22208 lt!2331503)))))))

(declare-fun b!6127249 () Bool)

(declare-fun res!2539708 () Bool)

(declare-fun e!3734888 () Bool)

(assert (=> b!6127249 (=> res!2539708 e!3734888)))

(assert (=> b!6127249 (= res!2539708 (not (isEmpty!36326 (tail!11746 (_2!36352 (get!22208 lt!2331503))))))))

(declare-fun b!6127250 () Bool)

(declare-fun call!507910 () Bool)

(assert (=> b!6127250 (= e!3734885 (= lt!2331543 call!507910))))

(declare-fun b!6127251 () Bool)

(declare-fun res!2539711 () Bool)

(assert (=> b!6127251 (=> res!2539711 e!3734886)))

(assert (=> b!6127251 (= res!2539711 e!3734884)))

(declare-fun res!2539709 () Bool)

(assert (=> b!6127251 (=> (not res!2539709) (not e!3734884))))

(assert (=> b!6127251 (= res!2539709 lt!2331543)))

(declare-fun b!6127252 () Bool)

(declare-fun res!2539715 () Bool)

(assert (=> b!6127252 (=> (not res!2539715) (not e!3734884))))

(assert (=> b!6127252 (= res!2539715 (isEmpty!36326 (tail!11746 (_2!36352 (get!22208 lt!2331503)))))))

(declare-fun b!6127253 () Bool)

(assert (=> b!6127253 (= e!3734889 e!3734888)))

(declare-fun res!2539713 () Bool)

(assert (=> b!6127253 (=> res!2539713 e!3734888)))

(assert (=> b!6127253 (= res!2539713 call!507910)))

(declare-fun bm!507905 () Bool)

(assert (=> bm!507905 (= call!507910 (isEmpty!36326 (_2!36352 (get!22208 lt!2331503))))))

(declare-fun b!6127254 () Bool)

(declare-fun res!2539714 () Bool)

(assert (=> b!6127254 (=> (not res!2539714) (not e!3734884))))

(assert (=> b!6127254 (= res!2539714 (not call!507910))))

(declare-fun b!6127255 () Bool)

(assert (=> b!6127255 (= e!3734888 (not (= (head!12661 (_2!36352 (get!22208 lt!2331503))) (c!1101136 (regTwo!32652 r!7292)))))))

(declare-fun b!6127256 () Bool)

(assert (=> b!6127256 (= e!3734890 (nullable!6063 (regTwo!32652 r!7292)))))

(assert (= (and d!1919779 c!1101348) b!6127256))

(assert (= (and d!1919779 (not c!1101348)) b!6127248))

(assert (= (and d!1919779 c!1101349) b!6127250))

(assert (= (and d!1919779 (not c!1101349)) b!6127243))

(assert (= (and b!6127243 c!1101347) b!6127247))

(assert (= (and b!6127243 (not c!1101347)) b!6127246))

(assert (= (and b!6127246 (not res!2539710)) b!6127251))

(assert (= (and b!6127251 res!2539709) b!6127254))

(assert (= (and b!6127254 res!2539714) b!6127252))

(assert (= (and b!6127252 res!2539715) b!6127245))

(assert (= (and b!6127251 (not res!2539711)) b!6127244))

(assert (= (and b!6127244 res!2539712) b!6127253))

(assert (= (and b!6127253 (not res!2539713)) b!6127249))

(assert (= (and b!6127249 (not res!2539708)) b!6127255))

(assert (= (or b!6127250 b!6127254 b!6127253) bm!507905))

(declare-fun m!6971652 () Bool)

(assert (=> b!6127249 m!6971652))

(assert (=> b!6127249 m!6971652))

(declare-fun m!6971654 () Bool)

(assert (=> b!6127249 m!6971654))

(declare-fun m!6971656 () Bool)

(assert (=> d!1919779 m!6971656))

(declare-fun m!6971658 () Bool)

(assert (=> d!1919779 m!6971658))

(declare-fun m!6971660 () Bool)

(assert (=> b!6127248 m!6971660))

(assert (=> b!6127248 m!6971660))

(declare-fun m!6971662 () Bool)

(assert (=> b!6127248 m!6971662))

(assert (=> b!6127248 m!6971652))

(assert (=> b!6127248 m!6971662))

(assert (=> b!6127248 m!6971652))

(declare-fun m!6971664 () Bool)

(assert (=> b!6127248 m!6971664))

(assert (=> b!6127245 m!6971660))

(assert (=> b!6127252 m!6971652))

(assert (=> b!6127252 m!6971652))

(assert (=> b!6127252 m!6971654))

(declare-fun m!6971666 () Bool)

(assert (=> b!6127256 m!6971666))

(assert (=> b!6127255 m!6971660))

(assert (=> bm!507905 m!6971656))

(assert (=> b!6126769 d!1919779))

(declare-fun d!1919781 () Bool)

(assert (=> d!1919781 (= (get!22208 lt!2331503) (v!52099 lt!2331503))))

(assert (=> b!6126769 d!1919781))

(declare-fun c!1101350 () Bool)

(declare-fun c!1101351 () Bool)

(declare-fun call!507912 () Bool)

(declare-fun bm!507906 () Bool)

(assert (=> bm!507906 (= call!507912 (validRegex!7806 (ite c!1101350 (reg!16399 (ite c!1101292 (reg!16399 r!7292) (ite c!1101293 (regOne!32653 r!7292) (regOne!32652 r!7292)))) (ite c!1101351 (regOne!32653 (ite c!1101292 (reg!16399 r!7292) (ite c!1101293 (regOne!32653 r!7292) (regOne!32652 r!7292)))) (regOne!32652 (ite c!1101292 (reg!16399 r!7292) (ite c!1101293 (regOne!32653 r!7292) (regOne!32652 r!7292))))))))))

(declare-fun bm!507907 () Bool)

(declare-fun call!507911 () Bool)

(assert (=> bm!507907 (= call!507911 call!507912)))

(declare-fun b!6127257 () Bool)

(declare-fun res!2539716 () Bool)

(declare-fun e!3734896 () Bool)

(assert (=> b!6127257 (=> res!2539716 e!3734896)))

(assert (=> b!6127257 (= res!2539716 (not (is-Concat!24915 (ite c!1101292 (reg!16399 r!7292) (ite c!1101293 (regOne!32653 r!7292) (regOne!32652 r!7292))))))))

(declare-fun e!3734894 () Bool)

(assert (=> b!6127257 (= e!3734894 e!3734896)))

(declare-fun b!6127258 () Bool)

(declare-fun e!3734891 () Bool)

(assert (=> b!6127258 (= e!3734891 call!507912)))

(declare-fun b!6127259 () Bool)

(declare-fun e!3734893 () Bool)

(assert (=> b!6127259 (= e!3734893 e!3734894)))

(assert (=> b!6127259 (= c!1101351 (is-Union!16070 (ite c!1101292 (reg!16399 r!7292) (ite c!1101293 (regOne!32653 r!7292) (regOne!32652 r!7292)))))))

(declare-fun bm!507908 () Bool)

(declare-fun call!507913 () Bool)

(assert (=> bm!507908 (= call!507913 (validRegex!7806 (ite c!1101351 (regTwo!32653 (ite c!1101292 (reg!16399 r!7292) (ite c!1101293 (regOne!32653 r!7292) (regOne!32652 r!7292)))) (regTwo!32652 (ite c!1101292 (reg!16399 r!7292) (ite c!1101293 (regOne!32653 r!7292) (regOne!32652 r!7292)))))))))

(declare-fun d!1919783 () Bool)

(declare-fun res!2539719 () Bool)

(declare-fun e!3734892 () Bool)

(assert (=> d!1919783 (=> res!2539719 e!3734892)))

(assert (=> d!1919783 (= res!2539719 (is-ElementMatch!16070 (ite c!1101292 (reg!16399 r!7292) (ite c!1101293 (regOne!32653 r!7292) (regOne!32652 r!7292)))))))

(assert (=> d!1919783 (= (validRegex!7806 (ite c!1101292 (reg!16399 r!7292) (ite c!1101293 (regOne!32653 r!7292) (regOne!32652 r!7292)))) e!3734892)))

(declare-fun b!6127260 () Bool)

(declare-fun res!2539717 () Bool)

(declare-fun e!3734897 () Bool)

(assert (=> b!6127260 (=> (not res!2539717) (not e!3734897))))

(assert (=> b!6127260 (= res!2539717 call!507911)))

(assert (=> b!6127260 (= e!3734894 e!3734897)))

(declare-fun b!6127261 () Bool)

(assert (=> b!6127261 (= e!3734892 e!3734893)))

(assert (=> b!6127261 (= c!1101350 (is-Star!16070 (ite c!1101292 (reg!16399 r!7292) (ite c!1101293 (regOne!32653 r!7292) (regOne!32652 r!7292)))))))

(declare-fun b!6127262 () Bool)

(assert (=> b!6127262 (= e!3734897 call!507913)))

(declare-fun b!6127263 () Bool)

(assert (=> b!6127263 (= e!3734893 e!3734891)))

(declare-fun res!2539720 () Bool)

(assert (=> b!6127263 (= res!2539720 (not (nullable!6063 (reg!16399 (ite c!1101292 (reg!16399 r!7292) (ite c!1101293 (regOne!32653 r!7292) (regOne!32652 r!7292)))))))))

(assert (=> b!6127263 (=> (not res!2539720) (not e!3734891))))

(declare-fun b!6127264 () Bool)

(declare-fun e!3734895 () Bool)

(assert (=> b!6127264 (= e!3734896 e!3734895)))

(declare-fun res!2539718 () Bool)

(assert (=> b!6127264 (=> (not res!2539718) (not e!3734895))))

(assert (=> b!6127264 (= res!2539718 call!507911)))

(declare-fun b!6127265 () Bool)

(assert (=> b!6127265 (= e!3734895 call!507913)))

(assert (= (and d!1919783 (not res!2539719)) b!6127261))

(assert (= (and b!6127261 c!1101350) b!6127263))

(assert (= (and b!6127261 (not c!1101350)) b!6127259))

(assert (= (and b!6127263 res!2539720) b!6127258))

(assert (= (and b!6127259 c!1101351) b!6127260))

(assert (= (and b!6127259 (not c!1101351)) b!6127257))

(assert (= (and b!6127260 res!2539717) b!6127262))

(assert (= (and b!6127257 (not res!2539716)) b!6127264))

(assert (= (and b!6127264 res!2539718) b!6127265))

(assert (= (or b!6127262 b!6127265) bm!507908))

(assert (= (or b!6127260 b!6127264) bm!507907))

(assert (= (or b!6127258 bm!507907) bm!507906))

(declare-fun m!6971668 () Bool)

(assert (=> bm!507906 m!6971668))

(declare-fun m!6971670 () Bool)

(assert (=> bm!507908 m!6971670))

(declare-fun m!6971672 () Bool)

(assert (=> b!6127263 m!6971672))

(assert (=> bm!507857 d!1919783))

(declare-fun call!507915 () Bool)

(declare-fun c!1101353 () Bool)

(declare-fun bm!507909 () Bool)

(declare-fun c!1101352 () Bool)

(assert (=> bm!507909 (= call!507915 (validRegex!7806 (ite c!1101352 (reg!16399 lt!2331492) (ite c!1101353 (regOne!32653 lt!2331492) (regOne!32652 lt!2331492)))))))

(declare-fun bm!507910 () Bool)

(declare-fun call!507914 () Bool)

(assert (=> bm!507910 (= call!507914 call!507915)))

(declare-fun b!6127266 () Bool)

(declare-fun res!2539721 () Bool)

(declare-fun e!3734903 () Bool)

(assert (=> b!6127266 (=> res!2539721 e!3734903)))

(assert (=> b!6127266 (= res!2539721 (not (is-Concat!24915 lt!2331492)))))

(declare-fun e!3734901 () Bool)

(assert (=> b!6127266 (= e!3734901 e!3734903)))

(declare-fun b!6127267 () Bool)

(declare-fun e!3734898 () Bool)

(assert (=> b!6127267 (= e!3734898 call!507915)))

(declare-fun b!6127268 () Bool)

(declare-fun e!3734900 () Bool)

(assert (=> b!6127268 (= e!3734900 e!3734901)))

(assert (=> b!6127268 (= c!1101353 (is-Union!16070 lt!2331492))))

(declare-fun bm!507911 () Bool)

(declare-fun call!507916 () Bool)

(assert (=> bm!507911 (= call!507916 (validRegex!7806 (ite c!1101353 (regTwo!32653 lt!2331492) (regTwo!32652 lt!2331492))))))

(declare-fun d!1919785 () Bool)

(declare-fun res!2539724 () Bool)

(declare-fun e!3734899 () Bool)

(assert (=> d!1919785 (=> res!2539724 e!3734899)))

(assert (=> d!1919785 (= res!2539724 (is-ElementMatch!16070 lt!2331492))))

(assert (=> d!1919785 (= (validRegex!7806 lt!2331492) e!3734899)))

(declare-fun b!6127269 () Bool)

(declare-fun res!2539722 () Bool)

(declare-fun e!3734904 () Bool)

(assert (=> b!6127269 (=> (not res!2539722) (not e!3734904))))

(assert (=> b!6127269 (= res!2539722 call!507914)))

(assert (=> b!6127269 (= e!3734901 e!3734904)))

(declare-fun b!6127270 () Bool)

(assert (=> b!6127270 (= e!3734899 e!3734900)))

(assert (=> b!6127270 (= c!1101352 (is-Star!16070 lt!2331492))))

(declare-fun b!6127271 () Bool)

(assert (=> b!6127271 (= e!3734904 call!507916)))

(declare-fun b!6127272 () Bool)

(assert (=> b!6127272 (= e!3734900 e!3734898)))

(declare-fun res!2539725 () Bool)

(assert (=> b!6127272 (= res!2539725 (not (nullable!6063 (reg!16399 lt!2331492))))))

(assert (=> b!6127272 (=> (not res!2539725) (not e!3734898))))

(declare-fun b!6127273 () Bool)

(declare-fun e!3734902 () Bool)

(assert (=> b!6127273 (= e!3734903 e!3734902)))

(declare-fun res!2539723 () Bool)

(assert (=> b!6127273 (=> (not res!2539723) (not e!3734902))))

(assert (=> b!6127273 (= res!2539723 call!507914)))

(declare-fun b!6127274 () Bool)

(assert (=> b!6127274 (= e!3734902 call!507916)))

(assert (= (and d!1919785 (not res!2539724)) b!6127270))

(assert (= (and b!6127270 c!1101352) b!6127272))

(assert (= (and b!6127270 (not c!1101352)) b!6127268))

(assert (= (and b!6127272 res!2539725) b!6127267))

(assert (= (and b!6127268 c!1101353) b!6127269))

(assert (= (and b!6127268 (not c!1101353)) b!6127266))

(assert (= (and b!6127269 res!2539722) b!6127271))

(assert (= (and b!6127266 (not res!2539721)) b!6127273))

(assert (= (and b!6127273 res!2539723) b!6127274))

(assert (= (or b!6127271 b!6127274) bm!507911))

(assert (= (or b!6127269 b!6127273) bm!507910))

(assert (= (or b!6127267 bm!507910) bm!507909))

(declare-fun m!6971674 () Bool)

(assert (=> bm!507909 m!6971674))

(declare-fun m!6971676 () Bool)

(assert (=> bm!507911 m!6971676))

(declare-fun m!6971678 () Bool)

(assert (=> b!6127272 m!6971678))

(assert (=> d!1919677 d!1919785))

(assert (=> d!1919677 d!1919645))

(assert (=> d!1919677 d!1919649))

(declare-fun d!1919787 () Bool)

(declare-fun res!2539730 () Bool)

(declare-fun e!3734909 () Bool)

(assert (=> d!1919787 (=> res!2539730 e!3734909)))

(assert (=> d!1919787 (= res!2539730 (is-Nil!64385 lt!2331469))))

(assert (=> d!1919787 (= (forall!15191 lt!2331469 lambda!333698) e!3734909)))

(declare-fun b!6127279 () Bool)

(declare-fun e!3734910 () Bool)

(assert (=> b!6127279 (= e!3734909 e!3734910)))

(declare-fun res!2539731 () Bool)

(assert (=> b!6127279 (=> (not res!2539731) (not e!3734910))))

(declare-fun dynLambda!25363 (Int Regex!16070) Bool)

(assert (=> b!6127279 (= res!2539731 (dynLambda!25363 lambda!333698 (h!70833 lt!2331469)))))

(declare-fun b!6127280 () Bool)

(assert (=> b!6127280 (= e!3734910 (forall!15191 (t!377974 lt!2331469) lambda!333698))))

(assert (= (and d!1919787 (not res!2539730)) b!6127279))

(assert (= (and b!6127279 res!2539731) b!6127280))

(declare-fun b_lambda!233257 () Bool)

(assert (=> (not b_lambda!233257) (not b!6127279)))

(declare-fun m!6971680 () Bool)

(assert (=> b!6127279 m!6971680))

(declare-fun m!6971682 () Bool)

(assert (=> b!6127280 m!6971682))

(assert (=> d!1919649 d!1919787))

(declare-fun d!1919789 () Bool)

(assert (=> d!1919789 (= (Exists!3140 (ite c!1101152 lambda!333688 lambda!333689)) (choose!45514 (ite c!1101152 lambda!333688 lambda!333689)))))

(declare-fun bs!1520117 () Bool)

(assert (= bs!1520117 d!1919789))

(declare-fun m!6971684 () Bool)

(assert (=> bs!1520117 m!6971684))

(assert (=> bm!507809 d!1919789))

(assert (=> b!6126647 d!1919719))

(declare-fun bs!1520118 () Bool)

(declare-fun d!1919791 () Bool)

(assert (= bs!1520118 (and d!1919791 d!1919733)))

(declare-fun lambda!333742 () Int)

(assert (=> bs!1520118 (= lambda!333742 lambda!333740)))

(declare-fun bs!1520119 () Bool)

(assert (= bs!1520119 (and d!1919791 d!1919645)))

(assert (=> bs!1520119 (= lambda!333742 lambda!333694)))

(declare-fun bs!1520120 () Bool)

(assert (= bs!1520120 (and d!1919791 d!1919719)))

(assert (=> bs!1520120 (= lambda!333742 lambda!333732)))

(declare-fun bs!1520121 () Bool)

(assert (= bs!1520121 (and d!1919791 d!1919723)))

(assert (=> bs!1520121 (= lambda!333742 lambda!333735)))

(declare-fun bs!1520122 () Bool)

(assert (= bs!1520122 (and d!1919791 d!1919649)))

(assert (=> bs!1520122 (= lambda!333742 lambda!333698)))

(declare-fun bs!1520123 () Bool)

(assert (= bs!1520123 (and d!1919791 d!1919675)))

(assert (=> bs!1520123 (= lambda!333742 lambda!333703)))

(declare-fun lt!2331544 () List!64509)

(assert (=> d!1919791 (forall!15191 lt!2331544 lambda!333742)))

(declare-fun e!3734911 () List!64509)

(assert (=> d!1919791 (= lt!2331544 e!3734911)))

(declare-fun c!1101354 () Bool)

(assert (=> d!1919791 (= c!1101354 (is-Cons!64386 (t!377975 zl!343)))))

(assert (=> d!1919791 (= (unfocusZipperList!1491 (t!377975 zl!343)) lt!2331544)))

(declare-fun b!6127281 () Bool)

(assert (=> b!6127281 (= e!3734911 (Cons!64385 (generalisedConcat!1667 (exprs!5954 (h!70834 (t!377975 zl!343)))) (unfocusZipperList!1491 (t!377975 (t!377975 zl!343)))))))

(declare-fun b!6127282 () Bool)

(assert (=> b!6127282 (= e!3734911 Nil!64385)))

(assert (= (and d!1919791 c!1101354) b!6127281))

(assert (= (and d!1919791 (not c!1101354)) b!6127282))

(declare-fun m!6971686 () Bool)

(assert (=> d!1919791 m!6971686))

(declare-fun m!6971688 () Bool)

(assert (=> b!6127281 m!6971688))

(declare-fun m!6971690 () Bool)

(assert (=> b!6127281 m!6971690))

(assert (=> b!6126647 d!1919791))

(declare-fun b!6127297 () Bool)

(declare-fun e!3734925 () Bool)

(declare-fun e!3734927 () Bool)

(assert (=> b!6127297 (= e!3734925 e!3734927)))

(declare-fun res!2539745 () Bool)

(assert (=> b!6127297 (=> (not res!2539745) (not e!3734927))))

(assert (=> b!6127297 (= res!2539745 (and (not (is-EmptyLang!16070 (h!70833 (exprs!5954 (h!70834 zl!343))))) (not (is-ElementMatch!16070 (h!70833 (exprs!5954 (h!70834 zl!343)))))))))

(declare-fun bm!507916 () Bool)

(declare-fun call!507922 () Bool)

(declare-fun c!1101357 () Bool)

(assert (=> bm!507916 (= call!507922 (nullable!6063 (ite c!1101357 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))))))))

(declare-fun d!1919793 () Bool)

(declare-fun res!2539743 () Bool)

(assert (=> d!1919793 (=> res!2539743 e!3734925)))

(assert (=> d!1919793 (= res!2539743 (is-EmptyExpr!16070 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(assert (=> d!1919793 (= (nullableFct!2027 (h!70833 (exprs!5954 (h!70834 zl!343)))) e!3734925)))

(declare-fun b!6127298 () Bool)

(declare-fun e!3734926 () Bool)

(assert (=> b!6127298 (= e!3734926 call!507922)))

(declare-fun b!6127299 () Bool)

(declare-fun e!3734924 () Bool)

(assert (=> b!6127299 (= e!3734927 e!3734924)))

(declare-fun res!2539742 () Bool)

(assert (=> b!6127299 (=> res!2539742 e!3734924)))

(assert (=> b!6127299 (= res!2539742 (is-Star!16070 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun b!6127300 () Bool)

(declare-fun e!3734929 () Bool)

(assert (=> b!6127300 (= e!3734929 e!3734926)))

(declare-fun res!2539744 () Bool)

(declare-fun call!507921 () Bool)

(assert (=> b!6127300 (= res!2539744 call!507921)))

(assert (=> b!6127300 (=> res!2539744 e!3734926)))

(declare-fun bm!507917 () Bool)

(assert (=> bm!507917 (= call!507921 (nullable!6063 (ite c!1101357 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))))))))

(declare-fun b!6127301 () Bool)

(assert (=> b!6127301 (= e!3734924 e!3734929)))

(assert (=> b!6127301 (= c!1101357 (is-Union!16070 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun b!6127302 () Bool)

(declare-fun e!3734928 () Bool)

(assert (=> b!6127302 (= e!3734929 e!3734928)))

(declare-fun res!2539746 () Bool)

(assert (=> b!6127302 (= res!2539746 call!507921)))

(assert (=> b!6127302 (=> (not res!2539746) (not e!3734928))))

(declare-fun b!6127303 () Bool)

(assert (=> b!6127303 (= e!3734928 call!507922)))

(assert (= (and d!1919793 (not res!2539743)) b!6127297))

(assert (= (and b!6127297 res!2539745) b!6127299))

(assert (= (and b!6127299 (not res!2539742)) b!6127301))

(assert (= (and b!6127301 c!1101357) b!6127300))

(assert (= (and b!6127301 (not c!1101357)) b!6127302))

(assert (= (and b!6127300 (not res!2539744)) b!6127298))

(assert (= (and b!6127302 res!2539746) b!6127303))

(assert (= (or b!6127298 b!6127303) bm!507916))

(assert (= (or b!6127300 b!6127302) bm!507917))

(declare-fun m!6971692 () Bool)

(assert (=> bm!507916 m!6971692))

(declare-fun m!6971694 () Bool)

(assert (=> bm!507917 m!6971694))

(assert (=> d!1919657 d!1919793))

(declare-fun d!1919795 () Bool)

(assert (=> d!1919795 (= (isDefined!12664 lt!2331503) (not (isEmpty!36328 lt!2331503)))))

(declare-fun bs!1520124 () Bool)

(assert (= bs!1520124 d!1919795))

(declare-fun m!6971696 () Bool)

(assert (=> bs!1520124 m!6971696))

(assert (=> b!6126773 d!1919795))

(declare-fun d!1919797 () Bool)

(assert (=> d!1919797 (= (isEmpty!36323 (tail!11747 (unfocusZipperList!1491 zl!343))) (is-Nil!64385 (tail!11747 (unfocusZipperList!1491 zl!343))))))

(assert (=> b!6126610 d!1919797))

(declare-fun d!1919799 () Bool)

(assert (=> d!1919799 (= (tail!11747 (unfocusZipperList!1491 zl!343)) (t!377974 (unfocusZipperList!1491 zl!343)))))

(assert (=> b!6126610 d!1919799))

(assert (=> b!6126906 d!1919679))

(declare-fun b!6127304 () Bool)

(declare-fun e!3734935 () (Set Context!10908))

(declare-fun call!507923 () (Set Context!10908))

(declare-fun call!507926 () (Set Context!10908))

(assert (=> b!6127304 (= e!3734935 (set.union call!507923 call!507926))))

(declare-fun b!6127305 () Bool)

(declare-fun e!3734932 () Bool)

(assert (=> b!6127305 (= e!3734932 (nullable!6063 (regOne!32652 (h!70833 (exprs!5954 lt!2331410)))))))

(declare-fun b!6127306 () Bool)

(declare-fun e!3734930 () (Set Context!10908))

(declare-fun call!507927 () (Set Context!10908))

(assert (=> b!6127306 (= e!3734930 call!507927)))

(declare-fun bm!507918 () Bool)

(declare-fun call!507924 () (Set Context!10908))

(assert (=> bm!507918 (= call!507926 call!507924)))

(declare-fun d!1919801 () Bool)

(declare-fun c!1101358 () Bool)

(assert (=> d!1919801 (= c!1101358 (and (is-ElementMatch!16070 (h!70833 (exprs!5954 lt!2331410))) (= (c!1101136 (h!70833 (exprs!5954 lt!2331410))) (h!70835 s!2326))))))

(declare-fun e!3734931 () (Set Context!10908))

(assert (=> d!1919801 (= (derivationStepZipperDown!1318 (h!70833 (exprs!5954 lt!2331410)) (Context!10909 (t!377974 (exprs!5954 lt!2331410))) (h!70835 s!2326)) e!3734931)))

(declare-fun b!6127307 () Bool)

(declare-fun e!3734934 () (Set Context!10908))

(assert (=> b!6127307 (= e!3734934 (as set.empty (Set Context!10908)))))

(declare-fun bm!507919 () Bool)

(assert (=> bm!507919 (= call!507927 call!507926)))

(declare-fun bm!507920 () Bool)

(declare-fun c!1101360 () Bool)

(declare-fun c!1101359 () Bool)

(declare-fun c!1101362 () Bool)

(declare-fun call!507928 () List!64509)

(assert (=> bm!507920 (= call!507924 (derivationStepZipperDown!1318 (ite c!1101362 (regOne!32653 (h!70833 (exprs!5954 lt!2331410))) (ite c!1101359 (regTwo!32652 (h!70833 (exprs!5954 lt!2331410))) (ite c!1101360 (regOne!32652 (h!70833 (exprs!5954 lt!2331410))) (reg!16399 (h!70833 (exprs!5954 lt!2331410)))))) (ite (or c!1101362 c!1101359) (Context!10909 (t!377974 (exprs!5954 lt!2331410))) (Context!10909 call!507928)) (h!70835 s!2326)))))

(declare-fun b!6127308 () Bool)

(assert (=> b!6127308 (= e!3734935 e!3734930)))

(assert (=> b!6127308 (= c!1101360 (is-Concat!24915 (h!70833 (exprs!5954 lt!2331410))))))

(declare-fun b!6127309 () Bool)

(assert (=> b!6127309 (= c!1101359 e!3734932)))

(declare-fun res!2539747 () Bool)

(assert (=> b!6127309 (=> (not res!2539747) (not e!3734932))))

(assert (=> b!6127309 (= res!2539747 (is-Concat!24915 (h!70833 (exprs!5954 lt!2331410))))))

(declare-fun e!3734933 () (Set Context!10908))

(assert (=> b!6127309 (= e!3734933 e!3734935)))

(declare-fun call!507925 () List!64509)

(declare-fun bm!507921 () Bool)

(assert (=> bm!507921 (= call!507925 ($colon$colon!1947 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 lt!2331410)))) (ite (or c!1101359 c!1101360) (regTwo!32652 (h!70833 (exprs!5954 lt!2331410))) (h!70833 (exprs!5954 lt!2331410)))))))

(declare-fun bm!507922 () Bool)

(assert (=> bm!507922 (= call!507928 call!507925)))

(declare-fun b!6127310 () Bool)

(assert (=> b!6127310 (= e!3734931 e!3734933)))

(assert (=> b!6127310 (= c!1101362 (is-Union!16070 (h!70833 (exprs!5954 lt!2331410))))))

(declare-fun bm!507923 () Bool)

(assert (=> bm!507923 (= call!507923 (derivationStepZipperDown!1318 (ite c!1101362 (regTwo!32653 (h!70833 (exprs!5954 lt!2331410))) (regOne!32652 (h!70833 (exprs!5954 lt!2331410)))) (ite c!1101362 (Context!10909 (t!377974 (exprs!5954 lt!2331410))) (Context!10909 call!507925)) (h!70835 s!2326)))))

(declare-fun b!6127311 () Bool)

(assert (=> b!6127311 (= e!3734934 call!507927)))

(declare-fun b!6127312 () Bool)

(declare-fun c!1101361 () Bool)

(assert (=> b!6127312 (= c!1101361 (is-Star!16070 (h!70833 (exprs!5954 lt!2331410))))))

(assert (=> b!6127312 (= e!3734930 e!3734934)))

(declare-fun b!6127313 () Bool)

(assert (=> b!6127313 (= e!3734933 (set.union call!507924 call!507923))))

(declare-fun b!6127314 () Bool)

(assert (=> b!6127314 (= e!3734931 (set.insert (Context!10909 (t!377974 (exprs!5954 lt!2331410))) (as set.empty (Set Context!10908))))))

(assert (= (and d!1919801 c!1101358) b!6127314))

(assert (= (and d!1919801 (not c!1101358)) b!6127310))

(assert (= (and b!6127310 c!1101362) b!6127313))

(assert (= (and b!6127310 (not c!1101362)) b!6127309))

(assert (= (and b!6127309 res!2539747) b!6127305))

(assert (= (and b!6127309 c!1101359) b!6127304))

(assert (= (and b!6127309 (not c!1101359)) b!6127308))

(assert (= (and b!6127308 c!1101360) b!6127306))

(assert (= (and b!6127308 (not c!1101360)) b!6127312))

(assert (= (and b!6127312 c!1101361) b!6127311))

(assert (= (and b!6127312 (not c!1101361)) b!6127307))

(assert (= (or b!6127306 b!6127311) bm!507922))

(assert (= (or b!6127306 b!6127311) bm!507919))

(assert (= (or b!6127304 bm!507922) bm!507921))

(assert (= (or b!6127304 bm!507919) bm!507918))

(assert (= (or b!6127313 b!6127304) bm!507923))

(assert (= (or b!6127313 bm!507918) bm!507920))

(declare-fun m!6971698 () Bool)

(assert (=> b!6127305 m!6971698))

(declare-fun m!6971700 () Bool)

(assert (=> bm!507923 m!6971700))

(declare-fun m!6971702 () Bool)

(assert (=> b!6127314 m!6971702))

(declare-fun m!6971704 () Bool)

(assert (=> bm!507921 m!6971704))

(declare-fun m!6971706 () Bool)

(assert (=> bm!507920 m!6971706))

(assert (=> bm!507835 d!1919801))

(declare-fun d!1919803 () Bool)

(declare-fun c!1101363 () Bool)

(assert (=> d!1919803 (= c!1101363 (isEmpty!36326 (tail!11746 (t!377976 s!2326))))))

(declare-fun e!3734936 () Bool)

(assert (=> d!1919803 (= (matchZipper!2082 (derivationStepZipper!2044 (set.union lt!2331407 lt!2331412) (head!12661 (t!377976 s!2326))) (tail!11746 (t!377976 s!2326))) e!3734936)))

(declare-fun b!6127315 () Bool)

(assert (=> b!6127315 (= e!3734936 (nullableZipper!1852 (derivationStepZipper!2044 (set.union lt!2331407 lt!2331412) (head!12661 (t!377976 s!2326)))))))

(declare-fun b!6127316 () Bool)

(assert (=> b!6127316 (= e!3734936 (matchZipper!2082 (derivationStepZipper!2044 (derivationStepZipper!2044 (set.union lt!2331407 lt!2331412) (head!12661 (t!377976 s!2326))) (head!12661 (tail!11746 (t!377976 s!2326)))) (tail!11746 (tail!11746 (t!377976 s!2326)))))))

(assert (= (and d!1919803 c!1101363) b!6127315))

(assert (= (and d!1919803 (not c!1101363)) b!6127316))

(assert (=> d!1919803 m!6971514))

(declare-fun m!6971708 () Bool)

(assert (=> d!1919803 m!6971708))

(assert (=> b!6127315 m!6971520))

(declare-fun m!6971710 () Bool)

(assert (=> b!6127315 m!6971710))

(assert (=> b!6127316 m!6971514))

(declare-fun m!6971712 () Bool)

(assert (=> b!6127316 m!6971712))

(assert (=> b!6127316 m!6971520))

(assert (=> b!6127316 m!6971712))

(declare-fun m!6971714 () Bool)

(assert (=> b!6127316 m!6971714))

(assert (=> b!6127316 m!6971514))

(declare-fun m!6971716 () Bool)

(assert (=> b!6127316 m!6971716))

(assert (=> b!6127316 m!6971714))

(assert (=> b!6127316 m!6971716))

(declare-fun m!6971718 () Bool)

(assert (=> b!6127316 m!6971718))

(assert (=> b!6126943 d!1919803))

(declare-fun bs!1520125 () Bool)

(declare-fun d!1919805 () Bool)

(assert (= bs!1520125 (and d!1919805 b!6126391)))

(declare-fun lambda!333745 () Int)

(assert (=> bs!1520125 (= (= (head!12661 (t!377976 s!2326)) (h!70835 s!2326)) (= lambda!333745 lambda!333672))))

(assert (=> d!1919805 true))

(assert (=> d!1919805 (= (derivationStepZipper!2044 (set.union lt!2331407 lt!2331412) (head!12661 (t!377976 s!2326))) (flatMap!1575 (set.union lt!2331407 lt!2331412) lambda!333745))))

(declare-fun bs!1520126 () Bool)

(assert (= bs!1520126 d!1919805))

(declare-fun m!6971720 () Bool)

(assert (=> bs!1520126 m!6971720))

(assert (=> b!6126943 d!1919805))

(declare-fun d!1919807 () Bool)

(assert (=> d!1919807 (= (head!12661 (t!377976 s!2326)) (h!70835 (t!377976 s!2326)))))

(assert (=> b!6126943 d!1919807))

(declare-fun d!1919809 () Bool)

(assert (=> d!1919809 (= (tail!11746 (t!377976 s!2326)) (t!377976 (t!377976 s!2326)))))

(assert (=> b!6126943 d!1919809))

(declare-fun bs!1520127 () Bool)

(declare-fun b!6127325 () Bool)

(assert (= bs!1520127 (and b!6127325 b!6126385)))

(declare-fun lambda!333746 () Int)

(assert (=> bs!1520127 (not (= lambda!333746 lambda!333670))))

(declare-fun bs!1520128 () Bool)

(assert (= bs!1520128 (and b!6127325 d!1919697)))

(assert (=> bs!1520128 (not (= lambda!333746 lambda!333719))))

(declare-fun bs!1520129 () Bool)

(assert (= bs!1520129 (and b!6127325 d!1919703)))

(assert (=> bs!1520129 (not (= lambda!333746 lambda!333728))))

(assert (=> bs!1520129 (not (= lambda!333746 lambda!333729))))

(declare-fun bs!1520130 () Bool)

(assert (= bs!1520130 (and b!6127325 b!6126535)))

(assert (=> bs!1520130 (not (= lambda!333746 lambda!333689))))

(assert (=> bs!1520127 (not (= lambda!333746 lambda!333671))))

(declare-fun bs!1520131 () Bool)

(assert (= bs!1520131 (and b!6127325 b!6126536)))

(assert (=> bs!1520131 (= (and (= (reg!16399 (regTwo!32653 r!7292)) (reg!16399 r!7292)) (= (regTwo!32653 r!7292) r!7292)) (= lambda!333746 lambda!333688))))

(assert (=> b!6127325 true))

(assert (=> b!6127325 true))

(declare-fun bs!1520132 () Bool)

(declare-fun b!6127324 () Bool)

(assert (= bs!1520132 (and b!6127324 b!6126385)))

(declare-fun lambda!333747 () Int)

(assert (=> bs!1520132 (not (= lambda!333747 lambda!333670))))

(declare-fun bs!1520133 () Bool)

(assert (= bs!1520133 (and b!6127324 d!1919697)))

(assert (=> bs!1520133 (not (= lambda!333747 lambda!333719))))

(declare-fun bs!1520134 () Bool)

(assert (= bs!1520134 (and b!6127324 d!1919703)))

(assert (=> bs!1520134 (not (= lambda!333747 lambda!333728))))

(assert (=> bs!1520134 (= (and (= (regOne!32652 (regTwo!32653 r!7292)) (regOne!32652 r!7292)) (= (regTwo!32652 (regTwo!32653 r!7292)) (regTwo!32652 r!7292))) (= lambda!333747 lambda!333729))))

(declare-fun bs!1520135 () Bool)

(assert (= bs!1520135 (and b!6127324 b!6126535)))

(assert (=> bs!1520135 (= (and (= (regOne!32652 (regTwo!32653 r!7292)) (regOne!32652 r!7292)) (= (regTwo!32652 (regTwo!32653 r!7292)) (regTwo!32652 r!7292))) (= lambda!333747 lambda!333689))))

(assert (=> bs!1520132 (= (and (= (regOne!32652 (regTwo!32653 r!7292)) (regOne!32652 r!7292)) (= (regTwo!32652 (regTwo!32653 r!7292)) (regTwo!32652 r!7292))) (= lambda!333747 lambda!333671))))

(declare-fun bs!1520136 () Bool)

(assert (= bs!1520136 (and b!6127324 b!6126536)))

(assert (=> bs!1520136 (not (= lambda!333747 lambda!333688))))

(declare-fun bs!1520137 () Bool)

(assert (= bs!1520137 (and b!6127324 b!6127325)))

(assert (=> bs!1520137 (not (= lambda!333747 lambda!333746))))

(assert (=> b!6127324 true))

(assert (=> b!6127324 true))

(declare-fun b!6127319 () Bool)

(declare-fun e!3734937 () Bool)

(assert (=> b!6127319 (= e!3734937 (matchRSpec!3171 (regTwo!32653 (regTwo!32653 r!7292)) s!2326))))

(declare-fun bm!507924 () Bool)

(declare-fun call!507929 () Bool)

(assert (=> bm!507924 (= call!507929 (isEmpty!36326 s!2326))))

(declare-fun b!6127320 () Bool)

(declare-fun e!3734941 () Bool)

(assert (=> b!6127320 (= e!3734941 e!3734937)))

(declare-fun res!2539748 () Bool)

(assert (=> b!6127320 (= res!2539748 (matchRSpec!3171 (regOne!32653 (regTwo!32653 r!7292)) s!2326))))

(assert (=> b!6127320 (=> res!2539748 e!3734937)))

(declare-fun b!6127321 () Bool)

(declare-fun c!1101369 () Bool)

(assert (=> b!6127321 (= c!1101369 (is-Union!16070 (regTwo!32653 r!7292)))))

(declare-fun e!3734939 () Bool)

(assert (=> b!6127321 (= e!3734939 e!3734941)))

(declare-fun d!1919811 () Bool)

(declare-fun c!1101368 () Bool)

(assert (=> d!1919811 (= c!1101368 (is-EmptyExpr!16070 (regTwo!32653 r!7292)))))

(declare-fun e!3734940 () Bool)

(assert (=> d!1919811 (= (matchRSpec!3171 (regTwo!32653 r!7292) s!2326) e!3734940)))

(declare-fun b!6127322 () Bool)

(declare-fun e!3734942 () Bool)

(assert (=> b!6127322 (= e!3734941 e!3734942)))

(declare-fun c!1101366 () Bool)

(assert (=> b!6127322 (= c!1101366 (is-Star!16070 (regTwo!32653 r!7292)))))

(declare-fun b!6127323 () Bool)

(assert (=> b!6127323 (= e!3734940 call!507929)))

(declare-fun call!507930 () Bool)

(assert (=> b!6127324 (= e!3734942 call!507930)))

(declare-fun bm!507925 () Bool)

(assert (=> bm!507925 (= call!507930 (Exists!3140 (ite c!1101366 lambda!333746 lambda!333747)))))

(declare-fun e!3734943 () Bool)

(assert (=> b!6127325 (= e!3734943 call!507930)))

(declare-fun b!6127326 () Bool)

(declare-fun e!3734938 () Bool)

(assert (=> b!6127326 (= e!3734940 e!3734938)))

(declare-fun res!2539750 () Bool)

(assert (=> b!6127326 (= res!2539750 (not (is-EmptyLang!16070 (regTwo!32653 r!7292))))))

(assert (=> b!6127326 (=> (not res!2539750) (not e!3734938))))

(declare-fun b!6127327 () Bool)

(assert (=> b!6127327 (= e!3734939 (= s!2326 (Cons!64387 (c!1101136 (regTwo!32653 r!7292)) Nil!64387)))))

(declare-fun b!6127328 () Bool)

(declare-fun c!1101367 () Bool)

(assert (=> b!6127328 (= c!1101367 (is-ElementMatch!16070 (regTwo!32653 r!7292)))))

(assert (=> b!6127328 (= e!3734938 e!3734939)))

(declare-fun b!6127329 () Bool)

(declare-fun res!2539749 () Bool)

(assert (=> b!6127329 (=> res!2539749 e!3734943)))

(assert (=> b!6127329 (= res!2539749 call!507929)))

(assert (=> b!6127329 (= e!3734942 e!3734943)))

(assert (= (and d!1919811 c!1101368) b!6127323))

(assert (= (and d!1919811 (not c!1101368)) b!6127326))

(assert (= (and b!6127326 res!2539750) b!6127328))

(assert (= (and b!6127328 c!1101367) b!6127327))

(assert (= (and b!6127328 (not c!1101367)) b!6127321))

(assert (= (and b!6127321 c!1101369) b!6127320))

(assert (= (and b!6127321 (not c!1101369)) b!6127322))

(assert (= (and b!6127320 (not res!2539748)) b!6127319))

(assert (= (and b!6127322 c!1101366) b!6127329))

(assert (= (and b!6127322 (not c!1101366)) b!6127324))

(assert (= (and b!6127329 (not res!2539749)) b!6127325))

(assert (= (or b!6127325 b!6127324) bm!507925))

(assert (= (or b!6127323 b!6127329) bm!507924))

(declare-fun m!6971722 () Bool)

(assert (=> b!6127319 m!6971722))

(assert (=> bm!507924 m!6971242))

(declare-fun m!6971724 () Bool)

(assert (=> b!6127320 m!6971724))

(declare-fun m!6971726 () Bool)

(assert (=> bm!507925 m!6971726))

(assert (=> b!6126530 d!1919811))

(declare-fun bs!1520138 () Bool)

(declare-fun d!1919813 () Bool)

(assert (= bs!1520138 (and d!1919813 d!1919733)))

(declare-fun lambda!333748 () Int)

(assert (=> bs!1520138 (= lambda!333748 lambda!333740)))

(declare-fun bs!1520139 () Bool)

(assert (= bs!1520139 (and d!1919813 d!1919645)))

(assert (=> bs!1520139 (= lambda!333748 lambda!333694)))

(declare-fun bs!1520140 () Bool)

(assert (= bs!1520140 (and d!1919813 d!1919791)))

(assert (=> bs!1520140 (= lambda!333748 lambda!333742)))

(declare-fun bs!1520141 () Bool)

(assert (= bs!1520141 (and d!1919813 d!1919719)))

(assert (=> bs!1520141 (= lambda!333748 lambda!333732)))

(declare-fun bs!1520142 () Bool)

(assert (= bs!1520142 (and d!1919813 d!1919723)))

(assert (=> bs!1520142 (= lambda!333748 lambda!333735)))

(declare-fun bs!1520143 () Bool)

(assert (= bs!1520143 (and d!1919813 d!1919649)))

(assert (=> bs!1520143 (= lambda!333748 lambda!333698)))

(declare-fun bs!1520144 () Bool)

(assert (= bs!1520144 (and d!1919813 d!1919675)))

(assert (=> bs!1520144 (= lambda!333748 lambda!333703)))

(declare-fun b!6127330 () Bool)

(declare-fun e!3734945 () Regex!16070)

(declare-fun e!3734946 () Regex!16070)

(assert (=> b!6127330 (= e!3734945 e!3734946)))

(declare-fun c!1101373 () Bool)

(assert (=> b!6127330 (= c!1101373 (is-Cons!64385 (t!377974 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun b!6127331 () Bool)

(assert (=> b!6127331 (= e!3734946 EmptyExpr!16070)))

(declare-fun b!6127332 () Bool)

(declare-fun e!3734944 () Bool)

(declare-fun lt!2331545 () Regex!16070)

(assert (=> b!6127332 (= e!3734944 (isEmptyExpr!1488 lt!2331545))))

(declare-fun b!6127333 () Bool)

(declare-fun e!3734949 () Bool)

(assert (=> b!6127333 (= e!3734949 e!3734944)))

(declare-fun c!1101372 () Bool)

(assert (=> b!6127333 (= c!1101372 (isEmpty!36323 (t!377974 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun b!6127335 () Bool)

(declare-fun e!3734948 () Bool)

(assert (=> b!6127335 (= e!3734948 (= lt!2331545 (head!12662 (t!377974 (exprs!5954 (h!70834 zl!343))))))))

(declare-fun b!6127336 () Bool)

(assert (=> b!6127336 (= e!3734946 (Concat!24915 (h!70833 (t!377974 (exprs!5954 (h!70834 zl!343)))) (generalisedConcat!1667 (t!377974 (t!377974 (exprs!5954 (h!70834 zl!343)))))))))

(declare-fun b!6127337 () Bool)

(assert (=> b!6127337 (= e!3734948 (isConcat!1011 lt!2331545))))

(declare-fun b!6127338 () Bool)

(assert (=> b!6127338 (= e!3734944 e!3734948)))

(declare-fun c!1101370 () Bool)

(assert (=> b!6127338 (= c!1101370 (isEmpty!36323 (tail!11747 (t!377974 (exprs!5954 (h!70834 zl!343))))))))

(declare-fun b!6127339 () Bool)

(assert (=> b!6127339 (= e!3734945 (h!70833 (t!377974 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun b!6127334 () Bool)

(declare-fun e!3734947 () Bool)

(assert (=> b!6127334 (= e!3734947 (isEmpty!36323 (t!377974 (t!377974 (exprs!5954 (h!70834 zl!343))))))))

(assert (=> d!1919813 e!3734949))

(declare-fun res!2539752 () Bool)

(assert (=> d!1919813 (=> (not res!2539752) (not e!3734949))))

(assert (=> d!1919813 (= res!2539752 (validRegex!7806 lt!2331545))))

(assert (=> d!1919813 (= lt!2331545 e!3734945)))

(declare-fun c!1101371 () Bool)

(assert (=> d!1919813 (= c!1101371 e!3734947)))

(declare-fun res!2539751 () Bool)

(assert (=> d!1919813 (=> (not res!2539751) (not e!3734947))))

(assert (=> d!1919813 (= res!2539751 (is-Cons!64385 (t!377974 (exprs!5954 (h!70834 zl!343)))))))

(assert (=> d!1919813 (forall!15191 (t!377974 (exprs!5954 (h!70834 zl!343))) lambda!333748)))

(assert (=> d!1919813 (= (generalisedConcat!1667 (t!377974 (exprs!5954 (h!70834 zl!343)))) lt!2331545)))

(assert (= (and d!1919813 res!2539751) b!6127334))

(assert (= (and d!1919813 c!1101371) b!6127339))

(assert (= (and d!1919813 (not c!1101371)) b!6127330))

(assert (= (and b!6127330 c!1101373) b!6127336))

(assert (= (and b!6127330 (not c!1101373)) b!6127331))

(assert (= (and d!1919813 res!2539752) b!6127333))

(assert (= (and b!6127333 c!1101372) b!6127332))

(assert (= (and b!6127333 (not c!1101372)) b!6127338))

(assert (= (and b!6127338 c!1101370) b!6127335))

(assert (= (and b!6127338 (not c!1101370)) b!6127337))

(declare-fun m!6971728 () Bool)

(assert (=> b!6127332 m!6971728))

(declare-fun m!6971730 () Bool)

(assert (=> b!6127337 m!6971730))

(declare-fun m!6971732 () Bool)

(assert (=> b!6127334 m!6971732))

(declare-fun m!6971734 () Bool)

(assert (=> b!6127336 m!6971734))

(assert (=> b!6127333 m!6971124))

(declare-fun m!6971736 () Bool)

(assert (=> b!6127335 m!6971736))

(declare-fun m!6971738 () Bool)

(assert (=> b!6127338 m!6971738))

(assert (=> b!6127338 m!6971738))

(declare-fun m!6971740 () Bool)

(assert (=> b!6127338 m!6971740))

(declare-fun m!6971742 () Bool)

(assert (=> d!1919813 m!6971742))

(declare-fun m!6971744 () Bool)

(assert (=> d!1919813 m!6971744))

(assert (=> b!6126908 d!1919813))

(declare-fun bs!1520145 () Bool)

(declare-fun b!6127346 () Bool)

(assert (= bs!1520145 (and b!6127346 b!6126385)))

(declare-fun lambda!333749 () Int)

(assert (=> bs!1520145 (not (= lambda!333749 lambda!333670))))

(declare-fun bs!1520146 () Bool)

(assert (= bs!1520146 (and b!6127346 d!1919697)))

(assert (=> bs!1520146 (not (= lambda!333749 lambda!333719))))

(declare-fun bs!1520147 () Bool)

(assert (= bs!1520147 (and b!6127346 d!1919703)))

(assert (=> bs!1520147 (not (= lambda!333749 lambda!333728))))

(assert (=> bs!1520147 (not (= lambda!333749 lambda!333729))))

(declare-fun bs!1520148 () Bool)

(assert (= bs!1520148 (and b!6127346 b!6126535)))

(assert (=> bs!1520148 (not (= lambda!333749 lambda!333689))))

(declare-fun bs!1520149 () Bool)

(assert (= bs!1520149 (and b!6127346 b!6127324)))

(assert (=> bs!1520149 (not (= lambda!333749 lambda!333747))))

(assert (=> bs!1520145 (not (= lambda!333749 lambda!333671))))

(declare-fun bs!1520150 () Bool)

(assert (= bs!1520150 (and b!6127346 b!6126536)))

(assert (=> bs!1520150 (= (and (= (reg!16399 (regOne!32653 r!7292)) (reg!16399 r!7292)) (= (regOne!32653 r!7292) r!7292)) (= lambda!333749 lambda!333688))))

(declare-fun bs!1520151 () Bool)

(assert (= bs!1520151 (and b!6127346 b!6127325)))

(assert (=> bs!1520151 (= (and (= (reg!16399 (regOne!32653 r!7292)) (reg!16399 (regTwo!32653 r!7292))) (= (regOne!32653 r!7292) (regTwo!32653 r!7292))) (= lambda!333749 lambda!333746))))

(assert (=> b!6127346 true))

(assert (=> b!6127346 true))

(declare-fun bs!1520152 () Bool)

(declare-fun b!6127345 () Bool)

(assert (= bs!1520152 (and b!6127345 b!6126385)))

(declare-fun lambda!333750 () Int)

(assert (=> bs!1520152 (not (= lambda!333750 lambda!333670))))

(declare-fun bs!1520153 () Bool)

(assert (= bs!1520153 (and b!6127345 d!1919697)))

(assert (=> bs!1520153 (not (= lambda!333750 lambda!333719))))

(declare-fun bs!1520154 () Bool)

(assert (= bs!1520154 (and b!6127345 d!1919703)))

(assert (=> bs!1520154 (not (= lambda!333750 lambda!333728))))

(declare-fun bs!1520155 () Bool)

(assert (= bs!1520155 (and b!6127345 b!6126535)))

(assert (=> bs!1520155 (= (and (= (regOne!32652 (regOne!32653 r!7292)) (regOne!32652 r!7292)) (= (regTwo!32652 (regOne!32653 r!7292)) (regTwo!32652 r!7292))) (= lambda!333750 lambda!333689))))

(declare-fun bs!1520156 () Bool)

(assert (= bs!1520156 (and b!6127345 b!6127324)))

(assert (=> bs!1520156 (= (and (= (regOne!32652 (regOne!32653 r!7292)) (regOne!32652 (regTwo!32653 r!7292))) (= (regTwo!32652 (regOne!32653 r!7292)) (regTwo!32652 (regTwo!32653 r!7292)))) (= lambda!333750 lambda!333747))))

(assert (=> bs!1520152 (= (and (= (regOne!32652 (regOne!32653 r!7292)) (regOne!32652 r!7292)) (= (regTwo!32652 (regOne!32653 r!7292)) (regTwo!32652 r!7292))) (= lambda!333750 lambda!333671))))

(declare-fun bs!1520157 () Bool)

(assert (= bs!1520157 (and b!6127345 b!6126536)))

(assert (=> bs!1520157 (not (= lambda!333750 lambda!333688))))

(declare-fun bs!1520158 () Bool)

(assert (= bs!1520158 (and b!6127345 b!6127325)))

(assert (=> bs!1520158 (not (= lambda!333750 lambda!333746))))

(declare-fun bs!1520159 () Bool)

(assert (= bs!1520159 (and b!6127345 b!6127346)))

(assert (=> bs!1520159 (not (= lambda!333750 lambda!333749))))

(assert (=> bs!1520154 (= (and (= (regOne!32652 (regOne!32653 r!7292)) (regOne!32652 r!7292)) (= (regTwo!32652 (regOne!32653 r!7292)) (regTwo!32652 r!7292))) (= lambda!333750 lambda!333729))))

(assert (=> b!6127345 true))

(assert (=> b!6127345 true))

(declare-fun b!6127340 () Bool)

(declare-fun e!3734950 () Bool)

(assert (=> b!6127340 (= e!3734950 (matchRSpec!3171 (regTwo!32653 (regOne!32653 r!7292)) s!2326))))

(declare-fun bm!507926 () Bool)

(declare-fun call!507931 () Bool)

(assert (=> bm!507926 (= call!507931 (isEmpty!36326 s!2326))))

(declare-fun b!6127341 () Bool)

(declare-fun e!3734954 () Bool)

(assert (=> b!6127341 (= e!3734954 e!3734950)))

(declare-fun res!2539753 () Bool)

(assert (=> b!6127341 (= res!2539753 (matchRSpec!3171 (regOne!32653 (regOne!32653 r!7292)) s!2326))))

(assert (=> b!6127341 (=> res!2539753 e!3734950)))

(declare-fun b!6127342 () Bool)

(declare-fun c!1101377 () Bool)

(assert (=> b!6127342 (= c!1101377 (is-Union!16070 (regOne!32653 r!7292)))))

(declare-fun e!3734952 () Bool)

(assert (=> b!6127342 (= e!3734952 e!3734954)))

(declare-fun d!1919815 () Bool)

(declare-fun c!1101376 () Bool)

(assert (=> d!1919815 (= c!1101376 (is-EmptyExpr!16070 (regOne!32653 r!7292)))))

(declare-fun e!3734953 () Bool)

(assert (=> d!1919815 (= (matchRSpec!3171 (regOne!32653 r!7292) s!2326) e!3734953)))

(declare-fun b!6127343 () Bool)

(declare-fun e!3734955 () Bool)

(assert (=> b!6127343 (= e!3734954 e!3734955)))

(declare-fun c!1101374 () Bool)

(assert (=> b!6127343 (= c!1101374 (is-Star!16070 (regOne!32653 r!7292)))))

(declare-fun b!6127344 () Bool)

(assert (=> b!6127344 (= e!3734953 call!507931)))

(declare-fun call!507932 () Bool)

(assert (=> b!6127345 (= e!3734955 call!507932)))

(declare-fun bm!507927 () Bool)

(assert (=> bm!507927 (= call!507932 (Exists!3140 (ite c!1101374 lambda!333749 lambda!333750)))))

(declare-fun e!3734956 () Bool)

(assert (=> b!6127346 (= e!3734956 call!507932)))

(declare-fun b!6127347 () Bool)

(declare-fun e!3734951 () Bool)

(assert (=> b!6127347 (= e!3734953 e!3734951)))

(declare-fun res!2539755 () Bool)

(assert (=> b!6127347 (= res!2539755 (not (is-EmptyLang!16070 (regOne!32653 r!7292))))))

(assert (=> b!6127347 (=> (not res!2539755) (not e!3734951))))

(declare-fun b!6127348 () Bool)

(assert (=> b!6127348 (= e!3734952 (= s!2326 (Cons!64387 (c!1101136 (regOne!32653 r!7292)) Nil!64387)))))

(declare-fun b!6127349 () Bool)

(declare-fun c!1101375 () Bool)

(assert (=> b!6127349 (= c!1101375 (is-ElementMatch!16070 (regOne!32653 r!7292)))))

(assert (=> b!6127349 (= e!3734951 e!3734952)))

(declare-fun b!6127350 () Bool)

(declare-fun res!2539754 () Bool)

(assert (=> b!6127350 (=> res!2539754 e!3734956)))

(assert (=> b!6127350 (= res!2539754 call!507931)))

(assert (=> b!6127350 (= e!3734955 e!3734956)))

(assert (= (and d!1919815 c!1101376) b!6127344))

(assert (= (and d!1919815 (not c!1101376)) b!6127347))

(assert (= (and b!6127347 res!2539755) b!6127349))

(assert (= (and b!6127349 c!1101375) b!6127348))

(assert (= (and b!6127349 (not c!1101375)) b!6127342))

(assert (= (and b!6127342 c!1101377) b!6127341))

(assert (= (and b!6127342 (not c!1101377)) b!6127343))

(assert (= (and b!6127341 (not res!2539753)) b!6127340))

(assert (= (and b!6127343 c!1101374) b!6127350))

(assert (= (and b!6127343 (not c!1101374)) b!6127345))

(assert (= (and b!6127350 (not res!2539754)) b!6127346))

(assert (= (or b!6127346 b!6127345) bm!507927))

(assert (= (or b!6127344 b!6127350) bm!507926))

(declare-fun m!6971746 () Bool)

(assert (=> b!6127340 m!6971746))

(assert (=> bm!507926 m!6971242))

(declare-fun m!6971748 () Bool)

(assert (=> b!6127341 m!6971748))

(declare-fun m!6971750 () Bool)

(assert (=> bm!507927 m!6971750))

(assert (=> b!6126531 d!1919815))

(declare-fun b!6127351 () Bool)

(declare-fun e!3734959 () (Set Context!10908))

(declare-fun e!3734958 () (Set Context!10908))

(assert (=> b!6127351 (= e!3734959 e!3734958)))

(declare-fun c!1101378 () Bool)

(assert (=> b!6127351 (= c!1101378 (is-Cons!64385 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 lt!2331410))))))))

(declare-fun d!1919817 () Bool)

(declare-fun c!1101379 () Bool)

(declare-fun e!3734957 () Bool)

(assert (=> d!1919817 (= c!1101379 e!3734957)))

(declare-fun res!2539756 () Bool)

(assert (=> d!1919817 (=> (not res!2539756) (not e!3734957))))

(assert (=> d!1919817 (= res!2539756 (is-Cons!64385 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 lt!2331410))))))))

(assert (=> d!1919817 (= (derivationStepZipperUp!1244 (Context!10909 (t!377974 (exprs!5954 lt!2331410))) (h!70835 s!2326)) e!3734959)))

(declare-fun b!6127352 () Bool)

(declare-fun call!507933 () (Set Context!10908))

(assert (=> b!6127352 (= e!3734958 call!507933)))

(declare-fun b!6127353 () Bool)

(assert (=> b!6127353 (= e!3734958 (as set.empty (Set Context!10908)))))

(declare-fun bm!507928 () Bool)

(assert (=> bm!507928 (= call!507933 (derivationStepZipperDown!1318 (h!70833 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 lt!2331410))))) (Context!10909 (t!377974 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 lt!2331410)))))) (h!70835 s!2326)))))

(declare-fun b!6127354 () Bool)

(assert (=> b!6127354 (= e!3734957 (nullable!6063 (h!70833 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 lt!2331410)))))))))

(declare-fun b!6127355 () Bool)

(assert (=> b!6127355 (= e!3734959 (set.union call!507933 (derivationStepZipperUp!1244 (Context!10909 (t!377974 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 lt!2331410)))))) (h!70835 s!2326))))))

(assert (= (and d!1919817 res!2539756) b!6127354))

(assert (= (and d!1919817 c!1101379) b!6127355))

(assert (= (and d!1919817 (not c!1101379)) b!6127351))

(assert (= (and b!6127351 c!1101378) b!6127352))

(assert (= (and b!6127351 (not c!1101378)) b!6127353))

(assert (= (or b!6127355 b!6127352) bm!507928))

(declare-fun m!6971752 () Bool)

(assert (=> bm!507928 m!6971752))

(declare-fun m!6971754 () Bool)

(assert (=> b!6127354 m!6971754))

(declare-fun m!6971756 () Bool)

(assert (=> b!6127355 m!6971756))

(assert (=> b!6126736 d!1919817))

(declare-fun d!1919819 () Bool)

(declare-fun c!1101380 () Bool)

(assert (=> d!1919819 (= c!1101380 (isEmpty!36326 (tail!11746 (t!377976 s!2326))))))

(declare-fun e!3734960 () Bool)

(assert (=> d!1919819 (= (matchZipper!2082 (derivationStepZipper!2044 lt!2331407 (head!12661 (t!377976 s!2326))) (tail!11746 (t!377976 s!2326))) e!3734960)))

(declare-fun b!6127356 () Bool)

(assert (=> b!6127356 (= e!3734960 (nullableZipper!1852 (derivationStepZipper!2044 lt!2331407 (head!12661 (t!377976 s!2326)))))))

(declare-fun b!6127357 () Bool)

(assert (=> b!6127357 (= e!3734960 (matchZipper!2082 (derivationStepZipper!2044 (derivationStepZipper!2044 lt!2331407 (head!12661 (t!377976 s!2326))) (head!12661 (tail!11746 (t!377976 s!2326)))) (tail!11746 (tail!11746 (t!377976 s!2326)))))))

(assert (= (and d!1919819 c!1101380) b!6127356))

(assert (= (and d!1919819 (not c!1101380)) b!6127357))

(assert (=> d!1919819 m!6971514))

(assert (=> d!1919819 m!6971708))

(assert (=> b!6127356 m!6971512))

(declare-fun m!6971758 () Bool)

(assert (=> b!6127356 m!6971758))

(assert (=> b!6127357 m!6971514))

(assert (=> b!6127357 m!6971712))

(assert (=> b!6127357 m!6971512))

(assert (=> b!6127357 m!6971712))

(declare-fun m!6971760 () Bool)

(assert (=> b!6127357 m!6971760))

(assert (=> b!6127357 m!6971514))

(assert (=> b!6127357 m!6971716))

(assert (=> b!6127357 m!6971760))

(assert (=> b!6127357 m!6971716))

(declare-fun m!6971762 () Bool)

(assert (=> b!6127357 m!6971762))

(assert (=> b!6126941 d!1919819))

(declare-fun bs!1520160 () Bool)

(declare-fun d!1919821 () Bool)

(assert (= bs!1520160 (and d!1919821 b!6126391)))

(declare-fun lambda!333751 () Int)

(assert (=> bs!1520160 (= (= (head!12661 (t!377976 s!2326)) (h!70835 s!2326)) (= lambda!333751 lambda!333672))))

(declare-fun bs!1520161 () Bool)

(assert (= bs!1520161 (and d!1919821 d!1919805)))

(assert (=> bs!1520161 (= lambda!333751 lambda!333745)))

(assert (=> d!1919821 true))

(assert (=> d!1919821 (= (derivationStepZipper!2044 lt!2331407 (head!12661 (t!377976 s!2326))) (flatMap!1575 lt!2331407 lambda!333751))))

(declare-fun bs!1520162 () Bool)

(assert (= bs!1520162 d!1919821))

(declare-fun m!6971764 () Bool)

(assert (=> bs!1520162 m!6971764))

(assert (=> b!6126941 d!1919821))

(assert (=> b!6126941 d!1919807))

(assert (=> b!6126941 d!1919809))

(assert (=> d!1919683 d!1919795))

(declare-fun b!6127358 () Bool)

(declare-fun e!3734962 () Bool)

(declare-fun e!3734964 () Bool)

(assert (=> b!6127358 (= e!3734962 e!3734964)))

(declare-fun c!1101381 () Bool)

(assert (=> b!6127358 (= c!1101381 (is-EmptyLang!16070 (regOne!32652 r!7292)))))

(declare-fun b!6127359 () Bool)

(declare-fun e!3734963 () Bool)

(declare-fun e!3734966 () Bool)

(assert (=> b!6127359 (= e!3734963 e!3734966)))

(declare-fun res!2539761 () Bool)

(assert (=> b!6127359 (=> (not res!2539761) (not e!3734966))))

(declare-fun lt!2331546 () Bool)

(assert (=> b!6127359 (= res!2539761 (not lt!2331546))))

(declare-fun b!6127360 () Bool)

(declare-fun e!3734961 () Bool)

(assert (=> b!6127360 (= e!3734961 (= (head!12661 Nil!64387) (c!1101136 (regOne!32652 r!7292))))))

(declare-fun b!6127361 () Bool)

(declare-fun res!2539759 () Bool)

(assert (=> b!6127361 (=> res!2539759 e!3734963)))

(assert (=> b!6127361 (= res!2539759 (not (is-ElementMatch!16070 (regOne!32652 r!7292))))))

(assert (=> b!6127361 (= e!3734964 e!3734963)))

(declare-fun d!1919823 () Bool)

(assert (=> d!1919823 e!3734962))

(declare-fun c!1101383 () Bool)

(assert (=> d!1919823 (= c!1101383 (is-EmptyExpr!16070 (regOne!32652 r!7292)))))

(declare-fun e!3734967 () Bool)

(assert (=> d!1919823 (= lt!2331546 e!3734967)))

(declare-fun c!1101382 () Bool)

(assert (=> d!1919823 (= c!1101382 (isEmpty!36326 Nil!64387))))

(assert (=> d!1919823 (validRegex!7806 (regOne!32652 r!7292))))

(assert (=> d!1919823 (= (matchR!8253 (regOne!32652 r!7292) Nil!64387) lt!2331546)))

(declare-fun b!6127362 () Bool)

(assert (=> b!6127362 (= e!3734964 (not lt!2331546))))

(declare-fun b!6127363 () Bool)

(assert (=> b!6127363 (= e!3734967 (matchR!8253 (derivativeStep!4790 (regOne!32652 r!7292) (head!12661 Nil!64387)) (tail!11746 Nil!64387)))))

(declare-fun b!6127364 () Bool)

(declare-fun res!2539757 () Bool)

(declare-fun e!3734965 () Bool)

(assert (=> b!6127364 (=> res!2539757 e!3734965)))

(assert (=> b!6127364 (= res!2539757 (not (isEmpty!36326 (tail!11746 Nil!64387))))))

(declare-fun b!6127365 () Bool)

(declare-fun call!507934 () Bool)

(assert (=> b!6127365 (= e!3734962 (= lt!2331546 call!507934))))

(declare-fun b!6127366 () Bool)

(declare-fun res!2539760 () Bool)

(assert (=> b!6127366 (=> res!2539760 e!3734963)))

(assert (=> b!6127366 (= res!2539760 e!3734961)))

(declare-fun res!2539758 () Bool)

(assert (=> b!6127366 (=> (not res!2539758) (not e!3734961))))

(assert (=> b!6127366 (= res!2539758 lt!2331546)))

(declare-fun b!6127367 () Bool)

(declare-fun res!2539764 () Bool)

(assert (=> b!6127367 (=> (not res!2539764) (not e!3734961))))

(assert (=> b!6127367 (= res!2539764 (isEmpty!36326 (tail!11746 Nil!64387)))))

(declare-fun b!6127368 () Bool)

(assert (=> b!6127368 (= e!3734966 e!3734965)))

(declare-fun res!2539762 () Bool)

(assert (=> b!6127368 (=> res!2539762 e!3734965)))

(assert (=> b!6127368 (= res!2539762 call!507934)))

(declare-fun bm!507929 () Bool)

(assert (=> bm!507929 (= call!507934 (isEmpty!36326 Nil!64387))))

(declare-fun b!6127369 () Bool)

(declare-fun res!2539763 () Bool)

(assert (=> b!6127369 (=> (not res!2539763) (not e!3734961))))

(assert (=> b!6127369 (= res!2539763 (not call!507934))))

(declare-fun b!6127370 () Bool)

(assert (=> b!6127370 (= e!3734965 (not (= (head!12661 Nil!64387) (c!1101136 (regOne!32652 r!7292)))))))

(declare-fun b!6127371 () Bool)

(assert (=> b!6127371 (= e!3734967 (nullable!6063 (regOne!32652 r!7292)))))

(assert (= (and d!1919823 c!1101382) b!6127371))

(assert (= (and d!1919823 (not c!1101382)) b!6127363))

(assert (= (and d!1919823 c!1101383) b!6127365))

(assert (= (and d!1919823 (not c!1101383)) b!6127358))

(assert (= (and b!6127358 c!1101381) b!6127362))

(assert (= (and b!6127358 (not c!1101381)) b!6127361))

(assert (= (and b!6127361 (not res!2539759)) b!6127366))

(assert (= (and b!6127366 res!2539758) b!6127369))

(assert (= (and b!6127369 res!2539763) b!6127367))

(assert (= (and b!6127367 res!2539764) b!6127360))

(assert (= (and b!6127366 (not res!2539760)) b!6127359))

(assert (= (and b!6127359 res!2539761) b!6127368))

(assert (= (and b!6127368 (not res!2539762)) b!6127364))

(assert (= (and b!6127364 (not res!2539757)) b!6127370))

(assert (= (or b!6127365 b!6127369 b!6127368) bm!507929))

(declare-fun m!6971766 () Bool)

(assert (=> b!6127364 m!6971766))

(assert (=> b!6127364 m!6971766))

(declare-fun m!6971768 () Bool)

(assert (=> b!6127364 m!6971768))

(declare-fun m!6971770 () Bool)

(assert (=> d!1919823 m!6971770))

(assert (=> d!1919823 m!6971412))

(declare-fun m!6971772 () Bool)

(assert (=> b!6127363 m!6971772))

(assert (=> b!6127363 m!6971772))

(declare-fun m!6971774 () Bool)

(assert (=> b!6127363 m!6971774))

(assert (=> b!6127363 m!6971766))

(assert (=> b!6127363 m!6971774))

(assert (=> b!6127363 m!6971766))

(declare-fun m!6971776 () Bool)

(assert (=> b!6127363 m!6971776))

(assert (=> b!6127360 m!6971772))

(assert (=> b!6127367 m!6971766))

(assert (=> b!6127367 m!6971766))

(assert (=> b!6127367 m!6971768))

(assert (=> b!6127371 m!6971644))

(assert (=> b!6127370 m!6971772))

(assert (=> bm!507929 m!6971770))

(assert (=> d!1919683 d!1919823))

(declare-fun bm!507930 () Bool)

(declare-fun c!1101384 () Bool)

(declare-fun c!1101385 () Bool)

(declare-fun call!507936 () Bool)

(assert (=> bm!507930 (= call!507936 (validRegex!7806 (ite c!1101384 (reg!16399 (regOne!32652 r!7292)) (ite c!1101385 (regOne!32653 (regOne!32652 r!7292)) (regOne!32652 (regOne!32652 r!7292))))))))

(declare-fun bm!507931 () Bool)

(declare-fun call!507935 () Bool)

(assert (=> bm!507931 (= call!507935 call!507936)))

(declare-fun b!6127372 () Bool)

(declare-fun res!2539765 () Bool)

(declare-fun e!3734973 () Bool)

(assert (=> b!6127372 (=> res!2539765 e!3734973)))

(assert (=> b!6127372 (= res!2539765 (not (is-Concat!24915 (regOne!32652 r!7292))))))

(declare-fun e!3734971 () Bool)

(assert (=> b!6127372 (= e!3734971 e!3734973)))

(declare-fun b!6127373 () Bool)

(declare-fun e!3734968 () Bool)

(assert (=> b!6127373 (= e!3734968 call!507936)))

(declare-fun b!6127374 () Bool)

(declare-fun e!3734970 () Bool)

(assert (=> b!6127374 (= e!3734970 e!3734971)))

(assert (=> b!6127374 (= c!1101385 (is-Union!16070 (regOne!32652 r!7292)))))

(declare-fun bm!507932 () Bool)

(declare-fun call!507937 () Bool)

(assert (=> bm!507932 (= call!507937 (validRegex!7806 (ite c!1101385 (regTwo!32653 (regOne!32652 r!7292)) (regTwo!32652 (regOne!32652 r!7292)))))))

(declare-fun d!1919825 () Bool)

(declare-fun res!2539768 () Bool)

(declare-fun e!3734969 () Bool)

(assert (=> d!1919825 (=> res!2539768 e!3734969)))

(assert (=> d!1919825 (= res!2539768 (is-ElementMatch!16070 (regOne!32652 r!7292)))))

(assert (=> d!1919825 (= (validRegex!7806 (regOne!32652 r!7292)) e!3734969)))

(declare-fun b!6127375 () Bool)

(declare-fun res!2539766 () Bool)

(declare-fun e!3734974 () Bool)

(assert (=> b!6127375 (=> (not res!2539766) (not e!3734974))))

(assert (=> b!6127375 (= res!2539766 call!507935)))

(assert (=> b!6127375 (= e!3734971 e!3734974)))

(declare-fun b!6127376 () Bool)

(assert (=> b!6127376 (= e!3734969 e!3734970)))

(assert (=> b!6127376 (= c!1101384 (is-Star!16070 (regOne!32652 r!7292)))))

(declare-fun b!6127377 () Bool)

(assert (=> b!6127377 (= e!3734974 call!507937)))

(declare-fun b!6127378 () Bool)

(assert (=> b!6127378 (= e!3734970 e!3734968)))

(declare-fun res!2539769 () Bool)

(assert (=> b!6127378 (= res!2539769 (not (nullable!6063 (reg!16399 (regOne!32652 r!7292)))))))

(assert (=> b!6127378 (=> (not res!2539769) (not e!3734968))))

(declare-fun b!6127379 () Bool)

(declare-fun e!3734972 () Bool)

(assert (=> b!6127379 (= e!3734973 e!3734972)))

(declare-fun res!2539767 () Bool)

(assert (=> b!6127379 (=> (not res!2539767) (not e!3734972))))

(assert (=> b!6127379 (= res!2539767 call!507935)))

(declare-fun b!6127380 () Bool)

(assert (=> b!6127380 (= e!3734972 call!507937)))

(assert (= (and d!1919825 (not res!2539768)) b!6127376))

(assert (= (and b!6127376 c!1101384) b!6127378))

(assert (= (and b!6127376 (not c!1101384)) b!6127374))

(assert (= (and b!6127378 res!2539769) b!6127373))

(assert (= (and b!6127374 c!1101385) b!6127375))

(assert (= (and b!6127374 (not c!1101385)) b!6127372))

(assert (= (and b!6127375 res!2539766) b!6127377))

(assert (= (and b!6127372 (not res!2539765)) b!6127379))

(assert (= (and b!6127379 res!2539767) b!6127380))

(assert (= (or b!6127377 b!6127380) bm!507932))

(assert (= (or b!6127375 b!6127379) bm!507931))

(assert (= (or b!6127373 bm!507931) bm!507930))

(declare-fun m!6971778 () Bool)

(assert (=> bm!507930 m!6971778))

(declare-fun m!6971780 () Bool)

(assert (=> bm!507932 m!6971780))

(declare-fun m!6971782 () Bool)

(assert (=> b!6127378 m!6971782))

(assert (=> d!1919683 d!1919825))

(declare-fun b!6127381 () Bool)

(declare-fun e!3734980 () (Set Context!10908))

(declare-fun call!507938 () (Set Context!10908))

(declare-fun call!507941 () (Set Context!10908))

(assert (=> b!6127381 (= e!3734980 (set.union call!507938 call!507941))))

(declare-fun b!6127382 () Bool)

(declare-fun e!3734977 () Bool)

(assert (=> b!6127382 (= e!3734977 (nullable!6063 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343))))))))

(declare-fun b!6127383 () Bool)

(declare-fun e!3734975 () (Set Context!10908))

(declare-fun call!507942 () (Set Context!10908))

(assert (=> b!6127383 (= e!3734975 call!507942)))

(declare-fun bm!507933 () Bool)

(declare-fun call!507939 () (Set Context!10908))

(assert (=> bm!507933 (= call!507941 call!507939)))

(declare-fun d!1919827 () Bool)

(declare-fun c!1101386 () Bool)

(assert (=> d!1919827 (= c!1101386 (and (is-ElementMatch!16070 (h!70833 (exprs!5954 (h!70834 zl!343)))) (= (c!1101136 (h!70833 (exprs!5954 (h!70834 zl!343)))) (h!70835 s!2326))))))

(declare-fun e!3734976 () (Set Context!10908))

(assert (=> d!1919827 (= (derivationStepZipperDown!1318 (h!70833 (exprs!5954 (h!70834 zl!343))) (Context!10909 (t!377974 (exprs!5954 (h!70834 zl!343)))) (h!70835 s!2326)) e!3734976)))

(declare-fun b!6127384 () Bool)

(declare-fun e!3734979 () (Set Context!10908))

(assert (=> b!6127384 (= e!3734979 (as set.empty (Set Context!10908)))))

(declare-fun bm!507934 () Bool)

(assert (=> bm!507934 (= call!507942 call!507941)))

(declare-fun c!1101387 () Bool)

(declare-fun c!1101388 () Bool)

(declare-fun call!507943 () List!64509)

(declare-fun bm!507935 () Bool)

(declare-fun c!1101390 () Bool)

(assert (=> bm!507935 (= call!507939 (derivationStepZipperDown!1318 (ite c!1101390 (regOne!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101387 (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (ite c!1101388 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (reg!16399 (h!70833 (exprs!5954 (h!70834 zl!343))))))) (ite (or c!1101390 c!1101387) (Context!10909 (t!377974 (exprs!5954 (h!70834 zl!343)))) (Context!10909 call!507943)) (h!70835 s!2326)))))

(declare-fun b!6127385 () Bool)

(assert (=> b!6127385 (= e!3734980 e!3734975)))

(assert (=> b!6127385 (= c!1101388 (is-Concat!24915 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun b!6127386 () Bool)

(assert (=> b!6127386 (= c!1101387 e!3734977)))

(declare-fun res!2539770 () Bool)

(assert (=> b!6127386 (=> (not res!2539770) (not e!3734977))))

(assert (=> b!6127386 (= res!2539770 (is-Concat!24915 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun e!3734978 () (Set Context!10908))

(assert (=> b!6127386 (= e!3734978 e!3734980)))

(declare-fun bm!507936 () Bool)

(declare-fun call!507940 () List!64509)

(assert (=> bm!507936 (= call!507940 ($colon$colon!1947 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 (h!70834 zl!343))))) (ite (or c!1101387 c!1101388) (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (h!70833 (exprs!5954 (h!70834 zl!343))))))))

(declare-fun bm!507937 () Bool)

(assert (=> bm!507937 (= call!507943 call!507940)))

(declare-fun b!6127387 () Bool)

(assert (=> b!6127387 (= e!3734976 e!3734978)))

(assert (=> b!6127387 (= c!1101390 (is-Union!16070 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun bm!507938 () Bool)

(assert (=> bm!507938 (= call!507938 (derivationStepZipperDown!1318 (ite c!1101390 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343))))) (ite c!1101390 (Context!10909 (t!377974 (exprs!5954 (h!70834 zl!343)))) (Context!10909 call!507940)) (h!70835 s!2326)))))

(declare-fun b!6127388 () Bool)

(assert (=> b!6127388 (= e!3734979 call!507942)))

(declare-fun b!6127389 () Bool)

(declare-fun c!1101389 () Bool)

(assert (=> b!6127389 (= c!1101389 (is-Star!16070 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(assert (=> b!6127389 (= e!3734975 e!3734979)))

(declare-fun b!6127390 () Bool)

(assert (=> b!6127390 (= e!3734978 (set.union call!507939 call!507938))))

(declare-fun b!6127391 () Bool)

(assert (=> b!6127391 (= e!3734976 (set.insert (Context!10909 (t!377974 (exprs!5954 (h!70834 zl!343)))) (as set.empty (Set Context!10908))))))

(assert (= (and d!1919827 c!1101386) b!6127391))

(assert (= (and d!1919827 (not c!1101386)) b!6127387))

(assert (= (and b!6127387 c!1101390) b!6127390))

(assert (= (and b!6127387 (not c!1101390)) b!6127386))

(assert (= (and b!6127386 res!2539770) b!6127382))

(assert (= (and b!6127386 c!1101387) b!6127381))

(assert (= (and b!6127386 (not c!1101387)) b!6127385))

(assert (= (and b!6127385 c!1101388) b!6127383))

(assert (= (and b!6127385 (not c!1101388)) b!6127389))

(assert (= (and b!6127389 c!1101389) b!6127388))

(assert (= (and b!6127389 (not c!1101389)) b!6127384))

(assert (= (or b!6127383 b!6127388) bm!507937))

(assert (= (or b!6127383 b!6127388) bm!507934))

(assert (= (or b!6127381 bm!507937) bm!507936))

(assert (= (or b!6127381 bm!507934) bm!507933))

(assert (= (or b!6127390 b!6127381) bm!507938))

(assert (= (or b!6127390 bm!507933) bm!507935))

(assert (=> b!6127382 m!6971348))

(declare-fun m!6971784 () Bool)

(assert (=> bm!507938 m!6971784))

(declare-fun m!6971786 () Bool)

(assert (=> b!6127391 m!6971786))

(declare-fun m!6971788 () Bool)

(assert (=> bm!507936 m!6971788))

(declare-fun m!6971790 () Bool)

(assert (=> bm!507935 m!6971790))

(assert (=> bm!507834 d!1919827))

(declare-fun d!1919829 () Bool)

(assert (=> d!1919829 (= (isEmpty!36323 (tail!11747 (exprs!5954 (h!70834 zl!343)))) (is-Nil!64385 (tail!11747 (exprs!5954 (h!70834 zl!343)))))))

(assert (=> b!6126910 d!1919829))

(declare-fun d!1919831 () Bool)

(assert (=> d!1919831 (= (tail!11747 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343))))))

(assert (=> b!6126910 d!1919831))

(declare-fun d!1919833 () Bool)

(assert (=> d!1919833 (= (nullable!6063 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))) (nullableFct!2027 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))))))

(declare-fun bs!1520163 () Bool)

(assert (= bs!1520163 d!1919833))

(declare-fun m!6971792 () Bool)

(assert (=> bs!1520163 m!6971792))

(assert (=> b!6126665 d!1919833))

(declare-fun d!1919835 () Bool)

(declare-fun c!1101391 () Bool)

(assert (=> d!1919835 (= c!1101391 (isEmpty!36326 (tail!11746 (t!377976 s!2326))))))

(declare-fun e!3734981 () Bool)

(assert (=> d!1919835 (= (matchZipper!2082 (derivationStepZipper!2044 lt!2331412 (head!12661 (t!377976 s!2326))) (tail!11746 (t!377976 s!2326))) e!3734981)))

(declare-fun b!6127392 () Bool)

(assert (=> b!6127392 (= e!3734981 (nullableZipper!1852 (derivationStepZipper!2044 lt!2331412 (head!12661 (t!377976 s!2326)))))))

(declare-fun b!6127393 () Bool)

(assert (=> b!6127393 (= e!3734981 (matchZipper!2082 (derivationStepZipper!2044 (derivationStepZipper!2044 lt!2331412 (head!12661 (t!377976 s!2326))) (head!12661 (tail!11746 (t!377976 s!2326)))) (tail!11746 (tail!11746 (t!377976 s!2326)))))))

(assert (= (and d!1919835 c!1101391) b!6127392))

(assert (= (and d!1919835 (not c!1101391)) b!6127393))

(assert (=> d!1919835 m!6971514))

(assert (=> d!1919835 m!6971708))

(assert (=> b!6127392 m!6971526))

(declare-fun m!6971794 () Bool)

(assert (=> b!6127392 m!6971794))

(assert (=> b!6127393 m!6971514))

(assert (=> b!6127393 m!6971712))

(assert (=> b!6127393 m!6971526))

(assert (=> b!6127393 m!6971712))

(declare-fun m!6971796 () Bool)

(assert (=> b!6127393 m!6971796))

(assert (=> b!6127393 m!6971514))

(assert (=> b!6127393 m!6971716))

(assert (=> b!6127393 m!6971796))

(assert (=> b!6127393 m!6971716))

(declare-fun m!6971798 () Bool)

(assert (=> b!6127393 m!6971798))

(assert (=> b!6126945 d!1919835))

(declare-fun bs!1520164 () Bool)

(declare-fun d!1919837 () Bool)

(assert (= bs!1520164 (and d!1919837 b!6126391)))

(declare-fun lambda!333752 () Int)

(assert (=> bs!1520164 (= (= (head!12661 (t!377976 s!2326)) (h!70835 s!2326)) (= lambda!333752 lambda!333672))))

(declare-fun bs!1520165 () Bool)

(assert (= bs!1520165 (and d!1919837 d!1919805)))

(assert (=> bs!1520165 (= lambda!333752 lambda!333745)))

(declare-fun bs!1520166 () Bool)

(assert (= bs!1520166 (and d!1919837 d!1919821)))

(assert (=> bs!1520166 (= lambda!333752 lambda!333751)))

(assert (=> d!1919837 true))

(assert (=> d!1919837 (= (derivationStepZipper!2044 lt!2331412 (head!12661 (t!377976 s!2326))) (flatMap!1575 lt!2331412 lambda!333752))))

(declare-fun bs!1520167 () Bool)

(assert (= bs!1520167 d!1919837))

(declare-fun m!6971800 () Bool)

(assert (=> bs!1520167 m!6971800))

(assert (=> b!6126945 d!1919837))

(assert (=> b!6126945 d!1919807))

(assert (=> b!6126945 d!1919809))

(assert (=> d!1919643 d!1919641))

(assert (=> d!1919643 d!1919639))

(declare-fun d!1919839 () Bool)

(assert (=> d!1919839 (= (matchR!8253 r!7292 s!2326) (matchRSpec!3171 r!7292 s!2326))))

(assert (=> d!1919839 true))

(declare-fun _$88!4629 () Unit!157435)

(assert (=> d!1919839 (= (choose!45507 r!7292 s!2326) _$88!4629)))

(declare-fun bs!1520168 () Bool)

(assert (= bs!1520168 d!1919839))

(assert (=> bs!1520168 m!6971174))

(assert (=> bs!1520168 m!6971172))

(assert (=> d!1919643 d!1919839))

(assert (=> d!1919643 d!1919735))

(declare-fun d!1919841 () Bool)

(assert (=> d!1919841 (= (isEmpty!36326 (tail!11746 s!2326)) (is-Nil!64387 (tail!11746 s!2326)))))

(assert (=> b!6126578 d!1919841))

(assert (=> b!6126578 d!1919775))

(declare-fun d!1919843 () Bool)

(assert (=> d!1919843 (= (isUnion!927 lt!2331463) (is-Union!16070 lt!2331463))))

(assert (=> b!6126604 d!1919843))

(declare-fun d!1919845 () Bool)

(declare-fun res!2539775 () Bool)

(declare-fun e!3734986 () Bool)

(assert (=> d!1919845 (=> res!2539775 e!3734986)))

(assert (=> d!1919845 (= res!2539775 (is-Nil!64386 lt!2331475))))

(assert (=> d!1919845 (= (noDuplicate!1917 lt!2331475) e!3734986)))

(declare-fun b!6127398 () Bool)

(declare-fun e!3734987 () Bool)

(assert (=> b!6127398 (= e!3734986 e!3734987)))

(declare-fun res!2539776 () Bool)

(assert (=> b!6127398 (=> (not res!2539776) (not e!3734987))))

(declare-fun contains!20032 (List!64510 Context!10908) Bool)

(assert (=> b!6127398 (= res!2539776 (not (contains!20032 (t!377975 lt!2331475) (h!70834 lt!2331475))))))

(declare-fun b!6127399 () Bool)

(assert (=> b!6127399 (= e!3734987 (noDuplicate!1917 (t!377975 lt!2331475)))))

(assert (= (and d!1919845 (not res!2539775)) b!6127398))

(assert (= (and b!6127398 res!2539776) b!6127399))

(declare-fun m!6971802 () Bool)

(assert (=> b!6127398 m!6971802))

(declare-fun m!6971804 () Bool)

(assert (=> b!6127399 m!6971804))

(assert (=> d!1919653 d!1919845))

(declare-fun d!1919847 () Bool)

(declare-fun e!3734995 () Bool)

(assert (=> d!1919847 e!3734995))

(declare-fun res!2539781 () Bool)

(assert (=> d!1919847 (=> (not res!2539781) (not e!3734995))))

(declare-fun res!2539782 () List!64510)

(assert (=> d!1919847 (= res!2539781 (noDuplicate!1917 res!2539782))))

(declare-fun e!3734996 () Bool)

(assert (=> d!1919847 e!3734996))

(assert (=> d!1919847 (= (choose!45508 z!1189) res!2539782)))

(declare-fun b!6127407 () Bool)

(declare-fun e!3734994 () Bool)

(declare-fun tp!1712380 () Bool)

(assert (=> b!6127407 (= e!3734994 tp!1712380)))

(declare-fun tp!1712379 () Bool)

(declare-fun b!6127406 () Bool)

(assert (=> b!6127406 (= e!3734996 (and (inv!83423 (h!70834 res!2539782)) e!3734994 tp!1712379))))

(declare-fun b!6127408 () Bool)

(assert (=> b!6127408 (= e!3734995 (= (content!11964 res!2539782) z!1189))))

(assert (= b!6127406 b!6127407))

(assert (= (and d!1919847 (is-Cons!64386 res!2539782)) b!6127406))

(assert (= (and d!1919847 res!2539781) b!6127408))

(declare-fun m!6971806 () Bool)

(assert (=> d!1919847 m!6971806))

(declare-fun m!6971808 () Bool)

(assert (=> b!6127406 m!6971808))

(declare-fun m!6971810 () Bool)

(assert (=> b!6127408 m!6971810))

(assert (=> d!1919653 d!1919847))

(declare-fun d!1919849 () Bool)

(declare-fun res!2539783 () Bool)

(declare-fun e!3734997 () Bool)

(assert (=> d!1919849 (=> res!2539783 e!3734997)))

(assert (=> d!1919849 (= res!2539783 (is-Nil!64385 (exprs!5954 (h!70834 zl!343))))))

(assert (=> d!1919849 (= (forall!15191 (exprs!5954 (h!70834 zl!343)) lambda!333703) e!3734997)))

(declare-fun b!6127409 () Bool)

(declare-fun e!3734998 () Bool)

(assert (=> b!6127409 (= e!3734997 e!3734998)))

(declare-fun res!2539784 () Bool)

(assert (=> b!6127409 (=> (not res!2539784) (not e!3734998))))

(assert (=> b!6127409 (= res!2539784 (dynLambda!25363 lambda!333703 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun b!6127410 () Bool)

(assert (=> b!6127410 (= e!3734998 (forall!15191 (t!377974 (exprs!5954 (h!70834 zl!343))) lambda!333703))))

(assert (= (and d!1919849 (not res!2539783)) b!6127409))

(assert (= (and b!6127409 res!2539784) b!6127410))

(declare-fun b_lambda!233259 () Bool)

(assert (=> (not b_lambda!233259) (not b!6127409)))

(declare-fun m!6971812 () Bool)

(assert (=> b!6127409 m!6971812))

(declare-fun m!6971814 () Bool)

(assert (=> b!6127410 m!6971814))

(assert (=> d!1919675 d!1919849))

(declare-fun d!1919851 () Bool)

(assert (=> d!1919851 (= (isEmpty!36326 s!2326) (is-Nil!64387 s!2326))))

(assert (=> bm!507812 d!1919851))

(declare-fun d!1919853 () Bool)

(assert (=> d!1919853 (= (isEmpty!36323 (unfocusZipperList!1491 zl!343)) (is-Nil!64385 (unfocusZipperList!1491 zl!343)))))

(assert (=> b!6126606 d!1919853))

(declare-fun d!1919855 () Bool)

(declare-fun c!1101394 () Bool)

(assert (=> d!1919855 (= c!1101394 (is-Nil!64386 lt!2331475))))

(declare-fun e!3735001 () (Set Context!10908))

(assert (=> d!1919855 (= (content!11964 lt!2331475) e!3735001)))

(declare-fun b!6127415 () Bool)

(assert (=> b!6127415 (= e!3735001 (as set.empty (Set Context!10908)))))

(declare-fun b!6127416 () Bool)

(assert (=> b!6127416 (= e!3735001 (set.union (set.insert (h!70834 lt!2331475) (as set.empty (Set Context!10908))) (content!11964 (t!377975 lt!2331475))))))

(assert (= (and d!1919855 c!1101394) b!6127415))

(assert (= (and d!1919855 (not c!1101394)) b!6127416))

(declare-fun m!6971816 () Bool)

(assert (=> b!6127416 m!6971816))

(declare-fun m!6971818 () Bool)

(assert (=> b!6127416 m!6971818))

(assert (=> b!6126651 d!1919855))

(assert (=> d!1919697 d!1919825))

(assert (=> d!1919697 d!1919713))

(declare-fun bs!1520169 () Bool)

(declare-fun d!1919857 () Bool)

(assert (= bs!1520169 (and d!1919857 b!6126385)))

(declare-fun lambda!333755 () Int)

(assert (=> bs!1520169 (= lambda!333755 lambda!333670)))

(declare-fun bs!1520170 () Bool)

(assert (= bs!1520170 (and d!1919857 d!1919697)))

(assert (=> bs!1520170 (= lambda!333755 lambda!333719)))

(declare-fun bs!1520171 () Bool)

(assert (= bs!1520171 (and d!1919857 d!1919703)))

(assert (=> bs!1520171 (= lambda!333755 lambda!333728)))

(declare-fun bs!1520172 () Bool)

(assert (= bs!1520172 (and d!1919857 b!6127345)))

(assert (=> bs!1520172 (not (= lambda!333755 lambda!333750))))

(declare-fun bs!1520173 () Bool)

(assert (= bs!1520173 (and d!1919857 b!6126535)))

(assert (=> bs!1520173 (not (= lambda!333755 lambda!333689))))

(declare-fun bs!1520174 () Bool)

(assert (= bs!1520174 (and d!1919857 b!6127324)))

(assert (=> bs!1520174 (not (= lambda!333755 lambda!333747))))

(assert (=> bs!1520169 (not (= lambda!333755 lambda!333671))))

(declare-fun bs!1520175 () Bool)

(assert (= bs!1520175 (and d!1919857 b!6126536)))

(assert (=> bs!1520175 (not (= lambda!333755 lambda!333688))))

(declare-fun bs!1520176 () Bool)

(assert (= bs!1520176 (and d!1919857 b!6127325)))

(assert (=> bs!1520176 (not (= lambda!333755 lambda!333746))))

(declare-fun bs!1520177 () Bool)

(assert (= bs!1520177 (and d!1919857 b!6127346)))

(assert (=> bs!1520177 (not (= lambda!333755 lambda!333749))))

(assert (=> bs!1520171 (not (= lambda!333755 lambda!333729))))

(assert (=> d!1919857 true))

(assert (=> d!1919857 true))

(assert (=> d!1919857 true))

(assert (=> d!1919857 (= (isDefined!12664 (findConcatSeparation!2375 (regOne!32652 r!7292) (regTwo!32652 r!7292) Nil!64387 s!2326 s!2326)) (Exists!3140 lambda!333755))))

(assert (=> d!1919857 true))

(declare-fun _$89!2191 () Unit!157435)

(assert (=> d!1919857 (= (choose!45515 (regOne!32652 r!7292) (regTwo!32652 r!7292) s!2326) _$89!2191)))

(declare-fun bs!1520178 () Bool)

(assert (= bs!1520178 d!1919857))

(assert (=> bs!1520178 m!6971162))

(assert (=> bs!1520178 m!6971162))

(assert (=> bs!1520178 m!6971164))

(declare-fun m!6971820 () Bool)

(assert (=> bs!1520178 m!6971820))

(assert (=> d!1919697 d!1919857))

(assert (=> d!1919697 d!1919683))

(declare-fun d!1919859 () Bool)

(assert (=> d!1919859 (= (Exists!3140 lambda!333719) (choose!45514 lambda!333719))))

(declare-fun bs!1520179 () Bool)

(assert (= bs!1520179 d!1919859))

(declare-fun m!6971822 () Bool)

(assert (=> bs!1520179 m!6971822))

(assert (=> d!1919697 d!1919859))

(declare-fun d!1919861 () Bool)

(assert (=> d!1919861 (= (isEmpty!36326 (t!377976 s!2326)) (is-Nil!64387 (t!377976 s!2326)))))

(assert (=> d!1919729 d!1919861))

(declare-fun b!6127421 () Bool)

(declare-fun e!3735009 () (Set Context!10908))

(declare-fun call!507944 () (Set Context!10908))

(declare-fun call!507947 () (Set Context!10908))

(assert (=> b!6127421 (= e!3735009 (set.union call!507944 call!507947))))

(declare-fun b!6127422 () Bool)

(declare-fun e!3735006 () Bool)

(assert (=> b!6127422 (= e!3735006 (nullable!6063 (regOne!32652 (ite c!1101218 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343))))))))))

(declare-fun b!6127423 () Bool)

(declare-fun e!3735004 () (Set Context!10908))

(declare-fun call!507948 () (Set Context!10908))

(assert (=> b!6127423 (= e!3735004 call!507948)))

(declare-fun bm!507939 () Bool)

(declare-fun call!507945 () (Set Context!10908))

(assert (=> bm!507939 (= call!507947 call!507945)))

(declare-fun d!1919863 () Bool)

(declare-fun c!1101395 () Bool)

(assert (=> d!1919863 (= c!1101395 (and (is-ElementMatch!16070 (ite c!1101218 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))))) (= (c!1101136 (ite c!1101218 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))))) (h!70835 s!2326))))))

(declare-fun e!3735005 () (Set Context!10908))

(assert (=> d!1919863 (= (derivationStepZipperDown!1318 (ite c!1101218 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343))))) (ite c!1101218 lt!2331410 (Context!10909 call!507835)) (h!70835 s!2326)) e!3735005)))

(declare-fun b!6127424 () Bool)

(declare-fun e!3735008 () (Set Context!10908))

(assert (=> b!6127424 (= e!3735008 (as set.empty (Set Context!10908)))))

(declare-fun bm!507940 () Bool)

(assert (=> bm!507940 (= call!507948 call!507947)))

(declare-fun call!507949 () List!64509)

(declare-fun c!1101399 () Bool)

(declare-fun c!1101396 () Bool)

(declare-fun bm!507941 () Bool)

(declare-fun c!1101397 () Bool)

(assert (=> bm!507941 (= call!507945 (derivationStepZipperDown!1318 (ite c!1101399 (regOne!32653 (ite c!1101218 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))))) (ite c!1101396 (regTwo!32652 (ite c!1101218 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))))) (ite c!1101397 (regOne!32652 (ite c!1101218 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))))) (reg!16399 (ite c!1101218 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343))))))))) (ite (or c!1101399 c!1101396) (ite c!1101218 lt!2331410 (Context!10909 call!507835)) (Context!10909 call!507949)) (h!70835 s!2326)))))

(declare-fun b!6127425 () Bool)

(assert (=> b!6127425 (= e!3735009 e!3735004)))

(assert (=> b!6127425 (= c!1101397 (is-Concat!24915 (ite c!1101218 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))))))))

(declare-fun b!6127426 () Bool)

(assert (=> b!6127426 (= c!1101396 e!3735006)))

(declare-fun res!2539789 () Bool)

(assert (=> b!6127426 (=> (not res!2539789) (not e!3735006))))

(assert (=> b!6127426 (= res!2539789 (is-Concat!24915 (ite c!1101218 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))))))))

(declare-fun e!3735007 () (Set Context!10908))

(assert (=> b!6127426 (= e!3735007 e!3735009)))

(declare-fun bm!507942 () Bool)

(declare-fun call!507946 () List!64509)

(assert (=> bm!507942 (= call!507946 ($colon$colon!1947 (exprs!5954 (ite c!1101218 lt!2331410 (Context!10909 call!507835))) (ite (or c!1101396 c!1101397) (regTwo!32652 (ite c!1101218 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))))) (ite c!1101218 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343))))))))))

(declare-fun bm!507943 () Bool)

(assert (=> bm!507943 (= call!507949 call!507946)))

(declare-fun b!6127427 () Bool)

(assert (=> b!6127427 (= e!3735005 e!3735007)))

(assert (=> b!6127427 (= c!1101399 (is-Union!16070 (ite c!1101218 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))))))))

(declare-fun bm!507944 () Bool)

(assert (=> bm!507944 (= call!507944 (derivationStepZipperDown!1318 (ite c!1101399 (regTwo!32653 (ite c!1101218 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))))) (regOne!32652 (ite c!1101218 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343))))))) (ite c!1101399 (ite c!1101218 lt!2331410 (Context!10909 call!507835)) (Context!10909 call!507946)) (h!70835 s!2326)))))

(declare-fun b!6127428 () Bool)

(assert (=> b!6127428 (= e!3735008 call!507948)))

(declare-fun b!6127429 () Bool)

(declare-fun c!1101398 () Bool)

(assert (=> b!6127429 (= c!1101398 (is-Star!16070 (ite c!1101218 (regTwo!32653 (h!70833 (exprs!5954 (h!70834 zl!343)))) (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))))))))

(assert (=> b!6127429 (= e!3735004 e!3735008)))

(declare-fun b!6127430 () Bool)

(assert (=> b!6127430 (= e!3735007 (set.union call!507945 call!507944))))

(declare-fun b!6127431 () Bool)

(assert (=> b!6127431 (= e!3735005 (set.insert (ite c!1101218 lt!2331410 (Context!10909 call!507835)) (as set.empty (Set Context!10908))))))

(assert (= (and d!1919863 c!1101395) b!6127431))

(assert (= (and d!1919863 (not c!1101395)) b!6127427))

(assert (= (and b!6127427 c!1101399) b!6127430))

(assert (= (and b!6127427 (not c!1101399)) b!6127426))

(assert (= (and b!6127426 res!2539789) b!6127422))

(assert (= (and b!6127426 c!1101396) b!6127421))

(assert (= (and b!6127426 (not c!1101396)) b!6127425))

(assert (= (and b!6127425 c!1101397) b!6127423))

(assert (= (and b!6127425 (not c!1101397)) b!6127429))

(assert (= (and b!6127429 c!1101398) b!6127428))

(assert (= (and b!6127429 (not c!1101398)) b!6127424))

(assert (= (or b!6127423 b!6127428) bm!507943))

(assert (= (or b!6127423 b!6127428) bm!507940))

(assert (= (or b!6127421 bm!507943) bm!507942))

(assert (= (or b!6127421 bm!507940) bm!507939))

(assert (= (or b!6127430 b!6127421) bm!507944))

(assert (= (or b!6127430 bm!507939) bm!507941))

(declare-fun m!6971824 () Bool)

(assert (=> b!6127422 m!6971824))

(declare-fun m!6971826 () Bool)

(assert (=> bm!507944 m!6971826))

(declare-fun m!6971828 () Bool)

(assert (=> b!6127431 m!6971828))

(declare-fun m!6971830 () Bool)

(assert (=> bm!507942 m!6971830))

(declare-fun m!6971832 () Bool)

(assert (=> bm!507941 m!6971832))

(assert (=> bm!507833 d!1919863))

(declare-fun d!1919865 () Bool)

(assert (=> d!1919865 (= (isEmptyExpr!1488 lt!2331523) (is-EmptyExpr!16070 lt!2331523))))

(assert (=> b!6126904 d!1919865))

(assert (=> b!6126581 d!1919773))

(declare-fun d!1919867 () Bool)

(assert (=> d!1919867 (= (isEmpty!36323 (t!377974 (unfocusZipperList!1491 zl!343))) (is-Nil!64385 (t!377974 (unfocusZipperList!1491 zl!343))))))

(assert (=> b!6126608 d!1919867))

(assert (=> d!1919673 d!1919661))

(declare-fun d!1919869 () Bool)

(assert (=> d!1919869 (= (flatMap!1575 z!1189 lambda!333672) (dynLambda!25361 lambda!333672 (h!70834 zl!343)))))

(assert (=> d!1919869 true))

(declare-fun _$13!2984 () Unit!157435)

(assert (=> d!1919869 (= (choose!45510 z!1189 (h!70834 zl!343) lambda!333672) _$13!2984)))

(declare-fun b_lambda!233261 () Bool)

(assert (=> (not b_lambda!233261) (not d!1919869)))

(declare-fun bs!1520180 () Bool)

(assert (= bs!1520180 d!1919869))

(assert (=> bs!1520180 m!6971140))

(assert (=> bs!1520180 m!6971368))

(assert (=> d!1919673 d!1919869))

(declare-fun bm!507945 () Bool)

(declare-fun c!1101400 () Bool)

(declare-fun call!507951 () Bool)

(declare-fun c!1101401 () Bool)

(assert (=> bm!507945 (= call!507951 (validRegex!7806 (ite c!1101400 (reg!16399 (ite c!1101293 (regTwo!32653 r!7292) (regTwo!32652 r!7292))) (ite c!1101401 (regOne!32653 (ite c!1101293 (regTwo!32653 r!7292) (regTwo!32652 r!7292))) (regOne!32652 (ite c!1101293 (regTwo!32653 r!7292) (regTwo!32652 r!7292)))))))))

(declare-fun bm!507946 () Bool)

(declare-fun call!507950 () Bool)

(assert (=> bm!507946 (= call!507950 call!507951)))

(declare-fun b!6127432 () Bool)

(declare-fun res!2539790 () Bool)

(declare-fun e!3735015 () Bool)

(assert (=> b!6127432 (=> res!2539790 e!3735015)))

(assert (=> b!6127432 (= res!2539790 (not (is-Concat!24915 (ite c!1101293 (regTwo!32653 r!7292) (regTwo!32652 r!7292)))))))

(declare-fun e!3735013 () Bool)

(assert (=> b!6127432 (= e!3735013 e!3735015)))

(declare-fun b!6127433 () Bool)

(declare-fun e!3735010 () Bool)

(assert (=> b!6127433 (= e!3735010 call!507951)))

(declare-fun b!6127434 () Bool)

(declare-fun e!3735012 () Bool)

(assert (=> b!6127434 (= e!3735012 e!3735013)))

(assert (=> b!6127434 (= c!1101401 (is-Union!16070 (ite c!1101293 (regTwo!32653 r!7292) (regTwo!32652 r!7292))))))

(declare-fun call!507952 () Bool)

(declare-fun bm!507947 () Bool)

(assert (=> bm!507947 (= call!507952 (validRegex!7806 (ite c!1101401 (regTwo!32653 (ite c!1101293 (regTwo!32653 r!7292) (regTwo!32652 r!7292))) (regTwo!32652 (ite c!1101293 (regTwo!32653 r!7292) (regTwo!32652 r!7292))))))))

(declare-fun d!1919871 () Bool)

(declare-fun res!2539793 () Bool)

(declare-fun e!3735011 () Bool)

(assert (=> d!1919871 (=> res!2539793 e!3735011)))

(assert (=> d!1919871 (= res!2539793 (is-ElementMatch!16070 (ite c!1101293 (regTwo!32653 r!7292) (regTwo!32652 r!7292))))))

(assert (=> d!1919871 (= (validRegex!7806 (ite c!1101293 (regTwo!32653 r!7292) (regTwo!32652 r!7292))) e!3735011)))

(declare-fun b!6127435 () Bool)

(declare-fun res!2539791 () Bool)

(declare-fun e!3735016 () Bool)

(assert (=> b!6127435 (=> (not res!2539791) (not e!3735016))))

(assert (=> b!6127435 (= res!2539791 call!507950)))

(assert (=> b!6127435 (= e!3735013 e!3735016)))

(declare-fun b!6127436 () Bool)

(assert (=> b!6127436 (= e!3735011 e!3735012)))

(assert (=> b!6127436 (= c!1101400 (is-Star!16070 (ite c!1101293 (regTwo!32653 r!7292) (regTwo!32652 r!7292))))))

(declare-fun b!6127437 () Bool)

(assert (=> b!6127437 (= e!3735016 call!507952)))

(declare-fun b!6127438 () Bool)

(assert (=> b!6127438 (= e!3735012 e!3735010)))

(declare-fun res!2539794 () Bool)

(assert (=> b!6127438 (= res!2539794 (not (nullable!6063 (reg!16399 (ite c!1101293 (regTwo!32653 r!7292) (regTwo!32652 r!7292))))))))

(assert (=> b!6127438 (=> (not res!2539794) (not e!3735010))))

(declare-fun b!6127439 () Bool)

(declare-fun e!3735014 () Bool)

(assert (=> b!6127439 (= e!3735015 e!3735014)))

(declare-fun res!2539792 () Bool)

(assert (=> b!6127439 (=> (not res!2539792) (not e!3735014))))

(assert (=> b!6127439 (= res!2539792 call!507950)))

(declare-fun b!6127440 () Bool)

(assert (=> b!6127440 (= e!3735014 call!507952)))

(assert (= (and d!1919871 (not res!2539793)) b!6127436))

(assert (= (and b!6127436 c!1101400) b!6127438))

(assert (= (and b!6127436 (not c!1101400)) b!6127434))

(assert (= (and b!6127438 res!2539794) b!6127433))

(assert (= (and b!6127434 c!1101401) b!6127435))

(assert (= (and b!6127434 (not c!1101401)) b!6127432))

(assert (= (and b!6127435 res!2539791) b!6127437))

(assert (= (and b!6127432 (not res!2539790)) b!6127439))

(assert (= (and b!6127439 res!2539792) b!6127440))

(assert (= (or b!6127437 b!6127440) bm!507947))

(assert (= (or b!6127435 b!6127439) bm!507946))

(assert (= (or b!6127433 bm!507946) bm!507945))

(declare-fun m!6971834 () Bool)

(assert (=> bm!507945 m!6971834))

(declare-fun m!6971836 () Bool)

(assert (=> bm!507947 m!6971836))

(declare-fun m!6971838 () Bool)

(assert (=> b!6127438 m!6971838))

(assert (=> bm!507859 d!1919871))

(assert (=> d!1919731 d!1919861))

(declare-fun d!1919873 () Bool)

(assert (=> d!1919873 (= (Exists!3140 lambda!333728) (choose!45514 lambda!333728))))

(declare-fun bs!1520181 () Bool)

(assert (= bs!1520181 d!1919873))

(declare-fun m!6971840 () Bool)

(assert (=> bs!1520181 m!6971840))

(assert (=> d!1919703 d!1919873))

(declare-fun d!1919875 () Bool)

(assert (=> d!1919875 (= (Exists!3140 lambda!333729) (choose!45514 lambda!333729))))

(declare-fun bs!1520182 () Bool)

(assert (= bs!1520182 d!1919875))

(declare-fun m!6971842 () Bool)

(assert (=> bs!1520182 m!6971842))

(assert (=> d!1919703 d!1919875))

(declare-fun bs!1520183 () Bool)

(declare-fun d!1919877 () Bool)

(assert (= bs!1520183 (and d!1919877 b!6126385)))

(declare-fun lambda!333760 () Int)

(assert (=> bs!1520183 (= lambda!333760 lambda!333670)))

(declare-fun bs!1520184 () Bool)

(assert (= bs!1520184 (and d!1919877 d!1919697)))

(assert (=> bs!1520184 (= lambda!333760 lambda!333719)))

(declare-fun bs!1520185 () Bool)

(assert (= bs!1520185 (and d!1919877 d!1919703)))

(assert (=> bs!1520185 (= lambda!333760 lambda!333728)))

(declare-fun bs!1520186 () Bool)

(assert (= bs!1520186 (and d!1919877 b!6127345)))

(assert (=> bs!1520186 (not (= lambda!333760 lambda!333750))))

(declare-fun bs!1520187 () Bool)

(assert (= bs!1520187 (and d!1919877 b!6126535)))

(assert (=> bs!1520187 (not (= lambda!333760 lambda!333689))))

(declare-fun bs!1520188 () Bool)

(assert (= bs!1520188 (and d!1919877 b!6127324)))

(assert (=> bs!1520188 (not (= lambda!333760 lambda!333747))))

(assert (=> bs!1520183 (not (= lambda!333760 lambda!333671))))

(declare-fun bs!1520189 () Bool)

(assert (= bs!1520189 (and d!1919877 b!6126536)))

(assert (=> bs!1520189 (not (= lambda!333760 lambda!333688))))

(declare-fun bs!1520190 () Bool)

(assert (= bs!1520190 (and d!1919877 d!1919857)))

(assert (=> bs!1520190 (= lambda!333760 lambda!333755)))

(declare-fun bs!1520191 () Bool)

(assert (= bs!1520191 (and d!1919877 b!6127325)))

(assert (=> bs!1520191 (not (= lambda!333760 lambda!333746))))

(declare-fun bs!1520192 () Bool)

(assert (= bs!1520192 (and d!1919877 b!6127346)))

(assert (=> bs!1520192 (not (= lambda!333760 lambda!333749))))

(assert (=> bs!1520185 (not (= lambda!333760 lambda!333729))))

(assert (=> d!1919877 true))

(assert (=> d!1919877 true))

(assert (=> d!1919877 true))

(declare-fun lambda!333761 () Int)

(assert (=> bs!1520183 (not (= lambda!333761 lambda!333670))))

(assert (=> bs!1520184 (not (= lambda!333761 lambda!333719))))

(assert (=> bs!1520185 (not (= lambda!333761 lambda!333728))))

(assert (=> bs!1520186 (= (and (= (regOne!32652 r!7292) (regOne!32652 (regOne!32653 r!7292))) (= (regTwo!32652 r!7292) (regTwo!32652 (regOne!32653 r!7292)))) (= lambda!333761 lambda!333750))))

(assert (=> bs!1520187 (= lambda!333761 lambda!333689)))

(assert (=> bs!1520188 (= (and (= (regOne!32652 r!7292) (regOne!32652 (regTwo!32653 r!7292))) (= (regTwo!32652 r!7292) (regTwo!32652 (regTwo!32653 r!7292)))) (= lambda!333761 lambda!333747))))

(assert (=> bs!1520183 (= lambda!333761 lambda!333671)))

(assert (=> bs!1520189 (not (= lambda!333761 lambda!333688))))

(assert (=> bs!1520190 (not (= lambda!333761 lambda!333755))))

(assert (=> bs!1520192 (not (= lambda!333761 lambda!333749))))

(assert (=> bs!1520185 (= lambda!333761 lambda!333729)))

(assert (=> bs!1520191 (not (= lambda!333761 lambda!333746))))

(declare-fun bs!1520193 () Bool)

(assert (= bs!1520193 d!1919877))

(assert (=> bs!1520193 (not (= lambda!333761 lambda!333760))))

(assert (=> d!1919877 true))

(assert (=> d!1919877 true))

(assert (=> d!1919877 true))

(assert (=> d!1919877 (= (Exists!3140 lambda!333760) (Exists!3140 lambda!333761))))

(assert (=> d!1919877 true))

(declare-fun _$90!1815 () Unit!157435)

(assert (=> d!1919877 (= (choose!45516 (regOne!32652 r!7292) (regTwo!32652 r!7292) s!2326) _$90!1815)))

(declare-fun m!6971844 () Bool)

(assert (=> bs!1520193 m!6971844))

(declare-fun m!6971846 () Bool)

(assert (=> bs!1520193 m!6971846))

(assert (=> d!1919703 d!1919877))

(assert (=> d!1919703 d!1919825))

(assert (=> b!6126575 d!1919841))

(assert (=> b!6126575 d!1919775))

(declare-fun d!1919879 () Bool)

(assert (=> d!1919879 true))

(assert (=> d!1919879 true))

(declare-fun res!2539803 () Bool)

(assert (=> d!1919879 (= (choose!45514 lambda!333671) res!2539803)))

(assert (=> d!1919695 d!1919879))

(declare-fun b!6127449 () Bool)

(declare-fun e!3735026 () (Set Context!10908))

(declare-fun call!507953 () (Set Context!10908))

(declare-fun call!507956 () (Set Context!10908))

(assert (=> b!6127449 (= e!3735026 (set.union call!507953 call!507956))))

(declare-fun b!6127450 () Bool)

(declare-fun e!3735023 () Bool)

(assert (=> b!6127450 (= e!3735023 (nullable!6063 (regOne!32652 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343))))))))))))

(declare-fun b!6127451 () Bool)

(declare-fun e!3735021 () (Set Context!10908))

(declare-fun call!507957 () (Set Context!10908))

(assert (=> b!6127451 (= e!3735021 call!507957)))

(declare-fun bm!507948 () Bool)

(declare-fun call!507954 () (Set Context!10908))

(assert (=> bm!507948 (= call!507956 call!507954)))

(declare-fun d!1919881 () Bool)

(declare-fun c!1101402 () Bool)

(assert (=> d!1919881 (= c!1101402 (and (is-ElementMatch!16070 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))) (= (c!1101136 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))) (h!70835 s!2326))))))

(declare-fun e!3735022 () (Set Context!10908))

(assert (=> d!1919881 (= (derivationStepZipperDown!1318 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343))))))) (Context!10909 (t!377974 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))) (h!70835 s!2326)) e!3735022)))

(declare-fun b!6127452 () Bool)

(declare-fun e!3735025 () (Set Context!10908))

(assert (=> b!6127452 (= e!3735025 (as set.empty (Set Context!10908)))))

(declare-fun bm!507949 () Bool)

(assert (=> bm!507949 (= call!507957 call!507956)))

(declare-fun c!1101406 () Bool)

(declare-fun call!507958 () List!64509)

(declare-fun c!1101404 () Bool)

(declare-fun c!1101403 () Bool)

(declare-fun bm!507950 () Bool)

(assert (=> bm!507950 (= call!507954 (derivationStepZipperDown!1318 (ite c!1101406 (regOne!32653 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))) (ite c!1101403 (regTwo!32652 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))) (ite c!1101404 (regOne!32652 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))) (reg!16399 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343))))))))))) (ite (or c!1101406 c!1101403) (Context!10909 (t!377974 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))) (Context!10909 call!507958)) (h!70835 s!2326)))))

(declare-fun b!6127453 () Bool)

(assert (=> b!6127453 (= e!3735026 e!3735021)))

(assert (=> b!6127453 (= c!1101404 (is-Concat!24915 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))))))

(declare-fun b!6127454 () Bool)

(assert (=> b!6127454 (= c!1101403 e!3735023)))

(declare-fun res!2539804 () Bool)

(assert (=> b!6127454 (=> (not res!2539804) (not e!3735023))))

(assert (=> b!6127454 (= res!2539804 (is-Concat!24915 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))))))

(declare-fun e!3735024 () (Set Context!10908))

(assert (=> b!6127454 (= e!3735024 e!3735026)))

(declare-fun bm!507951 () Bool)

(declare-fun call!507955 () List!64509)

(assert (=> bm!507951 (= call!507955 ($colon$colon!1947 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343))))))))) (ite (or c!1101403 c!1101404) (regTwo!32652 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))) (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343))))))))))))

(declare-fun bm!507952 () Bool)

(assert (=> bm!507952 (= call!507958 call!507955)))

(declare-fun b!6127455 () Bool)

(assert (=> b!6127455 (= e!3735022 e!3735024)))

(assert (=> b!6127455 (= c!1101406 (is-Union!16070 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))))))

(declare-fun bm!507953 () Bool)

(assert (=> bm!507953 (= call!507953 (derivationStepZipperDown!1318 (ite c!1101406 (regTwo!32653 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))) (regOne!32652 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343))))))))) (ite c!1101406 (Context!10909 (t!377974 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))) (Context!10909 call!507955)) (h!70835 s!2326)))))

(declare-fun b!6127456 () Bool)

(assert (=> b!6127456 (= e!3735025 call!507957)))

(declare-fun b!6127457 () Bool)

(declare-fun c!1101405 () Bool)

(assert (=> b!6127457 (= c!1101405 (is-Star!16070 (h!70833 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))))))

(assert (=> b!6127457 (= e!3735021 e!3735025)))

(declare-fun b!6127458 () Bool)

(assert (=> b!6127458 (= e!3735024 (set.union call!507954 call!507953))))

(declare-fun b!6127459 () Bool)

(assert (=> b!6127459 (= e!3735022 (set.insert (Context!10909 (t!377974 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))) (as set.empty (Set Context!10908))))))

(assert (= (and d!1919881 c!1101402) b!6127459))

(assert (= (and d!1919881 (not c!1101402)) b!6127455))

(assert (= (and b!6127455 c!1101406) b!6127458))

(assert (= (and b!6127455 (not c!1101406)) b!6127454))

(assert (= (and b!6127454 res!2539804) b!6127450))

(assert (= (and b!6127454 c!1101403) b!6127449))

(assert (= (and b!6127454 (not c!1101403)) b!6127453))

(assert (= (and b!6127453 c!1101404) b!6127451))

(assert (= (and b!6127453 (not c!1101404)) b!6127457))

(assert (= (and b!6127457 c!1101405) b!6127456))

(assert (= (and b!6127457 (not c!1101405)) b!6127452))

(assert (= (or b!6127451 b!6127456) bm!507952))

(assert (= (or b!6127451 b!6127456) bm!507949))

(assert (= (or b!6127449 bm!507952) bm!507951))

(assert (= (or b!6127449 bm!507949) bm!507948))

(assert (= (or b!6127458 b!6127449) bm!507953))

(assert (= (or b!6127458 bm!507948) bm!507950))

(declare-fun m!6971848 () Bool)

(assert (=> b!6127450 m!6971848))

(declare-fun m!6971850 () Bool)

(assert (=> bm!507953 m!6971850))

(declare-fun m!6971852 () Bool)

(assert (=> b!6127459 m!6971852))

(declare-fun m!6971854 () Bool)

(assert (=> bm!507951 m!6971854))

(declare-fun m!6971856 () Bool)

(assert (=> bm!507950 m!6971856))

(assert (=> bm!507815 d!1919881))

(assert (=> b!6126924 d!1919731))

(declare-fun d!1919883 () Bool)

(assert (=> d!1919883 (= (nullable!6063 (reg!16399 r!7292)) (nullableFct!2027 (reg!16399 r!7292)))))

(declare-fun bs!1520194 () Bool)

(assert (= bs!1520194 d!1919883))

(declare-fun m!6971858 () Bool)

(assert (=> bs!1520194 m!6971858))

(assert (=> b!6126982 d!1919883))

(declare-fun d!1919885 () Bool)

(declare-fun lambda!333764 () Int)

(declare-fun exists!2418 ((Set Context!10908) Int) Bool)

(assert (=> d!1919885 (= (nullableZipper!1852 lt!2331412) (exists!2418 lt!2331412 lambda!333764))))

(declare-fun bs!1520195 () Bool)

(assert (= bs!1520195 d!1919885))

(declare-fun m!6971860 () Bool)

(assert (=> bs!1520195 m!6971860))

(assert (=> b!6126944 d!1919885))

(declare-fun b!6127469 () Bool)

(declare-fun e!3735031 () List!64511)

(assert (=> b!6127469 (= e!3735031 (Cons!64387 (h!70835 (_1!36352 (get!22208 lt!2331503))) (++!14157 (t!377976 (_1!36352 (get!22208 lt!2331503))) (_2!36352 (get!22208 lt!2331503)))))))

(declare-fun b!6127470 () Bool)

(declare-fun res!2539809 () Bool)

(declare-fun e!3735032 () Bool)

(assert (=> b!6127470 (=> (not res!2539809) (not e!3735032))))

(declare-fun lt!2331549 () List!64511)

(declare-fun size!40213 (List!64511) Int)

(assert (=> b!6127470 (= res!2539809 (= (size!40213 lt!2331549) (+ (size!40213 (_1!36352 (get!22208 lt!2331503))) (size!40213 (_2!36352 (get!22208 lt!2331503))))))))

(declare-fun d!1919887 () Bool)

(assert (=> d!1919887 e!3735032))

(declare-fun res!2539810 () Bool)

(assert (=> d!1919887 (=> (not res!2539810) (not e!3735032))))

(declare-fun content!11966 (List!64511) (Set C!32410))

(assert (=> d!1919887 (= res!2539810 (= (content!11966 lt!2331549) (set.union (content!11966 (_1!36352 (get!22208 lt!2331503))) (content!11966 (_2!36352 (get!22208 lt!2331503))))))))

(assert (=> d!1919887 (= lt!2331549 e!3735031)))

(declare-fun c!1101411 () Bool)

(assert (=> d!1919887 (= c!1101411 (is-Nil!64387 (_1!36352 (get!22208 lt!2331503))))))

(assert (=> d!1919887 (= (++!14157 (_1!36352 (get!22208 lt!2331503)) (_2!36352 (get!22208 lt!2331503))) lt!2331549)))

(declare-fun b!6127468 () Bool)

(assert (=> b!6127468 (= e!3735031 (_2!36352 (get!22208 lt!2331503)))))

(declare-fun b!6127471 () Bool)

(assert (=> b!6127471 (= e!3735032 (or (not (= (_2!36352 (get!22208 lt!2331503)) Nil!64387)) (= lt!2331549 (_1!36352 (get!22208 lt!2331503)))))))

(assert (= (and d!1919887 c!1101411) b!6127468))

(assert (= (and d!1919887 (not c!1101411)) b!6127469))

(assert (= (and d!1919887 res!2539810) b!6127470))

(assert (= (and b!6127470 res!2539809) b!6127471))

(declare-fun m!6971862 () Bool)

(assert (=> b!6127469 m!6971862))

(declare-fun m!6971864 () Bool)

(assert (=> b!6127470 m!6971864))

(declare-fun m!6971866 () Bool)

(assert (=> b!6127470 m!6971866))

(declare-fun m!6971868 () Bool)

(assert (=> b!6127470 m!6971868))

(declare-fun m!6971870 () Bool)

(assert (=> d!1919887 m!6971870))

(declare-fun m!6971872 () Bool)

(assert (=> d!1919887 m!6971872))

(declare-fun m!6971874 () Bool)

(assert (=> d!1919887 m!6971874))

(assert (=> b!6126768 d!1919887))

(assert (=> b!6126768 d!1919781))

(declare-fun b!6127472 () Bool)

(declare-fun e!3735035 () (Set Context!10908))

(declare-fun e!3735034 () (Set Context!10908))

(assert (=> b!6127472 (= e!3735035 e!3735034)))

(declare-fun c!1101412 () Bool)

(assert (=> b!6127472 (= c!1101412 (is-Cons!64385 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 (h!70834 zl!343)))))))))

(declare-fun d!1919889 () Bool)

(declare-fun c!1101413 () Bool)

(declare-fun e!3735033 () Bool)

(assert (=> d!1919889 (= c!1101413 e!3735033)))

(declare-fun res!2539811 () Bool)

(assert (=> d!1919889 (=> (not res!2539811) (not e!3735033))))

(assert (=> d!1919889 (= res!2539811 (is-Cons!64385 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 (h!70834 zl!343)))))))))

(assert (=> d!1919889 (= (derivationStepZipperUp!1244 (Context!10909 (t!377974 (exprs!5954 (h!70834 zl!343)))) (h!70835 s!2326)) e!3735035)))

(declare-fun b!6127473 () Bool)

(declare-fun call!507959 () (Set Context!10908))

(assert (=> b!6127473 (= e!3735034 call!507959)))

(declare-fun b!6127474 () Bool)

(assert (=> b!6127474 (= e!3735034 (as set.empty (Set Context!10908)))))

(declare-fun bm!507954 () Bool)

(assert (=> bm!507954 (= call!507959 (derivationStepZipperDown!1318 (h!70833 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 (h!70834 zl!343)))))) (Context!10909 (t!377974 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 (h!70834 zl!343))))))) (h!70835 s!2326)))))

(declare-fun b!6127475 () Bool)

(assert (=> b!6127475 (= e!3735033 (nullable!6063 (h!70833 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 (h!70834 zl!343))))))))))

(declare-fun b!6127476 () Bool)

(assert (=> b!6127476 (= e!3735035 (set.union call!507959 (derivationStepZipperUp!1244 (Context!10909 (t!377974 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 (h!70834 zl!343))))))) (h!70835 s!2326))))))

(assert (= (and d!1919889 res!2539811) b!6127475))

(assert (= (and d!1919889 c!1101413) b!6127476))

(assert (= (and d!1919889 (not c!1101413)) b!6127472))

(assert (= (and b!6127472 c!1101412) b!6127473))

(assert (= (and b!6127472 (not c!1101412)) b!6127474))

(assert (= (or b!6127476 b!6127473) bm!507954))

(declare-fun m!6971876 () Bool)

(assert (=> bm!507954 m!6971876))

(declare-fun m!6971878 () Bool)

(assert (=> b!6127475 m!6971878))

(declare-fun m!6971880 () Bool)

(assert (=> b!6127476 m!6971880))

(assert (=> b!6126731 d!1919889))

(declare-fun d!1919891 () Bool)

(declare-fun res!2539812 () Bool)

(declare-fun e!3735036 () Bool)

(assert (=> d!1919891 (=> res!2539812 e!3735036)))

(assert (=> d!1919891 (= res!2539812 (is-Nil!64385 (exprs!5954 lt!2331410)))))

(assert (=> d!1919891 (= (forall!15191 (exprs!5954 lt!2331410) lambda!333735) e!3735036)))

(declare-fun b!6127477 () Bool)

(declare-fun e!3735037 () Bool)

(assert (=> b!6127477 (= e!3735036 e!3735037)))

(declare-fun res!2539813 () Bool)

(assert (=> b!6127477 (=> (not res!2539813) (not e!3735037))))

(assert (=> b!6127477 (= res!2539813 (dynLambda!25363 lambda!333735 (h!70833 (exprs!5954 lt!2331410))))))

(declare-fun b!6127478 () Bool)

(assert (=> b!6127478 (= e!3735037 (forall!15191 (t!377974 (exprs!5954 lt!2331410)) lambda!333735))))

(assert (= (and d!1919891 (not res!2539812)) b!6127477))

(assert (= (and b!6127477 res!2539813) b!6127478))

(declare-fun b_lambda!233263 () Bool)

(assert (=> (not b_lambda!233263) (not b!6127477)))

(declare-fun m!6971882 () Bool)

(assert (=> b!6127477 m!6971882))

(declare-fun m!6971884 () Bool)

(assert (=> b!6127478 m!6971884))

(assert (=> d!1919723 d!1919891))

(assert (=> d!1919641 d!1919851))

(assert (=> d!1919641 d!1919735))

(declare-fun b!6127480 () Bool)

(declare-fun e!3735038 () List!64511)

(assert (=> b!6127480 (= e!3735038 (Cons!64387 (h!70835 (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) Nil!64387))) (++!14157 (t!377976 (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) Nil!64387))) (t!377976 s!2326))))))

(declare-fun b!6127481 () Bool)

(declare-fun res!2539814 () Bool)

(declare-fun e!3735039 () Bool)

(assert (=> b!6127481 (=> (not res!2539814) (not e!3735039))))

(declare-fun lt!2331550 () List!64511)

(assert (=> b!6127481 (= res!2539814 (= (size!40213 lt!2331550) (+ (size!40213 (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) Nil!64387))) (size!40213 (t!377976 s!2326)))))))

(declare-fun d!1919893 () Bool)

(assert (=> d!1919893 e!3735039))

(declare-fun res!2539815 () Bool)

(assert (=> d!1919893 (=> (not res!2539815) (not e!3735039))))

(assert (=> d!1919893 (= res!2539815 (= (content!11966 lt!2331550) (set.union (content!11966 (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) Nil!64387))) (content!11966 (t!377976 s!2326)))))))

(assert (=> d!1919893 (= lt!2331550 e!3735038)))

(declare-fun c!1101414 () Bool)

(assert (=> d!1919893 (= c!1101414 (is-Nil!64387 (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) Nil!64387))))))

(assert (=> d!1919893 (= (++!14157 (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) Nil!64387)) (t!377976 s!2326)) lt!2331550)))

(declare-fun b!6127479 () Bool)

(assert (=> b!6127479 (= e!3735038 (t!377976 s!2326))))

(declare-fun b!6127482 () Bool)

(assert (=> b!6127482 (= e!3735039 (or (not (= (t!377976 s!2326) Nil!64387)) (= lt!2331550 (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) Nil!64387)))))))

(assert (= (and d!1919893 c!1101414) b!6127479))

(assert (= (and d!1919893 (not c!1101414)) b!6127480))

(assert (= (and d!1919893 res!2539815) b!6127481))

(assert (= (and b!6127481 res!2539814) b!6127482))

(declare-fun m!6971886 () Bool)

(assert (=> b!6127480 m!6971886))

(declare-fun m!6971888 () Bool)

(assert (=> b!6127481 m!6971888))

(assert (=> b!6127481 m!6971398))

(declare-fun m!6971890 () Bool)

(assert (=> b!6127481 m!6971890))

(declare-fun m!6971892 () Bool)

(assert (=> b!6127481 m!6971892))

(declare-fun m!6971894 () Bool)

(assert (=> d!1919893 m!6971894))

(assert (=> d!1919893 m!6971398))

(declare-fun m!6971896 () Bool)

(assert (=> d!1919893 m!6971896))

(declare-fun m!6971898 () Bool)

(assert (=> d!1919893 m!6971898))

(assert (=> b!6126770 d!1919893))

(declare-fun b!6127484 () Bool)

(declare-fun e!3735040 () List!64511)

(assert (=> b!6127484 (= e!3735040 (Cons!64387 (h!70835 Nil!64387) (++!14157 (t!377976 Nil!64387) (Cons!64387 (h!70835 s!2326) Nil!64387))))))

(declare-fun b!6127485 () Bool)

(declare-fun res!2539816 () Bool)

(declare-fun e!3735041 () Bool)

(assert (=> b!6127485 (=> (not res!2539816) (not e!3735041))))

(declare-fun lt!2331551 () List!64511)

(assert (=> b!6127485 (= res!2539816 (= (size!40213 lt!2331551) (+ (size!40213 Nil!64387) (size!40213 (Cons!64387 (h!70835 s!2326) Nil!64387)))))))

(declare-fun d!1919895 () Bool)

(assert (=> d!1919895 e!3735041))

(declare-fun res!2539817 () Bool)

(assert (=> d!1919895 (=> (not res!2539817) (not e!3735041))))

(assert (=> d!1919895 (= res!2539817 (= (content!11966 lt!2331551) (set.union (content!11966 Nil!64387) (content!11966 (Cons!64387 (h!70835 s!2326) Nil!64387)))))))

(assert (=> d!1919895 (= lt!2331551 e!3735040)))

(declare-fun c!1101415 () Bool)

(assert (=> d!1919895 (= c!1101415 (is-Nil!64387 Nil!64387))))

(assert (=> d!1919895 (= (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) Nil!64387)) lt!2331551)))

(declare-fun b!6127483 () Bool)

(assert (=> b!6127483 (= e!3735040 (Cons!64387 (h!70835 s!2326) Nil!64387))))

(declare-fun b!6127486 () Bool)

(assert (=> b!6127486 (= e!3735041 (or (not (= (Cons!64387 (h!70835 s!2326) Nil!64387) Nil!64387)) (= lt!2331551 Nil!64387)))))

(assert (= (and d!1919895 c!1101415) b!6127483))

(assert (= (and d!1919895 (not c!1101415)) b!6127484))

(assert (= (and d!1919895 res!2539817) b!6127485))

(assert (= (and b!6127485 res!2539816) b!6127486))

(declare-fun m!6971900 () Bool)

(assert (=> b!6127484 m!6971900))

(declare-fun m!6971902 () Bool)

(assert (=> b!6127485 m!6971902))

(declare-fun m!6971904 () Bool)

(assert (=> b!6127485 m!6971904))

(declare-fun m!6971906 () Bool)

(assert (=> b!6127485 m!6971906))

(declare-fun m!6971908 () Bool)

(assert (=> d!1919895 m!6971908))

(declare-fun m!6971910 () Bool)

(assert (=> d!1919895 m!6971910))

(declare-fun m!6971912 () Bool)

(assert (=> d!1919895 m!6971912))

(assert (=> b!6126770 d!1919895))

(declare-fun d!1919897 () Bool)

(assert (=> d!1919897 (= (++!14157 (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) Nil!64387)) (t!377976 s!2326)) s!2326)))

(declare-fun lt!2331554 () Unit!157435)

(declare-fun choose!45523 (List!64511 C!32410 List!64511 List!64511) Unit!157435)

(assert (=> d!1919897 (= lt!2331554 (choose!45523 Nil!64387 (h!70835 s!2326) (t!377976 s!2326) s!2326))))

(assert (=> d!1919897 (= (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) (t!377976 s!2326))) s!2326)))

(assert (=> d!1919897 (= (lemmaMoveElementToOtherListKeepsConcatEq!2252 Nil!64387 (h!70835 s!2326) (t!377976 s!2326) s!2326) lt!2331554)))

(declare-fun bs!1520196 () Bool)

(assert (= bs!1520196 d!1919897))

(assert (=> bs!1520196 m!6971398))

(assert (=> bs!1520196 m!6971398))

(assert (=> bs!1520196 m!6971400))

(declare-fun m!6971914 () Bool)

(assert (=> bs!1520196 m!6971914))

(declare-fun m!6971916 () Bool)

(assert (=> bs!1520196 m!6971916))

(assert (=> b!6126770 d!1919897))

(declare-fun b!6127487 () Bool)

(declare-fun e!3735044 () Bool)

(assert (=> b!6127487 (= e!3735044 (matchR!8253 (regTwo!32652 r!7292) (t!377976 s!2326)))))

(declare-fun b!6127488 () Bool)

(declare-fun e!3735043 () Bool)

(declare-fun lt!2331555 () Option!15961)

(assert (=> b!6127488 (= e!3735043 (= (++!14157 (_1!36352 (get!22208 lt!2331555)) (_2!36352 (get!22208 lt!2331555))) s!2326))))

(declare-fun b!6127489 () Bool)

(declare-fun res!2539819 () Bool)

(assert (=> b!6127489 (=> (not res!2539819) (not e!3735043))))

(assert (=> b!6127489 (= res!2539819 (matchR!8253 (regTwo!32652 r!7292) (_2!36352 (get!22208 lt!2331555))))))

(declare-fun d!1919899 () Bool)

(declare-fun e!3735042 () Bool)

(assert (=> d!1919899 e!3735042))

(declare-fun res!2539820 () Bool)

(assert (=> d!1919899 (=> res!2539820 e!3735042)))

(assert (=> d!1919899 (= res!2539820 e!3735043)))

(declare-fun res!2539822 () Bool)

(assert (=> d!1919899 (=> (not res!2539822) (not e!3735043))))

(assert (=> d!1919899 (= res!2539822 (isDefined!12664 lt!2331555))))

(declare-fun e!3735046 () Option!15961)

(assert (=> d!1919899 (= lt!2331555 e!3735046)))

(declare-fun c!1101417 () Bool)

(assert (=> d!1919899 (= c!1101417 e!3735044)))

(declare-fun res!2539818 () Bool)

(assert (=> d!1919899 (=> (not res!2539818) (not e!3735044))))

(assert (=> d!1919899 (= res!2539818 (matchR!8253 (regOne!32652 r!7292) (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) Nil!64387))))))

(assert (=> d!1919899 (validRegex!7806 (regOne!32652 r!7292))))

(assert (=> d!1919899 (= (findConcatSeparation!2375 (regOne!32652 r!7292) (regTwo!32652 r!7292) (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) Nil!64387)) (t!377976 s!2326) s!2326) lt!2331555)))

(declare-fun b!6127490 () Bool)

(declare-fun lt!2331557 () Unit!157435)

(declare-fun lt!2331556 () Unit!157435)

(assert (=> b!6127490 (= lt!2331557 lt!2331556)))

(assert (=> b!6127490 (= (++!14157 (++!14157 (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) Nil!64387)) (Cons!64387 (h!70835 (t!377976 s!2326)) Nil!64387)) (t!377976 (t!377976 s!2326))) s!2326)))

(assert (=> b!6127490 (= lt!2331556 (lemmaMoveElementToOtherListKeepsConcatEq!2252 (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) Nil!64387)) (h!70835 (t!377976 s!2326)) (t!377976 (t!377976 s!2326)) s!2326))))

(declare-fun e!3735045 () Option!15961)

(assert (=> b!6127490 (= e!3735045 (findConcatSeparation!2375 (regOne!32652 r!7292) (regTwo!32652 r!7292) (++!14157 (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) Nil!64387)) (Cons!64387 (h!70835 (t!377976 s!2326)) Nil!64387)) (t!377976 (t!377976 s!2326)) s!2326))))

(declare-fun b!6127491 () Bool)

(assert (=> b!6127491 (= e!3735046 (Some!15960 (tuple2!66099 (++!14157 Nil!64387 (Cons!64387 (h!70835 s!2326) Nil!64387)) (t!377976 s!2326))))))

(declare-fun b!6127492 () Bool)

(declare-fun res!2539821 () Bool)

(assert (=> b!6127492 (=> (not res!2539821) (not e!3735043))))

(assert (=> b!6127492 (= res!2539821 (matchR!8253 (regOne!32652 r!7292) (_1!36352 (get!22208 lt!2331555))))))

(declare-fun b!6127493 () Bool)

(assert (=> b!6127493 (= e!3735042 (not (isDefined!12664 lt!2331555)))))

(declare-fun b!6127494 () Bool)

(assert (=> b!6127494 (= e!3735046 e!3735045)))

(declare-fun c!1101416 () Bool)

(assert (=> b!6127494 (= c!1101416 (is-Nil!64387 (t!377976 s!2326)))))

(declare-fun b!6127495 () Bool)

(assert (=> b!6127495 (= e!3735045 None!15960)))

(assert (= (and d!1919899 res!2539818) b!6127487))

(assert (= (and d!1919899 c!1101417) b!6127491))

(assert (= (and d!1919899 (not c!1101417)) b!6127494))

(assert (= (and b!6127494 c!1101416) b!6127495))

(assert (= (and b!6127494 (not c!1101416)) b!6127490))

(assert (= (and d!1919899 res!2539822) b!6127492))

(assert (= (and b!6127492 res!2539821) b!6127489))

(assert (= (and b!6127489 res!2539819) b!6127488))

(assert (= (and d!1919899 (not res!2539820)) b!6127493))

(declare-fun m!6971918 () Bool)

(assert (=> b!6127492 m!6971918))

(declare-fun m!6971920 () Bool)

(assert (=> b!6127492 m!6971920))

(assert (=> b!6127489 m!6971918))

(declare-fun m!6971922 () Bool)

(assert (=> b!6127489 m!6971922))

(assert (=> b!6127490 m!6971398))

(declare-fun m!6971924 () Bool)

(assert (=> b!6127490 m!6971924))

(assert (=> b!6127490 m!6971924))

(declare-fun m!6971926 () Bool)

(assert (=> b!6127490 m!6971926))

(assert (=> b!6127490 m!6971398))

(declare-fun m!6971928 () Bool)

(assert (=> b!6127490 m!6971928))

(assert (=> b!6127490 m!6971924))

(declare-fun m!6971930 () Bool)

(assert (=> b!6127490 m!6971930))

(declare-fun m!6971932 () Bool)

(assert (=> b!6127487 m!6971932))

(declare-fun m!6971934 () Bool)

(assert (=> b!6127493 m!6971934))

(assert (=> d!1919899 m!6971934))

(assert (=> d!1919899 m!6971398))

(declare-fun m!6971936 () Bool)

(assert (=> d!1919899 m!6971936))

(assert (=> d!1919899 m!6971412))

(assert (=> b!6127488 m!6971918))

(declare-fun m!6971938 () Bool)

(assert (=> b!6127488 m!6971938))

(assert (=> b!6126770 d!1919899))

(declare-fun d!1919901 () Bool)

(assert (=> d!1919901 (= (nullable!6063 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343))))) (nullableFct!2027 (regOne!32652 (h!70833 (exprs!5954 (h!70834 zl!343))))))))

(declare-fun bs!1520197 () Bool)

(assert (= bs!1520197 d!1919901))

(declare-fun m!6971940 () Bool)

(assert (=> bs!1520197 m!6971940))

(assert (=> b!6126717 d!1919901))

(declare-fun b!6127496 () Bool)

(declare-fun e!3735048 () Bool)

(declare-fun e!3735050 () Bool)

(assert (=> b!6127496 (= e!3735048 e!3735050)))

(declare-fun c!1101418 () Bool)

(assert (=> b!6127496 (= c!1101418 (is-EmptyLang!16070 (regOne!32652 r!7292)))))

(declare-fun b!6127497 () Bool)

(declare-fun e!3735049 () Bool)

(declare-fun e!3735052 () Bool)

(assert (=> b!6127497 (= e!3735049 e!3735052)))

(declare-fun res!2539827 () Bool)

(assert (=> b!6127497 (=> (not res!2539827) (not e!3735052))))

(declare-fun lt!2331558 () Bool)

(assert (=> b!6127497 (= res!2539827 (not lt!2331558))))

(declare-fun b!6127498 () Bool)

(declare-fun e!3735047 () Bool)

(assert (=> b!6127498 (= e!3735047 (= (head!12661 (_1!36352 (get!22208 lt!2331503))) (c!1101136 (regOne!32652 r!7292))))))

(declare-fun b!6127499 () Bool)

(declare-fun res!2539825 () Bool)

(assert (=> b!6127499 (=> res!2539825 e!3735049)))

(assert (=> b!6127499 (= res!2539825 (not (is-ElementMatch!16070 (regOne!32652 r!7292))))))

(assert (=> b!6127499 (= e!3735050 e!3735049)))

(declare-fun d!1919903 () Bool)

(assert (=> d!1919903 e!3735048))

(declare-fun c!1101420 () Bool)

(assert (=> d!1919903 (= c!1101420 (is-EmptyExpr!16070 (regOne!32652 r!7292)))))

(declare-fun e!3735053 () Bool)

(assert (=> d!1919903 (= lt!2331558 e!3735053)))

(declare-fun c!1101419 () Bool)

(assert (=> d!1919903 (= c!1101419 (isEmpty!36326 (_1!36352 (get!22208 lt!2331503))))))

(assert (=> d!1919903 (validRegex!7806 (regOne!32652 r!7292))))

(assert (=> d!1919903 (= (matchR!8253 (regOne!32652 r!7292) (_1!36352 (get!22208 lt!2331503))) lt!2331558)))

(declare-fun b!6127500 () Bool)

(assert (=> b!6127500 (= e!3735050 (not lt!2331558))))

(declare-fun b!6127501 () Bool)

(assert (=> b!6127501 (= e!3735053 (matchR!8253 (derivativeStep!4790 (regOne!32652 r!7292) (head!12661 (_1!36352 (get!22208 lt!2331503)))) (tail!11746 (_1!36352 (get!22208 lt!2331503)))))))

(declare-fun b!6127502 () Bool)

(declare-fun res!2539823 () Bool)

(declare-fun e!3735051 () Bool)

(assert (=> b!6127502 (=> res!2539823 e!3735051)))

(assert (=> b!6127502 (= res!2539823 (not (isEmpty!36326 (tail!11746 (_1!36352 (get!22208 lt!2331503))))))))

(declare-fun b!6127503 () Bool)

(declare-fun call!507960 () Bool)

(assert (=> b!6127503 (= e!3735048 (= lt!2331558 call!507960))))

(declare-fun b!6127504 () Bool)

(declare-fun res!2539826 () Bool)

(assert (=> b!6127504 (=> res!2539826 e!3735049)))

(assert (=> b!6127504 (= res!2539826 e!3735047)))

(declare-fun res!2539824 () Bool)

(assert (=> b!6127504 (=> (not res!2539824) (not e!3735047))))

(assert (=> b!6127504 (= res!2539824 lt!2331558)))

(declare-fun b!6127505 () Bool)

(declare-fun res!2539830 () Bool)

(assert (=> b!6127505 (=> (not res!2539830) (not e!3735047))))

(assert (=> b!6127505 (= res!2539830 (isEmpty!36326 (tail!11746 (_1!36352 (get!22208 lt!2331503)))))))

(declare-fun b!6127506 () Bool)

(assert (=> b!6127506 (= e!3735052 e!3735051)))

(declare-fun res!2539828 () Bool)

(assert (=> b!6127506 (=> res!2539828 e!3735051)))

(assert (=> b!6127506 (= res!2539828 call!507960)))

(declare-fun bm!507955 () Bool)

(assert (=> bm!507955 (= call!507960 (isEmpty!36326 (_1!36352 (get!22208 lt!2331503))))))

(declare-fun b!6127507 () Bool)

(declare-fun res!2539829 () Bool)

(assert (=> b!6127507 (=> (not res!2539829) (not e!3735047))))

(assert (=> b!6127507 (= res!2539829 (not call!507960))))

(declare-fun b!6127508 () Bool)

(assert (=> b!6127508 (= e!3735051 (not (= (head!12661 (_1!36352 (get!22208 lt!2331503))) (c!1101136 (regOne!32652 r!7292)))))))

(declare-fun b!6127509 () Bool)

(assert (=> b!6127509 (= e!3735053 (nullable!6063 (regOne!32652 r!7292)))))

(assert (= (and d!1919903 c!1101419) b!6127509))

(assert (= (and d!1919903 (not c!1101419)) b!6127501))

(assert (= (and d!1919903 c!1101420) b!6127503))

(assert (= (and d!1919903 (not c!1101420)) b!6127496))

(assert (= (and b!6127496 c!1101418) b!6127500))

(assert (= (and b!6127496 (not c!1101418)) b!6127499))

(assert (= (and b!6127499 (not res!2539825)) b!6127504))

(assert (= (and b!6127504 res!2539824) b!6127507))

(assert (= (and b!6127507 res!2539829) b!6127505))

(assert (= (and b!6127505 res!2539830) b!6127498))

(assert (= (and b!6127504 (not res!2539826)) b!6127497))

(assert (= (and b!6127497 res!2539827) b!6127506))

(assert (= (and b!6127506 (not res!2539828)) b!6127502))

(assert (= (and b!6127502 (not res!2539823)) b!6127508))

(assert (= (or b!6127503 b!6127507 b!6127506) bm!507955))

(declare-fun m!6971942 () Bool)

(assert (=> b!6127502 m!6971942))

(assert (=> b!6127502 m!6971942))

(declare-fun m!6971944 () Bool)

(assert (=> b!6127502 m!6971944))

(declare-fun m!6971946 () Bool)

(assert (=> d!1919903 m!6971946))

(assert (=> d!1919903 m!6971412))

(declare-fun m!6971948 () Bool)

(assert (=> b!6127501 m!6971948))

(assert (=> b!6127501 m!6971948))

(declare-fun m!6971950 () Bool)

(assert (=> b!6127501 m!6971950))

(assert (=> b!6127501 m!6971942))

(assert (=> b!6127501 m!6971950))

(assert (=> b!6127501 m!6971942))

(declare-fun m!6971952 () Bool)

(assert (=> b!6127501 m!6971952))

(assert (=> b!6127498 m!6971948))

(assert (=> b!6127505 m!6971942))

(assert (=> b!6127505 m!6971942))

(assert (=> b!6127505 m!6971944))

(assert (=> b!6127509 m!6971644))

(assert (=> b!6127508 m!6971948))

(assert (=> bm!507955 m!6971946))

(assert (=> b!6126772 d!1919903))

(assert (=> b!6126772 d!1919781))

(assert (=> b!6126571 d!1919773))

(declare-fun bs!1520198 () Bool)

(declare-fun d!1919905 () Bool)

(assert (= bs!1520198 (and d!1919905 d!1919885)))

(declare-fun lambda!333765 () Int)

(assert (=> bs!1520198 (= lambda!333765 lambda!333764)))

(assert (=> d!1919905 (= (nullableZipper!1852 (set.union lt!2331407 lt!2331412)) (exists!2418 (set.union lt!2331407 lt!2331412) lambda!333765))))

(declare-fun bs!1520199 () Bool)

(assert (= bs!1520199 d!1919905))

(declare-fun m!6971954 () Bool)

(assert (=> bs!1520199 m!6971954))

(assert (=> b!6126942 d!1919905))

(declare-fun d!1919907 () Bool)

(assert (=> d!1919907 (= (nullable!6063 r!7292) (nullableFct!2027 r!7292))))

(declare-fun bs!1520200 () Bool)

(assert (= bs!1520200 d!1919907))

(declare-fun m!6971956 () Bool)

(assert (=> bs!1520200 m!6971956))

(assert (=> b!6126582 d!1919907))

(declare-fun bs!1520201 () Bool)

(declare-fun d!1919909 () Bool)

(assert (= bs!1520201 (and d!1919909 d!1919733)))

(declare-fun lambda!333766 () Int)

(assert (=> bs!1520201 (= lambda!333766 lambda!333740)))

(declare-fun bs!1520202 () Bool)

(assert (= bs!1520202 (and d!1919909 d!1919645)))

(assert (=> bs!1520202 (= lambda!333766 lambda!333694)))

(declare-fun bs!1520203 () Bool)

(assert (= bs!1520203 (and d!1919909 d!1919791)))

(assert (=> bs!1520203 (= lambda!333766 lambda!333742)))

(declare-fun bs!1520204 () Bool)

(assert (= bs!1520204 (and d!1919909 d!1919719)))

(assert (=> bs!1520204 (= lambda!333766 lambda!333732)))

(declare-fun bs!1520205 () Bool)

(assert (= bs!1520205 (and d!1919909 d!1919813)))

(assert (=> bs!1520205 (= lambda!333766 lambda!333748)))

(declare-fun bs!1520206 () Bool)

(assert (= bs!1520206 (and d!1919909 d!1919723)))

(assert (=> bs!1520206 (= lambda!333766 lambda!333735)))

(declare-fun bs!1520207 () Bool)

(assert (= bs!1520207 (and d!1919909 d!1919649)))

(assert (=> bs!1520207 (= lambda!333766 lambda!333698)))

(declare-fun bs!1520208 () Bool)

(assert (= bs!1520208 (and d!1919909 d!1919675)))

(assert (=> bs!1520208 (= lambda!333766 lambda!333703)))

(declare-fun b!6127510 () Bool)

(declare-fun e!3735055 () Regex!16070)

(assert (=> b!6127510 (= e!3735055 EmptyLang!16070)))

(declare-fun b!6127511 () Bool)

(declare-fun e!3735058 () Bool)

(declare-fun lt!2331559 () Regex!16070)

(assert (=> b!6127511 (= e!3735058 (isUnion!927 lt!2331559))))

(declare-fun b!6127512 () Bool)

(declare-fun e!3735057 () Bool)

(assert (=> b!6127512 (= e!3735057 (isEmptyLang!1497 lt!2331559))))

(declare-fun b!6127513 () Bool)

(declare-fun e!3735054 () Bool)

(assert (=> b!6127513 (= e!3735054 e!3735057)))

(declare-fun c!1101421 () Bool)

(assert (=> b!6127513 (= c!1101421 (isEmpty!36323 (t!377974 (unfocusZipperList!1491 zl!343))))))

(assert (=> d!1919909 e!3735054))

(declare-fun res!2539832 () Bool)

(assert (=> d!1919909 (=> (not res!2539832) (not e!3735054))))

(assert (=> d!1919909 (= res!2539832 (validRegex!7806 lt!2331559))))

(declare-fun e!3735056 () Regex!16070)

(assert (=> d!1919909 (= lt!2331559 e!3735056)))

(declare-fun c!1101423 () Bool)

(declare-fun e!3735059 () Bool)

(assert (=> d!1919909 (= c!1101423 e!3735059)))

(declare-fun res!2539831 () Bool)

(assert (=> d!1919909 (=> (not res!2539831) (not e!3735059))))

(assert (=> d!1919909 (= res!2539831 (is-Cons!64385 (t!377974 (unfocusZipperList!1491 zl!343))))))

(assert (=> d!1919909 (forall!15191 (t!377974 (unfocusZipperList!1491 zl!343)) lambda!333766)))

(assert (=> d!1919909 (= (generalisedUnion!1914 (t!377974 (unfocusZipperList!1491 zl!343))) lt!2331559)))

(declare-fun b!6127514 () Bool)

(assert (=> b!6127514 (= e!3735056 (h!70833 (t!377974 (unfocusZipperList!1491 zl!343))))))

(declare-fun b!6127515 () Bool)

(assert (=> b!6127515 (= e!3735059 (isEmpty!36323 (t!377974 (t!377974 (unfocusZipperList!1491 zl!343)))))))

(declare-fun b!6127516 () Bool)

(assert (=> b!6127516 (= e!3735055 (Union!16070 (h!70833 (t!377974 (unfocusZipperList!1491 zl!343))) (generalisedUnion!1914 (t!377974 (t!377974 (unfocusZipperList!1491 zl!343))))))))

(declare-fun b!6127517 () Bool)

(assert (=> b!6127517 (= e!3735057 e!3735058)))

(declare-fun c!1101424 () Bool)

(assert (=> b!6127517 (= c!1101424 (isEmpty!36323 (tail!11747 (t!377974 (unfocusZipperList!1491 zl!343)))))))

(declare-fun b!6127518 () Bool)

(assert (=> b!6127518 (= e!3735058 (= lt!2331559 (head!12662 (t!377974 (unfocusZipperList!1491 zl!343)))))))

(declare-fun b!6127519 () Bool)

(assert (=> b!6127519 (= e!3735056 e!3735055)))

(declare-fun c!1101422 () Bool)

(assert (=> b!6127519 (= c!1101422 (is-Cons!64385 (t!377974 (unfocusZipperList!1491 zl!343))))))

(assert (= (and d!1919909 res!2539831) b!6127515))

(assert (= (and d!1919909 c!1101423) b!6127514))

(assert (= (and d!1919909 (not c!1101423)) b!6127519))

(assert (= (and b!6127519 c!1101422) b!6127516))

(assert (= (and b!6127519 (not c!1101422)) b!6127510))

(assert (= (and d!1919909 res!2539832) b!6127513))

(assert (= (and b!6127513 c!1101421) b!6127512))

(assert (= (and b!6127513 (not c!1101421)) b!6127517))

(assert (= (and b!6127517 c!1101424) b!6127518))

(assert (= (and b!6127517 (not c!1101424)) b!6127511))

(declare-fun m!6971958 () Bool)

(assert (=> d!1919909 m!6971958))

(declare-fun m!6971960 () Bool)

(assert (=> d!1919909 m!6971960))

(declare-fun m!6971962 () Bool)

(assert (=> b!6127512 m!6971962))

(declare-fun m!6971964 () Bool)

(assert (=> b!6127518 m!6971964))

(assert (=> b!6127513 m!6971280))

(declare-fun m!6971966 () Bool)

(assert (=> b!6127516 m!6971966))

(declare-fun m!6971968 () Bool)

(assert (=> b!6127517 m!6971968))

(assert (=> b!6127517 m!6971968))

(declare-fun m!6971970 () Bool)

(assert (=> b!6127517 m!6971970))

(declare-fun m!6971972 () Bool)

(assert (=> b!6127511 m!6971972))

(declare-fun m!6971974 () Bool)

(assert (=> b!6127515 m!6971974))

(assert (=> b!6126609 d!1919909))

(declare-fun d!1919911 () Bool)

(assert (=> d!1919911 (= (head!12662 (exprs!5954 (h!70834 zl!343))) (h!70833 (exprs!5954 (h!70834 zl!343))))))

(assert (=> b!6126907 d!1919911))

(declare-fun d!1919913 () Bool)

(assert (=> d!1919913 (= (head!12662 (unfocusZipperList!1491 zl!343)) (h!70833 (unfocusZipperList!1491 zl!343)))))

(assert (=> b!6126611 d!1919913))

(declare-fun d!1919915 () Bool)

(assert (=> d!1919915 (= (isEmpty!36328 (findConcatSeparation!2375 (regOne!32652 r!7292) (regTwo!32652 r!7292) Nil!64387 s!2326 s!2326)) (not (is-Some!15960 (findConcatSeparation!2375 (regOne!32652 r!7292) (regTwo!32652 r!7292) Nil!64387 s!2326 s!2326))))))

(assert (=> d!1919713 d!1919915))

(assert (=> bm!507808 d!1919851))

(declare-fun d!1919917 () Bool)

(assert (=> d!1919917 (= (nullable!6063 (h!70833 (exprs!5954 lt!2331410))) (nullableFct!2027 (h!70833 (exprs!5954 lt!2331410))))))

(declare-fun bs!1520209 () Bool)

(assert (= bs!1520209 d!1919917))

(declare-fun m!6971976 () Bool)

(assert (=> bs!1520209 m!6971976))

(assert (=> b!6126735 d!1919917))

(declare-fun d!1919919 () Bool)

(assert (=> d!1919919 (= (isConcat!1011 lt!2331523) (is-Concat!24915 lt!2331523))))

(assert (=> b!6126909 d!1919919))

(declare-fun bs!1520210 () Bool)

(declare-fun d!1919921 () Bool)

(assert (= bs!1520210 (and d!1919921 d!1919885)))

(declare-fun lambda!333767 () Int)

(assert (=> bs!1520210 (= lambda!333767 lambda!333764)))

(declare-fun bs!1520211 () Bool)

(assert (= bs!1520211 (and d!1919921 d!1919905)))

(assert (=> bs!1520211 (= lambda!333767 lambda!333765)))

(assert (=> d!1919921 (= (nullableZipper!1852 lt!2331407) (exists!2418 lt!2331407 lambda!333767))))

(declare-fun bs!1520212 () Bool)

(assert (= bs!1520212 d!1919921))

(declare-fun m!6971978 () Bool)

(assert (=> bs!1520212 m!6971978))

(assert (=> b!6126940 d!1919921))

(declare-fun b!6127520 () Bool)

(declare-fun e!3735061 () Bool)

(declare-fun e!3735063 () Bool)

(assert (=> b!6127520 (= e!3735061 e!3735063)))

(declare-fun c!1101425 () Bool)

(assert (=> b!6127520 (= c!1101425 (is-EmptyLang!16070 (regTwo!32652 r!7292)))))

(declare-fun b!6127521 () Bool)

(declare-fun e!3735062 () Bool)

(declare-fun e!3735065 () Bool)

(assert (=> b!6127521 (= e!3735062 e!3735065)))

(declare-fun res!2539837 () Bool)

(assert (=> b!6127521 (=> (not res!2539837) (not e!3735065))))

(declare-fun lt!2331560 () Bool)

(assert (=> b!6127521 (= res!2539837 (not lt!2331560))))

(declare-fun b!6127522 () Bool)

(declare-fun e!3735060 () Bool)

(assert (=> b!6127522 (= e!3735060 (= (head!12661 s!2326) (c!1101136 (regTwo!32652 r!7292))))))

(declare-fun b!6127523 () Bool)

(declare-fun res!2539835 () Bool)

(assert (=> b!6127523 (=> res!2539835 e!3735062)))

(assert (=> b!6127523 (= res!2539835 (not (is-ElementMatch!16070 (regTwo!32652 r!7292))))))

(assert (=> b!6127523 (= e!3735063 e!3735062)))

(declare-fun d!1919923 () Bool)

(assert (=> d!1919923 e!3735061))

(declare-fun c!1101427 () Bool)

(assert (=> d!1919923 (= c!1101427 (is-EmptyExpr!16070 (regTwo!32652 r!7292)))))

(declare-fun e!3735066 () Bool)

(assert (=> d!1919923 (= lt!2331560 e!3735066)))

(declare-fun c!1101426 () Bool)

(assert (=> d!1919923 (= c!1101426 (isEmpty!36326 s!2326))))

(assert (=> d!1919923 (validRegex!7806 (regTwo!32652 r!7292))))

(assert (=> d!1919923 (= (matchR!8253 (regTwo!32652 r!7292) s!2326) lt!2331560)))

(declare-fun b!6127524 () Bool)

(assert (=> b!6127524 (= e!3735063 (not lt!2331560))))

(declare-fun b!6127525 () Bool)

(assert (=> b!6127525 (= e!3735066 (matchR!8253 (derivativeStep!4790 (regTwo!32652 r!7292) (head!12661 s!2326)) (tail!11746 s!2326)))))

(declare-fun b!6127526 () Bool)

(declare-fun res!2539833 () Bool)

(declare-fun e!3735064 () Bool)

(assert (=> b!6127526 (=> res!2539833 e!3735064)))

(assert (=> b!6127526 (= res!2539833 (not (isEmpty!36326 (tail!11746 s!2326))))))

(declare-fun b!6127527 () Bool)

(declare-fun call!507961 () Bool)

(assert (=> b!6127527 (= e!3735061 (= lt!2331560 call!507961))))

(declare-fun b!6127528 () Bool)

(declare-fun res!2539836 () Bool)

(assert (=> b!6127528 (=> res!2539836 e!3735062)))

(assert (=> b!6127528 (= res!2539836 e!3735060)))

(declare-fun res!2539834 () Bool)

(assert (=> b!6127528 (=> (not res!2539834) (not e!3735060))))

(assert (=> b!6127528 (= res!2539834 lt!2331560)))

(declare-fun b!6127529 () Bool)

(declare-fun res!2539840 () Bool)

(assert (=> b!6127529 (=> (not res!2539840) (not e!3735060))))

(assert (=> b!6127529 (= res!2539840 (isEmpty!36326 (tail!11746 s!2326)))))

(declare-fun b!6127530 () Bool)

(assert (=> b!6127530 (= e!3735065 e!3735064)))

(declare-fun res!2539838 () Bool)

(assert (=> b!6127530 (=> res!2539838 e!3735064)))

(assert (=> b!6127530 (= res!2539838 call!507961)))

(declare-fun bm!507956 () Bool)

(assert (=> bm!507956 (= call!507961 (isEmpty!36326 s!2326))))

(declare-fun b!6127531 () Bool)

(declare-fun res!2539839 () Bool)

(assert (=> b!6127531 (=> (not res!2539839) (not e!3735060))))

(assert (=> b!6127531 (= res!2539839 (not call!507961))))

(declare-fun b!6127532 () Bool)

(assert (=> b!6127532 (= e!3735064 (not (= (head!12661 s!2326) (c!1101136 (regTwo!32652 r!7292)))))))

(declare-fun b!6127533 () Bool)

(assert (=> b!6127533 (= e!3735066 (nullable!6063 (regTwo!32652 r!7292)))))

(assert (= (and d!1919923 c!1101426) b!6127533))

(assert (= (and d!1919923 (not c!1101426)) b!6127525))

(assert (= (and d!1919923 c!1101427) b!6127527))

(assert (= (and d!1919923 (not c!1101427)) b!6127520))

(assert (= (and b!6127520 c!1101425) b!6127524))

(assert (= (and b!6127520 (not c!1101425)) b!6127523))

(assert (= (and b!6127523 (not res!2539835)) b!6127528))

(assert (= (and b!6127528 res!2539834) b!6127531))

(assert (= (and b!6127531 res!2539839) b!6127529))

(assert (= (and b!6127529 res!2539840) b!6127522))

(assert (= (and b!6127528 (not res!2539836)) b!6127521))

(assert (= (and b!6127521 res!2539837) b!6127530))

(assert (= (and b!6127530 (not res!2539838)) b!6127526))

(assert (= (and b!6127526 (not res!2539833)) b!6127532))

(assert (= (or b!6127527 b!6127531 b!6127530) bm!507956))

(assert (=> b!6127526 m!6971248))

(assert (=> b!6127526 m!6971248))

(assert (=> b!6127526 m!6971250))

(assert (=> d!1919923 m!6971242))

(assert (=> d!1919923 m!6971658))

(assert (=> b!6127525 m!6971252))

(assert (=> b!6127525 m!6971252))

(declare-fun m!6971980 () Bool)

(assert (=> b!6127525 m!6971980))

(assert (=> b!6127525 m!6971248))

(assert (=> b!6127525 m!6971980))

(assert (=> b!6127525 m!6971248))

(declare-fun m!6971982 () Bool)

(assert (=> b!6127525 m!6971982))

(assert (=> b!6127522 m!6971252))

(assert (=> b!6127529 m!6971248))

(assert (=> b!6127529 m!6971248))

(assert (=> b!6127529 m!6971250))

(assert (=> b!6127533 m!6971666))

(assert (=> b!6127532 m!6971252))

(assert (=> bm!507956 m!6971242))

(assert (=> b!6126767 d!1919923))

(assert (=> b!6126730 d!1919657))

(declare-fun d!1919925 () Bool)

(declare-fun res!2539841 () Bool)

(declare-fun e!3735067 () Bool)

(assert (=> d!1919925 (=> res!2539841 e!3735067)))

(assert (=> d!1919925 (= res!2539841 (is-Nil!64385 (exprs!5954 setElem!41393)))))

(assert (=> d!1919925 (= (forall!15191 (exprs!5954 setElem!41393) lambda!333740) e!3735067)))

(declare-fun b!6127534 () Bool)

(declare-fun e!3735068 () Bool)

(assert (=> b!6127534 (= e!3735067 e!3735068)))

(declare-fun res!2539842 () Bool)

(assert (=> b!6127534 (=> (not res!2539842) (not e!3735068))))

(assert (=> b!6127534 (= res!2539842 (dynLambda!25363 lambda!333740 (h!70833 (exprs!5954 setElem!41393))))))

(declare-fun b!6127535 () Bool)

(assert (=> b!6127535 (= e!3735068 (forall!15191 (t!377974 (exprs!5954 setElem!41393)) lambda!333740))))

(assert (= (and d!1919925 (not res!2539841)) b!6127534))

(assert (= (and b!6127534 res!2539842) b!6127535))

(declare-fun b_lambda!233265 () Bool)

(assert (=> (not b_lambda!233265) (not b!6127534)))

(declare-fun m!6971984 () Bool)

(assert (=> b!6127534 m!6971984))

(declare-fun m!6971986 () Bool)

(assert (=> b!6127535 m!6971986))

(assert (=> d!1919733 d!1919925))

(declare-fun d!1919927 () Bool)

(assert (=> d!1919927 true))

(declare-fun setRes!41405 () Bool)

(assert (=> d!1919927 setRes!41405))

(declare-fun condSetEmpty!41405 () Bool)

(declare-fun res!2539845 () (Set Context!10908))

(assert (=> d!1919927 (= condSetEmpty!41405 (= res!2539845 (as set.empty (Set Context!10908))))))

(assert (=> d!1919927 (= (choose!45509 z!1189 lambda!333672) res!2539845)))

(declare-fun setIsEmpty!41405 () Bool)

(assert (=> setIsEmpty!41405 setRes!41405))

(declare-fun e!3735071 () Bool)

(declare-fun setNonEmpty!41405 () Bool)

(declare-fun setElem!41405 () Context!10908)

(declare-fun tp!1712385 () Bool)

(assert (=> setNonEmpty!41405 (= setRes!41405 (and tp!1712385 (inv!83423 setElem!41405) e!3735071))))

(declare-fun setRest!41405 () (Set Context!10908))

(assert (=> setNonEmpty!41405 (= res!2539845 (set.union (set.insert setElem!41405 (as set.empty (Set Context!10908))) setRest!41405))))

(declare-fun b!6127538 () Bool)

(declare-fun tp!1712386 () Bool)

(assert (=> b!6127538 (= e!3735071 tp!1712386)))

(assert (= (and d!1919927 condSetEmpty!41405) setIsEmpty!41405))

(assert (= (and d!1919927 (not condSetEmpty!41405)) setNonEmpty!41405))

(assert (= setNonEmpty!41405 b!6127538))

(declare-fun m!6971988 () Bool)

(assert (=> setNonEmpty!41405 m!6971988))

(assert (=> d!1919661 d!1919927))

(declare-fun call!507963 () Bool)

(declare-fun c!1101428 () Bool)

(declare-fun bm!507957 () Bool)

(declare-fun c!1101429 () Bool)

(assert (=> bm!507957 (= call!507963 (validRegex!7806 (ite c!1101428 (reg!16399 lt!2331463) (ite c!1101429 (regOne!32653 lt!2331463) (regOne!32652 lt!2331463)))))))

(declare-fun bm!507958 () Bool)

(declare-fun call!507962 () Bool)

(assert (=> bm!507958 (= call!507962 call!507963)))

(declare-fun b!6127539 () Bool)

(declare-fun res!2539846 () Bool)

(declare-fun e!3735077 () Bool)

(assert (=> b!6127539 (=> res!2539846 e!3735077)))

(assert (=> b!6127539 (= res!2539846 (not (is-Concat!24915 lt!2331463)))))

(declare-fun e!3735075 () Bool)

(assert (=> b!6127539 (= e!3735075 e!3735077)))

(declare-fun b!6127540 () Bool)

(declare-fun e!3735072 () Bool)

(assert (=> b!6127540 (= e!3735072 call!507963)))

(declare-fun b!6127541 () Bool)

(declare-fun e!3735074 () Bool)

(assert (=> b!6127541 (= e!3735074 e!3735075)))

(assert (=> b!6127541 (= c!1101429 (is-Union!16070 lt!2331463))))

(declare-fun bm!507959 () Bool)

(declare-fun call!507964 () Bool)

(assert (=> bm!507959 (= call!507964 (validRegex!7806 (ite c!1101429 (regTwo!32653 lt!2331463) (regTwo!32652 lt!2331463))))))

(declare-fun d!1919929 () Bool)

(declare-fun res!2539849 () Bool)

(declare-fun e!3735073 () Bool)

(assert (=> d!1919929 (=> res!2539849 e!3735073)))

(assert (=> d!1919929 (= res!2539849 (is-ElementMatch!16070 lt!2331463))))

(assert (=> d!1919929 (= (validRegex!7806 lt!2331463) e!3735073)))

(declare-fun b!6127542 () Bool)

(declare-fun res!2539847 () Bool)

(declare-fun e!3735078 () Bool)

(assert (=> b!6127542 (=> (not res!2539847) (not e!3735078))))

(assert (=> b!6127542 (= res!2539847 call!507962)))

(assert (=> b!6127542 (= e!3735075 e!3735078)))

(declare-fun b!6127543 () Bool)

(assert (=> b!6127543 (= e!3735073 e!3735074)))

(assert (=> b!6127543 (= c!1101428 (is-Star!16070 lt!2331463))))

(declare-fun b!6127544 () Bool)

(assert (=> b!6127544 (= e!3735078 call!507964)))

(declare-fun b!6127545 () Bool)

(assert (=> b!6127545 (= e!3735074 e!3735072)))

(declare-fun res!2539850 () Bool)

(assert (=> b!6127545 (= res!2539850 (not (nullable!6063 (reg!16399 lt!2331463))))))

(assert (=> b!6127545 (=> (not res!2539850) (not e!3735072))))

(declare-fun b!6127546 () Bool)

(declare-fun e!3735076 () Bool)

(assert (=> b!6127546 (= e!3735077 e!3735076)))

(declare-fun res!2539848 () Bool)

(assert (=> b!6127546 (=> (not res!2539848) (not e!3735076))))

(assert (=> b!6127546 (= res!2539848 call!507962)))

(declare-fun b!6127547 () Bool)

(assert (=> b!6127547 (= e!3735076 call!507964)))

(assert (= (and d!1919929 (not res!2539849)) b!6127543))

(assert (= (and b!6127543 c!1101428) b!6127545))

(assert (= (and b!6127543 (not c!1101428)) b!6127541))

(assert (= (and b!6127545 res!2539850) b!6127540))

(assert (= (and b!6127541 c!1101429) b!6127542))

(assert (= (and b!6127541 (not c!1101429)) b!6127539))

(assert (= (and b!6127542 res!2539847) b!6127544))

(assert (= (and b!6127539 (not res!2539846)) b!6127546))

(assert (= (and b!6127546 res!2539848) b!6127547))

(assert (= (or b!6127544 b!6127547) bm!507959))

(assert (= (or b!6127542 b!6127546) bm!507958))

(assert (= (or b!6127540 bm!507958) bm!507957))

(declare-fun m!6971990 () Bool)

(assert (=> bm!507957 m!6971990))

(declare-fun m!6971992 () Bool)

(assert (=> bm!507959 m!6971992))

(declare-fun m!6971994 () Bool)

(assert (=> b!6127545 m!6971994))

(assert (=> d!1919645 d!1919929))

(declare-fun d!1919931 () Bool)

(declare-fun res!2539851 () Bool)

(declare-fun e!3735079 () Bool)

(assert (=> d!1919931 (=> res!2539851 e!3735079)))

(assert (=> d!1919931 (= res!2539851 (is-Nil!64385 (unfocusZipperList!1491 zl!343)))))

(assert (=> d!1919931 (= (forall!15191 (unfocusZipperList!1491 zl!343) lambda!333694) e!3735079)))

(declare-fun b!6127548 () Bool)

(declare-fun e!3735080 () Bool)

(assert (=> b!6127548 (= e!3735079 e!3735080)))

(declare-fun res!2539852 () Bool)

(assert (=> b!6127548 (=> (not res!2539852) (not e!3735080))))

(assert (=> b!6127548 (= res!2539852 (dynLambda!25363 lambda!333694 (h!70833 (unfocusZipperList!1491 zl!343))))))

(declare-fun b!6127549 () Bool)

(assert (=> b!6127549 (= e!3735080 (forall!15191 (t!377974 (unfocusZipperList!1491 zl!343)) lambda!333694))))

(assert (= (and d!1919931 (not res!2539851)) b!6127548))

(assert (= (and b!6127548 res!2539852) b!6127549))

(declare-fun b_lambda!233267 () Bool)

(assert (=> (not b_lambda!233267) (not b!6127548)))

(declare-fun m!6971996 () Bool)

(assert (=> b!6127548 m!6971996))

(declare-fun m!6971998 () Bool)

(assert (=> b!6127549 m!6971998))

(assert (=> d!1919645 d!1919931))

(declare-fun d!1919933 () Bool)

(assert (=> d!1919933 (= ($colon$colon!1947 (exprs!5954 lt!2331410) (ite (or c!1101215 c!1101216) (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (h!70833 (exprs!5954 (h!70834 zl!343))))) (Cons!64385 (ite (or c!1101215 c!1101216) (regTwo!32652 (h!70833 (exprs!5954 (h!70834 zl!343)))) (h!70833 (exprs!5954 (h!70834 zl!343)))) (exprs!5954 lt!2331410)))))

(assert (=> bm!507831 d!1919933))

(assert (=> bs!1520105 d!1919669))

(declare-fun bs!1520213 () Bool)

(declare-fun d!1919935 () Bool)

(assert (= bs!1520213 (and d!1919935 d!1919733)))

(declare-fun lambda!333768 () Int)

(assert (=> bs!1520213 (= lambda!333768 lambda!333740)))

(declare-fun bs!1520214 () Bool)

(assert (= bs!1520214 (and d!1919935 d!1919645)))

(assert (=> bs!1520214 (= lambda!333768 lambda!333694)))

(declare-fun bs!1520215 () Bool)

(assert (= bs!1520215 (and d!1919935 d!1919791)))

(assert (=> bs!1520215 (= lambda!333768 lambda!333742)))

(declare-fun bs!1520216 () Bool)

(assert (= bs!1520216 (and d!1919935 d!1919909)))

(assert (=> bs!1520216 (= lambda!333768 lambda!333766)))

(declare-fun bs!1520217 () Bool)

(assert (= bs!1520217 (and d!1919935 d!1919719)))

(assert (=> bs!1520217 (= lambda!333768 lambda!333732)))

(declare-fun bs!1520218 () Bool)

(assert (= bs!1520218 (and d!1919935 d!1919813)))

(assert (=> bs!1520218 (= lambda!333768 lambda!333748)))

(declare-fun bs!1520219 () Bool)

(assert (= bs!1520219 (and d!1919935 d!1919723)))

(assert (=> bs!1520219 (= lambda!333768 lambda!333735)))

(declare-fun bs!1520220 () Bool)

(assert (= bs!1520220 (and d!1919935 d!1919649)))

(assert (=> bs!1520220 (= lambda!333768 lambda!333698)))

(declare-fun bs!1520221 () Bool)

(assert (= bs!1520221 (and d!1919935 d!1919675)))

(assert (=> bs!1520221 (= lambda!333768 lambda!333703)))

(assert (=> d!1919935 (= (inv!83423 (h!70834 (t!377975 zl!343))) (forall!15191 (exprs!5954 (h!70834 (t!377975 zl!343))) lambda!333768))))

(declare-fun bs!1520222 () Bool)

(assert (= bs!1520222 d!1919935))

(declare-fun m!6972000 () Bool)

(assert (=> bs!1520222 m!6972000))

(assert (=> b!6127058 d!1919935))

(assert (=> d!1919725 d!1919729))

(assert (=> d!1919725 d!1919727))

(declare-fun d!1919937 () Bool)

(declare-fun e!3735083 () Bool)

(assert (=> d!1919937 (= (matchZipper!2082 (set.union lt!2331407 lt!2331412) (t!377976 s!2326)) e!3735083)))

(declare-fun res!2539855 () Bool)

(assert (=> d!1919937 (=> res!2539855 e!3735083)))

(assert (=> d!1919937 (= res!2539855 (matchZipper!2082 lt!2331407 (t!377976 s!2326)))))

(assert (=> d!1919937 true))

(declare-fun _$48!1596 () Unit!157435)

(assert (=> d!1919937 (= (choose!45517 lt!2331407 lt!2331412 (t!377976 s!2326)) _$48!1596)))

(declare-fun b!6127552 () Bool)

(assert (=> b!6127552 (= e!3735083 (matchZipper!2082 lt!2331412 (t!377976 s!2326)))))

(assert (= (and d!1919937 (not res!2539855)) b!6127552))

(assert (=> d!1919937 m!6971146))

(assert (=> d!1919937 m!6971144))

(assert (=> b!6127552 m!6971156))

(assert (=> d!1919725 d!1919937))

(declare-fun d!1919939 () Bool)

(assert (=> d!1919939 (= (isEmptyLang!1497 lt!2331463) (is-EmptyLang!16070 lt!2331463))))

(assert (=> b!6126605 d!1919939))

(declare-fun b!6127553 () Bool)

(declare-fun e!3735086 () (Set Context!10908))

(declare-fun e!3735085 () (Set Context!10908))

(assert (=> b!6127553 (= e!3735086 e!3735085)))

(declare-fun c!1101430 () Bool)

(assert (=> b!6127553 (= c!1101430 (is-Cons!64385 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))))))))

(declare-fun d!1919941 () Bool)

(declare-fun c!1101431 () Bool)

(declare-fun e!3735084 () Bool)

(assert (=> d!1919941 (= c!1101431 e!3735084)))

(declare-fun res!2539856 () Bool)

(assert (=> d!1919941 (=> (not res!2539856) (not e!3735084))))

(assert (=> d!1919941 (= res!2539856 (is-Cons!64385 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))))))))

(assert (=> d!1919941 (= (derivationStepZipperUp!1244 (Context!10909 (t!377974 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))) (h!70835 s!2326)) e!3735086)))

(declare-fun b!6127554 () Bool)

(declare-fun call!507965 () (Set Context!10908))

(assert (=> b!6127554 (= e!3735085 call!507965)))

(declare-fun b!6127555 () Bool)

(assert (=> b!6127555 (= e!3735085 (as set.empty (Set Context!10908)))))

(declare-fun bm!507960 () Bool)

(assert (=> bm!507960 (= call!507965 (derivationStepZipperDown!1318 (h!70833 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343)))))))))) (Context!10909 (t!377974 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343))))))))))) (h!70835 s!2326)))))

(declare-fun b!6127556 () Bool)

(assert (=> b!6127556 (= e!3735084 (nullable!6063 (h!70833 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343))))))))))))))

(declare-fun b!6127557 () Bool)

(assert (=> b!6127557 (= e!3735086 (set.union call!507965 (derivationStepZipperUp!1244 (Context!10909 (t!377974 (exprs!5954 (Context!10909 (t!377974 (exprs!5954 (Context!10909 (Cons!64385 (h!70833 (exprs!5954 (h!70834 zl!343))) (t!377974 (exprs!5954 (h!70834 zl!343))))))))))) (h!70835 s!2326))))))

(assert (= (and d!1919941 res!2539856) b!6127556))

(assert (= (and d!1919941 c!1101431) b!6127557))

(assert (= (and d!1919941 (not c!1101431)) b!6127553))

(assert (= (and b!6127553 c!1101430) b!6127554))

(assert (= (and b!6127553 (not c!1101430)) b!6127555))

(assert (= (or b!6127557 b!6127554) bm!507960))

(declare-fun m!6972002 () Bool)

(assert (=> bm!507960 m!6972002))

(declare-fun m!6972004 () Bool)

(assert (=> b!6127556 m!6972004))

(declare-fun m!6972006 () Bool)

(assert (=> b!6127557 m!6972006))

(assert (=> b!6126666 d!1919941))

(assert (=> d!1919727 d!1919861))

(declare-fun d!1919943 () Bool)

(assert (=> d!1919943 (= (isEmpty!36323 (exprs!5954 (h!70834 zl!343))) (is-Nil!64385 (exprs!5954 (h!70834 zl!343))))))

(assert (=> b!6126905 d!1919943))

(declare-fun bs!1520223 () Bool)

(declare-fun d!1919945 () Bool)

(assert (= bs!1520223 (and d!1919945 d!1919733)))

(declare-fun lambda!333769 () Int)

(assert (=> bs!1520223 (= lambda!333769 lambda!333740)))

(declare-fun bs!1520224 () Bool)

(assert (= bs!1520224 (and d!1919945 d!1919645)))

(assert (=> bs!1520224 (= lambda!333769 lambda!333694)))

(declare-fun bs!1520225 () Bool)

(assert (= bs!1520225 (and d!1919945 d!1919791)))

(assert (=> bs!1520225 (= lambda!333769 lambda!333742)))

(declare-fun bs!1520226 () Bool)

(assert (= bs!1520226 (and d!1919945 d!1919909)))

(assert (=> bs!1520226 (= lambda!333769 lambda!333766)))

(declare-fun bs!1520227 () Bool)

(assert (= bs!1520227 (and d!1919945 d!1919935)))

(assert (=> bs!1520227 (= lambda!333769 lambda!333768)))

(declare-fun bs!1520228 () Bool)

(assert (= bs!1520228 (and d!1919945 d!1919719)))

(assert (=> bs!1520228 (= lambda!333769 lambda!333732)))

(declare-fun bs!1520229 () Bool)

(assert (= bs!1520229 (and d!1919945 d!1919813)))

(assert (=> bs!1520229 (= lambda!333769 lambda!333748)))

(declare-fun bs!1520230 () Bool)

(assert (= bs!1520230 (and d!1919945 d!1919723)))

(assert (=> bs!1520230 (= lambda!333769 lambda!333735)))

(declare-fun bs!1520231 () Bool)

(assert (= bs!1520231 (and d!1919945 d!1919649)))

(assert (=> bs!1520231 (= lambda!333769 lambda!333698)))

(declare-fun bs!1520232 () Bool)

(assert (= bs!1520232 (and d!1919945 d!1919675)))

(assert (=> bs!1520232 (= lambda!333769 lambda!333703)))

(assert (=> d!1919945 (= (inv!83423 setElem!41399) (forall!15191 (exprs!5954 setElem!41399) lambda!333769))))

(declare-fun bs!1520233 () Bool)

(assert (= bs!1520233 d!1919945))

(declare-fun m!6972008 () Bool)

(assert (=> bs!1520233 m!6972008))

(assert (=> setNonEmpty!41399 d!1919945))

(declare-fun c!1101433 () Bool)

(declare-fun c!1101432 () Bool)

(declare-fun call!507967 () Bool)

(declare-fun bm!507961 () Bool)

(assert (=> bm!507961 (= call!507967 (validRegex!7806 (ite c!1101432 (reg!16399 lt!2331523) (ite c!1101433 (regOne!32653 lt!2331523) (regOne!32652 lt!2331523)))))))

(declare-fun bm!507962 () Bool)

(declare-fun call!507966 () Bool)

(assert (=> bm!507962 (= call!507966 call!507967)))

(declare-fun b!6127558 () Bool)

(declare-fun res!2539857 () Bool)

(declare-fun e!3735092 () Bool)

(assert (=> b!6127558 (=> res!2539857 e!3735092)))

(assert (=> b!6127558 (= res!2539857 (not (is-Concat!24915 lt!2331523)))))

(declare-fun e!3735090 () Bool)

(assert (=> b!6127558 (= e!3735090 e!3735092)))

(declare-fun b!6127559 () Bool)

(declare-fun e!3735087 () Bool)

(assert (=> b!6127559 (= e!3735087 call!507967)))

(declare-fun b!6127560 () Bool)

(declare-fun e!3735089 () Bool)

(assert (=> b!6127560 (= e!3735089 e!3735090)))

(assert (=> b!6127560 (= c!1101433 (is-Union!16070 lt!2331523))))

(declare-fun bm!507963 () Bool)

(declare-fun call!507968 () Bool)

(assert (=> bm!507963 (= call!507968 (validRegex!7806 (ite c!1101433 (regTwo!32653 lt!2331523) (regTwo!32652 lt!2331523))))))

(declare-fun d!1919947 () Bool)

(declare-fun res!2539860 () Bool)

(declare-fun e!3735088 () Bool)

(assert (=> d!1919947 (=> res!2539860 e!3735088)))

(assert (=> d!1919947 (= res!2539860 (is-ElementMatch!16070 lt!2331523))))

(assert (=> d!1919947 (= (validRegex!7806 lt!2331523) e!3735088)))

(declare-fun b!6127561 () Bool)

(declare-fun res!2539858 () Bool)

(declare-fun e!3735093 () Bool)

(assert (=> b!6127561 (=> (not res!2539858) (not e!3735093))))

(assert (=> b!6127561 (= res!2539858 call!507966)))

(assert (=> b!6127561 (= e!3735090 e!3735093)))

(declare-fun b!6127562 () Bool)

(assert (=> b!6127562 (= e!3735088 e!3735089)))

(assert (=> b!6127562 (= c!1101432 (is-Star!16070 lt!2331523))))

(declare-fun b!6127563 () Bool)

(assert (=> b!6127563 (= e!3735093 call!507968)))

(declare-fun b!6127564 () Bool)

(assert (=> b!6127564 (= e!3735089 e!3735087)))

(declare-fun res!2539861 () Bool)

(assert (=> b!6127564 (= res!2539861 (not (nullable!6063 (reg!16399 lt!2331523))))))

(assert (=> b!6127564 (=> (not res!2539861) (not e!3735087))))

(declare-fun b!6127565 () Bool)

(declare-fun e!3735091 () Bool)

(assert (=> b!6127565 (= e!3735092 e!3735091)))

(declare-fun res!2539859 () Bool)

(assert (=> b!6127565 (=> (not res!2539859) (not e!3735091))))

(assert (=> b!6127565 (= res!2539859 call!507966)))

(declare-fun b!6127566 () Bool)

(assert (=> b!6127566 (= e!3735091 call!507968)))

(assert (= (and d!1919947 (not res!2539860)) b!6127562))

(assert (= (and b!6127562 c!1101432) b!6127564))

(assert (= (and b!6127562 (not c!1101432)) b!6127560))

(assert (= (and b!6127564 res!2539861) b!6127559))

(assert (= (and b!6127560 c!1101433) b!6127561))

(assert (= (and b!6127560 (not c!1101433)) b!6127558))

(assert (= (and b!6127561 res!2539858) b!6127563))

(assert (= (and b!6127558 (not res!2539857)) b!6127565))

(assert (= (and b!6127565 res!2539859) b!6127566))

(assert (= (or b!6127563 b!6127566) bm!507963))

(assert (= (or b!6127561 b!6127565) bm!507962))

(assert (= (or b!6127559 bm!507962) bm!507961))

(declare-fun m!6972010 () Bool)

(assert (=> bm!507961 m!6972010))

(declare-fun m!6972012 () Bool)

(assert (=> bm!507963 m!6972012))

(declare-fun m!6972014 () Bool)

(assert (=> b!6127564 m!6972014))

(assert (=> d!1919719 d!1919947))

(declare-fun d!1919949 () Bool)

(declare-fun res!2539862 () Bool)

(declare-fun e!3735094 () Bool)

(assert (=> d!1919949 (=> res!2539862 e!3735094)))

(assert (=> d!1919949 (= res!2539862 (is-Nil!64385 (exprs!5954 (h!70834 zl!343))))))

(assert (=> d!1919949 (= (forall!15191 (exprs!5954 (h!70834 zl!343)) lambda!333732) e!3735094)))

(declare-fun b!6127567 () Bool)

(declare-fun e!3735095 () Bool)

(assert (=> b!6127567 (= e!3735094 e!3735095)))

(declare-fun res!2539863 () Bool)

(assert (=> b!6127567 (=> (not res!2539863) (not e!3735095))))

(assert (=> b!6127567 (= res!2539863 (dynLambda!25363 lambda!333732 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun b!6127568 () Bool)

(assert (=> b!6127568 (= e!3735095 (forall!15191 (t!377974 (exprs!5954 (h!70834 zl!343))) lambda!333732))))

(assert (= (and d!1919949 (not res!2539862)) b!6127567))

(assert (= (and b!6127567 res!2539863) b!6127568))

(declare-fun b_lambda!233269 () Bool)

(assert (=> (not b_lambda!233269) (not b!6127567)))

(declare-fun m!6972016 () Bool)

(assert (=> b!6127567 m!6972016))

(declare-fun m!6972018 () Bool)

(assert (=> b!6127568 m!6972018))

(assert (=> d!1919719 d!1919949))

(declare-fun e!3735096 () Bool)

(assert (=> b!6127062 (= tp!1712309 e!3735096)))

(declare-fun b!6127570 () Bool)

(declare-fun tp!1712389 () Bool)

(declare-fun tp!1712387 () Bool)

(assert (=> b!6127570 (= e!3735096 (and tp!1712389 tp!1712387))))

(declare-fun b!6127569 () Bool)

(assert (=> b!6127569 (= e!3735096 tp_is_empty!41393)))

(declare-fun b!6127572 () Bool)

(declare-fun tp!1712390 () Bool)

(declare-fun tp!1712391 () Bool)

(assert (=> b!6127572 (= e!3735096 (and tp!1712390 tp!1712391))))

(declare-fun b!6127571 () Bool)

(declare-fun tp!1712388 () Bool)

(assert (=> b!6127571 (= e!3735096 tp!1712388)))

(assert (= (and b!6127062 (is-ElementMatch!16070 (regOne!32652 (regOne!32653 r!7292)))) b!6127569))

(assert (= (and b!6127062 (is-Concat!24915 (regOne!32652 (regOne!32653 r!7292)))) b!6127570))

(assert (= (and b!6127062 (is-Star!16070 (regOne!32652 (regOne!32653 r!7292)))) b!6127571))

(assert (= (and b!6127062 (is-Union!16070 (regOne!32652 (regOne!32653 r!7292)))) b!6127572))

(declare-fun e!3735097 () Bool)

(assert (=> b!6127062 (= tp!1712307 e!3735097)))

(declare-fun b!6127574 () Bool)

(declare-fun tp!1712394 () Bool)

(declare-fun tp!1712392 () Bool)

(assert (=> b!6127574 (= e!3735097 (and tp!1712394 tp!1712392))))

(declare-fun b!6127573 () Bool)

(assert (=> b!6127573 (= e!3735097 tp_is_empty!41393)))

(declare-fun b!6127576 () Bool)

(declare-fun tp!1712395 () Bool)

(declare-fun tp!1712396 () Bool)

(assert (=> b!6127576 (= e!3735097 (and tp!1712395 tp!1712396))))

(declare-fun b!6127575 () Bool)

(declare-fun tp!1712393 () Bool)

(assert (=> b!6127575 (= e!3735097 tp!1712393)))

(assert (= (and b!6127062 (is-ElementMatch!16070 (regTwo!32652 (regOne!32653 r!7292)))) b!6127573))

(assert (= (and b!6127062 (is-Concat!24915 (regTwo!32652 (regOne!32653 r!7292)))) b!6127574))

(assert (= (and b!6127062 (is-Star!16070 (regTwo!32652 (regOne!32653 r!7292)))) b!6127575))

(assert (= (and b!6127062 (is-Union!16070 (regTwo!32652 (regOne!32653 r!7292)))) b!6127576))

(declare-fun e!3735098 () Bool)

(assert (=> b!6127063 (= tp!1712308 e!3735098)))

(declare-fun b!6127578 () Bool)

(declare-fun tp!1712399 () Bool)

(declare-fun tp!1712397 () Bool)

(assert (=> b!6127578 (= e!3735098 (and tp!1712399 tp!1712397))))

(declare-fun b!6127577 () Bool)

(assert (=> b!6127577 (= e!3735098 tp_is_empty!41393)))

(declare-fun b!6127580 () Bool)

(declare-fun tp!1712400 () Bool)

(declare-fun tp!1712401 () Bool)

(assert (=> b!6127580 (= e!3735098 (and tp!1712400 tp!1712401))))

(declare-fun b!6127579 () Bool)

(declare-fun tp!1712398 () Bool)

(assert (=> b!6127579 (= e!3735098 tp!1712398)))

(assert (= (and b!6127063 (is-ElementMatch!16070 (reg!16399 (regOne!32653 r!7292)))) b!6127577))

(assert (= (and b!6127063 (is-Concat!24915 (reg!16399 (regOne!32653 r!7292)))) b!6127578))

(assert (= (and b!6127063 (is-Star!16070 (reg!16399 (regOne!32653 r!7292)))) b!6127579))

(assert (= (and b!6127063 (is-Union!16070 (reg!16399 (regOne!32653 r!7292)))) b!6127580))

(declare-fun e!3735099 () Bool)

(assert (=> b!6127017 (= tp!1712277 e!3735099)))

(declare-fun b!6127582 () Bool)

(declare-fun tp!1712404 () Bool)

(declare-fun tp!1712402 () Bool)

(assert (=> b!6127582 (= e!3735099 (and tp!1712404 tp!1712402))))

(declare-fun b!6127581 () Bool)

(assert (=> b!6127581 (= e!3735099 tp_is_empty!41393)))

(declare-fun b!6127584 () Bool)

(declare-fun tp!1712405 () Bool)

(declare-fun tp!1712406 () Bool)

(assert (=> b!6127584 (= e!3735099 (and tp!1712405 tp!1712406))))

(declare-fun b!6127583 () Bool)

(declare-fun tp!1712403 () Bool)

(assert (=> b!6127583 (= e!3735099 tp!1712403)))

(assert (= (and b!6127017 (is-ElementMatch!16070 (regOne!32652 (regOne!32652 r!7292)))) b!6127581))

(assert (= (and b!6127017 (is-Concat!24915 (regOne!32652 (regOne!32652 r!7292)))) b!6127582))

(assert (= (and b!6127017 (is-Star!16070 (regOne!32652 (regOne!32652 r!7292)))) b!6127583))

(assert (= (and b!6127017 (is-Union!16070 (regOne!32652 (regOne!32652 r!7292)))) b!6127584))

(declare-fun e!3735100 () Bool)

(assert (=> b!6127017 (= tp!1712275 e!3735100)))

(declare-fun b!6127586 () Bool)

(declare-fun tp!1712409 () Bool)

(declare-fun tp!1712407 () Bool)

(assert (=> b!6127586 (= e!3735100 (and tp!1712409 tp!1712407))))

(declare-fun b!6127585 () Bool)

(assert (=> b!6127585 (= e!3735100 tp_is_empty!41393)))

(declare-fun b!6127588 () Bool)

(declare-fun tp!1712410 () Bool)

(declare-fun tp!1712411 () Bool)

(assert (=> b!6127588 (= e!3735100 (and tp!1712410 tp!1712411))))

(declare-fun b!6127587 () Bool)

(declare-fun tp!1712408 () Bool)

(assert (=> b!6127587 (= e!3735100 tp!1712408)))

(assert (= (and b!6127017 (is-ElementMatch!16070 (regTwo!32652 (regOne!32652 r!7292)))) b!6127585))

(assert (= (and b!6127017 (is-Concat!24915 (regTwo!32652 (regOne!32652 r!7292)))) b!6127586))

(assert (= (and b!6127017 (is-Star!16070 (regTwo!32652 (regOne!32652 r!7292)))) b!6127587))

(assert (= (and b!6127017 (is-Union!16070 (regTwo!32652 (regOne!32652 r!7292)))) b!6127588))

(declare-fun e!3735101 () Bool)

(assert (=> b!6127064 (= tp!1712310 e!3735101)))

(declare-fun b!6127590 () Bool)

(declare-fun tp!1712414 () Bool)

(declare-fun tp!1712412 () Bool)

(assert (=> b!6127590 (= e!3735101 (and tp!1712414 tp!1712412))))

(declare-fun b!6127589 () Bool)

(assert (=> b!6127589 (= e!3735101 tp_is_empty!41393)))

(declare-fun b!6127592 () Bool)

(declare-fun tp!1712415 () Bool)

(declare-fun tp!1712416 () Bool)

(assert (=> b!6127592 (= e!3735101 (and tp!1712415 tp!1712416))))

(declare-fun b!6127591 () Bool)

(declare-fun tp!1712413 () Bool)

(assert (=> b!6127591 (= e!3735101 tp!1712413)))

(assert (= (and b!6127064 (is-ElementMatch!16070 (regOne!32653 (regOne!32653 r!7292)))) b!6127589))

(assert (= (and b!6127064 (is-Concat!24915 (regOne!32653 (regOne!32653 r!7292)))) b!6127590))

(assert (= (and b!6127064 (is-Star!16070 (regOne!32653 (regOne!32653 r!7292)))) b!6127591))

(assert (= (and b!6127064 (is-Union!16070 (regOne!32653 (regOne!32653 r!7292)))) b!6127592))

(declare-fun e!3735108 () Bool)

(assert (=> b!6127064 (= tp!1712311 e!3735108)))

(declare-fun b!6127605 () Bool)

(declare-fun tp!1712419 () Bool)

(declare-fun tp!1712417 () Bool)

(assert (=> b!6127605 (= e!3735108 (and tp!1712419 tp!1712417))))

(declare-fun b!6127604 () Bool)

(assert (=> b!6127604 (= e!3735108 tp_is_empty!41393)))

(declare-fun b!6127607 () Bool)

(declare-fun tp!1712420 () Bool)

(declare-fun tp!1712421 () Bool)

(assert (=> b!6127607 (= e!3735108 (and tp!1712420 tp!1712421))))

(declare-fun b!6127606 () Bool)

(declare-fun tp!1712418 () Bool)

(assert (=> b!6127606 (= e!3735108 tp!1712418)))

(assert (= (and b!6127064 (is-ElementMatch!16070 (regTwo!32653 (regOne!32653 r!7292)))) b!6127604))

(assert (= (and b!6127064 (is-Concat!24915 (regTwo!32653 (regOne!32653 r!7292)))) b!6127605))

(assert (= (and b!6127064 (is-Star!16070 (regTwo!32653 (regOne!32653 r!7292)))) b!6127606))

(assert (= (and b!6127064 (is-Union!16070 (regTwo!32653 (regOne!32653 r!7292)))) b!6127607))

(declare-fun e!3735109 () Bool)

(assert (=> b!6127018 (= tp!1712276 e!3735109)))

(declare-fun b!6127609 () Bool)

(declare-fun tp!1712424 () Bool)

(declare-fun tp!1712422 () Bool)

(assert (=> b!6127609 (= e!3735109 (and tp!1712424 tp!1712422))))

(declare-fun b!6127608 () Bool)

(assert (=> b!6127608 (= e!3735109 tp_is_empty!41393)))

(declare-fun b!6127611 () Bool)

(declare-fun tp!1712425 () Bool)

(declare-fun tp!1712426 () Bool)

(assert (=> b!6127611 (= e!3735109 (and tp!1712425 tp!1712426))))

(declare-fun b!6127610 () Bool)

(declare-fun tp!1712423 () Bool)

(assert (=> b!6127610 (= e!3735109 tp!1712423)))

(assert (= (and b!6127018 (is-ElementMatch!16070 (reg!16399 (regOne!32652 r!7292)))) b!6127608))

(assert (= (and b!6127018 (is-Concat!24915 (reg!16399 (regOne!32652 r!7292)))) b!6127609))

(assert (= (and b!6127018 (is-Star!16070 (reg!16399 (regOne!32652 r!7292)))) b!6127610))

(assert (= (and b!6127018 (is-Union!16070 (reg!16399 (regOne!32652 r!7292)))) b!6127611))

(declare-fun e!3735110 () Bool)

(assert (=> b!6127019 (= tp!1712278 e!3735110)))

(declare-fun b!6127613 () Bool)

(declare-fun tp!1712429 () Bool)

(declare-fun tp!1712427 () Bool)

(assert (=> b!6127613 (= e!3735110 (and tp!1712429 tp!1712427))))

(declare-fun b!6127612 () Bool)

(assert (=> b!6127612 (= e!3735110 tp_is_empty!41393)))

(declare-fun b!6127615 () Bool)

(declare-fun tp!1712430 () Bool)

(declare-fun tp!1712431 () Bool)

(assert (=> b!6127615 (= e!3735110 (and tp!1712430 tp!1712431))))

(declare-fun b!6127614 () Bool)

(declare-fun tp!1712428 () Bool)

(assert (=> b!6127614 (= e!3735110 tp!1712428)))

(assert (= (and b!6127019 (is-ElementMatch!16070 (regOne!32653 (regOne!32652 r!7292)))) b!6127612))

(assert (= (and b!6127019 (is-Concat!24915 (regOne!32653 (regOne!32652 r!7292)))) b!6127613))

(assert (= (and b!6127019 (is-Star!16070 (regOne!32653 (regOne!32652 r!7292)))) b!6127614))

(assert (= (and b!6127019 (is-Union!16070 (regOne!32653 (regOne!32652 r!7292)))) b!6127615))

(declare-fun e!3735111 () Bool)

(assert (=> b!6127019 (= tp!1712279 e!3735111)))

(declare-fun b!6127617 () Bool)

(declare-fun tp!1712434 () Bool)

(declare-fun tp!1712432 () Bool)

(assert (=> b!6127617 (= e!3735111 (and tp!1712434 tp!1712432))))

(declare-fun b!6127616 () Bool)

(assert (=> b!6127616 (= e!3735111 tp_is_empty!41393)))

(declare-fun b!6127619 () Bool)

(declare-fun tp!1712435 () Bool)

(declare-fun tp!1712436 () Bool)

(assert (=> b!6127619 (= e!3735111 (and tp!1712435 tp!1712436))))

(declare-fun b!6127618 () Bool)

(declare-fun tp!1712433 () Bool)

(assert (=> b!6127618 (= e!3735111 tp!1712433)))

(assert (= (and b!6127019 (is-ElementMatch!16070 (regTwo!32653 (regOne!32652 r!7292)))) b!6127616))

(assert (= (and b!6127019 (is-Concat!24915 (regTwo!32653 (regOne!32652 r!7292)))) b!6127617))

(assert (= (and b!6127019 (is-Star!16070 (regTwo!32653 (regOne!32652 r!7292)))) b!6127618))

(assert (= (and b!6127019 (is-Union!16070 (regTwo!32653 (regOne!32652 r!7292)))) b!6127619))

(declare-fun e!3735112 () Bool)

(assert (=> b!6127031 (= tp!1712289 e!3735112)))

(declare-fun b!6127621 () Bool)

(declare-fun tp!1712439 () Bool)

(declare-fun tp!1712437 () Bool)

(assert (=> b!6127621 (= e!3735112 (and tp!1712439 tp!1712437))))

(declare-fun b!6127620 () Bool)

(assert (=> b!6127620 (= e!3735112 tp_is_empty!41393)))

(declare-fun b!6127623 () Bool)

(declare-fun tp!1712440 () Bool)

(declare-fun tp!1712441 () Bool)

(assert (=> b!6127623 (= e!3735112 (and tp!1712440 tp!1712441))))

(declare-fun b!6127622 () Bool)

(declare-fun tp!1712438 () Bool)

(assert (=> b!6127622 (= e!3735112 tp!1712438)))

(assert (= (and b!6127031 (is-ElementMatch!16070 (reg!16399 (reg!16399 r!7292)))) b!6127620))

(assert (= (and b!6127031 (is-Concat!24915 (reg!16399 (reg!16399 r!7292)))) b!6127621))

(assert (= (and b!6127031 (is-Star!16070 (reg!16399 (reg!16399 r!7292)))) b!6127622))

(assert (= (and b!6127031 (is-Union!16070 (reg!16399 (reg!16399 r!7292)))) b!6127623))

(declare-fun e!3735113 () Bool)

(assert (=> b!6127032 (= tp!1712291 e!3735113)))

(declare-fun b!6127625 () Bool)

(declare-fun tp!1712444 () Bool)

(declare-fun tp!1712442 () Bool)

(assert (=> b!6127625 (= e!3735113 (and tp!1712444 tp!1712442))))

(declare-fun b!6127624 () Bool)

(assert (=> b!6127624 (= e!3735113 tp_is_empty!41393)))

(declare-fun b!6127627 () Bool)

(declare-fun tp!1712445 () Bool)

(declare-fun tp!1712446 () Bool)

(assert (=> b!6127627 (= e!3735113 (and tp!1712445 tp!1712446))))

(declare-fun b!6127626 () Bool)

(declare-fun tp!1712443 () Bool)

(assert (=> b!6127626 (= e!3735113 tp!1712443)))

(assert (= (and b!6127032 (is-ElementMatch!16070 (regOne!32653 (reg!16399 r!7292)))) b!6127624))

(assert (= (and b!6127032 (is-Concat!24915 (regOne!32653 (reg!16399 r!7292)))) b!6127625))

(assert (= (and b!6127032 (is-Star!16070 (regOne!32653 (reg!16399 r!7292)))) b!6127626))

(assert (= (and b!6127032 (is-Union!16070 (regOne!32653 (reg!16399 r!7292)))) b!6127627))

(declare-fun e!3735114 () Bool)

(assert (=> b!6127032 (= tp!1712292 e!3735114)))

(declare-fun b!6127629 () Bool)

(declare-fun tp!1712449 () Bool)

(declare-fun tp!1712447 () Bool)

(assert (=> b!6127629 (= e!3735114 (and tp!1712449 tp!1712447))))

(declare-fun b!6127628 () Bool)

(assert (=> b!6127628 (= e!3735114 tp_is_empty!41393)))

(declare-fun b!6127631 () Bool)

(declare-fun tp!1712450 () Bool)

(declare-fun tp!1712451 () Bool)

(assert (=> b!6127631 (= e!3735114 (and tp!1712450 tp!1712451))))

(declare-fun b!6127630 () Bool)

(declare-fun tp!1712448 () Bool)

(assert (=> b!6127630 (= e!3735114 tp!1712448)))

(assert (= (and b!6127032 (is-ElementMatch!16070 (regTwo!32653 (reg!16399 r!7292)))) b!6127628))

(assert (= (and b!6127032 (is-Concat!24915 (regTwo!32653 (reg!16399 r!7292)))) b!6127629))

(assert (= (and b!6127032 (is-Star!16070 (regTwo!32653 (reg!16399 r!7292)))) b!6127630))

(assert (= (and b!6127032 (is-Union!16070 (regTwo!32653 (reg!16399 r!7292)))) b!6127631))

(declare-fun b!6127632 () Bool)

(declare-fun e!3735115 () Bool)

(declare-fun tp!1712452 () Bool)

(declare-fun tp!1712453 () Bool)

(assert (=> b!6127632 (= e!3735115 (and tp!1712452 tp!1712453))))

(assert (=> b!6127037 (= tp!1712297 e!3735115)))

(assert (= (and b!6127037 (is-Cons!64385 (exprs!5954 setElem!41399))) b!6127632))

(declare-fun e!3735116 () Bool)

(assert (=> b!6127067 (= tp!1712313 e!3735116)))

(declare-fun b!6127634 () Bool)

(declare-fun tp!1712456 () Bool)

(declare-fun tp!1712454 () Bool)

(assert (=> b!6127634 (= e!3735116 (and tp!1712456 tp!1712454))))

(declare-fun b!6127633 () Bool)

(assert (=> b!6127633 (= e!3735116 tp_is_empty!41393)))

(declare-fun b!6127636 () Bool)

(declare-fun tp!1712457 () Bool)

(declare-fun tp!1712458 () Bool)

(assert (=> b!6127636 (= e!3735116 (and tp!1712457 tp!1712458))))

(declare-fun b!6127635 () Bool)

(declare-fun tp!1712455 () Bool)

(assert (=> b!6127635 (= e!3735116 tp!1712455)))

(assert (= (and b!6127067 (is-ElementMatch!16070 (reg!16399 (regTwo!32653 r!7292)))) b!6127633))

(assert (= (and b!6127067 (is-Concat!24915 (reg!16399 (regTwo!32653 r!7292)))) b!6127634))

(assert (= (and b!6127067 (is-Star!16070 (reg!16399 (regTwo!32653 r!7292)))) b!6127635))

(assert (= (and b!6127067 (is-Union!16070 (reg!16399 (regTwo!32653 r!7292)))) b!6127636))

(declare-fun e!3735117 () Bool)

(assert (=> b!6127021 (= tp!1712282 e!3735117)))

(declare-fun b!6127638 () Bool)

(declare-fun tp!1712461 () Bool)

(declare-fun tp!1712459 () Bool)

(assert (=> b!6127638 (= e!3735117 (and tp!1712461 tp!1712459))))

(declare-fun b!6127637 () Bool)

(assert (=> b!6127637 (= e!3735117 tp_is_empty!41393)))

(declare-fun b!6127640 () Bool)

(declare-fun tp!1712462 () Bool)

(declare-fun tp!1712463 () Bool)

(assert (=> b!6127640 (= e!3735117 (and tp!1712462 tp!1712463))))

(declare-fun b!6127639 () Bool)

(declare-fun tp!1712460 () Bool)

(assert (=> b!6127639 (= e!3735117 tp!1712460)))

(assert (= (and b!6127021 (is-ElementMatch!16070 (regOne!32652 (regTwo!32652 r!7292)))) b!6127637))

(assert (= (and b!6127021 (is-Concat!24915 (regOne!32652 (regTwo!32652 r!7292)))) b!6127638))

(assert (= (and b!6127021 (is-Star!16070 (regOne!32652 (regTwo!32652 r!7292)))) b!6127639))

(assert (= (and b!6127021 (is-Union!16070 (regOne!32652 (regTwo!32652 r!7292)))) b!6127640))

(declare-fun e!3735118 () Bool)

(assert (=> b!6127021 (= tp!1712280 e!3735118)))

(declare-fun b!6127642 () Bool)

(declare-fun tp!1712466 () Bool)

(declare-fun tp!1712464 () Bool)

(assert (=> b!6127642 (= e!3735118 (and tp!1712466 tp!1712464))))

(declare-fun b!6127641 () Bool)

(assert (=> b!6127641 (= e!3735118 tp_is_empty!41393)))

(declare-fun b!6127644 () Bool)

(declare-fun tp!1712467 () Bool)

(declare-fun tp!1712468 () Bool)

(assert (=> b!6127644 (= e!3735118 (and tp!1712467 tp!1712468))))

(declare-fun b!6127643 () Bool)

(declare-fun tp!1712465 () Bool)

(assert (=> b!6127643 (= e!3735118 tp!1712465)))

(assert (= (and b!6127021 (is-ElementMatch!16070 (regTwo!32652 (regTwo!32652 r!7292)))) b!6127641))

(assert (= (and b!6127021 (is-Concat!24915 (regTwo!32652 (regTwo!32652 r!7292)))) b!6127642))

(assert (= (and b!6127021 (is-Star!16070 (regTwo!32652 (regTwo!32652 r!7292)))) b!6127643))

(assert (= (and b!6127021 (is-Union!16070 (regTwo!32652 (regTwo!32652 r!7292)))) b!6127644))

(declare-fun e!3735119 () Bool)

(assert (=> b!6127068 (= tp!1712315 e!3735119)))

(declare-fun b!6127646 () Bool)

(declare-fun tp!1712471 () Bool)

(declare-fun tp!1712469 () Bool)

(assert (=> b!6127646 (= e!3735119 (and tp!1712471 tp!1712469))))

(declare-fun b!6127645 () Bool)

(assert (=> b!6127645 (= e!3735119 tp_is_empty!41393)))

(declare-fun b!6127648 () Bool)

(declare-fun tp!1712472 () Bool)

(declare-fun tp!1712473 () Bool)

(assert (=> b!6127648 (= e!3735119 (and tp!1712472 tp!1712473))))

(declare-fun b!6127647 () Bool)

(declare-fun tp!1712470 () Bool)

(assert (=> b!6127647 (= e!3735119 tp!1712470)))

(assert (= (and b!6127068 (is-ElementMatch!16070 (regOne!32653 (regTwo!32653 r!7292)))) b!6127645))

(assert (= (and b!6127068 (is-Concat!24915 (regOne!32653 (regTwo!32653 r!7292)))) b!6127646))

(assert (= (and b!6127068 (is-Star!16070 (regOne!32653 (regTwo!32653 r!7292)))) b!6127647))

(assert (= (and b!6127068 (is-Union!16070 (regOne!32653 (regTwo!32653 r!7292)))) b!6127648))

(declare-fun e!3735120 () Bool)

(assert (=> b!6127068 (= tp!1712316 e!3735120)))

(declare-fun b!6127650 () Bool)

(declare-fun tp!1712476 () Bool)

(declare-fun tp!1712474 () Bool)

(assert (=> b!6127650 (= e!3735120 (and tp!1712476 tp!1712474))))

(declare-fun b!6127649 () Bool)

(assert (=> b!6127649 (= e!3735120 tp_is_empty!41393)))

(declare-fun b!6127652 () Bool)

(declare-fun tp!1712477 () Bool)

(declare-fun tp!1712478 () Bool)

(assert (=> b!6127652 (= e!3735120 (and tp!1712477 tp!1712478))))

(declare-fun b!6127651 () Bool)

(declare-fun tp!1712475 () Bool)

(assert (=> b!6127651 (= e!3735120 tp!1712475)))

(assert (= (and b!6127068 (is-ElementMatch!16070 (regTwo!32653 (regTwo!32653 r!7292)))) b!6127649))

(assert (= (and b!6127068 (is-Concat!24915 (regTwo!32653 (regTwo!32653 r!7292)))) b!6127650))

(assert (= (and b!6127068 (is-Star!16070 (regTwo!32653 (regTwo!32653 r!7292)))) b!6127651))

(assert (= (and b!6127068 (is-Union!16070 (regTwo!32653 (regTwo!32653 r!7292)))) b!6127652))

(declare-fun e!3735121 () Bool)

(assert (=> b!6127022 (= tp!1712281 e!3735121)))

(declare-fun b!6127654 () Bool)

(declare-fun tp!1712481 () Bool)

(declare-fun tp!1712479 () Bool)

(assert (=> b!6127654 (= e!3735121 (and tp!1712481 tp!1712479))))

(declare-fun b!6127653 () Bool)

(assert (=> b!6127653 (= e!3735121 tp_is_empty!41393)))

(declare-fun b!6127656 () Bool)

(declare-fun tp!1712482 () Bool)

(declare-fun tp!1712483 () Bool)

(assert (=> b!6127656 (= e!3735121 (and tp!1712482 tp!1712483))))

(declare-fun b!6127655 () Bool)

(declare-fun tp!1712480 () Bool)

(assert (=> b!6127655 (= e!3735121 tp!1712480)))

(assert (= (and b!6127022 (is-ElementMatch!16070 (reg!16399 (regTwo!32652 r!7292)))) b!6127653))

(assert (= (and b!6127022 (is-Concat!24915 (reg!16399 (regTwo!32652 r!7292)))) b!6127654))

(assert (= (and b!6127022 (is-Star!16070 (reg!16399 (regTwo!32652 r!7292)))) b!6127655))

(assert (= (and b!6127022 (is-Union!16070 (reg!16399 (regTwo!32652 r!7292)))) b!6127656))

(declare-fun e!3735122 () Bool)

(assert (=> b!6127060 (= tp!1712305 e!3735122)))

(declare-fun b!6127658 () Bool)

(declare-fun tp!1712486 () Bool)

(declare-fun tp!1712484 () Bool)

(assert (=> b!6127658 (= e!3735122 (and tp!1712486 tp!1712484))))

(declare-fun b!6127657 () Bool)

(assert (=> b!6127657 (= e!3735122 tp_is_empty!41393)))

(declare-fun b!6127660 () Bool)

(declare-fun tp!1712487 () Bool)

(declare-fun tp!1712488 () Bool)

(assert (=> b!6127660 (= e!3735122 (and tp!1712487 tp!1712488))))

(declare-fun b!6127659 () Bool)

(declare-fun tp!1712485 () Bool)

(assert (=> b!6127659 (= e!3735122 tp!1712485)))

(assert (= (and b!6127060 (is-ElementMatch!16070 (h!70833 (exprs!5954 setElem!41393)))) b!6127657))

(assert (= (and b!6127060 (is-Concat!24915 (h!70833 (exprs!5954 setElem!41393)))) b!6127658))

(assert (= (and b!6127060 (is-Star!16070 (h!70833 (exprs!5954 setElem!41393)))) b!6127659))

(assert (= (and b!6127060 (is-Union!16070 (h!70833 (exprs!5954 setElem!41393)))) b!6127660))

(declare-fun b!6127661 () Bool)

(declare-fun e!3735123 () Bool)

(declare-fun tp!1712489 () Bool)

(declare-fun tp!1712490 () Bool)

(assert (=> b!6127661 (= e!3735123 (and tp!1712489 tp!1712490))))

(assert (=> b!6127060 (= tp!1712306 e!3735123)))

(assert (= (and b!6127060 (is-Cons!64385 (t!377974 (exprs!5954 setElem!41393)))) b!6127661))

(declare-fun e!3735124 () Bool)

(assert (=> b!6127023 (= tp!1712283 e!3735124)))

(declare-fun b!6127663 () Bool)

(declare-fun tp!1712493 () Bool)

(declare-fun tp!1712491 () Bool)

(assert (=> b!6127663 (= e!3735124 (and tp!1712493 tp!1712491))))

(declare-fun b!6127662 () Bool)

(assert (=> b!6127662 (= e!3735124 tp_is_empty!41393)))

(declare-fun b!6127665 () Bool)

(declare-fun tp!1712494 () Bool)

(declare-fun tp!1712495 () Bool)

(assert (=> b!6127665 (= e!3735124 (and tp!1712494 tp!1712495))))

(declare-fun b!6127664 () Bool)

(declare-fun tp!1712492 () Bool)

(assert (=> b!6127664 (= e!3735124 tp!1712492)))

(assert (= (and b!6127023 (is-ElementMatch!16070 (regOne!32653 (regTwo!32652 r!7292)))) b!6127662))

(assert (= (and b!6127023 (is-Concat!24915 (regOne!32653 (regTwo!32652 r!7292)))) b!6127663))

(assert (= (and b!6127023 (is-Star!16070 (regOne!32653 (regTwo!32652 r!7292)))) b!6127664))

(assert (= (and b!6127023 (is-Union!16070 (regOne!32653 (regTwo!32652 r!7292)))) b!6127665))

(declare-fun e!3735125 () Bool)

(assert (=> b!6127023 (= tp!1712284 e!3735125)))

(declare-fun b!6127667 () Bool)

(declare-fun tp!1712498 () Bool)

(declare-fun tp!1712496 () Bool)

(assert (=> b!6127667 (= e!3735125 (and tp!1712498 tp!1712496))))

(declare-fun b!6127666 () Bool)

(assert (=> b!6127666 (= e!3735125 tp_is_empty!41393)))

(declare-fun b!6127669 () Bool)

(declare-fun tp!1712499 () Bool)

(declare-fun tp!1712500 () Bool)

(assert (=> b!6127669 (= e!3735125 (and tp!1712499 tp!1712500))))

(declare-fun b!6127668 () Bool)

(declare-fun tp!1712497 () Bool)

(assert (=> b!6127668 (= e!3735125 tp!1712497)))

(assert (= (and b!6127023 (is-ElementMatch!16070 (regTwo!32653 (regTwo!32652 r!7292)))) b!6127666))

(assert (= (and b!6127023 (is-Concat!24915 (regTwo!32653 (regTwo!32652 r!7292)))) b!6127667))

(assert (= (and b!6127023 (is-Star!16070 (regTwo!32653 (regTwo!32652 r!7292)))) b!6127668))

(assert (= (and b!6127023 (is-Union!16070 (regTwo!32653 (regTwo!32652 r!7292)))) b!6127669))

(declare-fun e!3735133 () Bool)

(assert (=> b!6127030 (= tp!1712290 e!3735133)))

(declare-fun b!6127685 () Bool)

(declare-fun tp!1712503 () Bool)

(declare-fun tp!1712501 () Bool)

(assert (=> b!6127685 (= e!3735133 (and tp!1712503 tp!1712501))))

(declare-fun b!6127684 () Bool)

(assert (=> b!6127684 (= e!3735133 tp_is_empty!41393)))

(declare-fun b!6127687 () Bool)

(declare-fun tp!1712504 () Bool)

(declare-fun tp!1712505 () Bool)

(assert (=> b!6127687 (= e!3735133 (and tp!1712504 tp!1712505))))

(declare-fun b!6127686 () Bool)

(declare-fun tp!1712502 () Bool)

(assert (=> b!6127686 (= e!3735133 tp!1712502)))

(assert (= (and b!6127030 (is-ElementMatch!16070 (regOne!32652 (reg!16399 r!7292)))) b!6127684))

(assert (= (and b!6127030 (is-Concat!24915 (regOne!32652 (reg!16399 r!7292)))) b!6127685))

(assert (= (and b!6127030 (is-Star!16070 (regOne!32652 (reg!16399 r!7292)))) b!6127686))

(assert (= (and b!6127030 (is-Union!16070 (regOne!32652 (reg!16399 r!7292)))) b!6127687))

(declare-fun e!3735134 () Bool)

(assert (=> b!6127030 (= tp!1712288 e!3735134)))

(declare-fun b!6127689 () Bool)

(declare-fun tp!1712508 () Bool)

(declare-fun tp!1712506 () Bool)

(assert (=> b!6127689 (= e!3735134 (and tp!1712508 tp!1712506))))

(declare-fun b!6127688 () Bool)

(assert (=> b!6127688 (= e!3735134 tp_is_empty!41393)))

(declare-fun b!6127691 () Bool)

(declare-fun tp!1712509 () Bool)

(declare-fun tp!1712510 () Bool)

(assert (=> b!6127691 (= e!3735134 (and tp!1712509 tp!1712510))))

(declare-fun b!6127690 () Bool)

(declare-fun tp!1712507 () Bool)

(assert (=> b!6127690 (= e!3735134 tp!1712507)))

(assert (= (and b!6127030 (is-ElementMatch!16070 (regTwo!32652 (reg!16399 r!7292)))) b!6127688))

(assert (= (and b!6127030 (is-Concat!24915 (regTwo!32652 (reg!16399 r!7292)))) b!6127689))

(assert (= (and b!6127030 (is-Star!16070 (regTwo!32652 (reg!16399 r!7292)))) b!6127690))

(assert (= (and b!6127030 (is-Union!16070 (regTwo!32652 (reg!16399 r!7292)))) b!6127691))

(declare-fun b!6127693 () Bool)

(declare-fun e!3735136 () Bool)

(declare-fun tp!1712511 () Bool)

(assert (=> b!6127693 (= e!3735136 tp!1712511)))

(declare-fun b!6127692 () Bool)

(declare-fun tp!1712512 () Bool)

(declare-fun e!3735135 () Bool)

(assert (=> b!6127692 (= e!3735135 (and (inv!83423 (h!70834 (t!377975 (t!377975 zl!343)))) e!3735136 tp!1712512))))

(assert (=> b!6127058 (= tp!1712304 e!3735135)))

(assert (= b!6127692 b!6127693))

(assert (= (and b!6127058 (is-Cons!64386 (t!377975 (t!377975 zl!343)))) b!6127692))

(declare-fun m!6972032 () Bool)

(assert (=> b!6127692 m!6972032))

(declare-fun b!6127694 () Bool)

(declare-fun e!3735137 () Bool)

(declare-fun tp!1712513 () Bool)

(assert (=> b!6127694 (= e!3735137 (and tp_is_empty!41393 tp!1712513))))

(assert (=> b!6127028 (= tp!1712287 e!3735137)))

(assert (= (and b!6127028 (is-Cons!64387 (t!377976 (t!377976 s!2326)))) b!6127694))

(declare-fun b!6127695 () Bool)

(declare-fun e!3735138 () Bool)

(declare-fun tp!1712514 () Bool)

(declare-fun tp!1712515 () Bool)

(assert (=> b!6127695 (= e!3735138 (and tp!1712514 tp!1712515))))

(assert (=> b!6127059 (= tp!1712303 e!3735138)))

(assert (= (and b!6127059 (is-Cons!64385 (exprs!5954 (h!70834 (t!377975 zl!343))))) b!6127695))

(declare-fun condSetEmpty!41406 () Bool)

(assert (=> setNonEmpty!41399 (= condSetEmpty!41406 (= setRest!41399 (as set.empty (Set Context!10908))))))

(declare-fun setRes!41406 () Bool)

(assert (=> setNonEmpty!41399 (= tp!1712298 setRes!41406)))

(declare-fun setIsEmpty!41406 () Bool)

(assert (=> setIsEmpty!41406 setRes!41406))

(declare-fun e!3735139 () Bool)

(declare-fun setNonEmpty!41406 () Bool)

(declare-fun setElem!41406 () Context!10908)

(declare-fun tp!1712517 () Bool)

(assert (=> setNonEmpty!41406 (= setRes!41406 (and tp!1712517 (inv!83423 setElem!41406) e!3735139))))

(declare-fun setRest!41406 () (Set Context!10908))

(assert (=> setNonEmpty!41406 (= setRest!41399 (set.union (set.insert setElem!41406 (as set.empty (Set Context!10908))) setRest!41406))))

(declare-fun b!6127696 () Bool)

(declare-fun tp!1712516 () Bool)

(assert (=> b!6127696 (= e!3735139 tp!1712516)))

(assert (= (and setNonEmpty!41399 condSetEmpty!41406) setIsEmpty!41406))

(assert (= (and setNonEmpty!41399 (not condSetEmpty!41406)) setNonEmpty!41406))

(assert (= setNonEmpty!41406 b!6127696))

(declare-fun m!6972038 () Bool)

(assert (=> setNonEmpty!41406 m!6972038))

(declare-fun e!3735140 () Bool)

(assert (=> b!6127066 (= tp!1712314 e!3735140)))

(declare-fun b!6127698 () Bool)

(declare-fun tp!1712520 () Bool)

(declare-fun tp!1712518 () Bool)

(assert (=> b!6127698 (= e!3735140 (and tp!1712520 tp!1712518))))

(declare-fun b!6127697 () Bool)

(assert (=> b!6127697 (= e!3735140 tp_is_empty!41393)))

(declare-fun b!6127700 () Bool)

(declare-fun tp!1712521 () Bool)

(declare-fun tp!1712522 () Bool)

(assert (=> b!6127700 (= e!3735140 (and tp!1712521 tp!1712522))))

(declare-fun b!6127699 () Bool)

(declare-fun tp!1712519 () Bool)

(assert (=> b!6127699 (= e!3735140 tp!1712519)))

(assert (= (and b!6127066 (is-ElementMatch!16070 (regOne!32652 (regTwo!32653 r!7292)))) b!6127697))

(assert (= (and b!6127066 (is-Concat!24915 (regOne!32652 (regTwo!32653 r!7292)))) b!6127698))

(assert (= (and b!6127066 (is-Star!16070 (regOne!32652 (regTwo!32653 r!7292)))) b!6127699))

(assert (= (and b!6127066 (is-Union!16070 (regOne!32652 (regTwo!32653 r!7292)))) b!6127700))

(declare-fun e!3735141 () Bool)

(assert (=> b!6127066 (= tp!1712312 e!3735141)))

(declare-fun b!6127702 () Bool)

(declare-fun tp!1712525 () Bool)

(declare-fun tp!1712523 () Bool)

(assert (=> b!6127702 (= e!3735141 (and tp!1712525 tp!1712523))))

(declare-fun b!6127701 () Bool)

(assert (=> b!6127701 (= e!3735141 tp_is_empty!41393)))

(declare-fun b!6127704 () Bool)

(declare-fun tp!1712526 () Bool)

(declare-fun tp!1712527 () Bool)

(assert (=> b!6127704 (= e!3735141 (and tp!1712526 tp!1712527))))

(declare-fun b!6127703 () Bool)

(declare-fun tp!1712524 () Bool)

(assert (=> b!6127703 (= e!3735141 tp!1712524)))

(assert (= (and b!6127066 (is-ElementMatch!16070 (regTwo!32652 (regTwo!32653 r!7292)))) b!6127701))

(assert (= (and b!6127066 (is-Concat!24915 (regTwo!32652 (regTwo!32653 r!7292)))) b!6127702))

(assert (= (and b!6127066 (is-Star!16070 (regTwo!32652 (regTwo!32653 r!7292)))) b!6127703))

(assert (= (and b!6127066 (is-Union!16070 (regTwo!32652 (regTwo!32653 r!7292)))) b!6127704))

(declare-fun e!3735142 () Bool)

(assert (=> b!6127005 (= tp!1712263 e!3735142)))

(declare-fun b!6127706 () Bool)

(declare-fun tp!1712530 () Bool)

(declare-fun tp!1712528 () Bool)

(assert (=> b!6127706 (= e!3735142 (and tp!1712530 tp!1712528))))

(declare-fun b!6127705 () Bool)

(assert (=> b!6127705 (= e!3735142 tp_is_empty!41393)))

(declare-fun b!6127708 () Bool)

(declare-fun tp!1712531 () Bool)

(declare-fun tp!1712532 () Bool)

(assert (=> b!6127708 (= e!3735142 (and tp!1712531 tp!1712532))))

(declare-fun b!6127707 () Bool)

(declare-fun tp!1712529 () Bool)

(assert (=> b!6127707 (= e!3735142 tp!1712529)))

(assert (= (and b!6127005 (is-ElementMatch!16070 (h!70833 (exprs!5954 (h!70834 zl!343))))) b!6127705))

(assert (= (and b!6127005 (is-Concat!24915 (h!70833 (exprs!5954 (h!70834 zl!343))))) b!6127706))

(assert (= (and b!6127005 (is-Star!16070 (h!70833 (exprs!5954 (h!70834 zl!343))))) b!6127707))

(assert (= (and b!6127005 (is-Union!16070 (h!70833 (exprs!5954 (h!70834 zl!343))))) b!6127708))

(declare-fun b!6127709 () Bool)

(declare-fun e!3735143 () Bool)

(declare-fun tp!1712533 () Bool)

(declare-fun tp!1712534 () Bool)

(assert (=> b!6127709 (= e!3735143 (and tp!1712533 tp!1712534))))

(assert (=> b!6127005 (= tp!1712264 e!3735143)))

(assert (= (and b!6127005 (is-Cons!64385 (t!377974 (exprs!5954 (h!70834 zl!343))))) b!6127709))

(declare-fun b_lambda!233271 () Bool)

(assert (= b_lambda!233269 (or d!1919719 b_lambda!233271)))

(declare-fun bs!1520235 () Bool)

(declare-fun d!1919963 () Bool)

(assert (= bs!1520235 (and d!1919963 d!1919719)))

(assert (=> bs!1520235 (= (dynLambda!25363 lambda!333732 (h!70833 (exprs!5954 (h!70834 zl!343)))) (validRegex!7806 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(declare-fun m!6972052 () Bool)

(assert (=> bs!1520235 m!6972052))

(assert (=> b!6127567 d!1919963))

(declare-fun b_lambda!233273 () Bool)

(assert (= b_lambda!233263 (or d!1919723 b_lambda!233273)))

(declare-fun bs!1520236 () Bool)

(declare-fun d!1919965 () Bool)

(assert (= bs!1520236 (and d!1919965 d!1919723)))

(assert (=> bs!1520236 (= (dynLambda!25363 lambda!333735 (h!70833 (exprs!5954 lt!2331410))) (validRegex!7806 (h!70833 (exprs!5954 lt!2331410))))))

(declare-fun m!6972054 () Bool)

(assert (=> bs!1520236 m!6972054))

(assert (=> b!6127477 d!1919965))

(declare-fun b_lambda!233275 () Bool)

(assert (= b_lambda!233257 (or d!1919649 b_lambda!233275)))

(declare-fun bs!1520237 () Bool)

(declare-fun d!1919967 () Bool)

(assert (= bs!1520237 (and d!1919967 d!1919649)))

(assert (=> bs!1520237 (= (dynLambda!25363 lambda!333698 (h!70833 lt!2331469)) (validRegex!7806 (h!70833 lt!2331469)))))

(declare-fun m!6972056 () Bool)

(assert (=> bs!1520237 m!6972056))

(assert (=> b!6127279 d!1919967))

(declare-fun b_lambda!233277 () Bool)

(assert (= b_lambda!233261 (or b!6126391 b_lambda!233277)))

(assert (=> d!1919869 d!1919739))

(declare-fun b_lambda!233279 () Bool)

(assert (= b_lambda!233265 (or d!1919733 b_lambda!233279)))

(declare-fun bs!1520238 () Bool)

(declare-fun d!1919969 () Bool)

(assert (= bs!1520238 (and d!1919969 d!1919733)))

(assert (=> bs!1520238 (= (dynLambda!25363 lambda!333740 (h!70833 (exprs!5954 setElem!41393))) (validRegex!7806 (h!70833 (exprs!5954 setElem!41393))))))

(declare-fun m!6972058 () Bool)

(assert (=> bs!1520238 m!6972058))

(assert (=> b!6127534 d!1919969))

(declare-fun b_lambda!233281 () Bool)

(assert (= b_lambda!233259 (or d!1919675 b_lambda!233281)))

(declare-fun bs!1520239 () Bool)

(declare-fun d!1919971 () Bool)

(assert (= bs!1520239 (and d!1919971 d!1919675)))

(assert (=> bs!1520239 (= (dynLambda!25363 lambda!333703 (h!70833 (exprs!5954 (h!70834 zl!343)))) (validRegex!7806 (h!70833 (exprs!5954 (h!70834 zl!343)))))))

(assert (=> bs!1520239 m!6972052))

(assert (=> b!6127409 d!1919971))

(declare-fun b_lambda!233283 () Bool)

(assert (= b_lambda!233267 (or d!1919645 b_lambda!233283)))

(declare-fun bs!1520240 () Bool)

(declare-fun d!1919973 () Bool)

(assert (= bs!1520240 (and d!1919973 d!1919645)))

(assert (=> bs!1520240 (= (dynLambda!25363 lambda!333694 (h!70833 (unfocusZipperList!1491 zl!343))) (validRegex!7806 (h!70833 (unfocusZipperList!1491 zl!343))))))

(declare-fun m!6972060 () Bool)

(assert (=> bs!1520240 m!6972060))

(assert (=> b!6127548 d!1919973))

(push 1)

(assert (not b!6127656))

(assert (not d!1919937))

(assert (not b!6127255))

(assert (not b!6127357))

(assert (not bs!1520237))

(assert (not b!6127280))

(assert (not b!6127406))

(assert (not b!6127360))

(assert (not b!6127487))

(assert (not b!6127281))

(assert (not d!1919847))

(assert (not b!6127478))

(assert (not b!6127332))

(assert (not bm!507916))

(assert (not b!6127696))

(assert (not b!6127707))

(assert (not b!6127355))

(assert (not b!6127629))

(assert (not b!6127639))

(assert (not b!6127687))

(assert (not d!1919869))

(assert (not b!6127204))

(assert (not b!6127493))

(assert (not b!6127614))

(assert (not b!6127356))

(assert (not b!6127644))

(assert (not b!6127450))

(assert (not b!6127695))

(assert (not bm!507891))

(assert (not bs!1520235))

(assert (not b!6127610))

(assert (not d!1919823))

(assert (not b!6127316))

(assert (not d!1919859))

(assert (not b!6127371))

(assert (not b!6127574))

(assert (not b!6127438))

(assert (not d!1919857))

(assert (not b!6127475))

(assert (not bm!507955))

(assert (not b!6127556))

(assert (not b!6127690))

(assert (not b!6127501))

(assert (not b!6127689))

(assert (not b!6127587))

(assert (not b!6127605))

(assert (not b!6127235))

(assert (not bm!507951))

(assert (not b!6127488))

(assert (not b!6127648))

(assert tp_is_empty!41393)

(assert (not b_lambda!233283))

(assert (not d!1919895))

(assert (not b_lambda!233273))

(assert (not d!1919897))

(assert (not b!6127622))

(assert (not b!6127525))

(assert (not b!6127518))

(assert (not b!6127484))

(assert (not bm!507926))

(assert (not b!6127564))

(assert (not b!6127691))

(assert (not bm!507911))

(assert (not bm!507920))

(assert (not b!6127572))

(assert (not b!6127208))

(assert (not b!6127609))

(assert (not bm!507904))

(assert (not b!6127320))

(assert (not bm!507929))

(assert (not b!6127704))

(assert (not bm!507930))

(assert (not b!6127509))

(assert (not bs!1520240))

(assert (not d!1919779))

(assert (not b!6127363))

(assert (not b_lambda!233279))

(assert (not bm!507906))

(assert (not d!1919821))

(assert (not b_lambda!233251))

(assert (not b!6127590))

(assert (not b!6127632))

(assert (not bm!507947))

(assert (not b!6127654))

(assert (not b!6127618))

(assert (not b!6127408))

(assert (not b!6127638))

(assert (not b!6127611))

(assert (not b!6127337))

(assert (not b!6127549))

(assert (not b!6127640))

(assert (not d!1919907))

(assert (not b!6127410))

(assert (not b!6127661))

(assert (not b!6127623))

(assert (not b!6127489))

(assert (not b!6127481))

(assert (not b!6127333))

(assert (not bm!507944))

(assert (not b!6127642))

(assert (not b!6127568))

(assert (not b!6127529))

(assert (not b!6127399))

(assert (not d!1919795))

(assert (not b!6127502))

(assert (not b!6127613))

(assert (not b!6127189))

(assert (not b!6127693))

(assert (not b!6127485))

(assert (not b!6127522))

(assert (not bm!507936))

(assert (not d!1919819))

(assert (not bm!507905))

(assert (not b!6127382))

(assert (not b!6127557))

(assert (not bm!507923))

(assert (not b!6127626))

(assert (not b!6127583))

(assert (not d!1919901))

(assert (not bm!507889))

(assert (not b!6127354))

(assert (not b_lambda!233275))

(assert (not b!6127211))

(assert (not b!6127665))

(assert (not bm!507888))

(assert (not b!6127588))

(assert (not b!6127512))

(assert (not d!1919905))

(assert (not d!1919873))

(assert (not b!6127694))

(assert (not d!1919899))

(assert (not bm!507959))

(assert (not b!6127545))

(assert (not b!6127249))

(assert (not b!6127511))

(assert (not b!6127643))

(assert (not b!6127607))

(assert (not b!6127338))

(assert (not b!6127378))

(assert (not d!1919875))

(assert (not b!6127252))

(assert (not b!6127532))

(assert (not b!6127367))

(assert (not b_lambda!233271))

(assert (not d!1919833))

(assert (not b!6127370))

(assert (not b!6127659))

(assert (not b!6127631))

(assert (not bm!507932))

(assert (not b!6127205))

(assert (not b!6127340))

(assert (not b!6127335))

(assert (not b!6127422))

(assert (not d!1919921))

(assert (not d!1919935))

(assert (not b!6127480))

(assert (not b!6127201))

(assert (not d!1919769))

(assert (not d!1919805))

(assert (not b!6127315))

(assert (not b!6127517))

(assert (not bm!507927))

(assert (not b!6127635))

(assert (not b!6127699))

(assert (not b!6127630))

(assert (not b!6127703))

(assert (not bm!507957))

(assert (not b!6127575))

(assert (not b!6127669))

(assert (not bm!507953))

(assert (not bm!507942))

(assert (not b!6127708))

(assert (not b!6127248))

(assert (not b!6127341))

(assert (not d!1919885))

(assert (not b_lambda!233277))

(assert (not b!6127685))

(assert (not bs!1520238))

(assert (not b!6127538))

(assert (not bm!507956))

(assert (not b!6127686))

(assert (not b!6127627))

(assert (not b!6127664))

(assert (not b!6127526))

(assert (not b!6127256))

(assert (not b!6127591))

(assert (not b!6127576))

(assert (not b!6127470))

(assert (not b!6127584))

(assert (not bm!507917))

(assert (not b!6127651))

(assert (not b!6127615))

(assert (not b!6127505))

(assert (not b!6127263))

(assert (not setNonEmpty!41406))

(assert (not b!6127700))

(assert (not b!6127245))

(assert (not b_lambda!233281))

(assert (not d!1919893))

(assert (not b!6127619))

(assert (not bm!507950))

(assert (not b!6127709))

(assert (not b!6127508))

(assert (not d!1919945))

(assert (not d!1919903))

(assert (not b!6127398))

(assert (not b!6127533))

(assert (not b!6127586))

(assert (not b!6127570))

(assert (not b!6127513))

(assert (not d!1919839))

(assert (not b!6127364))

(assert (not b!6127706))

(assert (not bs!1520236))

(assert (not bm!507941))

(assert (not b!6127655))

(assert (not b!6127621))

(assert (not b!6127617))

(assert (not d!1919917))

(assert (not d!1919883))

(assert (not b!6127692))

(assert (not b!6127305))

(assert (not bm!507924))

(assert (not b!6127582))

(assert (not b!6127636))

(assert (not bm!507960))

(assert (not b!6127571))

(assert (not d!1919877))

(assert (not b!6127272))

(assert (not bm!507954))

(assert (not b!6127658))

(assert (not b!6127660))

(assert (not d!1919813))

(assert (not bm!507935))

(assert (not b!6127702))

(assert (not bm!507909))

(assert (not b!6127319))

(assert (not b!6127416))

(assert (not b!6127334))

(assert (not b!6127578))

(assert (not d!1919771))

(assert (not b!6127336))

(assert (not d!1919909))

(assert (not b!6127212))

(assert (not b!6127663))

(assert (not b!6127552))

(assert (not b!6127469))

(assert (not b!6127476))

(assert (not b!6127498))

(assert (not b!6127580))

(assert (not bm!507961))

(assert (not bm!507908))

(assert (not b!6127490))

(assert (not d!1919887))

(assert (not b!6127392))

(assert (not bm!507928))

(assert (not d!1919835))

(assert (not b!6127646))

(assert (not d!1919791))

(assert (not bm!507938))

(assert (not b!6127516))

(assert (not b!6127647))

(assert (not b!6127698))

(assert (not bm!507963))

(assert (not bs!1520239))

(assert (not b!6127535))

(assert (not b!6127650))

(assert (not b!6127634))

(assert (not bm!507925))

(assert (not b!6127407))

(assert (not b!6127492))

(assert (not bm!507892))

(assert (not d!1919803))

(assert (not d!1919923))

(assert (not d!1919789))

(assert (not b!6127668))

(assert (not bm!507921))

(assert (not b!6127652))

(assert (not b!6127579))

(assert (not setNonEmpty!41405))

(assert (not bm!507901))

(assert (not b!6127515))

(assert (not b!6127625))

(assert (not d!1919837))

(assert (not b!6127592))

(assert (not b!6127393))

(assert (not b!6127606))

(assert (not b!6127667))

(assert (not bm!507945))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

