; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!615064 () Bool)

(assert start!615064)

(declare-fun b!6157455 () Bool)

(assert (=> b!6157455 true))

(assert (=> b!6157455 true))

(declare-fun lambda!335933 () Int)

(declare-fun lambda!335932 () Int)

(assert (=> b!6157455 (not (= lambda!335933 lambda!335932))))

(assert (=> b!6157455 true))

(assert (=> b!6157455 true))

(declare-fun b!6157462 () Bool)

(assert (=> b!6157462 true))

(declare-fun b!6157449 () Bool)

(declare-fun e!3751680 () Bool)

(declare-fun e!3751675 () Bool)

(assert (=> b!6157449 (= e!3751680 e!3751675)))

(declare-fun res!2550096 () Bool)

(assert (=> b!6157449 (=> res!2550096 e!3751675)))

(declare-datatypes ((C!32470 0))(
  ( (C!32471 (val!25937 Int)) )
))
(declare-datatypes ((List!64599 0))(
  ( (Nil!64475) (Cons!64475 (h!70923 C!32470) (t!378093 List!64599)) )
))
(declare-fun s!2326 () List!64599)

(declare-fun e!3751689 () Bool)

(declare-datatypes ((Regex!16100 0))(
  ( (ElementMatch!16100 (c!1108675 C!32470)) (Concat!24945 (regOne!32712 Regex!16100) (regTwo!32712 Regex!16100)) (EmptyExpr!16100) (Star!16100 (reg!16429 Regex!16100)) (EmptyLang!16100) (Union!16100 (regOne!32713 Regex!16100) (regTwo!32713 Regex!16100)) )
))
(declare-datatypes ((List!64600 0))(
  ( (Nil!64476) (Cons!64476 (h!70924 Regex!16100) (t!378094 List!64600)) )
))
(declare-datatypes ((Context!10968 0))(
  ( (Context!10969 (exprs!5984 List!64600)) )
))
(declare-fun z!1189 () (Set Context!10968))

(declare-fun matchZipper!2112 ((Set Context!10968) List!64599) Bool)

(assert (=> b!6157449 (= res!2550096 (not (= (matchZipper!2112 z!1189 s!2326) e!3751689)))))

(declare-fun res!2550097 () Bool)

(assert (=> b!6157449 (=> res!2550097 e!3751689)))

(declare-fun lt!2335341 () (Set Context!10968))

(assert (=> b!6157449 (= res!2550097 (matchZipper!2112 lt!2335341 s!2326))))

(declare-datatypes ((Unit!157579 0))(
  ( (Unit!157580) )
))
(declare-fun lt!2335347 () Unit!157579)

(declare-fun e!3751676 () Unit!157579)

(assert (=> b!6157449 (= lt!2335347 e!3751676)))

(declare-fun c!1108672 () Bool)

(declare-fun r!7292 () Regex!16100)

(declare-fun nullable!6093 (Regex!16100) Bool)

(assert (=> b!6157449 (= c!1108672 (nullable!6093 (regTwo!32713 (regOne!32712 r!7292))))))

(declare-fun lt!2335352 () (Set Context!10968))

(declare-fun lt!2335344 () Context!10968)

(declare-fun lambda!335934 () Int)

(declare-fun flatMap!1605 ((Set Context!10968) Int) (Set Context!10968))

(declare-fun derivationStepZipperUp!1274 (Context!10968 C!32470) (Set Context!10968))

(assert (=> b!6157449 (= (flatMap!1605 lt!2335352 lambda!335934) (derivationStepZipperUp!1274 lt!2335344 (h!70923 s!2326)))))

(declare-fun lt!2335343 () Unit!157579)

(declare-fun lemmaFlatMapOnSingletonSet!1131 ((Set Context!10968) Context!10968 Int) Unit!157579)

(assert (=> b!6157449 (= lt!2335343 (lemmaFlatMapOnSingletonSet!1131 lt!2335352 lt!2335344 lambda!335934))))

(declare-fun lt!2335355 () (Set Context!10968))

(assert (=> b!6157449 (= lt!2335355 (derivationStepZipperUp!1274 lt!2335344 (h!70923 s!2326)))))

(declare-fun lt!2335339 () Unit!157579)

(declare-fun e!3751682 () Unit!157579)

(assert (=> b!6157449 (= lt!2335339 e!3751682)))

(declare-fun c!1108673 () Bool)

(assert (=> b!6157449 (= c!1108673 (nullable!6093 (regOne!32713 (regOne!32712 r!7292))))))

(declare-fun lt!2335359 () Context!10968)

(assert (=> b!6157449 (= (flatMap!1605 lt!2335341 lambda!335934) (derivationStepZipperUp!1274 lt!2335359 (h!70923 s!2326)))))

(declare-fun lt!2335346 () Unit!157579)

(assert (=> b!6157449 (= lt!2335346 (lemmaFlatMapOnSingletonSet!1131 lt!2335341 lt!2335359 lambda!335934))))

(declare-fun lt!2335354 () (Set Context!10968))

(assert (=> b!6157449 (= lt!2335354 (derivationStepZipperUp!1274 lt!2335359 (h!70923 s!2326)))))

(assert (=> b!6157449 (= lt!2335352 (set.insert lt!2335344 (as set.empty (Set Context!10968))))))

(declare-datatypes ((List!64601 0))(
  ( (Nil!64477) (Cons!64477 (h!70925 Context!10968) (t!378095 List!64601)) )
))
(declare-fun zl!343 () List!64601)

(assert (=> b!6157449 (= lt!2335344 (Context!10969 (Cons!64476 (regTwo!32713 (regOne!32712 r!7292)) (t!378094 (exprs!5984 (h!70925 zl!343))))))))

(assert (=> b!6157449 (= lt!2335341 (set.insert lt!2335359 (as set.empty (Set Context!10968))))))

(assert (=> b!6157449 (= lt!2335359 (Context!10969 (Cons!64476 (regOne!32713 (regOne!32712 r!7292)) (t!378094 (exprs!5984 (h!70925 zl!343))))))))

(declare-fun b!6157450 () Bool)

(assert (=> b!6157450 (= e!3751689 (matchZipper!2112 lt!2335352 s!2326))))

(declare-fun b!6157451 () Bool)

(declare-fun res!2550091 () Bool)

(declare-fun e!3751681 () Bool)

(assert (=> b!6157451 (=> res!2550091 e!3751681)))

(declare-fun generalisedUnion!1944 (List!64600) Regex!16100)

(declare-fun unfocusZipperList!1521 (List!64601) List!64600)

(assert (=> b!6157451 (= res!2550091 (not (= r!7292 (generalisedUnion!1944 (unfocusZipperList!1521 zl!343)))))))

(declare-fun b!6157453 () Bool)

(declare-fun e!3751683 () Bool)

(declare-fun tp!1719560 () Bool)

(declare-fun tp!1719555 () Bool)

(assert (=> b!6157453 (= e!3751683 (and tp!1719560 tp!1719555))))

(declare-fun b!6157454 () Bool)

(declare-fun e!3751684 () Bool)

(declare-fun lt!2335362 () (Set Context!10968))

(assert (=> b!6157454 (= e!3751684 (not (matchZipper!2112 lt!2335362 (t!378093 s!2326))))))

(declare-fun setIsEmpty!41715 () Bool)

(declare-fun setRes!41715 () Bool)

(assert (=> setIsEmpty!41715 setRes!41715))

(declare-fun e!3751688 () Bool)

(assert (=> b!6157455 (= e!3751681 e!3751688)))

(declare-fun res!2550102 () Bool)

(assert (=> b!6157455 (=> res!2550102 e!3751688)))

(declare-fun lt!2335345 () Bool)

(declare-fun lt!2335334 () Bool)

(assert (=> b!6157455 (= res!2550102 (or (not (= lt!2335345 lt!2335334)) (is-Nil!64475 s!2326)))))

(declare-fun Exists!3170 (Int) Bool)

(assert (=> b!6157455 (= (Exists!3170 lambda!335932) (Exists!3170 lambda!335933))))

(declare-fun lt!2335348 () Unit!157579)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1707 (Regex!16100 Regex!16100 List!64599) Unit!157579)

(assert (=> b!6157455 (= lt!2335348 (lemmaExistCutMatchRandMatchRSpecEquivalent!1707 (regOne!32712 r!7292) (regTwo!32712 r!7292) s!2326))))

(assert (=> b!6157455 (= lt!2335334 (Exists!3170 lambda!335932))))

(declare-datatypes ((tuple2!66158 0))(
  ( (tuple2!66159 (_1!36382 List!64599) (_2!36382 List!64599)) )
))
(declare-datatypes ((Option!15991 0))(
  ( (None!15990) (Some!15990 (v!52129 tuple2!66158)) )
))
(declare-fun isDefined!12694 (Option!15991) Bool)

(declare-fun findConcatSeparation!2405 (Regex!16100 Regex!16100 List!64599 List!64599 List!64599) Option!15991)

(assert (=> b!6157455 (= lt!2335334 (isDefined!12694 (findConcatSeparation!2405 (regOne!32712 r!7292) (regTwo!32712 r!7292) Nil!64475 s!2326 s!2326)))))

(declare-fun lt!2335336 () Unit!157579)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2169 (Regex!16100 Regex!16100 List!64599) Unit!157579)

(assert (=> b!6157455 (= lt!2335336 (lemmaFindConcatSeparationEquivalentToExists!2169 (regOne!32712 r!7292) (regTwo!32712 r!7292) s!2326))))

(declare-fun b!6157456 () Bool)

(declare-fun e!3751672 () Unit!157579)

(declare-fun Unit!157581 () Unit!157579)

(assert (=> b!6157456 (= e!3751672 Unit!157581)))

(declare-fun lt!2335350 () (Set Context!10968))

(declare-fun lt!2335358 () (Set Context!10968))

(declare-fun lt!2335361 () Unit!157579)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!931 ((Set Context!10968) (Set Context!10968) List!64599) Unit!157579)

(assert (=> b!6157456 (= lt!2335361 (lemmaZipperConcatMatchesSameAsBothZippers!931 lt!2335350 lt!2335358 (t!378093 s!2326)))))

(declare-fun res!2550095 () Bool)

(assert (=> b!6157456 (= res!2550095 (matchZipper!2112 lt!2335350 (t!378093 s!2326)))))

(declare-fun e!3751686 () Bool)

(assert (=> b!6157456 (=> res!2550095 e!3751686)))

(assert (=> b!6157456 (= (matchZipper!2112 (set.union lt!2335350 lt!2335358) (t!378093 s!2326)) e!3751686)))

(declare-fun b!6157457 () Bool)

(declare-fun e!3751673 () Bool)

(assert (=> b!6157457 (= e!3751673 (matchZipper!2112 lt!2335362 (t!378093 s!2326)))))

(declare-fun setNonEmpty!41715 () Bool)

(declare-fun e!3751679 () Bool)

(declare-fun setElem!41715 () Context!10968)

(declare-fun tp!1719554 () Bool)

(declare-fun inv!83498 (Context!10968) Bool)

(assert (=> setNonEmpty!41715 (= setRes!41715 (and tp!1719554 (inv!83498 setElem!41715) e!3751679))))

(declare-fun setRest!41715 () (Set Context!10968))

(assert (=> setNonEmpty!41715 (= z!1189 (set.union (set.insert setElem!41715 (as set.empty (Set Context!10968))) setRest!41715))))

(declare-fun b!6157458 () Bool)

(declare-fun tp!1719557 () Bool)

(declare-fun tp!1719552 () Bool)

(assert (=> b!6157458 (= e!3751683 (and tp!1719557 tp!1719552))))

(declare-fun b!6157459 () Bool)

(declare-fun e!3751691 () Bool)

(assert (=> b!6157459 (= e!3751691 (not e!3751681))))

(declare-fun res!2550105 () Bool)

(assert (=> b!6157459 (=> res!2550105 e!3751681)))

(assert (=> b!6157459 (= res!2550105 (not (is-Cons!64477 zl!343)))))

(declare-fun matchRSpec!3201 (Regex!16100 List!64599) Bool)

(assert (=> b!6157459 (= lt!2335345 (matchRSpec!3201 r!7292 s!2326))))

(declare-fun matchR!8283 (Regex!16100 List!64599) Bool)

(assert (=> b!6157459 (= lt!2335345 (matchR!8283 r!7292 s!2326))))

(declare-fun lt!2335338 () Unit!157579)

(declare-fun mainMatchTheorem!3201 (Regex!16100 List!64599) Unit!157579)

(assert (=> b!6157459 (= lt!2335338 (mainMatchTheorem!3201 r!7292 s!2326))))

(declare-fun b!6157460 () Bool)

(declare-fun res!2550087 () Bool)

(assert (=> b!6157460 (=> res!2550087 e!3751681)))

(declare-fun generalisedConcat!1697 (List!64600) Regex!16100)

(assert (=> b!6157460 (= res!2550087 (not (= r!7292 (generalisedConcat!1697 (exprs!5984 (h!70925 zl!343))))))))

(declare-fun b!6157452 () Bool)

(declare-fun e!3751687 () Bool)

(declare-fun tp!1719558 () Bool)

(assert (=> b!6157452 (= e!3751687 tp!1719558)))

(declare-fun res!2550090 () Bool)

(declare-fun e!3751671 () Bool)

(assert (=> start!615064 (=> (not res!2550090) (not e!3751671))))

(declare-fun validRegex!7836 (Regex!16100) Bool)

(assert (=> start!615064 (= res!2550090 (validRegex!7836 r!7292))))

(assert (=> start!615064 e!3751671))

(assert (=> start!615064 e!3751683))

(declare-fun condSetEmpty!41715 () Bool)

(assert (=> start!615064 (= condSetEmpty!41715 (= z!1189 (as set.empty (Set Context!10968))))))

(assert (=> start!615064 setRes!41715))

(declare-fun e!3751685 () Bool)

(assert (=> start!615064 e!3751685))

(declare-fun e!3751670 () Bool)

(assert (=> start!615064 e!3751670))

(declare-fun b!6157461 () Bool)

(assert (=> b!6157461 (= e!3751671 e!3751691)))

(declare-fun res!2550099 () Bool)

(assert (=> b!6157461 (=> (not res!2550099) (not e!3751691))))

(declare-fun lt!2335353 () Regex!16100)

(assert (=> b!6157461 (= res!2550099 (= r!7292 lt!2335353))))

(declare-fun unfocusZipper!1842 (List!64601) Regex!16100)

(assert (=> b!6157461 (= lt!2335353 (unfocusZipper!1842 zl!343))))

(declare-fun e!3751678 () Bool)

(assert (=> b!6157462 (= e!3751688 e!3751678)))

(declare-fun res!2550103 () Bool)

(assert (=> b!6157462 (=> res!2550103 e!3751678)))

(assert (=> b!6157462 (= res!2550103 (or (and (is-ElementMatch!16100 (regOne!32712 r!7292)) (= (c!1108675 (regOne!32712 r!7292)) (h!70923 s!2326))) (not (is-Union!16100 (regOne!32712 r!7292)))))))

(declare-fun lt!2335340 () Unit!157579)

(assert (=> b!6157462 (= lt!2335340 e!3751672)))

(declare-fun c!1108674 () Bool)

(assert (=> b!6157462 (= c!1108674 (nullable!6093 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(assert (=> b!6157462 (= (flatMap!1605 z!1189 lambda!335934) (derivationStepZipperUp!1274 (h!70925 zl!343) (h!70923 s!2326)))))

(declare-fun lt!2335357 () Unit!157579)

(assert (=> b!6157462 (= lt!2335357 (lemmaFlatMapOnSingletonSet!1131 z!1189 (h!70925 zl!343) lambda!335934))))

(declare-fun lt!2335351 () Context!10968)

(assert (=> b!6157462 (= lt!2335358 (derivationStepZipperUp!1274 lt!2335351 (h!70923 s!2326)))))

(declare-fun derivationStepZipperDown!1348 (Regex!16100 Context!10968 C!32470) (Set Context!10968))

(assert (=> b!6157462 (= lt!2335350 (derivationStepZipperDown!1348 (h!70924 (exprs!5984 (h!70925 zl!343))) lt!2335351 (h!70923 s!2326)))))

(assert (=> b!6157462 (= lt!2335351 (Context!10969 (t!378094 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun lt!2335335 () (Set Context!10968))

(assert (=> b!6157462 (= lt!2335335 (derivationStepZipperUp!1274 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343))))) (h!70923 s!2326)))))

(declare-fun b!6157463 () Bool)

(declare-fun res!2550094 () Bool)

(assert (=> b!6157463 (=> res!2550094 e!3751681)))

(assert (=> b!6157463 (= res!2550094 (not (is-Cons!64476 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun b!6157464 () Bool)

(declare-fun tp!1719559 () Bool)

(assert (=> b!6157464 (= e!3751683 tp!1719559)))

(declare-fun b!6157465 () Bool)

(declare-fun e!3751674 () Bool)

(assert (=> b!6157465 (= e!3751674 (matchZipper!2112 lt!2335358 (t!378093 s!2326)))))

(declare-fun b!6157466 () Bool)

(declare-fun res!2550098 () Bool)

(assert (=> b!6157466 (=> res!2550098 e!3751675)))

(assert (=> b!6157466 (= res!2550098 (or (not (= lt!2335353 r!7292)) (not (= (exprs!5984 (h!70925 zl!343)) (Cons!64476 (regOne!32712 r!7292) (t!378094 (exprs!5984 (h!70925 zl!343))))))))))

(declare-fun b!6157467 () Bool)

(declare-fun Unit!157582 () Unit!157579)

(assert (=> b!6157467 (= e!3751676 Unit!157582)))

(declare-fun lt!2335360 () Unit!157579)

(assert (=> b!6157467 (= lt!2335360 (lemmaZipperConcatMatchesSameAsBothZippers!931 lt!2335362 lt!2335358 (t!378093 s!2326)))))

(declare-fun res!2550093 () Bool)

(assert (=> b!6157467 (= res!2550093 (matchZipper!2112 lt!2335362 (t!378093 s!2326)))))

(declare-fun e!3751690 () Bool)

(assert (=> b!6157467 (=> res!2550093 e!3751690)))

(assert (=> b!6157467 (= (matchZipper!2112 (set.union lt!2335362 lt!2335358) (t!378093 s!2326)) e!3751690)))

(declare-fun b!6157468 () Bool)

(declare-fun Unit!157583 () Unit!157579)

(assert (=> b!6157468 (= e!3751676 Unit!157583)))

(declare-fun tp!1719551 () Bool)

(declare-fun b!6157469 () Bool)

(assert (=> b!6157469 (= e!3751685 (and (inv!83498 (h!70925 zl!343)) e!3751687 tp!1719551))))

(declare-fun b!6157470 () Bool)

(declare-fun tp_is_empty!41453 () Bool)

(assert (=> b!6157470 (= e!3751683 tp_is_empty!41453)))

(declare-fun b!6157471 () Bool)

(declare-fun tp!1719553 () Bool)

(assert (=> b!6157471 (= e!3751670 (and tp_is_empty!41453 tp!1719553))))

(declare-fun b!6157472 () Bool)

(declare-fun e!3751677 () Bool)

(assert (=> b!6157472 (= e!3751677 e!3751680)))

(declare-fun res!2550101 () Bool)

(assert (=> b!6157472 (=> res!2550101 e!3751680)))

(assert (=> b!6157472 (= res!2550101 e!3751684)))

(declare-fun res!2550085 () Bool)

(assert (=> b!6157472 (=> (not res!2550085) (not e!3751684))))

(declare-fun lt!2335356 () Bool)

(assert (=> b!6157472 (= res!2550085 (not (= (matchZipper!2112 lt!2335350 (t!378093 s!2326)) lt!2335356)))))

(declare-fun lt!2335337 () (Set Context!10968))

(assert (=> b!6157472 (= (matchZipper!2112 lt!2335337 (t!378093 s!2326)) e!3751673)))

(declare-fun res!2550100 () Bool)

(assert (=> b!6157472 (=> res!2550100 e!3751673)))

(assert (=> b!6157472 (= res!2550100 lt!2335356)))

(declare-fun lt!2335342 () (Set Context!10968))

(assert (=> b!6157472 (= lt!2335356 (matchZipper!2112 lt!2335342 (t!378093 s!2326)))))

(declare-fun lt!2335349 () Unit!157579)

(assert (=> b!6157472 (= lt!2335349 (lemmaZipperConcatMatchesSameAsBothZippers!931 lt!2335342 lt!2335362 (t!378093 s!2326)))))

(declare-fun b!6157473 () Bool)

(assert (=> b!6157473 (= e!3751675 (inv!83498 lt!2335359))))

(declare-fun b!6157474 () Bool)

(declare-fun res!2550084 () Bool)

(assert (=> b!6157474 (=> (not res!2550084) (not e!3751671))))

(declare-fun toList!9884 ((Set Context!10968)) List!64601)

(assert (=> b!6157474 (= res!2550084 (= (toList!9884 z!1189) zl!343))))

(declare-fun b!6157475 () Bool)

(assert (=> b!6157475 (= e!3751678 e!3751677)))

(declare-fun res!2550086 () Bool)

(assert (=> b!6157475 (=> res!2550086 e!3751677)))

(assert (=> b!6157475 (= res!2550086 (not (= lt!2335350 lt!2335337)))))

(assert (=> b!6157475 (= lt!2335337 (set.union lt!2335342 lt!2335362))))

(assert (=> b!6157475 (= lt!2335362 (derivationStepZipperDown!1348 (regTwo!32713 (regOne!32712 r!7292)) lt!2335351 (h!70923 s!2326)))))

(assert (=> b!6157475 (= lt!2335342 (derivationStepZipperDown!1348 (regOne!32713 (regOne!32712 r!7292)) lt!2335351 (h!70923 s!2326)))))

(declare-fun b!6157476 () Bool)

(declare-fun Unit!157584 () Unit!157579)

(assert (=> b!6157476 (= e!3751682 Unit!157584)))

(declare-fun b!6157477 () Bool)

(declare-fun res!2550104 () Bool)

(assert (=> b!6157477 (=> res!2550104 e!3751681)))

(declare-fun isEmpty!36442 (List!64601) Bool)

(assert (=> b!6157477 (= res!2550104 (not (isEmpty!36442 (t!378095 zl!343))))))

(declare-fun b!6157478 () Bool)

(declare-fun res!2550092 () Bool)

(assert (=> b!6157478 (=> res!2550092 e!3751681)))

(assert (=> b!6157478 (= res!2550092 (or (is-EmptyExpr!16100 r!7292) (is-EmptyLang!16100 r!7292) (is-ElementMatch!16100 r!7292) (is-Union!16100 r!7292) (not (is-Concat!24945 r!7292))))))

(declare-fun b!6157479 () Bool)

(assert (=> b!6157479 (= e!3751690 (matchZipper!2112 lt!2335358 (t!378093 s!2326)))))

(declare-fun b!6157480 () Bool)

(declare-fun Unit!157585 () Unit!157579)

(assert (=> b!6157480 (= e!3751682 Unit!157585)))

(declare-fun lt!2335333 () Unit!157579)

(assert (=> b!6157480 (= lt!2335333 (lemmaZipperConcatMatchesSameAsBothZippers!931 lt!2335342 lt!2335358 (t!378093 s!2326)))))

(declare-fun res!2550089 () Bool)

(assert (=> b!6157480 (= res!2550089 lt!2335356)))

(assert (=> b!6157480 (=> res!2550089 e!3751674)))

(assert (=> b!6157480 (= (matchZipper!2112 (set.union lt!2335342 lt!2335358) (t!378093 s!2326)) e!3751674)))

(declare-fun b!6157481 () Bool)

(declare-fun res!2550088 () Bool)

(assert (=> b!6157481 (=> res!2550088 e!3751688)))

(declare-fun isEmpty!36443 (List!64600) Bool)

(assert (=> b!6157481 (= res!2550088 (isEmpty!36443 (t!378094 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun b!6157482 () Bool)

(declare-fun Unit!157586 () Unit!157579)

(assert (=> b!6157482 (= e!3751672 Unit!157586)))

(declare-fun b!6157483 () Bool)

(declare-fun tp!1719556 () Bool)

(assert (=> b!6157483 (= e!3751679 tp!1719556)))

(declare-fun b!6157484 () Bool)

(assert (=> b!6157484 (= e!3751686 (matchZipper!2112 lt!2335358 (t!378093 s!2326)))))

(assert (= (and start!615064 res!2550090) b!6157474))

(assert (= (and b!6157474 res!2550084) b!6157461))

(assert (= (and b!6157461 res!2550099) b!6157459))

(assert (= (and b!6157459 (not res!2550105)) b!6157477))

(assert (= (and b!6157477 (not res!2550104)) b!6157460))

(assert (= (and b!6157460 (not res!2550087)) b!6157463))

(assert (= (and b!6157463 (not res!2550094)) b!6157451))

(assert (= (and b!6157451 (not res!2550091)) b!6157478))

(assert (= (and b!6157478 (not res!2550092)) b!6157455))

(assert (= (and b!6157455 (not res!2550102)) b!6157481))

(assert (= (and b!6157481 (not res!2550088)) b!6157462))

(assert (= (and b!6157462 c!1108674) b!6157456))

(assert (= (and b!6157462 (not c!1108674)) b!6157482))

(assert (= (and b!6157456 (not res!2550095)) b!6157484))

(assert (= (and b!6157462 (not res!2550103)) b!6157475))

(assert (= (and b!6157475 (not res!2550086)) b!6157472))

(assert (= (and b!6157472 (not res!2550100)) b!6157457))

(assert (= (and b!6157472 res!2550085) b!6157454))

(assert (= (and b!6157472 (not res!2550101)) b!6157449))

(assert (= (and b!6157449 c!1108673) b!6157480))

(assert (= (and b!6157449 (not c!1108673)) b!6157476))

(assert (= (and b!6157480 (not res!2550089)) b!6157465))

(assert (= (and b!6157449 c!1108672) b!6157467))

(assert (= (and b!6157449 (not c!1108672)) b!6157468))

(assert (= (and b!6157467 (not res!2550093)) b!6157479))

(assert (= (and b!6157449 (not res!2550097)) b!6157450))

(assert (= (and b!6157449 (not res!2550096)) b!6157466))

(assert (= (and b!6157466 (not res!2550098)) b!6157473))

(assert (= (and start!615064 (is-ElementMatch!16100 r!7292)) b!6157470))

(assert (= (and start!615064 (is-Concat!24945 r!7292)) b!6157458))

(assert (= (and start!615064 (is-Star!16100 r!7292)) b!6157464))

(assert (= (and start!615064 (is-Union!16100 r!7292)) b!6157453))

(assert (= (and start!615064 condSetEmpty!41715) setIsEmpty!41715))

(assert (= (and start!615064 (not condSetEmpty!41715)) setNonEmpty!41715))

(assert (= setNonEmpty!41715 b!6157483))

(assert (= b!6157469 b!6157452))

(assert (= (and start!615064 (is-Cons!64477 zl!343)) b!6157469))

(assert (= (and start!615064 (is-Cons!64475 s!2326)) b!6157471))

(declare-fun m!6995910 () Bool)

(assert (=> b!6157456 m!6995910))

(declare-fun m!6995912 () Bool)

(assert (=> b!6157456 m!6995912))

(declare-fun m!6995914 () Bool)

(assert (=> b!6157456 m!6995914))

(declare-fun m!6995916 () Bool)

(assert (=> b!6157467 m!6995916))

(declare-fun m!6995918 () Bool)

(assert (=> b!6157467 m!6995918))

(declare-fun m!6995920 () Bool)

(assert (=> b!6157467 m!6995920))

(assert (=> b!6157457 m!6995918))

(declare-fun m!6995922 () Bool)

(assert (=> b!6157481 m!6995922))

(assert (=> b!6157472 m!6995912))

(declare-fun m!6995924 () Bool)

(assert (=> b!6157472 m!6995924))

(declare-fun m!6995926 () Bool)

(assert (=> b!6157472 m!6995926))

(declare-fun m!6995928 () Bool)

(assert (=> b!6157472 m!6995928))

(declare-fun m!6995930 () Bool)

(assert (=> setNonEmpty!41715 m!6995930))

(declare-fun m!6995932 () Bool)

(assert (=> b!6157461 m!6995932))

(assert (=> b!6157454 m!6995918))

(declare-fun m!6995934 () Bool)

(assert (=> b!6157449 m!6995934))

(declare-fun m!6995936 () Bool)

(assert (=> b!6157449 m!6995936))

(declare-fun m!6995938 () Bool)

(assert (=> b!6157449 m!6995938))

(declare-fun m!6995940 () Bool)

(assert (=> b!6157449 m!6995940))

(declare-fun m!6995942 () Bool)

(assert (=> b!6157449 m!6995942))

(declare-fun m!6995944 () Bool)

(assert (=> b!6157449 m!6995944))

(declare-fun m!6995946 () Bool)

(assert (=> b!6157449 m!6995946))

(declare-fun m!6995948 () Bool)

(assert (=> b!6157449 m!6995948))

(declare-fun m!6995950 () Bool)

(assert (=> b!6157449 m!6995950))

(declare-fun m!6995952 () Bool)

(assert (=> b!6157449 m!6995952))

(declare-fun m!6995954 () Bool)

(assert (=> b!6157449 m!6995954))

(declare-fun m!6995956 () Bool)

(assert (=> b!6157449 m!6995956))

(declare-fun m!6995958 () Bool)

(assert (=> b!6157474 m!6995958))

(declare-fun m!6995960 () Bool)

(assert (=> b!6157477 m!6995960))

(declare-fun m!6995962 () Bool)

(assert (=> b!6157479 m!6995962))

(declare-fun m!6995964 () Bool)

(assert (=> start!615064 m!6995964))

(declare-fun m!6995966 () Bool)

(assert (=> b!6157475 m!6995966))

(declare-fun m!6995968 () Bool)

(assert (=> b!6157475 m!6995968))

(declare-fun m!6995970 () Bool)

(assert (=> b!6157480 m!6995970))

(declare-fun m!6995972 () Bool)

(assert (=> b!6157480 m!6995972))

(declare-fun m!6995974 () Bool)

(assert (=> b!6157455 m!6995974))

(declare-fun m!6995976 () Bool)

(assert (=> b!6157455 m!6995976))

(declare-fun m!6995978 () Bool)

(assert (=> b!6157455 m!6995978))

(declare-fun m!6995980 () Bool)

(assert (=> b!6157455 m!6995980))

(assert (=> b!6157455 m!6995976))

(declare-fun m!6995982 () Bool)

(assert (=> b!6157455 m!6995982))

(declare-fun m!6995984 () Bool)

(assert (=> b!6157455 m!6995984))

(assert (=> b!6157455 m!6995974))

(assert (=> b!6157484 m!6995962))

(declare-fun m!6995986 () Bool)

(assert (=> b!6157473 m!6995986))

(declare-fun m!6995988 () Bool)

(assert (=> b!6157459 m!6995988))

(declare-fun m!6995990 () Bool)

(assert (=> b!6157459 m!6995990))

(declare-fun m!6995992 () Bool)

(assert (=> b!6157459 m!6995992))

(declare-fun m!6995994 () Bool)

(assert (=> b!6157451 m!6995994))

(assert (=> b!6157451 m!6995994))

(declare-fun m!6995996 () Bool)

(assert (=> b!6157451 m!6995996))

(declare-fun m!6995998 () Bool)

(assert (=> b!6157469 m!6995998))

(declare-fun m!6996000 () Bool)

(assert (=> b!6157450 m!6996000))

(declare-fun m!6996002 () Bool)

(assert (=> b!6157462 m!6996002))

(declare-fun m!6996004 () Bool)

(assert (=> b!6157462 m!6996004))

(declare-fun m!6996006 () Bool)

(assert (=> b!6157462 m!6996006))

(declare-fun m!6996008 () Bool)

(assert (=> b!6157462 m!6996008))

(declare-fun m!6996010 () Bool)

(assert (=> b!6157462 m!6996010))

(declare-fun m!6996012 () Bool)

(assert (=> b!6157462 m!6996012))

(declare-fun m!6996014 () Bool)

(assert (=> b!6157462 m!6996014))

(assert (=> b!6157465 m!6995962))

(declare-fun m!6996016 () Bool)

(assert (=> b!6157460 m!6996016))

(push 1)

(assert (not b!6157453))

(assert (not b!6157462))

(assert (not b!6157450))

(assert (not b!6157472))

(assert (not b!6157477))

(assert tp_is_empty!41453)

(assert (not b!6157451))

(assert (not b!6157458))

(assert (not b!6157481))

(assert (not start!615064))

(assert (not b!6157464))

(assert (not b!6157465))

(assert (not b!6157455))

(assert (not b!6157467))

(assert (not b!6157452))

(assert (not b!6157474))

(assert (not b!6157471))

(assert (not b!6157454))

(assert (not b!6157457))

(assert (not setNonEmpty!41715))

(assert (not b!6157459))

(assert (not b!6157480))

(assert (not b!6157469))

(assert (not b!6157479))

(assert (not b!6157456))

(assert (not b!6157460))

(assert (not b!6157449))

(assert (not b!6157483))

(assert (not b!6157475))

(assert (not b!6157473))

(assert (not b!6157461))

(assert (not b!6157484))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6157637 () Bool)

(declare-fun e!3751781 () Regex!16100)

(assert (=> b!6157637 (= e!3751781 (h!70924 (unfocusZipperList!1521 zl!343)))))

(declare-fun d!1929386 () Bool)

(declare-fun e!3751779 () Bool)

(assert (=> d!1929386 e!3751779))

(declare-fun res!2550188 () Bool)

(assert (=> d!1929386 (=> (not res!2550188) (not e!3751779))))

(declare-fun lt!2335455 () Regex!16100)

(assert (=> d!1929386 (= res!2550188 (validRegex!7836 lt!2335455))))

(assert (=> d!1929386 (= lt!2335455 e!3751781)))

(declare-fun c!1108702 () Bool)

(declare-fun e!3751777 () Bool)

(assert (=> d!1929386 (= c!1108702 e!3751777)))

(declare-fun res!2550189 () Bool)

(assert (=> d!1929386 (=> (not res!2550189) (not e!3751777))))

(assert (=> d!1929386 (= res!2550189 (is-Cons!64476 (unfocusZipperList!1521 zl!343)))))

(declare-fun lambda!335952 () Int)

(declare-fun forall!15221 (List!64600 Int) Bool)

(assert (=> d!1929386 (forall!15221 (unfocusZipperList!1521 zl!343) lambda!335952)))

(assert (=> d!1929386 (= (generalisedUnion!1944 (unfocusZipperList!1521 zl!343)) lt!2335455)))

(declare-fun b!6157638 () Bool)

(declare-fun e!3751776 () Regex!16100)

(assert (=> b!6157638 (= e!3751776 (Union!16100 (h!70924 (unfocusZipperList!1521 zl!343)) (generalisedUnion!1944 (t!378094 (unfocusZipperList!1521 zl!343)))))))

(declare-fun b!6157639 () Bool)

(assert (=> b!6157639 (= e!3751777 (isEmpty!36443 (t!378094 (unfocusZipperList!1521 zl!343))))))

(declare-fun b!6157640 () Bool)

(assert (=> b!6157640 (= e!3751776 EmptyLang!16100)))

(declare-fun b!6157641 () Bool)

(declare-fun e!3751778 () Bool)

(declare-fun isUnion!957 (Regex!16100) Bool)

(assert (=> b!6157641 (= e!3751778 (isUnion!957 lt!2335455))))

(declare-fun b!6157642 () Bool)

(declare-fun e!3751780 () Bool)

(declare-fun isEmptyLang!1527 (Regex!16100) Bool)

(assert (=> b!6157642 (= e!3751780 (isEmptyLang!1527 lt!2335455))))

(declare-fun b!6157643 () Bool)

(assert (=> b!6157643 (= e!3751781 e!3751776)))

(declare-fun c!1108703 () Bool)

(assert (=> b!6157643 (= c!1108703 (is-Cons!64476 (unfocusZipperList!1521 zl!343)))))

(declare-fun b!6157644 () Bool)

(assert (=> b!6157644 (= e!3751779 e!3751780)))

(declare-fun c!1108701 () Bool)

(assert (=> b!6157644 (= c!1108701 (isEmpty!36443 (unfocusZipperList!1521 zl!343)))))

(declare-fun b!6157645 () Bool)

(assert (=> b!6157645 (= e!3751780 e!3751778)))

(declare-fun c!1108704 () Bool)

(declare-fun tail!11806 (List!64600) List!64600)

(assert (=> b!6157645 (= c!1108704 (isEmpty!36443 (tail!11806 (unfocusZipperList!1521 zl!343))))))

(declare-fun b!6157646 () Bool)

(declare-fun head!12721 (List!64600) Regex!16100)

(assert (=> b!6157646 (= e!3751778 (= lt!2335455 (head!12721 (unfocusZipperList!1521 zl!343))))))

(assert (= (and d!1929386 res!2550189) b!6157639))

(assert (= (and d!1929386 c!1108702) b!6157637))

(assert (= (and d!1929386 (not c!1108702)) b!6157643))

(assert (= (and b!6157643 c!1108703) b!6157638))

(assert (= (and b!6157643 (not c!1108703)) b!6157640))

(assert (= (and d!1929386 res!2550188) b!6157644))

(assert (= (and b!6157644 c!1108701) b!6157642))

(assert (= (and b!6157644 (not c!1108701)) b!6157645))

(assert (= (and b!6157645 c!1108704) b!6157646))

(assert (= (and b!6157645 (not c!1108704)) b!6157641))

(declare-fun m!6996126 () Bool)

(assert (=> d!1929386 m!6996126))

(assert (=> d!1929386 m!6995994))

(declare-fun m!6996128 () Bool)

(assert (=> d!1929386 m!6996128))

(assert (=> b!6157645 m!6995994))

(declare-fun m!6996130 () Bool)

(assert (=> b!6157645 m!6996130))

(assert (=> b!6157645 m!6996130))

(declare-fun m!6996132 () Bool)

(assert (=> b!6157645 m!6996132))

(assert (=> b!6157644 m!6995994))

(declare-fun m!6996134 () Bool)

(assert (=> b!6157644 m!6996134))

(declare-fun m!6996136 () Bool)

(assert (=> b!6157642 m!6996136))

(declare-fun m!6996138 () Bool)

(assert (=> b!6157641 m!6996138))

(declare-fun m!6996140 () Bool)

(assert (=> b!6157638 m!6996140))

(assert (=> b!6157646 m!6995994))

(declare-fun m!6996142 () Bool)

(assert (=> b!6157646 m!6996142))

(declare-fun m!6996144 () Bool)

(assert (=> b!6157639 m!6996144))

(assert (=> b!6157451 d!1929386))

(declare-fun bs!1526154 () Bool)

(declare-fun d!1929388 () Bool)

(assert (= bs!1526154 (and d!1929388 d!1929386)))

(declare-fun lambda!335955 () Int)

(assert (=> bs!1526154 (= lambda!335955 lambda!335952)))

(declare-fun lt!2335458 () List!64600)

(assert (=> d!1929388 (forall!15221 lt!2335458 lambda!335955)))

(declare-fun e!3751784 () List!64600)

(assert (=> d!1929388 (= lt!2335458 e!3751784)))

(declare-fun c!1108707 () Bool)

(assert (=> d!1929388 (= c!1108707 (is-Cons!64477 zl!343))))

(assert (=> d!1929388 (= (unfocusZipperList!1521 zl!343) lt!2335458)))

(declare-fun b!6157651 () Bool)

(assert (=> b!6157651 (= e!3751784 (Cons!64476 (generalisedConcat!1697 (exprs!5984 (h!70925 zl!343))) (unfocusZipperList!1521 (t!378095 zl!343))))))

(declare-fun b!6157652 () Bool)

(assert (=> b!6157652 (= e!3751784 Nil!64476)))

(assert (= (and d!1929388 c!1108707) b!6157651))

(assert (= (and d!1929388 (not c!1108707)) b!6157652))

(declare-fun m!6996146 () Bool)

(assert (=> d!1929388 m!6996146))

(assert (=> b!6157651 m!6996016))

(declare-fun m!6996148 () Bool)

(assert (=> b!6157651 m!6996148))

(assert (=> b!6157451 d!1929388))

(declare-fun d!1929390 () Bool)

(declare-fun c!1108710 () Bool)

(declare-fun isEmpty!36446 (List!64599) Bool)

(assert (=> d!1929390 (= c!1108710 (isEmpty!36446 s!2326))))

(declare-fun e!3751787 () Bool)

(assert (=> d!1929390 (= (matchZipper!2112 lt!2335352 s!2326) e!3751787)))

(declare-fun b!6157657 () Bool)

(declare-fun nullableZipper!1881 ((Set Context!10968)) Bool)

(assert (=> b!6157657 (= e!3751787 (nullableZipper!1881 lt!2335352))))

(declare-fun b!6157658 () Bool)

(declare-fun derivationStepZipper!2073 ((Set Context!10968) C!32470) (Set Context!10968))

(declare-fun head!12722 (List!64599) C!32470)

(declare-fun tail!11807 (List!64599) List!64599)

(assert (=> b!6157658 (= e!3751787 (matchZipper!2112 (derivationStepZipper!2073 lt!2335352 (head!12722 s!2326)) (tail!11807 s!2326)))))

(assert (= (and d!1929390 c!1108710) b!6157657))

(assert (= (and d!1929390 (not c!1108710)) b!6157658))

(declare-fun m!6996150 () Bool)

(assert (=> d!1929390 m!6996150))

(declare-fun m!6996152 () Bool)

(assert (=> b!6157657 m!6996152))

(declare-fun m!6996154 () Bool)

(assert (=> b!6157658 m!6996154))

(assert (=> b!6157658 m!6996154))

(declare-fun m!6996156 () Bool)

(assert (=> b!6157658 m!6996156))

(declare-fun m!6996158 () Bool)

(assert (=> b!6157658 m!6996158))

(assert (=> b!6157658 m!6996156))

(assert (=> b!6157658 m!6996158))

(declare-fun m!6996160 () Bool)

(assert (=> b!6157658 m!6996160))

(assert (=> b!6157450 d!1929390))

(declare-fun bs!1526155 () Bool)

(declare-fun d!1929392 () Bool)

(assert (= bs!1526155 (and d!1929392 d!1929386)))

(declare-fun lambda!335958 () Int)

(assert (=> bs!1526155 (= lambda!335958 lambda!335952)))

(declare-fun bs!1526156 () Bool)

(assert (= bs!1526156 (and d!1929392 d!1929388)))

(assert (=> bs!1526156 (= lambda!335958 lambda!335955)))

(assert (=> d!1929392 (= (inv!83498 (h!70925 zl!343)) (forall!15221 (exprs!5984 (h!70925 zl!343)) lambda!335958))))

(declare-fun bs!1526157 () Bool)

(assert (= bs!1526157 d!1929392))

(declare-fun m!6996162 () Bool)

(assert (=> bs!1526157 m!6996162))

(assert (=> b!6157469 d!1929392))

(declare-fun d!1929394 () Bool)

(declare-fun e!3751790 () Bool)

(assert (=> d!1929394 e!3751790))

(declare-fun res!2550192 () Bool)

(assert (=> d!1929394 (=> (not res!2550192) (not e!3751790))))

(declare-fun lt!2335461 () List!64601)

(declare-fun noDuplicate!1947 (List!64601) Bool)

(assert (=> d!1929394 (= res!2550192 (noDuplicate!1947 lt!2335461))))

(declare-fun choose!45775 ((Set Context!10968)) List!64601)

(assert (=> d!1929394 (= lt!2335461 (choose!45775 z!1189))))

(assert (=> d!1929394 (= (toList!9884 z!1189) lt!2335461)))

(declare-fun b!6157661 () Bool)

(declare-fun content!12022 (List!64601) (Set Context!10968))

(assert (=> b!6157661 (= e!3751790 (= (content!12022 lt!2335461) z!1189))))

(assert (= (and d!1929394 res!2550192) b!6157661))

(declare-fun m!6996164 () Bool)

(assert (=> d!1929394 m!6996164))

(declare-fun m!6996166 () Bool)

(assert (=> d!1929394 m!6996166))

(declare-fun m!6996168 () Bool)

(assert (=> b!6157661 m!6996168))

(assert (=> b!6157474 d!1929394))

(declare-fun d!1929396 () Bool)

(declare-fun c!1108711 () Bool)

(assert (=> d!1929396 (= c!1108711 (isEmpty!36446 (t!378093 s!2326)))))

(declare-fun e!3751791 () Bool)

(assert (=> d!1929396 (= (matchZipper!2112 lt!2335362 (t!378093 s!2326)) e!3751791)))

(declare-fun b!6157662 () Bool)

(assert (=> b!6157662 (= e!3751791 (nullableZipper!1881 lt!2335362))))

(declare-fun b!6157663 () Bool)

(assert (=> b!6157663 (= e!3751791 (matchZipper!2112 (derivationStepZipper!2073 lt!2335362 (head!12722 (t!378093 s!2326))) (tail!11807 (t!378093 s!2326))))))

(assert (= (and d!1929396 c!1108711) b!6157662))

(assert (= (and d!1929396 (not c!1108711)) b!6157663))

(declare-fun m!6996170 () Bool)

(assert (=> d!1929396 m!6996170))

(declare-fun m!6996172 () Bool)

(assert (=> b!6157662 m!6996172))

(declare-fun m!6996174 () Bool)

(assert (=> b!6157663 m!6996174))

(assert (=> b!6157663 m!6996174))

(declare-fun m!6996176 () Bool)

(assert (=> b!6157663 m!6996176))

(declare-fun m!6996178 () Bool)

(assert (=> b!6157663 m!6996178))

(assert (=> b!6157663 m!6996176))

(assert (=> b!6157663 m!6996178))

(declare-fun m!6996180 () Bool)

(assert (=> b!6157663 m!6996180))

(assert (=> b!6157454 d!1929396))

(declare-fun bs!1526158 () Bool)

(declare-fun d!1929398 () Bool)

(assert (= bs!1526158 (and d!1929398 d!1929386)))

(declare-fun lambda!335959 () Int)

(assert (=> bs!1526158 (= lambda!335959 lambda!335952)))

(declare-fun bs!1526159 () Bool)

(assert (= bs!1526159 (and d!1929398 d!1929388)))

(assert (=> bs!1526159 (= lambda!335959 lambda!335955)))

(declare-fun bs!1526160 () Bool)

(assert (= bs!1526160 (and d!1929398 d!1929392)))

(assert (=> bs!1526160 (= lambda!335959 lambda!335958)))

(assert (=> d!1929398 (= (inv!83498 lt!2335359) (forall!15221 (exprs!5984 lt!2335359) lambda!335959))))

(declare-fun bs!1526161 () Bool)

(assert (= bs!1526161 d!1929398))

(declare-fun m!6996182 () Bool)

(assert (=> bs!1526161 m!6996182))

(assert (=> b!6157473 d!1929398))

(declare-fun d!1929400 () Bool)

(declare-fun c!1108712 () Bool)

(assert (=> d!1929400 (= c!1108712 (isEmpty!36446 (t!378093 s!2326)))))

(declare-fun e!3751792 () Bool)

(assert (=> d!1929400 (= (matchZipper!2112 lt!2335350 (t!378093 s!2326)) e!3751792)))

(declare-fun b!6157664 () Bool)

(assert (=> b!6157664 (= e!3751792 (nullableZipper!1881 lt!2335350))))

(declare-fun b!6157665 () Bool)

(assert (=> b!6157665 (= e!3751792 (matchZipper!2112 (derivationStepZipper!2073 lt!2335350 (head!12722 (t!378093 s!2326))) (tail!11807 (t!378093 s!2326))))))

(assert (= (and d!1929400 c!1108712) b!6157664))

(assert (= (and d!1929400 (not c!1108712)) b!6157665))

(assert (=> d!1929400 m!6996170))

(declare-fun m!6996184 () Bool)

(assert (=> b!6157664 m!6996184))

(assert (=> b!6157665 m!6996174))

(assert (=> b!6157665 m!6996174))

(declare-fun m!6996186 () Bool)

(assert (=> b!6157665 m!6996186))

(assert (=> b!6157665 m!6996178))

(assert (=> b!6157665 m!6996186))

(assert (=> b!6157665 m!6996178))

(declare-fun m!6996188 () Bool)

(assert (=> b!6157665 m!6996188))

(assert (=> b!6157472 d!1929400))

(declare-fun d!1929402 () Bool)

(declare-fun c!1108713 () Bool)

(assert (=> d!1929402 (= c!1108713 (isEmpty!36446 (t!378093 s!2326)))))

(declare-fun e!3751793 () Bool)

(assert (=> d!1929402 (= (matchZipper!2112 lt!2335337 (t!378093 s!2326)) e!3751793)))

(declare-fun b!6157666 () Bool)

(assert (=> b!6157666 (= e!3751793 (nullableZipper!1881 lt!2335337))))

(declare-fun b!6157667 () Bool)

(assert (=> b!6157667 (= e!3751793 (matchZipper!2112 (derivationStepZipper!2073 lt!2335337 (head!12722 (t!378093 s!2326))) (tail!11807 (t!378093 s!2326))))))

(assert (= (and d!1929402 c!1108713) b!6157666))

(assert (= (and d!1929402 (not c!1108713)) b!6157667))

(assert (=> d!1929402 m!6996170))

(declare-fun m!6996190 () Bool)

(assert (=> b!6157666 m!6996190))

(assert (=> b!6157667 m!6996174))

(assert (=> b!6157667 m!6996174))

(declare-fun m!6996192 () Bool)

(assert (=> b!6157667 m!6996192))

(assert (=> b!6157667 m!6996178))

(assert (=> b!6157667 m!6996192))

(assert (=> b!6157667 m!6996178))

(declare-fun m!6996194 () Bool)

(assert (=> b!6157667 m!6996194))

(assert (=> b!6157472 d!1929402))

(declare-fun d!1929404 () Bool)

(declare-fun c!1108714 () Bool)

(assert (=> d!1929404 (= c!1108714 (isEmpty!36446 (t!378093 s!2326)))))

(declare-fun e!3751794 () Bool)

(assert (=> d!1929404 (= (matchZipper!2112 lt!2335342 (t!378093 s!2326)) e!3751794)))

(declare-fun b!6157668 () Bool)

(assert (=> b!6157668 (= e!3751794 (nullableZipper!1881 lt!2335342))))

(declare-fun b!6157669 () Bool)

(assert (=> b!6157669 (= e!3751794 (matchZipper!2112 (derivationStepZipper!2073 lt!2335342 (head!12722 (t!378093 s!2326))) (tail!11807 (t!378093 s!2326))))))

(assert (= (and d!1929404 c!1108714) b!6157668))

(assert (= (and d!1929404 (not c!1108714)) b!6157669))

(assert (=> d!1929404 m!6996170))

(declare-fun m!6996196 () Bool)

(assert (=> b!6157668 m!6996196))

(assert (=> b!6157669 m!6996174))

(assert (=> b!6157669 m!6996174))

(declare-fun m!6996198 () Bool)

(assert (=> b!6157669 m!6996198))

(assert (=> b!6157669 m!6996178))

(assert (=> b!6157669 m!6996198))

(assert (=> b!6157669 m!6996178))

(declare-fun m!6996200 () Bool)

(assert (=> b!6157669 m!6996200))

(assert (=> b!6157472 d!1929404))

(declare-fun d!1929406 () Bool)

(declare-fun e!3751797 () Bool)

(assert (=> d!1929406 (= (matchZipper!2112 (set.union lt!2335342 lt!2335362) (t!378093 s!2326)) e!3751797)))

(declare-fun res!2550195 () Bool)

(assert (=> d!1929406 (=> res!2550195 e!3751797)))

(assert (=> d!1929406 (= res!2550195 (matchZipper!2112 lt!2335342 (t!378093 s!2326)))))

(declare-fun lt!2335464 () Unit!157579)

(declare-fun choose!45776 ((Set Context!10968) (Set Context!10968) List!64599) Unit!157579)

(assert (=> d!1929406 (= lt!2335464 (choose!45776 lt!2335342 lt!2335362 (t!378093 s!2326)))))

(assert (=> d!1929406 (= (lemmaZipperConcatMatchesSameAsBothZippers!931 lt!2335342 lt!2335362 (t!378093 s!2326)) lt!2335464)))

(declare-fun b!6157672 () Bool)

(assert (=> b!6157672 (= e!3751797 (matchZipper!2112 lt!2335362 (t!378093 s!2326)))))

(assert (= (and d!1929406 (not res!2550195)) b!6157672))

(declare-fun m!6996202 () Bool)

(assert (=> d!1929406 m!6996202))

(assert (=> d!1929406 m!6995926))

(declare-fun m!6996204 () Bool)

(assert (=> d!1929406 m!6996204))

(assert (=> b!6157672 m!6995918))

(assert (=> b!6157472 d!1929406))

(declare-fun d!1929408 () Bool)

(declare-fun e!3751798 () Bool)

(assert (=> d!1929408 (= (matchZipper!2112 (set.union lt!2335350 lt!2335358) (t!378093 s!2326)) e!3751798)))

(declare-fun res!2550196 () Bool)

(assert (=> d!1929408 (=> res!2550196 e!3751798)))

(assert (=> d!1929408 (= res!2550196 (matchZipper!2112 lt!2335350 (t!378093 s!2326)))))

(declare-fun lt!2335465 () Unit!157579)

(assert (=> d!1929408 (= lt!2335465 (choose!45776 lt!2335350 lt!2335358 (t!378093 s!2326)))))

(assert (=> d!1929408 (= (lemmaZipperConcatMatchesSameAsBothZippers!931 lt!2335350 lt!2335358 (t!378093 s!2326)) lt!2335465)))

(declare-fun b!6157673 () Bool)

(assert (=> b!6157673 (= e!3751798 (matchZipper!2112 lt!2335358 (t!378093 s!2326)))))

(assert (= (and d!1929408 (not res!2550196)) b!6157673))

(assert (=> d!1929408 m!6995914))

(assert (=> d!1929408 m!6995912))

(declare-fun m!6996206 () Bool)

(assert (=> d!1929408 m!6996206))

(assert (=> b!6157673 m!6995962))

(assert (=> b!6157456 d!1929408))

(assert (=> b!6157456 d!1929400))

(declare-fun d!1929410 () Bool)

(declare-fun c!1108715 () Bool)

(assert (=> d!1929410 (= c!1108715 (isEmpty!36446 (t!378093 s!2326)))))

(declare-fun e!3751799 () Bool)

(assert (=> d!1929410 (= (matchZipper!2112 (set.union lt!2335350 lt!2335358) (t!378093 s!2326)) e!3751799)))

(declare-fun b!6157674 () Bool)

(assert (=> b!6157674 (= e!3751799 (nullableZipper!1881 (set.union lt!2335350 lt!2335358)))))

(declare-fun b!6157675 () Bool)

(assert (=> b!6157675 (= e!3751799 (matchZipper!2112 (derivationStepZipper!2073 (set.union lt!2335350 lt!2335358) (head!12722 (t!378093 s!2326))) (tail!11807 (t!378093 s!2326))))))

(assert (= (and d!1929410 c!1108715) b!6157674))

(assert (= (and d!1929410 (not c!1108715)) b!6157675))

(assert (=> d!1929410 m!6996170))

(declare-fun m!6996208 () Bool)

(assert (=> b!6157674 m!6996208))

(assert (=> b!6157675 m!6996174))

(assert (=> b!6157675 m!6996174))

(declare-fun m!6996210 () Bool)

(assert (=> b!6157675 m!6996210))

(assert (=> b!6157675 m!6996178))

(assert (=> b!6157675 m!6996210))

(assert (=> b!6157675 m!6996178))

(declare-fun m!6996212 () Bool)

(assert (=> b!6157675 m!6996212))

(assert (=> b!6157456 d!1929410))

(declare-fun b!6157694 () Bool)

(declare-fun res!2550208 () Bool)

(declare-fun e!3751811 () Bool)

(assert (=> b!6157694 (=> (not res!2550208) (not e!3751811))))

(declare-fun lt!2335473 () Option!15991)

(declare-fun get!22252 (Option!15991) tuple2!66158)

(assert (=> b!6157694 (= res!2550208 (matchR!8283 (regOne!32712 r!7292) (_1!36382 (get!22252 lt!2335473))))))

(declare-fun b!6157695 () Bool)

(declare-fun res!2550209 () Bool)

(assert (=> b!6157695 (=> (not res!2550209) (not e!3751811))))

(assert (=> b!6157695 (= res!2550209 (matchR!8283 (regTwo!32712 r!7292) (_2!36382 (get!22252 lt!2335473))))))

(declare-fun b!6157696 () Bool)

(declare-fun lt!2335472 () Unit!157579)

(declare-fun lt!2335474 () Unit!157579)

(assert (=> b!6157696 (= lt!2335472 lt!2335474)))

(declare-fun ++!14186 (List!64599 List!64599) List!64599)

(assert (=> b!6157696 (= (++!14186 (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) Nil!64475)) (t!378093 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2281 (List!64599 C!32470 List!64599 List!64599) Unit!157579)

(assert (=> b!6157696 (= lt!2335474 (lemmaMoveElementToOtherListKeepsConcatEq!2281 Nil!64475 (h!70923 s!2326) (t!378093 s!2326) s!2326))))

(declare-fun e!3751810 () Option!15991)

(assert (=> b!6157696 (= e!3751810 (findConcatSeparation!2405 (regOne!32712 r!7292) (regTwo!32712 r!7292) (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) Nil!64475)) (t!378093 s!2326) s!2326))))

(declare-fun b!6157697 () Bool)

(declare-fun e!3751814 () Option!15991)

(assert (=> b!6157697 (= e!3751814 (Some!15990 (tuple2!66159 Nil!64475 s!2326)))))

(declare-fun b!6157698 () Bool)

(assert (=> b!6157698 (= e!3751811 (= (++!14186 (_1!36382 (get!22252 lt!2335473)) (_2!36382 (get!22252 lt!2335473))) s!2326))))

(declare-fun b!6157699 () Bool)

(assert (=> b!6157699 (= e!3751810 None!15990)))

(declare-fun d!1929412 () Bool)

(declare-fun e!3751813 () Bool)

(assert (=> d!1929412 e!3751813))

(declare-fun res!2550210 () Bool)

(assert (=> d!1929412 (=> res!2550210 e!3751813)))

(assert (=> d!1929412 (= res!2550210 e!3751811)))

(declare-fun res!2550211 () Bool)

(assert (=> d!1929412 (=> (not res!2550211) (not e!3751811))))

(assert (=> d!1929412 (= res!2550211 (isDefined!12694 lt!2335473))))

(assert (=> d!1929412 (= lt!2335473 e!3751814)))

(declare-fun c!1108721 () Bool)

(declare-fun e!3751812 () Bool)

(assert (=> d!1929412 (= c!1108721 e!3751812)))

(declare-fun res!2550207 () Bool)

(assert (=> d!1929412 (=> (not res!2550207) (not e!3751812))))

(assert (=> d!1929412 (= res!2550207 (matchR!8283 (regOne!32712 r!7292) Nil!64475))))

(assert (=> d!1929412 (validRegex!7836 (regOne!32712 r!7292))))

(assert (=> d!1929412 (= (findConcatSeparation!2405 (regOne!32712 r!7292) (regTwo!32712 r!7292) Nil!64475 s!2326 s!2326) lt!2335473)))

(declare-fun b!6157700 () Bool)

(assert (=> b!6157700 (= e!3751814 e!3751810)))

(declare-fun c!1108720 () Bool)

(assert (=> b!6157700 (= c!1108720 (is-Nil!64475 s!2326))))

(declare-fun b!6157701 () Bool)

(assert (=> b!6157701 (= e!3751812 (matchR!8283 (regTwo!32712 r!7292) s!2326))))

(declare-fun b!6157702 () Bool)

(assert (=> b!6157702 (= e!3751813 (not (isDefined!12694 lt!2335473)))))

(assert (= (and d!1929412 res!2550207) b!6157701))

(assert (= (and d!1929412 c!1108721) b!6157697))

(assert (= (and d!1929412 (not c!1108721)) b!6157700))

(assert (= (and b!6157700 c!1108720) b!6157699))

(assert (= (and b!6157700 (not c!1108720)) b!6157696))

(assert (= (and d!1929412 res!2550211) b!6157694))

(assert (= (and b!6157694 res!2550208) b!6157695))

(assert (= (and b!6157695 res!2550209) b!6157698))

(assert (= (and d!1929412 (not res!2550210)) b!6157702))

(declare-fun m!6996214 () Bool)

(assert (=> b!6157698 m!6996214))

(declare-fun m!6996216 () Bool)

(assert (=> b!6157698 m!6996216))

(assert (=> b!6157694 m!6996214))

(declare-fun m!6996218 () Bool)

(assert (=> b!6157694 m!6996218))

(assert (=> b!6157695 m!6996214))

(declare-fun m!6996220 () Bool)

(assert (=> b!6157695 m!6996220))

(declare-fun m!6996222 () Bool)

(assert (=> b!6157696 m!6996222))

(assert (=> b!6157696 m!6996222))

(declare-fun m!6996224 () Bool)

(assert (=> b!6157696 m!6996224))

(declare-fun m!6996226 () Bool)

(assert (=> b!6157696 m!6996226))

(assert (=> b!6157696 m!6996222))

(declare-fun m!6996228 () Bool)

(assert (=> b!6157696 m!6996228))

(declare-fun m!6996230 () Bool)

(assert (=> d!1929412 m!6996230))

(declare-fun m!6996232 () Bool)

(assert (=> d!1929412 m!6996232))

(declare-fun m!6996234 () Bool)

(assert (=> d!1929412 m!6996234))

(declare-fun m!6996236 () Bool)

(assert (=> b!6157701 m!6996236))

(assert (=> b!6157702 m!6996230))

(assert (=> b!6157455 d!1929412))

(declare-fun d!1929414 () Bool)

(declare-fun choose!45777 (Int) Bool)

(assert (=> d!1929414 (= (Exists!3170 lambda!335932) (choose!45777 lambda!335932))))

(declare-fun bs!1526162 () Bool)

(assert (= bs!1526162 d!1929414))

(declare-fun m!6996238 () Bool)

(assert (=> bs!1526162 m!6996238))

(assert (=> b!6157455 d!1929414))

(declare-fun d!1929416 () Bool)

(assert (=> d!1929416 (= (Exists!3170 lambda!335933) (choose!45777 lambda!335933))))

(declare-fun bs!1526163 () Bool)

(assert (= bs!1526163 d!1929416))

(declare-fun m!6996240 () Bool)

(assert (=> bs!1526163 m!6996240))

(assert (=> b!6157455 d!1929416))

(declare-fun bs!1526164 () Bool)

(declare-fun d!1929418 () Bool)

(assert (= bs!1526164 (and d!1929418 b!6157455)))

(declare-fun lambda!335962 () Int)

(assert (=> bs!1526164 (= lambda!335962 lambda!335932)))

(assert (=> bs!1526164 (not (= lambda!335962 lambda!335933))))

(assert (=> d!1929418 true))

(assert (=> d!1929418 true))

(assert (=> d!1929418 true))

(assert (=> d!1929418 (= (isDefined!12694 (findConcatSeparation!2405 (regOne!32712 r!7292) (regTwo!32712 r!7292) Nil!64475 s!2326 s!2326)) (Exists!3170 lambda!335962))))

(declare-fun lt!2335477 () Unit!157579)

(declare-fun choose!45778 (Regex!16100 Regex!16100 List!64599) Unit!157579)

(assert (=> d!1929418 (= lt!2335477 (choose!45778 (regOne!32712 r!7292) (regTwo!32712 r!7292) s!2326))))

(assert (=> d!1929418 (validRegex!7836 (regOne!32712 r!7292))))

(assert (=> d!1929418 (= (lemmaFindConcatSeparationEquivalentToExists!2169 (regOne!32712 r!7292) (regTwo!32712 r!7292) s!2326) lt!2335477)))

(declare-fun bs!1526165 () Bool)

(assert (= bs!1526165 d!1929418))

(assert (=> bs!1526165 m!6995976))

(assert (=> bs!1526165 m!6995976))

(assert (=> bs!1526165 m!6995978))

(declare-fun m!6996242 () Bool)

(assert (=> bs!1526165 m!6996242))

(declare-fun m!6996244 () Bool)

(assert (=> bs!1526165 m!6996244))

(assert (=> bs!1526165 m!6996234))

(assert (=> b!6157455 d!1929418))

(declare-fun bs!1526166 () Bool)

(declare-fun d!1929420 () Bool)

(assert (= bs!1526166 (and d!1929420 b!6157455)))

(declare-fun lambda!335967 () Int)

(assert (=> bs!1526166 (= lambda!335967 lambda!335932)))

(assert (=> bs!1526166 (not (= lambda!335967 lambda!335933))))

(declare-fun bs!1526167 () Bool)

(assert (= bs!1526167 (and d!1929420 d!1929418)))

(assert (=> bs!1526167 (= lambda!335967 lambda!335962)))

(assert (=> d!1929420 true))

(assert (=> d!1929420 true))

(assert (=> d!1929420 true))

(declare-fun lambda!335968 () Int)

(assert (=> bs!1526166 (not (= lambda!335968 lambda!335932))))

(assert (=> bs!1526166 (= lambda!335968 lambda!335933)))

(assert (=> bs!1526167 (not (= lambda!335968 lambda!335962))))

(declare-fun bs!1526168 () Bool)

(assert (= bs!1526168 d!1929420))

(assert (=> bs!1526168 (not (= lambda!335968 lambda!335967))))

(assert (=> d!1929420 true))

(assert (=> d!1929420 true))

(assert (=> d!1929420 true))

(assert (=> d!1929420 (= (Exists!3170 lambda!335967) (Exists!3170 lambda!335968))))

(declare-fun lt!2335480 () Unit!157579)

(declare-fun choose!45779 (Regex!16100 Regex!16100 List!64599) Unit!157579)

(assert (=> d!1929420 (= lt!2335480 (choose!45779 (regOne!32712 r!7292) (regTwo!32712 r!7292) s!2326))))

(assert (=> d!1929420 (validRegex!7836 (regOne!32712 r!7292))))

(assert (=> d!1929420 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1707 (regOne!32712 r!7292) (regTwo!32712 r!7292) s!2326) lt!2335480)))

(declare-fun m!6996246 () Bool)

(assert (=> bs!1526168 m!6996246))

(declare-fun m!6996248 () Bool)

(assert (=> bs!1526168 m!6996248))

(declare-fun m!6996250 () Bool)

(assert (=> bs!1526168 m!6996250))

(assert (=> bs!1526168 m!6996234))

(assert (=> b!6157455 d!1929420))

(declare-fun d!1929422 () Bool)

(declare-fun isEmpty!36447 (Option!15991) Bool)

(assert (=> d!1929422 (= (isDefined!12694 (findConcatSeparation!2405 (regOne!32712 r!7292) (regTwo!32712 r!7292) Nil!64475 s!2326 s!2326)) (not (isEmpty!36447 (findConcatSeparation!2405 (regOne!32712 r!7292) (regTwo!32712 r!7292) Nil!64475 s!2326 s!2326))))))

(declare-fun bs!1526169 () Bool)

(assert (= bs!1526169 d!1929422))

(assert (=> bs!1526169 m!6995976))

(declare-fun m!6996252 () Bool)

(assert (=> bs!1526169 m!6996252))

(assert (=> b!6157455 d!1929422))

(declare-fun b!6157737 () Bool)

(declare-fun e!3751837 () (Set Context!10968))

(declare-fun e!3751835 () (Set Context!10968))

(assert (=> b!6157737 (= e!3751837 e!3751835)))

(declare-fun c!1108735 () Bool)

(assert (=> b!6157737 (= c!1108735 (is-Union!16100 (regTwo!32713 (regOne!32712 r!7292))))))

(declare-fun b!6157738 () Bool)

(declare-fun call!512595 () (Set Context!10968))

(declare-fun call!512596 () (Set Context!10968))

(assert (=> b!6157738 (= e!3751835 (set.union call!512595 call!512596))))

(declare-fun bm!512586 () Bool)

(declare-fun call!512594 () (Set Context!10968))

(assert (=> bm!512586 (= call!512594 call!512596)))

(declare-fun b!6157739 () Bool)

(declare-fun e!3751836 () (Set Context!10968))

(assert (=> b!6157739 (= e!3751836 (set.union call!512595 call!512594))))

(declare-fun b!6157740 () Bool)

(assert (=> b!6157740 (= e!3751837 (set.insert lt!2335351 (as set.empty (Set Context!10968))))))

(declare-fun d!1929424 () Bool)

(declare-fun c!1108732 () Bool)

(assert (=> d!1929424 (= c!1108732 (and (is-ElementMatch!16100 (regTwo!32713 (regOne!32712 r!7292))) (= (c!1108675 (regTwo!32713 (regOne!32712 r!7292))) (h!70923 s!2326))))))

(assert (=> d!1929424 (= (derivationStepZipperDown!1348 (regTwo!32713 (regOne!32712 r!7292)) lt!2335351 (h!70923 s!2326)) e!3751837)))

(declare-fun b!6157741 () Bool)

(declare-fun e!3751834 () (Set Context!10968))

(declare-fun call!512593 () (Set Context!10968))

(assert (=> b!6157741 (= e!3751834 call!512593)))

(declare-fun c!1108733 () Bool)

(declare-fun bm!512587 () Bool)

(declare-fun c!1108734 () Bool)

(declare-fun call!512592 () List!64600)

(assert (=> bm!512587 (= call!512596 (derivationStepZipperDown!1348 (ite c!1108735 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108733 (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108734 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))) (reg!16429 (regTwo!32713 (regOne!32712 r!7292)))))) (ite (or c!1108735 c!1108733) lt!2335351 (Context!10969 call!512592)) (h!70923 s!2326)))))

(declare-fun b!6157742 () Bool)

(declare-fun e!3751833 () (Set Context!10968))

(assert (=> b!6157742 (= e!3751836 e!3751833)))

(assert (=> b!6157742 (= c!1108734 (is-Concat!24945 (regTwo!32713 (regOne!32712 r!7292))))))

(declare-fun b!6157743 () Bool)

(declare-fun c!1108736 () Bool)

(assert (=> b!6157743 (= c!1108736 (is-Star!16100 (regTwo!32713 (regOne!32712 r!7292))))))

(assert (=> b!6157743 (= e!3751833 e!3751834)))

(declare-fun bm!512588 () Bool)

(assert (=> bm!512588 (= call!512593 call!512594)))

(declare-fun b!6157744 () Bool)

(declare-fun e!3751838 () Bool)

(assert (=> b!6157744 (= c!1108733 e!3751838)))

(declare-fun res!2550226 () Bool)

(assert (=> b!6157744 (=> (not res!2550226) (not e!3751838))))

(assert (=> b!6157744 (= res!2550226 (is-Concat!24945 (regTwo!32713 (regOne!32712 r!7292))))))

(assert (=> b!6157744 (= e!3751835 e!3751836)))

(declare-fun call!512591 () List!64600)

(declare-fun bm!512589 () Bool)

(declare-fun $colon$colon!1977 (List!64600 Regex!16100) List!64600)

(assert (=> bm!512589 (= call!512591 ($colon$colon!1977 (exprs!5984 lt!2335351) (ite (or c!1108733 c!1108734) (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (regTwo!32713 (regOne!32712 r!7292)))))))

(declare-fun b!6157745 () Bool)

(assert (=> b!6157745 (= e!3751838 (nullable!6093 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292)))))))

(declare-fun b!6157746 () Bool)

(assert (=> b!6157746 (= e!3751834 (as set.empty (Set Context!10968)))))

(declare-fun b!6157747 () Bool)

(assert (=> b!6157747 (= e!3751833 call!512593)))

(declare-fun bm!512590 () Bool)

(assert (=> bm!512590 (= call!512595 (derivationStepZipperDown!1348 (ite c!1108735 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292)))) (ite c!1108735 lt!2335351 (Context!10969 call!512591)) (h!70923 s!2326)))))

(declare-fun bm!512591 () Bool)

(assert (=> bm!512591 (= call!512592 call!512591)))

(assert (= (and d!1929424 c!1108732) b!6157740))

(assert (= (and d!1929424 (not c!1108732)) b!6157737))

(assert (= (and b!6157737 c!1108735) b!6157738))

(assert (= (and b!6157737 (not c!1108735)) b!6157744))

(assert (= (and b!6157744 res!2550226) b!6157745))

(assert (= (and b!6157744 c!1108733) b!6157739))

(assert (= (and b!6157744 (not c!1108733)) b!6157742))

(assert (= (and b!6157742 c!1108734) b!6157747))

(assert (= (and b!6157742 (not c!1108734)) b!6157743))

(assert (= (and b!6157743 c!1108736) b!6157741))

(assert (= (and b!6157743 (not c!1108736)) b!6157746))

(assert (= (or b!6157747 b!6157741) bm!512591))

(assert (= (or b!6157747 b!6157741) bm!512588))

(assert (= (or b!6157739 bm!512591) bm!512589))

(assert (= (or b!6157739 bm!512588) bm!512586))

(assert (= (or b!6157738 bm!512586) bm!512587))

(assert (= (or b!6157738 b!6157739) bm!512590))

(declare-fun m!6996254 () Bool)

(assert (=> bm!512587 m!6996254))

(declare-fun m!6996256 () Bool)

(assert (=> b!6157740 m!6996256))

(declare-fun m!6996258 () Bool)

(assert (=> bm!512589 m!6996258))

(declare-fun m!6996260 () Bool)

(assert (=> bm!512590 m!6996260))

(declare-fun m!6996262 () Bool)

(assert (=> b!6157745 m!6996262))

(assert (=> b!6157475 d!1929424))

(declare-fun b!6157748 () Bool)

(declare-fun e!3751843 () (Set Context!10968))

(declare-fun e!3751841 () (Set Context!10968))

(assert (=> b!6157748 (= e!3751843 e!3751841)))

(declare-fun c!1108740 () Bool)

(assert (=> b!6157748 (= c!1108740 (is-Union!16100 (regOne!32713 (regOne!32712 r!7292))))))

(declare-fun b!6157749 () Bool)

(declare-fun call!512601 () (Set Context!10968))

(declare-fun call!512602 () (Set Context!10968))

(assert (=> b!6157749 (= e!3751841 (set.union call!512601 call!512602))))

(declare-fun bm!512592 () Bool)

(declare-fun call!512600 () (Set Context!10968))

(assert (=> bm!512592 (= call!512600 call!512602)))

(declare-fun b!6157750 () Bool)

(declare-fun e!3751842 () (Set Context!10968))

(assert (=> b!6157750 (= e!3751842 (set.union call!512601 call!512600))))

(declare-fun b!6157751 () Bool)

(assert (=> b!6157751 (= e!3751843 (set.insert lt!2335351 (as set.empty (Set Context!10968))))))

(declare-fun d!1929426 () Bool)

(declare-fun c!1108737 () Bool)

(assert (=> d!1929426 (= c!1108737 (and (is-ElementMatch!16100 (regOne!32713 (regOne!32712 r!7292))) (= (c!1108675 (regOne!32713 (regOne!32712 r!7292))) (h!70923 s!2326))))))

(assert (=> d!1929426 (= (derivationStepZipperDown!1348 (regOne!32713 (regOne!32712 r!7292)) lt!2335351 (h!70923 s!2326)) e!3751843)))

(declare-fun b!6157752 () Bool)

(declare-fun e!3751840 () (Set Context!10968))

(declare-fun call!512599 () (Set Context!10968))

(assert (=> b!6157752 (= e!3751840 call!512599)))

(declare-fun c!1108739 () Bool)

(declare-fun bm!512593 () Bool)

(declare-fun c!1108738 () Bool)

(declare-fun call!512598 () List!64600)

(assert (=> bm!512593 (= call!512602 (derivationStepZipperDown!1348 (ite c!1108740 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108738 (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108739 (regOne!32712 (regOne!32713 (regOne!32712 r!7292))) (reg!16429 (regOne!32713 (regOne!32712 r!7292)))))) (ite (or c!1108740 c!1108738) lt!2335351 (Context!10969 call!512598)) (h!70923 s!2326)))))

(declare-fun b!6157753 () Bool)

(declare-fun e!3751839 () (Set Context!10968))

(assert (=> b!6157753 (= e!3751842 e!3751839)))

(assert (=> b!6157753 (= c!1108739 (is-Concat!24945 (regOne!32713 (regOne!32712 r!7292))))))

(declare-fun b!6157754 () Bool)

(declare-fun c!1108741 () Bool)

(assert (=> b!6157754 (= c!1108741 (is-Star!16100 (regOne!32713 (regOne!32712 r!7292))))))

(assert (=> b!6157754 (= e!3751839 e!3751840)))

(declare-fun bm!512594 () Bool)

(assert (=> bm!512594 (= call!512599 call!512600)))

(declare-fun b!6157755 () Bool)

(declare-fun e!3751844 () Bool)

(assert (=> b!6157755 (= c!1108738 e!3751844)))

(declare-fun res!2550227 () Bool)

(assert (=> b!6157755 (=> (not res!2550227) (not e!3751844))))

(assert (=> b!6157755 (= res!2550227 (is-Concat!24945 (regOne!32713 (regOne!32712 r!7292))))))

(assert (=> b!6157755 (= e!3751841 e!3751842)))

(declare-fun call!512597 () List!64600)

(declare-fun bm!512595 () Bool)

(assert (=> bm!512595 (= call!512597 ($colon$colon!1977 (exprs!5984 lt!2335351) (ite (or c!1108738 c!1108739) (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (regOne!32713 (regOne!32712 r!7292)))))))

(declare-fun b!6157756 () Bool)

(assert (=> b!6157756 (= e!3751844 (nullable!6093 (regOne!32712 (regOne!32713 (regOne!32712 r!7292)))))))

(declare-fun b!6157757 () Bool)

(assert (=> b!6157757 (= e!3751840 (as set.empty (Set Context!10968)))))

(declare-fun b!6157758 () Bool)

(assert (=> b!6157758 (= e!3751839 call!512599)))

(declare-fun bm!512596 () Bool)

(assert (=> bm!512596 (= call!512601 (derivationStepZipperDown!1348 (ite c!1108740 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292)))) (ite c!1108740 lt!2335351 (Context!10969 call!512597)) (h!70923 s!2326)))))

(declare-fun bm!512597 () Bool)

(assert (=> bm!512597 (= call!512598 call!512597)))

(assert (= (and d!1929426 c!1108737) b!6157751))

(assert (= (and d!1929426 (not c!1108737)) b!6157748))

(assert (= (and b!6157748 c!1108740) b!6157749))

(assert (= (and b!6157748 (not c!1108740)) b!6157755))

(assert (= (and b!6157755 res!2550227) b!6157756))

(assert (= (and b!6157755 c!1108738) b!6157750))

(assert (= (and b!6157755 (not c!1108738)) b!6157753))

(assert (= (and b!6157753 c!1108739) b!6157758))

(assert (= (and b!6157753 (not c!1108739)) b!6157754))

(assert (= (and b!6157754 c!1108741) b!6157752))

(assert (= (and b!6157754 (not c!1108741)) b!6157757))

(assert (= (or b!6157758 b!6157752) bm!512597))

(assert (= (or b!6157758 b!6157752) bm!512594))

(assert (= (or b!6157750 bm!512597) bm!512595))

(assert (= (or b!6157750 bm!512594) bm!512592))

(assert (= (or b!6157749 bm!512592) bm!512593))

(assert (= (or b!6157749 b!6157750) bm!512596))

(declare-fun m!6996264 () Bool)

(assert (=> bm!512593 m!6996264))

(assert (=> b!6157751 m!6996256))

(declare-fun m!6996266 () Bool)

(assert (=> bm!512595 m!6996266))

(declare-fun m!6996268 () Bool)

(assert (=> bm!512596 m!6996268))

(declare-fun m!6996270 () Bool)

(assert (=> b!6157756 m!6996270))

(assert (=> b!6157475 d!1929426))

(declare-fun d!1929428 () Bool)

(declare-fun c!1108742 () Bool)

(assert (=> d!1929428 (= c!1108742 (isEmpty!36446 (t!378093 s!2326)))))

(declare-fun e!3751845 () Bool)

(assert (=> d!1929428 (= (matchZipper!2112 lt!2335358 (t!378093 s!2326)) e!3751845)))

(declare-fun b!6157759 () Bool)

(assert (=> b!6157759 (= e!3751845 (nullableZipper!1881 lt!2335358))))

(declare-fun b!6157760 () Bool)

(assert (=> b!6157760 (= e!3751845 (matchZipper!2112 (derivationStepZipper!2073 lt!2335358 (head!12722 (t!378093 s!2326))) (tail!11807 (t!378093 s!2326))))))

(assert (= (and d!1929428 c!1108742) b!6157759))

(assert (= (and d!1929428 (not c!1108742)) b!6157760))

(assert (=> d!1929428 m!6996170))

(declare-fun m!6996272 () Bool)

(assert (=> b!6157759 m!6996272))

(assert (=> b!6157760 m!6996174))

(assert (=> b!6157760 m!6996174))

(declare-fun m!6996274 () Bool)

(assert (=> b!6157760 m!6996274))

(assert (=> b!6157760 m!6996178))

(assert (=> b!6157760 m!6996274))

(assert (=> b!6157760 m!6996178))

(declare-fun m!6996276 () Bool)

(assert (=> b!6157760 m!6996276))

(assert (=> b!6157479 d!1929428))

(declare-fun bs!1526170 () Bool)

(declare-fun d!1929430 () Bool)

(assert (= bs!1526170 (and d!1929430 d!1929386)))

(declare-fun lambda!335969 () Int)

(assert (=> bs!1526170 (= lambda!335969 lambda!335952)))

(declare-fun bs!1526171 () Bool)

(assert (= bs!1526171 (and d!1929430 d!1929388)))

(assert (=> bs!1526171 (= lambda!335969 lambda!335955)))

(declare-fun bs!1526172 () Bool)

(assert (= bs!1526172 (and d!1929430 d!1929392)))

(assert (=> bs!1526172 (= lambda!335969 lambda!335958)))

(declare-fun bs!1526173 () Bool)

(assert (= bs!1526173 (and d!1929430 d!1929398)))

(assert (=> bs!1526173 (= lambda!335969 lambda!335959)))

(assert (=> d!1929430 (= (inv!83498 setElem!41715) (forall!15221 (exprs!5984 setElem!41715) lambda!335969))))

(declare-fun bs!1526174 () Bool)

(assert (= bs!1526174 d!1929430))

(declare-fun m!6996278 () Bool)

(assert (=> bs!1526174 m!6996278))

(assert (=> setNonEmpty!41715 d!1929430))

(assert (=> b!6157457 d!1929396))

(declare-fun d!1929432 () Bool)

(assert (=> d!1929432 (= (isEmpty!36442 (t!378095 zl!343)) (is-Nil!64477 (t!378095 zl!343)))))

(assert (=> b!6157477 d!1929432))

(declare-fun bs!1526175 () Bool)

(declare-fun d!1929434 () Bool)

(assert (= bs!1526175 (and d!1929434 d!1929388)))

(declare-fun lambda!335972 () Int)

(assert (=> bs!1526175 (= lambda!335972 lambda!335955)))

(declare-fun bs!1526176 () Bool)

(assert (= bs!1526176 (and d!1929434 d!1929386)))

(assert (=> bs!1526176 (= lambda!335972 lambda!335952)))

(declare-fun bs!1526177 () Bool)

(assert (= bs!1526177 (and d!1929434 d!1929430)))

(assert (=> bs!1526177 (= lambda!335972 lambda!335969)))

(declare-fun bs!1526178 () Bool)

(assert (= bs!1526178 (and d!1929434 d!1929392)))

(assert (=> bs!1526178 (= lambda!335972 lambda!335958)))

(declare-fun bs!1526179 () Bool)

(assert (= bs!1526179 (and d!1929434 d!1929398)))

(assert (=> bs!1526179 (= lambda!335972 lambda!335959)))

(declare-fun e!3751860 () Bool)

(assert (=> d!1929434 e!3751860))

(declare-fun res!2550233 () Bool)

(assert (=> d!1929434 (=> (not res!2550233) (not e!3751860))))

(declare-fun lt!2335483 () Regex!16100)

(assert (=> d!1929434 (= res!2550233 (validRegex!7836 lt!2335483))))

(declare-fun e!3751859 () Regex!16100)

(assert (=> d!1929434 (= lt!2335483 e!3751859)))

(declare-fun c!1108751 () Bool)

(declare-fun e!3751861 () Bool)

(assert (=> d!1929434 (= c!1108751 e!3751861)))

(declare-fun res!2550232 () Bool)

(assert (=> d!1929434 (=> (not res!2550232) (not e!3751861))))

(assert (=> d!1929434 (= res!2550232 (is-Cons!64476 (exprs!5984 (h!70925 zl!343))))))

(assert (=> d!1929434 (forall!15221 (exprs!5984 (h!70925 zl!343)) lambda!335972)))

(assert (=> d!1929434 (= (generalisedConcat!1697 (exprs!5984 (h!70925 zl!343))) lt!2335483)))

(declare-fun b!6157781 () Bool)

(declare-fun e!3751863 () Regex!16100)

(assert (=> b!6157781 (= e!3751863 EmptyExpr!16100)))

(declare-fun b!6157782 () Bool)

(declare-fun e!3751862 () Bool)

(declare-fun isEmptyExpr!1517 (Regex!16100) Bool)

(assert (=> b!6157782 (= e!3751862 (isEmptyExpr!1517 lt!2335483))))

(declare-fun b!6157783 () Bool)

(assert (=> b!6157783 (= e!3751859 (h!70924 (exprs!5984 (h!70925 zl!343))))))

(declare-fun b!6157784 () Bool)

(assert (=> b!6157784 (= e!3751863 (Concat!24945 (h!70924 (exprs!5984 (h!70925 zl!343))) (generalisedConcat!1697 (t!378094 (exprs!5984 (h!70925 zl!343))))))))

(declare-fun b!6157785 () Bool)

(assert (=> b!6157785 (= e!3751859 e!3751863)))

(declare-fun c!1108753 () Bool)

(assert (=> b!6157785 (= c!1108753 (is-Cons!64476 (exprs!5984 (h!70925 zl!343))))))

(declare-fun b!6157786 () Bool)

(declare-fun e!3751858 () Bool)

(assert (=> b!6157786 (= e!3751862 e!3751858)))

(declare-fun c!1108754 () Bool)

(assert (=> b!6157786 (= c!1108754 (isEmpty!36443 (tail!11806 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun b!6157787 () Bool)

(assert (=> b!6157787 (= e!3751858 (= lt!2335483 (head!12721 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun b!6157788 () Bool)

(declare-fun isConcat!1040 (Regex!16100) Bool)

(assert (=> b!6157788 (= e!3751858 (isConcat!1040 lt!2335483))))

(declare-fun b!6157789 () Bool)

(assert (=> b!6157789 (= e!3751861 (isEmpty!36443 (t!378094 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun b!6157790 () Bool)

(assert (=> b!6157790 (= e!3751860 e!3751862)))

(declare-fun c!1108752 () Bool)

(assert (=> b!6157790 (= c!1108752 (isEmpty!36443 (exprs!5984 (h!70925 zl!343))))))

(assert (= (and d!1929434 res!2550232) b!6157789))

(assert (= (and d!1929434 c!1108751) b!6157783))

(assert (= (and d!1929434 (not c!1108751)) b!6157785))

(assert (= (and b!6157785 c!1108753) b!6157784))

(assert (= (and b!6157785 (not c!1108753)) b!6157781))

(assert (= (and d!1929434 res!2550233) b!6157790))

(assert (= (and b!6157790 c!1108752) b!6157782))

(assert (= (and b!6157790 (not c!1108752)) b!6157786))

(assert (= (and b!6157786 c!1108754) b!6157787))

(assert (= (and b!6157786 (not c!1108754)) b!6157788))

(declare-fun m!6996280 () Bool)

(assert (=> b!6157790 m!6996280))

(declare-fun m!6996282 () Bool)

(assert (=> b!6157784 m!6996282))

(declare-fun m!6996284 () Bool)

(assert (=> d!1929434 m!6996284))

(declare-fun m!6996286 () Bool)

(assert (=> d!1929434 m!6996286))

(declare-fun m!6996288 () Bool)

(assert (=> b!6157786 m!6996288))

(assert (=> b!6157786 m!6996288))

(declare-fun m!6996290 () Bool)

(assert (=> b!6157786 m!6996290))

(declare-fun m!6996292 () Bool)

(assert (=> b!6157787 m!6996292))

(declare-fun m!6996294 () Bool)

(assert (=> b!6157782 m!6996294))

(assert (=> b!6157789 m!6995922))

(declare-fun m!6996296 () Bool)

(assert (=> b!6157788 m!6996296))

(assert (=> b!6157460 d!1929434))

(declare-fun d!1929436 () Bool)

(assert (=> d!1929436 (= (isEmpty!36443 (t!378094 (exprs!5984 (h!70925 zl!343)))) (is-Nil!64476 (t!378094 (exprs!5984 (h!70925 zl!343)))))))

(assert (=> b!6157481 d!1929436))

(declare-fun bs!1526180 () Bool)

(declare-fun b!6157830 () Bool)

(assert (= bs!1526180 (and b!6157830 d!1929418)))

(declare-fun lambda!335977 () Int)

(assert (=> bs!1526180 (not (= lambda!335977 lambda!335962))))

(declare-fun bs!1526181 () Bool)

(assert (= bs!1526181 (and b!6157830 b!6157455)))

(assert (=> bs!1526181 (not (= lambda!335977 lambda!335932))))

(declare-fun bs!1526182 () Bool)

(assert (= bs!1526182 (and b!6157830 d!1929420)))

(assert (=> bs!1526182 (not (= lambda!335977 lambda!335967))))

(assert (=> bs!1526181 (not (= lambda!335977 lambda!335933))))

(assert (=> bs!1526182 (not (= lambda!335977 lambda!335968))))

(assert (=> b!6157830 true))

(assert (=> b!6157830 true))

(declare-fun bs!1526183 () Bool)

(declare-fun b!6157828 () Bool)

(assert (= bs!1526183 (and b!6157828 d!1929418)))

(declare-fun lambda!335978 () Int)

(assert (=> bs!1526183 (not (= lambda!335978 lambda!335962))))

(declare-fun bs!1526184 () Bool)

(assert (= bs!1526184 (and b!6157828 b!6157455)))

(assert (=> bs!1526184 (not (= lambda!335978 lambda!335932))))

(declare-fun bs!1526185 () Bool)

(assert (= bs!1526185 (and b!6157828 d!1929420)))

(assert (=> bs!1526185 (not (= lambda!335978 lambda!335967))))

(assert (=> bs!1526184 (= lambda!335978 lambda!335933)))

(declare-fun bs!1526186 () Bool)

(assert (= bs!1526186 (and b!6157828 b!6157830)))

(assert (=> bs!1526186 (not (= lambda!335978 lambda!335977))))

(assert (=> bs!1526185 (= lambda!335978 lambda!335968)))

(assert (=> b!6157828 true))

(assert (=> b!6157828 true))

(declare-fun b!6157823 () Bool)

(declare-fun e!3751887 () Bool)

(declare-fun e!3751884 () Bool)

(assert (=> b!6157823 (= e!3751887 e!3751884)))

(declare-fun res!2550251 () Bool)

(assert (=> b!6157823 (= res!2550251 (matchRSpec!3201 (regOne!32713 r!7292) s!2326))))

(assert (=> b!6157823 (=> res!2550251 e!3751884)))

(declare-fun bm!512602 () Bool)

(declare-fun call!512607 () Bool)

(assert (=> bm!512602 (= call!512607 (isEmpty!36446 s!2326))))

(declare-fun c!1108763 () Bool)

(declare-fun call!512608 () Bool)

(declare-fun bm!512603 () Bool)

(assert (=> bm!512603 (= call!512608 (Exists!3170 (ite c!1108763 lambda!335977 lambda!335978)))))

(declare-fun b!6157824 () Bool)

(declare-fun e!3751886 () Bool)

(declare-fun e!3751882 () Bool)

(assert (=> b!6157824 (= e!3751886 e!3751882)))

(declare-fun res!2550252 () Bool)

(assert (=> b!6157824 (= res!2550252 (not (is-EmptyLang!16100 r!7292)))))

(assert (=> b!6157824 (=> (not res!2550252) (not e!3751882))))

(declare-fun b!6157825 () Bool)

(assert (=> b!6157825 (= e!3751886 call!512607)))

(declare-fun b!6157826 () Bool)

(assert (=> b!6157826 (= e!3751884 (matchRSpec!3201 (regTwo!32713 r!7292) s!2326))))

(declare-fun d!1929438 () Bool)

(declare-fun c!1108766 () Bool)

(assert (=> d!1929438 (= c!1108766 (is-EmptyExpr!16100 r!7292))))

(assert (=> d!1929438 (= (matchRSpec!3201 r!7292 s!2326) e!3751886)))

(declare-fun b!6157827 () Bool)

(declare-fun e!3751885 () Bool)

(assert (=> b!6157827 (= e!3751885 (= s!2326 (Cons!64475 (c!1108675 r!7292) Nil!64475)))))

(declare-fun e!3751888 () Bool)

(assert (=> b!6157828 (= e!3751888 call!512608)))

(declare-fun b!6157829 () Bool)

(declare-fun c!1108765 () Bool)

(assert (=> b!6157829 (= c!1108765 (is-ElementMatch!16100 r!7292))))

(assert (=> b!6157829 (= e!3751882 e!3751885)))

(declare-fun e!3751883 () Bool)

(assert (=> b!6157830 (= e!3751883 call!512608)))

(declare-fun b!6157831 () Bool)

(declare-fun c!1108764 () Bool)

(assert (=> b!6157831 (= c!1108764 (is-Union!16100 r!7292))))

(assert (=> b!6157831 (= e!3751885 e!3751887)))

(declare-fun b!6157832 () Bool)

(assert (=> b!6157832 (= e!3751887 e!3751888)))

(assert (=> b!6157832 (= c!1108763 (is-Star!16100 r!7292))))

(declare-fun b!6157833 () Bool)

(declare-fun res!2550250 () Bool)

(assert (=> b!6157833 (=> res!2550250 e!3751883)))

(assert (=> b!6157833 (= res!2550250 call!512607)))

(assert (=> b!6157833 (= e!3751888 e!3751883)))

(assert (= (and d!1929438 c!1108766) b!6157825))

(assert (= (and d!1929438 (not c!1108766)) b!6157824))

(assert (= (and b!6157824 res!2550252) b!6157829))

(assert (= (and b!6157829 c!1108765) b!6157827))

(assert (= (and b!6157829 (not c!1108765)) b!6157831))

(assert (= (and b!6157831 c!1108764) b!6157823))

(assert (= (and b!6157831 (not c!1108764)) b!6157832))

(assert (= (and b!6157823 (not res!2550251)) b!6157826))

(assert (= (and b!6157832 c!1108763) b!6157833))

(assert (= (and b!6157832 (not c!1108763)) b!6157828))

(assert (= (and b!6157833 (not res!2550250)) b!6157830))

(assert (= (or b!6157830 b!6157828) bm!512603))

(assert (= (or b!6157825 b!6157833) bm!512602))

(declare-fun m!6996298 () Bool)

(assert (=> b!6157823 m!6996298))

(assert (=> bm!512602 m!6996150))

(declare-fun m!6996300 () Bool)

(assert (=> bm!512603 m!6996300))

(declare-fun m!6996302 () Bool)

(assert (=> b!6157826 m!6996302))

(assert (=> b!6157459 d!1929438))

(declare-fun b!6157862 () Bool)

(declare-fun res!2550275 () Bool)

(declare-fun e!3751908 () Bool)

(assert (=> b!6157862 (=> (not res!2550275) (not e!3751908))))

(declare-fun call!512611 () Bool)

(assert (=> b!6157862 (= res!2550275 (not call!512611))))

(declare-fun b!6157863 () Bool)

(declare-fun res!2550271 () Bool)

(declare-fun e!3751904 () Bool)

(assert (=> b!6157863 (=> res!2550271 e!3751904)))

(assert (=> b!6157863 (= res!2550271 (not (isEmpty!36446 (tail!11807 s!2326))))))

(declare-fun b!6157864 () Bool)

(declare-fun res!2550270 () Bool)

(assert (=> b!6157864 (=> (not res!2550270) (not e!3751908))))

(assert (=> b!6157864 (= res!2550270 (isEmpty!36446 (tail!11807 s!2326)))))

(declare-fun bm!512606 () Bool)

(assert (=> bm!512606 (= call!512611 (isEmpty!36446 s!2326))))

(declare-fun b!6157865 () Bool)

(declare-fun e!3751906 () Bool)

(assert (=> b!6157865 (= e!3751906 e!3751904)))

(declare-fun res!2550276 () Bool)

(assert (=> b!6157865 (=> res!2550276 e!3751904)))

(assert (=> b!6157865 (= res!2550276 call!512611)))

(declare-fun b!6157866 () Bool)

(assert (=> b!6157866 (= e!3751904 (not (= (head!12722 s!2326) (c!1108675 r!7292))))))

(declare-fun d!1929440 () Bool)

(declare-fun e!3751907 () Bool)

(assert (=> d!1929440 e!3751907))

(declare-fun c!1108774 () Bool)

(assert (=> d!1929440 (= c!1108774 (is-EmptyExpr!16100 r!7292))))

(declare-fun lt!2335486 () Bool)

(declare-fun e!3751903 () Bool)

(assert (=> d!1929440 (= lt!2335486 e!3751903)))

(declare-fun c!1108773 () Bool)

(assert (=> d!1929440 (= c!1108773 (isEmpty!36446 s!2326))))

(assert (=> d!1929440 (validRegex!7836 r!7292)))

(assert (=> d!1929440 (= (matchR!8283 r!7292 s!2326) lt!2335486)))

(declare-fun b!6157867 () Bool)

(declare-fun res!2550272 () Bool)

(declare-fun e!3751909 () Bool)

(assert (=> b!6157867 (=> res!2550272 e!3751909)))

(assert (=> b!6157867 (= res!2550272 e!3751908)))

(declare-fun res!2550269 () Bool)

(assert (=> b!6157867 (=> (not res!2550269) (not e!3751908))))

(assert (=> b!6157867 (= res!2550269 lt!2335486)))

(declare-fun b!6157868 () Bool)

(declare-fun derivativeStep!4820 (Regex!16100 C!32470) Regex!16100)

(assert (=> b!6157868 (= e!3751903 (matchR!8283 (derivativeStep!4820 r!7292 (head!12722 s!2326)) (tail!11807 s!2326)))))

(declare-fun b!6157869 () Bool)

(assert (=> b!6157869 (= e!3751909 e!3751906)))

(declare-fun res!2550273 () Bool)

(assert (=> b!6157869 (=> (not res!2550273) (not e!3751906))))

(assert (=> b!6157869 (= res!2550273 (not lt!2335486))))

(declare-fun b!6157870 () Bool)

(declare-fun res!2550274 () Bool)

(assert (=> b!6157870 (=> res!2550274 e!3751909)))

(assert (=> b!6157870 (= res!2550274 (not (is-ElementMatch!16100 r!7292)))))

(declare-fun e!3751905 () Bool)

(assert (=> b!6157870 (= e!3751905 e!3751909)))

(declare-fun b!6157871 () Bool)

(assert (=> b!6157871 (= e!3751907 e!3751905)))

(declare-fun c!1108775 () Bool)

(assert (=> b!6157871 (= c!1108775 (is-EmptyLang!16100 r!7292))))

(declare-fun b!6157872 () Bool)

(assert (=> b!6157872 (= e!3751908 (= (head!12722 s!2326) (c!1108675 r!7292)))))

(declare-fun b!6157873 () Bool)

(assert (=> b!6157873 (= e!3751905 (not lt!2335486))))

(declare-fun b!6157874 () Bool)

(assert (=> b!6157874 (= e!3751903 (nullable!6093 r!7292))))

(declare-fun b!6157875 () Bool)

(assert (=> b!6157875 (= e!3751907 (= lt!2335486 call!512611))))

(assert (= (and d!1929440 c!1108773) b!6157874))

(assert (= (and d!1929440 (not c!1108773)) b!6157868))

(assert (= (and d!1929440 c!1108774) b!6157875))

(assert (= (and d!1929440 (not c!1108774)) b!6157871))

(assert (= (and b!6157871 c!1108775) b!6157873))

(assert (= (and b!6157871 (not c!1108775)) b!6157870))

(assert (= (and b!6157870 (not res!2550274)) b!6157867))

(assert (= (and b!6157867 res!2550269) b!6157862))

(assert (= (and b!6157862 res!2550275) b!6157864))

(assert (= (and b!6157864 res!2550270) b!6157872))

(assert (= (and b!6157867 (not res!2550272)) b!6157869))

(assert (= (and b!6157869 res!2550273) b!6157865))

(assert (= (and b!6157865 (not res!2550276)) b!6157863))

(assert (= (and b!6157863 (not res!2550271)) b!6157866))

(assert (= (or b!6157875 b!6157862 b!6157865) bm!512606))

(assert (=> bm!512606 m!6996150))

(declare-fun m!6996304 () Bool)

(assert (=> b!6157874 m!6996304))

(assert (=> b!6157868 m!6996154))

(assert (=> b!6157868 m!6996154))

(declare-fun m!6996306 () Bool)

(assert (=> b!6157868 m!6996306))

(assert (=> b!6157868 m!6996158))

(assert (=> b!6157868 m!6996306))

(assert (=> b!6157868 m!6996158))

(declare-fun m!6996308 () Bool)

(assert (=> b!6157868 m!6996308))

(assert (=> b!6157872 m!6996154))

(assert (=> d!1929440 m!6996150))

(assert (=> d!1929440 m!6995964))

(assert (=> b!6157864 m!6996158))

(assert (=> b!6157864 m!6996158))

(declare-fun m!6996310 () Bool)

(assert (=> b!6157864 m!6996310))

(assert (=> b!6157863 m!6996158))

(assert (=> b!6157863 m!6996158))

(assert (=> b!6157863 m!6996310))

(assert (=> b!6157866 m!6996154))

(assert (=> b!6157459 d!1929440))

(declare-fun d!1929442 () Bool)

(assert (=> d!1929442 (= (matchR!8283 r!7292 s!2326) (matchRSpec!3201 r!7292 s!2326))))

(declare-fun lt!2335489 () Unit!157579)

(declare-fun choose!45780 (Regex!16100 List!64599) Unit!157579)

(assert (=> d!1929442 (= lt!2335489 (choose!45780 r!7292 s!2326))))

(assert (=> d!1929442 (validRegex!7836 r!7292)))

(assert (=> d!1929442 (= (mainMatchTheorem!3201 r!7292 s!2326) lt!2335489)))

(declare-fun bs!1526187 () Bool)

(assert (= bs!1526187 d!1929442))

(assert (=> bs!1526187 m!6995990))

(assert (=> bs!1526187 m!6995988))

(declare-fun m!6996312 () Bool)

(assert (=> bs!1526187 m!6996312))

(assert (=> bs!1526187 m!6995964))

(assert (=> b!6157459 d!1929442))

(declare-fun d!1929444 () Bool)

(declare-fun e!3751910 () Bool)

(assert (=> d!1929444 (= (matchZipper!2112 (set.union lt!2335342 lt!2335358) (t!378093 s!2326)) e!3751910)))

(declare-fun res!2550277 () Bool)

(assert (=> d!1929444 (=> res!2550277 e!3751910)))

(assert (=> d!1929444 (= res!2550277 (matchZipper!2112 lt!2335342 (t!378093 s!2326)))))

(declare-fun lt!2335490 () Unit!157579)

(assert (=> d!1929444 (= lt!2335490 (choose!45776 lt!2335342 lt!2335358 (t!378093 s!2326)))))

(assert (=> d!1929444 (= (lemmaZipperConcatMatchesSameAsBothZippers!931 lt!2335342 lt!2335358 (t!378093 s!2326)) lt!2335490)))

(declare-fun b!6157876 () Bool)

(assert (=> b!6157876 (= e!3751910 (matchZipper!2112 lt!2335358 (t!378093 s!2326)))))

(assert (= (and d!1929444 (not res!2550277)) b!6157876))

(assert (=> d!1929444 m!6995972))

(assert (=> d!1929444 m!6995926))

(declare-fun m!6996314 () Bool)

(assert (=> d!1929444 m!6996314))

(assert (=> b!6157876 m!6995962))

(assert (=> b!6157480 d!1929444))

(declare-fun d!1929446 () Bool)

(declare-fun c!1108776 () Bool)

(assert (=> d!1929446 (= c!1108776 (isEmpty!36446 (t!378093 s!2326)))))

(declare-fun e!3751911 () Bool)

(assert (=> d!1929446 (= (matchZipper!2112 (set.union lt!2335342 lt!2335358) (t!378093 s!2326)) e!3751911)))

(declare-fun b!6157877 () Bool)

(assert (=> b!6157877 (= e!3751911 (nullableZipper!1881 (set.union lt!2335342 lt!2335358)))))

(declare-fun b!6157878 () Bool)

(assert (=> b!6157878 (= e!3751911 (matchZipper!2112 (derivationStepZipper!2073 (set.union lt!2335342 lt!2335358) (head!12722 (t!378093 s!2326))) (tail!11807 (t!378093 s!2326))))))

(assert (= (and d!1929446 c!1108776) b!6157877))

(assert (= (and d!1929446 (not c!1108776)) b!6157878))

(assert (=> d!1929446 m!6996170))

(declare-fun m!6996316 () Bool)

(assert (=> b!6157877 m!6996316))

(assert (=> b!6157878 m!6996174))

(assert (=> b!6157878 m!6996174))

(declare-fun m!6996318 () Bool)

(assert (=> b!6157878 m!6996318))

(assert (=> b!6157878 m!6996178))

(assert (=> b!6157878 m!6996318))

(assert (=> b!6157878 m!6996178))

(declare-fun m!6996320 () Bool)

(assert (=> b!6157878 m!6996320))

(assert (=> b!6157480 d!1929446))

(assert (=> b!6157484 d!1929428))

(declare-fun b!6157879 () Bool)

(declare-fun e!3751916 () (Set Context!10968))

(declare-fun e!3751914 () (Set Context!10968))

(assert (=> b!6157879 (= e!3751916 e!3751914)))

(declare-fun c!1108780 () Bool)

(assert (=> b!6157879 (= c!1108780 (is-Union!16100 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun b!6157880 () Bool)

(declare-fun call!512616 () (Set Context!10968))

(declare-fun call!512617 () (Set Context!10968))

(assert (=> b!6157880 (= e!3751914 (set.union call!512616 call!512617))))

(declare-fun bm!512607 () Bool)

(declare-fun call!512615 () (Set Context!10968))

(assert (=> bm!512607 (= call!512615 call!512617)))

(declare-fun b!6157881 () Bool)

(declare-fun e!3751915 () (Set Context!10968))

(assert (=> b!6157881 (= e!3751915 (set.union call!512616 call!512615))))

(declare-fun b!6157882 () Bool)

(assert (=> b!6157882 (= e!3751916 (set.insert lt!2335351 (as set.empty (Set Context!10968))))))

(declare-fun d!1929448 () Bool)

(declare-fun c!1108777 () Bool)

(assert (=> d!1929448 (= c!1108777 (and (is-ElementMatch!16100 (h!70924 (exprs!5984 (h!70925 zl!343)))) (= (c!1108675 (h!70924 (exprs!5984 (h!70925 zl!343)))) (h!70923 s!2326))))))

(assert (=> d!1929448 (= (derivationStepZipperDown!1348 (h!70924 (exprs!5984 (h!70925 zl!343))) lt!2335351 (h!70923 s!2326)) e!3751916)))

(declare-fun b!6157883 () Bool)

(declare-fun e!3751913 () (Set Context!10968))

(declare-fun call!512614 () (Set Context!10968))

(assert (=> b!6157883 (= e!3751913 call!512614)))

(declare-fun c!1108779 () Bool)

(declare-fun bm!512608 () Bool)

(declare-fun call!512613 () List!64600)

(declare-fun c!1108778 () Bool)

(assert (=> bm!512608 (= call!512617 (derivationStepZipperDown!1348 (ite c!1108780 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108778 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108779 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343))))))) (ite (or c!1108780 c!1108778) lt!2335351 (Context!10969 call!512613)) (h!70923 s!2326)))))

(declare-fun b!6157884 () Bool)

(declare-fun e!3751912 () (Set Context!10968))

(assert (=> b!6157884 (= e!3751915 e!3751912)))

(assert (=> b!6157884 (= c!1108779 (is-Concat!24945 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun b!6157885 () Bool)

(declare-fun c!1108781 () Bool)

(assert (=> b!6157885 (= c!1108781 (is-Star!16100 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(assert (=> b!6157885 (= e!3751912 e!3751913)))

(declare-fun bm!512609 () Bool)

(assert (=> bm!512609 (= call!512614 call!512615)))

(declare-fun b!6157886 () Bool)

(declare-fun e!3751917 () Bool)

(assert (=> b!6157886 (= c!1108778 e!3751917)))

(declare-fun res!2550278 () Bool)

(assert (=> b!6157886 (=> (not res!2550278) (not e!3751917))))

(assert (=> b!6157886 (= res!2550278 (is-Concat!24945 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(assert (=> b!6157886 (= e!3751914 e!3751915)))

(declare-fun call!512612 () List!64600)

(declare-fun bm!512610 () Bool)

(assert (=> bm!512610 (= call!512612 ($colon$colon!1977 (exprs!5984 lt!2335351) (ite (or c!1108778 c!1108779) (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (h!70924 (exprs!5984 (h!70925 zl!343))))))))

(declare-fun b!6157887 () Bool)

(assert (=> b!6157887 (= e!3751917 (nullable!6093 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343))))))))

(declare-fun b!6157888 () Bool)

(assert (=> b!6157888 (= e!3751913 (as set.empty (Set Context!10968)))))

(declare-fun b!6157889 () Bool)

(assert (=> b!6157889 (= e!3751912 call!512614)))

(declare-fun bm!512611 () Bool)

(assert (=> bm!512611 (= call!512616 (derivationStepZipperDown!1348 (ite c!1108780 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343))))) (ite c!1108780 lt!2335351 (Context!10969 call!512612)) (h!70923 s!2326)))))

(declare-fun bm!512612 () Bool)

(assert (=> bm!512612 (= call!512613 call!512612)))

(assert (= (and d!1929448 c!1108777) b!6157882))

(assert (= (and d!1929448 (not c!1108777)) b!6157879))

(assert (= (and b!6157879 c!1108780) b!6157880))

(assert (= (and b!6157879 (not c!1108780)) b!6157886))

(assert (= (and b!6157886 res!2550278) b!6157887))

(assert (= (and b!6157886 c!1108778) b!6157881))

(assert (= (and b!6157886 (not c!1108778)) b!6157884))

(assert (= (and b!6157884 c!1108779) b!6157889))

(assert (= (and b!6157884 (not c!1108779)) b!6157885))

(assert (= (and b!6157885 c!1108781) b!6157883))

(assert (= (and b!6157885 (not c!1108781)) b!6157888))

(assert (= (or b!6157889 b!6157883) bm!512612))

(assert (= (or b!6157889 b!6157883) bm!512609))

(assert (= (or b!6157881 bm!512612) bm!512610))

(assert (= (or b!6157881 bm!512609) bm!512607))

(assert (= (or b!6157880 bm!512607) bm!512608))

(assert (= (or b!6157880 b!6157881) bm!512611))

(declare-fun m!6996322 () Bool)

(assert (=> bm!512608 m!6996322))

(assert (=> b!6157882 m!6996256))

(declare-fun m!6996324 () Bool)

(assert (=> bm!512610 m!6996324))

(declare-fun m!6996326 () Bool)

(assert (=> bm!512611 m!6996326))

(declare-fun m!6996328 () Bool)

(assert (=> b!6157887 m!6996328))

(assert (=> b!6157462 d!1929448))

(declare-fun d!1929450 () Bool)

(declare-fun dynLambda!25420 (Int Context!10968) (Set Context!10968))

(assert (=> d!1929450 (= (flatMap!1605 z!1189 lambda!335934) (dynLambda!25420 lambda!335934 (h!70925 zl!343)))))

(declare-fun lt!2335493 () Unit!157579)

(declare-fun choose!45781 ((Set Context!10968) Context!10968 Int) Unit!157579)

(assert (=> d!1929450 (= lt!2335493 (choose!45781 z!1189 (h!70925 zl!343) lambda!335934))))

(assert (=> d!1929450 (= z!1189 (set.insert (h!70925 zl!343) (as set.empty (Set Context!10968))))))

(assert (=> d!1929450 (= (lemmaFlatMapOnSingletonSet!1131 z!1189 (h!70925 zl!343) lambda!335934) lt!2335493)))

(declare-fun b_lambda!234397 () Bool)

(assert (=> (not b_lambda!234397) (not d!1929450)))

(declare-fun bs!1526188 () Bool)

(assert (= bs!1526188 d!1929450))

(assert (=> bs!1526188 m!6996010))

(declare-fun m!6996330 () Bool)

(assert (=> bs!1526188 m!6996330))

(declare-fun m!6996332 () Bool)

(assert (=> bs!1526188 m!6996332))

(declare-fun m!6996334 () Bool)

(assert (=> bs!1526188 m!6996334))

(assert (=> b!6157462 d!1929450))

(declare-fun d!1929452 () Bool)

(declare-fun choose!45782 ((Set Context!10968) Int) (Set Context!10968))

(assert (=> d!1929452 (= (flatMap!1605 z!1189 lambda!335934) (choose!45782 z!1189 lambda!335934))))

(declare-fun bs!1526189 () Bool)

(assert (= bs!1526189 d!1929452))

(declare-fun m!6996336 () Bool)

(assert (=> bs!1526189 m!6996336))

(assert (=> b!6157462 d!1929452))

(declare-fun d!1929454 () Bool)

(declare-fun nullableFct!2057 (Regex!16100) Bool)

(assert (=> d!1929454 (= (nullable!6093 (h!70924 (exprs!5984 (h!70925 zl!343)))) (nullableFct!2057 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun bs!1526190 () Bool)

(assert (= bs!1526190 d!1929454))

(declare-fun m!6996338 () Bool)

(assert (=> bs!1526190 m!6996338))

(assert (=> b!6157462 d!1929454))

(declare-fun b!6157900 () Bool)

(declare-fun e!3751926 () (Set Context!10968))

(declare-fun call!512620 () (Set Context!10968))

(assert (=> b!6157900 (= e!3751926 (set.union call!512620 (derivationStepZipperUp!1274 (Context!10969 (t!378094 (exprs!5984 (h!70925 zl!343)))) (h!70923 s!2326))))))

(declare-fun d!1929456 () Bool)

(declare-fun c!1108787 () Bool)

(declare-fun e!3751925 () Bool)

(assert (=> d!1929456 (= c!1108787 e!3751925)))

(declare-fun res!2550281 () Bool)

(assert (=> d!1929456 (=> (not res!2550281) (not e!3751925))))

(assert (=> d!1929456 (= res!2550281 (is-Cons!64476 (exprs!5984 (h!70925 zl!343))))))

(assert (=> d!1929456 (= (derivationStepZipperUp!1274 (h!70925 zl!343) (h!70923 s!2326)) e!3751926)))

(declare-fun b!6157901 () Bool)

(assert (=> b!6157901 (= e!3751925 (nullable!6093 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun b!6157902 () Bool)

(declare-fun e!3751924 () (Set Context!10968))

(assert (=> b!6157902 (= e!3751924 (as set.empty (Set Context!10968)))))

(declare-fun b!6157903 () Bool)

(assert (=> b!6157903 (= e!3751924 call!512620)))

(declare-fun b!6157904 () Bool)

(assert (=> b!6157904 (= e!3751926 e!3751924)))

(declare-fun c!1108786 () Bool)

(assert (=> b!6157904 (= c!1108786 (is-Cons!64476 (exprs!5984 (h!70925 zl!343))))))

(declare-fun bm!512615 () Bool)

(assert (=> bm!512615 (= call!512620 (derivationStepZipperDown!1348 (h!70924 (exprs!5984 (h!70925 zl!343))) (Context!10969 (t!378094 (exprs!5984 (h!70925 zl!343)))) (h!70923 s!2326)))))

(assert (= (and d!1929456 res!2550281) b!6157901))

(assert (= (and d!1929456 c!1108787) b!6157900))

(assert (= (and d!1929456 (not c!1108787)) b!6157904))

(assert (= (and b!6157904 c!1108786) b!6157903))

(assert (= (and b!6157904 (not c!1108786)) b!6157902))

(assert (= (or b!6157900 b!6157903) bm!512615))

(declare-fun m!6996340 () Bool)

(assert (=> b!6157900 m!6996340))

(assert (=> b!6157901 m!6996008))

(declare-fun m!6996342 () Bool)

(assert (=> bm!512615 m!6996342))

(assert (=> b!6157462 d!1929456))

(declare-fun call!512621 () (Set Context!10968))

(declare-fun e!3751929 () (Set Context!10968))

(declare-fun b!6157905 () Bool)

(assert (=> b!6157905 (= e!3751929 (set.union call!512621 (derivationStepZipperUp!1274 (Context!10969 (t!378094 (exprs!5984 lt!2335351))) (h!70923 s!2326))))))

(declare-fun d!1929458 () Bool)

(declare-fun c!1108789 () Bool)

(declare-fun e!3751928 () Bool)

(assert (=> d!1929458 (= c!1108789 e!3751928)))

(declare-fun res!2550282 () Bool)

(assert (=> d!1929458 (=> (not res!2550282) (not e!3751928))))

(assert (=> d!1929458 (= res!2550282 (is-Cons!64476 (exprs!5984 lt!2335351)))))

(assert (=> d!1929458 (= (derivationStepZipperUp!1274 lt!2335351 (h!70923 s!2326)) e!3751929)))

(declare-fun b!6157906 () Bool)

(assert (=> b!6157906 (= e!3751928 (nullable!6093 (h!70924 (exprs!5984 lt!2335351))))))

(declare-fun b!6157907 () Bool)

(declare-fun e!3751927 () (Set Context!10968))

(assert (=> b!6157907 (= e!3751927 (as set.empty (Set Context!10968)))))

(declare-fun b!6157908 () Bool)

(assert (=> b!6157908 (= e!3751927 call!512621)))

(declare-fun b!6157909 () Bool)

(assert (=> b!6157909 (= e!3751929 e!3751927)))

(declare-fun c!1108788 () Bool)

(assert (=> b!6157909 (= c!1108788 (is-Cons!64476 (exprs!5984 lt!2335351)))))

(declare-fun bm!512616 () Bool)

(assert (=> bm!512616 (= call!512621 (derivationStepZipperDown!1348 (h!70924 (exprs!5984 lt!2335351)) (Context!10969 (t!378094 (exprs!5984 lt!2335351))) (h!70923 s!2326)))))

(assert (= (and d!1929458 res!2550282) b!6157906))

(assert (= (and d!1929458 c!1108789) b!6157905))

(assert (= (and d!1929458 (not c!1108789)) b!6157909))

(assert (= (and b!6157909 c!1108788) b!6157908))

(assert (= (and b!6157909 (not c!1108788)) b!6157907))

(assert (= (or b!6157905 b!6157908) bm!512616))

(declare-fun m!6996344 () Bool)

(assert (=> b!6157905 m!6996344))

(declare-fun m!6996346 () Bool)

(assert (=> b!6157906 m!6996346))

(declare-fun m!6996348 () Bool)

(assert (=> bm!512616 m!6996348))

(assert (=> b!6157462 d!1929458))

(declare-fun b!6157910 () Bool)

(declare-fun call!512622 () (Set Context!10968))

(declare-fun e!3751932 () (Set Context!10968))

(assert (=> b!6157910 (= e!3751932 (set.union call!512622 (derivationStepZipperUp!1274 (Context!10969 (t!378094 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))) (h!70923 s!2326))))))

(declare-fun d!1929460 () Bool)

(declare-fun c!1108791 () Bool)

(declare-fun e!3751931 () Bool)

(assert (=> d!1929460 (= c!1108791 e!3751931)))

(declare-fun res!2550283 () Bool)

(assert (=> d!1929460 (=> (not res!2550283) (not e!3751931))))

(assert (=> d!1929460 (= res!2550283 (is-Cons!64476 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343))))))))))

(assert (=> d!1929460 (= (derivationStepZipperUp!1274 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343))))) (h!70923 s!2326)) e!3751932)))

(declare-fun b!6157911 () Bool)

(assert (=> b!6157911 (= e!3751931 (nullable!6093 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))))))

(declare-fun b!6157912 () Bool)

(declare-fun e!3751930 () (Set Context!10968))

(assert (=> b!6157912 (= e!3751930 (as set.empty (Set Context!10968)))))

(declare-fun b!6157913 () Bool)

(assert (=> b!6157913 (= e!3751930 call!512622)))

(declare-fun b!6157914 () Bool)

(assert (=> b!6157914 (= e!3751932 e!3751930)))

(declare-fun c!1108790 () Bool)

(assert (=> b!6157914 (= c!1108790 (is-Cons!64476 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343))))))))))

(declare-fun bm!512617 () Bool)

(assert (=> bm!512617 (= call!512622 (derivationStepZipperDown!1348 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343))))))) (Context!10969 (t!378094 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))) (h!70923 s!2326)))))

(assert (= (and d!1929460 res!2550283) b!6157911))

(assert (= (and d!1929460 c!1108791) b!6157910))

(assert (= (and d!1929460 (not c!1108791)) b!6157914))

(assert (= (and b!6157914 c!1108790) b!6157913))

(assert (= (and b!6157914 (not c!1108790)) b!6157912))

(assert (= (or b!6157910 b!6157913) bm!512617))

(declare-fun m!6996350 () Bool)

(assert (=> b!6157910 m!6996350))

(declare-fun m!6996352 () Bool)

(assert (=> b!6157911 m!6996352))

(declare-fun m!6996354 () Bool)

(assert (=> bm!512617 m!6996354))

(assert (=> b!6157462 d!1929460))

(declare-fun d!1929462 () Bool)

(declare-fun lt!2335496 () Regex!16100)

(assert (=> d!1929462 (validRegex!7836 lt!2335496)))

(assert (=> d!1929462 (= lt!2335496 (generalisedUnion!1944 (unfocusZipperList!1521 zl!343)))))

(assert (=> d!1929462 (= (unfocusZipper!1842 zl!343) lt!2335496)))

(declare-fun bs!1526191 () Bool)

(assert (= bs!1526191 d!1929462))

(declare-fun m!6996356 () Bool)

(assert (=> bs!1526191 m!6996356))

(assert (=> bs!1526191 m!6995994))

(assert (=> bs!1526191 m!6995994))

(assert (=> bs!1526191 m!6995996))

(assert (=> b!6157461 d!1929462))

(assert (=> b!6157465 d!1929428))

(declare-fun d!1929464 () Bool)

(assert (=> d!1929464 (= (flatMap!1605 lt!2335341 lambda!335934) (dynLambda!25420 lambda!335934 lt!2335359))))

(declare-fun lt!2335497 () Unit!157579)

(assert (=> d!1929464 (= lt!2335497 (choose!45781 lt!2335341 lt!2335359 lambda!335934))))

(assert (=> d!1929464 (= lt!2335341 (set.insert lt!2335359 (as set.empty (Set Context!10968))))))

(assert (=> d!1929464 (= (lemmaFlatMapOnSingletonSet!1131 lt!2335341 lt!2335359 lambda!335934) lt!2335497)))

(declare-fun b_lambda!234399 () Bool)

(assert (=> (not b_lambda!234399) (not d!1929464)))

(declare-fun bs!1526192 () Bool)

(assert (= bs!1526192 d!1929464))

(assert (=> bs!1526192 m!6995948))

(declare-fun m!6996358 () Bool)

(assert (=> bs!1526192 m!6996358))

(declare-fun m!6996360 () Bool)

(assert (=> bs!1526192 m!6996360))

(assert (=> bs!1526192 m!6995944))

(assert (=> b!6157449 d!1929464))

(declare-fun d!1929466 () Bool)

(assert (=> d!1929466 (= (nullable!6093 (regTwo!32713 (regOne!32712 r!7292))) (nullableFct!2057 (regTwo!32713 (regOne!32712 r!7292))))))

(declare-fun bs!1526193 () Bool)

(assert (= bs!1526193 d!1929466))

(declare-fun m!6996362 () Bool)

(assert (=> bs!1526193 m!6996362))

(assert (=> b!6157449 d!1929466))

(declare-fun d!1929468 () Bool)

(assert (=> d!1929468 (= (flatMap!1605 lt!2335352 lambda!335934) (dynLambda!25420 lambda!335934 lt!2335344))))

(declare-fun lt!2335498 () Unit!157579)

(assert (=> d!1929468 (= lt!2335498 (choose!45781 lt!2335352 lt!2335344 lambda!335934))))

(assert (=> d!1929468 (= lt!2335352 (set.insert lt!2335344 (as set.empty (Set Context!10968))))))

(assert (=> d!1929468 (= (lemmaFlatMapOnSingletonSet!1131 lt!2335352 lt!2335344 lambda!335934) lt!2335498)))

(declare-fun b_lambda!234401 () Bool)

(assert (=> (not b_lambda!234401) (not d!1929468)))

(declare-fun bs!1526194 () Bool)

(assert (= bs!1526194 d!1929468))

(assert (=> bs!1526194 m!6995956))

(declare-fun m!6996364 () Bool)

(assert (=> bs!1526194 m!6996364))

(declare-fun m!6996366 () Bool)

(assert (=> bs!1526194 m!6996366))

(assert (=> bs!1526194 m!6995954))

(assert (=> b!6157449 d!1929468))

(declare-fun d!1929470 () Bool)

(declare-fun c!1108792 () Bool)

(assert (=> d!1929470 (= c!1108792 (isEmpty!36446 s!2326))))

(declare-fun e!3751933 () Bool)

(assert (=> d!1929470 (= (matchZipper!2112 lt!2335341 s!2326) e!3751933)))

(declare-fun b!6157915 () Bool)

(assert (=> b!6157915 (= e!3751933 (nullableZipper!1881 lt!2335341))))

(declare-fun b!6157916 () Bool)

(assert (=> b!6157916 (= e!3751933 (matchZipper!2112 (derivationStepZipper!2073 lt!2335341 (head!12722 s!2326)) (tail!11807 s!2326)))))

(assert (= (and d!1929470 c!1108792) b!6157915))

(assert (= (and d!1929470 (not c!1108792)) b!6157916))

(assert (=> d!1929470 m!6996150))

(declare-fun m!6996368 () Bool)

(assert (=> b!6157915 m!6996368))

(assert (=> b!6157916 m!6996154))

(assert (=> b!6157916 m!6996154))

(declare-fun m!6996370 () Bool)

(assert (=> b!6157916 m!6996370))

(assert (=> b!6157916 m!6996158))

(assert (=> b!6157916 m!6996370))

(assert (=> b!6157916 m!6996158))

(declare-fun m!6996372 () Bool)

(assert (=> b!6157916 m!6996372))

(assert (=> b!6157449 d!1929470))

(declare-fun d!1929472 () Bool)

(assert (=> d!1929472 (= (flatMap!1605 lt!2335352 lambda!335934) (choose!45782 lt!2335352 lambda!335934))))

(declare-fun bs!1526195 () Bool)

(assert (= bs!1526195 d!1929472))

(declare-fun m!6996374 () Bool)

(assert (=> bs!1526195 m!6996374))

(assert (=> b!6157449 d!1929472))

(declare-fun d!1929474 () Bool)

(assert (=> d!1929474 (= (nullable!6093 (regOne!32713 (regOne!32712 r!7292))) (nullableFct!2057 (regOne!32713 (regOne!32712 r!7292))))))

(declare-fun bs!1526196 () Bool)

(assert (= bs!1526196 d!1929474))

(declare-fun m!6996376 () Bool)

(assert (=> bs!1526196 m!6996376))

(assert (=> b!6157449 d!1929474))

(declare-fun b!6157917 () Bool)

(declare-fun call!512623 () (Set Context!10968))

(declare-fun e!3751936 () (Set Context!10968))

(assert (=> b!6157917 (= e!3751936 (set.union call!512623 (derivationStepZipperUp!1274 (Context!10969 (t!378094 (exprs!5984 lt!2335344))) (h!70923 s!2326))))))

(declare-fun d!1929476 () Bool)

(declare-fun c!1108794 () Bool)

(declare-fun e!3751935 () Bool)

(assert (=> d!1929476 (= c!1108794 e!3751935)))

(declare-fun res!2550284 () Bool)

(assert (=> d!1929476 (=> (not res!2550284) (not e!3751935))))

(assert (=> d!1929476 (= res!2550284 (is-Cons!64476 (exprs!5984 lt!2335344)))))

(assert (=> d!1929476 (= (derivationStepZipperUp!1274 lt!2335344 (h!70923 s!2326)) e!3751936)))

(declare-fun b!6157918 () Bool)

(assert (=> b!6157918 (= e!3751935 (nullable!6093 (h!70924 (exprs!5984 lt!2335344))))))

(declare-fun b!6157919 () Bool)

(declare-fun e!3751934 () (Set Context!10968))

(assert (=> b!6157919 (= e!3751934 (as set.empty (Set Context!10968)))))

(declare-fun b!6157920 () Bool)

(assert (=> b!6157920 (= e!3751934 call!512623)))

(declare-fun b!6157921 () Bool)

(assert (=> b!6157921 (= e!3751936 e!3751934)))

(declare-fun c!1108793 () Bool)

(assert (=> b!6157921 (= c!1108793 (is-Cons!64476 (exprs!5984 lt!2335344)))))

(declare-fun bm!512618 () Bool)

(assert (=> bm!512618 (= call!512623 (derivationStepZipperDown!1348 (h!70924 (exprs!5984 lt!2335344)) (Context!10969 (t!378094 (exprs!5984 lt!2335344))) (h!70923 s!2326)))))

(assert (= (and d!1929476 res!2550284) b!6157918))

(assert (= (and d!1929476 c!1108794) b!6157917))

(assert (= (and d!1929476 (not c!1108794)) b!6157921))

(assert (= (and b!6157921 c!1108793) b!6157920))

(assert (= (and b!6157921 (not c!1108793)) b!6157919))

(assert (= (or b!6157917 b!6157920) bm!512618))

(declare-fun m!6996378 () Bool)

(assert (=> b!6157917 m!6996378))

(declare-fun m!6996380 () Bool)

(assert (=> b!6157918 m!6996380))

(declare-fun m!6996382 () Bool)

(assert (=> bm!512618 m!6996382))

(assert (=> b!6157449 d!1929476))

(declare-fun b!6157922 () Bool)

(declare-fun e!3751939 () (Set Context!10968))

(declare-fun call!512624 () (Set Context!10968))

(assert (=> b!6157922 (= e!3751939 (set.union call!512624 (derivationStepZipperUp!1274 (Context!10969 (t!378094 (exprs!5984 lt!2335359))) (h!70923 s!2326))))))

(declare-fun d!1929478 () Bool)

(declare-fun c!1108796 () Bool)

(declare-fun e!3751938 () Bool)

(assert (=> d!1929478 (= c!1108796 e!3751938)))

(declare-fun res!2550285 () Bool)

(assert (=> d!1929478 (=> (not res!2550285) (not e!3751938))))

(assert (=> d!1929478 (= res!2550285 (is-Cons!64476 (exprs!5984 lt!2335359)))))

(assert (=> d!1929478 (= (derivationStepZipperUp!1274 lt!2335359 (h!70923 s!2326)) e!3751939)))

(declare-fun b!6157923 () Bool)

(assert (=> b!6157923 (= e!3751938 (nullable!6093 (h!70924 (exprs!5984 lt!2335359))))))

(declare-fun b!6157924 () Bool)

(declare-fun e!3751937 () (Set Context!10968))

(assert (=> b!6157924 (= e!3751937 (as set.empty (Set Context!10968)))))

(declare-fun b!6157925 () Bool)

(assert (=> b!6157925 (= e!3751937 call!512624)))

(declare-fun b!6157926 () Bool)

(assert (=> b!6157926 (= e!3751939 e!3751937)))

(declare-fun c!1108795 () Bool)

(assert (=> b!6157926 (= c!1108795 (is-Cons!64476 (exprs!5984 lt!2335359)))))

(declare-fun bm!512619 () Bool)

(assert (=> bm!512619 (= call!512624 (derivationStepZipperDown!1348 (h!70924 (exprs!5984 lt!2335359)) (Context!10969 (t!378094 (exprs!5984 lt!2335359))) (h!70923 s!2326)))))

(assert (= (and d!1929478 res!2550285) b!6157923))

(assert (= (and d!1929478 c!1108796) b!6157922))

(assert (= (and d!1929478 (not c!1108796)) b!6157926))

(assert (= (and b!6157926 c!1108795) b!6157925))

(assert (= (and b!6157926 (not c!1108795)) b!6157924))

(assert (= (or b!6157922 b!6157925) bm!512619))

(declare-fun m!6996384 () Bool)

(assert (=> b!6157922 m!6996384))

(declare-fun m!6996386 () Bool)

(assert (=> b!6157923 m!6996386))

(declare-fun m!6996388 () Bool)

(assert (=> bm!512619 m!6996388))

(assert (=> b!6157449 d!1929478))

(declare-fun d!1929480 () Bool)

(assert (=> d!1929480 (= (flatMap!1605 lt!2335341 lambda!335934) (choose!45782 lt!2335341 lambda!335934))))

(declare-fun bs!1526197 () Bool)

(assert (= bs!1526197 d!1929480))

(declare-fun m!6996390 () Bool)

(assert (=> bs!1526197 m!6996390))

(assert (=> b!6157449 d!1929480))

(declare-fun d!1929482 () Bool)

(declare-fun c!1108797 () Bool)

(assert (=> d!1929482 (= c!1108797 (isEmpty!36446 s!2326))))

(declare-fun e!3751940 () Bool)

(assert (=> d!1929482 (= (matchZipper!2112 z!1189 s!2326) e!3751940)))

(declare-fun b!6157927 () Bool)

(assert (=> b!6157927 (= e!3751940 (nullableZipper!1881 z!1189))))

(declare-fun b!6157928 () Bool)

(assert (=> b!6157928 (= e!3751940 (matchZipper!2112 (derivationStepZipper!2073 z!1189 (head!12722 s!2326)) (tail!11807 s!2326)))))

(assert (= (and d!1929482 c!1108797) b!6157927))

(assert (= (and d!1929482 (not c!1108797)) b!6157928))

(assert (=> d!1929482 m!6996150))

(declare-fun m!6996392 () Bool)

(assert (=> b!6157927 m!6996392))

(assert (=> b!6157928 m!6996154))

(assert (=> b!6157928 m!6996154))

(declare-fun m!6996394 () Bool)

(assert (=> b!6157928 m!6996394))

(assert (=> b!6157928 m!6996158))

(assert (=> b!6157928 m!6996394))

(assert (=> b!6157928 m!6996158))

(declare-fun m!6996396 () Bool)

(assert (=> b!6157928 m!6996396))

(assert (=> b!6157449 d!1929482))

(declare-fun bm!512626 () Bool)

(declare-fun call!512631 () Bool)

(declare-fun call!512632 () Bool)

(assert (=> bm!512626 (= call!512631 call!512632)))

(declare-fun bm!512627 () Bool)

(declare-fun c!1108803 () Bool)

(declare-fun c!1108802 () Bool)

(assert (=> bm!512627 (= call!512632 (validRegex!7836 (ite c!1108803 (reg!16429 r!7292) (ite c!1108802 (regTwo!32713 r!7292) (regTwo!32712 r!7292)))))))

(declare-fun b!6157947 () Bool)

(declare-fun e!3751959 () Bool)

(assert (=> b!6157947 (= e!3751959 call!512632)))

(declare-fun b!6157948 () Bool)

(declare-fun e!3751957 () Bool)

(declare-fun e!3751960 () Bool)

(assert (=> b!6157948 (= e!3751957 e!3751960)))

(assert (=> b!6157948 (= c!1108802 (is-Union!16100 r!7292))))

(declare-fun b!6157949 () Bool)

(declare-fun res!2550298 () Bool)

(declare-fun e!3751958 () Bool)

(assert (=> b!6157949 (=> res!2550298 e!3751958)))

(assert (=> b!6157949 (= res!2550298 (not (is-Concat!24945 r!7292)))))

(assert (=> b!6157949 (= e!3751960 e!3751958)))

(declare-fun b!6157950 () Bool)

(declare-fun e!3751955 () Bool)

(assert (=> b!6157950 (= e!3751955 call!512631)))

(declare-fun bm!512628 () Bool)

(declare-fun call!512633 () Bool)

(assert (=> bm!512628 (= call!512633 (validRegex!7836 (ite c!1108802 (regOne!32713 r!7292) (regOne!32712 r!7292))))))

(declare-fun b!6157951 () Bool)

(assert (=> b!6157951 (= e!3751957 e!3751959)))

(declare-fun res!2550299 () Bool)

(assert (=> b!6157951 (= res!2550299 (not (nullable!6093 (reg!16429 r!7292))))))

(assert (=> b!6157951 (=> (not res!2550299) (not e!3751959))))

(declare-fun b!6157952 () Bool)

(declare-fun e!3751961 () Bool)

(assert (=> b!6157952 (= e!3751958 e!3751961)))

(declare-fun res!2550297 () Bool)

(assert (=> b!6157952 (=> (not res!2550297) (not e!3751961))))

(assert (=> b!6157952 (= res!2550297 call!512633)))

(declare-fun b!6157953 () Bool)

(declare-fun e!3751956 () Bool)

(assert (=> b!6157953 (= e!3751956 e!3751957)))

(assert (=> b!6157953 (= c!1108803 (is-Star!16100 r!7292))))

(declare-fun d!1929484 () Bool)

(declare-fun res!2550300 () Bool)

(assert (=> d!1929484 (=> res!2550300 e!3751956)))

(assert (=> d!1929484 (= res!2550300 (is-ElementMatch!16100 r!7292))))

(assert (=> d!1929484 (= (validRegex!7836 r!7292) e!3751956)))

(declare-fun b!6157954 () Bool)

(assert (=> b!6157954 (= e!3751961 call!512631)))

(declare-fun b!6157955 () Bool)

(declare-fun res!2550296 () Bool)

(assert (=> b!6157955 (=> (not res!2550296) (not e!3751955))))

(assert (=> b!6157955 (= res!2550296 call!512633)))

(assert (=> b!6157955 (= e!3751960 e!3751955)))

(assert (= (and d!1929484 (not res!2550300)) b!6157953))

(assert (= (and b!6157953 c!1108803) b!6157951))

(assert (= (and b!6157953 (not c!1108803)) b!6157948))

(assert (= (and b!6157951 res!2550299) b!6157947))

(assert (= (and b!6157948 c!1108802) b!6157955))

(assert (= (and b!6157948 (not c!1108802)) b!6157949))

(assert (= (and b!6157955 res!2550296) b!6157950))

(assert (= (and b!6157949 (not res!2550298)) b!6157952))

(assert (= (and b!6157952 res!2550297) b!6157954))

(assert (= (or b!6157950 b!6157954) bm!512626))

(assert (= (or b!6157955 b!6157952) bm!512628))

(assert (= (or b!6157947 bm!512626) bm!512627))

(declare-fun m!6996398 () Bool)

(assert (=> bm!512627 m!6996398))

(declare-fun m!6996400 () Bool)

(assert (=> bm!512628 m!6996400))

(declare-fun m!6996402 () Bool)

(assert (=> b!6157951 m!6996402))

(assert (=> start!615064 d!1929484))

(declare-fun e!3751962 () Bool)

(declare-fun d!1929486 () Bool)

(assert (=> d!1929486 (= (matchZipper!2112 (set.union lt!2335362 lt!2335358) (t!378093 s!2326)) e!3751962)))

(declare-fun res!2550301 () Bool)

(assert (=> d!1929486 (=> res!2550301 e!3751962)))

(assert (=> d!1929486 (= res!2550301 (matchZipper!2112 lt!2335362 (t!378093 s!2326)))))

(declare-fun lt!2335499 () Unit!157579)

(assert (=> d!1929486 (= lt!2335499 (choose!45776 lt!2335362 lt!2335358 (t!378093 s!2326)))))

(assert (=> d!1929486 (= (lemmaZipperConcatMatchesSameAsBothZippers!931 lt!2335362 lt!2335358 (t!378093 s!2326)) lt!2335499)))

(declare-fun b!6157956 () Bool)

(assert (=> b!6157956 (= e!3751962 (matchZipper!2112 lt!2335358 (t!378093 s!2326)))))

(assert (= (and d!1929486 (not res!2550301)) b!6157956))

(assert (=> d!1929486 m!6995920))

(assert (=> d!1929486 m!6995918))

(declare-fun m!6996404 () Bool)

(assert (=> d!1929486 m!6996404))

(assert (=> b!6157956 m!6995962))

(assert (=> b!6157467 d!1929486))

(assert (=> b!6157467 d!1929396))

(declare-fun d!1929488 () Bool)

(declare-fun c!1108804 () Bool)

(assert (=> d!1929488 (= c!1108804 (isEmpty!36446 (t!378093 s!2326)))))

(declare-fun e!3751963 () Bool)

(assert (=> d!1929488 (= (matchZipper!2112 (set.union lt!2335362 lt!2335358) (t!378093 s!2326)) e!3751963)))

(declare-fun b!6157957 () Bool)

(assert (=> b!6157957 (= e!3751963 (nullableZipper!1881 (set.union lt!2335362 lt!2335358)))))

(declare-fun b!6157958 () Bool)

(assert (=> b!6157958 (= e!3751963 (matchZipper!2112 (derivationStepZipper!2073 (set.union lt!2335362 lt!2335358) (head!12722 (t!378093 s!2326))) (tail!11807 (t!378093 s!2326))))))

(assert (= (and d!1929488 c!1108804) b!6157957))

(assert (= (and d!1929488 (not c!1108804)) b!6157958))

(assert (=> d!1929488 m!6996170))

(declare-fun m!6996406 () Bool)

(assert (=> b!6157957 m!6996406))

(assert (=> b!6157958 m!6996174))

(assert (=> b!6157958 m!6996174))

(declare-fun m!6996408 () Bool)

(assert (=> b!6157958 m!6996408))

(assert (=> b!6157958 m!6996178))

(assert (=> b!6157958 m!6996408))

(assert (=> b!6157958 m!6996178))

(declare-fun m!6996410 () Bool)

(assert (=> b!6157958 m!6996410))

(assert (=> b!6157467 d!1929488))

(declare-fun b!6157963 () Bool)

(declare-fun e!3751966 () Bool)

(declare-fun tp!1719595 () Bool)

(declare-fun tp!1719596 () Bool)

(assert (=> b!6157963 (= e!3751966 (and tp!1719595 tp!1719596))))

(assert (=> b!6157452 (= tp!1719558 e!3751966)))

(assert (= (and b!6157452 (is-Cons!64476 (exprs!5984 (h!70925 zl!343)))) b!6157963))

(declare-fun b!6157968 () Bool)

(declare-fun e!3751969 () Bool)

(declare-fun tp!1719599 () Bool)

(assert (=> b!6157968 (= e!3751969 (and tp_is_empty!41453 tp!1719599))))

(assert (=> b!6157471 (= tp!1719553 e!3751969)))

(assert (= (and b!6157471 (is-Cons!64475 (t!378093 s!2326))) b!6157968))

(declare-fun b!6157982 () Bool)

(declare-fun e!3751972 () Bool)

(declare-fun tp!1719611 () Bool)

(declare-fun tp!1719614 () Bool)

(assert (=> b!6157982 (= e!3751972 (and tp!1719611 tp!1719614))))

(declare-fun b!6157981 () Bool)

(declare-fun tp!1719612 () Bool)

(assert (=> b!6157981 (= e!3751972 tp!1719612)))

(assert (=> b!6157464 (= tp!1719559 e!3751972)))

(declare-fun b!6157979 () Bool)

(assert (=> b!6157979 (= e!3751972 tp_is_empty!41453)))

(declare-fun b!6157980 () Bool)

(declare-fun tp!1719610 () Bool)

(declare-fun tp!1719613 () Bool)

(assert (=> b!6157980 (= e!3751972 (and tp!1719610 tp!1719613))))

(assert (= (and b!6157464 (is-ElementMatch!16100 (reg!16429 r!7292))) b!6157979))

(assert (= (and b!6157464 (is-Concat!24945 (reg!16429 r!7292))) b!6157980))

(assert (= (and b!6157464 (is-Star!16100 (reg!16429 r!7292))) b!6157981))

(assert (= (and b!6157464 (is-Union!16100 (reg!16429 r!7292))) b!6157982))

(declare-fun b!6157990 () Bool)

(declare-fun e!3751978 () Bool)

(declare-fun tp!1719619 () Bool)

(assert (=> b!6157990 (= e!3751978 tp!1719619)))

(declare-fun b!6157989 () Bool)

(declare-fun e!3751977 () Bool)

(declare-fun tp!1719620 () Bool)

(assert (=> b!6157989 (= e!3751977 (and (inv!83498 (h!70925 (t!378095 zl!343))) e!3751978 tp!1719620))))

(assert (=> b!6157469 (= tp!1719551 e!3751977)))

(assert (= b!6157989 b!6157990))

(assert (= (and b!6157469 (is-Cons!64477 (t!378095 zl!343))) b!6157989))

(declare-fun m!6996412 () Bool)

(assert (=> b!6157989 m!6996412))

(declare-fun b!6157994 () Bool)

(declare-fun e!3751979 () Bool)

(declare-fun tp!1719622 () Bool)

(declare-fun tp!1719625 () Bool)

(assert (=> b!6157994 (= e!3751979 (and tp!1719622 tp!1719625))))

(declare-fun b!6157993 () Bool)

(declare-fun tp!1719623 () Bool)

(assert (=> b!6157993 (= e!3751979 tp!1719623)))

(assert (=> b!6157458 (= tp!1719557 e!3751979)))

(declare-fun b!6157991 () Bool)

(assert (=> b!6157991 (= e!3751979 tp_is_empty!41453)))

(declare-fun b!6157992 () Bool)

(declare-fun tp!1719621 () Bool)

(declare-fun tp!1719624 () Bool)

(assert (=> b!6157992 (= e!3751979 (and tp!1719621 tp!1719624))))

(assert (= (and b!6157458 (is-ElementMatch!16100 (regOne!32712 r!7292))) b!6157991))

(assert (= (and b!6157458 (is-Concat!24945 (regOne!32712 r!7292))) b!6157992))

(assert (= (and b!6157458 (is-Star!16100 (regOne!32712 r!7292))) b!6157993))

(assert (= (and b!6157458 (is-Union!16100 (regOne!32712 r!7292))) b!6157994))

(declare-fun b!6157998 () Bool)

(declare-fun e!3751980 () Bool)

(declare-fun tp!1719627 () Bool)

(declare-fun tp!1719630 () Bool)

(assert (=> b!6157998 (= e!3751980 (and tp!1719627 tp!1719630))))

(declare-fun b!6157997 () Bool)

(declare-fun tp!1719628 () Bool)

(assert (=> b!6157997 (= e!3751980 tp!1719628)))

(assert (=> b!6157458 (= tp!1719552 e!3751980)))

(declare-fun b!6157995 () Bool)

(assert (=> b!6157995 (= e!3751980 tp_is_empty!41453)))

(declare-fun b!6157996 () Bool)

(declare-fun tp!1719626 () Bool)

(declare-fun tp!1719629 () Bool)

(assert (=> b!6157996 (= e!3751980 (and tp!1719626 tp!1719629))))

(assert (= (and b!6157458 (is-ElementMatch!16100 (regTwo!32712 r!7292))) b!6157995))

(assert (= (and b!6157458 (is-Concat!24945 (regTwo!32712 r!7292))) b!6157996))

(assert (= (and b!6157458 (is-Star!16100 (regTwo!32712 r!7292))) b!6157997))

(assert (= (and b!6157458 (is-Union!16100 (regTwo!32712 r!7292))) b!6157998))

(declare-fun condSetEmpty!41721 () Bool)

(assert (=> setNonEmpty!41715 (= condSetEmpty!41721 (= setRest!41715 (as set.empty (Set Context!10968))))))

(declare-fun setRes!41721 () Bool)

(assert (=> setNonEmpty!41715 (= tp!1719554 setRes!41721)))

(declare-fun setIsEmpty!41721 () Bool)

(assert (=> setIsEmpty!41721 setRes!41721))

(declare-fun e!3751983 () Bool)

(declare-fun tp!1719636 () Bool)

(declare-fun setElem!41721 () Context!10968)

(declare-fun setNonEmpty!41721 () Bool)

(assert (=> setNonEmpty!41721 (= setRes!41721 (and tp!1719636 (inv!83498 setElem!41721) e!3751983))))

(declare-fun setRest!41721 () (Set Context!10968))

(assert (=> setNonEmpty!41721 (= setRest!41715 (set.union (set.insert setElem!41721 (as set.empty (Set Context!10968))) setRest!41721))))

(declare-fun b!6158003 () Bool)

(declare-fun tp!1719635 () Bool)

(assert (=> b!6158003 (= e!3751983 tp!1719635)))

(assert (= (and setNonEmpty!41715 condSetEmpty!41721) setIsEmpty!41721))

(assert (= (and setNonEmpty!41715 (not condSetEmpty!41721)) setNonEmpty!41721))

(assert (= setNonEmpty!41721 b!6158003))

(declare-fun m!6996414 () Bool)

(assert (=> setNonEmpty!41721 m!6996414))

(declare-fun b!6158004 () Bool)

(declare-fun e!3751984 () Bool)

(declare-fun tp!1719637 () Bool)

(declare-fun tp!1719638 () Bool)

(assert (=> b!6158004 (= e!3751984 (and tp!1719637 tp!1719638))))

(assert (=> b!6157483 (= tp!1719556 e!3751984)))

(assert (= (and b!6157483 (is-Cons!64476 (exprs!5984 setElem!41715))) b!6158004))

(declare-fun b!6158008 () Bool)

(declare-fun e!3751985 () Bool)

(declare-fun tp!1719640 () Bool)

(declare-fun tp!1719643 () Bool)

(assert (=> b!6158008 (= e!3751985 (and tp!1719640 tp!1719643))))

(declare-fun b!6158007 () Bool)

(declare-fun tp!1719641 () Bool)

(assert (=> b!6158007 (= e!3751985 tp!1719641)))

(assert (=> b!6157453 (= tp!1719560 e!3751985)))

(declare-fun b!6158005 () Bool)

(assert (=> b!6158005 (= e!3751985 tp_is_empty!41453)))

(declare-fun b!6158006 () Bool)

(declare-fun tp!1719639 () Bool)

(declare-fun tp!1719642 () Bool)

(assert (=> b!6158006 (= e!3751985 (and tp!1719639 tp!1719642))))

(assert (= (and b!6157453 (is-ElementMatch!16100 (regOne!32713 r!7292))) b!6158005))

(assert (= (and b!6157453 (is-Concat!24945 (regOne!32713 r!7292))) b!6158006))

(assert (= (and b!6157453 (is-Star!16100 (regOne!32713 r!7292))) b!6158007))

(assert (= (and b!6157453 (is-Union!16100 (regOne!32713 r!7292))) b!6158008))

(declare-fun b!6158012 () Bool)

(declare-fun e!3751986 () Bool)

(declare-fun tp!1719645 () Bool)

(declare-fun tp!1719648 () Bool)

(assert (=> b!6158012 (= e!3751986 (and tp!1719645 tp!1719648))))

(declare-fun b!6158011 () Bool)

(declare-fun tp!1719646 () Bool)

(assert (=> b!6158011 (= e!3751986 tp!1719646)))

(assert (=> b!6157453 (= tp!1719555 e!3751986)))

(declare-fun b!6158009 () Bool)

(assert (=> b!6158009 (= e!3751986 tp_is_empty!41453)))

(declare-fun b!6158010 () Bool)

(declare-fun tp!1719644 () Bool)

(declare-fun tp!1719647 () Bool)

(assert (=> b!6158010 (= e!3751986 (and tp!1719644 tp!1719647))))

(assert (= (and b!6157453 (is-ElementMatch!16100 (regTwo!32713 r!7292))) b!6158009))

(assert (= (and b!6157453 (is-Concat!24945 (regTwo!32713 r!7292))) b!6158010))

(assert (= (and b!6157453 (is-Star!16100 (regTwo!32713 r!7292))) b!6158011))

(assert (= (and b!6157453 (is-Union!16100 (regTwo!32713 r!7292))) b!6158012))

(declare-fun b_lambda!234403 () Bool)

(assert (= b_lambda!234399 (or b!6157462 b_lambda!234403)))

(declare-fun bs!1526198 () Bool)

(declare-fun d!1929490 () Bool)

(assert (= bs!1526198 (and d!1929490 b!6157462)))

(assert (=> bs!1526198 (= (dynLambda!25420 lambda!335934 lt!2335359) (derivationStepZipperUp!1274 lt!2335359 (h!70923 s!2326)))))

(assert (=> bs!1526198 m!6995952))

(assert (=> d!1929464 d!1929490))

(declare-fun b_lambda!234405 () Bool)

(assert (= b_lambda!234397 (or b!6157462 b_lambda!234405)))

(declare-fun bs!1526199 () Bool)

(declare-fun d!1929492 () Bool)

(assert (= bs!1526199 (and d!1929492 b!6157462)))

(assert (=> bs!1526199 (= (dynLambda!25420 lambda!335934 (h!70925 zl!343)) (derivationStepZipperUp!1274 (h!70925 zl!343) (h!70923 s!2326)))))

(assert (=> bs!1526199 m!6996004))

(assert (=> d!1929450 d!1929492))

(declare-fun b_lambda!234407 () Bool)

(assert (= b_lambda!234401 (or b!6157462 b_lambda!234407)))

(declare-fun bs!1526200 () Bool)

(declare-fun d!1929494 () Bool)

(assert (= bs!1526200 (and d!1929494 b!6157462)))

(assert (=> bs!1526200 (= (dynLambda!25420 lambda!335934 lt!2335344) (derivationStepZipperUp!1274 lt!2335344 (h!70923 s!2326)))))

(assert (=> bs!1526200 m!6995950))

(assert (=> d!1929468 d!1929494))

(push 1)

(assert (not b!6157906))

(assert (not bm!512617))

(assert (not b!6157878))

(assert (not b!6157963))

(assert (not d!1929404))

(assert (not b!6158012))

(assert (not b!6157997))

(assert (not d!1929396))

(assert (not b!6158008))

(assert (not d!1929392))

(assert (not bm!512618))

(assert (not d!1929464))

(assert (not bm!512587))

(assert (not d!1929468))

(assert (not d!1929422))

(assert (not d!1929454))

(assert (not bs!1526198))

(assert (not bm!512593))

(assert (not b!6157905))

(assert (not d!1929450))

(assert (not d!1929452))

(assert (not b!6157786))

(assert (not b!6158007))

(assert (not b!6157996))

(assert (not bm!512628))

(assert (not d!1929428))

(assert (not b_lambda!234407))

(assert (not d!1929420))

(assert (not b!6157787))

(assert (not b!6157639))

(assert (not bm!512603))

(assert (not d!1929444))

(assert (not bm!512590))

(assert (not d!1929386))

(assert (not b!6157661))

(assert (not bm!512615))

(assert (not b!6157900))

(assert (not d!1929400))

(assert (not b!6157662))

(assert (not d!1929446))

(assert (not d!1929488))

(assert (not d!1929406))

(assert (not d!1929412))

(assert (not b!6157998))

(assert (not d!1929474))

(assert (not b_lambda!234405))

(assert (not bm!512619))

(assert (not b!6157646))

(assert (not b!6157658))

(assert (not b!6157992))

(assert (not d!1929402))

(assert (not b!6157872))

(assert (not b!6157917))

(assert (not b!6157788))

(assert (not d!1929430))

(assert (not bs!1526199))

(assert (not b!6157874))

(assert (not b!6157669))

(assert (not d!1929480))

(assert (not d!1929398))

(assert (not b!6157989))

(assert (not b!6157826))

(assert (not b!6157789))

(assert (not b!6157911))

(assert (not b!6157968))

(assert (not b!6157675))

(assert (not b!6157698))

(assert (not bm!512595))

(assert (not d!1929390))

(assert (not d!1929414))

(assert (not b!6157823))

(assert (not b!6157927))

(assert (not b!6157957))

(assert (not b!6157695))

(assert (not b!6157877))

(assert (not b!6157993))

(assert (not b!6157638))

(assert (not b!6157990))

(assert (not b!6157901))

(assert (not b!6157756))

(assert (not b!6157916))

(assert tp_is_empty!41453)

(assert (not b!6157696))

(assert (not bm!512602))

(assert (not d!1929408))

(assert (not b!6157673))

(assert (not b!6157694))

(assert (not b!6157887))

(assert (not bm!512616))

(assert (not b!6157759))

(assert (not b!6157782))

(assert (not b!6157915))

(assert (not bm!512589))

(assert (not b!6158004))

(assert (not b!6157642))

(assert (not d!1929388))

(assert (not bs!1526200))

(assert (not b!6157956))

(assert (not b!6157760))

(assert (not b!6157668))

(assert (not b!6157672))

(assert (not d!1929440))

(assert (not b!6157980))

(assert (not b!6157864))

(assert (not b!6157667))

(assert (not b!6157666))

(assert (not bm!512627))

(assert (not d!1929434))

(assert (not b!6157674))

(assert (not b!6158003))

(assert (not d!1929416))

(assert (not d!1929394))

(assert (not b!6157641))

(assert (not b!6157923))

(assert (not b!6157951))

(assert (not b_lambda!234403))

(assert (not b!6157701))

(assert (not b!6157644))

(assert (not bm!512596))

(assert (not b!6157958))

(assert (not d!1929462))

(assert (not b!6157664))

(assert (not b!6157910))

(assert (not b!6157651))

(assert (not b!6158010))

(assert (not b!6157868))

(assert (not b!6157745))

(assert (not bm!512611))

(assert (not b!6157665))

(assert (not d!1929472))

(assert (not b!6157657))

(assert (not b!6157918))

(assert (not bm!512610))

(assert (not d!1929442))

(assert (not bm!512608))

(assert (not d!1929418))

(assert (not b!6157922))

(assert (not b!6157663))

(assert (not b!6157994))

(assert (not b!6157645))

(assert (not b!6158006))

(assert (not b!6157981))

(assert (not d!1929470))

(assert (not setNonEmpty!41721))

(assert (not b!6157702))

(assert (not b!6157876))

(assert (not b!6157928))

(assert (not d!1929482))

(assert (not b!6157790))

(assert (not b!6157982))

(assert (not b!6157866))

(assert (not b!6157863))

(assert (not d!1929486))

(assert (not d!1929410))

(assert (not b!6158011))

(assert (not bm!512606))

(assert (not d!1929466))

(assert (not b!6157784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1929606 () Bool)

(assert (=> d!1929606 (= (isEmpty!36446 (t!378093 s!2326)) (is-Nil!64475 (t!378093 s!2326)))))

(assert (=> d!1929396 d!1929606))

(declare-fun d!1929608 () Bool)

(declare-fun lambda!336010 () Int)

(declare-fun exists!2445 ((Set Context!10968) Int) Bool)

(assert (=> d!1929608 (= (nullableZipper!1881 lt!2335337) (exists!2445 lt!2335337 lambda!336010))))

(declare-fun bs!1526248 () Bool)

(assert (= bs!1526248 d!1929608))

(declare-fun m!6996706 () Bool)

(assert (=> bs!1526248 m!6996706))

(assert (=> b!6157666 d!1929608))

(declare-fun bs!1526249 () Bool)

(declare-fun d!1929610 () Bool)

(assert (= bs!1526249 (and d!1929610 d!1929608)))

(declare-fun lambda!336011 () Int)

(assert (=> bs!1526249 (= lambda!336011 lambda!336010)))

(assert (=> d!1929610 (= (nullableZipper!1881 lt!2335358) (exists!2445 lt!2335358 lambda!336011))))

(declare-fun bs!1526250 () Bool)

(assert (= bs!1526250 d!1929610))

(declare-fun m!6996708 () Bool)

(assert (=> bs!1526250 m!6996708))

(assert (=> b!6157759 d!1929610))

(declare-fun d!1929612 () Bool)

(declare-fun c!1108919 () Bool)

(assert (=> d!1929612 (= c!1108919 (isEmpty!36446 (tail!11807 (t!378093 s!2326))))))

(declare-fun e!3752210 () Bool)

(assert (=> d!1929612 (= (matchZipper!2112 (derivationStepZipper!2073 lt!2335362 (head!12722 (t!378093 s!2326))) (tail!11807 (t!378093 s!2326))) e!3752210)))

(declare-fun b!6158409 () Bool)

(assert (=> b!6158409 (= e!3752210 (nullableZipper!1881 (derivationStepZipper!2073 lt!2335362 (head!12722 (t!378093 s!2326)))))))

(declare-fun b!6158410 () Bool)

(assert (=> b!6158410 (= e!3752210 (matchZipper!2112 (derivationStepZipper!2073 (derivationStepZipper!2073 lt!2335362 (head!12722 (t!378093 s!2326))) (head!12722 (tail!11807 (t!378093 s!2326)))) (tail!11807 (tail!11807 (t!378093 s!2326)))))))

(assert (= (and d!1929612 c!1108919) b!6158409))

(assert (= (and d!1929612 (not c!1108919)) b!6158410))

(assert (=> d!1929612 m!6996178))

(declare-fun m!6996710 () Bool)

(assert (=> d!1929612 m!6996710))

(assert (=> b!6158409 m!6996176))

(declare-fun m!6996712 () Bool)

(assert (=> b!6158409 m!6996712))

(assert (=> b!6158410 m!6996178))

(declare-fun m!6996714 () Bool)

(assert (=> b!6158410 m!6996714))

(assert (=> b!6158410 m!6996176))

(assert (=> b!6158410 m!6996714))

(declare-fun m!6996716 () Bool)

(assert (=> b!6158410 m!6996716))

(assert (=> b!6158410 m!6996178))

(declare-fun m!6996718 () Bool)

(assert (=> b!6158410 m!6996718))

(assert (=> b!6158410 m!6996716))

(assert (=> b!6158410 m!6996718))

(declare-fun m!6996720 () Bool)

(assert (=> b!6158410 m!6996720))

(assert (=> b!6157663 d!1929612))

(declare-fun bs!1526251 () Bool)

(declare-fun d!1929614 () Bool)

(assert (= bs!1526251 (and d!1929614 b!6157462)))

(declare-fun lambda!336014 () Int)

(assert (=> bs!1526251 (= (= (head!12722 (t!378093 s!2326)) (h!70923 s!2326)) (= lambda!336014 lambda!335934))))

(assert (=> d!1929614 true))

(assert (=> d!1929614 (= (derivationStepZipper!2073 lt!2335362 (head!12722 (t!378093 s!2326))) (flatMap!1605 lt!2335362 lambda!336014))))

(declare-fun bs!1526252 () Bool)

(assert (= bs!1526252 d!1929614))

(declare-fun m!6996722 () Bool)

(assert (=> bs!1526252 m!6996722))

(assert (=> b!6157663 d!1929614))

(declare-fun d!1929616 () Bool)

(assert (=> d!1929616 (= (head!12722 (t!378093 s!2326)) (h!70923 (t!378093 s!2326)))))

(assert (=> b!6157663 d!1929616))

(declare-fun d!1929618 () Bool)

(assert (=> d!1929618 (= (tail!11807 (t!378093 s!2326)) (t!378093 (t!378093 s!2326)))))

(assert (=> b!6157663 d!1929618))

(declare-fun b!6158427 () Bool)

(declare-fun e!3752226 () Bool)

(declare-fun call!512693 () Bool)

(assert (=> b!6158427 (= e!3752226 call!512693)))

(declare-fun b!6158428 () Bool)

(declare-fun e!3752227 () Bool)

(declare-fun e!3752225 () Bool)

(assert (=> b!6158428 (= e!3752227 e!3752225)))

(declare-fun c!1108924 () Bool)

(assert (=> b!6158428 (= c!1108924 (is-Union!16100 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun b!6158429 () Bool)

(declare-fun e!3752224 () Bool)

(assert (=> b!6158429 (= e!3752224 call!512693)))

(declare-fun d!1929620 () Bool)

(declare-fun res!2550431 () Bool)

(declare-fun e!3752223 () Bool)

(assert (=> d!1929620 (=> res!2550431 e!3752223)))

(assert (=> d!1929620 (= res!2550431 (is-EmptyExpr!16100 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(assert (=> d!1929620 (= (nullableFct!2057 (h!70924 (exprs!5984 (h!70925 zl!343)))) e!3752223)))

(declare-fun b!6158430 () Bool)

(declare-fun e!3752228 () Bool)

(assert (=> b!6158430 (= e!3752228 e!3752227)))

(declare-fun res!2550430 () Bool)

(assert (=> b!6158430 (=> res!2550430 e!3752227)))

(assert (=> b!6158430 (= res!2550430 (is-Star!16100 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun b!6158431 () Bool)

(assert (=> b!6158431 (= e!3752223 e!3752228)))

(declare-fun res!2550432 () Bool)

(assert (=> b!6158431 (=> (not res!2550432) (not e!3752228))))

(assert (=> b!6158431 (= res!2550432 (and (not (is-EmptyLang!16100 (h!70924 (exprs!5984 (h!70925 zl!343))))) (not (is-ElementMatch!16100 (h!70924 (exprs!5984 (h!70925 zl!343)))))))))

(declare-fun b!6158432 () Bool)

(assert (=> b!6158432 (= e!3752225 e!3752224)))

(declare-fun res!2550434 () Bool)

(declare-fun call!512694 () Bool)

(assert (=> b!6158432 (= res!2550434 call!512694)))

(assert (=> b!6158432 (=> res!2550434 e!3752224)))

(declare-fun b!6158433 () Bool)

(assert (=> b!6158433 (= e!3752225 e!3752226)))

(declare-fun res!2550433 () Bool)

(assert (=> b!6158433 (= res!2550433 call!512694)))

(assert (=> b!6158433 (=> (not res!2550433) (not e!3752226))))

(declare-fun bm!512688 () Bool)

(assert (=> bm!512688 (= call!512694 (nullable!6093 (ite c!1108924 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))))))))

(declare-fun bm!512689 () Bool)

(assert (=> bm!512689 (= call!512693 (nullable!6093 (ite c!1108924 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))))))))

(assert (= (and d!1929620 (not res!2550431)) b!6158431))

(assert (= (and b!6158431 res!2550432) b!6158430))

(assert (= (and b!6158430 (not res!2550430)) b!6158428))

(assert (= (and b!6158428 c!1108924) b!6158432))

(assert (= (and b!6158428 (not c!1108924)) b!6158433))

(assert (= (and b!6158432 (not res!2550434)) b!6158429))

(assert (= (and b!6158433 res!2550433) b!6158427))

(assert (= (or b!6158429 b!6158427) bm!512689))

(assert (= (or b!6158432 b!6158433) bm!512688))

(declare-fun m!6996724 () Bool)

(assert (=> bm!512688 m!6996724))

(declare-fun m!6996726 () Bool)

(assert (=> bm!512689 m!6996726))

(assert (=> d!1929454 d!1929620))

(declare-fun d!1929622 () Bool)

(assert (=> d!1929622 (= (isUnion!957 lt!2335455) (is-Union!16100 lt!2335455))))

(assert (=> b!6157641 d!1929622))

(declare-fun d!1929624 () Bool)

(assert (=> d!1929624 (= (isEmpty!36446 s!2326) (is-Nil!64475 s!2326))))

(assert (=> bm!512606 d!1929624))

(assert (=> d!1929442 d!1929440))

(assert (=> d!1929442 d!1929438))

(declare-fun d!1929626 () Bool)

(assert (=> d!1929626 (= (matchR!8283 r!7292 s!2326) (matchRSpec!3201 r!7292 s!2326))))

(assert (=> d!1929626 true))

(declare-fun _$88!4716 () Unit!157579)

(assert (=> d!1929626 (= (choose!45780 r!7292 s!2326) _$88!4716)))

(declare-fun bs!1526253 () Bool)

(assert (= bs!1526253 d!1929626))

(assert (=> bs!1526253 m!6995990))

(assert (=> bs!1526253 m!6995988))

(assert (=> d!1929442 d!1929626))

(assert (=> d!1929442 d!1929484))

(declare-fun d!1929628 () Bool)

(assert (=> d!1929628 true))

(declare-fun setRes!41727 () Bool)

(assert (=> d!1929628 setRes!41727))

(declare-fun condSetEmpty!41727 () Bool)

(declare-fun res!2550437 () (Set Context!10968))

(assert (=> d!1929628 (= condSetEmpty!41727 (= res!2550437 (as set.empty (Set Context!10968))))))

(assert (=> d!1929628 (= (choose!45782 lt!2335352 lambda!335934) res!2550437)))

(declare-fun setIsEmpty!41727 () Bool)

(assert (=> setIsEmpty!41727 setRes!41727))

(declare-fun setNonEmpty!41727 () Bool)

(declare-fun setElem!41727 () Context!10968)

(declare-fun tp!1719711 () Bool)

(declare-fun e!3752231 () Bool)

(assert (=> setNonEmpty!41727 (= setRes!41727 (and tp!1719711 (inv!83498 setElem!41727) e!3752231))))

(declare-fun setRest!41727 () (Set Context!10968))

(assert (=> setNonEmpty!41727 (= res!2550437 (set.union (set.insert setElem!41727 (as set.empty (Set Context!10968))) setRest!41727))))

(declare-fun b!6158436 () Bool)

(declare-fun tp!1719712 () Bool)

(assert (=> b!6158436 (= e!3752231 tp!1719712)))

(assert (= (and d!1929628 condSetEmpty!41727) setIsEmpty!41727))

(assert (= (and d!1929628 (not condSetEmpty!41727)) setNonEmpty!41727))

(assert (= setNonEmpty!41727 b!6158436))

(declare-fun m!6996728 () Bool)

(assert (=> setNonEmpty!41727 m!6996728))

(assert (=> d!1929472 d!1929628))

(declare-fun d!1929630 () Bool)

(assert (=> d!1929630 (= (isEmpty!36443 (tail!11806 (unfocusZipperList!1521 zl!343))) (is-Nil!64476 (tail!11806 (unfocusZipperList!1521 zl!343))))))

(assert (=> b!6157645 d!1929630))

(declare-fun d!1929632 () Bool)

(assert (=> d!1929632 (= (tail!11806 (unfocusZipperList!1521 zl!343)) (t!378094 (unfocusZipperList!1521 zl!343)))))

(assert (=> b!6157645 d!1929632))

(declare-fun d!1929634 () Bool)

(assert (=> d!1929634 (= (isEmptyExpr!1517 lt!2335483) (is-EmptyExpr!16100 lt!2335483))))

(assert (=> b!6157782 d!1929634))

(declare-fun d!1929636 () Bool)

(assert (=> d!1929636 (= (nullable!6093 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343))))) (nullableFct!2057 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343))))))))

(declare-fun bs!1526254 () Bool)

(assert (= bs!1526254 d!1929636))

(declare-fun m!6996730 () Bool)

(assert (=> bs!1526254 m!6996730))

(assert (=> b!6157887 d!1929636))

(declare-fun d!1929638 () Bool)

(assert (=> d!1929638 (= (nullable!6093 (regOne!32712 (regOne!32713 (regOne!32712 r!7292)))) (nullableFct!2057 (regOne!32712 (regOne!32713 (regOne!32712 r!7292)))))))

(declare-fun bs!1526255 () Bool)

(assert (= bs!1526255 d!1929638))

(declare-fun m!6996732 () Bool)

(assert (=> bs!1526255 m!6996732))

(assert (=> b!6157756 d!1929638))

(declare-fun d!1929640 () Bool)

(declare-fun res!2550442 () Bool)

(declare-fun e!3752236 () Bool)

(assert (=> d!1929640 (=> res!2550442 e!3752236)))

(assert (=> d!1929640 (= res!2550442 (is-Nil!64476 (exprs!5984 (h!70925 zl!343))))))

(assert (=> d!1929640 (= (forall!15221 (exprs!5984 (h!70925 zl!343)) lambda!335958) e!3752236)))

(declare-fun b!6158441 () Bool)

(declare-fun e!3752237 () Bool)

(assert (=> b!6158441 (= e!3752236 e!3752237)))

(declare-fun res!2550443 () Bool)

(assert (=> b!6158441 (=> (not res!2550443) (not e!3752237))))

(declare-fun dynLambda!25422 (Int Regex!16100) Bool)

(assert (=> b!6158441 (= res!2550443 (dynLambda!25422 lambda!335958 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun b!6158442 () Bool)

(assert (=> b!6158442 (= e!3752237 (forall!15221 (t!378094 (exprs!5984 (h!70925 zl!343))) lambda!335958))))

(assert (= (and d!1929640 (not res!2550442)) b!6158441))

(assert (= (and b!6158441 res!2550443) b!6158442))

(declare-fun b_lambda!234421 () Bool)

(assert (=> (not b_lambda!234421) (not b!6158441)))

(declare-fun m!6996734 () Bool)

(assert (=> b!6158441 m!6996734))

(declare-fun m!6996736 () Bool)

(assert (=> b!6158442 m!6996736))

(assert (=> d!1929392 d!1929640))

(declare-fun bs!1526256 () Bool)

(declare-fun d!1929642 () Bool)

(assert (= bs!1526256 (and d!1929642 d!1929434)))

(declare-fun lambda!336015 () Int)

(assert (=> bs!1526256 (= lambda!336015 lambda!335972)))

(declare-fun bs!1526257 () Bool)

(assert (= bs!1526257 (and d!1929642 d!1929388)))

(assert (=> bs!1526257 (= lambda!336015 lambda!335955)))

(declare-fun bs!1526258 () Bool)

(assert (= bs!1526258 (and d!1929642 d!1929386)))

(assert (=> bs!1526258 (= lambda!336015 lambda!335952)))

(declare-fun bs!1526259 () Bool)

(assert (= bs!1526259 (and d!1929642 d!1929430)))

(assert (=> bs!1526259 (= lambda!336015 lambda!335969)))

(declare-fun bs!1526260 () Bool)

(assert (= bs!1526260 (and d!1929642 d!1929392)))

(assert (=> bs!1526260 (= lambda!336015 lambda!335958)))

(declare-fun bs!1526261 () Bool)

(assert (= bs!1526261 (and d!1929642 d!1929398)))

(assert (=> bs!1526261 (= lambda!336015 lambda!335959)))

(assert (=> d!1929642 (= (inv!83498 (h!70925 (t!378095 zl!343))) (forall!15221 (exprs!5984 (h!70925 (t!378095 zl!343))) lambda!336015))))

(declare-fun bs!1526262 () Bool)

(assert (= bs!1526262 d!1929642))

(declare-fun m!6996738 () Bool)

(assert (=> bs!1526262 m!6996738))

(assert (=> b!6157989 d!1929642))

(declare-fun e!3752240 () (Set Context!10968))

(declare-fun b!6158443 () Bool)

(declare-fun call!512695 () (Set Context!10968))

(assert (=> b!6158443 (= e!3752240 (set.union call!512695 (derivationStepZipperUp!1274 (Context!10969 (t!378094 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 (h!70925 zl!343))))))) (h!70923 s!2326))))))

(declare-fun d!1929644 () Bool)

(declare-fun c!1108926 () Bool)

(declare-fun e!3752239 () Bool)

(assert (=> d!1929644 (= c!1108926 e!3752239)))

(declare-fun res!2550444 () Bool)

(assert (=> d!1929644 (=> (not res!2550444) (not e!3752239))))

(assert (=> d!1929644 (= res!2550444 (is-Cons!64476 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 (h!70925 zl!343)))))))))

(assert (=> d!1929644 (= (derivationStepZipperUp!1274 (Context!10969 (t!378094 (exprs!5984 (h!70925 zl!343)))) (h!70923 s!2326)) e!3752240)))

(declare-fun b!6158444 () Bool)

(assert (=> b!6158444 (= e!3752239 (nullable!6093 (h!70924 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 (h!70925 zl!343))))))))))

(declare-fun b!6158445 () Bool)

(declare-fun e!3752238 () (Set Context!10968))

(assert (=> b!6158445 (= e!3752238 (as set.empty (Set Context!10968)))))

(declare-fun b!6158446 () Bool)

(assert (=> b!6158446 (= e!3752238 call!512695)))

(declare-fun b!6158447 () Bool)

(assert (=> b!6158447 (= e!3752240 e!3752238)))

(declare-fun c!1108925 () Bool)

(assert (=> b!6158447 (= c!1108925 (is-Cons!64476 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 (h!70925 zl!343)))))))))

(declare-fun bm!512690 () Bool)

(assert (=> bm!512690 (= call!512695 (derivationStepZipperDown!1348 (h!70924 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 (h!70925 zl!343)))))) (Context!10969 (t!378094 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 (h!70925 zl!343))))))) (h!70923 s!2326)))))

(assert (= (and d!1929644 res!2550444) b!6158444))

(assert (= (and d!1929644 c!1108926) b!6158443))

(assert (= (and d!1929644 (not c!1108926)) b!6158447))

(assert (= (and b!6158447 c!1108925) b!6158446))

(assert (= (and b!6158447 (not c!1108925)) b!6158445))

(assert (= (or b!6158443 b!6158446) bm!512690))

(declare-fun m!6996740 () Bool)

(assert (=> b!6158443 m!6996740))

(declare-fun m!6996742 () Bool)

(assert (=> b!6158444 m!6996742))

(declare-fun m!6996744 () Bool)

(assert (=> bm!512690 m!6996744))

(assert (=> b!6157900 d!1929644))

(declare-fun d!1929646 () Bool)

(assert (=> d!1929646 (= (nullable!6093 (reg!16429 r!7292)) (nullableFct!2057 (reg!16429 r!7292)))))

(declare-fun bs!1526263 () Bool)

(assert (= bs!1526263 d!1929646))

(declare-fun m!6996746 () Bool)

(assert (=> bs!1526263 m!6996746))

(assert (=> b!6157951 d!1929646))

(declare-fun bs!1526264 () Bool)

(declare-fun d!1929648 () Bool)

(assert (= bs!1526264 (and d!1929648 d!1929608)))

(declare-fun lambda!336016 () Int)

(assert (=> bs!1526264 (= lambda!336016 lambda!336010)))

(declare-fun bs!1526265 () Bool)

(assert (= bs!1526265 (and d!1929648 d!1929610)))

(assert (=> bs!1526265 (= lambda!336016 lambda!336011)))

(assert (=> d!1929648 (= (nullableZipper!1881 lt!2335342) (exists!2445 lt!2335342 lambda!336016))))

(declare-fun bs!1526266 () Bool)

(assert (= bs!1526266 d!1929648))

(declare-fun m!6996748 () Bool)

(assert (=> bs!1526266 m!6996748))

(assert (=> b!6157668 d!1929648))

(declare-fun b!6158448 () Bool)

(declare-fun res!2550451 () Bool)

(declare-fun e!3752246 () Bool)

(assert (=> b!6158448 (=> (not res!2550451) (not e!3752246))))

(declare-fun call!512696 () Bool)

(assert (=> b!6158448 (= res!2550451 (not call!512696))))

(declare-fun b!6158449 () Bool)

(declare-fun res!2550447 () Bool)

(declare-fun e!3752242 () Bool)

(assert (=> b!6158449 (=> res!2550447 e!3752242)))

(assert (=> b!6158449 (= res!2550447 (not (isEmpty!36446 (tail!11807 (tail!11807 s!2326)))))))

(declare-fun b!6158450 () Bool)

(declare-fun res!2550446 () Bool)

(assert (=> b!6158450 (=> (not res!2550446) (not e!3752246))))

(assert (=> b!6158450 (= res!2550446 (isEmpty!36446 (tail!11807 (tail!11807 s!2326))))))

(declare-fun bm!512691 () Bool)

(assert (=> bm!512691 (= call!512696 (isEmpty!36446 (tail!11807 s!2326)))))

(declare-fun b!6158451 () Bool)

(declare-fun e!3752244 () Bool)

(assert (=> b!6158451 (= e!3752244 e!3752242)))

(declare-fun res!2550452 () Bool)

(assert (=> b!6158451 (=> res!2550452 e!3752242)))

(assert (=> b!6158451 (= res!2550452 call!512696)))

(declare-fun b!6158452 () Bool)

(assert (=> b!6158452 (= e!3752242 (not (= (head!12722 (tail!11807 s!2326)) (c!1108675 (derivativeStep!4820 r!7292 (head!12722 s!2326))))))))

(declare-fun d!1929650 () Bool)

(declare-fun e!3752245 () Bool)

(assert (=> d!1929650 e!3752245))

(declare-fun c!1108928 () Bool)

(assert (=> d!1929650 (= c!1108928 (is-EmptyExpr!16100 (derivativeStep!4820 r!7292 (head!12722 s!2326))))))

(declare-fun lt!2335547 () Bool)

(declare-fun e!3752241 () Bool)

(assert (=> d!1929650 (= lt!2335547 e!3752241)))

(declare-fun c!1108927 () Bool)

(assert (=> d!1929650 (= c!1108927 (isEmpty!36446 (tail!11807 s!2326)))))

(assert (=> d!1929650 (validRegex!7836 (derivativeStep!4820 r!7292 (head!12722 s!2326)))))

(assert (=> d!1929650 (= (matchR!8283 (derivativeStep!4820 r!7292 (head!12722 s!2326)) (tail!11807 s!2326)) lt!2335547)))

(declare-fun b!6158453 () Bool)

(declare-fun res!2550448 () Bool)

(declare-fun e!3752247 () Bool)

(assert (=> b!6158453 (=> res!2550448 e!3752247)))

(assert (=> b!6158453 (= res!2550448 e!3752246)))

(declare-fun res!2550445 () Bool)

(assert (=> b!6158453 (=> (not res!2550445) (not e!3752246))))

(assert (=> b!6158453 (= res!2550445 lt!2335547)))

(declare-fun b!6158454 () Bool)

(assert (=> b!6158454 (= e!3752241 (matchR!8283 (derivativeStep!4820 (derivativeStep!4820 r!7292 (head!12722 s!2326)) (head!12722 (tail!11807 s!2326))) (tail!11807 (tail!11807 s!2326))))))

(declare-fun b!6158455 () Bool)

(assert (=> b!6158455 (= e!3752247 e!3752244)))

(declare-fun res!2550449 () Bool)

(assert (=> b!6158455 (=> (not res!2550449) (not e!3752244))))

(assert (=> b!6158455 (= res!2550449 (not lt!2335547))))

(declare-fun b!6158456 () Bool)

(declare-fun res!2550450 () Bool)

(assert (=> b!6158456 (=> res!2550450 e!3752247)))

(assert (=> b!6158456 (= res!2550450 (not (is-ElementMatch!16100 (derivativeStep!4820 r!7292 (head!12722 s!2326)))))))

(declare-fun e!3752243 () Bool)

(assert (=> b!6158456 (= e!3752243 e!3752247)))

(declare-fun b!6158457 () Bool)

(assert (=> b!6158457 (= e!3752245 e!3752243)))

(declare-fun c!1108929 () Bool)

(assert (=> b!6158457 (= c!1108929 (is-EmptyLang!16100 (derivativeStep!4820 r!7292 (head!12722 s!2326))))))

(declare-fun b!6158458 () Bool)

(assert (=> b!6158458 (= e!3752246 (= (head!12722 (tail!11807 s!2326)) (c!1108675 (derivativeStep!4820 r!7292 (head!12722 s!2326)))))))

(declare-fun b!6158459 () Bool)

(assert (=> b!6158459 (= e!3752243 (not lt!2335547))))

(declare-fun b!6158460 () Bool)

(assert (=> b!6158460 (= e!3752241 (nullable!6093 (derivativeStep!4820 r!7292 (head!12722 s!2326))))))

(declare-fun b!6158461 () Bool)

(assert (=> b!6158461 (= e!3752245 (= lt!2335547 call!512696))))

(assert (= (and d!1929650 c!1108927) b!6158460))

(assert (= (and d!1929650 (not c!1108927)) b!6158454))

(assert (= (and d!1929650 c!1108928) b!6158461))

(assert (= (and d!1929650 (not c!1108928)) b!6158457))

(assert (= (and b!6158457 c!1108929) b!6158459))

(assert (= (and b!6158457 (not c!1108929)) b!6158456))

(assert (= (and b!6158456 (not res!2550450)) b!6158453))

(assert (= (and b!6158453 res!2550445) b!6158448))

(assert (= (and b!6158448 res!2550451) b!6158450))

(assert (= (and b!6158450 res!2550446) b!6158458))

(assert (= (and b!6158453 (not res!2550448)) b!6158455))

(assert (= (and b!6158455 res!2550449) b!6158451))

(assert (= (and b!6158451 (not res!2550452)) b!6158449))

(assert (= (and b!6158449 (not res!2550447)) b!6158452))

(assert (= (or b!6158461 b!6158448 b!6158451) bm!512691))

(assert (=> bm!512691 m!6996158))

(assert (=> bm!512691 m!6996310))

(assert (=> b!6158460 m!6996306))

(declare-fun m!6996750 () Bool)

(assert (=> b!6158460 m!6996750))

(assert (=> b!6158454 m!6996158))

(declare-fun m!6996752 () Bool)

(assert (=> b!6158454 m!6996752))

(assert (=> b!6158454 m!6996306))

(assert (=> b!6158454 m!6996752))

(declare-fun m!6996754 () Bool)

(assert (=> b!6158454 m!6996754))

(assert (=> b!6158454 m!6996158))

(declare-fun m!6996756 () Bool)

(assert (=> b!6158454 m!6996756))

(assert (=> b!6158454 m!6996754))

(assert (=> b!6158454 m!6996756))

(declare-fun m!6996758 () Bool)

(assert (=> b!6158454 m!6996758))

(assert (=> b!6158458 m!6996158))

(assert (=> b!6158458 m!6996752))

(assert (=> d!1929650 m!6996158))

(assert (=> d!1929650 m!6996310))

(assert (=> d!1929650 m!6996306))

(declare-fun m!6996760 () Bool)

(assert (=> d!1929650 m!6996760))

(assert (=> b!6158450 m!6996158))

(assert (=> b!6158450 m!6996756))

(assert (=> b!6158450 m!6996756))

(declare-fun m!6996762 () Bool)

(assert (=> b!6158450 m!6996762))

(assert (=> b!6158449 m!6996158))

(assert (=> b!6158449 m!6996756))

(assert (=> b!6158449 m!6996756))

(assert (=> b!6158449 m!6996762))

(assert (=> b!6158452 m!6996158))

(assert (=> b!6158452 m!6996752))

(assert (=> b!6157868 d!1929650))

(declare-fun bm!512700 () Bool)

(declare-fun call!512708 () Regex!16100)

(declare-fun call!512705 () Regex!16100)

(assert (=> bm!512700 (= call!512708 call!512705)))

(declare-fun b!6158483 () Bool)

(declare-fun e!3752259 () Regex!16100)

(declare-fun call!512707 () Regex!16100)

(assert (=> b!6158483 (= e!3752259 (Union!16100 (Concat!24945 call!512707 (regTwo!32712 r!7292)) EmptyLang!16100))))

(declare-fun bm!512701 () Bool)

(assert (=> bm!512701 (= call!512707 call!512708)))

(declare-fun b!6158484 () Bool)

(declare-fun c!1108942 () Bool)

(assert (=> b!6158484 (= c!1108942 (nullable!6093 (regOne!32712 r!7292)))))

(declare-fun e!3752262 () Regex!16100)

(assert (=> b!6158484 (= e!3752262 e!3752259)))

(declare-fun call!512706 () Regex!16100)

(declare-fun c!1108941 () Bool)

(declare-fun bm!512702 () Bool)

(assert (=> bm!512702 (= call!512706 (derivativeStep!4820 (ite c!1108941 (regOne!32713 r!7292) (regOne!32712 r!7292)) (head!12722 s!2326)))))

(declare-fun b!6158485 () Bool)

(declare-fun e!3752260 () Regex!16100)

(assert (=> b!6158485 (= e!3752260 (Union!16100 call!512706 call!512705))))

(declare-fun b!6158486 () Bool)

(declare-fun e!3752261 () Regex!16100)

(assert (=> b!6158486 (= e!3752261 EmptyLang!16100)))

(declare-fun b!6158482 () Bool)

(assert (=> b!6158482 (= c!1108941 (is-Union!16100 r!7292))))

(declare-fun e!3752258 () Regex!16100)

(assert (=> b!6158482 (= e!3752258 e!3752260)))

(declare-fun d!1929652 () Bool)

(declare-fun lt!2335550 () Regex!16100)

(assert (=> d!1929652 (validRegex!7836 lt!2335550)))

(assert (=> d!1929652 (= lt!2335550 e!3752261)))

(declare-fun c!1108944 () Bool)

(assert (=> d!1929652 (= c!1108944 (or (is-EmptyExpr!16100 r!7292) (is-EmptyLang!16100 r!7292)))))

(assert (=> d!1929652 (validRegex!7836 r!7292)))

(assert (=> d!1929652 (= (derivativeStep!4820 r!7292 (head!12722 s!2326)) lt!2335550)))

(declare-fun b!6158487 () Bool)

(assert (=> b!6158487 (= e!3752259 (Union!16100 (Concat!24945 call!512706 (regTwo!32712 r!7292)) call!512707))))

(declare-fun b!6158488 () Bool)

(assert (=> b!6158488 (= e!3752261 e!3752258)))

(declare-fun c!1108940 () Bool)

(assert (=> b!6158488 (= c!1108940 (is-ElementMatch!16100 r!7292))))

(declare-fun b!6158489 () Bool)

(assert (=> b!6158489 (= e!3752258 (ite (= (head!12722 s!2326) (c!1108675 r!7292)) EmptyExpr!16100 EmptyLang!16100))))

(declare-fun b!6158490 () Bool)

(assert (=> b!6158490 (= e!3752262 (Concat!24945 call!512708 r!7292))))

(declare-fun b!6158491 () Bool)

(assert (=> b!6158491 (= e!3752260 e!3752262)))

(declare-fun c!1108943 () Bool)

(assert (=> b!6158491 (= c!1108943 (is-Star!16100 r!7292))))

(declare-fun bm!512703 () Bool)

(assert (=> bm!512703 (= call!512705 (derivativeStep!4820 (ite c!1108941 (regTwo!32713 r!7292) (ite c!1108943 (reg!16429 r!7292) (ite c!1108942 (regTwo!32712 r!7292) (regOne!32712 r!7292)))) (head!12722 s!2326)))))

(assert (= (and d!1929652 c!1108944) b!6158486))

(assert (= (and d!1929652 (not c!1108944)) b!6158488))

(assert (= (and b!6158488 c!1108940) b!6158489))

(assert (= (and b!6158488 (not c!1108940)) b!6158482))

(assert (= (and b!6158482 c!1108941) b!6158485))

(assert (= (and b!6158482 (not c!1108941)) b!6158491))

(assert (= (and b!6158491 c!1108943) b!6158490))

(assert (= (and b!6158491 (not c!1108943)) b!6158484))

(assert (= (and b!6158484 c!1108942) b!6158487))

(assert (= (and b!6158484 (not c!1108942)) b!6158483))

(assert (= (or b!6158487 b!6158483) bm!512701))

(assert (= (or b!6158490 bm!512701) bm!512700))

(assert (= (or b!6158485 bm!512700) bm!512703))

(assert (= (or b!6158485 b!6158487) bm!512702))

(declare-fun m!6996764 () Bool)

(assert (=> b!6158484 m!6996764))

(assert (=> bm!512702 m!6996154))

(declare-fun m!6996766 () Bool)

(assert (=> bm!512702 m!6996766))

(declare-fun m!6996768 () Bool)

(assert (=> d!1929652 m!6996768))

(assert (=> d!1929652 m!6995964))

(assert (=> bm!512703 m!6996154))

(declare-fun m!6996770 () Bool)

(assert (=> bm!512703 m!6996770))

(assert (=> b!6157868 d!1929652))

(declare-fun d!1929654 () Bool)

(assert (=> d!1929654 (= (head!12722 s!2326) (h!70923 s!2326))))

(assert (=> b!6157868 d!1929654))

(declare-fun d!1929656 () Bool)

(assert (=> d!1929656 (= (tail!11807 s!2326) (t!378093 s!2326))))

(assert (=> b!6157868 d!1929656))

(declare-fun d!1929658 () Bool)

(assert (=> d!1929658 (= (isEmpty!36443 (tail!11806 (exprs!5984 (h!70925 zl!343)))) (is-Nil!64476 (tail!11806 (exprs!5984 (h!70925 zl!343)))))))

(assert (=> b!6157786 d!1929658))

(declare-fun d!1929660 () Bool)

(assert (=> d!1929660 (= (tail!11806 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343))))))

(assert (=> b!6157786 d!1929660))

(assert (=> b!6157872 d!1929654))

(declare-fun d!1929662 () Bool)

(assert (=> d!1929662 (= (isEmpty!36443 (exprs!5984 (h!70925 zl!343))) (is-Nil!64476 (exprs!5984 (h!70925 zl!343))))))

(assert (=> b!6157790 d!1929662))

(declare-fun b!6158492 () Bool)

(declare-fun res!2550459 () Bool)

(declare-fun e!3752268 () Bool)

(assert (=> b!6158492 (=> (not res!2550459) (not e!3752268))))

(declare-fun call!512709 () Bool)

(assert (=> b!6158492 (= res!2550459 (not call!512709))))

(declare-fun b!6158493 () Bool)

(declare-fun res!2550455 () Bool)

(declare-fun e!3752264 () Bool)

(assert (=> b!6158493 (=> res!2550455 e!3752264)))

(assert (=> b!6158493 (= res!2550455 (not (isEmpty!36446 (tail!11807 s!2326))))))

(declare-fun b!6158494 () Bool)

(declare-fun res!2550454 () Bool)

(assert (=> b!6158494 (=> (not res!2550454) (not e!3752268))))

(assert (=> b!6158494 (= res!2550454 (isEmpty!36446 (tail!11807 s!2326)))))

(declare-fun bm!512704 () Bool)

(assert (=> bm!512704 (= call!512709 (isEmpty!36446 s!2326))))

(declare-fun b!6158495 () Bool)

(declare-fun e!3752266 () Bool)

(assert (=> b!6158495 (= e!3752266 e!3752264)))

(declare-fun res!2550460 () Bool)

(assert (=> b!6158495 (=> res!2550460 e!3752264)))

(assert (=> b!6158495 (= res!2550460 call!512709)))

(declare-fun b!6158496 () Bool)

(assert (=> b!6158496 (= e!3752264 (not (= (head!12722 s!2326) (c!1108675 (regTwo!32712 r!7292)))))))

(declare-fun d!1929664 () Bool)

(declare-fun e!3752267 () Bool)

(assert (=> d!1929664 e!3752267))

(declare-fun c!1108946 () Bool)

(assert (=> d!1929664 (= c!1108946 (is-EmptyExpr!16100 (regTwo!32712 r!7292)))))

(declare-fun lt!2335551 () Bool)

(declare-fun e!3752263 () Bool)

(assert (=> d!1929664 (= lt!2335551 e!3752263)))

(declare-fun c!1108945 () Bool)

(assert (=> d!1929664 (= c!1108945 (isEmpty!36446 s!2326))))

(assert (=> d!1929664 (validRegex!7836 (regTwo!32712 r!7292))))

(assert (=> d!1929664 (= (matchR!8283 (regTwo!32712 r!7292) s!2326) lt!2335551)))

(declare-fun b!6158497 () Bool)

(declare-fun res!2550456 () Bool)

(declare-fun e!3752269 () Bool)

(assert (=> b!6158497 (=> res!2550456 e!3752269)))

(assert (=> b!6158497 (= res!2550456 e!3752268)))

(declare-fun res!2550453 () Bool)

(assert (=> b!6158497 (=> (not res!2550453) (not e!3752268))))

(assert (=> b!6158497 (= res!2550453 lt!2335551)))

(declare-fun b!6158498 () Bool)

(assert (=> b!6158498 (= e!3752263 (matchR!8283 (derivativeStep!4820 (regTwo!32712 r!7292) (head!12722 s!2326)) (tail!11807 s!2326)))))

(declare-fun b!6158499 () Bool)

(assert (=> b!6158499 (= e!3752269 e!3752266)))

(declare-fun res!2550457 () Bool)

(assert (=> b!6158499 (=> (not res!2550457) (not e!3752266))))

(assert (=> b!6158499 (= res!2550457 (not lt!2335551))))

(declare-fun b!6158500 () Bool)

(declare-fun res!2550458 () Bool)

(assert (=> b!6158500 (=> res!2550458 e!3752269)))

(assert (=> b!6158500 (= res!2550458 (not (is-ElementMatch!16100 (regTwo!32712 r!7292))))))

(declare-fun e!3752265 () Bool)

(assert (=> b!6158500 (= e!3752265 e!3752269)))

(declare-fun b!6158501 () Bool)

(assert (=> b!6158501 (= e!3752267 e!3752265)))

(declare-fun c!1108947 () Bool)

(assert (=> b!6158501 (= c!1108947 (is-EmptyLang!16100 (regTwo!32712 r!7292)))))

(declare-fun b!6158502 () Bool)

(assert (=> b!6158502 (= e!3752268 (= (head!12722 s!2326) (c!1108675 (regTwo!32712 r!7292))))))

(declare-fun b!6158503 () Bool)

(assert (=> b!6158503 (= e!3752265 (not lt!2335551))))

(declare-fun b!6158504 () Bool)

(assert (=> b!6158504 (= e!3752263 (nullable!6093 (regTwo!32712 r!7292)))))

(declare-fun b!6158505 () Bool)

(assert (=> b!6158505 (= e!3752267 (= lt!2335551 call!512709))))

(assert (= (and d!1929664 c!1108945) b!6158504))

(assert (= (and d!1929664 (not c!1108945)) b!6158498))

(assert (= (and d!1929664 c!1108946) b!6158505))

(assert (= (and d!1929664 (not c!1108946)) b!6158501))

(assert (= (and b!6158501 c!1108947) b!6158503))

(assert (= (and b!6158501 (not c!1108947)) b!6158500))

(assert (= (and b!6158500 (not res!2550458)) b!6158497))

(assert (= (and b!6158497 res!2550453) b!6158492))

(assert (= (and b!6158492 res!2550459) b!6158494))

(assert (= (and b!6158494 res!2550454) b!6158502))

(assert (= (and b!6158497 (not res!2550456)) b!6158499))

(assert (= (and b!6158499 res!2550457) b!6158495))

(assert (= (and b!6158495 (not res!2550460)) b!6158493))

(assert (= (and b!6158493 (not res!2550455)) b!6158496))

(assert (= (or b!6158505 b!6158492 b!6158495) bm!512704))

(assert (=> bm!512704 m!6996150))

(declare-fun m!6996772 () Bool)

(assert (=> b!6158504 m!6996772))

(assert (=> b!6158498 m!6996154))

(assert (=> b!6158498 m!6996154))

(declare-fun m!6996774 () Bool)

(assert (=> b!6158498 m!6996774))

(assert (=> b!6158498 m!6996158))

(assert (=> b!6158498 m!6996774))

(assert (=> b!6158498 m!6996158))

(declare-fun m!6996776 () Bool)

(assert (=> b!6158498 m!6996776))

(assert (=> b!6158502 m!6996154))

(assert (=> d!1929664 m!6996150))

(declare-fun m!6996778 () Bool)

(assert (=> d!1929664 m!6996778))

(assert (=> b!6158494 m!6996158))

(assert (=> b!6158494 m!6996158))

(assert (=> b!6158494 m!6996310))

(assert (=> b!6158493 m!6996158))

(assert (=> b!6158493 m!6996158))

(assert (=> b!6158493 m!6996310))

(assert (=> b!6158496 m!6996154))

(assert (=> b!6157701 d!1929664))

(assert (=> d!1929390 d!1929624))

(declare-fun d!1929666 () Bool)

(assert (=> d!1929666 true))

(declare-fun setRes!41728 () Bool)

(assert (=> d!1929666 setRes!41728))

(declare-fun condSetEmpty!41728 () Bool)

(declare-fun res!2550461 () (Set Context!10968))

(assert (=> d!1929666 (= condSetEmpty!41728 (= res!2550461 (as set.empty (Set Context!10968))))))

(assert (=> d!1929666 (= (choose!45782 z!1189 lambda!335934) res!2550461)))

(declare-fun setIsEmpty!41728 () Bool)

(assert (=> setIsEmpty!41728 setRes!41728))

(declare-fun setElem!41728 () Context!10968)

(declare-fun e!3752270 () Bool)

(declare-fun setNonEmpty!41728 () Bool)

(declare-fun tp!1719713 () Bool)

(assert (=> setNonEmpty!41728 (= setRes!41728 (and tp!1719713 (inv!83498 setElem!41728) e!3752270))))

(declare-fun setRest!41728 () (Set Context!10968))

(assert (=> setNonEmpty!41728 (= res!2550461 (set.union (set.insert setElem!41728 (as set.empty (Set Context!10968))) setRest!41728))))

(declare-fun b!6158506 () Bool)

(declare-fun tp!1719714 () Bool)

(assert (=> b!6158506 (= e!3752270 tp!1719714)))

(assert (= (and d!1929666 condSetEmpty!41728) setIsEmpty!41728))

(assert (= (and d!1929666 (not condSetEmpty!41728)) setNonEmpty!41728))

(assert (= setNonEmpty!41728 b!6158506))

(declare-fun m!6996780 () Bool)

(assert (=> setNonEmpty!41728 m!6996780))

(assert (=> d!1929452 d!1929666))

(assert (=> bs!1526200 d!1929476))

(declare-fun bs!1526267 () Bool)

(declare-fun d!1929668 () Bool)

(assert (= bs!1526267 (and d!1929668 d!1929608)))

(declare-fun lambda!336017 () Int)

(assert (=> bs!1526267 (= lambda!336017 lambda!336010)))

(declare-fun bs!1526268 () Bool)

(assert (= bs!1526268 (and d!1929668 d!1929610)))

(assert (=> bs!1526268 (= lambda!336017 lambda!336011)))

(declare-fun bs!1526269 () Bool)

(assert (= bs!1526269 (and d!1929668 d!1929648)))

(assert (=> bs!1526269 (= lambda!336017 lambda!336016)))

(assert (=> d!1929668 (= (nullableZipper!1881 lt!2335341) (exists!2445 lt!2335341 lambda!336017))))

(declare-fun bs!1526270 () Bool)

(assert (= bs!1526270 d!1929668))

(declare-fun m!6996782 () Bool)

(assert (=> bs!1526270 m!6996782))

(assert (=> b!6157915 d!1929668))

(assert (=> d!1929444 d!1929446))

(assert (=> d!1929444 d!1929404))

(declare-fun d!1929670 () Bool)

(declare-fun e!3752273 () Bool)

(assert (=> d!1929670 (= (matchZipper!2112 (set.union lt!2335342 lt!2335358) (t!378093 s!2326)) e!3752273)))

(declare-fun res!2550464 () Bool)

(assert (=> d!1929670 (=> res!2550464 e!3752273)))

(assert (=> d!1929670 (= res!2550464 (matchZipper!2112 lt!2335342 (t!378093 s!2326)))))

(assert (=> d!1929670 true))

(declare-fun _$48!1719 () Unit!157579)

(assert (=> d!1929670 (= (choose!45776 lt!2335342 lt!2335358 (t!378093 s!2326)) _$48!1719)))

(declare-fun b!6158509 () Bool)

(assert (=> b!6158509 (= e!3752273 (matchZipper!2112 lt!2335358 (t!378093 s!2326)))))

(assert (= (and d!1929670 (not res!2550464)) b!6158509))

(assert (=> d!1929670 m!6995972))

(assert (=> d!1929670 m!6995926))

(assert (=> b!6158509 m!6995962))

(assert (=> d!1929444 d!1929670))

(declare-fun d!1929672 () Bool)

(declare-fun c!1108948 () Bool)

(assert (=> d!1929672 (= c!1108948 (isEmpty!36446 (tail!11807 (t!378093 s!2326))))))

(declare-fun e!3752274 () Bool)

(assert (=> d!1929672 (= (matchZipper!2112 (derivationStepZipper!2073 lt!2335358 (head!12722 (t!378093 s!2326))) (tail!11807 (t!378093 s!2326))) e!3752274)))

(declare-fun b!6158510 () Bool)

(assert (=> b!6158510 (= e!3752274 (nullableZipper!1881 (derivationStepZipper!2073 lt!2335358 (head!12722 (t!378093 s!2326)))))))

(declare-fun b!6158511 () Bool)

(assert (=> b!6158511 (= e!3752274 (matchZipper!2112 (derivationStepZipper!2073 (derivationStepZipper!2073 lt!2335358 (head!12722 (t!378093 s!2326))) (head!12722 (tail!11807 (t!378093 s!2326)))) (tail!11807 (tail!11807 (t!378093 s!2326)))))))

(assert (= (and d!1929672 c!1108948) b!6158510))

(assert (= (and d!1929672 (not c!1108948)) b!6158511))

(assert (=> d!1929672 m!6996178))

(assert (=> d!1929672 m!6996710))

(assert (=> b!6158510 m!6996274))

(declare-fun m!6996784 () Bool)

(assert (=> b!6158510 m!6996784))

(assert (=> b!6158511 m!6996178))

(assert (=> b!6158511 m!6996714))

(assert (=> b!6158511 m!6996274))

(assert (=> b!6158511 m!6996714))

(declare-fun m!6996786 () Bool)

(assert (=> b!6158511 m!6996786))

(assert (=> b!6158511 m!6996178))

(assert (=> b!6158511 m!6996718))

(assert (=> b!6158511 m!6996786))

(assert (=> b!6158511 m!6996718))

(declare-fun m!6996788 () Bool)

(assert (=> b!6158511 m!6996788))

(assert (=> b!6157760 d!1929672))

(declare-fun bs!1526271 () Bool)

(declare-fun d!1929674 () Bool)

(assert (= bs!1526271 (and d!1929674 b!6157462)))

(declare-fun lambda!336018 () Int)

(assert (=> bs!1526271 (= (= (head!12722 (t!378093 s!2326)) (h!70923 s!2326)) (= lambda!336018 lambda!335934))))

(declare-fun bs!1526272 () Bool)

(assert (= bs!1526272 (and d!1929674 d!1929614)))

(assert (=> bs!1526272 (= lambda!336018 lambda!336014)))

(assert (=> d!1929674 true))

(assert (=> d!1929674 (= (derivationStepZipper!2073 lt!2335358 (head!12722 (t!378093 s!2326))) (flatMap!1605 lt!2335358 lambda!336018))))

(declare-fun bs!1526273 () Bool)

(assert (= bs!1526273 d!1929674))

(declare-fun m!6996790 () Bool)

(assert (=> bs!1526273 m!6996790))

(assert (=> b!6157760 d!1929674))

(assert (=> b!6157760 d!1929616))

(assert (=> b!6157760 d!1929618))

(declare-fun d!1929676 () Bool)

(declare-fun c!1108949 () Bool)

(assert (=> d!1929676 (= c!1108949 (isEmpty!36446 (tail!11807 (t!378093 s!2326))))))

(declare-fun e!3752275 () Bool)

(assert (=> d!1929676 (= (matchZipper!2112 (derivationStepZipper!2073 lt!2335337 (head!12722 (t!378093 s!2326))) (tail!11807 (t!378093 s!2326))) e!3752275)))

(declare-fun b!6158512 () Bool)

(assert (=> b!6158512 (= e!3752275 (nullableZipper!1881 (derivationStepZipper!2073 lt!2335337 (head!12722 (t!378093 s!2326)))))))

(declare-fun b!6158513 () Bool)

(assert (=> b!6158513 (= e!3752275 (matchZipper!2112 (derivationStepZipper!2073 (derivationStepZipper!2073 lt!2335337 (head!12722 (t!378093 s!2326))) (head!12722 (tail!11807 (t!378093 s!2326)))) (tail!11807 (tail!11807 (t!378093 s!2326)))))))

(assert (= (and d!1929676 c!1108949) b!6158512))

(assert (= (and d!1929676 (not c!1108949)) b!6158513))

(assert (=> d!1929676 m!6996178))

(assert (=> d!1929676 m!6996710))

(assert (=> b!6158512 m!6996192))

(declare-fun m!6996792 () Bool)

(assert (=> b!6158512 m!6996792))

(assert (=> b!6158513 m!6996178))

(assert (=> b!6158513 m!6996714))

(assert (=> b!6158513 m!6996192))

(assert (=> b!6158513 m!6996714))

(declare-fun m!6996794 () Bool)

(assert (=> b!6158513 m!6996794))

(assert (=> b!6158513 m!6996178))

(assert (=> b!6158513 m!6996718))

(assert (=> b!6158513 m!6996794))

(assert (=> b!6158513 m!6996718))

(declare-fun m!6996796 () Bool)

(assert (=> b!6158513 m!6996796))

(assert (=> b!6157667 d!1929676))

(declare-fun bs!1526274 () Bool)

(declare-fun d!1929678 () Bool)

(assert (= bs!1526274 (and d!1929678 b!6157462)))

(declare-fun lambda!336019 () Int)

(assert (=> bs!1526274 (= (= (head!12722 (t!378093 s!2326)) (h!70923 s!2326)) (= lambda!336019 lambda!335934))))

(declare-fun bs!1526275 () Bool)

(assert (= bs!1526275 (and d!1929678 d!1929614)))

(assert (=> bs!1526275 (= lambda!336019 lambda!336014)))

(declare-fun bs!1526276 () Bool)

(assert (= bs!1526276 (and d!1929678 d!1929674)))

(assert (=> bs!1526276 (= lambda!336019 lambda!336018)))

(assert (=> d!1929678 true))

(assert (=> d!1929678 (= (derivationStepZipper!2073 lt!2335337 (head!12722 (t!378093 s!2326))) (flatMap!1605 lt!2335337 lambda!336019))))

(declare-fun bs!1526277 () Bool)

(assert (= bs!1526277 d!1929678))

(declare-fun m!6996798 () Bool)

(assert (=> bs!1526277 m!6996798))

(assert (=> b!6157667 d!1929678))

(assert (=> b!6157667 d!1929616))

(assert (=> b!6157667 d!1929618))

(declare-fun d!1929680 () Bool)

(assert (=> d!1929680 (= (isDefined!12694 lt!2335473) (not (isEmpty!36447 lt!2335473)))))

(declare-fun bs!1526278 () Bool)

(assert (= bs!1526278 d!1929680))

(declare-fun m!6996800 () Bool)

(assert (=> bs!1526278 m!6996800))

(assert (=> d!1929412 d!1929680))

(declare-fun b!6158514 () Bool)

(declare-fun res!2550471 () Bool)

(declare-fun e!3752281 () Bool)

(assert (=> b!6158514 (=> (not res!2550471) (not e!3752281))))

(declare-fun call!512710 () Bool)

(assert (=> b!6158514 (= res!2550471 (not call!512710))))

(declare-fun b!6158515 () Bool)

(declare-fun res!2550467 () Bool)

(declare-fun e!3752277 () Bool)

(assert (=> b!6158515 (=> res!2550467 e!3752277)))

(assert (=> b!6158515 (= res!2550467 (not (isEmpty!36446 (tail!11807 Nil!64475))))))

(declare-fun b!6158516 () Bool)

(declare-fun res!2550466 () Bool)

(assert (=> b!6158516 (=> (not res!2550466) (not e!3752281))))

(assert (=> b!6158516 (= res!2550466 (isEmpty!36446 (tail!11807 Nil!64475)))))

(declare-fun bm!512705 () Bool)

(assert (=> bm!512705 (= call!512710 (isEmpty!36446 Nil!64475))))

(declare-fun b!6158517 () Bool)

(declare-fun e!3752279 () Bool)

(assert (=> b!6158517 (= e!3752279 e!3752277)))

(declare-fun res!2550472 () Bool)

(assert (=> b!6158517 (=> res!2550472 e!3752277)))

(assert (=> b!6158517 (= res!2550472 call!512710)))

(declare-fun b!6158518 () Bool)

(assert (=> b!6158518 (= e!3752277 (not (= (head!12722 Nil!64475) (c!1108675 (regOne!32712 r!7292)))))))

(declare-fun d!1929682 () Bool)

(declare-fun e!3752280 () Bool)

(assert (=> d!1929682 e!3752280))

(declare-fun c!1108951 () Bool)

(assert (=> d!1929682 (= c!1108951 (is-EmptyExpr!16100 (regOne!32712 r!7292)))))

(declare-fun lt!2335552 () Bool)

(declare-fun e!3752276 () Bool)

(assert (=> d!1929682 (= lt!2335552 e!3752276)))

(declare-fun c!1108950 () Bool)

(assert (=> d!1929682 (= c!1108950 (isEmpty!36446 Nil!64475))))

(assert (=> d!1929682 (validRegex!7836 (regOne!32712 r!7292))))

(assert (=> d!1929682 (= (matchR!8283 (regOne!32712 r!7292) Nil!64475) lt!2335552)))

(declare-fun b!6158519 () Bool)

(declare-fun res!2550468 () Bool)

(declare-fun e!3752282 () Bool)

(assert (=> b!6158519 (=> res!2550468 e!3752282)))

(assert (=> b!6158519 (= res!2550468 e!3752281)))

(declare-fun res!2550465 () Bool)

(assert (=> b!6158519 (=> (not res!2550465) (not e!3752281))))

(assert (=> b!6158519 (= res!2550465 lt!2335552)))

(declare-fun b!6158520 () Bool)

(assert (=> b!6158520 (= e!3752276 (matchR!8283 (derivativeStep!4820 (regOne!32712 r!7292) (head!12722 Nil!64475)) (tail!11807 Nil!64475)))))

(declare-fun b!6158521 () Bool)

(assert (=> b!6158521 (= e!3752282 e!3752279)))

(declare-fun res!2550469 () Bool)

(assert (=> b!6158521 (=> (not res!2550469) (not e!3752279))))

(assert (=> b!6158521 (= res!2550469 (not lt!2335552))))

(declare-fun b!6158522 () Bool)

(declare-fun res!2550470 () Bool)

(assert (=> b!6158522 (=> res!2550470 e!3752282)))

(assert (=> b!6158522 (= res!2550470 (not (is-ElementMatch!16100 (regOne!32712 r!7292))))))

(declare-fun e!3752278 () Bool)

(assert (=> b!6158522 (= e!3752278 e!3752282)))

(declare-fun b!6158523 () Bool)

(assert (=> b!6158523 (= e!3752280 e!3752278)))

(declare-fun c!1108952 () Bool)

(assert (=> b!6158523 (= c!1108952 (is-EmptyLang!16100 (regOne!32712 r!7292)))))

(declare-fun b!6158524 () Bool)

(assert (=> b!6158524 (= e!3752281 (= (head!12722 Nil!64475) (c!1108675 (regOne!32712 r!7292))))))

(declare-fun b!6158525 () Bool)

(assert (=> b!6158525 (= e!3752278 (not lt!2335552))))

(declare-fun b!6158526 () Bool)

(assert (=> b!6158526 (= e!3752276 (nullable!6093 (regOne!32712 r!7292)))))

(declare-fun b!6158527 () Bool)

(assert (=> b!6158527 (= e!3752280 (= lt!2335552 call!512710))))

(assert (= (and d!1929682 c!1108950) b!6158526))

(assert (= (and d!1929682 (not c!1108950)) b!6158520))

(assert (= (and d!1929682 c!1108951) b!6158527))

(assert (= (and d!1929682 (not c!1108951)) b!6158523))

(assert (= (and b!6158523 c!1108952) b!6158525))

(assert (= (and b!6158523 (not c!1108952)) b!6158522))

(assert (= (and b!6158522 (not res!2550470)) b!6158519))

(assert (= (and b!6158519 res!2550465) b!6158514))

(assert (= (and b!6158514 res!2550471) b!6158516))

(assert (= (and b!6158516 res!2550466) b!6158524))

(assert (= (and b!6158519 (not res!2550468)) b!6158521))

(assert (= (and b!6158521 res!2550469) b!6158517))

(assert (= (and b!6158517 (not res!2550472)) b!6158515))

(assert (= (and b!6158515 (not res!2550467)) b!6158518))

(assert (= (or b!6158527 b!6158514 b!6158517) bm!512705))

(declare-fun m!6996802 () Bool)

(assert (=> bm!512705 m!6996802))

(assert (=> b!6158526 m!6996764))

(declare-fun m!6996804 () Bool)

(assert (=> b!6158520 m!6996804))

(assert (=> b!6158520 m!6996804))

(declare-fun m!6996806 () Bool)

(assert (=> b!6158520 m!6996806))

(declare-fun m!6996808 () Bool)

(assert (=> b!6158520 m!6996808))

(assert (=> b!6158520 m!6996806))

(assert (=> b!6158520 m!6996808))

(declare-fun m!6996810 () Bool)

(assert (=> b!6158520 m!6996810))

(assert (=> b!6158524 m!6996804))

(assert (=> d!1929682 m!6996802))

(assert (=> d!1929682 m!6996234))

(assert (=> b!6158516 m!6996808))

(assert (=> b!6158516 m!6996808))

(declare-fun m!6996812 () Bool)

(assert (=> b!6158516 m!6996812))

(assert (=> b!6158515 m!6996808))

(assert (=> b!6158515 m!6996808))

(assert (=> b!6158515 m!6996812))

(assert (=> b!6158518 m!6996804))

(assert (=> d!1929412 d!1929682))

(declare-fun bm!512706 () Bool)

(declare-fun call!512711 () Bool)

(declare-fun call!512712 () Bool)

(assert (=> bm!512706 (= call!512711 call!512712)))

(declare-fun c!1108953 () Bool)

(declare-fun bm!512707 () Bool)

(declare-fun c!1108954 () Bool)

(assert (=> bm!512707 (= call!512712 (validRegex!7836 (ite c!1108954 (reg!16429 (regOne!32712 r!7292)) (ite c!1108953 (regTwo!32713 (regOne!32712 r!7292)) (regTwo!32712 (regOne!32712 r!7292))))))))

(declare-fun b!6158528 () Bool)

(declare-fun e!3752287 () Bool)

(assert (=> b!6158528 (= e!3752287 call!512712)))

(declare-fun b!6158529 () Bool)

(declare-fun e!3752285 () Bool)

(declare-fun e!3752288 () Bool)

(assert (=> b!6158529 (= e!3752285 e!3752288)))

(assert (=> b!6158529 (= c!1108953 (is-Union!16100 (regOne!32712 r!7292)))))

(declare-fun b!6158530 () Bool)

(declare-fun res!2550475 () Bool)

(declare-fun e!3752286 () Bool)

(assert (=> b!6158530 (=> res!2550475 e!3752286)))

(assert (=> b!6158530 (= res!2550475 (not (is-Concat!24945 (regOne!32712 r!7292))))))

(assert (=> b!6158530 (= e!3752288 e!3752286)))

(declare-fun b!6158531 () Bool)

(declare-fun e!3752283 () Bool)

(assert (=> b!6158531 (= e!3752283 call!512711)))

(declare-fun bm!512708 () Bool)

(declare-fun call!512713 () Bool)

(assert (=> bm!512708 (= call!512713 (validRegex!7836 (ite c!1108953 (regOne!32713 (regOne!32712 r!7292)) (regOne!32712 (regOne!32712 r!7292)))))))

(declare-fun b!6158532 () Bool)

(assert (=> b!6158532 (= e!3752285 e!3752287)))

(declare-fun res!2550476 () Bool)

(assert (=> b!6158532 (= res!2550476 (not (nullable!6093 (reg!16429 (regOne!32712 r!7292)))))))

(assert (=> b!6158532 (=> (not res!2550476) (not e!3752287))))

(declare-fun b!6158533 () Bool)

(declare-fun e!3752289 () Bool)

(assert (=> b!6158533 (= e!3752286 e!3752289)))

(declare-fun res!2550474 () Bool)

(assert (=> b!6158533 (=> (not res!2550474) (not e!3752289))))

(assert (=> b!6158533 (= res!2550474 call!512713)))

(declare-fun b!6158534 () Bool)

(declare-fun e!3752284 () Bool)

(assert (=> b!6158534 (= e!3752284 e!3752285)))

(assert (=> b!6158534 (= c!1108954 (is-Star!16100 (regOne!32712 r!7292)))))

(declare-fun d!1929684 () Bool)

(declare-fun res!2550477 () Bool)

(assert (=> d!1929684 (=> res!2550477 e!3752284)))

(assert (=> d!1929684 (= res!2550477 (is-ElementMatch!16100 (regOne!32712 r!7292)))))

(assert (=> d!1929684 (= (validRegex!7836 (regOne!32712 r!7292)) e!3752284)))

(declare-fun b!6158535 () Bool)

(assert (=> b!6158535 (= e!3752289 call!512711)))

(declare-fun b!6158536 () Bool)

(declare-fun res!2550473 () Bool)

(assert (=> b!6158536 (=> (not res!2550473) (not e!3752283))))

(assert (=> b!6158536 (= res!2550473 call!512713)))

(assert (=> b!6158536 (= e!3752288 e!3752283)))

(assert (= (and d!1929684 (not res!2550477)) b!6158534))

(assert (= (and b!6158534 c!1108954) b!6158532))

(assert (= (and b!6158534 (not c!1108954)) b!6158529))

(assert (= (and b!6158532 res!2550476) b!6158528))

(assert (= (and b!6158529 c!1108953) b!6158536))

(assert (= (and b!6158529 (not c!1108953)) b!6158530))

(assert (= (and b!6158536 res!2550473) b!6158531))

(assert (= (and b!6158530 (not res!2550475)) b!6158533))

(assert (= (and b!6158533 res!2550474) b!6158535))

(assert (= (or b!6158531 b!6158535) bm!512706))

(assert (= (or b!6158536 b!6158533) bm!512708))

(assert (= (or b!6158528 bm!512706) bm!512707))

(declare-fun m!6996814 () Bool)

(assert (=> bm!512707 m!6996814))

(declare-fun m!6996816 () Bool)

(assert (=> bm!512708 m!6996816))

(declare-fun m!6996818 () Bool)

(assert (=> b!6158532 m!6996818))

(assert (=> d!1929412 d!1929684))

(assert (=> d!1929468 d!1929472))

(declare-fun d!1929686 () Bool)

(assert (=> d!1929686 (= (flatMap!1605 lt!2335352 lambda!335934) (dynLambda!25420 lambda!335934 lt!2335344))))

(assert (=> d!1929686 true))

(declare-fun _$13!3097 () Unit!157579)

(assert (=> d!1929686 (= (choose!45781 lt!2335352 lt!2335344 lambda!335934) _$13!3097)))

(declare-fun b_lambda!234423 () Bool)

(assert (=> (not b_lambda!234423) (not d!1929686)))

(declare-fun bs!1526279 () Bool)

(assert (= bs!1526279 d!1929686))

(assert (=> bs!1526279 m!6995956))

(assert (=> bs!1526279 m!6996364))

(assert (=> d!1929468 d!1929686))

(declare-fun b!6158537 () Bool)

(declare-fun e!3752292 () (Set Context!10968))

(declare-fun call!512714 () (Set Context!10968))

(assert (=> b!6158537 (= e!3752292 (set.union call!512714 (derivationStepZipperUp!1274 (Context!10969 (t!378094 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335359)))))) (h!70923 s!2326))))))

(declare-fun d!1929688 () Bool)

(declare-fun c!1108956 () Bool)

(declare-fun e!3752291 () Bool)

(assert (=> d!1929688 (= c!1108956 e!3752291)))

(declare-fun res!2550478 () Bool)

(assert (=> d!1929688 (=> (not res!2550478) (not e!3752291))))

(assert (=> d!1929688 (= res!2550478 (is-Cons!64476 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335359))))))))

(assert (=> d!1929688 (= (derivationStepZipperUp!1274 (Context!10969 (t!378094 (exprs!5984 lt!2335359))) (h!70923 s!2326)) e!3752292)))

(declare-fun b!6158538 () Bool)

(assert (=> b!6158538 (= e!3752291 (nullable!6093 (h!70924 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335359)))))))))

(declare-fun b!6158539 () Bool)

(declare-fun e!3752290 () (Set Context!10968))

(assert (=> b!6158539 (= e!3752290 (as set.empty (Set Context!10968)))))

(declare-fun b!6158540 () Bool)

(assert (=> b!6158540 (= e!3752290 call!512714)))

(declare-fun b!6158541 () Bool)

(assert (=> b!6158541 (= e!3752292 e!3752290)))

(declare-fun c!1108955 () Bool)

(assert (=> b!6158541 (= c!1108955 (is-Cons!64476 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335359))))))))

(declare-fun bm!512709 () Bool)

(assert (=> bm!512709 (= call!512714 (derivationStepZipperDown!1348 (h!70924 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335359))))) (Context!10969 (t!378094 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335359)))))) (h!70923 s!2326)))))

(assert (= (and d!1929688 res!2550478) b!6158538))

(assert (= (and d!1929688 c!1108956) b!6158537))

(assert (= (and d!1929688 (not c!1108956)) b!6158541))

(assert (= (and b!6158541 c!1108955) b!6158540))

(assert (= (and b!6158541 (not c!1108955)) b!6158539))

(assert (= (or b!6158537 b!6158540) bm!512709))

(declare-fun m!6996820 () Bool)

(assert (=> b!6158537 m!6996820))

(declare-fun m!6996822 () Bool)

(assert (=> b!6158538 m!6996822))

(declare-fun m!6996824 () Bool)

(assert (=> bm!512709 m!6996824))

(assert (=> b!6157922 d!1929688))

(declare-fun d!1929690 () Bool)

(assert (=> d!1929690 (= (isEmptyLang!1527 lt!2335455) (is-EmptyLang!16100 lt!2335455))))

(assert (=> b!6157642 d!1929690))

(declare-fun bs!1526280 () Bool)

(declare-fun d!1929692 () Bool)

(assert (= bs!1526280 (and d!1929692 d!1929608)))

(declare-fun lambda!336020 () Int)

(assert (=> bs!1526280 (= lambda!336020 lambda!336010)))

(declare-fun bs!1526281 () Bool)

(assert (= bs!1526281 (and d!1929692 d!1929610)))

(assert (=> bs!1526281 (= lambda!336020 lambda!336011)))

(declare-fun bs!1526282 () Bool)

(assert (= bs!1526282 (and d!1929692 d!1929648)))

(assert (=> bs!1526282 (= lambda!336020 lambda!336016)))

(declare-fun bs!1526283 () Bool)

(assert (= bs!1526283 (and d!1929692 d!1929668)))

(assert (=> bs!1526283 (= lambda!336020 lambda!336017)))

(assert (=> d!1929692 (= (nullableZipper!1881 z!1189) (exists!2445 z!1189 lambda!336020))))

(declare-fun bs!1526284 () Bool)

(assert (= bs!1526284 d!1929692))

(declare-fun m!6996826 () Bool)

(assert (=> bs!1526284 m!6996826))

(assert (=> b!6157927 d!1929692))

(declare-fun b!6158542 () Bool)

(declare-fun e!3752295 () (Set Context!10968))

(declare-fun call!512715 () (Set Context!10968))

(assert (=> b!6158542 (= e!3752295 (set.union call!512715 (derivationStepZipperUp!1274 (Context!10969 (t!378094 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335344)))))) (h!70923 s!2326))))))

(declare-fun d!1929694 () Bool)

(declare-fun c!1108958 () Bool)

(declare-fun e!3752294 () Bool)

(assert (=> d!1929694 (= c!1108958 e!3752294)))

(declare-fun res!2550479 () Bool)

(assert (=> d!1929694 (=> (not res!2550479) (not e!3752294))))

(assert (=> d!1929694 (= res!2550479 (is-Cons!64476 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335344))))))))

(assert (=> d!1929694 (= (derivationStepZipperUp!1274 (Context!10969 (t!378094 (exprs!5984 lt!2335344))) (h!70923 s!2326)) e!3752295)))

(declare-fun b!6158543 () Bool)

(assert (=> b!6158543 (= e!3752294 (nullable!6093 (h!70924 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335344)))))))))

(declare-fun b!6158544 () Bool)

(declare-fun e!3752293 () (Set Context!10968))

(assert (=> b!6158544 (= e!3752293 (as set.empty (Set Context!10968)))))

(declare-fun b!6158545 () Bool)

(assert (=> b!6158545 (= e!3752293 call!512715)))

(declare-fun b!6158546 () Bool)

(assert (=> b!6158546 (= e!3752295 e!3752293)))

(declare-fun c!1108957 () Bool)

(assert (=> b!6158546 (= c!1108957 (is-Cons!64476 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335344))))))))

(declare-fun bm!512710 () Bool)

(assert (=> bm!512710 (= call!512715 (derivationStepZipperDown!1348 (h!70924 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335344))))) (Context!10969 (t!378094 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335344)))))) (h!70923 s!2326)))))

(assert (= (and d!1929694 res!2550479) b!6158543))

(assert (= (and d!1929694 c!1108958) b!6158542))

(assert (= (and d!1929694 (not c!1108958)) b!6158546))

(assert (= (and b!6158546 c!1108957) b!6158545))

(assert (= (and b!6158546 (not c!1108957)) b!6158544))

(assert (= (or b!6158542 b!6158545) bm!512710))

(declare-fun m!6996828 () Bool)

(assert (=> b!6158542 m!6996828))

(declare-fun m!6996830 () Bool)

(assert (=> b!6158543 m!6996830))

(declare-fun m!6996832 () Bool)

(assert (=> bm!512710 m!6996832))

(assert (=> b!6157917 d!1929694))

(declare-fun d!1929696 () Bool)

(assert (=> d!1929696 (= (head!12721 (unfocusZipperList!1521 zl!343)) (h!70924 (unfocusZipperList!1521 zl!343)))))

(assert (=> b!6157646 d!1929696))

(declare-fun b!6158547 () Bool)

(declare-fun res!2550486 () Bool)

(declare-fun e!3752301 () Bool)

(assert (=> b!6158547 (=> (not res!2550486) (not e!3752301))))

(declare-fun call!512716 () Bool)

(assert (=> b!6158547 (= res!2550486 (not call!512716))))

(declare-fun b!6158548 () Bool)

(declare-fun res!2550482 () Bool)

(declare-fun e!3752297 () Bool)

(assert (=> b!6158548 (=> res!2550482 e!3752297)))

(assert (=> b!6158548 (= res!2550482 (not (isEmpty!36446 (tail!11807 (_1!36382 (get!22252 lt!2335473))))))))

(declare-fun b!6158549 () Bool)

(declare-fun res!2550481 () Bool)

(assert (=> b!6158549 (=> (not res!2550481) (not e!3752301))))

(assert (=> b!6158549 (= res!2550481 (isEmpty!36446 (tail!11807 (_1!36382 (get!22252 lt!2335473)))))))

(declare-fun bm!512711 () Bool)

(assert (=> bm!512711 (= call!512716 (isEmpty!36446 (_1!36382 (get!22252 lt!2335473))))))

(declare-fun b!6158550 () Bool)

(declare-fun e!3752299 () Bool)

(assert (=> b!6158550 (= e!3752299 e!3752297)))

(declare-fun res!2550487 () Bool)

(assert (=> b!6158550 (=> res!2550487 e!3752297)))

(assert (=> b!6158550 (= res!2550487 call!512716)))

(declare-fun b!6158551 () Bool)

(assert (=> b!6158551 (= e!3752297 (not (= (head!12722 (_1!36382 (get!22252 lt!2335473))) (c!1108675 (regOne!32712 r!7292)))))))

(declare-fun d!1929698 () Bool)

(declare-fun e!3752300 () Bool)

(assert (=> d!1929698 e!3752300))

(declare-fun c!1108960 () Bool)

(assert (=> d!1929698 (= c!1108960 (is-EmptyExpr!16100 (regOne!32712 r!7292)))))

(declare-fun lt!2335553 () Bool)

(declare-fun e!3752296 () Bool)

(assert (=> d!1929698 (= lt!2335553 e!3752296)))

(declare-fun c!1108959 () Bool)

(assert (=> d!1929698 (= c!1108959 (isEmpty!36446 (_1!36382 (get!22252 lt!2335473))))))

(assert (=> d!1929698 (validRegex!7836 (regOne!32712 r!7292))))

(assert (=> d!1929698 (= (matchR!8283 (regOne!32712 r!7292) (_1!36382 (get!22252 lt!2335473))) lt!2335553)))

(declare-fun b!6158552 () Bool)

(declare-fun res!2550483 () Bool)

(declare-fun e!3752302 () Bool)

(assert (=> b!6158552 (=> res!2550483 e!3752302)))

(assert (=> b!6158552 (= res!2550483 e!3752301)))

(declare-fun res!2550480 () Bool)

(assert (=> b!6158552 (=> (not res!2550480) (not e!3752301))))

(assert (=> b!6158552 (= res!2550480 lt!2335553)))

(declare-fun b!6158553 () Bool)

(assert (=> b!6158553 (= e!3752296 (matchR!8283 (derivativeStep!4820 (regOne!32712 r!7292) (head!12722 (_1!36382 (get!22252 lt!2335473)))) (tail!11807 (_1!36382 (get!22252 lt!2335473)))))))

(declare-fun b!6158554 () Bool)

(assert (=> b!6158554 (= e!3752302 e!3752299)))

(declare-fun res!2550484 () Bool)

(assert (=> b!6158554 (=> (not res!2550484) (not e!3752299))))

(assert (=> b!6158554 (= res!2550484 (not lt!2335553))))

(declare-fun b!6158555 () Bool)

(declare-fun res!2550485 () Bool)

(assert (=> b!6158555 (=> res!2550485 e!3752302)))

(assert (=> b!6158555 (= res!2550485 (not (is-ElementMatch!16100 (regOne!32712 r!7292))))))

(declare-fun e!3752298 () Bool)

(assert (=> b!6158555 (= e!3752298 e!3752302)))

(declare-fun b!6158556 () Bool)

(assert (=> b!6158556 (= e!3752300 e!3752298)))

(declare-fun c!1108961 () Bool)

(assert (=> b!6158556 (= c!1108961 (is-EmptyLang!16100 (regOne!32712 r!7292)))))

(declare-fun b!6158557 () Bool)

(assert (=> b!6158557 (= e!3752301 (= (head!12722 (_1!36382 (get!22252 lt!2335473))) (c!1108675 (regOne!32712 r!7292))))))

(declare-fun b!6158558 () Bool)

(assert (=> b!6158558 (= e!3752298 (not lt!2335553))))

(declare-fun b!6158559 () Bool)

(assert (=> b!6158559 (= e!3752296 (nullable!6093 (regOne!32712 r!7292)))))

(declare-fun b!6158560 () Bool)

(assert (=> b!6158560 (= e!3752300 (= lt!2335553 call!512716))))

(assert (= (and d!1929698 c!1108959) b!6158559))

(assert (= (and d!1929698 (not c!1108959)) b!6158553))

(assert (= (and d!1929698 c!1108960) b!6158560))

(assert (= (and d!1929698 (not c!1108960)) b!6158556))

(assert (= (and b!6158556 c!1108961) b!6158558))

(assert (= (and b!6158556 (not c!1108961)) b!6158555))

(assert (= (and b!6158555 (not res!2550485)) b!6158552))

(assert (= (and b!6158552 res!2550480) b!6158547))

(assert (= (and b!6158547 res!2550486) b!6158549))

(assert (= (and b!6158549 res!2550481) b!6158557))

(assert (= (and b!6158552 (not res!2550483)) b!6158554))

(assert (= (and b!6158554 res!2550484) b!6158550))

(assert (= (and b!6158550 (not res!2550487)) b!6158548))

(assert (= (and b!6158548 (not res!2550482)) b!6158551))

(assert (= (or b!6158560 b!6158547 b!6158550) bm!512711))

(declare-fun m!6996834 () Bool)

(assert (=> bm!512711 m!6996834))

(assert (=> b!6158559 m!6996764))

(declare-fun m!6996836 () Bool)

(assert (=> b!6158553 m!6996836))

(assert (=> b!6158553 m!6996836))

(declare-fun m!6996838 () Bool)

(assert (=> b!6158553 m!6996838))

(declare-fun m!6996840 () Bool)

(assert (=> b!6158553 m!6996840))

(assert (=> b!6158553 m!6996838))

(assert (=> b!6158553 m!6996840))

(declare-fun m!6996842 () Bool)

(assert (=> b!6158553 m!6996842))

(assert (=> b!6158557 m!6996836))

(assert (=> d!1929698 m!6996834))

(assert (=> d!1929698 m!6996234))

(assert (=> b!6158549 m!6996840))

(assert (=> b!6158549 m!6996840))

(declare-fun m!6996844 () Bool)

(assert (=> b!6158549 m!6996844))

(assert (=> b!6158548 m!6996840))

(assert (=> b!6158548 m!6996840))

(assert (=> b!6158548 m!6996844))

(assert (=> b!6158551 m!6996836))

(assert (=> b!6157694 d!1929698))

(declare-fun d!1929700 () Bool)

(assert (=> d!1929700 (= (get!22252 lt!2335473) (v!52129 lt!2335473))))

(assert (=> b!6157694 d!1929700))

(declare-fun d!1929702 () Bool)

(assert (=> d!1929702 true))

(assert (=> d!1929702 true))

(declare-fun res!2550490 () Bool)

(assert (=> d!1929702 (= (choose!45777 lambda!335933) res!2550490)))

(assert (=> d!1929416 d!1929702))

(assert (=> b!6157901 d!1929454))

(declare-fun bs!1526285 () Bool)

(declare-fun d!1929704 () Bool)

(assert (= bs!1526285 (and d!1929704 d!1929692)))

(declare-fun lambda!336021 () Int)

(assert (=> bs!1526285 (= lambda!336021 lambda!336020)))

(declare-fun bs!1526286 () Bool)

(assert (= bs!1526286 (and d!1929704 d!1929610)))

(assert (=> bs!1526286 (= lambda!336021 lambda!336011)))

(declare-fun bs!1526287 () Bool)

(assert (= bs!1526287 (and d!1929704 d!1929648)))

(assert (=> bs!1526287 (= lambda!336021 lambda!336016)))

(declare-fun bs!1526288 () Bool)

(assert (= bs!1526288 (and d!1929704 d!1929608)))

(assert (=> bs!1526288 (= lambda!336021 lambda!336010)))

(declare-fun bs!1526289 () Bool)

(assert (= bs!1526289 (and d!1929704 d!1929668)))

(assert (=> bs!1526289 (= lambda!336021 lambda!336017)))

(assert (=> d!1929704 (= (nullableZipper!1881 lt!2335350) (exists!2445 lt!2335350 lambda!336021))))

(declare-fun bs!1526290 () Bool)

(assert (= bs!1526290 d!1929704))

(declare-fun m!6996846 () Bool)

(assert (=> bs!1526290 m!6996846))

(assert (=> b!6157664 d!1929704))

(declare-fun d!1929706 () Bool)

(declare-fun res!2550491 () Bool)

(declare-fun e!3752303 () Bool)

(assert (=> d!1929706 (=> res!2550491 e!3752303)))

(assert (=> d!1929706 (= res!2550491 (is-Nil!64476 (exprs!5984 setElem!41715)))))

(assert (=> d!1929706 (= (forall!15221 (exprs!5984 setElem!41715) lambda!335969) e!3752303)))

(declare-fun b!6158561 () Bool)

(declare-fun e!3752304 () Bool)

(assert (=> b!6158561 (= e!3752303 e!3752304)))

(declare-fun res!2550492 () Bool)

(assert (=> b!6158561 (=> (not res!2550492) (not e!3752304))))

(assert (=> b!6158561 (= res!2550492 (dynLambda!25422 lambda!335969 (h!70924 (exprs!5984 setElem!41715))))))

(declare-fun b!6158562 () Bool)

(assert (=> b!6158562 (= e!3752304 (forall!15221 (t!378094 (exprs!5984 setElem!41715)) lambda!335969))))

(assert (= (and d!1929706 (not res!2550491)) b!6158561))

(assert (= (and b!6158561 res!2550492) b!6158562))

(declare-fun b_lambda!234425 () Bool)

(assert (=> (not b_lambda!234425) (not b!6158561)))

(declare-fun m!6996848 () Bool)

(assert (=> b!6158561 m!6996848))

(declare-fun m!6996850 () Bool)

(assert (=> b!6158562 m!6996850))

(assert (=> d!1929430 d!1929706))

(assert (=> d!1929464 d!1929480))

(declare-fun d!1929708 () Bool)

(assert (=> d!1929708 (= (flatMap!1605 lt!2335341 lambda!335934) (dynLambda!25420 lambda!335934 lt!2335359))))

(assert (=> d!1929708 true))

(declare-fun _$13!3098 () Unit!157579)

(assert (=> d!1929708 (= (choose!45781 lt!2335341 lt!2335359 lambda!335934) _$13!3098)))

(declare-fun b_lambda!234427 () Bool)

(assert (=> (not b_lambda!234427) (not d!1929708)))

(declare-fun bs!1526291 () Bool)

(assert (= bs!1526291 d!1929708))

(assert (=> bs!1526291 m!6995948))

(assert (=> bs!1526291 m!6996358))

(assert (=> d!1929464 d!1929708))

(assert (=> d!1929404 d!1929606))

(declare-fun bm!512712 () Bool)

(declare-fun call!512717 () Bool)

(declare-fun call!512718 () Bool)

(assert (=> bm!512712 (= call!512717 call!512718)))

(declare-fun bm!512713 () Bool)

(declare-fun c!1108962 () Bool)

(declare-fun c!1108963 () Bool)

(assert (=> bm!512713 (= call!512718 (validRegex!7836 (ite c!1108963 (reg!16429 lt!2335455) (ite c!1108962 (regTwo!32713 lt!2335455) (regTwo!32712 lt!2335455)))))))

(declare-fun b!6158563 () Bool)

(declare-fun e!3752309 () Bool)

(assert (=> b!6158563 (= e!3752309 call!512718)))

(declare-fun b!6158564 () Bool)

(declare-fun e!3752307 () Bool)

(declare-fun e!3752310 () Bool)

(assert (=> b!6158564 (= e!3752307 e!3752310)))

(assert (=> b!6158564 (= c!1108962 (is-Union!16100 lt!2335455))))

(declare-fun b!6158565 () Bool)

(declare-fun res!2550495 () Bool)

(declare-fun e!3752308 () Bool)

(assert (=> b!6158565 (=> res!2550495 e!3752308)))

(assert (=> b!6158565 (= res!2550495 (not (is-Concat!24945 lt!2335455)))))

(assert (=> b!6158565 (= e!3752310 e!3752308)))

(declare-fun b!6158566 () Bool)

(declare-fun e!3752305 () Bool)

(assert (=> b!6158566 (= e!3752305 call!512717)))

(declare-fun bm!512714 () Bool)

(declare-fun call!512719 () Bool)

(assert (=> bm!512714 (= call!512719 (validRegex!7836 (ite c!1108962 (regOne!32713 lt!2335455) (regOne!32712 lt!2335455))))))

(declare-fun b!6158567 () Bool)

(assert (=> b!6158567 (= e!3752307 e!3752309)))

(declare-fun res!2550496 () Bool)

(assert (=> b!6158567 (= res!2550496 (not (nullable!6093 (reg!16429 lt!2335455))))))

(assert (=> b!6158567 (=> (not res!2550496) (not e!3752309))))

(declare-fun b!6158568 () Bool)

(declare-fun e!3752311 () Bool)

(assert (=> b!6158568 (= e!3752308 e!3752311)))

(declare-fun res!2550494 () Bool)

(assert (=> b!6158568 (=> (not res!2550494) (not e!3752311))))

(assert (=> b!6158568 (= res!2550494 call!512719)))

(declare-fun b!6158569 () Bool)

(declare-fun e!3752306 () Bool)

(assert (=> b!6158569 (= e!3752306 e!3752307)))

(assert (=> b!6158569 (= c!1108963 (is-Star!16100 lt!2335455))))

(declare-fun d!1929710 () Bool)

(declare-fun res!2550497 () Bool)

(assert (=> d!1929710 (=> res!2550497 e!3752306)))

(assert (=> d!1929710 (= res!2550497 (is-ElementMatch!16100 lt!2335455))))

(assert (=> d!1929710 (= (validRegex!7836 lt!2335455) e!3752306)))

(declare-fun b!6158570 () Bool)

(assert (=> b!6158570 (= e!3752311 call!512717)))

(declare-fun b!6158571 () Bool)

(declare-fun res!2550493 () Bool)

(assert (=> b!6158571 (=> (not res!2550493) (not e!3752305))))

(assert (=> b!6158571 (= res!2550493 call!512719)))

(assert (=> b!6158571 (= e!3752310 e!3752305)))

(assert (= (and d!1929710 (not res!2550497)) b!6158569))

(assert (= (and b!6158569 c!1108963) b!6158567))

(assert (= (and b!6158569 (not c!1108963)) b!6158564))

(assert (= (and b!6158567 res!2550496) b!6158563))

(assert (= (and b!6158564 c!1108962) b!6158571))

(assert (= (and b!6158564 (not c!1108962)) b!6158565))

(assert (= (and b!6158571 res!2550493) b!6158566))

(assert (= (and b!6158565 (not res!2550495)) b!6158568))

(assert (= (and b!6158568 res!2550494) b!6158570))

(assert (= (or b!6158566 b!6158570) bm!512712))

(assert (= (or b!6158571 b!6158568) bm!512714))

(assert (= (or b!6158563 bm!512712) bm!512713))

(declare-fun m!6996852 () Bool)

(assert (=> bm!512713 m!6996852))

(declare-fun m!6996854 () Bool)

(assert (=> bm!512714 m!6996854))

(declare-fun m!6996856 () Bool)

(assert (=> b!6158567 m!6996856))

(assert (=> d!1929386 d!1929710))

(declare-fun d!1929712 () Bool)

(declare-fun res!2550498 () Bool)

(declare-fun e!3752312 () Bool)

(assert (=> d!1929712 (=> res!2550498 e!3752312)))

(assert (=> d!1929712 (= res!2550498 (is-Nil!64476 (unfocusZipperList!1521 zl!343)))))

(assert (=> d!1929712 (= (forall!15221 (unfocusZipperList!1521 zl!343) lambda!335952) e!3752312)))

(declare-fun b!6158572 () Bool)

(declare-fun e!3752313 () Bool)

(assert (=> b!6158572 (= e!3752312 e!3752313)))

(declare-fun res!2550499 () Bool)

(assert (=> b!6158572 (=> (not res!2550499) (not e!3752313))))

(assert (=> b!6158572 (= res!2550499 (dynLambda!25422 lambda!335952 (h!70924 (unfocusZipperList!1521 zl!343))))))

(declare-fun b!6158573 () Bool)

(assert (=> b!6158573 (= e!3752313 (forall!15221 (t!378094 (unfocusZipperList!1521 zl!343)) lambda!335952))))

(assert (= (and d!1929712 (not res!2550498)) b!6158572))

(assert (= (and b!6158572 res!2550499) b!6158573))

(declare-fun b_lambda!234429 () Bool)

(assert (=> (not b_lambda!234429) (not b!6158572)))

(declare-fun m!6996858 () Bool)

(assert (=> b!6158572 m!6996858))

(declare-fun m!6996860 () Bool)

(assert (=> b!6158573 m!6996860))

(assert (=> d!1929386 d!1929712))

(declare-fun d!1929714 () Bool)

(declare-fun c!1108964 () Bool)

(assert (=> d!1929714 (= c!1108964 (isEmpty!36446 (tail!11807 (t!378093 s!2326))))))

(declare-fun e!3752314 () Bool)

(assert (=> d!1929714 (= (matchZipper!2112 (derivationStepZipper!2073 lt!2335342 (head!12722 (t!378093 s!2326))) (tail!11807 (t!378093 s!2326))) e!3752314)))

(declare-fun b!6158574 () Bool)

(assert (=> b!6158574 (= e!3752314 (nullableZipper!1881 (derivationStepZipper!2073 lt!2335342 (head!12722 (t!378093 s!2326)))))))

(declare-fun b!6158575 () Bool)

(assert (=> b!6158575 (= e!3752314 (matchZipper!2112 (derivationStepZipper!2073 (derivationStepZipper!2073 lt!2335342 (head!12722 (t!378093 s!2326))) (head!12722 (tail!11807 (t!378093 s!2326)))) (tail!11807 (tail!11807 (t!378093 s!2326)))))))

(assert (= (and d!1929714 c!1108964) b!6158574))

(assert (= (and d!1929714 (not c!1108964)) b!6158575))

(assert (=> d!1929714 m!6996178))

(assert (=> d!1929714 m!6996710))

(assert (=> b!6158574 m!6996198))

(declare-fun m!6996862 () Bool)

(assert (=> b!6158574 m!6996862))

(assert (=> b!6158575 m!6996178))

(assert (=> b!6158575 m!6996714))

(assert (=> b!6158575 m!6996198))

(assert (=> b!6158575 m!6996714))

(declare-fun m!6996864 () Bool)

(assert (=> b!6158575 m!6996864))

(assert (=> b!6158575 m!6996178))

(assert (=> b!6158575 m!6996718))

(assert (=> b!6158575 m!6996864))

(assert (=> b!6158575 m!6996718))

(declare-fun m!6996866 () Bool)

(assert (=> b!6158575 m!6996866))

(assert (=> b!6157669 d!1929714))

(declare-fun bs!1526292 () Bool)

(declare-fun d!1929716 () Bool)

(assert (= bs!1526292 (and d!1929716 b!6157462)))

(declare-fun lambda!336022 () Int)

(assert (=> bs!1526292 (= (= (head!12722 (t!378093 s!2326)) (h!70923 s!2326)) (= lambda!336022 lambda!335934))))

(declare-fun bs!1526293 () Bool)

(assert (= bs!1526293 (and d!1929716 d!1929614)))

(assert (=> bs!1526293 (= lambda!336022 lambda!336014)))

(declare-fun bs!1526294 () Bool)

(assert (= bs!1526294 (and d!1929716 d!1929674)))

(assert (=> bs!1526294 (= lambda!336022 lambda!336018)))

(declare-fun bs!1526295 () Bool)

(assert (= bs!1526295 (and d!1929716 d!1929678)))

(assert (=> bs!1526295 (= lambda!336022 lambda!336019)))

(assert (=> d!1929716 true))

(assert (=> d!1929716 (= (derivationStepZipper!2073 lt!2335342 (head!12722 (t!378093 s!2326))) (flatMap!1605 lt!2335342 lambda!336022))))

(declare-fun bs!1526296 () Bool)

(assert (= bs!1526296 d!1929716))

(declare-fun m!6996868 () Bool)

(assert (=> bs!1526296 m!6996868))

(assert (=> b!6157669 d!1929716))

(assert (=> b!6157669 d!1929616))

(assert (=> b!6157669 d!1929618))

(declare-fun bs!1526297 () Bool)

(declare-fun d!1929718 () Bool)

(assert (= bs!1526297 (and d!1929718 d!1929692)))

(declare-fun lambda!336023 () Int)

(assert (=> bs!1526297 (= lambda!336023 lambda!336020)))

(declare-fun bs!1526298 () Bool)

(assert (= bs!1526298 (and d!1929718 d!1929704)))

(assert (=> bs!1526298 (= lambda!336023 lambda!336021)))

(declare-fun bs!1526299 () Bool)

(assert (= bs!1526299 (and d!1929718 d!1929610)))

(assert (=> bs!1526299 (= lambda!336023 lambda!336011)))

(declare-fun bs!1526300 () Bool)

(assert (= bs!1526300 (and d!1929718 d!1929648)))

(assert (=> bs!1526300 (= lambda!336023 lambda!336016)))

(declare-fun bs!1526301 () Bool)

(assert (= bs!1526301 (and d!1929718 d!1929608)))

(assert (=> bs!1526301 (= lambda!336023 lambda!336010)))

(declare-fun bs!1526302 () Bool)

(assert (= bs!1526302 (and d!1929718 d!1929668)))

(assert (=> bs!1526302 (= lambda!336023 lambda!336017)))

(assert (=> d!1929718 (= (nullableZipper!1881 (set.union lt!2335350 lt!2335358)) (exists!2445 (set.union lt!2335350 lt!2335358) lambda!336023))))

(declare-fun bs!1526303 () Bool)

(assert (= bs!1526303 d!1929718))

(declare-fun m!6996870 () Bool)

(assert (=> bs!1526303 m!6996870))

(assert (=> b!6157674 d!1929718))

(declare-fun d!1929720 () Bool)

(assert (=> d!1929720 (= (head!12721 (exprs!5984 (h!70925 zl!343))) (h!70924 (exprs!5984 (h!70925 zl!343))))))

(assert (=> b!6157787 d!1929720))

(declare-fun b!6158576 () Bool)

(declare-fun e!3752318 () Bool)

(declare-fun call!512720 () Bool)

(assert (=> b!6158576 (= e!3752318 call!512720)))

(declare-fun b!6158577 () Bool)

(declare-fun e!3752319 () Bool)

(declare-fun e!3752317 () Bool)

(assert (=> b!6158577 (= e!3752319 e!3752317)))

(declare-fun c!1108965 () Bool)

(assert (=> b!6158577 (= c!1108965 (is-Union!16100 (regOne!32713 (regOne!32712 r!7292))))))

(declare-fun b!6158578 () Bool)

(declare-fun e!3752316 () Bool)

(assert (=> b!6158578 (= e!3752316 call!512720)))

(declare-fun d!1929722 () Bool)

(declare-fun res!2550501 () Bool)

(declare-fun e!3752315 () Bool)

(assert (=> d!1929722 (=> res!2550501 e!3752315)))

(assert (=> d!1929722 (= res!2550501 (is-EmptyExpr!16100 (regOne!32713 (regOne!32712 r!7292))))))

(assert (=> d!1929722 (= (nullableFct!2057 (regOne!32713 (regOne!32712 r!7292))) e!3752315)))

(declare-fun b!6158579 () Bool)

(declare-fun e!3752320 () Bool)

(assert (=> b!6158579 (= e!3752320 e!3752319)))

(declare-fun res!2550500 () Bool)

(assert (=> b!6158579 (=> res!2550500 e!3752319)))

(assert (=> b!6158579 (= res!2550500 (is-Star!16100 (regOne!32713 (regOne!32712 r!7292))))))

(declare-fun b!6158580 () Bool)

(assert (=> b!6158580 (= e!3752315 e!3752320)))

(declare-fun res!2550502 () Bool)

(assert (=> b!6158580 (=> (not res!2550502) (not e!3752320))))

(assert (=> b!6158580 (= res!2550502 (and (not (is-EmptyLang!16100 (regOne!32713 (regOne!32712 r!7292)))) (not (is-ElementMatch!16100 (regOne!32713 (regOne!32712 r!7292))))))))

(declare-fun b!6158581 () Bool)

(assert (=> b!6158581 (= e!3752317 e!3752316)))

(declare-fun res!2550504 () Bool)

(declare-fun call!512721 () Bool)

(assert (=> b!6158581 (= res!2550504 call!512721)))

(assert (=> b!6158581 (=> res!2550504 e!3752316)))

(declare-fun b!6158582 () Bool)

(assert (=> b!6158582 (= e!3752317 e!3752318)))

(declare-fun res!2550503 () Bool)

(assert (=> b!6158582 (= res!2550503 call!512721)))

(assert (=> b!6158582 (=> (not res!2550503) (not e!3752318))))

(declare-fun bm!512715 () Bool)

(assert (=> bm!512715 (= call!512721 (nullable!6093 (ite c!1108965 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292))))))))

(declare-fun bm!512716 () Bool)

(assert (=> bm!512716 (= call!512720 (nullable!6093 (ite c!1108965 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))))))))

(assert (= (and d!1929722 (not res!2550501)) b!6158580))

(assert (= (and b!6158580 res!2550502) b!6158579))

(assert (= (and b!6158579 (not res!2550500)) b!6158577))

(assert (= (and b!6158577 c!1108965) b!6158581))

(assert (= (and b!6158577 (not c!1108965)) b!6158582))

(assert (= (and b!6158581 (not res!2550504)) b!6158578))

(assert (= (and b!6158582 res!2550503) b!6158576))

(assert (= (or b!6158578 b!6158576) bm!512716))

(assert (= (or b!6158581 b!6158582) bm!512715))

(declare-fun m!6996872 () Bool)

(assert (=> bm!512715 m!6996872))

(declare-fun m!6996874 () Bool)

(assert (=> bm!512716 m!6996874))

(assert (=> d!1929474 d!1929722))

(declare-fun b!6158594 () Bool)

(declare-fun e!3752326 () Bool)

(declare-fun lt!2335556 () List!64599)

(assert (=> b!6158594 (= e!3752326 (or (not (= (_2!36382 (get!22252 lt!2335473)) Nil!64475)) (= lt!2335556 (_1!36382 (get!22252 lt!2335473)))))))

(declare-fun b!6158593 () Bool)

(declare-fun res!2550509 () Bool)

(assert (=> b!6158593 (=> (not res!2550509) (not e!3752326))))

(declare-fun size!40241 (List!64599) Int)

(assert (=> b!6158593 (= res!2550509 (= (size!40241 lt!2335556) (+ (size!40241 (_1!36382 (get!22252 lt!2335473))) (size!40241 (_2!36382 (get!22252 lt!2335473))))))))

(declare-fun b!6158592 () Bool)

(declare-fun e!3752325 () List!64599)

(assert (=> b!6158592 (= e!3752325 (Cons!64475 (h!70923 (_1!36382 (get!22252 lt!2335473))) (++!14186 (t!378093 (_1!36382 (get!22252 lt!2335473))) (_2!36382 (get!22252 lt!2335473)))))))

(declare-fun d!1929724 () Bool)

(assert (=> d!1929724 e!3752326))

(declare-fun res!2550510 () Bool)

(assert (=> d!1929724 (=> (not res!2550510) (not e!3752326))))

(declare-fun content!12024 (List!64599) (Set C!32470))

(assert (=> d!1929724 (= res!2550510 (= (content!12024 lt!2335556) (set.union (content!12024 (_1!36382 (get!22252 lt!2335473))) (content!12024 (_2!36382 (get!22252 lt!2335473))))))))

(assert (=> d!1929724 (= lt!2335556 e!3752325)))

(declare-fun c!1108968 () Bool)

(assert (=> d!1929724 (= c!1108968 (is-Nil!64475 (_1!36382 (get!22252 lt!2335473))))))

(assert (=> d!1929724 (= (++!14186 (_1!36382 (get!22252 lt!2335473)) (_2!36382 (get!22252 lt!2335473))) lt!2335556)))

(declare-fun b!6158591 () Bool)

(assert (=> b!6158591 (= e!3752325 (_2!36382 (get!22252 lt!2335473)))))

(assert (= (and d!1929724 c!1108968) b!6158591))

(assert (= (and d!1929724 (not c!1108968)) b!6158592))

(assert (= (and d!1929724 res!2550510) b!6158593))

(assert (= (and b!6158593 res!2550509) b!6158594))

(declare-fun m!6996876 () Bool)

(assert (=> b!6158593 m!6996876))

(declare-fun m!6996878 () Bool)

(assert (=> b!6158593 m!6996878))

(declare-fun m!6996880 () Bool)

(assert (=> b!6158593 m!6996880))

(declare-fun m!6996882 () Bool)

(assert (=> b!6158592 m!6996882))

(declare-fun m!6996884 () Bool)

(assert (=> d!1929724 m!6996884))

(declare-fun m!6996886 () Bool)

(assert (=> d!1929724 m!6996886))

(declare-fun m!6996888 () Bool)

(assert (=> d!1929724 m!6996888))

(assert (=> b!6157698 d!1929724))

(assert (=> b!6157698 d!1929700))

(assert (=> b!6157702 d!1929680))

(declare-fun d!1929726 () Bool)

(declare-fun c!1108971 () Bool)

(assert (=> d!1929726 (= c!1108971 (is-Nil!64477 lt!2335461))))

(declare-fun e!3752329 () (Set Context!10968))

(assert (=> d!1929726 (= (content!12022 lt!2335461) e!3752329)))

(declare-fun b!6158599 () Bool)

(assert (=> b!6158599 (= e!3752329 (as set.empty (Set Context!10968)))))

(declare-fun b!6158600 () Bool)

(assert (=> b!6158600 (= e!3752329 (set.union (set.insert (h!70925 lt!2335461) (as set.empty (Set Context!10968))) (content!12022 (t!378095 lt!2335461))))))

(assert (= (and d!1929726 c!1108971) b!6158599))

(assert (= (and d!1929726 (not c!1108971)) b!6158600))

(declare-fun m!6996890 () Bool)

(assert (=> b!6158600 m!6996890))

(declare-fun m!6996892 () Bool)

(assert (=> b!6158600 m!6996892))

(assert (=> b!6157661 d!1929726))

(declare-fun b!6158601 () Bool)

(declare-fun e!3752334 () (Set Context!10968))

(declare-fun e!3752332 () (Set Context!10968))

(assert (=> b!6158601 (= e!3752334 e!3752332)))

(declare-fun c!1108975 () Bool)

(assert (=> b!6158601 (= c!1108975 (is-Union!16100 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun b!6158602 () Bool)

(declare-fun call!512726 () (Set Context!10968))

(declare-fun call!512727 () (Set Context!10968))

(assert (=> b!6158602 (= e!3752332 (set.union call!512726 call!512727))))

(declare-fun bm!512717 () Bool)

(declare-fun call!512725 () (Set Context!10968))

(assert (=> bm!512717 (= call!512725 call!512727)))

(declare-fun b!6158603 () Bool)

(declare-fun e!3752333 () (Set Context!10968))

(assert (=> b!6158603 (= e!3752333 (set.union call!512726 call!512725))))

(declare-fun b!6158604 () Bool)

(assert (=> b!6158604 (= e!3752334 (set.insert (Context!10969 (t!378094 (exprs!5984 (h!70925 zl!343)))) (as set.empty (Set Context!10968))))))

(declare-fun d!1929728 () Bool)

(declare-fun c!1108972 () Bool)

(assert (=> d!1929728 (= c!1108972 (and (is-ElementMatch!16100 (h!70924 (exprs!5984 (h!70925 zl!343)))) (= (c!1108675 (h!70924 (exprs!5984 (h!70925 zl!343)))) (h!70923 s!2326))))))

(assert (=> d!1929728 (= (derivationStepZipperDown!1348 (h!70924 (exprs!5984 (h!70925 zl!343))) (Context!10969 (t!378094 (exprs!5984 (h!70925 zl!343)))) (h!70923 s!2326)) e!3752334)))

(declare-fun b!6158605 () Bool)

(declare-fun e!3752331 () (Set Context!10968))

(declare-fun call!512724 () (Set Context!10968))

(assert (=> b!6158605 (= e!3752331 call!512724)))

(declare-fun c!1108973 () Bool)

(declare-fun c!1108974 () Bool)

(declare-fun call!512723 () List!64600)

(declare-fun bm!512718 () Bool)

(assert (=> bm!512718 (= call!512727 (derivationStepZipperDown!1348 (ite c!1108975 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108973 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108974 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343))))))) (ite (or c!1108975 c!1108973) (Context!10969 (t!378094 (exprs!5984 (h!70925 zl!343)))) (Context!10969 call!512723)) (h!70923 s!2326)))))

(declare-fun b!6158606 () Bool)

(declare-fun e!3752330 () (Set Context!10968))

(assert (=> b!6158606 (= e!3752333 e!3752330)))

(assert (=> b!6158606 (= c!1108974 (is-Concat!24945 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun b!6158607 () Bool)

(declare-fun c!1108976 () Bool)

(assert (=> b!6158607 (= c!1108976 (is-Star!16100 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(assert (=> b!6158607 (= e!3752330 e!3752331)))

(declare-fun bm!512719 () Bool)

(assert (=> bm!512719 (= call!512724 call!512725)))

(declare-fun b!6158608 () Bool)

(declare-fun e!3752335 () Bool)

(assert (=> b!6158608 (= c!1108973 e!3752335)))

(declare-fun res!2550511 () Bool)

(assert (=> b!6158608 (=> (not res!2550511) (not e!3752335))))

(assert (=> b!6158608 (= res!2550511 (is-Concat!24945 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(assert (=> b!6158608 (= e!3752332 e!3752333)))

(declare-fun call!512722 () List!64600)

(declare-fun bm!512720 () Bool)

(assert (=> bm!512720 (= call!512722 ($colon$colon!1977 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 (h!70925 zl!343))))) (ite (or c!1108973 c!1108974) (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (h!70924 (exprs!5984 (h!70925 zl!343))))))))

(declare-fun b!6158609 () Bool)

(assert (=> b!6158609 (= e!3752335 (nullable!6093 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343))))))))

(declare-fun b!6158610 () Bool)

(assert (=> b!6158610 (= e!3752331 (as set.empty (Set Context!10968)))))

(declare-fun b!6158611 () Bool)

(assert (=> b!6158611 (= e!3752330 call!512724)))

(declare-fun bm!512721 () Bool)

(assert (=> bm!512721 (= call!512726 (derivationStepZipperDown!1348 (ite c!1108975 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343))))) (ite c!1108975 (Context!10969 (t!378094 (exprs!5984 (h!70925 zl!343)))) (Context!10969 call!512722)) (h!70923 s!2326)))))

(declare-fun bm!512722 () Bool)

(assert (=> bm!512722 (= call!512723 call!512722)))

(assert (= (and d!1929728 c!1108972) b!6158604))

(assert (= (and d!1929728 (not c!1108972)) b!6158601))

(assert (= (and b!6158601 c!1108975) b!6158602))

(assert (= (and b!6158601 (not c!1108975)) b!6158608))

(assert (= (and b!6158608 res!2550511) b!6158609))

(assert (= (and b!6158608 c!1108973) b!6158603))

(assert (= (and b!6158608 (not c!1108973)) b!6158606))

(assert (= (and b!6158606 c!1108974) b!6158611))

(assert (= (and b!6158606 (not c!1108974)) b!6158607))

(assert (= (and b!6158607 c!1108976) b!6158605))

(assert (= (and b!6158607 (not c!1108976)) b!6158610))

(assert (= (or b!6158611 b!6158605) bm!512722))

(assert (= (or b!6158611 b!6158605) bm!512719))

(assert (= (or b!6158603 bm!512722) bm!512720))

(assert (= (or b!6158603 bm!512719) bm!512717))

(assert (= (or b!6158602 bm!512717) bm!512718))

(assert (= (or b!6158602 b!6158603) bm!512721))

(declare-fun m!6996894 () Bool)

(assert (=> bm!512718 m!6996894))

(declare-fun m!6996896 () Bool)

(assert (=> b!6158604 m!6996896))

(declare-fun m!6996898 () Bool)

(assert (=> bm!512720 m!6996898))

(declare-fun m!6996900 () Bool)

(assert (=> bm!512721 m!6996900))

(assert (=> b!6158609 m!6996328))

(assert (=> bm!512615 d!1929728))

(assert (=> bs!1526199 d!1929456))

(assert (=> b!6157672 d!1929396))

(assert (=> d!1929470 d!1929624))

(declare-fun b!6158612 () Bool)

(declare-fun e!3752339 () Bool)

(declare-fun call!512728 () Bool)

(assert (=> b!6158612 (= e!3752339 call!512728)))

(declare-fun b!6158613 () Bool)

(declare-fun e!3752340 () Bool)

(declare-fun e!3752338 () Bool)

(assert (=> b!6158613 (= e!3752340 e!3752338)))

(declare-fun c!1108977 () Bool)

(assert (=> b!6158613 (= c!1108977 (is-Union!16100 (regTwo!32713 (regOne!32712 r!7292))))))

(declare-fun b!6158614 () Bool)

(declare-fun e!3752337 () Bool)

(assert (=> b!6158614 (= e!3752337 call!512728)))

(declare-fun d!1929730 () Bool)

(declare-fun res!2550513 () Bool)

(declare-fun e!3752336 () Bool)

(assert (=> d!1929730 (=> res!2550513 e!3752336)))

(assert (=> d!1929730 (= res!2550513 (is-EmptyExpr!16100 (regTwo!32713 (regOne!32712 r!7292))))))

(assert (=> d!1929730 (= (nullableFct!2057 (regTwo!32713 (regOne!32712 r!7292))) e!3752336)))

(declare-fun b!6158615 () Bool)

(declare-fun e!3752341 () Bool)

(assert (=> b!6158615 (= e!3752341 e!3752340)))

(declare-fun res!2550512 () Bool)

(assert (=> b!6158615 (=> res!2550512 e!3752340)))

(assert (=> b!6158615 (= res!2550512 (is-Star!16100 (regTwo!32713 (regOne!32712 r!7292))))))

(declare-fun b!6158616 () Bool)

(assert (=> b!6158616 (= e!3752336 e!3752341)))

(declare-fun res!2550514 () Bool)

(assert (=> b!6158616 (=> (not res!2550514) (not e!3752341))))

(assert (=> b!6158616 (= res!2550514 (and (not (is-EmptyLang!16100 (regTwo!32713 (regOne!32712 r!7292)))) (not (is-ElementMatch!16100 (regTwo!32713 (regOne!32712 r!7292))))))))

(declare-fun b!6158617 () Bool)

(assert (=> b!6158617 (= e!3752338 e!3752337)))

(declare-fun res!2550516 () Bool)

(declare-fun call!512729 () Bool)

(assert (=> b!6158617 (= res!2550516 call!512729)))

(assert (=> b!6158617 (=> res!2550516 e!3752337)))

(declare-fun b!6158618 () Bool)

(assert (=> b!6158618 (= e!3752338 e!3752339)))

(declare-fun res!2550515 () Bool)

(assert (=> b!6158618 (= res!2550515 call!512729)))

(assert (=> b!6158618 (=> (not res!2550515) (not e!3752339))))

(declare-fun bm!512723 () Bool)

(assert (=> bm!512723 (= call!512729 (nullable!6093 (ite c!1108977 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))))))))

(declare-fun bm!512724 () Bool)

(assert (=> bm!512724 (= call!512728 (nullable!6093 (ite c!1108977 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))))))))

(assert (= (and d!1929730 (not res!2550513)) b!6158616))

(assert (= (and b!6158616 res!2550514) b!6158615))

(assert (= (and b!6158615 (not res!2550512)) b!6158613))

(assert (= (and b!6158613 c!1108977) b!6158617))

(assert (= (and b!6158613 (not c!1108977)) b!6158618))

(assert (= (and b!6158617 (not res!2550516)) b!6158614))

(assert (= (and b!6158618 res!2550515) b!6158612))

(assert (= (or b!6158614 b!6158612) bm!512724))

(assert (= (or b!6158617 b!6158618) bm!512723))

(declare-fun m!6996902 () Bool)

(assert (=> bm!512723 m!6996902))

(declare-fun m!6996904 () Bool)

(assert (=> bm!512724 m!6996904))

(assert (=> d!1929466 d!1929730))

(declare-fun d!1929732 () Bool)

(declare-fun c!1108978 () Bool)

(assert (=> d!1929732 (= c!1108978 (isEmpty!36446 (t!378093 s!2326)))))

(declare-fun e!3752342 () Bool)

(assert (=> d!1929732 (= (matchZipper!2112 (set.union lt!2335342 lt!2335362) (t!378093 s!2326)) e!3752342)))

(declare-fun b!6158619 () Bool)

(assert (=> b!6158619 (= e!3752342 (nullableZipper!1881 (set.union lt!2335342 lt!2335362)))))

(declare-fun b!6158620 () Bool)

(assert (=> b!6158620 (= e!3752342 (matchZipper!2112 (derivationStepZipper!2073 (set.union lt!2335342 lt!2335362) (head!12722 (t!378093 s!2326))) (tail!11807 (t!378093 s!2326))))))

(assert (= (and d!1929732 c!1108978) b!6158619))

(assert (= (and d!1929732 (not c!1108978)) b!6158620))

(assert (=> d!1929732 m!6996170))

(declare-fun m!6996906 () Bool)

(assert (=> b!6158619 m!6996906))

(assert (=> b!6158620 m!6996174))

(assert (=> b!6158620 m!6996174))

(declare-fun m!6996908 () Bool)

(assert (=> b!6158620 m!6996908))

(assert (=> b!6158620 m!6996178))

(assert (=> b!6158620 m!6996908))

(assert (=> b!6158620 m!6996178))

(declare-fun m!6996910 () Bool)

(assert (=> b!6158620 m!6996910))

(assert (=> d!1929406 d!1929732))

(assert (=> d!1929406 d!1929404))

(declare-fun d!1929734 () Bool)

(declare-fun e!3752343 () Bool)

(assert (=> d!1929734 (= (matchZipper!2112 (set.union lt!2335342 lt!2335362) (t!378093 s!2326)) e!3752343)))

(declare-fun res!2550517 () Bool)

(assert (=> d!1929734 (=> res!2550517 e!3752343)))

(assert (=> d!1929734 (= res!2550517 (matchZipper!2112 lt!2335342 (t!378093 s!2326)))))

(assert (=> d!1929734 true))

(declare-fun _$48!1720 () Unit!157579)

(assert (=> d!1929734 (= (choose!45776 lt!2335342 lt!2335362 (t!378093 s!2326)) _$48!1720)))

(declare-fun b!6158621 () Bool)

(assert (=> b!6158621 (= e!3752343 (matchZipper!2112 lt!2335362 (t!378093 s!2326)))))

(assert (= (and d!1929734 (not res!2550517)) b!6158621))

(assert (=> d!1929734 m!6996202))

(assert (=> d!1929734 m!6995926))

(assert (=> b!6158621 m!6995918))

(assert (=> d!1929406 d!1929734))

(declare-fun d!1929736 () Bool)

(declare-fun c!1108979 () Bool)

(assert (=> d!1929736 (= c!1108979 (isEmpty!36446 (tail!11807 s!2326)))))

(declare-fun e!3752344 () Bool)

(assert (=> d!1929736 (= (matchZipper!2112 (derivationStepZipper!2073 lt!2335341 (head!12722 s!2326)) (tail!11807 s!2326)) e!3752344)))

(declare-fun b!6158622 () Bool)

(assert (=> b!6158622 (= e!3752344 (nullableZipper!1881 (derivationStepZipper!2073 lt!2335341 (head!12722 s!2326))))))

(declare-fun b!6158623 () Bool)

(assert (=> b!6158623 (= e!3752344 (matchZipper!2112 (derivationStepZipper!2073 (derivationStepZipper!2073 lt!2335341 (head!12722 s!2326)) (head!12722 (tail!11807 s!2326))) (tail!11807 (tail!11807 s!2326))))))

(assert (= (and d!1929736 c!1108979) b!6158622))

(assert (= (and d!1929736 (not c!1108979)) b!6158623))

(assert (=> d!1929736 m!6996158))

(assert (=> d!1929736 m!6996310))

(assert (=> b!6158622 m!6996370))

(declare-fun m!6996912 () Bool)

(assert (=> b!6158622 m!6996912))

(assert (=> b!6158623 m!6996158))

(assert (=> b!6158623 m!6996752))

(assert (=> b!6158623 m!6996370))

(assert (=> b!6158623 m!6996752))

(declare-fun m!6996914 () Bool)

(assert (=> b!6158623 m!6996914))

(assert (=> b!6158623 m!6996158))

(assert (=> b!6158623 m!6996756))

(assert (=> b!6158623 m!6996914))

(assert (=> b!6158623 m!6996756))

(declare-fun m!6996916 () Bool)

(assert (=> b!6158623 m!6996916))

(assert (=> b!6157916 d!1929736))

(declare-fun bs!1526304 () Bool)

(declare-fun d!1929738 () Bool)

(assert (= bs!1526304 (and d!1929738 b!6157462)))

(declare-fun lambda!336024 () Int)

(assert (=> bs!1526304 (= (= (head!12722 s!2326) (h!70923 s!2326)) (= lambda!336024 lambda!335934))))

(declare-fun bs!1526305 () Bool)

(assert (= bs!1526305 (and d!1929738 d!1929614)))

(assert (=> bs!1526305 (= (= (head!12722 s!2326) (head!12722 (t!378093 s!2326))) (= lambda!336024 lambda!336014))))

(declare-fun bs!1526306 () Bool)

(assert (= bs!1526306 (and d!1929738 d!1929716)))

(assert (=> bs!1526306 (= (= (head!12722 s!2326) (head!12722 (t!378093 s!2326))) (= lambda!336024 lambda!336022))))

(declare-fun bs!1526307 () Bool)

(assert (= bs!1526307 (and d!1929738 d!1929678)))

(assert (=> bs!1526307 (= (= (head!12722 s!2326) (head!12722 (t!378093 s!2326))) (= lambda!336024 lambda!336019))))

(declare-fun bs!1526308 () Bool)

(assert (= bs!1526308 (and d!1929738 d!1929674)))

(assert (=> bs!1526308 (= (= (head!12722 s!2326) (head!12722 (t!378093 s!2326))) (= lambda!336024 lambda!336018))))

(assert (=> d!1929738 true))

(assert (=> d!1929738 (= (derivationStepZipper!2073 lt!2335341 (head!12722 s!2326)) (flatMap!1605 lt!2335341 lambda!336024))))

(declare-fun bs!1526309 () Bool)

(assert (= bs!1526309 d!1929738))

(declare-fun m!6996918 () Bool)

(assert (=> bs!1526309 m!6996918))

(assert (=> b!6157916 d!1929738))

(assert (=> b!6157916 d!1929654))

(assert (=> b!6157916 d!1929656))

(assert (=> d!1929408 d!1929410))

(assert (=> d!1929408 d!1929400))

(declare-fun e!3752345 () Bool)

(declare-fun d!1929740 () Bool)

(assert (=> d!1929740 (= (matchZipper!2112 (set.union lt!2335350 lt!2335358) (t!378093 s!2326)) e!3752345)))

(declare-fun res!2550518 () Bool)

(assert (=> d!1929740 (=> res!2550518 e!3752345)))

(assert (=> d!1929740 (= res!2550518 (matchZipper!2112 lt!2335350 (t!378093 s!2326)))))

(assert (=> d!1929740 true))

(declare-fun _$48!1721 () Unit!157579)

(assert (=> d!1929740 (= (choose!45776 lt!2335350 lt!2335358 (t!378093 s!2326)) _$48!1721)))

(declare-fun b!6158624 () Bool)

(assert (=> b!6158624 (= e!3752345 (matchZipper!2112 lt!2335358 (t!378093 s!2326)))))

(assert (= (and d!1929740 (not res!2550518)) b!6158624))

(assert (=> d!1929740 m!6995914))

(assert (=> d!1929740 m!6995912))

(assert (=> b!6158624 m!6995962))

(assert (=> d!1929408 d!1929740))

(declare-fun d!1929742 () Bool)

(assert (=> d!1929742 (= (isEmpty!36443 (t!378094 (unfocusZipperList!1521 zl!343))) (is-Nil!64476 (t!378094 (unfocusZipperList!1521 zl!343))))))

(assert (=> b!6157639 d!1929742))

(declare-fun d!1929744 () Bool)

(assert (=> d!1929744 (= ($colon$colon!1977 (exprs!5984 lt!2335351) (ite (or c!1108733 c!1108734) (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (regTwo!32713 (regOne!32712 r!7292)))) (Cons!64476 (ite (or c!1108733 c!1108734) (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (regTwo!32713 (regOne!32712 r!7292))) (exprs!5984 lt!2335351)))))

(assert (=> bm!512589 d!1929744))

(declare-fun d!1929746 () Bool)

(assert (=> d!1929746 (= (nullable!6093 (h!70924 (exprs!5984 lt!2335344))) (nullableFct!2057 (h!70924 (exprs!5984 lt!2335344))))))

(declare-fun bs!1526310 () Bool)

(assert (= bs!1526310 d!1929746))

(declare-fun m!6996920 () Bool)

(assert (=> bs!1526310 m!6996920))

(assert (=> b!6157918 d!1929746))

(declare-fun d!1929748 () Bool)

(assert (=> d!1929748 (= (nullable!6093 (h!70924 (exprs!5984 lt!2335359))) (nullableFct!2057 (h!70924 (exprs!5984 lt!2335359))))))

(declare-fun bs!1526311 () Bool)

(assert (= bs!1526311 d!1929748))

(declare-fun m!6996922 () Bool)

(assert (=> bs!1526311 m!6996922))

(assert (=> b!6157923 d!1929748))

(declare-fun b!6158625 () Bool)

(declare-fun e!3752350 () (Set Context!10968))

(declare-fun e!3752348 () (Set Context!10968))

(assert (=> b!6158625 (= e!3752350 e!3752348)))

(declare-fun c!1108983 () Bool)

(assert (=> b!6158625 (= c!1108983 (is-Union!16100 (ite c!1108735 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))))))))

(declare-fun b!6158626 () Bool)

(declare-fun call!512734 () (Set Context!10968))

(declare-fun call!512735 () (Set Context!10968))

(assert (=> b!6158626 (= e!3752348 (set.union call!512734 call!512735))))

(declare-fun bm!512725 () Bool)

(declare-fun call!512733 () (Set Context!10968))

(assert (=> bm!512725 (= call!512733 call!512735)))

(declare-fun b!6158627 () Bool)

(declare-fun e!3752349 () (Set Context!10968))

(assert (=> b!6158627 (= e!3752349 (set.union call!512734 call!512733))))

(declare-fun b!6158628 () Bool)

(assert (=> b!6158628 (= e!3752350 (set.insert (ite c!1108735 lt!2335351 (Context!10969 call!512591)) (as set.empty (Set Context!10968))))))

(declare-fun d!1929750 () Bool)

(declare-fun c!1108980 () Bool)

(assert (=> d!1929750 (= c!1108980 (and (is-ElementMatch!16100 (ite c!1108735 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))))) (= (c!1108675 (ite c!1108735 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))))) (h!70923 s!2326))))))

(assert (=> d!1929750 (= (derivationStepZipperDown!1348 (ite c!1108735 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292)))) (ite c!1108735 lt!2335351 (Context!10969 call!512591)) (h!70923 s!2326)) e!3752350)))

(declare-fun b!6158629 () Bool)

(declare-fun e!3752347 () (Set Context!10968))

(declare-fun call!512732 () (Set Context!10968))

(assert (=> b!6158629 (= e!3752347 call!512732)))

(declare-fun c!1108982 () Bool)

(declare-fun call!512731 () List!64600)

(declare-fun bm!512726 () Bool)

(declare-fun c!1108981 () Bool)

(assert (=> bm!512726 (= call!512735 (derivationStepZipperDown!1348 (ite c!1108983 (regTwo!32713 (ite c!1108735 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))))) (ite c!1108981 (regTwo!32712 (ite c!1108735 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))))) (ite c!1108982 (regOne!32712 (ite c!1108735 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))))) (reg!16429 (ite c!1108735 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292)))))))) (ite (or c!1108983 c!1108981) (ite c!1108735 lt!2335351 (Context!10969 call!512591)) (Context!10969 call!512731)) (h!70923 s!2326)))))

(declare-fun b!6158630 () Bool)

(declare-fun e!3752346 () (Set Context!10968))

(assert (=> b!6158630 (= e!3752349 e!3752346)))

(assert (=> b!6158630 (= c!1108982 (is-Concat!24945 (ite c!1108735 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))))))))

(declare-fun b!6158631 () Bool)

(declare-fun c!1108984 () Bool)

(assert (=> b!6158631 (= c!1108984 (is-Star!16100 (ite c!1108735 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))))))))

(assert (=> b!6158631 (= e!3752346 e!3752347)))

(declare-fun bm!512727 () Bool)

(assert (=> bm!512727 (= call!512732 call!512733)))

(declare-fun b!6158632 () Bool)

(declare-fun e!3752351 () Bool)

(assert (=> b!6158632 (= c!1108981 e!3752351)))

(declare-fun res!2550519 () Bool)

(assert (=> b!6158632 (=> (not res!2550519) (not e!3752351))))

(assert (=> b!6158632 (= res!2550519 (is-Concat!24945 (ite c!1108735 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))))))))

(assert (=> b!6158632 (= e!3752348 e!3752349)))

(declare-fun call!512730 () List!64600)

(declare-fun bm!512728 () Bool)

(assert (=> bm!512728 (= call!512730 ($colon$colon!1977 (exprs!5984 (ite c!1108735 lt!2335351 (Context!10969 call!512591))) (ite (or c!1108981 c!1108982) (regTwo!32712 (ite c!1108735 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))))) (ite c!1108735 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292)))))))))

(declare-fun b!6158633 () Bool)

(assert (=> b!6158633 (= e!3752351 (nullable!6093 (regOne!32712 (ite c!1108735 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292)))))))))

(declare-fun b!6158634 () Bool)

(assert (=> b!6158634 (= e!3752347 (as set.empty (Set Context!10968)))))

(declare-fun b!6158635 () Bool)

(assert (=> b!6158635 (= e!3752346 call!512732)))

(declare-fun bm!512729 () Bool)

(assert (=> bm!512729 (= call!512734 (derivationStepZipperDown!1348 (ite c!1108983 (regOne!32713 (ite c!1108735 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))))) (regOne!32712 (ite c!1108735 (regOne!32713 (regTwo!32713 (regOne!32712 r!7292))) (regOne!32712 (regTwo!32713 (regOne!32712 r!7292)))))) (ite c!1108983 (ite c!1108735 lt!2335351 (Context!10969 call!512591)) (Context!10969 call!512730)) (h!70923 s!2326)))))

(declare-fun bm!512730 () Bool)

(assert (=> bm!512730 (= call!512731 call!512730)))

(assert (= (and d!1929750 c!1108980) b!6158628))

(assert (= (and d!1929750 (not c!1108980)) b!6158625))

(assert (= (and b!6158625 c!1108983) b!6158626))

(assert (= (and b!6158625 (not c!1108983)) b!6158632))

(assert (= (and b!6158632 res!2550519) b!6158633))

(assert (= (and b!6158632 c!1108981) b!6158627))

(assert (= (and b!6158632 (not c!1108981)) b!6158630))

(assert (= (and b!6158630 c!1108982) b!6158635))

(assert (= (and b!6158630 (not c!1108982)) b!6158631))

(assert (= (and b!6158631 c!1108984) b!6158629))

(assert (= (and b!6158631 (not c!1108984)) b!6158634))

(assert (= (or b!6158635 b!6158629) bm!512730))

(assert (= (or b!6158635 b!6158629) bm!512727))

(assert (= (or b!6158627 bm!512730) bm!512728))

(assert (= (or b!6158627 bm!512727) bm!512725))

(assert (= (or b!6158626 bm!512725) bm!512726))

(assert (= (or b!6158626 b!6158627) bm!512729))

(declare-fun m!6996924 () Bool)

(assert (=> bm!512726 m!6996924))

(declare-fun m!6996926 () Bool)

(assert (=> b!6158628 m!6996926))

(declare-fun m!6996928 () Bool)

(assert (=> bm!512728 m!6996928))

(declare-fun m!6996930 () Bool)

(assert (=> bm!512729 m!6996930))

(declare-fun m!6996932 () Bool)

(assert (=> b!6158633 m!6996932))

(assert (=> bm!512590 d!1929750))

(declare-fun d!1929752 () Bool)

(assert (=> d!1929752 (= (isEmpty!36446 (tail!11807 s!2326)) (is-Nil!64475 (tail!11807 s!2326)))))

(assert (=> b!6157863 d!1929752))

(assert (=> b!6157863 d!1929656))

(declare-fun bs!1526312 () Bool)

(declare-fun b!6158643 () Bool)

(assert (= bs!1526312 (and b!6158643 d!1929418)))

(declare-fun lambda!336025 () Int)

(assert (=> bs!1526312 (not (= lambda!336025 lambda!335962))))

(declare-fun bs!1526313 () Bool)

(assert (= bs!1526313 (and b!6158643 b!6157455)))

(assert (=> bs!1526313 (not (= lambda!336025 lambda!335932))))

(declare-fun bs!1526314 () Bool)

(assert (= bs!1526314 (and b!6158643 d!1929420)))

(assert (=> bs!1526314 (not (= lambda!336025 lambda!335967))))

(assert (=> bs!1526313 (not (= lambda!336025 lambda!335933))))

(declare-fun bs!1526315 () Bool)

(assert (= bs!1526315 (and b!6158643 b!6157830)))

(assert (=> bs!1526315 (= (and (= (reg!16429 (regTwo!32713 r!7292)) (reg!16429 r!7292)) (= (regTwo!32713 r!7292) r!7292)) (= lambda!336025 lambda!335977))))

(assert (=> bs!1526314 (not (= lambda!336025 lambda!335968))))

(declare-fun bs!1526316 () Bool)

(assert (= bs!1526316 (and b!6158643 b!6157828)))

(assert (=> bs!1526316 (not (= lambda!336025 lambda!335978))))

(assert (=> b!6158643 true))

(assert (=> b!6158643 true))

(declare-fun bs!1526317 () Bool)

(declare-fun b!6158641 () Bool)

(assert (= bs!1526317 (and b!6158641 d!1929418)))

(declare-fun lambda!336026 () Int)

(assert (=> bs!1526317 (not (= lambda!336026 lambda!335962))))

(declare-fun bs!1526318 () Bool)

(assert (= bs!1526318 (and b!6158641 b!6157455)))

(assert (=> bs!1526318 (not (= lambda!336026 lambda!335932))))

(declare-fun bs!1526319 () Bool)

(assert (= bs!1526319 (and b!6158641 d!1929420)))

(assert (=> bs!1526319 (not (= lambda!336026 lambda!335967))))

(assert (=> bs!1526318 (= (and (= (regOne!32712 (regTwo!32713 r!7292)) (regOne!32712 r!7292)) (= (regTwo!32712 (regTwo!32713 r!7292)) (regTwo!32712 r!7292))) (= lambda!336026 lambda!335933))))

(declare-fun bs!1526320 () Bool)

(assert (= bs!1526320 (and b!6158641 b!6157830)))

(assert (=> bs!1526320 (not (= lambda!336026 lambda!335977))))

(assert (=> bs!1526319 (= (and (= (regOne!32712 (regTwo!32713 r!7292)) (regOne!32712 r!7292)) (= (regTwo!32712 (regTwo!32713 r!7292)) (regTwo!32712 r!7292))) (= lambda!336026 lambda!335968))))

(declare-fun bs!1526321 () Bool)

(assert (= bs!1526321 (and b!6158641 b!6158643)))

(assert (=> bs!1526321 (not (= lambda!336026 lambda!336025))))

(declare-fun bs!1526322 () Bool)

(assert (= bs!1526322 (and b!6158641 b!6157828)))

(assert (=> bs!1526322 (= (and (= (regOne!32712 (regTwo!32713 r!7292)) (regOne!32712 r!7292)) (= (regTwo!32712 (regTwo!32713 r!7292)) (regTwo!32712 r!7292))) (= lambda!336026 lambda!335978))))

(assert (=> b!6158641 true))

(assert (=> b!6158641 true))

(declare-fun b!6158636 () Bool)

(declare-fun e!3752357 () Bool)

(declare-fun e!3752354 () Bool)

(assert (=> b!6158636 (= e!3752357 e!3752354)))

(declare-fun res!2550521 () Bool)

(assert (=> b!6158636 (= res!2550521 (matchRSpec!3201 (regOne!32713 (regTwo!32713 r!7292)) s!2326))))

(assert (=> b!6158636 (=> res!2550521 e!3752354)))

(declare-fun bm!512731 () Bool)

(declare-fun call!512736 () Bool)

(assert (=> bm!512731 (= call!512736 (isEmpty!36446 s!2326))))

(declare-fun bm!512732 () Bool)

(declare-fun c!1108985 () Bool)

(declare-fun call!512737 () Bool)

(assert (=> bm!512732 (= call!512737 (Exists!3170 (ite c!1108985 lambda!336025 lambda!336026)))))

(declare-fun b!6158637 () Bool)

(declare-fun e!3752356 () Bool)

(declare-fun e!3752352 () Bool)

(assert (=> b!6158637 (= e!3752356 e!3752352)))

(declare-fun res!2550522 () Bool)

(assert (=> b!6158637 (= res!2550522 (not (is-EmptyLang!16100 (regTwo!32713 r!7292))))))

(assert (=> b!6158637 (=> (not res!2550522) (not e!3752352))))

(declare-fun b!6158638 () Bool)

(assert (=> b!6158638 (= e!3752356 call!512736)))

(declare-fun b!6158639 () Bool)

(assert (=> b!6158639 (= e!3752354 (matchRSpec!3201 (regTwo!32713 (regTwo!32713 r!7292)) s!2326))))

(declare-fun d!1929754 () Bool)

(declare-fun c!1108988 () Bool)

(assert (=> d!1929754 (= c!1108988 (is-EmptyExpr!16100 (regTwo!32713 r!7292)))))

(assert (=> d!1929754 (= (matchRSpec!3201 (regTwo!32713 r!7292) s!2326) e!3752356)))

(declare-fun b!6158640 () Bool)

(declare-fun e!3752355 () Bool)

(assert (=> b!6158640 (= e!3752355 (= s!2326 (Cons!64475 (c!1108675 (regTwo!32713 r!7292)) Nil!64475)))))

(declare-fun e!3752358 () Bool)

(assert (=> b!6158641 (= e!3752358 call!512737)))

(declare-fun b!6158642 () Bool)

(declare-fun c!1108987 () Bool)

(assert (=> b!6158642 (= c!1108987 (is-ElementMatch!16100 (regTwo!32713 r!7292)))))

(assert (=> b!6158642 (= e!3752352 e!3752355)))

(declare-fun e!3752353 () Bool)

(assert (=> b!6158643 (= e!3752353 call!512737)))

(declare-fun b!6158644 () Bool)

(declare-fun c!1108986 () Bool)

(assert (=> b!6158644 (= c!1108986 (is-Union!16100 (regTwo!32713 r!7292)))))

(assert (=> b!6158644 (= e!3752355 e!3752357)))

(declare-fun b!6158645 () Bool)

(assert (=> b!6158645 (= e!3752357 e!3752358)))

(assert (=> b!6158645 (= c!1108985 (is-Star!16100 (regTwo!32713 r!7292)))))

(declare-fun b!6158646 () Bool)

(declare-fun res!2550520 () Bool)

(assert (=> b!6158646 (=> res!2550520 e!3752353)))

(assert (=> b!6158646 (= res!2550520 call!512736)))

(assert (=> b!6158646 (= e!3752358 e!3752353)))

(assert (= (and d!1929754 c!1108988) b!6158638))

(assert (= (and d!1929754 (not c!1108988)) b!6158637))

(assert (= (and b!6158637 res!2550522) b!6158642))

(assert (= (and b!6158642 c!1108987) b!6158640))

(assert (= (and b!6158642 (not c!1108987)) b!6158644))

(assert (= (and b!6158644 c!1108986) b!6158636))

(assert (= (and b!6158644 (not c!1108986)) b!6158645))

(assert (= (and b!6158636 (not res!2550521)) b!6158639))

(assert (= (and b!6158645 c!1108985) b!6158646))

(assert (= (and b!6158645 (not c!1108985)) b!6158641))

(assert (= (and b!6158646 (not res!2550520)) b!6158643))

(assert (= (or b!6158643 b!6158641) bm!512732))

(assert (= (or b!6158638 b!6158646) bm!512731))

(declare-fun m!6996934 () Bool)

(assert (=> b!6158636 m!6996934))

(assert (=> bm!512731 m!6996150))

(declare-fun m!6996936 () Bool)

(assert (=> bm!512732 m!6996936))

(declare-fun m!6996938 () Bool)

(assert (=> b!6158639 m!6996938))

(assert (=> b!6157826 d!1929754))

(declare-fun d!1929756 () Bool)

(assert (=> d!1929756 (= (Exists!3170 lambda!335967) (choose!45777 lambda!335967))))

(declare-fun bs!1526323 () Bool)

(assert (= bs!1526323 d!1929756))

(declare-fun m!6996940 () Bool)

(assert (=> bs!1526323 m!6996940))

(assert (=> d!1929420 d!1929756))

(declare-fun d!1929758 () Bool)

(assert (=> d!1929758 (= (Exists!3170 lambda!335968) (choose!45777 lambda!335968))))

(declare-fun bs!1526324 () Bool)

(assert (= bs!1526324 d!1929758))

(declare-fun m!6996942 () Bool)

(assert (=> bs!1526324 m!6996942))

(assert (=> d!1929420 d!1929758))

(declare-fun bs!1526325 () Bool)

(declare-fun d!1929760 () Bool)

(assert (= bs!1526325 (and d!1929760 d!1929418)))

(declare-fun lambda!336031 () Int)

(assert (=> bs!1526325 (= lambda!336031 lambda!335962)))

(declare-fun bs!1526326 () Bool)

(assert (= bs!1526326 (and d!1929760 b!6157455)))

(assert (=> bs!1526326 (= lambda!336031 lambda!335932)))

(declare-fun bs!1526327 () Bool)

(assert (= bs!1526327 (and d!1929760 d!1929420)))

(assert (=> bs!1526327 (= lambda!336031 lambda!335967)))

(assert (=> bs!1526326 (not (= lambda!336031 lambda!335933))))

(declare-fun bs!1526328 () Bool)

(assert (= bs!1526328 (and d!1929760 b!6157830)))

(assert (=> bs!1526328 (not (= lambda!336031 lambda!335977))))

(declare-fun bs!1526329 () Bool)

(assert (= bs!1526329 (and d!1929760 b!6158643)))

(assert (=> bs!1526329 (not (= lambda!336031 lambda!336025))))

(declare-fun bs!1526330 () Bool)

(assert (= bs!1526330 (and d!1929760 b!6157828)))

(assert (=> bs!1526330 (not (= lambda!336031 lambda!335978))))

(assert (=> bs!1526327 (not (= lambda!336031 lambda!335968))))

(declare-fun bs!1526331 () Bool)

(assert (= bs!1526331 (and d!1929760 b!6158641)))

(assert (=> bs!1526331 (not (= lambda!336031 lambda!336026))))

(assert (=> d!1929760 true))

(assert (=> d!1929760 true))

(assert (=> d!1929760 true))

(declare-fun lambda!336032 () Int)

(assert (=> bs!1526325 (not (= lambda!336032 lambda!335962))))

(assert (=> bs!1526326 (not (= lambda!336032 lambda!335932))))

(assert (=> bs!1526327 (not (= lambda!336032 lambda!335967))))

(assert (=> bs!1526326 (= lambda!336032 lambda!335933)))

(assert (=> bs!1526328 (not (= lambda!336032 lambda!335977))))

(declare-fun bs!1526332 () Bool)

(assert (= bs!1526332 d!1929760))

(assert (=> bs!1526332 (not (= lambda!336032 lambda!336031))))

(assert (=> bs!1526329 (not (= lambda!336032 lambda!336025))))

(assert (=> bs!1526330 (= lambda!336032 lambda!335978)))

(assert (=> bs!1526327 (= lambda!336032 lambda!335968)))

(assert (=> bs!1526331 (= (and (= (regOne!32712 r!7292) (regOne!32712 (regTwo!32713 r!7292))) (= (regTwo!32712 r!7292) (regTwo!32712 (regTwo!32713 r!7292)))) (= lambda!336032 lambda!336026))))

(assert (=> d!1929760 true))

(assert (=> d!1929760 true))

(assert (=> d!1929760 true))

(assert (=> d!1929760 (= (Exists!3170 lambda!336031) (Exists!3170 lambda!336032))))

(assert (=> d!1929760 true))

(declare-fun _$90!1902 () Unit!157579)

(assert (=> d!1929760 (= (choose!45779 (regOne!32712 r!7292) (regTwo!32712 r!7292) s!2326) _$90!1902)))

(declare-fun m!6996944 () Bool)

(assert (=> bs!1526332 m!6996944))

(declare-fun m!6996946 () Bool)

(assert (=> bs!1526332 m!6996946))

(assert (=> d!1929420 d!1929760))

(assert (=> d!1929420 d!1929684))

(declare-fun d!1929762 () Bool)

(declare-fun c!1108989 () Bool)

(assert (=> d!1929762 (= c!1108989 (isEmpty!36446 (tail!11807 s!2326)))))

(declare-fun e!3752363 () Bool)

(assert (=> d!1929762 (= (matchZipper!2112 (derivationStepZipper!2073 z!1189 (head!12722 s!2326)) (tail!11807 s!2326)) e!3752363)))

(declare-fun b!6158655 () Bool)

(assert (=> b!6158655 (= e!3752363 (nullableZipper!1881 (derivationStepZipper!2073 z!1189 (head!12722 s!2326))))))

(declare-fun b!6158656 () Bool)

(assert (=> b!6158656 (= e!3752363 (matchZipper!2112 (derivationStepZipper!2073 (derivationStepZipper!2073 z!1189 (head!12722 s!2326)) (head!12722 (tail!11807 s!2326))) (tail!11807 (tail!11807 s!2326))))))

(assert (= (and d!1929762 c!1108989) b!6158655))

(assert (= (and d!1929762 (not c!1108989)) b!6158656))

(assert (=> d!1929762 m!6996158))

(assert (=> d!1929762 m!6996310))

(assert (=> b!6158655 m!6996394))

(declare-fun m!6996948 () Bool)

(assert (=> b!6158655 m!6996948))

(assert (=> b!6158656 m!6996158))

(assert (=> b!6158656 m!6996752))

(assert (=> b!6158656 m!6996394))

(assert (=> b!6158656 m!6996752))

(declare-fun m!6996950 () Bool)

(assert (=> b!6158656 m!6996950))

(assert (=> b!6158656 m!6996158))

(assert (=> b!6158656 m!6996756))

(assert (=> b!6158656 m!6996950))

(assert (=> b!6158656 m!6996756))

(declare-fun m!6996952 () Bool)

(assert (=> b!6158656 m!6996952))

(assert (=> b!6157928 d!1929762))

(declare-fun bs!1526333 () Bool)

(declare-fun d!1929764 () Bool)

(assert (= bs!1526333 (and d!1929764 b!6157462)))

(declare-fun lambda!336033 () Int)

(assert (=> bs!1526333 (= (= (head!12722 s!2326) (h!70923 s!2326)) (= lambda!336033 lambda!335934))))

(declare-fun bs!1526334 () Bool)

(assert (= bs!1526334 (and d!1929764 d!1929738)))

(assert (=> bs!1526334 (= lambda!336033 lambda!336024)))

(declare-fun bs!1526335 () Bool)

(assert (= bs!1526335 (and d!1929764 d!1929614)))

(assert (=> bs!1526335 (= (= (head!12722 s!2326) (head!12722 (t!378093 s!2326))) (= lambda!336033 lambda!336014))))

(declare-fun bs!1526336 () Bool)

(assert (= bs!1526336 (and d!1929764 d!1929716)))

(assert (=> bs!1526336 (= (= (head!12722 s!2326) (head!12722 (t!378093 s!2326))) (= lambda!336033 lambda!336022))))

(declare-fun bs!1526337 () Bool)

(assert (= bs!1526337 (and d!1929764 d!1929678)))

(assert (=> bs!1526337 (= (= (head!12722 s!2326) (head!12722 (t!378093 s!2326))) (= lambda!336033 lambda!336019))))

(declare-fun bs!1526338 () Bool)

(assert (= bs!1526338 (and d!1929764 d!1929674)))

(assert (=> bs!1526338 (= (= (head!12722 s!2326) (head!12722 (t!378093 s!2326))) (= lambda!336033 lambda!336018))))

(assert (=> d!1929764 true))

(assert (=> d!1929764 (= (derivationStepZipper!2073 z!1189 (head!12722 s!2326)) (flatMap!1605 z!1189 lambda!336033))))

(declare-fun bs!1526339 () Bool)

(assert (= bs!1526339 d!1929764))

(declare-fun m!6996954 () Bool)

(assert (=> bs!1526339 m!6996954))

(assert (=> b!6157928 d!1929764))

(assert (=> b!6157928 d!1929654))

(assert (=> b!6157928 d!1929656))

(declare-fun call!512738 () (Set Context!10968))

(declare-fun e!3752366 () (Set Context!10968))

(declare-fun b!6158657 () Bool)

(assert (=> b!6158657 (= e!3752366 (set.union call!512738 (derivationStepZipperUp!1274 (Context!10969 (t!378094 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343))))))))))) (h!70923 s!2326))))))

(declare-fun d!1929766 () Bool)

(declare-fun c!1108991 () Bool)

(declare-fun e!3752365 () Bool)

(assert (=> d!1929766 (= c!1108991 e!3752365)))

(declare-fun res!2550531 () Bool)

(assert (=> d!1929766 (=> (not res!2550531) (not e!3752365))))

(assert (=> d!1929766 (= res!2550531 (is-Cons!64476 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))))))))

(assert (=> d!1929766 (= (derivationStepZipperUp!1274 (Context!10969 (t!378094 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))) (h!70923 s!2326)) e!3752366)))

(declare-fun b!6158658 () Bool)

(assert (=> b!6158658 (= e!3752365 (nullable!6093 (h!70924 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343))))))))))))))

(declare-fun b!6158659 () Bool)

(declare-fun e!3752364 () (Set Context!10968))

(assert (=> b!6158659 (= e!3752364 (as set.empty (Set Context!10968)))))

(declare-fun b!6158660 () Bool)

(assert (=> b!6158660 (= e!3752364 call!512738)))

(declare-fun b!6158661 () Bool)

(assert (=> b!6158661 (= e!3752366 e!3752364)))

(declare-fun c!1108990 () Bool)

(assert (=> b!6158661 (= c!1108990 (is-Cons!64476 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))))))))

(declare-fun bm!512733 () Bool)

(assert (=> bm!512733 (= call!512738 (derivationStepZipperDown!1348 (h!70924 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))))) (Context!10969 (t!378094 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343))))))))))) (h!70923 s!2326)))))

(assert (= (and d!1929766 res!2550531) b!6158658))

(assert (= (and d!1929766 c!1108991) b!6158657))

(assert (= (and d!1929766 (not c!1108991)) b!6158661))

(assert (= (and b!6158661 c!1108990) b!6158660))

(assert (= (and b!6158661 (not c!1108990)) b!6158659))

(assert (= (or b!6158657 b!6158660) bm!512733))

(declare-fun m!6996956 () Bool)

(assert (=> b!6158657 m!6996956))

(declare-fun m!6996958 () Bool)

(assert (=> b!6158658 m!6996958))

(declare-fun m!6996960 () Bool)

(assert (=> bm!512733 m!6996960))

(assert (=> b!6157910 d!1929766))

(assert (=> d!1929400 d!1929606))

(assert (=> b!6157673 d!1929428))

(declare-fun bm!512734 () Bool)

(declare-fun call!512739 () Bool)

(declare-fun call!512740 () Bool)

(assert (=> bm!512734 (= call!512739 call!512740)))

(declare-fun c!1108993 () Bool)

(declare-fun bm!512735 () Bool)

(declare-fun c!1108992 () Bool)

(assert (=> bm!512735 (= call!512740 (validRegex!7836 (ite c!1108993 (reg!16429 (ite c!1108803 (reg!16429 r!7292) (ite c!1108802 (regTwo!32713 r!7292) (regTwo!32712 r!7292)))) (ite c!1108992 (regTwo!32713 (ite c!1108803 (reg!16429 r!7292) (ite c!1108802 (regTwo!32713 r!7292) (regTwo!32712 r!7292)))) (regTwo!32712 (ite c!1108803 (reg!16429 r!7292) (ite c!1108802 (regTwo!32713 r!7292) (regTwo!32712 r!7292))))))))))

(declare-fun b!6158662 () Bool)

(declare-fun e!3752371 () Bool)

(assert (=> b!6158662 (= e!3752371 call!512740)))

(declare-fun b!6158663 () Bool)

(declare-fun e!3752369 () Bool)

(declare-fun e!3752372 () Bool)

(assert (=> b!6158663 (= e!3752369 e!3752372)))

(assert (=> b!6158663 (= c!1108992 (is-Union!16100 (ite c!1108803 (reg!16429 r!7292) (ite c!1108802 (regTwo!32713 r!7292) (regTwo!32712 r!7292)))))))

(declare-fun b!6158664 () Bool)

(declare-fun res!2550534 () Bool)

(declare-fun e!3752370 () Bool)

(assert (=> b!6158664 (=> res!2550534 e!3752370)))

(assert (=> b!6158664 (= res!2550534 (not (is-Concat!24945 (ite c!1108803 (reg!16429 r!7292) (ite c!1108802 (regTwo!32713 r!7292) (regTwo!32712 r!7292))))))))

(assert (=> b!6158664 (= e!3752372 e!3752370)))

(declare-fun b!6158665 () Bool)

(declare-fun e!3752367 () Bool)

(assert (=> b!6158665 (= e!3752367 call!512739)))

(declare-fun bm!512736 () Bool)

(declare-fun call!512741 () Bool)

(assert (=> bm!512736 (= call!512741 (validRegex!7836 (ite c!1108992 (regOne!32713 (ite c!1108803 (reg!16429 r!7292) (ite c!1108802 (regTwo!32713 r!7292) (regTwo!32712 r!7292)))) (regOne!32712 (ite c!1108803 (reg!16429 r!7292) (ite c!1108802 (regTwo!32713 r!7292) (regTwo!32712 r!7292)))))))))

(declare-fun b!6158666 () Bool)

(assert (=> b!6158666 (= e!3752369 e!3752371)))

(declare-fun res!2550535 () Bool)

(assert (=> b!6158666 (= res!2550535 (not (nullable!6093 (reg!16429 (ite c!1108803 (reg!16429 r!7292) (ite c!1108802 (regTwo!32713 r!7292) (regTwo!32712 r!7292)))))))))

(assert (=> b!6158666 (=> (not res!2550535) (not e!3752371))))

(declare-fun b!6158667 () Bool)

(declare-fun e!3752373 () Bool)

(assert (=> b!6158667 (= e!3752370 e!3752373)))

(declare-fun res!2550533 () Bool)

(assert (=> b!6158667 (=> (not res!2550533) (not e!3752373))))

(assert (=> b!6158667 (= res!2550533 call!512741)))

(declare-fun b!6158668 () Bool)

(declare-fun e!3752368 () Bool)

(assert (=> b!6158668 (= e!3752368 e!3752369)))

(assert (=> b!6158668 (= c!1108993 (is-Star!16100 (ite c!1108803 (reg!16429 r!7292) (ite c!1108802 (regTwo!32713 r!7292) (regTwo!32712 r!7292)))))))

(declare-fun d!1929768 () Bool)

(declare-fun res!2550536 () Bool)

(assert (=> d!1929768 (=> res!2550536 e!3752368)))

(assert (=> d!1929768 (= res!2550536 (is-ElementMatch!16100 (ite c!1108803 (reg!16429 r!7292) (ite c!1108802 (regTwo!32713 r!7292) (regTwo!32712 r!7292)))))))

(assert (=> d!1929768 (= (validRegex!7836 (ite c!1108803 (reg!16429 r!7292) (ite c!1108802 (regTwo!32713 r!7292) (regTwo!32712 r!7292)))) e!3752368)))

(declare-fun b!6158669 () Bool)

(assert (=> b!6158669 (= e!3752373 call!512739)))

(declare-fun b!6158670 () Bool)

(declare-fun res!2550532 () Bool)

(assert (=> b!6158670 (=> (not res!2550532) (not e!3752367))))

(assert (=> b!6158670 (= res!2550532 call!512741)))

(assert (=> b!6158670 (= e!3752372 e!3752367)))

(assert (= (and d!1929768 (not res!2550536)) b!6158668))

(assert (= (and b!6158668 c!1108993) b!6158666))

(assert (= (and b!6158668 (not c!1108993)) b!6158663))

(assert (= (and b!6158666 res!2550535) b!6158662))

(assert (= (and b!6158663 c!1108992) b!6158670))

(assert (= (and b!6158663 (not c!1108992)) b!6158664))

(assert (= (and b!6158670 res!2550532) b!6158665))

(assert (= (and b!6158664 (not res!2550534)) b!6158667))

(assert (= (and b!6158667 res!2550533) b!6158669))

(assert (= (or b!6158665 b!6158669) bm!512734))

(assert (= (or b!6158670 b!6158667) bm!512736))

(assert (= (or b!6158662 bm!512734) bm!512735))

(declare-fun m!6996962 () Bool)

(assert (=> bm!512735 m!6996962))

(declare-fun m!6996964 () Bool)

(assert (=> bm!512736 m!6996964))

(declare-fun m!6996966 () Bool)

(assert (=> b!6158666 m!6996966))

(assert (=> bm!512627 d!1929768))

(declare-fun e!3752376 () (Set Context!10968))

(declare-fun b!6158671 () Bool)

(declare-fun call!512742 () (Set Context!10968))

(assert (=> b!6158671 (= e!3752376 (set.union call!512742 (derivationStepZipperUp!1274 (Context!10969 (t!378094 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335351)))))) (h!70923 s!2326))))))

(declare-fun d!1929770 () Bool)

(declare-fun c!1108995 () Bool)

(declare-fun e!3752375 () Bool)

(assert (=> d!1929770 (= c!1108995 e!3752375)))

(declare-fun res!2550537 () Bool)

(assert (=> d!1929770 (=> (not res!2550537) (not e!3752375))))

(assert (=> d!1929770 (= res!2550537 (is-Cons!64476 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335351))))))))

(assert (=> d!1929770 (= (derivationStepZipperUp!1274 (Context!10969 (t!378094 (exprs!5984 lt!2335351))) (h!70923 s!2326)) e!3752376)))

(declare-fun b!6158672 () Bool)

(assert (=> b!6158672 (= e!3752375 (nullable!6093 (h!70924 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335351)))))))))

(declare-fun b!6158673 () Bool)

(declare-fun e!3752374 () (Set Context!10968))

(assert (=> b!6158673 (= e!3752374 (as set.empty (Set Context!10968)))))

(declare-fun b!6158674 () Bool)

(assert (=> b!6158674 (= e!3752374 call!512742)))

(declare-fun b!6158675 () Bool)

(assert (=> b!6158675 (= e!3752376 e!3752374)))

(declare-fun c!1108994 () Bool)

(assert (=> b!6158675 (= c!1108994 (is-Cons!64476 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335351))))))))

(declare-fun bm!512737 () Bool)

(assert (=> bm!512737 (= call!512742 (derivationStepZipperDown!1348 (h!70924 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335351))))) (Context!10969 (t!378094 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335351)))))) (h!70923 s!2326)))))

(assert (= (and d!1929770 res!2550537) b!6158672))

(assert (= (and d!1929770 c!1108995) b!6158671))

(assert (= (and d!1929770 (not c!1108995)) b!6158675))

(assert (= (and b!6158675 c!1108994) b!6158674))

(assert (= (and b!6158675 (not c!1108994)) b!6158673))

(assert (= (or b!6158671 b!6158674) bm!512737))

(declare-fun m!6996968 () Bool)

(assert (=> b!6158671 m!6996968))

(declare-fun m!6996970 () Bool)

(assert (=> b!6158672 m!6996970))

(declare-fun m!6996972 () Bool)

(assert (=> bm!512737 m!6996972))

(assert (=> b!6157905 d!1929770))

(declare-fun bs!1526340 () Bool)

(declare-fun d!1929772 () Bool)

(assert (= bs!1526340 (and d!1929772 d!1929434)))

(declare-fun lambda!336034 () Int)

(assert (=> bs!1526340 (= lambda!336034 lambda!335972)))

(declare-fun bs!1526341 () Bool)

(assert (= bs!1526341 (and d!1929772 d!1929388)))

(assert (=> bs!1526341 (= lambda!336034 lambda!335955)))

(declare-fun bs!1526342 () Bool)

(assert (= bs!1526342 (and d!1929772 d!1929642)))

(assert (=> bs!1526342 (= lambda!336034 lambda!336015)))

(declare-fun bs!1526343 () Bool)

(assert (= bs!1526343 (and d!1929772 d!1929386)))

(assert (=> bs!1526343 (= lambda!336034 lambda!335952)))

(declare-fun bs!1526344 () Bool)

(assert (= bs!1526344 (and d!1929772 d!1929430)))

(assert (=> bs!1526344 (= lambda!336034 lambda!335969)))

(declare-fun bs!1526345 () Bool)

(assert (= bs!1526345 (and d!1929772 d!1929392)))

(assert (=> bs!1526345 (= lambda!336034 lambda!335958)))

(declare-fun bs!1526346 () Bool)

(assert (= bs!1526346 (and d!1929772 d!1929398)))

(assert (=> bs!1526346 (= lambda!336034 lambda!335959)))

(declare-fun e!3752379 () Bool)

(assert (=> d!1929772 e!3752379))

(declare-fun res!2550539 () Bool)

(assert (=> d!1929772 (=> (not res!2550539) (not e!3752379))))

(declare-fun lt!2335557 () Regex!16100)

(assert (=> d!1929772 (= res!2550539 (validRegex!7836 lt!2335557))))

(declare-fun e!3752378 () Regex!16100)

(assert (=> d!1929772 (= lt!2335557 e!3752378)))

(declare-fun c!1108996 () Bool)

(declare-fun e!3752380 () Bool)

(assert (=> d!1929772 (= c!1108996 e!3752380)))

(declare-fun res!2550538 () Bool)

(assert (=> d!1929772 (=> (not res!2550538) (not e!3752380))))

(assert (=> d!1929772 (= res!2550538 (is-Cons!64476 (t!378094 (exprs!5984 (h!70925 zl!343)))))))

(assert (=> d!1929772 (forall!15221 (t!378094 (exprs!5984 (h!70925 zl!343))) lambda!336034)))

(assert (=> d!1929772 (= (generalisedConcat!1697 (t!378094 (exprs!5984 (h!70925 zl!343)))) lt!2335557)))

(declare-fun b!6158676 () Bool)

(declare-fun e!3752382 () Regex!16100)

(assert (=> b!6158676 (= e!3752382 EmptyExpr!16100)))

(declare-fun b!6158677 () Bool)

(declare-fun e!3752381 () Bool)

(assert (=> b!6158677 (= e!3752381 (isEmptyExpr!1517 lt!2335557))))

(declare-fun b!6158678 () Bool)

(assert (=> b!6158678 (= e!3752378 (h!70924 (t!378094 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun b!6158679 () Bool)

(assert (=> b!6158679 (= e!3752382 (Concat!24945 (h!70924 (t!378094 (exprs!5984 (h!70925 zl!343)))) (generalisedConcat!1697 (t!378094 (t!378094 (exprs!5984 (h!70925 zl!343)))))))))

(declare-fun b!6158680 () Bool)

(assert (=> b!6158680 (= e!3752378 e!3752382)))

(declare-fun c!1108998 () Bool)

(assert (=> b!6158680 (= c!1108998 (is-Cons!64476 (t!378094 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun b!6158681 () Bool)

(declare-fun e!3752377 () Bool)

(assert (=> b!6158681 (= e!3752381 e!3752377)))

(declare-fun c!1108999 () Bool)

(assert (=> b!6158681 (= c!1108999 (isEmpty!36443 (tail!11806 (t!378094 (exprs!5984 (h!70925 zl!343))))))))

(declare-fun b!6158682 () Bool)

(assert (=> b!6158682 (= e!3752377 (= lt!2335557 (head!12721 (t!378094 (exprs!5984 (h!70925 zl!343))))))))

(declare-fun b!6158683 () Bool)

(assert (=> b!6158683 (= e!3752377 (isConcat!1040 lt!2335557))))

(declare-fun b!6158684 () Bool)

(assert (=> b!6158684 (= e!3752380 (isEmpty!36443 (t!378094 (t!378094 (exprs!5984 (h!70925 zl!343))))))))

(declare-fun b!6158685 () Bool)

(assert (=> b!6158685 (= e!3752379 e!3752381)))

(declare-fun c!1108997 () Bool)

(assert (=> b!6158685 (= c!1108997 (isEmpty!36443 (t!378094 (exprs!5984 (h!70925 zl!343)))))))

(assert (= (and d!1929772 res!2550538) b!6158684))

(assert (= (and d!1929772 c!1108996) b!6158678))

(assert (= (and d!1929772 (not c!1108996)) b!6158680))

(assert (= (and b!6158680 c!1108998) b!6158679))

(assert (= (and b!6158680 (not c!1108998)) b!6158676))

(assert (= (and d!1929772 res!2550539) b!6158685))

(assert (= (and b!6158685 c!1108997) b!6158677))

(assert (= (and b!6158685 (not c!1108997)) b!6158681))

(assert (= (and b!6158681 c!1108999) b!6158682))

(assert (= (and b!6158681 (not c!1108999)) b!6158683))

(assert (=> b!6158685 m!6995922))

(declare-fun m!6996974 () Bool)

(assert (=> b!6158679 m!6996974))

(declare-fun m!6996976 () Bool)

(assert (=> d!1929772 m!6996976))

(declare-fun m!6996978 () Bool)

(assert (=> d!1929772 m!6996978))

(declare-fun m!6996980 () Bool)

(assert (=> b!6158681 m!6996980))

(assert (=> b!6158681 m!6996980))

(declare-fun m!6996982 () Bool)

(assert (=> b!6158681 m!6996982))

(declare-fun m!6996984 () Bool)

(assert (=> b!6158682 m!6996984))

(declare-fun m!6996986 () Bool)

(assert (=> b!6158677 m!6996986))

(declare-fun m!6996988 () Bool)

(assert (=> b!6158684 m!6996988))

(declare-fun m!6996990 () Bool)

(assert (=> b!6158683 m!6996990))

(assert (=> b!6157784 d!1929772))

(declare-fun d!1929774 () Bool)

(declare-fun c!1109000 () Bool)

(assert (=> d!1929774 (= c!1109000 (isEmpty!36446 (tail!11807 (t!378093 s!2326))))))

(declare-fun e!3752383 () Bool)

(assert (=> d!1929774 (= (matchZipper!2112 (derivationStepZipper!2073 lt!2335350 (head!12722 (t!378093 s!2326))) (tail!11807 (t!378093 s!2326))) e!3752383)))

(declare-fun b!6158686 () Bool)

(assert (=> b!6158686 (= e!3752383 (nullableZipper!1881 (derivationStepZipper!2073 lt!2335350 (head!12722 (t!378093 s!2326)))))))

(declare-fun b!6158687 () Bool)

(assert (=> b!6158687 (= e!3752383 (matchZipper!2112 (derivationStepZipper!2073 (derivationStepZipper!2073 lt!2335350 (head!12722 (t!378093 s!2326))) (head!12722 (tail!11807 (t!378093 s!2326)))) (tail!11807 (tail!11807 (t!378093 s!2326)))))))

(assert (= (and d!1929774 c!1109000) b!6158686))

(assert (= (and d!1929774 (not c!1109000)) b!6158687))

(assert (=> d!1929774 m!6996178))

(assert (=> d!1929774 m!6996710))

(assert (=> b!6158686 m!6996186))

(declare-fun m!6996992 () Bool)

(assert (=> b!6158686 m!6996992))

(assert (=> b!6158687 m!6996178))

(assert (=> b!6158687 m!6996714))

(assert (=> b!6158687 m!6996186))

(assert (=> b!6158687 m!6996714))

(declare-fun m!6996994 () Bool)

(assert (=> b!6158687 m!6996994))

(assert (=> b!6158687 m!6996178))

(assert (=> b!6158687 m!6996718))

(assert (=> b!6158687 m!6996994))

(assert (=> b!6158687 m!6996718))

(declare-fun m!6996996 () Bool)

(assert (=> b!6158687 m!6996996))

(assert (=> b!6157665 d!1929774))

(declare-fun bs!1526347 () Bool)

(declare-fun d!1929776 () Bool)

(assert (= bs!1526347 (and d!1929776 b!6157462)))

(declare-fun lambda!336035 () Int)

(assert (=> bs!1526347 (= (= (head!12722 (t!378093 s!2326)) (h!70923 s!2326)) (= lambda!336035 lambda!335934))))

(declare-fun bs!1526348 () Bool)

(assert (= bs!1526348 (and d!1929776 d!1929738)))

(assert (=> bs!1526348 (= (= (head!12722 (t!378093 s!2326)) (head!12722 s!2326)) (= lambda!336035 lambda!336024))))

(declare-fun bs!1526349 () Bool)

(assert (= bs!1526349 (and d!1929776 d!1929764)))

(assert (=> bs!1526349 (= (= (head!12722 (t!378093 s!2326)) (head!12722 s!2326)) (= lambda!336035 lambda!336033))))

(declare-fun bs!1526350 () Bool)

(assert (= bs!1526350 (and d!1929776 d!1929614)))

(assert (=> bs!1526350 (= lambda!336035 lambda!336014)))

(declare-fun bs!1526351 () Bool)

(assert (= bs!1526351 (and d!1929776 d!1929716)))

(assert (=> bs!1526351 (= lambda!336035 lambda!336022)))

(declare-fun bs!1526352 () Bool)

(assert (= bs!1526352 (and d!1929776 d!1929678)))

(assert (=> bs!1526352 (= lambda!336035 lambda!336019)))

(declare-fun bs!1526353 () Bool)

(assert (= bs!1526353 (and d!1929776 d!1929674)))

(assert (=> bs!1526353 (= lambda!336035 lambda!336018)))

(assert (=> d!1929776 true))

(assert (=> d!1929776 (= (derivationStepZipper!2073 lt!2335350 (head!12722 (t!378093 s!2326))) (flatMap!1605 lt!2335350 lambda!336035))))

(declare-fun bs!1526354 () Bool)

(assert (= bs!1526354 d!1929776))

(declare-fun m!6996998 () Bool)

(assert (=> bs!1526354 m!6996998))

(assert (=> b!6157665 d!1929776))

(assert (=> b!6157665 d!1929616))

(assert (=> b!6157665 d!1929618))

(assert (=> d!1929410 d!1929606))

(declare-fun bs!1526355 () Bool)

(declare-fun d!1929778 () Bool)

(assert (= bs!1526355 (and d!1929778 d!1929692)))

(declare-fun lambda!336036 () Int)

(assert (=> bs!1526355 (= lambda!336036 lambda!336020)))

(declare-fun bs!1526356 () Bool)

(assert (= bs!1526356 (and d!1929778 d!1929718)))

(assert (=> bs!1526356 (= lambda!336036 lambda!336023)))

(declare-fun bs!1526357 () Bool)

(assert (= bs!1526357 (and d!1929778 d!1929704)))

(assert (=> bs!1526357 (= lambda!336036 lambda!336021)))

(declare-fun bs!1526358 () Bool)

(assert (= bs!1526358 (and d!1929778 d!1929610)))

(assert (=> bs!1526358 (= lambda!336036 lambda!336011)))

(declare-fun bs!1526359 () Bool)

(assert (= bs!1526359 (and d!1929778 d!1929648)))

(assert (=> bs!1526359 (= lambda!336036 lambda!336016)))

(declare-fun bs!1526360 () Bool)

(assert (= bs!1526360 (and d!1929778 d!1929608)))

(assert (=> bs!1526360 (= lambda!336036 lambda!336010)))

(declare-fun bs!1526361 () Bool)

(assert (= bs!1526361 (and d!1929778 d!1929668)))

(assert (=> bs!1526361 (= lambda!336036 lambda!336017)))

(assert (=> d!1929778 (= (nullableZipper!1881 (set.union lt!2335342 lt!2335358)) (exists!2445 (set.union lt!2335342 lt!2335358) lambda!336036))))

(declare-fun bs!1526362 () Bool)

(assert (= bs!1526362 d!1929778))

(declare-fun m!6997000 () Bool)

(assert (=> bs!1526362 m!6997000))

(assert (=> b!6157877 d!1929778))

(declare-fun b!6158688 () Bool)

(declare-fun e!3752388 () (Set Context!10968))

(declare-fun e!3752386 () (Set Context!10968))

(assert (=> b!6158688 (= e!3752388 e!3752386)))

(declare-fun c!1109004 () Bool)

(assert (=> b!6158688 (= c!1109004 (is-Union!16100 (h!70924 (exprs!5984 lt!2335344))))))

(declare-fun b!6158689 () Bool)

(declare-fun call!512747 () (Set Context!10968))

(declare-fun call!512748 () (Set Context!10968))

(assert (=> b!6158689 (= e!3752386 (set.union call!512747 call!512748))))

(declare-fun bm!512738 () Bool)

(declare-fun call!512746 () (Set Context!10968))

(assert (=> bm!512738 (= call!512746 call!512748)))

(declare-fun b!6158690 () Bool)

(declare-fun e!3752387 () (Set Context!10968))

(assert (=> b!6158690 (= e!3752387 (set.union call!512747 call!512746))))

(declare-fun b!6158691 () Bool)

(assert (=> b!6158691 (= e!3752388 (set.insert (Context!10969 (t!378094 (exprs!5984 lt!2335344))) (as set.empty (Set Context!10968))))))

(declare-fun d!1929780 () Bool)

(declare-fun c!1109001 () Bool)

(assert (=> d!1929780 (= c!1109001 (and (is-ElementMatch!16100 (h!70924 (exprs!5984 lt!2335344))) (= (c!1108675 (h!70924 (exprs!5984 lt!2335344))) (h!70923 s!2326))))))

(assert (=> d!1929780 (= (derivationStepZipperDown!1348 (h!70924 (exprs!5984 lt!2335344)) (Context!10969 (t!378094 (exprs!5984 lt!2335344))) (h!70923 s!2326)) e!3752388)))

(declare-fun b!6158692 () Bool)

(declare-fun e!3752385 () (Set Context!10968))

(declare-fun call!512745 () (Set Context!10968))

(assert (=> b!6158692 (= e!3752385 call!512745)))

(declare-fun call!512744 () List!64600)

(declare-fun c!1109002 () Bool)

(declare-fun c!1109003 () Bool)

(declare-fun bm!512739 () Bool)

(assert (=> bm!512739 (= call!512748 (derivationStepZipperDown!1348 (ite c!1109004 (regTwo!32713 (h!70924 (exprs!5984 lt!2335344))) (ite c!1109002 (regTwo!32712 (h!70924 (exprs!5984 lt!2335344))) (ite c!1109003 (regOne!32712 (h!70924 (exprs!5984 lt!2335344))) (reg!16429 (h!70924 (exprs!5984 lt!2335344)))))) (ite (or c!1109004 c!1109002) (Context!10969 (t!378094 (exprs!5984 lt!2335344))) (Context!10969 call!512744)) (h!70923 s!2326)))))

(declare-fun b!6158693 () Bool)

(declare-fun e!3752384 () (Set Context!10968))

(assert (=> b!6158693 (= e!3752387 e!3752384)))

(assert (=> b!6158693 (= c!1109003 (is-Concat!24945 (h!70924 (exprs!5984 lt!2335344))))))

(declare-fun b!6158694 () Bool)

(declare-fun c!1109005 () Bool)

(assert (=> b!6158694 (= c!1109005 (is-Star!16100 (h!70924 (exprs!5984 lt!2335344))))))

(assert (=> b!6158694 (= e!3752384 e!3752385)))

(declare-fun bm!512740 () Bool)

(assert (=> bm!512740 (= call!512745 call!512746)))

(declare-fun b!6158695 () Bool)

(declare-fun e!3752389 () Bool)

(assert (=> b!6158695 (= c!1109002 e!3752389)))

(declare-fun res!2550540 () Bool)

(assert (=> b!6158695 (=> (not res!2550540) (not e!3752389))))

(assert (=> b!6158695 (= res!2550540 (is-Concat!24945 (h!70924 (exprs!5984 lt!2335344))))))

(assert (=> b!6158695 (= e!3752386 e!3752387)))

(declare-fun call!512743 () List!64600)

(declare-fun bm!512741 () Bool)

(assert (=> bm!512741 (= call!512743 ($colon$colon!1977 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335344)))) (ite (or c!1109002 c!1109003) (regTwo!32712 (h!70924 (exprs!5984 lt!2335344))) (h!70924 (exprs!5984 lt!2335344)))))))

(declare-fun b!6158696 () Bool)

(assert (=> b!6158696 (= e!3752389 (nullable!6093 (regOne!32712 (h!70924 (exprs!5984 lt!2335344)))))))

(declare-fun b!6158697 () Bool)

(assert (=> b!6158697 (= e!3752385 (as set.empty (Set Context!10968)))))

(declare-fun b!6158698 () Bool)

(assert (=> b!6158698 (= e!3752384 call!512745)))

(declare-fun bm!512742 () Bool)

(assert (=> bm!512742 (= call!512747 (derivationStepZipperDown!1348 (ite c!1109004 (regOne!32713 (h!70924 (exprs!5984 lt!2335344))) (regOne!32712 (h!70924 (exprs!5984 lt!2335344)))) (ite c!1109004 (Context!10969 (t!378094 (exprs!5984 lt!2335344))) (Context!10969 call!512743)) (h!70923 s!2326)))))

(declare-fun bm!512743 () Bool)

(assert (=> bm!512743 (= call!512744 call!512743)))

(assert (= (and d!1929780 c!1109001) b!6158691))

(assert (= (and d!1929780 (not c!1109001)) b!6158688))

(assert (= (and b!6158688 c!1109004) b!6158689))

(assert (= (and b!6158688 (not c!1109004)) b!6158695))

(assert (= (and b!6158695 res!2550540) b!6158696))

(assert (= (and b!6158695 c!1109002) b!6158690))

(assert (= (and b!6158695 (not c!1109002)) b!6158693))

(assert (= (and b!6158693 c!1109003) b!6158698))

(assert (= (and b!6158693 (not c!1109003)) b!6158694))

(assert (= (and b!6158694 c!1109005) b!6158692))

(assert (= (and b!6158694 (not c!1109005)) b!6158697))

(assert (= (or b!6158698 b!6158692) bm!512743))

(assert (= (or b!6158698 b!6158692) bm!512740))

(assert (= (or b!6158690 bm!512743) bm!512741))

(assert (= (or b!6158690 bm!512740) bm!512738))

(assert (= (or b!6158689 bm!512738) bm!512739))

(assert (= (or b!6158689 b!6158690) bm!512742))

(declare-fun m!6997002 () Bool)

(assert (=> bm!512739 m!6997002))

(declare-fun m!6997004 () Bool)

(assert (=> b!6158691 m!6997004))

(declare-fun m!6997006 () Bool)

(assert (=> bm!512741 m!6997006))

(declare-fun m!6997008 () Bool)

(assert (=> bm!512742 m!6997008))

(declare-fun m!6997010 () Bool)

(assert (=> b!6158696 m!6997010))

(assert (=> bm!512618 d!1929780))

(declare-fun b!6158699 () Bool)

(declare-fun e!3752394 () (Set Context!10968))

(declare-fun e!3752392 () (Set Context!10968))

(assert (=> b!6158699 (= e!3752394 e!3752392)))

(declare-fun c!1109009 () Bool)

(assert (=> b!6158699 (= c!1109009 (is-Union!16100 (h!70924 (exprs!5984 lt!2335359))))))

(declare-fun b!6158700 () Bool)

(declare-fun call!512753 () (Set Context!10968))

(declare-fun call!512754 () (Set Context!10968))

(assert (=> b!6158700 (= e!3752392 (set.union call!512753 call!512754))))

(declare-fun bm!512744 () Bool)

(declare-fun call!512752 () (Set Context!10968))

(assert (=> bm!512744 (= call!512752 call!512754)))

(declare-fun b!6158701 () Bool)

(declare-fun e!3752393 () (Set Context!10968))

(assert (=> b!6158701 (= e!3752393 (set.union call!512753 call!512752))))

(declare-fun b!6158702 () Bool)

(assert (=> b!6158702 (= e!3752394 (set.insert (Context!10969 (t!378094 (exprs!5984 lt!2335359))) (as set.empty (Set Context!10968))))))

(declare-fun d!1929782 () Bool)

(declare-fun c!1109006 () Bool)

(assert (=> d!1929782 (= c!1109006 (and (is-ElementMatch!16100 (h!70924 (exprs!5984 lt!2335359))) (= (c!1108675 (h!70924 (exprs!5984 lt!2335359))) (h!70923 s!2326))))))

(assert (=> d!1929782 (= (derivationStepZipperDown!1348 (h!70924 (exprs!5984 lt!2335359)) (Context!10969 (t!378094 (exprs!5984 lt!2335359))) (h!70923 s!2326)) e!3752394)))

(declare-fun b!6158703 () Bool)

(declare-fun e!3752391 () (Set Context!10968))

(declare-fun call!512751 () (Set Context!10968))

(assert (=> b!6158703 (= e!3752391 call!512751)))

(declare-fun call!512750 () List!64600)

(declare-fun bm!512745 () Bool)

(declare-fun c!1109008 () Bool)

(declare-fun c!1109007 () Bool)

(assert (=> bm!512745 (= call!512754 (derivationStepZipperDown!1348 (ite c!1109009 (regTwo!32713 (h!70924 (exprs!5984 lt!2335359))) (ite c!1109007 (regTwo!32712 (h!70924 (exprs!5984 lt!2335359))) (ite c!1109008 (regOne!32712 (h!70924 (exprs!5984 lt!2335359))) (reg!16429 (h!70924 (exprs!5984 lt!2335359)))))) (ite (or c!1109009 c!1109007) (Context!10969 (t!378094 (exprs!5984 lt!2335359))) (Context!10969 call!512750)) (h!70923 s!2326)))))

(declare-fun b!6158704 () Bool)

(declare-fun e!3752390 () (Set Context!10968))

(assert (=> b!6158704 (= e!3752393 e!3752390)))

(assert (=> b!6158704 (= c!1109008 (is-Concat!24945 (h!70924 (exprs!5984 lt!2335359))))))

(declare-fun b!6158705 () Bool)

(declare-fun c!1109010 () Bool)

(assert (=> b!6158705 (= c!1109010 (is-Star!16100 (h!70924 (exprs!5984 lt!2335359))))))

(assert (=> b!6158705 (= e!3752390 e!3752391)))

(declare-fun bm!512746 () Bool)

(assert (=> bm!512746 (= call!512751 call!512752)))

(declare-fun b!6158706 () Bool)

(declare-fun e!3752395 () Bool)

(assert (=> b!6158706 (= c!1109007 e!3752395)))

(declare-fun res!2550541 () Bool)

(assert (=> b!6158706 (=> (not res!2550541) (not e!3752395))))

(assert (=> b!6158706 (= res!2550541 (is-Concat!24945 (h!70924 (exprs!5984 lt!2335359))))))

(assert (=> b!6158706 (= e!3752392 e!3752393)))

(declare-fun call!512749 () List!64600)

(declare-fun bm!512747 () Bool)

(assert (=> bm!512747 (= call!512749 ($colon$colon!1977 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335359)))) (ite (or c!1109007 c!1109008) (regTwo!32712 (h!70924 (exprs!5984 lt!2335359))) (h!70924 (exprs!5984 lt!2335359)))))))

(declare-fun b!6158707 () Bool)

(assert (=> b!6158707 (= e!3752395 (nullable!6093 (regOne!32712 (h!70924 (exprs!5984 lt!2335359)))))))

(declare-fun b!6158708 () Bool)

(assert (=> b!6158708 (= e!3752391 (as set.empty (Set Context!10968)))))

(declare-fun b!6158709 () Bool)

(assert (=> b!6158709 (= e!3752390 call!512751)))

(declare-fun bm!512748 () Bool)

(assert (=> bm!512748 (= call!512753 (derivationStepZipperDown!1348 (ite c!1109009 (regOne!32713 (h!70924 (exprs!5984 lt!2335359))) (regOne!32712 (h!70924 (exprs!5984 lt!2335359)))) (ite c!1109009 (Context!10969 (t!378094 (exprs!5984 lt!2335359))) (Context!10969 call!512749)) (h!70923 s!2326)))))

(declare-fun bm!512749 () Bool)

(assert (=> bm!512749 (= call!512750 call!512749)))

(assert (= (and d!1929782 c!1109006) b!6158702))

(assert (= (and d!1929782 (not c!1109006)) b!6158699))

(assert (= (and b!6158699 c!1109009) b!6158700))

(assert (= (and b!6158699 (not c!1109009)) b!6158706))

(assert (= (and b!6158706 res!2550541) b!6158707))

(assert (= (and b!6158706 c!1109007) b!6158701))

(assert (= (and b!6158706 (not c!1109007)) b!6158704))

(assert (= (and b!6158704 c!1109008) b!6158709))

(assert (= (and b!6158704 (not c!1109008)) b!6158705))

(assert (= (and b!6158705 c!1109010) b!6158703))

(assert (= (and b!6158705 (not c!1109010)) b!6158708))

(assert (= (or b!6158709 b!6158703) bm!512749))

(assert (= (or b!6158709 b!6158703) bm!512746))

(assert (= (or b!6158701 bm!512749) bm!512747))

(assert (= (or b!6158701 bm!512746) bm!512744))

(assert (= (or b!6158700 bm!512744) bm!512745))

(assert (= (or b!6158700 b!6158701) bm!512748))

(declare-fun m!6997012 () Bool)

(assert (=> bm!512745 m!6997012))

(declare-fun m!6997014 () Bool)

(assert (=> b!6158702 m!6997014))

(declare-fun m!6997016 () Bool)

(assert (=> bm!512747 m!6997016))

(declare-fun m!6997018 () Bool)

(assert (=> bm!512748 m!6997018))

(declare-fun m!6997020 () Bool)

(assert (=> b!6158707 m!6997020))

(assert (=> bm!512619 d!1929782))

(declare-fun b!6158710 () Bool)

(declare-fun res!2550548 () Bool)

(declare-fun e!3752401 () Bool)

(assert (=> b!6158710 (=> (not res!2550548) (not e!3752401))))

(declare-fun call!512755 () Bool)

(assert (=> b!6158710 (= res!2550548 (not call!512755))))

(declare-fun b!6158711 () Bool)

(declare-fun res!2550544 () Bool)

(declare-fun e!3752397 () Bool)

(assert (=> b!6158711 (=> res!2550544 e!3752397)))

(assert (=> b!6158711 (= res!2550544 (not (isEmpty!36446 (tail!11807 (_2!36382 (get!22252 lt!2335473))))))))

(declare-fun b!6158712 () Bool)

(declare-fun res!2550543 () Bool)

(assert (=> b!6158712 (=> (not res!2550543) (not e!3752401))))

(assert (=> b!6158712 (= res!2550543 (isEmpty!36446 (tail!11807 (_2!36382 (get!22252 lt!2335473)))))))

(declare-fun bm!512750 () Bool)

(assert (=> bm!512750 (= call!512755 (isEmpty!36446 (_2!36382 (get!22252 lt!2335473))))))

(declare-fun b!6158713 () Bool)

(declare-fun e!3752399 () Bool)

(assert (=> b!6158713 (= e!3752399 e!3752397)))

(declare-fun res!2550549 () Bool)

(assert (=> b!6158713 (=> res!2550549 e!3752397)))

(assert (=> b!6158713 (= res!2550549 call!512755)))

(declare-fun b!6158714 () Bool)

(assert (=> b!6158714 (= e!3752397 (not (= (head!12722 (_2!36382 (get!22252 lt!2335473))) (c!1108675 (regTwo!32712 r!7292)))))))

(declare-fun d!1929784 () Bool)

(declare-fun e!3752400 () Bool)

(assert (=> d!1929784 e!3752400))

(declare-fun c!1109012 () Bool)

(assert (=> d!1929784 (= c!1109012 (is-EmptyExpr!16100 (regTwo!32712 r!7292)))))

(declare-fun lt!2335558 () Bool)

(declare-fun e!3752396 () Bool)

(assert (=> d!1929784 (= lt!2335558 e!3752396)))

(declare-fun c!1109011 () Bool)

(assert (=> d!1929784 (= c!1109011 (isEmpty!36446 (_2!36382 (get!22252 lt!2335473))))))

(assert (=> d!1929784 (validRegex!7836 (regTwo!32712 r!7292))))

(assert (=> d!1929784 (= (matchR!8283 (regTwo!32712 r!7292) (_2!36382 (get!22252 lt!2335473))) lt!2335558)))

(declare-fun b!6158715 () Bool)

(declare-fun res!2550545 () Bool)

(declare-fun e!3752402 () Bool)

(assert (=> b!6158715 (=> res!2550545 e!3752402)))

(assert (=> b!6158715 (= res!2550545 e!3752401)))

(declare-fun res!2550542 () Bool)

(assert (=> b!6158715 (=> (not res!2550542) (not e!3752401))))

(assert (=> b!6158715 (= res!2550542 lt!2335558)))

(declare-fun b!6158716 () Bool)

(assert (=> b!6158716 (= e!3752396 (matchR!8283 (derivativeStep!4820 (regTwo!32712 r!7292) (head!12722 (_2!36382 (get!22252 lt!2335473)))) (tail!11807 (_2!36382 (get!22252 lt!2335473)))))))

(declare-fun b!6158717 () Bool)

(assert (=> b!6158717 (= e!3752402 e!3752399)))

(declare-fun res!2550546 () Bool)

(assert (=> b!6158717 (=> (not res!2550546) (not e!3752399))))

(assert (=> b!6158717 (= res!2550546 (not lt!2335558))))

(declare-fun b!6158718 () Bool)

(declare-fun res!2550547 () Bool)

(assert (=> b!6158718 (=> res!2550547 e!3752402)))

(assert (=> b!6158718 (= res!2550547 (not (is-ElementMatch!16100 (regTwo!32712 r!7292))))))

(declare-fun e!3752398 () Bool)

(assert (=> b!6158718 (= e!3752398 e!3752402)))

(declare-fun b!6158719 () Bool)

(assert (=> b!6158719 (= e!3752400 e!3752398)))

(declare-fun c!1109013 () Bool)

(assert (=> b!6158719 (= c!1109013 (is-EmptyLang!16100 (regTwo!32712 r!7292)))))

(declare-fun b!6158720 () Bool)

(assert (=> b!6158720 (= e!3752401 (= (head!12722 (_2!36382 (get!22252 lt!2335473))) (c!1108675 (regTwo!32712 r!7292))))))

(declare-fun b!6158721 () Bool)

(assert (=> b!6158721 (= e!3752398 (not lt!2335558))))

(declare-fun b!6158722 () Bool)

(assert (=> b!6158722 (= e!3752396 (nullable!6093 (regTwo!32712 r!7292)))))

(declare-fun b!6158723 () Bool)

(assert (=> b!6158723 (= e!3752400 (= lt!2335558 call!512755))))

(assert (= (and d!1929784 c!1109011) b!6158722))

(assert (= (and d!1929784 (not c!1109011)) b!6158716))

(assert (= (and d!1929784 c!1109012) b!6158723))

(assert (= (and d!1929784 (not c!1109012)) b!6158719))

(assert (= (and b!6158719 c!1109013) b!6158721))

(assert (= (and b!6158719 (not c!1109013)) b!6158718))

(assert (= (and b!6158718 (not res!2550547)) b!6158715))

(assert (= (and b!6158715 res!2550542) b!6158710))

(assert (= (and b!6158710 res!2550548) b!6158712))

(assert (= (and b!6158712 res!2550543) b!6158720))

(assert (= (and b!6158715 (not res!2550545)) b!6158717))

(assert (= (and b!6158717 res!2550546) b!6158713))

(assert (= (and b!6158713 (not res!2550549)) b!6158711))

(assert (= (and b!6158711 (not res!2550544)) b!6158714))

(assert (= (or b!6158723 b!6158710 b!6158713) bm!512750))

(declare-fun m!6997022 () Bool)

(assert (=> bm!512750 m!6997022))

(assert (=> b!6158722 m!6996772))

(declare-fun m!6997024 () Bool)

(assert (=> b!6158716 m!6997024))

(assert (=> b!6158716 m!6997024))

(declare-fun m!6997026 () Bool)

(assert (=> b!6158716 m!6997026))

(declare-fun m!6997028 () Bool)

(assert (=> b!6158716 m!6997028))

(assert (=> b!6158716 m!6997026))

(assert (=> b!6158716 m!6997028))

(declare-fun m!6997030 () Bool)

(assert (=> b!6158716 m!6997030))

(assert (=> b!6158720 m!6997024))

(assert (=> d!1929784 m!6997022))

(assert (=> d!1929784 m!6996778))

(assert (=> b!6158712 m!6997028))

(assert (=> b!6158712 m!6997028))

(declare-fun m!6997032 () Bool)

(assert (=> b!6158712 m!6997032))

(assert (=> b!6158711 m!6997028))

(assert (=> b!6158711 m!6997028))

(assert (=> b!6158711 m!6997032))

(assert (=> b!6158714 m!6997024))

(assert (=> b!6157695 d!1929784))

(assert (=> b!6157695 d!1929700))

(assert (=> b!6157866 d!1929654))

(assert (=> d!1929418 d!1929412))

(assert (=> d!1929418 d!1929684))

(assert (=> d!1929418 d!1929422))

(declare-fun d!1929786 () Bool)

(assert (=> d!1929786 (= (Exists!3170 lambda!335962) (choose!45777 lambda!335962))))

(declare-fun bs!1526363 () Bool)

(assert (= bs!1526363 d!1929786))

(declare-fun m!6997034 () Bool)

(assert (=> bs!1526363 m!6997034))

(assert (=> d!1929418 d!1929786))

(declare-fun bs!1526364 () Bool)

(declare-fun d!1929788 () Bool)

(assert (= bs!1526364 (and d!1929788 d!1929418)))

(declare-fun lambda!336039 () Int)

(assert (=> bs!1526364 (= lambda!336039 lambda!335962)))

(declare-fun bs!1526365 () Bool)

(assert (= bs!1526365 (and d!1929788 b!6157455)))

(assert (=> bs!1526365 (= lambda!336039 lambda!335932)))

(declare-fun bs!1526366 () Bool)

(assert (= bs!1526366 (and d!1929788 d!1929420)))

(assert (=> bs!1526366 (= lambda!336039 lambda!335967)))

(declare-fun bs!1526367 () Bool)

(assert (= bs!1526367 (and d!1929788 d!1929760)))

(assert (=> bs!1526367 (not (= lambda!336039 lambda!336032))))

(assert (=> bs!1526365 (not (= lambda!336039 lambda!335933))))

(declare-fun bs!1526368 () Bool)

(assert (= bs!1526368 (and d!1929788 b!6157830)))

(assert (=> bs!1526368 (not (= lambda!336039 lambda!335977))))

(assert (=> bs!1526367 (= lambda!336039 lambda!336031)))

(declare-fun bs!1526369 () Bool)

(assert (= bs!1526369 (and d!1929788 b!6158643)))

(assert (=> bs!1526369 (not (= lambda!336039 lambda!336025))))

(declare-fun bs!1526370 () Bool)

(assert (= bs!1526370 (and d!1929788 b!6157828)))

(assert (=> bs!1526370 (not (= lambda!336039 lambda!335978))))

(assert (=> bs!1526366 (not (= lambda!336039 lambda!335968))))

(declare-fun bs!1526371 () Bool)

(assert (= bs!1526371 (and d!1929788 b!6158641)))

(assert (=> bs!1526371 (not (= lambda!336039 lambda!336026))))

(assert (=> d!1929788 true))

(assert (=> d!1929788 true))

(assert (=> d!1929788 true))

(assert (=> d!1929788 (= (isDefined!12694 (findConcatSeparation!2405 (regOne!32712 r!7292) (regTwo!32712 r!7292) Nil!64475 s!2326 s!2326)) (Exists!3170 lambda!336039))))

(assert (=> d!1929788 true))

(declare-fun _$89!2278 () Unit!157579)

(assert (=> d!1929788 (= (choose!45778 (regOne!32712 r!7292) (regTwo!32712 r!7292) s!2326) _$89!2278)))

(declare-fun bs!1526372 () Bool)

(assert (= bs!1526372 d!1929788))

(assert (=> bs!1526372 m!6995976))

(assert (=> bs!1526372 m!6995976))

(assert (=> bs!1526372 m!6995978))

(declare-fun m!6997036 () Bool)

(assert (=> bs!1526372 m!6997036))

(assert (=> d!1929418 d!1929788))

(declare-fun bs!1526373 () Bool)

(declare-fun d!1929790 () Bool)

(assert (= bs!1526373 (and d!1929790 d!1929692)))

(declare-fun lambda!336040 () Int)

(assert (=> bs!1526373 (= lambda!336040 lambda!336020)))

(declare-fun bs!1526374 () Bool)

(assert (= bs!1526374 (and d!1929790 d!1929718)))

(assert (=> bs!1526374 (= lambda!336040 lambda!336023)))

(declare-fun bs!1526375 () Bool)

(assert (= bs!1526375 (and d!1929790 d!1929704)))

(assert (=> bs!1526375 (= lambda!336040 lambda!336021)))

(declare-fun bs!1526376 () Bool)

(assert (= bs!1526376 (and d!1929790 d!1929778)))

(assert (=> bs!1526376 (= lambda!336040 lambda!336036)))

(declare-fun bs!1526377 () Bool)

(assert (= bs!1526377 (and d!1929790 d!1929610)))

(assert (=> bs!1526377 (= lambda!336040 lambda!336011)))

(declare-fun bs!1526378 () Bool)

(assert (= bs!1526378 (and d!1929790 d!1929648)))

(assert (=> bs!1526378 (= lambda!336040 lambda!336016)))

(declare-fun bs!1526379 () Bool)

(assert (= bs!1526379 (and d!1929790 d!1929608)))

(assert (=> bs!1526379 (= lambda!336040 lambda!336010)))

(declare-fun bs!1526380 () Bool)

(assert (= bs!1526380 (and d!1929790 d!1929668)))

(assert (=> bs!1526380 (= lambda!336040 lambda!336017)))

(assert (=> d!1929790 (= (nullableZipper!1881 lt!2335352) (exists!2445 lt!2335352 lambda!336040))))

(declare-fun bs!1526381 () Bool)

(assert (= bs!1526381 d!1929790))

(declare-fun m!6997038 () Bool)

(assert (=> bs!1526381 m!6997038))

(assert (=> b!6157657 d!1929790))

(assert (=> d!1929440 d!1929624))

(assert (=> d!1929440 d!1929484))

(assert (=> bs!1526198 d!1929478))

(declare-fun d!1929792 () Bool)

(assert (=> d!1929792 (= (isConcat!1040 lt!2335483) (is-Concat!24945 lt!2335483))))

(assert (=> b!6157788 d!1929792))

(declare-fun d!1929794 () Bool)

(declare-fun c!1109014 () Bool)

(assert (=> d!1929794 (= c!1109014 (isEmpty!36446 (tail!11807 (t!378093 s!2326))))))

(declare-fun e!3752405 () Bool)

(assert (=> d!1929794 (= (matchZipper!2112 (derivationStepZipper!2073 (set.union lt!2335350 lt!2335358) (head!12722 (t!378093 s!2326))) (tail!11807 (t!378093 s!2326))) e!3752405)))

(declare-fun b!6158728 () Bool)

(assert (=> b!6158728 (= e!3752405 (nullableZipper!1881 (derivationStepZipper!2073 (set.union lt!2335350 lt!2335358) (head!12722 (t!378093 s!2326)))))))

(declare-fun b!6158729 () Bool)

(assert (=> b!6158729 (= e!3752405 (matchZipper!2112 (derivationStepZipper!2073 (derivationStepZipper!2073 (set.union lt!2335350 lt!2335358) (head!12722 (t!378093 s!2326))) (head!12722 (tail!11807 (t!378093 s!2326)))) (tail!11807 (tail!11807 (t!378093 s!2326)))))))

(assert (= (and d!1929794 c!1109014) b!6158728))

(assert (= (and d!1929794 (not c!1109014)) b!6158729))

(assert (=> d!1929794 m!6996178))

(assert (=> d!1929794 m!6996710))

(assert (=> b!6158728 m!6996210))

(declare-fun m!6997040 () Bool)

(assert (=> b!6158728 m!6997040))

(assert (=> b!6158729 m!6996178))

(assert (=> b!6158729 m!6996714))

(assert (=> b!6158729 m!6996210))

(assert (=> b!6158729 m!6996714))

(declare-fun m!6997042 () Bool)

(assert (=> b!6158729 m!6997042))

(assert (=> b!6158729 m!6996178))

(assert (=> b!6158729 m!6996718))

(assert (=> b!6158729 m!6997042))

(assert (=> b!6158729 m!6996718))

(declare-fun m!6997044 () Bool)

(assert (=> b!6158729 m!6997044))

(assert (=> b!6157675 d!1929794))

(declare-fun bs!1526382 () Bool)

(declare-fun d!1929796 () Bool)

(assert (= bs!1526382 (and d!1929796 b!6157462)))

(declare-fun lambda!336041 () Int)

(assert (=> bs!1526382 (= (= (head!12722 (t!378093 s!2326)) (h!70923 s!2326)) (= lambda!336041 lambda!335934))))

(declare-fun bs!1526383 () Bool)

(assert (= bs!1526383 (and d!1929796 d!1929738)))

(assert (=> bs!1526383 (= (= (head!12722 (t!378093 s!2326)) (head!12722 s!2326)) (= lambda!336041 lambda!336024))))

(declare-fun bs!1526384 () Bool)

(assert (= bs!1526384 (and d!1929796 d!1929764)))

(assert (=> bs!1526384 (= (= (head!12722 (t!378093 s!2326)) (head!12722 s!2326)) (= lambda!336041 lambda!336033))))

(declare-fun bs!1526385 () Bool)

(assert (= bs!1526385 (and d!1929796 d!1929776)))

(assert (=> bs!1526385 (= lambda!336041 lambda!336035)))

(declare-fun bs!1526386 () Bool)

(assert (= bs!1526386 (and d!1929796 d!1929614)))

(assert (=> bs!1526386 (= lambda!336041 lambda!336014)))

(declare-fun bs!1526387 () Bool)

(assert (= bs!1526387 (and d!1929796 d!1929716)))

(assert (=> bs!1526387 (= lambda!336041 lambda!336022)))

(declare-fun bs!1526388 () Bool)

(assert (= bs!1526388 (and d!1929796 d!1929678)))

(assert (=> bs!1526388 (= lambda!336041 lambda!336019)))

(declare-fun bs!1526389 () Bool)

(assert (= bs!1526389 (and d!1929796 d!1929674)))

(assert (=> bs!1526389 (= lambda!336041 lambda!336018)))

(assert (=> d!1929796 true))

(assert (=> d!1929796 (= (derivationStepZipper!2073 (set.union lt!2335350 lt!2335358) (head!12722 (t!378093 s!2326))) (flatMap!1605 (set.union lt!2335350 lt!2335358) lambda!336041))))

(declare-fun bs!1526390 () Bool)

(assert (= bs!1526390 d!1929796))

(declare-fun m!6997046 () Bool)

(assert (=> bs!1526390 m!6997046))

(assert (=> b!6157675 d!1929796))

(assert (=> b!6157675 d!1929616))

(assert (=> b!6157675 d!1929618))

(declare-fun bs!1526391 () Bool)

(declare-fun d!1929798 () Bool)

(assert (= bs!1526391 (and d!1929798 d!1929692)))

(declare-fun lambda!336042 () Int)

(assert (=> bs!1526391 (= lambda!336042 lambda!336020)))

(declare-fun bs!1526392 () Bool)

(assert (= bs!1526392 (and d!1929798 d!1929718)))

(assert (=> bs!1526392 (= lambda!336042 lambda!336023)))

(declare-fun bs!1526393 () Bool)

(assert (= bs!1526393 (and d!1929798 d!1929704)))

(assert (=> bs!1526393 (= lambda!336042 lambda!336021)))

(declare-fun bs!1526394 () Bool)

(assert (= bs!1526394 (and d!1929798 d!1929778)))

(assert (=> bs!1526394 (= lambda!336042 lambda!336036)))

(declare-fun bs!1526395 () Bool)

(assert (= bs!1526395 (and d!1929798 d!1929610)))

(assert (=> bs!1526395 (= lambda!336042 lambda!336011)))

(declare-fun bs!1526396 () Bool)

(assert (= bs!1526396 (and d!1929798 d!1929648)))

(assert (=> bs!1526396 (= lambda!336042 lambda!336016)))

(declare-fun bs!1526397 () Bool)

(assert (= bs!1526397 (and d!1929798 d!1929608)))

(assert (=> bs!1526397 (= lambda!336042 lambda!336010)))

(declare-fun bs!1526398 () Bool)

(assert (= bs!1526398 (and d!1929798 d!1929790)))

(assert (=> bs!1526398 (= lambda!336042 lambda!336040)))

(declare-fun bs!1526399 () Bool)

(assert (= bs!1526399 (and d!1929798 d!1929668)))

(assert (=> bs!1526399 (= lambda!336042 lambda!336017)))

(assert (=> d!1929798 (= (nullableZipper!1881 (set.union lt!2335362 lt!2335358)) (exists!2445 (set.union lt!2335362 lt!2335358) lambda!336042))))

(declare-fun bs!1526400 () Bool)

(assert (= bs!1526400 d!1929798))

(declare-fun m!6997048 () Bool)

(assert (=> bs!1526400 m!6997048))

(assert (=> b!6157957 d!1929798))

(assert (=> d!1929402 d!1929606))

(declare-fun d!1929800 () Bool)

(assert (=> d!1929800 true))

(declare-fun setRes!41729 () Bool)

(assert (=> d!1929800 setRes!41729))

(declare-fun condSetEmpty!41729 () Bool)

(declare-fun res!2550554 () (Set Context!10968))

(assert (=> d!1929800 (= condSetEmpty!41729 (= res!2550554 (as set.empty (Set Context!10968))))))

(assert (=> d!1929800 (= (choose!45782 lt!2335341 lambda!335934) res!2550554)))

(declare-fun setIsEmpty!41729 () Bool)

(assert (=> setIsEmpty!41729 setRes!41729))

(declare-fun tp!1719715 () Bool)

(declare-fun setElem!41729 () Context!10968)

(declare-fun e!3752406 () Bool)

(declare-fun setNonEmpty!41729 () Bool)

(assert (=> setNonEmpty!41729 (= setRes!41729 (and tp!1719715 (inv!83498 setElem!41729) e!3752406))))

(declare-fun setRest!41729 () (Set Context!10968))

(assert (=> setNonEmpty!41729 (= res!2550554 (set.union (set.insert setElem!41729 (as set.empty (Set Context!10968))) setRest!41729))))

(declare-fun b!6158730 () Bool)

(declare-fun tp!1719716 () Bool)

(assert (=> b!6158730 (= e!3752406 tp!1719716)))

(assert (= (and d!1929800 condSetEmpty!41729) setIsEmpty!41729))

(assert (= (and d!1929800 (not condSetEmpty!41729)) setNonEmpty!41729))

(assert (= setNonEmpty!41729 b!6158730))

(declare-fun m!6997050 () Bool)

(assert (=> setNonEmpty!41729 m!6997050))

(assert (=> d!1929480 d!1929800))

(declare-fun d!1929802 () Bool)

(assert (=> d!1929802 (= (nullable!6093 r!7292) (nullableFct!2057 r!7292))))

(declare-fun bs!1526401 () Bool)

(assert (= bs!1526401 d!1929802))

(declare-fun m!6997052 () Bool)

(assert (=> bs!1526401 m!6997052))

(assert (=> b!6157874 d!1929802))

(declare-fun b!6158731 () Bool)

(declare-fun e!3752411 () (Set Context!10968))

(declare-fun e!3752409 () (Set Context!10968))

(assert (=> b!6158731 (= e!3752411 e!3752409)))

(declare-fun c!1109018 () Bool)

(assert (=> b!6158731 (= c!1109018 (is-Union!16100 (ite c!1108735 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108733 (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108734 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))) (reg!16429 (regTwo!32713 (regOne!32712 r!7292))))))))))

(declare-fun b!6158732 () Bool)

(declare-fun call!512760 () (Set Context!10968))

(declare-fun call!512761 () (Set Context!10968))

(assert (=> b!6158732 (= e!3752409 (set.union call!512760 call!512761))))

(declare-fun bm!512751 () Bool)

(declare-fun call!512759 () (Set Context!10968))

(assert (=> bm!512751 (= call!512759 call!512761)))

(declare-fun b!6158733 () Bool)

(declare-fun e!3752410 () (Set Context!10968))

(assert (=> b!6158733 (= e!3752410 (set.union call!512760 call!512759))))

(declare-fun b!6158734 () Bool)

(assert (=> b!6158734 (= e!3752411 (set.insert (ite (or c!1108735 c!1108733) lt!2335351 (Context!10969 call!512592)) (as set.empty (Set Context!10968))))))

(declare-fun c!1109015 () Bool)

(declare-fun d!1929804 () Bool)

(assert (=> d!1929804 (= c!1109015 (and (is-ElementMatch!16100 (ite c!1108735 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108733 (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108734 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))) (reg!16429 (regTwo!32713 (regOne!32712 r!7292))))))) (= (c!1108675 (ite c!1108735 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108733 (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108734 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))) (reg!16429 (regTwo!32713 (regOne!32712 r!7292))))))) (h!70923 s!2326))))))

(assert (=> d!1929804 (= (derivationStepZipperDown!1348 (ite c!1108735 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108733 (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108734 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))) (reg!16429 (regTwo!32713 (regOne!32712 r!7292)))))) (ite (or c!1108735 c!1108733) lt!2335351 (Context!10969 call!512592)) (h!70923 s!2326)) e!3752411)))

(declare-fun b!6158735 () Bool)

(declare-fun e!3752408 () (Set Context!10968))

(declare-fun call!512758 () (Set Context!10968))

(assert (=> b!6158735 (= e!3752408 call!512758)))

(declare-fun bm!512752 () Bool)

(declare-fun c!1109017 () Bool)

(declare-fun c!1109016 () Bool)

(declare-fun call!512757 () List!64600)

(assert (=> bm!512752 (= call!512761 (derivationStepZipperDown!1348 (ite c!1109018 (regTwo!32713 (ite c!1108735 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108733 (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108734 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))) (reg!16429 (regTwo!32713 (regOne!32712 r!7292))))))) (ite c!1109016 (regTwo!32712 (ite c!1108735 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108733 (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108734 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))) (reg!16429 (regTwo!32713 (regOne!32712 r!7292))))))) (ite c!1109017 (regOne!32712 (ite c!1108735 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108733 (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108734 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))) (reg!16429 (regTwo!32713 (regOne!32712 r!7292))))))) (reg!16429 (ite c!1108735 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108733 (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108734 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))) (reg!16429 (regTwo!32713 (regOne!32712 r!7292)))))))))) (ite (or c!1109018 c!1109016) (ite (or c!1108735 c!1108733) lt!2335351 (Context!10969 call!512592)) (Context!10969 call!512757)) (h!70923 s!2326)))))

(declare-fun b!6158736 () Bool)

(declare-fun e!3752407 () (Set Context!10968))

(assert (=> b!6158736 (= e!3752410 e!3752407)))

(assert (=> b!6158736 (= c!1109017 (is-Concat!24945 (ite c!1108735 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108733 (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108734 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))) (reg!16429 (regTwo!32713 (regOne!32712 r!7292))))))))))

(declare-fun b!6158737 () Bool)

(declare-fun c!1109019 () Bool)

(assert (=> b!6158737 (= c!1109019 (is-Star!16100 (ite c!1108735 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108733 (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108734 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))) (reg!16429 (regTwo!32713 (regOne!32712 r!7292))))))))))

(assert (=> b!6158737 (= e!3752407 e!3752408)))

(declare-fun bm!512753 () Bool)

(assert (=> bm!512753 (= call!512758 call!512759)))

(declare-fun b!6158738 () Bool)

(declare-fun e!3752412 () Bool)

(assert (=> b!6158738 (= c!1109016 e!3752412)))

(declare-fun res!2550555 () Bool)

(assert (=> b!6158738 (=> (not res!2550555) (not e!3752412))))

(assert (=> b!6158738 (= res!2550555 (is-Concat!24945 (ite c!1108735 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108733 (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108734 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))) (reg!16429 (regTwo!32713 (regOne!32712 r!7292))))))))))

(assert (=> b!6158738 (= e!3752409 e!3752410)))

(declare-fun bm!512754 () Bool)

(declare-fun call!512756 () List!64600)

(assert (=> bm!512754 (= call!512756 ($colon$colon!1977 (exprs!5984 (ite (or c!1108735 c!1108733) lt!2335351 (Context!10969 call!512592))) (ite (or c!1109016 c!1109017) (regTwo!32712 (ite c!1108735 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108733 (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108734 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))) (reg!16429 (regTwo!32713 (regOne!32712 r!7292))))))) (ite c!1108735 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108733 (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108734 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))) (reg!16429 (regTwo!32713 (regOne!32712 r!7292)))))))))))

(declare-fun b!6158739 () Bool)

(assert (=> b!6158739 (= e!3752412 (nullable!6093 (regOne!32712 (ite c!1108735 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108733 (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108734 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))) (reg!16429 (regTwo!32713 (regOne!32712 r!7292)))))))))))

(declare-fun b!6158740 () Bool)

(assert (=> b!6158740 (= e!3752408 (as set.empty (Set Context!10968)))))

(declare-fun b!6158741 () Bool)

(assert (=> b!6158741 (= e!3752407 call!512758)))

(declare-fun bm!512755 () Bool)

(assert (=> bm!512755 (= call!512760 (derivationStepZipperDown!1348 (ite c!1109018 (regOne!32713 (ite c!1108735 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108733 (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108734 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))) (reg!16429 (regTwo!32713 (regOne!32712 r!7292))))))) (regOne!32712 (ite c!1108735 (regTwo!32713 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108733 (regTwo!32712 (regTwo!32713 (regOne!32712 r!7292))) (ite c!1108734 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292))) (reg!16429 (regTwo!32713 (regOne!32712 r!7292)))))))) (ite c!1109018 (ite (or c!1108735 c!1108733) lt!2335351 (Context!10969 call!512592)) (Context!10969 call!512756)) (h!70923 s!2326)))))

(declare-fun bm!512756 () Bool)

(assert (=> bm!512756 (= call!512757 call!512756)))

(assert (= (and d!1929804 c!1109015) b!6158734))

(assert (= (and d!1929804 (not c!1109015)) b!6158731))

(assert (= (and b!6158731 c!1109018) b!6158732))

(assert (= (and b!6158731 (not c!1109018)) b!6158738))

(assert (= (and b!6158738 res!2550555) b!6158739))

(assert (= (and b!6158738 c!1109016) b!6158733))

(assert (= (and b!6158738 (not c!1109016)) b!6158736))

(assert (= (and b!6158736 c!1109017) b!6158741))

(assert (= (and b!6158736 (not c!1109017)) b!6158737))

(assert (= (and b!6158737 c!1109019) b!6158735))

(assert (= (and b!6158737 (not c!1109019)) b!6158740))

(assert (= (or b!6158741 b!6158735) bm!512756))

(assert (= (or b!6158741 b!6158735) bm!512753))

(assert (= (or b!6158733 bm!512756) bm!512754))

(assert (= (or b!6158733 bm!512753) bm!512751))

(assert (= (or b!6158732 bm!512751) bm!512752))

(assert (= (or b!6158732 b!6158733) bm!512755))

(declare-fun m!6997054 () Bool)

(assert (=> bm!512752 m!6997054))

(declare-fun m!6997056 () Bool)

(assert (=> b!6158734 m!6997056))

(declare-fun m!6997058 () Bool)

(assert (=> bm!512754 m!6997058))

(declare-fun m!6997060 () Bool)

(assert (=> bm!512755 m!6997060))

(declare-fun m!6997062 () Bool)

(assert (=> b!6158739 m!6997062))

(assert (=> bm!512587 d!1929804))

(declare-fun bs!1526402 () Bool)

(declare-fun d!1929806 () Bool)

(assert (= bs!1526402 (and d!1929806 d!1929434)))

(declare-fun lambda!336043 () Int)

(assert (=> bs!1526402 (= lambda!336043 lambda!335972)))

(declare-fun bs!1526403 () Bool)

(assert (= bs!1526403 (and d!1929806 d!1929388)))

(assert (=> bs!1526403 (= lambda!336043 lambda!335955)))

(declare-fun bs!1526404 () Bool)

(assert (= bs!1526404 (and d!1929806 d!1929642)))

(assert (=> bs!1526404 (= lambda!336043 lambda!336015)))

(declare-fun bs!1526405 () Bool)

(assert (= bs!1526405 (and d!1929806 d!1929386)))

(assert (=> bs!1526405 (= lambda!336043 lambda!335952)))

(declare-fun bs!1526406 () Bool)

(assert (= bs!1526406 (and d!1929806 d!1929430)))

(assert (=> bs!1526406 (= lambda!336043 lambda!335969)))

(declare-fun bs!1526407 () Bool)

(assert (= bs!1526407 (and d!1929806 d!1929392)))

(assert (=> bs!1526407 (= lambda!336043 lambda!335958)))

(declare-fun bs!1526408 () Bool)

(assert (= bs!1526408 (and d!1929806 d!1929398)))

(assert (=> bs!1526408 (= lambda!336043 lambda!335959)))

(declare-fun bs!1526409 () Bool)

(assert (= bs!1526409 (and d!1929806 d!1929772)))

(assert (=> bs!1526409 (= lambda!336043 lambda!336034)))

(declare-fun b!6158742 () Bool)

(declare-fun e!3752418 () Regex!16100)

(assert (=> b!6158742 (= e!3752418 (h!70924 (t!378094 (unfocusZipperList!1521 zl!343))))))

(declare-fun e!3752416 () Bool)

(assert (=> d!1929806 e!3752416))

(declare-fun res!2550556 () Bool)

(assert (=> d!1929806 (=> (not res!2550556) (not e!3752416))))

(declare-fun lt!2335559 () Regex!16100)

(assert (=> d!1929806 (= res!2550556 (validRegex!7836 lt!2335559))))

(assert (=> d!1929806 (= lt!2335559 e!3752418)))

(declare-fun c!1109021 () Bool)

(declare-fun e!3752414 () Bool)

(assert (=> d!1929806 (= c!1109021 e!3752414)))

(declare-fun res!2550557 () Bool)

(assert (=> d!1929806 (=> (not res!2550557) (not e!3752414))))

(assert (=> d!1929806 (= res!2550557 (is-Cons!64476 (t!378094 (unfocusZipperList!1521 zl!343))))))

(assert (=> d!1929806 (forall!15221 (t!378094 (unfocusZipperList!1521 zl!343)) lambda!336043)))

(assert (=> d!1929806 (= (generalisedUnion!1944 (t!378094 (unfocusZipperList!1521 zl!343))) lt!2335559)))

(declare-fun b!6158743 () Bool)

(declare-fun e!3752413 () Regex!16100)

(assert (=> b!6158743 (= e!3752413 (Union!16100 (h!70924 (t!378094 (unfocusZipperList!1521 zl!343))) (generalisedUnion!1944 (t!378094 (t!378094 (unfocusZipperList!1521 zl!343))))))))

(declare-fun b!6158744 () Bool)

(assert (=> b!6158744 (= e!3752414 (isEmpty!36443 (t!378094 (t!378094 (unfocusZipperList!1521 zl!343)))))))

(declare-fun b!6158745 () Bool)

(assert (=> b!6158745 (= e!3752413 EmptyLang!16100)))

(declare-fun b!6158746 () Bool)

(declare-fun e!3752415 () Bool)

(assert (=> b!6158746 (= e!3752415 (isUnion!957 lt!2335559))))

(declare-fun b!6158747 () Bool)

(declare-fun e!3752417 () Bool)

(assert (=> b!6158747 (= e!3752417 (isEmptyLang!1527 lt!2335559))))

(declare-fun b!6158748 () Bool)

(assert (=> b!6158748 (= e!3752418 e!3752413)))

(declare-fun c!1109022 () Bool)

(assert (=> b!6158748 (= c!1109022 (is-Cons!64476 (t!378094 (unfocusZipperList!1521 zl!343))))))

(declare-fun b!6158749 () Bool)

(assert (=> b!6158749 (= e!3752416 e!3752417)))

(declare-fun c!1109020 () Bool)

(assert (=> b!6158749 (= c!1109020 (isEmpty!36443 (t!378094 (unfocusZipperList!1521 zl!343))))))

(declare-fun b!6158750 () Bool)

(assert (=> b!6158750 (= e!3752417 e!3752415)))

(declare-fun c!1109023 () Bool)

(assert (=> b!6158750 (= c!1109023 (isEmpty!36443 (tail!11806 (t!378094 (unfocusZipperList!1521 zl!343)))))))

(declare-fun b!6158751 () Bool)

(assert (=> b!6158751 (= e!3752415 (= lt!2335559 (head!12721 (t!378094 (unfocusZipperList!1521 zl!343)))))))

(assert (= (and d!1929806 res!2550557) b!6158744))

(assert (= (and d!1929806 c!1109021) b!6158742))

(assert (= (and d!1929806 (not c!1109021)) b!6158748))

(assert (= (and b!6158748 c!1109022) b!6158743))

(assert (= (and b!6158748 (not c!1109022)) b!6158745))

(assert (= (and d!1929806 res!2550556) b!6158749))

(assert (= (and b!6158749 c!1109020) b!6158747))

(assert (= (and b!6158749 (not c!1109020)) b!6158750))

(assert (= (and b!6158750 c!1109023) b!6158751))

(assert (= (and b!6158750 (not c!1109023)) b!6158746))

(declare-fun m!6997064 () Bool)

(assert (=> d!1929806 m!6997064))

(declare-fun m!6997066 () Bool)

(assert (=> d!1929806 m!6997066))

(declare-fun m!6997068 () Bool)

(assert (=> b!6158750 m!6997068))

(assert (=> b!6158750 m!6997068))

(declare-fun m!6997070 () Bool)

(assert (=> b!6158750 m!6997070))

(assert (=> b!6158749 m!6996144))

(declare-fun m!6997072 () Bool)

(assert (=> b!6158747 m!6997072))

(declare-fun m!6997074 () Bool)

(assert (=> b!6158746 m!6997074))

(declare-fun m!6997076 () Bool)

(assert (=> b!6158743 m!6997076))

(declare-fun m!6997078 () Bool)

(assert (=> b!6158751 m!6997078))

(declare-fun m!6997080 () Bool)

(assert (=> b!6158744 m!6997080))

(assert (=> b!6157638 d!1929806))

(declare-fun d!1929808 () Bool)

(assert (=> d!1929808 true))

(assert (=> d!1929808 true))

(declare-fun res!2550558 () Bool)

(assert (=> d!1929808 (= (choose!45777 lambda!335932) res!2550558)))

(assert (=> d!1929414 d!1929808))

(declare-fun d!1929810 () Bool)

(declare-fun res!2550559 () Bool)

(declare-fun e!3752419 () Bool)

(assert (=> d!1929810 (=> res!2550559 e!3752419)))

(assert (=> d!1929810 (= res!2550559 (is-Nil!64476 (exprs!5984 lt!2335359)))))

(assert (=> d!1929810 (= (forall!15221 (exprs!5984 lt!2335359) lambda!335959) e!3752419)))

(declare-fun b!6158752 () Bool)

(declare-fun e!3752420 () Bool)

(assert (=> b!6158752 (= e!3752419 e!3752420)))

(declare-fun res!2550560 () Bool)

(assert (=> b!6158752 (=> (not res!2550560) (not e!3752420))))

(assert (=> b!6158752 (= res!2550560 (dynLambda!25422 lambda!335959 (h!70924 (exprs!5984 lt!2335359))))))

(declare-fun b!6158753 () Bool)

(assert (=> b!6158753 (= e!3752420 (forall!15221 (t!378094 (exprs!5984 lt!2335359)) lambda!335959))))

(assert (= (and d!1929810 (not res!2550559)) b!6158752))

(assert (= (and b!6158752 res!2550560) b!6158753))

(declare-fun b_lambda!234431 () Bool)

(assert (=> (not b_lambda!234431) (not b!6158752)))

(declare-fun m!6997082 () Bool)

(assert (=> b!6158752 m!6997082))

(declare-fun m!6997084 () Bool)

(assert (=> b!6158753 m!6997084))

(assert (=> d!1929398 d!1929810))

(assert (=> d!1929450 d!1929452))

(declare-fun d!1929812 () Bool)

(assert (=> d!1929812 (= (flatMap!1605 z!1189 lambda!335934) (dynLambda!25420 lambda!335934 (h!70925 zl!343)))))

(assert (=> d!1929812 true))

(declare-fun _$13!3099 () Unit!157579)

(assert (=> d!1929812 (= (choose!45781 z!1189 (h!70925 zl!343) lambda!335934) _$13!3099)))

(declare-fun b_lambda!234433 () Bool)

(assert (=> (not b_lambda!234433) (not d!1929812)))

(declare-fun bs!1526410 () Bool)

(assert (= bs!1526410 d!1929812))

(assert (=> bs!1526410 m!6996010))

(assert (=> bs!1526410 m!6996330))

(assert (=> d!1929450 d!1929812))

(declare-fun bs!1526411 () Bool)

(declare-fun b!6158761 () Bool)

(assert (= bs!1526411 (and b!6158761 d!1929418)))

(declare-fun lambda!336044 () Int)

(assert (=> bs!1526411 (not (= lambda!336044 lambda!335962))))

(declare-fun bs!1526412 () Bool)

(assert (= bs!1526412 (and b!6158761 d!1929788)))

(assert (=> bs!1526412 (not (= lambda!336044 lambda!336039))))

(declare-fun bs!1526413 () Bool)

(assert (= bs!1526413 (and b!6158761 b!6157455)))

(assert (=> bs!1526413 (not (= lambda!336044 lambda!335932))))

(declare-fun bs!1526414 () Bool)

(assert (= bs!1526414 (and b!6158761 d!1929420)))

(assert (=> bs!1526414 (not (= lambda!336044 lambda!335967))))

(declare-fun bs!1526415 () Bool)

(assert (= bs!1526415 (and b!6158761 d!1929760)))

(assert (=> bs!1526415 (not (= lambda!336044 lambda!336032))))

(assert (=> bs!1526413 (not (= lambda!336044 lambda!335933))))

(declare-fun bs!1526416 () Bool)

(assert (= bs!1526416 (and b!6158761 b!6157830)))

(assert (=> bs!1526416 (= (and (= (reg!16429 (regOne!32713 r!7292)) (reg!16429 r!7292)) (= (regOne!32713 r!7292) r!7292)) (= lambda!336044 lambda!335977))))

(assert (=> bs!1526415 (not (= lambda!336044 lambda!336031))))

(declare-fun bs!1526417 () Bool)

(assert (= bs!1526417 (and b!6158761 b!6158643)))

(assert (=> bs!1526417 (= (and (= (reg!16429 (regOne!32713 r!7292)) (reg!16429 (regTwo!32713 r!7292))) (= (regOne!32713 r!7292) (regTwo!32713 r!7292))) (= lambda!336044 lambda!336025))))

(declare-fun bs!1526418 () Bool)

(assert (= bs!1526418 (and b!6158761 b!6157828)))

(assert (=> bs!1526418 (not (= lambda!336044 lambda!335978))))

(assert (=> bs!1526414 (not (= lambda!336044 lambda!335968))))

(declare-fun bs!1526419 () Bool)

(assert (= bs!1526419 (and b!6158761 b!6158641)))

(assert (=> bs!1526419 (not (= lambda!336044 lambda!336026))))

(assert (=> b!6158761 true))

(assert (=> b!6158761 true))

(declare-fun bs!1526420 () Bool)

(declare-fun b!6158759 () Bool)

(assert (= bs!1526420 (and b!6158759 d!1929418)))

(declare-fun lambda!336045 () Int)

(assert (=> bs!1526420 (not (= lambda!336045 lambda!335962))))

(declare-fun bs!1526421 () Bool)

(assert (= bs!1526421 (and b!6158759 b!6158761)))

(assert (=> bs!1526421 (not (= lambda!336045 lambda!336044))))

(declare-fun bs!1526422 () Bool)

(assert (= bs!1526422 (and b!6158759 d!1929788)))

(assert (=> bs!1526422 (not (= lambda!336045 lambda!336039))))

(declare-fun bs!1526423 () Bool)

(assert (= bs!1526423 (and b!6158759 b!6157455)))

(assert (=> bs!1526423 (not (= lambda!336045 lambda!335932))))

(declare-fun bs!1526424 () Bool)

(assert (= bs!1526424 (and b!6158759 d!1929420)))

(assert (=> bs!1526424 (not (= lambda!336045 lambda!335967))))

(declare-fun bs!1526425 () Bool)

(assert (= bs!1526425 (and b!6158759 d!1929760)))

(assert (=> bs!1526425 (= (and (= (regOne!32712 (regOne!32713 r!7292)) (regOne!32712 r!7292)) (= (regTwo!32712 (regOne!32713 r!7292)) (regTwo!32712 r!7292))) (= lambda!336045 lambda!336032))))

(assert (=> bs!1526423 (= (and (= (regOne!32712 (regOne!32713 r!7292)) (regOne!32712 r!7292)) (= (regTwo!32712 (regOne!32713 r!7292)) (regTwo!32712 r!7292))) (= lambda!336045 lambda!335933))))

(declare-fun bs!1526426 () Bool)

(assert (= bs!1526426 (and b!6158759 b!6157830)))

(assert (=> bs!1526426 (not (= lambda!336045 lambda!335977))))

(assert (=> bs!1526425 (not (= lambda!336045 lambda!336031))))

(declare-fun bs!1526427 () Bool)

(assert (= bs!1526427 (and b!6158759 b!6158643)))

(assert (=> bs!1526427 (not (= lambda!336045 lambda!336025))))

(declare-fun bs!1526428 () Bool)

(assert (= bs!1526428 (and b!6158759 b!6157828)))

(assert (=> bs!1526428 (= (and (= (regOne!32712 (regOne!32713 r!7292)) (regOne!32712 r!7292)) (= (regTwo!32712 (regOne!32713 r!7292)) (regTwo!32712 r!7292))) (= lambda!336045 lambda!335978))))

(assert (=> bs!1526424 (= (and (= (regOne!32712 (regOne!32713 r!7292)) (regOne!32712 r!7292)) (= (regTwo!32712 (regOne!32713 r!7292)) (regTwo!32712 r!7292))) (= lambda!336045 lambda!335968))))

(declare-fun bs!1526429 () Bool)

(assert (= bs!1526429 (and b!6158759 b!6158641)))

(assert (=> bs!1526429 (= (and (= (regOne!32712 (regOne!32713 r!7292)) (regOne!32712 (regTwo!32713 r!7292))) (= (regTwo!32712 (regOne!32713 r!7292)) (regTwo!32712 (regTwo!32713 r!7292)))) (= lambda!336045 lambda!336026))))

(assert (=> b!6158759 true))

(assert (=> b!6158759 true))

(declare-fun b!6158754 () Bool)

(declare-fun e!3752426 () Bool)

(declare-fun e!3752423 () Bool)

(assert (=> b!6158754 (= e!3752426 e!3752423)))

(declare-fun res!2550562 () Bool)

(assert (=> b!6158754 (= res!2550562 (matchRSpec!3201 (regOne!32713 (regOne!32713 r!7292)) s!2326))))

(assert (=> b!6158754 (=> res!2550562 e!3752423)))

(declare-fun bm!512757 () Bool)

(declare-fun call!512762 () Bool)

(assert (=> bm!512757 (= call!512762 (isEmpty!36446 s!2326))))

(declare-fun call!512763 () Bool)

(declare-fun c!1109024 () Bool)

(declare-fun bm!512758 () Bool)

(assert (=> bm!512758 (= call!512763 (Exists!3170 (ite c!1109024 lambda!336044 lambda!336045)))))

(declare-fun b!6158755 () Bool)

(declare-fun e!3752425 () Bool)

(declare-fun e!3752421 () Bool)

(assert (=> b!6158755 (= e!3752425 e!3752421)))

(declare-fun res!2550563 () Bool)

(assert (=> b!6158755 (= res!2550563 (not (is-EmptyLang!16100 (regOne!32713 r!7292))))))

(assert (=> b!6158755 (=> (not res!2550563) (not e!3752421))))

(declare-fun b!6158756 () Bool)

(assert (=> b!6158756 (= e!3752425 call!512762)))

(declare-fun b!6158757 () Bool)

(assert (=> b!6158757 (= e!3752423 (matchRSpec!3201 (regTwo!32713 (regOne!32713 r!7292)) s!2326))))

(declare-fun d!1929814 () Bool)

(declare-fun c!1109027 () Bool)

(assert (=> d!1929814 (= c!1109027 (is-EmptyExpr!16100 (regOne!32713 r!7292)))))

(assert (=> d!1929814 (= (matchRSpec!3201 (regOne!32713 r!7292) s!2326) e!3752425)))

(declare-fun b!6158758 () Bool)

(declare-fun e!3752424 () Bool)

(assert (=> b!6158758 (= e!3752424 (= s!2326 (Cons!64475 (c!1108675 (regOne!32713 r!7292)) Nil!64475)))))

(declare-fun e!3752427 () Bool)

(assert (=> b!6158759 (= e!3752427 call!512763)))

(declare-fun b!6158760 () Bool)

(declare-fun c!1109026 () Bool)

(assert (=> b!6158760 (= c!1109026 (is-ElementMatch!16100 (regOne!32713 r!7292)))))

(assert (=> b!6158760 (= e!3752421 e!3752424)))

(declare-fun e!3752422 () Bool)

(assert (=> b!6158761 (= e!3752422 call!512763)))

(declare-fun b!6158762 () Bool)

(declare-fun c!1109025 () Bool)

(assert (=> b!6158762 (= c!1109025 (is-Union!16100 (regOne!32713 r!7292)))))

(assert (=> b!6158762 (= e!3752424 e!3752426)))

(declare-fun b!6158763 () Bool)

(assert (=> b!6158763 (= e!3752426 e!3752427)))

(assert (=> b!6158763 (= c!1109024 (is-Star!16100 (regOne!32713 r!7292)))))

(declare-fun b!6158764 () Bool)

(declare-fun res!2550561 () Bool)

(assert (=> b!6158764 (=> res!2550561 e!3752422)))

(assert (=> b!6158764 (= res!2550561 call!512762)))

(assert (=> b!6158764 (= e!3752427 e!3752422)))

(assert (= (and d!1929814 c!1109027) b!6158756))

(assert (= (and d!1929814 (not c!1109027)) b!6158755))

(assert (= (and b!6158755 res!2550563) b!6158760))

(assert (= (and b!6158760 c!1109026) b!6158758))

(assert (= (and b!6158760 (not c!1109026)) b!6158762))

(assert (= (and b!6158762 c!1109025) b!6158754))

(assert (= (and b!6158762 (not c!1109025)) b!6158763))

(assert (= (and b!6158754 (not res!2550562)) b!6158757))

(assert (= (and b!6158763 c!1109024) b!6158764))

(assert (= (and b!6158763 (not c!1109024)) b!6158759))

(assert (= (and b!6158764 (not res!2550561)) b!6158761))

(assert (= (or b!6158761 b!6158759) bm!512758))

(assert (= (or b!6158756 b!6158764) bm!512757))

(declare-fun m!6997086 () Bool)

(assert (=> b!6158754 m!6997086))

(assert (=> bm!512757 m!6996150))

(declare-fun m!6997088 () Bool)

(assert (=> bm!512758 m!6997088))

(declare-fun m!6997090 () Bool)

(assert (=> b!6158757 m!6997090))

(assert (=> b!6157823 d!1929814))

(assert (=> d!1929428 d!1929606))

(assert (=> b!6157876 d!1929428))

(declare-fun bs!1526430 () Bool)

(declare-fun d!1929816 () Bool)

(assert (= bs!1526430 (and d!1929816 d!1929434)))

(declare-fun lambda!336046 () Int)

(assert (=> bs!1526430 (= lambda!336046 lambda!335972)))

(declare-fun bs!1526431 () Bool)

(assert (= bs!1526431 (and d!1929816 d!1929388)))

(assert (=> bs!1526431 (= lambda!336046 lambda!335955)))

(declare-fun bs!1526432 () Bool)

(assert (= bs!1526432 (and d!1929816 d!1929642)))

(assert (=> bs!1526432 (= lambda!336046 lambda!336015)))

(declare-fun bs!1526433 () Bool)

(assert (= bs!1526433 (and d!1929816 d!1929386)))

(assert (=> bs!1526433 (= lambda!336046 lambda!335952)))

(declare-fun bs!1526434 () Bool)

(assert (= bs!1526434 (and d!1929816 d!1929806)))

(assert (=> bs!1526434 (= lambda!336046 lambda!336043)))

(declare-fun bs!1526435 () Bool)

(assert (= bs!1526435 (and d!1929816 d!1929430)))

(assert (=> bs!1526435 (= lambda!336046 lambda!335969)))

(declare-fun bs!1526436 () Bool)

(assert (= bs!1526436 (and d!1929816 d!1929392)))

(assert (=> bs!1526436 (= lambda!336046 lambda!335958)))

(declare-fun bs!1526437 () Bool)

(assert (= bs!1526437 (and d!1929816 d!1929398)))

(assert (=> bs!1526437 (= lambda!336046 lambda!335959)))

(declare-fun bs!1526438 () Bool)

(assert (= bs!1526438 (and d!1929816 d!1929772)))

(assert (=> bs!1526438 (= lambda!336046 lambda!336034)))

(assert (=> d!1929816 (= (inv!83498 setElem!41721) (forall!15221 (exprs!5984 setElem!41721) lambda!336046))))

(declare-fun bs!1526439 () Bool)

(assert (= bs!1526439 d!1929816))

(declare-fun m!6997092 () Bool)

(assert (=> bs!1526439 m!6997092))

(assert (=> setNonEmpty!41721 d!1929816))

(declare-fun d!1929818 () Bool)

(assert (=> d!1929818 (= (nullable!6093 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292)))) (nullableFct!2057 (regOne!32712 (regTwo!32713 (regOne!32712 r!7292)))))))

(declare-fun bs!1526440 () Bool)

(assert (= bs!1526440 d!1929818))

(declare-fun m!6997094 () Bool)

(assert (=> bs!1526440 m!6997094))

(assert (=> b!6157745 d!1929818))

(declare-fun d!1929820 () Bool)

(assert (=> d!1929820 (= (Exists!3170 (ite c!1108763 lambda!335977 lambda!335978)) (choose!45777 (ite c!1108763 lambda!335977 lambda!335978)))))

(declare-fun bs!1526441 () Bool)

(assert (= bs!1526441 d!1929820))

(declare-fun m!6997096 () Bool)

(assert (=> bs!1526441 m!6997096))

(assert (=> bm!512603 d!1929820))

(declare-fun d!1929822 () Bool)

(assert (=> d!1929822 (= ($colon$colon!1977 (exprs!5984 lt!2335351) (ite (or c!1108738 c!1108739) (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (regOne!32713 (regOne!32712 r!7292)))) (Cons!64476 (ite (or c!1108738 c!1108739) (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (regOne!32713 (regOne!32712 r!7292))) (exprs!5984 lt!2335351)))))

(assert (=> bm!512595 d!1929822))

(declare-fun d!1929824 () Bool)

(assert (=> d!1929824 (= ($colon$colon!1977 (exprs!5984 lt!2335351) (ite (or c!1108778 c!1108779) (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (h!70924 (exprs!5984 (h!70925 zl!343))))) (Cons!64476 (ite (or c!1108778 c!1108779) (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (h!70924 (exprs!5984 (h!70925 zl!343)))) (exprs!5984 lt!2335351)))))

(assert (=> bm!512610 d!1929824))

(assert (=> d!1929486 d!1929488))

(assert (=> d!1929486 d!1929396))

(declare-fun e!3752428 () Bool)

(declare-fun d!1929826 () Bool)

(assert (=> d!1929826 (= (matchZipper!2112 (set.union lt!2335362 lt!2335358) (t!378093 s!2326)) e!3752428)))

(declare-fun res!2550564 () Bool)

(assert (=> d!1929826 (=> res!2550564 e!3752428)))

(assert (=> d!1929826 (= res!2550564 (matchZipper!2112 lt!2335362 (t!378093 s!2326)))))

(assert (=> d!1929826 true))

(declare-fun _$48!1722 () Unit!157579)

(assert (=> d!1929826 (= (choose!45776 lt!2335362 lt!2335358 (t!378093 s!2326)) _$48!1722)))

(declare-fun b!6158765 () Bool)

(assert (=> b!6158765 (= e!3752428 (matchZipper!2112 lt!2335358 (t!378093 s!2326)))))

(assert (= (and d!1929826 (not res!2550564)) b!6158765))

(assert (=> d!1929826 m!6995920))

(assert (=> d!1929826 m!6995918))

(assert (=> b!6158765 m!6995962))

(assert (=> d!1929486 d!1929826))

(declare-fun bs!1526442 () Bool)

(declare-fun d!1929828 () Bool)

(assert (= bs!1526442 (and d!1929828 d!1929692)))

(declare-fun lambda!336047 () Int)

(assert (=> bs!1526442 (= lambda!336047 lambda!336020)))

(declare-fun bs!1526443 () Bool)

(assert (= bs!1526443 (and d!1929828 d!1929718)))

(assert (=> bs!1526443 (= lambda!336047 lambda!336023)))

(declare-fun bs!1526444 () Bool)

(assert (= bs!1526444 (and d!1929828 d!1929704)))

(assert (=> bs!1526444 (= lambda!336047 lambda!336021)))

(declare-fun bs!1526445 () Bool)

(assert (= bs!1526445 (and d!1929828 d!1929778)))

(assert (=> bs!1526445 (= lambda!336047 lambda!336036)))

(declare-fun bs!1526446 () Bool)

(assert (= bs!1526446 (and d!1929828 d!1929610)))

(assert (=> bs!1526446 (= lambda!336047 lambda!336011)))

(declare-fun bs!1526447 () Bool)

(assert (= bs!1526447 (and d!1929828 d!1929798)))

(assert (=> bs!1526447 (= lambda!336047 lambda!336042)))

(declare-fun bs!1526448 () Bool)

(assert (= bs!1526448 (and d!1929828 d!1929648)))

(assert (=> bs!1526448 (= lambda!336047 lambda!336016)))

(declare-fun bs!1526449 () Bool)

(assert (= bs!1526449 (and d!1929828 d!1929608)))

(assert (=> bs!1526449 (= lambda!336047 lambda!336010)))

(declare-fun bs!1526450 () Bool)

(assert (= bs!1526450 (and d!1929828 d!1929790)))

(assert (=> bs!1526450 (= lambda!336047 lambda!336040)))

(declare-fun bs!1526451 () Bool)

(assert (= bs!1526451 (and d!1929828 d!1929668)))

(assert (=> bs!1526451 (= lambda!336047 lambda!336017)))

(assert (=> d!1929828 (= (nullableZipper!1881 lt!2335362) (exists!2445 lt!2335362 lambda!336047))))

(declare-fun bs!1526452 () Bool)

(assert (= bs!1526452 d!1929828))

(declare-fun m!6997098 () Bool)

(assert (=> bs!1526452 m!6997098))

(assert (=> b!6157662 d!1929828))

(declare-fun bm!512759 () Bool)

(declare-fun call!512764 () Bool)

(declare-fun call!512765 () Bool)

(assert (=> bm!512759 (= call!512764 call!512765)))

(declare-fun c!1109029 () Bool)

(declare-fun bm!512760 () Bool)

(declare-fun c!1109028 () Bool)

(assert (=> bm!512760 (= call!512765 (validRegex!7836 (ite c!1109029 (reg!16429 lt!2335483) (ite c!1109028 (regTwo!32713 lt!2335483) (regTwo!32712 lt!2335483)))))))

(declare-fun b!6158766 () Bool)

(declare-fun e!3752433 () Bool)

(assert (=> b!6158766 (= e!3752433 call!512765)))

(declare-fun b!6158767 () Bool)

(declare-fun e!3752431 () Bool)

(declare-fun e!3752434 () Bool)

(assert (=> b!6158767 (= e!3752431 e!3752434)))

(assert (=> b!6158767 (= c!1109028 (is-Union!16100 lt!2335483))))

(declare-fun b!6158768 () Bool)

(declare-fun res!2550567 () Bool)

(declare-fun e!3752432 () Bool)

(assert (=> b!6158768 (=> res!2550567 e!3752432)))

(assert (=> b!6158768 (= res!2550567 (not (is-Concat!24945 lt!2335483)))))

(assert (=> b!6158768 (= e!3752434 e!3752432)))

(declare-fun b!6158769 () Bool)

(declare-fun e!3752429 () Bool)

(assert (=> b!6158769 (= e!3752429 call!512764)))

(declare-fun bm!512761 () Bool)

(declare-fun call!512766 () Bool)

(assert (=> bm!512761 (= call!512766 (validRegex!7836 (ite c!1109028 (regOne!32713 lt!2335483) (regOne!32712 lt!2335483))))))

(declare-fun b!6158770 () Bool)

(assert (=> b!6158770 (= e!3752431 e!3752433)))

(declare-fun res!2550568 () Bool)

(assert (=> b!6158770 (= res!2550568 (not (nullable!6093 (reg!16429 lt!2335483))))))

(assert (=> b!6158770 (=> (not res!2550568) (not e!3752433))))

(declare-fun b!6158771 () Bool)

(declare-fun e!3752435 () Bool)

(assert (=> b!6158771 (= e!3752432 e!3752435)))

(declare-fun res!2550566 () Bool)

(assert (=> b!6158771 (=> (not res!2550566) (not e!3752435))))

(assert (=> b!6158771 (= res!2550566 call!512766)))

(declare-fun b!6158772 () Bool)

(declare-fun e!3752430 () Bool)

(assert (=> b!6158772 (= e!3752430 e!3752431)))

(assert (=> b!6158772 (= c!1109029 (is-Star!16100 lt!2335483))))

(declare-fun d!1929830 () Bool)

(declare-fun res!2550569 () Bool)

(assert (=> d!1929830 (=> res!2550569 e!3752430)))

(assert (=> d!1929830 (= res!2550569 (is-ElementMatch!16100 lt!2335483))))

(assert (=> d!1929830 (= (validRegex!7836 lt!2335483) e!3752430)))

(declare-fun b!6158773 () Bool)

(assert (=> b!6158773 (= e!3752435 call!512764)))

(declare-fun b!6158774 () Bool)

(declare-fun res!2550565 () Bool)

(assert (=> b!6158774 (=> (not res!2550565) (not e!3752429))))

(assert (=> b!6158774 (= res!2550565 call!512766)))

(assert (=> b!6158774 (= e!3752434 e!3752429)))

(assert (= (and d!1929830 (not res!2550569)) b!6158772))

(assert (= (and b!6158772 c!1109029) b!6158770))

(assert (= (and b!6158772 (not c!1109029)) b!6158767))

(assert (= (and b!6158770 res!2550568) b!6158766))

(assert (= (and b!6158767 c!1109028) b!6158774))

(assert (= (and b!6158767 (not c!1109028)) b!6158768))

(assert (= (and b!6158774 res!2550565) b!6158769))

(assert (= (and b!6158768 (not res!2550567)) b!6158771))

(assert (= (and b!6158771 res!2550566) b!6158773))

(assert (= (or b!6158769 b!6158773) bm!512759))

(assert (= (or b!6158774 b!6158771) bm!512761))

(assert (= (or b!6158766 bm!512759) bm!512760))

(declare-fun m!6997100 () Bool)

(assert (=> bm!512760 m!6997100))

(declare-fun m!6997102 () Bool)

(assert (=> bm!512761 m!6997102))

(declare-fun m!6997104 () Bool)

(assert (=> b!6158770 m!6997104))

(assert (=> d!1929434 d!1929830))

(declare-fun d!1929832 () Bool)

(declare-fun res!2550570 () Bool)

(declare-fun e!3752436 () Bool)

(assert (=> d!1929832 (=> res!2550570 e!3752436)))

(assert (=> d!1929832 (= res!2550570 (is-Nil!64476 (exprs!5984 (h!70925 zl!343))))))

(assert (=> d!1929832 (= (forall!15221 (exprs!5984 (h!70925 zl!343)) lambda!335972) e!3752436)))

(declare-fun b!6158775 () Bool)

(declare-fun e!3752437 () Bool)

(assert (=> b!6158775 (= e!3752436 e!3752437)))

(declare-fun res!2550571 () Bool)

(assert (=> b!6158775 (=> (not res!2550571) (not e!3752437))))

(assert (=> b!6158775 (= res!2550571 (dynLambda!25422 lambda!335972 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun b!6158776 () Bool)

(assert (=> b!6158776 (= e!3752437 (forall!15221 (t!378094 (exprs!5984 (h!70925 zl!343))) lambda!335972))))

(assert (= (and d!1929832 (not res!2550570)) b!6158775))

(assert (= (and b!6158775 res!2550571) b!6158776))

(declare-fun b_lambda!234435 () Bool)

(assert (=> (not b_lambda!234435) (not b!6158775)))

(declare-fun m!6997106 () Bool)

(assert (=> b!6158775 m!6997106))

(declare-fun m!6997108 () Bool)

(assert (=> b!6158776 m!6997108))

(assert (=> d!1929434 d!1929832))

(assert (=> b!6157956 d!1929428))

(declare-fun d!1929834 () Bool)

(assert (=> d!1929834 (= (nullable!6093 (h!70924 (exprs!5984 lt!2335351))) (nullableFct!2057 (h!70924 (exprs!5984 lt!2335351))))))

(declare-fun bs!1526453 () Bool)

(assert (= bs!1526453 d!1929834))

(declare-fun m!6997110 () Bool)

(assert (=> bs!1526453 m!6997110))

(assert (=> b!6157906 d!1929834))

(declare-fun d!1929836 () Bool)

(assert (=> d!1929836 (= (nullable!6093 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))) (nullableFct!2057 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))))))

(declare-fun bs!1526454 () Bool)

(assert (= bs!1526454 d!1929836))

(declare-fun m!6997112 () Bool)

(assert (=> bs!1526454 m!6997112))

(assert (=> b!6157911 d!1929836))

(assert (=> d!1929446 d!1929606))

(declare-fun d!1929838 () Bool)

(assert (=> d!1929838 (= (isEmpty!36443 (unfocusZipperList!1521 zl!343)) (is-Nil!64476 (unfocusZipperList!1521 zl!343)))))

(assert (=> b!6157644 d!1929838))

(assert (=> b!6157864 d!1929752))

(assert (=> b!6157864 d!1929656))

(declare-fun d!1929840 () Bool)

(declare-fun c!1109030 () Bool)

(assert (=> d!1929840 (= c!1109030 (isEmpty!36446 (tail!11807 (t!378093 s!2326))))))

(declare-fun e!3752438 () Bool)

(assert (=> d!1929840 (= (matchZipper!2112 (derivationStepZipper!2073 (set.union lt!2335342 lt!2335358) (head!12722 (t!378093 s!2326))) (tail!11807 (t!378093 s!2326))) e!3752438)))

(declare-fun b!6158777 () Bool)

(assert (=> b!6158777 (= e!3752438 (nullableZipper!1881 (derivationStepZipper!2073 (set.union lt!2335342 lt!2335358) (head!12722 (t!378093 s!2326)))))))

(declare-fun b!6158778 () Bool)

(assert (=> b!6158778 (= e!3752438 (matchZipper!2112 (derivationStepZipper!2073 (derivationStepZipper!2073 (set.union lt!2335342 lt!2335358) (head!12722 (t!378093 s!2326))) (head!12722 (tail!11807 (t!378093 s!2326)))) (tail!11807 (tail!11807 (t!378093 s!2326)))))))

(assert (= (and d!1929840 c!1109030) b!6158777))

(assert (= (and d!1929840 (not c!1109030)) b!6158778))

(assert (=> d!1929840 m!6996178))

(assert (=> d!1929840 m!6996710))

(assert (=> b!6158777 m!6996318))

(declare-fun m!6997114 () Bool)

(assert (=> b!6158777 m!6997114))

(assert (=> b!6158778 m!6996178))

(assert (=> b!6158778 m!6996714))

(assert (=> b!6158778 m!6996318))

(assert (=> b!6158778 m!6996714))

(declare-fun m!6997116 () Bool)

(assert (=> b!6158778 m!6997116))

(assert (=> b!6158778 m!6996178))

(assert (=> b!6158778 m!6996718))

(assert (=> b!6158778 m!6997116))

(assert (=> b!6158778 m!6996718))

(declare-fun m!6997118 () Bool)

(assert (=> b!6158778 m!6997118))

(assert (=> b!6157878 d!1929840))

(declare-fun bs!1526455 () Bool)

(declare-fun d!1929842 () Bool)

(assert (= bs!1526455 (and d!1929842 b!6157462)))

(declare-fun lambda!336048 () Int)

(assert (=> bs!1526455 (= (= (head!12722 (t!378093 s!2326)) (h!70923 s!2326)) (= lambda!336048 lambda!335934))))

(declare-fun bs!1526456 () Bool)

(assert (= bs!1526456 (and d!1929842 d!1929738)))

(assert (=> bs!1526456 (= (= (head!12722 (t!378093 s!2326)) (head!12722 s!2326)) (= lambda!336048 lambda!336024))))

(declare-fun bs!1526457 () Bool)

(assert (= bs!1526457 (and d!1929842 d!1929764)))

(assert (=> bs!1526457 (= (= (head!12722 (t!378093 s!2326)) (head!12722 s!2326)) (= lambda!336048 lambda!336033))))

(declare-fun bs!1526458 () Bool)

(assert (= bs!1526458 (and d!1929842 d!1929776)))

(assert (=> bs!1526458 (= lambda!336048 lambda!336035)))

(declare-fun bs!1526459 () Bool)

(assert (= bs!1526459 (and d!1929842 d!1929614)))

(assert (=> bs!1526459 (= lambda!336048 lambda!336014)))

(declare-fun bs!1526460 () Bool)

(assert (= bs!1526460 (and d!1929842 d!1929716)))

(assert (=> bs!1526460 (= lambda!336048 lambda!336022)))

(declare-fun bs!1526461 () Bool)

(assert (= bs!1526461 (and d!1929842 d!1929678)))

(assert (=> bs!1526461 (= lambda!336048 lambda!336019)))

(declare-fun bs!1526462 () Bool)

(assert (= bs!1526462 (and d!1929842 d!1929674)))

(assert (=> bs!1526462 (= lambda!336048 lambda!336018)))

(declare-fun bs!1526463 () Bool)

(assert (= bs!1526463 (and d!1929842 d!1929796)))

(assert (=> bs!1526463 (= lambda!336048 lambda!336041)))

(assert (=> d!1929842 true))

(assert (=> d!1929842 (= (derivationStepZipper!2073 (set.union lt!2335342 lt!2335358) (head!12722 (t!378093 s!2326))) (flatMap!1605 (set.union lt!2335342 lt!2335358) lambda!336048))))

(declare-fun bs!1526464 () Bool)

(assert (= bs!1526464 d!1929842))

(declare-fun m!6997120 () Bool)

(assert (=> bs!1526464 m!6997120))

(assert (=> b!6157878 d!1929842))

(assert (=> b!6157878 d!1929616))

(assert (=> b!6157878 d!1929618))

(declare-fun d!1929844 () Bool)

(declare-fun res!2550572 () Bool)

(declare-fun e!3752439 () Bool)

(assert (=> d!1929844 (=> res!2550572 e!3752439)))

(assert (=> d!1929844 (= res!2550572 (is-Nil!64476 lt!2335458))))

(assert (=> d!1929844 (= (forall!15221 lt!2335458 lambda!335955) e!3752439)))

(declare-fun b!6158779 () Bool)

(declare-fun e!3752440 () Bool)

(assert (=> b!6158779 (= e!3752439 e!3752440)))

(declare-fun res!2550573 () Bool)

(assert (=> b!6158779 (=> (not res!2550573) (not e!3752440))))

(assert (=> b!6158779 (= res!2550573 (dynLambda!25422 lambda!335955 (h!70924 lt!2335458)))))

(declare-fun b!6158780 () Bool)

(assert (=> b!6158780 (= e!3752440 (forall!15221 (t!378094 lt!2335458) lambda!335955))))

(assert (= (and d!1929844 (not res!2550572)) b!6158779))

(assert (= (and b!6158779 res!2550573) b!6158780))

(declare-fun b_lambda!234437 () Bool)

(assert (=> (not b_lambda!234437) (not b!6158779)))

(declare-fun m!6997122 () Bool)

(assert (=> b!6158779 m!6997122))

(declare-fun m!6997124 () Bool)

(assert (=> b!6158780 m!6997124))

(assert (=> d!1929388 d!1929844))

(assert (=> b!6157651 d!1929434))

(declare-fun bs!1526465 () Bool)

(declare-fun d!1929846 () Bool)

(assert (= bs!1526465 (and d!1929846 d!1929434)))

(declare-fun lambda!336049 () Int)

(assert (=> bs!1526465 (= lambda!336049 lambda!335972)))

(declare-fun bs!1526466 () Bool)

(assert (= bs!1526466 (and d!1929846 d!1929388)))

(assert (=> bs!1526466 (= lambda!336049 lambda!335955)))

(declare-fun bs!1526467 () Bool)

(assert (= bs!1526467 (and d!1929846 d!1929642)))

(assert (=> bs!1526467 (= lambda!336049 lambda!336015)))

(declare-fun bs!1526468 () Bool)

(assert (= bs!1526468 (and d!1929846 d!1929386)))

(assert (=> bs!1526468 (= lambda!336049 lambda!335952)))

(declare-fun bs!1526469 () Bool)

(assert (= bs!1526469 (and d!1929846 d!1929806)))

(assert (=> bs!1526469 (= lambda!336049 lambda!336043)))

(declare-fun bs!1526470 () Bool)

(assert (= bs!1526470 (and d!1929846 d!1929430)))

(assert (=> bs!1526470 (= lambda!336049 lambda!335969)))

(declare-fun bs!1526471 () Bool)

(assert (= bs!1526471 (and d!1929846 d!1929392)))

(assert (=> bs!1526471 (= lambda!336049 lambda!335958)))

(declare-fun bs!1526472 () Bool)

(assert (= bs!1526472 (and d!1929846 d!1929398)))

(assert (=> bs!1526472 (= lambda!336049 lambda!335959)))

(declare-fun bs!1526473 () Bool)

(assert (= bs!1526473 (and d!1929846 d!1929816)))

(assert (=> bs!1526473 (= lambda!336049 lambda!336046)))

(declare-fun bs!1526474 () Bool)

(assert (= bs!1526474 (and d!1929846 d!1929772)))

(assert (=> bs!1526474 (= lambda!336049 lambda!336034)))

(declare-fun lt!2335560 () List!64600)

(assert (=> d!1929846 (forall!15221 lt!2335560 lambda!336049)))

(declare-fun e!3752441 () List!64600)

(assert (=> d!1929846 (= lt!2335560 e!3752441)))

(declare-fun c!1109031 () Bool)

(assert (=> d!1929846 (= c!1109031 (is-Cons!64477 (t!378095 zl!343)))))

(assert (=> d!1929846 (= (unfocusZipperList!1521 (t!378095 zl!343)) lt!2335560)))

(declare-fun b!6158781 () Bool)

(assert (=> b!6158781 (= e!3752441 (Cons!64476 (generalisedConcat!1697 (exprs!5984 (h!70925 (t!378095 zl!343)))) (unfocusZipperList!1521 (t!378095 (t!378095 zl!343)))))))

(declare-fun b!6158782 () Bool)

(assert (=> b!6158782 (= e!3752441 Nil!64476)))

(assert (= (and d!1929846 c!1109031) b!6158781))

(assert (= (and d!1929846 (not c!1109031)) b!6158782))

(declare-fun m!6997126 () Bool)

(assert (=> d!1929846 m!6997126))

(declare-fun m!6997128 () Bool)

(assert (=> b!6158781 m!6997128))

(declare-fun m!6997130 () Bool)

(assert (=> b!6158781 m!6997130))

(assert (=> b!6157651 d!1929846))

(declare-fun b!6158786 () Bool)

(declare-fun e!3752443 () Bool)

(declare-fun lt!2335561 () List!64599)

(assert (=> b!6158786 (= e!3752443 (or (not (= (t!378093 s!2326) Nil!64475)) (= lt!2335561 (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) Nil!64475)))))))

(declare-fun b!6158785 () Bool)

(declare-fun res!2550574 () Bool)

(assert (=> b!6158785 (=> (not res!2550574) (not e!3752443))))

(assert (=> b!6158785 (= res!2550574 (= (size!40241 lt!2335561) (+ (size!40241 (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) Nil!64475))) (size!40241 (t!378093 s!2326)))))))

(declare-fun b!6158784 () Bool)

(declare-fun e!3752442 () List!64599)

(assert (=> b!6158784 (= e!3752442 (Cons!64475 (h!70923 (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) Nil!64475))) (++!14186 (t!378093 (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) Nil!64475))) (t!378093 s!2326))))))

(declare-fun d!1929848 () Bool)

(assert (=> d!1929848 e!3752443))

(declare-fun res!2550575 () Bool)

(assert (=> d!1929848 (=> (not res!2550575) (not e!3752443))))

(assert (=> d!1929848 (= res!2550575 (= (content!12024 lt!2335561) (set.union (content!12024 (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) Nil!64475))) (content!12024 (t!378093 s!2326)))))))

(assert (=> d!1929848 (= lt!2335561 e!3752442)))

(declare-fun c!1109032 () Bool)

(assert (=> d!1929848 (= c!1109032 (is-Nil!64475 (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) Nil!64475))))))

(assert (=> d!1929848 (= (++!14186 (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) Nil!64475)) (t!378093 s!2326)) lt!2335561)))

(declare-fun b!6158783 () Bool)

(assert (=> b!6158783 (= e!3752442 (t!378093 s!2326))))

(assert (= (and d!1929848 c!1109032) b!6158783))

(assert (= (and d!1929848 (not c!1109032)) b!6158784))

(assert (= (and d!1929848 res!2550575) b!6158785))

(assert (= (and b!6158785 res!2550574) b!6158786))

(declare-fun m!6997132 () Bool)

(assert (=> b!6158785 m!6997132))

(assert (=> b!6158785 m!6996222))

(declare-fun m!6997134 () Bool)

(assert (=> b!6158785 m!6997134))

(declare-fun m!6997136 () Bool)

(assert (=> b!6158785 m!6997136))

(declare-fun m!6997138 () Bool)

(assert (=> b!6158784 m!6997138))

(declare-fun m!6997140 () Bool)

(assert (=> d!1929848 m!6997140))

(assert (=> d!1929848 m!6996222))

(declare-fun m!6997142 () Bool)

(assert (=> d!1929848 m!6997142))

(declare-fun m!6997144 () Bool)

(assert (=> d!1929848 m!6997144))

(assert (=> b!6157696 d!1929848))

(declare-fun b!6158790 () Bool)

(declare-fun e!3752445 () Bool)

(declare-fun lt!2335562 () List!64599)

(assert (=> b!6158790 (= e!3752445 (or (not (= (Cons!64475 (h!70923 s!2326) Nil!64475) Nil!64475)) (= lt!2335562 Nil!64475)))))

(declare-fun b!6158789 () Bool)

(declare-fun res!2550576 () Bool)

(assert (=> b!6158789 (=> (not res!2550576) (not e!3752445))))

(assert (=> b!6158789 (= res!2550576 (= (size!40241 lt!2335562) (+ (size!40241 Nil!64475) (size!40241 (Cons!64475 (h!70923 s!2326) Nil!64475)))))))

(declare-fun b!6158788 () Bool)

(declare-fun e!3752444 () List!64599)

(assert (=> b!6158788 (= e!3752444 (Cons!64475 (h!70923 Nil!64475) (++!14186 (t!378093 Nil!64475) (Cons!64475 (h!70923 s!2326) Nil!64475))))))

(declare-fun d!1929850 () Bool)

(assert (=> d!1929850 e!3752445))

(declare-fun res!2550577 () Bool)

(assert (=> d!1929850 (=> (not res!2550577) (not e!3752445))))

(assert (=> d!1929850 (= res!2550577 (= (content!12024 lt!2335562) (set.union (content!12024 Nil!64475) (content!12024 (Cons!64475 (h!70923 s!2326) Nil!64475)))))))

(assert (=> d!1929850 (= lt!2335562 e!3752444)))

(declare-fun c!1109033 () Bool)

(assert (=> d!1929850 (= c!1109033 (is-Nil!64475 Nil!64475))))

(assert (=> d!1929850 (= (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) Nil!64475)) lt!2335562)))

(declare-fun b!6158787 () Bool)

(assert (=> b!6158787 (= e!3752444 (Cons!64475 (h!70923 s!2326) Nil!64475))))

(assert (= (and d!1929850 c!1109033) b!6158787))

(assert (= (and d!1929850 (not c!1109033)) b!6158788))

(assert (= (and d!1929850 res!2550577) b!6158789))

(assert (= (and b!6158789 res!2550576) b!6158790))

(declare-fun m!6997146 () Bool)

(assert (=> b!6158789 m!6997146))

(declare-fun m!6997148 () Bool)

(assert (=> b!6158789 m!6997148))

(declare-fun m!6997150 () Bool)

(assert (=> b!6158789 m!6997150))

(declare-fun m!6997152 () Bool)

(assert (=> b!6158788 m!6997152))

(declare-fun m!6997154 () Bool)

(assert (=> d!1929850 m!6997154))

(declare-fun m!6997156 () Bool)

(assert (=> d!1929850 m!6997156))

(declare-fun m!6997158 () Bool)

(assert (=> d!1929850 m!6997158))

(assert (=> b!6157696 d!1929850))

(declare-fun d!1929852 () Bool)

(assert (=> d!1929852 (= (++!14186 (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) Nil!64475)) (t!378093 s!2326)) s!2326)))

(declare-fun lt!2335565 () Unit!157579)

(declare-fun choose!45791 (List!64599 C!32470 List!64599 List!64599) Unit!157579)

(assert (=> d!1929852 (= lt!2335565 (choose!45791 Nil!64475 (h!70923 s!2326) (t!378093 s!2326) s!2326))))

(assert (=> d!1929852 (= (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) (t!378093 s!2326))) s!2326)))

(assert (=> d!1929852 (= (lemmaMoveElementToOtherListKeepsConcatEq!2281 Nil!64475 (h!70923 s!2326) (t!378093 s!2326) s!2326) lt!2335565)))

(declare-fun bs!1526475 () Bool)

(assert (= bs!1526475 d!1929852))

(assert (=> bs!1526475 m!6996222))

(assert (=> bs!1526475 m!6996222))

(assert (=> bs!1526475 m!6996224))

(declare-fun m!6997160 () Bool)

(assert (=> bs!1526475 m!6997160))

(declare-fun m!6997162 () Bool)

(assert (=> bs!1526475 m!6997162))

(assert (=> b!6157696 d!1929852))

(declare-fun b!6158791 () Bool)

(declare-fun res!2550579 () Bool)

(declare-fun e!3752447 () Bool)

(assert (=> b!6158791 (=> (not res!2550579) (not e!3752447))))

(declare-fun lt!2335567 () Option!15991)

(assert (=> b!6158791 (= res!2550579 (matchR!8283 (regOne!32712 r!7292) (_1!36382 (get!22252 lt!2335567))))))

(declare-fun b!6158792 () Bool)

(declare-fun res!2550580 () Bool)

(assert (=> b!6158792 (=> (not res!2550580) (not e!3752447))))

(assert (=> b!6158792 (= res!2550580 (matchR!8283 (regTwo!32712 r!7292) (_2!36382 (get!22252 lt!2335567))))))

(declare-fun b!6158793 () Bool)

(declare-fun lt!2335566 () Unit!157579)

(declare-fun lt!2335568 () Unit!157579)

(assert (=> b!6158793 (= lt!2335566 lt!2335568)))

(assert (=> b!6158793 (= (++!14186 (++!14186 (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) Nil!64475)) (Cons!64475 (h!70923 (t!378093 s!2326)) Nil!64475)) (t!378093 (t!378093 s!2326))) s!2326)))

(assert (=> b!6158793 (= lt!2335568 (lemmaMoveElementToOtherListKeepsConcatEq!2281 (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) Nil!64475)) (h!70923 (t!378093 s!2326)) (t!378093 (t!378093 s!2326)) s!2326))))

(declare-fun e!3752446 () Option!15991)

(assert (=> b!6158793 (= e!3752446 (findConcatSeparation!2405 (regOne!32712 r!7292) (regTwo!32712 r!7292) (++!14186 (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) Nil!64475)) (Cons!64475 (h!70923 (t!378093 s!2326)) Nil!64475)) (t!378093 (t!378093 s!2326)) s!2326))))

(declare-fun b!6158794 () Bool)

(declare-fun e!3752450 () Option!15991)

(assert (=> b!6158794 (= e!3752450 (Some!15990 (tuple2!66159 (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) Nil!64475)) (t!378093 s!2326))))))

(declare-fun b!6158795 () Bool)

(assert (=> b!6158795 (= e!3752447 (= (++!14186 (_1!36382 (get!22252 lt!2335567)) (_2!36382 (get!22252 lt!2335567))) s!2326))))

(declare-fun b!6158796 () Bool)

(assert (=> b!6158796 (= e!3752446 None!15990)))

(declare-fun d!1929854 () Bool)

(declare-fun e!3752449 () Bool)

(assert (=> d!1929854 e!3752449))

(declare-fun res!2550581 () Bool)

(assert (=> d!1929854 (=> res!2550581 e!3752449)))

(assert (=> d!1929854 (= res!2550581 e!3752447)))

(declare-fun res!2550582 () Bool)

(assert (=> d!1929854 (=> (not res!2550582) (not e!3752447))))

(assert (=> d!1929854 (= res!2550582 (isDefined!12694 lt!2335567))))

(assert (=> d!1929854 (= lt!2335567 e!3752450)))

(declare-fun c!1109035 () Bool)

(declare-fun e!3752448 () Bool)

(assert (=> d!1929854 (= c!1109035 e!3752448)))

(declare-fun res!2550578 () Bool)

(assert (=> d!1929854 (=> (not res!2550578) (not e!3752448))))

(assert (=> d!1929854 (= res!2550578 (matchR!8283 (regOne!32712 r!7292) (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) Nil!64475))))))

(assert (=> d!1929854 (validRegex!7836 (regOne!32712 r!7292))))

(assert (=> d!1929854 (= (findConcatSeparation!2405 (regOne!32712 r!7292) (regTwo!32712 r!7292) (++!14186 Nil!64475 (Cons!64475 (h!70923 s!2326) Nil!64475)) (t!378093 s!2326) s!2326) lt!2335567)))

(declare-fun b!6158797 () Bool)

(assert (=> b!6158797 (= e!3752450 e!3752446)))

(declare-fun c!1109034 () Bool)

(assert (=> b!6158797 (= c!1109034 (is-Nil!64475 (t!378093 s!2326)))))

(declare-fun b!6158798 () Bool)

(assert (=> b!6158798 (= e!3752448 (matchR!8283 (regTwo!32712 r!7292) (t!378093 s!2326)))))

(declare-fun b!6158799 () Bool)

(assert (=> b!6158799 (= e!3752449 (not (isDefined!12694 lt!2335567)))))

(assert (= (and d!1929854 res!2550578) b!6158798))

(assert (= (and d!1929854 c!1109035) b!6158794))

(assert (= (and d!1929854 (not c!1109035)) b!6158797))

(assert (= (and b!6158797 c!1109034) b!6158796))

(assert (= (and b!6158797 (not c!1109034)) b!6158793))

(assert (= (and d!1929854 res!2550582) b!6158791))

(assert (= (and b!6158791 res!2550579) b!6158792))

(assert (= (and b!6158792 res!2550580) b!6158795))

(assert (= (and d!1929854 (not res!2550581)) b!6158799))

(declare-fun m!6997164 () Bool)

(assert (=> b!6158795 m!6997164))

(declare-fun m!6997166 () Bool)

(assert (=> b!6158795 m!6997166))

(assert (=> b!6158791 m!6997164))

(declare-fun m!6997168 () Bool)

(assert (=> b!6158791 m!6997168))

(assert (=> b!6158792 m!6997164))

(declare-fun m!6997170 () Bool)

(assert (=> b!6158792 m!6997170))

(assert (=> b!6158793 m!6996222))

(declare-fun m!6997172 () Bool)

(assert (=> b!6158793 m!6997172))

(assert (=> b!6158793 m!6997172))

(declare-fun m!6997174 () Bool)

(assert (=> b!6158793 m!6997174))

(assert (=> b!6158793 m!6996222))

(declare-fun m!6997176 () Bool)

(assert (=> b!6158793 m!6997176))

(assert (=> b!6158793 m!6997172))

(declare-fun m!6997178 () Bool)

(assert (=> b!6158793 m!6997178))

(declare-fun m!6997180 () Bool)

(assert (=> d!1929854 m!6997180))

(assert (=> d!1929854 m!6996222))

(declare-fun m!6997182 () Bool)

(assert (=> d!1929854 m!6997182))

(assert (=> d!1929854 m!6996234))

(declare-fun m!6997184 () Bool)

(assert (=> b!6158798 m!6997184))

(assert (=> b!6158799 m!6997180))

(assert (=> b!6157696 d!1929854))

(declare-fun b!6158800 () Bool)

(declare-fun e!3752455 () (Set Context!10968))

(declare-fun e!3752453 () (Set Context!10968))

(assert (=> b!6158800 (= e!3752455 e!3752453)))

(declare-fun c!1109039 () Bool)

(assert (=> b!6158800 (= c!1109039 (is-Union!16100 (ite c!1108740 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292))))))))

(declare-fun b!6158801 () Bool)

(declare-fun call!512771 () (Set Context!10968))

(declare-fun call!512772 () (Set Context!10968))

(assert (=> b!6158801 (= e!3752453 (set.union call!512771 call!512772))))

(declare-fun bm!512762 () Bool)

(declare-fun call!512770 () (Set Context!10968))

(assert (=> bm!512762 (= call!512770 call!512772)))

(declare-fun b!6158802 () Bool)

(declare-fun e!3752454 () (Set Context!10968))

(assert (=> b!6158802 (= e!3752454 (set.union call!512771 call!512770))))

(declare-fun b!6158803 () Bool)

(assert (=> b!6158803 (= e!3752455 (set.insert (ite c!1108740 lt!2335351 (Context!10969 call!512597)) (as set.empty (Set Context!10968))))))

(declare-fun d!1929856 () Bool)

(declare-fun c!1109036 () Bool)

(assert (=> d!1929856 (= c!1109036 (and (is-ElementMatch!16100 (ite c!1108740 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292))))) (= (c!1108675 (ite c!1108740 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292))))) (h!70923 s!2326))))))

(assert (=> d!1929856 (= (derivationStepZipperDown!1348 (ite c!1108740 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292)))) (ite c!1108740 lt!2335351 (Context!10969 call!512597)) (h!70923 s!2326)) e!3752455)))

(declare-fun b!6158804 () Bool)

(declare-fun e!3752452 () (Set Context!10968))

(declare-fun call!512769 () (Set Context!10968))

(assert (=> b!6158804 (= e!3752452 call!512769)))

(declare-fun c!1109038 () Bool)

(declare-fun bm!512763 () Bool)

(declare-fun c!1109037 () Bool)

(declare-fun call!512768 () List!64600)

(assert (=> bm!512763 (= call!512772 (derivationStepZipperDown!1348 (ite c!1109039 (regTwo!32713 (ite c!1108740 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292))))) (ite c!1109037 (regTwo!32712 (ite c!1108740 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292))))) (ite c!1109038 (regOne!32712 (ite c!1108740 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292))))) (reg!16429 (ite c!1108740 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292)))))))) (ite (or c!1109039 c!1109037) (ite c!1108740 lt!2335351 (Context!10969 call!512597)) (Context!10969 call!512768)) (h!70923 s!2326)))))

(declare-fun b!6158805 () Bool)

(declare-fun e!3752451 () (Set Context!10968))

(assert (=> b!6158805 (= e!3752454 e!3752451)))

(assert (=> b!6158805 (= c!1109038 (is-Concat!24945 (ite c!1108740 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292))))))))

(declare-fun b!6158806 () Bool)

(declare-fun c!1109040 () Bool)

(assert (=> b!6158806 (= c!1109040 (is-Star!16100 (ite c!1108740 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292))))))))

(assert (=> b!6158806 (= e!3752451 e!3752452)))

(declare-fun bm!512764 () Bool)

(assert (=> bm!512764 (= call!512769 call!512770)))

(declare-fun b!6158807 () Bool)

(declare-fun e!3752456 () Bool)

(assert (=> b!6158807 (= c!1109037 e!3752456)))

(declare-fun res!2550583 () Bool)

(assert (=> b!6158807 (=> (not res!2550583) (not e!3752456))))

(assert (=> b!6158807 (= res!2550583 (is-Concat!24945 (ite c!1108740 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292))))))))

(assert (=> b!6158807 (= e!3752453 e!3752454)))

(declare-fun bm!512765 () Bool)

(declare-fun call!512767 () List!64600)

(assert (=> bm!512765 (= call!512767 ($colon$colon!1977 (exprs!5984 (ite c!1108740 lt!2335351 (Context!10969 call!512597))) (ite (or c!1109037 c!1109038) (regTwo!32712 (ite c!1108740 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292))))) (ite c!1108740 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292)))))))))

(declare-fun b!6158808 () Bool)

(assert (=> b!6158808 (= e!3752456 (nullable!6093 (regOne!32712 (ite c!1108740 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292)))))))))

(declare-fun b!6158809 () Bool)

(assert (=> b!6158809 (= e!3752452 (as set.empty (Set Context!10968)))))

(declare-fun b!6158810 () Bool)

(assert (=> b!6158810 (= e!3752451 call!512769)))

(declare-fun bm!512766 () Bool)

(assert (=> bm!512766 (= call!512771 (derivationStepZipperDown!1348 (ite c!1109039 (regOne!32713 (ite c!1108740 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292))))) (regOne!32712 (ite c!1108740 (regOne!32713 (regOne!32713 (regOne!32712 r!7292))) (regOne!32712 (regOne!32713 (regOne!32712 r!7292)))))) (ite c!1109039 (ite c!1108740 lt!2335351 (Context!10969 call!512597)) (Context!10969 call!512767)) (h!70923 s!2326)))))

(declare-fun bm!512767 () Bool)

(assert (=> bm!512767 (= call!512768 call!512767)))

(assert (= (and d!1929856 c!1109036) b!6158803))

(assert (= (and d!1929856 (not c!1109036)) b!6158800))

(assert (= (and b!6158800 c!1109039) b!6158801))

(assert (= (and b!6158800 (not c!1109039)) b!6158807))

(assert (= (and b!6158807 res!2550583) b!6158808))

(assert (= (and b!6158807 c!1109037) b!6158802))

(assert (= (and b!6158807 (not c!1109037)) b!6158805))

(assert (= (and b!6158805 c!1109038) b!6158810))

(assert (= (and b!6158805 (not c!1109038)) b!6158806))

(assert (= (and b!6158806 c!1109040) b!6158804))

(assert (= (and b!6158806 (not c!1109040)) b!6158809))

(assert (= (or b!6158810 b!6158804) bm!512767))

(assert (= (or b!6158810 b!6158804) bm!512764))

(assert (= (or b!6158802 bm!512767) bm!512765))

(assert (= (or b!6158802 bm!512764) bm!512762))

(assert (= (or b!6158801 bm!512762) bm!512763))

(assert (= (or b!6158801 b!6158802) bm!512766))

(declare-fun m!6997186 () Bool)

(assert (=> bm!512763 m!6997186))

(declare-fun m!6997188 () Bool)

(assert (=> b!6158803 m!6997188))

(declare-fun m!6997190 () Bool)

(assert (=> bm!512765 m!6997190))

(declare-fun m!6997192 () Bool)

(assert (=> bm!512766 m!6997192))

(declare-fun m!6997194 () Bool)

(assert (=> b!6158808 m!6997194))

(assert (=> bm!512596 d!1929856))

(declare-fun b!6158811 () Bool)

(declare-fun e!3752461 () (Set Context!10968))

(declare-fun e!3752459 () (Set Context!10968))

(assert (=> b!6158811 (= e!3752461 e!3752459)))

(declare-fun c!1109044 () Bool)

(assert (=> b!6158811 (= c!1109044 (is-Union!16100 (ite c!1108780 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))))))))

(declare-fun b!6158812 () Bool)

(declare-fun call!512777 () (Set Context!10968))

(declare-fun call!512778 () (Set Context!10968))

(assert (=> b!6158812 (= e!3752459 (set.union call!512777 call!512778))))

(declare-fun bm!512768 () Bool)

(declare-fun call!512776 () (Set Context!10968))

(assert (=> bm!512768 (= call!512776 call!512778)))

(declare-fun b!6158813 () Bool)

(declare-fun e!3752460 () (Set Context!10968))

(assert (=> b!6158813 (= e!3752460 (set.union call!512777 call!512776))))

(declare-fun b!6158814 () Bool)

(assert (=> b!6158814 (= e!3752461 (set.insert (ite c!1108780 lt!2335351 (Context!10969 call!512612)) (as set.empty (Set Context!10968))))))

(declare-fun c!1109041 () Bool)

(declare-fun d!1929858 () Bool)

(assert (=> d!1929858 (= c!1109041 (and (is-ElementMatch!16100 (ite c!1108780 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))))) (= (c!1108675 (ite c!1108780 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))))) (h!70923 s!2326))))))

(assert (=> d!1929858 (= (derivationStepZipperDown!1348 (ite c!1108780 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343))))) (ite c!1108780 lt!2335351 (Context!10969 call!512612)) (h!70923 s!2326)) e!3752461)))

(declare-fun b!6158815 () Bool)

(declare-fun e!3752458 () (Set Context!10968))

(declare-fun call!512775 () (Set Context!10968))

(assert (=> b!6158815 (= e!3752458 call!512775)))

(declare-fun call!512774 () List!64600)

(declare-fun c!1109042 () Bool)

(declare-fun bm!512769 () Bool)

(declare-fun c!1109043 () Bool)

(assert (=> bm!512769 (= call!512778 (derivationStepZipperDown!1348 (ite c!1109044 (regTwo!32713 (ite c!1108780 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))))) (ite c!1109042 (regTwo!32712 (ite c!1108780 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))))) (ite c!1109043 (regOne!32712 (ite c!1108780 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))))) (reg!16429 (ite c!1108780 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343))))))))) (ite (or c!1109044 c!1109042) (ite c!1108780 lt!2335351 (Context!10969 call!512612)) (Context!10969 call!512774)) (h!70923 s!2326)))))

(declare-fun b!6158816 () Bool)

(declare-fun e!3752457 () (Set Context!10968))

(assert (=> b!6158816 (= e!3752460 e!3752457)))

(assert (=> b!6158816 (= c!1109043 (is-Concat!24945 (ite c!1108780 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))))))))

(declare-fun b!6158817 () Bool)

(declare-fun c!1109045 () Bool)

(assert (=> b!6158817 (= c!1109045 (is-Star!16100 (ite c!1108780 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))))))))

(assert (=> b!6158817 (= e!3752457 e!3752458)))

(declare-fun bm!512770 () Bool)

(assert (=> bm!512770 (= call!512775 call!512776)))

(declare-fun b!6158818 () Bool)

(declare-fun e!3752462 () Bool)

(assert (=> b!6158818 (= c!1109042 e!3752462)))

(declare-fun res!2550584 () Bool)

(assert (=> b!6158818 (=> (not res!2550584) (not e!3752462))))

(assert (=> b!6158818 (= res!2550584 (is-Concat!24945 (ite c!1108780 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))))))))

(assert (=> b!6158818 (= e!3752459 e!3752460)))

(declare-fun bm!512771 () Bool)

(declare-fun call!512773 () List!64600)

(assert (=> bm!512771 (= call!512773 ($colon$colon!1977 (exprs!5984 (ite c!1108780 lt!2335351 (Context!10969 call!512612))) (ite (or c!1109042 c!1109043) (regTwo!32712 (ite c!1108780 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))))) (ite c!1108780 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343))))))))))

(declare-fun b!6158819 () Bool)

(assert (=> b!6158819 (= e!3752462 (nullable!6093 (regOne!32712 (ite c!1108780 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343))))))))))

(declare-fun b!6158820 () Bool)

(assert (=> b!6158820 (= e!3752458 (as set.empty (Set Context!10968)))))

(declare-fun b!6158821 () Bool)

(assert (=> b!6158821 (= e!3752457 call!512775)))

(declare-fun bm!512772 () Bool)

(assert (=> bm!512772 (= call!512777 (derivationStepZipperDown!1348 (ite c!1109044 (regOne!32713 (ite c!1108780 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))))) (regOne!32712 (ite c!1108780 (regOne!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343))))))) (ite c!1109044 (ite c!1108780 lt!2335351 (Context!10969 call!512612)) (Context!10969 call!512773)) (h!70923 s!2326)))))

(declare-fun bm!512773 () Bool)

(assert (=> bm!512773 (= call!512774 call!512773)))

(assert (= (and d!1929858 c!1109041) b!6158814))

(assert (= (and d!1929858 (not c!1109041)) b!6158811))

(assert (= (and b!6158811 c!1109044) b!6158812))

(assert (= (and b!6158811 (not c!1109044)) b!6158818))

(assert (= (and b!6158818 res!2550584) b!6158819))

(assert (= (and b!6158818 c!1109042) b!6158813))

(assert (= (and b!6158818 (not c!1109042)) b!6158816))

(assert (= (and b!6158816 c!1109043) b!6158821))

(assert (= (and b!6158816 (not c!1109043)) b!6158817))

(assert (= (and b!6158817 c!1109045) b!6158815))

(assert (= (and b!6158817 (not c!1109045)) b!6158820))

(assert (= (or b!6158821 b!6158815) bm!512773))

(assert (= (or b!6158821 b!6158815) bm!512770))

(assert (= (or b!6158813 bm!512773) bm!512771))

(assert (= (or b!6158813 bm!512770) bm!512768))

(assert (= (or b!6158812 bm!512768) bm!512769))

(assert (= (or b!6158812 b!6158813) bm!512772))

(declare-fun m!6997196 () Bool)

(assert (=> bm!512769 m!6997196))

(declare-fun m!6997198 () Bool)

(assert (=> b!6158814 m!6997198))

(declare-fun m!6997200 () Bool)

(assert (=> bm!512771 m!6997200))

(declare-fun m!6997202 () Bool)

(assert (=> bm!512772 m!6997202))

(declare-fun m!6997204 () Bool)

(assert (=> b!6158819 m!6997204))

(assert (=> bm!512611 d!1929858))

(declare-fun d!1929860 () Bool)

(declare-fun c!1109046 () Bool)

(assert (=> d!1929860 (= c!1109046 (isEmpty!36446 (tail!11807 s!2326)))))

(declare-fun e!3752463 () Bool)

(assert (=> d!1929860 (= (matchZipper!2112 (derivationStepZipper!2073 lt!2335352 (head!12722 s!2326)) (tail!11807 s!2326)) e!3752463)))

(declare-fun b!6158822 () Bool)

(assert (=> b!6158822 (= e!3752463 (nullableZipper!1881 (derivationStepZipper!2073 lt!2335352 (head!12722 s!2326))))))

(declare-fun b!6158823 () Bool)

(assert (=> b!6158823 (= e!3752463 (matchZipper!2112 (derivationStepZipper!2073 (derivationStepZipper!2073 lt!2335352 (head!12722 s!2326)) (head!12722 (tail!11807 s!2326))) (tail!11807 (tail!11807 s!2326))))))

(assert (= (and d!1929860 c!1109046) b!6158822))

(assert (= (and d!1929860 (not c!1109046)) b!6158823))

(assert (=> d!1929860 m!6996158))

(assert (=> d!1929860 m!6996310))

(assert (=> b!6158822 m!6996156))

(declare-fun m!6997206 () Bool)

(assert (=> b!6158822 m!6997206))

(assert (=> b!6158823 m!6996158))

(assert (=> b!6158823 m!6996752))

(assert (=> b!6158823 m!6996156))

(assert (=> b!6158823 m!6996752))

(declare-fun m!6997208 () Bool)

(assert (=> b!6158823 m!6997208))

(assert (=> b!6158823 m!6996158))

(assert (=> b!6158823 m!6996756))

(assert (=> b!6158823 m!6997208))

(assert (=> b!6158823 m!6996756))

(declare-fun m!6997210 () Bool)

(assert (=> b!6158823 m!6997210))

(assert (=> b!6157658 d!1929860))

(declare-fun bs!1526476 () Bool)

(declare-fun d!1929862 () Bool)

(assert (= bs!1526476 (and d!1929862 b!6157462)))

(declare-fun lambda!336050 () Int)

(assert (=> bs!1526476 (= (= (head!12722 s!2326) (h!70923 s!2326)) (= lambda!336050 lambda!335934))))

(declare-fun bs!1526477 () Bool)

(assert (= bs!1526477 (and d!1929862 d!1929738)))

(assert (=> bs!1526477 (= lambda!336050 lambda!336024)))

(declare-fun bs!1526478 () Bool)

(assert (= bs!1526478 (and d!1929862 d!1929842)))

(assert (=> bs!1526478 (= (= (head!12722 s!2326) (head!12722 (t!378093 s!2326))) (= lambda!336050 lambda!336048))))

(declare-fun bs!1526479 () Bool)

(assert (= bs!1526479 (and d!1929862 d!1929764)))

(assert (=> bs!1526479 (= lambda!336050 lambda!336033)))

(declare-fun bs!1526480 () Bool)

(assert (= bs!1526480 (and d!1929862 d!1929776)))

(assert (=> bs!1526480 (= (= (head!12722 s!2326) (head!12722 (t!378093 s!2326))) (= lambda!336050 lambda!336035))))

(declare-fun bs!1526481 () Bool)

(assert (= bs!1526481 (and d!1929862 d!1929614)))

(assert (=> bs!1526481 (= (= (head!12722 s!2326) (head!12722 (t!378093 s!2326))) (= lambda!336050 lambda!336014))))

(declare-fun bs!1526482 () Bool)

(assert (= bs!1526482 (and d!1929862 d!1929716)))

(assert (=> bs!1526482 (= (= (head!12722 s!2326) (head!12722 (t!378093 s!2326))) (= lambda!336050 lambda!336022))))

(declare-fun bs!1526483 () Bool)

(assert (= bs!1526483 (and d!1929862 d!1929678)))

(assert (=> bs!1526483 (= (= (head!12722 s!2326) (head!12722 (t!378093 s!2326))) (= lambda!336050 lambda!336019))))

(declare-fun bs!1526484 () Bool)

(assert (= bs!1526484 (and d!1929862 d!1929674)))

(assert (=> bs!1526484 (= (= (head!12722 s!2326) (head!12722 (t!378093 s!2326))) (= lambda!336050 lambda!336018))))

(declare-fun bs!1526485 () Bool)

(assert (= bs!1526485 (and d!1929862 d!1929796)))

(assert (=> bs!1526485 (= (= (head!12722 s!2326) (head!12722 (t!378093 s!2326))) (= lambda!336050 lambda!336041))))

(assert (=> d!1929862 true))

(assert (=> d!1929862 (= (derivationStepZipper!2073 lt!2335352 (head!12722 s!2326)) (flatMap!1605 lt!2335352 lambda!336050))))

(declare-fun bs!1526486 () Bool)

(assert (= bs!1526486 d!1929862))

(declare-fun m!6997212 () Bool)

(assert (=> bs!1526486 m!6997212))

(assert (=> b!6157658 d!1929862))

(assert (=> b!6157658 d!1929654))

(assert (=> b!6157658 d!1929656))

(assert (=> d!1929488 d!1929606))

(declare-fun b!6158824 () Bool)

(declare-fun e!3752468 () (Set Context!10968))

(declare-fun e!3752466 () (Set Context!10968))

(assert (=> b!6158824 (= e!3752468 e!3752466)))

(declare-fun c!1109050 () Bool)

(assert (=> b!6158824 (= c!1109050 (is-Union!16100 (h!70924 (exprs!5984 lt!2335351))))))

(declare-fun b!6158825 () Bool)

(declare-fun call!512783 () (Set Context!10968))

(declare-fun call!512784 () (Set Context!10968))

(assert (=> b!6158825 (= e!3752466 (set.union call!512783 call!512784))))

(declare-fun bm!512774 () Bool)

(declare-fun call!512782 () (Set Context!10968))

(assert (=> bm!512774 (= call!512782 call!512784)))

(declare-fun b!6158826 () Bool)

(declare-fun e!3752467 () (Set Context!10968))

(assert (=> b!6158826 (= e!3752467 (set.union call!512783 call!512782))))

(declare-fun b!6158827 () Bool)

(assert (=> b!6158827 (= e!3752468 (set.insert (Context!10969 (t!378094 (exprs!5984 lt!2335351))) (as set.empty (Set Context!10968))))))

(declare-fun d!1929864 () Bool)

(declare-fun c!1109047 () Bool)

(assert (=> d!1929864 (= c!1109047 (and (is-ElementMatch!16100 (h!70924 (exprs!5984 lt!2335351))) (= (c!1108675 (h!70924 (exprs!5984 lt!2335351))) (h!70923 s!2326))))))

(assert (=> d!1929864 (= (derivationStepZipperDown!1348 (h!70924 (exprs!5984 lt!2335351)) (Context!10969 (t!378094 (exprs!5984 lt!2335351))) (h!70923 s!2326)) e!3752468)))

(declare-fun b!6158828 () Bool)

(declare-fun e!3752465 () (Set Context!10968))

(declare-fun call!512781 () (Set Context!10968))

(assert (=> b!6158828 (= e!3752465 call!512781)))

(declare-fun call!512780 () List!64600)

(declare-fun c!1109049 () Bool)

(declare-fun bm!512775 () Bool)

(declare-fun c!1109048 () Bool)

(assert (=> bm!512775 (= call!512784 (derivationStepZipperDown!1348 (ite c!1109050 (regTwo!32713 (h!70924 (exprs!5984 lt!2335351))) (ite c!1109048 (regTwo!32712 (h!70924 (exprs!5984 lt!2335351))) (ite c!1109049 (regOne!32712 (h!70924 (exprs!5984 lt!2335351))) (reg!16429 (h!70924 (exprs!5984 lt!2335351)))))) (ite (or c!1109050 c!1109048) (Context!10969 (t!378094 (exprs!5984 lt!2335351))) (Context!10969 call!512780)) (h!70923 s!2326)))))

(declare-fun b!6158829 () Bool)

(declare-fun e!3752464 () (Set Context!10968))

(assert (=> b!6158829 (= e!3752467 e!3752464)))

(assert (=> b!6158829 (= c!1109049 (is-Concat!24945 (h!70924 (exprs!5984 lt!2335351))))))

(declare-fun b!6158830 () Bool)

(declare-fun c!1109051 () Bool)

(assert (=> b!6158830 (= c!1109051 (is-Star!16100 (h!70924 (exprs!5984 lt!2335351))))))

(assert (=> b!6158830 (= e!3752464 e!3752465)))

(declare-fun bm!512776 () Bool)

(assert (=> bm!512776 (= call!512781 call!512782)))

(declare-fun b!6158831 () Bool)

(declare-fun e!3752469 () Bool)

(assert (=> b!6158831 (= c!1109048 e!3752469)))

(declare-fun res!2550585 () Bool)

(assert (=> b!6158831 (=> (not res!2550585) (not e!3752469))))

(assert (=> b!6158831 (= res!2550585 (is-Concat!24945 (h!70924 (exprs!5984 lt!2335351))))))

(assert (=> b!6158831 (= e!3752466 e!3752467)))

(declare-fun bm!512777 () Bool)

(declare-fun call!512779 () List!64600)

(assert (=> bm!512777 (= call!512779 ($colon$colon!1977 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 lt!2335351)))) (ite (or c!1109048 c!1109049) (regTwo!32712 (h!70924 (exprs!5984 lt!2335351))) (h!70924 (exprs!5984 lt!2335351)))))))

(declare-fun b!6158832 () Bool)

(assert (=> b!6158832 (= e!3752469 (nullable!6093 (regOne!32712 (h!70924 (exprs!5984 lt!2335351)))))))

(declare-fun b!6158833 () Bool)

(assert (=> b!6158833 (= e!3752465 (as set.empty (Set Context!10968)))))

(declare-fun b!6158834 () Bool)

(assert (=> b!6158834 (= e!3752464 call!512781)))

(declare-fun bm!512778 () Bool)

(assert (=> bm!512778 (= call!512783 (derivationStepZipperDown!1348 (ite c!1109050 (regOne!32713 (h!70924 (exprs!5984 lt!2335351))) (regOne!32712 (h!70924 (exprs!5984 lt!2335351)))) (ite c!1109050 (Context!10969 (t!378094 (exprs!5984 lt!2335351))) (Context!10969 call!512779)) (h!70923 s!2326)))))

(declare-fun bm!512779 () Bool)

(assert (=> bm!512779 (= call!512780 call!512779)))

(assert (= (and d!1929864 c!1109047) b!6158827))

(assert (= (and d!1929864 (not c!1109047)) b!6158824))

(assert (= (and b!6158824 c!1109050) b!6158825))

(assert (= (and b!6158824 (not c!1109050)) b!6158831))

(assert (= (and b!6158831 res!2550585) b!6158832))

(assert (= (and b!6158831 c!1109048) b!6158826))

(assert (= (and b!6158831 (not c!1109048)) b!6158829))

(assert (= (and b!6158829 c!1109049) b!6158834))

(assert (= (and b!6158829 (not c!1109049)) b!6158830))

(assert (= (and b!6158830 c!1109051) b!6158828))

(assert (= (and b!6158830 (not c!1109051)) b!6158833))

(assert (= (or b!6158834 b!6158828) bm!512779))

(assert (= (or b!6158834 b!6158828) bm!512776))

(assert (= (or b!6158826 bm!512779) bm!512777))

(assert (= (or b!6158826 bm!512776) bm!512774))

(assert (= (or b!6158825 bm!512774) bm!512775))

(assert (= (or b!6158825 b!6158826) bm!512778))

(declare-fun m!6997214 () Bool)

(assert (=> bm!512775 m!6997214))

(declare-fun m!6997216 () Bool)

(assert (=> b!6158827 m!6997216))

(declare-fun m!6997218 () Bool)

(assert (=> bm!512777 m!6997218))

(declare-fun m!6997220 () Bool)

(assert (=> bm!512778 m!6997220))

(declare-fun m!6997222 () Bool)

(assert (=> b!6158832 m!6997222))

(assert (=> bm!512616 d!1929864))

(declare-fun b!6158835 () Bool)

(declare-fun e!3752474 () (Set Context!10968))

(declare-fun e!3752472 () (Set Context!10968))

(assert (=> b!6158835 (= e!3752474 e!3752472)))

(declare-fun c!1109055 () Bool)

(assert (=> b!6158835 (= c!1109055 (is-Union!16100 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))))))

(declare-fun b!6158836 () Bool)

(declare-fun call!512789 () (Set Context!10968))

(declare-fun call!512790 () (Set Context!10968))

(assert (=> b!6158836 (= e!3752472 (set.union call!512789 call!512790))))

(declare-fun bm!512780 () Bool)

(declare-fun call!512788 () (Set Context!10968))

(assert (=> bm!512780 (= call!512788 call!512790)))

(declare-fun b!6158837 () Bool)

(declare-fun e!3752473 () (Set Context!10968))

(assert (=> b!6158837 (= e!3752473 (set.union call!512789 call!512788))))

(declare-fun b!6158838 () Bool)

(assert (=> b!6158838 (= e!3752474 (set.insert (Context!10969 (t!378094 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))) (as set.empty (Set Context!10968))))))

(declare-fun d!1929866 () Bool)

(declare-fun c!1109052 () Bool)

(assert (=> d!1929866 (= c!1109052 (and (is-ElementMatch!16100 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))) (= (c!1108675 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))) (h!70923 s!2326))))))

(assert (=> d!1929866 (= (derivationStepZipperDown!1348 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343))))))) (Context!10969 (t!378094 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))) (h!70923 s!2326)) e!3752474)))

(declare-fun b!6158839 () Bool)

(declare-fun e!3752471 () (Set Context!10968))

(declare-fun call!512787 () (Set Context!10968))

(assert (=> b!6158839 (= e!3752471 call!512787)))

(declare-fun c!1109053 () Bool)

(declare-fun c!1109054 () Bool)

(declare-fun call!512786 () List!64600)

(declare-fun bm!512781 () Bool)

(assert (=> bm!512781 (= call!512790 (derivationStepZipperDown!1348 (ite c!1109055 (regTwo!32713 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))) (ite c!1109053 (regTwo!32712 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))) (ite c!1109054 (regOne!32712 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))) (reg!16429 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343))))))))))) (ite (or c!1109055 c!1109053) (Context!10969 (t!378094 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))) (Context!10969 call!512786)) (h!70923 s!2326)))))

(declare-fun b!6158840 () Bool)

(declare-fun e!3752470 () (Set Context!10968))

(assert (=> b!6158840 (= e!3752473 e!3752470)))

(assert (=> b!6158840 (= c!1109054 (is-Concat!24945 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))))))

(declare-fun b!6158841 () Bool)

(declare-fun c!1109056 () Bool)

(assert (=> b!6158841 (= c!1109056 (is-Star!16100 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))))))

(assert (=> b!6158841 (= e!3752470 e!3752471)))

(declare-fun bm!512782 () Bool)

(assert (=> bm!512782 (= call!512787 call!512788)))

(declare-fun b!6158842 () Bool)

(declare-fun e!3752475 () Bool)

(assert (=> b!6158842 (= c!1109053 e!3752475)))

(declare-fun res!2550586 () Bool)

(assert (=> b!6158842 (=> (not res!2550586) (not e!3752475))))

(assert (=> b!6158842 (= res!2550586 (is-Concat!24945 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))))))

(assert (=> b!6158842 (= e!3752472 e!3752473)))

(declare-fun bm!512783 () Bool)

(declare-fun call!512785 () List!64600)

(assert (=> bm!512783 (= call!512785 ($colon$colon!1977 (exprs!5984 (Context!10969 (t!378094 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343))))))))) (ite (or c!1109053 c!1109054) (regTwo!32712 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))) (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343))))))))))))

(declare-fun b!6158843 () Bool)

(assert (=> b!6158843 (= e!3752475 (nullable!6093 (regOne!32712 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343))))))))))))

(declare-fun b!6158844 () Bool)

(assert (=> b!6158844 (= e!3752471 (as set.empty (Set Context!10968)))))

(declare-fun b!6158845 () Bool)

(assert (=> b!6158845 (= e!3752470 call!512787)))

(declare-fun bm!512784 () Bool)

(assert (=> bm!512784 (= call!512789 (derivationStepZipperDown!1348 (ite c!1109055 (regOne!32713 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))) (regOne!32712 (h!70924 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343))))))))) (ite c!1109055 (Context!10969 (t!378094 (exprs!5984 (Context!10969 (Cons!64476 (h!70924 (exprs!5984 (h!70925 zl!343))) (t!378094 (exprs!5984 (h!70925 zl!343)))))))) (Context!10969 call!512785)) (h!70923 s!2326)))))

(declare-fun bm!512785 () Bool)

(assert (=> bm!512785 (= call!512786 call!512785)))

(assert (= (and d!1929866 c!1109052) b!6158838))

(assert (= (and d!1929866 (not c!1109052)) b!6158835))

(assert (= (and b!6158835 c!1109055) b!6158836))

(assert (= (and b!6158835 (not c!1109055)) b!6158842))

(assert (= (and b!6158842 res!2550586) b!6158843))

(assert (= (and b!6158842 c!1109053) b!6158837))

(assert (= (and b!6158842 (not c!1109053)) b!6158840))

(assert (= (and b!6158840 c!1109054) b!6158845))

(assert (= (and b!6158840 (not c!1109054)) b!6158841))

(assert (= (and b!6158841 c!1109056) b!6158839))

(assert (= (and b!6158841 (not c!1109056)) b!6158844))

(assert (= (or b!6158845 b!6158839) bm!512785))

(assert (= (or b!6158845 b!6158839) bm!512782))

(assert (= (or b!6158837 bm!512785) bm!512783))

(assert (= (or b!6158837 bm!512782) bm!512780))

(assert (= (or b!6158836 bm!512780) bm!512781))

(assert (= (or b!6158836 b!6158837) bm!512784))

(declare-fun m!6997224 () Bool)

(assert (=> bm!512781 m!6997224))

(declare-fun m!6997226 () Bool)

(assert (=> b!6158838 m!6997226))

(declare-fun m!6997228 () Bool)

(assert (=> bm!512783 m!6997228))

(declare-fun m!6997230 () Bool)

(assert (=> bm!512784 m!6997230))

(declare-fun m!6997232 () Bool)

(assert (=> b!6158843 m!6997232))

(assert (=> bm!512617 d!1929866))

(declare-fun bm!512786 () Bool)

(declare-fun call!512791 () Bool)

(declare-fun call!512792 () Bool)

(assert (=> bm!512786 (= call!512791 call!512792)))

(declare-fun bm!512787 () Bool)

(declare-fun c!1109057 () Bool)

(declare-fun c!1109058 () Bool)

(assert (=> bm!512787 (= call!512792 (validRegex!7836 (ite c!1109058 (reg!16429 (ite c!1108802 (regOne!32713 r!7292) (regOne!32712 r!7292))) (ite c!1109057 (regTwo!32713 (ite c!1108802 (regOne!32713 r!7292) (regOne!32712 r!7292))) (regTwo!32712 (ite c!1108802 (regOne!32713 r!7292) (regOne!32712 r!7292)))))))))

(declare-fun b!6158846 () Bool)

(declare-fun e!3752480 () Bool)

(assert (=> b!6158846 (= e!3752480 call!512792)))

(declare-fun b!6158847 () Bool)

(declare-fun e!3752478 () Bool)

(declare-fun e!3752481 () Bool)

(assert (=> b!6158847 (= e!3752478 e!3752481)))

(assert (=> b!6158847 (= c!1109057 (is-Union!16100 (ite c!1108802 (regOne!32713 r!7292) (regOne!32712 r!7292))))))

(declare-fun b!6158848 () Bool)

(declare-fun res!2550589 () Bool)

(declare-fun e!3752479 () Bool)

(assert (=> b!6158848 (=> res!2550589 e!3752479)))

(assert (=> b!6158848 (= res!2550589 (not (is-Concat!24945 (ite c!1108802 (regOne!32713 r!7292) (regOne!32712 r!7292)))))))

(assert (=> b!6158848 (= e!3752481 e!3752479)))

(declare-fun b!6158849 () Bool)

(declare-fun e!3752476 () Bool)

(assert (=> b!6158849 (= e!3752476 call!512791)))

(declare-fun bm!512788 () Bool)

(declare-fun call!512793 () Bool)

(assert (=> bm!512788 (= call!512793 (validRegex!7836 (ite c!1109057 (regOne!32713 (ite c!1108802 (regOne!32713 r!7292) (regOne!32712 r!7292))) (regOne!32712 (ite c!1108802 (regOne!32713 r!7292) (regOne!32712 r!7292))))))))

(declare-fun b!6158850 () Bool)

(assert (=> b!6158850 (= e!3752478 e!3752480)))

(declare-fun res!2550590 () Bool)

(assert (=> b!6158850 (= res!2550590 (not (nullable!6093 (reg!16429 (ite c!1108802 (regOne!32713 r!7292) (regOne!32712 r!7292))))))))

(assert (=> b!6158850 (=> (not res!2550590) (not e!3752480))))

(declare-fun b!6158851 () Bool)

(declare-fun e!3752482 () Bool)

(assert (=> b!6158851 (= e!3752479 e!3752482)))

(declare-fun res!2550588 () Bool)

(assert (=> b!6158851 (=> (not res!2550588) (not e!3752482))))

(assert (=> b!6158851 (= res!2550588 call!512793)))

(declare-fun b!6158852 () Bool)

(declare-fun e!3752477 () Bool)

(assert (=> b!6158852 (= e!3752477 e!3752478)))

(assert (=> b!6158852 (= c!1109058 (is-Star!16100 (ite c!1108802 (regOne!32713 r!7292) (regOne!32712 r!7292))))))

(declare-fun d!1929868 () Bool)

(declare-fun res!2550591 () Bool)

(assert (=> d!1929868 (=> res!2550591 e!3752477)))

(assert (=> d!1929868 (= res!2550591 (is-ElementMatch!16100 (ite c!1108802 (regOne!32713 r!7292) (regOne!32712 r!7292))))))

(assert (=> d!1929868 (= (validRegex!7836 (ite c!1108802 (regOne!32713 r!7292) (regOne!32712 r!7292))) e!3752477)))

(declare-fun b!6158853 () Bool)

(assert (=> b!6158853 (= e!3752482 call!512791)))

(declare-fun b!6158854 () Bool)

(declare-fun res!2550587 () Bool)

(assert (=> b!6158854 (=> (not res!2550587) (not e!3752476))))

(assert (=> b!6158854 (= res!2550587 call!512793)))

(assert (=> b!6158854 (= e!3752481 e!3752476)))

(assert (= (and d!1929868 (not res!2550591)) b!6158852))

(assert (= (and b!6158852 c!1109058) b!6158850))

(assert (= (and b!6158852 (not c!1109058)) b!6158847))

(assert (= (and b!6158850 res!2550590) b!6158846))

(assert (= (and b!6158847 c!1109057) b!6158854))

(assert (= (and b!6158847 (not c!1109057)) b!6158848))

(assert (= (and b!6158854 res!2550587) b!6158849))

(assert (= (and b!6158848 (not res!2550589)) b!6158851))

(assert (= (and b!6158851 res!2550588) b!6158853))

(assert (= (or b!6158849 b!6158853) bm!512786))

(assert (= (or b!6158854 b!6158851) bm!512788))

(assert (= (or b!6158846 bm!512786) bm!512787))

(declare-fun m!6997234 () Bool)

(assert (=> bm!512787 m!6997234))

(declare-fun m!6997236 () Bool)

(assert (=> bm!512788 m!6997236))

(declare-fun m!6997238 () Bool)

(assert (=> b!6158850 m!6997238))

(assert (=> bm!512628 d!1929868))

(declare-fun d!1929870 () Bool)

(declare-fun c!1109059 () Bool)

(assert (=> d!1929870 (= c!1109059 (isEmpty!36446 (tail!11807 (t!378093 s!2326))))))

(declare-fun e!3752483 () Bool)

(assert (=> d!1929870 (= (matchZipper!2112 (derivationStepZipper!2073 (set.union lt!2335362 lt!2335358) (head!12722 (t!378093 s!2326))) (tail!11807 (t!378093 s!2326))) e!3752483)))

(declare-fun b!6158855 () Bool)

(assert (=> b!6158855 (= e!3752483 (nullableZipper!1881 (derivationStepZipper!2073 (set.union lt!2335362 lt!2335358) (head!12722 (t!378093 s!2326)))))))

(declare-fun b!6158856 () Bool)

(assert (=> b!6158856 (= e!3752483 (matchZipper!2112 (derivationStepZipper!2073 (derivationStepZipper!2073 (set.union lt!2335362 lt!2335358) (head!12722 (t!378093 s!2326))) (head!12722 (tail!11807 (t!378093 s!2326)))) (tail!11807 (tail!11807 (t!378093 s!2326)))))))

(assert (= (and d!1929870 c!1109059) b!6158855))

(assert (= (and d!1929870 (not c!1109059)) b!6158856))

(assert (=> d!1929870 m!6996178))

(assert (=> d!1929870 m!6996710))

(assert (=> b!6158855 m!6996408))

(declare-fun m!6997240 () Bool)

(assert (=> b!6158855 m!6997240))

(assert (=> b!6158856 m!6996178))

(assert (=> b!6158856 m!6996714))

(assert (=> b!6158856 m!6996408))

(assert (=> b!6158856 m!6996714))

(declare-fun m!6997242 () Bool)

(assert (=> b!6158856 m!6997242))

(assert (=> b!6158856 m!6996178))

(assert (=> b!6158856 m!6996718))

(assert (=> b!6158856 m!6997242))

(assert (=> b!6158856 m!6996718))

(declare-fun m!6997244 () Bool)

(assert (=> b!6158856 m!6997244))

(assert (=> b!6157958 d!1929870))

(declare-fun bs!1526487 () Bool)

(declare-fun d!1929872 () Bool)

(assert (= bs!1526487 (and d!1929872 b!6157462)))

(declare-fun lambda!336051 () Int)

(assert (=> bs!1526487 (= (= (head!12722 (t!378093 s!2326)) (h!70923 s!2326)) (= lambda!336051 lambda!335934))))

(declare-fun bs!1526488 () Bool)

(assert (= bs!1526488 (and d!1929872 d!1929738)))

(assert (=> bs!1526488 (= (= (head!12722 (t!378093 s!2326)) (head!12722 s!2326)) (= lambda!336051 lambda!336024))))

(declare-fun bs!1526489 () Bool)

(assert (= bs!1526489 (and d!1929872 d!1929842)))

(assert (=> bs!1526489 (= lambda!336051 lambda!336048)))

(declare-fun bs!1526490 () Bool)

(assert (= bs!1526490 (and d!1929872 d!1929764)))

(assert (=> bs!1526490 (= (= (head!12722 (t!378093 s!2326)) (head!12722 s!2326)) (= lambda!336051 lambda!336033))))

(declare-fun bs!1526491 () Bool)

(assert (= bs!1526491 (and d!1929872 d!1929776)))

(assert (=> bs!1526491 (= lambda!336051 lambda!336035)))

(declare-fun bs!1526492 () Bool)

(assert (= bs!1526492 (and d!1929872 d!1929614)))

(assert (=> bs!1526492 (= lambda!336051 lambda!336014)))

(declare-fun bs!1526493 () Bool)

(assert (= bs!1526493 (and d!1929872 d!1929862)))

(assert (=> bs!1526493 (= (= (head!12722 (t!378093 s!2326)) (head!12722 s!2326)) (= lambda!336051 lambda!336050))))

(declare-fun bs!1526494 () Bool)

(assert (= bs!1526494 (and d!1929872 d!1929716)))

(assert (=> bs!1526494 (= lambda!336051 lambda!336022)))

(declare-fun bs!1526495 () Bool)

(assert (= bs!1526495 (and d!1929872 d!1929678)))

(assert (=> bs!1526495 (= lambda!336051 lambda!336019)))

(declare-fun bs!1526496 () Bool)

(assert (= bs!1526496 (and d!1929872 d!1929674)))

(assert (=> bs!1526496 (= lambda!336051 lambda!336018)))

(declare-fun bs!1526497 () Bool)

(assert (= bs!1526497 (and d!1929872 d!1929796)))

(assert (=> bs!1526497 (= lambda!336051 lambda!336041)))

(assert (=> d!1929872 true))

(assert (=> d!1929872 (= (derivationStepZipper!2073 (set.union lt!2335362 lt!2335358) (head!12722 (t!378093 s!2326))) (flatMap!1605 (set.union lt!2335362 lt!2335358) lambda!336051))))

(declare-fun bs!1526498 () Bool)

(assert (= bs!1526498 d!1929872))

(declare-fun m!6997246 () Bool)

(assert (=> bs!1526498 m!6997246))

(assert (=> b!6157958 d!1929872))

(assert (=> b!6157958 d!1929616))

(assert (=> b!6157958 d!1929618))

(assert (=> b!6157789 d!1929436))

(declare-fun d!1929874 () Bool)

(assert (=> d!1929874 (= (isEmpty!36447 (findConcatSeparation!2405 (regOne!32712 r!7292) (regTwo!32712 r!7292) Nil!64475 s!2326 s!2326)) (not (is-Some!15990 (findConcatSeparation!2405 (regOne!32712 r!7292) (regTwo!32712 r!7292) Nil!64475 s!2326 s!2326))))))

(assert (=> d!1929422 d!1929874))

(declare-fun b!6158857 () Bool)

(declare-fun e!3752488 () (Set Context!10968))

(declare-fun e!3752486 () (Set Context!10968))

(assert (=> b!6158857 (= e!3752488 e!3752486)))

(declare-fun c!1109063 () Bool)

(assert (=> b!6158857 (= c!1109063 (is-Union!16100 (ite c!1108740 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108738 (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108739 (regOne!32712 (regOne!32713 (regOne!32712 r!7292))) (reg!16429 (regOne!32713 (regOne!32712 r!7292))))))))))

(declare-fun b!6158858 () Bool)

(declare-fun call!512798 () (Set Context!10968))

(declare-fun call!512799 () (Set Context!10968))

(assert (=> b!6158858 (= e!3752486 (set.union call!512798 call!512799))))

(declare-fun bm!512789 () Bool)

(declare-fun call!512797 () (Set Context!10968))

(assert (=> bm!512789 (= call!512797 call!512799)))

(declare-fun b!6158859 () Bool)

(declare-fun e!3752487 () (Set Context!10968))

(assert (=> b!6158859 (= e!3752487 (set.union call!512798 call!512797))))

(declare-fun b!6158860 () Bool)

(assert (=> b!6158860 (= e!3752488 (set.insert (ite (or c!1108740 c!1108738) lt!2335351 (Context!10969 call!512598)) (as set.empty (Set Context!10968))))))

(declare-fun c!1109060 () Bool)

(declare-fun d!1929876 () Bool)

(assert (=> d!1929876 (= c!1109060 (and (is-ElementMatch!16100 (ite c!1108740 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108738 (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108739 (regOne!32712 (regOne!32713 (regOne!32712 r!7292))) (reg!16429 (regOne!32713 (regOne!32712 r!7292))))))) (= (c!1108675 (ite c!1108740 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108738 (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108739 (regOne!32712 (regOne!32713 (regOne!32712 r!7292))) (reg!16429 (regOne!32713 (regOne!32712 r!7292))))))) (h!70923 s!2326))))))

(assert (=> d!1929876 (= (derivationStepZipperDown!1348 (ite c!1108740 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108738 (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108739 (regOne!32712 (regOne!32713 (regOne!32712 r!7292))) (reg!16429 (regOne!32713 (regOne!32712 r!7292)))))) (ite (or c!1108740 c!1108738) lt!2335351 (Context!10969 call!512598)) (h!70923 s!2326)) e!3752488)))

(declare-fun b!6158861 () Bool)

(declare-fun e!3752485 () (Set Context!10968))

(declare-fun call!512796 () (Set Context!10968))

(assert (=> b!6158861 (= e!3752485 call!512796)))

(declare-fun bm!512790 () Bool)

(declare-fun c!1109061 () Bool)

(declare-fun call!512795 () List!64600)

(declare-fun c!1109062 () Bool)

(assert (=> bm!512790 (= call!512799 (derivationStepZipperDown!1348 (ite c!1109063 (regTwo!32713 (ite c!1108740 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108738 (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108739 (regOne!32712 (regOne!32713 (regOne!32712 r!7292))) (reg!16429 (regOne!32713 (regOne!32712 r!7292))))))) (ite c!1109061 (regTwo!32712 (ite c!1108740 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108738 (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108739 (regOne!32712 (regOne!32713 (regOne!32712 r!7292))) (reg!16429 (regOne!32713 (regOne!32712 r!7292))))))) (ite c!1109062 (regOne!32712 (ite c!1108740 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108738 (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108739 (regOne!32712 (regOne!32713 (regOne!32712 r!7292))) (reg!16429 (regOne!32713 (regOne!32712 r!7292))))))) (reg!16429 (ite c!1108740 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108738 (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108739 (regOne!32712 (regOne!32713 (regOne!32712 r!7292))) (reg!16429 (regOne!32713 (regOne!32712 r!7292)))))))))) (ite (or c!1109063 c!1109061) (ite (or c!1108740 c!1108738) lt!2335351 (Context!10969 call!512598)) (Context!10969 call!512795)) (h!70923 s!2326)))))

(declare-fun b!6158862 () Bool)

(declare-fun e!3752484 () (Set Context!10968))

(assert (=> b!6158862 (= e!3752487 e!3752484)))

(assert (=> b!6158862 (= c!1109062 (is-Concat!24945 (ite c!1108740 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108738 (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108739 (regOne!32712 (regOne!32713 (regOne!32712 r!7292))) (reg!16429 (regOne!32713 (regOne!32712 r!7292))))))))))

(declare-fun c!1109064 () Bool)

(declare-fun b!6158863 () Bool)

(assert (=> b!6158863 (= c!1109064 (is-Star!16100 (ite c!1108740 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108738 (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108739 (regOne!32712 (regOne!32713 (regOne!32712 r!7292))) (reg!16429 (regOne!32713 (regOne!32712 r!7292))))))))))

(assert (=> b!6158863 (= e!3752484 e!3752485)))

(declare-fun bm!512791 () Bool)

(assert (=> bm!512791 (= call!512796 call!512797)))

(declare-fun b!6158864 () Bool)

(declare-fun e!3752489 () Bool)

(assert (=> b!6158864 (= c!1109061 e!3752489)))

(declare-fun res!2550592 () Bool)

(assert (=> b!6158864 (=> (not res!2550592) (not e!3752489))))

(assert (=> b!6158864 (= res!2550592 (is-Concat!24945 (ite c!1108740 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108738 (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108739 (regOne!32712 (regOne!32713 (regOne!32712 r!7292))) (reg!16429 (regOne!32713 (regOne!32712 r!7292))))))))))

(assert (=> b!6158864 (= e!3752486 e!3752487)))

(declare-fun call!512794 () List!64600)

(declare-fun bm!512792 () Bool)

(assert (=> bm!512792 (= call!512794 ($colon$colon!1977 (exprs!5984 (ite (or c!1108740 c!1108738) lt!2335351 (Context!10969 call!512598))) (ite (or c!1109061 c!1109062) (regTwo!32712 (ite c!1108740 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108738 (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108739 (regOne!32712 (regOne!32713 (regOne!32712 r!7292))) (reg!16429 (regOne!32713 (regOne!32712 r!7292))))))) (ite c!1108740 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108738 (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108739 (regOne!32712 (regOne!32713 (regOne!32712 r!7292))) (reg!16429 (regOne!32713 (regOne!32712 r!7292)))))))))))

(declare-fun b!6158865 () Bool)

(assert (=> b!6158865 (= e!3752489 (nullable!6093 (regOne!32712 (ite c!1108740 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108738 (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108739 (regOne!32712 (regOne!32713 (regOne!32712 r!7292))) (reg!16429 (regOne!32713 (regOne!32712 r!7292)))))))))))

(declare-fun b!6158866 () Bool)

(assert (=> b!6158866 (= e!3752485 (as set.empty (Set Context!10968)))))

(declare-fun b!6158867 () Bool)

(assert (=> b!6158867 (= e!3752484 call!512796)))

(declare-fun bm!512793 () Bool)

(assert (=> bm!512793 (= call!512798 (derivationStepZipperDown!1348 (ite c!1109063 (regOne!32713 (ite c!1108740 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108738 (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108739 (regOne!32712 (regOne!32713 (regOne!32712 r!7292))) (reg!16429 (regOne!32713 (regOne!32712 r!7292))))))) (regOne!32712 (ite c!1108740 (regTwo!32713 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108738 (regTwo!32712 (regOne!32713 (regOne!32712 r!7292))) (ite c!1108739 (regOne!32712 (regOne!32713 (regOne!32712 r!7292))) (reg!16429 (regOne!32713 (regOne!32712 r!7292)))))))) (ite c!1109063 (ite (or c!1108740 c!1108738) lt!2335351 (Context!10969 call!512598)) (Context!10969 call!512794)) (h!70923 s!2326)))))

(declare-fun bm!512794 () Bool)

(assert (=> bm!512794 (= call!512795 call!512794)))

(assert (= (and d!1929876 c!1109060) b!6158860))

(assert (= (and d!1929876 (not c!1109060)) b!6158857))

(assert (= (and b!6158857 c!1109063) b!6158858))

(assert (= (and b!6158857 (not c!1109063)) b!6158864))

(assert (= (and b!6158864 res!2550592) b!6158865))

(assert (= (and b!6158864 c!1109061) b!6158859))

(assert (= (and b!6158864 (not c!1109061)) b!6158862))

(assert (= (and b!6158862 c!1109062) b!6158867))

(assert (= (and b!6158862 (not c!1109062)) b!6158863))

(assert (= (and b!6158863 c!1109064) b!6158861))

(assert (= (and b!6158863 (not c!1109064)) b!6158866))

(assert (= (or b!6158867 b!6158861) bm!512794))

(assert (= (or b!6158867 b!6158861) bm!512791))

(assert (= (or b!6158859 bm!512794) bm!512792))

(assert (= (or b!6158859 bm!512791) bm!512789))

(assert (= (or b!6158858 bm!512789) bm!512790))

(assert (= (or b!6158858 b!6158859) bm!512793))

(declare-fun m!6997248 () Bool)

(assert (=> bm!512790 m!6997248))

(declare-fun m!6997250 () Bool)

(assert (=> b!6158860 m!6997250))

(declare-fun m!6997252 () Bool)

(assert (=> bm!512792 m!6997252))

(declare-fun m!6997254 () Bool)

(assert (=> bm!512793 m!6997254))

(declare-fun m!6997256 () Bool)

(assert (=> b!6158865 m!6997256))

(assert (=> bm!512593 d!1929876))

(assert (=> bm!512602 d!1929624))

(declare-fun b!6158868 () Bool)

(declare-fun e!3752494 () (Set Context!10968))

(declare-fun e!3752492 () (Set Context!10968))

(assert (=> b!6158868 (= e!3752494 e!3752492)))

(declare-fun c!1109068 () Bool)

(assert (=> b!6158868 (= c!1109068 (is-Union!16100 (ite c!1108780 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108778 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108779 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343)))))))))))

(declare-fun b!6158869 () Bool)

(declare-fun call!512804 () (Set Context!10968))

(declare-fun call!512805 () (Set Context!10968))

(assert (=> b!6158869 (= e!3752492 (set.union call!512804 call!512805))))

(declare-fun bm!512795 () Bool)

(declare-fun call!512803 () (Set Context!10968))

(assert (=> bm!512795 (= call!512803 call!512805)))

(declare-fun b!6158870 () Bool)

(declare-fun e!3752493 () (Set Context!10968))

(assert (=> b!6158870 (= e!3752493 (set.union call!512804 call!512803))))

(declare-fun b!6158871 () Bool)

(assert (=> b!6158871 (= e!3752494 (set.insert (ite (or c!1108780 c!1108778) lt!2335351 (Context!10969 call!512613)) (as set.empty (Set Context!10968))))))

(declare-fun c!1109065 () Bool)

(declare-fun d!1929878 () Bool)

(assert (=> d!1929878 (= c!1109065 (and (is-ElementMatch!16100 (ite c!1108780 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108778 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108779 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343)))))))) (= (c!1108675 (ite c!1108780 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108778 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108779 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343)))))))) (h!70923 s!2326))))))

(assert (=> d!1929878 (= (derivationStepZipperDown!1348 (ite c!1108780 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108778 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108779 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343))))))) (ite (or c!1108780 c!1108778) lt!2335351 (Context!10969 call!512613)) (h!70923 s!2326)) e!3752494)))

(declare-fun b!6158872 () Bool)

(declare-fun e!3752491 () (Set Context!10968))

(declare-fun call!512802 () (Set Context!10968))

(assert (=> b!6158872 (= e!3752491 call!512802)))

(declare-fun call!512801 () List!64600)

(declare-fun c!1109067 () Bool)

(declare-fun c!1109066 () Bool)

(declare-fun bm!512796 () Bool)

(assert (=> bm!512796 (= call!512805 (derivationStepZipperDown!1348 (ite c!1109068 (regTwo!32713 (ite c!1108780 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108778 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108779 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343)))))))) (ite c!1109066 (regTwo!32712 (ite c!1108780 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108778 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108779 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343)))))))) (ite c!1109067 (regOne!32712 (ite c!1108780 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108778 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108779 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343)))))))) (reg!16429 (ite c!1108780 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108778 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108779 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343))))))))))) (ite (or c!1109068 c!1109066) (ite (or c!1108780 c!1108778) lt!2335351 (Context!10969 call!512613)) (Context!10969 call!512801)) (h!70923 s!2326)))))

(declare-fun b!6158873 () Bool)

(declare-fun e!3752490 () (Set Context!10968))

(assert (=> b!6158873 (= e!3752493 e!3752490)))

(assert (=> b!6158873 (= c!1109067 (is-Concat!24945 (ite c!1108780 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108778 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108779 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343)))))))))))

(declare-fun c!1109069 () Bool)

(declare-fun b!6158874 () Bool)

(assert (=> b!6158874 (= c!1109069 (is-Star!16100 (ite c!1108780 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108778 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108779 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343)))))))))))

(assert (=> b!6158874 (= e!3752490 e!3752491)))

(declare-fun bm!512797 () Bool)

(assert (=> bm!512797 (= call!512802 call!512803)))

(declare-fun b!6158875 () Bool)

(declare-fun e!3752495 () Bool)

(assert (=> b!6158875 (= c!1109066 e!3752495)))

(declare-fun res!2550593 () Bool)

(assert (=> b!6158875 (=> (not res!2550593) (not e!3752495))))

(assert (=> b!6158875 (= res!2550593 (is-Concat!24945 (ite c!1108780 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108778 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108779 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343)))))))))))

(assert (=> b!6158875 (= e!3752492 e!3752493)))

(declare-fun call!512800 () List!64600)

(declare-fun bm!512798 () Bool)

(assert (=> bm!512798 (= call!512800 ($colon$colon!1977 (exprs!5984 (ite (or c!1108780 c!1108778) lt!2335351 (Context!10969 call!512613))) (ite (or c!1109066 c!1109067) (regTwo!32712 (ite c!1108780 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108778 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108779 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343)))))))) (ite c!1108780 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108778 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108779 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343))))))))))))

(declare-fun b!6158876 () Bool)

(assert (=> b!6158876 (= e!3752495 (nullable!6093 (regOne!32712 (ite c!1108780 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108778 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108779 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343))))))))))))

(declare-fun b!6158877 () Bool)

(assert (=> b!6158877 (= e!3752491 (as set.empty (Set Context!10968)))))

(declare-fun b!6158878 () Bool)

(assert (=> b!6158878 (= e!3752490 call!512802)))

(declare-fun bm!512799 () Bool)

(assert (=> bm!512799 (= call!512804 (derivationStepZipperDown!1348 (ite c!1109068 (regOne!32713 (ite c!1108780 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108778 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108779 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343)))))))) (regOne!32712 (ite c!1108780 (regTwo!32713 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108778 (regTwo!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (ite c!1108779 (regOne!32712 (h!70924 (exprs!5984 (h!70925 zl!343)))) (reg!16429 (h!70924 (exprs!5984 (h!70925 zl!343))))))))) (ite c!1109068 (ite (or c!1108780 c!1108778) lt!2335351 (Context!10969 call!512613)) (Context!10969 call!512800)) (h!70923 s!2326)))))

(declare-fun bm!512800 () Bool)

(assert (=> bm!512800 (= call!512801 call!512800)))

(assert (= (and d!1929878 c!1109065) b!6158871))

(assert (= (and d!1929878 (not c!1109065)) b!6158868))

(assert (= (and b!6158868 c!1109068) b!6158869))

(assert (= (and b!6158868 (not c!1109068)) b!6158875))

(assert (= (and b!6158875 res!2550593) b!6158876))

(assert (= (and b!6158875 c!1109066) b!6158870))

(assert (= (and b!6158875 (not c!1109066)) b!6158873))

(assert (= (and b!6158873 c!1109067) b!6158878))

(assert (= (and b!6158873 (not c!1109067)) b!6158874))

(assert (= (and b!6158874 c!1109069) b!6158872))

(assert (= (and b!6158874 (not c!1109069)) b!6158877))

(assert (= (or b!6158878 b!6158872) bm!512800))

(assert (= (or b!6158878 b!6158872) bm!512797))

(assert (= (or b!6158870 bm!512800) bm!512798))

(assert (= (or b!6158870 bm!512797) bm!512795))

(assert (= (or b!6158869 bm!512795) bm!512796))

(assert (= (or b!6158869 b!6158870) bm!512799))

(declare-fun m!6997258 () Bool)

(assert (=> bm!512796 m!6997258))

(declare-fun m!6997260 () Bool)

(assert (=> b!6158871 m!6997260))

(declare-fun m!6997262 () Bool)

(assert (=> bm!512798 m!6997262))

(declare-fun m!6997264 () Bool)

(assert (=> bm!512799 m!6997264))

(declare-fun m!6997266 () Bool)

(assert (=> b!6158876 m!6997266))

(assert (=> bm!512608 d!1929878))

(assert (=> d!1929482 d!1929624))

(declare-fun d!1929880 () Bool)

(declare-fun res!2550598 () Bool)

(declare-fun e!3752500 () Bool)

(assert (=> d!1929880 (=> res!2550598 e!3752500)))

(assert (=> d!1929880 (= res!2550598 (is-Nil!64477 lt!2335461))))

(assert (=> d!1929880 (= (noDuplicate!1947 lt!2335461) e!3752500)))

(declare-fun b!6158883 () Bool)

(declare-fun e!3752501 () Bool)

(assert (=> b!6158883 (= e!3752500 e!3752501)))

(declare-fun res!2550599 () Bool)

(assert (=> b!6158883 (=> (not res!2550599) (not e!3752501))))

(declare-fun contains!20059 (List!64601 Context!10968) Bool)

(assert (=> b!6158883 (= res!2550599 (not (contains!20059 (t!378095 lt!2335461) (h!70925 lt!2335461))))))

(declare-fun b!6158884 () Bool)

(assert (=> b!6158884 (= e!3752501 (noDuplicate!1947 (t!378095 lt!2335461)))))

(assert (= (and d!1929880 (not res!2550598)) b!6158883))

(assert (= (and b!6158883 res!2550599) b!6158884))

(declare-fun m!6997268 () Bool)

(assert (=> b!6158883 m!6997268))

(declare-fun m!6997270 () Bool)

(assert (=> b!6158884 m!6997270))

(assert (=> d!1929394 d!1929880))

(declare-fun d!1929882 () Bool)

(declare-fun e!3752510 () Bool)

(assert (=> d!1929882 e!3752510))

(declare-fun res!2550604 () Bool)

(assert (=> d!1929882 (=> (not res!2550604) (not e!3752510))))

(declare-fun res!2550605 () List!64601)

(assert (=> d!1929882 (= res!2550604 (noDuplicate!1947 res!2550605))))

(declare-fun e!3752508 () Bool)

(assert (=> d!1929882 e!3752508))

(assert (=> d!1929882 (= (choose!45775 z!1189) res!2550605)))

(declare-fun b!6158892 () Bool)

(declare-fun e!3752509 () Bool)

(declare-fun tp!1719722 () Bool)

(assert (=> b!6158892 (= e!3752509 tp!1719722)))

(declare-fun tp!1719721 () Bool)

(declare-fun b!6158891 () Bool)

(assert (=> b!6158891 (= e!3752508 (and (inv!83498 (h!70925 res!2550605)) e!3752509 tp!1719721))))

(declare-fun b!6158893 () Bool)

(assert (=> b!6158893 (= e!3752510 (= (content!12022 res!2550605) z!1189))))

(assert (= b!6158891 b!6158892))

(assert (= (and d!1929882 (is-Cons!64477 res!2550605)) b!6158891))

(assert (= (and d!1929882 res!2550604) b!6158893))

(declare-fun m!6997272 () Bool)

(assert (=> d!1929882 m!6997272))

(declare-fun m!6997274 () Bool)

(assert (=> b!6158891 m!6997274))

(declare-fun m!6997276 () Bool)

(assert (=> b!6158893 m!6997276))

(assert (=> d!1929394 d!1929882))

(declare-fun bm!512801 () Bool)

(declare-fun call!512806 () Bool)

(declare-fun call!512807 () Bool)

(assert (=> bm!512801 (= call!512806 call!512807)))

(declare-fun c!1109071 () Bool)

(declare-fun c!1109070 () Bool)

(declare-fun bm!512802 () Bool)

(assert (=> bm!512802 (= call!512807 (validRegex!7836 (ite c!1109071 (reg!16429 lt!2335496) (ite c!1109070 (regTwo!32713 lt!2335496) (regTwo!32712 lt!2335496)))))))

(declare-fun b!6158894 () Bool)

(declare-fun e!3752515 () Bool)

(assert (=> b!6158894 (= e!3752515 call!512807)))

(declare-fun b!6158895 () Bool)

(declare-fun e!3752513 () Bool)

(declare-fun e!3752516 () Bool)

(assert (=> b!6158895 (= e!3752513 e!3752516)))

(assert (=> b!6158895 (= c!1109070 (is-Union!16100 lt!2335496))))

(declare-fun b!6158896 () Bool)

(declare-fun res!2550608 () Bool)

(declare-fun e!3752514 () Bool)

(assert (=> b!6158896 (=> res!2550608 e!3752514)))

(assert (=> b!6158896 (= res!2550608 (not (is-Concat!24945 lt!2335496)))))

(assert (=> b!6158896 (= e!3752516 e!3752514)))

(declare-fun b!6158897 () Bool)

(declare-fun e!3752511 () Bool)

(assert (=> b!6158897 (= e!3752511 call!512806)))

(declare-fun bm!512803 () Bool)

(declare-fun call!512808 () Bool)

(assert (=> bm!512803 (= call!512808 (validRegex!7836 (ite c!1109070 (regOne!32713 lt!2335496) (regOne!32712 lt!2335496))))))

(declare-fun b!6158898 () Bool)

(assert (=> b!6158898 (= e!3752513 e!3752515)))

(declare-fun res!2550609 () Bool)

(assert (=> b!6158898 (= res!2550609 (not (nullable!6093 (reg!16429 lt!2335496))))))

(assert (=> b!6158898 (=> (not res!2550609) (not e!3752515))))

(declare-fun b!6158899 () Bool)

(declare-fun e!3752517 () Bool)

(assert (=> b!6158899 (= e!3752514 e!3752517)))

(declare-fun res!2550607 () Bool)

(assert (=> b!6158899 (=> (not res!2550607) (not e!3752517))))

(assert (=> b!6158899 (= res!2550607 call!512808)))

(declare-fun b!6158900 () Bool)

(declare-fun e!3752512 () Bool)

(assert (=> b!6158900 (= e!3752512 e!3752513)))

(assert (=> b!6158900 (= c!1109071 (is-Star!16100 lt!2335496))))

(declare-fun d!1929884 () Bool)

(declare-fun res!2550610 () Bool)

(assert (=> d!1929884 (=> res!2550610 e!3752512)))

(assert (=> d!1929884 (= res!2550610 (is-ElementMatch!16100 lt!2335496))))

(assert (=> d!1929884 (= (validRegex!7836 lt!2335496) e!3752512)))

(declare-fun b!6158901 () Bool)

(assert (=> b!6158901 (= e!3752517 call!512806)))

(declare-fun b!6158902 () Bool)

(declare-fun res!2550606 () Bool)

(assert (=> b!6158902 (=> (not res!2550606) (not e!3752511))))

(assert (=> b!6158902 (= res!2550606 call!512808)))

(assert (=> b!6158902 (= e!3752516 e!3752511)))

(assert (= (and d!1929884 (not res!2550610)) b!6158900))

(assert (= (and b!6158900 c!1109071) b!6158898))

(assert (= (and b!6158900 (not c!1109071)) b!6158895))

(assert (= (and b!6158898 res!2550609) b!6158894))

(assert (= (and b!6158895 c!1109070) b!6158902))

(assert (= (and b!6158895 (not c!1109070)) b!6158896))

(assert (= (and b!6158902 res!2550606) b!6158897))

(assert (= (and b!6158896 (not res!2550608)) b!6158899))

(assert (= (and b!6158899 res!2550607) b!6158901))

(assert (= (or b!6158897 b!6158901) bm!512801))

(assert (= (or b!6158902 b!6158899) bm!512803))

(assert (= (or b!6158894 bm!512801) bm!512802))

(declare-fun m!6997278 () Bool)

(assert (=> bm!512802 m!6997278))

(declare-fun m!6997280 () Bool)

(assert (=> bm!512803 m!6997280))

(declare-fun m!6997282 () Bool)

(assert (=> b!6158898 m!6997282))

(assert (=> d!1929462 d!1929884))

(assert (=> d!1929462 d!1929386))

(assert (=> d!1929462 d!1929388))

(declare-fun b!6158903 () Bool)

(declare-fun e!3752518 () Bool)

(declare-fun tp!1719723 () Bool)

(declare-fun tp!1719724 () Bool)

(assert (=> b!6158903 (= e!3752518 (and tp!1719723 tp!1719724))))

(assert (=> b!6158003 (= tp!1719635 e!3752518)))

(assert (= (and b!6158003 (is-Cons!64476 (exprs!5984 setElem!41721))) b!6158903))

(declare-fun condSetEmpty!41730 () Bool)

(assert (=> setNonEmpty!41721 (= condSetEmpty!41730 (= setRest!41721 (as set.empty (Set Context!10968))))))

(declare-fun setRes!41730 () Bool)

(assert (=> setNonEmpty!41721 (= tp!1719636 setRes!41730)))

(declare-fun setIsEmpty!41730 () Bool)

(assert (=> setIsEmpty!41730 setRes!41730))

(declare-fun setElem!41730 () Context!10968)

(declare-fun setNonEmpty!41730 () Bool)

(declare-fun tp!1719726 () Bool)

(declare-fun e!3752519 () Bool)

(assert (=> setNonEmpty!41730 (= setRes!41730 (and tp!1719726 (inv!83498 setElem!41730) e!3752519))))

(declare-fun setRest!41730 () (Set Context!10968))

(assert (=> setNonEmpty!41730 (= setRest!41721 (set.union (set.insert setElem!41730 (as set.empty (Set Context!10968))) setRest!41730))))

(declare-fun b!6158904 () Bool)

(declare-fun tp!1719725 () Bool)

(assert (=> b!6158904 (= e!3752519 tp!1719725)))

(assert (= (and setNonEmpty!41721 condSetEmpty!41730) setIsEmpty!41730))

(assert (= (and setNonEmpty!41721 (not condSetEmpty!41730)) setNonEmpty!41730))

(assert (= setNonEmpty!41730 b!6158904))

(declare-fun m!6997284 () Bool)

(assert (=> setNonEmpty!41730 m!6997284))

(declare-fun b!6158908 () Bool)

(declare-fun e!3752520 () Bool)

(declare-fun tp!1719728 () Bool)

(declare-fun tp!1719731 () Bool)

(assert (=> b!6158908 (= e!3752520 (and tp!1719728 tp!1719731))))

(declare-fun b!6158907 () Bool)

(declare-fun tp!1719729 () Bool)

(assert (=> b!6158907 (= e!3752520 tp!1719729)))

(assert (=> b!6158010 (= tp!1719644 e!3752520)))

(declare-fun b!6158905 () Bool)

(assert (=> b!6158905 (= e!3752520 tp_is_empty!41453)))

(declare-fun b!6158906 () Bool)

(declare-fun tp!1719727 () Bool)

(declare-fun tp!1719730 () Bool)

(assert (=> b!6158906 (= e!3752520 (and tp!1719727 tp!1719730))))

(assert (= (and b!6158010 (is-ElementMatch!16100 (regOne!32712 (regTwo!32713 r!7292)))) b!6158905))

(assert (= (and b!6158010 (is-Concat!24945 (regOne!32712 (regTwo!32713 r!7292)))) b!6158906))

(assert (= (and b!6158010 (is-Star!16100 (regOne!32712 (regTwo!32713 r!7292)))) b!6158907))

(assert (= (and b!6158010 (is-Union!16100 (regOne!32712 (regTwo!32713 r!7292)))) b!6158908))

(declare-fun b!6158912 () Bool)

(declare-fun e!3752521 () Bool)

(declare-fun tp!1719733 () Bool)

(declare-fun tp!1719736 () Bool)

(assert (=> b!6158912 (= e!3752521 (and tp!1719733 tp!1719736))))

(declare-fun b!6158911 () Bool)

(declare-fun tp!1719734 () Bool)

(assert (=> b!6158911 (= e!3752521 tp!1719734)))

(assert (=> b!6158010 (= tp!1719647 e!3752521)))

(declare-fun b!6158909 () Bool)

(assert (=> b!6158909 (= e!3752521 tp_is_empty!41453)))

(declare-fun b!6158910 () Bool)

(declare-fun tp!1719732 () Bool)

(declare-fun tp!1719735 () Bool)

(assert (=> b!6158910 (= e!3752521 (and tp!1719732 tp!1719735))))

(assert (= (and b!6158010 (is-ElementMatch!16100 (regTwo!32712 (regTwo!32713 r!7292)))) b!6158909))

(assert (= (and b!6158010 (is-Concat!24945 (regTwo!32712 (regTwo!32713 r!7292)))) b!6158910))

(assert (= (and b!6158010 (is-Star!16100 (regTwo!32712 (regTwo!32713 r!7292)))) b!6158911))

(assert (= (and b!6158010 (is-Union!16100 (regTwo!32712 (regTwo!32713 r!7292)))) b!6158912))

(declare-fun b!6158916 () Bool)

(declare-fun e!3752522 () Bool)

(declare-fun tp!1719738 () Bool)

(declare-fun tp!1719741 () Bool)

(assert (=> b!6158916 (= e!3752522 (and tp!1719738 tp!1719741))))

(declare-fun b!6158915 () Bool)

(declare-fun tp!1719739 () Bool)

(assert (=> b!6158915 (= e!3752522 tp!1719739)))

(assert (=> b!6158011 (= tp!1719646 e!3752522)))

(declare-fun b!6158913 () Bool)

(assert (=> b!6158913 (= e!3752522 tp_is_empty!41453)))

(declare-fun b!6158914 () Bool)

(declare-fun tp!1719737 () Bool)

(declare-fun tp!1719740 () Bool)

(assert (=> b!6158914 (= e!3752522 (and tp!1719737 tp!1719740))))

(assert (= (and b!6158011 (is-ElementMatch!16100 (reg!16429 (regTwo!32713 r!7292)))) b!6158913))

(assert (= (and b!6158011 (is-Concat!24945 (reg!16429 (regTwo!32713 r!7292)))) b!6158914))

(assert (= (and b!6158011 (is-Star!16100 (reg!16429 (regTwo!32713 r!7292)))) b!6158915))

(assert (= (and b!6158011 (is-Union!16100 (reg!16429 (regTwo!32713 r!7292)))) b!6158916))

(declare-fun b!6158920 () Bool)

(declare-fun e!3752523 () Bool)

(declare-fun tp!1719743 () Bool)

(declare-fun tp!1719746 () Bool)

(assert (=> b!6158920 (= e!3752523 (and tp!1719743 tp!1719746))))

(declare-fun b!6158919 () Bool)

(declare-fun tp!1719744 () Bool)

(assert (=> b!6158919 (= e!3752523 tp!1719744)))

(assert (=> b!6157982 (= tp!1719611 e!3752523)))

(declare-fun b!6158917 () Bool)

(assert (=> b!6158917 (= e!3752523 tp_is_empty!41453)))

(declare-fun b!6158918 () Bool)

(declare-fun tp!1719742 () Bool)

(declare-fun tp!1719745 () Bool)

(assert (=> b!6158918 (= e!3752523 (and tp!1719742 tp!1719745))))

(assert (= (and b!6157982 (is-ElementMatch!16100 (regOne!32713 (reg!16429 r!7292)))) b!6158917))

(assert (= (and b!6157982 (is-Concat!24945 (regOne!32713 (reg!16429 r!7292)))) b!6158918))

(assert (= (and b!6157982 (is-Star!16100 (regOne!32713 (reg!16429 r!7292)))) b!6158919))

(assert (= (and b!6157982 (is-Union!16100 (regOne!32713 (reg!16429 r!7292)))) b!6158920))

(declare-fun b!6158924 () Bool)

(declare-fun e!3752524 () Bool)

(declare-fun tp!1719748 () Bool)

(declare-fun tp!1719751 () Bool)

(assert (=> b!6158924 (= e!3752524 (and tp!1719748 tp!1719751))))

(declare-fun b!6158923 () Bool)

(declare-fun tp!1719749 () Bool)

(assert (=> b!6158923 (= e!3752524 tp!1719749)))

(assert (=> b!6157982 (= tp!1719614 e!3752524)))

(declare-fun b!6158921 () Bool)

(assert (=> b!6158921 (= e!3752524 tp_is_empty!41453)))

(declare-fun b!6158922 () Bool)

(declare-fun tp!1719747 () Bool)

(declare-fun tp!1719750 () Bool)

(assert (=> b!6158922 (= e!3752524 (and tp!1719747 tp!1719750))))

(assert (= (and b!6157982 (is-ElementMatch!16100 (regTwo!32713 (reg!16429 r!7292)))) b!6158921))

(assert (= (and b!6157982 (is-Concat!24945 (regTwo!32713 (reg!16429 r!7292)))) b!6158922))

(assert (= (and b!6157982 (is-Star!16100 (regTwo!32713 (reg!16429 r!7292)))) b!6158923))

(assert (= (and b!6157982 (is-Union!16100 (regTwo!32713 (reg!16429 r!7292)))) b!6158924))

(declare-fun b!6158928 () Bool)

(declare-fun e!3752525 () Bool)

(declare-fun tp!1719753 () Bool)

(declare-fun tp!1719756 () Bool)

(assert (=> b!6158928 (= e!3752525 (and tp!1719753 tp!1719756))))

(declare-fun b!6158927 () Bool)

(declare-fun tp!1719754 () Bool)

(assert (=> b!6158927 (= e!3752525 tp!1719754)))

(assert (=> b!6157980 (= tp!1719610 e!3752525)))

(declare-fun b!6158925 () Bool)

(assert (=> b!6158925 (= e!3752525 tp_is_empty!41453)))

(declare-fun b!6158926 () Bool)

(declare-fun tp!1719752 () Bool)

(declare-fun tp!1719755 () Bool)

(assert (=> b!6158926 (= e!3752525 (and tp!1719752 tp!1719755))))

(assert (= (and b!6157980 (is-ElementMatch!16100 (regOne!32712 (reg!16429 r!7292)))) b!6158925))

(assert (= (and b!6157980 (is-Concat!24945 (regOne!32712 (reg!16429 r!7292)))) b!6158926))

(assert (= (and b!6157980 (is-Star!16100 (regOne!32712 (reg!16429 r!7292)))) b!6158927))

(assert (= (and b!6157980 (is-Union!16100 (regOne!32712 (reg!16429 r!7292)))) b!6158928))

(declare-fun b!6158932 () Bool)

(declare-fun e!3752526 () Bool)

(declare-fun tp!1719758 () Bool)

(declare-fun tp!1719761 () Bool)

(assert (=> b!6158932 (= e!3752526 (and tp!1719758 tp!1719761))))

(declare-fun b!6158931 () Bool)

(declare-fun tp!1719759 () Bool)

(assert (=> b!6158931 (= e!3752526 tp!1719759)))

(assert (=> b!6157980 (= tp!1719613 e!3752526)))

(declare-fun b!6158929 () Bool)

(assert (=> b!6158929 (= e!3752526 tp_is_empty!41453)))

(declare-fun b!6158930 () Bool)

(declare-fun tp!1719757 () Bool)

(declare-fun tp!1719760 () Bool)

(assert (=> b!6158930 (= e!3752526 (and tp!1719757 tp!1719760))))

(assert (= (and b!6157980 (is-ElementMatch!16100 (regTwo!32712 (reg!16429 r!7292)))) b!6158929))

(assert (= (and b!6157980 (is-Concat!24945 (regTwo!32712 (reg!16429 r!7292)))) b!6158930))

(assert (= (and b!6157980 (is-Star!16100 (regTwo!32712 (reg!16429 r!7292)))) b!6158931))

(assert (= (and b!6157980 (is-Union!16100 (regTwo!32712 (reg!16429 r!7292)))) b!6158932))

(declare-fun b!6158936 () Bool)

(declare-fun e!3752527 () Bool)

(declare-fun tp!1719763 () Bool)

(declare-fun tp!1719766 () Bool)

(assert (=> b!6158936 (= e!3752527 (and tp!1719763 tp!1719766))))

(declare-fun b!6158935 () Bool)

(declare-fun tp!1719764 () Bool)

(assert (=> b!6158935 (= e!3752527 tp!1719764)))

(assert (=> b!6157981 (= tp!1719612 e!3752527)))

(declare-fun b!6158933 () Bool)

(assert (=> b!6158933 (= e!3752527 tp_is_empty!41453)))

(declare-fun b!6158934 () Bool)

(declare-fun tp!1719762 () Bool)

(declare-fun tp!1719765 () Bool)

(assert (=> b!6158934 (= e!3752527 (and tp!1719762 tp!1719765))))

(assert (= (and b!6157981 (is-ElementMatch!16100 (reg!16429 (reg!16429 r!7292)))) b!6158933))

(assert (= (and b!6157981 (is-Concat!24945 (reg!16429 (reg!16429 r!7292)))) b!6158934))

(assert (= (and b!6157981 (is-Star!16100 (reg!16429 (reg!16429 r!7292)))) b!6158935))

(assert (= (and b!6157981 (is-Union!16100 (reg!16429 (reg!16429 r!7292)))) b!6158936))

(declare-fun b!6158940 () Bool)

(declare-fun e!3752528 () Bool)

(declare-fun tp!1719768 () Bool)

(declare-fun tp!1719771 () Bool)

(assert (=> b!6158940 (= e!3752528 (and tp!1719768 tp!1719771))))

(declare-fun b!6158939 () Bool)

(declare-fun tp!1719769 () Bool)

(assert (=> b!6158939 (= e!3752528 tp!1719769)))

(assert (=> b!6157997 (= tp!1719628 e!3752528)))

(declare-fun b!6158937 () Bool)

(assert (=> b!6158937 (= e!3752528 tp_is_empty!41453)))

(declare-fun b!6158938 () Bool)

(declare-fun tp!1719767 () Bool)

(declare-fun tp!1719770 () Bool)

(assert (=> b!6158938 (= e!3752528 (and tp!1719767 tp!1719770))))

(assert (= (and b!6157997 (is-ElementMatch!16100 (reg!16429 (regTwo!32712 r!7292)))) b!6158937))

(assert (= (and b!6157997 (is-Concat!24945 (reg!16429 (regTwo!32712 r!7292)))) b!6158938))

(assert (= (and b!6157997 (is-Star!16100 (reg!16429 (regTwo!32712 r!7292)))) b!6158939))

(assert (= (and b!6157997 (is-Union!16100 (reg!16429 (regTwo!32712 r!7292)))) b!6158940))

(declare-fun b!6158944 () Bool)

(declare-fun e!3752529 () Bool)

(declare-fun tp!1719773 () Bool)

(declare-fun tp!1719776 () Bool)

(assert (=> b!6158944 (= e!3752529 (and tp!1719773 tp!1719776))))

(declare-fun b!6158943 () Bool)

(declare-fun tp!1719774 () Bool)

(assert (=> b!6158943 (= e!3752529 tp!1719774)))

(assert (=> b!6158004 (= tp!1719637 e!3752529)))

(declare-fun b!6158941 () Bool)

(assert (=> b!6158941 (= e!3752529 tp_is_empty!41453)))

(declare-fun b!6158942 () Bool)

(declare-fun tp!1719772 () Bool)

(declare-fun tp!1719775 () Bool)

(assert (=> b!6158942 (= e!3752529 (and tp!1719772 tp!1719775))))

(assert (= (and b!6158004 (is-ElementMatch!16100 (h!70924 (exprs!5984 setElem!41715)))) b!6158941))

(assert (= (and b!6158004 (is-Concat!24945 (h!70924 (exprs!5984 setElem!41715)))) b!6158942))

(assert (= (and b!6158004 (is-Star!16100 (h!70924 (exprs!5984 setElem!41715)))) b!6158943))

(assert (= (and b!6158004 (is-Union!16100 (h!70924 (exprs!5984 setElem!41715)))) b!6158944))

(declare-fun b!6158945 () Bool)

(declare-fun e!3752530 () Bool)

(declare-fun tp!1719777 () Bool)

(declare-fun tp!1719778 () Bool)

(assert (=> b!6158945 (= e!3752530 (and tp!1719777 tp!1719778))))

(assert (=> b!6158004 (= tp!1719638 e!3752530)))

(assert (= (and b!6158004 (is-Cons!64476 (t!378094 (exprs!5984 setElem!41715)))) b!6158945))

(declare-fun b!6158946 () Bool)

(declare-fun e!3752531 () Bool)

(declare-fun tp!1719779 () Bool)

(declare-fun tp!1719780 () Bool)

(assert (=> b!6158946 (= e!3752531 (and tp!1719779 tp!1719780))))

(assert (=> b!6157990 (= tp!1719619 e!3752531)))

(assert (= (and b!6157990 (is-Cons!64476 (exprs!5984 (h!70925 (t!378095 zl!343))))) b!6158946))

(declare-fun b!6158948 () Bool)

(declare-fun e!3752533 () Bool)

(declare-fun tp!1719781 () Bool)

(assert (=> b!6158948 (= e!3752533 tp!1719781)))

(declare-fun b!6158947 () Bool)

(declare-fun tp!1719782 () Bool)

(declare-fun e!3752532 () Bool)

(assert (=> b!6158947 (= e!3752532 (and (inv!83498 (h!70925 (t!378095 (t!378095 zl!343)))) e!3752533 tp!1719782))))

(assert (=> b!6157989 (= tp!1719620 e!3752532)))

(assert (= b!6158947 b!6158948))

(assert (= (and b!6157989 (is-Cons!64477 (t!378095 (t!378095 zl!343)))) b!6158947))

(declare-fun m!6997286 () Bool)

(assert (=> b!6158947 m!6997286))

(declare-fun b!6158952 () Bool)

(declare-fun e!3752534 () Bool)

(declare-fun tp!1719784 () Bool)

(declare-fun tp!1719787 () Bool)

(assert (=> b!6158952 (= e!3752534 (and tp!1719784 tp!1719787))))

(declare-fun b!6158951 () Bool)

(declare-fun tp!1719785 () Bool)

(assert (=> b!6158951 (= e!3752534 tp!1719785)))

(assert (=> b!6158012 (= tp!1719645 e!3752534)))

(declare-fun b!6158949 () Bool)

(assert (=> b!6158949 (= e!3752534 tp_is_empty!41453)))

(declare-fun b!6158950 () Bool)

(declare-fun tp!1719783 () Bool)

(declare-fun tp!1719786 () Bool)

(assert (=> b!6158950 (= e!3752534 (and tp!1719783 tp!1719786))))

(assert (= (and b!6158012 (is-ElementMatch!16100 (regOne!32713 (regTwo!32713 r!7292)))) b!6158949))

(assert (= (and b!6158012 (is-Concat!24945 (regOne!32713 (regTwo!32713 r!7292)))) b!6158950))

(assert (= (and b!6158012 (is-Star!16100 (regOne!32713 (regTwo!32713 r!7292)))) b!6158951))

(assert (= (and b!6158012 (is-Union!16100 (regOne!32713 (regTwo!32713 r!7292)))) b!6158952))

(declare-fun b!6158956 () Bool)

(declare-fun e!3752535 () Bool)

(declare-fun tp!1719789 () Bool)

(declare-fun tp!1719792 () Bool)

(assert (=> b!6158956 (= e!3752535 (and tp!1719789 tp!1719792))))

(declare-fun b!6158955 () Bool)

(declare-fun tp!1719790 () Bool)

(assert (=> b!6158955 (= e!3752535 tp!1719790)))

(assert (=> b!6158012 (= tp!1719648 e!3752535)))

(declare-fun b!6158953 () Bool)

(assert (=> b!6158953 (= e!3752535 tp_is_empty!41453)))

(declare-fun b!6158954 () Bool)

(declare-fun tp!1719788 () Bool)

(declare-fun tp!1719791 () Bool)

(assert (=> b!6158954 (= e!3752535 (and tp!1719788 tp!1719791))))

(assert (= (and b!6158012 (is-ElementMatch!16100 (regTwo!32713 (regTwo!32713 r!7292)))) b!6158953))

(assert (= (and b!6158012 (is-Concat!24945 (regTwo!32713 (regTwo!32713 r!7292)))) b!6158954))

(assert (= (and b!6158012 (is-Star!16100 (regTwo!32713 (regTwo!32713 r!7292)))) b!6158955))

(assert (= (and b!6158012 (is-Union!16100 (regTwo!32713 (regTwo!32713 r!7292)))) b!6158956))

(declare-fun b!6158960 () Bool)

(declare-fun e!3752536 () Bool)

(declare-fun tp!1719794 () Bool)

(declare-fun tp!1719797 () Bool)

(assert (=> b!6158960 (= e!3752536 (and tp!1719794 tp!1719797))))

(declare-fun b!6158959 () Bool)

(declare-fun tp!1719795 () Bool)

(assert (=> b!6158959 (= e!3752536 tp!1719795)))

(assert (=> b!6157996 (= tp!1719626 e!3752536)))

(declare-fun b!6158957 () Bool)

(assert (=> b!6158957 (= e!3752536 tp_is_empty!41453)))

(declare-fun b!6158958 () Bool)

(declare-fun tp!1719793 () Bool)

(declare-fun tp!1719796 () Bool)

(assert (=> b!6158958 (= e!3752536 (and tp!1719793 tp!1719796))))

(assert (= (and b!6157996 (is-ElementMatch!16100 (regOne!32712 (regTwo!32712 r!7292)))) b!6158957))

(assert (= (and b!6157996 (is-Concat!24945 (regOne!32712 (regTwo!32712 r!7292)))) b!6158958))

(assert (= (and b!6157996 (is-Star!16100 (regOne!32712 (regTwo!32712 r!7292)))) b!6158959))

(assert (= (and b!6157996 (is-Union!16100 (regOne!32712 (regTwo!32712 r!7292)))) b!6158960))

(declare-fun b!6158964 () Bool)

(declare-fun e!3752537 () Bool)

(declare-fun tp!1719799 () Bool)

(declare-fun tp!1719802 () Bool)

(assert (=> b!6158964 (= e!3752537 (and tp!1719799 tp!1719802))))

(declare-fun b!6158963 () Bool)

(declare-fun tp!1719800 () Bool)

(assert (=> b!6158963 (= e!3752537 tp!1719800)))

(assert (=> b!6157996 (= tp!1719629 e!3752537)))

(declare-fun b!6158961 () Bool)

(assert (=> b!6158961 (= e!3752537 tp_is_empty!41453)))

(declare-fun b!6158962 () Bool)

(declare-fun tp!1719798 () Bool)

(declare-fun tp!1719801 () Bool)

(assert (=> b!6158962 (= e!3752537 (and tp!1719798 tp!1719801))))

(assert (= (and b!6157996 (is-ElementMatch!16100 (regTwo!32712 (regTwo!32712 r!7292)))) b!6158961))

(assert (= (and b!6157996 (is-Concat!24945 (regTwo!32712 (regTwo!32712 r!7292)))) b!6158962))

(assert (= (and b!6157996 (is-Star!16100 (regTwo!32712 (regTwo!32712 r!7292)))) b!6158963))

(assert (= (and b!6157996 (is-Union!16100 (regTwo!32712 (regTwo!32712 r!7292)))) b!6158964))

(declare-fun b!6158968 () Bool)

(declare-fun e!3752538 () Bool)

(declare-fun tp!1719804 () Bool)

(declare-fun tp!1719807 () Bool)

(assert (=> b!6158968 (= e!3752538 (and tp!1719804 tp!1719807))))

(declare-fun b!6158967 () Bool)

(declare-fun tp!1719805 () Bool)

(assert (=> b!6158967 (= e!3752538 tp!1719805)))

(assert (=> b!6157998 (= tp!1719627 e!3752538)))

(declare-fun b!6158965 () Bool)

(assert (=> b!6158965 (= e!3752538 tp_is_empty!41453)))

(declare-fun b!6158966 () Bool)

(declare-fun tp!1719803 () Bool)

(declare-fun tp!1719806 () Bool)

(assert (=> b!6158966 (= e!3752538 (and tp!1719803 tp!1719806))))

(assert (= (and b!6157998 (is-ElementMatch!16100 (regOne!32713 (regTwo!32712 r!7292)))) b!6158965))

(assert (= (and b!6157998 (is-Concat!24945 (regOne!32713 (regTwo!32712 r!7292)))) b!6158966))

(assert (= (and b!6157998 (is-Star!16100 (regOne!32713 (regTwo!32712 r!7292)))) b!6158967))

(assert (= (and b!6157998 (is-Union!16100 (regOne!32713 (regTwo!32712 r!7292)))) b!6158968))

(declare-fun b!6158972 () Bool)

(declare-fun e!3752539 () Bool)

(declare-fun tp!1719809 () Bool)

(declare-fun tp!1719812 () Bool)

(assert (=> b!6158972 (= e!3752539 (and tp!1719809 tp!1719812))))

(declare-fun b!6158971 () Bool)

(declare-fun tp!1719810 () Bool)

(assert (=> b!6158971 (= e!3752539 tp!1719810)))

(assert (=> b!6157998 (= tp!1719630 e!3752539)))

(declare-fun b!6158969 () Bool)

(assert (=> b!6158969 (= e!3752539 tp_is_empty!41453)))

(declare-fun b!6158970 () Bool)

(declare-fun tp!1719808 () Bool)

(declare-fun tp!1719811 () Bool)

(assert (=> b!6158970 (= e!3752539 (and tp!1719808 tp!1719811))))

(assert (= (and b!6157998 (is-ElementMatch!16100 (regTwo!32713 (regTwo!32712 r!7292)))) b!6158969))

(assert (= (and b!6157998 (is-Concat!24945 (regTwo!32713 (regTwo!32712 r!7292)))) b!6158970))

(assert (= (and b!6157998 (is-Star!16100 (regTwo!32713 (regTwo!32712 r!7292)))) b!6158971))

(assert (= (and b!6157998 (is-Union!16100 (regTwo!32713 (regTwo!32712 r!7292)))) b!6158972))

(declare-fun b!6158973 () Bool)

(declare-fun e!3752540 () Bool)

(declare-fun tp!1719813 () Bool)

(assert (=> b!6158973 (= e!3752540 (and tp_is_empty!41453 tp!1719813))))

(assert (=> b!6157968 (= tp!1719599 e!3752540)))

(assert (= (and b!6157968 (is-Cons!64475 (t!378093 (t!378093 s!2326)))) b!6158973))

(declare-fun b!6158977 () Bool)

(declare-fun e!3752541 () Bool)

(declare-fun tp!1719815 () Bool)

(declare-fun tp!1719818 () Bool)

(assert (=> b!6158977 (= e!3752541 (and tp!1719815 tp!1719818))))

(declare-fun b!6158976 () Bool)

(declare-fun tp!1719816 () Bool)

(assert (=> b!6158976 (= e!3752541 tp!1719816)))

(assert (=> b!6158006 (= tp!1719639 e!3752541)))

(declare-fun b!6158974 () Bool)

(assert (=> b!6158974 (= e!3752541 tp_is_empty!41453)))

(declare-fun b!6158975 () Bool)

(declare-fun tp!1719814 () Bool)

(declare-fun tp!1719817 () Bool)

(assert (=> b!6158975 (= e!3752541 (and tp!1719814 tp!1719817))))

(assert (= (and b!6158006 (is-ElementMatch!16100 (regOne!32712 (regOne!32713 r!7292)))) b!6158974))

(assert (= (and b!6158006 (is-Concat!24945 (regOne!32712 (regOne!32713 r!7292)))) b!6158975))

(assert (= (and b!6158006 (is-Star!16100 (regOne!32712 (regOne!32713 r!7292)))) b!6158976))

(assert (= (and b!6158006 (is-Union!16100 (regOne!32712 (regOne!32713 r!7292)))) b!6158977))

(declare-fun b!6158981 () Bool)

(declare-fun e!3752542 () Bool)

(declare-fun tp!1719820 () Bool)

(declare-fun tp!1719823 () Bool)

(assert (=> b!6158981 (= e!3752542 (and tp!1719820 tp!1719823))))

(declare-fun b!6158980 () Bool)

(declare-fun tp!1719821 () Bool)

(assert (=> b!6158980 (= e!3752542 tp!1719821)))

(assert (=> b!6158006 (= tp!1719642 e!3752542)))

(declare-fun b!6158978 () Bool)

(assert (=> b!6158978 (= e!3752542 tp_is_empty!41453)))

(declare-fun b!6158979 () Bool)

(declare-fun tp!1719819 () Bool)

(declare-fun tp!1719822 () Bool)

(assert (=> b!6158979 (= e!3752542 (and tp!1719819 tp!1719822))))

(assert (= (and b!6158006 (is-ElementMatch!16100 (regTwo!32712 (regOne!32713 r!7292)))) b!6158978))

(assert (= (and b!6158006 (is-Concat!24945 (regTwo!32712 (regOne!32713 r!7292)))) b!6158979))

(assert (= (and b!6158006 (is-Star!16100 (regTwo!32712 (regOne!32713 r!7292)))) b!6158980))

(assert (= (and b!6158006 (is-Union!16100 (regTwo!32712 (regOne!32713 r!7292)))) b!6158981))

(declare-fun b!6158985 () Bool)

(declare-fun e!3752543 () Bool)

(declare-fun tp!1719825 () Bool)

(declare-fun tp!1719828 () Bool)

(assert (=> b!6158985 (= e!3752543 (and tp!1719825 tp!1719828))))

(declare-fun b!6158984 () Bool)

(declare-fun tp!1719826 () Bool)

(assert (=> b!6158984 (= e!3752543 tp!1719826)))

(assert (=> b!6157963 (= tp!1719595 e!3752543)))

(declare-fun b!6158982 () Bool)

(assert (=> b!6158982 (= e!3752543 tp_is_empty!41453)))

(declare-fun b!6158983 () Bool)

(declare-fun tp!1719824 () Bool)

(declare-fun tp!1719827 () Bool)

(assert (=> b!6158983 (= e!3752543 (and tp!1719824 tp!1719827))))

(assert (= (and b!6157963 (is-ElementMatch!16100 (h!70924 (exprs!5984 (h!70925 zl!343))))) b!6158982))

(assert (= (and b!6157963 (is-Concat!24945 (h!70924 (exprs!5984 (h!70925 zl!343))))) b!6158983))

(assert (= (and b!6157963 (is-Star!16100 (h!70924 (exprs!5984 (h!70925 zl!343))))) b!6158984))

(assert (= (and b!6157963 (is-Union!16100 (h!70924 (exprs!5984 (h!70925 zl!343))))) b!6158985))

(declare-fun b!6158986 () Bool)

(declare-fun e!3752544 () Bool)

(declare-fun tp!1719829 () Bool)

(declare-fun tp!1719830 () Bool)

(assert (=> b!6158986 (= e!3752544 (and tp!1719829 tp!1719830))))

(assert (=> b!6157963 (= tp!1719596 e!3752544)))

(assert (= (and b!6157963 (is-Cons!64476 (t!378094 (exprs!5984 (h!70925 zl!343))))) b!6158986))

(declare-fun b!6158990 () Bool)

(declare-fun e!3752545 () Bool)

(declare-fun tp!1719832 () Bool)

(declare-fun tp!1719835 () Bool)

(assert (=> b!6158990 (= e!3752545 (and tp!1719832 tp!1719835))))

(declare-fun b!6158989 () Bool)

(declare-fun tp!1719833 () Bool)

(assert (=> b!6158989 (= e!3752545 tp!1719833)))

(assert (=> b!6158008 (= tp!1719640 e!3752545)))

(declare-fun b!6158987 () Bool)

(assert (=> b!6158987 (= e!3752545 tp_is_empty!41453)))

(declare-fun b!6158988 () Bool)

(declare-fun tp!1719831 () Bool)

(declare-fun tp!1719834 () Bool)

(assert (=> b!6158988 (= e!3752545 (and tp!1719831 tp!1719834))))

(assert (= (and b!6158008 (is-ElementMatch!16100 (regOne!32713 (regOne!32713 r!7292)))) b!6158987))

(assert (= (and b!6158008 (is-Concat!24945 (regOne!32713 (regOne!32713 r!7292)))) b!6158988))

(assert (= (and b!6158008 (is-Star!16100 (regOne!32713 (regOne!32713 r!7292)))) b!6158989))

(assert (= (and b!6158008 (is-Union!16100 (regOne!32713 (regOne!32713 r!7292)))) b!6158990))

(declare-fun b!6158994 () Bool)

(declare-fun e!3752546 () Bool)

(declare-fun tp!1719837 () Bool)

(declare-fun tp!1719840 () Bool)

(assert (=> b!6158994 (= e!3752546 (and tp!1719837 tp!1719840))))

(declare-fun b!6158993 () Bool)

(declare-fun tp!1719838 () Bool)

(assert (=> b!6158993 (= e!3752546 tp!1719838)))

(assert (=> b!6158008 (= tp!1719643 e!3752546)))

(declare-fun b!6158991 () Bool)

(assert (=> b!6158991 (= e!3752546 tp_is_empty!41453)))

(declare-fun b!6158992 () Bool)

(declare-fun tp!1719836 () Bool)

(declare-fun tp!1719839 () Bool)

(assert (=> b!6158992 (= e!3752546 (and tp!1719836 tp!1719839))))

(assert (= (and b!6158008 (is-ElementMatch!16100 (regTwo!32713 (regOne!32713 r!7292)))) b!6158991))

(assert (= (and b!6158008 (is-Concat!24945 (regTwo!32713 (regOne!32713 r!7292)))) b!6158992))

(assert (= (and b!6158008 (is-Star!16100 (regTwo!32713 (regOne!32713 r!7292)))) b!6158993))

(assert (= (and b!6158008 (is-Union!16100 (regTwo!32713 (regOne!32713 r!7292)))) b!6158994))

(declare-fun b!6158998 () Bool)

(declare-fun e!3752547 () Bool)

(declare-fun tp!1719842 () Bool)

(declare-fun tp!1719845 () Bool)

(assert (=> b!6158998 (= e!3752547 (and tp!1719842 tp!1719845))))

(declare-fun b!6158997 () Bool)

(declare-fun tp!1719843 () Bool)

(assert (=> b!6158997 (= e!3752547 tp!1719843)))

(assert (=> b!6157992 (= tp!1719621 e!3752547)))

(declare-fun b!6158995 () Bool)

(assert (=> b!6158995 (= e!3752547 tp_is_empty!41453)))

(declare-fun b!6158996 () Bool)

(declare-fun tp!1719841 () Bool)

(declare-fun tp!1719844 () Bool)

(assert (=> b!6158996 (= e!3752547 (and tp!1719841 tp!1719844))))

(assert (= (and b!6157992 (is-ElementMatch!16100 (regOne!32712 (regOne!32712 r!7292)))) b!6158995))

(assert (= (and b!6157992 (is-Concat!24945 (regOne!32712 (regOne!32712 r!7292)))) b!6158996))

(assert (= (and b!6157992 (is-Star!16100 (regOne!32712 (regOne!32712 r!7292)))) b!6158997))

(assert (= (and b!6157992 (is-Union!16100 (regOne!32712 (regOne!32712 r!7292)))) b!6158998))

(declare-fun b!6159002 () Bool)

(declare-fun e!3752548 () Bool)

(declare-fun tp!1719847 () Bool)

(declare-fun tp!1719850 () Bool)

(assert (=> b!6159002 (= e!3752548 (and tp!1719847 tp!1719850))))

(declare-fun b!6159001 () Bool)

(declare-fun tp!1719848 () Bool)

(assert (=> b!6159001 (= e!3752548 tp!1719848)))

(assert (=> b!6157992 (= tp!1719624 e!3752548)))

(declare-fun b!6158999 () Bool)

(assert (=> b!6158999 (= e!3752548 tp_is_empty!41453)))

(declare-fun b!6159000 () Bool)

(declare-fun tp!1719846 () Bool)

(declare-fun tp!1719849 () Bool)

(assert (=> b!6159000 (= e!3752548 (and tp!1719846 tp!1719849))))

(assert (= (and b!6157992 (is-ElementMatch!16100 (regTwo!32712 (regOne!32712 r!7292)))) b!6158999))

(assert (= (and b!6157992 (is-Concat!24945 (regTwo!32712 (regOne!32712 r!7292)))) b!6159000))

(assert (= (and b!6157992 (is-Star!16100 (regTwo!32712 (regOne!32712 r!7292)))) b!6159001))

(assert (= (and b!6157992 (is-Union!16100 (regTwo!32712 (regOne!32712 r!7292)))) b!6159002))

(declare-fun b!6159006 () Bool)

(declare-fun e!3752549 () Bool)

(declare-fun tp!1719852 () Bool)

(declare-fun tp!1719855 () Bool)

(assert (=> b!6159006 (= e!3752549 (and tp!1719852 tp!1719855))))

(declare-fun b!6159005 () Bool)

(declare-fun tp!1719853 () Bool)

(assert (=> b!6159005 (= e!3752549 tp!1719853)))

(assert (=> b!6157993 (= tp!1719623 e!3752549)))

(declare-fun b!6159003 () Bool)

(assert (=> b!6159003 (= e!3752549 tp_is_empty!41453)))

(declare-fun b!6159004 () Bool)

(declare-fun tp!1719851 () Bool)

(declare-fun tp!1719854 () Bool)

(assert (=> b!6159004 (= e!3752549 (and tp!1719851 tp!1719854))))

(assert (= (and b!6157993 (is-ElementMatch!16100 (reg!16429 (regOne!32712 r!7292)))) b!6159003))

(assert (= (and b!6157993 (is-Concat!24945 (reg!16429 (regOne!32712 r!7292)))) b!6159004))

(assert (= (and b!6157993 (is-Star!16100 (reg!16429 (regOne!32712 r!7292)))) b!6159005))

(assert (= (and b!6157993 (is-Union!16100 (reg!16429 (regOne!32712 r!7292)))) b!6159006))

(declare-fun b!6159010 () Bool)

(declare-fun e!3752550 () Bool)

(declare-fun tp!1719857 () Bool)

(declare-fun tp!1719860 () Bool)

(assert (=> b!6159010 (= e!3752550 (and tp!1719857 tp!1719860))))

(declare-fun b!6159009 () Bool)

(declare-fun tp!1719858 () Bool)

(assert (=> b!6159009 (= e!3752550 tp!1719858)))

(assert (=> b!6158007 (= tp!1719641 e!3752550)))

(declare-fun b!6159007 () Bool)

(assert (=> b!6159007 (= e!3752550 tp_is_empty!41453)))

(declare-fun b!6159008 () Bool)

(declare-fun tp!1719856 () Bool)

(declare-fun tp!1719859 () Bool)

(assert (=> b!6159008 (= e!3752550 (and tp!1719856 tp!1719859))))

(assert (= (and b!6158007 (is-ElementMatch!16100 (reg!16429 (regOne!32713 r!7292)))) b!6159007))

(assert (= (and b!6158007 (is-Concat!24945 (reg!16429 (regOne!32713 r!7292)))) b!6159008))

(assert (= (and b!6158007 (is-Star!16100 (reg!16429 (regOne!32713 r!7292)))) b!6159009))

(assert (= (and b!6158007 (is-Union!16100 (reg!16429 (regOne!32713 r!7292)))) b!6159010))

(declare-fun b!6159014 () Bool)

(declare-fun e!3752551 () Bool)

(declare-fun tp!1719862 () Bool)

(declare-fun tp!1719865 () Bool)

(assert (=> b!6159014 (= e!3752551 (and tp!1719862 tp!1719865))))

(declare-fun b!6159013 () Bool)

(declare-fun tp!1719863 () Bool)

(assert (=> b!6159013 (= e!3752551 tp!1719863)))

(assert (=> b!6157994 (= tp!1719622 e!3752551)))

(declare-fun b!6159011 () Bool)

(assert (=> b!6159011 (= e!3752551 tp_is_empty!41453)))

(declare-fun b!6159012 () Bool)

(declare-fun tp!1719861 () Bool)

(declare-fun tp!1719864 () Bool)

(assert (=> b!6159012 (= e!3752551 (and tp!1719861 tp!1719864))))

(assert (= (and b!6157994 (is-ElementMatch!16100 (regOne!32713 (regOne!32712 r!7292)))) b!6159011))

(assert (= (and b!6157994 (is-Concat!24945 (regOne!32713 (regOne!32712 r!7292)))) b!6159012))

(assert (= (and b!6157994 (is-Star!16100 (regOne!32713 (regOne!32712 r!7292)))) b!6159013))

(assert (= (and b!6157994 (is-Union!16100 (regOne!32713 (regOne!32712 r!7292)))) b!6159014))

(declare-fun b!6159018 () Bool)

(declare-fun e!3752552 () Bool)

(declare-fun tp!1719867 () Bool)

(declare-fun tp!1719870 () Bool)

(assert (=> b!6159018 (= e!3752552 (and tp!1719867 tp!1719870))))

(declare-fun b!6159017 () Bool)

(declare-fun tp!1719868 () Bool)

(assert (=> b!6159017 (= e!3752552 tp!1719868)))

(assert (=> b!6157994 (= tp!1719625 e!3752552)))

(declare-fun b!6159015 () Bool)

(assert (=> b!6159015 (= e!3752552 tp_is_empty!41453)))

(declare-fun b!6159016 () Bool)

(declare-fun tp!1719866 () Bool)

(declare-fun tp!1719869 () Bool)

(assert (=> b!6159016 (= e!3752552 (and tp!1719866 tp!1719869))))

(assert (= (and b!6157994 (is-ElementMatch!16100 (regTwo!32713 (regOne!32712 r!7292)))) b!6159015))

(assert (= (and b!6157994 (is-Concat!24945 (regTwo!32713 (regOne!32712 r!7292)))) b!6159016))

(assert (= (and b!6157994 (is-Star!16100 (regTwo!32713 (regOne!32712 r!7292)))) b!6159017))

(assert (= (and b!6157994 (is-Union!16100 (regTwo!32713 (regOne!32712 r!7292)))) b!6159018))

(declare-fun b_lambda!234439 () Bool)

(assert (= b_lambda!234421 (or d!1929392 b_lambda!234439)))

(declare-fun bs!1526499 () Bool)

(declare-fun d!1929886 () Bool)

(assert (= bs!1526499 (and d!1929886 d!1929392)))

(assert (=> bs!1526499 (= (dynLambda!25422 lambda!335958 (h!70924 (exprs!5984 (h!70925 zl!343)))) (validRegex!7836 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(declare-fun m!6997288 () Bool)

(assert (=> bs!1526499 m!6997288))

(assert (=> b!6158441 d!1929886))

(declare-fun b_lambda!234441 () Bool)

(assert (= b_lambda!234423 (or b!6157462 b_lambda!234441)))

(assert (=> d!1929686 d!1929494))

(declare-fun b_lambda!234443 () Bool)

(assert (= b_lambda!234427 (or b!6157462 b_lambda!234443)))

(assert (=> d!1929708 d!1929490))

(declare-fun b_lambda!234445 () Bool)

(assert (= b_lambda!234429 (or d!1929386 b_lambda!234445)))

(declare-fun bs!1526500 () Bool)

(declare-fun d!1929888 () Bool)

(assert (= bs!1526500 (and d!1929888 d!1929386)))

(assert (=> bs!1526500 (= (dynLambda!25422 lambda!335952 (h!70924 (unfocusZipperList!1521 zl!343))) (validRegex!7836 (h!70924 (unfocusZipperList!1521 zl!343))))))

(declare-fun m!6997290 () Bool)

(assert (=> bs!1526500 m!6997290))

(assert (=> b!6158572 d!1929888))

(declare-fun b_lambda!234447 () Bool)

(assert (= b_lambda!234431 (or d!1929398 b_lambda!234447)))

(declare-fun bs!1526501 () Bool)

(declare-fun d!1929890 () Bool)

(assert (= bs!1526501 (and d!1929890 d!1929398)))

(assert (=> bs!1526501 (= (dynLambda!25422 lambda!335959 (h!70924 (exprs!5984 lt!2335359))) (validRegex!7836 (h!70924 (exprs!5984 lt!2335359))))))

(declare-fun m!6997292 () Bool)

(assert (=> bs!1526501 m!6997292))

(assert (=> b!6158752 d!1929890))

(declare-fun b_lambda!234449 () Bool)

(assert (= b_lambda!234435 (or d!1929434 b_lambda!234449)))

(declare-fun bs!1526502 () Bool)

(declare-fun d!1929892 () Bool)

(assert (= bs!1526502 (and d!1929892 d!1929434)))

(assert (=> bs!1526502 (= (dynLambda!25422 lambda!335972 (h!70924 (exprs!5984 (h!70925 zl!343)))) (validRegex!7836 (h!70924 (exprs!5984 (h!70925 zl!343)))))))

(assert (=> bs!1526502 m!6997288))

(assert (=> b!6158775 d!1929892))

(declare-fun b_lambda!234451 () Bool)

(assert (= b_lambda!234433 (or b!6157462 b_lambda!234451)))

(assert (=> d!1929812 d!1929492))

(declare-fun b_lambda!234453 () Bool)

(assert (= b_lambda!234425 (or d!1929430 b_lambda!234453)))

(declare-fun bs!1526503 () Bool)

(declare-fun d!1929894 () Bool)

(assert (= bs!1526503 (and d!1929894 d!1929430)))

(assert (=> bs!1526503 (= (dynLambda!25422 lambda!335969 (h!70924 (exprs!5984 setElem!41715))) (validRegex!7836 (h!70924 (exprs!5984 setElem!41715))))))

(declare-fun m!6997294 () Bool)

(assert (=> bs!1526503 m!6997294))

(assert (=> b!6158561 d!1929894))

(declare-fun b_lambda!234455 () Bool)

(assert (= b_lambda!234437 (or d!1929388 b_lambda!234455)))

(declare-fun bs!1526504 () Bool)

(declare-fun d!1929896 () Bool)

(assert (= bs!1526504 (and d!1929896 d!1929388)))

(assert (=> bs!1526504 (= (dynLambda!25422 lambda!335955 (h!70924 lt!2335458)) (validRegex!7836 (h!70924 lt!2335458)))))

(declare-fun m!6997296 () Bool)

(assert (=> bs!1526504 m!6997296))

(assert (=> b!6158779 d!1929896))

(push 1)

(assert (not bm!512691))

(assert (not b!6158918))

(assert (not b!6158518))

(assert (not b!6158575))

(assert (not b!6158557))

(assert (not d!1929682))

(assert (not bm!512708))

(assert (not d!1929828))

(assert (not b!6158658))

(assert (not bm!512716))

(assert (not b!6158765))

(assert (not bm!512781))

(assert (not b!6158850))

(assert (not b!6158623))

(assert (not d!1929764))

(assert (not b!6158916))

(assert (not bm!512775))

(assert (not b!6158915))

(assert (not d!1929852))

(assert (not bm!512796))

(assert (not b!6158791))

(assert (not bm!512788))

(assert (not bm!512802))

(assert (not d!1929842))

(assert (not b!6158449))

(assert (not d!1929774))

(assert (not b!6158754))

(assert (not bm!512735))

(assert (not d!1929840))

(assert (not b!6158892))

(assert (not d!1929756))

(assert (not b!6158950))

(assert (not b!6158498))

(assert (not d!1929636))

(assert (not bm!512761))

(assert (not bm!512747))

(assert (not b!6158496))

(assert (not d!1929642))

(assert (not d!1929790))

(assert (not d!1929862))

(assert (not d!1929794))

(assert (not b!6158971))

(assert (not b!6158843))

(assert (not b!6158753))

(assert (not b!6158924))

(assert (not bm!512787))

(assert (not bs!1526500))

(assert (not bm!512739))

(assert (not b!6158444))

(assert (not d!1929784))

(assert (not b!6158526))

(assert (not b!6158684))

(assert (not b!6158633))

(assert (not b!6158619))

(assert (not b!6158939))

(assert (not b!6158990))

(assert (not d!1929724))

(assert (not b!6158747))

(assert (not bm!512760))

(assert (not b!6158639))

(assert (not b!6158454))

(assert (not b!6158730))

(assert (not bm!512721))

(assert (not d!1929848))

(assert (not bm!512718))

(assert (not d!1929882))

(assert (not b!6158822))

(assert (not b!6158452))

(assert (not b!6158707))

(assert (not b!6158749))

(assert (not bm!512710))

(assert (not bs!1526504))

(assert (not b_lambda!234407))

(assert (not b!6158450))

(assert (not setNonEmpty!41730))

(assert (not b!6158728))

(assert (not b!6158985))

(assert (not b!6158967))

(assert (not d!1929708))

(assert (not b!6158538))

(assert (not b!6158502))

(assert (not b!6158947))

(assert (not bm!512750))

(assert (not b!6158912))

(assert (not d!1929718))

(assert (not d!1929668))

(assert (not d!1929834))

(assert (not b!6158906))

(assert (not b!6158914))

(assert (not b!6158567))

(assert (not b!6158959))

(assert (not b!6158562))

(assert (not d!1929776))

(assert (not bm!512798))

(assert (not bm!512757))

(assert (not bm!512690))

(assert (not b!6158951))

(assert (not d!1929608))

(assert (not b_lambda!234405))

(assert (not bm!512689))

(assert (not b!6159000))

(assert (not bm!512702))

(assert (not bm!512737))

(assert (not b!6158795))

(assert (not b!6158511))

(assert (not b!6158729))

(assert (not b!6158893))

(assert (not b!6158777))

(assert (not b!6158981))

(assert (not d!1929746))

(assert (not b!6158537))

(assert (not b!6158512))

(assert (not bm!512704))

(assert (not setNonEmpty!41727))

(assert (not b!6158410))

(assert (not b!6158952))

(assert (not b!6158922))

(assert (not bm!512769))

(assert (not b!6158996))

(assert (not b!6158823))

(assert (not bm!512754))

(assert (not b_lambda!234445))

(assert (not d!1929748))

(assert (not bm!512790))

(assert (not bm!512755))

(assert (not b!6158792))

(assert (not bm!512688))

(assert (not b!6158739))

(assert (not b!6158504))

(assert (not d!1929796))

(assert (not b!6158956))

(assert (not d!1929714))

(assert (not b!6158980))

(assert (not b!6158903))

(assert (not d!1929676))

(assert (not b!6158972))

(assert (not bm!512711))

(assert (not d!1929820))

(assert (not b!6158963))

(assert (not b!6158442))

(assert (not d!1929648))

(assert (not b!6158458))

(assert (not b!6158714))

(assert (not bm!512771))

(assert (not b!6158910))

(assert (not d!1929674))

(assert (not b!6159016))

(assert (not d!1929738))

(assert (not b!6158989))

(assert (not b!6158926))

(assert (not b!6158997))

(assert (not b!6158944))

(assert (not b!6158994))

(assert (not b!6159009))

(assert (not b!6158884))

(assert (not b!6158946))

(assert (not b!6158855))

(assert (not b!6158720))

(assert (not b_lambda!234455))

(assert (not b!6158983))

(assert (not bm!512709))

(assert (not bm!512736))

(assert (not bm!512777))

(assert (not b!6158973))

(assert (not b!6158682))

(assert (not b!6158574))

(assert (not b!6158975))

(assert (not b!6159012))

(assert (not d!1929854))

(assert (not b!6158808))

(assert (not d!1929850))

(assert (not b!6158934))

(assert (not bm!512778))

(assert (not b!6158976))

(assert (not d!1929758))

(assert (not b!6158960))

(assert (not b!6158548))

(assert (not b!6158524))

(assert (not b!6158687))

(assert (not d!1929772))

(assert (not b!6158784))

(assert (not d!1929740))

(assert (not d!1929646))

(assert (not b!6158549))

(assert (not b!6158799))

(assert (not d!1929860))

(assert (not b_lambda!234439))

(assert (not b!6158672))

(assert (not b!6158785))

(assert (not b!6158832))

(assert (not bm!512758))

(assert (not b!6158677))

(assert (not b!6158711))

(assert (not b!6158671))

(assert (not bm!512766))

(assert (not bm!512724))

(assert (not b!6158622))

(assert (not b!6158955))

(assert (not bm!512765))

(assert (not b!6158876))

(assert (not bm!512792))

(assert (not b!6158891))

(assert (not b!6158788))

(assert (not b!6158938))

(assert (not b!6158409))

(assert (not bm!512729))

(assert (not b!6158744))

(assert (not b!6158770))

(assert (not bm!512707))

(assert (not b!6158592))

(assert (not b!6158778))

(assert tp_is_empty!41453)

(assert (not bm!512745))

(assert (not b!6158932))

(assert (not b!6158620))

(assert (not b!6159004))

(assert (not b!6158743))

(assert (not d!1929672))

(assert (not b!6158968))

(assert (not b!6158542))

(assert (not b!6158927))

(assert (not b!6158898))

(assert (not b!6158484))

(assert (not d!1929698))

(assert (not b!6158510))

(assert (not b!6158936))

(assert (not d!1929872))

(assert (not b!6158655))

(assert (not bm!512748))

(assert (not b!6158493))

(assert (not b!6158945))

(assert (not bm!512703))

(assert (not bm!512723))

(assert (not b!6158998))

(assert (not d!1929736))

(assert (not b!6158666))

(assert (not b!6158746))

(assert (not bm!512803))

(assert (not b!6158992))

(assert (not b!6158907))

(assert (not b_lambda!234447))

(assert (not d!1929786))

(assert (not bm!512763))

(assert (not d!1929818))

(assert (not d!1929692))

(assert (not b!6159010))

(assert (not d!1929664))

(assert (not d!1929806))

(assert (not b!6158940))

(assert (not b!6158460))

(assert (not bm!512783))

(assert (not d!1929816))

(assert (not b!6158551))

(assert (not d!1929760))

(assert (not bs!1526502))

(assert (not b!6158780))

(assert (not b!6158609))

(assert (not b!6158948))

(assert (not b_lambda!234449))

(assert (not b!6158520))

(assert (not b!6158506))

(assert (not bs!1526499))

(assert (not b!6159018))

(assert (not b!6158509))

(assert (not b!6158798))

(assert (not b!6158904))

(assert (not b!6158543))

(assert (not d!1929788))

(assert (not b!6159006))

(assert (not b!6158621))

(assert (not b!6158696))

(assert (not b!6158494))

(assert (not b!6159002))

(assert (not b!6158986))

(assert (not d!1929614))

(assert (not b!6158443))

(assert (not b!6158600))

(assert (not d!1929704))

(assert (not bm!512714))

(assert (not b!6158793))

(assert (not b!6158911))

(assert (not d!1929836))

(assert (not b!6158436))

(assert (not b!6158532))

(assert (not b_lambda!234451))

(assert (not bm!512799))

(assert (not bm!512742))

(assert (not b!6158984))

(assert (not bm!512784))

(assert (not d!1929638))

(assert (not b!6158679))

(assert (not b!6158624))

(assert (not b!6158750))

(assert (not b_lambda!234403))

(assert (not b!6158979))

(assert (not d!1929798))

(assert (not b!6159001))

(assert (not b!6158908))

(assert (not bm!512793))

(assert (not bm!512731))

(assert (not b!6158593))

(assert (not b!6158966))

(assert (not b!6158958))

(assert (not b!6158964))

(assert (not b_lambda!234443))

(assert (not b!6158819))

(assert (not b!6158716))

(assert (not b!6158751))

(assert (not b!6158942))

(assert (not d!1929610))

(assert (not b!6158686))

(assert (not d!1929732))

(assert (not b!6158559))

(assert (not b_lambda!234441))

(assert (not b!6158865))

(assert (not d!1929652))

(assert (not b!6158513))

(assert (not b!6158789))

(assert (not b!6158712))

(assert (not b!6159017))

(assert (not b!6158657))

(assert (not b!6158962))

(assert (not bm!512732))

(assert (not setNonEmpty!41728))

(assert (not bm!512720))

(assert (not b!6158776))

(assert (not b!6158685))

(assert (not d!1929670))

(assert (not b!6158928))

(assert (not d!1929650))

(assert (not d!1929762))

(assert (not b_lambda!234453))

(assert (not bm!512752))

(assert (not b!6158553))

(assert (not d!1929626))

(assert (not b!6158683))

(assert (not b!6158919))

(assert (not b!6159005))

(assert (not d!1929678))

(assert (not d!1929802))

(assert (not bm!512713))

(assert (not b!6159013))

(assert (not b!6158856))

(assert (not b!6158636))

(assert (not bm!512772))

(assert (not b!6158516))

(assert (not d!1929680))

(assert (not b!6158757))

(assert (not b!6158935))

(assert (not d!1929686))

(assert (not b!6159008))

(assert (not setNonEmpty!41729))

(assert (not b!6158722))

(assert (not d!1929734))

(assert (not bm!512715))

(assert (not b!6158923))

(assert (not bm!512726))

(assert (not bm!512741))

(assert (not b!6158930))

(assert (not bm!512728))

(assert (not b!6158573))

(assert (not b!6158920))

(assert (not b!6158993))

(assert (not d!1929826))

(assert (not b!6158943))

(assert (not b!6158970))

(assert (not d!1929870))

(assert (not b!6158883))

(assert (not bm!512705))

(assert (not b!6158954))

(assert (not b!6158681))

(assert (not bs!1526503))

(assert (not d!1929716))

(assert (not d!1929612))

(assert (not d!1929778))

(assert (not d!1929812))

(assert (not b!6158656))

(assert (not b!6159014))

(assert (not b!6158515))

(assert (not d!1929846))

(assert (not bs!1526501))

(assert (not b!6158988))

(assert (not b!6158977))

(assert (not bm!512733))

(assert (not b!6158931))

(assert (not b!6158781))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

