; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!634162 () Bool)

(assert start!634162)

(declare-fun b!6417522 () Bool)

(assert (=> b!6417522 true))

(assert (=> b!6417522 true))

(declare-fun lambda!354424 () Int)

(declare-fun lambda!354423 () Int)

(assert (=> b!6417522 (not (= lambda!354424 lambda!354423))))

(assert (=> b!6417522 true))

(assert (=> b!6417522 true))

(declare-fun b!6417531 () Bool)

(assert (=> b!6417531 true))

(declare-fun bs!1613789 () Bool)

(declare-fun b!6417537 () Bool)

(assert (= bs!1613789 (and b!6417537 b!6417522)))

(declare-fun lambda!354426 () Int)

(declare-datatypes ((C!32908 0))(
  ( (C!32909 (val!26156 Int)) )
))
(declare-datatypes ((Regex!16319 0))(
  ( (ElementMatch!16319 (c!1172214 C!32908)) (Concat!25164 (regOne!33150 Regex!16319) (regTwo!33150 Regex!16319)) (EmptyExpr!16319) (Star!16319 (reg!16648 Regex!16319)) (EmptyLang!16319) (Union!16319 (regOne!33151 Regex!16319) (regTwo!33151 Regex!16319)) )
))
(declare-fun lt!2376100 () Regex!16319)

(declare-fun r!7292 () Regex!16319)

(assert (=> bs!1613789 (= (= lt!2376100 (regOne!33150 r!7292)) (= lambda!354426 lambda!354423))))

(assert (=> bs!1613789 (not (= lambda!354426 lambda!354424))))

(assert (=> b!6417537 true))

(assert (=> b!6417537 true))

(assert (=> b!6417537 true))

(declare-fun lambda!354427 () Int)

(assert (=> bs!1613789 (not (= lambda!354427 lambda!354423))))

(assert (=> bs!1613789 (= (= lt!2376100 (regOne!33150 r!7292)) (= lambda!354427 lambda!354424))))

(assert (=> b!6417537 (not (= lambda!354427 lambda!354426))))

(assert (=> b!6417537 true))

(assert (=> b!6417537 true))

(assert (=> b!6417537 true))

(declare-fun b!6417498 () Bool)

(declare-fun e!3893951 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65256 0))(
  ( (Nil!65132) (Cons!65132 (h!71580 Regex!16319) (t!378870 List!65256)) )
))
(declare-datatypes ((Context!11406 0))(
  ( (Context!11407 (exprs!6203 List!65256)) )
))
(declare-fun lt!2376119 () (InoxSet Context!11406))

(declare-datatypes ((List!65257 0))(
  ( (Nil!65133) (Cons!65133 (h!71581 C!32908) (t!378871 List!65257)) )
))
(declare-fun s!2326 () List!65257)

(declare-fun matchZipper!2331 ((InoxSet Context!11406) List!65257) Bool)

(assert (=> b!6417498 (= e!3893951 (matchZipper!2331 lt!2376119 (t!378871 s!2326)))))

(declare-fun b!6417499 () Bool)

(declare-fun res!2637469 () Bool)

(declare-fun e!3893968 () Bool)

(assert (=> b!6417499 (=> res!2637469 e!3893968)))

(declare-fun e!3893955 () Bool)

(assert (=> b!6417499 (= res!2637469 e!3893955)))

(declare-fun res!2637464 () Bool)

(assert (=> b!6417499 (=> (not res!2637464) (not e!3893955))))

(get-info :version)

(assert (=> b!6417499 (= res!2637464 ((_ is Concat!25164) (regOne!33150 r!7292)))))

(declare-fun b!6417500 () Bool)

(declare-fun res!2637474 () Bool)

(declare-fun e!3893965 () Bool)

(assert (=> b!6417500 (=> res!2637474 e!3893965)))

(assert (=> b!6417500 (= res!2637474 (or ((_ is EmptyExpr!16319) r!7292) ((_ is EmptyLang!16319) r!7292) ((_ is ElementMatch!16319) r!7292) ((_ is Union!16319) r!7292) (not ((_ is Concat!25164) r!7292))))))

(declare-fun b!6417501 () Bool)

(declare-fun e!3893966 () Bool)

(declare-fun e!3893958 () Bool)

(assert (=> b!6417501 (= e!3893966 e!3893958)))

(declare-fun res!2637462 () Bool)

(assert (=> b!6417501 (=> res!2637462 e!3893958)))

(declare-fun lt!2376097 () Context!11406)

(declare-fun lt!2376127 () Regex!16319)

(declare-datatypes ((List!65258 0))(
  ( (Nil!65134) (Cons!65134 (h!71582 Context!11406) (t!378872 List!65258)) )
))
(declare-fun unfocusZipper!2061 (List!65258) Regex!16319)

(assert (=> b!6417501 (= res!2637462 (not (= (unfocusZipper!2061 (Cons!65134 lt!2376097 Nil!65134)) lt!2376127)))))

(declare-fun lt!2376110 () Regex!16319)

(assert (=> b!6417501 (= lt!2376127 (Concat!25164 (reg!16648 (regOne!33150 r!7292)) lt!2376110))))

(declare-fun b!6417502 () Bool)

(declare-fun e!3893970 () Bool)

(assert (=> b!6417502 (= e!3893958 e!3893970)))

(declare-fun res!2637455 () Bool)

(assert (=> b!6417502 (=> res!2637455 e!3893970)))

(declare-fun lt!2376108 () Context!11406)

(assert (=> b!6417502 (= res!2637455 (not (= (unfocusZipper!2061 (Cons!65134 lt!2376108 Nil!65134)) (reg!16648 (regOne!33150 r!7292)))))))

(declare-fun lambda!354425 () Int)

(declare-fun lt!2376125 () Context!11406)

(declare-fun lt!2376105 () (InoxSet Context!11406))

(declare-fun flatMap!1824 ((InoxSet Context!11406) Int) (InoxSet Context!11406))

(declare-fun derivationStepZipperUp!1493 (Context!11406 C!32908) (InoxSet Context!11406))

(assert (=> b!6417502 (= (flatMap!1824 lt!2376105 lambda!354425) (derivationStepZipperUp!1493 lt!2376125 (h!71581 s!2326)))))

(declare-datatypes ((Unit!158607 0))(
  ( (Unit!158608) )
))
(declare-fun lt!2376121 () Unit!158607)

(declare-fun lemmaFlatMapOnSingletonSet!1350 ((InoxSet Context!11406) Context!11406 Int) Unit!158607)

(assert (=> b!6417502 (= lt!2376121 (lemmaFlatMapOnSingletonSet!1350 lt!2376105 lt!2376125 lambda!354425))))

(declare-fun lt!2376115 () (InoxSet Context!11406))

(assert (=> b!6417502 (= (flatMap!1824 lt!2376115 lambda!354425) (derivationStepZipperUp!1493 lt!2376108 (h!71581 s!2326)))))

(declare-fun lt!2376096 () Unit!158607)

(assert (=> b!6417502 (= lt!2376096 (lemmaFlatMapOnSingletonSet!1350 lt!2376115 lt!2376108 lambda!354425))))

(declare-fun lt!2376107 () (InoxSet Context!11406))

(assert (=> b!6417502 (= lt!2376107 (derivationStepZipperUp!1493 lt!2376125 (h!71581 s!2326)))))

(declare-fun lt!2376111 () (InoxSet Context!11406))

(assert (=> b!6417502 (= lt!2376111 (derivationStepZipperUp!1493 lt!2376108 (h!71581 s!2326)))))

(assert (=> b!6417502 (= lt!2376105 (store ((as const (Array Context!11406 Bool)) false) lt!2376125 true))))

(assert (=> b!6417502 (= lt!2376115 (store ((as const (Array Context!11406 Bool)) false) lt!2376108 true))))

(assert (=> b!6417502 (= lt!2376108 (Context!11407 (Cons!65132 (reg!16648 (regOne!33150 r!7292)) Nil!65132)))))

(declare-fun b!6417503 () Bool)

(declare-fun e!3893967 () Bool)

(declare-fun tp!1782389 () Bool)

(declare-fun tp!1782383 () Bool)

(assert (=> b!6417503 (= e!3893967 (and tp!1782389 tp!1782383))))

(declare-fun b!6417504 () Bool)

(declare-fun tp!1782388 () Bool)

(assert (=> b!6417504 (= e!3893967 tp!1782388)))

(declare-fun b!6417505 () Bool)

(declare-fun e!3893954 () Bool)

(declare-fun tp!1782382 () Bool)

(assert (=> b!6417505 (= e!3893954 tp!1782382)))

(declare-fun b!6417506 () Bool)

(declare-fun res!2637475 () Bool)

(assert (=> b!6417506 (=> res!2637475 e!3893965)))

(declare-fun zl!343 () List!65258)

(declare-fun isEmpty!37284 (List!65258) Bool)

(assert (=> b!6417506 (= res!2637475 (not (isEmpty!37284 (t!378872 zl!343))))))

(declare-fun b!6417508 () Bool)

(declare-fun e!3893957 () Bool)

(declare-fun e!3893952 () Bool)

(assert (=> b!6417508 (= e!3893957 e!3893952)))

(declare-fun res!2637465 () Bool)

(assert (=> b!6417508 (=> res!2637465 e!3893952)))

(declare-fun lt!2376114 () (InoxSet Context!11406))

(declare-fun lt!2376106 () (InoxSet Context!11406))

(assert (=> b!6417508 (= res!2637465 (not (= lt!2376114 lt!2376106)))))

(declare-fun lt!2376128 () (InoxSet Context!11406))

(assert (=> b!6417508 (= (flatMap!1824 lt!2376128 lambda!354425) (derivationStepZipperUp!1493 lt!2376097 (h!71581 s!2326)))))

(declare-fun lt!2376095 () Unit!158607)

(assert (=> b!6417508 (= lt!2376095 (lemmaFlatMapOnSingletonSet!1350 lt!2376128 lt!2376097 lambda!354425))))

(declare-fun lt!2376123 () (InoxSet Context!11406))

(assert (=> b!6417508 (= lt!2376123 (derivationStepZipperUp!1493 lt!2376097 (h!71581 s!2326)))))

(declare-fun derivationStepZipper!2285 ((InoxSet Context!11406) C!32908) (InoxSet Context!11406))

(assert (=> b!6417508 (= lt!2376114 (derivationStepZipper!2285 lt!2376128 (h!71581 s!2326)))))

(assert (=> b!6417508 (= lt!2376128 (store ((as const (Array Context!11406 Bool)) false) lt!2376097 true))))

(declare-fun lt!2376113 () List!65256)

(assert (=> b!6417508 (= lt!2376097 (Context!11407 (Cons!65132 (reg!16648 (regOne!33150 r!7292)) lt!2376113)))))

(declare-fun b!6417509 () Bool)

(declare-fun e!3893962 () Unit!158607)

(declare-fun Unit!158609 () Unit!158607)

(assert (=> b!6417509 (= e!3893962 Unit!158609)))

(declare-fun b!6417510 () Bool)

(declare-fun res!2637458 () Bool)

(assert (=> b!6417510 (=> res!2637458 e!3893952)))

(declare-fun lt!2376122 () Regex!16319)

(assert (=> b!6417510 (= res!2637458 (not (= lt!2376122 r!7292)))))

(declare-fun b!6417511 () Bool)

(declare-fun res!2637482 () Bool)

(declare-fun e!3893963 () Bool)

(assert (=> b!6417511 (=> res!2637482 e!3893963)))

(declare-datatypes ((tuple2!66596 0))(
  ( (tuple2!66597 (_1!36601 List!65257) (_2!36601 List!65257)) )
))
(declare-fun lt!2376101 () tuple2!66596)

(declare-fun isEmpty!37285 (List!65257) Bool)

(assert (=> b!6417511 (= res!2637482 (isEmpty!37285 (_1!36601 lt!2376101)))))

(declare-fun b!6417512 () Bool)

(declare-fun res!2637481 () Bool)

(assert (=> b!6417512 (=> res!2637481 e!3893965)))

(declare-fun generalisedUnion!2163 (List!65256) Regex!16319)

(declare-fun unfocusZipperList!1740 (List!65258) List!65256)

(assert (=> b!6417512 (= res!2637481 (not (= r!7292 (generalisedUnion!2163 (unfocusZipperList!1740 zl!343)))))))

(declare-fun b!6417513 () Bool)

(declare-fun nullable!6312 (Regex!16319) Bool)

(assert (=> b!6417513 (= e!3893955 (nullable!6312 (regOne!33150 (regOne!33150 r!7292))))))

(declare-fun b!6417514 () Bool)

(declare-fun tp_is_empty!41891 () Bool)

(assert (=> b!6417514 (= e!3893967 tp_is_empty!41891)))

(declare-fun b!6417515 () Bool)

(declare-fun res!2637466 () Bool)

(declare-fun e!3893961 () Bool)

(assert (=> b!6417515 (=> res!2637466 e!3893961)))

(declare-fun isEmpty!37286 (List!65256) Bool)

(assert (=> b!6417515 (= res!2637466 (isEmpty!37286 (t!378870 (exprs!6203 (h!71582 zl!343)))))))

(declare-fun b!6417516 () Bool)

(declare-fun validRegex!8055 (Regex!16319) Bool)

(assert (=> b!6417516 (= e!3893963 (validRegex!8055 (reg!16648 (regOne!33150 r!7292))))))

(declare-fun matchRSpec!3420 (Regex!16319 List!65257) Bool)

(assert (=> b!6417516 (matchRSpec!3420 lt!2376100 (_1!36601 lt!2376101))))

(declare-fun lt!2376112 () Unit!158607)

(declare-fun mainMatchTheorem!3420 (Regex!16319 List!65257) Unit!158607)

(assert (=> b!6417516 (= lt!2376112 (mainMatchTheorem!3420 lt!2376100 (_1!36601 lt!2376101)))))

(declare-fun b!6417517 () Bool)

(declare-fun Unit!158610 () Unit!158607)

(assert (=> b!6417517 (= e!3893962 Unit!158610)))

(declare-fun lt!2376109 () (InoxSet Context!11406))

(declare-fun lt!2376124 () Unit!158607)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1150 ((InoxSet Context!11406) (InoxSet Context!11406) List!65257) Unit!158607)

(assert (=> b!6417517 (= lt!2376124 (lemmaZipperConcatMatchesSameAsBothZippers!1150 lt!2376109 lt!2376119 (t!378871 s!2326)))))

(declare-fun res!2637463 () Bool)

(assert (=> b!6417517 (= res!2637463 (matchZipper!2331 lt!2376109 (t!378871 s!2326)))))

(assert (=> b!6417517 (=> res!2637463 e!3893951)))

(assert (=> b!6417517 (= (matchZipper!2331 ((_ map or) lt!2376109 lt!2376119) (t!378871 s!2326)) e!3893951)))

(declare-fun b!6417518 () Bool)

(assert (=> b!6417518 (= e!3893952 e!3893966)))

(declare-fun res!2637473 () Bool)

(assert (=> b!6417518 (=> res!2637473 e!3893966)))

(assert (=> b!6417518 (= res!2637473 (not (= r!7292 lt!2376110)))))

(assert (=> b!6417518 (= lt!2376110 (Concat!25164 lt!2376100 (regTwo!33150 r!7292)))))

(declare-fun b!6417519 () Bool)

(declare-fun e!3893956 () Bool)

(assert (=> b!6417519 (= e!3893956 (not e!3893965))))

(declare-fun res!2637470 () Bool)

(assert (=> b!6417519 (=> res!2637470 e!3893965)))

(assert (=> b!6417519 (= res!2637470 (not ((_ is Cons!65134) zl!343)))))

(declare-fun lt!2376131 () Bool)

(declare-fun lt!2376103 () Bool)

(assert (=> b!6417519 (= lt!2376131 lt!2376103)))

(assert (=> b!6417519 (= lt!2376103 (matchRSpec!3420 r!7292 s!2326))))

(declare-fun matchR!8502 (Regex!16319 List!65257) Bool)

(assert (=> b!6417519 (= lt!2376131 (matchR!8502 r!7292 s!2326))))

(declare-fun lt!2376130 () Unit!158607)

(assert (=> b!6417519 (= lt!2376130 (mainMatchTheorem!3420 r!7292 s!2326))))

(declare-fun b!6417520 () Bool)

(declare-fun e!3893969 () Bool)

(assert (=> b!6417520 (= e!3893969 e!3893956)))

(declare-fun res!2637480 () Bool)

(assert (=> b!6417520 (=> (not res!2637480) (not e!3893956))))

(assert (=> b!6417520 (= res!2637480 (= r!7292 lt!2376122))))

(assert (=> b!6417520 (= lt!2376122 (unfocusZipper!2061 zl!343))))

(declare-fun b!6417521 () Bool)

(declare-fun res!2637472 () Bool)

(assert (=> b!6417521 (=> res!2637472 e!3893963)))

(assert (=> b!6417521 (= res!2637472 (not (matchR!8502 (regTwo!33150 r!7292) (_2!36601 lt!2376101))))))

(assert (=> b!6417522 (= e!3893965 e!3893961)))

(declare-fun res!2637457 () Bool)

(assert (=> b!6417522 (=> res!2637457 e!3893961)))

(declare-fun lt!2376126 () Bool)

(assert (=> b!6417522 (= res!2637457 (or (not (= lt!2376131 lt!2376126)) ((_ is Nil!65133) s!2326)))))

(declare-fun Exists!3389 (Int) Bool)

(assert (=> b!6417522 (= (Exists!3389 lambda!354423) (Exists!3389 lambda!354424))))

(declare-fun lt!2376098 () Unit!158607)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1926 (Regex!16319 Regex!16319 List!65257) Unit!158607)

(assert (=> b!6417522 (= lt!2376098 (lemmaExistCutMatchRandMatchRSpecEquivalent!1926 (regOne!33150 r!7292) (regTwo!33150 r!7292) s!2326))))

(assert (=> b!6417522 (= lt!2376126 (Exists!3389 lambda!354423))))

(declare-datatypes ((Option!16210 0))(
  ( (None!16209) (Some!16209 (v!52382 tuple2!66596)) )
))
(declare-fun isDefined!12913 (Option!16210) Bool)

(declare-fun findConcatSeparation!2624 (Regex!16319 Regex!16319 List!65257 List!65257 List!65257) Option!16210)

(assert (=> b!6417522 (= lt!2376126 (isDefined!12913 (findConcatSeparation!2624 (regOne!33150 r!7292) (regTwo!33150 r!7292) Nil!65133 s!2326 s!2326)))))

(declare-fun lt!2376129 () Unit!158607)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2388 (Regex!16319 Regex!16319 List!65257) Unit!158607)

(assert (=> b!6417522 (= lt!2376129 (lemmaFindConcatSeparationEquivalentToExists!2388 (regOne!33150 r!7292) (regTwo!33150 r!7292) s!2326))))

(declare-fun b!6417523 () Bool)

(declare-fun res!2637479 () Bool)

(assert (=> b!6417523 (=> res!2637479 e!3893965)))

(declare-fun generalisedConcat!1916 (List!65256) Regex!16319)

(assert (=> b!6417523 (= res!2637479 (not (= r!7292 (generalisedConcat!1916 (exprs!6203 (h!71582 zl!343))))))))

(declare-fun e!3893960 () Bool)

(declare-fun tp!1782386 () Bool)

(declare-fun b!6417524 () Bool)

(declare-fun inv!84044 (Context!11406) Bool)

(assert (=> b!6417524 (= e!3893960 (and (inv!84044 (h!71582 zl!343)) e!3893954 tp!1782386))))

(declare-fun setNonEmpty!43798 () Bool)

(declare-fun setRes!43798 () Bool)

(declare-fun setElem!43798 () Context!11406)

(declare-fun e!3893950 () Bool)

(declare-fun tp!1782387 () Bool)

(assert (=> setNonEmpty!43798 (= setRes!43798 (and tp!1782387 (inv!84044 setElem!43798) e!3893950))))

(declare-fun z!1189 () (InoxSet Context!11406))

(declare-fun setRest!43798 () (InoxSet Context!11406))

(assert (=> setNonEmpty!43798 (= z!1189 ((_ map or) (store ((as const (Array Context!11406 Bool)) false) setElem!43798 true) setRest!43798))))

(declare-fun b!6417525 () Bool)

(declare-fun res!2637468 () Bool)

(assert (=> b!6417525 (=> (not res!2637468) (not e!3893969))))

(declare-fun toList!10103 ((InoxSet Context!11406)) List!65258)

(assert (=> b!6417525 (= res!2637468 (= (toList!10103 z!1189) zl!343))))

(declare-fun b!6417526 () Bool)

(declare-fun e!3893953 () Bool)

(declare-fun tp!1782390 () Bool)

(assert (=> b!6417526 (= e!3893953 (and tp_is_empty!41891 tp!1782390))))

(declare-fun b!6417527 () Bool)

(assert (=> b!6417527 (= e!3893968 e!3893957)))

(declare-fun res!2637454 () Bool)

(assert (=> b!6417527 (=> res!2637454 e!3893957)))

(assert (=> b!6417527 (= res!2637454 (not (= lt!2376109 lt!2376106)))))

(declare-fun derivationStepZipperDown!1567 (Regex!16319 Context!11406 C!32908) (InoxSet Context!11406))

(assert (=> b!6417527 (= lt!2376106 (derivationStepZipperDown!1567 (reg!16648 (regOne!33150 r!7292)) lt!2376125 (h!71581 s!2326)))))

(assert (=> b!6417527 (= lt!2376125 (Context!11407 lt!2376113))))

(assert (=> b!6417527 (= lt!2376113 (Cons!65132 lt!2376100 (t!378870 (exprs!6203 (h!71582 zl!343)))))))

(assert (=> b!6417527 (= lt!2376100 (Star!16319 (reg!16648 (regOne!33150 r!7292))))))

(declare-fun b!6417528 () Bool)

(declare-fun res!2637478 () Bool)

(assert (=> b!6417528 (=> res!2637478 e!3893965)))

(assert (=> b!6417528 (= res!2637478 (not ((_ is Cons!65132) (exprs!6203 (h!71582 zl!343)))))))

(declare-fun b!6417529 () Bool)

(declare-fun tp!1782385 () Bool)

(assert (=> b!6417529 (= e!3893950 tp!1782385)))

(declare-fun b!6417530 () Bool)

(declare-fun res!2637476 () Bool)

(assert (=> b!6417530 (=> res!2637476 e!3893968)))

(assert (=> b!6417530 (= res!2637476 (or ((_ is Concat!25164) (regOne!33150 r!7292)) (not ((_ is Star!16319) (regOne!33150 r!7292)))))))

(assert (=> b!6417531 (= e!3893961 e!3893968)))

(declare-fun res!2637460 () Bool)

(assert (=> b!6417531 (=> res!2637460 e!3893968)))

(assert (=> b!6417531 (= res!2637460 (or (and ((_ is ElementMatch!16319) (regOne!33150 r!7292)) (= (c!1172214 (regOne!33150 r!7292)) (h!71581 s!2326))) ((_ is Union!16319) (regOne!33150 r!7292))))))

(declare-fun lt!2376116 () Unit!158607)

(assert (=> b!6417531 (= lt!2376116 e!3893962)))

(declare-fun c!1172213 () Bool)

(assert (=> b!6417531 (= c!1172213 (nullable!6312 (h!71580 (exprs!6203 (h!71582 zl!343)))))))

(assert (=> b!6417531 (= (flatMap!1824 z!1189 lambda!354425) (derivationStepZipperUp!1493 (h!71582 zl!343) (h!71581 s!2326)))))

(declare-fun lt!2376118 () Unit!158607)

(assert (=> b!6417531 (= lt!2376118 (lemmaFlatMapOnSingletonSet!1350 z!1189 (h!71582 zl!343) lambda!354425))))

(declare-fun lt!2376132 () Context!11406)

(assert (=> b!6417531 (= lt!2376119 (derivationStepZipperUp!1493 lt!2376132 (h!71581 s!2326)))))

(assert (=> b!6417531 (= lt!2376109 (derivationStepZipperDown!1567 (h!71580 (exprs!6203 (h!71582 zl!343))) lt!2376132 (h!71581 s!2326)))))

(assert (=> b!6417531 (= lt!2376132 (Context!11407 (t!378870 (exprs!6203 (h!71582 zl!343)))))))

(declare-fun lt!2376117 () (InoxSet Context!11406))

(assert (=> b!6417531 (= lt!2376117 (derivationStepZipperUp!1493 (Context!11407 (Cons!65132 (h!71580 (exprs!6203 (h!71582 zl!343))) (t!378870 (exprs!6203 (h!71582 zl!343))))) (h!71581 s!2326)))))

(declare-fun b!6417532 () Bool)

(declare-fun res!2637453 () Bool)

(assert (=> b!6417532 (=> res!2637453 e!3893963)))

(assert (=> b!6417532 (= res!2637453 (not (matchR!8502 lt!2376100 (_1!36601 lt!2376101))))))

(declare-fun b!6417533 () Bool)

(declare-fun res!2637471 () Bool)

(assert (=> b!6417533 (=> res!2637471 e!3893952)))

(assert (=> b!6417533 (= res!2637471 (not (= (matchZipper!2331 lt!2376128 s!2326) (matchZipper!2331 lt!2376114 (t!378871 s!2326)))))))

(declare-fun b!6417507 () Bool)

(declare-fun e!3893959 () Bool)

(assert (=> b!6417507 (= e!3893970 e!3893959)))

(declare-fun res!2637477 () Bool)

(assert (=> b!6417507 (=> res!2637477 e!3893959)))

(assert (=> b!6417507 (= res!2637477 (not lt!2376131))))

(declare-fun e!3893964 () Bool)

(assert (=> b!6417507 e!3893964))

(declare-fun res!2637467 () Bool)

(assert (=> b!6417507 (=> (not res!2637467) (not e!3893964))))

(assert (=> b!6417507 (= res!2637467 (= (matchR!8502 lt!2376127 s!2326) (matchRSpec!3420 lt!2376127 s!2326)))))

(declare-fun lt!2376120 () Unit!158607)

(assert (=> b!6417507 (= lt!2376120 (mainMatchTheorem!3420 lt!2376127 s!2326))))

(declare-fun res!2637459 () Bool)

(assert (=> start!634162 (=> (not res!2637459) (not e!3893969))))

(assert (=> start!634162 (= res!2637459 (validRegex!8055 r!7292))))

(assert (=> start!634162 e!3893969))

(assert (=> start!634162 e!3893967))

(declare-fun condSetEmpty!43798 () Bool)

(assert (=> start!634162 (= condSetEmpty!43798 (= z!1189 ((as const (Array Context!11406 Bool)) false)))))

(assert (=> start!634162 setRes!43798))

(assert (=> start!634162 e!3893960))

(assert (=> start!634162 e!3893953))

(declare-fun setIsEmpty!43798 () Bool)

(assert (=> setIsEmpty!43798 setRes!43798))

(declare-fun b!6417534 () Bool)

(declare-fun res!2637456 () Bool)

(assert (=> b!6417534 (=> res!2637456 e!3893970)))

(assert (=> b!6417534 (= res!2637456 (not (= (unfocusZipper!2061 (Cons!65134 lt!2376125 Nil!65134)) lt!2376110)))))

(declare-fun b!6417535 () Bool)

(assert (=> b!6417535 (= e!3893964 (or (not lt!2376131) lt!2376103))))

(declare-fun b!6417536 () Bool)

(declare-fun tp!1782381 () Bool)

(declare-fun tp!1782384 () Bool)

(assert (=> b!6417536 (= e!3893967 (and tp!1782381 tp!1782384))))

(assert (=> b!6417537 (= e!3893959 e!3893963)))

(declare-fun res!2637461 () Bool)

(assert (=> b!6417537 (=> res!2637461 e!3893963)))

(declare-fun ++!14387 (List!65257 List!65257) List!65257)

(assert (=> b!6417537 (= res!2637461 (not (= (++!14387 (_1!36601 lt!2376101) (_2!36601 lt!2376101)) s!2326)))))

(declare-fun lt!2376102 () Option!16210)

(declare-fun get!22562 (Option!16210) tuple2!66596)

(assert (=> b!6417537 (= lt!2376101 (get!22562 lt!2376102))))

(assert (=> b!6417537 (= (Exists!3389 lambda!354426) (Exists!3389 lambda!354427))))

(declare-fun lt!2376104 () Unit!158607)

(assert (=> b!6417537 (= lt!2376104 (lemmaExistCutMatchRandMatchRSpecEquivalent!1926 lt!2376100 (regTwo!33150 r!7292) s!2326))))

(assert (=> b!6417537 (= (isDefined!12913 lt!2376102) (Exists!3389 lambda!354426))))

(assert (=> b!6417537 (= lt!2376102 (findConcatSeparation!2624 lt!2376100 (regTwo!33150 r!7292) Nil!65133 s!2326 s!2326))))

(declare-fun lt!2376099 () Unit!158607)

(assert (=> b!6417537 (= lt!2376099 (lemmaFindConcatSeparationEquivalentToExists!2388 lt!2376100 (regTwo!33150 r!7292) s!2326))))

(assert (= (and start!634162 res!2637459) b!6417525))

(assert (= (and b!6417525 res!2637468) b!6417520))

(assert (= (and b!6417520 res!2637480) b!6417519))

(assert (= (and b!6417519 (not res!2637470)) b!6417506))

(assert (= (and b!6417506 (not res!2637475)) b!6417523))

(assert (= (and b!6417523 (not res!2637479)) b!6417528))

(assert (= (and b!6417528 (not res!2637478)) b!6417512))

(assert (= (and b!6417512 (not res!2637481)) b!6417500))

(assert (= (and b!6417500 (not res!2637474)) b!6417522))

(assert (= (and b!6417522 (not res!2637457)) b!6417515))

(assert (= (and b!6417515 (not res!2637466)) b!6417531))

(assert (= (and b!6417531 c!1172213) b!6417517))

(assert (= (and b!6417531 (not c!1172213)) b!6417509))

(assert (= (and b!6417517 (not res!2637463)) b!6417498))

(assert (= (and b!6417531 (not res!2637460)) b!6417499))

(assert (= (and b!6417499 res!2637464) b!6417513))

(assert (= (and b!6417499 (not res!2637469)) b!6417530))

(assert (= (and b!6417530 (not res!2637476)) b!6417527))

(assert (= (and b!6417527 (not res!2637454)) b!6417508))

(assert (= (and b!6417508 (not res!2637465)) b!6417533))

(assert (= (and b!6417533 (not res!2637471)) b!6417510))

(assert (= (and b!6417510 (not res!2637458)) b!6417518))

(assert (= (and b!6417518 (not res!2637473)) b!6417501))

(assert (= (and b!6417501 (not res!2637462)) b!6417502))

(assert (= (and b!6417502 (not res!2637455)) b!6417534))

(assert (= (and b!6417534 (not res!2637456)) b!6417507))

(assert (= (and b!6417507 res!2637467) b!6417535))

(assert (= (and b!6417507 (not res!2637477)) b!6417537))

(assert (= (and b!6417537 (not res!2637461)) b!6417532))

(assert (= (and b!6417532 (not res!2637453)) b!6417521))

(assert (= (and b!6417521 (not res!2637472)) b!6417511))

(assert (= (and b!6417511 (not res!2637482)) b!6417516))

(assert (= (and start!634162 ((_ is ElementMatch!16319) r!7292)) b!6417514))

(assert (= (and start!634162 ((_ is Concat!25164) r!7292)) b!6417503))

(assert (= (and start!634162 ((_ is Star!16319) r!7292)) b!6417504))

(assert (= (and start!634162 ((_ is Union!16319) r!7292)) b!6417536))

(assert (= (and start!634162 condSetEmpty!43798) setIsEmpty!43798))

(assert (= (and start!634162 (not condSetEmpty!43798)) setNonEmpty!43798))

(assert (= setNonEmpty!43798 b!6417529))

(assert (= b!6417524 b!6417505))

(assert (= (and start!634162 ((_ is Cons!65134) zl!343)) b!6417524))

(assert (= (and start!634162 ((_ is Cons!65133) s!2326)) b!6417526))

(declare-fun m!7212638 () Bool)

(assert (=> b!6417532 m!7212638))

(declare-fun m!7212640 () Bool)

(assert (=> b!6417516 m!7212640))

(declare-fun m!7212642 () Bool)

(assert (=> b!6417516 m!7212642))

(declare-fun m!7212644 () Bool)

(assert (=> b!6417516 m!7212644))

(declare-fun m!7212646 () Bool)

(assert (=> b!6417523 m!7212646))

(declare-fun m!7212648 () Bool)

(assert (=> b!6417512 m!7212648))

(assert (=> b!6417512 m!7212648))

(declare-fun m!7212650 () Bool)

(assert (=> b!6417512 m!7212650))

(declare-fun m!7212652 () Bool)

(assert (=> b!6417525 m!7212652))

(declare-fun m!7212654 () Bool)

(assert (=> start!634162 m!7212654))

(declare-fun m!7212656 () Bool)

(assert (=> setNonEmpty!43798 m!7212656))

(declare-fun m!7212658 () Bool)

(assert (=> b!6417515 m!7212658))

(declare-fun m!7212660 () Bool)

(assert (=> b!6417533 m!7212660))

(declare-fun m!7212662 () Bool)

(assert (=> b!6417533 m!7212662))

(declare-fun m!7212664 () Bool)

(assert (=> b!6417498 m!7212664))

(declare-fun m!7212666 () Bool)

(assert (=> b!6417511 m!7212666))

(declare-fun m!7212668 () Bool)

(assert (=> b!6417531 m!7212668))

(declare-fun m!7212670 () Bool)

(assert (=> b!6417531 m!7212670))

(declare-fun m!7212672 () Bool)

(assert (=> b!6417531 m!7212672))

(declare-fun m!7212674 () Bool)

(assert (=> b!6417531 m!7212674))

(declare-fun m!7212676 () Bool)

(assert (=> b!6417531 m!7212676))

(declare-fun m!7212678 () Bool)

(assert (=> b!6417531 m!7212678))

(declare-fun m!7212680 () Bool)

(assert (=> b!6417531 m!7212680))

(declare-fun m!7212682 () Bool)

(assert (=> b!6417517 m!7212682))

(declare-fun m!7212684 () Bool)

(assert (=> b!6417517 m!7212684))

(declare-fun m!7212686 () Bool)

(assert (=> b!6417517 m!7212686))

(declare-fun m!7212688 () Bool)

(assert (=> b!6417507 m!7212688))

(declare-fun m!7212690 () Bool)

(assert (=> b!6417507 m!7212690))

(declare-fun m!7212692 () Bool)

(assert (=> b!6417507 m!7212692))

(declare-fun m!7212694 () Bool)

(assert (=> b!6417502 m!7212694))

(declare-fun m!7212696 () Bool)

(assert (=> b!6417502 m!7212696))

(declare-fun m!7212698 () Bool)

(assert (=> b!6417502 m!7212698))

(declare-fun m!7212700 () Bool)

(assert (=> b!6417502 m!7212700))

(declare-fun m!7212702 () Bool)

(assert (=> b!6417502 m!7212702))

(declare-fun m!7212704 () Bool)

(assert (=> b!6417502 m!7212704))

(declare-fun m!7212706 () Bool)

(assert (=> b!6417502 m!7212706))

(declare-fun m!7212708 () Bool)

(assert (=> b!6417502 m!7212708))

(declare-fun m!7212710 () Bool)

(assert (=> b!6417502 m!7212710))

(declare-fun m!7212712 () Bool)

(assert (=> b!6417520 m!7212712))

(declare-fun m!7212714 () Bool)

(assert (=> b!6417506 m!7212714))

(declare-fun m!7212716 () Bool)

(assert (=> b!6417534 m!7212716))

(declare-fun m!7212718 () Bool)

(assert (=> b!6417524 m!7212718))

(declare-fun m!7212720 () Bool)

(assert (=> b!6417513 m!7212720))

(declare-fun m!7212722 () Bool)

(assert (=> b!6417501 m!7212722))

(declare-fun m!7212724 () Bool)

(assert (=> b!6417521 m!7212724))

(declare-fun m!7212726 () Bool)

(assert (=> b!6417527 m!7212726))

(declare-fun m!7212728 () Bool)

(assert (=> b!6417522 m!7212728))

(declare-fun m!7212730 () Bool)

(assert (=> b!6417522 m!7212730))

(declare-fun m!7212732 () Bool)

(assert (=> b!6417522 m!7212732))

(declare-fun m!7212734 () Bool)

(assert (=> b!6417522 m!7212734))

(assert (=> b!6417522 m!7212734))

(declare-fun m!7212736 () Bool)

(assert (=> b!6417522 m!7212736))

(assert (=> b!6417522 m!7212730))

(declare-fun m!7212738 () Bool)

(assert (=> b!6417522 m!7212738))

(declare-fun m!7212740 () Bool)

(assert (=> b!6417508 m!7212740))

(declare-fun m!7212742 () Bool)

(assert (=> b!6417508 m!7212742))

(declare-fun m!7212744 () Bool)

(assert (=> b!6417508 m!7212744))

(declare-fun m!7212746 () Bool)

(assert (=> b!6417508 m!7212746))

(declare-fun m!7212748 () Bool)

(assert (=> b!6417508 m!7212748))

(declare-fun m!7212750 () Bool)

(assert (=> b!6417519 m!7212750))

(declare-fun m!7212752 () Bool)

(assert (=> b!6417519 m!7212752))

(declare-fun m!7212754 () Bool)

(assert (=> b!6417519 m!7212754))

(declare-fun m!7212756 () Bool)

(assert (=> b!6417537 m!7212756))

(declare-fun m!7212758 () Bool)

(assert (=> b!6417537 m!7212758))

(declare-fun m!7212760 () Bool)

(assert (=> b!6417537 m!7212760))

(declare-fun m!7212762 () Bool)

(assert (=> b!6417537 m!7212762))

(declare-fun m!7212764 () Bool)

(assert (=> b!6417537 m!7212764))

(declare-fun m!7212766 () Bool)

(assert (=> b!6417537 m!7212766))

(declare-fun m!7212768 () Bool)

(assert (=> b!6417537 m!7212768))

(declare-fun m!7212770 () Bool)

(assert (=> b!6417537 m!7212770))

(assert (=> b!6417537 m!7212756))

(check-sat (not b!6417504) (not b!6417502) (not b!6417513) (not b!6417536) (not b!6417519) (not b!6417501) (not b!6417537) (not b!6417506) (not b!6417531) (not b!6417532) (not b!6417498) tp_is_empty!41891 (not setNonEmpty!43798) (not b!6417533) (not b!6417503) (not b!6417511) (not b!6417523) (not b!6417529) (not b!6417507) (not b!6417517) (not start!634162) (not b!6417516) (not b!6417526) (not b!6417521) (not b!6417524) (not b!6417534) (not b!6417522) (not b!6417505) (not b!6417508) (not b!6417525) (not b!6417520) (not b!6417527) (not b!6417515) (not b!6417512))
(check-sat)
(get-model)

(declare-fun d!2012449 () Bool)

(declare-fun choose!47669 ((InoxSet Context!11406) Int) (InoxSet Context!11406))

(assert (=> d!2012449 (= (flatMap!1824 lt!2376105 lambda!354425) (choose!47669 lt!2376105 lambda!354425))))

(declare-fun bs!1613823 () Bool)

(assert (= bs!1613823 d!2012449))

(declare-fun m!7213034 () Bool)

(assert (=> bs!1613823 m!7213034))

(assert (=> b!6417502 d!2012449))

(declare-fun d!2012453 () Bool)

(declare-fun dynLambda!25874 (Int Context!11406) (InoxSet Context!11406))

(assert (=> d!2012453 (= (flatMap!1824 lt!2376115 lambda!354425) (dynLambda!25874 lambda!354425 lt!2376108))))

(declare-fun lt!2376176 () Unit!158607)

(declare-fun choose!47670 ((InoxSet Context!11406) Context!11406 Int) Unit!158607)

(assert (=> d!2012453 (= lt!2376176 (choose!47670 lt!2376115 lt!2376108 lambda!354425))))

(assert (=> d!2012453 (= lt!2376115 (store ((as const (Array Context!11406 Bool)) false) lt!2376108 true))))

(assert (=> d!2012453 (= (lemmaFlatMapOnSingletonSet!1350 lt!2376115 lt!2376108 lambda!354425) lt!2376176)))

(declare-fun b_lambda!243989 () Bool)

(assert (=> (not b_lambda!243989) (not d!2012453)))

(declare-fun bs!1613824 () Bool)

(assert (= bs!1613824 d!2012453))

(assert (=> bs!1613824 m!7212694))

(declare-fun m!7213036 () Bool)

(assert (=> bs!1613824 m!7213036))

(declare-fun m!7213038 () Bool)

(assert (=> bs!1613824 m!7213038))

(assert (=> bs!1613824 m!7212710))

(assert (=> b!6417502 d!2012453))

(declare-fun b!6417894 () Bool)

(declare-fun e!3894173 () (InoxSet Context!11406))

(declare-fun call!551775 () (InoxSet Context!11406))

(assert (=> b!6417894 (= e!3894173 call!551775)))

(declare-fun b!6417896 () Bool)

(assert (=> b!6417896 (= e!3894173 ((as const (Array Context!11406 Bool)) false))))

(declare-fun b!6417897 () Bool)

(declare-fun e!3894174 () Bool)

(assert (=> b!6417897 (= e!3894174 (nullable!6312 (h!71580 (exprs!6203 lt!2376125))))))

(declare-fun bm!551770 () Bool)

(assert (=> bm!551770 (= call!551775 (derivationStepZipperDown!1567 (h!71580 (exprs!6203 lt!2376125)) (Context!11407 (t!378870 (exprs!6203 lt!2376125))) (h!71581 s!2326)))))

(declare-fun b!6417898 () Bool)

(declare-fun e!3894172 () (InoxSet Context!11406))

(assert (=> b!6417898 (= e!3894172 e!3894173)))

(declare-fun c!1172330 () Bool)

(assert (=> b!6417898 (= c!1172330 ((_ is Cons!65132) (exprs!6203 lt!2376125)))))

(declare-fun d!2012455 () Bool)

(declare-fun c!1172331 () Bool)

(assert (=> d!2012455 (= c!1172331 e!3894174)))

(declare-fun res!2637605 () Bool)

(assert (=> d!2012455 (=> (not res!2637605) (not e!3894174))))

(assert (=> d!2012455 (= res!2637605 ((_ is Cons!65132) (exprs!6203 lt!2376125)))))

(assert (=> d!2012455 (= (derivationStepZipperUp!1493 lt!2376125 (h!71581 s!2326)) e!3894172)))

(declare-fun b!6417895 () Bool)

(assert (=> b!6417895 (= e!3894172 ((_ map or) call!551775 (derivationStepZipperUp!1493 (Context!11407 (t!378870 (exprs!6203 lt!2376125))) (h!71581 s!2326))))))

(assert (= (and d!2012455 res!2637605) b!6417897))

(assert (= (and d!2012455 c!1172331) b!6417895))

(assert (= (and d!2012455 (not c!1172331)) b!6417898))

(assert (= (and b!6417898 c!1172330) b!6417894))

(assert (= (and b!6417898 (not c!1172330)) b!6417896))

(assert (= (or b!6417895 b!6417894) bm!551770))

(declare-fun m!7213044 () Bool)

(assert (=> b!6417897 m!7213044))

(declare-fun m!7213046 () Bool)

(assert (=> bm!551770 m!7213046))

(declare-fun m!7213048 () Bool)

(assert (=> b!6417895 m!7213048))

(assert (=> b!6417502 d!2012455))

(declare-fun d!2012459 () Bool)

(declare-fun lt!2376183 () Regex!16319)

(assert (=> d!2012459 (validRegex!8055 lt!2376183)))

(assert (=> d!2012459 (= lt!2376183 (generalisedUnion!2163 (unfocusZipperList!1740 (Cons!65134 lt!2376108 Nil!65134))))))

(assert (=> d!2012459 (= (unfocusZipper!2061 (Cons!65134 lt!2376108 Nil!65134)) lt!2376183)))

(declare-fun bs!1613835 () Bool)

(assert (= bs!1613835 d!2012459))

(declare-fun m!7213050 () Bool)

(assert (=> bs!1613835 m!7213050))

(declare-fun m!7213052 () Bool)

(assert (=> bs!1613835 m!7213052))

(assert (=> bs!1613835 m!7213052))

(declare-fun m!7213054 () Bool)

(assert (=> bs!1613835 m!7213054))

(assert (=> b!6417502 d!2012459))

(declare-fun d!2012461 () Bool)

(assert (=> d!2012461 (= (flatMap!1824 lt!2376115 lambda!354425) (choose!47669 lt!2376115 lambda!354425))))

(declare-fun bs!1613836 () Bool)

(assert (= bs!1613836 d!2012461))

(declare-fun m!7213056 () Bool)

(assert (=> bs!1613836 m!7213056))

(assert (=> b!6417502 d!2012461))

(declare-fun b!6417907 () Bool)

(declare-fun e!3894180 () (InoxSet Context!11406))

(declare-fun call!551776 () (InoxSet Context!11406))

(assert (=> b!6417907 (= e!3894180 call!551776)))

(declare-fun b!6417909 () Bool)

(assert (=> b!6417909 (= e!3894180 ((as const (Array Context!11406 Bool)) false))))

(declare-fun b!6417910 () Bool)

(declare-fun e!3894181 () Bool)

(assert (=> b!6417910 (= e!3894181 (nullable!6312 (h!71580 (exprs!6203 lt!2376108))))))

(declare-fun bm!551771 () Bool)

(assert (=> bm!551771 (= call!551776 (derivationStepZipperDown!1567 (h!71580 (exprs!6203 lt!2376108)) (Context!11407 (t!378870 (exprs!6203 lt!2376108))) (h!71581 s!2326)))))

(declare-fun b!6417911 () Bool)

(declare-fun e!3894179 () (InoxSet Context!11406))

(assert (=> b!6417911 (= e!3894179 e!3894180)))

(declare-fun c!1172332 () Bool)

(assert (=> b!6417911 (= c!1172332 ((_ is Cons!65132) (exprs!6203 lt!2376108)))))

(declare-fun d!2012463 () Bool)

(declare-fun c!1172333 () Bool)

(assert (=> d!2012463 (= c!1172333 e!3894181)))

(declare-fun res!2637614 () Bool)

(assert (=> d!2012463 (=> (not res!2637614) (not e!3894181))))

(assert (=> d!2012463 (= res!2637614 ((_ is Cons!65132) (exprs!6203 lt!2376108)))))

(assert (=> d!2012463 (= (derivationStepZipperUp!1493 lt!2376108 (h!71581 s!2326)) e!3894179)))

(declare-fun b!6417908 () Bool)

(assert (=> b!6417908 (= e!3894179 ((_ map or) call!551776 (derivationStepZipperUp!1493 (Context!11407 (t!378870 (exprs!6203 lt!2376108))) (h!71581 s!2326))))))

(assert (= (and d!2012463 res!2637614) b!6417910))

(assert (= (and d!2012463 c!1172333) b!6417908))

(assert (= (and d!2012463 (not c!1172333)) b!6417911))

(assert (= (and b!6417911 c!1172332) b!6417907))

(assert (= (and b!6417911 (not c!1172332)) b!6417909))

(assert (= (or b!6417908 b!6417907) bm!551771))

(declare-fun m!7213058 () Bool)

(assert (=> b!6417910 m!7213058))

(declare-fun m!7213060 () Bool)

(assert (=> bm!551771 m!7213060))

(declare-fun m!7213062 () Bool)

(assert (=> b!6417908 m!7213062))

(assert (=> b!6417502 d!2012463))

(declare-fun d!2012465 () Bool)

(assert (=> d!2012465 (= (flatMap!1824 lt!2376105 lambda!354425) (dynLambda!25874 lambda!354425 lt!2376125))))

(declare-fun lt!2376184 () Unit!158607)

(assert (=> d!2012465 (= lt!2376184 (choose!47670 lt!2376105 lt!2376125 lambda!354425))))

(assert (=> d!2012465 (= lt!2376105 (store ((as const (Array Context!11406 Bool)) false) lt!2376125 true))))

(assert (=> d!2012465 (= (lemmaFlatMapOnSingletonSet!1350 lt!2376105 lt!2376125 lambda!354425) lt!2376184)))

(declare-fun b_lambda!243991 () Bool)

(assert (=> (not b_lambda!243991) (not d!2012465)))

(declare-fun bs!1613838 () Bool)

(assert (= bs!1613838 d!2012465))

(assert (=> bs!1613838 m!7212702))

(declare-fun m!7213070 () Bool)

(assert (=> bs!1613838 m!7213070))

(declare-fun m!7213074 () Bool)

(assert (=> bs!1613838 m!7213074))

(assert (=> bs!1613838 m!7212704))

(assert (=> b!6417502 d!2012465))

(declare-fun b!6417964 () Bool)

(declare-fun e!3894216 () Bool)

(declare-fun e!3894221 () Bool)

(assert (=> b!6417964 (= e!3894216 e!3894221)))

(declare-fun c!1172350 () Bool)

(assert (=> b!6417964 (= c!1172350 (isEmpty!37286 (exprs!6203 (h!71582 zl!343))))))

(declare-fun b!6417966 () Bool)

(declare-fun e!3894219 () Regex!16319)

(declare-fun e!3894220 () Regex!16319)

(assert (=> b!6417966 (= e!3894219 e!3894220)))

(declare-fun c!1172351 () Bool)

(assert (=> b!6417966 (= c!1172351 ((_ is Cons!65132) (exprs!6203 (h!71582 zl!343))))))

(declare-fun b!6417967 () Bool)

(declare-fun e!3894218 () Bool)

(declare-fun lt!2376196 () Regex!16319)

(declare-fun isConcat!1242 (Regex!16319) Bool)

(assert (=> b!6417967 (= e!3894218 (isConcat!1242 lt!2376196))))

(declare-fun b!6417968 () Bool)

(assert (=> b!6417968 (= e!3894221 e!3894218)))

(declare-fun c!1172352 () Bool)

(declare-fun tail!12213 (List!65256) List!65256)

(assert (=> b!6417968 (= c!1172352 (isEmpty!37286 (tail!12213 (exprs!6203 (h!71582 zl!343)))))))

(declare-fun b!6417969 () Bool)

(assert (=> b!6417969 (= e!3894219 (h!71580 (exprs!6203 (h!71582 zl!343))))))

(declare-fun b!6417970 () Bool)

(declare-fun e!3894217 () Bool)

(assert (=> b!6417970 (= e!3894217 (isEmpty!37286 (t!378870 (exprs!6203 (h!71582 zl!343)))))))

(declare-fun b!6417971 () Bool)

(declare-fun isEmptyExpr!1719 (Regex!16319) Bool)

(assert (=> b!6417971 (= e!3894221 (isEmptyExpr!1719 lt!2376196))))

(declare-fun d!2012471 () Bool)

(assert (=> d!2012471 e!3894216))

(declare-fun res!2637636 () Bool)

(assert (=> d!2012471 (=> (not res!2637636) (not e!3894216))))

(assert (=> d!2012471 (= res!2637636 (validRegex!8055 lt!2376196))))

(assert (=> d!2012471 (= lt!2376196 e!3894219)))

(declare-fun c!1172353 () Bool)

(assert (=> d!2012471 (= c!1172353 e!3894217)))

(declare-fun res!2637635 () Bool)

(assert (=> d!2012471 (=> (not res!2637635) (not e!3894217))))

(assert (=> d!2012471 (= res!2637635 ((_ is Cons!65132) (exprs!6203 (h!71582 zl!343))))))

(declare-fun lambda!354466 () Int)

(declare-fun forall!15509 (List!65256 Int) Bool)

(assert (=> d!2012471 (forall!15509 (exprs!6203 (h!71582 zl!343)) lambda!354466)))

(assert (=> d!2012471 (= (generalisedConcat!1916 (exprs!6203 (h!71582 zl!343))) lt!2376196)))

(declare-fun b!6417965 () Bool)

(declare-fun head!13128 (List!65256) Regex!16319)

(assert (=> b!6417965 (= e!3894218 (= lt!2376196 (head!13128 (exprs!6203 (h!71582 zl!343)))))))

(declare-fun b!6417972 () Bool)

(assert (=> b!6417972 (= e!3894220 (Concat!25164 (h!71580 (exprs!6203 (h!71582 zl!343))) (generalisedConcat!1916 (t!378870 (exprs!6203 (h!71582 zl!343))))))))

(declare-fun b!6417973 () Bool)

(assert (=> b!6417973 (= e!3894220 EmptyExpr!16319)))

(assert (= (and d!2012471 res!2637635) b!6417970))

(assert (= (and d!2012471 c!1172353) b!6417969))

(assert (= (and d!2012471 (not c!1172353)) b!6417966))

(assert (= (and b!6417966 c!1172351) b!6417972))

(assert (= (and b!6417966 (not c!1172351)) b!6417973))

(assert (= (and d!2012471 res!2637636) b!6417964))

(assert (= (and b!6417964 c!1172350) b!6417971))

(assert (= (and b!6417964 (not c!1172350)) b!6417968))

(assert (= (and b!6417968 c!1172352) b!6417965))

(assert (= (and b!6417968 (not c!1172352)) b!6417967))

(declare-fun m!7213128 () Bool)

(assert (=> b!6417972 m!7213128))

(declare-fun m!7213130 () Bool)

(assert (=> b!6417964 m!7213130))

(declare-fun m!7213132 () Bool)

(assert (=> b!6417965 m!7213132))

(declare-fun m!7213134 () Bool)

(assert (=> b!6417968 m!7213134))

(assert (=> b!6417968 m!7213134))

(declare-fun m!7213136 () Bool)

(assert (=> b!6417968 m!7213136))

(assert (=> b!6417970 m!7212658))

(declare-fun m!7213138 () Bool)

(assert (=> d!2012471 m!7213138))

(declare-fun m!7213140 () Bool)

(assert (=> d!2012471 m!7213140))

(declare-fun m!7213142 () Bool)

(assert (=> b!6417971 m!7213142))

(declare-fun m!7213144 () Bool)

(assert (=> b!6417967 m!7213144))

(assert (=> b!6417523 d!2012471))

(declare-fun d!2012493 () Bool)

(declare-fun lt!2376197 () Regex!16319)

(assert (=> d!2012493 (validRegex!8055 lt!2376197)))

(assert (=> d!2012493 (= lt!2376197 (generalisedUnion!2163 (unfocusZipperList!1740 (Cons!65134 lt!2376097 Nil!65134))))))

(assert (=> d!2012493 (= (unfocusZipper!2061 (Cons!65134 lt!2376097 Nil!65134)) lt!2376197)))

(declare-fun bs!1613876 () Bool)

(assert (= bs!1613876 d!2012493))

(declare-fun m!7213146 () Bool)

(assert (=> bs!1613876 m!7213146))

(declare-fun m!7213148 () Bool)

(assert (=> bs!1613876 m!7213148))

(assert (=> bs!1613876 m!7213148))

(declare-fun m!7213150 () Bool)

(assert (=> bs!1613876 m!7213150))

(assert (=> b!6417501 d!2012493))

(declare-fun b!6418083 () Bool)

(declare-fun res!2637668 () Bool)

(declare-fun e!3894279 () Bool)

(assert (=> b!6418083 (=> (not res!2637668) (not e!3894279))))

(declare-fun lt!2376213 () Option!16210)

(assert (=> b!6418083 (= res!2637668 (matchR!8502 (regOne!33150 r!7292) (_1!36601 (get!22562 lt!2376213))))))

(declare-fun b!6418084 () Bool)

(declare-fun lt!2376212 () Unit!158607)

(declare-fun lt!2376211 () Unit!158607)

(assert (=> b!6418084 (= lt!2376212 lt!2376211)))

(assert (=> b!6418084 (= (++!14387 (++!14387 Nil!65133 (Cons!65133 (h!71581 s!2326) Nil!65133)) (t!378871 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2481 (List!65257 C!32908 List!65257 List!65257) Unit!158607)

(assert (=> b!6418084 (= lt!2376211 (lemmaMoveElementToOtherListKeepsConcatEq!2481 Nil!65133 (h!71581 s!2326) (t!378871 s!2326) s!2326))))

(declare-fun e!3894278 () Option!16210)

(assert (=> b!6418084 (= e!3894278 (findConcatSeparation!2624 (regOne!33150 r!7292) (regTwo!33150 r!7292) (++!14387 Nil!65133 (Cons!65133 (h!71581 s!2326) Nil!65133)) (t!378871 s!2326) s!2326))))

(declare-fun b!6418085 () Bool)

(assert (=> b!6418085 (= e!3894278 None!16209)))

(declare-fun b!6418086 () Bool)

(declare-fun res!2637666 () Bool)

(assert (=> b!6418086 (=> (not res!2637666) (not e!3894279))))

(assert (=> b!6418086 (= res!2637666 (matchR!8502 (regTwo!33150 r!7292) (_2!36601 (get!22562 lt!2376213))))))

(declare-fun b!6418087 () Bool)

(assert (=> b!6418087 (= e!3894279 (= (++!14387 (_1!36601 (get!22562 lt!2376213)) (_2!36601 (get!22562 lt!2376213))) s!2326))))

(declare-fun b!6418088 () Bool)

(declare-fun e!3894275 () Bool)

(assert (=> b!6418088 (= e!3894275 (matchR!8502 (regTwo!33150 r!7292) s!2326))))

(declare-fun b!6418089 () Bool)

(declare-fun e!3894277 () Option!16210)

(assert (=> b!6418089 (= e!3894277 (Some!16209 (tuple2!66597 Nil!65133 s!2326)))))

(declare-fun d!2012495 () Bool)

(declare-fun e!3894276 () Bool)

(assert (=> d!2012495 e!3894276))

(declare-fun res!2637665 () Bool)

(assert (=> d!2012495 (=> res!2637665 e!3894276)))

(assert (=> d!2012495 (= res!2637665 e!3894279)))

(declare-fun res!2637667 () Bool)

(assert (=> d!2012495 (=> (not res!2637667) (not e!3894279))))

(assert (=> d!2012495 (= res!2637667 (isDefined!12913 lt!2376213))))

(assert (=> d!2012495 (= lt!2376213 e!3894277)))

(declare-fun c!1172369 () Bool)

(assert (=> d!2012495 (= c!1172369 e!3894275)))

(declare-fun res!2637664 () Bool)

(assert (=> d!2012495 (=> (not res!2637664) (not e!3894275))))

(assert (=> d!2012495 (= res!2637664 (matchR!8502 (regOne!33150 r!7292) Nil!65133))))

(assert (=> d!2012495 (validRegex!8055 (regOne!33150 r!7292))))

(assert (=> d!2012495 (= (findConcatSeparation!2624 (regOne!33150 r!7292) (regTwo!33150 r!7292) Nil!65133 s!2326 s!2326) lt!2376213)))

(declare-fun b!6418090 () Bool)

(assert (=> b!6418090 (= e!3894276 (not (isDefined!12913 lt!2376213)))))

(declare-fun b!6418091 () Bool)

(assert (=> b!6418091 (= e!3894277 e!3894278)))

(declare-fun c!1172368 () Bool)

(assert (=> b!6418091 (= c!1172368 ((_ is Nil!65133) s!2326))))

(assert (= (and d!2012495 res!2637664) b!6418088))

(assert (= (and d!2012495 c!1172369) b!6418089))

(assert (= (and d!2012495 (not c!1172369)) b!6418091))

(assert (= (and b!6418091 c!1172368) b!6418085))

(assert (= (and b!6418091 (not c!1172368)) b!6418084))

(assert (= (and d!2012495 res!2637667) b!6418083))

(assert (= (and b!6418083 res!2637668) b!6418086))

(assert (= (and b!6418086 res!2637666) b!6418087))

(assert (= (and d!2012495 (not res!2637665)) b!6418090))

(declare-fun m!7213198 () Bool)

(assert (=> d!2012495 m!7213198))

(declare-fun m!7213200 () Bool)

(assert (=> d!2012495 m!7213200))

(declare-fun m!7213202 () Bool)

(assert (=> d!2012495 m!7213202))

(declare-fun m!7213204 () Bool)

(assert (=> b!6418088 m!7213204))

(declare-fun m!7213206 () Bool)

(assert (=> b!6418087 m!7213206))

(declare-fun m!7213208 () Bool)

(assert (=> b!6418087 m!7213208))

(declare-fun m!7213210 () Bool)

(assert (=> b!6418084 m!7213210))

(assert (=> b!6418084 m!7213210))

(declare-fun m!7213212 () Bool)

(assert (=> b!6418084 m!7213212))

(declare-fun m!7213214 () Bool)

(assert (=> b!6418084 m!7213214))

(assert (=> b!6418084 m!7213210))

(declare-fun m!7213216 () Bool)

(assert (=> b!6418084 m!7213216))

(assert (=> b!6418083 m!7213206))

(declare-fun m!7213218 () Bool)

(assert (=> b!6418083 m!7213218))

(assert (=> b!6418086 m!7213206))

(declare-fun m!7213220 () Bool)

(assert (=> b!6418086 m!7213220))

(assert (=> b!6418090 m!7213198))

(assert (=> b!6417522 d!2012495))

(declare-fun d!2012521 () Bool)

(declare-fun choose!47671 (Int) Bool)

(assert (=> d!2012521 (= (Exists!3389 lambda!354423) (choose!47671 lambda!354423))))

(declare-fun bs!1613906 () Bool)

(assert (= bs!1613906 d!2012521))

(declare-fun m!7213222 () Bool)

(assert (=> bs!1613906 m!7213222))

(assert (=> b!6417522 d!2012521))

(declare-fun d!2012523 () Bool)

(assert (=> d!2012523 (= (Exists!3389 lambda!354424) (choose!47671 lambda!354424))))

(declare-fun bs!1613907 () Bool)

(assert (= bs!1613907 d!2012523))

(declare-fun m!7213224 () Bool)

(assert (=> bs!1613907 m!7213224))

(assert (=> b!6417522 d!2012523))

(declare-fun bs!1613908 () Bool)

(declare-fun d!2012525 () Bool)

(assert (= bs!1613908 (and d!2012525 b!6417522)))

(declare-fun lambda!354471 () Int)

(assert (=> bs!1613908 (= lambda!354471 lambda!354423)))

(assert (=> bs!1613908 (not (= lambda!354471 lambda!354424))))

(declare-fun bs!1613909 () Bool)

(assert (= bs!1613909 (and d!2012525 b!6417537)))

(assert (=> bs!1613909 (= (= (regOne!33150 r!7292) lt!2376100) (= lambda!354471 lambda!354426))))

(assert (=> bs!1613909 (not (= lambda!354471 lambda!354427))))

(assert (=> d!2012525 true))

(assert (=> d!2012525 true))

(assert (=> d!2012525 true))

(assert (=> d!2012525 (= (isDefined!12913 (findConcatSeparation!2624 (regOne!33150 r!7292) (regTwo!33150 r!7292) Nil!65133 s!2326 s!2326)) (Exists!3389 lambda!354471))))

(declare-fun lt!2376216 () Unit!158607)

(declare-fun choose!47672 (Regex!16319 Regex!16319 List!65257) Unit!158607)

(assert (=> d!2012525 (= lt!2376216 (choose!47672 (regOne!33150 r!7292) (regTwo!33150 r!7292) s!2326))))

(assert (=> d!2012525 (validRegex!8055 (regOne!33150 r!7292))))

(assert (=> d!2012525 (= (lemmaFindConcatSeparationEquivalentToExists!2388 (regOne!33150 r!7292) (regTwo!33150 r!7292) s!2326) lt!2376216)))

(declare-fun bs!1613910 () Bool)

(assert (= bs!1613910 d!2012525))

(assert (=> bs!1613910 m!7213202))

(assert (=> bs!1613910 m!7212730))

(declare-fun m!7213226 () Bool)

(assert (=> bs!1613910 m!7213226))

(declare-fun m!7213228 () Bool)

(assert (=> bs!1613910 m!7213228))

(assert (=> bs!1613910 m!7212730))

(assert (=> bs!1613910 m!7212732))

(assert (=> b!6417522 d!2012525))

(declare-fun bs!1613911 () Bool)

(declare-fun d!2012527 () Bool)

(assert (= bs!1613911 (and d!2012527 b!6417522)))

(declare-fun lambda!354476 () Int)

(assert (=> bs!1613911 (= lambda!354476 lambda!354423)))

(assert (=> bs!1613911 (not (= lambda!354476 lambda!354424))))

(declare-fun bs!1613912 () Bool)

(assert (= bs!1613912 (and d!2012527 b!6417537)))

(assert (=> bs!1613912 (= (= (regOne!33150 r!7292) lt!2376100) (= lambda!354476 lambda!354426))))

(assert (=> bs!1613912 (not (= lambda!354476 lambda!354427))))

(declare-fun bs!1613913 () Bool)

(assert (= bs!1613913 (and d!2012527 d!2012525)))

(assert (=> bs!1613913 (= lambda!354476 lambda!354471)))

(assert (=> d!2012527 true))

(assert (=> d!2012527 true))

(assert (=> d!2012527 true))

(declare-fun lambda!354477 () Int)

(assert (=> bs!1613911 (not (= lambda!354477 lambda!354423))))

(assert (=> bs!1613911 (= lambda!354477 lambda!354424)))

(assert (=> bs!1613912 (not (= lambda!354477 lambda!354426))))

(assert (=> bs!1613912 (= (= (regOne!33150 r!7292) lt!2376100) (= lambda!354477 lambda!354427))))

(declare-fun bs!1613914 () Bool)

(assert (= bs!1613914 d!2012527))

(assert (=> bs!1613914 (not (= lambda!354477 lambda!354476))))

(assert (=> bs!1613913 (not (= lambda!354477 lambda!354471))))

(assert (=> d!2012527 true))

(assert (=> d!2012527 true))

(assert (=> d!2012527 true))

(assert (=> d!2012527 (= (Exists!3389 lambda!354476) (Exists!3389 lambda!354477))))

(declare-fun lt!2376219 () Unit!158607)

(declare-fun choose!47673 (Regex!16319 Regex!16319 List!65257) Unit!158607)

(assert (=> d!2012527 (= lt!2376219 (choose!47673 (regOne!33150 r!7292) (regTwo!33150 r!7292) s!2326))))

(assert (=> d!2012527 (validRegex!8055 (regOne!33150 r!7292))))

(assert (=> d!2012527 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1926 (regOne!33150 r!7292) (regTwo!33150 r!7292) s!2326) lt!2376219)))

(declare-fun m!7213230 () Bool)

(assert (=> bs!1613914 m!7213230))

(declare-fun m!7213232 () Bool)

(assert (=> bs!1613914 m!7213232))

(declare-fun m!7213234 () Bool)

(assert (=> bs!1613914 m!7213234))

(assert (=> bs!1613914 m!7213202))

(assert (=> b!6417522 d!2012527))

(declare-fun d!2012529 () Bool)

(declare-fun isEmpty!37287 (Option!16210) Bool)

(assert (=> d!2012529 (= (isDefined!12913 (findConcatSeparation!2624 (regOne!33150 r!7292) (regTwo!33150 r!7292) Nil!65133 s!2326 s!2326)) (not (isEmpty!37287 (findConcatSeparation!2624 (regOne!33150 r!7292) (regTwo!33150 r!7292) Nil!65133 s!2326 s!2326))))))

(declare-fun bs!1613915 () Bool)

(assert (= bs!1613915 d!2012529))

(assert (=> bs!1613915 m!7212730))

(declare-fun m!7213236 () Bool)

(assert (=> bs!1613915 m!7213236))

(assert (=> b!6417522 d!2012529))

(declare-fun b!6418132 () Bool)

(declare-fun res!2637703 () Bool)

(declare-fun e!3894300 () Bool)

(assert (=> b!6418132 (=> (not res!2637703) (not e!3894300))))

(declare-fun tail!12215 (List!65257) List!65257)

(assert (=> b!6418132 (= res!2637703 (isEmpty!37285 (tail!12215 (_2!36601 lt!2376101))))))

(declare-fun bm!551782 () Bool)

(declare-fun call!551787 () Bool)

(assert (=> bm!551782 (= call!551787 (isEmpty!37285 (_2!36601 lt!2376101)))))

(declare-fun b!6418133 () Bool)

(declare-fun e!3894305 () Bool)

(declare-fun head!13130 (List!65257) C!32908)

(assert (=> b!6418133 (= e!3894305 (not (= (head!13130 (_2!36601 lt!2376101)) (c!1172214 (regTwo!33150 r!7292)))))))

(declare-fun b!6418134 () Bool)

(declare-fun e!3894306 () Bool)

(declare-fun lt!2376222 () Bool)

(assert (=> b!6418134 (= e!3894306 (= lt!2376222 call!551787))))

(declare-fun b!6418135 () Bool)

(declare-fun e!3894303 () Bool)

(declare-fun e!3894302 () Bool)

(assert (=> b!6418135 (= e!3894303 e!3894302)))

(declare-fun res!2637702 () Bool)

(assert (=> b!6418135 (=> (not res!2637702) (not e!3894302))))

(assert (=> b!6418135 (= res!2637702 (not lt!2376222))))

(declare-fun b!6418136 () Bool)

(declare-fun e!3894304 () Bool)

(assert (=> b!6418136 (= e!3894306 e!3894304)))

(declare-fun c!1172377 () Bool)

(assert (=> b!6418136 (= c!1172377 ((_ is EmptyLang!16319) (regTwo!33150 r!7292)))))

(declare-fun b!6418137 () Bool)

(assert (=> b!6418137 (= e!3894304 (not lt!2376222))))

(declare-fun b!6418139 () Bool)

(declare-fun res!2637700 () Bool)

(assert (=> b!6418139 (=> res!2637700 e!3894303)))

(assert (=> b!6418139 (= res!2637700 (not ((_ is ElementMatch!16319) (regTwo!33150 r!7292))))))

(assert (=> b!6418139 (= e!3894304 e!3894303)))

(declare-fun b!6418140 () Bool)

(assert (=> b!6418140 (= e!3894300 (= (head!13130 (_2!36601 lt!2376101)) (c!1172214 (regTwo!33150 r!7292))))))

(declare-fun b!6418141 () Bool)

(declare-fun res!2637697 () Bool)

(assert (=> b!6418141 (=> (not res!2637697) (not e!3894300))))

(assert (=> b!6418141 (= res!2637697 (not call!551787))))

(declare-fun b!6418142 () Bool)

(declare-fun res!2637701 () Bool)

(assert (=> b!6418142 (=> res!2637701 e!3894305)))

(assert (=> b!6418142 (= res!2637701 (not (isEmpty!37285 (tail!12215 (_2!36601 lt!2376101)))))))

(declare-fun b!6418143 () Bool)

(declare-fun res!2637698 () Bool)

(assert (=> b!6418143 (=> res!2637698 e!3894303)))

(assert (=> b!6418143 (= res!2637698 e!3894300)))

(declare-fun res!2637699 () Bool)

(assert (=> b!6418143 (=> (not res!2637699) (not e!3894300))))

(assert (=> b!6418143 (= res!2637699 lt!2376222)))

(declare-fun b!6418144 () Bool)

(declare-fun e!3894301 () Bool)

(declare-fun derivativeStep!5023 (Regex!16319 C!32908) Regex!16319)

(assert (=> b!6418144 (= e!3894301 (matchR!8502 (derivativeStep!5023 (regTwo!33150 r!7292) (head!13130 (_2!36601 lt!2376101))) (tail!12215 (_2!36601 lt!2376101))))))

(declare-fun b!6418145 () Bool)

(assert (=> b!6418145 (= e!3894301 (nullable!6312 (regTwo!33150 r!7292)))))

(declare-fun b!6418138 () Bool)

(assert (=> b!6418138 (= e!3894302 e!3894305)))

(declare-fun res!2637704 () Bool)

(assert (=> b!6418138 (=> res!2637704 e!3894305)))

(assert (=> b!6418138 (= res!2637704 call!551787)))

(declare-fun d!2012531 () Bool)

(assert (=> d!2012531 e!3894306))

(declare-fun c!1172376 () Bool)

(assert (=> d!2012531 (= c!1172376 ((_ is EmptyExpr!16319) (regTwo!33150 r!7292)))))

(assert (=> d!2012531 (= lt!2376222 e!3894301)))

(declare-fun c!1172378 () Bool)

(assert (=> d!2012531 (= c!1172378 (isEmpty!37285 (_2!36601 lt!2376101)))))

(assert (=> d!2012531 (validRegex!8055 (regTwo!33150 r!7292))))

(assert (=> d!2012531 (= (matchR!8502 (regTwo!33150 r!7292) (_2!36601 lt!2376101)) lt!2376222)))

(assert (= (and d!2012531 c!1172378) b!6418145))

(assert (= (and d!2012531 (not c!1172378)) b!6418144))

(assert (= (and d!2012531 c!1172376) b!6418134))

(assert (= (and d!2012531 (not c!1172376)) b!6418136))

(assert (= (and b!6418136 c!1172377) b!6418137))

(assert (= (and b!6418136 (not c!1172377)) b!6418139))

(assert (= (and b!6418139 (not res!2637700)) b!6418143))

(assert (= (and b!6418143 res!2637699) b!6418141))

(assert (= (and b!6418141 res!2637697) b!6418132))

(assert (= (and b!6418132 res!2637703) b!6418140))

(assert (= (and b!6418143 (not res!2637698)) b!6418135))

(assert (= (and b!6418135 res!2637702) b!6418138))

(assert (= (and b!6418138 (not res!2637704)) b!6418142))

(assert (= (and b!6418142 (not res!2637701)) b!6418133))

(assert (= (or b!6418134 b!6418138 b!6418141) bm!551782))

(declare-fun m!7213238 () Bool)

(assert (=> b!6418144 m!7213238))

(assert (=> b!6418144 m!7213238))

(declare-fun m!7213240 () Bool)

(assert (=> b!6418144 m!7213240))

(declare-fun m!7213242 () Bool)

(assert (=> b!6418144 m!7213242))

(assert (=> b!6418144 m!7213240))

(assert (=> b!6418144 m!7213242))

(declare-fun m!7213244 () Bool)

(assert (=> b!6418144 m!7213244))

(assert (=> b!6418132 m!7213242))

(assert (=> b!6418132 m!7213242))

(declare-fun m!7213246 () Bool)

(assert (=> b!6418132 m!7213246))

(assert (=> b!6418140 m!7213238))

(declare-fun m!7213248 () Bool)

(assert (=> bm!551782 m!7213248))

(assert (=> d!2012531 m!7213248))

(declare-fun m!7213250 () Bool)

(assert (=> d!2012531 m!7213250))

(assert (=> b!6418142 m!7213242))

(assert (=> b!6418142 m!7213242))

(assert (=> b!6418142 m!7213246))

(declare-fun m!7213252 () Bool)

(assert (=> b!6418145 m!7213252))

(assert (=> b!6418133 m!7213238))

(assert (=> b!6417521 d!2012531))

(declare-fun d!2012533 () Bool)

(declare-fun lt!2376223 () Regex!16319)

(assert (=> d!2012533 (validRegex!8055 lt!2376223)))

(assert (=> d!2012533 (= lt!2376223 (generalisedUnion!2163 (unfocusZipperList!1740 zl!343)))))

(assert (=> d!2012533 (= (unfocusZipper!2061 zl!343) lt!2376223)))

(declare-fun bs!1613916 () Bool)

(assert (= bs!1613916 d!2012533))

(declare-fun m!7213254 () Bool)

(assert (=> bs!1613916 m!7213254))

(assert (=> bs!1613916 m!7212648))

(assert (=> bs!1613916 m!7212648))

(assert (=> bs!1613916 m!7212650))

(assert (=> b!6417520 d!2012533))

(declare-fun d!2012535 () Bool)

(declare-fun c!1172381 () Bool)

(assert (=> d!2012535 (= c!1172381 (isEmpty!37285 (t!378871 s!2326)))))

(declare-fun e!3894309 () Bool)

(assert (=> d!2012535 (= (matchZipper!2331 lt!2376119 (t!378871 s!2326)) e!3894309)))

(declare-fun b!6418150 () Bool)

(declare-fun nullableZipper!2084 ((InoxSet Context!11406)) Bool)

(assert (=> b!6418150 (= e!3894309 (nullableZipper!2084 lt!2376119))))

(declare-fun b!6418151 () Bool)

(assert (=> b!6418151 (= e!3894309 (matchZipper!2331 (derivationStepZipper!2285 lt!2376119 (head!13130 (t!378871 s!2326))) (tail!12215 (t!378871 s!2326))))))

(assert (= (and d!2012535 c!1172381) b!6418150))

(assert (= (and d!2012535 (not c!1172381)) b!6418151))

(declare-fun m!7213256 () Bool)

(assert (=> d!2012535 m!7213256))

(declare-fun m!7213258 () Bool)

(assert (=> b!6418150 m!7213258))

(declare-fun m!7213260 () Bool)

(assert (=> b!6418151 m!7213260))

(assert (=> b!6418151 m!7213260))

(declare-fun m!7213262 () Bool)

(assert (=> b!6418151 m!7213262))

(declare-fun m!7213264 () Bool)

(assert (=> b!6418151 m!7213264))

(assert (=> b!6418151 m!7213262))

(assert (=> b!6418151 m!7213264))

(declare-fun m!7213266 () Bool)

(assert (=> b!6418151 m!7213266))

(assert (=> b!6417498 d!2012535))

(declare-fun bs!1613917 () Bool)

(declare-fun b!6418186 () Bool)

(assert (= bs!1613917 (and b!6418186 b!6417522)))

(declare-fun lambda!354482 () Int)

(assert (=> bs!1613917 (not (= lambda!354482 lambda!354423))))

(assert (=> bs!1613917 (not (= lambda!354482 lambda!354424))))

(declare-fun bs!1613918 () Bool)

(assert (= bs!1613918 (and b!6418186 b!6417537)))

(assert (=> bs!1613918 (not (= lambda!354482 lambda!354426))))

(declare-fun bs!1613919 () Bool)

(assert (= bs!1613919 (and b!6418186 d!2012527)))

(assert (=> bs!1613919 (not (= lambda!354482 lambda!354477))))

(assert (=> bs!1613918 (not (= lambda!354482 lambda!354427))))

(assert (=> bs!1613919 (not (= lambda!354482 lambda!354476))))

(declare-fun bs!1613920 () Bool)

(assert (= bs!1613920 (and b!6418186 d!2012525)))

(assert (=> bs!1613920 (not (= lambda!354482 lambda!354471))))

(assert (=> b!6418186 true))

(assert (=> b!6418186 true))

(declare-fun bs!1613921 () Bool)

(declare-fun b!6418190 () Bool)

(assert (= bs!1613921 (and b!6418190 b!6417522)))

(declare-fun lambda!354483 () Int)

(assert (=> bs!1613921 (not (= lambda!354483 lambda!354423))))

(assert (=> bs!1613921 (= lambda!354483 lambda!354424)))

(declare-fun bs!1613922 () Bool)

(assert (= bs!1613922 (and b!6418190 b!6417537)))

(assert (=> bs!1613922 (not (= lambda!354483 lambda!354426))))

(declare-fun bs!1613923 () Bool)

(assert (= bs!1613923 (and b!6418190 d!2012527)))

(assert (=> bs!1613923 (= lambda!354483 lambda!354477)))

(declare-fun bs!1613924 () Bool)

(assert (= bs!1613924 (and b!6418190 b!6418186)))

(assert (=> bs!1613924 (not (= lambda!354483 lambda!354482))))

(assert (=> bs!1613922 (= (= (regOne!33150 r!7292) lt!2376100) (= lambda!354483 lambda!354427))))

(assert (=> bs!1613923 (not (= lambda!354483 lambda!354476))))

(declare-fun bs!1613925 () Bool)

(assert (= bs!1613925 (and b!6418190 d!2012525)))

(assert (=> bs!1613925 (not (= lambda!354483 lambda!354471))))

(assert (=> b!6418190 true))

(assert (=> b!6418190 true))

(declare-fun b!6418184 () Bool)

(declare-fun c!1172392 () Bool)

(assert (=> b!6418184 (= c!1172392 ((_ is ElementMatch!16319) r!7292))))

(declare-fun e!3894332 () Bool)

(declare-fun e!3894329 () Bool)

(assert (=> b!6418184 (= e!3894332 e!3894329)))

(declare-fun d!2012537 () Bool)

(declare-fun c!1172390 () Bool)

(assert (=> d!2012537 (= c!1172390 ((_ is EmptyExpr!16319) r!7292))))

(declare-fun e!3894330 () Bool)

(assert (=> d!2012537 (= (matchRSpec!3420 r!7292 s!2326) e!3894330)))

(declare-fun b!6418185 () Bool)

(assert (=> b!6418185 (= e!3894329 (= s!2326 (Cons!65133 (c!1172214 r!7292) Nil!65133)))))

(declare-fun e!3894331 () Bool)

(declare-fun call!551792 () Bool)

(assert (=> b!6418186 (= e!3894331 call!551792)))

(declare-fun b!6418187 () Bool)

(declare-fun call!551793 () Bool)

(assert (=> b!6418187 (= e!3894330 call!551793)))

(declare-fun c!1172393 () Bool)

(declare-fun bm!551787 () Bool)

(assert (=> bm!551787 (= call!551792 (Exists!3389 (ite c!1172393 lambda!354482 lambda!354483)))))

(declare-fun b!6418188 () Bool)

(declare-fun e!3894333 () Bool)

(declare-fun e!3894328 () Bool)

(assert (=> b!6418188 (= e!3894333 e!3894328)))

(declare-fun res!2637723 () Bool)

(assert (=> b!6418188 (= res!2637723 (matchRSpec!3420 (regOne!33151 r!7292) s!2326))))

(assert (=> b!6418188 (=> res!2637723 e!3894328)))

(declare-fun b!6418189 () Bool)

(declare-fun e!3894334 () Bool)

(assert (=> b!6418189 (= e!3894333 e!3894334)))

(assert (=> b!6418189 (= c!1172393 ((_ is Star!16319) r!7292))))

(declare-fun bm!551788 () Bool)

(assert (=> bm!551788 (= call!551793 (isEmpty!37285 s!2326))))

(assert (=> b!6418190 (= e!3894334 call!551792)))

(declare-fun b!6418191 () Bool)

(declare-fun c!1172391 () Bool)

(assert (=> b!6418191 (= c!1172391 ((_ is Union!16319) r!7292))))

(assert (=> b!6418191 (= e!3894329 e!3894333)))

(declare-fun b!6418192 () Bool)

(declare-fun res!2637721 () Bool)

(assert (=> b!6418192 (=> res!2637721 e!3894331)))

(assert (=> b!6418192 (= res!2637721 call!551793)))

(assert (=> b!6418192 (= e!3894334 e!3894331)))

(declare-fun b!6418193 () Bool)

(assert (=> b!6418193 (= e!3894328 (matchRSpec!3420 (regTwo!33151 r!7292) s!2326))))

(declare-fun b!6418194 () Bool)

(assert (=> b!6418194 (= e!3894330 e!3894332)))

(declare-fun res!2637722 () Bool)

(assert (=> b!6418194 (= res!2637722 (not ((_ is EmptyLang!16319) r!7292)))))

(assert (=> b!6418194 (=> (not res!2637722) (not e!3894332))))

(assert (= (and d!2012537 c!1172390) b!6418187))

(assert (= (and d!2012537 (not c!1172390)) b!6418194))

(assert (= (and b!6418194 res!2637722) b!6418184))

(assert (= (and b!6418184 c!1172392) b!6418185))

(assert (= (and b!6418184 (not c!1172392)) b!6418191))

(assert (= (and b!6418191 c!1172391) b!6418188))

(assert (= (and b!6418191 (not c!1172391)) b!6418189))

(assert (= (and b!6418188 (not res!2637723)) b!6418193))

(assert (= (and b!6418189 c!1172393) b!6418192))

(assert (= (and b!6418189 (not c!1172393)) b!6418190))

(assert (= (and b!6418192 (not res!2637721)) b!6418186))

(assert (= (or b!6418186 b!6418190) bm!551787))

(assert (= (or b!6418187 b!6418192) bm!551788))

(declare-fun m!7213268 () Bool)

(assert (=> bm!551787 m!7213268))

(declare-fun m!7213270 () Bool)

(assert (=> b!6418188 m!7213270))

(declare-fun m!7213272 () Bool)

(assert (=> bm!551788 m!7213272))

(declare-fun m!7213274 () Bool)

(assert (=> b!6418193 m!7213274))

(assert (=> b!6417519 d!2012537))

(declare-fun b!6418195 () Bool)

(declare-fun res!2637730 () Bool)

(declare-fun e!3894335 () Bool)

(assert (=> b!6418195 (=> (not res!2637730) (not e!3894335))))

(assert (=> b!6418195 (= res!2637730 (isEmpty!37285 (tail!12215 s!2326)))))

(declare-fun bm!551789 () Bool)

(declare-fun call!551794 () Bool)

(assert (=> bm!551789 (= call!551794 (isEmpty!37285 s!2326))))

(declare-fun b!6418196 () Bool)

(declare-fun e!3894340 () Bool)

(assert (=> b!6418196 (= e!3894340 (not (= (head!13130 s!2326) (c!1172214 r!7292))))))

(declare-fun b!6418197 () Bool)

(declare-fun e!3894341 () Bool)

(declare-fun lt!2376224 () Bool)

(assert (=> b!6418197 (= e!3894341 (= lt!2376224 call!551794))))

(declare-fun b!6418198 () Bool)

(declare-fun e!3894338 () Bool)

(declare-fun e!3894337 () Bool)

(assert (=> b!6418198 (= e!3894338 e!3894337)))

(declare-fun res!2637729 () Bool)

(assert (=> b!6418198 (=> (not res!2637729) (not e!3894337))))

(assert (=> b!6418198 (= res!2637729 (not lt!2376224))))

(declare-fun b!6418199 () Bool)

(declare-fun e!3894339 () Bool)

(assert (=> b!6418199 (= e!3894341 e!3894339)))

(declare-fun c!1172395 () Bool)

(assert (=> b!6418199 (= c!1172395 ((_ is EmptyLang!16319) r!7292))))

(declare-fun b!6418200 () Bool)

(assert (=> b!6418200 (= e!3894339 (not lt!2376224))))

(declare-fun b!6418202 () Bool)

(declare-fun res!2637727 () Bool)

(assert (=> b!6418202 (=> res!2637727 e!3894338)))

(assert (=> b!6418202 (= res!2637727 (not ((_ is ElementMatch!16319) r!7292)))))

(assert (=> b!6418202 (= e!3894339 e!3894338)))

(declare-fun b!6418203 () Bool)

(assert (=> b!6418203 (= e!3894335 (= (head!13130 s!2326) (c!1172214 r!7292)))))

(declare-fun b!6418204 () Bool)

(declare-fun res!2637724 () Bool)

(assert (=> b!6418204 (=> (not res!2637724) (not e!3894335))))

(assert (=> b!6418204 (= res!2637724 (not call!551794))))

(declare-fun b!6418205 () Bool)

(declare-fun res!2637728 () Bool)

(assert (=> b!6418205 (=> res!2637728 e!3894340)))

(assert (=> b!6418205 (= res!2637728 (not (isEmpty!37285 (tail!12215 s!2326))))))

(declare-fun b!6418206 () Bool)

(declare-fun res!2637725 () Bool)

(assert (=> b!6418206 (=> res!2637725 e!3894338)))

(assert (=> b!6418206 (= res!2637725 e!3894335)))

(declare-fun res!2637726 () Bool)

(assert (=> b!6418206 (=> (not res!2637726) (not e!3894335))))

(assert (=> b!6418206 (= res!2637726 lt!2376224)))

(declare-fun b!6418207 () Bool)

(declare-fun e!3894336 () Bool)

(assert (=> b!6418207 (= e!3894336 (matchR!8502 (derivativeStep!5023 r!7292 (head!13130 s!2326)) (tail!12215 s!2326)))))

(declare-fun b!6418208 () Bool)

(assert (=> b!6418208 (= e!3894336 (nullable!6312 r!7292))))

(declare-fun b!6418201 () Bool)

(assert (=> b!6418201 (= e!3894337 e!3894340)))

(declare-fun res!2637731 () Bool)

(assert (=> b!6418201 (=> res!2637731 e!3894340)))

(assert (=> b!6418201 (= res!2637731 call!551794)))

(declare-fun d!2012539 () Bool)

(assert (=> d!2012539 e!3894341))

(declare-fun c!1172394 () Bool)

(assert (=> d!2012539 (= c!1172394 ((_ is EmptyExpr!16319) r!7292))))

(assert (=> d!2012539 (= lt!2376224 e!3894336)))

(declare-fun c!1172396 () Bool)

(assert (=> d!2012539 (= c!1172396 (isEmpty!37285 s!2326))))

(assert (=> d!2012539 (validRegex!8055 r!7292)))

(assert (=> d!2012539 (= (matchR!8502 r!7292 s!2326) lt!2376224)))

(assert (= (and d!2012539 c!1172396) b!6418208))

(assert (= (and d!2012539 (not c!1172396)) b!6418207))

(assert (= (and d!2012539 c!1172394) b!6418197))

(assert (= (and d!2012539 (not c!1172394)) b!6418199))

(assert (= (and b!6418199 c!1172395) b!6418200))

(assert (= (and b!6418199 (not c!1172395)) b!6418202))

(assert (= (and b!6418202 (not res!2637727)) b!6418206))

(assert (= (and b!6418206 res!2637726) b!6418204))

(assert (= (and b!6418204 res!2637724) b!6418195))

(assert (= (and b!6418195 res!2637730) b!6418203))

(assert (= (and b!6418206 (not res!2637725)) b!6418198))

(assert (= (and b!6418198 res!2637729) b!6418201))

(assert (= (and b!6418201 (not res!2637731)) b!6418205))

(assert (= (and b!6418205 (not res!2637728)) b!6418196))

(assert (= (or b!6418197 b!6418201 b!6418204) bm!551789))

(declare-fun m!7213276 () Bool)

(assert (=> b!6418207 m!7213276))

(assert (=> b!6418207 m!7213276))

(declare-fun m!7213278 () Bool)

(assert (=> b!6418207 m!7213278))

(declare-fun m!7213280 () Bool)

(assert (=> b!6418207 m!7213280))

(assert (=> b!6418207 m!7213278))

(assert (=> b!6418207 m!7213280))

(declare-fun m!7213282 () Bool)

(assert (=> b!6418207 m!7213282))

(assert (=> b!6418195 m!7213280))

(assert (=> b!6418195 m!7213280))

(declare-fun m!7213284 () Bool)

(assert (=> b!6418195 m!7213284))

(assert (=> b!6418203 m!7213276))

(assert (=> bm!551789 m!7213272))

(assert (=> d!2012539 m!7213272))

(assert (=> d!2012539 m!7212654))

(assert (=> b!6418205 m!7213280))

(assert (=> b!6418205 m!7213280))

(assert (=> b!6418205 m!7213284))

(declare-fun m!7213286 () Bool)

(assert (=> b!6418208 m!7213286))

(assert (=> b!6418196 m!7213276))

(assert (=> b!6417519 d!2012539))

(declare-fun d!2012541 () Bool)

(assert (=> d!2012541 (= (matchR!8502 r!7292 s!2326) (matchRSpec!3420 r!7292 s!2326))))

(declare-fun lt!2376227 () Unit!158607)

(declare-fun choose!47679 (Regex!16319 List!65257) Unit!158607)

(assert (=> d!2012541 (= lt!2376227 (choose!47679 r!7292 s!2326))))

(assert (=> d!2012541 (validRegex!8055 r!7292)))

(assert (=> d!2012541 (= (mainMatchTheorem!3420 r!7292 s!2326) lt!2376227)))

(declare-fun bs!1613926 () Bool)

(assert (= bs!1613926 d!2012541))

(assert (=> bs!1613926 m!7212752))

(assert (=> bs!1613926 m!7212750))

(declare-fun m!7213288 () Bool)

(assert (=> bs!1613926 m!7213288))

(assert (=> bs!1613926 m!7212654))

(assert (=> b!6417519 d!2012541))

(declare-fun d!2012543 () Bool)

(assert (=> d!2012543 (= (get!22562 lt!2376102) (v!52382 lt!2376102))))

(assert (=> b!6417537 d!2012543))

(declare-fun d!2012545 () Bool)

(assert (=> d!2012545 (= (Exists!3389 lambda!354427) (choose!47671 lambda!354427))))

(declare-fun bs!1613927 () Bool)

(assert (= bs!1613927 d!2012545))

(declare-fun m!7213290 () Bool)

(assert (=> bs!1613927 m!7213290))

(assert (=> b!6417537 d!2012545))

(declare-fun bs!1613928 () Bool)

(declare-fun d!2012547 () Bool)

(assert (= bs!1613928 (and d!2012547 b!6417522)))

(declare-fun lambda!354484 () Int)

(assert (=> bs!1613928 (= (= lt!2376100 (regOne!33150 r!7292)) (= lambda!354484 lambda!354423))))

(assert (=> bs!1613928 (not (= lambda!354484 lambda!354424))))

(declare-fun bs!1613929 () Bool)

(assert (= bs!1613929 (and d!2012547 b!6417537)))

(assert (=> bs!1613929 (= lambda!354484 lambda!354426)))

(declare-fun bs!1613930 () Bool)

(assert (= bs!1613930 (and d!2012547 d!2012527)))

(assert (=> bs!1613930 (not (= lambda!354484 lambda!354477))))

(declare-fun bs!1613931 () Bool)

(assert (= bs!1613931 (and d!2012547 b!6418186)))

(assert (=> bs!1613931 (not (= lambda!354484 lambda!354482))))

(declare-fun bs!1613932 () Bool)

(assert (= bs!1613932 (and d!2012547 b!6418190)))

(assert (=> bs!1613932 (not (= lambda!354484 lambda!354483))))

(assert (=> bs!1613929 (not (= lambda!354484 lambda!354427))))

(assert (=> bs!1613930 (= (= lt!2376100 (regOne!33150 r!7292)) (= lambda!354484 lambda!354476))))

(declare-fun bs!1613933 () Bool)

(assert (= bs!1613933 (and d!2012547 d!2012525)))

(assert (=> bs!1613933 (= (= lt!2376100 (regOne!33150 r!7292)) (= lambda!354484 lambda!354471))))

(assert (=> d!2012547 true))

(assert (=> d!2012547 true))

(assert (=> d!2012547 true))

(declare-fun lambda!354485 () Int)

(assert (=> bs!1613928 (not (= lambda!354485 lambda!354423))))

(assert (=> bs!1613928 (= (= lt!2376100 (regOne!33150 r!7292)) (= lambda!354485 lambda!354424))))

(assert (=> bs!1613929 (not (= lambda!354485 lambda!354426))))

(assert (=> bs!1613931 (not (= lambda!354485 lambda!354482))))

(assert (=> bs!1613932 (= (= lt!2376100 (regOne!33150 r!7292)) (= lambda!354485 lambda!354483))))

(assert (=> bs!1613929 (= lambda!354485 lambda!354427)))

(assert (=> bs!1613930 (not (= lambda!354485 lambda!354476))))

(assert (=> bs!1613933 (not (= lambda!354485 lambda!354471))))

(assert (=> bs!1613930 (= (= lt!2376100 (regOne!33150 r!7292)) (= lambda!354485 lambda!354477))))

(declare-fun bs!1613934 () Bool)

(assert (= bs!1613934 d!2012547))

(assert (=> bs!1613934 (not (= lambda!354485 lambda!354484))))

(assert (=> d!2012547 true))

(assert (=> d!2012547 true))

(assert (=> d!2012547 true))

(assert (=> d!2012547 (= (Exists!3389 lambda!354484) (Exists!3389 lambda!354485))))

(declare-fun lt!2376228 () Unit!158607)

(assert (=> d!2012547 (= lt!2376228 (choose!47673 lt!2376100 (regTwo!33150 r!7292) s!2326))))

(assert (=> d!2012547 (validRegex!8055 lt!2376100)))

(assert (=> d!2012547 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1926 lt!2376100 (regTwo!33150 r!7292) s!2326) lt!2376228)))

(declare-fun m!7213292 () Bool)

(assert (=> bs!1613934 m!7213292))

(declare-fun m!7213294 () Bool)

(assert (=> bs!1613934 m!7213294))

(declare-fun m!7213296 () Bool)

(assert (=> bs!1613934 m!7213296))

(declare-fun m!7213298 () Bool)

(assert (=> bs!1613934 m!7213298))

(assert (=> b!6417537 d!2012547))

(declare-fun d!2012549 () Bool)

(assert (=> d!2012549 (= (Exists!3389 lambda!354426) (choose!47671 lambda!354426))))

(declare-fun bs!1613935 () Bool)

(assert (= bs!1613935 d!2012549))

(declare-fun m!7213300 () Bool)

(assert (=> bs!1613935 m!7213300))

(assert (=> b!6417537 d!2012549))

(declare-fun b!6418209 () Bool)

(declare-fun res!2637736 () Bool)

(declare-fun e!3894346 () Bool)

(assert (=> b!6418209 (=> (not res!2637736) (not e!3894346))))

(declare-fun lt!2376231 () Option!16210)

(assert (=> b!6418209 (= res!2637736 (matchR!8502 lt!2376100 (_1!36601 (get!22562 lt!2376231))))))

(declare-fun b!6418210 () Bool)

(declare-fun lt!2376230 () Unit!158607)

(declare-fun lt!2376229 () Unit!158607)

(assert (=> b!6418210 (= lt!2376230 lt!2376229)))

(assert (=> b!6418210 (= (++!14387 (++!14387 Nil!65133 (Cons!65133 (h!71581 s!2326) Nil!65133)) (t!378871 s!2326)) s!2326)))

(assert (=> b!6418210 (= lt!2376229 (lemmaMoveElementToOtherListKeepsConcatEq!2481 Nil!65133 (h!71581 s!2326) (t!378871 s!2326) s!2326))))

(declare-fun e!3894345 () Option!16210)

(assert (=> b!6418210 (= e!3894345 (findConcatSeparation!2624 lt!2376100 (regTwo!33150 r!7292) (++!14387 Nil!65133 (Cons!65133 (h!71581 s!2326) Nil!65133)) (t!378871 s!2326) s!2326))))

(declare-fun b!6418211 () Bool)

(assert (=> b!6418211 (= e!3894345 None!16209)))

(declare-fun b!6418212 () Bool)

(declare-fun res!2637734 () Bool)

(assert (=> b!6418212 (=> (not res!2637734) (not e!3894346))))

(assert (=> b!6418212 (= res!2637734 (matchR!8502 (regTwo!33150 r!7292) (_2!36601 (get!22562 lt!2376231))))))

(declare-fun b!6418213 () Bool)

(assert (=> b!6418213 (= e!3894346 (= (++!14387 (_1!36601 (get!22562 lt!2376231)) (_2!36601 (get!22562 lt!2376231))) s!2326))))

(declare-fun b!6418214 () Bool)

(declare-fun e!3894342 () Bool)

(assert (=> b!6418214 (= e!3894342 (matchR!8502 (regTwo!33150 r!7292) s!2326))))

(declare-fun b!6418215 () Bool)

(declare-fun e!3894344 () Option!16210)

(assert (=> b!6418215 (= e!3894344 (Some!16209 (tuple2!66597 Nil!65133 s!2326)))))

(declare-fun d!2012551 () Bool)

(declare-fun e!3894343 () Bool)

(assert (=> d!2012551 e!3894343))

(declare-fun res!2637733 () Bool)

(assert (=> d!2012551 (=> res!2637733 e!3894343)))

(assert (=> d!2012551 (= res!2637733 e!3894346)))

(declare-fun res!2637735 () Bool)

(assert (=> d!2012551 (=> (not res!2637735) (not e!3894346))))

(assert (=> d!2012551 (= res!2637735 (isDefined!12913 lt!2376231))))

(assert (=> d!2012551 (= lt!2376231 e!3894344)))

(declare-fun c!1172398 () Bool)

(assert (=> d!2012551 (= c!1172398 e!3894342)))

(declare-fun res!2637732 () Bool)

(assert (=> d!2012551 (=> (not res!2637732) (not e!3894342))))

(assert (=> d!2012551 (= res!2637732 (matchR!8502 lt!2376100 Nil!65133))))

(assert (=> d!2012551 (validRegex!8055 lt!2376100)))

(assert (=> d!2012551 (= (findConcatSeparation!2624 lt!2376100 (regTwo!33150 r!7292) Nil!65133 s!2326 s!2326) lt!2376231)))

(declare-fun b!6418216 () Bool)

(assert (=> b!6418216 (= e!3894343 (not (isDefined!12913 lt!2376231)))))

(declare-fun b!6418217 () Bool)

(assert (=> b!6418217 (= e!3894344 e!3894345)))

(declare-fun c!1172397 () Bool)

(assert (=> b!6418217 (= c!1172397 ((_ is Nil!65133) s!2326))))

(assert (= (and d!2012551 res!2637732) b!6418214))

(assert (= (and d!2012551 c!1172398) b!6418215))

(assert (= (and d!2012551 (not c!1172398)) b!6418217))

(assert (= (and b!6418217 c!1172397) b!6418211))

(assert (= (and b!6418217 (not c!1172397)) b!6418210))

(assert (= (and d!2012551 res!2637735) b!6418209))

(assert (= (and b!6418209 res!2637736) b!6418212))

(assert (= (and b!6418212 res!2637734) b!6418213))

(assert (= (and d!2012551 (not res!2637733)) b!6418216))

(declare-fun m!7213302 () Bool)

(assert (=> d!2012551 m!7213302))

(declare-fun m!7213304 () Bool)

(assert (=> d!2012551 m!7213304))

(assert (=> d!2012551 m!7213298))

(assert (=> b!6418214 m!7213204))

(declare-fun m!7213306 () Bool)

(assert (=> b!6418213 m!7213306))

(declare-fun m!7213308 () Bool)

(assert (=> b!6418213 m!7213308))

(assert (=> b!6418210 m!7213210))

(assert (=> b!6418210 m!7213210))

(assert (=> b!6418210 m!7213212))

(assert (=> b!6418210 m!7213214))

(assert (=> b!6418210 m!7213210))

(declare-fun m!7213310 () Bool)

(assert (=> b!6418210 m!7213310))

(assert (=> b!6418209 m!7213306))

(declare-fun m!7213312 () Bool)

(assert (=> b!6418209 m!7213312))

(assert (=> b!6418212 m!7213306))

(declare-fun m!7213314 () Bool)

(assert (=> b!6418212 m!7213314))

(assert (=> b!6418216 m!7213302))

(assert (=> b!6417537 d!2012551))

(declare-fun b!6418228 () Bool)

(declare-fun res!2637742 () Bool)

(declare-fun e!3894352 () Bool)

(assert (=> b!6418228 (=> (not res!2637742) (not e!3894352))))

(declare-fun lt!2376234 () List!65257)

(declare-fun size!40377 (List!65257) Int)

(assert (=> b!6418228 (= res!2637742 (= (size!40377 lt!2376234) (+ (size!40377 (_1!36601 lt!2376101)) (size!40377 (_2!36601 lt!2376101)))))))

(declare-fun d!2012553 () Bool)

(assert (=> d!2012553 e!3894352))

(declare-fun res!2637741 () Bool)

(assert (=> d!2012553 (=> (not res!2637741) (not e!3894352))))

(declare-fun content!12351 (List!65257) (InoxSet C!32908))

(assert (=> d!2012553 (= res!2637741 (= (content!12351 lt!2376234) ((_ map or) (content!12351 (_1!36601 lt!2376101)) (content!12351 (_2!36601 lt!2376101)))))))

(declare-fun e!3894351 () List!65257)

(assert (=> d!2012553 (= lt!2376234 e!3894351)))

(declare-fun c!1172401 () Bool)

(assert (=> d!2012553 (= c!1172401 ((_ is Nil!65133) (_1!36601 lt!2376101)))))

(assert (=> d!2012553 (= (++!14387 (_1!36601 lt!2376101) (_2!36601 lt!2376101)) lt!2376234)))

(declare-fun b!6418227 () Bool)

(assert (=> b!6418227 (= e!3894351 (Cons!65133 (h!71581 (_1!36601 lt!2376101)) (++!14387 (t!378871 (_1!36601 lt!2376101)) (_2!36601 lt!2376101))))))

(declare-fun b!6418226 () Bool)

(assert (=> b!6418226 (= e!3894351 (_2!36601 lt!2376101))))

(declare-fun b!6418229 () Bool)

(assert (=> b!6418229 (= e!3894352 (or (not (= (_2!36601 lt!2376101) Nil!65133)) (= lt!2376234 (_1!36601 lt!2376101))))))

(assert (= (and d!2012553 c!1172401) b!6418226))

(assert (= (and d!2012553 (not c!1172401)) b!6418227))

(assert (= (and d!2012553 res!2637741) b!6418228))

(assert (= (and b!6418228 res!2637742) b!6418229))

(declare-fun m!7213316 () Bool)

(assert (=> b!6418228 m!7213316))

(declare-fun m!7213318 () Bool)

(assert (=> b!6418228 m!7213318))

(declare-fun m!7213320 () Bool)

(assert (=> b!6418228 m!7213320))

(declare-fun m!7213322 () Bool)

(assert (=> d!2012553 m!7213322))

(declare-fun m!7213324 () Bool)

(assert (=> d!2012553 m!7213324))

(declare-fun m!7213326 () Bool)

(assert (=> d!2012553 m!7213326))

(declare-fun m!7213328 () Bool)

(assert (=> b!6418227 m!7213328))

(assert (=> b!6417537 d!2012553))

(declare-fun bs!1613936 () Bool)

(declare-fun d!2012555 () Bool)

(assert (= bs!1613936 (and d!2012555 b!6417522)))

(declare-fun lambda!354486 () Int)

(assert (=> bs!1613936 (= (= lt!2376100 (regOne!33150 r!7292)) (= lambda!354486 lambda!354423))))

(declare-fun bs!1613937 () Bool)

(assert (= bs!1613937 (and d!2012555 d!2012547)))

(assert (=> bs!1613937 (not (= lambda!354486 lambda!354485))))

(assert (=> bs!1613936 (not (= lambda!354486 lambda!354424))))

(declare-fun bs!1613938 () Bool)

(assert (= bs!1613938 (and d!2012555 b!6417537)))

(assert (=> bs!1613938 (= lambda!354486 lambda!354426)))

(declare-fun bs!1613939 () Bool)

(assert (= bs!1613939 (and d!2012555 b!6418186)))

(assert (=> bs!1613939 (not (= lambda!354486 lambda!354482))))

(declare-fun bs!1613940 () Bool)

(assert (= bs!1613940 (and d!2012555 b!6418190)))

(assert (=> bs!1613940 (not (= lambda!354486 lambda!354483))))

(assert (=> bs!1613938 (not (= lambda!354486 lambda!354427))))

(declare-fun bs!1613941 () Bool)

(assert (= bs!1613941 (and d!2012555 d!2012527)))

(assert (=> bs!1613941 (= (= lt!2376100 (regOne!33150 r!7292)) (= lambda!354486 lambda!354476))))

(declare-fun bs!1613942 () Bool)

(assert (= bs!1613942 (and d!2012555 d!2012525)))

(assert (=> bs!1613942 (= (= lt!2376100 (regOne!33150 r!7292)) (= lambda!354486 lambda!354471))))

(assert (=> bs!1613941 (not (= lambda!354486 lambda!354477))))

(assert (=> bs!1613937 (= lambda!354486 lambda!354484)))

(assert (=> d!2012555 true))

(assert (=> d!2012555 true))

(assert (=> d!2012555 true))

(assert (=> d!2012555 (= (isDefined!12913 (findConcatSeparation!2624 lt!2376100 (regTwo!33150 r!7292) Nil!65133 s!2326 s!2326)) (Exists!3389 lambda!354486))))

(declare-fun lt!2376235 () Unit!158607)

(assert (=> d!2012555 (= lt!2376235 (choose!47672 lt!2376100 (regTwo!33150 r!7292) s!2326))))

(assert (=> d!2012555 (validRegex!8055 lt!2376100)))

(assert (=> d!2012555 (= (lemmaFindConcatSeparationEquivalentToExists!2388 lt!2376100 (regTwo!33150 r!7292) s!2326) lt!2376235)))

(declare-fun bs!1613943 () Bool)

(assert (= bs!1613943 d!2012555))

(assert (=> bs!1613943 m!7213298))

(assert (=> bs!1613943 m!7212764))

(declare-fun m!7213330 () Bool)

(assert (=> bs!1613943 m!7213330))

(declare-fun m!7213332 () Bool)

(assert (=> bs!1613943 m!7213332))

(assert (=> bs!1613943 m!7212764))

(declare-fun m!7213334 () Bool)

(assert (=> bs!1613943 m!7213334))

(assert (=> b!6417537 d!2012555))

(declare-fun d!2012557 () Bool)

(assert (=> d!2012557 (= (isDefined!12913 lt!2376102) (not (isEmpty!37287 lt!2376102)))))

(declare-fun bs!1613944 () Bool)

(assert (= bs!1613944 d!2012557))

(declare-fun m!7213336 () Bool)

(assert (=> bs!1613944 m!7213336))

(assert (=> b!6417537 d!2012557))

(declare-fun e!3894355 () Bool)

(declare-fun d!2012559 () Bool)

(assert (=> d!2012559 (= (matchZipper!2331 ((_ map or) lt!2376109 lt!2376119) (t!378871 s!2326)) e!3894355)))

(declare-fun res!2637745 () Bool)

(assert (=> d!2012559 (=> res!2637745 e!3894355)))

(assert (=> d!2012559 (= res!2637745 (matchZipper!2331 lt!2376109 (t!378871 s!2326)))))

(declare-fun lt!2376238 () Unit!158607)

(declare-fun choose!47680 ((InoxSet Context!11406) (InoxSet Context!11406) List!65257) Unit!158607)

(assert (=> d!2012559 (= lt!2376238 (choose!47680 lt!2376109 lt!2376119 (t!378871 s!2326)))))

(assert (=> d!2012559 (= (lemmaZipperConcatMatchesSameAsBothZippers!1150 lt!2376109 lt!2376119 (t!378871 s!2326)) lt!2376238)))

(declare-fun b!6418232 () Bool)

(assert (=> b!6418232 (= e!3894355 (matchZipper!2331 lt!2376119 (t!378871 s!2326)))))

(assert (= (and d!2012559 (not res!2637745)) b!6418232))

(assert (=> d!2012559 m!7212686))

(assert (=> d!2012559 m!7212684))

(declare-fun m!7213338 () Bool)

(assert (=> d!2012559 m!7213338))

(assert (=> b!6418232 m!7212664))

(assert (=> b!6417517 d!2012559))

(declare-fun d!2012561 () Bool)

(declare-fun c!1172402 () Bool)

(assert (=> d!2012561 (= c!1172402 (isEmpty!37285 (t!378871 s!2326)))))

(declare-fun e!3894356 () Bool)

(assert (=> d!2012561 (= (matchZipper!2331 lt!2376109 (t!378871 s!2326)) e!3894356)))

(declare-fun b!6418233 () Bool)

(assert (=> b!6418233 (= e!3894356 (nullableZipper!2084 lt!2376109))))

(declare-fun b!6418234 () Bool)

(assert (=> b!6418234 (= e!3894356 (matchZipper!2331 (derivationStepZipper!2285 lt!2376109 (head!13130 (t!378871 s!2326))) (tail!12215 (t!378871 s!2326))))))

(assert (= (and d!2012561 c!1172402) b!6418233))

(assert (= (and d!2012561 (not c!1172402)) b!6418234))

(assert (=> d!2012561 m!7213256))

(declare-fun m!7213340 () Bool)

(assert (=> b!6418233 m!7213340))

(assert (=> b!6418234 m!7213260))

(assert (=> b!6418234 m!7213260))

(declare-fun m!7213342 () Bool)

(assert (=> b!6418234 m!7213342))

(assert (=> b!6418234 m!7213264))

(assert (=> b!6418234 m!7213342))

(assert (=> b!6418234 m!7213264))

(declare-fun m!7213344 () Bool)

(assert (=> b!6418234 m!7213344))

(assert (=> b!6417517 d!2012561))

(declare-fun d!2012563 () Bool)

(declare-fun c!1172403 () Bool)

(assert (=> d!2012563 (= c!1172403 (isEmpty!37285 (t!378871 s!2326)))))

(declare-fun e!3894357 () Bool)

(assert (=> d!2012563 (= (matchZipper!2331 ((_ map or) lt!2376109 lt!2376119) (t!378871 s!2326)) e!3894357)))

(declare-fun b!6418235 () Bool)

(assert (=> b!6418235 (= e!3894357 (nullableZipper!2084 ((_ map or) lt!2376109 lt!2376119)))))

(declare-fun b!6418236 () Bool)

(assert (=> b!6418236 (= e!3894357 (matchZipper!2331 (derivationStepZipper!2285 ((_ map or) lt!2376109 lt!2376119) (head!13130 (t!378871 s!2326))) (tail!12215 (t!378871 s!2326))))))

(assert (= (and d!2012563 c!1172403) b!6418235))

(assert (= (and d!2012563 (not c!1172403)) b!6418236))

(assert (=> d!2012563 m!7213256))

(declare-fun m!7213346 () Bool)

(assert (=> b!6418235 m!7213346))

(assert (=> b!6418236 m!7213260))

(assert (=> b!6418236 m!7213260))

(declare-fun m!7213348 () Bool)

(assert (=> b!6418236 m!7213348))

(assert (=> b!6418236 m!7213264))

(assert (=> b!6418236 m!7213348))

(assert (=> b!6418236 m!7213264))

(declare-fun m!7213350 () Bool)

(assert (=> b!6418236 m!7213350))

(assert (=> b!6417517 d!2012563))

(declare-fun b!6418255 () Bool)

(declare-fun e!3894378 () Bool)

(declare-fun e!3894377 () Bool)

(assert (=> b!6418255 (= e!3894378 e!3894377)))

(declare-fun res!2637760 () Bool)

(assert (=> b!6418255 (= res!2637760 (not (nullable!6312 (reg!16648 (reg!16648 (regOne!33150 r!7292))))))))

(assert (=> b!6418255 (=> (not res!2637760) (not e!3894377))))

(declare-fun b!6418256 () Bool)

(declare-fun e!3894376 () Bool)

(declare-fun call!551801 () Bool)

(assert (=> b!6418256 (= e!3894376 call!551801)))

(declare-fun b!6418257 () Bool)

(declare-fun res!2637759 () Bool)

(declare-fun e!3894375 () Bool)

(assert (=> b!6418257 (=> (not res!2637759) (not e!3894375))))

(declare-fun call!551802 () Bool)

(assert (=> b!6418257 (= res!2637759 call!551802)))

(declare-fun e!3894372 () Bool)

(assert (=> b!6418257 (= e!3894372 e!3894375)))

(declare-fun b!6418258 () Bool)

(declare-fun e!3894374 () Bool)

(assert (=> b!6418258 (= e!3894374 e!3894376)))

(declare-fun res!2637756 () Bool)

(assert (=> b!6418258 (=> (not res!2637756) (not e!3894376))))

(assert (=> b!6418258 (= res!2637756 call!551802)))

(declare-fun b!6418259 () Bool)

(assert (=> b!6418259 (= e!3894375 call!551801)))

(declare-fun bm!551796 () Bool)

(declare-fun c!1172409 () Bool)

(assert (=> bm!551796 (= call!551802 (validRegex!8055 (ite c!1172409 (regOne!33151 (reg!16648 (regOne!33150 r!7292))) (regOne!33150 (reg!16648 (regOne!33150 r!7292))))))))

(declare-fun b!6418260 () Bool)

(assert (=> b!6418260 (= e!3894378 e!3894372)))

(assert (=> b!6418260 (= c!1172409 ((_ is Union!16319) (reg!16648 (regOne!33150 r!7292))))))

(declare-fun b!6418261 () Bool)

(declare-fun call!551803 () Bool)

(assert (=> b!6418261 (= e!3894377 call!551803)))

(declare-fun c!1172408 () Bool)

(declare-fun bm!551797 () Bool)

(assert (=> bm!551797 (= call!551803 (validRegex!8055 (ite c!1172408 (reg!16648 (reg!16648 (regOne!33150 r!7292))) (ite c!1172409 (regTwo!33151 (reg!16648 (regOne!33150 r!7292))) (regTwo!33150 (reg!16648 (regOne!33150 r!7292)))))))))

(declare-fun d!2012565 () Bool)

(declare-fun res!2637758 () Bool)

(declare-fun e!3894373 () Bool)

(assert (=> d!2012565 (=> res!2637758 e!3894373)))

(assert (=> d!2012565 (= res!2637758 ((_ is ElementMatch!16319) (reg!16648 (regOne!33150 r!7292))))))

(assert (=> d!2012565 (= (validRegex!8055 (reg!16648 (regOne!33150 r!7292))) e!3894373)))

(declare-fun b!6418262 () Bool)

(assert (=> b!6418262 (= e!3894373 e!3894378)))

(assert (=> b!6418262 (= c!1172408 ((_ is Star!16319) (reg!16648 (regOne!33150 r!7292))))))

(declare-fun b!6418263 () Bool)

(declare-fun res!2637757 () Bool)

(assert (=> b!6418263 (=> res!2637757 e!3894374)))

(assert (=> b!6418263 (= res!2637757 (not ((_ is Concat!25164) (reg!16648 (regOne!33150 r!7292)))))))

(assert (=> b!6418263 (= e!3894372 e!3894374)))

(declare-fun bm!551798 () Bool)

(assert (=> bm!551798 (= call!551801 call!551803)))

(assert (= (and d!2012565 (not res!2637758)) b!6418262))

(assert (= (and b!6418262 c!1172408) b!6418255))

(assert (= (and b!6418262 (not c!1172408)) b!6418260))

(assert (= (and b!6418255 res!2637760) b!6418261))

(assert (= (and b!6418260 c!1172409) b!6418257))

(assert (= (and b!6418260 (not c!1172409)) b!6418263))

(assert (= (and b!6418257 res!2637759) b!6418259))

(assert (= (and b!6418263 (not res!2637757)) b!6418258))

(assert (= (and b!6418258 res!2637756) b!6418256))

(assert (= (or b!6418259 b!6418256) bm!551798))

(assert (= (or b!6418257 b!6418258) bm!551796))

(assert (= (or b!6418261 bm!551798) bm!551797))

(declare-fun m!7213352 () Bool)

(assert (=> b!6418255 m!7213352))

(declare-fun m!7213354 () Bool)

(assert (=> bm!551796 m!7213354))

(declare-fun m!7213356 () Bool)

(assert (=> bm!551797 m!7213356))

(assert (=> b!6417516 d!2012565))

(declare-fun bs!1613945 () Bool)

(declare-fun b!6418266 () Bool)

(assert (= bs!1613945 (and b!6418266 b!6417522)))

(declare-fun lambda!354487 () Int)

(assert (=> bs!1613945 (not (= lambda!354487 lambda!354423))))

(declare-fun bs!1613946 () Bool)

(assert (= bs!1613946 (and b!6418266 d!2012547)))

(assert (=> bs!1613946 (not (= lambda!354487 lambda!354485))))

(assert (=> bs!1613945 (not (= lambda!354487 lambda!354424))))

(declare-fun bs!1613947 () Bool)

(assert (= bs!1613947 (and b!6418266 b!6417537)))

(assert (=> bs!1613947 (not (= lambda!354487 lambda!354426))))

(declare-fun bs!1613948 () Bool)

(assert (= bs!1613948 (and b!6418266 d!2012555)))

(assert (=> bs!1613948 (not (= lambda!354487 lambda!354486))))

(declare-fun bs!1613949 () Bool)

(assert (= bs!1613949 (and b!6418266 b!6418186)))

(assert (=> bs!1613949 (= (and (= (_1!36601 lt!2376101) s!2326) (= (reg!16648 lt!2376100) (reg!16648 r!7292)) (= lt!2376100 r!7292)) (= lambda!354487 lambda!354482))))

(declare-fun bs!1613950 () Bool)

(assert (= bs!1613950 (and b!6418266 b!6418190)))

(assert (=> bs!1613950 (not (= lambda!354487 lambda!354483))))

(assert (=> bs!1613947 (not (= lambda!354487 lambda!354427))))

(declare-fun bs!1613951 () Bool)

(assert (= bs!1613951 (and b!6418266 d!2012527)))

(assert (=> bs!1613951 (not (= lambda!354487 lambda!354476))))

(declare-fun bs!1613952 () Bool)

(assert (= bs!1613952 (and b!6418266 d!2012525)))

(assert (=> bs!1613952 (not (= lambda!354487 lambda!354471))))

(assert (=> bs!1613951 (not (= lambda!354487 lambda!354477))))

(assert (=> bs!1613946 (not (= lambda!354487 lambda!354484))))

(assert (=> b!6418266 true))

(assert (=> b!6418266 true))

(declare-fun bs!1613953 () Bool)

(declare-fun b!6418270 () Bool)

(assert (= bs!1613953 (and b!6418270 b!6417522)))

(declare-fun lambda!354488 () Int)

(assert (=> bs!1613953 (not (= lambda!354488 lambda!354423))))

(declare-fun bs!1613954 () Bool)

(assert (= bs!1613954 (and b!6418270 d!2012547)))

(assert (=> bs!1613954 (= (and (= (_1!36601 lt!2376101) s!2326) (= (regOne!33150 lt!2376100) lt!2376100) (= (regTwo!33150 lt!2376100) (regTwo!33150 r!7292))) (= lambda!354488 lambda!354485))))

(declare-fun bs!1613955 () Bool)

(assert (= bs!1613955 (and b!6418270 b!6418266)))

(assert (=> bs!1613955 (not (= lambda!354488 lambda!354487))))

(assert (=> bs!1613953 (= (and (= (_1!36601 lt!2376101) s!2326) (= (regOne!33150 lt!2376100) (regOne!33150 r!7292)) (= (regTwo!33150 lt!2376100) (regTwo!33150 r!7292))) (= lambda!354488 lambda!354424))))

(declare-fun bs!1613956 () Bool)

(assert (= bs!1613956 (and b!6418270 b!6417537)))

(assert (=> bs!1613956 (not (= lambda!354488 lambda!354426))))

(declare-fun bs!1613957 () Bool)

(assert (= bs!1613957 (and b!6418270 d!2012555)))

(assert (=> bs!1613957 (not (= lambda!354488 lambda!354486))))

(declare-fun bs!1613958 () Bool)

(assert (= bs!1613958 (and b!6418270 b!6418186)))

(assert (=> bs!1613958 (not (= lambda!354488 lambda!354482))))

(declare-fun bs!1613959 () Bool)

(assert (= bs!1613959 (and b!6418270 b!6418190)))

(assert (=> bs!1613959 (= (and (= (_1!36601 lt!2376101) s!2326) (= (regOne!33150 lt!2376100) (regOne!33150 r!7292)) (= (regTwo!33150 lt!2376100) (regTwo!33150 r!7292))) (= lambda!354488 lambda!354483))))

(assert (=> bs!1613956 (= (and (= (_1!36601 lt!2376101) s!2326) (= (regOne!33150 lt!2376100) lt!2376100) (= (regTwo!33150 lt!2376100) (regTwo!33150 r!7292))) (= lambda!354488 lambda!354427))))

(declare-fun bs!1613960 () Bool)

(assert (= bs!1613960 (and b!6418270 d!2012527)))

(assert (=> bs!1613960 (not (= lambda!354488 lambda!354476))))

(declare-fun bs!1613961 () Bool)

(assert (= bs!1613961 (and b!6418270 d!2012525)))

(assert (=> bs!1613961 (not (= lambda!354488 lambda!354471))))

(assert (=> bs!1613960 (= (and (= (_1!36601 lt!2376101) s!2326) (= (regOne!33150 lt!2376100) (regOne!33150 r!7292)) (= (regTwo!33150 lt!2376100) (regTwo!33150 r!7292))) (= lambda!354488 lambda!354477))))

(assert (=> bs!1613954 (not (= lambda!354488 lambda!354484))))

(assert (=> b!6418270 true))

(assert (=> b!6418270 true))

(declare-fun b!6418264 () Bool)

(declare-fun c!1172412 () Bool)

(assert (=> b!6418264 (= c!1172412 ((_ is ElementMatch!16319) lt!2376100))))

(declare-fun e!3894383 () Bool)

(declare-fun e!3894380 () Bool)

(assert (=> b!6418264 (= e!3894383 e!3894380)))

(declare-fun d!2012567 () Bool)

(declare-fun c!1172410 () Bool)

(assert (=> d!2012567 (= c!1172410 ((_ is EmptyExpr!16319) lt!2376100))))

(declare-fun e!3894381 () Bool)

(assert (=> d!2012567 (= (matchRSpec!3420 lt!2376100 (_1!36601 lt!2376101)) e!3894381)))

(declare-fun b!6418265 () Bool)

(assert (=> b!6418265 (= e!3894380 (= (_1!36601 lt!2376101) (Cons!65133 (c!1172214 lt!2376100) Nil!65133)))))

(declare-fun e!3894382 () Bool)

(declare-fun call!551804 () Bool)

(assert (=> b!6418266 (= e!3894382 call!551804)))

(declare-fun b!6418267 () Bool)

(declare-fun call!551805 () Bool)

(assert (=> b!6418267 (= e!3894381 call!551805)))

(declare-fun bm!551799 () Bool)

(declare-fun c!1172413 () Bool)

(assert (=> bm!551799 (= call!551804 (Exists!3389 (ite c!1172413 lambda!354487 lambda!354488)))))

(declare-fun b!6418268 () Bool)

(declare-fun e!3894384 () Bool)

(declare-fun e!3894379 () Bool)

(assert (=> b!6418268 (= e!3894384 e!3894379)))

(declare-fun res!2637763 () Bool)

(assert (=> b!6418268 (= res!2637763 (matchRSpec!3420 (regOne!33151 lt!2376100) (_1!36601 lt!2376101)))))

(assert (=> b!6418268 (=> res!2637763 e!3894379)))

(declare-fun b!6418269 () Bool)

(declare-fun e!3894385 () Bool)

(assert (=> b!6418269 (= e!3894384 e!3894385)))

(assert (=> b!6418269 (= c!1172413 ((_ is Star!16319) lt!2376100))))

(declare-fun bm!551800 () Bool)

(assert (=> bm!551800 (= call!551805 (isEmpty!37285 (_1!36601 lt!2376101)))))

(assert (=> b!6418270 (= e!3894385 call!551804)))

(declare-fun b!6418271 () Bool)

(declare-fun c!1172411 () Bool)

(assert (=> b!6418271 (= c!1172411 ((_ is Union!16319) lt!2376100))))

(assert (=> b!6418271 (= e!3894380 e!3894384)))

(declare-fun b!6418272 () Bool)

(declare-fun res!2637761 () Bool)

(assert (=> b!6418272 (=> res!2637761 e!3894382)))

(assert (=> b!6418272 (= res!2637761 call!551805)))

(assert (=> b!6418272 (= e!3894385 e!3894382)))

(declare-fun b!6418273 () Bool)

(assert (=> b!6418273 (= e!3894379 (matchRSpec!3420 (regTwo!33151 lt!2376100) (_1!36601 lt!2376101)))))

(declare-fun b!6418274 () Bool)

(assert (=> b!6418274 (= e!3894381 e!3894383)))

(declare-fun res!2637762 () Bool)

(assert (=> b!6418274 (= res!2637762 (not ((_ is EmptyLang!16319) lt!2376100)))))

(assert (=> b!6418274 (=> (not res!2637762) (not e!3894383))))

(assert (= (and d!2012567 c!1172410) b!6418267))

(assert (= (and d!2012567 (not c!1172410)) b!6418274))

(assert (= (and b!6418274 res!2637762) b!6418264))

(assert (= (and b!6418264 c!1172412) b!6418265))

(assert (= (and b!6418264 (not c!1172412)) b!6418271))

(assert (= (and b!6418271 c!1172411) b!6418268))

(assert (= (and b!6418271 (not c!1172411)) b!6418269))

(assert (= (and b!6418268 (not res!2637763)) b!6418273))

(assert (= (and b!6418269 c!1172413) b!6418272))

(assert (= (and b!6418269 (not c!1172413)) b!6418270))

(assert (= (and b!6418272 (not res!2637761)) b!6418266))

(assert (= (or b!6418266 b!6418270) bm!551799))

(assert (= (or b!6418267 b!6418272) bm!551800))

(declare-fun m!7213358 () Bool)

(assert (=> bm!551799 m!7213358))

(declare-fun m!7213360 () Bool)

(assert (=> b!6418268 m!7213360))

(assert (=> bm!551800 m!7212666))

(declare-fun m!7213362 () Bool)

(assert (=> b!6418273 m!7213362))

(assert (=> b!6417516 d!2012567))

(declare-fun d!2012569 () Bool)

(assert (=> d!2012569 (= (matchR!8502 lt!2376100 (_1!36601 lt!2376101)) (matchRSpec!3420 lt!2376100 (_1!36601 lt!2376101)))))

(declare-fun lt!2376239 () Unit!158607)

(assert (=> d!2012569 (= lt!2376239 (choose!47679 lt!2376100 (_1!36601 lt!2376101)))))

(assert (=> d!2012569 (validRegex!8055 lt!2376100)))

(assert (=> d!2012569 (= (mainMatchTheorem!3420 lt!2376100 (_1!36601 lt!2376101)) lt!2376239)))

(declare-fun bs!1613962 () Bool)

(assert (= bs!1613962 d!2012569))

(assert (=> bs!1613962 m!7212638))

(assert (=> bs!1613962 m!7212642))

(declare-fun m!7213364 () Bool)

(assert (=> bs!1613962 m!7213364))

(assert (=> bs!1613962 m!7213298))

(assert (=> b!6417516 d!2012569))

(declare-fun d!2012571 () Bool)

(assert (=> d!2012571 (= (isEmpty!37286 (t!378870 (exprs!6203 (h!71582 zl!343)))) ((_ is Nil!65132) (t!378870 (exprs!6203 (h!71582 zl!343)))))))

(assert (=> b!6417515 d!2012571))

(declare-fun d!2012573 () Bool)

(declare-fun lt!2376240 () Regex!16319)

(assert (=> d!2012573 (validRegex!8055 lt!2376240)))

(assert (=> d!2012573 (= lt!2376240 (generalisedUnion!2163 (unfocusZipperList!1740 (Cons!65134 lt!2376125 Nil!65134))))))

(assert (=> d!2012573 (= (unfocusZipper!2061 (Cons!65134 lt!2376125 Nil!65134)) lt!2376240)))

(declare-fun bs!1613963 () Bool)

(assert (= bs!1613963 d!2012573))

(declare-fun m!7213366 () Bool)

(assert (=> bs!1613963 m!7213366))

(declare-fun m!7213368 () Bool)

(assert (=> bs!1613963 m!7213368))

(assert (=> bs!1613963 m!7213368))

(declare-fun m!7213370 () Bool)

(assert (=> bs!1613963 m!7213370))

(assert (=> b!6417534 d!2012573))

(declare-fun d!2012575 () Bool)

(declare-fun nullableFct!2258 (Regex!16319) Bool)

(assert (=> d!2012575 (= (nullable!6312 (regOne!33150 (regOne!33150 r!7292))) (nullableFct!2258 (regOne!33150 (regOne!33150 r!7292))))))

(declare-fun bs!1613964 () Bool)

(assert (= bs!1613964 d!2012575))

(declare-fun m!7213372 () Bool)

(assert (=> bs!1613964 m!7213372))

(assert (=> b!6417513 d!2012575))

(declare-fun d!2012577 () Bool)

(declare-fun c!1172414 () Bool)

(assert (=> d!2012577 (= c!1172414 (isEmpty!37285 s!2326))))

(declare-fun e!3894386 () Bool)

(assert (=> d!2012577 (= (matchZipper!2331 lt!2376128 s!2326) e!3894386)))

(declare-fun b!6418275 () Bool)

(assert (=> b!6418275 (= e!3894386 (nullableZipper!2084 lt!2376128))))

(declare-fun b!6418276 () Bool)

(assert (=> b!6418276 (= e!3894386 (matchZipper!2331 (derivationStepZipper!2285 lt!2376128 (head!13130 s!2326)) (tail!12215 s!2326)))))

(assert (= (and d!2012577 c!1172414) b!6418275))

(assert (= (and d!2012577 (not c!1172414)) b!6418276))

(assert (=> d!2012577 m!7213272))

(declare-fun m!7213374 () Bool)

(assert (=> b!6418275 m!7213374))

(assert (=> b!6418276 m!7213276))

(assert (=> b!6418276 m!7213276))

(declare-fun m!7213376 () Bool)

(assert (=> b!6418276 m!7213376))

(assert (=> b!6418276 m!7213280))

(assert (=> b!6418276 m!7213376))

(assert (=> b!6418276 m!7213280))

(declare-fun m!7213378 () Bool)

(assert (=> b!6418276 m!7213378))

(assert (=> b!6417533 d!2012577))

(declare-fun d!2012579 () Bool)

(declare-fun c!1172415 () Bool)

(assert (=> d!2012579 (= c!1172415 (isEmpty!37285 (t!378871 s!2326)))))

(declare-fun e!3894387 () Bool)

(assert (=> d!2012579 (= (matchZipper!2331 lt!2376114 (t!378871 s!2326)) e!3894387)))

(declare-fun b!6418277 () Bool)

(assert (=> b!6418277 (= e!3894387 (nullableZipper!2084 lt!2376114))))

(declare-fun b!6418278 () Bool)

(assert (=> b!6418278 (= e!3894387 (matchZipper!2331 (derivationStepZipper!2285 lt!2376114 (head!13130 (t!378871 s!2326))) (tail!12215 (t!378871 s!2326))))))

(assert (= (and d!2012579 c!1172415) b!6418277))

(assert (= (and d!2012579 (not c!1172415)) b!6418278))

(assert (=> d!2012579 m!7213256))

(declare-fun m!7213380 () Bool)

(assert (=> b!6418277 m!7213380))

(assert (=> b!6418278 m!7213260))

(assert (=> b!6418278 m!7213260))

(declare-fun m!7213382 () Bool)

(assert (=> b!6418278 m!7213382))

(assert (=> b!6418278 m!7213264))

(assert (=> b!6418278 m!7213382))

(assert (=> b!6418278 m!7213264))

(declare-fun m!7213384 () Bool)

(assert (=> b!6418278 m!7213384))

(assert (=> b!6417533 d!2012579))

(declare-fun bs!1613965 () Bool)

(declare-fun d!2012581 () Bool)

(assert (= bs!1613965 (and d!2012581 d!2012471)))

(declare-fun lambda!354491 () Int)

(assert (=> bs!1613965 (= lambda!354491 lambda!354466)))

(declare-fun e!3894402 () Bool)

(assert (=> d!2012581 e!3894402))

(declare-fun res!2637769 () Bool)

(assert (=> d!2012581 (=> (not res!2637769) (not e!3894402))))

(declare-fun lt!2376243 () Regex!16319)

(assert (=> d!2012581 (= res!2637769 (validRegex!8055 lt!2376243))))

(declare-fun e!3894404 () Regex!16319)

(assert (=> d!2012581 (= lt!2376243 e!3894404)))

(declare-fun c!1172424 () Bool)

(declare-fun e!3894403 () Bool)

(assert (=> d!2012581 (= c!1172424 e!3894403)))

(declare-fun res!2637768 () Bool)

(assert (=> d!2012581 (=> (not res!2637768) (not e!3894403))))

(assert (=> d!2012581 (= res!2637768 ((_ is Cons!65132) (unfocusZipperList!1740 zl!343)))))

(assert (=> d!2012581 (forall!15509 (unfocusZipperList!1740 zl!343) lambda!354491)))

(assert (=> d!2012581 (= (generalisedUnion!2163 (unfocusZipperList!1740 zl!343)) lt!2376243)))

(declare-fun b!6418299 () Bool)

(declare-fun e!3894401 () Bool)

(declare-fun e!3894400 () Bool)

(assert (=> b!6418299 (= e!3894401 e!3894400)))

(declare-fun c!1172425 () Bool)

(assert (=> b!6418299 (= c!1172425 (isEmpty!37286 (tail!12213 (unfocusZipperList!1740 zl!343))))))

(declare-fun b!6418300 () Bool)

(declare-fun e!3894405 () Regex!16319)

(assert (=> b!6418300 (= e!3894404 e!3894405)))

(declare-fun c!1172426 () Bool)

(assert (=> b!6418300 (= c!1172426 ((_ is Cons!65132) (unfocusZipperList!1740 zl!343)))))

(declare-fun b!6418301 () Bool)

(assert (=> b!6418301 (= e!3894405 EmptyLang!16319)))

(declare-fun b!6418302 () Bool)

(assert (=> b!6418302 (= e!3894400 (= lt!2376243 (head!13128 (unfocusZipperList!1740 zl!343))))))

(declare-fun b!6418303 () Bool)

(assert (=> b!6418303 (= e!3894402 e!3894401)))

(declare-fun c!1172427 () Bool)

(assert (=> b!6418303 (= c!1172427 (isEmpty!37286 (unfocusZipperList!1740 zl!343)))))

(declare-fun b!6418304 () Bool)

(assert (=> b!6418304 (= e!3894404 (h!71580 (unfocusZipperList!1740 zl!343)))))

(declare-fun b!6418305 () Bool)

(assert (=> b!6418305 (= e!3894405 (Union!16319 (h!71580 (unfocusZipperList!1740 zl!343)) (generalisedUnion!2163 (t!378870 (unfocusZipperList!1740 zl!343)))))))

(declare-fun b!6418306 () Bool)

(declare-fun isEmptyLang!1727 (Regex!16319) Bool)

(assert (=> b!6418306 (= e!3894401 (isEmptyLang!1727 lt!2376243))))

(declare-fun b!6418307 () Bool)

(assert (=> b!6418307 (= e!3894403 (isEmpty!37286 (t!378870 (unfocusZipperList!1740 zl!343))))))

(declare-fun b!6418308 () Bool)

(declare-fun isUnion!1157 (Regex!16319) Bool)

(assert (=> b!6418308 (= e!3894400 (isUnion!1157 lt!2376243))))

(assert (= (and d!2012581 res!2637768) b!6418307))

(assert (= (and d!2012581 c!1172424) b!6418304))

(assert (= (and d!2012581 (not c!1172424)) b!6418300))

(assert (= (and b!6418300 c!1172426) b!6418305))

(assert (= (and b!6418300 (not c!1172426)) b!6418301))

(assert (= (and d!2012581 res!2637769) b!6418303))

(assert (= (and b!6418303 c!1172427) b!6418306))

(assert (= (and b!6418303 (not c!1172427)) b!6418299))

(assert (= (and b!6418299 c!1172425) b!6418302))

(assert (= (and b!6418299 (not c!1172425)) b!6418308))

(assert (=> b!6418303 m!7212648))

(declare-fun m!7213386 () Bool)

(assert (=> b!6418303 m!7213386))

(assert (=> b!6418302 m!7212648))

(declare-fun m!7213388 () Bool)

(assert (=> b!6418302 m!7213388))

(declare-fun m!7213390 () Bool)

(assert (=> d!2012581 m!7213390))

(assert (=> d!2012581 m!7212648))

(declare-fun m!7213392 () Bool)

(assert (=> d!2012581 m!7213392))

(declare-fun m!7213394 () Bool)

(assert (=> b!6418307 m!7213394))

(declare-fun m!7213396 () Bool)

(assert (=> b!6418308 m!7213396))

(declare-fun m!7213398 () Bool)

(assert (=> b!6418305 m!7213398))

(assert (=> b!6418299 m!7212648))

(declare-fun m!7213400 () Bool)

(assert (=> b!6418299 m!7213400))

(assert (=> b!6418299 m!7213400))

(declare-fun m!7213402 () Bool)

(assert (=> b!6418299 m!7213402))

(declare-fun m!7213404 () Bool)

(assert (=> b!6418306 m!7213404))

(assert (=> b!6417512 d!2012581))

(declare-fun bs!1613966 () Bool)

(declare-fun d!2012583 () Bool)

(assert (= bs!1613966 (and d!2012583 d!2012471)))

(declare-fun lambda!354494 () Int)

(assert (=> bs!1613966 (= lambda!354494 lambda!354466)))

(declare-fun bs!1613967 () Bool)

(assert (= bs!1613967 (and d!2012583 d!2012581)))

(assert (=> bs!1613967 (= lambda!354494 lambda!354491)))

(declare-fun lt!2376246 () List!65256)

(assert (=> d!2012583 (forall!15509 lt!2376246 lambda!354494)))

(declare-fun e!3894408 () List!65256)

(assert (=> d!2012583 (= lt!2376246 e!3894408)))

(declare-fun c!1172430 () Bool)

(assert (=> d!2012583 (= c!1172430 ((_ is Cons!65134) zl!343))))

(assert (=> d!2012583 (= (unfocusZipperList!1740 zl!343) lt!2376246)))

(declare-fun b!6418313 () Bool)

(assert (=> b!6418313 (= e!3894408 (Cons!65132 (generalisedConcat!1916 (exprs!6203 (h!71582 zl!343))) (unfocusZipperList!1740 (t!378872 zl!343))))))

(declare-fun b!6418314 () Bool)

(assert (=> b!6418314 (= e!3894408 Nil!65132)))

(assert (= (and d!2012583 c!1172430) b!6418313))

(assert (= (and d!2012583 (not c!1172430)) b!6418314))

(declare-fun m!7213406 () Bool)

(assert (=> d!2012583 m!7213406))

(assert (=> b!6418313 m!7212646))

(declare-fun m!7213408 () Bool)

(assert (=> b!6418313 m!7213408))

(assert (=> b!6417512 d!2012583))

(declare-fun b!6418315 () Bool)

(declare-fun res!2637776 () Bool)

(declare-fun e!3894409 () Bool)

(assert (=> b!6418315 (=> (not res!2637776) (not e!3894409))))

(assert (=> b!6418315 (= res!2637776 (isEmpty!37285 (tail!12215 (_1!36601 lt!2376101))))))

(declare-fun bm!551801 () Bool)

(declare-fun call!551806 () Bool)

(assert (=> bm!551801 (= call!551806 (isEmpty!37285 (_1!36601 lt!2376101)))))

(declare-fun b!6418316 () Bool)

(declare-fun e!3894414 () Bool)

(assert (=> b!6418316 (= e!3894414 (not (= (head!13130 (_1!36601 lt!2376101)) (c!1172214 lt!2376100))))))

(declare-fun b!6418317 () Bool)

(declare-fun e!3894415 () Bool)

(declare-fun lt!2376247 () Bool)

(assert (=> b!6418317 (= e!3894415 (= lt!2376247 call!551806))))

(declare-fun b!6418318 () Bool)

(declare-fun e!3894412 () Bool)

(declare-fun e!3894411 () Bool)

(assert (=> b!6418318 (= e!3894412 e!3894411)))

(declare-fun res!2637775 () Bool)

(assert (=> b!6418318 (=> (not res!2637775) (not e!3894411))))

(assert (=> b!6418318 (= res!2637775 (not lt!2376247))))

(declare-fun b!6418319 () Bool)

(declare-fun e!3894413 () Bool)

(assert (=> b!6418319 (= e!3894415 e!3894413)))

(declare-fun c!1172432 () Bool)

(assert (=> b!6418319 (= c!1172432 ((_ is EmptyLang!16319) lt!2376100))))

(declare-fun b!6418320 () Bool)

(assert (=> b!6418320 (= e!3894413 (not lt!2376247))))

(declare-fun b!6418322 () Bool)

(declare-fun res!2637773 () Bool)

(assert (=> b!6418322 (=> res!2637773 e!3894412)))

(assert (=> b!6418322 (= res!2637773 (not ((_ is ElementMatch!16319) lt!2376100)))))

(assert (=> b!6418322 (= e!3894413 e!3894412)))

(declare-fun b!6418323 () Bool)

(assert (=> b!6418323 (= e!3894409 (= (head!13130 (_1!36601 lt!2376101)) (c!1172214 lt!2376100)))))

(declare-fun b!6418324 () Bool)

(declare-fun res!2637770 () Bool)

(assert (=> b!6418324 (=> (not res!2637770) (not e!3894409))))

(assert (=> b!6418324 (= res!2637770 (not call!551806))))

(declare-fun b!6418325 () Bool)

(declare-fun res!2637774 () Bool)

(assert (=> b!6418325 (=> res!2637774 e!3894414)))

(assert (=> b!6418325 (= res!2637774 (not (isEmpty!37285 (tail!12215 (_1!36601 lt!2376101)))))))

(declare-fun b!6418326 () Bool)

(declare-fun res!2637771 () Bool)

(assert (=> b!6418326 (=> res!2637771 e!3894412)))

(assert (=> b!6418326 (= res!2637771 e!3894409)))

(declare-fun res!2637772 () Bool)

(assert (=> b!6418326 (=> (not res!2637772) (not e!3894409))))

(assert (=> b!6418326 (= res!2637772 lt!2376247)))

(declare-fun b!6418327 () Bool)

(declare-fun e!3894410 () Bool)

(assert (=> b!6418327 (= e!3894410 (matchR!8502 (derivativeStep!5023 lt!2376100 (head!13130 (_1!36601 lt!2376101))) (tail!12215 (_1!36601 lt!2376101))))))

(declare-fun b!6418328 () Bool)

(assert (=> b!6418328 (= e!3894410 (nullable!6312 lt!2376100))))

(declare-fun b!6418321 () Bool)

(assert (=> b!6418321 (= e!3894411 e!3894414)))

(declare-fun res!2637777 () Bool)

(assert (=> b!6418321 (=> res!2637777 e!3894414)))

(assert (=> b!6418321 (= res!2637777 call!551806)))

(declare-fun d!2012585 () Bool)

(assert (=> d!2012585 e!3894415))

(declare-fun c!1172431 () Bool)

(assert (=> d!2012585 (= c!1172431 ((_ is EmptyExpr!16319) lt!2376100))))

(assert (=> d!2012585 (= lt!2376247 e!3894410)))

(declare-fun c!1172433 () Bool)

(assert (=> d!2012585 (= c!1172433 (isEmpty!37285 (_1!36601 lt!2376101)))))

(assert (=> d!2012585 (validRegex!8055 lt!2376100)))

(assert (=> d!2012585 (= (matchR!8502 lt!2376100 (_1!36601 lt!2376101)) lt!2376247)))

(assert (= (and d!2012585 c!1172433) b!6418328))

(assert (= (and d!2012585 (not c!1172433)) b!6418327))

(assert (= (and d!2012585 c!1172431) b!6418317))

(assert (= (and d!2012585 (not c!1172431)) b!6418319))

(assert (= (and b!6418319 c!1172432) b!6418320))

(assert (= (and b!6418319 (not c!1172432)) b!6418322))

(assert (= (and b!6418322 (not res!2637773)) b!6418326))

(assert (= (and b!6418326 res!2637772) b!6418324))

(assert (= (and b!6418324 res!2637770) b!6418315))

(assert (= (and b!6418315 res!2637776) b!6418323))

(assert (= (and b!6418326 (not res!2637771)) b!6418318))

(assert (= (and b!6418318 res!2637775) b!6418321))

(assert (= (and b!6418321 (not res!2637777)) b!6418325))

(assert (= (and b!6418325 (not res!2637774)) b!6418316))

(assert (= (or b!6418317 b!6418321 b!6418324) bm!551801))

(declare-fun m!7213410 () Bool)

(assert (=> b!6418327 m!7213410))

(assert (=> b!6418327 m!7213410))

(declare-fun m!7213412 () Bool)

(assert (=> b!6418327 m!7213412))

(declare-fun m!7213414 () Bool)

(assert (=> b!6418327 m!7213414))

(assert (=> b!6418327 m!7213412))

(assert (=> b!6418327 m!7213414))

(declare-fun m!7213416 () Bool)

(assert (=> b!6418327 m!7213416))

(assert (=> b!6418315 m!7213414))

(assert (=> b!6418315 m!7213414))

(declare-fun m!7213418 () Bool)

(assert (=> b!6418315 m!7213418))

(assert (=> b!6418323 m!7213410))

(assert (=> bm!551801 m!7212666))

(assert (=> d!2012585 m!7212666))

(assert (=> d!2012585 m!7213298))

(assert (=> b!6418325 m!7213414))

(assert (=> b!6418325 m!7213414))

(assert (=> b!6418325 m!7213418))

(declare-fun m!7213420 () Bool)

(assert (=> b!6418328 m!7213420))

(assert (=> b!6418316 m!7213410))

(assert (=> b!6417532 d!2012585))

(declare-fun d!2012587 () Bool)

(assert (=> d!2012587 (= (isEmpty!37285 (_1!36601 lt!2376101)) ((_ is Nil!65133) (_1!36601 lt!2376101)))))

(assert (=> b!6417511 d!2012587))

(declare-fun b!6418351 () Bool)

(declare-fun e!3894428 () (InoxSet Context!11406))

(declare-fun e!3894433 () (InoxSet Context!11406))

(assert (=> b!6418351 (= e!3894428 e!3894433)))

(declare-fun c!1172444 () Bool)

(assert (=> b!6418351 (= c!1172444 ((_ is Concat!25164) (h!71580 (exprs!6203 (h!71582 zl!343)))))))

(declare-fun b!6418353 () Bool)

(declare-fun c!1172448 () Bool)

(declare-fun e!3894432 () Bool)

(assert (=> b!6418353 (= c!1172448 e!3894432)))

(declare-fun res!2637780 () Bool)

(assert (=> b!6418353 (=> (not res!2637780) (not e!3894432))))

(assert (=> b!6418353 (= res!2637780 ((_ is Concat!25164) (h!71580 (exprs!6203 (h!71582 zl!343)))))))

(declare-fun e!3894431 () (InoxSet Context!11406))

(assert (=> b!6418353 (= e!3894431 e!3894428)))

(declare-fun bm!551814 () Bool)

(declare-fun c!1172447 () Bool)

(declare-fun call!551819 () List!65256)

(declare-fun call!551821 () (InoxSet Context!11406))

(assert (=> bm!551814 (= call!551821 (derivationStepZipperDown!1567 (ite c!1172447 (regOne!33151 (h!71580 (exprs!6203 (h!71582 zl!343)))) (ite c!1172448 (regTwo!33150 (h!71580 (exprs!6203 (h!71582 zl!343)))) (ite c!1172444 (regOne!33150 (h!71580 (exprs!6203 (h!71582 zl!343)))) (reg!16648 (h!71580 (exprs!6203 (h!71582 zl!343))))))) (ite (or c!1172447 c!1172448) lt!2376132 (Context!11407 call!551819)) (h!71581 s!2326)))))

(declare-fun b!6418354 () Bool)

(declare-fun e!3894430 () (InoxSet Context!11406))

(assert (=> b!6418354 (= e!3894430 e!3894431)))

(assert (=> b!6418354 (= c!1172447 ((_ is Union!16319) (h!71580 (exprs!6203 (h!71582 zl!343)))))))

(declare-fun bm!551815 () Bool)

(declare-fun call!551824 () (InoxSet Context!11406))

(assert (=> bm!551815 (= call!551824 call!551821)))

(declare-fun bm!551816 () Bool)

(declare-fun call!551822 () (InoxSet Context!11406))

(assert (=> bm!551816 (= call!551822 call!551824)))

(declare-fun b!6418355 () Bool)

(declare-fun c!1172445 () Bool)

(assert (=> b!6418355 (= c!1172445 ((_ is Star!16319) (h!71580 (exprs!6203 (h!71582 zl!343)))))))

(declare-fun e!3894429 () (InoxSet Context!11406))

(assert (=> b!6418355 (= e!3894433 e!3894429)))

(declare-fun bm!551817 () Bool)

(declare-fun call!551820 () List!65256)

(declare-fun $colon$colon!2180 (List!65256 Regex!16319) List!65256)

(assert (=> bm!551817 (= call!551820 ($colon$colon!2180 (exprs!6203 lt!2376132) (ite (or c!1172448 c!1172444) (regTwo!33150 (h!71580 (exprs!6203 (h!71582 zl!343)))) (h!71580 (exprs!6203 (h!71582 zl!343))))))))

(declare-fun b!6418356 () Bool)

(declare-fun call!551823 () (InoxSet Context!11406))

(assert (=> b!6418356 (= e!3894431 ((_ map or) call!551821 call!551823))))

(declare-fun d!2012589 () Bool)

(declare-fun c!1172446 () Bool)

(assert (=> d!2012589 (= c!1172446 (and ((_ is ElementMatch!16319) (h!71580 (exprs!6203 (h!71582 zl!343)))) (= (c!1172214 (h!71580 (exprs!6203 (h!71582 zl!343)))) (h!71581 s!2326))))))

(assert (=> d!2012589 (= (derivationStepZipperDown!1567 (h!71580 (exprs!6203 (h!71582 zl!343))) lt!2376132 (h!71581 s!2326)) e!3894430)))

(declare-fun b!6418352 () Bool)

(assert (=> b!6418352 (= e!3894430 (store ((as const (Array Context!11406 Bool)) false) lt!2376132 true))))

(declare-fun b!6418357 () Bool)

(assert (=> b!6418357 (= e!3894428 ((_ map or) call!551823 call!551824))))

(declare-fun bm!551818 () Bool)

(assert (=> bm!551818 (= call!551823 (derivationStepZipperDown!1567 (ite c!1172447 (regTwo!33151 (h!71580 (exprs!6203 (h!71582 zl!343)))) (regOne!33150 (h!71580 (exprs!6203 (h!71582 zl!343))))) (ite c!1172447 lt!2376132 (Context!11407 call!551820)) (h!71581 s!2326)))))

(declare-fun b!6418358 () Bool)

(assert (=> b!6418358 (= e!3894432 (nullable!6312 (regOne!33150 (h!71580 (exprs!6203 (h!71582 zl!343))))))))

(declare-fun b!6418359 () Bool)

(assert (=> b!6418359 (= e!3894429 ((as const (Array Context!11406 Bool)) false))))

(declare-fun bm!551819 () Bool)

(assert (=> bm!551819 (= call!551819 call!551820)))

(declare-fun b!6418360 () Bool)

(assert (=> b!6418360 (= e!3894429 call!551822)))

(declare-fun b!6418361 () Bool)

(assert (=> b!6418361 (= e!3894433 call!551822)))

(assert (= (and d!2012589 c!1172446) b!6418352))

(assert (= (and d!2012589 (not c!1172446)) b!6418354))

(assert (= (and b!6418354 c!1172447) b!6418356))

(assert (= (and b!6418354 (not c!1172447)) b!6418353))

(assert (= (and b!6418353 res!2637780) b!6418358))

(assert (= (and b!6418353 c!1172448) b!6418357))

(assert (= (and b!6418353 (not c!1172448)) b!6418351))

(assert (= (and b!6418351 c!1172444) b!6418361))

(assert (= (and b!6418351 (not c!1172444)) b!6418355))

(assert (= (and b!6418355 c!1172445) b!6418360))

(assert (= (and b!6418355 (not c!1172445)) b!6418359))

(assert (= (or b!6418361 b!6418360) bm!551819))

(assert (= (or b!6418361 b!6418360) bm!551816))

(assert (= (or b!6418357 bm!551819) bm!551817))

(assert (= (or b!6418357 bm!551816) bm!551815))

(assert (= (or b!6418356 b!6418357) bm!551818))

(assert (= (or b!6418356 bm!551815) bm!551814))

(declare-fun m!7213422 () Bool)

(assert (=> bm!551814 m!7213422))

(declare-fun m!7213424 () Bool)

(assert (=> bm!551818 m!7213424))

(declare-fun m!7213426 () Bool)

(assert (=> b!6418352 m!7213426))

(declare-fun m!7213428 () Bool)

(assert (=> bm!551817 m!7213428))

(declare-fun m!7213430 () Bool)

(assert (=> b!6418358 m!7213430))

(assert (=> b!6417531 d!2012589))

(declare-fun d!2012591 () Bool)

(assert (=> d!2012591 (= (nullable!6312 (h!71580 (exprs!6203 (h!71582 zl!343)))) (nullableFct!2258 (h!71580 (exprs!6203 (h!71582 zl!343)))))))

(declare-fun bs!1613968 () Bool)

(assert (= bs!1613968 d!2012591))

(declare-fun m!7213432 () Bool)

(assert (=> bs!1613968 m!7213432))

(assert (=> b!6417531 d!2012591))

(declare-fun d!2012593 () Bool)

(assert (=> d!2012593 (= (flatMap!1824 z!1189 lambda!354425) (choose!47669 z!1189 lambda!354425))))

(declare-fun bs!1613969 () Bool)

(assert (= bs!1613969 d!2012593))

(declare-fun m!7213434 () Bool)

(assert (=> bs!1613969 m!7213434))

(assert (=> b!6417531 d!2012593))

(declare-fun b!6418362 () Bool)

(declare-fun e!3894435 () (InoxSet Context!11406))

(declare-fun call!551825 () (InoxSet Context!11406))

(assert (=> b!6418362 (= e!3894435 call!551825)))

(declare-fun b!6418364 () Bool)

(assert (=> b!6418364 (= e!3894435 ((as const (Array Context!11406 Bool)) false))))

(declare-fun b!6418365 () Bool)

(declare-fun e!3894436 () Bool)

(assert (=> b!6418365 (= e!3894436 (nullable!6312 (h!71580 (exprs!6203 (h!71582 zl!343)))))))

(declare-fun bm!551820 () Bool)

(assert (=> bm!551820 (= call!551825 (derivationStepZipperDown!1567 (h!71580 (exprs!6203 (h!71582 zl!343))) (Context!11407 (t!378870 (exprs!6203 (h!71582 zl!343)))) (h!71581 s!2326)))))

(declare-fun b!6418366 () Bool)

(declare-fun e!3894434 () (InoxSet Context!11406))

(assert (=> b!6418366 (= e!3894434 e!3894435)))

(declare-fun c!1172449 () Bool)

(assert (=> b!6418366 (= c!1172449 ((_ is Cons!65132) (exprs!6203 (h!71582 zl!343))))))

(declare-fun d!2012595 () Bool)

(declare-fun c!1172450 () Bool)

(assert (=> d!2012595 (= c!1172450 e!3894436)))

(declare-fun res!2637781 () Bool)

(assert (=> d!2012595 (=> (not res!2637781) (not e!3894436))))

(assert (=> d!2012595 (= res!2637781 ((_ is Cons!65132) (exprs!6203 (h!71582 zl!343))))))

(assert (=> d!2012595 (= (derivationStepZipperUp!1493 (h!71582 zl!343) (h!71581 s!2326)) e!3894434)))

(declare-fun b!6418363 () Bool)

(assert (=> b!6418363 (= e!3894434 ((_ map or) call!551825 (derivationStepZipperUp!1493 (Context!11407 (t!378870 (exprs!6203 (h!71582 zl!343)))) (h!71581 s!2326))))))

(assert (= (and d!2012595 res!2637781) b!6418365))

(assert (= (and d!2012595 c!1172450) b!6418363))

(assert (= (and d!2012595 (not c!1172450)) b!6418366))

(assert (= (and b!6418366 c!1172449) b!6418362))

(assert (= (and b!6418366 (not c!1172449)) b!6418364))

(assert (= (or b!6418363 b!6418362) bm!551820))

(assert (=> b!6418365 m!7212678))

(declare-fun m!7213436 () Bool)

(assert (=> bm!551820 m!7213436))

(declare-fun m!7213438 () Bool)

(assert (=> b!6418363 m!7213438))

(assert (=> b!6417531 d!2012595))

(declare-fun d!2012597 () Bool)

(assert (=> d!2012597 (= (flatMap!1824 z!1189 lambda!354425) (dynLambda!25874 lambda!354425 (h!71582 zl!343)))))

(declare-fun lt!2376248 () Unit!158607)

(assert (=> d!2012597 (= lt!2376248 (choose!47670 z!1189 (h!71582 zl!343) lambda!354425))))

(assert (=> d!2012597 (= z!1189 (store ((as const (Array Context!11406 Bool)) false) (h!71582 zl!343) true))))

(assert (=> d!2012597 (= (lemmaFlatMapOnSingletonSet!1350 z!1189 (h!71582 zl!343) lambda!354425) lt!2376248)))

(declare-fun b_lambda!244001 () Bool)

(assert (=> (not b_lambda!244001) (not d!2012597)))

(declare-fun bs!1613970 () Bool)

(assert (= bs!1613970 d!2012597))

(assert (=> bs!1613970 m!7212672))

(declare-fun m!7213440 () Bool)

(assert (=> bs!1613970 m!7213440))

(declare-fun m!7213442 () Bool)

(assert (=> bs!1613970 m!7213442))

(declare-fun m!7213444 () Bool)

(assert (=> bs!1613970 m!7213444))

(assert (=> b!6417531 d!2012597))

(declare-fun b!6418367 () Bool)

(declare-fun e!3894438 () (InoxSet Context!11406))

(declare-fun call!551826 () (InoxSet Context!11406))

(assert (=> b!6418367 (= e!3894438 call!551826)))

(declare-fun b!6418369 () Bool)

(assert (=> b!6418369 (= e!3894438 ((as const (Array Context!11406 Bool)) false))))

(declare-fun b!6418370 () Bool)

(declare-fun e!3894439 () Bool)

(assert (=> b!6418370 (= e!3894439 (nullable!6312 (h!71580 (exprs!6203 lt!2376132))))))

(declare-fun bm!551821 () Bool)

(assert (=> bm!551821 (= call!551826 (derivationStepZipperDown!1567 (h!71580 (exprs!6203 lt!2376132)) (Context!11407 (t!378870 (exprs!6203 lt!2376132))) (h!71581 s!2326)))))

(declare-fun b!6418371 () Bool)

(declare-fun e!3894437 () (InoxSet Context!11406))

(assert (=> b!6418371 (= e!3894437 e!3894438)))

(declare-fun c!1172451 () Bool)

(assert (=> b!6418371 (= c!1172451 ((_ is Cons!65132) (exprs!6203 lt!2376132)))))

(declare-fun d!2012599 () Bool)

(declare-fun c!1172452 () Bool)

(assert (=> d!2012599 (= c!1172452 e!3894439)))

(declare-fun res!2637782 () Bool)

(assert (=> d!2012599 (=> (not res!2637782) (not e!3894439))))

(assert (=> d!2012599 (= res!2637782 ((_ is Cons!65132) (exprs!6203 lt!2376132)))))

(assert (=> d!2012599 (= (derivationStepZipperUp!1493 lt!2376132 (h!71581 s!2326)) e!3894437)))

(declare-fun b!6418368 () Bool)

(assert (=> b!6418368 (= e!3894437 ((_ map or) call!551826 (derivationStepZipperUp!1493 (Context!11407 (t!378870 (exprs!6203 lt!2376132))) (h!71581 s!2326))))))

(assert (= (and d!2012599 res!2637782) b!6418370))

(assert (= (and d!2012599 c!1172452) b!6418368))

(assert (= (and d!2012599 (not c!1172452)) b!6418371))

(assert (= (and b!6418371 c!1172451) b!6418367))

(assert (= (and b!6418371 (not c!1172451)) b!6418369))

(assert (= (or b!6418368 b!6418367) bm!551821))

(declare-fun m!7213446 () Bool)

(assert (=> b!6418370 m!7213446))

(declare-fun m!7213448 () Bool)

(assert (=> bm!551821 m!7213448))

(declare-fun m!7213450 () Bool)

(assert (=> b!6418368 m!7213450))

(assert (=> b!6417531 d!2012599))

(declare-fun b!6418372 () Bool)

(declare-fun e!3894441 () (InoxSet Context!11406))

(declare-fun call!551827 () (InoxSet Context!11406))

(assert (=> b!6418372 (= e!3894441 call!551827)))

(declare-fun b!6418374 () Bool)

(assert (=> b!6418374 (= e!3894441 ((as const (Array Context!11406 Bool)) false))))

(declare-fun b!6418375 () Bool)

(declare-fun e!3894442 () Bool)

(assert (=> b!6418375 (= e!3894442 (nullable!6312 (h!71580 (exprs!6203 (Context!11407 (Cons!65132 (h!71580 (exprs!6203 (h!71582 zl!343))) (t!378870 (exprs!6203 (h!71582 zl!343)))))))))))

(declare-fun bm!551822 () Bool)

(assert (=> bm!551822 (= call!551827 (derivationStepZipperDown!1567 (h!71580 (exprs!6203 (Context!11407 (Cons!65132 (h!71580 (exprs!6203 (h!71582 zl!343))) (t!378870 (exprs!6203 (h!71582 zl!343))))))) (Context!11407 (t!378870 (exprs!6203 (Context!11407 (Cons!65132 (h!71580 (exprs!6203 (h!71582 zl!343))) (t!378870 (exprs!6203 (h!71582 zl!343)))))))) (h!71581 s!2326)))))

(declare-fun b!6418376 () Bool)

(declare-fun e!3894440 () (InoxSet Context!11406))

(assert (=> b!6418376 (= e!3894440 e!3894441)))

(declare-fun c!1172453 () Bool)

(assert (=> b!6418376 (= c!1172453 ((_ is Cons!65132) (exprs!6203 (Context!11407 (Cons!65132 (h!71580 (exprs!6203 (h!71582 zl!343))) (t!378870 (exprs!6203 (h!71582 zl!343))))))))))

(declare-fun d!2012601 () Bool)

(declare-fun c!1172454 () Bool)

(assert (=> d!2012601 (= c!1172454 e!3894442)))

(declare-fun res!2637783 () Bool)

(assert (=> d!2012601 (=> (not res!2637783) (not e!3894442))))

(assert (=> d!2012601 (= res!2637783 ((_ is Cons!65132) (exprs!6203 (Context!11407 (Cons!65132 (h!71580 (exprs!6203 (h!71582 zl!343))) (t!378870 (exprs!6203 (h!71582 zl!343))))))))))

(assert (=> d!2012601 (= (derivationStepZipperUp!1493 (Context!11407 (Cons!65132 (h!71580 (exprs!6203 (h!71582 zl!343))) (t!378870 (exprs!6203 (h!71582 zl!343))))) (h!71581 s!2326)) e!3894440)))

(declare-fun b!6418373 () Bool)

(assert (=> b!6418373 (= e!3894440 ((_ map or) call!551827 (derivationStepZipperUp!1493 (Context!11407 (t!378870 (exprs!6203 (Context!11407 (Cons!65132 (h!71580 (exprs!6203 (h!71582 zl!343))) (t!378870 (exprs!6203 (h!71582 zl!343)))))))) (h!71581 s!2326))))))

(assert (= (and d!2012601 res!2637783) b!6418375))

(assert (= (and d!2012601 c!1172454) b!6418373))

(assert (= (and d!2012601 (not c!1172454)) b!6418376))

(assert (= (and b!6418376 c!1172453) b!6418372))

(assert (= (and b!6418376 (not c!1172453)) b!6418374))

(assert (= (or b!6418373 b!6418372) bm!551822))

(declare-fun m!7213452 () Bool)

(assert (=> b!6418375 m!7213452))

(declare-fun m!7213454 () Bool)

(assert (=> bm!551822 m!7213454))

(declare-fun m!7213456 () Bool)

(assert (=> b!6418373 m!7213456))

(assert (=> b!6417531 d!2012601))

(declare-fun d!2012603 () Bool)

(assert (=> d!2012603 (= (flatMap!1824 lt!2376128 lambda!354425) (choose!47669 lt!2376128 lambda!354425))))

(declare-fun bs!1613971 () Bool)

(assert (= bs!1613971 d!2012603))

(declare-fun m!7213458 () Bool)

(assert (=> bs!1613971 m!7213458))

(assert (=> b!6417508 d!2012603))

(declare-fun b!6418377 () Bool)

(declare-fun e!3894444 () (InoxSet Context!11406))

(declare-fun call!551828 () (InoxSet Context!11406))

(assert (=> b!6418377 (= e!3894444 call!551828)))

(declare-fun b!6418379 () Bool)

(assert (=> b!6418379 (= e!3894444 ((as const (Array Context!11406 Bool)) false))))

(declare-fun b!6418380 () Bool)

(declare-fun e!3894445 () Bool)

(assert (=> b!6418380 (= e!3894445 (nullable!6312 (h!71580 (exprs!6203 lt!2376097))))))

(declare-fun bm!551823 () Bool)

(assert (=> bm!551823 (= call!551828 (derivationStepZipperDown!1567 (h!71580 (exprs!6203 lt!2376097)) (Context!11407 (t!378870 (exprs!6203 lt!2376097))) (h!71581 s!2326)))))

(declare-fun b!6418381 () Bool)

(declare-fun e!3894443 () (InoxSet Context!11406))

(assert (=> b!6418381 (= e!3894443 e!3894444)))

(declare-fun c!1172455 () Bool)

(assert (=> b!6418381 (= c!1172455 ((_ is Cons!65132) (exprs!6203 lt!2376097)))))

(declare-fun d!2012605 () Bool)

(declare-fun c!1172456 () Bool)

(assert (=> d!2012605 (= c!1172456 e!3894445)))

(declare-fun res!2637784 () Bool)

(assert (=> d!2012605 (=> (not res!2637784) (not e!3894445))))

(assert (=> d!2012605 (= res!2637784 ((_ is Cons!65132) (exprs!6203 lt!2376097)))))

(assert (=> d!2012605 (= (derivationStepZipperUp!1493 lt!2376097 (h!71581 s!2326)) e!3894443)))

(declare-fun b!6418378 () Bool)

(assert (=> b!6418378 (= e!3894443 ((_ map or) call!551828 (derivationStepZipperUp!1493 (Context!11407 (t!378870 (exprs!6203 lt!2376097))) (h!71581 s!2326))))))

(assert (= (and d!2012605 res!2637784) b!6418380))

(assert (= (and d!2012605 c!1172456) b!6418378))

(assert (= (and d!2012605 (not c!1172456)) b!6418381))

(assert (= (and b!6418381 c!1172455) b!6418377))

(assert (= (and b!6418381 (not c!1172455)) b!6418379))

(assert (= (or b!6418378 b!6418377) bm!551823))

(declare-fun m!7213460 () Bool)

(assert (=> b!6418380 m!7213460))

(declare-fun m!7213462 () Bool)

(assert (=> bm!551823 m!7213462))

(declare-fun m!7213464 () Bool)

(assert (=> b!6418378 m!7213464))

(assert (=> b!6417508 d!2012605))

(declare-fun d!2012607 () Bool)

(assert (=> d!2012607 (= (flatMap!1824 lt!2376128 lambda!354425) (dynLambda!25874 lambda!354425 lt!2376097))))

(declare-fun lt!2376249 () Unit!158607)

(assert (=> d!2012607 (= lt!2376249 (choose!47670 lt!2376128 lt!2376097 lambda!354425))))

(assert (=> d!2012607 (= lt!2376128 (store ((as const (Array Context!11406 Bool)) false) lt!2376097 true))))

(assert (=> d!2012607 (= (lemmaFlatMapOnSingletonSet!1350 lt!2376128 lt!2376097 lambda!354425) lt!2376249)))

(declare-fun b_lambda!244003 () Bool)

(assert (=> (not b_lambda!244003) (not d!2012607)))

(declare-fun bs!1613972 () Bool)

(assert (= bs!1613972 d!2012607))

(assert (=> bs!1613972 m!7212740))

(declare-fun m!7213466 () Bool)

(assert (=> bs!1613972 m!7213466))

(declare-fun m!7213468 () Bool)

(assert (=> bs!1613972 m!7213468))

(assert (=> bs!1613972 m!7212742))

(assert (=> b!6417508 d!2012607))

(declare-fun bs!1613973 () Bool)

(declare-fun d!2012609 () Bool)

(assert (= bs!1613973 (and d!2012609 b!6417531)))

(declare-fun lambda!354497 () Int)

(assert (=> bs!1613973 (= lambda!354497 lambda!354425)))

(assert (=> d!2012609 true))

(assert (=> d!2012609 (= (derivationStepZipper!2285 lt!2376128 (h!71581 s!2326)) (flatMap!1824 lt!2376128 lambda!354497))))

(declare-fun bs!1613974 () Bool)

(assert (= bs!1613974 d!2012609))

(declare-fun m!7213470 () Bool)

(assert (=> bs!1613974 m!7213470))

(assert (=> b!6417508 d!2012609))

(declare-fun b!6418384 () Bool)

(declare-fun res!2637791 () Bool)

(declare-fun e!3894446 () Bool)

(assert (=> b!6418384 (=> (not res!2637791) (not e!3894446))))

(assert (=> b!6418384 (= res!2637791 (isEmpty!37285 (tail!12215 s!2326)))))

(declare-fun bm!551824 () Bool)

(declare-fun call!551829 () Bool)

(assert (=> bm!551824 (= call!551829 (isEmpty!37285 s!2326))))

(declare-fun b!6418385 () Bool)

(declare-fun e!3894451 () Bool)

(assert (=> b!6418385 (= e!3894451 (not (= (head!13130 s!2326) (c!1172214 lt!2376127))))))

(declare-fun b!6418386 () Bool)

(declare-fun e!3894452 () Bool)

(declare-fun lt!2376250 () Bool)

(assert (=> b!6418386 (= e!3894452 (= lt!2376250 call!551829))))

(declare-fun b!6418387 () Bool)

(declare-fun e!3894449 () Bool)

(declare-fun e!3894448 () Bool)

(assert (=> b!6418387 (= e!3894449 e!3894448)))

(declare-fun res!2637790 () Bool)

(assert (=> b!6418387 (=> (not res!2637790) (not e!3894448))))

(assert (=> b!6418387 (= res!2637790 (not lt!2376250))))

(declare-fun b!6418388 () Bool)

(declare-fun e!3894450 () Bool)

(assert (=> b!6418388 (= e!3894452 e!3894450)))

(declare-fun c!1172460 () Bool)

(assert (=> b!6418388 (= c!1172460 ((_ is EmptyLang!16319) lt!2376127))))

(declare-fun b!6418389 () Bool)

(assert (=> b!6418389 (= e!3894450 (not lt!2376250))))

(declare-fun b!6418391 () Bool)

(declare-fun res!2637788 () Bool)

(assert (=> b!6418391 (=> res!2637788 e!3894449)))

(assert (=> b!6418391 (= res!2637788 (not ((_ is ElementMatch!16319) lt!2376127)))))

(assert (=> b!6418391 (= e!3894450 e!3894449)))

(declare-fun b!6418392 () Bool)

(assert (=> b!6418392 (= e!3894446 (= (head!13130 s!2326) (c!1172214 lt!2376127)))))

(declare-fun b!6418393 () Bool)

(declare-fun res!2637785 () Bool)

(assert (=> b!6418393 (=> (not res!2637785) (not e!3894446))))

(assert (=> b!6418393 (= res!2637785 (not call!551829))))

(declare-fun b!6418394 () Bool)

(declare-fun res!2637789 () Bool)

(assert (=> b!6418394 (=> res!2637789 e!3894451)))

(assert (=> b!6418394 (= res!2637789 (not (isEmpty!37285 (tail!12215 s!2326))))))

(declare-fun b!6418395 () Bool)

(declare-fun res!2637786 () Bool)

(assert (=> b!6418395 (=> res!2637786 e!3894449)))

(assert (=> b!6418395 (= res!2637786 e!3894446)))

(declare-fun res!2637787 () Bool)

(assert (=> b!6418395 (=> (not res!2637787) (not e!3894446))))

(assert (=> b!6418395 (= res!2637787 lt!2376250)))

(declare-fun b!6418396 () Bool)

(declare-fun e!3894447 () Bool)

(assert (=> b!6418396 (= e!3894447 (matchR!8502 (derivativeStep!5023 lt!2376127 (head!13130 s!2326)) (tail!12215 s!2326)))))

(declare-fun b!6418397 () Bool)

(assert (=> b!6418397 (= e!3894447 (nullable!6312 lt!2376127))))

(declare-fun b!6418390 () Bool)

(assert (=> b!6418390 (= e!3894448 e!3894451)))

(declare-fun res!2637792 () Bool)

(assert (=> b!6418390 (=> res!2637792 e!3894451)))

(assert (=> b!6418390 (= res!2637792 call!551829)))

(declare-fun d!2012611 () Bool)

(assert (=> d!2012611 e!3894452))

(declare-fun c!1172459 () Bool)

(assert (=> d!2012611 (= c!1172459 ((_ is EmptyExpr!16319) lt!2376127))))

(assert (=> d!2012611 (= lt!2376250 e!3894447)))

(declare-fun c!1172461 () Bool)

(assert (=> d!2012611 (= c!1172461 (isEmpty!37285 s!2326))))

(assert (=> d!2012611 (validRegex!8055 lt!2376127)))

(assert (=> d!2012611 (= (matchR!8502 lt!2376127 s!2326) lt!2376250)))

(assert (= (and d!2012611 c!1172461) b!6418397))

(assert (= (and d!2012611 (not c!1172461)) b!6418396))

(assert (= (and d!2012611 c!1172459) b!6418386))

(assert (= (and d!2012611 (not c!1172459)) b!6418388))

(assert (= (and b!6418388 c!1172460) b!6418389))

(assert (= (and b!6418388 (not c!1172460)) b!6418391))

(assert (= (and b!6418391 (not res!2637788)) b!6418395))

(assert (= (and b!6418395 res!2637787) b!6418393))

(assert (= (and b!6418393 res!2637785) b!6418384))

(assert (= (and b!6418384 res!2637791) b!6418392))

(assert (= (and b!6418395 (not res!2637786)) b!6418387))

(assert (= (and b!6418387 res!2637790) b!6418390))

(assert (= (and b!6418390 (not res!2637792)) b!6418394))

(assert (= (and b!6418394 (not res!2637789)) b!6418385))

(assert (= (or b!6418386 b!6418390 b!6418393) bm!551824))

(assert (=> b!6418396 m!7213276))

(assert (=> b!6418396 m!7213276))

(declare-fun m!7213472 () Bool)

(assert (=> b!6418396 m!7213472))

(assert (=> b!6418396 m!7213280))

(assert (=> b!6418396 m!7213472))

(assert (=> b!6418396 m!7213280))

(declare-fun m!7213474 () Bool)

(assert (=> b!6418396 m!7213474))

(assert (=> b!6418384 m!7213280))

(assert (=> b!6418384 m!7213280))

(assert (=> b!6418384 m!7213284))

(assert (=> b!6418392 m!7213276))

(assert (=> bm!551824 m!7213272))

(assert (=> d!2012611 m!7213272))

(declare-fun m!7213476 () Bool)

(assert (=> d!2012611 m!7213476))

(assert (=> b!6418394 m!7213280))

(assert (=> b!6418394 m!7213280))

(assert (=> b!6418394 m!7213284))

(declare-fun m!7213478 () Bool)

(assert (=> b!6418397 m!7213478))

(assert (=> b!6418385 m!7213276))

(assert (=> b!6417507 d!2012611))

(declare-fun bs!1613975 () Bool)

(declare-fun b!6418400 () Bool)

(assert (= bs!1613975 (and b!6418400 b!6417522)))

(declare-fun lambda!354498 () Int)

(assert (=> bs!1613975 (not (= lambda!354498 lambda!354423))))

(declare-fun bs!1613976 () Bool)

(assert (= bs!1613976 (and b!6418400 d!2012547)))

(assert (=> bs!1613976 (not (= lambda!354498 lambda!354485))))

(declare-fun bs!1613977 () Bool)

(assert (= bs!1613977 (and b!6418400 b!6418266)))

(assert (=> bs!1613977 (= (and (= s!2326 (_1!36601 lt!2376101)) (= (reg!16648 lt!2376127) (reg!16648 lt!2376100)) (= lt!2376127 lt!2376100)) (= lambda!354498 lambda!354487))))

(assert (=> bs!1613975 (not (= lambda!354498 lambda!354424))))

(declare-fun bs!1613978 () Bool)

(assert (= bs!1613978 (and b!6418400 b!6417537)))

(assert (=> bs!1613978 (not (= lambda!354498 lambda!354426))))

(declare-fun bs!1613979 () Bool)

(assert (= bs!1613979 (and b!6418400 d!2012555)))

(assert (=> bs!1613979 (not (= lambda!354498 lambda!354486))))

(declare-fun bs!1613980 () Bool)

(assert (= bs!1613980 (and b!6418400 b!6418186)))

(assert (=> bs!1613980 (= (and (= (reg!16648 lt!2376127) (reg!16648 r!7292)) (= lt!2376127 r!7292)) (= lambda!354498 lambda!354482))))

(declare-fun bs!1613981 () Bool)

(assert (= bs!1613981 (and b!6418400 b!6418190)))

(assert (=> bs!1613981 (not (= lambda!354498 lambda!354483))))

(assert (=> bs!1613978 (not (= lambda!354498 lambda!354427))))

(declare-fun bs!1613982 () Bool)

(assert (= bs!1613982 (and b!6418400 d!2012527)))

(assert (=> bs!1613982 (not (= lambda!354498 lambda!354476))))

(declare-fun bs!1613983 () Bool)

(assert (= bs!1613983 (and b!6418400 d!2012525)))

(assert (=> bs!1613983 (not (= lambda!354498 lambda!354471))))

(assert (=> bs!1613982 (not (= lambda!354498 lambda!354477))))

(declare-fun bs!1613984 () Bool)

(assert (= bs!1613984 (and b!6418400 b!6418270)))

(assert (=> bs!1613984 (not (= lambda!354498 lambda!354488))))

(assert (=> bs!1613976 (not (= lambda!354498 lambda!354484))))

(assert (=> b!6418400 true))

(assert (=> b!6418400 true))

(declare-fun bs!1613985 () Bool)

(declare-fun b!6418404 () Bool)

(assert (= bs!1613985 (and b!6418404 b!6417522)))

(declare-fun lambda!354499 () Int)

(assert (=> bs!1613985 (not (= lambda!354499 lambda!354423))))

(declare-fun bs!1613986 () Bool)

(assert (= bs!1613986 (and b!6418404 d!2012547)))

(assert (=> bs!1613986 (= (and (= (regOne!33150 lt!2376127) lt!2376100) (= (regTwo!33150 lt!2376127) (regTwo!33150 r!7292))) (= lambda!354499 lambda!354485))))

(declare-fun bs!1613987 () Bool)

(assert (= bs!1613987 (and b!6418404 b!6418266)))

(assert (=> bs!1613987 (not (= lambda!354499 lambda!354487))))

(declare-fun bs!1613988 () Bool)

(assert (= bs!1613988 (and b!6418404 b!6418400)))

(assert (=> bs!1613988 (not (= lambda!354499 lambda!354498))))

(assert (=> bs!1613985 (= (and (= (regOne!33150 lt!2376127) (regOne!33150 r!7292)) (= (regTwo!33150 lt!2376127) (regTwo!33150 r!7292))) (= lambda!354499 lambda!354424))))

(declare-fun bs!1613989 () Bool)

(assert (= bs!1613989 (and b!6418404 b!6417537)))

(assert (=> bs!1613989 (not (= lambda!354499 lambda!354426))))

(declare-fun bs!1613990 () Bool)

(assert (= bs!1613990 (and b!6418404 d!2012555)))

(assert (=> bs!1613990 (not (= lambda!354499 lambda!354486))))

(declare-fun bs!1613991 () Bool)

(assert (= bs!1613991 (and b!6418404 b!6418186)))

(assert (=> bs!1613991 (not (= lambda!354499 lambda!354482))))

(declare-fun bs!1613992 () Bool)

(assert (= bs!1613992 (and b!6418404 b!6418190)))

(assert (=> bs!1613992 (= (and (= (regOne!33150 lt!2376127) (regOne!33150 r!7292)) (= (regTwo!33150 lt!2376127) (regTwo!33150 r!7292))) (= lambda!354499 lambda!354483))))

(assert (=> bs!1613989 (= (and (= (regOne!33150 lt!2376127) lt!2376100) (= (regTwo!33150 lt!2376127) (regTwo!33150 r!7292))) (= lambda!354499 lambda!354427))))

(declare-fun bs!1613993 () Bool)

(assert (= bs!1613993 (and b!6418404 d!2012527)))

(assert (=> bs!1613993 (not (= lambda!354499 lambda!354476))))

(declare-fun bs!1613994 () Bool)

(assert (= bs!1613994 (and b!6418404 d!2012525)))

(assert (=> bs!1613994 (not (= lambda!354499 lambda!354471))))

(assert (=> bs!1613993 (= (and (= (regOne!33150 lt!2376127) (regOne!33150 r!7292)) (= (regTwo!33150 lt!2376127) (regTwo!33150 r!7292))) (= lambda!354499 lambda!354477))))

(declare-fun bs!1613995 () Bool)

(assert (= bs!1613995 (and b!6418404 b!6418270)))

(assert (=> bs!1613995 (= (and (= s!2326 (_1!36601 lt!2376101)) (= (regOne!33150 lt!2376127) (regOne!33150 lt!2376100)) (= (regTwo!33150 lt!2376127) (regTwo!33150 lt!2376100))) (= lambda!354499 lambda!354488))))

(assert (=> bs!1613986 (not (= lambda!354499 lambda!354484))))

(assert (=> b!6418404 true))

(assert (=> b!6418404 true))

(declare-fun b!6418398 () Bool)

(declare-fun c!1172464 () Bool)

(assert (=> b!6418398 (= c!1172464 ((_ is ElementMatch!16319) lt!2376127))))

(declare-fun e!3894457 () Bool)

(declare-fun e!3894454 () Bool)

(assert (=> b!6418398 (= e!3894457 e!3894454)))

(declare-fun d!2012613 () Bool)

(declare-fun c!1172462 () Bool)

(assert (=> d!2012613 (= c!1172462 ((_ is EmptyExpr!16319) lt!2376127))))

(declare-fun e!3894455 () Bool)

(assert (=> d!2012613 (= (matchRSpec!3420 lt!2376127 s!2326) e!3894455)))

(declare-fun b!6418399 () Bool)

(assert (=> b!6418399 (= e!3894454 (= s!2326 (Cons!65133 (c!1172214 lt!2376127) Nil!65133)))))

(declare-fun e!3894456 () Bool)

(declare-fun call!551830 () Bool)

(assert (=> b!6418400 (= e!3894456 call!551830)))

(declare-fun b!6418401 () Bool)

(declare-fun call!551831 () Bool)

(assert (=> b!6418401 (= e!3894455 call!551831)))

(declare-fun c!1172465 () Bool)

(declare-fun bm!551825 () Bool)

(assert (=> bm!551825 (= call!551830 (Exists!3389 (ite c!1172465 lambda!354498 lambda!354499)))))

(declare-fun b!6418402 () Bool)

(declare-fun e!3894458 () Bool)

(declare-fun e!3894453 () Bool)

(assert (=> b!6418402 (= e!3894458 e!3894453)))

(declare-fun res!2637795 () Bool)

(assert (=> b!6418402 (= res!2637795 (matchRSpec!3420 (regOne!33151 lt!2376127) s!2326))))

(assert (=> b!6418402 (=> res!2637795 e!3894453)))

(declare-fun b!6418403 () Bool)

(declare-fun e!3894459 () Bool)

(assert (=> b!6418403 (= e!3894458 e!3894459)))

(assert (=> b!6418403 (= c!1172465 ((_ is Star!16319) lt!2376127))))

(declare-fun bm!551826 () Bool)

(assert (=> bm!551826 (= call!551831 (isEmpty!37285 s!2326))))

(assert (=> b!6418404 (= e!3894459 call!551830)))

(declare-fun b!6418405 () Bool)

(declare-fun c!1172463 () Bool)

(assert (=> b!6418405 (= c!1172463 ((_ is Union!16319) lt!2376127))))

(assert (=> b!6418405 (= e!3894454 e!3894458)))

(declare-fun b!6418406 () Bool)

(declare-fun res!2637793 () Bool)

(assert (=> b!6418406 (=> res!2637793 e!3894456)))

(assert (=> b!6418406 (= res!2637793 call!551831)))

(assert (=> b!6418406 (= e!3894459 e!3894456)))

(declare-fun b!6418407 () Bool)

(assert (=> b!6418407 (= e!3894453 (matchRSpec!3420 (regTwo!33151 lt!2376127) s!2326))))

(declare-fun b!6418408 () Bool)

(assert (=> b!6418408 (= e!3894455 e!3894457)))

(declare-fun res!2637794 () Bool)

(assert (=> b!6418408 (= res!2637794 (not ((_ is EmptyLang!16319) lt!2376127)))))

(assert (=> b!6418408 (=> (not res!2637794) (not e!3894457))))

(assert (= (and d!2012613 c!1172462) b!6418401))

(assert (= (and d!2012613 (not c!1172462)) b!6418408))

(assert (= (and b!6418408 res!2637794) b!6418398))

(assert (= (and b!6418398 c!1172464) b!6418399))

(assert (= (and b!6418398 (not c!1172464)) b!6418405))

(assert (= (and b!6418405 c!1172463) b!6418402))

(assert (= (and b!6418405 (not c!1172463)) b!6418403))

(assert (= (and b!6418402 (not res!2637795)) b!6418407))

(assert (= (and b!6418403 c!1172465) b!6418406))

(assert (= (and b!6418403 (not c!1172465)) b!6418404))

(assert (= (and b!6418406 (not res!2637793)) b!6418400))

(assert (= (or b!6418400 b!6418404) bm!551825))

(assert (= (or b!6418401 b!6418406) bm!551826))

(declare-fun m!7213480 () Bool)

(assert (=> bm!551825 m!7213480))

(declare-fun m!7213482 () Bool)

(assert (=> b!6418402 m!7213482))

(assert (=> bm!551826 m!7213272))

(declare-fun m!7213484 () Bool)

(assert (=> b!6418407 m!7213484))

(assert (=> b!6417507 d!2012613))

(declare-fun d!2012615 () Bool)

(assert (=> d!2012615 (= (matchR!8502 lt!2376127 s!2326) (matchRSpec!3420 lt!2376127 s!2326))))

(declare-fun lt!2376251 () Unit!158607)

(assert (=> d!2012615 (= lt!2376251 (choose!47679 lt!2376127 s!2326))))

(assert (=> d!2012615 (validRegex!8055 lt!2376127)))

(assert (=> d!2012615 (= (mainMatchTheorem!3420 lt!2376127 s!2326) lt!2376251)))

(declare-fun bs!1613996 () Bool)

(assert (= bs!1613996 d!2012615))

(assert (=> bs!1613996 m!7212688))

(assert (=> bs!1613996 m!7212690))

(declare-fun m!7213486 () Bool)

(assert (=> bs!1613996 m!7213486))

(assert (=> bs!1613996 m!7213476))

(assert (=> b!6417507 d!2012615))

(declare-fun b!6418409 () Bool)

(declare-fun e!3894460 () (InoxSet Context!11406))

(declare-fun e!3894465 () (InoxSet Context!11406))

(assert (=> b!6418409 (= e!3894460 e!3894465)))

(declare-fun c!1172466 () Bool)

(assert (=> b!6418409 (= c!1172466 ((_ is Concat!25164) (reg!16648 (regOne!33150 r!7292))))))

(declare-fun b!6418411 () Bool)

(declare-fun c!1172470 () Bool)

(declare-fun e!3894464 () Bool)

(assert (=> b!6418411 (= c!1172470 e!3894464)))

(declare-fun res!2637796 () Bool)

(assert (=> b!6418411 (=> (not res!2637796) (not e!3894464))))

(assert (=> b!6418411 (= res!2637796 ((_ is Concat!25164) (reg!16648 (regOne!33150 r!7292))))))

(declare-fun e!3894463 () (InoxSet Context!11406))

(assert (=> b!6418411 (= e!3894463 e!3894460)))

(declare-fun call!551834 () (InoxSet Context!11406))

(declare-fun bm!551827 () Bool)

(declare-fun c!1172469 () Bool)

(declare-fun call!551832 () List!65256)

(assert (=> bm!551827 (= call!551834 (derivationStepZipperDown!1567 (ite c!1172469 (regOne!33151 (reg!16648 (regOne!33150 r!7292))) (ite c!1172470 (regTwo!33150 (reg!16648 (regOne!33150 r!7292))) (ite c!1172466 (regOne!33150 (reg!16648 (regOne!33150 r!7292))) (reg!16648 (reg!16648 (regOne!33150 r!7292)))))) (ite (or c!1172469 c!1172470) lt!2376125 (Context!11407 call!551832)) (h!71581 s!2326)))))

(declare-fun b!6418412 () Bool)

(declare-fun e!3894462 () (InoxSet Context!11406))

(assert (=> b!6418412 (= e!3894462 e!3894463)))

(assert (=> b!6418412 (= c!1172469 ((_ is Union!16319) (reg!16648 (regOne!33150 r!7292))))))

(declare-fun bm!551828 () Bool)

(declare-fun call!551837 () (InoxSet Context!11406))

(assert (=> bm!551828 (= call!551837 call!551834)))

(declare-fun bm!551829 () Bool)

(declare-fun call!551835 () (InoxSet Context!11406))

(assert (=> bm!551829 (= call!551835 call!551837)))

(declare-fun b!6418413 () Bool)

(declare-fun c!1172467 () Bool)

(assert (=> b!6418413 (= c!1172467 ((_ is Star!16319) (reg!16648 (regOne!33150 r!7292))))))

(declare-fun e!3894461 () (InoxSet Context!11406))

(assert (=> b!6418413 (= e!3894465 e!3894461)))

(declare-fun bm!551830 () Bool)

(declare-fun call!551833 () List!65256)

(assert (=> bm!551830 (= call!551833 ($colon$colon!2180 (exprs!6203 lt!2376125) (ite (or c!1172470 c!1172466) (regTwo!33150 (reg!16648 (regOne!33150 r!7292))) (reg!16648 (regOne!33150 r!7292)))))))

(declare-fun b!6418414 () Bool)

(declare-fun call!551836 () (InoxSet Context!11406))

(assert (=> b!6418414 (= e!3894463 ((_ map or) call!551834 call!551836))))

(declare-fun d!2012617 () Bool)

(declare-fun c!1172468 () Bool)

(assert (=> d!2012617 (= c!1172468 (and ((_ is ElementMatch!16319) (reg!16648 (regOne!33150 r!7292))) (= (c!1172214 (reg!16648 (regOne!33150 r!7292))) (h!71581 s!2326))))))

(assert (=> d!2012617 (= (derivationStepZipperDown!1567 (reg!16648 (regOne!33150 r!7292)) lt!2376125 (h!71581 s!2326)) e!3894462)))

(declare-fun b!6418410 () Bool)

(assert (=> b!6418410 (= e!3894462 (store ((as const (Array Context!11406 Bool)) false) lt!2376125 true))))

(declare-fun b!6418415 () Bool)

(assert (=> b!6418415 (= e!3894460 ((_ map or) call!551836 call!551837))))

(declare-fun bm!551831 () Bool)

(assert (=> bm!551831 (= call!551836 (derivationStepZipperDown!1567 (ite c!1172469 (regTwo!33151 (reg!16648 (regOne!33150 r!7292))) (regOne!33150 (reg!16648 (regOne!33150 r!7292)))) (ite c!1172469 lt!2376125 (Context!11407 call!551833)) (h!71581 s!2326)))))

(declare-fun b!6418416 () Bool)

(assert (=> b!6418416 (= e!3894464 (nullable!6312 (regOne!33150 (reg!16648 (regOne!33150 r!7292)))))))

(declare-fun b!6418417 () Bool)

(assert (=> b!6418417 (= e!3894461 ((as const (Array Context!11406 Bool)) false))))

(declare-fun bm!551832 () Bool)

(assert (=> bm!551832 (= call!551832 call!551833)))

(declare-fun b!6418418 () Bool)

(assert (=> b!6418418 (= e!3894461 call!551835)))

(declare-fun b!6418419 () Bool)

(assert (=> b!6418419 (= e!3894465 call!551835)))

(assert (= (and d!2012617 c!1172468) b!6418410))

(assert (= (and d!2012617 (not c!1172468)) b!6418412))

(assert (= (and b!6418412 c!1172469) b!6418414))

(assert (= (and b!6418412 (not c!1172469)) b!6418411))

(assert (= (and b!6418411 res!2637796) b!6418416))

(assert (= (and b!6418411 c!1172470) b!6418415))

(assert (= (and b!6418411 (not c!1172470)) b!6418409))

(assert (= (and b!6418409 c!1172466) b!6418419))

(assert (= (and b!6418409 (not c!1172466)) b!6418413))

(assert (= (and b!6418413 c!1172467) b!6418418))

(assert (= (and b!6418413 (not c!1172467)) b!6418417))

(assert (= (or b!6418419 b!6418418) bm!551832))

(assert (= (or b!6418419 b!6418418) bm!551829))

(assert (= (or b!6418415 bm!551832) bm!551830))

(assert (= (or b!6418415 bm!551829) bm!551828))

(assert (= (or b!6418414 b!6418415) bm!551831))

(assert (= (or b!6418414 bm!551828) bm!551827))

(declare-fun m!7213488 () Bool)

(assert (=> bm!551827 m!7213488))

(declare-fun m!7213490 () Bool)

(assert (=> bm!551831 m!7213490))

(assert (=> b!6418410 m!7212704))

(declare-fun m!7213492 () Bool)

(assert (=> bm!551830 m!7213492))

(declare-fun m!7213494 () Bool)

(assert (=> b!6418416 m!7213494))

(assert (=> b!6417527 d!2012617))

(declare-fun d!2012619 () Bool)

(assert (=> d!2012619 (= (isEmpty!37284 (t!378872 zl!343)) ((_ is Nil!65134) (t!378872 zl!343)))))

(assert (=> b!6417506 d!2012619))

(declare-fun d!2012621 () Bool)

(declare-fun e!3894468 () Bool)

(assert (=> d!2012621 e!3894468))

(declare-fun res!2637799 () Bool)

(assert (=> d!2012621 (=> (not res!2637799) (not e!3894468))))

(declare-fun lt!2376254 () List!65258)

(declare-fun noDuplicate!2148 (List!65258) Bool)

(assert (=> d!2012621 (= res!2637799 (noDuplicate!2148 lt!2376254))))

(declare-fun choose!47681 ((InoxSet Context!11406)) List!65258)

(assert (=> d!2012621 (= lt!2376254 (choose!47681 z!1189))))

(assert (=> d!2012621 (= (toList!10103 z!1189) lt!2376254)))

(declare-fun b!6418422 () Bool)

(declare-fun content!12353 (List!65258) (InoxSet Context!11406))

(assert (=> b!6418422 (= e!3894468 (= (content!12353 lt!2376254) z!1189))))

(assert (= (and d!2012621 res!2637799) b!6418422))

(declare-fun m!7213496 () Bool)

(assert (=> d!2012621 m!7213496))

(declare-fun m!7213498 () Bool)

(assert (=> d!2012621 m!7213498))

(declare-fun m!7213500 () Bool)

(assert (=> b!6418422 m!7213500))

(assert (=> b!6417525 d!2012621))

(declare-fun b!6418423 () Bool)

(declare-fun e!3894475 () Bool)

(declare-fun e!3894474 () Bool)

(assert (=> b!6418423 (= e!3894475 e!3894474)))

(declare-fun res!2637804 () Bool)

(assert (=> b!6418423 (= res!2637804 (not (nullable!6312 (reg!16648 r!7292))))))

(assert (=> b!6418423 (=> (not res!2637804) (not e!3894474))))

(declare-fun b!6418424 () Bool)

(declare-fun e!3894473 () Bool)

(declare-fun call!551838 () Bool)

(assert (=> b!6418424 (= e!3894473 call!551838)))

(declare-fun b!6418425 () Bool)

(declare-fun res!2637803 () Bool)

(declare-fun e!3894472 () Bool)

(assert (=> b!6418425 (=> (not res!2637803) (not e!3894472))))

(declare-fun call!551839 () Bool)

(assert (=> b!6418425 (= res!2637803 call!551839)))

(declare-fun e!3894469 () Bool)

(assert (=> b!6418425 (= e!3894469 e!3894472)))

(declare-fun b!6418426 () Bool)

(declare-fun e!3894471 () Bool)

(assert (=> b!6418426 (= e!3894471 e!3894473)))

(declare-fun res!2637800 () Bool)

(assert (=> b!6418426 (=> (not res!2637800) (not e!3894473))))

(assert (=> b!6418426 (= res!2637800 call!551839)))

(declare-fun b!6418427 () Bool)

(assert (=> b!6418427 (= e!3894472 call!551838)))

(declare-fun bm!551833 () Bool)

(declare-fun c!1172472 () Bool)

(assert (=> bm!551833 (= call!551839 (validRegex!8055 (ite c!1172472 (regOne!33151 r!7292) (regOne!33150 r!7292))))))

(declare-fun b!6418428 () Bool)

(assert (=> b!6418428 (= e!3894475 e!3894469)))

(assert (=> b!6418428 (= c!1172472 ((_ is Union!16319) r!7292))))

(declare-fun b!6418429 () Bool)

(declare-fun call!551840 () Bool)

(assert (=> b!6418429 (= e!3894474 call!551840)))

(declare-fun bm!551834 () Bool)

(declare-fun c!1172471 () Bool)

(assert (=> bm!551834 (= call!551840 (validRegex!8055 (ite c!1172471 (reg!16648 r!7292) (ite c!1172472 (regTwo!33151 r!7292) (regTwo!33150 r!7292)))))))

(declare-fun d!2012623 () Bool)

(declare-fun res!2637802 () Bool)

(declare-fun e!3894470 () Bool)

(assert (=> d!2012623 (=> res!2637802 e!3894470)))

(assert (=> d!2012623 (= res!2637802 ((_ is ElementMatch!16319) r!7292))))

(assert (=> d!2012623 (= (validRegex!8055 r!7292) e!3894470)))

(declare-fun b!6418430 () Bool)

(assert (=> b!6418430 (= e!3894470 e!3894475)))

(assert (=> b!6418430 (= c!1172471 ((_ is Star!16319) r!7292))))

(declare-fun b!6418431 () Bool)

(declare-fun res!2637801 () Bool)

(assert (=> b!6418431 (=> res!2637801 e!3894471)))

(assert (=> b!6418431 (= res!2637801 (not ((_ is Concat!25164) r!7292)))))

(assert (=> b!6418431 (= e!3894469 e!3894471)))

(declare-fun bm!551835 () Bool)

(assert (=> bm!551835 (= call!551838 call!551840)))

(assert (= (and d!2012623 (not res!2637802)) b!6418430))

(assert (= (and b!6418430 c!1172471) b!6418423))

(assert (= (and b!6418430 (not c!1172471)) b!6418428))

(assert (= (and b!6418423 res!2637804) b!6418429))

(assert (= (and b!6418428 c!1172472) b!6418425))

(assert (= (and b!6418428 (not c!1172472)) b!6418431))

(assert (= (and b!6418425 res!2637803) b!6418427))

(assert (= (and b!6418431 (not res!2637801)) b!6418426))

(assert (= (and b!6418426 res!2637800) b!6418424))

(assert (= (or b!6418427 b!6418424) bm!551835))

(assert (= (or b!6418425 b!6418426) bm!551833))

(assert (= (or b!6418429 bm!551835) bm!551834))

(declare-fun m!7213502 () Bool)

(assert (=> b!6418423 m!7213502))

(declare-fun m!7213504 () Bool)

(assert (=> bm!551833 m!7213504))

(declare-fun m!7213506 () Bool)

(assert (=> bm!551834 m!7213506))

(assert (=> start!634162 d!2012623))

(declare-fun bs!1613997 () Bool)

(declare-fun d!2012625 () Bool)

(assert (= bs!1613997 (and d!2012625 d!2012471)))

(declare-fun lambda!354502 () Int)

(assert (=> bs!1613997 (= lambda!354502 lambda!354466)))

(declare-fun bs!1613998 () Bool)

(assert (= bs!1613998 (and d!2012625 d!2012581)))

(assert (=> bs!1613998 (= lambda!354502 lambda!354491)))

(declare-fun bs!1613999 () Bool)

(assert (= bs!1613999 (and d!2012625 d!2012583)))

(assert (=> bs!1613999 (= lambda!354502 lambda!354494)))

(assert (=> d!2012625 (= (inv!84044 setElem!43798) (forall!15509 (exprs!6203 setElem!43798) lambda!354502))))

(declare-fun bs!1614000 () Bool)

(assert (= bs!1614000 d!2012625))

(declare-fun m!7213508 () Bool)

(assert (=> bs!1614000 m!7213508))

(assert (=> setNonEmpty!43798 d!2012625))

(declare-fun bs!1614001 () Bool)

(declare-fun d!2012627 () Bool)

(assert (= bs!1614001 (and d!2012627 d!2012471)))

(declare-fun lambda!354503 () Int)

(assert (=> bs!1614001 (= lambda!354503 lambda!354466)))

(declare-fun bs!1614002 () Bool)

(assert (= bs!1614002 (and d!2012627 d!2012581)))

(assert (=> bs!1614002 (= lambda!354503 lambda!354491)))

(declare-fun bs!1614003 () Bool)

(assert (= bs!1614003 (and d!2012627 d!2012583)))

(assert (=> bs!1614003 (= lambda!354503 lambda!354494)))

(declare-fun bs!1614004 () Bool)

(assert (= bs!1614004 (and d!2012627 d!2012625)))

(assert (=> bs!1614004 (= lambda!354503 lambda!354502)))

(assert (=> d!2012627 (= (inv!84044 (h!71582 zl!343)) (forall!15509 (exprs!6203 (h!71582 zl!343)) lambda!354503))))

(declare-fun bs!1614005 () Bool)

(assert (= bs!1614005 d!2012627))

(declare-fun m!7213510 () Bool)

(assert (=> bs!1614005 m!7213510))

(assert (=> b!6417524 d!2012627))

(declare-fun b!6418442 () Bool)

(declare-fun e!3894478 () Bool)

(assert (=> b!6418442 (= e!3894478 tp_is_empty!41891)))

(declare-fun b!6418445 () Bool)

(declare-fun tp!1782459 () Bool)

(declare-fun tp!1782461 () Bool)

(assert (=> b!6418445 (= e!3894478 (and tp!1782459 tp!1782461))))

(declare-fun b!6418443 () Bool)

(declare-fun tp!1782463 () Bool)

(declare-fun tp!1782462 () Bool)

(assert (=> b!6418443 (= e!3894478 (and tp!1782463 tp!1782462))))

(assert (=> b!6417536 (= tp!1782381 e!3894478)))

(declare-fun b!6418444 () Bool)

(declare-fun tp!1782460 () Bool)

(assert (=> b!6418444 (= e!3894478 tp!1782460)))

(assert (= (and b!6417536 ((_ is ElementMatch!16319) (regOne!33151 r!7292))) b!6418442))

(assert (= (and b!6417536 ((_ is Concat!25164) (regOne!33151 r!7292))) b!6418443))

(assert (= (and b!6417536 ((_ is Star!16319) (regOne!33151 r!7292))) b!6418444))

(assert (= (and b!6417536 ((_ is Union!16319) (regOne!33151 r!7292))) b!6418445))

(declare-fun b!6418446 () Bool)

(declare-fun e!3894479 () Bool)

(assert (=> b!6418446 (= e!3894479 tp_is_empty!41891)))

(declare-fun b!6418449 () Bool)

(declare-fun tp!1782464 () Bool)

(declare-fun tp!1782466 () Bool)

(assert (=> b!6418449 (= e!3894479 (and tp!1782464 tp!1782466))))

(declare-fun b!6418447 () Bool)

(declare-fun tp!1782468 () Bool)

(declare-fun tp!1782467 () Bool)

(assert (=> b!6418447 (= e!3894479 (and tp!1782468 tp!1782467))))

(assert (=> b!6417536 (= tp!1782384 e!3894479)))

(declare-fun b!6418448 () Bool)

(declare-fun tp!1782465 () Bool)

(assert (=> b!6418448 (= e!3894479 tp!1782465)))

(assert (= (and b!6417536 ((_ is ElementMatch!16319) (regTwo!33151 r!7292))) b!6418446))

(assert (= (and b!6417536 ((_ is Concat!25164) (regTwo!33151 r!7292))) b!6418447))

(assert (= (and b!6417536 ((_ is Star!16319) (regTwo!33151 r!7292))) b!6418448))

(assert (= (and b!6417536 ((_ is Union!16319) (regTwo!33151 r!7292))) b!6418449))

(declare-fun b!6418454 () Bool)

(declare-fun e!3894482 () Bool)

(declare-fun tp!1782471 () Bool)

(assert (=> b!6418454 (= e!3894482 (and tp_is_empty!41891 tp!1782471))))

(assert (=> b!6417526 (= tp!1782390 e!3894482)))

(assert (= (and b!6417526 ((_ is Cons!65133) (t!378871 s!2326))) b!6418454))

(declare-fun b!6418459 () Bool)

(declare-fun e!3894485 () Bool)

(declare-fun tp!1782476 () Bool)

(declare-fun tp!1782477 () Bool)

(assert (=> b!6418459 (= e!3894485 (and tp!1782476 tp!1782477))))

(assert (=> b!6417505 (= tp!1782382 e!3894485)))

(assert (= (and b!6417505 ((_ is Cons!65132) (exprs!6203 (h!71582 zl!343)))) b!6418459))

(declare-fun b!6418460 () Bool)

(declare-fun e!3894486 () Bool)

(assert (=> b!6418460 (= e!3894486 tp_is_empty!41891)))

(declare-fun b!6418463 () Bool)

(declare-fun tp!1782478 () Bool)

(declare-fun tp!1782480 () Bool)

(assert (=> b!6418463 (= e!3894486 (and tp!1782478 tp!1782480))))

(declare-fun b!6418461 () Bool)

(declare-fun tp!1782482 () Bool)

(declare-fun tp!1782481 () Bool)

(assert (=> b!6418461 (= e!3894486 (and tp!1782482 tp!1782481))))

(assert (=> b!6417504 (= tp!1782388 e!3894486)))

(declare-fun b!6418462 () Bool)

(declare-fun tp!1782479 () Bool)

(assert (=> b!6418462 (= e!3894486 tp!1782479)))

(assert (= (and b!6417504 ((_ is ElementMatch!16319) (reg!16648 r!7292))) b!6418460))

(assert (= (and b!6417504 ((_ is Concat!25164) (reg!16648 r!7292))) b!6418461))

(assert (= (and b!6417504 ((_ is Star!16319) (reg!16648 r!7292))) b!6418462))

(assert (= (and b!6417504 ((_ is Union!16319) (reg!16648 r!7292))) b!6418463))

(declare-fun condSetEmpty!43804 () Bool)

(assert (=> setNonEmpty!43798 (= condSetEmpty!43804 (= setRest!43798 ((as const (Array Context!11406 Bool)) false)))))

(declare-fun setRes!43804 () Bool)

(assert (=> setNonEmpty!43798 (= tp!1782387 setRes!43804)))

(declare-fun setIsEmpty!43804 () Bool)

(assert (=> setIsEmpty!43804 setRes!43804))

(declare-fun tp!1782487 () Bool)

(declare-fun e!3894489 () Bool)

(declare-fun setNonEmpty!43804 () Bool)

(declare-fun setElem!43804 () Context!11406)

(assert (=> setNonEmpty!43804 (= setRes!43804 (and tp!1782487 (inv!84044 setElem!43804) e!3894489))))

(declare-fun setRest!43804 () (InoxSet Context!11406))

(assert (=> setNonEmpty!43804 (= setRest!43798 ((_ map or) (store ((as const (Array Context!11406 Bool)) false) setElem!43804 true) setRest!43804))))

(declare-fun b!6418468 () Bool)

(declare-fun tp!1782488 () Bool)

(assert (=> b!6418468 (= e!3894489 tp!1782488)))

(assert (= (and setNonEmpty!43798 condSetEmpty!43804) setIsEmpty!43804))

(assert (= (and setNonEmpty!43798 (not condSetEmpty!43804)) setNonEmpty!43804))

(assert (= setNonEmpty!43804 b!6418468))

(declare-fun m!7213512 () Bool)

(assert (=> setNonEmpty!43804 m!7213512))

(declare-fun b!6418469 () Bool)

(declare-fun e!3894490 () Bool)

(declare-fun tp!1782489 () Bool)

(declare-fun tp!1782490 () Bool)

(assert (=> b!6418469 (= e!3894490 (and tp!1782489 tp!1782490))))

(assert (=> b!6417529 (= tp!1782385 e!3894490)))

(assert (= (and b!6417529 ((_ is Cons!65132) (exprs!6203 setElem!43798))) b!6418469))

(declare-fun b!6418470 () Bool)

(declare-fun e!3894491 () Bool)

(assert (=> b!6418470 (= e!3894491 tp_is_empty!41891)))

(declare-fun b!6418473 () Bool)

(declare-fun tp!1782491 () Bool)

(declare-fun tp!1782493 () Bool)

(assert (=> b!6418473 (= e!3894491 (and tp!1782491 tp!1782493))))

(declare-fun b!6418471 () Bool)

(declare-fun tp!1782495 () Bool)

(declare-fun tp!1782494 () Bool)

(assert (=> b!6418471 (= e!3894491 (and tp!1782495 tp!1782494))))

(assert (=> b!6417503 (= tp!1782389 e!3894491)))

(declare-fun b!6418472 () Bool)

(declare-fun tp!1782492 () Bool)

(assert (=> b!6418472 (= e!3894491 tp!1782492)))

(assert (= (and b!6417503 ((_ is ElementMatch!16319) (regOne!33150 r!7292))) b!6418470))

(assert (= (and b!6417503 ((_ is Concat!25164) (regOne!33150 r!7292))) b!6418471))

(assert (= (and b!6417503 ((_ is Star!16319) (regOne!33150 r!7292))) b!6418472))

(assert (= (and b!6417503 ((_ is Union!16319) (regOne!33150 r!7292))) b!6418473))

(declare-fun b!6418474 () Bool)

(declare-fun e!3894492 () Bool)

(assert (=> b!6418474 (= e!3894492 tp_is_empty!41891)))

(declare-fun b!6418477 () Bool)

(declare-fun tp!1782496 () Bool)

(declare-fun tp!1782498 () Bool)

(assert (=> b!6418477 (= e!3894492 (and tp!1782496 tp!1782498))))

(declare-fun b!6418475 () Bool)

(declare-fun tp!1782500 () Bool)

(declare-fun tp!1782499 () Bool)

(assert (=> b!6418475 (= e!3894492 (and tp!1782500 tp!1782499))))

(assert (=> b!6417503 (= tp!1782383 e!3894492)))

(declare-fun b!6418476 () Bool)

(declare-fun tp!1782497 () Bool)

(assert (=> b!6418476 (= e!3894492 tp!1782497)))

(assert (= (and b!6417503 ((_ is ElementMatch!16319) (regTwo!33150 r!7292))) b!6418474))

(assert (= (and b!6417503 ((_ is Concat!25164) (regTwo!33150 r!7292))) b!6418475))

(assert (= (and b!6417503 ((_ is Star!16319) (regTwo!33150 r!7292))) b!6418476))

(assert (= (and b!6417503 ((_ is Union!16319) (regTwo!33150 r!7292))) b!6418477))

(declare-fun b!6418485 () Bool)

(declare-fun e!3894498 () Bool)

(declare-fun tp!1782505 () Bool)

(assert (=> b!6418485 (= e!3894498 tp!1782505)))

(declare-fun e!3894497 () Bool)

(declare-fun b!6418484 () Bool)

(declare-fun tp!1782506 () Bool)

(assert (=> b!6418484 (= e!3894497 (and (inv!84044 (h!71582 (t!378872 zl!343))) e!3894498 tp!1782506))))

(assert (=> b!6417524 (= tp!1782386 e!3894497)))

(assert (= b!6418484 b!6418485))

(assert (= (and b!6417524 ((_ is Cons!65134) (t!378872 zl!343))) b!6418484))

(declare-fun m!7213514 () Bool)

(assert (=> b!6418484 m!7213514))

(declare-fun b_lambda!244005 () Bool)

(assert (= b_lambda!243991 (or b!6417531 b_lambda!244005)))

(declare-fun bs!1614006 () Bool)

(declare-fun d!2012629 () Bool)

(assert (= bs!1614006 (and d!2012629 b!6417531)))

(assert (=> bs!1614006 (= (dynLambda!25874 lambda!354425 lt!2376125) (derivationStepZipperUp!1493 lt!2376125 (h!71581 s!2326)))))

(assert (=> bs!1614006 m!7212706))

(assert (=> d!2012465 d!2012629))

(declare-fun b_lambda!244007 () Bool)

(assert (= b_lambda!243989 (or b!6417531 b_lambda!244007)))

(declare-fun bs!1614007 () Bool)

(declare-fun d!2012631 () Bool)

(assert (= bs!1614007 (and d!2012631 b!6417531)))

(assert (=> bs!1614007 (= (dynLambda!25874 lambda!354425 lt!2376108) (derivationStepZipperUp!1493 lt!2376108 (h!71581 s!2326)))))

(assert (=> bs!1614007 m!7212708))

(assert (=> d!2012453 d!2012631))

(declare-fun b_lambda!244009 () Bool)

(assert (= b_lambda!244001 (or b!6417531 b_lambda!244009)))

(declare-fun bs!1614008 () Bool)

(declare-fun d!2012633 () Bool)

(assert (= bs!1614008 (and d!2012633 b!6417531)))

(assert (=> bs!1614008 (= (dynLambda!25874 lambda!354425 (h!71582 zl!343)) (derivationStepZipperUp!1493 (h!71582 zl!343) (h!71581 s!2326)))))

(assert (=> bs!1614008 m!7212670))

(assert (=> d!2012597 d!2012633))

(declare-fun b_lambda!244011 () Bool)

(assert (= b_lambda!244003 (or b!6417531 b_lambda!244011)))

(declare-fun bs!1614009 () Bool)

(declare-fun d!2012635 () Bool)

(assert (= bs!1614009 (and d!2012635 b!6417531)))

(assert (=> bs!1614009 (= (dynLambda!25874 lambda!354425 lt!2376097) (derivationStepZipperUp!1493 lt!2376097 (h!71581 s!2326)))))

(assert (=> bs!1614009 m!7212744))

(assert (=> d!2012607 d!2012635))

(check-sat (not d!2012627) (not b!6418255) (not b!6418454) (not b!6418196) (not b!6418144) (not b!6418299) (not b!6418485) tp_is_empty!41891 (not b!6418145) (not b!6418459) (not d!2012555) (not b!6418084) (not d!2012461) (not b!6418132) (not b!6418150) (not d!2012523) (not d!2012575) (not b!6418471) (not b!6418469) (not d!2012527) (not d!2012471) (not d!2012609) (not b!6418327) (not b!6417971) (not b!6418449) (not b!6417964) (not d!2012547) (not bm!551770) (not b!6418302) (not b!6418368) (not b!6418087) (not b!6418273) (not b!6417967) (not b!6418385) (not b!6418233) (not b!6418313) (not bm!551821) (not b!6418463) (not d!2012539) (not b!6418448) (not b!6418214) (not bm!551833) (not d!2012553) (not b_lambda!244005) (not b!6418407) (not b!6418276) (not bm!551801) (not bs!1614006) (not d!2012529) (not b_lambda!244011) (not d!2012551) (not bm!551782) (not d!2012549) (not d!2012585) (not d!2012557) (not b!6417910) (not bm!551814) (not b!6418476) (not b!6418088) (not bm!551789) (not b!6418303) (not b!6418086) (not b!6418402) (not b!6418151) (not b!6418277) (not b!6417970) (not d!2012615) (not b!6418236) (not b!6418384) (not b!6418142) (not b!6417895) (not d!2012493) (not d!2012607) (not bm!551827) (not d!2012525) (not b!6418305) (not b!6418477) (not b!6418392) (not b!6417965) (not d!2012531) (not b!6418315) (not b!6418375) (not bm!551800) (not d!2012449) (not d!2012533) (not b!6418227) (not b!6417908) (not b!6418235) (not bm!551825) (not setNonEmpty!43804) (not b!6418472) (not b_lambda!244007) (not d!2012603) (not b!6418380) (not b!6418461) (not b_lambda!244009) (not b!6418208) (not bm!551831) (not b!6418275) (not d!2012521) (not b!6418423) (not b!6418140) (not d!2012577) (not b!6418323) (not b!6418378) (not b!6417972) (not b!6418370) (not b!6418203) (not bs!1614009) (not b!6418213) (not d!2012573) (not b!6418484) (not bm!551771) (not b!6418193) (not b!6418205) (not bm!551818) (not bs!1614007) (not d!2012561) (not d!2012459) (not b!6418462) (not b!6418133) (not b!6418083) (not b!6418358) (not d!2012581) (not d!2012563) (not b!6418207) (not b!6418278) (not b!6418228) (not d!2012569) (not b!6418188) (not b!6418394) (not b!6418306) (not bm!551824) (not bm!551787) (not d!2012559) (not b!6418445) (not d!2012495) (not b!6418316) (not b!6418443) (not d!2012611) (not bm!551830) (not d!2012591) (not d!2012597) (not b!6418396) (not b!6418232) (not b!6418444) (not bm!551826) (not b!6418363) (not b!6417897) (not b!6418397) (not d!2012621) (not bm!551796) (not b!6418210) (not d!2012535) (not b!6418212) (not b!6418090) (not d!2012579) (not d!2012545) (not b!6418473) (not bm!551799) (not b!6418373) (not d!2012593) (not d!2012465) (not b!6418422) (not b!6418325) (not bm!551820) (not b!6418468) (not bm!551797) (not bm!551834) (not bm!551822) (not d!2012453) (not b!6417968) (not b!6418234) (not b!6418307) (not bm!551823) (not b!6418365) (not b!6418216) (not bm!551817) (not b!6418475) (not d!2012583) (not b!6418209) (not b!6418308) (not bs!1614008) (not d!2012541) (not d!2012625) (not b!6418268) (not b!6418447) (not b!6418416) (not b!6418195) (not b!6418328) (not bm!551788))
(check-sat)
