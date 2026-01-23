; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!645894 () Bool)

(assert start!645894)

(declare-fun b!6606515 () Bool)

(assert (=> b!6606515 true))

(assert (=> b!6606515 true))

(declare-fun lambda!368577 () Int)

(declare-fun lambda!368576 () Int)

(assert (=> b!6606515 (not (= lambda!368577 lambda!368576))))

(assert (=> b!6606515 true))

(assert (=> b!6606515 true))

(declare-fun b!6606487 () Bool)

(assert (=> b!6606487 true))

(declare-fun bs!1693325 () Bool)

(declare-fun b!6606503 () Bool)

(assert (= bs!1693325 (and b!6606503 b!6606515)))

(declare-datatypes ((C!33220 0))(
  ( (C!33221 (val!26312 Int)) )
))
(declare-datatypes ((Regex!16475 0))(
  ( (ElementMatch!16475 (c!1217326 C!33220)) (Concat!25320 (regOne!33462 Regex!16475) (regTwo!33462 Regex!16475)) (EmptyExpr!16475) (Star!16475 (reg!16804 Regex!16475)) (EmptyLang!16475) (Union!16475 (regOne!33463 Regex!16475) (regTwo!33463 Regex!16475)) )
))
(declare-fun r!7292 () Regex!16475)

(declare-fun lambda!368579 () Int)

(declare-fun lt!2415134 () Regex!16475)

(declare-datatypes ((List!65724 0))(
  ( (Nil!65600) (Cons!65600 (h!72048 C!33220) (t!379376 List!65724)) )
))
(declare-fun s!2326 () List!65724)

(assert (=> bs!1693325 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368579 lambda!368576))))

(assert (=> bs!1693325 (not (= lambda!368579 lambda!368577))))

(assert (=> b!6606503 true))

(assert (=> b!6606503 true))

(declare-fun lambda!368580 () Int)

(assert (=> bs!1693325 (not (= lambda!368580 lambda!368576))))

(assert (=> bs!1693325 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368580 lambda!368577))))

(assert (=> b!6606503 (not (= lambda!368580 lambda!368579))))

(assert (=> b!6606503 true))

(assert (=> b!6606503 true))

(declare-fun lambda!368581 () Int)

(assert (=> bs!1693325 (not (= lambda!368581 lambda!368576))))

(assert (=> bs!1693325 (not (= lambda!368581 lambda!368577))))

(assert (=> b!6606503 (not (= lambda!368581 lambda!368579))))

(assert (=> b!6606503 (not (= lambda!368581 lambda!368580))))

(assert (=> b!6606503 true))

(assert (=> b!6606503 true))

(declare-fun res!2709056 () Bool)

(declare-fun e!3997232 () Bool)

(assert (=> start!645894 (=> (not res!2709056) (not e!3997232))))

(declare-fun validRegex!8211 (Regex!16475) Bool)

(assert (=> start!645894 (= res!2709056 (validRegex!8211 r!7292))))

(assert (=> start!645894 e!3997232))

(declare-fun e!3997222 () Bool)

(assert (=> start!645894 e!3997222))

(declare-fun condSetEmpty!45120 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65725 0))(
  ( (Nil!65601) (Cons!65601 (h!72049 Regex!16475) (t!379377 List!65725)) )
))
(declare-datatypes ((Context!11718 0))(
  ( (Context!11719 (exprs!6359 List!65725)) )
))
(declare-fun z!1189 () (InoxSet Context!11718))

(assert (=> start!645894 (= condSetEmpty!45120 (= z!1189 ((as const (Array Context!11718 Bool)) false)))))

(declare-fun setRes!45120 () Bool)

(assert (=> start!645894 setRes!45120))

(declare-fun e!3997213 () Bool)

(assert (=> start!645894 e!3997213))

(declare-fun e!3997220 () Bool)

(assert (=> start!645894 e!3997220))

(declare-fun b!6606482 () Bool)

(declare-fun e!3997215 () Bool)

(declare-fun lt!2415133 () Bool)

(assert (=> b!6606482 (= e!3997215 lt!2415133)))

(declare-fun b!6606483 () Bool)

(declare-fun tp!1820485 () Bool)

(assert (=> b!6606483 (= e!3997222 tp!1820485)))

(declare-fun b!6606484 () Bool)

(declare-fun tp!1820478 () Bool)

(declare-fun tp!1820482 () Bool)

(assert (=> b!6606484 (= e!3997222 (and tp!1820478 tp!1820482))))

(declare-fun b!6606485 () Bool)

(declare-fun res!2709055 () Bool)

(assert (=> b!6606485 (=> (not res!2709055) (not e!3997232))))

(declare-datatypes ((List!65726 0))(
  ( (Nil!65602) (Cons!65602 (h!72050 Context!11718) (t!379378 List!65726)) )
))
(declare-fun zl!343 () List!65726)

(declare-fun toList!10259 ((InoxSet Context!11718)) List!65726)

(assert (=> b!6606485 (= res!2709055 (= (toList!10259 z!1189) zl!343))))

(declare-fun b!6606486 () Bool)

(declare-fun res!2709036 () Bool)

(declare-fun e!3997234 () Bool)

(assert (=> b!6606486 (=> res!2709036 e!3997234)))

(declare-fun lt!2415153 () Regex!16475)

(assert (=> b!6606486 (= res!2709036 (not (= lt!2415153 r!7292)))))

(declare-fun e!3997224 () Bool)

(declare-fun e!3997226 () Bool)

(assert (=> b!6606487 (= e!3997224 e!3997226)))

(declare-fun res!2709050 () Bool)

(assert (=> b!6606487 (=> res!2709050 e!3997226)))

(get-info :version)

(assert (=> b!6606487 (= res!2709050 (or (and ((_ is ElementMatch!16475) (regOne!33462 r!7292)) (= (c!1217326 (regOne!33462 r!7292)) (h!72048 s!2326))) ((_ is Union!16475) (regOne!33462 r!7292))))))

(declare-datatypes ((Unit!159235 0))(
  ( (Unit!159236) )
))
(declare-fun lt!2415136 () Unit!159235)

(declare-fun e!3997217 () Unit!159235)

(assert (=> b!6606487 (= lt!2415136 e!3997217)))

(declare-fun c!1217325 () Bool)

(declare-fun lt!2415120 () Bool)

(assert (=> b!6606487 (= c!1217325 lt!2415120)))

(declare-fun nullable!6468 (Regex!16475) Bool)

(assert (=> b!6606487 (= lt!2415120 (nullable!6468 (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun lambda!368578 () Int)

(declare-fun flatMap!1980 ((InoxSet Context!11718) Int) (InoxSet Context!11718))

(declare-fun derivationStepZipperUp!1649 (Context!11718 C!33220) (InoxSet Context!11718))

(assert (=> b!6606487 (= (flatMap!1980 z!1189 lambda!368578) (derivationStepZipperUp!1649 (h!72050 zl!343) (h!72048 s!2326)))))

(declare-fun lt!2415149 () Unit!159235)

(declare-fun lemmaFlatMapOnSingletonSet!1506 ((InoxSet Context!11718) Context!11718 Int) Unit!159235)

(assert (=> b!6606487 (= lt!2415149 (lemmaFlatMapOnSingletonSet!1506 z!1189 (h!72050 zl!343) lambda!368578))))

(declare-fun lt!2415132 () (InoxSet Context!11718))

(declare-fun lt!2415117 () Context!11718)

(assert (=> b!6606487 (= lt!2415132 (derivationStepZipperUp!1649 lt!2415117 (h!72048 s!2326)))))

(declare-fun lt!2415129 () (InoxSet Context!11718))

(declare-fun derivationStepZipperDown!1723 (Regex!16475 Context!11718 C!33220) (InoxSet Context!11718))

(assert (=> b!6606487 (= lt!2415129 (derivationStepZipperDown!1723 (h!72049 (exprs!6359 (h!72050 zl!343))) lt!2415117 (h!72048 s!2326)))))

(assert (=> b!6606487 (= lt!2415117 (Context!11719 (t!379377 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun lt!2415142 () (InoxSet Context!11718))

(assert (=> b!6606487 (= lt!2415142 (derivationStepZipperUp!1649 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343))))) (h!72048 s!2326)))))

(declare-fun b!6606488 () Bool)

(declare-fun Unit!159237 () Unit!159235)

(assert (=> b!6606488 (= e!3997217 Unit!159237)))

(declare-fun b!6606489 () Bool)

(declare-fun e!3997235 () Bool)

(declare-fun e!3997229 () Bool)

(assert (=> b!6606489 (= e!3997235 e!3997229)))

(declare-fun res!2709052 () Bool)

(assert (=> b!6606489 (=> res!2709052 e!3997229)))

(declare-fun lt!2415130 () Context!11718)

(declare-fun lt!2415143 () Regex!16475)

(declare-fun unfocusZipper!2217 (List!65726) Regex!16475)

(assert (=> b!6606489 (= res!2709052 (not (= (unfocusZipper!2217 (Cons!65602 lt!2415130 Nil!65602)) lt!2415143)))))

(declare-fun lt!2415128 () Regex!16475)

(assert (=> b!6606489 (= lt!2415143 (Concat!25320 (reg!16804 (regOne!33462 r!7292)) lt!2415128))))

(declare-fun b!6606490 () Bool)

(declare-fun res!2709069 () Bool)

(declare-fun e!3997218 () Bool)

(assert (=> b!6606490 (=> res!2709069 e!3997218)))

(declare-fun matchZipper!2487 ((InoxSet Context!11718) List!65724) Bool)

(assert (=> b!6606490 (= res!2709069 (not (matchZipper!2487 lt!2415132 (t!379376 s!2326))))))

(declare-fun b!6606491 () Bool)

(declare-fun e!3997227 () Bool)

(declare-fun e!3997219 () Bool)

(assert (=> b!6606491 (= e!3997227 (not e!3997219))))

(declare-fun res!2709066 () Bool)

(assert (=> b!6606491 (=> res!2709066 e!3997219)))

(assert (=> b!6606491 (= res!2709066 (not ((_ is Cons!65602) zl!343)))))

(declare-fun lt!2415121 () Bool)

(declare-fun matchRSpec!3576 (Regex!16475 List!65724) Bool)

(assert (=> b!6606491 (= lt!2415121 (matchRSpec!3576 r!7292 s!2326))))

(declare-fun matchR!8658 (Regex!16475 List!65724) Bool)

(assert (=> b!6606491 (= lt!2415121 (matchR!8658 r!7292 s!2326))))

(declare-fun lt!2415124 () Unit!159235)

(declare-fun mainMatchTheorem!3576 (Regex!16475 List!65724) Unit!159235)

(assert (=> b!6606491 (= lt!2415124 (mainMatchTheorem!3576 r!7292 s!2326))))

(declare-fun b!6606492 () Bool)

(declare-fun e!3997228 () Bool)

(declare-fun e!3997230 () Bool)

(assert (=> b!6606492 (= e!3997228 e!3997230)))

(declare-fun res!2709065 () Bool)

(assert (=> b!6606492 (=> res!2709065 e!3997230)))

(declare-fun lt!2415131 () Regex!16475)

(declare-fun regexDepth!372 (Regex!16475) Int)

(assert (=> b!6606492 (= res!2709065 (< (regexDepth!372 r!7292) (regexDepth!372 lt!2415131)))))

(declare-fun generalisedConcat!2072 (List!65725) Regex!16475)

(assert (=> b!6606492 (= lt!2415131 (generalisedConcat!2072 (t!379377 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun b!6606493 () Bool)

(declare-fun res!2709040 () Bool)

(assert (=> b!6606493 (=> res!2709040 e!3997218)))

(declare-fun lt!2415140 () Bool)

(assert (=> b!6606493 (= res!2709040 lt!2415140)))

(declare-fun b!6606494 () Bool)

(declare-fun res!2709049 () Bool)

(assert (=> b!6606494 (=> res!2709049 e!3997226)))

(declare-fun e!3997231 () Bool)

(assert (=> b!6606494 (= res!2709049 e!3997231)))

(declare-fun res!2709059 () Bool)

(assert (=> b!6606494 (=> (not res!2709059) (not e!3997231))))

(assert (=> b!6606494 (= res!2709059 ((_ is Concat!25320) (regOne!33462 r!7292)))))

(declare-fun b!6606495 () Bool)

(declare-fun res!2709048 () Bool)

(assert (=> b!6606495 (=> res!2709048 e!3997219)))

(declare-fun generalisedUnion!2319 (List!65725) Regex!16475)

(declare-fun unfocusZipperList!1896 (List!65726) List!65725)

(assert (=> b!6606495 (= res!2709048 (not (= r!7292 (generalisedUnion!2319 (unfocusZipperList!1896 zl!343)))))))

(declare-fun b!6606496 () Bool)

(assert (=> b!6606496 (= e!3997218 e!3997228)))

(declare-fun res!2709037 () Bool)

(assert (=> b!6606496 (=> res!2709037 e!3997228)))

(declare-fun lt!2415147 () (InoxSet Context!11718))

(declare-fun derivationStepZipper!2441 ((InoxSet Context!11718) C!33220) (InoxSet Context!11718))

(assert (=> b!6606496 (= res!2709037 (not (= lt!2415132 (derivationStepZipper!2441 lt!2415147 (h!72048 s!2326)))))))

(assert (=> b!6606496 (= (flatMap!1980 lt!2415147 lambda!368578) (derivationStepZipperUp!1649 lt!2415117 (h!72048 s!2326)))))

(declare-fun lt!2415146 () Unit!159235)

(assert (=> b!6606496 (= lt!2415146 (lemmaFlatMapOnSingletonSet!1506 lt!2415147 lt!2415117 lambda!368578))))

(assert (=> b!6606496 (= lt!2415147 (store ((as const (Array Context!11718 Bool)) false) lt!2415117 true))))

(declare-fun b!6606497 () Bool)

(declare-fun tp!1820480 () Bool)

(declare-fun tp!1820486 () Bool)

(assert (=> b!6606497 (= e!3997222 (and tp!1820480 tp!1820486))))

(declare-fun b!6606498 () Bool)

(declare-fun e!3997221 () Bool)

(assert (=> b!6606498 (= e!3997226 e!3997221)))

(declare-fun res!2709038 () Bool)

(assert (=> b!6606498 (=> res!2709038 e!3997221)))

(declare-fun lt!2415151 () (InoxSet Context!11718))

(assert (=> b!6606498 (= res!2709038 (not (= lt!2415129 lt!2415151)))))

(declare-fun lt!2415123 () Context!11718)

(assert (=> b!6606498 (= lt!2415151 (derivationStepZipperDown!1723 (reg!16804 (regOne!33462 r!7292)) lt!2415123 (h!72048 s!2326)))))

(declare-fun lt!2415144 () List!65725)

(assert (=> b!6606498 (= lt!2415123 (Context!11719 lt!2415144))))

(assert (=> b!6606498 (= lt!2415144 (Cons!65601 lt!2415134 (t!379377 (exprs!6359 (h!72050 zl!343)))))))

(assert (=> b!6606498 (= lt!2415134 (Star!16475 (reg!16804 (regOne!33462 r!7292))))))

(declare-fun b!6606499 () Bool)

(declare-fun tp_is_empty!42203 () Bool)

(assert (=> b!6606499 (= e!3997222 tp_is_empty!42203)))

(declare-fun b!6606500 () Bool)

(declare-fun e!3997214 () Bool)

(declare-fun tp!1820481 () Bool)

(assert (=> b!6606500 (= e!3997214 tp!1820481)))

(declare-fun b!6606501 () Bool)

(declare-fun e!3997212 () Bool)

(assert (=> b!6606501 (= e!3997212 (not (matchZipper!2487 lt!2415132 (t!379376 s!2326))))))

(declare-fun b!6606502 () Bool)

(declare-fun e!3997233 () Bool)

(assert (=> b!6606502 (= e!3997229 e!3997233)))

(declare-fun res!2709070 () Bool)

(assert (=> b!6606502 (=> res!2709070 e!3997233)))

(declare-fun lt!2415118 () Context!11718)

(assert (=> b!6606502 (= res!2709070 (not (= (unfocusZipper!2217 (Cons!65602 lt!2415118 Nil!65602)) (reg!16804 (regOne!33462 r!7292)))))))

(declare-fun lt!2415122 () (InoxSet Context!11718))

(assert (=> b!6606502 (= (flatMap!1980 lt!2415122 lambda!368578) (derivationStepZipperUp!1649 lt!2415123 (h!72048 s!2326)))))

(declare-fun lt!2415154 () Unit!159235)

(assert (=> b!6606502 (= lt!2415154 (lemmaFlatMapOnSingletonSet!1506 lt!2415122 lt!2415123 lambda!368578))))

(declare-fun lt!2415127 () (InoxSet Context!11718))

(assert (=> b!6606502 (= (flatMap!1980 lt!2415127 lambda!368578) (derivationStepZipperUp!1649 lt!2415118 (h!72048 s!2326)))))

(declare-fun lt!2415113 () Unit!159235)

(assert (=> b!6606502 (= lt!2415113 (lemmaFlatMapOnSingletonSet!1506 lt!2415127 lt!2415118 lambda!368578))))

(declare-fun lt!2415137 () (InoxSet Context!11718))

(assert (=> b!6606502 (= lt!2415137 (derivationStepZipperUp!1649 lt!2415123 (h!72048 s!2326)))))

(declare-fun lt!2415119 () (InoxSet Context!11718))

(assert (=> b!6606502 (= lt!2415119 (derivationStepZipperUp!1649 lt!2415118 (h!72048 s!2326)))))

(assert (=> b!6606502 (= lt!2415122 (store ((as const (Array Context!11718 Bool)) false) lt!2415123 true))))

(assert (=> b!6606502 (= lt!2415127 (store ((as const (Array Context!11718 Bool)) false) lt!2415118 true))))

(assert (=> b!6606502 (= lt!2415118 (Context!11719 (Cons!65601 (reg!16804 (regOne!33462 r!7292)) Nil!65601)))))

(declare-fun e!3997225 () Bool)

(assert (=> b!6606503 (= e!3997225 e!3997215)))

(declare-fun res!2709054 () Bool)

(assert (=> b!6606503 (=> res!2709054 e!3997215)))

(assert (=> b!6606503 (= res!2709054 (not (validRegex!8211 lt!2415134)))))

(declare-fun Exists!3545 (Int) Bool)

(assert (=> b!6606503 (= (Exists!3545 lambda!368579) (Exists!3545 lambda!368581))))

(declare-fun lt!2415116 () Unit!159235)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!670 (Regex!16475 List!65724) Unit!159235)

(assert (=> b!6606503 (= lt!2415116 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!670 (reg!16804 (regOne!33462 r!7292)) Nil!65600))))

(assert (=> b!6606503 (= (Exists!3545 lambda!368579) (Exists!3545 lambda!368580))))

(declare-fun lt!2415148 () Unit!159235)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2082 (Regex!16475 Regex!16475 List!65724) Unit!159235)

(assert (=> b!6606503 (= lt!2415148 (lemmaExistCutMatchRandMatchRSpecEquivalent!2082 (reg!16804 (regOne!33462 r!7292)) lt!2415134 Nil!65600))))

(declare-datatypes ((tuple2!66908 0))(
  ( (tuple2!66909 (_1!36757 List!65724) (_2!36757 List!65724)) )
))
(declare-datatypes ((Option!16366 0))(
  ( (None!16365) (Some!16365 (v!52554 tuple2!66908)) )
))
(declare-fun isDefined!13069 (Option!16366) Bool)

(declare-fun findConcatSeparation!2780 (Regex!16475 Regex!16475 List!65724 List!65724 List!65724) Option!16366)

(assert (=> b!6606503 (= (isDefined!13069 (findConcatSeparation!2780 (reg!16804 (regOne!33462 r!7292)) lt!2415134 Nil!65600 Nil!65600 Nil!65600)) (Exists!3545 lambda!368579))))

(declare-fun lt!2415111 () Unit!159235)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2544 (Regex!16475 Regex!16475 List!65724) Unit!159235)

(assert (=> b!6606503 (= lt!2415111 (lemmaFindConcatSeparationEquivalentToExists!2544 (reg!16804 (regOne!33462 r!7292)) lt!2415134 Nil!65600))))

(assert (=> b!6606503 (= lt!2415133 (matchRSpec!3576 lt!2415134 Nil!65600))))

(assert (=> b!6606503 (= lt!2415133 (matchR!8658 lt!2415134 Nil!65600))))

(declare-fun lt!2415152 () Unit!159235)

(assert (=> b!6606503 (= lt!2415152 (mainMatchTheorem!3576 lt!2415134 Nil!65600))))

(declare-fun setElem!45120 () Context!11718)

(declare-fun tp!1820487 () Bool)

(declare-fun setNonEmpty!45120 () Bool)

(declare-fun inv!84434 (Context!11718) Bool)

(assert (=> setNonEmpty!45120 (= setRes!45120 (and tp!1820487 (inv!84434 setElem!45120) e!3997214))))

(declare-fun setRest!45120 () (InoxSet Context!11718))

(assert (=> setNonEmpty!45120 (= z!1189 ((_ map or) (store ((as const (Array Context!11718 Bool)) false) setElem!45120 true) setRest!45120))))

(declare-fun b!6606504 () Bool)

(declare-fun e!3997236 () Bool)

(assert (=> b!6606504 (= e!3997236 (matchZipper!2487 lt!2415132 (t!379376 s!2326)))))

(declare-fun b!6606505 () Bool)

(declare-fun res!2709039 () Bool)

(assert (=> b!6606505 (=> res!2709039 e!3997233)))

(assert (=> b!6606505 (= res!2709039 (not (= (unfocusZipper!2217 (Cons!65602 lt!2415123 Nil!65602)) lt!2415128)))))

(declare-fun b!6606506 () Bool)

(declare-fun res!2709053 () Bool)

(declare-fun e!3997223 () Bool)

(assert (=> b!6606506 (=> res!2709053 e!3997223)))

(assert (=> b!6606506 (= res!2709053 (not lt!2415120))))

(declare-fun b!6606507 () Bool)

(assert (=> b!6606507 (= e!3997232 e!3997227)))

(declare-fun res!2709044 () Bool)

(assert (=> b!6606507 (=> (not res!2709044) (not e!3997227))))

(assert (=> b!6606507 (= res!2709044 (= r!7292 lt!2415153))))

(assert (=> b!6606507 (= lt!2415153 (unfocusZipper!2217 zl!343))))

(declare-fun b!6606508 () Bool)

(declare-fun res!2709060 () Bool)

(assert (=> b!6606508 (=> res!2709060 e!3997226)))

(assert (=> b!6606508 (= res!2709060 (or ((_ is Concat!25320) (regOne!33462 r!7292)) (not ((_ is Star!16475) (regOne!33462 r!7292)))))))

(declare-fun b!6606509 () Bool)

(declare-fun res!2709062 () Bool)

(assert (=> b!6606509 (=> res!2709062 e!3997223)))

(assert (=> b!6606509 (= res!2709062 (not (matchZipper!2487 z!1189 s!2326)))))

(declare-fun b!6606510 () Bool)

(declare-fun e!3997211 () Bool)

(assert (=> b!6606510 (= e!3997211 e!3997225)))

(declare-fun res!2709046 () Bool)

(assert (=> b!6606510 (=> res!2709046 e!3997225)))

(assert (=> b!6606510 (= res!2709046 (not (matchR!8658 (regTwo!33462 r!7292) s!2326)))))

(assert (=> b!6606510 (= (matchR!8658 lt!2415131 s!2326) (matchZipper!2487 lt!2415147 s!2326))))

(declare-fun lt!2415125 () Unit!159235)

(declare-fun lt!2415114 () List!65726)

(declare-fun theoremZipperRegexEquiv!897 ((InoxSet Context!11718) List!65726 Regex!16475 List!65724) Unit!159235)

(assert (=> b!6606510 (= lt!2415125 (theoremZipperRegexEquiv!897 lt!2415147 lt!2415114 lt!2415131 s!2326))))

(declare-fun b!6606511 () Bool)

(declare-fun res!2709047 () Bool)

(assert (=> b!6606511 (=> res!2709047 e!3997234)))

(declare-fun lt!2415126 () (InoxSet Context!11718))

(declare-fun lt!2415138 () (InoxSet Context!11718))

(assert (=> b!6606511 (= res!2709047 (not (= (matchZipper!2487 lt!2415126 s!2326) (matchZipper!2487 lt!2415138 (t!379376 s!2326)))))))

(declare-fun b!6606512 () Bool)

(assert (=> b!6606512 (= e!3997234 e!3997235)))

(declare-fun res!2709068 () Bool)

(assert (=> b!6606512 (=> res!2709068 e!3997235)))

(assert (=> b!6606512 (= res!2709068 (not (= r!7292 lt!2415128)))))

(assert (=> b!6606512 (= lt!2415128 (Concat!25320 lt!2415134 (regTwo!33462 r!7292)))))

(declare-fun b!6606513 () Bool)

(declare-fun res!2709045 () Bool)

(assert (=> b!6606513 (=> res!2709045 e!3997219)))

(assert (=> b!6606513 (= res!2709045 (not (= r!7292 (generalisedConcat!2072 (exprs!6359 (h!72050 zl!343))))))))

(declare-fun b!6606514 () Bool)

(declare-fun res!2709063 () Bool)

(assert (=> b!6606514 (=> res!2709063 e!3997219)))

(assert (=> b!6606514 (= res!2709063 (or ((_ is EmptyExpr!16475) r!7292) ((_ is EmptyLang!16475) r!7292) ((_ is ElementMatch!16475) r!7292) ((_ is Union!16475) r!7292) (not ((_ is Concat!25320) r!7292))))))

(assert (=> b!6606515 (= e!3997219 e!3997224)))

(declare-fun res!2709034 () Bool)

(assert (=> b!6606515 (=> res!2709034 e!3997224)))

(declare-fun lt!2415112 () Bool)

(assert (=> b!6606515 (= res!2709034 (or (not (= lt!2415121 lt!2415112)) ((_ is Nil!65600) s!2326)))))

(assert (=> b!6606515 (= (Exists!3545 lambda!368576) (Exists!3545 lambda!368577))))

(declare-fun lt!2415139 () Unit!159235)

(assert (=> b!6606515 (= lt!2415139 (lemmaExistCutMatchRandMatchRSpecEquivalent!2082 (regOne!33462 r!7292) (regTwo!33462 r!7292) s!2326))))

(assert (=> b!6606515 (= lt!2415112 (Exists!3545 lambda!368576))))

(assert (=> b!6606515 (= lt!2415112 (isDefined!13069 (findConcatSeparation!2780 (regOne!33462 r!7292) (regTwo!33462 r!7292) Nil!65600 s!2326 s!2326)))))

(declare-fun lt!2415135 () Unit!159235)

(assert (=> b!6606515 (= lt!2415135 (lemmaFindConcatSeparationEquivalentToExists!2544 (regOne!33462 r!7292) (regTwo!33462 r!7292) s!2326))))

(declare-fun b!6606516 () Bool)

(declare-fun e!3997216 () Bool)

(declare-fun tp!1820479 () Bool)

(assert (=> b!6606516 (= e!3997213 (and (inv!84434 (h!72050 zl!343)) e!3997216 tp!1820479))))

(declare-fun b!6606517 () Bool)

(assert (=> b!6606517 (= e!3997221 e!3997234)))

(declare-fun res!2709057 () Bool)

(assert (=> b!6606517 (=> res!2709057 e!3997234)))

(assert (=> b!6606517 (= res!2709057 (not (= lt!2415138 lt!2415151)))))

(assert (=> b!6606517 (= (flatMap!1980 lt!2415126 lambda!368578) (derivationStepZipperUp!1649 lt!2415130 (h!72048 s!2326)))))

(declare-fun lt!2415141 () Unit!159235)

(assert (=> b!6606517 (= lt!2415141 (lemmaFlatMapOnSingletonSet!1506 lt!2415126 lt!2415130 lambda!368578))))

(declare-fun lt!2415150 () (InoxSet Context!11718))

(assert (=> b!6606517 (= lt!2415150 (derivationStepZipperUp!1649 lt!2415130 (h!72048 s!2326)))))

(assert (=> b!6606517 (= lt!2415138 (derivationStepZipper!2441 lt!2415126 (h!72048 s!2326)))))

(assert (=> b!6606517 (= lt!2415126 (store ((as const (Array Context!11718 Bool)) false) lt!2415130 true))))

(assert (=> b!6606517 (= lt!2415130 (Context!11719 (Cons!65601 (reg!16804 (regOne!33462 r!7292)) lt!2415144)))))

(declare-fun b!6606518 () Bool)

(declare-fun res!2709058 () Bool)

(assert (=> b!6606518 (=> res!2709058 e!3997219)))

(assert (=> b!6606518 (= res!2709058 (not ((_ is Cons!65601) (exprs!6359 (h!72050 zl!343)))))))

(declare-fun b!6606519 () Bool)

(assert (=> b!6606519 (= e!3997231 (nullable!6468 (regOne!33462 (regOne!33462 r!7292))))))

(declare-fun b!6606520 () Bool)

(declare-fun tp!1820484 () Bool)

(assert (=> b!6606520 (= e!3997216 tp!1820484)))

(declare-fun b!6606521 () Bool)

(assert (=> b!6606521 (= e!3997223 e!3997218)))

(declare-fun res!2709064 () Bool)

(assert (=> b!6606521 (=> res!2709064 e!3997218)))

(assert (=> b!6606521 (= res!2709064 e!3997212)))

(declare-fun res!2709035 () Bool)

(assert (=> b!6606521 (=> (not res!2709035) (not e!3997212))))

(assert (=> b!6606521 (= res!2709035 (not lt!2415140))))

(assert (=> b!6606521 (= lt!2415140 (matchZipper!2487 lt!2415129 (t!379376 s!2326)))))

(declare-fun b!6606522 () Bool)

(assert (=> b!6606522 (= e!3997230 e!3997211)))

(declare-fun res!2709041 () Bool)

(assert (=> b!6606522 (=> res!2709041 e!3997211)))

(declare-fun zipperDepth!412 (List!65726) Int)

(assert (=> b!6606522 (= res!2709041 (< (zipperDepth!412 zl!343) (zipperDepth!412 lt!2415114)))))

(assert (=> b!6606522 (= lt!2415114 (Cons!65602 lt!2415117 Nil!65602))))

(declare-fun b!6606523 () Bool)

(declare-fun tp!1820483 () Bool)

(assert (=> b!6606523 (= e!3997220 (and tp_is_empty!42203 tp!1820483))))

(declare-fun b!6606524 () Bool)

(declare-fun res!2709061 () Bool)

(assert (=> b!6606524 (=> res!2709061 e!3997219)))

(declare-fun isEmpty!37877 (List!65726) Bool)

(assert (=> b!6606524 (= res!2709061 (not (isEmpty!37877 (t!379378 zl!343))))))

(declare-fun b!6606525 () Bool)

(declare-fun Unit!159238 () Unit!159235)

(assert (=> b!6606525 (= e!3997217 Unit!159238)))

(declare-fun lt!2415115 () Unit!159235)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1306 ((InoxSet Context!11718) (InoxSet Context!11718) List!65724) Unit!159235)

(assert (=> b!6606525 (= lt!2415115 (lemmaZipperConcatMatchesSameAsBothZippers!1306 lt!2415129 lt!2415132 (t!379376 s!2326)))))

(declare-fun res!2709051 () Bool)

(assert (=> b!6606525 (= res!2709051 (matchZipper!2487 lt!2415129 (t!379376 s!2326)))))

(assert (=> b!6606525 (=> res!2709051 e!3997236)))

(assert (=> b!6606525 (= (matchZipper!2487 ((_ map or) lt!2415129 lt!2415132) (t!379376 s!2326)) e!3997236)))

(declare-fun b!6606526 () Bool)

(assert (=> b!6606526 (= e!3997233 e!3997223)))

(declare-fun res!2709042 () Bool)

(assert (=> b!6606526 (=> res!2709042 e!3997223)))

(assert (=> b!6606526 (= res!2709042 lt!2415121)))

(assert (=> b!6606526 (= (matchR!8658 lt!2415143 s!2326) (matchRSpec!3576 lt!2415143 s!2326))))

(declare-fun lt!2415145 () Unit!159235)

(assert (=> b!6606526 (= lt!2415145 (mainMatchTheorem!3576 lt!2415143 s!2326))))

(declare-fun b!6606527 () Bool)

(declare-fun res!2709067 () Bool)

(assert (=> b!6606527 (=> res!2709067 e!3997215)))

(assert (=> b!6606527 (= res!2709067 (not (validRegex!8211 (regTwo!33462 r!7292))))))

(declare-fun b!6606528 () Bool)

(declare-fun res!2709043 () Bool)

(assert (=> b!6606528 (=> res!2709043 e!3997224)))

(declare-fun isEmpty!37878 (List!65725) Bool)

(assert (=> b!6606528 (= res!2709043 (isEmpty!37878 (t!379377 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun setIsEmpty!45120 () Bool)

(assert (=> setIsEmpty!45120 setRes!45120))

(assert (= (and start!645894 res!2709056) b!6606485))

(assert (= (and b!6606485 res!2709055) b!6606507))

(assert (= (and b!6606507 res!2709044) b!6606491))

(assert (= (and b!6606491 (not res!2709066)) b!6606524))

(assert (= (and b!6606524 (not res!2709061)) b!6606513))

(assert (= (and b!6606513 (not res!2709045)) b!6606518))

(assert (= (and b!6606518 (not res!2709058)) b!6606495))

(assert (= (and b!6606495 (not res!2709048)) b!6606514))

(assert (= (and b!6606514 (not res!2709063)) b!6606515))

(assert (= (and b!6606515 (not res!2709034)) b!6606528))

(assert (= (and b!6606528 (not res!2709043)) b!6606487))

(assert (= (and b!6606487 c!1217325) b!6606525))

(assert (= (and b!6606487 (not c!1217325)) b!6606488))

(assert (= (and b!6606525 (not res!2709051)) b!6606504))

(assert (= (and b!6606487 (not res!2709050)) b!6606494))

(assert (= (and b!6606494 res!2709059) b!6606519))

(assert (= (and b!6606494 (not res!2709049)) b!6606508))

(assert (= (and b!6606508 (not res!2709060)) b!6606498))

(assert (= (and b!6606498 (not res!2709038)) b!6606517))

(assert (= (and b!6606517 (not res!2709057)) b!6606511))

(assert (= (and b!6606511 (not res!2709047)) b!6606486))

(assert (= (and b!6606486 (not res!2709036)) b!6606512))

(assert (= (and b!6606512 (not res!2709068)) b!6606489))

(assert (= (and b!6606489 (not res!2709052)) b!6606502))

(assert (= (and b!6606502 (not res!2709070)) b!6606505))

(assert (= (and b!6606505 (not res!2709039)) b!6606526))

(assert (= (and b!6606526 (not res!2709042)) b!6606509))

(assert (= (and b!6606509 (not res!2709062)) b!6606506))

(assert (= (and b!6606506 (not res!2709053)) b!6606521))

(assert (= (and b!6606521 res!2709035) b!6606501))

(assert (= (and b!6606521 (not res!2709064)) b!6606493))

(assert (= (and b!6606493 (not res!2709040)) b!6606490))

(assert (= (and b!6606490 (not res!2709069)) b!6606496))

(assert (= (and b!6606496 (not res!2709037)) b!6606492))

(assert (= (and b!6606492 (not res!2709065)) b!6606522))

(assert (= (and b!6606522 (not res!2709041)) b!6606510))

(assert (= (and b!6606510 (not res!2709046)) b!6606503))

(assert (= (and b!6606503 (not res!2709054)) b!6606527))

(assert (= (and b!6606527 (not res!2709067)) b!6606482))

(assert (= (and start!645894 ((_ is ElementMatch!16475) r!7292)) b!6606499))

(assert (= (and start!645894 ((_ is Concat!25320) r!7292)) b!6606497))

(assert (= (and start!645894 ((_ is Star!16475) r!7292)) b!6606483))

(assert (= (and start!645894 ((_ is Union!16475) r!7292)) b!6606484))

(assert (= (and start!645894 condSetEmpty!45120) setIsEmpty!45120))

(assert (= (and start!645894 (not condSetEmpty!45120)) setNonEmpty!45120))

(assert (= setNonEmpty!45120 b!6606500))

(assert (= b!6606516 b!6606520))

(assert (= (and start!645894 ((_ is Cons!65602) zl!343)) b!6606516))

(assert (= (and start!645894 ((_ is Cons!65600) s!2326)) b!6606523))

(declare-fun m!7381572 () Bool)

(assert (=> b!6606495 m!7381572))

(assert (=> b!6606495 m!7381572))

(declare-fun m!7381574 () Bool)

(assert (=> b!6606495 m!7381574))

(declare-fun m!7381576 () Bool)

(assert (=> b!6606513 m!7381576))

(declare-fun m!7381578 () Bool)

(assert (=> b!6606505 m!7381578))

(declare-fun m!7381580 () Bool)

(assert (=> b!6606491 m!7381580))

(declare-fun m!7381582 () Bool)

(assert (=> b!6606491 m!7381582))

(declare-fun m!7381584 () Bool)

(assert (=> b!6606491 m!7381584))

(declare-fun m!7381586 () Bool)

(assert (=> b!6606490 m!7381586))

(declare-fun m!7381588 () Bool)

(assert (=> b!6606525 m!7381588))

(declare-fun m!7381590 () Bool)

(assert (=> b!6606525 m!7381590))

(declare-fun m!7381592 () Bool)

(assert (=> b!6606525 m!7381592))

(assert (=> b!6606501 m!7381586))

(declare-fun m!7381594 () Bool)

(assert (=> b!6606517 m!7381594))

(declare-fun m!7381596 () Bool)

(assert (=> b!6606517 m!7381596))

(declare-fun m!7381598 () Bool)

(assert (=> b!6606517 m!7381598))

(declare-fun m!7381600 () Bool)

(assert (=> b!6606517 m!7381600))

(declare-fun m!7381602 () Bool)

(assert (=> b!6606517 m!7381602))

(declare-fun m!7381604 () Bool)

(assert (=> b!6606485 m!7381604))

(declare-fun m!7381606 () Bool)

(assert (=> b!6606492 m!7381606))

(declare-fun m!7381608 () Bool)

(assert (=> b!6606492 m!7381608))

(declare-fun m!7381610 () Bool)

(assert (=> b!6606492 m!7381610))

(declare-fun m!7381612 () Bool)

(assert (=> b!6606528 m!7381612))

(assert (=> b!6606521 m!7381590))

(declare-fun m!7381614 () Bool)

(assert (=> b!6606489 m!7381614))

(declare-fun m!7381616 () Bool)

(assert (=> b!6606510 m!7381616))

(declare-fun m!7381618 () Bool)

(assert (=> b!6606510 m!7381618))

(declare-fun m!7381620 () Bool)

(assert (=> b!6606510 m!7381620))

(declare-fun m!7381622 () Bool)

(assert (=> b!6606510 m!7381622))

(declare-fun m!7381624 () Bool)

(assert (=> b!6606503 m!7381624))

(declare-fun m!7381626 () Bool)

(assert (=> b!6606503 m!7381626))

(declare-fun m!7381628 () Bool)

(assert (=> b!6606503 m!7381628))

(declare-fun m!7381630 () Bool)

(assert (=> b!6606503 m!7381630))

(declare-fun m!7381632 () Bool)

(assert (=> b!6606503 m!7381632))

(declare-fun m!7381634 () Bool)

(assert (=> b!6606503 m!7381634))

(declare-fun m!7381636 () Bool)

(assert (=> b!6606503 m!7381636))

(declare-fun m!7381638 () Bool)

(assert (=> b!6606503 m!7381638))

(declare-fun m!7381640 () Bool)

(assert (=> b!6606503 m!7381640))

(declare-fun m!7381642 () Bool)

(assert (=> b!6606503 m!7381642))

(assert (=> b!6606503 m!7381626))

(declare-fun m!7381644 () Bool)

(assert (=> b!6606503 m!7381644))

(declare-fun m!7381646 () Bool)

(assert (=> b!6606503 m!7381646))

(assert (=> b!6606503 m!7381636))

(assert (=> b!6606503 m!7381636))

(declare-fun m!7381648 () Bool)

(assert (=> b!6606516 m!7381648))

(declare-fun m!7381650 () Bool)

(assert (=> b!6606515 m!7381650))

(assert (=> b!6606515 m!7381650))

(declare-fun m!7381652 () Bool)

(assert (=> b!6606515 m!7381652))

(declare-fun m!7381654 () Bool)

(assert (=> b!6606515 m!7381654))

(assert (=> b!6606515 m!7381652))

(declare-fun m!7381656 () Bool)

(assert (=> b!6606515 m!7381656))

(declare-fun m!7381658 () Bool)

(assert (=> b!6606515 m!7381658))

(declare-fun m!7381660 () Bool)

(assert (=> b!6606515 m!7381660))

(declare-fun m!7381662 () Bool)

(assert (=> b!6606487 m!7381662))

(declare-fun m!7381664 () Bool)

(assert (=> b!6606487 m!7381664))

(declare-fun m!7381666 () Bool)

(assert (=> b!6606487 m!7381666))

(declare-fun m!7381668 () Bool)

(assert (=> b!6606487 m!7381668))

(declare-fun m!7381670 () Bool)

(assert (=> b!6606487 m!7381670))

(declare-fun m!7381672 () Bool)

(assert (=> b!6606487 m!7381672))

(declare-fun m!7381674 () Bool)

(assert (=> b!6606487 m!7381674))

(declare-fun m!7381676 () Bool)

(assert (=> b!6606524 m!7381676))

(declare-fun m!7381678 () Bool)

(assert (=> setNonEmpty!45120 m!7381678))

(declare-fun m!7381680 () Bool)

(assert (=> b!6606507 m!7381680))

(declare-fun m!7381682 () Bool)

(assert (=> b!6606502 m!7381682))

(declare-fun m!7381684 () Bool)

(assert (=> b!6606502 m!7381684))

(declare-fun m!7381686 () Bool)

(assert (=> b!6606502 m!7381686))

(declare-fun m!7381688 () Bool)

(assert (=> b!6606502 m!7381688))

(declare-fun m!7381690 () Bool)

(assert (=> b!6606502 m!7381690))

(declare-fun m!7381692 () Bool)

(assert (=> b!6606502 m!7381692))

(declare-fun m!7381694 () Bool)

(assert (=> b!6606502 m!7381694))

(declare-fun m!7381696 () Bool)

(assert (=> b!6606502 m!7381696))

(declare-fun m!7381698 () Bool)

(assert (=> b!6606502 m!7381698))

(declare-fun m!7381700 () Bool)

(assert (=> b!6606498 m!7381700))

(declare-fun m!7381702 () Bool)

(assert (=> b!6606519 m!7381702))

(assert (=> b!6606504 m!7381586))

(declare-fun m!7381704 () Bool)

(assert (=> b!6606522 m!7381704))

(declare-fun m!7381706 () Bool)

(assert (=> b!6606522 m!7381706))

(declare-fun m!7381708 () Bool)

(assert (=> b!6606496 m!7381708))

(declare-fun m!7381710 () Bool)

(assert (=> b!6606496 m!7381710))

(declare-fun m!7381712 () Bool)

(assert (=> b!6606496 m!7381712))

(declare-fun m!7381714 () Bool)

(assert (=> b!6606496 m!7381714))

(assert (=> b!6606496 m!7381668))

(declare-fun m!7381716 () Bool)

(assert (=> b!6606527 m!7381716))

(declare-fun m!7381718 () Bool)

(assert (=> b!6606526 m!7381718))

(declare-fun m!7381720 () Bool)

(assert (=> b!6606526 m!7381720))

(declare-fun m!7381722 () Bool)

(assert (=> b!6606526 m!7381722))

(declare-fun m!7381724 () Bool)

(assert (=> b!6606511 m!7381724))

(declare-fun m!7381726 () Bool)

(assert (=> b!6606511 m!7381726))

(declare-fun m!7381728 () Bool)

(assert (=> start!645894 m!7381728))

(declare-fun m!7381730 () Bool)

(assert (=> b!6606509 m!7381730))

(check-sat (not b!6606495) (not b!6606487) (not b!6606492) (not b!6606484) (not b!6606520) (not b!6606491) (not b!6606496) (not b!6606500) (not b!6606513) (not b!6606505) (not b!6606498) tp_is_empty!42203 (not b!6606503) (not b!6606528) (not b!6606515) (not b!6606522) (not b!6606502) (not b!6606519) (not b!6606521) (not b!6606497) (not b!6606501) (not b!6606516) (not b!6606483) (not b!6606507) (not b!6606510) (not b!6606490) (not b!6606517) (not b!6606511) (not b!6606527) (not b!6606509) (not b!6606526) (not setNonEmpty!45120) (not b!6606504) (not b!6606523) (not b!6606485) (not b!6606524) (not start!645894) (not b!6606525) (not b!6606489))
(check-sat)
(get-model)

(declare-fun b!6606833 () Bool)

(declare-fun e!3997412 () Bool)

(declare-fun lt!2415195 () Regex!16475)

(declare-fun isEmptyLang!1861 (Regex!16475) Bool)

(assert (=> b!6606833 (= e!3997412 (isEmptyLang!1861 lt!2415195))))

(declare-fun b!6606834 () Bool)

(declare-fun e!3997407 () Regex!16475)

(assert (=> b!6606834 (= e!3997407 (Union!16475 (h!72049 (unfocusZipperList!1896 zl!343)) (generalisedUnion!2319 (t!379377 (unfocusZipperList!1896 zl!343)))))))

(declare-fun b!6606835 () Bool)

(declare-fun e!3997410 () Regex!16475)

(assert (=> b!6606835 (= e!3997410 (h!72049 (unfocusZipperList!1896 zl!343)))))

(declare-fun b!6606836 () Bool)

(declare-fun e!3997411 () Bool)

(assert (=> b!6606836 (= e!3997411 (isEmpty!37878 (t!379377 (unfocusZipperList!1896 zl!343))))))

(declare-fun b!6606837 () Bool)

(assert (=> b!6606837 (= e!3997410 e!3997407)))

(declare-fun c!1217420 () Bool)

(assert (=> b!6606837 (= c!1217420 ((_ is Cons!65601) (unfocusZipperList!1896 zl!343)))))

(declare-fun b!6606838 () Bool)

(declare-fun e!3997408 () Bool)

(assert (=> b!6606838 (= e!3997412 e!3997408)))

(declare-fun c!1217419 () Bool)

(declare-fun tail!12486 (List!65725) List!65725)

(assert (=> b!6606838 (= c!1217419 (isEmpty!37878 (tail!12486 (unfocusZipperList!1896 zl!343))))))

(declare-fun b!6606839 () Bool)

(declare-fun head!13401 (List!65725) Regex!16475)

(assert (=> b!6606839 (= e!3997408 (= lt!2415195 (head!13401 (unfocusZipperList!1896 zl!343))))))

(declare-fun b!6606841 () Bool)

(declare-fun isUnion!1291 (Regex!16475) Bool)

(assert (=> b!6606841 (= e!3997408 (isUnion!1291 lt!2415195))))

(declare-fun b!6606842 () Bool)

(declare-fun e!3997409 () Bool)

(assert (=> b!6606842 (= e!3997409 e!3997412)))

(declare-fun c!1217417 () Bool)

(assert (=> b!6606842 (= c!1217417 (isEmpty!37878 (unfocusZipperList!1896 zl!343)))))

(declare-fun b!6606840 () Bool)

(assert (=> b!6606840 (= e!3997407 EmptyLang!16475)))

(declare-fun d!2071653 () Bool)

(assert (=> d!2071653 e!3997409))

(declare-fun res!2709189 () Bool)

(assert (=> d!2071653 (=> (not res!2709189) (not e!3997409))))

(assert (=> d!2071653 (= res!2709189 (validRegex!8211 lt!2415195))))

(assert (=> d!2071653 (= lt!2415195 e!3997410)))

(declare-fun c!1217418 () Bool)

(assert (=> d!2071653 (= c!1217418 e!3997411)))

(declare-fun res!2709190 () Bool)

(assert (=> d!2071653 (=> (not res!2709190) (not e!3997411))))

(assert (=> d!2071653 (= res!2709190 ((_ is Cons!65601) (unfocusZipperList!1896 zl!343)))))

(declare-fun lambda!368603 () Int)

(declare-fun forall!15673 (List!65725 Int) Bool)

(assert (=> d!2071653 (forall!15673 (unfocusZipperList!1896 zl!343) lambda!368603)))

(assert (=> d!2071653 (= (generalisedUnion!2319 (unfocusZipperList!1896 zl!343)) lt!2415195)))

(assert (= (and d!2071653 res!2709190) b!6606836))

(assert (= (and d!2071653 c!1217418) b!6606835))

(assert (= (and d!2071653 (not c!1217418)) b!6606837))

(assert (= (and b!6606837 c!1217420) b!6606834))

(assert (= (and b!6606837 (not c!1217420)) b!6606840))

(assert (= (and d!2071653 res!2709189) b!6606842))

(assert (= (and b!6606842 c!1217417) b!6606833))

(assert (= (and b!6606842 (not c!1217417)) b!6606838))

(assert (= (and b!6606838 c!1217419) b!6606839))

(assert (= (and b!6606838 (not c!1217419)) b!6606841))

(assert (=> b!6606839 m!7381572))

(declare-fun m!7381900 () Bool)

(assert (=> b!6606839 m!7381900))

(declare-fun m!7381902 () Bool)

(assert (=> d!2071653 m!7381902))

(assert (=> d!2071653 m!7381572))

(declare-fun m!7381904 () Bool)

(assert (=> d!2071653 m!7381904))

(declare-fun m!7381906 () Bool)

(assert (=> b!6606836 m!7381906))

(declare-fun m!7381908 () Bool)

(assert (=> b!6606834 m!7381908))

(assert (=> b!6606838 m!7381572))

(declare-fun m!7381910 () Bool)

(assert (=> b!6606838 m!7381910))

(assert (=> b!6606838 m!7381910))

(declare-fun m!7381912 () Bool)

(assert (=> b!6606838 m!7381912))

(assert (=> b!6606842 m!7381572))

(declare-fun m!7381914 () Bool)

(assert (=> b!6606842 m!7381914))

(declare-fun m!7381916 () Bool)

(assert (=> b!6606833 m!7381916))

(declare-fun m!7381918 () Bool)

(assert (=> b!6606841 m!7381918))

(assert (=> b!6606495 d!2071653))

(declare-fun bs!1693358 () Bool)

(declare-fun d!2071661 () Bool)

(assert (= bs!1693358 (and d!2071661 d!2071653)))

(declare-fun lambda!368608 () Int)

(assert (=> bs!1693358 (= lambda!368608 lambda!368603)))

(declare-fun lt!2415202 () List!65725)

(assert (=> d!2071661 (forall!15673 lt!2415202 lambda!368608)))

(declare-fun e!3997438 () List!65725)

(assert (=> d!2071661 (= lt!2415202 e!3997438)))

(declare-fun c!1217439 () Bool)

(assert (=> d!2071661 (= c!1217439 ((_ is Cons!65602) zl!343))))

(assert (=> d!2071661 (= (unfocusZipperList!1896 zl!343) lt!2415202)))

(declare-fun b!6606885 () Bool)

(assert (=> b!6606885 (= e!3997438 (Cons!65601 (generalisedConcat!2072 (exprs!6359 (h!72050 zl!343))) (unfocusZipperList!1896 (t!379378 zl!343))))))

(declare-fun b!6606886 () Bool)

(assert (=> b!6606886 (= e!3997438 Nil!65601)))

(assert (= (and d!2071661 c!1217439) b!6606885))

(assert (= (and d!2071661 (not c!1217439)) b!6606886))

(declare-fun m!7381940 () Bool)

(assert (=> d!2071661 m!7381940))

(assert (=> b!6606885 m!7381576))

(declare-fun m!7381942 () Bool)

(assert (=> b!6606885 m!7381942))

(assert (=> b!6606495 d!2071661))

(declare-fun b!6607104 () Bool)

(declare-fun e!3997565 () Option!16366)

(assert (=> b!6607104 (= e!3997565 None!16365)))

(declare-fun b!6607105 () Bool)

(declare-fun res!2709280 () Bool)

(declare-fun e!3997567 () Bool)

(assert (=> b!6607105 (=> (not res!2709280) (not e!3997567))))

(declare-fun lt!2415235 () Option!16366)

(declare-fun get!22794 (Option!16366) tuple2!66908)

(assert (=> b!6607105 (= res!2709280 (matchR!8658 (regTwo!33462 r!7292) (_2!36757 (get!22794 lt!2415235))))))

(declare-fun b!6607106 () Bool)

(declare-fun e!3997568 () Bool)

(assert (=> b!6607106 (= e!3997568 (not (isDefined!13069 lt!2415235)))))

(declare-fun b!6607107 () Bool)

(declare-fun ++!14621 (List!65724 List!65724) List!65724)

(assert (=> b!6607107 (= e!3997567 (= (++!14621 (_1!36757 (get!22794 lt!2415235)) (_2!36757 (get!22794 lt!2415235))) s!2326))))

(declare-fun b!6607108 () Bool)

(declare-fun e!3997569 () Bool)

(assert (=> b!6607108 (= e!3997569 (matchR!8658 (regTwo!33462 r!7292) s!2326))))

(declare-fun b!6607109 () Bool)

(declare-fun e!3997566 () Option!16366)

(assert (=> b!6607109 (= e!3997566 (Some!16365 (tuple2!66909 Nil!65600 s!2326)))))

(declare-fun b!6607110 () Bool)

(declare-fun res!2709277 () Bool)

(assert (=> b!6607110 (=> (not res!2709277) (not e!3997567))))

(assert (=> b!6607110 (= res!2709277 (matchR!8658 (regOne!33462 r!7292) (_1!36757 (get!22794 lt!2415235))))))

(declare-fun d!2071667 () Bool)

(assert (=> d!2071667 e!3997568))

(declare-fun res!2709278 () Bool)

(assert (=> d!2071667 (=> res!2709278 e!3997568)))

(assert (=> d!2071667 (= res!2709278 e!3997567)))

(declare-fun res!2709276 () Bool)

(assert (=> d!2071667 (=> (not res!2709276) (not e!3997567))))

(assert (=> d!2071667 (= res!2709276 (isDefined!13069 lt!2415235))))

(assert (=> d!2071667 (= lt!2415235 e!3997566)))

(declare-fun c!1217510 () Bool)

(assert (=> d!2071667 (= c!1217510 e!3997569)))

(declare-fun res!2709279 () Bool)

(assert (=> d!2071667 (=> (not res!2709279) (not e!3997569))))

(assert (=> d!2071667 (= res!2709279 (matchR!8658 (regOne!33462 r!7292) Nil!65600))))

(assert (=> d!2071667 (validRegex!8211 (regOne!33462 r!7292))))

(assert (=> d!2071667 (= (findConcatSeparation!2780 (regOne!33462 r!7292) (regTwo!33462 r!7292) Nil!65600 s!2326 s!2326) lt!2415235)))

(declare-fun b!6607111 () Bool)

(assert (=> b!6607111 (= e!3997566 e!3997565)))

(declare-fun c!1217511 () Bool)

(assert (=> b!6607111 (= c!1217511 ((_ is Nil!65600) s!2326))))

(declare-fun b!6607112 () Bool)

(declare-fun lt!2415237 () Unit!159235)

(declare-fun lt!2415236 () Unit!159235)

(assert (=> b!6607112 (= lt!2415237 lt!2415236)))

(assert (=> b!6607112 (= (++!14621 (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) Nil!65600)) (t!379376 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2618 (List!65724 C!33220 List!65724 List!65724) Unit!159235)

(assert (=> b!6607112 (= lt!2415236 (lemmaMoveElementToOtherListKeepsConcatEq!2618 Nil!65600 (h!72048 s!2326) (t!379376 s!2326) s!2326))))

(assert (=> b!6607112 (= e!3997565 (findConcatSeparation!2780 (regOne!33462 r!7292) (regTwo!33462 r!7292) (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) Nil!65600)) (t!379376 s!2326) s!2326))))

(assert (= (and d!2071667 res!2709279) b!6607108))

(assert (= (and d!2071667 c!1217510) b!6607109))

(assert (= (and d!2071667 (not c!1217510)) b!6607111))

(assert (= (and b!6607111 c!1217511) b!6607104))

(assert (= (and b!6607111 (not c!1217511)) b!6607112))

(assert (= (and d!2071667 res!2709276) b!6607110))

(assert (= (and b!6607110 res!2709277) b!6607105))

(assert (= (and b!6607105 res!2709280) b!6607107))

(assert (= (and d!2071667 (not res!2709278)) b!6607106))

(declare-fun m!7382176 () Bool)

(assert (=> b!6607110 m!7382176))

(declare-fun m!7382178 () Bool)

(assert (=> b!6607110 m!7382178))

(declare-fun m!7382180 () Bool)

(assert (=> b!6607112 m!7382180))

(assert (=> b!6607112 m!7382180))

(declare-fun m!7382182 () Bool)

(assert (=> b!6607112 m!7382182))

(declare-fun m!7382184 () Bool)

(assert (=> b!6607112 m!7382184))

(assert (=> b!6607112 m!7382180))

(declare-fun m!7382186 () Bool)

(assert (=> b!6607112 m!7382186))

(assert (=> b!6607108 m!7381616))

(assert (=> b!6607107 m!7382176))

(declare-fun m!7382188 () Bool)

(assert (=> b!6607107 m!7382188))

(declare-fun m!7382190 () Bool)

(assert (=> d!2071667 m!7382190))

(declare-fun m!7382192 () Bool)

(assert (=> d!2071667 m!7382192))

(declare-fun m!7382194 () Bool)

(assert (=> d!2071667 m!7382194))

(assert (=> b!6607105 m!7382176))

(declare-fun m!7382196 () Bool)

(assert (=> b!6607105 m!7382196))

(assert (=> b!6607106 m!7382190))

(assert (=> b!6606515 d!2071667))

(declare-fun d!2071751 () Bool)

(declare-fun choose!49347 (Int) Bool)

(assert (=> d!2071751 (= (Exists!3545 lambda!368576) (choose!49347 lambda!368576))))

(declare-fun bs!1693458 () Bool)

(assert (= bs!1693458 d!2071751))

(declare-fun m!7382198 () Bool)

(assert (=> bs!1693458 m!7382198))

(assert (=> b!6606515 d!2071751))

(declare-fun d!2071753 () Bool)

(assert (=> d!2071753 (= (Exists!3545 lambda!368577) (choose!49347 lambda!368577))))

(declare-fun bs!1693459 () Bool)

(assert (= bs!1693459 d!2071753))

(declare-fun m!7382200 () Bool)

(assert (=> bs!1693459 m!7382200))

(assert (=> b!6606515 d!2071753))

(declare-fun bs!1693466 () Bool)

(declare-fun d!2071755 () Bool)

(assert (= bs!1693466 (and d!2071755 b!6606515)))

(declare-fun lambda!368648 () Int)

(assert (=> bs!1693466 (= lambda!368648 lambda!368576)))

(declare-fun bs!1693467 () Bool)

(assert (= bs!1693467 (and d!2071755 b!6606503)))

(assert (=> bs!1693467 (not (= lambda!368648 lambda!368580))))

(assert (=> bs!1693467 (not (= lambda!368648 lambda!368581))))

(assert (=> bs!1693467 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 r!7292) lt!2415134)) (= lambda!368648 lambda!368579))))

(assert (=> bs!1693466 (not (= lambda!368648 lambda!368577))))

(assert (=> d!2071755 true))

(assert (=> d!2071755 true))

(assert (=> d!2071755 true))

(assert (=> d!2071755 (= (isDefined!13069 (findConcatSeparation!2780 (regOne!33462 r!7292) (regTwo!33462 r!7292) Nil!65600 s!2326 s!2326)) (Exists!3545 lambda!368648))))

(declare-fun lt!2415259 () Unit!159235)

(declare-fun choose!49348 (Regex!16475 Regex!16475 List!65724) Unit!159235)

(assert (=> d!2071755 (= lt!2415259 (choose!49348 (regOne!33462 r!7292) (regTwo!33462 r!7292) s!2326))))

(assert (=> d!2071755 (validRegex!8211 (regOne!33462 r!7292))))

(assert (=> d!2071755 (= (lemmaFindConcatSeparationEquivalentToExists!2544 (regOne!33462 r!7292) (regTwo!33462 r!7292) s!2326) lt!2415259)))

(declare-fun bs!1693468 () Bool)

(assert (= bs!1693468 d!2071755))

(declare-fun m!7382236 () Bool)

(assert (=> bs!1693468 m!7382236))

(assert (=> bs!1693468 m!7382194))

(assert (=> bs!1693468 m!7381652))

(assert (=> bs!1693468 m!7381654))

(declare-fun m!7382238 () Bool)

(assert (=> bs!1693468 m!7382238))

(assert (=> bs!1693468 m!7381652))

(assert (=> b!6606515 d!2071755))

(declare-fun bs!1693474 () Bool)

(declare-fun d!2071761 () Bool)

(assert (= bs!1693474 (and d!2071761 b!6606515)))

(declare-fun lambda!368653 () Int)

(assert (=> bs!1693474 (= lambda!368653 lambda!368576)))

(declare-fun bs!1693475 () Bool)

(assert (= bs!1693475 (and d!2071761 b!6606503)))

(assert (=> bs!1693475 (not (= lambda!368653 lambda!368580))))

(assert (=> bs!1693475 (not (= lambda!368653 lambda!368581))))

(assert (=> bs!1693475 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 r!7292) lt!2415134)) (= lambda!368653 lambda!368579))))

(assert (=> bs!1693474 (not (= lambda!368653 lambda!368577))))

(declare-fun bs!1693476 () Bool)

(assert (= bs!1693476 (and d!2071761 d!2071755)))

(assert (=> bs!1693476 (= lambda!368653 lambda!368648)))

(assert (=> d!2071761 true))

(assert (=> d!2071761 true))

(assert (=> d!2071761 true))

(declare-fun bs!1693477 () Bool)

(assert (= bs!1693477 d!2071761))

(declare-fun lambda!368654 () Int)

(assert (=> bs!1693477 (not (= lambda!368654 lambda!368653))))

(assert (=> bs!1693474 (not (= lambda!368654 lambda!368576))))

(assert (=> bs!1693475 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 r!7292) lt!2415134)) (= lambda!368654 lambda!368580))))

(assert (=> bs!1693475 (not (= lambda!368654 lambda!368581))))

(assert (=> bs!1693475 (not (= lambda!368654 lambda!368579))))

(assert (=> bs!1693474 (= lambda!368654 lambda!368577)))

(assert (=> bs!1693476 (not (= lambda!368654 lambda!368648))))

(assert (=> d!2071761 true))

(assert (=> d!2071761 true))

(assert (=> d!2071761 true))

(assert (=> d!2071761 (= (Exists!3545 lambda!368653) (Exists!3545 lambda!368654))))

(declare-fun lt!2415262 () Unit!159235)

(declare-fun choose!49349 (Regex!16475 Regex!16475 List!65724) Unit!159235)

(assert (=> d!2071761 (= lt!2415262 (choose!49349 (regOne!33462 r!7292) (regTwo!33462 r!7292) s!2326))))

(assert (=> d!2071761 (validRegex!8211 (regOne!33462 r!7292))))

(assert (=> d!2071761 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2082 (regOne!33462 r!7292) (regTwo!33462 r!7292) s!2326) lt!2415262)))

(declare-fun m!7382240 () Bool)

(assert (=> bs!1693477 m!7382240))

(declare-fun m!7382242 () Bool)

(assert (=> bs!1693477 m!7382242))

(declare-fun m!7382244 () Bool)

(assert (=> bs!1693477 m!7382244))

(assert (=> bs!1693477 m!7382194))

(assert (=> b!6606515 d!2071761))

(declare-fun d!2071773 () Bool)

(declare-fun isEmpty!37881 (Option!16366) Bool)

(assert (=> d!2071773 (= (isDefined!13069 (findConcatSeparation!2780 (regOne!33462 r!7292) (regTwo!33462 r!7292) Nil!65600 s!2326 s!2326)) (not (isEmpty!37881 (findConcatSeparation!2780 (regOne!33462 r!7292) (regTwo!33462 r!7292) Nil!65600 s!2326 s!2326))))))

(declare-fun bs!1693478 () Bool)

(assert (= bs!1693478 d!2071773))

(assert (=> bs!1693478 m!7381652))

(declare-fun m!7382246 () Bool)

(assert (=> bs!1693478 m!7382246))

(assert (=> b!6606515 d!2071773))

(declare-fun d!2071775 () Bool)

(declare-fun choose!49350 ((InoxSet Context!11718) Int) (InoxSet Context!11718))

(assert (=> d!2071775 (= (flatMap!1980 lt!2415126 lambda!368578) (choose!49350 lt!2415126 lambda!368578))))

(declare-fun bs!1693479 () Bool)

(assert (= bs!1693479 d!2071775))

(declare-fun m!7382248 () Bool)

(assert (=> bs!1693479 m!7382248))

(assert (=> b!6606517 d!2071775))

(declare-fun b!6607209 () Bool)

(declare-fun e!3997619 () Bool)

(assert (=> b!6607209 (= e!3997619 (nullable!6468 (h!72049 (exprs!6359 lt!2415130))))))

(declare-fun call!578032 () (InoxSet Context!11718))

(declare-fun b!6607210 () Bool)

(declare-fun e!3997617 () (InoxSet Context!11718))

(assert (=> b!6607210 (= e!3997617 ((_ map or) call!578032 (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 lt!2415130))) (h!72048 s!2326))))))

(declare-fun bm!578027 () Bool)

(assert (=> bm!578027 (= call!578032 (derivationStepZipperDown!1723 (h!72049 (exprs!6359 lt!2415130)) (Context!11719 (t!379377 (exprs!6359 lt!2415130))) (h!72048 s!2326)))))

(declare-fun b!6607211 () Bool)

(declare-fun e!3997618 () (InoxSet Context!11718))

(assert (=> b!6607211 (= e!3997618 ((as const (Array Context!11718 Bool)) false))))

(declare-fun b!6607212 () Bool)

(assert (=> b!6607212 (= e!3997617 e!3997618)))

(declare-fun c!1217528 () Bool)

(assert (=> b!6607212 (= c!1217528 ((_ is Cons!65601) (exprs!6359 lt!2415130)))))

(declare-fun b!6607208 () Bool)

(assert (=> b!6607208 (= e!3997618 call!578032)))

(declare-fun d!2071777 () Bool)

(declare-fun c!1217527 () Bool)

(assert (=> d!2071777 (= c!1217527 e!3997619)))

(declare-fun res!2709302 () Bool)

(assert (=> d!2071777 (=> (not res!2709302) (not e!3997619))))

(assert (=> d!2071777 (= res!2709302 ((_ is Cons!65601) (exprs!6359 lt!2415130)))))

(assert (=> d!2071777 (= (derivationStepZipperUp!1649 lt!2415130 (h!72048 s!2326)) e!3997617)))

(assert (= (and d!2071777 res!2709302) b!6607209))

(assert (= (and d!2071777 c!1217527) b!6607210))

(assert (= (and d!2071777 (not c!1217527)) b!6607212))

(assert (= (and b!6607212 c!1217528) b!6607208))

(assert (= (and b!6607212 (not c!1217528)) b!6607211))

(assert (= (or b!6607210 b!6607208) bm!578027))

(declare-fun m!7382250 () Bool)

(assert (=> b!6607209 m!7382250))

(declare-fun m!7382252 () Bool)

(assert (=> b!6607210 m!7382252))

(declare-fun m!7382254 () Bool)

(assert (=> bm!578027 m!7382254))

(assert (=> b!6606517 d!2071777))

(declare-fun d!2071779 () Bool)

(declare-fun dynLambda!26122 (Int Context!11718) (InoxSet Context!11718))

(assert (=> d!2071779 (= (flatMap!1980 lt!2415126 lambda!368578) (dynLambda!26122 lambda!368578 lt!2415130))))

(declare-fun lt!2415265 () Unit!159235)

(declare-fun choose!49351 ((InoxSet Context!11718) Context!11718 Int) Unit!159235)

(assert (=> d!2071779 (= lt!2415265 (choose!49351 lt!2415126 lt!2415130 lambda!368578))))

(assert (=> d!2071779 (= lt!2415126 (store ((as const (Array Context!11718 Bool)) false) lt!2415130 true))))

(assert (=> d!2071779 (= (lemmaFlatMapOnSingletonSet!1506 lt!2415126 lt!2415130 lambda!368578) lt!2415265)))

(declare-fun b_lambda!249997 () Bool)

(assert (=> (not b_lambda!249997) (not d!2071779)))

(declare-fun bs!1693480 () Bool)

(assert (= bs!1693480 d!2071779))

(assert (=> bs!1693480 m!7381598))

(declare-fun m!7382256 () Bool)

(assert (=> bs!1693480 m!7382256))

(declare-fun m!7382258 () Bool)

(assert (=> bs!1693480 m!7382258))

(assert (=> bs!1693480 m!7381602))

(assert (=> b!6606517 d!2071779))

(declare-fun bs!1693481 () Bool)

(declare-fun d!2071781 () Bool)

(assert (= bs!1693481 (and d!2071781 b!6606487)))

(declare-fun lambda!368657 () Int)

(assert (=> bs!1693481 (= lambda!368657 lambda!368578)))

(assert (=> d!2071781 true))

(assert (=> d!2071781 (= (derivationStepZipper!2441 lt!2415126 (h!72048 s!2326)) (flatMap!1980 lt!2415126 lambda!368657))))

(declare-fun bs!1693482 () Bool)

(assert (= bs!1693482 d!2071781))

(declare-fun m!7382260 () Bool)

(assert (=> bs!1693482 m!7382260))

(assert (=> b!6606517 d!2071781))

(declare-fun bs!1693483 () Bool)

(declare-fun d!2071783 () Bool)

(assert (= bs!1693483 (and d!2071783 d!2071653)))

(declare-fun lambda!368660 () Int)

(assert (=> bs!1693483 (= lambda!368660 lambda!368603)))

(declare-fun bs!1693484 () Bool)

(assert (= bs!1693484 (and d!2071783 d!2071661)))

(assert (=> bs!1693484 (= lambda!368660 lambda!368608)))

(assert (=> d!2071783 (= (inv!84434 (h!72050 zl!343)) (forall!15673 (exprs!6359 (h!72050 zl!343)) lambda!368660))))

(declare-fun bs!1693485 () Bool)

(assert (= bs!1693485 d!2071783))

(declare-fun m!7382262 () Bool)

(assert (=> bs!1693485 m!7382262))

(assert (=> b!6606516 d!2071783))

(declare-fun bs!1693486 () Bool)

(declare-fun d!2071785 () Bool)

(assert (= bs!1693486 (and d!2071785 b!6606487)))

(declare-fun lambda!368661 () Int)

(assert (=> bs!1693486 (= lambda!368661 lambda!368578)))

(declare-fun bs!1693487 () Bool)

(assert (= bs!1693487 (and d!2071785 d!2071781)))

(assert (=> bs!1693487 (= lambda!368661 lambda!368657)))

(assert (=> d!2071785 true))

(assert (=> d!2071785 (= (derivationStepZipper!2441 lt!2415147 (h!72048 s!2326)) (flatMap!1980 lt!2415147 lambda!368661))))

(declare-fun bs!1693488 () Bool)

(assert (= bs!1693488 d!2071785))

(declare-fun m!7382264 () Bool)

(assert (=> bs!1693488 m!7382264))

(assert (=> b!6606496 d!2071785))

(declare-fun d!2071787 () Bool)

(assert (=> d!2071787 (= (flatMap!1980 lt!2415147 lambda!368578) (choose!49350 lt!2415147 lambda!368578))))

(declare-fun bs!1693489 () Bool)

(assert (= bs!1693489 d!2071787))

(declare-fun m!7382266 () Bool)

(assert (=> bs!1693489 m!7382266))

(assert (=> b!6606496 d!2071787))

(declare-fun b!6607216 () Bool)

(declare-fun e!3997622 () Bool)

(assert (=> b!6607216 (= e!3997622 (nullable!6468 (h!72049 (exprs!6359 lt!2415117))))))

(declare-fun b!6607217 () Bool)

(declare-fun call!578033 () (InoxSet Context!11718))

(declare-fun e!3997620 () (InoxSet Context!11718))

(assert (=> b!6607217 (= e!3997620 ((_ map or) call!578033 (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 lt!2415117))) (h!72048 s!2326))))))

(declare-fun bm!578028 () Bool)

(assert (=> bm!578028 (= call!578033 (derivationStepZipperDown!1723 (h!72049 (exprs!6359 lt!2415117)) (Context!11719 (t!379377 (exprs!6359 lt!2415117))) (h!72048 s!2326)))))

(declare-fun b!6607218 () Bool)

(declare-fun e!3997621 () (InoxSet Context!11718))

(assert (=> b!6607218 (= e!3997621 ((as const (Array Context!11718 Bool)) false))))

(declare-fun b!6607219 () Bool)

(assert (=> b!6607219 (= e!3997620 e!3997621)))

(declare-fun c!1217532 () Bool)

(assert (=> b!6607219 (= c!1217532 ((_ is Cons!65601) (exprs!6359 lt!2415117)))))

(declare-fun b!6607215 () Bool)

(assert (=> b!6607215 (= e!3997621 call!578033)))

(declare-fun d!2071789 () Bool)

(declare-fun c!1217531 () Bool)

(assert (=> d!2071789 (= c!1217531 e!3997622)))

(declare-fun res!2709303 () Bool)

(assert (=> d!2071789 (=> (not res!2709303) (not e!3997622))))

(assert (=> d!2071789 (= res!2709303 ((_ is Cons!65601) (exprs!6359 lt!2415117)))))

(assert (=> d!2071789 (= (derivationStepZipperUp!1649 lt!2415117 (h!72048 s!2326)) e!3997620)))

(assert (= (and d!2071789 res!2709303) b!6607216))

(assert (= (and d!2071789 c!1217531) b!6607217))

(assert (= (and d!2071789 (not c!1217531)) b!6607219))

(assert (= (and b!6607219 c!1217532) b!6607215))

(assert (= (and b!6607219 (not c!1217532)) b!6607218))

(assert (= (or b!6607217 b!6607215) bm!578028))

(declare-fun m!7382268 () Bool)

(assert (=> b!6607216 m!7382268))

(declare-fun m!7382270 () Bool)

(assert (=> b!6607217 m!7382270))

(declare-fun m!7382272 () Bool)

(assert (=> bm!578028 m!7382272))

(assert (=> b!6606496 d!2071789))

(declare-fun d!2071791 () Bool)

(assert (=> d!2071791 (= (flatMap!1980 lt!2415147 lambda!368578) (dynLambda!26122 lambda!368578 lt!2415117))))

(declare-fun lt!2415266 () Unit!159235)

(assert (=> d!2071791 (= lt!2415266 (choose!49351 lt!2415147 lt!2415117 lambda!368578))))

(assert (=> d!2071791 (= lt!2415147 (store ((as const (Array Context!11718 Bool)) false) lt!2415117 true))))

(assert (=> d!2071791 (= (lemmaFlatMapOnSingletonSet!1506 lt!2415147 lt!2415117 lambda!368578) lt!2415266)))

(declare-fun b_lambda!249999 () Bool)

(assert (=> (not b_lambda!249999) (not d!2071791)))

(declare-fun bs!1693490 () Bool)

(assert (= bs!1693490 d!2071791))

(assert (=> bs!1693490 m!7381714))

(declare-fun m!7382274 () Bool)

(assert (=> bs!1693490 m!7382274))

(declare-fun m!7382276 () Bool)

(assert (=> bs!1693490 m!7382276))

(assert (=> bs!1693490 m!7381712))

(assert (=> b!6606496 d!2071791))

(declare-fun c!1217544 () Bool)

(declare-fun c!1217546 () Bool)

(declare-fun call!578049 () List!65725)

(declare-fun call!578050 () (InoxSet Context!11718))

(declare-fun bm!578041 () Bool)

(declare-fun c!1217545 () Bool)

(assert (=> bm!578041 (= call!578050 (derivationStepZipperDown!1723 (ite c!1217545 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (ite c!1217546 (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (ite c!1217544 (regOne!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (reg!16804 (regOne!33462 r!7292)))))) (ite (or c!1217545 c!1217546) lt!2415123 (Context!11719 call!578049)) (h!72048 s!2326)))))

(declare-fun b!6607242 () Bool)

(declare-fun e!3997639 () (InoxSet Context!11718))

(declare-fun call!578048 () (InoxSet Context!11718))

(assert (=> b!6607242 (= e!3997639 call!578048)))

(declare-fun b!6607243 () Bool)

(declare-fun e!3997640 () (InoxSet Context!11718))

(declare-fun e!3997638 () (InoxSet Context!11718))

(assert (=> b!6607243 (= e!3997640 e!3997638)))

(assert (=> b!6607243 (= c!1217545 ((_ is Union!16475) (reg!16804 (regOne!33462 r!7292))))))

(declare-fun d!2071793 () Bool)

(declare-fun c!1217543 () Bool)

(assert (=> d!2071793 (= c!1217543 (and ((_ is ElementMatch!16475) (reg!16804 (regOne!33462 r!7292))) (= (c!1217326 (reg!16804 (regOne!33462 r!7292))) (h!72048 s!2326))))))

(assert (=> d!2071793 (= (derivationStepZipperDown!1723 (reg!16804 (regOne!33462 r!7292)) lt!2415123 (h!72048 s!2326)) e!3997640)))

(declare-fun b!6607244 () Bool)

(declare-fun e!3997635 () (InoxSet Context!11718))

(declare-fun e!3997636 () (InoxSet Context!11718))

(assert (=> b!6607244 (= e!3997635 e!3997636)))

(assert (=> b!6607244 (= c!1217544 ((_ is Concat!25320) (reg!16804 (regOne!33462 r!7292))))))

(declare-fun b!6607245 () Bool)

(assert (=> b!6607245 (= e!3997640 (store ((as const (Array Context!11718 Bool)) false) lt!2415123 true))))

(declare-fun b!6607246 () Bool)

(declare-fun e!3997637 () Bool)

(assert (=> b!6607246 (= c!1217546 e!3997637)))

(declare-fun res!2709306 () Bool)

(assert (=> b!6607246 (=> (not res!2709306) (not e!3997637))))

(assert (=> b!6607246 (= res!2709306 ((_ is Concat!25320) (reg!16804 (regOne!33462 r!7292))))))

(assert (=> b!6607246 (= e!3997638 e!3997635)))

(declare-fun bm!578042 () Bool)

(declare-fun call!578046 () (InoxSet Context!11718))

(assert (=> bm!578042 (= call!578046 call!578050)))

(declare-fun b!6607247 () Bool)

(declare-fun c!1217547 () Bool)

(assert (=> b!6607247 (= c!1217547 ((_ is Star!16475) (reg!16804 (regOne!33462 r!7292))))))

(assert (=> b!6607247 (= e!3997636 e!3997639)))

(declare-fun bm!578043 () Bool)

(assert (=> bm!578043 (= call!578048 call!578046)))

(declare-fun call!578051 () List!65725)

(declare-fun bm!578044 () Bool)

(declare-fun $colon$colon!2316 (List!65725 Regex!16475) List!65725)

(assert (=> bm!578044 (= call!578051 ($colon$colon!2316 (exprs!6359 lt!2415123) (ite (or c!1217546 c!1217544) (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (regOne!33462 r!7292)))))))

(declare-fun b!6607248 () Bool)

(assert (=> b!6607248 (= e!3997639 ((as const (Array Context!11718 Bool)) false))))

(declare-fun bm!578045 () Bool)

(declare-fun call!578047 () (InoxSet Context!11718))

(assert (=> bm!578045 (= call!578047 (derivationStepZipperDown!1723 (ite c!1217545 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292)))) (ite c!1217545 lt!2415123 (Context!11719 call!578051)) (h!72048 s!2326)))))

(declare-fun b!6607249 () Bool)

(assert (=> b!6607249 (= e!3997638 ((_ map or) call!578050 call!578047))))

(declare-fun b!6607250 () Bool)

(assert (=> b!6607250 (= e!3997635 ((_ map or) call!578047 call!578046))))

(declare-fun bm!578046 () Bool)

(assert (=> bm!578046 (= call!578049 call!578051)))

(declare-fun b!6607251 () Bool)

(assert (=> b!6607251 (= e!3997637 (nullable!6468 (regOne!33462 (reg!16804 (regOne!33462 r!7292)))))))

(declare-fun b!6607252 () Bool)

(assert (=> b!6607252 (= e!3997636 call!578048)))

(assert (= (and d!2071793 c!1217543) b!6607245))

(assert (= (and d!2071793 (not c!1217543)) b!6607243))

(assert (= (and b!6607243 c!1217545) b!6607249))

(assert (= (and b!6607243 (not c!1217545)) b!6607246))

(assert (= (and b!6607246 res!2709306) b!6607251))

(assert (= (and b!6607246 c!1217546) b!6607250))

(assert (= (and b!6607246 (not c!1217546)) b!6607244))

(assert (= (and b!6607244 c!1217544) b!6607252))

(assert (= (and b!6607244 (not c!1217544)) b!6607247))

(assert (= (and b!6607247 c!1217547) b!6607242))

(assert (= (and b!6607247 (not c!1217547)) b!6607248))

(assert (= (or b!6607252 b!6607242) bm!578046))

(assert (= (or b!6607252 b!6607242) bm!578043))

(assert (= (or b!6607250 bm!578046) bm!578044))

(assert (= (or b!6607250 bm!578043) bm!578042))

(assert (= (or b!6607249 b!6607250) bm!578045))

(assert (= (or b!6607249 bm!578042) bm!578041))

(declare-fun m!7382278 () Bool)

(assert (=> bm!578041 m!7382278))

(declare-fun m!7382280 () Bool)

(assert (=> b!6607251 m!7382280))

(declare-fun m!7382282 () Bool)

(assert (=> bm!578045 m!7382282))

(assert (=> b!6607245 m!7381698))

(declare-fun m!7382284 () Bool)

(assert (=> bm!578044 m!7382284))

(assert (=> b!6606498 d!2071793))

(declare-fun d!2071795 () Bool)

(declare-fun nullableFct!2393 (Regex!16475) Bool)

(assert (=> d!2071795 (= (nullable!6468 (regOne!33462 (regOne!33462 r!7292))) (nullableFct!2393 (regOne!33462 (regOne!33462 r!7292))))))

(declare-fun bs!1693491 () Bool)

(assert (= bs!1693491 d!2071795))

(declare-fun m!7382286 () Bool)

(assert (=> bs!1693491 m!7382286))

(assert (=> b!6606519 d!2071795))

(declare-fun d!2071797 () Bool)

(declare-fun c!1217550 () Bool)

(declare-fun isEmpty!37882 (List!65724) Bool)

(assert (=> d!2071797 (= c!1217550 (isEmpty!37882 (t!379376 s!2326)))))

(declare-fun e!3997643 () Bool)

(assert (=> d!2071797 (= (matchZipper!2487 lt!2415129 (t!379376 s!2326)) e!3997643)))

(declare-fun b!6607257 () Bool)

(declare-fun nullableZipper!2220 ((InoxSet Context!11718)) Bool)

(assert (=> b!6607257 (= e!3997643 (nullableZipper!2220 lt!2415129))))

(declare-fun b!6607258 () Bool)

(declare-fun head!13402 (List!65724) C!33220)

(declare-fun tail!12487 (List!65724) List!65724)

(assert (=> b!6607258 (= e!3997643 (matchZipper!2487 (derivationStepZipper!2441 lt!2415129 (head!13402 (t!379376 s!2326))) (tail!12487 (t!379376 s!2326))))))

(assert (= (and d!2071797 c!1217550) b!6607257))

(assert (= (and d!2071797 (not c!1217550)) b!6607258))

(declare-fun m!7382288 () Bool)

(assert (=> d!2071797 m!7382288))

(declare-fun m!7382290 () Bool)

(assert (=> b!6607257 m!7382290))

(declare-fun m!7382292 () Bool)

(assert (=> b!6607258 m!7382292))

(assert (=> b!6607258 m!7382292))

(declare-fun m!7382294 () Bool)

(assert (=> b!6607258 m!7382294))

(declare-fun m!7382296 () Bool)

(assert (=> b!6607258 m!7382296))

(assert (=> b!6607258 m!7382294))

(assert (=> b!6607258 m!7382296))

(declare-fun m!7382298 () Bool)

(assert (=> b!6607258 m!7382298))

(assert (=> b!6606521 d!2071797))

(declare-fun b!6607265 () Bool)

(assert (=> b!6607265 true))

(declare-fun bs!1693492 () Bool)

(declare-fun b!6607267 () Bool)

(assert (= bs!1693492 (and b!6607267 b!6607265)))

(declare-fun lt!2415276 () Int)

(declare-fun lt!2415278 () Int)

(declare-fun lambda!368669 () Int)

(declare-fun lambda!368670 () Int)

(assert (=> bs!1693492 (= (= lt!2415278 lt!2415276) (= lambda!368670 lambda!368669))))

(assert (=> b!6607267 true))

(declare-fun d!2071799 () Bool)

(declare-fun e!3997648 () Bool)

(assert (=> d!2071799 e!3997648))

(declare-fun res!2709309 () Bool)

(assert (=> d!2071799 (=> (not res!2709309) (not e!3997648))))

(assert (=> d!2071799 (= res!2709309 (>= lt!2415278 0))))

(declare-fun e!3997649 () Int)

(assert (=> d!2071799 (= lt!2415278 e!3997649)))

(declare-fun c!1217559 () Bool)

(assert (=> d!2071799 (= c!1217559 ((_ is Cons!65602) zl!343))))

(assert (=> d!2071799 (= (zipperDepth!412 zl!343) lt!2415278)))

(assert (=> b!6607265 (= e!3997649 lt!2415276)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!300 (Context!11718) Int)

(assert (=> b!6607265 (= lt!2415276 (maxBigInt!0 (contextDepth!300 (h!72050 zl!343)) (zipperDepth!412 (t!379378 zl!343))))))

(declare-fun lt!2415275 () Unit!159235)

(declare-fun lambda!368668 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!284 (List!65726 Int Int Int) Unit!159235)

(assert (=> b!6607265 (= lt!2415275 (lemmaForallContextDepthBiggerThanTransitive!284 (t!379378 zl!343) lt!2415276 (zipperDepth!412 (t!379378 zl!343)) lambda!368668))))

(declare-fun forall!15674 (List!65726 Int) Bool)

(assert (=> b!6607265 (forall!15674 (t!379378 zl!343) lambda!368669)))

(declare-fun lt!2415277 () Unit!159235)

(assert (=> b!6607265 (= lt!2415277 lt!2415275)))

(declare-fun b!6607266 () Bool)

(assert (=> b!6607266 (= e!3997649 0)))

(assert (=> b!6607267 (= e!3997648 (forall!15674 zl!343 lambda!368670))))

(assert (= (and d!2071799 c!1217559) b!6607265))

(assert (= (and d!2071799 (not c!1217559)) b!6607266))

(assert (= (and d!2071799 res!2709309) b!6607267))

(declare-fun m!7382300 () Bool)

(assert (=> b!6607265 m!7382300))

(declare-fun m!7382302 () Bool)

(assert (=> b!6607265 m!7382302))

(assert (=> b!6607265 m!7382300))

(declare-fun m!7382304 () Bool)

(assert (=> b!6607265 m!7382304))

(declare-fun m!7382306 () Bool)

(assert (=> b!6607265 m!7382306))

(assert (=> b!6607265 m!7382300))

(declare-fun m!7382308 () Bool)

(assert (=> b!6607265 m!7382308))

(assert (=> b!6607265 m!7382306))

(declare-fun m!7382310 () Bool)

(assert (=> b!6607267 m!7382310))

(assert (=> b!6606522 d!2071799))

(declare-fun bs!1693493 () Bool)

(declare-fun b!6607270 () Bool)

(assert (= bs!1693493 (and b!6607270 b!6607265)))

(declare-fun lambda!368671 () Int)

(assert (=> bs!1693493 (= lambda!368671 lambda!368668)))

(declare-fun lambda!368672 () Int)

(declare-fun lt!2415280 () Int)

(assert (=> bs!1693493 (= (= lt!2415280 lt!2415276) (= lambda!368672 lambda!368669))))

(declare-fun bs!1693494 () Bool)

(assert (= bs!1693494 (and b!6607270 b!6607267)))

(assert (=> bs!1693494 (= (= lt!2415280 lt!2415278) (= lambda!368672 lambda!368670))))

(assert (=> b!6607270 true))

(declare-fun bs!1693495 () Bool)

(declare-fun b!6607272 () Bool)

(assert (= bs!1693495 (and b!6607272 b!6607265)))

(declare-fun lambda!368673 () Int)

(declare-fun lt!2415282 () Int)

(assert (=> bs!1693495 (= (= lt!2415282 lt!2415276) (= lambda!368673 lambda!368669))))

(declare-fun bs!1693496 () Bool)

(assert (= bs!1693496 (and b!6607272 b!6607267)))

(assert (=> bs!1693496 (= (= lt!2415282 lt!2415278) (= lambda!368673 lambda!368670))))

(declare-fun bs!1693497 () Bool)

(assert (= bs!1693497 (and b!6607272 b!6607270)))

(assert (=> bs!1693497 (= (= lt!2415282 lt!2415280) (= lambda!368673 lambda!368672))))

(assert (=> b!6607272 true))

(declare-fun d!2071801 () Bool)

(declare-fun e!3997650 () Bool)

(assert (=> d!2071801 e!3997650))

(declare-fun res!2709310 () Bool)

(assert (=> d!2071801 (=> (not res!2709310) (not e!3997650))))

(assert (=> d!2071801 (= res!2709310 (>= lt!2415282 0))))

(declare-fun e!3997651 () Int)

(assert (=> d!2071801 (= lt!2415282 e!3997651)))

(declare-fun c!1217560 () Bool)

(assert (=> d!2071801 (= c!1217560 ((_ is Cons!65602) lt!2415114))))

(assert (=> d!2071801 (= (zipperDepth!412 lt!2415114) lt!2415282)))

(assert (=> b!6607270 (= e!3997651 lt!2415280)))

(assert (=> b!6607270 (= lt!2415280 (maxBigInt!0 (contextDepth!300 (h!72050 lt!2415114)) (zipperDepth!412 (t!379378 lt!2415114))))))

(declare-fun lt!2415279 () Unit!159235)

(assert (=> b!6607270 (= lt!2415279 (lemmaForallContextDepthBiggerThanTransitive!284 (t!379378 lt!2415114) lt!2415280 (zipperDepth!412 (t!379378 lt!2415114)) lambda!368671))))

(assert (=> b!6607270 (forall!15674 (t!379378 lt!2415114) lambda!368672)))

(declare-fun lt!2415281 () Unit!159235)

(assert (=> b!6607270 (= lt!2415281 lt!2415279)))

(declare-fun b!6607271 () Bool)

(assert (=> b!6607271 (= e!3997651 0)))

(assert (=> b!6607272 (= e!3997650 (forall!15674 lt!2415114 lambda!368673))))

(assert (= (and d!2071801 c!1217560) b!6607270))

(assert (= (and d!2071801 (not c!1217560)) b!6607271))

(assert (= (and d!2071801 res!2709310) b!6607272))

(declare-fun m!7382312 () Bool)

(assert (=> b!6607270 m!7382312))

(declare-fun m!7382314 () Bool)

(assert (=> b!6607270 m!7382314))

(assert (=> b!6607270 m!7382312))

(declare-fun m!7382316 () Bool)

(assert (=> b!6607270 m!7382316))

(declare-fun m!7382318 () Bool)

(assert (=> b!6607270 m!7382318))

(assert (=> b!6607270 m!7382312))

(declare-fun m!7382320 () Bool)

(assert (=> b!6607270 m!7382320))

(assert (=> b!6607270 m!7382318))

(declare-fun m!7382322 () Bool)

(assert (=> b!6607272 m!7382322))

(assert (=> b!6606522 d!2071801))

(declare-fun d!2071803 () Bool)

(assert (=> d!2071803 (= (flatMap!1980 lt!2415122 lambda!368578) (dynLambda!26122 lambda!368578 lt!2415123))))

(declare-fun lt!2415283 () Unit!159235)

(assert (=> d!2071803 (= lt!2415283 (choose!49351 lt!2415122 lt!2415123 lambda!368578))))

(assert (=> d!2071803 (= lt!2415122 (store ((as const (Array Context!11718 Bool)) false) lt!2415123 true))))

(assert (=> d!2071803 (= (lemmaFlatMapOnSingletonSet!1506 lt!2415122 lt!2415123 lambda!368578) lt!2415283)))

(declare-fun b_lambda!250001 () Bool)

(assert (=> (not b_lambda!250001) (not d!2071803)))

(declare-fun bs!1693498 () Bool)

(assert (= bs!1693498 d!2071803))

(assert (=> bs!1693498 m!7381692))

(declare-fun m!7382324 () Bool)

(assert (=> bs!1693498 m!7382324))

(declare-fun m!7382326 () Bool)

(assert (=> bs!1693498 m!7382326))

(assert (=> bs!1693498 m!7381698))

(assert (=> b!6606502 d!2071803))

(declare-fun b!6607274 () Bool)

(declare-fun e!3997654 () Bool)

(assert (=> b!6607274 (= e!3997654 (nullable!6468 (h!72049 (exprs!6359 lt!2415118))))))

(declare-fun call!578052 () (InoxSet Context!11718))

(declare-fun e!3997652 () (InoxSet Context!11718))

(declare-fun b!6607275 () Bool)

(assert (=> b!6607275 (= e!3997652 ((_ map or) call!578052 (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 lt!2415118))) (h!72048 s!2326))))))

(declare-fun bm!578047 () Bool)

(assert (=> bm!578047 (= call!578052 (derivationStepZipperDown!1723 (h!72049 (exprs!6359 lt!2415118)) (Context!11719 (t!379377 (exprs!6359 lt!2415118))) (h!72048 s!2326)))))

(declare-fun b!6607276 () Bool)

(declare-fun e!3997653 () (InoxSet Context!11718))

(assert (=> b!6607276 (= e!3997653 ((as const (Array Context!11718 Bool)) false))))

(declare-fun b!6607277 () Bool)

(assert (=> b!6607277 (= e!3997652 e!3997653)))

(declare-fun c!1217562 () Bool)

(assert (=> b!6607277 (= c!1217562 ((_ is Cons!65601) (exprs!6359 lt!2415118)))))

(declare-fun b!6607273 () Bool)

(assert (=> b!6607273 (= e!3997653 call!578052)))

(declare-fun d!2071805 () Bool)

(declare-fun c!1217561 () Bool)

(assert (=> d!2071805 (= c!1217561 e!3997654)))

(declare-fun res!2709311 () Bool)

(assert (=> d!2071805 (=> (not res!2709311) (not e!3997654))))

(assert (=> d!2071805 (= res!2709311 ((_ is Cons!65601) (exprs!6359 lt!2415118)))))

(assert (=> d!2071805 (= (derivationStepZipperUp!1649 lt!2415118 (h!72048 s!2326)) e!3997652)))

(assert (= (and d!2071805 res!2709311) b!6607274))

(assert (= (and d!2071805 c!1217561) b!6607275))

(assert (= (and d!2071805 (not c!1217561)) b!6607277))

(assert (= (and b!6607277 c!1217562) b!6607273))

(assert (= (and b!6607277 (not c!1217562)) b!6607276))

(assert (= (or b!6607275 b!6607273) bm!578047))

(declare-fun m!7382328 () Bool)

(assert (=> b!6607274 m!7382328))

(declare-fun m!7382330 () Bool)

(assert (=> b!6607275 m!7382330))

(declare-fun m!7382332 () Bool)

(assert (=> bm!578047 m!7382332))

(assert (=> b!6606502 d!2071805))

(declare-fun d!2071807 () Bool)

(assert (=> d!2071807 (= (flatMap!1980 lt!2415122 lambda!368578) (choose!49350 lt!2415122 lambda!368578))))

(declare-fun bs!1693499 () Bool)

(assert (= bs!1693499 d!2071807))

(declare-fun m!7382334 () Bool)

(assert (=> bs!1693499 m!7382334))

(assert (=> b!6606502 d!2071807))

(declare-fun d!2071809 () Bool)

(assert (=> d!2071809 (= (flatMap!1980 lt!2415127 lambda!368578) (dynLambda!26122 lambda!368578 lt!2415118))))

(declare-fun lt!2415284 () Unit!159235)

(assert (=> d!2071809 (= lt!2415284 (choose!49351 lt!2415127 lt!2415118 lambda!368578))))

(assert (=> d!2071809 (= lt!2415127 (store ((as const (Array Context!11718 Bool)) false) lt!2415118 true))))

(assert (=> d!2071809 (= (lemmaFlatMapOnSingletonSet!1506 lt!2415127 lt!2415118 lambda!368578) lt!2415284)))

(declare-fun b_lambda!250003 () Bool)

(assert (=> (not b_lambda!250003) (not d!2071809)))

(declare-fun bs!1693500 () Bool)

(assert (= bs!1693500 d!2071809))

(assert (=> bs!1693500 m!7381682))

(declare-fun m!7382336 () Bool)

(assert (=> bs!1693500 m!7382336))

(declare-fun m!7382338 () Bool)

(assert (=> bs!1693500 m!7382338))

(assert (=> bs!1693500 m!7381684))

(assert (=> b!6606502 d!2071809))

(declare-fun d!2071811 () Bool)

(declare-fun lt!2415287 () Regex!16475)

(assert (=> d!2071811 (validRegex!8211 lt!2415287)))

(assert (=> d!2071811 (= lt!2415287 (generalisedUnion!2319 (unfocusZipperList!1896 (Cons!65602 lt!2415118 Nil!65602))))))

(assert (=> d!2071811 (= (unfocusZipper!2217 (Cons!65602 lt!2415118 Nil!65602)) lt!2415287)))

(declare-fun bs!1693501 () Bool)

(assert (= bs!1693501 d!2071811))

(declare-fun m!7382340 () Bool)

(assert (=> bs!1693501 m!7382340))

(declare-fun m!7382342 () Bool)

(assert (=> bs!1693501 m!7382342))

(assert (=> bs!1693501 m!7382342))

(declare-fun m!7382344 () Bool)

(assert (=> bs!1693501 m!7382344))

(assert (=> b!6606502 d!2071811))

(declare-fun b!6607279 () Bool)

(declare-fun e!3997657 () Bool)

(assert (=> b!6607279 (= e!3997657 (nullable!6468 (h!72049 (exprs!6359 lt!2415123))))))

(declare-fun call!578053 () (InoxSet Context!11718))

(declare-fun e!3997655 () (InoxSet Context!11718))

(declare-fun b!6607280 () Bool)

(assert (=> b!6607280 (= e!3997655 ((_ map or) call!578053 (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 lt!2415123))) (h!72048 s!2326))))))

(declare-fun bm!578048 () Bool)

(assert (=> bm!578048 (= call!578053 (derivationStepZipperDown!1723 (h!72049 (exprs!6359 lt!2415123)) (Context!11719 (t!379377 (exprs!6359 lt!2415123))) (h!72048 s!2326)))))

(declare-fun b!6607281 () Bool)

(declare-fun e!3997656 () (InoxSet Context!11718))

(assert (=> b!6607281 (= e!3997656 ((as const (Array Context!11718 Bool)) false))))

(declare-fun b!6607282 () Bool)

(assert (=> b!6607282 (= e!3997655 e!3997656)))

(declare-fun c!1217564 () Bool)

(assert (=> b!6607282 (= c!1217564 ((_ is Cons!65601) (exprs!6359 lt!2415123)))))

(declare-fun b!6607278 () Bool)

(assert (=> b!6607278 (= e!3997656 call!578053)))

(declare-fun d!2071813 () Bool)

(declare-fun c!1217563 () Bool)

(assert (=> d!2071813 (= c!1217563 e!3997657)))

(declare-fun res!2709312 () Bool)

(assert (=> d!2071813 (=> (not res!2709312) (not e!3997657))))

(assert (=> d!2071813 (= res!2709312 ((_ is Cons!65601) (exprs!6359 lt!2415123)))))

(assert (=> d!2071813 (= (derivationStepZipperUp!1649 lt!2415123 (h!72048 s!2326)) e!3997655)))

(assert (= (and d!2071813 res!2709312) b!6607279))

(assert (= (and d!2071813 c!1217563) b!6607280))

(assert (= (and d!2071813 (not c!1217563)) b!6607282))

(assert (= (and b!6607282 c!1217564) b!6607278))

(assert (= (and b!6607282 (not c!1217564)) b!6607281))

(assert (= (or b!6607280 b!6607278) bm!578048))

(declare-fun m!7382346 () Bool)

(assert (=> b!6607279 m!7382346))

(declare-fun m!7382348 () Bool)

(assert (=> b!6607280 m!7382348))

(declare-fun m!7382350 () Bool)

(assert (=> bm!578048 m!7382350))

(assert (=> b!6606502 d!2071813))

(declare-fun d!2071815 () Bool)

(assert (=> d!2071815 (= (flatMap!1980 lt!2415127 lambda!368578) (choose!49350 lt!2415127 lambda!368578))))

(declare-fun bs!1693502 () Bool)

(assert (= bs!1693502 d!2071815))

(declare-fun m!7382352 () Bool)

(assert (=> bs!1693502 m!7382352))

(assert (=> b!6606502 d!2071815))

(declare-fun d!2071817 () Bool)

(declare-fun c!1217565 () Bool)

(assert (=> d!2071817 (= c!1217565 (isEmpty!37882 (t!379376 s!2326)))))

(declare-fun e!3997658 () Bool)

(assert (=> d!2071817 (= (matchZipper!2487 lt!2415132 (t!379376 s!2326)) e!3997658)))

(declare-fun b!6607283 () Bool)

(assert (=> b!6607283 (= e!3997658 (nullableZipper!2220 lt!2415132))))

(declare-fun b!6607284 () Bool)

(assert (=> b!6607284 (= e!3997658 (matchZipper!2487 (derivationStepZipper!2441 lt!2415132 (head!13402 (t!379376 s!2326))) (tail!12487 (t!379376 s!2326))))))

(assert (= (and d!2071817 c!1217565) b!6607283))

(assert (= (and d!2071817 (not c!1217565)) b!6607284))

(assert (=> d!2071817 m!7382288))

(declare-fun m!7382354 () Bool)

(assert (=> b!6607283 m!7382354))

(assert (=> b!6607284 m!7382292))

(assert (=> b!6607284 m!7382292))

(declare-fun m!7382356 () Bool)

(assert (=> b!6607284 m!7382356))

(assert (=> b!6607284 m!7382296))

(assert (=> b!6607284 m!7382356))

(assert (=> b!6607284 m!7382296))

(declare-fun m!7382358 () Bool)

(assert (=> b!6607284 m!7382358))

(assert (=> b!6606501 d!2071817))

(declare-fun b!6607285 () Bool)

(declare-fun e!3997659 () Option!16366)

(assert (=> b!6607285 (= e!3997659 None!16365)))

(declare-fun b!6607286 () Bool)

(declare-fun res!2709317 () Bool)

(declare-fun e!3997661 () Bool)

(assert (=> b!6607286 (=> (not res!2709317) (not e!3997661))))

(declare-fun lt!2415288 () Option!16366)

(assert (=> b!6607286 (= res!2709317 (matchR!8658 lt!2415134 (_2!36757 (get!22794 lt!2415288))))))

(declare-fun b!6607287 () Bool)

(declare-fun e!3997662 () Bool)

(assert (=> b!6607287 (= e!3997662 (not (isDefined!13069 lt!2415288)))))

(declare-fun b!6607288 () Bool)

(assert (=> b!6607288 (= e!3997661 (= (++!14621 (_1!36757 (get!22794 lt!2415288)) (_2!36757 (get!22794 lt!2415288))) Nil!65600))))

(declare-fun b!6607289 () Bool)

(declare-fun e!3997663 () Bool)

(assert (=> b!6607289 (= e!3997663 (matchR!8658 lt!2415134 Nil!65600))))

(declare-fun b!6607290 () Bool)

(declare-fun e!3997660 () Option!16366)

(assert (=> b!6607290 (= e!3997660 (Some!16365 (tuple2!66909 Nil!65600 Nil!65600)))))

(declare-fun b!6607291 () Bool)

(declare-fun res!2709314 () Bool)

(assert (=> b!6607291 (=> (not res!2709314) (not e!3997661))))

(assert (=> b!6607291 (= res!2709314 (matchR!8658 (reg!16804 (regOne!33462 r!7292)) (_1!36757 (get!22794 lt!2415288))))))

(declare-fun d!2071819 () Bool)

(assert (=> d!2071819 e!3997662))

(declare-fun res!2709315 () Bool)

(assert (=> d!2071819 (=> res!2709315 e!3997662)))

(assert (=> d!2071819 (= res!2709315 e!3997661)))

(declare-fun res!2709313 () Bool)

(assert (=> d!2071819 (=> (not res!2709313) (not e!3997661))))

(assert (=> d!2071819 (= res!2709313 (isDefined!13069 lt!2415288))))

(assert (=> d!2071819 (= lt!2415288 e!3997660)))

(declare-fun c!1217566 () Bool)

(assert (=> d!2071819 (= c!1217566 e!3997663)))

(declare-fun res!2709316 () Bool)

(assert (=> d!2071819 (=> (not res!2709316) (not e!3997663))))

(assert (=> d!2071819 (= res!2709316 (matchR!8658 (reg!16804 (regOne!33462 r!7292)) Nil!65600))))

(assert (=> d!2071819 (validRegex!8211 (reg!16804 (regOne!33462 r!7292)))))

(assert (=> d!2071819 (= (findConcatSeparation!2780 (reg!16804 (regOne!33462 r!7292)) lt!2415134 Nil!65600 Nil!65600 Nil!65600) lt!2415288)))

(declare-fun b!6607292 () Bool)

(assert (=> b!6607292 (= e!3997660 e!3997659)))

(declare-fun c!1217567 () Bool)

(assert (=> b!6607292 (= c!1217567 ((_ is Nil!65600) Nil!65600))))

(declare-fun b!6607293 () Bool)

(declare-fun lt!2415290 () Unit!159235)

(declare-fun lt!2415289 () Unit!159235)

(assert (=> b!6607293 (= lt!2415290 lt!2415289)))

(assert (=> b!6607293 (= (++!14621 (++!14621 Nil!65600 (Cons!65600 (h!72048 Nil!65600) Nil!65600)) (t!379376 Nil!65600)) Nil!65600)))

(assert (=> b!6607293 (= lt!2415289 (lemmaMoveElementToOtherListKeepsConcatEq!2618 Nil!65600 (h!72048 Nil!65600) (t!379376 Nil!65600) Nil!65600))))

(assert (=> b!6607293 (= e!3997659 (findConcatSeparation!2780 (reg!16804 (regOne!33462 r!7292)) lt!2415134 (++!14621 Nil!65600 (Cons!65600 (h!72048 Nil!65600) Nil!65600)) (t!379376 Nil!65600) Nil!65600))))

(assert (= (and d!2071819 res!2709316) b!6607289))

(assert (= (and d!2071819 c!1217566) b!6607290))

(assert (= (and d!2071819 (not c!1217566)) b!6607292))

(assert (= (and b!6607292 c!1217567) b!6607285))

(assert (= (and b!6607292 (not c!1217567)) b!6607293))

(assert (= (and d!2071819 res!2709313) b!6607291))

(assert (= (and b!6607291 res!2709314) b!6607286))

(assert (= (and b!6607286 res!2709317) b!6607288))

(assert (= (and d!2071819 (not res!2709315)) b!6607287))

(declare-fun m!7382360 () Bool)

(assert (=> b!6607291 m!7382360))

(declare-fun m!7382362 () Bool)

(assert (=> b!6607291 m!7382362))

(declare-fun m!7382364 () Bool)

(assert (=> b!6607293 m!7382364))

(assert (=> b!6607293 m!7382364))

(declare-fun m!7382366 () Bool)

(assert (=> b!6607293 m!7382366))

(declare-fun m!7382368 () Bool)

(assert (=> b!6607293 m!7382368))

(assert (=> b!6607293 m!7382364))

(declare-fun m!7382370 () Bool)

(assert (=> b!6607293 m!7382370))

(assert (=> b!6607289 m!7381630))

(assert (=> b!6607288 m!7382360))

(declare-fun m!7382372 () Bool)

(assert (=> b!6607288 m!7382372))

(declare-fun m!7382374 () Bool)

(assert (=> d!2071819 m!7382374))

(declare-fun m!7382376 () Bool)

(assert (=> d!2071819 m!7382376))

(declare-fun m!7382378 () Bool)

(assert (=> d!2071819 m!7382378))

(assert (=> b!6607286 m!7382360))

(declare-fun m!7382380 () Bool)

(assert (=> b!6607286 m!7382380))

(assert (=> b!6607287 m!7382374))

(assert (=> b!6606503 d!2071819))

(declare-fun d!2071821 () Bool)

(assert (=> d!2071821 (= (isDefined!13069 (findConcatSeparation!2780 (reg!16804 (regOne!33462 r!7292)) lt!2415134 Nil!65600 Nil!65600 Nil!65600)) (not (isEmpty!37881 (findConcatSeparation!2780 (reg!16804 (regOne!33462 r!7292)) lt!2415134 Nil!65600 Nil!65600 Nil!65600))))))

(declare-fun bs!1693503 () Bool)

(assert (= bs!1693503 d!2071821))

(assert (=> bs!1693503 m!7381626))

(declare-fun m!7382382 () Bool)

(assert (=> bs!1693503 m!7382382))

(assert (=> b!6606503 d!2071821))

(declare-fun bs!1693504 () Bool)

(declare-fun d!2071823 () Bool)

(assert (= bs!1693504 (and d!2071823 d!2071761)))

(declare-fun lambda!368674 () Int)

(assert (=> bs!1693504 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368674 lambda!368653))))

(declare-fun bs!1693505 () Bool)

(assert (= bs!1693505 (and d!2071823 b!6606503)))

(assert (=> bs!1693505 (not (= lambda!368674 lambda!368580))))

(assert (=> bs!1693505 (not (= lambda!368674 lambda!368581))))

(assert (=> bs!1693505 (= lambda!368674 lambda!368579)))

(declare-fun bs!1693506 () Bool)

(assert (= bs!1693506 (and d!2071823 b!6606515)))

(assert (=> bs!1693506 (not (= lambda!368674 lambda!368577))))

(declare-fun bs!1693507 () Bool)

(assert (= bs!1693507 (and d!2071823 d!2071755)))

(assert (=> bs!1693507 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368674 lambda!368648))))

(assert (=> bs!1693504 (not (= lambda!368674 lambda!368654))))

(assert (=> bs!1693506 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368674 lambda!368576))))

(assert (=> d!2071823 true))

(assert (=> d!2071823 true))

(assert (=> d!2071823 true))

(declare-fun lambda!368675 () Int)

(assert (=> bs!1693504 (not (= lambda!368675 lambda!368653))))

(assert (=> bs!1693505 (= lambda!368675 lambda!368580)))

(assert (=> bs!1693505 (not (= lambda!368675 lambda!368581))))

(assert (=> bs!1693505 (not (= lambda!368675 lambda!368579))))

(assert (=> bs!1693507 (not (= lambda!368675 lambda!368648))))

(assert (=> bs!1693504 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368675 lambda!368654))))

(assert (=> bs!1693506 (not (= lambda!368675 lambda!368576))))

(assert (=> bs!1693506 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368675 lambda!368577))))

(declare-fun bs!1693508 () Bool)

(assert (= bs!1693508 d!2071823))

(assert (=> bs!1693508 (not (= lambda!368675 lambda!368674))))

(assert (=> d!2071823 true))

(assert (=> d!2071823 true))

(assert (=> d!2071823 true))

(assert (=> d!2071823 (= (Exists!3545 lambda!368674) (Exists!3545 lambda!368675))))

(declare-fun lt!2415291 () Unit!159235)

(assert (=> d!2071823 (= lt!2415291 (choose!49349 (reg!16804 (regOne!33462 r!7292)) lt!2415134 Nil!65600))))

(assert (=> d!2071823 (validRegex!8211 (reg!16804 (regOne!33462 r!7292)))))

(assert (=> d!2071823 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2082 (reg!16804 (regOne!33462 r!7292)) lt!2415134 Nil!65600) lt!2415291)))

(declare-fun m!7382384 () Bool)

(assert (=> bs!1693508 m!7382384))

(declare-fun m!7382386 () Bool)

(assert (=> bs!1693508 m!7382386))

(declare-fun m!7382388 () Bool)

(assert (=> bs!1693508 m!7382388))

(assert (=> bs!1693508 m!7382378))

(assert (=> b!6606503 d!2071823))

(declare-fun d!2071825 () Bool)

(declare-fun e!3997678 () Bool)

(assert (=> d!2071825 e!3997678))

(declare-fun c!1217575 () Bool)

(assert (=> d!2071825 (= c!1217575 ((_ is EmptyExpr!16475) lt!2415134))))

(declare-fun lt!2415294 () Bool)

(declare-fun e!3997684 () Bool)

(assert (=> d!2071825 (= lt!2415294 e!3997684)))

(declare-fun c!1217574 () Bool)

(assert (=> d!2071825 (= c!1217574 (isEmpty!37882 Nil!65600))))

(assert (=> d!2071825 (validRegex!8211 lt!2415134)))

(assert (=> d!2071825 (= (matchR!8658 lt!2415134 Nil!65600) lt!2415294)))

(declare-fun b!6607322 () Bool)

(declare-fun e!3997679 () Bool)

(assert (=> b!6607322 (= e!3997679 (= (head!13402 Nil!65600) (c!1217326 lt!2415134)))))

(declare-fun b!6607323 () Bool)

(declare-fun e!3997681 () Bool)

(assert (=> b!6607323 (= e!3997681 (not lt!2415294))))

(declare-fun b!6607324 () Bool)

(declare-fun res!2709340 () Bool)

(assert (=> b!6607324 (=> (not res!2709340) (not e!3997679))))

(assert (=> b!6607324 (= res!2709340 (isEmpty!37882 (tail!12487 Nil!65600)))))

(declare-fun bm!578051 () Bool)

(declare-fun call!578056 () Bool)

(assert (=> bm!578051 (= call!578056 (isEmpty!37882 Nil!65600))))

(declare-fun b!6607325 () Bool)

(declare-fun e!3997683 () Bool)

(declare-fun e!3997682 () Bool)

(assert (=> b!6607325 (= e!3997683 e!3997682)))

(declare-fun res!2709341 () Bool)

(assert (=> b!6607325 (=> res!2709341 e!3997682)))

(assert (=> b!6607325 (= res!2709341 call!578056)))

(declare-fun b!6607326 () Bool)

(declare-fun res!2709339 () Bool)

(declare-fun e!3997680 () Bool)

(assert (=> b!6607326 (=> res!2709339 e!3997680)))

(assert (=> b!6607326 (= res!2709339 (not ((_ is ElementMatch!16475) lt!2415134)))))

(assert (=> b!6607326 (= e!3997681 e!3997680)))

(declare-fun b!6607327 () Bool)

(assert (=> b!6607327 (= e!3997678 e!3997681)))

(declare-fun c!1217576 () Bool)

(assert (=> b!6607327 (= c!1217576 ((_ is EmptyLang!16475) lt!2415134))))

(declare-fun b!6607328 () Bool)

(assert (=> b!6607328 (= e!3997680 e!3997683)))

(declare-fun res!2709337 () Bool)

(assert (=> b!6607328 (=> (not res!2709337) (not e!3997683))))

(assert (=> b!6607328 (= res!2709337 (not lt!2415294))))

(declare-fun b!6607329 () Bool)

(declare-fun res!2709338 () Bool)

(assert (=> b!6607329 (=> res!2709338 e!3997680)))

(assert (=> b!6607329 (= res!2709338 e!3997679)))

(declare-fun res!2709335 () Bool)

(assert (=> b!6607329 (=> (not res!2709335) (not e!3997679))))

(assert (=> b!6607329 (= res!2709335 lt!2415294)))

(declare-fun b!6607330 () Bool)

(declare-fun derivativeStep!5159 (Regex!16475 C!33220) Regex!16475)

(assert (=> b!6607330 (= e!3997684 (matchR!8658 (derivativeStep!5159 lt!2415134 (head!13402 Nil!65600)) (tail!12487 Nil!65600)))))

(declare-fun b!6607331 () Bool)

(declare-fun res!2709336 () Bool)

(assert (=> b!6607331 (=> res!2709336 e!3997682)))

(assert (=> b!6607331 (= res!2709336 (not (isEmpty!37882 (tail!12487 Nil!65600))))))

(declare-fun b!6607332 () Bool)

(assert (=> b!6607332 (= e!3997684 (nullable!6468 lt!2415134))))

(declare-fun b!6607333 () Bool)

(declare-fun res!2709334 () Bool)

(assert (=> b!6607333 (=> (not res!2709334) (not e!3997679))))

(assert (=> b!6607333 (= res!2709334 (not call!578056))))

(declare-fun b!6607334 () Bool)

(assert (=> b!6607334 (= e!3997678 (= lt!2415294 call!578056))))

(declare-fun b!6607335 () Bool)

(assert (=> b!6607335 (= e!3997682 (not (= (head!13402 Nil!65600) (c!1217326 lt!2415134))))))

(assert (= (and d!2071825 c!1217574) b!6607332))

(assert (= (and d!2071825 (not c!1217574)) b!6607330))

(assert (= (and d!2071825 c!1217575) b!6607334))

(assert (= (and d!2071825 (not c!1217575)) b!6607327))

(assert (= (and b!6607327 c!1217576) b!6607323))

(assert (= (and b!6607327 (not c!1217576)) b!6607326))

(assert (= (and b!6607326 (not res!2709339)) b!6607329))

(assert (= (and b!6607329 res!2709335) b!6607333))

(assert (= (and b!6607333 res!2709334) b!6607324))

(assert (= (and b!6607324 res!2709340) b!6607322))

(assert (= (and b!6607329 (not res!2709338)) b!6607328))

(assert (= (and b!6607328 res!2709337) b!6607325))

(assert (= (and b!6607325 (not res!2709341)) b!6607331))

(assert (= (and b!6607331 (not res!2709336)) b!6607335))

(assert (= (or b!6607334 b!6607325 b!6607333) bm!578051))

(declare-fun m!7382390 () Bool)

(assert (=> b!6607330 m!7382390))

(assert (=> b!6607330 m!7382390))

(declare-fun m!7382392 () Bool)

(assert (=> b!6607330 m!7382392))

(declare-fun m!7382394 () Bool)

(assert (=> b!6607330 m!7382394))

(assert (=> b!6607330 m!7382392))

(assert (=> b!6607330 m!7382394))

(declare-fun m!7382396 () Bool)

(assert (=> b!6607330 m!7382396))

(declare-fun m!7382398 () Bool)

(assert (=> b!6607332 m!7382398))

(declare-fun m!7382400 () Bool)

(assert (=> bm!578051 m!7382400))

(assert (=> b!6607322 m!7382390))

(assert (=> b!6607324 m!7382394))

(assert (=> b!6607324 m!7382394))

(declare-fun m!7382402 () Bool)

(assert (=> b!6607324 m!7382402))

(assert (=> d!2071825 m!7382400))

(assert (=> d!2071825 m!7381632))

(assert (=> b!6607335 m!7382390))

(assert (=> b!6607331 m!7382394))

(assert (=> b!6607331 m!7382394))

(assert (=> b!6607331 m!7382402))

(assert (=> b!6606503 d!2071825))

(declare-fun d!2071827 () Bool)

(assert (=> d!2071827 (= (Exists!3545 lambda!368580) (choose!49347 lambda!368580))))

(declare-fun bs!1693509 () Bool)

(assert (= bs!1693509 d!2071827))

(declare-fun m!7382404 () Bool)

(assert (=> bs!1693509 m!7382404))

(assert (=> b!6606503 d!2071827))

(declare-fun b!6607354 () Bool)

(declare-fun e!3997701 () Bool)

(declare-fun call!578063 () Bool)

(assert (=> b!6607354 (= e!3997701 call!578063)))

(declare-fun d!2071829 () Bool)

(declare-fun res!2709355 () Bool)

(declare-fun e!3997703 () Bool)

(assert (=> d!2071829 (=> res!2709355 e!3997703)))

(assert (=> d!2071829 (= res!2709355 ((_ is ElementMatch!16475) lt!2415134))))

(assert (=> d!2071829 (= (validRegex!8211 lt!2415134) e!3997703)))

(declare-fun b!6607355 () Bool)

(declare-fun e!3997700 () Bool)

(declare-fun e!3997705 () Bool)

(assert (=> b!6607355 (= e!3997700 e!3997705)))

(declare-fun res!2709354 () Bool)

(assert (=> b!6607355 (=> (not res!2709354) (not e!3997705))))

(declare-fun call!578064 () Bool)

(assert (=> b!6607355 (= res!2709354 call!578064)))

(declare-fun b!6607356 () Bool)

(declare-fun e!3997702 () Bool)

(declare-fun call!578065 () Bool)

(assert (=> b!6607356 (= e!3997702 call!578065)))

(declare-fun b!6607357 () Bool)

(declare-fun e!3997704 () Bool)

(assert (=> b!6607357 (= e!3997704 e!3997701)))

(declare-fun res!2709352 () Bool)

(assert (=> b!6607357 (= res!2709352 (not (nullable!6468 (reg!16804 lt!2415134))))))

(assert (=> b!6607357 (=> (not res!2709352) (not e!3997701))))

(declare-fun bm!578058 () Bool)

(assert (=> bm!578058 (= call!578065 call!578063)))

(declare-fun b!6607358 () Bool)

(declare-fun e!3997699 () Bool)

(assert (=> b!6607358 (= e!3997704 e!3997699)))

(declare-fun c!1217582 () Bool)

(assert (=> b!6607358 (= c!1217582 ((_ is Union!16475) lt!2415134))))

(declare-fun bm!578059 () Bool)

(declare-fun c!1217581 () Bool)

(assert (=> bm!578059 (= call!578063 (validRegex!8211 (ite c!1217581 (reg!16804 lt!2415134) (ite c!1217582 (regTwo!33463 lt!2415134) (regTwo!33462 lt!2415134)))))))

(declare-fun bm!578060 () Bool)

(assert (=> bm!578060 (= call!578064 (validRegex!8211 (ite c!1217582 (regOne!33463 lt!2415134) (regOne!33462 lt!2415134))))))

(declare-fun b!6607359 () Bool)

(declare-fun res!2709356 () Bool)

(assert (=> b!6607359 (=> res!2709356 e!3997700)))

(assert (=> b!6607359 (= res!2709356 (not ((_ is Concat!25320) lt!2415134)))))

(assert (=> b!6607359 (= e!3997699 e!3997700)))

(declare-fun b!6607360 () Bool)

(assert (=> b!6607360 (= e!3997703 e!3997704)))

(assert (=> b!6607360 (= c!1217581 ((_ is Star!16475) lt!2415134))))

(declare-fun b!6607361 () Bool)

(declare-fun res!2709353 () Bool)

(assert (=> b!6607361 (=> (not res!2709353) (not e!3997702))))

(assert (=> b!6607361 (= res!2709353 call!578064)))

(assert (=> b!6607361 (= e!3997699 e!3997702)))

(declare-fun b!6607362 () Bool)

(assert (=> b!6607362 (= e!3997705 call!578065)))

(assert (= (and d!2071829 (not res!2709355)) b!6607360))

(assert (= (and b!6607360 c!1217581) b!6607357))

(assert (= (and b!6607360 (not c!1217581)) b!6607358))

(assert (= (and b!6607357 res!2709352) b!6607354))

(assert (= (and b!6607358 c!1217582) b!6607361))

(assert (= (and b!6607358 (not c!1217582)) b!6607359))

(assert (= (and b!6607361 res!2709353) b!6607356))

(assert (= (and b!6607359 (not res!2709356)) b!6607355))

(assert (= (and b!6607355 res!2709354) b!6607362))

(assert (= (or b!6607356 b!6607362) bm!578058))

(assert (= (or b!6607361 b!6607355) bm!578060))

(assert (= (or b!6607354 bm!578058) bm!578059))

(declare-fun m!7382406 () Bool)

(assert (=> b!6607357 m!7382406))

(declare-fun m!7382408 () Bool)

(assert (=> bm!578059 m!7382408))

(declare-fun m!7382410 () Bool)

(assert (=> bm!578060 m!7382410))

(assert (=> b!6606503 d!2071829))

(declare-fun bs!1693510 () Bool)

(declare-fun b!6607405 () Bool)

(assert (= bs!1693510 (and b!6607405 d!2071761)))

(declare-fun lambda!368680 () Int)

(assert (=> bs!1693510 (not (= lambda!368680 lambda!368653))))

(declare-fun bs!1693511 () Bool)

(assert (= bs!1693511 (and b!6607405 b!6606503)))

(assert (=> bs!1693511 (not (= lambda!368680 lambda!368580))))

(assert (=> bs!1693511 (= (= (reg!16804 lt!2415134) (reg!16804 (regOne!33462 r!7292))) (= lambda!368680 lambda!368581))))

(assert (=> bs!1693511 (not (= lambda!368680 lambda!368579))))

(declare-fun bs!1693512 () Bool)

(assert (= bs!1693512 (and b!6607405 d!2071755)))

(assert (=> bs!1693512 (not (= lambda!368680 lambda!368648))))

(declare-fun bs!1693513 () Bool)

(assert (= bs!1693513 (and b!6607405 d!2071823)))

(assert (=> bs!1693513 (not (= lambda!368680 lambda!368675))))

(assert (=> bs!1693510 (not (= lambda!368680 lambda!368654))))

(declare-fun bs!1693514 () Bool)

(assert (= bs!1693514 (and b!6607405 b!6606515)))

(assert (=> bs!1693514 (not (= lambda!368680 lambda!368576))))

(assert (=> bs!1693514 (not (= lambda!368680 lambda!368577))))

(assert (=> bs!1693513 (not (= lambda!368680 lambda!368674))))

(assert (=> b!6607405 true))

(assert (=> b!6607405 true))

(declare-fun bs!1693515 () Bool)

(declare-fun b!6607397 () Bool)

(assert (= bs!1693515 (and b!6607397 d!2071761)))

(declare-fun lambda!368681 () Int)

(assert (=> bs!1693515 (not (= lambda!368681 lambda!368653))))

(declare-fun bs!1693516 () Bool)

(assert (= bs!1693516 (and b!6607397 b!6606503)))

(assert (=> bs!1693516 (= (and (= (regOne!33462 lt!2415134) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 lt!2415134) lt!2415134)) (= lambda!368681 lambda!368580))))

(assert (=> bs!1693516 (not (= lambda!368681 lambda!368581))))

(assert (=> bs!1693516 (not (= lambda!368681 lambda!368579))))

(declare-fun bs!1693517 () Bool)

(assert (= bs!1693517 (and b!6607397 d!2071755)))

(assert (=> bs!1693517 (not (= lambda!368681 lambda!368648))))

(declare-fun bs!1693518 () Bool)

(assert (= bs!1693518 (and b!6607397 b!6607405)))

(assert (=> bs!1693518 (not (= lambda!368681 lambda!368680))))

(declare-fun bs!1693519 () Bool)

(assert (= bs!1693519 (and b!6607397 d!2071823)))

(assert (=> bs!1693519 (= (and (= (regOne!33462 lt!2415134) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 lt!2415134) lt!2415134)) (= lambda!368681 lambda!368675))))

(assert (=> bs!1693515 (= (and (= Nil!65600 s!2326) (= (regOne!33462 lt!2415134) (regOne!33462 r!7292)) (= (regTwo!33462 lt!2415134) (regTwo!33462 r!7292))) (= lambda!368681 lambda!368654))))

(declare-fun bs!1693520 () Bool)

(assert (= bs!1693520 (and b!6607397 b!6606515)))

(assert (=> bs!1693520 (not (= lambda!368681 lambda!368576))))

(assert (=> bs!1693520 (= (and (= Nil!65600 s!2326) (= (regOne!33462 lt!2415134) (regOne!33462 r!7292)) (= (regTwo!33462 lt!2415134) (regTwo!33462 r!7292))) (= lambda!368681 lambda!368577))))

(assert (=> bs!1693519 (not (= lambda!368681 lambda!368674))))

(assert (=> b!6607397 true))

(assert (=> b!6607397 true))

(declare-fun b!6607395 () Bool)

(declare-fun e!3997730 () Bool)

(declare-fun e!3997726 () Bool)

(assert (=> b!6607395 (= e!3997730 e!3997726)))

(declare-fun c!1217591 () Bool)

(assert (=> b!6607395 (= c!1217591 ((_ is Star!16475) lt!2415134))))

(declare-fun b!6607396 () Bool)

(declare-fun e!3997724 () Bool)

(declare-fun call!578071 () Bool)

(assert (=> b!6607396 (= e!3997724 call!578071)))

(declare-fun call!578070 () Bool)

(assert (=> b!6607397 (= e!3997726 call!578070)))

(declare-fun b!6607398 () Bool)

(declare-fun c!1217593 () Bool)

(assert (=> b!6607398 (= c!1217593 ((_ is ElementMatch!16475) lt!2415134))))

(declare-fun e!3997728 () Bool)

(declare-fun e!3997725 () Bool)

(assert (=> b!6607398 (= e!3997728 e!3997725)))

(declare-fun b!6607400 () Bool)

(declare-fun res!2709373 () Bool)

(declare-fun e!3997727 () Bool)

(assert (=> b!6607400 (=> res!2709373 e!3997727)))

(assert (=> b!6607400 (= res!2709373 call!578071)))

(assert (=> b!6607400 (= e!3997726 e!3997727)))

(declare-fun b!6607401 () Bool)

(assert (=> b!6607401 (= e!3997725 (= Nil!65600 (Cons!65600 (c!1217326 lt!2415134) Nil!65600)))))

(declare-fun bm!578065 () Bool)

(assert (=> bm!578065 (= call!578071 (isEmpty!37882 Nil!65600))))

(declare-fun b!6607402 () Bool)

(declare-fun c!1217594 () Bool)

(assert (=> b!6607402 (= c!1217594 ((_ is Union!16475) lt!2415134))))

(assert (=> b!6607402 (= e!3997725 e!3997730)))

(declare-fun b!6607403 () Bool)

(declare-fun e!3997729 () Bool)

(assert (=> b!6607403 (= e!3997729 (matchRSpec!3576 (regTwo!33463 lt!2415134) Nil!65600))))

(declare-fun bm!578066 () Bool)

(assert (=> bm!578066 (= call!578070 (Exists!3545 (ite c!1217591 lambda!368680 lambda!368681)))))

(declare-fun b!6607404 () Bool)

(assert (=> b!6607404 (= e!3997724 e!3997728)))

(declare-fun res!2709374 () Bool)

(assert (=> b!6607404 (= res!2709374 (not ((_ is EmptyLang!16475) lt!2415134)))))

(assert (=> b!6607404 (=> (not res!2709374) (not e!3997728))))

(assert (=> b!6607405 (= e!3997727 call!578070)))

(declare-fun b!6607399 () Bool)

(assert (=> b!6607399 (= e!3997730 e!3997729)))

(declare-fun res!2709375 () Bool)

(assert (=> b!6607399 (= res!2709375 (matchRSpec!3576 (regOne!33463 lt!2415134) Nil!65600))))

(assert (=> b!6607399 (=> res!2709375 e!3997729)))

(declare-fun d!2071831 () Bool)

(declare-fun c!1217592 () Bool)

(assert (=> d!2071831 (= c!1217592 ((_ is EmptyExpr!16475) lt!2415134))))

(assert (=> d!2071831 (= (matchRSpec!3576 lt!2415134 Nil!65600) e!3997724)))

(assert (= (and d!2071831 c!1217592) b!6607396))

(assert (= (and d!2071831 (not c!1217592)) b!6607404))

(assert (= (and b!6607404 res!2709374) b!6607398))

(assert (= (and b!6607398 c!1217593) b!6607401))

(assert (= (and b!6607398 (not c!1217593)) b!6607402))

(assert (= (and b!6607402 c!1217594) b!6607399))

(assert (= (and b!6607402 (not c!1217594)) b!6607395))

(assert (= (and b!6607399 (not res!2709375)) b!6607403))

(assert (= (and b!6607395 c!1217591) b!6607400))

(assert (= (and b!6607395 (not c!1217591)) b!6607397))

(assert (= (and b!6607400 (not res!2709373)) b!6607405))

(assert (= (or b!6607405 b!6607397) bm!578066))

(assert (= (or b!6607396 b!6607400) bm!578065))

(assert (=> bm!578065 m!7382400))

(declare-fun m!7382412 () Bool)

(assert (=> b!6607403 m!7382412))

(declare-fun m!7382414 () Bool)

(assert (=> bm!578066 m!7382414))

(declare-fun m!7382416 () Bool)

(assert (=> b!6607399 m!7382416))

(assert (=> b!6606503 d!2071831))

(declare-fun bs!1693521 () Bool)

(declare-fun d!2071833 () Bool)

(assert (= bs!1693521 (and d!2071833 d!2071761)))

(declare-fun lambda!368686 () Int)

(assert (=> bs!1693521 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) (regTwo!33462 r!7292))) (= lambda!368686 lambda!368653))))

(declare-fun bs!1693522 () Bool)

(assert (= bs!1693522 (and d!2071833 b!6606503)))

(assert (=> bs!1693522 (not (= lambda!368686 lambda!368580))))

(assert (=> bs!1693522 (not (= lambda!368686 lambda!368581))))

(assert (=> bs!1693522 (= (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) lt!2415134) (= lambda!368686 lambda!368579))))

(declare-fun bs!1693523 () Bool)

(assert (= bs!1693523 (and d!2071833 d!2071755)))

(assert (=> bs!1693523 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) (regTwo!33462 r!7292))) (= lambda!368686 lambda!368648))))

(declare-fun bs!1693524 () Bool)

(assert (= bs!1693524 (and d!2071833 b!6607405)))

(assert (=> bs!1693524 (not (= lambda!368686 lambda!368680))))

(declare-fun bs!1693525 () Bool)

(assert (= bs!1693525 (and d!2071833 d!2071823)))

(assert (=> bs!1693525 (not (= lambda!368686 lambda!368675))))

(assert (=> bs!1693521 (not (= lambda!368686 lambda!368654))))

(declare-fun bs!1693526 () Bool)

(assert (= bs!1693526 (and d!2071833 b!6607397)))

(assert (=> bs!1693526 (not (= lambda!368686 lambda!368681))))

(declare-fun bs!1693527 () Bool)

(assert (= bs!1693527 (and d!2071833 b!6606515)))

(assert (=> bs!1693527 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) (regTwo!33462 r!7292))) (= lambda!368686 lambda!368576))))

(assert (=> bs!1693527 (not (= lambda!368686 lambda!368577))))

(assert (=> bs!1693525 (= (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) lt!2415134) (= lambda!368686 lambda!368674))))

(assert (=> d!2071833 true))

(assert (=> d!2071833 true))

(declare-fun lambda!368687 () Int)

(assert (=> bs!1693521 (not (= lambda!368687 lambda!368653))))

(assert (=> bs!1693522 (not (= lambda!368687 lambda!368580))))

(assert (=> bs!1693522 (= (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) lt!2415134) (= lambda!368687 lambda!368581))))

(assert (=> bs!1693522 (not (= lambda!368687 lambda!368579))))

(assert (=> bs!1693524 (= (and (= (reg!16804 (regOne!33462 r!7292)) (reg!16804 lt!2415134)) (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) lt!2415134)) (= lambda!368687 lambda!368680))))

(assert (=> bs!1693525 (not (= lambda!368687 lambda!368675))))

(assert (=> bs!1693521 (not (= lambda!368687 lambda!368654))))

(assert (=> bs!1693526 (not (= lambda!368687 lambda!368681))))

(assert (=> bs!1693527 (not (= lambda!368687 lambda!368576))))

(assert (=> bs!1693527 (not (= lambda!368687 lambda!368577))))

(assert (=> bs!1693525 (not (= lambda!368687 lambda!368674))))

(assert (=> bs!1693523 (not (= lambda!368687 lambda!368648))))

(declare-fun bs!1693528 () Bool)

(assert (= bs!1693528 d!2071833))

(assert (=> bs!1693528 (not (= lambda!368687 lambda!368686))))

(assert (=> d!2071833 true))

(assert (=> d!2071833 true))

(assert (=> d!2071833 (= (Exists!3545 lambda!368686) (Exists!3545 lambda!368687))))

(declare-fun lt!2415297 () Unit!159235)

(declare-fun choose!49354 (Regex!16475 List!65724) Unit!159235)

(assert (=> d!2071833 (= lt!2415297 (choose!49354 (reg!16804 (regOne!33462 r!7292)) Nil!65600))))

(assert (=> d!2071833 (validRegex!8211 (reg!16804 (regOne!33462 r!7292)))))

(assert (=> d!2071833 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!670 (reg!16804 (regOne!33462 r!7292)) Nil!65600) lt!2415297)))

(declare-fun m!7382418 () Bool)

(assert (=> bs!1693528 m!7382418))

(declare-fun m!7382420 () Bool)

(assert (=> bs!1693528 m!7382420))

(declare-fun m!7382422 () Bool)

(assert (=> bs!1693528 m!7382422))

(assert (=> bs!1693528 m!7382378))

(assert (=> b!6606503 d!2071833))

(declare-fun d!2071835 () Bool)

(assert (=> d!2071835 (= (Exists!3545 lambda!368581) (choose!49347 lambda!368581))))

(declare-fun bs!1693529 () Bool)

(assert (= bs!1693529 d!2071835))

(declare-fun m!7382424 () Bool)

(assert (=> bs!1693529 m!7382424))

(assert (=> b!6606503 d!2071835))

(declare-fun d!2071837 () Bool)

(assert (=> d!2071837 (= (matchR!8658 lt!2415134 Nil!65600) (matchRSpec!3576 lt!2415134 Nil!65600))))

(declare-fun lt!2415300 () Unit!159235)

(declare-fun choose!49355 (Regex!16475 List!65724) Unit!159235)

(assert (=> d!2071837 (= lt!2415300 (choose!49355 lt!2415134 Nil!65600))))

(assert (=> d!2071837 (validRegex!8211 lt!2415134)))

(assert (=> d!2071837 (= (mainMatchTheorem!3576 lt!2415134 Nil!65600) lt!2415300)))

(declare-fun bs!1693530 () Bool)

(assert (= bs!1693530 d!2071837))

(assert (=> bs!1693530 m!7381630))

(assert (=> bs!1693530 m!7381640))

(declare-fun m!7382426 () Bool)

(assert (=> bs!1693530 m!7382426))

(assert (=> bs!1693530 m!7381632))

(assert (=> b!6606503 d!2071837))

(declare-fun d!2071839 () Bool)

(assert (=> d!2071839 (= (Exists!3545 lambda!368579) (choose!49347 lambda!368579))))

(declare-fun bs!1693531 () Bool)

(assert (= bs!1693531 d!2071839))

(declare-fun m!7382428 () Bool)

(assert (=> bs!1693531 m!7382428))

(assert (=> b!6606503 d!2071839))

(declare-fun bs!1693532 () Bool)

(declare-fun d!2071841 () Bool)

(assert (= bs!1693532 (and d!2071841 d!2071761)))

(declare-fun lambda!368688 () Int)

(assert (=> bs!1693532 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368688 lambda!368653))))

(declare-fun bs!1693533 () Bool)

(assert (= bs!1693533 (and d!2071841 b!6606503)))

(assert (=> bs!1693533 (not (= lambda!368688 lambda!368580))))

(assert (=> bs!1693533 (not (= lambda!368688 lambda!368581))))

(assert (=> bs!1693533 (= lambda!368688 lambda!368579)))

(declare-fun bs!1693534 () Bool)

(assert (= bs!1693534 (and d!2071841 b!6607405)))

(assert (=> bs!1693534 (not (= lambda!368688 lambda!368680))))

(declare-fun bs!1693535 () Bool)

(assert (= bs!1693535 (and d!2071841 d!2071833)))

(assert (=> bs!1693535 (not (= lambda!368688 lambda!368687))))

(declare-fun bs!1693536 () Bool)

(assert (= bs!1693536 (and d!2071841 d!2071823)))

(assert (=> bs!1693536 (not (= lambda!368688 lambda!368675))))

(assert (=> bs!1693532 (not (= lambda!368688 lambda!368654))))

(declare-fun bs!1693537 () Bool)

(assert (= bs!1693537 (and d!2071841 b!6607397)))

(assert (=> bs!1693537 (not (= lambda!368688 lambda!368681))))

(declare-fun bs!1693538 () Bool)

(assert (= bs!1693538 (and d!2071841 b!6606515)))

(assert (=> bs!1693538 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368688 lambda!368576))))

(assert (=> bs!1693538 (not (= lambda!368688 lambda!368577))))

(assert (=> bs!1693536 (= lambda!368688 lambda!368674)))

(declare-fun bs!1693539 () Bool)

(assert (= bs!1693539 (and d!2071841 d!2071755)))

(assert (=> bs!1693539 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368688 lambda!368648))))

(assert (=> bs!1693535 (= (= lt!2415134 (Star!16475 (reg!16804 (regOne!33462 r!7292)))) (= lambda!368688 lambda!368686))))

(assert (=> d!2071841 true))

(assert (=> d!2071841 true))

(assert (=> d!2071841 true))

(assert (=> d!2071841 (= (isDefined!13069 (findConcatSeparation!2780 (reg!16804 (regOne!33462 r!7292)) lt!2415134 Nil!65600 Nil!65600 Nil!65600)) (Exists!3545 lambda!368688))))

(declare-fun lt!2415301 () Unit!159235)

(assert (=> d!2071841 (= lt!2415301 (choose!49348 (reg!16804 (regOne!33462 r!7292)) lt!2415134 Nil!65600))))

(assert (=> d!2071841 (validRegex!8211 (reg!16804 (regOne!33462 r!7292)))))

(assert (=> d!2071841 (= (lemmaFindConcatSeparationEquivalentToExists!2544 (reg!16804 (regOne!33462 r!7292)) lt!2415134 Nil!65600) lt!2415301)))

(declare-fun bs!1693540 () Bool)

(assert (= bs!1693540 d!2071841))

(declare-fun m!7382430 () Bool)

(assert (=> bs!1693540 m!7382430))

(assert (=> bs!1693540 m!7382378))

(assert (=> bs!1693540 m!7381626))

(assert (=> bs!1693540 m!7381628))

(declare-fun m!7382432 () Bool)

(assert (=> bs!1693540 m!7382432))

(assert (=> bs!1693540 m!7381626))

(assert (=> b!6606503 d!2071841))

(declare-fun b!6607416 () Bool)

(declare-fun e!3997737 () Bool)

(declare-fun call!578072 () Bool)

(assert (=> b!6607416 (= e!3997737 call!578072)))

(declare-fun d!2071843 () Bool)

(declare-fun res!2709389 () Bool)

(declare-fun e!3997739 () Bool)

(assert (=> d!2071843 (=> res!2709389 e!3997739)))

(assert (=> d!2071843 (= res!2709389 ((_ is ElementMatch!16475) r!7292))))

(assert (=> d!2071843 (= (validRegex!8211 r!7292) e!3997739)))

(declare-fun b!6607417 () Bool)

(declare-fun e!3997736 () Bool)

(declare-fun e!3997741 () Bool)

(assert (=> b!6607417 (= e!3997736 e!3997741)))

(declare-fun res!2709388 () Bool)

(assert (=> b!6607417 (=> (not res!2709388) (not e!3997741))))

(declare-fun call!578073 () Bool)

(assert (=> b!6607417 (= res!2709388 call!578073)))

(declare-fun b!6607418 () Bool)

(declare-fun e!3997738 () Bool)

(declare-fun call!578074 () Bool)

(assert (=> b!6607418 (= e!3997738 call!578074)))

(declare-fun b!6607419 () Bool)

(declare-fun e!3997740 () Bool)

(assert (=> b!6607419 (= e!3997740 e!3997737)))

(declare-fun res!2709386 () Bool)

(assert (=> b!6607419 (= res!2709386 (not (nullable!6468 (reg!16804 r!7292))))))

(assert (=> b!6607419 (=> (not res!2709386) (not e!3997737))))

(declare-fun bm!578067 () Bool)

(assert (=> bm!578067 (= call!578074 call!578072)))

(declare-fun b!6607420 () Bool)

(declare-fun e!3997735 () Bool)

(assert (=> b!6607420 (= e!3997740 e!3997735)))

(declare-fun c!1217596 () Bool)

(assert (=> b!6607420 (= c!1217596 ((_ is Union!16475) r!7292))))

(declare-fun c!1217595 () Bool)

(declare-fun bm!578068 () Bool)

(assert (=> bm!578068 (= call!578072 (validRegex!8211 (ite c!1217595 (reg!16804 r!7292) (ite c!1217596 (regTwo!33463 r!7292) (regTwo!33462 r!7292)))))))

(declare-fun bm!578069 () Bool)

(assert (=> bm!578069 (= call!578073 (validRegex!8211 (ite c!1217596 (regOne!33463 r!7292) (regOne!33462 r!7292))))))

(declare-fun b!6607421 () Bool)

(declare-fun res!2709390 () Bool)

(assert (=> b!6607421 (=> res!2709390 e!3997736)))

(assert (=> b!6607421 (= res!2709390 (not ((_ is Concat!25320) r!7292)))))

(assert (=> b!6607421 (= e!3997735 e!3997736)))

(declare-fun b!6607422 () Bool)

(assert (=> b!6607422 (= e!3997739 e!3997740)))

(assert (=> b!6607422 (= c!1217595 ((_ is Star!16475) r!7292))))

(declare-fun b!6607423 () Bool)

(declare-fun res!2709387 () Bool)

(assert (=> b!6607423 (=> (not res!2709387) (not e!3997738))))

(assert (=> b!6607423 (= res!2709387 call!578073)))

(assert (=> b!6607423 (= e!3997735 e!3997738)))

(declare-fun b!6607424 () Bool)

(assert (=> b!6607424 (= e!3997741 call!578074)))

(assert (= (and d!2071843 (not res!2709389)) b!6607422))

(assert (= (and b!6607422 c!1217595) b!6607419))

(assert (= (and b!6607422 (not c!1217595)) b!6607420))

(assert (= (and b!6607419 res!2709386) b!6607416))

(assert (= (and b!6607420 c!1217596) b!6607423))

(assert (= (and b!6607420 (not c!1217596)) b!6607421))

(assert (= (and b!6607423 res!2709387) b!6607418))

(assert (= (and b!6607421 (not res!2709390)) b!6607417))

(assert (= (and b!6607417 res!2709388) b!6607424))

(assert (= (or b!6607418 b!6607424) bm!578067))

(assert (= (or b!6607423 b!6607417) bm!578069))

(assert (= (or b!6607416 bm!578067) bm!578068))

(declare-fun m!7382434 () Bool)

(assert (=> b!6607419 m!7382434))

(declare-fun m!7382436 () Bool)

(assert (=> bm!578068 m!7382436))

(declare-fun m!7382438 () Bool)

(assert (=> bm!578069 m!7382438))

(assert (=> start!645894 d!2071843))

(declare-fun e!3997744 () Bool)

(declare-fun d!2071845 () Bool)

(assert (=> d!2071845 (= (matchZipper!2487 ((_ map or) lt!2415129 lt!2415132) (t!379376 s!2326)) e!3997744)))

(declare-fun res!2709393 () Bool)

(assert (=> d!2071845 (=> res!2709393 e!3997744)))

(assert (=> d!2071845 (= res!2709393 (matchZipper!2487 lt!2415129 (t!379376 s!2326)))))

(declare-fun lt!2415304 () Unit!159235)

(declare-fun choose!49356 ((InoxSet Context!11718) (InoxSet Context!11718) List!65724) Unit!159235)

(assert (=> d!2071845 (= lt!2415304 (choose!49356 lt!2415129 lt!2415132 (t!379376 s!2326)))))

(assert (=> d!2071845 (= (lemmaZipperConcatMatchesSameAsBothZippers!1306 lt!2415129 lt!2415132 (t!379376 s!2326)) lt!2415304)))

(declare-fun b!6607427 () Bool)

(assert (=> b!6607427 (= e!3997744 (matchZipper!2487 lt!2415132 (t!379376 s!2326)))))

(assert (= (and d!2071845 (not res!2709393)) b!6607427))

(assert (=> d!2071845 m!7381592))

(assert (=> d!2071845 m!7381590))

(declare-fun m!7382440 () Bool)

(assert (=> d!2071845 m!7382440))

(assert (=> b!6607427 m!7381586))

(assert (=> b!6606525 d!2071845))

(assert (=> b!6606525 d!2071797))

(declare-fun d!2071847 () Bool)

(declare-fun c!1217597 () Bool)

(assert (=> d!2071847 (= c!1217597 (isEmpty!37882 (t!379376 s!2326)))))

(declare-fun e!3997745 () Bool)

(assert (=> d!2071847 (= (matchZipper!2487 ((_ map or) lt!2415129 lt!2415132) (t!379376 s!2326)) e!3997745)))

(declare-fun b!6607428 () Bool)

(assert (=> b!6607428 (= e!3997745 (nullableZipper!2220 ((_ map or) lt!2415129 lt!2415132)))))

(declare-fun b!6607429 () Bool)

(assert (=> b!6607429 (= e!3997745 (matchZipper!2487 (derivationStepZipper!2441 ((_ map or) lt!2415129 lt!2415132) (head!13402 (t!379376 s!2326))) (tail!12487 (t!379376 s!2326))))))

(assert (= (and d!2071847 c!1217597) b!6607428))

(assert (= (and d!2071847 (not c!1217597)) b!6607429))

(assert (=> d!2071847 m!7382288))

(declare-fun m!7382442 () Bool)

(assert (=> b!6607428 m!7382442))

(assert (=> b!6607429 m!7382292))

(assert (=> b!6607429 m!7382292))

(declare-fun m!7382444 () Bool)

(assert (=> b!6607429 m!7382444))

(assert (=> b!6607429 m!7382296))

(assert (=> b!6607429 m!7382444))

(assert (=> b!6607429 m!7382296))

(declare-fun m!7382446 () Bool)

(assert (=> b!6607429 m!7382446))

(assert (=> b!6606525 d!2071847))

(declare-fun d!2071849 () Bool)

(assert (=> d!2071849 (= (isEmpty!37877 (t!379378 zl!343)) ((_ is Nil!65602) (t!379378 zl!343)))))

(assert (=> b!6606524 d!2071849))

(declare-fun bs!1693541 () Bool)

(declare-fun d!2071851 () Bool)

(assert (= bs!1693541 (and d!2071851 d!2071653)))

(declare-fun lambda!368689 () Int)

(assert (=> bs!1693541 (= lambda!368689 lambda!368603)))

(declare-fun bs!1693542 () Bool)

(assert (= bs!1693542 (and d!2071851 d!2071661)))

(assert (=> bs!1693542 (= lambda!368689 lambda!368608)))

(declare-fun bs!1693543 () Bool)

(assert (= bs!1693543 (and d!2071851 d!2071783)))

(assert (=> bs!1693543 (= lambda!368689 lambda!368660)))

(assert (=> d!2071851 (= (inv!84434 setElem!45120) (forall!15673 (exprs!6359 setElem!45120) lambda!368689))))

(declare-fun bs!1693544 () Bool)

(assert (= bs!1693544 d!2071851))

(declare-fun m!7382448 () Bool)

(assert (=> bs!1693544 m!7382448))

(assert (=> setNonEmpty!45120 d!2071851))

(declare-fun d!2071853 () Bool)

(declare-fun e!3997746 () Bool)

(assert (=> d!2071853 e!3997746))

(declare-fun c!1217599 () Bool)

(assert (=> d!2071853 (= c!1217599 ((_ is EmptyExpr!16475) lt!2415143))))

(declare-fun lt!2415305 () Bool)

(declare-fun e!3997752 () Bool)

(assert (=> d!2071853 (= lt!2415305 e!3997752)))

(declare-fun c!1217598 () Bool)

(assert (=> d!2071853 (= c!1217598 (isEmpty!37882 s!2326))))

(assert (=> d!2071853 (validRegex!8211 lt!2415143)))

(assert (=> d!2071853 (= (matchR!8658 lt!2415143 s!2326) lt!2415305)))

(declare-fun b!6607430 () Bool)

(declare-fun e!3997747 () Bool)

(assert (=> b!6607430 (= e!3997747 (= (head!13402 s!2326) (c!1217326 lt!2415143)))))

(declare-fun b!6607431 () Bool)

(declare-fun e!3997749 () Bool)

(assert (=> b!6607431 (= e!3997749 (not lt!2415305))))

(declare-fun b!6607432 () Bool)

(declare-fun res!2709400 () Bool)

(assert (=> b!6607432 (=> (not res!2709400) (not e!3997747))))

(assert (=> b!6607432 (= res!2709400 (isEmpty!37882 (tail!12487 s!2326)))))

(declare-fun bm!578070 () Bool)

(declare-fun call!578075 () Bool)

(assert (=> bm!578070 (= call!578075 (isEmpty!37882 s!2326))))

(declare-fun b!6607433 () Bool)

(declare-fun e!3997751 () Bool)

(declare-fun e!3997750 () Bool)

(assert (=> b!6607433 (= e!3997751 e!3997750)))

(declare-fun res!2709401 () Bool)

(assert (=> b!6607433 (=> res!2709401 e!3997750)))

(assert (=> b!6607433 (= res!2709401 call!578075)))

(declare-fun b!6607434 () Bool)

(declare-fun res!2709399 () Bool)

(declare-fun e!3997748 () Bool)

(assert (=> b!6607434 (=> res!2709399 e!3997748)))

(assert (=> b!6607434 (= res!2709399 (not ((_ is ElementMatch!16475) lt!2415143)))))

(assert (=> b!6607434 (= e!3997749 e!3997748)))

(declare-fun b!6607435 () Bool)

(assert (=> b!6607435 (= e!3997746 e!3997749)))

(declare-fun c!1217600 () Bool)

(assert (=> b!6607435 (= c!1217600 ((_ is EmptyLang!16475) lt!2415143))))

(declare-fun b!6607436 () Bool)

(assert (=> b!6607436 (= e!3997748 e!3997751)))

(declare-fun res!2709397 () Bool)

(assert (=> b!6607436 (=> (not res!2709397) (not e!3997751))))

(assert (=> b!6607436 (= res!2709397 (not lt!2415305))))

(declare-fun b!6607437 () Bool)

(declare-fun res!2709398 () Bool)

(assert (=> b!6607437 (=> res!2709398 e!3997748)))

(assert (=> b!6607437 (= res!2709398 e!3997747)))

(declare-fun res!2709395 () Bool)

(assert (=> b!6607437 (=> (not res!2709395) (not e!3997747))))

(assert (=> b!6607437 (= res!2709395 lt!2415305)))

(declare-fun b!6607438 () Bool)

(assert (=> b!6607438 (= e!3997752 (matchR!8658 (derivativeStep!5159 lt!2415143 (head!13402 s!2326)) (tail!12487 s!2326)))))

(declare-fun b!6607439 () Bool)

(declare-fun res!2709396 () Bool)

(assert (=> b!6607439 (=> res!2709396 e!3997750)))

(assert (=> b!6607439 (= res!2709396 (not (isEmpty!37882 (tail!12487 s!2326))))))

(declare-fun b!6607440 () Bool)

(assert (=> b!6607440 (= e!3997752 (nullable!6468 lt!2415143))))

(declare-fun b!6607441 () Bool)

(declare-fun res!2709394 () Bool)

(assert (=> b!6607441 (=> (not res!2709394) (not e!3997747))))

(assert (=> b!6607441 (= res!2709394 (not call!578075))))

(declare-fun b!6607442 () Bool)

(assert (=> b!6607442 (= e!3997746 (= lt!2415305 call!578075))))

(declare-fun b!6607443 () Bool)

(assert (=> b!6607443 (= e!3997750 (not (= (head!13402 s!2326) (c!1217326 lt!2415143))))))

(assert (= (and d!2071853 c!1217598) b!6607440))

(assert (= (and d!2071853 (not c!1217598)) b!6607438))

(assert (= (and d!2071853 c!1217599) b!6607442))

(assert (= (and d!2071853 (not c!1217599)) b!6607435))

(assert (= (and b!6607435 c!1217600) b!6607431))

(assert (= (and b!6607435 (not c!1217600)) b!6607434))

(assert (= (and b!6607434 (not res!2709399)) b!6607437))

(assert (= (and b!6607437 res!2709395) b!6607441))

(assert (= (and b!6607441 res!2709394) b!6607432))

(assert (= (and b!6607432 res!2709400) b!6607430))

(assert (= (and b!6607437 (not res!2709398)) b!6607436))

(assert (= (and b!6607436 res!2709397) b!6607433))

(assert (= (and b!6607433 (not res!2709401)) b!6607439))

(assert (= (and b!6607439 (not res!2709396)) b!6607443))

(assert (= (or b!6607442 b!6607433 b!6607441) bm!578070))

(declare-fun m!7382450 () Bool)

(assert (=> b!6607438 m!7382450))

(assert (=> b!6607438 m!7382450))

(declare-fun m!7382452 () Bool)

(assert (=> b!6607438 m!7382452))

(declare-fun m!7382454 () Bool)

(assert (=> b!6607438 m!7382454))

(assert (=> b!6607438 m!7382452))

(assert (=> b!6607438 m!7382454))

(declare-fun m!7382456 () Bool)

(assert (=> b!6607438 m!7382456))

(declare-fun m!7382458 () Bool)

(assert (=> b!6607440 m!7382458))

(declare-fun m!7382460 () Bool)

(assert (=> bm!578070 m!7382460))

(assert (=> b!6607430 m!7382450))

(assert (=> b!6607432 m!7382454))

(assert (=> b!6607432 m!7382454))

(declare-fun m!7382462 () Bool)

(assert (=> b!6607432 m!7382462))

(assert (=> d!2071853 m!7382460))

(declare-fun m!7382464 () Bool)

(assert (=> d!2071853 m!7382464))

(assert (=> b!6607443 m!7382450))

(assert (=> b!6607439 m!7382454))

(assert (=> b!6607439 m!7382454))

(assert (=> b!6607439 m!7382462))

(assert (=> b!6606526 d!2071853))

(declare-fun bs!1693545 () Bool)

(declare-fun b!6607454 () Bool)

(assert (= bs!1693545 (and b!6607454 d!2071761)))

(declare-fun lambda!368690 () Int)

(assert (=> bs!1693545 (not (= lambda!368690 lambda!368653))))

(declare-fun bs!1693546 () Bool)

(assert (= bs!1693546 (and b!6607454 b!6606503)))

(assert (=> bs!1693546 (not (= lambda!368690 lambda!368580))))

(assert (=> bs!1693546 (= (and (= s!2326 Nil!65600) (= (reg!16804 lt!2415143) (reg!16804 (regOne!33462 r!7292))) (= lt!2415143 lt!2415134)) (= lambda!368690 lambda!368581))))

(assert (=> bs!1693546 (not (= lambda!368690 lambda!368579))))

(declare-fun bs!1693547 () Bool)

(assert (= bs!1693547 (and b!6607454 b!6607405)))

(assert (=> bs!1693547 (= (and (= s!2326 Nil!65600) (= (reg!16804 lt!2415143) (reg!16804 lt!2415134)) (= lt!2415143 lt!2415134)) (= lambda!368690 lambda!368680))))

(declare-fun bs!1693548 () Bool)

(assert (= bs!1693548 (and b!6607454 d!2071833)))

(assert (=> bs!1693548 (= (and (= s!2326 Nil!65600) (= (reg!16804 lt!2415143) (reg!16804 (regOne!33462 r!7292))) (= lt!2415143 (Star!16475 (reg!16804 (regOne!33462 r!7292))))) (= lambda!368690 lambda!368687))))

(declare-fun bs!1693549 () Bool)

(assert (= bs!1693549 (and b!6607454 d!2071841)))

(assert (=> bs!1693549 (not (= lambda!368690 lambda!368688))))

(declare-fun bs!1693550 () Bool)

(assert (= bs!1693550 (and b!6607454 d!2071823)))

(assert (=> bs!1693550 (not (= lambda!368690 lambda!368675))))

(assert (=> bs!1693545 (not (= lambda!368690 lambda!368654))))

(declare-fun bs!1693551 () Bool)

(assert (= bs!1693551 (and b!6607454 b!6607397)))

(assert (=> bs!1693551 (not (= lambda!368690 lambda!368681))))

(declare-fun bs!1693552 () Bool)

(assert (= bs!1693552 (and b!6607454 b!6606515)))

(assert (=> bs!1693552 (not (= lambda!368690 lambda!368576))))

(assert (=> bs!1693552 (not (= lambda!368690 lambda!368577))))

(assert (=> bs!1693550 (not (= lambda!368690 lambda!368674))))

(declare-fun bs!1693553 () Bool)

(assert (= bs!1693553 (and b!6607454 d!2071755)))

(assert (=> bs!1693553 (not (= lambda!368690 lambda!368648))))

(assert (=> bs!1693548 (not (= lambda!368690 lambda!368686))))

(assert (=> b!6607454 true))

(assert (=> b!6607454 true))

(declare-fun bs!1693554 () Bool)

(declare-fun b!6607446 () Bool)

(assert (= bs!1693554 (and b!6607446 d!2071761)))

(declare-fun lambda!368691 () Int)

(assert (=> bs!1693554 (not (= lambda!368691 lambda!368653))))

(declare-fun bs!1693555 () Bool)

(assert (= bs!1693555 (and b!6607446 b!6606503)))

(assert (=> bs!1693555 (= (and (= s!2326 Nil!65600) (= (regOne!33462 lt!2415143) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 lt!2415143) lt!2415134)) (= lambda!368691 lambda!368580))))

(assert (=> bs!1693555 (not (= lambda!368691 lambda!368581))))

(assert (=> bs!1693555 (not (= lambda!368691 lambda!368579))))

(declare-fun bs!1693556 () Bool)

(assert (= bs!1693556 (and b!6607446 b!6607405)))

(assert (=> bs!1693556 (not (= lambda!368691 lambda!368680))))

(declare-fun bs!1693557 () Bool)

(assert (= bs!1693557 (and b!6607446 d!2071833)))

(assert (=> bs!1693557 (not (= lambda!368691 lambda!368687))))

(declare-fun bs!1693558 () Bool)

(assert (= bs!1693558 (and b!6607446 d!2071841)))

(assert (=> bs!1693558 (not (= lambda!368691 lambda!368688))))

(declare-fun bs!1693559 () Bool)

(assert (= bs!1693559 (and b!6607446 d!2071823)))

(assert (=> bs!1693559 (= (and (= s!2326 Nil!65600) (= (regOne!33462 lt!2415143) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 lt!2415143) lt!2415134)) (= lambda!368691 lambda!368675))))

(declare-fun bs!1693560 () Bool)

(assert (= bs!1693560 (and b!6607446 b!6607454)))

(assert (=> bs!1693560 (not (= lambda!368691 lambda!368690))))

(assert (=> bs!1693554 (= (and (= (regOne!33462 lt!2415143) (regOne!33462 r!7292)) (= (regTwo!33462 lt!2415143) (regTwo!33462 r!7292))) (= lambda!368691 lambda!368654))))

(declare-fun bs!1693561 () Bool)

(assert (= bs!1693561 (and b!6607446 b!6607397)))

(assert (=> bs!1693561 (= (and (= s!2326 Nil!65600) (= (regOne!33462 lt!2415143) (regOne!33462 lt!2415134)) (= (regTwo!33462 lt!2415143) (regTwo!33462 lt!2415134))) (= lambda!368691 lambda!368681))))

(declare-fun bs!1693562 () Bool)

(assert (= bs!1693562 (and b!6607446 b!6606515)))

(assert (=> bs!1693562 (not (= lambda!368691 lambda!368576))))

(assert (=> bs!1693562 (= (and (= (regOne!33462 lt!2415143) (regOne!33462 r!7292)) (= (regTwo!33462 lt!2415143) (regTwo!33462 r!7292))) (= lambda!368691 lambda!368577))))

(assert (=> bs!1693559 (not (= lambda!368691 lambda!368674))))

(declare-fun bs!1693563 () Bool)

(assert (= bs!1693563 (and b!6607446 d!2071755)))

(assert (=> bs!1693563 (not (= lambda!368691 lambda!368648))))

(assert (=> bs!1693557 (not (= lambda!368691 lambda!368686))))

(assert (=> b!6607446 true))

(assert (=> b!6607446 true))

(declare-fun b!6607444 () Bool)

(declare-fun e!3997759 () Bool)

(declare-fun e!3997755 () Bool)

(assert (=> b!6607444 (= e!3997759 e!3997755)))

(declare-fun c!1217601 () Bool)

(assert (=> b!6607444 (= c!1217601 ((_ is Star!16475) lt!2415143))))

(declare-fun b!6607445 () Bool)

(declare-fun e!3997753 () Bool)

(declare-fun call!578077 () Bool)

(assert (=> b!6607445 (= e!3997753 call!578077)))

(declare-fun call!578076 () Bool)

(assert (=> b!6607446 (= e!3997755 call!578076)))

(declare-fun b!6607447 () Bool)

(declare-fun c!1217603 () Bool)

(assert (=> b!6607447 (= c!1217603 ((_ is ElementMatch!16475) lt!2415143))))

(declare-fun e!3997757 () Bool)

(declare-fun e!3997754 () Bool)

(assert (=> b!6607447 (= e!3997757 e!3997754)))

(declare-fun b!6607449 () Bool)

(declare-fun res!2709402 () Bool)

(declare-fun e!3997756 () Bool)

(assert (=> b!6607449 (=> res!2709402 e!3997756)))

(assert (=> b!6607449 (= res!2709402 call!578077)))

(assert (=> b!6607449 (= e!3997755 e!3997756)))

(declare-fun b!6607450 () Bool)

(assert (=> b!6607450 (= e!3997754 (= s!2326 (Cons!65600 (c!1217326 lt!2415143) Nil!65600)))))

(declare-fun bm!578071 () Bool)

(assert (=> bm!578071 (= call!578077 (isEmpty!37882 s!2326))))

(declare-fun b!6607451 () Bool)

(declare-fun c!1217604 () Bool)

(assert (=> b!6607451 (= c!1217604 ((_ is Union!16475) lt!2415143))))

(assert (=> b!6607451 (= e!3997754 e!3997759)))

(declare-fun b!6607452 () Bool)

(declare-fun e!3997758 () Bool)

(assert (=> b!6607452 (= e!3997758 (matchRSpec!3576 (regTwo!33463 lt!2415143) s!2326))))

(declare-fun bm!578072 () Bool)

(assert (=> bm!578072 (= call!578076 (Exists!3545 (ite c!1217601 lambda!368690 lambda!368691)))))

(declare-fun b!6607453 () Bool)

(assert (=> b!6607453 (= e!3997753 e!3997757)))

(declare-fun res!2709403 () Bool)

(assert (=> b!6607453 (= res!2709403 (not ((_ is EmptyLang!16475) lt!2415143)))))

(assert (=> b!6607453 (=> (not res!2709403) (not e!3997757))))

(assert (=> b!6607454 (= e!3997756 call!578076)))

(declare-fun b!6607448 () Bool)

(assert (=> b!6607448 (= e!3997759 e!3997758)))

(declare-fun res!2709404 () Bool)

(assert (=> b!6607448 (= res!2709404 (matchRSpec!3576 (regOne!33463 lt!2415143) s!2326))))

(assert (=> b!6607448 (=> res!2709404 e!3997758)))

(declare-fun d!2071855 () Bool)

(declare-fun c!1217602 () Bool)

(assert (=> d!2071855 (= c!1217602 ((_ is EmptyExpr!16475) lt!2415143))))

(assert (=> d!2071855 (= (matchRSpec!3576 lt!2415143 s!2326) e!3997753)))

(assert (= (and d!2071855 c!1217602) b!6607445))

(assert (= (and d!2071855 (not c!1217602)) b!6607453))

(assert (= (and b!6607453 res!2709403) b!6607447))

(assert (= (and b!6607447 c!1217603) b!6607450))

(assert (= (and b!6607447 (not c!1217603)) b!6607451))

(assert (= (and b!6607451 c!1217604) b!6607448))

(assert (= (and b!6607451 (not c!1217604)) b!6607444))

(assert (= (and b!6607448 (not res!2709404)) b!6607452))

(assert (= (and b!6607444 c!1217601) b!6607449))

(assert (= (and b!6607444 (not c!1217601)) b!6607446))

(assert (= (and b!6607449 (not res!2709402)) b!6607454))

(assert (= (or b!6607454 b!6607446) bm!578072))

(assert (= (or b!6607445 b!6607449) bm!578071))

(assert (=> bm!578071 m!7382460))

(declare-fun m!7382466 () Bool)

(assert (=> b!6607452 m!7382466))

(declare-fun m!7382468 () Bool)

(assert (=> bm!578072 m!7382468))

(declare-fun m!7382470 () Bool)

(assert (=> b!6607448 m!7382470))

(assert (=> b!6606526 d!2071855))

(declare-fun d!2071857 () Bool)

(assert (=> d!2071857 (= (matchR!8658 lt!2415143 s!2326) (matchRSpec!3576 lt!2415143 s!2326))))

(declare-fun lt!2415306 () Unit!159235)

(assert (=> d!2071857 (= lt!2415306 (choose!49355 lt!2415143 s!2326))))

(assert (=> d!2071857 (validRegex!8211 lt!2415143)))

(assert (=> d!2071857 (= (mainMatchTheorem!3576 lt!2415143 s!2326) lt!2415306)))

(declare-fun bs!1693564 () Bool)

(assert (= bs!1693564 d!2071857))

(assert (=> bs!1693564 m!7381718))

(assert (=> bs!1693564 m!7381720))

(declare-fun m!7382472 () Bool)

(assert (=> bs!1693564 m!7382472))

(assert (=> bs!1693564 m!7382464))

(assert (=> b!6606526 d!2071857))

(declare-fun d!2071859 () Bool)

(declare-fun lt!2415307 () Regex!16475)

(assert (=> d!2071859 (validRegex!8211 lt!2415307)))

(assert (=> d!2071859 (= lt!2415307 (generalisedUnion!2319 (unfocusZipperList!1896 (Cons!65602 lt!2415123 Nil!65602))))))

(assert (=> d!2071859 (= (unfocusZipper!2217 (Cons!65602 lt!2415123 Nil!65602)) lt!2415307)))

(declare-fun bs!1693565 () Bool)

(assert (= bs!1693565 d!2071859))

(declare-fun m!7382474 () Bool)

(assert (=> bs!1693565 m!7382474))

(declare-fun m!7382476 () Bool)

(assert (=> bs!1693565 m!7382476))

(assert (=> bs!1693565 m!7382476))

(declare-fun m!7382478 () Bool)

(assert (=> bs!1693565 m!7382478))

(assert (=> b!6606505 d!2071859))

(assert (=> b!6606504 d!2071817))

(declare-fun d!2071861 () Bool)

(declare-fun e!3997762 () Bool)

(assert (=> d!2071861 e!3997762))

(declare-fun res!2709407 () Bool)

(assert (=> d!2071861 (=> (not res!2709407) (not e!3997762))))

(declare-fun lt!2415310 () List!65726)

(declare-fun noDuplicate!2280 (List!65726) Bool)

(assert (=> d!2071861 (= res!2709407 (noDuplicate!2280 lt!2415310))))

(declare-fun choose!49357 ((InoxSet Context!11718)) List!65726)

(assert (=> d!2071861 (= lt!2415310 (choose!49357 z!1189))))

(assert (=> d!2071861 (= (toList!10259 z!1189) lt!2415310)))

(declare-fun b!6607457 () Bool)

(declare-fun content!12652 (List!65726) (InoxSet Context!11718))

(assert (=> b!6607457 (= e!3997762 (= (content!12652 lt!2415310) z!1189))))

(assert (= (and d!2071861 res!2709407) b!6607457))

(declare-fun m!7382480 () Bool)

(assert (=> d!2071861 m!7382480))

(declare-fun m!7382482 () Bool)

(assert (=> d!2071861 m!7382482))

(declare-fun m!7382484 () Bool)

(assert (=> b!6607457 m!7382484))

(assert (=> b!6606485 d!2071861))

(declare-fun b!6607458 () Bool)

(declare-fun e!3997765 () Bool)

(declare-fun call!578078 () Bool)

(assert (=> b!6607458 (= e!3997765 call!578078)))

(declare-fun d!2071863 () Bool)

(declare-fun res!2709411 () Bool)

(declare-fun e!3997767 () Bool)

(assert (=> d!2071863 (=> res!2709411 e!3997767)))

(assert (=> d!2071863 (= res!2709411 ((_ is ElementMatch!16475) (regTwo!33462 r!7292)))))

(assert (=> d!2071863 (= (validRegex!8211 (regTwo!33462 r!7292)) e!3997767)))

(declare-fun b!6607459 () Bool)

(declare-fun e!3997764 () Bool)

(declare-fun e!3997769 () Bool)

(assert (=> b!6607459 (= e!3997764 e!3997769)))

(declare-fun res!2709410 () Bool)

(assert (=> b!6607459 (=> (not res!2709410) (not e!3997769))))

(declare-fun call!578079 () Bool)

(assert (=> b!6607459 (= res!2709410 call!578079)))

(declare-fun b!6607460 () Bool)

(declare-fun e!3997766 () Bool)

(declare-fun call!578080 () Bool)

(assert (=> b!6607460 (= e!3997766 call!578080)))

(declare-fun b!6607461 () Bool)

(declare-fun e!3997768 () Bool)

(assert (=> b!6607461 (= e!3997768 e!3997765)))

(declare-fun res!2709408 () Bool)

(assert (=> b!6607461 (= res!2709408 (not (nullable!6468 (reg!16804 (regTwo!33462 r!7292)))))))

(assert (=> b!6607461 (=> (not res!2709408) (not e!3997765))))

(declare-fun bm!578073 () Bool)

(assert (=> bm!578073 (= call!578080 call!578078)))

(declare-fun b!6607462 () Bool)

(declare-fun e!3997763 () Bool)

(assert (=> b!6607462 (= e!3997768 e!3997763)))

(declare-fun c!1217606 () Bool)

(assert (=> b!6607462 (= c!1217606 ((_ is Union!16475) (regTwo!33462 r!7292)))))

(declare-fun c!1217605 () Bool)

(declare-fun bm!578074 () Bool)

(assert (=> bm!578074 (= call!578078 (validRegex!8211 (ite c!1217605 (reg!16804 (regTwo!33462 r!7292)) (ite c!1217606 (regTwo!33463 (regTwo!33462 r!7292)) (regTwo!33462 (regTwo!33462 r!7292))))))))

(declare-fun bm!578075 () Bool)

(assert (=> bm!578075 (= call!578079 (validRegex!8211 (ite c!1217606 (regOne!33463 (regTwo!33462 r!7292)) (regOne!33462 (regTwo!33462 r!7292)))))))

(declare-fun b!6607463 () Bool)

(declare-fun res!2709412 () Bool)

(assert (=> b!6607463 (=> res!2709412 e!3997764)))

(assert (=> b!6607463 (= res!2709412 (not ((_ is Concat!25320) (regTwo!33462 r!7292))))))

(assert (=> b!6607463 (= e!3997763 e!3997764)))

(declare-fun b!6607464 () Bool)

(assert (=> b!6607464 (= e!3997767 e!3997768)))

(assert (=> b!6607464 (= c!1217605 ((_ is Star!16475) (regTwo!33462 r!7292)))))

(declare-fun b!6607465 () Bool)

(declare-fun res!2709409 () Bool)

(assert (=> b!6607465 (=> (not res!2709409) (not e!3997766))))

(assert (=> b!6607465 (= res!2709409 call!578079)))

(assert (=> b!6607465 (= e!3997763 e!3997766)))

(declare-fun b!6607466 () Bool)

(assert (=> b!6607466 (= e!3997769 call!578080)))

(assert (= (and d!2071863 (not res!2709411)) b!6607464))

(assert (= (and b!6607464 c!1217605) b!6607461))

(assert (= (and b!6607464 (not c!1217605)) b!6607462))

(assert (= (and b!6607461 res!2709408) b!6607458))

(assert (= (and b!6607462 c!1217606) b!6607465))

(assert (= (and b!6607462 (not c!1217606)) b!6607463))

(assert (= (and b!6607465 res!2709409) b!6607460))

(assert (= (and b!6607463 (not res!2709412)) b!6607459))

(assert (= (and b!6607459 res!2709410) b!6607466))

(assert (= (or b!6607460 b!6607466) bm!578073))

(assert (= (or b!6607465 b!6607459) bm!578075))

(assert (= (or b!6607458 bm!578073) bm!578074))

(declare-fun m!7382486 () Bool)

(assert (=> b!6607461 m!7382486))

(declare-fun m!7382488 () Bool)

(assert (=> bm!578074 m!7382488))

(declare-fun m!7382490 () Bool)

(assert (=> bm!578075 m!7382490))

(assert (=> b!6606527 d!2071863))

(declare-fun d!2071865 () Bool)

(assert (=> d!2071865 (= (flatMap!1980 z!1189 lambda!368578) (dynLambda!26122 lambda!368578 (h!72050 zl!343)))))

(declare-fun lt!2415311 () Unit!159235)

(assert (=> d!2071865 (= lt!2415311 (choose!49351 z!1189 (h!72050 zl!343) lambda!368578))))

(assert (=> d!2071865 (= z!1189 (store ((as const (Array Context!11718 Bool)) false) (h!72050 zl!343) true))))

(assert (=> d!2071865 (= (lemmaFlatMapOnSingletonSet!1506 z!1189 (h!72050 zl!343) lambda!368578) lt!2415311)))

(declare-fun b_lambda!250005 () Bool)

(assert (=> (not b_lambda!250005) (not d!2071865)))

(declare-fun bs!1693566 () Bool)

(assert (= bs!1693566 d!2071865))

(assert (=> bs!1693566 m!7381670))

(declare-fun m!7382492 () Bool)

(assert (=> bs!1693566 m!7382492))

(declare-fun m!7382494 () Bool)

(assert (=> bs!1693566 m!7382494))

(declare-fun m!7382496 () Bool)

(assert (=> bs!1693566 m!7382496))

(assert (=> b!6606487 d!2071865))

(declare-fun call!578085 () (InoxSet Context!11718))

(declare-fun call!578084 () List!65725)

(declare-fun c!1217609 () Bool)

(declare-fun bm!578076 () Bool)

(declare-fun c!1217610 () Bool)

(declare-fun c!1217608 () Bool)

(assert (=> bm!578076 (= call!578085 (derivationStepZipperDown!1723 (ite c!1217609 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217610 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217608 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343))))))) (ite (or c!1217609 c!1217610) lt!2415117 (Context!11719 call!578084)) (h!72048 s!2326)))))

(declare-fun b!6607467 () Bool)

(declare-fun e!3997774 () (InoxSet Context!11718))

(declare-fun call!578083 () (InoxSet Context!11718))

(assert (=> b!6607467 (= e!3997774 call!578083)))

(declare-fun b!6607468 () Bool)

(declare-fun e!3997775 () (InoxSet Context!11718))

(declare-fun e!3997773 () (InoxSet Context!11718))

(assert (=> b!6607468 (= e!3997775 e!3997773)))

(assert (=> b!6607468 (= c!1217609 ((_ is Union!16475) (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun d!2071867 () Bool)

(declare-fun c!1217607 () Bool)

(assert (=> d!2071867 (= c!1217607 (and ((_ is ElementMatch!16475) (h!72049 (exprs!6359 (h!72050 zl!343)))) (= (c!1217326 (h!72049 (exprs!6359 (h!72050 zl!343)))) (h!72048 s!2326))))))

(assert (=> d!2071867 (= (derivationStepZipperDown!1723 (h!72049 (exprs!6359 (h!72050 zl!343))) lt!2415117 (h!72048 s!2326)) e!3997775)))

(declare-fun b!6607469 () Bool)

(declare-fun e!3997770 () (InoxSet Context!11718))

(declare-fun e!3997771 () (InoxSet Context!11718))

(assert (=> b!6607469 (= e!3997770 e!3997771)))

(assert (=> b!6607469 (= c!1217608 ((_ is Concat!25320) (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun b!6607470 () Bool)

(assert (=> b!6607470 (= e!3997775 (store ((as const (Array Context!11718 Bool)) false) lt!2415117 true))))

(declare-fun b!6607471 () Bool)

(declare-fun e!3997772 () Bool)

(assert (=> b!6607471 (= c!1217610 e!3997772)))

(declare-fun res!2709413 () Bool)

(assert (=> b!6607471 (=> (not res!2709413) (not e!3997772))))

(assert (=> b!6607471 (= res!2709413 ((_ is Concat!25320) (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(assert (=> b!6607471 (= e!3997773 e!3997770)))

(declare-fun bm!578077 () Bool)

(declare-fun call!578081 () (InoxSet Context!11718))

(assert (=> bm!578077 (= call!578081 call!578085)))

(declare-fun b!6607472 () Bool)

(declare-fun c!1217611 () Bool)

(assert (=> b!6607472 (= c!1217611 ((_ is Star!16475) (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(assert (=> b!6607472 (= e!3997771 e!3997774)))

(declare-fun bm!578078 () Bool)

(assert (=> bm!578078 (= call!578083 call!578081)))

(declare-fun call!578086 () List!65725)

(declare-fun bm!578079 () Bool)

(assert (=> bm!578079 (= call!578086 ($colon$colon!2316 (exprs!6359 lt!2415117) (ite (or c!1217610 c!1217608) (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (h!72049 (exprs!6359 (h!72050 zl!343))))))))

(declare-fun b!6607473 () Bool)

(assert (=> b!6607473 (= e!3997774 ((as const (Array Context!11718 Bool)) false))))

(declare-fun bm!578080 () Bool)

(declare-fun call!578082 () (InoxSet Context!11718))

(assert (=> bm!578080 (= call!578082 (derivationStepZipperDown!1723 (ite c!1217609 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343))))) (ite c!1217609 lt!2415117 (Context!11719 call!578086)) (h!72048 s!2326)))))

(declare-fun b!6607474 () Bool)

(assert (=> b!6607474 (= e!3997773 ((_ map or) call!578085 call!578082))))

(declare-fun b!6607475 () Bool)

(assert (=> b!6607475 (= e!3997770 ((_ map or) call!578082 call!578081))))

(declare-fun bm!578081 () Bool)

(assert (=> bm!578081 (= call!578084 call!578086)))

(declare-fun b!6607476 () Bool)

(assert (=> b!6607476 (= e!3997772 (nullable!6468 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343))))))))

(declare-fun b!6607477 () Bool)

(assert (=> b!6607477 (= e!3997771 call!578083)))

(assert (= (and d!2071867 c!1217607) b!6607470))

(assert (= (and d!2071867 (not c!1217607)) b!6607468))

(assert (= (and b!6607468 c!1217609) b!6607474))

(assert (= (and b!6607468 (not c!1217609)) b!6607471))

(assert (= (and b!6607471 res!2709413) b!6607476))

(assert (= (and b!6607471 c!1217610) b!6607475))

(assert (= (and b!6607471 (not c!1217610)) b!6607469))

(assert (= (and b!6607469 c!1217608) b!6607477))

(assert (= (and b!6607469 (not c!1217608)) b!6607472))

(assert (= (and b!6607472 c!1217611) b!6607467))

(assert (= (and b!6607472 (not c!1217611)) b!6607473))

(assert (= (or b!6607477 b!6607467) bm!578081))

(assert (= (or b!6607477 b!6607467) bm!578078))

(assert (= (or b!6607475 bm!578081) bm!578079))

(assert (= (or b!6607475 bm!578078) bm!578077))

(assert (= (or b!6607474 b!6607475) bm!578080))

(assert (= (or b!6607474 bm!578077) bm!578076))

(declare-fun m!7382498 () Bool)

(assert (=> bm!578076 m!7382498))

(declare-fun m!7382500 () Bool)

(assert (=> b!6607476 m!7382500))

(declare-fun m!7382502 () Bool)

(assert (=> bm!578080 m!7382502))

(assert (=> b!6607470 m!7381712))

(declare-fun m!7382504 () Bool)

(assert (=> bm!578079 m!7382504))

(assert (=> b!6606487 d!2071867))

(declare-fun d!2071869 () Bool)

(assert (=> d!2071869 (= (nullable!6468 (h!72049 (exprs!6359 (h!72050 zl!343)))) (nullableFct!2393 (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun bs!1693567 () Bool)

(assert (= bs!1693567 d!2071869))

(declare-fun m!7382506 () Bool)

(assert (=> bs!1693567 m!7382506))

(assert (=> b!6606487 d!2071869))

(declare-fun b!6607479 () Bool)

(declare-fun e!3997778 () Bool)

(assert (=> b!6607479 (= e!3997778 (nullable!6468 (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))))))

(declare-fun e!3997776 () (InoxSet Context!11718))

(declare-fun call!578087 () (InoxSet Context!11718))

(declare-fun b!6607480 () Bool)

(assert (=> b!6607480 (= e!3997776 ((_ map or) call!578087 (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))) (h!72048 s!2326))))))

(declare-fun bm!578082 () Bool)

(assert (=> bm!578082 (= call!578087 (derivationStepZipperDown!1723 (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343))))))) (Context!11719 (t!379377 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))) (h!72048 s!2326)))))

(declare-fun b!6607481 () Bool)

(declare-fun e!3997777 () (InoxSet Context!11718))

(assert (=> b!6607481 (= e!3997777 ((as const (Array Context!11718 Bool)) false))))

(declare-fun b!6607482 () Bool)

(assert (=> b!6607482 (= e!3997776 e!3997777)))

(declare-fun c!1217613 () Bool)

(assert (=> b!6607482 (= c!1217613 ((_ is Cons!65601) (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343))))))))))

(declare-fun b!6607478 () Bool)

(assert (=> b!6607478 (= e!3997777 call!578087)))

(declare-fun d!2071871 () Bool)

(declare-fun c!1217612 () Bool)

(assert (=> d!2071871 (= c!1217612 e!3997778)))

(declare-fun res!2709414 () Bool)

(assert (=> d!2071871 (=> (not res!2709414) (not e!3997778))))

(assert (=> d!2071871 (= res!2709414 ((_ is Cons!65601) (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343))))))))))

(assert (=> d!2071871 (= (derivationStepZipperUp!1649 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343))))) (h!72048 s!2326)) e!3997776)))

(assert (= (and d!2071871 res!2709414) b!6607479))

(assert (= (and d!2071871 c!1217612) b!6607480))

(assert (= (and d!2071871 (not c!1217612)) b!6607482))

(assert (= (and b!6607482 c!1217613) b!6607478))

(assert (= (and b!6607482 (not c!1217613)) b!6607481))

(assert (= (or b!6607480 b!6607478) bm!578082))

(declare-fun m!7382508 () Bool)

(assert (=> b!6607479 m!7382508))

(declare-fun m!7382510 () Bool)

(assert (=> b!6607480 m!7382510))

(declare-fun m!7382512 () Bool)

(assert (=> bm!578082 m!7382512))

(assert (=> b!6606487 d!2071871))

(declare-fun b!6607484 () Bool)

(declare-fun e!3997781 () Bool)

(assert (=> b!6607484 (= e!3997781 (nullable!6468 (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun e!3997779 () (InoxSet Context!11718))

(declare-fun b!6607485 () Bool)

(declare-fun call!578088 () (InoxSet Context!11718))

(assert (=> b!6607485 (= e!3997779 ((_ map or) call!578088 (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 (h!72050 zl!343)))) (h!72048 s!2326))))))

(declare-fun bm!578083 () Bool)

(assert (=> bm!578083 (= call!578088 (derivationStepZipperDown!1723 (h!72049 (exprs!6359 (h!72050 zl!343))) (Context!11719 (t!379377 (exprs!6359 (h!72050 zl!343)))) (h!72048 s!2326)))))

(declare-fun b!6607486 () Bool)

(declare-fun e!3997780 () (InoxSet Context!11718))

(assert (=> b!6607486 (= e!3997780 ((as const (Array Context!11718 Bool)) false))))

(declare-fun b!6607487 () Bool)

(assert (=> b!6607487 (= e!3997779 e!3997780)))

(declare-fun c!1217615 () Bool)

(assert (=> b!6607487 (= c!1217615 ((_ is Cons!65601) (exprs!6359 (h!72050 zl!343))))))

(declare-fun b!6607483 () Bool)

(assert (=> b!6607483 (= e!3997780 call!578088)))

(declare-fun d!2071873 () Bool)

(declare-fun c!1217614 () Bool)

(assert (=> d!2071873 (= c!1217614 e!3997781)))

(declare-fun res!2709415 () Bool)

(assert (=> d!2071873 (=> (not res!2709415) (not e!3997781))))

(assert (=> d!2071873 (= res!2709415 ((_ is Cons!65601) (exprs!6359 (h!72050 zl!343))))))

(assert (=> d!2071873 (= (derivationStepZipperUp!1649 (h!72050 zl!343) (h!72048 s!2326)) e!3997779)))

(assert (= (and d!2071873 res!2709415) b!6607484))

(assert (= (and d!2071873 c!1217614) b!6607485))

(assert (= (and d!2071873 (not c!1217614)) b!6607487))

(assert (= (and b!6607487 c!1217615) b!6607483))

(assert (= (and b!6607487 (not c!1217615)) b!6607486))

(assert (= (or b!6607485 b!6607483) bm!578083))

(assert (=> b!6607484 m!7381666))

(declare-fun m!7382514 () Bool)

(assert (=> b!6607485 m!7382514))

(declare-fun m!7382516 () Bool)

(assert (=> bm!578083 m!7382516))

(assert (=> b!6606487 d!2071873))

(declare-fun d!2071875 () Bool)

(assert (=> d!2071875 (= (flatMap!1980 z!1189 lambda!368578) (choose!49350 z!1189 lambda!368578))))

(declare-fun bs!1693568 () Bool)

(assert (= bs!1693568 d!2071875))

(declare-fun m!7382518 () Bool)

(assert (=> bs!1693568 m!7382518))

(assert (=> b!6606487 d!2071875))

(assert (=> b!6606487 d!2071789))

(declare-fun d!2071877 () Bool)

(assert (=> d!2071877 (= (isEmpty!37878 (t!379377 (exprs!6359 (h!72050 zl!343)))) ((_ is Nil!65601) (t!379377 (exprs!6359 (h!72050 zl!343)))))))

(assert (=> b!6606528 d!2071877))

(declare-fun d!2071879 () Bool)

(declare-fun lt!2415312 () Regex!16475)

(assert (=> d!2071879 (validRegex!8211 lt!2415312)))

(assert (=> d!2071879 (= lt!2415312 (generalisedUnion!2319 (unfocusZipperList!1896 zl!343)))))

(assert (=> d!2071879 (= (unfocusZipper!2217 zl!343) lt!2415312)))

(declare-fun bs!1693569 () Bool)

(assert (= bs!1693569 d!2071879))

(declare-fun m!7382520 () Bool)

(assert (=> bs!1693569 m!7382520))

(assert (=> bs!1693569 m!7381572))

(assert (=> bs!1693569 m!7381572))

(assert (=> bs!1693569 m!7381574))

(assert (=> b!6606507 d!2071879))

(declare-fun d!2071881 () Bool)

(declare-fun c!1217616 () Bool)

(assert (=> d!2071881 (= c!1217616 (isEmpty!37882 s!2326))))

(declare-fun e!3997782 () Bool)

(assert (=> d!2071881 (= (matchZipper!2487 z!1189 s!2326) e!3997782)))

(declare-fun b!6607488 () Bool)

(assert (=> b!6607488 (= e!3997782 (nullableZipper!2220 z!1189))))

(declare-fun b!6607489 () Bool)

(assert (=> b!6607489 (= e!3997782 (matchZipper!2487 (derivationStepZipper!2441 z!1189 (head!13402 s!2326)) (tail!12487 s!2326)))))

(assert (= (and d!2071881 c!1217616) b!6607488))

(assert (= (and d!2071881 (not c!1217616)) b!6607489))

(assert (=> d!2071881 m!7382460))

(declare-fun m!7382522 () Bool)

(assert (=> b!6607488 m!7382522))

(assert (=> b!6607489 m!7382450))

(assert (=> b!6607489 m!7382450))

(declare-fun m!7382524 () Bool)

(assert (=> b!6607489 m!7382524))

(assert (=> b!6607489 m!7382454))

(assert (=> b!6607489 m!7382524))

(assert (=> b!6607489 m!7382454))

(declare-fun m!7382526 () Bool)

(assert (=> b!6607489 m!7382526))

(assert (=> b!6606509 d!2071881))

(declare-fun d!2071883 () Bool)

(declare-fun e!3997783 () Bool)

(assert (=> d!2071883 e!3997783))

(declare-fun c!1217618 () Bool)

(assert (=> d!2071883 (= c!1217618 ((_ is EmptyExpr!16475) (regTwo!33462 r!7292)))))

(declare-fun lt!2415313 () Bool)

(declare-fun e!3997789 () Bool)

(assert (=> d!2071883 (= lt!2415313 e!3997789)))

(declare-fun c!1217617 () Bool)

(assert (=> d!2071883 (= c!1217617 (isEmpty!37882 s!2326))))

(assert (=> d!2071883 (validRegex!8211 (regTwo!33462 r!7292))))

(assert (=> d!2071883 (= (matchR!8658 (regTwo!33462 r!7292) s!2326) lt!2415313)))

(declare-fun b!6607490 () Bool)

(declare-fun e!3997784 () Bool)

(assert (=> b!6607490 (= e!3997784 (= (head!13402 s!2326) (c!1217326 (regTwo!33462 r!7292))))))

(declare-fun b!6607491 () Bool)

(declare-fun e!3997786 () Bool)

(assert (=> b!6607491 (= e!3997786 (not lt!2415313))))

(declare-fun b!6607492 () Bool)

(declare-fun res!2709422 () Bool)

(assert (=> b!6607492 (=> (not res!2709422) (not e!3997784))))

(assert (=> b!6607492 (= res!2709422 (isEmpty!37882 (tail!12487 s!2326)))))

(declare-fun bm!578084 () Bool)

(declare-fun call!578089 () Bool)

(assert (=> bm!578084 (= call!578089 (isEmpty!37882 s!2326))))

(declare-fun b!6607493 () Bool)

(declare-fun e!3997788 () Bool)

(declare-fun e!3997787 () Bool)

(assert (=> b!6607493 (= e!3997788 e!3997787)))

(declare-fun res!2709423 () Bool)

(assert (=> b!6607493 (=> res!2709423 e!3997787)))

(assert (=> b!6607493 (= res!2709423 call!578089)))

(declare-fun b!6607494 () Bool)

(declare-fun res!2709421 () Bool)

(declare-fun e!3997785 () Bool)

(assert (=> b!6607494 (=> res!2709421 e!3997785)))

(assert (=> b!6607494 (= res!2709421 (not ((_ is ElementMatch!16475) (regTwo!33462 r!7292))))))

(assert (=> b!6607494 (= e!3997786 e!3997785)))

(declare-fun b!6607495 () Bool)

(assert (=> b!6607495 (= e!3997783 e!3997786)))

(declare-fun c!1217619 () Bool)

(assert (=> b!6607495 (= c!1217619 ((_ is EmptyLang!16475) (regTwo!33462 r!7292)))))

(declare-fun b!6607496 () Bool)

(assert (=> b!6607496 (= e!3997785 e!3997788)))

(declare-fun res!2709419 () Bool)

(assert (=> b!6607496 (=> (not res!2709419) (not e!3997788))))

(assert (=> b!6607496 (= res!2709419 (not lt!2415313))))

(declare-fun b!6607497 () Bool)

(declare-fun res!2709420 () Bool)

(assert (=> b!6607497 (=> res!2709420 e!3997785)))

(assert (=> b!6607497 (= res!2709420 e!3997784)))

(declare-fun res!2709417 () Bool)

(assert (=> b!6607497 (=> (not res!2709417) (not e!3997784))))

(assert (=> b!6607497 (= res!2709417 lt!2415313)))

(declare-fun b!6607498 () Bool)

(assert (=> b!6607498 (= e!3997789 (matchR!8658 (derivativeStep!5159 (regTwo!33462 r!7292) (head!13402 s!2326)) (tail!12487 s!2326)))))

(declare-fun b!6607499 () Bool)

(declare-fun res!2709418 () Bool)

(assert (=> b!6607499 (=> res!2709418 e!3997787)))

(assert (=> b!6607499 (= res!2709418 (not (isEmpty!37882 (tail!12487 s!2326))))))

(declare-fun b!6607500 () Bool)

(assert (=> b!6607500 (= e!3997789 (nullable!6468 (regTwo!33462 r!7292)))))

(declare-fun b!6607501 () Bool)

(declare-fun res!2709416 () Bool)

(assert (=> b!6607501 (=> (not res!2709416) (not e!3997784))))

(assert (=> b!6607501 (= res!2709416 (not call!578089))))

(declare-fun b!6607502 () Bool)

(assert (=> b!6607502 (= e!3997783 (= lt!2415313 call!578089))))

(declare-fun b!6607503 () Bool)

(assert (=> b!6607503 (= e!3997787 (not (= (head!13402 s!2326) (c!1217326 (regTwo!33462 r!7292)))))))

(assert (= (and d!2071883 c!1217617) b!6607500))

(assert (= (and d!2071883 (not c!1217617)) b!6607498))

(assert (= (and d!2071883 c!1217618) b!6607502))

(assert (= (and d!2071883 (not c!1217618)) b!6607495))

(assert (= (and b!6607495 c!1217619) b!6607491))

(assert (= (and b!6607495 (not c!1217619)) b!6607494))

(assert (= (and b!6607494 (not res!2709421)) b!6607497))

(assert (= (and b!6607497 res!2709417) b!6607501))

(assert (= (and b!6607501 res!2709416) b!6607492))

(assert (= (and b!6607492 res!2709422) b!6607490))

(assert (= (and b!6607497 (not res!2709420)) b!6607496))

(assert (= (and b!6607496 res!2709419) b!6607493))

(assert (= (and b!6607493 (not res!2709423)) b!6607499))

(assert (= (and b!6607499 (not res!2709418)) b!6607503))

(assert (= (or b!6607502 b!6607493 b!6607501) bm!578084))

(assert (=> b!6607498 m!7382450))

(assert (=> b!6607498 m!7382450))

(declare-fun m!7382528 () Bool)

(assert (=> b!6607498 m!7382528))

(assert (=> b!6607498 m!7382454))

(assert (=> b!6607498 m!7382528))

(assert (=> b!6607498 m!7382454))

(declare-fun m!7382530 () Bool)

(assert (=> b!6607498 m!7382530))

(declare-fun m!7382532 () Bool)

(assert (=> b!6607500 m!7382532))

(assert (=> bm!578084 m!7382460))

(assert (=> b!6607490 m!7382450))

(assert (=> b!6607492 m!7382454))

(assert (=> b!6607492 m!7382454))

(assert (=> b!6607492 m!7382462))

(assert (=> d!2071883 m!7382460))

(assert (=> d!2071883 m!7381716))

(assert (=> b!6607503 m!7382450))

(assert (=> b!6607499 m!7382454))

(assert (=> b!6607499 m!7382454))

(assert (=> b!6607499 m!7382462))

(assert (=> b!6606510 d!2071883))

(declare-fun d!2071885 () Bool)

(declare-fun e!3997790 () Bool)

(assert (=> d!2071885 e!3997790))

(declare-fun c!1217621 () Bool)

(assert (=> d!2071885 (= c!1217621 ((_ is EmptyExpr!16475) lt!2415131))))

(declare-fun lt!2415314 () Bool)

(declare-fun e!3997796 () Bool)

(assert (=> d!2071885 (= lt!2415314 e!3997796)))

(declare-fun c!1217620 () Bool)

(assert (=> d!2071885 (= c!1217620 (isEmpty!37882 s!2326))))

(assert (=> d!2071885 (validRegex!8211 lt!2415131)))

(assert (=> d!2071885 (= (matchR!8658 lt!2415131 s!2326) lt!2415314)))

(declare-fun b!6607504 () Bool)

(declare-fun e!3997791 () Bool)

(assert (=> b!6607504 (= e!3997791 (= (head!13402 s!2326) (c!1217326 lt!2415131)))))

(declare-fun b!6607505 () Bool)

(declare-fun e!3997793 () Bool)

(assert (=> b!6607505 (= e!3997793 (not lt!2415314))))

(declare-fun b!6607506 () Bool)

(declare-fun res!2709430 () Bool)

(assert (=> b!6607506 (=> (not res!2709430) (not e!3997791))))

(assert (=> b!6607506 (= res!2709430 (isEmpty!37882 (tail!12487 s!2326)))))

(declare-fun bm!578085 () Bool)

(declare-fun call!578090 () Bool)

(assert (=> bm!578085 (= call!578090 (isEmpty!37882 s!2326))))

(declare-fun b!6607507 () Bool)

(declare-fun e!3997795 () Bool)

(declare-fun e!3997794 () Bool)

(assert (=> b!6607507 (= e!3997795 e!3997794)))

(declare-fun res!2709431 () Bool)

(assert (=> b!6607507 (=> res!2709431 e!3997794)))

(assert (=> b!6607507 (= res!2709431 call!578090)))

(declare-fun b!6607508 () Bool)

(declare-fun res!2709429 () Bool)

(declare-fun e!3997792 () Bool)

(assert (=> b!6607508 (=> res!2709429 e!3997792)))

(assert (=> b!6607508 (= res!2709429 (not ((_ is ElementMatch!16475) lt!2415131)))))

(assert (=> b!6607508 (= e!3997793 e!3997792)))

(declare-fun b!6607509 () Bool)

(assert (=> b!6607509 (= e!3997790 e!3997793)))

(declare-fun c!1217622 () Bool)

(assert (=> b!6607509 (= c!1217622 ((_ is EmptyLang!16475) lt!2415131))))

(declare-fun b!6607510 () Bool)

(assert (=> b!6607510 (= e!3997792 e!3997795)))

(declare-fun res!2709427 () Bool)

(assert (=> b!6607510 (=> (not res!2709427) (not e!3997795))))

(assert (=> b!6607510 (= res!2709427 (not lt!2415314))))

(declare-fun b!6607511 () Bool)

(declare-fun res!2709428 () Bool)

(assert (=> b!6607511 (=> res!2709428 e!3997792)))

(assert (=> b!6607511 (= res!2709428 e!3997791)))

(declare-fun res!2709425 () Bool)

(assert (=> b!6607511 (=> (not res!2709425) (not e!3997791))))

(assert (=> b!6607511 (= res!2709425 lt!2415314)))

(declare-fun b!6607512 () Bool)

(assert (=> b!6607512 (= e!3997796 (matchR!8658 (derivativeStep!5159 lt!2415131 (head!13402 s!2326)) (tail!12487 s!2326)))))

(declare-fun b!6607513 () Bool)

(declare-fun res!2709426 () Bool)

(assert (=> b!6607513 (=> res!2709426 e!3997794)))

(assert (=> b!6607513 (= res!2709426 (not (isEmpty!37882 (tail!12487 s!2326))))))

(declare-fun b!6607514 () Bool)

(assert (=> b!6607514 (= e!3997796 (nullable!6468 lt!2415131))))

(declare-fun b!6607515 () Bool)

(declare-fun res!2709424 () Bool)

(assert (=> b!6607515 (=> (not res!2709424) (not e!3997791))))

(assert (=> b!6607515 (= res!2709424 (not call!578090))))

(declare-fun b!6607516 () Bool)

(assert (=> b!6607516 (= e!3997790 (= lt!2415314 call!578090))))

(declare-fun b!6607517 () Bool)

(assert (=> b!6607517 (= e!3997794 (not (= (head!13402 s!2326) (c!1217326 lt!2415131))))))

(assert (= (and d!2071885 c!1217620) b!6607514))

(assert (= (and d!2071885 (not c!1217620)) b!6607512))

(assert (= (and d!2071885 c!1217621) b!6607516))

(assert (= (and d!2071885 (not c!1217621)) b!6607509))

(assert (= (and b!6607509 c!1217622) b!6607505))

(assert (= (and b!6607509 (not c!1217622)) b!6607508))

(assert (= (and b!6607508 (not res!2709429)) b!6607511))

(assert (= (and b!6607511 res!2709425) b!6607515))

(assert (= (and b!6607515 res!2709424) b!6607506))

(assert (= (and b!6607506 res!2709430) b!6607504))

(assert (= (and b!6607511 (not res!2709428)) b!6607510))

(assert (= (and b!6607510 res!2709427) b!6607507))

(assert (= (and b!6607507 (not res!2709431)) b!6607513))

(assert (= (and b!6607513 (not res!2709426)) b!6607517))

(assert (= (or b!6607516 b!6607507 b!6607515) bm!578085))

(assert (=> b!6607512 m!7382450))

(assert (=> b!6607512 m!7382450))

(declare-fun m!7382534 () Bool)

(assert (=> b!6607512 m!7382534))

(assert (=> b!6607512 m!7382454))

(assert (=> b!6607512 m!7382534))

(assert (=> b!6607512 m!7382454))

(declare-fun m!7382536 () Bool)

(assert (=> b!6607512 m!7382536))

(declare-fun m!7382538 () Bool)

(assert (=> b!6607514 m!7382538))

(assert (=> bm!578085 m!7382460))

(assert (=> b!6607504 m!7382450))

(assert (=> b!6607506 m!7382454))

(assert (=> b!6607506 m!7382454))

(assert (=> b!6607506 m!7382462))

(assert (=> d!2071885 m!7382460))

(declare-fun m!7382540 () Bool)

(assert (=> d!2071885 m!7382540))

(assert (=> b!6607517 m!7382450))

(assert (=> b!6607513 m!7382454))

(assert (=> b!6607513 m!7382454))

(assert (=> b!6607513 m!7382462))

(assert (=> b!6606510 d!2071885))

(declare-fun d!2071887 () Bool)

(declare-fun c!1217623 () Bool)

(assert (=> d!2071887 (= c!1217623 (isEmpty!37882 s!2326))))

(declare-fun e!3997797 () Bool)

(assert (=> d!2071887 (= (matchZipper!2487 lt!2415147 s!2326) e!3997797)))

(declare-fun b!6607518 () Bool)

(assert (=> b!6607518 (= e!3997797 (nullableZipper!2220 lt!2415147))))

(declare-fun b!6607519 () Bool)

(assert (=> b!6607519 (= e!3997797 (matchZipper!2487 (derivationStepZipper!2441 lt!2415147 (head!13402 s!2326)) (tail!12487 s!2326)))))

(assert (= (and d!2071887 c!1217623) b!6607518))

(assert (= (and d!2071887 (not c!1217623)) b!6607519))

(assert (=> d!2071887 m!7382460))

(declare-fun m!7382542 () Bool)

(assert (=> b!6607518 m!7382542))

(assert (=> b!6607519 m!7382450))

(assert (=> b!6607519 m!7382450))

(declare-fun m!7382544 () Bool)

(assert (=> b!6607519 m!7382544))

(assert (=> b!6607519 m!7382454))

(assert (=> b!6607519 m!7382544))

(assert (=> b!6607519 m!7382454))

(declare-fun m!7382546 () Bool)

(assert (=> b!6607519 m!7382546))

(assert (=> b!6606510 d!2071887))

(declare-fun d!2071889 () Bool)

(assert (=> d!2071889 (= (matchR!8658 lt!2415131 s!2326) (matchZipper!2487 lt!2415147 s!2326))))

(declare-fun lt!2415317 () Unit!159235)

(declare-fun choose!49358 ((InoxSet Context!11718) List!65726 Regex!16475 List!65724) Unit!159235)

(assert (=> d!2071889 (= lt!2415317 (choose!49358 lt!2415147 lt!2415114 lt!2415131 s!2326))))

(assert (=> d!2071889 (validRegex!8211 lt!2415131)))

(assert (=> d!2071889 (= (theoremZipperRegexEquiv!897 lt!2415147 lt!2415114 lt!2415131 s!2326) lt!2415317)))

(declare-fun bs!1693570 () Bool)

(assert (= bs!1693570 d!2071889))

(assert (=> bs!1693570 m!7381618))

(assert (=> bs!1693570 m!7381620))

(declare-fun m!7382548 () Bool)

(assert (=> bs!1693570 m!7382548))

(assert (=> bs!1693570 m!7382540))

(assert (=> b!6606510 d!2071889))

(assert (=> b!6606490 d!2071817))

(declare-fun d!2071891 () Bool)

(declare-fun lt!2415318 () Regex!16475)

(assert (=> d!2071891 (validRegex!8211 lt!2415318)))

(assert (=> d!2071891 (= lt!2415318 (generalisedUnion!2319 (unfocusZipperList!1896 (Cons!65602 lt!2415130 Nil!65602))))))

(assert (=> d!2071891 (= (unfocusZipper!2217 (Cons!65602 lt!2415130 Nil!65602)) lt!2415318)))

(declare-fun bs!1693571 () Bool)

(assert (= bs!1693571 d!2071891))

(declare-fun m!7382550 () Bool)

(assert (=> bs!1693571 m!7382550))

(declare-fun m!7382552 () Bool)

(assert (=> bs!1693571 m!7382552))

(assert (=> bs!1693571 m!7382552))

(declare-fun m!7382554 () Bool)

(assert (=> bs!1693571 m!7382554))

(assert (=> b!6606489 d!2071891))

(declare-fun bs!1693572 () Bool)

(declare-fun b!6607530 () Bool)

(assert (= bs!1693572 (and b!6607530 d!2071761)))

(declare-fun lambda!368692 () Int)

(assert (=> bs!1693572 (not (= lambda!368692 lambda!368653))))

(declare-fun bs!1693573 () Bool)

(assert (= bs!1693573 (and b!6607530 b!6606503)))

(assert (=> bs!1693573 (not (= lambda!368692 lambda!368580))))

(assert (=> bs!1693573 (= (and (= s!2326 Nil!65600) (= (reg!16804 r!7292) (reg!16804 (regOne!33462 r!7292))) (= r!7292 lt!2415134)) (= lambda!368692 lambda!368581))))

(assert (=> bs!1693573 (not (= lambda!368692 lambda!368579))))

(declare-fun bs!1693574 () Bool)

(assert (= bs!1693574 (and b!6607530 d!2071833)))

(assert (=> bs!1693574 (= (and (= s!2326 Nil!65600) (= (reg!16804 r!7292) (reg!16804 (regOne!33462 r!7292))) (= r!7292 (Star!16475 (reg!16804 (regOne!33462 r!7292))))) (= lambda!368692 lambda!368687))))

(declare-fun bs!1693575 () Bool)

(assert (= bs!1693575 (and b!6607530 d!2071841)))

(assert (=> bs!1693575 (not (= lambda!368692 lambda!368688))))

(declare-fun bs!1693576 () Bool)

(assert (= bs!1693576 (and b!6607530 d!2071823)))

(assert (=> bs!1693576 (not (= lambda!368692 lambda!368675))))

(declare-fun bs!1693577 () Bool)

(assert (= bs!1693577 (and b!6607530 b!6607454)))

(assert (=> bs!1693577 (= (and (= (reg!16804 r!7292) (reg!16804 lt!2415143)) (= r!7292 lt!2415143)) (= lambda!368692 lambda!368690))))

(assert (=> bs!1693572 (not (= lambda!368692 lambda!368654))))

(declare-fun bs!1693578 () Bool)

(assert (= bs!1693578 (and b!6607530 b!6607397)))

(assert (=> bs!1693578 (not (= lambda!368692 lambda!368681))))

(declare-fun bs!1693579 () Bool)

(assert (= bs!1693579 (and b!6607530 b!6606515)))

(assert (=> bs!1693579 (not (= lambda!368692 lambda!368576))))

(assert (=> bs!1693579 (not (= lambda!368692 lambda!368577))))

(assert (=> bs!1693576 (not (= lambda!368692 lambda!368674))))

(declare-fun bs!1693580 () Bool)

(assert (= bs!1693580 (and b!6607530 d!2071755)))

(assert (=> bs!1693580 (not (= lambda!368692 lambda!368648))))

(assert (=> bs!1693574 (not (= lambda!368692 lambda!368686))))

(declare-fun bs!1693581 () Bool)

(assert (= bs!1693581 (and b!6607530 b!6607405)))

(assert (=> bs!1693581 (= (and (= s!2326 Nil!65600) (= (reg!16804 r!7292) (reg!16804 lt!2415134)) (= r!7292 lt!2415134)) (= lambda!368692 lambda!368680))))

(declare-fun bs!1693582 () Bool)

(assert (= bs!1693582 (and b!6607530 b!6607446)))

(assert (=> bs!1693582 (not (= lambda!368692 lambda!368691))))

(assert (=> b!6607530 true))

(assert (=> b!6607530 true))

(declare-fun bs!1693583 () Bool)

(declare-fun b!6607522 () Bool)

(assert (= bs!1693583 (and b!6607522 d!2071761)))

(declare-fun lambda!368693 () Int)

(assert (=> bs!1693583 (not (= lambda!368693 lambda!368653))))

(declare-fun bs!1693584 () Bool)

(assert (= bs!1693584 (and b!6607522 b!6606503)))

(assert (=> bs!1693584 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 r!7292) lt!2415134)) (= lambda!368693 lambda!368580))))

(assert (=> bs!1693584 (not (= lambda!368693 lambda!368581))))

(assert (=> bs!1693584 (not (= lambda!368693 lambda!368579))))

(declare-fun bs!1693585 () Bool)

(assert (= bs!1693585 (and b!6607522 b!6607530)))

(assert (=> bs!1693585 (not (= lambda!368693 lambda!368692))))

(declare-fun bs!1693586 () Bool)

(assert (= bs!1693586 (and b!6607522 d!2071833)))

(assert (=> bs!1693586 (not (= lambda!368693 lambda!368687))))

(declare-fun bs!1693587 () Bool)

(assert (= bs!1693587 (and b!6607522 d!2071841)))

(assert (=> bs!1693587 (not (= lambda!368693 lambda!368688))))

(declare-fun bs!1693588 () Bool)

(assert (= bs!1693588 (and b!6607522 d!2071823)))

(assert (=> bs!1693588 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 r!7292) lt!2415134)) (= lambda!368693 lambda!368675))))

(declare-fun bs!1693589 () Bool)

(assert (= bs!1693589 (and b!6607522 b!6607454)))

(assert (=> bs!1693589 (not (= lambda!368693 lambda!368690))))

(assert (=> bs!1693583 (= lambda!368693 lambda!368654)))

(declare-fun bs!1693590 () Bool)

(assert (= bs!1693590 (and b!6607522 b!6607397)))

(assert (=> bs!1693590 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (regOne!33462 lt!2415134)) (= (regTwo!33462 r!7292) (regTwo!33462 lt!2415134))) (= lambda!368693 lambda!368681))))

(declare-fun bs!1693591 () Bool)

(assert (= bs!1693591 (and b!6607522 b!6606515)))

(assert (=> bs!1693591 (not (= lambda!368693 lambda!368576))))

(assert (=> bs!1693591 (= lambda!368693 lambda!368577)))

(assert (=> bs!1693588 (not (= lambda!368693 lambda!368674))))

(declare-fun bs!1693592 () Bool)

(assert (= bs!1693592 (and b!6607522 d!2071755)))

(assert (=> bs!1693592 (not (= lambda!368693 lambda!368648))))

(assert (=> bs!1693586 (not (= lambda!368693 lambda!368686))))

(declare-fun bs!1693593 () Bool)

(assert (= bs!1693593 (and b!6607522 b!6607405)))

(assert (=> bs!1693593 (not (= lambda!368693 lambda!368680))))

(declare-fun bs!1693594 () Bool)

(assert (= bs!1693594 (and b!6607522 b!6607446)))

(assert (=> bs!1693594 (= (and (= (regOne!33462 r!7292) (regOne!33462 lt!2415143)) (= (regTwo!33462 r!7292) (regTwo!33462 lt!2415143))) (= lambda!368693 lambda!368691))))

(assert (=> b!6607522 true))

(assert (=> b!6607522 true))

(declare-fun b!6607520 () Bool)

(declare-fun e!3997804 () Bool)

(declare-fun e!3997800 () Bool)

(assert (=> b!6607520 (= e!3997804 e!3997800)))

(declare-fun c!1217624 () Bool)

(assert (=> b!6607520 (= c!1217624 ((_ is Star!16475) r!7292))))

(declare-fun b!6607521 () Bool)

(declare-fun e!3997798 () Bool)

(declare-fun call!578092 () Bool)

(assert (=> b!6607521 (= e!3997798 call!578092)))

(declare-fun call!578091 () Bool)

(assert (=> b!6607522 (= e!3997800 call!578091)))

(declare-fun b!6607523 () Bool)

(declare-fun c!1217626 () Bool)

(assert (=> b!6607523 (= c!1217626 ((_ is ElementMatch!16475) r!7292))))

(declare-fun e!3997802 () Bool)

(declare-fun e!3997799 () Bool)

(assert (=> b!6607523 (= e!3997802 e!3997799)))

(declare-fun b!6607525 () Bool)

(declare-fun res!2709432 () Bool)

(declare-fun e!3997801 () Bool)

(assert (=> b!6607525 (=> res!2709432 e!3997801)))

(assert (=> b!6607525 (= res!2709432 call!578092)))

(assert (=> b!6607525 (= e!3997800 e!3997801)))

(declare-fun b!6607526 () Bool)

(assert (=> b!6607526 (= e!3997799 (= s!2326 (Cons!65600 (c!1217326 r!7292) Nil!65600)))))

(declare-fun bm!578086 () Bool)

(assert (=> bm!578086 (= call!578092 (isEmpty!37882 s!2326))))

(declare-fun b!6607527 () Bool)

(declare-fun c!1217627 () Bool)

(assert (=> b!6607527 (= c!1217627 ((_ is Union!16475) r!7292))))

(assert (=> b!6607527 (= e!3997799 e!3997804)))

(declare-fun b!6607528 () Bool)

(declare-fun e!3997803 () Bool)

(assert (=> b!6607528 (= e!3997803 (matchRSpec!3576 (regTwo!33463 r!7292) s!2326))))

(declare-fun bm!578087 () Bool)

(assert (=> bm!578087 (= call!578091 (Exists!3545 (ite c!1217624 lambda!368692 lambda!368693)))))

(declare-fun b!6607529 () Bool)

(assert (=> b!6607529 (= e!3997798 e!3997802)))

(declare-fun res!2709433 () Bool)

(assert (=> b!6607529 (= res!2709433 (not ((_ is EmptyLang!16475) r!7292)))))

(assert (=> b!6607529 (=> (not res!2709433) (not e!3997802))))

(assert (=> b!6607530 (= e!3997801 call!578091)))

(declare-fun b!6607524 () Bool)

(assert (=> b!6607524 (= e!3997804 e!3997803)))

(declare-fun res!2709434 () Bool)

(assert (=> b!6607524 (= res!2709434 (matchRSpec!3576 (regOne!33463 r!7292) s!2326))))

(assert (=> b!6607524 (=> res!2709434 e!3997803)))

(declare-fun d!2071893 () Bool)

(declare-fun c!1217625 () Bool)

(assert (=> d!2071893 (= c!1217625 ((_ is EmptyExpr!16475) r!7292))))

(assert (=> d!2071893 (= (matchRSpec!3576 r!7292 s!2326) e!3997798)))

(assert (= (and d!2071893 c!1217625) b!6607521))

(assert (= (and d!2071893 (not c!1217625)) b!6607529))

(assert (= (and b!6607529 res!2709433) b!6607523))

(assert (= (and b!6607523 c!1217626) b!6607526))

(assert (= (and b!6607523 (not c!1217626)) b!6607527))

(assert (= (and b!6607527 c!1217627) b!6607524))

(assert (= (and b!6607527 (not c!1217627)) b!6607520))

(assert (= (and b!6607524 (not res!2709434)) b!6607528))

(assert (= (and b!6607520 c!1217624) b!6607525))

(assert (= (and b!6607520 (not c!1217624)) b!6607522))

(assert (= (and b!6607525 (not res!2709432)) b!6607530))

(assert (= (or b!6607530 b!6607522) bm!578087))

(assert (= (or b!6607521 b!6607525) bm!578086))

(assert (=> bm!578086 m!7382460))

(declare-fun m!7382556 () Bool)

(assert (=> b!6607528 m!7382556))

(declare-fun m!7382558 () Bool)

(assert (=> bm!578087 m!7382558))

(declare-fun m!7382560 () Bool)

(assert (=> b!6607524 m!7382560))

(assert (=> b!6606491 d!2071893))

(declare-fun d!2071895 () Bool)

(declare-fun e!3997805 () Bool)

(assert (=> d!2071895 e!3997805))

(declare-fun c!1217629 () Bool)

(assert (=> d!2071895 (= c!1217629 ((_ is EmptyExpr!16475) r!7292))))

(declare-fun lt!2415319 () Bool)

(declare-fun e!3997811 () Bool)

(assert (=> d!2071895 (= lt!2415319 e!3997811)))

(declare-fun c!1217628 () Bool)

(assert (=> d!2071895 (= c!1217628 (isEmpty!37882 s!2326))))

(assert (=> d!2071895 (validRegex!8211 r!7292)))

(assert (=> d!2071895 (= (matchR!8658 r!7292 s!2326) lt!2415319)))

(declare-fun b!6607531 () Bool)

(declare-fun e!3997806 () Bool)

(assert (=> b!6607531 (= e!3997806 (= (head!13402 s!2326) (c!1217326 r!7292)))))

(declare-fun b!6607532 () Bool)

(declare-fun e!3997808 () Bool)

(assert (=> b!6607532 (= e!3997808 (not lt!2415319))))

(declare-fun b!6607533 () Bool)

(declare-fun res!2709441 () Bool)

(assert (=> b!6607533 (=> (not res!2709441) (not e!3997806))))

(assert (=> b!6607533 (= res!2709441 (isEmpty!37882 (tail!12487 s!2326)))))

(declare-fun bm!578088 () Bool)

(declare-fun call!578093 () Bool)

(assert (=> bm!578088 (= call!578093 (isEmpty!37882 s!2326))))

(declare-fun b!6607534 () Bool)

(declare-fun e!3997810 () Bool)

(declare-fun e!3997809 () Bool)

(assert (=> b!6607534 (= e!3997810 e!3997809)))

(declare-fun res!2709442 () Bool)

(assert (=> b!6607534 (=> res!2709442 e!3997809)))

(assert (=> b!6607534 (= res!2709442 call!578093)))

(declare-fun b!6607535 () Bool)

(declare-fun res!2709440 () Bool)

(declare-fun e!3997807 () Bool)

(assert (=> b!6607535 (=> res!2709440 e!3997807)))

(assert (=> b!6607535 (= res!2709440 (not ((_ is ElementMatch!16475) r!7292)))))

(assert (=> b!6607535 (= e!3997808 e!3997807)))

(declare-fun b!6607536 () Bool)

(assert (=> b!6607536 (= e!3997805 e!3997808)))

(declare-fun c!1217630 () Bool)

(assert (=> b!6607536 (= c!1217630 ((_ is EmptyLang!16475) r!7292))))

(declare-fun b!6607537 () Bool)

(assert (=> b!6607537 (= e!3997807 e!3997810)))

(declare-fun res!2709438 () Bool)

(assert (=> b!6607537 (=> (not res!2709438) (not e!3997810))))

(assert (=> b!6607537 (= res!2709438 (not lt!2415319))))

(declare-fun b!6607538 () Bool)

(declare-fun res!2709439 () Bool)

(assert (=> b!6607538 (=> res!2709439 e!3997807)))

(assert (=> b!6607538 (= res!2709439 e!3997806)))

(declare-fun res!2709436 () Bool)

(assert (=> b!6607538 (=> (not res!2709436) (not e!3997806))))

(assert (=> b!6607538 (= res!2709436 lt!2415319)))

(declare-fun b!6607539 () Bool)

(assert (=> b!6607539 (= e!3997811 (matchR!8658 (derivativeStep!5159 r!7292 (head!13402 s!2326)) (tail!12487 s!2326)))))

(declare-fun b!6607540 () Bool)

(declare-fun res!2709437 () Bool)

(assert (=> b!6607540 (=> res!2709437 e!3997809)))

(assert (=> b!6607540 (= res!2709437 (not (isEmpty!37882 (tail!12487 s!2326))))))

(declare-fun b!6607541 () Bool)

(assert (=> b!6607541 (= e!3997811 (nullable!6468 r!7292))))

(declare-fun b!6607542 () Bool)

(declare-fun res!2709435 () Bool)

(assert (=> b!6607542 (=> (not res!2709435) (not e!3997806))))

(assert (=> b!6607542 (= res!2709435 (not call!578093))))

(declare-fun b!6607543 () Bool)

(assert (=> b!6607543 (= e!3997805 (= lt!2415319 call!578093))))

(declare-fun b!6607544 () Bool)

(assert (=> b!6607544 (= e!3997809 (not (= (head!13402 s!2326) (c!1217326 r!7292))))))

(assert (= (and d!2071895 c!1217628) b!6607541))

(assert (= (and d!2071895 (not c!1217628)) b!6607539))

(assert (= (and d!2071895 c!1217629) b!6607543))

(assert (= (and d!2071895 (not c!1217629)) b!6607536))

(assert (= (and b!6607536 c!1217630) b!6607532))

(assert (= (and b!6607536 (not c!1217630)) b!6607535))

(assert (= (and b!6607535 (not res!2709440)) b!6607538))

(assert (= (and b!6607538 res!2709436) b!6607542))

(assert (= (and b!6607542 res!2709435) b!6607533))

(assert (= (and b!6607533 res!2709441) b!6607531))

(assert (= (and b!6607538 (not res!2709439)) b!6607537))

(assert (= (and b!6607537 res!2709438) b!6607534))

(assert (= (and b!6607534 (not res!2709442)) b!6607540))

(assert (= (and b!6607540 (not res!2709437)) b!6607544))

(assert (= (or b!6607543 b!6607534 b!6607542) bm!578088))

(assert (=> b!6607539 m!7382450))

(assert (=> b!6607539 m!7382450))

(declare-fun m!7382562 () Bool)

(assert (=> b!6607539 m!7382562))

(assert (=> b!6607539 m!7382454))

(assert (=> b!6607539 m!7382562))

(assert (=> b!6607539 m!7382454))

(declare-fun m!7382564 () Bool)

(assert (=> b!6607539 m!7382564))

(declare-fun m!7382566 () Bool)

(assert (=> b!6607541 m!7382566))

(assert (=> bm!578088 m!7382460))

(assert (=> b!6607531 m!7382450))

(assert (=> b!6607533 m!7382454))

(assert (=> b!6607533 m!7382454))

(assert (=> b!6607533 m!7382462))

(assert (=> d!2071895 m!7382460))

(assert (=> d!2071895 m!7381728))

(assert (=> b!6607544 m!7382450))

(assert (=> b!6607540 m!7382454))

(assert (=> b!6607540 m!7382454))

(assert (=> b!6607540 m!7382462))

(assert (=> b!6606491 d!2071895))

(declare-fun d!2071897 () Bool)

(assert (=> d!2071897 (= (matchR!8658 r!7292 s!2326) (matchRSpec!3576 r!7292 s!2326))))

(declare-fun lt!2415320 () Unit!159235)

(assert (=> d!2071897 (= lt!2415320 (choose!49355 r!7292 s!2326))))

(assert (=> d!2071897 (validRegex!8211 r!7292)))

(assert (=> d!2071897 (= (mainMatchTheorem!3576 r!7292 s!2326) lt!2415320)))

(declare-fun bs!1693595 () Bool)

(assert (= bs!1693595 d!2071897))

(assert (=> bs!1693595 m!7381582))

(assert (=> bs!1693595 m!7381580))

(declare-fun m!7382568 () Bool)

(assert (=> bs!1693595 m!7382568))

(assert (=> bs!1693595 m!7381728))

(assert (=> b!6606491 d!2071897))

(declare-fun d!2071899 () Bool)

(declare-fun c!1217631 () Bool)

(assert (=> d!2071899 (= c!1217631 (isEmpty!37882 s!2326))))

(declare-fun e!3997812 () Bool)

(assert (=> d!2071899 (= (matchZipper!2487 lt!2415126 s!2326) e!3997812)))

(declare-fun b!6607545 () Bool)

(assert (=> b!6607545 (= e!3997812 (nullableZipper!2220 lt!2415126))))

(declare-fun b!6607546 () Bool)

(assert (=> b!6607546 (= e!3997812 (matchZipper!2487 (derivationStepZipper!2441 lt!2415126 (head!13402 s!2326)) (tail!12487 s!2326)))))

(assert (= (and d!2071899 c!1217631) b!6607545))

(assert (= (and d!2071899 (not c!1217631)) b!6607546))

(assert (=> d!2071899 m!7382460))

(declare-fun m!7382570 () Bool)

(assert (=> b!6607545 m!7382570))

(assert (=> b!6607546 m!7382450))

(assert (=> b!6607546 m!7382450))

(declare-fun m!7382572 () Bool)

(assert (=> b!6607546 m!7382572))

(assert (=> b!6607546 m!7382454))

(assert (=> b!6607546 m!7382572))

(assert (=> b!6607546 m!7382454))

(declare-fun m!7382574 () Bool)

(assert (=> b!6607546 m!7382574))

(assert (=> b!6606511 d!2071899))

(declare-fun d!2071901 () Bool)

(declare-fun c!1217632 () Bool)

(assert (=> d!2071901 (= c!1217632 (isEmpty!37882 (t!379376 s!2326)))))

(declare-fun e!3997813 () Bool)

(assert (=> d!2071901 (= (matchZipper!2487 lt!2415138 (t!379376 s!2326)) e!3997813)))

(declare-fun b!6607547 () Bool)

(assert (=> b!6607547 (= e!3997813 (nullableZipper!2220 lt!2415138))))

(declare-fun b!6607548 () Bool)

(assert (=> b!6607548 (= e!3997813 (matchZipper!2487 (derivationStepZipper!2441 lt!2415138 (head!13402 (t!379376 s!2326))) (tail!12487 (t!379376 s!2326))))))

(assert (= (and d!2071901 c!1217632) b!6607547))

(assert (= (and d!2071901 (not c!1217632)) b!6607548))

(assert (=> d!2071901 m!7382288))

(declare-fun m!7382576 () Bool)

(assert (=> b!6607547 m!7382576))

(assert (=> b!6607548 m!7382292))

(assert (=> b!6607548 m!7382292))

(declare-fun m!7382578 () Bool)

(assert (=> b!6607548 m!7382578))

(assert (=> b!6607548 m!7382296))

(assert (=> b!6607548 m!7382578))

(assert (=> b!6607548 m!7382296))

(declare-fun m!7382580 () Bool)

(assert (=> b!6607548 m!7382580))

(assert (=> b!6606511 d!2071901))

(declare-fun bs!1693596 () Bool)

(declare-fun d!2071903 () Bool)

(assert (= bs!1693596 (and d!2071903 d!2071653)))

(declare-fun lambda!368696 () Int)

(assert (=> bs!1693596 (= lambda!368696 lambda!368603)))

(declare-fun bs!1693597 () Bool)

(assert (= bs!1693597 (and d!2071903 d!2071661)))

(assert (=> bs!1693597 (= lambda!368696 lambda!368608)))

(declare-fun bs!1693598 () Bool)

(assert (= bs!1693598 (and d!2071903 d!2071783)))

(assert (=> bs!1693598 (= lambda!368696 lambda!368660)))

(declare-fun bs!1693599 () Bool)

(assert (= bs!1693599 (and d!2071903 d!2071851)))

(assert (=> bs!1693599 (= lambda!368696 lambda!368689)))

(declare-fun b!6607569 () Bool)

(declare-fun e!3997830 () Bool)

(declare-fun lt!2415323 () Regex!16475)

(declare-fun isEmptyExpr!1853 (Regex!16475) Bool)

(assert (=> b!6607569 (= e!3997830 (isEmptyExpr!1853 lt!2415323))))

(declare-fun b!6607570 () Bool)

(declare-fun e!3997827 () Regex!16475)

(assert (=> b!6607570 (= e!3997827 EmptyExpr!16475)))

(declare-fun b!6607571 () Bool)

(declare-fun e!3997829 () Regex!16475)

(assert (=> b!6607571 (= e!3997829 e!3997827)))

(declare-fun c!1217643 () Bool)

(assert (=> b!6607571 (= c!1217643 ((_ is Cons!65601) (exprs!6359 (h!72050 zl!343))))))

(declare-fun b!6607572 () Bool)

(declare-fun e!3997826 () Bool)

(assert (=> b!6607572 (= e!3997830 e!3997826)))

(declare-fun c!1217644 () Bool)

(assert (=> b!6607572 (= c!1217644 (isEmpty!37878 (tail!12486 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun b!6607573 () Bool)

(declare-fun e!3997828 () Bool)

(assert (=> b!6607573 (= e!3997828 (isEmpty!37878 (t!379377 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun b!6607574 () Bool)

(assert (=> b!6607574 (= e!3997826 (= lt!2415323 (head!13401 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun b!6607575 () Bool)

(declare-fun e!3997831 () Bool)

(assert (=> b!6607575 (= e!3997831 e!3997830)))

(declare-fun c!1217642 () Bool)

(assert (=> b!6607575 (= c!1217642 (isEmpty!37878 (exprs!6359 (h!72050 zl!343))))))

(assert (=> d!2071903 e!3997831))

(declare-fun res!2709447 () Bool)

(assert (=> d!2071903 (=> (not res!2709447) (not e!3997831))))

(assert (=> d!2071903 (= res!2709447 (validRegex!8211 lt!2415323))))

(assert (=> d!2071903 (= lt!2415323 e!3997829)))

(declare-fun c!1217641 () Bool)

(assert (=> d!2071903 (= c!1217641 e!3997828)))

(declare-fun res!2709448 () Bool)

(assert (=> d!2071903 (=> (not res!2709448) (not e!3997828))))

(assert (=> d!2071903 (= res!2709448 ((_ is Cons!65601) (exprs!6359 (h!72050 zl!343))))))

(assert (=> d!2071903 (forall!15673 (exprs!6359 (h!72050 zl!343)) lambda!368696)))

(assert (=> d!2071903 (= (generalisedConcat!2072 (exprs!6359 (h!72050 zl!343))) lt!2415323)))

(declare-fun b!6607576 () Bool)

(assert (=> b!6607576 (= e!3997827 (Concat!25320 (h!72049 (exprs!6359 (h!72050 zl!343))) (generalisedConcat!2072 (t!379377 (exprs!6359 (h!72050 zl!343))))))))

(declare-fun b!6607577 () Bool)

(declare-fun isConcat!1376 (Regex!16475) Bool)

(assert (=> b!6607577 (= e!3997826 (isConcat!1376 lt!2415323))))

(declare-fun b!6607578 () Bool)

(assert (=> b!6607578 (= e!3997829 (h!72049 (exprs!6359 (h!72050 zl!343))))))

(assert (= (and d!2071903 res!2709448) b!6607573))

(assert (= (and d!2071903 c!1217641) b!6607578))

(assert (= (and d!2071903 (not c!1217641)) b!6607571))

(assert (= (and b!6607571 c!1217643) b!6607576))

(assert (= (and b!6607571 (not c!1217643)) b!6607570))

(assert (= (and d!2071903 res!2709447) b!6607575))

(assert (= (and b!6607575 c!1217642) b!6607569))

(assert (= (and b!6607575 (not c!1217642)) b!6607572))

(assert (= (and b!6607572 c!1217644) b!6607574))

(assert (= (and b!6607572 (not c!1217644)) b!6607577))

(assert (=> b!6607573 m!7381612))

(declare-fun m!7382582 () Bool)

(assert (=> b!6607572 m!7382582))

(assert (=> b!6607572 m!7382582))

(declare-fun m!7382584 () Bool)

(assert (=> b!6607572 m!7382584))

(declare-fun m!7382586 () Bool)

(assert (=> d!2071903 m!7382586))

(declare-fun m!7382588 () Bool)

(assert (=> d!2071903 m!7382588))

(declare-fun m!7382590 () Bool)

(assert (=> b!6607574 m!7382590))

(declare-fun m!7382592 () Bool)

(assert (=> b!6607569 m!7382592))

(declare-fun m!7382594 () Bool)

(assert (=> b!6607577 m!7382594))

(declare-fun m!7382596 () Bool)

(assert (=> b!6607575 m!7382596))

(assert (=> b!6607576 m!7381610))

(assert (=> b!6606513 d!2071903))

(declare-fun b!6607613 () Bool)

(declare-fun e!3997859 () Bool)

(declare-fun e!3997856 () Bool)

(assert (=> b!6607613 (= e!3997859 e!3997856)))

(declare-fun c!1217664 () Bool)

(assert (=> b!6607613 (= c!1217664 ((_ is Union!16475) r!7292))))

(declare-fun b!6607614 () Bool)

(declare-fun res!2709457 () Bool)

(declare-fun e!3997853 () Bool)

(assert (=> b!6607614 (=> (not res!2709457) (not e!3997853))))

(declare-fun lt!2415326 () Int)

(declare-fun call!578111 () Int)

(assert (=> b!6607614 (= res!2709457 (> lt!2415326 call!578111))))

(declare-fun e!3997861 () Bool)

(assert (=> b!6607614 (= e!3997861 e!3997853)))

(declare-fun b!6607615 () Bool)

(declare-fun e!3997854 () Int)

(declare-fun call!578108 () Int)

(assert (=> b!6607615 (= e!3997854 (+ 1 call!578108))))

(declare-fun b!6607616 () Bool)

(declare-fun e!3997857 () Int)

(declare-fun call!578110 () Int)

(assert (=> b!6607616 (= e!3997857 (+ 1 call!578110))))

(declare-fun b!6607617 () Bool)

(declare-fun e!3997858 () Int)

(assert (=> b!6607617 (= e!3997858 1)))

(declare-fun b!6607618 () Bool)

(declare-fun e!3997860 () Bool)

(assert (=> b!6607618 (= e!3997856 e!3997860)))

(declare-fun res!2709455 () Bool)

(declare-fun call!578114 () Int)

(assert (=> b!6607618 (= res!2709455 (> lt!2415326 call!578114))))

(assert (=> b!6607618 (=> (not res!2709455) (not e!3997860))))

(declare-fun b!6607619 () Bool)

(assert (=> b!6607619 (= e!3997857 1)))

(declare-fun b!6607620 () Bool)

(declare-fun call!578113 () Int)

(assert (=> b!6607620 (= e!3997860 (> lt!2415326 call!578113))))

(declare-fun b!6607621 () Bool)

(declare-fun e!3997852 () Int)

(assert (=> b!6607621 (= e!3997852 (+ 1 call!578110))))

(declare-fun b!6607622 () Bool)

(declare-fun c!1217663 () Bool)

(assert (=> b!6607622 (= c!1217663 ((_ is Union!16475) r!7292))))

(assert (=> b!6607622 (= e!3997854 e!3997852)))

(declare-fun b!6607623 () Bool)

(assert (=> b!6607623 (= e!3997852 e!3997857)))

(declare-fun c!1217659 () Bool)

(assert (=> b!6607623 (= c!1217659 ((_ is Concat!25320) r!7292))))

(declare-fun c!1217660 () Bool)

(declare-fun bm!578103 () Bool)

(assert (=> bm!578103 (= call!578113 (regexDepth!372 (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292)))))))

(declare-fun b!6607624 () Bool)

(declare-fun e!3997855 () Bool)

(assert (=> b!6607624 (= e!3997855 (> lt!2415326 call!578111))))

(declare-fun bm!578104 () Bool)

(assert (=> bm!578104 (= call!578111 call!578113)))

(declare-fun b!6607625 () Bool)

(assert (=> b!6607625 (= e!3997856 e!3997861)))

(assert (=> b!6607625 (= c!1217660 ((_ is Concat!25320) r!7292))))

(declare-fun d!2071905 () Bool)

(assert (=> d!2071905 e!3997859))

(declare-fun res!2709456 () Bool)

(assert (=> d!2071905 (=> (not res!2709456) (not e!3997859))))

(assert (=> d!2071905 (= res!2709456 (> lt!2415326 0))))

(assert (=> d!2071905 (= lt!2415326 e!3997858)))

(declare-fun c!1217662 () Bool)

(assert (=> d!2071905 (= c!1217662 ((_ is ElementMatch!16475) r!7292))))

(assert (=> d!2071905 (= (regexDepth!372 r!7292) lt!2415326)))

(declare-fun c!1217665 () Bool)

(declare-fun bm!578105 () Bool)

(assert (=> bm!578105 (= call!578108 (regexDepth!372 (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292)))))))

(declare-fun b!6607626 () Bool)

(assert (=> b!6607626 (= e!3997858 e!3997854)))

(assert (=> b!6607626 (= c!1217665 ((_ is Star!16475) r!7292))))

(declare-fun bm!578106 () Bool)

(declare-fun call!578109 () Int)

(assert (=> bm!578106 (= call!578109 call!578108)))

(declare-fun b!6607627 () Bool)

(declare-fun c!1217661 () Bool)

(assert (=> b!6607627 (= c!1217661 ((_ is Star!16475) r!7292))))

(assert (=> b!6607627 (= e!3997861 e!3997855)))

(declare-fun b!6607628 () Bool)

(assert (=> b!6607628 (= e!3997853 (> lt!2415326 call!578114))))

(declare-fun bm!578107 () Bool)

(declare-fun call!578112 () Int)

(assert (=> bm!578107 (= call!578112 (regexDepth!372 (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))

(declare-fun bm!578108 () Bool)

(assert (=> bm!578108 (= call!578114 (regexDepth!372 (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))

(declare-fun bm!578109 () Bool)

(assert (=> bm!578109 (= call!578110 (maxBigInt!0 (ite c!1217663 call!578112 call!578109) (ite c!1217663 call!578109 call!578112)))))

(declare-fun b!6607629 () Bool)

(assert (=> b!6607629 (= e!3997855 (= lt!2415326 1))))

(assert (= (and d!2071905 c!1217662) b!6607617))

(assert (= (and d!2071905 (not c!1217662)) b!6607626))

(assert (= (and b!6607626 c!1217665) b!6607615))

(assert (= (and b!6607626 (not c!1217665)) b!6607622))

(assert (= (and b!6607622 c!1217663) b!6607621))

(assert (= (and b!6607622 (not c!1217663)) b!6607623))

(assert (= (and b!6607623 c!1217659) b!6607616))

(assert (= (and b!6607623 (not c!1217659)) b!6607619))

(assert (= (or b!6607621 b!6607616) bm!578106))

(assert (= (or b!6607621 b!6607616) bm!578107))

(assert (= (or b!6607621 b!6607616) bm!578109))

(assert (= (or b!6607615 bm!578106) bm!578105))

(assert (= (and d!2071905 res!2709456) b!6607613))

(assert (= (and b!6607613 c!1217664) b!6607618))

(assert (= (and b!6607613 (not c!1217664)) b!6607625))

(assert (= (and b!6607618 res!2709455) b!6607620))

(assert (= (and b!6607625 c!1217660) b!6607614))

(assert (= (and b!6607625 (not c!1217660)) b!6607627))

(assert (= (and b!6607614 res!2709457) b!6607628))

(assert (= (and b!6607627 c!1217661) b!6607624))

(assert (= (and b!6607627 (not c!1217661)) b!6607629))

(assert (= (or b!6607614 b!6607624) bm!578104))

(assert (= (or b!6607620 bm!578104) bm!578103))

(assert (= (or b!6607618 b!6607628) bm!578108))

(declare-fun m!7382598 () Bool)

(assert (=> bm!578103 m!7382598))

(declare-fun m!7382600 () Bool)

(assert (=> bm!578108 m!7382600))

(declare-fun m!7382602 () Bool)

(assert (=> bm!578105 m!7382602))

(declare-fun m!7382604 () Bool)

(assert (=> bm!578109 m!7382604))

(declare-fun m!7382606 () Bool)

(assert (=> bm!578107 m!7382606))

(assert (=> b!6606492 d!2071905))

(declare-fun b!6607630 () Bool)

(declare-fun e!3997869 () Bool)

(declare-fun e!3997866 () Bool)

(assert (=> b!6607630 (= e!3997869 e!3997866)))

(declare-fun c!1217671 () Bool)

(assert (=> b!6607630 (= c!1217671 ((_ is Union!16475) lt!2415131))))

(declare-fun b!6607631 () Bool)

(declare-fun res!2709460 () Bool)

(declare-fun e!3997863 () Bool)

(assert (=> b!6607631 (=> (not res!2709460) (not e!3997863))))

(declare-fun lt!2415327 () Int)

(declare-fun call!578118 () Int)

(assert (=> b!6607631 (= res!2709460 (> lt!2415327 call!578118))))

(declare-fun e!3997871 () Bool)

(assert (=> b!6607631 (= e!3997871 e!3997863)))

(declare-fun b!6607632 () Bool)

(declare-fun e!3997864 () Int)

(declare-fun call!578115 () Int)

(assert (=> b!6607632 (= e!3997864 (+ 1 call!578115))))

(declare-fun b!6607633 () Bool)

(declare-fun e!3997867 () Int)

(declare-fun call!578117 () Int)

(assert (=> b!6607633 (= e!3997867 (+ 1 call!578117))))

(declare-fun b!6607634 () Bool)

(declare-fun e!3997868 () Int)

(assert (=> b!6607634 (= e!3997868 1)))

(declare-fun b!6607635 () Bool)

(declare-fun e!3997870 () Bool)

(assert (=> b!6607635 (= e!3997866 e!3997870)))

(declare-fun res!2709458 () Bool)

(declare-fun call!578121 () Int)

(assert (=> b!6607635 (= res!2709458 (> lt!2415327 call!578121))))

(assert (=> b!6607635 (=> (not res!2709458) (not e!3997870))))

(declare-fun b!6607636 () Bool)

(assert (=> b!6607636 (= e!3997867 1)))

(declare-fun b!6607637 () Bool)

(declare-fun call!578120 () Int)

(assert (=> b!6607637 (= e!3997870 (> lt!2415327 call!578120))))

(declare-fun b!6607638 () Bool)

(declare-fun e!3997862 () Int)

(assert (=> b!6607638 (= e!3997862 (+ 1 call!578117))))

(declare-fun b!6607639 () Bool)

(declare-fun c!1217670 () Bool)

(assert (=> b!6607639 (= c!1217670 ((_ is Union!16475) lt!2415131))))

(assert (=> b!6607639 (= e!3997864 e!3997862)))

(declare-fun b!6607640 () Bool)

(assert (=> b!6607640 (= e!3997862 e!3997867)))

(declare-fun c!1217666 () Bool)

(assert (=> b!6607640 (= c!1217666 ((_ is Concat!25320) lt!2415131))))

(declare-fun c!1217667 () Bool)

(declare-fun bm!578110 () Bool)

(assert (=> bm!578110 (= call!578120 (regexDepth!372 (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131)))))))

(declare-fun b!6607641 () Bool)

(declare-fun e!3997865 () Bool)

(assert (=> b!6607641 (= e!3997865 (> lt!2415327 call!578118))))

(declare-fun bm!578111 () Bool)

(assert (=> bm!578111 (= call!578118 call!578120)))

(declare-fun b!6607642 () Bool)

(assert (=> b!6607642 (= e!3997866 e!3997871)))

(assert (=> b!6607642 (= c!1217667 ((_ is Concat!25320) lt!2415131))))

(declare-fun d!2071907 () Bool)

(assert (=> d!2071907 e!3997869))

(declare-fun res!2709459 () Bool)

(assert (=> d!2071907 (=> (not res!2709459) (not e!3997869))))

(assert (=> d!2071907 (= res!2709459 (> lt!2415327 0))))

(assert (=> d!2071907 (= lt!2415327 e!3997868)))

(declare-fun c!1217669 () Bool)

(assert (=> d!2071907 (= c!1217669 ((_ is ElementMatch!16475) lt!2415131))))

(assert (=> d!2071907 (= (regexDepth!372 lt!2415131) lt!2415327)))

(declare-fun bm!578112 () Bool)

(declare-fun c!1217672 () Bool)

(assert (=> bm!578112 (= call!578115 (regexDepth!372 (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131)))))))

(declare-fun b!6607643 () Bool)

(assert (=> b!6607643 (= e!3997868 e!3997864)))

(assert (=> b!6607643 (= c!1217672 ((_ is Star!16475) lt!2415131))))

(declare-fun bm!578113 () Bool)

(declare-fun call!578116 () Int)

(assert (=> bm!578113 (= call!578116 call!578115)))

(declare-fun b!6607644 () Bool)

(declare-fun c!1217668 () Bool)

(assert (=> b!6607644 (= c!1217668 ((_ is Star!16475) lt!2415131))))

(assert (=> b!6607644 (= e!3997871 e!3997865)))

(declare-fun b!6607645 () Bool)

(assert (=> b!6607645 (= e!3997863 (> lt!2415327 call!578121))))

(declare-fun bm!578114 () Bool)

(declare-fun call!578119 () Int)

(assert (=> bm!578114 (= call!578119 (regexDepth!372 (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))

(declare-fun bm!578115 () Bool)

(assert (=> bm!578115 (= call!578121 (regexDepth!372 (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))

(declare-fun bm!578116 () Bool)

(assert (=> bm!578116 (= call!578117 (maxBigInt!0 (ite c!1217670 call!578119 call!578116) (ite c!1217670 call!578116 call!578119)))))

(declare-fun b!6607646 () Bool)

(assert (=> b!6607646 (= e!3997865 (= lt!2415327 1))))

(assert (= (and d!2071907 c!1217669) b!6607634))

(assert (= (and d!2071907 (not c!1217669)) b!6607643))

(assert (= (and b!6607643 c!1217672) b!6607632))

(assert (= (and b!6607643 (not c!1217672)) b!6607639))

(assert (= (and b!6607639 c!1217670) b!6607638))

(assert (= (and b!6607639 (not c!1217670)) b!6607640))

(assert (= (and b!6607640 c!1217666) b!6607633))

(assert (= (and b!6607640 (not c!1217666)) b!6607636))

(assert (= (or b!6607638 b!6607633) bm!578113))

(assert (= (or b!6607638 b!6607633) bm!578114))

(assert (= (or b!6607638 b!6607633) bm!578116))

(assert (= (or b!6607632 bm!578113) bm!578112))

(assert (= (and d!2071907 res!2709459) b!6607630))

(assert (= (and b!6607630 c!1217671) b!6607635))

(assert (= (and b!6607630 (not c!1217671)) b!6607642))

(assert (= (and b!6607635 res!2709458) b!6607637))

(assert (= (and b!6607642 c!1217667) b!6607631))

(assert (= (and b!6607642 (not c!1217667)) b!6607644))

(assert (= (and b!6607631 res!2709460) b!6607645))

(assert (= (and b!6607644 c!1217668) b!6607641))

(assert (= (and b!6607644 (not c!1217668)) b!6607646))

(assert (= (or b!6607631 b!6607641) bm!578111))

(assert (= (or b!6607637 bm!578111) bm!578110))

(assert (= (or b!6607635 b!6607645) bm!578115))

(declare-fun m!7382608 () Bool)

(assert (=> bm!578110 m!7382608))

(declare-fun m!7382610 () Bool)

(assert (=> bm!578115 m!7382610))

(declare-fun m!7382612 () Bool)

(assert (=> bm!578112 m!7382612))

(declare-fun m!7382614 () Bool)

(assert (=> bm!578116 m!7382614))

(declare-fun m!7382616 () Bool)

(assert (=> bm!578114 m!7382616))

(assert (=> b!6606492 d!2071907))

(declare-fun bs!1693600 () Bool)

(declare-fun d!2071909 () Bool)

(assert (= bs!1693600 (and d!2071909 d!2071653)))

(declare-fun lambda!368697 () Int)

(assert (=> bs!1693600 (= lambda!368697 lambda!368603)))

(declare-fun bs!1693601 () Bool)

(assert (= bs!1693601 (and d!2071909 d!2071783)))

(assert (=> bs!1693601 (= lambda!368697 lambda!368660)))

(declare-fun bs!1693602 () Bool)

(assert (= bs!1693602 (and d!2071909 d!2071903)))

(assert (=> bs!1693602 (= lambda!368697 lambda!368696)))

(declare-fun bs!1693603 () Bool)

(assert (= bs!1693603 (and d!2071909 d!2071851)))

(assert (=> bs!1693603 (= lambda!368697 lambda!368689)))

(declare-fun bs!1693604 () Bool)

(assert (= bs!1693604 (and d!2071909 d!2071661)))

(assert (=> bs!1693604 (= lambda!368697 lambda!368608)))

(declare-fun b!6607647 () Bool)

(declare-fun e!3997876 () Bool)

(declare-fun lt!2415328 () Regex!16475)

(assert (=> b!6607647 (= e!3997876 (isEmptyExpr!1853 lt!2415328))))

(declare-fun b!6607648 () Bool)

(declare-fun e!3997873 () Regex!16475)

(assert (=> b!6607648 (= e!3997873 EmptyExpr!16475)))

(declare-fun b!6607649 () Bool)

(declare-fun e!3997875 () Regex!16475)

(assert (=> b!6607649 (= e!3997875 e!3997873)))

(declare-fun c!1217675 () Bool)

(assert (=> b!6607649 (= c!1217675 ((_ is Cons!65601) (t!379377 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun b!6607650 () Bool)

(declare-fun e!3997872 () Bool)

(assert (=> b!6607650 (= e!3997876 e!3997872)))

(declare-fun c!1217676 () Bool)

(assert (=> b!6607650 (= c!1217676 (isEmpty!37878 (tail!12486 (t!379377 (exprs!6359 (h!72050 zl!343))))))))

(declare-fun b!6607651 () Bool)

(declare-fun e!3997874 () Bool)

(assert (=> b!6607651 (= e!3997874 (isEmpty!37878 (t!379377 (t!379377 (exprs!6359 (h!72050 zl!343))))))))

(declare-fun b!6607652 () Bool)

(assert (=> b!6607652 (= e!3997872 (= lt!2415328 (head!13401 (t!379377 (exprs!6359 (h!72050 zl!343))))))))

(declare-fun b!6607653 () Bool)

(declare-fun e!3997877 () Bool)

(assert (=> b!6607653 (= e!3997877 e!3997876)))

(declare-fun c!1217674 () Bool)

(assert (=> b!6607653 (= c!1217674 (isEmpty!37878 (t!379377 (exprs!6359 (h!72050 zl!343)))))))

(assert (=> d!2071909 e!3997877))

(declare-fun res!2709461 () Bool)

(assert (=> d!2071909 (=> (not res!2709461) (not e!3997877))))

(assert (=> d!2071909 (= res!2709461 (validRegex!8211 lt!2415328))))

(assert (=> d!2071909 (= lt!2415328 e!3997875)))

(declare-fun c!1217673 () Bool)

(assert (=> d!2071909 (= c!1217673 e!3997874)))

(declare-fun res!2709462 () Bool)

(assert (=> d!2071909 (=> (not res!2709462) (not e!3997874))))

(assert (=> d!2071909 (= res!2709462 ((_ is Cons!65601) (t!379377 (exprs!6359 (h!72050 zl!343)))))))

(assert (=> d!2071909 (forall!15673 (t!379377 (exprs!6359 (h!72050 zl!343))) lambda!368697)))

(assert (=> d!2071909 (= (generalisedConcat!2072 (t!379377 (exprs!6359 (h!72050 zl!343)))) lt!2415328)))

(declare-fun b!6607654 () Bool)

(assert (=> b!6607654 (= e!3997873 (Concat!25320 (h!72049 (t!379377 (exprs!6359 (h!72050 zl!343)))) (generalisedConcat!2072 (t!379377 (t!379377 (exprs!6359 (h!72050 zl!343)))))))))

(declare-fun b!6607655 () Bool)

(assert (=> b!6607655 (= e!3997872 (isConcat!1376 lt!2415328))))

(declare-fun b!6607656 () Bool)

(assert (=> b!6607656 (= e!3997875 (h!72049 (t!379377 (exprs!6359 (h!72050 zl!343)))))))

(assert (= (and d!2071909 res!2709462) b!6607651))

(assert (= (and d!2071909 c!1217673) b!6607656))

(assert (= (and d!2071909 (not c!1217673)) b!6607649))

(assert (= (and b!6607649 c!1217675) b!6607654))

(assert (= (and b!6607649 (not c!1217675)) b!6607648))

(assert (= (and d!2071909 res!2709461) b!6607653))

(assert (= (and b!6607653 c!1217674) b!6607647))

(assert (= (and b!6607653 (not c!1217674)) b!6607650))

(assert (= (and b!6607650 c!1217676) b!6607652))

(assert (= (and b!6607650 (not c!1217676)) b!6607655))

(declare-fun m!7382618 () Bool)

(assert (=> b!6607651 m!7382618))

(declare-fun m!7382620 () Bool)

(assert (=> b!6607650 m!7382620))

(assert (=> b!6607650 m!7382620))

(declare-fun m!7382622 () Bool)

(assert (=> b!6607650 m!7382622))

(declare-fun m!7382624 () Bool)

(assert (=> d!2071909 m!7382624))

(declare-fun m!7382626 () Bool)

(assert (=> d!2071909 m!7382626))

(declare-fun m!7382628 () Bool)

(assert (=> b!6607652 m!7382628))

(declare-fun m!7382630 () Bool)

(assert (=> b!6607647 m!7382630))

(declare-fun m!7382632 () Bool)

(assert (=> b!6607655 m!7382632))

(assert (=> b!6607653 m!7381612))

(declare-fun m!7382634 () Bool)

(assert (=> b!6607654 m!7382634))

(assert (=> b!6606492 d!2071909))

(declare-fun b!6607661 () Bool)

(declare-fun e!3997880 () Bool)

(declare-fun tp!1820550 () Bool)

(declare-fun tp!1820551 () Bool)

(assert (=> b!6607661 (= e!3997880 (and tp!1820550 tp!1820551))))

(assert (=> b!6606520 (= tp!1820484 e!3997880)))

(assert (= (and b!6606520 ((_ is Cons!65601) (exprs!6359 (h!72050 zl!343)))) b!6607661))

(declare-fun e!3997883 () Bool)

(assert (=> b!6606484 (= tp!1820478 e!3997883)))

(declare-fun b!6607672 () Bool)

(assert (=> b!6607672 (= e!3997883 tp_is_empty!42203)))

(declare-fun b!6607673 () Bool)

(declare-fun tp!1820564 () Bool)

(declare-fun tp!1820565 () Bool)

(assert (=> b!6607673 (= e!3997883 (and tp!1820564 tp!1820565))))

(declare-fun b!6607674 () Bool)

(declare-fun tp!1820566 () Bool)

(assert (=> b!6607674 (= e!3997883 tp!1820566)))

(declare-fun b!6607675 () Bool)

(declare-fun tp!1820563 () Bool)

(declare-fun tp!1820562 () Bool)

(assert (=> b!6607675 (= e!3997883 (and tp!1820563 tp!1820562))))

(assert (= (and b!6606484 ((_ is ElementMatch!16475) (regOne!33463 r!7292))) b!6607672))

(assert (= (and b!6606484 ((_ is Concat!25320) (regOne!33463 r!7292))) b!6607673))

(assert (= (and b!6606484 ((_ is Star!16475) (regOne!33463 r!7292))) b!6607674))

(assert (= (and b!6606484 ((_ is Union!16475) (regOne!33463 r!7292))) b!6607675))

(declare-fun e!3997884 () Bool)

(assert (=> b!6606484 (= tp!1820482 e!3997884)))

(declare-fun b!6607676 () Bool)

(assert (=> b!6607676 (= e!3997884 tp_is_empty!42203)))

(declare-fun b!6607677 () Bool)

(declare-fun tp!1820569 () Bool)

(declare-fun tp!1820570 () Bool)

(assert (=> b!6607677 (= e!3997884 (and tp!1820569 tp!1820570))))

(declare-fun b!6607678 () Bool)

(declare-fun tp!1820571 () Bool)

(assert (=> b!6607678 (= e!3997884 tp!1820571)))

(declare-fun b!6607679 () Bool)

(declare-fun tp!1820568 () Bool)

(declare-fun tp!1820567 () Bool)

(assert (=> b!6607679 (= e!3997884 (and tp!1820568 tp!1820567))))

(assert (= (and b!6606484 ((_ is ElementMatch!16475) (regTwo!33463 r!7292))) b!6607676))

(assert (= (and b!6606484 ((_ is Concat!25320) (regTwo!33463 r!7292))) b!6607677))

(assert (= (and b!6606484 ((_ is Star!16475) (regTwo!33463 r!7292))) b!6607678))

(assert (= (and b!6606484 ((_ is Union!16475) (regTwo!33463 r!7292))) b!6607679))

(declare-fun b!6607680 () Bool)

(declare-fun e!3997885 () Bool)

(declare-fun tp!1820572 () Bool)

(declare-fun tp!1820573 () Bool)

(assert (=> b!6607680 (= e!3997885 (and tp!1820572 tp!1820573))))

(assert (=> b!6606500 (= tp!1820481 e!3997885)))

(assert (= (and b!6606500 ((_ is Cons!65601) (exprs!6359 setElem!45120))) b!6607680))

(declare-fun b!6607688 () Bool)

(declare-fun e!3997891 () Bool)

(declare-fun tp!1820578 () Bool)

(assert (=> b!6607688 (= e!3997891 tp!1820578)))

(declare-fun tp!1820579 () Bool)

(declare-fun b!6607687 () Bool)

(declare-fun e!3997890 () Bool)

(assert (=> b!6607687 (= e!3997890 (and (inv!84434 (h!72050 (t!379378 zl!343))) e!3997891 tp!1820579))))

(assert (=> b!6606516 (= tp!1820479 e!3997890)))

(assert (= b!6607687 b!6607688))

(assert (= (and b!6606516 ((_ is Cons!65602) (t!379378 zl!343))) b!6607687))

(declare-fun m!7382636 () Bool)

(assert (=> b!6607687 m!7382636))

(declare-fun e!3997892 () Bool)

(assert (=> b!6606497 (= tp!1820480 e!3997892)))

(declare-fun b!6607689 () Bool)

(assert (=> b!6607689 (= e!3997892 tp_is_empty!42203)))

(declare-fun b!6607690 () Bool)

(declare-fun tp!1820582 () Bool)

(declare-fun tp!1820583 () Bool)

(assert (=> b!6607690 (= e!3997892 (and tp!1820582 tp!1820583))))

(declare-fun b!6607691 () Bool)

(declare-fun tp!1820584 () Bool)

(assert (=> b!6607691 (= e!3997892 tp!1820584)))

(declare-fun b!6607692 () Bool)

(declare-fun tp!1820581 () Bool)

(declare-fun tp!1820580 () Bool)

(assert (=> b!6607692 (= e!3997892 (and tp!1820581 tp!1820580))))

(assert (= (and b!6606497 ((_ is ElementMatch!16475) (regOne!33462 r!7292))) b!6607689))

(assert (= (and b!6606497 ((_ is Concat!25320) (regOne!33462 r!7292))) b!6607690))

(assert (= (and b!6606497 ((_ is Star!16475) (regOne!33462 r!7292))) b!6607691))

(assert (= (and b!6606497 ((_ is Union!16475) (regOne!33462 r!7292))) b!6607692))

(declare-fun e!3997893 () Bool)

(assert (=> b!6606497 (= tp!1820486 e!3997893)))

(declare-fun b!6607693 () Bool)

(assert (=> b!6607693 (= e!3997893 tp_is_empty!42203)))

(declare-fun b!6607694 () Bool)

(declare-fun tp!1820587 () Bool)

(declare-fun tp!1820588 () Bool)

(assert (=> b!6607694 (= e!3997893 (and tp!1820587 tp!1820588))))

(declare-fun b!6607695 () Bool)

(declare-fun tp!1820589 () Bool)

(assert (=> b!6607695 (= e!3997893 tp!1820589)))

(declare-fun b!6607696 () Bool)

(declare-fun tp!1820586 () Bool)

(declare-fun tp!1820585 () Bool)

(assert (=> b!6607696 (= e!3997893 (and tp!1820586 tp!1820585))))

(assert (= (and b!6606497 ((_ is ElementMatch!16475) (regTwo!33462 r!7292))) b!6607693))

(assert (= (and b!6606497 ((_ is Concat!25320) (regTwo!33462 r!7292))) b!6607694))

(assert (= (and b!6606497 ((_ is Star!16475) (regTwo!33462 r!7292))) b!6607695))

(assert (= (and b!6606497 ((_ is Union!16475) (regTwo!33462 r!7292))) b!6607696))

(declare-fun b!6607701 () Bool)

(declare-fun e!3997896 () Bool)

(declare-fun tp!1820592 () Bool)

(assert (=> b!6607701 (= e!3997896 (and tp_is_empty!42203 tp!1820592))))

(assert (=> b!6606523 (= tp!1820483 e!3997896)))

(assert (= (and b!6606523 ((_ is Cons!65600) (t!379376 s!2326))) b!6607701))

(declare-fun e!3997897 () Bool)

(assert (=> b!6606483 (= tp!1820485 e!3997897)))

(declare-fun b!6607702 () Bool)

(assert (=> b!6607702 (= e!3997897 tp_is_empty!42203)))

(declare-fun b!6607703 () Bool)

(declare-fun tp!1820595 () Bool)

(declare-fun tp!1820596 () Bool)

(assert (=> b!6607703 (= e!3997897 (and tp!1820595 tp!1820596))))

(declare-fun b!6607704 () Bool)

(declare-fun tp!1820597 () Bool)

(assert (=> b!6607704 (= e!3997897 tp!1820597)))

(declare-fun b!6607705 () Bool)

(declare-fun tp!1820594 () Bool)

(declare-fun tp!1820593 () Bool)

(assert (=> b!6607705 (= e!3997897 (and tp!1820594 tp!1820593))))

(assert (= (and b!6606483 ((_ is ElementMatch!16475) (reg!16804 r!7292))) b!6607702))

(assert (= (and b!6606483 ((_ is Concat!25320) (reg!16804 r!7292))) b!6607703))

(assert (= (and b!6606483 ((_ is Star!16475) (reg!16804 r!7292))) b!6607704))

(assert (= (and b!6606483 ((_ is Union!16475) (reg!16804 r!7292))) b!6607705))

(declare-fun condSetEmpty!45126 () Bool)

(assert (=> setNonEmpty!45120 (= condSetEmpty!45126 (= setRest!45120 ((as const (Array Context!11718 Bool)) false)))))

(declare-fun setRes!45126 () Bool)

(assert (=> setNonEmpty!45120 (= tp!1820487 setRes!45126)))

(declare-fun setIsEmpty!45126 () Bool)

(assert (=> setIsEmpty!45126 setRes!45126))

(declare-fun setNonEmpty!45126 () Bool)

(declare-fun tp!1820602 () Bool)

(declare-fun setElem!45126 () Context!11718)

(declare-fun e!3997900 () Bool)

(assert (=> setNonEmpty!45126 (= setRes!45126 (and tp!1820602 (inv!84434 setElem!45126) e!3997900))))

(declare-fun setRest!45126 () (InoxSet Context!11718))

(assert (=> setNonEmpty!45126 (= setRest!45120 ((_ map or) (store ((as const (Array Context!11718 Bool)) false) setElem!45126 true) setRest!45126))))

(declare-fun b!6607710 () Bool)

(declare-fun tp!1820603 () Bool)

(assert (=> b!6607710 (= e!3997900 tp!1820603)))

(assert (= (and setNonEmpty!45120 condSetEmpty!45126) setIsEmpty!45126))

(assert (= (and setNonEmpty!45120 (not condSetEmpty!45126)) setNonEmpty!45126))

(assert (= setNonEmpty!45126 b!6607710))

(declare-fun m!7382638 () Bool)

(assert (=> setNonEmpty!45126 m!7382638))

(declare-fun b_lambda!250007 () Bool)

(assert (= b_lambda!250005 (or b!6606487 b_lambda!250007)))

(declare-fun bs!1693605 () Bool)

(declare-fun d!2071911 () Bool)

(assert (= bs!1693605 (and d!2071911 b!6606487)))

(assert (=> bs!1693605 (= (dynLambda!26122 lambda!368578 (h!72050 zl!343)) (derivationStepZipperUp!1649 (h!72050 zl!343) (h!72048 s!2326)))))

(assert (=> bs!1693605 m!7381672))

(assert (=> d!2071865 d!2071911))

(declare-fun b_lambda!250009 () Bool)

(assert (= b_lambda!249997 (or b!6606487 b_lambda!250009)))

(declare-fun bs!1693606 () Bool)

(declare-fun d!2071913 () Bool)

(assert (= bs!1693606 (and d!2071913 b!6606487)))

(assert (=> bs!1693606 (= (dynLambda!26122 lambda!368578 lt!2415130) (derivationStepZipperUp!1649 lt!2415130 (h!72048 s!2326)))))

(assert (=> bs!1693606 m!7381594))

(assert (=> d!2071779 d!2071913))

(declare-fun b_lambda!250011 () Bool)

(assert (= b_lambda!250001 (or b!6606487 b_lambda!250011)))

(declare-fun bs!1693607 () Bool)

(declare-fun d!2071915 () Bool)

(assert (= bs!1693607 (and d!2071915 b!6606487)))

(assert (=> bs!1693607 (= (dynLambda!26122 lambda!368578 lt!2415123) (derivationStepZipperUp!1649 lt!2415123 (h!72048 s!2326)))))

(assert (=> bs!1693607 m!7381694))

(assert (=> d!2071803 d!2071915))

(declare-fun b_lambda!250013 () Bool)

(assert (= b_lambda!249999 (or b!6606487 b_lambda!250013)))

(declare-fun bs!1693608 () Bool)

(declare-fun d!2071917 () Bool)

(assert (= bs!1693608 (and d!2071917 b!6606487)))

(assert (=> bs!1693608 (= (dynLambda!26122 lambda!368578 lt!2415117) (derivationStepZipperUp!1649 lt!2415117 (h!72048 s!2326)))))

(assert (=> bs!1693608 m!7381668))

(assert (=> d!2071791 d!2071917))

(declare-fun b_lambda!250015 () Bool)

(assert (= b_lambda!250003 (or b!6606487 b_lambda!250015)))

(declare-fun bs!1693609 () Bool)

(declare-fun d!2071919 () Bool)

(assert (= bs!1693609 (and d!2071919 b!6606487)))

(assert (=> bs!1693609 (= (dynLambda!26122 lambda!368578 lt!2415118) (derivationStepZipperUp!1649 lt!2415118 (h!72048 s!2326)))))

(assert (=> bs!1693609 m!7381690))

(assert (=> d!2071809 d!2071919))

(check-sat (not d!2071901) (not d!2071857) (not bm!578068) (not d!2071861) (not b!6607484) (not d!2071803) (not b!6607701) (not d!2071837) (not d!2071891) (not b!6607274) (not b!6606839) (not b!6607492) (not b!6607291) (not d!2071661) (not b!6607490) (not b!6607403) (not d!2071909) (not b!6606842) (not d!2071875) (not bs!1693605) (not b!6607673) (not b!6607573) (not b!6607461) (not b!6607267) (not b!6607654) tp_is_empty!42203 (not b!6607452) (not bm!578071) (not b!6607675) (not b!6607427) (not bm!578080) (not d!2071797) (not b!6607513) (not b!6607547) (not b!6607107) (not b!6607540) (not bm!578074) (not d!2071899) (not b!6607695) (not b!6607655) (not bm!578066) (not bm!578085) (not bm!578028) (not b!6607679) (not d!2071869) (not b!6607688) (not b!6607696) (not b!6607322) (not b_lambda!250015) (not b!6607330) (not b!6607548) (not d!2071879) (not b!6607280) (not d!2071823) (not b!6607524) (not b!6607443) (not b!6607357) (not b!6607399) (not b!6607283) (not b!6607105) (not b!6607110) (not b!6606841) (not d!2071883) (not bm!578047) (not bs!1693607) (not d!2071781) (not d!2071811) (not bm!578116) (not b!6607674) (not b!6607703) (not bm!578044) (not bm!578107) (not bs!1693609) (not d!2071825) (not b!6606838) (not b!6607545) (not d!2071815) (not b!6607576) (not bm!578051) (not bm!578084) (not b!6607293) (not d!2071755) (not bm!578027) (not bm!578105) (not b!6607544) (not b!6607650) (not d!2071791) (not b!6607531) (not d!2071833) (not d!2071853) (not d!2071779) (not bs!1693608) (not bm!578076) (not d!2071847) (not b!6607257) (not b!6607440) (not b!6607506) (not d!2071851) (not b!6607691) (not b!6607504) (not b!6607428) (not b!6607572) (not bs!1693606) (not d!2071889) (not b!6607284) (not b!6607514) (not b!6607288) (not b!6607692) (not b_lambda!250013) (not b!6607429) (not bm!578048) (not b!6607651) (not bm!578041) (not d!2071897) (not d!2071865) (not b!6607678) (not b!6607533) (not d!2071753) (not b!6607287) (not bm!578108) (not d!2071667) (not d!2071809) (not b!6607324) (not b!6607448) (not bm!578114) (not b!6607574) (not d!2071785) (not bm!578079) (not b!6607546) (not b!6607503) (not b!6607419) (not b!6607270) (not d!2071835) (not d!2071653) (not bm!578070) (not bm!578045) (not b!6607499) (not b!6607286) (not bm!578103) (not b!6607575) (not b!6607479) (not b!6606836) (not d!2071827) (not b!6607480) (not b!6607275) (not d!2071859) (not bm!578088) (not d!2071839) (not d!2071885) (not d!2071773) (not b!6607710) (not bm!578087) (not d!2071819) (not b!6607108) (not bm!578110) (not b!6607488) (not b!6607216) (not d!2071807) (not d!2071783) (not d!2071795) (not d!2071751) (not d!2071817) (not b!6606833) (not d!2071895) (not bm!578086) (not d!2071881) (not b!6607569) (not b!6606834) (not b!6606885) (not b!6607694) (not bm!578112) (not b!6607652) (not b!6607690) (not b!6607500) (not b!6607258) (not b!6607541) (not d!2071787) (not b!6607485) (not bm!578065) (not b!6607265) (not d!2071841) (not b!6607209) (not b!6607653) (not b!6607432) (not b!6607430) (not bm!578069) (not d!2071887) (not b!6607289) (not b!6607457) (not b!6607272) (not b!6607680) (not b!6607577) (not d!2071845) (not d!2071761) (not b!6607251) (not b!6607112) (not bm!578083) (not bm!578109) (not b!6607517) (not b!6607210) (not d!2071821) (not b!6607438) (not b!6607677) (not b!6607439) (not bm!578075) (not b!6607705) (not b!6607528) (not b!6607498) (not b!6607332) (not b!6607661) (not b!6607647) (not b!6607106) (not bm!578115) (not b!6607539) (not d!2071903) (not bm!578059) (not b_lambda!250007) (not d!2071775) (not setNonEmpty!45126) (not bm!578072) (not bm!578082) (not b!6607335) (not b!6607489) (not b_lambda!250009) (not b_lambda!250011) (not b!6607519) (not b!6607512) (not b!6607518) (not b!6607331) (not bm!578060) (not b!6607217) (not b!6607476) (not b!6607279) (not b!6607687) (not b!6607704))
(check-sat)
(get-model)

(declare-fun d!2071941 () Bool)

(assert (=> d!2071941 (= (isEmpty!37878 (tail!12486 (unfocusZipperList!1896 zl!343))) ((_ is Nil!65601) (tail!12486 (unfocusZipperList!1896 zl!343))))))

(assert (=> b!6606838 d!2071941))

(declare-fun d!2071943 () Bool)

(assert (=> d!2071943 (= (tail!12486 (unfocusZipperList!1896 zl!343)) (t!379377 (unfocusZipperList!1896 zl!343)))))

(assert (=> b!6606838 d!2071943))

(declare-fun b!6607752 () Bool)

(declare-fun e!3997930 () Bool)

(declare-fun call!578126 () Bool)

(assert (=> b!6607752 (= e!3997930 call!578126)))

(declare-fun d!2071945 () Bool)

(declare-fun res!2709490 () Bool)

(declare-fun e!3997932 () Bool)

(assert (=> d!2071945 (=> res!2709490 e!3997932)))

(assert (=> d!2071945 (= res!2709490 ((_ is ElementMatch!16475) lt!2415287))))

(assert (=> d!2071945 (= (validRegex!8211 lt!2415287) e!3997932)))

(declare-fun b!6607753 () Bool)

(declare-fun e!3997929 () Bool)

(declare-fun e!3997934 () Bool)

(assert (=> b!6607753 (= e!3997929 e!3997934)))

(declare-fun res!2709489 () Bool)

(assert (=> b!6607753 (=> (not res!2709489) (not e!3997934))))

(declare-fun call!578127 () Bool)

(assert (=> b!6607753 (= res!2709489 call!578127)))

(declare-fun b!6607754 () Bool)

(declare-fun e!3997931 () Bool)

(declare-fun call!578128 () Bool)

(assert (=> b!6607754 (= e!3997931 call!578128)))

(declare-fun b!6607755 () Bool)

(declare-fun e!3997933 () Bool)

(assert (=> b!6607755 (= e!3997933 e!3997930)))

(declare-fun res!2709487 () Bool)

(assert (=> b!6607755 (= res!2709487 (not (nullable!6468 (reg!16804 lt!2415287))))))

(assert (=> b!6607755 (=> (not res!2709487) (not e!3997930))))

(declare-fun bm!578121 () Bool)

(assert (=> bm!578121 (= call!578128 call!578126)))

(declare-fun b!6607756 () Bool)

(declare-fun e!3997928 () Bool)

(assert (=> b!6607756 (= e!3997933 e!3997928)))

(declare-fun c!1217688 () Bool)

(assert (=> b!6607756 (= c!1217688 ((_ is Union!16475) lt!2415287))))

(declare-fun c!1217687 () Bool)

(declare-fun bm!578122 () Bool)

(assert (=> bm!578122 (= call!578126 (validRegex!8211 (ite c!1217687 (reg!16804 lt!2415287) (ite c!1217688 (regTwo!33463 lt!2415287) (regTwo!33462 lt!2415287)))))))

(declare-fun bm!578123 () Bool)

(assert (=> bm!578123 (= call!578127 (validRegex!8211 (ite c!1217688 (regOne!33463 lt!2415287) (regOne!33462 lt!2415287))))))

(declare-fun b!6607757 () Bool)

(declare-fun res!2709491 () Bool)

(assert (=> b!6607757 (=> res!2709491 e!3997929)))

(assert (=> b!6607757 (= res!2709491 (not ((_ is Concat!25320) lt!2415287)))))

(assert (=> b!6607757 (= e!3997928 e!3997929)))

(declare-fun b!6607758 () Bool)

(assert (=> b!6607758 (= e!3997932 e!3997933)))

(assert (=> b!6607758 (= c!1217687 ((_ is Star!16475) lt!2415287))))

(declare-fun b!6607759 () Bool)

(declare-fun res!2709488 () Bool)

(assert (=> b!6607759 (=> (not res!2709488) (not e!3997931))))

(assert (=> b!6607759 (= res!2709488 call!578127)))

(assert (=> b!6607759 (= e!3997928 e!3997931)))

(declare-fun b!6607760 () Bool)

(assert (=> b!6607760 (= e!3997934 call!578128)))

(assert (= (and d!2071945 (not res!2709490)) b!6607758))

(assert (= (and b!6607758 c!1217687) b!6607755))

(assert (= (and b!6607758 (not c!1217687)) b!6607756))

(assert (= (and b!6607755 res!2709487) b!6607752))

(assert (= (and b!6607756 c!1217688) b!6607759))

(assert (= (and b!6607756 (not c!1217688)) b!6607757))

(assert (= (and b!6607759 res!2709488) b!6607754))

(assert (= (and b!6607757 (not res!2709491)) b!6607753))

(assert (= (and b!6607753 res!2709489) b!6607760))

(assert (= (or b!6607754 b!6607760) bm!578121))

(assert (= (or b!6607759 b!6607753) bm!578123))

(assert (= (or b!6607752 bm!578121) bm!578122))

(declare-fun m!7382690 () Bool)

(assert (=> b!6607755 m!7382690))

(declare-fun m!7382692 () Bool)

(assert (=> bm!578122 m!7382692))

(declare-fun m!7382694 () Bool)

(assert (=> bm!578123 m!7382694))

(assert (=> d!2071811 d!2071945))

(declare-fun bs!1693624 () Bool)

(declare-fun d!2071951 () Bool)

(assert (= bs!1693624 (and d!2071951 d!2071783)))

(declare-fun lambda!368700 () Int)

(assert (=> bs!1693624 (= lambda!368700 lambda!368660)))

(declare-fun bs!1693625 () Bool)

(assert (= bs!1693625 (and d!2071951 d!2071903)))

(assert (=> bs!1693625 (= lambda!368700 lambda!368696)))

(declare-fun bs!1693626 () Bool)

(assert (= bs!1693626 (and d!2071951 d!2071851)))

(assert (=> bs!1693626 (= lambda!368700 lambda!368689)))

(declare-fun bs!1693627 () Bool)

(assert (= bs!1693627 (and d!2071951 d!2071661)))

(assert (=> bs!1693627 (= lambda!368700 lambda!368608)))

(declare-fun bs!1693628 () Bool)

(assert (= bs!1693628 (and d!2071951 d!2071909)))

(assert (=> bs!1693628 (= lambda!368700 lambda!368697)))

(declare-fun bs!1693629 () Bool)

(assert (= bs!1693629 (and d!2071951 d!2071653)))

(assert (=> bs!1693629 (= lambda!368700 lambda!368603)))

(declare-fun b!6607761 () Bool)

(declare-fun e!3997940 () Bool)

(declare-fun lt!2415332 () Regex!16475)

(assert (=> b!6607761 (= e!3997940 (isEmptyLang!1861 lt!2415332))))

(declare-fun b!6607762 () Bool)

(declare-fun e!3997935 () Regex!16475)

(assert (=> b!6607762 (= e!3997935 (Union!16475 (h!72049 (unfocusZipperList!1896 (Cons!65602 lt!2415118 Nil!65602))) (generalisedUnion!2319 (t!379377 (unfocusZipperList!1896 (Cons!65602 lt!2415118 Nil!65602))))))))

(declare-fun b!6607763 () Bool)

(declare-fun e!3997938 () Regex!16475)

(assert (=> b!6607763 (= e!3997938 (h!72049 (unfocusZipperList!1896 (Cons!65602 lt!2415118 Nil!65602))))))

(declare-fun b!6607764 () Bool)

(declare-fun e!3997939 () Bool)

(assert (=> b!6607764 (= e!3997939 (isEmpty!37878 (t!379377 (unfocusZipperList!1896 (Cons!65602 lt!2415118 Nil!65602)))))))

(declare-fun b!6607765 () Bool)

(assert (=> b!6607765 (= e!3997938 e!3997935)))

(declare-fun c!1217692 () Bool)

(assert (=> b!6607765 (= c!1217692 ((_ is Cons!65601) (unfocusZipperList!1896 (Cons!65602 lt!2415118 Nil!65602))))))

(declare-fun b!6607766 () Bool)

(declare-fun e!3997936 () Bool)

(assert (=> b!6607766 (= e!3997940 e!3997936)))

(declare-fun c!1217691 () Bool)

(assert (=> b!6607766 (= c!1217691 (isEmpty!37878 (tail!12486 (unfocusZipperList!1896 (Cons!65602 lt!2415118 Nil!65602)))))))

(declare-fun b!6607767 () Bool)

(assert (=> b!6607767 (= e!3997936 (= lt!2415332 (head!13401 (unfocusZipperList!1896 (Cons!65602 lt!2415118 Nil!65602)))))))

(declare-fun b!6607769 () Bool)

(assert (=> b!6607769 (= e!3997936 (isUnion!1291 lt!2415332))))

(declare-fun b!6607770 () Bool)

(declare-fun e!3997937 () Bool)

(assert (=> b!6607770 (= e!3997937 e!3997940)))

(declare-fun c!1217689 () Bool)

(assert (=> b!6607770 (= c!1217689 (isEmpty!37878 (unfocusZipperList!1896 (Cons!65602 lt!2415118 Nil!65602))))))

(declare-fun b!6607768 () Bool)

(assert (=> b!6607768 (= e!3997935 EmptyLang!16475)))

(assert (=> d!2071951 e!3997937))

(declare-fun res!2709492 () Bool)

(assert (=> d!2071951 (=> (not res!2709492) (not e!3997937))))

(assert (=> d!2071951 (= res!2709492 (validRegex!8211 lt!2415332))))

(assert (=> d!2071951 (= lt!2415332 e!3997938)))

(declare-fun c!1217690 () Bool)

(assert (=> d!2071951 (= c!1217690 e!3997939)))

(declare-fun res!2709493 () Bool)

(assert (=> d!2071951 (=> (not res!2709493) (not e!3997939))))

(assert (=> d!2071951 (= res!2709493 ((_ is Cons!65601) (unfocusZipperList!1896 (Cons!65602 lt!2415118 Nil!65602))))))

(assert (=> d!2071951 (forall!15673 (unfocusZipperList!1896 (Cons!65602 lt!2415118 Nil!65602)) lambda!368700)))

(assert (=> d!2071951 (= (generalisedUnion!2319 (unfocusZipperList!1896 (Cons!65602 lt!2415118 Nil!65602))) lt!2415332)))

(assert (= (and d!2071951 res!2709493) b!6607764))

(assert (= (and d!2071951 c!1217690) b!6607763))

(assert (= (and d!2071951 (not c!1217690)) b!6607765))

(assert (= (and b!6607765 c!1217692) b!6607762))

(assert (= (and b!6607765 (not c!1217692)) b!6607768))

(assert (= (and d!2071951 res!2709492) b!6607770))

(assert (= (and b!6607770 c!1217689) b!6607761))

(assert (= (and b!6607770 (not c!1217689)) b!6607766))

(assert (= (and b!6607766 c!1217691) b!6607767))

(assert (= (and b!6607766 (not c!1217691)) b!6607769))

(assert (=> b!6607767 m!7382342))

(declare-fun m!7382696 () Bool)

(assert (=> b!6607767 m!7382696))

(declare-fun m!7382698 () Bool)

(assert (=> d!2071951 m!7382698))

(assert (=> d!2071951 m!7382342))

(declare-fun m!7382700 () Bool)

(assert (=> d!2071951 m!7382700))

(declare-fun m!7382702 () Bool)

(assert (=> b!6607764 m!7382702))

(declare-fun m!7382704 () Bool)

(assert (=> b!6607762 m!7382704))

(assert (=> b!6607766 m!7382342))

(declare-fun m!7382706 () Bool)

(assert (=> b!6607766 m!7382706))

(assert (=> b!6607766 m!7382706))

(declare-fun m!7382708 () Bool)

(assert (=> b!6607766 m!7382708))

(assert (=> b!6607770 m!7382342))

(declare-fun m!7382710 () Bool)

(assert (=> b!6607770 m!7382710))

(declare-fun m!7382712 () Bool)

(assert (=> b!6607761 m!7382712))

(declare-fun m!7382714 () Bool)

(assert (=> b!6607769 m!7382714))

(assert (=> d!2071811 d!2071951))

(declare-fun bs!1693630 () Bool)

(declare-fun d!2071953 () Bool)

(assert (= bs!1693630 (and d!2071953 d!2071783)))

(declare-fun lambda!368701 () Int)

(assert (=> bs!1693630 (= lambda!368701 lambda!368660)))

(declare-fun bs!1693631 () Bool)

(assert (= bs!1693631 (and d!2071953 d!2071903)))

(assert (=> bs!1693631 (= lambda!368701 lambda!368696)))

(declare-fun bs!1693632 () Bool)

(assert (= bs!1693632 (and d!2071953 d!2071851)))

(assert (=> bs!1693632 (= lambda!368701 lambda!368689)))

(declare-fun bs!1693633 () Bool)

(assert (= bs!1693633 (and d!2071953 d!2071951)))

(assert (=> bs!1693633 (= lambda!368701 lambda!368700)))

(declare-fun bs!1693634 () Bool)

(assert (= bs!1693634 (and d!2071953 d!2071661)))

(assert (=> bs!1693634 (= lambda!368701 lambda!368608)))

(declare-fun bs!1693635 () Bool)

(assert (= bs!1693635 (and d!2071953 d!2071909)))

(assert (=> bs!1693635 (= lambda!368701 lambda!368697)))

(declare-fun bs!1693636 () Bool)

(assert (= bs!1693636 (and d!2071953 d!2071653)))

(assert (=> bs!1693636 (= lambda!368701 lambda!368603)))

(declare-fun lt!2415333 () List!65725)

(assert (=> d!2071953 (forall!15673 lt!2415333 lambda!368701)))

(declare-fun e!3997943 () List!65725)

(assert (=> d!2071953 (= lt!2415333 e!3997943)))

(declare-fun c!1217693 () Bool)

(assert (=> d!2071953 (= c!1217693 ((_ is Cons!65602) (Cons!65602 lt!2415118 Nil!65602)))))

(assert (=> d!2071953 (= (unfocusZipperList!1896 (Cons!65602 lt!2415118 Nil!65602)) lt!2415333)))

(declare-fun b!6607773 () Bool)

(assert (=> b!6607773 (= e!3997943 (Cons!65601 (generalisedConcat!2072 (exprs!6359 (h!72050 (Cons!65602 lt!2415118 Nil!65602)))) (unfocusZipperList!1896 (t!379378 (Cons!65602 lt!2415118 Nil!65602)))))))

(declare-fun b!6607774 () Bool)

(assert (=> b!6607774 (= e!3997943 Nil!65601)))

(assert (= (and d!2071953 c!1217693) b!6607773))

(assert (= (and d!2071953 (not c!1217693)) b!6607774))

(declare-fun m!7382716 () Bool)

(assert (=> d!2071953 m!7382716))

(declare-fun m!7382720 () Bool)

(assert (=> b!6607773 m!7382720))

(declare-fun m!7382722 () Bool)

(assert (=> b!6607773 m!7382722))

(assert (=> d!2071811 d!2071953))

(declare-fun d!2071957 () Bool)

(declare-fun e!3997945 () Bool)

(assert (=> d!2071957 e!3997945))

(declare-fun c!1217695 () Bool)

(assert (=> d!2071957 (= c!1217695 ((_ is EmptyExpr!16475) (regOne!33462 r!7292)))))

(declare-fun lt!2415334 () Bool)

(declare-fun e!3997951 () Bool)

(assert (=> d!2071957 (= lt!2415334 e!3997951)))

(declare-fun c!1217694 () Bool)

(assert (=> d!2071957 (= c!1217694 (isEmpty!37882 (_1!36757 (get!22794 lt!2415235))))))

(assert (=> d!2071957 (validRegex!8211 (regOne!33462 r!7292))))

(assert (=> d!2071957 (= (matchR!8658 (regOne!33462 r!7292) (_1!36757 (get!22794 lt!2415235))) lt!2415334)))

(declare-fun b!6607776 () Bool)

(declare-fun e!3997946 () Bool)

(assert (=> b!6607776 (= e!3997946 (= (head!13402 (_1!36757 (get!22794 lt!2415235))) (c!1217326 (regOne!33462 r!7292))))))

(declare-fun b!6607777 () Bool)

(declare-fun e!3997948 () Bool)

(assert (=> b!6607777 (= e!3997948 (not lt!2415334))))

(declare-fun b!6607778 () Bool)

(declare-fun res!2709503 () Bool)

(assert (=> b!6607778 (=> (not res!2709503) (not e!3997946))))

(assert (=> b!6607778 (= res!2709503 (isEmpty!37882 (tail!12487 (_1!36757 (get!22794 lt!2415235)))))))

(declare-fun bm!578124 () Bool)

(declare-fun call!578129 () Bool)

(assert (=> bm!578124 (= call!578129 (isEmpty!37882 (_1!36757 (get!22794 lt!2415235))))))

(declare-fun b!6607779 () Bool)

(declare-fun e!3997950 () Bool)

(declare-fun e!3997949 () Bool)

(assert (=> b!6607779 (= e!3997950 e!3997949)))

(declare-fun res!2709504 () Bool)

(assert (=> b!6607779 (=> res!2709504 e!3997949)))

(assert (=> b!6607779 (= res!2709504 call!578129)))

(declare-fun b!6607780 () Bool)

(declare-fun res!2709502 () Bool)

(declare-fun e!3997947 () Bool)

(assert (=> b!6607780 (=> res!2709502 e!3997947)))

(assert (=> b!6607780 (= res!2709502 (not ((_ is ElementMatch!16475) (regOne!33462 r!7292))))))

(assert (=> b!6607780 (= e!3997948 e!3997947)))

(declare-fun b!6607781 () Bool)

(assert (=> b!6607781 (= e!3997945 e!3997948)))

(declare-fun c!1217696 () Bool)

(assert (=> b!6607781 (= c!1217696 ((_ is EmptyLang!16475) (regOne!33462 r!7292)))))

(declare-fun b!6607782 () Bool)

(assert (=> b!6607782 (= e!3997947 e!3997950)))

(declare-fun res!2709500 () Bool)

(assert (=> b!6607782 (=> (not res!2709500) (not e!3997950))))

(assert (=> b!6607782 (= res!2709500 (not lt!2415334))))

(declare-fun b!6607783 () Bool)

(declare-fun res!2709501 () Bool)

(assert (=> b!6607783 (=> res!2709501 e!3997947)))

(assert (=> b!6607783 (= res!2709501 e!3997946)))

(declare-fun res!2709498 () Bool)

(assert (=> b!6607783 (=> (not res!2709498) (not e!3997946))))

(assert (=> b!6607783 (= res!2709498 lt!2415334)))

(declare-fun b!6607784 () Bool)

(assert (=> b!6607784 (= e!3997951 (matchR!8658 (derivativeStep!5159 (regOne!33462 r!7292) (head!13402 (_1!36757 (get!22794 lt!2415235)))) (tail!12487 (_1!36757 (get!22794 lt!2415235)))))))

(declare-fun b!6607785 () Bool)

(declare-fun res!2709499 () Bool)

(assert (=> b!6607785 (=> res!2709499 e!3997949)))

(assert (=> b!6607785 (= res!2709499 (not (isEmpty!37882 (tail!12487 (_1!36757 (get!22794 lt!2415235))))))))

(declare-fun b!6607786 () Bool)

(assert (=> b!6607786 (= e!3997951 (nullable!6468 (regOne!33462 r!7292)))))

(declare-fun b!6607787 () Bool)

(declare-fun res!2709497 () Bool)

(assert (=> b!6607787 (=> (not res!2709497) (not e!3997946))))

(assert (=> b!6607787 (= res!2709497 (not call!578129))))

(declare-fun b!6607788 () Bool)

(assert (=> b!6607788 (= e!3997945 (= lt!2415334 call!578129))))

(declare-fun b!6607789 () Bool)

(assert (=> b!6607789 (= e!3997949 (not (= (head!13402 (_1!36757 (get!22794 lt!2415235))) (c!1217326 (regOne!33462 r!7292)))))))

(assert (= (and d!2071957 c!1217694) b!6607786))

(assert (= (and d!2071957 (not c!1217694)) b!6607784))

(assert (= (and d!2071957 c!1217695) b!6607788))

(assert (= (and d!2071957 (not c!1217695)) b!6607781))

(assert (= (and b!6607781 c!1217696) b!6607777))

(assert (= (and b!6607781 (not c!1217696)) b!6607780))

(assert (= (and b!6607780 (not res!2709502)) b!6607783))

(assert (= (and b!6607783 res!2709498) b!6607787))

(assert (= (and b!6607787 res!2709497) b!6607778))

(assert (= (and b!6607778 res!2709503) b!6607776))

(assert (= (and b!6607783 (not res!2709501)) b!6607782))

(assert (= (and b!6607782 res!2709500) b!6607779))

(assert (= (and b!6607779 (not res!2709504)) b!6607785))

(assert (= (and b!6607785 (not res!2709499)) b!6607789))

(assert (= (or b!6607788 b!6607779 b!6607787) bm!578124))

(declare-fun m!7382724 () Bool)

(assert (=> b!6607784 m!7382724))

(assert (=> b!6607784 m!7382724))

(declare-fun m!7382726 () Bool)

(assert (=> b!6607784 m!7382726))

(declare-fun m!7382728 () Bool)

(assert (=> b!6607784 m!7382728))

(assert (=> b!6607784 m!7382726))

(assert (=> b!6607784 m!7382728))

(declare-fun m!7382730 () Bool)

(assert (=> b!6607784 m!7382730))

(declare-fun m!7382732 () Bool)

(assert (=> b!6607786 m!7382732))

(declare-fun m!7382734 () Bool)

(assert (=> bm!578124 m!7382734))

(assert (=> b!6607776 m!7382724))

(assert (=> b!6607778 m!7382728))

(assert (=> b!6607778 m!7382728))

(declare-fun m!7382736 () Bool)

(assert (=> b!6607778 m!7382736))

(assert (=> d!2071957 m!7382734))

(assert (=> d!2071957 m!7382194))

(assert (=> b!6607789 m!7382724))

(assert (=> b!6607785 m!7382728))

(assert (=> b!6607785 m!7382728))

(assert (=> b!6607785 m!7382736))

(assert (=> b!6607110 d!2071957))

(declare-fun d!2071959 () Bool)

(assert (=> d!2071959 (= (get!22794 lt!2415235) (v!52554 lt!2415235))))

(assert (=> b!6607110 d!2071959))

(assert (=> bs!1693608 d!2071789))

(declare-fun d!2071961 () Bool)

(declare-fun c!1217697 () Bool)

(assert (=> d!2071961 (= c!1217697 (isEmpty!37882 (tail!12487 s!2326)))))

(declare-fun e!3997952 () Bool)

(assert (=> d!2071961 (= (matchZipper!2487 (derivationStepZipper!2441 lt!2415147 (head!13402 s!2326)) (tail!12487 s!2326)) e!3997952)))

(declare-fun b!6607790 () Bool)

(assert (=> b!6607790 (= e!3997952 (nullableZipper!2220 (derivationStepZipper!2441 lt!2415147 (head!13402 s!2326))))))

(declare-fun b!6607791 () Bool)

(assert (=> b!6607791 (= e!3997952 (matchZipper!2487 (derivationStepZipper!2441 (derivationStepZipper!2441 lt!2415147 (head!13402 s!2326)) (head!13402 (tail!12487 s!2326))) (tail!12487 (tail!12487 s!2326))))))

(assert (= (and d!2071961 c!1217697) b!6607790))

(assert (= (and d!2071961 (not c!1217697)) b!6607791))

(assert (=> d!2071961 m!7382454))

(assert (=> d!2071961 m!7382462))

(assert (=> b!6607790 m!7382544))

(declare-fun m!7382738 () Bool)

(assert (=> b!6607790 m!7382738))

(assert (=> b!6607791 m!7382454))

(declare-fun m!7382740 () Bool)

(assert (=> b!6607791 m!7382740))

(assert (=> b!6607791 m!7382544))

(assert (=> b!6607791 m!7382740))

(declare-fun m!7382742 () Bool)

(assert (=> b!6607791 m!7382742))

(assert (=> b!6607791 m!7382454))

(declare-fun m!7382744 () Bool)

(assert (=> b!6607791 m!7382744))

(assert (=> b!6607791 m!7382742))

(assert (=> b!6607791 m!7382744))

(declare-fun m!7382746 () Bool)

(assert (=> b!6607791 m!7382746))

(assert (=> b!6607519 d!2071961))

(declare-fun bs!1693637 () Bool)

(declare-fun d!2071963 () Bool)

(assert (= bs!1693637 (and d!2071963 b!6606487)))

(declare-fun lambda!368702 () Int)

(assert (=> bs!1693637 (= (= (head!13402 s!2326) (h!72048 s!2326)) (= lambda!368702 lambda!368578))))

(declare-fun bs!1693638 () Bool)

(assert (= bs!1693638 (and d!2071963 d!2071781)))

(assert (=> bs!1693638 (= (= (head!13402 s!2326) (h!72048 s!2326)) (= lambda!368702 lambda!368657))))

(declare-fun bs!1693639 () Bool)

(assert (= bs!1693639 (and d!2071963 d!2071785)))

(assert (=> bs!1693639 (= (= (head!13402 s!2326) (h!72048 s!2326)) (= lambda!368702 lambda!368661))))

(assert (=> d!2071963 true))

(assert (=> d!2071963 (= (derivationStepZipper!2441 lt!2415147 (head!13402 s!2326)) (flatMap!1980 lt!2415147 lambda!368702))))

(declare-fun bs!1693640 () Bool)

(assert (= bs!1693640 d!2071963))

(declare-fun m!7382748 () Bool)

(assert (=> bs!1693640 m!7382748))

(assert (=> b!6607519 d!2071963))

(declare-fun d!2071965 () Bool)

(assert (=> d!2071965 (= (head!13402 s!2326) (h!72048 s!2326))))

(assert (=> b!6607519 d!2071965))

(declare-fun d!2071969 () Bool)

(assert (=> d!2071969 (= (tail!12487 s!2326) (t!379376 s!2326))))

(assert (=> b!6607519 d!2071969))

(declare-fun c!1217703 () Bool)

(declare-fun call!578137 () (InoxSet Context!11718))

(declare-fun call!578136 () List!65725)

(declare-fun c!1217701 () Bool)

(declare-fun bm!578128 () Bool)

(declare-fun c!1217702 () Bool)

(assert (=> bm!578128 (= call!578137 (derivationStepZipperDown!1723 (ite c!1217702 (regOne!33463 (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))) (ite c!1217703 (regTwo!33462 (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))) (ite c!1217701 (regOne!33462 (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))) (reg!16804 (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343))))))))))) (ite (or c!1217702 c!1217703) (Context!11719 (t!379377 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))) (Context!11719 call!578136)) (h!72048 s!2326)))))

(declare-fun b!6607801 () Bool)

(declare-fun e!3997964 () (InoxSet Context!11718))

(declare-fun call!578135 () (InoxSet Context!11718))

(assert (=> b!6607801 (= e!3997964 call!578135)))

(declare-fun b!6607802 () Bool)

(declare-fun e!3997965 () (InoxSet Context!11718))

(declare-fun e!3997963 () (InoxSet Context!11718))

(assert (=> b!6607802 (= e!3997965 e!3997963)))

(assert (=> b!6607802 (= c!1217702 ((_ is Union!16475) (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))))))

(declare-fun d!2071971 () Bool)

(declare-fun c!1217700 () Bool)

(assert (=> d!2071971 (= c!1217700 (and ((_ is ElementMatch!16475) (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))) (= (c!1217326 (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))) (h!72048 s!2326))))))

(assert (=> d!2071971 (= (derivationStepZipperDown!1723 (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343))))))) (Context!11719 (t!379377 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))) (h!72048 s!2326)) e!3997965)))

(declare-fun b!6607803 () Bool)

(declare-fun e!3997960 () (InoxSet Context!11718))

(declare-fun e!3997961 () (InoxSet Context!11718))

(assert (=> b!6607803 (= e!3997960 e!3997961)))

(assert (=> b!6607803 (= c!1217701 ((_ is Concat!25320) (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))))))

(declare-fun b!6607804 () Bool)

(assert (=> b!6607804 (= e!3997965 (store ((as const (Array Context!11718 Bool)) false) (Context!11719 (t!379377 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))) true))))

(declare-fun b!6607805 () Bool)

(declare-fun e!3997962 () Bool)

(assert (=> b!6607805 (= c!1217703 e!3997962)))

(declare-fun res!2709510 () Bool)

(assert (=> b!6607805 (=> (not res!2709510) (not e!3997962))))

(assert (=> b!6607805 (= res!2709510 ((_ is Concat!25320) (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))))))

(assert (=> b!6607805 (= e!3997963 e!3997960)))

(declare-fun bm!578129 () Bool)

(declare-fun call!578133 () (InoxSet Context!11718))

(assert (=> bm!578129 (= call!578133 call!578137)))

(declare-fun b!6607806 () Bool)

(declare-fun c!1217704 () Bool)

(assert (=> b!6607806 (= c!1217704 ((_ is Star!16475) (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))))))

(assert (=> b!6607806 (= e!3997961 e!3997964)))

(declare-fun bm!578130 () Bool)

(assert (=> bm!578130 (= call!578135 call!578133)))

(declare-fun call!578138 () List!65725)

(declare-fun bm!578131 () Bool)

(assert (=> bm!578131 (= call!578138 ($colon$colon!2316 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343))))))))) (ite (or c!1217703 c!1217701) (regTwo!33462 (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))) (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343))))))))))))

(declare-fun b!6607807 () Bool)

(assert (=> b!6607807 (= e!3997964 ((as const (Array Context!11718 Bool)) false))))

(declare-fun bm!578132 () Bool)

(declare-fun call!578134 () (InoxSet Context!11718))

(assert (=> bm!578132 (= call!578134 (derivationStepZipperDown!1723 (ite c!1217702 (regTwo!33463 (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))) (regOne!33462 (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343))))))))) (ite c!1217702 (Context!11719 (t!379377 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))) (Context!11719 call!578138)) (h!72048 s!2326)))))

(declare-fun b!6607808 () Bool)

(assert (=> b!6607808 (= e!3997963 ((_ map or) call!578137 call!578134))))

(declare-fun b!6607809 () Bool)

(assert (=> b!6607809 (= e!3997960 ((_ map or) call!578134 call!578133))))

(declare-fun bm!578133 () Bool)

(assert (=> bm!578133 (= call!578136 call!578138)))

(declare-fun b!6607810 () Bool)

(assert (=> b!6607810 (= e!3997962 (nullable!6468 (regOne!33462 (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343))))))))))))

(declare-fun b!6607811 () Bool)

(assert (=> b!6607811 (= e!3997961 call!578135)))

(assert (= (and d!2071971 c!1217700) b!6607804))

(assert (= (and d!2071971 (not c!1217700)) b!6607802))

(assert (= (and b!6607802 c!1217702) b!6607808))

(assert (= (and b!6607802 (not c!1217702)) b!6607805))

(assert (= (and b!6607805 res!2709510) b!6607810))

(assert (= (and b!6607805 c!1217703) b!6607809))

(assert (= (and b!6607805 (not c!1217703)) b!6607803))

(assert (= (and b!6607803 c!1217701) b!6607811))

(assert (= (and b!6607803 (not c!1217701)) b!6607806))

(assert (= (and b!6607806 c!1217704) b!6607801))

(assert (= (and b!6607806 (not c!1217704)) b!6607807))

(assert (= (or b!6607811 b!6607801) bm!578133))

(assert (= (or b!6607811 b!6607801) bm!578130))

(assert (= (or b!6607809 bm!578133) bm!578131))

(assert (= (or b!6607809 bm!578130) bm!578129))

(assert (= (or b!6607808 b!6607809) bm!578132))

(assert (= (or b!6607808 bm!578129) bm!578128))

(declare-fun m!7382760 () Bool)

(assert (=> bm!578128 m!7382760))

(declare-fun m!7382764 () Bool)

(assert (=> b!6607810 m!7382764))

(declare-fun m!7382768 () Bool)

(assert (=> bm!578132 m!7382768))

(declare-fun m!7382770 () Bool)

(assert (=> b!6607804 m!7382770))

(declare-fun m!7382774 () Bool)

(assert (=> bm!578131 m!7382774))

(assert (=> bm!578082 d!2071971))

(declare-fun c!1217707 () Bool)

(declare-fun call!578143 () (InoxSet Context!11718))

(declare-fun bm!578134 () Bool)

(declare-fun call!578142 () List!65725)

(declare-fun c!1217709 () Bool)

(declare-fun c!1217708 () Bool)

(assert (=> bm!578134 (= call!578143 (derivationStepZipperDown!1723 (ite c!1217708 (regOne!33463 (h!72049 (exprs!6359 lt!2415117))) (ite c!1217709 (regTwo!33462 (h!72049 (exprs!6359 lt!2415117))) (ite c!1217707 (regOne!33462 (h!72049 (exprs!6359 lt!2415117))) (reg!16804 (h!72049 (exprs!6359 lt!2415117)))))) (ite (or c!1217708 c!1217709) (Context!11719 (t!379377 (exprs!6359 lt!2415117))) (Context!11719 call!578142)) (h!72048 s!2326)))))

(declare-fun b!6607814 () Bool)

(declare-fun e!3997971 () (InoxSet Context!11718))

(declare-fun call!578141 () (InoxSet Context!11718))

(assert (=> b!6607814 (= e!3997971 call!578141)))

(declare-fun b!6607815 () Bool)

(declare-fun e!3997972 () (InoxSet Context!11718))

(declare-fun e!3997970 () (InoxSet Context!11718))

(assert (=> b!6607815 (= e!3997972 e!3997970)))

(assert (=> b!6607815 (= c!1217708 ((_ is Union!16475) (h!72049 (exprs!6359 lt!2415117))))))

(declare-fun d!2071975 () Bool)

(declare-fun c!1217706 () Bool)

(assert (=> d!2071975 (= c!1217706 (and ((_ is ElementMatch!16475) (h!72049 (exprs!6359 lt!2415117))) (= (c!1217326 (h!72049 (exprs!6359 lt!2415117))) (h!72048 s!2326))))))

(assert (=> d!2071975 (= (derivationStepZipperDown!1723 (h!72049 (exprs!6359 lt!2415117)) (Context!11719 (t!379377 (exprs!6359 lt!2415117))) (h!72048 s!2326)) e!3997972)))

(declare-fun b!6607816 () Bool)

(declare-fun e!3997967 () (InoxSet Context!11718))

(declare-fun e!3997968 () (InoxSet Context!11718))

(assert (=> b!6607816 (= e!3997967 e!3997968)))

(assert (=> b!6607816 (= c!1217707 ((_ is Concat!25320) (h!72049 (exprs!6359 lt!2415117))))))

(declare-fun b!6607817 () Bool)

(assert (=> b!6607817 (= e!3997972 (store ((as const (Array Context!11718 Bool)) false) (Context!11719 (t!379377 (exprs!6359 lt!2415117))) true))))

(declare-fun b!6607818 () Bool)

(declare-fun e!3997969 () Bool)

(assert (=> b!6607818 (= c!1217709 e!3997969)))

(declare-fun res!2709511 () Bool)

(assert (=> b!6607818 (=> (not res!2709511) (not e!3997969))))

(assert (=> b!6607818 (= res!2709511 ((_ is Concat!25320) (h!72049 (exprs!6359 lt!2415117))))))

(assert (=> b!6607818 (= e!3997970 e!3997967)))

(declare-fun bm!578135 () Bool)

(declare-fun call!578139 () (InoxSet Context!11718))

(assert (=> bm!578135 (= call!578139 call!578143)))

(declare-fun b!6607819 () Bool)

(declare-fun c!1217710 () Bool)

(assert (=> b!6607819 (= c!1217710 ((_ is Star!16475) (h!72049 (exprs!6359 lt!2415117))))))

(assert (=> b!6607819 (= e!3997968 e!3997971)))

(declare-fun bm!578136 () Bool)

(assert (=> bm!578136 (= call!578141 call!578139)))

(declare-fun bm!578137 () Bool)

(declare-fun call!578144 () List!65725)

(assert (=> bm!578137 (= call!578144 ($colon$colon!2316 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415117)))) (ite (or c!1217709 c!1217707) (regTwo!33462 (h!72049 (exprs!6359 lt!2415117))) (h!72049 (exprs!6359 lt!2415117)))))))

(declare-fun b!6607820 () Bool)

(assert (=> b!6607820 (= e!3997971 ((as const (Array Context!11718 Bool)) false))))

(declare-fun call!578140 () (InoxSet Context!11718))

(declare-fun bm!578138 () Bool)

(assert (=> bm!578138 (= call!578140 (derivationStepZipperDown!1723 (ite c!1217708 (regTwo!33463 (h!72049 (exprs!6359 lt!2415117))) (regOne!33462 (h!72049 (exprs!6359 lt!2415117)))) (ite c!1217708 (Context!11719 (t!379377 (exprs!6359 lt!2415117))) (Context!11719 call!578144)) (h!72048 s!2326)))))

(declare-fun b!6607821 () Bool)

(assert (=> b!6607821 (= e!3997970 ((_ map or) call!578143 call!578140))))

(declare-fun b!6607822 () Bool)

(assert (=> b!6607822 (= e!3997967 ((_ map or) call!578140 call!578139))))

(declare-fun bm!578139 () Bool)

(assert (=> bm!578139 (= call!578142 call!578144)))

(declare-fun b!6607823 () Bool)

(assert (=> b!6607823 (= e!3997969 (nullable!6468 (regOne!33462 (h!72049 (exprs!6359 lt!2415117)))))))

(declare-fun b!6607824 () Bool)

(assert (=> b!6607824 (= e!3997968 call!578141)))

(assert (= (and d!2071975 c!1217706) b!6607817))

(assert (= (and d!2071975 (not c!1217706)) b!6607815))

(assert (= (and b!6607815 c!1217708) b!6607821))

(assert (= (and b!6607815 (not c!1217708)) b!6607818))

(assert (= (and b!6607818 res!2709511) b!6607823))

(assert (= (and b!6607818 c!1217709) b!6607822))

(assert (= (and b!6607818 (not c!1217709)) b!6607816))

(assert (= (and b!6607816 c!1217707) b!6607824))

(assert (= (and b!6607816 (not c!1217707)) b!6607819))

(assert (= (and b!6607819 c!1217710) b!6607814))

(assert (= (and b!6607819 (not c!1217710)) b!6607820))

(assert (= (or b!6607824 b!6607814) bm!578139))

(assert (= (or b!6607824 b!6607814) bm!578136))

(assert (= (or b!6607822 bm!578139) bm!578137))

(assert (= (or b!6607822 bm!578136) bm!578135))

(assert (= (or b!6607821 b!6607822) bm!578138))

(assert (= (or b!6607821 bm!578135) bm!578134))

(declare-fun m!7382776 () Bool)

(assert (=> bm!578134 m!7382776))

(declare-fun m!7382780 () Bool)

(assert (=> b!6607823 m!7382780))

(declare-fun m!7382782 () Bool)

(assert (=> bm!578138 m!7382782))

(declare-fun m!7382784 () Bool)

(assert (=> b!6607817 m!7382784))

(declare-fun m!7382786 () Bool)

(assert (=> bm!578137 m!7382786))

(assert (=> bm!578028 d!2071975))

(declare-fun d!2071981 () Bool)

(assert (=> d!2071981 (= (nullable!6468 r!7292) (nullableFct!2393 r!7292))))

(declare-fun bs!1693646 () Bool)

(assert (= bs!1693646 d!2071981))

(declare-fun m!7382788 () Bool)

(assert (=> bs!1693646 m!7382788))

(assert (=> b!6607541 d!2071981))

(declare-fun call!578149 () (InoxSet Context!11718))

(declare-fun bm!578140 () Bool)

(declare-fun call!578148 () List!65725)

(declare-fun c!1217714 () Bool)

(declare-fun c!1217713 () Bool)

(declare-fun c!1217712 () Bool)

(assert (=> bm!578140 (= call!578149 (derivationStepZipperDown!1723 (ite c!1217713 (regOne!33463 (h!72049 (exprs!6359 lt!2415118))) (ite c!1217714 (regTwo!33462 (h!72049 (exprs!6359 lt!2415118))) (ite c!1217712 (regOne!33462 (h!72049 (exprs!6359 lt!2415118))) (reg!16804 (h!72049 (exprs!6359 lt!2415118)))))) (ite (or c!1217713 c!1217714) (Context!11719 (t!379377 (exprs!6359 lt!2415118))) (Context!11719 call!578148)) (h!72048 s!2326)))))

(declare-fun b!6607825 () Bool)

(declare-fun e!3997977 () (InoxSet Context!11718))

(declare-fun call!578147 () (InoxSet Context!11718))

(assert (=> b!6607825 (= e!3997977 call!578147)))

(declare-fun b!6607826 () Bool)

(declare-fun e!3997978 () (InoxSet Context!11718))

(declare-fun e!3997976 () (InoxSet Context!11718))

(assert (=> b!6607826 (= e!3997978 e!3997976)))

(assert (=> b!6607826 (= c!1217713 ((_ is Union!16475) (h!72049 (exprs!6359 lt!2415118))))))

(declare-fun d!2071983 () Bool)

(declare-fun c!1217711 () Bool)

(assert (=> d!2071983 (= c!1217711 (and ((_ is ElementMatch!16475) (h!72049 (exprs!6359 lt!2415118))) (= (c!1217326 (h!72049 (exprs!6359 lt!2415118))) (h!72048 s!2326))))))

(assert (=> d!2071983 (= (derivationStepZipperDown!1723 (h!72049 (exprs!6359 lt!2415118)) (Context!11719 (t!379377 (exprs!6359 lt!2415118))) (h!72048 s!2326)) e!3997978)))

(declare-fun b!6607827 () Bool)

(declare-fun e!3997973 () (InoxSet Context!11718))

(declare-fun e!3997974 () (InoxSet Context!11718))

(assert (=> b!6607827 (= e!3997973 e!3997974)))

(assert (=> b!6607827 (= c!1217712 ((_ is Concat!25320) (h!72049 (exprs!6359 lt!2415118))))))

(declare-fun b!6607828 () Bool)

(assert (=> b!6607828 (= e!3997978 (store ((as const (Array Context!11718 Bool)) false) (Context!11719 (t!379377 (exprs!6359 lt!2415118))) true))))

(declare-fun b!6607829 () Bool)

(declare-fun e!3997975 () Bool)

(assert (=> b!6607829 (= c!1217714 e!3997975)))

(declare-fun res!2709512 () Bool)

(assert (=> b!6607829 (=> (not res!2709512) (not e!3997975))))

(assert (=> b!6607829 (= res!2709512 ((_ is Concat!25320) (h!72049 (exprs!6359 lt!2415118))))))

(assert (=> b!6607829 (= e!3997976 e!3997973)))

(declare-fun bm!578141 () Bool)

(declare-fun call!578145 () (InoxSet Context!11718))

(assert (=> bm!578141 (= call!578145 call!578149)))

(declare-fun b!6607830 () Bool)

(declare-fun c!1217715 () Bool)

(assert (=> b!6607830 (= c!1217715 ((_ is Star!16475) (h!72049 (exprs!6359 lt!2415118))))))

(assert (=> b!6607830 (= e!3997974 e!3997977)))

(declare-fun bm!578142 () Bool)

(assert (=> bm!578142 (= call!578147 call!578145)))

(declare-fun call!578150 () List!65725)

(declare-fun bm!578143 () Bool)

(assert (=> bm!578143 (= call!578150 ($colon$colon!2316 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415118)))) (ite (or c!1217714 c!1217712) (regTwo!33462 (h!72049 (exprs!6359 lt!2415118))) (h!72049 (exprs!6359 lt!2415118)))))))

(declare-fun b!6607831 () Bool)

(assert (=> b!6607831 (= e!3997977 ((as const (Array Context!11718 Bool)) false))))

(declare-fun bm!578144 () Bool)

(declare-fun call!578146 () (InoxSet Context!11718))

(assert (=> bm!578144 (= call!578146 (derivationStepZipperDown!1723 (ite c!1217713 (regTwo!33463 (h!72049 (exprs!6359 lt!2415118))) (regOne!33462 (h!72049 (exprs!6359 lt!2415118)))) (ite c!1217713 (Context!11719 (t!379377 (exprs!6359 lt!2415118))) (Context!11719 call!578150)) (h!72048 s!2326)))))

(declare-fun b!6607832 () Bool)

(assert (=> b!6607832 (= e!3997976 ((_ map or) call!578149 call!578146))))

(declare-fun b!6607833 () Bool)

(assert (=> b!6607833 (= e!3997973 ((_ map or) call!578146 call!578145))))

(declare-fun bm!578145 () Bool)

(assert (=> bm!578145 (= call!578148 call!578150)))

(declare-fun b!6607834 () Bool)

(assert (=> b!6607834 (= e!3997975 (nullable!6468 (regOne!33462 (h!72049 (exprs!6359 lt!2415118)))))))

(declare-fun b!6607835 () Bool)

(assert (=> b!6607835 (= e!3997974 call!578147)))

(assert (= (and d!2071983 c!1217711) b!6607828))

(assert (= (and d!2071983 (not c!1217711)) b!6607826))

(assert (= (and b!6607826 c!1217713) b!6607832))

(assert (= (and b!6607826 (not c!1217713)) b!6607829))

(assert (= (and b!6607829 res!2709512) b!6607834))

(assert (= (and b!6607829 c!1217714) b!6607833))

(assert (= (and b!6607829 (not c!1217714)) b!6607827))

(assert (= (and b!6607827 c!1217712) b!6607835))

(assert (= (and b!6607827 (not c!1217712)) b!6607830))

(assert (= (and b!6607830 c!1217715) b!6607825))

(assert (= (and b!6607830 (not c!1217715)) b!6607831))

(assert (= (or b!6607835 b!6607825) bm!578145))

(assert (= (or b!6607835 b!6607825) bm!578142))

(assert (= (or b!6607833 bm!578145) bm!578143))

(assert (= (or b!6607833 bm!578142) bm!578141))

(assert (= (or b!6607832 b!6607833) bm!578144))

(assert (= (or b!6607832 bm!578141) bm!578140))

(declare-fun m!7382790 () Bool)

(assert (=> bm!578140 m!7382790))

(declare-fun m!7382792 () Bool)

(assert (=> b!6607834 m!7382792))

(declare-fun m!7382794 () Bool)

(assert (=> bm!578144 m!7382794))

(declare-fun m!7382796 () Bool)

(assert (=> b!6607828 m!7382796))

(declare-fun m!7382798 () Bool)

(assert (=> bm!578143 m!7382798))

(assert (=> bm!578047 d!2071983))

(declare-fun bs!1693647 () Bool)

(declare-fun d!2071985 () Bool)

(assert (= bs!1693647 (and d!2071985 d!2071783)))

(declare-fun lambda!368704 () Int)

(assert (=> bs!1693647 (= lambda!368704 lambda!368660)))

(declare-fun bs!1693648 () Bool)

(assert (= bs!1693648 (and d!2071985 d!2071903)))

(assert (=> bs!1693648 (= lambda!368704 lambda!368696)))

(declare-fun bs!1693649 () Bool)

(assert (= bs!1693649 (and d!2071985 d!2071851)))

(assert (=> bs!1693649 (= lambda!368704 lambda!368689)))

(declare-fun bs!1693650 () Bool)

(assert (= bs!1693650 (and d!2071985 d!2071951)))

(assert (=> bs!1693650 (= lambda!368704 lambda!368700)))

(declare-fun bs!1693651 () Bool)

(assert (= bs!1693651 (and d!2071985 d!2071909)))

(assert (=> bs!1693651 (= lambda!368704 lambda!368697)))

(declare-fun bs!1693652 () Bool)

(assert (= bs!1693652 (and d!2071985 d!2071653)))

(assert (=> bs!1693652 (= lambda!368704 lambda!368603)))

(declare-fun bs!1693653 () Bool)

(assert (= bs!1693653 (and d!2071985 d!2071661)))

(assert (=> bs!1693653 (= lambda!368704 lambda!368608)))

(declare-fun bs!1693654 () Bool)

(assert (= bs!1693654 (and d!2071985 d!2071953)))

(assert (=> bs!1693654 (= lambda!368704 lambda!368701)))

(assert (=> d!2071985 (= (inv!84434 setElem!45126) (forall!15673 (exprs!6359 setElem!45126) lambda!368704))))

(declare-fun bs!1693655 () Bool)

(assert (= bs!1693655 d!2071985))

(declare-fun m!7382800 () Bool)

(assert (=> bs!1693655 m!7382800))

(assert (=> setNonEmpty!45126 d!2071985))

(assert (=> d!2071857 d!2071853))

(assert (=> d!2071857 d!2071855))

(declare-fun d!2071987 () Bool)

(assert (=> d!2071987 (= (matchR!8658 lt!2415143 s!2326) (matchRSpec!3576 lt!2415143 s!2326))))

(assert (=> d!2071987 true))

(declare-fun _$88!5289 () Unit!159235)

(assert (=> d!2071987 (= (choose!49355 lt!2415143 s!2326) _$88!5289)))

(declare-fun bs!1693656 () Bool)

(assert (= bs!1693656 d!2071987))

(assert (=> bs!1693656 m!7381718))

(assert (=> bs!1693656 m!7381720))

(assert (=> d!2071857 d!2071987))

(declare-fun b!6607852 () Bool)

(declare-fun e!3997990 () Bool)

(declare-fun call!578158 () Bool)

(assert (=> b!6607852 (= e!3997990 call!578158)))

(declare-fun d!2071993 () Bool)

(declare-fun res!2709518 () Bool)

(declare-fun e!3997992 () Bool)

(assert (=> d!2071993 (=> res!2709518 e!3997992)))

(assert (=> d!2071993 (= res!2709518 ((_ is ElementMatch!16475) lt!2415143))))

(assert (=> d!2071993 (= (validRegex!8211 lt!2415143) e!3997992)))

(declare-fun b!6607853 () Bool)

(declare-fun e!3997989 () Bool)

(declare-fun e!3997994 () Bool)

(assert (=> b!6607853 (= e!3997989 e!3997994)))

(declare-fun res!2709517 () Bool)

(assert (=> b!6607853 (=> (not res!2709517) (not e!3997994))))

(declare-fun call!578159 () Bool)

(assert (=> b!6607853 (= res!2709517 call!578159)))

(declare-fun b!6607854 () Bool)

(declare-fun e!3997991 () Bool)

(declare-fun call!578160 () Bool)

(assert (=> b!6607854 (= e!3997991 call!578160)))

(declare-fun b!6607855 () Bool)

(declare-fun e!3997993 () Bool)

(assert (=> b!6607855 (= e!3997993 e!3997990)))

(declare-fun res!2709515 () Bool)

(assert (=> b!6607855 (= res!2709515 (not (nullable!6468 (reg!16804 lt!2415143))))))

(assert (=> b!6607855 (=> (not res!2709515) (not e!3997990))))

(declare-fun bm!578153 () Bool)

(assert (=> bm!578153 (= call!578160 call!578158)))

(declare-fun b!6607856 () Bool)

(declare-fun e!3997988 () Bool)

(assert (=> b!6607856 (= e!3997993 e!3997988)))

(declare-fun c!1217724 () Bool)

(assert (=> b!6607856 (= c!1217724 ((_ is Union!16475) lt!2415143))))

(declare-fun bm!578154 () Bool)

(declare-fun c!1217723 () Bool)

(assert (=> bm!578154 (= call!578158 (validRegex!8211 (ite c!1217723 (reg!16804 lt!2415143) (ite c!1217724 (regTwo!33463 lt!2415143) (regTwo!33462 lt!2415143)))))))

(declare-fun bm!578155 () Bool)

(assert (=> bm!578155 (= call!578159 (validRegex!8211 (ite c!1217724 (regOne!33463 lt!2415143) (regOne!33462 lt!2415143))))))

(declare-fun b!6607857 () Bool)

(declare-fun res!2709519 () Bool)

(assert (=> b!6607857 (=> res!2709519 e!3997989)))

(assert (=> b!6607857 (= res!2709519 (not ((_ is Concat!25320) lt!2415143)))))

(assert (=> b!6607857 (= e!3997988 e!3997989)))

(declare-fun b!6607858 () Bool)

(assert (=> b!6607858 (= e!3997992 e!3997993)))

(assert (=> b!6607858 (= c!1217723 ((_ is Star!16475) lt!2415143))))

(declare-fun b!6607859 () Bool)

(declare-fun res!2709516 () Bool)

(assert (=> b!6607859 (=> (not res!2709516) (not e!3997991))))

(assert (=> b!6607859 (= res!2709516 call!578159)))

(assert (=> b!6607859 (= e!3997988 e!3997991)))

(declare-fun b!6607860 () Bool)

(assert (=> b!6607860 (= e!3997994 call!578160)))

(assert (= (and d!2071993 (not res!2709518)) b!6607858))

(assert (= (and b!6607858 c!1217723) b!6607855))

(assert (= (and b!6607858 (not c!1217723)) b!6607856))

(assert (= (and b!6607855 res!2709515) b!6607852))

(assert (= (and b!6607856 c!1217724) b!6607859))

(assert (= (and b!6607856 (not c!1217724)) b!6607857))

(assert (= (and b!6607859 res!2709516) b!6607854))

(assert (= (and b!6607857 (not res!2709519)) b!6607853))

(assert (= (and b!6607853 res!2709517) b!6607860))

(assert (= (or b!6607854 b!6607860) bm!578153))

(assert (= (or b!6607859 b!6607853) bm!578155))

(assert (= (or b!6607852 bm!578153) bm!578154))

(declare-fun m!7382818 () Bool)

(assert (=> b!6607855 m!7382818))

(declare-fun m!7382820 () Bool)

(assert (=> bm!578154 m!7382820))

(declare-fun m!7382822 () Bool)

(assert (=> bm!578155 m!7382822))

(assert (=> d!2071857 d!2071993))

(declare-fun d!2071999 () Bool)

(assert (=> d!2071999 (= (nullable!6468 (reg!16804 lt!2415134)) (nullableFct!2393 (reg!16804 lt!2415134)))))

(declare-fun bs!1693657 () Bool)

(assert (= bs!1693657 d!2071999))

(declare-fun m!7382824 () Bool)

(assert (=> bs!1693657 m!7382824))

(assert (=> b!6607357 d!2071999))

(declare-fun d!2072001 () Bool)

(declare-fun c!1217727 () Bool)

(assert (=> d!2072001 (= c!1217727 (isEmpty!37882 (tail!12487 (t!379376 s!2326))))))

(declare-fun e!3998002 () Bool)

(assert (=> d!2072001 (= (matchZipper!2487 (derivationStepZipper!2441 lt!2415129 (head!13402 (t!379376 s!2326))) (tail!12487 (t!379376 s!2326))) e!3998002)))

(declare-fun b!6607870 () Bool)

(assert (=> b!6607870 (= e!3998002 (nullableZipper!2220 (derivationStepZipper!2441 lt!2415129 (head!13402 (t!379376 s!2326)))))))

(declare-fun b!6607871 () Bool)

(assert (=> b!6607871 (= e!3998002 (matchZipper!2487 (derivationStepZipper!2441 (derivationStepZipper!2441 lt!2415129 (head!13402 (t!379376 s!2326))) (head!13402 (tail!12487 (t!379376 s!2326)))) (tail!12487 (tail!12487 (t!379376 s!2326)))))))

(assert (= (and d!2072001 c!1217727) b!6607870))

(assert (= (and d!2072001 (not c!1217727)) b!6607871))

(assert (=> d!2072001 m!7382296))

(declare-fun m!7382826 () Bool)

(assert (=> d!2072001 m!7382826))

(assert (=> b!6607870 m!7382294))

(declare-fun m!7382828 () Bool)

(assert (=> b!6607870 m!7382828))

(assert (=> b!6607871 m!7382296))

(declare-fun m!7382830 () Bool)

(assert (=> b!6607871 m!7382830))

(assert (=> b!6607871 m!7382294))

(assert (=> b!6607871 m!7382830))

(declare-fun m!7382832 () Bool)

(assert (=> b!6607871 m!7382832))

(assert (=> b!6607871 m!7382296))

(declare-fun m!7382834 () Bool)

(assert (=> b!6607871 m!7382834))

(assert (=> b!6607871 m!7382832))

(assert (=> b!6607871 m!7382834))

(declare-fun m!7382838 () Bool)

(assert (=> b!6607871 m!7382838))

(assert (=> b!6607258 d!2072001))

(declare-fun bs!1693658 () Bool)

(declare-fun d!2072003 () Bool)

(assert (= bs!1693658 (and d!2072003 b!6606487)))

(declare-fun lambda!368705 () Int)

(assert (=> bs!1693658 (= (= (head!13402 (t!379376 s!2326)) (h!72048 s!2326)) (= lambda!368705 lambda!368578))))

(declare-fun bs!1693659 () Bool)

(assert (= bs!1693659 (and d!2072003 d!2071781)))

(assert (=> bs!1693659 (= (= (head!13402 (t!379376 s!2326)) (h!72048 s!2326)) (= lambda!368705 lambda!368657))))

(declare-fun bs!1693661 () Bool)

(assert (= bs!1693661 (and d!2072003 d!2071785)))

(assert (=> bs!1693661 (= (= (head!13402 (t!379376 s!2326)) (h!72048 s!2326)) (= lambda!368705 lambda!368661))))

(declare-fun bs!1693662 () Bool)

(assert (= bs!1693662 (and d!2072003 d!2071963)))

(assert (=> bs!1693662 (= (= (head!13402 (t!379376 s!2326)) (head!13402 s!2326)) (= lambda!368705 lambda!368702))))

(assert (=> d!2072003 true))

(assert (=> d!2072003 (= (derivationStepZipper!2441 lt!2415129 (head!13402 (t!379376 s!2326))) (flatMap!1980 lt!2415129 lambda!368705))))

(declare-fun bs!1693664 () Bool)

(assert (= bs!1693664 d!2072003))

(declare-fun m!7382848 () Bool)

(assert (=> bs!1693664 m!7382848))

(assert (=> b!6607258 d!2072003))

(declare-fun d!2072011 () Bool)

(assert (=> d!2072011 (= (head!13402 (t!379376 s!2326)) (h!72048 (t!379376 s!2326)))))

(assert (=> b!6607258 d!2072011))

(declare-fun d!2072013 () Bool)

(assert (=> d!2072013 (= (tail!12487 (t!379376 s!2326)) (t!379376 (t!379376 s!2326)))))

(assert (=> b!6607258 d!2072013))

(declare-fun b!6607872 () Bool)

(declare-fun e!3998010 () Bool)

(declare-fun e!3998007 () Bool)

(assert (=> b!6607872 (= e!3998010 e!3998007)))

(declare-fun c!1217733 () Bool)

(assert (=> b!6607872 (= c!1217733 ((_ is Union!16475) (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))

(declare-fun b!6607873 () Bool)

(declare-fun res!2709527 () Bool)

(declare-fun e!3998004 () Bool)

(assert (=> b!6607873 (=> (not res!2709527) (not e!3998004))))

(declare-fun lt!2415335 () Int)

(declare-fun call!578167 () Int)

(assert (=> b!6607873 (= res!2709527 (> lt!2415335 call!578167))))

(declare-fun e!3998012 () Bool)

(assert (=> b!6607873 (= e!3998012 e!3998004)))

(declare-fun b!6607874 () Bool)

(declare-fun e!3998005 () Int)

(declare-fun call!578164 () Int)

(assert (=> b!6607874 (= e!3998005 (+ 1 call!578164))))

(declare-fun b!6607875 () Bool)

(declare-fun e!3998008 () Int)

(declare-fun call!578166 () Int)

(assert (=> b!6607875 (= e!3998008 (+ 1 call!578166))))

(declare-fun b!6607876 () Bool)

(declare-fun e!3998009 () Int)

(assert (=> b!6607876 (= e!3998009 1)))

(declare-fun b!6607877 () Bool)

(declare-fun e!3998011 () Bool)

(assert (=> b!6607877 (= e!3998007 e!3998011)))

(declare-fun res!2709525 () Bool)

(declare-fun call!578170 () Int)

(assert (=> b!6607877 (= res!2709525 (> lt!2415335 call!578170))))

(assert (=> b!6607877 (=> (not res!2709525) (not e!3998011))))

(declare-fun b!6607878 () Bool)

(assert (=> b!6607878 (= e!3998008 1)))

(declare-fun b!6607879 () Bool)

(declare-fun call!578169 () Int)

(assert (=> b!6607879 (= e!3998011 (> lt!2415335 call!578169))))

(declare-fun b!6607880 () Bool)

(declare-fun e!3998003 () Int)

(assert (=> b!6607880 (= e!3998003 (+ 1 call!578166))))

(declare-fun b!6607881 () Bool)

(declare-fun c!1217732 () Bool)

(assert (=> b!6607881 (= c!1217732 ((_ is Union!16475) (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))

(assert (=> b!6607881 (= e!3998005 e!3998003)))

(declare-fun b!6607882 () Bool)

(assert (=> b!6607882 (= e!3998003 e!3998008)))

(declare-fun c!1217728 () Bool)

(assert (=> b!6607882 (= c!1217728 ((_ is Concat!25320) (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))

(declare-fun c!1217729 () Bool)

(declare-fun bm!578159 () Bool)

(assert (=> bm!578159 (= call!578169 (regexDepth!372 (ite c!1217733 (regTwo!33463 (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))) (ite c!1217729 (regOne!33462 (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))) (reg!16804 (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131)))))))))

(declare-fun b!6607883 () Bool)

(declare-fun e!3998006 () Bool)

(assert (=> b!6607883 (= e!3998006 (> lt!2415335 call!578167))))

(declare-fun bm!578160 () Bool)

(assert (=> bm!578160 (= call!578167 call!578169)))

(declare-fun b!6607884 () Bool)

(assert (=> b!6607884 (= e!3998007 e!3998012)))

(assert (=> b!6607884 (= c!1217729 ((_ is Concat!25320) (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))

(declare-fun d!2072015 () Bool)

(assert (=> d!2072015 e!3998010))

(declare-fun res!2709526 () Bool)

(assert (=> d!2072015 (=> (not res!2709526) (not e!3998010))))

(assert (=> d!2072015 (= res!2709526 (> lt!2415335 0))))

(assert (=> d!2072015 (= lt!2415335 e!3998009)))

(declare-fun c!1217731 () Bool)

(assert (=> d!2072015 (= c!1217731 ((_ is ElementMatch!16475) (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))

(assert (=> d!2072015 (= (regexDepth!372 (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))) lt!2415335)))

(declare-fun bm!578161 () Bool)

(declare-fun c!1217734 () Bool)

(assert (=> bm!578161 (= call!578164 (regexDepth!372 (ite c!1217734 (reg!16804 (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))) (ite c!1217732 (regTwo!33463 (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))) (regOne!33462 (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131)))))))))

(declare-fun b!6607885 () Bool)

(assert (=> b!6607885 (= e!3998009 e!3998005)))

(assert (=> b!6607885 (= c!1217734 ((_ is Star!16475) (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))

(declare-fun bm!578162 () Bool)

(declare-fun call!578165 () Int)

(assert (=> bm!578162 (= call!578165 call!578164)))

(declare-fun b!6607886 () Bool)

(declare-fun c!1217730 () Bool)

(assert (=> b!6607886 (= c!1217730 ((_ is Star!16475) (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))

(assert (=> b!6607886 (= e!3998012 e!3998006)))

(declare-fun b!6607887 () Bool)

(assert (=> b!6607887 (= e!3998004 (> lt!2415335 call!578170))))

(declare-fun call!578168 () Int)

(declare-fun bm!578163 () Bool)

(assert (=> bm!578163 (= call!578168 (regexDepth!372 (ite c!1217732 (regOne!33463 (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))) (regTwo!33462 (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))))

(declare-fun bm!578164 () Bool)

(assert (=> bm!578164 (= call!578170 (regexDepth!372 (ite c!1217733 (regOne!33463 (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))) (regTwo!33462 (ite c!1217671 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))))

(declare-fun bm!578165 () Bool)

(assert (=> bm!578165 (= call!578166 (maxBigInt!0 (ite c!1217732 call!578168 call!578165) (ite c!1217732 call!578165 call!578168)))))

(declare-fun b!6607888 () Bool)

(assert (=> b!6607888 (= e!3998006 (= lt!2415335 1))))

(assert (= (and d!2072015 c!1217731) b!6607876))

(assert (= (and d!2072015 (not c!1217731)) b!6607885))

(assert (= (and b!6607885 c!1217734) b!6607874))

(assert (= (and b!6607885 (not c!1217734)) b!6607881))

(assert (= (and b!6607881 c!1217732) b!6607880))

(assert (= (and b!6607881 (not c!1217732)) b!6607882))

(assert (= (and b!6607882 c!1217728) b!6607875))

(assert (= (and b!6607882 (not c!1217728)) b!6607878))

(assert (= (or b!6607880 b!6607875) bm!578162))

(assert (= (or b!6607880 b!6607875) bm!578163))

(assert (= (or b!6607880 b!6607875) bm!578165))

(assert (= (or b!6607874 bm!578162) bm!578161))

(assert (= (and d!2072015 res!2709526) b!6607872))

(assert (= (and b!6607872 c!1217733) b!6607877))

(assert (= (and b!6607872 (not c!1217733)) b!6607884))

(assert (= (and b!6607877 res!2709525) b!6607879))

(assert (= (and b!6607884 c!1217729) b!6607873))

(assert (= (and b!6607884 (not c!1217729)) b!6607886))

(assert (= (and b!6607873 res!2709527) b!6607887))

(assert (= (and b!6607886 c!1217730) b!6607883))

(assert (= (and b!6607886 (not c!1217730)) b!6607888))

(assert (= (or b!6607873 b!6607883) bm!578160))

(assert (= (or b!6607879 bm!578160) bm!578159))

(assert (= (or b!6607877 b!6607887) bm!578164))

(declare-fun m!7382850 () Bool)

(assert (=> bm!578159 m!7382850))

(declare-fun m!7382852 () Bool)

(assert (=> bm!578164 m!7382852))

(declare-fun m!7382854 () Bool)

(assert (=> bm!578161 m!7382854))

(declare-fun m!7382856 () Bool)

(assert (=> bm!578165 m!7382856))

(declare-fun m!7382858 () Bool)

(assert (=> bm!578163 m!7382858))

(assert (=> bm!578115 d!2072015))

(declare-fun d!2072017 () Bool)

(assert (=> d!2072017 (= (isEmpty!37882 s!2326) ((_ is Nil!65600) s!2326))))

(assert (=> bm!578085 d!2072017))

(declare-fun d!2072019 () Bool)

(assert (=> d!2072019 (= (isEmpty!37881 (findConcatSeparation!2780 (reg!16804 (regOne!33462 r!7292)) lt!2415134 Nil!65600 Nil!65600 Nil!65600)) (not ((_ is Some!16365) (findConcatSeparation!2780 (reg!16804 (regOne!33462 r!7292)) lt!2415134 Nil!65600 Nil!65600 Nil!65600))))))

(assert (=> d!2071821 d!2072019))

(declare-fun d!2072021 () Bool)

(assert (=> d!2072021 (= (Exists!3545 (ite c!1217624 lambda!368692 lambda!368693)) (choose!49347 (ite c!1217624 lambda!368692 lambda!368693)))))

(declare-fun bs!1693665 () Bool)

(assert (= bs!1693665 d!2072021))

(declare-fun m!7382860 () Bool)

(assert (=> bs!1693665 m!7382860))

(assert (=> bm!578087 d!2072021))

(declare-fun d!2072023 () Bool)

(assert (not d!2072023))

(assert (=> b!6607330 d!2072023))

(declare-fun d!2072025 () Bool)

(assert (not d!2072025))

(assert (=> b!6607330 d!2072025))

(declare-fun d!2072027 () Bool)

(assert (not d!2072027))

(assert (=> b!6607330 d!2072027))

(declare-fun d!2072029 () Bool)

(assert (not d!2072029))

(assert (=> b!6607330 d!2072029))

(assert (=> d!2071899 d!2072017))

(assert (=> d!2071883 d!2072017))

(assert (=> d!2071883 d!2071863))

(assert (=> bs!1693605 d!2071873))

(declare-fun d!2072031 () Bool)

(declare-fun res!2709532 () Bool)

(declare-fun e!3998017 () Bool)

(assert (=> d!2072031 (=> res!2709532 e!3998017)))

(assert (=> d!2072031 (= res!2709532 ((_ is Nil!65602) lt!2415310))))

(assert (=> d!2072031 (= (noDuplicate!2280 lt!2415310) e!3998017)))

(declare-fun b!6607893 () Bool)

(declare-fun e!3998018 () Bool)

(assert (=> b!6607893 (= e!3998017 e!3998018)))

(declare-fun res!2709533 () Bool)

(assert (=> b!6607893 (=> (not res!2709533) (not e!3998018))))

(declare-fun contains!20215 (List!65726 Context!11718) Bool)

(assert (=> b!6607893 (= res!2709533 (not (contains!20215 (t!379378 lt!2415310) (h!72050 lt!2415310))))))

(declare-fun b!6607894 () Bool)

(assert (=> b!6607894 (= e!3998018 (noDuplicate!2280 (t!379378 lt!2415310)))))

(assert (= (and d!2072031 (not res!2709532)) b!6607893))

(assert (= (and b!6607893 res!2709533) b!6607894))

(declare-fun m!7382862 () Bool)

(assert (=> b!6607893 m!7382862))

(declare-fun m!7382864 () Bool)

(assert (=> b!6607894 m!7382864))

(assert (=> d!2071861 d!2072031))

(declare-fun d!2072033 () Bool)

(declare-fun e!3998027 () Bool)

(assert (=> d!2072033 e!3998027))

(declare-fun res!2709543 () Bool)

(assert (=> d!2072033 (=> (not res!2709543) (not e!3998027))))

(declare-fun res!2709542 () List!65726)

(assert (=> d!2072033 (= res!2709543 (noDuplicate!2280 res!2709542))))

(declare-fun e!3998029 () Bool)

(assert (=> d!2072033 e!3998029))

(assert (=> d!2072033 (= (choose!49357 z!1189) res!2709542)))

(declare-fun b!6607906 () Bool)

(declare-fun e!3998028 () Bool)

(declare-fun tp!1820614 () Bool)

(assert (=> b!6607906 (= e!3998028 tp!1820614)))

(declare-fun b!6607905 () Bool)

(declare-fun tp!1820615 () Bool)

(assert (=> b!6607905 (= e!3998029 (and (inv!84434 (h!72050 res!2709542)) e!3998028 tp!1820615))))

(declare-fun b!6607907 () Bool)

(assert (=> b!6607907 (= e!3998027 (= (content!12652 res!2709542) z!1189))))

(assert (= b!6607905 b!6607906))

(assert (= (and d!2072033 ((_ is Cons!65602) res!2709542)) b!6607905))

(assert (= (and d!2072033 res!2709543) b!6607907))

(declare-fun m!7382866 () Bool)

(assert (=> d!2072033 m!7382866))

(declare-fun m!7382868 () Bool)

(assert (=> b!6607905 m!7382868))

(declare-fun m!7382870 () Bool)

(assert (=> b!6607907 m!7382870))

(assert (=> d!2071861 d!2072033))

(declare-fun d!2072035 () Bool)

(declare-fun e!3998030 () Bool)

(assert (=> d!2072035 e!3998030))

(declare-fun c!1217736 () Bool)

(assert (=> d!2072035 (= c!1217736 ((_ is EmptyExpr!16475) (reg!16804 (regOne!33462 r!7292))))))

(declare-fun lt!2415336 () Bool)

(declare-fun e!3998036 () Bool)

(assert (=> d!2072035 (= lt!2415336 e!3998036)))

(declare-fun c!1217735 () Bool)

(assert (=> d!2072035 (= c!1217735 (isEmpty!37882 (_1!36757 (get!22794 lt!2415288))))))

(assert (=> d!2072035 (validRegex!8211 (reg!16804 (regOne!33462 r!7292)))))

(assert (=> d!2072035 (= (matchR!8658 (reg!16804 (regOne!33462 r!7292)) (_1!36757 (get!22794 lt!2415288))) lt!2415336)))

(declare-fun b!6607908 () Bool)

(declare-fun e!3998031 () Bool)

(assert (=> b!6607908 (= e!3998031 (= (head!13402 (_1!36757 (get!22794 lt!2415288))) (c!1217326 (reg!16804 (regOne!33462 r!7292)))))))

(declare-fun b!6607909 () Bool)

(declare-fun e!3998033 () Bool)

(assert (=> b!6607909 (= e!3998033 (not lt!2415336))))

(declare-fun b!6607910 () Bool)

(declare-fun res!2709550 () Bool)

(assert (=> b!6607910 (=> (not res!2709550) (not e!3998031))))

(assert (=> b!6607910 (= res!2709550 (isEmpty!37882 (tail!12487 (_1!36757 (get!22794 lt!2415288)))))))

(declare-fun bm!578166 () Bool)

(declare-fun call!578171 () Bool)

(assert (=> bm!578166 (= call!578171 (isEmpty!37882 (_1!36757 (get!22794 lt!2415288))))))

(declare-fun b!6607911 () Bool)

(declare-fun e!3998035 () Bool)

(declare-fun e!3998034 () Bool)

(assert (=> b!6607911 (= e!3998035 e!3998034)))

(declare-fun res!2709551 () Bool)

(assert (=> b!6607911 (=> res!2709551 e!3998034)))

(assert (=> b!6607911 (= res!2709551 call!578171)))

(declare-fun b!6607912 () Bool)

(declare-fun res!2709549 () Bool)

(declare-fun e!3998032 () Bool)

(assert (=> b!6607912 (=> res!2709549 e!3998032)))

(assert (=> b!6607912 (= res!2709549 (not ((_ is ElementMatch!16475) (reg!16804 (regOne!33462 r!7292)))))))

(assert (=> b!6607912 (= e!3998033 e!3998032)))

(declare-fun b!6607913 () Bool)

(assert (=> b!6607913 (= e!3998030 e!3998033)))

(declare-fun c!1217737 () Bool)

(assert (=> b!6607913 (= c!1217737 ((_ is EmptyLang!16475) (reg!16804 (regOne!33462 r!7292))))))

(declare-fun b!6607914 () Bool)

(assert (=> b!6607914 (= e!3998032 e!3998035)))

(declare-fun res!2709547 () Bool)

(assert (=> b!6607914 (=> (not res!2709547) (not e!3998035))))

(assert (=> b!6607914 (= res!2709547 (not lt!2415336))))

(declare-fun b!6607915 () Bool)

(declare-fun res!2709548 () Bool)

(assert (=> b!6607915 (=> res!2709548 e!3998032)))

(assert (=> b!6607915 (= res!2709548 e!3998031)))

(declare-fun res!2709545 () Bool)

(assert (=> b!6607915 (=> (not res!2709545) (not e!3998031))))

(assert (=> b!6607915 (= res!2709545 lt!2415336)))

(declare-fun b!6607916 () Bool)

(assert (=> b!6607916 (= e!3998036 (matchR!8658 (derivativeStep!5159 (reg!16804 (regOne!33462 r!7292)) (head!13402 (_1!36757 (get!22794 lt!2415288)))) (tail!12487 (_1!36757 (get!22794 lt!2415288)))))))

(declare-fun b!6607917 () Bool)

(declare-fun res!2709546 () Bool)

(assert (=> b!6607917 (=> res!2709546 e!3998034)))

(assert (=> b!6607917 (= res!2709546 (not (isEmpty!37882 (tail!12487 (_1!36757 (get!22794 lt!2415288))))))))

(declare-fun b!6607918 () Bool)

(assert (=> b!6607918 (= e!3998036 (nullable!6468 (reg!16804 (regOne!33462 r!7292))))))

(declare-fun b!6607919 () Bool)

(declare-fun res!2709544 () Bool)

(assert (=> b!6607919 (=> (not res!2709544) (not e!3998031))))

(assert (=> b!6607919 (= res!2709544 (not call!578171))))

(declare-fun b!6607920 () Bool)

(assert (=> b!6607920 (= e!3998030 (= lt!2415336 call!578171))))

(declare-fun b!6607921 () Bool)

(assert (=> b!6607921 (= e!3998034 (not (= (head!13402 (_1!36757 (get!22794 lt!2415288))) (c!1217326 (reg!16804 (regOne!33462 r!7292))))))))

(assert (= (and d!2072035 c!1217735) b!6607918))

(assert (= (and d!2072035 (not c!1217735)) b!6607916))

(assert (= (and d!2072035 c!1217736) b!6607920))

(assert (= (and d!2072035 (not c!1217736)) b!6607913))

(assert (= (and b!6607913 c!1217737) b!6607909))

(assert (= (and b!6607913 (not c!1217737)) b!6607912))

(assert (= (and b!6607912 (not res!2709549)) b!6607915))

(assert (= (and b!6607915 res!2709545) b!6607919))

(assert (= (and b!6607919 res!2709544) b!6607910))

(assert (= (and b!6607910 res!2709550) b!6607908))

(assert (= (and b!6607915 (not res!2709548)) b!6607914))

(assert (= (and b!6607914 res!2709547) b!6607911))

(assert (= (and b!6607911 (not res!2709551)) b!6607917))

(assert (= (and b!6607917 (not res!2709546)) b!6607921))

(assert (= (or b!6607920 b!6607911 b!6607919) bm!578166))

(declare-fun m!7382872 () Bool)

(assert (=> b!6607916 m!7382872))

(assert (=> b!6607916 m!7382872))

(declare-fun m!7382874 () Bool)

(assert (=> b!6607916 m!7382874))

(declare-fun m!7382876 () Bool)

(assert (=> b!6607916 m!7382876))

(assert (=> b!6607916 m!7382874))

(assert (=> b!6607916 m!7382876))

(declare-fun m!7382878 () Bool)

(assert (=> b!6607916 m!7382878))

(declare-fun m!7382880 () Bool)

(assert (=> b!6607918 m!7382880))

(declare-fun m!7382882 () Bool)

(assert (=> bm!578166 m!7382882))

(assert (=> b!6607908 m!7382872))

(assert (=> b!6607910 m!7382876))

(assert (=> b!6607910 m!7382876))

(declare-fun m!7382884 () Bool)

(assert (=> b!6607910 m!7382884))

(assert (=> d!2072035 m!7382882))

(assert (=> d!2072035 m!7382378))

(assert (=> b!6607921 m!7382872))

(assert (=> b!6607917 m!7382876))

(assert (=> b!6607917 m!7382876))

(assert (=> b!6607917 m!7382884))

(assert (=> b!6607291 d!2072035))

(declare-fun d!2072037 () Bool)

(assert (=> d!2072037 (= (get!22794 lt!2415288) (v!52554 lt!2415288))))

(assert (=> b!6607291 d!2072037))

(declare-fun d!2072039 () Bool)

(assert (=> d!2072039 (= (isEmpty!37882 (tail!12487 s!2326)) ((_ is Nil!65600) (tail!12487 s!2326)))))

(assert (=> b!6607533 d!2072039))

(assert (=> b!6607533 d!2071969))

(declare-fun d!2072041 () Bool)

(declare-fun c!1217738 () Bool)

(assert (=> d!2072041 (= c!1217738 (isEmpty!37882 (tail!12487 (t!379376 s!2326))))))

(declare-fun e!3998037 () Bool)

(assert (=> d!2072041 (= (matchZipper!2487 (derivationStepZipper!2441 lt!2415138 (head!13402 (t!379376 s!2326))) (tail!12487 (t!379376 s!2326))) e!3998037)))

(declare-fun b!6607922 () Bool)

(assert (=> b!6607922 (= e!3998037 (nullableZipper!2220 (derivationStepZipper!2441 lt!2415138 (head!13402 (t!379376 s!2326)))))))

(declare-fun b!6607923 () Bool)

(assert (=> b!6607923 (= e!3998037 (matchZipper!2487 (derivationStepZipper!2441 (derivationStepZipper!2441 lt!2415138 (head!13402 (t!379376 s!2326))) (head!13402 (tail!12487 (t!379376 s!2326)))) (tail!12487 (tail!12487 (t!379376 s!2326)))))))

(assert (= (and d!2072041 c!1217738) b!6607922))

(assert (= (and d!2072041 (not c!1217738)) b!6607923))

(assert (=> d!2072041 m!7382296))

(assert (=> d!2072041 m!7382826))

(assert (=> b!6607922 m!7382578))

(declare-fun m!7382886 () Bool)

(assert (=> b!6607922 m!7382886))

(assert (=> b!6607923 m!7382296))

(assert (=> b!6607923 m!7382830))

(assert (=> b!6607923 m!7382578))

(assert (=> b!6607923 m!7382830))

(declare-fun m!7382888 () Bool)

(assert (=> b!6607923 m!7382888))

(assert (=> b!6607923 m!7382296))

(assert (=> b!6607923 m!7382834))

(assert (=> b!6607923 m!7382888))

(assert (=> b!6607923 m!7382834))

(declare-fun m!7382890 () Bool)

(assert (=> b!6607923 m!7382890))

(assert (=> b!6607548 d!2072041))

(declare-fun bs!1693666 () Bool)

(declare-fun d!2072043 () Bool)

(assert (= bs!1693666 (and d!2072043 d!2072003)))

(declare-fun lambda!368708 () Int)

(assert (=> bs!1693666 (= lambda!368708 lambda!368705)))

(declare-fun bs!1693667 () Bool)

(assert (= bs!1693667 (and d!2072043 d!2071963)))

(assert (=> bs!1693667 (= (= (head!13402 (t!379376 s!2326)) (head!13402 s!2326)) (= lambda!368708 lambda!368702))))

(declare-fun bs!1693668 () Bool)

(assert (= bs!1693668 (and d!2072043 b!6606487)))

(assert (=> bs!1693668 (= (= (head!13402 (t!379376 s!2326)) (h!72048 s!2326)) (= lambda!368708 lambda!368578))))

(declare-fun bs!1693669 () Bool)

(assert (= bs!1693669 (and d!2072043 d!2071781)))

(assert (=> bs!1693669 (= (= (head!13402 (t!379376 s!2326)) (h!72048 s!2326)) (= lambda!368708 lambda!368657))))

(declare-fun bs!1693670 () Bool)

(assert (= bs!1693670 (and d!2072043 d!2071785)))

(assert (=> bs!1693670 (= (= (head!13402 (t!379376 s!2326)) (h!72048 s!2326)) (= lambda!368708 lambda!368661))))

(assert (=> d!2072043 true))

(assert (=> d!2072043 (= (derivationStepZipper!2441 lt!2415138 (head!13402 (t!379376 s!2326))) (flatMap!1980 lt!2415138 lambda!368708))))

(declare-fun bs!1693671 () Bool)

(assert (= bs!1693671 d!2072043))

(declare-fun m!7382892 () Bool)

(assert (=> bs!1693671 m!7382892))

(assert (=> b!6607548 d!2072043))

(assert (=> b!6607548 d!2072011))

(assert (=> b!6607548 d!2072013))

(declare-fun d!2072045 () Bool)

(assert (=> d!2072045 (= (head!13401 (t!379377 (exprs!6359 (h!72050 zl!343)))) (h!72049 (t!379377 (exprs!6359 (h!72050 zl!343)))))))

(assert (=> b!6607652 d!2072045))

(assert (=> d!2071889 d!2071885))

(assert (=> d!2071889 d!2071887))

(declare-fun d!2072047 () Bool)

(assert (=> d!2072047 (= (matchR!8658 lt!2415131 s!2326) (matchZipper!2487 lt!2415147 s!2326))))

(assert (=> d!2072047 true))

(declare-fun _$44!1695 () Unit!159235)

(assert (=> d!2072047 (= (choose!49358 lt!2415147 lt!2415114 lt!2415131 s!2326) _$44!1695)))

(declare-fun bs!1693672 () Bool)

(assert (= bs!1693672 d!2072047))

(assert (=> bs!1693672 m!7381618))

(assert (=> bs!1693672 m!7381620))

(assert (=> d!2071889 d!2072047))

(declare-fun b!6607930 () Bool)

(declare-fun e!3998042 () Bool)

(declare-fun call!578172 () Bool)

(assert (=> b!6607930 (= e!3998042 call!578172)))

(declare-fun d!2072049 () Bool)

(declare-fun res!2709561 () Bool)

(declare-fun e!3998044 () Bool)

(assert (=> d!2072049 (=> res!2709561 e!3998044)))

(assert (=> d!2072049 (= res!2709561 ((_ is ElementMatch!16475) lt!2415131))))

(assert (=> d!2072049 (= (validRegex!8211 lt!2415131) e!3998044)))

(declare-fun b!6607931 () Bool)

(declare-fun e!3998041 () Bool)

(declare-fun e!3998046 () Bool)

(assert (=> b!6607931 (= e!3998041 e!3998046)))

(declare-fun res!2709560 () Bool)

(assert (=> b!6607931 (=> (not res!2709560) (not e!3998046))))

(declare-fun call!578173 () Bool)

(assert (=> b!6607931 (= res!2709560 call!578173)))

(declare-fun b!6607932 () Bool)

(declare-fun e!3998043 () Bool)

(declare-fun call!578174 () Bool)

(assert (=> b!6607932 (= e!3998043 call!578174)))

(declare-fun b!6607933 () Bool)

(declare-fun e!3998045 () Bool)

(assert (=> b!6607933 (= e!3998045 e!3998042)))

(declare-fun res!2709558 () Bool)

(assert (=> b!6607933 (= res!2709558 (not (nullable!6468 (reg!16804 lt!2415131))))))

(assert (=> b!6607933 (=> (not res!2709558) (not e!3998042))))

(declare-fun bm!578167 () Bool)

(assert (=> bm!578167 (= call!578174 call!578172)))

(declare-fun b!6607934 () Bool)

(declare-fun e!3998040 () Bool)

(assert (=> b!6607934 (= e!3998045 e!3998040)))

(declare-fun c!1217740 () Bool)

(assert (=> b!6607934 (= c!1217740 ((_ is Union!16475) lt!2415131))))

(declare-fun c!1217739 () Bool)

(declare-fun bm!578168 () Bool)

(assert (=> bm!578168 (= call!578172 (validRegex!8211 (ite c!1217739 (reg!16804 lt!2415131) (ite c!1217740 (regTwo!33463 lt!2415131) (regTwo!33462 lt!2415131)))))))

(declare-fun bm!578169 () Bool)

(assert (=> bm!578169 (= call!578173 (validRegex!8211 (ite c!1217740 (regOne!33463 lt!2415131) (regOne!33462 lt!2415131))))))

(declare-fun b!6607935 () Bool)

(declare-fun res!2709562 () Bool)

(assert (=> b!6607935 (=> res!2709562 e!3998041)))

(assert (=> b!6607935 (= res!2709562 (not ((_ is Concat!25320) lt!2415131)))))

(assert (=> b!6607935 (= e!3998040 e!3998041)))

(declare-fun b!6607936 () Bool)

(assert (=> b!6607936 (= e!3998044 e!3998045)))

(assert (=> b!6607936 (= c!1217739 ((_ is Star!16475) lt!2415131))))

(declare-fun b!6607937 () Bool)

(declare-fun res!2709559 () Bool)

(assert (=> b!6607937 (=> (not res!2709559) (not e!3998043))))

(assert (=> b!6607937 (= res!2709559 call!578173)))

(assert (=> b!6607937 (= e!3998040 e!3998043)))

(declare-fun b!6607938 () Bool)

(assert (=> b!6607938 (= e!3998046 call!578174)))

(assert (= (and d!2072049 (not res!2709561)) b!6607936))

(assert (= (and b!6607936 c!1217739) b!6607933))

(assert (= (and b!6607936 (not c!1217739)) b!6607934))

(assert (= (and b!6607933 res!2709558) b!6607930))

(assert (= (and b!6607934 c!1217740) b!6607937))

(assert (= (and b!6607934 (not c!1217740)) b!6607935))

(assert (= (and b!6607937 res!2709559) b!6607932))

(assert (= (and b!6607935 (not res!2709562)) b!6607931))

(assert (= (and b!6607931 res!2709560) b!6607938))

(assert (= (or b!6607932 b!6607938) bm!578167))

(assert (= (or b!6607937 b!6607931) bm!578169))

(assert (= (or b!6607930 bm!578167) bm!578168))

(declare-fun m!7382894 () Bool)

(assert (=> b!6607933 m!7382894))

(declare-fun m!7382896 () Bool)

(assert (=> bm!578168 m!7382896))

(declare-fun m!7382898 () Bool)

(assert (=> bm!578169 m!7382898))

(assert (=> d!2071889 d!2072049))

(assert (=> b!6607443 d!2071965))

(assert (=> b!6607322 d!2072027))

(declare-fun d!2072051 () Bool)

(assert (=> d!2072051 (= ($colon$colon!2316 (exprs!6359 lt!2415117) (ite (or c!1217610 c!1217608) (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (h!72049 (exprs!6359 (h!72050 zl!343))))) (Cons!65601 (ite (or c!1217610 c!1217608) (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (h!72049 (exprs!6359 (h!72050 zl!343)))) (exprs!6359 lt!2415117)))))

(assert (=> bm!578079 d!2072051))

(assert (=> bm!578071 d!2072017))

(declare-fun bs!1693686 () Bool)

(declare-fun d!2072053 () Bool)

(assert (= bs!1693686 (and d!2072053 b!6607265)))

(declare-fun lambda!368714 () Int)

(assert (=> bs!1693686 (not (= lambda!368714 lambda!368669))))

(declare-fun bs!1693687 () Bool)

(assert (= bs!1693687 (and d!2072053 b!6607267)))

(assert (=> bs!1693687 (not (= lambda!368714 lambda!368670))))

(declare-fun bs!1693688 () Bool)

(assert (= bs!1693688 (and d!2072053 b!6607270)))

(assert (=> bs!1693688 (not (= lambda!368714 lambda!368672))))

(declare-fun bs!1693689 () Bool)

(assert (= bs!1693689 (and d!2072053 b!6607272)))

(assert (=> bs!1693689 (not (= lambda!368714 lambda!368673))))

(declare-fun exists!2652 ((InoxSet Context!11718) Int) Bool)

(assert (=> d!2072053 (= (nullableZipper!2220 z!1189) (exists!2652 z!1189 lambda!368714))))

(declare-fun bs!1693690 () Bool)

(assert (= bs!1693690 d!2072053))

(declare-fun m!7382900 () Bool)

(assert (=> bs!1693690 m!7382900))

(assert (=> b!6607488 d!2072053))

(declare-fun b!6607940 () Bool)

(declare-fun e!3998049 () Bool)

(assert (=> b!6607940 (= e!3998049 (nullable!6468 (h!72049 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415123)))))))))

(declare-fun e!3998047 () (InoxSet Context!11718))

(declare-fun b!6607941 () Bool)

(declare-fun call!578175 () (InoxSet Context!11718))

(assert (=> b!6607941 (= e!3998047 ((_ map or) call!578175 (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415123)))))) (h!72048 s!2326))))))

(declare-fun bm!578170 () Bool)

(assert (=> bm!578170 (= call!578175 (derivationStepZipperDown!1723 (h!72049 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415123))))) (Context!11719 (t!379377 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415123)))))) (h!72048 s!2326)))))

(declare-fun b!6607942 () Bool)

(declare-fun e!3998048 () (InoxSet Context!11718))

(assert (=> b!6607942 (= e!3998048 ((as const (Array Context!11718 Bool)) false))))

(declare-fun b!6607943 () Bool)

(assert (=> b!6607943 (= e!3998047 e!3998048)))

(declare-fun c!1217744 () Bool)

(assert (=> b!6607943 (= c!1217744 ((_ is Cons!65601) (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415123))))))))

(declare-fun b!6607939 () Bool)

(assert (=> b!6607939 (= e!3998048 call!578175)))

(declare-fun d!2072055 () Bool)

(declare-fun c!1217743 () Bool)

(assert (=> d!2072055 (= c!1217743 e!3998049)))

(declare-fun res!2709563 () Bool)

(assert (=> d!2072055 (=> (not res!2709563) (not e!3998049))))

(assert (=> d!2072055 (= res!2709563 ((_ is Cons!65601) (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415123))))))))

(assert (=> d!2072055 (= (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 lt!2415123))) (h!72048 s!2326)) e!3998047)))

(assert (= (and d!2072055 res!2709563) b!6607940))

(assert (= (and d!2072055 c!1217743) b!6607941))

(assert (= (and d!2072055 (not c!1217743)) b!6607943))

(assert (= (and b!6607943 c!1217744) b!6607939))

(assert (= (and b!6607943 (not c!1217744)) b!6607942))

(assert (= (or b!6607941 b!6607939) bm!578170))

(declare-fun m!7382902 () Bool)

(assert (=> b!6607940 m!7382902))

(declare-fun m!7382904 () Bool)

(assert (=> b!6607941 m!7382904))

(declare-fun m!7382906 () Bool)

(assert (=> bm!578170 m!7382906))

(assert (=> b!6607280 d!2072055))

(declare-fun d!2072057 () Bool)

(assert (=> d!2072057 (= (nullable!6468 lt!2415131) (nullableFct!2393 lt!2415131))))

(declare-fun bs!1693691 () Bool)

(assert (= bs!1693691 d!2072057))

(declare-fun m!7382908 () Bool)

(assert (=> bs!1693691 m!7382908))

(assert (=> b!6607514 d!2072057))

(declare-fun d!2072059 () Bool)

(assert (=> d!2072059 (= (isEmptyExpr!1853 lt!2415323) ((_ is EmptyExpr!16475) lt!2415323))))

(assert (=> b!6607569 d!2072059))

(declare-fun d!2072061 () Bool)

(assert (=> d!2072061 (= (isEmpty!37882 (t!379376 s!2326)) ((_ is Nil!65600) (t!379376 s!2326)))))

(assert (=> d!2071817 d!2072061))

(declare-fun c!1217748 () Bool)

(declare-fun call!578180 () (InoxSet Context!11718))

(declare-fun bm!578171 () Bool)

(declare-fun c!1217747 () Bool)

(declare-fun c!1217746 () Bool)

(declare-fun call!578179 () List!65725)

(assert (=> bm!578171 (= call!578180 (derivationStepZipperDown!1723 (ite c!1217747 (regOne!33463 (ite c!1217609 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217610 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217608 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343)))))))) (ite c!1217748 (regTwo!33462 (ite c!1217609 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217610 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217608 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343)))))))) (ite c!1217746 (regOne!33462 (ite c!1217609 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217610 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217608 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343)))))))) (reg!16804 (ite c!1217609 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217610 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217608 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343))))))))))) (ite (or c!1217747 c!1217748) (ite (or c!1217609 c!1217610) lt!2415117 (Context!11719 call!578084)) (Context!11719 call!578179)) (h!72048 s!2326)))))

(declare-fun b!6607944 () Bool)

(declare-fun e!3998054 () (InoxSet Context!11718))

(declare-fun call!578178 () (InoxSet Context!11718))

(assert (=> b!6607944 (= e!3998054 call!578178)))

(declare-fun b!6607945 () Bool)

(declare-fun e!3998055 () (InoxSet Context!11718))

(declare-fun e!3998053 () (InoxSet Context!11718))

(assert (=> b!6607945 (= e!3998055 e!3998053)))

(assert (=> b!6607945 (= c!1217747 ((_ is Union!16475) (ite c!1217609 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217610 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217608 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343)))))))))))

(declare-fun d!2072063 () Bool)

(declare-fun c!1217745 () Bool)

(assert (=> d!2072063 (= c!1217745 (and ((_ is ElementMatch!16475) (ite c!1217609 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217610 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217608 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343)))))))) (= (c!1217326 (ite c!1217609 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217610 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217608 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343)))))))) (h!72048 s!2326))))))

(assert (=> d!2072063 (= (derivationStepZipperDown!1723 (ite c!1217609 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217610 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217608 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343))))))) (ite (or c!1217609 c!1217610) lt!2415117 (Context!11719 call!578084)) (h!72048 s!2326)) e!3998055)))

(declare-fun b!6607946 () Bool)

(declare-fun e!3998050 () (InoxSet Context!11718))

(declare-fun e!3998051 () (InoxSet Context!11718))

(assert (=> b!6607946 (= e!3998050 e!3998051)))

(assert (=> b!6607946 (= c!1217746 ((_ is Concat!25320) (ite c!1217609 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217610 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217608 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343)))))))))))

(declare-fun b!6607947 () Bool)

(assert (=> b!6607947 (= e!3998055 (store ((as const (Array Context!11718 Bool)) false) (ite (or c!1217609 c!1217610) lt!2415117 (Context!11719 call!578084)) true))))

(declare-fun b!6607948 () Bool)

(declare-fun e!3998052 () Bool)

(assert (=> b!6607948 (= c!1217748 e!3998052)))

(declare-fun res!2709564 () Bool)

(assert (=> b!6607948 (=> (not res!2709564) (not e!3998052))))

(assert (=> b!6607948 (= res!2709564 ((_ is Concat!25320) (ite c!1217609 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217610 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217608 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343)))))))))))

(assert (=> b!6607948 (= e!3998053 e!3998050)))

(declare-fun bm!578172 () Bool)

(declare-fun call!578176 () (InoxSet Context!11718))

(assert (=> bm!578172 (= call!578176 call!578180)))

(declare-fun c!1217749 () Bool)

(declare-fun b!6607949 () Bool)

(assert (=> b!6607949 (= c!1217749 ((_ is Star!16475) (ite c!1217609 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217610 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217608 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343)))))))))))

(assert (=> b!6607949 (= e!3998051 e!3998054)))

(declare-fun bm!578173 () Bool)

(assert (=> bm!578173 (= call!578178 call!578176)))

(declare-fun call!578181 () List!65725)

(declare-fun bm!578174 () Bool)

(assert (=> bm!578174 (= call!578181 ($colon$colon!2316 (exprs!6359 (ite (or c!1217609 c!1217610) lt!2415117 (Context!11719 call!578084))) (ite (or c!1217748 c!1217746) (regTwo!33462 (ite c!1217609 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217610 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217608 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343)))))))) (ite c!1217609 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217610 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217608 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343))))))))))))

(declare-fun b!6607950 () Bool)

(assert (=> b!6607950 (= e!3998054 ((as const (Array Context!11718 Bool)) false))))

(declare-fun call!578177 () (InoxSet Context!11718))

(declare-fun bm!578175 () Bool)

(assert (=> bm!578175 (= call!578177 (derivationStepZipperDown!1723 (ite c!1217747 (regTwo!33463 (ite c!1217609 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217610 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217608 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343)))))))) (regOne!33462 (ite c!1217609 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217610 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217608 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343))))))))) (ite c!1217747 (ite (or c!1217609 c!1217610) lt!2415117 (Context!11719 call!578084)) (Context!11719 call!578181)) (h!72048 s!2326)))))

(declare-fun b!6607951 () Bool)

(assert (=> b!6607951 (= e!3998053 ((_ map or) call!578180 call!578177))))

(declare-fun b!6607952 () Bool)

(assert (=> b!6607952 (= e!3998050 ((_ map or) call!578177 call!578176))))

(declare-fun bm!578176 () Bool)

(assert (=> bm!578176 (= call!578179 call!578181)))

(declare-fun b!6607953 () Bool)

(assert (=> b!6607953 (= e!3998052 (nullable!6468 (regOne!33462 (ite c!1217609 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217610 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217608 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343))))))))))))

(declare-fun b!6607954 () Bool)

(assert (=> b!6607954 (= e!3998051 call!578178)))

(assert (= (and d!2072063 c!1217745) b!6607947))

(assert (= (and d!2072063 (not c!1217745)) b!6607945))

(assert (= (and b!6607945 c!1217747) b!6607951))

(assert (= (and b!6607945 (not c!1217747)) b!6607948))

(assert (= (and b!6607948 res!2709564) b!6607953))

(assert (= (and b!6607948 c!1217748) b!6607952))

(assert (= (and b!6607948 (not c!1217748)) b!6607946))

(assert (= (and b!6607946 c!1217746) b!6607954))

(assert (= (and b!6607946 (not c!1217746)) b!6607949))

(assert (= (and b!6607949 c!1217749) b!6607944))

(assert (= (and b!6607949 (not c!1217749)) b!6607950))

(assert (= (or b!6607954 b!6607944) bm!578176))

(assert (= (or b!6607954 b!6607944) bm!578173))

(assert (= (or b!6607952 bm!578176) bm!578174))

(assert (= (or b!6607952 bm!578173) bm!578172))

(assert (= (or b!6607951 b!6607952) bm!578175))

(assert (= (or b!6607951 bm!578172) bm!578171))

(declare-fun m!7382910 () Bool)

(assert (=> bm!578171 m!7382910))

(declare-fun m!7382912 () Bool)

(assert (=> b!6607953 m!7382912))

(declare-fun m!7382914 () Bool)

(assert (=> bm!578175 m!7382914))

(declare-fun m!7382916 () Bool)

(assert (=> b!6607947 m!7382916))

(declare-fun m!7382918 () Bool)

(assert (=> bm!578174 m!7382918))

(assert (=> bm!578076 d!2072063))

(declare-fun bs!1693692 () Bool)

(declare-fun d!2072065 () Bool)

(assert (= bs!1693692 (and d!2072065 d!2072053)))

(declare-fun lambda!368716 () Int)

(assert (=> bs!1693692 (= lambda!368716 lambda!368714)))

(declare-fun bs!1693693 () Bool)

(assert (= bs!1693693 (and d!2072065 b!6607272)))

(assert (=> bs!1693693 (not (= lambda!368716 lambda!368673))))

(declare-fun bs!1693694 () Bool)

(assert (= bs!1693694 (and d!2072065 b!6607267)))

(assert (=> bs!1693694 (not (= lambda!368716 lambda!368670))))

(declare-fun bs!1693695 () Bool)

(assert (= bs!1693695 (and d!2072065 b!6607265)))

(assert (=> bs!1693695 (not (= lambda!368716 lambda!368669))))

(declare-fun bs!1693696 () Bool)

(assert (= bs!1693696 (and d!2072065 b!6607270)))

(assert (=> bs!1693696 (not (= lambda!368716 lambda!368672))))

(assert (=> d!2072065 (= (nullableZipper!2220 lt!2415147) (exists!2652 lt!2415147 lambda!368716))))

(declare-fun bs!1693697 () Bool)

(assert (= bs!1693697 d!2072065))

(declare-fun m!7382920 () Bool)

(assert (=> bs!1693697 m!7382920))

(assert (=> b!6607518 d!2072065))

(declare-fun b!6607956 () Bool)

(declare-fun e!3998058 () Bool)

(assert (=> b!6607956 (= e!3998058 (nullable!6468 (h!72049 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415117)))))))))

(declare-fun e!3998056 () (InoxSet Context!11718))

(declare-fun call!578182 () (InoxSet Context!11718))

(declare-fun b!6607957 () Bool)

(assert (=> b!6607957 (= e!3998056 ((_ map or) call!578182 (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415117)))))) (h!72048 s!2326))))))

(declare-fun bm!578177 () Bool)

(assert (=> bm!578177 (= call!578182 (derivationStepZipperDown!1723 (h!72049 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415117))))) (Context!11719 (t!379377 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415117)))))) (h!72048 s!2326)))))

(declare-fun b!6607958 () Bool)

(declare-fun e!3998057 () (InoxSet Context!11718))

(assert (=> b!6607958 (= e!3998057 ((as const (Array Context!11718 Bool)) false))))

(declare-fun b!6607959 () Bool)

(assert (=> b!6607959 (= e!3998056 e!3998057)))

(declare-fun c!1217751 () Bool)

(assert (=> b!6607959 (= c!1217751 ((_ is Cons!65601) (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415117))))))))

(declare-fun b!6607955 () Bool)

(assert (=> b!6607955 (= e!3998057 call!578182)))

(declare-fun d!2072067 () Bool)

(declare-fun c!1217750 () Bool)

(assert (=> d!2072067 (= c!1217750 e!3998058)))

(declare-fun res!2709565 () Bool)

(assert (=> d!2072067 (=> (not res!2709565) (not e!3998058))))

(assert (=> d!2072067 (= res!2709565 ((_ is Cons!65601) (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415117))))))))

(assert (=> d!2072067 (= (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 lt!2415117))) (h!72048 s!2326)) e!3998056)))

(assert (= (and d!2072067 res!2709565) b!6607956))

(assert (= (and d!2072067 c!1217750) b!6607957))

(assert (= (and d!2072067 (not c!1217750)) b!6607959))

(assert (= (and b!6607959 c!1217751) b!6607955))

(assert (= (and b!6607959 (not c!1217751)) b!6607958))

(assert (= (or b!6607957 b!6607955) bm!578177))

(declare-fun m!7382922 () Bool)

(assert (=> b!6607956 m!7382922))

(declare-fun m!7382924 () Bool)

(assert (=> b!6607957 m!7382924))

(declare-fun m!7382926 () Bool)

(assert (=> bm!578177 m!7382926))

(assert (=> b!6607217 d!2072067))

(declare-fun d!2072069 () Bool)

(declare-fun res!2709575 () Bool)

(declare-fun e!3998070 () Bool)

(assert (=> d!2072069 (=> res!2709575 e!3998070)))

(assert (=> d!2072069 (= res!2709575 ((_ is Nil!65602) lt!2415114))))

(assert (=> d!2072069 (= (forall!15674 lt!2415114 lambda!368673) e!3998070)))

(declare-fun b!6607973 () Bool)

(declare-fun e!3998071 () Bool)

(assert (=> b!6607973 (= e!3998070 e!3998071)))

(declare-fun res!2709576 () Bool)

(assert (=> b!6607973 (=> (not res!2709576) (not e!3998071))))

(declare-fun dynLambda!26125 (Int Context!11718) Bool)

(assert (=> b!6607973 (= res!2709576 (dynLambda!26125 lambda!368673 (h!72050 lt!2415114)))))

(declare-fun b!6607974 () Bool)

(assert (=> b!6607974 (= e!3998071 (forall!15674 (t!379378 lt!2415114) lambda!368673))))

(assert (= (and d!2072069 (not res!2709575)) b!6607973))

(assert (= (and b!6607973 res!2709576) b!6607974))

(declare-fun b_lambda!250019 () Bool)

(assert (=> (not b_lambda!250019) (not b!6607973)))

(declare-fun m!7382932 () Bool)

(assert (=> b!6607973 m!7382932))

(declare-fun m!7382934 () Bool)

(assert (=> b!6607974 m!7382934))

(assert (=> b!6607272 d!2072069))

(assert (=> b!6607540 d!2072039))

(assert (=> b!6607540 d!2071969))

(declare-fun b!6607975 () Bool)

(declare-fun e!3998074 () Bool)

(declare-fun call!578186 () Bool)

(assert (=> b!6607975 (= e!3998074 call!578186)))

(declare-fun d!2072073 () Bool)

(declare-fun res!2709580 () Bool)

(declare-fun e!3998076 () Bool)

(assert (=> d!2072073 (=> res!2709580 e!3998076)))

(assert (=> d!2072073 (= res!2709580 ((_ is ElementMatch!16475) lt!2415312))))

(assert (=> d!2072073 (= (validRegex!8211 lt!2415312) e!3998076)))

(declare-fun b!6607976 () Bool)

(declare-fun e!3998073 () Bool)

(declare-fun e!3998078 () Bool)

(assert (=> b!6607976 (= e!3998073 e!3998078)))

(declare-fun res!2709579 () Bool)

(assert (=> b!6607976 (=> (not res!2709579) (not e!3998078))))

(declare-fun call!578187 () Bool)

(assert (=> b!6607976 (= res!2709579 call!578187)))

(declare-fun b!6607977 () Bool)

(declare-fun e!3998075 () Bool)

(declare-fun call!578188 () Bool)

(assert (=> b!6607977 (= e!3998075 call!578188)))

(declare-fun b!6607978 () Bool)

(declare-fun e!3998077 () Bool)

(assert (=> b!6607978 (= e!3998077 e!3998074)))

(declare-fun res!2709577 () Bool)

(assert (=> b!6607978 (= res!2709577 (not (nullable!6468 (reg!16804 lt!2415312))))))

(assert (=> b!6607978 (=> (not res!2709577) (not e!3998074))))

(declare-fun bm!578181 () Bool)

(assert (=> bm!578181 (= call!578188 call!578186)))

(declare-fun b!6607979 () Bool)

(declare-fun e!3998072 () Bool)

(assert (=> b!6607979 (= e!3998077 e!3998072)))

(declare-fun c!1217755 () Bool)

(assert (=> b!6607979 (= c!1217755 ((_ is Union!16475) lt!2415312))))

(declare-fun c!1217754 () Bool)

(declare-fun bm!578182 () Bool)

(assert (=> bm!578182 (= call!578186 (validRegex!8211 (ite c!1217754 (reg!16804 lt!2415312) (ite c!1217755 (regTwo!33463 lt!2415312) (regTwo!33462 lt!2415312)))))))

(declare-fun bm!578183 () Bool)

(assert (=> bm!578183 (= call!578187 (validRegex!8211 (ite c!1217755 (regOne!33463 lt!2415312) (regOne!33462 lt!2415312))))))

(declare-fun b!6607980 () Bool)

(declare-fun res!2709581 () Bool)

(assert (=> b!6607980 (=> res!2709581 e!3998073)))

(assert (=> b!6607980 (= res!2709581 (not ((_ is Concat!25320) lt!2415312)))))

(assert (=> b!6607980 (= e!3998072 e!3998073)))

(declare-fun b!6607981 () Bool)

(assert (=> b!6607981 (= e!3998076 e!3998077)))

(assert (=> b!6607981 (= c!1217754 ((_ is Star!16475) lt!2415312))))

(declare-fun b!6607982 () Bool)

(declare-fun res!2709578 () Bool)

(assert (=> b!6607982 (=> (not res!2709578) (not e!3998075))))

(assert (=> b!6607982 (= res!2709578 call!578187)))

(assert (=> b!6607982 (= e!3998072 e!3998075)))

(declare-fun b!6607983 () Bool)

(assert (=> b!6607983 (= e!3998078 call!578188)))

(assert (= (and d!2072073 (not res!2709580)) b!6607981))

(assert (= (and b!6607981 c!1217754) b!6607978))

(assert (= (and b!6607981 (not c!1217754)) b!6607979))

(assert (= (and b!6607978 res!2709577) b!6607975))

(assert (= (and b!6607979 c!1217755) b!6607982))

(assert (= (and b!6607979 (not c!1217755)) b!6607980))

(assert (= (and b!6607982 res!2709578) b!6607977))

(assert (= (and b!6607980 (not res!2709581)) b!6607976))

(assert (= (and b!6607976 res!2709579) b!6607983))

(assert (= (or b!6607977 b!6607983) bm!578181))

(assert (= (or b!6607982 b!6607976) bm!578183))

(assert (= (or b!6607975 bm!578181) bm!578182))

(declare-fun m!7382944 () Bool)

(assert (=> b!6607978 m!7382944))

(declare-fun m!7382946 () Bool)

(assert (=> bm!578182 m!7382946))

(declare-fun m!7382948 () Bool)

(assert (=> bm!578183 m!7382948))

(assert (=> d!2071879 d!2072073))

(assert (=> d!2071879 d!2071653))

(assert (=> d!2071879 d!2071661))

(declare-fun b!6607986 () Bool)

(declare-fun e!3998082 () Bool)

(assert (=> b!6607986 (= e!3998082 (nullable!6468 (h!72049 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415118)))))))))

(declare-fun b!6607987 () Bool)

(declare-fun e!3998080 () (InoxSet Context!11718))

(declare-fun call!578189 () (InoxSet Context!11718))

(assert (=> b!6607987 (= e!3998080 ((_ map or) call!578189 (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415118)))))) (h!72048 s!2326))))))

(declare-fun bm!578184 () Bool)

(assert (=> bm!578184 (= call!578189 (derivationStepZipperDown!1723 (h!72049 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415118))))) (Context!11719 (t!379377 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415118)))))) (h!72048 s!2326)))))

(declare-fun b!6607988 () Bool)

(declare-fun e!3998081 () (InoxSet Context!11718))

(assert (=> b!6607988 (= e!3998081 ((as const (Array Context!11718 Bool)) false))))

(declare-fun b!6607989 () Bool)

(assert (=> b!6607989 (= e!3998080 e!3998081)))

(declare-fun c!1217757 () Bool)

(assert (=> b!6607989 (= c!1217757 ((_ is Cons!65601) (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415118))))))))

(declare-fun b!6607985 () Bool)

(assert (=> b!6607985 (= e!3998081 call!578189)))

(declare-fun d!2072079 () Bool)

(declare-fun c!1217756 () Bool)

(assert (=> d!2072079 (= c!1217756 e!3998082)))

(declare-fun res!2709583 () Bool)

(assert (=> d!2072079 (=> (not res!2709583) (not e!3998082))))

(assert (=> d!2072079 (= res!2709583 ((_ is Cons!65601) (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415118))))))))

(assert (=> d!2072079 (= (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 lt!2415118))) (h!72048 s!2326)) e!3998080)))

(assert (= (and d!2072079 res!2709583) b!6607986))

(assert (= (and d!2072079 c!1217756) b!6607987))

(assert (= (and d!2072079 (not c!1217756)) b!6607989))

(assert (= (and b!6607989 c!1217757) b!6607985))

(assert (= (and b!6607989 (not c!1217757)) b!6607988))

(assert (= (or b!6607987 b!6607985) bm!578184))

(declare-fun m!7382952 () Bool)

(assert (=> b!6607986 m!7382952))

(declare-fun m!7382954 () Bool)

(assert (=> b!6607987 m!7382954))

(declare-fun m!7382956 () Bool)

(assert (=> bm!578184 m!7382956))

(assert (=> b!6607275 d!2072079))

(declare-fun b!6607991 () Bool)

(declare-fun e!3998085 () Bool)

(assert (=> b!6607991 (= e!3998085 (nullable!6468 (h!72049 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343))))))))))))))

(declare-fun call!578190 () (InoxSet Context!11718))

(declare-fun b!6607992 () Bool)

(declare-fun e!3998083 () (InoxSet Context!11718))

(assert (=> b!6607992 (= e!3998083 ((_ map or) call!578190 (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343))))))))))) (h!72048 s!2326))))))

(declare-fun bm!578185 () Bool)

(assert (=> bm!578185 (= call!578190 (derivationStepZipperDown!1723 (h!72049 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))))) (Context!11719 (t!379377 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343))))))))))) (h!72048 s!2326)))))

(declare-fun b!6607993 () Bool)

(declare-fun e!3998084 () (InoxSet Context!11718))

(assert (=> b!6607993 (= e!3998084 ((as const (Array Context!11718 Bool)) false))))

(declare-fun b!6607994 () Bool)

(assert (=> b!6607994 (= e!3998083 e!3998084)))

(declare-fun c!1217759 () Bool)

(assert (=> b!6607994 (= c!1217759 ((_ is Cons!65601) (exprs!6359 (Context!11719 (t!379377 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))))))))

(declare-fun b!6607990 () Bool)

(assert (=> b!6607990 (= e!3998084 call!578190)))

(declare-fun d!2072083 () Bool)

(declare-fun c!1217758 () Bool)

(assert (=> d!2072083 (= c!1217758 e!3998085)))

(declare-fun res!2709584 () Bool)

(assert (=> d!2072083 (=> (not res!2709584) (not e!3998085))))

(assert (=> d!2072083 (= res!2709584 ((_ is Cons!65601) (exprs!6359 (Context!11719 (t!379377 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))))))))

(assert (=> d!2072083 (= (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))) (h!72048 s!2326)) e!3998083)))

(assert (= (and d!2072083 res!2709584) b!6607991))

(assert (= (and d!2072083 c!1217758) b!6607992))

(assert (= (and d!2072083 (not c!1217758)) b!6607994))

(assert (= (and b!6607994 c!1217759) b!6607990))

(assert (= (and b!6607994 (not c!1217759)) b!6607993))

(assert (= (or b!6607992 b!6607990) bm!578185))

(declare-fun m!7382964 () Bool)

(assert (=> b!6607991 m!7382964))

(declare-fun m!7382966 () Bool)

(assert (=> b!6607992 m!7382966))

(declare-fun m!7382968 () Bool)

(assert (=> bm!578185 m!7382968))

(assert (=> b!6607480 d!2072083))

(declare-fun b!6607995 () Bool)

(declare-fun e!3998093 () Bool)

(declare-fun e!3998090 () Bool)

(assert (=> b!6607995 (= e!3998093 e!3998090)))

(declare-fun c!1217765 () Bool)

(assert (=> b!6607995 (= c!1217765 ((_ is Union!16475) (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))

(declare-fun b!6607996 () Bool)

(declare-fun res!2709587 () Bool)

(declare-fun e!3998087 () Bool)

(assert (=> b!6607996 (=> (not res!2709587) (not e!3998087))))

(declare-fun lt!2415337 () Int)

(declare-fun call!578194 () Int)

(assert (=> b!6607996 (= res!2709587 (> lt!2415337 call!578194))))

(declare-fun e!3998095 () Bool)

(assert (=> b!6607996 (= e!3998095 e!3998087)))

(declare-fun b!6607997 () Bool)

(declare-fun e!3998088 () Int)

(declare-fun call!578191 () Int)

(assert (=> b!6607997 (= e!3998088 (+ 1 call!578191))))

(declare-fun b!6607998 () Bool)

(declare-fun e!3998091 () Int)

(declare-fun call!578193 () Int)

(assert (=> b!6607998 (= e!3998091 (+ 1 call!578193))))

(declare-fun b!6607999 () Bool)

(declare-fun e!3998092 () Int)

(assert (=> b!6607999 (= e!3998092 1)))

(declare-fun b!6608000 () Bool)

(declare-fun e!3998094 () Bool)

(assert (=> b!6608000 (= e!3998090 e!3998094)))

(declare-fun res!2709585 () Bool)

(declare-fun call!578197 () Int)

(assert (=> b!6608000 (= res!2709585 (> lt!2415337 call!578197))))

(assert (=> b!6608000 (=> (not res!2709585) (not e!3998094))))

(declare-fun b!6608001 () Bool)

(assert (=> b!6608001 (= e!3998091 1)))

(declare-fun b!6608002 () Bool)

(declare-fun call!578196 () Int)

(assert (=> b!6608002 (= e!3998094 (> lt!2415337 call!578196))))

(declare-fun b!6608003 () Bool)

(declare-fun e!3998086 () Int)

(assert (=> b!6608003 (= e!3998086 (+ 1 call!578193))))

(declare-fun b!6608004 () Bool)

(declare-fun c!1217764 () Bool)

(assert (=> b!6608004 (= c!1217764 ((_ is Union!16475) (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))

(assert (=> b!6608004 (= e!3998088 e!3998086)))

(declare-fun b!6608005 () Bool)

(assert (=> b!6608005 (= e!3998086 e!3998091)))

(declare-fun c!1217760 () Bool)

(assert (=> b!6608005 (= c!1217760 ((_ is Concat!25320) (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))

(declare-fun bm!578186 () Bool)

(declare-fun c!1217761 () Bool)

(assert (=> bm!578186 (= call!578196 (regexDepth!372 (ite c!1217765 (regTwo!33463 (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))) (ite c!1217761 (regOne!33462 (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))) (reg!16804 (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131)))))))))

(declare-fun b!6608006 () Bool)

(declare-fun e!3998089 () Bool)

(assert (=> b!6608006 (= e!3998089 (> lt!2415337 call!578194))))

(declare-fun bm!578187 () Bool)

(assert (=> bm!578187 (= call!578194 call!578196)))

(declare-fun b!6608007 () Bool)

(assert (=> b!6608007 (= e!3998090 e!3998095)))

(assert (=> b!6608007 (= c!1217761 ((_ is Concat!25320) (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))

(declare-fun d!2072093 () Bool)

(assert (=> d!2072093 e!3998093))

(declare-fun res!2709586 () Bool)

(assert (=> d!2072093 (=> (not res!2709586) (not e!3998093))))

(assert (=> d!2072093 (= res!2709586 (> lt!2415337 0))))

(assert (=> d!2072093 (= lt!2415337 e!3998092)))

(declare-fun c!1217763 () Bool)

(assert (=> d!2072093 (= c!1217763 ((_ is ElementMatch!16475) (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))

(assert (=> d!2072093 (= (regexDepth!372 (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))) lt!2415337)))

(declare-fun c!1217766 () Bool)

(declare-fun bm!578188 () Bool)

(assert (=> bm!578188 (= call!578191 (regexDepth!372 (ite c!1217766 (reg!16804 (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))) (ite c!1217764 (regTwo!33463 (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))) (regOne!33462 (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131)))))))))

(declare-fun b!6608008 () Bool)

(assert (=> b!6608008 (= e!3998092 e!3998088)))

(assert (=> b!6608008 (= c!1217766 ((_ is Star!16475) (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))

(declare-fun bm!578189 () Bool)

(declare-fun call!578192 () Int)

(assert (=> bm!578189 (= call!578192 call!578191)))

(declare-fun b!6608009 () Bool)

(declare-fun c!1217762 () Bool)

(assert (=> b!6608009 (= c!1217762 ((_ is Star!16475) (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))

(assert (=> b!6608009 (= e!3998095 e!3998089)))

(declare-fun b!6608010 () Bool)

(assert (=> b!6608010 (= e!3998087 (> lt!2415337 call!578197))))

(declare-fun bm!578190 () Bool)

(declare-fun call!578195 () Int)

(assert (=> bm!578190 (= call!578195 (regexDepth!372 (ite c!1217764 (regOne!33463 (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))) (regTwo!33462 (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))))

(declare-fun bm!578191 () Bool)

(assert (=> bm!578191 (= call!578197 (regexDepth!372 (ite c!1217765 (regOne!33463 (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))) (regTwo!33462 (ite c!1217670 (regOne!33463 lt!2415131) (regTwo!33462 lt!2415131))))))))

(declare-fun bm!578192 () Bool)

(assert (=> bm!578192 (= call!578193 (maxBigInt!0 (ite c!1217764 call!578195 call!578192) (ite c!1217764 call!578192 call!578195)))))

(declare-fun b!6608011 () Bool)

(assert (=> b!6608011 (= e!3998089 (= lt!2415337 1))))

(assert (= (and d!2072093 c!1217763) b!6607999))

(assert (= (and d!2072093 (not c!1217763)) b!6608008))

(assert (= (and b!6608008 c!1217766) b!6607997))

(assert (= (and b!6608008 (not c!1217766)) b!6608004))

(assert (= (and b!6608004 c!1217764) b!6608003))

(assert (= (and b!6608004 (not c!1217764)) b!6608005))

(assert (= (and b!6608005 c!1217760) b!6607998))

(assert (= (and b!6608005 (not c!1217760)) b!6608001))

(assert (= (or b!6608003 b!6607998) bm!578189))

(assert (= (or b!6608003 b!6607998) bm!578190))

(assert (= (or b!6608003 b!6607998) bm!578192))

(assert (= (or b!6607997 bm!578189) bm!578188))

(assert (= (and d!2072093 res!2709586) b!6607995))

(assert (= (and b!6607995 c!1217765) b!6608000))

(assert (= (and b!6607995 (not c!1217765)) b!6608007))

(assert (= (and b!6608000 res!2709585) b!6608002))

(assert (= (and b!6608007 c!1217761) b!6607996))

(assert (= (and b!6608007 (not c!1217761)) b!6608009))

(assert (= (and b!6607996 res!2709587) b!6608010))

(assert (= (and b!6608009 c!1217762) b!6608006))

(assert (= (and b!6608009 (not c!1217762)) b!6608011))

(assert (= (or b!6607996 b!6608006) bm!578187))

(assert (= (or b!6608002 bm!578187) bm!578186))

(assert (= (or b!6608000 b!6608010) bm!578191))

(declare-fun m!7382972 () Bool)

(assert (=> bm!578186 m!7382972))

(declare-fun m!7382974 () Bool)

(assert (=> bm!578191 m!7382974))

(declare-fun m!7382976 () Bool)

(assert (=> bm!578188 m!7382976))

(declare-fun m!7382978 () Bool)

(assert (=> bm!578192 m!7382978))

(declare-fun m!7382980 () Bool)

(assert (=> bm!578190 m!7382980))

(assert (=> bm!578114 d!2072093))

(assert (=> b!6607506 d!2072039))

(assert (=> b!6607506 d!2071969))

(declare-fun b!6608029 () Bool)

(declare-fun e!3998108 () Bool)

(declare-fun call!578205 () Bool)

(assert (=> b!6608029 (= e!3998108 call!578205)))

(declare-fun d!2072097 () Bool)

(declare-fun res!2709594 () Bool)

(declare-fun e!3998110 () Bool)

(assert (=> d!2072097 (=> res!2709594 e!3998110)))

(assert (=> d!2072097 (= res!2709594 ((_ is ElementMatch!16475) lt!2415323))))

(assert (=> d!2072097 (= (validRegex!8211 lt!2415323) e!3998110)))

(declare-fun b!6608030 () Bool)

(declare-fun e!3998107 () Bool)

(declare-fun e!3998112 () Bool)

(assert (=> b!6608030 (= e!3998107 e!3998112)))

(declare-fun res!2709593 () Bool)

(assert (=> b!6608030 (=> (not res!2709593) (not e!3998112))))

(declare-fun call!578206 () Bool)

(assert (=> b!6608030 (= res!2709593 call!578206)))

(declare-fun b!6608031 () Bool)

(declare-fun e!3998109 () Bool)

(declare-fun call!578207 () Bool)

(assert (=> b!6608031 (= e!3998109 call!578207)))

(declare-fun b!6608032 () Bool)

(declare-fun e!3998111 () Bool)

(assert (=> b!6608032 (= e!3998111 e!3998108)))

(declare-fun res!2709591 () Bool)

(assert (=> b!6608032 (= res!2709591 (not (nullable!6468 (reg!16804 lt!2415323))))))

(assert (=> b!6608032 (=> (not res!2709591) (not e!3998108))))

(declare-fun bm!578200 () Bool)

(assert (=> bm!578200 (= call!578207 call!578205)))

(declare-fun b!6608033 () Bool)

(declare-fun e!3998106 () Bool)

(assert (=> b!6608033 (= e!3998111 e!3998106)))

(declare-fun c!1217775 () Bool)

(assert (=> b!6608033 (= c!1217775 ((_ is Union!16475) lt!2415323))))

(declare-fun c!1217774 () Bool)

(declare-fun bm!578201 () Bool)

(assert (=> bm!578201 (= call!578205 (validRegex!8211 (ite c!1217774 (reg!16804 lt!2415323) (ite c!1217775 (regTwo!33463 lt!2415323) (regTwo!33462 lt!2415323)))))))

(declare-fun bm!578202 () Bool)

(assert (=> bm!578202 (= call!578206 (validRegex!8211 (ite c!1217775 (regOne!33463 lt!2415323) (regOne!33462 lt!2415323))))))

(declare-fun b!6608034 () Bool)

(declare-fun res!2709595 () Bool)

(assert (=> b!6608034 (=> res!2709595 e!3998107)))

(assert (=> b!6608034 (= res!2709595 (not ((_ is Concat!25320) lt!2415323)))))

(assert (=> b!6608034 (= e!3998106 e!3998107)))

(declare-fun b!6608035 () Bool)

(assert (=> b!6608035 (= e!3998110 e!3998111)))

(assert (=> b!6608035 (= c!1217774 ((_ is Star!16475) lt!2415323))))

(declare-fun b!6608036 () Bool)

(declare-fun res!2709592 () Bool)

(assert (=> b!6608036 (=> (not res!2709592) (not e!3998109))))

(assert (=> b!6608036 (= res!2709592 call!578206)))

(assert (=> b!6608036 (= e!3998106 e!3998109)))

(declare-fun b!6608037 () Bool)

(assert (=> b!6608037 (= e!3998112 call!578207)))

(assert (= (and d!2072097 (not res!2709594)) b!6608035))

(assert (= (and b!6608035 c!1217774) b!6608032))

(assert (= (and b!6608035 (not c!1217774)) b!6608033))

(assert (= (and b!6608032 res!2709591) b!6608029))

(assert (= (and b!6608033 c!1217775) b!6608036))

(assert (= (and b!6608033 (not c!1217775)) b!6608034))

(assert (= (and b!6608036 res!2709592) b!6608031))

(assert (= (and b!6608034 (not res!2709595)) b!6608030))

(assert (= (and b!6608030 res!2709593) b!6608037))

(assert (= (or b!6608031 b!6608037) bm!578200))

(assert (= (or b!6608036 b!6608030) bm!578202))

(assert (= (or b!6608029 bm!578200) bm!578201))

(declare-fun m!7382982 () Bool)

(assert (=> b!6608032 m!7382982))

(declare-fun m!7382984 () Bool)

(assert (=> bm!578201 m!7382984))

(declare-fun m!7382986 () Bool)

(assert (=> bm!578202 m!7382986))

(assert (=> d!2071903 d!2072097))

(declare-fun d!2072099 () Bool)

(declare-fun res!2709600 () Bool)

(declare-fun e!3998117 () Bool)

(assert (=> d!2072099 (=> res!2709600 e!3998117)))

(assert (=> d!2072099 (= res!2709600 ((_ is Nil!65601) (exprs!6359 (h!72050 zl!343))))))

(assert (=> d!2072099 (= (forall!15673 (exprs!6359 (h!72050 zl!343)) lambda!368696) e!3998117)))

(declare-fun b!6608042 () Bool)

(declare-fun e!3998118 () Bool)

(assert (=> b!6608042 (= e!3998117 e!3998118)))

(declare-fun res!2709601 () Bool)

(assert (=> b!6608042 (=> (not res!2709601) (not e!3998118))))

(declare-fun dynLambda!26126 (Int Regex!16475) Bool)

(assert (=> b!6608042 (= res!2709601 (dynLambda!26126 lambda!368696 (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun b!6608043 () Bool)

(assert (=> b!6608043 (= e!3998118 (forall!15673 (t!379377 (exprs!6359 (h!72050 zl!343))) lambda!368696))))

(assert (= (and d!2072099 (not res!2709600)) b!6608042))

(assert (= (and b!6608042 res!2709601) b!6608043))

(declare-fun b_lambda!250021 () Bool)

(assert (=> (not b_lambda!250021) (not b!6608042)))

(declare-fun m!7382998 () Bool)

(assert (=> b!6608042 m!7382998))

(declare-fun m!7383000 () Bool)

(assert (=> b!6608043 m!7383000))

(assert (=> d!2071903 d!2072099))

(assert (=> bm!578084 d!2072017))

(assert (=> d!2071755 d!2071667))

(declare-fun b!6608044 () Bool)

(declare-fun e!3998121 () Bool)

(declare-fun call!578208 () Bool)

(assert (=> b!6608044 (= e!3998121 call!578208)))

(declare-fun d!2072107 () Bool)

(declare-fun res!2709605 () Bool)

(declare-fun e!3998123 () Bool)

(assert (=> d!2072107 (=> res!2709605 e!3998123)))

(assert (=> d!2072107 (= res!2709605 ((_ is ElementMatch!16475) (regOne!33462 r!7292)))))

(assert (=> d!2072107 (= (validRegex!8211 (regOne!33462 r!7292)) e!3998123)))

(declare-fun b!6608045 () Bool)

(declare-fun e!3998120 () Bool)

(declare-fun e!3998125 () Bool)

(assert (=> b!6608045 (= e!3998120 e!3998125)))

(declare-fun res!2709604 () Bool)

(assert (=> b!6608045 (=> (not res!2709604) (not e!3998125))))

(declare-fun call!578209 () Bool)

(assert (=> b!6608045 (= res!2709604 call!578209)))

(declare-fun b!6608046 () Bool)

(declare-fun e!3998122 () Bool)

(declare-fun call!578210 () Bool)

(assert (=> b!6608046 (= e!3998122 call!578210)))

(declare-fun b!6608047 () Bool)

(declare-fun e!3998124 () Bool)

(assert (=> b!6608047 (= e!3998124 e!3998121)))

(declare-fun res!2709602 () Bool)

(assert (=> b!6608047 (= res!2709602 (not (nullable!6468 (reg!16804 (regOne!33462 r!7292)))))))

(assert (=> b!6608047 (=> (not res!2709602) (not e!3998121))))

(declare-fun bm!578203 () Bool)

(assert (=> bm!578203 (= call!578210 call!578208)))

(declare-fun b!6608048 () Bool)

(declare-fun e!3998119 () Bool)

(assert (=> b!6608048 (= e!3998124 e!3998119)))

(declare-fun c!1217777 () Bool)

(assert (=> b!6608048 (= c!1217777 ((_ is Union!16475) (regOne!33462 r!7292)))))

(declare-fun bm!578204 () Bool)

(declare-fun c!1217776 () Bool)

(assert (=> bm!578204 (= call!578208 (validRegex!8211 (ite c!1217776 (reg!16804 (regOne!33462 r!7292)) (ite c!1217777 (regTwo!33463 (regOne!33462 r!7292)) (regTwo!33462 (regOne!33462 r!7292))))))))

(declare-fun bm!578205 () Bool)

(assert (=> bm!578205 (= call!578209 (validRegex!8211 (ite c!1217777 (regOne!33463 (regOne!33462 r!7292)) (regOne!33462 (regOne!33462 r!7292)))))))

(declare-fun b!6608049 () Bool)

(declare-fun res!2709606 () Bool)

(assert (=> b!6608049 (=> res!2709606 e!3998120)))

(assert (=> b!6608049 (= res!2709606 (not ((_ is Concat!25320) (regOne!33462 r!7292))))))

(assert (=> b!6608049 (= e!3998119 e!3998120)))

(declare-fun b!6608050 () Bool)

(assert (=> b!6608050 (= e!3998123 e!3998124)))

(assert (=> b!6608050 (= c!1217776 ((_ is Star!16475) (regOne!33462 r!7292)))))

(declare-fun b!6608051 () Bool)

(declare-fun res!2709603 () Bool)

(assert (=> b!6608051 (=> (not res!2709603) (not e!3998122))))

(assert (=> b!6608051 (= res!2709603 call!578209)))

(assert (=> b!6608051 (= e!3998119 e!3998122)))

(declare-fun b!6608052 () Bool)

(assert (=> b!6608052 (= e!3998125 call!578210)))

(assert (= (and d!2072107 (not res!2709605)) b!6608050))

(assert (= (and b!6608050 c!1217776) b!6608047))

(assert (= (and b!6608050 (not c!1217776)) b!6608048))

(assert (= (and b!6608047 res!2709602) b!6608044))

(assert (= (and b!6608048 c!1217777) b!6608051))

(assert (= (and b!6608048 (not c!1217777)) b!6608049))

(assert (= (and b!6608051 res!2709603) b!6608046))

(assert (= (and b!6608049 (not res!2709606)) b!6608045))

(assert (= (and b!6608045 res!2709604) b!6608052))

(assert (= (or b!6608046 b!6608052) bm!578203))

(assert (= (or b!6608051 b!6608045) bm!578205))

(assert (= (or b!6608044 bm!578203) bm!578204))

(assert (=> b!6608047 m!7382880))

(declare-fun m!7383002 () Bool)

(assert (=> bm!578204 m!7383002))

(declare-fun m!7383004 () Bool)

(assert (=> bm!578205 m!7383004))

(assert (=> d!2071755 d!2072107))

(assert (=> d!2071755 d!2071773))

(declare-fun bs!1693719 () Bool)

(declare-fun d!2072109 () Bool)

(assert (= bs!1693719 (and d!2072109 d!2071761)))

(declare-fun lambda!368721 () Int)

(assert (=> bs!1693719 (= lambda!368721 lambda!368653)))

(declare-fun bs!1693720 () Bool)

(assert (= bs!1693720 (and d!2072109 b!6606503)))

(assert (=> bs!1693720 (not (= lambda!368721 lambda!368580))))

(assert (=> bs!1693720 (not (= lambda!368721 lambda!368581))))

(assert (=> bs!1693720 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 r!7292) lt!2415134)) (= lambda!368721 lambda!368579))))

(declare-fun bs!1693721 () Bool)

(assert (= bs!1693721 (and d!2072109 b!6607530)))

(assert (=> bs!1693721 (not (= lambda!368721 lambda!368692))))

(declare-fun bs!1693722 () Bool)

(assert (= bs!1693722 (and d!2072109 d!2071833)))

(assert (=> bs!1693722 (not (= lambda!368721 lambda!368687))))

(declare-fun bs!1693723 () Bool)

(assert (= bs!1693723 (and d!2072109 d!2071823)))

(assert (=> bs!1693723 (not (= lambda!368721 lambda!368675))))

(declare-fun bs!1693724 () Bool)

(assert (= bs!1693724 (and d!2072109 b!6607454)))

(assert (=> bs!1693724 (not (= lambda!368721 lambda!368690))))

(assert (=> bs!1693719 (not (= lambda!368721 lambda!368654))))

(declare-fun bs!1693725 () Bool)

(assert (= bs!1693725 (and d!2072109 b!6607397)))

(assert (=> bs!1693725 (not (= lambda!368721 lambda!368681))))

(declare-fun bs!1693726 () Bool)

(assert (= bs!1693726 (and d!2072109 b!6606515)))

(assert (=> bs!1693726 (= lambda!368721 lambda!368576)))

(assert (=> bs!1693726 (not (= lambda!368721 lambda!368577))))

(assert (=> bs!1693723 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 r!7292) lt!2415134)) (= lambda!368721 lambda!368674))))

(declare-fun bs!1693727 () Bool)

(assert (= bs!1693727 (and d!2072109 d!2071755)))

(assert (=> bs!1693727 (= lambda!368721 lambda!368648)))

(assert (=> bs!1693722 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 r!7292) (Star!16475 (reg!16804 (regOne!33462 r!7292))))) (= lambda!368721 lambda!368686))))

(declare-fun bs!1693728 () Bool)

(assert (= bs!1693728 (and d!2072109 b!6607405)))

(assert (=> bs!1693728 (not (= lambda!368721 lambda!368680))))

(declare-fun bs!1693729 () Bool)

(assert (= bs!1693729 (and d!2072109 b!6607446)))

(assert (=> bs!1693729 (not (= lambda!368721 lambda!368691))))

(declare-fun bs!1693730 () Bool)

(assert (= bs!1693730 (and d!2072109 b!6607522)))

(assert (=> bs!1693730 (not (= lambda!368721 lambda!368693))))

(declare-fun bs!1693731 () Bool)

(assert (= bs!1693731 (and d!2072109 d!2071841)))

(assert (=> bs!1693731 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 r!7292) lt!2415134)) (= lambda!368721 lambda!368688))))

(assert (=> d!2072109 true))

(assert (=> d!2072109 true))

(assert (=> d!2072109 true))

(assert (=> d!2072109 (= (isDefined!13069 (findConcatSeparation!2780 (regOne!33462 r!7292) (regTwo!33462 r!7292) Nil!65600 s!2326 s!2326)) (Exists!3545 lambda!368721))))

(assert (=> d!2072109 true))

(declare-fun _$89!2810 () Unit!159235)

(assert (=> d!2072109 (= (choose!49348 (regOne!33462 r!7292) (regTwo!33462 r!7292) s!2326) _$89!2810)))

(declare-fun bs!1693732 () Bool)

(assert (= bs!1693732 d!2072109))

(assert (=> bs!1693732 m!7381652))

(assert (=> bs!1693732 m!7381652))

(assert (=> bs!1693732 m!7381654))

(declare-fun m!7383022 () Bool)

(assert (=> bs!1693732 m!7383022))

(assert (=> d!2071755 d!2072109))

(declare-fun d!2072125 () Bool)

(assert (=> d!2072125 (= (Exists!3545 lambda!368648) (choose!49347 lambda!368648))))

(declare-fun bs!1693733 () Bool)

(assert (= bs!1693733 d!2072125))

(declare-fun m!7383024 () Bool)

(assert (=> bs!1693733 m!7383024))

(assert (=> d!2071755 d!2072125))

(declare-fun bs!1693734 () Bool)

(declare-fun d!2072127 () Bool)

(assert (= bs!1693734 (and d!2072127 d!2072065)))

(declare-fun lambda!368724 () Int)

(assert (=> bs!1693734 (= lambda!368724 lambda!368716)))

(declare-fun bs!1693735 () Bool)

(assert (= bs!1693735 (and d!2072127 d!2072053)))

(assert (=> bs!1693735 (= lambda!368724 lambda!368714)))

(declare-fun bs!1693736 () Bool)

(assert (= bs!1693736 (and d!2072127 b!6607272)))

(assert (=> bs!1693736 (not (= lambda!368724 lambda!368673))))

(declare-fun bs!1693738 () Bool)

(assert (= bs!1693738 (and d!2072127 b!6607267)))

(assert (=> bs!1693738 (not (= lambda!368724 lambda!368670))))

(declare-fun bs!1693739 () Bool)

(assert (= bs!1693739 (and d!2072127 b!6607265)))

(assert (=> bs!1693739 (not (= lambda!368724 lambda!368669))))

(declare-fun bs!1693740 () Bool)

(assert (= bs!1693740 (and d!2072127 b!6607270)))

(assert (=> bs!1693740 (not (= lambda!368724 lambda!368672))))

(assert (=> d!2072127 (= (nullableZipper!2220 lt!2415129) (exists!2652 lt!2415129 lambda!368724))))

(declare-fun bs!1693742 () Bool)

(assert (= bs!1693742 d!2072127))

(declare-fun m!7383026 () Bool)

(assert (=> bs!1693742 m!7383026))

(assert (=> b!6607257 d!2072127))

(declare-fun bs!1693746 () Bool)

(declare-fun b!6608069 () Bool)

(assert (= bs!1693746 (and b!6608069 d!2072109)))

(declare-fun lambda!368726 () Int)

(assert (=> bs!1693746 (not (= lambda!368726 lambda!368721))))

(declare-fun bs!1693747 () Bool)

(assert (= bs!1693747 (and b!6608069 d!2071761)))

(assert (=> bs!1693747 (not (= lambda!368726 lambda!368653))))

(declare-fun bs!1693748 () Bool)

(assert (= bs!1693748 (and b!6608069 b!6606503)))

(assert (=> bs!1693748 (not (= lambda!368726 lambda!368580))))

(assert (=> bs!1693748 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regTwo!33463 r!7292)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33463 r!7292) lt!2415134)) (= lambda!368726 lambda!368581))))

(assert (=> bs!1693748 (not (= lambda!368726 lambda!368579))))

(declare-fun bs!1693749 () Bool)

(assert (= bs!1693749 (and b!6608069 b!6607530)))

(assert (=> bs!1693749 (= (and (= (reg!16804 (regTwo!33463 r!7292)) (reg!16804 r!7292)) (= (regTwo!33463 r!7292) r!7292)) (= lambda!368726 lambda!368692))))

(declare-fun bs!1693750 () Bool)

(assert (= bs!1693750 (and b!6608069 d!2071833)))

(assert (=> bs!1693750 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regTwo!33463 r!7292)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33463 r!7292) (Star!16475 (reg!16804 (regOne!33462 r!7292))))) (= lambda!368726 lambda!368687))))

(declare-fun bs!1693751 () Bool)

(assert (= bs!1693751 (and b!6608069 d!2071823)))

(assert (=> bs!1693751 (not (= lambda!368726 lambda!368675))))

(declare-fun bs!1693752 () Bool)

(assert (= bs!1693752 (and b!6608069 b!6607454)))

(assert (=> bs!1693752 (= (and (= (reg!16804 (regTwo!33463 r!7292)) (reg!16804 lt!2415143)) (= (regTwo!33463 r!7292) lt!2415143)) (= lambda!368726 lambda!368690))))

(assert (=> bs!1693747 (not (= lambda!368726 lambda!368654))))

(declare-fun bs!1693753 () Bool)

(assert (= bs!1693753 (and b!6608069 b!6607397)))

(assert (=> bs!1693753 (not (= lambda!368726 lambda!368681))))

(declare-fun bs!1693754 () Bool)

(assert (= bs!1693754 (and b!6608069 b!6606515)))

(assert (=> bs!1693754 (not (= lambda!368726 lambda!368576))))

(assert (=> bs!1693754 (not (= lambda!368726 lambda!368577))))

(assert (=> bs!1693751 (not (= lambda!368726 lambda!368674))))

(declare-fun bs!1693755 () Bool)

(assert (= bs!1693755 (and b!6608069 d!2071755)))

(assert (=> bs!1693755 (not (= lambda!368726 lambda!368648))))

(assert (=> bs!1693750 (not (= lambda!368726 lambda!368686))))

(declare-fun bs!1693756 () Bool)

(assert (= bs!1693756 (and b!6608069 b!6607405)))

(assert (=> bs!1693756 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regTwo!33463 r!7292)) (reg!16804 lt!2415134)) (= (regTwo!33463 r!7292) lt!2415134)) (= lambda!368726 lambda!368680))))

(declare-fun bs!1693757 () Bool)

(assert (= bs!1693757 (and b!6608069 b!6607446)))

(assert (=> bs!1693757 (not (= lambda!368726 lambda!368691))))

(declare-fun bs!1693758 () Bool)

(assert (= bs!1693758 (and b!6608069 b!6607522)))

(assert (=> bs!1693758 (not (= lambda!368726 lambda!368693))))

(declare-fun bs!1693759 () Bool)

(assert (= bs!1693759 (and b!6608069 d!2071841)))

(assert (=> bs!1693759 (not (= lambda!368726 lambda!368688))))

(assert (=> b!6608069 true))

(assert (=> b!6608069 true))

(declare-fun bs!1693760 () Bool)

(declare-fun b!6608061 () Bool)

(assert (= bs!1693760 (and b!6608061 d!2072109)))

(declare-fun lambda!368727 () Int)

(assert (=> bs!1693760 (not (= lambda!368727 lambda!368721))))

(declare-fun bs!1693761 () Bool)

(assert (= bs!1693761 (and b!6608061 d!2071761)))

(assert (=> bs!1693761 (not (= lambda!368727 lambda!368653))))

(declare-fun bs!1693762 () Bool)

(assert (= bs!1693762 (and b!6608061 b!6608069)))

(assert (=> bs!1693762 (not (= lambda!368727 lambda!368726))))

(declare-fun bs!1693763 () Bool)

(assert (= bs!1693763 (and b!6608061 b!6606503)))

(assert (=> bs!1693763 (= (and (= s!2326 Nil!65600) (= (regOne!33462 (regTwo!33463 r!7292)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 (regTwo!33463 r!7292)) lt!2415134)) (= lambda!368727 lambda!368580))))

(assert (=> bs!1693763 (not (= lambda!368727 lambda!368581))))

(assert (=> bs!1693763 (not (= lambda!368727 lambda!368579))))

(declare-fun bs!1693764 () Bool)

(assert (= bs!1693764 (and b!6608061 b!6607530)))

(assert (=> bs!1693764 (not (= lambda!368727 lambda!368692))))

(declare-fun bs!1693765 () Bool)

(assert (= bs!1693765 (and b!6608061 d!2071833)))

(assert (=> bs!1693765 (not (= lambda!368727 lambda!368687))))

(declare-fun bs!1693766 () Bool)

(assert (= bs!1693766 (and b!6608061 d!2071823)))

(assert (=> bs!1693766 (= (and (= s!2326 Nil!65600) (= (regOne!33462 (regTwo!33463 r!7292)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 (regTwo!33463 r!7292)) lt!2415134)) (= lambda!368727 lambda!368675))))

(declare-fun bs!1693767 () Bool)

(assert (= bs!1693767 (and b!6608061 b!6607454)))

(assert (=> bs!1693767 (not (= lambda!368727 lambda!368690))))

(assert (=> bs!1693761 (= (and (= (regOne!33462 (regTwo!33463 r!7292)) (regOne!33462 r!7292)) (= (regTwo!33462 (regTwo!33463 r!7292)) (regTwo!33462 r!7292))) (= lambda!368727 lambda!368654))))

(declare-fun bs!1693768 () Bool)

(assert (= bs!1693768 (and b!6608061 b!6607397)))

(assert (=> bs!1693768 (= (and (= s!2326 Nil!65600) (= (regOne!33462 (regTwo!33463 r!7292)) (regOne!33462 lt!2415134)) (= (regTwo!33462 (regTwo!33463 r!7292)) (regTwo!33462 lt!2415134))) (= lambda!368727 lambda!368681))))

(declare-fun bs!1693769 () Bool)

(assert (= bs!1693769 (and b!6608061 b!6606515)))

(assert (=> bs!1693769 (not (= lambda!368727 lambda!368576))))

(assert (=> bs!1693769 (= (and (= (regOne!33462 (regTwo!33463 r!7292)) (regOne!33462 r!7292)) (= (regTwo!33462 (regTwo!33463 r!7292)) (regTwo!33462 r!7292))) (= lambda!368727 lambda!368577))))

(assert (=> bs!1693766 (not (= lambda!368727 lambda!368674))))

(declare-fun bs!1693770 () Bool)

(assert (= bs!1693770 (and b!6608061 d!2071755)))

(assert (=> bs!1693770 (not (= lambda!368727 lambda!368648))))

(assert (=> bs!1693765 (not (= lambda!368727 lambda!368686))))

(declare-fun bs!1693771 () Bool)

(assert (= bs!1693771 (and b!6608061 b!6607405)))

(assert (=> bs!1693771 (not (= lambda!368727 lambda!368680))))

(declare-fun bs!1693772 () Bool)

(assert (= bs!1693772 (and b!6608061 b!6607446)))

(assert (=> bs!1693772 (= (and (= (regOne!33462 (regTwo!33463 r!7292)) (regOne!33462 lt!2415143)) (= (regTwo!33462 (regTwo!33463 r!7292)) (regTwo!33462 lt!2415143))) (= lambda!368727 lambda!368691))))

(declare-fun bs!1693773 () Bool)

(assert (= bs!1693773 (and b!6608061 b!6607522)))

(assert (=> bs!1693773 (= (and (= (regOne!33462 (regTwo!33463 r!7292)) (regOne!33462 r!7292)) (= (regTwo!33462 (regTwo!33463 r!7292)) (regTwo!33462 r!7292))) (= lambda!368727 lambda!368693))))

(declare-fun bs!1693774 () Bool)

(assert (= bs!1693774 (and b!6608061 d!2071841)))

(assert (=> bs!1693774 (not (= lambda!368727 lambda!368688))))

(assert (=> b!6608061 true))

(assert (=> b!6608061 true))

(declare-fun b!6608059 () Bool)

(declare-fun e!3998135 () Bool)

(declare-fun e!3998131 () Bool)

(assert (=> b!6608059 (= e!3998135 e!3998131)))

(declare-fun c!1217781 () Bool)

(assert (=> b!6608059 (= c!1217781 ((_ is Star!16475) (regTwo!33463 r!7292)))))

(declare-fun b!6608060 () Bool)

(declare-fun e!3998129 () Bool)

(declare-fun call!578212 () Bool)

(assert (=> b!6608060 (= e!3998129 call!578212)))

(declare-fun call!578211 () Bool)

(assert (=> b!6608061 (= e!3998131 call!578211)))

(declare-fun b!6608062 () Bool)

(declare-fun c!1217783 () Bool)

(assert (=> b!6608062 (= c!1217783 ((_ is ElementMatch!16475) (regTwo!33463 r!7292)))))

(declare-fun e!3998133 () Bool)

(declare-fun e!3998130 () Bool)

(assert (=> b!6608062 (= e!3998133 e!3998130)))

(declare-fun b!6608064 () Bool)

(declare-fun res!2709611 () Bool)

(declare-fun e!3998132 () Bool)

(assert (=> b!6608064 (=> res!2709611 e!3998132)))

(assert (=> b!6608064 (= res!2709611 call!578212)))

(assert (=> b!6608064 (= e!3998131 e!3998132)))

(declare-fun b!6608065 () Bool)

(assert (=> b!6608065 (= e!3998130 (= s!2326 (Cons!65600 (c!1217326 (regTwo!33463 r!7292)) Nil!65600)))))

(declare-fun bm!578206 () Bool)

(assert (=> bm!578206 (= call!578212 (isEmpty!37882 s!2326))))

(declare-fun b!6608066 () Bool)

(declare-fun c!1217784 () Bool)

(assert (=> b!6608066 (= c!1217784 ((_ is Union!16475) (regTwo!33463 r!7292)))))

(assert (=> b!6608066 (= e!3998130 e!3998135)))

(declare-fun b!6608067 () Bool)

(declare-fun e!3998134 () Bool)

(assert (=> b!6608067 (= e!3998134 (matchRSpec!3576 (regTwo!33463 (regTwo!33463 r!7292)) s!2326))))

(declare-fun bm!578207 () Bool)

(assert (=> bm!578207 (= call!578211 (Exists!3545 (ite c!1217781 lambda!368726 lambda!368727)))))

(declare-fun b!6608068 () Bool)

(assert (=> b!6608068 (= e!3998129 e!3998133)))

(declare-fun res!2709612 () Bool)

(assert (=> b!6608068 (= res!2709612 (not ((_ is EmptyLang!16475) (regTwo!33463 r!7292))))))

(assert (=> b!6608068 (=> (not res!2709612) (not e!3998133))))

(assert (=> b!6608069 (= e!3998132 call!578211)))

(declare-fun b!6608063 () Bool)

(assert (=> b!6608063 (= e!3998135 e!3998134)))

(declare-fun res!2709613 () Bool)

(assert (=> b!6608063 (= res!2709613 (matchRSpec!3576 (regOne!33463 (regTwo!33463 r!7292)) s!2326))))

(assert (=> b!6608063 (=> res!2709613 e!3998134)))

(declare-fun d!2072129 () Bool)

(declare-fun c!1217782 () Bool)

(assert (=> d!2072129 (= c!1217782 ((_ is EmptyExpr!16475) (regTwo!33463 r!7292)))))

(assert (=> d!2072129 (= (matchRSpec!3576 (regTwo!33463 r!7292) s!2326) e!3998129)))

(assert (= (and d!2072129 c!1217782) b!6608060))

(assert (= (and d!2072129 (not c!1217782)) b!6608068))

(assert (= (and b!6608068 res!2709612) b!6608062))

(assert (= (and b!6608062 c!1217783) b!6608065))

(assert (= (and b!6608062 (not c!1217783)) b!6608066))

(assert (= (and b!6608066 c!1217784) b!6608063))

(assert (= (and b!6608066 (not c!1217784)) b!6608059))

(assert (= (and b!6608063 (not res!2709613)) b!6608067))

(assert (= (and b!6608059 c!1217781) b!6608064))

(assert (= (and b!6608059 (not c!1217781)) b!6608061))

(assert (= (and b!6608064 (not res!2709611)) b!6608069))

(assert (= (or b!6608069 b!6608061) bm!578207))

(assert (= (or b!6608060 b!6608064) bm!578206))

(assert (=> bm!578206 m!7382460))

(declare-fun m!7383034 () Bool)

(assert (=> b!6608067 m!7383034))

(declare-fun m!7383036 () Bool)

(assert (=> bm!578207 m!7383036))

(declare-fun m!7383038 () Bool)

(assert (=> b!6608063 m!7383038))

(assert (=> b!6607528 d!2072129))

(assert (=> d!2071853 d!2072017))

(assert (=> d!2071853 d!2071993))

(assert (=> d!2071809 d!2071815))

(declare-fun d!2072141 () Bool)

(assert (=> d!2072141 (= (flatMap!1980 lt!2415127 lambda!368578) (dynLambda!26122 lambda!368578 lt!2415118))))

(assert (=> d!2072141 true))

(declare-fun _$13!3872 () Unit!159235)

(assert (=> d!2072141 (= (choose!49351 lt!2415127 lt!2415118 lambda!368578) _$13!3872)))

(declare-fun b_lambda!250027 () Bool)

(assert (=> (not b_lambda!250027) (not d!2072141)))

(declare-fun bs!1693775 () Bool)

(assert (= bs!1693775 d!2072141))

(assert (=> bs!1693775 m!7381682))

(assert (=> bs!1693775 m!7382336))

(assert (=> d!2071809 d!2072141))

(declare-fun bs!1693776 () Bool)

(declare-fun d!2072145 () Bool)

(assert (= bs!1693776 (and d!2072145 d!2072065)))

(declare-fun lambda!368728 () Int)

(assert (=> bs!1693776 (= lambda!368728 lambda!368716)))

(declare-fun bs!1693777 () Bool)

(assert (= bs!1693777 (and d!2072145 d!2072053)))

(assert (=> bs!1693777 (= lambda!368728 lambda!368714)))

(declare-fun bs!1693778 () Bool)

(assert (= bs!1693778 (and d!2072145 b!6607272)))

(assert (=> bs!1693778 (not (= lambda!368728 lambda!368673))))

(declare-fun bs!1693779 () Bool)

(assert (= bs!1693779 (and d!2072145 b!6607267)))

(assert (=> bs!1693779 (not (= lambda!368728 lambda!368670))))

(declare-fun bs!1693780 () Bool)

(assert (= bs!1693780 (and d!2072145 b!6607265)))

(assert (=> bs!1693780 (not (= lambda!368728 lambda!368669))))

(declare-fun bs!1693781 () Bool)

(assert (= bs!1693781 (and d!2072145 d!2072127)))

(assert (=> bs!1693781 (= lambda!368728 lambda!368724)))

(declare-fun bs!1693782 () Bool)

(assert (= bs!1693782 (and d!2072145 b!6607270)))

(assert (=> bs!1693782 (not (= lambda!368728 lambda!368672))))

(assert (=> d!2072145 (= (nullableZipper!2220 lt!2415138) (exists!2652 lt!2415138 lambda!368728))))

(declare-fun bs!1693783 () Bool)

(assert (= bs!1693783 d!2072145))

(declare-fun m!7383050 () Bool)

(assert (=> bs!1693783 m!7383050))

(assert (=> b!6607547 d!2072145))

(declare-fun b!6608104 () Bool)

(declare-fun e!3998171 () Bool)

(declare-fun e!3998168 () Bool)

(assert (=> b!6608104 (= e!3998171 e!3998168)))

(declare-fun c!1217796 () Bool)

(assert (=> b!6608104 (= c!1217796 ((_ is Union!16475) (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131)))))))

(declare-fun b!6608105 () Bool)

(declare-fun res!2709638 () Bool)

(declare-fun e!3998165 () Bool)

(assert (=> b!6608105 (=> (not res!2709638) (not e!3998165))))

(declare-fun lt!2415339 () Int)

(declare-fun call!578223 () Int)

(assert (=> b!6608105 (= res!2709638 (> lt!2415339 call!578223))))

(declare-fun e!3998173 () Bool)

(assert (=> b!6608105 (= e!3998173 e!3998165)))

(declare-fun b!6608106 () Bool)

(declare-fun e!3998166 () Int)

(declare-fun call!578220 () Int)

(assert (=> b!6608106 (= e!3998166 (+ 1 call!578220))))

(declare-fun b!6608107 () Bool)

(declare-fun e!3998169 () Int)

(declare-fun call!578222 () Int)

(assert (=> b!6608107 (= e!3998169 (+ 1 call!578222))))

(declare-fun b!6608108 () Bool)

(declare-fun e!3998170 () Int)

(assert (=> b!6608108 (= e!3998170 1)))

(declare-fun b!6608109 () Bool)

(declare-fun e!3998172 () Bool)

(assert (=> b!6608109 (= e!3998168 e!3998172)))

(declare-fun res!2709636 () Bool)

(declare-fun call!578226 () Int)

(assert (=> b!6608109 (= res!2709636 (> lt!2415339 call!578226))))

(assert (=> b!6608109 (=> (not res!2709636) (not e!3998172))))

(declare-fun b!6608110 () Bool)

(assert (=> b!6608110 (= e!3998169 1)))

(declare-fun b!6608111 () Bool)

(declare-fun call!578225 () Int)

(assert (=> b!6608111 (= e!3998172 (> lt!2415339 call!578225))))

(declare-fun b!6608112 () Bool)

(declare-fun e!3998164 () Int)

(assert (=> b!6608112 (= e!3998164 (+ 1 call!578222))))

(declare-fun b!6608113 () Bool)

(declare-fun c!1217795 () Bool)

(assert (=> b!6608113 (= c!1217795 ((_ is Union!16475) (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131)))))))

(assert (=> b!6608113 (= e!3998166 e!3998164)))

(declare-fun b!6608114 () Bool)

(assert (=> b!6608114 (= e!3998164 e!3998169)))

(declare-fun c!1217791 () Bool)

(assert (=> b!6608114 (= c!1217791 ((_ is Concat!25320) (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131)))))))

(declare-fun bm!578215 () Bool)

(declare-fun c!1217792 () Bool)

(assert (=> bm!578215 (= call!578225 (regexDepth!372 (ite c!1217796 (regTwo!33463 (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131)))) (ite c!1217792 (regOne!33462 (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131)))) (reg!16804 (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131))))))))))

(declare-fun b!6608115 () Bool)

(declare-fun e!3998167 () Bool)

(assert (=> b!6608115 (= e!3998167 (> lt!2415339 call!578223))))

(declare-fun bm!578216 () Bool)

(assert (=> bm!578216 (= call!578223 call!578225)))

(declare-fun b!6608116 () Bool)

(assert (=> b!6608116 (= e!3998168 e!3998173)))

(assert (=> b!6608116 (= c!1217792 ((_ is Concat!25320) (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131)))))))

(declare-fun d!2072149 () Bool)

(assert (=> d!2072149 e!3998171))

(declare-fun res!2709637 () Bool)

(assert (=> d!2072149 (=> (not res!2709637) (not e!3998171))))

(assert (=> d!2072149 (= res!2709637 (> lt!2415339 0))))

(assert (=> d!2072149 (= lt!2415339 e!3998170)))

(declare-fun c!1217794 () Bool)

(assert (=> d!2072149 (= c!1217794 ((_ is ElementMatch!16475) (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131)))))))

(assert (=> d!2072149 (= (regexDepth!372 (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131)))) lt!2415339)))

(declare-fun bm!578217 () Bool)

(declare-fun c!1217797 () Bool)

(assert (=> bm!578217 (= call!578220 (regexDepth!372 (ite c!1217797 (reg!16804 (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131)))) (ite c!1217795 (regTwo!33463 (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131)))) (regOne!33462 (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131))))))))))

(declare-fun b!6608117 () Bool)

(assert (=> b!6608117 (= e!3998170 e!3998166)))

(assert (=> b!6608117 (= c!1217797 ((_ is Star!16475) (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131)))))))

(declare-fun bm!578218 () Bool)

(declare-fun call!578221 () Int)

(assert (=> bm!578218 (= call!578221 call!578220)))

(declare-fun c!1217793 () Bool)

(declare-fun b!6608118 () Bool)

(assert (=> b!6608118 (= c!1217793 ((_ is Star!16475) (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131)))))))

(assert (=> b!6608118 (= e!3998173 e!3998167)))

(declare-fun b!6608119 () Bool)

(assert (=> b!6608119 (= e!3998165 (> lt!2415339 call!578226))))

(declare-fun bm!578219 () Bool)

(declare-fun call!578224 () Int)

(assert (=> bm!578219 (= call!578224 (regexDepth!372 (ite c!1217795 (regOne!33463 (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131)))) (regTwo!33462 (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131)))))))))

(declare-fun bm!578220 () Bool)

(assert (=> bm!578220 (= call!578226 (regexDepth!372 (ite c!1217796 (regOne!33463 (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131)))) (regTwo!33462 (ite c!1217671 (regTwo!33463 lt!2415131) (ite c!1217667 (regOne!33462 lt!2415131) (reg!16804 lt!2415131)))))))))

(declare-fun bm!578221 () Bool)

(assert (=> bm!578221 (= call!578222 (maxBigInt!0 (ite c!1217795 call!578224 call!578221) (ite c!1217795 call!578221 call!578224)))))

(declare-fun b!6608120 () Bool)

(assert (=> b!6608120 (= e!3998167 (= lt!2415339 1))))

(assert (= (and d!2072149 c!1217794) b!6608108))

(assert (= (and d!2072149 (not c!1217794)) b!6608117))

(assert (= (and b!6608117 c!1217797) b!6608106))

(assert (= (and b!6608117 (not c!1217797)) b!6608113))

(assert (= (and b!6608113 c!1217795) b!6608112))

(assert (= (and b!6608113 (not c!1217795)) b!6608114))

(assert (= (and b!6608114 c!1217791) b!6608107))

(assert (= (and b!6608114 (not c!1217791)) b!6608110))

(assert (= (or b!6608112 b!6608107) bm!578218))

(assert (= (or b!6608112 b!6608107) bm!578219))

(assert (= (or b!6608112 b!6608107) bm!578221))

(assert (= (or b!6608106 bm!578218) bm!578217))

(assert (= (and d!2072149 res!2709637) b!6608104))

(assert (= (and b!6608104 c!1217796) b!6608109))

(assert (= (and b!6608104 (not c!1217796)) b!6608116))

(assert (= (and b!6608109 res!2709636) b!6608111))

(assert (= (and b!6608116 c!1217792) b!6608105))

(assert (= (and b!6608116 (not c!1217792)) b!6608118))

(assert (= (and b!6608105 res!2709638) b!6608119))

(assert (= (and b!6608118 c!1217793) b!6608115))

(assert (= (and b!6608118 (not c!1217793)) b!6608120))

(assert (= (or b!6608105 b!6608115) bm!578216))

(assert (= (or b!6608111 bm!578216) bm!578215))

(assert (= (or b!6608109 b!6608119) bm!578220))

(declare-fun m!7383062 () Bool)

(assert (=> bm!578215 m!7383062))

(declare-fun m!7383064 () Bool)

(assert (=> bm!578220 m!7383064))

(declare-fun m!7383066 () Bool)

(assert (=> bm!578217 m!7383066))

(declare-fun m!7383068 () Bool)

(assert (=> bm!578221 m!7383068))

(declare-fun m!7383070 () Bool)

(assert (=> bm!578219 m!7383070))

(assert (=> bm!578110 d!2072149))

(declare-fun d!2072157 () Bool)

(assert (=> d!2072157 (= (isConcat!1376 lt!2415323) ((_ is Concat!25320) lt!2415323))))

(assert (=> b!6607577 d!2072157))

(declare-fun d!2072161 () Bool)

(assert (=> d!2072161 (= (isEmpty!37878 (t!379377 (t!379377 (exprs!6359 (h!72050 zl!343))))) ((_ is Nil!65601) (t!379377 (t!379377 (exprs!6359 (h!72050 zl!343))))))))

(assert (=> b!6607651 d!2072161))

(declare-fun d!2072165 () Bool)

(assert (=> d!2072165 (= (nullable!6468 (h!72049 (exprs!6359 lt!2415123))) (nullableFct!2393 (h!72049 (exprs!6359 lt!2415123))))))

(declare-fun bs!1693792 () Bool)

(assert (= bs!1693792 d!2072165))

(declare-fun m!7383084 () Bool)

(assert (=> bs!1693792 m!7383084))

(assert (=> b!6607279 d!2072165))

(assert (=> b!6607513 d!2072039))

(assert (=> b!6607513 d!2071969))

(declare-fun d!2072169 () Bool)

(assert (=> d!2072169 (= (nullable!6468 (regOne!33462 (reg!16804 (regOne!33462 r!7292)))) (nullableFct!2393 (regOne!33462 (reg!16804 (regOne!33462 r!7292)))))))

(declare-fun bs!1693794 () Bool)

(assert (= bs!1693794 d!2072169))

(declare-fun m!7383088 () Bool)

(assert (=> bs!1693794 m!7383088))

(assert (=> b!6607251 d!2072169))

(declare-fun d!2072173 () Bool)

(assert (=> d!2072173 (= (nullable!6468 (regTwo!33462 r!7292)) (nullableFct!2393 (regTwo!33462 r!7292)))))

(declare-fun bs!1693795 () Bool)

(assert (= bs!1693795 d!2072173))

(declare-fun m!7383090 () Bool)

(assert (=> bs!1693795 m!7383090))

(assert (=> b!6607500 d!2072173))

(declare-fun bs!1693796 () Bool)

(declare-fun d!2072175 () Bool)

(assert (= bs!1693796 (and d!2072175 d!2072065)))

(declare-fun lambda!368730 () Int)

(assert (=> bs!1693796 (= lambda!368730 lambda!368716)))

(declare-fun bs!1693797 () Bool)

(assert (= bs!1693797 (and d!2072175 d!2072053)))

(assert (=> bs!1693797 (= lambda!368730 lambda!368714)))

(declare-fun bs!1693798 () Bool)

(assert (= bs!1693798 (and d!2072175 b!6607272)))

(assert (=> bs!1693798 (not (= lambda!368730 lambda!368673))))

(declare-fun bs!1693799 () Bool)

(assert (= bs!1693799 (and d!2072175 b!6607267)))

(assert (=> bs!1693799 (not (= lambda!368730 lambda!368670))))

(declare-fun bs!1693800 () Bool)

(assert (= bs!1693800 (and d!2072175 b!6607265)))

(assert (=> bs!1693800 (not (= lambda!368730 lambda!368669))))

(declare-fun bs!1693801 () Bool)

(assert (= bs!1693801 (and d!2072175 d!2072127)))

(assert (=> bs!1693801 (= lambda!368730 lambda!368724)))

(declare-fun bs!1693802 () Bool)

(assert (= bs!1693802 (and d!2072175 d!2072145)))

(assert (=> bs!1693802 (= lambda!368730 lambda!368728)))

(declare-fun bs!1693803 () Bool)

(assert (= bs!1693803 (and d!2072175 b!6607270)))

(assert (=> bs!1693803 (not (= lambda!368730 lambda!368672))))

(assert (=> d!2072175 (= (nullableZipper!2220 lt!2415132) (exists!2652 lt!2415132 lambda!368730))))

(declare-fun bs!1693804 () Bool)

(assert (= bs!1693804 d!2072175))

(declare-fun m!7383092 () Bool)

(assert (=> bs!1693804 m!7383092))

(assert (=> b!6607283 d!2072175))

(declare-fun d!2072177 () Bool)

(assert (=> d!2072177 (= (isEmpty!37878 (tail!12486 (exprs!6359 (h!72050 zl!343)))) ((_ is Nil!65601) (tail!12486 (exprs!6359 (h!72050 zl!343)))))))

(assert (=> b!6607572 d!2072177))

(declare-fun d!2072179 () Bool)

(assert (=> d!2072179 (= (tail!12486 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343))))))

(assert (=> b!6607572 d!2072179))

(declare-fun b!6608146 () Bool)

(declare-fun res!2709654 () Bool)

(declare-fun e!3998189 () Bool)

(assert (=> b!6608146 (=> (not res!2709654) (not e!3998189))))

(declare-fun lt!2415342 () List!65724)

(declare-fun size!40545 (List!65724) Int)

(assert (=> b!6608146 (= res!2709654 (= (size!40545 lt!2415342) (+ (size!40545 (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) Nil!65600))) (size!40545 (t!379376 s!2326)))))))

(declare-fun b!6608147 () Bool)

(assert (=> b!6608147 (= e!3998189 (or (not (= (t!379376 s!2326) Nil!65600)) (= lt!2415342 (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) Nil!65600)))))))

(declare-fun b!6608145 () Bool)

(declare-fun e!3998190 () List!65724)

(assert (=> b!6608145 (= e!3998190 (Cons!65600 (h!72048 (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) Nil!65600))) (++!14621 (t!379376 (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) Nil!65600))) (t!379376 s!2326))))))

(declare-fun d!2072181 () Bool)

(assert (=> d!2072181 e!3998189))

(declare-fun res!2709655 () Bool)

(assert (=> d!2072181 (=> (not res!2709655) (not e!3998189))))

(declare-fun content!12653 (List!65724) (InoxSet C!33220))

(assert (=> d!2072181 (= res!2709655 (= (content!12653 lt!2415342) ((_ map or) (content!12653 (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) Nil!65600))) (content!12653 (t!379376 s!2326)))))))

(assert (=> d!2072181 (= lt!2415342 e!3998190)))

(declare-fun c!1217802 () Bool)

(assert (=> d!2072181 (= c!1217802 ((_ is Nil!65600) (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) Nil!65600))))))

(assert (=> d!2072181 (= (++!14621 (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) Nil!65600)) (t!379376 s!2326)) lt!2415342)))

(declare-fun b!6608144 () Bool)

(assert (=> b!6608144 (= e!3998190 (t!379376 s!2326))))

(assert (= (and d!2072181 c!1217802) b!6608144))

(assert (= (and d!2072181 (not c!1217802)) b!6608145))

(assert (= (and d!2072181 res!2709655) b!6608146))

(assert (= (and b!6608146 res!2709654) b!6608147))

(declare-fun m!7383094 () Bool)

(assert (=> b!6608146 m!7383094))

(assert (=> b!6608146 m!7382180))

(declare-fun m!7383096 () Bool)

(assert (=> b!6608146 m!7383096))

(declare-fun m!7383098 () Bool)

(assert (=> b!6608146 m!7383098))

(declare-fun m!7383100 () Bool)

(assert (=> b!6608145 m!7383100))

(declare-fun m!7383102 () Bool)

(assert (=> d!2072181 m!7383102))

(assert (=> d!2072181 m!7382180))

(declare-fun m!7383104 () Bool)

(assert (=> d!2072181 m!7383104))

(declare-fun m!7383106 () Bool)

(assert (=> d!2072181 m!7383106))

(assert (=> b!6607112 d!2072181))

(declare-fun b!6608154 () Bool)

(declare-fun res!2709660 () Bool)

(declare-fun e!3998193 () Bool)

(assert (=> b!6608154 (=> (not res!2709660) (not e!3998193))))

(declare-fun lt!2415343 () List!65724)

(assert (=> b!6608154 (= res!2709660 (= (size!40545 lt!2415343) (+ (size!40545 Nil!65600) (size!40545 (Cons!65600 (h!72048 s!2326) Nil!65600)))))))

(declare-fun b!6608155 () Bool)

(assert (=> b!6608155 (= e!3998193 (or (not (= (Cons!65600 (h!72048 s!2326) Nil!65600) Nil!65600)) (= lt!2415343 Nil!65600)))))

(declare-fun b!6608153 () Bool)

(declare-fun e!3998194 () List!65724)

(assert (=> b!6608153 (= e!3998194 (Cons!65600 (h!72048 Nil!65600) (++!14621 (t!379376 Nil!65600) (Cons!65600 (h!72048 s!2326) Nil!65600))))))

(declare-fun d!2072183 () Bool)

(assert (=> d!2072183 e!3998193))

(declare-fun res!2709661 () Bool)

(assert (=> d!2072183 (=> (not res!2709661) (not e!3998193))))

(assert (=> d!2072183 (= res!2709661 (= (content!12653 lt!2415343) ((_ map or) (content!12653 Nil!65600) (content!12653 (Cons!65600 (h!72048 s!2326) Nil!65600)))))))

(assert (=> d!2072183 (= lt!2415343 e!3998194)))

(declare-fun c!1217803 () Bool)

(assert (=> d!2072183 (= c!1217803 ((_ is Nil!65600) Nil!65600))))

(assert (=> d!2072183 (= (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) Nil!65600)) lt!2415343)))

(declare-fun b!6608152 () Bool)

(assert (=> b!6608152 (= e!3998194 (Cons!65600 (h!72048 s!2326) Nil!65600))))

(assert (= (and d!2072183 c!1217803) b!6608152))

(assert (= (and d!2072183 (not c!1217803)) b!6608153))

(assert (= (and d!2072183 res!2709661) b!6608154))

(assert (= (and b!6608154 res!2709660) b!6608155))

(declare-fun m!7383108 () Bool)

(assert (=> b!6608154 m!7383108))

(declare-fun m!7383110 () Bool)

(assert (=> b!6608154 m!7383110))

(declare-fun m!7383112 () Bool)

(assert (=> b!6608154 m!7383112))

(declare-fun m!7383114 () Bool)

(assert (=> b!6608153 m!7383114))

(declare-fun m!7383116 () Bool)

(assert (=> d!2072183 m!7383116))

(declare-fun m!7383118 () Bool)

(assert (=> d!2072183 m!7383118))

(declare-fun m!7383120 () Bool)

(assert (=> d!2072183 m!7383120))

(assert (=> b!6607112 d!2072183))

(declare-fun d!2072185 () Bool)

(assert (=> d!2072185 (= (++!14621 (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) Nil!65600)) (t!379376 s!2326)) s!2326)))

(declare-fun lt!2415346 () Unit!159235)

(declare-fun choose!49359 (List!65724 C!33220 List!65724 List!65724) Unit!159235)

(assert (=> d!2072185 (= lt!2415346 (choose!49359 Nil!65600 (h!72048 s!2326) (t!379376 s!2326) s!2326))))

(assert (=> d!2072185 (= (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) (t!379376 s!2326))) s!2326)))

(assert (=> d!2072185 (= (lemmaMoveElementToOtherListKeepsConcatEq!2618 Nil!65600 (h!72048 s!2326) (t!379376 s!2326) s!2326) lt!2415346)))

(declare-fun bs!1693817 () Bool)

(assert (= bs!1693817 d!2072185))

(assert (=> bs!1693817 m!7382180))

(assert (=> bs!1693817 m!7382180))

(assert (=> bs!1693817 m!7382182))

(declare-fun m!7383122 () Bool)

(assert (=> bs!1693817 m!7383122))

(declare-fun m!7383124 () Bool)

(assert (=> bs!1693817 m!7383124))

(assert (=> b!6607112 d!2072185))

(declare-fun b!6608156 () Bool)

(declare-fun e!3998195 () Option!16366)

(assert (=> b!6608156 (= e!3998195 None!16365)))

(declare-fun b!6608157 () Bool)

(declare-fun res!2709666 () Bool)

(declare-fun e!3998197 () Bool)

(assert (=> b!6608157 (=> (not res!2709666) (not e!3998197))))

(declare-fun lt!2415347 () Option!16366)

(assert (=> b!6608157 (= res!2709666 (matchR!8658 (regTwo!33462 r!7292) (_2!36757 (get!22794 lt!2415347))))))

(declare-fun b!6608158 () Bool)

(declare-fun e!3998198 () Bool)

(assert (=> b!6608158 (= e!3998198 (not (isDefined!13069 lt!2415347)))))

(declare-fun b!6608159 () Bool)

(assert (=> b!6608159 (= e!3998197 (= (++!14621 (_1!36757 (get!22794 lt!2415347)) (_2!36757 (get!22794 lt!2415347))) s!2326))))

(declare-fun b!6608160 () Bool)

(declare-fun e!3998199 () Bool)

(assert (=> b!6608160 (= e!3998199 (matchR!8658 (regTwo!33462 r!7292) (t!379376 s!2326)))))

(declare-fun b!6608161 () Bool)

(declare-fun e!3998196 () Option!16366)

(assert (=> b!6608161 (= e!3998196 (Some!16365 (tuple2!66909 (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) Nil!65600)) (t!379376 s!2326))))))

(declare-fun b!6608162 () Bool)

(declare-fun res!2709663 () Bool)

(assert (=> b!6608162 (=> (not res!2709663) (not e!3998197))))

(assert (=> b!6608162 (= res!2709663 (matchR!8658 (regOne!33462 r!7292) (_1!36757 (get!22794 lt!2415347))))))

(declare-fun d!2072187 () Bool)

(assert (=> d!2072187 e!3998198))

(declare-fun res!2709664 () Bool)

(assert (=> d!2072187 (=> res!2709664 e!3998198)))

(assert (=> d!2072187 (= res!2709664 e!3998197)))

(declare-fun res!2709662 () Bool)

(assert (=> d!2072187 (=> (not res!2709662) (not e!3998197))))

(assert (=> d!2072187 (= res!2709662 (isDefined!13069 lt!2415347))))

(assert (=> d!2072187 (= lt!2415347 e!3998196)))

(declare-fun c!1217804 () Bool)

(assert (=> d!2072187 (= c!1217804 e!3998199)))

(declare-fun res!2709665 () Bool)

(assert (=> d!2072187 (=> (not res!2709665) (not e!3998199))))

(assert (=> d!2072187 (= res!2709665 (matchR!8658 (regOne!33462 r!7292) (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) Nil!65600))))))

(assert (=> d!2072187 (validRegex!8211 (regOne!33462 r!7292))))

(assert (=> d!2072187 (= (findConcatSeparation!2780 (regOne!33462 r!7292) (regTwo!33462 r!7292) (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) Nil!65600)) (t!379376 s!2326) s!2326) lt!2415347)))

(declare-fun b!6608163 () Bool)

(assert (=> b!6608163 (= e!3998196 e!3998195)))

(declare-fun c!1217805 () Bool)

(assert (=> b!6608163 (= c!1217805 ((_ is Nil!65600) (t!379376 s!2326)))))

(declare-fun b!6608164 () Bool)

(declare-fun lt!2415349 () Unit!159235)

(declare-fun lt!2415348 () Unit!159235)

(assert (=> b!6608164 (= lt!2415349 lt!2415348)))

(assert (=> b!6608164 (= (++!14621 (++!14621 (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) Nil!65600)) (Cons!65600 (h!72048 (t!379376 s!2326)) Nil!65600)) (t!379376 (t!379376 s!2326))) s!2326)))

(assert (=> b!6608164 (= lt!2415348 (lemmaMoveElementToOtherListKeepsConcatEq!2618 (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) Nil!65600)) (h!72048 (t!379376 s!2326)) (t!379376 (t!379376 s!2326)) s!2326))))

(assert (=> b!6608164 (= e!3998195 (findConcatSeparation!2780 (regOne!33462 r!7292) (regTwo!33462 r!7292) (++!14621 (++!14621 Nil!65600 (Cons!65600 (h!72048 s!2326) Nil!65600)) (Cons!65600 (h!72048 (t!379376 s!2326)) Nil!65600)) (t!379376 (t!379376 s!2326)) s!2326))))

(assert (= (and d!2072187 res!2709665) b!6608160))

(assert (= (and d!2072187 c!1217804) b!6608161))

(assert (= (and d!2072187 (not c!1217804)) b!6608163))

(assert (= (and b!6608163 c!1217805) b!6608156))

(assert (= (and b!6608163 (not c!1217805)) b!6608164))

(assert (= (and d!2072187 res!2709662) b!6608162))

(assert (= (and b!6608162 res!2709663) b!6608157))

(assert (= (and b!6608157 res!2709666) b!6608159))

(assert (= (and d!2072187 (not res!2709664)) b!6608158))

(declare-fun m!7383126 () Bool)

(assert (=> b!6608162 m!7383126))

(declare-fun m!7383128 () Bool)

(assert (=> b!6608162 m!7383128))

(assert (=> b!6608164 m!7382180))

(declare-fun m!7383130 () Bool)

(assert (=> b!6608164 m!7383130))

(assert (=> b!6608164 m!7383130))

(declare-fun m!7383132 () Bool)

(assert (=> b!6608164 m!7383132))

(assert (=> b!6608164 m!7382180))

(declare-fun m!7383134 () Bool)

(assert (=> b!6608164 m!7383134))

(assert (=> b!6608164 m!7383130))

(declare-fun m!7383136 () Bool)

(assert (=> b!6608164 m!7383136))

(declare-fun m!7383138 () Bool)

(assert (=> b!6608160 m!7383138))

(assert (=> b!6608159 m!7383126))

(declare-fun m!7383140 () Bool)

(assert (=> b!6608159 m!7383140))

(declare-fun m!7383142 () Bool)

(assert (=> d!2072187 m!7383142))

(assert (=> d!2072187 m!7382180))

(declare-fun m!7383144 () Bool)

(assert (=> d!2072187 m!7383144))

(assert (=> d!2072187 m!7382194))

(assert (=> b!6608157 m!7383126))

(declare-fun m!7383146 () Bool)

(assert (=> b!6608157 m!7383146))

(assert (=> b!6608158 m!7383142))

(assert (=> b!6607112 d!2072187))

(declare-fun d!2072189 () Bool)

(assert (=> d!2072189 (= (isEmpty!37881 (findConcatSeparation!2780 (regOne!33462 r!7292) (regTwo!33462 r!7292) Nil!65600 s!2326 s!2326)) (not ((_ is Some!16365) (findConcatSeparation!2780 (regOne!33462 r!7292) (regTwo!33462 r!7292) Nil!65600 s!2326 s!2326))))))

(assert (=> d!2071773 d!2072189))

(declare-fun d!2072191 () Bool)

(declare-fun res!2709667 () Bool)

(declare-fun e!3998200 () Bool)

(assert (=> d!2072191 (=> res!2709667 e!3998200)))

(assert (=> d!2072191 (= res!2709667 ((_ is Nil!65601) lt!2415202))))

(assert (=> d!2072191 (= (forall!15673 lt!2415202 lambda!368608) e!3998200)))

(declare-fun b!6608165 () Bool)

(declare-fun e!3998201 () Bool)

(assert (=> b!6608165 (= e!3998200 e!3998201)))

(declare-fun res!2709668 () Bool)

(assert (=> b!6608165 (=> (not res!2709668) (not e!3998201))))

(assert (=> b!6608165 (= res!2709668 (dynLambda!26126 lambda!368608 (h!72049 lt!2415202)))))

(declare-fun b!6608166 () Bool)

(assert (=> b!6608166 (= e!3998201 (forall!15673 (t!379377 lt!2415202) lambda!368608))))

(assert (= (and d!2072191 (not res!2709667)) b!6608165))

(assert (= (and b!6608165 res!2709668) b!6608166))

(declare-fun b_lambda!250031 () Bool)

(assert (=> (not b_lambda!250031) (not b!6608165)))

(declare-fun m!7383148 () Bool)

(assert (=> b!6608165 m!7383148))

(declare-fun m!7383150 () Bool)

(assert (=> b!6608166 m!7383150))

(assert (=> d!2071661 d!2072191))

(declare-fun b!6608167 () Bool)

(declare-fun e!3998209 () Bool)

(declare-fun e!3998206 () Bool)

(assert (=> b!6608167 (= e!3998209 e!3998206)))

(declare-fun c!1217811 () Bool)

(assert (=> b!6608167 (= c!1217811 ((_ is Union!16475) (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))

(declare-fun b!6608168 () Bool)

(declare-fun res!2709671 () Bool)

(declare-fun e!3998203 () Bool)

(assert (=> b!6608168 (=> (not res!2709671) (not e!3998203))))

(declare-fun lt!2415350 () Int)

(declare-fun call!578233 () Int)

(assert (=> b!6608168 (= res!2709671 (> lt!2415350 call!578233))))

(declare-fun e!3998211 () Bool)

(assert (=> b!6608168 (= e!3998211 e!3998203)))

(declare-fun b!6608169 () Bool)

(declare-fun e!3998204 () Int)

(declare-fun call!578230 () Int)

(assert (=> b!6608169 (= e!3998204 (+ 1 call!578230))))

(declare-fun b!6608170 () Bool)

(declare-fun e!3998207 () Int)

(declare-fun call!578232 () Int)

(assert (=> b!6608170 (= e!3998207 (+ 1 call!578232))))

(declare-fun b!6608171 () Bool)

(declare-fun e!3998208 () Int)

(assert (=> b!6608171 (= e!3998208 1)))

(declare-fun b!6608172 () Bool)

(declare-fun e!3998210 () Bool)

(assert (=> b!6608172 (= e!3998206 e!3998210)))

(declare-fun res!2709669 () Bool)

(declare-fun call!578236 () Int)

(assert (=> b!6608172 (= res!2709669 (> lt!2415350 call!578236))))

(assert (=> b!6608172 (=> (not res!2709669) (not e!3998210))))

(declare-fun b!6608173 () Bool)

(assert (=> b!6608173 (= e!3998207 1)))

(declare-fun b!6608174 () Bool)

(declare-fun call!578235 () Int)

(assert (=> b!6608174 (= e!3998210 (> lt!2415350 call!578235))))

(declare-fun b!6608175 () Bool)

(declare-fun e!3998202 () Int)

(assert (=> b!6608175 (= e!3998202 (+ 1 call!578232))))

(declare-fun b!6608176 () Bool)

(declare-fun c!1217810 () Bool)

(assert (=> b!6608176 (= c!1217810 ((_ is Union!16475) (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))

(assert (=> b!6608176 (= e!3998204 e!3998202)))

(declare-fun b!6608177 () Bool)

(assert (=> b!6608177 (= e!3998202 e!3998207)))

(declare-fun c!1217806 () Bool)

(assert (=> b!6608177 (= c!1217806 ((_ is Concat!25320) (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))

(declare-fun c!1217807 () Bool)

(declare-fun bm!578225 () Bool)

(assert (=> bm!578225 (= call!578235 (regexDepth!372 (ite c!1217811 (regTwo!33463 (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292))) (ite c!1217807 (regOne!33462 (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292))) (reg!16804 (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292)))))))))

(declare-fun b!6608178 () Bool)

(declare-fun e!3998205 () Bool)

(assert (=> b!6608178 (= e!3998205 (> lt!2415350 call!578233))))

(declare-fun bm!578226 () Bool)

(assert (=> bm!578226 (= call!578233 call!578235)))

(declare-fun b!6608179 () Bool)

(assert (=> b!6608179 (= e!3998206 e!3998211)))

(assert (=> b!6608179 (= c!1217807 ((_ is Concat!25320) (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))

(declare-fun d!2072193 () Bool)

(assert (=> d!2072193 e!3998209))

(declare-fun res!2709670 () Bool)

(assert (=> d!2072193 (=> (not res!2709670) (not e!3998209))))

(assert (=> d!2072193 (= res!2709670 (> lt!2415350 0))))

(assert (=> d!2072193 (= lt!2415350 e!3998208)))

(declare-fun c!1217809 () Bool)

(assert (=> d!2072193 (= c!1217809 ((_ is ElementMatch!16475) (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))

(assert (=> d!2072193 (= (regexDepth!372 (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292))) lt!2415350)))

(declare-fun c!1217812 () Bool)

(declare-fun bm!578227 () Bool)

(assert (=> bm!578227 (= call!578230 (regexDepth!372 (ite c!1217812 (reg!16804 (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292))) (ite c!1217810 (regTwo!33463 (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292))) (regOne!33462 (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292)))))))))

(declare-fun b!6608180 () Bool)

(assert (=> b!6608180 (= e!3998208 e!3998204)))

(assert (=> b!6608180 (= c!1217812 ((_ is Star!16475) (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))

(declare-fun bm!578228 () Bool)

(declare-fun call!578231 () Int)

(assert (=> bm!578228 (= call!578231 call!578230)))

(declare-fun b!6608181 () Bool)

(declare-fun c!1217808 () Bool)

(assert (=> b!6608181 (= c!1217808 ((_ is Star!16475) (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))

(assert (=> b!6608181 (= e!3998211 e!3998205)))

(declare-fun b!6608182 () Bool)

(assert (=> b!6608182 (= e!3998203 (> lt!2415350 call!578236))))

(declare-fun call!578234 () Int)

(declare-fun bm!578229 () Bool)

(assert (=> bm!578229 (= call!578234 (regexDepth!372 (ite c!1217810 (regOne!33463 (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292))) (regTwo!33462 (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))))

(declare-fun bm!578230 () Bool)

(assert (=> bm!578230 (= call!578236 (regexDepth!372 (ite c!1217811 (regOne!33463 (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292))) (regTwo!33462 (ite c!1217663 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))))

(declare-fun bm!578231 () Bool)

(assert (=> bm!578231 (= call!578232 (maxBigInt!0 (ite c!1217810 call!578234 call!578231) (ite c!1217810 call!578231 call!578234)))))

(declare-fun b!6608183 () Bool)

(assert (=> b!6608183 (= e!3998205 (= lt!2415350 1))))

(assert (= (and d!2072193 c!1217809) b!6608171))

(assert (= (and d!2072193 (not c!1217809)) b!6608180))

(assert (= (and b!6608180 c!1217812) b!6608169))

(assert (= (and b!6608180 (not c!1217812)) b!6608176))

(assert (= (and b!6608176 c!1217810) b!6608175))

(assert (= (and b!6608176 (not c!1217810)) b!6608177))

(assert (= (and b!6608177 c!1217806) b!6608170))

(assert (= (and b!6608177 (not c!1217806)) b!6608173))

(assert (= (or b!6608175 b!6608170) bm!578228))

(assert (= (or b!6608175 b!6608170) bm!578229))

(assert (= (or b!6608175 b!6608170) bm!578231))

(assert (= (or b!6608169 bm!578228) bm!578227))

(assert (= (and d!2072193 res!2709670) b!6608167))

(assert (= (and b!6608167 c!1217811) b!6608172))

(assert (= (and b!6608167 (not c!1217811)) b!6608179))

(assert (= (and b!6608172 res!2709669) b!6608174))

(assert (= (and b!6608179 c!1217807) b!6608168))

(assert (= (and b!6608179 (not c!1217807)) b!6608181))

(assert (= (and b!6608168 res!2709671) b!6608182))

(assert (= (and b!6608181 c!1217808) b!6608178))

(assert (= (and b!6608181 (not c!1217808)) b!6608183))

(assert (= (or b!6608168 b!6608178) bm!578226))

(assert (= (or b!6608174 bm!578226) bm!578225))

(assert (= (or b!6608172 b!6608182) bm!578230))

(declare-fun m!7383156 () Bool)

(assert (=> bm!578225 m!7383156))

(declare-fun m!7383158 () Bool)

(assert (=> bm!578230 m!7383158))

(declare-fun m!7383160 () Bool)

(assert (=> bm!578227 m!7383160))

(declare-fun m!7383162 () Bool)

(assert (=> bm!578231 m!7383162))

(declare-fun m!7383164 () Bool)

(assert (=> bm!578229 m!7383164))

(assert (=> bm!578107 d!2072193))

(declare-fun d!2072197 () Bool)

(assert (=> d!2072197 (= (Exists!3545 lambda!368686) (choose!49347 lambda!368686))))

(declare-fun bs!1693821 () Bool)

(assert (= bs!1693821 d!2072197))

(declare-fun m!7383168 () Bool)

(assert (=> bs!1693821 m!7383168))

(assert (=> d!2071833 d!2072197))

(declare-fun d!2072199 () Bool)

(assert (=> d!2072199 (= (Exists!3545 lambda!368687) (choose!49347 lambda!368687))))

(declare-fun bs!1693822 () Bool)

(assert (= bs!1693822 d!2072199))

(declare-fun m!7383174 () Bool)

(assert (=> bs!1693822 m!7383174))

(assert (=> d!2071833 d!2072199))

(declare-fun bs!1693825 () Bool)

(declare-fun d!2072203 () Bool)

(assert (= bs!1693825 (and d!2072203 d!2072109)))

(declare-fun lambda!368741 () Int)

(assert (=> bs!1693825 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) (regTwo!33462 r!7292))) (= lambda!368741 lambda!368721))))

(declare-fun bs!1693826 () Bool)

(assert (= bs!1693826 (and d!2072203 d!2071761)))

(assert (=> bs!1693826 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) (regTwo!33462 r!7292))) (= lambda!368741 lambda!368653))))

(declare-fun bs!1693827 () Bool)

(assert (= bs!1693827 (and d!2072203 b!6608069)))

(assert (=> bs!1693827 (not (= lambda!368741 lambda!368726))))

(declare-fun bs!1693828 () Bool)

(assert (= bs!1693828 (and d!2072203 b!6606503)))

(assert (=> bs!1693828 (not (= lambda!368741 lambda!368580))))

(assert (=> bs!1693828 (not (= lambda!368741 lambda!368581))))

(assert (=> bs!1693828 (= (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) lt!2415134) (= lambda!368741 lambda!368579))))

(declare-fun bs!1693829 () Bool)

(assert (= bs!1693829 (and d!2072203 b!6607530)))

(assert (=> bs!1693829 (not (= lambda!368741 lambda!368692))))

(declare-fun bs!1693830 () Bool)

(assert (= bs!1693830 (and d!2072203 d!2071833)))

(assert (=> bs!1693830 (not (= lambda!368741 lambda!368687))))

(declare-fun bs!1693831 () Bool)

(assert (= bs!1693831 (and d!2072203 b!6608061)))

(assert (=> bs!1693831 (not (= lambda!368741 lambda!368727))))

(declare-fun bs!1693832 () Bool)

(assert (= bs!1693832 (and d!2072203 d!2071823)))

(assert (=> bs!1693832 (not (= lambda!368741 lambda!368675))))

(declare-fun bs!1693833 () Bool)

(assert (= bs!1693833 (and d!2072203 b!6607454)))

(assert (=> bs!1693833 (not (= lambda!368741 lambda!368690))))

(assert (=> bs!1693826 (not (= lambda!368741 lambda!368654))))

(declare-fun bs!1693834 () Bool)

(assert (= bs!1693834 (and d!2072203 b!6607397)))

(assert (=> bs!1693834 (not (= lambda!368741 lambda!368681))))

(declare-fun bs!1693835 () Bool)

(assert (= bs!1693835 (and d!2072203 b!6606515)))

(assert (=> bs!1693835 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) (regTwo!33462 r!7292))) (= lambda!368741 lambda!368576))))

(assert (=> bs!1693835 (not (= lambda!368741 lambda!368577))))

(assert (=> bs!1693832 (= (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) lt!2415134) (= lambda!368741 lambda!368674))))

(declare-fun bs!1693836 () Bool)

(assert (= bs!1693836 (and d!2072203 d!2071755)))

(assert (=> bs!1693836 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) (regTwo!33462 r!7292))) (= lambda!368741 lambda!368648))))

(assert (=> bs!1693830 (= lambda!368741 lambda!368686)))

(declare-fun bs!1693837 () Bool)

(assert (= bs!1693837 (and d!2072203 b!6607405)))

(assert (=> bs!1693837 (not (= lambda!368741 lambda!368680))))

(declare-fun bs!1693838 () Bool)

(assert (= bs!1693838 (and d!2072203 b!6607446)))

(assert (=> bs!1693838 (not (= lambda!368741 lambda!368691))))

(declare-fun bs!1693839 () Bool)

(assert (= bs!1693839 (and d!2072203 b!6607522)))

(assert (=> bs!1693839 (not (= lambda!368741 lambda!368693))))

(declare-fun bs!1693840 () Bool)

(assert (= bs!1693840 (and d!2072203 d!2071841)))

(assert (=> bs!1693840 (= (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) lt!2415134) (= lambda!368741 lambda!368688))))

(assert (=> d!2072203 true))

(assert (=> d!2072203 true))

(declare-fun lambda!368742 () Int)

(assert (=> bs!1693825 (not (= lambda!368742 lambda!368721))))

(assert (=> bs!1693826 (not (= lambda!368742 lambda!368653))))

(assert (=> bs!1693827 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (reg!16804 (regTwo!33463 r!7292))) (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) (regTwo!33463 r!7292))) (= lambda!368742 lambda!368726))))

(assert (=> bs!1693828 (not (= lambda!368742 lambda!368580))))

(assert (=> bs!1693828 (= (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) lt!2415134) (= lambda!368742 lambda!368581))))

(assert (=> bs!1693828 (not (= lambda!368742 lambda!368579))))

(assert (=> bs!1693829 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (reg!16804 r!7292)) (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) r!7292)) (= lambda!368742 lambda!368692))))

(assert (=> bs!1693830 (= lambda!368742 lambda!368687)))

(assert (=> bs!1693831 (not (= lambda!368742 lambda!368727))))

(assert (=> bs!1693832 (not (= lambda!368742 lambda!368675))))

(assert (=> bs!1693833 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (reg!16804 lt!2415143)) (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) lt!2415143)) (= lambda!368742 lambda!368690))))

(assert (=> bs!1693826 (not (= lambda!368742 lambda!368654))))

(assert (=> bs!1693834 (not (= lambda!368742 lambda!368681))))

(assert (=> bs!1693835 (not (= lambda!368742 lambda!368576))))

(assert (=> bs!1693835 (not (= lambda!368742 lambda!368577))))

(assert (=> bs!1693832 (not (= lambda!368742 lambda!368674))))

(assert (=> bs!1693836 (not (= lambda!368742 lambda!368648))))

(assert (=> bs!1693830 (not (= lambda!368742 lambda!368686))))

(assert (=> bs!1693837 (= (and (= (reg!16804 (regOne!33462 r!7292)) (reg!16804 lt!2415134)) (= (Star!16475 (reg!16804 (regOne!33462 r!7292))) lt!2415134)) (= lambda!368742 lambda!368680))))

(assert (=> bs!1693838 (not (= lambda!368742 lambda!368691))))

(assert (=> bs!1693839 (not (= lambda!368742 lambda!368693))))

(assert (=> bs!1693840 (not (= lambda!368742 lambda!368688))))

(declare-fun bs!1693842 () Bool)

(assert (= bs!1693842 d!2072203))

(assert (=> bs!1693842 (not (= lambda!368742 lambda!368741))))

(assert (=> d!2072203 true))

(assert (=> d!2072203 true))

(assert (=> d!2072203 (= (Exists!3545 lambda!368741) (Exists!3545 lambda!368742))))

(assert (=> d!2072203 true))

(declare-fun _$91!617 () Unit!159235)

(assert (=> d!2072203 (= (choose!49354 (reg!16804 (regOne!33462 r!7292)) Nil!65600) _$91!617)))

(declare-fun m!7383246 () Bool)

(assert (=> bs!1693842 m!7383246))

(declare-fun m!7383248 () Bool)

(assert (=> bs!1693842 m!7383248))

(assert (=> d!2071833 d!2072203))

(declare-fun b!6608290 () Bool)

(declare-fun e!3998277 () Bool)

(declare-fun call!578276 () Bool)

(assert (=> b!6608290 (= e!3998277 call!578276)))

(declare-fun d!2072233 () Bool)

(declare-fun res!2709708 () Bool)

(declare-fun e!3998279 () Bool)

(assert (=> d!2072233 (=> res!2709708 e!3998279)))

(assert (=> d!2072233 (= res!2709708 ((_ is ElementMatch!16475) (reg!16804 (regOne!33462 r!7292))))))

(assert (=> d!2072233 (= (validRegex!8211 (reg!16804 (regOne!33462 r!7292))) e!3998279)))

(declare-fun b!6608291 () Bool)

(declare-fun e!3998276 () Bool)

(declare-fun e!3998281 () Bool)

(assert (=> b!6608291 (= e!3998276 e!3998281)))

(declare-fun res!2709707 () Bool)

(assert (=> b!6608291 (=> (not res!2709707) (not e!3998281))))

(declare-fun call!578277 () Bool)

(assert (=> b!6608291 (= res!2709707 call!578277)))

(declare-fun b!6608292 () Bool)

(declare-fun e!3998278 () Bool)

(declare-fun call!578278 () Bool)

(assert (=> b!6608292 (= e!3998278 call!578278)))

(declare-fun b!6608293 () Bool)

(declare-fun e!3998280 () Bool)

(assert (=> b!6608293 (= e!3998280 e!3998277)))

(declare-fun res!2709705 () Bool)

(assert (=> b!6608293 (= res!2709705 (not (nullable!6468 (reg!16804 (reg!16804 (regOne!33462 r!7292))))))))

(assert (=> b!6608293 (=> (not res!2709705) (not e!3998277))))

(declare-fun bm!578271 () Bool)

(assert (=> bm!578271 (= call!578278 call!578276)))

(declare-fun b!6608294 () Bool)

(declare-fun e!3998275 () Bool)

(assert (=> b!6608294 (= e!3998280 e!3998275)))

(declare-fun c!1217851 () Bool)

(assert (=> b!6608294 (= c!1217851 ((_ is Union!16475) (reg!16804 (regOne!33462 r!7292))))))

(declare-fun bm!578272 () Bool)

(declare-fun c!1217850 () Bool)

(assert (=> bm!578272 (= call!578276 (validRegex!8211 (ite c!1217850 (reg!16804 (reg!16804 (regOne!33462 r!7292))) (ite c!1217851 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regTwo!33462 (reg!16804 (regOne!33462 r!7292)))))))))

(declare-fun bm!578273 () Bool)

(assert (=> bm!578273 (= call!578277 (validRegex!8211 (ite c!1217851 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292))))))))

(declare-fun b!6608295 () Bool)

(declare-fun res!2709709 () Bool)

(assert (=> b!6608295 (=> res!2709709 e!3998276)))

(assert (=> b!6608295 (= res!2709709 (not ((_ is Concat!25320) (reg!16804 (regOne!33462 r!7292)))))))

(assert (=> b!6608295 (= e!3998275 e!3998276)))

(declare-fun b!6608296 () Bool)

(assert (=> b!6608296 (= e!3998279 e!3998280)))

(assert (=> b!6608296 (= c!1217850 ((_ is Star!16475) (reg!16804 (regOne!33462 r!7292))))))

(declare-fun b!6608297 () Bool)

(declare-fun res!2709706 () Bool)

(assert (=> b!6608297 (=> (not res!2709706) (not e!3998278))))

(assert (=> b!6608297 (= res!2709706 call!578277)))

(assert (=> b!6608297 (= e!3998275 e!3998278)))

(declare-fun b!6608298 () Bool)

(assert (=> b!6608298 (= e!3998281 call!578278)))

(assert (= (and d!2072233 (not res!2709708)) b!6608296))

(assert (= (and b!6608296 c!1217850) b!6608293))

(assert (= (and b!6608296 (not c!1217850)) b!6608294))

(assert (= (and b!6608293 res!2709705) b!6608290))

(assert (= (and b!6608294 c!1217851) b!6608297))

(assert (= (and b!6608294 (not c!1217851)) b!6608295))

(assert (= (and b!6608297 res!2709706) b!6608292))

(assert (= (and b!6608295 (not res!2709709)) b!6608291))

(assert (= (and b!6608291 res!2709707) b!6608298))

(assert (= (or b!6608292 b!6608298) bm!578271))

(assert (= (or b!6608297 b!6608291) bm!578273))

(assert (= (or b!6608290 bm!578271) bm!578272))

(declare-fun m!7383254 () Bool)

(assert (=> b!6608293 m!7383254))

(declare-fun m!7383256 () Bool)

(assert (=> bm!578272 m!7383256))

(declare-fun m!7383258 () Bool)

(assert (=> bm!578273 m!7383258))

(assert (=> d!2071833 d!2072233))

(declare-fun d!2072237 () Bool)

(assert (=> d!2072237 (= (nullable!6468 lt!2415134) (nullableFct!2393 lt!2415134))))

(declare-fun bs!1693843 () Bool)

(assert (= bs!1693843 d!2072237))

(declare-fun m!7383260 () Bool)

(assert (=> bs!1693843 m!7383260))

(assert (=> b!6607332 d!2072237))

(assert (=> b!6607484 d!2071869))

(declare-fun d!2072239 () Bool)

(assert (=> d!2072239 true))

(declare-fun setRes!45134 () Bool)

(assert (=> d!2072239 setRes!45134))

(declare-fun condSetEmpty!45134 () Bool)

(declare-fun res!2709718 () (InoxSet Context!11718))

(assert (=> d!2072239 (= condSetEmpty!45134 (= res!2709718 ((as const (Array Context!11718 Bool)) false)))))

(assert (=> d!2072239 (= (choose!49350 lt!2415127 lambda!368578) res!2709718)))

(declare-fun setIsEmpty!45134 () Bool)

(assert (=> setIsEmpty!45134 setRes!45134))

(declare-fun setElem!45134 () Context!11718)

(declare-fun e!3998298 () Bool)

(declare-fun tp!1820624 () Bool)

(declare-fun setNonEmpty!45134 () Bool)

(assert (=> setNonEmpty!45134 (= setRes!45134 (and tp!1820624 (inv!84434 setElem!45134) e!3998298))))

(declare-fun setRest!45134 () (InoxSet Context!11718))

(assert (=> setNonEmpty!45134 (= res!2709718 ((_ map or) (store ((as const (Array Context!11718 Bool)) false) setElem!45134 true) setRest!45134))))

(declare-fun b!6608323 () Bool)

(declare-fun tp!1820625 () Bool)

(assert (=> b!6608323 (= e!3998298 tp!1820625)))

(assert (= (and d!2072239 condSetEmpty!45134) setIsEmpty!45134))

(assert (= (and d!2072239 (not condSetEmpty!45134)) setNonEmpty!45134))

(assert (= setNonEmpty!45134 b!6608323))

(declare-fun m!7383272 () Bool)

(assert (=> setNonEmpty!45134 m!7383272))

(assert (=> d!2071815 d!2072239))

(assert (=> bs!1693606 d!2071777))

(declare-fun d!2072251 () Bool)

(assert (=> d!2072251 (= (isDefined!13069 lt!2415235) (not (isEmpty!37881 lt!2415235)))))

(declare-fun bs!1693846 () Bool)

(assert (= bs!1693846 d!2072251))

(declare-fun m!7383280 () Bool)

(assert (=> bs!1693846 m!7383280))

(assert (=> b!6607106 d!2072251))

(declare-fun c!1217863 () Bool)

(declare-fun c!1217861 () Bool)

(declare-fun call!578289 () List!65725)

(declare-fun c!1217862 () Bool)

(declare-fun call!578290 () (InoxSet Context!11718))

(declare-fun bm!578281 () Bool)

(assert (=> bm!578281 (= call!578290 (derivationStepZipperDown!1723 (ite c!1217862 (regOne!33463 (h!72049 (exprs!6359 lt!2415130))) (ite c!1217863 (regTwo!33462 (h!72049 (exprs!6359 lt!2415130))) (ite c!1217861 (regOne!33462 (h!72049 (exprs!6359 lt!2415130))) (reg!16804 (h!72049 (exprs!6359 lt!2415130)))))) (ite (or c!1217862 c!1217863) (Context!11719 (t!379377 (exprs!6359 lt!2415130))) (Context!11719 call!578289)) (h!72048 s!2326)))))

(declare-fun b!6608324 () Bool)

(declare-fun e!3998303 () (InoxSet Context!11718))

(declare-fun call!578288 () (InoxSet Context!11718))

(assert (=> b!6608324 (= e!3998303 call!578288)))

(declare-fun b!6608325 () Bool)

(declare-fun e!3998304 () (InoxSet Context!11718))

(declare-fun e!3998302 () (InoxSet Context!11718))

(assert (=> b!6608325 (= e!3998304 e!3998302)))

(assert (=> b!6608325 (= c!1217862 ((_ is Union!16475) (h!72049 (exprs!6359 lt!2415130))))))

(declare-fun d!2072253 () Bool)

(declare-fun c!1217860 () Bool)

(assert (=> d!2072253 (= c!1217860 (and ((_ is ElementMatch!16475) (h!72049 (exprs!6359 lt!2415130))) (= (c!1217326 (h!72049 (exprs!6359 lt!2415130))) (h!72048 s!2326))))))

(assert (=> d!2072253 (= (derivationStepZipperDown!1723 (h!72049 (exprs!6359 lt!2415130)) (Context!11719 (t!379377 (exprs!6359 lt!2415130))) (h!72048 s!2326)) e!3998304)))

(declare-fun b!6608326 () Bool)

(declare-fun e!3998299 () (InoxSet Context!11718))

(declare-fun e!3998300 () (InoxSet Context!11718))

(assert (=> b!6608326 (= e!3998299 e!3998300)))

(assert (=> b!6608326 (= c!1217861 ((_ is Concat!25320) (h!72049 (exprs!6359 lt!2415130))))))

(declare-fun b!6608327 () Bool)

(assert (=> b!6608327 (= e!3998304 (store ((as const (Array Context!11718 Bool)) false) (Context!11719 (t!379377 (exprs!6359 lt!2415130))) true))))

(declare-fun b!6608328 () Bool)

(declare-fun e!3998301 () Bool)

(assert (=> b!6608328 (= c!1217863 e!3998301)))

(declare-fun res!2709719 () Bool)

(assert (=> b!6608328 (=> (not res!2709719) (not e!3998301))))

(assert (=> b!6608328 (= res!2709719 ((_ is Concat!25320) (h!72049 (exprs!6359 lt!2415130))))))

(assert (=> b!6608328 (= e!3998302 e!3998299)))

(declare-fun bm!578282 () Bool)

(declare-fun call!578286 () (InoxSet Context!11718))

(assert (=> bm!578282 (= call!578286 call!578290)))

(declare-fun b!6608329 () Bool)

(declare-fun c!1217864 () Bool)

(assert (=> b!6608329 (= c!1217864 ((_ is Star!16475) (h!72049 (exprs!6359 lt!2415130))))))

(assert (=> b!6608329 (= e!3998300 e!3998303)))

(declare-fun bm!578283 () Bool)

(assert (=> bm!578283 (= call!578288 call!578286)))

(declare-fun call!578291 () List!65725)

(declare-fun bm!578284 () Bool)

(assert (=> bm!578284 (= call!578291 ($colon$colon!2316 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415130)))) (ite (or c!1217863 c!1217861) (regTwo!33462 (h!72049 (exprs!6359 lt!2415130))) (h!72049 (exprs!6359 lt!2415130)))))))

(declare-fun b!6608330 () Bool)

(assert (=> b!6608330 (= e!3998303 ((as const (Array Context!11718 Bool)) false))))

(declare-fun bm!578285 () Bool)

(declare-fun call!578287 () (InoxSet Context!11718))

(assert (=> bm!578285 (= call!578287 (derivationStepZipperDown!1723 (ite c!1217862 (regTwo!33463 (h!72049 (exprs!6359 lt!2415130))) (regOne!33462 (h!72049 (exprs!6359 lt!2415130)))) (ite c!1217862 (Context!11719 (t!379377 (exprs!6359 lt!2415130))) (Context!11719 call!578291)) (h!72048 s!2326)))))

(declare-fun b!6608331 () Bool)

(assert (=> b!6608331 (= e!3998302 ((_ map or) call!578290 call!578287))))

(declare-fun b!6608332 () Bool)

(assert (=> b!6608332 (= e!3998299 ((_ map or) call!578287 call!578286))))

(declare-fun bm!578286 () Bool)

(assert (=> bm!578286 (= call!578289 call!578291)))

(declare-fun b!6608333 () Bool)

(assert (=> b!6608333 (= e!3998301 (nullable!6468 (regOne!33462 (h!72049 (exprs!6359 lt!2415130)))))))

(declare-fun b!6608334 () Bool)

(assert (=> b!6608334 (= e!3998300 call!578288)))

(assert (= (and d!2072253 c!1217860) b!6608327))

(assert (= (and d!2072253 (not c!1217860)) b!6608325))

(assert (= (and b!6608325 c!1217862) b!6608331))

(assert (= (and b!6608325 (not c!1217862)) b!6608328))

(assert (= (and b!6608328 res!2709719) b!6608333))

(assert (= (and b!6608328 c!1217863) b!6608332))

(assert (= (and b!6608328 (not c!1217863)) b!6608326))

(assert (= (and b!6608326 c!1217861) b!6608334))

(assert (= (and b!6608326 (not c!1217861)) b!6608329))

(assert (= (and b!6608329 c!1217864) b!6608324))

(assert (= (and b!6608329 (not c!1217864)) b!6608330))

(assert (= (or b!6608334 b!6608324) bm!578286))

(assert (= (or b!6608334 b!6608324) bm!578283))

(assert (= (or b!6608332 bm!578286) bm!578284))

(assert (= (or b!6608332 bm!578283) bm!578282))

(assert (= (or b!6608331 b!6608332) bm!578285))

(assert (= (or b!6608331 bm!578282) bm!578281))

(declare-fun m!7383288 () Bool)

(assert (=> bm!578281 m!7383288))

(declare-fun m!7383290 () Bool)

(assert (=> b!6608333 m!7383290))

(declare-fun m!7383292 () Bool)

(assert (=> bm!578285 m!7383292))

(declare-fun m!7383294 () Bool)

(assert (=> b!6608327 m!7383294))

(declare-fun m!7383296 () Bool)

(assert (=> bm!578284 m!7383296))

(assert (=> bm!578027 d!2072253))

(declare-fun d!2072259 () Bool)

(assert (=> d!2072259 (= (nullable!6468 (reg!16804 r!7292)) (nullableFct!2393 (reg!16804 r!7292)))))

(declare-fun bs!1693853 () Bool)

(assert (= bs!1693853 d!2072259))

(declare-fun m!7383298 () Bool)

(assert (=> bs!1693853 m!7383298))

(assert (=> b!6607419 d!2072259))

(declare-fun d!2072263 () Bool)

(declare-fun c!1217865 () Bool)

(assert (=> d!2072263 (= c!1217865 (isEmpty!37882 (tail!12487 (t!379376 s!2326))))))

(declare-fun e!3998305 () Bool)

(assert (=> d!2072263 (= (matchZipper!2487 (derivationStepZipper!2441 ((_ map or) lt!2415129 lt!2415132) (head!13402 (t!379376 s!2326))) (tail!12487 (t!379376 s!2326))) e!3998305)))

(declare-fun b!6608335 () Bool)

(assert (=> b!6608335 (= e!3998305 (nullableZipper!2220 (derivationStepZipper!2441 ((_ map or) lt!2415129 lt!2415132) (head!13402 (t!379376 s!2326)))))))

(declare-fun b!6608336 () Bool)

(assert (=> b!6608336 (= e!3998305 (matchZipper!2487 (derivationStepZipper!2441 (derivationStepZipper!2441 ((_ map or) lt!2415129 lt!2415132) (head!13402 (t!379376 s!2326))) (head!13402 (tail!12487 (t!379376 s!2326)))) (tail!12487 (tail!12487 (t!379376 s!2326)))))))

(assert (= (and d!2072263 c!1217865) b!6608335))

(assert (= (and d!2072263 (not c!1217865)) b!6608336))

(assert (=> d!2072263 m!7382296))

(assert (=> d!2072263 m!7382826))

(assert (=> b!6608335 m!7382444))

(declare-fun m!7383300 () Bool)

(assert (=> b!6608335 m!7383300))

(assert (=> b!6608336 m!7382296))

(assert (=> b!6608336 m!7382830))

(assert (=> b!6608336 m!7382444))

(assert (=> b!6608336 m!7382830))

(declare-fun m!7383302 () Bool)

(assert (=> b!6608336 m!7383302))

(assert (=> b!6608336 m!7382296))

(assert (=> b!6608336 m!7382834))

(assert (=> b!6608336 m!7383302))

(assert (=> b!6608336 m!7382834))

(declare-fun m!7383304 () Bool)

(assert (=> b!6608336 m!7383304))

(assert (=> b!6607429 d!2072263))

(declare-fun bs!1693854 () Bool)

(declare-fun d!2072273 () Bool)

(assert (= bs!1693854 (and d!2072273 d!2072003)))

(declare-fun lambda!368744 () Int)

(assert (=> bs!1693854 (= lambda!368744 lambda!368705)))

(declare-fun bs!1693855 () Bool)

(assert (= bs!1693855 (and d!2072273 d!2071963)))

(assert (=> bs!1693855 (= (= (head!13402 (t!379376 s!2326)) (head!13402 s!2326)) (= lambda!368744 lambda!368702))))

(declare-fun bs!1693856 () Bool)

(assert (= bs!1693856 (and d!2072273 d!2072043)))

(assert (=> bs!1693856 (= lambda!368744 lambda!368708)))

(declare-fun bs!1693857 () Bool)

(assert (= bs!1693857 (and d!2072273 b!6606487)))

(assert (=> bs!1693857 (= (= (head!13402 (t!379376 s!2326)) (h!72048 s!2326)) (= lambda!368744 lambda!368578))))

(declare-fun bs!1693858 () Bool)

(assert (= bs!1693858 (and d!2072273 d!2071781)))

(assert (=> bs!1693858 (= (= (head!13402 (t!379376 s!2326)) (h!72048 s!2326)) (= lambda!368744 lambda!368657))))

(declare-fun bs!1693859 () Bool)

(assert (= bs!1693859 (and d!2072273 d!2071785)))

(assert (=> bs!1693859 (= (= (head!13402 (t!379376 s!2326)) (h!72048 s!2326)) (= lambda!368744 lambda!368661))))

(assert (=> d!2072273 true))

(assert (=> d!2072273 (= (derivationStepZipper!2441 ((_ map or) lt!2415129 lt!2415132) (head!13402 (t!379376 s!2326))) (flatMap!1980 ((_ map or) lt!2415129 lt!2415132) lambda!368744))))

(declare-fun bs!1693860 () Bool)

(assert (= bs!1693860 d!2072273))

(declare-fun m!7383306 () Bool)

(assert (=> bs!1693860 m!7383306))

(assert (=> b!6607429 d!2072273))

(assert (=> b!6607429 d!2072011))

(assert (=> b!6607429 d!2072013))

(declare-fun bs!1693861 () Bool)

(declare-fun d!2072275 () Bool)

(assert (= bs!1693861 (and d!2072275 d!2071985)))

(declare-fun lambda!368745 () Int)

(assert (=> bs!1693861 (= lambda!368745 lambda!368704)))

(declare-fun bs!1693862 () Bool)

(assert (= bs!1693862 (and d!2072275 d!2071783)))

(assert (=> bs!1693862 (= lambda!368745 lambda!368660)))

(declare-fun bs!1693863 () Bool)

(assert (= bs!1693863 (and d!2072275 d!2071903)))

(assert (=> bs!1693863 (= lambda!368745 lambda!368696)))

(declare-fun bs!1693864 () Bool)

(assert (= bs!1693864 (and d!2072275 d!2071851)))

(assert (=> bs!1693864 (= lambda!368745 lambda!368689)))

(declare-fun bs!1693865 () Bool)

(assert (= bs!1693865 (and d!2072275 d!2071951)))

(assert (=> bs!1693865 (= lambda!368745 lambda!368700)))

(declare-fun bs!1693866 () Bool)

(assert (= bs!1693866 (and d!2072275 d!2071909)))

(assert (=> bs!1693866 (= lambda!368745 lambda!368697)))

(declare-fun bs!1693867 () Bool)

(assert (= bs!1693867 (and d!2072275 d!2071653)))

(assert (=> bs!1693867 (= lambda!368745 lambda!368603)))

(declare-fun bs!1693869 () Bool)

(assert (= bs!1693869 (and d!2072275 d!2071661)))

(assert (=> bs!1693869 (= lambda!368745 lambda!368608)))

(declare-fun bs!1693871 () Bool)

(assert (= bs!1693871 (and d!2072275 d!2071953)))

(assert (=> bs!1693871 (= lambda!368745 lambda!368701)))

(declare-fun b!6608354 () Bool)

(declare-fun e!3998320 () Bool)

(declare-fun lt!2415355 () Regex!16475)

(assert (=> b!6608354 (= e!3998320 (isEmptyExpr!1853 lt!2415355))))

(declare-fun b!6608355 () Bool)

(declare-fun e!3998317 () Regex!16475)

(assert (=> b!6608355 (= e!3998317 EmptyExpr!16475)))

(declare-fun b!6608356 () Bool)

(declare-fun e!3998319 () Regex!16475)

(assert (=> b!6608356 (= e!3998319 e!3998317)))

(declare-fun c!1217875 () Bool)

(assert (=> b!6608356 (= c!1217875 ((_ is Cons!65601) (t!379377 (t!379377 (exprs!6359 (h!72050 zl!343))))))))

(declare-fun b!6608357 () Bool)

(declare-fun e!3998316 () Bool)

(assert (=> b!6608357 (= e!3998320 e!3998316)))

(declare-fun c!1217876 () Bool)

(assert (=> b!6608357 (= c!1217876 (isEmpty!37878 (tail!12486 (t!379377 (t!379377 (exprs!6359 (h!72050 zl!343)))))))))

(declare-fun b!6608358 () Bool)

(declare-fun e!3998318 () Bool)

(assert (=> b!6608358 (= e!3998318 (isEmpty!37878 (t!379377 (t!379377 (t!379377 (exprs!6359 (h!72050 zl!343)))))))))

(declare-fun b!6608359 () Bool)

(assert (=> b!6608359 (= e!3998316 (= lt!2415355 (head!13401 (t!379377 (t!379377 (exprs!6359 (h!72050 zl!343)))))))))

(declare-fun b!6608360 () Bool)

(declare-fun e!3998321 () Bool)

(assert (=> b!6608360 (= e!3998321 e!3998320)))

(declare-fun c!1217874 () Bool)

(assert (=> b!6608360 (= c!1217874 (isEmpty!37878 (t!379377 (t!379377 (exprs!6359 (h!72050 zl!343))))))))

(assert (=> d!2072275 e!3998321))

(declare-fun res!2709723 () Bool)

(assert (=> d!2072275 (=> (not res!2709723) (not e!3998321))))

(assert (=> d!2072275 (= res!2709723 (validRegex!8211 lt!2415355))))

(assert (=> d!2072275 (= lt!2415355 e!3998319)))

(declare-fun c!1217873 () Bool)

(assert (=> d!2072275 (= c!1217873 e!3998318)))

(declare-fun res!2709724 () Bool)

(assert (=> d!2072275 (=> (not res!2709724) (not e!3998318))))

(assert (=> d!2072275 (= res!2709724 ((_ is Cons!65601) (t!379377 (t!379377 (exprs!6359 (h!72050 zl!343))))))))

(assert (=> d!2072275 (forall!15673 (t!379377 (t!379377 (exprs!6359 (h!72050 zl!343)))) lambda!368745)))

(assert (=> d!2072275 (= (generalisedConcat!2072 (t!379377 (t!379377 (exprs!6359 (h!72050 zl!343))))) lt!2415355)))

(declare-fun b!6608361 () Bool)

(assert (=> b!6608361 (= e!3998317 (Concat!25320 (h!72049 (t!379377 (t!379377 (exprs!6359 (h!72050 zl!343))))) (generalisedConcat!2072 (t!379377 (t!379377 (t!379377 (exprs!6359 (h!72050 zl!343))))))))))

(declare-fun b!6608362 () Bool)

(assert (=> b!6608362 (= e!3998316 (isConcat!1376 lt!2415355))))

(declare-fun b!6608363 () Bool)

(assert (=> b!6608363 (= e!3998319 (h!72049 (t!379377 (t!379377 (exprs!6359 (h!72050 zl!343))))))))

(assert (= (and d!2072275 res!2709724) b!6608358))

(assert (= (and d!2072275 c!1217873) b!6608363))

(assert (= (and d!2072275 (not c!1217873)) b!6608356))

(assert (= (and b!6608356 c!1217875) b!6608361))

(assert (= (and b!6608356 (not c!1217875)) b!6608355))

(assert (= (and d!2072275 res!2709723) b!6608360))

(assert (= (and b!6608360 c!1217874) b!6608354))

(assert (= (and b!6608360 (not c!1217874)) b!6608357))

(assert (= (and b!6608357 c!1217876) b!6608359))

(assert (= (and b!6608357 (not c!1217876)) b!6608362))

(declare-fun m!7383320 () Bool)

(assert (=> b!6608358 m!7383320))

(declare-fun m!7383324 () Bool)

(assert (=> b!6608357 m!7383324))

(assert (=> b!6608357 m!7383324))

(declare-fun m!7383326 () Bool)

(assert (=> b!6608357 m!7383326))

(declare-fun m!7383328 () Bool)

(assert (=> d!2072275 m!7383328))

(declare-fun m!7383330 () Bool)

(assert (=> d!2072275 m!7383330))

(declare-fun m!7383332 () Bool)

(assert (=> b!6608359 m!7383332))

(declare-fun m!7383334 () Bool)

(assert (=> b!6608354 m!7383334))

(declare-fun m!7383336 () Bool)

(assert (=> b!6608362 m!7383336))

(assert (=> b!6608360 m!7382618))

(declare-fun m!7383338 () Bool)

(assert (=> b!6608361 m!7383338))

(assert (=> b!6607654 d!2072275))

(assert (=> d!2071845 d!2071847))

(assert (=> d!2071845 d!2071797))

(declare-fun d!2072283 () Bool)

(declare-fun e!3998332 () Bool)

(assert (=> d!2072283 (= (matchZipper!2487 ((_ map or) lt!2415129 lt!2415132) (t!379376 s!2326)) e!3998332)))

(declare-fun res!2709731 () Bool)

(assert (=> d!2072283 (=> res!2709731 e!3998332)))

(assert (=> d!2072283 (= res!2709731 (matchZipper!2487 lt!2415129 (t!379376 s!2326)))))

(assert (=> d!2072283 true))

(declare-fun _$48!2321 () Unit!159235)

(assert (=> d!2072283 (= (choose!49356 lt!2415129 lt!2415132 (t!379376 s!2326)) _$48!2321)))

(declare-fun b!6608378 () Bool)

(assert (=> b!6608378 (= e!3998332 (matchZipper!2487 lt!2415132 (t!379376 s!2326)))))

(assert (= (and d!2072283 (not res!2709731)) b!6608378))

(assert (=> d!2072283 m!7381592))

(assert (=> d!2072283 m!7381590))

(assert (=> b!6608378 m!7381586))

(assert (=> d!2071845 d!2072283))

(declare-fun call!578304 () List!65725)

(declare-fun c!1217883 () Bool)

(declare-fun c!1217882 () Bool)

(declare-fun call!578305 () (InoxSet Context!11718))

(declare-fun bm!578296 () Bool)

(declare-fun c!1217884 () Bool)

(assert (=> bm!578296 (= call!578305 (derivationStepZipperDown!1723 (ite c!1217883 (regOne!33463 (ite c!1217609 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))))) (ite c!1217884 (regTwo!33462 (ite c!1217609 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))))) (ite c!1217882 (regOne!33462 (ite c!1217609 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))))) (reg!16804 (ite c!1217609 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343))))))))) (ite (or c!1217883 c!1217884) (ite c!1217609 lt!2415117 (Context!11719 call!578086)) (Context!11719 call!578304)) (h!72048 s!2326)))))

(declare-fun b!6608379 () Bool)

(declare-fun e!3998337 () (InoxSet Context!11718))

(declare-fun call!578303 () (InoxSet Context!11718))

(assert (=> b!6608379 (= e!3998337 call!578303)))

(declare-fun b!6608380 () Bool)

(declare-fun e!3998338 () (InoxSet Context!11718))

(declare-fun e!3998336 () (InoxSet Context!11718))

(assert (=> b!6608380 (= e!3998338 e!3998336)))

(assert (=> b!6608380 (= c!1217883 ((_ is Union!16475) (ite c!1217609 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))))))))

(declare-fun c!1217881 () Bool)

(declare-fun d!2072287 () Bool)

(assert (=> d!2072287 (= c!1217881 (and ((_ is ElementMatch!16475) (ite c!1217609 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))))) (= (c!1217326 (ite c!1217609 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))))) (h!72048 s!2326))))))

(assert (=> d!2072287 (= (derivationStepZipperDown!1723 (ite c!1217609 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343))))) (ite c!1217609 lt!2415117 (Context!11719 call!578086)) (h!72048 s!2326)) e!3998338)))

(declare-fun b!6608381 () Bool)

(declare-fun e!3998333 () (InoxSet Context!11718))

(declare-fun e!3998334 () (InoxSet Context!11718))

(assert (=> b!6608381 (= e!3998333 e!3998334)))

(assert (=> b!6608381 (= c!1217882 ((_ is Concat!25320) (ite c!1217609 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))))))))

(declare-fun b!6608382 () Bool)

(assert (=> b!6608382 (= e!3998338 (store ((as const (Array Context!11718 Bool)) false) (ite c!1217609 lt!2415117 (Context!11719 call!578086)) true))))

(declare-fun b!6608383 () Bool)

(declare-fun e!3998335 () Bool)

(assert (=> b!6608383 (= c!1217884 e!3998335)))

(declare-fun res!2709732 () Bool)

(assert (=> b!6608383 (=> (not res!2709732) (not e!3998335))))

(assert (=> b!6608383 (= res!2709732 ((_ is Concat!25320) (ite c!1217609 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))))))))

(assert (=> b!6608383 (= e!3998336 e!3998333)))

(declare-fun bm!578297 () Bool)

(declare-fun call!578301 () (InoxSet Context!11718))

(assert (=> bm!578297 (= call!578301 call!578305)))

(declare-fun b!6608384 () Bool)

(declare-fun c!1217885 () Bool)

(assert (=> b!6608384 (= c!1217885 ((_ is Star!16475) (ite c!1217609 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))))))))

(assert (=> b!6608384 (= e!3998334 e!3998337)))

(declare-fun bm!578298 () Bool)

(assert (=> bm!578298 (= call!578303 call!578301)))

(declare-fun call!578306 () List!65725)

(declare-fun bm!578299 () Bool)

(assert (=> bm!578299 (= call!578306 ($colon$colon!2316 (exprs!6359 (ite c!1217609 lt!2415117 (Context!11719 call!578086))) (ite (or c!1217884 c!1217882) (regTwo!33462 (ite c!1217609 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))))) (ite c!1217609 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343))))))))))

(declare-fun b!6608385 () Bool)

(assert (=> b!6608385 (= e!3998337 ((as const (Array Context!11718 Bool)) false))))

(declare-fun bm!578300 () Bool)

(declare-fun call!578302 () (InoxSet Context!11718))

(assert (=> bm!578300 (= call!578302 (derivationStepZipperDown!1723 (ite c!1217883 (regTwo!33463 (ite c!1217609 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))))) (regOne!33462 (ite c!1217609 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343))))))) (ite c!1217883 (ite c!1217609 lt!2415117 (Context!11719 call!578086)) (Context!11719 call!578306)) (h!72048 s!2326)))))

(declare-fun b!6608386 () Bool)

(assert (=> b!6608386 (= e!3998336 ((_ map or) call!578305 call!578302))))

(declare-fun b!6608387 () Bool)

(assert (=> b!6608387 (= e!3998333 ((_ map or) call!578302 call!578301))))

(declare-fun bm!578301 () Bool)

(assert (=> bm!578301 (= call!578304 call!578306)))

(declare-fun b!6608388 () Bool)

(assert (=> b!6608388 (= e!3998335 (nullable!6468 (regOne!33462 (ite c!1217609 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343))))))))))

(declare-fun b!6608389 () Bool)

(assert (=> b!6608389 (= e!3998334 call!578303)))

(assert (= (and d!2072287 c!1217881) b!6608382))

(assert (= (and d!2072287 (not c!1217881)) b!6608380))

(assert (= (and b!6608380 c!1217883) b!6608386))

(assert (= (and b!6608380 (not c!1217883)) b!6608383))

(assert (= (and b!6608383 res!2709732) b!6608388))

(assert (= (and b!6608383 c!1217884) b!6608387))

(assert (= (and b!6608383 (not c!1217884)) b!6608381))

(assert (= (and b!6608381 c!1217882) b!6608389))

(assert (= (and b!6608381 (not c!1217882)) b!6608384))

(assert (= (and b!6608384 c!1217885) b!6608379))

(assert (= (and b!6608384 (not c!1217885)) b!6608385))

(assert (= (or b!6608389 b!6608379) bm!578301))

(assert (= (or b!6608389 b!6608379) bm!578298))

(assert (= (or b!6608387 bm!578301) bm!578299))

(assert (= (or b!6608387 bm!578298) bm!578297))

(assert (= (or b!6608386 b!6608387) bm!578300))

(assert (= (or b!6608386 bm!578297) bm!578296))

(declare-fun m!7383340 () Bool)

(assert (=> bm!578296 m!7383340))

(declare-fun m!7383342 () Bool)

(assert (=> b!6608388 m!7383342))

(declare-fun m!7383344 () Bool)

(assert (=> bm!578300 m!7383344))

(declare-fun m!7383346 () Bool)

(assert (=> b!6608382 m!7383346))

(declare-fun m!7383348 () Bool)

(assert (=> bm!578299 m!7383348))

(assert (=> bm!578080 d!2072287))

(assert (=> d!2071895 d!2072017))

(assert (=> d!2071895 d!2071843))

(assert (=> d!2071865 d!2071875))

(declare-fun d!2072289 () Bool)

(assert (=> d!2072289 (= (flatMap!1980 z!1189 lambda!368578) (dynLambda!26122 lambda!368578 (h!72050 zl!343)))))

(assert (=> d!2072289 true))

(declare-fun _$13!3874 () Unit!159235)

(assert (=> d!2072289 (= (choose!49351 z!1189 (h!72050 zl!343) lambda!368578) _$13!3874)))

(declare-fun b_lambda!250039 () Bool)

(assert (=> (not b_lambda!250039) (not d!2072289)))

(declare-fun bs!1693900 () Bool)

(assert (= bs!1693900 d!2072289))

(assert (=> bs!1693900 m!7381670))

(assert (=> bs!1693900 m!7382492))

(assert (=> d!2071865 d!2072289))

(assert (=> d!2071791 d!2071787))

(declare-fun d!2072291 () Bool)

(assert (=> d!2072291 (= (flatMap!1980 lt!2415147 lambda!368578) (dynLambda!26122 lambda!368578 lt!2415117))))

(assert (=> d!2072291 true))

(declare-fun _$13!3875 () Unit!159235)

(assert (=> d!2072291 (= (choose!49351 lt!2415147 lt!2415117 lambda!368578) _$13!3875)))

(declare-fun b_lambda!250041 () Bool)

(assert (=> (not b_lambda!250041) (not d!2072291)))

(declare-fun bs!1693903 () Bool)

(assert (= bs!1693903 d!2072291))

(assert (=> bs!1693903 m!7381714))

(assert (=> bs!1693903 m!7382274))

(assert (=> d!2071791 d!2072291))

(declare-fun d!2072293 () Bool)

(assert (not d!2072293))

(assert (=> b!6607324 d!2072293))

(assert (=> b!6607324 d!2072029))

(declare-fun b!6608390 () Bool)

(declare-fun e!3998346 () Bool)

(declare-fun e!3998343 () Bool)

(assert (=> b!6608390 (= e!3998346 e!3998343)))

(declare-fun c!1217891 () Bool)

(assert (=> b!6608390 (= c!1217891 ((_ is Union!16475) (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292)))))))

(declare-fun b!6608391 () Bool)

(declare-fun res!2709735 () Bool)

(declare-fun e!3998340 () Bool)

(assert (=> b!6608391 (=> (not res!2709735) (not e!3998340))))

(declare-fun lt!2415356 () Int)

(declare-fun call!578310 () Int)

(assert (=> b!6608391 (= res!2709735 (> lt!2415356 call!578310))))

(declare-fun e!3998348 () Bool)

(assert (=> b!6608391 (= e!3998348 e!3998340)))

(declare-fun b!6608392 () Bool)

(declare-fun e!3998341 () Int)

(declare-fun call!578307 () Int)

(assert (=> b!6608392 (= e!3998341 (+ 1 call!578307))))

(declare-fun b!6608393 () Bool)

(declare-fun e!3998344 () Int)

(declare-fun call!578309 () Int)

(assert (=> b!6608393 (= e!3998344 (+ 1 call!578309))))

(declare-fun b!6608394 () Bool)

(declare-fun e!3998345 () Int)

(assert (=> b!6608394 (= e!3998345 1)))

(declare-fun b!6608395 () Bool)

(declare-fun e!3998347 () Bool)

(assert (=> b!6608395 (= e!3998343 e!3998347)))

(declare-fun res!2709733 () Bool)

(declare-fun call!578313 () Int)

(assert (=> b!6608395 (= res!2709733 (> lt!2415356 call!578313))))

(assert (=> b!6608395 (=> (not res!2709733) (not e!3998347))))

(declare-fun b!6608396 () Bool)

(assert (=> b!6608396 (= e!3998344 1)))

(declare-fun b!6608397 () Bool)

(declare-fun call!578312 () Int)

(assert (=> b!6608397 (= e!3998347 (> lt!2415356 call!578312))))

(declare-fun b!6608398 () Bool)

(declare-fun e!3998339 () Int)

(assert (=> b!6608398 (= e!3998339 (+ 1 call!578309))))

(declare-fun b!6608399 () Bool)

(declare-fun c!1217890 () Bool)

(assert (=> b!6608399 (= c!1217890 ((_ is Union!16475) (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292)))))))

(assert (=> b!6608399 (= e!3998341 e!3998339)))

(declare-fun b!6608400 () Bool)

(assert (=> b!6608400 (= e!3998339 e!3998344)))

(declare-fun c!1217886 () Bool)

(assert (=> b!6608400 (= c!1217886 ((_ is Concat!25320) (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292)))))))

(declare-fun bm!578302 () Bool)

(declare-fun c!1217887 () Bool)

(assert (=> bm!578302 (= call!578312 (regexDepth!372 (ite c!1217891 (regTwo!33463 (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292)))) (ite c!1217887 (regOne!33462 (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292)))) (reg!16804 (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292))))))))))

(declare-fun b!6608401 () Bool)

(declare-fun e!3998342 () Bool)

(assert (=> b!6608401 (= e!3998342 (> lt!2415356 call!578310))))

(declare-fun bm!578303 () Bool)

(assert (=> bm!578303 (= call!578310 call!578312)))

(declare-fun b!6608402 () Bool)

(assert (=> b!6608402 (= e!3998343 e!3998348)))

(assert (=> b!6608402 (= c!1217887 ((_ is Concat!25320) (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292)))))))

(declare-fun d!2072295 () Bool)

(assert (=> d!2072295 e!3998346))

(declare-fun res!2709734 () Bool)

(assert (=> d!2072295 (=> (not res!2709734) (not e!3998346))))

(assert (=> d!2072295 (= res!2709734 (> lt!2415356 0))))

(assert (=> d!2072295 (= lt!2415356 e!3998345)))

(declare-fun c!1217889 () Bool)

(assert (=> d!2072295 (= c!1217889 ((_ is ElementMatch!16475) (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292)))))))

(assert (=> d!2072295 (= (regexDepth!372 (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292)))) lt!2415356)))

(declare-fun c!1217892 () Bool)

(declare-fun bm!578304 () Bool)

(assert (=> bm!578304 (= call!578307 (regexDepth!372 (ite c!1217892 (reg!16804 (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292)))) (ite c!1217890 (regTwo!33463 (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292)))) (regOne!33462 (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292))))))))))

(declare-fun b!6608403 () Bool)

(assert (=> b!6608403 (= e!3998345 e!3998341)))

(assert (=> b!6608403 (= c!1217892 ((_ is Star!16475) (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292)))))))

(declare-fun bm!578305 () Bool)

(declare-fun call!578308 () Int)

(assert (=> bm!578305 (= call!578308 call!578307)))

(declare-fun b!6608404 () Bool)

(declare-fun c!1217888 () Bool)

(assert (=> b!6608404 (= c!1217888 ((_ is Star!16475) (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292)))))))

(assert (=> b!6608404 (= e!3998348 e!3998342)))

(declare-fun b!6608405 () Bool)

(assert (=> b!6608405 (= e!3998340 (> lt!2415356 call!578313))))

(declare-fun bm!578306 () Bool)

(declare-fun call!578311 () Int)

(assert (=> bm!578306 (= call!578311 (regexDepth!372 (ite c!1217890 (regOne!33463 (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292)))) (regTwo!33462 (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292)))))))))

(declare-fun bm!578307 () Bool)

(assert (=> bm!578307 (= call!578313 (regexDepth!372 (ite c!1217891 (regOne!33463 (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292)))) (regTwo!33462 (ite c!1217664 (regTwo!33463 r!7292) (ite c!1217660 (regOne!33462 r!7292) (reg!16804 r!7292)))))))))

(declare-fun bm!578308 () Bool)

(assert (=> bm!578308 (= call!578309 (maxBigInt!0 (ite c!1217890 call!578311 call!578308) (ite c!1217890 call!578308 call!578311)))))

(declare-fun b!6608406 () Bool)

(assert (=> b!6608406 (= e!3998342 (= lt!2415356 1))))

(assert (= (and d!2072295 c!1217889) b!6608394))

(assert (= (and d!2072295 (not c!1217889)) b!6608403))

(assert (= (and b!6608403 c!1217892) b!6608392))

(assert (= (and b!6608403 (not c!1217892)) b!6608399))

(assert (= (and b!6608399 c!1217890) b!6608398))

(assert (= (and b!6608399 (not c!1217890)) b!6608400))

(assert (= (and b!6608400 c!1217886) b!6608393))

(assert (= (and b!6608400 (not c!1217886)) b!6608396))

(assert (= (or b!6608398 b!6608393) bm!578305))

(assert (= (or b!6608398 b!6608393) bm!578306))

(assert (= (or b!6608398 b!6608393) bm!578308))

(assert (= (or b!6608392 bm!578305) bm!578304))

(assert (= (and d!2072295 res!2709734) b!6608390))

(assert (= (and b!6608390 c!1217891) b!6608395))

(assert (= (and b!6608390 (not c!1217891)) b!6608402))

(assert (= (and b!6608395 res!2709733) b!6608397))

(assert (= (and b!6608402 c!1217887) b!6608391))

(assert (= (and b!6608402 (not c!1217887)) b!6608404))

(assert (= (and b!6608391 res!2709735) b!6608405))

(assert (= (and b!6608404 c!1217888) b!6608401))

(assert (= (and b!6608404 (not c!1217888)) b!6608406))

(assert (= (or b!6608391 b!6608401) bm!578303))

(assert (= (or b!6608397 bm!578303) bm!578302))

(assert (= (or b!6608395 b!6608405) bm!578307))

(declare-fun m!7383350 () Bool)

(assert (=> bm!578302 m!7383350))

(declare-fun m!7383352 () Bool)

(assert (=> bm!578307 m!7383352))

(declare-fun m!7383354 () Bool)

(assert (=> bm!578304 m!7383354))

(declare-fun m!7383358 () Bool)

(assert (=> bm!578308 m!7383358))

(declare-fun m!7383362 () Bool)

(assert (=> bm!578306 m!7383362))

(assert (=> bm!578103 d!2072295))

(declare-fun bs!1693921 () Bool)

(declare-fun b!6608417 () Bool)

(assert (= bs!1693921 (and b!6608417 d!2072109)))

(declare-fun lambda!368750 () Int)

(assert (=> bs!1693921 (not (= lambda!368750 lambda!368721))))

(declare-fun bs!1693922 () Bool)

(assert (= bs!1693922 (and b!6608417 d!2071761)))

(assert (=> bs!1693922 (not (= lambda!368750 lambda!368653))))

(declare-fun bs!1693923 () Bool)

(assert (= bs!1693923 (and b!6608417 b!6608069)))

(assert (=> bs!1693923 (= (and (= (reg!16804 (regTwo!33463 lt!2415143)) (reg!16804 (regTwo!33463 r!7292))) (= (regTwo!33463 lt!2415143) (regTwo!33463 r!7292))) (= lambda!368750 lambda!368726))))

(declare-fun bs!1693924 () Bool)

(assert (= bs!1693924 (and b!6608417 b!6606503)))

(assert (=> bs!1693924 (not (= lambda!368750 lambda!368580))))

(assert (=> bs!1693924 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regTwo!33463 lt!2415143)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33463 lt!2415143) lt!2415134)) (= lambda!368750 lambda!368581))))

(declare-fun bs!1693925 () Bool)

(assert (= bs!1693925 (and b!6608417 b!6607530)))

(assert (=> bs!1693925 (= (and (= (reg!16804 (regTwo!33463 lt!2415143)) (reg!16804 r!7292)) (= (regTwo!33463 lt!2415143) r!7292)) (= lambda!368750 lambda!368692))))

(declare-fun bs!1693926 () Bool)

(assert (= bs!1693926 (and b!6608417 d!2071833)))

(assert (=> bs!1693926 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regTwo!33463 lt!2415143)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33463 lt!2415143) (Star!16475 (reg!16804 (regOne!33462 r!7292))))) (= lambda!368750 lambda!368687))))

(declare-fun bs!1693927 () Bool)

(assert (= bs!1693927 (and b!6608417 b!6608061)))

(assert (=> bs!1693927 (not (= lambda!368750 lambda!368727))))

(declare-fun bs!1693928 () Bool)

(assert (= bs!1693928 (and b!6608417 d!2071823)))

(assert (=> bs!1693928 (not (= lambda!368750 lambda!368675))))

(declare-fun bs!1693929 () Bool)

(assert (= bs!1693929 (and b!6608417 b!6607454)))

(assert (=> bs!1693929 (= (and (= (reg!16804 (regTwo!33463 lt!2415143)) (reg!16804 lt!2415143)) (= (regTwo!33463 lt!2415143) lt!2415143)) (= lambda!368750 lambda!368690))))

(assert (=> bs!1693922 (not (= lambda!368750 lambda!368654))))

(declare-fun bs!1693930 () Bool)

(assert (= bs!1693930 (and b!6608417 b!6607397)))

(assert (=> bs!1693930 (not (= lambda!368750 lambda!368681))))

(declare-fun bs!1693931 () Bool)

(assert (= bs!1693931 (and b!6608417 b!6606515)))

(assert (=> bs!1693931 (not (= lambda!368750 lambda!368576))))

(declare-fun bs!1693932 () Bool)

(assert (= bs!1693932 (and b!6608417 d!2072203)))

(assert (=> bs!1693932 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regTwo!33463 lt!2415143)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33463 lt!2415143) (Star!16475 (reg!16804 (regOne!33462 r!7292))))) (= lambda!368750 lambda!368742))))

(assert (=> bs!1693924 (not (= lambda!368750 lambda!368579))))

(assert (=> bs!1693931 (not (= lambda!368750 lambda!368577))))

(assert (=> bs!1693928 (not (= lambda!368750 lambda!368674))))

(declare-fun bs!1693933 () Bool)

(assert (= bs!1693933 (and b!6608417 d!2071755)))

(assert (=> bs!1693933 (not (= lambda!368750 lambda!368648))))

(assert (=> bs!1693926 (not (= lambda!368750 lambda!368686))))

(declare-fun bs!1693934 () Bool)

(assert (= bs!1693934 (and b!6608417 b!6607405)))

(assert (=> bs!1693934 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regTwo!33463 lt!2415143)) (reg!16804 lt!2415134)) (= (regTwo!33463 lt!2415143) lt!2415134)) (= lambda!368750 lambda!368680))))

(declare-fun bs!1693935 () Bool)

(assert (= bs!1693935 (and b!6608417 b!6607446)))

(assert (=> bs!1693935 (not (= lambda!368750 lambda!368691))))

(declare-fun bs!1693936 () Bool)

(assert (= bs!1693936 (and b!6608417 b!6607522)))

(assert (=> bs!1693936 (not (= lambda!368750 lambda!368693))))

(declare-fun bs!1693937 () Bool)

(assert (= bs!1693937 (and b!6608417 d!2071841)))

(assert (=> bs!1693937 (not (= lambda!368750 lambda!368688))))

(assert (=> bs!1693932 (not (= lambda!368750 lambda!368741))))

(assert (=> b!6608417 true))

(assert (=> b!6608417 true))

(declare-fun bs!1693938 () Bool)

(declare-fun b!6608409 () Bool)

(assert (= bs!1693938 (and b!6608409 d!2072109)))

(declare-fun lambda!368751 () Int)

(assert (=> bs!1693938 (not (= lambda!368751 lambda!368721))))

(declare-fun bs!1693939 () Bool)

(assert (= bs!1693939 (and b!6608409 d!2071761)))

(assert (=> bs!1693939 (not (= lambda!368751 lambda!368653))))

(declare-fun bs!1693940 () Bool)

(assert (= bs!1693940 (and b!6608409 b!6608069)))

(assert (=> bs!1693940 (not (= lambda!368751 lambda!368726))))

(declare-fun bs!1693941 () Bool)

(assert (= bs!1693941 (and b!6608409 b!6606503)))

(assert (=> bs!1693941 (= (and (= s!2326 Nil!65600) (= (regOne!33462 (regTwo!33463 lt!2415143)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 (regTwo!33463 lt!2415143)) lt!2415134)) (= lambda!368751 lambda!368580))))

(assert (=> bs!1693941 (not (= lambda!368751 lambda!368581))))

(declare-fun bs!1693942 () Bool)

(assert (= bs!1693942 (and b!6608409 b!6607530)))

(assert (=> bs!1693942 (not (= lambda!368751 lambda!368692))))

(declare-fun bs!1693943 () Bool)

(assert (= bs!1693943 (and b!6608409 d!2071833)))

(assert (=> bs!1693943 (not (= lambda!368751 lambda!368687))))

(declare-fun bs!1693944 () Bool)

(assert (= bs!1693944 (and b!6608409 b!6608417)))

(assert (=> bs!1693944 (not (= lambda!368751 lambda!368750))))

(declare-fun bs!1693945 () Bool)

(assert (= bs!1693945 (and b!6608409 b!6608061)))

(assert (=> bs!1693945 (= (and (= (regOne!33462 (regTwo!33463 lt!2415143)) (regOne!33462 (regTwo!33463 r!7292))) (= (regTwo!33462 (regTwo!33463 lt!2415143)) (regTwo!33462 (regTwo!33463 r!7292)))) (= lambda!368751 lambda!368727))))

(declare-fun bs!1693946 () Bool)

(assert (= bs!1693946 (and b!6608409 d!2071823)))

(assert (=> bs!1693946 (= (and (= s!2326 Nil!65600) (= (regOne!33462 (regTwo!33463 lt!2415143)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 (regTwo!33463 lt!2415143)) lt!2415134)) (= lambda!368751 lambda!368675))))

(declare-fun bs!1693947 () Bool)

(assert (= bs!1693947 (and b!6608409 b!6607454)))

(assert (=> bs!1693947 (not (= lambda!368751 lambda!368690))))

(assert (=> bs!1693939 (= (and (= (regOne!33462 (regTwo!33463 lt!2415143)) (regOne!33462 r!7292)) (= (regTwo!33462 (regTwo!33463 lt!2415143)) (regTwo!33462 r!7292))) (= lambda!368751 lambda!368654))))

(declare-fun bs!1693948 () Bool)

(assert (= bs!1693948 (and b!6608409 b!6607397)))

(assert (=> bs!1693948 (= (and (= s!2326 Nil!65600) (= (regOne!33462 (regTwo!33463 lt!2415143)) (regOne!33462 lt!2415134)) (= (regTwo!33462 (regTwo!33463 lt!2415143)) (regTwo!33462 lt!2415134))) (= lambda!368751 lambda!368681))))

(declare-fun bs!1693949 () Bool)

(assert (= bs!1693949 (and b!6608409 b!6606515)))

(assert (=> bs!1693949 (not (= lambda!368751 lambda!368576))))

(declare-fun bs!1693950 () Bool)

(assert (= bs!1693950 (and b!6608409 d!2072203)))

(assert (=> bs!1693950 (not (= lambda!368751 lambda!368742))))

(assert (=> bs!1693941 (not (= lambda!368751 lambda!368579))))

(assert (=> bs!1693949 (= (and (= (regOne!33462 (regTwo!33463 lt!2415143)) (regOne!33462 r!7292)) (= (regTwo!33462 (regTwo!33463 lt!2415143)) (regTwo!33462 r!7292))) (= lambda!368751 lambda!368577))))

(assert (=> bs!1693946 (not (= lambda!368751 lambda!368674))))

(declare-fun bs!1693952 () Bool)

(assert (= bs!1693952 (and b!6608409 d!2071755)))

(assert (=> bs!1693952 (not (= lambda!368751 lambda!368648))))

(assert (=> bs!1693943 (not (= lambda!368751 lambda!368686))))

(declare-fun bs!1693953 () Bool)

(assert (= bs!1693953 (and b!6608409 b!6607405)))

(assert (=> bs!1693953 (not (= lambda!368751 lambda!368680))))

(declare-fun bs!1693954 () Bool)

(assert (= bs!1693954 (and b!6608409 b!6607446)))

(assert (=> bs!1693954 (= (and (= (regOne!33462 (regTwo!33463 lt!2415143)) (regOne!33462 lt!2415143)) (= (regTwo!33462 (regTwo!33463 lt!2415143)) (regTwo!33462 lt!2415143))) (= lambda!368751 lambda!368691))))

(declare-fun bs!1693955 () Bool)

(assert (= bs!1693955 (and b!6608409 b!6607522)))

(assert (=> bs!1693955 (= (and (= (regOne!33462 (regTwo!33463 lt!2415143)) (regOne!33462 r!7292)) (= (regTwo!33462 (regTwo!33463 lt!2415143)) (regTwo!33462 r!7292))) (= lambda!368751 lambda!368693))))

(declare-fun bs!1693956 () Bool)

(assert (= bs!1693956 (and b!6608409 d!2071841)))

(assert (=> bs!1693956 (not (= lambda!368751 lambda!368688))))

(assert (=> bs!1693950 (not (= lambda!368751 lambda!368741))))

(assert (=> b!6608409 true))

(assert (=> b!6608409 true))

(declare-fun b!6608407 () Bool)

(declare-fun e!3998355 () Bool)

(declare-fun e!3998351 () Bool)

(assert (=> b!6608407 (= e!3998355 e!3998351)))

(declare-fun c!1217893 () Bool)

(assert (=> b!6608407 (= c!1217893 ((_ is Star!16475) (regTwo!33463 lt!2415143)))))

(declare-fun b!6608408 () Bool)

(declare-fun e!3998349 () Bool)

(declare-fun call!578315 () Bool)

(assert (=> b!6608408 (= e!3998349 call!578315)))

(declare-fun call!578314 () Bool)

(assert (=> b!6608409 (= e!3998351 call!578314)))

(declare-fun b!6608410 () Bool)

(declare-fun c!1217895 () Bool)

(assert (=> b!6608410 (= c!1217895 ((_ is ElementMatch!16475) (regTwo!33463 lt!2415143)))))

(declare-fun e!3998353 () Bool)

(declare-fun e!3998350 () Bool)

(assert (=> b!6608410 (= e!3998353 e!3998350)))

(declare-fun b!6608412 () Bool)

(declare-fun res!2709736 () Bool)

(declare-fun e!3998352 () Bool)

(assert (=> b!6608412 (=> res!2709736 e!3998352)))

(assert (=> b!6608412 (= res!2709736 call!578315)))

(assert (=> b!6608412 (= e!3998351 e!3998352)))

(declare-fun b!6608413 () Bool)

(assert (=> b!6608413 (= e!3998350 (= s!2326 (Cons!65600 (c!1217326 (regTwo!33463 lt!2415143)) Nil!65600)))))

(declare-fun bm!578309 () Bool)

(assert (=> bm!578309 (= call!578315 (isEmpty!37882 s!2326))))

(declare-fun b!6608414 () Bool)

(declare-fun c!1217896 () Bool)

(assert (=> b!6608414 (= c!1217896 ((_ is Union!16475) (regTwo!33463 lt!2415143)))))

(assert (=> b!6608414 (= e!3998350 e!3998355)))

(declare-fun b!6608415 () Bool)

(declare-fun e!3998354 () Bool)

(assert (=> b!6608415 (= e!3998354 (matchRSpec!3576 (regTwo!33463 (regTwo!33463 lt!2415143)) s!2326))))

(declare-fun bm!578310 () Bool)

(assert (=> bm!578310 (= call!578314 (Exists!3545 (ite c!1217893 lambda!368750 lambda!368751)))))

(declare-fun b!6608416 () Bool)

(assert (=> b!6608416 (= e!3998349 e!3998353)))

(declare-fun res!2709737 () Bool)

(assert (=> b!6608416 (= res!2709737 (not ((_ is EmptyLang!16475) (regTwo!33463 lt!2415143))))))

(assert (=> b!6608416 (=> (not res!2709737) (not e!3998353))))

(assert (=> b!6608417 (= e!3998352 call!578314)))

(declare-fun b!6608411 () Bool)

(assert (=> b!6608411 (= e!3998355 e!3998354)))

(declare-fun res!2709738 () Bool)

(assert (=> b!6608411 (= res!2709738 (matchRSpec!3576 (regOne!33463 (regTwo!33463 lt!2415143)) s!2326))))

(assert (=> b!6608411 (=> res!2709738 e!3998354)))

(declare-fun d!2072297 () Bool)

(declare-fun c!1217894 () Bool)

(assert (=> d!2072297 (= c!1217894 ((_ is EmptyExpr!16475) (regTwo!33463 lt!2415143)))))

(assert (=> d!2072297 (= (matchRSpec!3576 (regTwo!33463 lt!2415143) s!2326) e!3998349)))

(assert (= (and d!2072297 c!1217894) b!6608408))

(assert (= (and d!2072297 (not c!1217894)) b!6608416))

(assert (= (and b!6608416 res!2709737) b!6608410))

(assert (= (and b!6608410 c!1217895) b!6608413))

(assert (= (and b!6608410 (not c!1217895)) b!6608414))

(assert (= (and b!6608414 c!1217896) b!6608411))

(assert (= (and b!6608414 (not c!1217896)) b!6608407))

(assert (= (and b!6608411 (not res!2709738)) b!6608415))

(assert (= (and b!6608407 c!1217893) b!6608412))

(assert (= (and b!6608407 (not c!1217893)) b!6608409))

(assert (= (and b!6608412 (not res!2709736)) b!6608417))

(assert (= (or b!6608417 b!6608409) bm!578310))

(assert (= (or b!6608408 b!6608412) bm!578309))

(assert (=> bm!578309 m!7382460))

(declare-fun m!7383396 () Bool)

(assert (=> b!6608415 m!7383396))

(declare-fun m!7383398 () Bool)

(assert (=> bm!578310 m!7383398))

(declare-fun m!7383400 () Bool)

(assert (=> b!6608411 m!7383400))

(assert (=> b!6607452 d!2072297))

(declare-fun d!2072313 () Bool)

(assert (=> d!2072313 true))

(declare-fun setRes!45136 () Bool)

(assert (=> d!2072313 setRes!45136))

(declare-fun condSetEmpty!45136 () Bool)

(declare-fun res!2709756 () (InoxSet Context!11718))

(assert (=> d!2072313 (= condSetEmpty!45136 (= res!2709756 ((as const (Array Context!11718 Bool)) false)))))

(assert (=> d!2072313 (= (choose!49350 lt!2415122 lambda!368578) res!2709756)))

(declare-fun setIsEmpty!45136 () Bool)

(assert (=> setIsEmpty!45136 setRes!45136))

(declare-fun e!3998379 () Bool)

(declare-fun tp!1820628 () Bool)

(declare-fun setElem!45136 () Context!11718)

(declare-fun setNonEmpty!45136 () Bool)

(assert (=> setNonEmpty!45136 (= setRes!45136 (and tp!1820628 (inv!84434 setElem!45136) e!3998379))))

(declare-fun setRest!45136 () (InoxSet Context!11718))

(assert (=> setNonEmpty!45136 (= res!2709756 ((_ map or) (store ((as const (Array Context!11718 Bool)) false) setElem!45136 true) setRest!45136))))

(declare-fun b!6608453 () Bool)

(declare-fun tp!1820629 () Bool)

(assert (=> b!6608453 (= e!3998379 tp!1820629)))

(assert (= (and d!2072313 condSetEmpty!45136) setIsEmpty!45136))

(assert (= (and d!2072313 (not condSetEmpty!45136)) setNonEmpty!45136))

(assert (= setNonEmpty!45136 b!6608453))

(declare-fun m!7383408 () Bool)

(assert (=> setNonEmpty!45136 m!7383408))

(assert (=> d!2071807 d!2072313))

(declare-fun d!2072315 () Bool)

(assert (=> d!2072315 true))

(declare-fun setRes!45137 () Bool)

(assert (=> d!2072315 setRes!45137))

(declare-fun condSetEmpty!45137 () Bool)

(declare-fun res!2709757 () (InoxSet Context!11718))

(assert (=> d!2072315 (= condSetEmpty!45137 (= res!2709757 ((as const (Array Context!11718 Bool)) false)))))

(assert (=> d!2072315 (= (choose!49350 lt!2415126 lambda!368578) res!2709757)))

(declare-fun setIsEmpty!45137 () Bool)

(assert (=> setIsEmpty!45137 setRes!45137))

(declare-fun setElem!45137 () Context!11718)

(declare-fun e!3998380 () Bool)

(declare-fun tp!1820630 () Bool)

(declare-fun setNonEmpty!45137 () Bool)

(assert (=> setNonEmpty!45137 (= setRes!45137 (and tp!1820630 (inv!84434 setElem!45137) e!3998380))))

(declare-fun setRest!45137 () (InoxSet Context!11718))

(assert (=> setNonEmpty!45137 (= res!2709757 ((_ map or) (store ((as const (Array Context!11718 Bool)) false) setElem!45137 true) setRest!45137))))

(declare-fun b!6608454 () Bool)

(declare-fun tp!1820631 () Bool)

(assert (=> b!6608454 (= e!3998380 tp!1820631)))

(assert (= (and d!2072315 condSetEmpty!45137) setIsEmpty!45137))

(assert (= (and d!2072315 (not condSetEmpty!45137)) setNonEmpty!45137))

(assert (= setNonEmpty!45137 b!6608454))

(declare-fun m!7383410 () Bool)

(assert (=> setNonEmpty!45137 m!7383410))

(assert (=> d!2071775 d!2072315))

(assert (=> b!6607503 d!2071965))

(assert (=> b!6607427 d!2071817))

(assert (=> d!2071797 d!2072061))

(declare-fun d!2072319 () Bool)

(assert (=> d!2072319 (= (head!13401 (unfocusZipperList!1896 zl!343)) (h!72049 (unfocusZipperList!1896 zl!343)))))

(assert (=> b!6606839 d!2072319))

(declare-fun bs!1693957 () Bool)

(declare-fun d!2072321 () Bool)

(assert (= bs!1693957 (and d!2072321 d!2071985)))

(declare-fun lambda!368752 () Int)

(assert (=> bs!1693957 (= lambda!368752 lambda!368704)))

(declare-fun bs!1693958 () Bool)

(assert (= bs!1693958 (and d!2072321 d!2071783)))

(assert (=> bs!1693958 (= lambda!368752 lambda!368660)))

(declare-fun bs!1693959 () Bool)

(assert (= bs!1693959 (and d!2072321 d!2071903)))

(assert (=> bs!1693959 (= lambda!368752 lambda!368696)))

(declare-fun bs!1693960 () Bool)

(assert (= bs!1693960 (and d!2072321 d!2071851)))

(assert (=> bs!1693960 (= lambda!368752 lambda!368689)))

(declare-fun bs!1693961 () Bool)

(assert (= bs!1693961 (and d!2072321 d!2071909)))

(assert (=> bs!1693961 (= lambda!368752 lambda!368697)))

(declare-fun bs!1693962 () Bool)

(assert (= bs!1693962 (and d!2072321 d!2071653)))

(assert (=> bs!1693962 (= lambda!368752 lambda!368603)))

(declare-fun bs!1693963 () Bool)

(assert (= bs!1693963 (and d!2072321 d!2072275)))

(assert (=> bs!1693963 (= lambda!368752 lambda!368745)))

(declare-fun bs!1693964 () Bool)

(assert (= bs!1693964 (and d!2072321 d!2071951)))

(assert (=> bs!1693964 (= lambda!368752 lambda!368700)))

(declare-fun bs!1693965 () Bool)

(assert (= bs!1693965 (and d!2072321 d!2071661)))

(assert (=> bs!1693965 (= lambda!368752 lambda!368608)))

(declare-fun bs!1693966 () Bool)

(assert (= bs!1693966 (and d!2072321 d!2071953)))

(assert (=> bs!1693966 (= lambda!368752 lambda!368701)))

(assert (=> d!2072321 (= (inv!84434 (h!72050 (t!379378 zl!343))) (forall!15673 (exprs!6359 (h!72050 (t!379378 zl!343))) lambda!368752))))

(declare-fun bs!1693967 () Bool)

(assert (= bs!1693967 d!2072321))

(declare-fun m!7383422 () Bool)

(assert (=> bs!1693967 m!7383422))

(assert (=> b!6607687 d!2072321))

(declare-fun d!2072323 () Bool)

(assert (=> d!2072323 true))

(assert (=> d!2072323 true))

(declare-fun res!2709771 () Bool)

(assert (=> d!2072323 (= (choose!49347 lambda!368581) res!2709771)))

(assert (=> d!2071835 d!2072323))

(declare-fun d!2072329 () Bool)

(assert (=> d!2072329 (= ($colon$colon!2316 (exprs!6359 lt!2415123) (ite (or c!1217546 c!1217544) (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (regOne!33462 r!7292)))) (Cons!65601 (ite (or c!1217546 c!1217544) (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (regOne!33462 r!7292))) (exprs!6359 lt!2415123)))))

(assert (=> bm!578044 d!2072329))

(declare-fun d!2072331 () Bool)

(assert (=> d!2072331 (= (maxBigInt!0 (ite c!1217670 call!578119 call!578116) (ite c!1217670 call!578116 call!578119)) (ite (>= (ite c!1217670 call!578119 call!578116) (ite c!1217670 call!578116 call!578119)) (ite c!1217670 call!578119 call!578116) (ite c!1217670 call!578116 call!578119)))))

(assert (=> bm!578116 d!2072331))

(declare-fun d!2072333 () Bool)

(assert (=> d!2072333 (= (flatMap!1980 lt!2415147 lambda!368661) (choose!49350 lt!2415147 lambda!368661))))

(declare-fun bs!1693973 () Bool)

(assert (= bs!1693973 d!2072333))

(declare-fun m!7383426 () Bool)

(assert (=> bs!1693973 m!7383426))

(assert (=> d!2071785 d!2072333))

(assert (=> b!6607331 d!2072293))

(assert (=> b!6607331 d!2072029))

(declare-fun d!2072335 () Bool)

(declare-fun e!3998395 () Bool)

(assert (=> d!2072335 e!3998395))

(declare-fun c!1217914 () Bool)

(assert (=> d!2072335 (= c!1217914 ((_ is EmptyExpr!16475) (regTwo!33462 r!7292)))))

(declare-fun lt!2415361 () Bool)

(declare-fun e!3998401 () Bool)

(assert (=> d!2072335 (= lt!2415361 e!3998401)))

(declare-fun c!1217913 () Bool)

(assert (=> d!2072335 (= c!1217913 (isEmpty!37882 (_2!36757 (get!22794 lt!2415235))))))

(assert (=> d!2072335 (validRegex!8211 (regTwo!33462 r!7292))))

(assert (=> d!2072335 (= (matchR!8658 (regTwo!33462 r!7292) (_2!36757 (get!22794 lt!2415235))) lt!2415361)))

(declare-fun b!6608481 () Bool)

(declare-fun e!3998396 () Bool)

(assert (=> b!6608481 (= e!3998396 (= (head!13402 (_2!36757 (get!22794 lt!2415235))) (c!1217326 (regTwo!33462 r!7292))))))

(declare-fun b!6608482 () Bool)

(declare-fun e!3998398 () Bool)

(assert (=> b!6608482 (= e!3998398 (not lt!2415361))))

(declare-fun b!6608483 () Bool)

(declare-fun res!2709778 () Bool)

(assert (=> b!6608483 (=> (not res!2709778) (not e!3998396))))

(assert (=> b!6608483 (= res!2709778 (isEmpty!37882 (tail!12487 (_2!36757 (get!22794 lt!2415235)))))))

(declare-fun bm!578321 () Bool)

(declare-fun call!578326 () Bool)

(assert (=> bm!578321 (= call!578326 (isEmpty!37882 (_2!36757 (get!22794 lt!2415235))))))

(declare-fun b!6608484 () Bool)

(declare-fun e!3998400 () Bool)

(declare-fun e!3998399 () Bool)

(assert (=> b!6608484 (= e!3998400 e!3998399)))

(declare-fun res!2709779 () Bool)

(assert (=> b!6608484 (=> res!2709779 e!3998399)))

(assert (=> b!6608484 (= res!2709779 call!578326)))

(declare-fun b!6608485 () Bool)

(declare-fun res!2709777 () Bool)

(declare-fun e!3998397 () Bool)

(assert (=> b!6608485 (=> res!2709777 e!3998397)))

(assert (=> b!6608485 (= res!2709777 (not ((_ is ElementMatch!16475) (regTwo!33462 r!7292))))))

(assert (=> b!6608485 (= e!3998398 e!3998397)))

(declare-fun b!6608486 () Bool)

(assert (=> b!6608486 (= e!3998395 e!3998398)))

(declare-fun c!1217915 () Bool)

(assert (=> b!6608486 (= c!1217915 ((_ is EmptyLang!16475) (regTwo!33462 r!7292)))))

(declare-fun b!6608487 () Bool)

(assert (=> b!6608487 (= e!3998397 e!3998400)))

(declare-fun res!2709775 () Bool)

(assert (=> b!6608487 (=> (not res!2709775) (not e!3998400))))

(assert (=> b!6608487 (= res!2709775 (not lt!2415361))))

(declare-fun b!6608488 () Bool)

(declare-fun res!2709776 () Bool)

(assert (=> b!6608488 (=> res!2709776 e!3998397)))

(assert (=> b!6608488 (= res!2709776 e!3998396)))

(declare-fun res!2709773 () Bool)

(assert (=> b!6608488 (=> (not res!2709773) (not e!3998396))))

(assert (=> b!6608488 (= res!2709773 lt!2415361)))

(declare-fun b!6608489 () Bool)

(assert (=> b!6608489 (= e!3998401 (matchR!8658 (derivativeStep!5159 (regTwo!33462 r!7292) (head!13402 (_2!36757 (get!22794 lt!2415235)))) (tail!12487 (_2!36757 (get!22794 lt!2415235)))))))

(declare-fun b!6608490 () Bool)

(declare-fun res!2709774 () Bool)

(assert (=> b!6608490 (=> res!2709774 e!3998399)))

(assert (=> b!6608490 (= res!2709774 (not (isEmpty!37882 (tail!12487 (_2!36757 (get!22794 lt!2415235))))))))

(declare-fun b!6608491 () Bool)

(assert (=> b!6608491 (= e!3998401 (nullable!6468 (regTwo!33462 r!7292)))))

(declare-fun b!6608492 () Bool)

(declare-fun res!2709772 () Bool)

(assert (=> b!6608492 (=> (not res!2709772) (not e!3998396))))

(assert (=> b!6608492 (= res!2709772 (not call!578326))))

(declare-fun b!6608493 () Bool)

(assert (=> b!6608493 (= e!3998395 (= lt!2415361 call!578326))))

(declare-fun b!6608494 () Bool)

(assert (=> b!6608494 (= e!3998399 (not (= (head!13402 (_2!36757 (get!22794 lt!2415235))) (c!1217326 (regTwo!33462 r!7292)))))))

(assert (= (and d!2072335 c!1217913) b!6608491))

(assert (= (and d!2072335 (not c!1217913)) b!6608489))

(assert (= (and d!2072335 c!1217914) b!6608493))

(assert (= (and d!2072335 (not c!1217914)) b!6608486))

(assert (= (and b!6608486 c!1217915) b!6608482))

(assert (= (and b!6608486 (not c!1217915)) b!6608485))

(assert (= (and b!6608485 (not res!2709777)) b!6608488))

(assert (= (and b!6608488 res!2709773) b!6608492))

(assert (= (and b!6608492 res!2709772) b!6608483))

(assert (= (and b!6608483 res!2709778) b!6608481))

(assert (= (and b!6608488 (not res!2709776)) b!6608487))

(assert (= (and b!6608487 res!2709775) b!6608484))

(assert (= (and b!6608484 (not res!2709779)) b!6608490))

(assert (= (and b!6608490 (not res!2709774)) b!6608494))

(assert (= (or b!6608493 b!6608484 b!6608492) bm!578321))

(declare-fun m!7383428 () Bool)

(assert (=> b!6608489 m!7383428))

(assert (=> b!6608489 m!7383428))

(declare-fun m!7383430 () Bool)

(assert (=> b!6608489 m!7383430))

(declare-fun m!7383432 () Bool)

(assert (=> b!6608489 m!7383432))

(assert (=> b!6608489 m!7383430))

(assert (=> b!6608489 m!7383432))

(declare-fun m!7383434 () Bool)

(assert (=> b!6608489 m!7383434))

(assert (=> b!6608491 m!7382532))

(declare-fun m!7383436 () Bool)

(assert (=> bm!578321 m!7383436))

(assert (=> b!6608481 m!7383428))

(assert (=> b!6608483 m!7383432))

(assert (=> b!6608483 m!7383432))

(declare-fun m!7383438 () Bool)

(assert (=> b!6608483 m!7383438))

(assert (=> d!2072335 m!7383436))

(assert (=> d!2072335 m!7381716))

(assert (=> b!6608494 m!7383428))

(assert (=> b!6608490 m!7383432))

(assert (=> b!6608490 m!7383432))

(assert (=> b!6608490 m!7383438))

(assert (=> b!6607105 d!2072335))

(assert (=> b!6607105 d!2071959))

(declare-fun b!6608509 () Bool)

(declare-fun e!3998418 () Bool)

(declare-fun e!3998419 () Bool)

(assert (=> b!6608509 (= e!3998418 e!3998419)))

(declare-fun c!1217918 () Bool)

(assert (=> b!6608509 (= c!1217918 ((_ is Union!16475) (regOne!33462 (regOne!33462 r!7292))))))

(declare-fun bm!578326 () Bool)

(declare-fun call!578332 () Bool)

(assert (=> bm!578326 (= call!578332 (nullable!6468 (ite c!1217918 (regTwo!33463 (regOne!33462 (regOne!33462 r!7292))) (regTwo!33462 (regOne!33462 (regOne!33462 r!7292))))))))

(declare-fun b!6608510 () Bool)

(declare-fun e!3998416 () Bool)

(declare-fun e!3998417 () Bool)

(assert (=> b!6608510 (= e!3998416 e!3998417)))

(declare-fun res!2709793 () Bool)

(assert (=> b!6608510 (=> (not res!2709793) (not e!3998417))))

(assert (=> b!6608510 (= res!2709793 (and (not ((_ is EmptyLang!16475) (regOne!33462 (regOne!33462 r!7292)))) (not ((_ is ElementMatch!16475) (regOne!33462 (regOne!33462 r!7292))))))))

(declare-fun b!6608511 () Bool)

(declare-fun e!3998415 () Bool)

(assert (=> b!6608511 (= e!3998419 e!3998415)))

(declare-fun res!2709794 () Bool)

(declare-fun call!578331 () Bool)

(assert (=> b!6608511 (= res!2709794 call!578331)))

(assert (=> b!6608511 (=> res!2709794 e!3998415)))

(declare-fun b!6608512 () Bool)

(assert (=> b!6608512 (= e!3998417 e!3998418)))

(declare-fun res!2709792 () Bool)

(assert (=> b!6608512 (=> res!2709792 e!3998418)))

(assert (=> b!6608512 (= res!2709792 ((_ is Star!16475) (regOne!33462 (regOne!33462 r!7292))))))

(declare-fun b!6608513 () Bool)

(assert (=> b!6608513 (= e!3998415 call!578332)))

(declare-fun b!6608514 () Bool)

(declare-fun e!3998414 () Bool)

(assert (=> b!6608514 (= e!3998419 e!3998414)))

(declare-fun res!2709790 () Bool)

(assert (=> b!6608514 (= res!2709790 call!578331)))

(assert (=> b!6608514 (=> (not res!2709790) (not e!3998414))))

(declare-fun bm!578327 () Bool)

(assert (=> bm!578327 (= call!578331 (nullable!6468 (ite c!1217918 (regOne!33463 (regOne!33462 (regOne!33462 r!7292))) (regOne!33462 (regOne!33462 (regOne!33462 r!7292))))))))

(declare-fun b!6608515 () Bool)

(assert (=> b!6608515 (= e!3998414 call!578332)))

(declare-fun d!2072337 () Bool)

(declare-fun res!2709791 () Bool)

(assert (=> d!2072337 (=> res!2709791 e!3998416)))

(assert (=> d!2072337 (= res!2709791 ((_ is EmptyExpr!16475) (regOne!33462 (regOne!33462 r!7292))))))

(assert (=> d!2072337 (= (nullableFct!2393 (regOne!33462 (regOne!33462 r!7292))) e!3998416)))

(assert (= (and d!2072337 (not res!2709791)) b!6608510))

(assert (= (and b!6608510 res!2709793) b!6608512))

(assert (= (and b!6608512 (not res!2709792)) b!6608509))

(assert (= (and b!6608509 c!1217918) b!6608511))

(assert (= (and b!6608509 (not c!1217918)) b!6608514))

(assert (= (and b!6608511 (not res!2709794)) b!6608513))

(assert (= (and b!6608514 res!2709790) b!6608515))

(assert (= (or b!6608513 b!6608515) bm!578326))

(assert (= (or b!6608511 b!6608514) bm!578327))

(declare-fun m!7383448 () Bool)

(assert (=> bm!578326 m!7383448))

(declare-fun m!7383450 () Bool)

(assert (=> bm!578327 m!7383450))

(assert (=> d!2071795 d!2072337))

(declare-fun d!2072343 () Bool)

(assert (=> d!2072343 (= (nullable!6468 (reg!16804 (regTwo!33462 r!7292))) (nullableFct!2393 (reg!16804 (regTwo!33462 r!7292))))))

(declare-fun bs!1694005 () Bool)

(assert (= bs!1694005 d!2072343))

(declare-fun m!7383452 () Bool)

(assert (=> bs!1694005 m!7383452))

(assert (=> b!6607461 d!2072343))

(declare-fun b!6608517 () Bool)

(declare-fun e!3998422 () Bool)

(assert (=> b!6608517 (= e!3998422 (nullable!6468 (h!72049 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415130)))))))))

(declare-fun b!6608518 () Bool)

(declare-fun call!578333 () (InoxSet Context!11718))

(declare-fun e!3998420 () (InoxSet Context!11718))

(assert (=> b!6608518 (= e!3998420 ((_ map or) call!578333 (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415130)))))) (h!72048 s!2326))))))

(declare-fun bm!578328 () Bool)

(assert (=> bm!578328 (= call!578333 (derivationStepZipperDown!1723 (h!72049 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415130))))) (Context!11719 (t!379377 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415130)))))) (h!72048 s!2326)))))

(declare-fun b!6608519 () Bool)

(declare-fun e!3998421 () (InoxSet Context!11718))

(assert (=> b!6608519 (= e!3998421 ((as const (Array Context!11718 Bool)) false))))

(declare-fun b!6608520 () Bool)

(assert (=> b!6608520 (= e!3998420 e!3998421)))

(declare-fun c!1217920 () Bool)

(assert (=> b!6608520 (= c!1217920 ((_ is Cons!65601) (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415130))))))))

(declare-fun b!6608516 () Bool)

(assert (=> b!6608516 (= e!3998421 call!578333)))

(declare-fun d!2072345 () Bool)

(declare-fun c!1217919 () Bool)

(assert (=> d!2072345 (= c!1217919 e!3998422)))

(declare-fun res!2709795 () Bool)

(assert (=> d!2072345 (=> (not res!2709795) (not e!3998422))))

(assert (=> d!2072345 (= res!2709795 ((_ is Cons!65601) (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415130))))))))

(assert (=> d!2072345 (= (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 lt!2415130))) (h!72048 s!2326)) e!3998420)))

(assert (= (and d!2072345 res!2709795) b!6608517))

(assert (= (and d!2072345 c!1217919) b!6608518))

(assert (= (and d!2072345 (not c!1217919)) b!6608520))

(assert (= (and b!6608520 c!1217920) b!6608516))

(assert (= (and b!6608520 (not c!1217920)) b!6608519))

(assert (= (or b!6608518 b!6608516) bm!578328))

(declare-fun m!7383454 () Bool)

(assert (=> b!6608517 m!7383454))

(declare-fun m!7383456 () Bool)

(assert (=> b!6608518 m!7383456))

(declare-fun m!7383458 () Bool)

(assert (=> bm!578328 m!7383458))

(assert (=> b!6607210 d!2072345))

(assert (=> d!2071885 d!2072017))

(assert (=> d!2071885 d!2072049))

(declare-fun d!2072353 () Bool)

(assert (=> d!2072353 true))

(assert (=> d!2072353 true))

(declare-fun res!2709796 () Bool)

(assert (=> d!2072353 (= (choose!49347 lambda!368579) res!2709796)))

(assert (=> d!2071839 d!2072353))

(declare-fun d!2072355 () Bool)

(assert (not d!2072355))

(assert (=> b!6607293 d!2072355))

(declare-fun d!2072359 () Bool)

(assert (not d!2072359))

(assert (=> b!6607293 d!2072359))

(declare-fun d!2072361 () Bool)

(assert (not d!2072361))

(assert (=> b!6607293 d!2072361))

(declare-fun d!2072367 () Bool)

(assert (not d!2072367))

(assert (=> b!6607293 d!2072367))

(declare-fun d!2072371 () Bool)

(assert (=> d!2072371 (= (nullable!6468 (h!72049 (exprs!6359 lt!2415130))) (nullableFct!2393 (h!72049 (exprs!6359 lt!2415130))))))

(declare-fun bs!1694008 () Bool)

(assert (= bs!1694008 d!2072371))

(declare-fun m!7383460 () Bool)

(assert (=> bs!1694008 m!7383460))

(assert (=> b!6607209 d!2072371))

(declare-fun bs!1694009 () Bool)

(declare-fun d!2072373 () Bool)

(assert (= bs!1694009 (and d!2072373 d!2072065)))

(declare-fun lambda!368755 () Int)

(assert (=> bs!1694009 (= lambda!368755 lambda!368716)))

(declare-fun bs!1694010 () Bool)

(assert (= bs!1694010 (and d!2072373 d!2072053)))

(assert (=> bs!1694010 (= lambda!368755 lambda!368714)))

(declare-fun bs!1694011 () Bool)

(assert (= bs!1694011 (and d!2072373 d!2072175)))

(assert (=> bs!1694011 (= lambda!368755 lambda!368730)))

(declare-fun bs!1694012 () Bool)

(assert (= bs!1694012 (and d!2072373 b!6607272)))

(assert (=> bs!1694012 (not (= lambda!368755 lambda!368673))))

(declare-fun bs!1694013 () Bool)

(assert (= bs!1694013 (and d!2072373 b!6607267)))

(assert (=> bs!1694013 (not (= lambda!368755 lambda!368670))))

(declare-fun bs!1694014 () Bool)

(assert (= bs!1694014 (and d!2072373 b!6607265)))

(assert (=> bs!1694014 (not (= lambda!368755 lambda!368669))))

(declare-fun bs!1694015 () Bool)

(assert (= bs!1694015 (and d!2072373 d!2072127)))

(assert (=> bs!1694015 (= lambda!368755 lambda!368724)))

(declare-fun bs!1694016 () Bool)

(assert (= bs!1694016 (and d!2072373 d!2072145)))

(assert (=> bs!1694016 (= lambda!368755 lambda!368728)))

(declare-fun bs!1694018 () Bool)

(assert (= bs!1694018 (and d!2072373 b!6607270)))

(assert (=> bs!1694018 (not (= lambda!368755 lambda!368672))))

(assert (=> d!2072373 (= (nullableZipper!2220 ((_ map or) lt!2415129 lt!2415132)) (exists!2652 ((_ map or) lt!2415129 lt!2415132) lambda!368755))))

(declare-fun bs!1694019 () Bool)

(assert (= bs!1694019 d!2072373))

(declare-fun m!7383470 () Bool)

(assert (=> bs!1694019 m!7383470))

(assert (=> b!6607428 d!2072373))

(assert (=> bm!578088 d!2072017))

(declare-fun d!2072379 () Bool)

(assert (=> d!2072379 (= (isEmpty!37882 Nil!65600) true)))

(assert (=> bm!578065 d!2072379))

(declare-fun bm!578332 () Bool)

(declare-fun c!1217925 () Bool)

(declare-fun call!578340 () List!65725)

(declare-fun c!1217924 () Bool)

(declare-fun call!578341 () (InoxSet Context!11718))

(declare-fun c!1217926 () Bool)

(assert (=> bm!578332 (= call!578341 (derivationStepZipperDown!1723 (ite c!1217925 (regOne!33463 (ite c!1217545 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (ite c!1217546 (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (ite c!1217544 (regOne!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (reg!16804 (regOne!33462 r!7292))))))) (ite c!1217926 (regTwo!33462 (ite c!1217545 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (ite c!1217546 (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (ite c!1217544 (regOne!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (reg!16804 (regOne!33462 r!7292))))))) (ite c!1217924 (regOne!33462 (ite c!1217545 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (ite c!1217546 (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (ite c!1217544 (regOne!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (reg!16804 (regOne!33462 r!7292))))))) (reg!16804 (ite c!1217545 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (ite c!1217546 (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (ite c!1217544 (regOne!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (reg!16804 (regOne!33462 r!7292)))))))))) (ite (or c!1217925 c!1217926) (ite (or c!1217545 c!1217546) lt!2415123 (Context!11719 call!578049)) (Context!11719 call!578340)) (h!72048 s!2326)))))

(declare-fun b!6608530 () Bool)

(declare-fun e!3998434 () (InoxSet Context!11718))

(declare-fun call!578339 () (InoxSet Context!11718))

(assert (=> b!6608530 (= e!3998434 call!578339)))

(declare-fun b!6608531 () Bool)

(declare-fun e!3998435 () (InoxSet Context!11718))

(declare-fun e!3998433 () (InoxSet Context!11718))

(assert (=> b!6608531 (= e!3998435 e!3998433)))

(assert (=> b!6608531 (= c!1217925 ((_ is Union!16475) (ite c!1217545 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (ite c!1217546 (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (ite c!1217544 (regOne!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (reg!16804 (regOne!33462 r!7292))))))))))

(declare-fun c!1217923 () Bool)

(declare-fun d!2072381 () Bool)

(assert (=> d!2072381 (= c!1217923 (and ((_ is ElementMatch!16475) (ite c!1217545 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (ite c!1217546 (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (ite c!1217544 (regOne!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (reg!16804 (regOne!33462 r!7292))))))) (= (c!1217326 (ite c!1217545 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (ite c!1217546 (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (ite c!1217544 (regOne!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (reg!16804 (regOne!33462 r!7292))))))) (h!72048 s!2326))))))

(assert (=> d!2072381 (= (derivationStepZipperDown!1723 (ite c!1217545 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (ite c!1217546 (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (ite c!1217544 (regOne!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (reg!16804 (regOne!33462 r!7292)))))) (ite (or c!1217545 c!1217546) lt!2415123 (Context!11719 call!578049)) (h!72048 s!2326)) e!3998435)))

(declare-fun b!6608532 () Bool)

(declare-fun e!3998430 () (InoxSet Context!11718))

(declare-fun e!3998431 () (InoxSet Context!11718))

(assert (=> b!6608532 (= e!3998430 e!3998431)))

(assert (=> b!6608532 (= c!1217924 ((_ is Concat!25320) (ite c!1217545 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (ite c!1217546 (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (ite c!1217544 (regOne!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (reg!16804 (regOne!33462 r!7292))))))))))

(declare-fun b!6608533 () Bool)

(assert (=> b!6608533 (= e!3998435 (store ((as const (Array Context!11718 Bool)) false) (ite (or c!1217545 c!1217546) lt!2415123 (Context!11719 call!578049)) true))))

(declare-fun b!6608534 () Bool)

(declare-fun e!3998432 () Bool)

(assert (=> b!6608534 (= c!1217926 e!3998432)))

(declare-fun res!2709803 () Bool)

(assert (=> b!6608534 (=> (not res!2709803) (not e!3998432))))

(assert (=> b!6608534 (= res!2709803 ((_ is Concat!25320) (ite c!1217545 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (ite c!1217546 (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (ite c!1217544 (regOne!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (reg!16804 (regOne!33462 r!7292))))))))))

(assert (=> b!6608534 (= e!3998433 e!3998430)))

(declare-fun bm!578333 () Bool)

(declare-fun call!578337 () (InoxSet Context!11718))

(assert (=> bm!578333 (= call!578337 call!578341)))

(declare-fun c!1217927 () Bool)

(declare-fun b!6608535 () Bool)

(assert (=> b!6608535 (= c!1217927 ((_ is Star!16475) (ite c!1217545 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (ite c!1217546 (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (ite c!1217544 (regOne!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (reg!16804 (regOne!33462 r!7292))))))))))

(assert (=> b!6608535 (= e!3998431 e!3998434)))

(declare-fun bm!578334 () Bool)

(assert (=> bm!578334 (= call!578339 call!578337)))

(declare-fun bm!578335 () Bool)

(declare-fun call!578342 () List!65725)

(assert (=> bm!578335 (= call!578342 ($colon$colon!2316 (exprs!6359 (ite (or c!1217545 c!1217546) lt!2415123 (Context!11719 call!578049))) (ite (or c!1217926 c!1217924) (regTwo!33462 (ite c!1217545 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (ite c!1217546 (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (ite c!1217544 (regOne!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (reg!16804 (regOne!33462 r!7292))))))) (ite c!1217545 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (ite c!1217546 (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (ite c!1217544 (regOne!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (reg!16804 (regOne!33462 r!7292)))))))))))

(declare-fun b!6608536 () Bool)

(assert (=> b!6608536 (= e!3998434 ((as const (Array Context!11718 Bool)) false))))

(declare-fun call!578338 () (InoxSet Context!11718))

(declare-fun bm!578336 () Bool)

(assert (=> bm!578336 (= call!578338 (derivationStepZipperDown!1723 (ite c!1217925 (regTwo!33463 (ite c!1217545 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (ite c!1217546 (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (ite c!1217544 (regOne!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (reg!16804 (regOne!33462 r!7292))))))) (regOne!33462 (ite c!1217545 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (ite c!1217546 (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (ite c!1217544 (regOne!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (reg!16804 (regOne!33462 r!7292)))))))) (ite c!1217925 (ite (or c!1217545 c!1217546) lt!2415123 (Context!11719 call!578049)) (Context!11719 call!578342)) (h!72048 s!2326)))))

(declare-fun b!6608537 () Bool)

(assert (=> b!6608537 (= e!3998433 ((_ map or) call!578341 call!578338))))

(declare-fun b!6608538 () Bool)

(assert (=> b!6608538 (= e!3998430 ((_ map or) call!578338 call!578337))))

(declare-fun bm!578337 () Bool)

(assert (=> bm!578337 (= call!578340 call!578342)))

(declare-fun b!6608539 () Bool)

(assert (=> b!6608539 (= e!3998432 (nullable!6468 (regOne!33462 (ite c!1217545 (regOne!33463 (reg!16804 (regOne!33462 r!7292))) (ite c!1217546 (regTwo!33462 (reg!16804 (regOne!33462 r!7292))) (ite c!1217544 (regOne!33462 (reg!16804 (regOne!33462 r!7292))) (reg!16804 (reg!16804 (regOne!33462 r!7292)))))))))))

(declare-fun b!6608540 () Bool)

(assert (=> b!6608540 (= e!3998431 call!578339)))

(assert (= (and d!2072381 c!1217923) b!6608533))

(assert (= (and d!2072381 (not c!1217923)) b!6608531))

(assert (= (and b!6608531 c!1217925) b!6608537))

(assert (= (and b!6608531 (not c!1217925)) b!6608534))

(assert (= (and b!6608534 res!2709803) b!6608539))

(assert (= (and b!6608534 c!1217926) b!6608538))

(assert (= (and b!6608534 (not c!1217926)) b!6608532))

(assert (= (and b!6608532 c!1217924) b!6608540))

(assert (= (and b!6608532 (not c!1217924)) b!6608535))

(assert (= (and b!6608535 c!1217927) b!6608530))

(assert (= (and b!6608535 (not c!1217927)) b!6608536))

(assert (= (or b!6608540 b!6608530) bm!578337))

(assert (= (or b!6608540 b!6608530) bm!578334))

(assert (= (or b!6608538 bm!578337) bm!578335))

(assert (= (or b!6608538 bm!578334) bm!578333))

(assert (= (or b!6608537 b!6608538) bm!578336))

(assert (= (or b!6608537 bm!578333) bm!578332))

(declare-fun m!7383472 () Bool)

(assert (=> bm!578332 m!7383472))

(declare-fun m!7383474 () Bool)

(assert (=> b!6608539 m!7383474))

(declare-fun m!7383476 () Bool)

(assert (=> bm!578336 m!7383476))

(declare-fun m!7383478 () Bool)

(assert (=> b!6608533 m!7383478))

(declare-fun m!7383480 () Bool)

(assert (=> bm!578335 m!7383480))

(assert (=> bm!578041 d!2072381))

(assert (=> b!6607653 d!2071877))

(declare-fun bm!578338 () Bool)

(declare-fun call!578347 () (InoxSet Context!11718))

(declare-fun c!1217931 () Bool)

(declare-fun c!1217929 () Bool)

(declare-fun call!578346 () List!65725)

(declare-fun c!1217930 () Bool)

(assert (=> bm!578338 (= call!578347 (derivationStepZipperDown!1723 (ite c!1217930 (regOne!33463 (h!72049 (exprs!6359 lt!2415123))) (ite c!1217931 (regTwo!33462 (h!72049 (exprs!6359 lt!2415123))) (ite c!1217929 (regOne!33462 (h!72049 (exprs!6359 lt!2415123))) (reg!16804 (h!72049 (exprs!6359 lt!2415123)))))) (ite (or c!1217930 c!1217931) (Context!11719 (t!379377 (exprs!6359 lt!2415123))) (Context!11719 call!578346)) (h!72048 s!2326)))))

(declare-fun b!6608541 () Bool)

(declare-fun e!3998440 () (InoxSet Context!11718))

(declare-fun call!578345 () (InoxSet Context!11718))

(assert (=> b!6608541 (= e!3998440 call!578345)))

(declare-fun b!6608542 () Bool)

(declare-fun e!3998441 () (InoxSet Context!11718))

(declare-fun e!3998439 () (InoxSet Context!11718))

(assert (=> b!6608542 (= e!3998441 e!3998439)))

(assert (=> b!6608542 (= c!1217930 ((_ is Union!16475) (h!72049 (exprs!6359 lt!2415123))))))

(declare-fun d!2072383 () Bool)

(declare-fun c!1217928 () Bool)

(assert (=> d!2072383 (= c!1217928 (and ((_ is ElementMatch!16475) (h!72049 (exprs!6359 lt!2415123))) (= (c!1217326 (h!72049 (exprs!6359 lt!2415123))) (h!72048 s!2326))))))

(assert (=> d!2072383 (= (derivationStepZipperDown!1723 (h!72049 (exprs!6359 lt!2415123)) (Context!11719 (t!379377 (exprs!6359 lt!2415123))) (h!72048 s!2326)) e!3998441)))

(declare-fun b!6608543 () Bool)

(declare-fun e!3998436 () (InoxSet Context!11718))

(declare-fun e!3998437 () (InoxSet Context!11718))

(assert (=> b!6608543 (= e!3998436 e!3998437)))

(assert (=> b!6608543 (= c!1217929 ((_ is Concat!25320) (h!72049 (exprs!6359 lt!2415123))))))

(declare-fun b!6608544 () Bool)

(assert (=> b!6608544 (= e!3998441 (store ((as const (Array Context!11718 Bool)) false) (Context!11719 (t!379377 (exprs!6359 lt!2415123))) true))))

(declare-fun b!6608545 () Bool)

(declare-fun e!3998438 () Bool)

(assert (=> b!6608545 (= c!1217931 e!3998438)))

(declare-fun res!2709804 () Bool)

(assert (=> b!6608545 (=> (not res!2709804) (not e!3998438))))

(assert (=> b!6608545 (= res!2709804 ((_ is Concat!25320) (h!72049 (exprs!6359 lt!2415123))))))

(assert (=> b!6608545 (= e!3998439 e!3998436)))

(declare-fun bm!578339 () Bool)

(declare-fun call!578343 () (InoxSet Context!11718))

(assert (=> bm!578339 (= call!578343 call!578347)))

(declare-fun b!6608546 () Bool)

(declare-fun c!1217932 () Bool)

(assert (=> b!6608546 (= c!1217932 ((_ is Star!16475) (h!72049 (exprs!6359 lt!2415123))))))

(assert (=> b!6608546 (= e!3998437 e!3998440)))

(declare-fun bm!578340 () Bool)

(assert (=> bm!578340 (= call!578345 call!578343)))

(declare-fun call!578348 () List!65725)

(declare-fun bm!578341 () Bool)

(assert (=> bm!578341 (= call!578348 ($colon$colon!2316 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 lt!2415123)))) (ite (or c!1217931 c!1217929) (regTwo!33462 (h!72049 (exprs!6359 lt!2415123))) (h!72049 (exprs!6359 lt!2415123)))))))

(declare-fun b!6608547 () Bool)

(assert (=> b!6608547 (= e!3998440 ((as const (Array Context!11718 Bool)) false))))

(declare-fun call!578344 () (InoxSet Context!11718))

(declare-fun bm!578342 () Bool)

(assert (=> bm!578342 (= call!578344 (derivationStepZipperDown!1723 (ite c!1217930 (regTwo!33463 (h!72049 (exprs!6359 lt!2415123))) (regOne!33462 (h!72049 (exprs!6359 lt!2415123)))) (ite c!1217930 (Context!11719 (t!379377 (exprs!6359 lt!2415123))) (Context!11719 call!578348)) (h!72048 s!2326)))))

(declare-fun b!6608548 () Bool)

(assert (=> b!6608548 (= e!3998439 ((_ map or) call!578347 call!578344))))

(declare-fun b!6608549 () Bool)

(assert (=> b!6608549 (= e!3998436 ((_ map or) call!578344 call!578343))))

(declare-fun bm!578343 () Bool)

(assert (=> bm!578343 (= call!578346 call!578348)))

(declare-fun b!6608550 () Bool)

(assert (=> b!6608550 (= e!3998438 (nullable!6468 (regOne!33462 (h!72049 (exprs!6359 lt!2415123)))))))

(declare-fun b!6608551 () Bool)

(assert (=> b!6608551 (= e!3998437 call!578345)))

(assert (= (and d!2072383 c!1217928) b!6608544))

(assert (= (and d!2072383 (not c!1217928)) b!6608542))

(assert (= (and b!6608542 c!1217930) b!6608548))

(assert (= (and b!6608542 (not c!1217930)) b!6608545))

(assert (= (and b!6608545 res!2709804) b!6608550))

(assert (= (and b!6608545 c!1217931) b!6608549))

(assert (= (and b!6608545 (not c!1217931)) b!6608543))

(assert (= (and b!6608543 c!1217929) b!6608551))

(assert (= (and b!6608543 (not c!1217929)) b!6608546))

(assert (= (and b!6608546 c!1217932) b!6608541))

(assert (= (and b!6608546 (not c!1217932)) b!6608547))

(assert (= (or b!6608551 b!6608541) bm!578343))

(assert (= (or b!6608551 b!6608541) bm!578340))

(assert (= (or b!6608549 bm!578343) bm!578341))

(assert (= (or b!6608549 bm!578340) bm!578339))

(assert (= (or b!6608548 b!6608549) bm!578342))

(assert (= (or b!6608548 bm!578339) bm!578338))

(declare-fun m!7383482 () Bool)

(assert (=> bm!578338 m!7383482))

(declare-fun m!7383484 () Bool)

(assert (=> b!6608550 m!7383484))

(declare-fun m!7383486 () Bool)

(assert (=> bm!578342 m!7383486))

(declare-fun m!7383488 () Bool)

(assert (=> b!6608544 m!7383488))

(declare-fun m!7383490 () Bool)

(assert (=> bm!578341 m!7383490))

(assert (=> bm!578048 d!2072383))

(declare-fun d!2072385 () Bool)

(declare-fun c!1217933 () Bool)

(assert (=> d!2072385 (= c!1217933 (isEmpty!37882 (tail!12487 s!2326)))))

(declare-fun e!3998442 () Bool)

(assert (=> d!2072385 (= (matchZipper!2487 (derivationStepZipper!2441 z!1189 (head!13402 s!2326)) (tail!12487 s!2326)) e!3998442)))

(declare-fun b!6608552 () Bool)

(assert (=> b!6608552 (= e!3998442 (nullableZipper!2220 (derivationStepZipper!2441 z!1189 (head!13402 s!2326))))))

(declare-fun b!6608553 () Bool)

(assert (=> b!6608553 (= e!3998442 (matchZipper!2487 (derivationStepZipper!2441 (derivationStepZipper!2441 z!1189 (head!13402 s!2326)) (head!13402 (tail!12487 s!2326))) (tail!12487 (tail!12487 s!2326))))))

(assert (= (and d!2072385 c!1217933) b!6608552))

(assert (= (and d!2072385 (not c!1217933)) b!6608553))

(assert (=> d!2072385 m!7382454))

(assert (=> d!2072385 m!7382462))

(assert (=> b!6608552 m!7382524))

(declare-fun m!7383492 () Bool)

(assert (=> b!6608552 m!7383492))

(assert (=> b!6608553 m!7382454))

(assert (=> b!6608553 m!7382740))

(assert (=> b!6608553 m!7382524))

(assert (=> b!6608553 m!7382740))

(declare-fun m!7383494 () Bool)

(assert (=> b!6608553 m!7383494))

(assert (=> b!6608553 m!7382454))

(assert (=> b!6608553 m!7382744))

(assert (=> b!6608553 m!7383494))

(assert (=> b!6608553 m!7382744))

(declare-fun m!7383496 () Bool)

(assert (=> b!6608553 m!7383496))

(assert (=> b!6607489 d!2072385))

(declare-fun bs!1694020 () Bool)

(declare-fun d!2072387 () Bool)

(assert (= bs!1694020 (and d!2072387 d!2072003)))

(declare-fun lambda!368758 () Int)

(assert (=> bs!1694020 (= (= (head!13402 s!2326) (head!13402 (t!379376 s!2326))) (= lambda!368758 lambda!368705))))

(declare-fun bs!1694021 () Bool)

(assert (= bs!1694021 (and d!2072387 d!2072043)))

(assert (=> bs!1694021 (= (= (head!13402 s!2326) (head!13402 (t!379376 s!2326))) (= lambda!368758 lambda!368708))))

(declare-fun bs!1694022 () Bool)

(assert (= bs!1694022 (and d!2072387 b!6606487)))

(assert (=> bs!1694022 (= (= (head!13402 s!2326) (h!72048 s!2326)) (= lambda!368758 lambda!368578))))

(declare-fun bs!1694023 () Bool)

(assert (= bs!1694023 (and d!2072387 d!2071781)))

(assert (=> bs!1694023 (= (= (head!13402 s!2326) (h!72048 s!2326)) (= lambda!368758 lambda!368657))))

(declare-fun bs!1694024 () Bool)

(assert (= bs!1694024 (and d!2072387 d!2071785)))

(assert (=> bs!1694024 (= (= (head!13402 s!2326) (h!72048 s!2326)) (= lambda!368758 lambda!368661))))

(declare-fun bs!1694025 () Bool)

(assert (= bs!1694025 (and d!2072387 d!2072273)))

(assert (=> bs!1694025 (= (= (head!13402 s!2326) (head!13402 (t!379376 s!2326))) (= lambda!368758 lambda!368744))))

(declare-fun bs!1694026 () Bool)

(assert (= bs!1694026 (and d!2072387 d!2071963)))

(assert (=> bs!1694026 (= lambda!368758 lambda!368702)))

(assert (=> d!2072387 true))

(assert (=> d!2072387 (= (derivationStepZipper!2441 z!1189 (head!13402 s!2326)) (flatMap!1980 z!1189 lambda!368758))))

(declare-fun bs!1694027 () Bool)

(assert (= bs!1694027 d!2072387))

(declare-fun m!7383498 () Bool)

(assert (=> bs!1694027 m!7383498))

(assert (=> b!6607489 d!2072387))

(assert (=> b!6607489 d!2071965))

(assert (=> b!6607489 d!2071969))

(declare-fun b!6608558 () Bool)

(declare-fun e!3998449 () Bool)

(declare-fun e!3998450 () Bool)

(assert (=> b!6608558 (= e!3998449 e!3998450)))

(declare-fun c!1217934 () Bool)

(assert (=> b!6608558 (= c!1217934 ((_ is Union!16475) (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun bm!578344 () Bool)

(declare-fun call!578350 () Bool)

(assert (=> bm!578344 (= call!578350 (nullable!6468 (ite c!1217934 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))))))))

(declare-fun b!6608559 () Bool)

(declare-fun e!3998447 () Bool)

(declare-fun e!3998448 () Bool)

(assert (=> b!6608559 (= e!3998447 e!3998448)))

(declare-fun res!2709812 () Bool)

(assert (=> b!6608559 (=> (not res!2709812) (not e!3998448))))

(assert (=> b!6608559 (= res!2709812 (and (not ((_ is EmptyLang!16475) (h!72049 (exprs!6359 (h!72050 zl!343))))) (not ((_ is ElementMatch!16475) (h!72049 (exprs!6359 (h!72050 zl!343)))))))))

(declare-fun b!6608560 () Bool)

(declare-fun e!3998446 () Bool)

(assert (=> b!6608560 (= e!3998450 e!3998446)))

(declare-fun res!2709813 () Bool)

(declare-fun call!578349 () Bool)

(assert (=> b!6608560 (= res!2709813 call!578349)))

(assert (=> b!6608560 (=> res!2709813 e!3998446)))

(declare-fun b!6608561 () Bool)

(assert (=> b!6608561 (= e!3998448 e!3998449)))

(declare-fun res!2709811 () Bool)

(assert (=> b!6608561 (=> res!2709811 e!3998449)))

(assert (=> b!6608561 (= res!2709811 ((_ is Star!16475) (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun b!6608562 () Bool)

(assert (=> b!6608562 (= e!3998446 call!578350)))

(declare-fun b!6608563 () Bool)

(declare-fun e!3998445 () Bool)

(assert (=> b!6608563 (= e!3998450 e!3998445)))

(declare-fun res!2709809 () Bool)

(assert (=> b!6608563 (= res!2709809 call!578349)))

(assert (=> b!6608563 (=> (not res!2709809) (not e!3998445))))

(declare-fun bm!578345 () Bool)

(assert (=> bm!578345 (= call!578349 (nullable!6468 (ite c!1217934 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))))))))

(declare-fun b!6608564 () Bool)

(assert (=> b!6608564 (= e!3998445 call!578350)))

(declare-fun d!2072389 () Bool)

(declare-fun res!2709810 () Bool)

(assert (=> d!2072389 (=> res!2709810 e!3998447)))

(assert (=> d!2072389 (= res!2709810 ((_ is EmptyExpr!16475) (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(assert (=> d!2072389 (= (nullableFct!2393 (h!72049 (exprs!6359 (h!72050 zl!343)))) e!3998447)))

(assert (= (and d!2072389 (not res!2709810)) b!6608559))

(assert (= (and b!6608559 res!2709812) b!6608561))

(assert (= (and b!6608561 (not res!2709811)) b!6608558))

(assert (= (and b!6608558 c!1217934) b!6608560))

(assert (= (and b!6608558 (not c!1217934)) b!6608563))

(assert (= (and b!6608560 (not res!2709813)) b!6608562))

(assert (= (and b!6608563 res!2709809) b!6608564))

(assert (= (or b!6608562 b!6608564) bm!578344))

(assert (= (or b!6608560 b!6608563) bm!578345))

(declare-fun m!7383500 () Bool)

(assert (=> bm!578344 m!7383500))

(declare-fun m!7383502 () Bool)

(assert (=> bm!578345 m!7383502))

(assert (=> d!2071869 d!2072389))

(declare-fun d!2072391 () Bool)

(assert (=> d!2072391 true))

(declare-fun setRes!45138 () Bool)

(assert (=> d!2072391 setRes!45138))

(declare-fun condSetEmpty!45138 () Bool)

(declare-fun res!2709814 () (InoxSet Context!11718))

(assert (=> d!2072391 (= condSetEmpty!45138 (= res!2709814 ((as const (Array Context!11718 Bool)) false)))))

(assert (=> d!2072391 (= (choose!49350 lt!2415147 lambda!368578) res!2709814)))

(declare-fun setIsEmpty!45138 () Bool)

(assert (=> setIsEmpty!45138 setRes!45138))

(declare-fun setNonEmpty!45138 () Bool)

(declare-fun tp!1820632 () Bool)

(declare-fun e!3998451 () Bool)

(declare-fun setElem!45138 () Context!11718)

(assert (=> setNonEmpty!45138 (= setRes!45138 (and tp!1820632 (inv!84434 setElem!45138) e!3998451))))

(declare-fun setRest!45138 () (InoxSet Context!11718))

(assert (=> setNonEmpty!45138 (= res!2709814 ((_ map or) (store ((as const (Array Context!11718 Bool)) false) setElem!45138 true) setRest!45138))))

(declare-fun b!6608565 () Bool)

(declare-fun tp!1820633 () Bool)

(assert (=> b!6608565 (= e!3998451 tp!1820633)))

(assert (= (and d!2072391 condSetEmpty!45138) setIsEmpty!45138))

(assert (= (and d!2072391 (not condSetEmpty!45138)) setNonEmpty!45138))

(assert (= setNonEmpty!45138 b!6608565))

(declare-fun m!7383504 () Bool)

(assert (=> setNonEmpty!45138 m!7383504))

(assert (=> d!2071787 d!2072391))

(declare-fun bs!1694048 () Bool)

(declare-fun d!2072393 () Bool)

(assert (= bs!1694048 (and d!2072393 d!2072053)))

(declare-fun lambda!368762 () Int)

(assert (=> bs!1694048 (not (= lambda!368762 lambda!368714))))

(declare-fun bs!1694049 () Bool)

(assert (= bs!1694049 (and d!2072393 d!2072175)))

(assert (=> bs!1694049 (not (= lambda!368762 lambda!368730))))

(declare-fun bs!1694050 () Bool)

(assert (= bs!1694050 (and d!2072393 b!6607272)))

(assert (=> bs!1694050 (not (= lambda!368762 lambda!368673))))

(declare-fun bs!1694051 () Bool)

(assert (= bs!1694051 (and d!2072393 b!6607267)))

(assert (=> bs!1694051 (not (= lambda!368762 lambda!368670))))

(declare-fun bs!1694052 () Bool)

(assert (= bs!1694052 (and d!2072393 b!6607265)))

(assert (=> bs!1694052 (not (= lambda!368762 lambda!368669))))

(declare-fun bs!1694053 () Bool)

(assert (= bs!1694053 (and d!2072393 d!2072127)))

(assert (=> bs!1694053 (not (= lambda!368762 lambda!368724))))

(declare-fun bs!1694054 () Bool)

(assert (= bs!1694054 (and d!2072393 d!2072065)))

(assert (=> bs!1694054 (not (= lambda!368762 lambda!368716))))

(declare-fun bs!1694055 () Bool)

(assert (= bs!1694055 (and d!2072393 d!2072373)))

(assert (=> bs!1694055 (not (= lambda!368762 lambda!368755))))

(declare-fun bs!1694056 () Bool)

(assert (= bs!1694056 (and d!2072393 d!2072145)))

(assert (=> bs!1694056 (not (= lambda!368762 lambda!368728))))

(declare-fun bs!1694057 () Bool)

(assert (= bs!1694057 (and d!2072393 b!6607270)))

(assert (=> bs!1694057 (not (= lambda!368762 lambda!368672))))

(assert (=> d!2072393 true))

(assert (=> d!2072393 true))

(declare-fun order!27595 () Int)

(declare-fun order!27593 () Int)

(declare-fun dynLambda!26127 (Int Int) Int)

(declare-fun dynLambda!26128 (Int Int) Int)

(assert (=> d!2072393 (< (dynLambda!26127 order!27593 lambda!368668) (dynLambda!26128 order!27595 lambda!368762))))

(assert (=> d!2072393 (forall!15674 (t!379378 zl!343) lambda!368762)))

(declare-fun lt!2415364 () Unit!159235)

(declare-fun choose!49360 (List!65726 Int Int Int) Unit!159235)

(assert (=> d!2072393 (= lt!2415364 (choose!49360 (t!379378 zl!343) lt!2415276 (zipperDepth!412 (t!379378 zl!343)) lambda!368668))))

(assert (=> d!2072393 (>= lt!2415276 (zipperDepth!412 (t!379378 zl!343)))))

(assert (=> d!2072393 (= (lemmaForallContextDepthBiggerThanTransitive!284 (t!379378 zl!343) lt!2415276 (zipperDepth!412 (t!379378 zl!343)) lambda!368668) lt!2415364)))

(declare-fun bs!1694058 () Bool)

(assert (= bs!1694058 d!2072393))

(declare-fun m!7383514 () Bool)

(assert (=> bs!1694058 m!7383514))

(assert (=> bs!1694058 m!7382300))

(declare-fun m!7383520 () Bool)

(assert (=> bs!1694058 m!7383520))

(assert (=> b!6607265 d!2072393))

(declare-fun bs!1694059 () Bool)

(declare-fun b!6608582 () Bool)

(assert (= bs!1694059 (and b!6608582 b!6607265)))

(declare-fun lambda!368763 () Int)

(assert (=> bs!1694059 (= lambda!368763 lambda!368668)))

(declare-fun bs!1694060 () Bool)

(assert (= bs!1694060 (and b!6608582 b!6607270)))

(assert (=> bs!1694060 (= lambda!368763 lambda!368671)))

(declare-fun bs!1694062 () Bool)

(assert (= bs!1694062 (and b!6608582 d!2072053)))

(declare-fun lambda!368764 () Int)

(assert (=> bs!1694062 (not (= lambda!368764 lambda!368714))))

(declare-fun bs!1694063 () Bool)

(assert (= bs!1694063 (and b!6608582 d!2072175)))

(assert (=> bs!1694063 (not (= lambda!368764 lambda!368730))))

(declare-fun bs!1694064 () Bool)

(assert (= bs!1694064 (and b!6608582 b!6607272)))

(declare-fun lt!2415366 () Int)

(assert (=> bs!1694064 (= (= lt!2415366 lt!2415282) (= lambda!368764 lambda!368673))))

(declare-fun bs!1694065 () Bool)

(assert (= bs!1694065 (and b!6608582 d!2072393)))

(assert (=> bs!1694065 (not (= lambda!368764 lambda!368762))))

(declare-fun bs!1694066 () Bool)

(assert (= bs!1694066 (and b!6608582 b!6607267)))

(assert (=> bs!1694066 (= (= lt!2415366 lt!2415278) (= lambda!368764 lambda!368670))))

(assert (=> bs!1694059 (= (= lt!2415366 lt!2415276) (= lambda!368764 lambda!368669))))

(declare-fun bs!1694067 () Bool)

(assert (= bs!1694067 (and b!6608582 d!2072127)))

(assert (=> bs!1694067 (not (= lambda!368764 lambda!368724))))

(declare-fun bs!1694068 () Bool)

(assert (= bs!1694068 (and b!6608582 d!2072065)))

(assert (=> bs!1694068 (not (= lambda!368764 lambda!368716))))

(declare-fun bs!1694069 () Bool)

(assert (= bs!1694069 (and b!6608582 d!2072373)))

(assert (=> bs!1694069 (not (= lambda!368764 lambda!368755))))

(declare-fun bs!1694070 () Bool)

(assert (= bs!1694070 (and b!6608582 d!2072145)))

(assert (=> bs!1694070 (not (= lambda!368764 lambda!368728))))

(assert (=> bs!1694060 (= (= lt!2415366 lt!2415280) (= lambda!368764 lambda!368672))))

(assert (=> b!6608582 true))

(declare-fun bs!1694071 () Bool)

(declare-fun b!6608584 () Bool)

(assert (= bs!1694071 (and b!6608584 d!2072053)))

(declare-fun lambda!368765 () Int)

(assert (=> bs!1694071 (not (= lambda!368765 lambda!368714))))

(declare-fun bs!1694072 () Bool)

(assert (= bs!1694072 (and b!6608584 b!6608582)))

(declare-fun lt!2415368 () Int)

(assert (=> bs!1694072 (= (= lt!2415368 lt!2415366) (= lambda!368765 lambda!368764))))

(declare-fun bs!1694073 () Bool)

(assert (= bs!1694073 (and b!6608584 d!2072175)))

(assert (=> bs!1694073 (not (= lambda!368765 lambda!368730))))

(declare-fun bs!1694074 () Bool)

(assert (= bs!1694074 (and b!6608584 b!6607272)))

(assert (=> bs!1694074 (= (= lt!2415368 lt!2415282) (= lambda!368765 lambda!368673))))

(declare-fun bs!1694075 () Bool)

(assert (= bs!1694075 (and b!6608584 d!2072393)))

(assert (=> bs!1694075 (not (= lambda!368765 lambda!368762))))

(declare-fun bs!1694076 () Bool)

(assert (= bs!1694076 (and b!6608584 b!6607267)))

(assert (=> bs!1694076 (= (= lt!2415368 lt!2415278) (= lambda!368765 lambda!368670))))

(declare-fun bs!1694077 () Bool)

(assert (= bs!1694077 (and b!6608584 b!6607265)))

(assert (=> bs!1694077 (= (= lt!2415368 lt!2415276) (= lambda!368765 lambda!368669))))

(declare-fun bs!1694078 () Bool)

(assert (= bs!1694078 (and b!6608584 d!2072127)))

(assert (=> bs!1694078 (not (= lambda!368765 lambda!368724))))

(declare-fun bs!1694079 () Bool)

(assert (= bs!1694079 (and b!6608584 d!2072065)))

(assert (=> bs!1694079 (not (= lambda!368765 lambda!368716))))

(declare-fun bs!1694080 () Bool)

(assert (= bs!1694080 (and b!6608584 d!2072373)))

(assert (=> bs!1694080 (not (= lambda!368765 lambda!368755))))

(declare-fun bs!1694081 () Bool)

(assert (= bs!1694081 (and b!6608584 d!2072145)))

(assert (=> bs!1694081 (not (= lambda!368765 lambda!368728))))

(declare-fun bs!1694082 () Bool)

(assert (= bs!1694082 (and b!6608584 b!6607270)))

(assert (=> bs!1694082 (= (= lt!2415368 lt!2415280) (= lambda!368765 lambda!368672))))

(assert (=> b!6608584 true))

(declare-fun d!2072401 () Bool)

(declare-fun e!3998463 () Bool)

(assert (=> d!2072401 e!3998463))

(declare-fun res!2709824 () Bool)

(assert (=> d!2072401 (=> (not res!2709824) (not e!3998463))))

(assert (=> d!2072401 (= res!2709824 (>= lt!2415368 0))))

(declare-fun e!3998464 () Int)

(assert (=> d!2072401 (= lt!2415368 e!3998464)))

(declare-fun c!1217939 () Bool)

(assert (=> d!2072401 (= c!1217939 ((_ is Cons!65602) (t!379378 zl!343)))))

(assert (=> d!2072401 (= (zipperDepth!412 (t!379378 zl!343)) lt!2415368)))

(assert (=> b!6608582 (= e!3998464 lt!2415366)))

(assert (=> b!6608582 (= lt!2415366 (maxBigInt!0 (contextDepth!300 (h!72050 (t!379378 zl!343))) (zipperDepth!412 (t!379378 (t!379378 zl!343)))))))

(declare-fun lt!2415365 () Unit!159235)

(assert (=> b!6608582 (= lt!2415365 (lemmaForallContextDepthBiggerThanTransitive!284 (t!379378 (t!379378 zl!343)) lt!2415366 (zipperDepth!412 (t!379378 (t!379378 zl!343))) lambda!368763))))

(assert (=> b!6608582 (forall!15674 (t!379378 (t!379378 zl!343)) lambda!368764)))

(declare-fun lt!2415367 () Unit!159235)

(assert (=> b!6608582 (= lt!2415367 lt!2415365)))

(declare-fun b!6608583 () Bool)

(assert (=> b!6608583 (= e!3998464 0)))

(assert (=> b!6608584 (= e!3998463 (forall!15674 (t!379378 zl!343) lambda!368765))))

(assert (= (and d!2072401 c!1217939) b!6608582))

(assert (= (and d!2072401 (not c!1217939)) b!6608583))

(assert (= (and d!2072401 res!2709824) b!6608584))

(declare-fun m!7383544 () Bool)

(assert (=> b!6608582 m!7383544))

(declare-fun m!7383546 () Bool)

(assert (=> b!6608582 m!7383546))

(assert (=> b!6608582 m!7383544))

(declare-fun m!7383548 () Bool)

(assert (=> b!6608582 m!7383548))

(declare-fun m!7383550 () Bool)

(assert (=> b!6608582 m!7383550))

(assert (=> b!6608582 m!7383544))

(declare-fun m!7383552 () Bool)

(assert (=> b!6608582 m!7383552))

(assert (=> b!6608582 m!7383550))

(declare-fun m!7383554 () Bool)

(assert (=> b!6608584 m!7383554))

(assert (=> b!6607265 d!2072401))

(declare-fun d!2072415 () Bool)

(assert (=> d!2072415 (= (maxBigInt!0 (contextDepth!300 (h!72050 zl!343)) (zipperDepth!412 (t!379378 zl!343))) (ite (>= (contextDepth!300 (h!72050 zl!343)) (zipperDepth!412 (t!379378 zl!343))) (contextDepth!300 (h!72050 zl!343)) (zipperDepth!412 (t!379378 zl!343))))))

(assert (=> b!6607265 d!2072415))

(declare-fun bs!1694132 () Bool)

(declare-fun b!6608632 () Bool)

(assert (= bs!1694132 (and b!6608632 d!2071985)))

(declare-fun lambda!368773 () Int)

(assert (=> bs!1694132 (not (= lambda!368773 lambda!368704))))

(declare-fun bs!1694133 () Bool)

(assert (= bs!1694133 (and b!6608632 d!2071783)))

(assert (=> bs!1694133 (not (= lambda!368773 lambda!368660))))

(declare-fun bs!1694134 () Bool)

(assert (= bs!1694134 (and b!6608632 d!2071903)))

(assert (=> bs!1694134 (not (= lambda!368773 lambda!368696))))

(declare-fun bs!1694135 () Bool)

(assert (= bs!1694135 (and b!6608632 d!2071851)))

(assert (=> bs!1694135 (not (= lambda!368773 lambda!368689))))

(declare-fun bs!1694136 () Bool)

(assert (= bs!1694136 (and b!6608632 d!2072321)))

(assert (=> bs!1694136 (not (= lambda!368773 lambda!368752))))

(declare-fun bs!1694137 () Bool)

(assert (= bs!1694137 (and b!6608632 d!2071909)))

(assert (=> bs!1694137 (not (= lambda!368773 lambda!368697))))

(declare-fun bs!1694138 () Bool)

(assert (= bs!1694138 (and b!6608632 d!2071653)))

(assert (=> bs!1694138 (not (= lambda!368773 lambda!368603))))

(declare-fun bs!1694139 () Bool)

(assert (= bs!1694139 (and b!6608632 d!2072275)))

(assert (=> bs!1694139 (not (= lambda!368773 lambda!368745))))

(declare-fun bs!1694140 () Bool)

(assert (= bs!1694140 (and b!6608632 d!2071951)))

(assert (=> bs!1694140 (not (= lambda!368773 lambda!368700))))

(declare-fun bs!1694141 () Bool)

(assert (= bs!1694141 (and b!6608632 d!2071661)))

(assert (=> bs!1694141 (not (= lambda!368773 lambda!368608))))

(declare-fun bs!1694142 () Bool)

(assert (= bs!1694142 (and b!6608632 d!2071953)))

(assert (=> bs!1694142 (not (= lambda!368773 lambda!368701))))

(assert (=> b!6608632 true))

(declare-fun bs!1694146 () Bool)

(declare-fun b!6608634 () Bool)

(assert (= bs!1694146 (and b!6608634 d!2071985)))

(declare-fun lambda!368775 () Int)

(assert (=> bs!1694146 (not (= lambda!368775 lambda!368704))))

(declare-fun bs!1694149 () Bool)

(assert (= bs!1694149 (and b!6608634 d!2071783)))

(assert (=> bs!1694149 (not (= lambda!368775 lambda!368660))))

(declare-fun bs!1694151 () Bool)

(assert (= bs!1694151 (and b!6608634 d!2071903)))

(assert (=> bs!1694151 (not (= lambda!368775 lambda!368696))))

(declare-fun bs!1694153 () Bool)

(assert (= bs!1694153 (and b!6608634 d!2071851)))

(assert (=> bs!1694153 (not (= lambda!368775 lambda!368689))))

(declare-fun bs!1694155 () Bool)

(assert (= bs!1694155 (and b!6608634 b!6608632)))

(declare-fun lt!2415378 () Int)

(declare-fun lt!2415381 () Int)

(assert (=> bs!1694155 (= (= lt!2415378 lt!2415381) (= lambda!368775 lambda!368773))))

(declare-fun bs!1694157 () Bool)

(assert (= bs!1694157 (and b!6608634 d!2072321)))

(assert (=> bs!1694157 (not (= lambda!368775 lambda!368752))))

(declare-fun bs!1694159 () Bool)

(assert (= bs!1694159 (and b!6608634 d!2071909)))

(assert (=> bs!1694159 (not (= lambda!368775 lambda!368697))))

(declare-fun bs!1694160 () Bool)

(assert (= bs!1694160 (and b!6608634 d!2071653)))

(assert (=> bs!1694160 (not (= lambda!368775 lambda!368603))))

(declare-fun bs!1694161 () Bool)

(assert (= bs!1694161 (and b!6608634 d!2072275)))

(assert (=> bs!1694161 (not (= lambda!368775 lambda!368745))))

(declare-fun bs!1694162 () Bool)

(assert (= bs!1694162 (and b!6608634 d!2071951)))

(assert (=> bs!1694162 (not (= lambda!368775 lambda!368700))))

(declare-fun bs!1694163 () Bool)

(assert (= bs!1694163 (and b!6608634 d!2071661)))

(assert (=> bs!1694163 (not (= lambda!368775 lambda!368608))))

(declare-fun bs!1694164 () Bool)

(assert (= bs!1694164 (and b!6608634 d!2071953)))

(assert (=> bs!1694164 (not (= lambda!368775 lambda!368701))))

(assert (=> b!6608634 true))

(declare-fun d!2072417 () Bool)

(declare-fun e!3998492 () Bool)

(assert (=> d!2072417 e!3998492))

(declare-fun res!2709840 () Bool)

(assert (=> d!2072417 (=> (not res!2709840) (not e!3998492))))

(assert (=> d!2072417 (= res!2709840 (>= lt!2415378 0))))

(declare-fun e!3998493 () Int)

(assert (=> d!2072417 (= lt!2415378 e!3998493)))

(declare-fun c!1217957 () Bool)

(assert (=> d!2072417 (= c!1217957 ((_ is Cons!65601) (exprs!6359 (h!72050 zl!343))))))

(assert (=> d!2072417 (= (contextDepth!300 (h!72050 zl!343)) lt!2415378)))

(assert (=> b!6608632 (= e!3998493 lt!2415381)))

(assert (=> b!6608632 (= lt!2415381 (maxBigInt!0 (regexDepth!372 (h!72049 (exprs!6359 (h!72050 zl!343)))) (contextDepth!300 (Context!11719 (t!379377 (exprs!6359 (h!72050 zl!343)))))))))

(declare-fun lt!2415379 () Unit!159235)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!133 (List!65725 Int Int) Unit!159235)

(assert (=> b!6608632 (= lt!2415379 (lemmaForallRegexDepthBiggerThanTransitive!133 (t!379377 (exprs!6359 (h!72050 zl!343))) lt!2415381 (contextDepth!300 (Context!11719 (t!379377 (exprs!6359 (h!72050 zl!343)))))))))

(assert (=> b!6608632 (forall!15673 (t!379377 (exprs!6359 (h!72050 zl!343))) lambda!368773)))

(declare-fun lt!2415380 () Unit!159235)

(assert (=> b!6608632 (= lt!2415380 lt!2415379)))

(declare-fun b!6608633 () Bool)

(assert (=> b!6608633 (= e!3998493 0)))

(assert (=> b!6608634 (= e!3998492 (forall!15673 (exprs!6359 (h!72050 zl!343)) lambda!368775))))

(assert (= (and d!2072417 c!1217957) b!6608632))

(assert (= (and d!2072417 (not c!1217957)) b!6608633))

(assert (= (and d!2072417 res!2709840) b!6608634))

(declare-fun m!7383600 () Bool)

(assert (=> b!6608632 m!7383600))

(declare-fun m!7383604 () Bool)

(assert (=> b!6608632 m!7383604))

(declare-fun m!7383606 () Bool)

(assert (=> b!6608632 m!7383606))

(declare-fun m!7383608 () Bool)

(assert (=> b!6608632 m!7383608))

(assert (=> b!6608632 m!7383604))

(declare-fun m!7383610 () Bool)

(assert (=> b!6608632 m!7383610))

(assert (=> b!6608632 m!7383608))

(assert (=> b!6608632 m!7383604))

(declare-fun m!7383612 () Bool)

(assert (=> b!6608634 m!7383612))

(assert (=> b!6607265 d!2072417))

(declare-fun d!2072429 () Bool)

(declare-fun res!2709848 () Bool)

(declare-fun e!3998508 () Bool)

(assert (=> d!2072429 (=> res!2709848 e!3998508)))

(assert (=> d!2072429 (= res!2709848 ((_ is Nil!65602) (t!379378 zl!343)))))

(assert (=> d!2072429 (= (forall!15674 (t!379378 zl!343) lambda!368669) e!3998508)))

(declare-fun b!6608658 () Bool)

(declare-fun e!3998509 () Bool)

(assert (=> b!6608658 (= e!3998508 e!3998509)))

(declare-fun res!2709849 () Bool)

(assert (=> b!6608658 (=> (not res!2709849) (not e!3998509))))

(assert (=> b!6608658 (= res!2709849 (dynLambda!26125 lambda!368669 (h!72050 (t!379378 zl!343))))))

(declare-fun b!6608659 () Bool)

(assert (=> b!6608659 (= e!3998509 (forall!15674 (t!379378 (t!379378 zl!343)) lambda!368669))))

(assert (= (and d!2072429 (not res!2709848)) b!6608658))

(assert (= (and b!6608658 res!2709849) b!6608659))

(declare-fun b_lambda!250051 () Bool)

(assert (=> (not b_lambda!250051) (not b!6608658)))

(declare-fun m!7383614 () Bool)

(assert (=> b!6608658 m!7383614))

(declare-fun m!7383616 () Bool)

(assert (=> b!6608659 m!7383616))

(assert (=> b!6607265 d!2072429))

(assert (=> b!6607439 d!2072039))

(assert (=> b!6607439 d!2071969))

(declare-fun b!6608660 () Bool)

(declare-fun e!3998512 () Bool)

(declare-fun call!578367 () Bool)

(assert (=> b!6608660 (= e!3998512 call!578367)))

(declare-fun d!2072431 () Bool)

(declare-fun res!2709853 () Bool)

(declare-fun e!3998514 () Bool)

(assert (=> d!2072431 (=> res!2709853 e!3998514)))

(assert (=> d!2072431 (= res!2709853 ((_ is ElementMatch!16475) (ite c!1217582 (regOne!33463 lt!2415134) (regOne!33462 lt!2415134))))))

(assert (=> d!2072431 (= (validRegex!8211 (ite c!1217582 (regOne!33463 lt!2415134) (regOne!33462 lt!2415134))) e!3998514)))

(declare-fun b!6608661 () Bool)

(declare-fun e!3998511 () Bool)

(declare-fun e!3998516 () Bool)

(assert (=> b!6608661 (= e!3998511 e!3998516)))

(declare-fun res!2709852 () Bool)

(assert (=> b!6608661 (=> (not res!2709852) (not e!3998516))))

(declare-fun call!578368 () Bool)

(assert (=> b!6608661 (= res!2709852 call!578368)))

(declare-fun b!6608662 () Bool)

(declare-fun e!3998513 () Bool)

(declare-fun call!578369 () Bool)

(assert (=> b!6608662 (= e!3998513 call!578369)))

(declare-fun b!6608663 () Bool)

(declare-fun e!3998515 () Bool)

(assert (=> b!6608663 (= e!3998515 e!3998512)))

(declare-fun res!2709850 () Bool)

(assert (=> b!6608663 (= res!2709850 (not (nullable!6468 (reg!16804 (ite c!1217582 (regOne!33463 lt!2415134) (regOne!33462 lt!2415134))))))))

(assert (=> b!6608663 (=> (not res!2709850) (not e!3998512))))

(declare-fun bm!578362 () Bool)

(assert (=> bm!578362 (= call!578369 call!578367)))

(declare-fun b!6608664 () Bool)

(declare-fun e!3998510 () Bool)

(assert (=> b!6608664 (= e!3998515 e!3998510)))

(declare-fun c!1217966 () Bool)

(assert (=> b!6608664 (= c!1217966 ((_ is Union!16475) (ite c!1217582 (regOne!33463 lt!2415134) (regOne!33462 lt!2415134))))))

(declare-fun bm!578363 () Bool)

(declare-fun c!1217965 () Bool)

(assert (=> bm!578363 (= call!578367 (validRegex!8211 (ite c!1217965 (reg!16804 (ite c!1217582 (regOne!33463 lt!2415134) (regOne!33462 lt!2415134))) (ite c!1217966 (regTwo!33463 (ite c!1217582 (regOne!33463 lt!2415134) (regOne!33462 lt!2415134))) (regTwo!33462 (ite c!1217582 (regOne!33463 lt!2415134) (regOne!33462 lt!2415134)))))))))

(declare-fun bm!578364 () Bool)

(assert (=> bm!578364 (= call!578368 (validRegex!8211 (ite c!1217966 (regOne!33463 (ite c!1217582 (regOne!33463 lt!2415134) (regOne!33462 lt!2415134))) (regOne!33462 (ite c!1217582 (regOne!33463 lt!2415134) (regOne!33462 lt!2415134))))))))

(declare-fun b!6608665 () Bool)

(declare-fun res!2709854 () Bool)

(assert (=> b!6608665 (=> res!2709854 e!3998511)))

(assert (=> b!6608665 (= res!2709854 (not ((_ is Concat!25320) (ite c!1217582 (regOne!33463 lt!2415134) (regOne!33462 lt!2415134)))))))

(assert (=> b!6608665 (= e!3998510 e!3998511)))

(declare-fun b!6608666 () Bool)

(assert (=> b!6608666 (= e!3998514 e!3998515)))

(assert (=> b!6608666 (= c!1217965 ((_ is Star!16475) (ite c!1217582 (regOne!33463 lt!2415134) (regOne!33462 lt!2415134))))))

(declare-fun b!6608667 () Bool)

(declare-fun res!2709851 () Bool)

(assert (=> b!6608667 (=> (not res!2709851) (not e!3998513))))

(assert (=> b!6608667 (= res!2709851 call!578368)))

(assert (=> b!6608667 (= e!3998510 e!3998513)))

(declare-fun b!6608668 () Bool)

(assert (=> b!6608668 (= e!3998516 call!578369)))

(assert (= (and d!2072431 (not res!2709853)) b!6608666))

(assert (= (and b!6608666 c!1217965) b!6608663))

(assert (= (and b!6608666 (not c!1217965)) b!6608664))

(assert (= (and b!6608663 res!2709850) b!6608660))

(assert (= (and b!6608664 c!1217966) b!6608667))

(assert (= (and b!6608664 (not c!1217966)) b!6608665))

(assert (= (and b!6608667 res!2709851) b!6608662))

(assert (= (and b!6608665 (not res!2709854)) b!6608661))

(assert (= (and b!6608661 res!2709852) b!6608668))

(assert (= (or b!6608662 b!6608668) bm!578362))

(assert (= (or b!6608667 b!6608661) bm!578364))

(assert (= (or b!6608660 bm!578362) bm!578363))

(declare-fun m!7383624 () Bool)

(assert (=> b!6608663 m!7383624))

(declare-fun m!7383626 () Bool)

(assert (=> bm!578363 m!7383626))

(declare-fun m!7383628 () Bool)

(assert (=> bm!578364 m!7383628))

(assert (=> bm!578060 d!2072431))

(declare-fun b!6608680 () Bool)

(declare-fun e!3998526 () Bool)

(declare-fun call!578372 () Bool)

(assert (=> b!6608680 (= e!3998526 call!578372)))

(declare-fun d!2072437 () Bool)

(declare-fun res!2709861 () Bool)

(declare-fun e!3998528 () Bool)

(assert (=> d!2072437 (=> res!2709861 e!3998528)))

(assert (=> d!2072437 (= res!2709861 ((_ is ElementMatch!16475) lt!2415195))))

(assert (=> d!2072437 (= (validRegex!8211 lt!2415195) e!3998528)))

(declare-fun b!6608681 () Bool)

(declare-fun e!3998525 () Bool)

(declare-fun e!3998530 () Bool)

(assert (=> b!6608681 (= e!3998525 e!3998530)))

(declare-fun res!2709860 () Bool)

(assert (=> b!6608681 (=> (not res!2709860) (not e!3998530))))

(declare-fun call!578373 () Bool)

(assert (=> b!6608681 (= res!2709860 call!578373)))

(declare-fun b!6608682 () Bool)

(declare-fun e!3998527 () Bool)

(declare-fun call!578374 () Bool)

(assert (=> b!6608682 (= e!3998527 call!578374)))

(declare-fun b!6608683 () Bool)

(declare-fun e!3998529 () Bool)

(assert (=> b!6608683 (= e!3998529 e!3998526)))

(declare-fun res!2709858 () Bool)

(assert (=> b!6608683 (= res!2709858 (not (nullable!6468 (reg!16804 lt!2415195))))))

(assert (=> b!6608683 (=> (not res!2709858) (not e!3998526))))

(declare-fun bm!578367 () Bool)

(assert (=> bm!578367 (= call!578374 call!578372)))

(declare-fun b!6608684 () Bool)

(declare-fun e!3998524 () Bool)

(assert (=> b!6608684 (= e!3998529 e!3998524)))

(declare-fun c!1217972 () Bool)

(assert (=> b!6608684 (= c!1217972 ((_ is Union!16475) lt!2415195))))

(declare-fun bm!578368 () Bool)

(declare-fun c!1217971 () Bool)

(assert (=> bm!578368 (= call!578372 (validRegex!8211 (ite c!1217971 (reg!16804 lt!2415195) (ite c!1217972 (regTwo!33463 lt!2415195) (regTwo!33462 lt!2415195)))))))

(declare-fun bm!578369 () Bool)

(assert (=> bm!578369 (= call!578373 (validRegex!8211 (ite c!1217972 (regOne!33463 lt!2415195) (regOne!33462 lt!2415195))))))

(declare-fun b!6608685 () Bool)

(declare-fun res!2709862 () Bool)

(assert (=> b!6608685 (=> res!2709862 e!3998525)))

(assert (=> b!6608685 (= res!2709862 (not ((_ is Concat!25320) lt!2415195)))))

(assert (=> b!6608685 (= e!3998524 e!3998525)))

(declare-fun b!6608686 () Bool)

(assert (=> b!6608686 (= e!3998528 e!3998529)))

(assert (=> b!6608686 (= c!1217971 ((_ is Star!16475) lt!2415195))))

(declare-fun b!6608687 () Bool)

(declare-fun res!2709859 () Bool)

(assert (=> b!6608687 (=> (not res!2709859) (not e!3998527))))

(assert (=> b!6608687 (= res!2709859 call!578373)))

(assert (=> b!6608687 (= e!3998524 e!3998527)))

(declare-fun b!6608688 () Bool)

(assert (=> b!6608688 (= e!3998530 call!578374)))

(assert (= (and d!2072437 (not res!2709861)) b!6608686))

(assert (= (and b!6608686 c!1217971) b!6608683))

(assert (= (and b!6608686 (not c!1217971)) b!6608684))

(assert (= (and b!6608683 res!2709858) b!6608680))

(assert (= (and b!6608684 c!1217972) b!6608687))

(assert (= (and b!6608684 (not c!1217972)) b!6608685))

(assert (= (and b!6608687 res!2709859) b!6608682))

(assert (= (and b!6608685 (not res!2709862)) b!6608681))

(assert (= (and b!6608681 res!2709860) b!6608688))

(assert (= (or b!6608682 b!6608688) bm!578367))

(assert (= (or b!6608687 b!6608681) bm!578369))

(assert (= (or b!6608680 bm!578367) bm!578368))

(declare-fun m!7383630 () Bool)

(assert (=> b!6608683 m!7383630))

(declare-fun m!7383632 () Bool)

(assert (=> bm!578368 m!7383632))

(declare-fun m!7383634 () Bool)

(assert (=> bm!578369 m!7383634))

(assert (=> d!2071653 d!2072437))

(declare-fun d!2072439 () Bool)

(declare-fun res!2709863 () Bool)

(declare-fun e!3998531 () Bool)

(assert (=> d!2072439 (=> res!2709863 e!3998531)))

(assert (=> d!2072439 (= res!2709863 ((_ is Nil!65601) (unfocusZipperList!1896 zl!343)))))

(assert (=> d!2072439 (= (forall!15673 (unfocusZipperList!1896 zl!343) lambda!368603) e!3998531)))

(declare-fun b!6608689 () Bool)

(declare-fun e!3998532 () Bool)

(assert (=> b!6608689 (= e!3998531 e!3998532)))

(declare-fun res!2709864 () Bool)

(assert (=> b!6608689 (=> (not res!2709864) (not e!3998532))))

(assert (=> b!6608689 (= res!2709864 (dynLambda!26126 lambda!368603 (h!72049 (unfocusZipperList!1896 zl!343))))))

(declare-fun b!6608690 () Bool)

(assert (=> b!6608690 (= e!3998532 (forall!15673 (t!379377 (unfocusZipperList!1896 zl!343)) lambda!368603))))

(assert (= (and d!2072439 (not res!2709863)) b!6608689))

(assert (= (and b!6608689 res!2709864) b!6608690))

(declare-fun b_lambda!250053 () Bool)

(assert (=> (not b_lambda!250053) (not b!6608689)))

(declare-fun m!7383636 () Bool)

(assert (=> b!6608689 m!7383636))

(declare-fun m!7383638 () Bool)

(assert (=> b!6608690 m!7383638))

(assert (=> d!2071653 d!2072439))

(declare-fun call!578378 () List!65725)

(declare-fun c!1217974 () Bool)

(declare-fun call!578379 () (InoxSet Context!11718))

(declare-fun c!1217975 () Bool)

(declare-fun c!1217976 () Bool)

(declare-fun bm!578370 () Bool)

(assert (=> bm!578370 (= call!578379 (derivationStepZipperDown!1723 (ite c!1217975 (regOne!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217976 (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (ite c!1217974 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (reg!16804 (h!72049 (exprs!6359 (h!72050 zl!343))))))) (ite (or c!1217975 c!1217976) (Context!11719 (t!379377 (exprs!6359 (h!72050 zl!343)))) (Context!11719 call!578378)) (h!72048 s!2326)))))

(declare-fun b!6608691 () Bool)

(declare-fun e!3998537 () (InoxSet Context!11718))

(declare-fun call!578377 () (InoxSet Context!11718))

(assert (=> b!6608691 (= e!3998537 call!578377)))

(declare-fun b!6608692 () Bool)

(declare-fun e!3998538 () (InoxSet Context!11718))

(declare-fun e!3998536 () (InoxSet Context!11718))

(assert (=> b!6608692 (= e!3998538 e!3998536)))

(assert (=> b!6608692 (= c!1217975 ((_ is Union!16475) (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun d!2072441 () Bool)

(declare-fun c!1217973 () Bool)

(assert (=> d!2072441 (= c!1217973 (and ((_ is ElementMatch!16475) (h!72049 (exprs!6359 (h!72050 zl!343)))) (= (c!1217326 (h!72049 (exprs!6359 (h!72050 zl!343)))) (h!72048 s!2326))))))

(assert (=> d!2072441 (= (derivationStepZipperDown!1723 (h!72049 (exprs!6359 (h!72050 zl!343))) (Context!11719 (t!379377 (exprs!6359 (h!72050 zl!343)))) (h!72048 s!2326)) e!3998538)))

(declare-fun b!6608693 () Bool)

(declare-fun e!3998533 () (InoxSet Context!11718))

(declare-fun e!3998534 () (InoxSet Context!11718))

(assert (=> b!6608693 (= e!3998533 e!3998534)))

(assert (=> b!6608693 (= c!1217974 ((_ is Concat!25320) (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun b!6608694 () Bool)

(assert (=> b!6608694 (= e!3998538 (store ((as const (Array Context!11718 Bool)) false) (Context!11719 (t!379377 (exprs!6359 (h!72050 zl!343)))) true))))

(declare-fun b!6608695 () Bool)

(declare-fun e!3998535 () Bool)

(assert (=> b!6608695 (= c!1217976 e!3998535)))

(declare-fun res!2709865 () Bool)

(assert (=> b!6608695 (=> (not res!2709865) (not e!3998535))))

(assert (=> b!6608695 (= res!2709865 ((_ is Concat!25320) (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(assert (=> b!6608695 (= e!3998536 e!3998533)))

(declare-fun bm!578371 () Bool)

(declare-fun call!578375 () (InoxSet Context!11718))

(assert (=> bm!578371 (= call!578375 call!578379)))

(declare-fun b!6608696 () Bool)

(declare-fun c!1217977 () Bool)

(assert (=> b!6608696 (= c!1217977 ((_ is Star!16475) (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(assert (=> b!6608696 (= e!3998534 e!3998537)))

(declare-fun bm!578372 () Bool)

(assert (=> bm!578372 (= call!578377 call!578375)))

(declare-fun call!578380 () List!65725)

(declare-fun bm!578373 () Bool)

(assert (=> bm!578373 (= call!578380 ($colon$colon!2316 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 (h!72050 zl!343))))) (ite (or c!1217976 c!1217974) (regTwo!33462 (h!72049 (exprs!6359 (h!72050 zl!343)))) (h!72049 (exprs!6359 (h!72050 zl!343))))))))

(declare-fun b!6608697 () Bool)

(assert (=> b!6608697 (= e!3998537 ((as const (Array Context!11718 Bool)) false))))

(declare-fun call!578376 () (InoxSet Context!11718))

(declare-fun bm!578374 () Bool)

(assert (=> bm!578374 (= call!578376 (derivationStepZipperDown!1723 (ite c!1217975 (regTwo!33463 (h!72049 (exprs!6359 (h!72050 zl!343)))) (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343))))) (ite c!1217975 (Context!11719 (t!379377 (exprs!6359 (h!72050 zl!343)))) (Context!11719 call!578380)) (h!72048 s!2326)))))

(declare-fun b!6608698 () Bool)

(assert (=> b!6608698 (= e!3998536 ((_ map or) call!578379 call!578376))))

(declare-fun b!6608699 () Bool)

(assert (=> b!6608699 (= e!3998533 ((_ map or) call!578376 call!578375))))

(declare-fun bm!578375 () Bool)

(assert (=> bm!578375 (= call!578378 call!578380)))

(declare-fun b!6608700 () Bool)

(assert (=> b!6608700 (= e!3998535 (nullable!6468 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343))))))))

(declare-fun b!6608701 () Bool)

(assert (=> b!6608701 (= e!3998534 call!578377)))

(assert (= (and d!2072441 c!1217973) b!6608694))

(assert (= (and d!2072441 (not c!1217973)) b!6608692))

(assert (= (and b!6608692 c!1217975) b!6608698))

(assert (= (and b!6608692 (not c!1217975)) b!6608695))

(assert (= (and b!6608695 res!2709865) b!6608700))

(assert (= (and b!6608695 c!1217976) b!6608699))

(assert (= (and b!6608695 (not c!1217976)) b!6608693))

(assert (= (and b!6608693 c!1217974) b!6608701))

(assert (= (and b!6608693 (not c!1217974)) b!6608696))

(assert (= (and b!6608696 c!1217977) b!6608691))

(assert (= (and b!6608696 (not c!1217977)) b!6608697))

(assert (= (or b!6608701 b!6608691) bm!578375))

(assert (= (or b!6608701 b!6608691) bm!578372))

(assert (= (or b!6608699 bm!578375) bm!578373))

(assert (= (or b!6608699 bm!578372) bm!578371))

(assert (= (or b!6608698 b!6608699) bm!578374))

(assert (= (or b!6608698 bm!578371) bm!578370))

(declare-fun m!7383640 () Bool)

(assert (=> bm!578370 m!7383640))

(assert (=> b!6608700 m!7382500))

(declare-fun m!7383642 () Bool)

(assert (=> bm!578374 m!7383642))

(declare-fun m!7383644 () Bool)

(assert (=> b!6608694 m!7383644))

(declare-fun m!7383646 () Bool)

(assert (=> bm!578373 m!7383646))

(assert (=> bm!578083 d!2072441))

(assert (=> d!2071803 d!2071807))

(declare-fun d!2072443 () Bool)

(assert (=> d!2072443 (= (flatMap!1980 lt!2415122 lambda!368578) (dynLambda!26122 lambda!368578 lt!2415123))))

(assert (=> d!2072443 true))

(declare-fun _$13!3878 () Unit!159235)

(assert (=> d!2072443 (= (choose!49351 lt!2415122 lt!2415123 lambda!368578) _$13!3878)))

(declare-fun b_lambda!250055 () Bool)

(assert (=> (not b_lambda!250055) (not d!2072443)))

(declare-fun bs!1694190 () Bool)

(assert (= bs!1694190 d!2072443))

(assert (=> bs!1694190 m!7381692))

(assert (=> bs!1694190 m!7382324))

(assert (=> d!2071803 d!2072443))

(declare-fun d!2072445 () Bool)

(assert (=> d!2072445 (= (isEmpty!37878 (unfocusZipperList!1896 zl!343)) ((_ is Nil!65601) (unfocusZipperList!1896 zl!343)))))

(assert (=> b!6606842 d!2072445))

(declare-fun d!2072447 () Bool)

(declare-fun c!1217978 () Bool)

(assert (=> d!2072447 (= c!1217978 (isEmpty!37882 (tail!12487 s!2326)))))

(declare-fun e!3998539 () Bool)

(assert (=> d!2072447 (= (matchZipper!2487 (derivationStepZipper!2441 lt!2415126 (head!13402 s!2326)) (tail!12487 s!2326)) e!3998539)))

(declare-fun b!6608702 () Bool)

(assert (=> b!6608702 (= e!3998539 (nullableZipper!2220 (derivationStepZipper!2441 lt!2415126 (head!13402 s!2326))))))

(declare-fun b!6608703 () Bool)

(assert (=> b!6608703 (= e!3998539 (matchZipper!2487 (derivationStepZipper!2441 (derivationStepZipper!2441 lt!2415126 (head!13402 s!2326)) (head!13402 (tail!12487 s!2326))) (tail!12487 (tail!12487 s!2326))))))

(assert (= (and d!2072447 c!1217978) b!6608702))

(assert (= (and d!2072447 (not c!1217978)) b!6608703))

(assert (=> d!2072447 m!7382454))

(assert (=> d!2072447 m!7382462))

(assert (=> b!6608702 m!7382572))

(declare-fun m!7383648 () Bool)

(assert (=> b!6608702 m!7383648))

(assert (=> b!6608703 m!7382454))

(assert (=> b!6608703 m!7382740))

(assert (=> b!6608703 m!7382572))

(assert (=> b!6608703 m!7382740))

(declare-fun m!7383650 () Bool)

(assert (=> b!6608703 m!7383650))

(assert (=> b!6608703 m!7382454))

(assert (=> b!6608703 m!7382744))

(assert (=> b!6608703 m!7383650))

(assert (=> b!6608703 m!7382744))

(declare-fun m!7383652 () Bool)

(assert (=> b!6608703 m!7383652))

(assert (=> b!6607546 d!2072447))

(declare-fun bs!1694198 () Bool)

(declare-fun d!2072449 () Bool)

(assert (= bs!1694198 (and d!2072449 d!2072003)))

(declare-fun lambda!368778 () Int)

(assert (=> bs!1694198 (= (= (head!13402 s!2326) (head!13402 (t!379376 s!2326))) (= lambda!368778 lambda!368705))))

(declare-fun bs!1694199 () Bool)

(assert (= bs!1694199 (and d!2072449 d!2072043)))

(assert (=> bs!1694199 (= (= (head!13402 s!2326) (head!13402 (t!379376 s!2326))) (= lambda!368778 lambda!368708))))

(declare-fun bs!1694201 () Bool)

(assert (= bs!1694201 (and d!2072449 b!6606487)))

(assert (=> bs!1694201 (= (= (head!13402 s!2326) (h!72048 s!2326)) (= lambda!368778 lambda!368578))))

(declare-fun bs!1694202 () Bool)

(assert (= bs!1694202 (and d!2072449 d!2072387)))

(assert (=> bs!1694202 (= lambda!368778 lambda!368758)))

(declare-fun bs!1694203 () Bool)

(assert (= bs!1694203 (and d!2072449 d!2071781)))

(assert (=> bs!1694203 (= (= (head!13402 s!2326) (h!72048 s!2326)) (= lambda!368778 lambda!368657))))

(declare-fun bs!1694204 () Bool)

(assert (= bs!1694204 (and d!2072449 d!2071785)))

(assert (=> bs!1694204 (= (= (head!13402 s!2326) (h!72048 s!2326)) (= lambda!368778 lambda!368661))))

(declare-fun bs!1694205 () Bool)

(assert (= bs!1694205 (and d!2072449 d!2072273)))

(assert (=> bs!1694205 (= (= (head!13402 s!2326) (head!13402 (t!379376 s!2326))) (= lambda!368778 lambda!368744))))

(declare-fun bs!1694207 () Bool)

(assert (= bs!1694207 (and d!2072449 d!2071963)))

(assert (=> bs!1694207 (= lambda!368778 lambda!368702)))

(assert (=> d!2072449 true))

(assert (=> d!2072449 (= (derivationStepZipper!2441 lt!2415126 (head!13402 s!2326)) (flatMap!1980 lt!2415126 lambda!368778))))

(declare-fun bs!1694208 () Bool)

(assert (= bs!1694208 d!2072449))

(declare-fun m!7383654 () Bool)

(assert (=> bs!1694208 m!7383654))

(assert (=> b!6607546 d!2072449))

(assert (=> b!6607546 d!2071965))

(assert (=> b!6607546 d!2071969))

(assert (=> b!6606885 d!2071903))

(declare-fun bs!1694209 () Bool)

(declare-fun d!2072451 () Bool)

(assert (= bs!1694209 (and d!2072451 d!2071985)))

(declare-fun lambda!368779 () Int)

(assert (=> bs!1694209 (= lambda!368779 lambda!368704)))

(declare-fun bs!1694210 () Bool)

(assert (= bs!1694210 (and d!2072451 d!2071783)))

(assert (=> bs!1694210 (= lambda!368779 lambda!368660)))

(declare-fun bs!1694211 () Bool)

(assert (= bs!1694211 (and d!2072451 d!2071903)))

(assert (=> bs!1694211 (= lambda!368779 lambda!368696)))

(declare-fun bs!1694213 () Bool)

(assert (= bs!1694213 (and d!2072451 d!2071851)))

(assert (=> bs!1694213 (= lambda!368779 lambda!368689)))

(declare-fun bs!1694214 () Bool)

(assert (= bs!1694214 (and d!2072451 b!6608634)))

(assert (=> bs!1694214 (not (= lambda!368779 lambda!368775))))

(declare-fun bs!1694216 () Bool)

(assert (= bs!1694216 (and d!2072451 b!6608632)))

(assert (=> bs!1694216 (not (= lambda!368779 lambda!368773))))

(declare-fun bs!1694218 () Bool)

(assert (= bs!1694218 (and d!2072451 d!2072321)))

(assert (=> bs!1694218 (= lambda!368779 lambda!368752)))

(declare-fun bs!1694219 () Bool)

(assert (= bs!1694219 (and d!2072451 d!2071909)))

(assert (=> bs!1694219 (= lambda!368779 lambda!368697)))

(declare-fun bs!1694220 () Bool)

(assert (= bs!1694220 (and d!2072451 d!2071653)))

(assert (=> bs!1694220 (= lambda!368779 lambda!368603)))

(declare-fun bs!1694221 () Bool)

(assert (= bs!1694221 (and d!2072451 d!2072275)))

(assert (=> bs!1694221 (= lambda!368779 lambda!368745)))

(declare-fun bs!1694222 () Bool)

(assert (= bs!1694222 (and d!2072451 d!2071951)))

(assert (=> bs!1694222 (= lambda!368779 lambda!368700)))

(declare-fun bs!1694224 () Bool)

(assert (= bs!1694224 (and d!2072451 d!2071661)))

(assert (=> bs!1694224 (= lambda!368779 lambda!368608)))

(declare-fun bs!1694226 () Bool)

(assert (= bs!1694226 (and d!2072451 d!2071953)))

(assert (=> bs!1694226 (= lambda!368779 lambda!368701)))

(declare-fun lt!2415384 () List!65725)

(assert (=> d!2072451 (forall!15673 lt!2415384 lambda!368779)))

(declare-fun e!3998540 () List!65725)

(assert (=> d!2072451 (= lt!2415384 e!3998540)))

(declare-fun c!1217979 () Bool)

(assert (=> d!2072451 (= c!1217979 ((_ is Cons!65602) (t!379378 zl!343)))))

(assert (=> d!2072451 (= (unfocusZipperList!1896 (t!379378 zl!343)) lt!2415384)))

(declare-fun b!6608704 () Bool)

(assert (=> b!6608704 (= e!3998540 (Cons!65601 (generalisedConcat!2072 (exprs!6359 (h!72050 (t!379378 zl!343)))) (unfocusZipperList!1896 (t!379378 (t!379378 zl!343)))))))

(declare-fun b!6608705 () Bool)

(assert (=> b!6608705 (= e!3998540 Nil!65601)))

(assert (= (and d!2072451 c!1217979) b!6608704))

(assert (= (and d!2072451 (not c!1217979)) b!6608705))

(declare-fun m!7383656 () Bool)

(assert (=> d!2072451 m!7383656))

(declare-fun m!7383658 () Bool)

(assert (=> b!6608704 m!7383658))

(declare-fun m!7383660 () Bool)

(assert (=> b!6608704 m!7383660))

(assert (=> b!6606885 d!2072451))

(declare-fun d!2072453 () Bool)

(assert (=> d!2072453 (= (maxBigInt!0 (ite c!1217663 call!578112 call!578109) (ite c!1217663 call!578109 call!578112)) (ite (>= (ite c!1217663 call!578112 call!578109) (ite c!1217663 call!578109 call!578112)) (ite c!1217663 call!578112 call!578109) (ite c!1217663 call!578109 call!578112)))))

(assert (=> bm!578109 d!2072453))

(declare-fun b!6608706 () Bool)

(declare-fun e!3998543 () Bool)

(declare-fun call!578381 () Bool)

(assert (=> b!6608706 (= e!3998543 call!578381)))

(declare-fun d!2072455 () Bool)

(declare-fun res!2709869 () Bool)

(declare-fun e!3998545 () Bool)

(assert (=> d!2072455 (=> res!2709869 e!3998545)))

(assert (=> d!2072455 (= res!2709869 ((_ is ElementMatch!16475) (ite c!1217605 (reg!16804 (regTwo!33462 r!7292)) (ite c!1217606 (regTwo!33463 (regTwo!33462 r!7292)) (regTwo!33462 (regTwo!33462 r!7292))))))))

(assert (=> d!2072455 (= (validRegex!8211 (ite c!1217605 (reg!16804 (regTwo!33462 r!7292)) (ite c!1217606 (regTwo!33463 (regTwo!33462 r!7292)) (regTwo!33462 (regTwo!33462 r!7292))))) e!3998545)))

(declare-fun b!6608707 () Bool)

(declare-fun e!3998542 () Bool)

(declare-fun e!3998547 () Bool)

(assert (=> b!6608707 (= e!3998542 e!3998547)))

(declare-fun res!2709868 () Bool)

(assert (=> b!6608707 (=> (not res!2709868) (not e!3998547))))

(declare-fun call!578382 () Bool)

(assert (=> b!6608707 (= res!2709868 call!578382)))

(declare-fun b!6608708 () Bool)

(declare-fun e!3998544 () Bool)

(declare-fun call!578383 () Bool)

(assert (=> b!6608708 (= e!3998544 call!578383)))

(declare-fun b!6608709 () Bool)

(declare-fun e!3998546 () Bool)

(assert (=> b!6608709 (= e!3998546 e!3998543)))

(declare-fun res!2709866 () Bool)

(assert (=> b!6608709 (= res!2709866 (not (nullable!6468 (reg!16804 (ite c!1217605 (reg!16804 (regTwo!33462 r!7292)) (ite c!1217606 (regTwo!33463 (regTwo!33462 r!7292)) (regTwo!33462 (regTwo!33462 r!7292))))))))))

(assert (=> b!6608709 (=> (not res!2709866) (not e!3998543))))

(declare-fun bm!578376 () Bool)

(assert (=> bm!578376 (= call!578383 call!578381)))

(declare-fun b!6608710 () Bool)

(declare-fun e!3998541 () Bool)

(assert (=> b!6608710 (= e!3998546 e!3998541)))

(declare-fun c!1217981 () Bool)

(assert (=> b!6608710 (= c!1217981 ((_ is Union!16475) (ite c!1217605 (reg!16804 (regTwo!33462 r!7292)) (ite c!1217606 (regTwo!33463 (regTwo!33462 r!7292)) (regTwo!33462 (regTwo!33462 r!7292))))))))

(declare-fun c!1217980 () Bool)

(declare-fun bm!578377 () Bool)

(assert (=> bm!578377 (= call!578381 (validRegex!8211 (ite c!1217980 (reg!16804 (ite c!1217605 (reg!16804 (regTwo!33462 r!7292)) (ite c!1217606 (regTwo!33463 (regTwo!33462 r!7292)) (regTwo!33462 (regTwo!33462 r!7292))))) (ite c!1217981 (regTwo!33463 (ite c!1217605 (reg!16804 (regTwo!33462 r!7292)) (ite c!1217606 (regTwo!33463 (regTwo!33462 r!7292)) (regTwo!33462 (regTwo!33462 r!7292))))) (regTwo!33462 (ite c!1217605 (reg!16804 (regTwo!33462 r!7292)) (ite c!1217606 (regTwo!33463 (regTwo!33462 r!7292)) (regTwo!33462 (regTwo!33462 r!7292)))))))))))

(declare-fun bm!578378 () Bool)

(assert (=> bm!578378 (= call!578382 (validRegex!8211 (ite c!1217981 (regOne!33463 (ite c!1217605 (reg!16804 (regTwo!33462 r!7292)) (ite c!1217606 (regTwo!33463 (regTwo!33462 r!7292)) (regTwo!33462 (regTwo!33462 r!7292))))) (regOne!33462 (ite c!1217605 (reg!16804 (regTwo!33462 r!7292)) (ite c!1217606 (regTwo!33463 (regTwo!33462 r!7292)) (regTwo!33462 (regTwo!33462 r!7292))))))))))

(declare-fun b!6608711 () Bool)

(declare-fun res!2709870 () Bool)

(assert (=> b!6608711 (=> res!2709870 e!3998542)))

(assert (=> b!6608711 (= res!2709870 (not ((_ is Concat!25320) (ite c!1217605 (reg!16804 (regTwo!33462 r!7292)) (ite c!1217606 (regTwo!33463 (regTwo!33462 r!7292)) (regTwo!33462 (regTwo!33462 r!7292)))))))))

(assert (=> b!6608711 (= e!3998541 e!3998542)))

(declare-fun b!6608712 () Bool)

(assert (=> b!6608712 (= e!3998545 e!3998546)))

(assert (=> b!6608712 (= c!1217980 ((_ is Star!16475) (ite c!1217605 (reg!16804 (regTwo!33462 r!7292)) (ite c!1217606 (regTwo!33463 (regTwo!33462 r!7292)) (regTwo!33462 (regTwo!33462 r!7292))))))))

(declare-fun b!6608713 () Bool)

(declare-fun res!2709867 () Bool)

(assert (=> b!6608713 (=> (not res!2709867) (not e!3998544))))

(assert (=> b!6608713 (= res!2709867 call!578382)))

(assert (=> b!6608713 (= e!3998541 e!3998544)))

(declare-fun b!6608714 () Bool)

(assert (=> b!6608714 (= e!3998547 call!578383)))

(assert (= (and d!2072455 (not res!2709869)) b!6608712))

(assert (= (and b!6608712 c!1217980) b!6608709))

(assert (= (and b!6608712 (not c!1217980)) b!6608710))

(assert (= (and b!6608709 res!2709866) b!6608706))

(assert (= (and b!6608710 c!1217981) b!6608713))

(assert (= (and b!6608710 (not c!1217981)) b!6608711))

(assert (= (and b!6608713 res!2709867) b!6608708))

(assert (= (and b!6608711 (not res!2709870)) b!6608707))

(assert (= (and b!6608707 res!2709868) b!6608714))

(assert (= (or b!6608708 b!6608714) bm!578376))

(assert (= (or b!6608713 b!6608707) bm!578378))

(assert (= (or b!6608706 bm!578376) bm!578377))

(declare-fun m!7383662 () Bool)

(assert (=> b!6608709 m!7383662))

(declare-fun m!7383664 () Bool)

(assert (=> bm!578377 m!7383664))

(declare-fun m!7383666 () Bool)

(assert (=> bm!578378 m!7383666))

(assert (=> bm!578074 d!2072455))

(assert (=> d!2071825 d!2072379))

(assert (=> d!2071825 d!2071829))

(assert (=> d!2071887 d!2072017))

(assert (=> b!6607432 d!2072039))

(assert (=> b!6607432 d!2071969))

(assert (=> b!6607490 d!2071965))

(declare-fun d!2072457 () Bool)

(assert (=> d!2072457 (= (isDefined!13069 lt!2415288) (not (isEmpty!37881 lt!2415288)))))

(declare-fun bs!1694240 () Bool)

(assert (= bs!1694240 d!2072457))

(declare-fun m!7383668 () Bool)

(assert (=> bs!1694240 m!7383668))

(assert (=> b!6607287 d!2072457))

(declare-fun bs!1694243 () Bool)

(declare-fun d!2072459 () Bool)

(assert (= bs!1694243 (and d!2072459 d!2071985)))

(declare-fun lambda!368781 () Int)

(assert (=> bs!1694243 (= lambda!368781 lambda!368704)))

(declare-fun bs!1694245 () Bool)

(assert (= bs!1694245 (and d!2072459 d!2071783)))

(assert (=> bs!1694245 (= lambda!368781 lambda!368660)))

(declare-fun bs!1694246 () Bool)

(assert (= bs!1694246 (and d!2072459 d!2071903)))

(assert (=> bs!1694246 (= lambda!368781 lambda!368696)))

(declare-fun bs!1694247 () Bool)

(assert (= bs!1694247 (and d!2072459 d!2071851)))

(assert (=> bs!1694247 (= lambda!368781 lambda!368689)))

(declare-fun bs!1694249 () Bool)

(assert (= bs!1694249 (and d!2072459 d!2072451)))

(assert (=> bs!1694249 (= lambda!368781 lambda!368779)))

(declare-fun bs!1694250 () Bool)

(assert (= bs!1694250 (and d!2072459 b!6608634)))

(assert (=> bs!1694250 (not (= lambda!368781 lambda!368775))))

(declare-fun bs!1694251 () Bool)

(assert (= bs!1694251 (and d!2072459 b!6608632)))

(assert (=> bs!1694251 (not (= lambda!368781 lambda!368773))))

(declare-fun bs!1694252 () Bool)

(assert (= bs!1694252 (and d!2072459 d!2072321)))

(assert (=> bs!1694252 (= lambda!368781 lambda!368752)))

(declare-fun bs!1694253 () Bool)

(assert (= bs!1694253 (and d!2072459 d!2071909)))

(assert (=> bs!1694253 (= lambda!368781 lambda!368697)))

(declare-fun bs!1694255 () Bool)

(assert (= bs!1694255 (and d!2072459 d!2071653)))

(assert (=> bs!1694255 (= lambda!368781 lambda!368603)))

(declare-fun bs!1694256 () Bool)

(assert (= bs!1694256 (and d!2072459 d!2072275)))

(assert (=> bs!1694256 (= lambda!368781 lambda!368745)))

(declare-fun bs!1694257 () Bool)

(assert (= bs!1694257 (and d!2072459 d!2071951)))

(assert (=> bs!1694257 (= lambda!368781 lambda!368700)))

(declare-fun bs!1694258 () Bool)

(assert (= bs!1694258 (and d!2072459 d!2071661)))

(assert (=> bs!1694258 (= lambda!368781 lambda!368608)))

(declare-fun bs!1694259 () Bool)

(assert (= bs!1694259 (and d!2072459 d!2071953)))

(assert (=> bs!1694259 (= lambda!368781 lambda!368701)))

(declare-fun b!6608715 () Bool)

(declare-fun e!3998553 () Bool)

(declare-fun lt!2415385 () Regex!16475)

(assert (=> b!6608715 (= e!3998553 (isEmptyLang!1861 lt!2415385))))

(declare-fun b!6608716 () Bool)

(declare-fun e!3998548 () Regex!16475)

(assert (=> b!6608716 (= e!3998548 (Union!16475 (h!72049 (t!379377 (unfocusZipperList!1896 zl!343))) (generalisedUnion!2319 (t!379377 (t!379377 (unfocusZipperList!1896 zl!343))))))))

(declare-fun b!6608717 () Bool)

(declare-fun e!3998551 () Regex!16475)

(assert (=> b!6608717 (= e!3998551 (h!72049 (t!379377 (unfocusZipperList!1896 zl!343))))))

(declare-fun b!6608718 () Bool)

(declare-fun e!3998552 () Bool)

(assert (=> b!6608718 (= e!3998552 (isEmpty!37878 (t!379377 (t!379377 (unfocusZipperList!1896 zl!343)))))))

(declare-fun b!6608719 () Bool)

(assert (=> b!6608719 (= e!3998551 e!3998548)))

(declare-fun c!1217985 () Bool)

(assert (=> b!6608719 (= c!1217985 ((_ is Cons!65601) (t!379377 (unfocusZipperList!1896 zl!343))))))

(declare-fun b!6608720 () Bool)

(declare-fun e!3998549 () Bool)

(assert (=> b!6608720 (= e!3998553 e!3998549)))

(declare-fun c!1217984 () Bool)

(assert (=> b!6608720 (= c!1217984 (isEmpty!37878 (tail!12486 (t!379377 (unfocusZipperList!1896 zl!343)))))))

(declare-fun b!6608721 () Bool)

(assert (=> b!6608721 (= e!3998549 (= lt!2415385 (head!13401 (t!379377 (unfocusZipperList!1896 zl!343)))))))

(declare-fun b!6608723 () Bool)

(assert (=> b!6608723 (= e!3998549 (isUnion!1291 lt!2415385))))

(declare-fun b!6608724 () Bool)

(declare-fun e!3998550 () Bool)

(assert (=> b!6608724 (= e!3998550 e!3998553)))

(declare-fun c!1217982 () Bool)

(assert (=> b!6608724 (= c!1217982 (isEmpty!37878 (t!379377 (unfocusZipperList!1896 zl!343))))))

(declare-fun b!6608722 () Bool)

(assert (=> b!6608722 (= e!3998548 EmptyLang!16475)))

(assert (=> d!2072459 e!3998550))

(declare-fun res!2709871 () Bool)

(assert (=> d!2072459 (=> (not res!2709871) (not e!3998550))))

(assert (=> d!2072459 (= res!2709871 (validRegex!8211 lt!2415385))))

(assert (=> d!2072459 (= lt!2415385 e!3998551)))

(declare-fun c!1217983 () Bool)

(assert (=> d!2072459 (= c!1217983 e!3998552)))

(declare-fun res!2709872 () Bool)

(assert (=> d!2072459 (=> (not res!2709872) (not e!3998552))))

(assert (=> d!2072459 (= res!2709872 ((_ is Cons!65601) (t!379377 (unfocusZipperList!1896 zl!343))))))

(assert (=> d!2072459 (forall!15673 (t!379377 (unfocusZipperList!1896 zl!343)) lambda!368781)))

(assert (=> d!2072459 (= (generalisedUnion!2319 (t!379377 (unfocusZipperList!1896 zl!343))) lt!2415385)))

(assert (= (and d!2072459 res!2709872) b!6608718))

(assert (= (and d!2072459 c!1217983) b!6608717))

(assert (= (and d!2072459 (not c!1217983)) b!6608719))

(assert (= (and b!6608719 c!1217985) b!6608716))

(assert (= (and b!6608719 (not c!1217985)) b!6608722))

(assert (= (and d!2072459 res!2709871) b!6608724))

(assert (= (and b!6608724 c!1217982) b!6608715))

(assert (= (and b!6608724 (not c!1217982)) b!6608720))

(assert (= (and b!6608720 c!1217984) b!6608721))

(assert (= (and b!6608720 (not c!1217984)) b!6608723))

(declare-fun m!7383676 () Bool)

(assert (=> b!6608721 m!7383676))

(declare-fun m!7383678 () Bool)

(assert (=> d!2072459 m!7383678))

(declare-fun m!7383680 () Bool)

(assert (=> d!2072459 m!7383680))

(declare-fun m!7383682 () Bool)

(assert (=> b!6608718 m!7383682))

(declare-fun m!7383684 () Bool)

(assert (=> b!6608716 m!7383684))

(declare-fun m!7383686 () Bool)

(assert (=> b!6608720 m!7383686))

(assert (=> b!6608720 m!7383686))

(declare-fun m!7383688 () Bool)

(assert (=> b!6608720 m!7383688))

(assert (=> b!6608724 m!7381906))

(declare-fun m!7383690 () Bool)

(assert (=> b!6608715 m!7383690))

(declare-fun m!7383692 () Bool)

(assert (=> b!6608723 m!7383692))

(assert (=> b!6606834 d!2072459))

(assert (=> d!2071901 d!2072061))

(assert (=> d!2071779 d!2071775))

(declare-fun d!2072463 () Bool)

(assert (=> d!2072463 (= (flatMap!1980 lt!2415126 lambda!368578) (dynLambda!26122 lambda!368578 lt!2415130))))

(assert (=> d!2072463 true))

(declare-fun _$13!3879 () Unit!159235)

(assert (=> d!2072463 (= (choose!49351 lt!2415126 lt!2415130 lambda!368578) _$13!3879)))

(declare-fun b_lambda!250057 () Bool)

(assert (=> (not b_lambda!250057) (not d!2072463)))

(declare-fun bs!1694260 () Bool)

(assert (= bs!1694260 d!2072463))

(assert (=> bs!1694260 m!7381598))

(assert (=> bs!1694260 m!7382256))

(assert (=> d!2071779 d!2072463))

(declare-fun d!2072467 () Bool)

(assert (=> d!2072467 (= (head!13401 (exprs!6359 (h!72050 zl!343))) (h!72049 (exprs!6359 (h!72050 zl!343))))))

(assert (=> b!6607574 d!2072467))

(declare-fun d!2072469 () Bool)

(assert (=> d!2072469 true))

(assert (=> d!2072469 true))

(declare-fun res!2709878 () Bool)

(assert (=> d!2072469 (= (choose!49347 lambda!368576) res!2709878)))

(assert (=> d!2071751 d!2072469))

(declare-fun d!2072473 () Bool)

(declare-fun res!2709881 () Bool)

(declare-fun e!3998566 () Bool)

(assert (=> d!2072473 (=> res!2709881 e!3998566)))

(assert (=> d!2072473 (= res!2709881 ((_ is Nil!65601) (exprs!6359 (h!72050 zl!343))))))

(assert (=> d!2072473 (= (forall!15673 (exprs!6359 (h!72050 zl!343)) lambda!368660) e!3998566)))

(declare-fun b!6608742 () Bool)

(declare-fun e!3998567 () Bool)

(assert (=> b!6608742 (= e!3998566 e!3998567)))

(declare-fun res!2709882 () Bool)

(assert (=> b!6608742 (=> (not res!2709882) (not e!3998567))))

(assert (=> b!6608742 (= res!2709882 (dynLambda!26126 lambda!368660 (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun b!6608743 () Bool)

(assert (=> b!6608743 (= e!3998567 (forall!15673 (t!379377 (exprs!6359 (h!72050 zl!343))) lambda!368660))))

(assert (= (and d!2072473 (not res!2709881)) b!6608742))

(assert (= (and b!6608742 res!2709882) b!6608743))

(declare-fun b_lambda!250059 () Bool)

(assert (=> (not b_lambda!250059) (not b!6608742)))

(declare-fun m!7383698 () Bool)

(assert (=> b!6608742 m!7383698))

(declare-fun m!7383700 () Bool)

(assert (=> b!6608743 m!7383700))

(assert (=> d!2071783 d!2072473))

(declare-fun d!2072475 () Bool)

(assert (=> d!2072475 (= (isEmptyExpr!1853 lt!2415328) ((_ is EmptyExpr!16475) lt!2415328))))

(assert (=> b!6607647 d!2072475))

(assert (=> b!6607544 d!2071965))

(declare-fun d!2072477 () Bool)

(declare-fun e!3998568 () Bool)

(assert (=> d!2072477 e!3998568))

(declare-fun c!1217992 () Bool)

(assert (=> d!2072477 (= c!1217992 ((_ is EmptyExpr!16475) (derivativeStep!5159 lt!2415143 (head!13402 s!2326))))))

(declare-fun lt!2415387 () Bool)

(declare-fun e!3998574 () Bool)

(assert (=> d!2072477 (= lt!2415387 e!3998574)))

(declare-fun c!1217991 () Bool)

(assert (=> d!2072477 (= c!1217991 (isEmpty!37882 (tail!12487 s!2326)))))

(assert (=> d!2072477 (validRegex!8211 (derivativeStep!5159 lt!2415143 (head!13402 s!2326)))))

(assert (=> d!2072477 (= (matchR!8658 (derivativeStep!5159 lt!2415143 (head!13402 s!2326)) (tail!12487 s!2326)) lt!2415387)))

(declare-fun b!6608744 () Bool)

(declare-fun e!3998569 () Bool)

(assert (=> b!6608744 (= e!3998569 (= (head!13402 (tail!12487 s!2326)) (c!1217326 (derivativeStep!5159 lt!2415143 (head!13402 s!2326)))))))

(declare-fun b!6608745 () Bool)

(declare-fun e!3998571 () Bool)

(assert (=> b!6608745 (= e!3998571 (not lt!2415387))))

(declare-fun b!6608746 () Bool)

(declare-fun res!2709889 () Bool)

(assert (=> b!6608746 (=> (not res!2709889) (not e!3998569))))

(assert (=> b!6608746 (= res!2709889 (isEmpty!37882 (tail!12487 (tail!12487 s!2326))))))

(declare-fun bm!578381 () Bool)

(declare-fun call!578386 () Bool)

(assert (=> bm!578381 (= call!578386 (isEmpty!37882 (tail!12487 s!2326)))))

(declare-fun b!6608747 () Bool)

(declare-fun e!3998573 () Bool)

(declare-fun e!3998572 () Bool)

(assert (=> b!6608747 (= e!3998573 e!3998572)))

(declare-fun res!2709890 () Bool)

(assert (=> b!6608747 (=> res!2709890 e!3998572)))

(assert (=> b!6608747 (= res!2709890 call!578386)))

(declare-fun b!6608748 () Bool)

(declare-fun res!2709888 () Bool)

(declare-fun e!3998570 () Bool)

(assert (=> b!6608748 (=> res!2709888 e!3998570)))

(assert (=> b!6608748 (= res!2709888 (not ((_ is ElementMatch!16475) (derivativeStep!5159 lt!2415143 (head!13402 s!2326)))))))

(assert (=> b!6608748 (= e!3998571 e!3998570)))

(declare-fun b!6608749 () Bool)

(assert (=> b!6608749 (= e!3998568 e!3998571)))

(declare-fun c!1217993 () Bool)

(assert (=> b!6608749 (= c!1217993 ((_ is EmptyLang!16475) (derivativeStep!5159 lt!2415143 (head!13402 s!2326))))))

(declare-fun b!6608750 () Bool)

(assert (=> b!6608750 (= e!3998570 e!3998573)))

(declare-fun res!2709886 () Bool)

(assert (=> b!6608750 (=> (not res!2709886) (not e!3998573))))

(assert (=> b!6608750 (= res!2709886 (not lt!2415387))))

(declare-fun b!6608751 () Bool)

(declare-fun res!2709887 () Bool)

(assert (=> b!6608751 (=> res!2709887 e!3998570)))

(assert (=> b!6608751 (= res!2709887 e!3998569)))

(declare-fun res!2709884 () Bool)

(assert (=> b!6608751 (=> (not res!2709884) (not e!3998569))))

(assert (=> b!6608751 (= res!2709884 lt!2415387)))

(declare-fun b!6608752 () Bool)

(assert (=> b!6608752 (= e!3998574 (matchR!8658 (derivativeStep!5159 (derivativeStep!5159 lt!2415143 (head!13402 s!2326)) (head!13402 (tail!12487 s!2326))) (tail!12487 (tail!12487 s!2326))))))

(declare-fun b!6608753 () Bool)

(declare-fun res!2709885 () Bool)

(assert (=> b!6608753 (=> res!2709885 e!3998572)))

(assert (=> b!6608753 (= res!2709885 (not (isEmpty!37882 (tail!12487 (tail!12487 s!2326)))))))

(declare-fun b!6608754 () Bool)

(assert (=> b!6608754 (= e!3998574 (nullable!6468 (derivativeStep!5159 lt!2415143 (head!13402 s!2326))))))

(declare-fun b!6608755 () Bool)

(declare-fun res!2709883 () Bool)

(assert (=> b!6608755 (=> (not res!2709883) (not e!3998569))))

(assert (=> b!6608755 (= res!2709883 (not call!578386))))

(declare-fun b!6608756 () Bool)

(assert (=> b!6608756 (= e!3998568 (= lt!2415387 call!578386))))

(declare-fun b!6608757 () Bool)

(assert (=> b!6608757 (= e!3998572 (not (= (head!13402 (tail!12487 s!2326)) (c!1217326 (derivativeStep!5159 lt!2415143 (head!13402 s!2326))))))))

(assert (= (and d!2072477 c!1217991) b!6608754))

(assert (= (and d!2072477 (not c!1217991)) b!6608752))

(assert (= (and d!2072477 c!1217992) b!6608756))

(assert (= (and d!2072477 (not c!1217992)) b!6608749))

(assert (= (and b!6608749 c!1217993) b!6608745))

(assert (= (and b!6608749 (not c!1217993)) b!6608748))

(assert (= (and b!6608748 (not res!2709888)) b!6608751))

(assert (= (and b!6608751 res!2709884) b!6608755))

(assert (= (and b!6608755 res!2709883) b!6608746))

(assert (= (and b!6608746 res!2709889) b!6608744))

(assert (= (and b!6608751 (not res!2709887)) b!6608750))

(assert (= (and b!6608750 res!2709886) b!6608747))

(assert (= (and b!6608747 (not res!2709890)) b!6608753))

(assert (= (and b!6608753 (not res!2709885)) b!6608757))

(assert (= (or b!6608756 b!6608747 b!6608755) bm!578381))

(assert (=> b!6608752 m!7382454))

(assert (=> b!6608752 m!7382740))

(assert (=> b!6608752 m!7382452))

(assert (=> b!6608752 m!7382740))

(declare-fun m!7383704 () Bool)

(assert (=> b!6608752 m!7383704))

(assert (=> b!6608752 m!7382454))

(assert (=> b!6608752 m!7382744))

(assert (=> b!6608752 m!7383704))

(assert (=> b!6608752 m!7382744))

(declare-fun m!7383714 () Bool)

(assert (=> b!6608752 m!7383714))

(assert (=> b!6608754 m!7382452))

(declare-fun m!7383720 () Bool)

(assert (=> b!6608754 m!7383720))

(assert (=> bm!578381 m!7382454))

(assert (=> bm!578381 m!7382462))

(assert (=> b!6608744 m!7382454))

(assert (=> b!6608744 m!7382740))

(assert (=> b!6608746 m!7382454))

(assert (=> b!6608746 m!7382744))

(assert (=> b!6608746 m!7382744))

(declare-fun m!7383726 () Bool)

(assert (=> b!6608746 m!7383726))

(assert (=> d!2072477 m!7382454))

(assert (=> d!2072477 m!7382462))

(assert (=> d!2072477 m!7382452))

(declare-fun m!7383728 () Bool)

(assert (=> d!2072477 m!7383728))

(assert (=> b!6608757 m!7382454))

(assert (=> b!6608757 m!7382740))

(assert (=> b!6608753 m!7382454))

(assert (=> b!6608753 m!7382744))

(assert (=> b!6608753 m!7382744))

(assert (=> b!6608753 m!7383726))

(assert (=> b!6607438 d!2072477))

(declare-fun b!6608815 () Bool)

(declare-fun e!3998611 () Regex!16475)

(assert (=> b!6608815 (= e!3998611 EmptyLang!16475)))

(declare-fun bm!578395 () Bool)

(declare-fun call!578401 () Regex!16475)

(declare-fun call!578400 () Regex!16475)

(assert (=> bm!578395 (= call!578401 call!578400)))

(declare-fun bm!578396 () Bool)

(declare-fun call!578402 () Regex!16475)

(assert (=> bm!578396 (= call!578400 call!578402)))

(declare-fun b!6608816 () Bool)

(declare-fun e!3998610 () Regex!16475)

(assert (=> b!6608816 (= e!3998611 e!3998610)))

(declare-fun c!1218017 () Bool)

(assert (=> b!6608816 (= c!1218017 ((_ is ElementMatch!16475) lt!2415143))))

(declare-fun call!578403 () Regex!16475)

(declare-fun c!1218020 () Bool)

(declare-fun bm!578397 () Bool)

(assert (=> bm!578397 (= call!578403 (derivativeStep!5159 (ite c!1218020 (regOne!33463 lt!2415143) (regOne!33462 lt!2415143)) (head!13402 s!2326)))))

(declare-fun b!6608817 () Bool)

(assert (=> b!6608817 (= c!1218020 ((_ is Union!16475) lt!2415143))))

(declare-fun e!3998612 () Regex!16475)

(assert (=> b!6608817 (= e!3998610 e!3998612)))

(declare-fun b!6608818 () Bool)

(declare-fun e!3998609 () Regex!16475)

(assert (=> b!6608818 (= e!3998609 (Union!16475 (Concat!25320 call!578401 (regTwo!33462 lt!2415143)) EmptyLang!16475))))

(declare-fun b!6608819 () Bool)

(declare-fun e!3998608 () Regex!16475)

(assert (=> b!6608819 (= e!3998612 e!3998608)))

(declare-fun c!1218021 () Bool)

(assert (=> b!6608819 (= c!1218021 ((_ is Star!16475) lt!2415143))))

(declare-fun d!2072481 () Bool)

(declare-fun lt!2415393 () Regex!16475)

(assert (=> d!2072481 (validRegex!8211 lt!2415393)))

(assert (=> d!2072481 (= lt!2415393 e!3998611)))

(declare-fun c!1218018 () Bool)

(assert (=> d!2072481 (= c!1218018 (or ((_ is EmptyExpr!16475) lt!2415143) ((_ is EmptyLang!16475) lt!2415143)))))

(assert (=> d!2072481 (validRegex!8211 lt!2415143)))

(assert (=> d!2072481 (= (derivativeStep!5159 lt!2415143 (head!13402 s!2326)) lt!2415393)))

(declare-fun b!6608820 () Bool)

(assert (=> b!6608820 (= e!3998609 (Union!16475 (Concat!25320 call!578403 (regTwo!33462 lt!2415143)) call!578401))))

(declare-fun b!6608821 () Bool)

(assert (=> b!6608821 (= e!3998608 (Concat!25320 call!578400 lt!2415143))))

(declare-fun b!6608822 () Bool)

(assert (=> b!6608822 (= e!3998612 (Union!16475 call!578403 call!578402))))

(declare-fun b!6608823 () Bool)

(declare-fun c!1218019 () Bool)

(assert (=> b!6608823 (= c!1218019 (nullable!6468 (regOne!33462 lt!2415143)))))

(assert (=> b!6608823 (= e!3998608 e!3998609)))

(declare-fun b!6608824 () Bool)

(assert (=> b!6608824 (= e!3998610 (ite (= (head!13402 s!2326) (c!1217326 lt!2415143)) EmptyExpr!16475 EmptyLang!16475))))

(declare-fun bm!578398 () Bool)

(assert (=> bm!578398 (= call!578402 (derivativeStep!5159 (ite c!1218020 (regTwo!33463 lt!2415143) (ite c!1218021 (reg!16804 lt!2415143) (ite c!1218019 (regTwo!33462 lt!2415143) (regOne!33462 lt!2415143)))) (head!13402 s!2326)))))

(assert (= (and d!2072481 c!1218018) b!6608815))

(assert (= (and d!2072481 (not c!1218018)) b!6608816))

(assert (= (and b!6608816 c!1218017) b!6608824))

(assert (= (and b!6608816 (not c!1218017)) b!6608817))

(assert (= (and b!6608817 c!1218020) b!6608822))

(assert (= (and b!6608817 (not c!1218020)) b!6608819))

(assert (= (and b!6608819 c!1218021) b!6608821))

(assert (= (and b!6608819 (not c!1218021)) b!6608823))

(assert (= (and b!6608823 c!1218019) b!6608820))

(assert (= (and b!6608823 (not c!1218019)) b!6608818))

(assert (= (or b!6608820 b!6608818) bm!578395))

(assert (= (or b!6608821 bm!578395) bm!578396))

(assert (= (or b!6608822 bm!578396) bm!578398))

(assert (= (or b!6608822 b!6608820) bm!578397))

(assert (=> bm!578397 m!7382450))

(declare-fun m!7383778 () Bool)

(assert (=> bm!578397 m!7383778))

(declare-fun m!7383780 () Bool)

(assert (=> d!2072481 m!7383780))

(assert (=> d!2072481 m!7382464))

(declare-fun m!7383782 () Bool)

(assert (=> b!6608823 m!7383782))

(assert (=> bm!578398 m!7382450))

(declare-fun m!7383784 () Bool)

(assert (=> bm!578398 m!7383784))

(assert (=> b!6607438 d!2072481))

(assert (=> b!6607438 d!2071965))

(assert (=> b!6607438 d!2071969))

(declare-fun c!1218024 () Bool)

(declare-fun c!1218025 () Bool)

(declare-fun call!578408 () (InoxSet Context!11718))

(declare-fun bm!578399 () Bool)

(declare-fun c!1218023 () Bool)

(declare-fun call!578407 () List!65725)

(assert (=> bm!578399 (= call!578408 (derivationStepZipperDown!1723 (ite c!1218024 (regOne!33463 (ite c!1217545 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292))))) (ite c!1218025 (regTwo!33462 (ite c!1217545 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292))))) (ite c!1218023 (regOne!33462 (ite c!1217545 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292))))) (reg!16804 (ite c!1217545 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292)))))))) (ite (or c!1218024 c!1218025) (ite c!1217545 lt!2415123 (Context!11719 call!578051)) (Context!11719 call!578407)) (h!72048 s!2326)))))

(declare-fun b!6608825 () Bool)

(declare-fun e!3998617 () (InoxSet Context!11718))

(declare-fun call!578406 () (InoxSet Context!11718))

(assert (=> b!6608825 (= e!3998617 call!578406)))

(declare-fun b!6608826 () Bool)

(declare-fun e!3998618 () (InoxSet Context!11718))

(declare-fun e!3998616 () (InoxSet Context!11718))

(assert (=> b!6608826 (= e!3998618 e!3998616)))

(assert (=> b!6608826 (= c!1218024 ((_ is Union!16475) (ite c!1217545 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292))))))))

(declare-fun c!1218022 () Bool)

(declare-fun d!2072501 () Bool)

(assert (=> d!2072501 (= c!1218022 (and ((_ is ElementMatch!16475) (ite c!1217545 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292))))) (= (c!1217326 (ite c!1217545 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292))))) (h!72048 s!2326))))))

(assert (=> d!2072501 (= (derivationStepZipperDown!1723 (ite c!1217545 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292)))) (ite c!1217545 lt!2415123 (Context!11719 call!578051)) (h!72048 s!2326)) e!3998618)))

(declare-fun b!6608827 () Bool)

(declare-fun e!3998613 () (InoxSet Context!11718))

(declare-fun e!3998614 () (InoxSet Context!11718))

(assert (=> b!6608827 (= e!3998613 e!3998614)))

(assert (=> b!6608827 (= c!1218023 ((_ is Concat!25320) (ite c!1217545 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292))))))))

(declare-fun b!6608828 () Bool)

(assert (=> b!6608828 (= e!3998618 (store ((as const (Array Context!11718 Bool)) false) (ite c!1217545 lt!2415123 (Context!11719 call!578051)) true))))

(declare-fun b!6608829 () Bool)

(declare-fun e!3998615 () Bool)

(assert (=> b!6608829 (= c!1218025 e!3998615)))

(declare-fun res!2709901 () Bool)

(assert (=> b!6608829 (=> (not res!2709901) (not e!3998615))))

(assert (=> b!6608829 (= res!2709901 ((_ is Concat!25320) (ite c!1217545 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292))))))))

(assert (=> b!6608829 (= e!3998616 e!3998613)))

(declare-fun bm!578400 () Bool)

(declare-fun call!578404 () (InoxSet Context!11718))

(assert (=> bm!578400 (= call!578404 call!578408)))

(declare-fun b!6608830 () Bool)

(declare-fun c!1218026 () Bool)

(assert (=> b!6608830 (= c!1218026 ((_ is Star!16475) (ite c!1217545 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292))))))))

(assert (=> b!6608830 (= e!3998614 e!3998617)))

(declare-fun bm!578401 () Bool)

(assert (=> bm!578401 (= call!578406 call!578404)))

(declare-fun bm!578402 () Bool)

(declare-fun call!578409 () List!65725)

(assert (=> bm!578402 (= call!578409 ($colon$colon!2316 (exprs!6359 (ite c!1217545 lt!2415123 (Context!11719 call!578051))) (ite (or c!1218025 c!1218023) (regTwo!33462 (ite c!1217545 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292))))) (ite c!1217545 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292)))))))))

(declare-fun b!6608831 () Bool)

(assert (=> b!6608831 (= e!3998617 ((as const (Array Context!11718 Bool)) false))))

(declare-fun bm!578403 () Bool)

(declare-fun call!578405 () (InoxSet Context!11718))

(assert (=> bm!578403 (= call!578405 (derivationStepZipperDown!1723 (ite c!1218024 (regTwo!33463 (ite c!1217545 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292))))) (regOne!33462 (ite c!1217545 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292)))))) (ite c!1218024 (ite c!1217545 lt!2415123 (Context!11719 call!578051)) (Context!11719 call!578409)) (h!72048 s!2326)))))

(declare-fun b!6608832 () Bool)

(assert (=> b!6608832 (= e!3998616 ((_ map or) call!578408 call!578405))))

(declare-fun b!6608833 () Bool)

(assert (=> b!6608833 (= e!3998613 ((_ map or) call!578405 call!578404))))

(declare-fun bm!578404 () Bool)

(assert (=> bm!578404 (= call!578407 call!578409)))

(declare-fun b!6608834 () Bool)

(assert (=> b!6608834 (= e!3998615 (nullable!6468 (regOne!33462 (ite c!1217545 (regTwo!33463 (reg!16804 (regOne!33462 r!7292))) (regOne!33462 (reg!16804 (regOne!33462 r!7292)))))))))

(declare-fun b!6608835 () Bool)

(assert (=> b!6608835 (= e!3998614 call!578406)))

(assert (= (and d!2072501 c!1218022) b!6608828))

(assert (= (and d!2072501 (not c!1218022)) b!6608826))

(assert (= (and b!6608826 c!1218024) b!6608832))

(assert (= (and b!6608826 (not c!1218024)) b!6608829))

(assert (= (and b!6608829 res!2709901) b!6608834))

(assert (= (and b!6608829 c!1218025) b!6608833))

(assert (= (and b!6608829 (not c!1218025)) b!6608827))

(assert (= (and b!6608827 c!1218023) b!6608835))

(assert (= (and b!6608827 (not c!1218023)) b!6608830))

(assert (= (and b!6608830 c!1218026) b!6608825))

(assert (= (and b!6608830 (not c!1218026)) b!6608831))

(assert (= (or b!6608835 b!6608825) bm!578404))

(assert (= (or b!6608835 b!6608825) bm!578401))

(assert (= (or b!6608833 bm!578404) bm!578402))

(assert (= (or b!6608833 bm!578401) bm!578400))

(assert (= (or b!6608832 b!6608833) bm!578403))

(assert (= (or b!6608832 bm!578400) bm!578399))

(declare-fun m!7383786 () Bool)

(assert (=> bm!578399 m!7383786))

(declare-fun m!7383788 () Bool)

(assert (=> b!6608834 m!7383788))

(declare-fun m!7383790 () Bool)

(assert (=> bm!578403 m!7383790))

(declare-fun m!7383792 () Bool)

(assert (=> b!6608828 m!7383792))

(declare-fun m!7383794 () Bool)

(assert (=> bm!578402 m!7383794))

(assert (=> bm!578045 d!2072501))

(declare-fun d!2072503 () Bool)

(assert (=> d!2072503 (= (isUnion!1291 lt!2415195) ((_ is Union!16475) lt!2415195))))

(assert (=> b!6606841 d!2072503))

(declare-fun b!6608836 () Bool)

(declare-fun e!3998621 () Bool)

(declare-fun call!578410 () Bool)

(assert (=> b!6608836 (= e!3998621 call!578410)))

(declare-fun d!2072505 () Bool)

(declare-fun res!2709905 () Bool)

(declare-fun e!3998623 () Bool)

(assert (=> d!2072505 (=> res!2709905 e!3998623)))

(assert (=> d!2072505 (= res!2709905 ((_ is ElementMatch!16475) (ite c!1217581 (reg!16804 lt!2415134) (ite c!1217582 (regTwo!33463 lt!2415134) (regTwo!33462 lt!2415134)))))))

(assert (=> d!2072505 (= (validRegex!8211 (ite c!1217581 (reg!16804 lt!2415134) (ite c!1217582 (regTwo!33463 lt!2415134) (regTwo!33462 lt!2415134)))) e!3998623)))

(declare-fun b!6608837 () Bool)

(declare-fun e!3998620 () Bool)

(declare-fun e!3998625 () Bool)

(assert (=> b!6608837 (= e!3998620 e!3998625)))

(declare-fun res!2709904 () Bool)

(assert (=> b!6608837 (=> (not res!2709904) (not e!3998625))))

(declare-fun call!578411 () Bool)

(assert (=> b!6608837 (= res!2709904 call!578411)))

(declare-fun b!6608838 () Bool)

(declare-fun e!3998622 () Bool)

(declare-fun call!578412 () Bool)

(assert (=> b!6608838 (= e!3998622 call!578412)))

(declare-fun b!6608839 () Bool)

(declare-fun e!3998624 () Bool)

(assert (=> b!6608839 (= e!3998624 e!3998621)))

(declare-fun res!2709902 () Bool)

(assert (=> b!6608839 (= res!2709902 (not (nullable!6468 (reg!16804 (ite c!1217581 (reg!16804 lt!2415134) (ite c!1217582 (regTwo!33463 lt!2415134) (regTwo!33462 lt!2415134)))))))))

(assert (=> b!6608839 (=> (not res!2709902) (not e!3998621))))

(declare-fun bm!578405 () Bool)

(assert (=> bm!578405 (= call!578412 call!578410)))

(declare-fun b!6608840 () Bool)

(declare-fun e!3998619 () Bool)

(assert (=> b!6608840 (= e!3998624 e!3998619)))

(declare-fun c!1218028 () Bool)

(assert (=> b!6608840 (= c!1218028 ((_ is Union!16475) (ite c!1217581 (reg!16804 lt!2415134) (ite c!1217582 (regTwo!33463 lt!2415134) (regTwo!33462 lt!2415134)))))))

(declare-fun c!1218027 () Bool)

(declare-fun bm!578406 () Bool)

(assert (=> bm!578406 (= call!578410 (validRegex!8211 (ite c!1218027 (reg!16804 (ite c!1217581 (reg!16804 lt!2415134) (ite c!1217582 (regTwo!33463 lt!2415134) (regTwo!33462 lt!2415134)))) (ite c!1218028 (regTwo!33463 (ite c!1217581 (reg!16804 lt!2415134) (ite c!1217582 (regTwo!33463 lt!2415134) (regTwo!33462 lt!2415134)))) (regTwo!33462 (ite c!1217581 (reg!16804 lt!2415134) (ite c!1217582 (regTwo!33463 lt!2415134) (regTwo!33462 lt!2415134))))))))))

(declare-fun bm!578407 () Bool)

(assert (=> bm!578407 (= call!578411 (validRegex!8211 (ite c!1218028 (regOne!33463 (ite c!1217581 (reg!16804 lt!2415134) (ite c!1217582 (regTwo!33463 lt!2415134) (regTwo!33462 lt!2415134)))) (regOne!33462 (ite c!1217581 (reg!16804 lt!2415134) (ite c!1217582 (regTwo!33463 lt!2415134) (regTwo!33462 lt!2415134)))))))))

(declare-fun b!6608841 () Bool)

(declare-fun res!2709906 () Bool)

(assert (=> b!6608841 (=> res!2709906 e!3998620)))

(assert (=> b!6608841 (= res!2709906 (not ((_ is Concat!25320) (ite c!1217581 (reg!16804 lt!2415134) (ite c!1217582 (regTwo!33463 lt!2415134) (regTwo!33462 lt!2415134))))))))

(assert (=> b!6608841 (= e!3998619 e!3998620)))

(declare-fun b!6608842 () Bool)

(assert (=> b!6608842 (= e!3998623 e!3998624)))

(assert (=> b!6608842 (= c!1218027 ((_ is Star!16475) (ite c!1217581 (reg!16804 lt!2415134) (ite c!1217582 (regTwo!33463 lt!2415134) (regTwo!33462 lt!2415134)))))))

(declare-fun b!6608843 () Bool)

(declare-fun res!2709903 () Bool)

(assert (=> b!6608843 (=> (not res!2709903) (not e!3998622))))

(assert (=> b!6608843 (= res!2709903 call!578411)))

(assert (=> b!6608843 (= e!3998619 e!3998622)))

(declare-fun b!6608844 () Bool)

(assert (=> b!6608844 (= e!3998625 call!578412)))

(assert (= (and d!2072505 (not res!2709905)) b!6608842))

(assert (= (and b!6608842 c!1218027) b!6608839))

(assert (= (and b!6608842 (not c!1218027)) b!6608840))

(assert (= (and b!6608839 res!2709902) b!6608836))

(assert (= (and b!6608840 c!1218028) b!6608843))

(assert (= (and b!6608840 (not c!1218028)) b!6608841))

(assert (= (and b!6608843 res!2709903) b!6608838))

(assert (= (and b!6608841 (not res!2709906)) b!6608837))

(assert (= (and b!6608837 res!2709904) b!6608844))

(assert (= (or b!6608838 b!6608844) bm!578405))

(assert (= (or b!6608843 b!6608837) bm!578407))

(assert (= (or b!6608836 bm!578405) bm!578406))

(declare-fun m!7383796 () Bool)

(assert (=> b!6608839 m!7383796))

(declare-fun m!7383798 () Bool)

(assert (=> bm!578406 m!7383798))

(declare-fun m!7383800 () Bool)

(assert (=> bm!578407 m!7383800))

(assert (=> bm!578059 d!2072505))

(assert (=> d!2071667 d!2072251))

(declare-fun d!2072507 () Bool)

(declare-fun e!3998626 () Bool)

(assert (=> d!2072507 e!3998626))

(declare-fun c!1218030 () Bool)

(assert (=> d!2072507 (= c!1218030 ((_ is EmptyExpr!16475) (regOne!33462 r!7292)))))

(declare-fun lt!2415394 () Bool)

(declare-fun e!3998632 () Bool)

(assert (=> d!2072507 (= lt!2415394 e!3998632)))

(declare-fun c!1218029 () Bool)

(assert (=> d!2072507 (= c!1218029 (isEmpty!37882 Nil!65600))))

(assert (=> d!2072507 (validRegex!8211 (regOne!33462 r!7292))))

(assert (=> d!2072507 (= (matchR!8658 (regOne!33462 r!7292) Nil!65600) lt!2415394)))

(declare-fun b!6608845 () Bool)

(declare-fun e!3998627 () Bool)

(assert (=> b!6608845 (= e!3998627 (= (head!13402 Nil!65600) (c!1217326 (regOne!33462 r!7292))))))

(declare-fun b!6608846 () Bool)

(declare-fun e!3998629 () Bool)

(assert (=> b!6608846 (= e!3998629 (not lt!2415394))))

(declare-fun b!6608847 () Bool)

(declare-fun res!2709913 () Bool)

(assert (=> b!6608847 (=> (not res!2709913) (not e!3998627))))

(assert (=> b!6608847 (= res!2709913 (isEmpty!37882 (tail!12487 Nil!65600)))))

(declare-fun bm!578408 () Bool)

(declare-fun call!578413 () Bool)

(assert (=> bm!578408 (= call!578413 (isEmpty!37882 Nil!65600))))

(declare-fun b!6608848 () Bool)

(declare-fun e!3998631 () Bool)

(declare-fun e!3998630 () Bool)

(assert (=> b!6608848 (= e!3998631 e!3998630)))

(declare-fun res!2709914 () Bool)

(assert (=> b!6608848 (=> res!2709914 e!3998630)))

(assert (=> b!6608848 (= res!2709914 call!578413)))

(declare-fun b!6608849 () Bool)

(declare-fun res!2709912 () Bool)

(declare-fun e!3998628 () Bool)

(assert (=> b!6608849 (=> res!2709912 e!3998628)))

(assert (=> b!6608849 (= res!2709912 (not ((_ is ElementMatch!16475) (regOne!33462 r!7292))))))

(assert (=> b!6608849 (= e!3998629 e!3998628)))

(declare-fun b!6608850 () Bool)

(assert (=> b!6608850 (= e!3998626 e!3998629)))

(declare-fun c!1218031 () Bool)

(assert (=> b!6608850 (= c!1218031 ((_ is EmptyLang!16475) (regOne!33462 r!7292)))))

(declare-fun b!6608851 () Bool)

(assert (=> b!6608851 (= e!3998628 e!3998631)))

(declare-fun res!2709910 () Bool)

(assert (=> b!6608851 (=> (not res!2709910) (not e!3998631))))

(assert (=> b!6608851 (= res!2709910 (not lt!2415394))))

(declare-fun b!6608852 () Bool)

(declare-fun res!2709911 () Bool)

(assert (=> b!6608852 (=> res!2709911 e!3998628)))

(assert (=> b!6608852 (= res!2709911 e!3998627)))

(declare-fun res!2709908 () Bool)

(assert (=> b!6608852 (=> (not res!2709908) (not e!3998627))))

(assert (=> b!6608852 (= res!2709908 lt!2415394)))

(declare-fun b!6608853 () Bool)

(assert (=> b!6608853 (= e!3998632 (matchR!8658 (derivativeStep!5159 (regOne!33462 r!7292) (head!13402 Nil!65600)) (tail!12487 Nil!65600)))))

(declare-fun b!6608854 () Bool)

(declare-fun res!2709909 () Bool)

(assert (=> b!6608854 (=> res!2709909 e!3998630)))

(assert (=> b!6608854 (= res!2709909 (not (isEmpty!37882 (tail!12487 Nil!65600))))))

(declare-fun b!6608855 () Bool)

(assert (=> b!6608855 (= e!3998632 (nullable!6468 (regOne!33462 r!7292)))))

(declare-fun b!6608856 () Bool)

(declare-fun res!2709907 () Bool)

(assert (=> b!6608856 (=> (not res!2709907) (not e!3998627))))

(assert (=> b!6608856 (= res!2709907 (not call!578413))))

(declare-fun b!6608857 () Bool)

(assert (=> b!6608857 (= e!3998626 (= lt!2415394 call!578413))))

(declare-fun b!6608858 () Bool)

(assert (=> b!6608858 (= e!3998630 (not (= (head!13402 Nil!65600) (c!1217326 (regOne!33462 r!7292)))))))

(assert (= (and d!2072507 c!1218029) b!6608855))

(assert (= (and d!2072507 (not c!1218029)) b!6608853))

(assert (= (and d!2072507 c!1218030) b!6608857))

(assert (= (and d!2072507 (not c!1218030)) b!6608850))

(assert (= (and b!6608850 c!1218031) b!6608846))

(assert (= (and b!6608850 (not c!1218031)) b!6608849))

(assert (= (and b!6608849 (not res!2709912)) b!6608852))

(assert (= (and b!6608852 res!2709908) b!6608856))

(assert (= (and b!6608856 res!2709907) b!6608847))

(assert (= (and b!6608847 res!2709913) b!6608845))

(assert (= (and b!6608852 (not res!2709911)) b!6608851))

(assert (= (and b!6608851 res!2709910) b!6608848))

(assert (= (and b!6608848 (not res!2709914)) b!6608854))

(assert (= (and b!6608854 (not res!2709909)) b!6608858))

(assert (= (or b!6608857 b!6608848 b!6608856) bm!578408))

(assert (=> b!6608853 m!7382390))

(assert (=> b!6608853 m!7382390))

(declare-fun m!7383802 () Bool)

(assert (=> b!6608853 m!7383802))

(assert (=> b!6608853 m!7382394))

(assert (=> b!6608853 m!7383802))

(assert (=> b!6608853 m!7382394))

(declare-fun m!7383804 () Bool)

(assert (=> b!6608853 m!7383804))

(assert (=> b!6608855 m!7382732))

(assert (=> bm!578408 m!7382400))

(assert (=> b!6608845 m!7382390))

(assert (=> b!6608847 m!7382394))

(assert (=> b!6608847 m!7382394))

(assert (=> b!6608847 m!7382402))

(assert (=> d!2072507 m!7382400))

(assert (=> d!2072507 m!7382194))

(assert (=> b!6608858 m!7382390))

(assert (=> b!6608854 m!7382394))

(assert (=> b!6608854 m!7382394))

(assert (=> b!6608854 m!7382402))

(assert (=> d!2071667 d!2072507))

(assert (=> d!2071667 d!2072107))

(declare-fun b!6608860 () Bool)

(declare-fun e!3998635 () Bool)

(assert (=> b!6608860 (= e!3998635 (nullable!6468 (h!72049 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 (h!72050 zl!343))))))))))

(declare-fun b!6608861 () Bool)

(declare-fun call!578414 () (InoxSet Context!11718))

(declare-fun e!3998633 () (InoxSet Context!11718))

(assert (=> b!6608861 (= e!3998633 ((_ map or) call!578414 (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 (h!72050 zl!343))))))) (h!72048 s!2326))))))

(declare-fun bm!578409 () Bool)

(assert (=> bm!578409 (= call!578414 (derivationStepZipperDown!1723 (h!72049 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 (h!72050 zl!343)))))) (Context!11719 (t!379377 (exprs!6359 (Context!11719 (t!379377 (exprs!6359 (h!72050 zl!343))))))) (h!72048 s!2326)))))

(declare-fun b!6608862 () Bool)

(declare-fun e!3998634 () (InoxSet Context!11718))

(assert (=> b!6608862 (= e!3998634 ((as const (Array Context!11718 Bool)) false))))

(declare-fun b!6608863 () Bool)

(assert (=> b!6608863 (= e!3998633 e!3998634)))

(declare-fun c!1218033 () Bool)

(assert (=> b!6608863 (= c!1218033 ((_ is Cons!65601) (exprs!6359 (Context!11719 (t!379377 (exprs!6359 (h!72050 zl!343)))))))))

(declare-fun b!6608859 () Bool)

(assert (=> b!6608859 (= e!3998634 call!578414)))

(declare-fun d!2072509 () Bool)

(declare-fun c!1218032 () Bool)

(assert (=> d!2072509 (= c!1218032 e!3998635)))

(declare-fun res!2709915 () Bool)

(assert (=> d!2072509 (=> (not res!2709915) (not e!3998635))))

(assert (=> d!2072509 (= res!2709915 ((_ is Cons!65601) (exprs!6359 (Context!11719 (t!379377 (exprs!6359 (h!72050 zl!343)))))))))

(assert (=> d!2072509 (= (derivationStepZipperUp!1649 (Context!11719 (t!379377 (exprs!6359 (h!72050 zl!343)))) (h!72048 s!2326)) e!3998633)))

(assert (= (and d!2072509 res!2709915) b!6608860))

(assert (= (and d!2072509 c!1218032) b!6608861))

(assert (= (and d!2072509 (not c!1218032)) b!6608863))

(assert (= (and b!6608863 c!1218033) b!6608859))

(assert (= (and b!6608863 (not c!1218033)) b!6608862))

(assert (= (or b!6608861 b!6608859) bm!578409))

(declare-fun m!7383806 () Bool)

(assert (=> b!6608860 m!7383806))

(declare-fun m!7383808 () Bool)

(assert (=> b!6608861 m!7383808))

(declare-fun m!7383810 () Bool)

(assert (=> bm!578409 m!7383810))

(assert (=> b!6607485 d!2072509))

(declare-fun bs!1694369 () Bool)

(declare-fun d!2072511 () Bool)

(assert (= bs!1694369 (and d!2072511 b!6608584)))

(declare-fun lambda!368789 () Int)

(assert (=> bs!1694369 (not (= lambda!368789 lambda!368765))))

(declare-fun bs!1694371 () Bool)

(assert (= bs!1694371 (and d!2072511 d!2072053)))

(assert (=> bs!1694371 (= lambda!368789 lambda!368714)))

(declare-fun bs!1694373 () Bool)

(assert (= bs!1694373 (and d!2072511 b!6608582)))

(assert (=> bs!1694373 (not (= lambda!368789 lambda!368764))))

(declare-fun bs!1694374 () Bool)

(assert (= bs!1694374 (and d!2072511 d!2072175)))

(assert (=> bs!1694374 (= lambda!368789 lambda!368730)))

(declare-fun bs!1694375 () Bool)

(assert (= bs!1694375 (and d!2072511 b!6607272)))

(assert (=> bs!1694375 (not (= lambda!368789 lambda!368673))))

(declare-fun bs!1694377 () Bool)

(assert (= bs!1694377 (and d!2072511 d!2072393)))

(assert (=> bs!1694377 (not (= lambda!368789 lambda!368762))))

(declare-fun bs!1694378 () Bool)

(assert (= bs!1694378 (and d!2072511 b!6607267)))

(assert (=> bs!1694378 (not (= lambda!368789 lambda!368670))))

(declare-fun bs!1694379 () Bool)

(assert (= bs!1694379 (and d!2072511 b!6607265)))

(assert (=> bs!1694379 (not (= lambda!368789 lambda!368669))))

(declare-fun bs!1694380 () Bool)

(assert (= bs!1694380 (and d!2072511 d!2072127)))

(assert (=> bs!1694380 (= lambda!368789 lambda!368724)))

(declare-fun bs!1694381 () Bool)

(assert (= bs!1694381 (and d!2072511 d!2072065)))

(assert (=> bs!1694381 (= lambda!368789 lambda!368716)))

(declare-fun bs!1694383 () Bool)

(assert (= bs!1694383 (and d!2072511 d!2072373)))

(assert (=> bs!1694383 (= lambda!368789 lambda!368755)))

(declare-fun bs!1694384 () Bool)

(assert (= bs!1694384 (and d!2072511 d!2072145)))

(assert (=> bs!1694384 (= lambda!368789 lambda!368728)))

(declare-fun bs!1694385 () Bool)

(assert (= bs!1694385 (and d!2072511 b!6607270)))

(assert (=> bs!1694385 (not (= lambda!368789 lambda!368672))))

(assert (=> d!2072511 (= (nullableZipper!2220 lt!2415126) (exists!2652 lt!2415126 lambda!368789))))

(declare-fun bs!1694386 () Bool)

(assert (= bs!1694386 d!2072511))

(declare-fun m!7383812 () Bool)

(assert (=> bs!1694386 m!7383812))

(assert (=> b!6607545 d!2072511))

(declare-fun b!6608866 () Bool)

(declare-fun res!2709916 () Bool)

(declare-fun e!3998636 () Bool)

(assert (=> b!6608866 (=> (not res!2709916) (not e!3998636))))

(declare-fun lt!2415395 () List!65724)

(assert (=> b!6608866 (= res!2709916 (= (size!40545 lt!2415395) (+ (size!40545 (_1!36757 (get!22794 lt!2415235))) (size!40545 (_2!36757 (get!22794 lt!2415235))))))))

(declare-fun b!6608867 () Bool)

(assert (=> b!6608867 (= e!3998636 (or (not (= (_2!36757 (get!22794 lt!2415235)) Nil!65600)) (= lt!2415395 (_1!36757 (get!22794 lt!2415235)))))))

(declare-fun b!6608865 () Bool)

(declare-fun e!3998637 () List!65724)

(assert (=> b!6608865 (= e!3998637 (Cons!65600 (h!72048 (_1!36757 (get!22794 lt!2415235))) (++!14621 (t!379376 (_1!36757 (get!22794 lt!2415235))) (_2!36757 (get!22794 lt!2415235)))))))

(declare-fun d!2072513 () Bool)

(assert (=> d!2072513 e!3998636))

(declare-fun res!2709917 () Bool)

(assert (=> d!2072513 (=> (not res!2709917) (not e!3998636))))

(assert (=> d!2072513 (= res!2709917 (= (content!12653 lt!2415395) ((_ map or) (content!12653 (_1!36757 (get!22794 lt!2415235))) (content!12653 (_2!36757 (get!22794 lt!2415235))))))))

(assert (=> d!2072513 (= lt!2415395 e!3998637)))

(declare-fun c!1218034 () Bool)

(assert (=> d!2072513 (= c!1218034 ((_ is Nil!65600) (_1!36757 (get!22794 lt!2415235))))))

(assert (=> d!2072513 (= (++!14621 (_1!36757 (get!22794 lt!2415235)) (_2!36757 (get!22794 lt!2415235))) lt!2415395)))

(declare-fun b!6608864 () Bool)

(assert (=> b!6608864 (= e!3998637 (_2!36757 (get!22794 lt!2415235)))))

(assert (= (and d!2072513 c!1218034) b!6608864))

(assert (= (and d!2072513 (not c!1218034)) b!6608865))

(assert (= (and d!2072513 res!2709917) b!6608866))

(assert (= (and b!6608866 res!2709916) b!6608867))

(declare-fun m!7383820 () Bool)

(assert (=> b!6608866 m!7383820))

(declare-fun m!7383822 () Bool)

(assert (=> b!6608866 m!7383822))

(declare-fun m!7383824 () Bool)

(assert (=> b!6608866 m!7383824))

(declare-fun m!7383826 () Bool)

(assert (=> b!6608865 m!7383826))

(declare-fun m!7383828 () Bool)

(assert (=> d!2072513 m!7383828))

(declare-fun m!7383830 () Bool)

(assert (=> d!2072513 m!7383830))

(declare-fun m!7383832 () Bool)

(assert (=> d!2072513 m!7383832))

(assert (=> b!6607107 d!2072513))

(assert (=> b!6607107 d!2071959))

(declare-fun b!6608882 () Bool)

(declare-fun e!3998652 () Bool)

(declare-fun e!3998649 () Bool)

(assert (=> b!6608882 (= e!3998652 e!3998649)))

(declare-fun c!1218043 () Bool)

(assert (=> b!6608882 (= c!1218043 ((_ is Union!16475) (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))

(declare-fun b!6608883 () Bool)

(declare-fun res!2709928 () Bool)

(declare-fun e!3998646 () Bool)

(assert (=> b!6608883 (=> (not res!2709928) (not e!3998646))))

(declare-fun lt!2415397 () Int)

(declare-fun call!578419 () Int)

(assert (=> b!6608883 (= res!2709928 (> lt!2415397 call!578419))))

(declare-fun e!3998654 () Bool)

(assert (=> b!6608883 (= e!3998654 e!3998646)))

(declare-fun b!6608884 () Bool)

(declare-fun e!3998647 () Int)

(declare-fun call!578416 () Int)

(assert (=> b!6608884 (= e!3998647 (+ 1 call!578416))))

(declare-fun b!6608885 () Bool)

(declare-fun e!3998650 () Int)

(declare-fun call!578418 () Int)

(assert (=> b!6608885 (= e!3998650 (+ 1 call!578418))))

(declare-fun b!6608886 () Bool)

(declare-fun e!3998651 () Int)

(assert (=> b!6608886 (= e!3998651 1)))

(declare-fun b!6608887 () Bool)

(declare-fun e!3998653 () Bool)

(assert (=> b!6608887 (= e!3998649 e!3998653)))

(declare-fun res!2709926 () Bool)

(declare-fun call!578422 () Int)

(assert (=> b!6608887 (= res!2709926 (> lt!2415397 call!578422))))

(assert (=> b!6608887 (=> (not res!2709926) (not e!3998653))))

(declare-fun b!6608888 () Bool)

(assert (=> b!6608888 (= e!3998650 1)))

(declare-fun b!6608889 () Bool)

(declare-fun call!578421 () Int)

(assert (=> b!6608889 (= e!3998653 (> lt!2415397 call!578421))))

(declare-fun b!6608890 () Bool)

(declare-fun e!3998645 () Int)

(assert (=> b!6608890 (= e!3998645 (+ 1 call!578418))))

(declare-fun b!6608891 () Bool)

(declare-fun c!1218042 () Bool)

(assert (=> b!6608891 (= c!1218042 ((_ is Union!16475) (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))

(assert (=> b!6608891 (= e!3998647 e!3998645)))

(declare-fun b!6608892 () Bool)

(assert (=> b!6608892 (= e!3998645 e!3998650)))

(declare-fun c!1218038 () Bool)

(assert (=> b!6608892 (= c!1218038 ((_ is Concat!25320) (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))

(declare-fun c!1218039 () Bool)

(declare-fun bm!578411 () Bool)

(assert (=> bm!578411 (= call!578421 (regexDepth!372 (ite c!1218043 (regTwo!33463 (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292))) (ite c!1218039 (regOne!33462 (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292))) (reg!16804 (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292)))))))))

(declare-fun b!6608893 () Bool)

(declare-fun e!3998648 () Bool)

(assert (=> b!6608893 (= e!3998648 (> lt!2415397 call!578419))))

(declare-fun bm!578412 () Bool)

(assert (=> bm!578412 (= call!578419 call!578421)))

(declare-fun b!6608894 () Bool)

(assert (=> b!6608894 (= e!3998649 e!3998654)))

(assert (=> b!6608894 (= c!1218039 ((_ is Concat!25320) (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))

(declare-fun d!2072517 () Bool)

(assert (=> d!2072517 e!3998652))

(declare-fun res!2709927 () Bool)

(assert (=> d!2072517 (=> (not res!2709927) (not e!3998652))))

(assert (=> d!2072517 (= res!2709927 (> lt!2415397 0))))

(assert (=> d!2072517 (= lt!2415397 e!3998651)))

(declare-fun c!1218041 () Bool)

(assert (=> d!2072517 (= c!1218041 ((_ is ElementMatch!16475) (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))

(assert (=> d!2072517 (= (regexDepth!372 (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292))) lt!2415397)))

(declare-fun bm!578413 () Bool)

(declare-fun c!1218044 () Bool)

(assert (=> bm!578413 (= call!578416 (regexDepth!372 (ite c!1218044 (reg!16804 (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292))) (ite c!1218042 (regTwo!33463 (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292))) (regOne!33462 (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292)))))))))

(declare-fun b!6608895 () Bool)

(assert (=> b!6608895 (= e!3998651 e!3998647)))

(assert (=> b!6608895 (= c!1218044 ((_ is Star!16475) (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))

(declare-fun bm!578414 () Bool)

(declare-fun call!578417 () Int)

(assert (=> bm!578414 (= call!578417 call!578416)))

(declare-fun b!6608896 () Bool)

(declare-fun c!1218040 () Bool)

(assert (=> b!6608896 (= c!1218040 ((_ is Star!16475) (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))

(assert (=> b!6608896 (= e!3998654 e!3998648)))

(declare-fun b!6608897 () Bool)

(assert (=> b!6608897 (= e!3998646 (> lt!2415397 call!578422))))

(declare-fun call!578420 () Int)

(declare-fun bm!578415 () Bool)

(assert (=> bm!578415 (= call!578420 (regexDepth!372 (ite c!1218042 (regOne!33463 (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292))) (regTwo!33462 (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))))

(declare-fun bm!578416 () Bool)

(assert (=> bm!578416 (= call!578422 (regexDepth!372 (ite c!1218043 (regOne!33463 (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292))) (regTwo!33462 (ite c!1217664 (regOne!33463 r!7292) (regTwo!33462 r!7292))))))))

(declare-fun bm!578417 () Bool)

(assert (=> bm!578417 (= call!578418 (maxBigInt!0 (ite c!1218042 call!578420 call!578417) (ite c!1218042 call!578417 call!578420)))))

(declare-fun b!6608898 () Bool)

(assert (=> b!6608898 (= e!3998648 (= lt!2415397 1))))

(assert (= (and d!2072517 c!1218041) b!6608886))

(assert (= (and d!2072517 (not c!1218041)) b!6608895))

(assert (= (and b!6608895 c!1218044) b!6608884))

(assert (= (and b!6608895 (not c!1218044)) b!6608891))

(assert (= (and b!6608891 c!1218042) b!6608890))

(assert (= (and b!6608891 (not c!1218042)) b!6608892))

(assert (= (and b!6608892 c!1218038) b!6608885))

(assert (= (and b!6608892 (not c!1218038)) b!6608888))

(assert (= (or b!6608890 b!6608885) bm!578414))

(assert (= (or b!6608890 b!6608885) bm!578415))

(assert (= (or b!6608890 b!6608885) bm!578417))

(assert (= (or b!6608884 bm!578414) bm!578413))

(assert (= (and d!2072517 res!2709927) b!6608882))

(assert (= (and b!6608882 c!1218043) b!6608887))

(assert (= (and b!6608882 (not c!1218043)) b!6608894))

(assert (= (and b!6608887 res!2709926) b!6608889))

(assert (= (and b!6608894 c!1218039) b!6608883))

(assert (= (and b!6608894 (not c!1218039)) b!6608896))

(assert (= (and b!6608883 res!2709928) b!6608897))

(assert (= (and b!6608896 c!1218040) b!6608893))

(assert (= (and b!6608896 (not c!1218040)) b!6608898))

(assert (= (or b!6608883 b!6608893) bm!578412))

(assert (= (or b!6608889 bm!578412) bm!578411))

(assert (= (or b!6608887 b!6608897) bm!578416))

(declare-fun m!7383840 () Bool)

(assert (=> bm!578411 m!7383840))

(declare-fun m!7383842 () Bool)

(assert (=> bm!578416 m!7383842))

(declare-fun m!7383844 () Bool)

(assert (=> bm!578413 m!7383844))

(declare-fun m!7383846 () Bool)

(assert (=> bm!578417 m!7383846))

(declare-fun m!7383848 () Bool)

(assert (=> bm!578415 m!7383848))

(assert (=> bm!578108 d!2072517))

(declare-fun d!2072521 () Bool)

(assert (=> d!2072521 (= (Exists!3545 (ite c!1217591 lambda!368680 lambda!368681)) (choose!49347 (ite c!1217591 lambda!368680 lambda!368681)))))

(declare-fun bs!1694387 () Bool)

(assert (= bs!1694387 d!2072521))

(declare-fun m!7383850 () Bool)

(assert (=> bs!1694387 m!7383850))

(assert (=> bm!578066 d!2072521))

(assert (=> b!6607430 d!2071965))

(declare-fun bs!1694388 () Bool)

(declare-fun b!6608923 () Bool)

(assert (= bs!1694388 (and b!6608923 d!2072109)))

(declare-fun lambda!368790 () Int)

(assert (=> bs!1694388 (not (= lambda!368790 lambda!368721))))

(declare-fun bs!1694389 () Bool)

(assert (= bs!1694389 (and b!6608923 d!2071761)))

(assert (=> bs!1694389 (not (= lambda!368790 lambda!368653))))

(declare-fun bs!1694390 () Bool)

(assert (= bs!1694390 (and b!6608923 b!6608069)))

(assert (=> bs!1694390 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regTwo!33463 lt!2415134)) (reg!16804 (regTwo!33463 r!7292))) (= (regTwo!33463 lt!2415134) (regTwo!33463 r!7292))) (= lambda!368790 lambda!368726))))

(declare-fun bs!1694391 () Bool)

(assert (= bs!1694391 (and b!6608923 b!6606503)))

(assert (=> bs!1694391 (not (= lambda!368790 lambda!368580))))

(declare-fun bs!1694392 () Bool)

(assert (= bs!1694392 (and b!6608923 b!6607530)))

(assert (=> bs!1694392 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regTwo!33463 lt!2415134)) (reg!16804 r!7292)) (= (regTwo!33463 lt!2415134) r!7292)) (= lambda!368790 lambda!368692))))

(declare-fun bs!1694393 () Bool)

(assert (= bs!1694393 (and b!6608923 d!2071833)))

(assert (=> bs!1694393 (= (and (= (reg!16804 (regTwo!33463 lt!2415134)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33463 lt!2415134) (Star!16475 (reg!16804 (regOne!33462 r!7292))))) (= lambda!368790 lambda!368687))))

(declare-fun bs!1694394 () Bool)

(assert (= bs!1694394 (and b!6608923 b!6608417)))

(assert (=> bs!1694394 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regTwo!33463 lt!2415134)) (reg!16804 (regTwo!33463 lt!2415143))) (= (regTwo!33463 lt!2415134) (regTwo!33463 lt!2415143))) (= lambda!368790 lambda!368750))))

(declare-fun bs!1694395 () Bool)

(assert (= bs!1694395 (and b!6608923 b!6608061)))

(assert (=> bs!1694395 (not (= lambda!368790 lambda!368727))))

(declare-fun bs!1694396 () Bool)

(assert (= bs!1694396 (and b!6608923 d!2071823)))

(assert (=> bs!1694396 (not (= lambda!368790 lambda!368675))))

(declare-fun bs!1694397 () Bool)

(assert (= bs!1694397 (and b!6608923 b!6607454)))

(assert (=> bs!1694397 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regTwo!33463 lt!2415134)) (reg!16804 lt!2415143)) (= (regTwo!33463 lt!2415134) lt!2415143)) (= lambda!368790 lambda!368690))))

(assert (=> bs!1694389 (not (= lambda!368790 lambda!368654))))

(declare-fun bs!1694398 () Bool)

(assert (= bs!1694398 (and b!6608923 b!6607397)))

(assert (=> bs!1694398 (not (= lambda!368790 lambda!368681))))

(declare-fun bs!1694399 () Bool)

(assert (= bs!1694399 (and b!6608923 b!6606515)))

(assert (=> bs!1694399 (not (= lambda!368790 lambda!368576))))

(assert (=> bs!1694391 (= (and (= (reg!16804 (regTwo!33463 lt!2415134)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33463 lt!2415134) lt!2415134)) (= lambda!368790 lambda!368581))))

(declare-fun bs!1694400 () Bool)

(assert (= bs!1694400 (and b!6608923 b!6608409)))

(assert (=> bs!1694400 (not (= lambda!368790 lambda!368751))))

(declare-fun bs!1694401 () Bool)

(assert (= bs!1694401 (and b!6608923 d!2072203)))

(assert (=> bs!1694401 (= (and (= (reg!16804 (regTwo!33463 lt!2415134)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33463 lt!2415134) (Star!16475 (reg!16804 (regOne!33462 r!7292))))) (= lambda!368790 lambda!368742))))

(assert (=> bs!1694391 (not (= lambda!368790 lambda!368579))))

(assert (=> bs!1694399 (not (= lambda!368790 lambda!368577))))

(assert (=> bs!1694396 (not (= lambda!368790 lambda!368674))))

(declare-fun bs!1694402 () Bool)

(assert (= bs!1694402 (and b!6608923 d!2071755)))

(assert (=> bs!1694402 (not (= lambda!368790 lambda!368648))))

(assert (=> bs!1694393 (not (= lambda!368790 lambda!368686))))

(declare-fun bs!1694403 () Bool)

(assert (= bs!1694403 (and b!6608923 b!6607405)))

(assert (=> bs!1694403 (= (and (= (reg!16804 (regTwo!33463 lt!2415134)) (reg!16804 lt!2415134)) (= (regTwo!33463 lt!2415134) lt!2415134)) (= lambda!368790 lambda!368680))))

(declare-fun bs!1694404 () Bool)

(assert (= bs!1694404 (and b!6608923 b!6607446)))

(assert (=> bs!1694404 (not (= lambda!368790 lambda!368691))))

(declare-fun bs!1694405 () Bool)

(assert (= bs!1694405 (and b!6608923 b!6607522)))

(assert (=> bs!1694405 (not (= lambda!368790 lambda!368693))))

(declare-fun bs!1694406 () Bool)

(assert (= bs!1694406 (and b!6608923 d!2071841)))

(assert (=> bs!1694406 (not (= lambda!368790 lambda!368688))))

(assert (=> bs!1694401 (not (= lambda!368790 lambda!368741))))

(assert (=> b!6608923 true))

(assert (=> b!6608923 true))

(declare-fun bs!1694407 () Bool)

(declare-fun b!6608915 () Bool)

(assert (= bs!1694407 (and b!6608915 d!2072109)))

(declare-fun lambda!368791 () Int)

(assert (=> bs!1694407 (not (= lambda!368791 lambda!368721))))

(declare-fun bs!1694408 () Bool)

(assert (= bs!1694408 (and b!6608915 d!2071761)))

(assert (=> bs!1694408 (not (= lambda!368791 lambda!368653))))

(declare-fun bs!1694409 () Bool)

(assert (= bs!1694409 (and b!6608915 b!6608069)))

(assert (=> bs!1694409 (not (= lambda!368791 lambda!368726))))

(declare-fun bs!1694410 () Bool)

(assert (= bs!1694410 (and b!6608915 b!6606503)))

(assert (=> bs!1694410 (= (and (= (regOne!33462 (regTwo!33463 lt!2415134)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 (regTwo!33463 lt!2415134)) lt!2415134)) (= lambda!368791 lambda!368580))))

(declare-fun bs!1694411 () Bool)

(assert (= bs!1694411 (and b!6608915 b!6607530)))

(assert (=> bs!1694411 (not (= lambda!368791 lambda!368692))))

(declare-fun bs!1694412 () Bool)

(assert (= bs!1694412 (and b!6608915 d!2071833)))

(assert (=> bs!1694412 (not (= lambda!368791 lambda!368687))))

(declare-fun bs!1694413 () Bool)

(assert (= bs!1694413 (and b!6608915 b!6608417)))

(assert (=> bs!1694413 (not (= lambda!368791 lambda!368750))))

(declare-fun bs!1694414 () Bool)

(assert (= bs!1694414 (and b!6608915 d!2071823)))

(assert (=> bs!1694414 (= (and (= (regOne!33462 (regTwo!33463 lt!2415134)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 (regTwo!33463 lt!2415134)) lt!2415134)) (= lambda!368791 lambda!368675))))

(declare-fun bs!1694415 () Bool)

(assert (= bs!1694415 (and b!6608915 b!6607454)))

(assert (=> bs!1694415 (not (= lambda!368791 lambda!368690))))

(assert (=> bs!1694408 (= (and (= Nil!65600 s!2326) (= (regOne!33462 (regTwo!33463 lt!2415134)) (regOne!33462 r!7292)) (= (regTwo!33462 (regTwo!33463 lt!2415134)) (regTwo!33462 r!7292))) (= lambda!368791 lambda!368654))))

(declare-fun bs!1694416 () Bool)

(assert (= bs!1694416 (and b!6608915 b!6607397)))

(assert (=> bs!1694416 (= (and (= (regOne!33462 (regTwo!33463 lt!2415134)) (regOne!33462 lt!2415134)) (= (regTwo!33462 (regTwo!33463 lt!2415134)) (regTwo!33462 lt!2415134))) (= lambda!368791 lambda!368681))))

(declare-fun bs!1694417 () Bool)

(assert (= bs!1694417 (and b!6608915 b!6606515)))

(assert (=> bs!1694417 (not (= lambda!368791 lambda!368576))))

(assert (=> bs!1694410 (not (= lambda!368791 lambda!368581))))

(declare-fun bs!1694418 () Bool)

(assert (= bs!1694418 (and b!6608915 b!6608409)))

(assert (=> bs!1694418 (= (and (= Nil!65600 s!2326) (= (regOne!33462 (regTwo!33463 lt!2415134)) (regOne!33462 (regTwo!33463 lt!2415143))) (= (regTwo!33462 (regTwo!33463 lt!2415134)) (regTwo!33462 (regTwo!33463 lt!2415143)))) (= lambda!368791 lambda!368751))))

(declare-fun bs!1694419 () Bool)

(assert (= bs!1694419 (and b!6608915 d!2072203)))

(assert (=> bs!1694419 (not (= lambda!368791 lambda!368742))))

(assert (=> bs!1694410 (not (= lambda!368791 lambda!368579))))

(assert (=> bs!1694417 (= (and (= Nil!65600 s!2326) (= (regOne!33462 (regTwo!33463 lt!2415134)) (regOne!33462 r!7292)) (= (regTwo!33462 (regTwo!33463 lt!2415134)) (regTwo!33462 r!7292))) (= lambda!368791 lambda!368577))))

(assert (=> bs!1694414 (not (= lambda!368791 lambda!368674))))

(declare-fun bs!1694420 () Bool)

(assert (= bs!1694420 (and b!6608915 d!2071755)))

(assert (=> bs!1694420 (not (= lambda!368791 lambda!368648))))

(assert (=> bs!1694412 (not (= lambda!368791 lambda!368686))))

(declare-fun bs!1694421 () Bool)

(assert (= bs!1694421 (and b!6608915 b!6607405)))

(assert (=> bs!1694421 (not (= lambda!368791 lambda!368680))))

(declare-fun bs!1694422 () Bool)

(assert (= bs!1694422 (and b!6608915 b!6607446)))

(assert (=> bs!1694422 (= (and (= Nil!65600 s!2326) (= (regOne!33462 (regTwo!33463 lt!2415134)) (regOne!33462 lt!2415143)) (= (regTwo!33462 (regTwo!33463 lt!2415134)) (regTwo!33462 lt!2415143))) (= lambda!368791 lambda!368691))))

(declare-fun bs!1694423 () Bool)

(assert (= bs!1694423 (and b!6608915 b!6608923)))

(assert (=> bs!1694423 (not (= lambda!368791 lambda!368790))))

(declare-fun bs!1694424 () Bool)

(assert (= bs!1694424 (and b!6608915 b!6608061)))

(assert (=> bs!1694424 (= (and (= Nil!65600 s!2326) (= (regOne!33462 (regTwo!33463 lt!2415134)) (regOne!33462 (regTwo!33463 r!7292))) (= (regTwo!33462 (regTwo!33463 lt!2415134)) (regTwo!33462 (regTwo!33463 r!7292)))) (= lambda!368791 lambda!368727))))

(declare-fun bs!1694425 () Bool)

(assert (= bs!1694425 (and b!6608915 b!6607522)))

(assert (=> bs!1694425 (= (and (= Nil!65600 s!2326) (= (regOne!33462 (regTwo!33463 lt!2415134)) (regOne!33462 r!7292)) (= (regTwo!33462 (regTwo!33463 lt!2415134)) (regTwo!33462 r!7292))) (= lambda!368791 lambda!368693))))

(declare-fun bs!1694426 () Bool)

(assert (= bs!1694426 (and b!6608915 d!2071841)))

(assert (=> bs!1694426 (not (= lambda!368791 lambda!368688))))

(assert (=> bs!1694419 (not (= lambda!368791 lambda!368741))))

(assert (=> b!6608915 true))

(assert (=> b!6608915 true))

(declare-fun b!6608913 () Bool)

(declare-fun e!3998668 () Bool)

(declare-fun e!3998664 () Bool)

(assert (=> b!6608913 (= e!3998668 e!3998664)))

(declare-fun c!1218048 () Bool)

(assert (=> b!6608913 (= c!1218048 ((_ is Star!16475) (regTwo!33463 lt!2415134)))))

(declare-fun b!6608914 () Bool)

(declare-fun e!3998662 () Bool)

(declare-fun call!578425 () Bool)

(assert (=> b!6608914 (= e!3998662 call!578425)))

(declare-fun call!578424 () Bool)

(assert (=> b!6608915 (= e!3998664 call!578424)))

(declare-fun b!6608916 () Bool)

(declare-fun c!1218050 () Bool)

(assert (=> b!6608916 (= c!1218050 ((_ is ElementMatch!16475) (regTwo!33463 lt!2415134)))))

(declare-fun e!3998666 () Bool)

(declare-fun e!3998663 () Bool)

(assert (=> b!6608916 (= e!3998666 e!3998663)))

(declare-fun b!6608918 () Bool)

(declare-fun res!2709937 () Bool)

(declare-fun e!3998665 () Bool)

(assert (=> b!6608918 (=> res!2709937 e!3998665)))

(assert (=> b!6608918 (= res!2709937 call!578425)))

(assert (=> b!6608918 (= e!3998664 e!3998665)))

(declare-fun b!6608919 () Bool)

(assert (=> b!6608919 (= e!3998663 (= Nil!65600 (Cons!65600 (c!1217326 (regTwo!33463 lt!2415134)) Nil!65600)))))

(declare-fun bm!578419 () Bool)

(assert (=> bm!578419 (= call!578425 (isEmpty!37882 Nil!65600))))

(declare-fun b!6608920 () Bool)

(declare-fun c!1218051 () Bool)

(assert (=> b!6608920 (= c!1218051 ((_ is Union!16475) (regTwo!33463 lt!2415134)))))

(assert (=> b!6608920 (= e!3998663 e!3998668)))

(declare-fun b!6608921 () Bool)

(declare-fun e!3998667 () Bool)

(assert (=> b!6608921 (= e!3998667 (matchRSpec!3576 (regTwo!33463 (regTwo!33463 lt!2415134)) Nil!65600))))

(declare-fun bm!578420 () Bool)

(assert (=> bm!578420 (= call!578424 (Exists!3545 (ite c!1218048 lambda!368790 lambda!368791)))))

(declare-fun b!6608922 () Bool)

(assert (=> b!6608922 (= e!3998662 e!3998666)))

(declare-fun res!2709938 () Bool)

(assert (=> b!6608922 (= res!2709938 (not ((_ is EmptyLang!16475) (regTwo!33463 lt!2415134))))))

(assert (=> b!6608922 (=> (not res!2709938) (not e!3998666))))

(assert (=> b!6608923 (= e!3998665 call!578424)))

(declare-fun b!6608917 () Bool)

(assert (=> b!6608917 (= e!3998668 e!3998667)))

(declare-fun res!2709939 () Bool)

(assert (=> b!6608917 (= res!2709939 (matchRSpec!3576 (regOne!33463 (regTwo!33463 lt!2415134)) Nil!65600))))

(assert (=> b!6608917 (=> res!2709939 e!3998667)))

(declare-fun d!2072523 () Bool)

(declare-fun c!1218049 () Bool)

(assert (=> d!2072523 (= c!1218049 ((_ is EmptyExpr!16475) (regTwo!33463 lt!2415134)))))

(assert (=> d!2072523 (= (matchRSpec!3576 (regTwo!33463 lt!2415134) Nil!65600) e!3998662)))

(assert (= (and d!2072523 c!1218049) b!6608914))

(assert (= (and d!2072523 (not c!1218049)) b!6608922))

(assert (= (and b!6608922 res!2709938) b!6608916))

(assert (= (and b!6608916 c!1218050) b!6608919))

(assert (= (and b!6608916 (not c!1218050)) b!6608920))

(assert (= (and b!6608920 c!1218051) b!6608917))

(assert (= (and b!6608920 (not c!1218051)) b!6608913))

(assert (= (and b!6608917 (not res!2709939)) b!6608921))

(assert (= (and b!6608913 c!1218048) b!6608918))

(assert (= (and b!6608913 (not c!1218048)) b!6608915))

(assert (= (and b!6608918 (not res!2709937)) b!6608923))

(assert (= (or b!6608923 b!6608915) bm!578420))

(assert (= (or b!6608914 b!6608918) bm!578419))

(assert (=> bm!578419 m!7382400))

(declare-fun m!7383862 () Bool)

(assert (=> b!6608921 m!7383862))

(declare-fun m!7383864 () Bool)

(assert (=> bm!578420 m!7383864))

(declare-fun m!7383866 () Bool)

(assert (=> b!6608917 m!7383866))

(assert (=> b!6607403 d!2072523))

(declare-fun b!6608944 () Bool)

(declare-fun e!3998686 () Bool)

(declare-fun e!3998683 () Bool)

(assert (=> b!6608944 (= e!3998686 e!3998683)))

(declare-fun c!1218067 () Bool)

(assert (=> b!6608944 (= c!1218067 ((_ is Union!16475) (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131)))))))

(declare-fun b!6608945 () Bool)

(declare-fun res!2709942 () Bool)

(declare-fun e!3998680 () Bool)

(assert (=> b!6608945 (=> (not res!2709942) (not e!3998680))))

(declare-fun lt!2415401 () Int)

(declare-fun call!578437 () Int)

(assert (=> b!6608945 (= res!2709942 (> lt!2415401 call!578437))))

(declare-fun e!3998688 () Bool)

(assert (=> b!6608945 (= e!3998688 e!3998680)))

(declare-fun b!6608946 () Bool)

(declare-fun e!3998681 () Int)

(declare-fun call!578434 () Int)

(assert (=> b!6608946 (= e!3998681 (+ 1 call!578434))))

(declare-fun b!6608947 () Bool)

(declare-fun e!3998684 () Int)

(declare-fun call!578436 () Int)

(assert (=> b!6608947 (= e!3998684 (+ 1 call!578436))))

(declare-fun b!6608948 () Bool)

(declare-fun e!3998685 () Int)

(assert (=> b!6608948 (= e!3998685 1)))

(declare-fun b!6608949 () Bool)

(declare-fun e!3998687 () Bool)

(assert (=> b!6608949 (= e!3998683 e!3998687)))

(declare-fun res!2709940 () Bool)

(declare-fun call!578440 () Int)

(assert (=> b!6608949 (= res!2709940 (> lt!2415401 call!578440))))

(assert (=> b!6608949 (=> (not res!2709940) (not e!3998687))))

(declare-fun b!6608950 () Bool)

(assert (=> b!6608950 (= e!3998684 1)))

(declare-fun b!6608951 () Bool)

(declare-fun call!578439 () Int)

(assert (=> b!6608951 (= e!3998687 (> lt!2415401 call!578439))))

(declare-fun b!6608952 () Bool)

(declare-fun e!3998679 () Int)

(assert (=> b!6608952 (= e!3998679 (+ 1 call!578436))))

(declare-fun b!6608953 () Bool)

(declare-fun c!1218066 () Bool)

(assert (=> b!6608953 (= c!1218066 ((_ is Union!16475) (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131)))))))

(assert (=> b!6608953 (= e!3998681 e!3998679)))

(declare-fun b!6608954 () Bool)

(assert (=> b!6608954 (= e!3998679 e!3998684)))

(declare-fun c!1218062 () Bool)

(assert (=> b!6608954 (= c!1218062 ((_ is Concat!25320) (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131)))))))

(declare-fun c!1218063 () Bool)

(declare-fun bm!578429 () Bool)

(assert (=> bm!578429 (= call!578439 (regexDepth!372 (ite c!1218067 (regTwo!33463 (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131)))) (ite c!1218063 (regOne!33462 (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131)))) (reg!16804 (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131))))))))))

(declare-fun b!6608955 () Bool)

(declare-fun e!3998682 () Bool)

(assert (=> b!6608955 (= e!3998682 (> lt!2415401 call!578437))))

(declare-fun bm!578430 () Bool)

(assert (=> bm!578430 (= call!578437 call!578439)))

(declare-fun b!6608956 () Bool)

(assert (=> b!6608956 (= e!3998683 e!3998688)))

(assert (=> b!6608956 (= c!1218063 ((_ is Concat!25320) (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131)))))))

(declare-fun d!2072527 () Bool)

(assert (=> d!2072527 e!3998686))

(declare-fun res!2709941 () Bool)

(assert (=> d!2072527 (=> (not res!2709941) (not e!3998686))))

(assert (=> d!2072527 (= res!2709941 (> lt!2415401 0))))

(assert (=> d!2072527 (= lt!2415401 e!3998685)))

(declare-fun c!1218065 () Bool)

(assert (=> d!2072527 (= c!1218065 ((_ is ElementMatch!16475) (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131)))))))

(assert (=> d!2072527 (= (regexDepth!372 (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131)))) lt!2415401)))

(declare-fun bm!578431 () Bool)

(declare-fun c!1218068 () Bool)

(assert (=> bm!578431 (= call!578434 (regexDepth!372 (ite c!1218068 (reg!16804 (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131)))) (ite c!1218066 (regTwo!33463 (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131)))) (regOne!33462 (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131))))))))))

(declare-fun b!6608957 () Bool)

(assert (=> b!6608957 (= e!3998685 e!3998681)))

(assert (=> b!6608957 (= c!1218068 ((_ is Star!16475) (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131)))))))

(declare-fun bm!578432 () Bool)

(declare-fun call!578435 () Int)

(assert (=> bm!578432 (= call!578435 call!578434)))

(declare-fun c!1218064 () Bool)

(declare-fun b!6608958 () Bool)

(assert (=> b!6608958 (= c!1218064 ((_ is Star!16475) (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131)))))))

(assert (=> b!6608958 (= e!3998688 e!3998682)))

(declare-fun b!6608959 () Bool)

(assert (=> b!6608959 (= e!3998680 (> lt!2415401 call!578440))))

(declare-fun bm!578433 () Bool)

(declare-fun call!578438 () Int)

(assert (=> bm!578433 (= call!578438 (regexDepth!372 (ite c!1218066 (regOne!33463 (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131)))) (regTwo!33462 (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131)))))))))

(declare-fun bm!578434 () Bool)

(assert (=> bm!578434 (= call!578440 (regexDepth!372 (ite c!1218067 (regOne!33463 (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131)))) (regTwo!33462 (ite c!1217672 (reg!16804 lt!2415131) (ite c!1217670 (regTwo!33463 lt!2415131) (regOne!33462 lt!2415131)))))))))

(declare-fun bm!578435 () Bool)

(assert (=> bm!578435 (= call!578436 (maxBigInt!0 (ite c!1218066 call!578438 call!578435) (ite c!1218066 call!578435 call!578438)))))

(declare-fun b!6608960 () Bool)

(assert (=> b!6608960 (= e!3998682 (= lt!2415401 1))))

(assert (= (and d!2072527 c!1218065) b!6608948))

(assert (= (and d!2072527 (not c!1218065)) b!6608957))

(assert (= (and b!6608957 c!1218068) b!6608946))

(assert (= (and b!6608957 (not c!1218068)) b!6608953))

(assert (= (and b!6608953 c!1218066) b!6608952))

(assert (= (and b!6608953 (not c!1218066)) b!6608954))

(assert (= (and b!6608954 c!1218062) b!6608947))

(assert (= (and b!6608954 (not c!1218062)) b!6608950))

(assert (= (or b!6608952 b!6608947) bm!578432))

(assert (= (or b!6608952 b!6608947) bm!578433))

(assert (= (or b!6608952 b!6608947) bm!578435))

(assert (= (or b!6608946 bm!578432) bm!578431))

(assert (= (and d!2072527 res!2709941) b!6608944))

(assert (= (and b!6608944 c!1218067) b!6608949))

(assert (= (and b!6608944 (not c!1218067)) b!6608956))

(assert (= (and b!6608949 res!2709940) b!6608951))

(assert (= (and b!6608956 c!1218063) b!6608945))

(assert (= (and b!6608956 (not c!1218063)) b!6608958))

(assert (= (and b!6608945 res!2709942) b!6608959))

(assert (= (and b!6608958 c!1218064) b!6608955))

(assert (= (and b!6608958 (not c!1218064)) b!6608960))

(assert (= (or b!6608945 b!6608955) bm!578430))

(assert (= (or b!6608951 bm!578430) bm!578429))

(assert (= (or b!6608949 b!6608959) bm!578434))

(declare-fun m!7383868 () Bool)

(assert (=> bm!578429 m!7383868))

(declare-fun m!7383870 () Bool)

(assert (=> bm!578434 m!7383870))

(declare-fun m!7383872 () Bool)

(assert (=> bm!578431 m!7383872))

(declare-fun m!7383874 () Bool)

(assert (=> bm!578435 m!7383874))

(declare-fun m!7383876 () Bool)

(assert (=> bm!578433 m!7383876))

(assert (=> bm!578112 d!2072527))

(assert (=> d!2071819 d!2072457))

(declare-fun d!2072529 () Bool)

(declare-fun e!3998689 () Bool)

(assert (=> d!2072529 e!3998689))

(declare-fun c!1218070 () Bool)

(assert (=> d!2072529 (= c!1218070 ((_ is EmptyExpr!16475) (reg!16804 (regOne!33462 r!7292))))))

(declare-fun lt!2415402 () Bool)

(declare-fun e!3998695 () Bool)

(assert (=> d!2072529 (= lt!2415402 e!3998695)))

(declare-fun c!1218069 () Bool)

(assert (=> d!2072529 (= c!1218069 (isEmpty!37882 Nil!65600))))

(assert (=> d!2072529 (validRegex!8211 (reg!16804 (regOne!33462 r!7292)))))

(assert (=> d!2072529 (= (matchR!8658 (reg!16804 (regOne!33462 r!7292)) Nil!65600) lt!2415402)))

(declare-fun b!6608961 () Bool)

(declare-fun e!3998690 () Bool)

(assert (=> b!6608961 (= e!3998690 (= (head!13402 Nil!65600) (c!1217326 (reg!16804 (regOne!33462 r!7292)))))))

(declare-fun b!6608962 () Bool)

(declare-fun e!3998692 () Bool)

(assert (=> b!6608962 (= e!3998692 (not lt!2415402))))

(declare-fun b!6608963 () Bool)

(declare-fun res!2709949 () Bool)

(assert (=> b!6608963 (=> (not res!2709949) (not e!3998690))))

(assert (=> b!6608963 (= res!2709949 (isEmpty!37882 (tail!12487 Nil!65600)))))

(declare-fun bm!578436 () Bool)

(declare-fun call!578441 () Bool)

(assert (=> bm!578436 (= call!578441 (isEmpty!37882 Nil!65600))))

(declare-fun b!6608964 () Bool)

(declare-fun e!3998694 () Bool)

(declare-fun e!3998693 () Bool)

(assert (=> b!6608964 (= e!3998694 e!3998693)))

(declare-fun res!2709950 () Bool)

(assert (=> b!6608964 (=> res!2709950 e!3998693)))

(assert (=> b!6608964 (= res!2709950 call!578441)))

(declare-fun b!6608965 () Bool)

(declare-fun res!2709948 () Bool)

(declare-fun e!3998691 () Bool)

(assert (=> b!6608965 (=> res!2709948 e!3998691)))

(assert (=> b!6608965 (= res!2709948 (not ((_ is ElementMatch!16475) (reg!16804 (regOne!33462 r!7292)))))))

(assert (=> b!6608965 (= e!3998692 e!3998691)))

(declare-fun b!6608966 () Bool)

(assert (=> b!6608966 (= e!3998689 e!3998692)))

(declare-fun c!1218071 () Bool)

(assert (=> b!6608966 (= c!1218071 ((_ is EmptyLang!16475) (reg!16804 (regOne!33462 r!7292))))))

(declare-fun b!6608967 () Bool)

(assert (=> b!6608967 (= e!3998691 e!3998694)))

(declare-fun res!2709946 () Bool)

(assert (=> b!6608967 (=> (not res!2709946) (not e!3998694))))

(assert (=> b!6608967 (= res!2709946 (not lt!2415402))))

(declare-fun b!6608968 () Bool)

(declare-fun res!2709947 () Bool)

(assert (=> b!6608968 (=> res!2709947 e!3998691)))

(assert (=> b!6608968 (= res!2709947 e!3998690)))

(declare-fun res!2709944 () Bool)

(assert (=> b!6608968 (=> (not res!2709944) (not e!3998690))))

(assert (=> b!6608968 (= res!2709944 lt!2415402)))

(declare-fun b!6608969 () Bool)

(assert (=> b!6608969 (= e!3998695 (matchR!8658 (derivativeStep!5159 (reg!16804 (regOne!33462 r!7292)) (head!13402 Nil!65600)) (tail!12487 Nil!65600)))))

(declare-fun b!6608970 () Bool)

(declare-fun res!2709945 () Bool)

(assert (=> b!6608970 (=> res!2709945 e!3998693)))

(assert (=> b!6608970 (= res!2709945 (not (isEmpty!37882 (tail!12487 Nil!65600))))))

(declare-fun b!6608971 () Bool)

(assert (=> b!6608971 (= e!3998695 (nullable!6468 (reg!16804 (regOne!33462 r!7292))))))

(declare-fun b!6608972 () Bool)

(declare-fun res!2709943 () Bool)

(assert (=> b!6608972 (=> (not res!2709943) (not e!3998690))))

(assert (=> b!6608972 (= res!2709943 (not call!578441))))

(declare-fun b!6608973 () Bool)

(assert (=> b!6608973 (= e!3998689 (= lt!2415402 call!578441))))

(declare-fun b!6608974 () Bool)

(assert (=> b!6608974 (= e!3998693 (not (= (head!13402 Nil!65600) (c!1217326 (reg!16804 (regOne!33462 r!7292))))))))

(assert (= (and d!2072529 c!1218069) b!6608971))

(assert (= (and d!2072529 (not c!1218069)) b!6608969))

(assert (= (and d!2072529 c!1218070) b!6608973))

(assert (= (and d!2072529 (not c!1218070)) b!6608966))

(assert (= (and b!6608966 c!1218071) b!6608962))

(assert (= (and b!6608966 (not c!1218071)) b!6608965))

(assert (= (and b!6608965 (not res!2709948)) b!6608968))

(assert (= (and b!6608968 res!2709944) b!6608972))

(assert (= (and b!6608972 res!2709943) b!6608963))

(assert (= (and b!6608963 res!2709949) b!6608961))

(assert (= (and b!6608968 (not res!2709947)) b!6608967))

(assert (= (and b!6608967 res!2709946) b!6608964))

(assert (= (and b!6608964 (not res!2709950)) b!6608970))

(assert (= (and b!6608970 (not res!2709945)) b!6608974))

(assert (= (or b!6608973 b!6608964 b!6608972) bm!578436))

(assert (=> b!6608969 m!7382390))

(assert (=> b!6608969 m!7382390))

(declare-fun m!7383878 () Bool)

(assert (=> b!6608969 m!7383878))

(assert (=> b!6608969 m!7382394))

(assert (=> b!6608969 m!7383878))

(assert (=> b!6608969 m!7382394))

(declare-fun m!7383880 () Bool)

(assert (=> b!6608969 m!7383880))

(assert (=> b!6608971 m!7382880))

(assert (=> bm!578436 m!7382400))

(assert (=> b!6608961 m!7382390))

(assert (=> b!6608963 m!7382394))

(assert (=> b!6608963 m!7382394))

(assert (=> b!6608963 m!7382402))

(assert (=> d!2072529 m!7382400))

(assert (=> d!2072529 m!7382378))

(assert (=> b!6608974 m!7382390))

(assert (=> b!6608970 m!7382394))

(assert (=> b!6608970 m!7382394))

(assert (=> b!6608970 m!7382402))

(assert (=> d!2071819 d!2072529))

(assert (=> d!2071819 d!2072233))

(declare-fun d!2072531 () Bool)

(assert (=> d!2072531 true))

(assert (=> d!2072531 true))

(declare-fun res!2709951 () Bool)

(assert (=> d!2072531 (= (choose!49347 lambda!368577) res!2709951)))

(assert (=> d!2071753 d!2072531))

(declare-fun bs!1694427 () Bool)

(declare-fun b!6608995 () Bool)

(assert (= bs!1694427 (and b!6608995 d!2072109)))

(declare-fun lambda!368792 () Int)

(assert (=> bs!1694427 (not (= lambda!368792 lambda!368721))))

(declare-fun bs!1694428 () Bool)

(assert (= bs!1694428 (and b!6608995 d!2071761)))

(assert (=> bs!1694428 (not (= lambda!368792 lambda!368653))))

(declare-fun bs!1694429 () Bool)

(assert (= bs!1694429 (and b!6608995 b!6608069)))

(assert (=> bs!1694429 (= (and (= (reg!16804 (regOne!33463 r!7292)) (reg!16804 (regTwo!33463 r!7292))) (= (regOne!33463 r!7292) (regTwo!33463 r!7292))) (= lambda!368792 lambda!368726))))

(declare-fun bs!1694431 () Bool)

(assert (= bs!1694431 (and b!6608995 b!6606503)))

(assert (=> bs!1694431 (not (= lambda!368792 lambda!368580))))

(declare-fun bs!1694433 () Bool)

(assert (= bs!1694433 (and b!6608995 b!6608915)))

(assert (=> bs!1694433 (not (= lambda!368792 lambda!368791))))

(declare-fun bs!1694435 () Bool)

(assert (= bs!1694435 (and b!6608995 b!6607530)))

(assert (=> bs!1694435 (= (and (= (reg!16804 (regOne!33463 r!7292)) (reg!16804 r!7292)) (= (regOne!33463 r!7292) r!7292)) (= lambda!368792 lambda!368692))))

(declare-fun bs!1694438 () Bool)

(assert (= bs!1694438 (and b!6608995 d!2071833)))

(assert (=> bs!1694438 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regOne!33463 r!7292)) (reg!16804 (regOne!33462 r!7292))) (= (regOne!33463 r!7292) (Star!16475 (reg!16804 (regOne!33462 r!7292))))) (= lambda!368792 lambda!368687))))

(declare-fun bs!1694441 () Bool)

(assert (= bs!1694441 (and b!6608995 b!6608417)))

(assert (=> bs!1694441 (= (and (= (reg!16804 (regOne!33463 r!7292)) (reg!16804 (regTwo!33463 lt!2415143))) (= (regOne!33463 r!7292) (regTwo!33463 lt!2415143))) (= lambda!368792 lambda!368750))))

(declare-fun bs!1694443 () Bool)

(assert (= bs!1694443 (and b!6608995 d!2071823)))

(assert (=> bs!1694443 (not (= lambda!368792 lambda!368675))))

(declare-fun bs!1694445 () Bool)

(assert (= bs!1694445 (and b!6608995 b!6607454)))

(assert (=> bs!1694445 (= (and (= (reg!16804 (regOne!33463 r!7292)) (reg!16804 lt!2415143)) (= (regOne!33463 r!7292) lt!2415143)) (= lambda!368792 lambda!368690))))

(assert (=> bs!1694428 (not (= lambda!368792 lambda!368654))))

(declare-fun bs!1694446 () Bool)

(assert (= bs!1694446 (and b!6608995 b!6607397)))

(assert (=> bs!1694446 (not (= lambda!368792 lambda!368681))))

(declare-fun bs!1694447 () Bool)

(assert (= bs!1694447 (and b!6608995 b!6606515)))

(assert (=> bs!1694447 (not (= lambda!368792 lambda!368576))))

(assert (=> bs!1694431 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regOne!33463 r!7292)) (reg!16804 (regOne!33462 r!7292))) (= (regOne!33463 r!7292) lt!2415134)) (= lambda!368792 lambda!368581))))

(declare-fun bs!1694448 () Bool)

(assert (= bs!1694448 (and b!6608995 b!6608409)))

(assert (=> bs!1694448 (not (= lambda!368792 lambda!368751))))

(declare-fun bs!1694449 () Bool)

(assert (= bs!1694449 (and b!6608995 d!2072203)))

(assert (=> bs!1694449 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regOne!33463 r!7292)) (reg!16804 (regOne!33462 r!7292))) (= (regOne!33463 r!7292) (Star!16475 (reg!16804 (regOne!33462 r!7292))))) (= lambda!368792 lambda!368742))))

(assert (=> bs!1694431 (not (= lambda!368792 lambda!368579))))

(assert (=> bs!1694447 (not (= lambda!368792 lambda!368577))))

(assert (=> bs!1694443 (not (= lambda!368792 lambda!368674))))

(declare-fun bs!1694450 () Bool)

(assert (= bs!1694450 (and b!6608995 d!2071755)))

(assert (=> bs!1694450 (not (= lambda!368792 lambda!368648))))

(assert (=> bs!1694438 (not (= lambda!368792 lambda!368686))))

(declare-fun bs!1694451 () Bool)

(assert (= bs!1694451 (and b!6608995 b!6607405)))

(assert (=> bs!1694451 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regOne!33463 r!7292)) (reg!16804 lt!2415134)) (= (regOne!33463 r!7292) lt!2415134)) (= lambda!368792 lambda!368680))))

(declare-fun bs!1694452 () Bool)

(assert (= bs!1694452 (and b!6608995 b!6607446)))

(assert (=> bs!1694452 (not (= lambda!368792 lambda!368691))))

(declare-fun bs!1694453 () Bool)

(assert (= bs!1694453 (and b!6608995 b!6608923)))

(assert (=> bs!1694453 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regOne!33463 r!7292)) (reg!16804 (regTwo!33463 lt!2415134))) (= (regOne!33463 r!7292) (regTwo!33463 lt!2415134))) (= lambda!368792 lambda!368790))))

(declare-fun bs!1694454 () Bool)

(assert (= bs!1694454 (and b!6608995 b!6608061)))

(assert (=> bs!1694454 (not (= lambda!368792 lambda!368727))))

(declare-fun bs!1694455 () Bool)

(assert (= bs!1694455 (and b!6608995 b!6607522)))

(assert (=> bs!1694455 (not (= lambda!368792 lambda!368693))))

(declare-fun bs!1694456 () Bool)

(assert (= bs!1694456 (and b!6608995 d!2071841)))

(assert (=> bs!1694456 (not (= lambda!368792 lambda!368688))))

(assert (=> bs!1694449 (not (= lambda!368792 lambda!368741))))

(assert (=> b!6608995 true))

(assert (=> b!6608995 true))

(declare-fun bs!1694458 () Bool)

(declare-fun b!6608987 () Bool)

(assert (= bs!1694458 (and b!6608987 b!6608995)))

(declare-fun lambda!368795 () Int)

(assert (=> bs!1694458 (not (= lambda!368795 lambda!368792))))

(declare-fun bs!1694461 () Bool)

(assert (= bs!1694461 (and b!6608987 d!2072109)))

(assert (=> bs!1694461 (not (= lambda!368795 lambda!368721))))

(declare-fun bs!1694464 () Bool)

(assert (= bs!1694464 (and b!6608987 d!2071761)))

(assert (=> bs!1694464 (not (= lambda!368795 lambda!368653))))

(declare-fun bs!1694466 () Bool)

(assert (= bs!1694466 (and b!6608987 b!6608069)))

(assert (=> bs!1694466 (not (= lambda!368795 lambda!368726))))

(declare-fun bs!1694468 () Bool)

(assert (= bs!1694468 (and b!6608987 b!6606503)))

(assert (=> bs!1694468 (= (and (= s!2326 Nil!65600) (= (regOne!33462 (regOne!33463 r!7292)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 (regOne!33463 r!7292)) lt!2415134)) (= lambda!368795 lambda!368580))))

(declare-fun bs!1694470 () Bool)

(assert (= bs!1694470 (and b!6608987 b!6608915)))

(assert (=> bs!1694470 (= (and (= s!2326 Nil!65600) (= (regOne!33462 (regOne!33463 r!7292)) (regOne!33462 (regTwo!33463 lt!2415134))) (= (regTwo!33462 (regOne!33463 r!7292)) (regTwo!33462 (regTwo!33463 lt!2415134)))) (= lambda!368795 lambda!368791))))

(declare-fun bs!1694471 () Bool)

(assert (= bs!1694471 (and b!6608987 b!6607530)))

(assert (=> bs!1694471 (not (= lambda!368795 lambda!368692))))

(declare-fun bs!1694472 () Bool)

(assert (= bs!1694472 (and b!6608987 d!2071833)))

(assert (=> bs!1694472 (not (= lambda!368795 lambda!368687))))

(declare-fun bs!1694473 () Bool)

(assert (= bs!1694473 (and b!6608987 b!6608417)))

(assert (=> bs!1694473 (not (= lambda!368795 lambda!368750))))

(declare-fun bs!1694474 () Bool)

(assert (= bs!1694474 (and b!6608987 d!2071823)))

(assert (=> bs!1694474 (= (and (= s!2326 Nil!65600) (= (regOne!33462 (regOne!33463 r!7292)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 (regOne!33463 r!7292)) lt!2415134)) (= lambda!368795 lambda!368675))))

(declare-fun bs!1694475 () Bool)

(assert (= bs!1694475 (and b!6608987 b!6607454)))

(assert (=> bs!1694475 (not (= lambda!368795 lambda!368690))))

(assert (=> bs!1694464 (= (and (= (regOne!33462 (regOne!33463 r!7292)) (regOne!33462 r!7292)) (= (regTwo!33462 (regOne!33463 r!7292)) (regTwo!33462 r!7292))) (= lambda!368795 lambda!368654))))

(declare-fun bs!1694476 () Bool)

(assert (= bs!1694476 (and b!6608987 b!6607397)))

(assert (=> bs!1694476 (= (and (= s!2326 Nil!65600) (= (regOne!33462 (regOne!33463 r!7292)) (regOne!33462 lt!2415134)) (= (regTwo!33462 (regOne!33463 r!7292)) (regTwo!33462 lt!2415134))) (= lambda!368795 lambda!368681))))

(declare-fun bs!1694477 () Bool)

(assert (= bs!1694477 (and b!6608987 b!6606515)))

(assert (=> bs!1694477 (not (= lambda!368795 lambda!368576))))

(assert (=> bs!1694468 (not (= lambda!368795 lambda!368581))))

(declare-fun bs!1694478 () Bool)

(assert (= bs!1694478 (and b!6608987 b!6608409)))

(assert (=> bs!1694478 (= (and (= (regOne!33462 (regOne!33463 r!7292)) (regOne!33462 (regTwo!33463 lt!2415143))) (= (regTwo!33462 (regOne!33463 r!7292)) (regTwo!33462 (regTwo!33463 lt!2415143)))) (= lambda!368795 lambda!368751))))

(declare-fun bs!1694479 () Bool)

(assert (= bs!1694479 (and b!6608987 d!2072203)))

(assert (=> bs!1694479 (not (= lambda!368795 lambda!368742))))

(assert (=> bs!1694468 (not (= lambda!368795 lambda!368579))))

(assert (=> bs!1694477 (= (and (= (regOne!33462 (regOne!33463 r!7292)) (regOne!33462 r!7292)) (= (regTwo!33462 (regOne!33463 r!7292)) (regTwo!33462 r!7292))) (= lambda!368795 lambda!368577))))

(assert (=> bs!1694474 (not (= lambda!368795 lambda!368674))))

(declare-fun bs!1694480 () Bool)

(assert (= bs!1694480 (and b!6608987 d!2071755)))

(assert (=> bs!1694480 (not (= lambda!368795 lambda!368648))))

(assert (=> bs!1694472 (not (= lambda!368795 lambda!368686))))

(declare-fun bs!1694481 () Bool)

(assert (= bs!1694481 (and b!6608987 b!6607405)))

(assert (=> bs!1694481 (not (= lambda!368795 lambda!368680))))

(declare-fun bs!1694482 () Bool)

(assert (= bs!1694482 (and b!6608987 b!6607446)))

(assert (=> bs!1694482 (= (and (= (regOne!33462 (regOne!33463 r!7292)) (regOne!33462 lt!2415143)) (= (regTwo!33462 (regOne!33463 r!7292)) (regTwo!33462 lt!2415143))) (= lambda!368795 lambda!368691))))

(declare-fun bs!1694483 () Bool)

(assert (= bs!1694483 (and b!6608987 b!6608923)))

(assert (=> bs!1694483 (not (= lambda!368795 lambda!368790))))

(declare-fun bs!1694484 () Bool)

(assert (= bs!1694484 (and b!6608987 b!6608061)))

(assert (=> bs!1694484 (= (and (= (regOne!33462 (regOne!33463 r!7292)) (regOne!33462 (regTwo!33463 r!7292))) (= (regTwo!33462 (regOne!33463 r!7292)) (regTwo!33462 (regTwo!33463 r!7292)))) (= lambda!368795 lambda!368727))))

(declare-fun bs!1694485 () Bool)

(assert (= bs!1694485 (and b!6608987 b!6607522)))

(assert (=> bs!1694485 (= (and (= (regOne!33462 (regOne!33463 r!7292)) (regOne!33462 r!7292)) (= (regTwo!33462 (regOne!33463 r!7292)) (regTwo!33462 r!7292))) (= lambda!368795 lambda!368693))))

(declare-fun bs!1694486 () Bool)

(assert (= bs!1694486 (and b!6608987 d!2071841)))

(assert (=> bs!1694486 (not (= lambda!368795 lambda!368688))))

(assert (=> bs!1694479 (not (= lambda!368795 lambda!368741))))

(assert (=> b!6608987 true))

(assert (=> b!6608987 true))

(declare-fun b!6608985 () Bool)

(declare-fun e!3998707 () Bool)

(declare-fun e!3998703 () Bool)

(assert (=> b!6608985 (= e!3998707 e!3998703)))

(declare-fun c!1218077 () Bool)

(assert (=> b!6608985 (= c!1218077 ((_ is Star!16475) (regOne!33463 r!7292)))))

(declare-fun b!6608986 () Bool)

(declare-fun e!3998701 () Bool)

(declare-fun call!578447 () Bool)

(assert (=> b!6608986 (= e!3998701 call!578447)))

(declare-fun call!578446 () Bool)

(assert (=> b!6608987 (= e!3998703 call!578446)))

(declare-fun b!6608988 () Bool)

(declare-fun c!1218079 () Bool)

(assert (=> b!6608988 (= c!1218079 ((_ is ElementMatch!16475) (regOne!33463 r!7292)))))

(declare-fun e!3998705 () Bool)

(declare-fun e!3998702 () Bool)

(assert (=> b!6608988 (= e!3998705 e!3998702)))

(declare-fun b!6608990 () Bool)

(declare-fun res!2709952 () Bool)

(declare-fun e!3998704 () Bool)

(assert (=> b!6608990 (=> res!2709952 e!3998704)))

(assert (=> b!6608990 (= res!2709952 call!578447)))

(assert (=> b!6608990 (= e!3998703 e!3998704)))

(declare-fun b!6608991 () Bool)

(assert (=> b!6608991 (= e!3998702 (= s!2326 (Cons!65600 (c!1217326 (regOne!33463 r!7292)) Nil!65600)))))

(declare-fun bm!578441 () Bool)

(assert (=> bm!578441 (= call!578447 (isEmpty!37882 s!2326))))

(declare-fun b!6608992 () Bool)

(declare-fun c!1218080 () Bool)

(assert (=> b!6608992 (= c!1218080 ((_ is Union!16475) (regOne!33463 r!7292)))))

(assert (=> b!6608992 (= e!3998702 e!3998707)))

(declare-fun b!6608993 () Bool)

(declare-fun e!3998706 () Bool)

(assert (=> b!6608993 (= e!3998706 (matchRSpec!3576 (regTwo!33463 (regOne!33463 r!7292)) s!2326))))

(declare-fun bm!578442 () Bool)

(assert (=> bm!578442 (= call!578446 (Exists!3545 (ite c!1218077 lambda!368792 lambda!368795)))))

(declare-fun b!6608994 () Bool)

(assert (=> b!6608994 (= e!3998701 e!3998705)))

(declare-fun res!2709953 () Bool)

(assert (=> b!6608994 (= res!2709953 (not ((_ is EmptyLang!16475) (regOne!33463 r!7292))))))

(assert (=> b!6608994 (=> (not res!2709953) (not e!3998705))))

(assert (=> b!6608995 (= e!3998704 call!578446)))

(declare-fun b!6608989 () Bool)

(assert (=> b!6608989 (= e!3998707 e!3998706)))

(declare-fun res!2709954 () Bool)

(assert (=> b!6608989 (= res!2709954 (matchRSpec!3576 (regOne!33463 (regOne!33463 r!7292)) s!2326))))

(assert (=> b!6608989 (=> res!2709954 e!3998706)))

(declare-fun d!2072533 () Bool)

(declare-fun c!1218078 () Bool)

(assert (=> d!2072533 (= c!1218078 ((_ is EmptyExpr!16475) (regOne!33463 r!7292)))))

(assert (=> d!2072533 (= (matchRSpec!3576 (regOne!33463 r!7292) s!2326) e!3998701)))

(assert (= (and d!2072533 c!1218078) b!6608986))

(assert (= (and d!2072533 (not c!1218078)) b!6608994))

(assert (= (and b!6608994 res!2709953) b!6608988))

(assert (= (and b!6608988 c!1218079) b!6608991))

(assert (= (and b!6608988 (not c!1218079)) b!6608992))

(assert (= (and b!6608992 c!1218080) b!6608989))

(assert (= (and b!6608992 (not c!1218080)) b!6608985))

(assert (= (and b!6608989 (not res!2709954)) b!6608993))

(assert (= (and b!6608985 c!1218077) b!6608990))

(assert (= (and b!6608985 (not c!1218077)) b!6608987))

(assert (= (and b!6608990 (not res!2709952)) b!6608995))

(assert (= (or b!6608995 b!6608987) bm!578442))

(assert (= (or b!6608986 b!6608990) bm!578441))

(assert (=> bm!578441 m!7382460))

(declare-fun m!7383926 () Bool)

(assert (=> b!6608993 m!7383926))

(declare-fun m!7383928 () Bool)

(assert (=> bm!578442 m!7383928))

(declare-fun m!7383930 () Bool)

(assert (=> b!6608989 m!7383930))

(assert (=> b!6607524 d!2072533))

(declare-fun d!2072563 () Bool)

(assert (=> d!2072563 (= (isConcat!1376 lt!2415328) ((_ is Concat!25320) lt!2415328))))

(assert (=> b!6607655 d!2072563))

(assert (=> d!2071897 d!2071895))

(assert (=> d!2071897 d!2071893))

(declare-fun d!2072565 () Bool)

(assert (=> d!2072565 (= (matchR!8658 r!7292 s!2326) (matchRSpec!3576 r!7292 s!2326))))

(assert (=> d!2072565 true))

(declare-fun _$88!5292 () Unit!159235)

(assert (=> d!2072565 (= (choose!49355 r!7292 s!2326) _$88!5292)))

(declare-fun bs!1694489 () Bool)

(assert (= bs!1694489 d!2072565))

(assert (=> bs!1694489 m!7381582))

(assert (=> bs!1694489 m!7381580))

(assert (=> d!2071897 d!2072565))

(assert (=> d!2071897 d!2071843))

(assert (=> bm!578051 d!2072379))

(declare-fun d!2072567 () Bool)

(assert (=> d!2072567 (= (Exists!3545 (ite c!1217601 lambda!368690 lambda!368691)) (choose!49347 (ite c!1217601 lambda!368690 lambda!368691)))))

(declare-fun bs!1694490 () Bool)

(assert (= bs!1694490 d!2072567))

(declare-fun m!7383934 () Bool)

(assert (=> bs!1694490 m!7383934))

(assert (=> bm!578072 d!2072567))

(assert (=> b!6607517 d!2071965))

(declare-fun d!2072569 () Bool)

(declare-fun e!3998736 () Bool)

(assert (=> d!2072569 e!3998736))

(declare-fun c!1218097 () Bool)

(assert (=> d!2072569 (= c!1218097 ((_ is EmptyExpr!16475) lt!2415134))))

(declare-fun lt!2415404 () Bool)

(declare-fun e!3998742 () Bool)

(assert (=> d!2072569 (= lt!2415404 e!3998742)))

(declare-fun c!1218096 () Bool)

(assert (=> d!2072569 (= c!1218096 (isEmpty!37882 (_2!36757 (get!22794 lt!2415288))))))

(assert (=> d!2072569 (validRegex!8211 lt!2415134)))

(assert (=> d!2072569 (= (matchR!8658 lt!2415134 (_2!36757 (get!22794 lt!2415288))) lt!2415404)))

(declare-fun b!6609039 () Bool)

(declare-fun e!3998737 () Bool)

(assert (=> b!6609039 (= e!3998737 (= (head!13402 (_2!36757 (get!22794 lt!2415288))) (c!1217326 lt!2415134)))))

(declare-fun b!6609040 () Bool)

(declare-fun e!3998739 () Bool)

(assert (=> b!6609040 (= e!3998739 (not lt!2415404))))

(declare-fun b!6609041 () Bool)

(declare-fun res!2709974 () Bool)

(assert (=> b!6609041 (=> (not res!2709974) (not e!3998737))))

(assert (=> b!6609041 (= res!2709974 (isEmpty!37882 (tail!12487 (_2!36757 (get!22794 lt!2415288)))))))

(declare-fun bm!578461 () Bool)

(declare-fun call!578466 () Bool)

(assert (=> bm!578461 (= call!578466 (isEmpty!37882 (_2!36757 (get!22794 lt!2415288))))))

(declare-fun b!6609042 () Bool)

(declare-fun e!3998741 () Bool)

(declare-fun e!3998740 () Bool)

(assert (=> b!6609042 (= e!3998741 e!3998740)))

(declare-fun res!2709975 () Bool)

(assert (=> b!6609042 (=> res!2709975 e!3998740)))

(assert (=> b!6609042 (= res!2709975 call!578466)))

(declare-fun b!6609043 () Bool)

(declare-fun res!2709973 () Bool)

(declare-fun e!3998738 () Bool)

(assert (=> b!6609043 (=> res!2709973 e!3998738)))

(assert (=> b!6609043 (= res!2709973 (not ((_ is ElementMatch!16475) lt!2415134)))))

(assert (=> b!6609043 (= e!3998739 e!3998738)))

(declare-fun b!6609044 () Bool)

(assert (=> b!6609044 (= e!3998736 e!3998739)))

(declare-fun c!1218098 () Bool)

(assert (=> b!6609044 (= c!1218098 ((_ is EmptyLang!16475) lt!2415134))))

(declare-fun b!6609045 () Bool)

(assert (=> b!6609045 (= e!3998738 e!3998741)))

(declare-fun res!2709971 () Bool)

(assert (=> b!6609045 (=> (not res!2709971) (not e!3998741))))

(assert (=> b!6609045 (= res!2709971 (not lt!2415404))))

(declare-fun b!6609046 () Bool)

(declare-fun res!2709972 () Bool)

(assert (=> b!6609046 (=> res!2709972 e!3998738)))

(assert (=> b!6609046 (= res!2709972 e!3998737)))

(declare-fun res!2709969 () Bool)

(assert (=> b!6609046 (=> (not res!2709969) (not e!3998737))))

(assert (=> b!6609046 (= res!2709969 lt!2415404)))

(declare-fun b!6609047 () Bool)

(assert (=> b!6609047 (= e!3998742 (matchR!8658 (derivativeStep!5159 lt!2415134 (head!13402 (_2!36757 (get!22794 lt!2415288)))) (tail!12487 (_2!36757 (get!22794 lt!2415288)))))))

(declare-fun b!6609048 () Bool)

(declare-fun res!2709970 () Bool)

(assert (=> b!6609048 (=> res!2709970 e!3998740)))

(assert (=> b!6609048 (= res!2709970 (not (isEmpty!37882 (tail!12487 (_2!36757 (get!22794 lt!2415288))))))))

(declare-fun b!6609049 () Bool)

(assert (=> b!6609049 (= e!3998742 (nullable!6468 lt!2415134))))

(declare-fun b!6609050 () Bool)

(declare-fun res!2709968 () Bool)

(assert (=> b!6609050 (=> (not res!2709968) (not e!3998737))))

(assert (=> b!6609050 (= res!2709968 (not call!578466))))

(declare-fun b!6609051 () Bool)

(assert (=> b!6609051 (= e!3998736 (= lt!2415404 call!578466))))

(declare-fun b!6609052 () Bool)

(assert (=> b!6609052 (= e!3998740 (not (= (head!13402 (_2!36757 (get!22794 lt!2415288))) (c!1217326 lt!2415134))))))

(assert (= (and d!2072569 c!1218096) b!6609049))

(assert (= (and d!2072569 (not c!1218096)) b!6609047))

(assert (= (and d!2072569 c!1218097) b!6609051))

(assert (= (and d!2072569 (not c!1218097)) b!6609044))

(assert (= (and b!6609044 c!1218098) b!6609040))

(assert (= (and b!6609044 (not c!1218098)) b!6609043))

(assert (= (and b!6609043 (not res!2709973)) b!6609046))

(assert (= (and b!6609046 res!2709969) b!6609050))

(assert (= (and b!6609050 res!2709968) b!6609041))

(assert (= (and b!6609041 res!2709974) b!6609039))

(assert (= (and b!6609046 (not res!2709972)) b!6609045))

(assert (= (and b!6609045 res!2709971) b!6609042))

(assert (= (and b!6609042 (not res!2709975)) b!6609048))

(assert (= (and b!6609048 (not res!2709970)) b!6609052))

(assert (= (or b!6609051 b!6609042 b!6609050) bm!578461))

(declare-fun m!7383944 () Bool)

(assert (=> b!6609047 m!7383944))

(assert (=> b!6609047 m!7383944))

(declare-fun m!7383946 () Bool)

(assert (=> b!6609047 m!7383946))

(declare-fun m!7383948 () Bool)

(assert (=> b!6609047 m!7383948))

(assert (=> b!6609047 m!7383946))

(assert (=> b!6609047 m!7383948))

(declare-fun m!7383950 () Bool)

(assert (=> b!6609047 m!7383950))

(assert (=> b!6609049 m!7382398))

(declare-fun m!7383952 () Bool)

(assert (=> bm!578461 m!7383952))

(assert (=> b!6609039 m!7383944))

(assert (=> b!6609041 m!7383948))

(assert (=> b!6609041 m!7383948))

(declare-fun m!7383954 () Bool)

(assert (=> b!6609041 m!7383954))

(assert (=> d!2072569 m!7383952))

(assert (=> d!2072569 m!7381632))

(assert (=> b!6609052 m!7383944))

(assert (=> b!6609048 m!7383948))

(assert (=> b!6609048 m!7383948))

(assert (=> b!6609048 m!7383954))

(assert (=> b!6607286 d!2072569))

(assert (=> b!6607286 d!2072037))

(declare-fun d!2072573 () Bool)

(assert (=> d!2072573 (= (isEmptyLang!1861 lt!2415195) ((_ is EmptyLang!16475) lt!2415195))))

(assert (=> b!6606833 d!2072573))

(assert (=> bs!1693609 d!2071805))

(assert (=> b!6607573 d!2071877))

(declare-fun d!2072577 () Bool)

(declare-fun c!1218109 () Bool)

(assert (=> d!2072577 (= c!1218109 (isEmpty!37882 (tail!12487 (t!379376 s!2326))))))

(declare-fun e!3998760 () Bool)

(assert (=> d!2072577 (= (matchZipper!2487 (derivationStepZipper!2441 lt!2415132 (head!13402 (t!379376 s!2326))) (tail!12487 (t!379376 s!2326))) e!3998760)))

(declare-fun b!6609084 () Bool)

(assert (=> b!6609084 (= e!3998760 (nullableZipper!2220 (derivationStepZipper!2441 lt!2415132 (head!13402 (t!379376 s!2326)))))))

(declare-fun b!6609085 () Bool)

(assert (=> b!6609085 (= e!3998760 (matchZipper!2487 (derivationStepZipper!2441 (derivationStepZipper!2441 lt!2415132 (head!13402 (t!379376 s!2326))) (head!13402 (tail!12487 (t!379376 s!2326)))) (tail!12487 (tail!12487 (t!379376 s!2326)))))))

(assert (= (and d!2072577 c!1218109) b!6609084))

(assert (= (and d!2072577 (not c!1218109)) b!6609085))

(assert (=> d!2072577 m!7382296))

(assert (=> d!2072577 m!7382826))

(assert (=> b!6609084 m!7382356))

(declare-fun m!7383960 () Bool)

(assert (=> b!6609084 m!7383960))

(assert (=> b!6609085 m!7382296))

(assert (=> b!6609085 m!7382830))

(assert (=> b!6609085 m!7382356))

(assert (=> b!6609085 m!7382830))

(declare-fun m!7383962 () Bool)

(assert (=> b!6609085 m!7383962))

(assert (=> b!6609085 m!7382296))

(assert (=> b!6609085 m!7382834))

(assert (=> b!6609085 m!7383962))

(assert (=> b!6609085 m!7382834))

(declare-fun m!7383964 () Bool)

(assert (=> b!6609085 m!7383964))

(assert (=> b!6607284 d!2072577))

(declare-fun bs!1694491 () Bool)

(declare-fun d!2072579 () Bool)

(assert (= bs!1694491 (and d!2072579 d!2072003)))

(declare-fun lambda!368796 () Int)

(assert (=> bs!1694491 (= lambda!368796 lambda!368705)))

(declare-fun bs!1694492 () Bool)

(assert (= bs!1694492 (and d!2072579 d!2072043)))

(assert (=> bs!1694492 (= lambda!368796 lambda!368708)))

(declare-fun bs!1694493 () Bool)

(assert (= bs!1694493 (and d!2072579 d!2072449)))

(assert (=> bs!1694493 (= (= (head!13402 (t!379376 s!2326)) (head!13402 s!2326)) (= lambda!368796 lambda!368778))))

(declare-fun bs!1694494 () Bool)

(assert (= bs!1694494 (and d!2072579 b!6606487)))

(assert (=> bs!1694494 (= (= (head!13402 (t!379376 s!2326)) (h!72048 s!2326)) (= lambda!368796 lambda!368578))))

(declare-fun bs!1694496 () Bool)

(assert (= bs!1694496 (and d!2072579 d!2072387)))

(assert (=> bs!1694496 (= (= (head!13402 (t!379376 s!2326)) (head!13402 s!2326)) (= lambda!368796 lambda!368758))))

(declare-fun bs!1694497 () Bool)

(assert (= bs!1694497 (and d!2072579 d!2071781)))

(assert (=> bs!1694497 (= (= (head!13402 (t!379376 s!2326)) (h!72048 s!2326)) (= lambda!368796 lambda!368657))))

(declare-fun bs!1694498 () Bool)

(assert (= bs!1694498 (and d!2072579 d!2071785)))

(assert (=> bs!1694498 (= (= (head!13402 (t!379376 s!2326)) (h!72048 s!2326)) (= lambda!368796 lambda!368661))))

(declare-fun bs!1694499 () Bool)

(assert (= bs!1694499 (and d!2072579 d!2072273)))

(assert (=> bs!1694499 (= lambda!368796 lambda!368744)))

(declare-fun bs!1694500 () Bool)

(assert (= bs!1694500 (and d!2072579 d!2071963)))

(assert (=> bs!1694500 (= (= (head!13402 (t!379376 s!2326)) (head!13402 s!2326)) (= lambda!368796 lambda!368702))))

(assert (=> d!2072579 true))

(assert (=> d!2072579 (= (derivationStepZipper!2441 lt!2415132 (head!13402 (t!379376 s!2326))) (flatMap!1980 lt!2415132 lambda!368796))))

(declare-fun bs!1694501 () Bool)

(assert (= bs!1694501 d!2072579))

(declare-fun m!7383980 () Bool)

(assert (=> bs!1694501 m!7383980))

(assert (=> b!6607284 d!2072579))

(assert (=> b!6607284 d!2072011))

(assert (=> b!6607284 d!2072013))

(declare-fun b!6609088 () Bool)

(declare-fun e!3998764 () Bool)

(declare-fun call!578475 () Bool)

(assert (=> b!6609088 (= e!3998764 call!578475)))

(declare-fun d!2072585 () Bool)

(declare-fun res!2709990 () Bool)

(declare-fun e!3998766 () Bool)

(assert (=> d!2072585 (=> res!2709990 e!3998766)))

(assert (=> d!2072585 (= res!2709990 ((_ is ElementMatch!16475) lt!2415307))))

(assert (=> d!2072585 (= (validRegex!8211 lt!2415307) e!3998766)))

(declare-fun b!6609089 () Bool)

(declare-fun e!3998763 () Bool)

(declare-fun e!3998768 () Bool)

(assert (=> b!6609089 (= e!3998763 e!3998768)))

(declare-fun res!2709989 () Bool)

(assert (=> b!6609089 (=> (not res!2709989) (not e!3998768))))

(declare-fun call!578476 () Bool)

(assert (=> b!6609089 (= res!2709989 call!578476)))

(declare-fun b!6609090 () Bool)

(declare-fun e!3998765 () Bool)

(declare-fun call!578477 () Bool)

(assert (=> b!6609090 (= e!3998765 call!578477)))

(declare-fun b!6609091 () Bool)

(declare-fun e!3998767 () Bool)

(assert (=> b!6609091 (= e!3998767 e!3998764)))

(declare-fun res!2709987 () Bool)

(assert (=> b!6609091 (= res!2709987 (not (nullable!6468 (reg!16804 lt!2415307))))))

(assert (=> b!6609091 (=> (not res!2709987) (not e!3998764))))

(declare-fun bm!578470 () Bool)

(assert (=> bm!578470 (= call!578477 call!578475)))

(declare-fun b!6609092 () Bool)

(declare-fun e!3998762 () Bool)

(assert (=> b!6609092 (= e!3998767 e!3998762)))

(declare-fun c!1218112 () Bool)

(assert (=> b!6609092 (= c!1218112 ((_ is Union!16475) lt!2415307))))

(declare-fun c!1218111 () Bool)

(declare-fun bm!578471 () Bool)

(assert (=> bm!578471 (= call!578475 (validRegex!8211 (ite c!1218111 (reg!16804 lt!2415307) (ite c!1218112 (regTwo!33463 lt!2415307) (regTwo!33462 lt!2415307)))))))

(declare-fun bm!578472 () Bool)

(assert (=> bm!578472 (= call!578476 (validRegex!8211 (ite c!1218112 (regOne!33463 lt!2415307) (regOne!33462 lt!2415307))))))

(declare-fun b!6609093 () Bool)

(declare-fun res!2709991 () Bool)

(assert (=> b!6609093 (=> res!2709991 e!3998763)))

(assert (=> b!6609093 (= res!2709991 (not ((_ is Concat!25320) lt!2415307)))))

(assert (=> b!6609093 (= e!3998762 e!3998763)))

(declare-fun b!6609094 () Bool)

(assert (=> b!6609094 (= e!3998766 e!3998767)))

(assert (=> b!6609094 (= c!1218111 ((_ is Star!16475) lt!2415307))))

(declare-fun b!6609095 () Bool)

(declare-fun res!2709988 () Bool)

(assert (=> b!6609095 (=> (not res!2709988) (not e!3998765))))

(assert (=> b!6609095 (= res!2709988 call!578476)))

(assert (=> b!6609095 (= e!3998762 e!3998765)))

(declare-fun b!6609096 () Bool)

(assert (=> b!6609096 (= e!3998768 call!578477)))

(assert (= (and d!2072585 (not res!2709990)) b!6609094))

(assert (= (and b!6609094 c!1218111) b!6609091))

(assert (= (and b!6609094 (not c!1218111)) b!6609092))

(assert (= (and b!6609091 res!2709987) b!6609088))

(assert (= (and b!6609092 c!1218112) b!6609095))

(assert (= (and b!6609092 (not c!1218112)) b!6609093))

(assert (= (and b!6609095 res!2709988) b!6609090))

(assert (= (and b!6609093 (not res!2709991)) b!6609089))

(assert (= (and b!6609089 res!2709989) b!6609096))

(assert (= (or b!6609090 b!6609096) bm!578470))

(assert (= (or b!6609095 b!6609089) bm!578472))

(assert (= (or b!6609088 bm!578470) bm!578471))

(declare-fun m!7383986 () Bool)

(assert (=> b!6609091 m!7383986))

(declare-fun m!7383988 () Bool)

(assert (=> bm!578471 m!7383988))

(declare-fun m!7383990 () Bool)

(assert (=> bm!578472 m!7383990))

(assert (=> d!2071859 d!2072585))

(declare-fun bs!1694511 () Bool)

(declare-fun d!2072589 () Bool)

(assert (= bs!1694511 (and d!2072589 d!2072459)))

(declare-fun lambda!368798 () Int)

(assert (=> bs!1694511 (= lambda!368798 lambda!368781)))

(declare-fun bs!1694512 () Bool)

(assert (= bs!1694512 (and d!2072589 d!2071985)))

(assert (=> bs!1694512 (= lambda!368798 lambda!368704)))

(declare-fun bs!1694513 () Bool)

(assert (= bs!1694513 (and d!2072589 d!2071783)))

(assert (=> bs!1694513 (= lambda!368798 lambda!368660)))

(declare-fun bs!1694515 () Bool)

(assert (= bs!1694515 (and d!2072589 d!2071903)))

(assert (=> bs!1694515 (= lambda!368798 lambda!368696)))

(declare-fun bs!1694516 () Bool)

(assert (= bs!1694516 (and d!2072589 d!2071851)))

(assert (=> bs!1694516 (= lambda!368798 lambda!368689)))

(declare-fun bs!1694517 () Bool)

(assert (= bs!1694517 (and d!2072589 d!2072451)))

(assert (=> bs!1694517 (= lambda!368798 lambda!368779)))

(declare-fun bs!1694518 () Bool)

(assert (= bs!1694518 (and d!2072589 b!6608634)))

(assert (=> bs!1694518 (not (= lambda!368798 lambda!368775))))

(declare-fun bs!1694519 () Bool)

(assert (= bs!1694519 (and d!2072589 b!6608632)))

(assert (=> bs!1694519 (not (= lambda!368798 lambda!368773))))

(declare-fun bs!1694520 () Bool)

(assert (= bs!1694520 (and d!2072589 d!2072321)))

(assert (=> bs!1694520 (= lambda!368798 lambda!368752)))

(declare-fun bs!1694521 () Bool)

(assert (= bs!1694521 (and d!2072589 d!2071909)))

(assert (=> bs!1694521 (= lambda!368798 lambda!368697)))

(declare-fun bs!1694522 () Bool)

(assert (= bs!1694522 (and d!2072589 d!2071653)))

(assert (=> bs!1694522 (= lambda!368798 lambda!368603)))

(declare-fun bs!1694523 () Bool)

(assert (= bs!1694523 (and d!2072589 d!2072275)))

(assert (=> bs!1694523 (= lambda!368798 lambda!368745)))

(declare-fun bs!1694524 () Bool)

(assert (= bs!1694524 (and d!2072589 d!2071951)))

(assert (=> bs!1694524 (= lambda!368798 lambda!368700)))

(declare-fun bs!1694525 () Bool)

(assert (= bs!1694525 (and d!2072589 d!2071661)))

(assert (=> bs!1694525 (= lambda!368798 lambda!368608)))

(declare-fun bs!1694526 () Bool)

(assert (= bs!1694526 (and d!2072589 d!2071953)))

(assert (=> bs!1694526 (= lambda!368798 lambda!368701)))

(declare-fun b!6609097 () Bool)

(declare-fun e!3998774 () Bool)

(declare-fun lt!2415407 () Regex!16475)

(assert (=> b!6609097 (= e!3998774 (isEmptyLang!1861 lt!2415407))))

(declare-fun b!6609098 () Bool)

(declare-fun e!3998769 () Regex!16475)

(assert (=> b!6609098 (= e!3998769 (Union!16475 (h!72049 (unfocusZipperList!1896 (Cons!65602 lt!2415123 Nil!65602))) (generalisedUnion!2319 (t!379377 (unfocusZipperList!1896 (Cons!65602 lt!2415123 Nil!65602))))))))

(declare-fun b!6609099 () Bool)

(declare-fun e!3998772 () Regex!16475)

(assert (=> b!6609099 (= e!3998772 (h!72049 (unfocusZipperList!1896 (Cons!65602 lt!2415123 Nil!65602))))))

(declare-fun b!6609100 () Bool)

(declare-fun e!3998773 () Bool)

(assert (=> b!6609100 (= e!3998773 (isEmpty!37878 (t!379377 (unfocusZipperList!1896 (Cons!65602 lt!2415123 Nil!65602)))))))

(declare-fun b!6609101 () Bool)

(assert (=> b!6609101 (= e!3998772 e!3998769)))

(declare-fun c!1218116 () Bool)

(assert (=> b!6609101 (= c!1218116 ((_ is Cons!65601) (unfocusZipperList!1896 (Cons!65602 lt!2415123 Nil!65602))))))

(declare-fun b!6609102 () Bool)

(declare-fun e!3998770 () Bool)

(assert (=> b!6609102 (= e!3998774 e!3998770)))

(declare-fun c!1218115 () Bool)

(assert (=> b!6609102 (= c!1218115 (isEmpty!37878 (tail!12486 (unfocusZipperList!1896 (Cons!65602 lt!2415123 Nil!65602)))))))

(declare-fun b!6609103 () Bool)

(assert (=> b!6609103 (= e!3998770 (= lt!2415407 (head!13401 (unfocusZipperList!1896 (Cons!65602 lt!2415123 Nil!65602)))))))

(declare-fun b!6609105 () Bool)

(assert (=> b!6609105 (= e!3998770 (isUnion!1291 lt!2415407))))

(declare-fun b!6609106 () Bool)

(declare-fun e!3998771 () Bool)

(assert (=> b!6609106 (= e!3998771 e!3998774)))

(declare-fun c!1218113 () Bool)

(assert (=> b!6609106 (= c!1218113 (isEmpty!37878 (unfocusZipperList!1896 (Cons!65602 lt!2415123 Nil!65602))))))

(declare-fun b!6609104 () Bool)

(assert (=> b!6609104 (= e!3998769 EmptyLang!16475)))

(assert (=> d!2072589 e!3998771))

(declare-fun res!2709992 () Bool)

(assert (=> d!2072589 (=> (not res!2709992) (not e!3998771))))

(assert (=> d!2072589 (= res!2709992 (validRegex!8211 lt!2415407))))

(assert (=> d!2072589 (= lt!2415407 e!3998772)))

(declare-fun c!1218114 () Bool)

(assert (=> d!2072589 (= c!1218114 e!3998773)))

(declare-fun res!2709993 () Bool)

(assert (=> d!2072589 (=> (not res!2709993) (not e!3998773))))

(assert (=> d!2072589 (= res!2709993 ((_ is Cons!65601) (unfocusZipperList!1896 (Cons!65602 lt!2415123 Nil!65602))))))

(assert (=> d!2072589 (forall!15673 (unfocusZipperList!1896 (Cons!65602 lt!2415123 Nil!65602)) lambda!368798)))

(assert (=> d!2072589 (= (generalisedUnion!2319 (unfocusZipperList!1896 (Cons!65602 lt!2415123 Nil!65602))) lt!2415407)))

(assert (= (and d!2072589 res!2709993) b!6609100))

(assert (= (and d!2072589 c!1218114) b!6609099))

(assert (= (and d!2072589 (not c!1218114)) b!6609101))

(assert (= (and b!6609101 c!1218116) b!6609098))

(assert (= (and b!6609101 (not c!1218116)) b!6609104))

(assert (= (and d!2072589 res!2709992) b!6609106))

(assert (= (and b!6609106 c!1218113) b!6609097))

(assert (= (and b!6609106 (not c!1218113)) b!6609102))

(assert (= (and b!6609102 c!1218115) b!6609103))

(assert (= (and b!6609102 (not c!1218115)) b!6609105))

(assert (=> b!6609103 m!7382476))

(declare-fun m!7383996 () Bool)

(assert (=> b!6609103 m!7383996))

(declare-fun m!7384000 () Bool)

(assert (=> d!2072589 m!7384000))

(assert (=> d!2072589 m!7382476))

(declare-fun m!7384002 () Bool)

(assert (=> d!2072589 m!7384002))

(declare-fun m!7384004 () Bool)

(assert (=> b!6609100 m!7384004))

(declare-fun m!7384006 () Bool)

(assert (=> b!6609098 m!7384006))

(assert (=> b!6609102 m!7382476))

(declare-fun m!7384008 () Bool)

(assert (=> b!6609102 m!7384008))

(assert (=> b!6609102 m!7384008))

(declare-fun m!7384010 () Bool)

(assert (=> b!6609102 m!7384010))

(assert (=> b!6609106 m!7382476))

(declare-fun m!7384012 () Bool)

(assert (=> b!6609106 m!7384012))

(declare-fun m!7384014 () Bool)

(assert (=> b!6609097 m!7384014))

(declare-fun m!7384016 () Bool)

(assert (=> b!6609105 m!7384016))

(assert (=> d!2071859 d!2072589))

(declare-fun bs!1694539 () Bool)

(declare-fun d!2072601 () Bool)

(assert (= bs!1694539 (and d!2072601 d!2072459)))

(declare-fun lambda!368801 () Int)

(assert (=> bs!1694539 (= lambda!368801 lambda!368781)))

(declare-fun bs!1694540 () Bool)

(assert (= bs!1694540 (and d!2072601 d!2071985)))

(assert (=> bs!1694540 (= lambda!368801 lambda!368704)))

(declare-fun bs!1694541 () Bool)

(assert (= bs!1694541 (and d!2072601 d!2071783)))

(assert (=> bs!1694541 (= lambda!368801 lambda!368660)))

(declare-fun bs!1694542 () Bool)

(assert (= bs!1694542 (and d!2072601 d!2071903)))

(assert (=> bs!1694542 (= lambda!368801 lambda!368696)))

(declare-fun bs!1694544 () Bool)

(assert (= bs!1694544 (and d!2072601 d!2071851)))

(assert (=> bs!1694544 (= lambda!368801 lambda!368689)))

(declare-fun bs!1694546 () Bool)

(assert (= bs!1694546 (and d!2072601 d!2072451)))

(assert (=> bs!1694546 (= lambda!368801 lambda!368779)))

(declare-fun bs!1694548 () Bool)

(assert (= bs!1694548 (and d!2072601 b!6608634)))

(assert (=> bs!1694548 (not (= lambda!368801 lambda!368775))))

(declare-fun bs!1694550 () Bool)

(assert (= bs!1694550 (and d!2072601 b!6608632)))

(assert (=> bs!1694550 (not (= lambda!368801 lambda!368773))))

(declare-fun bs!1694552 () Bool)

(assert (= bs!1694552 (and d!2072601 d!2072321)))

(assert (=> bs!1694552 (= lambda!368801 lambda!368752)))

(declare-fun bs!1694554 () Bool)

(assert (= bs!1694554 (and d!2072601 d!2072589)))

(assert (=> bs!1694554 (= lambda!368801 lambda!368798)))

(declare-fun bs!1694555 () Bool)

(assert (= bs!1694555 (and d!2072601 d!2071909)))

(assert (=> bs!1694555 (= lambda!368801 lambda!368697)))

(declare-fun bs!1694557 () Bool)

(assert (= bs!1694557 (and d!2072601 d!2071653)))

(assert (=> bs!1694557 (= lambda!368801 lambda!368603)))

(declare-fun bs!1694558 () Bool)

(assert (= bs!1694558 (and d!2072601 d!2072275)))

(assert (=> bs!1694558 (= lambda!368801 lambda!368745)))

(declare-fun bs!1694560 () Bool)

(assert (= bs!1694560 (and d!2072601 d!2071951)))

(assert (=> bs!1694560 (= lambda!368801 lambda!368700)))

(declare-fun bs!1694561 () Bool)

(assert (= bs!1694561 (and d!2072601 d!2071661)))

(assert (=> bs!1694561 (= lambda!368801 lambda!368608)))

(declare-fun bs!1694562 () Bool)

(assert (= bs!1694562 (and d!2072601 d!2071953)))

(assert (=> bs!1694562 (= lambda!368801 lambda!368701)))

(declare-fun lt!2415412 () List!65725)

(assert (=> d!2072601 (forall!15673 lt!2415412 lambda!368801)))

(declare-fun e!3998777 () List!65725)

(assert (=> d!2072601 (= lt!2415412 e!3998777)))

(declare-fun c!1218118 () Bool)

(assert (=> d!2072601 (= c!1218118 ((_ is Cons!65602) (Cons!65602 lt!2415123 Nil!65602)))))

(assert (=> d!2072601 (= (unfocusZipperList!1896 (Cons!65602 lt!2415123 Nil!65602)) lt!2415412)))

(declare-fun b!6609110 () Bool)

(assert (=> b!6609110 (= e!3998777 (Cons!65601 (generalisedConcat!2072 (exprs!6359 (h!72050 (Cons!65602 lt!2415123 Nil!65602)))) (unfocusZipperList!1896 (t!379378 (Cons!65602 lt!2415123 Nil!65602)))))))

(declare-fun b!6609111 () Bool)

(assert (=> b!6609111 (= e!3998777 Nil!65601)))

(assert (= (and d!2072601 c!1218118) b!6609110))

(assert (= (and d!2072601 (not c!1218118)) b!6609111))

(declare-fun m!7384018 () Bool)

(assert (=> d!2072601 m!7384018))

(declare-fun m!7384020 () Bool)

(assert (=> b!6609110 m!7384020))

(declare-fun m!7384022 () Bool)

(assert (=> b!6609110 m!7384022))

(assert (=> d!2071859 d!2072601))

(declare-fun d!2072603 () Bool)

(declare-fun e!3998778 () Bool)

(assert (=> d!2072603 e!3998778))

(declare-fun c!1218120 () Bool)

(assert (=> d!2072603 (= c!1218120 ((_ is EmptyExpr!16475) (derivativeStep!5159 lt!2415131 (head!13402 s!2326))))))

(declare-fun lt!2415413 () Bool)

(declare-fun e!3998784 () Bool)

(assert (=> d!2072603 (= lt!2415413 e!3998784)))

(declare-fun c!1218119 () Bool)

(assert (=> d!2072603 (= c!1218119 (isEmpty!37882 (tail!12487 s!2326)))))

(assert (=> d!2072603 (validRegex!8211 (derivativeStep!5159 lt!2415131 (head!13402 s!2326)))))

(assert (=> d!2072603 (= (matchR!8658 (derivativeStep!5159 lt!2415131 (head!13402 s!2326)) (tail!12487 s!2326)) lt!2415413)))

(declare-fun b!6609112 () Bool)

(declare-fun e!3998779 () Bool)

(assert (=> b!6609112 (= e!3998779 (= (head!13402 (tail!12487 s!2326)) (c!1217326 (derivativeStep!5159 lt!2415131 (head!13402 s!2326)))))))

(declare-fun b!6609113 () Bool)

(declare-fun e!3998781 () Bool)

(assert (=> b!6609113 (= e!3998781 (not lt!2415413))))

(declare-fun b!6609114 () Bool)

(declare-fun res!2710001 () Bool)

(assert (=> b!6609114 (=> (not res!2710001) (not e!3998779))))

(assert (=> b!6609114 (= res!2710001 (isEmpty!37882 (tail!12487 (tail!12487 s!2326))))))

(declare-fun bm!578473 () Bool)

(declare-fun call!578478 () Bool)

(assert (=> bm!578473 (= call!578478 (isEmpty!37882 (tail!12487 s!2326)))))

(declare-fun b!6609115 () Bool)

(declare-fun e!3998783 () Bool)

(declare-fun e!3998782 () Bool)

(assert (=> b!6609115 (= e!3998783 e!3998782)))

(declare-fun res!2710002 () Bool)

(assert (=> b!6609115 (=> res!2710002 e!3998782)))

(assert (=> b!6609115 (= res!2710002 call!578478)))

(declare-fun b!6609116 () Bool)

(declare-fun res!2710000 () Bool)

(declare-fun e!3998780 () Bool)

(assert (=> b!6609116 (=> res!2710000 e!3998780)))

(assert (=> b!6609116 (= res!2710000 (not ((_ is ElementMatch!16475) (derivativeStep!5159 lt!2415131 (head!13402 s!2326)))))))

(assert (=> b!6609116 (= e!3998781 e!3998780)))

(declare-fun b!6609117 () Bool)

(assert (=> b!6609117 (= e!3998778 e!3998781)))

(declare-fun c!1218121 () Bool)

(assert (=> b!6609117 (= c!1218121 ((_ is EmptyLang!16475) (derivativeStep!5159 lt!2415131 (head!13402 s!2326))))))

(declare-fun b!6609118 () Bool)

(assert (=> b!6609118 (= e!3998780 e!3998783)))

(declare-fun res!2709998 () Bool)

(assert (=> b!6609118 (=> (not res!2709998) (not e!3998783))))

(assert (=> b!6609118 (= res!2709998 (not lt!2415413))))

(declare-fun b!6609119 () Bool)

(declare-fun res!2709999 () Bool)

(assert (=> b!6609119 (=> res!2709999 e!3998780)))

(assert (=> b!6609119 (= res!2709999 e!3998779)))

(declare-fun res!2709996 () Bool)

(assert (=> b!6609119 (=> (not res!2709996) (not e!3998779))))

(assert (=> b!6609119 (= res!2709996 lt!2415413)))

(declare-fun b!6609120 () Bool)

(assert (=> b!6609120 (= e!3998784 (matchR!8658 (derivativeStep!5159 (derivativeStep!5159 lt!2415131 (head!13402 s!2326)) (head!13402 (tail!12487 s!2326))) (tail!12487 (tail!12487 s!2326))))))

(declare-fun b!6609121 () Bool)

(declare-fun res!2709997 () Bool)

(assert (=> b!6609121 (=> res!2709997 e!3998782)))

(assert (=> b!6609121 (= res!2709997 (not (isEmpty!37882 (tail!12487 (tail!12487 s!2326)))))))

(declare-fun b!6609122 () Bool)

(assert (=> b!6609122 (= e!3998784 (nullable!6468 (derivativeStep!5159 lt!2415131 (head!13402 s!2326))))))

(declare-fun b!6609123 () Bool)

(declare-fun res!2709995 () Bool)

(assert (=> b!6609123 (=> (not res!2709995) (not e!3998779))))

(assert (=> b!6609123 (= res!2709995 (not call!578478))))

(declare-fun b!6609124 () Bool)

(assert (=> b!6609124 (= e!3998778 (= lt!2415413 call!578478))))

(declare-fun b!6609125 () Bool)

(assert (=> b!6609125 (= e!3998782 (not (= (head!13402 (tail!12487 s!2326)) (c!1217326 (derivativeStep!5159 lt!2415131 (head!13402 s!2326))))))))

(assert (= (and d!2072603 c!1218119) b!6609122))

(assert (= (and d!2072603 (not c!1218119)) b!6609120))

(assert (= (and d!2072603 c!1218120) b!6609124))

(assert (= (and d!2072603 (not c!1218120)) b!6609117))

(assert (= (and b!6609117 c!1218121) b!6609113))

(assert (= (and b!6609117 (not c!1218121)) b!6609116))

(assert (= (and b!6609116 (not res!2710000)) b!6609119))

(assert (= (and b!6609119 res!2709996) b!6609123))

(assert (= (and b!6609123 res!2709995) b!6609114))

(assert (= (and b!6609114 res!2710001) b!6609112))

(assert (= (and b!6609119 (not res!2709999)) b!6609118))

(assert (= (and b!6609118 res!2709998) b!6609115))

(assert (= (and b!6609115 (not res!2710002)) b!6609121))

(assert (= (and b!6609121 (not res!2709997)) b!6609125))

(assert (= (or b!6609124 b!6609115 b!6609123) bm!578473))

(assert (=> b!6609120 m!7382454))

(assert (=> b!6609120 m!7382740))

(assert (=> b!6609120 m!7382534))

(assert (=> b!6609120 m!7382740))

(declare-fun m!7384032 () Bool)

(assert (=> b!6609120 m!7384032))

(assert (=> b!6609120 m!7382454))

(assert (=> b!6609120 m!7382744))

(assert (=> b!6609120 m!7384032))

(assert (=> b!6609120 m!7382744))

(declare-fun m!7384038 () Bool)

(assert (=> b!6609120 m!7384038))

(assert (=> b!6609122 m!7382534))

(declare-fun m!7384040 () Bool)

(assert (=> b!6609122 m!7384040))

(assert (=> bm!578473 m!7382454))

(assert (=> bm!578473 m!7382462))

(assert (=> b!6609112 m!7382454))

(assert (=> b!6609112 m!7382740))

(assert (=> b!6609114 m!7382454))

(assert (=> b!6609114 m!7382744))

(assert (=> b!6609114 m!7382744))

(assert (=> b!6609114 m!7383726))

(assert (=> d!2072603 m!7382454))

(assert (=> d!2072603 m!7382462))

(assert (=> d!2072603 m!7382534))

(declare-fun m!7384042 () Bool)

(assert (=> d!2072603 m!7384042))

(assert (=> b!6609125 m!7382454))

(assert (=> b!6609125 m!7382740))

(assert (=> b!6609121 m!7382454))

(assert (=> b!6609121 m!7382744))

(assert (=> b!6609121 m!7382744))

(assert (=> b!6609121 m!7383726))

(assert (=> b!6607512 d!2072603))

(declare-fun b!6609126 () Bool)

(declare-fun e!3998788 () Regex!16475)

(assert (=> b!6609126 (= e!3998788 EmptyLang!16475)))

(declare-fun bm!578474 () Bool)

(declare-fun call!578480 () Regex!16475)

(declare-fun call!578479 () Regex!16475)

(assert (=> bm!578474 (= call!578480 call!578479)))

(declare-fun bm!578475 () Bool)

(declare-fun call!578481 () Regex!16475)

(assert (=> bm!578475 (= call!578479 call!578481)))

(declare-fun b!6609127 () Bool)

(declare-fun e!3998787 () Regex!16475)

(assert (=> b!6609127 (= e!3998788 e!3998787)))

(declare-fun c!1218122 () Bool)

(assert (=> b!6609127 (= c!1218122 ((_ is ElementMatch!16475) lt!2415131))))

(declare-fun bm!578476 () Bool)

(declare-fun c!1218125 () Bool)

(declare-fun call!578482 () Regex!16475)

(assert (=> bm!578476 (= call!578482 (derivativeStep!5159 (ite c!1218125 (regOne!33463 lt!2415131) (regOne!33462 lt!2415131)) (head!13402 s!2326)))))

(declare-fun b!6609128 () Bool)

(assert (=> b!6609128 (= c!1218125 ((_ is Union!16475) lt!2415131))))

(declare-fun e!3998789 () Regex!16475)

(assert (=> b!6609128 (= e!3998787 e!3998789)))

(declare-fun b!6609129 () Bool)

(declare-fun e!3998786 () Regex!16475)

(assert (=> b!6609129 (= e!3998786 (Union!16475 (Concat!25320 call!578480 (regTwo!33462 lt!2415131)) EmptyLang!16475))))

(declare-fun b!6609130 () Bool)

(declare-fun e!3998785 () Regex!16475)

(assert (=> b!6609130 (= e!3998789 e!3998785)))

(declare-fun c!1218126 () Bool)

(assert (=> b!6609130 (= c!1218126 ((_ is Star!16475) lt!2415131))))

(declare-fun d!2072607 () Bool)

(declare-fun lt!2415414 () Regex!16475)

(assert (=> d!2072607 (validRegex!8211 lt!2415414)))

(assert (=> d!2072607 (= lt!2415414 e!3998788)))

(declare-fun c!1218123 () Bool)

(assert (=> d!2072607 (= c!1218123 (or ((_ is EmptyExpr!16475) lt!2415131) ((_ is EmptyLang!16475) lt!2415131)))))

(assert (=> d!2072607 (validRegex!8211 lt!2415131)))

(assert (=> d!2072607 (= (derivativeStep!5159 lt!2415131 (head!13402 s!2326)) lt!2415414)))

(declare-fun b!6609131 () Bool)

(assert (=> b!6609131 (= e!3998786 (Union!16475 (Concat!25320 call!578482 (regTwo!33462 lt!2415131)) call!578480))))

(declare-fun b!6609132 () Bool)

(assert (=> b!6609132 (= e!3998785 (Concat!25320 call!578479 lt!2415131))))

(declare-fun b!6609133 () Bool)

(assert (=> b!6609133 (= e!3998789 (Union!16475 call!578482 call!578481))))

(declare-fun b!6609134 () Bool)

(declare-fun c!1218124 () Bool)

(assert (=> b!6609134 (= c!1218124 (nullable!6468 (regOne!33462 lt!2415131)))))

(assert (=> b!6609134 (= e!3998785 e!3998786)))

(declare-fun b!6609135 () Bool)

(assert (=> b!6609135 (= e!3998787 (ite (= (head!13402 s!2326) (c!1217326 lt!2415131)) EmptyExpr!16475 EmptyLang!16475))))

(declare-fun bm!578477 () Bool)

(assert (=> bm!578477 (= call!578481 (derivativeStep!5159 (ite c!1218125 (regTwo!33463 lt!2415131) (ite c!1218126 (reg!16804 lt!2415131) (ite c!1218124 (regTwo!33462 lt!2415131) (regOne!33462 lt!2415131)))) (head!13402 s!2326)))))

(assert (= (and d!2072607 c!1218123) b!6609126))

(assert (= (and d!2072607 (not c!1218123)) b!6609127))

(assert (= (and b!6609127 c!1218122) b!6609135))

(assert (= (and b!6609127 (not c!1218122)) b!6609128))

(assert (= (and b!6609128 c!1218125) b!6609133))

(assert (= (and b!6609128 (not c!1218125)) b!6609130))

(assert (= (and b!6609130 c!1218126) b!6609132))

(assert (= (and b!6609130 (not c!1218126)) b!6609134))

(assert (= (and b!6609134 c!1218124) b!6609131))

(assert (= (and b!6609134 (not c!1218124)) b!6609129))

(assert (= (or b!6609131 b!6609129) bm!578474))

(assert (= (or b!6609132 bm!578474) bm!578475))

(assert (= (or b!6609133 bm!578475) bm!578477))

(assert (= (or b!6609133 b!6609131) bm!578476))

(assert (=> bm!578476 m!7382450))

(declare-fun m!7384044 () Bool)

(assert (=> bm!578476 m!7384044))

(declare-fun m!7384046 () Bool)

(assert (=> d!2072607 m!7384046))

(assert (=> d!2072607 m!7382540))

(declare-fun m!7384048 () Bool)

(assert (=> b!6609134 m!7384048))

(assert (=> bm!578477 m!7382450))

(declare-fun m!7384050 () Bool)

(assert (=> bm!578477 m!7384050))

(assert (=> b!6607512 d!2072607))

(assert (=> b!6607512 d!2071965))

(assert (=> b!6607512 d!2071969))

(assert (=> b!6607499 d!2072039))

(assert (=> b!6607499 d!2071969))

(assert (=> d!2071837 d!2071825))

(assert (=> d!2071837 d!2071831))

(declare-fun d!2072609 () Bool)

(assert (=> d!2072609 (= (matchR!8658 lt!2415134 Nil!65600) (matchRSpec!3576 lt!2415134 Nil!65600))))

(assert (=> d!2072609 true))

(declare-fun _$88!5293 () Unit!159235)

(assert (=> d!2072609 (= (choose!49355 lt!2415134 Nil!65600) _$88!5293)))

(declare-fun bs!1694574 () Bool)

(assert (= bs!1694574 d!2072609))

(assert (=> bs!1694574 m!7381630))

(assert (=> bs!1694574 m!7381640))

(assert (=> d!2071837 d!2072609))

(assert (=> d!2071837 d!2071829))

(declare-fun d!2072611 () Bool)

(assert (=> d!2072611 (= (flatMap!1980 lt!2415126 lambda!368657) (choose!49350 lt!2415126 lambda!368657))))

(declare-fun bs!1694575 () Bool)

(assert (= bs!1694575 d!2072611))

(declare-fun m!7384052 () Bool)

(assert (=> bs!1694575 m!7384052))

(assert (=> d!2071781 d!2072611))

(assert (=> b!6607108 d!2071883))

(assert (=> d!2071841 d!2071819))

(assert (=> d!2071841 d!2072233))

(assert (=> d!2071841 d!2071821))

(declare-fun d!2072613 () Bool)

(assert (=> d!2072613 (= (Exists!3545 lambda!368688) (choose!49347 lambda!368688))))

(declare-fun bs!1694576 () Bool)

(assert (= bs!1694576 d!2072613))

(declare-fun m!7384054 () Bool)

(assert (=> bs!1694576 m!7384054))

(assert (=> d!2071841 d!2072613))

(declare-fun bs!1694577 () Bool)

(declare-fun d!2072615 () Bool)

(assert (= bs!1694577 (and d!2072615 b!6608995)))

(declare-fun lambda!368806 () Int)

(assert (=> bs!1694577 (not (= lambda!368806 lambda!368792))))

(declare-fun bs!1694578 () Bool)

(assert (= bs!1694578 (and d!2072615 d!2072109)))

(assert (=> bs!1694578 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368806 lambda!368721))))

(declare-fun bs!1694579 () Bool)

(assert (= bs!1694579 (and d!2072615 d!2071761)))

(assert (=> bs!1694579 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368806 lambda!368653))))

(declare-fun bs!1694580 () Bool)

(assert (= bs!1694580 (and d!2072615 b!6608069)))

(assert (=> bs!1694580 (not (= lambda!368806 lambda!368726))))

(declare-fun bs!1694581 () Bool)

(assert (= bs!1694581 (and d!2072615 b!6606503)))

(assert (=> bs!1694581 (not (= lambda!368806 lambda!368580))))

(declare-fun bs!1694582 () Bool)

(assert (= bs!1694582 (and d!2072615 b!6608915)))

(assert (=> bs!1694582 (not (= lambda!368806 lambda!368791))))

(declare-fun bs!1694584 () Bool)

(assert (= bs!1694584 (and d!2072615 b!6608987)))

(assert (=> bs!1694584 (not (= lambda!368806 lambda!368795))))

(declare-fun bs!1694586 () Bool)

(assert (= bs!1694586 (and d!2072615 b!6607530)))

(assert (=> bs!1694586 (not (= lambda!368806 lambda!368692))))

(declare-fun bs!1694588 () Bool)

(assert (= bs!1694588 (and d!2072615 d!2071833)))

(assert (=> bs!1694588 (not (= lambda!368806 lambda!368687))))

(declare-fun bs!1694591 () Bool)

(assert (= bs!1694591 (and d!2072615 b!6608417)))

(assert (=> bs!1694591 (not (= lambda!368806 lambda!368750))))

(declare-fun bs!1694594 () Bool)

(assert (= bs!1694594 (and d!2072615 d!2071823)))

(assert (=> bs!1694594 (not (= lambda!368806 lambda!368675))))

(declare-fun bs!1694597 () Bool)

(assert (= bs!1694597 (and d!2072615 b!6607454)))

(assert (=> bs!1694597 (not (= lambda!368806 lambda!368690))))

(assert (=> bs!1694579 (not (= lambda!368806 lambda!368654))))

(declare-fun bs!1694601 () Bool)

(assert (= bs!1694601 (and d!2072615 b!6607397)))

(assert (=> bs!1694601 (not (= lambda!368806 lambda!368681))))

(declare-fun bs!1694602 () Bool)

(assert (= bs!1694602 (and d!2072615 b!6606515)))

(assert (=> bs!1694602 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368806 lambda!368576))))

(assert (=> bs!1694581 (not (= lambda!368806 lambda!368581))))

(declare-fun bs!1694604 () Bool)

(assert (= bs!1694604 (and d!2072615 b!6608409)))

(assert (=> bs!1694604 (not (= lambda!368806 lambda!368751))))

(declare-fun bs!1694605 () Bool)

(assert (= bs!1694605 (and d!2072615 d!2072203)))

(assert (=> bs!1694605 (not (= lambda!368806 lambda!368742))))

(assert (=> bs!1694581 (= lambda!368806 lambda!368579)))

(assert (=> bs!1694602 (not (= lambda!368806 lambda!368577))))

(assert (=> bs!1694594 (= lambda!368806 lambda!368674)))

(declare-fun bs!1694606 () Bool)

(assert (= bs!1694606 (and d!2072615 d!2071755)))

(assert (=> bs!1694606 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368806 lambda!368648))))

(assert (=> bs!1694588 (= (= lt!2415134 (Star!16475 (reg!16804 (regOne!33462 r!7292)))) (= lambda!368806 lambda!368686))))

(declare-fun bs!1694607 () Bool)

(assert (= bs!1694607 (and d!2072615 b!6607405)))

(assert (=> bs!1694607 (not (= lambda!368806 lambda!368680))))

(declare-fun bs!1694608 () Bool)

(assert (= bs!1694608 (and d!2072615 b!6607446)))

(assert (=> bs!1694608 (not (= lambda!368806 lambda!368691))))

(declare-fun bs!1694609 () Bool)

(assert (= bs!1694609 (and d!2072615 b!6608923)))

(assert (=> bs!1694609 (not (= lambda!368806 lambda!368790))))

(declare-fun bs!1694610 () Bool)

(assert (= bs!1694610 (and d!2072615 b!6608061)))

(assert (=> bs!1694610 (not (= lambda!368806 lambda!368727))))

(declare-fun bs!1694611 () Bool)

(assert (= bs!1694611 (and d!2072615 b!6607522)))

(assert (=> bs!1694611 (not (= lambda!368806 lambda!368693))))

(declare-fun bs!1694612 () Bool)

(assert (= bs!1694612 (and d!2072615 d!2071841)))

(assert (=> bs!1694612 (= lambda!368806 lambda!368688)))

(assert (=> bs!1694605 (= (= lt!2415134 (Star!16475 (reg!16804 (regOne!33462 r!7292)))) (= lambda!368806 lambda!368741))))

(assert (=> d!2072615 true))

(assert (=> d!2072615 true))

(assert (=> d!2072615 true))

(assert (=> d!2072615 (= (isDefined!13069 (findConcatSeparation!2780 (reg!16804 (regOne!33462 r!7292)) lt!2415134 Nil!65600 Nil!65600 Nil!65600)) (Exists!3545 lambda!368806))))

(assert (=> d!2072615 true))

(declare-fun _$89!2814 () Unit!159235)

(assert (=> d!2072615 (= (choose!49348 (reg!16804 (regOne!33462 r!7292)) lt!2415134 Nil!65600) _$89!2814)))

(declare-fun bs!1694613 () Bool)

(assert (= bs!1694613 d!2072615))

(assert (=> bs!1694613 m!7381626))

(assert (=> bs!1694613 m!7381626))

(assert (=> bs!1694613 m!7381628))

(declare-fun m!7384060 () Bool)

(assert (=> bs!1694613 m!7384060))

(assert (=> d!2071841 d!2072615))

(declare-fun b!6609139 () Bool)

(declare-fun e!3998792 () Bool)

(declare-fun call!578483 () Bool)

(assert (=> b!6609139 (= e!3998792 call!578483)))

(declare-fun d!2072619 () Bool)

(declare-fun res!2710006 () Bool)

(declare-fun e!3998794 () Bool)

(assert (=> d!2072619 (=> res!2710006 e!3998794)))

(assert (=> d!2072619 (= res!2710006 ((_ is ElementMatch!16475) (ite c!1217596 (regOne!33463 r!7292) (regOne!33462 r!7292))))))

(assert (=> d!2072619 (= (validRegex!8211 (ite c!1217596 (regOne!33463 r!7292) (regOne!33462 r!7292))) e!3998794)))

(declare-fun b!6609140 () Bool)

(declare-fun e!3998791 () Bool)

(declare-fun e!3998796 () Bool)

(assert (=> b!6609140 (= e!3998791 e!3998796)))

(declare-fun res!2710005 () Bool)

(assert (=> b!6609140 (=> (not res!2710005) (not e!3998796))))

(declare-fun call!578484 () Bool)

(assert (=> b!6609140 (= res!2710005 call!578484)))

(declare-fun b!6609141 () Bool)

(declare-fun e!3998793 () Bool)

(declare-fun call!578485 () Bool)

(assert (=> b!6609141 (= e!3998793 call!578485)))

(declare-fun b!6609142 () Bool)

(declare-fun e!3998795 () Bool)

(assert (=> b!6609142 (= e!3998795 e!3998792)))

(declare-fun res!2710003 () Bool)

(assert (=> b!6609142 (= res!2710003 (not (nullable!6468 (reg!16804 (ite c!1217596 (regOne!33463 r!7292) (regOne!33462 r!7292))))))))

(assert (=> b!6609142 (=> (not res!2710003) (not e!3998792))))

(declare-fun bm!578478 () Bool)

(assert (=> bm!578478 (= call!578485 call!578483)))

(declare-fun b!6609143 () Bool)

(declare-fun e!3998790 () Bool)

(assert (=> b!6609143 (= e!3998795 e!3998790)))

(declare-fun c!1218130 () Bool)

(assert (=> b!6609143 (= c!1218130 ((_ is Union!16475) (ite c!1217596 (regOne!33463 r!7292) (regOne!33462 r!7292))))))

(declare-fun c!1218129 () Bool)

(declare-fun bm!578479 () Bool)

(assert (=> bm!578479 (= call!578483 (validRegex!8211 (ite c!1218129 (reg!16804 (ite c!1217596 (regOne!33463 r!7292) (regOne!33462 r!7292))) (ite c!1218130 (regTwo!33463 (ite c!1217596 (regOne!33463 r!7292) (regOne!33462 r!7292))) (regTwo!33462 (ite c!1217596 (regOne!33463 r!7292) (regOne!33462 r!7292)))))))))

(declare-fun bm!578480 () Bool)

(assert (=> bm!578480 (= call!578484 (validRegex!8211 (ite c!1218130 (regOne!33463 (ite c!1217596 (regOne!33463 r!7292) (regOne!33462 r!7292))) (regOne!33462 (ite c!1217596 (regOne!33463 r!7292) (regOne!33462 r!7292))))))))

(declare-fun b!6609144 () Bool)

(declare-fun res!2710007 () Bool)

(assert (=> b!6609144 (=> res!2710007 e!3998791)))

(assert (=> b!6609144 (= res!2710007 (not ((_ is Concat!25320) (ite c!1217596 (regOne!33463 r!7292) (regOne!33462 r!7292)))))))

(assert (=> b!6609144 (= e!3998790 e!3998791)))

(declare-fun b!6609145 () Bool)

(assert (=> b!6609145 (= e!3998794 e!3998795)))

(assert (=> b!6609145 (= c!1218129 ((_ is Star!16475) (ite c!1217596 (regOne!33463 r!7292) (regOne!33462 r!7292))))))

(declare-fun b!6609146 () Bool)

(declare-fun res!2710004 () Bool)

(assert (=> b!6609146 (=> (not res!2710004) (not e!3998793))))

(assert (=> b!6609146 (= res!2710004 call!578484)))

(assert (=> b!6609146 (= e!3998790 e!3998793)))

(declare-fun b!6609147 () Bool)

(assert (=> b!6609147 (= e!3998796 call!578485)))

(assert (= (and d!2072619 (not res!2710006)) b!6609145))

(assert (= (and b!6609145 c!1218129) b!6609142))

(assert (= (and b!6609145 (not c!1218129)) b!6609143))

(assert (= (and b!6609142 res!2710003) b!6609139))

(assert (= (and b!6609143 c!1218130) b!6609146))

(assert (= (and b!6609143 (not c!1218130)) b!6609144))

(assert (= (and b!6609146 res!2710004) b!6609141))

(assert (= (and b!6609144 (not res!2710007)) b!6609140))

(assert (= (and b!6609140 res!2710005) b!6609147))

(assert (= (or b!6609141 b!6609147) bm!578478))

(assert (= (or b!6609146 b!6609140) bm!578480))

(assert (= (or b!6609139 bm!578478) bm!578479))

(declare-fun m!7384062 () Bool)

(assert (=> b!6609142 m!7384062))

(declare-fun m!7384064 () Bool)

(assert (=> bm!578479 m!7384064))

(declare-fun m!7384066 () Bool)

(assert (=> bm!578480 m!7384066))

(assert (=> bm!578069 d!2072619))

(declare-fun d!2072621 () Bool)

(assert (=> d!2072621 (= (nullable!6468 (h!72049 (exprs!6359 lt!2415117))) (nullableFct!2393 (h!72049 (exprs!6359 lt!2415117))))))

(declare-fun bs!1694614 () Bool)

(assert (= bs!1694614 d!2072621))

(declare-fun m!7384068 () Bool)

(assert (=> bs!1694614 m!7384068))

(assert (=> b!6607216 d!2072621))

(declare-fun d!2072623 () Bool)

(assert (=> d!2072623 (= (nullable!6468 (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))) (nullableFct!2393 (h!72049 (exprs!6359 (Context!11719 (Cons!65601 (h!72049 (exprs!6359 (h!72050 zl!343))) (t!379377 (exprs!6359 (h!72050 zl!343)))))))))))

(declare-fun bs!1694615 () Bool)

(assert (= bs!1694615 d!2072623))

(declare-fun m!7384070 () Bool)

(assert (=> bs!1694615 m!7384070))

(assert (=> b!6607479 d!2072623))

(declare-fun d!2072625 () Bool)

(assert (=> d!2072625 (= (nullable!6468 (h!72049 (exprs!6359 lt!2415118))) (nullableFct!2393 (h!72049 (exprs!6359 lt!2415118))))))

(declare-fun bs!1694616 () Bool)

(assert (= bs!1694616 d!2072625))

(declare-fun m!7384072 () Bool)

(assert (=> bs!1694616 m!7384072))

(assert (=> b!6607274 d!2072625))

(declare-fun d!2072627 () Bool)

(declare-fun e!3998797 () Bool)

(assert (=> d!2072627 e!3998797))

(declare-fun c!1218132 () Bool)

(assert (=> d!2072627 (= c!1218132 ((_ is EmptyExpr!16475) (derivativeStep!5159 r!7292 (head!13402 s!2326))))))

(declare-fun lt!2415418 () Bool)

(declare-fun e!3998803 () Bool)

(assert (=> d!2072627 (= lt!2415418 e!3998803)))

(declare-fun c!1218131 () Bool)

(assert (=> d!2072627 (= c!1218131 (isEmpty!37882 (tail!12487 s!2326)))))

(assert (=> d!2072627 (validRegex!8211 (derivativeStep!5159 r!7292 (head!13402 s!2326)))))

(assert (=> d!2072627 (= (matchR!8658 (derivativeStep!5159 r!7292 (head!13402 s!2326)) (tail!12487 s!2326)) lt!2415418)))

(declare-fun b!6609148 () Bool)

(declare-fun e!3998798 () Bool)

(assert (=> b!6609148 (= e!3998798 (= (head!13402 (tail!12487 s!2326)) (c!1217326 (derivativeStep!5159 r!7292 (head!13402 s!2326)))))))

(declare-fun b!6609149 () Bool)

(declare-fun e!3998800 () Bool)

(assert (=> b!6609149 (= e!3998800 (not lt!2415418))))

(declare-fun b!6609150 () Bool)

(declare-fun res!2710014 () Bool)

(assert (=> b!6609150 (=> (not res!2710014) (not e!3998798))))

(assert (=> b!6609150 (= res!2710014 (isEmpty!37882 (tail!12487 (tail!12487 s!2326))))))

(declare-fun bm!578481 () Bool)

(declare-fun call!578486 () Bool)

(assert (=> bm!578481 (= call!578486 (isEmpty!37882 (tail!12487 s!2326)))))

(declare-fun b!6609151 () Bool)

(declare-fun e!3998802 () Bool)

(declare-fun e!3998801 () Bool)

(assert (=> b!6609151 (= e!3998802 e!3998801)))

(declare-fun res!2710015 () Bool)

(assert (=> b!6609151 (=> res!2710015 e!3998801)))

(assert (=> b!6609151 (= res!2710015 call!578486)))

(declare-fun b!6609152 () Bool)

(declare-fun res!2710013 () Bool)

(declare-fun e!3998799 () Bool)

(assert (=> b!6609152 (=> res!2710013 e!3998799)))

(assert (=> b!6609152 (= res!2710013 (not ((_ is ElementMatch!16475) (derivativeStep!5159 r!7292 (head!13402 s!2326)))))))

(assert (=> b!6609152 (= e!3998800 e!3998799)))

(declare-fun b!6609153 () Bool)

(assert (=> b!6609153 (= e!3998797 e!3998800)))

(declare-fun c!1218133 () Bool)

(assert (=> b!6609153 (= c!1218133 ((_ is EmptyLang!16475) (derivativeStep!5159 r!7292 (head!13402 s!2326))))))

(declare-fun b!6609154 () Bool)

(assert (=> b!6609154 (= e!3998799 e!3998802)))

(declare-fun res!2710011 () Bool)

(assert (=> b!6609154 (=> (not res!2710011) (not e!3998802))))

(assert (=> b!6609154 (= res!2710011 (not lt!2415418))))

(declare-fun b!6609155 () Bool)

(declare-fun res!2710012 () Bool)

(assert (=> b!6609155 (=> res!2710012 e!3998799)))

(assert (=> b!6609155 (= res!2710012 e!3998798)))

(declare-fun res!2710009 () Bool)

(assert (=> b!6609155 (=> (not res!2710009) (not e!3998798))))

(assert (=> b!6609155 (= res!2710009 lt!2415418)))

(declare-fun b!6609156 () Bool)

(assert (=> b!6609156 (= e!3998803 (matchR!8658 (derivativeStep!5159 (derivativeStep!5159 r!7292 (head!13402 s!2326)) (head!13402 (tail!12487 s!2326))) (tail!12487 (tail!12487 s!2326))))))

(declare-fun b!6609157 () Bool)

(declare-fun res!2710010 () Bool)

(assert (=> b!6609157 (=> res!2710010 e!3998801)))

(assert (=> b!6609157 (= res!2710010 (not (isEmpty!37882 (tail!12487 (tail!12487 s!2326)))))))

(declare-fun b!6609158 () Bool)

(assert (=> b!6609158 (= e!3998803 (nullable!6468 (derivativeStep!5159 r!7292 (head!13402 s!2326))))))

(declare-fun b!6609159 () Bool)

(declare-fun res!2710008 () Bool)

(assert (=> b!6609159 (=> (not res!2710008) (not e!3998798))))

(assert (=> b!6609159 (= res!2710008 (not call!578486))))

(declare-fun b!6609160 () Bool)

(assert (=> b!6609160 (= e!3998797 (= lt!2415418 call!578486))))

(declare-fun b!6609161 () Bool)

(assert (=> b!6609161 (= e!3998801 (not (= (head!13402 (tail!12487 s!2326)) (c!1217326 (derivativeStep!5159 r!7292 (head!13402 s!2326))))))))

(assert (= (and d!2072627 c!1218131) b!6609158))

(assert (= (and d!2072627 (not c!1218131)) b!6609156))

(assert (= (and d!2072627 c!1218132) b!6609160))

(assert (= (and d!2072627 (not c!1218132)) b!6609153))

(assert (= (and b!6609153 c!1218133) b!6609149))

(assert (= (and b!6609153 (not c!1218133)) b!6609152))

(assert (= (and b!6609152 (not res!2710013)) b!6609155))

(assert (= (and b!6609155 res!2710009) b!6609159))

(assert (= (and b!6609159 res!2710008) b!6609150))

(assert (= (and b!6609150 res!2710014) b!6609148))

(assert (= (and b!6609155 (not res!2710012)) b!6609154))

(assert (= (and b!6609154 res!2710011) b!6609151))

(assert (= (and b!6609151 (not res!2710015)) b!6609157))

(assert (= (and b!6609157 (not res!2710010)) b!6609161))

(assert (= (or b!6609160 b!6609151 b!6609159) bm!578481))

(assert (=> b!6609156 m!7382454))

(assert (=> b!6609156 m!7382740))

(assert (=> b!6609156 m!7382562))

(assert (=> b!6609156 m!7382740))

(declare-fun m!7384074 () Bool)

(assert (=> b!6609156 m!7384074))

(assert (=> b!6609156 m!7382454))

(assert (=> b!6609156 m!7382744))

(assert (=> b!6609156 m!7384074))

(assert (=> b!6609156 m!7382744))

(declare-fun m!7384076 () Bool)

(assert (=> b!6609156 m!7384076))

(assert (=> b!6609158 m!7382562))

(declare-fun m!7384078 () Bool)

(assert (=> b!6609158 m!7384078))

(assert (=> bm!578481 m!7382454))

(assert (=> bm!578481 m!7382462))

(assert (=> b!6609148 m!7382454))

(assert (=> b!6609148 m!7382740))

(assert (=> b!6609150 m!7382454))

(assert (=> b!6609150 m!7382744))

(assert (=> b!6609150 m!7382744))

(assert (=> b!6609150 m!7383726))

(assert (=> d!2072627 m!7382454))

(assert (=> d!2072627 m!7382462))

(assert (=> d!2072627 m!7382562))

(declare-fun m!7384080 () Bool)

(assert (=> d!2072627 m!7384080))

(assert (=> b!6609161 m!7382454))

(assert (=> b!6609161 m!7382740))

(assert (=> b!6609157 m!7382454))

(assert (=> b!6609157 m!7382744))

(assert (=> b!6609157 m!7382744))

(assert (=> b!6609157 m!7383726))

(assert (=> b!6607539 d!2072627))

(declare-fun b!6609162 () Bool)

(declare-fun e!3998807 () Regex!16475)

(assert (=> b!6609162 (= e!3998807 EmptyLang!16475)))

(declare-fun bm!578482 () Bool)

(declare-fun call!578488 () Regex!16475)

(declare-fun call!578487 () Regex!16475)

(assert (=> bm!578482 (= call!578488 call!578487)))

(declare-fun bm!578483 () Bool)

(declare-fun call!578489 () Regex!16475)

(assert (=> bm!578483 (= call!578487 call!578489)))

(declare-fun b!6609163 () Bool)

(declare-fun e!3998806 () Regex!16475)

(assert (=> b!6609163 (= e!3998807 e!3998806)))

(declare-fun c!1218134 () Bool)

(assert (=> b!6609163 (= c!1218134 ((_ is ElementMatch!16475) r!7292))))

(declare-fun bm!578484 () Bool)

(declare-fun call!578490 () Regex!16475)

(declare-fun c!1218137 () Bool)

(assert (=> bm!578484 (= call!578490 (derivativeStep!5159 (ite c!1218137 (regOne!33463 r!7292) (regOne!33462 r!7292)) (head!13402 s!2326)))))

(declare-fun b!6609164 () Bool)

(assert (=> b!6609164 (= c!1218137 ((_ is Union!16475) r!7292))))

(declare-fun e!3998808 () Regex!16475)

(assert (=> b!6609164 (= e!3998806 e!3998808)))

(declare-fun b!6609165 () Bool)

(declare-fun e!3998805 () Regex!16475)

(assert (=> b!6609165 (= e!3998805 (Union!16475 (Concat!25320 call!578488 (regTwo!33462 r!7292)) EmptyLang!16475))))

(declare-fun b!6609166 () Bool)

(declare-fun e!3998804 () Regex!16475)

(assert (=> b!6609166 (= e!3998808 e!3998804)))

(declare-fun c!1218138 () Bool)

(assert (=> b!6609166 (= c!1218138 ((_ is Star!16475) r!7292))))

(declare-fun d!2072629 () Bool)

(declare-fun lt!2415419 () Regex!16475)

(assert (=> d!2072629 (validRegex!8211 lt!2415419)))

(assert (=> d!2072629 (= lt!2415419 e!3998807)))

(declare-fun c!1218135 () Bool)

(assert (=> d!2072629 (= c!1218135 (or ((_ is EmptyExpr!16475) r!7292) ((_ is EmptyLang!16475) r!7292)))))

(assert (=> d!2072629 (validRegex!8211 r!7292)))

(assert (=> d!2072629 (= (derivativeStep!5159 r!7292 (head!13402 s!2326)) lt!2415419)))

(declare-fun b!6609167 () Bool)

(assert (=> b!6609167 (= e!3998805 (Union!16475 (Concat!25320 call!578490 (regTwo!33462 r!7292)) call!578488))))

(declare-fun b!6609168 () Bool)

(assert (=> b!6609168 (= e!3998804 (Concat!25320 call!578487 r!7292))))

(declare-fun b!6609169 () Bool)

(assert (=> b!6609169 (= e!3998808 (Union!16475 call!578490 call!578489))))

(declare-fun b!6609170 () Bool)

(declare-fun c!1218136 () Bool)

(assert (=> b!6609170 (= c!1218136 (nullable!6468 (regOne!33462 r!7292)))))

(assert (=> b!6609170 (= e!3998804 e!3998805)))

(declare-fun b!6609171 () Bool)

(assert (=> b!6609171 (= e!3998806 (ite (= (head!13402 s!2326) (c!1217326 r!7292)) EmptyExpr!16475 EmptyLang!16475))))

(declare-fun bm!578485 () Bool)

(assert (=> bm!578485 (= call!578489 (derivativeStep!5159 (ite c!1218137 (regTwo!33463 r!7292) (ite c!1218138 (reg!16804 r!7292) (ite c!1218136 (regTwo!33462 r!7292) (regOne!33462 r!7292)))) (head!13402 s!2326)))))

(assert (= (and d!2072629 c!1218135) b!6609162))

(assert (= (and d!2072629 (not c!1218135)) b!6609163))

(assert (= (and b!6609163 c!1218134) b!6609171))

(assert (= (and b!6609163 (not c!1218134)) b!6609164))

(assert (= (and b!6609164 c!1218137) b!6609169))

(assert (= (and b!6609164 (not c!1218137)) b!6609166))

(assert (= (and b!6609166 c!1218138) b!6609168))

(assert (= (and b!6609166 (not c!1218138)) b!6609170))

(assert (= (and b!6609170 c!1218136) b!6609167))

(assert (= (and b!6609170 (not c!1218136)) b!6609165))

(assert (= (or b!6609167 b!6609165) bm!578482))

(assert (= (or b!6609168 bm!578482) bm!578483))

(assert (= (or b!6609169 bm!578483) bm!578485))

(assert (= (or b!6609169 b!6609167) bm!578484))

(assert (=> bm!578484 m!7382450))

(declare-fun m!7384082 () Bool)

(assert (=> bm!578484 m!7384082))

(declare-fun m!7384084 () Bool)

(assert (=> d!2072629 m!7384084))

(assert (=> d!2072629 m!7381728))

(assert (=> b!6609170 m!7382732))

(assert (=> bm!578485 m!7382450))

(declare-fun m!7384086 () Bool)

(assert (=> bm!578485 m!7384086))

(assert (=> b!6607539 d!2072629))

(assert (=> b!6607539 d!2071965))

(assert (=> b!6607539 d!2071969))

(assert (=> b!6607492 d!2072039))

(assert (=> b!6607492 d!2071969))

(declare-fun d!2072631 () Bool)

(assert (=> d!2072631 (= (nullable!6468 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343))))) (nullableFct!2393 (regOne!33462 (h!72049 (exprs!6359 (h!72050 zl!343))))))))

(declare-fun bs!1694617 () Bool)

(assert (= bs!1694617 d!2072631))

(declare-fun m!7384088 () Bool)

(assert (=> bs!1694617 m!7384088))

(assert (=> b!6607476 d!2072631))

(assert (=> bm!578086 d!2072017))

(declare-fun b!6609172 () Bool)

(declare-fun e!3998816 () Bool)

(declare-fun e!3998813 () Bool)

(assert (=> b!6609172 (= e!3998816 e!3998813)))

(declare-fun c!1218144 () Bool)

(assert (=> b!6609172 (= c!1218144 ((_ is Union!16475) (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292)))))))

(declare-fun b!6609173 () Bool)

(declare-fun res!2710018 () Bool)

(declare-fun e!3998810 () Bool)

(assert (=> b!6609173 (=> (not res!2710018) (not e!3998810))))

(declare-fun lt!2415420 () Int)

(declare-fun call!578494 () Int)

(assert (=> b!6609173 (= res!2710018 (> lt!2415420 call!578494))))

(declare-fun e!3998818 () Bool)

(assert (=> b!6609173 (= e!3998818 e!3998810)))

(declare-fun b!6609174 () Bool)

(declare-fun e!3998811 () Int)

(declare-fun call!578491 () Int)

(assert (=> b!6609174 (= e!3998811 (+ 1 call!578491))))

(declare-fun b!6609175 () Bool)

(declare-fun e!3998814 () Int)

(declare-fun call!578493 () Int)

(assert (=> b!6609175 (= e!3998814 (+ 1 call!578493))))

(declare-fun b!6609176 () Bool)

(declare-fun e!3998815 () Int)

(assert (=> b!6609176 (= e!3998815 1)))

(declare-fun b!6609177 () Bool)

(declare-fun e!3998817 () Bool)

(assert (=> b!6609177 (= e!3998813 e!3998817)))

(declare-fun res!2710016 () Bool)

(declare-fun call!578497 () Int)

(assert (=> b!6609177 (= res!2710016 (> lt!2415420 call!578497))))

(assert (=> b!6609177 (=> (not res!2710016) (not e!3998817))))

(declare-fun b!6609178 () Bool)

(assert (=> b!6609178 (= e!3998814 1)))

(declare-fun b!6609179 () Bool)

(declare-fun call!578496 () Int)

(assert (=> b!6609179 (= e!3998817 (> lt!2415420 call!578496))))

(declare-fun b!6609180 () Bool)

(declare-fun e!3998809 () Int)

(assert (=> b!6609180 (= e!3998809 (+ 1 call!578493))))

(declare-fun c!1218143 () Bool)

(declare-fun b!6609181 () Bool)

(assert (=> b!6609181 (= c!1218143 ((_ is Union!16475) (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292)))))))

(assert (=> b!6609181 (= e!3998811 e!3998809)))

(declare-fun b!6609182 () Bool)

(assert (=> b!6609182 (= e!3998809 e!3998814)))

(declare-fun c!1218139 () Bool)

(assert (=> b!6609182 (= c!1218139 ((_ is Concat!25320) (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292)))))))

(declare-fun c!1218140 () Bool)

(declare-fun bm!578486 () Bool)

(assert (=> bm!578486 (= call!578496 (regexDepth!372 (ite c!1218144 (regTwo!33463 (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292)))) (ite c!1218140 (regOne!33462 (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292)))) (reg!16804 (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292))))))))))

(declare-fun b!6609183 () Bool)

(declare-fun e!3998812 () Bool)

(assert (=> b!6609183 (= e!3998812 (> lt!2415420 call!578494))))

(declare-fun bm!578487 () Bool)

(assert (=> bm!578487 (= call!578494 call!578496)))

(declare-fun b!6609184 () Bool)

(assert (=> b!6609184 (= e!3998813 e!3998818)))

(assert (=> b!6609184 (= c!1218140 ((_ is Concat!25320) (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292)))))))

(declare-fun d!2072633 () Bool)

(assert (=> d!2072633 e!3998816))

(declare-fun res!2710017 () Bool)

(assert (=> d!2072633 (=> (not res!2710017) (not e!3998816))))

(assert (=> d!2072633 (= res!2710017 (> lt!2415420 0))))

(assert (=> d!2072633 (= lt!2415420 e!3998815)))

(declare-fun c!1218142 () Bool)

(assert (=> d!2072633 (= c!1218142 ((_ is ElementMatch!16475) (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292)))))))

(assert (=> d!2072633 (= (regexDepth!372 (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292)))) lt!2415420)))

(declare-fun c!1218145 () Bool)

(declare-fun bm!578488 () Bool)

(assert (=> bm!578488 (= call!578491 (regexDepth!372 (ite c!1218145 (reg!16804 (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292)))) (ite c!1218143 (regTwo!33463 (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292)))) (regOne!33462 (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292))))))))))

(declare-fun b!6609185 () Bool)

(assert (=> b!6609185 (= e!3998815 e!3998811)))

(assert (=> b!6609185 (= c!1218145 ((_ is Star!16475) (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292)))))))

(declare-fun bm!578489 () Bool)

(declare-fun call!578492 () Int)

(assert (=> bm!578489 (= call!578492 call!578491)))

(declare-fun b!6609186 () Bool)

(declare-fun c!1218141 () Bool)

(assert (=> b!6609186 (= c!1218141 ((_ is Star!16475) (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292)))))))

(assert (=> b!6609186 (= e!3998818 e!3998812)))

(declare-fun b!6609187 () Bool)

(assert (=> b!6609187 (= e!3998810 (> lt!2415420 call!578497))))

(declare-fun call!578495 () Int)

(declare-fun bm!578490 () Bool)

(assert (=> bm!578490 (= call!578495 (regexDepth!372 (ite c!1218143 (regOne!33463 (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292)))) (regTwo!33462 (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292)))))))))

(declare-fun bm!578491 () Bool)

(assert (=> bm!578491 (= call!578497 (regexDepth!372 (ite c!1218144 (regOne!33463 (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292)))) (regTwo!33462 (ite c!1217665 (reg!16804 r!7292) (ite c!1217663 (regTwo!33463 r!7292) (regOne!33462 r!7292)))))))))

(declare-fun bm!578492 () Bool)

(assert (=> bm!578492 (= call!578493 (maxBigInt!0 (ite c!1218143 call!578495 call!578492) (ite c!1218143 call!578492 call!578495)))))

(declare-fun b!6609188 () Bool)

(assert (=> b!6609188 (= e!3998812 (= lt!2415420 1))))

(assert (= (and d!2072633 c!1218142) b!6609176))

(assert (= (and d!2072633 (not c!1218142)) b!6609185))

(assert (= (and b!6609185 c!1218145) b!6609174))

(assert (= (and b!6609185 (not c!1218145)) b!6609181))

(assert (= (and b!6609181 c!1218143) b!6609180))

(assert (= (and b!6609181 (not c!1218143)) b!6609182))

(assert (= (and b!6609182 c!1218139) b!6609175))

(assert (= (and b!6609182 (not c!1218139)) b!6609178))

(assert (= (or b!6609180 b!6609175) bm!578489))

(assert (= (or b!6609180 b!6609175) bm!578490))

(assert (= (or b!6609180 b!6609175) bm!578492))

(assert (= (or b!6609174 bm!578489) bm!578488))

(assert (= (and d!2072633 res!2710017) b!6609172))

(assert (= (and b!6609172 c!1218144) b!6609177))

(assert (= (and b!6609172 (not c!1218144)) b!6609184))

(assert (= (and b!6609177 res!2710016) b!6609179))

(assert (= (and b!6609184 c!1218140) b!6609173))

(assert (= (and b!6609184 (not c!1218140)) b!6609186))

(assert (= (and b!6609173 res!2710018) b!6609187))

(assert (= (and b!6609186 c!1218141) b!6609183))

(assert (= (and b!6609186 (not c!1218141)) b!6609188))

(assert (= (or b!6609173 b!6609183) bm!578487))

(assert (= (or b!6609179 bm!578487) bm!578486))

(assert (= (or b!6609177 b!6609187) bm!578491))

(declare-fun m!7384090 () Bool)

(assert (=> bm!578486 m!7384090))

(declare-fun m!7384092 () Bool)

(assert (=> bm!578491 m!7384092))

(declare-fun m!7384094 () Bool)

(assert (=> bm!578488 m!7384094))

(declare-fun m!7384096 () Bool)

(assert (=> bm!578492 m!7384096))

(declare-fun m!7384098 () Bool)

(assert (=> bm!578490 m!7384098))

(assert (=> bm!578105 d!2072633))

(declare-fun b!6609193 () Bool)

(declare-fun e!3998823 () Bool)

(declare-fun call!578498 () Bool)

(assert (=> b!6609193 (= e!3998823 call!578498)))

(declare-fun d!2072635 () Bool)

(declare-fun res!2710022 () Bool)

(declare-fun e!3998825 () Bool)

(assert (=> d!2072635 (=> res!2710022 e!3998825)))

(assert (=> d!2072635 (= res!2710022 ((_ is ElementMatch!16475) lt!2415328))))

(assert (=> d!2072635 (= (validRegex!8211 lt!2415328) e!3998825)))

(declare-fun b!6609194 () Bool)

(declare-fun e!3998822 () Bool)

(declare-fun e!3998827 () Bool)

(assert (=> b!6609194 (= e!3998822 e!3998827)))

(declare-fun res!2710021 () Bool)

(assert (=> b!6609194 (=> (not res!2710021) (not e!3998827))))

(declare-fun call!578499 () Bool)

(assert (=> b!6609194 (= res!2710021 call!578499)))

(declare-fun b!6609195 () Bool)

(declare-fun e!3998824 () Bool)

(declare-fun call!578500 () Bool)

(assert (=> b!6609195 (= e!3998824 call!578500)))

(declare-fun b!6609196 () Bool)

(declare-fun e!3998826 () Bool)

(assert (=> b!6609196 (= e!3998826 e!3998823)))

(declare-fun res!2710019 () Bool)

(assert (=> b!6609196 (= res!2710019 (not (nullable!6468 (reg!16804 lt!2415328))))))

(assert (=> b!6609196 (=> (not res!2710019) (not e!3998823))))

(declare-fun bm!578493 () Bool)

(assert (=> bm!578493 (= call!578500 call!578498)))

(declare-fun b!6609197 () Bool)

(declare-fun e!3998821 () Bool)

(assert (=> b!6609197 (= e!3998826 e!3998821)))

(declare-fun c!1218150 () Bool)

(assert (=> b!6609197 (= c!1218150 ((_ is Union!16475) lt!2415328))))

(declare-fun bm!578494 () Bool)

(declare-fun c!1218149 () Bool)

(assert (=> bm!578494 (= call!578498 (validRegex!8211 (ite c!1218149 (reg!16804 lt!2415328) (ite c!1218150 (regTwo!33463 lt!2415328) (regTwo!33462 lt!2415328)))))))

(declare-fun bm!578495 () Bool)

(assert (=> bm!578495 (= call!578499 (validRegex!8211 (ite c!1218150 (regOne!33463 lt!2415328) (regOne!33462 lt!2415328))))))

(declare-fun b!6609198 () Bool)

(declare-fun res!2710023 () Bool)

(assert (=> b!6609198 (=> res!2710023 e!3998822)))

(assert (=> b!6609198 (= res!2710023 (not ((_ is Concat!25320) lt!2415328)))))

(assert (=> b!6609198 (= e!3998821 e!3998822)))

(declare-fun b!6609199 () Bool)

(assert (=> b!6609199 (= e!3998825 e!3998826)))

(assert (=> b!6609199 (= c!1218149 ((_ is Star!16475) lt!2415328))))

(declare-fun b!6609200 () Bool)

(declare-fun res!2710020 () Bool)

(assert (=> b!6609200 (=> (not res!2710020) (not e!3998824))))

(assert (=> b!6609200 (= res!2710020 call!578499)))

(assert (=> b!6609200 (= e!3998821 e!3998824)))

(declare-fun b!6609201 () Bool)

(assert (=> b!6609201 (= e!3998827 call!578500)))

(assert (= (and d!2072635 (not res!2710022)) b!6609199))

(assert (= (and b!6609199 c!1218149) b!6609196))

(assert (= (and b!6609199 (not c!1218149)) b!6609197))

(assert (= (and b!6609196 res!2710019) b!6609193))

(assert (= (and b!6609197 c!1218150) b!6609200))

(assert (= (and b!6609197 (not c!1218150)) b!6609198))

(assert (= (and b!6609200 res!2710020) b!6609195))

(assert (= (and b!6609198 (not res!2710023)) b!6609194))

(assert (= (and b!6609194 res!2710021) b!6609201))

(assert (= (or b!6609195 b!6609201) bm!578493))

(assert (= (or b!6609200 b!6609194) bm!578495))

(assert (= (or b!6609193 bm!578493) bm!578494))

(declare-fun m!7384100 () Bool)

(assert (=> b!6609196 m!7384100))

(declare-fun m!7384102 () Bool)

(assert (=> bm!578494 m!7384102))

(declare-fun m!7384104 () Bool)

(assert (=> bm!578495 m!7384104))

(assert (=> d!2071909 d!2072635))

(declare-fun d!2072637 () Bool)

(declare-fun res!2710026 () Bool)

(declare-fun e!3998830 () Bool)

(assert (=> d!2072637 (=> res!2710026 e!3998830)))

(assert (=> d!2072637 (= res!2710026 ((_ is Nil!65601) (t!379377 (exprs!6359 (h!72050 zl!343)))))))

(assert (=> d!2072637 (= (forall!15673 (t!379377 (exprs!6359 (h!72050 zl!343))) lambda!368697) e!3998830)))

(declare-fun b!6609204 () Bool)

(declare-fun e!3998831 () Bool)

(assert (=> b!6609204 (= e!3998830 e!3998831)))

(declare-fun res!2710027 () Bool)

(assert (=> b!6609204 (=> (not res!2710027) (not e!3998831))))

(assert (=> b!6609204 (= res!2710027 (dynLambda!26126 lambda!368697 (h!72049 (t!379377 (exprs!6359 (h!72050 zl!343))))))))

(declare-fun b!6609205 () Bool)

(assert (=> b!6609205 (= e!3998831 (forall!15673 (t!379377 (t!379377 (exprs!6359 (h!72050 zl!343)))) lambda!368697))))

(assert (= (and d!2072637 (not res!2710026)) b!6609204))

(assert (= (and b!6609204 res!2710027) b!6609205))

(declare-fun b_lambda!250061 () Bool)

(assert (=> (not b_lambda!250061) (not b!6609204)))

(declare-fun m!7384106 () Bool)

(assert (=> b!6609204 m!7384106))

(declare-fun m!7384108 () Bool)

(assert (=> b!6609205 m!7384108))

(assert (=> d!2071909 d!2072637))

(assert (=> b!6607289 d!2071825))

(declare-fun d!2072639 () Bool)

(assert (=> d!2072639 (= (Exists!3545 lambda!368653) (choose!49347 lambda!368653))))

(declare-fun bs!1694618 () Bool)

(assert (= bs!1694618 d!2072639))

(declare-fun m!7384110 () Bool)

(assert (=> bs!1694618 m!7384110))

(assert (=> d!2071761 d!2072639))

(declare-fun d!2072641 () Bool)

(assert (=> d!2072641 (= (Exists!3545 lambda!368654) (choose!49347 lambda!368654))))

(declare-fun bs!1694619 () Bool)

(assert (= bs!1694619 d!2072641))

(declare-fun m!7384112 () Bool)

(assert (=> bs!1694619 m!7384112))

(assert (=> d!2071761 d!2072641))

(declare-fun bs!1694664 () Bool)

(declare-fun d!2072643 () Bool)

(assert (= bs!1694664 (and d!2072643 b!6608995)))

(declare-fun lambda!368819 () Int)

(assert (=> bs!1694664 (not (= lambda!368819 lambda!368792))))

(declare-fun bs!1694666 () Bool)

(assert (= bs!1694666 (and d!2072643 d!2072109)))

(assert (=> bs!1694666 (= lambda!368819 lambda!368721)))

(declare-fun bs!1694667 () Bool)

(assert (= bs!1694667 (and d!2072643 d!2071761)))

(assert (=> bs!1694667 (= lambda!368819 lambda!368653)))

(declare-fun bs!1694669 () Bool)

(assert (= bs!1694669 (and d!2072643 b!6608069)))

(assert (=> bs!1694669 (not (= lambda!368819 lambda!368726))))

(declare-fun bs!1694671 () Bool)

(assert (= bs!1694671 (and d!2072643 b!6606503)))

(assert (=> bs!1694671 (not (= lambda!368819 lambda!368580))))

(declare-fun bs!1694673 () Bool)

(assert (= bs!1694673 (and d!2072643 b!6608915)))

(assert (=> bs!1694673 (not (= lambda!368819 lambda!368791))))

(declare-fun bs!1694675 () Bool)

(assert (= bs!1694675 (and d!2072643 b!6608987)))

(assert (=> bs!1694675 (not (= lambda!368819 lambda!368795))))

(declare-fun bs!1694677 () Bool)

(assert (= bs!1694677 (and d!2072643 b!6607530)))

(assert (=> bs!1694677 (not (= lambda!368819 lambda!368692))))

(declare-fun bs!1694679 () Bool)

(assert (= bs!1694679 (and d!2072643 b!6608417)))

(assert (=> bs!1694679 (not (= lambda!368819 lambda!368750))))

(declare-fun bs!1694681 () Bool)

(assert (= bs!1694681 (and d!2072643 d!2071823)))

(assert (=> bs!1694681 (not (= lambda!368819 lambda!368675))))

(declare-fun bs!1694683 () Bool)

(assert (= bs!1694683 (and d!2072643 b!6607454)))

(assert (=> bs!1694683 (not (= lambda!368819 lambda!368690))))

(assert (=> bs!1694667 (not (= lambda!368819 lambda!368654))))

(declare-fun bs!1694686 () Bool)

(assert (= bs!1694686 (and d!2072643 b!6607397)))

(assert (=> bs!1694686 (not (= lambda!368819 lambda!368681))))

(declare-fun bs!1694687 () Bool)

(assert (= bs!1694687 (and d!2072643 b!6606515)))

(assert (=> bs!1694687 (= lambda!368819 lambda!368576)))

(assert (=> bs!1694671 (not (= lambda!368819 lambda!368581))))

(declare-fun bs!1694689 () Bool)

(assert (= bs!1694689 (and d!2072643 b!6608409)))

(assert (=> bs!1694689 (not (= lambda!368819 lambda!368751))))

(declare-fun bs!1694691 () Bool)

(assert (= bs!1694691 (and d!2072643 d!2072203)))

(assert (=> bs!1694691 (not (= lambda!368819 lambda!368742))))

(assert (=> bs!1694671 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 r!7292) lt!2415134)) (= lambda!368819 lambda!368579))))

(assert (=> bs!1694687 (not (= lambda!368819 lambda!368577))))

(assert (=> bs!1694681 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 r!7292) lt!2415134)) (= lambda!368819 lambda!368674))))

(declare-fun bs!1694693 () Bool)

(assert (= bs!1694693 (and d!2072643 d!2071755)))

(assert (=> bs!1694693 (= lambda!368819 lambda!368648)))

(declare-fun bs!1694695 () Bool)

(assert (= bs!1694695 (and d!2072643 d!2071833)))

(assert (=> bs!1694695 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 r!7292) (Star!16475 (reg!16804 (regOne!33462 r!7292))))) (= lambda!368819 lambda!368686))))

(declare-fun bs!1694696 () Bool)

(assert (= bs!1694696 (and d!2072643 b!6607405)))

(assert (=> bs!1694696 (not (= lambda!368819 lambda!368680))))

(declare-fun bs!1694697 () Bool)

(assert (= bs!1694697 (and d!2072643 b!6607446)))

(assert (=> bs!1694697 (not (= lambda!368819 lambda!368691))))

(declare-fun bs!1694698 () Bool)

(assert (= bs!1694698 (and d!2072643 d!2072615)))

(assert (=> bs!1694698 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 r!7292) lt!2415134)) (= lambda!368819 lambda!368806))))

(assert (=> bs!1694695 (not (= lambda!368819 lambda!368687))))

(declare-fun bs!1694699 () Bool)

(assert (= bs!1694699 (and d!2072643 b!6608923)))

(assert (=> bs!1694699 (not (= lambda!368819 lambda!368790))))

(declare-fun bs!1694701 () Bool)

(assert (= bs!1694701 (and d!2072643 b!6608061)))

(assert (=> bs!1694701 (not (= lambda!368819 lambda!368727))))

(declare-fun bs!1694703 () Bool)

(assert (= bs!1694703 (and d!2072643 b!6607522)))

(assert (=> bs!1694703 (not (= lambda!368819 lambda!368693))))

(declare-fun bs!1694705 () Bool)

(assert (= bs!1694705 (and d!2072643 d!2071841)))

(assert (=> bs!1694705 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 r!7292) lt!2415134)) (= lambda!368819 lambda!368688))))

(assert (=> bs!1694691 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 r!7292) (Star!16475 (reg!16804 (regOne!33462 r!7292))))) (= lambda!368819 lambda!368741))))

(assert (=> d!2072643 true))

(assert (=> d!2072643 true))

(assert (=> d!2072643 true))

(declare-fun lambda!368821 () Int)

(assert (=> bs!1694664 (not (= lambda!368821 lambda!368792))))

(assert (=> bs!1694666 (not (= lambda!368821 lambda!368721))))

(assert (=> bs!1694667 (not (= lambda!368821 lambda!368653))))

(assert (=> bs!1694669 (not (= lambda!368821 lambda!368726))))

(assert (=> bs!1694671 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 r!7292) lt!2415134)) (= lambda!368821 lambda!368580))))

(assert (=> bs!1694673 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (regOne!33462 (regTwo!33463 lt!2415134))) (= (regTwo!33462 r!7292) (regTwo!33462 (regTwo!33463 lt!2415134)))) (= lambda!368821 lambda!368791))))

(assert (=> bs!1694675 (= (and (= (regOne!33462 r!7292) (regOne!33462 (regOne!33463 r!7292))) (= (regTwo!33462 r!7292) (regTwo!33462 (regOne!33463 r!7292)))) (= lambda!368821 lambda!368795))))

(assert (=> bs!1694677 (not (= lambda!368821 lambda!368692))))

(assert (=> bs!1694679 (not (= lambda!368821 lambda!368750))))

(assert (=> bs!1694681 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 r!7292) lt!2415134)) (= lambda!368821 lambda!368675))))

(assert (=> bs!1694683 (not (= lambda!368821 lambda!368690))))

(assert (=> bs!1694667 (= lambda!368821 lambda!368654)))

(assert (=> bs!1694686 (= (and (= s!2326 Nil!65600) (= (regOne!33462 r!7292) (regOne!33462 lt!2415134)) (= (regTwo!33462 r!7292) (regTwo!33462 lt!2415134))) (= lambda!368821 lambda!368681))))

(assert (=> bs!1694687 (not (= lambda!368821 lambda!368576))))

(assert (=> bs!1694671 (not (= lambda!368821 lambda!368581))))

(assert (=> bs!1694689 (= (and (= (regOne!33462 r!7292) (regOne!33462 (regTwo!33463 lt!2415143))) (= (regTwo!33462 r!7292) (regTwo!33462 (regTwo!33463 lt!2415143)))) (= lambda!368821 lambda!368751))))

(assert (=> bs!1694691 (not (= lambda!368821 lambda!368742))))

(assert (=> bs!1694671 (not (= lambda!368821 lambda!368579))))

(assert (=> bs!1694687 (= lambda!368821 lambda!368577)))

(assert (=> bs!1694681 (not (= lambda!368821 lambda!368674))))

(assert (=> bs!1694693 (not (= lambda!368821 lambda!368648))))

(assert (=> bs!1694695 (not (= lambda!368821 lambda!368686))))

(assert (=> bs!1694696 (not (= lambda!368821 lambda!368680))))

(assert (=> bs!1694697 (= (and (= (regOne!33462 r!7292) (regOne!33462 lt!2415143)) (= (regTwo!33462 r!7292) (regTwo!33462 lt!2415143))) (= lambda!368821 lambda!368691))))

(assert (=> bs!1694698 (not (= lambda!368821 lambda!368806))))

(assert (=> bs!1694695 (not (= lambda!368821 lambda!368687))))

(declare-fun bs!1694730 () Bool)

(assert (= bs!1694730 d!2072643))

(assert (=> bs!1694730 (not (= lambda!368821 lambda!368819))))

(assert (=> bs!1694699 (not (= lambda!368821 lambda!368790))))

(assert (=> bs!1694701 (= (and (= (regOne!33462 r!7292) (regOne!33462 (regTwo!33463 r!7292))) (= (regTwo!33462 r!7292) (regTwo!33462 (regTwo!33463 r!7292)))) (= lambda!368821 lambda!368727))))

(assert (=> bs!1694703 (= lambda!368821 lambda!368693)))

(assert (=> bs!1694705 (not (= lambda!368821 lambda!368688))))

(assert (=> bs!1694691 (not (= lambda!368821 lambda!368741))))

(assert (=> d!2072643 true))

(assert (=> d!2072643 true))

(assert (=> d!2072643 true))

(assert (=> d!2072643 (= (Exists!3545 lambda!368819) (Exists!3545 lambda!368821))))

(assert (=> d!2072643 true))

(declare-fun _$90!2435 () Unit!159235)

(assert (=> d!2072643 (= (choose!49349 (regOne!33462 r!7292) (regTwo!33462 r!7292) s!2326) _$90!2435)))

(declare-fun m!7384136 () Bool)

(assert (=> bs!1694730 m!7384136))

(declare-fun m!7384140 () Bool)

(assert (=> bs!1694730 m!7384140))

(assert (=> d!2071761 d!2072643))

(assert (=> d!2071761 d!2072107))

(assert (=> d!2071847 d!2072061))

(declare-fun bs!1694735 () Bool)

(declare-fun b!6609242 () Bool)

(assert (= bs!1694735 (and b!6609242 b!6608995)))

(declare-fun lambda!368823 () Int)

(assert (=> bs!1694735 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33463 lt!2415134)) (reg!16804 (regOne!33463 r!7292))) (= (regOne!33463 lt!2415134) (regOne!33463 r!7292))) (= lambda!368823 lambda!368792))))

(declare-fun bs!1694737 () Bool)

(assert (= bs!1694737 (and b!6609242 d!2072109)))

(assert (=> bs!1694737 (not (= lambda!368823 lambda!368721))))

(declare-fun bs!1694738 () Bool)

(assert (= bs!1694738 (and b!6609242 d!2071761)))

(assert (=> bs!1694738 (not (= lambda!368823 lambda!368653))))

(declare-fun bs!1694739 () Bool)

(assert (= bs!1694739 (and b!6609242 b!6608069)))

(assert (=> bs!1694739 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33463 lt!2415134)) (reg!16804 (regTwo!33463 r!7292))) (= (regOne!33463 lt!2415134) (regTwo!33463 r!7292))) (= lambda!368823 lambda!368726))))

(declare-fun bs!1694742 () Bool)

(assert (= bs!1694742 (and b!6609242 b!6606503)))

(assert (=> bs!1694742 (not (= lambda!368823 lambda!368580))))

(declare-fun bs!1694744 () Bool)

(assert (= bs!1694744 (and b!6609242 b!6608915)))

(assert (=> bs!1694744 (not (= lambda!368823 lambda!368791))))

(declare-fun bs!1694746 () Bool)

(assert (= bs!1694746 (and b!6609242 b!6608987)))

(assert (=> bs!1694746 (not (= lambda!368823 lambda!368795))))

(declare-fun bs!1694748 () Bool)

(assert (= bs!1694748 (and b!6609242 b!6608417)))

(assert (=> bs!1694748 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33463 lt!2415134)) (reg!16804 (regTwo!33463 lt!2415143))) (= (regOne!33463 lt!2415134) (regTwo!33463 lt!2415143))) (= lambda!368823 lambda!368750))))

(declare-fun bs!1694750 () Bool)

(assert (= bs!1694750 (and b!6609242 d!2071823)))

(assert (=> bs!1694750 (not (= lambda!368823 lambda!368675))))

(declare-fun bs!1694751 () Bool)

(assert (= bs!1694751 (and b!6609242 b!6607454)))

(assert (=> bs!1694751 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33463 lt!2415134)) (reg!16804 lt!2415143)) (= (regOne!33463 lt!2415134) lt!2415143)) (= lambda!368823 lambda!368690))))

(assert (=> bs!1694738 (not (= lambda!368823 lambda!368654))))

(declare-fun bs!1694754 () Bool)

(assert (= bs!1694754 (and b!6609242 b!6607397)))

(assert (=> bs!1694754 (not (= lambda!368823 lambda!368681))))

(declare-fun bs!1694756 () Bool)

(assert (= bs!1694756 (and b!6609242 b!6606515)))

(assert (=> bs!1694756 (not (= lambda!368823 lambda!368576))))

(assert (=> bs!1694742 (= (and (= (reg!16804 (regOne!33463 lt!2415134)) (reg!16804 (regOne!33462 r!7292))) (= (regOne!33463 lt!2415134) lt!2415134)) (= lambda!368823 lambda!368581))))

(declare-fun bs!1694759 () Bool)

(assert (= bs!1694759 (and b!6609242 b!6608409)))

(assert (=> bs!1694759 (not (= lambda!368823 lambda!368751))))

(declare-fun bs!1694761 () Bool)

(assert (= bs!1694761 (and b!6609242 d!2072203)))

(assert (=> bs!1694761 (= (and (= (reg!16804 (regOne!33463 lt!2415134)) (reg!16804 (regOne!33462 r!7292))) (= (regOne!33463 lt!2415134) (Star!16475 (reg!16804 (regOne!33462 r!7292))))) (= lambda!368823 lambda!368742))))

(assert (=> bs!1694742 (not (= lambda!368823 lambda!368579))))

(assert (=> bs!1694756 (not (= lambda!368823 lambda!368577))))

(assert (=> bs!1694750 (not (= lambda!368823 lambda!368674))))

(declare-fun bs!1694766 () Bool)

(assert (= bs!1694766 (and b!6609242 d!2071755)))

(assert (=> bs!1694766 (not (= lambda!368823 lambda!368648))))

(declare-fun bs!1694768 () Bool)

(assert (= bs!1694768 (and b!6609242 d!2071833)))

(assert (=> bs!1694768 (not (= lambda!368823 lambda!368686))))

(declare-fun bs!1694770 () Bool)

(assert (= bs!1694770 (and b!6609242 b!6607405)))

(assert (=> bs!1694770 (= (and (= (reg!16804 (regOne!33463 lt!2415134)) (reg!16804 lt!2415134)) (= (regOne!33463 lt!2415134) lt!2415134)) (= lambda!368823 lambda!368680))))

(declare-fun bs!1694772 () Bool)

(assert (= bs!1694772 (and b!6609242 b!6607446)))

(assert (=> bs!1694772 (not (= lambda!368823 lambda!368691))))

(declare-fun bs!1694774 () Bool)

(assert (= bs!1694774 (and b!6609242 d!2072643)))

(assert (=> bs!1694774 (not (= lambda!368823 lambda!368821))))

(declare-fun bs!1694776 () Bool)

(assert (= bs!1694776 (and b!6609242 b!6607530)))

(assert (=> bs!1694776 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33463 lt!2415134)) (reg!16804 r!7292)) (= (regOne!33463 lt!2415134) r!7292)) (= lambda!368823 lambda!368692))))

(declare-fun bs!1694777 () Bool)

(assert (= bs!1694777 (and b!6609242 d!2072615)))

(assert (=> bs!1694777 (not (= lambda!368823 lambda!368806))))

(assert (=> bs!1694768 (= (and (= (reg!16804 (regOne!33463 lt!2415134)) (reg!16804 (regOne!33462 r!7292))) (= (regOne!33463 lt!2415134) (Star!16475 (reg!16804 (regOne!33462 r!7292))))) (= lambda!368823 lambda!368687))))

(assert (=> bs!1694774 (not (= lambda!368823 lambda!368819))))

(declare-fun bs!1694780 () Bool)

(assert (= bs!1694780 (and b!6609242 b!6608923)))

(assert (=> bs!1694780 (= (and (= (reg!16804 (regOne!33463 lt!2415134)) (reg!16804 (regTwo!33463 lt!2415134))) (= (regOne!33463 lt!2415134) (regTwo!33463 lt!2415134))) (= lambda!368823 lambda!368790))))

(declare-fun bs!1694782 () Bool)

(assert (= bs!1694782 (and b!6609242 b!6608061)))

(assert (=> bs!1694782 (not (= lambda!368823 lambda!368727))))

(declare-fun bs!1694783 () Bool)

(assert (= bs!1694783 (and b!6609242 b!6607522)))

(assert (=> bs!1694783 (not (= lambda!368823 lambda!368693))))

(declare-fun bs!1694784 () Bool)

(assert (= bs!1694784 (and b!6609242 d!2071841)))

(assert (=> bs!1694784 (not (= lambda!368823 lambda!368688))))

(assert (=> bs!1694761 (not (= lambda!368823 lambda!368741))))

(assert (=> b!6609242 true))

(assert (=> b!6609242 true))

(declare-fun bs!1694786 () Bool)

(declare-fun b!6609234 () Bool)

(assert (= bs!1694786 (and b!6609234 b!6608995)))

(declare-fun lambda!368825 () Int)

(assert (=> bs!1694786 (not (= lambda!368825 lambda!368792))))

(declare-fun bs!1694787 () Bool)

(assert (= bs!1694787 (and b!6609234 d!2072109)))

(assert (=> bs!1694787 (not (= lambda!368825 lambda!368721))))

(declare-fun bs!1694788 () Bool)

(assert (= bs!1694788 (and b!6609234 d!2071761)))

(assert (=> bs!1694788 (not (= lambda!368825 lambda!368653))))

(declare-fun bs!1694789 () Bool)

(assert (= bs!1694789 (and b!6609234 b!6608069)))

(assert (=> bs!1694789 (not (= lambda!368825 lambda!368726))))

(declare-fun bs!1694790 () Bool)

(assert (= bs!1694790 (and b!6609234 b!6606503)))

(assert (=> bs!1694790 (= (and (= (regOne!33462 (regOne!33463 lt!2415134)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 (regOne!33463 lt!2415134)) lt!2415134)) (= lambda!368825 lambda!368580))))

(declare-fun bs!1694791 () Bool)

(assert (= bs!1694791 (and b!6609234 b!6608915)))

(assert (=> bs!1694791 (= (and (= (regOne!33462 (regOne!33463 lt!2415134)) (regOne!33462 (regTwo!33463 lt!2415134))) (= (regTwo!33462 (regOne!33463 lt!2415134)) (regTwo!33462 (regTwo!33463 lt!2415134)))) (= lambda!368825 lambda!368791))))

(declare-fun bs!1694792 () Bool)

(assert (= bs!1694792 (and b!6609234 b!6608987)))

(assert (=> bs!1694792 (= (and (= Nil!65600 s!2326) (= (regOne!33462 (regOne!33463 lt!2415134)) (regOne!33462 (regOne!33463 r!7292))) (= (regTwo!33462 (regOne!33463 lt!2415134)) (regTwo!33462 (regOne!33463 r!7292)))) (= lambda!368825 lambda!368795))))

(declare-fun bs!1694793 () Bool)

(assert (= bs!1694793 (and b!6609234 b!6609242)))

(assert (=> bs!1694793 (not (= lambda!368825 lambda!368823))))

(declare-fun bs!1694794 () Bool)

(assert (= bs!1694794 (and b!6609234 b!6608417)))

(assert (=> bs!1694794 (not (= lambda!368825 lambda!368750))))

(declare-fun bs!1694795 () Bool)

(assert (= bs!1694795 (and b!6609234 d!2071823)))

(assert (=> bs!1694795 (= (and (= (regOne!33462 (regOne!33463 lt!2415134)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 (regOne!33463 lt!2415134)) lt!2415134)) (= lambda!368825 lambda!368675))))

(declare-fun bs!1694796 () Bool)

(assert (= bs!1694796 (and b!6609234 b!6607454)))

(assert (=> bs!1694796 (not (= lambda!368825 lambda!368690))))

(assert (=> bs!1694788 (= (and (= Nil!65600 s!2326) (= (regOne!33462 (regOne!33463 lt!2415134)) (regOne!33462 r!7292)) (= (regTwo!33462 (regOne!33463 lt!2415134)) (regTwo!33462 r!7292))) (= lambda!368825 lambda!368654))))

(declare-fun bs!1694797 () Bool)

(assert (= bs!1694797 (and b!6609234 b!6607397)))

(assert (=> bs!1694797 (= (and (= (regOne!33462 (regOne!33463 lt!2415134)) (regOne!33462 lt!2415134)) (= (regTwo!33462 (regOne!33463 lt!2415134)) (regTwo!33462 lt!2415134))) (= lambda!368825 lambda!368681))))

(declare-fun bs!1694798 () Bool)

(assert (= bs!1694798 (and b!6609234 b!6606515)))

(assert (=> bs!1694798 (not (= lambda!368825 lambda!368576))))

(assert (=> bs!1694790 (not (= lambda!368825 lambda!368581))))

(declare-fun bs!1694799 () Bool)

(assert (= bs!1694799 (and b!6609234 b!6608409)))

(assert (=> bs!1694799 (= (and (= Nil!65600 s!2326) (= (regOne!33462 (regOne!33463 lt!2415134)) (regOne!33462 (regTwo!33463 lt!2415143))) (= (regTwo!33462 (regOne!33463 lt!2415134)) (regTwo!33462 (regTwo!33463 lt!2415143)))) (= lambda!368825 lambda!368751))))

(declare-fun bs!1694800 () Bool)

(assert (= bs!1694800 (and b!6609234 d!2072203)))

(assert (=> bs!1694800 (not (= lambda!368825 lambda!368742))))

(assert (=> bs!1694790 (not (= lambda!368825 lambda!368579))))

(assert (=> bs!1694798 (= (and (= Nil!65600 s!2326) (= (regOne!33462 (regOne!33463 lt!2415134)) (regOne!33462 r!7292)) (= (regTwo!33462 (regOne!33463 lt!2415134)) (regTwo!33462 r!7292))) (= lambda!368825 lambda!368577))))

(assert (=> bs!1694795 (not (= lambda!368825 lambda!368674))))

(declare-fun bs!1694801 () Bool)

(assert (= bs!1694801 (and b!6609234 d!2071755)))

(assert (=> bs!1694801 (not (= lambda!368825 lambda!368648))))

(declare-fun bs!1694802 () Bool)

(assert (= bs!1694802 (and b!6609234 d!2071833)))

(assert (=> bs!1694802 (not (= lambda!368825 lambda!368686))))

(declare-fun bs!1694803 () Bool)

(assert (= bs!1694803 (and b!6609234 b!6607405)))

(assert (=> bs!1694803 (not (= lambda!368825 lambda!368680))))

(declare-fun bs!1694804 () Bool)

(assert (= bs!1694804 (and b!6609234 b!6607446)))

(assert (=> bs!1694804 (= (and (= Nil!65600 s!2326) (= (regOne!33462 (regOne!33463 lt!2415134)) (regOne!33462 lt!2415143)) (= (regTwo!33462 (regOne!33463 lt!2415134)) (regTwo!33462 lt!2415143))) (= lambda!368825 lambda!368691))))

(declare-fun bs!1694805 () Bool)

(assert (= bs!1694805 (and b!6609234 d!2072643)))

(assert (=> bs!1694805 (= (and (= Nil!65600 s!2326) (= (regOne!33462 (regOne!33463 lt!2415134)) (regOne!33462 r!7292)) (= (regTwo!33462 (regOne!33463 lt!2415134)) (regTwo!33462 r!7292))) (= lambda!368825 lambda!368821))))

(declare-fun bs!1694806 () Bool)

(assert (= bs!1694806 (and b!6609234 b!6607530)))

(assert (=> bs!1694806 (not (= lambda!368825 lambda!368692))))

(declare-fun bs!1694808 () Bool)

(assert (= bs!1694808 (and b!6609234 d!2072615)))

(assert (=> bs!1694808 (not (= lambda!368825 lambda!368806))))

(assert (=> bs!1694802 (not (= lambda!368825 lambda!368687))))

(assert (=> bs!1694805 (not (= lambda!368825 lambda!368819))))

(declare-fun bs!1694809 () Bool)

(assert (= bs!1694809 (and b!6609234 b!6608923)))

(assert (=> bs!1694809 (not (= lambda!368825 lambda!368790))))

(declare-fun bs!1694810 () Bool)

(assert (= bs!1694810 (and b!6609234 b!6608061)))

(assert (=> bs!1694810 (= (and (= Nil!65600 s!2326) (= (regOne!33462 (regOne!33463 lt!2415134)) (regOne!33462 (regTwo!33463 r!7292))) (= (regTwo!33462 (regOne!33463 lt!2415134)) (regTwo!33462 (regTwo!33463 r!7292)))) (= lambda!368825 lambda!368727))))

(declare-fun bs!1694811 () Bool)

(assert (= bs!1694811 (and b!6609234 b!6607522)))

(assert (=> bs!1694811 (= (and (= Nil!65600 s!2326) (= (regOne!33462 (regOne!33463 lt!2415134)) (regOne!33462 r!7292)) (= (regTwo!33462 (regOne!33463 lt!2415134)) (regTwo!33462 r!7292))) (= lambda!368825 lambda!368693))))

(declare-fun bs!1694812 () Bool)

(assert (= bs!1694812 (and b!6609234 d!2071841)))

(assert (=> bs!1694812 (not (= lambda!368825 lambda!368688))))

(assert (=> bs!1694800 (not (= lambda!368825 lambda!368741))))

(assert (=> b!6609234 true))

(assert (=> b!6609234 true))

(declare-fun b!6609232 () Bool)

(declare-fun e!3998853 () Bool)

(declare-fun e!3998849 () Bool)

(assert (=> b!6609232 (= e!3998853 e!3998849)))

(declare-fun c!1218156 () Bool)

(assert (=> b!6609232 (= c!1218156 ((_ is Star!16475) (regOne!33463 lt!2415134)))))

(declare-fun b!6609233 () Bool)

(declare-fun e!3998847 () Bool)

(declare-fun call!578504 () Bool)

(assert (=> b!6609233 (= e!3998847 call!578504)))

(declare-fun call!578503 () Bool)

(assert (=> b!6609234 (= e!3998849 call!578503)))

(declare-fun b!6609235 () Bool)

(declare-fun c!1218158 () Bool)

(assert (=> b!6609235 (= c!1218158 ((_ is ElementMatch!16475) (regOne!33463 lt!2415134)))))

(declare-fun e!3998851 () Bool)

(declare-fun e!3998848 () Bool)

(assert (=> b!6609235 (= e!3998851 e!3998848)))

(declare-fun b!6609237 () Bool)

(declare-fun res!2710042 () Bool)

(declare-fun e!3998850 () Bool)

(assert (=> b!6609237 (=> res!2710042 e!3998850)))

(assert (=> b!6609237 (= res!2710042 call!578504)))

(assert (=> b!6609237 (= e!3998849 e!3998850)))

(declare-fun b!6609238 () Bool)

(assert (=> b!6609238 (= e!3998848 (= Nil!65600 (Cons!65600 (c!1217326 (regOne!33463 lt!2415134)) Nil!65600)))))

(declare-fun bm!578498 () Bool)

(assert (=> bm!578498 (= call!578504 (isEmpty!37882 Nil!65600))))

(declare-fun b!6609239 () Bool)

(declare-fun c!1218159 () Bool)

(assert (=> b!6609239 (= c!1218159 ((_ is Union!16475) (regOne!33463 lt!2415134)))))

(assert (=> b!6609239 (= e!3998848 e!3998853)))

(declare-fun b!6609240 () Bool)

(declare-fun e!3998852 () Bool)

(assert (=> b!6609240 (= e!3998852 (matchRSpec!3576 (regTwo!33463 (regOne!33463 lt!2415134)) Nil!65600))))

(declare-fun bm!578499 () Bool)

(assert (=> bm!578499 (= call!578503 (Exists!3545 (ite c!1218156 lambda!368823 lambda!368825)))))

(declare-fun b!6609241 () Bool)

(assert (=> b!6609241 (= e!3998847 e!3998851)))

(declare-fun res!2710043 () Bool)

(assert (=> b!6609241 (= res!2710043 (not ((_ is EmptyLang!16475) (regOne!33463 lt!2415134))))))

(assert (=> b!6609241 (=> (not res!2710043) (not e!3998851))))

(assert (=> b!6609242 (= e!3998850 call!578503)))

(declare-fun b!6609236 () Bool)

(assert (=> b!6609236 (= e!3998853 e!3998852)))

(declare-fun res!2710044 () Bool)

(assert (=> b!6609236 (= res!2710044 (matchRSpec!3576 (regOne!33463 (regOne!33463 lt!2415134)) Nil!65600))))

(assert (=> b!6609236 (=> res!2710044 e!3998852)))

(declare-fun d!2072657 () Bool)

(declare-fun c!1218157 () Bool)

(assert (=> d!2072657 (= c!1218157 ((_ is EmptyExpr!16475) (regOne!33463 lt!2415134)))))

(assert (=> d!2072657 (= (matchRSpec!3576 (regOne!33463 lt!2415134) Nil!65600) e!3998847)))

(assert (= (and d!2072657 c!1218157) b!6609233))

(assert (= (and d!2072657 (not c!1218157)) b!6609241))

(assert (= (and b!6609241 res!2710043) b!6609235))

(assert (= (and b!6609235 c!1218158) b!6609238))

(assert (= (and b!6609235 (not c!1218158)) b!6609239))

(assert (= (and b!6609239 c!1218159) b!6609236))

(assert (= (and b!6609239 (not c!1218159)) b!6609232))

(assert (= (and b!6609236 (not res!2710044)) b!6609240))

(assert (= (and b!6609232 c!1218156) b!6609237))

(assert (= (and b!6609232 (not c!1218156)) b!6609234))

(assert (= (and b!6609237 (not res!2710042)) b!6609242))

(assert (= (or b!6609242 b!6609234) bm!578499))

(assert (= (or b!6609233 b!6609237) bm!578498))

(assert (=> bm!578498 m!7382400))

(declare-fun m!7384148 () Bool)

(assert (=> b!6609240 m!7384148))

(declare-fun m!7384150 () Bool)

(assert (=> bm!578499 m!7384150))

(declare-fun m!7384152 () Bool)

(assert (=> b!6609236 m!7384152))

(assert (=> b!6607399 d!2072657))

(assert (=> b!6607531 d!2071965))

(assert (=> b!6607576 d!2071909))

(declare-fun d!2072663 () Bool)

(assert (=> d!2072663 (= (isEmpty!37878 (tail!12486 (t!379377 (exprs!6359 (h!72050 zl!343))))) ((_ is Nil!65601) (tail!12486 (t!379377 (exprs!6359 (h!72050 zl!343))))))))

(assert (=> b!6607650 d!2072663))

(declare-fun d!2072667 () Bool)

(assert (=> d!2072667 (= (tail!12486 (t!379377 (exprs!6359 (h!72050 zl!343)))) (t!379377 (t!379377 (exprs!6359 (h!72050 zl!343)))))))

(assert (=> b!6607650 d!2072667))

(declare-fun d!2072669 () Bool)

(declare-fun c!1218163 () Bool)

(assert (=> d!2072669 (= c!1218163 ((_ is Nil!65602) lt!2415310))))

(declare-fun e!3998858 () (InoxSet Context!11718))

(assert (=> d!2072669 (= (content!12652 lt!2415310) e!3998858)))

(declare-fun b!6609251 () Bool)

(assert (=> b!6609251 (= e!3998858 ((as const (Array Context!11718 Bool)) false))))

(declare-fun b!6609252 () Bool)

(assert (=> b!6609252 (= e!3998858 ((_ map or) (store ((as const (Array Context!11718 Bool)) false) (h!72050 lt!2415310) true) (content!12652 (t!379378 lt!2415310))))))

(assert (= (and d!2072669 c!1218163) b!6609251))

(assert (= (and d!2072669 (not c!1218163)) b!6609252))

(declare-fun m!7384170 () Bool)

(assert (=> b!6609252 m!7384170))

(declare-fun m!7384172 () Bool)

(assert (=> b!6609252 m!7384172))

(assert (=> b!6607457 d!2072669))

(declare-fun d!2072675 () Bool)

(declare-fun res!2710049 () Bool)

(declare-fun e!3998861 () Bool)

(assert (=> d!2072675 (=> res!2710049 e!3998861)))

(assert (=> d!2072675 (= res!2710049 ((_ is Nil!65601) (exprs!6359 setElem!45120)))))

(assert (=> d!2072675 (= (forall!15673 (exprs!6359 setElem!45120) lambda!368689) e!3998861)))

(declare-fun b!6609257 () Bool)

(declare-fun e!3998862 () Bool)

(assert (=> b!6609257 (= e!3998861 e!3998862)))

(declare-fun res!2710050 () Bool)

(assert (=> b!6609257 (=> (not res!2710050) (not e!3998862))))

(assert (=> b!6609257 (= res!2710050 (dynLambda!26126 lambda!368689 (h!72049 (exprs!6359 setElem!45120))))))

(declare-fun b!6609258 () Bool)

(assert (=> b!6609258 (= e!3998862 (forall!15673 (t!379377 (exprs!6359 setElem!45120)) lambda!368689))))

(assert (= (and d!2072675 (not res!2710049)) b!6609257))

(assert (= (and b!6609257 res!2710050) b!6609258))

(declare-fun b_lambda!250067 () Bool)

(assert (=> (not b_lambda!250067) (not b!6609257)))

(declare-fun m!7384175 () Bool)

(assert (=> b!6609257 m!7384175))

(declare-fun m!7384180 () Bool)

(assert (=> b!6609258 m!7384180))

(assert (=> d!2071851 d!2072675))

(declare-fun d!2072677 () Bool)

(declare-fun res!2710051 () Bool)

(declare-fun e!3998863 () Bool)

(assert (=> d!2072677 (=> res!2710051 e!3998863)))

(assert (=> d!2072677 (= res!2710051 ((_ is Nil!65602) zl!343))))

(assert (=> d!2072677 (= (forall!15674 zl!343 lambda!368670) e!3998863)))

(declare-fun b!6609259 () Bool)

(declare-fun e!3998864 () Bool)

(assert (=> b!6609259 (= e!3998863 e!3998864)))

(declare-fun res!2710052 () Bool)

(assert (=> b!6609259 (=> (not res!2710052) (not e!3998864))))

(assert (=> b!6609259 (= res!2710052 (dynLambda!26125 lambda!368670 (h!72050 zl!343)))))

(declare-fun b!6609260 () Bool)

(assert (=> b!6609260 (= e!3998864 (forall!15674 (t!379378 zl!343) lambda!368670))))

(assert (= (and d!2072677 (not res!2710051)) b!6609259))

(assert (= (and b!6609259 res!2710052) b!6609260))

(declare-fun b_lambda!250069 () Bool)

(assert (=> (not b_lambda!250069) (not b!6609259)))

(declare-fun m!7384192 () Bool)

(assert (=> b!6609259 m!7384192))

(declare-fun m!7384194 () Bool)

(assert (=> b!6609260 m!7384194))

(assert (=> b!6607267 d!2072677))

(declare-fun d!2072681 () Bool)

(assert (=> d!2072681 (= (isEmpty!37878 (t!379377 (unfocusZipperList!1896 zl!343))) ((_ is Nil!65601) (t!379377 (unfocusZipperList!1896 zl!343))))))

(assert (=> b!6606836 d!2072681))

(declare-fun d!2072683 () Bool)

(assert (=> d!2072683 (= (nullable!6468 lt!2415143) (nullableFct!2393 lt!2415143))))

(declare-fun bs!1694828 () Bool)

(assert (= bs!1694828 d!2072683))

(declare-fun m!7384196 () Bool)

(assert (=> bs!1694828 m!7384196))

(assert (=> b!6607440 d!2072683))

(declare-fun d!2072685 () Bool)

(declare-fun e!3998865 () Bool)

(assert (=> d!2072685 e!3998865))

(declare-fun c!1218166 () Bool)

(assert (=> d!2072685 (= c!1218166 ((_ is EmptyExpr!16475) (derivativeStep!5159 (regTwo!33462 r!7292) (head!13402 s!2326))))))

(declare-fun lt!2415435 () Bool)

(declare-fun e!3998871 () Bool)

(assert (=> d!2072685 (= lt!2415435 e!3998871)))

(declare-fun c!1218165 () Bool)

(assert (=> d!2072685 (= c!1218165 (isEmpty!37882 (tail!12487 s!2326)))))

(assert (=> d!2072685 (validRegex!8211 (derivativeStep!5159 (regTwo!33462 r!7292) (head!13402 s!2326)))))

(assert (=> d!2072685 (= (matchR!8658 (derivativeStep!5159 (regTwo!33462 r!7292) (head!13402 s!2326)) (tail!12487 s!2326)) lt!2415435)))

(declare-fun b!6609261 () Bool)

(declare-fun e!3998866 () Bool)

(assert (=> b!6609261 (= e!3998866 (= (head!13402 (tail!12487 s!2326)) (c!1217326 (derivativeStep!5159 (regTwo!33462 r!7292) (head!13402 s!2326)))))))

(declare-fun b!6609262 () Bool)

(declare-fun e!3998868 () Bool)

(assert (=> b!6609262 (= e!3998868 (not lt!2415435))))

(declare-fun b!6609263 () Bool)

(declare-fun res!2710059 () Bool)

(assert (=> b!6609263 (=> (not res!2710059) (not e!3998866))))

(assert (=> b!6609263 (= res!2710059 (isEmpty!37882 (tail!12487 (tail!12487 s!2326))))))

(declare-fun bm!578500 () Bool)

(declare-fun call!578505 () Bool)

(assert (=> bm!578500 (= call!578505 (isEmpty!37882 (tail!12487 s!2326)))))

(declare-fun b!6609264 () Bool)

(declare-fun e!3998870 () Bool)

(declare-fun e!3998869 () Bool)

(assert (=> b!6609264 (= e!3998870 e!3998869)))

(declare-fun res!2710060 () Bool)

(assert (=> b!6609264 (=> res!2710060 e!3998869)))

(assert (=> b!6609264 (= res!2710060 call!578505)))

(declare-fun b!6609265 () Bool)

(declare-fun res!2710058 () Bool)

(declare-fun e!3998867 () Bool)

(assert (=> b!6609265 (=> res!2710058 e!3998867)))

(assert (=> b!6609265 (= res!2710058 (not ((_ is ElementMatch!16475) (derivativeStep!5159 (regTwo!33462 r!7292) (head!13402 s!2326)))))))

(assert (=> b!6609265 (= e!3998868 e!3998867)))

(declare-fun b!6609266 () Bool)

(assert (=> b!6609266 (= e!3998865 e!3998868)))

(declare-fun c!1218167 () Bool)

(assert (=> b!6609266 (= c!1218167 ((_ is EmptyLang!16475) (derivativeStep!5159 (regTwo!33462 r!7292) (head!13402 s!2326))))))

(declare-fun b!6609267 () Bool)

(assert (=> b!6609267 (= e!3998867 e!3998870)))

(declare-fun res!2710056 () Bool)

(assert (=> b!6609267 (=> (not res!2710056) (not e!3998870))))

(assert (=> b!6609267 (= res!2710056 (not lt!2415435))))

(declare-fun b!6609268 () Bool)

(declare-fun res!2710057 () Bool)

(assert (=> b!6609268 (=> res!2710057 e!3998867)))

(assert (=> b!6609268 (= res!2710057 e!3998866)))

(declare-fun res!2710054 () Bool)

(assert (=> b!6609268 (=> (not res!2710054) (not e!3998866))))

(assert (=> b!6609268 (= res!2710054 lt!2415435)))

(declare-fun b!6609269 () Bool)

(assert (=> b!6609269 (= e!3998871 (matchR!8658 (derivativeStep!5159 (derivativeStep!5159 (regTwo!33462 r!7292) (head!13402 s!2326)) (head!13402 (tail!12487 s!2326))) (tail!12487 (tail!12487 s!2326))))))

(declare-fun b!6609270 () Bool)

(declare-fun res!2710055 () Bool)

(assert (=> b!6609270 (=> res!2710055 e!3998869)))

(assert (=> b!6609270 (= res!2710055 (not (isEmpty!37882 (tail!12487 (tail!12487 s!2326)))))))

(declare-fun b!6609271 () Bool)

(assert (=> b!6609271 (= e!3998871 (nullable!6468 (derivativeStep!5159 (regTwo!33462 r!7292) (head!13402 s!2326))))))

(declare-fun b!6609272 () Bool)

(declare-fun res!2710053 () Bool)

(assert (=> b!6609272 (=> (not res!2710053) (not e!3998866))))

(assert (=> b!6609272 (= res!2710053 (not call!578505))))

(declare-fun b!6609273 () Bool)

(assert (=> b!6609273 (= e!3998865 (= lt!2415435 call!578505))))

(declare-fun b!6609274 () Bool)

(assert (=> b!6609274 (= e!3998869 (not (= (head!13402 (tail!12487 s!2326)) (c!1217326 (derivativeStep!5159 (regTwo!33462 r!7292) (head!13402 s!2326))))))))

(assert (= (and d!2072685 c!1218165) b!6609271))

(assert (= (and d!2072685 (not c!1218165)) b!6609269))

(assert (= (and d!2072685 c!1218166) b!6609273))

(assert (= (and d!2072685 (not c!1218166)) b!6609266))

(assert (= (and b!6609266 c!1218167) b!6609262))

(assert (= (and b!6609266 (not c!1218167)) b!6609265))

(assert (= (and b!6609265 (not res!2710058)) b!6609268))

(assert (= (and b!6609268 res!2710054) b!6609272))

(assert (= (and b!6609272 res!2710053) b!6609263))

(assert (= (and b!6609263 res!2710059) b!6609261))

(assert (= (and b!6609268 (not res!2710057)) b!6609267))

(assert (= (and b!6609267 res!2710056) b!6609264))

(assert (= (and b!6609264 (not res!2710060)) b!6609270))

(assert (= (and b!6609270 (not res!2710055)) b!6609274))

(assert (= (or b!6609273 b!6609264 b!6609272) bm!578500))

(assert (=> b!6609269 m!7382454))

(assert (=> b!6609269 m!7382740))

(assert (=> b!6609269 m!7382528))

(assert (=> b!6609269 m!7382740))

(declare-fun m!7384198 () Bool)

(assert (=> b!6609269 m!7384198))

(assert (=> b!6609269 m!7382454))

(assert (=> b!6609269 m!7382744))

(assert (=> b!6609269 m!7384198))

(assert (=> b!6609269 m!7382744))

(declare-fun m!7384200 () Bool)

(assert (=> b!6609269 m!7384200))

(assert (=> b!6609271 m!7382528))

(declare-fun m!7384202 () Bool)

(assert (=> b!6609271 m!7384202))

(assert (=> bm!578500 m!7382454))

(assert (=> bm!578500 m!7382462))

(assert (=> b!6609261 m!7382454))

(assert (=> b!6609261 m!7382740))

(assert (=> b!6609263 m!7382454))

(assert (=> b!6609263 m!7382744))

(assert (=> b!6609263 m!7382744))

(assert (=> b!6609263 m!7383726))

(assert (=> d!2072685 m!7382454))

(assert (=> d!2072685 m!7382462))

(assert (=> d!2072685 m!7382528))

(declare-fun m!7384204 () Bool)

(assert (=> d!2072685 m!7384204))

(assert (=> b!6609274 m!7382454))

(assert (=> b!6609274 m!7382740))

(assert (=> b!6609270 m!7382454))

(assert (=> b!6609270 m!7382744))

(assert (=> b!6609270 m!7382744))

(assert (=> b!6609270 m!7383726))

(assert (=> b!6607498 d!2072685))

(declare-fun b!6609275 () Bool)

(declare-fun e!3998875 () Regex!16475)

(assert (=> b!6609275 (= e!3998875 EmptyLang!16475)))

(declare-fun bm!578501 () Bool)

(declare-fun call!578507 () Regex!16475)

(declare-fun call!578506 () Regex!16475)

(assert (=> bm!578501 (= call!578507 call!578506)))

(declare-fun bm!578502 () Bool)

(declare-fun call!578508 () Regex!16475)

(assert (=> bm!578502 (= call!578506 call!578508)))

(declare-fun b!6609276 () Bool)

(declare-fun e!3998874 () Regex!16475)

(assert (=> b!6609276 (= e!3998875 e!3998874)))

(declare-fun c!1218168 () Bool)

(assert (=> b!6609276 (= c!1218168 ((_ is ElementMatch!16475) (regTwo!33462 r!7292)))))

(declare-fun bm!578503 () Bool)

(declare-fun call!578509 () Regex!16475)

(declare-fun c!1218171 () Bool)

(assert (=> bm!578503 (= call!578509 (derivativeStep!5159 (ite c!1218171 (regOne!33463 (regTwo!33462 r!7292)) (regOne!33462 (regTwo!33462 r!7292))) (head!13402 s!2326)))))

(declare-fun b!6609277 () Bool)

(assert (=> b!6609277 (= c!1218171 ((_ is Union!16475) (regTwo!33462 r!7292)))))

(declare-fun e!3998876 () Regex!16475)

(assert (=> b!6609277 (= e!3998874 e!3998876)))

(declare-fun b!6609278 () Bool)

(declare-fun e!3998873 () Regex!16475)

(assert (=> b!6609278 (= e!3998873 (Union!16475 (Concat!25320 call!578507 (regTwo!33462 (regTwo!33462 r!7292))) EmptyLang!16475))))

(declare-fun b!6609279 () Bool)

(declare-fun e!3998872 () Regex!16475)

(assert (=> b!6609279 (= e!3998876 e!3998872)))

(declare-fun c!1218172 () Bool)

(assert (=> b!6609279 (= c!1218172 ((_ is Star!16475) (regTwo!33462 r!7292)))))

(declare-fun d!2072687 () Bool)

(declare-fun lt!2415436 () Regex!16475)

(assert (=> d!2072687 (validRegex!8211 lt!2415436)))

(assert (=> d!2072687 (= lt!2415436 e!3998875)))

(declare-fun c!1218169 () Bool)

(assert (=> d!2072687 (= c!1218169 (or ((_ is EmptyExpr!16475) (regTwo!33462 r!7292)) ((_ is EmptyLang!16475) (regTwo!33462 r!7292))))))

(assert (=> d!2072687 (validRegex!8211 (regTwo!33462 r!7292))))

(assert (=> d!2072687 (= (derivativeStep!5159 (regTwo!33462 r!7292) (head!13402 s!2326)) lt!2415436)))

(declare-fun b!6609280 () Bool)

(assert (=> b!6609280 (= e!3998873 (Union!16475 (Concat!25320 call!578509 (regTwo!33462 (regTwo!33462 r!7292))) call!578507))))

(declare-fun b!6609281 () Bool)

(assert (=> b!6609281 (= e!3998872 (Concat!25320 call!578506 (regTwo!33462 r!7292)))))

(declare-fun b!6609282 () Bool)

(assert (=> b!6609282 (= e!3998876 (Union!16475 call!578509 call!578508))))

(declare-fun b!6609283 () Bool)

(declare-fun c!1218170 () Bool)

(assert (=> b!6609283 (= c!1218170 (nullable!6468 (regOne!33462 (regTwo!33462 r!7292))))))

(assert (=> b!6609283 (= e!3998872 e!3998873)))

(declare-fun b!6609284 () Bool)

(assert (=> b!6609284 (= e!3998874 (ite (= (head!13402 s!2326) (c!1217326 (regTwo!33462 r!7292))) EmptyExpr!16475 EmptyLang!16475))))

(declare-fun bm!578504 () Bool)

(assert (=> bm!578504 (= call!578508 (derivativeStep!5159 (ite c!1218171 (regTwo!33463 (regTwo!33462 r!7292)) (ite c!1218172 (reg!16804 (regTwo!33462 r!7292)) (ite c!1218170 (regTwo!33462 (regTwo!33462 r!7292)) (regOne!33462 (regTwo!33462 r!7292))))) (head!13402 s!2326)))))

(assert (= (and d!2072687 c!1218169) b!6609275))

(assert (= (and d!2072687 (not c!1218169)) b!6609276))

(assert (= (and b!6609276 c!1218168) b!6609284))

(assert (= (and b!6609276 (not c!1218168)) b!6609277))

(assert (= (and b!6609277 c!1218171) b!6609282))

(assert (= (and b!6609277 (not c!1218171)) b!6609279))

(assert (= (and b!6609279 c!1218172) b!6609281))

(assert (= (and b!6609279 (not c!1218172)) b!6609283))

(assert (= (and b!6609283 c!1218170) b!6609280))

(assert (= (and b!6609283 (not c!1218170)) b!6609278))

(assert (= (or b!6609280 b!6609278) bm!578501))

(assert (= (or b!6609281 bm!578501) bm!578502))

(assert (= (or b!6609282 bm!578502) bm!578504))

(assert (= (or b!6609282 b!6609280) bm!578503))

(assert (=> bm!578503 m!7382450))

(declare-fun m!7384206 () Bool)

(assert (=> bm!578503 m!7384206))

(declare-fun m!7384208 () Bool)

(assert (=> d!2072687 m!7384208))

(assert (=> d!2072687 m!7381716))

(declare-fun m!7384210 () Bool)

(assert (=> b!6609283 m!7384210))

(assert (=> bm!578504 m!7382450))

(declare-fun m!7384212 () Bool)

(assert (=> bm!578504 m!7384212))

(assert (=> b!6607498 d!2072687))

(assert (=> b!6607498 d!2071965))

(assert (=> b!6607498 d!2071969))

(declare-fun bs!1694830 () Bool)

(declare-fun b!6609295 () Bool)

(assert (= bs!1694830 (and b!6609295 b!6608995)))

(declare-fun lambda!368827 () Int)

(assert (=> bs!1694830 (= (and (= (reg!16804 (regOne!33463 lt!2415143)) (reg!16804 (regOne!33463 r!7292))) (= (regOne!33463 lt!2415143) (regOne!33463 r!7292))) (= lambda!368827 lambda!368792))))

(declare-fun bs!1694831 () Bool)

(assert (= bs!1694831 (and b!6609295 d!2072109)))

(assert (=> bs!1694831 (not (= lambda!368827 lambda!368721))))

(declare-fun bs!1694832 () Bool)

(assert (= bs!1694832 (and b!6609295 d!2071761)))

(assert (=> bs!1694832 (not (= lambda!368827 lambda!368653))))

(declare-fun bs!1694833 () Bool)

(assert (= bs!1694833 (and b!6609295 b!6608069)))

(assert (=> bs!1694833 (= (and (= (reg!16804 (regOne!33463 lt!2415143)) (reg!16804 (regTwo!33463 r!7292))) (= (regOne!33463 lt!2415143) (regTwo!33463 r!7292))) (= lambda!368827 lambda!368726))))

(declare-fun bs!1694834 () Bool)

(assert (= bs!1694834 (and b!6609295 b!6606503)))

(assert (=> bs!1694834 (not (= lambda!368827 lambda!368580))))

(declare-fun bs!1694835 () Bool)

(assert (= bs!1694835 (and b!6609295 b!6608915)))

(assert (=> bs!1694835 (not (= lambda!368827 lambda!368791))))

(declare-fun bs!1694836 () Bool)

(assert (= bs!1694836 (and b!6609295 b!6608987)))

(assert (=> bs!1694836 (not (= lambda!368827 lambda!368795))))

(declare-fun bs!1694837 () Bool)

(assert (= bs!1694837 (and b!6609295 b!6608417)))

(assert (=> bs!1694837 (= (and (= (reg!16804 (regOne!33463 lt!2415143)) (reg!16804 (regTwo!33463 lt!2415143))) (= (regOne!33463 lt!2415143) (regTwo!33463 lt!2415143))) (= lambda!368827 lambda!368750))))

(declare-fun bs!1694838 () Bool)

(assert (= bs!1694838 (and b!6609295 d!2071823)))

(assert (=> bs!1694838 (not (= lambda!368827 lambda!368675))))

(declare-fun bs!1694839 () Bool)

(assert (= bs!1694839 (and b!6609295 b!6607454)))

(assert (=> bs!1694839 (= (and (= (reg!16804 (regOne!33463 lt!2415143)) (reg!16804 lt!2415143)) (= (regOne!33463 lt!2415143) lt!2415143)) (= lambda!368827 lambda!368690))))

(assert (=> bs!1694832 (not (= lambda!368827 lambda!368654))))

(declare-fun bs!1694840 () Bool)

(assert (= bs!1694840 (and b!6609295 b!6607397)))

(assert (=> bs!1694840 (not (= lambda!368827 lambda!368681))))

(declare-fun bs!1694841 () Bool)

(assert (= bs!1694841 (and b!6609295 b!6606515)))

(assert (=> bs!1694841 (not (= lambda!368827 lambda!368576))))

(assert (=> bs!1694834 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regOne!33463 lt!2415143)) (reg!16804 (regOne!33462 r!7292))) (= (regOne!33463 lt!2415143) lt!2415134)) (= lambda!368827 lambda!368581))))

(declare-fun bs!1694842 () Bool)

(assert (= bs!1694842 (and b!6609295 b!6608409)))

(assert (=> bs!1694842 (not (= lambda!368827 lambda!368751))))

(declare-fun bs!1694843 () Bool)

(assert (= bs!1694843 (and b!6609295 d!2072203)))

(assert (=> bs!1694843 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regOne!33463 lt!2415143)) (reg!16804 (regOne!33462 r!7292))) (= (regOne!33463 lt!2415143) (Star!16475 (reg!16804 (regOne!33462 r!7292))))) (= lambda!368827 lambda!368742))))

(assert (=> bs!1694834 (not (= lambda!368827 lambda!368579))))

(declare-fun bs!1694844 () Bool)

(assert (= bs!1694844 (and b!6609295 b!6609242)))

(assert (=> bs!1694844 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regOne!33463 lt!2415143)) (reg!16804 (regOne!33463 lt!2415134))) (= (regOne!33463 lt!2415143) (regOne!33463 lt!2415134))) (= lambda!368827 lambda!368823))))

(declare-fun bs!1694845 () Bool)

(assert (= bs!1694845 (and b!6609295 b!6609234)))

(assert (=> bs!1694845 (not (= lambda!368827 lambda!368825))))

(assert (=> bs!1694841 (not (= lambda!368827 lambda!368577))))

(assert (=> bs!1694838 (not (= lambda!368827 lambda!368674))))

(declare-fun bs!1694846 () Bool)

(assert (= bs!1694846 (and b!6609295 d!2071755)))

(assert (=> bs!1694846 (not (= lambda!368827 lambda!368648))))

(declare-fun bs!1694847 () Bool)

(assert (= bs!1694847 (and b!6609295 d!2071833)))

(assert (=> bs!1694847 (not (= lambda!368827 lambda!368686))))

(declare-fun bs!1694848 () Bool)

(assert (= bs!1694848 (and b!6609295 b!6607405)))

(assert (=> bs!1694848 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regOne!33463 lt!2415143)) (reg!16804 lt!2415134)) (= (regOne!33463 lt!2415143) lt!2415134)) (= lambda!368827 lambda!368680))))

(declare-fun bs!1694849 () Bool)

(assert (= bs!1694849 (and b!6609295 b!6607446)))

(assert (=> bs!1694849 (not (= lambda!368827 lambda!368691))))

(declare-fun bs!1694850 () Bool)

(assert (= bs!1694850 (and b!6609295 d!2072643)))

(assert (=> bs!1694850 (not (= lambda!368827 lambda!368821))))

(declare-fun bs!1694851 () Bool)

(assert (= bs!1694851 (and b!6609295 b!6607530)))

(assert (=> bs!1694851 (= (and (= (reg!16804 (regOne!33463 lt!2415143)) (reg!16804 r!7292)) (= (regOne!33463 lt!2415143) r!7292)) (= lambda!368827 lambda!368692))))

(declare-fun bs!1694852 () Bool)

(assert (= bs!1694852 (and b!6609295 d!2072615)))

(assert (=> bs!1694852 (not (= lambda!368827 lambda!368806))))

(assert (=> bs!1694847 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regOne!33463 lt!2415143)) (reg!16804 (regOne!33462 r!7292))) (= (regOne!33463 lt!2415143) (Star!16475 (reg!16804 (regOne!33462 r!7292))))) (= lambda!368827 lambda!368687))))

(assert (=> bs!1694850 (not (= lambda!368827 lambda!368819))))

(declare-fun bs!1694853 () Bool)

(assert (= bs!1694853 (and b!6609295 b!6608923)))

(assert (=> bs!1694853 (= (and (= s!2326 Nil!65600) (= (reg!16804 (regOne!33463 lt!2415143)) (reg!16804 (regTwo!33463 lt!2415134))) (= (regOne!33463 lt!2415143) (regTwo!33463 lt!2415134))) (= lambda!368827 lambda!368790))))

(declare-fun bs!1694854 () Bool)

(assert (= bs!1694854 (and b!6609295 b!6608061)))

(assert (=> bs!1694854 (not (= lambda!368827 lambda!368727))))

(declare-fun bs!1694855 () Bool)

(assert (= bs!1694855 (and b!6609295 b!6607522)))

(assert (=> bs!1694855 (not (= lambda!368827 lambda!368693))))

(declare-fun bs!1694856 () Bool)

(assert (= bs!1694856 (and b!6609295 d!2071841)))

(assert (=> bs!1694856 (not (= lambda!368827 lambda!368688))))

(assert (=> bs!1694843 (not (= lambda!368827 lambda!368741))))

(assert (=> b!6609295 true))

(assert (=> b!6609295 true))

(declare-fun bs!1694857 () Bool)

(declare-fun b!6609287 () Bool)

(assert (= bs!1694857 (and b!6609287 b!6608995)))

(declare-fun lambda!368828 () Int)

(assert (=> bs!1694857 (not (= lambda!368828 lambda!368792))))

(declare-fun bs!1694858 () Bool)

(assert (= bs!1694858 (and b!6609287 d!2072109)))

(assert (=> bs!1694858 (not (= lambda!368828 lambda!368721))))

(declare-fun bs!1694859 () Bool)

(assert (= bs!1694859 (and b!6609287 d!2071761)))

(assert (=> bs!1694859 (not (= lambda!368828 lambda!368653))))

(declare-fun bs!1694860 () Bool)

(assert (= bs!1694860 (and b!6609287 b!6606503)))

(assert (=> bs!1694860 (= (and (= s!2326 Nil!65600) (= (regOne!33462 (regOne!33463 lt!2415143)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 (regOne!33463 lt!2415143)) lt!2415134)) (= lambda!368828 lambda!368580))))

(declare-fun bs!1694861 () Bool)

(assert (= bs!1694861 (and b!6609287 b!6608915)))

(assert (=> bs!1694861 (= (and (= s!2326 Nil!65600) (= (regOne!33462 (regOne!33463 lt!2415143)) (regOne!33462 (regTwo!33463 lt!2415134))) (= (regTwo!33462 (regOne!33463 lt!2415143)) (regTwo!33462 (regTwo!33463 lt!2415134)))) (= lambda!368828 lambda!368791))))

(declare-fun bs!1694862 () Bool)

(assert (= bs!1694862 (and b!6609287 b!6608987)))

(assert (=> bs!1694862 (= (and (= (regOne!33462 (regOne!33463 lt!2415143)) (regOne!33462 (regOne!33463 r!7292))) (= (regTwo!33462 (regOne!33463 lt!2415143)) (regTwo!33462 (regOne!33463 r!7292)))) (= lambda!368828 lambda!368795))))

(declare-fun bs!1694863 () Bool)

(assert (= bs!1694863 (and b!6609287 b!6608417)))

(assert (=> bs!1694863 (not (= lambda!368828 lambda!368750))))

(declare-fun bs!1694864 () Bool)

(assert (= bs!1694864 (and b!6609287 d!2071823)))

(assert (=> bs!1694864 (= (and (= s!2326 Nil!65600) (= (regOne!33462 (regOne!33463 lt!2415143)) (reg!16804 (regOne!33462 r!7292))) (= (regTwo!33462 (regOne!33463 lt!2415143)) lt!2415134)) (= lambda!368828 lambda!368675))))

(declare-fun bs!1694865 () Bool)

(assert (= bs!1694865 (and b!6609287 b!6607454)))

(assert (=> bs!1694865 (not (= lambda!368828 lambda!368690))))

(assert (=> bs!1694859 (= (and (= (regOne!33462 (regOne!33463 lt!2415143)) (regOne!33462 r!7292)) (= (regTwo!33462 (regOne!33463 lt!2415143)) (regTwo!33462 r!7292))) (= lambda!368828 lambda!368654))))

(declare-fun bs!1694866 () Bool)

(assert (= bs!1694866 (and b!6609287 b!6607397)))

(assert (=> bs!1694866 (= (and (= s!2326 Nil!65600) (= (regOne!33462 (regOne!33463 lt!2415143)) (regOne!33462 lt!2415134)) (= (regTwo!33462 (regOne!33463 lt!2415143)) (regTwo!33462 lt!2415134))) (= lambda!368828 lambda!368681))))

(declare-fun bs!1694867 () Bool)

(assert (= bs!1694867 (and b!6609287 b!6606515)))

(assert (=> bs!1694867 (not (= lambda!368828 lambda!368576))))

(declare-fun bs!1694868 () Bool)

(assert (= bs!1694868 (and b!6609287 b!6609295)))

(assert (=> bs!1694868 (not (= lambda!368828 lambda!368827))))

(declare-fun bs!1694869 () Bool)

(assert (= bs!1694869 (and b!6609287 b!6608069)))

(assert (=> bs!1694869 (not (= lambda!368828 lambda!368726))))

(assert (=> bs!1694860 (not (= lambda!368828 lambda!368581))))

(declare-fun bs!1694870 () Bool)

(assert (= bs!1694870 (and b!6609287 b!6608409)))

(assert (=> bs!1694870 (= (and (= (regOne!33462 (regOne!33463 lt!2415143)) (regOne!33462 (regTwo!33463 lt!2415143))) (= (regTwo!33462 (regOne!33463 lt!2415143)) (regTwo!33462 (regTwo!33463 lt!2415143)))) (= lambda!368828 lambda!368751))))

(declare-fun bs!1694871 () Bool)

(assert (= bs!1694871 (and b!6609287 d!2072203)))

(assert (=> bs!1694871 (not (= lambda!368828 lambda!368742))))

(assert (=> bs!1694860 (not (= lambda!368828 lambda!368579))))

(declare-fun bs!1694872 () Bool)

(assert (= bs!1694872 (and b!6609287 b!6609242)))

(assert (=> bs!1694872 (not (= lambda!368828 lambda!368823))))

(declare-fun bs!1694873 () Bool)

(assert (= bs!1694873 (and b!6609287 b!6609234)))

(assert (=> bs!1694873 (= (and (= s!2326 Nil!65600) (= (regOne!33462 (regOne!33463 lt!2415143)) (regOne!33462 (regOne!33463 lt!2415134))) (= (regTwo!33462 (regOne!33463 lt!2415143)) (regTwo!33462 (regOne!33463 lt!2415134)))) (= lambda!368828 lambda!368825))))

(assert (=> bs!1694867 (= (and (= (regOne!33462 (regOne!33463 lt!2415143)) (regOne!33462 r!7292)) (= (regTwo!33462 (regOne!33463 lt!2415143)) (regTwo!33462 r!7292))) (= lambda!368828 lambda!368577))))

(assert (=> bs!1694864 (not (= lambda!368828 lambda!368674))))

(declare-fun bs!1694874 () Bool)

(assert (= bs!1694874 (and b!6609287 d!2071755)))

(assert (=> bs!1694874 (not (= lambda!368828 lambda!368648))))

(declare-fun bs!1694875 () Bool)

(assert (= bs!1694875 (and b!6609287 d!2071833)))

(assert (=> bs!1694875 (not (= lambda!368828 lambda!368686))))

(declare-fun bs!1694876 () Bool)

(assert (= bs!1694876 (and b!6609287 b!6607405)))

(assert (=> bs!1694876 (not (= lambda!368828 lambda!368680))))

(declare-fun bs!1694877 () Bool)

(assert (= bs!1694877 (and b!6609287 b!6607446)))

(assert (=> bs!1694877 (= (and (= (regOne!33462 (regOne!33463 lt!2415143)) (regOne!33462 lt!2415143)) (= (regTwo!33462 (regOne!33463 lt!2415143)) (regTwo!33462 lt!2415143))) (= lambda!368828 lambda!368691))))

(declare-fun bs!1694878 () Bool)

(assert (= bs!1694878 (and b!6609287 d!2072643)))

(assert (=> bs!1694878 (= (and (= (regOne!33462 (regOne!33463 lt!2415143)) (regOne!33462 r!7292)) (= (regTwo!33462 (regOne!33463 lt!2415143)) (regTwo!33462 r!7292))) (= lambda!368828 lambda!368821))))

(declare-fun bs!1694879 () Bool)

(assert (= bs!1694879 (and b!6609287 b!6607530)))

(assert (=> bs!1694879 (not (= lambda!368828 lambda!368692))))

(declare-fun bs!1694880 () Bool)

(assert (= bs!1694880 (and b!6609287 d!2072615)))

(assert (=> bs!1694880 (not (= lambda!368828 lambda!368806))))

(assert (=> bs!1694875 (not (= lambda!368828 lambda!368687))))

(assert (=> bs!1694878 (not (= lambda!368828 lambda!368819))))

(declare-fun bs!1694881 () Bool)

(assert (= bs!1694881 (and b!6609287 b!6608923)))

(assert (=> bs!1694881 (not (= lambda!368828 lambda!368790))))

(declare-fun bs!1694882 () Bool)

(assert (= bs!1694882 (and b!6609287 b!6608061)))

(assert (=> bs!1694882 (= (and (= (regOne!33462 (regOne!33463 lt!2415143)) (regOne!33462 (regTwo!33463 r!7292))) (= (regTwo!33462 (regOne!33463 lt!2415143)) (regTwo!33462 (regTwo!33463 r!7292)))) (= lambda!368828 lambda!368727))))

(declare-fun bs!1694883 () Bool)

(assert (= bs!1694883 (and b!6609287 b!6607522)))

(assert (=> bs!1694883 (= (and (= (regOne!33462 (regOne!33463 lt!2415143)) (regOne!33462 r!7292)) (= (regTwo!33462 (regOne!33463 lt!2415143)) (regTwo!33462 r!7292))) (= lambda!368828 lambda!368693))))

(declare-fun bs!1694884 () Bool)

(assert (= bs!1694884 (and b!6609287 d!2071841)))

(assert (=> bs!1694884 (not (= lambda!368828 lambda!368688))))

(assert (=> bs!1694871 (not (= lambda!368828 lambda!368741))))

(assert (=> b!6609287 true))

(assert (=> b!6609287 true))

(declare-fun b!6609285 () Bool)

(declare-fun e!3998883 () Bool)

(declare-fun e!3998879 () Bool)

(assert (=> b!6609285 (= e!3998883 e!3998879)))

(declare-fun c!1218173 () Bool)

(assert (=> b!6609285 (= c!1218173 ((_ is Star!16475) (regOne!33463 lt!2415143)))))

(declare-fun b!6609286 () Bool)

(declare-fun e!3998877 () Bool)

(declare-fun call!578511 () Bool)

(assert (=> b!6609286 (= e!3998877 call!578511)))

(declare-fun call!578510 () Bool)

(assert (=> b!6609287 (= e!3998879 call!578510)))

(declare-fun b!6609288 () Bool)

(declare-fun c!1218175 () Bool)

(assert (=> b!6609288 (= c!1218175 ((_ is ElementMatch!16475) (regOne!33463 lt!2415143)))))

(declare-fun e!3998881 () Bool)

(declare-fun e!3998878 () Bool)

(assert (=> b!6609288 (= e!3998881 e!3998878)))

(declare-fun b!6609290 () Bool)

(declare-fun res!2710061 () Bool)

(declare-fun e!3998880 () Bool)

(assert (=> b!6609290 (=> res!2710061 e!3998880)))

(assert (=> b!6609290 (= res!2710061 call!578511)))

(assert (=> b!6609290 (= e!3998879 e!3998880)))

(declare-fun b!6609291 () Bool)

(assert (=> b!6609291 (= e!3998878 (= s!2326 (Cons!65600 (c!1217326 (regOne!33463 lt!2415143)) Nil!65600)))))

(declare-fun bm!578505 () Bool)

(assert (=> bm!578505 (= call!578511 (isEmpty!37882 s!2326))))

(declare-fun b!6609292 () Bool)

(declare-fun c!1218176 () Bool)

(assert (=> b!6609292 (= c!1218176 ((_ is Union!16475) (regOne!33463 lt!2415143)))))

(assert (=> b!6609292 (= e!3998878 e!3998883)))

(declare-fun b!6609293 () Bool)

(declare-fun e!3998882 () Bool)

(assert (=> b!6609293 (= e!3998882 (matchRSpec!3576 (regTwo!33463 (regOne!33463 lt!2415143)) s!2326))))

(declare-fun bm!578506 () Bool)

(assert (=> bm!578506 (= call!578510 (Exists!3545 (ite c!1218173 lambda!368827 lambda!368828)))))

(declare-fun b!6609294 () Bool)

(assert (=> b!6609294 (= e!3998877 e!3998881)))

(declare-fun res!2710062 () Bool)

(assert (=> b!6609294 (= res!2710062 (not ((_ is EmptyLang!16475) (regOne!33463 lt!2415143))))))

(assert (=> b!6609294 (=> (not res!2710062) (not e!3998881))))

(assert (=> b!6609295 (= e!3998880 call!578510)))

(declare-fun b!6609289 () Bool)

(assert (=> b!6609289 (= e!3998883 e!3998882)))

(declare-fun res!2710063 () Bool)

(assert (=> b!6609289 (= res!2710063 (matchRSpec!3576 (regOne!33463 (regOne!33463 lt!2415143)) s!2326))))

(assert (=> b!6609289 (=> res!2710063 e!3998882)))

(declare-fun d!2072689 () Bool)

(declare-fun c!1218174 () Bool)

(assert (=> d!2072689 (= c!1218174 ((_ is EmptyExpr!16475) (regOne!33463 lt!2415143)))))

(assert (=> d!2072689 (= (matchRSpec!3576 (regOne!33463 lt!2415143) s!2326) e!3998877)))

(assert (= (and d!2072689 c!1218174) b!6609286))

(assert (= (and d!2072689 (not c!1218174)) b!6609294))

(assert (= (and b!6609294 res!2710062) b!6609288))

(assert (= (and b!6609288 c!1218175) b!6609291))

(assert (= (and b!6609288 (not c!1218175)) b!6609292))

(assert (= (and b!6609292 c!1218176) b!6609289))

(assert (= (and b!6609292 (not c!1218176)) b!6609285))

(assert (= (and b!6609289 (not res!2710063)) b!6609293))

(assert (= (and b!6609285 c!1218173) b!6609290))

(assert (= (and b!6609285 (not c!1218173)) b!6609287))

(assert (= (and b!6609290 (not res!2710061)) b!6609295))

(assert (= (or b!6609295 b!6609287) bm!578506))

(assert (= (or b!6609286 b!6609290) bm!578505))

(assert (=> bm!578505 m!7382460))

(declare-fun m!7384270 () Bool)

(assert (=> b!6609293 m!7384270))

(declare-fun m!7384272 () Bool)

(assert (=> bm!578506 m!7384272))

(declare-fun m!7384274 () Bool)

(assert (=> b!6609289 m!7384274))

(assert (=> b!6607448 d!2072689))

(assert (=> d!2071881 d!2072017))

(declare-fun b!6609366 () Bool)

(declare-fun e!3998931 () Bool)

(declare-fun call!578525 () Bool)

(assert (=> b!6609366 (= e!3998931 call!578525)))

(declare-fun d!2072709 () Bool)

(declare-fun res!2710097 () Bool)

(declare-fun e!3998933 () Bool)

(assert (=> d!2072709 (=> res!2710097 e!3998933)))

(assert (=> d!2072709 (= res!2710097 ((_ is ElementMatch!16475) lt!2415318))))

(assert (=> d!2072709 (= (validRegex!8211 lt!2415318) e!3998933)))

(declare-fun b!6609367 () Bool)

(declare-fun e!3998930 () Bool)

(declare-fun e!3998935 () Bool)

(assert (=> b!6609367 (= e!3998930 e!3998935)))

(declare-fun res!2710096 () Bool)

(assert (=> b!6609367 (=> (not res!2710096) (not e!3998935))))

(declare-fun call!578526 () Bool)

(assert (=> b!6609367 (= res!2710096 call!578526)))

(declare-fun b!6609368 () Bool)

(declare-fun e!3998932 () Bool)

(declare-fun call!578527 () Bool)

(assert (=> b!6609368 (= e!3998932 call!578527)))

(declare-fun b!6609369 () Bool)

(declare-fun e!3998934 () Bool)

(assert (=> b!6609369 (= e!3998934 e!3998931)))

(declare-fun res!2710094 () Bool)

(assert (=> b!6609369 (= res!2710094 (not (nullable!6468 (reg!16804 lt!2415318))))))

(assert (=> b!6609369 (=> (not res!2710094) (not e!3998931))))

(declare-fun bm!578520 () Bool)

(assert (=> bm!578520 (= call!578527 call!578525)))

(declare-fun b!6609370 () Bool)

(declare-fun e!3998929 () Bool)

(assert (=> b!6609370 (= e!3998934 e!3998929)))

(declare-fun c!1218197 () Bool)

(assert (=> b!6609370 (= c!1218197 ((_ is Union!16475) lt!2415318))))

(declare-fun c!1218196 () Bool)

(declare-fun bm!578521 () Bool)

(assert (=> bm!578521 (= call!578525 (validRegex!8211 (ite c!1218196 (reg!16804 lt!2415318) (ite c!1218197 (regTwo!33463 lt!2415318) (regTwo!33462 lt!2415318)))))))

(declare-fun bm!578522 () Bool)

(assert (=> bm!578522 (= call!578526 (validRegex!8211 (ite c!1218197 (regOne!33463 lt!2415318) (regOne!33462 lt!2415318))))))

(declare-fun b!6609371 () Bool)

(declare-fun res!2710098 () Bool)

(assert (=> b!6609371 (=> res!2710098 e!3998930)))

(assert (=> b!6609371 (= res!2710098 (not ((_ is Concat!25320) lt!2415318)))))

(assert (=> b!6609371 (= e!3998929 e!3998930)))

(declare-fun b!6609372 () Bool)

(assert (=> b!6609372 (= e!3998933 e!3998934)))

(assert (=> b!6609372 (= c!1218196 ((_ is Star!16475) lt!2415318))))

(declare-fun b!6609373 () Bool)

(declare-fun res!2710095 () Bool)

(assert (=> b!6609373 (=> (not res!2710095) (not e!3998932))))

(assert (=> b!6609373 (= res!2710095 call!578526)))

(assert (=> b!6609373 (= e!3998929 e!3998932)))

(declare-fun b!6609374 () Bool)

(assert (=> b!6609374 (= e!3998935 call!578527)))

(assert (= (and d!2072709 (not res!2710097)) b!6609372))

(assert (= (and b!6609372 c!1218196) b!6609369))

(assert (= (and b!6609372 (not c!1218196)) b!6609370))

(assert (= (and b!6609369 res!2710094) b!6609366))

(assert (= (and b!6609370 c!1218197) b!6609373))

(assert (= (and b!6609370 (not c!1218197)) b!6609371))

(assert (= (and b!6609373 res!2710095) b!6609368))

(assert (= (and b!6609371 (not res!2710098)) b!6609367))

(assert (= (and b!6609367 res!2710096) b!6609374))

(assert (= (or b!6609368 b!6609374) bm!578520))

(assert (= (or b!6609373 b!6609367) bm!578522))

(assert (= (or b!6609366 bm!578520) bm!578521))

(declare-fun m!7384276 () Bool)

(assert (=> b!6609369 m!7384276))

(declare-fun m!7384278 () Bool)

(assert (=> bm!578521 m!7384278))

(declare-fun m!7384280 () Bool)

(assert (=> bm!578522 m!7384280))

(assert (=> d!2071891 d!2072709))

(declare-fun bs!1694885 () Bool)

(declare-fun d!2072711 () Bool)

(assert (= bs!1694885 (and d!2072711 d!2072459)))

(declare-fun lambda!368829 () Int)

(assert (=> bs!1694885 (= lambda!368829 lambda!368781)))

(declare-fun bs!1694886 () Bool)

(assert (= bs!1694886 (and d!2072711 d!2071985)))

(assert (=> bs!1694886 (= lambda!368829 lambda!368704)))

(declare-fun bs!1694887 () Bool)

(assert (= bs!1694887 (and d!2072711 d!2071783)))

(assert (=> bs!1694887 (= lambda!368829 lambda!368660)))

(declare-fun bs!1694888 () Bool)

(assert (= bs!1694888 (and d!2072711 d!2071903)))

(assert (=> bs!1694888 (= lambda!368829 lambda!368696)))

(declare-fun bs!1694889 () Bool)

(assert (= bs!1694889 (and d!2072711 d!2071851)))

(assert (=> bs!1694889 (= lambda!368829 lambda!368689)))

(declare-fun bs!1694890 () Bool)

(assert (= bs!1694890 (and d!2072711 d!2072451)))

(assert (=> bs!1694890 (= lambda!368829 lambda!368779)))

(declare-fun bs!1694891 () Bool)

(assert (= bs!1694891 (and d!2072711 b!6608634)))

(assert (=> bs!1694891 (not (= lambda!368829 lambda!368775))))

(declare-fun bs!1694892 () Bool)

(assert (= bs!1694892 (and d!2072711 b!6608632)))

(assert (=> bs!1694892 (not (= lambda!368829 lambda!368773))))

(declare-fun bs!1694893 () Bool)

(assert (= bs!1694893 (and d!2072711 d!2072321)))

(assert (=> bs!1694893 (= lambda!368829 lambda!368752)))

(declare-fun bs!1694894 () Bool)

(assert (= bs!1694894 (and d!2072711 d!2072601)))

(assert (=> bs!1694894 (= lambda!368829 lambda!368801)))

(declare-fun bs!1694895 () Bool)

(assert (= bs!1694895 (and d!2072711 d!2072589)))

(assert (=> bs!1694895 (= lambda!368829 lambda!368798)))

(declare-fun bs!1694896 () Bool)

(assert (= bs!1694896 (and d!2072711 d!2071909)))

(assert (=> bs!1694896 (= lambda!368829 lambda!368697)))

(declare-fun bs!1694897 () Bool)

(assert (= bs!1694897 (and d!2072711 d!2071653)))

(assert (=> bs!1694897 (= lambda!368829 lambda!368603)))

(declare-fun bs!1694898 () Bool)

(assert (= bs!1694898 (and d!2072711 d!2072275)))

(assert (=> bs!1694898 (= lambda!368829 lambda!368745)))

(declare-fun bs!1694899 () Bool)

(assert (= bs!1694899 (and d!2072711 d!2071951)))

(assert (=> bs!1694899 (= lambda!368829 lambda!368700)))

(declare-fun bs!1694900 () Bool)

(assert (= bs!1694900 (and d!2072711 d!2071661)))

(assert (=> bs!1694900 (= lambda!368829 lambda!368608)))

(declare-fun bs!1694901 () Bool)

(assert (= bs!1694901 (and d!2072711 d!2071953)))

(assert (=> bs!1694901 (= lambda!368829 lambda!368701)))

(declare-fun b!6609375 () Bool)

(declare-fun e!3998941 () Bool)

(declare-fun lt!2415446 () Regex!16475)

(assert (=> b!6609375 (= e!3998941 (isEmptyLang!1861 lt!2415446))))

(declare-fun b!6609376 () Bool)

(declare-fun e!3998936 () Regex!16475)

(assert (=> b!6609376 (= e!3998936 (Union!16475 (h!72049 (unfocusZipperList!1896 (Cons!65602 lt!2415130 Nil!65602))) (generalisedUnion!2319 (t!379377 (unfocusZipperList!1896 (Cons!65602 lt!2415130 Nil!65602))))))))

(declare-fun b!6609377 () Bool)

(declare-fun e!3998939 () Regex!16475)

(assert (=> b!6609377 (= e!3998939 (h!72049 (unfocusZipperList!1896 (Cons!65602 lt!2415130 Nil!65602))))))

(declare-fun b!6609378 () Bool)

(declare-fun e!3998940 () Bool)

(assert (=> b!6609378 (= e!3998940 (isEmpty!37878 (t!379377 (unfocusZipperList!1896 (Cons!65602 lt!2415130 Nil!65602)))))))

(declare-fun b!6609379 () Bool)

(assert (=> b!6609379 (= e!3998939 e!3998936)))

(declare-fun c!1218201 () Bool)

(assert (=> b!6609379 (= c!1218201 ((_ is Cons!65601) (unfocusZipperList!1896 (Cons!65602 lt!2415130 Nil!65602))))))

(declare-fun b!6609380 () Bool)

(declare-fun e!3998937 () Bool)

(assert (=> b!6609380 (= e!3998941 e!3998937)))

(declare-fun c!1218200 () Bool)

(assert (=> b!6609380 (= c!1218200 (isEmpty!37878 (tail!12486 (unfocusZipperList!1896 (Cons!65602 lt!2415130 Nil!65602)))))))

(declare-fun b!6609381 () Bool)

(assert (=> b!6609381 (= e!3998937 (= lt!2415446 (head!13401 (unfocusZipperList!1896 (Cons!65602 lt!2415130 Nil!65602)))))))

(declare-fun b!6609383 () Bool)

(assert (=> b!6609383 (= e!3998937 (isUnion!1291 lt!2415446))))

(declare-fun b!6609384 () Bool)

(declare-fun e!3998938 () Bool)

(assert (=> b!6609384 (= e!3998938 e!3998941)))

(declare-fun c!1218198 () Bool)

(assert (=> b!6609384 (= c!1218198 (isEmpty!37878 (unfocusZipperList!1896 (Cons!65602 lt!2415130 Nil!65602))))))

(declare-fun b!6609382 () Bool)

(assert (=> b!6609382 (= e!3998936 EmptyLang!16475)))

(assert (=> d!2072711 e!3998938))

(declare-fun res!2710099 () Bool)

(assert (=> d!2072711 (=> (not res!2710099) (not e!3998938))))

(assert (=> d!2072711 (= res!2710099 (validRegex!8211 lt!2415446))))

(assert (=> d!2072711 (= lt!2415446 e!3998939)))

(declare-fun c!1218199 () Bool)

(assert (=> d!2072711 (= c!1218199 e!3998940)))

(declare-fun res!2710100 () Bool)

(assert (=> d!2072711 (=> (not res!2710100) (not e!3998940))))

(assert (=> d!2072711 (= res!2710100 ((_ is Cons!65601) (unfocusZipperList!1896 (Cons!65602 lt!2415130 Nil!65602))))))

(assert (=> d!2072711 (forall!15673 (unfocusZipperList!1896 (Cons!65602 lt!2415130 Nil!65602)) lambda!368829)))

(assert (=> d!2072711 (= (generalisedUnion!2319 (unfocusZipperList!1896 (Cons!65602 lt!2415130 Nil!65602))) lt!2415446)))

(assert (= (and d!2072711 res!2710100) b!6609378))

(assert (= (and d!2072711 c!1218199) b!6609377))

(assert (= (and d!2072711 (not c!1218199)) b!6609379))

(assert (= (and b!6609379 c!1218201) b!6609376))

(assert (= (and b!6609379 (not c!1218201)) b!6609382))

(assert (= (and d!2072711 res!2710099) b!6609384))

(assert (= (and b!6609384 c!1218198) b!6609375))

(assert (= (and b!6609384 (not c!1218198)) b!6609380))

(assert (= (and b!6609380 c!1218200) b!6609381))

(assert (= (and b!6609380 (not c!1218200)) b!6609383))

(assert (=> b!6609381 m!7382552))

(declare-fun m!7384292 () Bool)

(assert (=> b!6609381 m!7384292))

(declare-fun m!7384294 () Bool)

(assert (=> d!2072711 m!7384294))

(assert (=> d!2072711 m!7382552))

(declare-fun m!7384296 () Bool)

(assert (=> d!2072711 m!7384296))

(declare-fun m!7384298 () Bool)

(assert (=> b!6609378 m!7384298))

(declare-fun m!7384300 () Bool)

(assert (=> b!6609376 m!7384300))

(assert (=> b!6609380 m!7382552))

(declare-fun m!7384302 () Bool)

(assert (=> b!6609380 m!7384302))

(assert (=> b!6609380 m!7384302))

(declare-fun m!7384304 () Bool)

(assert (=> b!6609380 m!7384304))

(assert (=> b!6609384 m!7382552))

(declare-fun m!7384306 () Bool)

(assert (=> b!6609384 m!7384306))

(declare-fun m!7384308 () Bool)

(assert (=> b!6609375 m!7384308))

(declare-fun m!7384310 () Bool)

(assert (=> b!6609383 m!7384310))

(assert (=> d!2071891 d!2072711))

(declare-fun bs!1694902 () Bool)

(declare-fun d!2072717 () Bool)

(assert (= bs!1694902 (and d!2072717 d!2072459)))

(declare-fun lambda!368830 () Int)

(assert (=> bs!1694902 (= lambda!368830 lambda!368781)))

(declare-fun bs!1694903 () Bool)

(assert (= bs!1694903 (and d!2072717 d!2071985)))

(assert (=> bs!1694903 (= lambda!368830 lambda!368704)))

(declare-fun bs!1694904 () Bool)

(assert (= bs!1694904 (and d!2072717 d!2072711)))

(assert (=> bs!1694904 (= lambda!368830 lambda!368829)))

(declare-fun bs!1694905 () Bool)

(assert (= bs!1694905 (and d!2072717 d!2071783)))

(assert (=> bs!1694905 (= lambda!368830 lambda!368660)))

(declare-fun bs!1694906 () Bool)

(assert (= bs!1694906 (and d!2072717 d!2071903)))

(assert (=> bs!1694906 (= lambda!368830 lambda!368696)))

(declare-fun bs!1694907 () Bool)

(assert (= bs!1694907 (and d!2072717 d!2071851)))

(assert (=> bs!1694907 (= lambda!368830 lambda!368689)))

(declare-fun bs!1694908 () Bool)

(assert (= bs!1694908 (and d!2072717 d!2072451)))

(assert (=> bs!1694908 (= lambda!368830 lambda!368779)))

(declare-fun bs!1694909 () Bool)

(assert (= bs!1694909 (and d!2072717 b!6608634)))

(assert (=> bs!1694909 (not (= lambda!368830 lambda!368775))))

(declare-fun bs!1694910 () Bool)

(assert (= bs!1694910 (and d!2072717 b!6608632)))

(assert (=> bs!1694910 (not (= lambda!368830 lambda!368773))))

(declare-fun bs!1694911 () Bool)

(assert (= bs!1694911 (and d!2072717 d!2072321)))

(assert (=> bs!1694911 (= lambda!368830 lambda!368752)))

(declare-fun bs!1694912 () Bool)

(assert (= bs!1694912 (and d!2072717 d!2072601)))

(assert (=> bs!1694912 (= lambda!368830 lambda!368801)))

(declare-fun bs!1694913 () Bool)

(assert (= bs!1694913 (and d!2072717 d!2072589)))

(assert (=> bs!1694913 (= lambda!368830 lambda!368798)))

(declare-fun bs!1694914 () Bool)

(assert (= bs!1694914 (and d!2072717 d!2071909)))

(assert (=> bs!1694914 (= lambda!368830 lambda!368697)))

(declare-fun bs!1694915 () Bool)

(assert (= bs!1694915 (and d!2072717 d!2071653)))

(assert (=> bs!1694915 (= lambda!368830 lambda!368603)))

(declare-fun bs!1694916 () Bool)

(assert (= bs!1694916 (and d!2072717 d!2072275)))

(assert (=> bs!1694916 (= lambda!368830 lambda!368745)))

(declare-fun bs!1694917 () Bool)

(assert (= bs!1694917 (and d!2072717 d!2071951)))

(assert (=> bs!1694917 (= lambda!368830 lambda!368700)))

(declare-fun bs!1694918 () Bool)

(assert (= bs!1694918 (and d!2072717 d!2071661)))

(assert (=> bs!1694918 (= lambda!368830 lambda!368608)))

(declare-fun bs!1694919 () Bool)

(assert (= bs!1694919 (and d!2072717 d!2071953)))

(assert (=> bs!1694919 (= lambda!368830 lambda!368701)))

(declare-fun lt!2415447 () List!65725)

(assert (=> d!2072717 (forall!15673 lt!2415447 lambda!368830)))

(declare-fun e!3998942 () List!65725)

(assert (=> d!2072717 (= lt!2415447 e!3998942)))

(declare-fun c!1218202 () Bool)

(assert (=> d!2072717 (= c!1218202 ((_ is Cons!65602) (Cons!65602 lt!2415130 Nil!65602)))))

(assert (=> d!2072717 (= (unfocusZipperList!1896 (Cons!65602 lt!2415130 Nil!65602)) lt!2415447)))

(declare-fun b!6609385 () Bool)

(assert (=> b!6609385 (= e!3998942 (Cons!65601 (generalisedConcat!2072 (exprs!6359 (h!72050 (Cons!65602 lt!2415130 Nil!65602)))) (unfocusZipperList!1896 (t!379378 (Cons!65602 lt!2415130 Nil!65602)))))))

(declare-fun b!6609386 () Bool)

(assert (=> b!6609386 (= e!3998942 Nil!65601)))

(assert (= (and d!2072717 c!1218202) b!6609385))

(assert (= (and d!2072717 (not c!1218202)) b!6609386))

(declare-fun m!7384312 () Bool)

(assert (=> d!2072717 m!7384312))

(declare-fun m!7384314 () Bool)

(assert (=> b!6609385 m!7384314))

(declare-fun m!7384316 () Bool)

(assert (=> b!6609385 m!7384316))

(assert (=> d!2071891 d!2072717))

(declare-fun d!2072721 () Bool)

(assert (=> d!2072721 (= (Exists!3545 lambda!368674) (choose!49347 lambda!368674))))

(declare-fun bs!1694920 () Bool)

(assert (= bs!1694920 d!2072721))

(declare-fun m!7384318 () Bool)

(assert (=> bs!1694920 m!7384318))

(assert (=> d!2071823 d!2072721))

(declare-fun d!2072723 () Bool)

(assert (=> d!2072723 (= (Exists!3545 lambda!368675) (choose!49347 lambda!368675))))

(declare-fun bs!1694921 () Bool)

(assert (= bs!1694921 d!2072723))

(declare-fun m!7384320 () Bool)

(assert (=> bs!1694921 m!7384320))

(assert (=> d!2071823 d!2072723))

(declare-fun bs!1694922 () Bool)

(declare-fun d!2072725 () Bool)

(assert (= bs!1694922 (and d!2072725 b!6608995)))

(declare-fun lambda!368831 () Int)

(assert (=> bs!1694922 (not (= lambda!368831 lambda!368792))))

(declare-fun bs!1694923 () Bool)

(assert (= bs!1694923 (and d!2072725 d!2072109)))

(assert (=> bs!1694923 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368831 lambda!368721))))

(declare-fun bs!1694924 () Bool)

(assert (= bs!1694924 (and d!2072725 d!2071761)))

(assert (=> bs!1694924 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368831 lambda!368653))))

(declare-fun bs!1694925 () Bool)

(assert (= bs!1694925 (and d!2072725 b!6606503)))

(assert (=> bs!1694925 (not (= lambda!368831 lambda!368580))))

(declare-fun bs!1694926 () Bool)

(assert (= bs!1694926 (and d!2072725 b!6608915)))

(assert (=> bs!1694926 (not (= lambda!368831 lambda!368791))))

(declare-fun bs!1694927 () Bool)

(assert (= bs!1694927 (and d!2072725 b!6608987)))

(assert (=> bs!1694927 (not (= lambda!368831 lambda!368795))))

(declare-fun bs!1694928 () Bool)

(assert (= bs!1694928 (and d!2072725 b!6608417)))

(assert (=> bs!1694928 (not (= lambda!368831 lambda!368750))))

(declare-fun bs!1694929 () Bool)

(assert (= bs!1694929 (and d!2072725 d!2071823)))

(assert (=> bs!1694929 (not (= lambda!368831 lambda!368675))))

(declare-fun bs!1694930 () Bool)

(assert (= bs!1694930 (and d!2072725 b!6607454)))

(assert (=> bs!1694930 (not (= lambda!368831 lambda!368690))))

(assert (=> bs!1694924 (not (= lambda!368831 lambda!368654))))

(declare-fun bs!1694931 () Bool)

(assert (= bs!1694931 (and d!2072725 b!6607397)))

(assert (=> bs!1694931 (not (= lambda!368831 lambda!368681))))

(declare-fun bs!1694932 () Bool)

(assert (= bs!1694932 (and d!2072725 b!6606515)))

(assert (=> bs!1694932 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368831 lambda!368576))))

(declare-fun bs!1694933 () Bool)

(assert (= bs!1694933 (and d!2072725 b!6609295)))

(assert (=> bs!1694933 (not (= lambda!368831 lambda!368827))))

(declare-fun bs!1694934 () Bool)

(assert (= bs!1694934 (and d!2072725 b!6608069)))

(assert (=> bs!1694934 (not (= lambda!368831 lambda!368726))))

(assert (=> bs!1694925 (not (= lambda!368831 lambda!368581))))

(declare-fun bs!1694935 () Bool)

(assert (= bs!1694935 (and d!2072725 b!6608409)))

(assert (=> bs!1694935 (not (= lambda!368831 lambda!368751))))

(declare-fun bs!1694937 () Bool)

(assert (= bs!1694937 (and d!2072725 d!2072203)))

(assert (=> bs!1694937 (not (= lambda!368831 lambda!368742))))

(declare-fun bs!1694939 () Bool)

(assert (= bs!1694939 (and d!2072725 b!6609287)))

(assert (=> bs!1694939 (not (= lambda!368831 lambda!368828))))

(assert (=> bs!1694925 (= lambda!368831 lambda!368579)))

(declare-fun bs!1694942 () Bool)

(assert (= bs!1694942 (and d!2072725 b!6609242)))

(assert (=> bs!1694942 (not (= lambda!368831 lambda!368823))))

(declare-fun bs!1694944 () Bool)

(assert (= bs!1694944 (and d!2072725 b!6609234)))

(assert (=> bs!1694944 (not (= lambda!368831 lambda!368825))))

(assert (=> bs!1694932 (not (= lambda!368831 lambda!368577))))

(assert (=> bs!1694929 (= lambda!368831 lambda!368674)))

(declare-fun bs!1694950 () Bool)

(assert (= bs!1694950 (and d!2072725 d!2071755)))

(assert (=> bs!1694950 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368831 lambda!368648))))

(declare-fun bs!1694953 () Bool)

(assert (= bs!1694953 (and d!2072725 d!2071833)))

(assert (=> bs!1694953 (= (= lt!2415134 (Star!16475 (reg!16804 (regOne!33462 r!7292)))) (= lambda!368831 lambda!368686))))

(declare-fun bs!1694956 () Bool)

(assert (= bs!1694956 (and d!2072725 b!6607405)))

(assert (=> bs!1694956 (not (= lambda!368831 lambda!368680))))

(declare-fun bs!1694959 () Bool)

(assert (= bs!1694959 (and d!2072725 b!6607446)))

(assert (=> bs!1694959 (not (= lambda!368831 lambda!368691))))

(declare-fun bs!1694961 () Bool)

(assert (= bs!1694961 (and d!2072725 d!2072643)))

(assert (=> bs!1694961 (not (= lambda!368831 lambda!368821))))

(declare-fun bs!1694963 () Bool)

(assert (= bs!1694963 (and d!2072725 b!6607530)))

(assert (=> bs!1694963 (not (= lambda!368831 lambda!368692))))

(declare-fun bs!1694964 () Bool)

(assert (= bs!1694964 (and d!2072725 d!2072615)))

(assert (=> bs!1694964 (= lambda!368831 lambda!368806)))

(assert (=> bs!1694953 (not (= lambda!368831 lambda!368687))))

(assert (=> bs!1694961 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368831 lambda!368819))))

(declare-fun bs!1694965 () Bool)

(assert (= bs!1694965 (and d!2072725 b!6608923)))

(assert (=> bs!1694965 (not (= lambda!368831 lambda!368790))))

(declare-fun bs!1694966 () Bool)

(assert (= bs!1694966 (and d!2072725 b!6608061)))

(assert (=> bs!1694966 (not (= lambda!368831 lambda!368727))))

(declare-fun bs!1694967 () Bool)

(assert (= bs!1694967 (and d!2072725 b!6607522)))

(assert (=> bs!1694967 (not (= lambda!368831 lambda!368693))))

(declare-fun bs!1694968 () Bool)

(assert (= bs!1694968 (and d!2072725 d!2071841)))

(assert (=> bs!1694968 (= lambda!368831 lambda!368688)))

(assert (=> bs!1694937 (= (= lt!2415134 (Star!16475 (reg!16804 (regOne!33462 r!7292)))) (= lambda!368831 lambda!368741))))

(assert (=> d!2072725 true))

(assert (=> d!2072725 true))

(assert (=> d!2072725 true))

(declare-fun lambda!368833 () Int)

(assert (=> bs!1694922 (not (= lambda!368833 lambda!368792))))

(assert (=> bs!1694923 (not (= lambda!368833 lambda!368721))))

(assert (=> bs!1694924 (not (= lambda!368833 lambda!368653))))

(assert (=> bs!1694925 (= lambda!368833 lambda!368580)))

(assert (=> bs!1694926 (= (and (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 (regTwo!33463 lt!2415134))) (= lt!2415134 (regTwo!33462 (regTwo!33463 lt!2415134)))) (= lambda!368833 lambda!368791))))

(assert (=> bs!1694927 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 (regOne!33463 r!7292))) (= lt!2415134 (regTwo!33462 (regOne!33463 r!7292)))) (= lambda!368833 lambda!368795))))

(assert (=> bs!1694928 (not (= lambda!368833 lambda!368750))))

(assert (=> bs!1694929 (= lambda!368833 lambda!368675)))

(assert (=> bs!1694930 (not (= lambda!368833 lambda!368690))))

(assert (=> bs!1694924 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368833 lambda!368654))))

(assert (=> bs!1694931 (= (and (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 lt!2415134)) (= lt!2415134 (regTwo!33462 lt!2415134))) (= lambda!368833 lambda!368681))))

(assert (=> bs!1694932 (not (= lambda!368833 lambda!368576))))

(assert (=> bs!1694933 (not (= lambda!368833 lambda!368827))))

(assert (=> bs!1694934 (not (= lambda!368833 lambda!368726))))

(assert (=> bs!1694925 (not (= lambda!368833 lambda!368581))))

(assert (=> bs!1694935 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 (regTwo!33463 lt!2415143))) (= lt!2415134 (regTwo!33462 (regTwo!33463 lt!2415143)))) (= lambda!368833 lambda!368751))))

(assert (=> bs!1694937 (not (= lambda!368833 lambda!368742))))

(assert (=> bs!1694939 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 (regOne!33463 lt!2415143))) (= lt!2415134 (regTwo!33462 (regOne!33463 lt!2415143)))) (= lambda!368833 lambda!368828))))

(assert (=> bs!1694925 (not (= lambda!368833 lambda!368579))))

(assert (=> bs!1694942 (not (= lambda!368833 lambda!368823))))

(assert (=> bs!1694944 (= (and (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 (regOne!33463 lt!2415134))) (= lt!2415134 (regTwo!33462 (regOne!33463 lt!2415134)))) (= lambda!368833 lambda!368825))))

(declare-fun bs!1694970 () Bool)

(assert (= bs!1694970 d!2072725))

(assert (=> bs!1694970 (not (= lambda!368833 lambda!368831))))

(assert (=> bs!1694932 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368833 lambda!368577))))

(assert (=> bs!1694929 (not (= lambda!368833 lambda!368674))))

(assert (=> bs!1694950 (not (= lambda!368833 lambda!368648))))

(assert (=> bs!1694953 (not (= lambda!368833 lambda!368686))))

(assert (=> bs!1694956 (not (= lambda!368833 lambda!368680))))

(assert (=> bs!1694959 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 lt!2415143)) (= lt!2415134 (regTwo!33462 lt!2415143))) (= lambda!368833 lambda!368691))))

(assert (=> bs!1694961 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368833 lambda!368821))))

(assert (=> bs!1694963 (not (= lambda!368833 lambda!368692))))

(assert (=> bs!1694964 (not (= lambda!368833 lambda!368806))))

(assert (=> bs!1694953 (not (= lambda!368833 lambda!368687))))

(assert (=> bs!1694961 (not (= lambda!368833 lambda!368819))))

(assert (=> bs!1694965 (not (= lambda!368833 lambda!368790))))

(assert (=> bs!1694966 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 (regTwo!33463 r!7292))) (= lt!2415134 (regTwo!33462 (regTwo!33463 r!7292)))) (= lambda!368833 lambda!368727))))

(assert (=> bs!1694967 (= (and (= Nil!65600 s!2326) (= (reg!16804 (regOne!33462 r!7292)) (regOne!33462 r!7292)) (= lt!2415134 (regTwo!33462 r!7292))) (= lambda!368833 lambda!368693))))

(assert (=> bs!1694968 (not (= lambda!368833 lambda!368688))))

(assert (=> bs!1694937 (not (= lambda!368833 lambda!368741))))

(assert (=> d!2072725 true))

(assert (=> d!2072725 true))

(assert (=> d!2072725 true))

(assert (=> d!2072725 (= (Exists!3545 lambda!368831) (Exists!3545 lambda!368833))))

(assert (=> d!2072725 true))

(declare-fun _$90!2437 () Unit!159235)

(assert (=> d!2072725 (= (choose!49349 (reg!16804 (regOne!33462 r!7292)) lt!2415134 Nil!65600) _$90!2437)))

(declare-fun m!7384374 () Bool)

(assert (=> bs!1694970 m!7384374))

(declare-fun m!7384376 () Bool)

(assert (=> bs!1694970 m!7384376))

(assert (=> d!2071823 d!2072725))

(assert (=> d!2071823 d!2072233))

(assert (=> b!6607335 d!2072027))

(declare-fun b!6609444 () Bool)

(declare-fun e!3998979 () Bool)

(declare-fun call!578542 () Bool)

(assert (=> b!6609444 (= e!3998979 call!578542)))

(declare-fun d!2072743 () Bool)

(declare-fun res!2710124 () Bool)

(declare-fun e!3998981 () Bool)

(assert (=> d!2072743 (=> res!2710124 e!3998981)))

(assert (=> d!2072743 (= res!2710124 ((_ is ElementMatch!16475) (ite c!1217606 (regOne!33463 (regTwo!33462 r!7292)) (regOne!33462 (regTwo!33462 r!7292)))))))

(assert (=> d!2072743 (= (validRegex!8211 (ite c!1217606 (regOne!33463 (regTwo!33462 r!7292)) (regOne!33462 (regTwo!33462 r!7292)))) e!3998981)))

(declare-fun b!6609445 () Bool)

(declare-fun e!3998978 () Bool)

(declare-fun e!3998983 () Bool)

(assert (=> b!6609445 (= e!3998978 e!3998983)))

(declare-fun res!2710123 () Bool)

(assert (=> b!6609445 (=> (not res!2710123) (not e!3998983))))

(declare-fun call!578543 () Bool)

(assert (=> b!6609445 (= res!2710123 call!578543)))

(declare-fun b!6609446 () Bool)

(declare-fun e!3998980 () Bool)

(declare-fun call!578544 () Bool)

(assert (=> b!6609446 (= e!3998980 call!578544)))

(declare-fun b!6609447 () Bool)

(declare-fun e!3998982 () Bool)

(assert (=> b!6609447 (= e!3998982 e!3998979)))

(declare-fun res!2710121 () Bool)

(assert (=> b!6609447 (= res!2710121 (not (nullable!6468 (reg!16804 (ite c!1217606 (regOne!33463 (regTwo!33462 r!7292)) (regOne!33462 (regTwo!33462 r!7292)))))))))

(assert (=> b!6609447 (=> (not res!2710121) (not e!3998979))))

(declare-fun bm!578537 () Bool)

(assert (=> bm!578537 (= call!578544 call!578542)))

(declare-fun b!6609448 () Bool)

(declare-fun e!3998977 () Bool)

(assert (=> b!6609448 (= e!3998982 e!3998977)))

(declare-fun c!1218223 () Bool)

(assert (=> b!6609448 (= c!1218223 ((_ is Union!16475) (ite c!1217606 (regOne!33463 (regTwo!33462 r!7292)) (regOne!33462 (regTwo!33462 r!7292)))))))

(declare-fun bm!578538 () Bool)

(declare-fun c!1218222 () Bool)

(assert (=> bm!578538 (= call!578542 (validRegex!8211 (ite c!1218222 (reg!16804 (ite c!1217606 (regOne!33463 (regTwo!33462 r!7292)) (regOne!33462 (regTwo!33462 r!7292)))) (ite c!1218223 (regTwo!33463 (ite c!1217606 (regOne!33463 (regTwo!33462 r!7292)) (regOne!33462 (regTwo!33462 r!7292)))) (regTwo!33462 (ite c!1217606 (regOne!33463 (regTwo!33462 r!7292)) (regOne!33462 (regTwo!33462 r!7292))))))))))

(declare-fun bm!578539 () Bool)

(assert (=> bm!578539 (= call!578543 (validRegex!8211 (ite c!1218223 (regOne!33463 (ite c!1217606 (regOne!33463 (regTwo!33462 r!7292)) (regOne!33462 (regTwo!33462 r!7292)))) (regOne!33462 (ite c!1217606 (regOne!33463 (regTwo!33462 r!7292)) (regOne!33462 (regTwo!33462 r!7292)))))))))

(declare-fun b!6609449 () Bool)

(declare-fun res!2710125 () Bool)

(assert (=> b!6609449 (=> res!2710125 e!3998978)))

(assert (=> b!6609449 (= res!2710125 (not ((_ is Concat!25320) (ite c!1217606 (regOne!33463 (regTwo!33462 r!7292)) (regOne!33462 (regTwo!33462 r!7292))))))))

(assert (=> b!6609449 (= e!3998977 e!3998978)))

(declare-fun b!6609450 () Bool)

(assert (=> b!6609450 (= e!3998981 e!3998982)))

(assert (=> b!6609450 (= c!1218222 ((_ is Star!16475) (ite c!1217606 (regOne!33463 (regTwo!33462 r!7292)) (regOne!33462 (regTwo!33462 r!7292)))))))

(declare-fun b!6609451 () Bool)

(declare-fun res!2710122 () Bool)

(assert (=> b!6609451 (=> (not res!2710122) (not e!3998980))))

(assert (=> b!6609451 (= res!2710122 call!578543)))

(assert (=> b!6609451 (= e!3998977 e!3998980)))

(declare-fun b!6609452 () Bool)

(assert (=> b!6609452 (= e!3998983 call!578544)))

(assert (= (and d!2072743 (not res!2710124)) b!6609450))

(assert (= (and b!6609450 c!1218222) b!6609447))

(assert (= (and b!6609450 (not c!1218222)) b!6609448))

(assert (= (and b!6609447 res!2710121) b!6609444))

(assert (= (and b!6609448 c!1218223) b!6609451))

(assert (= (and b!6609448 (not c!1218223)) b!6609449))

(assert (= (and b!6609451 res!2710122) b!6609446))

(assert (= (and b!6609449 (not res!2710125)) b!6609445))

(assert (= (and b!6609445 res!2710123) b!6609452))

(assert (= (or b!6609446 b!6609452) bm!578537))

(assert (= (or b!6609451 b!6609445) bm!578539))

(assert (= (or b!6609444 bm!578537) bm!578538))

(declare-fun m!7384378 () Bool)

(assert (=> b!6609447 m!7384378))

(declare-fun m!7384380 () Bool)

(assert (=> bm!578538 m!7384380))

(declare-fun m!7384382 () Bool)

(assert (=> bm!578539 m!7384382))

(assert (=> bm!578075 d!2072743))

(assert (=> bs!1693607 d!2071813))

(declare-fun b!6609453 () Bool)

(declare-fun e!3998986 () Bool)

(declare-fun call!578545 () Bool)

(assert (=> b!6609453 (= e!3998986 call!578545)))

(declare-fun d!2072745 () Bool)

(declare-fun res!2710129 () Bool)

(declare-fun e!3998988 () Bool)

(assert (=> d!2072745 (=> res!2710129 e!3998988)))

(assert (=> d!2072745 (= res!2710129 ((_ is ElementMatch!16475) (ite c!1217595 (reg!16804 r!7292) (ite c!1217596 (regTwo!33463 r!7292) (regTwo!33462 r!7292)))))))

(assert (=> d!2072745 (= (validRegex!8211 (ite c!1217595 (reg!16804 r!7292) (ite c!1217596 (regTwo!33463 r!7292) (regTwo!33462 r!7292)))) e!3998988)))

(declare-fun b!6609454 () Bool)

(declare-fun e!3998985 () Bool)

(declare-fun e!3998990 () Bool)

(assert (=> b!6609454 (= e!3998985 e!3998990)))

(declare-fun res!2710128 () Bool)

(assert (=> b!6609454 (=> (not res!2710128) (not e!3998990))))

(declare-fun call!578546 () Bool)

(assert (=> b!6609454 (= res!2710128 call!578546)))

(declare-fun b!6609455 () Bool)

(declare-fun e!3998987 () Bool)

(declare-fun call!578547 () Bool)

(assert (=> b!6609455 (= e!3998987 call!578547)))

(declare-fun b!6609456 () Bool)

(declare-fun e!3998989 () Bool)

(assert (=> b!6609456 (= e!3998989 e!3998986)))

(declare-fun res!2710126 () Bool)

(assert (=> b!6609456 (= res!2710126 (not (nullable!6468 (reg!16804 (ite c!1217595 (reg!16804 r!7292) (ite c!1217596 (regTwo!33463 r!7292) (regTwo!33462 r!7292)))))))))

(assert (=> b!6609456 (=> (not res!2710126) (not e!3998986))))

(declare-fun bm!578540 () Bool)

(assert (=> bm!578540 (= call!578547 call!578545)))

(declare-fun b!6609457 () Bool)

(declare-fun e!3998984 () Bool)

(assert (=> b!6609457 (= e!3998989 e!3998984)))

(declare-fun c!1218225 () Bool)

(assert (=> b!6609457 (= c!1218225 ((_ is Union!16475) (ite c!1217595 (reg!16804 r!7292) (ite c!1217596 (regTwo!33463 r!7292) (regTwo!33462 r!7292)))))))

(declare-fun c!1218224 () Bool)

(declare-fun bm!578541 () Bool)

(assert (=> bm!578541 (= call!578545 (validRegex!8211 (ite c!1218224 (reg!16804 (ite c!1217595 (reg!16804 r!7292) (ite c!1217596 (regTwo!33463 r!7292) (regTwo!33462 r!7292)))) (ite c!1218225 (regTwo!33463 (ite c!1217595 (reg!16804 r!7292) (ite c!1217596 (regTwo!33463 r!7292) (regTwo!33462 r!7292)))) (regTwo!33462 (ite c!1217595 (reg!16804 r!7292) (ite c!1217596 (regTwo!33463 r!7292) (regTwo!33462 r!7292))))))))))

(declare-fun bm!578542 () Bool)

(assert (=> bm!578542 (= call!578546 (validRegex!8211 (ite c!1218225 (regOne!33463 (ite c!1217595 (reg!16804 r!7292) (ite c!1217596 (regTwo!33463 r!7292) (regTwo!33462 r!7292)))) (regOne!33462 (ite c!1217595 (reg!16804 r!7292) (ite c!1217596 (regTwo!33463 r!7292) (regTwo!33462 r!7292)))))))))

(declare-fun b!6609458 () Bool)

(declare-fun res!2710130 () Bool)

(assert (=> b!6609458 (=> res!2710130 e!3998985)))

(assert (=> b!6609458 (= res!2710130 (not ((_ is Concat!25320) (ite c!1217595 (reg!16804 r!7292) (ite c!1217596 (regTwo!33463 r!7292) (regTwo!33462 r!7292))))))))

(assert (=> b!6609458 (= e!3998984 e!3998985)))

(declare-fun b!6609459 () Bool)

(assert (=> b!6609459 (= e!3998988 e!3998989)))

(assert (=> b!6609459 (= c!1218224 ((_ is Star!16475) (ite c!1217595 (reg!16804 r!7292) (ite c!1217596 (regTwo!33463 r!7292) (regTwo!33462 r!7292)))))))

(declare-fun b!6609460 () Bool)

(declare-fun res!2710127 () Bool)

(assert (=> b!6609460 (=> (not res!2710127) (not e!3998987))))

(assert (=> b!6609460 (= res!2710127 call!578546)))

(assert (=> b!6609460 (= e!3998984 e!3998987)))

(declare-fun b!6609461 () Bool)

(assert (=> b!6609461 (= e!3998990 call!578547)))

(assert (= (and d!2072745 (not res!2710129)) b!6609459))

(assert (= (and b!6609459 c!1218224) b!6609456))

(assert (= (and b!6609459 (not c!1218224)) b!6609457))

(assert (= (and b!6609456 res!2710126) b!6609453))

(assert (= (and b!6609457 c!1218225) b!6609460))

(assert (= (and b!6609457 (not c!1218225)) b!6609458))

(assert (= (and b!6609460 res!2710127) b!6609455))

(assert (= (and b!6609458 (not res!2710130)) b!6609454))

(assert (= (and b!6609454 res!2710128) b!6609461))

(assert (= (or b!6609455 b!6609461) bm!578540))

(assert (= (or b!6609460 b!6609454) bm!578542))

(assert (= (or b!6609453 bm!578540) bm!578541))

(declare-fun m!7384384 () Bool)

(assert (=> b!6609456 m!7384384))

(declare-fun m!7384386 () Bool)

(assert (=> bm!578541 m!7384386))

(declare-fun m!7384388 () Bool)

(assert (=> bm!578542 m!7384388))

(assert (=> bm!578068 d!2072745))

(declare-fun bs!1694999 () Bool)

(declare-fun b!6609462 () Bool)

(assert (= bs!1694999 (and b!6609462 d!2072459)))

(declare-fun lambda!368835 () Int)

(assert (=> bs!1694999 (not (= lambda!368835 lambda!368781))))

(declare-fun bs!1695001 () Bool)

(assert (= bs!1695001 (and b!6609462 d!2071985)))

(assert (=> bs!1695001 (not (= lambda!368835 lambda!368704))))

(declare-fun bs!1695002 () Bool)

(assert (= bs!1695002 (and b!6609462 d!2072711)))

(assert (=> bs!1695002 (not (= lambda!368835 lambda!368829))))

(declare-fun bs!1695003 () Bool)

(assert (= bs!1695003 (and b!6609462 d!2071783)))

(assert (=> bs!1695003 (not (= lambda!368835 lambda!368660))))

(declare-fun bs!1695004 () Bool)

(assert (= bs!1695004 (and b!6609462 d!2071903)))

(assert (=> bs!1695004 (not (= lambda!368835 lambda!368696))))

(declare-fun bs!1695005 () Bool)

(assert (= bs!1695005 (and b!6609462 d!2071851)))

(assert (=> bs!1695005 (not (= lambda!368835 lambda!368689))))

(declare-fun bs!1695007 () Bool)

(assert (= bs!1695007 (and b!6609462 d!2072451)))

(assert (=> bs!1695007 (not (= lambda!368835 lambda!368779))))

(declare-fun bs!1695008 () Bool)

(assert (= bs!1695008 (and b!6609462 b!6608634)))

(declare-fun lt!2415454 () Int)

(assert (=> bs!1695008 (= (= lt!2415454 lt!2415378) (= lambda!368835 lambda!368775))))

(declare-fun bs!1695009 () Bool)

(assert (= bs!1695009 (and b!6609462 b!6608632)))

(assert (=> bs!1695009 (= (= lt!2415454 lt!2415381) (= lambda!368835 lambda!368773))))

(declare-fun bs!1695010 () Bool)

(assert (= bs!1695010 (and b!6609462 d!2072321)))

(assert (=> bs!1695010 (not (= lambda!368835 lambda!368752))))

(declare-fun bs!1695011 () Bool)

(assert (= bs!1695011 (and b!6609462 d!2072601)))

(assert (=> bs!1695011 (not (= lambda!368835 lambda!368801))))

(declare-fun bs!1695012 () Bool)

(assert (= bs!1695012 (and b!6609462 d!2072589)))

(assert (=> bs!1695012 (not (= lambda!368835 lambda!368798))))

(declare-fun bs!1695013 () Bool)

(assert (= bs!1695013 (and b!6609462 d!2071909)))

(assert (=> bs!1695013 (not (= lambda!368835 lambda!368697))))

(declare-fun bs!1695014 () Bool)

(assert (= bs!1695014 (and b!6609462 d!2071653)))

(assert (=> bs!1695014 (not (= lambda!368835 lambda!368603))))

(declare-fun bs!1695015 () Bool)

(assert (= bs!1695015 (and b!6609462 d!2072275)))

(assert (=> bs!1695015 (not (= lambda!368835 lambda!368745))))

(declare-fun bs!1695016 () Bool)

(assert (= bs!1695016 (and b!6609462 d!2071951)))

(assert (=> bs!1695016 (not (= lambda!368835 lambda!368700))))

(declare-fun bs!1695017 () Bool)

(assert (= bs!1695017 (and b!6609462 d!2071661)))

(assert (=> bs!1695017 (not (= lambda!368835 lambda!368608))))

(declare-fun bs!1695018 () Bool)

(assert (= bs!1695018 (and b!6609462 d!2072717)))

(assert (=> bs!1695018 (not (= lambda!368835 lambda!368830))))

(declare-fun bs!1695019 () Bool)

(assert (= bs!1695019 (and b!6609462 d!2071953)))

(assert (=> bs!1695019 (not (= lambda!368835 lambda!368701))))

(assert (=> b!6609462 true))

(declare-fun bs!1695020 () Bool)

(declare-fun b!6609464 () Bool)

(assert (= bs!1695020 (and b!6609464 d!2072459)))

(declare-fun lambda!368836 () Int)

(assert (=> bs!1695020 (not (= lambda!368836 lambda!368781))))

(declare-fun bs!1695021 () Bool)

(assert (= bs!1695021 (and b!6609464 d!2071985)))

(assert (=> bs!1695021 (not (= lambda!368836 lambda!368704))))

(declare-fun bs!1695022 () Bool)

(assert (= bs!1695022 (and b!6609464 d!2072711)))

(assert (=> bs!1695022 (not (= lambda!368836 lambda!368829))))

(declare-fun bs!1695023 () Bool)

(assert (= bs!1695023 (and b!6609464 b!6609462)))

(declare-fun lt!2415451 () Int)

(assert (=> bs!1695023 (= (= lt!2415451 lt!2415454) (= lambda!368836 lambda!368835))))

(declare-fun bs!1695024 () Bool)

(assert (= bs!1695024 (and b!6609464 d!2071783)))

(assert (=> bs!1695024 (not (= lambda!368836 lambda!368660))))

(declare-fun bs!1695025 () Bool)

(assert (= bs!1695025 (and b!6609464 d!2071903)))

(assert (=> bs!1695025 (not (= lambda!368836 lambda!368696))))

(declare-fun bs!1695026 () Bool)

(assert (= bs!1695026 (and b!6609464 d!2071851)))

(assert (=> bs!1695026 (not (= lambda!368836 lambda!368689))))

(declare-fun bs!1695027 () Bool)

(assert (= bs!1695027 (and b!6609464 d!2072451)))

(assert (=> bs!1695027 (not (= lambda!368836 lambda!368779))))

(declare-fun bs!1695028 () Bool)

(assert (= bs!1695028 (and b!6609464 b!6608634)))

(assert (=> bs!1695028 (= (= lt!2415451 lt!2415378) (= lambda!368836 lambda!368775))))

(declare-fun bs!1695029 () Bool)

(assert (= bs!1695029 (and b!6609464 b!6608632)))

(assert (=> bs!1695029 (= (= lt!2415451 lt!2415381) (= lambda!368836 lambda!368773))))

(declare-fun bs!1695030 () Bool)

(assert (= bs!1695030 (and b!6609464 d!2072321)))

(assert (=> bs!1695030 (not (= lambda!368836 lambda!368752))))

(declare-fun bs!1695031 () Bool)

(assert (= bs!1695031 (and b!6609464 d!2072601)))

(assert (=> bs!1695031 (not (= lambda!368836 lambda!368801))))

(declare-fun bs!1695032 () Bool)

(assert (= bs!1695032 (and b!6609464 d!2072589)))

(assert (=> bs!1695032 (not (= lambda!368836 lambda!368798))))

(declare-fun bs!1695033 () Bool)

(assert (= bs!1695033 (and b!6609464 d!2071909)))

(assert (=> bs!1695033 (not (= lambda!368836 lambda!368697))))

(declare-fun bs!1695034 () Bool)

(assert (= bs!1695034 (and b!6609464 d!2071653)))

(assert (=> bs!1695034 (not (= lambda!368836 lambda!368603))))

(declare-fun bs!1695035 () Bool)

(assert (= bs!1695035 (and b!6609464 d!2072275)))

(assert (=> bs!1695035 (not (= lambda!368836 lambda!368745))))

(declare-fun bs!1695036 () Bool)

(assert (= bs!1695036 (and b!6609464 d!2071951)))

(assert (=> bs!1695036 (not (= lambda!368836 lambda!368700))))

(declare-fun bs!1695037 () Bool)

(assert (= bs!1695037 (and b!6609464 d!2071661)))

(assert (=> bs!1695037 (not (= lambda!368836 lambda!368608))))

(declare-fun bs!1695038 () Bool)

(assert (= bs!1695038 (and b!6609464 d!2072717)))

(assert (=> bs!1695038 (not (= lambda!368836 lambda!368830))))

(declare-fun bs!1695039 () Bool)

(assert (= bs!1695039 (and b!6609464 d!2071953)))

(assert (=> bs!1695039 (not (= lambda!368836 lambda!368701))))

(assert (=> b!6609464 true))

(declare-fun d!2072747 () Bool)

(declare-fun e!3998991 () Bool)

(assert (=> d!2072747 e!3998991))

(declare-fun res!2710131 () Bool)

(assert (=> d!2072747 (=> (not res!2710131) (not e!3998991))))

(assert (=> d!2072747 (= res!2710131 (>= lt!2415451 0))))

(declare-fun e!3998992 () Int)

(assert (=> d!2072747 (= lt!2415451 e!3998992)))

(declare-fun c!1218226 () Bool)

(assert (=> d!2072747 (= c!1218226 ((_ is Cons!65601) (exprs!6359 (h!72050 lt!2415114))))))

(assert (=> d!2072747 (= (contextDepth!300 (h!72050 lt!2415114)) lt!2415451)))

(assert (=> b!6609462 (= e!3998992 lt!2415454)))

(assert (=> b!6609462 (= lt!2415454 (maxBigInt!0 (regexDepth!372 (h!72049 (exprs!6359 (h!72050 lt!2415114)))) (contextDepth!300 (Context!11719 (t!379377 (exprs!6359 (h!72050 lt!2415114)))))))))

(declare-fun lt!2415452 () Unit!159235)

(assert (=> b!6609462 (= lt!2415452 (lemmaForallRegexDepthBiggerThanTransitive!133 (t!379377 (exprs!6359 (h!72050 lt!2415114))) lt!2415454 (contextDepth!300 (Context!11719 (t!379377 (exprs!6359 (h!72050 lt!2415114)))))))))

(assert (=> b!6609462 (forall!15673 (t!379377 (exprs!6359 (h!72050 lt!2415114))) lambda!368835)))

(declare-fun lt!2415453 () Unit!159235)

(assert (=> b!6609462 (= lt!2415453 lt!2415452)))

(declare-fun b!6609463 () Bool)

(assert (=> b!6609463 (= e!3998992 0)))

(assert (=> b!6609464 (= e!3998991 (forall!15673 (exprs!6359 (h!72050 lt!2415114)) lambda!368836))))

(assert (= (and d!2072747 c!1218226) b!6609462))

(assert (= (and d!2072747 (not c!1218226)) b!6609463))

(assert (= (and d!2072747 res!2710131) b!6609464))

(declare-fun m!7384414 () Bool)

(assert (=> b!6609462 m!7384414))

(declare-fun m!7384416 () Bool)

(assert (=> b!6609462 m!7384416))

(declare-fun m!7384418 () Bool)

(assert (=> b!6609462 m!7384418))

(declare-fun m!7384420 () Bool)

(assert (=> b!6609462 m!7384420))

(assert (=> b!6609462 m!7384416))

(declare-fun m!7384422 () Bool)

(assert (=> b!6609462 m!7384422))

(assert (=> b!6609462 m!7384420))

(assert (=> b!6609462 m!7384416))

(declare-fun m!7384424 () Bool)

(assert (=> b!6609464 m!7384424))

(assert (=> b!6607270 d!2072747))

(declare-fun bs!1695040 () Bool)

(declare-fun d!2072755 () Bool)

(assert (= bs!1695040 (and d!2072755 b!6608584)))

(declare-fun lambda!368837 () Int)

(assert (=> bs!1695040 (not (= lambda!368837 lambda!368765))))

(declare-fun bs!1695041 () Bool)

(assert (= bs!1695041 (and d!2072755 d!2072511)))

(assert (=> bs!1695041 (not (= lambda!368837 lambda!368789))))

(declare-fun bs!1695042 () Bool)

(assert (= bs!1695042 (and d!2072755 d!2072053)))

(assert (=> bs!1695042 (not (= lambda!368837 lambda!368714))))

(declare-fun bs!1695043 () Bool)

(assert (= bs!1695043 (and d!2072755 b!6608582)))

(assert (=> bs!1695043 (not (= lambda!368837 lambda!368764))))

(declare-fun bs!1695044 () Bool)

(assert (= bs!1695044 (and d!2072755 d!2072175)))

(assert (=> bs!1695044 (not (= lambda!368837 lambda!368730))))

(declare-fun bs!1695045 () Bool)

(assert (= bs!1695045 (and d!2072755 b!6607272)))

(assert (=> bs!1695045 (not (= lambda!368837 lambda!368673))))

(declare-fun bs!1695046 () Bool)

(assert (= bs!1695046 (and d!2072755 d!2072393)))

(assert (=> bs!1695046 (= (and (= lt!2415280 lt!2415276) (= lambda!368671 lambda!368668)) (= lambda!368837 lambda!368762))))

(declare-fun bs!1695047 () Bool)

(assert (= bs!1695047 (and d!2072755 b!6607267)))

(assert (=> bs!1695047 (not (= lambda!368837 lambda!368670))))

(declare-fun bs!1695048 () Bool)

(assert (= bs!1695048 (and d!2072755 b!6607265)))

(assert (=> bs!1695048 (not (= lambda!368837 lambda!368669))))

(declare-fun bs!1695049 () Bool)

(assert (= bs!1695049 (and d!2072755 d!2072127)))

(assert (=> bs!1695049 (not (= lambda!368837 lambda!368724))))

(declare-fun bs!1695050 () Bool)

(assert (= bs!1695050 (and d!2072755 d!2072065)))

(assert (=> bs!1695050 (not (= lambda!368837 lambda!368716))))

(declare-fun bs!1695051 () Bool)

(assert (= bs!1695051 (and d!2072755 d!2072373)))

(assert (=> bs!1695051 (not (= lambda!368837 lambda!368755))))

(declare-fun bs!1695052 () Bool)

(assert (= bs!1695052 (and d!2072755 d!2072145)))

(assert (=> bs!1695052 (not (= lambda!368837 lambda!368728))))

(declare-fun bs!1695054 () Bool)

(assert (= bs!1695054 (and d!2072755 b!6607270)))

(assert (=> bs!1695054 (not (= lambda!368837 lambda!368672))))

(assert (=> d!2072755 true))

(assert (=> d!2072755 true))

(assert (=> d!2072755 (< (dynLambda!26127 order!27593 lambda!368671) (dynLambda!26128 order!27595 lambda!368837))))

(assert (=> d!2072755 (forall!15674 (t!379378 lt!2415114) lambda!368837)))

(declare-fun lt!2415456 () Unit!159235)

(assert (=> d!2072755 (= lt!2415456 (choose!49360 (t!379378 lt!2415114) lt!2415280 (zipperDepth!412 (t!379378 lt!2415114)) lambda!368671))))

(assert (=> d!2072755 (>= lt!2415280 (zipperDepth!412 (t!379378 lt!2415114)))))

(assert (=> d!2072755 (= (lemmaForallContextDepthBiggerThanTransitive!284 (t!379378 lt!2415114) lt!2415280 (zipperDepth!412 (t!379378 lt!2415114)) lambda!368671) lt!2415456)))

(declare-fun bs!1695058 () Bool)

(assert (= bs!1695058 d!2072755))

(declare-fun m!7384442 () Bool)

(assert (=> bs!1695058 m!7384442))

(assert (=> bs!1695058 m!7382312))

(declare-fun m!7384444 () Bool)

(assert (=> bs!1695058 m!7384444))

(assert (=> b!6607270 d!2072755))

(declare-fun d!2072763 () Bool)

(assert (=> d!2072763 (= (maxBigInt!0 (contextDepth!300 (h!72050 lt!2415114)) (zipperDepth!412 (t!379378 lt!2415114))) (ite (>= (contextDepth!300 (h!72050 lt!2415114)) (zipperDepth!412 (t!379378 lt!2415114))) (contextDepth!300 (h!72050 lt!2415114)) (zipperDepth!412 (t!379378 lt!2415114))))))

(assert (=> b!6607270 d!2072763))

(declare-fun d!2072765 () Bool)

(declare-fun res!2710148 () Bool)

(declare-fun e!3999016 () Bool)

(assert (=> d!2072765 (=> res!2710148 e!3999016)))

(assert (=> d!2072765 (= res!2710148 ((_ is Nil!65602) (t!379378 lt!2415114)))))

(assert (=> d!2072765 (= (forall!15674 (t!379378 lt!2415114) lambda!368672) e!3999016)))

(declare-fun b!6609503 () Bool)

(declare-fun e!3999017 () Bool)

(assert (=> b!6609503 (= e!3999016 e!3999017)))

(declare-fun res!2710149 () Bool)

(assert (=> b!6609503 (=> (not res!2710149) (not e!3999017))))

(assert (=> b!6609503 (= res!2710149 (dynLambda!26125 lambda!368672 (h!72050 (t!379378 lt!2415114))))))

(declare-fun b!6609504 () Bool)

(assert (=> b!6609504 (= e!3999017 (forall!15674 (t!379378 (t!379378 lt!2415114)) lambda!368672))))

(assert (= (and d!2072765 (not res!2710148)) b!6609503))

(assert (= (and b!6609503 res!2710149) b!6609504))

(declare-fun b_lambda!250073 () Bool)

(assert (=> (not b_lambda!250073) (not b!6609503)))

(declare-fun m!7384450 () Bool)

(assert (=> b!6609503 m!7384450))

(declare-fun m!7384452 () Bool)

(assert (=> b!6609504 m!7384452))

(assert (=> b!6607270 d!2072765))

(declare-fun bs!1695067 () Bool)

(declare-fun b!6609505 () Bool)

(assert (= bs!1695067 (and b!6609505 b!6607265)))

(declare-fun lambda!368839 () Int)

(assert (=> bs!1695067 (= lambda!368839 lambda!368668)))

(declare-fun bs!1695068 () Bool)

(assert (= bs!1695068 (and b!6609505 b!6607270)))

(assert (=> bs!1695068 (= lambda!368839 lambda!368671)))

(declare-fun bs!1695069 () Bool)

(assert (= bs!1695069 (and b!6609505 b!6608582)))

(assert (=> bs!1695069 (= lambda!368839 lambda!368763)))

(declare-fun bs!1695070 () Bool)

(assert (= bs!1695070 (and b!6609505 b!6608584)))

(declare-fun lambda!368840 () Int)

(declare-fun lt!2415458 () Int)

(assert (=> bs!1695070 (= (= lt!2415458 lt!2415368) (= lambda!368840 lambda!368765))))

(declare-fun bs!1695071 () Bool)

(assert (= bs!1695071 (and b!6609505 d!2072511)))

(assert (=> bs!1695071 (not (= lambda!368840 lambda!368789))))

(declare-fun bs!1695072 () Bool)

(assert (= bs!1695072 (and b!6609505 d!2072053)))

(assert (=> bs!1695072 (not (= lambda!368840 lambda!368714))))

(assert (=> bs!1695069 (= (= lt!2415458 lt!2415366) (= lambda!368840 lambda!368764))))

(declare-fun bs!1695074 () Bool)

(assert (= bs!1695074 (and b!6609505 d!2072175)))

(assert (=> bs!1695074 (not (= lambda!368840 lambda!368730))))

(declare-fun bs!1695075 () Bool)

(assert (= bs!1695075 (and b!6609505 b!6607272)))

(assert (=> bs!1695075 (= (= lt!2415458 lt!2415282) (= lambda!368840 lambda!368673))))

(declare-fun bs!1695076 () Bool)

(assert (= bs!1695076 (and b!6609505 d!2072393)))

(assert (=> bs!1695076 (not (= lambda!368840 lambda!368762))))

(declare-fun bs!1695077 () Bool)

(assert (= bs!1695077 (and b!6609505 b!6607267)))

(assert (=> bs!1695077 (= (= lt!2415458 lt!2415278) (= lambda!368840 lambda!368670))))

(assert (=> bs!1695067 (= (= lt!2415458 lt!2415276) (= lambda!368840 lambda!368669))))

(declare-fun bs!1695078 () Bool)

(assert (= bs!1695078 (and b!6609505 d!2072127)))

(assert (=> bs!1695078 (not (= lambda!368840 lambda!368724))))

(declare-fun bs!1695079 () Bool)

(assert (= bs!1695079 (and b!6609505 d!2072755)))

(assert (=> bs!1695079 (not (= lambda!368840 lambda!368837))))

(declare-fun bs!1695080 () Bool)

(assert (= bs!1695080 (and b!6609505 d!2072065)))

(assert (=> bs!1695080 (not (= lambda!368840 lambda!368716))))

(declare-fun bs!1695081 () Bool)

(assert (= bs!1695081 (and b!6609505 d!2072373)))

(assert (=> bs!1695081 (not (= lambda!368840 lambda!368755))))

(declare-fun bs!1695082 () Bool)

(assert (= bs!1695082 (and b!6609505 d!2072145)))

(assert (=> bs!1695082 (not (= lambda!368840 lambda!368728))))

(assert (=> bs!1695068 (= (= lt!2415458 lt!2415280) (= lambda!368840 lambda!368672))))

(assert (=> b!6609505 true))

(declare-fun bs!1695083 () Bool)

(declare-fun b!6609507 () Bool)

(assert (= bs!1695083 (and b!6609507 b!6608584)))

(declare-fun lt!2415460 () Int)

(declare-fun lambda!368841 () Int)

(assert (=> bs!1695083 (= (= lt!2415460 lt!2415368) (= lambda!368841 lambda!368765))))

(declare-fun bs!1695084 () Bool)

(assert (= bs!1695084 (and b!6609507 d!2072511)))

(assert (=> bs!1695084 (not (= lambda!368841 lambda!368789))))

(declare-fun bs!1695085 () Bool)

(assert (= bs!1695085 (and b!6609507 b!6608582)))

(assert (=> bs!1695085 (= (= lt!2415460 lt!2415366) (= lambda!368841 lambda!368764))))

(declare-fun bs!1695086 () Bool)

(assert (= bs!1695086 (and b!6609507 d!2072175)))

(assert (=> bs!1695086 (not (= lambda!368841 lambda!368730))))

(declare-fun bs!1695087 () Bool)

(assert (= bs!1695087 (and b!6609507 b!6607272)))

(assert (=> bs!1695087 (= (= lt!2415460 lt!2415282) (= lambda!368841 lambda!368673))))

(declare-fun bs!1695088 () Bool)

(assert (= bs!1695088 (and b!6609507 d!2072393)))

(assert (=> bs!1695088 (not (= lambda!368841 lambda!368762))))

(declare-fun bs!1695089 () Bool)

(assert (= bs!1695089 (and b!6609507 b!6607267)))

(assert (=> bs!1695089 (= (= lt!2415460 lt!2415278) (= lambda!368841 lambda!368670))))

(declare-fun bs!1695090 () Bool)

(assert (= bs!1695090 (and b!6609507 b!6607265)))

(assert (=> bs!1695090 (= (= lt!2415460 lt!2415276) (= lambda!368841 lambda!368669))))

(declare-fun bs!1695091 () Bool)

(assert (= bs!1695091 (and b!6609507 d!2072127)))

(assert (=> bs!1695091 (not (= lambda!368841 lambda!368724))))

(declare-fun bs!1695092 () Bool)

(assert (= bs!1695092 (and b!6609507 d!2072755)))

(assert (=> bs!1695092 (not (= lambda!368841 lambda!368837))))

(declare-fun bs!1695093 () Bool)

(assert (= bs!1695093 (and b!6609507 d!2072065)))

(assert (=> bs!1695093 (not (= lambda!368841 lambda!368716))))

(declare-fun bs!1695094 () Bool)

(assert (= bs!1695094 (and b!6609507 d!2072373)))

(assert (=> bs!1695094 (not (= lambda!368841 lambda!368755))))

(declare-fun bs!1695095 () Bool)

(assert (= bs!1695095 (and b!6609507 b!6609505)))

(assert (=> bs!1695095 (= (= lt!2415460 lt!2415458) (= lambda!368841 lambda!368840))))

(declare-fun bs!1695096 () Bool)

(assert (= bs!1695096 (and b!6609507 d!2072053)))

(assert (=> bs!1695096 (not (= lambda!368841 lambda!368714))))

(declare-fun bs!1695097 () Bool)

(assert (= bs!1695097 (and b!6609507 d!2072145)))

(assert (=> bs!1695097 (not (= lambda!368841 lambda!368728))))

(declare-fun bs!1695098 () Bool)

(assert (= bs!1695098 (and b!6609507 b!6607270)))

(assert (=> bs!1695098 (= (= lt!2415460 lt!2415280) (= lambda!368841 lambda!368672))))

(assert (=> b!6609507 true))

(declare-fun d!2072771 () Bool)

(declare-fun e!3999018 () Bool)

(assert (=> d!2072771 e!3999018))

(declare-fun res!2710150 () Bool)

(assert (=> d!2072771 (=> (not res!2710150) (not e!3999018))))

(assert (=> d!2072771 (= res!2710150 (>= lt!2415460 0))))

(declare-fun e!3999019 () Int)

(assert (=> d!2072771 (= lt!2415460 e!3999019)))

(declare-fun c!1218238 () Bool)

(assert (=> d!2072771 (= c!1218238 ((_ is Cons!65602) (t!379378 lt!2415114)))))

(assert (=> d!2072771 (= (zipperDepth!412 (t!379378 lt!2415114)) lt!2415460)))

(assert (=> b!6609505 (= e!3999019 lt!2415458)))

(assert (=> b!6609505 (= lt!2415458 (maxBigInt!0 (contextDepth!300 (h!72050 (t!379378 lt!2415114))) (zipperDepth!412 (t!379378 (t!379378 lt!2415114)))))))

(declare-fun lt!2415457 () Unit!159235)

(assert (=> b!6609505 (= lt!2415457 (lemmaForallContextDepthBiggerThanTransitive!284 (t!379378 (t!379378 lt!2415114)) lt!2415458 (zipperDepth!412 (t!379378 (t!379378 lt!2415114))) lambda!368839))))

(assert (=> b!6609505 (forall!15674 (t!379378 (t!379378 lt!2415114)) lambda!368840)))

(declare-fun lt!2415459 () Unit!159235)

(assert (=> b!6609505 (= lt!2415459 lt!2415457)))

(declare-fun b!6609506 () Bool)

(assert (=> b!6609506 (= e!3999019 0)))

(assert (=> b!6609507 (= e!3999018 (forall!15674 (t!379378 lt!2415114) lambda!368841))))

(assert (= (and d!2072771 c!1218238) b!6609505))

(assert (= (and d!2072771 (not c!1218238)) b!6609506))

(assert (= (and d!2072771 res!2710150) b!6609507))

(declare-fun m!7384482 () Bool)

(assert (=> b!6609505 m!7384482))

(declare-fun m!7384484 () Bool)

(assert (=> b!6609505 m!7384484))

(assert (=> b!6609505 m!7384482))

(declare-fun m!7384486 () Bool)

(assert (=> b!6609505 m!7384486))

(declare-fun m!7384488 () Bool)

(assert (=> b!6609505 m!7384488))

(assert (=> b!6609505 m!7384482))

(declare-fun m!7384490 () Bool)

(assert (=> b!6609505 m!7384490))

(assert (=> b!6609505 m!7384488))

(declare-fun m!7384492 () Bool)

(assert (=> b!6609507 m!7384492))

(assert (=> b!6607270 d!2072771))

(assert (=> bm!578070 d!2072017))

(declare-fun d!2072783 () Bool)

(assert (=> d!2072783 true))

(assert (=> d!2072783 true))

(declare-fun res!2710155 () Bool)

(assert (=> d!2072783 (= (choose!49347 lambda!368580) res!2710155)))

(assert (=> d!2071827 d!2072783))

(assert (=> b!6607504 d!2071965))

(declare-fun b!6609528 () Bool)

(declare-fun res!2710156 () Bool)

(declare-fun e!3999030 () Bool)

(assert (=> b!6609528 (=> (not res!2710156) (not e!3999030))))

(declare-fun lt!2415466 () List!65724)

(assert (=> b!6609528 (= res!2710156 (= (size!40545 lt!2415466) (+ (size!40545 (_1!36757 (get!22794 lt!2415288))) (size!40545 (_2!36757 (get!22794 lt!2415288))))))))

(declare-fun b!6609529 () Bool)

(assert (=> b!6609529 (= e!3999030 (or (not (= (_2!36757 (get!22794 lt!2415288)) Nil!65600)) (= lt!2415466 (_1!36757 (get!22794 lt!2415288)))))))

(declare-fun b!6609527 () Bool)

(declare-fun e!3999031 () List!65724)

(assert (=> b!6609527 (= e!3999031 (Cons!65600 (h!72048 (_1!36757 (get!22794 lt!2415288))) (++!14621 (t!379376 (_1!36757 (get!22794 lt!2415288))) (_2!36757 (get!22794 lt!2415288)))))))

(declare-fun d!2072785 () Bool)

(assert (=> d!2072785 e!3999030))

(declare-fun res!2710157 () Bool)

(assert (=> d!2072785 (=> (not res!2710157) (not e!3999030))))

(assert (=> d!2072785 (= res!2710157 (= (content!12653 lt!2415466) ((_ map or) (content!12653 (_1!36757 (get!22794 lt!2415288))) (content!12653 (_2!36757 (get!22794 lt!2415288))))))))

(assert (=> d!2072785 (= lt!2415466 e!3999031)))

(declare-fun c!1218246 () Bool)

(assert (=> d!2072785 (= c!1218246 ((_ is Nil!65600) (_1!36757 (get!22794 lt!2415288))))))

(assert (=> d!2072785 (= (++!14621 (_1!36757 (get!22794 lt!2415288)) (_2!36757 (get!22794 lt!2415288))) lt!2415466)))

(declare-fun b!6609526 () Bool)

(assert (=> b!6609526 (= e!3999031 (_2!36757 (get!22794 lt!2415288)))))

(assert (= (and d!2072785 c!1218246) b!6609526))

(assert (= (and d!2072785 (not c!1218246)) b!6609527))

(assert (= (and d!2072785 res!2710157) b!6609528))

(assert (= (and b!6609528 res!2710156) b!6609529))

(declare-fun m!7384494 () Bool)

(assert (=> b!6609528 m!7384494))

(declare-fun m!7384496 () Bool)

(assert (=> b!6609528 m!7384496))

(declare-fun m!7384498 () Bool)

(assert (=> b!6609528 m!7384498))

(declare-fun m!7384500 () Bool)

(assert (=> b!6609527 m!7384500))

(declare-fun m!7384502 () Bool)

(assert (=> d!2072785 m!7384502))

(declare-fun m!7384504 () Bool)

(assert (=> d!2072785 m!7384504))

(declare-fun m!7384506 () Bool)

(assert (=> d!2072785 m!7384506))

(assert (=> b!6607288 d!2072785))

(assert (=> b!6607288 d!2072037))

(declare-fun d!2072787 () Bool)

(assert (=> d!2072787 true))

(declare-fun setRes!45140 () Bool)

(assert (=> d!2072787 setRes!45140))

(declare-fun condSetEmpty!45140 () Bool)

(declare-fun res!2710158 () (InoxSet Context!11718))

(assert (=> d!2072787 (= condSetEmpty!45140 (= res!2710158 ((as const (Array Context!11718 Bool)) false)))))

(assert (=> d!2072787 (= (choose!49350 z!1189 lambda!368578) res!2710158)))

(declare-fun setIsEmpty!45140 () Bool)

(assert (=> setIsEmpty!45140 setRes!45140))

(declare-fun setNonEmpty!45140 () Bool)

(declare-fun tp!1820642 () Bool)

(declare-fun e!3999032 () Bool)

(declare-fun setElem!45140 () Context!11718)

(assert (=> setNonEmpty!45140 (= setRes!45140 (and tp!1820642 (inv!84434 setElem!45140) e!3999032))))

(declare-fun setRest!45140 () (InoxSet Context!11718))

(assert (=> setNonEmpty!45140 (= res!2710158 ((_ map or) (store ((as const (Array Context!11718 Bool)) false) setElem!45140 true) setRest!45140))))

(declare-fun b!6609530 () Bool)

(declare-fun tp!1820643 () Bool)

(assert (=> b!6609530 (= e!3999032 tp!1820643)))

(assert (= (and d!2072787 condSetEmpty!45140) setIsEmpty!45140))

(assert (= (and d!2072787 (not condSetEmpty!45140)) setNonEmpty!45140))

(assert (= setNonEmpty!45140 b!6609530))

(declare-fun m!7384508 () Bool)

(assert (=> setNonEmpty!45140 m!7384508))

(assert (=> d!2071875 d!2072787))

(declare-fun d!2072789 () Bool)

(assert (=> d!2072789 (= (isEmpty!37878 (exprs!6359 (h!72050 zl!343))) ((_ is Nil!65601) (exprs!6359 (h!72050 zl!343))))))

(assert (=> b!6607575 d!2072789))

(declare-fun e!3999033 () Bool)

(assert (=> b!6607703 (= tp!1820595 e!3999033)))

(declare-fun b!6609531 () Bool)

(assert (=> b!6609531 (= e!3999033 tp_is_empty!42203)))

(declare-fun b!6609532 () Bool)

(declare-fun tp!1820646 () Bool)

(declare-fun tp!1820647 () Bool)

(assert (=> b!6609532 (= e!3999033 (and tp!1820646 tp!1820647))))

(declare-fun b!6609533 () Bool)

(declare-fun tp!1820648 () Bool)

(assert (=> b!6609533 (= e!3999033 tp!1820648)))

(declare-fun b!6609534 () Bool)

(declare-fun tp!1820645 () Bool)

(declare-fun tp!1820644 () Bool)

(assert (=> b!6609534 (= e!3999033 (and tp!1820645 tp!1820644))))

(assert (= (and b!6607703 ((_ is ElementMatch!16475) (regOne!33462 (reg!16804 r!7292)))) b!6609531))

(assert (= (and b!6607703 ((_ is Concat!25320) (regOne!33462 (reg!16804 r!7292)))) b!6609532))

(assert (= (and b!6607703 ((_ is Star!16475) (regOne!33462 (reg!16804 r!7292)))) b!6609533))

(assert (= (and b!6607703 ((_ is Union!16475) (regOne!33462 (reg!16804 r!7292)))) b!6609534))

(declare-fun e!3999034 () Bool)

(assert (=> b!6607703 (= tp!1820596 e!3999034)))

(declare-fun b!6609535 () Bool)

(assert (=> b!6609535 (= e!3999034 tp_is_empty!42203)))

(declare-fun b!6609536 () Bool)

(declare-fun tp!1820651 () Bool)

(declare-fun tp!1820652 () Bool)

(assert (=> b!6609536 (= e!3999034 (and tp!1820651 tp!1820652))))

(declare-fun b!6609537 () Bool)

(declare-fun tp!1820653 () Bool)

(assert (=> b!6609537 (= e!3999034 tp!1820653)))

(declare-fun b!6609538 () Bool)

(declare-fun tp!1820650 () Bool)

(declare-fun tp!1820649 () Bool)

(assert (=> b!6609538 (= e!3999034 (and tp!1820650 tp!1820649))))

(assert (= (and b!6607703 ((_ is ElementMatch!16475) (regTwo!33462 (reg!16804 r!7292)))) b!6609535))

(assert (= (and b!6607703 ((_ is Concat!25320) (regTwo!33462 (reg!16804 r!7292)))) b!6609536))

(assert (= (and b!6607703 ((_ is Star!16475) (regTwo!33462 (reg!16804 r!7292)))) b!6609537))

(assert (= (and b!6607703 ((_ is Union!16475) (regTwo!33462 (reg!16804 r!7292)))) b!6609538))

(declare-fun e!3999037 () Bool)

(assert (=> b!6607673 (= tp!1820564 e!3999037)))

(declare-fun b!6609542 () Bool)

(assert (=> b!6609542 (= e!3999037 tp_is_empty!42203)))

(declare-fun b!6609543 () Bool)

(declare-fun tp!1820656 () Bool)

(declare-fun tp!1820657 () Bool)

(assert (=> b!6609543 (= e!3999037 (and tp!1820656 tp!1820657))))

(declare-fun b!6609544 () Bool)

(declare-fun tp!1820658 () Bool)

(assert (=> b!6609544 (= e!3999037 tp!1820658)))

(declare-fun b!6609545 () Bool)

(declare-fun tp!1820655 () Bool)

(declare-fun tp!1820654 () Bool)

(assert (=> b!6609545 (= e!3999037 (and tp!1820655 tp!1820654))))

(assert (= (and b!6607673 ((_ is ElementMatch!16475) (regOne!33462 (regOne!33463 r!7292)))) b!6609542))

(assert (= (and b!6607673 ((_ is Concat!25320) (regOne!33462 (regOne!33463 r!7292)))) b!6609543))

(assert (= (and b!6607673 ((_ is Star!16475) (regOne!33462 (regOne!33463 r!7292)))) b!6609544))

(assert (= (and b!6607673 ((_ is Union!16475) (regOne!33462 (regOne!33463 r!7292)))) b!6609545))

(declare-fun e!3999038 () Bool)

(assert (=> b!6607673 (= tp!1820565 e!3999038)))

(declare-fun b!6609546 () Bool)

(assert (=> b!6609546 (= e!3999038 tp_is_empty!42203)))

(declare-fun b!6609547 () Bool)

(declare-fun tp!1820661 () Bool)

(declare-fun tp!1820662 () Bool)

(assert (=> b!6609547 (= e!3999038 (and tp!1820661 tp!1820662))))

(declare-fun b!6609548 () Bool)

(declare-fun tp!1820663 () Bool)

(assert (=> b!6609548 (= e!3999038 tp!1820663)))

(declare-fun b!6609549 () Bool)

(declare-fun tp!1820660 () Bool)

(declare-fun tp!1820659 () Bool)

(assert (=> b!6609549 (= e!3999038 (and tp!1820660 tp!1820659))))

(assert (= (and b!6607673 ((_ is ElementMatch!16475) (regTwo!33462 (regOne!33463 r!7292)))) b!6609546))

(assert (= (and b!6607673 ((_ is Concat!25320) (regTwo!33462 (regOne!33463 r!7292)))) b!6609547))

(assert (= (and b!6607673 ((_ is Star!16475) (regTwo!33462 (regOne!33463 r!7292)))) b!6609548))

(assert (= (and b!6607673 ((_ is Union!16475) (regTwo!33462 (regOne!33463 r!7292)))) b!6609549))

(declare-fun e!3999039 () Bool)

(assert (=> b!6607696 (= tp!1820586 e!3999039)))

(declare-fun b!6609550 () Bool)

(assert (=> b!6609550 (= e!3999039 tp_is_empty!42203)))

(declare-fun b!6609551 () Bool)

(declare-fun tp!1820666 () Bool)

(declare-fun tp!1820667 () Bool)

(assert (=> b!6609551 (= e!3999039 (and tp!1820666 tp!1820667))))

(declare-fun b!6609552 () Bool)

(declare-fun tp!1820668 () Bool)

(assert (=> b!6609552 (= e!3999039 tp!1820668)))

(declare-fun b!6609553 () Bool)

(declare-fun tp!1820665 () Bool)

(declare-fun tp!1820664 () Bool)

(assert (=> b!6609553 (= e!3999039 (and tp!1820665 tp!1820664))))

(assert (= (and b!6607696 ((_ is ElementMatch!16475) (regOne!33463 (regTwo!33462 r!7292)))) b!6609550))

(assert (= (and b!6607696 ((_ is Concat!25320) (regOne!33463 (regTwo!33462 r!7292)))) b!6609551))

(assert (= (and b!6607696 ((_ is Star!16475) (regOne!33463 (regTwo!33462 r!7292)))) b!6609552))

(assert (= (and b!6607696 ((_ is Union!16475) (regOne!33463 (regTwo!33462 r!7292)))) b!6609553))

(declare-fun e!3999040 () Bool)

(assert (=> b!6607696 (= tp!1820585 e!3999040)))

(declare-fun b!6609554 () Bool)

(assert (=> b!6609554 (= e!3999040 tp_is_empty!42203)))

(declare-fun b!6609555 () Bool)

(declare-fun tp!1820671 () Bool)

(declare-fun tp!1820672 () Bool)

(assert (=> b!6609555 (= e!3999040 (and tp!1820671 tp!1820672))))

(declare-fun b!6609556 () Bool)

(declare-fun tp!1820673 () Bool)

(assert (=> b!6609556 (= e!3999040 tp!1820673)))

(declare-fun b!6609557 () Bool)

(declare-fun tp!1820670 () Bool)

(declare-fun tp!1820669 () Bool)

(assert (=> b!6609557 (= e!3999040 (and tp!1820670 tp!1820669))))

(assert (= (and b!6607696 ((_ is ElementMatch!16475) (regTwo!33463 (regTwo!33462 r!7292)))) b!6609554))

(assert (= (and b!6607696 ((_ is Concat!25320) (regTwo!33463 (regTwo!33462 r!7292)))) b!6609555))

(assert (= (and b!6607696 ((_ is Star!16475) (regTwo!33463 (regTwo!33462 r!7292)))) b!6609556))

(assert (= (and b!6607696 ((_ is Union!16475) (regTwo!33463 (regTwo!33462 r!7292)))) b!6609557))

(declare-fun e!3999041 () Bool)

(assert (=> b!6607695 (= tp!1820589 e!3999041)))

(declare-fun b!6609558 () Bool)

(assert (=> b!6609558 (= e!3999041 tp_is_empty!42203)))

(declare-fun b!6609559 () Bool)

(declare-fun tp!1820676 () Bool)

(declare-fun tp!1820677 () Bool)

(assert (=> b!6609559 (= e!3999041 (and tp!1820676 tp!1820677))))

(declare-fun b!6609560 () Bool)

(declare-fun tp!1820678 () Bool)

(assert (=> b!6609560 (= e!3999041 tp!1820678)))

(declare-fun b!6609561 () Bool)

(declare-fun tp!1820675 () Bool)

(declare-fun tp!1820674 () Bool)

(assert (=> b!6609561 (= e!3999041 (and tp!1820675 tp!1820674))))

(assert (= (and b!6607695 ((_ is ElementMatch!16475) (reg!16804 (regTwo!33462 r!7292)))) b!6609558))

(assert (= (and b!6607695 ((_ is Concat!25320) (reg!16804 (regTwo!33462 r!7292)))) b!6609559))

(assert (= (and b!6607695 ((_ is Star!16475) (reg!16804 (regTwo!33462 r!7292)))) b!6609560))

(assert (= (and b!6607695 ((_ is Union!16475) (reg!16804 (regTwo!33462 r!7292)))) b!6609561))

(declare-fun b!6609562 () Bool)

(declare-fun e!3999042 () Bool)

(declare-fun tp!1820679 () Bool)

(declare-fun tp!1820680 () Bool)

(assert (=> b!6609562 (= e!3999042 (and tp!1820679 tp!1820680))))

(assert (=> b!6607688 (= tp!1820578 e!3999042)))

(assert (= (and b!6607688 ((_ is Cons!65601) (exprs!6359 (h!72050 (t!379378 zl!343))))) b!6609562))

(declare-fun b!6609564 () Bool)

(declare-fun e!3999044 () Bool)

(declare-fun tp!1820681 () Bool)

(assert (=> b!6609564 (= e!3999044 tp!1820681)))

(declare-fun b!6609563 () Bool)

(declare-fun e!3999043 () Bool)

(declare-fun tp!1820682 () Bool)

(assert (=> b!6609563 (= e!3999043 (and (inv!84434 (h!72050 (t!379378 (t!379378 zl!343)))) e!3999044 tp!1820682))))

(assert (=> b!6607687 (= tp!1820579 e!3999043)))

(assert (= b!6609563 b!6609564))

(assert (= (and b!6607687 ((_ is Cons!65602) (t!379378 (t!379378 zl!343)))) b!6609563))

(declare-fun m!7384522 () Bool)

(assert (=> b!6609563 m!7384522))

(declare-fun e!3999045 () Bool)

(assert (=> b!6607694 (= tp!1820587 e!3999045)))

(declare-fun b!6609565 () Bool)

(assert (=> b!6609565 (= e!3999045 tp_is_empty!42203)))

(declare-fun b!6609566 () Bool)

(declare-fun tp!1820685 () Bool)

(declare-fun tp!1820686 () Bool)

(assert (=> b!6609566 (= e!3999045 (and tp!1820685 tp!1820686))))

(declare-fun b!6609567 () Bool)

(declare-fun tp!1820687 () Bool)

(assert (=> b!6609567 (= e!3999045 tp!1820687)))

(declare-fun b!6609568 () Bool)

(declare-fun tp!1820684 () Bool)

(declare-fun tp!1820683 () Bool)

(assert (=> b!6609568 (= e!3999045 (and tp!1820684 tp!1820683))))

(assert (= (and b!6607694 ((_ is ElementMatch!16475) (regOne!33462 (regTwo!33462 r!7292)))) b!6609565))

(assert (= (and b!6607694 ((_ is Concat!25320) (regOne!33462 (regTwo!33462 r!7292)))) b!6609566))

(assert (= (and b!6607694 ((_ is Star!16475) (regOne!33462 (regTwo!33462 r!7292)))) b!6609567))

(assert (= (and b!6607694 ((_ is Union!16475) (regOne!33462 (regTwo!33462 r!7292)))) b!6609568))

(declare-fun e!3999046 () Bool)

(assert (=> b!6607694 (= tp!1820588 e!3999046)))

(declare-fun b!6609569 () Bool)

(assert (=> b!6609569 (= e!3999046 tp_is_empty!42203)))

(declare-fun b!6609570 () Bool)

(declare-fun tp!1820690 () Bool)

(declare-fun tp!1820691 () Bool)

(assert (=> b!6609570 (= e!3999046 (and tp!1820690 tp!1820691))))

(declare-fun b!6609571 () Bool)

(declare-fun tp!1820692 () Bool)

(assert (=> b!6609571 (= e!3999046 tp!1820692)))

(declare-fun b!6609572 () Bool)

(declare-fun tp!1820689 () Bool)

(declare-fun tp!1820688 () Bool)

(assert (=> b!6609572 (= e!3999046 (and tp!1820689 tp!1820688))))

(assert (= (and b!6607694 ((_ is ElementMatch!16475) (regTwo!33462 (regTwo!33462 r!7292)))) b!6609569))

(assert (= (and b!6607694 ((_ is Concat!25320) (regTwo!33462 (regTwo!33462 r!7292)))) b!6609570))

(assert (= (and b!6607694 ((_ is Star!16475) (regTwo!33462 (regTwo!33462 r!7292)))) b!6609571))

(assert (= (and b!6607694 ((_ is Union!16475) (regTwo!33462 (regTwo!33462 r!7292)))) b!6609572))

(declare-fun condSetEmpty!45141 () Bool)

(assert (=> setNonEmpty!45126 (= condSetEmpty!45141 (= setRest!45126 ((as const (Array Context!11718 Bool)) false)))))

(declare-fun setRes!45141 () Bool)

(assert (=> setNonEmpty!45126 (= tp!1820602 setRes!45141)))

(declare-fun setIsEmpty!45141 () Bool)

(assert (=> setIsEmpty!45141 setRes!45141))

(declare-fun setNonEmpty!45141 () Bool)

(declare-fun tp!1820693 () Bool)

(declare-fun setElem!45141 () Context!11718)

(declare-fun e!3999047 () Bool)

(assert (=> setNonEmpty!45141 (= setRes!45141 (and tp!1820693 (inv!84434 setElem!45141) e!3999047))))

(declare-fun setRest!45141 () (InoxSet Context!11718))

(assert (=> setNonEmpty!45141 (= setRest!45126 ((_ map or) (store ((as const (Array Context!11718 Bool)) false) setElem!45141 true) setRest!45141))))

(declare-fun b!6609573 () Bool)

(declare-fun tp!1820694 () Bool)

(assert (=> b!6609573 (= e!3999047 tp!1820694)))

(assert (= (and setNonEmpty!45126 condSetEmpty!45141) setIsEmpty!45141))

(assert (= (and setNonEmpty!45126 (not condSetEmpty!45141)) setNonEmpty!45141))

(assert (= setNonEmpty!45141 b!6609573))

(declare-fun m!7384524 () Bool)

(assert (=> setNonEmpty!45141 m!7384524))

(declare-fun b!6609574 () Bool)

(declare-fun e!3999048 () Bool)

(declare-fun tp!1820695 () Bool)

(declare-fun tp!1820696 () Bool)

(assert (=> b!6609574 (= e!3999048 (and tp!1820695 tp!1820696))))

(assert (=> b!6607710 (= tp!1820603 e!3999048)))

(assert (= (and b!6607710 ((_ is Cons!65601) (exprs!6359 setElem!45126))) b!6609574))

(declare-fun e!3999049 () Bool)

(assert (=> b!6607680 (= tp!1820572 e!3999049)))

(declare-fun b!6609575 () Bool)

(assert (=> b!6609575 (= e!3999049 tp_is_empty!42203)))

(declare-fun b!6609576 () Bool)

(declare-fun tp!1820699 () Bool)

(declare-fun tp!1820700 () Bool)

(assert (=> b!6609576 (= e!3999049 (and tp!1820699 tp!1820700))))

(declare-fun b!6609577 () Bool)

(declare-fun tp!1820701 () Bool)

(assert (=> b!6609577 (= e!3999049 tp!1820701)))

(declare-fun b!6609578 () Bool)

(declare-fun tp!1820698 () Bool)

(declare-fun tp!1820697 () Bool)

(assert (=> b!6609578 (= e!3999049 (and tp!1820698 tp!1820697))))

(assert (= (and b!6607680 ((_ is ElementMatch!16475) (h!72049 (exprs!6359 setElem!45120)))) b!6609575))

(assert (= (and b!6607680 ((_ is Concat!25320) (h!72049 (exprs!6359 setElem!45120)))) b!6609576))

(assert (= (and b!6607680 ((_ is Star!16475) (h!72049 (exprs!6359 setElem!45120)))) b!6609577))

(assert (= (and b!6607680 ((_ is Union!16475) (h!72049 (exprs!6359 setElem!45120)))) b!6609578))

(declare-fun b!6609579 () Bool)

(declare-fun e!3999050 () Bool)

(declare-fun tp!1820702 () Bool)

(declare-fun tp!1820703 () Bool)

(assert (=> b!6609579 (= e!3999050 (and tp!1820702 tp!1820703))))

(assert (=> b!6607680 (= tp!1820573 e!3999050)))

(assert (= (and b!6607680 ((_ is Cons!65601) (t!379377 (exprs!6359 setElem!45120)))) b!6609579))

(declare-fun b!6609580 () Bool)

(declare-fun e!3999051 () Bool)

(declare-fun tp!1820704 () Bool)

(assert (=> b!6609580 (= e!3999051 (and tp_is_empty!42203 tp!1820704))))

(assert (=> b!6607701 (= tp!1820592 e!3999051)))

(assert (= (and b!6607701 ((_ is Cons!65600) (t!379376 (t!379376 s!2326)))) b!6609580))

(declare-fun e!3999052 () Bool)

(assert (=> b!6607679 (= tp!1820568 e!3999052)))

(declare-fun b!6609581 () Bool)

(assert (=> b!6609581 (= e!3999052 tp_is_empty!42203)))

(declare-fun b!6609582 () Bool)

(declare-fun tp!1820707 () Bool)

(declare-fun tp!1820708 () Bool)

(assert (=> b!6609582 (= e!3999052 (and tp!1820707 tp!1820708))))

(declare-fun b!6609583 () Bool)

(declare-fun tp!1820709 () Bool)

(assert (=> b!6609583 (= e!3999052 tp!1820709)))

(declare-fun b!6609584 () Bool)

(declare-fun tp!1820706 () Bool)

(declare-fun tp!1820705 () Bool)

(assert (=> b!6609584 (= e!3999052 (and tp!1820706 tp!1820705))))

(assert (= (and b!6607679 ((_ is ElementMatch!16475) (regOne!33463 (regTwo!33463 r!7292)))) b!6609581))

(assert (= (and b!6607679 ((_ is Concat!25320) (regOne!33463 (regTwo!33463 r!7292)))) b!6609582))

(assert (= (and b!6607679 ((_ is Star!16475) (regOne!33463 (regTwo!33463 r!7292)))) b!6609583))

(assert (= (and b!6607679 ((_ is Union!16475) (regOne!33463 (regTwo!33463 r!7292)))) b!6609584))

(declare-fun e!3999053 () Bool)

(assert (=> b!6607679 (= tp!1820567 e!3999053)))

(declare-fun b!6609585 () Bool)

(assert (=> b!6609585 (= e!3999053 tp_is_empty!42203)))

(declare-fun b!6609586 () Bool)

(declare-fun tp!1820712 () Bool)

(declare-fun tp!1820713 () Bool)

(assert (=> b!6609586 (= e!3999053 (and tp!1820712 tp!1820713))))

(declare-fun b!6609587 () Bool)

(declare-fun tp!1820714 () Bool)

(assert (=> b!6609587 (= e!3999053 tp!1820714)))

(declare-fun b!6609588 () Bool)

(declare-fun tp!1820711 () Bool)

(declare-fun tp!1820710 () Bool)

(assert (=> b!6609588 (= e!3999053 (and tp!1820711 tp!1820710))))

(assert (= (and b!6607679 ((_ is ElementMatch!16475) (regTwo!33463 (regTwo!33463 r!7292)))) b!6609585))

(assert (= (and b!6607679 ((_ is Concat!25320) (regTwo!33463 (regTwo!33463 r!7292)))) b!6609586))

(assert (= (and b!6607679 ((_ is Star!16475) (regTwo!33463 (regTwo!33463 r!7292)))) b!6609587))

(assert (= (and b!6607679 ((_ is Union!16475) (regTwo!33463 (regTwo!33463 r!7292)))) b!6609588))

(declare-fun e!3999054 () Bool)

(assert (=> b!6607677 (= tp!1820569 e!3999054)))

(declare-fun b!6609589 () Bool)

(assert (=> b!6609589 (= e!3999054 tp_is_empty!42203)))

(declare-fun b!6609590 () Bool)

(declare-fun tp!1820717 () Bool)

(declare-fun tp!1820718 () Bool)

(assert (=> b!6609590 (= e!3999054 (and tp!1820717 tp!1820718))))

(declare-fun b!6609591 () Bool)

(declare-fun tp!1820719 () Bool)

(assert (=> b!6609591 (= e!3999054 tp!1820719)))

(declare-fun b!6609592 () Bool)

(declare-fun tp!1820716 () Bool)

(declare-fun tp!1820715 () Bool)

(assert (=> b!6609592 (= e!3999054 (and tp!1820716 tp!1820715))))

(assert (= (and b!6607677 ((_ is ElementMatch!16475) (regOne!33462 (regTwo!33463 r!7292)))) b!6609589))

(assert (= (and b!6607677 ((_ is Concat!25320) (regOne!33462 (regTwo!33463 r!7292)))) b!6609590))

(assert (= (and b!6607677 ((_ is Star!16475) (regOne!33462 (regTwo!33463 r!7292)))) b!6609591))

(assert (= (and b!6607677 ((_ is Union!16475) (regOne!33462 (regTwo!33463 r!7292)))) b!6609592))

(declare-fun e!3999055 () Bool)

(assert (=> b!6607677 (= tp!1820570 e!3999055)))

(declare-fun b!6609593 () Bool)

(assert (=> b!6609593 (= e!3999055 tp_is_empty!42203)))

(declare-fun b!6609594 () Bool)

(declare-fun tp!1820722 () Bool)

(declare-fun tp!1820723 () Bool)

(assert (=> b!6609594 (= e!3999055 (and tp!1820722 tp!1820723))))

(declare-fun b!6609595 () Bool)

(declare-fun tp!1820724 () Bool)

(assert (=> b!6609595 (= e!3999055 tp!1820724)))

(declare-fun b!6609596 () Bool)

(declare-fun tp!1820721 () Bool)

(declare-fun tp!1820720 () Bool)

(assert (=> b!6609596 (= e!3999055 (and tp!1820721 tp!1820720))))

(assert (= (and b!6607677 ((_ is ElementMatch!16475) (regTwo!33462 (regTwo!33463 r!7292)))) b!6609593))

(assert (= (and b!6607677 ((_ is Concat!25320) (regTwo!33462 (regTwo!33463 r!7292)))) b!6609594))

(assert (= (and b!6607677 ((_ is Star!16475) (regTwo!33462 (regTwo!33463 r!7292)))) b!6609595))

(assert (= (and b!6607677 ((_ is Union!16475) (regTwo!33462 (regTwo!33463 r!7292)))) b!6609596))

(declare-fun e!3999056 () Bool)

(assert (=> b!6607678 (= tp!1820571 e!3999056)))

(declare-fun b!6609597 () Bool)

(assert (=> b!6609597 (= e!3999056 tp_is_empty!42203)))

(declare-fun b!6609598 () Bool)

(declare-fun tp!1820727 () Bool)

(declare-fun tp!1820728 () Bool)

(assert (=> b!6609598 (= e!3999056 (and tp!1820727 tp!1820728))))

(declare-fun b!6609599 () Bool)

(declare-fun tp!1820729 () Bool)

(assert (=> b!6609599 (= e!3999056 tp!1820729)))

(declare-fun b!6609600 () Bool)

(declare-fun tp!1820726 () Bool)

(declare-fun tp!1820725 () Bool)

(assert (=> b!6609600 (= e!3999056 (and tp!1820726 tp!1820725))))

(assert (= (and b!6607678 ((_ is ElementMatch!16475) (reg!16804 (regTwo!33463 r!7292)))) b!6609597))

(assert (= (and b!6607678 ((_ is Concat!25320) (reg!16804 (regTwo!33463 r!7292)))) b!6609598))

(assert (= (and b!6607678 ((_ is Star!16475) (reg!16804 (regTwo!33463 r!7292)))) b!6609599))

(assert (= (and b!6607678 ((_ is Union!16475) (reg!16804 (regTwo!33463 r!7292)))) b!6609600))

(declare-fun e!3999057 () Bool)

(assert (=> b!6607661 (= tp!1820550 e!3999057)))

(declare-fun b!6609601 () Bool)

(assert (=> b!6609601 (= e!3999057 tp_is_empty!42203)))

(declare-fun b!6609602 () Bool)

(declare-fun tp!1820732 () Bool)

(declare-fun tp!1820733 () Bool)

(assert (=> b!6609602 (= e!3999057 (and tp!1820732 tp!1820733))))

(declare-fun b!6609603 () Bool)

(declare-fun tp!1820734 () Bool)

(assert (=> b!6609603 (= e!3999057 tp!1820734)))

(declare-fun b!6609604 () Bool)

(declare-fun tp!1820731 () Bool)

(declare-fun tp!1820730 () Bool)

(assert (=> b!6609604 (= e!3999057 (and tp!1820731 tp!1820730))))

(assert (= (and b!6607661 ((_ is ElementMatch!16475) (h!72049 (exprs!6359 (h!72050 zl!343))))) b!6609601))

(assert (= (and b!6607661 ((_ is Concat!25320) (h!72049 (exprs!6359 (h!72050 zl!343))))) b!6609602))

(assert (= (and b!6607661 ((_ is Star!16475) (h!72049 (exprs!6359 (h!72050 zl!343))))) b!6609603))

(assert (= (and b!6607661 ((_ is Union!16475) (h!72049 (exprs!6359 (h!72050 zl!343))))) b!6609604))

(declare-fun b!6609605 () Bool)

(declare-fun e!3999058 () Bool)

(declare-fun tp!1820735 () Bool)

(declare-fun tp!1820736 () Bool)

(assert (=> b!6609605 (= e!3999058 (and tp!1820735 tp!1820736))))

(assert (=> b!6607661 (= tp!1820551 e!3999058)))

(assert (= (and b!6607661 ((_ is Cons!65601) (t!379377 (exprs!6359 (h!72050 zl!343))))) b!6609605))

(declare-fun e!3999059 () Bool)

(assert (=> b!6607692 (= tp!1820581 e!3999059)))

(declare-fun b!6609606 () Bool)

(assert (=> b!6609606 (= e!3999059 tp_is_empty!42203)))

(declare-fun b!6609607 () Bool)

(declare-fun tp!1820739 () Bool)

(declare-fun tp!1820740 () Bool)

(assert (=> b!6609607 (= e!3999059 (and tp!1820739 tp!1820740))))

(declare-fun b!6609608 () Bool)

(declare-fun tp!1820741 () Bool)

(assert (=> b!6609608 (= e!3999059 tp!1820741)))

(declare-fun b!6609609 () Bool)

(declare-fun tp!1820738 () Bool)

(declare-fun tp!1820737 () Bool)

(assert (=> b!6609609 (= e!3999059 (and tp!1820738 tp!1820737))))

(assert (= (and b!6607692 ((_ is ElementMatch!16475) (regOne!33463 (regOne!33462 r!7292)))) b!6609606))

(assert (= (and b!6607692 ((_ is Concat!25320) (regOne!33463 (regOne!33462 r!7292)))) b!6609607))

(assert (= (and b!6607692 ((_ is Star!16475) (regOne!33463 (regOne!33462 r!7292)))) b!6609608))

(assert (= (and b!6607692 ((_ is Union!16475) (regOne!33463 (regOne!33462 r!7292)))) b!6609609))

(declare-fun e!3999060 () Bool)

(assert (=> b!6607692 (= tp!1820580 e!3999060)))

(declare-fun b!6609610 () Bool)

(assert (=> b!6609610 (= e!3999060 tp_is_empty!42203)))

(declare-fun b!6609611 () Bool)

(declare-fun tp!1820744 () Bool)

(declare-fun tp!1820745 () Bool)

(assert (=> b!6609611 (= e!3999060 (and tp!1820744 tp!1820745))))

(declare-fun b!6609612 () Bool)

(declare-fun tp!1820746 () Bool)

(assert (=> b!6609612 (= e!3999060 tp!1820746)))

(declare-fun b!6609613 () Bool)

(declare-fun tp!1820743 () Bool)

(declare-fun tp!1820742 () Bool)

(assert (=> b!6609613 (= e!3999060 (and tp!1820743 tp!1820742))))

(assert (= (and b!6607692 ((_ is ElementMatch!16475) (regTwo!33463 (regOne!33462 r!7292)))) b!6609610))

(assert (= (and b!6607692 ((_ is Concat!25320) (regTwo!33463 (regOne!33462 r!7292)))) b!6609611))

(assert (= (and b!6607692 ((_ is Star!16475) (regTwo!33463 (regOne!33462 r!7292)))) b!6609612))

(assert (= (and b!6607692 ((_ is Union!16475) (regTwo!33463 (regOne!33462 r!7292)))) b!6609613))

(declare-fun e!3999061 () Bool)

(assert (=> b!6607690 (= tp!1820582 e!3999061)))

(declare-fun b!6609614 () Bool)

(assert (=> b!6609614 (= e!3999061 tp_is_empty!42203)))

(declare-fun b!6609615 () Bool)

(declare-fun tp!1820749 () Bool)

(declare-fun tp!1820750 () Bool)

(assert (=> b!6609615 (= e!3999061 (and tp!1820749 tp!1820750))))

(declare-fun b!6609616 () Bool)

(declare-fun tp!1820751 () Bool)

(assert (=> b!6609616 (= e!3999061 tp!1820751)))

(declare-fun b!6609617 () Bool)

(declare-fun tp!1820748 () Bool)

(declare-fun tp!1820747 () Bool)

(assert (=> b!6609617 (= e!3999061 (and tp!1820748 tp!1820747))))

(assert (= (and b!6607690 ((_ is ElementMatch!16475) (regOne!33462 (regOne!33462 r!7292)))) b!6609614))

(assert (= (and b!6607690 ((_ is Concat!25320) (regOne!33462 (regOne!33462 r!7292)))) b!6609615))

(assert (= (and b!6607690 ((_ is Star!16475) (regOne!33462 (regOne!33462 r!7292)))) b!6609616))

(assert (= (and b!6607690 ((_ is Union!16475) (regOne!33462 (regOne!33462 r!7292)))) b!6609617))

(declare-fun e!3999062 () Bool)

(assert (=> b!6607690 (= tp!1820583 e!3999062)))

(declare-fun b!6609618 () Bool)

(assert (=> b!6609618 (= e!3999062 tp_is_empty!42203)))

(declare-fun b!6609619 () Bool)

(declare-fun tp!1820754 () Bool)

(declare-fun tp!1820755 () Bool)

(assert (=> b!6609619 (= e!3999062 (and tp!1820754 tp!1820755))))

(declare-fun b!6609620 () Bool)

(declare-fun tp!1820756 () Bool)

(assert (=> b!6609620 (= e!3999062 tp!1820756)))

(declare-fun b!6609621 () Bool)

(declare-fun tp!1820753 () Bool)

(declare-fun tp!1820752 () Bool)

(assert (=> b!6609621 (= e!3999062 (and tp!1820753 tp!1820752))))

(assert (= (and b!6607690 ((_ is ElementMatch!16475) (regTwo!33462 (regOne!33462 r!7292)))) b!6609618))

(assert (= (and b!6607690 ((_ is Concat!25320) (regTwo!33462 (regOne!33462 r!7292)))) b!6609619))

(assert (= (and b!6607690 ((_ is Star!16475) (regTwo!33462 (regOne!33462 r!7292)))) b!6609620))

(assert (= (and b!6607690 ((_ is Union!16475) (regTwo!33462 (regOne!33462 r!7292)))) b!6609621))

(declare-fun e!3999063 () Bool)

(assert (=> b!6607691 (= tp!1820584 e!3999063)))

(declare-fun b!6609622 () Bool)

(assert (=> b!6609622 (= e!3999063 tp_is_empty!42203)))

(declare-fun b!6609623 () Bool)

(declare-fun tp!1820759 () Bool)

(declare-fun tp!1820760 () Bool)

(assert (=> b!6609623 (= e!3999063 (and tp!1820759 tp!1820760))))

(declare-fun b!6609624 () Bool)

(declare-fun tp!1820761 () Bool)

(assert (=> b!6609624 (= e!3999063 tp!1820761)))

(declare-fun b!6609625 () Bool)

(declare-fun tp!1820758 () Bool)

(declare-fun tp!1820757 () Bool)

(assert (=> b!6609625 (= e!3999063 (and tp!1820758 tp!1820757))))

(assert (= (and b!6607691 ((_ is ElementMatch!16475) (reg!16804 (regOne!33462 r!7292)))) b!6609622))

(assert (= (and b!6607691 ((_ is Concat!25320) (reg!16804 (regOne!33462 r!7292)))) b!6609623))

(assert (= (and b!6607691 ((_ is Star!16475) (reg!16804 (regOne!33462 r!7292)))) b!6609624))

(assert (= (and b!6607691 ((_ is Union!16475) (reg!16804 (regOne!33462 r!7292)))) b!6609625))

(declare-fun e!3999064 () Bool)

(assert (=> b!6607675 (= tp!1820563 e!3999064)))

(declare-fun b!6609626 () Bool)

(assert (=> b!6609626 (= e!3999064 tp_is_empty!42203)))

(declare-fun b!6609627 () Bool)

(declare-fun tp!1820764 () Bool)

(declare-fun tp!1820765 () Bool)

(assert (=> b!6609627 (= e!3999064 (and tp!1820764 tp!1820765))))

(declare-fun b!6609628 () Bool)

(declare-fun tp!1820766 () Bool)

(assert (=> b!6609628 (= e!3999064 tp!1820766)))

(declare-fun b!6609629 () Bool)

(declare-fun tp!1820763 () Bool)

(declare-fun tp!1820762 () Bool)

(assert (=> b!6609629 (= e!3999064 (and tp!1820763 tp!1820762))))

(assert (= (and b!6607675 ((_ is ElementMatch!16475) (regOne!33463 (regOne!33463 r!7292)))) b!6609626))

(assert (= (and b!6607675 ((_ is Concat!25320) (regOne!33463 (regOne!33463 r!7292)))) b!6609627))

(assert (= (and b!6607675 ((_ is Star!16475) (regOne!33463 (regOne!33463 r!7292)))) b!6609628))

(assert (= (and b!6607675 ((_ is Union!16475) (regOne!33463 (regOne!33463 r!7292)))) b!6609629))

(declare-fun e!3999065 () Bool)

(assert (=> b!6607675 (= tp!1820562 e!3999065)))

(declare-fun b!6609630 () Bool)

(assert (=> b!6609630 (= e!3999065 tp_is_empty!42203)))

(declare-fun b!6609631 () Bool)

(declare-fun tp!1820769 () Bool)

(declare-fun tp!1820770 () Bool)

(assert (=> b!6609631 (= e!3999065 (and tp!1820769 tp!1820770))))

(declare-fun b!6609632 () Bool)

(declare-fun tp!1820771 () Bool)

(assert (=> b!6609632 (= e!3999065 tp!1820771)))

(declare-fun b!6609633 () Bool)

(declare-fun tp!1820768 () Bool)

(declare-fun tp!1820767 () Bool)

(assert (=> b!6609633 (= e!3999065 (and tp!1820768 tp!1820767))))

(assert (= (and b!6607675 ((_ is ElementMatch!16475) (regTwo!33463 (regOne!33463 r!7292)))) b!6609630))

(assert (= (and b!6607675 ((_ is Concat!25320) (regTwo!33463 (regOne!33463 r!7292)))) b!6609631))

(assert (= (and b!6607675 ((_ is Star!16475) (regTwo!33463 (regOne!33463 r!7292)))) b!6609632))

(assert (= (and b!6607675 ((_ is Union!16475) (regTwo!33463 (regOne!33463 r!7292)))) b!6609633))

(declare-fun e!3999066 () Bool)

(assert (=> b!6607674 (= tp!1820566 e!3999066)))

(declare-fun b!6609634 () Bool)

(assert (=> b!6609634 (= e!3999066 tp_is_empty!42203)))

(declare-fun b!6609635 () Bool)

(declare-fun tp!1820774 () Bool)

(declare-fun tp!1820775 () Bool)

(assert (=> b!6609635 (= e!3999066 (and tp!1820774 tp!1820775))))

(declare-fun b!6609636 () Bool)

(declare-fun tp!1820776 () Bool)

(assert (=> b!6609636 (= e!3999066 tp!1820776)))

(declare-fun b!6609637 () Bool)

(declare-fun tp!1820773 () Bool)

(declare-fun tp!1820772 () Bool)

(assert (=> b!6609637 (= e!3999066 (and tp!1820773 tp!1820772))))

(assert (= (and b!6607674 ((_ is ElementMatch!16475) (reg!16804 (regOne!33463 r!7292)))) b!6609634))

(assert (= (and b!6607674 ((_ is Concat!25320) (reg!16804 (regOne!33463 r!7292)))) b!6609635))

(assert (= (and b!6607674 ((_ is Star!16475) (reg!16804 (regOne!33463 r!7292)))) b!6609636))

(assert (= (and b!6607674 ((_ is Union!16475) (reg!16804 (regOne!33463 r!7292)))) b!6609637))

(declare-fun e!3999069 () Bool)

(assert (=> b!6607704 (= tp!1820597 e!3999069)))

(declare-fun b!6609640 () Bool)

(assert (=> b!6609640 (= e!3999069 tp_is_empty!42203)))

(declare-fun b!6609641 () Bool)

(declare-fun tp!1820779 () Bool)

(declare-fun tp!1820780 () Bool)

(assert (=> b!6609641 (= e!3999069 (and tp!1820779 tp!1820780))))

(declare-fun b!6609642 () Bool)

(declare-fun tp!1820781 () Bool)

(assert (=> b!6609642 (= e!3999069 tp!1820781)))

(declare-fun b!6609643 () Bool)

(declare-fun tp!1820778 () Bool)

(declare-fun tp!1820777 () Bool)

(assert (=> b!6609643 (= e!3999069 (and tp!1820778 tp!1820777))))

(assert (= (and b!6607704 ((_ is ElementMatch!16475) (reg!16804 (reg!16804 r!7292)))) b!6609640))

(assert (= (and b!6607704 ((_ is Concat!25320) (reg!16804 (reg!16804 r!7292)))) b!6609641))

(assert (= (and b!6607704 ((_ is Star!16475) (reg!16804 (reg!16804 r!7292)))) b!6609642))

(assert (= (and b!6607704 ((_ is Union!16475) (reg!16804 (reg!16804 r!7292)))) b!6609643))

(declare-fun e!3999070 () Bool)

(assert (=> b!6607705 (= tp!1820594 e!3999070)))

(declare-fun b!6609644 () Bool)

(assert (=> b!6609644 (= e!3999070 tp_is_empty!42203)))

(declare-fun b!6609645 () Bool)

(declare-fun tp!1820784 () Bool)

(declare-fun tp!1820785 () Bool)

(assert (=> b!6609645 (= e!3999070 (and tp!1820784 tp!1820785))))

(declare-fun b!6609646 () Bool)

(declare-fun tp!1820786 () Bool)

(assert (=> b!6609646 (= e!3999070 tp!1820786)))

(declare-fun b!6609647 () Bool)

(declare-fun tp!1820783 () Bool)

(declare-fun tp!1820782 () Bool)

(assert (=> b!6609647 (= e!3999070 (and tp!1820783 tp!1820782))))

(assert (= (and b!6607705 ((_ is ElementMatch!16475) (regOne!33463 (reg!16804 r!7292)))) b!6609644))

(assert (= (and b!6607705 ((_ is Concat!25320) (regOne!33463 (reg!16804 r!7292)))) b!6609645))

(assert (= (and b!6607705 ((_ is Star!16475) (regOne!33463 (reg!16804 r!7292)))) b!6609646))

(assert (= (and b!6607705 ((_ is Union!16475) (regOne!33463 (reg!16804 r!7292)))) b!6609647))

(declare-fun e!3999071 () Bool)

(assert (=> b!6607705 (= tp!1820593 e!3999071)))

(declare-fun b!6609648 () Bool)

(assert (=> b!6609648 (= e!3999071 tp_is_empty!42203)))

(declare-fun b!6609649 () Bool)

(declare-fun tp!1820789 () Bool)

(declare-fun tp!1820790 () Bool)

(assert (=> b!6609649 (= e!3999071 (and tp!1820789 tp!1820790))))

(declare-fun b!6609650 () Bool)

(declare-fun tp!1820791 () Bool)

(assert (=> b!6609650 (= e!3999071 tp!1820791)))

(declare-fun b!6609651 () Bool)

(declare-fun tp!1820788 () Bool)

(declare-fun tp!1820787 () Bool)

(assert (=> b!6609651 (= e!3999071 (and tp!1820788 tp!1820787))))

(assert (= (and b!6607705 ((_ is ElementMatch!16475) (regTwo!33463 (reg!16804 r!7292)))) b!6609648))

(assert (= (and b!6607705 ((_ is Concat!25320) (regTwo!33463 (reg!16804 r!7292)))) b!6609649))

(assert (= (and b!6607705 ((_ is Star!16475) (regTwo!33463 (reg!16804 r!7292)))) b!6609650))

(assert (= (and b!6607705 ((_ is Union!16475) (regTwo!33463 (reg!16804 r!7292)))) b!6609651))

(declare-fun b_lambda!250077 () Bool)

(assert (= b_lambda!250069 (or b!6607267 b_lambda!250077)))

(declare-fun bs!1695184 () Bool)

(declare-fun d!2072801 () Bool)

(assert (= bs!1695184 (and d!2072801 b!6607267)))

(assert (=> bs!1695184 (= (dynLambda!26125 lambda!368670 (h!72050 zl!343)) (>= lt!2415278 (contextDepth!300 (h!72050 zl!343))))))

(assert (=> bs!1695184 m!7382306))

(assert (=> b!6609259 d!2072801))

(declare-fun b_lambda!250079 () Bool)

(assert (= b_lambda!250053 (or d!2071653 b_lambda!250079)))

(declare-fun bs!1695185 () Bool)

(declare-fun d!2072803 () Bool)

(assert (= bs!1695185 (and d!2072803 d!2071653)))

(assert (=> bs!1695185 (= (dynLambda!26126 lambda!368603 (h!72049 (unfocusZipperList!1896 zl!343))) (validRegex!8211 (h!72049 (unfocusZipperList!1896 zl!343))))))

(declare-fun m!7384546 () Bool)

(assert (=> bs!1695185 m!7384546))

(assert (=> b!6608689 d!2072803))

(declare-fun b_lambda!250081 () Bool)

(assert (= b_lambda!250057 (or b!6606487 b_lambda!250081)))

(assert (=> d!2072463 d!2071913))

(declare-fun b_lambda!250083 () Bool)

(assert (= b_lambda!250031 (or d!2071661 b_lambda!250083)))

(declare-fun bs!1695186 () Bool)

(declare-fun d!2072805 () Bool)

(assert (= bs!1695186 (and d!2072805 d!2071661)))

(assert (=> bs!1695186 (= (dynLambda!26126 lambda!368608 (h!72049 lt!2415202)) (validRegex!8211 (h!72049 lt!2415202)))))

(declare-fun m!7384548 () Bool)

(assert (=> bs!1695186 m!7384548))

(assert (=> b!6608165 d!2072805))

(declare-fun b_lambda!250085 () Bool)

(assert (= b_lambda!250073 (or b!6607270 b_lambda!250085)))

(declare-fun bs!1695187 () Bool)

(declare-fun d!2072807 () Bool)

(assert (= bs!1695187 (and d!2072807 b!6607270)))

(assert (=> bs!1695187 (= (dynLambda!26125 lambda!368672 (h!72050 (t!379378 lt!2415114))) (>= lt!2415280 (contextDepth!300 (h!72050 (t!379378 lt!2415114)))))))

(assert (=> bs!1695187 m!7384488))

(assert (=> b!6609503 d!2072807))

(declare-fun b_lambda!250087 () Bool)

(assert (= b_lambda!250019 (or b!6607272 b_lambda!250087)))

(declare-fun bs!1695188 () Bool)

(declare-fun d!2072809 () Bool)

(assert (= bs!1695188 (and d!2072809 b!6607272)))

(assert (=> bs!1695188 (= (dynLambda!26125 lambda!368673 (h!72050 lt!2415114)) (>= lt!2415282 (contextDepth!300 (h!72050 lt!2415114))))))

(assert (=> bs!1695188 m!7382318))

(assert (=> b!6607973 d!2072809))

(declare-fun b_lambda!250089 () Bool)

(assert (= b_lambda!250061 (or d!2071909 b_lambda!250089)))

(declare-fun bs!1695189 () Bool)

(declare-fun d!2072811 () Bool)

(assert (= bs!1695189 (and d!2072811 d!2071909)))

(assert (=> bs!1695189 (= (dynLambda!26126 lambda!368697 (h!72049 (t!379377 (exprs!6359 (h!72050 zl!343))))) (validRegex!8211 (h!72049 (t!379377 (exprs!6359 (h!72050 zl!343))))))))

(declare-fun m!7384556 () Bool)

(assert (=> bs!1695189 m!7384556))

(assert (=> b!6609204 d!2072811))

(declare-fun b_lambda!250091 () Bool)

(assert (= b_lambda!250041 (or b!6606487 b_lambda!250091)))

(assert (=> d!2072291 d!2071917))

(declare-fun b_lambda!250093 () Bool)

(assert (= b_lambda!250021 (or d!2071903 b_lambda!250093)))

(declare-fun bs!1695190 () Bool)

(declare-fun d!2072813 () Bool)

(assert (= bs!1695190 (and d!2072813 d!2071903)))

(assert (=> bs!1695190 (= (dynLambda!26126 lambda!368696 (h!72049 (exprs!6359 (h!72050 zl!343)))) (validRegex!8211 (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(declare-fun m!7384562 () Bool)

(assert (=> bs!1695190 m!7384562))

(assert (=> b!6608042 d!2072813))

(declare-fun b_lambda!250095 () Bool)

(assert (= b_lambda!250059 (or d!2071783 b_lambda!250095)))

(declare-fun bs!1695191 () Bool)

(declare-fun d!2072816 () Bool)

(assert (= bs!1695191 (and d!2072816 d!2071783)))

(assert (=> bs!1695191 (= (dynLambda!26126 lambda!368660 (h!72049 (exprs!6359 (h!72050 zl!343)))) (validRegex!8211 (h!72049 (exprs!6359 (h!72050 zl!343)))))))

(assert (=> bs!1695191 m!7384562))

(assert (=> b!6608742 d!2072816))

(declare-fun b_lambda!250097 () Bool)

(assert (= b_lambda!250039 (or b!6606487 b_lambda!250097)))

(assert (=> d!2072289 d!2071911))

(declare-fun b_lambda!250099 () Bool)

(assert (= b_lambda!250055 (or b!6606487 b_lambda!250099)))

(assert (=> d!2072443 d!2071915))

(declare-fun b_lambda!250101 () Bool)

(assert (= b_lambda!250051 (or b!6607265 b_lambda!250101)))

(declare-fun bs!1695192 () Bool)

(declare-fun d!2072819 () Bool)

(assert (= bs!1695192 (and d!2072819 b!6607265)))

(assert (=> bs!1695192 (= (dynLambda!26125 lambda!368669 (h!72050 (t!379378 zl!343))) (>= lt!2415276 (contextDepth!300 (h!72050 (t!379378 zl!343)))))))

(assert (=> bs!1695192 m!7383550))

(assert (=> b!6608658 d!2072819))

(declare-fun b_lambda!250103 () Bool)

(assert (= b_lambda!250027 (or b!6606487 b_lambda!250103)))

(assert (=> d!2072141 d!2071919))

(declare-fun b_lambda!250105 () Bool)

(assert (= b_lambda!250067 (or d!2071851 b_lambda!250105)))

(declare-fun bs!1695193 () Bool)

(declare-fun d!2072821 () Bool)

(assert (= bs!1695193 (and d!2072821 d!2071851)))

(assert (=> bs!1695193 (= (dynLambda!26126 lambda!368689 (h!72049 (exprs!6359 setElem!45120))) (validRegex!8211 (h!72049 (exprs!6359 setElem!45120))))))

(declare-fun m!7384564 () Bool)

(assert (=> bs!1695193 m!7384564))

(assert (=> b!6609257 d!2072821))

(check-sat (not b!6609649) (not b!6608453) (not b!6608847) (not b!6609611) (not b!6607755) (not b_lambda!250089) (not b!6608166) (not b!6609544) (not bm!578363) (not b!6609381) (not b!6608333) (not d!2072513) (not b!6608683) (not bm!578168) (not d!2072717) (not d!2072065) (not d!2072197) (not bm!578368) (not d!2072263) (not b!6609271) (not d!2071961) (not bm!578477) (not d!2072057) (not b!6608359) (not bs!1695189) (not b_lambda!250099) (not b!6608293) (not b!6609378) (not bm!578399) (not b!6607987) (not b!6609562) (not b!6608378) (not bm!578137) (not setNonEmpty!45134) (not d!2072003) (not b!6608489) (not b!6608855) (not b!6608454) (not b!6609561) (not b!6607894) (not d!2072687) (not b!6609260) (not b!6608839) (not bs!1695190) (not d!2072521) (not bm!578140) (not b!6609274) (not b!6609607) (not d!2072603) (not b!6608746) (not b!6609293) (not b!6608517) tp_is_empty!42203 (not b!6609620) (not b!6609462) (not b!6608753) (not b!6607762) (not b!6609641) (not d!2072589) (not d!2072393) (not b!6608969) (not b!6608757) (not b_lambda!250103) (not b!6609114) (not b!6608388) (not b_lambda!250081) (not bm!578201) (not bm!578436) (not bm!578491) (not b!6609613) (not b!6608335) (not bm!578341) (not b!6608362) (not bm!578500) (not bm!578326) (not bm!578164) (not b!6609084) (not bm!578338) (not bm!578206) (not b!6607992) (not setNonEmpty!45136) (not bm!578131) (not b!6607978) (not bs!1695186) (not b!6608565) (not bm!578377) (not bm!578406) (not b!6609142) (not b!6608865) (not b!6609633) (not bm!578369) (not bm!578505) (not d!2072183) (not bm!578431) (not b!6609603) (not d!2072641) (not d!2072291) (not bm!578299) (not bm!578161) (not b!6607941) (not bm!578202) (not b!6609047) (not bm!578409) (not b!6608700) (not b_lambda!250015) (not setNonEmpty!45140) (not b!6609236) (not b!6609538) (not b!6609619) (not b!6609534) (not b!6609646) (not b!6608921) (not bm!578479) (not b!6608153) (not b!6609106) (not bm!578481) (not b!6609536) (not b!6609283) (not bm!578185) (not b!6607790) (not bm!578420) (not b!6609258) (not b!6609110) (not bm!578381) (not d!2072755) (not b!6607906) (not b!6607953) (not d!2072125) (not b!6607871) (not d!2072529) (not b!6608704) (not b!6608709) (not d!2072511) (not bm!578300) (not b!6609576) (not bm!578542) (not b!6609100) (not bm!578345) (not b!6608481) (not bm!578539) (not b!6608539) (not bm!578207) (not d!2072385) (not b!6609643) (not b!6609587) (not b!6609091) (not b!6609103) (not bm!578485) (not bm!578417) (not bm!578306) (not b!6609625) (not bm!578285) (not b!6609380) (not d!2072621) (not bm!578411) (not b!6609594) (not b!6608858) (not d!2071957) (not b!6607974) (not d!2072387) (not b!6607767) (not b!6609566) (not bm!578220) (not b!6608989) (not b!6609650) (not bm!578296) (not d!2071963) (not d!2072275) (not b!6608360) (not b!6609533) (not d!2072165) (not b!6607766) (not b!6608157) (not b!6609085) (not bm!578122) (not bm!578321) (not d!2072259) (not d!2072685) (not b!6607786) (not b_lambda!250079) (not b!6608043) (not bm!578272) (not b!6609604) (not b!6608854) (not b!6609157) (not b!6608159) (not b!6609578) (not bm!578521) (not b!6609628) (not bm!578541) (not bm!578123) (not b!6607918) (not b!6609579) (not b_lambda!250085) (not b!6607870) (not bm!578182) (not bm!578225) (not b!6607784) (not b!6609598) (not b!6609527) (not b!6609547) (not b!6608860) (not b!6608690) (not b!6607789) (not b!6607769) (not d!2072047) (not b!6609572) (not bm!578302) (not b!6608357) (not bm!578134) (not d!2071981) (not bm!578229) (not d!2072631) (not bm!578413) (not b!6609097) (not bs!1695191) (not b!6609580) (not b!6607773) (not b!6608483) (not d!2072251) (not b!6609567) (not b!6609595) (not b!6607855) (not d!2072203) (not d!2072033) (not b!6607923) (not bm!578177) (not d!2072449) (not b!6608744) (not d!2072607) (not b!6609605) (not b!6607933) (not b!6608963) (not b!6609560) (not b!6609577) (not b!6608067) (not b!6608718) (not b!6608553) (not b!6609158) (not bm!578441) (not d!2072569) (not bm!578442) (not bm!578327) (not b!6607761) (not d!2072613) (not d!2072601) (not d!2071951) (not bm!578403) (not bm!578231) (not b!6609102) (not b!6609464) (not bm!578273) (not bm!578335) (not bm!578304) (not d!2072481) (not bm!578163) (not bm!578494) (not b!6609252) (not b!6609240) (not d!2072643) (not b!6608971) (not b!6607916) (not b!6609098) (not b!6609125) (not b_lambda!250013) (not d!2072289) (not bm!578476) (not b!6608970) (not bm!578221) (not bm!578435) (not b!6608754) (not d!2072507) (not b!6608154) (not bm!578332) (not bm!578503) (not b!6608723) (not b!6608703) (not d!2072333) (not b!6607921) (not bm!578419) (not bm!578191) (not d!2072169) (not d!2072609) (not bm!578143) (not b!6609635) (not b_lambda!250077) (not bm!578486) (not b!6608724) (not b!6608354) (not bm!578124) (not b!6609122) (not b!6608961) (not b!6608743) (not b!6609375) (not b!6609385) (not bm!578342) (not bm!578227) (not bm!578128) (not b!6608853) (not b!6609205) (not d!2072273) (not d!2072175) (not bm!578144) (not bm!578434) (not b!6609543) (not d!2072185) (not bm!578217) (not b!6609623) (not d!2072723) (not bm!578174) (not bm!578492) (not d!2072721) (not b!6609568) (not b!6609150) (not b!6609112) (not d!2072565) (not d!2072001) (not d!2072199) (not b!6609196) (not b!6609624) (not bm!578132) (not d!2072141) (not b!6609048) (not d!2072321) (not bm!578183) (not d!2072579) (not b!6608993) (not b!6607834) (not b_lambda!250101) (not b!6608659) (not b!6609584) (not bm!578408) (not b!6609369) (not b_lambda!250091) (not b!6609637) (not bs!1695193) (not bm!578473) (not d!2072109) (not b!6609041) (not b!6608160) (not b!6608361) (not b!6609551) (not b!6609570) (not b!6608552) (not b!6609120) (not b!6608752) (not d!2072725) (not d!2072335) (not b!6609376) (not b!6607823) (not bm!578498) (not b!6609384) (not bm!578310) (not b!6609548) (not b!6609621) (not b!6607778) (not bm!578374) (not bm!578484) (not b!6608518) (not b!6609447) (not bm!578538) (not d!2072035) (not d!2072187) (not b!6609148) (not bm!578495) (not b!6609602) (not bm!578186) (not d!2072615) (not b!6609586) (not b!6609456) (not bm!578370) (not bm!578429) (not b!6608146) (not bm!578433) (not bm!578154) (not b!6609647) (not d!2072623) (not bm!578204) (not b!6608047) (not b!6609263) (not b!6609039) (not b!6607764) (not b!6608632) (not b!6608550) (not b!6608336) (not b!6609549) (not b!6608720) (not bm!578155) (not bm!578175) (not d!2072567) (not d!2071999) (not b!6608716) (not b!6609505) (not bs!1695184) (not b!6609528) (not b!6609545) (not d!2071985) (not b!6609588) (not b!6607922) (not bm!578344) (not b_lambda!250095) (not bm!578309) (not bs!1695192) (not b!6609599) (not b!6609564) (not bm!578490) (not b!6609269) (not bm!578471) (not bm!578506) (not b!6609552) (not b!6609530) (not bm!578504) (not b!6609631) (not b!6609651) (not b!6608162) (not b!6609573) (not bs!1695188) (not d!2072043) (not b!6607917) (not bs!1695185) (not b_lambda!250087) (not b!6609627) (not d!2072053) (not d!2072463) (not d!2072683) (not bm!578522) (not bm!578416) (not bm!578364) (not bm!578170) (not b!6608702) (not b!6607910) (not d!2072443) (not bm!578415) (not b!6608721) (not b!6607791) (not b!6609574) (not b!6609642) (not b!6609170) (not b!6609559) (not b!6609270) (not b!6609161) (not bm!578398) (not b!6609632) (not b!6609105) (not d!2072447) (not bm!578171) (not b!6607956) (not bm!578165) (not b!6609532) (not bm!578281) (not d!2072629) (not d!2072711) (not b!6607893) (not d!2072371) (not d!2072173) (not b!6609134) (not b!6609261) (not b!6608823) (not b!6609617) (not bm!578307) (not b!6608582) (not b!6608845) (not b!6609571) (not bm!578336) (not bm!578215) (not b!6608861) (not d!2072627) (not b!6608164) (not bm!578188) (not d!2072283) (not d!2072639) (not b!6608917) (not b!6608490) (not d!2072577) (not b!6609612) (not b!6609645) (not b!6609616) (not bm!578378) (not b!6609596) (not bm!578480) (not bm!578308) (not b!6608415) (not b!6609591) (not bm!578328) (not b!6608663) (not b!6609121) (not bm!578169) (not b!6607986) (not d!2071953) (not bm!578219) (not b!6609600) (not b!6608584) (not b!6608974) (not b!6607785) (not d!2072611) (not b!6608634) (not bm!578472) (not b!6607940) (not d!2072021) (not b_lambda!250105) (not b!6609504) (not d!2072625) (not b!6609583) (not b!6607957) (not b!6609507) (not b!6607907) (not bm!578284) (not bm!578402) (not d!2072181) (not d!2071987) (not b!6607905) (not b!6608866) (not b!6608491) (not d!2072343) (not b!6607908) (not b!6609629) (not b!6609582) (not bm!578190) (not bm!578373) (not bm!578138) (not d!2072785) (not bm!578184) (not d!2072237) (not bm!578166) (not b!6609615) (not b!6607991) (not bm!578488) (not b!6609555) (not b!6608494) (not bm!578159) (not b!6608158) (not b!6607770) (not b!6608032) (not b!6609537) (not b!6609553) (not bm!578230) (not b!6609563) (not d!2072451) (not b!6609608) (not b_lambda!250007) (not d!2072127) (not b!6608323) (not b!6608063) (not b_lambda!250093) (not b!6609556) (not b!6609609) (not d!2072477) (not d!2072041) (not b!6609636) (not b!6609590) (not b!6609156) (not bm!578461) (not b!6609592) (not b_lambda!250011) (not b!6608358) (not b!6609049) (not bm!578499) (not b!6609052) (not b_lambda!250083) (not bs!1695187) (not b!6608145) (not b!6609557) (not b!6608411) (not setNonEmpty!45141) (not b_lambda!250009) (not bm!578407) (not bm!578192) (not b!6608834) (not bm!578205) (not b_lambda!250097) (not d!2072373) (not b!6607776) (not setNonEmpty!45137) (not d!2072457) (not b!6609383) (not b!6607810) (not bm!578397) (not d!2072145) (not b!6609289) (not setNonEmpty!45138) (not b!6608715) (not d!2072459))
(check-sat)
