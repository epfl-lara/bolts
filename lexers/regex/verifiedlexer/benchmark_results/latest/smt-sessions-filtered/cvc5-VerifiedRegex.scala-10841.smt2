; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!558548 () Bool)

(assert start!558548)

(declare-fun b!5292588 () Bool)

(assert (=> b!5292588 true))

(assert (=> b!5292588 true))

(declare-fun lambda!268099 () Int)

(declare-fun lambda!268098 () Int)

(assert (=> b!5292588 (not (= lambda!268099 lambda!268098))))

(assert (=> b!5292588 true))

(assert (=> b!5292588 true))

(declare-fun b!5292611 () Bool)

(assert (=> b!5292611 true))

(declare-fun bs!1227511 () Bool)

(declare-fun b!5292582 () Bool)

(assert (= bs!1227511 (and b!5292582 b!5292588)))

(declare-datatypes ((C!30126 0))(
  ( (C!30127 (val!24765 Int)) )
))
(declare-datatypes ((Regex!14928 0))(
  ( (ElementMatch!14928 (c!918186 C!30126)) (Concat!23773 (regOne!30368 Regex!14928) (regTwo!30368 Regex!14928)) (EmptyExpr!14928) (Star!14928 (reg!15257 Regex!14928)) (EmptyLang!14928) (Union!14928 (regOne!30369 Regex!14928) (regTwo!30369 Regex!14928)) )
))
(declare-fun r!7292 () Regex!14928)

(declare-fun lt!2162731 () Regex!14928)

(declare-fun lambda!268101 () Int)

(assert (=> bs!1227511 (= (and (= (regOne!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162731 (regTwo!30368 r!7292))) (= lambda!268101 lambda!268098))))

(assert (=> bs!1227511 (not (= lambda!268101 lambda!268099))))

(assert (=> b!5292582 true))

(assert (=> b!5292582 true))

(assert (=> b!5292582 true))

(declare-fun lambda!268102 () Int)

(assert (=> bs!1227511 (not (= lambda!268102 lambda!268098))))

(assert (=> bs!1227511 (= (and (= (regOne!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162731 (regTwo!30368 r!7292))) (= lambda!268102 lambda!268099))))

(assert (=> b!5292582 (not (= lambda!268102 lambda!268101))))

(assert (=> b!5292582 true))

(assert (=> b!5292582 true))

(assert (=> b!5292582 true))

(declare-fun lt!2162694 () Regex!14928)

(declare-fun lambda!268103 () Int)

(assert (=> bs!1227511 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162694 (regTwo!30368 r!7292))) (= lambda!268103 lambda!268098))))

(assert (=> bs!1227511 (not (= lambda!268103 lambda!268099))))

(assert (=> b!5292582 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 (regOne!30368 r!7292))) (= lt!2162694 lt!2162731)) (= lambda!268103 lambda!268101))))

(assert (=> b!5292582 (not (= lambda!268103 lambda!268102))))

(assert (=> b!5292582 true))

(assert (=> b!5292582 true))

(assert (=> b!5292582 true))

(declare-fun lambda!268104 () Int)

(assert (=> b!5292582 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 (regOne!30368 r!7292))) (= lt!2162694 lt!2162731)) (= lambda!268104 lambda!268102))))

(assert (=> bs!1227511 (not (= lambda!268104 lambda!268098))))

(assert (=> bs!1227511 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162694 (regTwo!30368 r!7292))) (= lambda!268104 lambda!268099))))

(assert (=> b!5292582 (not (= lambda!268104 lambda!268101))))

(assert (=> b!5292582 (not (= lambda!268104 lambda!268103))))

(assert (=> b!5292582 true))

(assert (=> b!5292582 true))

(assert (=> b!5292582 true))

(declare-fun b!5292578 () Bool)

(declare-fun e!3290115 () Bool)

(declare-fun e!3290121 () Bool)

(assert (=> b!5292578 (= e!3290115 (not e!3290121))))

(declare-fun res!2244734 () Bool)

(assert (=> b!5292578 (=> res!2244734 e!3290121)))

(declare-datatypes ((List!61083 0))(
  ( (Nil!60959) (Cons!60959 (h!67407 Regex!14928) (t!374288 List!61083)) )
))
(declare-datatypes ((Context!8624 0))(
  ( (Context!8625 (exprs!4812 List!61083)) )
))
(declare-datatypes ((List!61084 0))(
  ( (Nil!60960) (Cons!60960 (h!67408 Context!8624) (t!374289 List!61084)) )
))
(declare-fun zl!343 () List!61084)

(assert (=> b!5292578 (= res!2244734 (not (is-Cons!60960 zl!343)))))

(declare-fun lt!2162708 () Bool)

(declare-datatypes ((List!61085 0))(
  ( (Nil!60961) (Cons!60961 (h!67409 C!30126) (t!374290 List!61085)) )
))
(declare-fun s!2326 () List!61085)

(declare-fun matchRSpec!2031 (Regex!14928 List!61085) Bool)

(assert (=> b!5292578 (= lt!2162708 (matchRSpec!2031 r!7292 s!2326))))

(declare-fun matchR!7113 (Regex!14928 List!61085) Bool)

(assert (=> b!5292578 (= lt!2162708 (matchR!7113 r!7292 s!2326))))

(declare-datatypes ((Unit!153230 0))(
  ( (Unit!153231) )
))
(declare-fun lt!2162707 () Unit!153230)

(declare-fun mainMatchTheorem!2031 (Regex!14928 List!61085) Unit!153230)

(assert (=> b!5292578 (= lt!2162707 (mainMatchTheorem!2031 r!7292 s!2326))))

(declare-fun setIsEmpty!33974 () Bool)

(declare-fun setRes!33974 () Bool)

(assert (=> setIsEmpty!33974 setRes!33974))

(declare-fun b!5292579 () Bool)

(declare-fun e!3290122 () Bool)

(declare-fun lt!2162739 () (Set Context!8624))

(declare-fun matchZipper!1172 ((Set Context!8624) List!61085) Bool)

(assert (=> b!5292579 (= e!3290122 (matchZipper!1172 lt!2162739 (t!374290 s!2326)))))

(declare-fun b!5292580 () Bool)

(declare-fun e!3290124 () Bool)

(declare-fun tp!1477185 () Bool)

(assert (=> b!5292580 (= e!3290124 tp!1477185)))

(declare-fun b!5292581 () Bool)

(declare-fun res!2244723 () Bool)

(assert (=> b!5292581 (=> res!2244723 e!3290121)))

(assert (=> b!5292581 (= res!2244723 (or (is-EmptyExpr!14928 r!7292) (is-EmptyLang!14928 r!7292) (is-ElementMatch!14928 r!7292) (is-Union!14928 r!7292) (not (is-Concat!23773 r!7292))))))

(declare-fun e!3290114 () Bool)

(declare-fun e!3290119 () Bool)

(assert (=> b!5292582 (= e!3290114 e!3290119)))

(declare-fun res!2244742 () Bool)

(assert (=> b!5292582 (=> res!2244742 e!3290119)))

(declare-fun lt!2162709 () Bool)

(declare-fun lt!2162693 () Bool)

(declare-fun z!1189 () (Set Context!8624))

(assert (=> b!5292582 (= res!2244742 (not (= (matchZipper!1172 z!1189 s!2326) (or lt!2162693 lt!2162709))))))

(declare-fun Exists!2109 (Int) Bool)

(assert (=> b!5292582 (= (Exists!2109 lambda!268103) (Exists!2109 lambda!268104))))

(declare-fun lt!2162726 () Unit!153230)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!763 (Regex!14928 Regex!14928 List!61085) Unit!153230)

(assert (=> b!5292582 (= lt!2162726 (lemmaExistCutMatchRandMatchRSpecEquivalent!763 (regTwo!30368 (regOne!30368 r!7292)) lt!2162694 s!2326))))

(declare-datatypes ((tuple2!64254 0))(
  ( (tuple2!64255 (_1!35430 List!61085) (_2!35430 List!61085)) )
))
(declare-datatypes ((Option!15039 0))(
  ( (None!15038) (Some!15038 (v!51067 tuple2!64254)) )
))
(declare-fun isDefined!11742 (Option!15039) Bool)

(declare-fun findConcatSeparation!1453 (Regex!14928 Regex!14928 List!61085 List!61085 List!61085) Option!15039)

(assert (=> b!5292582 (= (isDefined!11742 (findConcatSeparation!1453 (regTwo!30368 (regOne!30368 r!7292)) lt!2162694 Nil!60961 s!2326 s!2326)) (Exists!2109 lambda!268103))))

(declare-fun lt!2162733 () Unit!153230)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1217 (Regex!14928 Regex!14928 List!61085) Unit!153230)

(assert (=> b!5292582 (= lt!2162733 (lemmaFindConcatSeparationEquivalentToExists!1217 (regTwo!30368 (regOne!30368 r!7292)) lt!2162694 s!2326))))

(declare-fun generalisedConcat!597 (List!61083) Regex!14928)

(assert (=> b!5292582 (= lt!2162694 (generalisedConcat!597 (t!374288 (exprs!4812 (h!67408 zl!343)))))))

(declare-fun lt!2162727 () Bool)

(assert (=> b!5292582 (= lt!2162727 (matchRSpec!2031 lt!2162731 s!2326))))

(declare-fun lt!2162713 () Unit!153230)

(assert (=> b!5292582 (= lt!2162713 (mainMatchTheorem!2031 lt!2162731 s!2326))))

(assert (=> b!5292582 (= (Exists!2109 lambda!268101) (Exists!2109 lambda!268102))))

(declare-fun lt!2162711 () Unit!153230)

(assert (=> b!5292582 (= lt!2162711 (lemmaExistCutMatchRandMatchRSpecEquivalent!763 (regOne!30368 (regOne!30368 r!7292)) lt!2162731 s!2326))))

(assert (=> b!5292582 (= (isDefined!11742 (findConcatSeparation!1453 (regOne!30368 (regOne!30368 r!7292)) lt!2162731 Nil!60961 s!2326 s!2326)) (Exists!2109 lambda!268101))))

(declare-fun lt!2162720 () Unit!153230)

(assert (=> b!5292582 (= lt!2162720 (lemmaFindConcatSeparationEquivalentToExists!1217 (regOne!30368 (regOne!30368 r!7292)) lt!2162731 s!2326))))

(declare-fun lt!2162702 () Bool)

(declare-fun lt!2162729 () Regex!14928)

(assert (=> b!5292582 (= lt!2162702 (matchRSpec!2031 lt!2162729 s!2326))))

(declare-fun lt!2162737 () Unit!153230)

(assert (=> b!5292582 (= lt!2162737 (mainMatchTheorem!2031 lt!2162729 s!2326))))

(assert (=> b!5292582 (= lt!2162727 lt!2162709)))

(declare-fun lt!2162724 () (Set Context!8624))

(assert (=> b!5292582 (= lt!2162709 (matchZipper!1172 lt!2162724 s!2326))))

(assert (=> b!5292582 (= lt!2162727 (matchR!7113 lt!2162731 s!2326))))

(declare-fun lt!2162715 () Context!8624)

(declare-fun lt!2162735 () Unit!153230)

(declare-fun theoremZipperRegexEquiv!338 ((Set Context!8624) List!61084 Regex!14928 List!61085) Unit!153230)

(assert (=> b!5292582 (= lt!2162735 (theoremZipperRegexEquiv!338 lt!2162724 (Cons!60960 lt!2162715 Nil!60960) lt!2162731 s!2326))))

(declare-fun lt!2162696 () List!61083)

(assert (=> b!5292582 (= lt!2162731 (generalisedConcat!597 lt!2162696))))

(assert (=> b!5292582 (= lt!2162702 lt!2162693)))

(declare-fun lt!2162722 () (Set Context!8624))

(assert (=> b!5292582 (= lt!2162693 (matchZipper!1172 lt!2162722 s!2326))))

(assert (=> b!5292582 (= lt!2162702 (matchR!7113 lt!2162729 s!2326))))

(declare-fun lt!2162714 () Unit!153230)

(declare-fun lt!2162710 () List!61084)

(assert (=> b!5292582 (= lt!2162714 (theoremZipperRegexEquiv!338 lt!2162722 lt!2162710 lt!2162729 s!2326))))

(declare-fun lt!2162712 () List!61083)

(assert (=> b!5292582 (= lt!2162729 (generalisedConcat!597 lt!2162712))))

(declare-fun b!5292583 () Bool)

(declare-fun e!3290120 () Bool)

(declare-fun e!3290116 () Bool)

(assert (=> b!5292583 (= e!3290120 e!3290116)))

(declare-fun res!2244741 () Bool)

(assert (=> b!5292583 (=> res!2244741 e!3290116)))

(declare-fun lt!2162732 () (Set Context!8624))

(declare-fun lt!2162698 () (Set Context!8624))

(assert (=> b!5292583 (= res!2244741 (not (= lt!2162732 lt!2162698)))))

(declare-fun lt!2162718 () (Set Context!8624))

(declare-fun lt!2162700 () (Set Context!8624))

(assert (=> b!5292583 (= lt!2162698 (set.union lt!2162718 lt!2162700))))

(declare-fun derivationStepZipperUp!300 (Context!8624 C!30126) (Set Context!8624))

(assert (=> b!5292583 (= lt!2162700 (derivationStepZipperUp!300 lt!2162715 (h!67409 s!2326)))))

(declare-fun lambda!268100 () Int)

(declare-fun lt!2162716 () Context!8624)

(declare-fun flatMap!655 ((Set Context!8624) Int) (Set Context!8624))

(assert (=> b!5292583 (= (flatMap!655 lt!2162722 lambda!268100) (derivationStepZipperUp!300 lt!2162716 (h!67409 s!2326)))))

(declare-fun lt!2162695 () Unit!153230)

(declare-fun lemmaFlatMapOnSingletonSet!187 ((Set Context!8624) Context!8624 Int) Unit!153230)

(assert (=> b!5292583 (= lt!2162695 (lemmaFlatMapOnSingletonSet!187 lt!2162722 lt!2162716 lambda!268100))))

(declare-fun lt!2162738 () (Set Context!8624))

(assert (=> b!5292583 (= lt!2162738 (derivationStepZipperUp!300 lt!2162716 (h!67409 s!2326)))))

(declare-fun derivationStepZipper!1171 ((Set Context!8624) C!30126) (Set Context!8624))

(assert (=> b!5292583 (= lt!2162732 (derivationStepZipper!1171 lt!2162722 (h!67409 s!2326)))))

(assert (=> b!5292583 (= lt!2162724 (set.insert lt!2162715 (as set.empty (Set Context!8624))))))

(assert (=> b!5292583 (= lt!2162722 (set.insert lt!2162716 (as set.empty (Set Context!8624))))))

(assert (=> b!5292583 (= lt!2162716 (Context!8625 lt!2162712))))

(assert (=> b!5292583 (= lt!2162712 (Cons!60959 (regOne!30368 (regOne!30368 r!7292)) lt!2162696))))

(declare-fun b!5292584 () Bool)

(declare-fun e!3290118 () Bool)

(declare-fun tp!1477190 () Bool)

(assert (=> b!5292584 (= e!3290118 tp!1477190)))

(declare-fun b!5292585 () Bool)

(declare-fun e!3290113 () Bool)

(assert (=> b!5292585 (= e!3290113 e!3290114)))

(declare-fun res!2244730 () Bool)

(assert (=> b!5292585 (=> res!2244730 e!3290114)))

(declare-fun zipperDepthTotal!89 (List!61084) Int)

(assert (=> b!5292585 (= res!2244730 (>= (zipperDepthTotal!89 lt!2162710) (zipperDepthTotal!89 zl!343)))))

(assert (=> b!5292585 (= lt!2162710 (Cons!60960 lt!2162716 Nil!60960))))

(declare-fun b!5292586 () Bool)

(declare-fun res!2244724 () Bool)

(assert (=> b!5292586 (=> res!2244724 e!3290121)))

(declare-fun generalisedUnion!857 (List!61083) Regex!14928)

(declare-fun unfocusZipperList!370 (List!61084) List!61083)

(assert (=> b!5292586 (= res!2244724 (not (= r!7292 (generalisedUnion!857 (unfocusZipperList!370 zl!343)))))))

(declare-fun b!5292587 () Bool)

(assert (=> b!5292587 (= e!3290116 e!3290113)))

(declare-fun res!2244737 () Bool)

(assert (=> b!5292587 (=> res!2244737 e!3290113)))

(declare-fun e!3290127 () Bool)

(assert (=> b!5292587 (= res!2244737 e!3290127)))

(declare-fun res!2244732 () Bool)

(assert (=> b!5292587 (=> (not res!2244732) (not e!3290127))))

(declare-fun lt!2162725 () Bool)

(assert (=> b!5292587 (= res!2244732 (not (= lt!2162725 (matchZipper!1172 lt!2162732 (t!374290 s!2326)))))))

(declare-fun e!3290111 () Bool)

(assert (=> b!5292587 (= (matchZipper!1172 lt!2162698 (t!374290 s!2326)) e!3290111)))

(declare-fun res!2244725 () Bool)

(assert (=> b!5292587 (=> res!2244725 e!3290111)))

(declare-fun lt!2162730 () Bool)

(assert (=> b!5292587 (= res!2244725 lt!2162730)))

(declare-fun lt!2162723 () Unit!153230)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!165 ((Set Context!8624) (Set Context!8624) List!61085) Unit!153230)

(assert (=> b!5292587 (= lt!2162723 (lemmaZipperConcatMatchesSameAsBothZippers!165 lt!2162718 lt!2162700 (t!374290 s!2326)))))

(assert (=> b!5292587 (= (flatMap!655 lt!2162724 lambda!268100) (derivationStepZipperUp!300 lt!2162715 (h!67409 s!2326)))))

(declare-fun lt!2162721 () Unit!153230)

(assert (=> b!5292587 (= lt!2162721 (lemmaFlatMapOnSingletonSet!187 lt!2162724 lt!2162715 lambda!268100))))

(declare-fun e!3290112 () Bool)

(assert (=> b!5292588 (= e!3290121 e!3290112)))

(declare-fun res!2244722 () Bool)

(assert (=> b!5292588 (=> res!2244722 e!3290112)))

(declare-fun lt!2162736 () Bool)

(assert (=> b!5292588 (= res!2244722 (or (not (= lt!2162708 lt!2162736)) (is-Nil!60961 s!2326)))))

(assert (=> b!5292588 (= (Exists!2109 lambda!268098) (Exists!2109 lambda!268099))))

(declare-fun lt!2162706 () Unit!153230)

(assert (=> b!5292588 (= lt!2162706 (lemmaExistCutMatchRandMatchRSpecEquivalent!763 (regOne!30368 r!7292) (regTwo!30368 r!7292) s!2326))))

(assert (=> b!5292588 (= lt!2162736 (Exists!2109 lambda!268098))))

(assert (=> b!5292588 (= lt!2162736 (isDefined!11742 (findConcatSeparation!1453 (regOne!30368 r!7292) (regTwo!30368 r!7292) Nil!60961 s!2326 s!2326)))))

(declare-fun lt!2162701 () Unit!153230)

(assert (=> b!5292588 (= lt!2162701 (lemmaFindConcatSeparationEquivalentToExists!1217 (regOne!30368 r!7292) (regTwo!30368 r!7292) s!2326))))

(declare-fun b!5292589 () Bool)

(declare-fun res!2244746 () Bool)

(assert (=> b!5292589 (=> res!2244746 e!3290121)))

(assert (=> b!5292589 (= res!2244746 (not (= r!7292 (generalisedConcat!597 (exprs!4812 (h!67408 zl!343))))))))

(declare-fun b!5292590 () Bool)

(declare-fun e!3290117 () Unit!153230)

(declare-fun Unit!153232 () Unit!153230)

(assert (=> b!5292590 (= e!3290117 Unit!153232)))

(declare-fun lt!2162705 () (Set Context!8624))

(declare-fun lt!2162719 () (Set Context!8624))

(declare-fun lt!2162704 () Unit!153230)

(assert (=> b!5292590 (= lt!2162704 (lemmaZipperConcatMatchesSameAsBothZippers!165 lt!2162719 lt!2162705 (t!374290 s!2326)))))

(declare-fun res!2244745 () Bool)

(assert (=> b!5292590 (= res!2244745 (matchZipper!1172 lt!2162719 (t!374290 s!2326)))))

(declare-fun e!3290109 () Bool)

(assert (=> b!5292590 (=> res!2244745 e!3290109)))

(assert (=> b!5292590 (= (matchZipper!1172 (set.union lt!2162719 lt!2162705) (t!374290 s!2326)) e!3290109)))

(declare-fun b!5292591 () Bool)

(declare-fun res!2244736 () Bool)

(assert (=> b!5292591 (=> (not res!2244736) (not e!3290115))))

(declare-fun toList!8712 ((Set Context!8624)) List!61084)

(assert (=> b!5292591 (= res!2244736 (= (toList!8712 z!1189) zl!343))))

(declare-fun b!5292592 () Bool)

(declare-fun res!2244729 () Bool)

(assert (=> b!5292592 (=> res!2244729 e!3290121)))

(assert (=> b!5292592 (= res!2244729 (not (is-Cons!60959 (exprs!4812 (h!67408 zl!343)))))))

(declare-fun b!5292593 () Bool)

(declare-fun e!3290107 () Bool)

(assert (=> b!5292593 (= e!3290107 e!3290120)))

(declare-fun res!2244726 () Bool)

(assert (=> b!5292593 (=> res!2244726 e!3290120)))

(declare-fun e!3290110 () Bool)

(assert (=> b!5292593 (= res!2244726 e!3290110)))

(declare-fun res!2244739 () Bool)

(assert (=> b!5292593 (=> (not res!2244739) (not e!3290110))))

(assert (=> b!5292593 (= res!2244739 (not (= lt!2162725 lt!2162730)))))

(assert (=> b!5292593 (= lt!2162725 (matchZipper!1172 lt!2162719 (t!374290 s!2326)))))

(declare-fun lt!2162699 () (Set Context!8624))

(assert (=> b!5292593 (= (matchZipper!1172 lt!2162699 (t!374290 s!2326)) e!3290122)))

(declare-fun res!2244735 () Bool)

(assert (=> b!5292593 (=> res!2244735 e!3290122)))

(assert (=> b!5292593 (= res!2244735 lt!2162730)))

(assert (=> b!5292593 (= lt!2162730 (matchZipper!1172 lt!2162718 (t!374290 s!2326)))))

(declare-fun lt!2162734 () Unit!153230)

(assert (=> b!5292593 (= lt!2162734 (lemmaZipperConcatMatchesSameAsBothZippers!165 lt!2162718 lt!2162739 (t!374290 s!2326)))))

(declare-fun b!5292594 () Bool)

(declare-fun res!2244748 () Bool)

(assert (=> b!5292594 (=> res!2244748 e!3290114)))

(declare-fun zipperDepth!45 (List!61084) Int)

(assert (=> b!5292594 (= res!2244748 (> (zipperDepth!45 lt!2162710) (zipperDepth!45 zl!343)))))

(declare-fun b!5292595 () Bool)

(declare-fun tp!1477189 () Bool)

(declare-fun tp!1477191 () Bool)

(assert (=> b!5292595 (= e!3290124 (and tp!1477189 tp!1477191))))

(declare-fun b!5292596 () Bool)

(declare-fun Unit!153233 () Unit!153230)

(assert (=> b!5292596 (= e!3290117 Unit!153233)))

(declare-fun b!5292597 () Bool)

(assert (=> b!5292597 (= e!3290111 (matchZipper!1172 lt!2162700 (t!374290 s!2326)))))

(declare-fun b!5292598 () Bool)

(declare-fun res!2244738 () Bool)

(assert (=> b!5292598 (=> res!2244738 e!3290112)))

(declare-fun isEmpty!32913 (List!61083) Bool)

(assert (=> b!5292598 (= res!2244738 (isEmpty!32913 (t!374288 (exprs!4812 (h!67408 zl!343)))))))

(declare-fun res!2244747 () Bool)

(assert (=> start!558548 (=> (not res!2244747) (not e!3290115))))

(declare-fun validRegex!6664 (Regex!14928) Bool)

(assert (=> start!558548 (= res!2244747 (validRegex!6664 r!7292))))

(assert (=> start!558548 e!3290115))

(assert (=> start!558548 e!3290124))

(declare-fun condSetEmpty!33974 () Bool)

(assert (=> start!558548 (= condSetEmpty!33974 (= z!1189 (as set.empty (Set Context!8624))))))

(assert (=> start!558548 setRes!33974))

(declare-fun e!3290108 () Bool)

(assert (=> start!558548 e!3290108))

(declare-fun e!3290125 () Bool)

(assert (=> start!558548 e!3290125))

(declare-fun b!5292599 () Bool)

(declare-fun lambda!268105 () Int)

(declare-fun forall!14336 (List!61083 Int) Bool)

(assert (=> b!5292599 (= e!3290119 (forall!14336 lt!2162712 lambda!268105))))

(declare-fun b!5292600 () Bool)

(assert (=> b!5292600 (= e!3290109 (matchZipper!1172 lt!2162705 (t!374290 s!2326)))))

(declare-fun b!5292601 () Bool)

(declare-fun res!2244727 () Bool)

(assert (=> b!5292601 (=> (not res!2244727) (not e!3290115))))

(declare-fun unfocusZipper!670 (List!61084) Regex!14928)

(assert (=> b!5292601 (= res!2244727 (= r!7292 (unfocusZipper!670 zl!343)))))

(declare-fun b!5292602 () Bool)

(declare-fun tp_is_empty!39109 () Bool)

(assert (=> b!5292602 (= e!3290124 tp_is_empty!39109)))

(declare-fun tp!1477186 () Bool)

(declare-fun e!3290126 () Bool)

(declare-fun setElem!33974 () Context!8624)

(declare-fun setNonEmpty!33974 () Bool)

(declare-fun inv!80568 (Context!8624) Bool)

(assert (=> setNonEmpty!33974 (= setRes!33974 (and tp!1477186 (inv!80568 setElem!33974) e!3290126))))

(declare-fun setRest!33974 () (Set Context!8624))

(assert (=> setNonEmpty!33974 (= z!1189 (set.union (set.insert setElem!33974 (as set.empty (Set Context!8624))) setRest!33974))))

(declare-fun b!5292603 () Bool)

(declare-fun tp!1477184 () Bool)

(assert (=> b!5292603 (= e!3290125 (and tp_is_empty!39109 tp!1477184))))

(declare-fun b!5292604 () Bool)

(declare-fun res!2244733 () Bool)

(declare-fun e!3290123 () Bool)

(assert (=> b!5292604 (=> res!2244733 e!3290123)))

(declare-fun nullable!5097 (Regex!14928) Bool)

(assert (=> b!5292604 (= res!2244733 (not (nullable!5097 (regOne!30368 (regOne!30368 r!7292)))))))

(declare-fun b!5292605 () Bool)

(declare-fun res!2244731 () Bool)

(assert (=> b!5292605 (=> res!2244731 e!3290121)))

(declare-fun isEmpty!32914 (List!61084) Bool)

(assert (=> b!5292605 (= res!2244731 (not (isEmpty!32914 (t!374289 zl!343))))))

(declare-fun tp!1477183 () Bool)

(declare-fun b!5292606 () Bool)

(assert (=> b!5292606 (= e!3290108 (and (inv!80568 (h!67408 zl!343)) e!3290118 tp!1477183))))

(declare-fun b!5292607 () Bool)

(declare-fun tp!1477187 () Bool)

(assert (=> b!5292607 (= e!3290126 tp!1477187)))

(declare-fun b!5292608 () Bool)

(declare-fun res!2244740 () Bool)

(assert (=> b!5292608 (=> res!2244740 e!3290113)))

(assert (=> b!5292608 (= res!2244740 (not (= (exprs!4812 (h!67408 zl!343)) (Cons!60959 (Concat!23773 (regOne!30368 (regOne!30368 r!7292)) (regTwo!30368 (regOne!30368 r!7292))) (t!374288 (exprs!4812 (h!67408 zl!343)))))))))

(declare-fun b!5292609 () Bool)

(declare-fun res!2244728 () Bool)

(assert (=> b!5292609 (=> res!2244728 e!3290113)))

(declare-fun contextDepthTotal!69 (Context!8624) Int)

(assert (=> b!5292609 (= res!2244728 (>= (contextDepthTotal!69 lt!2162716) (contextDepthTotal!69 (h!67408 zl!343))))))

(declare-fun b!5292610 () Bool)

(assert (=> b!5292610 (= e!3290127 (not (matchZipper!1172 (derivationStepZipper!1171 lt!2162724 (h!67409 s!2326)) (t!374290 s!2326))))))

(assert (=> b!5292611 (= e!3290112 e!3290123)))

(declare-fun res!2244744 () Bool)

(assert (=> b!5292611 (=> res!2244744 e!3290123)))

(assert (=> b!5292611 (= res!2244744 (or (and (is-ElementMatch!14928 (regOne!30368 r!7292)) (= (c!918186 (regOne!30368 r!7292)) (h!67409 s!2326))) (is-Union!14928 (regOne!30368 r!7292)) (not (is-Concat!23773 (regOne!30368 r!7292)))))))

(declare-fun lt!2162728 () Unit!153230)

(assert (=> b!5292611 (= lt!2162728 e!3290117)))

(declare-fun c!918185 () Bool)

(assert (=> b!5292611 (= c!918185 (nullable!5097 (h!67407 (exprs!4812 (h!67408 zl!343)))))))

(assert (=> b!5292611 (= (flatMap!655 z!1189 lambda!268100) (derivationStepZipperUp!300 (h!67408 zl!343) (h!67409 s!2326)))))

(declare-fun lt!2162697 () Unit!153230)

(assert (=> b!5292611 (= lt!2162697 (lemmaFlatMapOnSingletonSet!187 z!1189 (h!67408 zl!343) lambda!268100))))

(declare-fun lt!2162703 () Context!8624)

(assert (=> b!5292611 (= lt!2162705 (derivationStepZipperUp!300 lt!2162703 (h!67409 s!2326)))))

(declare-fun derivationStepZipperDown!376 (Regex!14928 Context!8624 C!30126) (Set Context!8624))

(assert (=> b!5292611 (= lt!2162719 (derivationStepZipperDown!376 (h!67407 (exprs!4812 (h!67408 zl!343))) lt!2162703 (h!67409 s!2326)))))

(assert (=> b!5292611 (= lt!2162703 (Context!8625 (t!374288 (exprs!4812 (h!67408 zl!343)))))))

(declare-fun lt!2162717 () (Set Context!8624))

(assert (=> b!5292611 (= lt!2162717 (derivationStepZipperUp!300 (Context!8625 (Cons!60959 (h!67407 (exprs!4812 (h!67408 zl!343))) (t!374288 (exprs!4812 (h!67408 zl!343))))) (h!67409 s!2326)))))

(declare-fun b!5292612 () Bool)

(assert (=> b!5292612 (= e!3290110 (not (matchZipper!1172 lt!2162739 (t!374290 s!2326))))))

(declare-fun b!5292613 () Bool)

(declare-fun tp!1477182 () Bool)

(declare-fun tp!1477188 () Bool)

(assert (=> b!5292613 (= e!3290124 (and tp!1477182 tp!1477188))))

(declare-fun b!5292614 () Bool)

(assert (=> b!5292614 (= e!3290123 e!3290107)))

(declare-fun res!2244743 () Bool)

(assert (=> b!5292614 (=> res!2244743 e!3290107)))

(assert (=> b!5292614 (= res!2244743 (not (= lt!2162719 lt!2162699)))))

(assert (=> b!5292614 (= lt!2162699 (set.union lt!2162718 lt!2162739))))

(assert (=> b!5292614 (= lt!2162739 (derivationStepZipperDown!376 (regTwo!30368 (regOne!30368 r!7292)) lt!2162703 (h!67409 s!2326)))))

(assert (=> b!5292614 (= lt!2162718 (derivationStepZipperDown!376 (regOne!30368 (regOne!30368 r!7292)) lt!2162715 (h!67409 s!2326)))))

(assert (=> b!5292614 (= lt!2162715 (Context!8625 lt!2162696))))

(assert (=> b!5292614 (= lt!2162696 (Cons!60959 (regTwo!30368 (regOne!30368 r!7292)) (t!374288 (exprs!4812 (h!67408 zl!343)))))))

(assert (= (and start!558548 res!2244747) b!5292591))

(assert (= (and b!5292591 res!2244736) b!5292601))

(assert (= (and b!5292601 res!2244727) b!5292578))

(assert (= (and b!5292578 (not res!2244734)) b!5292605))

(assert (= (and b!5292605 (not res!2244731)) b!5292589))

(assert (= (and b!5292589 (not res!2244746)) b!5292592))

(assert (= (and b!5292592 (not res!2244729)) b!5292586))

(assert (= (and b!5292586 (not res!2244724)) b!5292581))

(assert (= (and b!5292581 (not res!2244723)) b!5292588))

(assert (= (and b!5292588 (not res!2244722)) b!5292598))

(assert (= (and b!5292598 (not res!2244738)) b!5292611))

(assert (= (and b!5292611 c!918185) b!5292590))

(assert (= (and b!5292611 (not c!918185)) b!5292596))

(assert (= (and b!5292590 (not res!2244745)) b!5292600))

(assert (= (and b!5292611 (not res!2244744)) b!5292604))

(assert (= (and b!5292604 (not res!2244733)) b!5292614))

(assert (= (and b!5292614 (not res!2244743)) b!5292593))

(assert (= (and b!5292593 (not res!2244735)) b!5292579))

(assert (= (and b!5292593 res!2244739) b!5292612))

(assert (= (and b!5292593 (not res!2244726)) b!5292583))

(assert (= (and b!5292583 (not res!2244741)) b!5292587))

(assert (= (and b!5292587 (not res!2244725)) b!5292597))

(assert (= (and b!5292587 res!2244732) b!5292610))

(assert (= (and b!5292587 (not res!2244737)) b!5292608))

(assert (= (and b!5292608 (not res!2244740)) b!5292609))

(assert (= (and b!5292609 (not res!2244728)) b!5292585))

(assert (= (and b!5292585 (not res!2244730)) b!5292594))

(assert (= (and b!5292594 (not res!2244748)) b!5292582))

(assert (= (and b!5292582 (not res!2244742)) b!5292599))

(assert (= (and start!558548 (is-ElementMatch!14928 r!7292)) b!5292602))

(assert (= (and start!558548 (is-Concat!23773 r!7292)) b!5292613))

(assert (= (and start!558548 (is-Star!14928 r!7292)) b!5292580))

(assert (= (and start!558548 (is-Union!14928 r!7292)) b!5292595))

(assert (= (and start!558548 condSetEmpty!33974) setIsEmpty!33974))

(assert (= (and start!558548 (not condSetEmpty!33974)) setNonEmpty!33974))

(assert (= setNonEmpty!33974 b!5292607))

(assert (= b!5292606 b!5292584))

(assert (= (and start!558548 (is-Cons!60960 zl!343)) b!5292606))

(assert (= (and start!558548 (is-Cons!60961 s!2326)) b!5292603))

(declare-fun m!6329992 () Bool)

(assert (=> b!5292614 m!6329992))

(declare-fun m!6329994 () Bool)

(assert (=> b!5292614 m!6329994))

(declare-fun m!6329996 () Bool)

(assert (=> b!5292587 m!6329996))

(declare-fun m!6329998 () Bool)

(assert (=> b!5292587 m!6329998))

(declare-fun m!6330000 () Bool)

(assert (=> b!5292587 m!6330000))

(declare-fun m!6330002 () Bool)

(assert (=> b!5292587 m!6330002))

(declare-fun m!6330004 () Bool)

(assert (=> b!5292587 m!6330004))

(declare-fun m!6330006 () Bool)

(assert (=> b!5292587 m!6330006))

(declare-fun m!6330008 () Bool)

(assert (=> b!5292609 m!6330008))

(declare-fun m!6330010 () Bool)

(assert (=> b!5292609 m!6330010))

(declare-fun m!6330012 () Bool)

(assert (=> b!5292590 m!6330012))

(declare-fun m!6330014 () Bool)

(assert (=> b!5292590 m!6330014))

(declare-fun m!6330016 () Bool)

(assert (=> b!5292590 m!6330016))

(declare-fun m!6330018 () Bool)

(assert (=> b!5292598 m!6330018))

(declare-fun m!6330020 () Bool)

(assert (=> b!5292588 m!6330020))

(declare-fun m!6330022 () Bool)

(assert (=> b!5292588 m!6330022))

(declare-fun m!6330024 () Bool)

(assert (=> b!5292588 m!6330024))

(declare-fun m!6330026 () Bool)

(assert (=> b!5292588 m!6330026))

(assert (=> b!5292588 m!6330020))

(declare-fun m!6330028 () Bool)

(assert (=> b!5292588 m!6330028))

(assert (=> b!5292588 m!6330022))

(declare-fun m!6330030 () Bool)

(assert (=> b!5292588 m!6330030))

(declare-fun m!6330032 () Bool)

(assert (=> start!558548 m!6330032))

(declare-fun m!6330034 () Bool)

(assert (=> b!5292606 m!6330034))

(declare-fun m!6330036 () Bool)

(assert (=> b!5292599 m!6330036))

(declare-fun m!6330038 () Bool)

(assert (=> b!5292594 m!6330038))

(declare-fun m!6330040 () Bool)

(assert (=> b!5292594 m!6330040))

(declare-fun m!6330042 () Bool)

(assert (=> b!5292585 m!6330042))

(declare-fun m!6330044 () Bool)

(assert (=> b!5292585 m!6330044))

(declare-fun m!6330046 () Bool)

(assert (=> setNonEmpty!33974 m!6330046))

(declare-fun m!6330048 () Bool)

(assert (=> b!5292604 m!6330048))

(declare-fun m!6330050 () Bool)

(assert (=> b!5292579 m!6330050))

(declare-fun m!6330052 () Bool)

(assert (=> b!5292600 m!6330052))

(declare-fun m!6330054 () Bool)

(assert (=> b!5292601 m!6330054))

(declare-fun m!6330056 () Bool)

(assert (=> b!5292591 m!6330056))

(declare-fun m!6330058 () Bool)

(assert (=> b!5292610 m!6330058))

(assert (=> b!5292610 m!6330058))

(declare-fun m!6330060 () Bool)

(assert (=> b!5292610 m!6330060))

(declare-fun m!6330062 () Bool)

(assert (=> b!5292586 m!6330062))

(assert (=> b!5292586 m!6330062))

(declare-fun m!6330064 () Bool)

(assert (=> b!5292586 m!6330064))

(assert (=> b!5292593 m!6330014))

(declare-fun m!6330066 () Bool)

(assert (=> b!5292593 m!6330066))

(declare-fun m!6330068 () Bool)

(assert (=> b!5292593 m!6330068))

(declare-fun m!6330070 () Bool)

(assert (=> b!5292593 m!6330070))

(declare-fun m!6330072 () Bool)

(assert (=> b!5292582 m!6330072))

(declare-fun m!6330074 () Bool)

(assert (=> b!5292582 m!6330074))

(declare-fun m!6330076 () Bool)

(assert (=> b!5292582 m!6330076))

(declare-fun m!6330078 () Bool)

(assert (=> b!5292582 m!6330078))

(declare-fun m!6330080 () Bool)

(assert (=> b!5292582 m!6330080))

(declare-fun m!6330082 () Bool)

(assert (=> b!5292582 m!6330082))

(declare-fun m!6330084 () Bool)

(assert (=> b!5292582 m!6330084))

(declare-fun m!6330086 () Bool)

(assert (=> b!5292582 m!6330086))

(declare-fun m!6330088 () Bool)

(assert (=> b!5292582 m!6330088))

(declare-fun m!6330090 () Bool)

(assert (=> b!5292582 m!6330090))

(declare-fun m!6330092 () Bool)

(assert (=> b!5292582 m!6330092))

(declare-fun m!6330094 () Bool)

(assert (=> b!5292582 m!6330094))

(declare-fun m!6330096 () Bool)

(assert (=> b!5292582 m!6330096))

(declare-fun m!6330098 () Bool)

(assert (=> b!5292582 m!6330098))

(assert (=> b!5292582 m!6330078))

(declare-fun m!6330100 () Bool)

(assert (=> b!5292582 m!6330100))

(declare-fun m!6330102 () Bool)

(assert (=> b!5292582 m!6330102))

(assert (=> b!5292582 m!6330082))

(declare-fun m!6330104 () Bool)

(assert (=> b!5292582 m!6330104))

(declare-fun m!6330106 () Bool)

(assert (=> b!5292582 m!6330106))

(declare-fun m!6330108 () Bool)

(assert (=> b!5292582 m!6330108))

(declare-fun m!6330110 () Bool)

(assert (=> b!5292582 m!6330110))

(assert (=> b!5292582 m!6330106))

(declare-fun m!6330112 () Bool)

(assert (=> b!5292582 m!6330112))

(declare-fun m!6330114 () Bool)

(assert (=> b!5292582 m!6330114))

(declare-fun m!6330116 () Bool)

(assert (=> b!5292582 m!6330116))

(declare-fun m!6330118 () Bool)

(assert (=> b!5292582 m!6330118))

(assert (=> b!5292582 m!6330112))

(declare-fun m!6330120 () Bool)

(assert (=> b!5292582 m!6330120))

(declare-fun m!6330122 () Bool)

(assert (=> b!5292582 m!6330122))

(declare-fun m!6330124 () Bool)

(assert (=> b!5292597 m!6330124))

(assert (=> b!5292612 m!6330050))

(declare-fun m!6330126 () Bool)

(assert (=> b!5292605 m!6330126))

(declare-fun m!6330128 () Bool)

(assert (=> b!5292589 m!6330128))

(declare-fun m!6330130 () Bool)

(assert (=> b!5292611 m!6330130))

(declare-fun m!6330132 () Bool)

(assert (=> b!5292611 m!6330132))

(declare-fun m!6330134 () Bool)

(assert (=> b!5292611 m!6330134))

(declare-fun m!6330136 () Bool)

(assert (=> b!5292611 m!6330136))

(declare-fun m!6330138 () Bool)

(assert (=> b!5292611 m!6330138))

(declare-fun m!6330140 () Bool)

(assert (=> b!5292611 m!6330140))

(declare-fun m!6330142 () Bool)

(assert (=> b!5292611 m!6330142))

(declare-fun m!6330144 () Bool)

(assert (=> b!5292583 m!6330144))

(declare-fun m!6330146 () Bool)

(assert (=> b!5292583 m!6330146))

(assert (=> b!5292583 m!6329996))

(declare-fun m!6330148 () Bool)

(assert (=> b!5292583 m!6330148))

(declare-fun m!6330150 () Bool)

(assert (=> b!5292583 m!6330150))

(declare-fun m!6330152 () Bool)

(assert (=> b!5292583 m!6330152))

(declare-fun m!6330154 () Bool)

(assert (=> b!5292583 m!6330154))

(declare-fun m!6330156 () Bool)

(assert (=> b!5292578 m!6330156))

(declare-fun m!6330158 () Bool)

(assert (=> b!5292578 m!6330158))

(declare-fun m!6330160 () Bool)

(assert (=> b!5292578 m!6330160))

(push 1)

(assert (not b!5292593))

(assert (not b!5292578))

(assert (not b!5292597))

(assert (not b!5292598))

(assert (not b!5292585))

(assert (not b!5292595))

(assert (not b!5292614))

(assert (not b!5292603))

(assert (not b!5292611))

(assert (not b!5292601))

(assert tp_is_empty!39109)

(assert (not b!5292582))

(assert (not start!558548))

(assert (not b!5292588))

(assert (not b!5292612))

(assert (not b!5292606))

(assert (not setNonEmpty!33974))

(assert (not b!5292583))

(assert (not b!5292613))

(assert (not b!5292600))

(assert (not b!5292609))

(assert (not b!5292586))

(assert (not b!5292591))

(assert (not b!5292589))

(assert (not b!5292594))

(assert (not b!5292579))

(assert (not b!5292590))

(assert (not b!5292610))

(assert (not b!5292580))

(assert (not b!5292604))

(assert (not b!5292607))

(assert (not b!5292599))

(assert (not b!5292584))

(assert (not b!5292605))

(assert (not b!5292587))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1702528 () Bool)

(declare-fun choose!39519 ((Set Context!8624) Int) (Set Context!8624))

(assert (=> d!1702528 (= (flatMap!655 lt!2162724 lambda!268100) (choose!39519 lt!2162724 lambda!268100))))

(declare-fun bs!1227513 () Bool)

(assert (= bs!1227513 d!1702528))

(declare-fun m!6330332 () Bool)

(assert (=> bs!1227513 m!6330332))

(assert (=> b!5292587 d!1702528))

(declare-fun b!5292784 () Bool)

(declare-fun e!3290216 () (Set Context!8624))

(assert (=> b!5292784 (= e!3290216 (as set.empty (Set Context!8624)))))

(declare-fun d!1702530 () Bool)

(declare-fun c!918202 () Bool)

(declare-fun e!3290217 () Bool)

(assert (=> d!1702530 (= c!918202 e!3290217)))

(declare-fun res!2244868 () Bool)

(assert (=> d!1702530 (=> (not res!2244868) (not e!3290217))))

(assert (=> d!1702530 (= res!2244868 (is-Cons!60959 (exprs!4812 lt!2162715)))))

(declare-fun e!3290215 () (Set Context!8624))

(assert (=> d!1702530 (= (derivationStepZipperUp!300 lt!2162715 (h!67409 s!2326)) e!3290215)))

(declare-fun b!5292785 () Bool)

(assert (=> b!5292785 (= e!3290217 (nullable!5097 (h!67407 (exprs!4812 lt!2162715))))))

(declare-fun bm!377182 () Bool)

(declare-fun call!377187 () (Set Context!8624))

(assert (=> bm!377182 (= call!377187 (derivationStepZipperDown!376 (h!67407 (exprs!4812 lt!2162715)) (Context!8625 (t!374288 (exprs!4812 lt!2162715))) (h!67409 s!2326)))))

(declare-fun b!5292786 () Bool)

(assert (=> b!5292786 (= e!3290216 call!377187)))

(declare-fun b!5292787 () Bool)

(assert (=> b!5292787 (= e!3290215 e!3290216)))

(declare-fun c!918203 () Bool)

(assert (=> b!5292787 (= c!918203 (is-Cons!60959 (exprs!4812 lt!2162715)))))

(declare-fun b!5292788 () Bool)

(assert (=> b!5292788 (= e!3290215 (set.union call!377187 (derivationStepZipperUp!300 (Context!8625 (t!374288 (exprs!4812 lt!2162715))) (h!67409 s!2326))))))

(assert (= (and d!1702530 res!2244868) b!5292785))

(assert (= (and d!1702530 c!918202) b!5292788))

(assert (= (and d!1702530 (not c!918202)) b!5292787))

(assert (= (and b!5292787 c!918203) b!5292786))

(assert (= (and b!5292787 (not c!918203)) b!5292784))

(assert (= (or b!5292788 b!5292786) bm!377182))

(declare-fun m!6330334 () Bool)

(assert (=> b!5292785 m!6330334))

(declare-fun m!6330336 () Bool)

(assert (=> bm!377182 m!6330336))

(declare-fun m!6330338 () Bool)

(assert (=> b!5292788 m!6330338))

(assert (=> b!5292587 d!1702530))

(declare-fun e!3290220 () Bool)

(declare-fun d!1702532 () Bool)

(assert (=> d!1702532 (= (matchZipper!1172 (set.union lt!2162718 lt!2162700) (t!374290 s!2326)) e!3290220)))

(declare-fun res!2244871 () Bool)

(assert (=> d!1702532 (=> res!2244871 e!3290220)))

(assert (=> d!1702532 (= res!2244871 (matchZipper!1172 lt!2162718 (t!374290 s!2326)))))

(declare-fun lt!2162883 () Unit!153230)

(declare-fun choose!39520 ((Set Context!8624) (Set Context!8624) List!61085) Unit!153230)

(assert (=> d!1702532 (= lt!2162883 (choose!39520 lt!2162718 lt!2162700 (t!374290 s!2326)))))

(assert (=> d!1702532 (= (lemmaZipperConcatMatchesSameAsBothZippers!165 lt!2162718 lt!2162700 (t!374290 s!2326)) lt!2162883)))

(declare-fun b!5292791 () Bool)

(assert (=> b!5292791 (= e!3290220 (matchZipper!1172 lt!2162700 (t!374290 s!2326)))))

(assert (= (and d!1702532 (not res!2244871)) b!5292791))

(declare-fun m!6330340 () Bool)

(assert (=> d!1702532 m!6330340))

(assert (=> d!1702532 m!6330068))

(declare-fun m!6330342 () Bool)

(assert (=> d!1702532 m!6330342))

(assert (=> b!5292791 m!6330124))

(assert (=> b!5292587 d!1702532))

(declare-fun d!1702534 () Bool)

(declare-fun c!918206 () Bool)

(declare-fun isEmpty!32917 (List!61085) Bool)

(assert (=> d!1702534 (= c!918206 (isEmpty!32917 (t!374290 s!2326)))))

(declare-fun e!3290223 () Bool)

(assert (=> d!1702534 (= (matchZipper!1172 lt!2162732 (t!374290 s!2326)) e!3290223)))

(declare-fun b!5292796 () Bool)

(declare-fun nullableZipper!1311 ((Set Context!8624)) Bool)

(assert (=> b!5292796 (= e!3290223 (nullableZipper!1311 lt!2162732))))

(declare-fun b!5292797 () Bool)

(declare-fun head!11340 (List!61085) C!30126)

(declare-fun tail!10437 (List!61085) List!61085)

(assert (=> b!5292797 (= e!3290223 (matchZipper!1172 (derivationStepZipper!1171 lt!2162732 (head!11340 (t!374290 s!2326))) (tail!10437 (t!374290 s!2326))))))

(assert (= (and d!1702534 c!918206) b!5292796))

(assert (= (and d!1702534 (not c!918206)) b!5292797))

(declare-fun m!6330344 () Bool)

(assert (=> d!1702534 m!6330344))

(declare-fun m!6330346 () Bool)

(assert (=> b!5292796 m!6330346))

(declare-fun m!6330348 () Bool)

(assert (=> b!5292797 m!6330348))

(assert (=> b!5292797 m!6330348))

(declare-fun m!6330350 () Bool)

(assert (=> b!5292797 m!6330350))

(declare-fun m!6330352 () Bool)

(assert (=> b!5292797 m!6330352))

(assert (=> b!5292797 m!6330350))

(assert (=> b!5292797 m!6330352))

(declare-fun m!6330354 () Bool)

(assert (=> b!5292797 m!6330354))

(assert (=> b!5292587 d!1702534))

(declare-fun d!1702536 () Bool)

(declare-fun dynLambda!24104 (Int Context!8624) (Set Context!8624))

(assert (=> d!1702536 (= (flatMap!655 lt!2162724 lambda!268100) (dynLambda!24104 lambda!268100 lt!2162715))))

(declare-fun lt!2162886 () Unit!153230)

(declare-fun choose!39521 ((Set Context!8624) Context!8624 Int) Unit!153230)

(assert (=> d!1702536 (= lt!2162886 (choose!39521 lt!2162724 lt!2162715 lambda!268100))))

(assert (=> d!1702536 (= lt!2162724 (set.insert lt!2162715 (as set.empty (Set Context!8624))))))

(assert (=> d!1702536 (= (lemmaFlatMapOnSingletonSet!187 lt!2162724 lt!2162715 lambda!268100) lt!2162886)))

(declare-fun b_lambda!204101 () Bool)

(assert (=> (not b_lambda!204101) (not d!1702536)))

(declare-fun bs!1227514 () Bool)

(assert (= bs!1227514 d!1702536))

(assert (=> bs!1227514 m!6329998))

(declare-fun m!6330356 () Bool)

(assert (=> bs!1227514 m!6330356))

(declare-fun m!6330358 () Bool)

(assert (=> bs!1227514 m!6330358))

(assert (=> bs!1227514 m!6330144))

(assert (=> b!5292587 d!1702536))

(declare-fun d!1702538 () Bool)

(declare-fun c!918207 () Bool)

(assert (=> d!1702538 (= c!918207 (isEmpty!32917 (t!374290 s!2326)))))

(declare-fun e!3290224 () Bool)

(assert (=> d!1702538 (= (matchZipper!1172 lt!2162698 (t!374290 s!2326)) e!3290224)))

(declare-fun b!5292798 () Bool)

(assert (=> b!5292798 (= e!3290224 (nullableZipper!1311 lt!2162698))))

(declare-fun b!5292799 () Bool)

(assert (=> b!5292799 (= e!3290224 (matchZipper!1172 (derivationStepZipper!1171 lt!2162698 (head!11340 (t!374290 s!2326))) (tail!10437 (t!374290 s!2326))))))

(assert (= (and d!1702538 c!918207) b!5292798))

(assert (= (and d!1702538 (not c!918207)) b!5292799))

(assert (=> d!1702538 m!6330344))

(declare-fun m!6330360 () Bool)

(assert (=> b!5292798 m!6330360))

(assert (=> b!5292799 m!6330348))

(assert (=> b!5292799 m!6330348))

(declare-fun m!6330362 () Bool)

(assert (=> b!5292799 m!6330362))

(assert (=> b!5292799 m!6330352))

(assert (=> b!5292799 m!6330362))

(assert (=> b!5292799 m!6330352))

(declare-fun m!6330364 () Bool)

(assert (=> b!5292799 m!6330364))

(assert (=> b!5292587 d!1702538))

(declare-fun bs!1227515 () Bool)

(declare-fun d!1702540 () Bool)

(assert (= bs!1227515 (and d!1702540 b!5292599)))

(declare-fun lambda!268142 () Int)

(assert (=> bs!1227515 (= lambda!268142 lambda!268105)))

(assert (=> d!1702540 (= (inv!80568 (h!67408 zl!343)) (forall!14336 (exprs!4812 (h!67408 zl!343)) lambda!268142))))

(declare-fun bs!1227516 () Bool)

(assert (= bs!1227516 d!1702540))

(declare-fun m!6330366 () Bool)

(assert (=> bs!1227516 m!6330366))

(assert (=> b!5292606 d!1702540))

(declare-fun bs!1227517 () Bool)

(declare-fun d!1702542 () Bool)

(assert (= bs!1227517 (and d!1702542 b!5292599)))

(declare-fun lambda!268145 () Int)

(assert (=> bs!1227517 (= lambda!268145 lambda!268105)))

(declare-fun bs!1227518 () Bool)

(assert (= bs!1227518 (and d!1702542 d!1702540)))

(assert (=> bs!1227518 (= lambda!268145 lambda!268142)))

(declare-fun b!5292820 () Bool)

(declare-fun e!3290238 () Bool)

(assert (=> b!5292820 (= e!3290238 (isEmpty!32913 (t!374288 (unfocusZipperList!370 zl!343))))))

(declare-fun b!5292821 () Bool)

(declare-fun e!3290242 () Bool)

(declare-fun lt!2162889 () Regex!14928)

(declare-fun isUnion!286 (Regex!14928) Bool)

(assert (=> b!5292821 (= e!3290242 (isUnion!286 lt!2162889))))

(declare-fun b!5292822 () Bool)

(declare-fun e!3290240 () Bool)

(declare-fun e!3290241 () Bool)

(assert (=> b!5292822 (= e!3290240 e!3290241)))

(declare-fun c!918216 () Bool)

(assert (=> b!5292822 (= c!918216 (isEmpty!32913 (unfocusZipperList!370 zl!343)))))

(declare-fun b!5292823 () Bool)

(declare-fun head!11341 (List!61083) Regex!14928)

(assert (=> b!5292823 (= e!3290242 (= lt!2162889 (head!11341 (unfocusZipperList!370 zl!343))))))

(declare-fun b!5292824 () Bool)

(declare-fun e!3290239 () Regex!14928)

(assert (=> b!5292824 (= e!3290239 (h!67407 (unfocusZipperList!370 zl!343)))))

(declare-fun b!5292825 () Bool)

(assert (=> b!5292825 (= e!3290241 e!3290242)))

(declare-fun c!918217 () Bool)

(declare-fun tail!10438 (List!61083) List!61083)

(assert (=> b!5292825 (= c!918217 (isEmpty!32913 (tail!10438 (unfocusZipperList!370 zl!343))))))

(assert (=> d!1702542 e!3290240))

(declare-fun res!2244877 () Bool)

(assert (=> d!1702542 (=> (not res!2244877) (not e!3290240))))

(assert (=> d!1702542 (= res!2244877 (validRegex!6664 lt!2162889))))

(assert (=> d!1702542 (= lt!2162889 e!3290239)))

(declare-fun c!918219 () Bool)

(assert (=> d!1702542 (= c!918219 e!3290238)))

(declare-fun res!2244876 () Bool)

(assert (=> d!1702542 (=> (not res!2244876) (not e!3290238))))

(assert (=> d!1702542 (= res!2244876 (is-Cons!60959 (unfocusZipperList!370 zl!343)))))

(assert (=> d!1702542 (forall!14336 (unfocusZipperList!370 zl!343) lambda!268145)))

(assert (=> d!1702542 (= (generalisedUnion!857 (unfocusZipperList!370 zl!343)) lt!2162889)))

(declare-fun b!5292826 () Bool)

(declare-fun e!3290237 () Regex!14928)

(assert (=> b!5292826 (= e!3290237 (Union!14928 (h!67407 (unfocusZipperList!370 zl!343)) (generalisedUnion!857 (t!374288 (unfocusZipperList!370 zl!343)))))))

(declare-fun b!5292827 () Bool)

(assert (=> b!5292827 (= e!3290239 e!3290237)))

(declare-fun c!918218 () Bool)

(assert (=> b!5292827 (= c!918218 (is-Cons!60959 (unfocusZipperList!370 zl!343)))))

(declare-fun b!5292828 () Bool)

(declare-fun isEmptyLang!854 (Regex!14928) Bool)

(assert (=> b!5292828 (= e!3290241 (isEmptyLang!854 lt!2162889))))

(declare-fun b!5292829 () Bool)

(assert (=> b!5292829 (= e!3290237 EmptyLang!14928)))

(assert (= (and d!1702542 res!2244876) b!5292820))

(assert (= (and d!1702542 c!918219) b!5292824))

(assert (= (and d!1702542 (not c!918219)) b!5292827))

(assert (= (and b!5292827 c!918218) b!5292826))

(assert (= (and b!5292827 (not c!918218)) b!5292829))

(assert (= (and d!1702542 res!2244877) b!5292822))

(assert (= (and b!5292822 c!918216) b!5292828))

(assert (= (and b!5292822 (not c!918216)) b!5292825))

(assert (= (and b!5292825 c!918217) b!5292823))

(assert (= (and b!5292825 (not c!918217)) b!5292821))

(assert (=> b!5292823 m!6330062))

(declare-fun m!6330368 () Bool)

(assert (=> b!5292823 m!6330368))

(declare-fun m!6330370 () Bool)

(assert (=> b!5292821 m!6330370))

(declare-fun m!6330372 () Bool)

(assert (=> b!5292826 m!6330372))

(declare-fun m!6330374 () Bool)

(assert (=> d!1702542 m!6330374))

(assert (=> d!1702542 m!6330062))

(declare-fun m!6330376 () Bool)

(assert (=> d!1702542 m!6330376))

(declare-fun m!6330378 () Bool)

(assert (=> b!5292828 m!6330378))

(assert (=> b!5292825 m!6330062))

(declare-fun m!6330380 () Bool)

(assert (=> b!5292825 m!6330380))

(assert (=> b!5292825 m!6330380))

(declare-fun m!6330382 () Bool)

(assert (=> b!5292825 m!6330382))

(assert (=> b!5292822 m!6330062))

(declare-fun m!6330384 () Bool)

(assert (=> b!5292822 m!6330384))

(declare-fun m!6330386 () Bool)

(assert (=> b!5292820 m!6330386))

(assert (=> b!5292586 d!1702542))

(declare-fun bs!1227519 () Bool)

(declare-fun d!1702544 () Bool)

(assert (= bs!1227519 (and d!1702544 b!5292599)))

(declare-fun lambda!268148 () Int)

(assert (=> bs!1227519 (= lambda!268148 lambda!268105)))

(declare-fun bs!1227520 () Bool)

(assert (= bs!1227520 (and d!1702544 d!1702540)))

(assert (=> bs!1227520 (= lambda!268148 lambda!268142)))

(declare-fun bs!1227521 () Bool)

(assert (= bs!1227521 (and d!1702544 d!1702542)))

(assert (=> bs!1227521 (= lambda!268148 lambda!268145)))

(declare-fun lt!2162892 () List!61083)

(assert (=> d!1702544 (forall!14336 lt!2162892 lambda!268148)))

(declare-fun e!3290245 () List!61083)

(assert (=> d!1702544 (= lt!2162892 e!3290245)))

(declare-fun c!918222 () Bool)

(assert (=> d!1702544 (= c!918222 (is-Cons!60960 zl!343))))

(assert (=> d!1702544 (= (unfocusZipperList!370 zl!343) lt!2162892)))

(declare-fun b!5292834 () Bool)

(assert (=> b!5292834 (= e!3290245 (Cons!60959 (generalisedConcat!597 (exprs!4812 (h!67408 zl!343))) (unfocusZipperList!370 (t!374289 zl!343))))))

(declare-fun b!5292835 () Bool)

(assert (=> b!5292835 (= e!3290245 Nil!60959)))

(assert (= (and d!1702544 c!918222) b!5292834))

(assert (= (and d!1702544 (not c!918222)) b!5292835))

(declare-fun m!6330388 () Bool)

(assert (=> d!1702544 m!6330388))

(assert (=> b!5292834 m!6330128))

(declare-fun m!6330390 () Bool)

(assert (=> b!5292834 m!6330390))

(assert (=> b!5292586 d!1702544))

(declare-fun d!1702546 () Bool)

(declare-fun c!918223 () Bool)

(assert (=> d!1702546 (= c!918223 (isEmpty!32917 (t!374290 s!2326)))))

(declare-fun e!3290246 () Bool)

(assert (=> d!1702546 (= (matchZipper!1172 (derivationStepZipper!1171 lt!2162724 (h!67409 s!2326)) (t!374290 s!2326)) e!3290246)))

(declare-fun b!5292836 () Bool)

(assert (=> b!5292836 (= e!3290246 (nullableZipper!1311 (derivationStepZipper!1171 lt!2162724 (h!67409 s!2326))))))

(declare-fun b!5292837 () Bool)

(assert (=> b!5292837 (= e!3290246 (matchZipper!1172 (derivationStepZipper!1171 (derivationStepZipper!1171 lt!2162724 (h!67409 s!2326)) (head!11340 (t!374290 s!2326))) (tail!10437 (t!374290 s!2326))))))

(assert (= (and d!1702546 c!918223) b!5292836))

(assert (= (and d!1702546 (not c!918223)) b!5292837))

(assert (=> d!1702546 m!6330344))

(assert (=> b!5292836 m!6330058))

(declare-fun m!6330392 () Bool)

(assert (=> b!5292836 m!6330392))

(assert (=> b!5292837 m!6330348))

(assert (=> b!5292837 m!6330058))

(assert (=> b!5292837 m!6330348))

(declare-fun m!6330394 () Bool)

(assert (=> b!5292837 m!6330394))

(assert (=> b!5292837 m!6330352))

(assert (=> b!5292837 m!6330394))

(assert (=> b!5292837 m!6330352))

(declare-fun m!6330396 () Bool)

(assert (=> b!5292837 m!6330396))

(assert (=> b!5292610 d!1702546))

(declare-fun bs!1227522 () Bool)

(declare-fun d!1702548 () Bool)

(assert (= bs!1227522 (and d!1702548 b!5292611)))

(declare-fun lambda!268151 () Int)

(assert (=> bs!1227522 (= lambda!268151 lambda!268100)))

(assert (=> d!1702548 true))

(assert (=> d!1702548 (= (derivationStepZipper!1171 lt!2162724 (h!67409 s!2326)) (flatMap!655 lt!2162724 lambda!268151))))

(declare-fun bs!1227523 () Bool)

(assert (= bs!1227523 d!1702548))

(declare-fun m!6330398 () Bool)

(assert (=> bs!1227523 m!6330398))

(assert (=> b!5292610 d!1702548))

(declare-fun e!3290247 () Bool)

(declare-fun d!1702550 () Bool)

(assert (=> d!1702550 (= (matchZipper!1172 (set.union lt!2162719 lt!2162705) (t!374290 s!2326)) e!3290247)))

(declare-fun res!2244878 () Bool)

(assert (=> d!1702550 (=> res!2244878 e!3290247)))

(assert (=> d!1702550 (= res!2244878 (matchZipper!1172 lt!2162719 (t!374290 s!2326)))))

(declare-fun lt!2162893 () Unit!153230)

(assert (=> d!1702550 (= lt!2162893 (choose!39520 lt!2162719 lt!2162705 (t!374290 s!2326)))))

(assert (=> d!1702550 (= (lemmaZipperConcatMatchesSameAsBothZippers!165 lt!2162719 lt!2162705 (t!374290 s!2326)) lt!2162893)))

(declare-fun b!5292840 () Bool)

(assert (=> b!5292840 (= e!3290247 (matchZipper!1172 lt!2162705 (t!374290 s!2326)))))

(assert (= (and d!1702550 (not res!2244878)) b!5292840))

(assert (=> d!1702550 m!6330016))

(assert (=> d!1702550 m!6330014))

(declare-fun m!6330400 () Bool)

(assert (=> d!1702550 m!6330400))

(assert (=> b!5292840 m!6330052))

(assert (=> b!5292590 d!1702550))

(declare-fun d!1702552 () Bool)

(declare-fun c!918226 () Bool)

(assert (=> d!1702552 (= c!918226 (isEmpty!32917 (t!374290 s!2326)))))

(declare-fun e!3290248 () Bool)

(assert (=> d!1702552 (= (matchZipper!1172 lt!2162719 (t!374290 s!2326)) e!3290248)))

(declare-fun b!5292841 () Bool)

(assert (=> b!5292841 (= e!3290248 (nullableZipper!1311 lt!2162719))))

(declare-fun b!5292842 () Bool)

(assert (=> b!5292842 (= e!3290248 (matchZipper!1172 (derivationStepZipper!1171 lt!2162719 (head!11340 (t!374290 s!2326))) (tail!10437 (t!374290 s!2326))))))

(assert (= (and d!1702552 c!918226) b!5292841))

(assert (= (and d!1702552 (not c!918226)) b!5292842))

(assert (=> d!1702552 m!6330344))

(declare-fun m!6330402 () Bool)

(assert (=> b!5292841 m!6330402))

(assert (=> b!5292842 m!6330348))

(assert (=> b!5292842 m!6330348))

(declare-fun m!6330404 () Bool)

(assert (=> b!5292842 m!6330404))

(assert (=> b!5292842 m!6330352))

(assert (=> b!5292842 m!6330404))

(assert (=> b!5292842 m!6330352))

(declare-fun m!6330406 () Bool)

(assert (=> b!5292842 m!6330406))

(assert (=> b!5292590 d!1702552))

(declare-fun d!1702554 () Bool)

(declare-fun c!918227 () Bool)

(assert (=> d!1702554 (= c!918227 (isEmpty!32917 (t!374290 s!2326)))))

(declare-fun e!3290249 () Bool)

(assert (=> d!1702554 (= (matchZipper!1172 (set.union lt!2162719 lt!2162705) (t!374290 s!2326)) e!3290249)))

(declare-fun b!5292843 () Bool)

(assert (=> b!5292843 (= e!3290249 (nullableZipper!1311 (set.union lt!2162719 lt!2162705)))))

(declare-fun b!5292844 () Bool)

(assert (=> b!5292844 (= e!3290249 (matchZipper!1172 (derivationStepZipper!1171 (set.union lt!2162719 lt!2162705) (head!11340 (t!374290 s!2326))) (tail!10437 (t!374290 s!2326))))))

(assert (= (and d!1702554 c!918227) b!5292843))

(assert (= (and d!1702554 (not c!918227)) b!5292844))

(assert (=> d!1702554 m!6330344))

(declare-fun m!6330408 () Bool)

(assert (=> b!5292843 m!6330408))

(assert (=> b!5292844 m!6330348))

(assert (=> b!5292844 m!6330348))

(declare-fun m!6330410 () Bool)

(assert (=> b!5292844 m!6330410))

(assert (=> b!5292844 m!6330352))

(assert (=> b!5292844 m!6330410))

(assert (=> b!5292844 m!6330352))

(declare-fun m!6330412 () Bool)

(assert (=> b!5292844 m!6330412))

(assert (=> b!5292590 d!1702554))

(declare-fun b!5292864 () Bool)

(declare-fun res!2244893 () Bool)

(declare-fun e!3290261 () Bool)

(assert (=> b!5292864 (=> (not res!2244893) (not e!3290261))))

(declare-fun lt!2162901 () Option!15039)

(declare-fun get!20961 (Option!15039) tuple2!64254)

(assert (=> b!5292864 (= res!2244893 (matchR!7113 (regOne!30368 r!7292) (_1!35430 (get!20961 lt!2162901))))))

(declare-fun b!5292865 () Bool)

(declare-fun e!3290262 () Option!15039)

(assert (=> b!5292865 (= e!3290262 None!15038)))

(declare-fun b!5292866 () Bool)

(declare-fun ++!13291 (List!61085 List!61085) List!61085)

(assert (=> b!5292866 (= e!3290261 (= (++!13291 (_1!35430 (get!20961 lt!2162901)) (_2!35430 (get!20961 lt!2162901))) s!2326))))

(declare-fun b!5292867 () Bool)

(declare-fun res!2244890 () Bool)

(assert (=> b!5292867 (=> (not res!2244890) (not e!3290261))))

(assert (=> b!5292867 (= res!2244890 (matchR!7113 (regTwo!30368 r!7292) (_2!35430 (get!20961 lt!2162901))))))

(declare-fun b!5292868 () Bool)

(declare-fun e!3290260 () Bool)

(assert (=> b!5292868 (= e!3290260 (matchR!7113 (regTwo!30368 r!7292) s!2326))))

(declare-fun b!5292869 () Bool)

(declare-fun e!3290264 () Option!15039)

(assert (=> b!5292869 (= e!3290264 e!3290262)))

(declare-fun c!918232 () Bool)

(assert (=> b!5292869 (= c!918232 (is-Nil!60961 s!2326))))

(declare-fun b!5292870 () Bool)

(declare-fun e!3290263 () Bool)

(assert (=> b!5292870 (= e!3290263 (not (isDefined!11742 lt!2162901)))))

(declare-fun b!5292871 () Bool)

(assert (=> b!5292871 (= e!3290264 (Some!15038 (tuple2!64255 Nil!60961 s!2326)))))

(declare-fun d!1702556 () Bool)

(assert (=> d!1702556 e!3290263))

(declare-fun res!2244891 () Bool)

(assert (=> d!1702556 (=> res!2244891 e!3290263)))

(assert (=> d!1702556 (= res!2244891 e!3290261)))

(declare-fun res!2244892 () Bool)

(assert (=> d!1702556 (=> (not res!2244892) (not e!3290261))))

(assert (=> d!1702556 (= res!2244892 (isDefined!11742 lt!2162901))))

(assert (=> d!1702556 (= lt!2162901 e!3290264)))

(declare-fun c!918233 () Bool)

(assert (=> d!1702556 (= c!918233 e!3290260)))

(declare-fun res!2244889 () Bool)

(assert (=> d!1702556 (=> (not res!2244889) (not e!3290260))))

(assert (=> d!1702556 (= res!2244889 (matchR!7113 (regOne!30368 r!7292) Nil!60961))))

(assert (=> d!1702556 (validRegex!6664 (regOne!30368 r!7292))))

(assert (=> d!1702556 (= (findConcatSeparation!1453 (regOne!30368 r!7292) (regTwo!30368 r!7292) Nil!60961 s!2326 s!2326) lt!2162901)))

(declare-fun b!5292863 () Bool)

(declare-fun lt!2162902 () Unit!153230)

(declare-fun lt!2162900 () Unit!153230)

(assert (=> b!5292863 (= lt!2162902 lt!2162900)))

(assert (=> b!5292863 (= (++!13291 (++!13291 Nil!60961 (Cons!60961 (h!67409 s!2326) Nil!60961)) (t!374290 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1706 (List!61085 C!30126 List!61085 List!61085) Unit!153230)

(assert (=> b!5292863 (= lt!2162900 (lemmaMoveElementToOtherListKeepsConcatEq!1706 Nil!60961 (h!67409 s!2326) (t!374290 s!2326) s!2326))))

(assert (=> b!5292863 (= e!3290262 (findConcatSeparation!1453 (regOne!30368 r!7292) (regTwo!30368 r!7292) (++!13291 Nil!60961 (Cons!60961 (h!67409 s!2326) Nil!60961)) (t!374290 s!2326) s!2326))))

(assert (= (and d!1702556 res!2244889) b!5292868))

(assert (= (and d!1702556 c!918233) b!5292871))

(assert (= (and d!1702556 (not c!918233)) b!5292869))

(assert (= (and b!5292869 c!918232) b!5292865))

(assert (= (and b!5292869 (not c!918232)) b!5292863))

(assert (= (and d!1702556 res!2244892) b!5292864))

(assert (= (and b!5292864 res!2244893) b!5292867))

(assert (= (and b!5292867 res!2244890) b!5292866))

(assert (= (and d!1702556 (not res!2244891)) b!5292870))

(declare-fun m!6330414 () Bool)

(assert (=> b!5292868 m!6330414))

(declare-fun m!6330416 () Bool)

(assert (=> d!1702556 m!6330416))

(declare-fun m!6330418 () Bool)

(assert (=> d!1702556 m!6330418))

(declare-fun m!6330420 () Bool)

(assert (=> d!1702556 m!6330420))

(declare-fun m!6330422 () Bool)

(assert (=> b!5292866 m!6330422))

(declare-fun m!6330424 () Bool)

(assert (=> b!5292866 m!6330424))

(declare-fun m!6330426 () Bool)

(assert (=> b!5292863 m!6330426))

(assert (=> b!5292863 m!6330426))

(declare-fun m!6330428 () Bool)

(assert (=> b!5292863 m!6330428))

(declare-fun m!6330430 () Bool)

(assert (=> b!5292863 m!6330430))

(assert (=> b!5292863 m!6330426))

(declare-fun m!6330432 () Bool)

(assert (=> b!5292863 m!6330432))

(assert (=> b!5292867 m!6330422))

(declare-fun m!6330434 () Bool)

(assert (=> b!5292867 m!6330434))

(assert (=> b!5292870 m!6330416))

(assert (=> b!5292864 m!6330422))

(declare-fun m!6330436 () Bool)

(assert (=> b!5292864 m!6330436))

(assert (=> b!5292588 d!1702556))

(declare-fun d!1702558 () Bool)

(declare-fun choose!39522 (Int) Bool)

(assert (=> d!1702558 (= (Exists!2109 lambda!268098) (choose!39522 lambda!268098))))

(declare-fun bs!1227524 () Bool)

(assert (= bs!1227524 d!1702558))

(declare-fun m!6330438 () Bool)

(assert (=> bs!1227524 m!6330438))

(assert (=> b!5292588 d!1702558))

(declare-fun d!1702560 () Bool)

(assert (=> d!1702560 (= (Exists!2109 lambda!268099) (choose!39522 lambda!268099))))

(declare-fun bs!1227525 () Bool)

(assert (= bs!1227525 d!1702560))

(declare-fun m!6330440 () Bool)

(assert (=> bs!1227525 m!6330440))

(assert (=> b!5292588 d!1702560))

(declare-fun bs!1227526 () Bool)

(declare-fun d!1702562 () Bool)

(assert (= bs!1227526 (and d!1702562 b!5292582)))

(declare-fun lambda!268154 () Int)

(assert (=> bs!1227526 (not (= lambda!268154 lambda!268104))))

(assert (=> bs!1227526 (not (= lambda!268154 lambda!268102))))

(declare-fun bs!1227527 () Bool)

(assert (= bs!1227527 (and d!1702562 b!5292588)))

(assert (=> bs!1227527 (= lambda!268154 lambda!268098)))

(assert (=> bs!1227527 (not (= lambda!268154 lambda!268099))))

(assert (=> bs!1227526 (= (and (= (regOne!30368 r!7292) (regOne!30368 (regOne!30368 r!7292))) (= (regTwo!30368 r!7292) lt!2162731)) (= lambda!268154 lambda!268101))))

(assert (=> bs!1227526 (= (and (= (regOne!30368 r!7292) (regTwo!30368 (regOne!30368 r!7292))) (= (regTwo!30368 r!7292) lt!2162694)) (= lambda!268154 lambda!268103))))

(assert (=> d!1702562 true))

(assert (=> d!1702562 true))

(assert (=> d!1702562 true))

(assert (=> d!1702562 (= (isDefined!11742 (findConcatSeparation!1453 (regOne!30368 r!7292) (regTwo!30368 r!7292) Nil!60961 s!2326 s!2326)) (Exists!2109 lambda!268154))))

(declare-fun lt!2162905 () Unit!153230)

(declare-fun choose!39523 (Regex!14928 Regex!14928 List!61085) Unit!153230)

(assert (=> d!1702562 (= lt!2162905 (choose!39523 (regOne!30368 r!7292) (regTwo!30368 r!7292) s!2326))))

(assert (=> d!1702562 (validRegex!6664 (regOne!30368 r!7292))))

(assert (=> d!1702562 (= (lemmaFindConcatSeparationEquivalentToExists!1217 (regOne!30368 r!7292) (regTwo!30368 r!7292) s!2326) lt!2162905)))

(declare-fun bs!1227528 () Bool)

(assert (= bs!1227528 d!1702562))

(assert (=> bs!1227528 m!6330022))

(assert (=> bs!1227528 m!6330024))

(assert (=> bs!1227528 m!6330420))

(assert (=> bs!1227528 m!6330022))

(declare-fun m!6330442 () Bool)

(assert (=> bs!1227528 m!6330442))

(declare-fun m!6330444 () Bool)

(assert (=> bs!1227528 m!6330444))

(assert (=> b!5292588 d!1702562))

(declare-fun bs!1227529 () Bool)

(declare-fun d!1702564 () Bool)

(assert (= bs!1227529 (and d!1702564 d!1702562)))

(declare-fun lambda!268159 () Int)

(assert (=> bs!1227529 (= lambda!268159 lambda!268154)))

(declare-fun bs!1227530 () Bool)

(assert (= bs!1227530 (and d!1702564 b!5292582)))

(assert (=> bs!1227530 (not (= lambda!268159 lambda!268104))))

(assert (=> bs!1227530 (not (= lambda!268159 lambda!268102))))

(declare-fun bs!1227531 () Bool)

(assert (= bs!1227531 (and d!1702564 b!5292588)))

(assert (=> bs!1227531 (= lambda!268159 lambda!268098)))

(assert (=> bs!1227531 (not (= lambda!268159 lambda!268099))))

(assert (=> bs!1227530 (= (and (= (regOne!30368 r!7292) (regOne!30368 (regOne!30368 r!7292))) (= (regTwo!30368 r!7292) lt!2162731)) (= lambda!268159 lambda!268101))))

(assert (=> bs!1227530 (= (and (= (regOne!30368 r!7292) (regTwo!30368 (regOne!30368 r!7292))) (= (regTwo!30368 r!7292) lt!2162694)) (= lambda!268159 lambda!268103))))

(assert (=> d!1702564 true))

(assert (=> d!1702564 true))

(assert (=> d!1702564 true))

(declare-fun lambda!268160 () Int)

(assert (=> bs!1227529 (not (= lambda!268160 lambda!268154))))

(assert (=> bs!1227530 (= (and (= (regOne!30368 r!7292) (regTwo!30368 (regOne!30368 r!7292))) (= (regTwo!30368 r!7292) lt!2162694)) (= lambda!268160 lambda!268104))))

(assert (=> bs!1227530 (= (and (= (regOne!30368 r!7292) (regOne!30368 (regOne!30368 r!7292))) (= (regTwo!30368 r!7292) lt!2162731)) (= lambda!268160 lambda!268102))))

(declare-fun bs!1227532 () Bool)

(assert (= bs!1227532 d!1702564))

(assert (=> bs!1227532 (not (= lambda!268160 lambda!268159))))

(assert (=> bs!1227531 (not (= lambda!268160 lambda!268098))))

(assert (=> bs!1227531 (= lambda!268160 lambda!268099)))

(assert (=> bs!1227530 (not (= lambda!268160 lambda!268101))))

(assert (=> bs!1227530 (not (= lambda!268160 lambda!268103))))

(assert (=> d!1702564 true))

(assert (=> d!1702564 true))

(assert (=> d!1702564 true))

(assert (=> d!1702564 (= (Exists!2109 lambda!268159) (Exists!2109 lambda!268160))))

(declare-fun lt!2162908 () Unit!153230)

(declare-fun choose!39524 (Regex!14928 Regex!14928 List!61085) Unit!153230)

(assert (=> d!1702564 (= lt!2162908 (choose!39524 (regOne!30368 r!7292) (regTwo!30368 r!7292) s!2326))))

(assert (=> d!1702564 (validRegex!6664 (regOne!30368 r!7292))))

(assert (=> d!1702564 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!763 (regOne!30368 r!7292) (regTwo!30368 r!7292) s!2326) lt!2162908)))

(declare-fun m!6330446 () Bool)

(assert (=> bs!1227532 m!6330446))

(declare-fun m!6330448 () Bool)

(assert (=> bs!1227532 m!6330448))

(declare-fun m!6330450 () Bool)

(assert (=> bs!1227532 m!6330450))

(assert (=> bs!1227532 m!6330420))

(assert (=> b!5292588 d!1702564))

(declare-fun d!1702566 () Bool)

(declare-fun isEmpty!32918 (Option!15039) Bool)

(assert (=> d!1702566 (= (isDefined!11742 (findConcatSeparation!1453 (regOne!30368 r!7292) (regTwo!30368 r!7292) Nil!60961 s!2326 s!2326)) (not (isEmpty!32918 (findConcatSeparation!1453 (regOne!30368 r!7292) (regTwo!30368 r!7292) Nil!60961 s!2326 s!2326))))))

(declare-fun bs!1227533 () Bool)

(assert (= bs!1227533 d!1702566))

(assert (=> bs!1227533 m!6330022))

(declare-fun m!6330452 () Bool)

(assert (=> bs!1227533 m!6330452))

(assert (=> b!5292588 d!1702566))

(declare-fun d!1702568 () Bool)

(declare-fun lt!2162911 () Int)

(assert (=> d!1702568 (>= lt!2162911 0)))

(declare-fun e!3290273 () Int)

(assert (=> d!1702568 (= lt!2162911 e!3290273)))

(declare-fun c!918237 () Bool)

(assert (=> d!1702568 (= c!918237 (is-Cons!60959 (exprs!4812 lt!2162716)))))

(assert (=> d!1702568 (= (contextDepthTotal!69 lt!2162716) lt!2162911)))

(declare-fun b!5292888 () Bool)

(declare-fun regexDepthTotal!23 (Regex!14928) Int)

(assert (=> b!5292888 (= e!3290273 (+ (regexDepthTotal!23 (h!67407 (exprs!4812 lt!2162716))) (contextDepthTotal!69 (Context!8625 (t!374288 (exprs!4812 lt!2162716))))))))

(declare-fun b!5292889 () Bool)

(assert (=> b!5292889 (= e!3290273 1)))

(assert (= (and d!1702568 c!918237) b!5292888))

(assert (= (and d!1702568 (not c!918237)) b!5292889))

(declare-fun m!6330454 () Bool)

(assert (=> b!5292888 m!6330454))

(declare-fun m!6330456 () Bool)

(assert (=> b!5292888 m!6330456))

(assert (=> b!5292609 d!1702568))

(declare-fun d!1702570 () Bool)

(declare-fun lt!2162912 () Int)

(assert (=> d!1702570 (>= lt!2162912 0)))

(declare-fun e!3290274 () Int)

(assert (=> d!1702570 (= lt!2162912 e!3290274)))

(declare-fun c!918238 () Bool)

(assert (=> d!1702570 (= c!918238 (is-Cons!60959 (exprs!4812 (h!67408 zl!343))))))

(assert (=> d!1702570 (= (contextDepthTotal!69 (h!67408 zl!343)) lt!2162912)))

(declare-fun b!5292890 () Bool)

(assert (=> b!5292890 (= e!3290274 (+ (regexDepthTotal!23 (h!67407 (exprs!4812 (h!67408 zl!343)))) (contextDepthTotal!69 (Context!8625 (t!374288 (exprs!4812 (h!67408 zl!343)))))))))

(declare-fun b!5292891 () Bool)

(assert (=> b!5292891 (= e!3290274 1)))

(assert (= (and d!1702570 c!918238) b!5292890))

(assert (= (and d!1702570 (not c!918238)) b!5292891))

(declare-fun m!6330458 () Bool)

(assert (=> b!5292890 m!6330458))

(declare-fun m!6330460 () Bool)

(assert (=> b!5292890 m!6330460))

(assert (=> b!5292609 d!1702570))

(declare-fun bs!1227534 () Bool)

(declare-fun d!1702572 () Bool)

(assert (= bs!1227534 (and d!1702572 b!5292599)))

(declare-fun lambda!268163 () Int)

(assert (=> bs!1227534 (= lambda!268163 lambda!268105)))

(declare-fun bs!1227535 () Bool)

(assert (= bs!1227535 (and d!1702572 d!1702540)))

(assert (=> bs!1227535 (= lambda!268163 lambda!268142)))

(declare-fun bs!1227536 () Bool)

(assert (= bs!1227536 (and d!1702572 d!1702542)))

(assert (=> bs!1227536 (= lambda!268163 lambda!268145)))

(declare-fun bs!1227537 () Bool)

(assert (= bs!1227537 (and d!1702572 d!1702544)))

(assert (=> bs!1227537 (= lambda!268163 lambda!268148)))

(declare-fun b!5292912 () Bool)

(declare-fun e!3290287 () Regex!14928)

(assert (=> b!5292912 (= e!3290287 EmptyExpr!14928)))

(declare-fun b!5292913 () Bool)

(declare-fun e!3290290 () Bool)

(assert (=> b!5292913 (= e!3290290 (isEmpty!32913 (t!374288 (exprs!4812 (h!67408 zl!343)))))))

(declare-fun b!5292914 () Bool)

(declare-fun e!3290289 () Bool)

(declare-fun lt!2162915 () Regex!14928)

(declare-fun isConcat!369 (Regex!14928) Bool)

(assert (=> b!5292914 (= e!3290289 (isConcat!369 lt!2162915))))

(declare-fun b!5292915 () Bool)

(declare-fun e!3290292 () Bool)

(declare-fun e!3290291 () Bool)

(assert (=> b!5292915 (= e!3290292 e!3290291)))

(declare-fun c!918249 () Bool)

(assert (=> b!5292915 (= c!918249 (isEmpty!32913 (exprs!4812 (h!67408 zl!343))))))

(declare-fun b!5292916 () Bool)

(declare-fun isEmptyExpr!846 (Regex!14928) Bool)

(assert (=> b!5292916 (= e!3290291 (isEmptyExpr!846 lt!2162915))))

(assert (=> d!1702572 e!3290292))

(declare-fun res!2244911 () Bool)

(assert (=> d!1702572 (=> (not res!2244911) (not e!3290292))))

(assert (=> d!1702572 (= res!2244911 (validRegex!6664 lt!2162915))))

(declare-fun e!3290288 () Regex!14928)

(assert (=> d!1702572 (= lt!2162915 e!3290288)))

(declare-fun c!918247 () Bool)

(assert (=> d!1702572 (= c!918247 e!3290290)))

(declare-fun res!2244910 () Bool)

(assert (=> d!1702572 (=> (not res!2244910) (not e!3290290))))

(assert (=> d!1702572 (= res!2244910 (is-Cons!60959 (exprs!4812 (h!67408 zl!343))))))

(assert (=> d!1702572 (forall!14336 (exprs!4812 (h!67408 zl!343)) lambda!268163)))

(assert (=> d!1702572 (= (generalisedConcat!597 (exprs!4812 (h!67408 zl!343))) lt!2162915)))

(declare-fun b!5292917 () Bool)

(assert (=> b!5292917 (= e!3290288 e!3290287)))

(declare-fun c!918250 () Bool)

(assert (=> b!5292917 (= c!918250 (is-Cons!60959 (exprs!4812 (h!67408 zl!343))))))

(declare-fun b!5292918 () Bool)

(assert (=> b!5292918 (= e!3290287 (Concat!23773 (h!67407 (exprs!4812 (h!67408 zl!343))) (generalisedConcat!597 (t!374288 (exprs!4812 (h!67408 zl!343))))))))

(declare-fun b!5292919 () Bool)

(assert (=> b!5292919 (= e!3290291 e!3290289)))

(declare-fun c!918248 () Bool)

(assert (=> b!5292919 (= c!918248 (isEmpty!32913 (tail!10438 (exprs!4812 (h!67408 zl!343)))))))

(declare-fun b!5292920 () Bool)

(assert (=> b!5292920 (= e!3290289 (= lt!2162915 (head!11341 (exprs!4812 (h!67408 zl!343)))))))

(declare-fun b!5292921 () Bool)

(assert (=> b!5292921 (= e!3290288 (h!67407 (exprs!4812 (h!67408 zl!343))))))

(assert (= (and d!1702572 res!2244910) b!5292913))

(assert (= (and d!1702572 c!918247) b!5292921))

(assert (= (and d!1702572 (not c!918247)) b!5292917))

(assert (= (and b!5292917 c!918250) b!5292918))

(assert (= (and b!5292917 (not c!918250)) b!5292912))

(assert (= (and d!1702572 res!2244911) b!5292915))

(assert (= (and b!5292915 c!918249) b!5292916))

(assert (= (and b!5292915 (not c!918249)) b!5292919))

(assert (= (and b!5292919 c!918248) b!5292920))

(assert (= (and b!5292919 (not c!918248)) b!5292914))

(declare-fun m!6330462 () Bool)

(assert (=> b!5292919 m!6330462))

(assert (=> b!5292919 m!6330462))

(declare-fun m!6330464 () Bool)

(assert (=> b!5292919 m!6330464))

(declare-fun m!6330466 () Bool)

(assert (=> b!5292916 m!6330466))

(declare-fun m!6330468 () Bool)

(assert (=> d!1702572 m!6330468))

(declare-fun m!6330470 () Bool)

(assert (=> d!1702572 m!6330470))

(declare-fun m!6330472 () Bool)

(assert (=> b!5292915 m!6330472))

(declare-fun m!6330474 () Bool)

(assert (=> b!5292914 m!6330474))

(assert (=> b!5292913 m!6330018))

(assert (=> b!5292918 m!6330114))

(declare-fun m!6330476 () Bool)

(assert (=> b!5292920 m!6330476))

(assert (=> b!5292589 d!1702572))

(assert (=> b!5292593 d!1702552))

(declare-fun d!1702574 () Bool)

(declare-fun c!918251 () Bool)

(assert (=> d!1702574 (= c!918251 (isEmpty!32917 (t!374290 s!2326)))))

(declare-fun e!3290293 () Bool)

(assert (=> d!1702574 (= (matchZipper!1172 lt!2162699 (t!374290 s!2326)) e!3290293)))

(declare-fun b!5292922 () Bool)

(assert (=> b!5292922 (= e!3290293 (nullableZipper!1311 lt!2162699))))

(declare-fun b!5292923 () Bool)

(assert (=> b!5292923 (= e!3290293 (matchZipper!1172 (derivationStepZipper!1171 lt!2162699 (head!11340 (t!374290 s!2326))) (tail!10437 (t!374290 s!2326))))))

(assert (= (and d!1702574 c!918251) b!5292922))

(assert (= (and d!1702574 (not c!918251)) b!5292923))

(assert (=> d!1702574 m!6330344))

(declare-fun m!6330478 () Bool)

(assert (=> b!5292922 m!6330478))

(assert (=> b!5292923 m!6330348))

(assert (=> b!5292923 m!6330348))

(declare-fun m!6330480 () Bool)

(assert (=> b!5292923 m!6330480))

(assert (=> b!5292923 m!6330352))

(assert (=> b!5292923 m!6330480))

(assert (=> b!5292923 m!6330352))

(declare-fun m!6330482 () Bool)

(assert (=> b!5292923 m!6330482))

(assert (=> b!5292593 d!1702574))

(declare-fun d!1702576 () Bool)

(declare-fun c!918252 () Bool)

(assert (=> d!1702576 (= c!918252 (isEmpty!32917 (t!374290 s!2326)))))

(declare-fun e!3290294 () Bool)

(assert (=> d!1702576 (= (matchZipper!1172 lt!2162718 (t!374290 s!2326)) e!3290294)))

(declare-fun b!5292924 () Bool)

(assert (=> b!5292924 (= e!3290294 (nullableZipper!1311 lt!2162718))))

(declare-fun b!5292925 () Bool)

(assert (=> b!5292925 (= e!3290294 (matchZipper!1172 (derivationStepZipper!1171 lt!2162718 (head!11340 (t!374290 s!2326))) (tail!10437 (t!374290 s!2326))))))

(assert (= (and d!1702576 c!918252) b!5292924))

(assert (= (and d!1702576 (not c!918252)) b!5292925))

(assert (=> d!1702576 m!6330344))

(declare-fun m!6330484 () Bool)

(assert (=> b!5292924 m!6330484))

(assert (=> b!5292925 m!6330348))

(assert (=> b!5292925 m!6330348))

(declare-fun m!6330486 () Bool)

(assert (=> b!5292925 m!6330486))

(assert (=> b!5292925 m!6330352))

(assert (=> b!5292925 m!6330486))

(assert (=> b!5292925 m!6330352))

(declare-fun m!6330488 () Bool)

(assert (=> b!5292925 m!6330488))

(assert (=> b!5292593 d!1702576))

(declare-fun d!1702578 () Bool)

(declare-fun e!3290295 () Bool)

(assert (=> d!1702578 (= (matchZipper!1172 (set.union lt!2162718 lt!2162739) (t!374290 s!2326)) e!3290295)))

(declare-fun res!2244912 () Bool)

(assert (=> d!1702578 (=> res!2244912 e!3290295)))

(assert (=> d!1702578 (= res!2244912 (matchZipper!1172 lt!2162718 (t!374290 s!2326)))))

(declare-fun lt!2162916 () Unit!153230)

(assert (=> d!1702578 (= lt!2162916 (choose!39520 lt!2162718 lt!2162739 (t!374290 s!2326)))))

(assert (=> d!1702578 (= (lemmaZipperConcatMatchesSameAsBothZippers!165 lt!2162718 lt!2162739 (t!374290 s!2326)) lt!2162916)))

(declare-fun b!5292926 () Bool)

(assert (=> b!5292926 (= e!3290295 (matchZipper!1172 lt!2162739 (t!374290 s!2326)))))

(assert (= (and d!1702578 (not res!2244912)) b!5292926))

(declare-fun m!6330490 () Bool)

(assert (=> d!1702578 m!6330490))

(assert (=> d!1702578 m!6330068))

(declare-fun m!6330492 () Bool)

(assert (=> d!1702578 m!6330492))

(assert (=> b!5292926 m!6330050))

(assert (=> b!5292593 d!1702578))

(declare-fun b!5292927 () Bool)

(declare-fun e!3290297 () (Set Context!8624))

(assert (=> b!5292927 (= e!3290297 (as set.empty (Set Context!8624)))))

(declare-fun d!1702580 () Bool)

(declare-fun c!918253 () Bool)

(declare-fun e!3290298 () Bool)

(assert (=> d!1702580 (= c!918253 e!3290298)))

(declare-fun res!2244913 () Bool)

(assert (=> d!1702580 (=> (not res!2244913) (not e!3290298))))

(assert (=> d!1702580 (= res!2244913 (is-Cons!60959 (exprs!4812 lt!2162703)))))

(declare-fun e!3290296 () (Set Context!8624))

(assert (=> d!1702580 (= (derivationStepZipperUp!300 lt!2162703 (h!67409 s!2326)) e!3290296)))

(declare-fun b!5292928 () Bool)

(assert (=> b!5292928 (= e!3290298 (nullable!5097 (h!67407 (exprs!4812 lt!2162703))))))

(declare-fun bm!377183 () Bool)

(declare-fun call!377188 () (Set Context!8624))

(assert (=> bm!377183 (= call!377188 (derivationStepZipperDown!376 (h!67407 (exprs!4812 lt!2162703)) (Context!8625 (t!374288 (exprs!4812 lt!2162703))) (h!67409 s!2326)))))

(declare-fun b!5292929 () Bool)

(assert (=> b!5292929 (= e!3290297 call!377188)))

(declare-fun b!5292930 () Bool)

(assert (=> b!5292930 (= e!3290296 e!3290297)))

(declare-fun c!918254 () Bool)

(assert (=> b!5292930 (= c!918254 (is-Cons!60959 (exprs!4812 lt!2162703)))))

(declare-fun b!5292931 () Bool)

(assert (=> b!5292931 (= e!3290296 (set.union call!377188 (derivationStepZipperUp!300 (Context!8625 (t!374288 (exprs!4812 lt!2162703))) (h!67409 s!2326))))))

(assert (= (and d!1702580 res!2244913) b!5292928))

(assert (= (and d!1702580 c!918253) b!5292931))

(assert (= (and d!1702580 (not c!918253)) b!5292930))

(assert (= (and b!5292930 c!918254) b!5292929))

(assert (= (and b!5292930 (not c!918254)) b!5292927))

(assert (= (or b!5292931 b!5292929) bm!377183))

(declare-fun m!6330494 () Bool)

(assert (=> b!5292928 m!6330494))

(declare-fun m!6330496 () Bool)

(assert (=> bm!377183 m!6330496))

(declare-fun m!6330498 () Bool)

(assert (=> b!5292931 m!6330498))

(assert (=> b!5292611 d!1702580))

(declare-fun d!1702582 () Bool)

(declare-fun nullableFct!1463 (Regex!14928) Bool)

(assert (=> d!1702582 (= (nullable!5097 (h!67407 (exprs!4812 (h!67408 zl!343)))) (nullableFct!1463 (h!67407 (exprs!4812 (h!67408 zl!343)))))))

(declare-fun bs!1227538 () Bool)

(assert (= bs!1227538 d!1702582))

(declare-fun m!6330500 () Bool)

(assert (=> bs!1227538 m!6330500))

(assert (=> b!5292611 d!1702582))

(declare-fun b!5292932 () Bool)

(declare-fun e!3290300 () (Set Context!8624))

(assert (=> b!5292932 (= e!3290300 (as set.empty (Set Context!8624)))))

(declare-fun d!1702584 () Bool)

(declare-fun c!918255 () Bool)

(declare-fun e!3290301 () Bool)

(assert (=> d!1702584 (= c!918255 e!3290301)))

(declare-fun res!2244914 () Bool)

(assert (=> d!1702584 (=> (not res!2244914) (not e!3290301))))

(assert (=> d!1702584 (= res!2244914 (is-Cons!60959 (exprs!4812 (Context!8625 (Cons!60959 (h!67407 (exprs!4812 (h!67408 zl!343))) (t!374288 (exprs!4812 (h!67408 zl!343))))))))))

(declare-fun e!3290299 () (Set Context!8624))

(assert (=> d!1702584 (= (derivationStepZipperUp!300 (Context!8625 (Cons!60959 (h!67407 (exprs!4812 (h!67408 zl!343))) (t!374288 (exprs!4812 (h!67408 zl!343))))) (h!67409 s!2326)) e!3290299)))

(declare-fun b!5292933 () Bool)

(assert (=> b!5292933 (= e!3290301 (nullable!5097 (h!67407 (exprs!4812 (Context!8625 (Cons!60959 (h!67407 (exprs!4812 (h!67408 zl!343))) (t!374288 (exprs!4812 (h!67408 zl!343)))))))))))

(declare-fun bm!377184 () Bool)

(declare-fun call!377189 () (Set Context!8624))

(assert (=> bm!377184 (= call!377189 (derivationStepZipperDown!376 (h!67407 (exprs!4812 (Context!8625 (Cons!60959 (h!67407 (exprs!4812 (h!67408 zl!343))) (t!374288 (exprs!4812 (h!67408 zl!343))))))) (Context!8625 (t!374288 (exprs!4812 (Context!8625 (Cons!60959 (h!67407 (exprs!4812 (h!67408 zl!343))) (t!374288 (exprs!4812 (h!67408 zl!343)))))))) (h!67409 s!2326)))))

(declare-fun b!5292934 () Bool)

(assert (=> b!5292934 (= e!3290300 call!377189)))

(declare-fun b!5292935 () Bool)

(assert (=> b!5292935 (= e!3290299 e!3290300)))

(declare-fun c!918256 () Bool)

(assert (=> b!5292935 (= c!918256 (is-Cons!60959 (exprs!4812 (Context!8625 (Cons!60959 (h!67407 (exprs!4812 (h!67408 zl!343))) (t!374288 (exprs!4812 (h!67408 zl!343))))))))))

(declare-fun b!5292936 () Bool)

(assert (=> b!5292936 (= e!3290299 (set.union call!377189 (derivationStepZipperUp!300 (Context!8625 (t!374288 (exprs!4812 (Context!8625 (Cons!60959 (h!67407 (exprs!4812 (h!67408 zl!343))) (t!374288 (exprs!4812 (h!67408 zl!343)))))))) (h!67409 s!2326))))))

(assert (= (and d!1702584 res!2244914) b!5292933))

(assert (= (and d!1702584 c!918255) b!5292936))

(assert (= (and d!1702584 (not c!918255)) b!5292935))

(assert (= (and b!5292935 c!918256) b!5292934))

(assert (= (and b!5292935 (not c!918256)) b!5292932))

(assert (= (or b!5292936 b!5292934) bm!377184))

(declare-fun m!6330502 () Bool)

(assert (=> b!5292933 m!6330502))

(declare-fun m!6330504 () Bool)

(assert (=> bm!377184 m!6330504))

(declare-fun m!6330506 () Bool)

(assert (=> b!5292936 m!6330506))

(assert (=> b!5292611 d!1702584))

(declare-fun d!1702586 () Bool)

(assert (=> d!1702586 (= (flatMap!655 z!1189 lambda!268100) (dynLambda!24104 lambda!268100 (h!67408 zl!343)))))

(declare-fun lt!2162917 () Unit!153230)

(assert (=> d!1702586 (= lt!2162917 (choose!39521 z!1189 (h!67408 zl!343) lambda!268100))))

(assert (=> d!1702586 (= z!1189 (set.insert (h!67408 zl!343) (as set.empty (Set Context!8624))))))

(assert (=> d!1702586 (= (lemmaFlatMapOnSingletonSet!187 z!1189 (h!67408 zl!343) lambda!268100) lt!2162917)))

(declare-fun b_lambda!204103 () Bool)

(assert (=> (not b_lambda!204103) (not d!1702586)))

(declare-fun bs!1227539 () Bool)

(assert (= bs!1227539 d!1702586))

(assert (=> bs!1227539 m!6330140))

(declare-fun m!6330508 () Bool)

(assert (=> bs!1227539 m!6330508))

(declare-fun m!6330510 () Bool)

(assert (=> bs!1227539 m!6330510))

(declare-fun m!6330512 () Bool)

(assert (=> bs!1227539 m!6330512))

(assert (=> b!5292611 d!1702586))

(declare-fun b!5292937 () Bool)

(declare-fun e!3290303 () (Set Context!8624))

(assert (=> b!5292937 (= e!3290303 (as set.empty (Set Context!8624)))))

(declare-fun d!1702588 () Bool)

(declare-fun c!918257 () Bool)

(declare-fun e!3290304 () Bool)

(assert (=> d!1702588 (= c!918257 e!3290304)))

(declare-fun res!2244915 () Bool)

(assert (=> d!1702588 (=> (not res!2244915) (not e!3290304))))

(assert (=> d!1702588 (= res!2244915 (is-Cons!60959 (exprs!4812 (h!67408 zl!343))))))

(declare-fun e!3290302 () (Set Context!8624))

(assert (=> d!1702588 (= (derivationStepZipperUp!300 (h!67408 zl!343) (h!67409 s!2326)) e!3290302)))

(declare-fun b!5292938 () Bool)

(assert (=> b!5292938 (= e!3290304 (nullable!5097 (h!67407 (exprs!4812 (h!67408 zl!343)))))))

(declare-fun bm!377185 () Bool)

(declare-fun call!377190 () (Set Context!8624))

(assert (=> bm!377185 (= call!377190 (derivationStepZipperDown!376 (h!67407 (exprs!4812 (h!67408 zl!343))) (Context!8625 (t!374288 (exprs!4812 (h!67408 zl!343)))) (h!67409 s!2326)))))

(declare-fun b!5292939 () Bool)

(assert (=> b!5292939 (= e!3290303 call!377190)))

(declare-fun b!5292940 () Bool)

(assert (=> b!5292940 (= e!3290302 e!3290303)))

(declare-fun c!918258 () Bool)

(assert (=> b!5292940 (= c!918258 (is-Cons!60959 (exprs!4812 (h!67408 zl!343))))))

(declare-fun b!5292941 () Bool)

(assert (=> b!5292941 (= e!3290302 (set.union call!377190 (derivationStepZipperUp!300 (Context!8625 (t!374288 (exprs!4812 (h!67408 zl!343)))) (h!67409 s!2326))))))

(assert (= (and d!1702588 res!2244915) b!5292938))

(assert (= (and d!1702588 c!918257) b!5292941))

(assert (= (and d!1702588 (not c!918257)) b!5292940))

(assert (= (and b!5292940 c!918258) b!5292939))

(assert (= (and b!5292940 (not c!918258)) b!5292937))

(assert (= (or b!5292941 b!5292939) bm!377185))

(assert (=> b!5292938 m!6330136))

(declare-fun m!6330514 () Bool)

(assert (=> bm!377185 m!6330514))

(declare-fun m!6330516 () Bool)

(assert (=> b!5292941 m!6330516))

(assert (=> b!5292611 d!1702588))

(declare-fun bm!377198 () Bool)

(declare-fun call!377206 () (Set Context!8624))

(declare-fun call!377207 () (Set Context!8624))

(assert (=> bm!377198 (= call!377206 call!377207)))

(declare-fun b!5292964 () Bool)

(declare-fun c!918273 () Bool)

(declare-fun e!3290317 () Bool)

(assert (=> b!5292964 (= c!918273 e!3290317)))

(declare-fun res!2244918 () Bool)

(assert (=> b!5292964 (=> (not res!2244918) (not e!3290317))))

(assert (=> b!5292964 (= res!2244918 (is-Concat!23773 (h!67407 (exprs!4812 (h!67408 zl!343)))))))

(declare-fun e!3290318 () (Set Context!8624))

(declare-fun e!3290319 () (Set Context!8624))

(assert (=> b!5292964 (= e!3290318 e!3290319)))

(declare-fun b!5292965 () Bool)

(declare-fun e!3290320 () (Set Context!8624))

(declare-fun call!377208 () (Set Context!8624))

(assert (=> b!5292965 (= e!3290320 call!377208)))

(declare-fun b!5292966 () Bool)

(declare-fun e!3290322 () (Set Context!8624))

(assert (=> b!5292966 (= e!3290322 call!377208)))

(declare-fun b!5292967 () Bool)

(declare-fun e!3290321 () (Set Context!8624))

(assert (=> b!5292967 (= e!3290321 (set.insert lt!2162703 (as set.empty (Set Context!8624))))))

(declare-fun c!918272 () Bool)

(declare-fun call!377205 () (Set Context!8624))

(declare-fun call!377203 () List!61083)

(declare-fun bm!377199 () Bool)

(assert (=> bm!377199 (= call!377205 (derivationStepZipperDown!376 (ite c!918272 (regOne!30369 (h!67407 (exprs!4812 (h!67408 zl!343)))) (regOne!30368 (h!67407 (exprs!4812 (h!67408 zl!343))))) (ite c!918272 lt!2162703 (Context!8625 call!377203)) (h!67409 s!2326)))))

(declare-fun bm!377200 () Bool)

(declare-fun call!377204 () List!61083)

(declare-fun c!918269 () Bool)

(assert (=> bm!377200 (= call!377207 (derivationStepZipperDown!376 (ite c!918272 (regTwo!30369 (h!67407 (exprs!4812 (h!67408 zl!343)))) (ite c!918273 (regTwo!30368 (h!67407 (exprs!4812 (h!67408 zl!343)))) (ite c!918269 (regOne!30368 (h!67407 (exprs!4812 (h!67408 zl!343)))) (reg!15257 (h!67407 (exprs!4812 (h!67408 zl!343))))))) (ite (or c!918272 c!918273) lt!2162703 (Context!8625 call!377204)) (h!67409 s!2326)))))

(declare-fun b!5292969 () Bool)

(assert (=> b!5292969 (= e!3290319 (set.union call!377205 call!377206))))

(declare-fun bm!377201 () Bool)

(assert (=> bm!377201 (= call!377208 call!377206)))

(declare-fun b!5292970 () Bool)

(assert (=> b!5292970 (= e!3290321 e!3290318)))

(assert (=> b!5292970 (= c!918272 (is-Union!14928 (h!67407 (exprs!4812 (h!67408 zl!343)))))))

(declare-fun b!5292971 () Bool)

(assert (=> b!5292971 (= e!3290322 (as set.empty (Set Context!8624)))))

(declare-fun bm!377202 () Bool)

(declare-fun $colon$colon!1361 (List!61083 Regex!14928) List!61083)

(assert (=> bm!377202 (= call!377203 ($colon$colon!1361 (exprs!4812 lt!2162703) (ite (or c!918273 c!918269) (regTwo!30368 (h!67407 (exprs!4812 (h!67408 zl!343)))) (h!67407 (exprs!4812 (h!67408 zl!343))))))))

(declare-fun b!5292972 () Bool)

(assert (=> b!5292972 (= e!3290319 e!3290320)))

(assert (=> b!5292972 (= c!918269 (is-Concat!23773 (h!67407 (exprs!4812 (h!67408 zl!343)))))))

(declare-fun b!5292973 () Bool)

(assert (=> b!5292973 (= e!3290318 (set.union call!377205 call!377207))))

(declare-fun b!5292968 () Bool)

(declare-fun c!918271 () Bool)

(assert (=> b!5292968 (= c!918271 (is-Star!14928 (h!67407 (exprs!4812 (h!67408 zl!343)))))))

(assert (=> b!5292968 (= e!3290320 e!3290322)))

(declare-fun d!1702590 () Bool)

(declare-fun c!918270 () Bool)

(assert (=> d!1702590 (= c!918270 (and (is-ElementMatch!14928 (h!67407 (exprs!4812 (h!67408 zl!343)))) (= (c!918186 (h!67407 (exprs!4812 (h!67408 zl!343)))) (h!67409 s!2326))))))

(assert (=> d!1702590 (= (derivationStepZipperDown!376 (h!67407 (exprs!4812 (h!67408 zl!343))) lt!2162703 (h!67409 s!2326)) e!3290321)))

(declare-fun b!5292974 () Bool)

(assert (=> b!5292974 (= e!3290317 (nullable!5097 (regOne!30368 (h!67407 (exprs!4812 (h!67408 zl!343))))))))

(declare-fun bm!377203 () Bool)

(assert (=> bm!377203 (= call!377204 call!377203)))

(assert (= (and d!1702590 c!918270) b!5292967))

(assert (= (and d!1702590 (not c!918270)) b!5292970))

(assert (= (and b!5292970 c!918272) b!5292973))

(assert (= (and b!5292970 (not c!918272)) b!5292964))

(assert (= (and b!5292964 res!2244918) b!5292974))

(assert (= (and b!5292964 c!918273) b!5292969))

(assert (= (and b!5292964 (not c!918273)) b!5292972))

(assert (= (and b!5292972 c!918269) b!5292965))

(assert (= (and b!5292972 (not c!918269)) b!5292968))

(assert (= (and b!5292968 c!918271) b!5292966))

(assert (= (and b!5292968 (not c!918271)) b!5292971))

(assert (= (or b!5292965 b!5292966) bm!377203))

(assert (= (or b!5292965 b!5292966) bm!377201))

(assert (= (or b!5292969 bm!377203) bm!377202))

(assert (= (or b!5292969 bm!377201) bm!377198))

(assert (= (or b!5292973 bm!377198) bm!377200))

(assert (= (or b!5292973 b!5292969) bm!377199))

(declare-fun m!6330518 () Bool)

(assert (=> b!5292967 m!6330518))

(declare-fun m!6330520 () Bool)

(assert (=> bm!377199 m!6330520))

(declare-fun m!6330522 () Bool)

(assert (=> bm!377200 m!6330522))

(declare-fun m!6330524 () Bool)

(assert (=> bm!377202 m!6330524))

(declare-fun m!6330526 () Bool)

(assert (=> b!5292974 m!6330526))

(assert (=> b!5292611 d!1702590))

(declare-fun d!1702592 () Bool)

(assert (=> d!1702592 (= (flatMap!655 z!1189 lambda!268100) (choose!39519 z!1189 lambda!268100))))

(declare-fun bs!1227540 () Bool)

(assert (= bs!1227540 d!1702592))

(declare-fun m!6330528 () Bool)

(assert (=> bs!1227540 m!6330528))

(assert (=> b!5292611 d!1702592))

(declare-fun d!1702594 () Bool)

(declare-fun e!3290325 () Bool)

(assert (=> d!1702594 e!3290325))

(declare-fun res!2244921 () Bool)

(assert (=> d!1702594 (=> (not res!2244921) (not e!3290325))))

(declare-fun lt!2162920 () List!61084)

(declare-fun noDuplicate!1266 (List!61084) Bool)

(assert (=> d!1702594 (= res!2244921 (noDuplicate!1266 lt!2162920))))

(declare-fun choose!39525 ((Set Context!8624)) List!61084)

(assert (=> d!1702594 (= lt!2162920 (choose!39525 z!1189))))

(assert (=> d!1702594 (= (toList!8712 z!1189) lt!2162920)))

(declare-fun b!5292977 () Bool)

(declare-fun content!10854 (List!61084) (Set Context!8624))

(assert (=> b!5292977 (= e!3290325 (= (content!10854 lt!2162920) z!1189))))

(assert (= (and d!1702594 res!2244921) b!5292977))

(declare-fun m!6330530 () Bool)

(assert (=> d!1702594 m!6330530))

(declare-fun m!6330532 () Bool)

(assert (=> d!1702594 m!6330532))

(declare-fun m!6330534 () Bool)

(assert (=> b!5292977 m!6330534))

(assert (=> b!5292591 d!1702594))

(declare-fun d!1702596 () Bool)

(declare-fun c!918274 () Bool)

(assert (=> d!1702596 (= c!918274 (isEmpty!32917 (t!374290 s!2326)))))

(declare-fun e!3290326 () Bool)

(assert (=> d!1702596 (= (matchZipper!1172 lt!2162739 (t!374290 s!2326)) e!3290326)))

(declare-fun b!5292978 () Bool)

(assert (=> b!5292978 (= e!3290326 (nullableZipper!1311 lt!2162739))))

(declare-fun b!5292979 () Bool)

(assert (=> b!5292979 (= e!3290326 (matchZipper!1172 (derivationStepZipper!1171 lt!2162739 (head!11340 (t!374290 s!2326))) (tail!10437 (t!374290 s!2326))))))

(assert (= (and d!1702596 c!918274) b!5292978))

(assert (= (and d!1702596 (not c!918274)) b!5292979))

(assert (=> d!1702596 m!6330344))

(declare-fun m!6330536 () Bool)

(assert (=> b!5292978 m!6330536))

(assert (=> b!5292979 m!6330348))

(assert (=> b!5292979 m!6330348))

(declare-fun m!6330538 () Bool)

(assert (=> b!5292979 m!6330538))

(assert (=> b!5292979 m!6330352))

(assert (=> b!5292979 m!6330538))

(assert (=> b!5292979 m!6330352))

(declare-fun m!6330540 () Bool)

(assert (=> b!5292979 m!6330540))

(assert (=> b!5292612 d!1702596))

(declare-fun bm!377204 () Bool)

(declare-fun call!377212 () (Set Context!8624))

(declare-fun call!377213 () (Set Context!8624))

(assert (=> bm!377204 (= call!377212 call!377213)))

(declare-fun b!5292980 () Bool)

(declare-fun c!918279 () Bool)

(declare-fun e!3290327 () Bool)

(assert (=> b!5292980 (= c!918279 e!3290327)))

(declare-fun res!2244922 () Bool)

(assert (=> b!5292980 (=> (not res!2244922) (not e!3290327))))

(assert (=> b!5292980 (= res!2244922 (is-Concat!23773 (regTwo!30368 (regOne!30368 r!7292))))))

(declare-fun e!3290328 () (Set Context!8624))

(declare-fun e!3290329 () (Set Context!8624))

(assert (=> b!5292980 (= e!3290328 e!3290329)))

(declare-fun b!5292981 () Bool)

(declare-fun e!3290330 () (Set Context!8624))

(declare-fun call!377214 () (Set Context!8624))

(assert (=> b!5292981 (= e!3290330 call!377214)))

(declare-fun b!5292982 () Bool)

(declare-fun e!3290332 () (Set Context!8624))

(assert (=> b!5292982 (= e!3290332 call!377214)))

(declare-fun b!5292983 () Bool)

(declare-fun e!3290331 () (Set Context!8624))

(assert (=> b!5292983 (= e!3290331 (set.insert lt!2162703 (as set.empty (Set Context!8624))))))

(declare-fun c!918278 () Bool)

(declare-fun call!377209 () List!61083)

(declare-fun bm!377205 () Bool)

(declare-fun call!377211 () (Set Context!8624))

(assert (=> bm!377205 (= call!377211 (derivationStepZipperDown!376 (ite c!918278 (regOne!30369 (regTwo!30368 (regOne!30368 r!7292))) (regOne!30368 (regTwo!30368 (regOne!30368 r!7292)))) (ite c!918278 lt!2162703 (Context!8625 call!377209)) (h!67409 s!2326)))))

(declare-fun bm!377206 () Bool)

(declare-fun c!918275 () Bool)

(declare-fun call!377210 () List!61083)

(assert (=> bm!377206 (= call!377213 (derivationStepZipperDown!376 (ite c!918278 (regTwo!30369 (regTwo!30368 (regOne!30368 r!7292))) (ite c!918279 (regTwo!30368 (regTwo!30368 (regOne!30368 r!7292))) (ite c!918275 (regOne!30368 (regTwo!30368 (regOne!30368 r!7292))) (reg!15257 (regTwo!30368 (regOne!30368 r!7292)))))) (ite (or c!918278 c!918279) lt!2162703 (Context!8625 call!377210)) (h!67409 s!2326)))))

(declare-fun b!5292985 () Bool)

(assert (=> b!5292985 (= e!3290329 (set.union call!377211 call!377212))))

(declare-fun bm!377207 () Bool)

(assert (=> bm!377207 (= call!377214 call!377212)))

(declare-fun b!5292986 () Bool)

(assert (=> b!5292986 (= e!3290331 e!3290328)))

(assert (=> b!5292986 (= c!918278 (is-Union!14928 (regTwo!30368 (regOne!30368 r!7292))))))

(declare-fun b!5292987 () Bool)

(assert (=> b!5292987 (= e!3290332 (as set.empty (Set Context!8624)))))

(declare-fun bm!377208 () Bool)

(assert (=> bm!377208 (= call!377209 ($colon$colon!1361 (exprs!4812 lt!2162703) (ite (or c!918279 c!918275) (regTwo!30368 (regTwo!30368 (regOne!30368 r!7292))) (regTwo!30368 (regOne!30368 r!7292)))))))

(declare-fun b!5292988 () Bool)

(assert (=> b!5292988 (= e!3290329 e!3290330)))

(assert (=> b!5292988 (= c!918275 (is-Concat!23773 (regTwo!30368 (regOne!30368 r!7292))))))

(declare-fun b!5292989 () Bool)

(assert (=> b!5292989 (= e!3290328 (set.union call!377211 call!377213))))

(declare-fun b!5292984 () Bool)

(declare-fun c!918277 () Bool)

(assert (=> b!5292984 (= c!918277 (is-Star!14928 (regTwo!30368 (regOne!30368 r!7292))))))

(assert (=> b!5292984 (= e!3290330 e!3290332)))

(declare-fun d!1702598 () Bool)

(declare-fun c!918276 () Bool)

(assert (=> d!1702598 (= c!918276 (and (is-ElementMatch!14928 (regTwo!30368 (regOne!30368 r!7292))) (= (c!918186 (regTwo!30368 (regOne!30368 r!7292))) (h!67409 s!2326))))))

(assert (=> d!1702598 (= (derivationStepZipperDown!376 (regTwo!30368 (regOne!30368 r!7292)) lt!2162703 (h!67409 s!2326)) e!3290331)))

(declare-fun b!5292990 () Bool)

(assert (=> b!5292990 (= e!3290327 (nullable!5097 (regOne!30368 (regTwo!30368 (regOne!30368 r!7292)))))))

(declare-fun bm!377209 () Bool)

(assert (=> bm!377209 (= call!377210 call!377209)))

(assert (= (and d!1702598 c!918276) b!5292983))

(assert (= (and d!1702598 (not c!918276)) b!5292986))

(assert (= (and b!5292986 c!918278) b!5292989))

(assert (= (and b!5292986 (not c!918278)) b!5292980))

(assert (= (and b!5292980 res!2244922) b!5292990))

(assert (= (and b!5292980 c!918279) b!5292985))

(assert (= (and b!5292980 (not c!918279)) b!5292988))

(assert (= (and b!5292988 c!918275) b!5292981))

(assert (= (and b!5292988 (not c!918275)) b!5292984))

(assert (= (and b!5292984 c!918277) b!5292982))

(assert (= (and b!5292984 (not c!918277)) b!5292987))

(assert (= (or b!5292981 b!5292982) bm!377209))

(assert (= (or b!5292981 b!5292982) bm!377207))

(assert (= (or b!5292985 bm!377209) bm!377208))

(assert (= (or b!5292985 bm!377207) bm!377204))

(assert (= (or b!5292989 bm!377204) bm!377206))

(assert (= (or b!5292989 b!5292985) bm!377205))

(assert (=> b!5292983 m!6330518))

(declare-fun m!6330542 () Bool)

(assert (=> bm!377205 m!6330542))

(declare-fun m!6330544 () Bool)

(assert (=> bm!377206 m!6330544))

(declare-fun m!6330546 () Bool)

(assert (=> bm!377208 m!6330546))

(declare-fun m!6330548 () Bool)

(assert (=> b!5292990 m!6330548))

(assert (=> b!5292614 d!1702598))

(declare-fun bm!377210 () Bool)

(declare-fun call!377218 () (Set Context!8624))

(declare-fun call!377219 () (Set Context!8624))

(assert (=> bm!377210 (= call!377218 call!377219)))

(declare-fun b!5292991 () Bool)

(declare-fun c!918284 () Bool)

(declare-fun e!3290333 () Bool)

(assert (=> b!5292991 (= c!918284 e!3290333)))

(declare-fun res!2244923 () Bool)

(assert (=> b!5292991 (=> (not res!2244923) (not e!3290333))))

(assert (=> b!5292991 (= res!2244923 (is-Concat!23773 (regOne!30368 (regOne!30368 r!7292))))))

(declare-fun e!3290334 () (Set Context!8624))

(declare-fun e!3290335 () (Set Context!8624))

(assert (=> b!5292991 (= e!3290334 e!3290335)))

(declare-fun b!5292992 () Bool)

(declare-fun e!3290336 () (Set Context!8624))

(declare-fun call!377220 () (Set Context!8624))

(assert (=> b!5292992 (= e!3290336 call!377220)))

(declare-fun b!5292993 () Bool)

(declare-fun e!3290338 () (Set Context!8624))

(assert (=> b!5292993 (= e!3290338 call!377220)))

(declare-fun b!5292994 () Bool)

(declare-fun e!3290337 () (Set Context!8624))

(assert (=> b!5292994 (= e!3290337 (set.insert lt!2162715 (as set.empty (Set Context!8624))))))

(declare-fun call!377217 () (Set Context!8624))

(declare-fun bm!377211 () Bool)

(declare-fun c!918283 () Bool)

(declare-fun call!377215 () List!61083)

(assert (=> bm!377211 (= call!377217 (derivationStepZipperDown!376 (ite c!918283 (regOne!30369 (regOne!30368 (regOne!30368 r!7292))) (regOne!30368 (regOne!30368 (regOne!30368 r!7292)))) (ite c!918283 lt!2162715 (Context!8625 call!377215)) (h!67409 s!2326)))))

(declare-fun call!377216 () List!61083)

(declare-fun c!918280 () Bool)

(declare-fun bm!377212 () Bool)

(assert (=> bm!377212 (= call!377219 (derivationStepZipperDown!376 (ite c!918283 (regTwo!30369 (regOne!30368 (regOne!30368 r!7292))) (ite c!918284 (regTwo!30368 (regOne!30368 (regOne!30368 r!7292))) (ite c!918280 (regOne!30368 (regOne!30368 (regOne!30368 r!7292))) (reg!15257 (regOne!30368 (regOne!30368 r!7292)))))) (ite (or c!918283 c!918284) lt!2162715 (Context!8625 call!377216)) (h!67409 s!2326)))))

(declare-fun b!5292996 () Bool)

(assert (=> b!5292996 (= e!3290335 (set.union call!377217 call!377218))))

(declare-fun bm!377213 () Bool)

(assert (=> bm!377213 (= call!377220 call!377218)))

(declare-fun b!5292997 () Bool)

(assert (=> b!5292997 (= e!3290337 e!3290334)))

(assert (=> b!5292997 (= c!918283 (is-Union!14928 (regOne!30368 (regOne!30368 r!7292))))))

(declare-fun b!5292998 () Bool)

(assert (=> b!5292998 (= e!3290338 (as set.empty (Set Context!8624)))))

(declare-fun bm!377214 () Bool)

(assert (=> bm!377214 (= call!377215 ($colon$colon!1361 (exprs!4812 lt!2162715) (ite (or c!918284 c!918280) (regTwo!30368 (regOne!30368 (regOne!30368 r!7292))) (regOne!30368 (regOne!30368 r!7292)))))))

(declare-fun b!5292999 () Bool)

(assert (=> b!5292999 (= e!3290335 e!3290336)))

(assert (=> b!5292999 (= c!918280 (is-Concat!23773 (regOne!30368 (regOne!30368 r!7292))))))

(declare-fun b!5293000 () Bool)

(assert (=> b!5293000 (= e!3290334 (set.union call!377217 call!377219))))

(declare-fun b!5292995 () Bool)

(declare-fun c!918282 () Bool)

(assert (=> b!5292995 (= c!918282 (is-Star!14928 (regOne!30368 (regOne!30368 r!7292))))))

(assert (=> b!5292995 (= e!3290336 e!3290338)))

(declare-fun d!1702600 () Bool)

(declare-fun c!918281 () Bool)

(assert (=> d!1702600 (= c!918281 (and (is-ElementMatch!14928 (regOne!30368 (regOne!30368 r!7292))) (= (c!918186 (regOne!30368 (regOne!30368 r!7292))) (h!67409 s!2326))))))

(assert (=> d!1702600 (= (derivationStepZipperDown!376 (regOne!30368 (regOne!30368 r!7292)) lt!2162715 (h!67409 s!2326)) e!3290337)))

(declare-fun b!5293001 () Bool)

(assert (=> b!5293001 (= e!3290333 (nullable!5097 (regOne!30368 (regOne!30368 (regOne!30368 r!7292)))))))

(declare-fun bm!377215 () Bool)

(assert (=> bm!377215 (= call!377216 call!377215)))

(assert (= (and d!1702600 c!918281) b!5292994))

(assert (= (and d!1702600 (not c!918281)) b!5292997))

(assert (= (and b!5292997 c!918283) b!5293000))

(assert (= (and b!5292997 (not c!918283)) b!5292991))

(assert (= (and b!5292991 res!2244923) b!5293001))

(assert (= (and b!5292991 c!918284) b!5292996))

(assert (= (and b!5292991 (not c!918284)) b!5292999))

(assert (= (and b!5292999 c!918280) b!5292992))

(assert (= (and b!5292999 (not c!918280)) b!5292995))

(assert (= (and b!5292995 c!918282) b!5292993))

(assert (= (and b!5292995 (not c!918282)) b!5292998))

(assert (= (or b!5292992 b!5292993) bm!377215))

(assert (= (or b!5292992 b!5292993) bm!377213))

(assert (= (or b!5292996 bm!377215) bm!377214))

(assert (= (or b!5292996 bm!377213) bm!377210))

(assert (= (or b!5293000 bm!377210) bm!377212))

(assert (= (or b!5293000 b!5292996) bm!377211))

(assert (=> b!5292994 m!6330144))

(declare-fun m!6330550 () Bool)

(assert (=> bm!377211 m!6330550))

(declare-fun m!6330552 () Bool)

(assert (=> bm!377212 m!6330552))

(declare-fun m!6330554 () Bool)

(assert (=> bm!377214 m!6330554))

(declare-fun m!6330556 () Bool)

(assert (=> b!5293001 m!6330556))

(assert (=> b!5292614 d!1702600))

(declare-fun b!5293008 () Bool)

(assert (=> b!5293008 true))

(declare-fun bs!1227541 () Bool)

(declare-fun b!5293010 () Bool)

(assert (= bs!1227541 (and b!5293010 b!5293008)))

(declare-fun lambda!268172 () Int)

(declare-fun lambda!268171 () Int)

(declare-fun lt!2162930 () Int)

(declare-fun lt!2162929 () Int)

(assert (=> bs!1227541 (= (= lt!2162930 lt!2162929) (= lambda!268172 lambda!268171))))

(assert (=> b!5293010 true))

(declare-fun d!1702602 () Bool)

(declare-fun e!3290344 () Bool)

(assert (=> d!1702602 e!3290344))

(declare-fun res!2244926 () Bool)

(assert (=> d!1702602 (=> (not res!2244926) (not e!3290344))))

(assert (=> d!1702602 (= res!2244926 (>= lt!2162930 0))))

(declare-fun e!3290343 () Int)

(assert (=> d!1702602 (= lt!2162930 e!3290343)))

(declare-fun c!918293 () Bool)

(assert (=> d!1702602 (= c!918293 (is-Cons!60960 lt!2162710))))

(assert (=> d!1702602 (= (zipperDepth!45 lt!2162710) lt!2162930)))

(assert (=> b!5293008 (= e!3290343 lt!2162929)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!23 (Context!8624) Int)

(assert (=> b!5293008 (= lt!2162929 (maxBigInt!0 (contextDepth!23 (h!67408 lt!2162710)) (zipperDepth!45 (t!374289 lt!2162710))))))

(declare-fun lambda!268170 () Int)

(declare-fun lt!2162931 () Unit!153230)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!17 (List!61084 Int Int Int) Unit!153230)

(assert (=> b!5293008 (= lt!2162931 (lemmaForallContextDepthBiggerThanTransitive!17 (t!374289 lt!2162710) lt!2162929 (zipperDepth!45 (t!374289 lt!2162710)) lambda!268170))))

(declare-fun forall!14338 (List!61084 Int) Bool)

(assert (=> b!5293008 (forall!14338 (t!374289 lt!2162710) lambda!268171)))

(declare-fun lt!2162932 () Unit!153230)

(assert (=> b!5293008 (= lt!2162932 lt!2162931)))

(declare-fun b!5293009 () Bool)

(assert (=> b!5293009 (= e!3290343 0)))

(assert (=> b!5293010 (= e!3290344 (forall!14338 lt!2162710 lambda!268172))))

(assert (= (and d!1702602 c!918293) b!5293008))

(assert (= (and d!1702602 (not c!918293)) b!5293009))

(assert (= (and d!1702602 res!2244926) b!5293010))

(declare-fun m!6330558 () Bool)

(assert (=> b!5293008 m!6330558))

(declare-fun m!6330560 () Bool)

(assert (=> b!5293008 m!6330560))

(assert (=> b!5293008 m!6330558))

(declare-fun m!6330562 () Bool)

(assert (=> b!5293008 m!6330562))

(assert (=> b!5293008 m!6330558))

(declare-fun m!6330564 () Bool)

(assert (=> b!5293008 m!6330564))

(declare-fun m!6330566 () Bool)

(assert (=> b!5293008 m!6330566))

(assert (=> b!5293008 m!6330560))

(declare-fun m!6330568 () Bool)

(assert (=> b!5293010 m!6330568))

(assert (=> b!5292594 d!1702602))

(declare-fun bs!1227542 () Bool)

(declare-fun b!5293013 () Bool)

(assert (= bs!1227542 (and b!5293013 b!5293008)))

(declare-fun lambda!268173 () Int)

(assert (=> bs!1227542 (= lambda!268173 lambda!268170)))

(declare-fun lt!2162933 () Int)

(declare-fun lambda!268174 () Int)

(assert (=> bs!1227542 (= (= lt!2162933 lt!2162929) (= lambda!268174 lambda!268171))))

(declare-fun bs!1227543 () Bool)

(assert (= bs!1227543 (and b!5293013 b!5293010)))

(assert (=> bs!1227543 (= (= lt!2162933 lt!2162930) (= lambda!268174 lambda!268172))))

(assert (=> b!5293013 true))

(declare-fun bs!1227544 () Bool)

(declare-fun b!5293015 () Bool)

(assert (= bs!1227544 (and b!5293015 b!5293008)))

(declare-fun lambda!268175 () Int)

(declare-fun lt!2162934 () Int)

(assert (=> bs!1227544 (= (= lt!2162934 lt!2162929) (= lambda!268175 lambda!268171))))

(declare-fun bs!1227545 () Bool)

(assert (= bs!1227545 (and b!5293015 b!5293010)))

(assert (=> bs!1227545 (= (= lt!2162934 lt!2162930) (= lambda!268175 lambda!268172))))

(declare-fun bs!1227546 () Bool)

(assert (= bs!1227546 (and b!5293015 b!5293013)))

(assert (=> bs!1227546 (= (= lt!2162934 lt!2162933) (= lambda!268175 lambda!268174))))

(assert (=> b!5293015 true))

(declare-fun d!1702604 () Bool)

(declare-fun e!3290346 () Bool)

(assert (=> d!1702604 e!3290346))

(declare-fun res!2244927 () Bool)

(assert (=> d!1702604 (=> (not res!2244927) (not e!3290346))))

(assert (=> d!1702604 (= res!2244927 (>= lt!2162934 0))))

(declare-fun e!3290345 () Int)

(assert (=> d!1702604 (= lt!2162934 e!3290345)))

(declare-fun c!918294 () Bool)

(assert (=> d!1702604 (= c!918294 (is-Cons!60960 zl!343))))

(assert (=> d!1702604 (= (zipperDepth!45 zl!343) lt!2162934)))

(assert (=> b!5293013 (= e!3290345 lt!2162933)))

(assert (=> b!5293013 (= lt!2162933 (maxBigInt!0 (contextDepth!23 (h!67408 zl!343)) (zipperDepth!45 (t!374289 zl!343))))))

(declare-fun lt!2162935 () Unit!153230)

(assert (=> b!5293013 (= lt!2162935 (lemmaForallContextDepthBiggerThanTransitive!17 (t!374289 zl!343) lt!2162933 (zipperDepth!45 (t!374289 zl!343)) lambda!268173))))

(assert (=> b!5293013 (forall!14338 (t!374289 zl!343) lambda!268174)))

(declare-fun lt!2162936 () Unit!153230)

(assert (=> b!5293013 (= lt!2162936 lt!2162935)))

(declare-fun b!5293014 () Bool)

(assert (=> b!5293014 (= e!3290345 0)))

(assert (=> b!5293015 (= e!3290346 (forall!14338 zl!343 lambda!268175))))

(assert (= (and d!1702604 c!918294) b!5293013))

(assert (= (and d!1702604 (not c!918294)) b!5293014))

(assert (= (and d!1702604 res!2244927) b!5293015))

(declare-fun m!6330570 () Bool)

(assert (=> b!5293013 m!6330570))

(declare-fun m!6330572 () Bool)

(assert (=> b!5293013 m!6330572))

(assert (=> b!5293013 m!6330570))

(declare-fun m!6330574 () Bool)

(assert (=> b!5293013 m!6330574))

(assert (=> b!5293013 m!6330570))

(declare-fun m!6330576 () Bool)

(assert (=> b!5293013 m!6330576))

(declare-fun m!6330578 () Bool)

(assert (=> b!5293013 m!6330578))

(assert (=> b!5293013 m!6330572))

(declare-fun m!6330580 () Bool)

(assert (=> b!5293015 m!6330580))

(assert (=> b!5292594 d!1702604))

(declare-fun d!1702606 () Bool)

(assert (=> d!1702606 (= (isEmpty!32913 (t!374288 (exprs!4812 (h!67408 zl!343)))) (is-Nil!60959 (t!374288 (exprs!4812 (h!67408 zl!343)))))))

(assert (=> b!5292598 d!1702606))

(declare-fun bs!1227547 () Bool)

(declare-fun b!5293054 () Bool)

(assert (= bs!1227547 (and b!5293054 b!5292582)))

(declare-fun lambda!268180 () Int)

(assert (=> bs!1227547 (not (= lambda!268180 lambda!268104))))

(assert (=> bs!1227547 (not (= lambda!268180 lambda!268102))))

(declare-fun bs!1227548 () Bool)

(assert (= bs!1227548 (and b!5293054 d!1702564)))

(assert (=> bs!1227548 (not (= lambda!268180 lambda!268159))))

(declare-fun bs!1227549 () Bool)

(assert (= bs!1227549 (and b!5293054 b!5292588)))

(assert (=> bs!1227549 (not (= lambda!268180 lambda!268098))))

(assert (=> bs!1227549 (not (= lambda!268180 lambda!268099))))

(assert (=> bs!1227547 (not (= lambda!268180 lambda!268101))))

(assert (=> bs!1227547 (not (= lambda!268180 lambda!268103))))

(assert (=> bs!1227548 (not (= lambda!268180 lambda!268160))))

(declare-fun bs!1227550 () Bool)

(assert (= bs!1227550 (and b!5293054 d!1702562)))

(assert (=> bs!1227550 (not (= lambda!268180 lambda!268154))))

(assert (=> b!5293054 true))

(assert (=> b!5293054 true))

(declare-fun bs!1227551 () Bool)

(declare-fun b!5293051 () Bool)

(assert (= bs!1227551 (and b!5293051 b!5292582)))

(declare-fun lambda!268181 () Int)

(assert (=> bs!1227551 (= (and (= (regOne!30368 r!7292) (regTwo!30368 (regOne!30368 r!7292))) (= (regTwo!30368 r!7292) lt!2162694)) (= lambda!268181 lambda!268104))))

(assert (=> bs!1227551 (= (and (= (regOne!30368 r!7292) (regOne!30368 (regOne!30368 r!7292))) (= (regTwo!30368 r!7292) lt!2162731)) (= lambda!268181 lambda!268102))))

(declare-fun bs!1227552 () Bool)

(assert (= bs!1227552 (and b!5293051 b!5293054)))

(assert (=> bs!1227552 (not (= lambda!268181 lambda!268180))))

(declare-fun bs!1227553 () Bool)

(assert (= bs!1227553 (and b!5293051 d!1702564)))

(assert (=> bs!1227553 (not (= lambda!268181 lambda!268159))))

(declare-fun bs!1227554 () Bool)

(assert (= bs!1227554 (and b!5293051 b!5292588)))

(assert (=> bs!1227554 (not (= lambda!268181 lambda!268098))))

(assert (=> bs!1227554 (= lambda!268181 lambda!268099)))

(assert (=> bs!1227551 (not (= lambda!268181 lambda!268101))))

(assert (=> bs!1227551 (not (= lambda!268181 lambda!268103))))

(assert (=> bs!1227553 (= lambda!268181 lambda!268160)))

(declare-fun bs!1227555 () Bool)

(assert (= bs!1227555 (and b!5293051 d!1702562)))

(assert (=> bs!1227555 (not (= lambda!268181 lambda!268154))))

(assert (=> b!5293051 true))

(assert (=> b!5293051 true))

(declare-fun b!5293048 () Bool)

(declare-fun c!918306 () Bool)

(assert (=> b!5293048 (= c!918306 (is-Union!14928 r!7292))))

(declare-fun e!3290369 () Bool)

(declare-fun e!3290370 () Bool)

(assert (=> b!5293048 (= e!3290369 e!3290370)))

(declare-fun bm!377220 () Bool)

(declare-fun c!918304 () Bool)

(declare-fun call!377225 () Bool)

(assert (=> bm!377220 (= call!377225 (Exists!2109 (ite c!918304 lambda!268180 lambda!268181)))))

(declare-fun b!5293049 () Bool)

(declare-fun e!3290371 () Bool)

(assert (=> b!5293049 (= e!3290371 (matchRSpec!2031 (regTwo!30369 r!7292) s!2326))))

(declare-fun b!5293050 () Bool)

(declare-fun c!918305 () Bool)

(assert (=> b!5293050 (= c!918305 (is-ElementMatch!14928 r!7292))))

(declare-fun e!3290365 () Bool)

(assert (=> b!5293050 (= e!3290365 e!3290369)))

(declare-fun e!3290368 () Bool)

(assert (=> b!5293051 (= e!3290368 call!377225)))

(declare-fun b!5293052 () Bool)

(declare-fun e!3290367 () Bool)

(assert (=> b!5293052 (= e!3290367 e!3290365)))

(declare-fun res!2244945 () Bool)

(assert (=> b!5293052 (= res!2244945 (not (is-EmptyLang!14928 r!7292)))))

(assert (=> b!5293052 (=> (not res!2244945) (not e!3290365))))

(declare-fun b!5293053 () Bool)

(assert (=> b!5293053 (= e!3290370 e!3290371)))

(declare-fun res!2244944 () Bool)

(assert (=> b!5293053 (= res!2244944 (matchRSpec!2031 (regOne!30369 r!7292) s!2326))))

(assert (=> b!5293053 (=> res!2244944 e!3290371)))

(declare-fun d!1702608 () Bool)

(declare-fun c!918303 () Bool)

(assert (=> d!1702608 (= c!918303 (is-EmptyExpr!14928 r!7292))))

(assert (=> d!1702608 (= (matchRSpec!2031 r!7292 s!2326) e!3290367)))

(declare-fun bm!377221 () Bool)

(declare-fun call!377226 () Bool)

(assert (=> bm!377221 (= call!377226 (isEmpty!32917 s!2326))))

(declare-fun e!3290366 () Bool)

(assert (=> b!5293054 (= e!3290366 call!377225)))

(declare-fun b!5293055 () Bool)

(assert (=> b!5293055 (= e!3290369 (= s!2326 (Cons!60961 (c!918186 r!7292) Nil!60961)))))

(declare-fun b!5293056 () Bool)

(assert (=> b!5293056 (= e!3290367 call!377226)))

(declare-fun b!5293057 () Bool)

(assert (=> b!5293057 (= e!3290370 e!3290368)))

(assert (=> b!5293057 (= c!918304 (is-Star!14928 r!7292))))

(declare-fun b!5293058 () Bool)

(declare-fun res!2244946 () Bool)

(assert (=> b!5293058 (=> res!2244946 e!3290366)))

(assert (=> b!5293058 (= res!2244946 call!377226)))

(assert (=> b!5293058 (= e!3290368 e!3290366)))

(assert (= (and d!1702608 c!918303) b!5293056))

(assert (= (and d!1702608 (not c!918303)) b!5293052))

(assert (= (and b!5293052 res!2244945) b!5293050))

(assert (= (and b!5293050 c!918305) b!5293055))

(assert (= (and b!5293050 (not c!918305)) b!5293048))

(assert (= (and b!5293048 c!918306) b!5293053))

(assert (= (and b!5293048 (not c!918306)) b!5293057))

(assert (= (and b!5293053 (not res!2244944)) b!5293049))

(assert (= (and b!5293057 c!918304) b!5293058))

(assert (= (and b!5293057 (not c!918304)) b!5293051))

(assert (= (and b!5293058 (not res!2244946)) b!5293054))

(assert (= (or b!5293054 b!5293051) bm!377220))

(assert (= (or b!5293056 b!5293058) bm!377221))

(declare-fun m!6330582 () Bool)

(assert (=> bm!377220 m!6330582))

(declare-fun m!6330584 () Bool)

(assert (=> b!5293049 m!6330584))

(declare-fun m!6330586 () Bool)

(assert (=> b!5293053 m!6330586))

(declare-fun m!6330588 () Bool)

(assert (=> bm!377221 m!6330588))

(assert (=> b!5292578 d!1702608))

(declare-fun b!5293087 () Bool)

(declare-fun res!2244967 () Bool)

(declare-fun e!3290392 () Bool)

(assert (=> b!5293087 (=> (not res!2244967) (not e!3290392))))

(assert (=> b!5293087 (= res!2244967 (isEmpty!32917 (tail!10437 s!2326)))))

(declare-fun b!5293088 () Bool)

(declare-fun res!2244965 () Bool)

(declare-fun e!3290388 () Bool)

(assert (=> b!5293088 (=> res!2244965 e!3290388)))

(assert (=> b!5293088 (= res!2244965 e!3290392)))

(declare-fun res!2244970 () Bool)

(assert (=> b!5293088 (=> (not res!2244970) (not e!3290392))))

(declare-fun lt!2162939 () Bool)

(assert (=> b!5293088 (= res!2244970 lt!2162939)))

(declare-fun b!5293089 () Bool)

(declare-fun e!3290391 () Bool)

(declare-fun e!3290387 () Bool)

(assert (=> b!5293089 (= e!3290391 e!3290387)))

(declare-fun res!2244968 () Bool)

(assert (=> b!5293089 (=> res!2244968 e!3290387)))

(declare-fun call!377229 () Bool)

(assert (=> b!5293089 (= res!2244968 call!377229)))

(declare-fun b!5293090 () Bool)

(assert (=> b!5293090 (= e!3290388 e!3290391)))

(declare-fun res!2244969 () Bool)

(assert (=> b!5293090 (=> (not res!2244969) (not e!3290391))))

(assert (=> b!5293090 (= res!2244969 (not lt!2162939))))

(declare-fun bm!377224 () Bool)

(assert (=> bm!377224 (= call!377229 (isEmpty!32917 s!2326))))

(declare-fun b!5293091 () Bool)

(declare-fun e!3290386 () Bool)

(assert (=> b!5293091 (= e!3290386 (= lt!2162939 call!377229))))

(declare-fun b!5293092 () Bool)

(declare-fun res!2244963 () Bool)

(assert (=> b!5293092 (=> res!2244963 e!3290387)))

(assert (=> b!5293092 (= res!2244963 (not (isEmpty!32917 (tail!10437 s!2326))))))

(declare-fun b!5293093 () Bool)

(declare-fun e!3290390 () Bool)

(assert (=> b!5293093 (= e!3290390 (not lt!2162939))))

(declare-fun b!5293094 () Bool)

(declare-fun e!3290389 () Bool)

(declare-fun derivativeStep!4132 (Regex!14928 C!30126) Regex!14928)

(assert (=> b!5293094 (= e!3290389 (matchR!7113 (derivativeStep!4132 r!7292 (head!11340 s!2326)) (tail!10437 s!2326)))))

(declare-fun b!5293095 () Bool)

(assert (=> b!5293095 (= e!3290386 e!3290390)))

(declare-fun c!918313 () Bool)

(assert (=> b!5293095 (= c!918313 (is-EmptyLang!14928 r!7292))))

(declare-fun b!5293096 () Bool)

(declare-fun res!2244966 () Bool)

(assert (=> b!5293096 (=> res!2244966 e!3290388)))

(assert (=> b!5293096 (= res!2244966 (not (is-ElementMatch!14928 r!7292)))))

(assert (=> b!5293096 (= e!3290390 e!3290388)))

(declare-fun b!5293097 () Bool)

(assert (=> b!5293097 (= e!3290389 (nullable!5097 r!7292))))

(declare-fun b!5293098 () Bool)

(assert (=> b!5293098 (= e!3290392 (= (head!11340 s!2326) (c!918186 r!7292)))))

(declare-fun d!1702610 () Bool)

(assert (=> d!1702610 e!3290386))

(declare-fun c!918315 () Bool)

(assert (=> d!1702610 (= c!918315 (is-EmptyExpr!14928 r!7292))))

(assert (=> d!1702610 (= lt!2162939 e!3290389)))

(declare-fun c!918314 () Bool)

(assert (=> d!1702610 (= c!918314 (isEmpty!32917 s!2326))))

(assert (=> d!1702610 (validRegex!6664 r!7292)))

(assert (=> d!1702610 (= (matchR!7113 r!7292 s!2326) lt!2162939)))

(declare-fun b!5293099 () Bool)

(declare-fun res!2244964 () Bool)

(assert (=> b!5293099 (=> (not res!2244964) (not e!3290392))))

(assert (=> b!5293099 (= res!2244964 (not call!377229))))

(declare-fun b!5293100 () Bool)

(assert (=> b!5293100 (= e!3290387 (not (= (head!11340 s!2326) (c!918186 r!7292))))))

(assert (= (and d!1702610 c!918314) b!5293097))

(assert (= (and d!1702610 (not c!918314)) b!5293094))

(assert (= (and d!1702610 c!918315) b!5293091))

(assert (= (and d!1702610 (not c!918315)) b!5293095))

(assert (= (and b!5293095 c!918313) b!5293093))

(assert (= (and b!5293095 (not c!918313)) b!5293096))

(assert (= (and b!5293096 (not res!2244966)) b!5293088))

(assert (= (and b!5293088 res!2244970) b!5293099))

(assert (= (and b!5293099 res!2244964) b!5293087))

(assert (= (and b!5293087 res!2244967) b!5293098))

(assert (= (and b!5293088 (not res!2244965)) b!5293090))

(assert (= (and b!5293090 res!2244969) b!5293089))

(assert (= (and b!5293089 (not res!2244968)) b!5293092))

(assert (= (and b!5293092 (not res!2244963)) b!5293100))

(assert (= (or b!5293091 b!5293089 b!5293099) bm!377224))

(declare-fun m!6330590 () Bool)

(assert (=> b!5293092 m!6330590))

(assert (=> b!5293092 m!6330590))

(declare-fun m!6330592 () Bool)

(assert (=> b!5293092 m!6330592))

(declare-fun m!6330594 () Bool)

(assert (=> b!5293094 m!6330594))

(assert (=> b!5293094 m!6330594))

(declare-fun m!6330596 () Bool)

(assert (=> b!5293094 m!6330596))

(assert (=> b!5293094 m!6330590))

(assert (=> b!5293094 m!6330596))

(assert (=> b!5293094 m!6330590))

(declare-fun m!6330598 () Bool)

(assert (=> b!5293094 m!6330598))

(assert (=> b!5293100 m!6330594))

(assert (=> d!1702610 m!6330588))

(assert (=> d!1702610 m!6330032))

(assert (=> b!5293098 m!6330594))

(assert (=> bm!377224 m!6330588))

(declare-fun m!6330600 () Bool)

(assert (=> b!5293097 m!6330600))

(assert (=> b!5293087 m!6330590))

(assert (=> b!5293087 m!6330590))

(assert (=> b!5293087 m!6330592))

(assert (=> b!5292578 d!1702610))

(declare-fun d!1702612 () Bool)

(assert (=> d!1702612 (= (matchR!7113 r!7292 s!2326) (matchRSpec!2031 r!7292 s!2326))))

(declare-fun lt!2162942 () Unit!153230)

(declare-fun choose!39526 (Regex!14928 List!61085) Unit!153230)

(assert (=> d!1702612 (= lt!2162942 (choose!39526 r!7292 s!2326))))

(assert (=> d!1702612 (validRegex!6664 r!7292)))

(assert (=> d!1702612 (= (mainMatchTheorem!2031 r!7292 s!2326) lt!2162942)))

(declare-fun bs!1227556 () Bool)

(assert (= bs!1227556 d!1702612))

(assert (=> bs!1227556 m!6330158))

(assert (=> bs!1227556 m!6330156))

(declare-fun m!6330602 () Bool)

(assert (=> bs!1227556 m!6330602))

(assert (=> bs!1227556 m!6330032))

(assert (=> b!5292578 d!1702612))

(declare-fun d!1702614 () Bool)

(declare-fun c!918316 () Bool)

(assert (=> d!1702614 (= c!918316 (isEmpty!32917 (t!374290 s!2326)))))

(declare-fun e!3290393 () Bool)

(assert (=> d!1702614 (= (matchZipper!1172 lt!2162700 (t!374290 s!2326)) e!3290393)))

(declare-fun b!5293101 () Bool)

(assert (=> b!5293101 (= e!3290393 (nullableZipper!1311 lt!2162700))))

(declare-fun b!5293102 () Bool)

(assert (=> b!5293102 (= e!3290393 (matchZipper!1172 (derivationStepZipper!1171 lt!2162700 (head!11340 (t!374290 s!2326))) (tail!10437 (t!374290 s!2326))))))

(assert (= (and d!1702614 c!918316) b!5293101))

(assert (= (and d!1702614 (not c!918316)) b!5293102))

(assert (=> d!1702614 m!6330344))

(declare-fun m!6330604 () Bool)

(assert (=> b!5293101 m!6330604))

(assert (=> b!5293102 m!6330348))

(assert (=> b!5293102 m!6330348))

(declare-fun m!6330606 () Bool)

(assert (=> b!5293102 m!6330606))

(assert (=> b!5293102 m!6330352))

(assert (=> b!5293102 m!6330606))

(assert (=> b!5293102 m!6330352))

(declare-fun m!6330608 () Bool)

(assert (=> b!5293102 m!6330608))

(assert (=> b!5292597 d!1702614))

(declare-fun d!1702616 () Bool)

(declare-fun c!918317 () Bool)

(assert (=> d!1702616 (= c!918317 (isEmpty!32917 (t!374290 s!2326)))))

(declare-fun e!3290394 () Bool)

(assert (=> d!1702616 (= (matchZipper!1172 lt!2162705 (t!374290 s!2326)) e!3290394)))

(declare-fun b!5293103 () Bool)

(assert (=> b!5293103 (= e!3290394 (nullableZipper!1311 lt!2162705))))

(declare-fun b!5293104 () Bool)

(assert (=> b!5293104 (= e!3290394 (matchZipper!1172 (derivationStepZipper!1171 lt!2162705 (head!11340 (t!374290 s!2326))) (tail!10437 (t!374290 s!2326))))))

(assert (= (and d!1702616 c!918317) b!5293103))

(assert (= (and d!1702616 (not c!918317)) b!5293104))

(assert (=> d!1702616 m!6330344))

(declare-fun m!6330610 () Bool)

(assert (=> b!5293103 m!6330610))

(assert (=> b!5293104 m!6330348))

(assert (=> b!5293104 m!6330348))

(declare-fun m!6330612 () Bool)

(assert (=> b!5293104 m!6330612))

(assert (=> b!5293104 m!6330352))

(assert (=> b!5293104 m!6330612))

(assert (=> b!5293104 m!6330352))

(declare-fun m!6330614 () Bool)

(assert (=> b!5293104 m!6330614))

(assert (=> b!5292600 d!1702616))

(assert (=> b!5292579 d!1702596))

(declare-fun d!1702618 () Bool)

(declare-fun lt!2162945 () Regex!14928)

(assert (=> d!1702618 (validRegex!6664 lt!2162945)))

(assert (=> d!1702618 (= lt!2162945 (generalisedUnion!857 (unfocusZipperList!370 zl!343)))))

(assert (=> d!1702618 (= (unfocusZipper!670 zl!343) lt!2162945)))

(declare-fun bs!1227557 () Bool)

(assert (= bs!1227557 d!1702618))

(declare-fun m!6330616 () Bool)

(assert (=> bs!1227557 m!6330616))

(assert (=> bs!1227557 m!6330062))

(assert (=> bs!1227557 m!6330062))

(assert (=> bs!1227557 m!6330064))

(assert (=> b!5292601 d!1702618))

(declare-fun d!1702620 () Bool)

(declare-fun res!2244975 () Bool)

(declare-fun e!3290399 () Bool)

(assert (=> d!1702620 (=> res!2244975 e!3290399)))

(assert (=> d!1702620 (= res!2244975 (is-Nil!60959 lt!2162712))))

(assert (=> d!1702620 (= (forall!14336 lt!2162712 lambda!268105) e!3290399)))

(declare-fun b!5293109 () Bool)

(declare-fun e!3290400 () Bool)

(assert (=> b!5293109 (= e!3290399 e!3290400)))

(declare-fun res!2244976 () Bool)

(assert (=> b!5293109 (=> (not res!2244976) (not e!3290400))))

(declare-fun dynLambda!24105 (Int Regex!14928) Bool)

(assert (=> b!5293109 (= res!2244976 (dynLambda!24105 lambda!268105 (h!67407 lt!2162712)))))

(declare-fun b!5293110 () Bool)

(assert (=> b!5293110 (= e!3290400 (forall!14336 (t!374288 lt!2162712) lambda!268105))))

(assert (= (and d!1702620 (not res!2244975)) b!5293109))

(assert (= (and b!5293109 res!2244976) b!5293110))

(declare-fun b_lambda!204105 () Bool)

(assert (=> (not b_lambda!204105) (not b!5293109)))

(declare-fun m!6330618 () Bool)

(assert (=> b!5293109 m!6330618))

(declare-fun m!6330620 () Bool)

(assert (=> b!5293110 m!6330620))

(assert (=> b!5292599 d!1702620))

(declare-fun b!5293129 () Bool)

(declare-fun e!3290416 () Bool)

(declare-fun call!377238 () Bool)

(assert (=> b!5293129 (= e!3290416 call!377238)))

(declare-fun bm!377231 () Bool)

(declare-fun call!377236 () Bool)

(declare-fun c!918322 () Bool)

(assert (=> bm!377231 (= call!377236 (validRegex!6664 (ite c!918322 (regOne!30369 r!7292) (regOne!30368 r!7292))))))

(declare-fun c!918323 () Bool)

(declare-fun call!377237 () Bool)

(declare-fun bm!377232 () Bool)

(assert (=> bm!377232 (= call!377237 (validRegex!6664 (ite c!918323 (reg!15257 r!7292) (ite c!918322 (regTwo!30369 r!7292) (regTwo!30368 r!7292)))))))

(declare-fun b!5293130 () Bool)

(declare-fun e!3290417 () Bool)

(assert (=> b!5293130 (= e!3290417 call!377238)))

(declare-fun b!5293131 () Bool)

(declare-fun e!3290421 () Bool)

(declare-fun e!3290415 () Bool)

(assert (=> b!5293131 (= e!3290421 e!3290415)))

(assert (=> b!5293131 (= c!918322 (is-Union!14928 r!7292))))

(declare-fun b!5293132 () Bool)

(declare-fun e!3290420 () Bool)

(assert (=> b!5293132 (= e!3290420 e!3290416)))

(declare-fun res!2244990 () Bool)

(assert (=> b!5293132 (=> (not res!2244990) (not e!3290416))))

(assert (=> b!5293132 (= res!2244990 call!377236)))

(declare-fun b!5293133 () Bool)

(declare-fun res!2244988 () Bool)

(assert (=> b!5293133 (=> (not res!2244988) (not e!3290417))))

(assert (=> b!5293133 (= res!2244988 call!377236)))

(assert (=> b!5293133 (= e!3290415 e!3290417)))

(declare-fun d!1702622 () Bool)

(declare-fun res!2244991 () Bool)

(declare-fun e!3290419 () Bool)

(assert (=> d!1702622 (=> res!2244991 e!3290419)))

(assert (=> d!1702622 (= res!2244991 (is-ElementMatch!14928 r!7292))))

(assert (=> d!1702622 (= (validRegex!6664 r!7292) e!3290419)))

(declare-fun b!5293134 () Bool)

(declare-fun res!2244987 () Bool)

(assert (=> b!5293134 (=> res!2244987 e!3290420)))

(assert (=> b!5293134 (= res!2244987 (not (is-Concat!23773 r!7292)))))

(assert (=> b!5293134 (= e!3290415 e!3290420)))

(declare-fun bm!377233 () Bool)

(assert (=> bm!377233 (= call!377238 call!377237)))

(declare-fun b!5293135 () Bool)

(declare-fun e!3290418 () Bool)

(assert (=> b!5293135 (= e!3290421 e!3290418)))

(declare-fun res!2244989 () Bool)

(assert (=> b!5293135 (= res!2244989 (not (nullable!5097 (reg!15257 r!7292))))))

(assert (=> b!5293135 (=> (not res!2244989) (not e!3290418))))

(declare-fun b!5293136 () Bool)

(assert (=> b!5293136 (= e!3290418 call!377237)))

(declare-fun b!5293137 () Bool)

(assert (=> b!5293137 (= e!3290419 e!3290421)))

(assert (=> b!5293137 (= c!918323 (is-Star!14928 r!7292))))

(assert (= (and d!1702622 (not res!2244991)) b!5293137))

(assert (= (and b!5293137 c!918323) b!5293135))

(assert (= (and b!5293137 (not c!918323)) b!5293131))

(assert (= (and b!5293135 res!2244989) b!5293136))

(assert (= (and b!5293131 c!918322) b!5293133))

(assert (= (and b!5293131 (not c!918322)) b!5293134))

(assert (= (and b!5293133 res!2244988) b!5293130))

(assert (= (and b!5293134 (not res!2244987)) b!5293132))

(assert (= (and b!5293132 res!2244990) b!5293129))

(assert (= (or b!5293130 b!5293129) bm!377233))

(assert (= (or b!5293133 b!5293132) bm!377231))

(assert (= (or b!5293136 bm!377233) bm!377232))

(declare-fun m!6330622 () Bool)

(assert (=> bm!377231 m!6330622))

(declare-fun m!6330624 () Bool)

(assert (=> bm!377232 m!6330624))

(declare-fun m!6330626 () Bool)

(assert (=> b!5293135 m!6330626))

(assert (=> start!558548 d!1702622))

(declare-fun bs!1227558 () Bool)

(declare-fun d!1702624 () Bool)

(assert (= bs!1227558 (and d!1702624 d!1702544)))

(declare-fun lambda!268182 () Int)

(assert (=> bs!1227558 (= lambda!268182 lambda!268148)))

(declare-fun bs!1227559 () Bool)

(assert (= bs!1227559 (and d!1702624 d!1702542)))

(assert (=> bs!1227559 (= lambda!268182 lambda!268145)))

(declare-fun bs!1227560 () Bool)

(assert (= bs!1227560 (and d!1702624 d!1702572)))

(assert (=> bs!1227560 (= lambda!268182 lambda!268163)))

(declare-fun bs!1227561 () Bool)

(assert (= bs!1227561 (and d!1702624 d!1702540)))

(assert (=> bs!1227561 (= lambda!268182 lambda!268142)))

(declare-fun bs!1227562 () Bool)

(assert (= bs!1227562 (and d!1702624 b!5292599)))

(assert (=> bs!1227562 (= lambda!268182 lambda!268105)))

(assert (=> d!1702624 (= (inv!80568 setElem!33974) (forall!14336 (exprs!4812 setElem!33974) lambda!268182))))

(declare-fun bs!1227563 () Bool)

(assert (= bs!1227563 d!1702624))

(declare-fun m!6330628 () Bool)

(assert (=> bs!1227563 m!6330628))

(assert (=> setNonEmpty!33974 d!1702624))

(declare-fun bs!1227564 () Bool)

(declare-fun d!1702626 () Bool)

(assert (= bs!1227564 (and d!1702626 d!1702544)))

(declare-fun lambda!268183 () Int)

(assert (=> bs!1227564 (= lambda!268183 lambda!268148)))

(declare-fun bs!1227565 () Bool)

(assert (= bs!1227565 (and d!1702626 d!1702542)))

(assert (=> bs!1227565 (= lambda!268183 lambda!268145)))

(declare-fun bs!1227566 () Bool)

(assert (= bs!1227566 (and d!1702626 d!1702572)))

(assert (=> bs!1227566 (= lambda!268183 lambda!268163)))

(declare-fun bs!1227567 () Bool)

(assert (= bs!1227567 (and d!1702626 d!1702624)))

(assert (=> bs!1227567 (= lambda!268183 lambda!268182)))

(declare-fun bs!1227568 () Bool)

(assert (= bs!1227568 (and d!1702626 d!1702540)))

(assert (=> bs!1227568 (= lambda!268183 lambda!268142)))

(declare-fun bs!1227569 () Bool)

(assert (= bs!1227569 (and d!1702626 b!5292599)))

(assert (=> bs!1227569 (= lambda!268183 lambda!268105)))

(declare-fun b!5293138 () Bool)

(declare-fun e!3290422 () Regex!14928)

(assert (=> b!5293138 (= e!3290422 EmptyExpr!14928)))

(declare-fun b!5293139 () Bool)

(declare-fun e!3290425 () Bool)

(assert (=> b!5293139 (= e!3290425 (isEmpty!32913 (t!374288 (t!374288 (exprs!4812 (h!67408 zl!343))))))))

(declare-fun b!5293140 () Bool)

(declare-fun e!3290424 () Bool)

(declare-fun lt!2162946 () Regex!14928)

(assert (=> b!5293140 (= e!3290424 (isConcat!369 lt!2162946))))

(declare-fun b!5293141 () Bool)

(declare-fun e!3290427 () Bool)

(declare-fun e!3290426 () Bool)

(assert (=> b!5293141 (= e!3290427 e!3290426)))

(declare-fun c!918326 () Bool)

(assert (=> b!5293141 (= c!918326 (isEmpty!32913 (t!374288 (exprs!4812 (h!67408 zl!343)))))))

(declare-fun b!5293142 () Bool)

(assert (=> b!5293142 (= e!3290426 (isEmptyExpr!846 lt!2162946))))

(assert (=> d!1702626 e!3290427))

(declare-fun res!2244993 () Bool)

(assert (=> d!1702626 (=> (not res!2244993) (not e!3290427))))

(assert (=> d!1702626 (= res!2244993 (validRegex!6664 lt!2162946))))

(declare-fun e!3290423 () Regex!14928)

(assert (=> d!1702626 (= lt!2162946 e!3290423)))

(declare-fun c!918324 () Bool)

(assert (=> d!1702626 (= c!918324 e!3290425)))

(declare-fun res!2244992 () Bool)

(assert (=> d!1702626 (=> (not res!2244992) (not e!3290425))))

(assert (=> d!1702626 (= res!2244992 (is-Cons!60959 (t!374288 (exprs!4812 (h!67408 zl!343)))))))

(assert (=> d!1702626 (forall!14336 (t!374288 (exprs!4812 (h!67408 zl!343))) lambda!268183)))

(assert (=> d!1702626 (= (generalisedConcat!597 (t!374288 (exprs!4812 (h!67408 zl!343)))) lt!2162946)))

(declare-fun b!5293143 () Bool)

(assert (=> b!5293143 (= e!3290423 e!3290422)))

(declare-fun c!918327 () Bool)

(assert (=> b!5293143 (= c!918327 (is-Cons!60959 (t!374288 (exprs!4812 (h!67408 zl!343)))))))

(declare-fun b!5293144 () Bool)

(assert (=> b!5293144 (= e!3290422 (Concat!23773 (h!67407 (t!374288 (exprs!4812 (h!67408 zl!343)))) (generalisedConcat!597 (t!374288 (t!374288 (exprs!4812 (h!67408 zl!343)))))))))

(declare-fun b!5293145 () Bool)

(assert (=> b!5293145 (= e!3290426 e!3290424)))

(declare-fun c!918325 () Bool)

(assert (=> b!5293145 (= c!918325 (isEmpty!32913 (tail!10438 (t!374288 (exprs!4812 (h!67408 zl!343))))))))

(declare-fun b!5293146 () Bool)

(assert (=> b!5293146 (= e!3290424 (= lt!2162946 (head!11341 (t!374288 (exprs!4812 (h!67408 zl!343))))))))

(declare-fun b!5293147 () Bool)

(assert (=> b!5293147 (= e!3290423 (h!67407 (t!374288 (exprs!4812 (h!67408 zl!343)))))))

(assert (= (and d!1702626 res!2244992) b!5293139))

(assert (= (and d!1702626 c!918324) b!5293147))

(assert (= (and d!1702626 (not c!918324)) b!5293143))

(assert (= (and b!5293143 c!918327) b!5293144))

(assert (= (and b!5293143 (not c!918327)) b!5293138))

(assert (= (and d!1702626 res!2244993) b!5293141))

(assert (= (and b!5293141 c!918326) b!5293142))

(assert (= (and b!5293141 (not c!918326)) b!5293145))

(assert (= (and b!5293145 c!918325) b!5293146))

(assert (= (and b!5293145 (not c!918325)) b!5293140))

(declare-fun m!6330630 () Bool)

(assert (=> b!5293145 m!6330630))

(assert (=> b!5293145 m!6330630))

(declare-fun m!6330632 () Bool)

(assert (=> b!5293145 m!6330632))

(declare-fun m!6330634 () Bool)

(assert (=> b!5293142 m!6330634))

(declare-fun m!6330636 () Bool)

(assert (=> d!1702626 m!6330636))

(declare-fun m!6330638 () Bool)

(assert (=> d!1702626 m!6330638))

(assert (=> b!5293141 m!6330018))

(declare-fun m!6330640 () Bool)

(assert (=> b!5293140 m!6330640))

(declare-fun m!6330642 () Bool)

(assert (=> b!5293139 m!6330642))

(declare-fun m!6330644 () Bool)

(assert (=> b!5293144 m!6330644))

(declare-fun m!6330646 () Bool)

(assert (=> b!5293146 m!6330646))

(assert (=> b!5292582 d!1702626))

(declare-fun d!1702628 () Bool)

(assert (=> d!1702628 (= (matchR!7113 lt!2162731 s!2326) (matchZipper!1172 lt!2162724 s!2326))))

(declare-fun lt!2162949 () Unit!153230)

(declare-fun choose!39527 ((Set Context!8624) List!61084 Regex!14928 List!61085) Unit!153230)

(assert (=> d!1702628 (= lt!2162949 (choose!39527 lt!2162724 (Cons!60960 lt!2162715 Nil!60960) lt!2162731 s!2326))))

(assert (=> d!1702628 (validRegex!6664 lt!2162731)))

(assert (=> d!1702628 (= (theoremZipperRegexEquiv!338 lt!2162724 (Cons!60960 lt!2162715 Nil!60960) lt!2162731 s!2326) lt!2162949)))

(declare-fun bs!1227570 () Bool)

(assert (= bs!1227570 d!1702628))

(assert (=> bs!1227570 m!6330088))

(assert (=> bs!1227570 m!6330074))

(declare-fun m!6330648 () Bool)

(assert (=> bs!1227570 m!6330648))

(declare-fun m!6330650 () Bool)

(assert (=> bs!1227570 m!6330650))

(assert (=> b!5292582 d!1702628))

(declare-fun b!5293149 () Bool)

(declare-fun res!2244998 () Bool)

(declare-fun e!3290429 () Bool)

(assert (=> b!5293149 (=> (not res!2244998) (not e!3290429))))

(declare-fun lt!2162951 () Option!15039)

(assert (=> b!5293149 (= res!2244998 (matchR!7113 (regTwo!30368 (regOne!30368 r!7292)) (_1!35430 (get!20961 lt!2162951))))))

(declare-fun b!5293150 () Bool)

(declare-fun e!3290430 () Option!15039)

(assert (=> b!5293150 (= e!3290430 None!15038)))

(declare-fun b!5293151 () Bool)

(assert (=> b!5293151 (= e!3290429 (= (++!13291 (_1!35430 (get!20961 lt!2162951)) (_2!35430 (get!20961 lt!2162951))) s!2326))))

(declare-fun b!5293152 () Bool)

(declare-fun res!2244995 () Bool)

(assert (=> b!5293152 (=> (not res!2244995) (not e!3290429))))

(assert (=> b!5293152 (= res!2244995 (matchR!7113 lt!2162694 (_2!35430 (get!20961 lt!2162951))))))

(declare-fun b!5293153 () Bool)

(declare-fun e!3290428 () Bool)

(assert (=> b!5293153 (= e!3290428 (matchR!7113 lt!2162694 s!2326))))

(declare-fun b!5293154 () Bool)

(declare-fun e!3290432 () Option!15039)

(assert (=> b!5293154 (= e!3290432 e!3290430)))

(declare-fun c!918328 () Bool)

(assert (=> b!5293154 (= c!918328 (is-Nil!60961 s!2326))))

(declare-fun b!5293155 () Bool)

(declare-fun e!3290431 () Bool)

(assert (=> b!5293155 (= e!3290431 (not (isDefined!11742 lt!2162951)))))

(declare-fun b!5293156 () Bool)

(assert (=> b!5293156 (= e!3290432 (Some!15038 (tuple2!64255 Nil!60961 s!2326)))))

(declare-fun d!1702630 () Bool)

(assert (=> d!1702630 e!3290431))

(declare-fun res!2244996 () Bool)

(assert (=> d!1702630 (=> res!2244996 e!3290431)))

(assert (=> d!1702630 (= res!2244996 e!3290429)))

(declare-fun res!2244997 () Bool)

(assert (=> d!1702630 (=> (not res!2244997) (not e!3290429))))

(assert (=> d!1702630 (= res!2244997 (isDefined!11742 lt!2162951))))

(assert (=> d!1702630 (= lt!2162951 e!3290432)))

(declare-fun c!918329 () Bool)

(assert (=> d!1702630 (= c!918329 e!3290428)))

(declare-fun res!2244994 () Bool)

(assert (=> d!1702630 (=> (not res!2244994) (not e!3290428))))

(assert (=> d!1702630 (= res!2244994 (matchR!7113 (regTwo!30368 (regOne!30368 r!7292)) Nil!60961))))

(assert (=> d!1702630 (validRegex!6664 (regTwo!30368 (regOne!30368 r!7292)))))

(assert (=> d!1702630 (= (findConcatSeparation!1453 (regTwo!30368 (regOne!30368 r!7292)) lt!2162694 Nil!60961 s!2326 s!2326) lt!2162951)))

(declare-fun b!5293148 () Bool)

(declare-fun lt!2162952 () Unit!153230)

(declare-fun lt!2162950 () Unit!153230)

(assert (=> b!5293148 (= lt!2162952 lt!2162950)))

(assert (=> b!5293148 (= (++!13291 (++!13291 Nil!60961 (Cons!60961 (h!67409 s!2326) Nil!60961)) (t!374290 s!2326)) s!2326)))

(assert (=> b!5293148 (= lt!2162950 (lemmaMoveElementToOtherListKeepsConcatEq!1706 Nil!60961 (h!67409 s!2326) (t!374290 s!2326) s!2326))))

(assert (=> b!5293148 (= e!3290430 (findConcatSeparation!1453 (regTwo!30368 (regOne!30368 r!7292)) lt!2162694 (++!13291 Nil!60961 (Cons!60961 (h!67409 s!2326) Nil!60961)) (t!374290 s!2326) s!2326))))

(assert (= (and d!1702630 res!2244994) b!5293153))

(assert (= (and d!1702630 c!918329) b!5293156))

(assert (= (and d!1702630 (not c!918329)) b!5293154))

(assert (= (and b!5293154 c!918328) b!5293150))

(assert (= (and b!5293154 (not c!918328)) b!5293148))

(assert (= (and d!1702630 res!2244997) b!5293149))

(assert (= (and b!5293149 res!2244998) b!5293152))

(assert (= (and b!5293152 res!2244995) b!5293151))

(assert (= (and d!1702630 (not res!2244996)) b!5293155))

(declare-fun m!6330652 () Bool)

(assert (=> b!5293153 m!6330652))

(declare-fun m!6330654 () Bool)

(assert (=> d!1702630 m!6330654))

(declare-fun m!6330656 () Bool)

(assert (=> d!1702630 m!6330656))

(declare-fun m!6330658 () Bool)

(assert (=> d!1702630 m!6330658))

(declare-fun m!6330660 () Bool)

(assert (=> b!5293151 m!6330660))

(declare-fun m!6330662 () Bool)

(assert (=> b!5293151 m!6330662))

(assert (=> b!5293148 m!6330426))

(assert (=> b!5293148 m!6330426))

(assert (=> b!5293148 m!6330428))

(assert (=> b!5293148 m!6330430))

(assert (=> b!5293148 m!6330426))

(declare-fun m!6330664 () Bool)

(assert (=> b!5293148 m!6330664))

(assert (=> b!5293152 m!6330660))

(declare-fun m!6330666 () Bool)

(assert (=> b!5293152 m!6330666))

(assert (=> b!5293155 m!6330654))

(assert (=> b!5293149 m!6330660))

(declare-fun m!6330668 () Bool)

(assert (=> b!5293149 m!6330668))

(assert (=> b!5292582 d!1702630))

(declare-fun bs!1227571 () Bool)

(declare-fun d!1702632 () Bool)

(assert (= bs!1227571 (and d!1702632 b!5292582)))

(declare-fun lambda!268184 () Int)

(assert (=> bs!1227571 (not (= lambda!268184 lambda!268104))))

(assert (=> bs!1227571 (not (= lambda!268184 lambda!268102))))

(declare-fun bs!1227572 () Bool)

(assert (= bs!1227572 (and d!1702632 b!5293054)))

(assert (=> bs!1227572 (not (= lambda!268184 lambda!268180))))

(declare-fun bs!1227573 () Bool)

(assert (= bs!1227573 (and d!1702632 d!1702564)))

(assert (=> bs!1227573 (= (and (= (regOne!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162731 (regTwo!30368 r!7292))) (= lambda!268184 lambda!268159))))

(declare-fun bs!1227574 () Bool)

(assert (= bs!1227574 (and d!1702632 b!5292588)))

(assert (=> bs!1227574 (= (and (= (regOne!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162731 (regTwo!30368 r!7292))) (= lambda!268184 lambda!268098))))

(declare-fun bs!1227575 () Bool)

(assert (= bs!1227575 (and d!1702632 b!5293051)))

(assert (=> bs!1227575 (not (= lambda!268184 lambda!268181))))

(assert (=> bs!1227574 (not (= lambda!268184 lambda!268099))))

(assert (=> bs!1227571 (= lambda!268184 lambda!268101)))

(assert (=> bs!1227571 (= (and (= (regOne!30368 (regOne!30368 r!7292)) (regTwo!30368 (regOne!30368 r!7292))) (= lt!2162731 lt!2162694)) (= lambda!268184 lambda!268103))))

(assert (=> bs!1227573 (not (= lambda!268184 lambda!268160))))

(declare-fun bs!1227576 () Bool)

(assert (= bs!1227576 (and d!1702632 d!1702562)))

(assert (=> bs!1227576 (= (and (= (regOne!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162731 (regTwo!30368 r!7292))) (= lambda!268184 lambda!268154))))

(assert (=> d!1702632 true))

(assert (=> d!1702632 true))

(assert (=> d!1702632 true))

(declare-fun lambda!268185 () Int)

(assert (=> bs!1227571 (= (and (= (regOne!30368 (regOne!30368 r!7292)) (regTwo!30368 (regOne!30368 r!7292))) (= lt!2162731 lt!2162694)) (= lambda!268185 lambda!268104))))

(assert (=> bs!1227571 (= lambda!268185 lambda!268102)))

(assert (=> bs!1227572 (not (= lambda!268185 lambda!268180))))

(declare-fun bs!1227577 () Bool)

(assert (= bs!1227577 d!1702632))

(assert (=> bs!1227577 (not (= lambda!268185 lambda!268184))))

(assert (=> bs!1227573 (not (= lambda!268185 lambda!268159))))

(assert (=> bs!1227574 (not (= lambda!268185 lambda!268098))))

(assert (=> bs!1227575 (= (and (= (regOne!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162731 (regTwo!30368 r!7292))) (= lambda!268185 lambda!268181))))

(assert (=> bs!1227574 (= (and (= (regOne!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162731 (regTwo!30368 r!7292))) (= lambda!268185 lambda!268099))))

(assert (=> bs!1227571 (not (= lambda!268185 lambda!268101))))

(assert (=> bs!1227571 (not (= lambda!268185 lambda!268103))))

(assert (=> bs!1227573 (= (and (= (regOne!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162731 (regTwo!30368 r!7292))) (= lambda!268185 lambda!268160))))

(assert (=> bs!1227576 (not (= lambda!268185 lambda!268154))))

(assert (=> d!1702632 true))

(assert (=> d!1702632 true))

(assert (=> d!1702632 true))

(assert (=> d!1702632 (= (Exists!2109 lambda!268184) (Exists!2109 lambda!268185))))

(declare-fun lt!2162953 () Unit!153230)

(assert (=> d!1702632 (= lt!2162953 (choose!39524 (regOne!30368 (regOne!30368 r!7292)) lt!2162731 s!2326))))

(assert (=> d!1702632 (validRegex!6664 (regOne!30368 (regOne!30368 r!7292)))))

(assert (=> d!1702632 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!763 (regOne!30368 (regOne!30368 r!7292)) lt!2162731 s!2326) lt!2162953)))

(declare-fun m!6330670 () Bool)

(assert (=> bs!1227577 m!6330670))

(declare-fun m!6330672 () Bool)

(assert (=> bs!1227577 m!6330672))

(declare-fun m!6330674 () Bool)

(assert (=> bs!1227577 m!6330674))

(declare-fun m!6330676 () Bool)

(assert (=> bs!1227577 m!6330676))

(assert (=> b!5292582 d!1702632))

(declare-fun bs!1227578 () Bool)

(declare-fun b!5293163 () Bool)

(assert (= bs!1227578 (and b!5293163 b!5292582)))

(declare-fun lambda!268186 () Int)

(assert (=> bs!1227578 (not (= lambda!268186 lambda!268104))))

(assert (=> bs!1227578 (not (= lambda!268186 lambda!268102))))

(declare-fun bs!1227579 () Bool)

(assert (= bs!1227579 (and b!5293163 d!1702632)))

(assert (=> bs!1227579 (not (= lambda!268186 lambda!268185))))

(declare-fun bs!1227580 () Bool)

(assert (= bs!1227580 (and b!5293163 b!5293054)))

(assert (=> bs!1227580 (= (and (= (reg!15257 lt!2162731) (reg!15257 r!7292)) (= lt!2162731 r!7292)) (= lambda!268186 lambda!268180))))

(assert (=> bs!1227579 (not (= lambda!268186 lambda!268184))))

(declare-fun bs!1227581 () Bool)

(assert (= bs!1227581 (and b!5293163 d!1702564)))

(assert (=> bs!1227581 (not (= lambda!268186 lambda!268159))))

(declare-fun bs!1227582 () Bool)

(assert (= bs!1227582 (and b!5293163 b!5292588)))

(assert (=> bs!1227582 (not (= lambda!268186 lambda!268098))))

(declare-fun bs!1227583 () Bool)

(assert (= bs!1227583 (and b!5293163 b!5293051)))

(assert (=> bs!1227583 (not (= lambda!268186 lambda!268181))))

(assert (=> bs!1227582 (not (= lambda!268186 lambda!268099))))

(assert (=> bs!1227578 (not (= lambda!268186 lambda!268101))))

(assert (=> bs!1227578 (not (= lambda!268186 lambda!268103))))

(assert (=> bs!1227581 (not (= lambda!268186 lambda!268160))))

(declare-fun bs!1227584 () Bool)

(assert (= bs!1227584 (and b!5293163 d!1702562)))

(assert (=> bs!1227584 (not (= lambda!268186 lambda!268154))))

(assert (=> b!5293163 true))

(assert (=> b!5293163 true))

(declare-fun bs!1227585 () Bool)

(declare-fun b!5293160 () Bool)

(assert (= bs!1227585 (and b!5293160 b!5292582)))

(declare-fun lambda!268187 () Int)

(assert (=> bs!1227585 (= (and (= (regOne!30368 lt!2162731) (regTwo!30368 (regOne!30368 r!7292))) (= (regTwo!30368 lt!2162731) lt!2162694)) (= lambda!268187 lambda!268104))))

(assert (=> bs!1227585 (= (and (= (regOne!30368 lt!2162731) (regOne!30368 (regOne!30368 r!7292))) (= (regTwo!30368 lt!2162731) lt!2162731)) (= lambda!268187 lambda!268102))))

(declare-fun bs!1227586 () Bool)

(assert (= bs!1227586 (and b!5293160 d!1702632)))

(assert (=> bs!1227586 (= (and (= (regOne!30368 lt!2162731) (regOne!30368 (regOne!30368 r!7292))) (= (regTwo!30368 lt!2162731) lt!2162731)) (= lambda!268187 lambda!268185))))

(declare-fun bs!1227587 () Bool)

(assert (= bs!1227587 (and b!5293160 b!5293054)))

(assert (=> bs!1227587 (not (= lambda!268187 lambda!268180))))

(declare-fun bs!1227588 () Bool)

(assert (= bs!1227588 (and b!5293160 d!1702564)))

(assert (=> bs!1227588 (not (= lambda!268187 lambda!268159))))

(declare-fun bs!1227589 () Bool)

(assert (= bs!1227589 (and b!5293160 b!5292588)))

(assert (=> bs!1227589 (not (= lambda!268187 lambda!268098))))

(declare-fun bs!1227590 () Bool)

(assert (= bs!1227590 (and b!5293160 b!5293051)))

(assert (=> bs!1227590 (= (and (= (regOne!30368 lt!2162731) (regOne!30368 r!7292)) (= (regTwo!30368 lt!2162731) (regTwo!30368 r!7292))) (= lambda!268187 lambda!268181))))

(assert (=> bs!1227589 (= (and (= (regOne!30368 lt!2162731) (regOne!30368 r!7292)) (= (regTwo!30368 lt!2162731) (regTwo!30368 r!7292))) (= lambda!268187 lambda!268099))))

(assert (=> bs!1227585 (not (= lambda!268187 lambda!268101))))

(assert (=> bs!1227585 (not (= lambda!268187 lambda!268103))))

(assert (=> bs!1227588 (= (and (= (regOne!30368 lt!2162731) (regOne!30368 r!7292)) (= (regTwo!30368 lt!2162731) (regTwo!30368 r!7292))) (= lambda!268187 lambda!268160))))

(declare-fun bs!1227591 () Bool)

(assert (= bs!1227591 (and b!5293160 d!1702562)))

(assert (=> bs!1227591 (not (= lambda!268187 lambda!268154))))

(assert (=> bs!1227586 (not (= lambda!268187 lambda!268184))))

(declare-fun bs!1227592 () Bool)

(assert (= bs!1227592 (and b!5293160 b!5293163)))

(assert (=> bs!1227592 (not (= lambda!268187 lambda!268186))))

(assert (=> b!5293160 true))

(assert (=> b!5293160 true))

(declare-fun b!5293157 () Bool)

(declare-fun c!918333 () Bool)

(assert (=> b!5293157 (= c!918333 (is-Union!14928 lt!2162731))))

(declare-fun e!3290437 () Bool)

(declare-fun e!3290438 () Bool)

(assert (=> b!5293157 (= e!3290437 e!3290438)))

(declare-fun call!377239 () Bool)

(declare-fun c!918331 () Bool)

(declare-fun bm!377234 () Bool)

(assert (=> bm!377234 (= call!377239 (Exists!2109 (ite c!918331 lambda!268186 lambda!268187)))))

(declare-fun b!5293158 () Bool)

(declare-fun e!3290439 () Bool)

(assert (=> b!5293158 (= e!3290439 (matchRSpec!2031 (regTwo!30369 lt!2162731) s!2326))))

(declare-fun b!5293159 () Bool)

(declare-fun c!918332 () Bool)

(assert (=> b!5293159 (= c!918332 (is-ElementMatch!14928 lt!2162731))))

(declare-fun e!3290433 () Bool)

(assert (=> b!5293159 (= e!3290433 e!3290437)))

(declare-fun e!3290436 () Bool)

(assert (=> b!5293160 (= e!3290436 call!377239)))

(declare-fun b!5293161 () Bool)

(declare-fun e!3290435 () Bool)

(assert (=> b!5293161 (= e!3290435 e!3290433)))

(declare-fun res!2245000 () Bool)

(assert (=> b!5293161 (= res!2245000 (not (is-EmptyLang!14928 lt!2162731)))))

(assert (=> b!5293161 (=> (not res!2245000) (not e!3290433))))

(declare-fun b!5293162 () Bool)

(assert (=> b!5293162 (= e!3290438 e!3290439)))

(declare-fun res!2244999 () Bool)

(assert (=> b!5293162 (= res!2244999 (matchRSpec!2031 (regOne!30369 lt!2162731) s!2326))))

(assert (=> b!5293162 (=> res!2244999 e!3290439)))

(declare-fun d!1702634 () Bool)

(declare-fun c!918330 () Bool)

(assert (=> d!1702634 (= c!918330 (is-EmptyExpr!14928 lt!2162731))))

(assert (=> d!1702634 (= (matchRSpec!2031 lt!2162731 s!2326) e!3290435)))

(declare-fun bm!377235 () Bool)

(declare-fun call!377240 () Bool)

(assert (=> bm!377235 (= call!377240 (isEmpty!32917 s!2326))))

(declare-fun e!3290434 () Bool)

(assert (=> b!5293163 (= e!3290434 call!377239)))

(declare-fun b!5293164 () Bool)

(assert (=> b!5293164 (= e!3290437 (= s!2326 (Cons!60961 (c!918186 lt!2162731) Nil!60961)))))

(declare-fun b!5293165 () Bool)

(assert (=> b!5293165 (= e!3290435 call!377240)))

(declare-fun b!5293166 () Bool)

(assert (=> b!5293166 (= e!3290438 e!3290436)))

(assert (=> b!5293166 (= c!918331 (is-Star!14928 lt!2162731))))

(declare-fun b!5293167 () Bool)

(declare-fun res!2245001 () Bool)

(assert (=> b!5293167 (=> res!2245001 e!3290434)))

(assert (=> b!5293167 (= res!2245001 call!377240)))

(assert (=> b!5293167 (= e!3290436 e!3290434)))

(assert (= (and d!1702634 c!918330) b!5293165))

(assert (= (and d!1702634 (not c!918330)) b!5293161))

(assert (= (and b!5293161 res!2245000) b!5293159))

(assert (= (and b!5293159 c!918332) b!5293164))

(assert (= (and b!5293159 (not c!918332)) b!5293157))

(assert (= (and b!5293157 c!918333) b!5293162))

(assert (= (and b!5293157 (not c!918333)) b!5293166))

(assert (= (and b!5293162 (not res!2244999)) b!5293158))

(assert (= (and b!5293166 c!918331) b!5293167))

(assert (= (and b!5293166 (not c!918331)) b!5293160))

(assert (= (and b!5293167 (not res!2245001)) b!5293163))

(assert (= (or b!5293163 b!5293160) bm!377234))

(assert (= (or b!5293165 b!5293167) bm!377235))

(declare-fun m!6330678 () Bool)

(assert (=> bm!377234 m!6330678))

(declare-fun m!6330680 () Bool)

(assert (=> b!5293158 m!6330680))

(declare-fun m!6330682 () Bool)

(assert (=> b!5293162 m!6330682))

(assert (=> bm!377235 m!6330588))

(assert (=> b!5292582 d!1702634))

(declare-fun d!1702636 () Bool)

(assert (=> d!1702636 (= (Exists!2109 lambda!268104) (choose!39522 lambda!268104))))

(declare-fun bs!1227593 () Bool)

(assert (= bs!1227593 d!1702636))

(declare-fun m!6330684 () Bool)

(assert (=> bs!1227593 m!6330684))

(assert (=> b!5292582 d!1702636))

(declare-fun d!1702638 () Bool)

(assert (=> d!1702638 (= (Exists!2109 lambda!268102) (choose!39522 lambda!268102))))

(declare-fun bs!1227594 () Bool)

(assert (= bs!1227594 d!1702638))

(declare-fun m!6330686 () Bool)

(assert (=> bs!1227594 m!6330686))

(assert (=> b!5292582 d!1702638))

(declare-fun bs!1227595 () Bool)

(declare-fun d!1702640 () Bool)

(assert (= bs!1227595 (and d!1702640 b!5292582)))

(declare-fun lambda!268188 () Int)

(assert (=> bs!1227595 (not (= lambda!268188 lambda!268104))))

(assert (=> bs!1227595 (not (= lambda!268188 lambda!268102))))

(declare-fun bs!1227596 () Bool)

(assert (= bs!1227596 (and d!1702640 d!1702632)))

(assert (=> bs!1227596 (not (= lambda!268188 lambda!268185))))

(declare-fun bs!1227597 () Bool)

(assert (= bs!1227597 (and d!1702640 b!5293054)))

(assert (=> bs!1227597 (not (= lambda!268188 lambda!268180))))

(declare-fun bs!1227598 () Bool)

(assert (= bs!1227598 (and d!1702640 d!1702564)))

(assert (=> bs!1227598 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162694 (regTwo!30368 r!7292))) (= lambda!268188 lambda!268159))))

(declare-fun bs!1227599 () Bool)

(assert (= bs!1227599 (and d!1702640 b!5292588)))

(assert (=> bs!1227599 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162694 (regTwo!30368 r!7292))) (= lambda!268188 lambda!268098))))

(declare-fun bs!1227600 () Bool)

(assert (= bs!1227600 (and d!1702640 b!5293051)))

(assert (=> bs!1227600 (not (= lambda!268188 lambda!268181))))

(assert (=> bs!1227599 (not (= lambda!268188 lambda!268099))))

(assert (=> bs!1227595 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 (regOne!30368 r!7292))) (= lt!2162694 lt!2162731)) (= lambda!268188 lambda!268101))))

(assert (=> bs!1227598 (not (= lambda!268188 lambda!268160))))

(declare-fun bs!1227601 () Bool)

(assert (= bs!1227601 (and d!1702640 d!1702562)))

(assert (=> bs!1227601 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162694 (regTwo!30368 r!7292))) (= lambda!268188 lambda!268154))))

(assert (=> bs!1227596 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 (regOne!30368 r!7292))) (= lt!2162694 lt!2162731)) (= lambda!268188 lambda!268184))))

(declare-fun bs!1227602 () Bool)

(assert (= bs!1227602 (and d!1702640 b!5293163)))

(assert (=> bs!1227602 (not (= lambda!268188 lambda!268186))))

(assert (=> bs!1227595 (= lambda!268188 lambda!268103)))

(declare-fun bs!1227603 () Bool)

(assert (= bs!1227603 (and d!1702640 b!5293160)))

(assert (=> bs!1227603 (not (= lambda!268188 lambda!268187))))

(assert (=> d!1702640 true))

(assert (=> d!1702640 true))

(assert (=> d!1702640 true))

(declare-fun lambda!268189 () Int)

(assert (=> bs!1227595 (= lambda!268189 lambda!268104)))

(assert (=> bs!1227595 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 (regOne!30368 r!7292))) (= lt!2162694 lt!2162731)) (= lambda!268189 lambda!268102))))

(assert (=> bs!1227596 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 (regOne!30368 r!7292))) (= lt!2162694 lt!2162731)) (= lambda!268189 lambda!268185))))

(assert (=> bs!1227597 (not (= lambda!268189 lambda!268180))))

(assert (=> bs!1227598 (not (= lambda!268189 lambda!268159))))

(assert (=> bs!1227600 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162694 (regTwo!30368 r!7292))) (= lambda!268189 lambda!268181))))

(assert (=> bs!1227599 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162694 (regTwo!30368 r!7292))) (= lambda!268189 lambda!268099))))

(assert (=> bs!1227595 (not (= lambda!268189 lambda!268101))))

(assert (=> bs!1227598 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162694 (regTwo!30368 r!7292))) (= lambda!268189 lambda!268160))))

(assert (=> bs!1227601 (not (= lambda!268189 lambda!268154))))

(assert (=> bs!1227596 (not (= lambda!268189 lambda!268184))))

(assert (=> bs!1227602 (not (= lambda!268189 lambda!268186))))

(declare-fun bs!1227604 () Bool)

(assert (= bs!1227604 d!1702640))

(assert (=> bs!1227604 (not (= lambda!268189 lambda!268188))))

(assert (=> bs!1227599 (not (= lambda!268189 lambda!268098))))

(assert (=> bs!1227595 (not (= lambda!268189 lambda!268103))))

(assert (=> bs!1227603 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 lt!2162731)) (= lt!2162694 (regTwo!30368 lt!2162731))) (= lambda!268189 lambda!268187))))

(assert (=> d!1702640 true))

(assert (=> d!1702640 true))

(assert (=> d!1702640 true))

(assert (=> d!1702640 (= (Exists!2109 lambda!268188) (Exists!2109 lambda!268189))))

(declare-fun lt!2162954 () Unit!153230)

(assert (=> d!1702640 (= lt!2162954 (choose!39524 (regTwo!30368 (regOne!30368 r!7292)) lt!2162694 s!2326))))

(assert (=> d!1702640 (validRegex!6664 (regTwo!30368 (regOne!30368 r!7292)))))

(assert (=> d!1702640 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!763 (regTwo!30368 (regOne!30368 r!7292)) lt!2162694 s!2326) lt!2162954)))

(declare-fun m!6330688 () Bool)

(assert (=> bs!1227604 m!6330688))

(declare-fun m!6330690 () Bool)

(assert (=> bs!1227604 m!6330690))

(declare-fun m!6330692 () Bool)

(assert (=> bs!1227604 m!6330692))

(assert (=> bs!1227604 m!6330658))

(assert (=> b!5292582 d!1702640))

(declare-fun bs!1227605 () Bool)

(declare-fun d!1702642 () Bool)

(assert (= bs!1227605 (and d!1702642 b!5292582)))

(declare-fun lambda!268190 () Int)

(assert (=> bs!1227605 (not (= lambda!268190 lambda!268104))))

(assert (=> bs!1227605 (not (= lambda!268190 lambda!268102))))

(declare-fun bs!1227606 () Bool)

(assert (= bs!1227606 (and d!1702642 d!1702632)))

(assert (=> bs!1227606 (not (= lambda!268190 lambda!268185))))

(declare-fun bs!1227607 () Bool)

(assert (= bs!1227607 (and d!1702642 b!5293054)))

(assert (=> bs!1227607 (not (= lambda!268190 lambda!268180))))

(declare-fun bs!1227608 () Bool)

(assert (= bs!1227608 (and d!1702642 d!1702640)))

(assert (=> bs!1227608 (not (= lambda!268190 lambda!268189))))

(declare-fun bs!1227609 () Bool)

(assert (= bs!1227609 (and d!1702642 d!1702564)))

(assert (=> bs!1227609 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162694 (regTwo!30368 r!7292))) (= lambda!268190 lambda!268159))))

(declare-fun bs!1227610 () Bool)

(assert (= bs!1227610 (and d!1702642 b!5293051)))

(assert (=> bs!1227610 (not (= lambda!268190 lambda!268181))))

(declare-fun bs!1227611 () Bool)

(assert (= bs!1227611 (and d!1702642 b!5292588)))

(assert (=> bs!1227611 (not (= lambda!268190 lambda!268099))))

(assert (=> bs!1227605 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 (regOne!30368 r!7292))) (= lt!2162694 lt!2162731)) (= lambda!268190 lambda!268101))))

(assert (=> bs!1227609 (not (= lambda!268190 lambda!268160))))

(declare-fun bs!1227612 () Bool)

(assert (= bs!1227612 (and d!1702642 d!1702562)))

(assert (=> bs!1227612 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162694 (regTwo!30368 r!7292))) (= lambda!268190 lambda!268154))))

(assert (=> bs!1227606 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 (regOne!30368 r!7292))) (= lt!2162694 lt!2162731)) (= lambda!268190 lambda!268184))))

(declare-fun bs!1227613 () Bool)

(assert (= bs!1227613 (and d!1702642 b!5293163)))

(assert (=> bs!1227613 (not (= lambda!268190 lambda!268186))))

(assert (=> bs!1227608 (= lambda!268190 lambda!268188)))

(assert (=> bs!1227611 (= (and (= (regTwo!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162694 (regTwo!30368 r!7292))) (= lambda!268190 lambda!268098))))

(assert (=> bs!1227605 (= lambda!268190 lambda!268103)))

(declare-fun bs!1227614 () Bool)

(assert (= bs!1227614 (and d!1702642 b!5293160)))

(assert (=> bs!1227614 (not (= lambda!268190 lambda!268187))))

(assert (=> d!1702642 true))

(assert (=> d!1702642 true))

(assert (=> d!1702642 true))

(assert (=> d!1702642 (= (isDefined!11742 (findConcatSeparation!1453 (regTwo!30368 (regOne!30368 r!7292)) lt!2162694 Nil!60961 s!2326 s!2326)) (Exists!2109 lambda!268190))))

(declare-fun lt!2162955 () Unit!153230)

(assert (=> d!1702642 (= lt!2162955 (choose!39523 (regTwo!30368 (regOne!30368 r!7292)) lt!2162694 s!2326))))

(assert (=> d!1702642 (validRegex!6664 (regTwo!30368 (regOne!30368 r!7292)))))

(assert (=> d!1702642 (= (lemmaFindConcatSeparationEquivalentToExists!1217 (regTwo!30368 (regOne!30368 r!7292)) lt!2162694 s!2326) lt!2162955)))

(declare-fun bs!1227615 () Bool)

(assert (= bs!1227615 d!1702642))

(assert (=> bs!1227615 m!6330078))

(assert (=> bs!1227615 m!6330080))

(assert (=> bs!1227615 m!6330658))

(assert (=> bs!1227615 m!6330078))

(declare-fun m!6330694 () Bool)

(assert (=> bs!1227615 m!6330694))

(declare-fun m!6330696 () Bool)

(assert (=> bs!1227615 m!6330696))

(assert (=> b!5292582 d!1702642))

(declare-fun bs!1227616 () Bool)

(declare-fun b!5293174 () Bool)

(assert (= bs!1227616 (and b!5293174 b!5292582)))

(declare-fun lambda!268191 () Int)

(assert (=> bs!1227616 (not (= lambda!268191 lambda!268104))))

(assert (=> bs!1227616 (not (= lambda!268191 lambda!268102))))

(declare-fun bs!1227617 () Bool)

(assert (= bs!1227617 (and b!5293174 d!1702632)))

(assert (=> bs!1227617 (not (= lambda!268191 lambda!268185))))

(declare-fun bs!1227618 () Bool)

(assert (= bs!1227618 (and b!5293174 b!5293054)))

(assert (=> bs!1227618 (= (and (= (reg!15257 lt!2162729) (reg!15257 r!7292)) (= lt!2162729 r!7292)) (= lambda!268191 lambda!268180))))

(declare-fun bs!1227619 () Bool)

(assert (= bs!1227619 (and b!5293174 d!1702640)))

(assert (=> bs!1227619 (not (= lambda!268191 lambda!268189))))

(declare-fun bs!1227620 () Bool)

(assert (= bs!1227620 (and b!5293174 d!1702564)))

(assert (=> bs!1227620 (not (= lambda!268191 lambda!268159))))

(declare-fun bs!1227621 () Bool)

(assert (= bs!1227621 (and b!5293174 b!5293051)))

(assert (=> bs!1227621 (not (= lambda!268191 lambda!268181))))

(declare-fun bs!1227622 () Bool)

(assert (= bs!1227622 (and b!5293174 b!5292588)))

(assert (=> bs!1227622 (not (= lambda!268191 lambda!268099))))

(assert (=> bs!1227616 (not (= lambda!268191 lambda!268101))))

(declare-fun bs!1227623 () Bool)

(assert (= bs!1227623 (and b!5293174 d!1702642)))

(assert (=> bs!1227623 (not (= lambda!268191 lambda!268190))))

(assert (=> bs!1227620 (not (= lambda!268191 lambda!268160))))

(declare-fun bs!1227624 () Bool)

(assert (= bs!1227624 (and b!5293174 d!1702562)))

(assert (=> bs!1227624 (not (= lambda!268191 lambda!268154))))

(assert (=> bs!1227617 (not (= lambda!268191 lambda!268184))))

(declare-fun bs!1227625 () Bool)

(assert (= bs!1227625 (and b!5293174 b!5293163)))

(assert (=> bs!1227625 (= (and (= (reg!15257 lt!2162729) (reg!15257 lt!2162731)) (= lt!2162729 lt!2162731)) (= lambda!268191 lambda!268186))))

(assert (=> bs!1227619 (not (= lambda!268191 lambda!268188))))

(assert (=> bs!1227622 (not (= lambda!268191 lambda!268098))))

(assert (=> bs!1227616 (not (= lambda!268191 lambda!268103))))

(declare-fun bs!1227626 () Bool)

(assert (= bs!1227626 (and b!5293174 b!5293160)))

(assert (=> bs!1227626 (not (= lambda!268191 lambda!268187))))

(assert (=> b!5293174 true))

(assert (=> b!5293174 true))

(declare-fun bs!1227627 () Bool)

(declare-fun b!5293171 () Bool)

(assert (= bs!1227627 (and b!5293171 b!5292582)))

(declare-fun lambda!268192 () Int)

(assert (=> bs!1227627 (= (and (= (regOne!30368 lt!2162729) (regTwo!30368 (regOne!30368 r!7292))) (= (regTwo!30368 lt!2162729) lt!2162694)) (= lambda!268192 lambda!268104))))

(assert (=> bs!1227627 (= (and (= (regOne!30368 lt!2162729) (regOne!30368 (regOne!30368 r!7292))) (= (regTwo!30368 lt!2162729) lt!2162731)) (= lambda!268192 lambda!268102))))

(declare-fun bs!1227628 () Bool)

(assert (= bs!1227628 (and b!5293171 d!1702632)))

(assert (=> bs!1227628 (= (and (= (regOne!30368 lt!2162729) (regOne!30368 (regOne!30368 r!7292))) (= (regTwo!30368 lt!2162729) lt!2162731)) (= lambda!268192 lambda!268185))))

(declare-fun bs!1227629 () Bool)

(assert (= bs!1227629 (and b!5293171 b!5293054)))

(assert (=> bs!1227629 (not (= lambda!268192 lambda!268180))))

(declare-fun bs!1227630 () Bool)

(assert (= bs!1227630 (and b!5293171 d!1702640)))

(assert (=> bs!1227630 (= (and (= (regOne!30368 lt!2162729) (regTwo!30368 (regOne!30368 r!7292))) (= (regTwo!30368 lt!2162729) lt!2162694)) (= lambda!268192 lambda!268189))))

(declare-fun bs!1227631 () Bool)

(assert (= bs!1227631 (and b!5293171 d!1702564)))

(assert (=> bs!1227631 (not (= lambda!268192 lambda!268159))))

(declare-fun bs!1227632 () Bool)

(assert (= bs!1227632 (and b!5293171 b!5293051)))

(assert (=> bs!1227632 (= (and (= (regOne!30368 lt!2162729) (regOne!30368 r!7292)) (= (regTwo!30368 lt!2162729) (regTwo!30368 r!7292))) (= lambda!268192 lambda!268181))))

(declare-fun bs!1227633 () Bool)

(assert (= bs!1227633 (and b!5293171 b!5292588)))

(assert (=> bs!1227633 (= (and (= (regOne!30368 lt!2162729) (regOne!30368 r!7292)) (= (regTwo!30368 lt!2162729) (regTwo!30368 r!7292))) (= lambda!268192 lambda!268099))))

(declare-fun bs!1227634 () Bool)

(assert (= bs!1227634 (and b!5293171 b!5293174)))

(assert (=> bs!1227634 (not (= lambda!268192 lambda!268191))))

(assert (=> bs!1227627 (not (= lambda!268192 lambda!268101))))

(declare-fun bs!1227635 () Bool)

(assert (= bs!1227635 (and b!5293171 d!1702642)))

(assert (=> bs!1227635 (not (= lambda!268192 lambda!268190))))

(assert (=> bs!1227631 (= (and (= (regOne!30368 lt!2162729) (regOne!30368 r!7292)) (= (regTwo!30368 lt!2162729) (regTwo!30368 r!7292))) (= lambda!268192 lambda!268160))))

(declare-fun bs!1227636 () Bool)

(assert (= bs!1227636 (and b!5293171 d!1702562)))

(assert (=> bs!1227636 (not (= lambda!268192 lambda!268154))))

(assert (=> bs!1227628 (not (= lambda!268192 lambda!268184))))

(declare-fun bs!1227637 () Bool)

(assert (= bs!1227637 (and b!5293171 b!5293163)))

(assert (=> bs!1227637 (not (= lambda!268192 lambda!268186))))

(assert (=> bs!1227630 (not (= lambda!268192 lambda!268188))))

(assert (=> bs!1227633 (not (= lambda!268192 lambda!268098))))

(assert (=> bs!1227627 (not (= lambda!268192 lambda!268103))))

(declare-fun bs!1227638 () Bool)

(assert (= bs!1227638 (and b!5293171 b!5293160)))

(assert (=> bs!1227638 (= (and (= (regOne!30368 lt!2162729) (regOne!30368 lt!2162731)) (= (regTwo!30368 lt!2162729) (regTwo!30368 lt!2162731))) (= lambda!268192 lambda!268187))))

(assert (=> b!5293171 true))

(assert (=> b!5293171 true))

(declare-fun b!5293168 () Bool)

(declare-fun c!918337 () Bool)

(assert (=> b!5293168 (= c!918337 (is-Union!14928 lt!2162729))))

(declare-fun e!3290444 () Bool)

(declare-fun e!3290445 () Bool)

(assert (=> b!5293168 (= e!3290444 e!3290445)))

(declare-fun call!377241 () Bool)

(declare-fun c!918335 () Bool)

(declare-fun bm!377236 () Bool)

(assert (=> bm!377236 (= call!377241 (Exists!2109 (ite c!918335 lambda!268191 lambda!268192)))))

(declare-fun b!5293169 () Bool)

(declare-fun e!3290446 () Bool)

(assert (=> b!5293169 (= e!3290446 (matchRSpec!2031 (regTwo!30369 lt!2162729) s!2326))))

(declare-fun b!5293170 () Bool)

(declare-fun c!918336 () Bool)

(assert (=> b!5293170 (= c!918336 (is-ElementMatch!14928 lt!2162729))))

(declare-fun e!3290440 () Bool)

(assert (=> b!5293170 (= e!3290440 e!3290444)))

(declare-fun e!3290443 () Bool)

(assert (=> b!5293171 (= e!3290443 call!377241)))

(declare-fun b!5293172 () Bool)

(declare-fun e!3290442 () Bool)

(assert (=> b!5293172 (= e!3290442 e!3290440)))

(declare-fun res!2245003 () Bool)

(assert (=> b!5293172 (= res!2245003 (not (is-EmptyLang!14928 lt!2162729)))))

(assert (=> b!5293172 (=> (not res!2245003) (not e!3290440))))

(declare-fun b!5293173 () Bool)

(assert (=> b!5293173 (= e!3290445 e!3290446)))

(declare-fun res!2245002 () Bool)

(assert (=> b!5293173 (= res!2245002 (matchRSpec!2031 (regOne!30369 lt!2162729) s!2326))))

(assert (=> b!5293173 (=> res!2245002 e!3290446)))

(declare-fun d!1702644 () Bool)

(declare-fun c!918334 () Bool)

(assert (=> d!1702644 (= c!918334 (is-EmptyExpr!14928 lt!2162729))))

(assert (=> d!1702644 (= (matchRSpec!2031 lt!2162729 s!2326) e!3290442)))

(declare-fun bm!377237 () Bool)

(declare-fun call!377242 () Bool)

(assert (=> bm!377237 (= call!377242 (isEmpty!32917 s!2326))))

(declare-fun e!3290441 () Bool)

(assert (=> b!5293174 (= e!3290441 call!377241)))

(declare-fun b!5293175 () Bool)

(assert (=> b!5293175 (= e!3290444 (= s!2326 (Cons!60961 (c!918186 lt!2162729) Nil!60961)))))

(declare-fun b!5293176 () Bool)

(assert (=> b!5293176 (= e!3290442 call!377242)))

(declare-fun b!5293177 () Bool)

(assert (=> b!5293177 (= e!3290445 e!3290443)))

(assert (=> b!5293177 (= c!918335 (is-Star!14928 lt!2162729))))

(declare-fun b!5293178 () Bool)

(declare-fun res!2245004 () Bool)

(assert (=> b!5293178 (=> res!2245004 e!3290441)))

(assert (=> b!5293178 (= res!2245004 call!377242)))

(assert (=> b!5293178 (= e!3290443 e!3290441)))

(assert (= (and d!1702644 c!918334) b!5293176))

(assert (= (and d!1702644 (not c!918334)) b!5293172))

(assert (= (and b!5293172 res!2245003) b!5293170))

(assert (= (and b!5293170 c!918336) b!5293175))

(assert (= (and b!5293170 (not c!918336)) b!5293168))

(assert (= (and b!5293168 c!918337) b!5293173))

(assert (= (and b!5293168 (not c!918337)) b!5293177))

(assert (= (and b!5293173 (not res!2245002)) b!5293169))

(assert (= (and b!5293177 c!918335) b!5293178))

(assert (= (and b!5293177 (not c!918335)) b!5293171))

(assert (= (and b!5293178 (not res!2245004)) b!5293174))

(assert (= (or b!5293174 b!5293171) bm!377236))

(assert (= (or b!5293176 b!5293178) bm!377237))

(declare-fun m!6330698 () Bool)

(assert (=> bm!377236 m!6330698))

(declare-fun m!6330700 () Bool)

(assert (=> b!5293169 m!6330700))

(declare-fun m!6330702 () Bool)

(assert (=> b!5293173 m!6330702))

(assert (=> bm!377237 m!6330588))

(assert (=> b!5292582 d!1702644))

(declare-fun bs!1227639 () Bool)

(declare-fun d!1702646 () Bool)

(assert (= bs!1227639 (and d!1702646 d!1702544)))

(declare-fun lambda!268193 () Int)

(assert (=> bs!1227639 (= lambda!268193 lambda!268148)))

(declare-fun bs!1227640 () Bool)

(assert (= bs!1227640 (and d!1702646 d!1702542)))

(assert (=> bs!1227640 (= lambda!268193 lambda!268145)))

(declare-fun bs!1227641 () Bool)

(assert (= bs!1227641 (and d!1702646 d!1702572)))

(assert (=> bs!1227641 (= lambda!268193 lambda!268163)))

(declare-fun bs!1227642 () Bool)

(assert (= bs!1227642 (and d!1702646 d!1702626)))

(assert (=> bs!1227642 (= lambda!268193 lambda!268183)))

(declare-fun bs!1227643 () Bool)

(assert (= bs!1227643 (and d!1702646 d!1702624)))

(assert (=> bs!1227643 (= lambda!268193 lambda!268182)))

(declare-fun bs!1227644 () Bool)

(assert (= bs!1227644 (and d!1702646 d!1702540)))

(assert (=> bs!1227644 (= lambda!268193 lambda!268142)))

(declare-fun bs!1227645 () Bool)

(assert (= bs!1227645 (and d!1702646 b!5292599)))

(assert (=> bs!1227645 (= lambda!268193 lambda!268105)))

(declare-fun b!5293179 () Bool)

(declare-fun e!3290447 () Regex!14928)

(assert (=> b!5293179 (= e!3290447 EmptyExpr!14928)))

(declare-fun b!5293180 () Bool)

(declare-fun e!3290450 () Bool)

(assert (=> b!5293180 (= e!3290450 (isEmpty!32913 (t!374288 lt!2162712)))))

(declare-fun b!5293181 () Bool)

(declare-fun e!3290449 () Bool)

(declare-fun lt!2162956 () Regex!14928)

(assert (=> b!5293181 (= e!3290449 (isConcat!369 lt!2162956))))

(declare-fun b!5293182 () Bool)

(declare-fun e!3290452 () Bool)

(declare-fun e!3290451 () Bool)

(assert (=> b!5293182 (= e!3290452 e!3290451)))

(declare-fun c!918340 () Bool)

(assert (=> b!5293182 (= c!918340 (isEmpty!32913 lt!2162712))))

(declare-fun b!5293183 () Bool)

(assert (=> b!5293183 (= e!3290451 (isEmptyExpr!846 lt!2162956))))

(assert (=> d!1702646 e!3290452))

(declare-fun res!2245006 () Bool)

(assert (=> d!1702646 (=> (not res!2245006) (not e!3290452))))

(assert (=> d!1702646 (= res!2245006 (validRegex!6664 lt!2162956))))

(declare-fun e!3290448 () Regex!14928)

(assert (=> d!1702646 (= lt!2162956 e!3290448)))

(declare-fun c!918338 () Bool)

(assert (=> d!1702646 (= c!918338 e!3290450)))

(declare-fun res!2245005 () Bool)

(assert (=> d!1702646 (=> (not res!2245005) (not e!3290450))))

(assert (=> d!1702646 (= res!2245005 (is-Cons!60959 lt!2162712))))

(assert (=> d!1702646 (forall!14336 lt!2162712 lambda!268193)))

(assert (=> d!1702646 (= (generalisedConcat!597 lt!2162712) lt!2162956)))

(declare-fun b!5293184 () Bool)

(assert (=> b!5293184 (= e!3290448 e!3290447)))

(declare-fun c!918341 () Bool)

(assert (=> b!5293184 (= c!918341 (is-Cons!60959 lt!2162712))))

(declare-fun b!5293185 () Bool)

(assert (=> b!5293185 (= e!3290447 (Concat!23773 (h!67407 lt!2162712) (generalisedConcat!597 (t!374288 lt!2162712))))))

(declare-fun b!5293186 () Bool)

(assert (=> b!5293186 (= e!3290451 e!3290449)))

(declare-fun c!918339 () Bool)

(assert (=> b!5293186 (= c!918339 (isEmpty!32913 (tail!10438 lt!2162712)))))

(declare-fun b!5293187 () Bool)

(assert (=> b!5293187 (= e!3290449 (= lt!2162956 (head!11341 lt!2162712)))))

(declare-fun b!5293188 () Bool)

(assert (=> b!5293188 (= e!3290448 (h!67407 lt!2162712))))

(assert (= (and d!1702646 res!2245005) b!5293180))

(assert (= (and d!1702646 c!918338) b!5293188))

(assert (= (and d!1702646 (not c!918338)) b!5293184))

(assert (= (and b!5293184 c!918341) b!5293185))

(assert (= (and b!5293184 (not c!918341)) b!5293179))

(assert (= (and d!1702646 res!2245006) b!5293182))

(assert (= (and b!5293182 c!918340) b!5293183))

(assert (= (and b!5293182 (not c!918340)) b!5293186))

(assert (= (and b!5293186 c!918339) b!5293187))

(assert (= (and b!5293186 (not c!918339)) b!5293181))

(declare-fun m!6330704 () Bool)

(assert (=> b!5293186 m!6330704))

(assert (=> b!5293186 m!6330704))

(declare-fun m!6330706 () Bool)

(assert (=> b!5293186 m!6330706))

(declare-fun m!6330708 () Bool)

(assert (=> b!5293183 m!6330708))

(declare-fun m!6330710 () Bool)

(assert (=> d!1702646 m!6330710))

(declare-fun m!6330712 () Bool)

(assert (=> d!1702646 m!6330712))

(declare-fun m!6330714 () Bool)

(assert (=> b!5293182 m!6330714))

(declare-fun m!6330716 () Bool)

(assert (=> b!5293181 m!6330716))

(declare-fun m!6330718 () Bool)

(assert (=> b!5293180 m!6330718))

(declare-fun m!6330720 () Bool)

(assert (=> b!5293185 m!6330720))

(declare-fun m!6330722 () Bool)

(assert (=> b!5293187 m!6330722))

(assert (=> b!5292582 d!1702646))

(declare-fun b!5293189 () Bool)

(declare-fun res!2245011 () Bool)

(declare-fun e!3290459 () Bool)

(assert (=> b!5293189 (=> (not res!2245011) (not e!3290459))))

(assert (=> b!5293189 (= res!2245011 (isEmpty!32917 (tail!10437 s!2326)))))

(declare-fun b!5293190 () Bool)

(declare-fun res!2245009 () Bool)

(declare-fun e!3290455 () Bool)

(assert (=> b!5293190 (=> res!2245009 e!3290455)))

(assert (=> b!5293190 (= res!2245009 e!3290459)))

(declare-fun res!2245014 () Bool)

(assert (=> b!5293190 (=> (not res!2245014) (not e!3290459))))

(declare-fun lt!2162957 () Bool)

(assert (=> b!5293190 (= res!2245014 lt!2162957)))

(declare-fun b!5293191 () Bool)

(declare-fun e!3290458 () Bool)

(declare-fun e!3290454 () Bool)

(assert (=> b!5293191 (= e!3290458 e!3290454)))

(declare-fun res!2245012 () Bool)

(assert (=> b!5293191 (=> res!2245012 e!3290454)))

(declare-fun call!377243 () Bool)

(assert (=> b!5293191 (= res!2245012 call!377243)))

(declare-fun b!5293192 () Bool)

(assert (=> b!5293192 (= e!3290455 e!3290458)))

(declare-fun res!2245013 () Bool)

(assert (=> b!5293192 (=> (not res!2245013) (not e!3290458))))

(assert (=> b!5293192 (= res!2245013 (not lt!2162957))))

(declare-fun bm!377238 () Bool)

(assert (=> bm!377238 (= call!377243 (isEmpty!32917 s!2326))))

(declare-fun b!5293193 () Bool)

(declare-fun e!3290453 () Bool)

(assert (=> b!5293193 (= e!3290453 (= lt!2162957 call!377243))))

(declare-fun b!5293194 () Bool)

(declare-fun res!2245007 () Bool)

(assert (=> b!5293194 (=> res!2245007 e!3290454)))

(assert (=> b!5293194 (= res!2245007 (not (isEmpty!32917 (tail!10437 s!2326))))))

(declare-fun b!5293195 () Bool)

(declare-fun e!3290457 () Bool)

(assert (=> b!5293195 (= e!3290457 (not lt!2162957))))

(declare-fun b!5293196 () Bool)

(declare-fun e!3290456 () Bool)

(assert (=> b!5293196 (= e!3290456 (matchR!7113 (derivativeStep!4132 lt!2162731 (head!11340 s!2326)) (tail!10437 s!2326)))))

(declare-fun b!5293197 () Bool)

(assert (=> b!5293197 (= e!3290453 e!3290457)))

(declare-fun c!918342 () Bool)

(assert (=> b!5293197 (= c!918342 (is-EmptyLang!14928 lt!2162731))))

(declare-fun b!5293198 () Bool)

(declare-fun res!2245010 () Bool)

(assert (=> b!5293198 (=> res!2245010 e!3290455)))

(assert (=> b!5293198 (= res!2245010 (not (is-ElementMatch!14928 lt!2162731)))))

(assert (=> b!5293198 (= e!3290457 e!3290455)))

(declare-fun b!5293199 () Bool)

(assert (=> b!5293199 (= e!3290456 (nullable!5097 lt!2162731))))

(declare-fun b!5293200 () Bool)

(assert (=> b!5293200 (= e!3290459 (= (head!11340 s!2326) (c!918186 lt!2162731)))))

(declare-fun d!1702648 () Bool)

(assert (=> d!1702648 e!3290453))

(declare-fun c!918344 () Bool)

(assert (=> d!1702648 (= c!918344 (is-EmptyExpr!14928 lt!2162731))))

(assert (=> d!1702648 (= lt!2162957 e!3290456)))

(declare-fun c!918343 () Bool)

(assert (=> d!1702648 (= c!918343 (isEmpty!32917 s!2326))))

(assert (=> d!1702648 (validRegex!6664 lt!2162731)))

(assert (=> d!1702648 (= (matchR!7113 lt!2162731 s!2326) lt!2162957)))

(declare-fun b!5293201 () Bool)

(declare-fun res!2245008 () Bool)

(assert (=> b!5293201 (=> (not res!2245008) (not e!3290459))))

(assert (=> b!5293201 (= res!2245008 (not call!377243))))

(declare-fun b!5293202 () Bool)

(assert (=> b!5293202 (= e!3290454 (not (= (head!11340 s!2326) (c!918186 lt!2162731))))))

(assert (= (and d!1702648 c!918343) b!5293199))

(assert (= (and d!1702648 (not c!918343)) b!5293196))

(assert (= (and d!1702648 c!918344) b!5293193))

(assert (= (and d!1702648 (not c!918344)) b!5293197))

(assert (= (and b!5293197 c!918342) b!5293195))

(assert (= (and b!5293197 (not c!918342)) b!5293198))

(assert (= (and b!5293198 (not res!2245010)) b!5293190))

(assert (= (and b!5293190 res!2245014) b!5293201))

(assert (= (and b!5293201 res!2245008) b!5293189))

(assert (= (and b!5293189 res!2245011) b!5293200))

(assert (= (and b!5293190 (not res!2245009)) b!5293192))

(assert (= (and b!5293192 res!2245013) b!5293191))

(assert (= (and b!5293191 (not res!2245012)) b!5293194))

(assert (= (and b!5293194 (not res!2245007)) b!5293202))

(assert (= (or b!5293193 b!5293191 b!5293201) bm!377238))

(assert (=> b!5293194 m!6330590))

(assert (=> b!5293194 m!6330590))

(assert (=> b!5293194 m!6330592))

(assert (=> b!5293196 m!6330594))

(assert (=> b!5293196 m!6330594))

(declare-fun m!6330724 () Bool)

(assert (=> b!5293196 m!6330724))

(assert (=> b!5293196 m!6330590))

(assert (=> b!5293196 m!6330724))

(assert (=> b!5293196 m!6330590))

(declare-fun m!6330726 () Bool)

(assert (=> b!5293196 m!6330726))

(assert (=> b!5293202 m!6330594))

(assert (=> d!1702648 m!6330588))

(assert (=> d!1702648 m!6330650))

(assert (=> b!5293200 m!6330594))

(assert (=> bm!377238 m!6330588))

(declare-fun m!6330728 () Bool)

(assert (=> b!5293199 m!6330728))

(assert (=> b!5293189 m!6330590))

(assert (=> b!5293189 m!6330590))

(assert (=> b!5293189 m!6330592))

(assert (=> b!5292582 d!1702648))

(declare-fun b!5293203 () Bool)

(declare-fun res!2245019 () Bool)

(declare-fun e!3290466 () Bool)

(assert (=> b!5293203 (=> (not res!2245019) (not e!3290466))))

(assert (=> b!5293203 (= res!2245019 (isEmpty!32917 (tail!10437 s!2326)))))

(declare-fun b!5293204 () Bool)

(declare-fun res!2245017 () Bool)

(declare-fun e!3290462 () Bool)

(assert (=> b!5293204 (=> res!2245017 e!3290462)))

(assert (=> b!5293204 (= res!2245017 e!3290466)))

(declare-fun res!2245022 () Bool)

(assert (=> b!5293204 (=> (not res!2245022) (not e!3290466))))

(declare-fun lt!2162958 () Bool)

(assert (=> b!5293204 (= res!2245022 lt!2162958)))

(declare-fun b!5293205 () Bool)

(declare-fun e!3290465 () Bool)

(declare-fun e!3290461 () Bool)

(assert (=> b!5293205 (= e!3290465 e!3290461)))

(declare-fun res!2245020 () Bool)

(assert (=> b!5293205 (=> res!2245020 e!3290461)))

(declare-fun call!377244 () Bool)

(assert (=> b!5293205 (= res!2245020 call!377244)))

(declare-fun b!5293206 () Bool)

(assert (=> b!5293206 (= e!3290462 e!3290465)))

(declare-fun res!2245021 () Bool)

(assert (=> b!5293206 (=> (not res!2245021) (not e!3290465))))

(assert (=> b!5293206 (= res!2245021 (not lt!2162958))))

(declare-fun bm!377239 () Bool)

(assert (=> bm!377239 (= call!377244 (isEmpty!32917 s!2326))))

(declare-fun b!5293207 () Bool)

(declare-fun e!3290460 () Bool)

(assert (=> b!5293207 (= e!3290460 (= lt!2162958 call!377244))))

(declare-fun b!5293208 () Bool)

(declare-fun res!2245015 () Bool)

(assert (=> b!5293208 (=> res!2245015 e!3290461)))

(assert (=> b!5293208 (= res!2245015 (not (isEmpty!32917 (tail!10437 s!2326))))))

(declare-fun b!5293209 () Bool)

(declare-fun e!3290464 () Bool)

(assert (=> b!5293209 (= e!3290464 (not lt!2162958))))

(declare-fun b!5293210 () Bool)

(declare-fun e!3290463 () Bool)

(assert (=> b!5293210 (= e!3290463 (matchR!7113 (derivativeStep!4132 lt!2162729 (head!11340 s!2326)) (tail!10437 s!2326)))))

(declare-fun b!5293211 () Bool)

(assert (=> b!5293211 (= e!3290460 e!3290464)))

(declare-fun c!918345 () Bool)

(assert (=> b!5293211 (= c!918345 (is-EmptyLang!14928 lt!2162729))))

(declare-fun b!5293212 () Bool)

(declare-fun res!2245018 () Bool)

(assert (=> b!5293212 (=> res!2245018 e!3290462)))

(assert (=> b!5293212 (= res!2245018 (not (is-ElementMatch!14928 lt!2162729)))))

(assert (=> b!5293212 (= e!3290464 e!3290462)))

(declare-fun b!5293213 () Bool)

(assert (=> b!5293213 (= e!3290463 (nullable!5097 lt!2162729))))

(declare-fun b!5293214 () Bool)

(assert (=> b!5293214 (= e!3290466 (= (head!11340 s!2326) (c!918186 lt!2162729)))))

(declare-fun d!1702650 () Bool)

(assert (=> d!1702650 e!3290460))

(declare-fun c!918347 () Bool)

(assert (=> d!1702650 (= c!918347 (is-EmptyExpr!14928 lt!2162729))))

(assert (=> d!1702650 (= lt!2162958 e!3290463)))

(declare-fun c!918346 () Bool)

(assert (=> d!1702650 (= c!918346 (isEmpty!32917 s!2326))))

(assert (=> d!1702650 (validRegex!6664 lt!2162729)))

(assert (=> d!1702650 (= (matchR!7113 lt!2162729 s!2326) lt!2162958)))

(declare-fun b!5293215 () Bool)

(declare-fun res!2245016 () Bool)

(assert (=> b!5293215 (=> (not res!2245016) (not e!3290466))))

(assert (=> b!5293215 (= res!2245016 (not call!377244))))

(declare-fun b!5293216 () Bool)

(assert (=> b!5293216 (= e!3290461 (not (= (head!11340 s!2326) (c!918186 lt!2162729))))))

(assert (= (and d!1702650 c!918346) b!5293213))

(assert (= (and d!1702650 (not c!918346)) b!5293210))

(assert (= (and d!1702650 c!918347) b!5293207))

(assert (= (and d!1702650 (not c!918347)) b!5293211))

(assert (= (and b!5293211 c!918345) b!5293209))

(assert (= (and b!5293211 (not c!918345)) b!5293212))

(assert (= (and b!5293212 (not res!2245018)) b!5293204))

(assert (= (and b!5293204 res!2245022) b!5293215))

(assert (= (and b!5293215 res!2245016) b!5293203))

(assert (= (and b!5293203 res!2245019) b!5293214))

(assert (= (and b!5293204 (not res!2245017)) b!5293206))

(assert (= (and b!5293206 res!2245021) b!5293205))

(assert (= (and b!5293205 (not res!2245020)) b!5293208))

(assert (= (and b!5293208 (not res!2245015)) b!5293216))

(assert (= (or b!5293207 b!5293205 b!5293215) bm!377239))

(assert (=> b!5293208 m!6330590))

(assert (=> b!5293208 m!6330590))

(assert (=> b!5293208 m!6330592))

(assert (=> b!5293210 m!6330594))

(assert (=> b!5293210 m!6330594))

(declare-fun m!6330730 () Bool)

(assert (=> b!5293210 m!6330730))

(assert (=> b!5293210 m!6330590))

(assert (=> b!5293210 m!6330730))

(assert (=> b!5293210 m!6330590))

(declare-fun m!6330732 () Bool)

(assert (=> b!5293210 m!6330732))

(assert (=> b!5293216 m!6330594))

(assert (=> d!1702650 m!6330588))

(declare-fun m!6330734 () Bool)

(assert (=> d!1702650 m!6330734))

(assert (=> b!5293214 m!6330594))

(assert (=> bm!377239 m!6330588))

(declare-fun m!6330736 () Bool)

(assert (=> b!5293213 m!6330736))

(assert (=> b!5293203 m!6330590))

(assert (=> b!5293203 m!6330590))

(assert (=> b!5293203 m!6330592))

(assert (=> b!5292582 d!1702650))

(declare-fun d!1702652 () Bool)

(assert (=> d!1702652 (= (Exists!2109 lambda!268101) (choose!39522 lambda!268101))))

(declare-fun bs!1227646 () Bool)

(assert (= bs!1227646 d!1702652))

(declare-fun m!6330738 () Bool)

(assert (=> bs!1227646 m!6330738))

(assert (=> b!5292582 d!1702652))

(declare-fun d!1702654 () Bool)

(assert (=> d!1702654 (= (matchR!7113 lt!2162731 s!2326) (matchRSpec!2031 lt!2162731 s!2326))))

(declare-fun lt!2162959 () Unit!153230)

(assert (=> d!1702654 (= lt!2162959 (choose!39526 lt!2162731 s!2326))))

(assert (=> d!1702654 (validRegex!6664 lt!2162731)))

(assert (=> d!1702654 (= (mainMatchTheorem!2031 lt!2162731 s!2326) lt!2162959)))

(declare-fun bs!1227647 () Bool)

(assert (= bs!1227647 d!1702654))

(assert (=> bs!1227647 m!6330088))

(assert (=> bs!1227647 m!6330092))

(declare-fun m!6330740 () Bool)

(assert (=> bs!1227647 m!6330740))

(assert (=> bs!1227647 m!6330650))

(assert (=> b!5292582 d!1702654))

(declare-fun bs!1227648 () Bool)

(declare-fun d!1702656 () Bool)

(assert (= bs!1227648 (and d!1702656 d!1702544)))

(declare-fun lambda!268194 () Int)

(assert (=> bs!1227648 (= lambda!268194 lambda!268148)))

(declare-fun bs!1227649 () Bool)

(assert (= bs!1227649 (and d!1702656 d!1702542)))

(assert (=> bs!1227649 (= lambda!268194 lambda!268145)))

(declare-fun bs!1227650 () Bool)

(assert (= bs!1227650 (and d!1702656 d!1702572)))

(assert (=> bs!1227650 (= lambda!268194 lambda!268163)))

(declare-fun bs!1227651 () Bool)

(assert (= bs!1227651 (and d!1702656 d!1702626)))

(assert (=> bs!1227651 (= lambda!268194 lambda!268183)))

(declare-fun bs!1227652 () Bool)

(assert (= bs!1227652 (and d!1702656 d!1702624)))

(assert (=> bs!1227652 (= lambda!268194 lambda!268182)))

(declare-fun bs!1227653 () Bool)

(assert (= bs!1227653 (and d!1702656 d!1702540)))

(assert (=> bs!1227653 (= lambda!268194 lambda!268142)))

(declare-fun bs!1227654 () Bool)

(assert (= bs!1227654 (and d!1702656 b!5292599)))

(assert (=> bs!1227654 (= lambda!268194 lambda!268105)))

(declare-fun bs!1227655 () Bool)

(assert (= bs!1227655 (and d!1702656 d!1702646)))

(assert (=> bs!1227655 (= lambda!268194 lambda!268193)))

(declare-fun b!5293217 () Bool)

(declare-fun e!3290467 () Regex!14928)

(assert (=> b!5293217 (= e!3290467 EmptyExpr!14928)))

(declare-fun b!5293218 () Bool)

(declare-fun e!3290470 () Bool)

(assert (=> b!5293218 (= e!3290470 (isEmpty!32913 (t!374288 lt!2162696)))))

(declare-fun b!5293219 () Bool)

(declare-fun e!3290469 () Bool)

(declare-fun lt!2162960 () Regex!14928)

(assert (=> b!5293219 (= e!3290469 (isConcat!369 lt!2162960))))

(declare-fun b!5293220 () Bool)

(declare-fun e!3290472 () Bool)

(declare-fun e!3290471 () Bool)

(assert (=> b!5293220 (= e!3290472 e!3290471)))

(declare-fun c!918350 () Bool)

(assert (=> b!5293220 (= c!918350 (isEmpty!32913 lt!2162696))))

(declare-fun b!5293221 () Bool)

(assert (=> b!5293221 (= e!3290471 (isEmptyExpr!846 lt!2162960))))

(assert (=> d!1702656 e!3290472))

(declare-fun res!2245024 () Bool)

(assert (=> d!1702656 (=> (not res!2245024) (not e!3290472))))

(assert (=> d!1702656 (= res!2245024 (validRegex!6664 lt!2162960))))

(declare-fun e!3290468 () Regex!14928)

(assert (=> d!1702656 (= lt!2162960 e!3290468)))

(declare-fun c!918348 () Bool)

(assert (=> d!1702656 (= c!918348 e!3290470)))

(declare-fun res!2245023 () Bool)

(assert (=> d!1702656 (=> (not res!2245023) (not e!3290470))))

(assert (=> d!1702656 (= res!2245023 (is-Cons!60959 lt!2162696))))

(assert (=> d!1702656 (forall!14336 lt!2162696 lambda!268194)))

(assert (=> d!1702656 (= (generalisedConcat!597 lt!2162696) lt!2162960)))

(declare-fun b!5293222 () Bool)

(assert (=> b!5293222 (= e!3290468 e!3290467)))

(declare-fun c!918351 () Bool)

(assert (=> b!5293222 (= c!918351 (is-Cons!60959 lt!2162696))))

(declare-fun b!5293223 () Bool)

(assert (=> b!5293223 (= e!3290467 (Concat!23773 (h!67407 lt!2162696) (generalisedConcat!597 (t!374288 lt!2162696))))))

(declare-fun b!5293224 () Bool)

(assert (=> b!5293224 (= e!3290471 e!3290469)))

(declare-fun c!918349 () Bool)

(assert (=> b!5293224 (= c!918349 (isEmpty!32913 (tail!10438 lt!2162696)))))

(declare-fun b!5293225 () Bool)

(assert (=> b!5293225 (= e!3290469 (= lt!2162960 (head!11341 lt!2162696)))))

(declare-fun b!5293226 () Bool)

(assert (=> b!5293226 (= e!3290468 (h!67407 lt!2162696))))

(assert (= (and d!1702656 res!2245023) b!5293218))

(assert (= (and d!1702656 c!918348) b!5293226))

(assert (= (and d!1702656 (not c!918348)) b!5293222))

(assert (= (and b!5293222 c!918351) b!5293223))

(assert (= (and b!5293222 (not c!918351)) b!5293217))

(assert (= (and d!1702656 res!2245024) b!5293220))

(assert (= (and b!5293220 c!918350) b!5293221))

(assert (= (and b!5293220 (not c!918350)) b!5293224))

(assert (= (and b!5293224 c!918349) b!5293225))

(assert (= (and b!5293224 (not c!918349)) b!5293219))

(declare-fun m!6330742 () Bool)

(assert (=> b!5293224 m!6330742))

(assert (=> b!5293224 m!6330742))

(declare-fun m!6330744 () Bool)

(assert (=> b!5293224 m!6330744))

(declare-fun m!6330746 () Bool)

(assert (=> b!5293221 m!6330746))

(declare-fun m!6330748 () Bool)

(assert (=> d!1702656 m!6330748))

(declare-fun m!6330750 () Bool)

(assert (=> d!1702656 m!6330750))

(declare-fun m!6330752 () Bool)

(assert (=> b!5293220 m!6330752))

(declare-fun m!6330754 () Bool)

(assert (=> b!5293219 m!6330754))

(declare-fun m!6330756 () Bool)

(assert (=> b!5293218 m!6330756))

(declare-fun m!6330758 () Bool)

(assert (=> b!5293223 m!6330758))

(declare-fun m!6330760 () Bool)

(assert (=> b!5293225 m!6330760))

(assert (=> b!5292582 d!1702656))

(declare-fun d!1702658 () Bool)

(declare-fun c!918352 () Bool)

(assert (=> d!1702658 (= c!918352 (isEmpty!32917 s!2326))))

(declare-fun e!3290473 () Bool)

(assert (=> d!1702658 (= (matchZipper!1172 z!1189 s!2326) e!3290473)))

(declare-fun b!5293227 () Bool)

(assert (=> b!5293227 (= e!3290473 (nullableZipper!1311 z!1189))))

(declare-fun b!5293228 () Bool)

(assert (=> b!5293228 (= e!3290473 (matchZipper!1172 (derivationStepZipper!1171 z!1189 (head!11340 s!2326)) (tail!10437 s!2326)))))

(assert (= (and d!1702658 c!918352) b!5293227))

(assert (= (and d!1702658 (not c!918352)) b!5293228))

(assert (=> d!1702658 m!6330588))

(declare-fun m!6330762 () Bool)

(assert (=> b!5293227 m!6330762))

(assert (=> b!5293228 m!6330594))

(assert (=> b!5293228 m!6330594))

(declare-fun m!6330764 () Bool)

(assert (=> b!5293228 m!6330764))

(assert (=> b!5293228 m!6330590))

(assert (=> b!5293228 m!6330764))

(assert (=> b!5293228 m!6330590))

(declare-fun m!6330766 () Bool)

(assert (=> b!5293228 m!6330766))

(assert (=> b!5292582 d!1702658))

(declare-fun d!1702660 () Bool)

(assert (=> d!1702660 (= (matchR!7113 lt!2162729 s!2326) (matchRSpec!2031 lt!2162729 s!2326))))

(declare-fun lt!2162961 () Unit!153230)

(assert (=> d!1702660 (= lt!2162961 (choose!39526 lt!2162729 s!2326))))

(assert (=> d!1702660 (validRegex!6664 lt!2162729)))

(assert (=> d!1702660 (= (mainMatchTheorem!2031 lt!2162729 s!2326) lt!2162961)))

(declare-fun bs!1227656 () Bool)

(assert (= bs!1227656 d!1702660))

(assert (=> bs!1227656 m!6330076))

(assert (=> bs!1227656 m!6330102))

(declare-fun m!6330768 () Bool)

(assert (=> bs!1227656 m!6330768))

(assert (=> bs!1227656 m!6330734))

(assert (=> b!5292582 d!1702660))

(declare-fun d!1702662 () Bool)

(assert (=> d!1702662 (= (isDefined!11742 (findConcatSeparation!1453 (regTwo!30368 (regOne!30368 r!7292)) lt!2162694 Nil!60961 s!2326 s!2326)) (not (isEmpty!32918 (findConcatSeparation!1453 (regTwo!30368 (regOne!30368 r!7292)) lt!2162694 Nil!60961 s!2326 s!2326))))))

(declare-fun bs!1227657 () Bool)

(assert (= bs!1227657 d!1702662))

(assert (=> bs!1227657 m!6330078))

(declare-fun m!6330770 () Bool)

(assert (=> bs!1227657 m!6330770))

(assert (=> b!5292582 d!1702662))

(declare-fun d!1702664 () Bool)

(assert (=> d!1702664 (= (matchR!7113 lt!2162729 s!2326) (matchZipper!1172 lt!2162722 s!2326))))

(declare-fun lt!2162962 () Unit!153230)

(assert (=> d!1702664 (= lt!2162962 (choose!39527 lt!2162722 lt!2162710 lt!2162729 s!2326))))

(assert (=> d!1702664 (validRegex!6664 lt!2162729)))

(assert (=> d!1702664 (= (theoremZipperRegexEquiv!338 lt!2162722 lt!2162710 lt!2162729 s!2326) lt!2162962)))

(declare-fun bs!1227658 () Bool)

(assert (= bs!1227658 d!1702664))

(assert (=> bs!1227658 m!6330076))

(assert (=> bs!1227658 m!6330096))

(declare-fun m!6330772 () Bool)

(assert (=> bs!1227658 m!6330772))

(assert (=> bs!1227658 m!6330734))

(assert (=> b!5292582 d!1702664))

(declare-fun d!1702666 () Bool)

(assert (=> d!1702666 (= (Exists!2109 lambda!268103) (choose!39522 lambda!268103))))

(declare-fun bs!1227659 () Bool)

(assert (= bs!1227659 d!1702666))

(declare-fun m!6330774 () Bool)

(assert (=> bs!1227659 m!6330774))

(assert (=> b!5292582 d!1702666))

(declare-fun d!1702668 () Bool)

(assert (=> d!1702668 (= (isDefined!11742 (findConcatSeparation!1453 (regOne!30368 (regOne!30368 r!7292)) lt!2162731 Nil!60961 s!2326 s!2326)) (not (isEmpty!32918 (findConcatSeparation!1453 (regOne!30368 (regOne!30368 r!7292)) lt!2162731 Nil!60961 s!2326 s!2326))))))

(declare-fun bs!1227660 () Bool)

(assert (= bs!1227660 d!1702668))

(assert (=> bs!1227660 m!6330112))

(declare-fun m!6330776 () Bool)

(assert (=> bs!1227660 m!6330776))

(assert (=> b!5292582 d!1702668))

(declare-fun d!1702672 () Bool)

(declare-fun c!918353 () Bool)

(assert (=> d!1702672 (= c!918353 (isEmpty!32917 s!2326))))

(declare-fun e!3290474 () Bool)

(assert (=> d!1702672 (= (matchZipper!1172 lt!2162724 s!2326) e!3290474)))

(declare-fun b!5293229 () Bool)

(assert (=> b!5293229 (= e!3290474 (nullableZipper!1311 lt!2162724))))

(declare-fun b!5293230 () Bool)

(assert (=> b!5293230 (= e!3290474 (matchZipper!1172 (derivationStepZipper!1171 lt!2162724 (head!11340 s!2326)) (tail!10437 s!2326)))))

(assert (= (and d!1702672 c!918353) b!5293229))

(assert (= (and d!1702672 (not c!918353)) b!5293230))

(assert (=> d!1702672 m!6330588))

(declare-fun m!6330778 () Bool)

(assert (=> b!5293229 m!6330778))

(assert (=> b!5293230 m!6330594))

(assert (=> b!5293230 m!6330594))

(declare-fun m!6330780 () Bool)

(assert (=> b!5293230 m!6330780))

(assert (=> b!5293230 m!6330590))

(assert (=> b!5293230 m!6330780))

(assert (=> b!5293230 m!6330590))

(declare-fun m!6330782 () Bool)

(assert (=> b!5293230 m!6330782))

(assert (=> b!5292582 d!1702672))

(declare-fun d!1702674 () Bool)

(declare-fun c!918354 () Bool)

(assert (=> d!1702674 (= c!918354 (isEmpty!32917 s!2326))))

(declare-fun e!3290475 () Bool)

(assert (=> d!1702674 (= (matchZipper!1172 lt!2162722 s!2326) e!3290475)))

(declare-fun b!5293231 () Bool)

(assert (=> b!5293231 (= e!3290475 (nullableZipper!1311 lt!2162722))))

(declare-fun b!5293232 () Bool)

(assert (=> b!5293232 (= e!3290475 (matchZipper!1172 (derivationStepZipper!1171 lt!2162722 (head!11340 s!2326)) (tail!10437 s!2326)))))

(assert (= (and d!1702674 c!918354) b!5293231))

(assert (= (and d!1702674 (not c!918354)) b!5293232))

(assert (=> d!1702674 m!6330588))

(declare-fun m!6330784 () Bool)

(assert (=> b!5293231 m!6330784))

(assert (=> b!5293232 m!6330594))

(assert (=> b!5293232 m!6330594))

(declare-fun m!6330786 () Bool)

(assert (=> b!5293232 m!6330786))

(assert (=> b!5293232 m!6330590))

(assert (=> b!5293232 m!6330786))

(assert (=> b!5293232 m!6330590))

(declare-fun m!6330788 () Bool)

(assert (=> b!5293232 m!6330788))

(assert (=> b!5292582 d!1702674))

(declare-fun bs!1227661 () Bool)

(declare-fun d!1702676 () Bool)

(assert (= bs!1227661 (and d!1702676 b!5292582)))

(declare-fun lambda!268195 () Int)

(assert (=> bs!1227661 (not (= lambda!268195 lambda!268102))))

(declare-fun bs!1227662 () Bool)

(assert (= bs!1227662 (and d!1702676 d!1702632)))

(assert (=> bs!1227662 (not (= lambda!268195 lambda!268185))))

(declare-fun bs!1227663 () Bool)

(assert (= bs!1227663 (and d!1702676 b!5293054)))

(assert (=> bs!1227663 (not (= lambda!268195 lambda!268180))))

(declare-fun bs!1227664 () Bool)

(assert (= bs!1227664 (and d!1702676 d!1702640)))

(assert (=> bs!1227664 (not (= lambda!268195 lambda!268189))))

(declare-fun bs!1227665 () Bool)

(assert (= bs!1227665 (and d!1702676 d!1702564)))

(assert (=> bs!1227665 (= (and (= (regOne!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162731 (regTwo!30368 r!7292))) (= lambda!268195 lambda!268159))))

(declare-fun bs!1227666 () Bool)

(assert (= bs!1227666 (and d!1702676 b!5293051)))

(assert (=> bs!1227666 (not (= lambda!268195 lambda!268181))))

(declare-fun bs!1227667 () Bool)

(assert (= bs!1227667 (and d!1702676 b!5292588)))

(assert (=> bs!1227667 (not (= lambda!268195 lambda!268099))))

(declare-fun bs!1227668 () Bool)

(assert (= bs!1227668 (and d!1702676 b!5293174)))

(assert (=> bs!1227668 (not (= lambda!268195 lambda!268191))))

(assert (=> bs!1227661 (= lambda!268195 lambda!268101)))

(declare-fun bs!1227669 () Bool)

(assert (= bs!1227669 (and d!1702676 d!1702642)))

(assert (=> bs!1227669 (= (and (= (regOne!30368 (regOne!30368 r!7292)) (regTwo!30368 (regOne!30368 r!7292))) (= lt!2162731 lt!2162694)) (= lambda!268195 lambda!268190))))

(assert (=> bs!1227665 (not (= lambda!268195 lambda!268160))))

(declare-fun bs!1227670 () Bool)

(assert (= bs!1227670 (and d!1702676 d!1702562)))

(assert (=> bs!1227670 (= (and (= (regOne!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162731 (regTwo!30368 r!7292))) (= lambda!268195 lambda!268154))))

(assert (=> bs!1227661 (not (= lambda!268195 lambda!268104))))

(declare-fun bs!1227671 () Bool)

(assert (= bs!1227671 (and d!1702676 b!5293171)))

(assert (=> bs!1227671 (not (= lambda!268195 lambda!268192))))

(assert (=> bs!1227662 (= lambda!268195 lambda!268184)))

(declare-fun bs!1227672 () Bool)

(assert (= bs!1227672 (and d!1702676 b!5293163)))

(assert (=> bs!1227672 (not (= lambda!268195 lambda!268186))))

(assert (=> bs!1227664 (= (and (= (regOne!30368 (regOne!30368 r!7292)) (regTwo!30368 (regOne!30368 r!7292))) (= lt!2162731 lt!2162694)) (= lambda!268195 lambda!268188))))

(assert (=> bs!1227667 (= (and (= (regOne!30368 (regOne!30368 r!7292)) (regOne!30368 r!7292)) (= lt!2162731 (regTwo!30368 r!7292))) (= lambda!268195 lambda!268098))))

(assert (=> bs!1227661 (= (and (= (regOne!30368 (regOne!30368 r!7292)) (regTwo!30368 (regOne!30368 r!7292))) (= lt!2162731 lt!2162694)) (= lambda!268195 lambda!268103))))

(declare-fun bs!1227673 () Bool)

(assert (= bs!1227673 (and d!1702676 b!5293160)))

(assert (=> bs!1227673 (not (= lambda!268195 lambda!268187))))

(assert (=> d!1702676 true))

(assert (=> d!1702676 true))

(assert (=> d!1702676 true))

(assert (=> d!1702676 (= (isDefined!11742 (findConcatSeparation!1453 (regOne!30368 (regOne!30368 r!7292)) lt!2162731 Nil!60961 s!2326 s!2326)) (Exists!2109 lambda!268195))))

(declare-fun lt!2162963 () Unit!153230)

(assert (=> d!1702676 (= lt!2162963 (choose!39523 (regOne!30368 (regOne!30368 r!7292)) lt!2162731 s!2326))))

(assert (=> d!1702676 (validRegex!6664 (regOne!30368 (regOne!30368 r!7292)))))

(assert (=> d!1702676 (= (lemmaFindConcatSeparationEquivalentToExists!1217 (regOne!30368 (regOne!30368 r!7292)) lt!2162731 s!2326) lt!2162963)))

(declare-fun bs!1227674 () Bool)

(assert (= bs!1227674 d!1702676))

(assert (=> bs!1227674 m!6330112))

(assert (=> bs!1227674 m!6330120))

(assert (=> bs!1227674 m!6330676))

(assert (=> bs!1227674 m!6330112))

(declare-fun m!6330794 () Bool)

(assert (=> bs!1227674 m!6330794))

(declare-fun m!6330798 () Bool)

(assert (=> bs!1227674 m!6330798))

(assert (=> b!5292582 d!1702676))

(declare-fun b!5293240 () Bool)

(declare-fun res!2245029 () Bool)

(declare-fun e!3290480 () Bool)

(assert (=> b!5293240 (=> (not res!2245029) (not e!3290480))))

(declare-fun lt!2162965 () Option!15039)

(assert (=> b!5293240 (= res!2245029 (matchR!7113 (regOne!30368 (regOne!30368 r!7292)) (_1!35430 (get!20961 lt!2162965))))))

(declare-fun b!5293241 () Bool)

(declare-fun e!3290481 () Option!15039)

(assert (=> b!5293241 (= e!3290481 None!15038)))

(declare-fun b!5293242 () Bool)

(assert (=> b!5293242 (= e!3290480 (= (++!13291 (_1!35430 (get!20961 lt!2162965)) (_2!35430 (get!20961 lt!2162965))) s!2326))))

(declare-fun b!5293243 () Bool)

(declare-fun res!2245026 () Bool)

(assert (=> b!5293243 (=> (not res!2245026) (not e!3290480))))

(assert (=> b!5293243 (= res!2245026 (matchR!7113 lt!2162731 (_2!35430 (get!20961 lt!2162965))))))

(declare-fun b!5293244 () Bool)

(declare-fun e!3290479 () Bool)

(assert (=> b!5293244 (= e!3290479 (matchR!7113 lt!2162731 s!2326))))

(declare-fun b!5293245 () Bool)

(declare-fun e!3290483 () Option!15039)

(assert (=> b!5293245 (= e!3290483 e!3290481)))

(declare-fun c!918358 () Bool)

(assert (=> b!5293245 (= c!918358 (is-Nil!60961 s!2326))))

(declare-fun b!5293246 () Bool)

(declare-fun e!3290482 () Bool)

(assert (=> b!5293246 (= e!3290482 (not (isDefined!11742 lt!2162965)))))

(declare-fun b!5293247 () Bool)

(assert (=> b!5293247 (= e!3290483 (Some!15038 (tuple2!64255 Nil!60961 s!2326)))))

(declare-fun d!1702678 () Bool)

(assert (=> d!1702678 e!3290482))

(declare-fun res!2245027 () Bool)

(assert (=> d!1702678 (=> res!2245027 e!3290482)))

(assert (=> d!1702678 (= res!2245027 e!3290480)))

(declare-fun res!2245028 () Bool)

(assert (=> d!1702678 (=> (not res!2245028) (not e!3290480))))

(assert (=> d!1702678 (= res!2245028 (isDefined!11742 lt!2162965))))

(assert (=> d!1702678 (= lt!2162965 e!3290483)))

(declare-fun c!918359 () Bool)

(assert (=> d!1702678 (= c!918359 e!3290479)))

(declare-fun res!2245025 () Bool)

(assert (=> d!1702678 (=> (not res!2245025) (not e!3290479))))

(assert (=> d!1702678 (= res!2245025 (matchR!7113 (regOne!30368 (regOne!30368 r!7292)) Nil!60961))))

(assert (=> d!1702678 (validRegex!6664 (regOne!30368 (regOne!30368 r!7292)))))

(assert (=> d!1702678 (= (findConcatSeparation!1453 (regOne!30368 (regOne!30368 r!7292)) lt!2162731 Nil!60961 s!2326 s!2326) lt!2162965)))

(declare-fun b!5293239 () Bool)

(declare-fun lt!2162966 () Unit!153230)

(declare-fun lt!2162964 () Unit!153230)

(assert (=> b!5293239 (= lt!2162966 lt!2162964)))

(assert (=> b!5293239 (= (++!13291 (++!13291 Nil!60961 (Cons!60961 (h!67409 s!2326) Nil!60961)) (t!374290 s!2326)) s!2326)))

(assert (=> b!5293239 (= lt!2162964 (lemmaMoveElementToOtherListKeepsConcatEq!1706 Nil!60961 (h!67409 s!2326) (t!374290 s!2326) s!2326))))

(assert (=> b!5293239 (= e!3290481 (findConcatSeparation!1453 (regOne!30368 (regOne!30368 r!7292)) lt!2162731 (++!13291 Nil!60961 (Cons!60961 (h!67409 s!2326) Nil!60961)) (t!374290 s!2326) s!2326))))

(assert (= (and d!1702678 res!2245025) b!5293244))

(assert (= (and d!1702678 c!918359) b!5293247))

(assert (= (and d!1702678 (not c!918359)) b!5293245))

(assert (= (and b!5293245 c!918358) b!5293241))

(assert (= (and b!5293245 (not c!918358)) b!5293239))

(assert (= (and d!1702678 res!2245028) b!5293240))

(assert (= (and b!5293240 res!2245029) b!5293243))

(assert (= (and b!5293243 res!2245026) b!5293242))

(assert (= (and d!1702678 (not res!2245027)) b!5293246))

(assert (=> b!5293244 m!6330088))

(declare-fun m!6330806 () Bool)

(assert (=> d!1702678 m!6330806))

(declare-fun m!6330808 () Bool)

(assert (=> d!1702678 m!6330808))

(assert (=> d!1702678 m!6330676))

(declare-fun m!6330810 () Bool)

(assert (=> b!5293242 m!6330810))

(declare-fun m!6330812 () Bool)

(assert (=> b!5293242 m!6330812))

(assert (=> b!5293239 m!6330426))

(assert (=> b!5293239 m!6330426))

(assert (=> b!5293239 m!6330428))

(assert (=> b!5293239 m!6330430))

(assert (=> b!5293239 m!6330426))

(declare-fun m!6330814 () Bool)

(assert (=> b!5293239 m!6330814))

(assert (=> b!5293243 m!6330810))

(declare-fun m!6330816 () Bool)

(assert (=> b!5293243 m!6330816))

(assert (=> b!5293246 m!6330806))

(assert (=> b!5293240 m!6330810))

(declare-fun m!6330818 () Bool)

(assert (=> b!5293240 m!6330818))

(assert (=> b!5292582 d!1702678))

(declare-fun d!1702682 () Bool)

(assert (=> d!1702682 (= (isEmpty!32914 (t!374289 zl!343)) (is-Nil!60960 (t!374289 zl!343)))))

(assert (=> b!5292605 d!1702682))

(declare-fun d!1702684 () Bool)

(declare-fun lt!2162969 () Int)

(assert (=> d!1702684 (>= lt!2162969 0)))

(declare-fun e!3290486 () Int)

(assert (=> d!1702684 (= lt!2162969 e!3290486)))

(declare-fun c!918362 () Bool)

(assert (=> d!1702684 (= c!918362 (is-Cons!60960 lt!2162710))))

(assert (=> d!1702684 (= (zipperDepthTotal!89 lt!2162710) lt!2162969)))

(declare-fun b!5293254 () Bool)

(assert (=> b!5293254 (= e!3290486 (+ (contextDepthTotal!69 (h!67408 lt!2162710)) (zipperDepthTotal!89 (t!374289 lt!2162710))))))

(declare-fun b!5293255 () Bool)

(assert (=> b!5293255 (= e!3290486 0)))

(assert (= (and d!1702684 c!918362) b!5293254))

(assert (= (and d!1702684 (not c!918362)) b!5293255))

(declare-fun m!6330820 () Bool)

(assert (=> b!5293254 m!6330820))

(declare-fun m!6330822 () Bool)

(assert (=> b!5293254 m!6330822))

(assert (=> b!5292585 d!1702684))

(declare-fun d!1702686 () Bool)

(declare-fun lt!2162970 () Int)

(assert (=> d!1702686 (>= lt!2162970 0)))

(declare-fun e!3290491 () Int)

(assert (=> d!1702686 (= lt!2162970 e!3290491)))

(declare-fun c!918365 () Bool)

(assert (=> d!1702686 (= c!918365 (is-Cons!60960 zl!343))))

(assert (=> d!1702686 (= (zipperDepthTotal!89 zl!343) lt!2162970)))

(declare-fun b!5293258 () Bool)

(assert (=> b!5293258 (= e!3290491 (+ (contextDepthTotal!69 (h!67408 zl!343)) (zipperDepthTotal!89 (t!374289 zl!343))))))

(declare-fun b!5293261 () Bool)

(assert (=> b!5293261 (= e!3290491 0)))

(assert (= (and d!1702686 c!918365) b!5293258))

(assert (= (and d!1702686 (not c!918365)) b!5293261))

(assert (=> b!5293258 m!6330010))

(declare-fun m!6330824 () Bool)

(assert (=> b!5293258 m!6330824))

(assert (=> b!5292585 d!1702686))

(declare-fun b!5293272 () Bool)

(declare-fun e!3290499 () (Set Context!8624))

(assert (=> b!5293272 (= e!3290499 (as set.empty (Set Context!8624)))))

(declare-fun d!1702688 () Bool)

(declare-fun c!918370 () Bool)

(declare-fun e!3290500 () Bool)

(assert (=> d!1702688 (= c!918370 e!3290500)))

(declare-fun res!2245034 () Bool)

(assert (=> d!1702688 (=> (not res!2245034) (not e!3290500))))

(assert (=> d!1702688 (= res!2245034 (is-Cons!60959 (exprs!4812 lt!2162716)))))

(declare-fun e!3290496 () (Set Context!8624))

(assert (=> d!1702688 (= (derivationStepZipperUp!300 lt!2162716 (h!67409 s!2326)) e!3290496)))

(declare-fun b!5293273 () Bool)

(assert (=> b!5293273 (= e!3290500 (nullable!5097 (h!67407 (exprs!4812 lt!2162716))))))

(declare-fun bm!377240 () Bool)

(declare-fun call!377245 () (Set Context!8624))

(assert (=> bm!377240 (= call!377245 (derivationStepZipperDown!376 (h!67407 (exprs!4812 lt!2162716)) (Context!8625 (t!374288 (exprs!4812 lt!2162716))) (h!67409 s!2326)))))

(declare-fun b!5293274 () Bool)

(assert (=> b!5293274 (= e!3290499 call!377245)))

(declare-fun b!5293275 () Bool)

(assert (=> b!5293275 (= e!3290496 e!3290499)))

(declare-fun c!918371 () Bool)

(assert (=> b!5293275 (= c!918371 (is-Cons!60959 (exprs!4812 lt!2162716)))))

(declare-fun b!5293276 () Bool)

(assert (=> b!5293276 (= e!3290496 (set.union call!377245 (derivationStepZipperUp!300 (Context!8625 (t!374288 (exprs!4812 lt!2162716))) (h!67409 s!2326))))))

(assert (= (and d!1702688 res!2245034) b!5293273))

(assert (= (and d!1702688 c!918370) b!5293276))

(assert (= (and d!1702688 (not c!918370)) b!5293275))

(assert (= (and b!5293275 c!918371) b!5293274))

(assert (= (and b!5293275 (not c!918371)) b!5293272))

(assert (= (or b!5293276 b!5293274) bm!377240))

(declare-fun m!6330826 () Bool)

(assert (=> b!5293273 m!6330826))

(declare-fun m!6330828 () Bool)

(assert (=> bm!377240 m!6330828))

(declare-fun m!6330830 () Bool)

(assert (=> b!5293276 m!6330830))

(assert (=> b!5292583 d!1702688))

(declare-fun bs!1227675 () Bool)

(declare-fun d!1702690 () Bool)

(assert (= bs!1227675 (and d!1702690 b!5292611)))

(declare-fun lambda!268196 () Int)

(assert (=> bs!1227675 (= lambda!268196 lambda!268100)))

(declare-fun bs!1227676 () Bool)

(assert (= bs!1227676 (and d!1702690 d!1702548)))

(assert (=> bs!1227676 (= lambda!268196 lambda!268151)))

(assert (=> d!1702690 true))

(assert (=> d!1702690 (= (derivationStepZipper!1171 lt!2162722 (h!67409 s!2326)) (flatMap!655 lt!2162722 lambda!268196))))

(declare-fun bs!1227677 () Bool)

(assert (= bs!1227677 d!1702690))

(declare-fun m!6330832 () Bool)

(assert (=> bs!1227677 m!6330832))

(assert (=> b!5292583 d!1702690))

(declare-fun d!1702692 () Bool)

(assert (=> d!1702692 (= (flatMap!655 lt!2162722 lambda!268100) (dynLambda!24104 lambda!268100 lt!2162716))))

(declare-fun lt!2162971 () Unit!153230)

(assert (=> d!1702692 (= lt!2162971 (choose!39521 lt!2162722 lt!2162716 lambda!268100))))

(assert (=> d!1702692 (= lt!2162722 (set.insert lt!2162716 (as set.empty (Set Context!8624))))))

(assert (=> d!1702692 (= (lemmaFlatMapOnSingletonSet!187 lt!2162722 lt!2162716 lambda!268100) lt!2162971)))

(declare-fun b_lambda!204107 () Bool)

(assert (=> (not b_lambda!204107) (not d!1702692)))

(declare-fun bs!1227678 () Bool)

(assert (= bs!1227678 d!1702692))

(assert (=> bs!1227678 m!6330150))

(declare-fun m!6330834 () Bool)

(assert (=> bs!1227678 m!6330834))

(declare-fun m!6330836 () Bool)

(assert (=> bs!1227678 m!6330836))

(assert (=> bs!1227678 m!6330152))

(assert (=> b!5292583 d!1702692))

(declare-fun d!1702694 () Bool)

(assert (=> d!1702694 (= (flatMap!655 lt!2162722 lambda!268100) (choose!39519 lt!2162722 lambda!268100))))

(declare-fun bs!1227679 () Bool)

(assert (= bs!1227679 d!1702694))

(declare-fun m!6330838 () Bool)

(assert (=> bs!1227679 m!6330838))

(assert (=> b!5292583 d!1702694))

(assert (=> b!5292583 d!1702530))

(declare-fun d!1702696 () Bool)

(assert (=> d!1702696 (= (nullable!5097 (regOne!30368 (regOne!30368 r!7292))) (nullableFct!1463 (regOne!30368 (regOne!30368 r!7292))))))

(declare-fun bs!1227680 () Bool)

(assert (= bs!1227680 d!1702696))

(declare-fun m!6330840 () Bool)

(assert (=> bs!1227680 m!6330840))

(assert (=> b!5292604 d!1702696))

(declare-fun b!5293293 () Bool)

(declare-fun e!3290509 () Bool)

(declare-fun tp!1477226 () Bool)

(declare-fun tp!1477227 () Bool)

(assert (=> b!5293293 (= e!3290509 (and tp!1477226 tp!1477227))))

(assert (=> b!5292607 (= tp!1477187 e!3290509)))

(assert (= (and b!5292607 (is-Cons!60959 (exprs!4812 setElem!33974))) b!5293293))

(declare-fun condSetEmpty!33980 () Bool)

(assert (=> setNonEmpty!33974 (= condSetEmpty!33980 (= setRest!33974 (as set.empty (Set Context!8624))))))

(declare-fun setRes!33980 () Bool)

(assert (=> setNonEmpty!33974 (= tp!1477186 setRes!33980)))

(declare-fun setIsEmpty!33980 () Bool)

(assert (=> setIsEmpty!33980 setRes!33980))

(declare-fun setElem!33980 () Context!8624)

(declare-fun setNonEmpty!33980 () Bool)

(declare-fun tp!1477232 () Bool)

(declare-fun e!3290512 () Bool)

(assert (=> setNonEmpty!33980 (= setRes!33980 (and tp!1477232 (inv!80568 setElem!33980) e!3290512))))

(declare-fun setRest!33980 () (Set Context!8624))

(assert (=> setNonEmpty!33980 (= setRest!33974 (set.union (set.insert setElem!33980 (as set.empty (Set Context!8624))) setRest!33980))))

(declare-fun b!5293298 () Bool)

(declare-fun tp!1477233 () Bool)

(assert (=> b!5293298 (= e!3290512 tp!1477233)))

(assert (= (and setNonEmpty!33974 condSetEmpty!33980) setIsEmpty!33980))

(assert (= (and setNonEmpty!33974 (not condSetEmpty!33980)) setNonEmpty!33980))

(assert (= setNonEmpty!33980 b!5293298))

(declare-fun m!6330842 () Bool)

(assert (=> setNonEmpty!33980 m!6330842))

(declare-fun e!3290517 () Bool)

(assert (=> b!5292613 (= tp!1477182 e!3290517)))

(declare-fun b!5293315 () Bool)

(declare-fun tp!1477245 () Bool)

(assert (=> b!5293315 (= e!3290517 tp!1477245)))

(declare-fun b!5293316 () Bool)

(declare-fun tp!1477247 () Bool)

(declare-fun tp!1477244 () Bool)

(assert (=> b!5293316 (= e!3290517 (and tp!1477247 tp!1477244))))

(declare-fun b!5293313 () Bool)

(assert (=> b!5293313 (= e!3290517 tp_is_empty!39109)))

(declare-fun b!5293314 () Bool)

(declare-fun tp!1477248 () Bool)

(declare-fun tp!1477246 () Bool)

(assert (=> b!5293314 (= e!3290517 (and tp!1477248 tp!1477246))))

(assert (= (and b!5292613 (is-ElementMatch!14928 (regOne!30368 r!7292))) b!5293313))

(assert (= (and b!5292613 (is-Concat!23773 (regOne!30368 r!7292))) b!5293314))

(assert (= (and b!5292613 (is-Star!14928 (regOne!30368 r!7292))) b!5293315))

(assert (= (and b!5292613 (is-Union!14928 (regOne!30368 r!7292))) b!5293316))

(declare-fun e!3290518 () Bool)

(assert (=> b!5292613 (= tp!1477188 e!3290518)))

(declare-fun b!5293319 () Bool)

(declare-fun tp!1477250 () Bool)

(assert (=> b!5293319 (= e!3290518 tp!1477250)))

(declare-fun b!5293320 () Bool)

(declare-fun tp!1477252 () Bool)

(declare-fun tp!1477249 () Bool)

(assert (=> b!5293320 (= e!3290518 (and tp!1477252 tp!1477249))))

(declare-fun b!5293317 () Bool)

(assert (=> b!5293317 (= e!3290518 tp_is_empty!39109)))

(declare-fun b!5293318 () Bool)

(declare-fun tp!1477253 () Bool)

(declare-fun tp!1477251 () Bool)

(assert (=> b!5293318 (= e!3290518 (and tp!1477253 tp!1477251))))

(assert (= (and b!5292613 (is-ElementMatch!14928 (regTwo!30368 r!7292))) b!5293317))

(assert (= (and b!5292613 (is-Concat!23773 (regTwo!30368 r!7292))) b!5293318))

(assert (= (and b!5292613 (is-Star!14928 (regTwo!30368 r!7292))) b!5293319))

(assert (= (and b!5292613 (is-Union!14928 (regTwo!30368 r!7292))) b!5293320))

(declare-fun e!3290519 () Bool)

(assert (=> b!5292580 (= tp!1477185 e!3290519)))

(declare-fun b!5293323 () Bool)

(declare-fun tp!1477255 () Bool)

(assert (=> b!5293323 (= e!3290519 tp!1477255)))

(declare-fun b!5293324 () Bool)

(declare-fun tp!1477257 () Bool)

(declare-fun tp!1477254 () Bool)

(assert (=> b!5293324 (= e!3290519 (and tp!1477257 tp!1477254))))

(declare-fun b!5293321 () Bool)

(assert (=> b!5293321 (= e!3290519 tp_is_empty!39109)))

(declare-fun b!5293322 () Bool)

(declare-fun tp!1477258 () Bool)

(declare-fun tp!1477256 () Bool)

(assert (=> b!5293322 (= e!3290519 (and tp!1477258 tp!1477256))))

(assert (= (and b!5292580 (is-ElementMatch!14928 (reg!15257 r!7292))) b!5293321))

(assert (= (and b!5292580 (is-Concat!23773 (reg!15257 r!7292))) b!5293322))

(assert (= (and b!5292580 (is-Star!14928 (reg!15257 r!7292))) b!5293323))

(assert (= (and b!5292580 (is-Union!14928 (reg!15257 r!7292))) b!5293324))

(declare-fun b!5293332 () Bool)

(declare-fun e!3290525 () Bool)

(declare-fun tp!1477263 () Bool)

(assert (=> b!5293332 (= e!3290525 tp!1477263)))

(declare-fun tp!1477264 () Bool)

(declare-fun e!3290524 () Bool)

(declare-fun b!5293331 () Bool)

(assert (=> b!5293331 (= e!3290524 (and (inv!80568 (h!67408 (t!374289 zl!343))) e!3290525 tp!1477264))))

(assert (=> b!5292606 (= tp!1477183 e!3290524)))

(assert (= b!5293331 b!5293332))

(assert (= (and b!5292606 (is-Cons!60960 (t!374289 zl!343))) b!5293331))

(declare-fun m!6330844 () Bool)

(assert (=> b!5293331 m!6330844))

(declare-fun b!5293333 () Bool)

(declare-fun e!3290526 () Bool)

(declare-fun tp!1477265 () Bool)

(declare-fun tp!1477266 () Bool)

(assert (=> b!5293333 (= e!3290526 (and tp!1477265 tp!1477266))))

(assert (=> b!5292584 (= tp!1477190 e!3290526)))

(assert (= (and b!5292584 (is-Cons!60959 (exprs!4812 (h!67408 zl!343)))) b!5293333))

(declare-fun e!3290527 () Bool)

(assert (=> b!5292595 (= tp!1477189 e!3290527)))

(declare-fun b!5293336 () Bool)

(declare-fun tp!1477268 () Bool)

(assert (=> b!5293336 (= e!3290527 tp!1477268)))

(declare-fun b!5293337 () Bool)

(declare-fun tp!1477270 () Bool)

(declare-fun tp!1477267 () Bool)

(assert (=> b!5293337 (= e!3290527 (and tp!1477270 tp!1477267))))

(declare-fun b!5293334 () Bool)

(assert (=> b!5293334 (= e!3290527 tp_is_empty!39109)))

(declare-fun b!5293335 () Bool)

(declare-fun tp!1477271 () Bool)

(declare-fun tp!1477269 () Bool)

(assert (=> b!5293335 (= e!3290527 (and tp!1477271 tp!1477269))))

(assert (= (and b!5292595 (is-ElementMatch!14928 (regOne!30369 r!7292))) b!5293334))

(assert (= (and b!5292595 (is-Concat!23773 (regOne!30369 r!7292))) b!5293335))

(assert (= (and b!5292595 (is-Star!14928 (regOne!30369 r!7292))) b!5293336))

(assert (= (and b!5292595 (is-Union!14928 (regOne!30369 r!7292))) b!5293337))

(declare-fun e!3290528 () Bool)

(assert (=> b!5292595 (= tp!1477191 e!3290528)))

(declare-fun b!5293340 () Bool)

(declare-fun tp!1477273 () Bool)

(assert (=> b!5293340 (= e!3290528 tp!1477273)))

(declare-fun b!5293341 () Bool)

(declare-fun tp!1477275 () Bool)

(declare-fun tp!1477272 () Bool)

(assert (=> b!5293341 (= e!3290528 (and tp!1477275 tp!1477272))))

(declare-fun b!5293338 () Bool)

(assert (=> b!5293338 (= e!3290528 tp_is_empty!39109)))

(declare-fun b!5293339 () Bool)

(declare-fun tp!1477276 () Bool)

(declare-fun tp!1477274 () Bool)

(assert (=> b!5293339 (= e!3290528 (and tp!1477276 tp!1477274))))

(assert (= (and b!5292595 (is-ElementMatch!14928 (regTwo!30369 r!7292))) b!5293338))

(assert (= (and b!5292595 (is-Concat!23773 (regTwo!30369 r!7292))) b!5293339))

(assert (= (and b!5292595 (is-Star!14928 (regTwo!30369 r!7292))) b!5293340))

(assert (= (and b!5292595 (is-Union!14928 (regTwo!30369 r!7292))) b!5293341))

(declare-fun b!5293346 () Bool)

(declare-fun e!3290531 () Bool)

(declare-fun tp!1477279 () Bool)

(assert (=> b!5293346 (= e!3290531 (and tp_is_empty!39109 tp!1477279))))

(assert (=> b!5292603 (= tp!1477184 e!3290531)))

(assert (= (and b!5292603 (is-Cons!60961 (t!374290 s!2326))) b!5293346))

(declare-fun b_lambda!204109 () Bool)

(assert (= b_lambda!204101 (or b!5292611 b_lambda!204109)))

(declare-fun bs!1227681 () Bool)

(declare-fun d!1702698 () Bool)

(assert (= bs!1227681 (and d!1702698 b!5292611)))

(assert (=> bs!1227681 (= (dynLambda!24104 lambda!268100 lt!2162715) (derivationStepZipperUp!300 lt!2162715 (h!67409 s!2326)))))

(assert (=> bs!1227681 m!6329996))

(assert (=> d!1702536 d!1702698))

(declare-fun b_lambda!204111 () Bool)

(assert (= b_lambda!204103 (or b!5292611 b_lambda!204111)))

(declare-fun bs!1227682 () Bool)

(declare-fun d!1702700 () Bool)

(assert (= bs!1227682 (and d!1702700 b!5292611)))

(assert (=> bs!1227682 (= (dynLambda!24104 lambda!268100 (h!67408 zl!343)) (derivationStepZipperUp!300 (h!67408 zl!343) (h!67409 s!2326)))))

(assert (=> bs!1227682 m!6330132))

(assert (=> d!1702586 d!1702700))

(declare-fun b_lambda!204113 () Bool)

(assert (= b_lambda!204107 (or b!5292611 b_lambda!204113)))

(declare-fun bs!1227683 () Bool)

(declare-fun d!1702702 () Bool)

(assert (= bs!1227683 (and d!1702702 b!5292611)))

(assert (=> bs!1227683 (= (dynLambda!24104 lambda!268100 lt!2162716) (derivationStepZipperUp!300 lt!2162716 (h!67409 s!2326)))))

(assert (=> bs!1227683 m!6330148))

(assert (=> d!1702692 d!1702702))

(declare-fun b_lambda!204115 () Bool)

(assert (= b_lambda!204105 (or b!5292599 b_lambda!204115)))

(declare-fun bs!1227684 () Bool)

(declare-fun d!1702704 () Bool)

(assert (= bs!1227684 (and d!1702704 b!5292599)))

(assert (=> bs!1227684 (= (dynLambda!24105 lambda!268105 (h!67407 lt!2162712)) (validRegex!6664 (h!67407 lt!2162712)))))

(declare-fun m!6330846 () Bool)

(assert (=> bs!1227684 m!6330846))

(assert (=> b!5293109 d!1702704))

(push 1)

(assert (not b!5293231))

(assert (not d!1702542))

(assert (not b!5292941))

(assert (not b!5293273))

(assert (not bm!377205))

(assert (not b!5292938))

(assert (not b!5292924))

(assert (not b!5293337))

(assert (not b!5293010))

(assert (not bm!377238))

(assert (not b!5292866))

(assert (not b!5292868))

(assert (not bm!377231))

(assert (not b!5293098))

(assert (not b!5292922))

(assert (not b_lambda!204111))

(assert (not d!1702648))

(assert (not d!1702652))

(assert tp_is_empty!39109)

(assert (not b!5293332))

(assert (not b!5292844))

(assert (not b!5293092))

(assert (not b!5292788))

(assert (not d!1702576))

(assert (not d!1702616))

(assert (not bm!377237))

(assert (not b!5293240))

(assert (not b!5293258))

(assert (not b!5293242))

(assert (not b!5293339))

(assert (not d!1702610))

(assert (not b!5293001))

(assert (not b!5293101))

(assert (not d!1702696))

(assert (not b!5293102))

(assert (not b!5292977))

(assert (not b!5293336))

(assert (not b!5293015))

(assert (not d!1702566))

(assert (not b!5293094))

(assert (not b!5293181))

(assert (not bm!377202))

(assert (not b!5293155))

(assert (not bm!377220))

(assert (not d!1702674))

(assert (not d!1702552))

(assert (not bm!377214))

(assert (not bm!377232))

(assert (not b!5292864))

(assert (not d!1702594))

(assert (not b!5293216))

(assert (not d!1702572))

(assert (not b!5293246))

(assert (not d!1702658))

(assert (not b!5292796))

(assert (not bm!377200))

(assert (not b_lambda!204115))

(assert (not b!5293103))

(assert (not d!1702664))

(assert (not b!5293232))

(assert (not b!5293180))

(assert (not b!5292913))

(assert (not d!1702562))

(assert (not b!5293200))

(assert (not d!1702660))

(assert (not b!5293146))

(assert (not d!1702574))

(assert (not d!1702638))

(assert (not b!5292919))

(assert (not b!5293214))

(assert (not b!5293087))

(assert (not bm!377221))

(assert (not b!5293315))

(assert (not b!5292797))

(assert (not d!1702694))

(assert (not d!1702672))

(assert (not b!5292931))

(assert (not b!5292841))

(assert (not b!5293196))

(assert (not d!1702528))

(assert (not b!5293152))

(assert (not d!1702656))

(assert (not b!5292820))

(assert (not b!5293223))

(assert (not d!1702540))

(assert (not b!5293182))

(assert (not b_lambda!204113))

(assert (not d!1702554))

(assert (not b!5293335))

(assert (not d!1702564))

(assert (not d!1702662))

(assert (not b!5293341))

(assert (not b!5292925))

(assert (not b!5293194))

(assert (not b!5293224))

(assert (not b!5293142))

(assert (not b!5293135))

(assert (not b!5293008))

(assert (not b!5293202))

(assert (not b!5292828))

(assert (not b!5293314))

(assert (not d!1702550))

(assert (not b!5292842))

(assert (not b!5293100))

(assert (not b!5293140))

(assert (not d!1702628))

(assert (not d!1702630))

(assert (not b!5293053))

(assert (not b!5292890))

(assert (not bs!1227683))

(assert (not b!5293139))

(assert (not b!5292928))

(assert (not b!5292798))

(assert (not d!1702578))

(assert (not bm!377182))

(assert (not b!5292791))

(assert (not b!5292933))

(assert (not b!5292936))

(assert (not b!5293169))

(assert (not b!5293173))

(assert (not d!1702592))

(assert (not b!5293298))

(assert (not bm!377206))

(assert (not b!5293151))

(assert (not bm!377235))

(assert (not b!5293331))

(assert (not d!1702650))

(assert (not b!5293243))

(assert (not bm!377212))

(assert (not b!5292821))

(assert (not setNonEmpty!33980))

(assert (not d!1702532))

(assert (not d!1702626))

(assert (not d!1702560))

(assert (not d!1702618))

(assert (not d!1702558))

(assert (not b!5293230))

(assert (not b!5293227))

(assert (not b!5293144))

(assert (not b!5293322))

(assert (not b!5292870))

(assert (not b!5293210))

(assert (not b!5292915))

(assert (not b!5293097))

(assert (not d!1702624))

(assert (not b!5293319))

(assert (not b!5293276))

(assert (not bm!377211))

(assert (not b!5293254))

(assert (not b!5293186))

(assert (not d!1702544))

(assert (not b!5293219))

(assert (not b!5292823))

(assert (not d!1702614))

(assert (not b!5292840))

(assert (not d!1702666))

(assert (not b!5292825))

(assert (not b!5293153))

(assert (not b_lambda!204109))

(assert (not b!5293318))

(assert (not b!5292918))

(assert (not b!5293218))

(assert (not b!5293162))

(assert (not b!5293158))

(assert (not b!5292826))

(assert (not d!1702646))

(assert (not d!1702632))

(assert (not b!5292799))

(assert (not bs!1227682))

(assert (not d!1702676))

(assert (not b!5292888))

(assert (not d!1702534))

(assert (not bm!377199))

(assert (not b!5292785))

(assert (not b!5292836))

(assert (not d!1702546))

(assert (not b!5292990))

(assert (not d!1702586))

(assert (not b!5292914))

(assert (not b!5292822))

(assert (not d!1702678))

(assert (not b!5293316))

(assert (not b!5293213))

(assert (not b!5293225))

(assert (not b!5293185))

(assert (not b!5293189))

(assert (not b!5293228))

(assert (not d!1702636))

(assert (not b!5292974))

(assert (not d!1702548))

(assert (not b!5293110))

(assert (not b!5293141))

(assert (not b!5292979))

(assert (not b!5293229))

(assert (not d!1702642))

(assert (not b!5293149))

(assert (not d!1702538))

(assert (not b!5292867))

(assert (not b!5292926))

(assert (not d!1702654))

(assert (not d!1702596))

(assert (not b!5293346))

(assert (not b!5293187))

(assert (not b!5293148))

(assert (not b!5293049))

(assert (not b!5293324))

(assert (not bm!377236))

(assert (not d!1702692))

(assert (not b!5293104))

(assert (not b!5293333))

(assert (not b!5292916))

(assert (not b!5293244))

(assert (not d!1702640))

(assert (not bm!377184))

(assert (not d!1702612))

(assert (not b!5292834))

(assert (not b!5293323))

(assert (not b!5293208))

(assert (not b!5292923))

(assert (not b!5293183))

(assert (not b!5293199))

(assert (not b!5293013))

(assert (not d!1702668))

(assert (not bm!377185))

(assert (not b!5293239))

(assert (not b!5292978))

(assert (not bs!1227681))

(assert (not bm!377208))

(assert (not b!5293220))

(assert (not bm!377234))

(assert (not d!1702582))

(assert (not b!5293203))

(assert (not b!5293145))

(assert (not b!5293293))

(assert (not d!1702536))

(assert (not d!1702690))

(assert (not bm!377239))

(assert (not d!1702556))

(assert (not bs!1227684))

(assert (not b!5292863))

(assert (not b!5292920))

(assert (not b!5293221))

(assert (not b!5292837))

(assert (not bm!377224))

(assert (not bm!377183))

(assert (not b!5293340))

(assert (not b!5292843))

(assert (not b!5293320))

(assert (not bm!377240))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

