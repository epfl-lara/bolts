; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!562110 () Bool)

(assert start!562110)

(declare-fun b!5334092 () Bool)

(assert (=> b!5334092 true))

(assert (=> b!5334092 true))

(declare-fun lambda!272845 () Int)

(declare-fun lambda!272844 () Int)

(assert (=> b!5334092 (not (= lambda!272845 lambda!272844))))

(assert (=> b!5334092 true))

(assert (=> b!5334092 true))

(declare-fun b!5334106 () Bool)

(assert (=> b!5334106 true))

(declare-fun bs!1236974 () Bool)

(declare-fun b!5334098 () Bool)

(assert (= bs!1236974 (and b!5334098 b!5334092)))

(declare-datatypes ((C!30280 0))(
  ( (C!30281 (val!24842 Int)) )
))
(declare-datatypes ((Regex!15005 0))(
  ( (ElementMatch!15005 (c!927759 C!30280)) (Concat!23850 (regOne!30522 Regex!15005) (regTwo!30522 Regex!15005)) (EmptyExpr!15005) (Star!15005 (reg!15334 Regex!15005)) (EmptyLang!15005) (Union!15005 (regOne!30523 Regex!15005) (regTwo!30523 Regex!15005)) )
))
(declare-fun lt!2175572 () Regex!15005)

(declare-fun r!7292 () Regex!15005)

(declare-fun lambda!272847 () Int)

(assert (=> bs!1236974 (= (and (= (regOne!30522 (regOne!30522 r!7292)) (regOne!30522 r!7292)) (= lt!2175572 (regTwo!30522 r!7292))) (= lambda!272847 lambda!272844))))

(assert (=> bs!1236974 (not (= lambda!272847 lambda!272845))))

(assert (=> b!5334098 true))

(assert (=> b!5334098 true))

(assert (=> b!5334098 true))

(declare-fun lambda!272848 () Int)

(assert (=> bs!1236974 (not (= lambda!272848 lambda!272844))))

(assert (=> bs!1236974 (= (and (= (regOne!30522 (regOne!30522 r!7292)) (regOne!30522 r!7292)) (= lt!2175572 (regTwo!30522 r!7292))) (= lambda!272848 lambda!272845))))

(assert (=> b!5334098 (not (= lambda!272848 lambda!272847))))

(assert (=> b!5334098 true))

(assert (=> b!5334098 true))

(assert (=> b!5334098 true))

(declare-fun lt!2175580 () Regex!15005)

(declare-fun lambda!272849 () Int)

(assert (=> bs!1236974 (= (and (= (regTwo!30522 (regOne!30522 r!7292)) (regOne!30522 r!7292)) (= lt!2175580 (regTwo!30522 r!7292))) (= lambda!272849 lambda!272844))))

(assert (=> bs!1236974 (not (= lambda!272849 lambda!272845))))

(assert (=> b!5334098 (= (and (= (regTwo!30522 (regOne!30522 r!7292)) (regOne!30522 (regOne!30522 r!7292))) (= lt!2175580 lt!2175572)) (= lambda!272849 lambda!272847))))

(assert (=> b!5334098 (not (= lambda!272849 lambda!272848))))

(assert (=> b!5334098 true))

(assert (=> b!5334098 true))

(assert (=> b!5334098 true))

(declare-fun lambda!272850 () Int)

(assert (=> b!5334098 (not (= lambda!272850 lambda!272847))))

(assert (=> b!5334098 (not (= lambda!272850 lambda!272849))))

(assert (=> bs!1236974 (not (= lambda!272850 lambda!272844))))

(assert (=> bs!1236974 (= (and (= (regTwo!30522 (regOne!30522 r!7292)) (regOne!30522 r!7292)) (= lt!2175580 (regTwo!30522 r!7292))) (= lambda!272850 lambda!272845))))

(assert (=> b!5334098 (= (and (= (regTwo!30522 (regOne!30522 r!7292)) (regOne!30522 (regOne!30522 r!7292))) (= lt!2175580 lt!2175572)) (= lambda!272850 lambda!272848))))

(assert (=> b!5334098 true))

(assert (=> b!5334098 true))

(assert (=> b!5334098 true))

(declare-fun b!5334083 () Bool)

(declare-fun e!3312760 () Bool)

(declare-fun e!3312768 () Bool)

(assert (=> b!5334083 (= e!3312760 e!3312768)))

(declare-fun res!2262591 () Bool)

(assert (=> b!5334083 (=> res!2262591 e!3312768)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61314 0))(
  ( (Nil!61190) (Cons!61190 (h!67638 Regex!15005) (t!374531 List!61314)) )
))
(declare-datatypes ((Context!8778 0))(
  ( (Context!8779 (exprs!4889 List!61314)) )
))
(declare-fun lt!2175568 () (InoxSet Context!8778))

(declare-fun lt!2175569 () (InoxSet Context!8778))

(assert (=> b!5334083 (= res!2262591 (not (= lt!2175568 lt!2175569)))))

(declare-datatypes ((List!61315 0))(
  ( (Nil!61191) (Cons!61191 (h!67639 C!30280) (t!374532 List!61315)) )
))
(declare-fun s!2326 () List!61315)

(declare-fun lt!2175562 () List!61314)

(declare-fun derivationStepZipperDown!453 (Regex!15005 Context!8778 C!30280) (InoxSet Context!8778))

(assert (=> b!5334083 (= lt!2175569 (derivationStepZipperDown!453 (regOne!30522 (regOne!30522 r!7292)) (Context!8779 lt!2175562) (h!67639 s!2326)))))

(declare-datatypes ((List!61316 0))(
  ( (Nil!61192) (Cons!61192 (h!67640 Context!8778) (t!374533 List!61316)) )
))
(declare-fun zl!343 () List!61316)

(assert (=> b!5334083 (= lt!2175562 (Cons!61190 (regTwo!30522 (regOne!30522 r!7292)) (t!374531 (exprs!4889 (h!67640 zl!343)))))))

(declare-fun b!5334084 () Bool)

(declare-fun res!2262600 () Bool)

(declare-fun e!3312761 () Bool)

(assert (=> b!5334084 (=> res!2262600 e!3312761)))

(declare-fun lt!2175581 () List!61316)

(declare-fun zipperDepth!114 (List!61316) Int)

(assert (=> b!5334084 (= res!2262600 (> (zipperDepth!114 lt!2175581) (zipperDepth!114 zl!343)))))

(declare-fun b!5334085 () Bool)

(declare-fun res!2262599 () Bool)

(declare-fun e!3312765 () Bool)

(assert (=> b!5334085 (=> (not res!2262599) (not e!3312765))))

(declare-fun z!1189 () (InoxSet Context!8778))

(declare-fun toList!8789 ((InoxSet Context!8778)) List!61316)

(assert (=> b!5334085 (= res!2262599 (= (toList!8789 z!1189) zl!343))))

(declare-fun b!5334086 () Bool)

(declare-fun e!3312758 () Bool)

(assert (=> b!5334086 (= e!3312758 e!3312761)))

(declare-fun res!2262601 () Bool)

(assert (=> b!5334086 (=> res!2262601 e!3312761)))

(declare-fun zipperDepthTotal!158 (List!61316) Int)

(assert (=> b!5334086 (= res!2262601 (>= (zipperDepthTotal!158 lt!2175581) (zipperDepthTotal!158 zl!343)))))

(declare-fun lt!2175565 () Context!8778)

(assert (=> b!5334086 (= lt!2175581 (Cons!61192 lt!2175565 Nil!61192))))

(declare-fun b!5334087 () Bool)

(declare-datatypes ((Unit!153538 0))(
  ( (Unit!153539) )
))
(declare-fun e!3312756 () Unit!153538)

(declare-fun Unit!153540 () Unit!153538)

(assert (=> b!5334087 (= e!3312756 Unit!153540)))

(declare-fun b!5334088 () Bool)

(declare-fun res!2262588 () Bool)

(declare-fun e!3312764 () Bool)

(assert (=> b!5334088 (=> res!2262588 e!3312764)))

(declare-fun generalisedUnion!934 (List!61314) Regex!15005)

(declare-fun unfocusZipperList!447 (List!61316) List!61314)

(assert (=> b!5334088 (= res!2262588 (not (= r!7292 (generalisedUnion!934 (unfocusZipperList!447 zl!343)))))))

(declare-fun b!5334089 () Bool)

(declare-fun e!3312755 () Bool)

(assert (=> b!5334089 (= e!3312755 e!3312758)))

(declare-fun res!2262598 () Bool)

(assert (=> b!5334089 (=> res!2262598 e!3312758)))

(declare-fun lt!2175579 () (InoxSet Context!8778))

(assert (=> b!5334089 (= res!2262598 (not (= lt!2175579 lt!2175569)))))

(declare-fun lt!2175551 () (InoxSet Context!8778))

(declare-fun lambda!272846 () Int)

(declare-fun flatMap!732 ((InoxSet Context!8778) Int) (InoxSet Context!8778))

(declare-fun derivationStepZipperUp!377 (Context!8778 C!30280) (InoxSet Context!8778))

(assert (=> b!5334089 (= (flatMap!732 lt!2175551 lambda!272846) (derivationStepZipperUp!377 lt!2175565 (h!67639 s!2326)))))

(declare-fun lt!2175554 () Unit!153538)

(declare-fun lemmaFlatMapOnSingletonSet!264 ((InoxSet Context!8778) Context!8778 Int) Unit!153538)

(assert (=> b!5334089 (= lt!2175554 (lemmaFlatMapOnSingletonSet!264 lt!2175551 lt!2175565 lambda!272846))))

(declare-fun lt!2175558 () (InoxSet Context!8778))

(assert (=> b!5334089 (= lt!2175558 (derivationStepZipperUp!377 lt!2175565 (h!67639 s!2326)))))

(declare-fun derivationStepZipper!1246 ((InoxSet Context!8778) C!30280) (InoxSet Context!8778))

(assert (=> b!5334089 (= lt!2175579 (derivationStepZipper!1246 lt!2175551 (h!67639 s!2326)))))

(assert (=> b!5334089 (= lt!2175551 (store ((as const (Array Context!8778 Bool)) false) lt!2175565 true))))

(declare-fun lt!2175550 () List!61314)

(assert (=> b!5334089 (= lt!2175565 (Context!8779 lt!2175550))))

(assert (=> b!5334089 (= lt!2175550 (Cons!61190 (regOne!30522 (regOne!30522 r!7292)) lt!2175562))))

(declare-fun b!5334090 () Bool)

(declare-fun res!2262603 () Bool)

(assert (=> b!5334090 (=> res!2262603 e!3312764)))

(declare-fun generalisedConcat!674 (List!61314) Regex!15005)

(assert (=> b!5334090 (= res!2262603 (not (= r!7292 (generalisedConcat!674 (exprs!4889 (h!67640 zl!343))))))))

(declare-fun b!5334091 () Bool)

(declare-fun e!3312767 () Bool)

(declare-fun tp!1484101 () Bool)

(assert (=> b!5334091 (= e!3312767 tp!1484101)))

(declare-fun b!5334093 () Bool)

(declare-fun res!2262611 () Bool)

(assert (=> b!5334093 (=> res!2262611 e!3312758)))

(declare-fun lt!2175574 () Bool)

(declare-fun matchZipper!1249 ((InoxSet Context!8778) List!61315) Bool)

(assert (=> b!5334093 (= res!2262611 (not (= lt!2175574 (matchZipper!1249 lt!2175579 (t!374532 s!2326)))))))

(declare-fun b!5334094 () Bool)

(declare-fun res!2262590 () Bool)

(assert (=> b!5334094 (=> (not res!2262590) (not e!3312765))))

(declare-fun unfocusZipper!747 (List!61316) Regex!15005)

(assert (=> b!5334094 (= res!2262590 (= r!7292 (unfocusZipper!747 zl!343)))))

(declare-fun b!5334095 () Bool)

(declare-fun e!3312757 () Bool)

(declare-fun tp_is_empty!39263 () Bool)

(assert (=> b!5334095 (= e!3312757 tp_is_empty!39263)))

(declare-fun b!5334096 () Bool)

(declare-fun Unit!153541 () Unit!153538)

(assert (=> b!5334096 (= e!3312756 Unit!153541)))

(declare-fun lt!2175566 () Unit!153538)

(declare-fun lt!2175567 () (InoxSet Context!8778))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!242 ((InoxSet Context!8778) (InoxSet Context!8778) List!61315) Unit!153538)

(assert (=> b!5334096 (= lt!2175566 (lemmaZipperConcatMatchesSameAsBothZippers!242 lt!2175568 lt!2175567 (t!374532 s!2326)))))

(declare-fun res!2262587 () Bool)

(assert (=> b!5334096 (= res!2262587 (matchZipper!1249 lt!2175568 (t!374532 s!2326)))))

(declare-fun e!3312763 () Bool)

(assert (=> b!5334096 (=> res!2262587 e!3312763)))

(assert (=> b!5334096 (= (matchZipper!1249 ((_ map or) lt!2175568 lt!2175567) (t!374532 s!2326)) e!3312763)))

(declare-fun b!5334097 () Bool)

(declare-fun res!2262597 () Bool)

(declare-fun e!3312759 () Bool)

(assert (=> b!5334097 (=> res!2262597 e!3312759)))

(declare-fun isEmpty!33159 (List!61314) Bool)

(assert (=> b!5334097 (= res!2262597 (isEmpty!33159 (t!374531 (exprs!4889 (h!67640 zl!343)))))))

(declare-fun e!3312762 () Bool)

(assert (=> b!5334098 (= e!3312761 e!3312762)))

(declare-fun res!2262610 () Bool)

(assert (=> b!5334098 (=> res!2262610 e!3312762)))

(declare-fun lt!2175575 () Bool)

(assert (=> b!5334098 (= res!2262610 (not (= (matchZipper!1249 z!1189 s!2326) lt!2175575)))))

(declare-fun Exists!2186 (Int) Bool)

(assert (=> b!5334098 (= (Exists!2186 lambda!272849) (Exists!2186 lambda!272850))))

(declare-fun lt!2175559 () Unit!153538)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!840 (Regex!15005 Regex!15005 List!61315) Unit!153538)

(assert (=> b!5334098 (= lt!2175559 (lemmaExistCutMatchRandMatchRSpecEquivalent!840 (regTwo!30522 (regOne!30522 r!7292)) lt!2175580 s!2326))))

(declare-datatypes ((tuple2!64408 0))(
  ( (tuple2!64409 (_1!35507 List!61315) (_2!35507 List!61315)) )
))
(declare-datatypes ((Option!15116 0))(
  ( (None!15115) (Some!15115 (v!51144 tuple2!64408)) )
))
(declare-fun isDefined!11819 (Option!15116) Bool)

(declare-fun findConcatSeparation!1530 (Regex!15005 Regex!15005 List!61315 List!61315 List!61315) Option!15116)

(assert (=> b!5334098 (= (isDefined!11819 (findConcatSeparation!1530 (regTwo!30522 (regOne!30522 r!7292)) lt!2175580 Nil!61191 s!2326 s!2326)) (Exists!2186 lambda!272849))))

(declare-fun lt!2175549 () Unit!153538)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1294 (Regex!15005 Regex!15005 List!61315) Unit!153538)

(assert (=> b!5334098 (= lt!2175549 (lemmaFindConcatSeparationEquivalentToExists!1294 (regTwo!30522 (regOne!30522 r!7292)) lt!2175580 s!2326))))

(assert (=> b!5334098 (= lt!2175580 (generalisedConcat!674 (t!374531 (exprs!4889 (h!67640 zl!343)))))))

(declare-fun matchR!7190 (Regex!15005 List!61315) Bool)

(declare-fun matchRSpec!2108 (Regex!15005 List!61315) Bool)

(assert (=> b!5334098 (= (matchR!7190 lt!2175572 s!2326) (matchRSpec!2108 lt!2175572 s!2326))))

(declare-fun lt!2175556 () Unit!153538)

(declare-fun mainMatchTheorem!2108 (Regex!15005 List!61315) Unit!153538)

(assert (=> b!5334098 (= lt!2175556 (mainMatchTheorem!2108 lt!2175572 s!2326))))

(assert (=> b!5334098 (= (Exists!2186 lambda!272847) (Exists!2186 lambda!272848))))

(declare-fun lt!2175552 () Unit!153538)

(assert (=> b!5334098 (= lt!2175552 (lemmaExistCutMatchRandMatchRSpecEquivalent!840 (regOne!30522 (regOne!30522 r!7292)) lt!2175572 s!2326))))

(assert (=> b!5334098 (= (isDefined!11819 (findConcatSeparation!1530 (regOne!30522 (regOne!30522 r!7292)) lt!2175572 Nil!61191 s!2326 s!2326)) (Exists!2186 lambda!272847))))

(declare-fun lt!2175573 () Unit!153538)

(assert (=> b!5334098 (= lt!2175573 (lemmaFindConcatSeparationEquivalentToExists!1294 (regOne!30522 (regOne!30522 r!7292)) lt!2175572 s!2326))))

(assert (=> b!5334098 (= lt!2175572 (generalisedConcat!674 lt!2175562))))

(declare-fun lt!2175578 () Bool)

(declare-fun lt!2175553 () Regex!15005)

(assert (=> b!5334098 (= lt!2175578 (matchRSpec!2108 lt!2175553 s!2326))))

(declare-fun lt!2175576 () Unit!153538)

(assert (=> b!5334098 (= lt!2175576 (mainMatchTheorem!2108 lt!2175553 s!2326))))

(assert (=> b!5334098 (= lt!2175578 lt!2175575)))

(assert (=> b!5334098 (= lt!2175575 (matchZipper!1249 lt!2175551 s!2326))))

(assert (=> b!5334098 (= lt!2175578 (matchR!7190 lt!2175553 s!2326))))

(declare-fun lt!2175570 () Unit!153538)

(declare-fun theoremZipperRegexEquiv!403 ((InoxSet Context!8778) List!61316 Regex!15005 List!61315) Unit!153538)

(assert (=> b!5334098 (= lt!2175570 (theoremZipperRegexEquiv!403 lt!2175551 lt!2175581 lt!2175553 s!2326))))

(assert (=> b!5334098 (= lt!2175553 (generalisedConcat!674 lt!2175550))))

(declare-fun b!5334099 () Bool)

(declare-fun tp!1484105 () Bool)

(assert (=> b!5334099 (= e!3312757 tp!1484105)))

(declare-fun b!5334100 () Bool)

(assert (=> b!5334100 (= e!3312768 e!3312755)))

(declare-fun res!2262596 () Bool)

(assert (=> b!5334100 (=> res!2262596 e!3312755)))

(assert (=> b!5334100 (= res!2262596 (not (= lt!2175574 (matchZipper!1249 lt!2175569 (t!374532 s!2326)))))))

(assert (=> b!5334100 (= lt!2175574 (matchZipper!1249 lt!2175568 (t!374532 s!2326)))))

(declare-fun b!5334101 () Bool)

(assert (=> b!5334101 (= e!3312763 (matchZipper!1249 lt!2175567 (t!374532 s!2326)))))

(declare-fun setIsEmpty!34399 () Bool)

(declare-fun setRes!34399 () Bool)

(assert (=> setIsEmpty!34399 setRes!34399))

(declare-fun b!5334102 () Bool)

(declare-fun res!2262605 () Bool)

(assert (=> b!5334102 (=> res!2262605 e!3312758)))

(assert (=> b!5334102 (= res!2262605 (not (= (exprs!4889 (h!67640 zl!343)) (Cons!61190 (Concat!23850 (regOne!30522 (regOne!30522 r!7292)) (regTwo!30522 (regOne!30522 r!7292))) (t!374531 (exprs!4889 (h!67640 zl!343)))))))))

(declare-fun b!5334103 () Bool)

(declare-fun lambda!272851 () Int)

(declare-fun forall!14423 (List!61314 Int) Bool)

(assert (=> b!5334103 (= e!3312762 (forall!14423 lt!2175550 lambda!272851))))

(declare-fun b!5334104 () Bool)

(declare-fun res!2262604 () Bool)

(assert (=> b!5334104 (=> res!2262604 e!3312764)))

(get-info :version)

(assert (=> b!5334104 (= res!2262604 (not ((_ is Cons!61190) (exprs!4889 (h!67640 zl!343)))))))

(declare-fun b!5334105 () Bool)

(declare-fun tp!1484099 () Bool)

(declare-fun tp!1484103 () Bool)

(assert (=> b!5334105 (= e!3312757 (and tp!1484099 tp!1484103))))

(assert (=> b!5334106 (= e!3312759 e!3312760)))

(declare-fun res!2262589 () Bool)

(assert (=> b!5334106 (=> res!2262589 e!3312760)))

(assert (=> b!5334106 (= res!2262589 (or (and ((_ is ElementMatch!15005) (regOne!30522 r!7292)) (= (c!927759 (regOne!30522 r!7292)) (h!67639 s!2326))) ((_ is Union!15005) (regOne!30522 r!7292))))))

(declare-fun lt!2175564 () Unit!153538)

(assert (=> b!5334106 (= lt!2175564 e!3312756)))

(declare-fun c!927758 () Bool)

(declare-fun nullable!5174 (Regex!15005) Bool)

(assert (=> b!5334106 (= c!927758 (nullable!5174 (h!67638 (exprs!4889 (h!67640 zl!343)))))))

(assert (=> b!5334106 (= (flatMap!732 z!1189 lambda!272846) (derivationStepZipperUp!377 (h!67640 zl!343) (h!67639 s!2326)))))

(declare-fun lt!2175563 () Unit!153538)

(assert (=> b!5334106 (= lt!2175563 (lemmaFlatMapOnSingletonSet!264 z!1189 (h!67640 zl!343) lambda!272846))))

(declare-fun lt!2175560 () Context!8778)

(assert (=> b!5334106 (= lt!2175567 (derivationStepZipperUp!377 lt!2175560 (h!67639 s!2326)))))

(assert (=> b!5334106 (= lt!2175568 (derivationStepZipperDown!453 (h!67638 (exprs!4889 (h!67640 zl!343))) lt!2175560 (h!67639 s!2326)))))

(assert (=> b!5334106 (= lt!2175560 (Context!8779 (t!374531 (exprs!4889 (h!67640 zl!343)))))))

(declare-fun lt!2175555 () (InoxSet Context!8778))

(assert (=> b!5334106 (= lt!2175555 (derivationStepZipperUp!377 (Context!8779 (Cons!61190 (h!67638 (exprs!4889 (h!67640 zl!343))) (t!374531 (exprs!4889 (h!67640 zl!343))))) (h!67639 s!2326)))))

(declare-fun b!5334107 () Bool)

(declare-fun e!3312754 () Bool)

(declare-fun tp!1484096 () Bool)

(assert (=> b!5334107 (= e!3312754 (and tp_is_empty!39263 tp!1484096))))

(declare-fun b!5334108 () Bool)

(declare-fun tp!1484104 () Bool)

(declare-fun tp!1484102 () Bool)

(assert (=> b!5334108 (= e!3312757 (and tp!1484104 tp!1484102))))

(declare-fun b!5334109 () Bool)

(declare-fun e!3312770 () Bool)

(assert (=> b!5334109 (= e!3312770 (nullable!5174 (regOne!30522 (regOne!30522 r!7292))))))

(declare-fun b!5334110 () Bool)

(assert (=> b!5334110 (= e!3312765 (not e!3312764))))

(declare-fun res!2262608 () Bool)

(assert (=> b!5334110 (=> res!2262608 e!3312764)))

(assert (=> b!5334110 (= res!2262608 (not ((_ is Cons!61192) zl!343)))))

(declare-fun lt!2175557 () Bool)

(assert (=> b!5334110 (= lt!2175557 (matchRSpec!2108 r!7292 s!2326))))

(assert (=> b!5334110 (= lt!2175557 (matchR!7190 r!7292 s!2326))))

(declare-fun lt!2175561 () Unit!153538)

(assert (=> b!5334110 (= lt!2175561 (mainMatchTheorem!2108 r!7292 s!2326))))

(declare-fun tp!1484098 () Bool)

(declare-fun setNonEmpty!34399 () Bool)

(declare-fun e!3312769 () Bool)

(declare-fun setElem!34399 () Context!8778)

(declare-fun inv!80759 (Context!8778) Bool)

(assert (=> setNonEmpty!34399 (= setRes!34399 (and tp!1484098 (inv!80759 setElem!34399) e!3312769))))

(declare-fun setRest!34399 () (InoxSet Context!8778))

(assert (=> setNonEmpty!34399 (= z!1189 ((_ map or) (store ((as const (Array Context!8778 Bool)) false) setElem!34399 true) setRest!34399))))

(declare-fun b!5334111 () Bool)

(declare-fun tp!1484100 () Bool)

(assert (=> b!5334111 (= e!3312769 tp!1484100)))

(declare-fun b!5334112 () Bool)

(declare-fun res!2262594 () Bool)

(assert (=> b!5334112 (=> res!2262594 e!3312760)))

(assert (=> b!5334112 (= res!2262594 e!3312770)))

(declare-fun res!2262592 () Bool)

(assert (=> b!5334112 (=> (not res!2262592) (not e!3312770))))

(assert (=> b!5334112 (= res!2262592 ((_ is Concat!23850) (regOne!30522 r!7292)))))

(declare-fun b!5334113 () Bool)

(declare-fun res!2262607 () Bool)

(assert (=> b!5334113 (=> res!2262607 e!3312764)))

(declare-fun isEmpty!33160 (List!61316) Bool)

(assert (=> b!5334113 (= res!2262607 (not (isEmpty!33160 (t!374533 zl!343))))))

(declare-fun res!2262606 () Bool)

(assert (=> start!562110 (=> (not res!2262606) (not e!3312765))))

(declare-fun validRegex!6741 (Regex!15005) Bool)

(assert (=> start!562110 (= res!2262606 (validRegex!6741 r!7292))))

(assert (=> start!562110 e!3312765))

(assert (=> start!562110 e!3312757))

(declare-fun condSetEmpty!34399 () Bool)

(assert (=> start!562110 (= condSetEmpty!34399 (= z!1189 ((as const (Array Context!8778 Bool)) false)))))

(assert (=> start!562110 setRes!34399))

(declare-fun e!3312766 () Bool)

(assert (=> start!562110 e!3312766))

(assert (=> start!562110 e!3312754))

(assert (=> b!5334092 (= e!3312764 e!3312759)))

(declare-fun res!2262609 () Bool)

(assert (=> b!5334092 (=> res!2262609 e!3312759)))

(declare-fun lt!2175582 () Bool)

(assert (=> b!5334092 (= res!2262609 (or (not (= lt!2175557 lt!2175582)) ((_ is Nil!61191) s!2326)))))

(assert (=> b!5334092 (= (Exists!2186 lambda!272844) (Exists!2186 lambda!272845))))

(declare-fun lt!2175577 () Unit!153538)

(assert (=> b!5334092 (= lt!2175577 (lemmaExistCutMatchRandMatchRSpecEquivalent!840 (regOne!30522 r!7292) (regTwo!30522 r!7292) s!2326))))

(assert (=> b!5334092 (= lt!2175582 (Exists!2186 lambda!272844))))

(assert (=> b!5334092 (= lt!2175582 (isDefined!11819 (findConcatSeparation!1530 (regOne!30522 r!7292) (regTwo!30522 r!7292) Nil!61191 s!2326 s!2326)))))

(declare-fun lt!2175571 () Unit!153538)

(assert (=> b!5334092 (= lt!2175571 (lemmaFindConcatSeparationEquivalentToExists!1294 (regOne!30522 r!7292) (regTwo!30522 r!7292) s!2326))))

(declare-fun b!5334114 () Bool)

(declare-fun res!2262595 () Bool)

(assert (=> b!5334114 (=> res!2262595 e!3312758)))

(declare-fun contextDepthTotal!138 (Context!8778) Int)

(assert (=> b!5334114 (= res!2262595 (>= (contextDepthTotal!138 lt!2175565) (contextDepthTotal!138 (h!67640 zl!343))))))

(declare-fun b!5334115 () Bool)

(declare-fun res!2262593 () Bool)

(assert (=> b!5334115 (=> res!2262593 e!3312760)))

(assert (=> b!5334115 (= res!2262593 (not ((_ is Concat!23850) (regOne!30522 r!7292))))))

(declare-fun tp!1484097 () Bool)

(declare-fun b!5334116 () Bool)

(assert (=> b!5334116 (= e!3312766 (and (inv!80759 (h!67640 zl!343)) e!3312767 tp!1484097))))

(declare-fun b!5334117 () Bool)

(declare-fun res!2262602 () Bool)

(assert (=> b!5334117 (=> res!2262602 e!3312764)))

(assert (=> b!5334117 (= res!2262602 (or ((_ is EmptyExpr!15005) r!7292) ((_ is EmptyLang!15005) r!7292) ((_ is ElementMatch!15005) r!7292) ((_ is Union!15005) r!7292) (not ((_ is Concat!23850) r!7292))))))

(assert (= (and start!562110 res!2262606) b!5334085))

(assert (= (and b!5334085 res!2262599) b!5334094))

(assert (= (and b!5334094 res!2262590) b!5334110))

(assert (= (and b!5334110 (not res!2262608)) b!5334113))

(assert (= (and b!5334113 (not res!2262607)) b!5334090))

(assert (= (and b!5334090 (not res!2262603)) b!5334104))

(assert (= (and b!5334104 (not res!2262604)) b!5334088))

(assert (= (and b!5334088 (not res!2262588)) b!5334117))

(assert (= (and b!5334117 (not res!2262602)) b!5334092))

(assert (= (and b!5334092 (not res!2262609)) b!5334097))

(assert (= (and b!5334097 (not res!2262597)) b!5334106))

(assert (= (and b!5334106 c!927758) b!5334096))

(assert (= (and b!5334106 (not c!927758)) b!5334087))

(assert (= (and b!5334096 (not res!2262587)) b!5334101))

(assert (= (and b!5334106 (not res!2262589)) b!5334112))

(assert (= (and b!5334112 res!2262592) b!5334109))

(assert (= (and b!5334112 (not res!2262594)) b!5334115))

(assert (= (and b!5334115 (not res!2262593)) b!5334083))

(assert (= (and b!5334083 (not res!2262591)) b!5334100))

(assert (= (and b!5334100 (not res!2262596)) b!5334089))

(assert (= (and b!5334089 (not res!2262598)) b!5334093))

(assert (= (and b!5334093 (not res!2262611)) b!5334102))

(assert (= (and b!5334102 (not res!2262605)) b!5334114))

(assert (= (and b!5334114 (not res!2262595)) b!5334086))

(assert (= (and b!5334086 (not res!2262601)) b!5334084))

(assert (= (and b!5334084 (not res!2262600)) b!5334098))

(assert (= (and b!5334098 (not res!2262610)) b!5334103))

(assert (= (and start!562110 ((_ is ElementMatch!15005) r!7292)) b!5334095))

(assert (= (and start!562110 ((_ is Concat!23850) r!7292)) b!5334105))

(assert (= (and start!562110 ((_ is Star!15005) r!7292)) b!5334099))

(assert (= (and start!562110 ((_ is Union!15005) r!7292)) b!5334108))

(assert (= (and start!562110 condSetEmpty!34399) setIsEmpty!34399))

(assert (= (and start!562110 (not condSetEmpty!34399)) setNonEmpty!34399))

(assert (= setNonEmpty!34399 b!5334111))

(assert (= b!5334116 b!5334091))

(assert (= (and start!562110 ((_ is Cons!61192) zl!343)) b!5334116))

(assert (= (and start!562110 ((_ is Cons!61191) s!2326)) b!5334107))

(declare-fun m!6367156 () Bool)

(assert (=> b!5334109 m!6367156))

(declare-fun m!6367158 () Bool)

(assert (=> setNonEmpty!34399 m!6367158))

(declare-fun m!6367160 () Bool)

(assert (=> start!562110 m!6367160))

(declare-fun m!6367162 () Bool)

(assert (=> b!5334106 m!6367162))

(declare-fun m!6367164 () Bool)

(assert (=> b!5334106 m!6367164))

(declare-fun m!6367166 () Bool)

(assert (=> b!5334106 m!6367166))

(declare-fun m!6367168 () Bool)

(assert (=> b!5334106 m!6367168))

(declare-fun m!6367170 () Bool)

(assert (=> b!5334106 m!6367170))

(declare-fun m!6367172 () Bool)

(assert (=> b!5334106 m!6367172))

(declare-fun m!6367174 () Bool)

(assert (=> b!5334106 m!6367174))

(declare-fun m!6367176 () Bool)

(assert (=> b!5334090 m!6367176))

(declare-fun m!6367178 () Bool)

(assert (=> b!5334097 m!6367178))

(declare-fun m!6367180 () Bool)

(assert (=> b!5334089 m!6367180))

(declare-fun m!6367182 () Bool)

(assert (=> b!5334089 m!6367182))

(declare-fun m!6367184 () Bool)

(assert (=> b!5334089 m!6367184))

(declare-fun m!6367186 () Bool)

(assert (=> b!5334089 m!6367186))

(declare-fun m!6367188 () Bool)

(assert (=> b!5334089 m!6367188))

(declare-fun m!6367190 () Bool)

(assert (=> b!5334084 m!6367190))

(declare-fun m!6367192 () Bool)

(assert (=> b!5334084 m!6367192))

(declare-fun m!6367194 () Bool)

(assert (=> b!5334110 m!6367194))

(declare-fun m!6367196 () Bool)

(assert (=> b!5334110 m!6367196))

(declare-fun m!6367198 () Bool)

(assert (=> b!5334110 m!6367198))

(declare-fun m!6367200 () Bool)

(assert (=> b!5334114 m!6367200))

(declare-fun m!6367202 () Bool)

(assert (=> b!5334114 m!6367202))

(declare-fun m!6367204 () Bool)

(assert (=> b!5334100 m!6367204))

(declare-fun m!6367206 () Bool)

(assert (=> b!5334100 m!6367206))

(declare-fun m!6367208 () Bool)

(assert (=> b!5334096 m!6367208))

(assert (=> b!5334096 m!6367206))

(declare-fun m!6367210 () Bool)

(assert (=> b!5334096 m!6367210))

(declare-fun m!6367212 () Bool)

(assert (=> b!5334088 m!6367212))

(assert (=> b!5334088 m!6367212))

(declare-fun m!6367214 () Bool)

(assert (=> b!5334088 m!6367214))

(declare-fun m!6367216 () Bool)

(assert (=> b!5334098 m!6367216))

(declare-fun m!6367218 () Bool)

(assert (=> b!5334098 m!6367218))

(declare-fun m!6367220 () Bool)

(assert (=> b!5334098 m!6367220))

(declare-fun m!6367222 () Bool)

(assert (=> b!5334098 m!6367222))

(declare-fun m!6367224 () Bool)

(assert (=> b!5334098 m!6367224))

(declare-fun m!6367226 () Bool)

(assert (=> b!5334098 m!6367226))

(declare-fun m!6367228 () Bool)

(assert (=> b!5334098 m!6367228))

(declare-fun m!6367230 () Bool)

(assert (=> b!5334098 m!6367230))

(declare-fun m!6367232 () Bool)

(assert (=> b!5334098 m!6367232))

(declare-fun m!6367234 () Bool)

(assert (=> b!5334098 m!6367234))

(declare-fun m!6367236 () Bool)

(assert (=> b!5334098 m!6367236))

(declare-fun m!6367238 () Bool)

(assert (=> b!5334098 m!6367238))

(declare-fun m!6367240 () Bool)

(assert (=> b!5334098 m!6367240))

(declare-fun m!6367242 () Bool)

(assert (=> b!5334098 m!6367242))

(declare-fun m!6367244 () Bool)

(assert (=> b!5334098 m!6367244))

(declare-fun m!6367246 () Bool)

(assert (=> b!5334098 m!6367246))

(declare-fun m!6367248 () Bool)

(assert (=> b!5334098 m!6367248))

(declare-fun m!6367250 () Bool)

(assert (=> b!5334098 m!6367250))

(declare-fun m!6367252 () Bool)

(assert (=> b!5334098 m!6367252))

(declare-fun m!6367254 () Bool)

(assert (=> b!5334098 m!6367254))

(declare-fun m!6367256 () Bool)

(assert (=> b!5334098 m!6367256))

(assert (=> b!5334098 m!6367250))

(assert (=> b!5334098 m!6367226))

(declare-fun m!6367258 () Bool)

(assert (=> b!5334098 m!6367258))

(declare-fun m!6367260 () Bool)

(assert (=> b!5334098 m!6367260))

(assert (=> b!5334098 m!6367222))

(declare-fun m!6367262 () Bool)

(assert (=> b!5334098 m!6367262))

(assert (=> b!5334098 m!6367246))

(declare-fun m!6367264 () Bool)

(assert (=> b!5334094 m!6367264))

(declare-fun m!6367266 () Bool)

(assert (=> b!5334093 m!6367266))

(declare-fun m!6367268 () Bool)

(assert (=> b!5334113 m!6367268))

(declare-fun m!6367270 () Bool)

(assert (=> b!5334085 m!6367270))

(declare-fun m!6367272 () Bool)

(assert (=> b!5334083 m!6367272))

(declare-fun m!6367274 () Bool)

(assert (=> b!5334116 m!6367274))

(declare-fun m!6367276 () Bool)

(assert (=> b!5334086 m!6367276))

(declare-fun m!6367278 () Bool)

(assert (=> b!5334086 m!6367278))

(declare-fun m!6367280 () Bool)

(assert (=> b!5334092 m!6367280))

(declare-fun m!6367282 () Bool)

(assert (=> b!5334092 m!6367282))

(declare-fun m!6367284 () Bool)

(assert (=> b!5334092 m!6367284))

(assert (=> b!5334092 m!6367284))

(declare-fun m!6367286 () Bool)

(assert (=> b!5334092 m!6367286))

(declare-fun m!6367288 () Bool)

(assert (=> b!5334092 m!6367288))

(assert (=> b!5334092 m!6367280))

(declare-fun m!6367290 () Bool)

(assert (=> b!5334092 m!6367290))

(declare-fun m!6367292 () Bool)

(assert (=> b!5334103 m!6367292))

(declare-fun m!6367294 () Bool)

(assert (=> b!5334101 m!6367294))

(check-sat (not b!5334089) (not b!5334114) (not b!5334116) (not b!5334103) (not b!5334086) (not b!5334094) (not b!5334092) (not b!5334107) (not b!5334100) (not b!5334108) (not b!5334090) (not b!5334111) (not b!5334097) (not b!5334105) (not b!5334099) (not b!5334109) (not b!5334083) (not b!5334098) tp_is_empty!39263 (not b!5334106) (not b!5334085) (not b!5334096) (not b!5334091) (not b!5334084) (not b!5334101) (not start!562110) (not b!5334093) (not b!5334113) (not b!5334110) (not setNonEmpty!34399) (not b!5334088))
(check-sat)
(get-model)

(declare-fun d!1712528 () Bool)

(declare-fun c!927864 () Bool)

(declare-fun isEmpty!33162 (List!61315) Bool)

(assert (=> d!1712528 (= c!927864 (isEmpty!33162 (t!374532 s!2326)))))

(declare-fun e!3312934 () Bool)

(assert (=> d!1712528 (= (matchZipper!1249 lt!2175569 (t!374532 s!2326)) e!3312934)))

(declare-fun b!5334406 () Bool)

(declare-fun nullableZipper!1358 ((InoxSet Context!8778)) Bool)

(assert (=> b!5334406 (= e!3312934 (nullableZipper!1358 lt!2175569))))

(declare-fun b!5334407 () Bool)

(declare-fun head!11434 (List!61315) C!30280)

(declare-fun tail!10531 (List!61315) List!61315)

(assert (=> b!5334407 (= e!3312934 (matchZipper!1249 (derivationStepZipper!1246 lt!2175569 (head!11434 (t!374532 s!2326))) (tail!10531 (t!374532 s!2326))))))

(assert (= (and d!1712528 c!927864) b!5334406))

(assert (= (and d!1712528 (not c!927864)) b!5334407))

(declare-fun m!6367512 () Bool)

(assert (=> d!1712528 m!6367512))

(declare-fun m!6367514 () Bool)

(assert (=> b!5334406 m!6367514))

(declare-fun m!6367516 () Bool)

(assert (=> b!5334407 m!6367516))

(assert (=> b!5334407 m!6367516))

(declare-fun m!6367518 () Bool)

(assert (=> b!5334407 m!6367518))

(declare-fun m!6367520 () Bool)

(assert (=> b!5334407 m!6367520))

(assert (=> b!5334407 m!6367518))

(assert (=> b!5334407 m!6367520))

(declare-fun m!6367522 () Bool)

(assert (=> b!5334407 m!6367522))

(assert (=> b!5334100 d!1712528))

(declare-fun d!1712534 () Bool)

(declare-fun c!927865 () Bool)

(assert (=> d!1712534 (= c!927865 (isEmpty!33162 (t!374532 s!2326)))))

(declare-fun e!3312935 () Bool)

(assert (=> d!1712534 (= (matchZipper!1249 lt!2175568 (t!374532 s!2326)) e!3312935)))

(declare-fun b!5334408 () Bool)

(assert (=> b!5334408 (= e!3312935 (nullableZipper!1358 lt!2175568))))

(declare-fun b!5334409 () Bool)

(assert (=> b!5334409 (= e!3312935 (matchZipper!1249 (derivationStepZipper!1246 lt!2175568 (head!11434 (t!374532 s!2326))) (tail!10531 (t!374532 s!2326))))))

(assert (= (and d!1712534 c!927865) b!5334408))

(assert (= (and d!1712534 (not c!927865)) b!5334409))

(assert (=> d!1712534 m!6367512))

(declare-fun m!6367524 () Bool)

(assert (=> b!5334408 m!6367524))

(assert (=> b!5334409 m!6367516))

(assert (=> b!5334409 m!6367516))

(declare-fun m!6367526 () Bool)

(assert (=> b!5334409 m!6367526))

(assert (=> b!5334409 m!6367520))

(assert (=> b!5334409 m!6367526))

(assert (=> b!5334409 m!6367520))

(declare-fun m!6367528 () Bool)

(assert (=> b!5334409 m!6367528))

(assert (=> b!5334100 d!1712534))

(declare-fun d!1712536 () Bool)

(declare-fun c!927870 () Bool)

(assert (=> d!1712536 (= c!927870 (isEmpty!33162 (t!374532 s!2326)))))

(declare-fun e!3312942 () Bool)

(assert (=> d!1712536 (= (matchZipper!1249 lt!2175567 (t!374532 s!2326)) e!3312942)))

(declare-fun b!5334420 () Bool)

(assert (=> b!5334420 (= e!3312942 (nullableZipper!1358 lt!2175567))))

(declare-fun b!5334421 () Bool)

(assert (=> b!5334421 (= e!3312942 (matchZipper!1249 (derivationStepZipper!1246 lt!2175567 (head!11434 (t!374532 s!2326))) (tail!10531 (t!374532 s!2326))))))

(assert (= (and d!1712536 c!927870) b!5334420))

(assert (= (and d!1712536 (not c!927870)) b!5334421))

(assert (=> d!1712536 m!6367512))

(declare-fun m!6367530 () Bool)

(assert (=> b!5334420 m!6367530))

(assert (=> b!5334421 m!6367516))

(assert (=> b!5334421 m!6367516))

(declare-fun m!6367532 () Bool)

(assert (=> b!5334421 m!6367532))

(assert (=> b!5334421 m!6367520))

(assert (=> b!5334421 m!6367532))

(assert (=> b!5334421 m!6367520))

(declare-fun m!6367534 () Bool)

(assert (=> b!5334421 m!6367534))

(assert (=> b!5334101 d!1712536))

(declare-fun d!1712538 () Bool)

(declare-fun choose!39953 (Int) Bool)

(assert (=> d!1712538 (= (Exists!2186 lambda!272847) (choose!39953 lambda!272847))))

(declare-fun bs!1237027 () Bool)

(assert (= bs!1237027 d!1712538))

(declare-fun m!6367536 () Bool)

(assert (=> bs!1237027 m!6367536))

(assert (=> b!5334098 d!1712538))

(declare-fun b!5334489 () Bool)

(declare-fun res!2262740 () Bool)

(declare-fun e!3312981 () Bool)

(assert (=> b!5334489 (=> (not res!2262740) (not e!3312981))))

(declare-fun lt!2175656 () Option!15116)

(declare-fun get!21045 (Option!15116) tuple2!64408)

(assert (=> b!5334489 (= res!2262740 (matchR!7190 (regTwo!30522 (regOne!30522 r!7292)) (_1!35507 (get!21045 lt!2175656))))))

(declare-fun b!5334490 () Bool)

(declare-fun res!2262737 () Bool)

(assert (=> b!5334490 (=> (not res!2262737) (not e!3312981))))

(assert (=> b!5334490 (= res!2262737 (matchR!7190 lt!2175580 (_2!35507 (get!21045 lt!2175656))))))

(declare-fun b!5334491 () Bool)

(declare-fun e!3312984 () Option!15116)

(assert (=> b!5334491 (= e!3312984 None!15115)))

(declare-fun b!5334492 () Bool)

(declare-fun e!3312982 () Bool)

(assert (=> b!5334492 (= e!3312982 (matchR!7190 lt!2175580 s!2326))))

(declare-fun b!5334493 () Bool)

(declare-fun e!3312985 () Option!15116)

(assert (=> b!5334493 (= e!3312985 (Some!15115 (tuple2!64409 Nil!61191 s!2326)))))

(declare-fun d!1712540 () Bool)

(declare-fun e!3312983 () Bool)

(assert (=> d!1712540 e!3312983))

(declare-fun res!2262741 () Bool)

(assert (=> d!1712540 (=> res!2262741 e!3312983)))

(assert (=> d!1712540 (= res!2262741 e!3312981)))

(declare-fun res!2262739 () Bool)

(assert (=> d!1712540 (=> (not res!2262739) (not e!3312981))))

(assert (=> d!1712540 (= res!2262739 (isDefined!11819 lt!2175656))))

(assert (=> d!1712540 (= lt!2175656 e!3312985)))

(declare-fun c!927886 () Bool)

(assert (=> d!1712540 (= c!927886 e!3312982)))

(declare-fun res!2262738 () Bool)

(assert (=> d!1712540 (=> (not res!2262738) (not e!3312982))))

(assert (=> d!1712540 (= res!2262738 (matchR!7190 (regTwo!30522 (regOne!30522 r!7292)) Nil!61191))))

(assert (=> d!1712540 (validRegex!6741 (regTwo!30522 (regOne!30522 r!7292)))))

(assert (=> d!1712540 (= (findConcatSeparation!1530 (regTwo!30522 (regOne!30522 r!7292)) lt!2175580 Nil!61191 s!2326 s!2326) lt!2175656)))

(declare-fun b!5334494 () Bool)

(declare-fun lt!2175657 () Unit!153538)

(declare-fun lt!2175658 () Unit!153538)

(assert (=> b!5334494 (= lt!2175657 lt!2175658)))

(declare-fun ++!13337 (List!61315 List!61315) List!61315)

(assert (=> b!5334494 (= (++!13337 (++!13337 Nil!61191 (Cons!61191 (h!67639 s!2326) Nil!61191)) (t!374532 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1752 (List!61315 C!30280 List!61315 List!61315) Unit!153538)

(assert (=> b!5334494 (= lt!2175658 (lemmaMoveElementToOtherListKeepsConcatEq!1752 Nil!61191 (h!67639 s!2326) (t!374532 s!2326) s!2326))))

(assert (=> b!5334494 (= e!3312984 (findConcatSeparation!1530 (regTwo!30522 (regOne!30522 r!7292)) lt!2175580 (++!13337 Nil!61191 (Cons!61191 (h!67639 s!2326) Nil!61191)) (t!374532 s!2326) s!2326))))

(declare-fun b!5334495 () Bool)

(assert (=> b!5334495 (= e!3312981 (= (++!13337 (_1!35507 (get!21045 lt!2175656)) (_2!35507 (get!21045 lt!2175656))) s!2326))))

(declare-fun b!5334496 () Bool)

(assert (=> b!5334496 (= e!3312983 (not (isDefined!11819 lt!2175656)))))

(declare-fun b!5334497 () Bool)

(assert (=> b!5334497 (= e!3312985 e!3312984)))

(declare-fun c!927887 () Bool)

(assert (=> b!5334497 (= c!927887 ((_ is Nil!61191) s!2326))))

(assert (= (and d!1712540 res!2262738) b!5334492))

(assert (= (and d!1712540 c!927886) b!5334493))

(assert (= (and d!1712540 (not c!927886)) b!5334497))

(assert (= (and b!5334497 c!927887) b!5334491))

(assert (= (and b!5334497 (not c!927887)) b!5334494))

(assert (= (and d!1712540 res!2262739) b!5334489))

(assert (= (and b!5334489 res!2262740) b!5334490))

(assert (= (and b!5334490 res!2262737) b!5334495))

(assert (= (and d!1712540 (not res!2262741)) b!5334496))

(declare-fun m!6367604 () Bool)

(assert (=> b!5334494 m!6367604))

(assert (=> b!5334494 m!6367604))

(declare-fun m!6367606 () Bool)

(assert (=> b!5334494 m!6367606))

(declare-fun m!6367608 () Bool)

(assert (=> b!5334494 m!6367608))

(assert (=> b!5334494 m!6367604))

(declare-fun m!6367610 () Bool)

(assert (=> b!5334494 m!6367610))

(declare-fun m!6367612 () Bool)

(assert (=> b!5334492 m!6367612))

(declare-fun m!6367614 () Bool)

(assert (=> d!1712540 m!6367614))

(declare-fun m!6367616 () Bool)

(assert (=> d!1712540 m!6367616))

(declare-fun m!6367618 () Bool)

(assert (=> d!1712540 m!6367618))

(assert (=> b!5334496 m!6367614))

(declare-fun m!6367620 () Bool)

(assert (=> b!5334495 m!6367620))

(declare-fun m!6367622 () Bool)

(assert (=> b!5334495 m!6367622))

(assert (=> b!5334489 m!6367620))

(declare-fun m!6367624 () Bool)

(assert (=> b!5334489 m!6367624))

(assert (=> b!5334490 m!6367620))

(declare-fun m!6367626 () Bool)

(assert (=> b!5334490 m!6367626))

(assert (=> b!5334098 d!1712540))

(declare-fun d!1712562 () Bool)

(assert (=> d!1712562 (= (matchR!7190 lt!2175553 s!2326) (matchZipper!1249 lt!2175551 s!2326))))

(declare-fun lt!2175670 () Unit!153538)

(declare-fun choose!39956 ((InoxSet Context!8778) List!61316 Regex!15005 List!61315) Unit!153538)

(assert (=> d!1712562 (= lt!2175670 (choose!39956 lt!2175551 lt!2175581 lt!2175553 s!2326))))

(assert (=> d!1712562 (validRegex!6741 lt!2175553)))

(assert (=> d!1712562 (= (theoremZipperRegexEquiv!403 lt!2175551 lt!2175581 lt!2175553 s!2326) lt!2175670)))

(declare-fun bs!1237094 () Bool)

(assert (= bs!1237094 d!1712562))

(assert (=> bs!1237094 m!6367254))

(assert (=> bs!1237094 m!6367230))

(declare-fun m!6367682 () Bool)

(assert (=> bs!1237094 m!6367682))

(declare-fun m!6367684 () Bool)

(assert (=> bs!1237094 m!6367684))

(assert (=> b!5334098 d!1712562))

(declare-fun d!1712578 () Bool)

(assert (=> d!1712578 (= (Exists!2186 lambda!272848) (choose!39953 lambda!272848))))

(declare-fun bs!1237101 () Bool)

(assert (= bs!1237101 d!1712578))

(declare-fun m!6367686 () Bool)

(assert (=> bs!1237101 m!6367686))

(assert (=> b!5334098 d!1712578))

(declare-fun d!1712580 () Bool)

(declare-fun isEmpty!33163 (Option!15116) Bool)

(assert (=> d!1712580 (= (isDefined!11819 (findConcatSeparation!1530 (regTwo!30522 (regOne!30522 r!7292)) lt!2175580 Nil!61191 s!2326 s!2326)) (not (isEmpty!33163 (findConcatSeparation!1530 (regTwo!30522 (regOne!30522 r!7292)) lt!2175580 Nil!61191 s!2326 s!2326))))))

(declare-fun bs!1237105 () Bool)

(assert (= bs!1237105 d!1712580))

(assert (=> bs!1237105 m!6367222))

(declare-fun m!6367712 () Bool)

(assert (=> bs!1237105 m!6367712))

(assert (=> b!5334098 d!1712580))

(declare-fun bs!1237141 () Bool)

(declare-fun b!5334645 () Bool)

(assert (= bs!1237141 (and b!5334645 b!5334098)))

(declare-fun lambda!272912 () Int)

(assert (=> bs!1237141 (not (= lambda!272912 lambda!272847))))

(assert (=> bs!1237141 (not (= lambda!272912 lambda!272849))))

(assert (=> bs!1237141 (not (= lambda!272912 lambda!272850))))

(declare-fun bs!1237142 () Bool)

(assert (= bs!1237142 (and b!5334645 b!5334092)))

(assert (=> bs!1237142 (not (= lambda!272912 lambda!272844))))

(assert (=> bs!1237142 (not (= lambda!272912 lambda!272845))))

(assert (=> bs!1237141 (not (= lambda!272912 lambda!272848))))

(assert (=> b!5334645 true))

(assert (=> b!5334645 true))

(declare-fun bs!1237143 () Bool)

(declare-fun b!5334646 () Bool)

(assert (= bs!1237143 (and b!5334646 b!5334098)))

(declare-fun lambda!272913 () Int)

(assert (=> bs!1237143 (not (= lambda!272913 lambda!272847))))

(assert (=> bs!1237143 (not (= lambda!272913 lambda!272849))))

(assert (=> bs!1237143 (= (and (= (regOne!30522 lt!2175572) (regTwo!30522 (regOne!30522 r!7292))) (= (regTwo!30522 lt!2175572) lt!2175580)) (= lambda!272913 lambda!272850))))

(declare-fun bs!1237144 () Bool)

(assert (= bs!1237144 (and b!5334646 b!5334092)))

(assert (=> bs!1237144 (not (= lambda!272913 lambda!272844))))

(declare-fun bs!1237145 () Bool)

(assert (= bs!1237145 (and b!5334646 b!5334645)))

(assert (=> bs!1237145 (not (= lambda!272913 lambda!272912))))

(assert (=> bs!1237144 (= (and (= (regOne!30522 lt!2175572) (regOne!30522 r!7292)) (= (regTwo!30522 lt!2175572) (regTwo!30522 r!7292))) (= lambda!272913 lambda!272845))))

(assert (=> bs!1237143 (= (and (= (regOne!30522 lt!2175572) (regOne!30522 (regOne!30522 r!7292))) (= (regTwo!30522 lt!2175572) lt!2175572)) (= lambda!272913 lambda!272848))))

(assert (=> b!5334646 true))

(assert (=> b!5334646 true))

(declare-fun b!5334644 () Bool)

(declare-fun c!927931 () Bool)

(assert (=> b!5334644 (= c!927931 ((_ is ElementMatch!15005) lt!2175572))))

(declare-fun e!3313073 () Bool)

(declare-fun e!3313077 () Bool)

(assert (=> b!5334644 (= e!3313073 e!3313077)))

(declare-fun e!3313075 () Bool)

(declare-fun call!381297 () Bool)

(assert (=> b!5334645 (= e!3313075 call!381297)))

(declare-fun bm!381292 () Bool)

(declare-fun call!381298 () Bool)

(assert (=> bm!381292 (= call!381298 (isEmpty!33162 s!2326))))

(declare-fun e!3313071 () Bool)

(assert (=> b!5334646 (= e!3313071 call!381297)))

(declare-fun b!5334647 () Bool)

(declare-fun e!3313072 () Bool)

(assert (=> b!5334647 (= e!3313072 call!381298)))

(declare-fun d!1712588 () Bool)

(declare-fun c!927934 () Bool)

(assert (=> d!1712588 (= c!927934 ((_ is EmptyExpr!15005) lt!2175572))))

(assert (=> d!1712588 (= (matchRSpec!2108 lt!2175572 s!2326) e!3313072)))

(declare-fun b!5334648 () Bool)

(declare-fun e!3313076 () Bool)

(declare-fun e!3313074 () Bool)

(assert (=> b!5334648 (= e!3313076 e!3313074)))

(declare-fun res!2262804 () Bool)

(assert (=> b!5334648 (= res!2262804 (matchRSpec!2108 (regOne!30523 lt!2175572) s!2326))))

(assert (=> b!5334648 (=> res!2262804 e!3313074)))

(declare-fun b!5334649 () Bool)

(assert (=> b!5334649 (= e!3313074 (matchRSpec!2108 (regTwo!30523 lt!2175572) s!2326))))

(declare-fun b!5334650 () Bool)

(assert (=> b!5334650 (= e!3313077 (= s!2326 (Cons!61191 (c!927759 lt!2175572) Nil!61191)))))

(declare-fun b!5334651 () Bool)

(assert (=> b!5334651 (= e!3313072 e!3313073)))

(declare-fun res!2262805 () Bool)

(assert (=> b!5334651 (= res!2262805 (not ((_ is EmptyLang!15005) lt!2175572)))))

(assert (=> b!5334651 (=> (not res!2262805) (not e!3313073))))

(declare-fun b!5334652 () Bool)

(declare-fun c!927932 () Bool)

(assert (=> b!5334652 (= c!927932 ((_ is Union!15005) lt!2175572))))

(assert (=> b!5334652 (= e!3313077 e!3313076)))

(declare-fun bm!381293 () Bool)

(declare-fun c!927933 () Bool)

(assert (=> bm!381293 (= call!381297 (Exists!2186 (ite c!927933 lambda!272912 lambda!272913)))))

(declare-fun b!5334653 () Bool)

(assert (=> b!5334653 (= e!3313076 e!3313071)))

(assert (=> b!5334653 (= c!927933 ((_ is Star!15005) lt!2175572))))

(declare-fun b!5334654 () Bool)

(declare-fun res!2262806 () Bool)

(assert (=> b!5334654 (=> res!2262806 e!3313075)))

(assert (=> b!5334654 (= res!2262806 call!381298)))

(assert (=> b!5334654 (= e!3313071 e!3313075)))

(assert (= (and d!1712588 c!927934) b!5334647))

(assert (= (and d!1712588 (not c!927934)) b!5334651))

(assert (= (and b!5334651 res!2262805) b!5334644))

(assert (= (and b!5334644 c!927931) b!5334650))

(assert (= (and b!5334644 (not c!927931)) b!5334652))

(assert (= (and b!5334652 c!927932) b!5334648))

(assert (= (and b!5334652 (not c!927932)) b!5334653))

(assert (= (and b!5334648 (not res!2262804)) b!5334649))

(assert (= (and b!5334653 c!927933) b!5334654))

(assert (= (and b!5334653 (not c!927933)) b!5334646))

(assert (= (and b!5334654 (not res!2262806)) b!5334645))

(assert (= (or b!5334645 b!5334646) bm!381293))

(assert (= (or b!5334647 b!5334654) bm!381292))

(declare-fun m!6367792 () Bool)

(assert (=> bm!381292 m!6367792))

(declare-fun m!6367794 () Bool)

(assert (=> b!5334648 m!6367794))

(declare-fun m!6367796 () Bool)

(assert (=> b!5334649 m!6367796))

(declare-fun m!6367798 () Bool)

(assert (=> bm!381293 m!6367798))

(assert (=> b!5334098 d!1712588))

(declare-fun b!5334737 () Bool)

(declare-fun res!2262830 () Bool)

(declare-fun e!3313117 () Bool)

(assert (=> b!5334737 (=> res!2262830 e!3313117)))

(declare-fun e!3313116 () Bool)

(assert (=> b!5334737 (= res!2262830 e!3313116)))

(declare-fun res!2262825 () Bool)

(assert (=> b!5334737 (=> (not res!2262825) (not e!3313116))))

(declare-fun lt!2175684 () Bool)

(assert (=> b!5334737 (= res!2262825 lt!2175684)))

(declare-fun d!1712628 () Bool)

(declare-fun e!3313115 () Bool)

(assert (=> d!1712628 e!3313115))

(declare-fun c!927941 () Bool)

(assert (=> d!1712628 (= c!927941 ((_ is EmptyExpr!15005) lt!2175553))))

(declare-fun e!3313120 () Bool)

(assert (=> d!1712628 (= lt!2175684 e!3313120)))

(declare-fun c!927943 () Bool)

(assert (=> d!1712628 (= c!927943 (isEmpty!33162 s!2326))))

(assert (=> d!1712628 (validRegex!6741 lt!2175553)))

(assert (=> d!1712628 (= (matchR!7190 lt!2175553 s!2326) lt!2175684)))

(declare-fun b!5334738 () Bool)

(declare-fun e!3313119 () Bool)

(assert (=> b!5334738 (= e!3313117 e!3313119)))

(declare-fun res!2262827 () Bool)

(assert (=> b!5334738 (=> (not res!2262827) (not e!3313119))))

(assert (=> b!5334738 (= res!2262827 (not lt!2175684))))

(declare-fun b!5334739 () Bool)

(declare-fun res!2262823 () Bool)

(assert (=> b!5334739 (=> res!2262823 e!3313117)))

(assert (=> b!5334739 (= res!2262823 (not ((_ is ElementMatch!15005) lt!2175553)))))

(declare-fun e!3313121 () Bool)

(assert (=> b!5334739 (= e!3313121 e!3313117)))

(declare-fun b!5334740 () Bool)

(declare-fun call!381301 () Bool)

(assert (=> b!5334740 (= e!3313115 (= lt!2175684 call!381301))))

(declare-fun b!5334741 () Bool)

(declare-fun res!2262829 () Bool)

(declare-fun e!3313118 () Bool)

(assert (=> b!5334741 (=> res!2262829 e!3313118)))

(assert (=> b!5334741 (= res!2262829 (not (isEmpty!33162 (tail!10531 s!2326))))))

(declare-fun bm!381296 () Bool)

(assert (=> bm!381296 (= call!381301 (isEmpty!33162 s!2326))))

(declare-fun b!5334742 () Bool)

(assert (=> b!5334742 (= e!3313120 (nullable!5174 lt!2175553))))

(declare-fun b!5334743 () Bool)

(assert (=> b!5334743 (= e!3313115 e!3313121)))

(declare-fun c!927942 () Bool)

(assert (=> b!5334743 (= c!927942 ((_ is EmptyLang!15005) lt!2175553))))

(declare-fun b!5334744 () Bool)

(declare-fun res!2262824 () Bool)

(assert (=> b!5334744 (=> (not res!2262824) (not e!3313116))))

(assert (=> b!5334744 (= res!2262824 (not call!381301))))

(declare-fun b!5334745 () Bool)

(declare-fun res!2262828 () Bool)

(assert (=> b!5334745 (=> (not res!2262828) (not e!3313116))))

(assert (=> b!5334745 (= res!2262828 (isEmpty!33162 (tail!10531 s!2326)))))

(declare-fun b!5334746 () Bool)

(assert (=> b!5334746 (= e!3313119 e!3313118)))

(declare-fun res!2262826 () Bool)

(assert (=> b!5334746 (=> res!2262826 e!3313118)))

(assert (=> b!5334746 (= res!2262826 call!381301)))

(declare-fun b!5334747 () Bool)

(declare-fun derivativeStep!4179 (Regex!15005 C!30280) Regex!15005)

(assert (=> b!5334747 (= e!3313120 (matchR!7190 (derivativeStep!4179 lt!2175553 (head!11434 s!2326)) (tail!10531 s!2326)))))

(declare-fun b!5334748 () Bool)

(assert (=> b!5334748 (= e!3313118 (not (= (head!11434 s!2326) (c!927759 lt!2175553))))))

(declare-fun b!5334749 () Bool)

(assert (=> b!5334749 (= e!3313116 (= (head!11434 s!2326) (c!927759 lt!2175553)))))

(declare-fun b!5334750 () Bool)

(assert (=> b!5334750 (= e!3313121 (not lt!2175684))))

(assert (= (and d!1712628 c!927943) b!5334742))

(assert (= (and d!1712628 (not c!927943)) b!5334747))

(assert (= (and d!1712628 c!927941) b!5334740))

(assert (= (and d!1712628 (not c!927941)) b!5334743))

(assert (= (and b!5334743 c!927942) b!5334750))

(assert (= (and b!5334743 (not c!927942)) b!5334739))

(assert (= (and b!5334739 (not res!2262823)) b!5334737))

(assert (= (and b!5334737 res!2262825) b!5334744))

(assert (= (and b!5334744 res!2262824) b!5334745))

(assert (= (and b!5334745 res!2262828) b!5334749))

(assert (= (and b!5334737 (not res!2262830)) b!5334738))

(assert (= (and b!5334738 res!2262827) b!5334746))

(assert (= (and b!5334746 (not res!2262826)) b!5334741))

(assert (= (and b!5334741 (not res!2262829)) b!5334748))

(assert (= (or b!5334740 b!5334744 b!5334746) bm!381296))

(assert (=> bm!381296 m!6367792))

(declare-fun m!6367800 () Bool)

(assert (=> b!5334742 m!6367800))

(declare-fun m!6367802 () Bool)

(assert (=> b!5334741 m!6367802))

(assert (=> b!5334741 m!6367802))

(declare-fun m!6367804 () Bool)

(assert (=> b!5334741 m!6367804))

(declare-fun m!6367806 () Bool)

(assert (=> b!5334747 m!6367806))

(assert (=> b!5334747 m!6367806))

(declare-fun m!6367808 () Bool)

(assert (=> b!5334747 m!6367808))

(assert (=> b!5334747 m!6367802))

(assert (=> b!5334747 m!6367808))

(assert (=> b!5334747 m!6367802))

(declare-fun m!6367810 () Bool)

(assert (=> b!5334747 m!6367810))

(assert (=> d!1712628 m!6367792))

(assert (=> d!1712628 m!6367684))

(assert (=> b!5334748 m!6367806))

(assert (=> b!5334745 m!6367802))

(assert (=> b!5334745 m!6367802))

(assert (=> b!5334745 m!6367804))

(assert (=> b!5334749 m!6367806))

(assert (=> b!5334098 d!1712628))

(declare-fun bs!1237149 () Bool)

(declare-fun b!5334752 () Bool)

(assert (= bs!1237149 (and b!5334752 b!5334098)))

(declare-fun lambda!272914 () Int)

(assert (=> bs!1237149 (not (= lambda!272914 lambda!272847))))

(declare-fun bs!1237150 () Bool)

(assert (= bs!1237150 (and b!5334752 b!5334646)))

(assert (=> bs!1237150 (not (= lambda!272914 lambda!272913))))

(assert (=> bs!1237149 (not (= lambda!272914 lambda!272849))))

(assert (=> bs!1237149 (not (= lambda!272914 lambda!272850))))

(declare-fun bs!1237151 () Bool)

(assert (= bs!1237151 (and b!5334752 b!5334092)))

(assert (=> bs!1237151 (not (= lambda!272914 lambda!272844))))

(declare-fun bs!1237152 () Bool)

(assert (= bs!1237152 (and b!5334752 b!5334645)))

(assert (=> bs!1237152 (= (and (= (reg!15334 lt!2175553) (reg!15334 lt!2175572)) (= lt!2175553 lt!2175572)) (= lambda!272914 lambda!272912))))

(assert (=> bs!1237151 (not (= lambda!272914 lambda!272845))))

(assert (=> bs!1237149 (not (= lambda!272914 lambda!272848))))

(assert (=> b!5334752 true))

(assert (=> b!5334752 true))

(declare-fun bs!1237153 () Bool)

(declare-fun b!5334753 () Bool)

(assert (= bs!1237153 (and b!5334753 b!5334098)))

(declare-fun lambda!272915 () Int)

(assert (=> bs!1237153 (not (= lambda!272915 lambda!272847))))

(declare-fun bs!1237154 () Bool)

(assert (= bs!1237154 (and b!5334753 b!5334646)))

(assert (=> bs!1237154 (= (and (= (regOne!30522 lt!2175553) (regOne!30522 lt!2175572)) (= (regTwo!30522 lt!2175553) (regTwo!30522 lt!2175572))) (= lambda!272915 lambda!272913))))

(assert (=> bs!1237153 (not (= lambda!272915 lambda!272849))))

(assert (=> bs!1237153 (= (and (= (regOne!30522 lt!2175553) (regTwo!30522 (regOne!30522 r!7292))) (= (regTwo!30522 lt!2175553) lt!2175580)) (= lambda!272915 lambda!272850))))

(declare-fun bs!1237155 () Bool)

(assert (= bs!1237155 (and b!5334753 b!5334752)))

(assert (=> bs!1237155 (not (= lambda!272915 lambda!272914))))

(declare-fun bs!1237156 () Bool)

(assert (= bs!1237156 (and b!5334753 b!5334092)))

(assert (=> bs!1237156 (not (= lambda!272915 lambda!272844))))

(declare-fun bs!1237157 () Bool)

(assert (= bs!1237157 (and b!5334753 b!5334645)))

(assert (=> bs!1237157 (not (= lambda!272915 lambda!272912))))

(assert (=> bs!1237156 (= (and (= (regOne!30522 lt!2175553) (regOne!30522 r!7292)) (= (regTwo!30522 lt!2175553) (regTwo!30522 r!7292))) (= lambda!272915 lambda!272845))))

(assert (=> bs!1237153 (= (and (= (regOne!30522 lt!2175553) (regOne!30522 (regOne!30522 r!7292))) (= (regTwo!30522 lt!2175553) lt!2175572)) (= lambda!272915 lambda!272848))))

(assert (=> b!5334753 true))

(assert (=> b!5334753 true))

(declare-fun b!5334751 () Bool)

(declare-fun c!927944 () Bool)

(assert (=> b!5334751 (= c!927944 ((_ is ElementMatch!15005) lt!2175553))))

(declare-fun e!3313124 () Bool)

(declare-fun e!3313128 () Bool)

(assert (=> b!5334751 (= e!3313124 e!3313128)))

(declare-fun e!3313126 () Bool)

(declare-fun call!381302 () Bool)

(assert (=> b!5334752 (= e!3313126 call!381302)))

(declare-fun bm!381297 () Bool)

(declare-fun call!381303 () Bool)

(assert (=> bm!381297 (= call!381303 (isEmpty!33162 s!2326))))

(declare-fun e!3313122 () Bool)

(assert (=> b!5334753 (= e!3313122 call!381302)))

(declare-fun b!5334754 () Bool)

(declare-fun e!3313123 () Bool)

(assert (=> b!5334754 (= e!3313123 call!381303)))

(declare-fun d!1712630 () Bool)

(declare-fun c!927947 () Bool)

(assert (=> d!1712630 (= c!927947 ((_ is EmptyExpr!15005) lt!2175553))))

(assert (=> d!1712630 (= (matchRSpec!2108 lt!2175553 s!2326) e!3313123)))

(declare-fun b!5334755 () Bool)

(declare-fun e!3313127 () Bool)

(declare-fun e!3313125 () Bool)

(assert (=> b!5334755 (= e!3313127 e!3313125)))

(declare-fun res!2262831 () Bool)

(assert (=> b!5334755 (= res!2262831 (matchRSpec!2108 (regOne!30523 lt!2175553) s!2326))))

(assert (=> b!5334755 (=> res!2262831 e!3313125)))

(declare-fun b!5334756 () Bool)

(assert (=> b!5334756 (= e!3313125 (matchRSpec!2108 (regTwo!30523 lt!2175553) s!2326))))

(declare-fun b!5334757 () Bool)

(assert (=> b!5334757 (= e!3313128 (= s!2326 (Cons!61191 (c!927759 lt!2175553) Nil!61191)))))

(declare-fun b!5334758 () Bool)

(assert (=> b!5334758 (= e!3313123 e!3313124)))

(declare-fun res!2262832 () Bool)

(assert (=> b!5334758 (= res!2262832 (not ((_ is EmptyLang!15005) lt!2175553)))))

(assert (=> b!5334758 (=> (not res!2262832) (not e!3313124))))

(declare-fun b!5334759 () Bool)

(declare-fun c!927945 () Bool)

(assert (=> b!5334759 (= c!927945 ((_ is Union!15005) lt!2175553))))

(assert (=> b!5334759 (= e!3313128 e!3313127)))

(declare-fun c!927946 () Bool)

(declare-fun bm!381298 () Bool)

(assert (=> bm!381298 (= call!381302 (Exists!2186 (ite c!927946 lambda!272914 lambda!272915)))))

(declare-fun b!5334760 () Bool)

(assert (=> b!5334760 (= e!3313127 e!3313122)))

(assert (=> b!5334760 (= c!927946 ((_ is Star!15005) lt!2175553))))

(declare-fun b!5334761 () Bool)

(declare-fun res!2262833 () Bool)

(assert (=> b!5334761 (=> res!2262833 e!3313126)))

(assert (=> b!5334761 (= res!2262833 call!381303)))

(assert (=> b!5334761 (= e!3313122 e!3313126)))

(assert (= (and d!1712630 c!927947) b!5334754))

(assert (= (and d!1712630 (not c!927947)) b!5334758))

(assert (= (and b!5334758 res!2262832) b!5334751))

(assert (= (and b!5334751 c!927944) b!5334757))

(assert (= (and b!5334751 (not c!927944)) b!5334759))

(assert (= (and b!5334759 c!927945) b!5334755))

(assert (= (and b!5334759 (not c!927945)) b!5334760))

(assert (= (and b!5334755 (not res!2262831)) b!5334756))

(assert (= (and b!5334760 c!927946) b!5334761))

(assert (= (and b!5334760 (not c!927946)) b!5334753))

(assert (= (and b!5334761 (not res!2262833)) b!5334752))

(assert (= (or b!5334752 b!5334753) bm!381298))

(assert (= (or b!5334754 b!5334761) bm!381297))

(assert (=> bm!381297 m!6367792))

(declare-fun m!6367812 () Bool)

(assert (=> b!5334755 m!6367812))

(declare-fun m!6367814 () Bool)

(assert (=> b!5334756 m!6367814))

(declare-fun m!6367816 () Bool)

(assert (=> bm!381298 m!6367816))

(assert (=> b!5334098 d!1712630))

(declare-fun bs!1237158 () Bool)

(declare-fun d!1712632 () Bool)

(assert (= bs!1237158 (and d!1712632 b!5334098)))

(declare-fun lambda!272918 () Int)

(assert (=> bs!1237158 (= lambda!272918 lambda!272847)))

(declare-fun bs!1237159 () Bool)

(assert (= bs!1237159 (and d!1712632 b!5334646)))

(assert (=> bs!1237159 (not (= lambda!272918 lambda!272913))))

(assert (=> bs!1237158 (= (and (= (regOne!30522 (regOne!30522 r!7292)) (regTwo!30522 (regOne!30522 r!7292))) (= lt!2175572 lt!2175580)) (= lambda!272918 lambda!272849))))

(assert (=> bs!1237158 (not (= lambda!272918 lambda!272850))))

(declare-fun bs!1237160 () Bool)

(assert (= bs!1237160 (and d!1712632 b!5334752)))

(assert (=> bs!1237160 (not (= lambda!272918 lambda!272914))))

(declare-fun bs!1237161 () Bool)

(assert (= bs!1237161 (and d!1712632 b!5334092)))

(assert (=> bs!1237161 (= (and (= (regOne!30522 (regOne!30522 r!7292)) (regOne!30522 r!7292)) (= lt!2175572 (regTwo!30522 r!7292))) (= lambda!272918 lambda!272844))))

(declare-fun bs!1237162 () Bool)

(assert (= bs!1237162 (and d!1712632 b!5334645)))

(assert (=> bs!1237162 (not (= lambda!272918 lambda!272912))))

(declare-fun bs!1237163 () Bool)

(assert (= bs!1237163 (and d!1712632 b!5334753)))

(assert (=> bs!1237163 (not (= lambda!272918 lambda!272915))))

(assert (=> bs!1237161 (not (= lambda!272918 lambda!272845))))

(assert (=> bs!1237158 (not (= lambda!272918 lambda!272848))))

(assert (=> d!1712632 true))

(assert (=> d!1712632 true))

(assert (=> d!1712632 true))

(assert (=> d!1712632 (= (isDefined!11819 (findConcatSeparation!1530 (regOne!30522 (regOne!30522 r!7292)) lt!2175572 Nil!61191 s!2326 s!2326)) (Exists!2186 lambda!272918))))

(declare-fun lt!2175687 () Unit!153538)

(declare-fun choose!39958 (Regex!15005 Regex!15005 List!61315) Unit!153538)

(assert (=> d!1712632 (= lt!2175687 (choose!39958 (regOne!30522 (regOne!30522 r!7292)) lt!2175572 s!2326))))

(assert (=> d!1712632 (validRegex!6741 (regOne!30522 (regOne!30522 r!7292)))))

(assert (=> d!1712632 (= (lemmaFindConcatSeparationEquivalentToExists!1294 (regOne!30522 (regOne!30522 r!7292)) lt!2175572 s!2326) lt!2175687)))

(declare-fun bs!1237164 () Bool)

(assert (= bs!1237164 d!1712632))

(declare-fun m!6367818 () Bool)

(assert (=> bs!1237164 m!6367818))

(declare-fun m!6367820 () Bool)

(assert (=> bs!1237164 m!6367820))

(assert (=> bs!1237164 m!6367250))

(declare-fun m!6367822 () Bool)

(assert (=> bs!1237164 m!6367822))

(assert (=> bs!1237164 m!6367250))

(assert (=> bs!1237164 m!6367252))

(assert (=> b!5334098 d!1712632))

(declare-fun bs!1237165 () Bool)

(declare-fun d!1712634 () Bool)

(assert (= bs!1237165 (and d!1712634 b!5334103)))

(declare-fun lambda!272921 () Int)

(assert (=> bs!1237165 (= lambda!272921 lambda!272851)))

(declare-fun b!5334786 () Bool)

(declare-fun e!3313148 () Regex!15005)

(assert (=> b!5334786 (= e!3313148 (Concat!23850 (h!67638 lt!2175562) (generalisedConcat!674 (t!374531 lt!2175562))))))

(declare-fun b!5334787 () Bool)

(declare-fun e!3313144 () Bool)

(declare-fun lt!2175690 () Regex!15005)

(declare-fun isEmptyExpr!893 (Regex!15005) Bool)

(assert (=> b!5334787 (= e!3313144 (isEmptyExpr!893 lt!2175690))))

(declare-fun b!5334788 () Bool)

(declare-fun e!3313147 () Bool)

(declare-fun isConcat!416 (Regex!15005) Bool)

(assert (=> b!5334788 (= e!3313147 (isConcat!416 lt!2175690))))

(declare-fun b!5334789 () Bool)

(assert (=> b!5334789 (= e!3313144 e!3313147)))

(declare-fun c!927959 () Bool)

(declare-fun tail!10532 (List!61314) List!61314)

(assert (=> b!5334789 (= c!927959 (isEmpty!33159 (tail!10532 lt!2175562)))))

(declare-fun b!5334790 () Bool)

(declare-fun e!3313143 () Regex!15005)

(assert (=> b!5334790 (= e!3313143 e!3313148)))

(declare-fun c!927958 () Bool)

(assert (=> b!5334790 (= c!927958 ((_ is Cons!61190) lt!2175562))))

(declare-fun b!5334791 () Bool)

(assert (=> b!5334791 (= e!3313148 EmptyExpr!15005)))

(declare-fun b!5334792 () Bool)

(declare-fun e!3313146 () Bool)

(assert (=> b!5334792 (= e!3313146 e!3313144)))

(declare-fun c!927957 () Bool)

(assert (=> b!5334792 (= c!927957 (isEmpty!33159 lt!2175562))))

(declare-fun b!5334793 () Bool)

(assert (=> b!5334793 (= e!3313143 (h!67638 lt!2175562))))

(assert (=> d!1712634 e!3313146))

(declare-fun res!2262843 () Bool)

(assert (=> d!1712634 (=> (not res!2262843) (not e!3313146))))

(assert (=> d!1712634 (= res!2262843 (validRegex!6741 lt!2175690))))

(assert (=> d!1712634 (= lt!2175690 e!3313143)))

(declare-fun c!927956 () Bool)

(declare-fun e!3313145 () Bool)

(assert (=> d!1712634 (= c!927956 e!3313145)))

(declare-fun res!2262842 () Bool)

(assert (=> d!1712634 (=> (not res!2262842) (not e!3313145))))

(assert (=> d!1712634 (= res!2262842 ((_ is Cons!61190) lt!2175562))))

(assert (=> d!1712634 (forall!14423 lt!2175562 lambda!272921)))

(assert (=> d!1712634 (= (generalisedConcat!674 lt!2175562) lt!2175690)))

(declare-fun b!5334794 () Bool)

(declare-fun head!11435 (List!61314) Regex!15005)

(assert (=> b!5334794 (= e!3313147 (= lt!2175690 (head!11435 lt!2175562)))))

(declare-fun b!5334795 () Bool)

(assert (=> b!5334795 (= e!3313145 (isEmpty!33159 (t!374531 lt!2175562)))))

(assert (= (and d!1712634 res!2262842) b!5334795))

(assert (= (and d!1712634 c!927956) b!5334793))

(assert (= (and d!1712634 (not c!927956)) b!5334790))

(assert (= (and b!5334790 c!927958) b!5334786))

(assert (= (and b!5334790 (not c!927958)) b!5334791))

(assert (= (and d!1712634 res!2262843) b!5334792))

(assert (= (and b!5334792 c!927957) b!5334787))

(assert (= (and b!5334792 (not c!927957)) b!5334789))

(assert (= (and b!5334789 c!927959) b!5334794))

(assert (= (and b!5334789 (not c!927959)) b!5334788))

(declare-fun m!6367824 () Bool)

(assert (=> b!5334789 m!6367824))

(assert (=> b!5334789 m!6367824))

(declare-fun m!6367826 () Bool)

(assert (=> b!5334789 m!6367826))

(declare-fun m!6367828 () Bool)

(assert (=> d!1712634 m!6367828))

(declare-fun m!6367830 () Bool)

(assert (=> d!1712634 m!6367830))

(declare-fun m!6367832 () Bool)

(assert (=> b!5334792 m!6367832))

(declare-fun m!6367834 () Bool)

(assert (=> b!5334788 m!6367834))

(declare-fun m!6367836 () Bool)

(assert (=> b!5334794 m!6367836))

(declare-fun m!6367838 () Bool)

(assert (=> b!5334787 m!6367838))

(declare-fun m!6367840 () Bool)

(assert (=> b!5334786 m!6367840))

(declare-fun m!6367842 () Bool)

(assert (=> b!5334795 m!6367842))

(assert (=> b!5334098 d!1712634))

(declare-fun d!1712636 () Bool)

(assert (=> d!1712636 (= (matchR!7190 lt!2175572 s!2326) (matchRSpec!2108 lt!2175572 s!2326))))

(declare-fun lt!2175693 () Unit!153538)

(declare-fun choose!39960 (Regex!15005 List!61315) Unit!153538)

(assert (=> d!1712636 (= lt!2175693 (choose!39960 lt!2175572 s!2326))))

(assert (=> d!1712636 (validRegex!6741 lt!2175572)))

(assert (=> d!1712636 (= (mainMatchTheorem!2108 lt!2175572 s!2326) lt!2175693)))

(declare-fun bs!1237166 () Bool)

(assert (= bs!1237166 d!1712636))

(assert (=> bs!1237166 m!6367240))

(assert (=> bs!1237166 m!6367232))

(declare-fun m!6367844 () Bool)

(assert (=> bs!1237166 m!6367844))

(declare-fun m!6367846 () Bool)

(assert (=> bs!1237166 m!6367846))

(assert (=> b!5334098 d!1712636))

(declare-fun d!1712638 () Bool)

(assert (=> d!1712638 (= (Exists!2186 lambda!272850) (choose!39953 lambda!272850))))

(declare-fun bs!1237167 () Bool)

(assert (= bs!1237167 d!1712638))

(declare-fun m!6367848 () Bool)

(assert (=> bs!1237167 m!6367848))

(assert (=> b!5334098 d!1712638))

(declare-fun bs!1237168 () Bool)

(declare-fun d!1712640 () Bool)

(assert (= bs!1237168 (and d!1712640 b!5334098)))

(declare-fun lambda!272926 () Int)

(assert (=> bs!1237168 (= (and (= (regTwo!30522 (regOne!30522 r!7292)) (regOne!30522 (regOne!30522 r!7292))) (= lt!2175580 lt!2175572)) (= lambda!272926 lambda!272847))))

(declare-fun bs!1237169 () Bool)

(assert (= bs!1237169 (and d!1712640 b!5334646)))

(assert (=> bs!1237169 (not (= lambda!272926 lambda!272913))))

(assert (=> bs!1237168 (= lambda!272926 lambda!272849)))

(declare-fun bs!1237170 () Bool)

(assert (= bs!1237170 (and d!1712640 b!5334752)))

(assert (=> bs!1237170 (not (= lambda!272926 lambda!272914))))

(declare-fun bs!1237171 () Bool)

(assert (= bs!1237171 (and d!1712640 b!5334092)))

(assert (=> bs!1237171 (= (and (= (regTwo!30522 (regOne!30522 r!7292)) (regOne!30522 r!7292)) (= lt!2175580 (regTwo!30522 r!7292))) (= lambda!272926 lambda!272844))))

(declare-fun bs!1237172 () Bool)

(assert (= bs!1237172 (and d!1712640 b!5334645)))

(assert (=> bs!1237172 (not (= lambda!272926 lambda!272912))))

(declare-fun bs!1237173 () Bool)

(assert (= bs!1237173 (and d!1712640 b!5334753)))

(assert (=> bs!1237173 (not (= lambda!272926 lambda!272915))))

(assert (=> bs!1237168 (not (= lambda!272926 lambda!272850))))

(declare-fun bs!1237174 () Bool)

(assert (= bs!1237174 (and d!1712640 d!1712632)))

(assert (=> bs!1237174 (= (and (= (regTwo!30522 (regOne!30522 r!7292)) (regOne!30522 (regOne!30522 r!7292))) (= lt!2175580 lt!2175572)) (= lambda!272926 lambda!272918))))

(assert (=> bs!1237171 (not (= lambda!272926 lambda!272845))))

(assert (=> bs!1237168 (not (= lambda!272926 lambda!272848))))

(assert (=> d!1712640 true))

(assert (=> d!1712640 true))

(assert (=> d!1712640 true))

(declare-fun lambda!272927 () Int)

(assert (=> bs!1237168 (not (= lambda!272927 lambda!272847))))

(declare-fun bs!1237175 () Bool)

(assert (= bs!1237175 d!1712640))

(assert (=> bs!1237175 (not (= lambda!272927 lambda!272926))))

(assert (=> bs!1237169 (= (and (= (regTwo!30522 (regOne!30522 r!7292)) (regOne!30522 lt!2175572)) (= lt!2175580 (regTwo!30522 lt!2175572))) (= lambda!272927 lambda!272913))))

(assert (=> bs!1237168 (not (= lambda!272927 lambda!272849))))

(assert (=> bs!1237170 (not (= lambda!272927 lambda!272914))))

(assert (=> bs!1237171 (not (= lambda!272927 lambda!272844))))

(assert (=> bs!1237172 (not (= lambda!272927 lambda!272912))))

(assert (=> bs!1237173 (= (and (= (regTwo!30522 (regOne!30522 r!7292)) (regOne!30522 lt!2175553)) (= lt!2175580 (regTwo!30522 lt!2175553))) (= lambda!272927 lambda!272915))))

(assert (=> bs!1237168 (= lambda!272927 lambda!272850)))

(assert (=> bs!1237174 (not (= lambda!272927 lambda!272918))))

(assert (=> bs!1237171 (= (and (= (regTwo!30522 (regOne!30522 r!7292)) (regOne!30522 r!7292)) (= lt!2175580 (regTwo!30522 r!7292))) (= lambda!272927 lambda!272845))))

(assert (=> bs!1237168 (= (and (= (regTwo!30522 (regOne!30522 r!7292)) (regOne!30522 (regOne!30522 r!7292))) (= lt!2175580 lt!2175572)) (= lambda!272927 lambda!272848))))

(assert (=> d!1712640 true))

(assert (=> d!1712640 true))

(assert (=> d!1712640 true))

(assert (=> d!1712640 (= (Exists!2186 lambda!272926) (Exists!2186 lambda!272927))))

(declare-fun lt!2175696 () Unit!153538)

(declare-fun choose!39961 (Regex!15005 Regex!15005 List!61315) Unit!153538)

(assert (=> d!1712640 (= lt!2175696 (choose!39961 (regTwo!30522 (regOne!30522 r!7292)) lt!2175580 s!2326))))

(assert (=> d!1712640 (validRegex!6741 (regTwo!30522 (regOne!30522 r!7292)))))

(assert (=> d!1712640 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!840 (regTwo!30522 (regOne!30522 r!7292)) lt!2175580 s!2326) lt!2175696)))

(declare-fun m!6367850 () Bool)

(assert (=> bs!1237175 m!6367850))

(declare-fun m!6367852 () Bool)

(assert (=> bs!1237175 m!6367852))

(declare-fun m!6367854 () Bool)

(assert (=> bs!1237175 m!6367854))

(assert (=> bs!1237175 m!6367618))

(assert (=> b!5334098 d!1712640))

(declare-fun d!1712642 () Bool)

(assert (=> d!1712642 (= (matchR!7190 lt!2175553 s!2326) (matchRSpec!2108 lt!2175553 s!2326))))

(declare-fun lt!2175697 () Unit!153538)

(assert (=> d!1712642 (= lt!2175697 (choose!39960 lt!2175553 s!2326))))

(assert (=> d!1712642 (validRegex!6741 lt!2175553)))

(assert (=> d!1712642 (= (mainMatchTheorem!2108 lt!2175553 s!2326) lt!2175697)))

(declare-fun bs!1237176 () Bool)

(assert (= bs!1237176 d!1712642))

(assert (=> bs!1237176 m!6367254))

(assert (=> bs!1237176 m!6367216))

(declare-fun m!6367856 () Bool)

(assert (=> bs!1237176 m!6367856))

(assert (=> bs!1237176 m!6367684))

(assert (=> b!5334098 d!1712642))

(declare-fun bs!1237177 () Bool)

(declare-fun d!1712644 () Bool)

(assert (= bs!1237177 (and d!1712644 b!5334103)))

(declare-fun lambda!272928 () Int)

(assert (=> bs!1237177 (= lambda!272928 lambda!272851)))

(declare-fun bs!1237178 () Bool)

(assert (= bs!1237178 (and d!1712644 d!1712634)))

(assert (=> bs!1237178 (= lambda!272928 lambda!272921)))

(declare-fun b!5334804 () Bool)

(declare-fun e!3313158 () Regex!15005)

(assert (=> b!5334804 (= e!3313158 (Concat!23850 (h!67638 (t!374531 (exprs!4889 (h!67640 zl!343)))) (generalisedConcat!674 (t!374531 (t!374531 (exprs!4889 (h!67640 zl!343)))))))))

(declare-fun b!5334805 () Bool)

(declare-fun e!3313154 () Bool)

(declare-fun lt!2175698 () Regex!15005)

(assert (=> b!5334805 (= e!3313154 (isEmptyExpr!893 lt!2175698))))

(declare-fun b!5334806 () Bool)

(declare-fun e!3313157 () Bool)

(assert (=> b!5334806 (= e!3313157 (isConcat!416 lt!2175698))))

(declare-fun b!5334807 () Bool)

(assert (=> b!5334807 (= e!3313154 e!3313157)))

(declare-fun c!927963 () Bool)

(assert (=> b!5334807 (= c!927963 (isEmpty!33159 (tail!10532 (t!374531 (exprs!4889 (h!67640 zl!343))))))))

(declare-fun b!5334808 () Bool)

(declare-fun e!3313153 () Regex!15005)

(assert (=> b!5334808 (= e!3313153 e!3313158)))

(declare-fun c!927962 () Bool)

(assert (=> b!5334808 (= c!927962 ((_ is Cons!61190) (t!374531 (exprs!4889 (h!67640 zl!343)))))))

(declare-fun b!5334809 () Bool)

(assert (=> b!5334809 (= e!3313158 EmptyExpr!15005)))

(declare-fun b!5334810 () Bool)

(declare-fun e!3313156 () Bool)

(assert (=> b!5334810 (= e!3313156 e!3313154)))

(declare-fun c!927961 () Bool)

(assert (=> b!5334810 (= c!927961 (isEmpty!33159 (t!374531 (exprs!4889 (h!67640 zl!343)))))))

(declare-fun b!5334811 () Bool)

(assert (=> b!5334811 (= e!3313153 (h!67638 (t!374531 (exprs!4889 (h!67640 zl!343)))))))

(assert (=> d!1712644 e!3313156))

(declare-fun res!2262853 () Bool)

(assert (=> d!1712644 (=> (not res!2262853) (not e!3313156))))

(assert (=> d!1712644 (= res!2262853 (validRegex!6741 lt!2175698))))

(assert (=> d!1712644 (= lt!2175698 e!3313153)))

(declare-fun c!927960 () Bool)

(declare-fun e!3313155 () Bool)

(assert (=> d!1712644 (= c!927960 e!3313155)))

(declare-fun res!2262852 () Bool)

(assert (=> d!1712644 (=> (not res!2262852) (not e!3313155))))

(assert (=> d!1712644 (= res!2262852 ((_ is Cons!61190) (t!374531 (exprs!4889 (h!67640 zl!343)))))))

(assert (=> d!1712644 (forall!14423 (t!374531 (exprs!4889 (h!67640 zl!343))) lambda!272928)))

(assert (=> d!1712644 (= (generalisedConcat!674 (t!374531 (exprs!4889 (h!67640 zl!343)))) lt!2175698)))

(declare-fun b!5334812 () Bool)

(assert (=> b!5334812 (= e!3313157 (= lt!2175698 (head!11435 (t!374531 (exprs!4889 (h!67640 zl!343))))))))

(declare-fun b!5334813 () Bool)

(assert (=> b!5334813 (= e!3313155 (isEmpty!33159 (t!374531 (t!374531 (exprs!4889 (h!67640 zl!343))))))))

(assert (= (and d!1712644 res!2262852) b!5334813))

(assert (= (and d!1712644 c!927960) b!5334811))

(assert (= (and d!1712644 (not c!927960)) b!5334808))

(assert (= (and b!5334808 c!927962) b!5334804))

(assert (= (and b!5334808 (not c!927962)) b!5334809))

(assert (= (and d!1712644 res!2262853) b!5334810))

(assert (= (and b!5334810 c!927961) b!5334805))

(assert (= (and b!5334810 (not c!927961)) b!5334807))

(assert (= (and b!5334807 c!927963) b!5334812))

(assert (= (and b!5334807 (not c!927963)) b!5334806))

(declare-fun m!6367858 () Bool)

(assert (=> b!5334807 m!6367858))

(assert (=> b!5334807 m!6367858))

(declare-fun m!6367860 () Bool)

(assert (=> b!5334807 m!6367860))

(declare-fun m!6367862 () Bool)

(assert (=> d!1712644 m!6367862))

(declare-fun m!6367864 () Bool)

(assert (=> d!1712644 m!6367864))

(assert (=> b!5334810 m!6367178))

(declare-fun m!6367866 () Bool)

(assert (=> b!5334806 m!6367866))

(declare-fun m!6367868 () Bool)

(assert (=> b!5334812 m!6367868))

(declare-fun m!6367870 () Bool)

(assert (=> b!5334805 m!6367870))

(declare-fun m!6367872 () Bool)

(assert (=> b!5334804 m!6367872))

(declare-fun m!6367874 () Bool)

(assert (=> b!5334813 m!6367874))

(assert (=> b!5334098 d!1712644))

(declare-fun bs!1237179 () Bool)

(declare-fun d!1712646 () Bool)

(assert (= bs!1237179 (and d!1712646 b!5334103)))

(declare-fun lambda!272929 () Int)

(assert (=> bs!1237179 (= lambda!272929 lambda!272851)))

(declare-fun bs!1237180 () Bool)

(assert (= bs!1237180 (and d!1712646 d!1712634)))

(assert (=> bs!1237180 (= lambda!272929 lambda!272921)))

(declare-fun bs!1237181 () Bool)

(assert (= bs!1237181 (and d!1712646 d!1712644)))

(assert (=> bs!1237181 (= lambda!272929 lambda!272928)))

(declare-fun b!5334814 () Bool)

(declare-fun e!3313164 () Regex!15005)

(assert (=> b!5334814 (= e!3313164 (Concat!23850 (h!67638 lt!2175550) (generalisedConcat!674 (t!374531 lt!2175550))))))

(declare-fun b!5334815 () Bool)

(declare-fun e!3313160 () Bool)

(declare-fun lt!2175699 () Regex!15005)

(assert (=> b!5334815 (= e!3313160 (isEmptyExpr!893 lt!2175699))))

(declare-fun b!5334816 () Bool)

(declare-fun e!3313163 () Bool)

(assert (=> b!5334816 (= e!3313163 (isConcat!416 lt!2175699))))

(declare-fun b!5334817 () Bool)

(assert (=> b!5334817 (= e!3313160 e!3313163)))

(declare-fun c!927967 () Bool)

(assert (=> b!5334817 (= c!927967 (isEmpty!33159 (tail!10532 lt!2175550)))))

(declare-fun b!5334818 () Bool)

(declare-fun e!3313159 () Regex!15005)

(assert (=> b!5334818 (= e!3313159 e!3313164)))

(declare-fun c!927966 () Bool)

(assert (=> b!5334818 (= c!927966 ((_ is Cons!61190) lt!2175550))))

(declare-fun b!5334819 () Bool)

(assert (=> b!5334819 (= e!3313164 EmptyExpr!15005)))

(declare-fun b!5334820 () Bool)

(declare-fun e!3313162 () Bool)

(assert (=> b!5334820 (= e!3313162 e!3313160)))

(declare-fun c!927965 () Bool)

(assert (=> b!5334820 (= c!927965 (isEmpty!33159 lt!2175550))))

(declare-fun b!5334821 () Bool)

(assert (=> b!5334821 (= e!3313159 (h!67638 lt!2175550))))

(assert (=> d!1712646 e!3313162))

(declare-fun res!2262855 () Bool)

(assert (=> d!1712646 (=> (not res!2262855) (not e!3313162))))

(assert (=> d!1712646 (= res!2262855 (validRegex!6741 lt!2175699))))

(assert (=> d!1712646 (= lt!2175699 e!3313159)))

(declare-fun c!927964 () Bool)

(declare-fun e!3313161 () Bool)

(assert (=> d!1712646 (= c!927964 e!3313161)))

(declare-fun res!2262854 () Bool)

(assert (=> d!1712646 (=> (not res!2262854) (not e!3313161))))

(assert (=> d!1712646 (= res!2262854 ((_ is Cons!61190) lt!2175550))))

(assert (=> d!1712646 (forall!14423 lt!2175550 lambda!272929)))

(assert (=> d!1712646 (= (generalisedConcat!674 lt!2175550) lt!2175699)))

(declare-fun b!5334822 () Bool)

(assert (=> b!5334822 (= e!3313163 (= lt!2175699 (head!11435 lt!2175550)))))

(declare-fun b!5334823 () Bool)

(assert (=> b!5334823 (= e!3313161 (isEmpty!33159 (t!374531 lt!2175550)))))

(assert (= (and d!1712646 res!2262854) b!5334823))

(assert (= (and d!1712646 c!927964) b!5334821))

(assert (= (and d!1712646 (not c!927964)) b!5334818))

(assert (= (and b!5334818 c!927966) b!5334814))

(assert (= (and b!5334818 (not c!927966)) b!5334819))

(assert (= (and d!1712646 res!2262855) b!5334820))

(assert (= (and b!5334820 c!927965) b!5334815))

(assert (= (and b!5334820 (not c!927965)) b!5334817))

(assert (= (and b!5334817 c!927967) b!5334822))

(assert (= (and b!5334817 (not c!927967)) b!5334816))

(declare-fun m!6367876 () Bool)

(assert (=> b!5334817 m!6367876))

(assert (=> b!5334817 m!6367876))

(declare-fun m!6367878 () Bool)

(assert (=> b!5334817 m!6367878))

(declare-fun m!6367880 () Bool)

(assert (=> d!1712646 m!6367880))

(declare-fun m!6367882 () Bool)

(assert (=> d!1712646 m!6367882))

(declare-fun m!6367884 () Bool)

(assert (=> b!5334820 m!6367884))

(declare-fun m!6367886 () Bool)

(assert (=> b!5334816 m!6367886))

(declare-fun m!6367888 () Bool)

(assert (=> b!5334822 m!6367888))

(declare-fun m!6367890 () Bool)

(assert (=> b!5334815 m!6367890))

(declare-fun m!6367892 () Bool)

(assert (=> b!5334814 m!6367892))

(declare-fun m!6367894 () Bool)

(assert (=> b!5334823 m!6367894))

(assert (=> b!5334098 d!1712646))

(declare-fun b!5334824 () Bool)

(declare-fun res!2262863 () Bool)

(declare-fun e!3313167 () Bool)

(assert (=> b!5334824 (=> res!2262863 e!3313167)))

(declare-fun e!3313166 () Bool)

(assert (=> b!5334824 (= res!2262863 e!3313166)))

(declare-fun res!2262858 () Bool)

(assert (=> b!5334824 (=> (not res!2262858) (not e!3313166))))

(declare-fun lt!2175700 () Bool)

(assert (=> b!5334824 (= res!2262858 lt!2175700)))

(declare-fun d!1712648 () Bool)

(declare-fun e!3313165 () Bool)

(assert (=> d!1712648 e!3313165))

(declare-fun c!927968 () Bool)

(assert (=> d!1712648 (= c!927968 ((_ is EmptyExpr!15005) lt!2175572))))

(declare-fun e!3313170 () Bool)

(assert (=> d!1712648 (= lt!2175700 e!3313170)))

(declare-fun c!927970 () Bool)

(assert (=> d!1712648 (= c!927970 (isEmpty!33162 s!2326))))

(assert (=> d!1712648 (validRegex!6741 lt!2175572)))

(assert (=> d!1712648 (= (matchR!7190 lt!2175572 s!2326) lt!2175700)))

(declare-fun b!5334825 () Bool)

(declare-fun e!3313169 () Bool)

(assert (=> b!5334825 (= e!3313167 e!3313169)))

(declare-fun res!2262860 () Bool)

(assert (=> b!5334825 (=> (not res!2262860) (not e!3313169))))

(assert (=> b!5334825 (= res!2262860 (not lt!2175700))))

(declare-fun b!5334826 () Bool)

(declare-fun res!2262856 () Bool)

(assert (=> b!5334826 (=> res!2262856 e!3313167)))

(assert (=> b!5334826 (= res!2262856 (not ((_ is ElementMatch!15005) lt!2175572)))))

(declare-fun e!3313171 () Bool)

(assert (=> b!5334826 (= e!3313171 e!3313167)))

(declare-fun b!5334827 () Bool)

(declare-fun call!381304 () Bool)

(assert (=> b!5334827 (= e!3313165 (= lt!2175700 call!381304))))

(declare-fun b!5334828 () Bool)

(declare-fun res!2262862 () Bool)

(declare-fun e!3313168 () Bool)

(assert (=> b!5334828 (=> res!2262862 e!3313168)))

(assert (=> b!5334828 (= res!2262862 (not (isEmpty!33162 (tail!10531 s!2326))))))

(declare-fun bm!381299 () Bool)

(assert (=> bm!381299 (= call!381304 (isEmpty!33162 s!2326))))

(declare-fun b!5334829 () Bool)

(assert (=> b!5334829 (= e!3313170 (nullable!5174 lt!2175572))))

(declare-fun b!5334830 () Bool)

(assert (=> b!5334830 (= e!3313165 e!3313171)))

(declare-fun c!927969 () Bool)

(assert (=> b!5334830 (= c!927969 ((_ is EmptyLang!15005) lt!2175572))))

(declare-fun b!5334831 () Bool)

(declare-fun res!2262857 () Bool)

(assert (=> b!5334831 (=> (not res!2262857) (not e!3313166))))

(assert (=> b!5334831 (= res!2262857 (not call!381304))))

(declare-fun b!5334832 () Bool)

(declare-fun res!2262861 () Bool)

(assert (=> b!5334832 (=> (not res!2262861) (not e!3313166))))

(assert (=> b!5334832 (= res!2262861 (isEmpty!33162 (tail!10531 s!2326)))))

(declare-fun b!5334833 () Bool)

(assert (=> b!5334833 (= e!3313169 e!3313168)))

(declare-fun res!2262859 () Bool)

(assert (=> b!5334833 (=> res!2262859 e!3313168)))

(assert (=> b!5334833 (= res!2262859 call!381304)))

(declare-fun b!5334834 () Bool)

(assert (=> b!5334834 (= e!3313170 (matchR!7190 (derivativeStep!4179 lt!2175572 (head!11434 s!2326)) (tail!10531 s!2326)))))

(declare-fun b!5334835 () Bool)

(assert (=> b!5334835 (= e!3313168 (not (= (head!11434 s!2326) (c!927759 lt!2175572))))))

(declare-fun b!5334836 () Bool)

(assert (=> b!5334836 (= e!3313166 (= (head!11434 s!2326) (c!927759 lt!2175572)))))

(declare-fun b!5334837 () Bool)

(assert (=> b!5334837 (= e!3313171 (not lt!2175700))))

(assert (= (and d!1712648 c!927970) b!5334829))

(assert (= (and d!1712648 (not c!927970)) b!5334834))

(assert (= (and d!1712648 c!927968) b!5334827))

(assert (= (and d!1712648 (not c!927968)) b!5334830))

(assert (= (and b!5334830 c!927969) b!5334837))

(assert (= (and b!5334830 (not c!927969)) b!5334826))

(assert (= (and b!5334826 (not res!2262856)) b!5334824))

(assert (= (and b!5334824 res!2262858) b!5334831))

(assert (= (and b!5334831 res!2262857) b!5334832))

(assert (= (and b!5334832 res!2262861) b!5334836))

(assert (= (and b!5334824 (not res!2262863)) b!5334825))

(assert (= (and b!5334825 res!2262860) b!5334833))

(assert (= (and b!5334833 (not res!2262859)) b!5334828))

(assert (= (and b!5334828 (not res!2262862)) b!5334835))

(assert (= (or b!5334827 b!5334831 b!5334833) bm!381299))

(assert (=> bm!381299 m!6367792))

(declare-fun m!6367896 () Bool)

(assert (=> b!5334829 m!6367896))

(assert (=> b!5334828 m!6367802))

(assert (=> b!5334828 m!6367802))

(assert (=> b!5334828 m!6367804))

(assert (=> b!5334834 m!6367806))

(assert (=> b!5334834 m!6367806))

(declare-fun m!6367898 () Bool)

(assert (=> b!5334834 m!6367898))

(assert (=> b!5334834 m!6367802))

(assert (=> b!5334834 m!6367898))

(assert (=> b!5334834 m!6367802))

(declare-fun m!6367900 () Bool)

(assert (=> b!5334834 m!6367900))

(assert (=> d!1712648 m!6367792))

(assert (=> d!1712648 m!6367846))

(assert (=> b!5334835 m!6367806))

(assert (=> b!5334832 m!6367802))

(assert (=> b!5334832 m!6367802))

(assert (=> b!5334832 m!6367804))

(assert (=> b!5334836 m!6367806))

(assert (=> b!5334098 d!1712648))

(declare-fun d!1712650 () Bool)

(declare-fun c!927971 () Bool)

(assert (=> d!1712650 (= c!927971 (isEmpty!33162 s!2326))))

(declare-fun e!3313172 () Bool)

(assert (=> d!1712650 (= (matchZipper!1249 z!1189 s!2326) e!3313172)))

(declare-fun b!5334838 () Bool)

(assert (=> b!5334838 (= e!3313172 (nullableZipper!1358 z!1189))))

(declare-fun b!5334839 () Bool)

(assert (=> b!5334839 (= e!3313172 (matchZipper!1249 (derivationStepZipper!1246 z!1189 (head!11434 s!2326)) (tail!10531 s!2326)))))

(assert (= (and d!1712650 c!927971) b!5334838))

(assert (= (and d!1712650 (not c!927971)) b!5334839))

(assert (=> d!1712650 m!6367792))

(declare-fun m!6367902 () Bool)

(assert (=> b!5334838 m!6367902))

(assert (=> b!5334839 m!6367806))

(assert (=> b!5334839 m!6367806))

(declare-fun m!6367904 () Bool)

(assert (=> b!5334839 m!6367904))

(assert (=> b!5334839 m!6367802))

(assert (=> b!5334839 m!6367904))

(assert (=> b!5334839 m!6367802))

(declare-fun m!6367906 () Bool)

(assert (=> b!5334839 m!6367906))

(assert (=> b!5334098 d!1712650))

(declare-fun d!1712652 () Bool)

(declare-fun c!927972 () Bool)

(assert (=> d!1712652 (= c!927972 (isEmpty!33162 s!2326))))

(declare-fun e!3313173 () Bool)

(assert (=> d!1712652 (= (matchZipper!1249 lt!2175551 s!2326) e!3313173)))

(declare-fun b!5334840 () Bool)

(assert (=> b!5334840 (= e!3313173 (nullableZipper!1358 lt!2175551))))

(declare-fun b!5334841 () Bool)

(assert (=> b!5334841 (= e!3313173 (matchZipper!1249 (derivationStepZipper!1246 lt!2175551 (head!11434 s!2326)) (tail!10531 s!2326)))))

(assert (= (and d!1712652 c!927972) b!5334840))

(assert (= (and d!1712652 (not c!927972)) b!5334841))

(assert (=> d!1712652 m!6367792))

(declare-fun m!6367908 () Bool)

(assert (=> b!5334840 m!6367908))

(assert (=> b!5334841 m!6367806))

(assert (=> b!5334841 m!6367806))

(declare-fun m!6367910 () Bool)

(assert (=> b!5334841 m!6367910))

(assert (=> b!5334841 m!6367802))

(assert (=> b!5334841 m!6367910))

(assert (=> b!5334841 m!6367802))

(declare-fun m!6367912 () Bool)

(assert (=> b!5334841 m!6367912))

(assert (=> b!5334098 d!1712652))

(declare-fun b!5334842 () Bool)

(declare-fun res!2262867 () Bool)

(declare-fun e!3313174 () Bool)

(assert (=> b!5334842 (=> (not res!2262867) (not e!3313174))))

(declare-fun lt!2175701 () Option!15116)

(assert (=> b!5334842 (= res!2262867 (matchR!7190 (regOne!30522 (regOne!30522 r!7292)) (_1!35507 (get!21045 lt!2175701))))))

(declare-fun b!5334843 () Bool)

(declare-fun res!2262864 () Bool)

(assert (=> b!5334843 (=> (not res!2262864) (not e!3313174))))

(assert (=> b!5334843 (= res!2262864 (matchR!7190 lt!2175572 (_2!35507 (get!21045 lt!2175701))))))

(declare-fun b!5334844 () Bool)

(declare-fun e!3313177 () Option!15116)

(assert (=> b!5334844 (= e!3313177 None!15115)))

(declare-fun b!5334845 () Bool)

(declare-fun e!3313175 () Bool)

(assert (=> b!5334845 (= e!3313175 (matchR!7190 lt!2175572 s!2326))))

(declare-fun b!5334846 () Bool)

(declare-fun e!3313178 () Option!15116)

(assert (=> b!5334846 (= e!3313178 (Some!15115 (tuple2!64409 Nil!61191 s!2326)))))

(declare-fun d!1712654 () Bool)

(declare-fun e!3313176 () Bool)

(assert (=> d!1712654 e!3313176))

(declare-fun res!2262868 () Bool)

(assert (=> d!1712654 (=> res!2262868 e!3313176)))

(assert (=> d!1712654 (= res!2262868 e!3313174)))

(declare-fun res!2262866 () Bool)

(assert (=> d!1712654 (=> (not res!2262866) (not e!3313174))))

(assert (=> d!1712654 (= res!2262866 (isDefined!11819 lt!2175701))))

(assert (=> d!1712654 (= lt!2175701 e!3313178)))

(declare-fun c!927973 () Bool)

(assert (=> d!1712654 (= c!927973 e!3313175)))

(declare-fun res!2262865 () Bool)

(assert (=> d!1712654 (=> (not res!2262865) (not e!3313175))))

(assert (=> d!1712654 (= res!2262865 (matchR!7190 (regOne!30522 (regOne!30522 r!7292)) Nil!61191))))

(assert (=> d!1712654 (validRegex!6741 (regOne!30522 (regOne!30522 r!7292)))))

(assert (=> d!1712654 (= (findConcatSeparation!1530 (regOne!30522 (regOne!30522 r!7292)) lt!2175572 Nil!61191 s!2326 s!2326) lt!2175701)))

(declare-fun b!5334847 () Bool)

(declare-fun lt!2175702 () Unit!153538)

(declare-fun lt!2175703 () Unit!153538)

(assert (=> b!5334847 (= lt!2175702 lt!2175703)))

(assert (=> b!5334847 (= (++!13337 (++!13337 Nil!61191 (Cons!61191 (h!67639 s!2326) Nil!61191)) (t!374532 s!2326)) s!2326)))

(assert (=> b!5334847 (= lt!2175703 (lemmaMoveElementToOtherListKeepsConcatEq!1752 Nil!61191 (h!67639 s!2326) (t!374532 s!2326) s!2326))))

(assert (=> b!5334847 (= e!3313177 (findConcatSeparation!1530 (regOne!30522 (regOne!30522 r!7292)) lt!2175572 (++!13337 Nil!61191 (Cons!61191 (h!67639 s!2326) Nil!61191)) (t!374532 s!2326) s!2326))))

(declare-fun b!5334848 () Bool)

(assert (=> b!5334848 (= e!3313174 (= (++!13337 (_1!35507 (get!21045 lt!2175701)) (_2!35507 (get!21045 lt!2175701))) s!2326))))

(declare-fun b!5334849 () Bool)

(assert (=> b!5334849 (= e!3313176 (not (isDefined!11819 lt!2175701)))))

(declare-fun b!5334850 () Bool)

(assert (=> b!5334850 (= e!3313178 e!3313177)))

(declare-fun c!927974 () Bool)

(assert (=> b!5334850 (= c!927974 ((_ is Nil!61191) s!2326))))

(assert (= (and d!1712654 res!2262865) b!5334845))

(assert (= (and d!1712654 c!927973) b!5334846))

(assert (= (and d!1712654 (not c!927973)) b!5334850))

(assert (= (and b!5334850 c!927974) b!5334844))

(assert (= (and b!5334850 (not c!927974)) b!5334847))

(assert (= (and d!1712654 res!2262866) b!5334842))

(assert (= (and b!5334842 res!2262867) b!5334843))

(assert (= (and b!5334843 res!2262864) b!5334848))

(assert (= (and d!1712654 (not res!2262868)) b!5334849))

(assert (=> b!5334847 m!6367604))

(assert (=> b!5334847 m!6367604))

(assert (=> b!5334847 m!6367606))

(assert (=> b!5334847 m!6367608))

(assert (=> b!5334847 m!6367604))

(declare-fun m!6367914 () Bool)

(assert (=> b!5334847 m!6367914))

(assert (=> b!5334845 m!6367240))

(declare-fun m!6367916 () Bool)

(assert (=> d!1712654 m!6367916))

(declare-fun m!6367918 () Bool)

(assert (=> d!1712654 m!6367918))

(assert (=> d!1712654 m!6367818))

(assert (=> b!5334849 m!6367916))

(declare-fun m!6367920 () Bool)

(assert (=> b!5334848 m!6367920))

(declare-fun m!6367922 () Bool)

(assert (=> b!5334848 m!6367922))

(assert (=> b!5334842 m!6367920))

(declare-fun m!6367924 () Bool)

(assert (=> b!5334842 m!6367924))

(assert (=> b!5334843 m!6367920))

(declare-fun m!6367926 () Bool)

(assert (=> b!5334843 m!6367926))

(assert (=> b!5334098 d!1712654))

(declare-fun bs!1237182 () Bool)

(declare-fun d!1712656 () Bool)

(assert (= bs!1237182 (and d!1712656 b!5334098)))

(declare-fun lambda!272930 () Int)

(assert (=> bs!1237182 (= lambda!272930 lambda!272847)))

(declare-fun bs!1237183 () Bool)

(assert (= bs!1237183 (and d!1712656 d!1712640)))

(assert (=> bs!1237183 (= (and (= (regOne!30522 (regOne!30522 r!7292)) (regTwo!30522 (regOne!30522 r!7292))) (= lt!2175572 lt!2175580)) (= lambda!272930 lambda!272926))))

(declare-fun bs!1237184 () Bool)

(assert (= bs!1237184 (and d!1712656 b!5334646)))

(assert (=> bs!1237184 (not (= lambda!272930 lambda!272913))))

(assert (=> bs!1237182 (= (and (= (regOne!30522 (regOne!30522 r!7292)) (regTwo!30522 (regOne!30522 r!7292))) (= lt!2175572 lt!2175580)) (= lambda!272930 lambda!272849))))

(declare-fun bs!1237185 () Bool)

(assert (= bs!1237185 (and d!1712656 b!5334752)))

(assert (=> bs!1237185 (not (= lambda!272930 lambda!272914))))

(declare-fun bs!1237186 () Bool)

(assert (= bs!1237186 (and d!1712656 b!5334092)))

(assert (=> bs!1237186 (= (and (= (regOne!30522 (regOne!30522 r!7292)) (regOne!30522 r!7292)) (= lt!2175572 (regTwo!30522 r!7292))) (= lambda!272930 lambda!272844))))

(declare-fun bs!1237187 () Bool)

(assert (= bs!1237187 (and d!1712656 b!5334753)))

(assert (=> bs!1237187 (not (= lambda!272930 lambda!272915))))

(assert (=> bs!1237182 (not (= lambda!272930 lambda!272850))))

(declare-fun bs!1237188 () Bool)

(assert (= bs!1237188 (and d!1712656 d!1712632)))

(assert (=> bs!1237188 (= lambda!272930 lambda!272918)))

(declare-fun bs!1237189 () Bool)

(assert (= bs!1237189 (and d!1712656 b!5334645)))

(assert (=> bs!1237189 (not (= lambda!272930 lambda!272912))))

(assert (=> bs!1237183 (not (= lambda!272930 lambda!272927))))

(assert (=> bs!1237186 (not (= lambda!272930 lambda!272845))))

(assert (=> bs!1237182 (not (= lambda!272930 lambda!272848))))

(assert (=> d!1712656 true))

(assert (=> d!1712656 true))

(assert (=> d!1712656 true))

(declare-fun lambda!272931 () Int)

(assert (=> bs!1237182 (not (= lambda!272931 lambda!272847))))

(assert (=> bs!1237183 (not (= lambda!272931 lambda!272926))))

(assert (=> bs!1237184 (= (and (= (regOne!30522 (regOne!30522 r!7292)) (regOne!30522 lt!2175572)) (= lt!2175572 (regTwo!30522 lt!2175572))) (= lambda!272931 lambda!272913))))

(assert (=> bs!1237182 (not (= lambda!272931 lambda!272849))))

(assert (=> bs!1237185 (not (= lambda!272931 lambda!272914))))

(assert (=> bs!1237186 (not (= lambda!272931 lambda!272844))))

(declare-fun bs!1237190 () Bool)

(assert (= bs!1237190 d!1712656))

(assert (=> bs!1237190 (not (= lambda!272931 lambda!272930))))

(assert (=> bs!1237187 (= (and (= (regOne!30522 (regOne!30522 r!7292)) (regOne!30522 lt!2175553)) (= lt!2175572 (regTwo!30522 lt!2175553))) (= lambda!272931 lambda!272915))))

(assert (=> bs!1237182 (= (and (= (regOne!30522 (regOne!30522 r!7292)) (regTwo!30522 (regOne!30522 r!7292))) (= lt!2175572 lt!2175580)) (= lambda!272931 lambda!272850))))

(assert (=> bs!1237188 (not (= lambda!272931 lambda!272918))))

(assert (=> bs!1237189 (not (= lambda!272931 lambda!272912))))

(assert (=> bs!1237183 (= (and (= (regOne!30522 (regOne!30522 r!7292)) (regTwo!30522 (regOne!30522 r!7292))) (= lt!2175572 lt!2175580)) (= lambda!272931 lambda!272927))))

(assert (=> bs!1237186 (= (and (= (regOne!30522 (regOne!30522 r!7292)) (regOne!30522 r!7292)) (= lt!2175572 (regTwo!30522 r!7292))) (= lambda!272931 lambda!272845))))

(assert (=> bs!1237182 (= lambda!272931 lambda!272848)))

(assert (=> d!1712656 true))

(assert (=> d!1712656 true))

(assert (=> d!1712656 true))

(assert (=> d!1712656 (= (Exists!2186 lambda!272930) (Exists!2186 lambda!272931))))

(declare-fun lt!2175704 () Unit!153538)

(assert (=> d!1712656 (= lt!2175704 (choose!39961 (regOne!30522 (regOne!30522 r!7292)) lt!2175572 s!2326))))

(assert (=> d!1712656 (validRegex!6741 (regOne!30522 (regOne!30522 r!7292)))))

(assert (=> d!1712656 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!840 (regOne!30522 (regOne!30522 r!7292)) lt!2175572 s!2326) lt!2175704)))

(declare-fun m!6367928 () Bool)

(assert (=> bs!1237190 m!6367928))

(declare-fun m!6367930 () Bool)

(assert (=> bs!1237190 m!6367930))

(declare-fun m!6367932 () Bool)

(assert (=> bs!1237190 m!6367932))

(assert (=> bs!1237190 m!6367818))

(assert (=> b!5334098 d!1712656))

(declare-fun d!1712658 () Bool)

(assert (=> d!1712658 (= (isDefined!11819 (findConcatSeparation!1530 (regOne!30522 (regOne!30522 r!7292)) lt!2175572 Nil!61191 s!2326 s!2326)) (not (isEmpty!33163 (findConcatSeparation!1530 (regOne!30522 (regOne!30522 r!7292)) lt!2175572 Nil!61191 s!2326 s!2326))))))

(declare-fun bs!1237191 () Bool)

(assert (= bs!1237191 d!1712658))

(assert (=> bs!1237191 m!6367250))

(declare-fun m!6367934 () Bool)

(assert (=> bs!1237191 m!6367934))

(assert (=> b!5334098 d!1712658))

(declare-fun bs!1237192 () Bool)

(declare-fun d!1712660 () Bool)

(assert (= bs!1237192 (and d!1712660 b!5334098)))

(declare-fun lambda!272932 () Int)

(assert (=> bs!1237192 (= (and (= (regTwo!30522 (regOne!30522 r!7292)) (regOne!30522 (regOne!30522 r!7292))) (= lt!2175580 lt!2175572)) (= lambda!272932 lambda!272847))))

(declare-fun bs!1237193 () Bool)

(assert (= bs!1237193 (and d!1712660 d!1712640)))

(assert (=> bs!1237193 (= lambda!272932 lambda!272926)))

(declare-fun bs!1237194 () Bool)

(assert (= bs!1237194 (and d!1712660 b!5334646)))

(assert (=> bs!1237194 (not (= lambda!272932 lambda!272913))))

(assert (=> bs!1237192 (= lambda!272932 lambda!272849)))

(declare-fun bs!1237195 () Bool)

(assert (= bs!1237195 (and d!1712660 b!5334752)))

(assert (=> bs!1237195 (not (= lambda!272932 lambda!272914))))

(declare-fun bs!1237196 () Bool)

(assert (= bs!1237196 (and d!1712660 b!5334092)))

(assert (=> bs!1237196 (= (and (= (regTwo!30522 (regOne!30522 r!7292)) (regOne!30522 r!7292)) (= lt!2175580 (regTwo!30522 r!7292))) (= lambda!272932 lambda!272844))))

(declare-fun bs!1237197 () Bool)

(assert (= bs!1237197 (and d!1712660 d!1712656)))

(assert (=> bs!1237197 (= (and (= (regTwo!30522 (regOne!30522 r!7292)) (regOne!30522 (regOne!30522 r!7292))) (= lt!2175580 lt!2175572)) (= lambda!272932 lambda!272930))))

(assert (=> bs!1237197 (not (= lambda!272932 lambda!272931))))

(declare-fun bs!1237198 () Bool)

(assert (= bs!1237198 (and d!1712660 b!5334753)))

(assert (=> bs!1237198 (not (= lambda!272932 lambda!272915))))

(assert (=> bs!1237192 (not (= lambda!272932 lambda!272850))))

(declare-fun bs!1237199 () Bool)

(assert (= bs!1237199 (and d!1712660 d!1712632)))

(assert (=> bs!1237199 (= (and (= (regTwo!30522 (regOne!30522 r!7292)) (regOne!30522 (regOne!30522 r!7292))) (= lt!2175580 lt!2175572)) (= lambda!272932 lambda!272918))))

(declare-fun bs!1237200 () Bool)

(assert (= bs!1237200 (and d!1712660 b!5334645)))

(assert (=> bs!1237200 (not (= lambda!272932 lambda!272912))))

(assert (=> bs!1237193 (not (= lambda!272932 lambda!272927))))

(assert (=> bs!1237196 (not (= lambda!272932 lambda!272845))))

(assert (=> bs!1237192 (not (= lambda!272932 lambda!272848))))

(assert (=> d!1712660 true))

(assert (=> d!1712660 true))

(assert (=> d!1712660 true))

(assert (=> d!1712660 (= (isDefined!11819 (findConcatSeparation!1530 (regTwo!30522 (regOne!30522 r!7292)) lt!2175580 Nil!61191 s!2326 s!2326)) (Exists!2186 lambda!272932))))

(declare-fun lt!2175705 () Unit!153538)

(assert (=> d!1712660 (= lt!2175705 (choose!39958 (regTwo!30522 (regOne!30522 r!7292)) lt!2175580 s!2326))))

(assert (=> d!1712660 (validRegex!6741 (regTwo!30522 (regOne!30522 r!7292)))))

(assert (=> d!1712660 (= (lemmaFindConcatSeparationEquivalentToExists!1294 (regTwo!30522 (regOne!30522 r!7292)) lt!2175580 s!2326) lt!2175705)))

(declare-fun bs!1237201 () Bool)

(assert (= bs!1237201 d!1712660))

(assert (=> bs!1237201 m!6367618))

(declare-fun m!6367936 () Bool)

(assert (=> bs!1237201 m!6367936))

(assert (=> bs!1237201 m!6367222))

(declare-fun m!6367938 () Bool)

(assert (=> bs!1237201 m!6367938))

(assert (=> bs!1237201 m!6367222))

(assert (=> bs!1237201 m!6367224))

(assert (=> b!5334098 d!1712660))

(declare-fun d!1712662 () Bool)

(assert (=> d!1712662 (= (Exists!2186 lambda!272849) (choose!39953 lambda!272849))))

(declare-fun bs!1237202 () Bool)

(assert (= bs!1237202 d!1712662))

(declare-fun m!6367940 () Bool)

(assert (=> bs!1237202 m!6367940))

(assert (=> b!5334098 d!1712662))

(declare-fun e!3313181 () Bool)

(declare-fun d!1712664 () Bool)

(assert (=> d!1712664 (= (matchZipper!1249 ((_ map or) lt!2175568 lt!2175567) (t!374532 s!2326)) e!3313181)))

(declare-fun res!2262871 () Bool)

(assert (=> d!1712664 (=> res!2262871 e!3313181)))

(assert (=> d!1712664 (= res!2262871 (matchZipper!1249 lt!2175568 (t!374532 s!2326)))))

(declare-fun lt!2175708 () Unit!153538)

(declare-fun choose!39962 ((InoxSet Context!8778) (InoxSet Context!8778) List!61315) Unit!153538)

(assert (=> d!1712664 (= lt!2175708 (choose!39962 lt!2175568 lt!2175567 (t!374532 s!2326)))))

(assert (=> d!1712664 (= (lemmaZipperConcatMatchesSameAsBothZippers!242 lt!2175568 lt!2175567 (t!374532 s!2326)) lt!2175708)))

(declare-fun b!5334853 () Bool)

(assert (=> b!5334853 (= e!3313181 (matchZipper!1249 lt!2175567 (t!374532 s!2326)))))

(assert (= (and d!1712664 (not res!2262871)) b!5334853))

(assert (=> d!1712664 m!6367210))

(assert (=> d!1712664 m!6367206))

(declare-fun m!6367942 () Bool)

(assert (=> d!1712664 m!6367942))

(assert (=> b!5334853 m!6367294))

(assert (=> b!5334096 d!1712664))

(assert (=> b!5334096 d!1712534))

(declare-fun d!1712666 () Bool)

(declare-fun c!927975 () Bool)

(assert (=> d!1712666 (= c!927975 (isEmpty!33162 (t!374532 s!2326)))))

(declare-fun e!3313182 () Bool)

(assert (=> d!1712666 (= (matchZipper!1249 ((_ map or) lt!2175568 lt!2175567) (t!374532 s!2326)) e!3313182)))

(declare-fun b!5334854 () Bool)

(assert (=> b!5334854 (= e!3313182 (nullableZipper!1358 ((_ map or) lt!2175568 lt!2175567)))))

(declare-fun b!5334855 () Bool)

(assert (=> b!5334855 (= e!3313182 (matchZipper!1249 (derivationStepZipper!1246 ((_ map or) lt!2175568 lt!2175567) (head!11434 (t!374532 s!2326))) (tail!10531 (t!374532 s!2326))))))

(assert (= (and d!1712666 c!927975) b!5334854))

(assert (= (and d!1712666 (not c!927975)) b!5334855))

(assert (=> d!1712666 m!6367512))

(declare-fun m!6367944 () Bool)

(assert (=> b!5334854 m!6367944))

(assert (=> b!5334855 m!6367516))

(assert (=> b!5334855 m!6367516))

(declare-fun m!6367946 () Bool)

(assert (=> b!5334855 m!6367946))

(assert (=> b!5334855 m!6367520))

(assert (=> b!5334855 m!6367946))

(assert (=> b!5334855 m!6367520))

(declare-fun m!6367948 () Bool)

(assert (=> b!5334855 m!6367948))

(assert (=> b!5334096 d!1712666))

(declare-fun d!1712668 () Bool)

(assert (=> d!1712668 (= (isEmpty!33159 (t!374531 (exprs!4889 (h!67640 zl!343)))) ((_ is Nil!61190) (t!374531 (exprs!4889 (h!67640 zl!343)))))))

(assert (=> b!5334097 d!1712668))

(declare-fun bs!1237203 () Bool)

(declare-fun d!1712670 () Bool)

(assert (= bs!1237203 (and d!1712670 b!5334103)))

(declare-fun lambda!272935 () Int)

(assert (=> bs!1237203 (= lambda!272935 lambda!272851)))

(declare-fun bs!1237204 () Bool)

(assert (= bs!1237204 (and d!1712670 d!1712634)))

(assert (=> bs!1237204 (= lambda!272935 lambda!272921)))

(declare-fun bs!1237205 () Bool)

(assert (= bs!1237205 (and d!1712670 d!1712644)))

(assert (=> bs!1237205 (= lambda!272935 lambda!272928)))

(declare-fun bs!1237206 () Bool)

(assert (= bs!1237206 (and d!1712670 d!1712646)))

(assert (=> bs!1237206 (= lambda!272935 lambda!272929)))

(assert (=> d!1712670 (= (inv!80759 (h!67640 zl!343)) (forall!14423 (exprs!4889 (h!67640 zl!343)) lambda!272935))))

(declare-fun bs!1237207 () Bool)

(assert (= bs!1237207 d!1712670))

(declare-fun m!6367950 () Bool)

(assert (=> bs!1237207 m!6367950))

(assert (=> b!5334116 d!1712670))

(declare-fun d!1712672 () Bool)

(declare-fun lt!2175711 () Int)

(assert (=> d!1712672 (>= lt!2175711 0)))

(declare-fun e!3313185 () Int)

(assert (=> d!1712672 (= lt!2175711 e!3313185)))

(declare-fun c!927979 () Bool)

(assert (=> d!1712672 (= c!927979 ((_ is Cons!61190) (exprs!4889 lt!2175565)))))

(assert (=> d!1712672 (= (contextDepthTotal!138 lt!2175565) lt!2175711)))

(declare-fun b!5334860 () Bool)

(declare-fun regexDepthTotal!63 (Regex!15005) Int)

(assert (=> b!5334860 (= e!3313185 (+ (regexDepthTotal!63 (h!67638 (exprs!4889 lt!2175565))) (contextDepthTotal!138 (Context!8779 (t!374531 (exprs!4889 lt!2175565))))))))

(declare-fun b!5334861 () Bool)

(assert (=> b!5334861 (= e!3313185 1)))

(assert (= (and d!1712672 c!927979) b!5334860))

(assert (= (and d!1712672 (not c!927979)) b!5334861))

(declare-fun m!6367952 () Bool)

(assert (=> b!5334860 m!6367952))

(declare-fun m!6367954 () Bool)

(assert (=> b!5334860 m!6367954))

(assert (=> b!5334114 d!1712672))

(declare-fun d!1712674 () Bool)

(declare-fun lt!2175712 () Int)

(assert (=> d!1712674 (>= lt!2175712 0)))

(declare-fun e!3313186 () Int)

(assert (=> d!1712674 (= lt!2175712 e!3313186)))

(declare-fun c!927980 () Bool)

(assert (=> d!1712674 (= c!927980 ((_ is Cons!61190) (exprs!4889 (h!67640 zl!343))))))

(assert (=> d!1712674 (= (contextDepthTotal!138 (h!67640 zl!343)) lt!2175712)))

(declare-fun b!5334862 () Bool)

(assert (=> b!5334862 (= e!3313186 (+ (regexDepthTotal!63 (h!67638 (exprs!4889 (h!67640 zl!343)))) (contextDepthTotal!138 (Context!8779 (t!374531 (exprs!4889 (h!67640 zl!343)))))))))

(declare-fun b!5334863 () Bool)

(assert (=> b!5334863 (= e!3313186 1)))

(assert (= (and d!1712674 c!927980) b!5334862))

(assert (= (and d!1712674 (not c!927980)) b!5334863))

(declare-fun m!6367956 () Bool)

(assert (=> b!5334862 m!6367956))

(declare-fun m!6367958 () Bool)

(assert (=> b!5334862 m!6367958))

(assert (=> b!5334114 d!1712674))

(declare-fun d!1712676 () Bool)

(assert (=> d!1712676 (= (isEmpty!33160 (t!374533 zl!343)) ((_ is Nil!61192) (t!374533 zl!343)))))

(assert (=> b!5334113 d!1712676))

(declare-fun d!1712678 () Bool)

(declare-fun lt!2175715 () Regex!15005)

(assert (=> d!1712678 (validRegex!6741 lt!2175715)))

(assert (=> d!1712678 (= lt!2175715 (generalisedUnion!934 (unfocusZipperList!447 zl!343)))))

(assert (=> d!1712678 (= (unfocusZipper!747 zl!343) lt!2175715)))

(declare-fun bs!1237208 () Bool)

(assert (= bs!1237208 d!1712678))

(declare-fun m!6367960 () Bool)

(assert (=> bs!1237208 m!6367960))

(assert (=> bs!1237208 m!6367212))

(assert (=> bs!1237208 m!6367212))

(assert (=> bs!1237208 m!6367214))

(assert (=> b!5334094 d!1712678))

(declare-fun d!1712680 () Bool)

(assert (=> d!1712680 (= (Exists!2186 lambda!272844) (choose!39953 lambda!272844))))

(declare-fun bs!1237209 () Bool)

(assert (= bs!1237209 d!1712680))

(declare-fun m!6367962 () Bool)

(assert (=> bs!1237209 m!6367962))

(assert (=> b!5334092 d!1712680))

(declare-fun bs!1237210 () Bool)

(declare-fun d!1712682 () Bool)

(assert (= bs!1237210 (and d!1712682 b!5334098)))

(declare-fun lambda!272936 () Int)

(assert (=> bs!1237210 (= (and (= (regOne!30522 r!7292) (regOne!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175572)) (= lambda!272936 lambda!272847))))

(declare-fun bs!1237211 () Bool)

(assert (= bs!1237211 (and d!1712682 d!1712640)))

(assert (=> bs!1237211 (= (and (= (regOne!30522 r!7292) (regTwo!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175580)) (= lambda!272936 lambda!272926))))

(declare-fun bs!1237212 () Bool)

(assert (= bs!1237212 (and d!1712682 b!5334646)))

(assert (=> bs!1237212 (not (= lambda!272936 lambda!272913))))

(assert (=> bs!1237210 (= (and (= (regOne!30522 r!7292) (regTwo!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175580)) (= lambda!272936 lambda!272849))))

(declare-fun bs!1237213 () Bool)

(assert (= bs!1237213 (and d!1712682 b!5334752)))

(assert (=> bs!1237213 (not (= lambda!272936 lambda!272914))))

(declare-fun bs!1237214 () Bool)

(assert (= bs!1237214 (and d!1712682 b!5334092)))

(assert (=> bs!1237214 (= lambda!272936 lambda!272844)))

(declare-fun bs!1237215 () Bool)

(assert (= bs!1237215 (and d!1712682 d!1712656)))

(assert (=> bs!1237215 (= (and (= (regOne!30522 r!7292) (regOne!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175572)) (= lambda!272936 lambda!272930))))

(declare-fun bs!1237216 () Bool)

(assert (= bs!1237216 (and d!1712682 d!1712660)))

(assert (=> bs!1237216 (= (and (= (regOne!30522 r!7292) (regTwo!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175580)) (= lambda!272936 lambda!272932))))

(assert (=> bs!1237215 (not (= lambda!272936 lambda!272931))))

(declare-fun bs!1237217 () Bool)

(assert (= bs!1237217 (and d!1712682 b!5334753)))

(assert (=> bs!1237217 (not (= lambda!272936 lambda!272915))))

(assert (=> bs!1237210 (not (= lambda!272936 lambda!272850))))

(declare-fun bs!1237218 () Bool)

(assert (= bs!1237218 (and d!1712682 d!1712632)))

(assert (=> bs!1237218 (= (and (= (regOne!30522 r!7292) (regOne!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175572)) (= lambda!272936 lambda!272918))))

(declare-fun bs!1237219 () Bool)

(assert (= bs!1237219 (and d!1712682 b!5334645)))

(assert (=> bs!1237219 (not (= lambda!272936 lambda!272912))))

(assert (=> bs!1237211 (not (= lambda!272936 lambda!272927))))

(assert (=> bs!1237214 (not (= lambda!272936 lambda!272845))))

(assert (=> bs!1237210 (not (= lambda!272936 lambda!272848))))

(assert (=> d!1712682 true))

(assert (=> d!1712682 true))

(assert (=> d!1712682 true))

(assert (=> d!1712682 (= (isDefined!11819 (findConcatSeparation!1530 (regOne!30522 r!7292) (regTwo!30522 r!7292) Nil!61191 s!2326 s!2326)) (Exists!2186 lambda!272936))))

(declare-fun lt!2175716 () Unit!153538)

(assert (=> d!1712682 (= lt!2175716 (choose!39958 (regOne!30522 r!7292) (regTwo!30522 r!7292) s!2326))))

(assert (=> d!1712682 (validRegex!6741 (regOne!30522 r!7292))))

(assert (=> d!1712682 (= (lemmaFindConcatSeparationEquivalentToExists!1294 (regOne!30522 r!7292) (regTwo!30522 r!7292) s!2326) lt!2175716)))

(declare-fun bs!1237220 () Bool)

(assert (= bs!1237220 d!1712682))

(declare-fun m!6367964 () Bool)

(assert (=> bs!1237220 m!6367964))

(declare-fun m!6367966 () Bool)

(assert (=> bs!1237220 m!6367966))

(assert (=> bs!1237220 m!6367280))

(declare-fun m!6367968 () Bool)

(assert (=> bs!1237220 m!6367968))

(assert (=> bs!1237220 m!6367280))

(assert (=> bs!1237220 m!6367282))

(assert (=> b!5334092 d!1712682))

(declare-fun d!1712684 () Bool)

(assert (=> d!1712684 (= (Exists!2186 lambda!272845) (choose!39953 lambda!272845))))

(declare-fun bs!1237221 () Bool)

(assert (= bs!1237221 d!1712684))

(declare-fun m!6367970 () Bool)

(assert (=> bs!1237221 m!6367970))

(assert (=> b!5334092 d!1712684))

(declare-fun b!5334864 () Bool)

(declare-fun res!2262875 () Bool)

(declare-fun e!3313187 () Bool)

(assert (=> b!5334864 (=> (not res!2262875) (not e!3313187))))

(declare-fun lt!2175717 () Option!15116)

(assert (=> b!5334864 (= res!2262875 (matchR!7190 (regOne!30522 r!7292) (_1!35507 (get!21045 lt!2175717))))))

(declare-fun b!5334865 () Bool)

(declare-fun res!2262872 () Bool)

(assert (=> b!5334865 (=> (not res!2262872) (not e!3313187))))

(assert (=> b!5334865 (= res!2262872 (matchR!7190 (regTwo!30522 r!7292) (_2!35507 (get!21045 lt!2175717))))))

(declare-fun b!5334866 () Bool)

(declare-fun e!3313190 () Option!15116)

(assert (=> b!5334866 (= e!3313190 None!15115)))

(declare-fun b!5334867 () Bool)

(declare-fun e!3313188 () Bool)

(assert (=> b!5334867 (= e!3313188 (matchR!7190 (regTwo!30522 r!7292) s!2326))))

(declare-fun b!5334868 () Bool)

(declare-fun e!3313191 () Option!15116)

(assert (=> b!5334868 (= e!3313191 (Some!15115 (tuple2!64409 Nil!61191 s!2326)))))

(declare-fun d!1712686 () Bool)

(declare-fun e!3313189 () Bool)

(assert (=> d!1712686 e!3313189))

(declare-fun res!2262876 () Bool)

(assert (=> d!1712686 (=> res!2262876 e!3313189)))

(assert (=> d!1712686 (= res!2262876 e!3313187)))

(declare-fun res!2262874 () Bool)

(assert (=> d!1712686 (=> (not res!2262874) (not e!3313187))))

(assert (=> d!1712686 (= res!2262874 (isDefined!11819 lt!2175717))))

(assert (=> d!1712686 (= lt!2175717 e!3313191)))

(declare-fun c!927981 () Bool)

(assert (=> d!1712686 (= c!927981 e!3313188)))

(declare-fun res!2262873 () Bool)

(assert (=> d!1712686 (=> (not res!2262873) (not e!3313188))))

(assert (=> d!1712686 (= res!2262873 (matchR!7190 (regOne!30522 r!7292) Nil!61191))))

(assert (=> d!1712686 (validRegex!6741 (regOne!30522 r!7292))))

(assert (=> d!1712686 (= (findConcatSeparation!1530 (regOne!30522 r!7292) (regTwo!30522 r!7292) Nil!61191 s!2326 s!2326) lt!2175717)))

(declare-fun b!5334869 () Bool)

(declare-fun lt!2175718 () Unit!153538)

(declare-fun lt!2175719 () Unit!153538)

(assert (=> b!5334869 (= lt!2175718 lt!2175719)))

(assert (=> b!5334869 (= (++!13337 (++!13337 Nil!61191 (Cons!61191 (h!67639 s!2326) Nil!61191)) (t!374532 s!2326)) s!2326)))

(assert (=> b!5334869 (= lt!2175719 (lemmaMoveElementToOtherListKeepsConcatEq!1752 Nil!61191 (h!67639 s!2326) (t!374532 s!2326) s!2326))))

(assert (=> b!5334869 (= e!3313190 (findConcatSeparation!1530 (regOne!30522 r!7292) (regTwo!30522 r!7292) (++!13337 Nil!61191 (Cons!61191 (h!67639 s!2326) Nil!61191)) (t!374532 s!2326) s!2326))))

(declare-fun b!5334870 () Bool)

(assert (=> b!5334870 (= e!3313187 (= (++!13337 (_1!35507 (get!21045 lt!2175717)) (_2!35507 (get!21045 lt!2175717))) s!2326))))

(declare-fun b!5334871 () Bool)

(assert (=> b!5334871 (= e!3313189 (not (isDefined!11819 lt!2175717)))))

(declare-fun b!5334872 () Bool)

(assert (=> b!5334872 (= e!3313191 e!3313190)))

(declare-fun c!927982 () Bool)

(assert (=> b!5334872 (= c!927982 ((_ is Nil!61191) s!2326))))

(assert (= (and d!1712686 res!2262873) b!5334867))

(assert (= (and d!1712686 c!927981) b!5334868))

(assert (= (and d!1712686 (not c!927981)) b!5334872))

(assert (= (and b!5334872 c!927982) b!5334866))

(assert (= (and b!5334872 (not c!927982)) b!5334869))

(assert (= (and d!1712686 res!2262874) b!5334864))

(assert (= (and b!5334864 res!2262875) b!5334865))

(assert (= (and b!5334865 res!2262872) b!5334870))

(assert (= (and d!1712686 (not res!2262876)) b!5334871))

(assert (=> b!5334869 m!6367604))

(assert (=> b!5334869 m!6367604))

(assert (=> b!5334869 m!6367606))

(assert (=> b!5334869 m!6367608))

(assert (=> b!5334869 m!6367604))

(declare-fun m!6367972 () Bool)

(assert (=> b!5334869 m!6367972))

(declare-fun m!6367974 () Bool)

(assert (=> b!5334867 m!6367974))

(declare-fun m!6367976 () Bool)

(assert (=> d!1712686 m!6367976))

(declare-fun m!6367978 () Bool)

(assert (=> d!1712686 m!6367978))

(assert (=> d!1712686 m!6367964))

(assert (=> b!5334871 m!6367976))

(declare-fun m!6367980 () Bool)

(assert (=> b!5334870 m!6367980))

(declare-fun m!6367982 () Bool)

(assert (=> b!5334870 m!6367982))

(assert (=> b!5334864 m!6367980))

(declare-fun m!6367984 () Bool)

(assert (=> b!5334864 m!6367984))

(assert (=> b!5334865 m!6367980))

(declare-fun m!6367986 () Bool)

(assert (=> b!5334865 m!6367986))

(assert (=> b!5334092 d!1712686))

(declare-fun bs!1237222 () Bool)

(declare-fun d!1712688 () Bool)

(assert (= bs!1237222 (and d!1712688 b!5334098)))

(declare-fun lambda!272937 () Int)

(assert (=> bs!1237222 (= (and (= (regOne!30522 r!7292) (regOne!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175572)) (= lambda!272937 lambda!272847))))

(declare-fun bs!1237223 () Bool)

(assert (= bs!1237223 (and d!1712688 d!1712640)))

(assert (=> bs!1237223 (= (and (= (regOne!30522 r!7292) (regTwo!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175580)) (= lambda!272937 lambda!272926))))

(declare-fun bs!1237224 () Bool)

(assert (= bs!1237224 (and d!1712688 b!5334646)))

(assert (=> bs!1237224 (not (= lambda!272937 lambda!272913))))

(declare-fun bs!1237225 () Bool)

(assert (= bs!1237225 (and d!1712688 d!1712682)))

(assert (=> bs!1237225 (= lambda!272937 lambda!272936)))

(assert (=> bs!1237222 (= (and (= (regOne!30522 r!7292) (regTwo!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175580)) (= lambda!272937 lambda!272849))))

(declare-fun bs!1237226 () Bool)

(assert (= bs!1237226 (and d!1712688 b!5334752)))

(assert (=> bs!1237226 (not (= lambda!272937 lambda!272914))))

(declare-fun bs!1237227 () Bool)

(assert (= bs!1237227 (and d!1712688 b!5334092)))

(assert (=> bs!1237227 (= lambda!272937 lambda!272844)))

(declare-fun bs!1237228 () Bool)

(assert (= bs!1237228 (and d!1712688 d!1712656)))

(assert (=> bs!1237228 (= (and (= (regOne!30522 r!7292) (regOne!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175572)) (= lambda!272937 lambda!272930))))

(declare-fun bs!1237229 () Bool)

(assert (= bs!1237229 (and d!1712688 d!1712660)))

(assert (=> bs!1237229 (= (and (= (regOne!30522 r!7292) (regTwo!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175580)) (= lambda!272937 lambda!272932))))

(assert (=> bs!1237228 (not (= lambda!272937 lambda!272931))))

(declare-fun bs!1237230 () Bool)

(assert (= bs!1237230 (and d!1712688 b!5334753)))

(assert (=> bs!1237230 (not (= lambda!272937 lambda!272915))))

(assert (=> bs!1237222 (not (= lambda!272937 lambda!272850))))

(declare-fun bs!1237231 () Bool)

(assert (= bs!1237231 (and d!1712688 d!1712632)))

(assert (=> bs!1237231 (= (and (= (regOne!30522 r!7292) (regOne!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175572)) (= lambda!272937 lambda!272918))))

(declare-fun bs!1237232 () Bool)

(assert (= bs!1237232 (and d!1712688 b!5334645)))

(assert (=> bs!1237232 (not (= lambda!272937 lambda!272912))))

(assert (=> bs!1237223 (not (= lambda!272937 lambda!272927))))

(assert (=> bs!1237227 (not (= lambda!272937 lambda!272845))))

(assert (=> bs!1237222 (not (= lambda!272937 lambda!272848))))

(assert (=> d!1712688 true))

(assert (=> d!1712688 true))

(assert (=> d!1712688 true))

(declare-fun lambda!272938 () Int)

(assert (=> bs!1237223 (not (= lambda!272938 lambda!272926))))

(assert (=> bs!1237224 (= (and (= (regOne!30522 r!7292) (regOne!30522 lt!2175572)) (= (regTwo!30522 r!7292) (regTwo!30522 lt!2175572))) (= lambda!272938 lambda!272913))))

(assert (=> bs!1237225 (not (= lambda!272938 lambda!272936))))

(assert (=> bs!1237222 (not (= lambda!272938 lambda!272849))))

(assert (=> bs!1237226 (not (= lambda!272938 lambda!272914))))

(assert (=> bs!1237227 (not (= lambda!272938 lambda!272844))))

(assert (=> bs!1237228 (not (= lambda!272938 lambda!272930))))

(assert (=> bs!1237229 (not (= lambda!272938 lambda!272932))))

(assert (=> bs!1237228 (= (and (= (regOne!30522 r!7292) (regOne!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175572)) (= lambda!272938 lambda!272931))))

(assert (=> bs!1237230 (= (and (= (regOne!30522 r!7292) (regOne!30522 lt!2175553)) (= (regTwo!30522 r!7292) (regTwo!30522 lt!2175553))) (= lambda!272938 lambda!272915))))

(declare-fun bs!1237233 () Bool)

(assert (= bs!1237233 d!1712688))

(assert (=> bs!1237233 (not (= lambda!272938 lambda!272937))))

(assert (=> bs!1237222 (not (= lambda!272938 lambda!272847))))

(assert (=> bs!1237222 (= (and (= (regOne!30522 r!7292) (regTwo!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175580)) (= lambda!272938 lambda!272850))))

(assert (=> bs!1237231 (not (= lambda!272938 lambda!272918))))

(assert (=> bs!1237232 (not (= lambda!272938 lambda!272912))))

(assert (=> bs!1237223 (= (and (= (regOne!30522 r!7292) (regTwo!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175580)) (= lambda!272938 lambda!272927))))

(assert (=> bs!1237227 (= lambda!272938 lambda!272845)))

(assert (=> bs!1237222 (= (and (= (regOne!30522 r!7292) (regOne!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175572)) (= lambda!272938 lambda!272848))))

(assert (=> d!1712688 true))

(assert (=> d!1712688 true))

(assert (=> d!1712688 true))

(assert (=> d!1712688 (= (Exists!2186 lambda!272937) (Exists!2186 lambda!272938))))

(declare-fun lt!2175720 () Unit!153538)

(assert (=> d!1712688 (= lt!2175720 (choose!39961 (regOne!30522 r!7292) (regTwo!30522 r!7292) s!2326))))

(assert (=> d!1712688 (validRegex!6741 (regOne!30522 r!7292))))

(assert (=> d!1712688 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!840 (regOne!30522 r!7292) (regTwo!30522 r!7292) s!2326) lt!2175720)))

(declare-fun m!6367988 () Bool)

(assert (=> bs!1237233 m!6367988))

(declare-fun m!6367990 () Bool)

(assert (=> bs!1237233 m!6367990))

(declare-fun m!6367992 () Bool)

(assert (=> bs!1237233 m!6367992))

(assert (=> bs!1237233 m!6367964))

(assert (=> b!5334092 d!1712688))

(declare-fun d!1712690 () Bool)

(assert (=> d!1712690 (= (isDefined!11819 (findConcatSeparation!1530 (regOne!30522 r!7292) (regTwo!30522 r!7292) Nil!61191 s!2326 s!2326)) (not (isEmpty!33163 (findConcatSeparation!1530 (regOne!30522 r!7292) (regTwo!30522 r!7292) Nil!61191 s!2326 s!2326))))))

(declare-fun bs!1237234 () Bool)

(assert (= bs!1237234 d!1712690))

(assert (=> bs!1237234 m!6367280))

(declare-fun m!6367994 () Bool)

(assert (=> bs!1237234 m!6367994))

(assert (=> b!5334092 d!1712690))

(declare-fun d!1712692 () Bool)

(declare-fun c!927983 () Bool)

(assert (=> d!1712692 (= c!927983 (isEmpty!33162 (t!374532 s!2326)))))

(declare-fun e!3313192 () Bool)

(assert (=> d!1712692 (= (matchZipper!1249 lt!2175579 (t!374532 s!2326)) e!3313192)))

(declare-fun b!5334873 () Bool)

(assert (=> b!5334873 (= e!3313192 (nullableZipper!1358 lt!2175579))))

(declare-fun b!5334874 () Bool)

(assert (=> b!5334874 (= e!3313192 (matchZipper!1249 (derivationStepZipper!1246 lt!2175579 (head!11434 (t!374532 s!2326))) (tail!10531 (t!374532 s!2326))))))

(assert (= (and d!1712692 c!927983) b!5334873))

(assert (= (and d!1712692 (not c!927983)) b!5334874))

(assert (=> d!1712692 m!6367512))

(declare-fun m!6367996 () Bool)

(assert (=> b!5334873 m!6367996))

(assert (=> b!5334874 m!6367516))

(assert (=> b!5334874 m!6367516))

(declare-fun m!6367998 () Bool)

(assert (=> b!5334874 m!6367998))

(assert (=> b!5334874 m!6367520))

(assert (=> b!5334874 m!6367998))

(assert (=> b!5334874 m!6367520))

(declare-fun m!6368000 () Bool)

(assert (=> b!5334874 m!6368000))

(assert (=> b!5334093 d!1712692))

(declare-fun bs!1237235 () Bool)

(declare-fun d!1712694 () Bool)

(assert (= bs!1237235 (and d!1712694 b!5334103)))

(declare-fun lambda!272939 () Int)

(assert (=> bs!1237235 (= lambda!272939 lambda!272851)))

(declare-fun bs!1237236 () Bool)

(assert (= bs!1237236 (and d!1712694 d!1712646)))

(assert (=> bs!1237236 (= lambda!272939 lambda!272929)))

(declare-fun bs!1237237 () Bool)

(assert (= bs!1237237 (and d!1712694 d!1712634)))

(assert (=> bs!1237237 (= lambda!272939 lambda!272921)))

(declare-fun bs!1237238 () Bool)

(assert (= bs!1237238 (and d!1712694 d!1712644)))

(assert (=> bs!1237238 (= lambda!272939 lambda!272928)))

(declare-fun bs!1237239 () Bool)

(assert (= bs!1237239 (and d!1712694 d!1712670)))

(assert (=> bs!1237239 (= lambda!272939 lambda!272935)))

(assert (=> d!1712694 (= (inv!80759 setElem!34399) (forall!14423 (exprs!4889 setElem!34399) lambda!272939))))

(declare-fun bs!1237240 () Bool)

(assert (= bs!1237240 d!1712694))

(declare-fun m!6368002 () Bool)

(assert (=> bs!1237240 m!6368002))

(assert (=> setNonEmpty!34399 d!1712694))

(declare-fun bs!1237241 () Bool)

(declare-fun b!5334876 () Bool)

(assert (= bs!1237241 (and b!5334876 d!1712640)))

(declare-fun lambda!272940 () Int)

(assert (=> bs!1237241 (not (= lambda!272940 lambda!272926))))

(declare-fun bs!1237242 () Bool)

(assert (= bs!1237242 (and b!5334876 b!5334646)))

(assert (=> bs!1237242 (not (= lambda!272940 lambda!272913))))

(declare-fun bs!1237243 () Bool)

(assert (= bs!1237243 (and b!5334876 d!1712682)))

(assert (=> bs!1237243 (not (= lambda!272940 lambda!272936))))

(declare-fun bs!1237244 () Bool)

(assert (= bs!1237244 (and b!5334876 b!5334098)))

(assert (=> bs!1237244 (not (= lambda!272940 lambda!272849))))

(declare-fun bs!1237245 () Bool)

(assert (= bs!1237245 (and b!5334876 b!5334752)))

(assert (=> bs!1237245 (= (and (= (reg!15334 r!7292) (reg!15334 lt!2175553)) (= r!7292 lt!2175553)) (= lambda!272940 lambda!272914))))

(declare-fun bs!1237246 () Bool)

(assert (= bs!1237246 (and b!5334876 b!5334092)))

(assert (=> bs!1237246 (not (= lambda!272940 lambda!272844))))

(declare-fun bs!1237247 () Bool)

(assert (= bs!1237247 (and b!5334876 d!1712656)))

(assert (=> bs!1237247 (not (= lambda!272940 lambda!272930))))

(declare-fun bs!1237248 () Bool)

(assert (= bs!1237248 (and b!5334876 d!1712660)))

(assert (=> bs!1237248 (not (= lambda!272940 lambda!272932))))

(declare-fun bs!1237249 () Bool)

(assert (= bs!1237249 (and b!5334876 d!1712688)))

(assert (=> bs!1237249 (not (= lambda!272940 lambda!272938))))

(assert (=> bs!1237247 (not (= lambda!272940 lambda!272931))))

(declare-fun bs!1237250 () Bool)

(assert (= bs!1237250 (and b!5334876 b!5334753)))

(assert (=> bs!1237250 (not (= lambda!272940 lambda!272915))))

(assert (=> bs!1237249 (not (= lambda!272940 lambda!272937))))

(assert (=> bs!1237244 (not (= lambda!272940 lambda!272847))))

(assert (=> bs!1237244 (not (= lambda!272940 lambda!272850))))

(declare-fun bs!1237251 () Bool)

(assert (= bs!1237251 (and b!5334876 d!1712632)))

(assert (=> bs!1237251 (not (= lambda!272940 lambda!272918))))

(declare-fun bs!1237252 () Bool)

(assert (= bs!1237252 (and b!5334876 b!5334645)))

(assert (=> bs!1237252 (= (and (= (reg!15334 r!7292) (reg!15334 lt!2175572)) (= r!7292 lt!2175572)) (= lambda!272940 lambda!272912))))

(assert (=> bs!1237241 (not (= lambda!272940 lambda!272927))))

(assert (=> bs!1237246 (not (= lambda!272940 lambda!272845))))

(assert (=> bs!1237244 (not (= lambda!272940 lambda!272848))))

(assert (=> b!5334876 true))

(assert (=> b!5334876 true))

(declare-fun bs!1237253 () Bool)

(declare-fun b!5334877 () Bool)

(assert (= bs!1237253 (and b!5334877 d!1712640)))

(declare-fun lambda!272941 () Int)

(assert (=> bs!1237253 (not (= lambda!272941 lambda!272926))))

(declare-fun bs!1237254 () Bool)

(assert (= bs!1237254 (and b!5334877 b!5334646)))

(assert (=> bs!1237254 (= (and (= (regOne!30522 r!7292) (regOne!30522 lt!2175572)) (= (regTwo!30522 r!7292) (regTwo!30522 lt!2175572))) (= lambda!272941 lambda!272913))))

(declare-fun bs!1237255 () Bool)

(assert (= bs!1237255 (and b!5334877 b!5334876)))

(assert (=> bs!1237255 (not (= lambda!272941 lambda!272940))))

(declare-fun bs!1237256 () Bool)

(assert (= bs!1237256 (and b!5334877 d!1712682)))

(assert (=> bs!1237256 (not (= lambda!272941 lambda!272936))))

(declare-fun bs!1237257 () Bool)

(assert (= bs!1237257 (and b!5334877 b!5334098)))

(assert (=> bs!1237257 (not (= lambda!272941 lambda!272849))))

(declare-fun bs!1237258 () Bool)

(assert (= bs!1237258 (and b!5334877 b!5334752)))

(assert (=> bs!1237258 (not (= lambda!272941 lambda!272914))))

(declare-fun bs!1237259 () Bool)

(assert (= bs!1237259 (and b!5334877 b!5334092)))

(assert (=> bs!1237259 (not (= lambda!272941 lambda!272844))))

(declare-fun bs!1237260 () Bool)

(assert (= bs!1237260 (and b!5334877 d!1712656)))

(assert (=> bs!1237260 (not (= lambda!272941 lambda!272930))))

(declare-fun bs!1237261 () Bool)

(assert (= bs!1237261 (and b!5334877 d!1712660)))

(assert (=> bs!1237261 (not (= lambda!272941 lambda!272932))))

(declare-fun bs!1237262 () Bool)

(assert (= bs!1237262 (and b!5334877 d!1712688)))

(assert (=> bs!1237262 (= lambda!272941 lambda!272938)))

(assert (=> bs!1237260 (= (and (= (regOne!30522 r!7292) (regOne!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175572)) (= lambda!272941 lambda!272931))))

(declare-fun bs!1237263 () Bool)

(assert (= bs!1237263 (and b!5334877 b!5334753)))

(assert (=> bs!1237263 (= (and (= (regOne!30522 r!7292) (regOne!30522 lt!2175553)) (= (regTwo!30522 r!7292) (regTwo!30522 lt!2175553))) (= lambda!272941 lambda!272915))))

(assert (=> bs!1237262 (not (= lambda!272941 lambda!272937))))

(assert (=> bs!1237257 (not (= lambda!272941 lambda!272847))))

(assert (=> bs!1237257 (= (and (= (regOne!30522 r!7292) (regTwo!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175580)) (= lambda!272941 lambda!272850))))

(declare-fun bs!1237264 () Bool)

(assert (= bs!1237264 (and b!5334877 d!1712632)))

(assert (=> bs!1237264 (not (= lambda!272941 lambda!272918))))

(declare-fun bs!1237265 () Bool)

(assert (= bs!1237265 (and b!5334877 b!5334645)))

(assert (=> bs!1237265 (not (= lambda!272941 lambda!272912))))

(assert (=> bs!1237253 (= (and (= (regOne!30522 r!7292) (regTwo!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175580)) (= lambda!272941 lambda!272927))))

(assert (=> bs!1237259 (= lambda!272941 lambda!272845)))

(assert (=> bs!1237257 (= (and (= (regOne!30522 r!7292) (regOne!30522 (regOne!30522 r!7292))) (= (regTwo!30522 r!7292) lt!2175572)) (= lambda!272941 lambda!272848))))

(assert (=> b!5334877 true))

(assert (=> b!5334877 true))

(declare-fun b!5334875 () Bool)

(declare-fun c!927984 () Bool)

(assert (=> b!5334875 (= c!927984 ((_ is ElementMatch!15005) r!7292))))

(declare-fun e!3313195 () Bool)

(declare-fun e!3313199 () Bool)

(assert (=> b!5334875 (= e!3313195 e!3313199)))

(declare-fun e!3313197 () Bool)

(declare-fun call!381305 () Bool)

(assert (=> b!5334876 (= e!3313197 call!381305)))

(declare-fun bm!381300 () Bool)

(declare-fun call!381306 () Bool)

(assert (=> bm!381300 (= call!381306 (isEmpty!33162 s!2326))))

(declare-fun e!3313193 () Bool)

(assert (=> b!5334877 (= e!3313193 call!381305)))

(declare-fun b!5334878 () Bool)

(declare-fun e!3313194 () Bool)

(assert (=> b!5334878 (= e!3313194 call!381306)))

(declare-fun d!1712696 () Bool)

(declare-fun c!927987 () Bool)

(assert (=> d!1712696 (= c!927987 ((_ is EmptyExpr!15005) r!7292))))

(assert (=> d!1712696 (= (matchRSpec!2108 r!7292 s!2326) e!3313194)))

(declare-fun b!5334879 () Bool)

(declare-fun e!3313198 () Bool)

(declare-fun e!3313196 () Bool)

(assert (=> b!5334879 (= e!3313198 e!3313196)))

(declare-fun res!2262877 () Bool)

(assert (=> b!5334879 (= res!2262877 (matchRSpec!2108 (regOne!30523 r!7292) s!2326))))

(assert (=> b!5334879 (=> res!2262877 e!3313196)))

(declare-fun b!5334880 () Bool)

(assert (=> b!5334880 (= e!3313196 (matchRSpec!2108 (regTwo!30523 r!7292) s!2326))))

(declare-fun b!5334881 () Bool)

(assert (=> b!5334881 (= e!3313199 (= s!2326 (Cons!61191 (c!927759 r!7292) Nil!61191)))))

(declare-fun b!5334882 () Bool)

(assert (=> b!5334882 (= e!3313194 e!3313195)))

(declare-fun res!2262878 () Bool)

(assert (=> b!5334882 (= res!2262878 (not ((_ is EmptyLang!15005) r!7292)))))

(assert (=> b!5334882 (=> (not res!2262878) (not e!3313195))))

(declare-fun b!5334883 () Bool)

(declare-fun c!927985 () Bool)

(assert (=> b!5334883 (= c!927985 ((_ is Union!15005) r!7292))))

(assert (=> b!5334883 (= e!3313199 e!3313198)))

(declare-fun c!927986 () Bool)

(declare-fun bm!381301 () Bool)

(assert (=> bm!381301 (= call!381305 (Exists!2186 (ite c!927986 lambda!272940 lambda!272941)))))

(declare-fun b!5334884 () Bool)

(assert (=> b!5334884 (= e!3313198 e!3313193)))

(assert (=> b!5334884 (= c!927986 ((_ is Star!15005) r!7292))))

(declare-fun b!5334885 () Bool)

(declare-fun res!2262879 () Bool)

(assert (=> b!5334885 (=> res!2262879 e!3313197)))

(assert (=> b!5334885 (= res!2262879 call!381306)))

(assert (=> b!5334885 (= e!3313193 e!3313197)))

(assert (= (and d!1712696 c!927987) b!5334878))

(assert (= (and d!1712696 (not c!927987)) b!5334882))

(assert (= (and b!5334882 res!2262878) b!5334875))

(assert (= (and b!5334875 c!927984) b!5334881))

(assert (= (and b!5334875 (not c!927984)) b!5334883))

(assert (= (and b!5334883 c!927985) b!5334879))

(assert (= (and b!5334883 (not c!927985)) b!5334884))

(assert (= (and b!5334879 (not res!2262877)) b!5334880))

(assert (= (and b!5334884 c!927986) b!5334885))

(assert (= (and b!5334884 (not c!927986)) b!5334877))

(assert (= (and b!5334885 (not res!2262879)) b!5334876))

(assert (= (or b!5334876 b!5334877) bm!381301))

(assert (= (or b!5334878 b!5334885) bm!381300))

(assert (=> bm!381300 m!6367792))

(declare-fun m!6368004 () Bool)

(assert (=> b!5334879 m!6368004))

(declare-fun m!6368006 () Bool)

(assert (=> b!5334880 m!6368006))

(declare-fun m!6368008 () Bool)

(assert (=> bm!381301 m!6368008))

(assert (=> b!5334110 d!1712696))

(declare-fun b!5334886 () Bool)

(declare-fun res!2262887 () Bool)

(declare-fun e!3313202 () Bool)

(assert (=> b!5334886 (=> res!2262887 e!3313202)))

(declare-fun e!3313201 () Bool)

(assert (=> b!5334886 (= res!2262887 e!3313201)))

(declare-fun res!2262882 () Bool)

(assert (=> b!5334886 (=> (not res!2262882) (not e!3313201))))

(declare-fun lt!2175721 () Bool)

(assert (=> b!5334886 (= res!2262882 lt!2175721)))

(declare-fun d!1712698 () Bool)

(declare-fun e!3313200 () Bool)

(assert (=> d!1712698 e!3313200))

(declare-fun c!927988 () Bool)

(assert (=> d!1712698 (= c!927988 ((_ is EmptyExpr!15005) r!7292))))

(declare-fun e!3313205 () Bool)

(assert (=> d!1712698 (= lt!2175721 e!3313205)))

(declare-fun c!927990 () Bool)

(assert (=> d!1712698 (= c!927990 (isEmpty!33162 s!2326))))

(assert (=> d!1712698 (validRegex!6741 r!7292)))

(assert (=> d!1712698 (= (matchR!7190 r!7292 s!2326) lt!2175721)))

(declare-fun b!5334887 () Bool)

(declare-fun e!3313204 () Bool)

(assert (=> b!5334887 (= e!3313202 e!3313204)))

(declare-fun res!2262884 () Bool)

(assert (=> b!5334887 (=> (not res!2262884) (not e!3313204))))

(assert (=> b!5334887 (= res!2262884 (not lt!2175721))))

(declare-fun b!5334888 () Bool)

(declare-fun res!2262880 () Bool)

(assert (=> b!5334888 (=> res!2262880 e!3313202)))

(assert (=> b!5334888 (= res!2262880 (not ((_ is ElementMatch!15005) r!7292)))))

(declare-fun e!3313206 () Bool)

(assert (=> b!5334888 (= e!3313206 e!3313202)))

(declare-fun b!5334889 () Bool)

(declare-fun call!381307 () Bool)

(assert (=> b!5334889 (= e!3313200 (= lt!2175721 call!381307))))

(declare-fun b!5334890 () Bool)

(declare-fun res!2262886 () Bool)

(declare-fun e!3313203 () Bool)

(assert (=> b!5334890 (=> res!2262886 e!3313203)))

(assert (=> b!5334890 (= res!2262886 (not (isEmpty!33162 (tail!10531 s!2326))))))

(declare-fun bm!381302 () Bool)

(assert (=> bm!381302 (= call!381307 (isEmpty!33162 s!2326))))

(declare-fun b!5334891 () Bool)

(assert (=> b!5334891 (= e!3313205 (nullable!5174 r!7292))))

(declare-fun b!5334892 () Bool)

(assert (=> b!5334892 (= e!3313200 e!3313206)))

(declare-fun c!927989 () Bool)

(assert (=> b!5334892 (= c!927989 ((_ is EmptyLang!15005) r!7292))))

(declare-fun b!5334893 () Bool)

(declare-fun res!2262881 () Bool)

(assert (=> b!5334893 (=> (not res!2262881) (not e!3313201))))

(assert (=> b!5334893 (= res!2262881 (not call!381307))))

(declare-fun b!5334894 () Bool)

(declare-fun res!2262885 () Bool)

(assert (=> b!5334894 (=> (not res!2262885) (not e!3313201))))

(assert (=> b!5334894 (= res!2262885 (isEmpty!33162 (tail!10531 s!2326)))))

(declare-fun b!5334895 () Bool)

(assert (=> b!5334895 (= e!3313204 e!3313203)))

(declare-fun res!2262883 () Bool)

(assert (=> b!5334895 (=> res!2262883 e!3313203)))

(assert (=> b!5334895 (= res!2262883 call!381307)))

(declare-fun b!5334896 () Bool)

(assert (=> b!5334896 (= e!3313205 (matchR!7190 (derivativeStep!4179 r!7292 (head!11434 s!2326)) (tail!10531 s!2326)))))

(declare-fun b!5334897 () Bool)

(assert (=> b!5334897 (= e!3313203 (not (= (head!11434 s!2326) (c!927759 r!7292))))))

(declare-fun b!5334898 () Bool)

(assert (=> b!5334898 (= e!3313201 (= (head!11434 s!2326) (c!927759 r!7292)))))

(declare-fun b!5334899 () Bool)

(assert (=> b!5334899 (= e!3313206 (not lt!2175721))))

(assert (= (and d!1712698 c!927990) b!5334891))

(assert (= (and d!1712698 (not c!927990)) b!5334896))

(assert (= (and d!1712698 c!927988) b!5334889))

(assert (= (and d!1712698 (not c!927988)) b!5334892))

(assert (= (and b!5334892 c!927989) b!5334899))

(assert (= (and b!5334892 (not c!927989)) b!5334888))

(assert (= (and b!5334888 (not res!2262880)) b!5334886))

(assert (= (and b!5334886 res!2262882) b!5334893))

(assert (= (and b!5334893 res!2262881) b!5334894))

(assert (= (and b!5334894 res!2262885) b!5334898))

(assert (= (and b!5334886 (not res!2262887)) b!5334887))

(assert (= (and b!5334887 res!2262884) b!5334895))

(assert (= (and b!5334895 (not res!2262883)) b!5334890))

(assert (= (and b!5334890 (not res!2262886)) b!5334897))

(assert (= (or b!5334889 b!5334893 b!5334895) bm!381302))

(assert (=> bm!381302 m!6367792))

(declare-fun m!6368010 () Bool)

(assert (=> b!5334891 m!6368010))

(assert (=> b!5334890 m!6367802))

(assert (=> b!5334890 m!6367802))

(assert (=> b!5334890 m!6367804))

(assert (=> b!5334896 m!6367806))

(assert (=> b!5334896 m!6367806))

(declare-fun m!6368012 () Bool)

(assert (=> b!5334896 m!6368012))

(assert (=> b!5334896 m!6367802))

(assert (=> b!5334896 m!6368012))

(assert (=> b!5334896 m!6367802))

(declare-fun m!6368014 () Bool)

(assert (=> b!5334896 m!6368014))

(assert (=> d!1712698 m!6367792))

(assert (=> d!1712698 m!6367160))

(assert (=> b!5334897 m!6367806))

(assert (=> b!5334894 m!6367802))

(assert (=> b!5334894 m!6367802))

(assert (=> b!5334894 m!6367804))

(assert (=> b!5334898 m!6367806))

(assert (=> b!5334110 d!1712698))

(declare-fun d!1712700 () Bool)

(assert (=> d!1712700 (= (matchR!7190 r!7292 s!2326) (matchRSpec!2108 r!7292 s!2326))))

(declare-fun lt!2175722 () Unit!153538)

(assert (=> d!1712700 (= lt!2175722 (choose!39960 r!7292 s!2326))))

(assert (=> d!1712700 (validRegex!6741 r!7292)))

(assert (=> d!1712700 (= (mainMatchTheorem!2108 r!7292 s!2326) lt!2175722)))

(declare-fun bs!1237266 () Bool)

(assert (= bs!1237266 d!1712700))

(assert (=> bs!1237266 m!6367196))

(assert (=> bs!1237266 m!6367194))

(declare-fun m!6368016 () Bool)

(assert (=> bs!1237266 m!6368016))

(assert (=> bs!1237266 m!6367160))

(assert (=> b!5334110 d!1712700))

(declare-fun bs!1237267 () Bool)

(declare-fun d!1712702 () Bool)

(assert (= bs!1237267 (and d!1712702 b!5334103)))

(declare-fun lambda!272942 () Int)

(assert (=> bs!1237267 (= lambda!272942 lambda!272851)))

(declare-fun bs!1237268 () Bool)

(assert (= bs!1237268 (and d!1712702 d!1712646)))

(assert (=> bs!1237268 (= lambda!272942 lambda!272929)))

(declare-fun bs!1237269 () Bool)

(assert (= bs!1237269 (and d!1712702 d!1712634)))

(assert (=> bs!1237269 (= lambda!272942 lambda!272921)))

(declare-fun bs!1237270 () Bool)

(assert (= bs!1237270 (and d!1712702 d!1712670)))

(assert (=> bs!1237270 (= lambda!272942 lambda!272935)))

(declare-fun bs!1237271 () Bool)

(assert (= bs!1237271 (and d!1712702 d!1712644)))

(assert (=> bs!1237271 (= lambda!272942 lambda!272928)))

(declare-fun bs!1237272 () Bool)

(assert (= bs!1237272 (and d!1712702 d!1712694)))

(assert (=> bs!1237272 (= lambda!272942 lambda!272939)))

(declare-fun b!5334900 () Bool)

(declare-fun e!3313212 () Regex!15005)

(assert (=> b!5334900 (= e!3313212 (Concat!23850 (h!67638 (exprs!4889 (h!67640 zl!343))) (generalisedConcat!674 (t!374531 (exprs!4889 (h!67640 zl!343))))))))

(declare-fun b!5334901 () Bool)

(declare-fun e!3313208 () Bool)

(declare-fun lt!2175723 () Regex!15005)

(assert (=> b!5334901 (= e!3313208 (isEmptyExpr!893 lt!2175723))))

(declare-fun b!5334902 () Bool)

(declare-fun e!3313211 () Bool)

(assert (=> b!5334902 (= e!3313211 (isConcat!416 lt!2175723))))

(declare-fun b!5334903 () Bool)

(assert (=> b!5334903 (= e!3313208 e!3313211)))

(declare-fun c!927994 () Bool)

(assert (=> b!5334903 (= c!927994 (isEmpty!33159 (tail!10532 (exprs!4889 (h!67640 zl!343)))))))

(declare-fun b!5334904 () Bool)

(declare-fun e!3313207 () Regex!15005)

(assert (=> b!5334904 (= e!3313207 e!3313212)))

(declare-fun c!927993 () Bool)

(assert (=> b!5334904 (= c!927993 ((_ is Cons!61190) (exprs!4889 (h!67640 zl!343))))))

(declare-fun b!5334905 () Bool)

(assert (=> b!5334905 (= e!3313212 EmptyExpr!15005)))

(declare-fun b!5334906 () Bool)

(declare-fun e!3313210 () Bool)

(assert (=> b!5334906 (= e!3313210 e!3313208)))

(declare-fun c!927992 () Bool)

(assert (=> b!5334906 (= c!927992 (isEmpty!33159 (exprs!4889 (h!67640 zl!343))))))

(declare-fun b!5334907 () Bool)

(assert (=> b!5334907 (= e!3313207 (h!67638 (exprs!4889 (h!67640 zl!343))))))

(assert (=> d!1712702 e!3313210))

(declare-fun res!2262889 () Bool)

(assert (=> d!1712702 (=> (not res!2262889) (not e!3313210))))

(assert (=> d!1712702 (= res!2262889 (validRegex!6741 lt!2175723))))

(assert (=> d!1712702 (= lt!2175723 e!3313207)))

(declare-fun c!927991 () Bool)

(declare-fun e!3313209 () Bool)

(assert (=> d!1712702 (= c!927991 e!3313209)))

(declare-fun res!2262888 () Bool)

(assert (=> d!1712702 (=> (not res!2262888) (not e!3313209))))

(assert (=> d!1712702 (= res!2262888 ((_ is Cons!61190) (exprs!4889 (h!67640 zl!343))))))

(assert (=> d!1712702 (forall!14423 (exprs!4889 (h!67640 zl!343)) lambda!272942)))

(assert (=> d!1712702 (= (generalisedConcat!674 (exprs!4889 (h!67640 zl!343))) lt!2175723)))

(declare-fun b!5334908 () Bool)

(assert (=> b!5334908 (= e!3313211 (= lt!2175723 (head!11435 (exprs!4889 (h!67640 zl!343)))))))

(declare-fun b!5334909 () Bool)

(assert (=> b!5334909 (= e!3313209 (isEmpty!33159 (t!374531 (exprs!4889 (h!67640 zl!343)))))))

(assert (= (and d!1712702 res!2262888) b!5334909))

(assert (= (and d!1712702 c!927991) b!5334907))

(assert (= (and d!1712702 (not c!927991)) b!5334904))

(assert (= (and b!5334904 c!927993) b!5334900))

(assert (= (and b!5334904 (not c!927993)) b!5334905))

(assert (= (and d!1712702 res!2262889) b!5334906))

(assert (= (and b!5334906 c!927992) b!5334901))

(assert (= (and b!5334906 (not c!927992)) b!5334903))

(assert (= (and b!5334903 c!927994) b!5334908))

(assert (= (and b!5334903 (not c!927994)) b!5334902))

(declare-fun m!6368018 () Bool)

(assert (=> b!5334903 m!6368018))

(assert (=> b!5334903 m!6368018))

(declare-fun m!6368020 () Bool)

(assert (=> b!5334903 m!6368020))

(declare-fun m!6368022 () Bool)

(assert (=> d!1712702 m!6368022))

(declare-fun m!6368024 () Bool)

(assert (=> d!1712702 m!6368024))

(declare-fun m!6368026 () Bool)

(assert (=> b!5334906 m!6368026))

(declare-fun m!6368028 () Bool)

(assert (=> b!5334902 m!6368028))

(declare-fun m!6368030 () Bool)

(assert (=> b!5334908 m!6368030))

(declare-fun m!6368032 () Bool)

(assert (=> b!5334901 m!6368032))

(assert (=> b!5334900 m!6367238))

(assert (=> b!5334909 m!6367178))

(assert (=> b!5334090 d!1712702))

(declare-fun bs!1237273 () Bool)

(declare-fun d!1712704 () Bool)

(assert (= bs!1237273 (and d!1712704 b!5334103)))

(declare-fun lambda!272945 () Int)

(assert (=> bs!1237273 (= lambda!272945 lambda!272851)))

(declare-fun bs!1237274 () Bool)

(assert (= bs!1237274 (and d!1712704 d!1712646)))

(assert (=> bs!1237274 (= lambda!272945 lambda!272929)))

(declare-fun bs!1237275 () Bool)

(assert (= bs!1237275 (and d!1712704 d!1712634)))

(assert (=> bs!1237275 (= lambda!272945 lambda!272921)))

(declare-fun bs!1237276 () Bool)

(assert (= bs!1237276 (and d!1712704 d!1712670)))

(assert (=> bs!1237276 (= lambda!272945 lambda!272935)))

(declare-fun bs!1237277 () Bool)

(assert (= bs!1237277 (and d!1712704 d!1712702)))

(assert (=> bs!1237277 (= lambda!272945 lambda!272942)))

(declare-fun bs!1237278 () Bool)

(assert (= bs!1237278 (and d!1712704 d!1712644)))

(assert (=> bs!1237278 (= lambda!272945 lambda!272928)))

(declare-fun bs!1237279 () Bool)

(assert (= bs!1237279 (and d!1712704 d!1712694)))

(assert (=> bs!1237279 (= lambda!272945 lambda!272939)))

(declare-fun b!5334930 () Bool)

(declare-fun e!3313226 () Bool)

(declare-fun e!3313229 () Bool)

(assert (=> b!5334930 (= e!3313226 e!3313229)))

(declare-fun c!928005 () Bool)

(assert (=> b!5334930 (= c!928005 (isEmpty!33159 (unfocusZipperList!447 zl!343)))))

(declare-fun b!5334931 () Bool)

(declare-fun e!3313228 () Regex!15005)

(assert (=> b!5334931 (= e!3313228 (h!67638 (unfocusZipperList!447 zl!343)))))

(declare-fun b!5334932 () Bool)

(declare-fun e!3313227 () Bool)

(declare-fun lt!2175726 () Regex!15005)

(assert (=> b!5334932 (= e!3313227 (= lt!2175726 (head!11435 (unfocusZipperList!447 zl!343))))))

(declare-fun b!5334933 () Bool)

(declare-fun isEmptyLang!901 (Regex!15005) Bool)

(assert (=> b!5334933 (= e!3313229 (isEmptyLang!901 lt!2175726))))

(declare-fun b!5334934 () Bool)

(declare-fun e!3313225 () Regex!15005)

(assert (=> b!5334934 (= e!3313225 EmptyLang!15005)))

(declare-fun b!5334935 () Bool)

(declare-fun isUnion!333 (Regex!15005) Bool)

(assert (=> b!5334935 (= e!3313227 (isUnion!333 lt!2175726))))

(declare-fun b!5334936 () Bool)

(assert (=> b!5334936 (= e!3313225 (Union!15005 (h!67638 (unfocusZipperList!447 zl!343)) (generalisedUnion!934 (t!374531 (unfocusZipperList!447 zl!343)))))))

(declare-fun b!5334938 () Bool)

(assert (=> b!5334938 (= e!3313229 e!3313227)))

(declare-fun c!928003 () Bool)

(assert (=> b!5334938 (= c!928003 (isEmpty!33159 (tail!10532 (unfocusZipperList!447 zl!343))))))

(declare-fun b!5334939 () Bool)

(declare-fun e!3313230 () Bool)

(assert (=> b!5334939 (= e!3313230 (isEmpty!33159 (t!374531 (unfocusZipperList!447 zl!343))))))

(declare-fun b!5334937 () Bool)

(assert (=> b!5334937 (= e!3313228 e!3313225)))

(declare-fun c!928006 () Bool)

(assert (=> b!5334937 (= c!928006 ((_ is Cons!61190) (unfocusZipperList!447 zl!343)))))

(assert (=> d!1712704 e!3313226))

(declare-fun res!2262895 () Bool)

(assert (=> d!1712704 (=> (not res!2262895) (not e!3313226))))

(assert (=> d!1712704 (= res!2262895 (validRegex!6741 lt!2175726))))

(assert (=> d!1712704 (= lt!2175726 e!3313228)))

(declare-fun c!928004 () Bool)

(assert (=> d!1712704 (= c!928004 e!3313230)))

(declare-fun res!2262894 () Bool)

(assert (=> d!1712704 (=> (not res!2262894) (not e!3313230))))

(assert (=> d!1712704 (= res!2262894 ((_ is Cons!61190) (unfocusZipperList!447 zl!343)))))

(assert (=> d!1712704 (forall!14423 (unfocusZipperList!447 zl!343) lambda!272945)))

(assert (=> d!1712704 (= (generalisedUnion!934 (unfocusZipperList!447 zl!343)) lt!2175726)))

(assert (= (and d!1712704 res!2262894) b!5334939))

(assert (= (and d!1712704 c!928004) b!5334931))

(assert (= (and d!1712704 (not c!928004)) b!5334937))

(assert (= (and b!5334937 c!928006) b!5334936))

(assert (= (and b!5334937 (not c!928006)) b!5334934))

(assert (= (and d!1712704 res!2262895) b!5334930))

(assert (= (and b!5334930 c!928005) b!5334933))

(assert (= (and b!5334930 (not c!928005)) b!5334938))

(assert (= (and b!5334938 c!928003) b!5334932))

(assert (= (and b!5334938 (not c!928003)) b!5334935))

(declare-fun m!6368034 () Bool)

(assert (=> d!1712704 m!6368034))

(assert (=> d!1712704 m!6367212))

(declare-fun m!6368036 () Bool)

(assert (=> d!1712704 m!6368036))

(declare-fun m!6368038 () Bool)

(assert (=> b!5334935 m!6368038))

(declare-fun m!6368040 () Bool)

(assert (=> b!5334936 m!6368040))

(assert (=> b!5334938 m!6367212))

(declare-fun m!6368042 () Bool)

(assert (=> b!5334938 m!6368042))

(assert (=> b!5334938 m!6368042))

(declare-fun m!6368044 () Bool)

(assert (=> b!5334938 m!6368044))

(declare-fun m!6368046 () Bool)

(assert (=> b!5334939 m!6368046))

(assert (=> b!5334930 m!6367212))

(declare-fun m!6368048 () Bool)

(assert (=> b!5334930 m!6368048))

(assert (=> b!5334932 m!6367212))

(declare-fun m!6368050 () Bool)

(assert (=> b!5334932 m!6368050))

(declare-fun m!6368052 () Bool)

(assert (=> b!5334933 m!6368052))

(assert (=> b!5334088 d!1712704))

(declare-fun bs!1237280 () Bool)

(declare-fun d!1712706 () Bool)

(assert (= bs!1237280 (and d!1712706 b!5334103)))

(declare-fun lambda!272948 () Int)

(assert (=> bs!1237280 (= lambda!272948 lambda!272851)))

(declare-fun bs!1237281 () Bool)

(assert (= bs!1237281 (and d!1712706 d!1712646)))

(assert (=> bs!1237281 (= lambda!272948 lambda!272929)))

(declare-fun bs!1237282 () Bool)

(assert (= bs!1237282 (and d!1712706 d!1712634)))

(assert (=> bs!1237282 (= lambda!272948 lambda!272921)))

(declare-fun bs!1237283 () Bool)

(assert (= bs!1237283 (and d!1712706 d!1712670)))

(assert (=> bs!1237283 (= lambda!272948 lambda!272935)))

(declare-fun bs!1237284 () Bool)

(assert (= bs!1237284 (and d!1712706 d!1712704)))

(assert (=> bs!1237284 (= lambda!272948 lambda!272945)))

(declare-fun bs!1237285 () Bool)

(assert (= bs!1237285 (and d!1712706 d!1712702)))

(assert (=> bs!1237285 (= lambda!272948 lambda!272942)))

(declare-fun bs!1237286 () Bool)

(assert (= bs!1237286 (and d!1712706 d!1712644)))

(assert (=> bs!1237286 (= lambda!272948 lambda!272928)))

(declare-fun bs!1237287 () Bool)

(assert (= bs!1237287 (and d!1712706 d!1712694)))

(assert (=> bs!1237287 (= lambda!272948 lambda!272939)))

(declare-fun lt!2175729 () List!61314)

(assert (=> d!1712706 (forall!14423 lt!2175729 lambda!272948)))

(declare-fun e!3313233 () List!61314)

(assert (=> d!1712706 (= lt!2175729 e!3313233)))

(declare-fun c!928009 () Bool)

(assert (=> d!1712706 (= c!928009 ((_ is Cons!61192) zl!343))))

(assert (=> d!1712706 (= (unfocusZipperList!447 zl!343) lt!2175729)))

(declare-fun b!5334944 () Bool)

(assert (=> b!5334944 (= e!3313233 (Cons!61190 (generalisedConcat!674 (exprs!4889 (h!67640 zl!343))) (unfocusZipperList!447 (t!374533 zl!343))))))

(declare-fun b!5334945 () Bool)

(assert (=> b!5334945 (= e!3313233 Nil!61190)))

(assert (= (and d!1712706 c!928009) b!5334944))

(assert (= (and d!1712706 (not c!928009)) b!5334945))

(declare-fun m!6368054 () Bool)

(assert (=> d!1712706 m!6368054))

(assert (=> b!5334944 m!6367176))

(declare-fun m!6368056 () Bool)

(assert (=> b!5334944 m!6368056))

(assert (=> b!5334088 d!1712706))

(declare-fun d!1712708 () Bool)

(declare-fun choose!39963 ((InoxSet Context!8778) Int) (InoxSet Context!8778))

(assert (=> d!1712708 (= (flatMap!732 lt!2175551 lambda!272846) (choose!39963 lt!2175551 lambda!272846))))

(declare-fun bs!1237288 () Bool)

(assert (= bs!1237288 d!1712708))

(declare-fun m!6368058 () Bool)

(assert (=> bs!1237288 m!6368058))

(assert (=> b!5334089 d!1712708))

(declare-fun e!3313241 () (InoxSet Context!8778))

(declare-fun b!5334956 () Bool)

(declare-fun call!381310 () (InoxSet Context!8778))

(assert (=> b!5334956 (= e!3313241 ((_ map or) call!381310 (derivationStepZipperUp!377 (Context!8779 (t!374531 (exprs!4889 lt!2175565))) (h!67639 s!2326))))))

(declare-fun d!1712710 () Bool)

(declare-fun c!928014 () Bool)

(declare-fun e!3313242 () Bool)

(assert (=> d!1712710 (= c!928014 e!3313242)))

(declare-fun res!2262898 () Bool)

(assert (=> d!1712710 (=> (not res!2262898) (not e!3313242))))

(assert (=> d!1712710 (= res!2262898 ((_ is Cons!61190) (exprs!4889 lt!2175565)))))

(assert (=> d!1712710 (= (derivationStepZipperUp!377 lt!2175565 (h!67639 s!2326)) e!3313241)))

(declare-fun bm!381305 () Bool)

(assert (=> bm!381305 (= call!381310 (derivationStepZipperDown!453 (h!67638 (exprs!4889 lt!2175565)) (Context!8779 (t!374531 (exprs!4889 lt!2175565))) (h!67639 s!2326)))))

(declare-fun b!5334957 () Bool)

(assert (=> b!5334957 (= e!3313242 (nullable!5174 (h!67638 (exprs!4889 lt!2175565))))))

(declare-fun b!5334958 () Bool)

(declare-fun e!3313240 () (InoxSet Context!8778))

(assert (=> b!5334958 (= e!3313240 call!381310)))

(declare-fun b!5334959 () Bool)

(assert (=> b!5334959 (= e!3313240 ((as const (Array Context!8778 Bool)) false))))

(declare-fun b!5334960 () Bool)

(assert (=> b!5334960 (= e!3313241 e!3313240)))

(declare-fun c!928015 () Bool)

(assert (=> b!5334960 (= c!928015 ((_ is Cons!61190) (exprs!4889 lt!2175565)))))

(assert (= (and d!1712710 res!2262898) b!5334957))

(assert (= (and d!1712710 c!928014) b!5334956))

(assert (= (and d!1712710 (not c!928014)) b!5334960))

(assert (= (and b!5334960 c!928015) b!5334958))

(assert (= (and b!5334960 (not c!928015)) b!5334959))

(assert (= (or b!5334956 b!5334958) bm!381305))

(declare-fun m!6368060 () Bool)

(assert (=> b!5334956 m!6368060))

(declare-fun m!6368062 () Bool)

(assert (=> bm!381305 m!6368062))

(declare-fun m!6368064 () Bool)

(assert (=> b!5334957 m!6368064))

(assert (=> b!5334089 d!1712710))

(declare-fun d!1712712 () Bool)

(declare-fun dynLambda!24200 (Int Context!8778) (InoxSet Context!8778))

(assert (=> d!1712712 (= (flatMap!732 lt!2175551 lambda!272846) (dynLambda!24200 lambda!272846 lt!2175565))))

(declare-fun lt!2175732 () Unit!153538)

(declare-fun choose!39964 ((InoxSet Context!8778) Context!8778 Int) Unit!153538)

(assert (=> d!1712712 (= lt!2175732 (choose!39964 lt!2175551 lt!2175565 lambda!272846))))

(assert (=> d!1712712 (= lt!2175551 (store ((as const (Array Context!8778 Bool)) false) lt!2175565 true))))

(assert (=> d!1712712 (= (lemmaFlatMapOnSingletonSet!264 lt!2175551 lt!2175565 lambda!272846) lt!2175732)))

(declare-fun b_lambda!205129 () Bool)

(assert (=> (not b_lambda!205129) (not d!1712712)))

(declare-fun bs!1237289 () Bool)

(assert (= bs!1237289 d!1712712))

(assert (=> bs!1237289 m!6367188))

(declare-fun m!6368066 () Bool)

(assert (=> bs!1237289 m!6368066))

(declare-fun m!6368068 () Bool)

(assert (=> bs!1237289 m!6368068))

(assert (=> bs!1237289 m!6367184))

(assert (=> b!5334089 d!1712712))

(declare-fun bs!1237290 () Bool)

(declare-fun d!1712714 () Bool)

(assert (= bs!1237290 (and d!1712714 b!5334106)))

(declare-fun lambda!272951 () Int)

(assert (=> bs!1237290 (= lambda!272951 lambda!272846)))

(assert (=> d!1712714 true))

(assert (=> d!1712714 (= (derivationStepZipper!1246 lt!2175551 (h!67639 s!2326)) (flatMap!732 lt!2175551 lambda!272951))))

(declare-fun bs!1237291 () Bool)

(assert (= bs!1237291 d!1712714))

(declare-fun m!6368070 () Bool)

(assert (=> bs!1237291 m!6368070))

(assert (=> b!5334089 d!1712714))

(declare-fun d!1712716 () Bool)

(declare-fun nullableFct!1510 (Regex!15005) Bool)

(assert (=> d!1712716 (= (nullable!5174 (regOne!30522 (regOne!30522 r!7292))) (nullableFct!1510 (regOne!30522 (regOne!30522 r!7292))))))

(declare-fun bs!1237292 () Bool)

(assert (= bs!1237292 d!1712716))

(declare-fun m!6368072 () Bool)

(assert (=> bs!1237292 m!6368072))

(assert (=> b!5334109 d!1712716))

(declare-fun d!1712718 () Bool)

(assert (=> d!1712718 (= (flatMap!732 z!1189 lambda!272846) (choose!39963 z!1189 lambda!272846))))

(declare-fun bs!1237293 () Bool)

(assert (= bs!1237293 d!1712718))

(declare-fun m!6368074 () Bool)

(assert (=> bs!1237293 m!6368074))

(assert (=> b!5334106 d!1712718))

(declare-fun call!381311 () (InoxSet Context!8778))

(declare-fun e!3313244 () (InoxSet Context!8778))

(declare-fun b!5334963 () Bool)

(assert (=> b!5334963 (= e!3313244 ((_ map or) call!381311 (derivationStepZipperUp!377 (Context!8779 (t!374531 (exprs!4889 lt!2175560))) (h!67639 s!2326))))))

(declare-fun d!1712720 () Bool)

(declare-fun c!928018 () Bool)

(declare-fun e!3313245 () Bool)

(assert (=> d!1712720 (= c!928018 e!3313245)))

(declare-fun res!2262899 () Bool)

(assert (=> d!1712720 (=> (not res!2262899) (not e!3313245))))

(assert (=> d!1712720 (= res!2262899 ((_ is Cons!61190) (exprs!4889 lt!2175560)))))

(assert (=> d!1712720 (= (derivationStepZipperUp!377 lt!2175560 (h!67639 s!2326)) e!3313244)))

(declare-fun bm!381306 () Bool)

(assert (=> bm!381306 (= call!381311 (derivationStepZipperDown!453 (h!67638 (exprs!4889 lt!2175560)) (Context!8779 (t!374531 (exprs!4889 lt!2175560))) (h!67639 s!2326)))))

(declare-fun b!5334964 () Bool)

(assert (=> b!5334964 (= e!3313245 (nullable!5174 (h!67638 (exprs!4889 lt!2175560))))))

(declare-fun b!5334965 () Bool)

(declare-fun e!3313243 () (InoxSet Context!8778))

(assert (=> b!5334965 (= e!3313243 call!381311)))

(declare-fun b!5334966 () Bool)

(assert (=> b!5334966 (= e!3313243 ((as const (Array Context!8778 Bool)) false))))

(declare-fun b!5334967 () Bool)

(assert (=> b!5334967 (= e!3313244 e!3313243)))

(declare-fun c!928019 () Bool)

(assert (=> b!5334967 (= c!928019 ((_ is Cons!61190) (exprs!4889 lt!2175560)))))

(assert (= (and d!1712720 res!2262899) b!5334964))

(assert (= (and d!1712720 c!928018) b!5334963))

(assert (= (and d!1712720 (not c!928018)) b!5334967))

(assert (= (and b!5334967 c!928019) b!5334965))

(assert (= (and b!5334967 (not c!928019)) b!5334966))

(assert (= (or b!5334963 b!5334965) bm!381306))

(declare-fun m!6368076 () Bool)

(assert (=> b!5334963 m!6368076))

(declare-fun m!6368078 () Bool)

(assert (=> bm!381306 m!6368078))

(declare-fun m!6368080 () Bool)

(assert (=> b!5334964 m!6368080))

(assert (=> b!5334106 d!1712720))

(declare-fun d!1712722 () Bool)

(assert (=> d!1712722 (= (nullable!5174 (h!67638 (exprs!4889 (h!67640 zl!343)))) (nullableFct!1510 (h!67638 (exprs!4889 (h!67640 zl!343)))))))

(declare-fun bs!1237294 () Bool)

(assert (= bs!1237294 d!1712722))

(declare-fun m!6368082 () Bool)

(assert (=> bs!1237294 m!6368082))

(assert (=> b!5334106 d!1712722))

(declare-fun call!381312 () (InoxSet Context!8778))

(declare-fun b!5334968 () Bool)

(declare-fun e!3313247 () (InoxSet Context!8778))

(assert (=> b!5334968 (= e!3313247 ((_ map or) call!381312 (derivationStepZipperUp!377 (Context!8779 (t!374531 (exprs!4889 (Context!8779 (Cons!61190 (h!67638 (exprs!4889 (h!67640 zl!343))) (t!374531 (exprs!4889 (h!67640 zl!343)))))))) (h!67639 s!2326))))))

(declare-fun d!1712724 () Bool)

(declare-fun c!928020 () Bool)

(declare-fun e!3313248 () Bool)

(assert (=> d!1712724 (= c!928020 e!3313248)))

(declare-fun res!2262900 () Bool)

(assert (=> d!1712724 (=> (not res!2262900) (not e!3313248))))

(assert (=> d!1712724 (= res!2262900 ((_ is Cons!61190) (exprs!4889 (Context!8779 (Cons!61190 (h!67638 (exprs!4889 (h!67640 zl!343))) (t!374531 (exprs!4889 (h!67640 zl!343))))))))))

(assert (=> d!1712724 (= (derivationStepZipperUp!377 (Context!8779 (Cons!61190 (h!67638 (exprs!4889 (h!67640 zl!343))) (t!374531 (exprs!4889 (h!67640 zl!343))))) (h!67639 s!2326)) e!3313247)))

(declare-fun bm!381307 () Bool)

(assert (=> bm!381307 (= call!381312 (derivationStepZipperDown!453 (h!67638 (exprs!4889 (Context!8779 (Cons!61190 (h!67638 (exprs!4889 (h!67640 zl!343))) (t!374531 (exprs!4889 (h!67640 zl!343))))))) (Context!8779 (t!374531 (exprs!4889 (Context!8779 (Cons!61190 (h!67638 (exprs!4889 (h!67640 zl!343))) (t!374531 (exprs!4889 (h!67640 zl!343)))))))) (h!67639 s!2326)))))

(declare-fun b!5334969 () Bool)

(assert (=> b!5334969 (= e!3313248 (nullable!5174 (h!67638 (exprs!4889 (Context!8779 (Cons!61190 (h!67638 (exprs!4889 (h!67640 zl!343))) (t!374531 (exprs!4889 (h!67640 zl!343)))))))))))

(declare-fun b!5334970 () Bool)

(declare-fun e!3313246 () (InoxSet Context!8778))

(assert (=> b!5334970 (= e!3313246 call!381312)))

(declare-fun b!5334971 () Bool)

(assert (=> b!5334971 (= e!3313246 ((as const (Array Context!8778 Bool)) false))))

(declare-fun b!5334972 () Bool)

(assert (=> b!5334972 (= e!3313247 e!3313246)))

(declare-fun c!928021 () Bool)

(assert (=> b!5334972 (= c!928021 ((_ is Cons!61190) (exprs!4889 (Context!8779 (Cons!61190 (h!67638 (exprs!4889 (h!67640 zl!343))) (t!374531 (exprs!4889 (h!67640 zl!343))))))))))

(assert (= (and d!1712724 res!2262900) b!5334969))

(assert (= (and d!1712724 c!928020) b!5334968))

(assert (= (and d!1712724 (not c!928020)) b!5334972))

(assert (= (and b!5334972 c!928021) b!5334970))

(assert (= (and b!5334972 (not c!928021)) b!5334971))

(assert (= (or b!5334968 b!5334970) bm!381307))

(declare-fun m!6368084 () Bool)

(assert (=> b!5334968 m!6368084))

(declare-fun m!6368086 () Bool)

(assert (=> bm!381307 m!6368086))

(declare-fun m!6368088 () Bool)

(assert (=> b!5334969 m!6368088))

(assert (=> b!5334106 d!1712724))

(declare-fun d!1712726 () Bool)

(assert (=> d!1712726 (= (flatMap!732 z!1189 lambda!272846) (dynLambda!24200 lambda!272846 (h!67640 zl!343)))))

(declare-fun lt!2175733 () Unit!153538)

(assert (=> d!1712726 (= lt!2175733 (choose!39964 z!1189 (h!67640 zl!343) lambda!272846))))

(assert (=> d!1712726 (= z!1189 (store ((as const (Array Context!8778 Bool)) false) (h!67640 zl!343) true))))

(assert (=> d!1712726 (= (lemmaFlatMapOnSingletonSet!264 z!1189 (h!67640 zl!343) lambda!272846) lt!2175733)))

(declare-fun b_lambda!205131 () Bool)

(assert (=> (not b_lambda!205131) (not d!1712726)))

(declare-fun bs!1237295 () Bool)

(assert (= bs!1237295 d!1712726))

(assert (=> bs!1237295 m!6367166))

(declare-fun m!6368090 () Bool)

(assert (=> bs!1237295 m!6368090))

(declare-fun m!6368092 () Bool)

(assert (=> bs!1237295 m!6368092))

(declare-fun m!6368094 () Bool)

(assert (=> bs!1237295 m!6368094))

(assert (=> b!5334106 d!1712726))

(declare-fun b!5334973 () Bool)

(declare-fun e!3313250 () (InoxSet Context!8778))

(declare-fun call!381313 () (InoxSet Context!8778))

(assert (=> b!5334973 (= e!3313250 ((_ map or) call!381313 (derivationStepZipperUp!377 (Context!8779 (t!374531 (exprs!4889 (h!67640 zl!343)))) (h!67639 s!2326))))))

(declare-fun d!1712728 () Bool)

(declare-fun c!928022 () Bool)

(declare-fun e!3313251 () Bool)

(assert (=> d!1712728 (= c!928022 e!3313251)))

(declare-fun res!2262901 () Bool)

(assert (=> d!1712728 (=> (not res!2262901) (not e!3313251))))

(assert (=> d!1712728 (= res!2262901 ((_ is Cons!61190) (exprs!4889 (h!67640 zl!343))))))

(assert (=> d!1712728 (= (derivationStepZipperUp!377 (h!67640 zl!343) (h!67639 s!2326)) e!3313250)))

(declare-fun bm!381308 () Bool)

(assert (=> bm!381308 (= call!381313 (derivationStepZipperDown!453 (h!67638 (exprs!4889 (h!67640 zl!343))) (Context!8779 (t!374531 (exprs!4889 (h!67640 zl!343)))) (h!67639 s!2326)))))

(declare-fun b!5334974 () Bool)

(assert (=> b!5334974 (= e!3313251 (nullable!5174 (h!67638 (exprs!4889 (h!67640 zl!343)))))))

(declare-fun b!5334975 () Bool)

(declare-fun e!3313249 () (InoxSet Context!8778))

(assert (=> b!5334975 (= e!3313249 call!381313)))

(declare-fun b!5334976 () Bool)

(assert (=> b!5334976 (= e!3313249 ((as const (Array Context!8778 Bool)) false))))

(declare-fun b!5334977 () Bool)

(assert (=> b!5334977 (= e!3313250 e!3313249)))

(declare-fun c!928023 () Bool)

(assert (=> b!5334977 (= c!928023 ((_ is Cons!61190) (exprs!4889 (h!67640 zl!343))))))

(assert (= (and d!1712728 res!2262901) b!5334974))

(assert (= (and d!1712728 c!928022) b!5334973))

(assert (= (and d!1712728 (not c!928022)) b!5334977))

(assert (= (and b!5334977 c!928023) b!5334975))

(assert (= (and b!5334977 (not c!928023)) b!5334976))

(assert (= (or b!5334973 b!5334975) bm!381308))

(declare-fun m!6368096 () Bool)

(assert (=> b!5334973 m!6368096))

(declare-fun m!6368098 () Bool)

(assert (=> bm!381308 m!6368098))

(assert (=> b!5334974 m!6367170))

(assert (=> b!5334106 d!1712728))

(declare-fun b!5335000 () Bool)

(declare-fun e!3313265 () (InoxSet Context!8778))

(declare-fun call!381326 () (InoxSet Context!8778))

(assert (=> b!5335000 (= e!3313265 call!381326)))

(declare-fun bm!381321 () Bool)

(declare-fun c!928037 () Bool)

(declare-fun call!381329 () List!61314)

(declare-fun c!928038 () Bool)

(declare-fun $colon$colon!1408 (List!61314 Regex!15005) List!61314)

(assert (=> bm!381321 (= call!381329 ($colon$colon!1408 (exprs!4889 lt!2175560) (ite (or c!928038 c!928037) (regTwo!30522 (h!67638 (exprs!4889 (h!67640 zl!343)))) (h!67638 (exprs!4889 (h!67640 zl!343))))))))

(declare-fun b!5335001 () Bool)

(declare-fun e!3313268 () Bool)

(assert (=> b!5335001 (= c!928038 e!3313268)))

(declare-fun res!2262904 () Bool)

(assert (=> b!5335001 (=> (not res!2262904) (not e!3313268))))

(assert (=> b!5335001 (= res!2262904 ((_ is Concat!23850) (h!67638 (exprs!4889 (h!67640 zl!343)))))))

(declare-fun e!3313269 () (InoxSet Context!8778))

(declare-fun e!3313264 () (InoxSet Context!8778))

(assert (=> b!5335001 (= e!3313269 e!3313264)))

(declare-fun b!5335003 () Bool)

(declare-fun e!3313266 () (InoxSet Context!8778))

(assert (=> b!5335003 (= e!3313266 call!381326)))

(declare-fun b!5335004 () Bool)

(declare-fun call!381331 () (InoxSet Context!8778))

(declare-fun call!381328 () (InoxSet Context!8778))

(assert (=> b!5335004 (= e!3313264 ((_ map or) call!381331 call!381328))))

(declare-fun bm!381322 () Bool)

(assert (=> bm!381322 (= call!381326 call!381328)))

(declare-fun b!5335005 () Bool)

(declare-fun call!381327 () (InoxSet Context!8778))

(assert (=> b!5335005 (= e!3313269 ((_ map or) call!381331 call!381327))))

(declare-fun b!5335006 () Bool)

(assert (=> b!5335006 (= e!3313264 e!3313265)))

(assert (=> b!5335006 (= c!928037 ((_ is Concat!23850) (h!67638 (exprs!4889 (h!67640 zl!343)))))))

(declare-fun c!928035 () Bool)

(declare-fun bm!381323 () Bool)

(declare-fun call!381330 () List!61314)

(assert (=> bm!381323 (= call!381327 (derivationStepZipperDown!453 (ite c!928035 (regTwo!30523 (h!67638 (exprs!4889 (h!67640 zl!343)))) (ite c!928038 (regTwo!30522 (h!67638 (exprs!4889 (h!67640 zl!343)))) (ite c!928037 (regOne!30522 (h!67638 (exprs!4889 (h!67640 zl!343)))) (reg!15334 (h!67638 (exprs!4889 (h!67640 zl!343))))))) (ite (or c!928035 c!928038) lt!2175560 (Context!8779 call!381330)) (h!67639 s!2326)))))

(declare-fun bm!381324 () Bool)

(assert (=> bm!381324 (= call!381330 call!381329)))

(declare-fun b!5335007 () Bool)

(declare-fun e!3313267 () (InoxSet Context!8778))

(assert (=> b!5335007 (= e!3313267 e!3313269)))

(assert (=> b!5335007 (= c!928035 ((_ is Union!15005) (h!67638 (exprs!4889 (h!67640 zl!343)))))))

(declare-fun bm!381325 () Bool)

(assert (=> bm!381325 (= call!381331 (derivationStepZipperDown!453 (ite c!928035 (regOne!30523 (h!67638 (exprs!4889 (h!67640 zl!343)))) (regOne!30522 (h!67638 (exprs!4889 (h!67640 zl!343))))) (ite c!928035 lt!2175560 (Context!8779 call!381329)) (h!67639 s!2326)))))

(declare-fun b!5335008 () Bool)

(assert (=> b!5335008 (= e!3313267 (store ((as const (Array Context!8778 Bool)) false) lt!2175560 true))))

(declare-fun b!5335009 () Bool)

(declare-fun c!928034 () Bool)

(assert (=> b!5335009 (= c!928034 ((_ is Star!15005) (h!67638 (exprs!4889 (h!67640 zl!343)))))))

(assert (=> b!5335009 (= e!3313265 e!3313266)))

(declare-fun b!5335010 () Bool)

(assert (=> b!5335010 (= e!3313268 (nullable!5174 (regOne!30522 (h!67638 (exprs!4889 (h!67640 zl!343))))))))

(declare-fun bm!381326 () Bool)

(assert (=> bm!381326 (= call!381328 call!381327)))

(declare-fun d!1712730 () Bool)

(declare-fun c!928036 () Bool)

(assert (=> d!1712730 (= c!928036 (and ((_ is ElementMatch!15005) (h!67638 (exprs!4889 (h!67640 zl!343)))) (= (c!927759 (h!67638 (exprs!4889 (h!67640 zl!343)))) (h!67639 s!2326))))))

(assert (=> d!1712730 (= (derivationStepZipperDown!453 (h!67638 (exprs!4889 (h!67640 zl!343))) lt!2175560 (h!67639 s!2326)) e!3313267)))

(declare-fun b!5335002 () Bool)

(assert (=> b!5335002 (= e!3313266 ((as const (Array Context!8778 Bool)) false))))

(assert (= (and d!1712730 c!928036) b!5335008))

(assert (= (and d!1712730 (not c!928036)) b!5335007))

(assert (= (and b!5335007 c!928035) b!5335005))

(assert (= (and b!5335007 (not c!928035)) b!5335001))

(assert (= (and b!5335001 res!2262904) b!5335010))

(assert (= (and b!5335001 c!928038) b!5335004))

(assert (= (and b!5335001 (not c!928038)) b!5335006))

(assert (= (and b!5335006 c!928037) b!5335000))

(assert (= (and b!5335006 (not c!928037)) b!5335009))

(assert (= (and b!5335009 c!928034) b!5335003))

(assert (= (and b!5335009 (not c!928034)) b!5335002))

(assert (= (or b!5335000 b!5335003) bm!381324))

(assert (= (or b!5335000 b!5335003) bm!381322))

(assert (= (or b!5335004 bm!381324) bm!381321))

(assert (= (or b!5335004 bm!381322) bm!381326))

(assert (= (or b!5335005 bm!381326) bm!381323))

(assert (= (or b!5335005 b!5335004) bm!381325))

(declare-fun m!6368100 () Bool)

(assert (=> bm!381325 m!6368100))

(declare-fun m!6368102 () Bool)

(assert (=> b!5335008 m!6368102))

(declare-fun m!6368104 () Bool)

(assert (=> b!5335010 m!6368104))

(declare-fun m!6368106 () Bool)

(assert (=> bm!381321 m!6368106))

(declare-fun m!6368108 () Bool)

(assert (=> bm!381323 m!6368108))

(assert (=> b!5334106 d!1712730))

(declare-fun b!5335029 () Bool)

(declare-fun res!2262917 () Bool)

(declare-fun e!3313289 () Bool)

(assert (=> b!5335029 (=> (not res!2262917) (not e!3313289))))

(declare-fun call!381339 () Bool)

(assert (=> b!5335029 (= res!2262917 call!381339)))

(declare-fun e!3313285 () Bool)

(assert (=> b!5335029 (= e!3313285 e!3313289)))

(declare-fun b!5335030 () Bool)

(declare-fun e!3313288 () Bool)

(assert (=> b!5335030 (= e!3313288 e!3313285)))

(declare-fun c!928043 () Bool)

(assert (=> b!5335030 (= c!928043 ((_ is Union!15005) r!7292))))

(declare-fun b!5335031 () Bool)

(declare-fun e!3313290 () Bool)

(assert (=> b!5335031 (= e!3313288 e!3313290)))

(declare-fun res!2262915 () Bool)

(assert (=> b!5335031 (= res!2262915 (not (nullable!5174 (reg!15334 r!7292))))))

(assert (=> b!5335031 (=> (not res!2262915) (not e!3313290))))

(declare-fun b!5335032 () Bool)

(declare-fun e!3313284 () Bool)

(declare-fun call!381340 () Bool)

(assert (=> b!5335032 (= e!3313284 call!381340)))

(declare-fun bm!381333 () Bool)

(assert (=> bm!381333 (= call!381340 (validRegex!6741 (ite c!928043 (regTwo!30523 r!7292) (regTwo!30522 r!7292))))))

(declare-fun d!1712732 () Bool)

(declare-fun res!2262919 () Bool)

(declare-fun e!3313286 () Bool)

(assert (=> d!1712732 (=> res!2262919 e!3313286)))

(assert (=> d!1712732 (= res!2262919 ((_ is ElementMatch!15005) r!7292))))

(assert (=> d!1712732 (= (validRegex!6741 r!7292) e!3313286)))

(declare-fun call!381338 () Bool)

(declare-fun c!928044 () Bool)

(declare-fun bm!381334 () Bool)

(assert (=> bm!381334 (= call!381338 (validRegex!6741 (ite c!928044 (reg!15334 r!7292) (ite c!928043 (regOne!30523 r!7292) (regOne!30522 r!7292)))))))

(declare-fun b!5335033 () Bool)

(assert (=> b!5335033 (= e!3313286 e!3313288)))

(assert (=> b!5335033 (= c!928044 ((_ is Star!15005) r!7292))))

(declare-fun b!5335034 () Bool)

(declare-fun e!3313287 () Bool)

(assert (=> b!5335034 (= e!3313287 e!3313284)))

(declare-fun res!2262916 () Bool)

(assert (=> b!5335034 (=> (not res!2262916) (not e!3313284))))

(assert (=> b!5335034 (= res!2262916 call!381339)))

(declare-fun b!5335035 () Bool)

(declare-fun res!2262918 () Bool)

(assert (=> b!5335035 (=> res!2262918 e!3313287)))

(assert (=> b!5335035 (= res!2262918 (not ((_ is Concat!23850) r!7292)))))

(assert (=> b!5335035 (= e!3313285 e!3313287)))

(declare-fun b!5335036 () Bool)

(assert (=> b!5335036 (= e!3313289 call!381340)))

(declare-fun b!5335037 () Bool)

(assert (=> b!5335037 (= e!3313290 call!381338)))

(declare-fun bm!381335 () Bool)

(assert (=> bm!381335 (= call!381339 call!381338)))

(assert (= (and d!1712732 (not res!2262919)) b!5335033))

(assert (= (and b!5335033 c!928044) b!5335031))

(assert (= (and b!5335033 (not c!928044)) b!5335030))

(assert (= (and b!5335031 res!2262915) b!5335037))

(assert (= (and b!5335030 c!928043) b!5335029))

(assert (= (and b!5335030 (not c!928043)) b!5335035))

(assert (= (and b!5335029 res!2262917) b!5335036))

(assert (= (and b!5335035 (not res!2262918)) b!5335034))

(assert (= (and b!5335034 res!2262916) b!5335032))

(assert (= (or b!5335036 b!5335032) bm!381333))

(assert (= (or b!5335029 b!5335034) bm!381335))

(assert (= (or b!5335037 bm!381335) bm!381334))

(declare-fun m!6368110 () Bool)

(assert (=> b!5335031 m!6368110))

(declare-fun m!6368112 () Bool)

(assert (=> bm!381333 m!6368112))

(declare-fun m!6368114 () Bool)

(assert (=> bm!381334 m!6368114))

(assert (=> start!562110 d!1712732))

(declare-fun d!1712734 () Bool)

(declare-fun lt!2175736 () Int)

(assert (=> d!1712734 (>= lt!2175736 0)))

(declare-fun e!3313293 () Int)

(assert (=> d!1712734 (= lt!2175736 e!3313293)))

(declare-fun c!928047 () Bool)

(assert (=> d!1712734 (= c!928047 ((_ is Cons!61192) lt!2175581))))

(assert (=> d!1712734 (= (zipperDepthTotal!158 lt!2175581) lt!2175736)))

(declare-fun b!5335042 () Bool)

(assert (=> b!5335042 (= e!3313293 (+ (contextDepthTotal!138 (h!67640 lt!2175581)) (zipperDepthTotal!158 (t!374533 lt!2175581))))))

(declare-fun b!5335043 () Bool)

(assert (=> b!5335043 (= e!3313293 0)))

(assert (= (and d!1712734 c!928047) b!5335042))

(assert (= (and d!1712734 (not c!928047)) b!5335043))

(declare-fun m!6368116 () Bool)

(assert (=> b!5335042 m!6368116))

(declare-fun m!6368118 () Bool)

(assert (=> b!5335042 m!6368118))

(assert (=> b!5334086 d!1712734))

(declare-fun d!1712736 () Bool)

(declare-fun lt!2175737 () Int)

(assert (=> d!1712736 (>= lt!2175737 0)))

(declare-fun e!3313294 () Int)

(assert (=> d!1712736 (= lt!2175737 e!3313294)))

(declare-fun c!928048 () Bool)

(assert (=> d!1712736 (= c!928048 ((_ is Cons!61192) zl!343))))

(assert (=> d!1712736 (= (zipperDepthTotal!158 zl!343) lt!2175737)))

(declare-fun b!5335044 () Bool)

(assert (=> b!5335044 (= e!3313294 (+ (contextDepthTotal!138 (h!67640 zl!343)) (zipperDepthTotal!158 (t!374533 zl!343))))))

(declare-fun b!5335045 () Bool)

(assert (=> b!5335045 (= e!3313294 0)))

(assert (= (and d!1712736 c!928048) b!5335044))

(assert (= (and d!1712736 (not c!928048)) b!5335045))

(assert (=> b!5335044 m!6367202))

(declare-fun m!6368120 () Bool)

(assert (=> b!5335044 m!6368120))

(assert (=> b!5334086 d!1712736))

(declare-fun b!5335052 () Bool)

(assert (=> b!5335052 true))

(declare-fun bs!1237296 () Bool)

(declare-fun b!5335054 () Bool)

(assert (= bs!1237296 (and b!5335054 b!5335052)))

(declare-fun lambda!272959 () Int)

(declare-fun lambda!272960 () Int)

(declare-fun lt!2175749 () Int)

(declare-fun lt!2175747 () Int)

(assert (=> bs!1237296 (= (= lt!2175749 lt!2175747) (= lambda!272960 lambda!272959))))

(assert (=> b!5335054 true))

(declare-fun d!1712738 () Bool)

(declare-fun e!3313299 () Bool)

(assert (=> d!1712738 e!3313299))

(declare-fun res!2262922 () Bool)

(assert (=> d!1712738 (=> (not res!2262922) (not e!3313299))))

(assert (=> d!1712738 (= res!2262922 (>= lt!2175749 0))))

(declare-fun e!3313300 () Int)

(assert (=> d!1712738 (= lt!2175749 e!3313300)))

(declare-fun c!928057 () Bool)

(assert (=> d!1712738 (= c!928057 ((_ is Cons!61192) lt!2175581))))

(assert (=> d!1712738 (= (zipperDepth!114 lt!2175581) lt!2175749)))

(assert (=> b!5335052 (= e!3313300 lt!2175747)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!64 (Context!8778) Int)

(assert (=> b!5335052 (= lt!2175747 (maxBigInt!0 (contextDepth!64 (h!67640 lt!2175581)) (zipperDepth!114 (t!374533 lt!2175581))))))

(declare-fun lt!2175748 () Unit!153538)

(declare-fun lambda!272958 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!58 (List!61316 Int Int Int) Unit!153538)

(assert (=> b!5335052 (= lt!2175748 (lemmaForallContextDepthBiggerThanTransitive!58 (t!374533 lt!2175581) lt!2175747 (zipperDepth!114 (t!374533 lt!2175581)) lambda!272958))))

(declare-fun forall!14425 (List!61316 Int) Bool)

(assert (=> b!5335052 (forall!14425 (t!374533 lt!2175581) lambda!272959)))

(declare-fun lt!2175746 () Unit!153538)

(assert (=> b!5335052 (= lt!2175746 lt!2175748)))

(declare-fun b!5335053 () Bool)

(assert (=> b!5335053 (= e!3313300 0)))

(assert (=> b!5335054 (= e!3313299 (forall!14425 lt!2175581 lambda!272960))))

(assert (= (and d!1712738 c!928057) b!5335052))

(assert (= (and d!1712738 (not c!928057)) b!5335053))

(assert (= (and d!1712738 res!2262922) b!5335054))

(declare-fun m!6368122 () Bool)

(assert (=> b!5335052 m!6368122))

(declare-fun m!6368124 () Bool)

(assert (=> b!5335052 m!6368124))

(declare-fun m!6368126 () Bool)

(assert (=> b!5335052 m!6368126))

(assert (=> b!5335052 m!6368122))

(assert (=> b!5335052 m!6368126))

(declare-fun m!6368128 () Bool)

(assert (=> b!5335052 m!6368128))

(assert (=> b!5335052 m!6368126))

(declare-fun m!6368130 () Bool)

(assert (=> b!5335052 m!6368130))

(declare-fun m!6368132 () Bool)

(assert (=> b!5335054 m!6368132))

(assert (=> b!5334084 d!1712738))

(declare-fun bs!1237297 () Bool)

(declare-fun b!5335057 () Bool)

(assert (= bs!1237297 (and b!5335057 b!5335052)))

(declare-fun lambda!272961 () Int)

(assert (=> bs!1237297 (= lambda!272961 lambda!272958)))

(declare-fun lambda!272962 () Int)

(declare-fun lt!2175751 () Int)

(assert (=> bs!1237297 (= (= lt!2175751 lt!2175747) (= lambda!272962 lambda!272959))))

(declare-fun bs!1237298 () Bool)

(assert (= bs!1237298 (and b!5335057 b!5335054)))

(assert (=> bs!1237298 (= (= lt!2175751 lt!2175749) (= lambda!272962 lambda!272960))))

(assert (=> b!5335057 true))

(declare-fun bs!1237299 () Bool)

(declare-fun b!5335059 () Bool)

(assert (= bs!1237299 (and b!5335059 b!5335052)))

(declare-fun lambda!272963 () Int)

(declare-fun lt!2175753 () Int)

(assert (=> bs!1237299 (= (= lt!2175753 lt!2175747) (= lambda!272963 lambda!272959))))

(declare-fun bs!1237300 () Bool)

(assert (= bs!1237300 (and b!5335059 b!5335054)))

(assert (=> bs!1237300 (= (= lt!2175753 lt!2175749) (= lambda!272963 lambda!272960))))

(declare-fun bs!1237301 () Bool)

(assert (= bs!1237301 (and b!5335059 b!5335057)))

(assert (=> bs!1237301 (= (= lt!2175753 lt!2175751) (= lambda!272963 lambda!272962))))

(assert (=> b!5335059 true))

(declare-fun d!1712740 () Bool)

(declare-fun e!3313301 () Bool)

(assert (=> d!1712740 e!3313301))

(declare-fun res!2262923 () Bool)

(assert (=> d!1712740 (=> (not res!2262923) (not e!3313301))))

(assert (=> d!1712740 (= res!2262923 (>= lt!2175753 0))))

(declare-fun e!3313302 () Int)

(assert (=> d!1712740 (= lt!2175753 e!3313302)))

(declare-fun c!928058 () Bool)

(assert (=> d!1712740 (= c!928058 ((_ is Cons!61192) zl!343))))

(assert (=> d!1712740 (= (zipperDepth!114 zl!343) lt!2175753)))

(assert (=> b!5335057 (= e!3313302 lt!2175751)))

(assert (=> b!5335057 (= lt!2175751 (maxBigInt!0 (contextDepth!64 (h!67640 zl!343)) (zipperDepth!114 (t!374533 zl!343))))))

(declare-fun lt!2175752 () Unit!153538)

(assert (=> b!5335057 (= lt!2175752 (lemmaForallContextDepthBiggerThanTransitive!58 (t!374533 zl!343) lt!2175751 (zipperDepth!114 (t!374533 zl!343)) lambda!272961))))

(assert (=> b!5335057 (forall!14425 (t!374533 zl!343) lambda!272962)))

(declare-fun lt!2175750 () Unit!153538)

(assert (=> b!5335057 (= lt!2175750 lt!2175752)))

(declare-fun b!5335058 () Bool)

(assert (=> b!5335058 (= e!3313302 0)))

(assert (=> b!5335059 (= e!3313301 (forall!14425 zl!343 lambda!272963))))

(assert (= (and d!1712740 c!928058) b!5335057))

(assert (= (and d!1712740 (not c!928058)) b!5335058))

(assert (= (and d!1712740 res!2262923) b!5335059))

(declare-fun m!6368134 () Bool)

(assert (=> b!5335057 m!6368134))

(declare-fun m!6368136 () Bool)

(assert (=> b!5335057 m!6368136))

(declare-fun m!6368138 () Bool)

(assert (=> b!5335057 m!6368138))

(assert (=> b!5335057 m!6368134))

(assert (=> b!5335057 m!6368138))

(declare-fun m!6368140 () Bool)

(assert (=> b!5335057 m!6368140))

(assert (=> b!5335057 m!6368138))

(declare-fun m!6368142 () Bool)

(assert (=> b!5335057 m!6368142))

(declare-fun m!6368144 () Bool)

(assert (=> b!5335059 m!6368144))

(assert (=> b!5334084 d!1712740))

(declare-fun d!1712742 () Bool)

(declare-fun e!3313305 () Bool)

(assert (=> d!1712742 e!3313305))

(declare-fun res!2262926 () Bool)

(assert (=> d!1712742 (=> (not res!2262926) (not e!3313305))))

(declare-fun lt!2175756 () List!61316)

(declare-fun noDuplicate!1313 (List!61316) Bool)

(assert (=> d!1712742 (= res!2262926 (noDuplicate!1313 lt!2175756))))

(declare-fun choose!39965 ((InoxSet Context!8778)) List!61316)

(assert (=> d!1712742 (= lt!2175756 (choose!39965 z!1189))))

(assert (=> d!1712742 (= (toList!8789 z!1189) lt!2175756)))

(declare-fun b!5335062 () Bool)

(declare-fun content!10915 (List!61316) (InoxSet Context!8778))

(assert (=> b!5335062 (= e!3313305 (= (content!10915 lt!2175756) z!1189))))

(assert (= (and d!1712742 res!2262926) b!5335062))

(declare-fun m!6368146 () Bool)

(assert (=> d!1712742 m!6368146))

(declare-fun m!6368148 () Bool)

(assert (=> d!1712742 m!6368148))

(declare-fun m!6368150 () Bool)

(assert (=> b!5335062 m!6368150))

(assert (=> b!5334085 d!1712742))

(declare-fun b!5335063 () Bool)

(declare-fun e!3313307 () (InoxSet Context!8778))

(declare-fun call!381341 () (InoxSet Context!8778))

(assert (=> b!5335063 (= e!3313307 call!381341)))

(declare-fun call!381344 () List!61314)

(declare-fun c!928062 () Bool)

(declare-fun bm!381336 () Bool)

(declare-fun c!928063 () Bool)

(assert (=> bm!381336 (= call!381344 ($colon$colon!1408 (exprs!4889 (Context!8779 lt!2175562)) (ite (or c!928063 c!928062) (regTwo!30522 (regOne!30522 (regOne!30522 r!7292))) (regOne!30522 (regOne!30522 r!7292)))))))

(declare-fun b!5335064 () Bool)

(declare-fun e!3313310 () Bool)

(assert (=> b!5335064 (= c!928063 e!3313310)))

(declare-fun res!2262927 () Bool)

(assert (=> b!5335064 (=> (not res!2262927) (not e!3313310))))

(assert (=> b!5335064 (= res!2262927 ((_ is Concat!23850) (regOne!30522 (regOne!30522 r!7292))))))

(declare-fun e!3313311 () (InoxSet Context!8778))

(declare-fun e!3313306 () (InoxSet Context!8778))

(assert (=> b!5335064 (= e!3313311 e!3313306)))

(declare-fun b!5335066 () Bool)

(declare-fun e!3313308 () (InoxSet Context!8778))

(assert (=> b!5335066 (= e!3313308 call!381341)))

(declare-fun b!5335067 () Bool)

(declare-fun call!381346 () (InoxSet Context!8778))

(declare-fun call!381343 () (InoxSet Context!8778))

(assert (=> b!5335067 (= e!3313306 ((_ map or) call!381346 call!381343))))

(declare-fun bm!381337 () Bool)

(assert (=> bm!381337 (= call!381341 call!381343)))

(declare-fun b!5335068 () Bool)

(declare-fun call!381342 () (InoxSet Context!8778))

(assert (=> b!5335068 (= e!3313311 ((_ map or) call!381346 call!381342))))

(declare-fun b!5335069 () Bool)

(assert (=> b!5335069 (= e!3313306 e!3313307)))

(assert (=> b!5335069 (= c!928062 ((_ is Concat!23850) (regOne!30522 (regOne!30522 r!7292))))))

(declare-fun call!381345 () List!61314)

(declare-fun bm!381338 () Bool)

(declare-fun c!928060 () Bool)

(assert (=> bm!381338 (= call!381342 (derivationStepZipperDown!453 (ite c!928060 (regTwo!30523 (regOne!30522 (regOne!30522 r!7292))) (ite c!928063 (regTwo!30522 (regOne!30522 (regOne!30522 r!7292))) (ite c!928062 (regOne!30522 (regOne!30522 (regOne!30522 r!7292))) (reg!15334 (regOne!30522 (regOne!30522 r!7292)))))) (ite (or c!928060 c!928063) (Context!8779 lt!2175562) (Context!8779 call!381345)) (h!67639 s!2326)))))

(declare-fun bm!381339 () Bool)

(assert (=> bm!381339 (= call!381345 call!381344)))

(declare-fun b!5335070 () Bool)

(declare-fun e!3313309 () (InoxSet Context!8778))

(assert (=> b!5335070 (= e!3313309 e!3313311)))

(assert (=> b!5335070 (= c!928060 ((_ is Union!15005) (regOne!30522 (regOne!30522 r!7292))))))

(declare-fun bm!381340 () Bool)

(assert (=> bm!381340 (= call!381346 (derivationStepZipperDown!453 (ite c!928060 (regOne!30523 (regOne!30522 (regOne!30522 r!7292))) (regOne!30522 (regOne!30522 (regOne!30522 r!7292)))) (ite c!928060 (Context!8779 lt!2175562) (Context!8779 call!381344)) (h!67639 s!2326)))))

(declare-fun b!5335071 () Bool)

(assert (=> b!5335071 (= e!3313309 (store ((as const (Array Context!8778 Bool)) false) (Context!8779 lt!2175562) true))))

(declare-fun b!5335072 () Bool)

(declare-fun c!928059 () Bool)

(assert (=> b!5335072 (= c!928059 ((_ is Star!15005) (regOne!30522 (regOne!30522 r!7292))))))

(assert (=> b!5335072 (= e!3313307 e!3313308)))

(declare-fun b!5335073 () Bool)

(assert (=> b!5335073 (= e!3313310 (nullable!5174 (regOne!30522 (regOne!30522 (regOne!30522 r!7292)))))))

(declare-fun bm!381341 () Bool)

(assert (=> bm!381341 (= call!381343 call!381342)))

(declare-fun d!1712744 () Bool)

(declare-fun c!928061 () Bool)

(assert (=> d!1712744 (= c!928061 (and ((_ is ElementMatch!15005) (regOne!30522 (regOne!30522 r!7292))) (= (c!927759 (regOne!30522 (regOne!30522 r!7292))) (h!67639 s!2326))))))

(assert (=> d!1712744 (= (derivationStepZipperDown!453 (regOne!30522 (regOne!30522 r!7292)) (Context!8779 lt!2175562) (h!67639 s!2326)) e!3313309)))

(declare-fun b!5335065 () Bool)

(assert (=> b!5335065 (= e!3313308 ((as const (Array Context!8778 Bool)) false))))

(assert (= (and d!1712744 c!928061) b!5335071))

(assert (= (and d!1712744 (not c!928061)) b!5335070))

(assert (= (and b!5335070 c!928060) b!5335068))

(assert (= (and b!5335070 (not c!928060)) b!5335064))

(assert (= (and b!5335064 res!2262927) b!5335073))

(assert (= (and b!5335064 c!928063) b!5335067))

(assert (= (and b!5335064 (not c!928063)) b!5335069))

(assert (= (and b!5335069 c!928062) b!5335063))

(assert (= (and b!5335069 (not c!928062)) b!5335072))

(assert (= (and b!5335072 c!928059) b!5335066))

(assert (= (and b!5335072 (not c!928059)) b!5335065))

(assert (= (or b!5335063 b!5335066) bm!381339))

(assert (= (or b!5335063 b!5335066) bm!381337))

(assert (= (or b!5335067 bm!381339) bm!381336))

(assert (= (or b!5335067 bm!381337) bm!381341))

(assert (= (or b!5335068 bm!381341) bm!381338))

(assert (= (or b!5335068 b!5335067) bm!381340))

(declare-fun m!6368152 () Bool)

(assert (=> bm!381340 m!6368152))

(declare-fun m!6368154 () Bool)

(assert (=> b!5335071 m!6368154))

(declare-fun m!6368156 () Bool)

(assert (=> b!5335073 m!6368156))

(declare-fun m!6368158 () Bool)

(assert (=> bm!381336 m!6368158))

(declare-fun m!6368160 () Bool)

(assert (=> bm!381338 m!6368160))

(assert (=> b!5334083 d!1712744))

(declare-fun d!1712746 () Bool)

(declare-fun res!2262932 () Bool)

(declare-fun e!3313316 () Bool)

(assert (=> d!1712746 (=> res!2262932 e!3313316)))

(assert (=> d!1712746 (= res!2262932 ((_ is Nil!61190) lt!2175550))))

(assert (=> d!1712746 (= (forall!14423 lt!2175550 lambda!272851) e!3313316)))

(declare-fun b!5335078 () Bool)

(declare-fun e!3313317 () Bool)

(assert (=> b!5335078 (= e!3313316 e!3313317)))

(declare-fun res!2262933 () Bool)

(assert (=> b!5335078 (=> (not res!2262933) (not e!3313317))))

(declare-fun dynLambda!24201 (Int Regex!15005) Bool)

(assert (=> b!5335078 (= res!2262933 (dynLambda!24201 lambda!272851 (h!67638 lt!2175550)))))

(declare-fun b!5335079 () Bool)

(assert (=> b!5335079 (= e!3313317 (forall!14423 (t!374531 lt!2175550) lambda!272851))))

(assert (= (and d!1712746 (not res!2262932)) b!5335078))

(assert (= (and b!5335078 res!2262933) b!5335079))

(declare-fun b_lambda!205133 () Bool)

(assert (=> (not b_lambda!205133) (not b!5335078)))

(declare-fun m!6368162 () Bool)

(assert (=> b!5335078 m!6368162))

(declare-fun m!6368164 () Bool)

(assert (=> b!5335079 m!6368164))

(assert (=> b!5334103 d!1712746))

(declare-fun b!5335084 () Bool)

(declare-fun e!3313320 () Bool)

(declare-fun tp!1484168 () Bool)

(declare-fun tp!1484169 () Bool)

(assert (=> b!5335084 (= e!3313320 (and tp!1484168 tp!1484169))))

(assert (=> b!5334091 (= tp!1484101 e!3313320)))

(assert (= (and b!5334091 ((_ is Cons!61190) (exprs!4889 (h!67640 zl!343)))) b!5335084))

(declare-fun condSetEmpty!34405 () Bool)

(assert (=> setNonEmpty!34399 (= condSetEmpty!34405 (= setRest!34399 ((as const (Array Context!8778 Bool)) false)))))

(declare-fun setRes!34405 () Bool)

(assert (=> setNonEmpty!34399 (= tp!1484098 setRes!34405)))

(declare-fun setIsEmpty!34405 () Bool)

(assert (=> setIsEmpty!34405 setRes!34405))

(declare-fun e!3313323 () Bool)

(declare-fun tp!1484174 () Bool)

(declare-fun setElem!34405 () Context!8778)

(declare-fun setNonEmpty!34405 () Bool)

(assert (=> setNonEmpty!34405 (= setRes!34405 (and tp!1484174 (inv!80759 setElem!34405) e!3313323))))

(declare-fun setRest!34405 () (InoxSet Context!8778))

(assert (=> setNonEmpty!34405 (= setRest!34399 ((_ map or) (store ((as const (Array Context!8778 Bool)) false) setElem!34405 true) setRest!34405))))

(declare-fun b!5335089 () Bool)

(declare-fun tp!1484175 () Bool)

(assert (=> b!5335089 (= e!3313323 tp!1484175)))

(assert (= (and setNonEmpty!34399 condSetEmpty!34405) setIsEmpty!34405))

(assert (= (and setNonEmpty!34399 (not condSetEmpty!34405)) setNonEmpty!34405))

(assert (= setNonEmpty!34405 b!5335089))

(declare-fun m!6368166 () Bool)

(assert (=> setNonEmpty!34405 m!6368166))

(declare-fun b!5335090 () Bool)

(declare-fun e!3313324 () Bool)

(declare-fun tp!1484176 () Bool)

(declare-fun tp!1484177 () Bool)

(assert (=> b!5335090 (= e!3313324 (and tp!1484176 tp!1484177))))

(assert (=> b!5334111 (= tp!1484100 e!3313324)))

(assert (= (and b!5334111 ((_ is Cons!61190) (exprs!4889 setElem!34399))) b!5335090))

(declare-fun b!5335098 () Bool)

(declare-fun e!3313330 () Bool)

(declare-fun tp!1484182 () Bool)

(assert (=> b!5335098 (= e!3313330 tp!1484182)))

(declare-fun tp!1484183 () Bool)

(declare-fun e!3313329 () Bool)

(declare-fun b!5335097 () Bool)

(assert (=> b!5335097 (= e!3313329 (and (inv!80759 (h!67640 (t!374533 zl!343))) e!3313330 tp!1484183))))

(assert (=> b!5334116 (= tp!1484097 e!3313329)))

(assert (= b!5335097 b!5335098))

(assert (= (and b!5334116 ((_ is Cons!61192) (t!374533 zl!343))) b!5335097))

(declare-fun m!6368168 () Bool)

(assert (=> b!5335097 m!6368168))

(declare-fun b!5335112 () Bool)

(declare-fun e!3313333 () Bool)

(declare-fun tp!1484194 () Bool)

(declare-fun tp!1484195 () Bool)

(assert (=> b!5335112 (= e!3313333 (and tp!1484194 tp!1484195))))

(declare-fun b!5335110 () Bool)

(declare-fun tp!1484196 () Bool)

(declare-fun tp!1484197 () Bool)

(assert (=> b!5335110 (= e!3313333 (and tp!1484196 tp!1484197))))

(assert (=> b!5334105 (= tp!1484099 e!3313333)))

(declare-fun b!5335109 () Bool)

(assert (=> b!5335109 (= e!3313333 tp_is_empty!39263)))

(declare-fun b!5335111 () Bool)

(declare-fun tp!1484198 () Bool)

(assert (=> b!5335111 (= e!3313333 tp!1484198)))

(assert (= (and b!5334105 ((_ is ElementMatch!15005) (regOne!30522 r!7292))) b!5335109))

(assert (= (and b!5334105 ((_ is Concat!23850) (regOne!30522 r!7292))) b!5335110))

(assert (= (and b!5334105 ((_ is Star!15005) (regOne!30522 r!7292))) b!5335111))

(assert (= (and b!5334105 ((_ is Union!15005) (regOne!30522 r!7292))) b!5335112))

(declare-fun b!5335116 () Bool)

(declare-fun e!3313334 () Bool)

(declare-fun tp!1484199 () Bool)

(declare-fun tp!1484200 () Bool)

(assert (=> b!5335116 (= e!3313334 (and tp!1484199 tp!1484200))))

(declare-fun b!5335114 () Bool)

(declare-fun tp!1484201 () Bool)

(declare-fun tp!1484202 () Bool)

(assert (=> b!5335114 (= e!3313334 (and tp!1484201 tp!1484202))))

(assert (=> b!5334105 (= tp!1484103 e!3313334)))

(declare-fun b!5335113 () Bool)

(assert (=> b!5335113 (= e!3313334 tp_is_empty!39263)))

(declare-fun b!5335115 () Bool)

(declare-fun tp!1484203 () Bool)

(assert (=> b!5335115 (= e!3313334 tp!1484203)))

(assert (= (and b!5334105 ((_ is ElementMatch!15005) (regTwo!30522 r!7292))) b!5335113))

(assert (= (and b!5334105 ((_ is Concat!23850) (regTwo!30522 r!7292))) b!5335114))

(assert (= (and b!5334105 ((_ is Star!15005) (regTwo!30522 r!7292))) b!5335115))

(assert (= (and b!5334105 ((_ is Union!15005) (regTwo!30522 r!7292))) b!5335116))

(declare-fun b!5335120 () Bool)

(declare-fun e!3313335 () Bool)

(declare-fun tp!1484204 () Bool)

(declare-fun tp!1484205 () Bool)

(assert (=> b!5335120 (= e!3313335 (and tp!1484204 tp!1484205))))

(declare-fun b!5335118 () Bool)

(declare-fun tp!1484206 () Bool)

(declare-fun tp!1484207 () Bool)

(assert (=> b!5335118 (= e!3313335 (and tp!1484206 tp!1484207))))

(assert (=> b!5334099 (= tp!1484105 e!3313335)))

(declare-fun b!5335117 () Bool)

(assert (=> b!5335117 (= e!3313335 tp_is_empty!39263)))

(declare-fun b!5335119 () Bool)

(declare-fun tp!1484208 () Bool)

(assert (=> b!5335119 (= e!3313335 tp!1484208)))

(assert (= (and b!5334099 ((_ is ElementMatch!15005) (reg!15334 r!7292))) b!5335117))

(assert (= (and b!5334099 ((_ is Concat!23850) (reg!15334 r!7292))) b!5335118))

(assert (= (and b!5334099 ((_ is Star!15005) (reg!15334 r!7292))) b!5335119))

(assert (= (and b!5334099 ((_ is Union!15005) (reg!15334 r!7292))) b!5335120))

(declare-fun b!5335125 () Bool)

(declare-fun e!3313338 () Bool)

(declare-fun tp!1484211 () Bool)

(assert (=> b!5335125 (= e!3313338 (and tp_is_empty!39263 tp!1484211))))

(assert (=> b!5334107 (= tp!1484096 e!3313338)))

(assert (= (and b!5334107 ((_ is Cons!61191) (t!374532 s!2326))) b!5335125))

(declare-fun b!5335129 () Bool)

(declare-fun e!3313339 () Bool)

(declare-fun tp!1484212 () Bool)

(declare-fun tp!1484213 () Bool)

(assert (=> b!5335129 (= e!3313339 (and tp!1484212 tp!1484213))))

(declare-fun b!5335127 () Bool)

(declare-fun tp!1484214 () Bool)

(declare-fun tp!1484215 () Bool)

(assert (=> b!5335127 (= e!3313339 (and tp!1484214 tp!1484215))))

(assert (=> b!5334108 (= tp!1484104 e!3313339)))

(declare-fun b!5335126 () Bool)

(assert (=> b!5335126 (= e!3313339 tp_is_empty!39263)))

(declare-fun b!5335128 () Bool)

(declare-fun tp!1484216 () Bool)

(assert (=> b!5335128 (= e!3313339 tp!1484216)))

(assert (= (and b!5334108 ((_ is ElementMatch!15005) (regOne!30523 r!7292))) b!5335126))

(assert (= (and b!5334108 ((_ is Concat!23850) (regOne!30523 r!7292))) b!5335127))

(assert (= (and b!5334108 ((_ is Star!15005) (regOne!30523 r!7292))) b!5335128))

(assert (= (and b!5334108 ((_ is Union!15005) (regOne!30523 r!7292))) b!5335129))

(declare-fun b!5335133 () Bool)

(declare-fun e!3313340 () Bool)

(declare-fun tp!1484217 () Bool)

(declare-fun tp!1484218 () Bool)

(assert (=> b!5335133 (= e!3313340 (and tp!1484217 tp!1484218))))

(declare-fun b!5335131 () Bool)

(declare-fun tp!1484219 () Bool)

(declare-fun tp!1484220 () Bool)

(assert (=> b!5335131 (= e!3313340 (and tp!1484219 tp!1484220))))

(assert (=> b!5334108 (= tp!1484102 e!3313340)))

(declare-fun b!5335130 () Bool)

(assert (=> b!5335130 (= e!3313340 tp_is_empty!39263)))

(declare-fun b!5335132 () Bool)

(declare-fun tp!1484221 () Bool)

(assert (=> b!5335132 (= e!3313340 tp!1484221)))

(assert (= (and b!5334108 ((_ is ElementMatch!15005) (regTwo!30523 r!7292))) b!5335130))

(assert (= (and b!5334108 ((_ is Concat!23850) (regTwo!30523 r!7292))) b!5335131))

(assert (= (and b!5334108 ((_ is Star!15005) (regTwo!30523 r!7292))) b!5335132))

(assert (= (and b!5334108 ((_ is Union!15005) (regTwo!30523 r!7292))) b!5335133))

(declare-fun b_lambda!205135 () Bool)

(assert (= b_lambda!205129 (or b!5334106 b_lambda!205135)))

(declare-fun bs!1237302 () Bool)

(declare-fun d!1712748 () Bool)

(assert (= bs!1237302 (and d!1712748 b!5334106)))

(assert (=> bs!1237302 (= (dynLambda!24200 lambda!272846 lt!2175565) (derivationStepZipperUp!377 lt!2175565 (h!67639 s!2326)))))

(assert (=> bs!1237302 m!6367186))

(assert (=> d!1712712 d!1712748))

(declare-fun b_lambda!205137 () Bool)

(assert (= b_lambda!205133 (or b!5334103 b_lambda!205137)))

(declare-fun bs!1237303 () Bool)

(declare-fun d!1712750 () Bool)

(assert (= bs!1237303 (and d!1712750 b!5334103)))

(assert (=> bs!1237303 (= (dynLambda!24201 lambda!272851 (h!67638 lt!2175550)) (validRegex!6741 (h!67638 lt!2175550)))))

(declare-fun m!6368170 () Bool)

(assert (=> bs!1237303 m!6368170))

(assert (=> b!5335078 d!1712750))

(declare-fun b_lambda!205139 () Bool)

(assert (= b_lambda!205131 (or b!5334106 b_lambda!205139)))

(declare-fun bs!1237304 () Bool)

(declare-fun d!1712752 () Bool)

(assert (= bs!1237304 (and d!1712752 b!5334106)))

(assert (=> bs!1237304 (= (dynLambda!24200 lambda!272846 (h!67640 zl!343)) (derivationStepZipperUp!377 (h!67640 zl!343) (h!67639 s!2326)))))

(assert (=> bs!1237304 m!6367164))

(assert (=> d!1712726 d!1712752))

(check-sat (not b!5334939) (not d!1712708) (not bs!1237303) (not b!5334902) (not b!5335042) (not b!5335084) (not b_lambda!205137) tp_is_empty!39263 (not b!5334930) (not d!1712650) (not b!5334406) (not bm!381302) (not d!1712682) (not b!5334788) (not b!5335120) (not b!5334409) (not b!5334938) (not b!5334894) (not d!1712648) (not b!5334806) (not b!5334845) (not bm!381307) (not b!5335114) (not d!1712702) (not d!1712660) (not b!5334820) (not b!5334854) (not d!1712686) (not b!5334870) (not b!5334817) (not b!5334963) (not b!5334936) (not d!1712654) (not b!5334810) (not b!5334408) (not bm!381306) (not b!5335079) (not b!5334789) (not d!1712632) (not b!5334407) (not b!5334813) (not d!1712642) (not d!1712716) (not b!5334838) (not b!5334836) (not b!5334822) (not b!5334834) (not d!1712528) (not b!5335098) (not b!5335059) (not b!5334490) (not b!5334956) (not setNonEmpty!34405) (not bs!1237302) (not d!1712638) (not b!5334496) (not b_lambda!205139) (not d!1712670) (not b!5334807) (not b!5335090) (not d!1712712) (not b!5334932) (not bm!381308) (not bm!381300) (not b!5334908) (not d!1712714) (not bm!381334) (not d!1712634) (not b!5335111) (not b!5334855) (not d!1712536) (not b!5335129) (not b!5334944) (not b!5335131) (not b!5335054) (not bs!1237304) (not bm!381338) (not b!5334835) (not b!5334795) (not b!5334828) (not b!5334964) (not bm!381293) (not b!5335115) (not b!5334787) (not b!5335010) (not bm!381340) (not b!5335073) (not b!5334815) (not b!5335112) (not b!5334873) (not b!5334648) (not d!1712652) (not b!5335127) (not b!5334935) (not b!5335097) (not b!5334756) (not bm!381298) (not d!1712718) (not b!5334909) (not b!5334794) (not b!5335057) (not b!5334814) (not bm!381336) (not d!1712640) (not b!5334832) (not b!5334867) (not d!1712646) (not b!5334853) (not b!5334841) (not b!5334421) (not b!5335110) (not b!5334848) (not d!1712722) (not d!1712688) (not d!1712742) (not b!5334896) (not b!5334842) (not b!5335132) (not b!5334864) (not b!5334489) (not d!1712656) (not b!5334742) (not bm!381301) (not b!5334862) (not bm!381305) (not b!5334747) (not d!1712706) (not bm!381333) (not d!1712690) (not bm!381292) (not b!5334492) (not b!5334829) (not b!5335118) (not b!5334903) (not b!5334804) (not d!1712700) (not b!5334969) (not b!5334869) (not b!5334839) (not d!1712538) (not d!1712664) (not d!1712692) (not d!1712644) (not b!5334968) (not d!1712694) (not b!5334420) (not bm!381323) (not b!5335052) (not b!5334974) (not b!5334957) (not b!5334748) (not bm!381299) (not b!5334874) (not b!5334649) (not b!5334823) (not d!1712684) (not d!1712698) (not b!5334890) (not b!5334816) (not b!5334933) (not d!1712580) (not bm!381321) (not b!5335125) (not d!1712704) (not b!5335119) (not b!5334906) (not bm!381325) (not d!1712540) (not d!1712562) (not b!5334880) (not d!1712658) (not b!5334849) (not bm!381297) (not b!5334741) (not b!5334843) (not b!5334495) (not d!1712678) (not b!5334840) (not b!5334879) (not b!5334901) (not b!5334749) (not b!5334812) (not b!5334973) (not b!5334745) (not b!5335031) (not b!5335062) (not b!5334847) (not b!5335089) (not b_lambda!205135) (not d!1712680) (not bm!381296) (not d!1712628) (not d!1712636) (not b!5334755) (not d!1712662) (not b!5334805) (not b!5334871) (not d!1712666) (not b!5334897) (not b!5334900) (not d!1712726) (not b!5334786) (not d!1712578) (not b!5335044) (not b!5335128) (not b!5335133) (not b!5334865) (not b!5334792) (not d!1712534) (not b!5334494) (not b!5335116) (not b!5334860) (not b!5334891) (not b!5334898))
(check-sat)
